; SYNTAX TEST "Packages/User/x86_64 Assembly.tmbundle/Syntaxes/x86_64 Assembly.sublime-syntax"

%include "macros.mac"
;<- punctuation.definition.keyword.preprocessor
;^^^^^^^ keyword.control.import
%pathsearch MyFoo "foo.bin"
;<- punctuation.definition.keyword.preprocessor
;^^^^^^^^^^ keyword.control.import
;           ^^^^^ entity.name.constant.preprocessor
%depend "dep.mac"
;<- punctuation.definition.keyword.preprocessor
;^^^^^^ keyword.control.import

%imacro incbin 1-2+ 0 
%pathsearch dep %1 
%depend dep 
        incbin dep,%2 
%endmacro

