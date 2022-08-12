#
# ljver.py: verifies LLJJ code is not the default

import i7
import os
import sys
import mytools as mt

def verify_header(the_file, the_strings, the_err_msg):
    bn = os.path.basename(the_file)
    with open(the_file) as file:
        for (line_count, line) in enumerate (file, 1):
            for bad_str in the_strings:
                if bad_str in line:
                    sys.stderr.write(the_err_msg.format(line_count, bn) + "\n")
                    mt.add_postopen(the_file, line_count)

def verify_both():
    verify_header(i7.hdr(i7.dir2proj(), "ta"), [ 'You still need to do something!', 'You already did this!', 'You get a point!' ], 'You need to zap the generic vc-/vr- text at line {} of {}.' )
    verify_header(i7.hdr(i7.dir2proj(), "mi"), [ 'CLEVER REJECT TEXT' ], 'You need a clever reject for a good guess at line {} of {}.' )
    mt.post_open()
    sys.stderr.write("No stray text from previous TGG/MRC runs.\n")


if os.path.basename(__file__) in sys.argv[0]:
    verify_both()
