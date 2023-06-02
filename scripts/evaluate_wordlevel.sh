#! /bin/bash

scripts=$(dirname "$0")
base=$scripts/..

data=$base/data_nl_de
configs=$base/configs

translations=$base/translations

mkdir -p $translations

src=nl
trg=de


num_threads=8
device=0

# measure time

SECONDS=0

model_name=transformer_wordlevel

echo "###############################################################################"
echo "model_name $model_name"

translations_sub=$translations/$model_name

mkdir -p $translations_sub

CUDA_VISIBLE_DEVICES=$device OMP_NUM_THREADS=$num_threads python -m joeynmt translate $configs/$model_name.yaml < $data/test.$src > $translations_sub/test.$model_name.$trg

# compute case-sensitive BLEU 

tail -n 1779 $translations_sub/test.$model_name.$trg | sacrebleu $data/test.$trg


echo "time taken:"
echo "$SECONDS seconds"
