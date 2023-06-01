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

subword-nmt learn-joint-bpe-and-vocab --input $data/$train.txt --total-symbols -s 500 -o $code/codes500.bpe --write-vocabulary $shared_models/vocab500_counts.txt
