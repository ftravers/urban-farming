(in-package :web1)

;; (make-instance 'task :title "Get soap" :assigned-to "bob" :location "pharmacy")
;; (make-instance 'task :title "Do laund" :assigned-to "joe" :location "laundromat")
;; (defvar t1 (make-instance 'task :title "Buy milk" :assigned-to "bob" :location "grocery"))

(elephant:get-instances-by-value 'task 'assigned-to "bob")
(elephant:get-instances-by-class 'task)

