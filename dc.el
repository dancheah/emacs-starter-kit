;;; Set up simple note
(add-to-list 'load-path "~/.emacs.d/simplenote.el")
(require 'simplenote)
;;; TODO: figure out solution for password
(setq simplenote-email "")
(setq simplenote-password "")
(simplenote-setup)

;;; Set up haskell-mode
(load "~/.emacs.d/haskell-mode-2.8.0/haskell-site-file")
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'font-lock-mode)

;;; I like having a menu bar
(menu-bar-mode t)
