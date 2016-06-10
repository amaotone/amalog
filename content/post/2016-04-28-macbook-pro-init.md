---
date: "2016-05-04"
title: "MacBook Pro環境設定メモ"
slug: "macbook-pro-init"
description: "MacBook Proを買って最初にやったことをメモしました。"
tags: ["Mac"]
---

# ソフトウェア

`homebrew-cask`を使うとバイナリもhomebrewで入れられて便利！
みたいな話を聞いたけど、いろいろ問題点もあるみたいなので今回は見送りました。

愚直に入れます。

- Atom
- Alfred
- Google Chrome
- Google Japanese IME
- Mou
- The Unarchiver
- Karabiner
- iterm2
- App Cleaner
- Evernote
- Dropbox
- Skype
- SourceTree
- Kobito
- imageoptim
- xmind
- ThunderBird
- PyCharm

# homebrew

パッケージマネージャはみんな大好きhomebrewです。

```bash
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## 入れたもの

- git
- gist
- vim
- tree
- tmux
- zsh
- curl
- wget
- pyenv
- rbenv
- ruby-build

# Python

`~/.bash_profile`に追記

```
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
```

`$ source ~/.bash_profile`をお忘れなく。

主にデータ処理をやるので`anaconda`を入れます。

```bash
$ pyenv install anaconda3-4.0.0
$ pyenv global anaconda3-4.0.0
```

# Ruby

`~/.bash_profile`に追記

```bash
[[ -d ~/.rbenv  ]] && \
export PATH=${HOME}/.rbenv/bin:${PATH} && \
eval "$(rbenv init -)"
```

`$ source ~/.bash_profile`をお忘れなく。

とりあえず最新版の`2.3.1`を入れます。

```bash
$ rbenv install 2.3.1
$ rbenv global 2.3.1
```

# フォント

- Ricty Diminished
- Myrica
