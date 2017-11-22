; SYNTAX TEST "Packages/User/x86_64 Assembly.tmbundle/Syntaxes/x86_64 Assembly.sublime-syntax"

label
label:
la12bel
la12bel:
la_$#@~.?bel_?
la_$#@~.?bel_?:
.local_label
.local_label:

  label
; ^^^^^ entity.name.constant
  label:
; ^^^^^ entity.name.constant
;      ^ punctuation.separator
  la12bel
; ^^^^^^^ entity.name.constant
  la12bel:
; ^^^^^^^ entity.name.constant
;        ^ punctuation.separator
  la_$#@~.?bel_?
; ^^^^^^^^^^^^^^ entity.name.constant
  la_$#@~.?bel_?:
; ^^^^^^^^^^^^^^ entity.name.constant
;               ^ punctuation.separator
  .local_label
; ^ punctuation.separator storage.modifier
;  ^^^^^^^^^^^ entity.name.constant
  .local_label:
; ^ punctuation.separator storage.modifier
;  ^^^^^^^^^^^ entity.name.constant
;             ^ punctuation.separator

  ..@special_label
; ^^^ punctuation.separator storage.modifier
;    ^^^^^^^^^^^^^ entity.name.constant

  ..@special_label:
; ^^^ punctuation.separator storage.modifier
;    ^^^^^^^^^^^^^ entity.name.constant
;                 ^ punctuation.separator

  ..start
; ^^^^^^^ support.function
  ..imagebase
; ^^^^^^^^^^^ support.function
  ..tlvp
; ^^^^^^ support.function
  ..gotpcrel
; ^^^^^^^^^^ support.function
  ..gotpc
; ^^^^^^^ support.function
  ..gotoff
; ^^^^^^^^ support.function
  ..got
; ^^^^^ support.function
  ..plt
; ^^^^^ support.function
  ..sym
; ^^^^^ support.function
  ..tlsie
; ^^^^^^^ support.function
  ..gottpoff
; ^^^^^^^^^^ support.function


  0asdlfh
  @not_a_label:
  ~not_a_label:
  #not_a_label:
  $not_a_label:
  $variable
  ..not_a_label:
  ..not_a_label


  mov ax, bx
; ^^^ keyword.operator.word.mnemonic
;     ^^ constant.language.register
;         ^^ constant.language.register
