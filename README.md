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

### 2. Преобразование с-кода в ассемблерный производилось с помощью следующих комманд: 
### Создаем ассемблерные файлы
> * gcc -masm=intel -fno-asynchronous-unwind-tables -fno-jump-tables -fno-stack-protector -fno-exceptions -fverbose-asm ./main.c -S -o ./main.s
> * gcc -masm=intel -fno-asynchronous-unwind-tables -fno-jump-tables -fno-stack-protector -fno-exceptions -fverbose-asm ./function.c -S -o ./function.s
### Создание object файлов
> * gcc ./main.s -c -lm -o main.o
> * gcc ./function.s -c -lm -o function.o
### Линковка
> * gcc ./function.o main.o -lm -o program.exe

### 3. Модификация ассемблерного кода
### Убрал лишнее, сделал несколько оптимизаций
