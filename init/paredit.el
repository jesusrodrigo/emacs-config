(require 'paredit)
;; (eval-after-load "paredit"
;;   (progn
;;     (define-key paredit-mode-map (kbd "C-M-f") 'forward-sexp)
;;     (define-key paredit-mode-map (kbd "C-M-b") 'backward-sexp)

(define-key paredit-mode-map (kbd "RET") 'paredit-newline)
(define-key paredit-mode-map (kbd "C-j") nil)
(define-key paredit-mode-map (kbd ")") 'paredit-close-round-and-newline)
(define-key paredit-mode-map (kbd "M-)") 'paredit-close-round)

