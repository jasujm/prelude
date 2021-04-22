(prelude-require-packages '(use-package vue-mode company-lsp lsp-mode))

(require 'lsp-mode)

(use-package lsp-mode
  :commands lsp)

;; for completions
(use-package company-lsp
  :after lsp-mode
  :config (push 'company-lsp company-backends))

(use-package vue-mode
  :mode "\\.vue\\'"
  :config
  (add-hook 'vue-mode-hook #'lsp))
