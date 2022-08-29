
(cl:in-package :asdf)

(defsystem "teco_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "alarm_msgs" :depends-on ("_package_alarm_msgs"))
    (:file "_package_alarm_msgs" :depends-on ("_package"))
    (:file "battery_msgs" :depends-on ("_package_battery_msgs"))
    (:file "_package_battery_msgs" :depends-on ("_package"))
  ))