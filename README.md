# Arc_Of_Comp_Sys_3

### Вариант 9:

Разработать программу, вычисляющую с помощью степенного ряда с точностью не хуже 0,05% значение функции arctan (x) для
заданного параметра x

Отчёт о выполненной работе:

### 1. Программа была написана сразу под 9 баллов: 
### Замечания по работе программы:
> * ./program.exe random <name of output file> - входной параметр рандомный, результат записывается в файл с указанным именем
> * ./program.exe <name of input file> <name of output file> - входной параметр берется из указанного входного файла, результат записывается в файл с указанным именем
> * ./program.exe <что угодно> - входной параметр задается через консоль, выходной в консоль(терминал). Вариант запуска с зацикливанием
> * ./program.exe - запуск с консольным вводом/выводом
> * Тесты каждой версии программы находятся в виде фото в соответсвующих файлах. По одному фото на каждую версию программы. Одного фото на каждую версию достаточно, чтобюы уместились все тесты.

### 2. Преобразование с-кода в ассемблерный производилось с помощью следующих комманд: 
### Создаем ассемблерные файлы
> * gcc -masm=intel -fno-asynchronous-unwind-tables -fno-jump-tables -fno-stack-protector -fno-exceptions -fverbose-asm ./main.c -S -o ./main.s
> * gcc -masm=intel -fno-asynchronous-unwind-tables -fno-jump-tables -fno-stack-protector -fno-exceptions -fverbose-asm ./task.c -S -o ./task.s
### Создание object файлов
> * gcc ./main.s -c -o main.o 
> * gcc ./task.s -c -o task.o
### Линковка
> * gcc ./task.o main.o -lm -o program.exe

### 3. Модификация ассемблерного кода
### Убрал лишнее, сделал несколько оптимизаций
    - .ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
    - .section	.note.GNU-stack,"",@progbits
    - .section	.note.gnu.property,"a"
    - .align 8
    - .long	 1f - 0f
    - .long	 4f - 1f
    - .long	 5
    - 0:
    - .string	 "GNU"
    - 1:
    - .align 8
    - .long	 0xc0000002
    - .long	 3f - 2f
    - 2:
    - .long	 0x3
    - 3:
    - .align 8
    - 4:

  
    - mov	rdx, QWORD PTR -24[rbp]	
    - mov	rax, QWORD PTR -32[rbp]	
    - mov	rsi, rdx	
    - mov	rdi, rax
  
    + mov	rsi, QWORD PTR -24[rbp]	
    + mov	rdi, QWORD PTR -32[rbp]
  
  
    - mov	rdx, QWORD PTR -8[rbp]
    - mov	rax, QWORD PTR -48[rbp]
    - movq	xmm0, rdx
    - lea	rsi, .LC9[rip]
    - mov	rdi, rax
  
    + movq	xmm0, QWORD PTR -8[rbp]
    + lea	rsi, .LC9[rip]
    + mov	rdi, QWORD PTR -48[rbp]
  
  
    - lea	rdx, -64[rbp]
    - mov	rax, QWORD PTR -40[rbp]
    - lea	rsi, .LC8[rip]
    - mov	rdi, rax
    - mov	eax, 0
  
    + lea	rdx, -64[rbp]
    + lea	rsi, .LC8[rip]
    + mov	rdi, QWORD PTR -40[rbp]
    + mov	eax, 0
  
  
    - mov	rax, QWORD PTR -40[rbp]
    - mov	rdi, rax
  
    + mov rdi, QWORD PTR -40[rbp]
  
  
    - mov	rax, QWORD PTR -56[rbp]
    - mov	rdi, rax	#
  
    + mov	rdi, QWORD PTR -56[rbp]
  
    
    - endbr64
    
    - .ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	- .section	.note.GNU-stack,"",@progbits
	- .section	.note.gnu.property,"a"
	- .align 8
	- .long	 1f - 0f
	- .long	 4f - 1f
	- .long	 5
    - 0:
    - 	.string	 "GNU"
    - 1:
	-    .align 8
	-    .long	 0xc0000002
	-    .long	 3f - 2f
    - 2:
	-   .long	 0x3
    - 3:
	-    .align 8
    - 4:

    
### Установление соответствий переменных
### main.c:
	> * -84[rbp] - argc
	> * -96[rbp] - argv
	> * -64[rbp] - x
	> * -8[rbp] - result
	> * -56[rbp] - output в блоке if при argc == 3
	> * -40[rbp] - input
	> * -48[rbp] - output в блоке else при argc == 3
	> * -24[rbp] - t_start
	> * -12[rbp] - i
	> * -32[rbp] - t_end
	> * -68[rbp] - answer
	> * -72[rbp] - seed 
### task.c:
	> * -4[rbp] - n
	> * -16[rbp] - diff
	> * -32[rbp] - e
	> * -56[rbp] - x
	> * -24[rbp] - res
    
### Использовал регистры
	> * -12[rbp] заменил на r11d
	> * -4[rbp] заменил на r12d
	> * -84[rbp] заменил на r13d
	
### Время работы программы и размеры исполняемых файлов
  | Программа | Время работы Тест-1 |Время работы Тест-2|Размер исполняемого файла|
  |---|---|---|---|
  |Assembler-code без модификаций|3014 ms|30997 ms|17816 B|
  |Assembler-code с модификациями|2897 ms|30218 ms|17653 B|
  |Assembler-code с модификациями + Ofast|2965 ms|30629 ms|19052 B|
  |Assembler-code с модификациями + Os|3141 ms|33126 ms|17643 B|
