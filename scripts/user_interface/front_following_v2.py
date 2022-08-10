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
max = 0.4
min = -0.1
z_buffer = [0.0,0.0,0.0]
w_max = 0.64
w_min = -1*w_max


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


def velocity_control(data,RoV,rel):
   #global RoV,RoW
   global on
   if (data[2]==-1 or data[2]>0.9 or on==0 or (rel<=-0.35 and data[2]>0.5)):
      RoV=0
   elif data[2]<0.5:
      if(RoV>=max):
         RoV=max
      else:
         RoV=RoV+0.05
   elif data[2]>0.7:
      if(RoV<=min):
         RoV=min
      else:
         RoV=RoV-0.05
   return RoV

def angular_control(data,RoW):
   #global RoV,RoW
   global on
   if (data[1]==-1 or (data[1]<0.08 and data[1]>-0.08) or  data[2]>0.9 or on==0):
      RoW=0
   elif data[1]<-0.03:
      RoW = 0.3
      '''
      if(RoW>=w_max):
         RoW=w_max
      else:
         RoW=RoW+0.05
      '''
   elif data[1]>0.03:
      RoW = -0.3
      '''
      if(RoW<=w_min):
         RoW=w_min
      else:
         RoW=RoW-0.05
      '''
   print (data[1:3]),
   return RoW
def horizontal_angular_control(data,RoW):
   #global RoV,RoW
   global on
   if (data[0]==-1 or (data[0]<0.08 and data[0]>-0.08) or  data[2]>0.9 or on==0):
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
def callback(data):
   global RoV,RoW
   human_velocity = estimate_velocity(data.data)#pos approching
   rel_velocity = human_velocity - RoV
   #print (round(rel_velocity,2), "  ",round(RoV,2)) #negative means robot too fast
   RoV=velocity_control(data.data,RoV,rel_velocity) 
   #RoV=velocity_control(data.data,RoV)  
   #RoV = 0.0
   #RoW=angular_control(data.data,RoW)  
   RoW= horizontal_angular_control(data.data,RoW)  
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
