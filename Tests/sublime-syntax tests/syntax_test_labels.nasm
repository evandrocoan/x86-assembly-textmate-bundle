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
; ^^^^^ entity.name.label
  label:
; ^^^^^ entity.name.label
;      ^ punctuation.separator
  la12bel
; ^^^^^^^ entity.name.label
  la12bel:
; ^^^^^^^ entity.name.label
;        ^ punctuation.separator
  la_$#@~.?bel_?
; ^^^^^^^^^^^^^^ entity.name.label
  la_$#@~.?bel_?:
; ^^^^^^^^^^^^^^ entity.name.label
;               ^ punctuation.separator
  .local_label
; ^ punctuation.separator storage.modifier
;  ^^^^^^^^^^^ entity.name.label
  .local_label:
; ^ punctuation.separator storage.modifier
;  ^^^^^^^^^^^ entity.name.label
;             ^ punctuation.separator

  ..@special_label
; ^^^ punctuation.separator storage.modifier
;    ^^^^^^^^^^^^^ entity.name.label

  ..@special_label:
; ^^^ punctuation.separator storage.modifier
;    ^^^^^^^^^^^^^ entity.name.label
;                 ^ punctuation.separator

  0asdlfh
  @not_a_label:
  ~not_a_label:
  #not_a_label:
  $not_a_label:
  $variable

  mov ax, bx
; ^^^ keyword.operator.word.mnemonic
;     ^^ constant.language.register
;       ^ punctuation.separator
;         ^^ constant.language.register
