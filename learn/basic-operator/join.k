** -*- koshu -*-
**
**  p | join q は、関係写像 p が出力した関係と、
**  関係写像 q が出力した関係の結びを計算します。
**  結びとは、共有項目のみに pick した
**  ふたつの関係を縦に合成することを意味します。
**  下の例での p と q の共有項目は /b なので、
**  項目 /b だけの合併した関係が得られます。
**

|== R : p | join q

p : source P /a /b
q : source Q /b /c

|-- P  /a 1  /b 10
|-- P  /a 2  /b 20
|-- P  /a 3  /b 30

|-- Q  /b 20  /c 200
|-- Q  /b 20  /c 210
|-- Q  /b 20  /c 220
|-- Q  /b 30  /c 300
|-- Q  /b 40  /c 400
