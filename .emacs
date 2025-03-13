(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("e13beeb34b932f309fb2c360a04a460821ca99fe58f69e65557d6c1b10ba18c7" default))
 '(package-selected-packages
   '(magit ido-at-point mono-complete ini firefox-javascript-repl indium hyperkitty hyperlist-mode hyperspace hyperstitional-themes hyprlang-ts-mode epresent org org-roam org-modern pdf-tools ac-alchemist ac-c-headers ac-capf ac-clang ac-dcd ac-emacs-eclim ac-emmet ac-emoji ac-etags ac-geiser ac-haskell-process ac-helm ac-html ac-html-angular ac-html-bootstrap ac-html-csswatcher ac-inf-ruby ac-ispell ac-js2 ac-math ac-mozc ac-octave ac-php ac-php-core ac-racer ac-rtags ac-skk ac-slime ac-sly academic-phrases accent ace-flyspell ace-isearch ace-jump-buffer ace-jump-helm-line ace-jump-mode ace-jump-zap ace-link ace-mc ace-pinyin ace-popup-menu achievements auto-correct php-mode gruber-darker-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(setq inhibit-startup-screen -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(toggle-scroll-bar -1)

(add-to-list 'default-frame-alist
	     '(font . "Iosevka 12"))
(set-frame-font "Iosevka 12")
;;(require 'powerline)
;;(powerline-default-theme)

(set-frame-parameter nil 'alpha-background 90)
(add-to-list 'default-frame-alist '(alpha-background . 90))

(setq select-enable-clipboard t)
(setq save-interprogram-paste-before-kill t)

(setq org-roam-capture-templates
      '(("m" "main" plain
         "%?"
         :if-new (file+head "main/${slug}.org"
                            "#+title: ${title}\n")
         :immediate-finish t
         :unnarrowed t)
        ("r" "reference" plain "%?"
         :if-new
         (file+head "reference/${title}.org" "#+title: ${title}\n")
         :immediate-finish t
         :unnarrowed t)
        ("a" "article" plain "%?"
         :if-new
         (file+head "articles/${title}.org" "#+title: ${title}\n#+filetags: :article:\n")
         :immediate-finish t
         :unnarrowed t)))

(setq org-roam-node-display-template
      (concat "${type:15} ${title:*} " (propertize "${tags:10}" 'face 'org-tag)))
