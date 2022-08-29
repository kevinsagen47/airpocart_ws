#!/usr/bin/env python3
#PKG = 'numpy_tutorial'
#import roslib; roslib.load_manifest(PKG)
import sys
import rospy
#from rospy_tutorials.msg import Floats
#from rospy.numpy_msg import numpy_msg
from std_msgs.msg import Float32MultiArray
from geometry_msgs.msg import Twist
import time
import pyrosenv
from std_msgs.msg import Bool
from simple_pid import PID

print (sys.version)

RoV = 0.0
RoW = 0.0
v_max = 0.6
v_min = -0.2
w_max = 0.5
w_min = -1*w_max

max_depth = 1.4
z_buffer = [0.0,0.0,0.0]
data_ff = [-1,-1,-1]
obstacle = False

pid = PID(0.8, 0.5, 0.01, setpoint=0.55)
pid.output_limits = (v_min, v_max)
pid.sample_time = 0.06


#slow = 0.3
normal = 0.5
fast = 0.6
current = normal
soft_start = False
def average_displacement(l): 
    x1 = l[0]-l[1]
    x2 = l[1]-l[2]
    avg =(x2 +x1) /2.0
    return avg

def vels(speed,turn):
	return "currently:\tspeed %s\tturn %s " % (speed,turn)

def publish_cmd_vel(RoV,RoW,pub):
   #global pub
   twist = Twist()
   twist.linear.x = RoV
   twist.angular.z = RoW
   speed = RoV
   turn = RoW
   #print(key)
   #print(vels(speed,turn))
   pub.publish(twist)

def estimate_velocity(data):
   global last_stamp
   if (data[2]!=-1.0 and data[2]<=max_depth):
      z_buffer.append(data[2])
      z_buffer.pop(0)
   else:
      z_buffer.append(0.0)
      z_buffer.pop(0)
      #print "nope"
   s = average_displacement(z_buffer)
   t = time.time() - last_stamp
   #print (t)
   last_stamp = time.time()
   return (s/t)

def onoff(trigger):
   global on, soft_start 
   on = trigger
   
   if (on==0):
      soft_start = False
      publish_cmd_vel(0.0,0.0,pub)

def PI_velocity_control(data,RoV,rel):
   global on, soft_start, pid,obstacle
   #pid = PID(0.8, 0.5, 0, setpoint=fast)
   if (data[2]==-1 or data[2]>max_depth or on==0 or (rel<=-0.4 and data[2]>0.7 and RoV>0.7)): #or (rel<=-0.4 and data[2]>0.7) or (RoV<0 and data[2]<0.7)):
      RoV=0
      return RoV
   elif (soft_start == True):

      if RoV<=0.4:
         control = pid(data[2])
         pid.output_limits = (v_min, 0.8)
      else:
         control = pid(data[2]-0.1)
         pid.output_limits = (v_min, v_max)
      #print ("lalalal", obstacle)
      if(control>=v_max):
         RoV=max
      elif(RoV<=v_min):
         RoV=min

      if (obstacle == True):
         if(control>=0.0):
            control=0.0
         elif(control<=v_min):
            control=v_min
            
      return round(control,2)
   else:
      if (data[2]>0.5):
         soft_start = True
      else:
         RoV = 0.2
      return RoV

def P_angular_control(data,RoW):
   #global RoV,RoW
   global on, soft_start
   offset = -0.03
   middle = data[0]-0.03
   x = 0.7
   if (x>0.6):
      if (data[0]==-1 or (middle<0.08 and middle>-0.08) or  data[2]>max_depth or on==0):
         RoW=0.0
      elif middle<=-0.03 :
         if(RoW<=0.2):
               RoW=0.2
         if(RoW>=w_max):
               RoW=w_max
         else:
            RoW=RoW+0.02

      elif middle>=0.03:
         if(RoW>=-0.2):
               RoW=-0.2
         if(RoW<=w_min):
               RoW=w_min
         else:
            RoW=RoW-0.02
   
      #print (data[0],"  ",data[2])
      return RoW

def person_detect():
    global data_ff
    if data_ff[2]==-1:
       return False
    else:
        return True
def soft():
    global soft_start
    return soft_start

class Server:
   def callback(self,data):
      global RoV,RoW,obstacle,data_ff
      data_ff = data.data
      human_velocity = estimate_velocity(data.data)#pos approching
      rel_velocity = human_velocity - RoV
      #print (round(rel_velocity,2), "  ",round(RoV,2)) #negative means robot too fast
      #RoV=velocity_control(data.data,RoV,rel_velocity) 
      RoV=PI_velocity_control(data.data,RoV,rel_velocity) 
      #RoV=velocity_control(data.data,RoV)  
      #RoV = 0.0
      #RoW=angular_control(data.data,RoW)  
      #RoW= horizontal_angular_control(data.data,RoW)  
      RoW= P_angular_control(data.data,RoW)  
      #RoW= PI_angular_control(data.data,RoW)  
      #print ("RoV: ",RoV," RoW: ", RoW)
      #print ("RoV: ",RoV)
      #print ("obs",obstacle)
      #print("on=============================================================",on)
      if(on==1):
         publish_cmd_vel(RoV,RoW,pub)
   
   def obstacle_callback(self,data):
      global obstacle
      if (data.data==True):
         obstacle=True
      else:
         obstacle = False
      #print ("obstacle",obstacle)

def follower(pub1,on1):
   global pub,on, last_stamp
   pub = pub1
   on = on1
   last_stamp = time.time()
   
   server = Server()
   
   rospy.Subscriber("Obstacle_Stop_Flag", Bool, server.obstacle_callback)
   rospy.Subscriber("human_vector", Float32MultiArray, server.callback)
   
   rospy.spin()  
   #image_sub = message_filters.Subscriber('image', Image)
   #info_sub = message_filters.Subscriber('camera_info', CameraInfo) 
   #ts = message_filters.TimeSynchronizer([image_sub, info_sub], 10)
   #ts.registerCallback(callback)
   #rospy.Subscriber("Obstacle_Stop_Flag", Bool, obstacle_callback)  
   

if __name__ == '__main__':
   rospy.init_node('front_following')
   pub = rospy.Publisher('cmd_vel', Twist, queue_size = 1)   
   follower(pub,1)
