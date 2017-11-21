; SYNTAX TEST "Packages/User/x86_64 Assembly.tmbundle/Syntaxes/x86_64 Assembly.sublime-syntax"

 ideal jumps p386 p486 p586 end
;^^^^^ invalid.deprecated

 bits 16
;^^^^ support.function.directive
 use16 use32 use64
;^^^^^ support.function.directive
;      ^^^^^ support.function.directive
;            ^^^^^ support.function.directive
 bits16
;^^^^^^ - support.function.directive
 use8
;^^^^ - support.function.directive

 default
;^^^^^^^ support.function.directive
 default rel
;^^^^^^^ support.function.directive
;        ^^^ support.constant.directive
 default nonsense
;^^^^^^^ support.function.directive
;        ^^^^^^^^ - support.constant.directive
 nobnd
;^^^^^ - support.constant.directive
