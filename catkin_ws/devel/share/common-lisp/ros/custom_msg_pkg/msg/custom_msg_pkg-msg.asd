
(cl:in-package :asdf)

(defsystem "custom_msg_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "age" :depends-on ("_package_age"))
    (:file "_package_age" :depends-on ("_package"))
  ))