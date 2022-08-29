; Auto-generated. Do not edit!


(cl:in-package teco_msgs-msg)


;//! \htmlinclude alarm_msgs.msg.html

(cl:defclass <alarm_msgs> (roslisp-msg-protocol:ros-message)
  ((AlarmCode
    :reader AlarmCode
    :initarg :AlarmCode
    :type cl:integer
    :initform 0))
)

(cl:defclass alarm_msgs (<alarm_msgs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <alarm_msgs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'alarm_msgs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name teco_msgs-msg:<alarm_msgs> is deprecated: use teco_msgs-msg:alarm_msgs instead.")))

(cl:ensure-generic-function 'AlarmCode-val :lambda-list '(m))
(cl:defmethod AlarmCode-val ((m <alarm_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-msg:AlarmCode-val is deprecated.  Use teco_msgs-msg:AlarmCode instead.")
  (AlarmCode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<alarm_msgs>)))
    "Constants for message type '<alarm_msgs>"
  '((:HARDWARE_ERROR . 0)
    (:CPU_LOAD_ERROR . 100)
    (:MEMORY_ERROR . 200)
    (:ETHERNET_ERROR . 300)
    (:HDD_ERROR . 400)
    (:BATTERY_ERROR . 500)
    (:IMU_ERROR . 600)
    (:MOTOR_ERROR . 700)
    (:LASER_ERROR . 800)
    (:CAMERA_ERROR . 900)
    (:SAFETY_SYSTEM_ERROR . 1000)
    (:HOOK_ERROR . 5000)
    (:HOOK_CAMERA_ERROR . 5100)
    (:HOOK_ACTUATOR_ERROR . 5200)
    (:HOOK_BRAKE_ERROR . 5300)
    (:HOOK_ENCODER_ERROR . 5400)
    (:MISSING_ERROR . 9000)
    (:SOFTWARE_ERROR . 10000)
    (:MISSION_ERROR . 10100)
    (:LOCALIZATION_ERROR . 10200)
    (:MAPPING_ERROR . 10300)
    (:ODOM_FUSION_ERROR . 10400))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'alarm_msgs)))
    "Constants for message type 'alarm_msgs"
  '((:HARDWARE_ERROR . 0)
    (:CPU_LOAD_ERROR . 100)
    (:MEMORY_ERROR . 200)
    (:ETHERNET_ERROR . 300)
    (:HDD_ERROR . 400)
    (:BATTERY_ERROR . 500)
    (:IMU_ERROR . 600)
    (:MOTOR_ERROR . 700)
    (:LASER_ERROR . 800)
    (:CAMERA_ERROR . 900)
    (:SAFETY_SYSTEM_ERROR . 1000)
    (:HOOK_ERROR . 5000)
    (:HOOK_CAMERA_ERROR . 5100)
    (:HOOK_ACTUATOR_ERROR . 5200)
    (:HOOK_BRAKE_ERROR . 5300)
    (:HOOK_ENCODER_ERROR . 5400)
    (:MISSING_ERROR . 9000)
    (:SOFTWARE_ERROR . 10000)
    (:MISSION_ERROR . 10100)
    (:LOCALIZATION_ERROR . 10200)
    (:MAPPING_ERROR . 10300)
    (:ODOM_FUSION_ERROR . 10400))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <alarm_msgs>) ostream)
  "Serializes a message object of type '<alarm_msgs>"
  (cl:let* ((signed (cl:slot-value msg 'AlarmCode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <alarm_msgs>) istream)
  "Deserializes a message object of type '<alarm_msgs>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'AlarmCode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<alarm_msgs>)))
  "Returns string type for a message object of type '<alarm_msgs>"
  "teco_msgs/alarm_msgs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'alarm_msgs)))
  "Returns string type for a message object of type 'alarm_msgs"
  "teco_msgs/alarm_msgs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<alarm_msgs>)))
  "Returns md5sum for a message object of type '<alarm_msgs>"
  "884ae1ac9e2728856a940ceceb8d7c1b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'alarm_msgs)))
  "Returns md5sum for a message object of type 'alarm_msgs"
  "884ae1ac9e2728856a940ceceb8d7c1b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<alarm_msgs>)))
  "Returns full string definition for message of type '<alarm_msgs>"
  (cl:format cl:nil "# Definition of offsets indicating what type an error is~%int32 HARDWARE_ERROR = 0~%int32 CPU_LOAD_ERROR = 100~%int32 MEMORY_ERROR = 200~%int32 ETHERNET_ERROR = 300~%int32 HDD_ERROR = 400~%int32 BATTERY_ERROR = 500~%int32 IMU_ERROR = 600~%int32 MOTOR_ERROR = 700~%int32 LASER_ERROR = 800~%int32 CAMERA_ERROR = 900~%int32 SAFETY_SYSTEM_ERROR = 1000~%int32 HOOK_ERROR = 5000~%int32 HOOK_CAMERA_ERROR = 5100~%int32 HOOK_ACTUATOR_ERROR = 5200~%int32 HOOK_BRAKE_ERROR = 5300~%int32 HOOK_ENCODER_ERROR = 5400~%int32 MISSING_ERROR = 9000~%int32 SOFTWARE_ERROR = 10000~%int32 MISSION_ERROR = 10100~%int32 LOCALIZATION_ERROR = 10200~%int32 MAPPING_ERROR = 10300~%int32 ODOM_FUSION_ERROR = 10400~%~%int32 AlarmCode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'alarm_msgs)))
  "Returns full string definition for message of type 'alarm_msgs"
  (cl:format cl:nil "# Definition of offsets indicating what type an error is~%int32 HARDWARE_ERROR = 0~%int32 CPU_LOAD_ERROR = 100~%int32 MEMORY_ERROR = 200~%int32 ETHERNET_ERROR = 300~%int32 HDD_ERROR = 400~%int32 BATTERY_ERROR = 500~%int32 IMU_ERROR = 600~%int32 MOTOR_ERROR = 700~%int32 LASER_ERROR = 800~%int32 CAMERA_ERROR = 900~%int32 SAFETY_SYSTEM_ERROR = 1000~%int32 HOOK_ERROR = 5000~%int32 HOOK_CAMERA_ERROR = 5100~%int32 HOOK_ACTUATOR_ERROR = 5200~%int32 HOOK_BRAKE_ERROR = 5300~%int32 HOOK_ENCODER_ERROR = 5400~%int32 MISSING_ERROR = 9000~%int32 SOFTWARE_ERROR = 10000~%int32 MISSION_ERROR = 10100~%int32 LOCALIZATION_ERROR = 10200~%int32 MAPPING_ERROR = 10300~%int32 ODOM_FUSION_ERROR = 10400~%~%int32 AlarmCode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <alarm_msgs>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <alarm_msgs>))
  "Converts a ROS message object to a list"
  (cl:list 'alarm_msgs
    (cl:cons ':AlarmCode (AlarmCode msg))
))
