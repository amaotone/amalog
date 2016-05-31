+++
date = "2016-05-31T10:37:08+09:00"
draft = "false"
hidefromhome = "false"
tags = ["python"]
slug = "jupyter-server"
title = "Jupyter Notebookをサーバー上で動かす"
+++

Jupyter Notebookをサーバー上で動かした時のメモです。

前提

- サーバーにsshで接続できる
- サーバーにjupyterが入っている

以下はサーバー上にsshで接続して操作を行ってください。

# パスワードの生成

自分のJupyter Notebookを他人にいじられると困るので、パスワードでロックをかけます。

```python
$ python
>>> from notebook.auth import passwd
>>> passwd()
```

パスワードを適当に入力してsha鍵を生成したら、コピーしておきます。

# Jupyterの設定

Jupyterのコンフィグファイルを生成します。

```bash
$ jupyter notebook --generate-config
$ vi ~/.jupyter/jupyter_notebook_config.py
```

以下の3行のコメントアウトをはずし、変更します

```python
c.NotebookApp.ip = '*'
c.NotebookApp.password = <input your sha key>
c.NotebookApp.open_browser = False
```

# Jupyterの起動

```bash
$ jupyter notebook
```

今回やったのはこれだけです。

VPN上のサーバーでごにょごにょやる分にはとりあえずOKだと思いますが、時間があったらセキュアに接続する方法をやってみます。
