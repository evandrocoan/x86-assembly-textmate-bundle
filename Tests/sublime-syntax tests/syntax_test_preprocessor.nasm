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

%undef ctrl
;<- punctuation.definition.preprocessor
;^^^^^ keyword.other.preprocessor
;      ^^^^ entity.name.constant
