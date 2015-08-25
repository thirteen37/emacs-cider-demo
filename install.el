#!/usr/local/bin/emacs --script

(require 'package)
(add-to-list 'package-archives
			 '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)
(setq emacs-cider-packages
      '(cider paredit company rainbow-delimiters magit ido-ubiquitous
			  smex flx-ido undo-tree))
(dolist (pkg emacs-cider-packages)
  (condition-case err
	  (package-install pkg)
	(error
	 (message "%s" (error-message-string err)))))
