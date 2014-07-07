(setq geiser-active-implementations '(racket))

(defun my-scheme-hook ()
  (paredit-mode 1))
(add-hook 'geiser-mode-hook 'my-scheme-hook)
