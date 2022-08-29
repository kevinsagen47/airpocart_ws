
(cl:in-package :asdf)

(defsystem "dynamic_tutorials-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "dynCmd" :depends-on ("_package_dynCmd"))
    (:file "_package_dynCmd" :depends-on ("_package"))
  ))