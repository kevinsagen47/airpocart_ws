import sys
import os
import cv2
import time
import threading
from geometry_msgs.msg import Twist
import rospy
#from PyQt5.QtWidgets import QApplication, QWidget, QLabel, QPushButton, QComboBox, QGraphicsOpacityEffect
#from PyQt5.QtGui import QIcon, QImage, QPixmap
#from PyQt5.QtCore import pyqtSlot, QCoreApplication

from PyQt5 import *
from PyQt5.QtWidgets import *
from PyQt5.QtGui import *
from PyQt5.QtCore import *

class MyWidget(QWidget):
    def __init__(self):
        super().__init__()
        self.initUI()
    
    def initUI(self):
        self.setWindowTitle('User Interface')
        self.setGeometry(0,0,1920,1200)
       
        
        ##        Only for test       ##
        
        # 顯示畫面
        self.page = QLabel(self)
        self.page.setText('閒置畫面')
        self.page.move(600,0)
        
        # 關閉程式按鈕
        self.shut_button = QPushButton('關閉程式', self)
        self.shut_button.move(50,750)
        self.shut_button.resize(300,120)
        self.shut_button.setShortcut('Ctrl+C')
        self.shut_button.clicked.connect(QCoreApplication.instance().quit)
        
        # 遙控按鈕
                
        self.leftfront_btn = QPushButton('leftfront',self)
        self.front_btn = QPushButton('front',self)
        self.rightfront_btn = QPushButton('rightfront',self)
        self.left_btn = QPushButton('left',self)
        self.right_btn = QPushButton('right',self)
        self.leftback_btn = QPushButton('leftback',self)
        self.back_btn = QPushButton('back',self)
        self.rightback_btn = QPushButton('rightback',self)
        self.stop_btn = QPushButton('stop',self)
              
        size = 100
        self.leftfront_btn.resize(size,size)
        self.front_btn.resize(size,size)
        self.rightfront_btn.resize(size,size)
        self.left_btn.resize(size,size)
        self.right_btn.resize(size,size)
        self.leftback_btn.resize(size,size)
        self.back_btn.resize(size,size)
        self.rightback_btn.resize(size,size)
        self.stop_btn.resize(200,200)
        
        self.leftfront_btn.move(800,150)
        self.front_btn.move(1000,150)
        self.rightfront_btn.move(1200,150)
        self.left_btn.move(800,350)
        self.right_btn.move(1200,350)
        self.leftback_btn.move(800,550)
        self.back_btn.move(1000,550)
        self.rightback_btn.move(1200,550)        
        self.stop_btn.move(950,300)
        
        self.speed_btn = QPushButton('High speed',self)
        self.speed_btn.resize(200,200)
        self.speed_btn.move(950,300)
        self.speed_btn.clicked.connect(self.speed)
        self.multi_speed = 1
        self.leftfront_btn.pressed.connect(lambda:self.walk('lf'))
        self.leftfront_btn.released.connect(lambda:self.walk('s'))
        self.front_btn.pressed.connect(lambda:self.walk('f'))
        self.front_btn.released.connect(lambda:self.walk('s'))
        self.rightfront_btn.pressed.connect(lambda:self.walk('rf'))
        self.rightfront_btn.released.connect(lambda:self.walk('s'))
        self.left_btn.pressed.connect(lambda:self.walk('l'))
        self.left_btn.released.connect(lambda:self.walk('s'))
        self.right_btn.pressed.connect(lambda:self.walk('r'))
        self.right_btn.released.connect(lambda:self.walk('s'))
        self.leftback_btn.pressed.connect(lambda:self.walk('lb'))
        self.leftback_btn.released.connect(lambda:self.walk('s'))
        self.back_btn.pressed.connect(lambda:self.walk('b'))
        self.back_btn.released.connect(lambda:self.walk('s'))
        self.rightback_btn.pressed.connect(lambda:self.walk('rb'))
        self.rightback_btn.released.connect(lambda:self.walk('s'))
        
        
        self.stop_btn.clicked.connect(lambda:self.walk('s'))
        self.RoV = 0.0
        self.RoW = 0.0
        #################################
        
        ##        Always Visible       ##

        # (Text) 時間標籤
        self.time_label = QLabel(self)
        self.time_label.setFont(QFont('Arial',20))
        self.time_label.move(1400,0)
        self.time_label.setText(time.ctime())
        threading._start_new_thread(self.time_update,())

        # (Image) 電量顯示
        self.battery = QLabel(self)
        self.showImage_battery()

        # (Button) 返回主畫面
        self.home = QPushButton(self)
        self.home.clicked.connect(self.idle)
        self.home.move(50,50)
        self.home.setText("返回主畫面")
        
        
        self.pub = rospy.Publisher('cmd_vel',Twist,queue_size=1)
        try:
            rospy.init_node('interface')
        except:
            print("ROS master is offline")
        ##        Idle/Default         ##

        # (Text) 開始文字
        
        self.start_label = QLabel(self)
        pixmap = QPixmap('Image/start_text.png')
        self.start_label.setPixmap(pixmap)
        self.start_label.move(600,700)
        self.start_label.resize(800,90)

        

        # (Button) 開始按鈕
        self.st_btn = QPushButton('start',self)
        #self.st_btn.move(450,659)
        #self.st_btn.resize(400,60)
        self.st_btn.move(0,0)
        self.st_btn.resize(1280,800)
        op = QGraphicsOpacityEffect()
        op.setOpacity(0.01)     # 透明度 0~1
        self.st_btn.setGraphicsEffect(op)
        self.st_btn.clicked.connect(self.option_page)

        # (Image) 背景圖案
        self.img = QLabel(self)
        
        #################################
        
        ##        Option Page          ##


        # (Button) 控制 選擇
        self.opt_chg = QPushButton(self)
        self.opt_chg.setText("控制")
        self.opt_chg.move(900,200)
        self.opt_chg.resize(450,450)
        self.opt_chg.clicked.connect(self.remoting)
        
        #################################
        
        self.idle()

        
    # (顯示) 閒置畫面
    def idle(self):
        self.all_clear()
        self.page.setText('閒置頁面')
        self.showImage()
        self.st_btn.setVisible(True)
        self.start_label.setVisible(True)
        
        self.home.move(50,50)
        self.home.resize(200,200)
        self.RoV = 0
        self.RoW = 0
        twist = Twist()
        twist.linear.x = self.RoV
        twist.angular.z = self.RoW
        print('~~  Stop  ~~')
        print('speed:%s\tturn:%s'%(self.RoV,self.RoW))
        self.pub.publish(twist)
        
    # (顯示) 選擇畫面
    def option_page(self):
        self.all_clear()
        self.page.setText('選擇頁面')
        self.opt_chg.setVisible(True)
        self.shut_button.setVisible(True)
        
        self.home.move(50,50)
        self.home.setVisible(True)


    # (顯示) 遙控畫面
    def remoting(self):
        self.all_clear()
        self.page.setText('遙控頁面')
        self.leftfront_btn.setVisible(True)
        self.front_btn.setVisible(True)
        self.rightfront_btn.setVisible(True)
        self.left_btn.setVisible(True)
        self.right_btn.setVisible(True)
        self.leftback_btn.setVisible(True)
        self.back_btn.setVisible(True)
        self.rightback_btn.setVisible(True)
        #self.stop_btn.setVisible(True)
        self.speed_btn.setVisible(True)
        self.speed_btn.setText('High speed')
        self.home.setVisible(True)
        self.shut_button.setVisible(True)
        print('Remoting mode running')

    
    # (顯示) 清除所有物件
    def all_clear(self):
        self.leftfront_btn.setVisible(False)
        self.front_btn.setVisible(False)
        self.rightfront_btn.setVisible(False)
        self.left_btn.setVisible(False)
        self.right_btn.setVisible(False)
        self.leftback_btn.setVisible(False)
        self.back_btn.setVisible(False)
        self.rightback_btn.setVisible(False)
        self.stop_btn.setVisible(False)
        self.speed_btn.setVisible(False)
        self.img.setVisible(False)
        self.opt_chg.setVisible(False)
        self.st_btn.setVisible(False)
        self.start_label.setVisible(False)
        self.shut_button.setVisible(False)
        self.home.setVisible(False)
        
        
    
    def speed(self):
        if self.multi_speed == 1:
            self.multi_speed = 2
            self.speed_btn.setText('Low speed')
        else:
            self.multi_speed = 1
            self.speed_btn.setText('High speed')
    
    # (控制) 遙控模式
    def walk(self,key):
        v_s = 0.25
        v_t = 0.1
        t = 0.5
        if key == 'lf':
            self.RoV = v_t*self.multi_speed
            self.RoW = t
        if key == 'f':
            self.RoV = v_s*self.multi_speed
            self.RoW = 0.0
        if key == 'rf':
            self.RoV = v_t*self.multi_speed
            self.RoW = -t
        if key == 'l':
            self.RoV = 0.0
            self.RoW = t*self.multi_speed
        if key == 'r':
            self.RoV = 0.0
            self.RoW = -t*self.multi_speed
        if key == 'lb':
            self.RoV = -v_t*self.multi_speed
            self.RoW = -t
        if key == 'b':
            self.RoV = -v_s*self.multi_speed
            self.RoW = 0.0
        if key == 'rb':
            self.RoV = -v_t*self.multi_speed
            self.RoW = t
        if key == 's':
            self.RoV = 0.0
            self.RoW = 0.0
            #print(self.RoV,self.RoW)
        
        twist = Twist()
        twist.linear.x = self.RoV
        twist.angular.z = self.RoW
        print('speed:%s\tturn:%s'%(self.RoV,self.RoW))
        try:
            self.pub.publish(twist)
        except:
            print("ROS master is offline")
    # (圖片) 閒置圖片
    def showImage(self):
        self.movie = QMovie("./Image/anya3.gif")
        self.img.setMovie(self.movie)
        self.movie.start()        
        #pixmap = QPixmap('Image/anya.png')        
        #self.img.setPixmap(pixmap)        
        self.img.resize(1920,1200)
        self.img.setScaledContents(True)
        self.img.move(0,0)
        self.img.lower()
        self.img.setVisible(True)
        
        
    # (圖片) 電池
    def showImage_battery(self):
        pixmap = QPixmap('~/airpocart_ws/scripts/user_interface/Image/battery_charge.png')
        self.battery.setPixmap(pixmap)
        self.battery.move(1800,5)
        self.battery.resize(60,30)
        self.battery.setScaledContents(True)
        self.battery.raise_()
        self.battery.setVisible(True)

    # (更新) 更新時間
    def time_update(self):
        months = ['January', 'February', 'March', 'April', 'May', 'June', 'July',
                  'August', 'September', 'October', 'November', 'December' ]
        while True:
            try:
                t = time.localtime()
                mon = t.tm_mon
                day = t.tm_mday
                h = t.tm_hour
                m = t.tm_min
                s = t.tm_sec
                #print("%02d:%02d:%02d %9s %2d"%(h,m,s,months[mon-1],day))
                self.time_label.setText("%02d:%02d:%02d %9s %2d"%(h,m,s,months[mon-1],day))
                time.sleep(1)
            except Exception as ex:
                print(ex)
                break
        

    
if __name__ == '__main__':
    app = QApplication(sys.argv)
    screen = app.primaryScreen()
    w = MyWidget()
    w.showFullScreen()
    #w.show()
    sys.exit(app.exec_())

   
   
 # app : system
 # widget: window
 #   - setGeometry()
 #   - setWindowTitle()
 #   - show()
 #   - showFullScreen()
 #
 # All:
 #   - setText()
 #   - move()
 #   - setVisible()
 #   - 
 #
 # QLabel: label
 #   - 
 #   - 
 # QPushButton: button
 #   - clicked.connect()
 #   - 
 # QComboBox: combobox
 #   - currentText()
 #   - currentIndexChanged.connect
 
 
 # screen = app.primaryScreen()    
 # max_x = screen.size().width()                  (1920)  (1280)
 # max_y = screen.size().height()                 (1080)  (800)
 # ava_x = screen.availableGeometry().width()     (1858)  (1280)
 # ava_y = screen.availableGeometry().height()    (996)   (800)
 
