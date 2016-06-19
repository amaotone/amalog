+++
date = "2016-06-19T19:56:49+09:00"
draft = "false"
hidefromhome = "false"
slug = "publish-fennec"
tags = ["Python"]
title = "データ解析のライブラリを作っています"
+++

何かデータを解析するとなったとき、

1. データを読み込む (numpy, pandas)
2. 前処理をする (sklearn)
3. 統計的解析をする (sklearn)
4. 結果を出力する (matplotlib)

というフローが一般的だと思います。

しかし、いろいろなデータを解析していると何度も同じコードを書くシチュエーションが
出てきます。

そこで、自分がデータ解析を行った時に書いたコードを整理し、
公開できるものについてはパッケージ化してpypiで公開しようと考えました。

GitHubやTravis CI、テスト駆動開発などの勉強も兼ねています。

- http://github.com/amaotone/fennec

バリバリα版ですが、人柱大募集中です(笑)

なにかあればIssueでもPull Requestでもいただければ嬉しいです。

# 参考

- pypi関連
    - [PyPIデビュー - 清水川Web](http://www.freia.jp/taka/docs/pyhack4/pypi/)
    - [2. setup スクリプトを書く — Python 3.5 ドキュメント](http://docs.python.jp/3.5/distutils/setupscript.html)
- Travis CI
    - [Travis CIを使ってみた: GitHubのレポジトリにバッジを貼りたかったから](http://rcmdnk.github.io/blog/2014/09/08/computer-github-travis/)
- テスト駆動開発
    - [Pytest 公式ドキュメント](http://pytest.org/latest-ja/)
    - [Python: tox を使って複数のバージョンでテストを実行する](http://blog.amedama.jp/entry/2015/09/08/212556)
