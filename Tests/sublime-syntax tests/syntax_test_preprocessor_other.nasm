; SYNTAX TEST "Packages/User/x86_64 Assembly.tmbundle/Syntaxes/x86_64 Assembly.sublime-syntax"

%ifdef F1 
    ; do some setup 
%elifdef F2 
    ; do some different setup 
%else 
    %error "Neither F1 nor F2 was defined." 
;   ^ punctuation.definition.keyword.preprocessor
;    ^^^^^ keyword.control.preprocessor
;          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted
    %error Neither F1 nor F2 was defined.
;   ^ punctuation.definition.keyword.preprocessor
;    ^^^^^ keyword.control.preprocessor
;          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string
%endif

%ifdef F1 
    ; do some setup 
%elifdef F2 
    ; do some different setup 
%else 
    %warning "Neither F1 nor F2 was defined, assuming F1." 
;   ^ punctuation.definition.keyword.preprocessor
;    ^^^^^^^ keyword.control.preprocessor
;            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted
    %warning "Neither F1 nor F2 was defined, assuming F1." 
;   ^ punctuation.definition.keyword.preprocessor
;    ^^^^^^^ keyword.control.preprocessor
;            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string
    %define F1 
%endif

%if foo > 64 
    %assign foo_over foo-64 
    %fatal foo is foo_over bytes too large 
;   ^ punctuation.definition.keyword.preprocessor
;    ^^^^^ keyword.control.preprocessor
;          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string
    %fatal "foo is foo_over bytes too large"
;   ^ punctuation.definition.keyword.preprocessor
;    ^^^^^ keyword.control.preprocessor
;          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted
%endif

%line nnn[+mmm] [filename]
;<- punctuation.definition.keyword.preprocessor
;^^^^ keyword.control.preprocessor
%!variable
;<- punctuation.definition.keyword.preprocessor - variable.parameter.preprocessor
;^ punctuation.definition.variable - variable.parameter.preprocessor
; ^^^^^^^^ variable.parameter.preprocessor
%!'also variable'
;<- punctuation.definition.keyword.preprocessor - variable.parameter.preprocessor
;^ punctuation.definition.variable - variable.parameter.preprocessor
; ^^^^^^^^^^^^^^^ variable.parameter.preprocessor
