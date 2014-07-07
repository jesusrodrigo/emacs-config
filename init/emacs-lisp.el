
(defconst emacs-lisp-paren-face 'emacs-lisp-paren-face)
(defface emacs-lisp-paren-face
  '((((class color) (background light)) (:foreground "gold4"))
    (((class color) (background dark))  (:foreground "#C4AC27"))
    (((class grayscale))                (:foreground "gray"))
    (t                                  ()))
  "Emacs Lisp mode face for parentheses, brackets, and final cdr's `.'."
  :group 'lisp
  :group 'font-lock-faces)

(add-hook 'emacs-lisp-mode-hook 
          (function
           (lambda ()
             (setq fill-column 80)
             (set (make-local-variable 'adaptive-fill-mode) nil)
             (setq indent-tabs-mode nil)
             (paredit-mode 1)
             (eldoc-mode 1)
             (font-lock-add-keywords nil
              '(("[][().]" . emacs-lisp-paren-face))
              'append))))
(add-hook 'lisp-interaction-mode-hook
          (function
           (lambda () (paredit-mode 0))))
