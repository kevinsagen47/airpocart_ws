#!/usr/bin/env python
# license removed for brevity

#import rospy
#import actionlib
#from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
#from my_action_actionlib.msg import MyActionGoal
#from actionlib_msgs.msg import GoalID, GoalStatusArray
import time

destination=[0,1,2,3,4,5]
destination[0]=[14,0.04,0.24,-0.25,0.97]
destination[1]=[13,4.74,-2.65,-0.25,0.96]



def go_to(lala):
    print("go to",lala)

def cancel():
    print("cancel navigation")    


   


if __name__ == '__main__':
    try:
        rospy.init_node('movebase_client_pyy')
        go_to(1)
        #charge_client()
        #charge_client()
        #print("done")
        #time.sleep(8)
        #cancel()
        #print("cancelled")
        #listener()
        

    except rospy.ROSInterruptException:
        rospy.loginfo("Navigation test finished.")


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
