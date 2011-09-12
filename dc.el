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

;;; Setup scala mode
(add-to-list 'load-path "/opt/personal/pkg/scala/misc/scala-tool-support/emacs")
(require 'scala-mode-auto)

;;; Setup ensime
;; Load the ensime lisp code...
(add-to-list 'load-path "/opt/personal/pkg/ensime/elisp")
(require 'ensime)

;; This step causes the ensime-mode to be started whenever
;; scala-mode is started for a buffer. You may have to customize this step
;; if you're not using the standard scala mode.
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;; MINI HOWTO: 
;; Open .scala file. M-x ensime (once per project)

;;; I like having a menu bar
(menu-bar-mode t)
