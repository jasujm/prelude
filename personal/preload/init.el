(setq prelude-theme 'deeper-blue)

;; Helm gtags
; This is hackish-y, but apparently suggested key mapping needs to be defined
; before loading Helm
(custom-set-variables
 '(helm-gtags-prefix-key "\C-c \C-g")
 '(helm-gtags-suggested-key-mapping t)
 '(helm-gtags-auto-update t))
