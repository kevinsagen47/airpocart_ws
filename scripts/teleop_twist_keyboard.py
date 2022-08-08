#!/usr/bin/env python

from __future__ import print_function

import roslib; roslib.load_manifest('teleop_twist_keyboard')
import rospy
import time
from threading import Thread
from geometry_msgs.msg import Twist

import sys, select, termios, tty
RoV = 0.0
RoW = 0.0
msg = """
Reading from the keyboard  and Publishing to Twist!
---------------------------
Moving around:
		w    
   a    s    d*
		x    
CTRL-C to quit
"""

moveBindings = {
		'w':(1,0,0,0),
		'x':(-1,0,0,0),
		'a':(0,0,0,1),
		'd':(0,0,0,-1),
	's':(0,0,0,0),
	' ':(0,0,0,0),
	'1':(0,0,0,0),
	}


def getKey():
	tty.setraw(sys.stdin.fileno())
	select.select([sys.stdin], [], [], 0)
	key = sys.stdin.read(1)
	termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
	return key


def vels(speed,turn):
	return "currently:\tspeed %s\tturn %s " % (speed,turn)

def task():
	global moving1, moving1_time
	print("hi")
	if(moving1==True):
		print("YES")
		if(time.time()-moving1_time)>=0.5:
			RoW=0.0;RoV=0.0;
			moving1=False



if __name__=="__main__":
	settings = termios.tcgetattr(sys.stdin)

	pub = rospy.Publisher('cmd_vel', Twist, queue_size = 1)
	rospy.init_node('teleop_twist_keyboard')

	speed = rospy.get_param("~speed", 0.5)
	turn = rospy.get_param("~turn", 1.0)
	x = 0
	y = 0
	z = 0
	th = 0
	status = 0
	global moving1, moving1_time
	moving1=False
	t1 = Thread(target=task)
	t1.daemon = True
	t1.start()
	try:
		print(msg)
		print(vels(speed,turn))
		while(1):
			key = getKey()
			#print(moving1)
			


			if key in moveBindings.keys():
				if (key == 'w'): 
					if(RoV>=0.9):
					    RoV=0.9
					else:
                                            RoV=RoV+0.05
				if (key == 'x'): 
					if(RoV<=-0.9):
					    RoV=-0.7
					else:
					    RoV=RoV-0.05
				if (key == 'd'): 
					if(RoW<=-0.64):
						RoW=-0.64
					else:
                                            RoW=RoW-0.08		
				if (key == 'a'): 
					if(RoW>=0.64):
						RoW=0.64
					else:
						RoW=RoW+0.08	
				if (key == 's'): 
					RoW=0.0;RoV=0.0;
				if (key == ' '): 
					RoW=0.0;RoV=0.0;

				if (key == '1'): #r2
					RoW=0.4;RoV=0.64;
					moving1=True
					
					moving1_time=time.time()


				
				
			else:
				RoW = 0
				RoV = 0
				if (key == '\x03'):
					break



			twist = Twist()
			twist.linear.x = RoV
			twist.angular.z = RoW
			speed = RoV
			turn = RoW
			#print(key)
			print(vels(speed,turn))
			pub.publish(twist)
			if(moving1==True):
				time.sleep(2)
				RoW=0.0;RoV=0.0;
				moving1=False
				twist = Twist()
				twist.linear.x = RoV
				twist.angular.z = RoW
				speed = RoV
				turn = RoW
				print(vels(speed,turn))
				pub.publish(twist)
	except Exception as e:
		print(e)

	finally:
		twist = Twist()
		twist.linear.x = 0; twist.linear.y = 0; twist.linear.z = 0
		twist.angular.x = 0; twist.angular.y = 0; twist.angular.z = 0
		pub.publish(twist)

		termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
