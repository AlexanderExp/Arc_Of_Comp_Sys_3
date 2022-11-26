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
-	  .ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
-	  .section	.note.GNU-stack,"",@progbits
- 	.section	.note.gnu.property,"a"
-  	.align 8
- 	.long	 1f - 0f
- 	.long	 4f - 1f
- 	.long	 5
- 0:
- 	.string	 "GNU"
- 1:
- 	.align 8
- 	.long	 0xc0000002
- 	.long	 3f - 2f
- 2:
- 	.long	 0x3
- 3:
- 	.align 8
- 4:

  
  
