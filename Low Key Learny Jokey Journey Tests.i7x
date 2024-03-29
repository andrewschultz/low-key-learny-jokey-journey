Version 1/220715 of Low Key Learny Jokey Journey Tests by Andrew Schultz begins here.

"This should briefly describe the purpose of Low Key Learny Jokey Journey Tests."

volume IDE tests

[test wm with "au 2/jane g/boring box/open box/n/bad bunk/sad sunk/n/grow grudge/n/done dorm/fun form/n/see sunk/gee junk/whee woot/pear peach/s/s/e/bussed back/crust crack/n/bare beach/seep soon/s/n/reap rune/s/w/w/unarm/n/go goon/cocoon/mo moon/so soon/crow croon/knotty nail/rocking rift/flow flue/glow glue/bro brew/stow stew/crow crew/ho who/yo you/throw through/shocking shift/shore shoals/four foals/more moles/docking diffed/bad boast/rad roast/w/flight flail/might mail/sight sail/right rail/bright brute/excite exhale/thread throws/grokking grift/bright breeze/plight please/right root/s/bleak blaming/chic shaming/bred bros/n/enter lift/gawking gift/dumb doubt/said sos/umm out/d/hey hope/k cope/u/enter lift/mocking miffed/bold bend/trolled trend/mold mend/s/bane bat/flain flat/splain splat/fed foes/s/x marquee/fret free/yet ye/set see/plus plaque/turning trite".]

[test llpshoe with "pride prong/gonear hub/rocking rift/flow flue/glow glue/bro brew/stow stew/ho who/yo you/crow crew/throw through/rocking rift/go goo/enter lift/rocking rift".]

[test llpsleaze with "purloin rose/purloin lute/pride prong/gonear hub/grokking grift/bright breeze/plight please/right root/s/bleak blaming/chic shaming/bred bros/grokking grift/right root/s/clique claiming/n/enter lift/grokking grift".]

test w1 with "au 2/plain plea/jane g/boring box/open box/n/gad gunk/bad bunk/sad sunk/n".

test w2 with "grow grudge/bother/piss poor/n/done dorm/fun form/n/see sunk/gee junk/whee woot/pear peach/s/s".

test w3 with "e/bussed back/crust crack/n/bare beach/seep soon/s/n/reap rune/s/w".

test w4 with "w/unarm/n/go goon/cocoon/mo moon/so soon/crow croon".

test w5 with "potty pail/grotty grail/knotty nail".

test w6 with "bye bub/wordy walk/u"

test w7 with "rocking rift/flow flue/glow glue/go goo/bro brew/stow stew/crow crew/ho who/yo you/throw through".

test w8 with "shocking shift/shore shoals/night newt/kite coot/lore lols/four foals/more moles".

test w9 with "gawking gift/dumb doubt/said sos/umm out/d/hey hope/k cope".

test w10 with "grokking grift/tight tees/bright breeze/plight please/right root/s/clique claiming/bleak blaming/chic shaming/bred bros".

test w11 with "docking diffed/bad boast/rad roast/w/flight flail/might mail/sight sail/right rail/bright brute/excite exhale/thread throws".

test w12 with "despite dispute/mocking miffed/bold bend/trolled trend/mold mend/s".

test w13 with "bane bat/flain flat/splain splat/fed foes/s".

test w14 with "fret free/yet ye/set see/plus plaque/turning trite".

test wa with "test w1/test w2/test w3/test w4/test w5/test w6/test w7/test w8/test w9/test w10/test w11/test w12/test w13/test w14".

volume beginning diagnostics

definition: a room (called rm) is unrhymable:
	if rm is in Get a Guess, yes;
	if rm is One Warm Stun Storm or rm is Hun Harm Fun Farm, yes;
	no;

[when play begins:
	let needs be 0;
	repeat with myth running through things:
		if description of myth is empty, say "Describe thing [myth].";
	say "[b]Checking rhymable rooms ...[r]";
	repeat with myrm running through rooms:
		if myrm is unrhymable, next;
		if guess-table of myrm is table of no good guesses:
			increment needs;
			say "[needs]. [myrm] needs a good-guess table. tgg.py r=[myrm].";
	if needs is 0, say "YAY! All rooms are taken care of!";
	now needs is 0;
	say "[b]On to rhymable things or people ...[r]";
	repeat with myth running through rhymables:
		if guess-table of myth is table of no good guesses:
			increment needs;
			say "[needs]. [myth] needs a good-guess table. tgg.py r=[myth].";
	if needs is 0, say "YAY! All rhymables are taken care of!";]

[when play begins:
	let needs be 0;
	say "[b]Checking thing checksums...[r]";
	repeat with myth running through things:
		if from-number of myth is 0 and to-number of myth is 0:
			increment needs;
			say "[needs]. [myth] needs from-number.";
	if needs is 0, say "YAY! All rhymables are taken care of!";
	now needs is 0;
	say "[b]Checking room checksums...[r]";
	repeat with myrm running through rooms:
		if myrm is unrhymable, next;
		if from-number of myrm is 0:
			increment needs;
			say "[needs]. [myrm] needs from-number.";
		if to-number of myrm is 0:
			increment needs;
			say "[needs]. [myrm] needs from-number.";
	if needs is 0, say "YAY! All rooms are taken care of!";]

when play begins:
	let count be 0;
	repeat with TH running through things:
		if thing-hint-rule of TH is trivially false rule:
			increment count;
			say "[count]. [th] needs a real hint rule.";
	if count is 0, say "All things hinted!";
[	now count is 0;
	repeat with RM running through rooms:
		if map region of RM is get a guess, next;
		if room-hint-rule of RM is trivially false rule:
			increment count;
			say "[count]. [rm] needs a real hint rule.";
	if count is 0, say "All rooms hinted!";]

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
