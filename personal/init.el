;; General editor settings
(global-undo-tree-mode 0) ; Prelude thinks I don't want the normal emacs undo

;; Flyspell
(require 'flyspell)
(define-key flyspell-mode-map (kbd "C-.") nil)

;; Magit
(require 'magit)
(setq git-commit-summary-max-length 80)
(setq git-commit-fill-column 80)

;; Yasnippet
; I have some problems installing yasnippet from MELPA. Working around...
(add-to-list 'load-path "~/.emacs.d/personal/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)
