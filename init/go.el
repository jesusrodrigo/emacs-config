(require 'go-mode)

(require 'go-eldoc)

(require 'auto-complete)
(require 'go-autocomplete)
(require 'auto-complete-config)

(load "$GOPATH/src/code.google.com/p/go.tools/cmd/oracle/oracle.el")

;; Hooks
(add-hook 'go-mode-hook 'my-go-hook)
(add-hook 'before-save-hook 'gofmt-before-save)

(defun my-go-hook ()
  ;; Teclas
  (define-key go-mode-map "\r" 'newline-and-indent)
  (define-key go-mode-map "\n" 'newline)

  ;; Imenu & Speedbar
  (setq imenu-generic-expression
        '(("type" "^type *\\([^ \t\n\r\f]*\\)" 1)
          ("func" "^func *\\(.*\\) {" 1)))
  (imenu-add-to-menubar "Index")

  ;; Imports
  (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)
  (local-set-key (kbd "C-c C-g") 'go-goto-imports)

  ;; Godoc
  (local-set-key (kbd "C-c C-k") 'godoc)

  ;; Other
  (go-eldoc-setup)
  (go-oracle-mode)
  (setq tab-width 8)
  (setq show-trailing-whitespace t)
  (local-set-key (kbd "M-.") 'godef-jump))

;; helper function
(defun go ()
  "run current buffer"
  (interactive)
  (compile (concat "go run " (buffer-file-name))))
