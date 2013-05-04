(in-package :web1)

(defun ctrlr-index () 
  (with-html-output-to-string
      (*standard-output* nil :prologue t)
    (:html
     (:head (:title "Hello, world!"))
     (:body
      (:h1 "Hello, world!")
      (:p "This is my Lisp web server, running on Hunchentoot,"
          " as described in "
          (:a :href
              "http://newartisans.com/blog_files/hunchentoot.primer.php"
              "this blog entry")
          " on Common Lisp and Hunchentoot.")))))


(defun ctrlr-about () "this is the about2")
(setq hunchentoot:*dispatch-table*
 (list
  (hunchentoot:create-regex-dispatcher "^/index" 'ctrlr-index)
  (hunchentoot:create-regex-dispatcher "^/about" 'ctrlr-about)))



