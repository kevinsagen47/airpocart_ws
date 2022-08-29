; Auto-generated. Do not edit!


(cl:in-package my_action_actionlib-msg)


;//! \htmlinclude feedbackMsg.msg.html

(cl:defclass <feedbackMsg> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:string
    :initform "")
   (currentIndex
    :reader currentIndex
    :initarg :currentIndex
    :type cl:fixnum
    :initform 0))
)

(cl:defclass feedbackMsg (<feedbackMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <feedbackMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'feedbackMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_action_actionlib-msg:<feedbackMsg> is deprecated: use my_action_actionlib-msg:feedbackMsg instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <feedbackMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_action_actionlib-msg:action-val is deprecated.  Use my_action_actionlib-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'currentIndex-val :lambda-list '(m))
(cl:defmethod currentIndex-val ((m <feedbackMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_action_actionlib-msg:currentIndex-val is deprecated.  Use my_action_actionlib-msg:currentIndex instead.")
  (currentIndex m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <feedbackMsg>) ostream)
  "Serializes a message object of type '<feedbackMsg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action))
  (cl:let* ((signed (cl:slot-value msg 'currentIndex)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <feedbackMsg>) istream)
  "Deserializes a message object of type '<feedbackMsg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'currentIndex) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<feedbackMsg>)))
  "Returns string type for a message object of type '<feedbackMsg>"
  "my_action_actionlib/feedbackMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'feedbackMsg)))
  "Returns string type for a message object of type 'feedbackMsg"
  "my_action_actionlib/feedbackMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<feedbackMsg>)))
  "Returns md5sum for a message object of type '<feedbackMsg>"
  "71787da51c21b713ad07f51cd9d1e7eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'feedbackMsg)))
  "Returns md5sum for a message object of type 'feedbackMsg"
  "71787da51c21b713ad07f51cd9d1e7eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<feedbackMsg>)))
  "Returns full string definition for message of type '<feedbackMsg>"
  (cl:format cl:nil "string action~%int8 currentIndex~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'feedbackMsg)))
  "Returns full string definition for message of type 'feedbackMsg"
  (cl:format cl:nil "string action~%int8 currentIndex~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <feedbackMsg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'action))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <feedbackMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'feedbackMsg
    (cl:cons ':action (action msg))
    (cl:cons ':currentIndex (currentIndex msg))
))
