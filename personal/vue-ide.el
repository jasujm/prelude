(prelude-require-packages '(use-package vue-mode lsp-mode prettier-js))

(defun my-vue-setup ()
  "Custom Vue setup"
  (lsp)
  (prettier-js-mode))

(use-package lsp-mode
  :custom
  (lsp-vetur-format-default-formatter-css "none")
  (lsp-vetur-format-default-formatter-html "none")
  (lsp-vetur-format-default-formatter-js "none")
  (lsp-vetur-validation-template nil))

(require 'lsp-mode)
(use-package vue-mode
  :mode "\\.vue\\'"
  :config
  (add-hook 'vue-mode-hook 'my-vue-setup))
