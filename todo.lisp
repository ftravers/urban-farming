(declaim (optimize (speed 0) (space 1) (compilation-speed 0) (debug 3)))

;; (asdf:operate 'asdf:load-op 'web1)
(in-package :web1)

(elephant:defpclass task ()
  ((title :initarg :title
          :accessor title
          :index t)
   (assigned-to :initarg :assigned-to
                :accessor assigned-to
                :index t)
   (location :initarg :location
             :accessor location
             :index t)
   (timestamp :initarg :timestamp
              :accessor timestamp
              :initform (get-universal-time)
              :index t)))

;; Open the store where our data is stored
(defvar *elephant-store* (elephant:open-store '(:clsql (:sqlite3 "/tmp/tasks.db"))))

(defun all-tasks (order-by)
  (elephant:get-instances-by-range 'task order-by nil nil))

(defun pp-task (task)
  (format nil "~A: ~A. Location: ~A, Time: ~A"
          (assigned-to task)
          (title task)
          (location task)
          (timestamp task)))
