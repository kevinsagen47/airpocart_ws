#!/usr/bin/env python3
#PKG = 'numpy_tutorial'
#import roslib; roslib.load_manifest(PKG)

import rospy
#from rospy_tutorials.msg import Floats
#from rospy.numpy_msg import numpy_msg
from actionlib_msgs.msg import GoalID, GoalStatusArray

def callback(data):
   #print (type(data.status_list[0]))
   print (data.status_list[0].status)

 
def listener():
   rospy.init_node('listener')
   rospy.Subscriber("/move_base/status", GoalStatusArray, callback)
   rospy.spin()

if __name__ == '__main__':
   listener()