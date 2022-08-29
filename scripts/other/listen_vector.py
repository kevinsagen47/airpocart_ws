#!/usr/bin/env python3
#PKG = 'numpy_tutorial'
#import roslib; roslib.load_manifest(PKG)

import rospy
#from rospy_tutorials.msg import Floats
#from rospy.numpy_msg import numpy_msg
from std_msgs.msg import Float32MultiArray

def callback(data):
   print (rospy.get_name(), "I heard %s"%str(data.data[1]))
 
def listener():
   rospy.init_node('listener')
   rospy.Subscriber("human_vector", Float32MultiArray, callback)
   rospy.spin()

if __name__ == '__main__':
   listener()