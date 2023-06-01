#! /bin/bash

scripts=$(dirname "$0")
base=$scripts/..

data=$base/data_nl_de
cat $data/train_cut.nl $data/train_cut.de > $data/train_combined.txt
train=train_combined

code=$base/code
shared_models=$base/shared_models
mkdir -p $shared_models
mkdir -p $code

subword-nmt learn-joint-bpe-and-vocab --input $data/$train.txt --total-symbols -s 2000 -o $code/codes2000.bpe --write-vocabulary $shared_models/vocab2000_counts.txt
