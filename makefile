all: main


main.o: main.s
	yasm -f macho64 main.s

main:
	ld -L. -lSystem -lraylib -o main main.o
