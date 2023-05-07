(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(require 'package)
(package-initialize)

(set-frame-font "Monaco 14")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes '(tango-dark))
 '(display-line-numbers-type 'relative)
 '(display-time-mode t)
 '(package-selected-packages
   '(gdscript-mode ripgrep processing-mode ivy eglot lsp-mode omnisharp csharp-mode))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq make-backup-files nil)
(setq inhibit-startup-screen t)
(tool-bar-mode 0)
(display-time-mode 1)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(setq display-line-numbers-type 'relative)
(electric-pair-mode t)
(add-hook 'prog-mode-hook #'show-paren-mode)
(column-number-mode t)
(global-auto-revert-mode t)
(add-hook 'prog-mode-hook #'hs-minor-mode)
(when (display-graphic-p) (toggle-scroll-bar -1))
(add-to-list 'default-frame-alist '(width . 100))
(add-to-list 'default-frame-alist '(height . 50))
(defalias 'yes-or-no-p 'y-or-n-p)
(setq indent-tabs-mode t)
(setq default-tab-width 4)
(setq tab-width 4)

(ivy-mode)
;; (setq ivy-use-viertual-buffers nil)
;; (setq enable-recursive-minibuffers t)

(blink-cursor-mode 0)

;; (global-set-key (kbd "<f8>") 'eval-last-sexp)
;; 
;; (global-set-key (kbd "TAB") 'self-insert-command)
;; 
;; (global-set-key (kbd "<C-tab>") 'next-buffer)
;; (global-set-key (kbd "<C-S-tab>") 'previous-buffer)
;; 
;; (global-set-key (kbd "s-w") 'evil-delete-buffer)
;; 
;; (global-set-key (kbd "C-s-f") 'delete-other-windows)
;; (global-set-key (kbd "s-RET") 'delete-window)

;; use-package
;; counsel
;; rip-grep
