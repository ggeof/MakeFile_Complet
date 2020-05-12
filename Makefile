CC=g++
EXEC=EXEC
CFLAGS= -g -W -Wall -ansi -pedantic -std=c++11
MODEFLAG=-DRELEASE
SRC=$(wildcard ./src/[^~]*/*.cpp | ./src/*.cpp)
OBJ= $(SRC: ./src/*/%.cpp=./bin/%.o)

LIBS = 


### Compilation

all: $(EXEC)

debug : defDeb $(EXEC)

defDeb:
	$(eval MODEFLAG = -DDEBUG)

release : all

	
### Compilation

$(EXEC) : $(OBJ)
	$(CC) $(CFLAGS) $(MODEFLAG) -o $@  $^ $(LIBS)

%.o: %.c
	$(CC) $(CFLAGS) $(MODEFLAG) $(INCPATH)  -o $@ -c  $< $(LIBS)


#### Netoyer
.PHONY: clean mrproper

clean:
	@ rm -rf ./bin/*

mrproper: clean
	@ rm -rf $(EXEC)
