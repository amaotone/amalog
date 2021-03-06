+++
date = "2016-06-11T02:06:04+09:00"
draft = "false"
hidefromhome = "false"
slug = "extract-unique-data"
tags = ["Python"]
title = "集合型で2次元リスト中の重複した行を削除する"
+++

データセットの中でユニークなデータをカウントしたい時があります。

重複を含んだリストの場合、
一度集合型(set型)に変換することで重複を排除することができます。

```python
In [1]: lst = [0, 1, 0, 3, 2, 1, 1]

In [2]: set(lst)
Out[2]: {0, 1, 2, 3}
```

しかし、2次元配列にこの方法を適用しようとすると、

```python
In [1]: arr = [[0,1,0], [1,1,0], [0,0,1], [0,1,0], [1,1,1], [1,1,0]]

In [2]: set(arr)
---------------------------------------------------------------------------
TypeError                                 Traceback (most recent call last)
<ipython-input-13-1e4050a05c36> in <module>()
----> 1 set(arr)

TypeError: unhashable type: 'list'
```

と怒られます。これは、
**リストがhashableでない**
ことが原因です。

hashableなオブジェクトは、

1. 代入後の変更が不可能
2. 他のオブジェクトと比較できる

という特徴を持ちます。
リストは代入後の変更が可能であるため、hashableではないと言えます。

辞書型と集合型は内部でハッシュ値を使っているため、
辞書のキーや集合のメンバにはhashableなオブジェクトしかなれません。
後者の例の場合、1次元のリストを集合型のメンバにしようとしたためエラーが出たのです。

# 解決方法

ざっくり言うと、リストがダメなら
**hashableなオブジェクトに変換してしまえば良い**
ということです。

各行をタプルに変換します。
タプルはhashableなので、集合型を使ってユニークなデータを抽出できます。

```python
In [1]: arr = [[0,1,0], [1,1,0], [0,0,1], [0,1,0], [1,1,1], [1,1,0]]

In [2]: set(map(tuple, arr))
Out[2]: {(1, 1, 0), (0, 1, 0), (0, 0, 1), (1, 1, 1)}
```

# 参考資料

- [Python標準ライブラリ 組み込み型](http://docs.python.jp/3.5/library/stdtypes.html?highlight=hashable)
