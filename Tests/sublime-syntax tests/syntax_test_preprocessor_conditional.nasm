; SYNTAX TEST "Packages/User/x86_64 Assembly.tmbundle/Syntaxes/x86_64 Assembly.sublime-syntax"

%if<condition> 
;<- punctuation.definition.keyword.preprocessor
;^^ keyword.control.preprocessor
%elif<condition2> 
;<- punctuation.definition.keyword.preprocessor
;^^^^ keyword.control.preprocessor
%else 
;<- punctuation.definition.keyword.preprocessor
;^^^^ keyword.control.preprocessor
%endif

%ifn
;<- punctuation.definition.keyword.preprocessor
;^^^ keyword.control.preprocessor
%elifn 
;<- punctuation.definition.keyword.preprocessor
;^^^^^ keyword.control.preprocessor
%endif
;<- punctuation.definition.keyword.preprocessor
;^^^^^ keyword.control.preprocessor

%ifdef DEBUG
;<- punctuation.definition.keyword.preprocessor
;^^^^^ keyword.control.preprocessor
;      ^^^^^ entity.name.constant
    push %1
;   ^^^^ keyword.operator.word.mnemonic
;         ^ invalid.illegal
;^^^^^^^^^^ meta.block
%else
;<- punctuation.definition.keyword.preprocessor
;^^^^ keyword.control.preprocessor
    push %2
;   ^^^^ keyword.operator.word.mnemonic
;         ^ invalid.illegal
;^^^^^^^^^^ meta.block
%endif
;<- punctuation.definition.keyword.preprocessor
;^^^^^ keyword.control.preprocessor

%ifndef DEBUG
;<- punctuation.definition.keyword.preprocessor
;^^^^^ keyword.control.preprocessor
%elifdef RELEASE
;<- punctuation.definition.keyword.preprocessor
;^^^^^^^ keyword.control.preprocessor
%elifndef TEST
;<- punctuation.definition.keyword.preprocessor
;^^^^^^^^ keyword.control.preprocessor
%endif

%macro mymacro 2
%ifdef DEBUG
    push %1
;   ^^^^ keyword.operator.word.mnemonic
;         ^ variable.other.preprocessor
;^^^^^^^^^^ meta.block
%else
    push %2
;         ^ variable.other.preprocessor
;^^^^^^^^^^ meta.block
%endif
%endmacro

%ifmacro MyMacro 1-3+.nolist
;<- punctuation.definition.keyword.preprocessor
;^^^^^^^ keyword.control.preprocessor
;        ^^^^^^^ entity.name.function.preprocessor
;                ^^^ variable.parameter.preprocessor
;                   ^^^^^^^^ storage.modifier
     %error "MyMacro 1-3" causes a conflict with an existing macro. 
%else 
     %macro MyMacro 1-3+.nolist
             ; insert code to define the macro 
     %endmacro 
%endif

%ifnmacro MyMacro 1-3+.nolist
;<- punctuation.definition.keyword.preprocessor
;^^^^^^^^ keyword.control.preprocessor
;         ^^^^^^^ entity.name.function.preprocessor
;                 ^^^ variable.parameter.preprocessor
;                    ^^^^^^^^ storage.modifier

%elifmacro MyMacro 1
;<- punctuation.definition.keyword.preprocessor
;^^^^^^^^^ keyword.control.preprocessor
;          ^^^^^^^ entity.name.function.preprocessor
;                  ^ variable.parameter.preprocessor

%elifnmacro MyMacro 2-*
;<- punctuation.definition.keyword.preprocessor
;^^^^^^^^^^ keyword.control.preprocessor
;           ^^^^^^^ entity.name.function.preprocessor
;                   ^^^ variable.parameter.preprocessor
%endif


%else
;^^^^ invalid.illegal
%elif
;^^^^ invalid.illegal
%elifn
;^^^^^ invalid.illegal
%endif
;^^^^^ invalid.illegal
%elifdef RELEASE
;^^^^^^^ invalid.illegal
%elifndef RELEASE
;^^^^^^^^ invalid.illegal
%elifmacro MyMacro 1
;^^^^^^^^^ invalid.illegal
%elifnmacro MyMacro 2-*
;^^^^^^^^^^ invalid.illegal
