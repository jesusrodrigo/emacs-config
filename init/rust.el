(require 'rust-mode)
(require 'racer)

(defun my-rust-hook ()
  ;; Teclas
  ;; (define-key rust-mode-map "\r" 'newline-and-indent)
  ;; (define-key rust-mode-map "\n" 'newline)
  (racer-mode 1)
  (cargo-minor-mode 1)
  (autopair-mode 1)
  ;; (setq indent-tabs-mode nil)
  )

(add-hook 'rust-mode-hook 'my-rust-hook)

;;; Racer
(setq racer-cmd "~/.cargo/bin/racer")
;; (setq racer-rust-src-path "/home/jesus/.multirust/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src")

(defun my-racer-hook ()
  (define-key racer-mode-map (kbd "TAB") #'company-indent-or-complete-common)
  (define-key racer-mode-map (kbd "C-c C-d") #'racer-describe)
  ;; (auto-composition-mode 1)
  (setq company-tooltip-align-annotations t)
  (company-mode 1)
  (eldoc-mode 1))

(add-hook 'racer-mode-hook 'my-racer-hook)
