;; Auto-generated. Do not edit!


(when (boundp 'teco_msgs::battery_srv)
  (if (not (find-package "TECO_MSGS"))
    (make-package "TECO_MSGS"))
  (shadow 'battery_srv (find-package "TECO_MSGS")))
(unless (find-package "TECO_MSGS::BATTERY_SRV")
  (make-package "TECO_MSGS::BATTERY_SRV"))
(unless (find-package "TECO_MSGS::BATTERY_SRVREQUEST")
  (make-package "TECO_MSGS::BATTERY_SRVREQUEST"))
(unless (find-package "TECO_MSGS::BATTERY_SRVRESPONSE")
  (make-package "TECO_MSGS::BATTERY_SRVRESPONSE"))

(in-package "ROS")





(defclass teco_msgs::battery_srvRequest
  :super ros::object
  :slots (_input ))

(defmethod teco_msgs::battery_srvRequest
  (:init
   (&key
    ((:input __input) "")
    )
   (send-super :init)
   (setq _input (string __input))
   self)
  (:input
   (&optional __input)
   (if __input (setq _input __input)) _input)
  (:serialization-length
   ()
   (+
    ;; string _input
    4 (length _input)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _input
       (write-long (length _input) s) (princ _input s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _input
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _input (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass teco_msgs::battery_srvResponse
  :super ros::object
  :slots (_PackageVoltage _PackageCurrent _SOHP _SOCP _AHCnow _AHCmax _CurrentSensorValue1 _CurrentSensorValue2 _TemperaturePack _CellTemperature1 _CellTemperature2 _CellTemperature3 _CellTemperature4 _CellTemperature5 _CellTemperature6 _CellTemperature7 _CellVoltage1 _CellVoltage2 _CellVoltage3 _CellVoltage4 _CellVoltage5 _CellVoltage6 _CellVoltage7 _CellSOC1 _CellSOC2 _CellSOC3 _CellSOC4 _CellSOC5 _CellSOC6 _CellSOC7 _CellSOH1 _CellSOH2 _CellSOH3 _CellSOH4 _CellSOH5 _CellSOH6 _CellSOH7 ))

(defmethod teco_msgs::battery_srvResponse
  (:init
   (&key
    ((:PackageVoltage __PackageVoltage) 0.0)
    ((:PackageCurrent __PackageCurrent) 0.0)
    ((:SOHP __SOHP) 0.0)
    ((:SOCP __SOCP) 0.0)
    ((:AHCnow __AHCnow) 0.0)
    ((:AHCmax __AHCmax) 0.0)
    ((:CurrentSensorValue1 __CurrentSensorValue1) 0.0)
    ((:CurrentSensorValue2 __CurrentSensorValue2) 0.0)
    ((:TemperaturePack __TemperaturePack) 0.0)
    ((:CellTemperature1 __CellTemperature1) 0.0)
    ((:CellTemperature2 __CellTemperature2) 0.0)
    ((:CellTemperature3 __CellTemperature3) 0.0)
    ((:CellTemperature4 __CellTemperature4) 0.0)
    ((:CellTemperature5 __CellTemperature5) 0.0)
    ((:CellTemperature6 __CellTemperature6) 0.0)
    ((:CellTemperature7 __CellTemperature7) 0.0)
    ((:CellVoltage1 __CellVoltage1) 0.0)
    ((:CellVoltage2 __CellVoltage2) 0.0)
    ((:CellVoltage3 __CellVoltage3) 0.0)
    ((:CellVoltage4 __CellVoltage4) 0.0)
    ((:CellVoltage5 __CellVoltage5) 0.0)
    ((:CellVoltage6 __CellVoltage6) 0.0)
    ((:CellVoltage7 __CellVoltage7) 0.0)
    ((:CellSOC1 __CellSOC1) 0.0)
    ((:CellSOC2 __CellSOC2) 0.0)
    ((:CellSOC3 __CellSOC3) 0.0)
    ((:CellSOC4 __CellSOC4) 0.0)
    ((:CellSOC5 __CellSOC5) 0.0)
    ((:CellSOC6 __CellSOC6) 0.0)
    ((:CellSOC7 __CellSOC7) 0.0)
    ((:CellSOH1 __CellSOH1) 0.0)
    ((:CellSOH2 __CellSOH2) 0.0)
    ((:CellSOH3 __CellSOH3) 0.0)
    ((:CellSOH4 __CellSOH4) 0.0)
    ((:CellSOH5 __CellSOH5) 0.0)
    ((:CellSOH6 __CellSOH6) 0.0)
    ((:CellSOH7 __CellSOH7) 0.0)
    )
   (send-super :init)
   (setq _PackageVoltage (float __PackageVoltage))
   (setq _PackageCurrent (float __PackageCurrent))
   (setq _SOHP (float __SOHP))
   (setq _SOCP (float __SOCP))
   (setq _AHCnow (float __AHCnow))
   (setq _AHCmax (float __AHCmax))
   (setq _CurrentSensorValue1 (float __CurrentSensorValue1))
   (setq _CurrentSensorValue2 (float __CurrentSensorValue2))
   (setq _TemperaturePack (float __TemperaturePack))
   (setq _CellTemperature1 (float __CellTemperature1))
   (setq _CellTemperature2 (float __CellTemperature2))
   (setq _CellTemperature3 (float __CellTemperature3))
   (setq _CellTemperature4 (float __CellTemperature4))
   (setq _CellTemperature5 (float __CellTemperature5))
   (setq _CellTemperature6 (float __CellTemperature6))
   (setq _CellTemperature7 (float __CellTemperature7))
   (setq _CellVoltage1 (float __CellVoltage1))
   (setq _CellVoltage2 (float __CellVoltage2))
   (setq _CellVoltage3 (float __CellVoltage3))
   (setq _CellVoltage4 (float __CellVoltage4))
   (setq _CellVoltage5 (float __CellVoltage5))
   (setq _CellVoltage6 (float __CellVoltage6))
   (setq _CellVoltage7 (float __CellVoltage7))
   (setq _CellSOC1 (float __CellSOC1))
   (setq _CellSOC2 (float __CellSOC2))
   (setq _CellSOC3 (float __CellSOC3))
   (setq _CellSOC4 (float __CellSOC4))
   (setq _CellSOC5 (float __CellSOC5))
   (setq _CellSOC6 (float __CellSOC6))
   (setq _CellSOC7 (float __CellSOC7))
   (setq _CellSOH1 (float __CellSOH1))
   (setq _CellSOH2 (float __CellSOH2))
   (setq _CellSOH3 (float __CellSOH3))
   (setq _CellSOH4 (float __CellSOH4))
   (setq _CellSOH5 (float __CellSOH5))
   (setq _CellSOH6 (float __CellSOH6))
   (setq _CellSOH7 (float __CellSOH7))
   self)
  (:PackageVoltage
   (&optional __PackageVoltage)
   (if __PackageVoltage (setq _PackageVoltage __PackageVoltage)) _PackageVoltage)
  (:PackageCurrent
   (&optional __PackageCurrent)
   (if __PackageCurrent (setq _PackageCurrent __PackageCurrent)) _PackageCurrent)
  (:SOHP
   (&optional __SOHP)
   (if __SOHP (setq _SOHP __SOHP)) _SOHP)
  (:SOCP
   (&optional __SOCP)
   (if __SOCP (setq _SOCP __SOCP)) _SOCP)
  (:AHCnow
   (&optional __AHCnow)
   (if __AHCnow (setq _AHCnow __AHCnow)) _AHCnow)
  (:AHCmax
   (&optional __AHCmax)
   (if __AHCmax (setq _AHCmax __AHCmax)) _AHCmax)
  (:CurrentSensorValue1
   (&optional __CurrentSensorValue1)
   (if __CurrentSensorValue1 (setq _CurrentSensorValue1 __CurrentSensorValue1)) _CurrentSensorValue1)
  (:CurrentSensorValue2
   (&optional __CurrentSensorValue2)
   (if __CurrentSensorValue2 (setq _CurrentSensorValue2 __CurrentSensorValue2)) _CurrentSensorValue2)
  (:TemperaturePack
   (&optional __TemperaturePack)
   (if __TemperaturePack (setq _TemperaturePack __TemperaturePack)) _TemperaturePack)
  (:CellTemperature1
   (&optional __CellTemperature1)
   (if __CellTemperature1 (setq _CellTemperature1 __CellTemperature1)) _CellTemperature1)
  (:CellTemperature2
   (&optional __CellTemperature2)
   (if __CellTemperature2 (setq _CellTemperature2 __CellTemperature2)) _CellTemperature2)
  (:CellTemperature3
   (&optional __CellTemperature3)
   (if __CellTemperature3 (setq _CellTemperature3 __CellTemperature3)) _CellTemperature3)
  (:CellTemperature4
   (&optional __CellTemperature4)
   (if __CellTemperature4 (setq _CellTemperature4 __CellTemperature4)) _CellTemperature4)
  (:CellTemperature5
   (&optional __CellTemperature5)
   (if __CellTemperature5 (setq _CellTemperature5 __CellTemperature5)) _CellTemperature5)
  (:CellTemperature6
   (&optional __CellTemperature6)
   (if __CellTemperature6 (setq _CellTemperature6 __CellTemperature6)) _CellTemperature6)
  (:CellTemperature7
   (&optional __CellTemperature7)
   (if __CellTemperature7 (setq _CellTemperature7 __CellTemperature7)) _CellTemperature7)
  (:CellVoltage1
   (&optional __CellVoltage1)
   (if __CellVoltage1 (setq _CellVoltage1 __CellVoltage1)) _CellVoltage1)
  (:CellVoltage2
   (&optional __CellVoltage2)
   (if __CellVoltage2 (setq _CellVoltage2 __CellVoltage2)) _CellVoltage2)
  (:CellVoltage3
   (&optional __CellVoltage3)
   (if __CellVoltage3 (setq _CellVoltage3 __CellVoltage3)) _CellVoltage3)
  (:CellVoltage4
   (&optional __CellVoltage4)
   (if __CellVoltage4 (setq _CellVoltage4 __CellVoltage4)) _CellVoltage4)
  (:CellVoltage5
   (&optional __CellVoltage5)
   (if __CellVoltage5 (setq _CellVoltage5 __CellVoltage5)) _CellVoltage5)
  (:CellVoltage6
   (&optional __CellVoltage6)
   (if __CellVoltage6 (setq _CellVoltage6 __CellVoltage6)) _CellVoltage6)
  (:CellVoltage7
   (&optional __CellVoltage7)
   (if __CellVoltage7 (setq _CellVoltage7 __CellVoltage7)) _CellVoltage7)
  (:CellSOC1
   (&optional __CellSOC1)
   (if __CellSOC1 (setq _CellSOC1 __CellSOC1)) _CellSOC1)
  (:CellSOC2
   (&optional __CellSOC2)
   (if __CellSOC2 (setq _CellSOC2 __CellSOC2)) _CellSOC2)
  (:CellSOC3
   (&optional __CellSOC3)
   (if __CellSOC3 (setq _CellSOC3 __CellSOC3)) _CellSOC3)
  (:CellSOC4
   (&optional __CellSOC4)
   (if __CellSOC4 (setq _CellSOC4 __CellSOC4)) _CellSOC4)
  (:CellSOC5
   (&optional __CellSOC5)
   (if __CellSOC5 (setq _CellSOC5 __CellSOC5)) _CellSOC5)
  (:CellSOC6
   (&optional __CellSOC6)
   (if __CellSOC6 (setq _CellSOC6 __CellSOC6)) _CellSOC6)
  (:CellSOC7
   (&optional __CellSOC7)
   (if __CellSOC7 (setq _CellSOC7 __CellSOC7)) _CellSOC7)
  (:CellSOH1
   (&optional __CellSOH1)
   (if __CellSOH1 (setq _CellSOH1 __CellSOH1)) _CellSOH1)
  (:CellSOH2
   (&optional __CellSOH2)
   (if __CellSOH2 (setq _CellSOH2 __CellSOH2)) _CellSOH2)
  (:CellSOH3
   (&optional __CellSOH3)
   (if __CellSOH3 (setq _CellSOH3 __CellSOH3)) _CellSOH3)
  (:CellSOH4
   (&optional __CellSOH4)
   (if __CellSOH4 (setq _CellSOH4 __CellSOH4)) _CellSOH4)
  (:CellSOH5
   (&optional __CellSOH5)
   (if __CellSOH5 (setq _CellSOH5 __CellSOH5)) _CellSOH5)
  (:CellSOH6
   (&optional __CellSOH6)
   (if __CellSOH6 (setq _CellSOH6 __CellSOH6)) _CellSOH6)
  (:CellSOH7
   (&optional __CellSOH7)
   (if __CellSOH7 (setq _CellSOH7 __CellSOH7)) _CellSOH7)
  (:serialization-length
   ()
   (+
    ;; float32 _PackageVoltage
    4
    ;; float32 _PackageCurrent
    4
    ;; float32 _SOHP
    4
    ;; float32 _SOCP
    4
    ;; float32 _AHCnow
    4
    ;; float32 _AHCmax
    4
    ;; float32 _CurrentSensorValue1
    4
    ;; float32 _CurrentSensorValue2
    4
    ;; float32 _TemperaturePack
    4
    ;; float32 _CellTemperature1
    4
    ;; float32 _CellTemperature2
    4
    ;; float32 _CellTemperature3
    4
    ;; float32 _CellTemperature4
    4
    ;; float32 _CellTemperature5
    4
    ;; float32 _CellTemperature6
    4
    ;; float32 _CellTemperature7
    4
    ;; float32 _CellVoltage1
    4
    ;; float32 _CellVoltage2
    4
    ;; float32 _CellVoltage3
    4
    ;; float32 _CellVoltage4
    4
    ;; float32 _CellVoltage5
    4
    ;; float32 _CellVoltage6
    4
    ;; float32 _CellVoltage7
    4
    ;; float32 _CellSOC1
    4
    ;; float32 _CellSOC2
    4
    ;; float32 _CellSOC3
    4
    ;; float32 _CellSOC4
    4
    ;; float32 _CellSOC5
    4
    ;; float32 _CellSOC6
    4
    ;; float32 _CellSOC7
    4
    ;; float32 _CellSOH1
    4
    ;; float32 _CellSOH2
    4
    ;; float32 _CellSOH3
    4
    ;; float32 _CellSOH4
    4
    ;; float32 _CellSOH5
    4
    ;; float32 _CellSOH6
    4
    ;; float32 _CellSOH7
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _PackageVoltage
       (sys::poke _PackageVoltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _PackageCurrent
       (sys::poke _PackageCurrent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _SOHP
       (sys::poke _SOHP (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _SOCP
       (sys::poke _SOCP (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _AHCnow
       (sys::poke _AHCnow (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _AHCmax
       (sys::poke _AHCmax (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CurrentSensorValue1
       (sys::poke _CurrentSensorValue1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CurrentSensorValue2
       (sys::poke _CurrentSensorValue2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _TemperaturePack
       (sys::poke _TemperaturePack (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CellTemperature1
       (sys::poke _CellTemperature1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CellTemperature2
       (sys::poke _CellTemperature2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CellTemperature3
       (sys::poke _CellTemperature3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CellTemperature4
       (sys::poke _CellTemperature4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CellTemperature5
       (sys::poke _CellTemperature5 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CellTemperature6
       (sys::poke _CellTemperature6 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CellTemperature7
       (sys::poke _CellTemperature7 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CellVoltage1
       (sys::poke _CellVoltage1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CellVoltage2
       (sys::poke _CellVoltage2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CellVoltage3
       (sys::poke _CellVoltage3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CellVoltage4
       (sys::poke _CellVoltage4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CellVoltage5
       (sys::poke _CellVoltage5 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CellVoltage6
       (sys::poke _CellVoltage6 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CellVoltage7
       (sys::poke _CellVoltage7 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CellSOC1
       (sys::poke _CellSOC1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CellSOC2
       (sys::poke _CellSOC2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CellSOC3
       (sys::poke _CellSOC3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CellSOC4
       (sys::poke _CellSOC4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CellSOC5
       (sys::poke _CellSOC5 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CellSOC6
       (sys::poke _CellSOC6 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CellSOC7
       (sys::poke _CellSOC7 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CellSOH1
       (sys::poke _CellSOH1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CellSOH2
       (sys::poke _CellSOH2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CellSOH3
       (sys::poke _CellSOH3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CellSOH4
       (sys::poke _CellSOH4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CellSOH5
       (sys::poke _CellSOH5 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CellSOH6
       (sys::poke _CellSOH6 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CellSOH7
       (sys::poke _CellSOH7 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _PackageVoltage
     (setq _PackageVoltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _PackageCurrent
     (setq _PackageCurrent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _SOHP
     (setq _SOHP (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _SOCP
     (setq _SOCP (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _AHCnow
     (setq _AHCnow (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _AHCmax
     (setq _AHCmax (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CurrentSensorValue1
     (setq _CurrentSensorValue1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CurrentSensorValue2
     (setq _CurrentSensorValue2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _TemperaturePack
     (setq _TemperaturePack (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CellTemperature1
     (setq _CellTemperature1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CellTemperature2
     (setq _CellTemperature2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CellTemperature3
     (setq _CellTemperature3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CellTemperature4
     (setq _CellTemperature4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CellTemperature5
     (setq _CellTemperature5 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CellTemperature6
     (setq _CellTemperature6 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CellTemperature7
     (setq _CellTemperature7 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CellVoltage1
     (setq _CellVoltage1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CellVoltage2
     (setq _CellVoltage2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CellVoltage3
     (setq _CellVoltage3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CellVoltage4
     (setq _CellVoltage4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CellVoltage5
     (setq _CellVoltage5 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CellVoltage6
     (setq _CellVoltage6 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CellVoltage7
     (setq _CellVoltage7 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CellSOC1
     (setq _CellSOC1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CellSOC2
     (setq _CellSOC2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CellSOC3
     (setq _CellSOC3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CellSOC4
     (setq _CellSOC4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CellSOC5
     (setq _CellSOC5 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CellSOC6
     (setq _CellSOC6 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CellSOC7
     (setq _CellSOC7 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CellSOH1
     (setq _CellSOH1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CellSOH2
     (setq _CellSOH2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CellSOH3
     (setq _CellSOH3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CellSOH4
     (setq _CellSOH4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CellSOH5
     (setq _CellSOH5 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CellSOH6
     (setq _CellSOH6 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CellSOH7
     (setq _CellSOH7 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass teco_msgs::battery_srv
  :super ros::object
  :slots ())

(setf (get teco_msgs::battery_srv :md5sum-) "c8b59f64747d119147a5ffdefffd3858")
(setf (get teco_msgs::battery_srv :datatype-) "teco_msgs/battery_srv")
(setf (get teco_msgs::battery_srv :request) teco_msgs::battery_srvRequest)
(setf (get teco_msgs::battery_srv :response) teco_msgs::battery_srvResponse)

(defmethod teco_msgs::battery_srvRequest
  (:response () (instance teco_msgs::battery_srvResponse :init)))

(setf (get teco_msgs::battery_srvRequest :md5sum-) "c8b59f64747d119147a5ffdefffd3858")
(setf (get teco_msgs::battery_srvRequest :datatype-) "teco_msgs/battery_srvRequest")
(setf (get teco_msgs::battery_srvRequest :definition-)
      "string input
---
float32 PackageVoltage
float32 PackageCurrent

float32 SOHP
float32 SOCP
float32 AHCnow
float32 AHCmax

float32 CurrentSensorValue1
float32 CurrentSensorValue2

float32 TemperaturePack

float32 CellTemperature1
float32 CellTemperature2
float32 CellTemperature3
float32 CellTemperature4

float32 CellTemperature5
float32 CellTemperature6
float32 CellTemperature7

float32 CellVoltage1
float32 CellVoltage2
float32 CellVoltage3
float32 CellVoltage4

float32 CellVoltage5
float32 CellVoltage6
float32 CellVoltage7

float32 CellSOC1
float32 CellSOC2
float32 CellSOC3
float32 CellSOC4

float32 CellSOC5
float32 CellSOC6
float32 CellSOC7

float32 CellSOH1
float32 CellSOH2
float32 CellSOH3
float32 CellSOH4

float32 CellSOH5
float32 CellSOH6
float32 CellSOH7

")

(setf (get teco_msgs::battery_srvResponse :md5sum-) "c8b59f64747d119147a5ffdefffd3858")
(setf (get teco_msgs::battery_srvResponse :datatype-) "teco_msgs/battery_srvResponse")
(setf (get teco_msgs::battery_srvResponse :definition-)
      "string input
---
float32 PackageVoltage
float32 PackageCurrent

float32 SOHP
float32 SOCP
float32 AHCnow
float32 AHCmax

float32 CurrentSensorValue1
float32 CurrentSensorValue2

float32 TemperaturePack

float32 CellTemperature1
float32 CellTemperature2
float32 CellTemperature3
float32 CellTemperature4

float32 CellTemperature5
float32 CellTemperature6
float32 CellTemperature7

float32 CellVoltage1
float32 CellVoltage2
float32 CellVoltage3
float32 CellVoltage4

float32 CellVoltage5
float32 CellVoltage6
float32 CellVoltage7

float32 CellSOC1
float32 CellSOC2
float32 CellSOC3
float32 CellSOC4

float32 CellSOC5
float32 CellSOC6
float32 CellSOC7

float32 CellSOH1
float32 CellSOH2
float32 CellSOH3
float32 CellSOH4

float32 CellSOH5
float32 CellSOH6
float32 CellSOH7

")



(provide :teco_msgs/battery_srv "c8b59f64747d119147a5ffdefffd3858")


