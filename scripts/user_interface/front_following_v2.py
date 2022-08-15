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
update_angular = time.time()

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

def horizontal_angular_control(data,RoW):
   #global RoV,RoW
   global on
   if (data[0]==-1 or (data[0]<0.08 and data[0]>-0.08) or  data[2]>1.2 or on==0):
      RoW=0
   elif data[0]<-0.03:
      RoW = 0.3
      '''
      if(RoW>=w_max):
         RoW=w_max
      else:
         RoW=RoW+0.05
      '''
   elif data[0]>0.03:
      RoW = -0.3
      '''
      if(RoW<=w_min):
         RoW=w_min
      else:
         RoW=RoW-0.05
      '''
   print (data[0],"  ",data[2])
   return RoW

def velocity_control(data,RoV,rel):
   #global RoV,RoW
   global on
   if (data[2]==-1 or data[2]>1.2 or on==0 or (rel<=-0.4 and data[2]>0.7) or (RoV<0 and data[2]<0.7)):
      RoV=0
   elif data[2]<0.5:
      if(RoV>=max):
         RoV=max
      else:
         if RoV<=0.7:
            RoV=RoV+0.05
         else:
            RoV=RoV+0.01
   elif data[2]>0.8  :
      if(RoV<=min):
         RoV=min
      else:
         RoV=RoV-0.05
   return RoV

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
   global on
   on = trigger
   if (on==0):
      publish_cmd_vel(0,0,pub)

def PI_velocity_control(data,RoV):
   global on
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

def PI_angular_control(data,RoW):
   global on
   if (data[0]==-1 or data[2]>1.2 or on==0 or (data[0]-0.03<0.05 and data[0]-0.03>-0.05)): #or (rel<=-0.4 and data[2]>0.7) or (RoV<0 and data[2]<0.7)):
      RoW=0
      return RoW
   else:
      control = angular_PI(round(data[0]-0.03,2))
      if(control>=w_max):
            RoW=w_max
      elif(RoV<=w_min):
            RoW=w_min
      return round(control,2)


def P_angular_control(data,RoW):
   #global RoV,RoW
   global on, update_angular
   offset = -0.03
   middle = data[0]-0.02

   if ((time.time() - update_angular)>0.06):
      update_angular = time.time()
      if (data[0]==-1 or (middle<0.08 and middle>-0.08) or  data[2]>1.2 or on==0):
         RoW=0
      elif middle<-0.03 :
         if(RoW<0.3):
               RoW=0.3
         if(RoW>=w_max):
               RoW=w_max
         else:
            RoW=RoW+0.01
         '''
         if middle>-0.09:
            RoW = 0.2
         else:
            if(RoW>=w_max):
               RoW=w_max
            else:
               RoW=RoW+0.05
         '''

      elif middle>0.03:
         if(RoW>-0.3):
               RoW=-0.3
         if(RoW<=w_min):
               RoW=w_min
         else:
            RoW=RoW-0.01
         '''
         if middle<0.09:
            RoW = -0.2
         else:
            if(RoW<=w_min):
               RoW=w_min
            else:
               RoW=RoW-0.05
         '''
         
      print (data[0],"  ",data[2])
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
   print ("RoV: ",RoV," RoW: ", RoW)
   print("on=============================================================",on)
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
   #rospy.spin()
   #rospy.rate.sleep(30)
      
   '''
   if on == 1:      
      
   else:
      publish_cmd_vel(0,0,pub1)
   '''
   

if __name__ == '__main__':
   rospy.init_node('front_following')
   pub = rospy.Publisher('cmd_vel', Twist, queue_size = 1)   
   follower(pub,1)