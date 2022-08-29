; Auto-generated. Do not edit!


(cl:in-package dynamic_tutorials-msg)


;//! \htmlinclude dynCmd.msg.html

(cl:defclass <dynCmd> (roslisp-msg-protocol:ros-message)
  ((cmdType
    :reader cmdType
    :initarg :cmdType
    :type cl:fixnum
    :initform 0)
   (para
    :reader para
    :initarg :para
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass dynCmd (<dynCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <dynCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'dynCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dynamic_tutorials-msg:<dynCmd> is deprecated: use dynamic_tutorials-msg:dynCmd instead.")))

(cl:ensure-generic-function 'cmdType-val :lambda-list '(m))
(cl:defmethod cmdType-val ((m <dynCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamic_tutorials-msg:cmdType-val is deprecated.  Use dynamic_tutorials-msg:cmdType instead.")
  (cmdType m))

(cl:ensure-generic-function 'para-val :lambda-list '(m))
(cl:defmethod para-val ((m <dynCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamic_tutorials-msg:para-val is deprecated.  Use dynamic_tutorials-msg:para instead.")
  (para m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <dynCmd>) ostream)
  "Serializes a message object of type '<dynCmd>"
  (cl:let* ((signed (cl:slot-value msg 'cmdType)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'para))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'para))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <dynCmd>) istream)
  "Deserializes a message object of type '<dynCmd>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmdType) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'para) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'para)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<dynCmd>)))
  "Returns string type for a message object of type '<dynCmd>"
  "dynamic_tutorials/dynCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'dynCmd)))
  "Returns string type for a message object of type 'dynCmd"
  "dynamic_tutorials/dynCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<dynCmd>)))
  "Returns md5sum for a message object of type '<dynCmd>"
  "d3d95f1c672c95f8620a00173f3fc89c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'dynCmd)))
  "Returns md5sum for a message object of type 'dynCmd"
  "d3d95f1c672c95f8620a00173f3fc89c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<dynCmd>)))
  "Returns full string definition for message of type '<dynCmd>"
  (cl:format cl:nil "int8 cmdType~%float32[] para~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'dynCmd)))
  "Returns full string definition for message of type 'dynCmd"
  (cl:format cl:nil "int8 cmdType~%float32[] para~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <dynCmd>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'para) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <dynCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'dynCmd
    (cl:cons ':cmdType (cmdType msg))
    (cl:cons ':para (para msg))
))
