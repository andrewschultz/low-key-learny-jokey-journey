#
# tgg.py: table of (good) guess generator script
#

import sys
import re
from collections import defaultdict

cmd_count = 1
my_room_or_thing = "unnamed room"

string_array = []

rule_creation_dict = defaultdict(bool)

leet_rule = '--'
general_rule = '--'
default_leet_rule = '--'
magic_number = '--'

alphabetize = True

def usage():
    print("All arguments need dashes. They are converted to spaces. Put a dash at the end if there is a one-word mistake.")
    print("a/an/na = alphabetize table entries (or not) with default ON")
    print("t=room or thing that needs guesses")
    print("l=leet rule, for if you may set off the leet learner")
    print("r=rule for if the special text should apply")
    print()
    print("Sample usage: tgg.py t=tttt me-monk be-bunk de-dunk fee/phi-funk l=free-fruit-found")
    sys.exit()

def strip_equals(my_string):
    return re.sub("^.*?=", "", my_string)

def to_topic(my_string):
    temp = my_string.replace('-', ' ')
    temp = temp.replace(';', '" or "')
    return temp

while cmd_count < len(sys.argv):
    arg = sys.argv[cmd_count]
    if arg.startswith("t="):
        my_room_or_thing = arg[2:].replace('-', ' ')
    elif arg.startswith("l=") or arg.startswith("l="):
        leet_rule = strip_equals(arg) + " rule"
        rule_creation_dict[leet_rule] = True
    elif arg.startswith("r="):
        general_rule = strip_equals(arg) + " rule"
        rule_creation_dict[general_rule] = True
    elif arg.isdigit():
        magic_number = arg
    elif '-' not in arg or '=' in arg:
        usage()
    else:
        ttarg = to_topic(arg)
        if ttarg in string_array:
            print("WARNING duplicate string specified:", ttarg)
        else:
            string_array.append(to_topic(arg))
    cmd_count += 1

if not len(string_array):
    sys.exit("You didn't specify any strings!")

if alphabetize:
    string_array = sorted(string_array)

print("guess-table of {} is the table of {} guesses.".format(my_room_or_thing, my_room_or_thing))
print()
print("table of {} guesses".format(my_room_or_thing))
print("mist-cmd(topic)\tmist-rule\tgot-yet\tmagicnum\tleet-rule\tmist-txt")

for s in string_array:
    print('"{}"\t{}\tfalse\t{}\t{}\t"<REJECT TEXT>"'.format(s, general_rule, magic_number, leet_rule))

for r in rule_creation_dict:
    print()
    print("this is the {} rule:".format(r))
    print("\tif CONDITION, the rule succeeds;")
    print("\tthe rule fails;")
