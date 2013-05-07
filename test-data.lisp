(in-package :web1)
;; create some testdata
(setf *todo-list* nil)
(add-task '(:title "get soap" :assigned-to "bob" :location "pharmacy"))
(add-task '(:title "return books" :assigned-to "jane" :location "library"))
(add-task '(:title "buy milk" :assigned-to "bob" :location "grocery"))
(defvar single-task '(:title "buy milk" :assigned-to "bob" :location "grocery"))
