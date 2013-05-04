;; (asdf:operate 'asdf:load-op 'web1)
;;(hunchentoot:start (make-instance 'hunchentoot:easy-acceptor :port 4242))

(defsystem web1
  :name "web1"
  :components ((:file "package")
               (:file "web" :depends-on ("package"))
               (:file "todo":depends-on ("package")))
   :depends-on (:hunchentoot :cl-who)
)



