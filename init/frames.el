(setq initial-frame-alist '((width  . 110)
                            (height . 55)
                            (tool-bar-lines . 0)))

(setq default-frame-alist '((width  . 110)
                            (height . 55)
                            (tool-bar-lines . 0)))

(scroll-bar-mode -1)
(menu-bar-mode -1)
(require 'frame-fns)
(defun set-selected-frame-dark ()
  (interactive)
  (let ((frame-name (get-frame-name (selected-frame))))
    (call-process-shell-command (concat
                                 "xprop -f _GTK_THEME_VARIANT 8u -set _GTK_THEME_VARIANT \"dark\" -name \""
                                 frame-name
                                 "\""))))

(if (window-system)
    (set-selected-frame-dark))
