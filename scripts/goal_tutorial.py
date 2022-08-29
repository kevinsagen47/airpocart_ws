#!/usr/bin/env python
# license removed for brevity

import rospy
import actionlib
#from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from my_action_actionlib.msg import MyActionGoal
def movebase_client():

    client = actionlib.SimpleActionClient('my_action',MoveBaseAction)
    client.wait_for_server()

    goal = MyActionGoal()
    goal.cmdType = 1
    goal.scriptName = "lab_door"
    goal.startIndex = 0
    '''
    goal.target_pose.header.frame_id = "map"
    goal.target_pose.header.stamp = rospy.Time.now()
    goal.target_pose.pose.position.x = 0.04
    goal.target_pose.pose.position.y = 0.24
    goal.target_pose.pose.orientation.z = -0.25
    goal.target_pose.pose.orientation.w = 0.97
    '''
    client.send_goal(goal)
    wait = client.wait_for_result()
    if not wait:
        rospy.logerr("Action server not available!")
        rospy.signal_shutdown("Action server not available!")
    else:
        return client.get_result()

if __name__ == '__main__':
    try:
        rospy.init_node('movebase_client_py')
        result = movebase_client()
        if result:
            rospy.loginfo("Goal execution done!")
    except rospy.ROSInterruptException:
        rospy.loginfo("Navigation test finished.")
