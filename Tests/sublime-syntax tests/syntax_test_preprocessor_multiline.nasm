; SYNTAX TEST "Packages/User/x86_64 Assembly.tmbundle/Syntaxes/x86_64 Assembly.sublime-syntax"

%macro  silly  2 
;<- punctuation.definition.keyword.preprocessor
;^^^^^ keyword.control.import
;       ^^^^^ entity.name.function
;              ^ variable.parameter
    %2: db      %1 
;   ^ punctuation.definition.variable
;    ^ variable.other.preprocessor
;^^^^^^^^^^^^^^^^^ meta.preprocessor.macro
%endmacro 
;<- punctuation.definition.keyword.preprocessor
;^^^^^^^^ keyword.control.import
        silly 'a', letter_a             ; letter_a:  db 'a' 
        silly 'ab', string_ab           ; string_ab: db 'ab' 
        silly {13,10}, crlf             ; crlf:      db 13,10
