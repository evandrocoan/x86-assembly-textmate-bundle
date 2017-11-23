; SYNTAX TEST "Packages/User/x86_64 Assembly.tmbundle/Syntaxes/x86_64 Assembly.sublime-syntax"

 org 0x100
;^^^ support.function.directive

section "asdf" align=16
;       ^^^^^^ entity.name.section string.quoted
;              ^^^^^ variable.parameter.directive - string - support.function.directive

 section my_section progbits nobits start=16 vstart=32 follows=.text vfollows=custom nobits
;        ^^^^^^^^^^ entity.name.section string.unquoted
;                   ^^^^^^^^ storage.modifier.directive variable.parameter.directive
;                            ^^^^^^ storage.modifier.directive variable.parameter.directive
;                                   ^^^^^ variable.parameter.directive
;                                            ^^^^^^ variable.parameter.directive
;                                                      ^^^^^^^ variable.parameter.directive
;                                                                    ^^^^^^^^ variable.parameter.directive

 [map all myfile.map]
; ^^^ support.function.directive
;     ^^^ support.constant.directive.map
;         ^^^^^^^^^^ meta.path string.unquoted
 [map brief myfile.map]
;     ^^^^^ support.constant.directive.map
 [map sections myfile.map]
;     ^^^^^^^^ support.constant.directive.map
 [map segments myfile.map]
;     ^^^^^^^^ support.constant.directive.map
 [map symbols myfile.map]
;     ^^^^^^^ support.constant.directive.map
 [map symbols stdout]
;             ^^^^^^ meta.path support.constant.directive.map
 [map symbols stderr]
;             ^^^^^^ meta.path support.constant.directive.map
 [map stdout]
;     ^^^^^^ meta.path support.constant.directive.map
 [map map.pdb]
;     ^^^^^^^ meta.path string.unquoted
 map
;^^^ - support.function.directive
 all brief sections segments symbols stdout stderr
;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - support.constant.directive

 segment code
;        ^^^^ entity.name.section string.unquoted support.constant.section
 __NASMDEFSEG
;^^^^^^^^^^^^ support.constant.directive

segment data 
dvar:   dw      1234 

segment code 
function: 
        mov     ax,data         ; get segment address of data 
        mov     ds,ax           ; and move it into DS 
        inc     word [dvar]     ; now this reference will work 
        ret

extern  foo 
        mov     ax,seg foo            ; get preferred segment of foo 
        mov     ds,ax 
        mov     ax,data               ; a different segment 
        mov     es,ax 
        mov     ax,[ds:foo]           ; this accesses `foo' 
        mov     [es:foo wrt data],bx  ; so does this

segment code private align=16 class=my_class overlay=my_overlay ABSOLUTE=0xB800 ;asdf
;            ^^^^^^^ storage.modifier.directive variable.parameter.directive
;                             ^^^^^ variable.parameter.directive
;                                   ^^^^^^^^ entity.name.class string.unquoted
;                                            ^^^^^^^ variable.parameter.directive
;                                                    ^^^^^^^^^^ entity.name.class string.unquoted
;                                                               ^^^^^^^^ variable.parameter.directive

 segment data 
        ; some data 
 segment bss 
        ; some uninitialized data 
 group dgroup data bss
;^^^^^ support.function.directive
;      ^^^^^^ entity.name.section string.unquoted

 uppercase
;^^^^^^^^^ support.function.directive

 import  WSAStartup wsock32.dll
;^^^^^^ support.function.directive
;        ^^^^^^^^^^ entity.name.function
;                   ^^^^^^^^^^^ meta.path string.unquoted
 import  asyncsel   wsock32.dll WSAAsyncSelect
;^^^^^^ support.function.directive
;        ^^^^^^^^ entity.name.function
;                   ^^^^^^^^^^^ meta.path string.unquoted
;                               ^^^^^^^^^^^^^^ variable.function
 import  WSAStartup wsock32.dll; comment
;^^^^^^ support.function.directive
;        ^^^^^^^^^^ entity.name.function
;                   ^^^^^^^^^^^ meta.path string.unquoted
;                              ^^^^^^^^^ comment.line
 import  asyncsel   wsock32.dll WSAAsyncSelect; comment
;^^^^^^ support.function.directive
;        ^^^^^^^^ entity.name.function
;                   ^^^^^^^^^^^ meta.path string.unquoted
;                               ^^^^^^^^^^^^^^ variable.function
;                                             ^^^^^^^^^ comment.line
 import  asyncsel   wsock32.dll WSAAsyncSelect blah; comment
;                                              ^^^^ invalid.illegal
;                                                  ^^^^^^^^^ comment.line

 export  myfunc ;asf
;^^^^^^ support.function.directive
;        ^^^^^^ entity.name.constant
;               ^^^^ comment.line
 export  myfunc TheRealMoreFormalLookingFunctionName ;asdf
;^^^^^^ support.function.directive
;        ^^^^^^ entity.name.constant
;               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ variable.function
;                                                    ^^^^^ comment.line
 export  myfunc myfunc 1234  ; export by ordinal
;^^^^^^ support.function.directive
;        ^^^^^^ entity.name.constant
;               ^^^^^^ variable.function
;                            ^^^^^^^^^^^^^^^^^^^ comment.line
 export  myfunc myfunc resident parm=23 nodata ;asdf
;^^^^^^ support.function.directive
;        ^^^^^^ entity.name.constant
;               ^^^^^^ variable.function
;                      ^^^^^^^^ storage.modifier.directive variable.parameter.directive
;                               ^^^^ variable.parameter.directive
;                                       ^^^^^^ storage.modifier.directive variable.parameter.directive
;                                              ^^^^^ comment.line

 ..start
;^^^^^^^ support.constant

extern  foo

mov     ax,seg foo      ; get preferred segment base 
mov     es,ax           ; move it into ES 
mov     ax,[es:foo]     ; and use offset `foo' from it
mov     ax,[foo wrt dgroup]
extern  foo:wrt dgroup

common  nearvar 2:near   ; `nearvar' is a near common 
common  farvar  10:far   ; and `farvar' is far
common  c_5by2  10:far 5        ; two five-byte elements 
common  c_2by5  10:far 2        ; five two-byte elements
common  c_5by2  10:5            ; two five-byte elements 
common  c_2by5  10:2            ; five two-byte elements
common  foo     10:wrt dgroup 
common  bar     16:far 2:wrt data 
common  baz     24:wrt data:6

