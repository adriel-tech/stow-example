## stow-example dotfiles

These are example 'dotfiles' managed with [xstow](https://www.freshports.org/sysutils/xstow/) and git.
This is a basic repo being used as an example for
[this blog post](https://adriel-tech.github.io/bastillebsd/freebsd13/2021/11/12/BastilleBSD-Tips.html)

## General

~~~
 bin-files    > Misc scripts and binaries .local/bin
 git          > Distributed version control system
 nvim         > Text editor
 tcsh-root    > FreeBSD jail/root shell
~~~

## Usage

~~~
git clone https://github.com/adriel-tech/stow-example ~/.dotfiles
cd ~/.dotfiles
xstow bin-files
xstow git
xstow nvim
~~~
