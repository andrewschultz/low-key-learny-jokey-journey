Version 1/220715 of Low Key Learny Jokey Journey Tests by Andrew Schultz begins here.

"This should briefly describe the purpose of Low Key Learny Jokey Journey Tests."

volume IDE tests

test ocome with "jane g/boring box/open box/n/guide gong/s/e/pride prong/s/e".

test w1 with "plain plea/jane g/boring box/open box/n/grow grudge/bother/piss poor".

test w2 with "n/done dorm/fun form/n/see sunk/gee junk/whee woot/pear peach/s/s".

test w3 with "e/bussed back/crust crack/n/bare beach/seep soon/s/n/reap rune/s/w".

test w4 with "w/unarm/gad gunk/bad bunk/sad sunk/n/go goon/cocoon/mo moon/so soon/crow croon".

test w5 with "potty pail/grotty grail/knotty nail".

test w6 with "bye bub/wordy walk/u/rocking rift/flow flue/glow glue/go goo/bro brew/stow stew/crow crew/ho who/yo you/throw through".

test w7 with "shocking shift/shore shoals/night newt/bright brute/kite coot/lore lols/four foals/more moles".

test w8 with "docking diffed/bad boast/rad roast/w/flight flail/might mail/sight sail/right rail/bright brute/excite exhale".

test w9 with "shocking shift/enter lift"

test w10 with "grokking grift/tight tees/bright breeze/plight please/right root/s/clique claiming/bleak blaming/chic shaming/bred bros/n/enter lift".

test w11 with "stocking stiffed/dumb doubt/said sos/umm out/d/hey hope/k cope/u/enter lift".

test w12 with "mocking miffed/bold bend/trolled trend/mold mend/s".

test w13 with "bane bat/flain flat/splain splat/s".

test w14 with "x marquee/fret free/yet ye/set see/plus plaque/trite telly"

test wa with "test w1/test w2/test w3/test w4/test w5/test w6/test w7/test w8/test w9/test w10/test w11/test w12/test w13/test w14".

volume beginning diagnostics

definition: a room (called rm) is unrhymable:
	if rm is in Get a Guess, yes;
	if rm is One Warm Stun Storm or rm is Hun Harm Fun Farm, yes;
	no;

when play begins:
	let needs be 0;
	say "[b]Checking rhymable rooms ...[r]";
	repeat with myrm running through rooms:
		if myrm is unrhymable, next;
		if guess-table of myrm is table of no good guesses:
			say "[myrm] needs a good-guess table. tgg.py r=[myrm].";
			increment needs;
	if needs is 0, say "YAY! All rooms are taken care of!";
	now needs is 0;
	say "[b]On to rhymable things or people ...[r]";
	repeat with myth running through rhymables:
		if guess-table of myth is table of no good guesses:
			say "[myth] needs a good-guess table. tgg.py r=[myth].";
			increment needs;
	if needs is 0, say "YAY! All rhymables are taken care of!";

volume ending diagnostics

chapter missesing

missesing is an action out of world.

understand the command "misses" as something new.

understand "misses" as missesing.

carry out missesing:
	process the show-misses rule;
	the rule succeeds;

Low Key Learny Jokey Journey Tests ends here.

---- DOCUMENTATION ----
