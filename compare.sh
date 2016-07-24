#!/bin/bash

# 账户比对程序

# 把exist中没有的,source中有的输出

while read i 

do 
	grep -q $i  exist.txt 
					#有的跳过，没有的输出
	if [ $? -eq 0 ];then
		continue;
	else  
		echo $i >>  new.txt

	fi         

done<source.txt
