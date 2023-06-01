import argparse

def parse_args():
    '''parse the command line argument'''
    
    parser = argparse.ArgumentParser()
    parser.add_argument("--vocab_old", type=str)
    parser.add_argument("--vocab_new", type=str)
    args = parser.parse_args()
    return args
    
def remove_counts(vocab_old, vocab_new):
    new_file = open(vocab_new, 'w')
    with open(vocab_old) as file:
        for line in file.readlines():
            new_line = line.split()[0]
            new_file.write(new_line)
            new_file.write("\n")
    
    

def main():
    args = parse_args()
    vocab_old = args.vocab_old
    vocab_new = args.vocab_new
    remove_counts(vocab_old, vocab_new)

if __name__ == '__main__':
    main()