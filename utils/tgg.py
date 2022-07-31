#
# tgg.py: table of (good) guess generator script
#

import sys
import re

rows = 0
cmd_count = 1
my_room_or_thing = "unnamed room"

base_string_array = []
out_string_array = []

rule_creation_list = []

this_leet_rule = '--'
this_general_rule = '--'
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

def print_rules_of(my_list):
    for r in my_list:
        print()
        print("this is the {}:".format(r))
        print("\tif CONDITION, the rule succeeds;")
        print("\tthe rule fails;")

def strip_equals(my_string, add_rule = True):
    temp = re.sub("^.*?=", "", my_string)
    if not temp:
        return '--'
    if add_rule:
        temp += ' rule'
    return temp

def to_topic(my_string):
    temp = my_string.replace('-', ' ')
    temp = temp.replace(';', '" or "')
    return temp

while cmd_count < len(sys.argv):
    arg = sys.argv[cmd_count]
    if arg == 'a':
        alphabetize = True
    elif arg in ( 'na', 'an' ):
        alphabetize = False
    elif arg.startswith("t="):
        my_room_or_thing = arg[2:].replace('-', ' ')
        if cmd_count != 1:
            sys.exit("Room/thing specification must be at the start!")
    elif arg.startswith("r="):
        this_general_rule = strip_equals(arg)
        if this_general_rule in rule_creation_list:
            print("Duplicate general rule", this_general_rule, "but this may not matter as leet/mistake rules can cross")
        else:
            rule_creation_list.append(this_general_rule)
    elif arg.startswith("l="):
        this_leet_rule = strip_equals(arg)
        if this_leet_rule in rule_creation_list:
            print("Duplicate leet rule", this_leet_rule, "but this may not matter as leet/mistake rules can cross")
        else:
            rule_creation_list.append(this_leet_rule)
    elif arg.isdigit() or arg == '--':
        magic_number = strip_equals(arg, add_rule = False)
    elif '-' not in arg or '=' in arg:
        usage()
    else:
        ttarg = to_topic(arg)
        if ttarg in base_string_array:
            print("WARNING duplicate string specified:", ttarg)
        else:
            base_string_array.append(ttarg)
            out_string_array.append('"{}"\t{}\tfalse\t{}\t{}\t"<CLEVER REJECT TEXT>"'.format(ttarg, this_general_rule, magic_number, this_leet_rule))
    cmd_count += 1

if not len(base_string_array):
    sys.exit("No word pairs were found to process. Bailing. Remember, MRC is for make-rhyme-code, TGG for good guesses.")

if alphabetize:
    out_string_array = sorted(out_string_array)
    rule_creation_list = sorted(rule_creation_list)

output_string = 'guess-table of {} is the table of {} guesses.\n\n'.format(my_room_or_thing, my_room_or_thing) + 'table of {} guesses\n'.format(my_room_or_thing) + 'mist-cmd(topic)\tmist-rule\tgot-yet\tmagicnum\tleet-rule\tmist-txt'

print(output_string)
for o in out_string_array:
    print(o)

print_rules_of(rule_creation_list)
