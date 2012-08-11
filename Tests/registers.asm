;invalid
r0l, r1l, r7l, r16l, r18l, r20l, r21l
r0w, r1w, r7w, r16w, r18w, r20w, r21w
r0d, r1d, r7d, r16d, r18d, r20d, r21d
r0, r1, r7, r16, r18, r20, r21
xmm16, xmm20, xmm21
dr4, dr5, dr8, dr9
cr1, cr5
st8, st9, st10, st11

;general purpose
cl, dl, ah, bh, ch, dh
al, bl, cl, dl, dil, sil, bpl, spl, r8l, r9l, r10l, r11l, r12l, r13l, r14l, r15l
al, bl, cl, dl, sil, dil, bpl, spl, r8b, r9b, r10b, r11b, r12b, r13b, r14b, r15b ;amd
ax, dx, di, si, bp, sp
ax, bx, cx, dx, di, si, bp, sp, r8w, r9w, r10w, r11w, r12w, r13w, r14w, r15w
eax, ebx, ecx, edx, edi, esi, ebp, esp, r8d, r9d, r10d, r11d, r12d, r13d, r14d, r15d
rax, rbx, rcx, rdx, rdi, rsi, rbp, rsp, r8, r9, r10, r11, r12, r13, r14, r15
xmm8, xmm9, xmm10, xmm11, xmm12, xmm13, xmm14, xmm15

;segment
cs, ds, ss, es, fs, gs

;flags
flags, eflags, rflags

;instruction pointer
eip, rip

;MMX/x87 FPU registers
mm0, mm1, mm2, mm3, mm4, mm5, mm6, mm7
st0, st1, st2, st3, st4, st5, st6, st7
fpr0, fpr1, fpr2, fpr3, fpr4, fpr5, fpr6, fpr7 ;amd
;status word, control word, tag word, data operand pointer, and instruction pointer

;XMM registers
xmm0, xmm1, xmm2, xmm3, xmm4, xmm5, xmm6, xmm7, mxcsr

;YMM registers
ymm0, ymm1, ymm2, ymm3, ymm4, ymm5, ymm6, ymm7, ymm8, ymm9, ymm10, ymm11, ymm12, ymm13, ymm14, ymm15

;control registers
cr0, cr2, cr3, cr4

;system table pointer registers 
gdtr, ldtr, idtr ;and task register

;debug registers
dr0, dr1, dr2, dr3, dr6, dr7

;amd
cr8, tpr, tr
gdt, ldt, idt, tr