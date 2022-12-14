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
'''
#!/usr/bin/env python
import rospy
import pcl
import ros_numpy
import sensor_msgs.point_cloud2 as pc2
from sensor_msgs.msg import PointCloud2

def callback_ptclud(ptcloud_data):
    pc = ros_numpy.numpify(data)
    points=np.zeros((pc.shape[0],3))
    points[:,0]=pc['x']
    points[:,1]=pc['y']
    points[:,2]=pc['z']
    p = pcl.PointCloud(np.array(points, dtype=np.float32))

def listener():
    rospy.Subscriber("/k_pos_cloud", PointCloud2, callback_ptclud)
    rospy.spin()

if __name__ == '__main__':
    rospy.init_node("realsense_subscriber", anonymous=True)
    listener()
'''
'''
from sensor_msgs.msg import PointCloud2, PointField
import sensor_msgs.point_cloud2 as pc2
import ctypes
import struct
from sensor_msgs.msg import PointCloud2, PointField
from std_msgs.msg import Header

def __init__(self):

    self.cloud_sub = rospy.Subscriber("/k_pos_cloud", PointCloud2,self.callback,queue_size=1, buff_size=52428800)      

def callback(self, ros_point_cloud):
        xyz = np.array([[0,0,0]])
        rgb = np.array([[0,0,0]])
        #self.lock.acquire()
        gen = pc2.read_points(ros_point_cloud, skip_nans=True)
        int_data = list(gen)

        for x in int_data:
            test = x[3] 
            # cast float32 to int so that bitwise operations are possible
            s = struct.pack('>f' ,test)
            i = struct.unpack('>l',s)[0]
            # you can get back the float value by the inverse operations
            pack = ctypes.c_uint32(i).value
            r = (pack & 0x00FF0000)>> 16
            g = (pack & 0x0000FF00)>> 8
            b = (pack & 0x000000FF)
            # prints r,g,b values in the 0-255 range
                        # x,y,z can be retrieved from the x[0],x[1],x[2]
            xyz = np.append(xyz,[[x[0],x[1],x[2]]], axis = 0)
            print (xyz)
            rgb = np.append(rgb,[[r,g,b]], axis = 0)

'''
