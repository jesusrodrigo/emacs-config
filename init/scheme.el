(setq geiser-active-implementations '(racket guile))
(setq geiser-default-implementation 'racket)

(defun my-scheme-hook ()
  (paredit-mode 1)
  (define-key scheme-mode-map "\r" 'newline-and-indent)
  (define-key scheme-mode-map "\n" 'newline))

(add-hook 'scheme-mode-hook 'my-scheme-hook)
