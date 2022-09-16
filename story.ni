"Low-Key Learny Jokey Journey" by Some Pseudo-Dumb Dude, Oh!

volume basics

the release number is 1.

the story description is "Am (Oh!) Sham-Show".

the story headline is "Prime Pro-Rhyme Row entry 3".

release along with cover art.

release along with a website.

release along with the "Parchment" interpreter.

include Trivial Niceties by Andrew Schultz.

include Bold Final Question Rows by Andrew Schultz.

include Prime Pro Rhyme Row Common by Andrew Schultz.

include Prime Pro Rhyme Row E34 by Andrew Schultz.

include Low Key Learny Jokey Journey Tables by Andrew Schultz.

include Low Key Learny Jokey Journey Mistakes by Andrew Schultz.

include Old School Verb Total Carnage by Andrew Schultz.

entry-in-series is 3.

a thing is usually not boring.

a thing can be himher. a thing is usually not himher.

section test module(s) - not for release

include Low Key Learny Jokey Journey Tests by Andrew Schultz.

section regions

Stoppin' Start is a region.

Hoppin' Heart is a region.

Poppin' Part is a region.

section scoring

core-max is 72.

max-bonus is 14.

chapter offshoots relying on PPRR common file or PPRR universal file

this is the disable-learner-options rule: if player does not have leet learner, say "You've tried an option you can't exercise until you get a hint item. You should, shortly." instead;

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

a room has a number called spokeval. spokeval of a room is usually -1.

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
	abide by the stuck-right-now rule;
	if mrlp is Poppin' Part:
		let mrgo be map region of noun;
		if mrgo is Poppin' Part and spokeval of noun is not spokeval of location of player, say "Here around the high hub, you need to use the lift." instead;

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

chapter offshoots from the universal file

to decide whether vcp-ignore: decide no; [When do we block check-text? In VVFF, when we have Been Buggin]

chapter instead rules

to decide whether the action is procedural:
	if examining, yes;
	if lling, yes;
	no;

instead of doing something with a boring thing:
	if action is procedural, continue the action;
	say "Most things, you don't need to interact with directly.";

volume cluing

boring-box-check is a truth state that varies.

rule for supplying a missing noun when lling (this is the get readings from room rule):
	say "You scan the area[one of]. This will suffice most of the time, though you may wish to [b]LL[r] a thing that doesn't jibe with its rhymes[or][stopping].";
	if player is in roaring rocks:
		say "Hmm. There's a reading. It must relate 'Storing Stocks' to the erstwhile boring box[if mad monk is in location of player]--[b]LL MONK[r] directly if you want to[end if].";
	if from-number of location of player is -1, say "Nothing comes up. The general area here doesn't need changing." instead;
	if from-number of location of player is -3, say "Nothing comes up. The general area here has been changed enough." instead;
	show-readings (from-number of location of player) and (to-number of location of player);
	if boring-box-check is false and player has leet learner and player is in roaring rocks:
		say "[line break]The [learner] is giving a funny readout. You could maybe climb [b]UP[r] to the old rocks and get another reading.";
		now boring-box-check is true;
	reject the player's command;

to say floatfrac of (x - a number) and (y - a number):
	if remainder after dividing x by y is 0:
		say "[x / y].00";
		continue the action;
	if x < 0:
		say "-";
		now x is 0 - x;
	let temp be (x * 100) / y;
	say "[temp / 100]";
	say ".[run paragraph on]";
	let decimal be the remainder after dividing ((x * 100) / y) by 100;
	if decimal < 10, say "0";
	say "[decimal]";

check lling:
	if noun is leet learner or noun is ha half nah naff button, say "The [leet learner] can't scan itself." instead;
	if noun is lurking lump, say "The [lurking lump] is a hint item, so you can't really scan it." instead;
	if noun is the player, say "Nothing. You're the changer, not the changee." instead;
	if noun is lazy loud crazy crowd, say "They're sort of there, and while they need to be interacted with, you may wish to focus on the whole area, instead." instead;
	if noun is rho rune and player is not in NoNoon, say "The [learner] makes a weird noise. The [rune] seems to grow duller. Perhaps this is not where [the rune] is at full power." instead;
	if from-number of noun is -2, say "Nothing comes up. You don't need to change [the noun]." instead;
	if from-number of noun is -4, say "Nothing comes up. You've changed [the noun] as much as you needed to." instead;
	if to-number of noun is 0:
		show-readings (from-number of noun) and (to-number of location of player);
	else:
		show-readings (from-number of noun) and (to-number of noun);
	the rule succeeds;

to show-readings (nfrom - a number) and (nto - a number):
	if nfrom is 0:
		say "Nothing comes up.";
		continue the action;
	let optionals be false;
	if nto < 0:
		if nto > -5:
			say "UH OH! This should have been caught before.";
			continue the action;
		now nto is 0 - nto;
		now optionals is true;
	let name-length be nfrom / 5000;
	let puz-length be nto / 5000;
	let name-1 be the remainder after dividing (nfrom / 100) by 50; [hundreds digit = first word # of letters]
	let puz-1 be the remainder after dividing (nto / 100) by 50;
	let name-2 be the remainder after dividing nfrom by 100; [ones digit = second word # of letters]
	let puz-2 be the remainder after dividing nto by 100;
[	say "[name-length] [puz-length] [name-1] [name-2] [puz-1] [puz-2].";]
	let numerator be (name-length * puz-1) - (puz-length * name-1);
	let denominator be (name-length * puz-length);
	say "A dot bounces around [the learner]'s grid and winds up at ([floatfrac of numerator and denominator], ";
	now numerator is (name-length * puz-2) - (puz-length * name-2);
	now denominator is (name-length * puz-length);
	say "[floatfrac of numerator and denominator].)";
	if optionals is true, say "[line break]However, it's really dim, as if you don't need to do or think whatever there is to do or think.";

section unscannables

from-number of ha half nah naff button is -2.
from-number of leet learner is -2.
from-number of lurking lump is -2.
from-number of train tree is -2.
from-number of yourself is -2.

volume rooms (intro)

book bane be sane see

Bane Be Sane See is a room.  it is in Stoppin' Start. printed name is "Bane Be Sane, See?". "The train tree that brought you here has gotten outrageously large. It can be entered three ways. You just need to [b]READ[r] it.[paragraph break][if sco-plain-plea is true]Now you gave a plain plea, you feel more comfortable here and fully ready to move on[else]It's a bit noisy here, but maybe if you said things right, you could feel a bit more comfortable. It's probably not critical, though[end if]."

guess-table of Bane Be Sane See is table of Bane Be Sane See guesses.

from-number of bane be sane see is -1. to-number of bane be sane see is -1.

the player is in Bane Be Sane See. description of player is "Some searchin['], umm, urchin."

sco-plain-plea is a truth state that varies.
sco-choose-name is a truth state that varies. [ this variable is never explicitly used in the code as of now, but it could be. I have one for each point-scored truth-state. ]

chapter train tree

the train tree is scenery in Bane Be Sane See. "It's a big tree. [b]MAIN ME[r] is carved into it in big letters.  There are three ways to enter, none more right than the other. You may wish to [b]READ[r] what's below them."

check entering train tree: say "Which way? [b]READ[r] the tree." instead;

check opening train tree: say "You should be able to enter the tree as you please." instead;

book Roaring Rocks

Roaring Rocks is a room in Stoppin' Start. "This is a dead end. The only passage out is north. [if sco-boring-box is false]The roaring is too loud right now, though. You feel as if you'd be chased down if you ran away[else]Things are quieter now. You doubt the rocks/stocks hold any more great secrets[end if].". printed name of Roaring Rocks is "[if sco-boring-box is true]Storing Stocks[else]Roaring Rocks[end if]"

from-number of roaring rocks is 5706. to-number of roaring rocks is 5603. [ the name is roaring rocks, but it becomes storing stocks before you find the learner. ]

guess-table of Roaring Rocks is table of Roaring Rocks guesses.

understand "storing/stocks" and "storing stocks" as roaring rocks when sco-boring-box is true.

to say back-n-farm: if NNSS is visited, say "back to ";

check going north in Roaring Rocks:
	if sco-boring-box is false, say "The roaring seems to pull you back. You have something to do, to quiet it and maybe help yourself." instead;
	if boring box is not moot:
		set the pronoun it to boring box;
		say "You figure you should open the boring box before moving on." instead;
	if mad monk is off-stage:
		say "As you go on your way, who should block your way but a fervent Mad Monk? They can't be too tough, this early in the game, especially since their name's seven letters.";
		move mad monk to roaring rocks;
		the rule fails;
	if mad monk is in Roaring Rocks, say "The mad monk is blocking you right now." instead;

learner-up-rocks is a number that varies.

froms-list is a list of numbers variable. froms-list is { 5401, 5403, 5401, 5403, 5403, 5504 }.

firstpoint-list is a list of text variable. firstpoint-list is { "DANE D", "DANE DEE", "JANE G", "JANE GEE", "LANE LEE", "WAYNE WHEE" }.

name-choice-index is a number that varies. name-choice-index is 0.

check going up in roaring rocks when player has leet learner:
	if learner-up-rocks is 0:
		say "Climbing up a bit, scanning the roaring rocks gets you a readout of (-1.00, -2.00.)";
		increment learner-up-rocks;
		the rule succeeds;
	let my-from be 5504;
	let my-to be 21709;
	say "Climbing up a bit, you see the tubes that led from where you started. Readings! Yay! You note ";
	if learner-up-rocks is 1 or learner-up-rocks is 2:
		say "your choice [entry name-choice-index in firstpoint-list]";
		now my-to is entry name-choice-index in froms-list;
	else:
		say "each of the four paths for [b]DANE D, JANE G, LANE LEE,[r] and [b]WAYNE WHEE[r]";
	say ". You scan a bit where ";
	if learner-up-rocks is 1 or learner-up-rocks is 3:
		say "[b]TRAIN TREE[r]";
	 else:
		say "[b]BANE BE SANE, SEE[r]";
		now my-from is 10805;
	say " is mentioned beneath each tube. The leet learner pulses!";
	show-readings my-from and my-to;
	increment learner-up-rocks;
	if learner-up-rocks is 5, now learner-up-rocks is 0;
	the rule succeeds;

chapter boring box

the boring box is a thing. description is "Yup. It's pretty boring, which is nice in a way, because without 'interesting' locks, you can [b]OPEN[r] it with no problem.".

to-number of boring box is -4.

check opening boring box:
	say "You open the boring box, and you see a metal gadget that doesn't look very interesting at first. It's labeled as a Leet Learner, and you also note large print saying [b]DOES NOT GIVE OUTRIGHT SOLUTIONS--THAT'S ANOTHER ITEM[r].[paragraph break]There's also smaller print you can probably [b]READ[r] for instructions. As you grab the Leet Learner, the boring box disintegrates, leaving you quite interested how that happened.";
	say "[line break][i][bracket][b]NOTE:[r][i] for those who played [b][vvff][i], this is a different device from the one you got back then. It has many of the same options, but the clue readout is different.[close bracket][line break]";
	moot boring box;
	set the pronoun it to leet learner;
	now player has leet learner instead;

volume rooms (mid)

book No Nudge Slow Sludge

NNSS is north of Roaring Rocks. it is in Hoppin' Heart. printed name is "No-Nudge Slow Sludge". "[if sco-grow-grudge is false]Some [sludge] bubbles almost all around, blocking passage all ways back south[else]Paths have been cut through the [sludge] to the west, north and east, which has stopped bubbling[end if][if sturdy stalk is in NNSS]. The sturdy stalk leads back up to High Hub, as well[end if]."

from-number of nnss is 10611. to-number of nnss is 5406.

guess-table of NNSS is table of no nudge slow sludge guesses.

check going in nnss:
	if sco-grow-grudge is false and noun is not south:
		say "The [sludge] slows you up, which frustrates you. Maybe if it could annoy you the right way..." instead;

after printing the locale description when player is in NNSS and high hub is visited:
	say "It might be fun to hang around down here and mooch for good guesses, if that's your gig. But you think back to the locking lift and where [if lift-score > 0]else [end if]it could go, if you rack your brain.";
	continue the action;

chapter no nudge slow sludge (scenery)

there is thing called no nudge slow sludge. It is scenery. It is in NNSS. printed name is "no-nudge slow sludge". "[if sco-grow-grudge is false]It sure is icky! Just looking at it makes you too mad, too fast. You need the right way to be[else]It's icky, but since it's out of the way, you're no longer[end if] disgusted by [the sludge]."

from-number of slow sludge is 5406.

sco-grow-grudge is a truth state that varies.

after printing the locale description for NNSS when NNSS is unvisited:
	if guide-gong-warn is false:
		say "[i][bracket][b]NOTE:[r] [i]you don't need to go back to Roaring Rocks/Storing Stocks again. If you wish to track this sort of thing, [b]GUIDE GONG[r][i] will shut you out of completed areas, [b]STRIDE STRONG[r][i] will remove these restrictions, and [b]PRIDE PRONG[r][i] is like the gong, except it will give you a poke to visit rooms where you can still get a bonus point.[close bracket][r][line break]";
		now guide-gong-warn is true;
	continue the action;

chapter sturdy stalk

the sturdy stalk is a rhymable. it is scenery. "You can climb back up it. Apparently, it's artificial, and its creator inscribed their name: Ferdie Falk.".

from-number of sturdy stalk is 5605. to-number of sturdy stalk is -5504.

sco-wordy-walk is a truth state that varies.

guess-table of sturdy stalk is the table of sturdy stalk guesses.

book Hun Harm Fun Farm

Hun Harm Fun Farm is west of NNSS. it is in Hoppin' Heart. "The way bends north here[if sco-un-arm is false]. You hear the clash of weapons that way, though, so it feels unsafe. Maybe you can cut a way through with a surprisingly simple idea[end if]. There's also passage back east."

from-number of hun harm fun farm is 10608. to-number of hun harm fun farm is 5203.

check going north in hun harm fun farm when sco-un-arm is false: say "Unfortunately, you hear aggressive voices threatening to attack you. They have weapons, and you don't. You're not sure how to change this." instead;

guess-table of Hun Harm Fun Farm is table of hun harm fun farm guesses.

sco-un-arm is a truth state that varies.

chapter Mad Monk

the Mad Monk is a himher rhymable. "A mad monk raves here, blocking your way north. They don't look like much--they probably didn't make the cut for tormenting Lode Runners. They might be good for rope-a-doping to [if player has lurking lump]enhance the lurking lump[else]get that stronger help item you read about on the [learner][end if].". description is "Plainly dressed. They seem to have an intense attitude you could cut down, and they'd probably leave you alone."

guess-table of mad monk is the table of mad monk guesses.

from-number of mad monk is 5304. to-number of mad monk is 5304.

sco-gad-gunk is a truth state that varies.
sco-bad-bunk is a truth state that varies.
sco-sad-sunk is a truth state that varies.

book No Noon

there is a room called NoNoon in Hoppin' Heart. it is north of Hun Harm Fun Farm. printed name of NoNoon is "[if cocoon is moot]Ho, HEWN[else]No Noon[end if]". "[noon-room]". understand "ho/hewn" and "ho hewn" as NoNoon when cocoon is moot.

to say noon-room:
	if sco-mo-moon is false:
		say "The sky is completely dark here. Even a sliver of light would be helpful. You can barely see the way back south";
	else if sco-so-soon is false:
		say "The moon provides some light, at least, but there should be more";
	else if sco-crow-croon is false:
		say "Daybreak must be coming soon! You just need a sign from nature, but -- not the usual one for sunrise";
	else:
		say "It's quite bright here now! The rocky terrain surrounding this valley is carved with all sorts of mysterious glyphs beyond your comprehension. Peace is restored, so all that's left to do is go back south";
		continue the action;
	if sco-mo-moon is true, say ". Now there's a bit more light, you see there aren't any hidden passages, and back south really is the only way out."

understand "no/noon" and "no noon" as NoNoon.

guess-table of nonoon is the table of nonoon guesses.

from-number of nonoon is 5204. to-number of nonoon is 5204.

sco-go-goon is a truth state that varies.
sco-co-coon is a truth state that varies.
sco-mo-moon is a truth state that varies.
sco-so-soon is a truth state that varies.
sco-crow-croon is a truth state that varies.

understand "no/noon" and "no noon" as NoNoon.
understand "show/shewn" and "show shewn" as NoNoon when cocoon is moot.

after printing the locale description when location of player is NoNoon:
	if sco-go-goon is false:
		say "You feel the presence of something bad here[if sco-reap-rune is false], and worse, you feel helpless to fight it, for now. But perhaps trying incantations and such will help you out for later[end if].";
	continue the action;

the cocoon is a thing. "The cocoon you summoned still lies here.". description is "It's lying here, ready to open, if enough time passes."

from-number of cocoon is 5204.

book One Warm Stun Storm

there is a room called One Warm Stun Storm in Hoppin' Heart. It is north of NNSS. "[if sco-fun-form is true]It's calm here now. You can go north and south[else]A storm is raging ahead to the north, though it's all very calm to the south[end if]. [if sco-done-dorm is false]And you don't even have a prospect of shelter. Yet[else if sco-fun-form is false]At least the done dorm you summoned could give shelter[else]You also note the done dorm that helped you stay out the storm[end if].". printed name is "One Warm Stun-Storm".

from-number of one warm stun storm is 10709. to-number of one warm stun storm is 5404.

sco-done-dorm is a truth state that varies.
sco-fun-form is a truth state that varies.

check going north in One Warm Stun Storm:
	if sco-fun-form is false, say "You feel your will sapped as you attempt to go north. You'll need to sit out the storm first." instead;

guess-table of One Warm Stun Storm is table of one warm stun storm guesses.

chapter done dorm

the done dorm is scenery. "[if sco-fun-form is true]You have good memories of your stay in the done dorm, but that part of your adventure's over now.[else]It looks like such a nice place to spend time. You wonder if you are exciting or interesting enough to. How would you apply for residence correctly?[end if]"

from-number of done dorm is 5404. [to-number folds into OWSS once done dorm appears]

check entering done dorm: say "[if sco-fun-form is false]You must apply correctly to enter[else]You already spent enough time there[end if]." instead;

book Tree Trunk

carry out going to TTTT when TTTT is unvisited:
	say "You were a bit too pleased you got away from the storm, and you couldn't help looking back to make sure it was over. And as you did, you ran into a rather large tree trunk, with a THUNK. Well, maybe with the way things are here, it was meant to happen.";

TTTT is north of One Warm Stun Storm. printed name is "The (Thunk!) Tree Trunk". it is in Hoppin' Heart. "Passage any way except back south is too dense here. The tree trunk you ran into still stands here, [if sco-see-sunk is false]and you wish you could cut it down to size as revenge for running into it[else if sco-gee-junk is false]and now you cut it down to size, there's got to be something in it, if you just look right[else if sco-pear-peach is true]and maybe you can figure what [fruit] to get[else]completely looted[end if]."

from-number of TTTT is 10710. to-number of TTTT is 5304.

guess-table of TTTT is table of Thunk Tree Trunk guesses.

sco-see-sunk is a truth state that varies.
sco-gee-junk is a truth state that varies.

sco-whee-woot is a truth state that varies.
sco-pear-peach is a truth state that varies.

chapter Tree Trunk

the Thunk Tree Trunk is scenery in TTTT. "[if sco-gee-junk is true]Nothing besides the [FRUIT] is in the tree trunk[else if sco-see-sunk is true]You get the feeling something semi-valuable could be in the tree trunk, if you just asked right[else]The tree trunk is tough to climb, but it's wide. Perhaps you could make it a little less intimidating[end if].". printed name of Thunk Tree Trunk is "(thunk) tree trunk".

from-number of Thunk Tree Trunk is 10710.

chapter Free Fruit

Free Fruit is a rhymable. it is scenery. "It's covered in odd hybrid fruits but offers no clue as to which is best for you.". printed name is "[b]FREE FRUIT[r]".

check taking free fruit: say "Best to figure out what's in it, or what it can produce." instead;

guess-table of free fruit is the table of free fruit guesses.

from-number of free fruit is 5405. to-number of free fruit is 5404.

chapter pear peach

the pear peach is a thing. description is "It looks like a cross between a pear and a peach, with two bumps where the circumference gets larger instead of one, and the sort of orangish coloring in some spots and the light greenish pear coloring in others.".

from-number of pear peach is 5405. to-number of pear peach is 5405.

book Trust Track

Trust Track is east of NNSS. it is in Hoppin' Heart. "You're in a sort of earthy canyon, [if sco-crust-crack is true]though you created a passage north to complement the one west[else if sco-bussed-back is true]and with Just Jack no longer here to discourage you, you're wondering if you can create another passage[else]with the only apparent way out being back west[end if]."

guess-table of trust track is table of trust track guesses.

from-number of trust track is 5505. to-number of trust track is 5604.

chapter Just Jack

Just Jack is a thing in Trust Track. "[one of]'Hi! I'm Just Jack. you can totally trust me that there are no other passages here. In fact, I'd be offended if you looked for them while I was still here. Not that you're getting rid of me.'[or]Just Jack waits here, making sure you trust his 'advice' enough not to look for any other passages.[stopping]".

from-number of just jack is 5404.

description of Just Jack is "He is just sitting around here with no better place to be. Or no less awful place. He's not going to go anywhere on his own, that's for sure.".

chapter Sus Sack

the sus sack is a rhymable. description is "What could be in the sus sack? It feels both light and heavy at the same time, both practical and impractical."

guess-table of sus sack is table of sus sack guesses.

from-number of sus sack is 5304. to-number of sus sack is 5406.

check opening sus sack: say "This far into [this-game], you suspect you have to figure what's in the sack to get it to open right." instead;

sco-plus-plaque is a truth state that varies.

sco-bussed-back is a truth state that varies.
sco-crust-crack is a truth state that varies.

book Rare Reach

Rare Reach is in Hoppin' Heart. printed name of Rare Reach is "[if sco-bare-beach is true]Bare Beach[else]Rare Reach[end if]". "You're surrounded by [if sco-bare-beach is true]water[else]desolation[end if] every direction except south.". Trust Track is mapped south of Rare Reach. nowhere is mapped north of Trust Track.

guess-table of rare reach is the table of rare reach guesses.

from-number of rare reach is 5405. to-number of rare reach is 5405.

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

from-number of deep dune is 5404. to-number of deep dune is 5404.

chapter Rho Rune

the Rho Rune is a rhymable. description is "It's shaped like the Greek letter Rho. So I guess it has both ancient mystique and modern power, or something."

guess-table of Rho Rune is table of nonoon guesses.

from-number of rho rune is 5304.

book Jotty Jail

Jotty Jail is a room in Hoppin' Heart. "Well, the walls are scribbled-over here. The way out is guarded by a snotty snail. It looks pretty well-kept-up here, so it's tricky to get out, unless you know what to look for. [jotty-bonus]."

from-number of jotty jail is 5504. to-number of jotty jail is 5604.

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

volume rooms (end)

a liftroom is a kind of room.

book the hub

understand "high hub" as lifttaking when high hub is visited.

lifttaking is an action applying to nothing.

carry out lifttaking:
	if player is in high hub, say "You're already here!" instead;
	abide by the stuck-right-now rule;
	say "You [if locking lift is not fungible]walk back and [end if]take the locking lift back to High Hub.";
	take-lift High Hub;

part High Hub

High Hub is a room in Poppin' Part. "A locking lift offers transport, but to where? Well, you have to ask it. [if sco-bye-bub is true]You can, if you want, go back [b]DOWN[r] to[else]At first glance, you seem stuck here with the lift, which may or may not be too cryptic. Or are you? Perhaps there's a way to go back down and[end if] make more good guesses and scrounge for more clues[if delight dilute is in high hub].[paragraph break]Oh yes, that can of Delight-Dilute is still leaking slowly here. You don't need to take care of it[end if]."

guess-table of High Hub is the table of High Hub guesses.

from-number of high hub is 5403. to-number of high hub is -5303.

sco-bye-bub is a truth state that varies.

sco-docking-diffed is a truth state that varies.
sco-rocking-rift is a truth state that varies.
sco-grokking-grift is a truth state that varies.
sco-shocking-shift is a truth state that varies.
sco-gawking-gift is a truth state that varies.
sco-mocking-miffed is a truth state that varies.

chapter locking lift

The locking lift is a rhymable in High Hub. It is scenery. "The locking lift seems to have a list of places it can go, or emotions you can express to see a new place. The unvisited ones are blurred out, of course. You can [b]READ[r] your progress so far." [?? if you got MOCKING MIFFED first, then you are in luck]

check going inside when locking lift is in location of player: try entering lift instead;

check entering locking lift:
	if player is in high hub, say "You need to decide where to go in the lift." instead;
	say "You take the lift back to High Hub...";
	take-lift high hub;
	the rule succeeds;

guess-table of locking lift is the table of locking lift guesses.

from-number of locking lift is 5704. to-number of locking lift is 28724.

chapter delight dilute

the can of DELIGHT DILUTE is a boring rhymable. description is "Just staring at it makes you feel you need to trivialize what you've done so far, but you can't explain why. There's a way around it, you're sure, and you could also just move on, but all the same, sometimes you can't help but pick one last useless fight to feel like you really nailed things down.". printed name is "can of [b]DELIGHT DILUTE[r]".

guess-table of DELIGHT DILUTE is table of light lute guesses.

from-number of delight dilute is 5706. to-number of delight dilute is -5707.

bore-text of delight dilute is "You'll need something slightly esoteric to get rid of it.".

sco-despite-dispute is a truth state that varies.

book spoke 0 / Shocking Shift

part Sore Souls Gore Goals

Sore Souls Gore Goals is a room in Poppin' Part. "[if sco-shore-shoals is false]It's very desolate here. No life or community of animals could last for long. Perhaps any spark of nature could change things[else]The shore shoals are a more comforting place to be than before. You've [shoal-so-far][end if]. You sense you would [if sco-shore-shoals is true]fade into the nothingness[else]violate something sacred[end if] if you explored further.". printed name is "[if sco-shore-shoals is false]Sore Souls['] Gore Goals[else]Shore Shoals[end if]". understand "shore/shoals" and "shore shoals" as Gore Goals when sco-shore-shoals is true. spokeval of Sore Souls is 0.

from-number of sore souls gore goals is 10810. to-number of sore souls gore goals is 5506.

to say shoal-so-far:
	let shoal-total be shoal-extra-animals + shoal-core-score;
	if shoal-total is 0:
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

section night newt

the night newt is scenery. description is "It blends in well, so you can't see it. But you know it's there.". from-number of night newt is -4.

section kite coot

the kite coot is scenery. description is "It's an odd bird, for sure. You should leave it to do its own thing, now you summoned it.". from-number of kite coot is -4.

chapter red rose

a red rose is a rhymable. description is "It's a simple red rose. Just looking at it leaves you feeling protected and inspired."

from-number of red rose is 5304. to-number of red rose is 21717.

to decide what number is rose-petals-remaining:
	decide on 4 - (boolval of sco-said-sos + boolval of sco-fed-foes + boolval of sco-thread-throws);

report examining red rose:
	say "You notice the red rose has [rose-petals-remaining in words] particularly bright petal[plur of rose-petals-remaining][if rose-petals-remaining < 3] still remaining[end if].";
	continue the action;

sco-said-sos is a truth state that varies.
sco-head-hose is a truth state that varies.

To decide which number is rose-petals:
	decide on boolval of sco-said-sos + boolval of sco-head-hose;

guess-table of red rose is the table of red rose guesses.

book spoke 1 / rocking rift

part no new show shoe

There is a liftroom called No New Show Shoe in Poppin' Part. "This isn't actually a shoe, of course. It's an area for performances, shaped like a horseshoe. But of course the shape doesn't matter. The locking lift is here, too[if shoe-concessions is 2 and sco-throw-through is false], and trust me on this--if you re-enter it, time will freeze here, so nobody's left hanging[end if].[paragraph break][shoe-desc].". printed name of No New Show Shoe is "[if sco-crow-crew is false]No-New-Show Shoe[else]Whoah-Woo-Show Shoe[end if]". spokeval of Show Shoe is 1.

guess-table of Show Shoe is table of no new show shoe guesses.

from-number of no new show shoe is 10607. to-number of no new show shoe is 10808. [ start with flow flue/glow glue ]

understand "whoah/woo show/shoe" and "whoah/woo show shoe" and "whoah/woo" and "whoah woo show/shoe" and "whoah woo show shoe" as show shoe when sco-crow-crew is true.

to say shoe-desc:
	if sco-throw-through is true:
		say "The crowd has gone. There's not much left to do here[if sco-go-goo is false], but you sense you could conjure up some oddly-named supplies for the next performance[end if]";
		continue the action;
	if shoe-storage is 0:
		say "However, the infrastructure for a big performance simply isn't here yet";
		continue the action;
	else if shoe-storage is 1:
		say "You've got some supplies for crowd accomodations (the [if sco-flow-flue is true]flow flue[else]glow glue[end if],) but you need more to build infrastructure";
		continue the action;
	say "You've built infrastructure to store consumables with the flow flue and glow glue";
	if shoe-concessions is 0:
		say ". Unfortunately, the infrastructure contains no concessions a crowd would appreciate";
		continue the action;
	else if shoe-concessions is 1:
		say ". There's still room for [if sco-bro-brew is true]food[else]drink[end if]";
		continue the action;
	else:
		say ". The brew and stew there should sustain the crowd nicely";

after printing the locale description when player is in Show Shoe and sco-throw-through is false (this is the show shoe extra 1 rule):
	if sco-crow-crew is false, say "There are no performers yet[if lazy loud crazy crowd is off-stage], either[end if]. What could the group's name be?";
	if sco-go-goo is true and sco-throw-through is false, say "[if sco-crow-crew is false][line break][end if]There's also a pile of 'nutritious' 'energetic' Go Goo that event-goers will snap up.";
	continue the action;

sco-flow-flue is a truth state that varies.
sco-glow-glue is a truth state that varies.
sco-go-goo is a truth state that varies.
sco-bro-brew is a truth state that varies.
sco-stow-stew is a truth state that varies.
sco-ho-who is a truth state that varies.
sco-yo-you is a truth state that varies.
sco-crow-crew is a truth state that varies.
sco-throw-through is a truth state that varies.

chapter lazy loud crazy crowd

the lazy loud crazy crowd is a thing. "A lazy loud crazy crowd waits here for entertainment. You're the one to provide it!". description is "[if sco-ho-who is false]The lazy loud crazy crowd that's built up is ready to be asked if they are ready to make some noise and get this party started. Except, well, a lot more succinctly.[else if sco-yo-you is false]The lazy loud crazy crowd, having expressed their willingness to raise the roof figuratively, seeks reassurance.[else]The lazy loud crazy crowd is hyped for the main performance!"

to-number of lazy loud crazy crowd is -2.

chapter Crow Crew

the Crow Crew is a thing. "The Crow Crew waits in the, um, wings to be properly introduced.". description is "They are high-fiving and discussing their dopest moves for whatever performance they're aiming to give."

from-number of crow crew is 5404. to-number of crow crew is 5507.

chapter light lute

the light lute is a rhymable. description is "You have no clue how to play it, but it feels pretty magical.";

guess-table of light lute is the table of light lute guesses.

from-number of light lute is 5504. to-number of light lute is 11109.

sco-bright-brute is a truth state that varies.
sco-right-root is a truth state that varies.

sco-kite-coot is a truth state that varies.
sco-night-newt is a truth state that varies.

section in-depth lute descriptions

to decide which number is lute-strings: decide on gold-lute-strings + silver-lute-strings;

report examining light lute:
	if lute-strings is 0:
		say "The lute used to have some gold and silver strings, but they're replaced by regular ones now.";
		continue the action;
	say "The lute [if lute-strings < 4]still [end if]has [if gold-lute-strings > 0][gold-lute-strings in words] gold string[plur of gold-lute-strings][end if][if gold-lute-strings > 0 and silver-lute-strings > 0] and [end if][if silver-lute-strings > 0][silver-lute-strings in words] silver string[plur of silver-lute-strings][end if].";
	continue the action;

to decide which number is gold-lute-strings:
	decide on 2 - (boolval of sco-right-root + boolval of sco-bright-brute);

to decide which number is silver-lute-strings:
	decide on 2 - (boolval of sco-night-newt + boolval of sco-kite-coot);

book spoke 2 / Gawking Gift

part Rum Route

Bum Bout Rum Route is a liftroom in Poppin' Part. "[if sco-dumb-doubt is false]You seem assailed by ... well, not quite voices, here, but ideas from whoever-it-is that you deserve to be stuck here. The arguments seem brilliant and ironclad[else if sco-said-sos is false]You've pushed back and instilled doubt, but now you need to brag a bit[else if sco-umm-out is false]You feel like you can win the fight against frustration and helplessness with a snappy reply. The sort that might paralyze you[else]You see the way down now you've dispelled your own doubts. You hope you're ready to face it[sstt][end if]. Thankfully, the lift here can take you back to the High Hub.". spokeval of Rum Route is 2. printed name of Rum Route is "[if sco-umm-out is false]Bum-[']Bout Rum Route[else]Numb? NOWT![end if]".

understand "numb/nowt" and "numb nowt" as Rum Route when sco-umm-out is true.

to say sstt: if slay slope is visited, say " this time"

guess-table of Bum Bout Rum Route is the table of bum bout rum route guesses.

from-number of bum bout rum route is 10609. to-number of bum bout rum route is 5405.

sco-umm-out is a truth state that varies.
sco-dumb-doubt is a truth state that varies.

sco-said-sos is a truth state that varies.

part Nay Nope Slay Slope

Nay Nope Slay Slope is a liftroom in Poppin' Part. printed name is "[if sco-hey-hope is false]Nay-Nope-Slay Slope[else]Eh-[']Ope Day, Dope![end if]". "Thoughts of being against negativity swirl around here. Why, if you don't have positivity, you've had it! [if sco-hey-hope is false]They seem directed at you, as if to say you're the least positive person ever[else if sco-k-cope is false]Yet you see they can't totally be true, and you've boosted yourself a bit, and maybe you can boost yourself a bit more[else]But you see through them now. You can move on. There is passage down[end if].". spokeval of Slay Slope is 2.

Rum Route is mapped above Slay Slope. nowhere is mapped below Rum Route.

guess-table of nay nope slay slope is the table of nay nope slay slope guesses.

from-number of nay nope slay slope is 10709. to-number of nay nope slay slope is 5304.

sco-k-cope is a truth state that varies.
sco-hey-hope is a truth state that varies.

book spoke 3 / Grokking Grift

part Slight Sleaze

Slight Sleaze is a liftroom in Poppin' Part. "[if sco-bright-breeze is false]You feel a fright-freeze preventing you from going south. A change in the weather would be nice[else if sco-plight-please is false]The fright-freeze is still around, but it's at least being blown about. However, self-serving pity stories whispered in your ear make you wonder if you really deserve to move on while they're clearly stuck here[else if sco-right-root is false]It feels nicer here, but this place could use scenery, something that may need to come from elsewhere[else]The trite trees make things feel nicer here, having replaced the fright-freeze that was here, and they surround you every way except to the south[end if].[paragraph break]Of course, you can always enter the locking lift to return to the High Hub.". printed name is "[if sco-right-root is false]Slight Sleaze[else]Trite Trees[end if]". spokeval of Slight Sleaze is 3.

guess-table of slight sleaze is the table of slight sleaze guesses.

from-number of slight sleaze is 5606. to-number of slight sleaze is 5606.

sco-tight-tease is a truth state that varies.
sco-bright-breeze is a truth state that varies.
sco-plight-please is a truth state that varies.

chapter fright freeze

the fright freeze is boring scenery in slight sleaze. "You can't describe it, but it stops you from going anywhere.".

from-number of fright freeze is 5606.

the trite trees are boring scenery. "Not perfect, but not sleazy, either. They surround you on all sides except to the south."

to-number of trite trees is -4.

part Freak Framing Seek-Sameing

Freak Framing Seek Sameing is a liftroom in Poppin' Part. printed name is "[if sco-chic-shaming is true]Eek! Aiming![else]Freak-Framing Seek-Sameing[end if]". "This is a control center of some sort. You hear chatter, but there might even be some telepathy. [if sco-bleak-blaming is false]Most of the muttering is about how different people are at fault for things they don't even know about, and you don't know how to buttonhole that[else if sco-bred-bros is false]You've got all your arguments in one place. But you have to admit, you're not the one to perpetuate them! You need someone, or people, who will make it fun for any old crowd to change their attitudes for the better. Someone new from outside[else]Congratulations! You've made this a think tank with things actually worth thinking. The Bred Bros discuss ways to frame basic social decency and tolerance as far more desirable than 'edgy' conformism[end if].". spokeval of Freak Framing is 3.

guess-table of freak framing seek sameing is the table of freak framing seek sameing guesses.

from-number of freak framing seek sameing is 10914. to-number of freak framing seek sameing is 5507.

Slight Sleaze is mapped north of Seek Sameing. Nowhere is mapped south of Slight Sleaze.

sco-bleak-blaming is a truth state that varies.
sco-chic-shaming is a truth state that varies.
sco-clique-claiming is a truth state that varies.

sco-bred-bros is a truth state that varies.

book spoke 4 / docking diffed

part mad most cad coast

Mad Most Cad Coast is a liftroom in Poppin' Part. printed name is "[if sco-rad-roast is true]Pad Post-Had-Host[else]Mad-Most-Cad Coast[end if]". understand "had/host pad poast" and "had post" and "had/host pad/poast" and "host pad" as Mad Most Cad Coast when sco-rad-roast is true. "[if sco-bad-boast is false]You are driven mad with all the possible ways to go here. I mean, it's the coast, so you don't want to jump in the water, but you're not focused enough[else if sco-rad-roast is false]Your mind's a bit calmer now, but not calm enough[else]The way west is clear now, and you can't imagine there's much left to do here[end if]. The lift awaits for it you wish to return to the High Hub.". spokeval of Cad Coast is 4.

check going west in Mad Most Cad Coast: if sco-rad-roast is false, say "You can't go west with all the madness. Well, not yet." instead;

guess-table of mad most cad coast is the table of mad most cad coast guesses.

from-number of mad most cad coast is 10609. to-number of mad most cad coast is 5305.

sco-rad-roast is a truth state that varies.
sco-bad-boast is a truth state that varies.

part Trite Trail

Trite Trail is in Poppin' Part. "A trite trail ends at a large body of water here. Well, sort of. It gets even more unbearable trite to the west (trust me,) so your only exit is back east to [cad coast][if white whale is in trite trail]. A [whale] seems to be taunting you in the distance. Perhaps you can go all Captain Ahab on it[end if].". spokeval of Trite Trail is 4.

Mad Most Cad Coast is mapped east of Trite Trail. nowhere is mapped west of Mad Most Cad Coast.

guess-table of Trite Trail is table of trite trail guesses.

from-number of trite trail is 5505. to-number of trite trail is 16613.

the tight tail white whale is scenery in Trite Trail. printed name is "tight-tail white whale". "It splashes out of the water sometimes, glaring at you as if to say you're lucky it can't swim in shallow water. You don't know why you're supposed to defeat it, but you know you are."

from-number of white whale is 11009.

sco-sight-sail is a truth state that varies.
sco-might-mail is a truth state that varies.
sco-flight-flail is a truth state that varies.
sco-right-rail is a truth state that varies.
sco-excite-exhale is a truth state that varies.
sco-thread-throws is a truth state that varies.

definition: a thing (called th) is whale-defeating:
	unless th is scenery, no;
	if th is white whale or th is bright brute, no;
	yes;

after printing the locale description for trite trail when whale-score > 0 and sco-excite-exhale is false:
	say "So far you've scrounged up [a list of whale-defeating things in trite trail] for your assault on the white whale. [if whale-score is 1]It[else]They[end if][']ll be ready when needed.";
	if bright brute is off-stage:
		say "[line break]You could probably use an ally with bulk. You don't see any around.";
	else if bright brute is fungible:
		say "[line break]The bright brute wanders about happily. It seems ready but not anxious.";
	cue-excite-exhale;
	continue the action;

to cue-excite-exhale:
	if whale-score is 5:
		say "[line break]You've got to be close now! Psyching yourself up to defeat [the whale] will require something big. Perhaps two words with more than one syllable each. You need to get psyched, then you need to relax, and you'll know what to do next.";

to cue-thread-throws: if player does not have red rose, say "[line break]You feel as though you may need outside help for your hunting expedition. Help you don't have yet.";

chapter sceneries

a sight sail is scenery. "You don't know much about ships, but it looks ready to go, [if sco-right-rail is true]and you'd be comfortable sailing in it a while[else]though you're not sure you'd be comfortable in it too long, yet[end if]."

to-number of sight sail is -4.

a flight flail is scenery. "The flight flail sits on the ground, ready for you to pick up when you need it.".

to-number of flight flail is -4.

some might mail is scenery. "The might mail is too heavy to wear until you meet the white whale, but it's shiny and bright and impressive."

to-number of might mail is -4.

a bright brute is scenery. "The bright brute seems to be napping right now. Resting up for the big fight."

to-number of bright brute is -4.

book Mocking Miffed / spoke 5

part Old End

Old End is a room in Poppin' Part. printed name is "[if sco-bold-bend is true]Bold Bend[else]Old End[end if]". understand ["bold/bend" and] "bold bend" as Old End when sco-bold-bend is true. "[old-end-desc].". spokeval of Old End is 5.

to say old-end-desc:
	if sco-bold-bend is false:
		say "This simply looks like a dead end. What else could it be? Well, at least the lift is there, if you can't figure things right now";
	else if sco-trolled-trend is false:
		say "The bold bend you envisioned runs from south to east. But you're not sure which part of the bend you should take. You need to name the malevolence you feel vaguely. Then you will know what to look for, and you can search more accurately";
	else if sco-mold-mend is false:
		say "You're pretty sure you want to go south instead of east along the bend, but you're not mentally prepared yet";
	else:
		say "The bend curves east to nowhere and south to your destiny";

check going in Old End:
	if sco-bold-bend is false, say "But this is a dead end. For now." instead;
	if sco-trolled-trend is false:
		if noun is south or noun is east, say "You can't tell which way is right. You need to listen for some source of meanness or nastiness or something." instead;
	if sco-mold-mend is false:
		if noun is south, say "You still feel a bit hurt by the trolling you were exposed to." instead;
		if noun is east, say "You can't run away from the trolling! Somehow, you need to restore your psyche and go east." instead;
	if noun is east, say "No. South is the way." instead;

guess-table of old end is the table of old end guesses.

from-number of old end is 5303. to-number of old end is 5404.

sco-bold-bend is a truth state that varies.
sco-trolled-trend is a truth state that varies.
sco-mold-mend is a truth state that varies.

part Drain Drat Vain Vat

Old End is north of Drain Drat Vain Vat. Drain Drat Vain Vat is in Poppin' Part. printed name of Vain Vat is "[if sco-splain-splat is false]Drain (Drat!) Vain Vat[else]Main Mat[end if]". understand "main mat" as Drain Drat Vain Vat when sco-splain-splat is true. description of Vain Vat is "[if sco-bane-bat is false]You seem stuck here, and that's that. Maybe if you had something to help bash your way out[else if sco-flain-flat is false]You're still stuck in the vat for now. You're not sure how to get out, but once you are, you suspect your bane bat will do the trick[else if sco-splain-splat is false]The walls look shaky, but you can't find a weak point. Perhaps a taunt would bring enemy henchmen busting said weak spot[else]The way south is open now, thanks to the Pred Pros[end if].". spokeval of Vain Vat is 5. south of Old End is nowhere.

check going in Vain Vat:
	if sco-flain-flat is false, say "You're still stuck in the vain vat. You need to get out. But it can't be too bad." instead;
	if noun is not north and sco-splain-splat is false, say "While you could go back north, there must be enemies hidden behind some secret wall. How to draw attention to yourself to bring them out?" instead;
	if Pred Pros are in vain vat:
		if noun is south, say "The Pred Pros aren't going to leave without something to show for their work." instead;
		if noun is north, say "Running from the Pred Pros would be unwise. Your rose's protection would wear off." instead;
		say "There's no extra secret wall. You can and should stay and tackle the [pros]." instead;

guess-table of drain drat vain vat is the table of drain drat vain vat guesses.

from-number of drain drat vain vat is 10907. to-number of drain drat vain vat is 5403.

sco-bane-bat is a truth state that varies.
sco-flain-flat is a truth state that varies.
sco-splain-splat is a truth state that varies.

chapter Pred Pros

the Pred Pros are a plural-named rhymable. guess-table of Pred Pros is table of red rose guesses. "Unfortunately, the Pred Pros also block the way south, their faces encased in head hose. The aura from your erstwhile red rose still protects you.". description is "They haven't attacked you yet. They aren't, like, obviously snarling under the head hose. Maybe you can do something for them to make peace."

from-number of Pred Pros is 5404. to-number of Pred Pros is 5304.

the head hose is scenery. "It obscures the Pred Pros['] faces, but they can still breathe."

from-number of head hose is 5404. to-number of head hose is 5304.

sco-fed-foes is a truth state that varies.

part Threat Three Met ME

Threat Three Met Me is in Poppin' Part. printed name is "[if marquee-score < 3]Market Marquee[else]Threat Three Met Me[end if]". "[if marquee is moot]The marquee has crumbled, its rubble blocking the way back north. This is it[else]A market marquee stands here, maybe giving you some clues as to how to do things[end if]. [if sprite is off-stage]You could go back north if you really wanted, but perhaps you'll want to finish things here[else]You feel stuck here in the final encounter[end if].". spokeval of Threat Three is 5.

from-number of threat three met me is 5607. to-number of threat three met me is 16009.

Drain Drat Vain Vat is mapped north of Threat Three Met Me. nowhere is mapped south of Drain Drat Vain Vat.

check going north in Threat Three Met Me when sprite is in Threat Three Met Me: say "The fallen marquee sealed off the way back north." instead;

guess-table of threat three met me is the table of threat three met me guesses.

after printing the locale description for Threat Three when Threat Three is unvisited:
	if lump-charges is 1:
		ital-say "there are enough good guesses in this room to get an additional lump charge for the final puzzle, which is meant to be tricky.";
	else:
		ital-say "you can make enough good guesses from the room name to [if lurking lump is off-stage]get a hint item that will spoil the tricky final puzzle[else]recharge your lurking lump[end if], so you'll be prevented from going back once your enemy appears.";
		if lump-count < next-lump-level - 7:
			now lump-count is next-lump-level - 7;
	continue the action;

chapter market marquee

the market marquee is a rhymable in Threat Three Met Me. "It seems to offer some clues:[line break][fixed letter spacing][marquee-clues][run paragraph on][variable letter spacing]". it is scenery.

guess-table of market marquee is table of market marquee guesses.

from-number of market marquee is 5607.

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

chapter Burning Bright Spurning Sprite

there is a himher thing called the Burning Bright Spurning Sprite.

[the Frightfully Bright Bully is a himher thing. description is "The [bully] doesn't look especially mean or conniving or thuggish. But you know they just can't stand you. It's time to face up to them.". "The Frightfully Bright Bully continues a combination of rolling their eyes and looking away from you."]

from-number of spurning sprite is 11512. to-number of spurning sprite is 5705.

after doing something with a himher thing (called th):
	set the pronoun them to th;
	set the pronoun him to th;
	set the pronoun her to th;

sco-turning-trite is a truth state that varies.

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
			process the check-rule entry; [necessary to catch the mad monk--perhaps we could have an extra "inconclusive" state]
			let rb-out be the outcome of the rulebook;
			if rb-out is the already-done outcome, the rule succeeds;
			if rb-out is the not-yet outcome:
				let exact-cmd be whether or not the player's command matches the text "[first-of-ors of w1 entry][if there is a w2 entry] [first-of-ors of w2 entry][end if]", case insensitively;
				if check-rule entry is vc-sad-sunk rule or check-rule entry is vc-bad-bunk rule:
					say "Whenever you're ready, just type [b][the player's command in upper case][r] to move on.";
					the rule succeeds;
				if think-cue entry is false:
					say "[line break][one of][b]NOTE[r]: this command[if exact-cmd is false] (well, an equivalent, as there were alternate solutions)[end if] will be useful later, but you aren't ready to use it, yet. You can track commands like this by typing [b]THINK[r], which will also clue you if they now work.[or](useful command[if exact-cmd is false] (or a functionally equivalent alternate solution)[end if] again saved to [b]THINK[r] for later reference.)[stopping]";
					now think-cue entry is true;
				else:
					say "[line break]Hmph. That [if exact-cmd is false](or a functionally equivalent alternate solution) [end if]still doesn't quite work! You'll figure out the how and when and where, though.";
				the rule succeeds;
			if okflip entry is false:
				unless my-count is 4 or there is no w2 entry or the player's command matches the regular expression "^([w1 entry])\W": [using only w1 is for the DIM'D test case... and "my-count is 4" is a hack for FLIMFLAM]
					say "You've got it backwards! Just flip things around, and it'll be okay.";
					the rule succeeds;
			if my-count is 3:
				say "Ooh! You're close. You've probably juggled two valid solutions.";
				the rule succeeds;
			abide by the situational-cuing-reject rule;
			process the run-rule entry;
			if the rule failed:
				now think-cue entry is true;
				the rule succeeds;
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
		if two-too is true and player has leet learner:
			if there is a posthom entry:
				if the player's command includes the posthom entry:
					if rb-out is worth-parsing:
						now local-post-hom is true;
						if there is a hom-txt-rule entry, now hom-row is global-row-check;
		if ha-half is true and my-count is 1 and player has leet learner:
			now vc-dont-print is true;
			process the check-rule entry;
			let rb-out be the outcome of the rulebook;
			now vc-dont-print is false;
			unless rb-out is the not-yet outcome or rb-out is the ready outcome, next;
			now local-ha-half is true;
			if debug-state is true, say "DEBUG: [check-rule entry] tipped off the HA HALF button.";
			if there is a core entry:
				now new-point-to-get is true;
				if core entry is true, now brightness is true;
			next;
	if local-ha-half is true:
		say "The [b]HA HALF[r] button lights up on your Leet Learner[if new-point-to-get is false]--wait, you're just switching back to a rhyme you knew before. You must've mis-thought a word[else if brightness is false], but dimly--perhaps this is a rhyme you don't strictly need to figure to win[else if local-post-hom is true], and its brightness suggests your rhyme must be very close, indeed[end if].";
		abide by the ha-half-help rule;
	if local-post-hom is true:
		if hom-row > 0:
			choose row hom-row in table of verb checks;
			abide by the hom-txt-rule entry;
		say "The Leet Learner shakes back and forth. Something you said sounded right, but it didn't feel right.";
		abide by the two-too-help rule;

volume unsorted locations

volume parser rules

Rule for printing a parser error (this is the clue half right words rule):
	now compare-item is the player;
	abide by the rhyme-guess-checker rule for the table of first check rhymes;
	abide by the game-specific-backdrop-check rule;
	unless guess-table of location of player is table of no good guesses:
		[if debug-state is true, say "DEBUG location guesses: [location of player], [guess-table of location of player].";]
		abide by the rhyme-guess-checker rule for guess-table of location of player;
	let table-list be a list of table names;
	repeat with fun running through fungible rhymables:
		let gtt be guess-table of fun;
		if gtt is table of no good guesses or gtt is listed in table-list, next;
		add gtt to table-list;
		now compare-item is fun;
		abide by the rhyme-guess-checker rule for gtt;
	repeat with fun running through fungible people:
		let gtt be guess-table of fun;
		if gtt is table of no good guesses or gtt is listed in table-list, next;
		add gtt to table-list;
		now compare-item is fun;
		abide by the rhyme-guess-checker rule for gtt;
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

book talking

carry out talktoing:
	if noun is the player, say "[one of]'Whee! Why me? My!'[or]'Me! My! See?'[paragraph break]'Sigh.'[in random order]" instead;
	if noun is mad monk, say "You need more pointed commentary, picking out the mad monk's flaws." instead;
	if noun is lazy loud crazy crowd, say "Regular chatter doesn't work on the crowd. They need to be hyped up and see a show." instead;
	if noun is spurning sprite, say "No, you will lose an argument. Even if you don't start an argument, you'll lose it. You know that." instead;
	if noun is white whale, say "You sense a telepathic 'Splay! Splash! May mash!' Yes, it's dolphins that have telepathic chatter in the real world, but there are different rules here. Play along with it." instead;
	if noun is bright brute, say "The brute's brightness is more positivity than conversational brilliance. But it will know how to fight." instead;
	if noun is crow crew, say "The crow crew has its own prep for the performance. You feel even asking them if they were ready would make them less ready. It's the crowd that you need to interact with." instead;
	if noun is kite coot or noun is night newt, say "They wouldn't understand you, and they don't need to be disturbed." instead;
	if noun is FREE FRUIT, say "It reveals nothing of the free fruit inside. You feel like you just banged on a vending machine that ate your change, except without [i]casus belli[r]." instead;
	if noun is pred pros, say "Direct negotiations won't work. You can give them something, though." instead;
	say "No response. There's not a lot you need to talk to." instead;

book listening

the block listening rule is not listed in any rulebook.

check listening:
	if player is in Roaring Rocks, say "[if sco-boring-box is false]'Poring Pox!' the roaring rocks, uh, roar[else]The roaring is exciting. Too exciting. You don't need that right now[end if]." instead;
	if player is in Bane Be Sane See, say "[if sco-plain-plea is false]You get the feeling your voice could add constructively to the noises, somehow, but it's not critical[else]You think you still hear echoes of your plain plea, but it's time to move on[end if]." instead;
	say "Quite quiet site. Sigh, it ..." instead;

volume room restrictions

this is the nothing-left gong rule: completed;

definition: a room (called rm) is available-from-here:
	if rm is unvisited, no;
	if rm is bane be sane see and player is not in bane be sane see, no;
	if rm is jotty jail and player is not in jotty jail, no;
	yes;

[this may be moved to PPRR common later]

the gong rules are a rulebook. the gong rules have outcomes completed, llp-remaining, and uncompleted.

a room has a rule called this-gong-rule. this-gong-rule of a room is usually the nothing-left gong rule.

a room-hint-state is a kind of value. The room-hint-states are points-left, bonus-left, and nothing-left.

player-room-allow-threshold is a room-hint-state that varies. player-room-allow-threshold is nothing-left.

[temporary rule to test that, indeed, pride-prong does work!]
[roomblocking when room gone to is trust track:
	llp-remaining;]

hunt-bonus-points is a truth state that varies.

to reset-go-check:
	now all rooms are not go-checked;
	now location of player is go-checked;

check going when player-room-allow-threshold is not nothing-left:
	if the room gone to is nothing, continue the action;
	now hunt-bonus-points is false;
	reset-go-check;
	if the room gone to is overall-go-useful, continue the action;
	say "[one of]A guide gong[or]That guide gong, again,[stopping] rings to notify you that you don't need to go back through [room gone to]." instead;

a room can be go-checked. a room is usually not go-checked.

definition: a room (called rm) is overall-go-useful:
	now hunt-bonus-points is false;
	reset-go-check;
	if rm is go-useful, yes;
	if player-room-allow-threshold is bonus-left:
		now hunt-bonus-points is true;
		reset-go-check;
		if rm is go-useful:
			vcal "The pride-prong you summoned earlier pokes you to go and see what's ahead, even if it might not be critical to your quest.";
			yes;
	no;

definition: a room (called rm) is go-useful:
	if rm is location of player, no;
	now rm is go-checked;
	process the this-gong-rule of rm;
	let room-done be the outcome of the rulebook;
	if room-done is the uncompleted outcome, yes;
	if room-done is the llp-remaining outcome and hunt-bonus-points is true, yes;
	repeat with R2 running through rooms:
		if R2 is not adjacent to rm:
			unless (rm is a liftroom and r2 is high hub) or (r2 is a liftroom and rm is high hub), next;
		if R2 is go-checked, next;
		if R2 is go-useful, yes;
	no;

chapter gong rules pre-hub

[ trivially completed rooms: Bane Be Sane See, Jotty Jail (both have LLPs but can't go back), Roaring Rocks. Note Roaring Rocks chould have "if sco-boring-box is true" but if you are out, you got the boring box. ]

[ LLPs not llp-remaining are Go Goo and Gad Gunk because it disappears when the monk does ]

[bane be sane see needs no rules, with the one-way passage out]
[this-gong-rule of Roaring Rocks is the gong-roaring-rocks rule.]
this-gong-rule of nnss is the gong-nnss rule.

this-gong-rule of warm stun storm is the gong-one-warm-stun-storm rule. [north branch first]
this-gong-rule of tttt is gong-tttt rule.

this-gong-rule of trust track is the gong-trust-track rule. [east branch next]
this-gong-rule of rare reach is the gong-rare-reach rule.

this-gong-rule of hun harm fun farm is the gong-hun-harm-fun-farm rule. [west branch last]
this-gong-rule of NoNoon is the gong-nonoon rule.

section actual rules

[this is the gong-roaring-rocks rule:
	if sco-boring-box is false, uncompleted;
	completed;]

this is the gong-nnss rule:
	if sco-grow-grudge is false, uncompleted;
	if high hub is unvisited, completed;
	if sco-wordy-walk is false, llp-remaining;
	completed;

this is the gong-one-warm-stun-storm rule:
	if sco-fun-form is false, uncompleted;
	completed;

this is the gong-tttt rule:
	if sco-pear-peach is false, uncompleted;
	completed;

this is the gong-trust-track rule:
	if sco-crust-crack is false, uncompleted;
	completed;

this is the gong-rare-reach rule:
	if sco-reap-rune is false, uncompleted;
	completed;

this is the gong-hun-harm-fun-farm rule:
	if sco-un-arm is false, uncompleted;
	completed;

this is the gong-nonoon rule:
	if sco-crow-croon is false, uncompleted;
	completed;

chapter gong rules post-hub

[the starting area is above]

this-gong-rule of high hub is gong-high-hub rule.

this-gong-rule of show shoe is the gong-show-shoe rule. [1]

this-gong-rule of sore souls gore goals is the gong-sore-souls-gore-goals rule. [2]

this-gong-rule of bum bout rum route is the gong-bum-bout-rum-route rule. [3]
this-gong-rule of nay nope slay slope is the gong-nay-nope-slay-slope rule.

this-gong-rule of slight sleaze is the gong-slight-sleaze rule. [4]
this-gong-rule of freak framing seek sameing is the gong-freak-framing-seek-sameing rule.

this-gong-rule of mad most cad coast is the gong-mad-most-cad-coast rule. [5]
this-gong-rule of trite trail is the gong-trite-trail rule.

this-gong-rule of old end is the gong-old-end rule.
this-gong-rule of vain vat is the gong-vain-vat rule.
this-gong-rule of threat three is the gong-threat-three rule.

section actual rules

this is the gong-high-hub rule:
	if hub-score < 5, uncompleted;
	if sco-despite-dispute is false, llp-remaining;
	uncompleted;

this is the gong-show-shoe rule: [1] [ NOTE we're currently disallowed from getting the Go Goo after the concert ]
	if sco-throw-through is false, uncompleted;
	if sco-go-goo is false, llp-remaining;
	completed;

this is the gong-sore-souls-gore-goals rule: [2]
	if shoal-core-score < 2, uncompleted;
	if shoal-extra-animals < 2 or sco-lore-lols is false, llp-remaining;
	completed;

this is the gong-bum-bout-rum-route rule: [3]
	if sco-umm-out is false, uncompleted;
	completed;

this is the gong-nay-nope-slay-slope rule:
	if sco-k-cope is false, uncompleted;
	completed;

this is the gong-slight-sleaze rule: [4]
	if sco-right-root is false, uncompleted;
	if sco-tight-tease is false, llp-remaining;
	completed;

this is the gong-freak-framing-seek-sameing rule:
	if sco-bred-bros is false, uncompleted;
	if sco-clique-claiming is false, llp-remaining;
	completed;

this is the gong-mad-most-cad-coast rule: [5]
	if sco-rad-roast is false, uncompleted;
	completed;

this is the gong-trite-trail rule:
	if sco-thread-throws is false, uncompleted;
	completed;

this is the gong-old-end rule:
	if sco-mold-mend is false, uncompleted;
	completed;

this is the gong-vain-vat rule:
	if sco-splain-splat is false, uncompleted;
	completed;

this is the gong-threat-three rule:
	uncompleted;

chapter guide-gonging

guide-gonging is an action out of world.

understand the command "guide gong" as something new.

understand "guide gong" as guide-gonging.

carry out guide-gonging:
	follow the know-ide-ong rule;
	say "You are [if player-room-allow-threshold is points-left]already[else]now[end if] repelled by a guide gong if you try to go down a path where you have nothing game-critical to do in any branches.";
	now player-room-allow-threshold is points-left;
	the rule succeeds;

guide-gong-warn is a truth state that varies.
this is the know-ide-ong rule:
	if guide-gong-warn is false:
		now guide-gong-warn is true;
		say "(disabling later explanation of [b]GUIDE GONG[r], etc., but it will still be in [b]VERBS[r])[paragraph break]";

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
	say "You are [if player-room-allow-threshold is bonus-left]already[else]now[end if] blocked from paths where no branches contain any point-scoring activities, critical or bonus.";
	now player-room-allow-threshold is bonus-left;
	the rule succeeds;

volume hinting

carry out hinting:
	process room-hint-rule of location of player;

book generic thing hints

this is the hint-just-scenery rule: say "You don't have to worry about [the noun], which is just scenery to provide clues or atmosphere." instead;
this is the hint-done-stuff rule: say "You summoned [the noun] into existence, which is enough. You'll want to look elsewhere for double-rhymes." instead;

to say done-here: say "You're done here in [location of player]"

chapter room hints

the room-hint-rule of bane be sane see is the hint-bane-be-sane-see rule.

the room-hint-rule of roaring rocks is the hint-roaring-rocks rule.

the room-hint-rule of nnss is the hint-nnss rule.

the room-hint-rule of stun storm is the hint-stun-storm rule.
the room-hint-rule of tttt is the hint-tttt rule.

the room-hint-rule of trust track is the hint-trust-track rule.
the room-hint-rule of rare reach is the hint-rare-reach rule.

the room-hint-rule of hun harm fun farm is the hint-fun-farm rule.

the room-hint-rule of nonoon is the hint-nonoon rule.

the room-hint-rule of jotty jail is the hint-jotty-jail rule.

the room-hint-rule of high hub is the hint-high-hub rule.

the room-hint-rule of no new show shoe is the hint-no-new-show-shoe rule.

the room-hint-rule of gore goals is the hint-gore-goals rule.

the room-hint-rule of rum route is the hint-rum-route rule.
the room-hint-rule of slay slope is the hint-slay-slope rule.

the room-hint-rule of slight sleaze is the hint-slight-sleaze rule.
the room-hint-rule of seek sameing is the hint-seek-sameing rule.

the room-hint-rule of mad most cad coast is the hint-mad-most-cad-coast rule.
the room-hint-rule of trite trail is the hint-trite-trail rule.

the room-hint-rule of old end is the hint-old-end rule.
the room-hint-rule of vain vat is the hint-vain-vat rule.
the room-hint-rule of threat three is the hint-threat-three rule.

section room hint rules

this is the hint-bane-be-sane-see rule:
	say "[one of]You may notice the [b]TRAIN TREE[r] has writing on it. It's an option that's meaningless for gameplay, but it helps you see what sort of puzzles are ahead.[or]You can [b]READ[r] the train tree to decide your name, which has no effect on anything except the hints you may pick up in the next room.[or]If you note the names, you may find a bonus point that goes along with the room name and game theme.[cycling]" instead;

this is the hint-roaring-rocks rule:
	if sco-boring-box is false, say "[one of]The roaring rocks can be changed into something useful and interesting. Or something that contains something interesting. Something that double-rhymes roaring rocks.[or]The container itself may not look interesting.[or][b]BORING BOX[r].[cycling]" instead;
	say "You can [b]LL[r] and try going [b]UP[r] to look around and get clues about the leet learner here, but there are no more puzzles." instead;

this is the hint-stun-storm rule:
	if sco-done-dorm is false, say "[one of]You need a place to rest that double-rhymes [b]STUN STORM[r].[or]Your place to rest must be sturdy and solid.[or][b]DONE DORM[r].[cycling]" instead;
	if sco-fun-form is false, say "[one of]You need certification you're the sort of person welcome in a done dorm. How to rhyme that?[or][b]FUN FORM[r].[cycling]" instead;
	say "[done-here]." instead;

this is the hint-nnss rule:
	if sco-grow-grudge is false, say "[one of]The [sludge] is annoying. You need to be annoyed by it.[or]What's a good way to build up annoyance?[or][b]GROW GRUDGE[r].[cycling]" instead;
	say "[done-here]" instead;

this is the hint-tttt rule:
	if sco-gee-junk is false, abide by the hint-tree-trunk rule;
	if free fruit is not moot, abide by the hint-free-fruit rule;
	say "[done-here]." instead;

this is the hint-trust-track rule:
	if sco-crust-crack is true, say "[done-here]." instead;
	if just jack is fungible, abide by the hint-just-jack rule;
	say "[one of]There is a passage, even though you trust there isn't.[or]But the passage won't appear until there is a shift in the ground.[or]Make the [b]CRUST CRACK[r].[cycling]" instead;

this is the hint-rare-reach rule:
	if sco-reap-rune is true, say "[done-here]." instead;
	if sco-bare-beach is false:
		if player does not have pear peach, say "You don't have the item you need to transform this place. You can guess what to say, though, until you find that item." instead;
	abide by the hint-pear-peach rule;

this is the hint-fun-farm rule:
	if sco-un-arm is true, say "[done-here]." instead;
	say "[one of]How can you get rid of weapons and threats to get by?[or]You can shorten things up.[or][b]UN ARM[r] or [b]UNARM[r].[cycling]" instead;

this is the hint-nonoon rule:
	if rho rune is off-stage, say "You can't do much here until you get an item of power. You can guess what to do, but it will have no effect." instead;
	if sco-go-goon is false, say "[one of]You need to ward off enemies.[or]Give an order to a certain sort of enemy.[or][b]GO GOON[r].[cycling]" instead;
	if sco-co-coon is false, say "[one of]You must summon something that can grow with the passage of time.[or]Something that can burst into life.[or][b]COCOON[r], with or without a space.[cycling]" instead;
	if sco-crow-croon is true, say "[done-here]." instead;
	abide by the hint-cocoon rule;

this is the hint-jotty-jail rule:
	say "[one of]You'll want to look for a weakness in the construction of the jail you're in.[or]What's something that's used in construction and rhymes with jail?[or][b]KNOTTY NAIL[r].[cycling]" instead;

this is the hint-high-hub rule:
	if sco-bye-bub is true, say "The only thing to do here is to operate [the lift]." instead;
	say "[one of]There's a way back down from the high hub, but it's largely for entertainment.[or]You can take your leave of the hub with the right phrase.[or][b]BYE BUB[r].[cycling]" instead;

this is the hint-no-new-show-shoe rule:
	if sco-flow-flue is false, say "[one of]You need to build infrastructure to start.[or]Tubes, or something like them, would help, to transport stuff that can't be easily contained.[or][r]FLOW FLUE[b].[cycling]" instead;
	if sco-glow-glue is false, say "[one of]You need something that will hold infrastructure together.[or]Duct tape works a lot of places, but you need something less visible.[or][r]GLOW GLUE[b].[cycling]" instead;
	if sco-bro-brew is false, say "[one of]You need to provide potential concertgoers with something to drink.[or]What sort of drink would provied camaraderie?[or][r]BRO BREW[b].[cycling]" instead;
	if sco-stow-stew is false, say "[one of]You need to provide potential concertgoers with something to eat.[or]You'll want to keep that something to eat tucked away, nice and hot, until people are hungry.[or][r]STOW STEW[b].[cycling]" instead;
	if sco-ho-who is false, say "[one of]You need to call out to the crowd to start getting them hyped.[or]What's a question that might make a crowd feel wanted?[or][r]HO WHO[b].[cycling]" instead;
	if sco-yo-you is false, say "[one of]You have the crowd's attention. They need to be acknowledged.[or]You need to let the crowd know whom the show's for.[or][r]YO YOU[b].[cycling]" instead;
	if sco-crow-crew is false, say "[one of]The stage needs performers! They have a name.[or]What kind of, umm, group would fit in the Shoe?[or][r]CROW CREW[b].[cycling]" instead;
	if sco-throw-through is false, abide by the hint-crow-crew rule;
	say "[done-here]." instead;

this is the hint-gore-goals rule:
	if sco-shore-shoals is false, say "[one of]You can make this area much more livable.[or]A more coastal backdrop would be nice.[or][r]SHORE SHOALS[b].[cycling]" instead;
	if sco-four-foals is false, say "[one of]This place needs animals. Let's get some cute ones.[or]A specific number of cute animals works here.[or][r]FOUR FOALS[b].[cycling]" instead;
	if sco-more-moles is false, say "[one of]This place doesn't have enough animals, yet.[or]We don't need any specific number, but some animals might be particularly useful.[or][r]MORE MOLES[b].[cycling]" instead;
	say "[done-here]." instead;

this is the hint-rum-route rule:
	if sco-dumb-doubt is false, say "[one of]Being here makes you feel a lack of confidence for silly reasons. You can flip that around.[or]Put a name to the indecision you are feeling.[or][r]DUMB DOUBT[b].[cycling]" instead;
	if sco-said-sos is false, abide by the hint-red-rose rule;
	if sco-umm-out is false, say "[one of]You need to seal the deal you started with dumb doubt.[or]What's an underhanded way to say good-bye?[or][r]UMM OUT[b].[cycling]" instead;
	say "[done-here]." instead;

this is the hint-slay-slope rule:
	if sco-hey-hope is false, say "[one of]You need to improve your mood a bit.[or]You can't do anything concrete, and you don't need to force a smile, but you can discover a small light.[or][r]HEY HOPE[b].[cycling]" instead;
	if sco-k-cope is false, say "[one of]Now you've discovered solace, you need to find something to do with it.[or]The first word is a bit of slang, but the second word is all about fully dealing with your current life.[or][r]K COPE[b].[cycling]" instead;
	say "[done-here]." instead;

this is the hint-slight-sleaze rule:
	if sco-bright-breeze is false, say "[one of]You need a change in the weather to start to alleviate the fright freeze.[or]There's something that could cheer you up. A breath of fresh air.[or][b]BRIGHT BREEZE[r].[cycling]" instead;
	if sco-plight-please is false, say "[one of]You need to dispel the false moaning that seems to swirl around.[or]Things aren't so bad, and the right phrase will emphasize that.[or][b]PLIGHT PLEASE[r].[cycling]" instead;
	if light lute is off-stage, say "You don't have the item you need to find passage beyond here." instead;
	if sco-right-root is false, say "[one of]You want to grow trite trees, but they'd be hard to build.[or]You have something that can help build a firm foundation.[or]The light lute helps here.[or][b]RIGHT ROOT[r].[cycling]" instead;
	say "[done-here]." instead;

this is the hint-seek-sameing rule:
	if sco-bleak-blaming is false, say "[one of]You need to establish the freak framing as something far less glamorous.[or]Show complaining is not as insightful as many people think. What to call it?[or][r]BLEAK BLAMING[b].[cycling]" instead;
	if sco-chic-shaming is false, say "[one of][or][or][r]SEEK SAMEING[b].[cycling]" instead;
	abide by the hint-red-rose rule;
	if sco-bred-bros is false, say "[one of]You need someone to communicate your vision.[or]A group of close-knit people with high social status would help you a lot.[or][r]BRED BROS[b].[cycling]" instead;
	say "[done-here]." instead;

this is the hint-trite-trail rule:
	if sco-thread-throws is true, say "You've done everything you need to here." instead;
	if sco-might-mail is false, say "[one of]You need armor to fight [the whale].[or]What sort of armor could be available from the Trite Trail?[or][b]MIGHT MAIL[r].[cycling]" instead;
	if sco-might-mail is false, say "[one of]You need a weapon to fight [the whale].[or]What sort of weapon could be available from the Trite Trail?[or][b]MIGHT MAIL[r].[cycling]" instead;
	if sco-sight-sail is false, say "[one of]You need transportation to fight [the whale].[or]What sort of transportation could be available from the Trite Trail?[or][b]SIGHT SAIL[r].[cycling]" instead;
	if sco-right-rail is false, say "[one of]You could have trouble keeping your legs during water travel.[or]What could you grab on the sight sail so you don't fall over?[or][b]RIGHT RAIL[r].[cycling]" instead;
	if sco-excite-exhale is false, say "[one of]You could have trouble keeping your legs during water travel.[or]What could you grab on the sight sail so you don't fall over?[or][b]RIGHT RAIL[r].[cycling]";
	if sco-thread-throws is false, abide by the hint-red-rose rule;
	say "[done-here]." instead;

this is the hint-mad-most-cad-coast rule:
	if sco-bad-boast is false, say "[one of]You need to repel the insults and bravado you're hearing.[or]Label the taunts around you as objectively not up to par.[or][r]BAD BOAST[b].[cycling]" instead;
	if sco-rad-roast is false, say "[one of]You've dealt with the taunts, but it's time for a counter-offensive.[or]Have faith in yourself. Show you can give better than you get.[or][r]RAD ROAST[b].[cycling]" instead;
	say "[done-here]." instead;

this is the hint-old-end rule:
	if sco-bold-bend is false, say "[one of]You need to extend the path.[or]There's a way to extend the old end, though it won't be a linear path.[or][b]BOLD BEND[r].[cycling]" instead;
	if sco-trolled-trend is false, say "[one of]There are two ways to go. You need to look for clues which way to go.[or]One way clearly has nastiness, if you know what to look for.[or][b]TROLLED TREND[r].[cycling]" instead;
	if sco-mold-mend is false, say "[one of]The trolling hurt a bit. You need to prepare yourself to face it.[or]First you need the right mindset, then you can heal.[or][b]MOLD MEND[r].[cycling]" instead;
	say "[done-here]." instead;

this is the hint-vain-vat rule:
	if sco-bane-bat is false, say "[one of]You need to get out of this vat! But you have nothing to break the vat down with.[or]You need a strong weapon to beat down the vat.[or][b]BANE BAT[r].[cycling]" instead;
	if sco-flain-flat is false, say "[one of]Now you have a weapon, what's the right way to bust out?[or]Leave the walls of the vat down[or][b]FLAIN FLAT[r].[cycling]" instead;
	if sco-splain-splat is false, say "[one of]It's time to announce your presence![or]You need to do so with sound effects after.[or][b]SPLAIN SPLAT[r].[cycling]" instead;
	if pred pros are fungible, abide by the hint-pred-pros rule;
	say "[done-here].";

[	if sco-xxx-xxx is false, say "[one of][or][or][b]XXX XXX[r].[cycling]" instead;]

this is the hint-threat-three rule:
	if market marquee is fungible, abide by the hint-market-marquee rule;
	if sus sack is fungible, abide by the hint-sus-sack rule;
	if sprite is fungible, abide by the hint-spurning-sprite rule;
	say "BUG. Sorry." instead;

chapter thing hints

thing-hint-rule of the player is the hint-player rule.

thing-hint-rule of leet learner is the hint-learner-part rule.
thing-hint-rule of ha half nah naff is the hint-learner-part rule.

thing-hint-rule of train tree is the hint-bane-be-sane-see rule.
thing-hint-rule of boring box is the hint-boring-box rule.

thing-hint-rule of mad monk is the hint-mad-monk rule.

thing-hint-rule of lurking lump is the hint-lurking-lump rule.

thing-hint-rule of miss more diss door is the hint-diss-door rule.

thing-hint-rule of slow sludge is the hint-nnss rule.

thing-hint-rule of done dorm is the hint-stun-storm rule.

thing-hint-rule of tree trunk is the hint-tree-trunk rule.
thing-hint-rule of free fruit is the hint-free-fruit rule.

thing-hint-rule of pear peach is the hint-pear-peach rule.

thing-hint-rule of Just Jack is the hint-just-jack rule.

thing-hint-rule of sus sack is the hint-sus-sack rule.

thing-hint-rule of deep dune is the hint-deep-dune rule.
thing-hint-rule of rho rune is the hint-rho-rune rule.

thing-hint-rule of cocoon is the hint-cocoon rule.

thing-hint-rule of locking lift is the hint-locking-lift rule.

thing-hint-rule of sturdy stalk is the hint-sturdy-stalk rule.

thing-hint-rule of lazy loud crazy crowd is the hint-done-stuff rule.
thing-hint-rule of crow crew is the hint-crow-crew rule.

thing-hint-rule of kite coot is the hint-done-stuff rule.
thing-hint-rule of night newt is the hint-done-stuff rule.

thing-hint-rule of fright freeze is the hint-slight-sleaze rule.
thing-hint-rule of trite trees is the hint-done-stuff rule.

thing-hint-rule of Bred Bros is the hint-done-stuff rule.

thing-hint-rule of flight flail is the hint-trail-stuff rule.
thing-hint-rule of might mail is the hint-trail-stuff rule.
thing-hint-rule of tight tail white whale is the hint-trite-trail rule.
thing-hint-rule of right rail is the hint-trail-stuff rule.
thing-hint-rule of bright brute is the hint-trail-stuff rule.

thing-hint-rule of sight sail is the hint-sight-sail rule.

thing-hint-rule of delight dilute is the hint-delight-dilute rule.

thing-hint-rule of pred pros is the hint-pred-pros rule.
thing-hint-rule of head hose is the hint-pred-pros rule.

thing-hint-rule of market marquee is the hint-market-marquee rule.

thing-hint-rule of spurning sprite is the hint-spurning-sprite rule.

thing-hint-rule of red rose is the hint-red-rose rule.
thing-hint-rule of light lute is the hint-light-lute rule.

section thing hint rules

this is the hint-player rule:
	if core-score > 0, say "Your magic power is being able to construct parallel rhymes, as the game title suggests." instead;
	say "[one of]Look at the location names and title of the story.[or]Read the train tree.[or]Note that there are a lot of rhyme pairs floating around.[or]Your job in this game is to manufacture parallel rhyme pairs.[stopping]" instead;

this is the hint-learner-part rule: say "The leet learner and its parts only give hints. You can [b]LL[r] alone to scan a room, [b]LL[r] any thing or person, or [b]READ[r] the leet learner to see its option." instead;

this is the hint-lurking-lump rule: say "You can say [b]LL[r] for the lurking lump to push you through a puzzle at the right time. It can solve any rhyme you wish but has limited charges." instead;

this is the hint-boring-box rule: say "You can really only [b]OPEN[r] [the box]." instead;

this is the hint-mad-monk rule:
	if monk-score is 2, say "You already know both [b]BAD BUNK[r] and [b]SAD SUNK[r]. Repeat [b][if monk-bad-cue is true]BAD BUNK[else]SAD SUNK[end if][r] to get by." instead;
	say "[one of]You have two ways you need to dispose of the mad monk.[or]Both ways are a downer, and you may be able to guess words that rhyme with ad.[or]You can say [b][if monk-score is 0][one of]BAD BUNK[or]SAD SUNK[in random order][else if sco-bad-bunk is true]SAD SUNK[else]BAD BUNK[end if][r].[cycling]" instead;

this is the hint-tree-trunk rule:
	if sco-see-sunk is false, say "[one of]The tree trunk, or a place in it you can look, is too high up.[or]You can bring the tree trunk down a little.[or][b]GEE JUNK[r] brings the tree trunk down.[cycling]" instead;
	if sco-gee-junk is false, say "[one of]There's something in the tree trunk, but you need to see it right.[or]You might be glad to find something that seems worthless to others.[or][b]GEE JUNK[r] reveals what's in the tree trunk.[cycling]" instead;
	say "You did what you need to see what was in the tree trunk." instead;

this is the hint-free-fruit rule:
	if sco-whee-woot is false, say "[one of]You need to be thrilled you got free fruit.[or]There are two colloquial interjections that make things click.[or][b]WHEE WOOT[r].[cycling]" instead;
	say "[one of]Figuring what free fruit to get is a lateral-thinking puzzle. It's not a rhyme that springs from [b]FREE FRUIT[r].[or]There are other places that need something.[or][if rare reach is unvisited]I won't spoil this until you've been the other place[else]The Rare Reach[end if].[or][if rare reach is unvisited]It's a combination of two fruits, but I won't spoil it until you've been where you need to be[else][b]PEAR PEACH[r][end if].[cycling]" instead;

this is the hint-diss-door rule: say "[one of]There are two solutions to the [diss door]. One is racy, and one is not.[or]The racy one is to cut the diss door down with your own rude phrase.[or][b]PISS POOR[r].[or]You can also try a hint given at game's end.[or][b]SWEAR SWAMP WHERE WOMP[r].[cycling]" instead;

this is the hint-just-jack rule: say "[one of][jack] is in the way, and he won't get out without proper transport.[or]You don't need to summon something directly, just something that leaves [jack] displaced.[or]Make [jack] [b]BUSSED BACK[r].[cycling]" instead;

this is the hint-sus-sack rule: say "[one of]The sus sack can be changed to something more useful.[or]You don't need that something in the sus sack for yourself, but it may impress someone.[or][b]PLUS PLAQUE[r].[cycling]" instead;

this is the hint-pear-peach rule:
	if rare reach is unvisited, say "It's impressive you got the pear peach before visiting the place that tipped it off." instead;
	if player is not in rare reach, say "The pear peach can work its magic in Rare Reach." instead;
	say "[one of]The pear peach can make Rare Reach a bit less desolate.[or]This could be a place with life, or at  least, water.[or]Make a [b]BARE BEACH[r].[cycling]" instead;

this is the hint-deep-dune rule:
	if sco-seep-soon is false, say "[one of]You need the deep dune to start getting smaller.[or]The deep dune won't get smaller right away.[or]Make the deep dune [b]SEEP SOON[r].[cycling]" instead;
	if flag-reap-rune is false, say "Leave and come back before making further progress with the deep dune." instead;
	say "[one of]What is in the deep dune? Something valuable.[or]A symbol of magic power is inside the dune, if you search right.[or][b]REAP RUNE[r].[cycling]" instead;

this is the hint-rho-rune rule: say "The [rune] [if player is in nonoon]gives you power here[else if nonoon is unvisited]is useful somewhere you haven't been[else]is useful somewhere you've been[end if]." instead;

this is the hint-cocoon rule:
	if sco-mo-moon is false, say "[one of]You need some light to appear in the night sky.[or]There are no stars that can appear, but there is another celestial body.[or][b]MO MOON[r].[cycling]" instead;
	if sco-so-soon is false, say "[one of]You'd like to hurry up the cocoon opening.[or]There is a way to speed up time, but not quite to where the cocoon opens.[or][b]SO SOON[r].[cycling]" instead;
	if sco-crow-croon is false, say "[one of]You need morning to appear.[or]You have no rooster, but there's another animal that can make a noise that might signify morning.[or][b]CROW CROON[r].[cycling]" instead;
	say "The cocoon should be gone now. This is a BUG." instead;

this is the hint-locking-lift rule:
	if hub-score < lift-score and lift-score < 5, say "You have uncompleted areas you can reach in the lift, but filling in lift settings will take priority when you ask for hints here.[line break]" instead;
	if sco-rocking-rift is false, say "[one of]A good introductory hub is a concert that has been split up. It's on the long side, but the words are short.[or][or][r]ROCKING RIFT[b].[cycling]" instead;
	if sco-shocking-shift is false, say "[one of]You want to change things everywhere, but one place is particularly drastic. It gives you an item you need elsewhere.[or]The background itself will change, and you'll be amazed.[or][r]SHOCKING SHIFT[b].[cycling]" instead;
	if sco-gawking-gift is false, say "[one of]There's a place where you get knowledge and confidence.[or]You'll stare blankly, whether it's too much or too little[or][r]GAWKING GIFT[b][if player does not have red rose], though you can't complete it now until you visit another hub[end if].[cycling]" instead;
	if sco-grokking-grift is false, say "[one of]You need to learn about the seedy side of things without being affected.[or]This lift setting requires slang for knowing something.[or][r]GROKKING GRIFT[b].[cycling]" instead;
	if sco-docking-diffed is false, say "[one of]There's a boat ahead in the toughest[or][or][r]DOCKING DIFFED[b].[cycling]" instead;
	if hub-score < 5, say "[b][best-hub][r] is the recommended lift setting to complete." instead;
	if sco-mocking-miffed is false, say "[one of]The last area is where you encounter [the sprite]. They are upset and contemptuous.[or]Specifically, you may imagine you hear scornful laughter, which you need to follow.[or][r]MOCKING MIFFED[b].[cycling]" instead;
	say "[done-here]." instead;

to say need-rose: if player does not have red rose, say "though you can't complete it now until you visit another hub"

to decide which number is side-item-score: decide on (boolval of whether or not red rose is not off-stage) + (boolval of whether or not light lute is not off-stage)

to say need-rose-and-lute:
	if side-item-score is 2, continue the action;
	if player does not have red rose, say "though you can't complete it now until you visit ";
	if side-item-score is 1:
		say "another hub";
	else:
		say "two other hubs";

to say best-hub:
	if sco-throw-through is false:
		say "ROCKING RIFT";
	else if shoal-core-score < 2:
		say "SHOCKING SHIFT";
	else if sco-k-cope is false:
		say "GAWKING GIFT";
	else if sco-bred-bros is false:
		say "GROKKING GRIFT";
	else:
		say "DOCKING DIFFED"

this is the hint-sturdy-stalk rule: say "[one of]The sturdy stalk isn't critical to winning, but it provides a bonus point.[or]Look at the stalk the right way, and you get inspiration.[or]Have a [b]WORDY WALK[r].[cycling]" instead;

this is the hint-crow-crew rule:
	if sco-yo-you is false, say "You need to hype up the crowd before the crow crew makes their big entrance. [b]HINT[r] the general area for that." instead;
	say "[one of]The Crow Crew needs to make a big, grand entrance.[or]You can give the Crow Crew momentum if you introduce them right.[or][b]THROW THROUGH[r].[cycling]" instead;

this is the hint-trail-stuff rule: say "You will have [the noun]'s help when the time comes. It's there so you don't lose track of it." instead;

this is the hint-sight-sail rule:
	if sco-right-rail is false, say "[one of]You need to gain your bearings on the sight sail.[or]A piece of equipment rhyming with sight sail would help.[or]Find the [b]RIGHT RAIL[r].[cycling]" instead;

this is the hint-delight-dilute rule:
	say "[one of]It's optional to get rid of [the dilute], and if you want to, the solution may be a bit tricky. But it follows the rhyming description.[or]The name of [the dilute] suggests taking something nice and making it worse. You can do the reverse.[or][b]DESPITE DISPUTE[r].[cycling]" instead;

this is the hint-pred-pros rule:
	say "[one of]The Pred Pros in their head hose are blocked by your red rose, but you can actually make them allies.[or]The Pred Pros look very skinny.[or][b]FED FOES[r].[cycling]" instead;

this is the hint-market-marquee rule:
	say "[one of]You need to figure the three settings of the marquee.[or]The nonsense words on the marquee clue the rhymes you need, ones that work with market marquee, but they're shorter.[or][if sco-yet-ye is false][b]TWET/TWEE[r] leads to [b]YET YE[r][else if sco-set-see is false][b]TRET/TREE[r] leads to [b]SET SEE[r][else][b]GLET/GLEE[r] leads to [b]FRET FREE[r][end if].[cycling]" instead;

this is  the hint-spurning-sprite rule:
	if sus sack is not moot, say "You need a gift for [the sprite] first. Check your inventory for something to work on." instead;
	say "[one of]You need to label the plus plaque now. Something that describes [the sprite].[or]You can describe [the sprite] unfavorably.[or][b]TURNING TRITE[r].[cycling]" instead;

this is the hint-light-lute rule:
	if player does not have the light lute, say "An outside item is required for what you need to do next." instead;
	if player is in slight sleaze:
		if sco-plight-please is false, say "[genprog of lute]." instead;
	if player is in trite trail:
		if sco-bright-brute is false, say "[one of]The light lute can summon a generic animal ally.[or]You need an animal ally with strength and a positive mood.[or]Summon a [b]BRIGHT BRUTE[r].[cycling]" instead;
	if player is in gore goals:
		if sco-shore-shoals is false, say "The light lute can summon some optional animals once you've taken care of general business." instead;
		if sco-kite-coot is false, say "[one of]You can summon a hybrid bird with the light lute.[or]Each word is a bit odd, and it has another non-animal use, too.[or]Summon a [b]KITE COOT[r].[cycling]" instead;
		if sco-night-newt is false, say "[one of]You can summon an animal that blends into the background with the light lute.[or]Not the background during the day.[or]Summon a [b]NIGHT NEWT[r].[cycling]" instead;
	if lute-strings is 0, say "You've done all you can with [the lute]." instead;
	if gold-lute-strings is 0, say "You only have bonus points to gain from [the lute]." instead;
	say "[useless of light lute]." instead;

this is the hint-red-rose rule:
	if player does not have the red rose, say "An outside item is required for what you need to do next." instead;
	if player is in bum bout rum route and sco-said-sos is false:
		if sco-dumb-doubt is false, say "[genprog of red rose]." instead;
		say "[one of]The red rose can extend the dumb doubt you've cast on your oppressors.[or]The red rose can use a rhetorical trick or help you use one.[or]The red rose can generate [b]SAID SOS[r].[cycling]" instead;
	if player is in seek sameing:
		if sco-chic-shaming is false, say "[genprog of red rose]." instead;
		say "[one of]The red rose can attract people who can spread a positive message better than you can.[or]Summon upper-class types full of camaraderie.[or][b]BRED BROS[r].[cycling]" instead;
	if player is in trite trail:
		if whale-score < 5, say "[genprog of red rose]." instead;
		if sco-thread-throws is false, say "[one of]The red rose is useful for making something to subdue [the whale].[or]Generally you use a net to catch fish. Something that can sort of make a net is the first word, and how you use a net is the second.[or][b]THREAD THROWS[r].[cycling]";
	say "[useless of red rose]." instead;

to say useless of (itm - a thing): say "The [itm] is useful but not here"

to say genprog of (itm - a thing): say "You can use [the itm] after making progress with the general area here"

volume standard verbs

[just in case, so far]

chapter attacking

check attacking: say "Hawk hurts? Block! BLURTS!" instead;

chapter singing

check singing: say "You hum a few too-totes-new notes, almost stringing together a wry witty dry ditty." instead;

volume meta-verbs

chapter high level game stuff

check saving the game: say "The [sprite]'s voice echoes: 'Surely you don't need a break from THIS, right?'";

report saving the game:
	if the rule succeeded:
		say "The [sprite]'s voice on the wind: 'Another file you may never look at again. Or if you do, it's because you messed up.'";
	else:
		say "'Dithering, eh?'"

check restarting the game: say "The [sprite]'s voice mocks you. 'Reliving stuff you already know? No progress that way.'";

check restoring the game: say "'Jumping ahead and missing the journey, eh?' the [sprite] mocks you.";

report restoring the game:
	if the rule succeeded:
		say "'Ah. You're back. Something more important to do, I'm sure.'";
	else:
		say "'Dithering, eh?'"

check quitting the game: say "'Well, if you have something better to do... I hope you do...'";

chapter abouting

carry out abouting:
	say "[this-game] is the third entry in the [pprr] series. You do not need experience with [series-names] to get through successfully.";
	say "[line break]It felt like something that'd never get created, but it was fun to dream about. Then I had an idea about [if nnss is unvisited]the third room[else][NNSS][end if] offering another odd bonus point in [vvff], but I wanted to move on. Then an idea for one room came, then another, and suddenly I had a game for IFComp 2022, which was nice, as the one I'd had on reserve since 2018 had dried up.";
	say "[line break]I was able to re-use and fine-tune and fix bugs in a lot of code from [vvff], and I even managed to create some code I backported. And I started using Zarf's regression scripts earlier, to catch bugs well before the deadline and free my mind up for bigger-picture things. So it feels like the user experience should be smoother, although the story might be weaker.";
	say "[line break]While my code for [vvff] wasn't perfect, it gave me a boost so I didn't have to rewrite a lot. I'd also become more comfortable with rules and rule ordering since then, so I was able to make the code more portable.";
	the rule succeeds;

chapter creditsing

carry out creditsing:
	say "Thanks to Beau Sorrell and <check other name(s)> for testing.";
	say "Thanks to many people on the I7 board at Intfiction.org. This includes, in alphabetical order, Draconis, otistdog, Zarf and ZedLopez.";
	say "[line break]Thanks to all involved in IFComp, whether administering, programming, judging, or reviewing.";
	say "Thanks to GitHub for allowing free hosting, public or private.";
	say "Thanks to you for playing.";
	the rule succeeds;

chapter exitsing

[ for the EXITS command when you can see a way to go but it isn't physically available ]

[ so behind Trust Track is unavailable but beyond Slow Sludge is blocked ]

to decide whether (di - a direction) is blocked:
	if player is in NNSS and sco-grow-grudge is false:
		if di is north or di is south or di is east, yes;
	if player is in Vain Vat and sco-flain-flat is false:
		if di is north, yes;
	if player is in Roaring Rocks and di is north and mad monk is in roaring rocks, yes;
	if player is in Hun Harm Fun Farm and di is north and sco-un-arm is false, yes;
	if player is in Warm Stun Storm and di is north and sco-fun-form is false, yes;
	no;

check exitsing (this is the adjust exit text with lift present rule):
	if location of player is High Hub, say "The locking lift is the main way out of here, but [if sco-bye-bub is true]you can go back [b]DOWN[r] the stalk[else]there is a way to revisit what's below[end if]." instead;
	if locking lift is in location of player and number of viable directions is 0, say "You can't go in any direction[unless player is in show shoe or player is in gore goals] yet[end if], but you can [enter-lift]." instead;
	if player is in Threat Three and spurning sprite is in Threat Three, say "You're at the final confrontation. There are no exits." instead;

report exitsing (this is the notify player of lift rule):
	if locking lift is in the location of the player, say "You can also [enter-lift].";

to say enter-lift: say "[b]ENTER[r] the locking lift to go back to [hub]";

chapter optsing

carry out optsing:
	if guide-gong-warn is true, say "[2da][b]GUIDE GONG[r] will restrict you from solved rooms, [b]PRIDE PRONG[r] will notify you of rooms with just bonus points left, and [b]STRIDE STRONG[r] will remove these bumpers. Currently this is set to [b][if player-room-allow-threshold is bonus-left]PRIDE PRONG[else if player-room-allow-threshold is bonus-left]GUIDE GONE[else]player-room-allow-threshold is bonus-left[end if][r].";
	the rule succeeds;

chapter swearing

after printing the locale description:
	if miss more diss door is fungible, say "Oh. The [diss door] is there. You may want to dispose of it somehow.";
	continue the action;

the miss more diss door is a rhymable. it is scenery. printed name is "miss-more-diss door". description is "It seems to be inviting you in, and yet, at the same time, pushing you away for not being quite good enough. Yet."

from-number of miss more diss door is 5404. to-number of miss more diss door is -5404.

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
		say "The [diss door] whooshes into view again.";
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

volume parser errors

rule for printing a parser error when the latest parser error is the noun did not make sense in that context error (this is the goto reject rule):
	if action-to-be is the gotothinging action or action-to-be is the gotoing action:
		say "That location or thing doesn't exist or isn't known to you yet.";
		the rule succeeds;
	continue the action;

the goto reject rule is listed after the clue half right words rule in the for printing a parser error rulebook.

rule for printing a parser error (this is the default parser error notification rule):
	if action-to-be is the examining action or action-to-be is the reading action or action-to-be is the taking action or action-to-be is the talktoing action:
		say "You see nothing here like that. Or there may be, but it's a small part of something more prominent. [this-game] tries not to force you to look into any items too much.";
		the rule succeeds;
	if number of words in the player's command is 1:
		say "Most special commands are more than one word[if roaring rocks is visited], because of the rhyme-pairs involved[end if]";
	else if number of words in the player's command is 0:
		say "You think a bit";
	else if number of words in the player's command is 2 and boring box is off-stage:
		say "Your rhyming attempts bring up nothing. Or, if you tried a standard verb--well, this game tries to keep it simple, so you can focus on the puzzle verbs";
	else:
		say "I couldn't parse that command. You don't need any more than two words long";
	say ". [b]VERBS[r] will give a list of standard, non-puzzle-solving verbs.";
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
	if sco-bye-bub is false:
		say "You could've said [b]BYE BUB[r] in [high hub] to revisit the first rooms and pick up clue-points for good guesses.";
		say "[one of]There was also a sturdy stalk that would appear in [nnss]. Check [b]MISSES[r] again for the spoiler, if you don't want to replay or guess it[or][ww2][stopping].";
	else if sco-wordy-walk is false:
		say "[ww2].";
	if sco-go-goo is false, say "You could've made [b]GO GOO[r] in [show shoe].";
	if sco-night-newt is false, say "You could've summoned a [b]NIGHT NEWT[r] in [gore goals].";
	if sco-kite-coot is false, say "You could've summoned a [b]KITE COOT[r] in [gore goals].";
	if sco-lore-lols is false, say "You could've performed [b]LORE LOLS[r] in [gore goals].";
	if sco-tight-tease is false, say "You could've summoned [b]TIGHT TEES[r] or a [b]TIGHT TEASE[r] in [slight sleaze].";
	if sco-clique-claiming is false, say "You could've performed [b]CLIQUE CLAIMING[r] in [freak framing].";
	if sco-despite-dispute is false, say "You could've said [b]DESPITE DISPUTE[r] when the light loot became Delight-Dilute."

to say ww2: say "You could've had a [b]WORDY WALK[r] around the sturdy stalk that appeared in [nnss]"

volume internal map

chapter early area

index map with Show Shoe mapped east of TTTT.

index map with Roaring Rocks mapped east of Bane Be Sane See.

index map with Jotty Jail mapped south of Trust Track.

Index map with No New Show Shoe mapped east of TTTT.

index map with Rare Reach mapped north of Trust Track.

index map with NoNoon mapped north of Hun Harm Fun Farm.

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
