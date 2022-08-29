;; Auto-generated. Do not edit!


(when (boundp 'my_action_actionlib::feedbackMsg)
  (if (not (find-package "MY_ACTION_ACTIONLIB"))
    (make-package "MY_ACTION_ACTIONLIB"))
  (shadow 'feedbackMsg (find-package "MY_ACTION_ACTIONLIB")))
(unless (find-package "MY_ACTION_ACTIONLIB::FEEDBACKMSG")
  (make-package "MY_ACTION_ACTIONLIB::FEEDBACKMSG"))

(in-package "ROS")
;;//! \htmlinclude feedbackMsg.msg.html


(defclass my_action_actionlib::feedbackMsg
  :super ros::object
  :slots (_action _currentIndex ))

(defmethod my_action_actionlib::feedbackMsg
  (:init
   (&key
    ((:action __action) "")
    ((:currentIndex __currentIndex) 0)
    )
   (send-super :init)
   (setq _action (string __action))
   (setq _currentIndex (round __currentIndex))
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:currentIndex
   (&optional __currentIndex)
   (if __currentIndex (setq _currentIndex __currentIndex)) _currentIndex)
  (:serialization-length
   ()
   (+
    ;; string _action
    4 (length _action)
    ;; int8 _currentIndex
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _action
       (write-long (length _action) s) (princ _action s)
     ;; int8 _currentIndex
       (write-byte _currentIndex s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _currentIndex
     (setq _currentIndex (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _currentIndex 127) (setq _currentIndex (- _currentIndex 256)))
   ;;
   self)
  )

(setf (get my_action_actionlib::feedbackMsg :md5sum-) "71787da51c21b713ad07f51cd9d1e7eb")
(setf (get my_action_actionlib::feedbackMsg :datatype-) "my_action_actionlib/feedbackMsg")
(setf (get my_action_actionlib::feedbackMsg :definition-)
      "string action
int8 currentIndex

")



(provide :my_action_actionlib/feedbackMsg "71787da51c21b713ad07f51cd9d1e7eb")


