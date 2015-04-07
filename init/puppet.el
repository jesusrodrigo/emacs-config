(add-hook 'puppet-mode-hook
          (lambda ()
            (setq show-trailing-whitespace t)
            (autopair-mode 1)))
