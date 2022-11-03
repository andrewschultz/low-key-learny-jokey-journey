#
# ljver.py: verifies LLJJ code is not the default

import i7
import os
import sys
import mytools as mt
import colorama

error_strings = { 'You still need to do something!': 'You need to zap the generic vc- not-yet text at line {} of {}.',
'You already did this!': 'You need to zap the generic vc- already-done text at line {} of {}.',
'Hooray! You figured what to do! You get a point!': 'You need to zap the generic vr- text at line {} of {}.'
}

mistake_strings = { 'CLEVER REJECT TEXT': 'You need a clever reject for a good guess at line {} of {}.' }

def verify_header(the_file, the_strings):
    bn = os.path.basename(the_file)
    with open(the_file) as file:
        for (line_count, line) in enumerate (file, 1):
            for bad_str in the_strings:
                if bad_str in line:
                    sys.stderr.write(colorama.Fore.YELLOW + the_strings[bad_str].format(line_count, bn) + "\n" + mt.WTXT)
                    mt.add_postopen(the_file, line_count)

def verify_both():
    this_proj = i7.dir2proj()
    verify_header(i7.hdr(this_proj, "ta"), error_strings)
    verify_header(i7.hdr(this_proj, "mi"), mistake_strings)
    mt.post_open()
    sys.stderr.write(colorama.Fore.GREEN + "No stray text from previous TGG/MRC runs in {}.\n".format(this_proj) + mt.WTXT)


if os.path.basename(__file__) in sys.argv[0]:
    verify_both()
