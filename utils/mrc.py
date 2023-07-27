#
# mrc.py: make rhyme code for CSDD-ish games as well as IHHA
#
# it prints a table of verbchecker line, prints the vc- and vr- rules, and guesses at the boolean variable.
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

# options

add_duplicates = False
verify_code = True

# variables

rule_type = 'goodrhyme'
check_prefix = 'vc'
run_prefix = 'vr'

try:
    temp = i7.i7comr[i7.dir2proj()]
    if temp == 'i-heart-high-art':
        rule_type = 'spoonerism'
        check_prefix = 'pre'
        run_prefix = 'post'
except:
    pass

def show_examples():
    print("Scrub the VCAL for rad-roast and VCP for bad-boast in LLJJ:")
    mt.okay("    mrc.py r=mad-most-cad-coast `bad-boast =rad-roast{}")
    print("Opening bonus point for LLJJ:")
    mt.okay("    mrc.py r=bane-be-sane-see 0plain-plea =`jane-g =`wayne-whee =`dane-d")
    print("LLJ establishing the Bare Beach and Reap Rune points:")
    mt.okay("    mrc.py r=rare-reach bare-beach reap-rune")
    print("LLJJ establishing the Bare Beach and Reap Rune points and add the code to the global file:")
    mt.okay("    mrc.py 2gl r=rare-reach bare-beach reap-rune")
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
        if my_lines[x].startswith("sco-"):
            next_populated_line = True
            got_here = True
            if my_lines[x].strip() in these_vars:
                mt.ew("WARNING line {} duplicated: line {}.".format(my_lines[x].strip(), x), colorama.Fore.YELLOW)
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
        mt.ew("WARNING: NO SCO- FOUND, SO GOING WITH END OF FILE.", colorama.Fore.YELLOW)
        return
    if insert_line == -1:
        mt.ew("There was no line starting with sco- and no ends here line, so you have a malformed header file.", colorama.Fore.RED)
    if len(these_vars):
        full_string = "\n".join([x for x in these_vars if x.strip()]) + "\n\n"
    else:
        mt.ew("Every candidate for adding was a duplicate. Therefore, we will not modify the file {}.".format(fb), colorama.Fore.RED)
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
    print("a {} rule (this is the {}-{} rule):".format(rule_type, check_prefix, w))
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
    print("this is the {}-{} rule:".format(run_prefix, w))
    print("\tnow sco-{} is true;".format(w))
    print("\tsay \"Hooray! You figured what to do! You get a point!\";")
    print()

def print_verbcheck_line(my_word_pair):
    word_dashed = my_word_pair.replace('|', '-')
    word_pair_array = my_word_pair.split('-')
    default_verb_check = [ '""', '""', '--', '--', 'false', 'true', 'true' if add_core[my_word_pair] else 'false', 'false', this_room, 'vc rule', 'vr rule', '--', '--' ]
    default_verb_check[0] = '"{}"'.format(word_pair_array[0])
    default_verb_check[1] = '"{}"'.format(word_pair_array[1])
    default_verb_check[9] = '{}-{} rule'.format(check_prefix, word_dashed)
    default_verb_check[10] = '{}-{} rule'.format(run_prefix, word_dashed)
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
        add_core[my_words] = this_core
        this_vcal = this_vcp = this_core = True
        cmd_count += 2
        continue
    elif arg == '2gl':
        add_to_global = True
    elif arg in ( 'g', 'x'):
        check_prefix = 'pre'
        run_prefix = 'post'
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
        add_core[arg] = this_core
        this_vcal = this_vcp = this_core = True
    cmd_count += 1

if not len(words_to_proc):
    sys.stderr.write("No word pairs were found to process. Verifying code. Remember, MRC is for make-rhyme-code, TGG for good guesses.\n")
    verify_code = True

if direct_to_file:
    old_stdout = sys.stdout
    sys.stdout = open(out_file, "w")

words_to_proc = [ x.replace("/", "|") for x in words_to_proc ]

for w in words_to_proc:
    print_verbcheck_line(w)

if len(words_to_proc):
    print()

for w in words_to_proc:
    add_basic_rules(w.replace('|', '-'))

if len(words_to_proc):
    global_stuff = [ "sco-{} is a truth state that varies.".format(w.replace('|', '-')) for w in words_to_proc ]
    if add_to_global:
        my_file = i7.hdr(this_proj, 'glo')
        add_var_defs(my_file, global_stuff, add_duplicates)
    else:
        print("===============definitions for global file / main story.ni file (2gl puts it in the global file)===============")
        print()
        for g in global_stuff:
            print(g)

if direct_to_file:
    sys.stdout.close()

if open_file_after:
    sys.stdout = old_stdout
    mt.npo(out_file)

if verify_code:
    ljver.verify_both()
else:
    print("Remember ljver.py verifies the code if you wish to check after adding the above code in.")