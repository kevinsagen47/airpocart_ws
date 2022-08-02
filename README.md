# airpocart_ws

## SETUP 
### WiFi <br>
連兩個router 都可以<br>
AIpocart B36 是DHCP (master)<br>
AIpocart TECO (機器人上面的） 是 client<br>

SSID: AIpocart B36   pass: Airpocart1<br>
SSID: AIpocart TECO pass: Airpocart1<br>

### Environment
Check your IP Address
```sh
ifconfig
```
Open bashrc
```sh
vim ~/.bashrc
```
Paste in bashrc
```sh
export ROS_MASTER_URI=http://192.168.0.11:11311
export ROS_IP=192.168.0.<ur IP Address>
```

## Remote Access<br>

### SSH
Jetson<br>

Local (-X means foward X11 graphics to client)
```sh
ssh -X airpocart@192.168.0.101
```
Public 
```sh
ssh -X airpocart@140.113.151.157
```
pass: airpocart<br>

TECO IPC<br>
Local
```sh
ssh ros@192.168.0.11
```
pass: adlinkros<br>


### xRDP<br>
Jetson: 140.113.151.157<br>
pass: airpocart<br>

### VNC:<br>
TECO: 192.168.0.11<br>
pass: adlinkros<br>

### TECO Website<br>
192.168.0.11<br>


## Usage

### Launch ROS realsense node<br>
Complete Launch: 
```sh
roslaunch realsense2_camera rs_rgbd.launch
```
Lite package:
```sh
roslaunch realsense2_camera lite.launch
```
### Run People Tracking<br>
```sh
rosrun ppl_detection detect_4
```

## Run Airpocart GUI
Navigate to directory<br>
Make sure environment is configured<br>
```sh
 cd airpocart_ws/scripts/user_interface/
 python3 interface.py
```

 
