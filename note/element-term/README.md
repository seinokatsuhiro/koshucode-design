# 分項参照と分項置換

甲州記法の項目内容は **分項** という仕組みを使って、
その成分を取り出したり、置き換えたりできます。
たとえば、束 `{- /a 0 /b 10 -}` に対する
分項参照 `^/a` で `0` を取り出せます。
また、この束に分項置換 `/a 2` を適用すると `{- /a 2 /b 10 -}` が得られます。
さらに、分項置換と分項参照の組み合わせ `/a ( ^/a + ^/b )` によって、
`{- /a 12 /b 10 -}` が得られます。
あるいは、時刻 `2016-04-01 9:00` に対して、
分項置換 `/year 2017` を適用すると `2017-04-01 9:00` が得られます。


基本形
------------------------------------------------------------------

### c : e

項目内容 `c` のもとで式 `e` を評価します。
式 `e` のなかにある `^/s` などは、`c` の分項参照として解釈されます。

 - `{- /a 2 /b 10 -} : ^/a + ^/b` を評価すると `12` が得られます。
 - `2016-04-01 : ^/year` を評価すると `2016` が得られます。

### c : /t e

項目内容 `c` の分項 `/t` を式 `e` の評価結果で置き換えます。
式 `e` のなかにある局所項目 `^/s` は、`c` の分項参照として解釈されます。

 - `{- /a 2 /b 10 -} : /a ( ^/a + ^/b )` を評価すると
   `{- /a 12 /b 10 -}` が得られます。
 - `2016-04-01 : /year 2017` を評価すると `2017-04-01` が得られます。
 - `2016-04-01 : /year ( ^/year + 1 )` も `2017-04-01` になります。
 - `2016-04-01 : /year ( ^ + 1 )` も `2017-04-01` になります。

### c : /t1 e1 /t2 e2

項目が複数ある分項置換は、複数の分項を同時に置き換えます。
`c` の現在の内容で `e1` と `e2` を評価して、
その結果で `c` の一部を置き換えます。
この形式は、順番に置き換える `( c : /t1 e1 ) : /t2 e2` とは
異なることに注意してください。

 - `{- /a 2 /b 10 -} : /a ( ^/b ) /b ( ^/a )` を評価すると
   `{- /a 10 /b 2 -}` が得られます。
 - `2016-04-01 : /year 2017 /month 1 /day 1` を評価すると
   `2017-01-01` が得られます。

派生形
------------------------------------------------------------------

### c ^/t

コロンのない `c ^/t` は `c : ^/t` と等価です。

### c : ^/t/s

階層項目を使った `c : ^/t/s` は
項目内容 `c` の分項 `/t` のなかの分項 `/s` を参照します。
`c : ^/t/s` は `c ^/t/s` とも書け `c : ( ^/t : ^/s )` と等価です。

### c : /t/s e

項目内容 `c` の分項 `/t` のなかの分項 `/s` の内容を
式 `e` の評価結果に置き換えます。
`c : /t/s e` は `c : /t ( ^/t : /s e )` と等価です。
