(setq geiser-active-implementations '(racket guile))
(setq geiser-default-implementation 'racket)

(defun my-scheme-hook ()
  (paredit-mode 1))
