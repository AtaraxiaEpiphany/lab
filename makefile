#VPATH = home/Desktop/demo/sources : home/Desktop/lab/sources 

Srcs := $(wildcard *.c) 
Dest := $(patsubst %.c,%.o,$(Srcs))
Objs := $(Srcs:.c=)

ifndef DIR 
DIR := $(shell if [ ! -d "objdump" ];then mkdir "objdump"; fi\
       	&& touch objdump/objdump.txt objdump/relocate.txt) 
endif  #判断目录是否存在,创建objdump文本文件

ifndef SRC
SRC := $(shell if [ ! -d "sources" ];then mkdir "sources"; fi)
endif

ifndef DET 
DET := $(shell if [ ! -d "target file" ];then mkdir "target file"; fi)
endif  

ifndef OBJ 
OBJ := $(shell if [ ! -d "executale file" ];then mkdir "executale file"; fi)
endif  



all : $(Objs)
.PHONY : all 


$(Objs) : %:%.o 
	-gcc -g $< -o $@  
	-objdump -S $@ >> ./objdump/objdump.txt
	@echo "_______________________________________________________________" >> ./objdump/objdump.txt 
	-mv $@ ./'executale file' 
	-mv $< ./'target file'

$(Dest) :%.o:%.c
	-gcc -c -g $< -o $@ && cp $< 'executale file'
	-objdump -S $@ >> objdump/relocate.txt
	@echo "_______________________________________________________________" >> ./objdump/relocate.txt 
	-mv $< sources
.PHONY : clean cleanobj cleandir
clean : cleanobj cleandir
	-rm -rf *.o
cleanobj : 
	-rm -rf 'executale file'
cleandir : 
	-cat ./objdump/relocate.txt
	-rm -rf objdump 
	-rm -rf 'target file'

