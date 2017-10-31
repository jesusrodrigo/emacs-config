(require 'racket-mode)

(add-hook 'racket-mode-hook
          (lambda ()
            (paredit-mode 1)
            (company-mode 1)
            (setq racket-smart-open-bracket-enable t)
            (set (make-local-variable 'tab-always-indent) 'company-complete)))

(add-hook 'racket-repl-mode-hook
          (lambda ()
            (setq racket-smart-open-bracket-enable t)
            (paredit-mode 0)
            (set (make-local-variable 'tab-always-indent) 'company-complete)))
