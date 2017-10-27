; SYNTAX TEST "Packages/User/x86_64 Assembly.tmbundle/Syntaxes/x86_64 Assembly.sublime-syntax"


%include "macros.mac"
;<- punctuation.definition.keyword.preprocessor
;^^^^^^^ keyword.control.import
%pathsearch MyFoo "foo.bin"
;<- punctuation.definition.keyword.preprocessor
;^^^^^^^^^^ keyword.control.preprocessor
;           ^^^^^ entity.name.constant.preprocessor
%depend "dep.mac"
;<- punctuation.definition.keyword.preprocessor
;^^^^^^ keyword.control.import

%imacro incbin 1-2+ 0 
%pathsearch dep %1 
;                ^ variable.other.preprocessor - invalid.illegal
;          ^^^^^^^ meta.preprocessor.macro
%depend dep 
        incbin dep,%2 
;                   ^ variable.other.preprocessor - invalid.illegal
%endmacro

%include %1
;         ^ invalid.illegal
%pathsearch %2
;            ^ invalid.illegal
%depend %3
;        ^ invalid.illegal
