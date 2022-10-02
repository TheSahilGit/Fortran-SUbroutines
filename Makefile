compile = gfortran 

OBJ_FILE= intersect.o unique.o bubblesort.o


test :
	echo $(OBJ_FILE)

output.exe:$(OBJ_FILE)	-o output.exe



intersect.o: intersect.f90 unique.o 
		$(compile) -c -o intersect.o \
		intersect.f90 unique.o
unique.o: unique.f90 bubblesort.o
		$(compile) -c -o unique.o \
		unique.f90 bubblesort.o
bubblesort.o: bubblesort.f90 
		$(compile) -c -o bubblesort.o\
		bubblesort.f90



