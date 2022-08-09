#!/usr/bin/env python2
#PKG = 'numpy_tutorial'
#import roslib; roslib.load_manifest(PKG)

import rospy
#from rospy_tutorials.msg import Floats
#from rospy.numpy_msg import numpy_msg
from std_msgs.msg import Float32MultiArray
from geometry_msgs.msg import Twist

RoV = 0.0
RoW = 0.0
max = 0.4
min = -0.1

w_max = 0.64
w_min = -1*w_max
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


def velocity_control(data,RoV):
   #global RoV,RoW
   if (data[2]==-1 or data[2]>0.9):
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
   if (data[1]==-1 or (data[1]<0.08 and data[1]>-0.08) or  data[2]>0.9):
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
   if (data[0]==-1 or (data[0]<0.08 and data[0]>-0.08) or  data[2]>0.9):
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
def callback(data):
   global RoV,RoW
   
   RoV=velocity_control(data.data,RoV)  
   #RoV = 0.0
   #RoW=angular_control(data.data,RoW)  
   RoW= horizontal_angular_control(data.data,RoW)  
   print ("RoV: ",RoV," RoW: ", RoW)
   publish_cmd_vel(RoV,RoW,pub)
   
 
def follower(pub,on=1):
   #global pub
   #rospy.init_node('front_following')
   #pub = rospy.Publisher('cmd_vel', Twist, queue_size = 1)   
   '''
   if on == 1:      
      rospy.Subscriber("human_vector", Float32MultiArray, callback)
      rospy.spin()
   else:
      publish_cmd_vel(0,0,pub1)
   '''
   publish_cmd_vel(on*0.2,0,pub)

if __name__ == '__main__':
   rospy.init_node('front_following')
   pub = rospy.Publisher('cmd_vel', Twist, queue_size = 1)   
   follower(pub,1)
