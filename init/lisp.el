;;; Common-Lisp
(load (expand-file-name "~/local/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "ccl")

;; Slime
(require 'slime)

(setq slime-lisp-implementations
      '((sbcl ("sbcl") :coding-system utf-8-unix)
        (ccl ("ccl") :coding-system utf-8-unix)))

(defun ccl () (interactive) (slime 'ccl))
(defun sbcl () (interactive) (slime 'sbcl))

;; slime-contrib
;; (slime-setup '(slime-banner
;;                slime-asdf
;;                slime-fancy
;;                slime-indentation
;;                slime-compiler-notes-tree))
(slime-setup '(slime-fancy))

(setq slime-complete-symbol*-fancy t)
(setq slime-complete-symbol-function 'slime-complete-symbol*)
;;(setq slime-complete-symbol-function 'slime-fuzzy-complete-symbol)
(setq slime-startup-animation nil)
(setq slime-autodoc-use-multiline-p t)
;;(setq slime-use-autodoc-mode nil)
;;  (setq slime-enable-evaluate-in-emacs t)

;; ;; (setq common-lisp-hyperspec-root
;; ;;       (concat "file:" (expand-file-name "~/local/share/doc/HyperSpec/")))

(setq auto-mode-alist
      (append '(("\\.lsp$" . lisp-mode)
                ("\\.cl$" . lisp-mode)
                ("\\.asd$" . lisp-mode)
                ("\\.system$" . lisp-mode))
              auto-mode-alist))

(add-hook 'lisp-mode-hook
          (lambda ()
            (define-key slime-mode-map (kbd "TAB") 'slime-indent-and-complete-symbol)
            (paredit-mode 1)))

(global-set-key "\C-cs" 'slime-selector)
(global-set-key [f2] 'slime-selector)
(global-set-key [f3] 'slime-hyperspec-lookup)
