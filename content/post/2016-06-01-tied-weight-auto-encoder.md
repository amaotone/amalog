+++
date = "2016-06-01T23:19:43+09:00"
draft = "true"
hidefromhome = "false"
slug = "tied-weight-auto-encoder"
tags = ["Python", "Deep Learning"]
title = "ChainerでTied WeightなAuto-Encoderをカンタンに書く"

+++

ニューラルネットワークの手法の一つにオートエンコーダ(Auto-Encoder)というものがあります。

オートエンコーダとは、データの特徴を抽出する事前学習(pretraining)の一種で、
入力と同じ出力を返すようにニューラルネットワークを学習させることで特徴抽出を実現しています。

今回は、手書き文字判別MNISTを題材にしてオートエンコーダをChainerで実装してみようと思います。
ネット上に転がっている例は多くが`v1.5`以前の、`FunctionSet`を使った実装でした。
今回は`v1.9.0`で書きます。


# 実験

## クラス

今回書いたクラスはこんな感じです。

```python
class AutoEncoder(chainer.Chain):
    def __init__(self, n_in, n_out):
        super(AutoEncoder, self).__init__(encoder=L.Linear(n_in, n_out))

    def __call__(self, x):
        h = F.sigmoid(self.encoder(x))
        return F.linear(h, F.transpose(self.encoder.W))
```

おしまい。シンプルですね。

tied weightなオートエンコーダではエンコーダとデコーダの重み行列は互いに転置の関係にあるという制約がつきます。

それを実現するのが`F.transpose(self.encoder.W)`です。


## 実行結果

# おまけ
