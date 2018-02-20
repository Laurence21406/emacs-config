(package-initialize)
(add-to-list 'load-path "D:/Emacs25.3/.emacs.d/lisp/")
;;package management
(require 'init-packages)
(require 'init-better-defaults)
(require 'init-keybindings)
(require 'init-org)
(require 'init-ui)

(require 'helm-config)


(load-theme 'monokai 1)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (aggressive-indent flycheck helm yasnippet-snippets company hungry-delete swiper counsel smartparens nodejs-repl exec-path-from-shell monokai-theme yasnippet markdown-mode)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family #("微软雅黑" 0 4 (charset utf-8)) :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))

(add-hook 'after-init-hook #'global-flycheck-mode)


;;(add-to-list 'my/packages 'monokai-theme)

