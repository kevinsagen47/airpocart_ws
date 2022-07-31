#include <ros/ros.h>
#include <ros/package.h>
#include "sensor_msgs/PointCloud.h"
#include "pcl/point_types.h"
#include "pcl_ros/point_cloud.h"
#include "svm.h"
#include "pca.h"
#include "visualization_msgs/Marker.h"
#include "geometry_msgs/PolygonStamped.h"
#include "ppl_detection/Tracker.h"
#include "std_msgs/String.h"
#include <sstream>

void chatterCallback(const std_msgs::String::ConstPtr& msg)
{
	ROS_INFO("I heard: [%s]", msg->data.c_str());
}


int main(int argc, char **argv)
{
	ros::init(argc, argv, "pcd_listener");
	ros::NodeHandle n;
	ros::Subscriber sub = n.subscribe<pcl::PointCloud<pcl::PointXYZ> >("k_pos_cloud", 1, chatterCallback);
	ros::spin();
	return 0;
}
