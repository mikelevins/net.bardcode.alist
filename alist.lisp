;;;; net.bardcode.alist.lisp

(in-package #:net.bardcode.alist)

;;; ---------------------------------------------------------------------
;;; alist and plist types
;;; ---------------------------------------------------------------------

;;; an alist is a list all of whose elements are lists

(defmethod alist? (thing)
  (declare (ignore thing))
  t)

(defmethod alist? ((thing cons)) 
  (and thing
       (every 'consp thing)))

(deftype alist ()
  `(and list (satisfies alist?)))

;;; a plist is a list with an even number of elements whose
;;; even-indexed elements are atoms

(defmethod plist? (thing)
    (declare (ignore thing))
    nil)

(defmethod plist? ((thing cons)) 
  (and thing
       (block testing
         (loop for tail on thing by #'cddr
            do (unless (and (cdr tail)
                            (atom (car tail)))
                 (return-from testing nil)))
         t)))

(deftype plist ()
  `(and list (satisfies plist?)))

;;; ---------------------------------------------------------------------
;;; alist/plist utilities
;;; ---------------------------------------------------------------------

(defmethod alist-to-plist ((alist null))
  (declare (ignore alist))
  nil)

(defmethod alist-to-plist ((alist list))
  (loop for pair in alist
     append (list (car pair)(cdr pair))))

(defmethod plist-to-alist ((plist null))
  (declare (ignore plist))
  nil)

(defmethod plist-to-alist ((plist list))
  (loop for tail on plist by #'cddr
     collect (cons (car tail)
                   (cadr tail))))
