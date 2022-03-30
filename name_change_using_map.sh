#!/bin/bash

for i in *.fastq
        do
	name=$(echo $i | awk -F "_" '{print $1}')
        ext=$(echo $i | awk -F "_" '{print $2}')
        echo $name
        while read -r line
                do
                first=$( echo $line | awk '{print $1}')
                second=$( echo $line | awk '{print $2}')
                echo $first
                echo $second
                if [ $name == $first ]
                then
                    	mv ${name}_${ext} ${second}_${ext}
                fi
                done < finalf.txt
        done
