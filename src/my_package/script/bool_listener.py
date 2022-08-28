#!/usr/bin/env python
import rospy
from std_msgs.msg import Bool 
def callback(data):
    if(data.data==True):
        print("True")
    else:
        print("False")

def listener():
    rospy.init_node('listener', anonymous=True)
    rospy.Subscriber("Obstacle_Stop_Flag", Bool, callback)
    rospy.spin()

if __name__ == '__main__':
    listener()
