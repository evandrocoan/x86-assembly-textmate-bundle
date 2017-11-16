; SYNTAX TEST "Packages/User/x86_64 Assembly.tmbundle/Syntaxes/x86_64 Assembly.sublime-syntax"

%push    foobar
;<- punctuation.definition.keyword.preprocessor
;^^^^ keyword.control.preprocessor
%pop     repeat
;<- punctuation.definition.keyword.preprocessor
;^^^ keyword.control.preprocessor

%macro repeat 0 
    %push   repeat 
    %$begin: 
;   ^^ punctuation.definition.keyword.preprocessor
;     ^^^^^ entity.name.constant
%endmacro 

%macro until 1 
        j%-1    %$begin 
    %pop
%endmacro

%define %$localmac 3
%$$localmac
%$$$localmac
;<- punctuation.definition.keyword.preprocessor
;^^^ punctuation.definition.keyword.preprocessor
;   ^^^^^^^^ entity.name.constant
