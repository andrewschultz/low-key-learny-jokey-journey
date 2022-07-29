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
"flow"	"flue"	--	--	false	true	true	false	show shoe	vc-flow-flue rule	vr-flow-flue rule	--	--
"glow"	"glue"	--	--	false	true	true	false	show shoe	vc-glow-glue rule	vr-glow-glue rule	--	--
"go"	"goo"	--	--	false	true	false	false	show shoe	vc-go-goo rule	vr-go-goo rule	--	--
"bro"	"brew"	--	--	false	true	true	false	show shoe	vc-bro-brew rule	vr-bro-brew rule	--	--
"stow"	"stew"	--	--	false	true	true	false	show shoe	vc-stow-stew rule	vr-stow-stew rule	--	--
"ho"	"who"	--	--	false	true	true	false	show shoe	vc-ho-who rule	vr-ho-who rule	--	--
"yo"	"you"	--	--	false	true	true	false	show shoe	vc-yo-you rule	vr-yo-you rule	--	--
"crow"	"crew"	--	--	false	true	true	false	show shoe	vc-crow-crew rule	vr-crow-crew rule	--	--
"throw"	"through"	--	--	false	true	true	false	show shoe	vc-throw-through rule	vr-throw-through rule	--	--

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
		vcal "You already neutralized the [sludge].";
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
		vcal "You already brought life back to the [show shoe]. You don't need to go back.";
		already-done;
	ready;

this is the vr-grokking-grift rule:
	say "[if sco-grokking-grift is false]You enter the Locking Lift and wind up in what seems to be a large amphitheater. It's empty, but it could put on a decent show[else]Back to the [show shoe].";
	now sco-grokking-grift is true;
	move player to New Show Shoe;

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
		vcp "You still need to see all the other ways through the lift.";
		not-yet;
	if sco-mocking-miffed is true:
		vcal "You already did this!";
		already-done;
	ready;

this is the vr-mocking-miffed rule:
	now sco-mocking-miffed is true;
	say "You are on your way to the final!";
	move player to trick trail;

a goodrhyme rule (this is the vc-flow-flue rule):
	if player is not in show shoe, unavailable;
	if sco-flow-flue is true:
		vcal "The flow flue is already present!";
		already-done;
	ready;

this is the vr-flow-flue rule:
	now sco-flow-flue is true;
	say "A whole mess of tubes appears! Stuff could totally zoom through it. But many of them look badly damaged.";
	abide by the flue-and-glue rule;

a goodrhyme rule (this is the vc-glow-glue rule):
	if player is not in show shoe, unavailable;
	if sco-glow-glue is true:
		vcal "You already acquired Glow Glue[if sco-flow-flue is true]. In fact, you already used it to prepare the flow flue[end if].";
		already-done;
	ready;

this is the vr-glow-glue rule:
	now sco-glow-glue is true;
	say "A rather large tube of Glow Glue drops by near you.";
	abide by the flue-and-glue rule;

a goodrhyme rule (this is the vc-go-goo rule):
	if player is not in show shoe, unavailable;
	if sco-go-goo is true:
		vcal "There's more than enough Go Goo for whoever actually wants it or just fools themselves into thinking they want it.";
		already-done;
	ready;

this is the vr-go-goo rule:
	now sco-go-goo is true;
	say "A huge pile of weird 'energy burst' snacks appears at your feet. You have no idea whether or not they're nutritious, but with that colorful packaging, they can be sold for a markup during and after the performance, to ensure the viability of the [show shoe]. Yay, commerce![paragraph break]You put them off to the side. They'll be useful once the show gets rocking.";

a goodrhyme rule (this is the vc-bro-brew rule):
	if player is not in show shoe, unavailable;
	if sco-flow-flue is false or sco-glow-glue is false:
		vcp "That's a good idea, but you have nowhere reliable to store such a beverage! Well, not yet.";
		not-yet;
	if sco-bro-brew is true:
		vcal "You already have a nice store of Bro Brew.";
		already-done;
	ready;

this is the vr-bro-brew rule:
	now sco-bro-brew is true;
	say "Through half of the Flow Flue, you watch as Bro Brew is pumped in.";
	abide by the stew-and-brew rule;

a goodrhyme rule (this is the vc-stow-stew rule):
	if player is not in show shoe, unavailable;
	if sco-flow-flue is false or sco-glow-glue is false:
		vcp "That's a good idea, but you have nowhere reliable to store something to eat! Well, not yet.";
		not-yet;
	if sco-stow-stew is true:
		vcal "You already put stew in the flue.";
		already-done;
	ready;

this is the vr-stow-stew rule:
	now sco-stow-stew is true;
	say "Some stew starts flowing through some of the flues.";
	abide by the stew-and-brew rule;

a goodrhyme rule (this is the vc-ho-who rule):
	if player is not in show shoe, unavailable;
	abide by the shoe-food-drink rule;
	abide by the complete-hype rule;
	if sco-ho-who is true:
		vcal "You already started to hype up the crowd.";
		already-done;
	ready;

this is the vr-ho-who rule:
	now sco-ho-who is true;
	say "'Ho! WHO?' you call out. The crowd seems to react favorably, waiting for the right phrase to go totally crazy.";

a goodrhyme rule (this is the vc-yo-you rule):
	if player is not in show shoe, unavailable;
	if sco-ho-who is false:
		abide by the shoe-food-drink rule;
		vcp "The crowd isn't quite wound up enough to appreciate it. That sounds like a good answer to a question, though.";
		not-yet;
	abide by the complete-hype rule;
	ready;

this is the vr-yo-you rule:
	now sco-yo-you is true;
	say "'Yo! YOU!' you cry, and there's a slightly undignified call-and-response, featuring both you and the crowd asking 'Ho! Who?' and responding. It's not brilliant discourse, but everyone's all jazzed for a bigger show now.";

a goodrhyme rule (this is the vc-crow-crew rule):
	if player is not in show shoe, unavailable;
	unless shoe-food-drink:
		vcp "Without reliable food and drink to support the Crow Crew, who would be ideal performers here, it's a no-go. So you need to do a bit more.";
		not-yet;
	if sco-crow-crew is true:
		vcal "You already did this!";
		already-done;
	ready;

this is the vr-crow-crew rule:
	now sco-crow-crew is true;
	say "The Crow Crew appears! They look ready to give a performance replete with humor, wit, song, pyrotechnics, and so forth. You just need to find a way to make a grand entrance.";

a goodrhyme rule (this is the vc-throw-through rule):
	if player is not in show shoe, unavailable;
	if sco-crow-crew is false:
		vcp "You have no performers to (figuratively) throw through and present to a crowd! Well, not yet.";
		not-yet;
	if sco-yo-you is false:
		vcp "You haven't properly hyped the Crow Crew yet! That's got to be easier than a tough phrase like 'throw through,' though.";
		not-yet;
	if sco-throw-through is true:
		vcal "You already hyped the crowd! You shouldn't be able to do this, but I want this warning in just in case.";
		already-done;
	ready;

this is the vr-throw-through rule:
	now sco-throw-through is true;
	say "The Crow Crew makes a dramatic entrance, thanks to your planning! The show is a big success. Everyone congratulates you. Your job here done, you return back...";
	move player to Locking Lift;
	if sco-go-goo is false, max-down;

section auxiliary rules

to decide whether shoe-food-drink:
	if sco-stow-stew is true and sco-bro-brew is true, yes;
	no;

this is the flue-and-glue rule:
	if sco-flow-flue is true and sco-glow-glue is true:
		say "With the Glow Glue, you patch up the flow flue as best you can. Surprisingly, you find some hoses to rinse them so they're clean enough that food and drink can go through them."

this is the stew-and-brew rule:
	if sco-bro-brew is true and sco-stow-stew is true:
		say "With a reliable source of food and drink (which, man, they smell pretty good) a crowd starts to gather. You can't do any rhyming stuff to them directly, but perhaps there's some general stuff you can shout.";

a goodrhyme rule (this is the shoe-food-drink rule):
	if not shoe-food-drink:
		vcp "There's no crowd to call out to to get them hyped, but if there were, that'd be great!";
		not-yet;

a goodrhyme rule (this is the complete-hype rule):
	if sco-yo-you is true:
		vcal "You already hyped the crowd up completely. Time to give them a show!";
		already-done;

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
