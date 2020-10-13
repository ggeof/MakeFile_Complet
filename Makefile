PROJECT_NAME = 
SHORT_PROJECT_NAME = 
SUB_PROJET =


SRC=$(wildcard ./src/[^~]*/*.cpp | ./src/*.cpp)
OBJ= $(SRC: ./src/*/%.cpp=./bin/%.o)

include Makefile_Files/Makefile_TODO


### Helper 
help:
	@ echo "All targets available :"
	@ echo "	- debug : compil the project in debug"
	@ echo "	- release : compil the project in release"
	@ echo ""
	@ echo "	- clean : delete all bin"
	@ echo "	- mrproper : delete all bin and executable and files doxygen"
	@ echo ""
	@ echo "	- help : Return this text"
	@ echo "	- TODO : Return the list of TODO in the project"
	@ echo "	- doxy : Generated the documentation Doxygen"
