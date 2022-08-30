#!/usr/bin/env python
# license removed for brevity

import rospy
import actionlib
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
#from my_action_actionlib.msg import MyActionGoal
from actionlib_msgs.msg import GoalID, GoalStatusArray
import time

destination=[0,1,2,3,4,5]
destination[0]=[20,0.04,0.24,-0.25,0.97]
destination[1]=[21,4.74,-2.65,-0.25,0.96]

def go_to(lala):
    
    client = actionlib.SimpleActionClient('move_base',MoveBaseAction)
    client.wait_for_server()

    goal = MoveBaseGoal()
    print(lala)
    print(destination[lala])
    
    goal.target_pose.header.seq = destination[lala][0]
    goal.target_pose.header.frame_id = "map"
    goal.target_pose.header.stamp = rospy.Time.now()
    goal.target_pose.pose.position.x = destination[lala][1]
    goal.target_pose.pose.position.y = destination[lala][2]
    goal.target_pose.pose.orientation.z = destination[lala][3]
    goal.target_pose.pose.orientation.w = destination[lala][4]
    #'''
    client.send_goal(goal)

def door_client():

    client = actionlib.SimpleActionClient('move_base',MoveBaseAction)
    client.wait_for_server()

    goal = MoveBaseGoal()
    '''
    goal.target_pose.header.seq = 12
    goal.target_pose.header.frame_id = "map"
    goal.target_pose.header.stamp = rospy.Time.now()
    #goal.target_pose.goal_id.stamp = rospy.Time.now()
    goal.target_pose.pose.position.x = 0.04
    goal.target_pose.pose.position.y = 0.24
    goal.target_pose.pose.orientation.z = -0.25
    goal.target_pose.pose.orientation.w = 0.97
    '''
    #door
    goal.target_pose.header.seq = 13
    goal.target_pose.header.frame_id = "map"
    goal.target_pose.header.stamp = rospy.Time.now()
    #goal.target_pose.goal_id.stamp = rospy.Time.now()
    goal.target_pose.pose.position.x = 4.74
    goal.target_pose.pose.position.y = -2.65
    goal.target_pose.pose.orientation.z = -0.25
    goal.target_pose.pose.orientation.w = 0.96
    #'''
    client.send_goal(goal)

def charge_client():
    client = actionlib.SimpleActionClient('move_base',MoveBaseAction)
    client.wait_for_server()
    goal = MoveBaseGoal()
    goal.target_pose.header.seq = 12
    goal.target_pose.header.frame_id = "map"
    goal.target_pose.header.stamp = rospy.Time.now()
    #goal.target_pose.goal_id.stamp = rospy.Time.now()
    goal.target_pose.pose.position.x = 0.04
    goal.target_pose.pose.position.y = 0.24
    goal.target_pose.pose.orientation.z = -0.25
    goal.target_pose.pose.orientation.w = 0.97
    client.send_goal(goal)

def cancel():
    
    cancel_pub = rospy.Publisher("/move_base/cancel", GoalID, queue_size=1)
    cancel_msg = GoalID()
    cancel_pub.publish(cancel_msg)

def callback(data):
   print (rospy.get_name(), "I heard %s"%str(data.data[1]))
 
def listener():
   rospy.Subscriber("/move_base/status", GoalStatusArray, callback)
   rospy.spin()


if __name__ == '__main__':
    try:
        rospy.init_node('movebase_client_pyyy')
        go_to(0)
        #charge_client()
        #door_client()
        #print("done")
        time.sleep(5)
        cancel()
        time.sleep(5)
        go_to(0)
        #print("cancelled")
        #listener()
        

    except rospy.ROSInterruptException:
        rospy.loginfo("Navigation test finished.")

#rostopic pub /move_base/cancel actionlib_msgs/GoalID -- {}
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