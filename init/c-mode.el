;;; CC Mode
(defun my-c-mode-common-hook ()
  (c-set-style "k&r")
  (setq indent-tabs-mode t)
  (setq c-basic-offset 8)
  (c-toggle-auto-newline 1)
;;  (c-subword-mode 1)
  (c-toggle-hungry-state 1))

(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

(defun my-make-CR-do-indent ()
  (define-key c-mode-base-map "\C-m" 'c-context-line-break))

(add-hook 'c-initialization-hook 'my-make-CR-do-indent)
