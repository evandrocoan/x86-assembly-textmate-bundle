; SYNTAX TEST "Packages/User/x86_64 Assembly.tmbundle/Syntaxes/x86_64 Assembly.sublime-syntax"

    ; single-line comment
;   ^ punctuation.definition.comment
;   ^^^^^^^^^^^^^^^^^^^^^ comment.line

    # also single-line comment
;   ^ punctuation.definition.comment
;   ^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line

    /* multi-line */ mov ax, bx
;   ^^ punctuation.definition.comment
;                 ^^ punctuation.definition.comment
;   ^^^^^^^^^^^^^^^^ comment.block
;                    ^^^ keyword.operator.word.mnemonic

    /*/*
;   ^^ punctuation.definition.comment
;   ^^^^ comment.block
    /**
;^^^^^^ comment.block
     ; multi-line comment
;^^^^^^^^^^^^^^^^^^^^^^^^ comment.block
     **/ mov ax, bx
;^^^^^^^ comment.block
;     ^^ punctuation.definition.comment
;        ^^^ keyword.operator.word.mnemonic
