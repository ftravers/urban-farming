(defpackage #:web1
  (:use :cl :asdf))
(in-package :web1)

(defsystem web1
  :name "web1"
  :components ((:file "start")
               (:file "second"))
   :depends-on ("hunchentoot")
)
