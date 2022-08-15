#!/usr/bin/env python2
#PKG = 'numpy_tutorial'
#import roslib; roslib.load_manifest(PKG)

import rospy
#from rospy_tutorials.msg import Floats
#from rospy.numpy_msg import numpy_msg
from std_msgs.msg import Float32MultiArray
from geometry_msgs.msg import Twist
import time
RoV = 0.0
RoW = 0.0
max = 0.8
min = -0.3
z_buffer = [0.0,0.0,0.0]
w_max = 0.5
w_min = -1*w_max

from simple_pid import PID
pid = PID(0.8, 0.5, 0, setpoint=0.58)
pid.output_limits = (-0.3, 0.8)
pid.sample_time = 0.06

angular_PI = PID(2, 1, 0.5, setpoint=0)
angular_PI.output_limits = (w_min, w_max)
angular_PI.sample_time = 0.06

slow = 0.3
normal = 0.5
fast = 0.6
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
   if (data[2]!=-1.0 and data[2]<=1.2):
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
      pid = PID(0.8, 0.5, 0, setpoint=slow)
      publish_cmd_vel(0.0,0.0,pub)

def PI_velocity_control(data,RoV):
   global on
   '''
   if (RoW>normal):
      pid = PID(0.8, 0.5, 0, setpoint=fast)
   elif (RoW<=normal and RoW > slow):
      pid = PID(0.8, 0.5, 0, setpoint=normal)
   else:
      pid = PID(0.8, 0.5, 0, setpoint=slow)
   '''
   if (data[2]==-1 or data[2]>1.2 or on==0): #or (rel<=-0.4 and data[2]>0.7) or (RoV<0 and data[2]<0.7)):
      RoV=0
      return RoV
   else:
      control = pid(data[2])
      if(control>=max):
            RoV=max
      elif(RoV<=min):
            RoV=min
      return round(control,2)
   '''
   else:
      if (data[0]>0.5 or data[0]==-1):
         soft_start = True
      else : 
         RoW = 0.1
   '''

def P_angular_control(data,RoW):
   #global RoV,RoW
   global on, soft_start
   offset = -0.03
   middle = data[0]-0.02
   x = 0.7
   if (x>0.6):
      if (data[0]==-1 or (middle<0.08 and middle>-0.08) or  data[2]>1.2 or on==0):
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

def callback(data):
   global RoV,RoW
   human_velocity = estimate_velocity(data.data)#pos approching
   rel_velocity = human_velocity - RoV
   #print (round(rel_velocity,2), "  ",round(RoV,2)) #negative means robot too fast
   #RoV=velocity_control(data.data,RoV,rel_velocity) 
   RoV=PI_velocity_control(data.data,RoV) 
   #RoV=velocity_control(data.data,RoV)  
   #RoV = 0.0
   #RoW=angular_control(data.data,RoW)  
   #RoW= horizontal_angular_control(data.data,RoW)  
   RoW= P_angular_control(data.data,RoW)  
   #RoW= PI_angular_control(data.data,RoW)  
   #print ("RoV: ",RoV," RoW: ", RoW)
   #print("on=============================================================",on)
   if(on==1):
      publish_cmd_vel(RoV,RoW,pub)
   
 
def follower(pub1,on1):
   global pub,on, last_stamp
   pub = pub1
   on = on1
   last_stamp = time.time()
   
   #rospy.init_node('front_following')
   #pub = rospy.Publisher('cmd_vel', Twist, queue_size = 1)   
   rospy.Subscriber("human_vector", Float32MultiArray, callback)  
   

if __name__ == '__main__':
   rospy.init_node('front_following')
   pub = rospy.Publisher('cmd_vel', Twist, queue_size = 1)   
   follower(pub,1)