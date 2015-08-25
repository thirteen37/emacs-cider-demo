(package-initialize)

;; mini-buffer completion
(ido-mode 1)
(ido-everywhere 1)
(ido-ubiquitous-mode 1)
(smex-initialize)
(global-set-key (kbd "M-x") smex)
(global-set-key (kbd "M-X") smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") execute-extended-command)
(flx-ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

;; code completion
(global-company-mode)					 

;; Undo
(global-undo-tree-mode)

;; YASnippets
(yas-global-mode 1)

;; Projectile
(projectile-global-mode)

;; Cider mode
(add-hook 'cider-mode-hook #'eldoc-mode)
(add-hook 'cider-repl-mode-hook #'subword-mode)
(add-hook 'cider-repl-mode-hook #'paredit-mode) 
(add-hook 'cider-repl-mode-hook #'rainbow-delimiters-mode)
