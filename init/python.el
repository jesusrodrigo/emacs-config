(elpy-enable)
(add-hook 'python-mode-hook
          #'(lambda ()
              (define-key python-mode-map "\C-m" 'newline-and-indent)))
(setq elpy-rpc-backend "jedi")
