#!/usr/local/bin/emacs --script

(require 'package)
(add-to-list 'package-archives
			 '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)
(setq emacs-cider-packages
      '(cider paredit company rainbow-delimiters magit clojure-snippets
			  flx-ido undo-tree smex ido-ubiquitous projectile))
(dolist (pkg emacs-cider-packages)
  (condition-case err
	  (package-install pkg)
	(error
	 (message "%s" (error-message-string err))
	 nil)))
