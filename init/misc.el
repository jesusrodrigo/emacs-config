;;; GDB
(setq gdb-show-main t)
(setq gdb-many-windows t)

(add-hook 'text-mode-hook 'turn-on-auto-fill)

(defalias 'yes-or-no-p 'y-or-n-p)

;;; macOS shit
(when (eq window-system 'ns)
  (setq ns-right-command-modifier 'none
        ns-right-alternate-modifier 'none
        ns-command-modifier 'meta
        ns-alternate-modifier 'super))

;;; Browser
(setq browse-url-browser-function 'browse-url-xdg-open)

;;; Word completion customizations
(setq hippie-expand-try-functions-list
      '(try-expand-dabbrev
	try-expand-dabbrev-all-buffers
	try-expand-dabbrev-from-kill
	try-complete-file-name-partially
	try-complete-file-name
	try-complete-lisp-symbol-partially
	try-complete-lisp-symbol
	try-expand-whole-kill))

(global-set-key [(control .)] 'hippie-expand)

;;; Calendar
(setq calendar-week-start-day 1)

;;; Rueda del raton
(setq mouse-wheel-scroll-amount '(0.01))

;;; Mouse-copy
(require 'mouse-copy)
(global-set-key [M-down-mouse-1] 'mouse-drag-secondary-pasting)
(global-set-key [M-S-down-mouse-1] 'mouse-drag-secondary-moving)

(transient-mark-mode 1)
(tool-bar-mode 0)

(require 'mic-paren)
(paren-activate)

;; (require 'ido)
;; (setq ido-enable-flex-matching t)
;; (setq ido-everywhere t)
;; ;(setq ido-use-filename-at-point 'guess)
;; ;(setq ido-file-extensions-order '(".org" ".txt" ".py" ".emacs" ".xml" ".el" ".ini" ".cfg" ".cnf"))
;; (ido-mode t)
;; (require 'ido-vertical-mode)
;; (ido-vertical-mode t)
