#!/usr/bin/env python
import rospy
import actionlib
from actionlib_msgs.msg import GoalID
import time


def callback(data):
   print (rospy.get_name(), "I heard %s"%str(data))

def talker():
    #pub = rospy.Publisher('/move_base/cancel', GoalID,queue_size=1000)
    #rospy.Subscriber("actionCommand", actionCmd, callback)
    cancel_pub = rospy.Publisher("/move_base/cancel", GoalID, queue_size=1)
    rospy.init_node('my_action_cancel', anonymous=True)
    
    cancel_msg = GoalID()
    cancel_pub.publish(cancel_msg)


if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException: pass