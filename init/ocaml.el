(require 'cl)

;; -- Tuareg mode -----------------------------------------
(require 'tuareg)
(setq auto-mode-alist 
      (append '(("\\.ml[ily]?$" . tuareg-mode))
              auto-mode-alist))

;; -- opam and utop setup --------------------------------
;; Setup environment variables using opam
(defun opam-vars ()
  (let* ((x (shell-command-to-string "opam config env"))
         (x (split-string x "\n"))
         (x (remove-if (lambda (x) (equal x "")) x))
         (x (mapcar (lambda (x) (split-string x ";")) x))
         (x (mapcar (lambda (x) (car x)) x))
         (x (mapcar (lambda (x) (split-string x "=")) x)))
    x))
(dolist (var (opam-vars))
  (setenv (car var) (substring (cadr var) 1 -1)))
;; The following simpler alternative works as of opam 1.1
;; (dolist
;;    (var (car (read-from-string
;;         (shell-command-to-string "opam config env --sexp"))))
;;  (setenv (car var) (cadr var)))
;; Update the emacs path
(setq exec-path (split-string (getenv "PATH") path-separator))
;; Update the emacs load path
;; (push (concat (getenv "OCAML_TOPLEVEL_PATH")
;;               "/../../share/emacs/site-lisp") load-path)
;; Automatically load utop.el
(autoload 'utop "utop" "Toplevel for OCaml" t)
(autoload 'utop-setup-ocaml-buffer "utop" "Toplevel for OCaml" t)
(add-hook 'tuareg-mode-hook 'utop-setup-ocaml-buffer)

;; -- merlin setup ---------------------------------------

;; (setq opam-share (substring (shell-command-to-string "opam config var share") 0 -1))
;; (add-to-list 'load-path (concat opam-share "/emacs/site-lisp"))
(require 'merlin)

;; Enable Merlin for ML buffers
(add-hook 'tuareg-mode-hook 'merlin-mode)

;; So you can do it on a mac, where `C-<up>` and `C-<down>` are used
;; by spaces.
(define-key merlin-mode-map
  (kbd "C-c <up>") 'merlin-type-enclosing-go-up)
(define-key merlin-mode-map
  (kbd "C-c <down>") 'merlin-type-enclosing-go-down)
(set-face-background 'merlin-type-face "#88FF44")

(setq merlin-use-auto-complete-mode t)
