#!/bin/bash 

#conda create -n rf2aa python=3.10 -y
#source activate rf2aa  # NOTE: one still needs to use `conda` to (de)activate environments

# Dependencies
# for MacOS on M1 chips, hhsuite/signalp6/psipred are not available.
conda install pytorch==2.0.1 torchvision==0.15.2 torchaudio==2.0.2 pytorch-cuda=11.8 -c pytorch -c nvidia
conda install -y -c conda-forge -c bioconda -c biocore absl-py  openbabel pandas requests scikit-learn=1.4.1.post1 scipy  tensorflow=2.11.0 omegaconf gitpython hydra-core numpy h5py hdf5 icecream click deepdiff

pip install dgl -f https://data.dgl.ai/wheels/cu118/repo.html

# Tools of sequence preprocessing
conda install -y -c conda-forge -c bioconda -c predector  -c biocore hhsuite signalp6 psipred

pip install git+https://github.com/YaoYinYing/SE3Transformer@rf2aa

pip install assertpy pydantic mkl
