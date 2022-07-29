Version 1/220715 of Low Key Learny Jokey Journey Tests by Andrew Schultz begins here.

"This should briefly describe the purpose of Low Key Learny Jokey Journey Tests."

volume IDE tests

test ocome with "jane g/boring box/open box/n/guide gong/s/e/pride prong/s/e".

test w1 with "plain plea/jane g/boring box/open box/n/grow grudge"

test w2 with "test w1/n/done dorm/fun form/n/see sunk/gee junk/whee woot/pear peach/s/s"

test w3 with "e/bussed back/crust crack/n/bare beach/seep soon/s/n/reap rune/s/w"

test w4 with "w/unarm/n/go goon/cocoon/mo moon/so soon/crow croon"

test w5 with "potty pail/grotty grail/knotty nail"

test w6 with "grokking grift/flow flue/glow glue/go goo/bro brew/stow stew/crow crew/ho who/yo you/throw through"

test w7 with "rocking rift/shocking shift/stocking stiffed/docking diffed/mocking miffed"

test wa with "test w1/test w2/test w3/test w4/test w5/test w6/test w7"

volume diagnostics

definition: a room (called rm) is unrhymable:
	if rm is in Get a Guess, yes;
	if rm is One Warm Stun Storm, yes;
	no;

when play begins:
	let needs be 0;
	say "[b]Checking rhymable rooms ...[r]";
	repeat with myrm running through rooms:
		if myrm is unrhymable, next;
		if guess-table of myrm is table of no good guesses:
			say "[myrm] needs a good-guess table.";
			increment needs;
	if needs is 0, say "YAY! All rooms are taken care of!";
	now needs is 0;
	say "[b]On to rhymable things or people ...[r]";
	repeat with myth running through rhymables:
		if guess-table of myth is table of no good guesses:
			say "[myth] needs a good-guess table.";
			increment needs;
	if needs is 0, say "YAY! All rhymables are taken care of!";

Low Key Learny Jokey Journey Tests ends here.

---- DOCUMENTATION ----
