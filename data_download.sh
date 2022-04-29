#!/bin/bash
#####################################################################
#  SRR_Acc.txt file contains SRR identfiers of the respecive SRA files in following format: separated by newline
# SRR5370445
# SRR5370445
####

# srr_acc is location of SRR.Acc.txt file
srr_acc=/location/of/the/SRR_Acc.txt/file

# out_dir=location of output directory
out_dir=/home/chaos/15_nov/samples

# for checking space
touch temp_space.txt
temp=0
while read -r line; do
                        space=$(vdb-dump --info $line | grep size | awk -F ":" '{print $2}'| tr -d ',')
                        temp=$(( $temp + $space ))
                    done
# spcae in GB
new=$(echo $temp | awk '{print $1/1024/1024/1024}')
new=$((new * 10 ))
echo "##############################"
echo
echo "Space required for all the samples is"
echo $new "GB"
echo
echo "##############################"
while read -r line; do
                # Reading each line
                        echo $line
                        ls ${line}*
                        if [ $? -ne 0 ]
                            then
                              fasterq-dump -p $line -O ${out_dir}
                        done < ${srr_Acc}
