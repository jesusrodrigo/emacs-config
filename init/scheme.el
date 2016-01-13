;; (autoload 'scheme-complete-or-indent "scheme-complete" nil t)
;; (autoload 'scheme-get-current-symbol-info "scheme-complete" nil t)

;; (require 'chicken)

;; (defun my-scheme-hook ()
;;   (local-unset-key [(control c) (meta c)])
;;   (local-unset-key [(control c) (control c)])
;;   (define-key scheme-mode-map "\t" 'scheme-complete-or-indent)
;;   (make-local-variable 'eldoc-documentation-function)
;;   (setq eldoc-documentation-function 'scheme-get-current-symbol-info)
;;   (make-local-variable lisp-indent-function)
;;   (setq lisp-indent-function 'scheme-smart-indent-function)
;;   (eldoc-mode 1)
;;   (paredit-mode 1))

;; (defun my-inferior-scheme-hook ()
;;   (local-set-key "\t" 'scheme-complete-or-indent)
;;   (make-local-variable 'eldoc-documentation-function)
;;   (setq eldoc-documentation-function 'scheme-get-current-symbol-info)
;;   (eldoc-mode 1))

;; (add-hook 'scheme-mode-hook (function my-scheme-hook))
;; (add-hook 'inferior-scheme-mode-hook (function my-inferior-scheme-hook))

;; ;; (setq scheme-default-implementation 'gambit)
;; ;; (setq scheme-always-use-default-implementation-p t)

;; ;;; Chicken
;; (setq scheme-program-name "csi -n -R utils -:c")
;; (setq scheme-default-implementation 'chicken)

;; ;;; Identation
;; (defun scheme-module-indent (state indent-point normal-indent) 0)
;; (put 'module 'scheme-indent-function 'scheme-module-indent)

;; (put 'and-let* 'scheme-indent-function 1)
;; (put 'parameterize 'scheme-indent-function 1)
;; (put 'handle-exceptions 'scheme-indent-function 1)
;; (put 'when 'scheme-indent-function 1)
;; (put 'unless 'scheme-indent-function 1)
;; (put 'match 'scheme-indent-function 1)

;; ;; (require 'autoinsert)
;; ;; (add-hook 'find-file-hooks 'auto-insert)

;; ;; (setq auto-insert-alist
;; ;;       '(("\\.scm" .
;; ;;          (insert "#!/bin/sh\n#| -*- scheme -*-\nexec csi -s $0 \"$@\"\n|#\n"))))

;; (autoload 'scheme-complete-or-indent "scheme-complete" nil t)
;; (autoload 'scheme-get-current-symbol-info "scheme-complete" nil t)

;; ;; (define-key scheme-mode-map "\C-c\C-l" 'scheme-load-current-file)
;; ;; (define-key scheme-mode-map "\C-c\C-k" 'scheme-compile-current-file)

;; ;;; Gambit-C
;; (autoload 'gambit-inferior-mode "gambit" "Hook Gambit mode into cmuscheme.")
;; (autoload 'gambit-mode "gambit" "Hook Gambit mode into scheme.")
;; (add-hook 'inferior-scheme-mode-hook (function gambit-inferior-mode))
;; (add-hook 'scheme-mode-hook (function gambit-mode))
;; (setq scheme-program-name "gsc -:d-,f8,t8,-8")
;; (defun my-scheme-hook ()
;;   ;; (define-key scheme-mode-map "\r" 'newline-and-indent)
;;   ;; (define-key scheme-mode-map "\n" 'newline)
;;   (define-key scheme-mode-map "\t" 'scheme-complete-or-indent)
;;   (make-local-variable 'eldoc-documentation-function)
;;   (setq eldoc-documentation-function 'scheme-get-current-symbol-info)
;;   (make-local-variable lisp-indent-function)
;;   (setq lisp-indent-function 'scheme-smart-indent-function)
;;   (eldoc-mode 1)
;;   (paredit-mode 1))
;; (add-hook 'scheme-mode-hook (function my-scheme-hook))
