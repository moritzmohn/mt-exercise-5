# MT Exercise 5: Byte Pair Encoding, Beam Search
This repository is a starting point for the 5th and final exercise. As before, fork this repo to your own account and the clone it into your prefered directory.

## Requirements

- This only works on a Unix-like system, with bash available.
- Python 3 must be installed on your system, i.e. the command `python3` must be available
- Make sure virtualenv is installed on your system. To install, e.g.

    `pip install virtualenv`

## Steps

Clone your fork of this repository in the desired place:

    git clone https://github.com/[your-name]/mt-exercise-5

Create a new virtualenv that uses Python 3.10. Please make sure to run this command outside of any virtual Python environment:

    ./scripts/make_virtualenv.sh

**Important**: Then activate the env by executing the `source` command that is output by the shell script above.

Download and install required software as described in the exercise pdf.

Download data:

    ./download_iwslt_2017_data.sh
    
Before executing any further steps, you need to make the modifications described in the exercise pdf.

Train a model:

    ./scripts/train.sh

The training process can be interrupted at any time, and the best checkpoint will always be saved.

Evaluate a trained model with

    ./scripts/evaluate.sh

## Changes and added files Part 1

- I added two scripts (make_code_and_vocab_500/2000) to make vocabularies and code for the BPE setting. The vocabularies are saved in the shared_models directory. Run: ./scripts/make_code_and_vocab_500.sh
- I added a python script in the shared models directory to remove the counts from the vocab files and save them. It can be run with: python3 remove_counts.py --old_vocab vocab500_counts --new_vocab vocab500
- I added 3 train scripts for each of the settings. They can be e.g. run with: ./scripts/train_wordlevel.sh
- For each of the train scripts I added configuration files in the config directory.
- To evaluate the models I added an evaluate script for all of them. They can be run e.g. with: ./scripts/evaluate_wordlevel.sh
- For training and evaluation I used the data in the directory data_nl_de. There is one file with the ending "cut" which only contains the first 100 k sentences.

## Changes and added files Part 2

- I added a script to compute the BLEU scores for different beam sizes which can be run with: ./scripts/evaluate_beamsizes.sh
- I added for all beam sizes from 1 to 10 a configuration file in the config directory.
- I added a folder called beam_size_experiment with a python script to create the graphs. The numbers (time, bleu score) I entered manually in the script.
- The resulting graphs are saved in the same folder. There is one graph for the BLEU scores and another one for the time.