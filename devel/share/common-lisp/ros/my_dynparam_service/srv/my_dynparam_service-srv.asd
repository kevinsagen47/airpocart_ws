
(cl:in-package :asdf)

(defsystem "my_dynparam_service-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "get_dynparam_service" :depends-on ("_package_get_dynparam_service"))
    (:file "_package_get_dynparam_service" :depends-on ("_package"))
    (:file "set_dynparam_service" :depends-on ("_package_set_dynparam_service"))
    (:file "_package_set_dynparam_service" :depends-on ("_package"))
  ))