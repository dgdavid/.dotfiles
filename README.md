# dotfiles

My custom collection of dotfiles. Second attempt :sweat_smile:, now managed via
[GNU Stow](https://www.gnu.org/software/stow/).

---

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [dotfiles](#dotfiles)
  - [How to use](#how-to-use)
  - [How to keep updated](#how-to-keep-updated)
  - [Configurations](#configurations)
    - [tmux](#tmux)
      - [Enabling italics](#enabling-italics)
        - [Inside gnome-terminal](#inside-gnome-terminal)
    - [vim](#vim)
      - [Additional plugins](#additional-plugins)
      - [Custom configuration](#custom-configuration)
    - [Zsh](#zsh)
      - [Plugins](#plugins)
    - [irb](#irb)
    - [git](#git)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

---

## How to use

Clone repo and use Stow to add or remove desired configurations

`$ git clone git@github.com:dgdavid/.dotfiles.git ~/.dotfiles`

`$ cd ~/.dotfiles`

`$ stow <desired configuration/directory>`

## How to keep updated

This repo is using `git subtree`s to hold some external used repos. To update
or keep sync them, you can list prefixes

`$ git log | grep git-subtree-dir | tr -d ' ' | cut -d ":" -f2 | sort | uniq` (via [StackOverflow](https://stackoverflow.com/a/18339297))

and then update those what do you want

`$ git subtree pull --prefix <prefix> <repo> master --squash`

## Configurations

### tmux

[Oh My Tmux!](https://github.com/gpakosz/.tmux) - pretty + versatile tmux configuration that just works.

#### Enabling italics

##### Inside gnome-terminal

Following steps given in [this
article](http://www.nerdyweekly.com/posts/enable-italic-text-vim-tmux-gnome-terminal/),


* :exclamation: compile the custom  (and included here) terminfo `xterm-256color-italic.terminfo`

  `$ tic xterm-256color-italic.terminfo`

* ensure that `set -g default-terminal "xterm-256color-italic"` it is being
  used in the tmux.conf (see [tmux/.tmux.conf.local](.tmux.conf.local)).

### vim

So far I was using the awesome Steve Francia's vim distribution,
[spf13-vim](http://vim.spf13.com/). A couple of months ago I switched to a less
sophisticated configuration using [Janus](https://github.com/carlhuda/janus). But now I am giving a try to
[space-vim](https://github.com/liuchengxu/space-vim) :grin: :grin:

---

:warning: Could be necessary to install some libraries. Read **additional plugins** section.

---

First time, it could be necessary to execute `:PlugInstall`.

#### Additional plugins

Apart from those installed by `space-vim` distribution, below plugins were added

* [junegunn/seoul256](https://github.com/junegunn/seoul256.vim) - Low-contrast
  Vim color scheme based on Seoul Colors.
* [shime/vim-livedown](https://github.com/shime/vim-livedown) - Vim plugin for
  [Livedown](https://github.com/shime/livedown). To use it properly, you must
  install Livedown in your system

  `$ npm install -g livedown`

* [vim-rails](https://github.com/tpope/vim-rails) - Ruby on Rails power tools

#### Custom configuration

:exclamation: *Do not forget take a look to [`.spacevim`](vim/.spacevim) for more info*.

  * **Persistent undo** create the `.vimundo` in your $HOME directory.

    `$ mkdir ~/.vimundo`

### Zsh

I started to use Zsh with
[oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), and then I switched to
[prezto](https://github.com/sorin-ionescu/prezto) configuration framework for a
while.

But now, after took a look to a handful of Zsh frameworks (see [Awesome
Zsh plugins](https://github.com/unixorn/awesome-zsh-plugins#frameworks) and
[Terminals are sexy](https://terminalsare.sexy/#shells)), I am using [zplug](https://github.com/zplug/zplug).

#### Plugins

* [zplug](https://github.com/zplug/zplug) - A next-generation plugin manager
  for Zsh.
* [Pure](https://github.com/sindresorhus/pure) - Pretty, minimal and fast Zsh
  prompt.
* [Zsh syntax
  highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) - Fish
  shell like syntax highlighting for Zsh.
* [Httpstat](https://github.com/b4b4r07/httpstat) - curl statistics made
  simple.
* [Vimode visual](https://github.com/b4b4r07/zsh-vimode-visual) - Implement the
  vim-like visual mode to vi-mode of Zsh.

### irb

This custom configuration file was added due to a problem in macOS related to
reverse search and history in both `irb` and `Rails console`.

### git

Basic git configuration and [aliases from GitAlias/gitalias](https://github.com/GitAlias/gitalias)

User configuration should be placed in `~/.gitconfig_user` file. See
[git/.gitconfig](git/.gitconfig) for more details.
