# 項目演算子 if


この文書では、条件分岐を行う演算子 `if` の構文を説明します。
甲州計算機のバージョン 0.44 に対応します。

[`if.k`][if.k] に書かれているとおり、
項目 `/x` が `1` .. `5` の内容の関係を入力データとします。

    x : range /x -from 1 -to 5

条件分岐は `if` _test_ `->` _then_ `:` _else_ という構文で書きます。
    
    |== A : x | add /y ( if /x <= 3 -> 'A : 'B )

つぎの出力が得られます。

    |-- A  /y 'A  /x 1
    |-- A  /y 'A  /x 2
    |-- A  /y 'A  /x 3
    |-- A  /y 'B  /x 4
    |-- A  /y 'B  /x 5

`if` の直後にコロンを置いても同じ意味になります。

    |== B : x | add /y ( if : /x <= 3 -> 'A : 'B )

コロンで区切ることで _test_ `->` _then_ はいくつでも書けます。
最後の節だけ違いますが、Lisp の [`cond`][cond] に似ています。
    
    |== C : x | add /y ( if : /x = 1 -> 'S
                            : /x < 3 -> 'A
                            :           'B )

つぎの出力が得られます。

    |-- C  /y 'S  /x 1
    |-- C  /y 'A  /x 2
    |-- C  /y 'B  /x 3
    |-- C  /y 'B  /x 4
    |-- C  /y 'B  /x 5
    
矢印 `->` を逆向きにして `<-` でも書けます。
条件よりも結果を見やすく並べたいときに役立ちます。
    
    |== D : x | add /y ( if : 'S <- /x = 1
                            : 'A <- /x < 3
                            : 'B )

矢印 `<<` を使うことで、該当する複数の条件があることを表現できます。
左向きの _then_ `<-` _test1_ `<<` _test2_ `<<` _test3_ か
右向きの _test1_ `>>` _test2_ `>>` _test3_ `->` _then_ が使えます。

    |== E : x | add /y ( if : 'S <- /x = 1
                            : 'A <- /x = 2
                                 << /x = 3
                            : 'B )

この式からは、つぎの出力が得られます。

    |-- E  /y 'S  /x 1
    |-- E  /y 'A  /x 2
    |-- E  /y 'A  /x 3
    |-- E  /y 'B  /x 4
    |-- E  /y 'B  /x 5

    
[if.k]: if.k
[cond]: http://www.cs.cmu.edu/Groups/AI/html/cltl/clm/node84.html
