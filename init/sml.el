;(load "~/.emacs.d/libraries/sml-mode/sml-mode-startup")

(setq sml-use-command "PolyML.use \"%s\"")

(setq sml-program-name "poly")

(defun my-sml-mode-hook () "Local defaults for SML mode"
  (setq indent-tabs-mode nil))
(add-hook 'sml-mode-hook 'my-sml-mode-hook)
