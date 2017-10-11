; SYNTAX TEST "Packages/User/x86_64 Assembly.tmbundle/Syntaxes/x86_64 Assembly.sublime-syntax"

%define THIS_VERY_LONG_MACRO_NAME_IS_DEFINED_TO \
        THIS_VALUE

%define ctrl    0x1F &
;<- punctuation.definition.preprocessor
;^^^^^^ keyword.control.import
;       ^^^^ entity.name.constant
;               ^^^^^^ meta.preprocessor.macro

%define param(a,b) ((a)+(a)*(b)) 
;<- punctuation.definition.preprocessor
;^^^^^^ keyword.control.import
;       ^^^^^ entity.name.function.preprocessor
;            ^ punctuation.section.group.begin
;             ^ variable.parameter
;              ^ punctuation.separator
;               ^ variable.parameter
;                ^ punctuation.section.group.end
;                  ^^^^^^^^^^^^^ meta.preprocessor.macro

%xdefine isTrue  1 
%xdefine isFalse isTrue 
%xdefine isTrue  0 
val1:    db      isFalse 

%xdefine isTrue  1 
val2:    db      isFalse

%define Foo16	align 16
%define Foo32	align 32
%define Foo64	align 64
mov ax,Foo%[__BITS__]   ; Will expand to Foo16/Foo32/Foo64
;         ^ punctuation.definition.preprocessor
;          ^ punctuation.section.brackets.begin
;          ^^^^^^^^^^ meta.brackets
;           ^^^^^^^^ meta.preprocessor.macro
;                   ^ punctuation.section.brackets.end

%xdefine Bar         Quux    ; Expands due to %xdefine 
%define  Bar         %[Quux] ; Expands due to %[...]
;                    ^ punctuation.definition.preprocessor
;                     ^ punctuation.section.brackets.begin
;                     ^^^^^^ meta.brackets
;                      ^^^^ meta.preprocessor.macro
;                          ^ punctuation.section.brackets.end

%undef ctrl
;<- punctuation.definition.preprocessor
;^^^^^ keyword.control.import
;      ^^^^ entity.name.constant
