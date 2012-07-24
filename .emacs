(add-to-list 'load-path "~/.emacs.d")
;;;(load-file "~/.emacs.d/epy-init.el")
(require 'epy-setup) ;; It will setup other loads, it is required!
(require 'epy-python) ;; If you want the python facilities [optional]
(require 'epy-completion) ;; If you want the autocompletion settings [optional]
(require 'epy-editing) ;; For configurations related to editing [optional]
(require 'epy-bindings) ;; For my suggested keybindings [optional]
(require 'epy-customize) ;; For customization look [optional]

;;; Enable django snippets:
(epy-django-snippets)

;;; Prevent creating backup files with appended ~
(setq make-backup-files nil)
