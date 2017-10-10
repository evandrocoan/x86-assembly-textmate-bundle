; SYNTAX TEST "Packages/User/x86_64 Assembly.tmbundle/Syntaxes/x86_64 Assembly.sublime-syntax"

lock
rep
repe
repz
repne
repnz
xacquire
xrelease
bnd
nobnd
a16
a32
a64
o16
o32
o64

        jmp     0x1234:0x56789ABC       ; wrong!
        jmp     dword 0x1234:0x56789ABC ; right
        jmp     word 0x8765:0x4321      ; 32 to 16 bit
        mov     eax,offset_into_32_bit_segment_specified_by_fs
        mov     dword [fs:eax],0x11223344
        mov     dword [fs:dword my_offset],0x11223344
        mov     dword [dword fs:my_offset],0x11223344
        mov     word [dword 0x12345678],0x9ABC
        call    dword far [fs:word 0x4321]
a32     lodsb
o16     push    ss
o16     push    ds