(require 'ido)
(require 'ido-vertical-mode)

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(setq ido-use-filename-at-point t)
(setq ido-create-new-buffer 'prompt)

(ido-mode 1)
(ido-vertical-mode 1)
