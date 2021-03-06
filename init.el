;;;; -*- Mode: Emacs-Lisp -*-

(setq inhibit-startup-screen t)
(set-language-environment "UTF-8")

(setq bookmark-default-file "~/.emacs.d/bookmarks.bmk")

(put 'scroll-left 'disabled nil)

(setq font-lock-verbose nil)

;;; Paths elisp
(let ((top (expand-file-name "~/.emacs.d/libraries")))
  (add-to-list 'load-path top)
  (dolist (f (directory-files top t directory-files-no-dot-files-regexp))
    (cond ((file-directory-p f)
	   (add-to-list 'load-path f)))))

;; Disable .tramp_history files
(setq tramp-histfile-override t)

;; Acentos
;; (require 'iso-transl)
;; Variables de entorno... package.el modifica el Info
(load "~/.emacs.d/init/envvars")

(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.milkbox.net/packages/")))
(package-initialize)

;; (require 'use-package)
;; (require 'bind-key)
;; (use-package company-shell
;;   :ensure t)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; Server
(server-start)

(load "~/.emacs.d/init/misc")
(load "~/.emacs.d/init/frames")
(load "~/.emacs.d/init/ido")
(load "~/.emacs.d/init/gnus")

;; Buffer switch (lo tengo que cambiar de sitio...)
(global-set-key (kbd "C-x C-b") 'bs-show)

;; Subfiles
(load "~/.emacs.d/init/eshell")
(load "~/.emacs.d/init/dired")
;; prog modes
(load "~/.emacs.d/init/sh")
(load "~/.emacs.d/init/python")
(load "~/.emacs.d/init/php")
(load "~/.emacs.d/init/paredit")
(load "~/.emacs.d/init/emacs-lisp")
(load "~/.emacs.d/init/css")
(load "~/.emacs.d/init/c-mode")
(load "~/.emacs.d/init/go")
(load "~/.emacs.d/init/perl")
(load "~/.emacs.d/init/lisp")
(load "~/.emacs.d/init/geiser")
;(load "~/.emacs.d/init/racket")
(load "~/.emacs.d/init/puppet")
;(load "~/.emacs.d/init/clojure")
;(load "~/.emacs.d/init/lua")
;(load "~/.emacs.d/init/erlang")
(load "~/.emacs.d/init/haskell")
;(load "~/.emacs.d/init/ocaml.el")
(load "~/.emacs.d/init/sml")
(load "~/.emacs.d/init/org-mode")
;(load "~/.emacs.d/init/forth")
(load "~/.emacs.d/init/factor")
(load "~/.emacs.d/init/rust")
(load "~/.emacs.d/init/tex")
(load "~/.emacs.d/init/irc")
;(load "~/.emacs.d/init/yasnippet.el")
(put 'dired-find-alternate-file 'disabled nil)
