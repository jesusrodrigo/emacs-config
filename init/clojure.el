;;; Clojure
(require 'clojure-mode)
(require 'cider-mode)
(require 'cider-eldoc)

(add-hook 'clojure-mode-hook 'enable-paredit-mode)
(add-hook 'clojure-mode-hook 'cider-mode)

(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)

(setq cider-repl-pop-to-buffer-on-connect nil)
(setq cider-popup-stacktraces nil)
(setq cider-repl-popup-stacktraces t)
(setq cider-auto-select-error-buffer t)
(setq cider-stacktrace-default-filters '(tooling dup))
(setq cider-repl-display-in-current-window t)
(setq cider-repl-print-length 100)
(setq cider-prompt-save-file-on-load nil)
(setq cider-repl-result-prefix ";; => ")
;; (setq cider-repl-use-clojure-font-lock t)
(add-hook 'cider-repl-mode-hook 'subword-mode)
(add-hook 'cider-repl-mode-hook 'paredit-mode)
