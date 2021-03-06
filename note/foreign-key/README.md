# 外部キー


外部キー制約は、ある関係でのある組が成立しているとき、
別の関係での関連する組も成立していなければならないとする性質です。
たとえば、「供給業者 `/sno` が部品 `/pno`
を出荷した」という判断が成立しているとき、
「供給業者 `/sno` の名前は `/sname` である」
という判断も成立していなければならないというものです。
これは、供給業者そのものに関する情報がないのに、
出荷の情報があるということは起こりえないということです。

外部キー制約がみたされているかどうかを検査するには、
項目集合が同じふたつの関係を比べて、
一方が他方の部分集合 (部分関係) になっていることを調べます。
そのため、成立するはずの組が欠損していることを計算するための演算子
`miss` を定義しましょう。
この演算子は `miss R` という形で使われます。たとえば、

    source SP /sno | miss (source S /sno)

のようになります。
`|=V` と組み合わせると、
外部キー制約を検査できるようになります。

    |=V MISS-SP-SNO : source SP /sno | miss (source S /sno)

