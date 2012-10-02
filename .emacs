;; Emacs directory
(add-to-list 'load-path "~/.emacs.d")

;; Init files
;;(load-file "~/.emacs.d/epy-init.el")
(require 'epy-setup) ;; It will setup other loads, it is required!
(require 'epy-python) ;; If you want the python facilities [optional]
(require 'epy-completion) ;; If you want the autocompletion settings [optional]
(require 'epy-editing) ;; For configurations related to editing [optional]
(require 'epy-bindings) ;; For my suggested keybindings [optional]
(require 'epy-customize) ;; For customization look [optional]

;; Additional files
(require 'russian-no-windows) ;; For MacOS russian layout

;; Set up UNICODE
;; (setq locale-coding-system 'utf-8)
;; (set-terminal-coding-system 'utf-8)
;; (set-keyboard-coding-system 'utf-8)
;; (set-selection-coding-system 'utf-8)
;; (prefer-coding-system 'utf-8)
(set-default-font "-*-*-medium-r-normal-*-14-*-*-*-*-*-iso10646-1")
(set-language-environment 'UTF-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'mule-utf-8)
(setq default-input-method 'russian-computer)
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))

;; Alt+[arrow_key] navigation
(windmove-default-keybindings 'meta)

;; Unset Home key[ESC]
;;(global-unset-key (kbd "<ESC>"))
;;(global-unset-key "\e")
(global-unset-key "\e\e")
;;(global-set-key (kbd "<escape>") 'nil)
;;(global-set-key [?\e] 'nil)
;;(global-unset-key [?\e])
;;(global-unset-key [?\e ?[])
;;(global-unset-key "\e[")

;; Save session before exit
(desktop-save-mode t)

;; MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;;DSVN
(autoload 'svn-status "dsvn" "Run `svn status'." t)
(autoload 'svn-update "dsvn" "Run `svn update'." t)

;;ORG-mode
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

;; Enable django snippets:
(epy-django-snippets)

;; Prevent creating backup files with appended ~
(setq make-backup-files nil)

;; Disable warnings
(setq warning-suppress-types nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("3580fb8e37ee9e0bcb60762b81260290329a97f3ca19249569d404fce422342f" default)))
 '(delete-selection-mode nil)
 '(mark-even-if-inactive t)
 '(scroll-bar-mode (quote right))
 '(transient-mark-mode 1))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
