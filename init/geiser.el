(setq geiser-active-implementations '(racket guile chez chibi))
(setq geiser-default-implementation 'racket)
(setq geiser-mode-smart-tab-p t)
(defun my-scheme-hook ()
  (paredit-mode 1))
(add-hook 'scheme-mode-hook (function my-scheme-hook))
(push '("\\.\\(sls\\|sld\\)\\'" . scheme-mode) auto-mode-alist)


;; (setq auto-mode-alist (remove '("\\.rkt\\'" . scheme-mode) auto-mode-alist))
