(prelude-require-packages '(flyspell magit yasnippet ace-window helm-company))

;; Flyspell
(require 'flyspell)
(define-key flyspell-mode-map (kbd "C-.") nil)

;; Magit
(require 'magit)
(setq git-commit-summary-max-length 80)
(setq fill-column 80)

;; Yasnippet
(prelude-require-packages '(yasnippet yasnippet-snippets))
(require 'yasnippet)
(yas-global-mode 1)

;; ace-window
(require 'ace-window)
(global-set-key (kbd "C-x o") 'ace-window)

;; helm-company
(require 'helm-company)
(eval-after-load 'company
  '(progn
     (define-key company-mode-map (kbd "C-.") 'helm-company)
     (define-key company-active-map (kbd "C-.") 'helm-company)))
