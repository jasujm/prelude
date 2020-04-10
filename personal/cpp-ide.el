(prelude-require-packages '(flycheck helm-gtags company company-c-headers))

;; C/C++
(require 'cc-mode)
(defun my-cc-setup ()
  "Custom C/C++ setup."
  (subword-mode 1))
(add-hook 'c-mode-common-hook 'my-cc-setup)

;; C++ only

(require 'flycheck)
(defun my-c++-setup ()
  "Custom C++ setup."
  (c-set-style "stroustrup")
  (c-set-offset 'innamespace [0])
  (setq flycheck-gcc-language-standard "c++17"))
(add-hook 'c++-mode-hook 'my-c++-setup)

;; Helm
(require 'helm-gtags)
(add-hook 'c++-mode-hook 'helm-gtags-mode)
(define-key helm-gtags-mode-map (kbd "C-j") 'helm-gtags-select)
(define-key helm-gtags-mode-map (kbd "M-.") 'helm-gtags-dwim)
(define-key helm-gtags-mode-map (kbd "M-,") 'helm-gtags-pop-stack)

;; Company
(require 'company)
(add-to-list 'company-backends 'company-c-headers)
(define-key c-mode-base-map  (kbd "C-:") 'company-complete)
(define-key c-mode-base-map  (kbd "C-.") 'helm-company)

(prelude-require-package 'company-c-headers)
(require 'company-c-headers)
(add-to-list 'company-c-headers-path-system "/usr/include/c++/9/")
