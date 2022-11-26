	.file	"task.c"
	.intel_syntax noprefix
# GNU C17 (Ubuntu 9.4.0-1ubuntu1~20.04.1) version 9.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 9.4.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.22.1-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu ./task.c -masm=intel
# -mtune=generic -march=x86-64 -auxbase-strip ./task.s
# -fno-asynchronous-unwind-tables -fno-jump-tables -fno-stack-protector
# -fno-exceptions -fverbose-asm -Wformat -Wformat-security
# -fstack-clash-protection -fcf-protection
# options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
# -fassume-phsa -fauto-inc-dec -fcommon -fdelete-null-pointer-checks
# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
# -ffp-int-builtin-inexact -ffunction-cse -fgcse-lm -fgnu-runtime
# -fgnu-unique -fident -finline-atomics -fipa-stack-alignment
# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
# -fivopts -fkeep-static-consts -fleading-underscore -flifetime-dse
# -flto-odr-type-merging -fmath-errno -fmerge-debug-strings -fpeephole
# -fplt -fprefetch-loop-arrays -freg-struct-return
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fsemantic-interposition
# -fshow-column -fshrink-wrap-separate -fsigned-zeros
# -fsplit-ivs-in-unroller -fssa-backprop -fstack-clash-protection
# -fstdarg-opt -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math
# -ftree-cselim -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im
# -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
# -ftree-phiprop -ftree-reassoc -ftree-scev-cprop -funit-at-a-time
# -fverbose-asm -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -malign-stringops -mavx256-split-unaligned-load
# -mavx256-split-unaligned-store -mfancy-math-387 -mfp-ret-in-387 -mfxsr
# -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone
# -msse -msse2 -mstv -mtls-direct-seg-refs -mvzeroupper

	.text
	.globl	function
	.type	function, @function
function:
	endbr64	
	push	rbp	#
	mov	rbp, rsp	#,
	sub	rsp, 64	#,
	movsd	QWORD PTR -56[rbp], xmm0	# x, x
# ./task.c:4:     int n = 2;
	mov	DWORD PTR -4[rbp], 2	# n,
# ./task.c:5:     double diff = 1.0;
	movsd	xmm0, QWORD PTR .LC0[rip]	# tmp97,
	movsd	QWORD PTR -16[rbp], xmm0	# diff, tmp97
# ./task.c:6:     double e = 0.0005;
	movsd	xmm0, QWORD PTR .LC1[rip]	# tmp98,
	movsd	QWORD PTR -32[rbp], xmm0	# e, tmp98
# ./task.c:7:     double res = x;
	movsd	xmm0, QWORD PTR -56[rbp]	# tmp99, x
	movsd	QWORD PTR -24[rbp], xmm0	# res, tmp99
# ./task.c:9:     while (diff > e) {
	jmp	.L2	#
.L3:
# ./task.c:10:         previous_res = res;
	movsd	xmm0, QWORD PTR -24[rbp]	# tmp100, res
	movsd	QWORD PTR -40[rbp], xmm0	# previous_res, tmp100
# ./task.c:11:         res += pow(-1, n - 1) * (pow(x, 2 * n - 1) / (2 * n - 1));
	mov	eax, DWORD PTR -4[rbp]	# tmp101, n
	sub	eax, 1	# _1,
# ./task.c:11:         res += pow(-1, n - 1) * (pow(x, 2 * n - 1) / (2 * n - 1));
	cvtsi2sd	xmm0, eax	# _2, _1
	mov	rax, QWORD PTR .LC2[rip]	# tmp102,
	movapd	xmm1, xmm0	#, _2
	movq	xmm0, rax	#, tmp102
	call	pow@PLT	#
	movsd	QWORD PTR -64[rbp], xmm0	# %sfp,
# ./task.c:11:         res += pow(-1, n - 1) * (pow(x, 2 * n - 1) / (2 * n - 1));
	mov	eax, DWORD PTR -4[rbp]	# tmp103, n
	add	eax, eax	# _4
# ./task.c:11:         res += pow(-1, n - 1) * (pow(x, 2 * n - 1) / (2 * n - 1));
	sub	eax, 1	# _5,
# ./task.c:11:         res += pow(-1, n - 1) * (pow(x, 2 * n - 1) / (2 * n - 1));
	cvtsi2sd	xmm0, eax	# _6, _5
	mov	rax, QWORD PTR -56[rbp]	# tmp104, x
	movapd	xmm1, xmm0	#, _6
	movq	xmm0, rax	#, tmp104
	call	pow@PLT	#
# ./task.c:11:         res += pow(-1, n - 1) * (pow(x, 2 * n - 1) / (2 * n - 1));
	mov	eax, DWORD PTR -4[rbp]	# tmp105, n
	add	eax, eax	# _8
# ./task.c:11:         res += pow(-1, n - 1) * (pow(x, 2 * n - 1) / (2 * n - 1));
	sub	eax, 1	# _9,
# ./task.c:11:         res += pow(-1, n - 1) * (pow(x, 2 * n - 1) / (2 * n - 1));
	cvtsi2sd	xmm1, eax	# _10, _9
	divsd	xmm0, xmm1	# _11, _10
# ./task.c:11:         res += pow(-1, n - 1) * (pow(x, 2 * n - 1) / (2 * n - 1));
	mulsd	xmm0, QWORD PTR -64[rbp]	# _27, %sfp
# ./task.c:11:         res += pow(-1, n - 1) * (pow(x, 2 * n - 1) / (2 * n - 1));
	movsd	xmm1, QWORD PTR -24[rbp]	# tmp107, res
	addsd	xmm0, xmm1	# tmp106, tmp107
	movsd	QWORD PTR -24[rbp], xmm0	# res, tmp106
# ./task.c:12:         diff = fabs(previous_res - res);
	movsd	xmm0, QWORD PTR -40[rbp]	# tmp108, previous_res
	subsd	xmm0, QWORD PTR -24[rbp]	# _12, res
# ./task.c:12:         diff = fabs(previous_res - res);
	movq	xmm1, QWORD PTR .LC3[rip]	# tmp110,
	andpd	xmm0, xmm1	# tmp109, tmp110
	movsd	QWORD PTR -16[rbp], xmm0	# diff, tmp109
# ./task.c:13:         n++;
	add	DWORD PTR -4[rbp], 1	# n,
.L2:
# ./task.c:9:     while (diff > e) {
	movsd	xmm0, QWORD PTR -16[rbp]	# tmp111, diff
	comisd	xmm0, QWORD PTR -32[rbp]	# tmp111, e
	ja	.L3	#,
# ./task.c:15:     return res;
	movsd	xmm0, QWORD PTR -24[rbp]	# _23, res
# ./task.c:16: }
	leave	
	ret	
	.size	function, .-function
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC1:
	.long	3539053052
	.long	1061184077
	.align 8
.LC2:
	.long	0
	.long	-1074790400
	.align 16
.LC3:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0