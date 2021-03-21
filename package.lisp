;;;; ***********************************************************************
;;;;
;;;; Name:          package.lisp
;;;; Project:       net.bardcode.alist
;;;; Purpose:       package definition
;;;; Author:        mikel evins
;;;; Copyright:     2021 by mikel evins
;;;;
;;;; ***********************************************************************

(defpackage #:net.bardcode.alist
  (:use #:cl)
  (:export #:alist
           #:plist
           #:alist?
           #:plist?
           #:alist-to-plist
           #:plist-to-alist))



