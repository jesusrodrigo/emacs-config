(eval-after-load 'puppet-mode
  (add-hook 'puppet-mode-hook
            (lambda ()
              (setq show-trailing-whitespace t)
              (autopair-mode 1))))
(autoload 'puppet-mode "puppet-mode" "Major mode for editing puppet manifests")

(add-to-list 'auto-mode-alist '("\\.pp$" . puppet-mode))
