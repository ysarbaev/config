;(add-to-list 'load-path "~/.emacs.d/ergoemacs-mode")
;(require 'ergoemacs-mode)

;(setq ergoemacs-theme nil)
;(setq ergoemacs-keyboard-layout "us")
;(ergoemacs-mode 1)

(require 'package)
(add-to-list 'package-archives 
	     '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)

(defvar my-packages '(starter-kit
		      starter-kit-lisp
		      starter-kit-bindings
		      starter-kit-eshell
		      clojure-mode
		      clojure-test-mode
		      cider))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)

;(setq mac-option-key-is-meta nil)
;(setq mac-command-key-is-meta t)
;(setq mac-command-modifier 'meta)
;(setq mac-option-modifier nil)

