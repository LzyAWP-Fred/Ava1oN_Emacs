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
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-enabled-themes (quote (deeper-blue)))
 '(custom-safe-themes
   (quote
    ("946e871c780b159c4bb9f580537e5d2f7dba1411143194447604ecbaf01bd90c" "73a13a70fd111a6cd47f3d4be2260b1e4b717dbf635a9caee6442c949fad41cd" "c616e584f7268aa3b63d08045a912b50863a34e7ea83e35fcab8537b75741956" "228c0559991fb3af427a6fa4f3a3ad51f905e20f481c697c6ca978c5683ebf43" "de0b7245463d92cba3362ec9fe0142f54d2bf929f971a8cdf33c0bf995250bcf" "1b27e3b3fce73b72725f3f7f040fd03081b576b1ce8bbdfcb0212920aec190ad" "962dacd99e5a99801ca7257f25be7be0cebc333ad07be97efd6ff59755e6148f" "c3c0a3702e1d6c0373a0f6a557788dfd49ec9e66e753fb24493579859c8e95ab" default)))
 '(package-selected-packages
   (quote
    (nlinum evil color-theme htmlize xterm-keybinder multiple-cursors org-plus-contrib)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Iosevka Term" :foundry "CYEL" :slant normal :weight bold :height 128 :width normal)))))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(setq molokai-theme-kit t)

(defun on-after-init ()
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))

(add-hook 'window-setup-hook 'on-after-init)

;;(global-linum-mode 1) ; always show line numbers
;;(setq linum-format "%d ") ;set format
(global-nlinum-mode 1)
(setq nlinum-format " %d ") ;set format

;(setq x-select-enable-clipboard t) ;; enable copy C-c C-v
;(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

(set-frame-parameter (selected-frame) 'alpha (list 93 80))

(add-to-list 'default-frame-alist (cons 'alpha (list 93 80)))

(tool-bar-mode 0)  
(menu-bar-mode 0)
(scroll-bar-mode 1)

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
(load "powerline.el")
(require 'powerline)
(powerline-default-theme)
(powerline-raw mode-line-mule-info nil 'l)

(setq tab-width 4) ; or any other preferred value
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)
(setq tab-always-indent 'complete)
;(customize-variable (quote tab-stop-list))

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

(add-to-list 'load-path "~/.emacs.d/airline-themes-1.7")
(require 'airline-themes)

(load-theme 'airline-badwolf)
(setq c-default-style "gun" c-basic-offset 4)

(require 'evil)
;;(evil-mode 1)

 ;; integrate clipboard with x11
 (add-to-list 'load-path "~/.emacs.d/elpa/xclip-1.3/")
 (require 'xclip)
 (xclip-mode 1)

(require 'highlight-indentation)
(add-hook 'prog-mode-hook 'highlight-indentation-mode)
(set-face-background 'highlight-indentation-face "#696969")
