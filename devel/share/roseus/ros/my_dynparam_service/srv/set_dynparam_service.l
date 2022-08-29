;; Auto-generated. Do not edit!


(when (boundp 'my_dynparam_service::set_dynparam_service)
  (if (not (find-package "MY_DYNPARAM_SERVICE"))
    (make-package "MY_DYNPARAM_SERVICE"))
  (shadow 'set_dynparam_service (find-package "MY_DYNPARAM_SERVICE")))
(unless (find-package "MY_DYNPARAM_SERVICE::SET_DYNPARAM_SERVICE")
  (make-package "MY_DYNPARAM_SERVICE::SET_DYNPARAM_SERVICE"))
(unless (find-package "MY_DYNPARAM_SERVICE::SET_DYNPARAM_SERVICEREQUEST")
  (make-package "MY_DYNPARAM_SERVICE::SET_DYNPARAM_SERVICEREQUEST"))
(unless (find-package "MY_DYNPARAM_SERVICE::SET_DYNPARAM_SERVICERESPONSE")
  (make-package "MY_DYNPARAM_SERVICE::SET_DYNPARAM_SERVICERESPONSE"))

(in-package "ROS")





(defclass my_dynparam_service::set_dynparam_serviceRequest
  :super ros::object
  :slots (_input ))

(defmethod my_dynparam_service::set_dynparam_serviceRequest
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

(defclass my_dynparam_service::set_dynparam_serviceResponse
  :super ros::object
  :slots (_output ))

(defmethod my_dynparam_service::set_dynparam_serviceResponse
  (:init
   (&key
    ((:output __output) "")
    )
   (send-super :init)
   (setq _output (string __output))
   self)
  (:output
   (&optional __output)
   (if __output (setq _output __output)) _output)
  (:serialization-length
   ()
   (+
    ;; string _output
    4 (length _output)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _output
       (write-long (length _output) s) (princ _output s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _output
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _output (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass my_dynparam_service::set_dynparam_service
  :super ros::object
  :slots ())

(setf (get my_dynparam_service::set_dynparam_service :md5sum-) "c63e85f503b805d84df783e71c6bb0d2")
(setf (get my_dynparam_service::set_dynparam_service :datatype-) "my_dynparam_service/set_dynparam_service")
(setf (get my_dynparam_service::set_dynparam_service :request) my_dynparam_service::set_dynparam_serviceRequest)
(setf (get my_dynparam_service::set_dynparam_service :response) my_dynparam_service::set_dynparam_serviceResponse)

(defmethod my_dynparam_service::set_dynparam_serviceRequest
  (:response () (instance my_dynparam_service::set_dynparam_serviceResponse :init)))

(setf (get my_dynparam_service::set_dynparam_serviceRequest :md5sum-) "c63e85f503b805d84df783e71c6bb0d2")
(setf (get my_dynparam_service::set_dynparam_serviceRequest :datatype-) "my_dynparam_service/set_dynparam_serviceRequest")
(setf (get my_dynparam_service::set_dynparam_serviceRequest :definition-)
      "string input
---
string output

")

(setf (get my_dynparam_service::set_dynparam_serviceResponse :md5sum-) "c63e85f503b805d84df783e71c6bb0d2")
(setf (get my_dynparam_service::set_dynparam_serviceResponse :datatype-) "my_dynparam_service/set_dynparam_serviceResponse")
(setf (get my_dynparam_service::set_dynparam_serviceResponse :definition-)
      "string input
---
string output

")



(provide :my_dynparam_service/set_dynparam_service "c63e85f503b805d84df783e71c6bb0d2")


