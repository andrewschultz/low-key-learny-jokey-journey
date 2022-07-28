# mrc.py: make rhyme code for CSDD-ish games

import re
import sys

# "dane|jane|lane|wayne"	"d|dee|g|gee|lee|whee"	--	--	false	false	true	false	Bane Be Sane See	vc-in-bane rule	vr-choose-name rule	"d/dee dane" or "dane dee/d" or "jane g/gee" or "gee/g jane" or "wayne whee" or "whee wayne"	--

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

while cmd_count < len(sys.argv):
    arg = sys.argv[cmd_count].lower()
    arg2 = sys.argv[cmd_count+1].lower() if cmd_count + 1 < len(sys.argv) else ''
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

for w in words_to_proc:
    print_verbcheck_line(w)
print()

for w in words_to_proc:
    print("a goodrhyme rule (this is the vc-{} rule):".format(w))
    print("\tif player is not in THISROOM, unavailable;")
    print("\tif sco-{} is true:".format(w))
    print("\t\tvcal \"You already did this!\";")
    print("\t\talready-done;")
    print("\tready;")
    print()

for w in words_to_proc:
    print("this is the vr-{} rule:".format(w))
    print("\tnow sco-{} is true;".format(w))
    print("\tsay \"Hooray! You figured what to do! You get a point!\";")
    print()

for w in words_to_proc:
    print("sco-{} is a truth state that varies.".format(w))

