(require 'racket-mode)

;;(push '("\\.rkt\\'" . racket-mode) auto-mode-alist)

(add-hook 'racket-mode-hook
          (lambda ()
            (paredit-mode 1)
            (setq racket-smart-open-bracket-enable t)
            (set (make-local-variable 'tab-always-indent) 'complete)))

(add-hook 'racket-repl-mode-hook
          (lambda ()
            (setq racket-smart-open-bracket-enable t)
            ;; (paredit-mode 1)
            (set (make-local-variable 'tab-always-indent) 'complete)))
