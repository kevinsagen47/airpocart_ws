
(cl:in-package :asdf)

(defsystem "teco_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "battery_srv" :depends-on ("_package_battery_srv"))
    (:file "_package_battery_srv" :depends-on ("_package"))
  ))