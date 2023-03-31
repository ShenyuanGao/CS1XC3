CC = gcc
CFLAGS = -Wall
BUILD_DIR = ./build/
SRC_DIR = ./src/

all: main course.o student.o  
main: $(SRC_DIR)main.c $(SRC_DIR)course.c $(SRC_DIR)student.c
	$(CC) $(SRC_DIR)main.c $(SRC_DIR)student.c $(SRC_DIR)course.c -o $(BUILD_DIR)main
	mkdir -p ./build/scripts
	mkdir -p ./build/documentation/
	mkdir -p ./build/documentation/docs
	
course.o: $(SRC_DIR)course.c
	$(CC) -c -o $(BUILD_DIR)course.o $(SRC_DIR)course.c
student.o: $(SRC_DIR)student.c
	$(CC) -c -o $(BUILD_DIR)student.o $(SRC_DIR)student.c
doxyfile: 
	doxygen Doxyfile
	




clean: 
	rm -r -f $(BUILD_DIR)*
