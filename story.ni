"Low-Key Learny Jokey Journey" by Some Pseudo-Dumb Dude, Oh!

volume basics

the release number is 1.

the story description is "Am (Oh!) Sham-Show".

the story headline is "Civil Seeming Drivel Dreaming entry 3".

release along with a website.

release along with the "Parchment" interpreter.

include Trivial Niceties by Andrew Schultz.

include Bold Final Question Rows by Andrew Schultz.

include Prime Pro Rhyme Row Common by Andrew Schultz.

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

core-max is 71.

max-bonus is 14.

chapter offshoots relying on PPRR common file or PPRR universal file

to decide whether this-game-say-nudge:
	if player is in nay nope slay slope and the player's command includes "say soap", yes;
	no;

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

section spacing for Lurking Lump

to decide whether (ru - a rule) is spaceable:
	if ru is vc-co-coon rule or ru is vc-un-arm rule, no;
	yes;

section clue numbers

to decide which number is variable-scan-length of (mynum - a number):
	if mynum is 100: [show shoe]
		if sco-throw-through is true, decide on 0; [ this case should not happen, but let's put it here anyway ]
		if sco-yo-you is true, decide on 57; [ THROW THROUGH, final step ]
		if sco-stow-stew is true and sco-bro-brew is false, decide on 34; [ BRO BREW must be next ]
		if sco-crow-crew is true, decide on 23; [HO WHO or YO YOU]
		decide on 44; [most others are 4-4]
	else if mynum is 101: [ Trust Track ]
		if sco-bussed-back is false, decide on 64;
		if sco-crust-crack is false, decide on 55;
		decide on 0;
	else if mynum is 102: [ No Noon progression ]
		if sco-crow-croon is true, decide on 0; [ the area is complete ]
		if sco-so-soon is true, decide on 45; [ in this case, CROW CROON is the only one left ]
		decide on 24; [ everything before CROW CROON is 2 letters, then 4 ]
	else if mynum is 103: [ high hub/locking lift: this may be reordered ]
		if sco-docking-diffed is false, decide on 76;
		if sco-grokking-grift is false, decide on 85;
		if sco-rocking-rift is false, decide on 74;
		if sco-shocking-shift is false, decide on 75;
		if sco-stocking-stiffed is false, decide on 87;
		if sco-mocking-miffed is false, decide on 76;
		decide on 0;
	else if mynum is 104: [ trite trail: note we have some tricky stuff here because we have a pool of 4 things, of which 3 are 54 and 1 is 65 ]
		if sco-excite-exhale is true, decide on 0;
		if whale-hunt-ready, decide on 66;
		if sco-flight-flail is false and sco-might-mail is true and sco-sight-sail is true and sco-right-rail is true, decide on 65;
		decide on 54;
	else if mynum is 105: [ drain/drat vain vat ]
		if sco-bane-bat is false, decide on 43;
		if sco-flain-flat is false, decide on 54;
		if sco-splain-splat is false, decide on 65;
		decide on 0;
	else if mynum is 106: [ freak framing: CLIQUE CLAIMING is LLP ]
		if sco-bleak-blaming is false, decide on 57;
		if sco-chic-shaming is false, decide on 47;
		if sco-clique-claiming is false, decide on -68;
		decide on 0;
	else if mynum is 107: [ nay nope slay slope ]
		if sco-hey-hope is false, decide on 34;
		if sco-k-cope is false, decide on 14;
		decide on 0;
	else if mynum is 108: [ rum route ]
		if sco-dumb-doubt is false, decide on 45;
		if sco-umm-out is false, decide on 33;
		decide on 0;
	else if mynum is 109: [ sore souls' gore goals ]
		if sco-lore-lols is false, decide on -44;
		if shoal-core-score < 2, decide on 45;
		decide on 0;
	else if mynum is 110: [ red rose ]
		if player is in rum route and sco-said-sos is false, decide on 43;
		if player is in seek sameing freak framing and sco-bred-bros is false, decide on 44;
		decide on 0;
	else if mynum is 111: [ light lute ]
		if player is in slight sleaze and sco-right-root is false, decide on 54;
		if player is in trite trail and sco-bright-brute is false, decide on 65;
		if player is in sore souls gore goals:
			if sco-kite-coot is false, decide on 44;
			if sco-night-newt is false, decide on 54;
		if delight dilute is fungible, decide on 77;
		decide on 0;
	else if mynum is 112: [ market marquee ]
		if sco-yet-ye is false, decide on 32;
		if sco-set-see is false, decide on 33;
		if sco-fret-free is false, decide on 44;
		decide on 0;
	say "[b]BUG[r]: no variable-scan-length for [mynum]. Please let me know what you typed.";
	decide on 44;

chapter offshoots from the universal file

to decide whether vcp-ignore: decide no; [When do we block check-text? In VVFF, when we have Been Buggin]

chapter instead rules

to decide whether the action is procedural:
	if examining, yes;
	no;

instead of doing something with a boring thing:
	if action is procedural, continue the action;
	say "Most things, you don't need to interact with directly.";

volume rooms (intro)

book bane be sane see

Bane Be Sane See is a room.  it is in Stoppin' Start. printed name is "Bane Be Sane, See?". "The train tree that brought you here has gotten outrageously large. It can be entered three ways. You just need to [b]READ[r] it.[paragraph break][if sco-plain-plea is true]Now you gave a plain plea, you feel more comfortable here and fully ready to move on[else]It's a bit noisy here, but maybe if you said things right, you could feel a bit more comfortable. It's probably not critical, though[end if]."

guess-table of Bane Be Sane See is table of Bane Be Sane See guesses.

the player is in Bane Be Sane See. description of player is "Some searchin['], umm, urchin."

sco-plain-plea is a truth state that varies.
sco-choose-name is a truth state that varies. [ this variable is never explicitly used in the code as of now, but it could be. I have one for each point-scored truth-state. ]

chapter train tree

the train tree is scenery in Bane Be Sane See. "There are three ways to enter the train tree: under writing saying [b]WAYNE (WHEE)[r], [b]JANE G[r], or [b]DANE D/LANE LEE[r]. They all look about the same."

check entering train tree: say "Which way? Examine the tree." instead;

check opening train tree: say "You should be able to enter the tree as you please." instead;

book Roaring Rocks

Roaring Rocks is a room in Stoppin' Start. "This is a dead end. The only passage out is north. [if sco-boring-box is false]The roaring is too loud right now, though. You feel as if you'd be chased down if you ran away[else]Things are quieter now. There's nothing left to do here, you're pretty sure[end if].". printed name of Roaring Rocks is "[if sco-boring-box is true]Storing Stocks[else]Roaring Rocks[end if]"

guess-table of Roaring Rocks is table of Roaring Rocks guesses.

understand "storing/stocks" and "storing stocks" as roaring rocks when sco-boring-box is true.

to say back-n-farm: if NNSS is visited, say "back to ";

check going north in Roaring Rocks:
	if sco-boring-box is false, say "The roaring seems to pull you back. You have something to do, to quiet it and maybe help yourself." instead;
	if boring box is not moot:
		set the pronoun it to boring box;
		say "You figure you should open the boring box before moving on." instead;
	if mad monk is off-stage:
		say "As you go on your way, who should block your way but a fervent Mad Monk? They don't seem that tough, but then again, this is the start of your journey.";
		move mad monk to roaring rocks;
		the rule fails;
	if mad monk is in Roaring Rocks, say "Get by the mad monk first." instead;

chapter boring box

the boring box is a thing. description is "Yup. It's pretty boring, but at least it wouldn't be a challenge to [b]OPEN[r].".

check opening boring box:
	say "You open the boring box, and you see a metal gadget that doesn't look very interesting at first. It's labeled as a Leet Learner. You can probably [b]READ[r] it for instructions.";
	say "[line break][i][bracket][b]NOTE:[r][i] for those who played [b][vvff][i], this is the same device you got back then. So you can skip looking into it, if you remember how it works.[close bracket][line break]";
	moot boring box;
	set the pronoun it to leet learner;
	now player has leet learner instead;

volume rooms (mid)

book No Nudge Slow Sludge

NNSS is north of Roaring Rocks. it is in Hoppin' Heart. printed name is "No-Nudge Slow Sludge". "[if sco-grow-grudge is false]Some [sludge] bubbles almost all around, blocking passage all ways back south[else]The [sludge] to the west, north and east no longer seems intimidating[end if][if sturdy stalk is in NNSS]. The sturdy stalk leads back up to High Hub, as well[end if]."

guess-table of NNSS is table of no nudge slow sludge guesses.

check going in nnss:
	if sco-grow-grudge is false and noun is not south:
		say "The [sludge] slows you up, which frustrates you. Maybe if it could annoy you the right way..." instead;

chapter no nudge slow sludge (scenery)

there is thing called no nudge slow sludge. It is scenery. It is in NNSS. printed name is "no-nudge slow sludge". "It sure is icky! Just looking at it makes you too mad, too fast. You need the right way to be disgusted by it."

sco-grow-grudge is a truth state that varies.

after printing the locale description for NNSS when NNSS is unvisited:
	if guide-gong-warn is false:
		say "[i][bracket][b]NOTE:[r] [i]you don't need to go back to Roaring Rocks/Storing Stocks again. If you wish to track this sort of thing, [b]GUIDE GONG[r][i] will shut you out of completed areas, [b]STRIDE STRONG[r][i] will remove these restrictions, and [b]PRIDE PRONG[r][i] is like the gong, except it will give you a poke to visit rooms where you can still get a bonus point.[close bracket][r][line break]";
		now guide-gong-warn is true;
	continue the action;

chapter sturdy stalk

the sturdy stalk is a rhymable. it is scenery. "You can climb back up it. Apparently, it's artificial, and its creator inscribed their name: Ferdie Falk.".

sco-wordy-walk is a truth state that varies.

guess-table of sturdy stalk is the table of sturdy stalk guesses.

book Hun Harm Fun Farm

Hun Harm Fun Farm is west of NNSS. it is in Hoppin' Heart. "The way bends north here[if sco-un-arm is false], though you feel trepidation at the thought of doing so. Maybe you'll be attacked[end if]. You can go back east."

check going north in hun harm fun farm when sco-un-arm is false: say "Unfortunately, you hear aggressive voices threatening to attack you. They have weapons, and you don't. You're not sure how to change this." instead;

guess-table of Hun Harm Fun Farm is table of hun harm fun farm guesses.

sco-un-arm is a truth state that varies.

chapter Mad Monk

the Mad Monk is a rhymable. "A mad monk raves here, blocking your way north. What with the short name, they're pretty obviously a simple henchman, especially this early in the game. They might be good for rope-a-doping to [if player has lurking lump]enhance the lurking lump[else]get that stronger help item you read about on the [learner][end if].". description is "Plainly dressed. They seem to have an intense attitude you could cut down, and they'd probably leave you alone."

guess-table of mad monk is the table of mad monk guesses.

sco-gad-gunk is a truth state that varies.
sco-bad-bunk is a truth state that varies.
sco-sad-sunk is a truth state that varies.

book No Noon

there is a room called NoNoon in Hoppin' Heart. NoNoon is north of Hun Harm Fun Farm. printed name of NoNoon is "[if cocoon is moot]Show? Shewn![else]No Noon[end if]". "The sky is completely dark here. Even a sliver of light would be helpful."

guess-table of nonoon is the table of nonoon guesses.

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

the cocoon is a thing. "The cocoon you summoned still lies here.". description is "It's lying here, ready to open, if enough time passes."

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

TTTT is north of One Warm Stun Storm. printed name is "The (Thunk!) Tree Trunk". it is in Hoppin' Heart. "Passage any way except back south is too dense here. The tree trunk you ran into still stands here, [if sco-see-sunk is false]and you wish you could cut it down to size as revenge for running into it[else if sco-gee-junk is false]and now you cut it down to size, there's got to be something in it, if you just look right[else if sco-pear-peach is true]and maybe you can figure what [fruit] to get[else]completely looted[end if]."

guess-table of TTTT is table of Thunk Tree Trunk guesses.

sco-see-sunk is a truth state that varies.
sco-gee-junk is a truth state that varies.

sco-whee-woot is a truth state that varies.
sco-pear-peach is a truth state that varies.

chapter Tree Trunk

the Thunk Tree Trunk is scenery in TTTT. "[if sco-gee-junk is true]Nothing besides the [FRUIT] is in the tree trunk[else if sco-see-sunk is true]You get the feeling something semi-valuable could be in the tree trunk, if you just asked right[else]The tree trunk is tough to climb, but it's wide. Perhaps you could make it a little less intimidating[end if].". printed name of Thunk Tree Trunk is "(thunk) tree trunk".

chapter Free Fruit

Free Fruit is a rhymable. it is scenery. "It's covered in odd hybrid fruits but offers no clue as to which is best for you.". printed name is "[b]FREE FRUIT[r]".

check taking free fruit: say "Best to figure out what's in it, or what it can produce." instead;

guess-table of free fruit is the table of free fruit guesses.

chapter pear peach

the pear peach is a thing. description is "It looks like a cross between a pear and a peach, with two bumps where the circumference gets larger instead of one, and the sort of orangish coloring in some spots and the light greenish pear coloring in others.".

book Trust Track

Trust Track is east of NNSS. it is in Hoppin' Heart. "You're in a sort of earthy canyon, [if sco-crust-crack is true]though you created a passage south to complement the one west[else if sco-bussed-back is true]and with Just Jack gone, you're wondering if you can create another passage[else]with the only apparent way out being back west[end if]."

guess-table of trust track is table of trust track guesses.

Just Jack is a thing in Trust Track. "[one of]'Hi! I'm Just Jack. you can totally trust me that there are no other passages here. In fact, I'd be offended if you looked for them while I was still here. Not that you're getting rid of me.'[or]Just Jack waits here, making sure you trust his 'advice' enough not to look for any other passages.[stopping]".

description of Just Jack is "He is just sitting around here with no better place to be. Or no less awful place. He's not going to go anywhere on his own, that's for sure.".

the sus sack is a rhymable. guess-table of sus sack is table of trust track guesses. description is "What could be in it? It feels both light and heavy at the same time, both practical and impractical."

sco-plus-plaque is a truth state that varies.

sco-bussed-back is a truth state that varies.
sco-crust-crack is a truth state that varies.

book Rare Reach

Rare Reach is north of Trust Track. it is in Hoppin' Heart. printed name of Rare Reach is "[if sco-bare-beach is true]Bare Beach[else]Rare Reach[end if]". "You're surrounded by [if sco-bare-beach is true]water[else]desolation[end if] every direction except south.".

guess-table of rare reach is the table of rare reach guesses.

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

guess-table of Rho Rune is table of nonoon guesses.

book Jotty Jail

Jotty Jail is a room in Hoppin' Heart. "Well, the walls are scribbled-over here. The way out is guarded by a snotty snail. It looks pretty well-kept-up here, so it's tricky to get out, unless you know what to look for. [jotty-bonus]."

guess-table of jotty jail is the table of jotty jail guesses.

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

book High Hub

High Hub is a room in Poppin' Part. "A locking lift offers transport, but to where? Well, you have to ask it. [if sco-bye-bub is true]You can, if you want, go back [b]DOWN[r] to[else]At first glance, you seem stuck here with the lift, which may or may not be too cryptic. Or are you? Perhaps there's a way to go back down and[end if] make more good guesses and scrounge for more clues[if delight dilute is in high hub].[paragraph break]Oh yes, that can of Delight-Dilute is still leaking slowly here. You don't need to take care of it[end if]."

guess-table of High Hub is the table of High Hub guesses.

sco-bye-bub is a truth state that varies.

sco-docking-diffed is a truth state that varies.
sco-rocking-rift is a truth state that varies.
sco-grokking-grift is a truth state that varies.
sco-shocking-shift is a truth state that varies.
sco-stocking-stiffed is a truth state that varies.
sco-mocking-miffed is a truth state that varies.

chapter locking lift

The locking lift is a rhymable in High Hub. It is scenery. "The locking lift seems to have a list of places it can go, or emotions you can express to see a new place. The unvisited ones are blurred out, of course. You can [b]READ[r] your progress so far." [?? if you got MOCKING MIFFED first, then you are in luck]

check entering lift:
	if player is in high hub, say "You need to decide where to go in the lift." instead;
	say "You take the lift back to High Hub...";
	move player to High Hub;
	the rule succeeds;

guess-table of locking lift is the table of locking lift guesses.

chapter delight dilute

the can of DELIGHT DILUTE is a boring rhymable. description is "Just staring at it makes you feel you need to trivialize what you've done so far, but you can't explain why. There's a way around it, you're sure, and you could also just move on, but all the same, sometimes you can't help but pick one last useless fight to feel like you really nailed things down."

guess-table of DELIGHT DILUTE is table of light lute guesses.

bore-text of delight dilute is "You'll need something slightly esoteric to get rid of it.".

sco-despite-dispute is a truth state that varies.

volume rooms (end)

book no new show shoe

There is a room called No New Show Shoe in Poppin' Part. "This isn't actually a shoe, of course. It's an area for performances, shaped like a horseshoe. But of course the shape doesn't matter. You need to make it viable! It's a bit worn down.". guess-table of Show Shoe is table of no new show shoe guesses. printed name of No New Show Shoe is "[if sco-crow-crew is false]No-New-Show Shoe[else]Whoah-Woo-Show Shoe[end if]".

understand "whoah/woo show/shoe" and "whoah/woo show shoe" and "whoah/woo" and "whoah woo show/shoe" and "whoah woo show shoe" as show shoe when sco-crow-crew is true.

sco-flow-flue is a truth state that varies.
sco-glow-glue is a truth state that varies.
sco-go-goo is a truth state that varies.
sco-bro-brew is a truth state that varies.
sco-stow-stew is a truth state that varies.
sco-ho-who is a truth state that varies.
sco-yo-you is a truth state that varies.
sco-crow-crew is a truth state that varies.
sco-throw-through is a truth state that varies.

chapter light lute

the light lute is a rhymable. description is "You have no clue how to play it, but it feels pretty magical.";

guess-table of light lute is the table of light lute guesses.

sco-bright-brute is a truth state that varies.
sco-right-root is a truth state that varies.

sco-kite-coot is a truth state that varies.
sco-night-newt is a truth state that varies.

section in-depth lute descriptions

report examining light lute:
	let all-strings be gold-lute-strings + silver-lute-strings;
	if all-strings is 0:
		say "It used to have some gold and silver strings, but they're replaced by regular ones now.";
		continue the action;
	say "The lute [if all-strings < 4]still [end if]has [if gold-lute-strings > 0][gold-lute-strings in words] gold string[plur of gold-lute-strings][end if][if gold-lute-strings > 0 and silver-lute-strings > 0] and [end if][if silver-lute-strings > 0][silver-lute-strings in words] silver string[plur of silver-lute-strings][end if].";
	continue the action;

to decide which number is gold-lute-strings:
	decide on 2 - (boolval of sco-right-root + boolval of sco-bright-brute);

to decide which number is silver-lute-strings:
	decide on 2 - (boolval of sco-night-newt + boolval of sco-kite-coot);

book mad most cad coast

Mad Most Cad Coast is a room in Poppin' Part. printed name is "[if sco-rad-roast is true]Had-Host Pad/Post[else]Mad-Most-Cad Coast[end if]". understand "had/host pad poast" and "had post" and "had/host pad/poast" and "host pad" as Mad Most Cad Coast when sco-rad-roast is true. "[if sco-bad-boast is false]The way west seems clear, but you sense hostility. Even looking that way raises your blood pressure. If you take a step, a voice seems to tell you it deserves to be there, but you don't[else if sco-rad-roast is false]The voice, or whatever, to the west, still seems to be pushing back. You need to go on the offensive[else]The way west is clear now[end if]. You can enter the lift to go back to the High Hub, too."

check going west in Mad Most Cad Coast: if sco-rad-roast is false, say "You can't go west with all the madness. Well, not yet." instead;

guess-table of mad most cad coast is the table of mad most cad coast guesses.

sco-rad-roast is a truth state that varies.
sco-bad-boast is a truth state that varies.

book Trite Trail

Trite Trail is west of Mad Most Cad Coast. It is in Poppin' Part. "A trite trail ends at a large body of water here. Well, sort of. It gets even more unbearable trite to the west (trust me,) so your only exit is back east to [cad coast][if white whale is in trite trail]. A [whale] seems to be taunting you in the distance. Perhaps you can go all Captain Ahab on it[end if]."

guess-table of Trite Trail is table of trite trail guesses.

the tight tail white whale is scenery in Trite Trail. printed name is "tight-tail white whale". "It splashes out of the water sometimes, mocking you. You don't know why you're supposed to defeat it, but you know you are."

sco-sight-sail is a truth state that varies.
sco-might-mail is a truth state that varies.
sco-flight-flail is a truth state that varies.
sco-right-rail is a truth state that varies.
sco-excite-exhale is a truth state that varies.

definition: a thing (called th) is whale-defeating:
	unless th is scenery, no;
	if th is white whale, no;
	yes;

after printing the locale description for trite trail when whale-score > 0 and sco-excite-exhale is false:
	say "So far you've scrounged up [a list of whale-defeating things in trite trail] for your assault on the white whale. [if whale-score is 1]It[else]They[end if][']ll be ready when needed.";
	continue the action;

chapter sceneries

a sight sail is scenery. "You don't know much about ships, but it looks ready to go, [if sco-right-rail is true]and you'd be comfortable sailing in it a while[else]though you're not sure you'd be comfortable in it too long, yet[end if]."

a flight flail is scenery. "The flight flail sits on the ground, ready for you to pick up when you need it.".

a bright brute is scenery. "The bright brute seems to be napping right now. Resting up for the big fight."

a might mail is scenery. "The might mail is too heavy to wear until you meet the white whale, but it's shiny and bright and impressive."

book Sore Souls Gore Goals / Shocking Shift

Sore Souls Gore Goals is a room in Poppin' Part. "[if sco-shore-shoals is false]It's very desolate here. No life or community of animals could last for long. Perhaps any spark of nature could change things[else]It's a more comforting place to be. You've [shoal-so-far][end if].". printed name is "[if sco-shore-shoals is false]Sore Souls['] Gore Goals[else]Shore Shoals[end if]". understand "shore/shoals" and "shore shoals" as Gore Goals when sco-shore-shoals is true.

to say shoal-so-far:
	let shoal-total be shoal-extra-animals + shoal-core-score;
	if shoal-core-score is 0:
		say "got work to do to repopulate it, though";
		continue the action;
	if shoal-core-score is 0:
		say "managed to find some exotic animals, but this place needs more regular ones";
		continue the action;
	say "[if shoal-core-score is 2]repopulated things nicely[else]got some animals back here, but the land needs more[end if]. ";
	say "[if shoal-extra-animals is 0]There's also space for some exotics[else if shoal-extra-animals is 1]You could find more exotics, too, if you wanted[else]You've even found extra odd animals for variety[end if]"


guess-table of sore souls gore goals is the table of sore souls gore goals guesses.

to decide which number is shoal-extra-animals:
	decide on boolval of sco-night-newt + boolval of sco-kite-coot;

section needed points

sco-four-foals is a truth state that varies.
sco-more-moles is a truth state that varies.
sco-shore-shoals is a truth state that varies.

section LLPs

sco-lore-lols is a truth state that varies.
sco-night-newt is a truth state that varies.
sco-bright-brute is a truth state that varies.
sco-kite-coot is a truth state that varies.

chapter red rose

a red rose is a rhymable. description is "It's a simple red rose. Just looking at it leaves you feeling protected and inspired."

to decide what number is rose-petals-remaining:
	decide on 3 - (boolval of sco-said-sos + boolval of sco-fed-foes);

report examining red rose:
	say "You notice the red rose has [rose-petals-remaining in words] particularly bright petal[plur of rose-petals-remaining][if rose-petals-remaining < 3] still remaining[end if].";
	continue the action;

sco-said-sos is a truth state that varies.
sco-head-hose is a truth state that varies.

To decide which number is rose-petals:
	decide on boolval of sco-said-sos + boolval of sco-head-hose;

guess-table of red rose is the table of red rose guesses.

book Slight Sleaze / Grokking Grift

Slight Sleaze is a room in Poppin' Part. "[if sco-bright-breeze is false]You feel a fright-freeze preventing you from going south[else if sco-plight-please is false]The fright-freeze is still around, but it's at least being blown about. However, self-serving pity stories whispered in your ear make you wonder if you really deserve to move on while they're clearly stuck here[else if sco-right-root is false]It feels nicer here, but this place could use scenery, something that may need to come from elsewhere[else]The trite trees make things feel nicer here, having replaced the fright-freeze that was here[end if].". printed name is "[if sco-right-root is false]Slight Sleaze[else]Trite Trees[end if]".

guess-table of slight sleaze is the table of slight sleaze guesses.

check going south in Slight Sleaze when sco-right-root is false: say "The fright-freeze pushes you back. You need to find a way to talk it down, somehow." instead;

sco-tight-tease is a truth state that varies.
sco-bright-breeze is a truth state that varies.
sco-plight-please is a truth state that varies.

the fright freeze is boring scenery in slight sleaze. "You can't describe it, but it stops you from going anywhere.".

the trite trees are boring scenery. "Not perfect, but not sleazy, either."

book Freak Framing Seek-Sameing

Freak Framing Seek Sameing is south of Slight Sleaze. It is in Poppin' Part. printed name is "[if sco-chic-shaming is true]Eek! Aiming![else]Freak-Framing Seek-Sameing[end if]". "This is a control center of some sort. You hear chatter, but there might even be some telepathy. [if sco-bleak-blaming is false]Most of the muttering is about how different people are at fault for things they don't even know about, and you don't know how to buttonhole that[else if sco-bred-bros is true]You've got all your arguments in one place. But you have to admit, you're not the one to perpetuate them! You need someone, or people, who will make it fun for any old crowd to change their attitudes for the better. Someone new from outside[else]Congratulations! You've made this a think tank with things actually worth thinking. The Bred Bros discuss ways to frame basic social decency and tolerance as far more desirable than 'edgy' conformism[end if]."

guess-table of freak framing seek sameing is the table of freak framing seek sameing guesses.

sco-bleak-blaming is a truth state that varies.
sco-chic-shaming is a truth state that varies.
sco-clique-claiming is a truth state that varies.

sco-bred-bros is a truth state that varies.

book Rum Route

Rum Route is a room in Poppin' Part. "[if sco-dumb-doubt is false]You seem assailed by ... well, not quite voices, here, but ideas from whoever-it-is that you deserve to be stuck here. The arguments seem brilliant and ironclad[else if sco-said-sos is false]You've pushed back and instilled doubt, but now you need to brag a bit[else if sco-umm-out is false]You feel like you can win the fight against frustration and helplessness with a snappy reply. The sort that might paralyze you[else]You see the way down now you've dispelled your own doubts. You hope you're ready to face it[sstt][end if]."

to say sstt: if slay slope is visited, say " this time"

guess-table of rum route is the table of rum route guesses.

sco-umm-out is a truth state that varies.
sco-dumb-doubt is a truth state that varies.

sco-said-sos is a truth state that varies.

book Nay Nope Slay Slope

Nay Nope Slay Slope is a room in Poppin' Part. printed name is "Nay-Nope-Slay Slope". "Thoughts of being against negativity swirl around here. Why, if you don't have positivity, you've had it! [if sco-hey-hope is false]They seem directed at you, as if to say you're the least positive person ever[else if sco-k-cope is false]Yet you see they can't totally be true, and you've boosted yourself a bit, and maybe you can boost yourself a bit more[else]But you see through them now[end if]."

guess-table of nay nope slay slope is the table of nay nope slay slope guesses.

sco-k-cope is a truth state that varies.
sco-hey-hope is a truth state that varies.

book Old End / Mocking Miffed

Old End is a room in Poppin' Part. printed name is "[if sco-bold-bend is true]Bold Bend[else]Old End[end if]". understand ["bold/bend" and] "bold bend" as Old End when sco-bold-bend is true. "[if sco-bold-bend is false]This simply looks like a dead end. What else could it be? Well, at least the lift didn't ditch you[else]The passage from the lift bends south to your destiny[end if]."

guess-table of old end is the table of old end guesses.

sco-bold-bend is a truth state that varies.
sco-trolled-trend is a truth state that varies.
sco-mold-mend is a truth state that varies.

book Drain Drat Vain Vat

Drain Drat Vain Vat is south of Old End. It is in Poppin' Part. printed name of Vain Vat is "[if sco-splain-splat is false]Drain (Drat!) Vain Vat[else]Main Mat[end if]". understand "main mat" as Drain Drat Vain Vat when sco-splain-splat is true. "[if sco-bane-bat is false]You seem stuck here, and that's that. Maybe if you had something to help bash your way out[else if sco-flain-flat is false]You're still stuck in the vat for now. You're not sure how to get out, but once you are, you suspect your bane bat will do the trick[else if sco-splain-splat is false]The south wall looks shaky, but you don't have the strength to bash it by yourself. Perhaps a taunt would bring enemy henchmen busting through it[else]The way south is open now, thanks to the Pred Pros[end if]."

check going south in Vain Vat:
	if sco-splain-splat is false, say "You don't have the confidence yet. You need to make a bold statement." instead;
	if sco-fed-foes is false, say "The Pred Pros aren't going to leave without something to show for their work." instead;

check going in Vain Vat:
	if sco-flain-flat is false, say "You're still stuck in the vain vat. You need to get out. But it can't be too bad." instead;
	if Pred Pros are in vain vat, say "Running from the Pred Pros would be unwise. Your rose's protection would wear off." instead;

guess-table of drain drat vain vat is the table of drain drat vain vat guesses.

sco-bane-bat is a truth state that varies.
sco-flain-flat is a truth state that varies.
sco-splain-splat is a truth state that varies.

chapter Pred Pros

the Pred Pros are a plural-named rhymable. guess-table of Pred Pros is table of red rose guesses. "Unfortunately, the Pred Pros also block the way south, their faces encased in head hose. The aura from your erstwhile red rose still protects you.". description is "They haven't attacked you yet. They aren't, like, obviously snarling under the head hose. Maybe you can do something for them to make peace."

the head hose is scenery. "It obscures the Pred Pros['] faces, but they can still breathe."

sco-fed-foes is a truth state that varies.

book Threat Three Met ME

Threat Three Met Me is south of Drain Drat Vain Vat. It is in Poppin' Part. printed name is "[if marquee-score < 3]Market Marquee[else]Threat Three Met Me[end if]". "[if marquee is moot]The marquee has crumbled. All that's left is desolation and your final enemy[else]A market marquee stands here, maybe giving you some clues as to how to do things[end if]."

guess-table of threat three met me is the table of threat three met me guesses.

chapter market marquee

the market marquee is a rhymable in Threat Three Met Me. "It seems to offer some clues:[line break][fixed letter spacing][marquee-clues][run paragraph on][variable letter spacing]". it is scenery.

guess-table of market marquee is table of market marquee guesses.

to say marquee-clues:
	say "[if sco-fret-free is true]----[line break][else]GLEE?[end if]";
	say "[if sco-set-see is true]----[line break][else]TREE?[end if]";
	say "[if sco-yet-ye is true]----[line break][else]TWEE?[end if]";

report examining market marquee for the first time:
	if sco-fret-free is false, say "GLET. ";
	if sco-set-see is false, say "TRET. ";
	if sco-yet-ye is false, say "TWET. ";
	say "Not [if marquee-score is 2]a word[else]words[end if][if marquee-score > 1]. But what you solved made sense[end if]. There are other possibilities.";
	continue the action;

to decide which number is marquee-score:
	decide on boolval of sco-fret-free + boolval of sco-set-see + boolval of sco-yet-ye;

sco-fret-free is a truth state that varies.
sco-set-see is a truth state that varies.
sco-yet-ye is a truth state that varies.

sco-plus-plaque is a truth state that varies.

volume main engine

this is the situational-cuing-reject rule: do nothing;

this is the verb-checker rule:
	let local-ha-half be false;
	let local-post-hom be false;
	let brightness be false;
	let new-point-to-get be false;
	let global-row-check be 0;
	let hom-row be 0;
	let my-count be 0;
	let nwpc be number of words in the player's command;
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
			abide by the run-rule entry;
			if there is a core entry and idid entry is false:
				if core entry is true and nwpc > 2:
					say "You may have used too many words. Any necessary command just needs two words, no more, no less. I put this in to make sure you can't just spam guesses. It's a bit strict, but ... I wanted some cursory protection, as well as simple guidance to narrow down what you should guess.";
					the rule fails;
				up-which core entry;
				if core entry is false:
					increase lump-count by 1;
			now idid entry is true;
			now think-cue entry is false;
			if zap-core-entry is true: [must be after "process the run-rule entry" or next LLP may not register]
				blank out the core entry;
				now zap-core-entry is false;
			follow the score and thinking changes rule;
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
			process the check-rule entry;
			now vc-dont-print is false;
			if the rule failed, next;
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
		say "The Leet Learner shakes back and forth. Something you said sounded right, but it didn't feel right.";
		the rule succeeds;

volume unsorted locations

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

book eating

the can't eat unless edible rule is not listed in any rulebook.

check eating:
	if noun is pear peach, say "It looks good to eat, but it must have a higher purpose. Besides, you're not hungry." instead;
	say "You need only spiritual sustenance, not physical, in [this-game]." instead;

book taking

check taking scenery (this is the modified can't take scenery rule): say "You don't explicitly need to [b]TAKE[r] anything in [this-game]." instead;

the can't take scenery rule is not listed in any rulebook.

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

[this may be moved to PPRR common later]

the gong rules are a rulebook. the gong rules have outcomes completed, llp-remaining, and uncompleted.

a room has a rule called this-gong-rule. this-gong-rule of a room is usually the nothing-left gong rule.

a room-hint-state is a kind of value. The room-hint-states are points-left, bonus-left, and nothing-left.

player-room-allow-threshold is a room-hint-state that varies. player-room-allow-threshold is nothing-left.

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

section gong rules

[ trivially completed rooms: Bane Be Sane See, Jotty Jail (both have LLPs but can't go back), Roaring Rocks ]

[ LLPs not llp-remaining are Go Goo and Gad Gunk because it disappears when the monk does ]

this-gong-rule of hun harm fun farm is the got-cocoon rule.
this-gong-rule of warm stun storm is the got-peach rule.
this-gong-rule of TTTT is the got-peach rule.
this-gong-rule of trust track is the got-rune rule.
this-gong-rule of rare reach is the got-rune rule.
this-gong-rule of show shoe is the got-lute rule.
this-gong-rule of nnss is the got-stalk rule.
this-gong-rule of trite trail is the got-whale rule.
this-gong-rule of mad most cad coast is the got-whale rule.
this-gong-rule of sore souls gore goals is got-shoals rule.
this-gong-rule of nay nope slay slope is got-k-cope rule.
this-gong-rule of rum route is got-k-cope rule.
this-gong-rule of slight sleaze is got-framing-done rule;
this-gong-rule of freak framing seek sameing is got-framing-done rule;

this is the nothing-left gong rule: completed;

this is the got-cocoon rule:
	if sco-co-coon is false, uncompleted;
	completed;

this is the got-peach rule:
	if sco-pear-peach is false, uncompleted;
	completed;

this is the got-rune rule:
	if sco-reap-rune is false, uncompleted;
	completed;

this is the got-lute rule: [ NOTE this disallows us from getting the Go Goo after the concert ]
	if light lute is off-stage, uncompleted;
	completed;

this is the got-whale rule:
	if sco-excite-exhale is false, uncompleted;
	completed;

this is the got-shoals rule:
	if shoal-core-score is 2:
		if shoal-extra-animals < 2 or sco-lore-lols is false, llp-remaining;
		completed;
	uncompleted;

this is the got-stalk rule:
	if sco-wordy-walk is true, completed;
	if high hub is visited, llp-remaining;
	if player is in hun harm fun farm or player is in nonoon:
		if sco-reap-rune is true, completed;
	uncompleted;

this is the got-sleaze rule:
	if sco-right-root is true:
		if sco-tight-tease is false, llp-remaining;
		completed;
	uncompleted;

this is the got-framing-done rule:
	if sco-bred-bros is true:
		if sco-clique-claiming is false, llp-remaining;
		completed;
	uncompleted;

this is the got-k-cope rule:
	if sco-k-cope is true, completed;
	uncompleted;

this is the hub-done rule: [this is a bit off.]
	if sco-right-root is true and sco-tight-tease is false, llp-remaining;
	if sco-bred-bros is true and sco-clique-claiming is false, llp-remaining;
	if sco-bye-bub is false or sco-wordy-walk is false, llp-remaining;
	if player is in old end, completed;
	uncompleted;

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
	say "[this-game] is the third entry in the [pprr] series. You do not need experience [series-names] to get through succesfully.";
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

chapter swearing

after printing the locale description:
	if miss more diss door is fungible, say "Oh. The [diss door] is there. You may want to dispose of it somehow.";
	continue the action;

the miss more diss door is a rhymable. it is scenery. printed name is "miss-more-diss door". description is "It seems to be inviting you in, and yet, at the same time, pushing you away for not being quite good enough. Yet."

guess-table of miss more diss door is table of miss more diss door guesses.

sco-piss-poor is a truth state that varies.

check entering miss more diss door: say "Looking for arguments right now is pointless." instead;

check swearing obscenely:
	if roaring rocks is unvisited, say "Wait until you've moved out of here. Then, cursing will give you a chance for a bonus point." instead;
	if miss more diss door is moot, say "With the [diss door] gone, [one of]a[or]another[stopping] worst-word-burst bird flies by and puts your efforts to utter shame." instead;
	if miss more diss door is fungible, say "The [diss door] rattles a menacing challenge." instead;
	if miss more diss door is off-stage:
		say "You hear a whooshing as a door swings in from nowhere. It doesn't seem to lead anywhere. Voices from behind it, though, assure you you are missing something. Using your logical skills, you deduce it is a [diss door]. While it's not going to jump you if your back is turned, it might be nice to get rid of.";
	else:
		say "The [diss door] whooshes into view again." instead;
	move miss more diss door to location of player instead;

check swearing mildly: try swearing obscenely instead;

section swear-swamp-where-womping

swear-swamp-where-womping is an action out of world.

understand the command "swear swamp where womp" as something new.

understand "swear swamp where womp" as swear-swamp-where-womping when player is not in Bane Be Sane See.

carry out swear-swamp-where-womping:
	repeat through table of verb checks:
		if check-rule entry is vc-piss-poor rule:
			if idid entry is true, say "You can only avoid swearing once." instead;
			up-min;
			now idid entry is true;
			say "You bypass any form of profanity, and the [if diss door is off-stage]unsummoned [end if][diss door], to remain above that sort of thing and gain a bonus point for your efforts. You'd have done so even if a bonus point weren't at stake.";
			follow the score and thinking changes rule;
			the rule succeeds;
	say "Oops. You should've gotten a check for a bonus point here.";
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

rule for printing a parser error (this is the default parser error notification rule):
	say "Your rhyming attempts bring up nothing. Or, if you tried a standard verb--well, this game tries to keep it simple, so you can focus on the puzzle verbs. But [b]VERBS[r] will show what you can use.";
	the rule succeeds;

volume end of game

to win-the-game:
[	if debug-state is true:
		repeat through table of verb checks:
			if idid entry is false:
				say "[w1 entry] [w2 entry] undone.";]
	increment core-score;
	if cur-max-bonus is max-bonus:
		choose row with final response rule of show-misses rule in the Table of Final Question Options;
		blank out the whole row; [don't let the player see MISSED if they got everything]
	follow the score and thinking changes rule;
	force-status;
	end the game saying "Me, Major See-Sager";
	follow the shutdown rules;

Table of Final Question Options (continued)
final question wording	only if victorious	topic		final response rule		final response activity
"see the points you [b]MISSED[r]"	true	"missed"	show-misses rule	--

this is the show-misses rule:
	if sco-plain-plea is false, say "You could've made a [b]PLAIN PLEA[r] back at the start in [sane see].";
	if sco-gad-gunk is false, say "You could've told the Mad Monk [b]GAD GUNK[r] in [roaring rocks].";
	if sco-piss-poor is false:
		if diss door is off-stage:
			say "At any point, you could've used a minor profanity such as [b]BOTHER[r] to open an item to change. [one of]The solution itself requires slightly off-color language. So if you're averse to swearing, there is another way to get a point. Type [b]MISSES[r] again to see it[or]Without using profanity, you could also have said [b]SWEAR SWAMP WHERE WOMP[r][stopping].";
		else:
			say "After you swore, you could've said [b]PISS POOR[r] to [the diss door].";
	if sco-grotty-grail is false, say "You could've discovered a [b]GROTTY GRAIL[r] back in [jotty jail].";
	if sco-potty-pail is false, say "You could've discovered a [b]POTTY PAIL[r] back in [jotty jail].";
	if sco-go-goo is false, say "You could've made [b]GO GOO[r] in [show shoe].";
	if sco-bye-bub is false:
		say "You could've said [b]BYE BUB[r] in [high hub] to revisit the first rooms and pick up clue-points for good guesses.";
		say "[one of]There was also a sturdy stalk that would appear in [nnss]. Check [b]MISSES[r] again for the spoiler, if you don't want to replay or guess it[or][ww2][stopping].";
	else if sco-wordy-walk is false:
		say "[ww2].";
	if sco-night-newt is false, say "You could've summoned a [b]NIGHT NEWT[r] in [gore goals].";
	if sco-kite-coot is false, say "You could've summoned a [b]KITE COOT[r] in [gore goals].";
	if sco-tight-tease is false, say "You could've summoned [b]TIGHT TEES[r] or a [b]TIGHT TEASE[r] in [slight sleaze].";
	if sco-clique-claiming is false, say "You could've performed [b]CLIQUE CLAIMING[r] in [freak framing].";
	if sco-lore-lols is false, say "You could've performed [b]LORE LOLS[r] in [gore goals].";
	if sco-despite-dispute is false, say "You could've said [b]DESPITE DISPUTE[r] when the light loot became Delight-Dilute."

to say ww2: say "You could've had a [b]WORDY WALK[r] around the sturdy stalk that appeared in [nnss]"

volume unsorted

book people

the Frightfully Bright Bully is a person. description is "The [bully] doesn't look especially mean or conniving or thuggish. But you know they just can't stand you. It's time to face up to them."

sco-trite-t-lly is a truth state that varies.

book places

book things

volume internal map

index map with Show Shoe mapped east of TTTT.

index map with Roaring Rocks mapped east of Bane Be Sane See.

index map with Jotty Jail mapped south of Trust Track.

Index map with No New Show Shoe mapped east of TTTT.

chapter hub-ish era

index map with High Hub mapped east of No New Show Shoe.
index map with Mad Most Cad Coast mapped northwest of High Hub.

index map with Gore Goals mapped east of High Hub.
index map with Rum Route mapped north of High Hub.
index map with Slay Slope mapped east of Rum Route.

index map with Old End mapped south of High Hub.
index map with Slight Sleaze mapped east of Old End.

chapter meta stuff can go wherever

index map with Hidey House mapped north of NoNoon.

index map with Gazy Gap mapped north of Hidey House.
