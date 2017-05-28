(defun my-python-setup nil
  "Custom Python setup."
  (pyenv-mode 1))
(add-hook 'python-mode-hook 'my-python-setup)

(require 'company)
(add-to-list 'company-backends 'company-anaconda)

(require 'anaconda-mode)
(define-key anaconda-mode-map  (kbd "C-.") 'anaconda-mode-complete)
