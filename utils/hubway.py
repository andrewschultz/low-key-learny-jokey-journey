#
# hubway.py: generates part of a REG file for each possible path through LLJJ
# where paths are defined as valid orderings of the 5 ways through
#
# 1 = shore shoals (gives red rose)
# 2 = show shoe (gives light loot)
# 3 = rum route
# 4 = slight sleaze
# 5 = mad most cad coast
#

from itertools import permutations

my_list = [ 1, 2, 3, 4, 5 ]

count = 0

incl = "{include}"

final_list = []

for x in permutations(my_list):
    if x.index(5) < x.index(2): #trite trail needs bright brute
        continue
    if x.index(5) < x.index(1): #trite trail needs thread throws
        continue
    if x.index(4) < x.index(2): #slight sleaze needs right root
        continue
    if x.index(3) < x.index(1): #rum route needs said sos
        continue
    if x.index(4) < x.index(1): #slight sleaze needs bred bros
        continue
    count += 1
    final_list.append(list(x))
    print("* walkthrough_{}".format(count))
    print()
    print(">{} _pre_hub".format(incl))
    for y in x:
        print(">{} _hub_area_{}".format(incl, y))
    print(">{} _post_hub".format(incl))
    print()

print(final_list)