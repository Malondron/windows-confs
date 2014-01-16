(add-to-list 'load-path "c:/.emacs.d/color-theme-6.6.0/")
(require 'color-theme)
(add-to-list 'load-path "c:/.emacs.d/php-mode-1.5.0/")
(require 'php-mode)

(add-to-list 'load-path "c:/.emacs.d/evil")
(require 'evil)
(evil-mode 1)
(add-to-list 'load-path "c:/.emacs.d/python-mode/")
(add-to-list 'load-path "c:/.emacs.d/paredit/")
(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python2.6" . python-mode)) 

(setq python-python-command "C:/Programs/cygwin/bin/python2.6.exe")

(set-default 'cursor-type 'bar)
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(set-default-font "-outline-Consolas-normal-normal-normal-mono-13-*-*-*-c-*-iso8859-1")
(add-to-list 'load-path "c:/.emacs.d/elpa/color-theme-solarized-20130307.1350/")
(require 'color-theme-solarized)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
;     (color-theme-dark-kiss)
     (color-theme-solarized-dark)
     ))


;(setq inferior-lisp-program "c:/users/andreas/clisp/clisp")
;(add-to-list 'load-path "c:/users/andreas/slime/")
;(require 'slime)
;(slime-setup)

(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

(add-to-list 'auto-mode-alist '("\\.f\\'" . f90-mode))
(add-to-list 'auto-mode-alist '("\.cljs$" . clojure-mode))

(setq default-directory "C:/Users/andreas/")

;; auto complete
(add-to-list 'load-path "c:/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
(setq ac-delay 0.5) ;; eclipse uses 500ms
 
;; configure auto complete to work in slime
(add-to-list 'load-path "~/.emacs.d/ac-slime")
(require 'ac-slime)
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)
(setq nrepl-lein-command "c:/Users/andreas/lein.bat")
(require 'package) 
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(jabber-account-list (quote (("kissavos@gmail.com" (:network-server . "talk.google.com") (:port . 5223) (:connection-type . ssl))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
