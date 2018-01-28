(require 'rust-mode)
(require 'racer)

(require 'lsp-mode)
(require 'lsp-flycheck)
(require 'lsp-rust)
(setq lsp-rust-rls-command '("rustup" "run" "nightly" "rls"))
(require 'company-lsp)
(push 'company-lsp company-backends)

;; (add-hook 'rust-mode-hook #'lsp-rust-enable)

(defun my-rust-hook ()
  ;; Teclas
  ;; (define-key rust-mode-map "\r" 'newline-and-indent)
  ;; (define-key rust-mode-map "\n" 'newline)
  ;; (racer-mode 1)
  (lsp-rust-enable)
  (flycheck-mode 1)
  (cargo-minor-mode 1)
  (autopair-mode 1)
  (company-mode 1)
  (yas-minor-mode 1)
  (setq company-tooltip-align-annotations t)
  (auto-composition-mode 1)
  ;; (setq indent-tabs-mode nil)
  )

(add-hook 'rust-mode-hook 'my-rust-hook)

;; ;;; Racer
;; (setq racer-cmd "~/.cargo/bin/racer")
;; (setq racer-rust-src-path "/home/jesus/.multirust/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src")

;; (defun my-racer-hook ()
;;   (define-key racer-mode-map (kbd "TAB") #'company-indent-or-complete-common)
;;   (define-key racer-mode-map (kbd "C-c C-d") #'racer-describe)

;;   (company-mode 1)
;;   (eldoc-mode 1))

;; (add-hook 'racer-mode-hook 'my-racer-hook)
