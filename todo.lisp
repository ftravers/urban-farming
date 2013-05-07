;; (asdf:operate 'asdf:load-op 'web1)
(in-package :web1)
(defvar *todo-list* nil)
(defun add-task (task)
  (push task *todo-list*))

(defun task-string (plist)
  (apply #'format (append (list nil "~a: ~a at ~a") (get-who-what-where plist))))

(defun get-who-what-where (plist)
  (let ((who (getf plist :assigned-to)) 
        (location (getf plist :location))
        (what (getf plist :title)))
    (list who what location)))

