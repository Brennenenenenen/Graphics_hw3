# This sample Makefile allows you to make an OpenGL application
#   whose source is exactly one .c file or one .cc file under Solaris.
#   check the location of the X libraries on your implementation.
#
# To use this Makefile, you type:
#
#        make xxxx
#                  
# where
#       xxxx.cc is the name of the c++-file you wish to compile 
#  or 
#       xxxx.c is the name of the c-file you wish to compile 
#       
# A binary named xxxx will be produced
# Libraries are assumed to be in the default search paths
# as are any required include files

#
# Modified by Prof. Chelberg to also allow you to make from a single
# c++ source file.  So if xxxx.cc is the sourcefile, you type make
# xxxx to produce the binary file.

# last-modified: Mon Sep 17 15:17:00 2012

# Assumes the following file exists in the proper place.
include /Users/Brennen/Documents/graphics_stuff/Makefile.defs.mac

# Next line says what options to use to compile programs
OPTIONS+=-Wall

OBJECTS = $(patsubst %.cc,%,$(wildcard *.cc))

all: build #cube2

common.o: common.cc common.h
	$(CC) common.cc -c $(OPTIONS)

cube2: common.o common.h cube2.cc
	$(CC)  cube2.cc common.o  $(InitShader) $(OPTIONS) $(LDLIBS) -o cube2

clean:
	rm -f $(OBJECTS) *~

build: cube2
	./cube2


