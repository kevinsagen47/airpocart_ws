; Auto-generated. Do not edit!


(cl:in-package teco_msgs-srv)


;//! \htmlinclude battery_srv-request.msg.html

(cl:defclass <battery_srv-request> (roslisp-msg-protocol:ros-message)
  ((input
    :reader input
    :initarg :input
    :type cl:string
    :initform ""))
)

(cl:defclass battery_srv-request (<battery_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <battery_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'battery_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name teco_msgs-srv:<battery_srv-request> is deprecated: use teco_msgs-srv:battery_srv-request instead.")))

(cl:ensure-generic-function 'input-val :lambda-list '(m))
(cl:defmethod input-val ((m <battery_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:input-val is deprecated.  Use teco_msgs-srv:input instead.")
  (input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <battery_srv-request>) ostream)
  "Serializes a message object of type '<battery_srv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'input))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'input))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <battery_srv-request>) istream)
  "Deserializes a message object of type '<battery_srv-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'input) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'input) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<battery_srv-request>)))
  "Returns string type for a service object of type '<battery_srv-request>"
  "teco_msgs/battery_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'battery_srv-request)))
  "Returns string type for a service object of type 'battery_srv-request"
  "teco_msgs/battery_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<battery_srv-request>)))
  "Returns md5sum for a message object of type '<battery_srv-request>"
  "c8b59f64747d119147a5ffdefffd3858")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'battery_srv-request)))
  "Returns md5sum for a message object of type 'battery_srv-request"
  "c8b59f64747d119147a5ffdefffd3858")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<battery_srv-request>)))
  "Returns full string definition for message of type '<battery_srv-request>"
  (cl:format cl:nil "string input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'battery_srv-request)))
  "Returns full string definition for message of type 'battery_srv-request"
  (cl:format cl:nil "string input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <battery_srv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'input))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <battery_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'battery_srv-request
    (cl:cons ':input (input msg))
))
;//! \htmlinclude battery_srv-response.msg.html

(cl:defclass <battery_srv-response> (roslisp-msg-protocol:ros-message)
  ((PackageVoltage
    :reader PackageVoltage
    :initarg :PackageVoltage
    :type cl:float
    :initform 0.0)
   (PackageCurrent
    :reader PackageCurrent
    :initarg :PackageCurrent
    :type cl:float
    :initform 0.0)
   (SOHP
    :reader SOHP
    :initarg :SOHP
    :type cl:float
    :initform 0.0)
   (SOCP
    :reader SOCP
    :initarg :SOCP
    :type cl:float
    :initform 0.0)
   (AHCnow
    :reader AHCnow
    :initarg :AHCnow
    :type cl:float
    :initform 0.0)
   (AHCmax
    :reader AHCmax
    :initarg :AHCmax
    :type cl:float
    :initform 0.0)
   (CurrentSensorValue1
    :reader CurrentSensorValue1
    :initarg :CurrentSensorValue1
    :type cl:float
    :initform 0.0)
   (CurrentSensorValue2
    :reader CurrentSensorValue2
    :initarg :CurrentSensorValue2
    :type cl:float
    :initform 0.0)
   (TemperaturePack
    :reader TemperaturePack
    :initarg :TemperaturePack
    :type cl:float
    :initform 0.0)
   (CellTemperature1
    :reader CellTemperature1
    :initarg :CellTemperature1
    :type cl:float
    :initform 0.0)
   (CellTemperature2
    :reader CellTemperature2
    :initarg :CellTemperature2
    :type cl:float
    :initform 0.0)
   (CellTemperature3
    :reader CellTemperature3
    :initarg :CellTemperature3
    :type cl:float
    :initform 0.0)
   (CellTemperature4
    :reader CellTemperature4
    :initarg :CellTemperature4
    :type cl:float
    :initform 0.0)
   (CellTemperature5
    :reader CellTemperature5
    :initarg :CellTemperature5
    :type cl:float
    :initform 0.0)
   (CellTemperature6
    :reader CellTemperature6
    :initarg :CellTemperature6
    :type cl:float
    :initform 0.0)
   (CellTemperature7
    :reader CellTemperature7
    :initarg :CellTemperature7
    :type cl:float
    :initform 0.0)
   (CellVoltage1
    :reader CellVoltage1
    :initarg :CellVoltage1
    :type cl:float
    :initform 0.0)
   (CellVoltage2
    :reader CellVoltage2
    :initarg :CellVoltage2
    :type cl:float
    :initform 0.0)
   (CellVoltage3
    :reader CellVoltage3
    :initarg :CellVoltage3
    :type cl:float
    :initform 0.0)
   (CellVoltage4
    :reader CellVoltage4
    :initarg :CellVoltage4
    :type cl:float
    :initform 0.0)
   (CellVoltage5
    :reader CellVoltage5
    :initarg :CellVoltage5
    :type cl:float
    :initform 0.0)
   (CellVoltage6
    :reader CellVoltage6
    :initarg :CellVoltage6
    :type cl:float
    :initform 0.0)
   (CellVoltage7
    :reader CellVoltage7
    :initarg :CellVoltage7
    :type cl:float
    :initform 0.0)
   (CellSOC1
    :reader CellSOC1
    :initarg :CellSOC1
    :type cl:float
    :initform 0.0)
   (CellSOC2
    :reader CellSOC2
    :initarg :CellSOC2
    :type cl:float
    :initform 0.0)
   (CellSOC3
    :reader CellSOC3
    :initarg :CellSOC3
    :type cl:float
    :initform 0.0)
   (CellSOC4
    :reader CellSOC4
    :initarg :CellSOC4
    :type cl:float
    :initform 0.0)
   (CellSOC5
    :reader CellSOC5
    :initarg :CellSOC5
    :type cl:float
    :initform 0.0)
   (CellSOC6
    :reader CellSOC6
    :initarg :CellSOC6
    :type cl:float
    :initform 0.0)
   (CellSOC7
    :reader CellSOC7
    :initarg :CellSOC7
    :type cl:float
    :initform 0.0)
   (CellSOH1
    :reader CellSOH1
    :initarg :CellSOH1
    :type cl:float
    :initform 0.0)
   (CellSOH2
    :reader CellSOH2
    :initarg :CellSOH2
    :type cl:float
    :initform 0.0)
   (CellSOH3
    :reader CellSOH3
    :initarg :CellSOH3
    :type cl:float
    :initform 0.0)
   (CellSOH4
    :reader CellSOH4
    :initarg :CellSOH4
    :type cl:float
    :initform 0.0)
   (CellSOH5
    :reader CellSOH5
    :initarg :CellSOH5
    :type cl:float
    :initform 0.0)
   (CellSOH6
    :reader CellSOH6
    :initarg :CellSOH6
    :type cl:float
    :initform 0.0)
   (CellSOH7
    :reader CellSOH7
    :initarg :CellSOH7
    :type cl:float
    :initform 0.0))
)

(cl:defclass battery_srv-response (<battery_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <battery_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'battery_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name teco_msgs-srv:<battery_srv-response> is deprecated: use teco_msgs-srv:battery_srv-response instead.")))

(cl:ensure-generic-function 'PackageVoltage-val :lambda-list '(m))
(cl:defmethod PackageVoltage-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:PackageVoltage-val is deprecated.  Use teco_msgs-srv:PackageVoltage instead.")
  (PackageVoltage m))

(cl:ensure-generic-function 'PackageCurrent-val :lambda-list '(m))
(cl:defmethod PackageCurrent-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:PackageCurrent-val is deprecated.  Use teco_msgs-srv:PackageCurrent instead.")
  (PackageCurrent m))

(cl:ensure-generic-function 'SOHP-val :lambda-list '(m))
(cl:defmethod SOHP-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:SOHP-val is deprecated.  Use teco_msgs-srv:SOHP instead.")
  (SOHP m))

(cl:ensure-generic-function 'SOCP-val :lambda-list '(m))
(cl:defmethod SOCP-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:SOCP-val is deprecated.  Use teco_msgs-srv:SOCP instead.")
  (SOCP m))

(cl:ensure-generic-function 'AHCnow-val :lambda-list '(m))
(cl:defmethod AHCnow-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:AHCnow-val is deprecated.  Use teco_msgs-srv:AHCnow instead.")
  (AHCnow m))

(cl:ensure-generic-function 'AHCmax-val :lambda-list '(m))
(cl:defmethod AHCmax-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:AHCmax-val is deprecated.  Use teco_msgs-srv:AHCmax instead.")
  (AHCmax m))

(cl:ensure-generic-function 'CurrentSensorValue1-val :lambda-list '(m))
(cl:defmethod CurrentSensorValue1-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:CurrentSensorValue1-val is deprecated.  Use teco_msgs-srv:CurrentSensorValue1 instead.")
  (CurrentSensorValue1 m))

(cl:ensure-generic-function 'CurrentSensorValue2-val :lambda-list '(m))
(cl:defmethod CurrentSensorValue2-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:CurrentSensorValue2-val is deprecated.  Use teco_msgs-srv:CurrentSensorValue2 instead.")
  (CurrentSensorValue2 m))

(cl:ensure-generic-function 'TemperaturePack-val :lambda-list '(m))
(cl:defmethod TemperaturePack-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:TemperaturePack-val is deprecated.  Use teco_msgs-srv:TemperaturePack instead.")
  (TemperaturePack m))

(cl:ensure-generic-function 'CellTemperature1-val :lambda-list '(m))
(cl:defmethod CellTemperature1-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:CellTemperature1-val is deprecated.  Use teco_msgs-srv:CellTemperature1 instead.")
  (CellTemperature1 m))

(cl:ensure-generic-function 'CellTemperature2-val :lambda-list '(m))
(cl:defmethod CellTemperature2-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:CellTemperature2-val is deprecated.  Use teco_msgs-srv:CellTemperature2 instead.")
  (CellTemperature2 m))

(cl:ensure-generic-function 'CellTemperature3-val :lambda-list '(m))
(cl:defmethod CellTemperature3-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:CellTemperature3-val is deprecated.  Use teco_msgs-srv:CellTemperature3 instead.")
  (CellTemperature3 m))

(cl:ensure-generic-function 'CellTemperature4-val :lambda-list '(m))
(cl:defmethod CellTemperature4-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:CellTemperature4-val is deprecated.  Use teco_msgs-srv:CellTemperature4 instead.")
  (CellTemperature4 m))

(cl:ensure-generic-function 'CellTemperature5-val :lambda-list '(m))
(cl:defmethod CellTemperature5-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:CellTemperature5-val is deprecated.  Use teco_msgs-srv:CellTemperature5 instead.")
  (CellTemperature5 m))

(cl:ensure-generic-function 'CellTemperature6-val :lambda-list '(m))
(cl:defmethod CellTemperature6-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:CellTemperature6-val is deprecated.  Use teco_msgs-srv:CellTemperature6 instead.")
  (CellTemperature6 m))

(cl:ensure-generic-function 'CellTemperature7-val :lambda-list '(m))
(cl:defmethod CellTemperature7-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:CellTemperature7-val is deprecated.  Use teco_msgs-srv:CellTemperature7 instead.")
  (CellTemperature7 m))

(cl:ensure-generic-function 'CellVoltage1-val :lambda-list '(m))
(cl:defmethod CellVoltage1-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:CellVoltage1-val is deprecated.  Use teco_msgs-srv:CellVoltage1 instead.")
  (CellVoltage1 m))

(cl:ensure-generic-function 'CellVoltage2-val :lambda-list '(m))
(cl:defmethod CellVoltage2-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:CellVoltage2-val is deprecated.  Use teco_msgs-srv:CellVoltage2 instead.")
  (CellVoltage2 m))

(cl:ensure-generic-function 'CellVoltage3-val :lambda-list '(m))
(cl:defmethod CellVoltage3-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:CellVoltage3-val is deprecated.  Use teco_msgs-srv:CellVoltage3 instead.")
  (CellVoltage3 m))

(cl:ensure-generic-function 'CellVoltage4-val :lambda-list '(m))
(cl:defmethod CellVoltage4-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:CellVoltage4-val is deprecated.  Use teco_msgs-srv:CellVoltage4 instead.")
  (CellVoltage4 m))

(cl:ensure-generic-function 'CellVoltage5-val :lambda-list '(m))
(cl:defmethod CellVoltage5-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:CellVoltage5-val is deprecated.  Use teco_msgs-srv:CellVoltage5 instead.")
  (CellVoltage5 m))

(cl:ensure-generic-function 'CellVoltage6-val :lambda-list '(m))
(cl:defmethod CellVoltage6-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:CellVoltage6-val is deprecated.  Use teco_msgs-srv:CellVoltage6 instead.")
  (CellVoltage6 m))

(cl:ensure-generic-function 'CellVoltage7-val :lambda-list '(m))
(cl:defmethod CellVoltage7-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:CellVoltage7-val is deprecated.  Use teco_msgs-srv:CellVoltage7 instead.")
  (CellVoltage7 m))

(cl:ensure-generic-function 'CellSOC1-val :lambda-list '(m))
(cl:defmethod CellSOC1-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:CellSOC1-val is deprecated.  Use teco_msgs-srv:CellSOC1 instead.")
  (CellSOC1 m))

(cl:ensure-generic-function 'CellSOC2-val :lambda-list '(m))
(cl:defmethod CellSOC2-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:CellSOC2-val is deprecated.  Use teco_msgs-srv:CellSOC2 instead.")
  (CellSOC2 m))

(cl:ensure-generic-function 'CellSOC3-val :lambda-list '(m))
(cl:defmethod CellSOC3-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:CellSOC3-val is deprecated.  Use teco_msgs-srv:CellSOC3 instead.")
  (CellSOC3 m))

(cl:ensure-generic-function 'CellSOC4-val :lambda-list '(m))
(cl:defmethod CellSOC4-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:CellSOC4-val is deprecated.  Use teco_msgs-srv:CellSOC4 instead.")
  (CellSOC4 m))

(cl:ensure-generic-function 'CellSOC5-val :lambda-list '(m))
(cl:defmethod CellSOC5-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:CellSOC5-val is deprecated.  Use teco_msgs-srv:CellSOC5 instead.")
  (CellSOC5 m))

(cl:ensure-generic-function 'CellSOC6-val :lambda-list '(m))
(cl:defmethod CellSOC6-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:CellSOC6-val is deprecated.  Use teco_msgs-srv:CellSOC6 instead.")
  (CellSOC6 m))

(cl:ensure-generic-function 'CellSOC7-val :lambda-list '(m))
(cl:defmethod CellSOC7-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:CellSOC7-val is deprecated.  Use teco_msgs-srv:CellSOC7 instead.")
  (CellSOC7 m))

(cl:ensure-generic-function 'CellSOH1-val :lambda-list '(m))
(cl:defmethod CellSOH1-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:CellSOH1-val is deprecated.  Use teco_msgs-srv:CellSOH1 instead.")
  (CellSOH1 m))

(cl:ensure-generic-function 'CellSOH2-val :lambda-list '(m))
(cl:defmethod CellSOH2-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:CellSOH2-val is deprecated.  Use teco_msgs-srv:CellSOH2 instead.")
  (CellSOH2 m))

(cl:ensure-generic-function 'CellSOH3-val :lambda-list '(m))
(cl:defmethod CellSOH3-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:CellSOH3-val is deprecated.  Use teco_msgs-srv:CellSOH3 instead.")
  (CellSOH3 m))

(cl:ensure-generic-function 'CellSOH4-val :lambda-list '(m))
(cl:defmethod CellSOH4-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:CellSOH4-val is deprecated.  Use teco_msgs-srv:CellSOH4 instead.")
  (CellSOH4 m))

(cl:ensure-generic-function 'CellSOH5-val :lambda-list '(m))
(cl:defmethod CellSOH5-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:CellSOH5-val is deprecated.  Use teco_msgs-srv:CellSOH5 instead.")
  (CellSOH5 m))

(cl:ensure-generic-function 'CellSOH6-val :lambda-list '(m))
(cl:defmethod CellSOH6-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:CellSOH6-val is deprecated.  Use teco_msgs-srv:CellSOH6 instead.")
  (CellSOH6 m))

(cl:ensure-generic-function 'CellSOH7-val :lambda-list '(m))
(cl:defmethod CellSOH7-val ((m <battery_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teco_msgs-srv:CellSOH7-val is deprecated.  Use teco_msgs-srv:CellSOH7 instead.")
  (CellSOH7 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <battery_srv-response>) ostream)
  "Serializes a message object of type '<battery_srv-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'PackageVoltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'PackageCurrent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'SOHP))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'SOCP))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'AHCnow))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'AHCmax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CurrentSensorValue1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CurrentSensorValue2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'TemperaturePack))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CellTemperature1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CellTemperature2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CellTemperature3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CellTemperature4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CellTemperature5))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CellTemperature6))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CellTemperature7))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CellVoltage1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CellVoltage2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CellVoltage3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CellVoltage4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CellVoltage5))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CellVoltage6))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CellVoltage7))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CellSOC1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CellSOC2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CellSOC3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CellSOC4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CellSOC5))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CellSOC6))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CellSOC7))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CellSOH1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CellSOH2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CellSOH3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CellSOH4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CellSOH5))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CellSOH6))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CellSOH7))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <battery_srv-response>) istream)
  "Deserializes a message object of type '<battery_srv-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'PackageVoltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'PackageCurrent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'SOHP) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'SOCP) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'AHCnow) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'AHCmax) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CurrentSensorValue1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CurrentSensorValue2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'TemperaturePack) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CellTemperature1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CellTemperature2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CellTemperature3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CellTemperature4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CellTemperature5) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CellTemperature6) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CellTemperature7) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CellVoltage1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CellVoltage2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CellVoltage3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CellVoltage4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CellVoltage5) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CellVoltage6) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CellVoltage7) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CellSOC1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CellSOC2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CellSOC3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CellSOC4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CellSOC5) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CellSOC6) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CellSOC7) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CellSOH1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CellSOH2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CellSOH3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CellSOH4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CellSOH5) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CellSOH6) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CellSOH7) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<battery_srv-response>)))
  "Returns string type for a service object of type '<battery_srv-response>"
  "teco_msgs/battery_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'battery_srv-response)))
  "Returns string type for a service object of type 'battery_srv-response"
  "teco_msgs/battery_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<battery_srv-response>)))
  "Returns md5sum for a message object of type '<battery_srv-response>"
  "c8b59f64747d119147a5ffdefffd3858")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'battery_srv-response)))
  "Returns md5sum for a message object of type 'battery_srv-response"
  "c8b59f64747d119147a5ffdefffd3858")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<battery_srv-response>)))
  "Returns full string definition for message of type '<battery_srv-response>"
  (cl:format cl:nil "float32 PackageVoltage~%float32 PackageCurrent~%~%float32 SOHP~%float32 SOCP~%float32 AHCnow~%float32 AHCmax~%~%float32 CurrentSensorValue1~%float32 CurrentSensorValue2~%~%float32 TemperaturePack~%~%float32 CellTemperature1~%float32 CellTemperature2~%float32 CellTemperature3~%float32 CellTemperature4~%~%float32 CellTemperature5~%float32 CellTemperature6~%float32 CellTemperature7~%~%float32 CellVoltage1~%float32 CellVoltage2~%float32 CellVoltage3~%float32 CellVoltage4~%~%float32 CellVoltage5~%float32 CellVoltage6~%float32 CellVoltage7~%~%float32 CellSOC1~%float32 CellSOC2~%float32 CellSOC3~%float32 CellSOC4~%~%float32 CellSOC5~%float32 CellSOC6~%float32 CellSOC7~%~%float32 CellSOH1~%float32 CellSOH2~%float32 CellSOH3~%float32 CellSOH4~%~%float32 CellSOH5~%float32 CellSOH6~%float32 CellSOH7~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'battery_srv-response)))
  "Returns full string definition for message of type 'battery_srv-response"
  (cl:format cl:nil "float32 PackageVoltage~%float32 PackageCurrent~%~%float32 SOHP~%float32 SOCP~%float32 AHCnow~%float32 AHCmax~%~%float32 CurrentSensorValue1~%float32 CurrentSensorValue2~%~%float32 TemperaturePack~%~%float32 CellTemperature1~%float32 CellTemperature2~%float32 CellTemperature3~%float32 CellTemperature4~%~%float32 CellTemperature5~%float32 CellTemperature6~%float32 CellTemperature7~%~%float32 CellVoltage1~%float32 CellVoltage2~%float32 CellVoltage3~%float32 CellVoltage4~%~%float32 CellVoltage5~%float32 CellVoltage6~%float32 CellVoltage7~%~%float32 CellSOC1~%float32 CellSOC2~%float32 CellSOC3~%float32 CellSOC4~%~%float32 CellSOC5~%float32 CellSOC6~%float32 CellSOC7~%~%float32 CellSOH1~%float32 CellSOH2~%float32 CellSOH3~%float32 CellSOH4~%~%float32 CellSOH5~%float32 CellSOH6~%float32 CellSOH7~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <battery_srv-response>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <battery_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'battery_srv-response
    (cl:cons ':PackageVoltage (PackageVoltage msg))
    (cl:cons ':PackageCurrent (PackageCurrent msg))
    (cl:cons ':SOHP (SOHP msg))
    (cl:cons ':SOCP (SOCP msg))
    (cl:cons ':AHCnow (AHCnow msg))
    (cl:cons ':AHCmax (AHCmax msg))
    (cl:cons ':CurrentSensorValue1 (CurrentSensorValue1 msg))
    (cl:cons ':CurrentSensorValue2 (CurrentSensorValue2 msg))
    (cl:cons ':TemperaturePack (TemperaturePack msg))
    (cl:cons ':CellTemperature1 (CellTemperature1 msg))
    (cl:cons ':CellTemperature2 (CellTemperature2 msg))
    (cl:cons ':CellTemperature3 (CellTemperature3 msg))
    (cl:cons ':CellTemperature4 (CellTemperature4 msg))
    (cl:cons ':CellTemperature5 (CellTemperature5 msg))
    (cl:cons ':CellTemperature6 (CellTemperature6 msg))
    (cl:cons ':CellTemperature7 (CellTemperature7 msg))
    (cl:cons ':CellVoltage1 (CellVoltage1 msg))
    (cl:cons ':CellVoltage2 (CellVoltage2 msg))
    (cl:cons ':CellVoltage3 (CellVoltage3 msg))
    (cl:cons ':CellVoltage4 (CellVoltage4 msg))
    (cl:cons ':CellVoltage5 (CellVoltage5 msg))
    (cl:cons ':CellVoltage6 (CellVoltage6 msg))
    (cl:cons ':CellVoltage7 (CellVoltage7 msg))
    (cl:cons ':CellSOC1 (CellSOC1 msg))
    (cl:cons ':CellSOC2 (CellSOC2 msg))
    (cl:cons ':CellSOC3 (CellSOC3 msg))
    (cl:cons ':CellSOC4 (CellSOC4 msg))
    (cl:cons ':CellSOC5 (CellSOC5 msg))
    (cl:cons ':CellSOC6 (CellSOC6 msg))
    (cl:cons ':CellSOC7 (CellSOC7 msg))
    (cl:cons ':CellSOH1 (CellSOH1 msg))
    (cl:cons ':CellSOH2 (CellSOH2 msg))
    (cl:cons ':CellSOH3 (CellSOH3 msg))
    (cl:cons ':CellSOH4 (CellSOH4 msg))
    (cl:cons ':CellSOH5 (CellSOH5 msg))
    (cl:cons ':CellSOH6 (CellSOH6 msg))
    (cl:cons ':CellSOH7 (CellSOH7 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'battery_srv)))
  'battery_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'battery_srv)))
  'battery_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'battery_srv)))
  "Returns string type for a service object of type '<battery_srv>"
  "teco_msgs/battery_srv")