	.file	"main.c"
	.intel_syntax noprefix
# GNU C17 (Ubuntu 9.4.0-1ubuntu1~20.04.1) version 9.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 9.4.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.22.1-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu ./main.c -masm=intel
# -mtune=generic -march=x86-64 -auxbase-strip ./main.s
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
	.section	.rodata
.LC0:
	.string	"random"
.LC3:
	.string	"w"
.LC4:
	.string	"Generated number: %lf"
.LC5:
	.string	"\nResult: %f"
.LC6:
	.string	"r"
.LC7:
	.string	"File was not found"
.LC8:
	.string	"%lf"
.LC9:
	.string	"%f"
.LC10:
	.string	"Enter your number (|x|<=1):"
.LC11:
	.string	"Time: %d ms\n"
	.align 8
.LC12:
	.string	"Random input or through command line (1 - cmd, 2 - random):"
.LC13:
	.string	"%d"
.LC14:
	.string	"Enter seed f:"
.LC15:
	.string	"Generated number: %lf\n"
.LC16:
	.string	"Result: %f\n"
	.text
	.globl	main
	.type	main, @function
main:
	push	rbp	#
	mov	rbp, rsp	#,
	sub	rsp, 96	#,
	mov	r13d, edi	# argc, argc
	mov	QWORD PTR -96[rbp], rsi	# argv, argv
# ./main.c:12:     if (argc == 3) {
	cmp	r13d, 3	# argc,
	jne	.L2	#,
# ./main.c:13:         if (!strcmp(argv[1], "random")) {
	mov	rax, QWORD PTR -96[rbp]	# tmp119, argv
	add	rax, 8	# _1,
# ./main.c:13:         if (!strcmp(argv[1], "random")) {
	mov	rax, QWORD PTR [rax]	# _2, *_1
	lea	rsi, .LC0[rip]	#,
	mov	rdi, rax	#, _2
	call	strcmp@PLT	#
# ./main.c:13:         if (!strcmp(argv[1], "random")) {
	test	eax, eax	# _3
	jne	.L3	#,
# ./main.c:14:             srand(time(0));
	mov	edi, 0	#,
	call	time@PLT	#
# ./main.c:14:             srand(time(0));
	mov	edi, eax	#, _5
	call	srand@PLT	#
# ./main.c:15:             x = -1 + 2 * ((double) rand()) / RAND_MAX;
	call	rand@PLT	#
# ./main.c:15:             x = -1 + 2 * ((double) rand()) / RAND_MAX;
	cvtsi2sd	xmm0, eax	# _7, _6
# ./main.c:15:             x = -1 + 2 * ((double) rand()) / RAND_MAX;
	addsd	xmm0, xmm0	# _8, _7
# ./main.c:15:             x = -1 + 2 * ((double) rand()) / RAND_MAX;
	movsd	xmm1, QWORD PTR .LC1[rip]	# tmp120,
	divsd	xmm0, xmm1	# _9, tmp120
# ./main.c:15:             x = -1 + 2 * ((double) rand()) / RAND_MAX;
	movsd	xmm1, QWORD PTR .LC2[rip]	# tmp121,
	subsd	xmm0, xmm1	# _10, tmp121
# ./main.c:15:             x = -1 + 2 * ((double) rand()) / RAND_MAX;
	movsd	QWORD PTR -64[rbp], xmm0	# x, _10
# ./main.c:16:             result = function(x);
	mov	rax, QWORD PTR -64[rbp]	# x.0_11, x
	movq	xmm0, rax	#, x.0_11
	call	function@PLT	#
	movq	rax, xmm0	# tmp122,
	mov	QWORD PTR -8[rbp], rax	# result, tmp122
# ./main.c:18:             output = fopen(argv[2], "w");
	mov	rax, QWORD PTR -96[rbp]	# tmp123, argv
	add	rax, 16	# _12,
# ./main.c:18:             output = fopen(argv[2], "w");
	mov	rax, QWORD PTR [rax]	# _13, *_12
	lea	rsi, .LC3[rip]	#,
	mov	rdi, rax	#, _13
	call	fopen@PLT	#
	mov	QWORD PTR -56[rbp], rax	# output, tmp124
# ./main.c:19:             fprintf(output, "Generated number: %lf", x);
	mov	rdx, QWORD PTR -64[rbp]	# x.1_14, x
	mov	rax, QWORD PTR -56[rbp]	# tmp125, output
	movq	xmm0, rdx	#, x.1_14
	lea	rsi, .LC4[rip]	#,
	mov	rdi, rax	#, tmp125
	mov	eax, 1	#,
	call	fprintf@PLT	#
# ./main.c:20:             fprintf(output, "\nResult: %f", result);
	mov	rdx, QWORD PTR -8[rbp]	# tmp126, result
	mov	rax, QWORD PTR -56[rbp]	# tmp127, output
	movq	xmm0, rdx	#, tmp126
	lea	rsi, .LC5[rip]	#,
	mov	rdi, rax	#, tmp127
	mov	eax, 1	#,
	call	fprintf@PLT	#
# ./main.c:21:             fclose(output);
	mov	rdi, QWORD PTR -56[rbp]
	call	fclose@PLT	#
# ./main.c:22:             return 0;
	mov	eax, 0	# _40,
	jmp	.L12	#
.L3:
# ./main.c:25:             input = fopen(argv[1], "r");
	mov	rax, QWORD PTR -96[rbp]	# tmp129, argv
	add	rax, 8	# _15,
# ./main.c:25:             input = fopen(argv[1], "r");
	mov	rax, QWORD PTR [rax]	# _16, *_15
	lea	rsi, .LC6[rip]	#,
	mov	rdi, rax	#, _16
	call	fopen@PLT	#
	mov	QWORD PTR -40[rbp], rax	# input, tmp130
# ./main.c:26:             if (input == NULL) {
	cmp	QWORD PTR -40[rbp], 0	# input,
	jne	.L5	#,
# ./main.c:27:                 printf("File was not found\n");
	lea	rdi, .LC7[rip]	#,
	call	puts@PLT	#
# ./main.c:28:                 fclose(input);
	mov	rdi, QWORD PTR -40[rbp]	#, tmp131
	call	fclose@PLT	#
# ./main.c:29:                 return 0;
	mov	eax, 0	# _40,
	jmp	.L12	#
.L5:
# ./main.c:31:                 fscanf(input, "%lf", &x);
	lea	rdx, -64[rbp]	# tmp132,
	lea	rsi, .LC8[rip]	#,
	mov	rdi, QWORD PTR -40[rbp]	#, tmp133
	mov	eax, 0	#,
	call	__isoc99_fscanf@PLT	#
# ./main.c:33:             fclose(input);
	mov	rax, QWORD PTR -40[rbp]	# tmp134, input
	mov	rdi, rax	#, tmp134
	call	fclose@PLT	#
# ./main.c:35:             result = function(x);
	mov	rax, QWORD PTR -64[rbp]	# x.2_17, x
	movq	xmm0, rax	#, x.2_17
	call	function@PLT	#
	movq	rax, xmm0	# tmp135,
	mov	QWORD PTR -8[rbp], rax	# result, tmp135
# ./main.c:38:             output = fopen(argv[2], "w");
	mov	rax, QWORD PTR -96[rbp]	# tmp136, argv
	add	rax, 16	# _18,
# ./main.c:38:             output = fopen(argv[2], "w");
	mov	rax, QWORD PTR [rax]	# _19, *_18
	lea	rsi, .LC3[rip]	#,
	mov	rdi, rax	#, _19
	call	fopen@PLT	#
	mov	QWORD PTR -48[rbp], rax	# output, tmp137
# ./main.c:39:             fprintf(output, "%f", result);
	movq	xmm0, QWORD PTR -8[rbp]	#, tmp138
	lea	rsi, .LC9[rip]	#,
	mov	rdi, QWORD PTR -48[rbp]	#, tmp139
	mov	eax, 1	#,
	call	fprintf@PLT	#
# ./main.c:40:             fclose(output);
	mov	rax, QWORD PTR -48[rbp]	# tmp140, output
	mov	rdi, rax	#, tmp140
	call	fclose@PLT	#
# ./main.c:41:             return 0;
	mov	eax, 0	# _40,
	jmp	.L12	#
.L2:
# ./main.c:45:     if (argc == 2) {
	cmp	r13d, 2	# argc,
	jne	.L6	#,
# ./main.c:46:         time_t t_start = clock();
	call	clock@PLT	#
	mov	QWORD PTR -24[rbp], rax	# t_start, tmp141
# ./main.c:47:         printf("Enter your number (|x|<=1):");
	lea	rdi, .LC10[rip]	#,
	mov	eax, 0	#,
	call	printf@PLT	#
# ./main.c:48:         scanf("%lf", &x);
	lea	rax, -64[rbp]	# tmp142,
	mov	rsi, rax	#, tmp142
	lea	rdi, .LC8[rip]	#,
	mov	eax, 0	#,
	call	__isoc99_scanf@PLT	#
# ./main.c:49:         for (int i = 0; i < 1000000; ++i) {
	mov	r11d, 0	# i,
# ./main.c:49:         for (int i = 0; i < 1000000; ++i) {
	jmp	.L7	#
.L8:
# ./main.c:50:             function(x);
	mov	rax, QWORD PTR -64[rbp]	# x.3_20, x
	movq	xmm0, rax	#, x.3_20
	call	function@PLT	#
# ./main.c:49:         for (int i = 0; i < 1000000; ++i) {
	add	r11d, 1	# i,
.L7:
# ./main.c:49:         for (int i = 0; i < 1000000; ++i) {
	cmp	r11d, 999999	# i,
	jle	.L8	#,
# ./main.c:52:         time_t t_end = clock();
	call	clock@PLT	#
	mov	QWORD PTR -32[rbp], rax	# t_end, tmp143
# ./main.c:53:         printf("Time: %d ms\n", (int) (difftime(t_end, t_start)) / 1000);
	mov	rsi, QWORD PTR -24[rbp]	
	mov	rdi, QWORD PTR -32[rbp]
	call	difftime@PLT	#
# ./main.c:53:         printf("Time: %d ms\n", (int) (difftime(t_end, t_start)) / 1000);
	cvttsd2si	eax, xmm0	# _22, _21
# ./main.c:53:         printf("Time: %d ms\n", (int) (difftime(t_end, t_start)) / 1000);
	movsx	rdx, eax	# tmp146, _22
	imul	rdx, rdx, 274877907	# tmp147, tmp146,
	shr	rdx, 32	# tmp148,
	sar	edx, 6	# tmp149,
	sar	eax, 31	# tmp150,
	sub	edx, eax	# tmp149, tmp150
	mov	eax, edx	# _23, tmp149
	mov	esi, eax	#, _23
	lea	rdi, .LC11[rip]	#,
	mov	eax, 0	#,
	call	printf@PLT	#
# ./main.c:54:         result = function(x);
	mov	rax, QWORD PTR -64[rbp]	# x.4_24, x
	movq	xmm0, rax	#, x.4_24
	call	function@PLT	#
	movq	rax, xmm0	# tmp151,
	mov	QWORD PTR -8[rbp], rax	# result, tmp151
.L6:
# ./main.c:56:     if (argc == 1) {
	cmp	r13d, 1	# argc,
	jne	.L9	#,
# ./main.c:57:         printf("Random input or through command line (1 - cmd, 2 - random):");
	lea	rdi, .LC12[rip]	#,
	mov	eax, 0	#,
	call	printf@PLT	#
# ./main.c:58:         int answer = 0;
	mov	DWORD PTR -68[rbp], 0	# answer,
# ./main.c:59:         scanf("%d", &answer);
	lea	rax, -68[rbp]	# tmp152,
	mov	rsi, rax	#, tmp152
	lea	rdi, .LC13[rip]	#,
	mov	eax, 0	#,
	call	__isoc99_scanf@PLT	#
# ./main.c:61:         if (answer == 1) {
	mov	eax, DWORD PTR -68[rbp]	# answer.5_25, answer
# ./main.c:61:         if (answer == 1) {
	cmp	eax, 1	# answer.5_25,
	jne	.L10	#,
# ./main.c:62:             printf("Enter your number (|x|<=1):");
	lea	rdi, .LC10[rip]	#,
	mov	eax, 0	#,
	call	printf@PLT	#
# ./main.c:63:             scanf("%lf", &x);
	lea	rax, -64[rbp]	# tmp153,
	mov	rsi, rax	#, tmp153
	lea	rdi, .LC8[rip]	#,
	mov	eax, 0	#,
	call	__isoc99_scanf@PLT	#
# ./main.c:64:             result = function(x);
	mov	rax, QWORD PTR -64[rbp]	# x.6_26, x
	movq	xmm0, rax	#, x.6_26
	call	function@PLT	#
	movq	rax, xmm0	# tmp154,
	mov	QWORD PTR -8[rbp], rax	# result, tmp154
	jmp	.L9	#
.L10:
# ./main.c:67:             printf("Enter seed f:");
	lea	rdi, .LC14[rip]	#,
	mov	eax, 0	#,
	call	printf@PLT	#
# ./main.c:68:             scanf("%d", &seed);
	lea	rax, -72[rbp]	# tmp155,
	mov	rsi, rax	#, tmp155
	lea	rdi, .LC13[rip]	#,
	mov	eax, 0	#,
	call	__isoc99_scanf@PLT	#
# ./main.c:69:             srand(seed);
	mov	eax, DWORD PTR -72[rbp]	# seed.7_27, seed
	mov	edi, eax	#, seed.8_28
	call	srand@PLT	#
# ./main.c:70:             x = -1 + 2 * ((double) rand()) / RAND_MAX;
	call	rand@PLT	#
# ./main.c:70:             x = -1 + 2 * ((double) rand()) / RAND_MAX;
	cvtsi2sd	xmm0, eax	# _30, _29
# ./main.c:70:             x = -1 + 2 * ((double) rand()) / RAND_MAX;
	addsd	xmm0, xmm0	# _31, _30
# ./main.c:70:             x = -1 + 2 * ((double) rand()) / RAND_MAX;
	movsd	xmm1, QWORD PTR .LC1[rip]	# tmp156,
	divsd	xmm0, xmm1	# _32, tmp156
# ./main.c:70:             x = -1 + 2 * ((double) rand()) / RAND_MAX;
	movsd	xmm1, QWORD PTR .LC2[rip]	# tmp157,
	subsd	xmm0, xmm1	# _33, tmp157
# ./main.c:70:             x = -1 + 2 * ((double) rand()) / RAND_MAX;
	movsd	QWORD PTR -64[rbp], xmm0	# x, _33
# ./main.c:71:             printf("Generated number: %lf\n", x);
	mov	rax, QWORD PTR -64[rbp]	# x.9_34, x
	movq	xmm0, rax	#, x.9_34
	lea	rdi, .LC15[rip]	#,
	mov	eax, 1	#,
	call	printf@PLT	#
# ./main.c:72:             result = function(x);
	mov	rax, QWORD PTR -64[rbp]	# x.10_35, x
	movq	xmm0, rax	#, x.10_35
	call	function@PLT	#
	movq	rax, xmm0	# tmp158,
	mov	QWORD PTR -8[rbp], rax	# result, tmp158
.L9:
# ./main.c:75:     printf("Result: %f\n", result);
	mov	rax, QWORD PTR -8[rbp]	# tmp159, result
	movq	xmm0, rax	#, tmp159
	lea	rdi, .LC16[rip]	#,
	mov	eax, 1	#,
	call	printf@PLT	#
	mov	eax, 0	# _40,
.L12:
# ./main.c:76: }
	leave	
	ret	
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	4290772992
	.long	1105199103
	.align 8
.LC2:
	.long	0
	.long	1072693248