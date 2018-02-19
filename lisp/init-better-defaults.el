;;增强内置功能

;;关闭警告音
(setq ring-bell-function 'ignore)
;;自动加载外部修改过的文件
(global-auto-revert-mode t)
;;显示行号
(global-linum-mode t)

;;(abbrev-mode t)
;; (define-abbrev-table 'global-abbrev-table '(
                                              ;; signature
                                              ;;("8zl" "zilongshanren")
                                              ;; Microsoft
                                              ;;("8ms" "Macrosoft")
                                              ;;))
;;关闭自动生成的备份文件
(setq make-backup-files nil)
;;关闭自动保存文件
(setq auto-save-default nil)

(recentf-mode 1)			
(setq recentf-max-menu-items 25)

;;括号匹配
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
;;删除选中文件
(delete-selection-mode t)
;;设置一个别名将其简化为只输入y or n
(fset 'yes-or-no-p 'y-or-n-p)

;;代码缩进(indent-region)
(defun indent-buffer()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer()
  (interactive)
  (save-excursion
    (if (region-active-p)
        (progn
          (indent-region (region-beginning) (region-end))
          (message "Indent selected region."))
      (progn
        (indent-buffer)
        (message "Indent buffer.")))))
(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)

;;Hippie补全
(setq hippie-expand-try-function-list '(try-expand-debbrev
                                        try-expand-debbrev-all-buffers
                                        try-expand-debbrev-from-kill
                                        try-complete-file-name-partially
                                        try-complete-file-name
                                        try-expand-all-abbrevs
                                        try-expand-list
                                        try-expand-line
                                        try-complete-lisp-symbol-partially
                                        try-complete-lisp-symbol))
(global-set-key (kbd "S-\\") 'hippie-expend)


(put 'dired-find-alternate-file 'disabled nil)

;; 主动加载 Dired Mode
;; (require 'dired)
;; (defined-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)

;; 延迟加载
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))
(require 'dired-x)
(setq dired-dwin-target 1)

(provide 'init-better-defaults)
