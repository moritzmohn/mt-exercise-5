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

model_name=transformer_bpe2000

translations_sub=$translations/$model_name

mkdir -p $translations_sub

SECONDS=0

CUDA_VISIBLE_DEVICES=$device OMP_NUM_THREADS=$num_threads python -m joeynmt translate $configs/beam1.$model_name.yaml < $data/test.$src > $translations_sub/beam1.$model_name.$trg
tail -n 1779 $translations_sub/beam1.$model_name.$trg | sacrebleu $data/test.$trg

echo "time taken:"
echo "$SECONDS seconds"

SECONDS=0

CUDA_VISIBLE_DEVICES=$device OMP_NUM_THREADS=$num_threads python -m joeynmt translate $configs/beam2.$model_name.yaml < $data/test.$src > $translations_sub/beam2.$model_name.$trg
tail -n 1779 $translations_sub/beam2.$model_name.$trg | sacrebleu $data/test.$trg

echo "time taken:"
echo "$SECONDS seconds"

SECONDS=0

CUDA_VISIBLE_DEVICES=$device OMP_NUM_THREADS=$num_threads python -m joeynmt translate $configs/beam3.$model_name.yaml < $data/test.$src > $translations_sub/beam3.$model_name.$trg
tail -n 1779 $translations_sub/beam3.$model_name.$trg | sacrebleu $data/test.$trg

echo "time taken:"
echo "$SECONDS seconds"

SECONDS=0

CUDA_VISIBLE_DEVICES=$device OMP_NUM_THREADS=$num_threads python -m joeynmt translate $configs/beam4.$model_name.yaml < $data/test.$src > $translations_sub/beam4.$model_name.$trg
tail -n 1779 $translations_sub/beam4.$model_name.$trg | sacrebleu $data/test.$trg

echo "time taken:"
echo "$SECONDS seconds"

SECONDS=0

CUDA_VISIBLE_DEVICES=$device OMP_NUM_THREADS=$num_threads python -m joeynmt translate $configs/beam5.$model_name.yaml < $data/test.$src > $translations_sub/beam5.$model_name.$trg
tail -n 1779 $translations_sub/beam5.$model_name.$trg | sacrebleu $data/test.$trg

echo "time taken:"
echo "$SECONDS seconds"

SECONDS=0

CUDA_VISIBLE_DEVICES=$device OMP_NUM_THREADS=$num_threads python -m joeynmt translate $configs/beam6.$model_name.yaml < $data/test.$src > $translations_sub/beam6.$model_name.$trg
tail -n 1779 $translations_sub/beam6.$model_name.$trg | sacrebleu $data/test.$trg

echo "time taken:"
echo "$SECONDS seconds"


SECONDS=0

CUDA_VISIBLE_DEVICES=$device OMP_NUM_THREADS=$num_threads python -m joeynmt translate $configs/beam7.$model_name.yaml < $data/test.$src > $translations_sub/beam7.$model_name.$trg
tail -n 1779 $translations_sub/beam7.$model_name.$trg | sacrebleu $data/test.$trg

echo "time taken:"
echo "$SECONDS seconds"


SECONDS=0

CUDA_VISIBLE_DEVICES=$device OMP_NUM_THREADS=$num_threads python -m joeynmt translate $configs/beam8.$model_name.yaml < $data/test.$src > $translations_sub/beam8.$model_name.$trg
tail -n 1779 $translations_sub/beam8.$model_name.$trg | sacrebleu $data/test.$trg

echo "time taken:"
echo "$SECONDS seconds"


SECONDS=0

CUDA_VISIBLE_DEVICES=$device OMP_NUM_THREADS=$num_threads python -m joeynmt translate $configs/beam9.$model_name.yaml < $data/test.$src > $translations_sub/beam9.$model_name.$trg
tail -n 1779 $translations_sub/beam9.$model_name.$trg | sacrebleu $data/test.$trg

echo "time taken:"
echo "$SECONDS seconds"


SECONDS=0

CUDA_VISIBLE_DEVICES=$device OMP_NUM_THREADS=$num_threads python -m joeynmt translate $configs/beam10.$model_name.yaml < $data/test.$src > $translations_sub/beam10.$model_name.$trg
tail -n 1779 $translations_sub/beam10.$model_name.$trg | sacrebleu $data/test.$trg

echo "time taken:"
echo "$SECONDS seconds"



