; Auto-generated. Do not edit!


(cl:in-package my_dynparam_service-srv)


;//! \htmlinclude set_dynparam_service-request.msg.html

(cl:defclass <set_dynparam_service-request> (roslisp-msg-protocol:ros-message)
  ((input
    :reader input
    :initarg :input
    :type cl:string
    :initform ""))
)

(cl:defclass set_dynparam_service-request (<set_dynparam_service-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_dynparam_service-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_dynparam_service-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_dynparam_service-srv:<set_dynparam_service-request> is deprecated: use my_dynparam_service-srv:set_dynparam_service-request instead.")))

(cl:ensure-generic-function 'input-val :lambda-list '(m))
(cl:defmethod input-val ((m <set_dynparam_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_dynparam_service-srv:input-val is deprecated.  Use my_dynparam_service-srv:input instead.")
  (input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_dynparam_service-request>) ostream)
  "Serializes a message object of type '<set_dynparam_service-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'input))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'input))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_dynparam_service-request>) istream)
  "Deserializes a message object of type '<set_dynparam_service-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_dynparam_service-request>)))
  "Returns string type for a service object of type '<set_dynparam_service-request>"
  "my_dynparam_service/set_dynparam_serviceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_dynparam_service-request)))
  "Returns string type for a service object of type 'set_dynparam_service-request"
  "my_dynparam_service/set_dynparam_serviceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_dynparam_service-request>)))
  "Returns md5sum for a message object of type '<set_dynparam_service-request>"
  "c63e85f503b805d84df783e71c6bb0d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_dynparam_service-request)))
  "Returns md5sum for a message object of type 'set_dynparam_service-request"
  "c63e85f503b805d84df783e71c6bb0d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_dynparam_service-request>)))
  "Returns full string definition for message of type '<set_dynparam_service-request>"
  (cl:format cl:nil "string input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_dynparam_service-request)))
  "Returns full string definition for message of type 'set_dynparam_service-request"
  (cl:format cl:nil "string input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_dynparam_service-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'input))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_dynparam_service-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_dynparam_service-request
    (cl:cons ':input (input msg))
))
;//! \htmlinclude set_dynparam_service-response.msg.html

(cl:defclass <set_dynparam_service-response> (roslisp-msg-protocol:ros-message)
  ((output
    :reader output
    :initarg :output
    :type cl:string
    :initform ""))
)

(cl:defclass set_dynparam_service-response (<set_dynparam_service-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_dynparam_service-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_dynparam_service-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_dynparam_service-srv:<set_dynparam_service-response> is deprecated: use my_dynparam_service-srv:set_dynparam_service-response instead.")))

(cl:ensure-generic-function 'output-val :lambda-list '(m))
(cl:defmethod output-val ((m <set_dynparam_service-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_dynparam_service-srv:output-val is deprecated.  Use my_dynparam_service-srv:output instead.")
  (output m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_dynparam_service-response>) ostream)
  "Serializes a message object of type '<set_dynparam_service-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'output))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'output))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_dynparam_service-response>) istream)
  "Deserializes a message object of type '<set_dynparam_service-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'output) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'output) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_dynparam_service-response>)))
  "Returns string type for a service object of type '<set_dynparam_service-response>"
  "my_dynparam_service/set_dynparam_serviceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_dynparam_service-response)))
  "Returns string type for a service object of type 'set_dynparam_service-response"
  "my_dynparam_service/set_dynparam_serviceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_dynparam_service-response>)))
  "Returns md5sum for a message object of type '<set_dynparam_service-response>"
  "c63e85f503b805d84df783e71c6bb0d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_dynparam_service-response)))
  "Returns md5sum for a message object of type 'set_dynparam_service-response"
  "c63e85f503b805d84df783e71c6bb0d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_dynparam_service-response>)))
  "Returns full string definition for message of type '<set_dynparam_service-response>"
  (cl:format cl:nil "string output~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_dynparam_service-response)))
  "Returns full string definition for message of type 'set_dynparam_service-response"
  (cl:format cl:nil "string output~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_dynparam_service-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'output))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_dynparam_service-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_dynparam_service-response
    (cl:cons ':output (output msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_dynparam_service)))
  'set_dynparam_service-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_dynparam_service)))
  'set_dynparam_service-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_dynparam_service)))
  "Returns string type for a service object of type '<set_dynparam_service>"
  "my_dynparam_service/set_dynparam_service")