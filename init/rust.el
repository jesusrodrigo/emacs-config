(require 'rust-mode)

(defun my-rust-hook ()
  ;; Teclas
  (define-key rust-mode-map "\r" 'newline-and-indent)
  (define-key rust-mode-map "\n" 'newline)

  ;; Other
  (autopair-mode 1)
  (setq indent-tabs-mode nil))

(add-hook 'rust-mode-hook 'my-rust-hook)
