;;; Common-Lisp
(require 'sly-autoloads)
(setq inferior-lisp-program "sbcl")

;; ;; Slime
;; (require 'slime)

(setq sly-lisp-implementations
      '((sbcl ("/home/jesus/local/sbcl/bin/sbcl") :coding-system utf-8-unix)
        (ccl ("ccl") :coding-system utf-8-unix)))

(defun ccl () (interactive) (sly 'ccl))
(defun sbcl () (interactive) (sly 'sbcl))

(sly-setup '(sly-fancy))

;; (setq slime-complete-symbol*-fancy t)
;; (setq slime-complete-symbol-function 'slime-complete-symbol*)
;; ;;(setq slime-complete-symbol-function 'slime-fuzzy-complete-symbol)
;; (setq slime-startup-animation nil)
;; (setq slime-autodoc-use-multiline-p t)
;; ;;(setq slime-use-autodoc-mode nil)
;; ;;  (setq slime-enable-evaluate-in-emacs t)

;; ;; (setq common-lisp-hyperspec-root
;; ;;       (concat "file:" (expand-file-name "~/local/share/doc/HyperSpec/")))

;; (setq auto-mode-alist
;;       (append '(("\\.lsp$" . lisp-mode)
;;                 ("\\.cl$" . lisp-mode)
;;                 ("\\.asd$" . lisp-mode)
;;                 ("\\.system$" . lisp-mode))
;;               auto-mode-alist))

(add-hook 'lisp-mode-hook
          (lambda ()
            (setq tab-always-indent 'complete)
            (define-key sly-mode-map (kbd "TAB") 'complete-symbol)
            (paredit-mode 1)
            ))

(global-set-key "\C-cs" sly-selector-map)
;; (global-set-key [f2] 'slime-selector)
;; (global-set-key [f3] 'slime-hyperspec-lookup)
