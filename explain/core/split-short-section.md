概要
----------------------

節のリストを短縮区ごとに分割


入出力
----------------------

| 入出力  | 型 | 説明 |
|---------|----|------|
| 出力 #1 | [Short [Clause]] | 短縮区ごとの節のリスト |
| 入力 #1 | [Clause] | 節のリスト |


説明
----------------------

入力データから得られた節のリスト `[Clause]` のなかの短縮節を認識し、
短縮節ごとに節を分類した `[Short [Clause]]` を作成します。
同時に、短縮節の設定にしたがって、短縮記号を伸長記号に変換します。

伸長記号に変換できないトークンは、不明なトークンとしてマークされ、
後続の処理でエラーとして扱われます。
この処理自体は、つねに成功する処理なので、エラーは後続へ回されます。

短縮節は `short S L S L ...` という形式の節です。
ある `short` からつぎの `short` の手前までが
ひとつの短縮区 `Short [Clause]` として表現されます。
一般的に，ファイルに収められた甲州記法のデータは、
`[Short [Clause]]` という形式で表現できます。
`short` がない区間は、空の短縮区として扱われます。


バージョン
----------------------

この文書は甲州計算機バーラ実装のバージョン 0.44 に対して記述されました。

