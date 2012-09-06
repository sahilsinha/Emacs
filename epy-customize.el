;;;; Config for customization
;;; Color-theme
;;(add-to-list 'load-path "~/.emacs.d/color-theme")
;;(add-to-list 'load-path "~/.emacs.d/color-theme/themes")
;;(require 'color-theme)
;;(color-theme-initialize)
;;(setq color-theme-is-global t)
;;(color-theme-tangotango)
;;;(color-theme-wombat+)

;;; Color-theme-solarized
(add-to-list 'load-path "~/.emacs.d/color-theme")
(add-to-list 'custom-theme-load-path "~/.emacs.d/color-theme/themes")
(load-theme 'zenburn t)
(provide 'epy-customize)
