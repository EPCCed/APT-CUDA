# 
#Makefile
#

MF= Makefile

EXE= reconstruct

SRC= reconstruct_kernels.CUF  reconstruct.CUF 


CC=nvfortran
CFLAGS=-cuda -gpu=cc70,cuda11.8 -O3

.SUFFIXES:
.SUFFIXES: .CUF  .o

OBJ=	$(SRC:.CUF=.o)


.CUF.o:
	$(CC) $(CFLAGS) -c $<

default: $(EXE)

$(EXE):	$(OBJ) 
	$(CC) $(CFLAGS) -o $@ $(OBJ) 

$(OBJ):	$(MF) 

clean:
	rm -f $(OBJ) $(EXE) *.mod core
