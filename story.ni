"Low-Key Learny Jokey Journey" by Some Pseudo-Dumb Dude, Oh!

volume basics

the release number is 1.

the story description is "Am (Oh!) Sham-Show".

the story headline is "Civil Seeming Drivel Dreaming entry 3".

release along with a website.

release along with the "Parchment" interpreter.

include Trivial Niceties by Andrew Schultz.

include Bold Final Question Rows by Andrew Schultz.

include Civil Seeming Drivel Dreaming Common by Andrew Schultz.

include Low Key Learny Jokey Journey Tables by Andrew Schultz.

include Low Key Learny Jokey Journey Mistakes by Andrew Schultz.

include Old School Verb Total Carnage by Andrew Schultz.

entry-in-series is 3.

a thing is usually not boring.

section test module(s) - not for release

include Low Key Learny Jokey Journey Tests by Andrew Schultz.

section regions

Stoppin' Start is a region.

Hoppin' Heart is a region.

Poppin' Part is a region.

section scoring

core-max is 21.

min-needed is 21.

max-bonus is 3.

cur-bonus is 0.

when play begins: now max-poss is max-overall;

chapter offshoots relying on CSDD common file or CSDD universal file

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

to say optional-hint-think-item: say "";

section viability and gotoing

this is the flag bad goto to rule:
	if noun is location of player, say "You're already there! Well, here." instead;
	if noun is Bane Be Sane See, say "There's no way back to where you started." instead;

this is the flag bad goto from rule:
	do nothing;

definition: a direction (called d) is viable:
	if the room d of location of the player is nowhere, no;
	yes;

section "too-distracted" determines if we should reject THINK

to decide whether too-distracted:
	no;

to decide whether immediate-attention of (ru - a rule):
	no;

chapter offshoots from the universal file

to decide whether vcp-ignore: decide no; [When do we block check-text? In VVFF, when we have Been Buggin]

volume rooms

book bane be sane see

Bane Be Sane See is a room.  it is in Stoppin' Start. printed name is "Bane Be Sane, See?". "The train tree that brought you here has gotten outrageously large. It can be entered three ways. You just need to [b]READ[r] it.[paragraph break][if sco-plain-plea is true]Now you gave a plain plee, you feel more comfortable here and fully ready to move on[else]It's a bit noisy here, but maybe if you said things right, you could feel a bit more comfortable. It's probably not critical, though[end if]."

guess-table of Bane Be Sane See is table of Bane Be Sane See guesses.

the player is in Bane Be Sane See.

sco-plain-plea is a truth state that varies.

chapter train tree

the train tree is scenery in Bane Be Sane See. "There are three ways to enter the train tree: under writing saying [b]WAYNE (WHEE)[r], [b]JANE G[r], or [b]DANE D/LANE LEE[r]. They all look about the same."

check entering train tree: say "Which way? Examine the tree." instead;

check opening train tree: say "You should be able to enter the tree as you please." instead;

book Roaring Rocks

Roaring Rocks is a room in Stoppin' Start. "This is a dead end. The only passage out is north. [if sco-boring-box is false]The roaring is too loud right now, though. You feel as if you'd be chased down if you ran away[else]Things are quieter now. There's nothing left to do here, you're pretty sure[end if].". printed name of Roaring Rocks is "[if sco-boring-box is true]Storing Stocks[else]Roaring Rocks[end if]"

guess-table of Roaring Rocks is table of Roaring Rocks guesses.

understand "storing/stocks" and "storing stocks" as roaring rocks when sco-boring-box is true.

to say back-n-farm: if Nudge Slow Sludge is visited, say "back to ";

check going north in Roaring Rocks:
	if sco-boring-box is false, say "The roaring seems to pull you back." instead;
	if boring box is not moot:
		set the pronoun it to boring box;
		say "You figure you should open the boring box before moving on." instead;

chapter boring box

the boring box is a thing.

check opening boring box:
	say "You open the boring box, and you see a metal gadget that doesn't look very interesting at first. It's labeled as a Leet Learner. You can probably [b]READ[r] it for instructions.";
	say "[line break][i][bracket][b]NOTE:[r][i] for those who played [b][vvff][i], this is the same device you got back then. But if not, you may wish to look into it.[close bracket][line break]";
	moot boring box;
	now player has leet learner instead;

book No Nudge Slow Sludge

NNSS is north of Roaring Rocks. it is in Hoppin' Heart. printed name is "No-Nudge Slow Sludge". "[if sco-grow-grudge is false]Some [sludge] bubbles almost all around, blocking passage west, south and north[else]The [sludge] to the west, north and south no longer seems intimidating[end if]. There's passage back south[if sco-grow-grudge is true] as well[end if], though you reckon you're done there."

guess-table of NNSS is table of no nudge slow sludge guesses.

check going in nnss:
	if sco-grow-grudge is false and noun is not south:
		say "The [sludge] slows you up, which makes you mad, but not mad enough to trek through it." instead;

there is thing called no nudge slow sludge. It is scenery. It is in NNSS. printed name is "no-nudge slow sludge".

sco-grow-grudge is a truth state that varies.

after printing the locale description for NNSS when NNSS is unvisited:
	if guide-gong-warn is false:
		say "[i][bracket][b]NOTE:[r] [i]you don't need to go back to Roaring Rocks/Storing Stocks again. If you wish to track this sort of thing, [b]GUIDE GONG[r][i] will shut you out of completed areas, [b]STRIDE STRONG[r][i] will remove these restrictions, and [b]PRIDE PRONG[r][i] is like the gong, except it will give you a poke to visit rooms where you can still get a bonus point.[close bracket][r][line break]";
		now guide-gong-warn is true;
	continue the action;

book Hun Harm Fun Farm

Hun Harm Fun Farm is west of NNSS. it is in Hoppin' Heart. "The way bends north here[if sco-un-arm is false], though you feel trepidation at the thought of doing so. Maybe you'll be attacked[end if]. You can go back east."

check going north in hun harm fun farm: if sco-un-arm is false, say "Unfortunately, you hear aggressive voices threatening to attack you. They have weapons, and you don't. You're not sure how to change this." instead;

sco-un-arm is a truth state that varies.

book No Noon

there is a room called NoNoon in Hoppin' Heart. NoNoon is north of Hun Harm Fun Farm. printed name of NoNoon is "[if cocoon is moot]Show? Shewn![else]No Noon[end if]". "The sky is completely dark here. Even a sliver of light would be helpful."

sco-go-goon is a truth state that varies.
sco-co-coon is a truth state that varies.
sco-mo-moon is a truth state that varies.
sco-so-soon is a truth state that varies.
sco-crow-croon is a truth state that varies.

understand "no/noon" and "no noon" as NoNoon.
understand "show/shewn" and "show shewn" as NoNoon when cocoon is moot.

after printing the locale description when location of player is NoNoon:
	if Rho Rune is off-stage, say "You feel helpless here.";
	continue the action;

the cocoon is a thing.

book One Warm Stun Storm

there is a room called One Warm Stun Storm in Hoppin' Heart. It is north of NNSS. "[if sco-fun-form is true]It's calm here now. You can go north and south[else]A storm is raging ahead to the north, though it's all very calm to the south[end if]. [if sco-done-dorm is false]And you don't even have a prospect of shelter. Yet[else if sco-fun-form is false]At least the done dorm could give shelter[else]You also note the done dorm that helped you stay out the storm[end if]."

sco-done-dorm is a truth state that varies.
sco-fun-form is a truth state that varies.

check going north in One Warm Stun Storm:
	if sco-fun-form is false, say "You feel your will sapped as you attempt to go north. You'll need to sit out the storm first." instead;

chapter done dorm

the done dorm is scenery. "It's impressive it was built so quickly! [if sco-fun-form is true]It was fun to stay in during the storm, as well, but you don't need it any more[else]Perhaps it could provide shelter from the storm, if you apply for residence correctly[end if]."

check entering done dorm: say "[if sco-fun-form is false]You must apply correctly to enter[else]You already spent enough time there[end if]." instead;

book Tree Trunk

carry out going to TTTT when TTTT is unvisited:
	say "You were a bit too pleased you got away from the storm, and you couldn't help looking back to make sure it was over. And as you did, you ran into a rather large tree trunk, with a THUNK. Well, maybe with the way things are here, it was meant to happen.";

TTTT is north of One Warm Stun Storm. printed name is "The (Thunk!) Tree Trunk". it is in Hoppin' Heart. "Passage any way except back south is too dense here. The tree trunk you ran into still stands here, [if sco-see-sunk is true]cut down to size[else]and you wish you could cut it down to size as revenge for running into it[end if]."

sco-see-sunk is a truth state that varies.
sco-gee-junk is a truth state that varies.

sco-whee-woot is a truth state that varies.
sco-pear-peach is a truth state that varies.

chapter Tree Trunk

the Tree Trunk is scenery in TTTT. "[if sco-gee-junk is true]Nothing besides the [FRUIT] is in the tree trunk[else if sco-see-sunk is true]You get the feeling something semi-valuable could be in the tree trunk, if you just asked right[else]The tree trunk is tough to climb, but it's wide. Perhaps you could make it a little less intimidating[end if]."

chapter Free Fruit

Free Fruit is scenery. "Whatever the FREE FRUIT is, you get no signs of it. Perhaps the free fruit you need will pop up elsewhere."

check taking free fruit: say "Best to figure out what's in it, or what it can produce." instead;

the pear peach is a thing.

book Trust Track

Trust Track is east of NNSS. it is in Hoppin' Heart. "You're in a sort of earthy canyon, [if sco-crust-crack is true]though you created a passage south to complement the one west[else if sco-bussed-back is true]and with Just Jack gone, you're wondering if you can create another passage[else]with the only apparent way out being back west[end if]."

guess-table of trust track is table of trust track guesses.

Just Jack is a rhymable in Trust Track. "[one of]'Hi! I'm Just Jack. you can totally trust me that there are no other passages here. In fact, I'd be offended if you looked for them while I was still here. Not that you're getting rid of me.'[or]Just Jack waits here, making sure you trust his 'advice' enough not to look for any other passages.[stopping]"

the sussed sack is a rhymable. guess-table of sussed sack is table of trust track guesses.

sco-bussed-back is a truth state that varies.
sco-crust-crack is a truth state that varies.

book Rare Reach

Rare Reach is north of Trust Track. it is in Hoppin' Heart. printed name of Rare Reach is "[if sco-bare-beach is true]Bare Beach[else]Rare Reach[end if]".

sco-bare-beach is a truth state that varies.

after going to Rare Reach when sco-seep-soon is true and flag-reap-rune is false:
	now flag-reap-rune is true;
	say "The deep dune seems to have shifted a bit. Maybe you can find something in the middle of it.";
	continue the action;

sco-seep-soon is a truth state that varies.
flag-reap-rune is a truth state that varies.
sco-reap-rune is a truth state that varies.

chapter deep dune

the deep dune is a rhymable. it is scenery. "[if rho rune is off-stage]Man! It's so big, you figure something must be hidden in it[else]The deep dune gave you the Rho Rune, and you can't think of anything else to look for[end if].". guess-table of deep dune is table of deep dune guesses.

chapter Rho Rune

the Rho Rune is a rhymable. description is "It's shaped like the Greek letter Rho."

book Jotty Jail

Jotty Jail is a room in Hoppin' Heart. "Well, the walls are scribbled-over here. The way out is guarded by a snotty snail. It looks pretty well-kept-up here, so it's tricky to get out, unless you know what to look for. [jotty-bonus]."

to say jotty-bonus:
	if jail-bonus is 2:
		say "You've probably found enough odd stuff";
	else if jail-bonus is 1:
		say "Maybe there's something else neat, but maybe you can discover something else";
	else:
		say "You bet there's some stuff to find that doesn't help you, but it might be good for practice";

to decide what number is jail-bonus:
	decide on boolval of sco-potty-pail + boolval of sco-grotty-grail;

sco-grotty-grail is a truth state that varies.
sco-potty-pail is a truth state that varies.
sco-knotty-nail is a truth state that varies.

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

volume unsorted locations

book Trick Trail

[last room]

Trick Trail is a room. it is in Poppin' Part.

Trailing Tree is a thing in Trick Trail.

book Shore Shoals

Shore Shoals is a room. it is in Hoppin' Heart. "The only way out is back north to Trust Track."

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

the clue half right words rule is listed first in the for printing a parser error rulebook. [note: this caused a speedup when I first tried it. I'm not sure if this would last, so I'll need to do testing with this line vs with it commented out. ?? ]

volume options

book leet learner options

hutcaning is leetsetting.
shutscaning is leetsetting.
hahalfing is leetsetting.
nahnaffing is leetsetting.
helphowing is leetsetting.
welpwowing is leetsetting.
bluebleahing is leetsetting.
hoohehing is leetsetting.

before leetsetting when player does not have the leet learner: say "You don't have the Leet Learner yet, so you can't set this option." instead;

volume verbs

book listening

the block listening rule is not listed in any rulebook.

check listening:
	if player is in Roaring Rocks, say "[if sco-boring-box is false]'Poring Pox!' the roaring rocks, uh, roar[else]The roaring is exciting. Too exciting. You don't need that right now[end if]." instead;
	if player is in Bane Be Sane See, say "[if sco-plain-plea is false]You get the feeling your voice could add constructively to the noises, somehow, but it's not critical[else]You still think you hear echoes of your plain plea[end if]." instead;
	say "Quite quiet site. Sigh, it ..." instead;

volume room restrictions

definition: a room (called rm) is available-from-here:
	if rm is unvisited, no;
	if rm is bane be sane see and player is not in bane be sane see, no;
	yes;

[this may be moved to CSDD common later]

the gong rules are a rulebook. the gong rules have outcomes completed, llp-remaining, and uncompleted.

a room has a rule called this-gong-rule. this-gong-rule of a room is usually the default roomblocking rule.

a room-hint-state is a kind of value. The room-hint-states are points-left, bonus-left, and nothing-left.

player-room-allow-threshold is a room-hint-state that varies. player-room-allow-threshold is nothing-left.

this is the default roomblocking rule: uncompleted;

this-gong-rule of roaring rocks is the roaring rocks gong rule.

this is the roaring rocks gong rule: completed;

[temporary rule to test that, indeed, pride-prong does work!]
[roomblocking when room gone to is trust track:
	llp-remaining;]

the go-goto rules are a room based rulebook.

a go-goto rule for a room (called rm) (this is the gong may ring rule):
	process the this-gong-rule of rm;
	let room-done be the outcome of the rulebook;
	if room-done is the uncompleted outcome, continue the action;
	if room-done is the llp-remaining outcome and player-room-allow-threshold is bonus-left:
		say "[that-prong] to try and go see what's there in [rm], even though it might not be necessary.";
		continue the action;
	if player-room-allow-threshold is bonus-left:
		say "[that-prong] ";
	else:
		say "[one of]A guide gong[or]That guide gong, again,[stopping] rings ";
	say "to notify you that you don't need to go back to [rm]." instead;

check going when player-room-allow-threshold is not nothing-left:
	abide by the gong may ring rule for room gone to;

to say that-prong: say "The pride-prong you summoned earlier pokes you"

check gotoing when player-room-allow-threshold is not nothing-left:
	abide by the gong may ring rule for noun;

chapter guide-gonging

guide-gonging is an action out of world.

understand the command "guide gong" as something new.

understand "guide gong" as guide-gonging.

carry out guide-gonging:
	follow the know-ide-ong rule;
	say "You will [if player-room-allow-threshold is points-left]already[else]now[end if] be repelled by a guide gong if you try to enter a location where you have nothing game-critical to do.";
	now player-room-allow-threshold is points-left;
	the rule succeeds;

guide-gong-warn is a truth state that varies.
this is the know-ide-ong rule:
	if guide-gong-warn is false:
		now guide-gong-warn is true;
		say "(disabling later explanation of [b]GUIDE GONG[r], etc., but it will still be in [b]VERBS[r])";

chapter stride-stronging

stride-stronging is an action out of world.

understand the command "stride strong" as something new.

understand "stride strong" as stride-stronging.

carry out stride-stronging:
	follow the know-ide-ong rule;
	say "You are [if player-room-allow-threshold is nothing-left]already[else]now[end if] able to move freely between locations, even ones with nothing left to do.";
	now player-room-allow-threshold is nothing-left;
	the rule succeeds;

chapter pride-pronging

pride-pronging is an action out of world.

understand the command "pride prong" as something new.

understand "pride prong" as pride-pronging.

carry out pride-pronging:
	follow the know-ide-ong rule;
	say "You will [if player-room-allow-threshold is bonus-left]already[else]now[end if] be blocked from locations with nothing left to do and be warned if there is a bonus point in a location you are about to visit.";
	now player-room-allow-threshold is bonus-left;
	the rule succeeds;

volume standard verbs

[just in case, so far]

volume meta-verbs

chapter abouting

carry out abouting:
	say "[this-game] is the third entry in the [csdd] series. You do not need experience [series-names] to get through succesfully.";
	say "[line break]It felt like something that'd never get created, but it was fun to dream about. Then I had an idea about [if nnss is unvisited]the third room[else][NNSS][end if] offering another LLP in [vvff], but I wanted to move on. Then an idea for one room came, then another, and suddenly I had a game for IFComp 2022, which was nice, as the one I'd had on reserve since 2018 had dried up.";
	say "[line break]I was able to re-use and fine-tune and fix bugs in a lot of code from [vvff], and I even managed to create some code I backported. And I started using Zarf's regression scripts earlier, to catch bugs well before the deadline and free my mind up for bigger-picture things. So it feels like the user experience should be smoother, although the story might be weaker.";
	say "[line break]While my code for [vvff] wasn't perfect, it gave me a boost so I didn't have to rewrite a lot. I'd also become more comfortable with rules and rule ordering since then, so I was able to make the code more portable.";
	the rule succeeds;

chapter creditsing

carry out creditsing:
	say "Thanks to many people on the I7 board at Intfiction.org. This includes, in alphabetical order, Draconis, otistdog, Zarf and ZedLopez.";
	say "[line break]Thanks to all involved in IFComp, whether administering, programming, judging, or reviewing.";
	say "Thanks to GitHub for allowing free hosting, public or private.";
	say "Thanks to you for playing.";
	the rule succeeds;

chapter exitsing

[ needed for the core, where VVFF north in Fun Fen is originally blocked ]

to decide whether (di - a direction) is blocked:
	no;

chapter optsing

carry out optsing:
	if guide-gong-warn is true, say "[b]GUIDE GONG[r] will restrict you from solved rooms, [b]PRIDE PRONG[r] will notify you of rooms with just LLPs left, and [b]STRIDE STRONG[r] will remove these bumpers. Currently this is set to [b][if player-room-allow-threshold is bonus-left]PRIDE PRONG[else if player-room-allow-threshold is bonus-left]GUIDE GONE[else]player-room-allow-threshold is bonus-left[end if][r].";
	the rule succeeds;

chapter verbsing

carry out verbsing:
	say "[this-game] doesn't have many custom verbs that are used regularly. However, you need to guess the right words to advance.";
	say "[b]OPTS[r] gives options, and [b]CREDITS[r] and [b]ABOUT[r] give general information.";
	the rule succeeds;

chapter xyzzying

carry out xyzzying:
	say "A hollow voice booms incredulously, 'Easter egg bestir-beg?!'";
	the rule succeeds;

volume when play begins

rule for printing a parser error when the latest parser error is the noun did not make sense in that context error (this is the goto reject rule):
	if action-to-be is the gotothinging action or action-to-be is the gotoing action:
		say "That location or thing doesn't exist or isn't known to you yet.";
		the rule succeeds;
	continue the action;

the goto reject rule is listed after the clue half right words rule in the for printing a parser error rulebook.

volume end of game

to win-the-game:
	if score is maximum score:
		choose row with final response rule of show-misses rule in the Table of Final Question Options;
		blank out the whole row; [don't let the player see MISSED if they got everything]

Table of Final Question Options (continued)
final question wording	only if victorious	topic		final response rule		final response activity
"see the points you [b]MISSED[r]"	true	"missed"	show-misses rule	--

this is the show-misses rule:
	if sco-plain-plea is false, say "You could've made a [b]PLAIN PLEA[r] back at the start in [sane see]";
	if sco-grotty-grail is false, say "You could've discovered a [b]GROTTY GRAIL[r] back in [jotty jail]";
	if sco-potty-pail is false, say "You could've discovered a [b]POTTY PAIL[r] back in [jotty jail]";

volume unsorted

book Locking Lift

Locking Lift is a room in Hoppin' Heart.

book High Hub

High Hub is a room.

book people

the Frightfully Bright Bully is a person. description is "The [bully] doesn't look especially mean or conniving or thuggish. But you know they just can't stand you. It's time to face up to them."

volume internal map

index map with Roaring Rocks mapped east of Bane Be Sane See.

index map with Jotty Jail mapped south of Trust Track.

[index map with Shore Shoals mapped south of Trust Track.]

