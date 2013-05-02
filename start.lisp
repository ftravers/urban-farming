(hunchentoot:start (make-instance 'hunchentoot:easy-acceptor :port 4242))

(defun ctrlr-index () "this is the index")
(defun ctrlr-about () "this is the about")
(setq hunchentoot:*dispatch-table*
 (list
  (hunchentoot:create-regex-dispatcher "^/index" 'ctrlr-index)
  (hunchentoot:create-regex-dispatcher "^/about" 'ctrlr-about)))

