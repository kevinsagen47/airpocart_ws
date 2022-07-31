# airpocart_ws
1.WiFi 
連兩個router 都可以
AIpocart B36 是DHCP (master)
AIpocart TECO (機器人上面的） 是 client

SSID: AIpocart B36   pass: Airpocart1
SSID: AIpocart TECO pass: Airpocart1

2. SSH

Jetson
public: ssh airpocart@140.113.151.157
local: ssh airpocart@192.168.0.101
pass: airpocart

TECO
local: ssh ros@192.168.0.11
pass: adlinkros


3. xRDP
Jetson: 140.113.151.157
pass: airpocart

4. VNC:
TECO: 192.168.0.11
pass: adlinkros

5. TECO UI
192.168.0.11




Launch ROS realsense node<br>
option 1: roslaunch realsense2_camera rs_rgbd.launch
option 2: roslaunch realsense2_camera lite.launch

Run People Tracking
rosrun ppl_detection detect_4

