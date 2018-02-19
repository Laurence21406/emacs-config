;;视觉层配置


;;设置窗口位置为屏库右上角(820,0)
(set-frame-position (selected-frame) 820 0)
;;设置宽和高,我的十寸小本是110,33,大家可以调整这个参数来适应自己屏幕大小
(set-frame-width (selected-frame) 100)
(set-frame-height (selected-frame) 33)

;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode
(tool-bar-mode -1)
;;关闭文件滑动控件
(scroll-bar-mode -1)
;;关闭启动帮助画面
(setq inhibit-splash-screen t)
;; 更改光标的样式
(setq-default cursor-type 'bar)
;;全屏
;;(setq  initial-frame-alist (quote ((fullscreen . maximized))))
;;高亮当前行
(global-hl-line-mode t)

(provide 'init-ui)
