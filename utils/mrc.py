#
# mrc.py: make rhyme code for CSDD-ish games
#
# it prints a table of verbchecker line, prints the vc- and vr- rules, and guesses at the boolearn variable.

import re
import sys
from collections import defaultdict
import mytools as mt

out_file = "mrc.txt"

# "word 1"	"word 2"	--	--	false	true	true	false	(Room where action happens)	checking rule	running rule	specific topic, if needed e.g. "a/b" "c/d" can only be a c or b d 	THINK text (probably blank)

def usage(my_word = ""):
    if my_word:
        print("WARNING {} was not a valid word. You need something of the form letters-letters.").format(my_word)
    print("Options: f / nf / fn specify exporting to a file. NF/FN means don't open post-run.")
    print("r= specifies the room name, which is THISROOM by default.")
    print("The order matters, but you can also switch room names in the middle.")
    print("appending | clip sends stuff to the clipboard.")
    sys.exit()

def valid_word_clump(arg):
    return re.search("^[a-z]+[/. -][a-z]+$", arg)

def add_basic_rules(w):
    print("a goodrhyme rule (this is the vc-{} rule):".format(w))
    print("\tif player is not in {}, unavailable;".format(this_room))
    if w in add_vcal and add_vcal[w]:
        print("\tif sco-{} is false:".format(w))
        print("\t\tvcal \"You still need to do something!\";")
        print("\t\tnot-yet;")
    print("\tif sco-{} is true:".format(w))
    print("\t\tvcal \"You already did this!\";")
    print("\t\talready-done;")
    print("\tready;")
    print()
    print("this is the vr-{} rule:".format(w))
    print("\tnow sco-{} is true;".format(w))
    print("\tsay \"Hooray! You figured what to do! You get a point!\";")
    print()

def print_verbcheck_line(my_word_pair):
    word_pair_array = my_word_pair.split('-')
    default_verb_check = [ '""', '""', '--', '--', 'false', 'true', 'true' if add_core[my_word_pair] else 'false', 'false', this_room, 'vc rule', 'vr rule', '--', '--' ]
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
this_room = "THISROOM"
this_vcal = True
this_vcp = True
this_core = True

add_vcal = defaultdict(bool)
add_vcp = defaultdict(bool)
add_core = defaultdict(bool)

while cmd_count < len(sys.argv):
    argr = sys.argv[cmd_count]
    arg = argr.lower()
    arg2 = sys.argv[cmd_count+1].lower() if cmd_count + 1 < len(sys.argv) else ''
    if '=' in arg and not arg.startswith("r="):
        this_vcal = False
        arg = arg.replace('=', '')
    if '`' in arg:
        this_vcp = False
        arg = arg.replace('`', '')
    if '0' in arg:
        this_core = False
        arg = arg.replace('0', '')
    if arg.startswith("r="):
        this_room = argr[2:].replace('.', ' ').replace('-', ' ')
        print("New room", this_room)
    elif arg == '/':
        pass
    elif arg == 'f':
        direct_to_file = True
        open_file_after = True
    elif arg in ( 'nf', 'fn' ):
        direct_to_file = True
        continue
    elif re.search("^[a-z]+$", arg) and re.search("^[a-z]+$", arg2):
        my_words = "{}-{}".format(arg, arg2)
        words_to_proc.append(my_words)
        add_vcal[my_words] = this_vcal
        add_vcp[my_words] = this_vcp
        add_core[my_words] = this_core
        this_vcal = this_vcp = this_core = True
        cmd_count += 2
        continue
    elif not valid_word_clump(arg):
        usage(arg)
    elif arg == '':
        usage()
    else:
        arg = re.sub("[^a-z]", "-", arg)
        words_to_proc.append(arg)
        add_vcal[arg] = this_vcal
        add_vcp[arg] = this_vcp
        add_core[arg] = this_core
        this_vcal = this_vcp = this_core = True
    cmd_count += 1

if not len(words_to_proc):
    sys.exit("No word pairs were found to process. Bailing.")

if direct_to_file:
    old_stdout = sys.stdout
    sys.stdout = open(out_file, "w")

for w in words_to_proc:
    print_verbcheck_line(w)
print()

for w in words_to_proc:
    add_basic_rules(w)

print("===============for main story.ni file===============")
print()

for w in words_to_proc:
    print("sco-{} is a truth state that varies.".format(w))

if direct_to_file:
    sys.stdout.close()

if open_file_after:
    sys.stdout = old_stdout
    mt.npo(out_file)