;;; Clojure

(add-hook 'clojure-mode-hook #'paredit-mode)
(add-hook 'cider-mode-hook #'eldoc-mode)
(add-hook 'cider-repl-mode-hook #'paredit-mode)
