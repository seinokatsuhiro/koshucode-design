# I/O List

- koshu [term-name.k](#term-namek)



## [term-name.k](term-name.k)

```
** -*- koshu -*-
**
**  The relmap operator "term-name" makes a unary relation
**  that contains all term names of the input relation.
**  Term names like /x, /y, ... are beginning with slash.
**  Term names as content like '/x, '/y, ... are quoted.
**

|-- P  /x 1  /y 10  /z 50
|-- P  /x 1  /y 20

p : source P /x /y /z

|== P    -table : p
|== TERM -table : p | term-name /term
```

Command `koshu term-name.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    term-name.k
**

|-- P  /x 1  /y 10  /z 50
|-- P  /x 1  /y 20

*** 2 judges

**  TABLE : P
**
**    /x  /y   /z
**    --- ---- ----
**    1   10   50
**    1   20   ()

|-- TERM  /term '/x
|-- TERM  /term '/y
|-- TERM  /term '/z

*** 3 judges

**  TABLE : TERM
**
**    /term
**    -----
**    '/x
**    '/y
**    '/z

**
**  SUMMARY
**       2 judges on P
**       3 judges on TERM
**       5 judges in total
**
```



## command

This document is produced by the command:

```
koshu-inout.sh -r -g koshu
```