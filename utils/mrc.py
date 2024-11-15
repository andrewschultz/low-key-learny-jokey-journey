#
# mrc.py: make rhyme code for CSDD-ish games as well as IHHA
#
# it prints a table of verbchecker line, prints the vc- and vr- (or pre- and post-) rules, and guesses at the boolean variable.
#
# rough format:
# "word 1"	"word 2"	--	--	false	true	true	false	(Room where action happens)	checking rule	running rule	specific topic, if needed e.g. "a/b" "c/d" can only be a c or b d 	THINK text (probably blank)

import sys
import os
import re
from collections import defaultdict
import mytools as mt
import ljver
import i7
import colorama
from shutil import copy

# constants

out_file = "mrc.txt"
cfg_file = "c:/writing/scripts/mrc-cfg.txt"

# classes

class CodeCreator:

    def __init__(self, data_list = [], copy_from = ''):
        if copy_from:
            self.format_string = creators[copy_from].format_string
            self.rule_string = creators[copy_from].rule_string
            self.pre_string = creators[copy_from].pre_string
            self.post_string = creators[copy_from].post_string
        else:
            self.format_string = '\t'.join(data_list[3:])
            self.rule_string = data_list[0]
            self.pre_string = data_list[1]
            self.post_string = data_list[2]

    def prerule(self, first_words):
        return '{}-{}-{} rule'.format(self.pre_string, first_words[0], first_words[1])

    def postrule(self, first_words):
        return '{}-{}-{} rule'.format(self.pre_string, first_words[0], first_words[1])

# variables

creators = defaultdict(lambda: defaultdict(CodeCreator))

# options

add_duplicates = False
verify_code = True
boolean_roll_up = False

# variables

with open(cfg_file) as file:
    for (line_count, line) in enumerate (file, 1):
        if line.startswith(';'):
            break
        if line.startswith('#'):
            continue
        ls = line.strip()
        if '~' in line:
            ary = ls.split('~')
            creators[ary[0]] = CodeCreator(copy_from = ary[1])
            if len(ary) > 2:
                mt.warn("Line {} {} needs only one tilde.".format(line_count, ls))
            continue
        ary = ls.split(',')
        if len(ary) == 1:
            mt.warn("CFG file needs commas in it.")
        creators[ary[0]] = CodeCreator(data_list = ary[1:])

try:
    my_proj = i7.i7comr[i7.dir2proj()]
except:
    print("Can't derive project from current directory. Going with default.")
    my_proj = 'default'

if my_proj not in creators:
    mt.warn("Current umbrella project {} not in {}. Going with default.")
    my_proj = 'default'

rule_type = creators[my_proj].rule_string
check_prefix = creators[my_proj].pre_string
run_prefix = creators[my_proj].post_string

table_rules = defaultdict(bool)

def show_examples():
    print("Scrub the VCAL for rad-roast and VCP for bad-boast in LLJJ:")
    mt.okay("    mrc.py r=mad-most-cad-coast `bad-boast =rad-roast{}")
    print("Opening bonus point for LLJJ:")
    mt.okay("    mrc.py r=bane-be-sane-see 0plain-plea =`jane-g =`wayne-whee =`dane-d")
    print("LLJ establishing the Bare Beach and Reap Rune points:")
    mt.okay("    mrc.py r=rare-reach bare-beach reap-rune")
    print("LLJJ establishing the Bare Beach and Reap Rune points and add the code to the global file:")
    mt.okay("    mrc.py 2gl r=rare-reach bare-beach reap-rune")
    print("RoL will detect new rules automatically.")
    mt.okay("    mrc.py 2gl r=rare-reach bare-beach reap-rune")
    print("Also note that the MRC.BAT batch file can run things, and the SCO option provides code for a boolean roll-up score.")
    sys.exit()

def usage(my_word = ""):
    if my_word:
        if my_word.count('-') > 1:
            print("WARNING: {} had too many dashes. Use a slash for topics.".format(my_word))
        else:
            print("WARNING: {} was not a valid word. You need something of the form letters-letters.".format(my_word))
    print("Prime Pro-Rhyme Row/I Heart High Art code generation options:")
    print("f / nf / fn specify exporting to a file. NF/FN means don't open post-run.")
    print("2gl exports global code specifically to the globals file.")
    print()
    print("Parameters:")
    print("r= specifies the room name, which is THISROOM by default.")
    print("The order matters, but you can also switch room names in the middle, though that may be too much to juggle.")
    print("appending | clip sends stuff to the clipboard.")
    print("= at the start disabled vcal (already-done check) and ` disables vcp (not-ready) and 0 means a not-core point.")
    print("The default is to allow all rules.")
    print("?? shows examples")
    print("Note that this automatically detects if you are in an IHHA or PPRR directory and adjusts the code accordingly.")
    sys.exit()

def add_var_defs(this_file, these_vars, add_duplicates = False):
    lines_to_write = []
    got_here = False
    next_populated_line = False
    f = open(this_file, 'r')
    fb = os.path.basename(this_file)
    my_lines = f.readlines()
    insert_line = -1
    for x in range(0, len(my_lines)):
        if my_lines[x].startswith("sco-") or 'unsorted globals' in my_lines[x]:
            next_populated_line = True
            got_here = True
            if my_lines[x].strip() in these_vars:
                mt.warn("WARNING line {} duplicated: line {}.".format(my_lines[x].strip(), x))
                if not add_duplicates:
                    these_vars.remove(my_lines[x].strip())
                    continue
        elif insert_line == -1 and my_lines[x].lower().strip().endswith('ends here.'):
            insert_line = x
            next_populated_line = False
        elif next_populated_line and my_lines[x].strip():
            insert_line = x
            next_populated_line = False
    if not got_here:
        mt.errwrite("WARNING: NO SCO- VARIABLE OR UNSORTED GLOBALS SECTION, SO I'M NOT WRITING ANYTHING IN.")
        return
    if insert_line == -1:
        mt.fail("There was no line starting with sco- and no ends here line, so you have a malformed header file.", colorama.Fore.RED)
    else:
        mt.add_post(this_file, insert_line + 1)
    if len(these_vars):
        full_string = "\n".join([x for x in these_vars if x.strip()]) + "\n\n"
    else:
        mt.fail("Every candidate for adding was a duplicate. Therefore, we will not modify the file {}.".format(fb))
        return
    my_lines.insert(insert_line, full_string)
    temp = 'c:/writing/temp/mrc-temp-file.txt'
    f = open(temp, 'w')
    for m in my_lines:
        f.write(m)
    f.close()
    copy(temp, this_file)

def valid_word_clump(arg):
    return re.search("^[a-z/]+[/. -][a-z/]+$", arg)

def add_basic_rules(w):
    global table_rules
    pre_rule_to_print = "a {} rule (this is the {}-{} rule):".format(rule_type, check_prefix, w)
    if pre_rule_to_print in table_rules:
        mt.errwrite("Skipping {}, already in table file".format(pre_rule_to_print), mt.WARN)
    else:
        mt.errwrite("Going with {}".format(pre_rule_to_print), mt.WARN)
        print(pre_rule_to_print)
        print("\tif player is not in {}, unavailable;".format(this_room))
        if w in add_vcal and add_vcal[w]:
            print("\tif sco-{} is false:".format(w))
            print("\t\tvcp \"You still need to do something!\";")
            print("\t\tnot-yet;")
        print("\tif sco-{} is true:".format(w))
        print("\t\tvcal \"You already did this!\";")
        print("\t\talready-done;")
        print("\tready;")
        print()
    post_rule_to_print = "this is the {}-{} rule:".format(run_prefix, w)
    if post_rule_to_print in table_rules:
        mt.errwrite("Skipping {}, already in table file".format(post_rule_to_print), mt.WARN)
    else:
        mt.errwrite("Going with {}".format(post_rule_to_print), mt.WARN)
        print(post_rule_to_print)
        print("\tnow sco-{} is true;".format(w))
        print("\tsay \"Hooray! You figured what to do! You get a point!\";")
        print()

def get_table_rules():
    global table_rules
    f = i7.hdr(this_proj, 'ta')
    with open(f) as file:
        for (line_count, line) in enumerate(file, 1):
            if line.startswith('\n'):
                continue
            if not 'this is the' in line:
                continue
            table_rules[line.strip().lower()] = True

def print_verbcheck_line(my_word_pair):
    full_array = my_word_pair.split('-')
    word_dashed = my_word_pair.replace('|', '-')
    first_words = [ re.sub("\|.*", "", x) for x in full_array ]
    line_to_print = creators[my_proj].format_string
    line_to_print = line_to_print.replace('WORD1', full_array[0])
    line_to_print = line_to_print.replace('WORD2', full_array[1])
    line_to_print = line_to_print.replace('ROOM', this_room)
    line_to_print = line_to_print.replace('PRERULE', creators[my_proj].prerule(first_words))
    line_to_print = line_to_print.replace('POSTRULE', creators[my_proj].postrule(first_words))
    line_to_print = line_to_print.replace('POSTRULE', '{}-{}-{} rule'.format(creators[my_proj].post_string, first_words[0], first_words[1]))
    line_to_print = line_to_print.replace('ADDCORE', 'true' if add_core[my_word_pair] else 'false')
    print(line_to_print)

cmd_count = 1
words_to_proc = []
direct_to_file = False
open_file_after = False
this_room = "THISROOM"
this_vcal = True
this_vcp = True
this_core = True
not_yet_text = True
add_to_global = False

add_vcal = defaultdict(bool)
add_vcp = defaultdict(bool)
add_core = defaultdict(bool)

this_proj = i7.dir2proj()

while cmd_count < len(sys.argv):
    argr = sys.argv[cmd_count]
    arg = argr.lower()
    arg2 = sys.argv[cmd_count+1].lower() if cmd_count + 1 < len(sys.argv) else ''
    if '=' in arg and not arg.startswith("r=") and not arg.startswith('n='):
        this_vcal = False
        arg = arg.replace('=', '')
    if '`' in arg:
        this_vcp = False
        arg = arg.replace('`', '')
    if '0' in arg:
        this_core = False
        arg = arg.replace('0', '')
    if arg == 'nny':
        not_yet_text = False
    elif arg.startswith("n="):
        print("to decide what number is {}:".format(arg[2:]))
        decide_on = ' + '.join([ '(boolval of sco-{})'.format(x) for x in words_to_proc ])
        print("\tdecide on " + decide_on)
    elif arg.startswith("r="):
        this_room = argr[2:].replace('.', ' ').replace('-', ' ')
    elif arg == '/':
        pass
    elif arg in ( 'ad', 'da' ):
        add_duplicates = True
    elif arg == 'f':
        direct_to_file = True
        open_file_after = True
    elif arg in ( 'nf', 'fn' ):
        direct_to_file = True
        continue
    elif re.search("^[a-z/]+$", arg) and re.search("^[a-z/]+$", arg2):
        my_words = "{}-{}".format(arg, arg2)
        words_to_proc.append(my_words)
        if not_yet_text:
            add_vcal[my_words] = this_vcal
        add_vcp[my_words] = this_vcp
        add_core[my_words.replace('/', '|')] = this_core
        this_vcal = this_vcp = this_core = True
        cmd_count += 2
        continue
    elif arg in ( '2gl', '2go' ):
        add_to_global = True
    elif arg.startswith('2g'):
        mt.warn("2GL or 2GO sends stuff to the global file.")
    elif arg in ( 'g', 'x' ):
        check_prefix = 'pre'
        run_prefix = 'post'
    elif arg == 'sco':
        boolean_roll_up = True
    elif arg == 'v':
        verify_code = True
    elif arg in ( 'nv', 'vn' ):
        verify_code = False
    elif arg == '?':
        usage()
    elif arg == '??':
        show_examples()
    elif not valid_word_clump(arg):
        usage(arg)
    else:
        arg = re.sub("[^a-z/]", "-", arg)
        words_to_proc.append(arg)
        if not_yet_text:
            add_vcal[arg] = this_vcal
        add_vcp[arg] = this_vcp
        add_core[arg.replace('/', '|')] = this_core
        this_vcal = this_vcp = this_core = True
    cmd_count += 1

if not len(words_to_proc):
    sys.stderr.write("No word pairs were found to process. Verifying code. Remember, MRC is for make-rhyme-code, TGG for good guesses.\n")
    verify_code = True

if direct_to_file:
    old_stdout = sys.stdout
    sys.stdout = open(out_file, "w")
    mt.okay("Writing to", os.path.abspath(out_file))

words_to_proc = [ x.replace("/", "|") for x in words_to_proc ]

if boolean_roll_up:
    short_name = re.sub(".* ", "", this_room)
    print("chapter {} score".format(short_name))
    print()
    print("to decide what number is {}-score:".format(short_name))
    joined_bools = " + ".join(['(boolval of sco-{})'.format(x) for x in words_to_proc])
    print("\tdecide on {}".format(joined_bools))
    print()

for w in words_to_proc:
    print_verbcheck_line(w)

if len(words_to_proc):
    print()
    print("chapter {} scoring".format(this_room))
    print()

if not this_proj:
    print("Going with default project {}.".format(i7.curdef))
    this_proj = i7.curdef

get_table_rules()

words_short = [ re.sub("\|[a-z]+", "", w) for w in words_to_proc ]

for w in words_short:
    add_basic_rules(w.replace('|', '-'))

if len(words_to_proc):
    global_stuff = [ "sco-{} is a truth state that varies.".format(w.replace('|', '-')) for w in words_short ]
    if add_to_global:
        my_file = i7.hdr(this_proj, 'glo')
        add_var_defs(my_file, global_stuff, add_duplicates)
    else:
        print("===============definitions for global file / main story.ni file (2gl/2go puts it in the global file)===============")
        print()
        for g in global_stuff:
            print(g)

if direct_to_file:
    sys.stdout.close()

if open_file_after:
    sys.stdout = old_stdout
    mt.npo(out_file, bail=False)

mt.open_post(bail_after = False)

if verify_code:
    ljver.verify_all(this_proj)
else:
    print("Remember ljver.py verifies the code if you wish to check after adding the above code in.")