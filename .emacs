;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-enabled-themes (quote (yoshi)))
 '(custom-safe-themes
   (quote
    ("6c7db7fdf356cf6bde4236248b17b129624d397a8e662cf1264e41dab87a4a9a" "107420ec61832543bd769e5d6764bedb41ec3d2f8cd4d53a407f7aa74b493dac" "6db9acac88c82f69296751e6c6d808736d6ff251dcb34a1381be86efc14fef54" "b563a87aa29096e0b2e38889f7a5e3babde9982262181b65de9ce8b78e9324d5" "3fa07dd06f4aff80df2d820084db9ecbc007541ce7f15474f1d956c846a3238f" "e30f381d0e460e5b643118bcd10995e1ba3161a3d45411ef8dfe34879c9ae333" "da538070dddb68d64ef6743271a26efd47fbc17b52cc6526d932b9793f92b718" "003a9aa9e4acb50001a006cfde61a6c3012d373c4763b48ceb9d523ceba66829" "9b1c580339183a8661a84f5864a6c363260c80136bd20ac9f00d7e1d662e936a" "af717ca36fe8b44909c984669ee0de8dd8c43df656be67a50a1cf89ee41bde9a" "d21135150e22e58f8c656ec04530872831baebf5a1c3688030d119c114233c24" "cf284fac2a56d242ace50b6d2c438fcc6b4090137f1631e32bedf19495124600" "3eb93cd9a0da0f3e86b5d932ac0e3b5f0f50de7a0b805d4eb1f67782e9eb67a4" "64ca5a1381fa96cb86fd6c6b4d75b66dc9c4e0fc1288ee7d914ab8d2638e23a9" "b181ea0cc32303da7f9227361bb051bbb6c3105bb4f386ca22a06db319b08882" "66aea5b7326cf4117d63c6694822deeca10a03b98135aaaddb40af99430ea237" "d6db7498e2615025c419364764d5e9b09438dfe25b044b44e1f336501acd4f5b" "721bb3cb432bb6be7c58be27d583814e9c56806c06b4077797074b009f322509" "946e871c780b159c4bb9f580537e5d2f7dba1411143194447604ecbaf01bd90c" "73a13a70fd111a6cd47f3d4be2260b1e4b717dbf635a9caee6442c949fad41cd" "c616e584f7268aa3b63d08045a912b50863a34e7ea83e35fcab8537b75741956" "228c0559991fb3af427a6fa4f3a3ad51f905e20f481c697c6ca978c5683ebf43" "de0b7245463d92cba3362ec9fe0142f54d2bf929f971a8cdf33c0bf995250bcf" "1b27e3b3fce73b72725f3f7f040fd03081b576b1ce8bbdfcb0212920aec190ad" "962dacd99e5a99801ca7257f25be7be0cebc333ad07be97efd6ff59755e6148f" "c3c0a3702e1d6c0373a0f6a557788dfd49ec9e66e753fb24493579859c8e95ab" default)))
 '(markdown-command "/usr/bin/pandoc")
 '(package-selected-packages
   (quote
    (yoshi-theme tabbar web-mode-edit-element ox-gfm markdown-mode+ markdown-mode exec-path-from-shell company-tern etags-table etags-select web-mode indium cnfonts chinese-pyim neotree nlinum evil color-theme xterm-keybinder multiple-cursors org-plus-contrib)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Inziu Iosevka Slab SC" :foundry "CYEL" :slant normal :weight bold :height 128 :width normal)))))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(setq molokai-theme-kit t)

;(defun on-after-init ()
;  (unless (display-graphic-p (selected-frame))
;    (set-face-background 'default "unspecified-bg" (selected-frame))))

(add-hook 'window-setup-hook 'on-after-init)

;;(global-linum-mode 1) ; always show line numbers
;;(setq linum-format "%d ") ;set format
(global-nlinum-mode 1)
(setq nlinum-format " %d ") ;set format

;(setq x-select-enable-clipboard t) ;; enable copy C-c C-v
;(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

;透明
(set-frame-parameter (selected-frame) 'alpha (list 99 95))
(add-to-list 'default-frame-alist (cons 'alpha (list 98 95)))

(tool-bar-mode 0)  
(menu-bar-mode 1)
(scroll-bar-mode 0)

;; no startup msg  
(setq inhibit-startup-message t)

;; https://hugoheden.wordpress.com/2009/03/08/copypaste-with-emacs-in-terminal/
;; I prefer using the "clipboard" selection (the one the
;; typically is used by c-c/c-v) before the primary selection
;; (that uses mouse-select/middle-button-click)
(setq x-select-enable-clipboard t)


(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

;; set specific browser to open links
(setq browse-url-browser-function 'browse-url-firefox)

(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)


(setq browse-url-generic-program
      (cond
       ((eq window-system 'mac) "open") ; mac
       ((or (eq system-type 'gnu/linux) (eq system-type 'linux)) ; linux
        (executable-find "firefox"))
       ))


;; 标题
(setq frame-title-format
  '("emacs - " (buffer-file-name "%f"
    (dired-directory dired-directory "%b"))))

(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line


(require 'multiple-cursors)
;(global-set-key (kbd "C-S-x C-S-x") 'mc/edit-lines)
(global-set-key (kbd "C-h h") 'mc/edit-lines)

(set-face-attribute 'region nil :background "#f0f8ff" :foreground "#000000")

(add-to-list 'load-path "~/.emacs.d/powerline")
;;(load "powerline.el")
;;(require 'powerline)
;;(powerline-default-theme)
;;(powerline-raw mode-line-mule-info nil 'l)

(setq tab-width 4) ; or any other preferred value
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)
(setq tab-always-indent 'complete)
;(customize-variable (quote tab-stop-list))

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

;(add-to-list 'load-path "~/.emacs.d/airline-themes-1.7")
;(require 'airline-themes)

;(load-theme 'airline-badwolf)
(setq c-default-style "gun" c-basic-offset 4)

;(require 'evil)
;;(evil-mode 1)

 ;; integrate clipboard with x11
 ;(add-to-list 'load-path "~/.emacs.d/elpa/xclip-1.3/")
 ;(require 'xclip)
 ;(xclip-mode 1)

; 缩进块
;(require 'highlight-indentation)
;(add-hook 'prog-mode-hook 'highlight-indentation-mode)
;(set-face-background 'highlight-indentation-face "#696969")

    (add-to-list 'package-archives
                 '("melpa" . "http://melpa.org/packages/"))

(require 'all-the-icons)


(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
;;(setq neo-theme (if (display-graphic-p) 'arrow))
;(setq neo-theme 'icons)

(add-to-list 'load-path "/some/path/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(neotree-toggle)


;;disable background color
;(defun on-after-init ()
;(unless (display-graphic-p (selected-frame))
;    (set-face-background 'default "unspecified-bg" (selected-frame))))

;(add-hook 'window-setup-hook 'on-after-init)

;(set-frame-width (selected-frame) 110)
;(set-frame-height (selected-frame) 33)

;; initial window
(setq initial-frame-alist
      '(
        (width . 130) ; character
        (height . 50) ; lines
        ))

;; default/sebsequent window
(setq default-frame-alist
      '(
        (width . 130) ; character
        (height . 50) ; lines
))

;(setq window-size-fixed '1)

;中文输入法
(require 'chinese-pyim)
(require 'chinese-pyim-basedict) ; 拼音词库设置，五笔用户 *不需要* 此行设置
(chinese-pyim-basedict-enable)   ; 拼音词库，五笔用户 *不需要* 此行设置
(setq pyim-enable-words-predict nil)


(setq default-input-method "chinese-pyim")
(global-set-key (kbd "C-\\") 'toggle-input-method)

;光标颜色
(set-cursor-color "#ffffff")

;; after copy Ctrl+c in Linux X11, you can paste by `yank' in emacs
(setq x-select-enable-clipboard t)

;; after mouse selection in X11, you can paste by `yank' in emacs
(setq x-select-enable-primary t)

(set-face-bold-p 'bold nil)

;; fontify code in code blocks
;;(setq org-src-fontify-natively t)

(require 'cnfonts)
;; 让 cnfonts 随着 Emacs 自动生效。
;(cnfonts-enable)
;; 让 spacemacs mode-line 中的 Unicode 图标正确显示。
;; (cnfonts-set-spacemacs-fallback-fonts)

(company-mode)


(require 'indium)



;; Markdown 模式
;;-----------------------------------------------------
(require 'package)
(add-to-list 'package-archives
	                  '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

;;(setq org-export-backends (quote (ascii html icalendar latex md)))
;;-----------------------------------------------------

;; web-mode
;;-----------------------------------------------------
(require 'package)

;; If you want to use latest version
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;; If you want to use last tagged version
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

(setq web-mode-ac-sources-alist
  '(("css" . (ac-source-css-property))
    ("html" . (ac-source-words-in-buffer ac-source-abbrev))))

(setq web-mode-ac-sources-alist
  '(("php" . (ac-source-yasnippet ac-source-php-auto-yasnippets))
    ("html" . (ac-source-emmet-html-aliases ac-source-emmet-html-snippets))
    ("css" . (ac-source-css-property ac-source-emmet-css-snippets))))

(add-hook 'web-mode-before-auto-complete-hooks
          '(lambda ()
             (let ((web-mode-cur-language
                    (web-mode-language-at-pos)))
               (if (string= web-mode-cur-language "php")
                   (yas-activate-extra-mode 'php-mode)
                 (yas-deactivate-extra-mode 'php-mode))
               (if (string= web-mode-cur-language "css")
                   (setq emmet-use-css-transform t)
                 (setq emmet-use-css-transform nil)))))


;;Auto-pairing
(setq web-mode-enable-auto-pairing t)
;;CSS colorization
(setq web-mode-enable-css-colorization t)
;;Block face: can be used to set blocks background and default foreground (see web-mode-block-face)
(setq web-mode-enable-block-face t)
;;Part face: can be used to set parts background and default foreground (see web-mode-script-face and web-mode-style-face which inheritate from web-mode-part-face)
(setq web-mode-enable-part-face t)
;;Comment keywords (see web-mode-comment-keyword-face)
(setq web-mode-enable-comment-keywords t)
;;Heredoc (cf. PHP strings) fontification (when the identifier is <<<EOTHTML or <<<EOTJAVASCRIPT)
(setq web-mode-enable-heredoc-fontification t)

;;Context-aware auto-completion
;;If you have auto-complete installed, you can set up per-language ac-sources with web-mode-ac-sources-alist:
(setq web-mode-ac-sources-alist
  '(("css" . (ac-source-css-property))
    ("html" . (ac-source-words-in-buffer ac-source-abbrev))))

;;Add auto-pair
(setq web-mode-extra-auto-pairs
      '(("erb"  . (("beg" "end")))
        ("php"  . (("beg" "end")
                   ("beg" "end")))
       ))
;;-----------------------------------------------------

;;Javascript 插件
;;-----------------------------------------------------
;; Javascript
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; Better imenu
(add-hook 'js2-mode-hook #'js2-imenu-extras-mode)

(require 'js2-refactor)
(require 'xref-js2)

(add-hook 'js2-mode-hook #'js2-refactor-mode)
(js2r-add-keybindings-with-prefix "C-c C-r")
(define-key js2-mode-map (kbd "C-k") #'js2r-kill)

;; js-mode (which js2 is based on) binds "M-." which conflicts with xref, so
;; unbind it.
(define-key js-mode-map (kbd "M-.") nil)

(add-hook 'js2-mode-hook (lambda ()
  (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t)))

(define-key js2-mode-map (kbd "C-k") #'js2r-kill)

(require 'company)
(require 'company-tern)

(add-to-list 'company-backends 'company-tern)
(add-hook 'js2-mode-hook (lambda ()
                           (tern-mode)
                           (company-mode)))
                           
;; Disable completion keybindings, as we use xref-js2 instead
(define-key tern-mode-keymap (kbd "M-.") nil)
(define-key tern-mode-keymap (kbd "M-,") nil)

(package-initialize)

(defmacro try-install (pkg)
  `(unless (package-installed-p ,pkg)
     (package-refresh-contents)
     (package-install ,pkg)))

(try-install 'tern)
(try-install 'company)
(try-install 'company-tern)
;;-----------------------------------------------------
