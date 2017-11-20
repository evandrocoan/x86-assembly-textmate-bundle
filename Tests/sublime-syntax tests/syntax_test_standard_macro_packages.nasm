; SYNTAX TEST "Packages/User/x86_64 Assembly.tmbundle/Syntaxes/x86_64 Assembly.sublime-syntax"

__USE_ALTREG__
 ax,  cx,  dx,  bx, spl, bpl, sil, dil
 r0,  r1,  r2,  r3,  r4,  r5,  r6,  r7
;^^ support.constant
;     ^^ support.constant
;          ^^ support.constant
;               ^^ support.constant
;                    ^^ support.constant
;                         ^^ support.constant
;                              ^^ support.constant
;                                   ^^ support.constant
 r0l, r1l, r2l, r3l
;^^^ support.constant
;     ^^^ support.constant
;          ^^^ support.constant
;               ^^^ support.constant
 r0h, r1h, r2h, r3h
;^^^ support.constant
;     ^^^ support.constant
;          ^^^ support.constant
;               ^^^ support.constant
 r4l, r5l, r6l, r7l
;^^^ invalid.illegal
;     ^^^ invalid.illegal
;          ^^^ invalid.illegal
;               ^^^ invalid.illegal
 r4h, r5h, r6h, r7h
;^^^ invalid.illegal
;     ^^^ invalid.illegal
;          ^^^ invalid.illegal
;               ^^^ invalid.illegal
%use altreg 
proc: 
      mov r0l,r3h                    ; mov al,bh 
      ret

__USE_SMARTALIGN__
