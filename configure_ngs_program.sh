#!/bin/bash

which anaconda

if [ $? -ne 0 ]
        then
            	echo " Anaconda or Miniconda3 not installed "
                echo " Installing Miniconda "
                curl -O https://repo.anaconda.com/miniconda/Miniconda3-py39_4.11.0-Linux-x86_64.sh
                bash Miniconda3-py39_4.11.0-Linux-x86_64.sh
                source ~/.bashrc
                conda update conda
                echo " Creating and activating conda environment named ngs"
                conda create -name ngs python=3
                conda activate ngs
                rm Miniconda3-py39_4.11.0-Linux-x86_64.sh
                echo " Please visit https://docs.conda.io/projects/conda/en/latest/user-guide/install/linux.html "
        else
            	echo " Miniconda installed"
fi

which fastqc

if [ $? -ne 0 ]
        then
            	echo " fastqc not installed "
                conda install -c bioconda fastqc
                echo " Please visit https://www.bioinformatics.babraham.ac.uk/projects/fastqc/ "
        else
            	echo " fastqc installed"
fi

which multiqc
if [ $? -ne 0 ]
        then
                echo " multiqc not installed "
                conda install -c bioconda multiqc
                echo " Please visit https://multiqc.info/ "
        else
            	echo " multiqc installed"
fi





which hisat2

if [ $? -ne 0 ]
        then
            	echo " hisat2 not installed "
                conda install -c bioconda hisat2
                echo " Please visit https://daehwankimlab.github.io/hisat2/#:~:text=HISAT2%20is%20a%20fast%20and,for%20graphs%20(Sir%C3%A9n%20et%20al. "
        else
            	echo " hisat2 installed"
fi



which samtools

if [ $? -ne 0 ]
        then
            	echo " samtools not installed "
                conda install -c bioconda samtools
                echo " Please visit http://www.htslib.org/ "
        else
            	echo " samtools installed"
fi

which stringtie 

if [ $? -ne 0 ]
        then
            	echo " stringtie not installed "
                conda install -c bioconda stringtie
                echo " Please visit https://ccb.jhu.edu/software/stringtie/#:~:text=StringTie%20is%20a%20fast%20and,variants%20for%20each%20gene%20locus. "
        else
            	echo " stringtie installed"
fi

which gffcompare

if [ $? -ne 0 ]
        then
            	echo " gffcompare not installed "
                conda install -c bioconda gffcompare
                echo " Please visit http://www.htslib.org/ "
        else
            	echo " gffcompare installed"
fi

which gffread

if [ $? -ne 0 ]
        then
            	echo " gffread not installed "
                conda install -c bioconda gffread
                echo " Please visit http://www.htslib.org/ "
        else
            	echo " gffread installed"
fi

which htseq-count

if [ $? -ne 0 ]
        then
            	echo " htseq not installed "
                conda install -c bioconda htseq
                echo " Please visit http://www.htslib.org/ "
        else
            	echo " htseq installed"
fi

