CXX = g++
CXXFLAGS = -Wall -O2 -std=c++20
# Made by Lopushenko Kyrylo IO-32
LIB = libcalculator.a
EXEC = compiledprogram

all: $(LIB) $(EXEC)

$(LIB): calculator.o
	ar rcs $(LIB) calculator.o

$(EXEC): main.o $(LIB)
	$(CXX) main.o -L. -lcalculator -o $(EXEC)

calculator.o: calculator.cpp calculator.h
	$(CXX) $(CXXFLAGS) -c calculator.cpp

main.o: main.cpp calculator.h
	$(CXX) $(CXXFLAGS) -c main.cpp

clean:
	rm -f *.o $(LIB) $(EXEC)
