
# TODO: add targets to compile LinkedList.c

# TODO: add a target for each .input file in the Data directory to run the compiled LinkedList program with the tests in ./Data

# TODO: add a target that can run all the tests above.


# compile with gcc, change this to clang if you prefer
COMPILER = gcc

# The C flags to pass to gcc
C_FLAGS = -Wall -Wextra -std=c99


Stack: Stack.o
	$(COMPILER) $(C_FLAGS) -o Stack Stack.o

# compile the `Stack.o` file
Stack.o: Stack.c
	$(COMPILER) $(C_FLAGS) -c Stack.c

# Test Cases
test: Test1 Test2 Test3

Test1: test_a

test_a: Stack
	./Stack < Data/test1.input > test1.result
	./TestPassed.sh test1.result Data/test1.expected

Test2: test_b

test_b: Stack
	./Stack < Data/test2.input > test2.result
	./TestPassed.sh test2.result Data/test2.expected

Test3: test_c

test_c: Stack
	./Stack < Data/test3.input > test3.result
	./TestPassed.sh test3.result Data/test3.expected


