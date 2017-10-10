; SYNTAX TEST "Packages/User/x86_64 Assembly.tmbundle/Syntaxes/x86_64 Assembly.sublime-syntax"

1|1
2^2
3&3
4<<4
5>>5
6+6
7-7
8*8
9/9
10//10
11% 11
12%% 12
symbol wrt weird_seg

+1
-2
~3
!4
seg symbol

4<4
5>5

%macro
%%also_macro

; tests

1|1
;^ keyword.operator
2^2
;^ keyword.operator
3&3
;^ keyword.operator
4<<4
;^^ keyword.operator
5>>5
;^^ keyword.operator
6+6
;^ keyword.operator
7-7
;^ keyword.operator
8*8
;^ keyword.operator
9/9
;^ keyword.operator
10//10
; ^^ keyword.operator
11% 11
; ^ keyword.operator
12%% 12
; ^^ keyword.operator
symbol wrt weird_seg
;      ^^^ keyword.operator.word

 +1
;^ keyword.operator
 -2
;^ keyword.operator
 ~3
;^ keyword.operator
 !4
;^ keyword.operator
 seg symbol
;^^^ keyword.operator.word

4<4
5>5

%macro
;<- punctuation.definition.keyword
%%also_macro
;<- punctuation.definition.keyword
