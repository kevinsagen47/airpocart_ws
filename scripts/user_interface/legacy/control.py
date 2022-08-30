import rospy
import roslib

#from geometry_msgs.msg import Twist

import sys, select, termios, tty

RoV = 0.0
RoW = 0.0
msg = "Reading from the keyboard  and Publishing to Twist!"


moveBindings = {    'w':(1,0,0,0),
                    'x':(-1,0,0,0),
                    'a':(0,0,0,-1),
                    'd':(0,0,0,1),
                    's':(0,0,0,0),
                    ' ':(0,0,0,0)   }
                    
def getKey():
    tty.setraw(sys.stdin.fileno())
    select.select([sys.stdin], [], [], 0)
    key = sys.stdin.read(1)
    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    return key

if __name__ == '__main__':
    #settings = termios.tcgetattr(sys.stdin)
    
