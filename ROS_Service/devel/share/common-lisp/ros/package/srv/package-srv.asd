
(cl:in-package :asdf)

(defsystem "package-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MagCalc" :depends-on ("_package_MagCalc"))
    (:file "_package_MagCalc" :depends-on ("_package"))
  ))