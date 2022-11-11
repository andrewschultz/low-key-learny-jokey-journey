Version 1/220916 of Low Key Learny Jokey Journey Definitions by Andrew Schultz begins here.

"This should briefly describe the purpose of Low Key Learny Jokey Journey Definitions."

volume object property extensions

a liftroom is a kind of room. [i could've defined a property, too]

a multrhymable is a kind of rhymable.

a room has a number called spokeval. spokeval of a room is usually -1.

section climbing

climb-warn is a truth state that varies.

a thing can be climbable. a thing is usually not climbable.

volume defined numbers

section monk

to decide which number is monk-score:
	decide on boolval of sco-bad-bunk + boolval of sco-sad-sunk;

section hub/lift/general

to decide which number is lift-score: decide on boolval of sco-docking-diffed + boolval of sco-grokking-grift + boolval of sco-mocking-miffed + boolval of sco-rocking-rift + boolval of sco-shocking-shift + boolval of sco-gawking-gift;

to decide which number is hub-score: decide on boolval of sco-throw-through + boolval of sco-excite-exhale + boolval of sco-chic-shaming + boolval of sco-k-cope + boolval of (whether or not shoal-core-score is 2); [rocking rift/throw through, docking diffed / excite-exhale, grokking grift/chic shaming, gawking gift/k cope, shocking shift/3 gore-goals points ]

to decide whether spoke-6-known:
	if sco-mocking-miffed is true or tried-mocking-miffed is true, yes;
	no;

section lute/rose/side items

to decide which number is side-item-score: decide on (boolval of whether or not red rose is not off-stage) + (boolval of whether or not light lute is not off-stage)

To decide which number is rose-petals: decide on 3 - (boolval of sco-said-sos + boolval of sco-thread-throws + boolval of sco-fed-foes);

to decide which number is lute-strings: decide on gold-lute-strings + silver-lute-strings;

to decide which number is gold-lute-strings: decide on 2 - (boolval of sco-right-root + boolval of sco-bright-brute);

to decide which number is silver-lute-strings: decide on 2 - (boolval of sco-night-newt + boolval of sco-kite-coot);

section shoe

to decide which number is shoe-concessions: decide on boolval of sco-stow-stew + boolval of sco-bro-brew;

to decide which number is shoe-storage: decide on boolval of sco-glow-glue + boolval of sco-flow-flue;

to decide whether shoe-food-drink:
	if shoe-concessions is 2, yes;
	no;

section shoals

to decide which number is shoal-core-score: decide on boolval of sco-four-foals + boolval of sco-more-moles;

to decide which number is shoal-extra-animals: decide on boolval of sco-night-newt + boolval of sco-kite-coot;

section sleaze

to decide which number is sleaze-score: decide on boolval of sco-bright-breeze + boolval of sco-plight-please;

section trite trail

to decide whether whale-hunt-ready:
	if whale-score is 5, yes;
	no;

section threat three

to decide which number is marquee-score: decide on boolval of sco-fret-free + boolval of sco-set-see + boolval of sco-yet-ye;

volume Common or Universal file lead-ins

this is the disable-learner-options rule: if player does not have leet learner, say "You've tried an option you can't exercise until you get a hint item. You should, shortly." instead;

to decide whether (r1 - a room) and (r2 - a room) are gong-adjacent:
	if r1 is adjacent to r2, yes;
	if r1 is a liftroom and r2 is high hub, yes;
	if r2 is a liftroom and r1 is high hub, yes;
	no;

to decide whether good-say-guess: ["SAY" generally wipes out the starting say, but for some good guesses, it plays straight-up]
	if player is in nay nope slay slope and the player's command includes "say soap", yes;
	no;

to decide whether rhyme-mechanism-known:
	if boring box is not off-stage, yes;
	no;

this is the game-specific-ll-direction rule: [point to specific objects with the Leet Learner]
	do nothing;

this is the game-specific-backdrop-check rule: [wry wall in VVFF]
	do nothing;

this is the narrative-checking rule: [in VVFF been-buggin blocks you from seeing narrative]
	do nothing;

to say optional-hint-think-item: say "";

section "too-distracted" determines if we should reject THINK

to decide whether too-distracted: no; [been buggin stuff]

to decide whether immediate-attention of (ru - a rule):
	no;

section spacing for Lurking Lump

to decide whether (ru - a rule) is spaceable: [annoying space breaks in inform]
	if ru is vc-co-coon rule or ru is vc-un-arm rule, no;
	yes;

chapter offshoots from the universal file

to decide whether vcp-ignore: decide no; [When do we block check-text? In VVFF, when we have Been Buggin]

chapter instead rules

to decide whether the action is procedural:
	if examining, yes;
	if reading, yes;
	if hintobjing, yes;
	if lling, yes;
	no;

volume definitions

definition: a thing (called th) is whale-defeating:
	unless th is scenery, no;
	if th is white whale or th is bright brute, no;
	unless th is in Trite Trail, no;
	yes;

volume gotoing

definition: a room (called rm) is available-from-here:
	if rm is unvisited, no;
	if rm is bane be sane see and player is not in bane be sane see, no;
	if rm is jotty jail and player is not in jotty jail, no;
	yes;

to decide whether (di - a direction) is blocked:
	if player is in NNSS and sco-grow-grudge is false:
		if di is north or di is south or di is east, yes;
	if player is in Vain Vat and sco-flain-flat is false:
		if di is north, yes;
	if player is in Roaring Rocks and di is north and mad monk is in roaring rocks, yes;
	if player is in Hun Harm Fun Farm and di is north and sco-un-arm is false, yes;
	if player is in Warm Stun Storm and di is north and sco-fun-form is false, yes;
	no;

this is the flag bad goto to rule:
	if noun is location of player, say "You're already there! Well, here." instead;
	if noun is Bane Be Sane See, say "There's no way back to where you started." instead;
	if noun is Jotty Jail, say "You don't need or want to go back to [jail]." instead;
	if noun is Show Shoe and sco-throw-through is true, say "You can't revisit the [show shoe] after the big performance!" instead;
	if location of player is High Hub:
		let mrgo be map region of noun;
		if mrgo is not Poppin' Part and sco-bye-bub is false, say "There's a way back, but you need to find the right way off the High Hub." instead;

this is the stuck-right-now rule:
	if player is in Threat Three and sprite is in threat three, say "It's the final conflict! You're stuck here!" instead;
	if player is in Vain Vat and pred pros are not moot, say "You're in a bit of a pickle. Too much to get up and go anywhere." instead;

this is the flag bad goto from rule:
	if mrlp is Poppin' Part:
		let mrgo be map region of noun;
		if mrgo is Poppin' Part and spokeval of noun is not spokeval of location of player, say "Here around the high hub, you need to use the lift." instead;

definition: a direction (called d) is viable:
	if the room d of location of the player is nowhere, no;
	yes;

volume unsorted

Low Key Learny Jokey Journey Definitions ends here.

---- DOCUMENTATION ----
