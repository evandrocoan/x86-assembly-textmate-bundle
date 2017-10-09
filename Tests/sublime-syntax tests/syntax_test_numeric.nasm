; SYNTAX TEST "Packages/User/x86_64 Assembly.tmbundle/Syntaxes/x86_64 Assembly.sublime-syntax"

    200
;   ^^^ constant.numeric.decimal
    0200
;   ^^^^ constant.numeric.decimal
    0200d
;   ^^^^^ constant.numeric.decimal
    0200t
;   ^^^^^ constant.numeric.decimal
    0d200
;   ^^^^^ constant.numeric.decimal
    0t200
;   ^^^^^ constant.numeric.decimal
    200_000
;   ^^^^^^^ constant.numeric.decimal
    0_200d
;   ^^^^^^ constant.numeric.decimal
    0_200t
;   ^^^^^^ constant.numeric.decimal
    0d200_000
;   ^^^^^^^^^ constant.numeric.decimal
    0t200_000
;   ^^^^^^^^^ constant.numeric.decimal

    0c8h
;   ^^^^ constant.numeric.hex
    0d8h
;   ^^^^ constant.numeric.hex
    0c8x
;   ^^^^ constant.numeric.hex
    $0c8
;   ^^^^ constant.numeric.hex
    $9c8
;   ^^^^ constant.numeric.hex
    0xc8
;   ^^^^ constant.numeric.hex
    0hc8
;   ^^^^ constant.numeric.hex
    0_c8h
;   ^^^^^ constant.numeric.hex
    0_c8x
;   ^^^^^ constant.numeric.hex
    $0_c8
;   ^^^^^ constant.numeric.hex
    0x0_c8
;   ^^^^^^ constant.numeric.hex
    0h0_c8
;   ^^^^^^ constant.numeric.hex

    310q
;   ^^^^ constant.numeric.octal
    310o
;   ^^^^ constant.numeric.octal
    0o310
;   ^^^^^ constant.numeric.octal
    0q310
;   ^^^^^ constant.numeric.octal
    0_310q
;   ^^^^^^ constant.numeric.octal
    0_310o
;   ^^^^^^ constant.numeric.octal
    0o0_310
;   ^^^^^^^ constant.numeric.octal
    0q0_310
;   ^^^^^^^ constant.numeric.octal

    11001000b
;   ^^^^^^^^^ constant.numeric.binary
    11001000y
;   ^^^^^^^^^ constant.numeric.binary
    0b11001000
;   ^^^^^^^^^^ constant.numeric.binary
    0y11001000
;   ^^^^^^^^^^ constant.numeric.binary
    1100_1000b
;   ^^^^^^^^^^ constant.numeric.binary
    1100_1000y
;   ^^^^^^^^^^ constant.numeric.binary
    0b1100_1000
;   ^^^^^^^^^^^ constant.numeric.binary
    0y1100_1000
;   ^^^^^^^^^^^ constant.numeric.binary

    0.
;   ^^ constant.numeric.decimal.floating-point
    0.0
;   ^^^ constant.numeric.decimal.floating-point
    -0.
;   ^ keyword.operator
;    ^^ constant.numeric.decimal.floating-point
    -0.0
;   ^ keyword.operator
;    ^^^ constant.numeric.decimal.floating-point
    1.222_222_222
;   ^^^^^^^^^^^^^ constant.numeric.decimal.floating-point
    1.e10
;   ^^^^^ constant.numeric.decimal.floating-point
    1.e+10
;   ^^^^^^ constant.numeric.decimal.floating-point
    1.e-10
;   ^^^^^^ constant.numeric.decimal.floating-point

    3.141592653589793238462
;   ^^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.decimal.floating-point
    0x400921fb54442d18
;   ^^^^^^^^^^^^^^^^^^ constant.numeric.hex
    1.e+4000
;   ^^^^^^^^ constant.numeric.decimal.floating-point

    12_345_678_901_245_678p 
;   ^^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.decimal.packed-bcd
    -12_345_678_901_245_678p 
;   ^ keyword.operator
;    ^^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.decimal.packed-bcd
    +0p33 
;   ^ keyword.operator
;    ^^^^ constant.numeric.decimal.packed-bcd
    33p
;   ^^^ constant.numeric.decimal.packed-bcd

    0x1f.
;   ^^^^^ constant.numeric.hex.floating-point
    0x1f.ff
;   ^^^^^^^ constant.numeric.hex.floating-point
    0x1fp2
;   ^^^^^^ constant.numeric.hex.floating-point
    0x1fp+2
;   ^^^^^^^ constant.numeric.hex.floating-point
    0x1f.p+2
;   ^^^^^^^^ constant.numeric.hex.floating-point
    0x1f.afp+2
;   ^^^^^^^^^^ constant.numeric.hex.floating-point
    0h1f.
;   ^^^^^ constant.numeric.hex.floating-point
    0h1f.ff
;   ^^^^^^^ constant.numeric.hex.floating-point
    0h1fp2
;   ^^^^^^ constant.numeric.hex.floating-point
    0h1fp+2
;   ^^^^^^^ constant.numeric.hex.floating-point
    0h1f.p+2
;   ^^^^^^^^ constant.numeric.hex.floating-point
    0h1f.afp+2
;   ^^^^^^^^^^ constant.numeric.hex.floating-point
    $01f.
;   ^^^^^ constant.numeric.hex.floating-point
    $01f.ff
;   ^^^^^^^ constant.numeric.hex.floating-point
    $01fp2
;   ^^^^^^ constant.numeric.hex.floating-point
    $01fp+2
;   ^^^^^^^ constant.numeric.hex.floating-point
    $01f.p+2
;   ^^^^^^^^ constant.numeric.hex.floating-point
    $01f.afp+2
;   ^^^^^^^^^^ constant.numeric.hex.floating-point

    0b10.
;   ^^^^^ constant.numeric.binary.floating-point
    0b10.01
;   ^^^^^^^ constant.numeric.binary.floating-point
    0b10p2
;   ^^^^^^ constant.numeric.binary.floating-point
    0b10p+2
;   ^^^^^^^ constant.numeric.binary.floating-point
    0b10.p+2
;   ^^^^^^^^ constant.numeric.binary.floating-point
    0b10.01p+2
;   ^^^^^^^^^^ constant.numeric.binary.floating-point
    0y10.
;   ^^^^^ constant.numeric.binary.floating-point
    0y10.01
;   ^^^^^^^ constant.numeric.binary.floating-point
    0y10p2
;   ^^^^^^ constant.numeric.binary.floating-point
    0y10p+2
;   ^^^^^^^ constant.numeric.binary.floating-point
    0y10.p+2
;   ^^^^^^^^ constant.numeric.binary.floating-point
    0y10.01p+2
;   ^^^^^^^^^^ constant.numeric.binary.floating-point

    0o17.
;   ^^^^^ constant.numeric.octal.floating-point
    0o17.71
;   ^^^^^^^ constant.numeric.octal.floating-point
    0o17p9
;   ^^^^^^ constant.numeric.octal.floating-point
    0o17p+9
;   ^^^^^^^ constant.numeric.octal.floating-point
    0o17.p+9
;   ^^^^^^^^ constant.numeric.octal.floating-point
    0o17.71p+9
;   ^^^^^^^^^^ constant.numeric.octal.floating-point
    0q17.
;   ^^^^^ constant.numeric.octal.floating-point
    0q17.71
;   ^^^^^^^ constant.numeric.octal.floating-point
    0q17p9
;   ^^^^^^ constant.numeric.octal.floating-point
    0q17p+9
;   ^^^^^^^ constant.numeric.octal.floating-point
    0q17.p+9
;   ^^^^^^^^ constant.numeric.octal.floating-point
    0q17.71p+9
;   ^^^^^^^^^^ constant.numeric.octal.floating-point


; NOT A NUMBER TESTS

    1e10
;   ^^^^ invalid.illegal.constant.numeric.decimal
    $a0
;   ^^^ text.variable
    $ff
;   ^^^ text.variable

    .0
;   ^^ invalid.illegal.constant.numeric.decimal.floating-point
    -.0
;   ^ keyword.operator
;    ^^ invalid.illegal.constant.numeric.decimal.floating-point
    .e10
;   ^^^^ entity.label
    .e-10
;   ^^ entity.label
;     ^ keyword.operator
;      ^^ constant.numeric.decimal

    0x1p+1a
    0b12.01
    0b10.12
;   ^^^^^ constant.numeric.binary.floating-point
;        ^^ constant.numeric.decimal
    0o89.01
    0o10.19
;   ^^^^^ constant.numeric.octal.floating-point
;        ^^ constant.numeric.decimal
