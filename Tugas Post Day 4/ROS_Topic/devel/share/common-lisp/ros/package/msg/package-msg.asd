
(cl:in-package :asdf)

(defsystem "package-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "VarMsg" :depends-on ("_package_VarMsg"))
    (:file "_package_VarMsg" :depends-on ("_package"))
  ))