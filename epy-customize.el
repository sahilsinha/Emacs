;;;; Config for customization
;;; Color-theme
(add-to-list 'load-path "~/.emacs.d/color-theme")
(add-to-list 'load-path "~/.emacs.d/color-theme/themes")
(require 'color-theme)
(color-theme-initialize)
(setq color-theme-is-global t)
;(color-theme-wombat+)
(color-theme-tangotango)

(provide 'epy-customize)