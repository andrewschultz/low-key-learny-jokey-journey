# notyet.py: verifies THINK hint columns based on if NOT-YET is in the rules

import os
import re
from collections import defaultdict
import i7

not_yet_equivalents = [ 'animals-need-shoals rule', 'shoe-crowd-yet rule' ]

def has_equivalent_notyet(my_line):
    for n in not_yet_equivalents:
        if n in my_line:
            return True
    return False

def verify_think_hints(my_proj, check_rule_row = 8, hint_text_row = 10):
    in_check_table = defaultdict(int)
    in_rules = defaultdict(int)
    my_file = i7.hdr(my_proj, 'ta')
    this_rule = ''
    in_verb_checks = False
    print("Matching tables for", os.path.basename(my_file))
    with open(my_file) as file:
        for (line_count, line) in enumerate (file, 1):
            if not line.strip():
                this_rule = ''
                in_verb_checks = False
                continue
            if 'section' in line and 'auxiliary' in line:
                break
            if line.startswith('table of verb checks'):
                in_verb_checks = True
                continue
            if in_verb_checks:
                ary = line.strip().split("\t")
                try:
                    if ary[hint_text_row].startswith('--') or ary[check_rule_row] == 'check-rule' or ary[hint_text_row].startswith('text'):
                        continue
                    in_check_table[ary[check_rule_row]] = line_count
                except:
                    pass
            if 'this is the' in line and '\t' not in line:
                this_rule = re.sub(" rule.? *:.*", " rule", line.strip())
                this_rule = re.sub(".*this is the ", "", this_rule)
            if this_rule:
                if 'not-yet' in line or has_equivalent_notyet(line):
                    in_rules[this_rule] = line_count
    these_rules = set(in_check_table) | set(in_rules)
    count = 0
    for x in sorted(in_check_table, key=in_check_table.get):
        if x not in in_rules:
            count += 1
            print(count, x, "has hint but no not-yet in rule", in_check_table[x])
    any_changes = count > 0
    count = 0
    for x in sorted(in_rules, key=in_rules.get):
        if x not in in_check_table:
            count += 1
            print(count, x, "has not-yet in rule but no hint", in_rules[x])
    any_changes |= count > 0
    if not any_changes:
        print("Everything matches!")

verify_think_hints("lljj", 9, 12)
# note: this doesn't have a clue-text row yet
verify_think_hints("qqnn", 5, 8)
verify_think_hints("vvff", 10, 13)
