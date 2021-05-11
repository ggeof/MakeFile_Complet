PROJECT_NAME = 
SHORT_PROJECT_NAME =
VERSION = 1.0.0
SUB_PROJET =

SRC= $(shell find src/* -name '*.cpp' -not -path '*~*')

include Makefile_Files/Makefile_TODO
include Makefile_Files/Makefile_Nettoyage
include Makefile_Files/Makefile_Doxygene
include Makefile_Files/Makefile_Compilation


### Helper 
help:
	@ echo "All targets available :"
	@ echo "	- debug : compil the project in debug"
	@ echo "	- release : compil the project in release"
	@ echo ""
	@ echo "	- clean : delete bin, logs and executable"
	@ echo "	- mrproper : delete bin, logs, executable and clean all sub-project"
	@ echo ""
	@ echo "	- help : Return this text"
	@ echo "	- TODO : Return the list of TODO in the project"
	@ echo "	- doxy : Generated the documentation Doxygen"
