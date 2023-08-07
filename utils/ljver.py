#
# ljver.py: verifies LLJJ code is not the default

import i7
import os
import sys
import re
import mytools as mt
import colorama

error_strings = { 'You still need to do something!': 'You need to zap the generic vc- not-yet text at line {} of {}.',
'You already did this!': 'You need to zap the generic vc- already-done text at line {} of {}.',
'Hooray! You figured what to do! You get a point!': 'You need to zap the generic vr- text at line {} of {}.'
}

mistake_strings = { 'CLEVER REJECT TEXT': 'You need a clever reject for a good guess at line {} of {}.',
  'guess-table of': 'You need to move guess-table definitions at line {} of {} to story.ni.'
}

special_outcomes = [ 'unavailable', 'not-yet', 'already-done', 'jump-reject', 'semi-pass', 'ready' ]

def verify_header(the_file, the_strings, show_success = True):
    bn = os.path.basename(the_file)
    got_warning = False
    if not os.path.exists(the_file):
        sys.stderr.write("Skipping test for nonexistent file {}.\n".format(the_file))
        return
    with open(the_file) as file:
        for (line_count, line) in enumerate (file, 1):
            for bad_str in the_strings:
                if bad_str in line:
                    if not got_warning:
                        mt.ew("    GENERIC CODE TO BE REPLACED", colorama.Fore.CYAN)
                    got_warning = True
                    mt.ew(the_strings[bad_str].format(line_count, bn), colorama.Fore.YELLOW)
                    mt.add_postopen(the_file, line_count)
    if show_success and not got_warning:
        sys.stderr.write(colorama.Fore.GREEN + "All code for {} is changed from the default.".format(bn) + mt.WTXT + "\n")

def has_special_outcomes(my_line_list):
    for x in special_outcomes:
        if x in my_line_list or x + ';' in my_line_list:
            return True
    return False

def verify_right_printing(my_line_list, my_file, starting_line = 0):
    if not has_special_outcomes(my_line_list):
        return
    current_line = starting_line
    next_needed = ''
    skip_next = False
    for y in my_line_list:
        current_line += 1
        if 'say "' in y:
            if 'vc-dont-print is false' in y:
                skip_next = True
            else:
                mt.fail(current_line, "SAY text in {}.".format(y))
                mt.add_postopen(my_file, current_line, priority=11)
        if 'vcal' in y:
            if next_needed:
                mt.warn(current_line, "VCAL contradiction", y, next_needed)
            next_needed = 'already-done'
        if 'vcp' in y:
            if next_needed:
                mt.warn(current_line, "VCP contradiction", y, "next needed=", next_needed)
            next_needed = 'not-yet'
        if 'not-yet' in y:
            if skip_next:
                skip_next = False
                continue
            if next_needed != 'not-yet':
                mt.warn(current_line, "not-yet contradiction", y, "next needed=", next_needed)
                mt.add_postopen(my_file, current_line)
            next_needed = ''
        if 'already-done' in y:
            if skip_next:
                skip_next = False
                continue
            if next_needed != 'already-done':
                mt.warn(current_line, "already-done contradiction", y, "next needed=", next_needed)
            next_needed = ''
    mt.open_post()

def verify_right_text(my_file):
    rule_name = '<no rule>'
    in_any_rule = in_vc_rule = False
    line_list = []
    starting_line = 0
    with open(my_file) as file:
        for (line_count, line) in enumerate (file, 1):
            if not line.strip():
                if in_any_rule:
                    verify_right_printing(line_list, my_file, starting_line)
                line_list = []
                in_vc_rule = in_any_rule = False
            if 'rule' in line and '\t' not in line:
                rule_name = re.sub(".*this is", "this is", line.strip())
                rule_name = re.sub("\).*", "", rule_name)
                in_any_rule = True
                if 'this is the vc-' in line:
                    in_vc_rule = True
                starting_line = line_count
                continue
            if in_any_rule:
                line_list.append(line.strip())
            if in_vc_rule and '\tsay' in line:
                mt.add_postopen(my_file, line_count, priority=11)
                mt.fail("Errant SAY in rule {}.".format(rule_name))
    mt.open_post()

def verify_both():
    this_proj = i7.dir2proj()
    verify_header(i7.hdr(this_proj, "ta"), error_strings)
    verify_header(i7.hdr(this_proj, "mi"), mistake_strings)
    verify_right_text(i7.hdr(this_proj, "ta"))
    mt.post_open()
    mt.ew("No stray text from previous TGG/MRC runs in {}.\n".format(this_proj), colorama.Fore.GREEN)

if os.path.basename(__file__) in sys.argv[0]:
    verify_both()
