Version 1/220704 of Low Key Learny Jokey Journey Tables by Andrew Schultz begins here.

"This should briefly describe the purpose of Low Key Learny Jokey Journey Tables."

[UTILITIES:
rhyru.py checks to make sure the rhyme-rules have the right print stubs.
]

volume core tables

section variables by tables

sco-choose-name is a truth state that varies.

sco-boring-box is a truth state that varies.

book main point command table

[
w1 = word 1
w2 = word 2
posthom = check for homonyms post-completed
hom-txt-rule = check for homonym text
think-cue = is this command cued by "think," e.g. did you use it before you were ready?
okflip = A B and B A both work
core = is this part of the core quest?
idid = was this action done yet?
check-rule = check to see if we can perform the action
run-rule = what rule the action runs
wfull = word in full (for stuff like DIMD from VVFF)
think-advice = 
other stuff that may be added is best-room though I may have divided room-specific points.
]

table of verb checks
w1 (text)	w2 (text)	posthom (topic)	hom-txt-rule (rule)	think-cue	okflip	core	idid	best-room	check-rule	run-rule	wfull (topic)	think-advice (text)
"dane|jane|lane|wayne"	"d|dee|g|gee|lee|whee"	--	--	false	false	true	false	Bane Be Sane See	vc-in-bane rule	vr-choose-name rule	"d/dee dane" or "dane dee/d" or "jane g/gee" or "gee/g jane" or "wayne whee" or "whee wayne"	--
"plain"	"plea"	--	--	false	true	false	false	Bane Be Sane See	vc-plain-plea rule	vr-plain-plea rule	--	--
"boring"	"box"	--	--	false	true	true	false	Roaring Rocks	vc-boring-box rule	vr-boring-box rule	--	--
"grow"	"grudge"	--	--	false	true	true	false	NNSS	vc-grow-grudge rule	vr-grow-grudge rule
"done"	"dorm"	--	--	false	true	true	false	One Warm Stun Storm	vc-done-dorm rule	vr-done-dorm rule
"fun"	"form"	--	--	false	true	true	false	One Warm Stun Storm	vc-fun-form rule	vr-fun-form rule
"see"	"sunk"	--	--	false	true	true	false	TTTT	vc-see-sunk rule	vr-see-sunk rule	--	--
"gee"	"junk"	--	--	false	true	true	false	TTTT	vc-gee-junk rule	vr-gee-junk rule	--	--
"whee"	"woot"	--	--	false	true	true	false	TTTT	vc-whee-woot rule	vr-whee-woot rule	--	--
"pear"	"peach"	--	--	false	true	true	false	TTTT	vc-pear-peach rule	vr-pear-peach rule	--	--
"bussed"	"back"	"bust"	--	false	false	true	false	Rare Reach	vc-bussed-back rule	vr-bussed-back rule
"crust"	"crack"	--	--	false	true	true	false	Trust Track	vc-crust-crack rule	vr-crust-crack rule	--	"You need to get rid of [jack] before you can make the [b]CRUST CRACK[r]."
"bare"	"beach"	--	--	false	true	true	false	Rare Reach	vc-bare-beach rule	vr-bare-beach rule	--	"You can change the Rare Reach to a [b]BARE BEACH[r] once you ."
"seep"	"soon"	--	--	false	true	true	false	Rare Reach	vc-seep-soon rule	vr-seep-soon rule
"reap"	"rune"	--	--	false	true	true	false	Rare Reach	vc-reap-rune rule	vr-reap-rune rule	--	"Perhaps some random adventuring would help you to [b]REAP RUNE[r] later."
"un"	"arm"	--	--	false	true	true	false	Hun Harm Fun Farm	vc-un-arm rule	vr-un-arm rule	"un arm" or "unarm"	--
"go"	"goon"	--	--	false	true	true	false	NoNoon	vc-go-goon rule	vr-go-goon rule	--	--
"co"	"coon"	--	--	false	true	true	false	NoNoon	vc-co-coon rule	vr-co-coon rule	"cocoon"	--
"mo"	"moon"	--	--	false	true	true	false	NoNoon	vc-mo-moon rule	vr-mo-moon rule	--	--
"so"	"soon"	--	--	false	true	true	false	NoNoon	vc-so-soon rule	vr-so-soon rule	--	--
"crow"	"croon"	--	--	false	true	true	false	NoNoon	vc-crow-croon rule	vr-crow-croon rule	--	--
"grotty"	"grail"	--	--	false	true	false	false	jotty jail	vc-grotty-grail rule	vr-grotty-grail rule	--	--
"potty"	"pail"	--	--	false	true	false	false	jotty jail	vc-potty-pail rule	vr-potty-pail rule	--	--
"knotty"	"nail"	--	--	false	true	true	false	jotty jail	vc-knotty-nail rule	vr-knotty-nail rule	--	--
"docking"	"diffed"	--	--	false	true	true	false	locking lift	vc-docking-diffed rule	vr-docking-diffed rule	--	--
"rocking"	"rift"	--	--	false	true	true	false	locking lift	vc-rocking-rift rule	vr-rocking-rift rule	--	--
"grokking"	"grift"	--	--	false	true	true	false	locking lift	vc-grokking-grift rule	vr-grokking-grift rule	--	--
"shocking"	"shift"	--	--	false	true	true	false	locking lift	vc-shocking-shift rule	vr-shocking-shift rule	--	--
"stocking"	"stiffed"	--	--	false	true	true	false	locking lift	vc-stocking-stiffed rule	vr-stocking-stiffed rule	--	--
"mocking"	"miffed"	--	--	false	true	true	false	locking lift	vc-mocking-miffed rule	vr-mocking-miffed rule	--	--

a goodrhyme rule (this is the vc-in-bane rule):
	if player is not in Bane Be Sane See, unavailable;
	ready;

this is the vr-choose-name rule:
	if the player's command includes "jane":
		now the player is female;
	else if the player's command includes "wayne":
		now the player is male;
	else:
		now the player is neuter;
	increment the turn count;
	say "You walk through the door and tumble down to...";
	move the player to Roaring Rocks;
	if sco-plain-plea is false, max-down; [no way back to PLAIN PLEA]
	the rule succeeds;

a goodrhyme rule (this is the vc-plain-plea rule):
	if player is not in Bane Be Sane See, unavailable;
	if sco-plain-plea is true:
		vcal "You already made a plain plea.";
		already-done;
	ready;

this is the vr-plain-plea rule:
	say "Your plain plea seems perfect for the situation. The train tree grows brighter. It pervades the air for a bit, then dissipates.";
	now sco-plain-plea is true;
	the rule succeeds;

a goodrhyme rule (this is the vc-boring-box rule):
	if player is not in Roaring Rocks, unavailable;
	if sco-boring-box is true:
		vcal "You already uncovered the boring box.";
		already-done;
	ready;

this is the vr-boring-box rule:
	say "The roaring rocks crumble, leaving behind storing stocks and ... the boring box you'd hoped for. You totally want to open it!";
	now player has boring box;
	now sco-boring-box is true;
	set the pronoun it to boring box;

a goodrhyme rule (this is the vc-grow-grudge rule):
	if player is not in NNSS, unavailable;
	if sco-grow-grudge is true:
		vcal "You already neutralized [the sludge].";
		already-done;
	ready;

this is the vr-grow-grudge rule:
	say "The sludge hardens! You feel good about not being perfect and not trying to be. It's opened up possibilities, for sure.";
	now sco-grow-grudge is true;

a goodrhyme rule (this is the vc-done-dorm rule):
	if player is not in One Warm Stun Storm, unavailable;
	if sco-done-dorm is true:
		vcal "You already summoned the done dorm.";
		already-done;
	ready;

this is the vr-done-dorm rule:
	say "A done dorm pops up out of nowhere! You probably can't just go entering it, though. A nice, exclusive place like that probably requires documentation of worth and being an interesting person to hang around and stuff. All sorts of bureaucracy, don't you know.";
	now sco-done-dorm is true;
	move done dorm to One Warm Stun Storm;

a goodrhyme rule (this is the vc-fun-form rule):
	if player is not in One Warm Stun Storm, unavailable;
	if sco-fun-form is true:
		vcal "You already filled out the fun form.";
		already-done;
	if sco-done-dorm is false:
		vcp "Perhaps you will need a fun form in a bit. But no entity requires it right now.";
		not-yet;
	ready;

this is the vr-fun-form rule:
	say "You actually, well, have fun saying why you should be certified to stay in the done dorm until enough time has passed.";
	now sco-fun-form is true;

a goodrhyme rule (this is the vc-see-sunk rule):
	if player is not in TTTT, unavailable;
	if sco-see-sunk is true:
		vcal "You already sunk the tree trunk!";
		already-done;
	ready;

this is the vr-see-sunk rule:
	now sco-see-sunk is true;
	say "The tree trunk recedes slightly. It seems to be hollow on top. Perhaps there is something in the tree trunk. But what?";

a goodrhyme rule (this is the vc-gee-junk rule):
	if player is not in TTTT, unavailable;
	if sco-gee-junk is true:
		vcal "You already did this!";
		already-done;
	if sco-see-sunk is false:
		vcp "If there were junk in the tree trunk, you couldn't see it. It's way too tall!";
		not-yet;
	ready;

this is the vr-gee-junk rule:
	now sco-gee-junk is true;
	say "My goodness, yes! There is something in the tree trunk! It's marked [b]FREE FRUIT[r].";
	now free fruit is in TTTT;

a goodrhyme rule (this is the vc-whee-woot rule):
	if player is not in TTTT and free fruit is not in TTTT, unavailable;
	if sco-whee-woot is true:
		vcal "You already appreciated the free fruit sufficiently.";
		already-done;
	ready;

this is the vr-whee-woot rule:
	now sco-whee-woot is true;
	say "The FREE FRUIT seems to glow a bit from your praise.";

a goodrhyme rule (this is the vc-pear-peach rule):
	if player is not in TTTT, unavailable;
	if sco-whee-woot is false:
		vcp "The FREE FRUIT sputters a bit, almost as if it sticks its tongue about you. Weird as it sounds, you may have to show appreciation for it.";
		not-yet;
	ready;

this is the vr-pear-peach rule:
	now sco-pear-peach is true;
	say "A weird fruit you haven't quite seen before pops into your hand as the FREE FRUIT vanishes. Hooray!";
	moot free fruit;
	now player has peach pear;

a goodrhyme rule (this is the vc-bussed-back rule):
	if player does not carry sussed sack and location of player is not trust track, unavailable;
	if sco-bussed-back is true:
		vcal "Just Jack has already been bussed back.";
		already-done;
	ready;

this is the vr-bussed-back rule:
	say "Just Jack knows his time is up. He takes off. Behind them, you find something ... a sussed sack!";
	now sco-bussed-back is true;
	moot Just Jack;
	now player has sussed sack;

a goodrhyme rule (this is the vc-crust-crack rule):
	if player is not in trust track, unavailable;
	if sco-crust-crack is true:
		vcal "You already found a crack in the crust.";
		already-done;
	if sco-bussed-back is false:
		vcp "Under Just Jack's watchful eye, you don't feel like you could precipitate such changes. How to get rid of him?";
		not-yet;
	ready;

this is the vr-crust-crack rule:
	say "A rumbling. Passage opens to the south.";
	now shore shoals is mapped south of trust track;
	now trust track is mapped north of shore shoals;
	now sco-crust-crack is true;

this is the vc-bare-beach rule:
	if player is not in rare reach, unavailable;
	if sco-bare-beach is true:
		vcal "You already changed the Rare Reach.";
		already-done;
	if player does not have pear peach:
		vcp "You should be able to do that, but you lack the necessary implement.";
		not-yet;
	ready;

this is the vr-bare-beach rule:
	say "The rare reach fills out a bit. There is now a bare beach. But it's not completely bare! You see a deep dune rise up.";
	move deep dune to rare reach;
	now sco-bare-beach is true;

this is the vc-seep-soon rule:
	if player is not in rare reach or sco-bare-beach is false, unavailable;
	if sco-seep-soon is true:
		vcal "You already doomed the dune to collapsing slightly.";
		already-done;
	ready;

this is the vr-seep-soon rule:
	say "The deep dune shifts a bit. Sand starts leaking a bit. Not enough for you to sit and wait and watch. You have other stuff to do.";
	now sco-seep-soon is true;

this is the vc-reap-rune rule:
	if player is not in rare reach or sco-bare-beach is false, unavailable;
	if sco-seep-soon is false:
		vcp "The dune is a bit too big now. Maybe you could find a way to reduce it, over time.";
		not-yet;
	if flag-reap-rune is false:
		vcp "The dune has started seeping, but not enough. Maybe you'll need to come back later.";
		not-yet;
	if sco-reap-rune is true:
		vcal "You already reaped a rune.";
		already-done;
	ready;

this is the vr-reap-rune rule:
	say "What do you know? You reach in, and there the rune is. It is in the shape of the Greek letter Rho.";
	now player has Rho Rune;

a goodrhyme rule (this is the vc-un-arm rule):
	if player is not in Hun Harm Fun Farm, unavailable;
	if sco-un-arm is true:
		vcal "You already unarmed the [fun farm]!";
		already-done;
	ready;

this is the vr-un-arm rule:
	now sco-un-arm is true;
	say "You hear a clattering and screaming. Whoever it was guarding the way north sounds very disappointed that their oppression may now take mental effort! You feel a bit more secure now.";

a goodrhyme rule (this is the vc-go-goon rule):
	if player is not in NoNoon, unavailable;
	if Rho Rune is off-stage:
		vcp "You try to form the words, but you don't feel brave enough. Perhaps the right sort of relic would help you.";
		not-yet;
	if sco-go-goon is true:
		vcal "You already dispelled the goon!";
		already-done;
	ready;

this is the vr-go-goon rule:
	now sco-go-goon is true;
	say "The Rho Rune glows, and you feel confidence as at least the first of the enemies fled. But it's so empty here. What could grow?";

a goodrhyme rule (this is the vc-co-coon rule):
	if player is not in NoNoon, unavailable;
	if sco-co-coon is true:
		vcal "You already placed the cocoon.";
		already-done;
	if sco-go-goon is false:
		vcp "You can't do anything while oppressed by enemies. How to call them off?";
		not-yet;
	ready;

this is the vr-co-coon rule:
	now sco-co-coon is true;
	say "A cocoon appears! It's not ready to hatch yet. Maybe not for a while. Perhaps you could get time to move in weird ways.";

a goodrhyme rule (this is the vc-mo-moon rule):
	if player is not in NoNoon, unavailable;
	if sco-mo-moon is true:
		vcal "The moon has already appeared!";
		already-done;
	if sco-co-coon is false:
		vcp "It's scary the sky's so dark, but you sense someone, or something, might need the moon and such to reach its potential. But what, or who?";
		not-yet;
	ready;

this is the vr-mo-moon rule:
	now sco-mo-moon is true;
	say "A moon appears in the night-ish sky.";

a goodrhyme rule (this is the vc-so-soon rule):
	if player is not in NoNoon, unavailable;
	if sco-so-soon is true:
		vcal "You already sped time up.";
		already-done;
	if sco-mo-moon is false:
		vcp "You would like time to speed up and dawn to break. But something's missing from the sky.";
		not-yet;
	ready;

this is the vr-so-soon rule:
	now sco-so-soon is true;
	say "You sensed time speeding up. The cocoon rustles. Perhaps one more sign signifying daytime will cause it to bust out.";

a goodrhyme rule (this is the vc-crow-croon rule):
	if player is not in NoNoon, unavailable;
	if sco-crow-croon is true:
		vcal "You already had the crow croon!";
		already-done;
	if sco-co-coon is false:
		vcp "The crow can't croon until it's ready. And it's not time yet. How could you make time advance, right here, right now?";
		not-yet;
	ready;

this is the vr-crow-croon rule:
	now sco-crow-croon is true;
	say "The crow croons! The cocoon busts out.[paragraph break]Unfortunately, the commotion brings a few henchmen to where you are. You are arrested and dumped in...";
	move player to Jotty Jail;
	moot cocoon;

a goodrhyme rule (this is the vc-grotty-grail rule):
	if player is not in jotty jail, unavailable;
	if sco-grotty-grail is true:
		vcal "No. The grotty grail was nice to find, but enough of past discoveries. You need to get out of here.";
		already-done;
	ready;

this is the vr-grotty-grail rule:
	now sco-grotty-grail is true;
	say "My goodness! Look what you uncovered! A grail is useless in your current reduced circumstances, but it's a morale boost, because everyone knows bad guys just don't go finding grails. Well, maybe they find obscenely rich cursed ones, but this is about as ordinary as a grail can be. Still, yay grails.";

a goodrhyme rule (this is the vc-potty-pail rule):
	if player is not in jotty jail, unavailable;
	if sco-potty-pail is true:
		vcal "No. The potty pail was a relief to find, but enough of past discoveries. You need to get out of here.";
		already-done;
	ready;

this is the vr-potty-pail rule:
	now sco-potty-pail is true;
	say "While you don't plan to be here long enough to use the pail, you're glad to have found it and proven your, uh, emergency preparedness. Perhaps the next soul stuck in here, without your abilities, will appreciate it. Or perhaps you'll figure what to do so nobody is stuck here again.";

a goodrhyme rule (this is the vc-knotty-nail rule):
	if player is not in jotty jail, unavailable;
	ready;

this is the vr-knotty-nail rule:
	now sco-knotty-nail is true;
	say "Aha! There's something flawed. A knotty nail. You pull at it, and slowly it comes loose. It's surprisingly sharp. Then you start chipping away at various cracks until they grow bigger and crumble. The snotty snail is alerted, but by then you've got enough debris in your cell to fend it off. You flee, not caring where you're going...";
	if sco-potty-pail is false, max-down;
	if sco-grotty-grail is false, max-down;
	move player to Locking Lift;

a goodrhyme rule (this is the vc-docking-diffed rule):
	if player is not in locking lift, unavailable;
	if sco-docking-diffed is true:
		vcal "You already did this!";
		already-done;
	ready;

this is the vr-docking-diffed rule:
	now sco-docking-diffed is true;
	say "Hooray! You figured what to do! You get a point!";

a goodrhyme rule (this is the vc-rocking-rift rule):
	if player is not in locking lift, unavailable;
	if sco-rocking-rift is true:
		vcal "You already did this!";
		already-done;
	ready;

this is the vr-rocking-rift rule:
	now sco-rocking-rift is true;
	say "Hooray! You figured what to do! You get a point!";

a goodrhyme rule (this is the vc-grokking-grift rule):
	if player is not in locking lift, unavailable;
	if sco-grokking-grift is true:
		vcal "You already did this!";
		already-done;
	ready;

this is the vr-grokking-grift rule:
	now sco-grokking-grift is true;
	say "Hooray! You figured what to do! You get a point!";

a goodrhyme rule (this is the vc-shocking-shift rule):
	if player is not in locking lift, unavailable;
	if sco-shocking-shift is true:
		vcal "You already did this!";
		already-done;
	ready;

this is the vr-shocking-shift rule:
	now sco-shocking-shift is true;
	say "Hooray! You figured what to do! You get a point!";

a goodrhyme rule (this is the vc-stocking-stiffed rule):
	if player is not in locking lift, unavailable;
	if sco-stocking-stiffed is true:
		vcal "You already did this!";
		already-done;
	ready;

this is the vr-stocking-stiffed rule:
	now sco-stocking-stiffed is true;
	say "Hooray! You figured what to do! You get a point!";

a goodrhyme rule (this is the vc-mocking-miffed rule):
	if player is not in locking lift, unavailable;
	if sco-docking-diffed is false or sco-rocking-rift is false or sco-grokking-grift is false or sco-shocking-shift is false or sco-stocking-stiffed is false:
		vcal "You still need to see all the other ways through the lift.";
		not-yet;
	if sco-mocking-miffed is true:
		vcal "You already did this!";
		already-done;
	ready;

this is the vr-mocking-miffed rule:
	now sco-mocking-miffed is true;
	say "You are on your way to the final!";
	move player to trick trail;

volume homonym rejections

chapter thing homonyms

[this should not be alphabetized as otherwise Inform will assume from the first entry, the Bot Board, that everything is a person.]
[the fixfirst= in talf.txt makes sure that a regular item comes first.]

table of thing homonyms
mything	hom-rule (a rule)	myhom (topic)	custom-msg (text)
pear peach	--	"pair/pare"	"You don't need to reduce or duplicate the pear peach. It has a much bigger purpose."

section thing homonym rules [xxthr]

chapter room homonyms

[the room homonyms work as follows: if we have a rule with multiple room states/possibilities and no topic, then we skip the topic. If we have a rule and a topic, we print the custom-msg if the rule and topic match. Otherwise, we print the custom-msg for a generic error if the topic matches. So that is why the topic or rule can be blank.]

table of room homonyms
loc	hom-rule (a rule)	myhom (topic)	custom-msg (text)
bane be sane see	hom-bane-be-sane-see rule	--	--
trust track	--	"trussed"	"You [if sco-crust-crack is true]already opened things up[else]don't need to restrict things here but open them up[end if]."

this is the hom-bane-be-sane-see rule:
	if the player's command includes "bee":
		say "Homonyms aren't the way here. Look at the train tree for clues. A bee would provide nature and all but nothing staying.";
		the rule succeeds;
	else if the player's command includes "sea":
		say "Homonyms aren't the way here. Look at the train tree for clues. There will be large bodies of water elsewhere.";
		the rule succeeds;

volume no-way text

table of noways
noway-rm	noway-txt
Bane Be Sane See	"Cardinal directions don't mean much here, yet. Besides, there's no way back. You can only just enter the Train Tree one of three ways."
Roaring Rocks	"The rocks block every way except [if nnss is visited]back [end if]north."
Trust Track	"[if sco-crust-crack is false]The track seems to end here. You can really only go back west, unless you figure something out[else]The track now runs west-north but not [noun][end if]."
Warm Stun Storm	"The passage here is north-south."

volume guesses

book guesses by item, alphabetized

section known rules, alphabetized

Low Key Learny Jokey Journey Tables ends here.

---- DOCUMENTATION ----
