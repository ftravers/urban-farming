;; (asdf:operate 'asdf:load-op 'web1)
(in-package :web1)
(defvar *todo-list* nil)
(defun add-task (task)
  (push task *todo-list*))
;; create some testdata
(setf *todo-list* nil)
(add-task '(:title "get soap" :assigned-to "bob" :location "pharmacy"))
(add-task '(:title "return books" :assigned-to "jane" :location "library"))
(add-task '(:title "buy milk" :assigned-to "bob" :location "grocery"))
(defvar single-task '(:title "buy milk" :assigned-to "bob" :location "grocery"))

(defun printable-task (plist print-function)
  (apply print-function plist))

(defun show-tasks (print-function) 
  (with-output-to-string
      (final-string)
    (loop
      for curr-element in *todo-list*
      do (write-string (printable-task curr-element print-function) final-string))))

(defun task-string (plist)
  (apply #'format (append (list nil "~a: ~a at ~a") (get-who-what-where plist))))

(defun get-who-what-where (plist)
  (let ((who (getf plist :assigned-to)) 
        (location (getf plist :location))
        (what (getf plist :title)))
    (list who what location)))

(defmacro html-task (plst) `(:li ,(task-string (symbol-value plst))))

(defun clprep (plst) 
  (let ((entry (frmtr-1 plst)))
    (list ':li entry)))

(defvar tdl '((:name "abc")(:name "xyz")))
(defvar sim '(:name "abc"))

(defun doit (frmtr lst)
  (apply #'values (loop
    for name in lst collect (funcall frmtr name))))

(defun frmtr-1 (name)
  (format nil "The Name: ~a" (getf name :name)))
(defun print-out (str)
  (format t "~a~%" (frmtr-1 str)))
(values)
