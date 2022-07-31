# airpocart_ws
1.WiFi <br>
連兩個router 都可以<br>
AIpocart B36 是DHCP (master)<br>
AIpocart TECO (機器人上面的） 是 client<br>

SSID: AIpocart B36   pass: Airpocart1<br>
SSID: AIpocart TECO pass: Airpocart1<br>

2. SSH<br>

Jetson<br>
public: ssh airpocart@140.113.151.157<br>
local: ssh airpocart@192.168.0.101<br>
pass: airpocart<br>

TECO<br>
local: ssh ros@192.168.0.11<br>
pass: adlinkros<br>


3. xRDP<br>
Jetson: 140.113.151.157<br>
pass: airpocart<br>

4. VNC:<br>
TECO: 192.168.0.11<br>
pass: adlinkros<br>

5. TECO UI<br>
192.168.0.11<br>




Launch ROS realsense node<br>
option 1: roslaunch realsense2_camera rs_rgbd.launch<br>
option 2: roslaunch realsense2_camera lite.launch<br>

Run People Tracking<br>
rosrun ppl_detection detect_4<br>

