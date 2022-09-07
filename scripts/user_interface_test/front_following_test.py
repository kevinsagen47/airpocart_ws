#!/usr/bin/env python3
#PKG = 'numpy_tutorial'
#import roslib; roslib.load_manifest(PKG)
import sys
#import rospy
#from rospy_tutorials.msg import Floats
#from rospy.numpy_msg import numpy_msg
#from std_msgs.msg import Float32MultiArray
#from geometry_msgs.msg import Twist
#import time
#import pyrosenv
#from std_msgs.msg import Bool
#from simple_pid import PID
#from actionlib_msgs.msg import GoalID, GoalStatusArray
import random
print (sys.version)

def person_detect():
    return True

def get_status():
    return int(random.random()*4)

def soft():
    return True

def get_obstacle():
    return True
        
def onoff(on):
    print("call onoff")

def follower(pub1,on1):
   prtin("call follower")

if __name__ == '__main__':
   rospy.init_node('front_following')
   pub = rospy.Publisher('cmd_vel', Twist, queue_size = 1)   
   follower(pub,1)
