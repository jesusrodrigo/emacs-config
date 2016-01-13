(add-hook 'racket-mode-hook
          (lambda ()
            (paredit-mode 1)
            (set (make-local-variable 'tab-always-indent) 'complete)))
