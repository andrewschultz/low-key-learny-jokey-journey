# mrc.py: make rhyme code for CSDD-ish games

import re
import sys
import mytools as mt

out_file = "mrc.txt"

# "word 1"	"word 2"	--	--	false	false	true	false	(Room where action happens)	checking rule	running rule	specific topic, if needed e.g. "a/b" "c/d" can only be a c or b d 	THINK text (probably blank)

def valid_word_clump(arg):
    return re.search("^[a-z]+-[a-z]+$", arg)

def print_verbcheck_line(my_word_pair):
    word_pair_array = my_word_pair.split('-')
    default_verb_check = [ '""', '""', '--', '--', 'false', 'false', 'true', 'false', 'THISROOM', 'vc rule', 'vr rule', '--', '--' ]
    default_verb_check[0] = '"{}"'.format(word_pair_array[0])
    default_verb_check[1] = '"{}"'.format(word_pair_array[1])
    default_verb_check[9] = 'vc-{} rule'.format(my_word_pair)
    default_verb_check[10] = 'vr-{} rule'.format(my_word_pair)
    default_verb_line = '\t'.join(default_verb_check)
    print(default_verb_line)

cmd_count = 1
words_to_proc = []
direct_to_file = False
open_file_after = False

while cmd_count < len(sys.argv):
    arg = sys.argv[cmd_count].lower()
    arg2 = sys.argv[cmd_count+1].lower() if cmd_count + 1 < len(sys.argv) else ''
    if arg == 'f':
        direct_to_file = True
        open_file_after = True
        cmd_count += 1
        continue
    if arg in ( 'nf', 'fn' ):
        direct_to_file = True
        cmd_count += 1
        continue
    if re.search("^[a-z]+$", arg) and re.search("^[a-z]+$", arg2):
        words_to_proc.append("{}-{}".format(arg, arg2))
        cmd_count += 2
        continue
    if not valid_word_clump(arg):
        print("WARNING {} was not a valid word. You need something of the form letters-letters.")
    else:
        words_to_proc.append(arg)
    cmd_count += 1

if not len(words_to_proc):
    sys.exit("No word pairs were found to process. Bailing.")

if direct_to_file:
    old_stdout = sys.stdout
    sys.stdout = open(out_file, "w")

for w in words_to_proc:
    print_verbcheck_line(w)
print()

def add_basic_rules(w):
    print("a goodrhyme rule (this is the vc-{} rule):".format(w))
    print("\tif player is not in THISROOM, unavailable;")
    print("\tif sco-{} is true:".format(w))
    print("\t\tvcal \"You already did this!\";")
    print("\t\talready-done;")
    print("\tready;")
    print()
    print("this is the vr-{} rule:".format(w))
    print("\tnow sco-{} is true;".format(w))
    print("\tsay \"Hooray! You figured what to do! You get a point!\";")
    print()

for w in words_to_proc:
    add_basic_rules(w)

for w in words_to_proc:
    print("sco-{} is a truth state that varies.".format(w))

if direct_to_file:
    sys.stdout.close()

if open_file_after:
    sys.stdout = old_stdout
    mt.npo(out_file)