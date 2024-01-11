# 
#Makefile
#

MF=Makefile

EXE=reconstruct

SRC=reconstruct.cu reconstruct_kernels.cu utilities.cu

ARCH=sm_70

CC=nvcc
CFLAGS=-O3 -arch=$(ARCH)

.SUFFIXES:
.SUFFIXES: .cu  .o

OBJ=$(SRC:.cu=.o)


.cu.o:
	$(CC) $(CFLAGS) -dc -c $<

default: $(EXE)

$(EXE):	$(OBJ) 
	$(CC) $(CFLAGS) -o $@ $(OBJ) 

$(OBJ):	$(MF) *.h

clean:
	rm -f $(OBJ) $(EXE) core
