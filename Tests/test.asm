db0|db1|db2|db3|db6|db7|tr6|tr7|st

;registers
ax|bx|cx|dx|di|si|bp|sp|ip|
al|bl|cl|dl|dil|sil|bpl|spl|
ax|bx|cx|dx|cs|ds|ss|es|fs|gs|cr0|cr2|cr3
ah|bh|ch|dh|
eax|ebx|ecx|edx|edi|esi|ebp|esp|eip|
rax|rbx|rcx|rdx|rdi|rsi|rbp|rsp|rip|
r8|r9|r10|r11|r12|r13|r14|r15|
r8l|r9l|r10l|r11l|r12l|r13l|r14l|r15l|
r8b|r9b|r10b|r11b|r12b|r13b|r14b|r15b|
r8w|r9w|r10w|r11w|r12w|r13w|r14w|r15w|
r8d|r9d|r10d|r11d|r12d|r13d|r14d|r15d|

;should be invalid
cwdqo
fiaddp
cmovnpo/cmovpos
fucomipp
fidivp/fidivrp
fimulp
fisubp/fisubrp
vmovbe
vmovdq2q/vmovq2dq
vmovnti/vmovntq
vmovsx/vmovsxd
vmovzx
vmul
xwait/iwait
outsq
padduw
popd/popq/popfdq
prefetcht3/prefetchta
psubuw
loopn
repn
sald/sard
broadcast/vvbroadcast
pmovsx/pmovzx
vbroadcast
vfnmaddsub213pd

;not in intel documentation
retn/retf

;valid
vaddpd xmm10, [rax+r15*4]
vaddps ymm1, ymm2, yword [rax]
andpd ymm1, ymm2
cmovge
cmovnz
cmovz
cmovo
cmovpo
cmpxchg|cmpxchg8b|cmpxchg16b
cpuid
cbw/cwde/cdq
cmps/cmpsb/cmpsw/cmpsd/cmpsq
cwd/cdq/cqo
dppd
emms
fadd/faddp/fiadd
fcmovnbe
fcom/fcomp/fcompp
fcomi/fcomip/fucomi/fucomip
fucom/fucomp/fucompp
ficom/ficomp
fdiv/fdivp/fidiv
fdivr/fdivrp/fidivr
ffree
fld
fld1/fldl2t/fldl2e/fldpi/fldlg2/fldln2/fldz
fldcw
fldenv
fmul/fmulp/fimul
fcos/fsin/fsincos
fsub/fsubp/fisub
fsubr/fsubrp/fisubr
int n/into/int 3
ja|jae|jb|jbe|jc|jcxz|je|jecxz|jg|jge|jl|jle|jmp|jna|jnae|jnb|jnbe|jnc|jne|jng|jnge|jnl|jnle|jno|jnp|jns|jnz|jo|jp|jpe|jpo|js|jz
lds/les/lfs/lgs/lss
lgdt/lidt
lldt
loopz/loopnz
vmaxpd/vmaxps/maxpd/maxps
vmovapd
movbe
movd/movq
movddup/vmovddup
movdq2q/movq2dq
movhpd
movlhps
movmskpd/vmovmskpd
movntdqa/movntdq/vmovntdqa/vmovntdqa
movnti/movntq
movntpd/vmovntpd
movs/movsb/movsw/movsd/movsq
movss/vmovss
movsx/movsxd
movupd/vmovupd/movups/vmovups
movzx
mpsadbw/vmpsadbw
mul
vmulpd
wait/fwait/mwait
outs/outsb/outsw/outsd
paddb/paddw/paddd/paddq
paddsb/paddsw
paddusb/paddusw
pcmpeqb/pcmpeqw/pcmpeqd/pcmpeqq
pcmpestri/pcmpestrm
pcmpgtb/pcmpgtw/pcmpgtd/pcmpgtq
pcmpistri/pcmpistrm
pextrb/pextrd/pextrq/pextrw
phaddw/phaddd/phaddsw
pop/popa/popad
popcnt
popf/popfd/popfq
prefetcht0/prefetcht1/prefetcht2/prefetchnta
pslldq
psllw/pslld/psllq
psraw/psrad
psrldq
psrlw/psrld/psrlq
psubb/psubw/psubd/psubq
psubsb/psubsw
psubusb/psubusw
punpckhbw/punpckhwd/punpckhdq/punpckhqdq
punpcklbw/punpcklwd/punpckldq/punpcklqdq
pushf/pushfd/pushfq
rdfsbase/rdgsbase
wrfsbase/wrgsbase
rep/repe/repz/repne/repnz
sal/shl/shld
sar/shr/shrd
vcvtph2ps/vcvtps2ph
vmovupd
pmovsxbd/pmovsxbq/pmovsxbw
pmovsxwd/pmovsxwq
pmovsxdq
pmovzxbd/pmovzxbq/pmovzxbw
pmovzxwq/pmovzxwd
pmovzxdq
stmxcsr

getsec


;amd
bextr
prefetch/prefetchw
skinit
stgi
extrq
insertq
vbroadcastf128/vbroadcastsd/vbroadcastss
vfmaddpd/vfmadd132pd/vfmadd213pd/vfmadd231pd
vfnmaddpd/vfnmadd132pd/vfnmadd213pd/vfnmadd231pd
vfrczpd
vpcmov
vpcomq
vpermil2pd
vpmacsdd
vpmacssdd
vpmacsdql
vpmacssdql
vpmacsdqh
vpmacssdqh
vpmacsww
vpmacssww
vpmacswd
vpmacsswd
vpmadcswd
vpmadcsswd
vpperm
vprotb
femms
pf2id
pfrcp/pfrcpit1/pfrcpit2
pi2fd/pi2fw
pavgusb
pmulhrw
pswapd

;intel sha1
sha1msg1
sha1msg2
sha1nexte
sha1rnds4
sha256msg1
sha256msg2
sha256rnds2

xsave/xrstore/xsaveopt

;undocumented
stosb
icebp
int1
smi

;new
aesni, pclmulqdq
f16c, rdrand, tsx, invpcid, adx, rdseed, clac, stac

;new summary from Intel docs
;5.1 GENERAL-PURPOSE INSTRUCTIONS
;5.1.1         Data Transfer Instructions
mov/cmove/cmovz/cmovne/cmovnz/cmova/cmovnbe/cmovae/cmovnb/cmovb/cmovnae
cmovbe/cmovna/cmovg/cmovnle/cmovge/cmovnl/cmovl/cmovnge/cmovle/cmovng
cmovc/cmovnc/cmovo/cmovno/cmovs/cmovns/cmovp/cmovpe/cmovnp/cmovpo
xchg/bswap/xadd/cmpxchg/cmpxchg8b
push/pop/pusha/pushad/popa/popad
cwd/cdq/cbw/cwde
movsx/movzx
;5.1.2         Binary Arithmetic Instructions
adcx/adox/add/adc/sub/sbb/imul/mul/idiv/div/inc/dec/neg/cmp/
;5.1.3         Decimal Arithmetic Instructions
daa/das/aaa/aas/aam/aad
;5.1.4 Logical Instructions
and/or/xor/not
;5.1.5         Shift and Rotate Instructions
sar/shr/sal/shl/shrd/shld/ror/rol/rcr/rcl
;5.1.6         Bit and Byte Instructions
bt/bts/btr/btc/bsf/bsr
sete/setz/setne/setnz/seta/setnbe/setae/setnb/setnc/setb/setnae/setc
setbe/setna/setg/setnle/setge/setnl/setl/setnge/setle/setng
sets/setns/seto/setno/setpe/setp/setpo/setnp
test/crc32/popcnt
;5.1.7         Control Transfer Instructions
jmp/je/jz/jne/jnz/ja/jnbe/jae/jnb/jb/jnae/jbe/jna/jg/jnle/jge/jnl/jl/jnge/jle/jng
jc/jnc/jo/jno/js/jns/jpo/jnp/jpe/jp/jcxz/jecxz
loop/loopz/loope/loopnz/loopne
call/ret/iret/int/into/bound/enter/leave
;5.1.8 String Instructions
movs/movsb/movs/movsw/movs/movsd
cmps/cmpsb/cmps/cmpsw/cmps/cmpsd
scas/scasb/scas/scasw/scas/scasd
lods/lodsb/lods/lodsw/lods/lodsd
stos/stosb/stos/stosw/stos/stosd
rep/repe/repz/repne/repnz
;5.1.9 I/O Instructions
in/out/ins/insb/ins/insw/ins/insd/outs/outsb/outs/outsw/outs/outsd
;5.1.10      Enter and Leave Instructions
enter/leave
;5.1.11      Flag Control (EFLAG) Instructions
stc/clc/cmc/cld/std/lahf/sahf/pushf/pushfd/popf/popfd/sti/cli
;5.1.12      Segment Register Instructions
lds/les/lfs/lgs/lss
;5.1.13 Miscellaneous Instructions
lea/nop/ud2/xlat/xlatb/cpuid/movbe/prefetchw/prefetchwt1
;5.1.14      Random Number Generator Instructions
rdrand/rdseed
;5.1.15 BMI1, BMI2
andn/blsi/blsmsk/bzhi/lzcnt/mulx/pdep/pext/rorx/sarx/shlx/shrx/tzcnt

;5.2         X87 FPU INSTRUCTIONS
;5.2.1         x87 FPU Data Transfer Instructions
fld/fst/fstp/fild/fist/fistp/fbld/fbstp/fxch
fcmove/fcmovne/fcmovb/fcmovbe/fcmovnb/fcmovnbe/fcmovu/fcmovnu
;5.2.2         x87 FPU Basic Arithmetic Instructions
fadd/faddp/fiadd/fsub/fsubp/fisub/fsubr/fsubrp/fisubr
fmul/fmulp/fimul/fdiv/fidiv/fdivr/fdivrp/fidivr
fprem/fprem1/fabs/fchs/frndint/fscale/fsqrt/fxtract
;5.2.3         x87 FPU Comparison Instructions
fcom/fcomp/fcompp/fucom/fucomp/fucompp/ficom/ficomp/fcomi/fucomi/fcomip/fucomip/ftst/fxam
;5.2.4         x87 FPU Transcendental Instructions
fsin/fcos/fsincos/fptan/fpatan/f2xm1/fyl2xp1
;5.2.5         x87 FPU Load Constants Instructions
fld1/fldz/fldpi/fldl2e/fldln2/fldl2t/fldlg2  
;5.2.6         x87 FPU Control Instructions
fincstp/fdecstp/ffree/finit/fninit/fclex/fnclex/fstcw/fnstcw
fldcw/fstenv/fnstenv/fldenv/fsave/fnsave/frstor/fstsw/fnstsw
wait/fwait/fnop

;5.3         X87 FPU AND SIMD STATE MANAGEMENT INSTRUCTIONS
fxsave/fxrstor

;5.4 MMX™ INSTRUCTIONS
;5.4.1         MMX Data Transfer Instructions
movd/movq
;5.4.2 MMX Conversion Instructions
packsswb/packssdw/packuswb/punpckhbw/punpckhwd/punpckhdq/punpcklbw/punpcklwd/punpckldq
;5.4.3         MMX Packed Arithmetic Instructions
paddb/paddw/paddd/paddsb/paddsw/paddusb/paddusw
psubb/psubw/psubsb/psubsw/psubusb/psubusw
pmulhw/pmullw/pmaddwd
;5.4.4         MMX Comparison Instructions
pcmpeqb/pcmpeqw/pcmpeqd/pcmpgtb/pcmpgtw/pcmpgtd
;5.4.5         MMX Logical Instructions
pand/pandn/por/pxor
;5.4.6         MMX Shift and Rotate Instructions
psllw/pslld/psllq/psrlw/psrld/psrlq/psraw/psrad
;5.4.7         MMX State Management Instructions
emms

;5.5 SSE INSTRUCTIONS
;5.5.1         SSE SIMD Single-Precision Floating-Point Instructions
;5.5.1.1        SSE Data Transfer Instructions
movaps/movups/movhps/movhlps/movlps/movlhps/movmskps/movss
;5.5.1.2        SSE Packed Arithmetic Instructions
addps/addss/subps/subss/mulps/divps/divss
rcpps/rcpss/sqrtps/sqrtss/rsqrtps/rsqrtss
maxps/maxss/minps/minss
;5.5.1.3        SSE Comparison Instructions
cmpps/cmpss/comiss/ucomiss
;5.5.1.4        SSE Logical Instructions
andps/andnps/orps/xorps
;5.5.1.5        SSE Shuffle and Unpack Instructions
shufps/unpckhps/unpcklps
;5.5.1.6        SSE Conversion Instructions
cvtpi2ps/cvtsi2ss/cvtps2pi/cvttps2pi/cvtss2si/cvttss2si
;5.5.2         SSE MXCSR State Management Instructions
ldmxcsr/stmxcsr
;5.5.3         SSE 64-Bit SIMD Integer Instructions
pavgb/pavgw/pextrw/pinsrw/pmaxub/pmaxsw/pminub/pminsw/pmovmskb/pmulhuw/psadbw/pshufw
;5.5.4         SSE Cacheability Control, Prefetch, and Instruction Ordering Instructions
maskmovq/movntps/sfence
prefetchnta/prefetcht0/prefetcht1/prefetcht2/prefetchw/prefetchwt1

;5.6 SSE2 INSTRUCTIONS
;5.6.1         SSE2 Packed and Scalar Double-Precision Floating-Point Instructions
;5.6.1.1        SSE2 Data Movement Instructions
movapd/movupd/movhpd/movlpd/movmskpd/movsd
;5.6.1.2        SSE2 Packed Arithmetic Instructions
addpd/addsd/subpd/subsd/mulpd/mulsd/divpd/divsd/sqrtpd/sqrtsd/maxpd/maxsd/minpd/minsd
;5.6.1.3        SSE2 Logical Instructions
andpd/andnpd/orpd/xorpd
;5.6.1.4        SSE2 Compare Instructions
cmppd/cmpsd/comisd/ucomisd
;5.6.1.5        SSE2 Shuffle and Unpack Instructions
shufpd/unpckhpd/unpcklpd
;5.6.1.6        SSE2 Conversion Instructions
cvtpd2pi/cvttpd2pi/cvtpi2pd/cvtpd2dq/cvttpd2dq/cvtdq2pd/cvtps2pd/cvtss2sd/cvtsd2ss/cvtsd2si/cvttsd2si/cvtsi2sd
;5.6.2         SSE2 Packed Single-Precision Floating-Point Instructions
cvtdq2ps/cvtps2dq/cvttps2dq
;5.6.3         SSE2 128-Bit SIMD Integer Instructions
movdqa/movdqu/movq2dq/movdq2q/pmuludq/paddq/psubq/pshuflw/pshufhw/pshufd/pslldq/psrldq/punpckhqdq/punpcklqdq
;5.6.4         SSE2 Cacheability Control and Ordering Instructions
clflush/lfence/mfence/maskmovdqu/movntdq/movnti

;5.7 SSE3 INSTRUCTIONS
;5.7.1         SSE3 x87-FP Integer Conversion Instruction
fisttp
;5.7.2         SSE3 Specialized 128-bit Unaligned Data Load Instruction
lddqu
;5.7.3         SSE3 SIMD Floating-Point Packed ADD/SUB Instructions
addsubps/addsubpd
;5.7.4         SSE3 SIMD Floating-Point Horizontal ADD/SUB Instructions
haddps/hsubps/haddpd/hsubpd
;5.7.5         SSE3 SIMD Floating-Point LOAD/MOVE/DUPLICATE Instructions
movshdup/movsldup/movddup
;5.7.6         SSE3 Agent Synchronization Instructions
monitor/mwait

;5.8 SUPPLEMENTAL STREAMING SIMD EXTENSIONS 3 (SSSE3) INSTRUCTIONS
;5.8.1 Horizontal Addition/Subtraction
phaddw/phaddsw/phaddd/phsubw/phsubsw/phsubd
;5.8.2         Packed Absolute Values
pabsb/pabsw/pabsd
;5.8.3         Multiply and Add Packed Signed and Unsigned Bytes
pmaddubsw
;5.8.4         Packed Multiply High with Round and Scale
pmulhrsw
;5.8.5         Packed Shuffle Bytes
pshufb
;5.8.6 Packed Sign
psignb/psignw/psignd
;5.8.7         Packed Align Right
palignr

;5.9 SSE4 INSTRUCTIONS

;5.10 SSE4.1 INSTRUCTIONS
;5.10.1      Dword Multiply Instructions 
pmulld/pmuldq
;5.10.2      Floating-Point Dot Product Instructions
dppd/dpps
;5.10.3      Streaming Load Hint Instruction
movntdqa
;5.10.4      Packed Blending Instructions
blendpd/blendps/blendvpd/blendvps/pblendvb/pblendw
;5.10.5      Packed Integer MIN/MAX Instructions
pminuw/pminud/pminsb/pminsd/pmaxuw/pmaxud/pmaxsb/pmaxsd
;5.10.6      Floating-Point Round Instructions with Selectable Rounding Mode
roundps/roundpd/roundss/roundsd
;5.10.7      Insertion and Extractions from XMM Registers
extractps/insertps/pinsrb/pinsrd/pinsrq/pextrb/pextrw/pextrd/pextrq
;5.10.8      Packed Integer Format Conversions
pmovsxbw/pmovzxbw/pmovsxbd/pmovzxbd/pmovsxwd/pmovzxwd/pmovsxbq/pmovzxbq/pmovsxwq/pmovzxwq/pmovsxdq/pmovzxdq
;5.10.9      Improved Sums of Absolute Differences (SAD) for 4-Byte Blocks
mpsadbw
;5.10.10 Horizontal Search
phminposuw
;5.10.11 Packed Test
ptest
;5.10.12    Packed Qword Equality Comparisons
pcmpeqq
;5.10.13    Dword Packing With Unsigned Saturation
packusdw

;5.11       SSE4.2 INSTRUCTION SET
