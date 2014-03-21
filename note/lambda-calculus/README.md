# 甲州記法のためのラムダ算法


甲州記法での項目計算式は、
リテラル、項目参照、組み込み関数、関数適用からなります。
たとえば、`10 + /b` という項目計算式は、
リテラル `10`、項目参照 `/b`、
組み込み関数 `+` とその適用 ... `+` ... からなります。
これを項目 `/a 1` `/b 2` `/c 3` という組に対して実行すると、
計算結果として `12` が得られます。

組み込み関数だけでは足りないときは、[ラムダ算法][function.md]
を使ったユーザ定義の関数を追加する仕組みがあります。
たとえば、`(| x | 10 + /b + x |)` という式は、
引数 `x` をひとつとり、`10 + /b + x` を計算する関数をあらわします。
この関数に `f` という名前を与えると、
`f 5` は `10 + /b + 5` と同じ効果をもちます。

ユーザ定義の関数を扱うには、
変数 _var_ 、関数抽象 `(|` _var_ `|` _exp_ `|)`、
関数適用 _fun_ _exp_ の 3 つの構成要素からなる仕組みを使います。
これらの構成要素を、基礎の構造の上に乗せます。
関数適用は、基礎の構造と、その上の導出された構造の両方で使われます。

| 基礎の式の構成要素 | 共用 | 導出された式の構成要素 |
|------|------|------|
| リテラル、項目参照、組み込み関数 | 関数適用 | 変数、関数抽象 |



データ型
------------------------------------------------------------------

式をあらわすデータ型を [`Exp c`][Exp.hs] として定義します。
ユーザ定義の関数を扱う仕組みを除いた基礎の構造として、
定数 `Literal`、項目参照 `Term`、組み込み関数 `BaseL` (base function)、
関数適用 `ApplyL` があります。この上に、変数 `Var`
と関数抽象 `Deriv` (derived function) を追加します。
さらに、複数変数の関数抽象である `DerivL` を追加します。
語尾の `L` はリスト (list) を意味します。

```haskell
data Exp c
    = Literal c                -- 基礎: 定数
    | Term String Int          -- 基礎: 項目参照
    | BaseL String ([c] -> c)  -- 基礎: 組み込み関数
    | ApplyL (Exp c)  [Exp c]  -- 基礎/導出: 関数適用 (複数の引数)

    | Var     String   Int     -- 導出: 変数 (変数名とド・ブラン索引)
    | Deriv   String  (Exp c)  -- 導出: 関数抽象
    | DerivL [String] (Exp c)  -- さらなる導出: 関数抽象 (複数の変数)
```

このデータ型は、実際の甲州計算機で使われているものを
単純化しているので、完全に、一致しませんが、

```
(| x | x + /b |) 5
```

という式は、項目 `/b` が 1 番目の要素だとすると、
つぎの構造に対応します。

```haskell
ApplyL (DerivL ["x"] (ApplyL (Var "+" 0) [Var "x" 1, Term "/b" 1]))
       [Literal 5]
```

`ApplyL` は、組み込み関数とユーザ定義関数の両方に使われます。
ユーザ定義関数の適用は `ApplyL (Deriv "x" ... Var "x" 1 ...) [...]`
変数 `Var "x" 1` を引数で置き換えることができるので、
最終的には、組み込み関数の関数適用 `ApplyL (BaseL "+" ...) [...]`
だけに還元できます。

複数変数の関数抽象は、単一変数の関数抽象に変換されます。
甲州記法では `(| x y | ... |)` が `(| x | (| y | ... |) |)` に変換され、
Haskell のデータ型では `DerivL ["x", "y"] ...` が
`Deriv "x" (Deriv "y" ...)` に変換されます。


処理の流れ
------------------------------------------------------------------

式を計算するつぎの過程を順番に確認しましょう。

 1. 複数変数の展開
 2. ド・ブラン索引の付与
 3. 項目索引の付与
 4. 自由変数の置換
 5. ベータ変換
 6. 還元
 7. 実行

<!-- -->


1. 複数変数の展開
------------------------------------------------------------------

関数 `unlist` は、複数変数の関数抽象 `DerivL` を
単一変数の関数抽象 `Deriv` に展開します。
`(| x y | x + y |) 2 3` = `(| y | 2 + y |) 3`
= `(| | 2 + 3 |)` = `2 + 3` となることから分かるように、
変数のない抽象は、本体をそのまま取り出せます。

```haskell
unlist :: Exp c -> Exp c
unlist (DerivL (v:vs) e) = Deriv v $ unlist $ DerivL vs e
unlist (DerivL []     e) = e
unlist e                 = mapToExp unlist e
```


2. ド・ブラン索引の付与
------------------------------------------------------------------

式 `(| x y | x + y |)` は、`(| x | (| y | x + y |) |)`
に等しく、この式には `Var "x" 0` と `Var "y" 0` が含まれています。
ド・ブラン索引は、これらの変数に、抽象からの相対的な位置を付与します。
この場合、変数 `x` の使用箇所から抽象は 2 つ上にあるので、
`Var "x" 2` となり、変数 `y` は 1 つ上なので `Var "y" 1` になります。
この索引を、変数の後に `.2` のように書くことにすると、
`(| x | (| y | x.2 + y.1 |) |)` のように表現できます。
ド・ブラン索引を付与しても、`0` のまま残っている変数は、
どの抽象とも対応していない自由変数です。

```haskell
debruijn :: Exp c -> Exp c
debruijn = de [] where
    de :: [String] -> Exp c -> Exp c
    de vars e =
        case e of
          Var v _    -> maybe e (Var v) $ indexFrom 1 v vars
          ApplyL _ _ -> mapToExp (de vars) e
          Deriv v _  -> mapToExp (de $ v : vars) e
          _          -> e
```


3. 項目索引の付与
------------------------------------------------------------------

たとえば、`/a 1` `/b 2` `/c 3` のような組であれば、
項目名のリスト `["/a", "/b", "/c"]` と項目内容のリスト `[1, 2, 3]`
に事前に分けておきます。
`position` は項目名のリスト `["/a", "/b", "/c"]` にもとづいて、
`Term "/b" 0` などを `Term "/b" 1` に変換します。
計算の実行時に、この索引にもとづいて、項目内容のリストを検索します。

```haskell
position :: [String] -> Exp c -> Exp c
position ns = pos where
    pos (Term n _) = Term n $ maybe 0 id $ indexFrom 0 n ns
    pos e = mapToExp pos e
```


4. 自由変数の置換
------------------------------------------------------------------

式のなかに残っている自由変数 `Var n 0` を、
その定義にしたがって、置換します。
定義は、組み込み関数 `BaseFn c` か
名前つきの式 `NamedExp c` のどちらかです。
名前つきの式は、再帰的に定義されているかもしれないので、
`mapSnd li deriv` として、リンクずみの定義をつくっておきます。
そのため、再帰があるときは、`link` の結果は、潜在的に無限の式になります。

```haskell
link :: forall c. [BaseFn c] -> [NamedExp c] -> Exp c -> Exp c
link base deriv = li where
    li :: Exp c -> Exp c
    li e@(Var n 0) = maybe e id $ lookup n fnlist
    li e = mapToExp li e

    fnlist :: [NamedExp c]
    fnlist = mapSnd li deriv ++ map basefn base

    basefn :: BaseFn c -> NamedExp c
    basefn (n, f) = (n, BaseL n f)
```


5. ベータ変換
------------------------------------------------------------------

ベータ変換は、適用を実行し、抽象を消化していく過程です。
閉じた式をベータ変換することで、導出された式は、基礎の式に還元されます。

抽象 `Deriv` をひとつ降りるごとに、
引数リストに積み上げます。引数リスト _arg_ ... を
`(|` _var_ ... `| [` _arg_ ... `]` _exp_ `|)`
のように変数と式の間に書くことにします。
変数 `Var` のド・ブラン索引、つまり、
抽象 `Deriv` からの相対的な位置を計算してあるので、
引数リストからド・ブラン索引の位置の値を取り出します。

いくつか例をみてみましょう。
関数 `(| x y | x + y )` を引数 `2 3` へ適用すると、
つぎのように変形されます。
引数リスト `[3, 2]` を `y.1` に検索すると、
1 番目の要素の `3` を取得できます。

- `(| x y | x.2 + y.1 |) 2 3`
- `(| y | [2] x.2 + y.1 |) 3`
- `(| | [3, 2] x.2 + y.1 |)`
- `(| | [3, 2] 2 + 3 |)`
- `2 + 3`

関数を引数に受け渡す例。

- `(| f x | f.2 (x.1 + 1) |) (| x | x.1 + 1 |) 3`
- `(| x | [(| x | x.1 + 1 |)] f.2 (x.1 + 1) |) 3`
- `(| | [3, (| x | x.1 + 1 |)] f.2 (x.1 + 1) |)`
- `(| | [3, (| x | x.1 + 1 |)] (| x | x.1 + 1 |) (3 + 1) |)`
- `(| x | x.1 + 1 |) (3 + 1)`
- `(| | [(3 + 1)] | x.1 + 1 |)`
- `(| | [(3 + 1)] | (3 + 1) + 1 |)`
- `(3 + 1) + 1`

```haskell
beta :: Exp c -> Exp c
beta = be [] where
    be :: [Maybe (Exp c)] -> Exp c -> Exp c
    be args e =
        case e of
          Var _ i    -> maybe e id $ args !! (i - 1)
          Deriv v e2 -> Deriv v $ be (Nothing : args) e2
          ApplyL _ _ -> app args $ mapToExp (be args) e
          _          -> e

    app :: [Maybe (Exp c)] -> Exp c -> Exp c
    app args (ApplyL (Deriv _ b) (x:xs)) =
        app (Just x : args) $ ApplyL b xs
    app args (ApplyL f []) = be args f
    app _ e = e
```


6. 還元
------------------------------------------------------------------

1 から 5 までの処理をまとめて行う関数を定義します。
この関数は、式のなかの導出された要素を、基礎の要素へと還元すことで、
実行の準備を行います。

```haskell
reduce :: [BaseFn c] -> [NamedExp c] -> [String] -> Exp c -> Exp c
reduce base deriv ns = beta . ln . position ns . du where
    ln = link base $ mapSnd du deriv
    du = debruijn . unlist
```


7. 実行
------------------------------------------------------------------

還元後の式は、閉じた式であれば、
リテラル `Literal`、項目参照 `Term`、
組み込み関数 `BaseL`、関数適用 `ApplyL` からなるので、
項目内容のリスト `[c]` が与えられれば実行し、
計算結果の単一の項目内容 `c` に計算できます。

```haskell
run :: forall c. (Show c) => Exp c -> [c] -> c
run e cs = r e where
    r :: Exp c -> c
    r (Literal c)             = c
    r (Term _ n)              = cs !! n
    r (ApplyL (BaseL _ f) xs) = f $ map r xs
    r e2 = error $ "couldn't run expression: " ++ show e2
```


[Exp.hs]: Exp.hs
[function.md]: function.md
