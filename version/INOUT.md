# I/O List

- [list-version.k](#list-versionk)
- koshu list-version.k [VERSION.k](#versionk)



## [list-version.k](list-version.k)

```
|== VERSION -order :    -*- koshu -*-
    source VERSION /major /minor /date /summary
```



## [VERSION.k](VERSION.k)

```
** -*- koshu -*-
**
**  概要
**    甲州計算機の版数
**  
**  VERSION
**    <<< 甲州計算機の /major . /minor の版を /date にリリースした。
**        その版のおもな変更内容は /summary である。 >>>
**

about /major 0

|-- VERSION  /minor 0   /date 2013-04-18  /summary "生まれました"
|-- VERSION  /minor 1   /date 2013-05-03  /summary "標準入出力間でデータ編集を行う koshu コマンドをパッケージ化"
|-- VERSION  /minor 2   /date 2013-05-14  /summary "プログラムのなかに甲州記法を埋め込む [koshu| ... |] を実装"
|-- VERSION  /minor 3   /date 2013-05-20  /summary "ライブラリとコマンドを別パッケージに分割"
|-- VERSION  /minor 4   /date 2013-05-22  /summary "RDF を甲州記法に変換するプログラム koshu-rdf を追加"
|-- VERSION  /minor 5   /date 2013-06-03  /summary "関係写像の定義を Minimal モジュールへ分離"
|-- VERSION  /minor 6   /date 2013-06-07  /summary "関係写像のプリティプリンタを追加"
|-- VERSION  /minor 7   /date 2013-06-10  /summary "関係写像を別パッケージに分割"
|-- VERSION  /minor 8   /date 2013-06-12  /summary "koshu-baala パッケージを koshu-baala-base に改名"
|-- VERSION  /minor 9   /date 2013-06-14  /summary "間違いがみつかった箇所のソースコードを表示"
|-- VERSION  /minor 10  /date 2013-06-17  /summary "ソースコードを節単位に分割する処理を整理"
|-- VERSION  /minor 11  /date 2013-06-20  /summary "関係写像の実装に必要な機能を OpKit モジュールに集約"
|-- VERSION  /minor 12  /date 2013-06-21  /summary "節の合併"
|-- VERSION  /minor 13  /date 2013-06-26  /summary "関係写像のオペランドを整理"
|-- VERSION  /minor 14  /date 2013-06-29  /summary "構文ツール koshu-syntax を作成"
|-- VERSION  /minor 15  /date 2013-06-29  /summary "甲州プロセッサを koshu-baala-processor パッケージに分離"
|-- VERSION  /minor 16  /date 2013-07-01  /summary "四重星印 **** による注釈"
|-- VERSION  /minor 17  /date 2013-07-03  /summary "二重線による改行とワンライナー"
|-- VERSION  /minor 18  /date 2013-07-04  /summary "Order.hs などを base から operator パッケージに移動"
|-- VERSION  /minor 19  /date 2013-07-05  /summary "データの差異を計算する koshu-change コマンドを作成"
|-- VERSION  /minor 20  /date 2013-07-06  /summary "トークン番号を数えるように修正"
|-- VERSION  /minor 21  /date 2013-07-07  /summary "リストと組を読み書きする機能を追加"
|-- VERSION  /minor 22  /date 2013-07-09  /summary "引用符など特殊な文字を含んだ文字列を扱う機能を追加"
|-- VERSION  /minor 23  /date 2013-07-11  /summary "計算リストにしたがって計算する機能を実装"
|-- VERSION  /minor 24  /date 2013-07-12  /summary "退行テストを実施する koshu-regress コマンドを追加"
|-- VERSION  /minor 25  /date 2013-07-17  /summary "Content モジュールを追加"
|-- VERSION  /minor 26  /date 2013-07-20  /summary "項目内容を計算する機能を再実装"
|-- VERSION  /minor 27  /date 2013-07-21  /summary "関係写像が失敗できるように型を変更"
|-- VERSION  /minor 28  /date 2013-07-22  /summary "base パッケージの言語機能を core パッケージに分離"
|-- VERSION  /minor 30  /date 2013-07-27  /summary "リテラルを読み書きする機能を整理"
|-- VERSION  /minor 31  /date 2013-07-29  /summary "GHC 7.6.3 でビルドできるように修正"
|-- VERSION  /minor 32  /date 2013-08-02  /summary "関係演算子に関連するコードを整理"
|-- VERSION  /minor 33  /date 2013-08-08  /summary "小数を扱う機能を追加"
|-- VERSION  /minor 34  /date 2013-08-12  /summary "エラーメッセージを改善"
|-- VERSION  /minor 35  /date 2013-08-24  /summary "affirm と deny の構文を変更"
|-- VERSION  /minor 36  /date 2013-09-05  /summary "テキスト・リテラルの構文を変更"
|-- VERSION  /minor 37  /date 2013-09-07  /summary "判断記号として |== を導入"
|-- VERSION  /minor 38  /date 2013-09-19  /summary "関係計算式の実行方法を変更"
|-- VERSION  /minor 39  /date 2013-10-16  /summary "関係写像演算子のオペランドの処理方法を整理"
|-- VERSION  /minor 40  /date 2013-10-27  /summary "データ検証機能を追加"
|-- VERSION  /minor 41  /date 2013-12-31  /summary "エラーを報告する方法を書き直し"
|-- VERSION  /minor 42  /date 2014-01-15  /summary "大域データを扱う機能を追加"
|-- VERSION  /minor 43  /date 2014-02-05  /summary "関係写像の組み立て方法を見直し"
|-- VERSION  /minor 44  /date 2014-02-17  /summary "構文演算子の仕組みを追加"
|-- VERSION  /minor 45  /date 2014-02-21  /summary "短縮記号を読み込む処理を実装"
|-- VERSION  /minor 46  /date 2014-02-28  /summary "ラムダ算法を使用した項目計算の方法を実装"
|-- VERSION  /minor 47  /date 2014-03-11  /summary "再帰関係写像を処理する仕組みを実装"
|-- VERSION  /minor 48  /date 2014-03-15  /summary "関係写像の実装方法を整理"
|-- VERSION  /minor 49  /date 2014-03-19  /summary "エラーを報告する方法を書き直し"
|-- VERSION  /minor 50  /date 2014-03-27  /summary "項目名の扱い方を改善"
|-- VERSION  /minor 51  /date 2014-04-08  /summary "入れ子の関係を計算する方法を実装"
|-- VERSION  /minor 52  /date 2014-04-14  /summary "入れ子の関係を表形式で出力する方法を実装"
|-- VERSION  /minor 53  /date 2014-04-21  /summary "メタ演算子を独立したモジュールに分割"
|-- VERSION  /minor 54  /date 2014-04-27  /summary "スロットつき関係写像を実装"
|-- VERSION  /minor 55  /date 2014-05-02  /summary "大域スロットを実装"
|-- VERSION  /minor 56  /date 2014-05-11  /summary "関係写像のスコープを整理"
|-- VERSION  /minor 57  /date 2014-05-14  /summary "トークン木の組み立て失敗時のエラーを実装"
|-- VERSION  /minor 58  /date 2014-05-17  /summary "演算属性の編集機能を実装"
|-- VERSION  /minor 59  /date 2014-05-23  /summary "短縮語を書き出す機能を実装"
|-- VERSION  /minor 60  /date 2014-05-29  /summary "ハッシュ・キーワードを囲み句に変更"
|-- VERSION  /minor 61  /date 2014-06-03  /summary "項目内容としての組を扱う機能を見直し"
|-- VERSION  /minor 62  /date 2014-06-08  /summary "関係写像のグループを見直し"
|-- VERSION  /minor 63  /date 2014-06-14  /summary "ツールキットを最新化"
|-- VERSION  /minor 64  /date 2014-06-19  /summary "制約外判断を導入"
|-- VERSION  /minor 65  /date 2014-07-07  /summary "関係写像演算子の定義方法を変更"
|-- VERSION  /minor 66  /date 2014-08-03  /summary "空番の処理方法を見直し"
|-- VERSION  /minor 67  /date 2014-08-12  /summary "項目計算式の計算アルゴリズムを見直し"
|-- VERSION  /minor 68  /date 2014-08-15  /summary "項目演算子を別パッケージに分離"
|-- VERSION  /minor 69  /date 2014-08-23  /summary "項目計算式のバグを修正"
|-- VERSION  /minor 70  /date 2014-08-26  /summary "括弧の種類をデータ型として定義"
|-- VERSION  /minor 71  /date 2014-09-05  /summary "リテラル計算式を実装"
|-- VERSION  /minor 72  /date 2014-09-07  /summary "演算子セットをひとつのデータ型でとりまとめ"
|-- VERSION  /minor 73  /date 2014-09-14  /summary "データ解釈リテラルを導入"
|-- VERSION  /minor 74  /date 2014-09-20  /summary "トークン化処理を整理"
|-- VERSION  /minor 75  /date 2014-09-24  /summary "データ解釈による見出し検査を実装"
|-- VERSION  /minor 76  /date 2014-10-04  /summary "型定数を導入"
|-- VERSION  /minor 77  /date 2014-10-12  /summary "型定数を使った見出しに変更"
|-- VERSION  /minor 78  /date 2014-10-22  /summary "作業項目に関する機能を実装"
|-- VERSION  /minor 79  /date 2014-10-28  /summary "日付の基本機能を実装"
|-- VERSION  /minor 80  /date 2014-11-02  /summary "経過時間型を実装"
|-- VERSION  /minor 81  /date 2014-11-12  /summary "秒までの精度をもつ時刻型を実装"
|-- VERSION  /minor 82  /date 2014-11-18  /summary "年週日と年通日の時刻型を実装"
|-- VERSION  /minor 83  /date 2014-11-25  /summary "区の基本機能を実装"
|-- VERSION  /minor 84  /date 2014-12-03  /summary "構文ツール koshu-syntax を修正"
|-- VERSION  /minor 85  /date 2014-12-09  /summary "重関係参照のインタフェースを見直し"
|-- VERSION  /minor 86  /date 2014-12-18  /summary "GHC 7.8.3 向けに更新"
|-- VERSION  /minor 87  /date 2014-12-22  /summary "区番による有効範囲を実装"
|-- VERSION  /minor 88  /date 2014-12-25  /summary "関係写像にフックを追加"
|-- VERSION  /minor 89  /date 2014-12-26  /summary "関係写像のためのモジュールを整理"
|-- VERSION  /minor 90  /date 2015-01-06  /summary "資源に関する関係写像演算子"
|-- VERSION  /minor 91  /date 2015-01-11  /summary "ウェブ・リソースの読み込み機能を実装"
|-- VERSION  /minor 92  /date 2015-01-18  /summary "大域パラメータを状態として使用"
|-- VERSION  /minor 93  /date 2015-01-23  /summary "トークン・パラメータ"
|-- VERSION  /minor 94  /date 2015-02-03  /summary "関係写像演算子の属性を再実装"
|-- VERSION  /minor 95  /date 2015-02-06  /summary "about 節を導入"
|-- VERSION  /minor 96  /date 2015-02-09  /summary "節の構築を失敗可能に変更"
|-- VERSION  /minor 97  /date 2015-02-13  /summary "重関係参照の構文を変更"
|-- VERSION  /minor 98  /date 2015-02-17  /summary "演算子属性を再実装"
|-- VERSION  /minor 99  /date 2015-02-22  /summary "文面上の有効範囲をもつ重関係参照"

```

Command `koshu list-version.k VERSION.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    list-version.k
**    VERSION.k
**

|-- VERSION  /major 0  /minor 0  /date 2013-04-18  /summary '生まれました
|-- VERSION  /major 0  /minor 1  /date 2013-05-03  /summary "標準入出力間でデータ編集を行う koshu コマンドをパッケージ化"
|-- VERSION  /major 0  /minor 2  /date 2013-05-14  /summary "プログラムのなかに甲州記法を埋め込む [koshu| ... |] を実装"
|-- VERSION  /major 0  /minor 3  /date 2013-05-20  /summary 'ライブラリとコマンドを別パッケージに分割
|-- VERSION  /major 0  /minor 4  /date 2013-05-22  /summary "RDF を甲州記法に変換するプログラム koshu-rdf を追加"

|-- VERSION  /major 0  /minor 5  /date 2013-06-03  /summary "関係写像の定義を Minimal モジュールへ分離"
|-- VERSION  /major 0  /minor 6  /date 2013-06-07  /summary '関係写像のプリティプリンタを追加
|-- VERSION  /major 0  /minor 7  /date 2013-06-10  /summary '関係写像を別パッケージに分割
|-- VERSION  /major 0  /minor 8  /date 2013-06-12  /summary "koshu-baala パッケージを koshu-baala-base に改名"
|-- VERSION  /major 0  /minor 9  /date 2013-06-14  /summary '間違いがみつかった箇所のソースコードを表示

|-- VERSION  /major 0  /minor 10  /date 2013-06-17  /summary 'ソースコードを節単位に分割する処理を整理
|-- VERSION  /major 0  /minor 11  /date 2013-06-20  /summary "関係写像の実装に必要な機能を OpKit モジュールに集約"
|-- VERSION  /major 0  /minor 12  /date 2013-06-21  /summary '節の合併
|-- VERSION  /major 0  /minor 13  /date 2013-06-26  /summary '関係写像のオペランドを整理
|-- VERSION  /major 0  /minor 14  /date 2013-06-29  /summary "構文ツール koshu-syntax を作成"

|-- VERSION  /major 0  /minor 15  /date 2013-06-29  /summary "甲州プロセッサを koshu-baala-processor パッケージに分離"
|-- VERSION  /major 0  /minor 16  /date 2013-07-01  /summary "四重星印 **** による注釈"
|-- VERSION  /major 0  /minor 17  /date 2013-07-03  /summary '二重線による改行とワンライナー
|-- VERSION  /major 0  /minor 18  /date 2013-07-04  /summary "Order.hs などを base から operator パッケージに移動"
|-- VERSION  /major 0  /minor 19  /date 2013-07-05  /summary "データの差異を計算する koshu-change コマンドを作成"

|-- VERSION  /major 0  /minor 20  /date 2013-07-06  /summary 'トークン番号を数えるように修正
|-- VERSION  /major 0  /minor 21  /date 2013-07-07  /summary 'リストと組を読み書きする機能を追加
|-- VERSION  /major 0  /minor 22  /date 2013-07-09  /summary '引用符など特殊な文字を含んだ文字列を扱う機能を追加
|-- VERSION  /major 0  /minor 23  /date 2013-07-11  /summary '計算リストにしたがって計算する機能を実装
|-- VERSION  /major 0  /minor 24  /date 2013-07-12  /summary "退行テストを実施する koshu-regress コマンドを追加"
*** 25

|-- VERSION  /major 0  /minor 25  /date 2013-07-17  /summary "Content モジュールを追加"
|-- VERSION  /major 0  /minor 26  /date 2013-07-20  /summary '項目内容を計算する機能を再実装
|-- VERSION  /major 0  /minor 27  /date 2013-07-21  /summary '関係写像が失敗できるように型を変更
|-- VERSION  /major 0  /minor 28  /date 2013-07-22  /summary "base パッケージの言語機能を core パッケージに分離"
|-- VERSION  /major 0  /minor 30  /date 2013-07-27  /summary 'リテラルを読み書きする機能を整理

|-- VERSION  /major 0  /minor 31  /date 2013-07-29  /summary "GHC 7.6.3 でビルドできるように修正"
|-- VERSION  /major 0  /minor 32  /date 2013-08-02  /summary '関係演算子に関連するコードを整理
|-- VERSION  /major 0  /minor 33  /date 2013-08-08  /summary '小数を扱う機能を追加
|-- VERSION  /major 0  /minor 34  /date 2013-08-12  /summary 'エラーメッセージを改善
|-- VERSION  /major 0  /minor 35  /date 2013-08-24  /summary "affirm と deny の構文を変更"

|-- VERSION  /major 0  /minor 36  /date 2013-09-05  /summary "テキスト・リテラルの構文を変更"
|-- VERSION  /major 0  /minor 37  /date 2013-09-07  /summary "判断記号として |== を導入"
|-- VERSION  /major 0  /minor 38  /date 2013-09-19  /summary '関係計算式の実行方法を変更
|-- VERSION  /major 0  /minor 39  /date 2013-10-16  /summary '関係写像演算子のオペランドの処理方法を整理
|-- VERSION  /major 0  /minor 40  /date 2013-10-27  /summary 'データ検証機能を追加

|-- VERSION  /major 0  /minor 41  /date 2013-12-31  /summary 'エラーを報告する方法を書き直し
|-- VERSION  /major 0  /minor 42  /date 2014-01-15  /summary '大域データを扱う機能を追加
|-- VERSION  /major 0  /minor 43  /date 2014-02-05  /summary '関係写像の組み立て方法を見直し
|-- VERSION  /major 0  /minor 44  /date 2014-02-17  /summary '構文演算子の仕組みを追加
|-- VERSION  /major 0  /minor 45  /date 2014-02-21  /summary '短縮記号を読み込む処理を実装

|-- VERSION  /major 0  /minor 46  /date 2014-02-28  /summary 'ラムダ算法を使用した項目計算の方法を実装
|-- VERSION  /major 0  /minor 47  /date 2014-03-11  /summary '再帰関係写像を処理する仕組みを実装
|-- VERSION  /major 0  /minor 48  /date 2014-03-15  /summary '関係写像の実装方法を整理
|-- VERSION  /major 0  /minor 49  /date 2014-03-19  /summary 'エラーを報告する方法を書き直し
|-- VERSION  /major 0  /minor 50  /date 2014-03-27  /summary '項目名の扱い方を改善
*** 50

|-- VERSION  /major 0  /minor 51  /date 2014-04-08  /summary '入れ子の関係を計算する方法を実装
|-- VERSION  /major 0  /minor 52  /date 2014-04-14  /summary '入れ子の関係を表形式で出力する方法を実装
|-- VERSION  /major 0  /minor 53  /date 2014-04-21  /summary 'メタ演算子を独立したモジュールに分割
|-- VERSION  /major 0  /minor 54  /date 2014-04-27  /summary 'スロットつき関係写像を実装
|-- VERSION  /major 0  /minor 55  /date 2014-05-02  /summary '大域スロットを実装

|-- VERSION  /major 0  /minor 56  /date 2014-05-11  /summary '関係写像のスコープを整理
|-- VERSION  /major 0  /minor 57  /date 2014-05-14  /summary 'トークン木の組み立て失敗時のエラーを実装
|-- VERSION  /major 0  /minor 58  /date 2014-05-17  /summary '演算属性の編集機能を実装
|-- VERSION  /major 0  /minor 59  /date 2014-05-23  /summary '短縮語を書き出す機能を実装
|-- VERSION  /major 0  /minor 60  /date 2014-05-29  /summary "ハッシュ・キーワードを囲み句に変更"

|-- VERSION  /major 0  /minor 61  /date 2014-06-03  /summary '項目内容としての組を扱う機能を見直し
|-- VERSION  /major 0  /minor 62  /date 2014-06-08  /summary '関係写像のグループを見直し
|-- VERSION  /major 0  /minor 63  /date 2014-06-14  /summary 'ツールキットを最新化
|-- VERSION  /major 0  /minor 64  /date 2014-06-19  /summary '制約外判断を導入
|-- VERSION  /major 0  /minor 65  /date 2014-07-07  /summary '関係写像演算子の定義方法を変更

|-- VERSION  /major 0  /minor 66  /date 2014-08-03  /summary '空番の処理方法を見直し
|-- VERSION  /major 0  /minor 67  /date 2014-08-12  /summary '項目計算式の計算アルゴリズムを見直し
|-- VERSION  /major 0  /minor 68  /date 2014-08-15  /summary '項目演算子を別パッケージに分離
|-- VERSION  /major 0  /minor 69  /date 2014-08-23  /summary '項目計算式のバグを修正
|-- VERSION  /major 0  /minor 70  /date 2014-08-26  /summary '括弧の種類をデータ型として定義

|-- VERSION  /major 0  /minor 71  /date 2014-09-05  /summary 'リテラル計算式を実装
|-- VERSION  /major 0  /minor 72  /date 2014-09-07  /summary '演算子セットをひとつのデータ型でとりまとめ
|-- VERSION  /major 0  /minor 73  /date 2014-09-14  /summary 'データ解釈リテラルを導入
|-- VERSION  /major 0  /minor 74  /date 2014-09-20  /summary 'トークン化処理を整理
|-- VERSION  /major 0  /minor 75  /date 2014-09-24  /summary 'データ解釈による見出し検査を実装
*** 75

|-- VERSION  /major 0  /minor 76  /date 2014-10-04  /summary '型定数を導入
|-- VERSION  /major 0  /minor 77  /date 2014-10-12  /summary '型定数を使った見出しに変更
|-- VERSION  /major 0  /minor 78  /date 2014-10-22  /summary '作業項目に関する機能を実装
|-- VERSION  /major 0  /minor 79  /date 2014-10-28  /summary '日付の基本機能を実装
|-- VERSION  /major 0  /minor 80  /date 2014-11-02  /summary '経過時間型を実装

|-- VERSION  /major 0  /minor 81  /date 2014-11-12  /summary '秒までの精度をもつ時刻型を実装
|-- VERSION  /major 0  /minor 82  /date 2014-11-18  /summary '年週日と年通日の時刻型を実装
|-- VERSION  /major 0  /minor 83  /date 2014-11-25  /summary '区の基本機能を実装
|-- VERSION  /major 0  /minor 84  /date 2014-12-03  /summary "構文ツール koshu-syntax を修正"
|-- VERSION  /major 0  /minor 85  /date 2014-12-09  /summary '重関係参照のインタフェースを見直し

|-- VERSION  /major 0  /minor 86  /date 2014-12-18  /summary "GHC 7.8.3 向けに更新"
|-- VERSION  /major 0  /minor 87  /date 2014-12-22  /summary '区番による有効範囲を実装
|-- VERSION  /major 0  /minor 88  /date 2014-12-25  /summary '関係写像にフックを追加
|-- VERSION  /major 0  /minor 89  /date 2014-12-26  /summary '関係写像のためのモジュールを整理
|-- VERSION  /major 0  /minor 90  /date 2015-01-06  /summary '資源に関する関係写像演算子

|-- VERSION  /major 0  /minor 91  /date 2015-01-11  /summary "ウェブ・リソースの読み込み機能を実装"
|-- VERSION  /major 0  /minor 92  /date 2015-01-18  /summary '大域パラメータを状態として使用
|-- VERSION  /major 0  /minor 93  /date 2015-01-23  /summary "トークン・パラメータ"
|-- VERSION  /major 0  /minor 94  /date 2015-02-03  /summary '関係写像演算子の属性を再実装
|-- VERSION  /major 0  /minor 95  /date 2015-02-06  /summary "about 節を導入"

|-- VERSION  /major 0  /minor 96  /date 2015-02-09  /summary '節の構築を失敗可能に変更
|-- VERSION  /major 0  /minor 97  /date 2015-02-13  /summary '重関係参照の構文を変更
|-- VERSION  /major 0  /minor 98  /date 2015-02-17  /summary '演算子属性を再実装
|-- VERSION  /major 0  /minor 99  /date 2015-02-22  /summary '文面上の有効範囲をもつ重関係参照

*** 99 judges

**
**  SUMMARY
**      99 judges on VERSION
**      99 judges in total
**
```



## command

This document is produced by the command:

```
koshu-inout.sh -s -g koshu list-version.k
```