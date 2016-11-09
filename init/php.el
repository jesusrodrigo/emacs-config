(add-hook 'php-mode-hook
          '(lambda ()
             (require 'company-php)
             (company-mode t)
             (add-to-list 'company-backends 'company-ac-php-backend)
             (define-key php-mode-map (kbd "M-.") 'ac-php-find-symbol-at-point)
             (define-key php-mode-map (kbd "M-,") 'ac-php-location-stack-back)
             (setq indent-tabs-mode nil
                   tab-width 4
                   c-basic-offset 4)))
