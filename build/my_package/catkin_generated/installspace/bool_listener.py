#!/usr/bin/env python2
import rospy
from std_msgs.msg import Bool 
def callback(data):
   rospy.loginfo(rospy.get_caller_id() + "I heard %s", data.data)

def listener():
    rospy.init_node('listener', anonymous=True)
    rospy.Subscriber("Obstacle_Stop_Flag", Bool, callback)
    rospy.spin()

if __name__ == '__main__':
    listener()