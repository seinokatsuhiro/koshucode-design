# 関係モデルはどのような種類の理論か


このノートでは、[関係モデル][関係モデル] (リレーショナル・モデル)
の理論類型を考えてみます。
ここでは、**関係モデルは計算体系の一種である** という考え方を採用し、
それが、どのような種類の体系と似ているか、あるいは、
似ていないかという観点で説明します。

もっとも身近な計算体系は数の計算です。
たとえば、4 + 3 = 7 のような計算式を [小学校] で習います。
関係モデルが計算体系であるというのは、
数の計算のように、関係の計算を行うということです。

例として、お父さんがリンゴを 4 個買ってきて、
お母さんがミカンを 3 個買ってきたとき、
果物は合わせて何個あるかという計算問題を考えてみましょう。
この計算問題は、4 + 3 = 7 という計算によって、
合計 7 個あると分かります。
これを理解するには、個物から数への抽象化が必要です。
というのは、個物の分類を重視すると、
リンゴとミカンを足すことは、不可能ではないかとも考えられるからです。
4 + 3 = 7 という式は、リンゴとミカンだけでなく、
4 個のメロンと 3 個のスイカでもよく、4 台の車と 3 台の自転車でも構いません。
いずれにおいても、個物の具体的な姿をいったん忘れて、
数という無機質な記号上で計算することになります。

4 台の車と 3 個のスイカの合計は、計算可能ですが、
その意味から考えると、少し無理があると感じるかもしれません。
実際に無理があるかどうかは、文脈に依存しますが、
計算そのものは、文脈に関係なく実行できます。
これは、計算体系の大きな特徴で、計算は、
現実世界の意味をいったん忘れた上で、数のみで実行され、その結果をもう一度、
現実世界に戻して解釈するという枠組みで機能します。
この枠組みが機能するため、現実世界にしばられない汎用計算体系が実現できます。

関係モデルも、そのような意味での計算体系であるため、
関係自体は現実世界の意味を捨象した記号に過ぎません。
現実のできごとを関係に変換したとき、意味が捨てられますが、
その意味を関係に同伴させておくことはできます。
これは関係のデータ解釈とよばれ、通常、判断可能な文として表現されます。

関係は意味をもたない代わりに汎用の計算体系の要素であり、
関係にデータ解釈を同伴させられるという構成を忘れると、
不適切な結論を導いてしまうことがあります。
ひとつには、関係モデルは意味を扱わないため、単なる実装技術に過ぎないと考え、
関係モデルの能力を過少評価してしまうこと、
ほかには、計算体系であるところの関係モデルに対して、
不用意に現実世界の意味を導入してしまい、体系を複雑にしてしまうことです。

いわゆる [十七世紀科学革命] において、
数学の使用に関するアリストテレス的な制限が取り除かれ、
計算体系である数学という道具を使って自然をモデル化する能力が向上したように、
関係モデルという道具をうまく使えるようになるには、
その理論類型を適切に把握することが役立ちます。


[関係モデル]: http://ja.wikipedia.org/wiki/関係モデル
[小学校]: http://ja.wikibooks.org/wiki/小学校算数_1学年#.E3.81.9F.E3.81.97.E3.81.96.E3.82.93
[十七世紀科学革命]: http://www.systemicssystem.com/ja/十七世紀科学革命

