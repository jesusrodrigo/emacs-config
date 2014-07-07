;;; Perl mode
(defalias 'perl-mode 'cperl-mode)
(require 'cperl-mode)

(setq cperl-hairy t)

(add-hook 'cperl-mode-hook
	  (lambda ()
	    (local-set-key (kbd "C-h f") 'cperl-perldoc)
            (cperl-set-style "PerlStyle")))

