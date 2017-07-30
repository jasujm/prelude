;; C/C++
(require 'cc-mode)
(defun my-cc-setup ()
  "Custom C++ setup."
  (c-set-style "stroustrup")
  (c-set-offset 'innamespace [0])
  (subword-mode 1))
(add-hook 'c-mode-common-hook 'my-cc-setup)

;; Helm
(require 'helm-gtags)
(add-hook 'c++-mode-hook 'helm-gtags-mode)
(define-key helm-gtags-mode-map (kbd "C-c g a") 'helm-gtags-tags-in-this-function)
(define-key helm-gtags-mode-map (kbd "C-j") 'helm-gtags-select)
(define-key helm-gtags-mode-map (kbd "M-.") 'helm-gtags-dwim)
(define-key helm-gtags-mode-map (kbd "M-,") 'helm-gtags-pop-stack)

;; Company
(require 'company)
(setq company-backends (delete 'company-clang company-backends))
(add-to-list 'company-backends 'company-c-headers)
(define-key c-mode-base-map  (kbd "C-:") 'company-complete)
(define-key c-mode-base-map  (kbd "C-.") 'helm-company)

(require 'company-c-headers)
(add-to-list 'company-c-headers-path-system "/usr/include/c++/5.4.0/")