;;;; -*- Mode: Emacs-Lisp -*-

(setq inhibit-startup-screen t)
(set-language-environment "UTF-8")

(setq bookmark-default-file "~/.emacs.d/bookmarks.bmk")

(put 'scroll-left 'disabled nil)

(setq font-lock-verbose nil)

;;; Paths elisp
(let ((top (expand-file-name "~/.emacs.d/libraries")))
  (add-to-list 'load-path top)
  (dolist (f (directory-files top t))
    (cond ((file-directory-p f)
	   (add-to-list 'load-path f)))))

;; Acentos
(require 'iso-transl)
;; Variables de entorno... package.el modifica el Info
(load "~/.emacs.d/init/envvars")

(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; Server
(server-start)

(load "~/.emacs.d/init/misc")
(load "~/.emacs.d/init/frames")
(load "~/.emacs.d/init/ido")
(load "~/.emacs.d/init/gnus")

;;; Teclas globales
;;; Españolo
;; (global-set-key (kbd "M-1") "|")
;; (global-set-key (kbd "M-2") "@")
;; (global-set-key (kbd "M-3") "#")
;; (global-set-key (kbd "M-º") "\\")
;; (global-set-key (kbd "M-ç") "}")
;; (global-set-key (kbd "M-+") "]")
;; (global-set-key (kbd "M-ñ") "~")


;; (global-set-key "\C-x\M-3" 'server-edit)

;; Finder
(global-set-key [f16] '(lambda ()
			 (interactive)
			 (shell-command (concat "xdg-open " default-directory))))

;; Abrir y cerrar fichero
(global-set-key [f4] 'find-file)
(global-set-key [C-f4] 'kill-buffer)

;; Buffer switch (lo tengo que cambiar de sitio...)
(global-set-key (kbd "C-x C-b") 'bs-show)

;; Company
(add-hook 'after-init-hook 'global-company-mode)

;; Subfiles
(load "~/.emacs.d/init/eshell")
(load "~/.emacs.d/init/dired")
; prog modes
(load "~/.emacs.d/init/python")
(load "~/.emacs.d/init/paredit")
(load "~/.emacs.d/init/emacs-lisp")
(load "~/.emacs.d/init/css")
(load "~/.emacs.d/init/c-mode")
(load "~/.emacs.d/init/go")
(load "~/.emacs.d/init/perl")
(load "~/.emacs.d/init/lisp")
(load "~/.emacs.d/init/scheme")
(load "~/.emacs.d/init/racket")
;(load "~/.emacs.d/init/clojure")
;(load "~/.emacs.d/init/lua")
;(load "~/.emacs.d/init/erlang")
(load "~/.emacs.d/init/haskell.el")
;(load "~/.emacs.d/init/ocaml.el")
(load "~/.emacs.d/init/sml")
(load "~/.emacs.d/init/org-mode")
;(load "~/.emacs.d/init/forth")
;(load "~/.emacs.d/init/factor")
(load "~/.emacs.d/init/rust")
(load "~/.emacs.d/init/tex")
(load "~/.emacs.d/init/irc")
;(load "~/.emacs.d/init/yasnippet.el")
(put 'dired-find-alternate-file 'disabled nil)
