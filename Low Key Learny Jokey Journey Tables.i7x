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
"gad"	"gunk"	--	--	false	true	false	false	Hun Harm Fun Farm	vc-gad-gunk rule	vr-gad-gunk rule	--	--
"bad"	"bunk"	--	--	false	true	true	false	Hun Harm Fun Farm	vc-bad-bunk rule	vr-bad-bunk rule	--	--
"sad"	"sunk"	--	--	false	true	true	false	Hun Harm Fun Farm	vc-sad-sunk rule	vr-sad-sunk rule	--	--
"go"	"goon"	--	--	false	true	true	false	NoNoon	vc-go-goon rule	vr-go-goon rule	--	--
"co"	"coon"	--	--	false	true	true	false	NoNoon	vc-co-coon rule	vr-co-coon rule	"cocoon"	--
"mo"	"moon"	--	--	false	true	true	false	NoNoon	vc-mo-moon rule	vr-mo-moon rule	--	--
"so"	"soon"	--	--	false	true	true	false	NoNoon	vc-so-soon rule	vr-so-soon rule	--	--
"crow"	"croon"	--	--	false	true	true	false	NoNoon	vc-crow-croon rule	vr-crow-croon rule	--	--
"grotty"	"grail"	--	--	false	true	false	false	jotty jail	vc-grotty-grail rule	vr-grotty-grail rule	--	--
"potty"	"pail"	--	--	false	true	false	false	jotty jail	vc-potty-pail rule	vr-potty-pail rule	--	--
"knotty"	"nail"	--	--	false	true	true	false	jotty jail	vc-knotty-nail rule	vr-knotty-nail rule	--	--
"piss"	"poor"	--	--	false	true	false	false	--	vc-piss-poor rule	vr-piss-poor rule	--	--
"bye"	"bub"	--	--	false	true	false	false	high hub	vc-bye-bub rule	vr-bye-bub rule	--	-- [lift llp]
"wordy"	"walk"	--	--	false	true	false	false	NNSS	vc-wordy-walk rule	vr-wordy-walk rule	--	-- [llp after lift llp]
"docking"	"diffed"	--	--	false	true	true	false	High Hub	vc-docking-diffed rule	vr-docking-diffed rule	--	-- [start hub]
"grokking"	"grift"	--	--	false	true	true	false	High Hub	vc-grokking-grift rule	vr-grokking-grift rule	--	--
"rocking"	"rift"	--	--	false	true	true	false	High Hub	vc-rocking-rift rule	vr-rocking-rift rule	--	--
"shocking"	"shift"	--	--	false	true	true	false	High Hub	vc-shocking-shift rule	vr-shocking-shift rule	--	--
"stocking"	"stiffed"	--	--	false	true	true	false	High Hub	vc-stocking-stiffed rule	vr-stocking-stiffed rule	--	--
"mocking"	"miffed"	--	--	false	true	true	false	High Hub	vc-mocking-miffed rule	vr-mocking-miffed rule	--	--
"flow"	"flue"	--	--	false	true	true	false	show shoe	vc-flow-flue rule	vr-flow-flue rule	--	-- [start no new show shoe/rocking rift]
"glow"	"glue"	--	--	false	true	true	false	show shoe	vc-glow-glue rule	vr-glow-glue rule	--	--
"go"	"goo"	--	--	false	true	false	false	show shoe	vc-go-goo rule	vr-go-goo rule	--	--
"bro"	"brew"	--	--	false	true	true	false	show shoe	vc-bro-brew rule	vr-bro-brew rule	--	--
"stow"	"stew"	--	--	false	true	true	false	show shoe	vc-stow-stew rule	vr-stow-stew rule	--	--
"ho"	"who"	--	--	false	true	true	false	show shoe	vc-ho-who rule	vr-ho-who rule	--	--
"yo"	"you"	--	--	false	true	true	false	show shoe	vc-yo-you rule	vr-yo-you rule	--	--
"crow"	"crew"	--	--	false	true	true	false	show shoe	vc-crow-crew rule	vr-crow-crew rule	--	--
"throw"	"through"	--	--	false	true	true	false	show shoe	vc-throw-through rule	vr-throw-through rule	--	--
"dumb"	"doubt"	--	--	false	true	true	false	rum route	vc-dumb-doubt rule	vr-dumb-doubt rule	--	-- [start rum route]
"said"	"sos"	--	--	false	true	true	false	rum route	vc-said-sos rule	vr-said-sos rule	--	--
"umm"	"out"	--	--	false	true	true	false	rum route	vc-umm-out rule	vr-umm-out rule	--	--
"hey"	"hope"	--	--	false	true	true	false	Nay Nope Slay Slope	vc-hey-hope rule	vr-hey-hope rule	--	--
"k"	"cope"	--	--	false	true	true	false	Nay Nope Slay Slope	vc-k-cope rule	vr-k-cope rule	--	--
"bad"	"boast"	--	--	false	true	true	false	Mad Most Cad Coast	vc-bad-boast rule	vr-bad-boast rule	--	-- [start docking diffed/white whale]
"rad"	"roast"	--	--	false	true	true	false	Mad Most Cad Coast	vc-rad-roast rule	vr-rad-roast rule	--	--
"sight"	"sail"	--	--	false	true	true	false	Trite Trail	vc-sight-sail rule	vr-sight-sail rule	--	--
"might"	"mail"	--	--	false	true	true	false	Trite Trail	vc-might-mail rule	vr-might-mail rule	--	--
"flight"	"flail"	--	--	false	true	true	false	Trite Trail	vc-flight-flail rule	vr-flight-flail rule	--	--
"right"	"rail"	--	--	false	true	true	false	Trite Trail	vc-right-rail rule	vr-right-rail rule	--	--
"bright"	"brute"	--	--	false	true	true	false	Trite Trail	vc-bright-brute rule	vr-bright-brute rule	--	--
"excite"	"exhale"	--	--	false	true	true	false	Trite Trail	vc-excite-exhale rule	vr-excite-exhale rule	--	--
"tight"	"tease|tees"	--	--	false	true	false	false	slight sleaze	vc-tight-tease rule	vr-tight-tease rule	--	-- [start grokking grift]
"bright"	"breeze"	--	--	false	true	true	false	slight sleaze	vc-bright-breeze rule	vr-bright-breeze rule	--	--
"plight"	"please"	--	--	false	true	true	false	slight sleaze	vc-plight-please rule	vr-plight-please rule	--	--
"right"	"root"	--	--	false	true	true	false	slight sleaze	vc-right-root rule	vr-right-root rule	--	--
"bleak"	"blaming"	--	--	false	true	true	false	freak framing seek sameing	vc-bleak-blaming rule	vr-bleak-blaming rule	--	--
"chic"	"shaming"	--	--	false	true	true	false	freak framing seek sameing	vc-chic-shaming rule	vr-chic-shaming rule	--	--
"clique"	"claiming"	--	--	false	true	false	false	freak framing seek sameing	vc-clique-claiming rule	vr-clique-claiming rule	--	--
"bred"	"bros"	--	--	false	true	true	false	freak framing seek sameing	vc-bred-bros rule	vr-bred-bros rule	--	--
"shore"	"shoals"	--	--	false	true	true	false	sore souls' gore goals	vc-shore-shoals rule	vr-shore-shoals rule	--	-- [start shocking shift / sore souls' gore goals]
"four"	"foals"	--	--	false	true	true	false	sore souls' gore goals	vc-four-foals rule	vr-four-foals rule	--	--
"more"	"moles"	--	--	false	true	true	false	sore souls' gore goals	vc-more-moles rule	vr-more-moles rule	--	--
"lore"	"lols"	--	--	false	true	false	false	sore souls' gore goals	vc-lore-lols rule	vr-lore-lols rule	--	--
"night"	"newt"	--	--	false	true	false	false	sore souls' gore goals	vc-night-newt rule	vr-night-newt rule	--	--
"kite"	"coot"	--	--	false	true	false	false	sore souls' gore goals	vc-kite-coot rule	vr-kite-coot rule	--	--
"bold"	"bend"	--	--	false	true	true	false	old end	vc-bold-bend rule	vr-bold-bend rule	--	-- [mocking miffed: this is the endgame sequence, so put nothing after it]
"trolled"	"trend"	--	--	false	true	true	false	old end	vc-trolled-trend rule	vr-trolled-trend rule	--	--
"mold"	"mend"	--	--	false	true	true	false	old end	vc-mold-mend rule	vr-mold-mend rule	--	--
"bane"	"bat"	--	--	false	true	true	false	drain drat vain vat	vc-bane-bat rule	vr-bane-bat rule	--	--
"flain"	"flat"	--	--	false	true	true	false	drain drat vain vat	vc-flain-flat rule	vr-flain-flat rule	--	--
"splain"	"splat"	--	--	false	true	true	false	drain drat vain vat	vc-splain-splat rule	vr-splain-splat rule	--	--
"fret"	"free"	--	--	false	true	true	false	threat three met me	vc-fret-free rule	vr-fret-free rule	--	--
"set"	"see"	--	--	false	true	true	false	threat three met me	vc-set-see rule	vr-set-see rule	--	--
"yet"	"ye"	--	--	false	true	true	false	threat three met me	vc-yet-ye rule	vr-yet-ye rule	--	--
"plus"	"plaque"	--	--	false	true	true	false	drain drat vain vat	vc-plus-plaque rule	vr-plus-plaque rule	--	--
"trite"	"tolly|tully|tally|telly|tilly"	--	--	false	true	true	false	threat three met me	vc-t-lly rule	vr-t-lly rule	--	--

[xxvcvr]

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
		vcal "You already discovered useful junk in the form of FREE FRUIT.";
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
	if location of player is not trust track, unavailable;
	if sco-bussed-back is true:
		vcal "Just Jack has already been bussed back.";
		already-done;
	ready;

this is the vr-bussed-back rule:
	say "Just Jack knows his time is up. He takes off. Behind them, you find something ... a sussed sack! Though looking at it, it's also sus. It's both light and heavy, useful and useless. Perhaps you'll know what to do with it when the time comes.";
	now sco-bussed-back is true;
	moot Just Jack;
	now player has sus sack;

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
	say "A rumbling. Passage opens to the north.";
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
	say "You hear a clattering and screaming. Whoever it was guarding the way north sounds very disappointed that their oppression may now take mental effort![paragraph break]You're all set to go north, until who should block your way but a fervent Mad Monk?";
	move Mad Monk to Hun Harm Fun Farm;

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
	say "The crow croons! Your [rune] glows, then bursts in unison with the cocoon. A ... well, not quite a monster, but no animal you've seen before ... busts out.[paragraph break]Unfortunately, the commotion brings a few henchmen to where you are.
 You are arrested and dumped in...";
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
	take-lift High Hub;

a goodrhyme rule (this is the vc-piss-poor rule):
	if miss more diss door is not fungible, unavailable;
	ready;

this is the vr-piss-poor rule:
	now sco-piss-poor is true;
	say "The wood grains in the door almost seem to frown, and it morphs into an almost human form before shambling away at such an apt blow-off. Not really vulgar, but showing you can hang around, and you don't need to waste the really spicy stuff on it. Go, you!";
	moot miss more diss door;

a goodrhyme rule (this is the vc-bye-bub rule):
	if player is not in high hub, unavailable;
	if sco-bye-bub is true:
		vcal "No need to say good-bye twice. That's just awkward, besides, just typing [b]DOWN[r] or [b]D[r] saves emotional energy and keystrokes.";
		already-done;
	ready;

this is the vr-bye-bub rule:
	say "And just like that, you find the way down. You want to leave, and that's that. You hope something new is below ... and it is! A sturdy stalk pops through for you to climb down, and you do, back to [nnss]. Perhaps you will find additional inspiration.";
	move sturdy stalk to NNSS;
	now High Hub is mapped above NNSS;
	now NNSS is mapped below High Hub;
	now sco-bye-bub is true;
	move player to NNSS;

a goodrhyme rule (this is the vc-wordy-walk rule):
	if player is not in nnss, unavailable;
	if sco-wordy-walk is true:
		vcal "You have another wordy walk, but it isn't as effective as the first.";
		already-done;
	ready;

this is the vr-wordy-walk rule:
	now sco-wordy-walk is true;
	say "You take a nice long wordy walk, and it fills you with ideas and things to try when you go back to [high hub].";

a goodrhyme rule (this is the vc-docking-diffed rule):
	if player is not in High Hub, unavailable;
	if sco-excite-exhale is true:
		vcal "You already conquered [the whale]. No need to go back.";
		already-done;
	ready;

this is the vr-docking-diffed rule:
	now sco-docking-diffed is true;
	say "The locking lift leads you [one of]to a shore where you'd expect a watercraft, but there is none[or]back to the [cad coast][stopping].";
	take-lift mad most cad coast;

a goodrhyme rule (this is the vc-rocking-rift rule):
	if player is not in High Hub, unavailable;
	if sco-rocking-rift is true:
		vcal "You already brought life back to the [show shoe]. You don't need to go back.";
		already-done;
	ready;

this is the vr-rocking-rift rule:
	now sco-rocking-rift is true;
	say "[if sco-rocking-rift is false]You enter the Locking Lift and wind up in what seems to be a large amphitheater. It's empty, but it could put on a decent show[else]Back to the [show shoe].";
	take-lift Show Shoe;

a goodrhyme rule (this is the vc-grokking-grift rule):
	if player is not in High Hub, unavailable;
	if sco-grokking-grift is true:
		vcal "You already figured everything about grokking grift.";
		already-done;
	ready;

this is the vr-grokking-grift rule:
	say "You wonder if you are up to understanding seediness. But it is too late, by the time you're in the lift.";
	now sco-grokking-grift is true;
	take-lift Slight Sleaze;

a goodrhyme rule (this is the vc-shocking-shift rule):
	if player is not in High Hub, unavailable;
	if shoal-score is 2:
		vcal "You already took care of the shocking shift!";
		already-done;
	ready;

this is the vr-shocking-shift rule:
	now sco-shocking-shift is true;
	say "The locking lift lurches with what is indeed a shocking shift...";
	take-lift Sore Souls' Gore Goals;

a goodrhyme rule (this is the vc-stocking-stiffed rule):
	if player is not in High Hub, unavailable;
	if sco-umm-out is true:
		vcal "You already took care of the Rum Route!";
		already-done;
	ready;

this is the vr-stocking-stiffed rule:
	now sco-stocking-stiffed is true;
	say "You see a vision of kids ripped off during the holidays. You wind up [one of]back [or][stopping] in...";
	take-lift Rum Route;

a goodrhyme rule (this is the vc-dumb-doubt rule):
	if player is not in rum route, unavailable;
	abide by the rum-route-blanket-check rule;
	if sco-dumb-doubt is true:
		vcal "You already spread dumb doubt! If you try to spread more, you may wind up believing it yourself.";
		already-done;
	ready;

this is the vr-dumb-doubt rule:
	now sco-dumb-doubt is true;
	say "You create dumb doubt in the mind of your adversaries. This would be rude if they weren't mean, but they are, so it all feels creative and appropriate. How to expand that doubt, now?";

a goodrhyme rule (this is the vc-said-sos rule):
	if player does not have red rose, unavailable;
	if player is not in rum route:
		vcal "Said-sos could hit the spot elsewhere, but not here.";
		already-done;
	if sco-dumb-doubt is false:
		vcp "Your said-sos won't work cold. You need to show confidence and be persuasive.";
		not-yet;
	if sco-said-sos is true:
		vcal "You already gave said-sos!";
		not-yet;
	ready;

this is the vr-said-sos rule:
	now sco-said-sos is true;
	say "Your said-sos make sense. You're ready for the crescendo.";

a goodrhyme rule (this is the vc-umm-out rule):
	if player is not in rum route, unavailable;
	abide by the rum-route-blanket-check rule;
	if sco-dumb-doubt is false:
		vcp "You can't just come in here cold like that! Maybe with the right preparation, an 'umm, out' would be more forceful.";
		not-yet;
	if sco-said-sos is false:
		vcp "You've instilled doubt, but you need an argument. Perhaps one that originated somewhere else..";
		not-yet;
	ready;

this is the vr-umm-out rule:
	now sco-umm-out is true;
	say "With the confidence instilled by instilling dumb doubt, you finish the deal. You notice a valley below. You should go down when you are ready.";
	now Slay Slope is mapped below Rum Route;
	now Rum Route is mapped above Slay Slope;

a goodrhyme rule (this is the vc-hey-hope rule):
	if player is not in Nay Nope Slay Slope, unavailable;
	abide by the coped-in-slope rule;
	if sco-hey-hope is true:
		vcal "You already got hope started! Now to adjust fully.";
		already-done;
	ready;

this is the vr-hey-hope rule:
	now sco-hey-hope is true;
	say "How exhilarating! The hope is real! With that, a pall lifts over your depression. But not enough. Yet. You must finish the job.";

a goodrhyme rule (this is the vc-k-cope rule):
	if player is not in Nay Nope Slay Slope, unavailable;
	abide by the coped-in-slope rule;
	if sco-hey-hope is false:
		vcal "You will be able to cope soon, but there is an intermediate step.";
		not-yet;
	ready;

this is the vr-k-cope rule:
	now sco-k-cope is true;
	say "The hope that started turns into coping, with a bit of slang. You feel spiritually refreshed. You take the lift back to the [hub].";
	take-lift High Hub;

a goodrhyme rule (this is the vc-mocking-miffed rule):
	if player is not in High Hub, unavailable;
	if hub-score < 5:
		vcp "The mocking, miffed--well, it is there, but you don't quite have the confidence yet to face it. You've only fully tackled [if hub-score is 0]none[else][hub-score in words][end if] of the other five areas the locking lift can access.";
		now tried-mocking-miffed is true;
		not-yet;
	ready;

this is the vr-mocking-miffed rule:
	now sco-mocking-miffed is true;
	now tried-mocking-miffed is false;
	say "You are on your way to the final!";
	take-lift Old End;

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
		vcal "You already summoned the Crow Crew!";
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
	say "The Crow Crew makes a dramatic entrance, thanks to your planning! The show is a financial and emotional success. Everyone congratulates you. Surely, you must take a reward! Something![paragraph break]You can't think of anything you really need. Then, something that just wasn't used in the concert. A light lute! It's, well, something. If you were resourceful enough to get things working here, who knows what you can do with it?[paragraph break]Your job here done, you return back...";
	take-lift High Hub;
	if sco-go-goo is false, max-down;
	now player has light lute;

a goodrhyme rule (this is the vc-bad-boast rule):
	if player is not in Mad Most Cad Coast, unavailable;
	if sco-bad-boast is true:
		vcal "But you already cut the voice down to size.";
		already-done;
	ready;

this is the vr-bad-boast rule:
	now sco-bad-boast is true;
	say "The voice grows softer as you note the insult is not effective. Perhaps you just need to go on the offensive now.";

a goodrhyme rule (this is the vc-rad-roast rule):
	if player is not in Mad Most Cad Coast, unavailable;
	if sco-bad-boast is false:
		vcp "You need to put the current insults in check before doing that.";
		not-yet;
	if sco-rad-roast is true:
		vcal "You already won the insult war!";
		already-done;
	ready;

this is the vr-rad-roast rule:
	now sco-rad-roast is true;
	say "You strike back to show you know what's what. The voice goes away.!";

a goodrhyme rule (this is the vc-sight-sail rule):
	if player is not in Trite Trail, unavailable;
	if sco-sight-sail is true:
		vcal "You already summoned the sight sail. It's not going anywhere.";
		already-done;
	ready;

this is the vr-sight-sail rule:
	now sco-sight-sail is true;
	say "A watercraft drifts into view. Yes, indeed, it is the sight sail. It should help you track down [the whale] very nicely, when you're prepared.";
	follow the notify-final-whale rule;

a goodrhyme rule (this is the vc-might-mail rule):
	if player is not in Trite Trail, unavailable;
	if sco-might-mail is true:
		vcal "You already found armor to wear to fight [the whale]!";
		already-done;
	ready;

this is the vr-might-mail rule:
	now sco-might-mail is true;
	say "A suit of armor appears nearby! You don't want to put it on until you fight [the whale], but it's there when you need it.";
	follow the notify-final-whale rule;

a goodrhyme rule (this is the vc-flight-flail rule):
	if player is not in Trite Trail, unavailable;
	if sco-flight-flail is true:
		vcal "You already found a weapon that will be useful to fight [the whale]!";
		already-done;
	ready;

this is the vr-flight-flail rule:
	now sco-flight-flail is true;
	say "A translucent flail appears. You grab it, worrying it is too heavy. But as you do, it is easy to swing, and you feel faster. It will be a good weapon to use against the white whale.";
	follow the notify-final-whale rule;

a goodrhyme rule (this is the vc-right-rail rule):
	if player is not in Trite Trail, unavailable;
	if sco-sight-sail is false:
		vcp "You might need a rail to grab, but not out here. Maybe if you're on some sort of vessel.";
		not-yet;
	if sco-right-rail is true:
		vcal "You already figured the right rail to grab to be stable on the sight sail.";
		already-done;
	ready;

this is the vr-right-rail rule:
	now sco-right-rail is true;
	say "You inspect the sight sail, and you realize that, yes, there are rails to help you keep your balance and gain your sea legs as you hunt [the whale].";
	follow the notify-final-whale rule;

a goodrhyme rule (this is the vc-bright-brute rule):
	if player does not have light lute, unavailable;
	if sco-bright-brute is true:
		vcal "You already found an ally against the white whale.";
		already-done;
	if player is not in trite trail:
		vcal "That would be a great battle cry if a fearsome enemy were around.";
		not-yet;
	ready;

this is the vr-bright-brute rule:
	now sco-bright-brute is true;
	say "You call on a bright brute, who hides in the shadows to practice their fighting moves until such time as you're ready to attack the white whale. You'll need the muscle in case the whale somehow gets on board.";

a goodrhyme rule (this is the vc-excite-exhale rule):
	if player is not in Trite Trail, unavailable;
	unless whale-hunt-ready:
		if whale-score is 4 and sco-bright-brute is false:
			vcp "You feel as physically prepared as you can be, but you'll still need an ally from outside the Trite Trail.";
		else:
			vcp "Man! That'd be a good idea, but you aren't quite ready to hunt the whale, yet.";
		not-yet;
	if sco-excite-exhale is true:
		vcal "No, hunting the whale was exciting enough.";
		already-done;
	ready;

this is the vr-excite-exhale rule:
	now sco-excite-exhale is true;
	say "You get all jazzed up to fight [the whale], believing you can do it. Then you calm down and figure strategy. You make sure the mail is comfortable and you can swing the flail well, and you use the rail until you're able to balance easily.[paragraph break]You conquer the white whale! After doing so, you head back to High Hub.";
	take-lift High Hub;

a goodrhyme rule (this is the vc-bleak-blaming rule):
	if player is not in freak framing seek sameing, unavailable;
	abide by the did-i-shame rule;
	if sco-bleak-blaming is true:
		vcal "You already showed the worst-case. Now you need to rise above it with humor, and stuff!";
		already-done;
	ready;

this is the vr-bleak-blaming rule:
	now sco-bleak-blaming is true;
	say "You get into the groove with some general complaining.";

a goodrhyme rule (this is the vc-chic-shaming rule):
	if player is not in freak framing seek sameing, unavailable;
	abide by the did-i-shame rule;
	if sco-bleak-blaming is false:
		vcp "You can't jump into such cleverness. You have to bring people down so that they will be glad you picked them up.";
		not-yet;
	ready;

this is the vr-chic-shaming rule:
	now sco-chic-shaming is true;
	say "You segue from bleak blaming to an effortless, unavoidable, flowing conclusion, your voice rising to a crescendo for your main point. Bam!";

a goodrhyme rule (this is the vc-clique-claiming rule):
	if player is not in freak framing seek sameing, unavailable;
	if sco-clique-claiming is true:
		vcal "Clique claiming would not have nearly as much mileage the second time around.";
		already-done;
	ready;

this is the vr-clique-claiming rule:
	now sco-clique-claiming is true;
	say "Well, claiming that cliques exist and we aren't in it always works, even though we deserve to be, and even if we don't really want to be in good with the leaders. It's not practical, but boy, is it cathartic!";

a goodrhyme rule (this is the vc-bred-bros rule):
	if player is not in freak framing seek sameing, unavailable;
	if sco-chic-shaming is false:
		vcp "You haven't done enough so that said bred Bros can continue your work.";
		not-yet;
	if sco-bred-bros is true:
		vcal "There are enough bred Bros to give your message out.";
		already-done;
	ready;

this is the vr-bred-bros rule:
	now sco-bred-bros is true;
	say "Some bred Bros, more charismatic than you, arrive to disperse your message more charismatically.";
	take-lift High Hub;

a goodrhyme rule (this is the vc-tight-tease rule):
	if player is not in slight sleaze, unavailable;
	if sco-tight-tease is true:
		vcal "You already poked the slight sleaze back. You don't get double credit for that.";
		already-done;
	ready;

a goodrhyme rule (this is the vc-shore-shoals rule):
	if player is not in sore souls' gore goals, unavailable;
	if sco-shore-shoals is true:
		vcal "You have already rehabilitated the sore souls['] gore goals!";
		already-done;
	ready;

this is the vr-shore-shoals rule:
	now sco-shore-shoals is true;
	say "The area is much less desolate now. It feels like it could be inhabited.";
	print-the-loc;

a goodrhyme rule (this is the vc-four-foals rule):
	if player is not in sore souls' gore goals, unavailable;
	abide by the animals-need-shoals rule;
	if sco-four-foals is true:
		vcal "You already populated the area with foals!";
		already-done;
	ready;

this is the vr-four-foals rule:
	now sco-four-foals is true;
	say "Four foals begin frolicking! They thank you briefly before running away. They've made things a big cheerier.";
	check-red-rose;

a goodrhyme rule (this is the vc-more-moles rule):
	if player is not in sore souls' gore goals, unavailable;
	abide by the animals-need-shoals rule;
	if sco-more-moles is true:
		vcal "You don't need even more moles!";
		already-done;
	ready;

this is the vr-more-moles rule:
	now sco-more-moles is true;
	say "Since the ground's slightly holey here, you surmise the existence of moles and suggest there should be more.";
	check-red-rose;

a goodrhyme rule (this is the vc-lore-lols rule):
	if player is not in sore souls' gore goals, unavailable;
	if sco-lore-lols is true:
		vcal "You recount the myths you started to create, just to make sure they're not lost.";
		already-done;
	ready;

this is the vr-lore-lols rule:
	now sco-lore-lols is true;
	say "Why, yes, this place could use myths of creation and so forth[if sco-shore-shoals is false] for when it becomes habitable[end if].";

this is the lute-animal-check rule:
	if player is not in sore souls' gore goals or player does not have light lute, unavailable;
	if sco-shore-shoals is false:
		vcp "The enviroment is too inhospitable for such an animal right now.";
		not-yet;

a goodrhyme rule (this is the vc-night-newt rule):
	abide by the lute-animal-check rule;
	if sco-night-newt is true:
		vcal "You already populated the area with night newts!";
		already-done;
	ready;

this is the vr-night-newt rule:
	now sco-night-newt is true;
	say "A night newt appears and scurries off. The place feels livelier now.";

a goodrhyme rule (this is the vc-kite-coot rule):
	abide by the lute-animal-check rule;
	if sco-kite-coot is true:
		vcal "There are enough kite coots here.";
		already-done;
	ready;

this is the vr-kite-coot rule:
	now sco-kite-coot is true;
	say "The kite coot is an odd animal for sure but a worthy addition to the menagerie here.";

this is the vr-tight-tease rule:
	now sco-tight-tease is true;
	say "You figure, if you can't beat [']em, join [']em, or just pretend to. You demand something more risque, which the slight sleaze is unable to provide. This doesn't win the war, but it wins a small, satisfying pointless side battle.";

a goodrhyme rule (this is the vc-bright-breeze rule):
	if player is not in slight sleaze, unavailable;
	abide by the trite-trees-planted rule;
	if sco-bright-breeze is true:
		vcal "The bright breeze is already blowing!";
		already-done;
	ready;

this is the vr-bright-breeze rule:
	now sco-bright-breeze is true;
	say "The local weather shifts slightly but for the better. You feel cheerier and more open to foisting sarcasm on those that deserve it.";

a goodrhyme rule (this is the vc-plight-please rule):
	if player is not in slight sleaze, unavailable;
	abide by the trite-trees-planted rule;
	if sco-bright-breeze is false:
		vcp "You'd like to be that dismissive ('Plight? PLEASE!') but you aren't feeling positive enough for that. Perhaps a slight change in the weather...";
		not-yet;
	if sco-plight-please is true:
		vcal "The slight sleaze is already nearly gone.";
		already-done;
	ready;

this is the vr-plight-please rule:
	now sco-plight-please is true;
	say "'Plight? PLEASE!' you laugh. The sleaze lessens. The flight-flees you feel disappear.";

a goodrhyme rule (this is the vc-right-root rule):
	if player does not have light lute, unavailable;
	abide by the trite-trees-planted rule;
	if sleaze-score < 2:
		vcp "That will work when the sleaze is slight enough. Right now, you [if sleaze-score is 1]need to decrease it a bit more[else]haven't started, yet[end if].";
		not-yet;
	ready;

this is the vr-right-root rule:
	now sco-right-root is true;
	say "The right root takes hold in the ground, and out bloom ... trite trees! No, it's not picturesque, but it's better than what was there before.";

a goodrhyme rule (this is the vc-bold-bend rule):
	if player is not in old end, unavailable;
	if sco-bold-bend is true:
		vcal "You already changed the old end into something more navigable.";
		already-done;
	ready;

this is the vr-bold-bend rule:
	now sco-bold-bend is true;
	say "Of course the old end was too simplistic. You feel a bit of courage now. But the question is: courage to face what? It's probably something abstract.";

a goodrhyme rule (this is the vc-trolled-trend rule):
	if player is not in old end, unavailable;
	if sco-bold-bend is false:
		vcp "But you have nowhere to go if trolling would trend. Fortunately, that's the easier of your two tasks here, compared to this.";
		not-yet;
	if sco-trolled-trend is true:
		vcal "You can only deal with so much trolling!";
		already-done;
	ready;

this is the vr-trolled-trend rule:
	now sco-trolled-trend is true;
	say "You feel malevolence from the south. It is where you must go next, you are pretty sure. You're also pretty sure there'll be no way back. The thought depresses you a bit. You need a way to pull out of your doldrums.";

a goodrhyme rule (this is the vc-mold-mend rule):
	if player is not in old end, unavailable;
	if sco-trolled-trend is false:
		vcp "That might be good later, but currently, you have nothing to mend from and to mold a future mindset.";
		not-yet;
	if sco-mold-mend is true:
		vcal "You already set your mind straight. You're able to move on.";
		already-done;
	ready;

this is the vr-mold-mend rule:
	now sco-mold-mend is true;
	say "You feel emotionally ready to go forward, and what's more, you feel robust enough to push back against any temporary setbacks.";
	now nowhere is mapped north of Drain Drat Vain Vat;

a goodrhyme rule (this is the vc-bane-bat rule):
	if player is not in drain drat vain vat, unavailable;
	if sco-bane-bat is true:
		vcal "No, you don't need additional firepower.";
		already-done;
	ready;

this is the vr-bane-bat rule:
	now sco-bane-bat is true;
	say "A particularly lethal bat appears in your hands! It looks like it could really destroy stuff. In particular, this vat. But how?";

a goodrhyme rule (this is the vc-flain-flat rule):
	if player is not in drain drat vain vat, unavailable;
	if sco-bane-bat is false:
		vcp "There is nothing to leave the vat flain flat with.";
		already-done;
	if sco-flain-flat is true:
		vcal "No, you already trashed the (ex-)vat.";
	ready;

this is the vr-flain-flat rule:
	now sco-flain-flat is true;
	say "Wham! Wham! You take the bane bat to the vat, and it makes all kinds of dents, before it falls over. It disintegrates once it does, leaving you standing on a main mat, which also feels welcoming. But you have a feeling you still need to give a reason to enter.";

a goodrhyme rule (this is the vc-splain-splat rule):
	if player is not in drain drat vain vat, unavailable;
	if sco-flain-flat is false:
		vcp "You're not in a position to explain yourself. Well, not a position of enough power.";
		not-yet;
	if sco-splain-splat is true:
		vcal "With the splaining you do, you're ready to move on.";
		already-done;
	ready;

this is the vr-splain-splat rule:
	now sco-splain-splat is true;
	say "Now that you've busted out of the vain vat, you announce yourself! You're a bit worried a terrible henchman would appear, but none does.";

a goodrhyme rule (this is the vc-gad-gunk rule):
	if mad monk is not in location of player, unavailable;
	if sco-gad-gunk is true:
		vcal "You already insulted the mad monk that way.";
		already-done;
	ready;

this is the vr-gad-gunk rule:
	now sco-gad-gunk is true;
	say "An effective physical insult, but it doesn't really hit at the mad monk's heart.";

a goodrhyme rule (this is the vc-bad-bunk rule):
	if mad monk is not fungible, unavailable;
	if sco-bad-bunk is true:
		vcal "You already shamed the mad monk this way!";
		already-done;
	ready;

this is the vr-bad-bunk rule:
	now sco-bad-bunk is true;
	examine-monk;

a goodrhyme rule (this is the vc-sad-sunk rule):
	if mad monk is not fungible, unavailable;
	if sco-sad-sunk is true:
		vcal "You already shamed the mad monk this way!";
		already-done;
	ready;

this is the vr-sad-sunk rule:
	now sco-sad-sunk is true;
	examine-monk;

a goodrhyme rule (this is the vc-fret-free rule):
	if player is not in threat three met me, unavailable;
	abide by the marquee-there rule;
	if sco-fret-free is true:
		vcal "You don't want to force too much cheeriness.";
		already-done;
	ready;

this is the vr-fret-free rule:
	now sco-fret-free is true;
	say "You feel cheerier. Perhaps there is stuff to fret about, but you recognize it'd be a waste of energy, and you're pleased you got this far.";
	abide by the marquee-change rule;

a goodrhyme rule (this is the vc-set-see rule):
	if player is not in threat three met me, unavailable;
	abide by the marquee-there rule;
	if sco-set-see is true:
		vcal "You already struck a confident pose. You don't want to freeze there.";
		already-done;
	ready;

this is the vr-set-see rule:
	now sco-set-see is true;
	say "You stand tall and confident. You won't be easily pushed around!";
	abide by the marquee-change rule;

a goodrhyme rule (this is the vc-yet-ye rule):
	if player is not in threat three met me, unavailable;
	abide by the marquee-there rule;
	if sco-yet-ye is true:
		vcal "You already got medieval, or at least, you spoke medievally.";
		already-done;
	ready;

this is the vr-yet-ye rule:
	now sco-yet-ye is true;
	say "You think back to people who helped you in bad faith and realize you have a right to reject 'help' or 'advice' with strings attached and, yes, get under the nerves of people offering said 'services.'";
	abide by the marquee-change rule;

a goodrhyme rule (this is the vc-plus-plaque rule):
	if frightfully bright bully is not fungible:
		vcp "You consider conjuring up a gaudy, flattering plus-plaque. But you have nobody to give it to, and you'd hate to have to carry it around[if player is not in Threat Three Met Me]. Maybe elsewhere[end if].";
		not-yet;
	if sco-plus-plaque is true:
		vcal "You already made and gave the plus plaque to [the bully]! Now you just have to figure, or riff on, their name!";
		already-done;
	ready;

this is the vr-plus-plaque rule:
	now sco-plus-plaque is true;
	say "You have summoned a plus plaque! The [bully] accepts it before you can offer it. But then they are upset ... there's no name on it! What could their name be?";

a goodrhyme rule (this is the vc-t-lly rule):
	if player is not in threat three met me, unavailable;
	if sco-plus-plaque is false:
		say "That would be naming [the Bully], but you need to do a bit more.";
		not-yet;
	if sco-t-lly is true:
		vcal "Somehow, you already managed to win the game. This should not happen.";
		already-done;
	ready;

this is the vr-t-lly rule:
	now sco-t-lly is true;
	say "You figured your enemy's name! Congratulations! You have won!";
	win-the-game;

sco-trite-t-lly is a truth state that varies.

[zzvcvr]

section auxiliary rules and definitions

to print-the-loc: say "[line break][b][location of player][r][line break]" [?? move to universal?]

tried-mocking-miffed is a truth state that varies.

a goodrhyme rule (this is the trite-trees-planted rule):
	if sco-right-root is true:
		vcal "You already planted the right root to make trite trees. Nothing more to do here.";
		already-done;

to decide which number is sleaze-score:
	decide on boolval of sco-bright-breeze + boolval of sco-plight-please;

a goodrhyme rule (this is the marquee-there rule):
	if marquee-score < 3, continue the action;
	vcal "You already prepped yourself for the final fight. Now it is upon you.";
	already-done;

this is the marquee-change rule:
	if marquee-score is 3:
		say "The marquee crumbles, revealing your nemesis ... the Frightfully Bright Bully!";
		move Frightfully Bright Bully to Threat Three Met Me;
		moot marquee;
		print-the-loc;
	else if marquee-score is 2:
		say "The marquee turns more pronouncedly cracked as some of the text rubs off.";
	else:
		say "The marquee shakes slightly as some of the text is rubbed off."

to decide which number is monk-score:
	decide on boolval of sco-bad-bunk + boolval of sco-sad-sunk;

to examine-monk:
	if monk-score is 2:
		say "That's it. The mad monk flees. The path south really is free now.";
		moot mad monk;
		continue the action;
	say "The mad monk blinks a bit. That one hurt. It was pretty simple but effective. Maybe a bit more..."

to decide which number is shoal-score:
	decide on boolval of sco-four-foals + boolval of sco-more-moles;

to check-red-rose:
	say "[line break]";
	if shoal-score is 2:
		say "Things are livelier now. Plants come into bloom, etc. Of course, there is a red rose, because there always is one. You take it. Who knows where it may come in handy?";
		now player has red rose;
		take-lift high hub;
	else:
		say "You've almost filled this area's potential. Just a little more life...";

this is the animals-need-shoals rule:
	if sco-shore-shoals is false:
		vcp "Such animals would make this area nicer, but it's too desolate for them right now.";
		not-yet;

this is the coped-in-slope rule:
	if sco-k-cope is true:
		vcp "You have managed to deal with everything here.";
		not-yet;

this is the rum-route-blanket-check rule:
	if sco-umm-out is true:
		vcal "You've cleared the Rum Route. No need to overdo things.";
		already-done;

a goodrhyme rule (this is the did-i-shame rule):
	if sco-chic-shaming is true:
		vcal "The chic shaming complete, you're done here. No need to repeat what you did.";
		already-done;

to take-lift (rm - a room):
	move locking lift to rm;
	move the player to rm;
	if hub-score is 5 and delight dilute is off-stage:
		say "Suddenly a huge CLUNK! A small can slowly leaking some sort of gas appears at your feet. It's not lethal or anything. Just a can of DELIGHT-DILUTE. You immediately feel depressed and conflicted. You feel you'll be chickening out if you don't neutralize it, but you're wasting time if you try to. Tricky! What to do?";
		move delight dilute to high hub;

this is the notify-final-whale rule:
	unless whale-hunt-ready, continue the action;
	say "The last step will be something else! It will probably require, like, extra syllables in what you want to do. Both with psyching yourself up and then taking a step back and achieving mindfulness, or whatever.";

to decide what number is whale-score:
	decide on boolval of sco-sight-sail + boolval of sco-might-mail + boolval of sco-flight-flail + boolval of sco-right-rail + boolval of sco-bright-brute;

to decide whether whale-hunt-ready:
	if whale-score is 5, yes;
	no;

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

volume readables

table of readables (continued)
read-thing	read-txt
locking lift	"You see [lift-score] of 6 settings filled in:[paragraph break][fixed letter spacing][lift-stuff].[variable letter spacing][paragraph break]You've completed [hub-score in words] areas beyond the [high hub]."

to decide which number is lift-score:
	decide on boolval of sco-docking-diffed + boolval of sco-grokking-grift + boolval of sco-mocking-miffed + boolval of sco-rocking-rift + boolval of sco-shocking-shift + boolval of sco-stocking-stiffed;

to decide which number is hub-score: [rocking rift/throw through, docking diffed / excite-exhale, grokking grift/chic shaming, stocking stiffed/k cope, shocking shift/3 gore-goals points ]
	decide on boolval of sco-throw-through + boolval of sco-excite-exhale + boolval of sco-chic-shaming + boolval of sco-k-cope + boolval of (whether or not shoal-score is 2);

to say lift-stuff:
	say "[if sco-docking-diffed is true]DOCKING DIFFED[else]------- ------[end if][if sco-excite-exhale is true] (done)[end if].";
	say "[if sco-grokking-grift is true]GROKKING GRIFT[else]------- ------[end if][if sco-chic-shaming is true] (done)[end if].";
	say "[if tried-mocking-miffed is true or sco-mocking-miffed is true]MOCKING MIFFED[else]------- ------[end if][if hub-score < 5] (not yet)[end if]."; [ no (done) case since it is the final one ]
	say "[if sco-rocking-rift is true]ROCKING RIFT[else]------ ----[end if][if sco-throw-through is true] (done)[end if].";
	say "[if sco-shocking-shift is true]SHOCKING SHIFT[else]-------- -----[end if][if sco-throw-through is true] (done)[end if].";
	say "[if sco-stocking-stiffed is true]STOCKING STIFFED[else]-------- -------[end if][if sco-k-cope is true] (done)[end if]";

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
