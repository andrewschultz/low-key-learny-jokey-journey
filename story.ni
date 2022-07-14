"Low-Key Learny Jokey Journey" by Some Pseudo-Dumb Dude, Oh!

volume basics

the release number is 1.

the story description is "Am (Oh!) Sham-Show".

the story headline is "Civil Seeming Drivel Dreaming entry 3".

release along with a website.

release along with the "Parchment" interpreter.

include Trivial Niceties by Andrew Schultz.

include Civil Seeming Drivel Dreaming Common by Andrew Schultz.

include Low Key Learny Jokey Journey Tables by Andrew Schultz.

include Low Key Learny Jokey Journey Mistakes by Andrew Schultz.

entry-in-series is 3.

a thing is usually not boring.

section scoring

core-max is 3.

min-needed is 3.

max-bonus is 1.

cur-bonus is 0.

chapter offshoots from common file

to decide whether force-partminus of (th - a thing): [whether to force certain leet learner readings]
	no;

this is the game-specific-ll-direction rule: [point to specific objects with the Leet Learner]
	do nothing;

this is the game-specific-backdrop-check rule: [wry wall in VVFF]
	do nothing;

to decide which number is variable-scan-length of (mynum - a number): [if we have variable scan lengths for an item depending on context]
	say "BUG: no variable-scan-length for [mynum]. Please let me know what you typed.";
	decide on 44;

this is the narrative-checking rule: [in VVFF been-buggin blocks you from seeing narrative]
	do nothing;

chapter offshoots from the universal file

to decide whether vcp-ignore: decide no; [When do we block check-text? In VVFF, when we have Been Buggin]

volume rooms

book bane be sane see

Bane Be Sane See is a room. printed name is "Bane Be Sane, See?". "The train tree that brought you here has gotten outrageously large. You can enter either of its three doors: WAYNE (WHEE), JANE G, or DANE D/LANE LEE. Nothing seems too critical, just standards.[paragraph break]It's also kind of noisy and distracting here, but that shouldn't be too big of a deal, you think. You hope."

the player is in Bane Be Sane See.

sco-plain-plea is a truth state that varies.

book Roaring Rocks

Roaring Rocks is a room. "[if sco-boring-box is false]The roaring is too loud here. You feel as if you'd be chased down if you ran away[else]Things are quieter now. You can go [back-n-farm]north[end if].". printed name of Roaring Rocks is "[if sco-boring-box is true]Storing Stocks[else]Roaring Rocks[end if]"

to say back-n-farm: if Nudge Slow Sludge is visited, say "back to ";

check going north in Roaring Rocks:
	if sco-boring-box is false, say "The roaring seems to pull you back." instead;
	if boring box is not moot, say "You figure you should open the boring box before moving on." instead;

chapter boring box

the boring box is a thing.

check opening boring box:
	say "You open the boring box, and out pops a leet learner!";
	moot boring box;
	now player has leet learner instead;

book No Nudge Slow Sludge

NNSS is north of Roaring Rocks. printed name is "No-Nudge Slow Sludge".

there is thing called No Nudge Slow Sludge. It is scenery. It is in NNSS.

sco-grow-grudge is a truth state that varies.

"[if sco-grow-grudge is false]some no-nudge slow sludge bubbles almost all around, blocking passage west, south and north[else]The slow sludge to the west, north and south no longer seems intimidating[end if]. There's passage back south[if sco-grow-grudge is true] as well[end if], though you reckon you're done there."

book Hun Harm Fun Farm

Hun Harm Fun Farm is west of NNSS.

book Trick Trail

[last room]

Trick Trail is a room.

Trailing Tree is a thing in Trick Trail.

volume main engine

this is the situational-cuing-reject rule: do nothing;

this is the verb-checker rule:
	let local-ha-half be false;
	let local-post-hom be false;
	let brightness be false;
	let new-point-to-get be false;
	let is-song be false;
	let global-row-check be 0;
	let hom-row be 0;
	let my-count be 0;
	repeat through the table of verb checks:
		increment global-row-check;
		now my-count is 0;
		now vc-dont-print is true;
		process the check-rule entry;
		let rb-out be the outcome of the rulebook;
		if rb-out is the unavailable outcome, next;
		now vc-dont-print is false;
		[say "[check-rule entry].";]
		if there is a wfull entry and the player's command matches the wfull entry:
			now my-count is 4; [ 4 = topic match, 3 = mix up alt solutions, 2 = 2 word match (or DIMD). This is a magic number to get rid of a boolean, so we can have all non global variables inside one rule, because Inform only allows 15 local variables. ]
		else:
			if the player's command matches the regular expression "(^|\W)([w1 entry])($|\W)", increment my-count;
			if there is a w2 entry:
				if the player's command matches the regular expression "(^|\W)([w2 entry])($|\W)", increment my-count;
			else if my-count > 0:
				increment my-count;
			if there is a wfull entry and my-count is 2:
				increment my-count;
		if my-count >= 2:
[			if debug-state is true, say "DEBUG: processing [check-rule entry], outcome [if rb-out is unavailable outcome]UA[else if rb-out is not-yet outcome]NOT YET[else if rb-out is already-done outcome]already done[else]rady[end if].";]
			process the check-rule entry;
			if rb-out is the already-done outcome, the rule succeeds;
			if rb-out is the not-yet outcome:
				let exact-cmd be whether or not the player's command matches the text "[first-of-ors of w1 entry][if there is a w2 entry] [first-of-ors of w2 entry][end if]", case insensitively;
				if think-cue entry is false:
					say "[line break][one of][b]NOTE[r]: this command[if exact-cmd is false] (well, an equivalent, as there were alternate solutions)[end if] will be useful later, but you aren't ready to use it, yet. You can track commands like this by typing [b]THINK[r], which will also clue you if they now work.[or](useful command[if exact-cmd is false] (or a functionally equivalent alternate solution)[end if] again saved to [b]THINK[r] for later reference.)[stopping]";
					now think-cue entry is true;
				else:
					say "[line break]Hmm, that [if exact-cmd is false](or a functionally equivalent alternate solution) [end if]still doesn't quite work here and now. But it will, somewhere, some time.";
				the rule succeeds;
			if okflip entry is false:
				unless my-count is 4 or there is no w2 entry or the player's command matches the regular expression "^([w1 entry])\W": [using only w1 is for the DIM'D test case... and "my-count is 4" is a hack for FLIMFLAM]
					say "You've got it backwards! Just flip things around, and it'll be okay.";
					the rule succeeds;
			if my-count is 3:
				say "Ooh! You're close. You've probably juggled two valid solutions.";
				the rule succeeds;
			abide by the situational-cuing-reject rule;
			if there is a core entry and idid entry is false:
				if core entry is true and number of words in the player's command > 2:
					say "You may have used too many words. Any necessary command just needs two words, no more, no less. I put this in to make sure you can't just spam guesses. It's a bit strict, but ... I wanted some cursory protection, as well as simple guidance to narrow down what you should guess.";
					the rule fails;
				up-which core entry;
				if core entry is false:
					increase lump-count by 1;
			now idid entry is true;
			now think-cue entry is false;
			process the run-rule entry;
			if zap-core-entry is true: [must be after "process the run-rule entry" or next LLP may not register]
				blank out the core entry;
				now zap-core-entry is false;
			process the score and thinking changes rule;
			if there is a core entry and core entry is false, check-lump-progress;
			the rule succeeds;
		if shut-scan is true, next;
		if two-too is true:
			if there is a posthom entry:
				if the player's command includes the posthom entry:
					now local-post-hom is true;
					if there is a hom-txt-rule entry, now hom-row is global-row-check;
		if ha-half is true and my-count is 1:
			now vc-dont-print is true;
			now already-rhymed-this is false;
			process the check-rule entry;
			if the rule failed:
				now vc-dont-print is false;
				next;
			now vc-dont-print is false;
			if already-rhymed-this is true, break;
			now local-ha-half is true;
			if debug-state is true, say "DEBUG: [check-rule entry] tipped off the HA HALF button.";
			if there is a core entry:
				now new-point-to-get is true;
				if core entry is true, now brightness is true;
			next;
	if local-ha-half is true:
		say "The HA HALF button lights up on your Leet Learner[if new-point-to-get is false]--wait, you're just switching back to a rhyme you knew before. You must've mis-thought a word[else if brightness is false], but dimly--perhaps this is a rhyme you don't strictly need to figure to win[else if local-post-hom is true], and its brightness suggests your rhyme must be very close, indeed[end if].";
		the rule succeeds;
	if local-post-hom is true:
		if hom-row > 0:
			choose row hom-row in table of verb checks;
			abide by the hom-txt-rule entry;
		say "The Leet Learner shakes back and forth. Something you said sounded right, but maybe you didn't THINK it right.";
		the rule succeeds;

volume parser rules

Rule for printing a parser error (this is the clue half right words rule):
	abide by the rhyme-guess-checker rule for the table of first check rhymes;
	abide by the game-specific-backdrop-check rule;
	unless guess-table of location of player is table of no good guesses:
		[if debug-state is true, say "DEBUG location guesses: [location of player], [guess-table of location of player].";]
		abide by the rhyme-guess-checker rule for guess-table of location of player;
	let table-list be a list of table names;
	repeat with tou running through fungible rhymables:
		let gtt be guess-table of tou;
		if gtt is table of no good guesses or gtt is listed in table-list, next;
		add gtt to table-list;
	repeat with tou running through fungible people:
		let gtt be guess-table of tou;
		if gtt is table of no good guesses or gtt is listed in table-list, next;
		add gtt to table-list;
	repeat with cur-guess-table running through table-list:
		abide by the rhyme-guess-checker rule for cur-guess-table;
	abide by the verb-checker rule;
	abide by the rhyme-guess-checker rule for table of general good guesses;
	continue the action;

volume verbs

the block listening rule is not listed in any rulebook.

check listening:
	if player is in Roaring Rocks and sco-boring-box is false, say "'Poring Pox!' the roaring rocks, uh, roar." instead;

volume meta-verbs

chapter abouting

carry out abouting:
	say "FILL THIS IN.";
	the rule succeeds;

chapter creditsing

carry out creditsing:
	say "FILL THIS IN.";
	the rule succeeds;

chapter exitsing

[ needed for the core, where VVFF north in Fun Fen is originally blocked ]

to decide whether (di - a direction) is blocked:
	no;

chapter verbsing

carry out verbsing:
	say "FILL THIS IN.";
	the rule succeeds;

chapter xyzzying

carry out xyzzying:
	say "A hollow voice booms incredulously, 'Easter egg bestir-beg?!'";
	the rule succeeds;

volume when play begins

when play begins:
	now core-score is 2.

volume internal map

index map with Roaring Rocks mapped east of Bane Be Sane See.
