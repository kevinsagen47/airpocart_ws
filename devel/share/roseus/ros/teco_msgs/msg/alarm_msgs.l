;; Auto-generated. Do not edit!


(when (boundp 'teco_msgs::alarm_msgs)
  (if (not (find-package "TECO_MSGS"))
    (make-package "TECO_MSGS"))
  (shadow 'alarm_msgs (find-package "TECO_MSGS")))
(unless (find-package "TECO_MSGS::ALARM_MSGS")
  (make-package "TECO_MSGS::ALARM_MSGS"))

(in-package "ROS")
;;//! \htmlinclude alarm_msgs.msg.html


(intern "*HARDWARE_ERROR*" (find-package "TECO_MSGS::ALARM_MSGS"))
(shadow '*HARDWARE_ERROR* (find-package "TECO_MSGS::ALARM_MSGS"))
(defconstant teco_msgs::alarm_msgs::*HARDWARE_ERROR* 0)
(intern "*CPU_LOAD_ERROR*" (find-package "TECO_MSGS::ALARM_MSGS"))
(shadow '*CPU_LOAD_ERROR* (find-package "TECO_MSGS::ALARM_MSGS"))
(defconstant teco_msgs::alarm_msgs::*CPU_LOAD_ERROR* 100)
(intern "*MEMORY_ERROR*" (find-package "TECO_MSGS::ALARM_MSGS"))
(shadow '*MEMORY_ERROR* (find-package "TECO_MSGS::ALARM_MSGS"))
(defconstant teco_msgs::alarm_msgs::*MEMORY_ERROR* 200)
(intern "*ETHERNET_ERROR*" (find-package "TECO_MSGS::ALARM_MSGS"))
(shadow '*ETHERNET_ERROR* (find-package "TECO_MSGS::ALARM_MSGS"))
(defconstant teco_msgs::alarm_msgs::*ETHERNET_ERROR* 300)
(intern "*HDD_ERROR*" (find-package "TECO_MSGS::ALARM_MSGS"))
(shadow '*HDD_ERROR* (find-package "TECO_MSGS::ALARM_MSGS"))
(defconstant teco_msgs::alarm_msgs::*HDD_ERROR* 400)
(intern "*BATTERY_ERROR*" (find-package "TECO_MSGS::ALARM_MSGS"))
(shadow '*BATTERY_ERROR* (find-package "TECO_MSGS::ALARM_MSGS"))
(defconstant teco_msgs::alarm_msgs::*BATTERY_ERROR* 500)
(intern "*IMU_ERROR*" (find-package "TECO_MSGS::ALARM_MSGS"))
(shadow '*IMU_ERROR* (find-package "TECO_MSGS::ALARM_MSGS"))
(defconstant teco_msgs::alarm_msgs::*IMU_ERROR* 600)
(intern "*MOTOR_ERROR*" (find-package "TECO_MSGS::ALARM_MSGS"))
(shadow '*MOTOR_ERROR* (find-package "TECO_MSGS::ALARM_MSGS"))
(defconstant teco_msgs::alarm_msgs::*MOTOR_ERROR* 700)
(intern "*LASER_ERROR*" (find-package "TECO_MSGS::ALARM_MSGS"))
(shadow '*LASER_ERROR* (find-package "TECO_MSGS::ALARM_MSGS"))
(defconstant teco_msgs::alarm_msgs::*LASER_ERROR* 800)
(intern "*CAMERA_ERROR*" (find-package "TECO_MSGS::ALARM_MSGS"))
(shadow '*CAMERA_ERROR* (find-package "TECO_MSGS::ALARM_MSGS"))
(defconstant teco_msgs::alarm_msgs::*CAMERA_ERROR* 900)
(intern "*SAFETY_SYSTEM_ERROR*" (find-package "TECO_MSGS::ALARM_MSGS"))
(shadow '*SAFETY_SYSTEM_ERROR* (find-package "TECO_MSGS::ALARM_MSGS"))
(defconstant teco_msgs::alarm_msgs::*SAFETY_SYSTEM_ERROR* 1000)
(intern "*HOOK_ERROR*" (find-package "TECO_MSGS::ALARM_MSGS"))
(shadow '*HOOK_ERROR* (find-package "TECO_MSGS::ALARM_MSGS"))
(defconstant teco_msgs::alarm_msgs::*HOOK_ERROR* 5000)
(intern "*HOOK_CAMERA_ERROR*" (find-package "TECO_MSGS::ALARM_MSGS"))
(shadow '*HOOK_CAMERA_ERROR* (find-package "TECO_MSGS::ALARM_MSGS"))
(defconstant teco_msgs::alarm_msgs::*HOOK_CAMERA_ERROR* 5100)
(intern "*HOOK_ACTUATOR_ERROR*" (find-package "TECO_MSGS::ALARM_MSGS"))
(shadow '*HOOK_ACTUATOR_ERROR* (find-package "TECO_MSGS::ALARM_MSGS"))
(defconstant teco_msgs::alarm_msgs::*HOOK_ACTUATOR_ERROR* 5200)
(intern "*HOOK_BRAKE_ERROR*" (find-package "TECO_MSGS::ALARM_MSGS"))
(shadow '*HOOK_BRAKE_ERROR* (find-package "TECO_MSGS::ALARM_MSGS"))
(defconstant teco_msgs::alarm_msgs::*HOOK_BRAKE_ERROR* 5300)
(intern "*HOOK_ENCODER_ERROR*" (find-package "TECO_MSGS::ALARM_MSGS"))
(shadow '*HOOK_ENCODER_ERROR* (find-package "TECO_MSGS::ALARM_MSGS"))
(defconstant teco_msgs::alarm_msgs::*HOOK_ENCODER_ERROR* 5400)
(intern "*MISSING_ERROR*" (find-package "TECO_MSGS::ALARM_MSGS"))
(shadow '*MISSING_ERROR* (find-package "TECO_MSGS::ALARM_MSGS"))
(defconstant teco_msgs::alarm_msgs::*MISSING_ERROR* 9000)
(intern "*SOFTWARE_ERROR*" (find-package "TECO_MSGS::ALARM_MSGS"))
(shadow '*SOFTWARE_ERROR* (find-package "TECO_MSGS::ALARM_MSGS"))
(defconstant teco_msgs::alarm_msgs::*SOFTWARE_ERROR* 10000)
(intern "*MISSION_ERROR*" (find-package "TECO_MSGS::ALARM_MSGS"))
(shadow '*MISSION_ERROR* (find-package "TECO_MSGS::ALARM_MSGS"))
(defconstant teco_msgs::alarm_msgs::*MISSION_ERROR* 10100)
(intern "*LOCALIZATION_ERROR*" (find-package "TECO_MSGS::ALARM_MSGS"))
(shadow '*LOCALIZATION_ERROR* (find-package "TECO_MSGS::ALARM_MSGS"))
(defconstant teco_msgs::alarm_msgs::*LOCALIZATION_ERROR* 10200)
(intern "*MAPPING_ERROR*" (find-package "TECO_MSGS::ALARM_MSGS"))
(shadow '*MAPPING_ERROR* (find-package "TECO_MSGS::ALARM_MSGS"))
(defconstant teco_msgs::alarm_msgs::*MAPPING_ERROR* 10300)
(intern "*ODOM_FUSION_ERROR*" (find-package "TECO_MSGS::ALARM_MSGS"))
(shadow '*ODOM_FUSION_ERROR* (find-package "TECO_MSGS::ALARM_MSGS"))
(defconstant teco_msgs::alarm_msgs::*ODOM_FUSION_ERROR* 10400)
(defclass teco_msgs::alarm_msgs
  :super ros::object
  :slots (_AlarmCode ))

(defmethod teco_msgs::alarm_msgs
  (:init
   (&key
    ((:AlarmCode __AlarmCode) 0)
    )
   (send-super :init)
   (setq _AlarmCode (round __AlarmCode))
   self)
  (:AlarmCode
   (&optional __AlarmCode)
   (if __AlarmCode (setq _AlarmCode __AlarmCode)) _AlarmCode)
  (:serialization-length
   ()
   (+
    ;; int32 _AlarmCode
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _AlarmCode
       (write-long _AlarmCode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _AlarmCode
     (setq _AlarmCode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get teco_msgs::alarm_msgs :md5sum-) "884ae1ac9e2728856a940ceceb8d7c1b")
(setf (get teco_msgs::alarm_msgs :datatype-) "teco_msgs/alarm_msgs")
(setf (get teco_msgs::alarm_msgs :definition-)
      "# Definition of offsets indicating what type an error is
int32 HARDWARE_ERROR = 0
int32 CPU_LOAD_ERROR = 100
int32 MEMORY_ERROR = 200
int32 ETHERNET_ERROR = 300
int32 HDD_ERROR = 400
int32 BATTERY_ERROR = 500
int32 IMU_ERROR = 600
int32 MOTOR_ERROR = 700
int32 LASER_ERROR = 800
int32 CAMERA_ERROR = 900
int32 SAFETY_SYSTEM_ERROR = 1000
int32 HOOK_ERROR = 5000
int32 HOOK_CAMERA_ERROR = 5100
int32 HOOK_ACTUATOR_ERROR = 5200
int32 HOOK_BRAKE_ERROR = 5300
int32 HOOK_ENCODER_ERROR = 5400
int32 MISSING_ERROR = 9000
int32 SOFTWARE_ERROR = 10000
int32 MISSION_ERROR = 10100
int32 LOCALIZATION_ERROR = 10200
int32 MAPPING_ERROR = 10300
int32 ODOM_FUSION_ERROR = 10400

int32 AlarmCode

")



(provide :teco_msgs/alarm_msgs "884ae1ac9e2728856a940ceceb8d7c1b")


