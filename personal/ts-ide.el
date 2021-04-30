(prelude-require-packages '(use-package typescript-mode lsp-mode format-all))

(require 'lsp-mode)
(require 'format-all)
(defun my-ts-setup ()
  "Custom Typescript setup"
  (lsp)
  (format-all-mode t))

(require 'use-package)
(require 'typescript-mode)
(use-package typescript-mode
  :mode "\\.tsx?\\'"
  :config
  (add-hook 'typescript-mode-hook 'my-ts-setup))
