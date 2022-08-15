#
# hubway.py: generates part of a REG file for each possible path through LLJJ
# where paths are defined as valid orderings of the 5 ways through
#
# 1 = shore shoals
# 2 = show shoe
# 3 = rum route
# 4 = slight sleaze
# 5 = mad most cad coast
#

from itertools import permutations

my_list = [ 1, 2, 3, 4, 5 ]

count = 0

incl = "{include}"

for x in permutations(my_list):
    if x.index(4) < x.index(2):
        continue
    if x.index(5) < x.index(2):
        continue
    if x.index(3) < x.index(1):
        continue
    if x.index(4) < x.index(1):
        continue
    count += 1
    print("* walkthrough_{}".format(count))
    print()
    print(">{} _pre_hub".format(incl))
    for y in x:
        print(">{} _hub_area_{}".format(incl, y))
    print(">{} _post_hub".format(incl))
    print()

