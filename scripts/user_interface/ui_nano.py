#! /usr/bin/env python3
import sys
import os
import cv2
import time
import threading

from front_following_v4 import *
from geometry_msgs.msg import Twist
import rospy
from PyQt5.QtWidgets import QApplication, QWidget, QLabel, QPushButton, QComboBox, QGraphicsOpacityEffect
from PyQt5.QtGui import QIcon, QImage, QPixmap, QFont, QMovie
from PyQt5.QtCore import pyqtSlot, QCoreApplication, QSize

#from PyQt5 import *
#from PyQt5.QtWidgets import *
#from PyQt5.QtGui import *
#from PyQt5.QtCore import *

class MyWidget(QWidget):
    def __init__(self):
        super().__init__()
        self.initUI()
    
    def initUI(self):
        self.setWindowTitle('User Interface')
        self.setGeometry(0,0,1920,1200)
        self.ros_on = True
        #self.path = './'
        self.path = '/home/airpocart/airpocart_ws/scripts/user_interface/'
        self.font_size = 1

        
        # 下拉式選單
        self.option = QComboBox(self)
        self.option.addItems(['Select Mode','Navigation','Following','Charging','Remoting'])
        self.option.setCurrentIndex(0)
        self.option.move(1800,100)
        self.option.currentIndexChanged.connect(self.changemode)

        # 顯示畫面
        self.page = QLabel(self)
        #self.page.setText('閒置畫面')
        self.page.move(800,0)
        
        # 關閉程式按鈕
        self.shut_button = QPushButton('shut down', self)
        self.shut_button.move(1800,50)
        self.shut_button.setShortcut('Ctrl+C')
        self.shut_button.clicked.connect(QCoreApplication.instance().quit)
        
        # 顯示閒置狀態
        self.idle_btn = QPushButton('idle',self)
        self.idle_btn.move(1800,150)
        self.idle_btn.clicked.connect(self.idle)       
        
        # 測試按鈕
        #self.test_btn = QPushButton('test cmd', self)
        #self.test_btn.move(50,100)
        #self.test_btn.clicked.connect(self.os_command)
        
        
        #################################
        
        ##        Always Visible       ##

        # (Text) 時間標籤
        self.time_label = QLabel(self)
        self.time_label.setFont(QFont('Arial',18*self.font_size))
        self.time_label.move(800,0)
        self.time_label.setText(time.ctime())
        threading._start_new_thread(self.time_update,())

        # (Image) 電量顯示
        self.battery = QLabel(self)
        self.showImage_battery(1)

        # (Button) 返回主畫面
        self.home = QPushButton(self)
        self.home.clicked.connect(self.idle)
        
        self.home.setText("返回主畫面")
        
        # (Init) ros

        if self.ros_on:
            try:
                print("ROS master is online")
                self.pub = rospy.Publisher('cmd_vel',Twist,queue_size=1)
                rospy.init_node('interface')
            except:
                self.ros_on = False
                print("ROS master is offline")
        
        ##        Idle/Default         ##

        # (Text) 開始文字
        '''
        self.start_label = QLabel(self)
        self.start_label.setText("按 一 下 開 始 操 作")
        #self.start_label.setFont(QFont('Ariel',35))
        self.start_label.setFont(QFont('Times New Roman',35))
        self.start_label.move(450,650)
        '''
        self.start_label = QLabel(self)
        pixmap = QPixmap(self.path+'Image/start_text_2.png')
        self.start_label.setPixmap(pixmap)
        #self.start_label.move(675,1000)
        self.start_label.move(675,550)
        self.start_label.resize(800,90)        

        # (Button) 開始按鈕
        self.st_btn = QPushButton('start',self)        
        self.st_btn.move(0,0)
        self.st_btn.resize(1920,1200)
        op = QGraphicsOpacityEffect()
        op.setOpacity(0.01)     # 透明度 0~1
        self.st_btn.setGraphicsEffect(op)
        self.st_btn.clicked.connect(self.option_page)


        # (Image) 背景圖案
        self.img_idle = QLabel(self)
        self.img = QLabel(self)

        
        
        #################################
        
        ##        Option Page          ##

        # (Button) 導航/跟隨 選擇
        
        self.opt_nav = QPushButton(self)
        self.opt_fol = QPushButton(self)        
        
        self.opt_nav.clicked.connect(self.navigation)
        self.opt_fol.clicked.connect(self.following)

        self.nav_img = QLabel(self)
        self.fol_img = QLabel(self)        
        pixmap = QPixmap(self.path+'Image/map_icon_2.png')
        self.nav_img.setPixmap(pixmap)
        pixmap = QPixmap(self.path+'Image/fol_icon_3.png')
        self.fol_img.setPixmap(pixmap)
        self.nav_img.setScaledContents(True)
        self.fol_img.setScaledContents(True)

        # (Button) 遙控 選擇

        self.opt_rmt = QPushButton(self)
        self.opt_rmt.clicked.connect(self.remoting)
        self.rmt_img = QLabel(self)
        #pixmap = QPixmap(self.path+'Image/cart_kuso.jpg')
        pixmap = QPixmap(self.path+'Image/remoting_icon.png')
        self.rmt_img.setPixmap(pixmap)
        self.rmt_img.setScaledContents(True)

        # (Button) 充電 選擇
        self.opt_chg = QPushButton(self)        
        self.opt_chg.clicked.connect(self.charging)
        self.chg_img = QLabel(self)
        pixmap = QPixmap(self.path+'Image/charging_icon.png')
        self.chg_img.setPixmap(pixmap)        
        self.chg_img.setScaledContents(True)

        
        # (Button) 導航/跟隨 說明
        self.explain_nav = QPushButton(self)
        self.explain_fol = QPushButton(self)

        self.page_ex = 0
        self.explain_fol.clicked.connect(self.explain)

        # (Button/label) 說明
        self.explain_next = QPushButton(self)
        self.explain_next.clicked.connect(self.explain)
        self.explain_img = QLabel(self)
        pixmap = QPixmap(self.path+'Image/explain_icon_2.png')
        self.explain_img.setPixmap(pixmap)
        self.explain_img.setScaledContents(True)

        self.black_img = QLabel(self)
        self.black_img.resize(1920,1200)
        pixmap = QPixmap(self.path+'Image/black_img.png')
        self.black_img.setPixmap(pixmap)
        self.black_img.setScaledContents(True)

        self.explain_page = []
        for i in range(11):
            self.explain_page.append(QLabel(self))
        
        
        #################################
        
        ##        Navigation           ##

        # (Image?) 地圖
        self.map = QLabel(self)

        # ***由定位給***  現在位置
        self.maplocation_x = 0
        self.maplocation_y = 0
        

        # (Event) 監聽滑鼠
        self.map.mousePressEvent = self.show_mouse_press
        #self.map.mouseReleaseEvent = self.show_mouse_release
        self.map.mouseMoveEvent = self.show_mouse_move
        
        # (Label) 指示
        self.comment_label1 = QLabel(self)
        
        # (Combobox) 導航點類別選擇
        self.location_type = QComboBox(self)
        loc_type = ['公共服務 Service','娛樂 Entertainment','休息 Rest','藝文 Art','其他 Other']
            
        self.location_type.addItems(loc_type)

        
        self.location_type.currentIndexChanged.connect(lambda:self.show_type(self.location_type.currentIndex()))

        # (Button) 導航點位置選擇        
        self.hito = []
        for i in range(4):
            self.hito.append(QPushButton(self))
        self.cafe = []
        for i in range(4):
            self.cafe.append(QPushButton(self))
        self.shop = []
        for i in range(4):
            self.shop.append(QPushButton(self))
        self.toilet = []
        for i in range(4):
            self.toilet.append(QPushButton(self))
        self.other = []
        for i in range(4):
            self.other.append(QPushButton(self))
        # (Text) 評分、距離、備註
        self.score = []
        self.extra = []
        self.distn = []
        for i in range(20):
            self.score.append(QLabel(self))        
        for i in range(20):
            self.extra.append(QLabel(self))
        for i in range(20):
            self.distn.append(QLabel(self))
        # initial
        self.loc_ch = -1
        
        # (Image) 位置指針
        self.pin = QLabel(self)
        pixmap = QPixmap(self.path+'Image/pin.png') #(252,370)
        self.pin.setPixmap(pixmap)
        self.pin.resize(25,37)
        self.pin.setScaledContents(True)
        self.pin.raise_()

        # (Button) 確定導航
        self.nav_btn = QPushButton(self)
        
        
        
        #################################
        
        ##         Following           ##

        self.follow_warning = QLabel(self)
        self.follow_warning0 = QLabel(self)
        self.running_icon = QLabel(self)
                
        self.follow_on_btn = QPushButton('Following',self)
        self.follow_off_btn = QPushButton('Stop',self)
        
        self.follow_on_btn.clicked.connect(lambda:self.follow_start(1))
        self.follow_off_btn.clicked.connect(lambda:self.follow_start(0))

        self.follow_on_icon = QLabel(self)
        self.follow_on_icon_grey = QLabel(self)
        self.follow_off_icon = QLabel(self)
        
        self.follow_error_icon = QLabel(self)
        self.follow_soft_icon = QLabel(self)
        self.follow_flag = False
        self.on = False
        
        #################################
        
        ##          Remoting           ##
        
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
        self.speed_btn = QPushButton('切換速度',self)
        
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

        self.speed_label = QLabel(self)
        
        self.stop_btn.clicked.connect(lambda:self.walk('s'))
        self.RoV = 0.0
        self.RoW = 0.0
        #################################

        
        
        ##          Charging           ##

        self.charging_text = QLabel(self)
        
        #################################
        
        self.idle()

    # (測試) 終端機指令    
    def os_command(self):
        os.system('python3 -V')

    # (測試) 模式選單
    def changemode(self):        
        if self.option.currentText() == 'Navigation':            
            self.navigation()
        elif self.option.currentText() == 'Following':            
            self.following()
        elif self.option.currentText() == 'Charging':            
            self.charging()            
        elif self.option.currentText() == 'Remoting':            
            self.remoting()
            

        
    # (顯示) 閒置畫面
    def idle(self):
        self.all_clear()
        self.page.setText('閒置頁面')
        self.option.setCurrentIndex(0)
        self.img.setVisible(False)
        self.img_idle.setVisible(True)
        self.showImage_battery(0)        
        self.showImage_idle()
        self.time_label.setStyleSheet("color:white")
        #self.showImage(1)
        self.st_btn.setVisible(True)
        self.start_label.setVisible(True)
        self.home.move(1800,200)        
        self.home.resize(50,20)
        self.home.setVisible(False)
        self.RoV = 0
        self.RoW = 0
        print('~~  Stop  ~~')
        print('speed:%s\tturn:%s'%(self.RoV,self.RoW))
        if self.ros_on:
            twist = Twist()
            twist.linear.x = self.RoV
            twist.angular.z = self.RoW
            
            try:
                self.pub.publish(twist)
            except:
                ros_on = False
                print("ROS master is offline")
            
    # (顯示) 選擇畫面
    def option_page(self):
        self.all_clear()
        self.page.setText('選擇頁面')        
        self.opt_nav.setVisible(True)
        self.opt_fol.setVisible(True)
        self.opt_rmt.setVisible(True)
        self.opt_chg.setVisible(True)
        
        self.nav_img.setVisible(True)
        self.fol_img.setVisible(True)
        self.rmt_img.setVisible(True)
        self.chg_img.setVisible(True)
        self.explain_nav.setVisible(False)
        self.explain_fol.setVisible(True)
        self.explain_img.setVisible(True)
        
        self.opt_nav.move(75,100)
        self.opt_fol.move(950,100)
        self.opt_rmt.move(1530,950)
        self.opt_chg.move(1700,950)
        self.opt_nav.resize(800,800)
        self.opt_fol.resize(800,800)
        self.opt_rmt.resize(120,150)
        self.opt_chg.resize(150,150)
        
        self.opt_nav.raise_()
        self.opt_fol.raise_()
        self.opt_rmt.raise_()
        self.opt_chg.raise_()

        op = QGraphicsOpacityEffect()
        op.setOpacity(0.01)     # 透明度 0~1
        self.opt_nav.setGraphicsEffect(op)
        op = QGraphicsOpacityEffect()
        op.setOpacity(0.01)     # 透明度 0~1
        self.opt_fol.setGraphicsEffect(op)
        op = QGraphicsOpacityEffect()
        op.setOpacity(0.01)     # 透明度 0~1
        self.opt_rmt.setGraphicsEffect(op)
        op = QGraphicsOpacityEffect()
        op.setOpacity(0.01)     # 透明度 0~1
        self.opt_chg.setGraphicsEffect(op)

        self.nav_img.move(75,100)
        self.fol_img.move(950,100)
        self.nav_img.resize(800,800)
        self.fol_img.resize(800,800)

        self.rmt_img.move(1530,950)
        self.rmt_img.resize(120,150)
        self.chg_img.move(1700,950)
        self.chg_img.resize(150,150)

        self.page_ex = 0
        self.explain_nav.setText("點我一下看說明")
        self.explain_nav.setFont(QFont('Ariel',10*self.font_size))
        #self.explain_fol.setText("點我一下看說明")
        self.explain_fol.setFont(QFont('Ariel',10*self.font_size))
        self.explain_nav.move(400,900)
        self.explain_fol.move(600,920)
        self.explain_img.move(600,920)
        self.explain_nav.resize(250,50)
        self.explain_fol.resize(610,169)        
        self.explain_img.resize(610,169)
        self.explain_fol.raise_()
        op = QGraphicsOpacityEffect()
        op.setOpacity(0.01)     # 透明度 0~1
        self.explain_fol.setGraphicsEffect(op)


        for i in range(len(self.explain_page)):
            self.explain_page[i].resize(1136,711)
            self.explain_page[i].move(392,245)
            pixmap = QPixmap(self.path+'Image/explain_page%d.png'%(i+1))
            self.explain_page[i].setPixmap(pixmap)
            self.explain_page[i].setScaledContents(True)


    # (顯示) 導航畫面1
    def navigation(self):
        self.all_clear()
        self.page.setText('導航頁面1')        
        self.location_type.setVisible(True)
        self.location_type.setCurrentIndex(0)
        self.location_type.resize(300,60)
        self.location_type.move(250,105)
        self.comment_label1.setText('請選擇地點  Choose one location')
        self.comment_label1.setFont(QFont('Ariel',10*self.font_size))
        self.comment_label1.move(250,65)
        self.comment_label1.resize(200,40)
        self.comment_label1.setVisible(True)
        
        self.map_place_x = 50
        self.map_place_y = 350
        self.mapsize_x = 1800
        self.mapsize_y = 700

        self.showImage_map()
        for n in self.hito:
            n.setVisible(True)
        
        self.home.setVisible(True)
        self.home.setText('返回主畫面\n Home')
        self.home.move(12,12)
        self.home.resize(200,150)

        size_x = 250
        size_y = 50

        for n in self.hito:
            n.resize(size_x,size_y)
        for n in self.cafe:
            n.resize(size_x,size_y)
        for n in self.shop:
            n.resize(size_x,size_y)
        for n in self.toilet:
            n.resize(size_x,size_y)
        for n in self.other:
            n.resize(size_x,size_y)
        
        x = 250
        y = 180
        itv = 400

        for i in range(len(self.hito)):
            self.hito[i].move(x+itv*i,y)
        for i in range(len(self.cafe)):
            self.cafe[i].move(x+itv*i,y)
        for i in range(len(self.shop)):
            self.shop[i].move(x+itv*i,y)
        for i in range(len(self.toilet)):
            self.toilet[i].move(x+itv*i,y)
        for i in range(len(self.other)):
            self.other[i].move(x+itv*i,y)

        for i in range(len(self.score)):
            self.score[i].move(x+size_x+10+itv*(i%4),y+5)
        for i in range(len(self.distn)):
            self.distn[i].move(x+size_x+10+itv*(i%4),y+18)
        for i in range(len(self.extra)):
            self.extra[i].move(x+10+itv*(i%4),y+size_y+7)
        '''
        self.hito[0].setText('麥當勞')
        self.hito[1].setText('廁所')
        self.hito[2].setText('服務台')
        self.hito[3].setText('伴手禮')
        self.cafe[0].setText('摩斯漢堡')
        self.cafe[1].setText('牛肉麵')
        self.cafe[2].setText('麥當勞')
        self.cafe[3].setText('自助餐')
        self.shop[0].setText('美妝')
        self.shop[1].setText('伴手禮')
        self.shop[2].setText('玩具')
        self.shop[3].setText('精品')
        self.toilet[0].setText('廁所東01')
        self.toilet[1].setText('廁所北02')
        self.toilet[2].setText('廁所西03')
        self.toilet[3].setText('廁所南04')
        self.other[0].setText('服務台')
        self.other[1].setText('寄放物品')
        self.other[2].setText('吸菸區')
        self.other[3].setText('哺乳室')
        '''
        self.hito[0].setText('諮詢服務台')
        self.hito[1].setText('哺集乳室')
        self.hito[2].setText('祈禱室')
        self.hito[3].setText('手機充電區')
        self.cafe[0].setText('運動公園')
        self.cafe[1].setText('機場圖書館')
        self.cafe[2].setText('電競體驗區')
        self.cafe[3].setText('兒童遊樂區')
        self.shop[0].setText('樂活離島候機室')
        self.shop[1].setText('希望平溪候機室')
        self.shop[2].setText('阿里山景觀休憩區')
        self.shop[3].setText('空 None')
        self.toilet[0].setText('客家文創園區')
        self.toilet[1].setText('霹靂布袋戲館')
        self.toilet[2].setText('藝文展演空間')
        self.toilet[3].setText('原住民文化園區')
        self.other[0].setText('空 None')
        self.other[1].setText('空 None')
        self.other[2].setText('空 None')
        self.other[3].setText('空 None')
        self.hito[0].setFont(QFont('Ariel',10*self.font_size))

        self.real_loc = []
        self.real_loc.append([1880,550])   #熱門1
        self.real_loc.append([1700,530])   #熱門2
        self.real_loc.append([840,440])   #熱門3        
        self.real_loc.append([1880,550])   #熱門4
        self.real_loc.append([3500,150])   #餐廳1
        self.real_loc.append([3150,420])   #餐廳2
        self.real_loc.append([2600,150])   #餐廳3
        self.real_loc.append([930,150])   #餐廳4
        self.real_loc.append([3150,160])   #購物1
        self.real_loc.append([2500,160])   #購物2
        self.real_loc.append([580,155])   #購物3
        self.real_loc.append([-1,-1])   #購物4
        self.real_loc.append([1680,160])   #廁所1
        self.real_loc.append([1300,160])   #廁所2
        self.real_loc.append([980,420])   #廁所3
        self.real_loc.append([500,250])   #廁所4
        self.real_loc.append([-1,-1])   #其他1
        self.real_loc.append([-1,-1])   #其他2
        self.real_loc.append([-1,-1])   #其他3
        self.real_loc.append([-1,-1])   #其他4

        '''
        self.score[0].setText('Information')
        self.score[1].setText('Breastfeeding Room')
        self.score[2].setText('Prayer Room')
        self.score[3].setText('Mobile Phone Charging Station')
        self.score[4].setText('Sports Park')
        self.score[5].setText('Airport Library')
        self.score[6].setText('e-Sports Experience Center')
        self.score[7].setText('Children Playground')
        self.score[8].setText('LOHAS of outlying Island Waiting Lounge')
        self.score[9].setText('Pingxi the Village of Hope Waiting Lounge')
        self.score[10].setText('Resting Areas/Alisan')
        self.score[11].setText(' ')
        self.score[12].setText('iHakka Creative Park')
        self.score[13].setText('Pili Puppet Legend')
        self.score[14].setText('Art Exhibition / Gallery')
        self.score[15].setText('Taiwan Indigenous Culture Park')
        self.score[16].setText('★★★★☆')
        self.score[17].setText('★★★★☆')
        self.score[18].setText('★★★★☆')
        self.score[19].setText('★★★★☆')
        '''
        for n in self.score:
            n.setFont(QFont('Ariel',10*self.font_size))
        
        
        for i in range(len(self.extra)):
            self.extra[i].setText(self.extra_comment(i)+'\n'+self.measure_distance(i))
            self.extra[i].setFont(QFont('Ariel',10*self.font_size))
        
        for n in self.score[:4]:
            n.setVisible(True)
        for n in self.distn[:4]:
            n.setVisible(True)
        for n in self.extra[:4]:
            n.setVisible(True)

        self.hito[0].clicked.connect(lambda:self.location_choice(0))
        self.hito[1].clicked.connect(lambda:self.location_choice(1))
        self.hito[2].clicked.connect(lambda:self.location_choice(2))
        self.hito[3].clicked.connect(lambda:self.location_choice(3))
        self.cafe[0].clicked.connect(lambda:self.location_choice(4))
        self.cafe[1].clicked.connect(lambda:self.location_choice(5))
        self.cafe[2].clicked.connect(lambda:self.location_choice(6))
        self.cafe[3].clicked.connect(lambda:self.location_choice(7))
        self.shop[0].clicked.connect(lambda:self.location_choice(8))
        self.shop[1].clicked.connect(lambda:self.location_choice(9))
        self.shop[2].clicked.connect(lambda:self.location_choice(10))
        self.shop[3].clicked.connect(lambda:self.location_choice(11))
        self.toilet[0].clicked.connect(lambda:self.location_choice(12))
        self.toilet[1].clicked.connect(lambda:self.location_choice(13))
        self.toilet[2].clicked.connect(lambda:self.location_choice(14))
        self.toilet[3].clicked.connect(lambda:self.location_choice(15))
        self.other[0].clicked.connect(lambda:self.location_choice(16))
        self.other[1].clicked.connect(lambda:self.location_choice(17))
        self.other[2].clicked.connect(lambda:self.location_choice(18))
        self.other[3].clicked.connect(lambda:self.location_choice(19))
        
        self.nav_btn.move(50,1080)
        self.nav_btn.resize(100,80)
        self.nav_btn.setText('放大\n地圖')
        self.nav_btn.setFont(QFont('Ariel',10*self.font_size))
        self.nav_btn.clicked.connect(self.navigation_2)
        

    # (顯示) 導航畫面2
    def navigation_2(self):
        self.all_clear()
        self.page.setText('導航畫面2')        
        self.map_place_x = 60
        self.map_place_y = 200
        self.mapsize_x = 1800
        self.mapsize_y = 724
        self.home.setVisible(True)
        self.home.move(70,1100)
        self.home.resize(200,50)

        self.showImage_map()
        
    # (顯示) 跟隨畫面
    def following(self):
        self.all_clear()
        self.page.setText('跟隨畫面')
        
        pixmap = QPixmap(self.path+'Image/following_warning_0.png')        
        self.follow_warning0.setPixmap(pixmap)
        self.follow_warning0.resize(1359,304)
        self.follow_warning0.move(300,150)
        self.follow_warning0.setScaledContents(True)
        self.follow_warning0.setVisible(True)
        

        pixmap = QPixmap(self.path+'Image/following_warning_4.png')        
        self.follow_warning.setPixmap(pixmap)
        self.follow_warning.resize(1359,304)
        self.follow_warning.move(300,150)
        self.follow_warning.setScaledContents(True)
        
        

        #self.running_icon.setVisible(True)
        self.running_icon.move(400,170)
        
        self.running_icon.resize(260,260)
        self.movie = QMovie(self.path+"Image/processing.gif")
        self.running_icon.setMovie(self.movie)
        
        
        self.showImage(0.5)
        self.follow_on_btn.setVisible(True)
        self.follow_off_btn.setVisible(True)
        self.follow_on_btn.move(75,450)
        self.follow_off_btn.move(950,450)        
        self.follow_on_btn.resize(800,800)
        self.follow_off_btn.resize(800,800)

        op = QGraphicsOpacityEffect()
        op.setOpacity(0.01)     # 透明度 0~1
        self.follow_on_btn.setGraphicsEffect(op)
        op = QGraphicsOpacityEffect()
        op.setOpacity(0.01)     # 透明度 0~1
        self.follow_off_btn.setGraphicsEffect(op)
        self.follow_on_btn.raise_()
        self.follow_off_btn.raise_()

        self.follow_on_icon.setVisible(True)
        self.follow_off_icon.setVisible(True)
        
        pixmap = QPixmap(self.path+'Image/start_icon.png')        
        self.follow_on_icon.setPixmap(pixmap)
        self.follow_on_icon.setScaledContents(True)
        
        pixmap = QPixmap(self.path+'Image/stop_icon.png')        
        self.follow_off_icon.setPixmap(pixmap)
        self.follow_off_icon.setScaledContents(True)

        pixmap = QPixmap(self.path+'Image/start_icon_grey.png')        
        self.follow_on_icon_grey.setPixmap(pixmap)
        self.follow_on_icon_grey.setScaledContents(True)
        
        self.follow_on_icon.move(75,450)
        self.follow_on_icon_grey.move(75,450)
        self.follow_off_icon.move(950,450)
        
        self.follow_on_icon.resize(800,800)
        self.follow_on_icon_grey.resize(800,800)
        self.follow_off_icon.resize(800,800)
        
        self.follow_error_icon.move(300,200)
        self.follow_error_icon.resize(800,600)
        self.movie_err = QMovie(self.path+"Image/anya3.gif")
        self.follow_error_icon.setMovie(self.movie_err)
        self.movie_err.start()
        
        self.follow_soft_icon.move(500,200)
        self.follow_soft_icon.resize(800,600)
        pixmap = QPixmap(self.path+'Image/anya2.png')
        self.follow_soft_icon.setPixmap(pixmap)
        
        self.home.setVisible(True)
        self.home.move(70,70)
        self.home.resize(180,120)
        self.home.setText('返回主畫面\n  Home')
        

    # (顯示) 充電畫面
    def charging(self):
        self.all_clear()
        self.page.setText('充電頁面')        
        self.home.setVisible(True)
        self.charging_text.setVisible(True)
        
        pixmap = QPixmap(self.path+'Image/charging_text.png')        
        self.charging_text.setPixmap(pixmap)
        self.charging_text.resize(1190,317)
        self.charging_text.move(200,150)
        self.charging_text.setScaledContents(True)
        self.home.setText("返回主畫面\n Return to Home")
        self.home.setFont(QFont("Arial",30*self.font_size))
        self.home.move(200,550)
        self.home.resize(1200,500)
        self.shut_button.setVisible(True)
        self.shut_button.move(1600,1000)
        self.shut_button.resize(200,120)
        self.shut_button.setText("關閉程式\n\n請勿點擊\nDon't touch")
        self.shut_button.setFont(QFont("Arial",8*self.font_size))
        self.showImage(0.5)

    # (顯示) 遙控畫面
    def remoting(self):
        self.all_clear()
        self.page.setText('遙控頁面')
        self.home.setVisible(True)
        self.home.move(1525,200)
        self.home.resize(250,200)
        self.shut_button.setVisible(True)
        self.shut_button.setText("關閉程式\n\n請勿點擊\nDon't touch")
        self.shut_button.move(1550,500)
        self.shut_button.resize(200,200)
        
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
        self.speed_label.setVisible(True)
        self.speed_btn.setText('切換速度')
        size = 200
        self.leftfront_btn.resize(size,size)
        self.front_btn.resize(size,size)
        self.rightfront_btn.resize(size,size)
        self.left_btn.resize(size,size)
        self.right_btn.resize(size,size)
        self.leftback_btn.resize(size,size)
        self.back_btn.resize(size,size)
        self.rightback_btn.resize(size,size)
        self.stop_btn.resize(320,150)
        self.speed_btn.resize(320,150)
        
        self.leftfront_btn.move(300,150)
        self.front_btn.move(620,150)
        self.rightfront_btn.move(920,150)
        self.left_btn.move(300,470)
        self.right_btn.move(940,470)
        self.leftback_btn.move(300,790)
        self.back_btn.move(620,790)
        self.rightback_btn.move(920,790)        
        self.stop_btn.move(560,450)        
        self.speed_btn.move(560,450)

        self.multi_speed = 1
        self.speed_label.setText('低速模式')
        self.speed_label.setFont(QFont('Ariel',20*self.font_size))
        self.speed_label.move(650,570)
        self.speed_label.resize(300,150)
        print('Remoting mode running')

    
    # (顯示) 清除所有物件
    def all_clear(self):
        self.option.setVisible(False)
        self.page.setVisible(False)
        self.shut_button.setVisible(False)
        self.idle_btn.setVisible(False)
        self.home.setEnabled(True)
        self.home.setFont(QFont("Arial",12*self.font_size))
        self.showImage_battery(1)
        self.time_label.setStyleSheet("color:black")
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
        self.speed_label.setVisible(False)
        #self.img_idle.setVisible(False)
        #self.img.setVisible(False)
        self.showImage(0.5)
        self.img.lower()
        self.opt_nav.setVisible(False)
        self.opt_fol.setVisible(False)
        self.opt_rmt.setVisible(False)
        self.opt_chg.setVisible(False)
        self.nav_img.setVisible(False)
        self.fol_img.setVisible(False)
        self.rmt_img.setVisible(False)
        self.chg_img.setVisible(False)
        self.explain_img.setVisible(False)
        self.black_img.setVisible(False)
        self.explain_next.setVisible(False)
        for n in self.explain_page:
            n.setVisible(False)        
        self.st_btn.setVisible(False)
        self.start_label.setVisible(False)
        self.explain_nav.setVisible(False)
        self.explain_fol.setVisible(False)
        self.location_type.setVisible(False)
        self.comment_label1.setVisible(False)
        self.map.setVisible(False)
        for n in self.hito:
            n.setVisible(False)
        for n in self.cafe:
            n.setVisible(False)
        for n in self.shop:
            n.setVisible(False)
        for n in self.toilet:
            n.setVisible(False)
        for n in self.other:
            n.setVisible(False)        
        for n in self.score:
            n.setVisible(False)
        for n in self.extra:
            n.setVisible(False)
        for n in self.distn:
            n.setVisible(False)
        self.pin.setVisible(False)
        self.nav_btn.setVisible(False)
        self.follow_on_btn.setVisible(False)
        self.follow_off_btn.setVisible(False)
        self.follow_on_icon.setVisible(False)
        self.follow_off_icon.setVisible(False)
        self.follow_on_icon_grey.setVisible(False)
        self.follow_warning.setVisible(False)
        self.follow_warning0.setVisible(False)
        self.follow_error_icon.setVisible(False)
        self.follow_soft_icon.setVisible(False)
        self.running_icon.setVisible(False)
        self.charging_text.setVisible(False)
    # (顯示) 各式選擇
    def show_type(self,type_ch):
        
        for n in self.hito:
            n.setVisible(False)
        for n in self.cafe:
            n.setVisible(False)
        for n in self.shop:
            n.setVisible(False)        
        for n in self.toilet:
            n.setVisible(False)        
        for n in self.other:
            n.setVisible(False)
        for n in self.score:
            n.setVisible(False)
        for n in self.distn:
            n.setVisible(False)
        for n in self.extra:
            n.setVisible(False)
        for n in self.score[type_ch*4:type_ch*4+4]:
            n.setVisible(True)
        for n in self.distn[type_ch*4:type_ch*4+4]:
            n.setVisible(True)
        for n in self.extra[type_ch*4:type_ch*4+4]:
            n.setVisible(True)
                
        if type_ch == 0:
            for n in self.hito:
                n.setVisible(True)
            
        elif type_ch == 1:
            for n in self.cafe:
                n.setVisible(True)
        elif type_ch == 2:
            for n in self.shop:
                n.setVisible(True)
        elif type_ch == 3:
            for n in self.toilet:
                n.setVisible(True)
        elif type_ch == 4:
            for n in self.other:
                n.setVisible(True)

    # (導航) 選擇導航點
    def location_choice(self,loc):
        self.nav_btn.setVisible(True)
        self.loc_ch = loc
        print("導航至地點",loc,"座標(%d,%d)"%(self.real_loc[loc][0],self.real_loc[loc][1]))
        
        x=int(self.map_place_x + self.real_loc[loc][0] - self.maplocation_x)
        y=int(self.map_place_y + self.real_loc[loc][1] - self.maplocation_y)
        self.pin.move(x,y)
        
        if x >= self.map_place_x and x<= self.map_place_x+self.mapsize_x:
            if y >= self.map_place_y and y<= self.map_place_y+self.mapsize_y:
                self.pin.setVisible(True)
            else:
                self.pin.setVisible(False)
        else:
            self.pin.setVisible(False)
    
    def speed(self):
        if self.multi_speed == 1:
            self.multi_speed = 2
            self.speed_label.setText('中速模式')
            
        elif self.multi_speed == 2:
            self.multi_speed = 2.5
            self.speed_label.setText('高速模式')
        else:
            self.multi_speed = 1
            self.speed_label.setText('低速模式')
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

        print('speed:%s\tturn:%s'%(self.RoV,self.RoW))
        if self.ros_on:
            twist = Twist()
            twist.linear.x = self.RoV
            twist.angular.z = self.RoW
            
            try:
                self.pub.publish(twist)
            except:
                self.ros_on = False
                print("ROS master is offline")
        
    # (圖片) 閒置圖片
    def showImage_idle(self, trp=1):
        pixmap = QPixmap(self.path+'Image/background_image.png')        
        self.img.setPixmap(pixmap)        
        self.img.resize(1920,1200)
        self.img.setScaledContents(True)
        op = QGraphicsOpacityEffect()
        op.setOpacity(trp)     # 透明度 0~1
        self.img.setGraphicsEffect(op)
        self.img.move(0,0)
        self.img.lower()
        self.img.setVisible(True)

    
    # (圖片) 背景圖片
    def showImage(self, trp=1):
        #self.movie = QMovie(self.path+"Image/anya3.gif")
        #self.img.setMovie(self.movie)
        #self.movie.start()
        #pixmap = QPixmap('Image/background.png')
        pixmap = QPixmap(self.path+'Image/background_4.png')
        #pixmap = QPixmap('Image/anya.png')
        self.img.setPixmap(pixmap)        
        self.img.resize(1920,1200)
        self.img.setScaledContents(True)
        op = QGraphicsOpacityEffect()
        op.setOpacity(trp)     # 透明度 0~1
        self.img.setGraphicsEffect(op)
        self.img.move(0,0)
        self.img.lower()
        self.img.setVisible(True)
        
        
    # (圖片) 電池
    def showImage_battery(self, color=1):
        if color == 1:
            pixmap = QPixmap(self.path+'Image/battery_5.png')
        else:
            pixmap = QPixmap(self.path+'Image/battery_5_light.png')
        self.battery.setPixmap(pixmap)
        self.battery.move(1820,5)
        self.battery.resize(85,40)
        self.battery.setScaledContents(True)
        self.battery.raise_()
        self.battery.setVisible(True)

    # (圖片) 地圖
    def showImage_map(self):
        #pixmap = QPixmap(self.path+'Image/sample_map.png')  #(2010,1340)
        pixmap = QPixmap(self.path+'Image/terminal2_map_3_2.png')  #(8192,1549)
        #pixmap = pixmap.scaled(8192, 1548)
        self.imagesize_x = pixmap.width()
        self.imagesize_y = pixmap.height()
        
        pixmap_tmp = pixmap.copy(self.maplocation_x,self.maplocation_y,self.mapsize_x,self.mapsize_y)        
        self.map.setPixmap(pixmap_tmp)
        
        self.map.move(self.map_place_x,self.map_place_y)
        self.map.resize(self.mapsize_x,self.mapsize_y)
        
        #self.map.setScaledContents(True)
        #self.map.lower()
        self.map.setVisible(True)

    # (說明) 顯示跟隨說明
    def explain(self):
        
        if self.page_ex == 0:
            #self.page_ex = 1
            self.explain_next.setVisible(True)
            self.black_img.setVisible(True)
            op = QGraphicsOpacityEffect()
            op.setOpacity(0.5)     # 透明度 0~1            
            self.black_img.setGraphicsEffect(op)
            self.black_img.raise_()
            
            self.explain_page[0].setVisible(True)
            self.explain_page[0].raise_()
        elif self.page_ex == 11:
            self.page_ex = 0
            self.explain_next.setVisible(False)
            self.black_img.setVisible(False)
            self.explain_page[10].setVisible(False)            
            return
        else:
            self.explain_page[self.page_ex-1].setVisible(False)
            self.explain_page[self.page_ex].setVisible(True)
            self.explain_page[self.page_ex].raise_()
        self.page_ex +=1
        op = QGraphicsOpacityEffect()
        op.setOpacity(0.01)     # 透明度 0~1
        self.explain_next.setGraphicsEffect(op)
        self.explain_next.resize(1920,1200)
        self.explain_next.move(0,0)
        self.explain_next.raise_()        
            
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
    # (監聽) 滑鼠
    def show_mouse_press(self, event):
        #print(f'[show_mouse_press] {event.x()} {event.y()}')
        self.start_press = [event.x(),event.y()]

    def show_mouse_release(self, event):
        print('[show_mouse_release] {event.x()} {event.y()}')

    def show_mouse_move(self, event):
        #print(f'[show_mouse_move] {event.x()} {event.y()}')
        #pixmap = QPixmap(self.path+'Image/sample_map.png')
        pixmap = QPixmap(self.path+'Image/terminal2_map_3_2.png')  #(3701,554)
        #pixmap = pixmap.scaled(8192, 1548)
        v = 0.2  #滑動速度
        # 地圖滑動
        self.maplocation_x += (self.start_press[0]-event.x())*v
        if self.maplocation_x <0:
            self.maplocation_x=0
        elif self.maplocation_x > (self.imagesize_x-self.mapsize_x):
            self.maplocation_x=self.imagesize_x-self.mapsize_x
        else:
            self.maplocation_x=int(self.maplocation_x)
        self.maplocation_y += (self.start_press[1]-event.y())*v
        if self.maplocation_y <0:
            self.maplocation_y=0
        elif self.maplocation_y > (self.imagesize_y-self.mapsize_y):
            self.maplocation_y=self.imagesize_y-self.mapsize_y
        else:
            self.maplocation_y=int(self.maplocation_y)
        print('目前地圖最左上的座標',self.maplocation_x,self.maplocation_y)
        pixmap_tmp = pixmap.copy(self.maplocation_x,self.maplocation_y,self.mapsize_x,self.mapsize_y)
        self.map.setPixmap(pixmap_tmp)


        # 指針滑動
        if self.loc_ch >= 0:            
            x=int(self.map_place_x + self.real_loc[self.loc_ch][0] - self.maplocation_x)
            y=int(self.map_place_y + self.real_loc[self.loc_ch][1] - self.maplocation_y)
            self.pin.move(x,y)
            
            if x >= self.map_place_x and x<= self.map_place_x+self.mapsize_x:
                if y >= self.map_place_y and y<= self.map_place_y+self.mapsize_y:
                    self.pin.setVisible(True)
                else:
                    self.pin.setVisible(False)
            else:
                self.pin.setVisible(False)
    # (備註) 導航點備註
    def extra_comment(self,location=0):

        com = ['Information',
                'Breastfeeding Room',
                'Prayer Room',
                'Phone Charging Station',
                'Sports Park\n提供運動器材、免費淋浴間',
                'Airport Library\n多國書籍、上網服務、手機充電',
                'e-Sports Experience Center',
                'Children Playground\n塗鴉白板、LEGO玩具',
                'LOHAS of outlying Island \nWaiting Lounge',
                'Pingxi the Village of Hope \nWaiting Lounge',
                'Resting Areas/Alisan',
                ' ',
                'iHakka Creative Park',
                'Pili Puppet Legend',
                'Art Exhibition / Gallery',
                'Taiwan Indigenous Culture Park',
                ' ',
                ' ',
                ' ',
                ' ']
        return com[location]
    # (運算) 計算到達時間
    def measure_distance(self,location):
        return ''
    
    # (回饋)
    def followering_error(self):
        while True:
            time.sleep(0.125)
            if self.on==True:
                
                if soft() == False:
                    self.follow_soft_icon.setVisible(True)
                else:
                    self.follow_soft_icon.setVisible(False)
                if person_detect() == False:
                    self.follow_error_icon.setVisible(True)
                    print("no person!!")
                else:
                    self.follow_error_icon.setVisible(False)
            else:
                self.follow_error_icon.setVisible(False)
                self.follow_soft_icon.setVisible(False)
        
    
    # (跟隨) 前跟隨模式
    def follow_start(self,on=1):
        onoff(on)
        
        if on == 1:
            self.on = True            
            self.running_icon.setVisible(True)
            self.movie.start()
            self.follow_warning.setVisible(True)
            self.follow_warning0.setVisible(False)
            self.follow_on_btn.setEnabled(False)
            self.follow_on_icon.setVisible(False)
            self.follow_on_icon_grey.setVisible(True)
            self.home.setEnabled(False)            
        else:
            self.on = False
            self.running_icon.setVisible(False)
            self.movie.stop()
            self.follow_warning.setVisible(False)
            self.follow_warning0.setVisible(True)
            self.follow_on_btn.setEnabled(True)
            self.follow_on_icon.setVisible(True)
            self.follow_on_icon_grey.setVisible(False)
            self.follow_error_icon.setVisible(False)
            self.follow_soft_icon.setVisible(False)
            self.home.setEnabled(True)
        if self.follow_flag == False:
            threading._start_new_thread(follower,(self.pub,on))
            threading._start_new_thread(self.followering_error,())
            print("follow ONNNNNNNNNNNNNNNNNNNNNN")
        else:
            #threading.join()
            print("ON in UIIIIII",on)
        
        
        #follower(self.pub,on)
    
if __name__ == '__main__':
    app = QApplication(sys.argv)
    screen = app.primaryScreen()
    w = MyWidget()
    max_x = screen.size().width()                #(1920)  (1280)
    max_y = screen.size().height()                 #(1080)  (800)
    ava_x = screen.availableGeometry().width()     #(1858)  (1280)
    ava_y = screen.availableGeometry().height()    #(996)   (800)
    print(max_x,max_y)
    print(ava_x,ava_y)
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
 
