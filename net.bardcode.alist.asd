;;;; net.bardcode.alist.asd

(asdf:defsystem #:net.bardcode.alist
  :description "Simple utilities for working with alists and plists"
  :author "mikel evins <mikel@evins.net>"
  :license  "Apache 2.0"
  :version "0.0.1"
  :serial t
  :components ((:file "package")
               (:file "alist")))

;;; (asdf:load-system :net.bardcode.alist)
;;; (ql:quickload :net.bardcode.alist)
