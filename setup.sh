#!/bin/bash 

curl https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -o ~/miniconda.sh
bash ~/miniconda.sh -b -p $HOME/miniconda

eval "$(/Users/adobeuser/miniconda/bin/conda shell.bash hook)"

conda init 

conda create --name tumo-irta python=3.10

conda activate tumo-irta 

pip install django nltk pystemmer

