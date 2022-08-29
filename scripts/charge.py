#!/usr/bin/env python
import rospy
#from my_action_actionlib.msg import actionCmd #MyActionActionGoal#
from my_action_actionlib.msg import MyActionGoal
import time


def callback(data):
   print (rospy.get_name(), "I heard %s"%str(data))

def talker():
    pub = rospy.Publisher('', my_action,queue_size=1000)
    #rospy.Subscriber("actionCommand", actionCmd, callback)
    rospy.init_node('my_action_client2', anonymous=True)
    r = rospy.Rate(10) #10hz
    msg = actionCmd()
    #msg = MyActionActionGoal()
    msg.cmdType = 1
    msg.scriptName = "lab_door"
    msg.startLine = -1
    pub.publish(msg)
    rospy.spin()


if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException: pass


'''
###actionCommand

int8 cmdType
string scriptName
int8 startLine

//cmdType : 1/start, 2/stop, 3/pause, 4/go origin, 5/log for failed reason

show path
cmdType: 2
scriptName: "lab_charge"
startLine: -1

run path
cmdType: 1
scriptName: "lab_charge"
startLine: -1

cancel path
cmdType: 3
scriptName: "lab_charge"
startLine: -1


###rostopic echo my_action/status

status = 3 done
status 2 cancelled
status 1 running


###location 
/amcl_pose
'''