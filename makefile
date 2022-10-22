output: a.o
	gcc -m64 -no-pie a.o -o a
a.o: a.asm
	yasm -f elf64 a.asm
