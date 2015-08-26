# Emacs+Cider demo

Files for an introductory presentation on Emacs+Cider.

## Vagrant

You can test out Emacs, Cider, and Clojure in a self-contained VM
using [Vagrant](https://www.vagrantup.com/).

If you have a Vagrant installed, just run `vagrant up` to bring up the
box, and `vagrant ssh` to log in and start hacking.

## Ubuntu

The `install.sh` script is used for provisioning Vagrant but the
commands there should also work to install the relevant dependencies
on any Ubuntu 14.04 system.

## Emacs

This demo uses Emacs 24.5 (>=24.4 needed for Magit filenotify). This
is built from source.

## Config files

Copies of the config files used are in `files/`.

## Emacs packages

The following Emacs packages are installed:

* [Cider](https://github.com/clojure-emacs/cider)
* [Paredit](http://mumble.net/~campbell/emacs/paredit.html) - *The*
  structured editing mode
* [Company](http://company-mode.github.io/) - In-buffer completion,
  aka code completion
* [Rainbow Delimiters](https://github.com/Fanael/rainbow-delimiters) -
  Highlight parenthesis
* [YASnippet](https://github.com/capitaomorte/yasnippet) -
  Textmate-style templates
* [Midje mode](https://github.com/dnaumov/midje-mode) - Integration
  with Brian Marick's Midje test framework. Currently broken

Nice-to-haves:

* [Magit](http://magit.vc/) - Git interface
* [Projectile](https://github.com/bbatsov/projectile) - Project file
  management
* [ido-ubiquitous](https://github.com/DarwinAwardWinner/ido-ubiquitous) -
  Mini-buffer completion, aka command and file name completion
* [smex](https://github.com/nonsequitur/smex) - Mini-buffer
  completion, aka command completion
* [flx-ido](https://github.com/lewang/flx) - Flexible string matching
  for ido
* [undo-tree](http://www.dr-qubit.org/undo-tree/undo-tree.el) - Undo
  visualization

Alternatively, use
[Emacs Prelude](https://github.com/bbatsov/prelude).
