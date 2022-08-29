; Auto-generated. Do not edit!


(cl:in-package my_action_actionlib-msg)


;//! \htmlinclude actionCmd.msg.html

(cl:defclass <actionCmd> (roslisp-msg-protocol:ros-message)
  ((cmdType
    :reader cmdType
    :initarg :cmdType
    :type cl:fixnum
    :initform 0)
   (scriptName
    :reader scriptName
    :initarg :scriptName
    :type cl:string
    :initform "")
   (startLine
    :reader startLine
    :initarg :startLine
    :type cl:fixnum
    :initform 0))
)

(cl:defclass actionCmd (<actionCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <actionCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'actionCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_action_actionlib-msg:<actionCmd> is deprecated: use my_action_actionlib-msg:actionCmd instead.")))

(cl:ensure-generic-function 'cmdType-val :lambda-list '(m))
(cl:defmethod cmdType-val ((m <actionCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_action_actionlib-msg:cmdType-val is deprecated.  Use my_action_actionlib-msg:cmdType instead.")
  (cmdType m))

(cl:ensure-generic-function 'scriptName-val :lambda-list '(m))
(cl:defmethod scriptName-val ((m <actionCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_action_actionlib-msg:scriptName-val is deprecated.  Use my_action_actionlib-msg:scriptName instead.")
  (scriptName m))

(cl:ensure-generic-function 'startLine-val :lambda-list '(m))
(cl:defmethod startLine-val ((m <actionCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_action_actionlib-msg:startLine-val is deprecated.  Use my_action_actionlib-msg:startLine instead.")
  (startLine m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <actionCmd>) ostream)
  "Serializes a message object of type '<actionCmd>"
  (cl:let* ((signed (cl:slot-value msg 'cmdType)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'scriptName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'scriptName))
  (cl:let* ((signed (cl:slot-value msg 'startLine)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <actionCmd>) istream)
  "Deserializes a message object of type '<actionCmd>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmdType) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'scriptName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'scriptName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'startLine) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<actionCmd>)))
  "Returns string type for a message object of type '<actionCmd>"
  "my_action_actionlib/actionCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'actionCmd)))
  "Returns string type for a message object of type 'actionCmd"
  "my_action_actionlib/actionCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<actionCmd>)))
  "Returns md5sum for a message object of type '<actionCmd>"
  "5648d904ae74995e135ff9a25b104b2a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'actionCmd)))
  "Returns md5sum for a message object of type 'actionCmd"
  "5648d904ae74995e135ff9a25b104b2a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<actionCmd>)))
  "Returns full string definition for message of type '<actionCmd>"
  (cl:format cl:nil "int8 cmdType~%string scriptName~%int8 startLine~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'actionCmd)))
  "Returns full string definition for message of type 'actionCmd"
  (cl:format cl:nil "int8 cmdType~%string scriptName~%int8 startLine~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <actionCmd>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'scriptName))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <actionCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'actionCmd
    (cl:cons ':cmdType (cmdType msg))
    (cl:cons ':scriptName (scriptName msg))
    (cl:cons ':startLine (startLine msg))
))
