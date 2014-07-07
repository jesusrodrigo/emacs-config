(setq python-shell-interpreter "python")
(add-hook 'python-mode-hook
          #'(lambda ()
              (define-key python-mode-map "\C-m" 'newline-and-indent)))

(add-hook 'python-mode-hook 'auto-complete-mode)
(add-hook 'python-mode-hook 'jedi:ac-setup)
