;;(hunchentoot:start (make-instance 'hunchentoot:easy-acceptor :port 4242))
(in-package :web1)

(defun ctrlr-index () 
  (with-html-output-to-string
      (*standard-output* nil :prologue t)
    (:html
     (:head (:title "Hello, world!"))
     (:body
      (:h1 "Hello, world!")
      (:ul
       (loop for task in (all-tasks 'title)
             do (htm (:li (str (pp-task task))))))
))))


(defun ctrlr-about () "this is the about2")
(setq hunchentoot:*dispatch-table*
 (list
  (hunchentoot:create-regex-dispatcher "^/index" 'ctrlr-index)
  (hunchentoot:create-regex-dispatcher "^/about" 'ctrlr-about)))



