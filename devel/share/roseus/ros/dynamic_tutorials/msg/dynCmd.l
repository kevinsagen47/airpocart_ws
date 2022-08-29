;; Auto-generated. Do not edit!


(when (boundp 'dynamic_tutorials::dynCmd)
  (if (not (find-package "DYNAMIC_TUTORIALS"))
    (make-package "DYNAMIC_TUTORIALS"))
  (shadow 'dynCmd (find-package "DYNAMIC_TUTORIALS")))
(unless (find-package "DYNAMIC_TUTORIALS::DYNCMD")
  (make-package "DYNAMIC_TUTORIALS::DYNCMD"))

(in-package "ROS")
;;//! \htmlinclude dynCmd.msg.html


(defclass dynamic_tutorials::dynCmd
  :super ros::object
  :slots (_cmdType _para ))

(defmethod dynamic_tutorials::dynCmd
  (:init
   (&key
    ((:cmdType __cmdType) 0)
    ((:para __para) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _cmdType (round __cmdType))
   (setq _para __para)
   self)
  (:cmdType
   (&optional __cmdType)
   (if __cmdType (setq _cmdType __cmdType)) _cmdType)
  (:para
   (&optional __para)
   (if __para (setq _para __para)) _para)
  (:serialization-length
   ()
   (+
    ;; int8 _cmdType
    1
    ;; float32[] _para
    (* 4    (length _para)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _cmdType
       (write-byte _cmdType s)
     ;; float32[] _para
     (write-long (length _para) s)
     (dotimes (i (length _para))
       (sys::poke (elt _para i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _cmdType
     (setq _cmdType (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _cmdType 127) (setq _cmdType (- _cmdType 256)))
   ;; float32[] _para
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _para (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _para i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get dynamic_tutorials::dynCmd :md5sum-) "d3d95f1c672c95f8620a00173f3fc89c")
(setf (get dynamic_tutorials::dynCmd :datatype-) "dynamic_tutorials/dynCmd")
(setf (get dynamic_tutorials::dynCmd :definition-)
      "int8 cmdType
float32[] para



")



(provide :dynamic_tutorials/dynCmd "d3d95f1c672c95f8620a00173f3fc89c")


