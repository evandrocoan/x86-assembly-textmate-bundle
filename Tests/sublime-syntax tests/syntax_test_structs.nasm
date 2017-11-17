; SYNTAX TEST "Packages/User/x86_64 Assembly.tmbundle/Syntaxes/x86_64 Assembly.sublime-syntax"

struc   mytype 
  mt_long:      resd    1 
  mt_word:      resw    1 
  mt_byte:      resb    1 
  mt_str:       resb    32 
endstruc

struc mytype
  .long:        resd    1 
  .word:        resw    1 
  .byte:        resb    1 
  .str:         resb    32 
endstruc

mov ax,[mystruc.mt_word]     ; invalid
mov ax,[mystruc+mt_word]     ; correct
mov ax,[mystruc+mytype.word] ; also correct

 struc mytype, -40
;^^^^^ support.function
;      ^^^^^^ entity.name.struct
  .label       resb     1
;^^^^^^^^^^^^^^^^^^^^^^^^ meta.struct
 endstruc
;^^^^^^^^ support.function
struc another_struct
;<- support.function
;^^^^ support.function
;      ^^^^^^^^^^^^^ entity.name.struct
endstruc
;<- support.function
;^^^^^^^ support.function

mov [ebp + mytype.word], ax
;<- - meta.struct
;^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.struct

 endstruc
;^^^^^^^^ invalid.illegal

mystruc: 
;<- entity.name.constant
;^^^^^^ entity.name.constant
    istruc mytype 
;   ^^^^^^ support.function
;          ^^^^^^ variable.struct
        at mt_long, dd      123456 
;       ^^ support.function
        at mt_word, dw      1024 
        at mt_byte, db      'x' 
        at mt_str,  db      'hello, world', 13, 10, 0 
    iend
;   ^^^^ support.function
