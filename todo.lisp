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

