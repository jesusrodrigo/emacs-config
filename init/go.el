(require 'go-mode)

(require 'go-eldoc)
(require 'company)
(require 'company-go)

(setq company-tooltip-limit 20)                      ; bigger popup window
(setq company-idle-delay .3)                         ; decrease delay before autocompletion popup shows
(setq company-echo-delay 0)                          ; remove annoying blinking
(setq company-begin-commands '(self-insert-command)) ; start autocompletion only after typing

(load "$GOPATH/src/golang.org/x/tools/cmd/oracle/oracle.el")

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

  ;; Company
  (set (make-local-variable 'company-backends) '(company-go))
  (company-mode 1)
  
  ;; Other
  (autopair-mode 1)
  (go-eldoc-setup)
  (setq tab-width 8)
  (setq show-trailing-whitespace t)
  (setq gofmt-command "goimports")
  (local-set-key (kbd "M-.") 'godef-jump))

;; helper function
(defun go ()
  "run current buffer"
  (interactive)
  (compile (concat "go run " (buffer-file-name))))

(defun gobuild ()
  "build current package"
  (interactive)
  (compile (concat "go build")))
