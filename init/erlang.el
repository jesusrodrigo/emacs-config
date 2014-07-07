
(setq load-path (cons "/Users/jesus/local/lib/erlang/lib/tools-2.6.6.3/emacs/"
                      load-path))
(setq erlang-root-dir "/Users/jesus/local/lib/erlang")
(setq exec-path (cons "/Users/jesus/local/lib/erlang/bin" exec-path))
(require 'erlang-start)

(setq inferior-erlang-machine-options '("-sname" "emacs"))

(add-hook 'erlang-mode-hook (lambda ()
                              (erlang-font-lock-level-3)
                              (setq erlang-electric-commands t)))

(add-to-list 'load-path "/Users/jesus/.emacs.d/libraries/distel/elisp/")
(require 'distel)
(distel-setup)