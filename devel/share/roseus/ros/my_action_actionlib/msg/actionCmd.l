;; Auto-generated. Do not edit!


(when (boundp 'my_action_actionlib::actionCmd)
  (if (not (find-package "MY_ACTION_ACTIONLIB"))
    (make-package "MY_ACTION_ACTIONLIB"))
  (shadow 'actionCmd (find-package "MY_ACTION_ACTIONLIB")))
(unless (find-package "MY_ACTION_ACTIONLIB::ACTIONCMD")
  (make-package "MY_ACTION_ACTIONLIB::ACTIONCMD"))

(in-package "ROS")
;;//! \htmlinclude actionCmd.msg.html


(defclass my_action_actionlib::actionCmd
  :super ros::object
  :slots (_cmdType _scriptName _startLine ))

(defmethod my_action_actionlib::actionCmd
  (:init
   (&key
    ((:cmdType __cmdType) 0)
    ((:scriptName __scriptName) "")
    ((:startLine __startLine) 0)
    )
   (send-super :init)
   (setq _cmdType (round __cmdType))
   (setq _scriptName (string __scriptName))
   (setq _startLine (round __startLine))
   self)
  (:cmdType
   (&optional __cmdType)
   (if __cmdType (setq _cmdType __cmdType)) _cmdType)
  (:scriptName
   (&optional __scriptName)
   (if __scriptName (setq _scriptName __scriptName)) _scriptName)
  (:startLine
   (&optional __startLine)
   (if __startLine (setq _startLine __startLine)) _startLine)
  (:serialization-length
   ()
   (+
    ;; int8 _cmdType
    1
    ;; string _scriptName
    4 (length _scriptName)
    ;; int8 _startLine
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _cmdType
       (write-byte _cmdType s)
     ;; string _scriptName
       (write-long (length _scriptName) s) (princ _scriptName s)
     ;; int8 _startLine
       (write-byte _startLine s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _cmdType
     (setq _cmdType (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _cmdType 127) (setq _cmdType (- _cmdType 256)))
   ;; string _scriptName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _scriptName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _startLine
     (setq _startLine (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _startLine 127) (setq _startLine (- _startLine 256)))
   ;;
   self)
  )

(setf (get my_action_actionlib::actionCmd :md5sum-) "5648d904ae74995e135ff9a25b104b2a")
(setf (get my_action_actionlib::actionCmd :datatype-) "my_action_actionlib/actionCmd")
(setf (get my_action_actionlib::actionCmd :definition-)
      "int8 cmdType
string scriptName
int8 startLine


")



(provide :my_action_actionlib/actionCmd "5648d904ae74995e135ff9a25b104b2a")


