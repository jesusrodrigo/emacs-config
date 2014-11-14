(defun my-racket-hook ()
  (paredit-mode 1))

(add-hook 'racket-mode-hook 'my-racket-hook)
