+++
date = "2016-06-01T00:28:25+09:00"
draft = "false"
hidefromhome = "false"
slug = "data-analysis-with-jupyter"
tags = ["python"]
title = "Jupyter Notebookで作る快適なデータ解析ライフ"

+++

研究室に配属され、Pythonでデータ解析をするようになって2ヶ月が経過しました。

データ解析のベストプラクティスは探してもあまり出てこないのですが、
試行錯誤の結果ひとつの形に辿り着いたのでアウトプットしておきます。

データ解析と普通のプログラミングの違う点は「正しい実行結果」というのが分かりづらく、
Trial-and-Errorなアプローチになりがちなところだと思います。
その際、Jupyterで実行結果を適宜確認しながら解析を進められるのは安心感があります。

# フォルダ構成

フォルダ構成はざっくりこんな感じです。

```
.
├── data
│   └── hoge.csv
├── libs
│   ├── fuga.py
│   └── tests
│       └── test_fuga.py
├── notes
├── documents
└── experiment.ipynb
```

再利用したいコードは全部`libs`に入れ、適宜テストを書きながら実装を進めます。

メモは`notes`の中にMarkdownかJupyterで書き、
結果を残したいケーススタディとか実験とかはJupyterを使ってまとめます。

TeXファイルやらPowerPointファイルやらは`documents`の中に放り込みます。

# 工夫したところ

解析の初期では全部pythonスクリプト内で完結させようと考えていたのですが、
ログを残したりプロットを保存したりするのが面倒でした。

そこで、今までメモやちょっとした実験程度にしか使っていなかったJupyterを格上げし、
実際の解析スクリプトを全部Jupyterに移行してしまおうと考えました。

まだ少ししか使っていないので有用かどうかはわかりませんが、今のところは問題なさそうです。

# 関連記事

- [Jupyter Notebookをサーバー上で動かす](http://localhost:1313/post/jupyter-server/)
