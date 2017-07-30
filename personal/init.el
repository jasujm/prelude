;; Helm
(require 'prelude-helm-everywhere)

;; Flyspell
(require 'flyspell)
(define-key flyspell-mode-map (kbd "C-.") nil)

;; Magit
(require 'magit)
(setq git-commit-summary-max-length 80)
(setq git-commit-fill-column 80)

;; Yasnippet
(require 'yasnippet)
(yas-global-mode 1)
