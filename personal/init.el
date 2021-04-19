(prelude-require-packages '(flyspell magit yasnippet ace-window))

;; Flyspell
(require 'flyspell)
(define-key flyspell-mode-map (kbd "C-.") nil)

;; Magit
(require 'magit)
(global-set-key (kbd "C-c g") 'magit-status)
(global-set-key (kbd "C-c C-g") 'magit-dispatch-popup)
(setq git-commit-summary-max-length 80)
(setq fill-column 80)

;; Yasnippet
(prelude-require-packages '(yasnippet yasnippet-snippets))
(require 'yasnippet)
(yas-global-mode 1)

;; ace-window
(require 'ace-window)
(global-set-key (kbd "C-x o") 'ace-window)
