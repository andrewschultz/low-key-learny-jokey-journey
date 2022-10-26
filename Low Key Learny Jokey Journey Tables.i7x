Version 1/220704 of Low Key Learny Jokey Journey Tables by Andrew Schultz begins here.

"This should briefly describe the purpose of Low Key Learny Jokey Journey Tables."

[UTILITIES:
rhyru.py checks to make sure the rhyme-rules have the right print stubs.
notyet.py checks to make sure every "not yet" has a "think" associated with it
]

volume core tables

section variables by tables

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

[to decide whether satisf of (ru - a rule):
	choose row with run-rule of ru in table of verb checks;
	if idid entry is true, yes;
	no;]

table of verb checks
w1 (text)	w2 (text)	posthom (topic)	hom-txt-rule (rule)	think-cue	okflip	core	idid	best-room	check-rule	run-rule	wfull (topic)	think-advice (text)
"dane|jane|lane|wayne"	"d|dee|g|gee|lee|whee"	--	--	false	false	true	false	Bane Be Sane See	vc-in-bane rule	vr-choose-name rule	"d/dee dane" or "dane dee/d" or "jane g/gee" or "gee/g jane" or "wayne whee" or "whee wayne" or "lane lee"	--
"plain"	"plea"	--	--	false	true	false	false	Bane Be Sane See	vc-plain-plea rule	vr-plain-plea rule	--	--
"boring"	"box"	--	--	false	true	true	false	Roaring Rocks	vc-boring-box rule	vr-boring-box rule	--	--
"gad"	"gunk"	--	--	false	true	false	false	Roaring Rocks	vc-gad-gunk rule	vr-gad-gunk rule	--	--
"bad"	"bunk"	--	--	false	true	true	false	Roaring Rocks	vc-bad-bunk rule	vr-bad-bunk rule	--	"[poke-mad-monk]."
"sad"	"sunk"	--	--	false	true	true	false	Roaring Rocks	vc-sad-sunk rule	vr-sad-sunk rule	--	"[poke-mad-monk]."
"grow"	"grudge"	--	--	false	true	true	false	NNSS	vc-grow-grudge rule	vr-grow-grudge rule	--	--
"done"	"dorm"	--	--	false	true	true	false	One Warm Stun Storm	vc-done-dorm rule	vr-done-dorm rule	--	--
"fun"	"form"	--	--	false	true	true	false	One Warm Stun Storm	vc-fun-form rule	vr-fun-form rule	--	"You can fill out a [b]FUN FORM[r] [once-now of vc-fun-form rule] you have somewhere to enter."
"see"	"sunk"	--	--	false	true	true	false	TTTT	vc-see-sunk rule	vr-see-sunk rule	--	--
"gee"	"junk"	--	--	false	true	true	false	TTTT	vc-gee-junk rule	vr-gee-junk rule	--	"You can say [b]GEE JUNK[r] [once-now of vc-gee-junk rule] more of the trunk is visible."
"whee"	"woot"	"wee"	vh-whee-woot rule	false	true	true	false	TTTT	vc-whee-woot rule	vr-whee-woot rule	--	--
"pear"	"peach"	"pair/pare"	--	false	true	true	false	TTTT	vc-pear-peach rule	vr-pear-peach rule	--	"You can make a [b]PEAR PEACH[r] [once-now of vc-pear-peach rule] you're happy enough to receive free fruit."
"bussed"	"back"	"bust"	vh-bust-back rule	false	false	true	false	Trust Track	vc-bussed-back rule	vr-bussed-back rule	--	--
"crust"	"crack"	--	--	false	true	true	false	Trust Track	vc-crust-crack rule	vr-crust-crack rule	--	"You can make the [b]CRUST CRACK[r] [once-now of vc-crust-crack rule] [jack] is gone."
"bare"	"beach"	"bear"	--	false	true	true	false	Rare Reach	vc-bare-beach rule	vr-bare-beach rule	--	"You can change the Rare Reach to a [b]BARE BEACH[r] [once-now of vc-bare-beach rule] you have a life-generating item."
"seep"	"soon"	--	--	false	true	true	false	Rare Reach	vc-seep-soon rule	vr-seep-soon rule	--	--
"reap"	"rune"	--	--	false	true	true	false	Rare Reach	vc-reap-rune rule	vr-reap-rune rule	--	"You can [b]REAP RUNE[r] [once-now of vc-reap-rune rule] you have spent time adventuring."
"un"	"arm"	--	--	false	true	true	false	Hun Harm Fun Farm	vc-un-arm rule	vr-un-arm rule	"un arm" or "unarm"	--
"go"	"goon"	--	--	false	true	true	false	NoNoon	vc-go-goon rule	vr-go-goon rule	--	"You can say [b]GO GOON[r] to dispel an enemy [once-now of vc-go-goon rule] you have a token of power."
"co"	"coon"	--	--	false	true	true	false	NoNoon	vc-co-coon rule	vr-co-coon rule	"cocoon"	"You can create a [b]COCOON[r] [once-now of vc-co-coon rule] you feel less watched."
"mo"	"moon"	"mow"	--	false	true	true	false	NoNoon	vc-mo-moon rule	vr-mo-moon rule	--	"You can call for [b]MO MOON[r] [once-now of vc-mo-moon rule] you have something else that needs light."
"so"	"soon"	"sew/sow"	--	false	true	true	false	NoNoon	vc-so-soon rule	vr-so-soon rule	--	"You can speed up time with [b]SO SOON[r] [once-now of vc-so-soon rule] the darkness is alleviated."
"crow"	"croon"	--	--	false	true	true	false	NoNoon	vc-crow-croon rule	vr-crow-croon rule	--	"You can cause daybreak with [b]CROW CROON[r] [once-now of vc-so-soon rule] it's close to daybreak."
"grotty"	"grail"	--	--	false	true	false	false	jotty jail	vc-grotty-grail rule	vr-grotty-grail rule	--	--
"potty"	"pail"	--	--	false	true	false	false	jotty jail	vc-potty-pail rule	vr-potty-pail rule	--	--
"knotty"	"nail"	"naughty"	--	false	true	true	false	jotty jail	vc-knotty-nail rule	vr-knotty-nail rule	--	--
"piss"	"poor"	"pore"	vh-piss-poor rule	false	true	false	false	--	vc-piss-poor rule	vr-piss-poor rule	--	"You can dismiss the [diss door] with [b]PISS POOR[r] [once-now of vc-piss-poor rule] you've re-summoned or revisited it."
"bye"	"bub"	"buy/by"	--	false	true	false	false	high hub	vc-bye-bub rule	vr-bye-bub rule	--	-- [lift llp]
"wordy"	"walk"	--	--	false	true	false	false	NNSS	vc-wordy-walk rule	vr-wordy-walk rule	--	-- [llp after lift llp]
"shocking"	"shift"	--	--	false	true	true	false	High Hub	vc-shocking-shift rule	vr-shocking-shift rule	--	-- [start hub] [remember these aren't alphabetized since some need to be completed before others]
"rocking"	"rift"	--	--	false	true	true	false	High Hub	vc-rocking-rift rule	vr-rocking-rift rule	--	-- [2nd necessary item, can get in either order but this is slightly tougher]
"gawking"	"gift"	--	--	false	true	true	false	High Hub	vc-gawking-gift rule	vr-gawking-gift rule	--	--
"grokking"	"grift"	--	--	false	true	true	false	High Hub	vc-grokking-grift rule	vr-grokking-grift rule	--	--
"docking"	"diffed"	--	--	false	true	true	false	High Hub	vc-docking-diffed rule	vr-docking-diffed rule	--	-- [3-5 are in approximate order of difficulty, then the LLP and the final room]
"despite"	"dispute"	--	--	false	true	false	false	high hub	vc-despite-dispute rule	vr-despite-dispute rule	--	"You can reason [b]DESPITE DISPUTE[r] [if light lute is moot]now[else]once[end if] there's something that makes you depressed."
"mocking"	"miffed"	--	--	false	true	true	false	High Hub	vc-mocking-miffed rule	vr-mocking-miffed rule	--	"You can search for [b]MOCKING MIFFED[r] [if hub-score is 5]now[else]once[end if] you've solved all the other hub areas."
"shore"	"shoals"	--	--	false	true	true	false	sore souls gore goals	vc-shore-shoals rule	vr-shore-shoals rule	--	-- [start shocking shift / sore souls' gore goals]
"four"	"foals"	"fore"	--	false	true	true	false	sore souls gore goals	vc-four-foals rule	vr-four-foals rule	--	"You can summon [b]FOUR FOALS[r] [once-now of vc-four-foals rule] [goals-hospitable]."
"more"	"moles"	--	--	false	true	true	false	sore souls gore goals	vc-more-moles rule	vr-more-moles rule	--	"You can summon [b]MORE MOLES[r] [once-now of vc-more-moles rule] [goals-hospitable]."
"lore"	"lols"	--	--	false	true	false	false	sore souls gore goals	vc-lore-lols rule	vr-lore-lols rule	--	--
"night"	"newt"	--	--	false	true	false	false	sore souls gore goals	vc-night-newt rule	vr-night-newt rule	--	"You can summon a [b]NIGHT NEWT[r] [once-now of vc-night-newt rule] [somewhere-hospitable]."
"kite"	"coot"	--	--	false	true	false	false	sore souls gore goals	vc-kite-coot rule	vr-kite-coot rule	--	"You can summon a [b]KITE COOT[r] [once-now of vc-kite-coot rule] [somewhere-hospitable]."
"flow"	"flue"	"flu/flew"	--	false	true	true	false	show shoe	vc-flow-flue rule	vr-flow-flue rule	--	-- [start no new show shoe/rocking rift]
"glow"	"glue"	--	--	false	true	true	false	show shoe	vc-glow-glue rule	vr-glow-glue rule	--	--
"go"	"goo"	--	--	false	true	false	false	show shoe	vc-go-goo rule	vr-go-goo rule	--	--
"bro"	"brew"	--	--	false	true	true	false	show shoe	vc-bro-brew rule	vr-bro-brew rule	--	"You can call for [b]BRO BREW[r] [once-now of vc-bro-brew rule] you have a reliable place to store it."
"stow"	"stew"	--	--	false	true	true	false	show shoe	vc-stow-stew rule	vr-stow-stew rule	--	"You can [b]STOW STEW[r] [once-now of vc-bro-brew rule] you have a reliable place to store it."
"ho"	"who"	"hoe"	--	false	true	true	false	show shoe	vc-ho-who rule	vr-ho-who rule	--	"You can call [b]HO WHO[r] [once-now of vc-ho-who rule] you have a crowd to call to."
"yo"	"you"	"yew"	--	false	true	true	false	show shoe	vc-yo-you rule	vr-yo-you rule	--	"You can call [b]YO YOU[r] [once-now of vc-yo-you rule] you have a partially hyped-up crowd."
"crow"	"crew"	--	--	false	true	true	false	show shoe	vc-crow-crew rule	vr-crow-crew rule	--	"You can call the [b]CROW CREW[r] as performers [once-now of vc-crow-crew rule] you have food and drink for a crowd."
"throw"	"through"	"threw"	--	false	true	true	false	show shoe	vc-throw-through rule	vr-throw-through rule	--	"You can [b]THROW THROUGH[r] the main act [once-now of vc-throw-through rule] they're here and you have a hyped-up, well-fed crowd in place."
"dumb"	"doubt"	--	--	false	true	true	false	rum route	vc-dumb-doubt rule	vr-dumb-doubt rule	--	-- [start rum route]
"said"	"sos"	--	--	false	true	true	false	rum route	vc-said-sos rule	vr-said-sos rule	--	"You can say [b]SAID SOS[r] [once-now of vc-said-sos rule] you've got a foothold in an argument."
"umm|um"	"out"	--	--	false	true	true	false	rum route	vc-umm-out rule	vr-umm-out rule	--	"You can say [b]UMM OUT[r] [once-now of vc-umm-out rule] you're on a roll arguing."
"hey"	"hope"	"hay"	--	false	true	true	false	Nay Nope Slay Slope	vc-hey-hope rule	vr-hey-hope rule	--	--
"k"	"cope"	--	--	false	true	true	false	Nay Nope Slay Slope	vc-k-cope rule	vr-k-cope rule	--	"You can say [b]K COPE[r] [once-now of vc-k-cope rule] you're able to cope fully."
"tight"	"tease|tees"	--	--	false	true	false	false	slight sleaze	vc-tight-tease rule	vr-tight-tease rule	--	-- [start grokking grift]
"bright"	"breeze"	--	--	false	true	true	false	slight sleaze	vc-bright-breeze rule	vr-bright-breeze rule	--	--
"plight"	"please"	--	--	false	true	true	false	slight sleaze	vc-plight-please rule	vr-plight-please rule	--	"You can explain [b]PLIGHT PLEASE[r] [once-now of vc-plight-please rule] you've started to chip away at the slight sleaze."
"right"	"root"	"write/route"	--	false	true	true	false	slight sleaze	vc-right-root rule	vr-right-root rule	--	"You can grow trite trees with the [b]RIGHT ROOT[r] [once-now of vc-right-root rule] you've fought back against the slight sleaze."
"bleak"	"blaming"	--	--	false	true	true	false	freak framing seek sameing	vc-bleak-blaming rule	vr-bleak-blaming rule	--	--
"chic|chique"	"shaming"	"shiek/sheik"	--	false	true	true	false	freak framing seek sameing	vc-chic-shaming rule	vr-chic-shaming rule	--	"You can go full-in for [b]CHIC SHAMING[r] [once-now of vc-chic-shaming rule] you've re-framed the freak framing."
"clique"	"claiming"	--	--	false	true	false	false	freak framing seek sameing	vc-clique-claiming rule	vr-clique-claiming rule	--	--
"bred"	"bros"	"bread"	--	false	true	true	false	freak framing seek sameing	vc-bred-bros rule	vr-bred-bros rule	--	"You can summon [b]BRED BROS[r] [once-now of vc-bred-bros rule] you need folks with charisma to communicate a positive vision."
"bad"	"boast"	--	--	false	true	true	false	Mad Most Cad Coast	vc-bad-boast rule	vr-bad-boast rule	--	-- [start docking diffed/white whale]
"rad"	"roast"	--	--	false	true	true	false	Mad Most Cad Coast	vc-rad-roast rule	vr-rad-roast rule	--	"You can try a [b]RAD ROAST[r] [once-now of vc-rad-roast rule] you've hit back a bit against the madness."
"sight"	"sail"	"site/sale"	--	false	true	true	false	Trite Trail	vc-sight-sail rule	vr-sight-sail rule	--	--
"might"	"mail"	"mite/male"	--	false	true	true	false	Trite Trail	vc-might-mail rule	vr-might-mail rule	--	--
"flight"	"flail"	--	--	false	true	true	false	Trite Trail	vc-flight-flail rule	vr-flight-flail rule	--	--
"right"	"rail"	"write/rale"	--	false	true	true	false	Trite Trail	vc-right-rail rule	vr-right-rail rule	--	"You can try to grab the [b]RIGHT RAIL[r] [once-now of vc-right-rail rule] you've got a vessel."
"bright"	"brute"	--	--	false	true	true	false	Trite Trail	vc-bright-brute rule	vr-bright-brute rule	--	"You can summon a [b]BRIGHT BRUTE[r] [once-now of vc-bright-brute rule] you need an ally."
"excite"	"exhale"	--	--	false	true	true	false	Trite Trail	vc-excite-exhale rule	vr-excite-exhale rule	--	"You can [b]EXCITE EXHALE[r] to prep yourself [once-now of vc-excite-exhale rule] you have an ally, fighting equipment, transport and stability."
"thread"	"throws"	--	--	false	true	true	false	Trite Trail	vc-thread-throws rule	vr-thread-throws rule	--	"You can execute [b]THREAD THROWS[r] to make a net to catch [the white whale] [once-now of vc-thread-throws rule] you've prepped fully."
"bold"	"bend"	--	--	false	true	true	false	old end	vc-bold-bend rule	vr-bold-bend rule	--	-- [mocking miffed: this is the endgame sequence, so put nothing after it]
"trolled"	"trend"	--	--	false	true	true	false	old end	vc-trolled-trend rule	vr-trolled-trend rule	--	"You can find a [b]TROLLED TREND[r] [once-now of vc-trolled-trend rule] the Old End is revealed as something more."
"mold"	"mend"	--	--	false	true	true	false	old end	vc-mold-mend rule	vr-mold-mend rule	--	"You can [b]MOLD MEND[r] [once-now of vc-mold-mend rule] you know what's disturbing, where."
"bane"	"bat"	--	--	false	true	true	false	drain drat vain vat	vc-bane-bat rule	vr-bane-bat rule	--	--
"flain"	"flat"	--	--	false	true	true	false	drain drat vain vat	vc-flain-flat rule	vr-flain-flat rule	--	"The vat can be [b]FLAIN FLAT[r] [once-now of vc-flain-flat rule] you have a suitable weapon."
"splain"	"splat"	--	--	false	true	true	false	drain drat vain vat	vc-splain-splat rule	vr-splain-splat rule	--	"You can [b]SPLAIN SPLAT[r] [once-now of vc-splain-splat rule] you're free of the vat."
"fed"	"foes"	"phos"	--	false	true	true	false	drain drat vain vat	vc-fed-foes rule	vr-fed-foes rule	--	"You can make [b]FED FOES[r] [once-now of vc-fed-foes rule] there are hungry foes to feed."
"fret"	"free"	--	--	false	true	true	false	threat three met me	vc-fret-free rule	vr-fret-free rule	--	--
"set"	"see"	--	--	false	true	true	false	threat three met me	vc-set-see rule	vr-set-see rule	--	--
"yet"	"ye"	--	--	false	true	true	false	threat three met me	vc-yet-ye rule	vr-yet-ye rule	--	--
"plus"	"plaque"	--	--	false	true	true	false	drain drat vain vat	vc-plus-plaque rule	vr-plus-plaque rule	--	"You can make a heavy [b]PLUS PLAQUE[r] [once-now of vc-plus-plaque rule] you have someone to dump it off on right away."
"turning"	"trite"	--	--	false	true	true	false	threat three met me	vc-turning-trite rule	vr-turning-trite rule	--	"[if sprite is off-stage]Perhaps one day you can label the whole adventure [b]TURNING TRITE[r][else]You can label [the sprite] [once-now of vc-turning-trite rule] they have an 'award' of sorts to write their name on[end if]."

a goodrhyme rule (this is the vc-in-bane rule):
	if player is not in Bane Be Sane See, unavailable;
	ready;

this is the vr-choose-name rule:
	if the player's command includes "jane":
		now the player is female;
		if the player's command includes "gee":
			now name-choice-index is 4;
		else:
			now name-choice-index is 3;
	else if the player's command includes "wayne":
		now the player is male;
		now name-choice-index is 6;
	else:
		if the player's command includes "lane":
			now name-choice-index is 5;
		else if the player's command includes "dee":
			now name-choice-index is 2;
		else:
			now name-choice-index is 1;
		now the player is neuter;
	now sco-choose-name is true;
	say "You walk through the door and tumble down to...";
	move the player to Roaring Rocks;
	if sco-plain-plea is false, max-down; [no way back to PLAIN PLEA]

a goodrhyme rule (this is the vc-plain-plea rule):
	if player is not in Bane Be Sane See, unavailable;
	if sco-plain-plea is true:
		vcal "You already made a plain plea.";
		already-done;
	ready;

this is the vr-plain-plea rule:
	say "Your plain plea seems perfect for the situation. The train tree grows brighter. It pervades the air for a bit, then dissipates.";
	now sco-plain-plea is true;

a goodrhyme rule (this is the vc-boring-box rule):
	if player is not in Roaring Rocks, unavailable;
	if sco-boring-box is true:
		vcal "You already uncovered the boring box.";
		already-done;
	ready;

this is the vr-boring-box rule:
	say "You know nice things come in humble packages, and anyway, anything too garish might've gotten confiscated. The roaring rocks crumble, leaving behind storing stocks and ... the boring box you'd hoped for. You totally want to [b]OPEN[r] it!";
	now player has boring box;
	now sco-boring-box is true;
	set the pronoun it to boring box;
	print-the-loc;

a goodrhyme rule (this is the vc-gad-gunk rule):
	if mad monk is not in location of player, unavailable;
	if sco-gad-gunk is true:
		vcal "[alr-ins]cleanliness.";
		already-done;
	ready;

this is the vr-gad-gunk rule:
	now sco-gad-gunk is true;
	say "Chiding the monk's cleanliness, groundless or otherwise, is an effective insult, though it doesn't win the war. Have a bonus point.";
	if warn-monk is true, current-table-note-x table of mad monk guesses;

a goodrhyme rule (this is the vc-bad-bunk rule):
	if mad monk is not fungible, unavailable;
	if sco-bad-bunk is true:
		vcal "[alr-ins]truthfulness.";
		already-done;
	abide by the check-dumping-monk rule;
	ready;

this is the vr-bad-bunk rule:
	abide by the diss-monk rule;
	now sco-bad-bunk is true;

a goodrhyme rule (this is the vc-sad-sunk rule):
	if mad monk is not fungible, unavailable;
	if sco-sad-sunk is true:
		vcal "[alr-ins]serenity.";
		already-done;
	abide by the check-dumping-monk rule;
	ready;

this is the vr-sad-sunk rule:
	abide by the diss-monk rule;
	now sco-sad-sunk is true;

a goodrhyme rule (this is the vc-grow-grudge rule):
	if player is not in NNSS, unavailable;
	if sco-grow-grudge is true:
		vcal "You already neutralized the [sludge].";
		already-done;
	ready;

this is the vr-grow-grudge rule:
	say "As your mood hardens, so does the sludge! But you don't see that right away. You're busy accepting you're not perfect and realizing you don't have to be and recognizing sometimes stewing is better than lashing out. The sludge even recedes a bit. You can go any of the four directions now.";
	now sco-grow-grudge is true;
	declue-here;

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
	now to-number of One Warm Stun Storm is 5304;

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
	declue-here;
	declue Done Dorm;

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
		vcal "You already discovered useful junk in the form of [fruit].";
		already-done;
	if sco-see-sunk is false:
		vcp "If there were junk in the tree trunk, you couldn't see it. It's way too tall!";
		not-yet;
	ready;

this is the vr-gee-junk rule:
	now sco-gee-junk is true;
	say "My goodness, yes! There is something in the tree trunk! It's marked [fruit].";
	now free fruit is in TTTT;
	declue-here;

this is the vh-whee-woot rule:
	say "You're thinking small. Be more enthusiastic!";
	the rule succeeds;

a goodrhyme rule (this is the vc-whee-woot rule):
	if player is not in TTTT and free fruit is not in TTTT, unavailable;
	if sco-whee-woot is true:
		vcal "You already appreciated the free fruit sufficiently.";
		already-done;
	ready;

this is the vr-whee-woot rule:
	now sco-whee-woot is true;
	say "The [fruit] seems to glow a bit from your praise.";
	declue FREE FRUIT;

a goodrhyme rule (this is the vc-pear-peach rule):
	if player is not in TTTT or pear peach is moot, unavailable;
	if sco-whee-woot is false:
		vcp "[gpp]The [fruit] sputters a bit, almost as if it sticks its tongue out at you. Weird as it sounds, you may have to show appreciation for it.";
		not-yet;
	if sco-pear-peach is true:
		vcal "But you already have the pear peach.";
		already-done;
	ready;

this is the vr-pear-peach rule:
	now sco-pear-peach is true;
	say "A weird fruit you haven't quite seen before pops into your hand as the [fruit] vanishes. Hooray!";
	moot free fruit;
	now player has peach pear;

this is the vh-bust-back rule:
	say "Violence isn't the answer, here, though you're close. You may wish to think of Jack differently.";
	the rule succeeds;

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
	now to-number of trust track is 5505;

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
	now rare reach is mapped north of trust track;
	declue-here;

this is the vc-bare-beach rule:
	if player is not in rare reach, unavailable;
	if sco-bare-beach is true:
		vcal "You already changed the Rare Reach.";
		already-done;
	if player does not have pear peach:
		vcp "You should be able to do that, but you lack the necessary implement.";
		not-yet;
	if player has pear peach and player is not in rare reach:
		vcp "You're in the wrong place. [if rare reach is visited]You've been to the right one[else]Explore a bit. The right place isn't far[end if].";
		not-yet;
	ready;

this is the vr-bare-beach rule:
	say "The rare reach fills out a bit, sucking the pear peach into it. There is now a bare beach. But it's not completely bare! You see a deep dune rise up.";
	move deep dune to rare reach;
	now sco-bare-beach is true;
	moot pear peach;
	print-the-loc;
	declue-here;

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
		vcp "The dune has started seeping, but not enough. Maybe you'll need to come back, err, soon. Watched pot never boils, and all that sort of thing.";
		not-yet;
	if sco-reap-rune is true:
		vcal "You already reaped a rune.";
		already-done;
	ready;

this is the vr-reap-rune rule:
	say "What do you know? You totally believe in yourself as you reach into the deep dune, and a rune turns up! It is in the shape of the Greek letter Rho. The deep dune, having served its purpose, sinks into the general landscape.";
	now player has Rho Rune;
	now sco-reap-rune is true;
	moot deep dune;

a goodrhyme rule (this is the vc-un-arm rule):
	if player is not in Hun Harm Fun Farm, unavailable;
	if sco-un-arm is true:
		vcal "You already unarmed the [fun farm]!";
		already-done;
	ready;

this is the vr-un-arm rule:
	now sco-un-arm is true;
	say "That wasn't too bad. Whoever it was guarding the way north sounds very disappointed that their oppression may now take actual effort!";
	now NoNoon is mapped north of Hun Harm Fun Farm;
	declue-here;

a goodrhyme rule (this is the vc-go-goon rule):
	if player is not in NoNoon, unavailable;
	if Rho Rune is off-stage:
		vcp "You try to form the words, but you don't feel brave enough. Perhaps the right sort of relic would help you.[rune-cue]";
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
		vcp "You can't do anything while oppressed by enemies. You need to call them off.[rune-cue]";
		not-yet;
	ready;

this is the vr-co-coon rule:
	now sco-co-coon is true;
	say "A cocoon appears! It's not ready to hatch yet. Maybe not for a while. Perhaps you could get time to move in weird ways.";
	move cocoon to NoNoon;

a goodrhyme rule (this is the vc-mo-moon rule):
	if player is not in NoNoon, unavailable;
	if sco-mo-moon is true:
		vcal "The moon has already appeared!";
		already-done;
	if sco-co-coon is false:
		vcp "It's scary the sky's so dark, but you sense someone, or something, might need the moon and such to reach its potential. But what, or who?[rune-cue]";
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
		vcp "You would like time to speed up and dawn to break. But something's missing from the sky.[rune-cue]";
		not-yet;
	ready;

this is the vr-so-soon rule:
	now sco-so-soon is true;
	say "You sensed time speeding up. The cocoon rustles. Perhaps one more sign signifying daytime will cause it to bust out.";
	now to-number of nonoon is 5405;

a goodrhyme rule (this is the vc-crow-croon rule):
	if player is not in NoNoon, unavailable;
	if sco-crow-croon is true:
		vcal "You already had the crow croon!";
		already-done;
	if sco-co-coon is false:
		vcp "The crow can't croon until it's ready. And it's not time yet. How could you make time advance, right here, right now?[rune-cue]";
		not-yet;
	ready;

this is the vr-crow-croon rule:
	now sco-crow-croon is true;
	say "The crow croons! Your [rune] glows, then bursts in unison with the cocoon. A ... well, not quite a monster, but no animal you've seen before ... flies out into the sky.[paragraph break]It is met by [the sprite]! 'Threat two!' screeches [the sprite]. A fight ensues, and the beast you've created gets away.[paragraph break]'Now you've done it!' says [the sprite]. 'That wasn't supposed to happen. Trust me. And no offense, you've learned the rules to get by, but you haven't learned the REAL rules. Maybe a spell in jail will help you.'";
	declue-here;
	move player to Jotty Jail;
	moot cocoon;
	moot rho rune;

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

this is the vh-piss-poor rule: say "A crude insult, not a crude image.";

a goodrhyme rule (this is the vc-piss-poor rule):
	if miss more diss door is off-stage or miss more diss door is moot, unavailable;
	if miss more diss door is not fungible:
		vcp "You'll need to summon the [diss door], with or without profanity.";
		not-yet;
	ready;

this is the vr-piss-poor rule:
	now sco-piss-poor is true;
	say "The wood grains in the door almost seem to frown, and it morphs into an almost human form before shambling away at such an apt blow-off. Not really vulgar, but showing you can hang around, and you don't need to waste the really spicy stuff on it. Go, you!";
	moot miss more diss door;

a goodrhyme rule (this is the vc-bye-bub rule):
	if player is not in High Hub, unavailable;
	if sco-bye-bub is true:
		vcal "No need to say good-bye twice. That's just awkward, besides, just typing [b]DOWN[r] or [b]D[r] saves emotional energy and keystrokes.";
		already-done;
	ready;

this is the vr-bye-bub rule:
	say "And just like that, you find the way down. You want to leave, and that's that. You hope something new is below ... and it is! A sturdy stalk pops through for you to climb down, and you do, back to [nnss]. Perhaps you will find additional inspiration.";
	declue-here;
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
	declue sturdy stalk;

a goodrhyme rule (this is the vc-shocking-shift rule):
	if locking lift is not fungible, unavailable;
	if shoal-core-score is 2:
		if sore souls gore goals is overall-go-useful, ready;
		vcal "You already took care of the shocking shift!";
		already-done;
	abide-nlb the lift-jump-pass rule;
	ready;

this is the vr-shocking-shift rule:
	if sco-shocking-shift is false, lift-adjust 5805;
	abide by the lift won't budge rule for gore goals;
	now sco-shocking-shift is true;
	take-lift Sore Souls Gore Goals;

a goodrhyme rule (this is the vc-rocking-rift rule):
	if locking lift is not fungible, unavailable;
	if sco-throw-through is true:
		if show shoe is overall-go-useful, ready;
		vcal "You already brought a performance back to the [show shoe]. You don't need to go back.";
		already-done;
	abide-nlb the lift-jump-pass rule;
	ready;

this is the vr-rocking-rift rule:
	if sco-rocking-rift is false, lift-adjust 5704;
	abide by the lift won't budge rule for show shoe;
	now sco-rocking-rift is true;
	take-lift Show Shoe;

a goodrhyme rule (this is the vc-gawking-gift rule):
	if locking lift is not fungible, unavailable;
	if sco-umm-out is true:
		if bum bout rum route is overall-go-useful, ready;
		vcal "You already took care of the Rum Route!";
		already-done;
	abide-nlb the lift-jump-pass rule;
	ready;

this is the vr-gawking-gift rule:
	if sco-gawking-gift is false, lift-adjust 5704;
	abide by the lift won't budge rule for rum route;
	now sco-gawking-gift is true;
	take-lift Rum Route;

a goodrhyme rule (this is the vc-grokking-grift rule):
	if locking lift is not fungible, unavailable;
	if sco-bred-bros is true:
		if slight sleaze is overall-go-useful, ready;
		vcal "You already gained insight into grokking grift.";
		already-done;
	abide-nlb the lift-jump-pass rule;
	ready;

this is the vr-grokking-grift rule:
	if sco-grokking-grift is false, lift-adjust 5805;
	abide by the lift won't budge rule for slight sleaze;
	now sco-grokking-grift is true;
	take-lift Slight Sleaze;

a goodrhyme rule (this is the vc-docking-diffed rule):
	if locking lift is not fungible, unavailable;
	if sco-thread-throws is true:
		if mad most cad coast is overall-go-useful, ready;
		vcal "You already conquered [the whale]. No need to go back.";
		already-done;
	abide-nlb the lift-jump-pass rule;
	ready;

this is the vr-docking-diffed rule:
	if sco-docking-diffed is false, lift-adjust 5706;
	abide by the lift won't budge rule for mad most cad coast;
	now sco-docking-diffed is true;
	take-lift mad most cad coast;

a goodrhyme rule (this is the vc-despite-dispute rule):
	if delight dilute is not in location of player and player does not have light lute, unavailable;
	if sco-despite-dispute is true:
		vcal "You already dispersed the can of DELIGHT-DILUTE!";
		already-done;
	if player has light lute:
		vcp "That's interesting and tricky, and it'll come in handy later. Trust me.";
		not-yet;
	ready;

this is the vr-despite-dispute rule:
	now sco-despite-dispute is true;
	say "The DELIGHT-DILUTE dissolves quickly, and you are back to your old confidence.";
	moot delight dilute;

a goodrhyme rule (this is the vc-mocking-miffed rule):
	if locking lift is not fungible, unavailable;
	if hub-score < 5:
		vcp "[try-miffed]The mocking, miffed--well, it is there, but you don't quite have the confidence yet to face it. You've only fully tackled [if hub-score is 0]none[else][hub-score in words][end if] of the other five areas the locking lift can access.";
		not-yet;
	ready;

this is the vr-mocking-miffed rule:
	now sco-mocking-miffed is true;
	now tried-mocking-miffed is false;
	say "[one of]Facing any sort of laughter is tough, but you know you have to do it.[or]You pick yourself up mentally again. This time, you'll tackle the source of the mocking, miffed[stopping]";
	declue locking lift;
	take-lift Old End;

a goodrhyme rule (this is the vc-shore-shoals rule):
	if player is not in sore souls gore goals, unavailable;
	if sco-shore-shoals is true:
		vcal "You have already rehabilitated the sore souls['] gore goals!";
		already-done;
	ready;

this is the vr-shore-shoals rule:
	now sco-shore-shoals is true;
	say "The area is much less desolate now. It feels like it could be inhabited.";
	print-the-loc;
	now from-number of sore souls gore goals is 5506;
	now to-number of sore souls gore goals is 5405;

a goodrhyme rule (this is the vc-four-foals rule):
	if player is not in sore souls gore goals, unavailable;
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
	if player is not in sore souls gore goals, unavailable;
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
	if player is not in sore souls gore goals, unavailable;
	if sco-lore-lols is true:
		vcal "You recount the myths you started to create, just to make sure they're not lost.";
		already-done;
	ready;

this is the vr-lore-lols rule:
	now sco-lore-lols is true;
	say "Why, yes, this place could use myths of creation and so forth[if sco-shore-shoals is false] for when it becomes habitable[end if].";
	if to-number of gore goals is -5404:
		now from-number of gore goals is -3;

a goodrhyme rule (this is the vc-night-newt rule):
	abide by the lute-animal-check rule;
	if sco-night-newt is true:
		vcal "You already populated the area with night newts!";
		already-done;
	ready;

this is the vr-night-newt rule:
	now sco-night-newt is true;
	say "A night newt appears and scurries around. You lose it in the scenery, but the place feels livelier now.";
	move night newt to gore goals;
	lose-silver-string;
	light-lute-llp 5504;

a goodrhyme rule (this is the vc-kite-coot rule):
	abide by the lute-animal-check rule;
	if sco-kite-coot is true:
		vcal "There are enough kite coots here.";
		already-done;
	ready;

this is the vr-kite-coot rule:
	now sco-kite-coot is true;
	say "The kite coot is an odd animal for sure but a worthy addition to the menagerie here.";
	move kite coot to gore goals;
	lose-silver-string;
	light-lute-llp 5404;

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
	say "A huge pile of weird 'energy burst' snacks appears at your feet. You have no idea whether or not they're nutritious, but with that colorful packaging, they can be sold for a markup [if sco-throw-through is false]during and after the performance[else]at future performances[end if], to ensure the viability of the [show shoe]. Yay, commerce[if shoe-storage < 2], and you don't even need any climate-controlled storage[end if]![paragraph break]You put them off to the side. They'll be useful once the show gets rocking.";
	if sco-throw-through is true:
		now from-number of show shoe is -3;

a goodrhyme rule (this is the vc-bro-brew rule):
	if player is not in show shoe, unavailable;
	if shoe-storage < 2:
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
	if shoe-storage < 2:
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
	abide by the shoe-crowd-yet rule;
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
		abide by the shoe-crowd-yet rule;
		vcp "The crowd isn't quite wound up enough to appreciate it. That sounds like a good answer to a question, though.";
		not-yet;
	abide by the complete-hype rule;
	ready;

this is the vr-yo-you rule:
	now sco-yo-you is true;
	say "'Yo! YOU!' you cry, and there's a slightly undignified call-and-response, featuring both you and the crowd asking 'Ho! Who?' and responding. It's not brilliant discourse, but everyone's all jazzed for a bigger show now.";
	now from-number of show shoe is 10907;
	change-shoe-number 5203;
	print-the-loc;

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
	say "The Crow Crew appears! They look ready to give a performance replete with humor, wit, song, pyrotechnics, and so forth. You just need to find a way to facilitate a grand entrance.";
	move crow crew to show shoe;
	change-shoe-number 5404;

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
	remove-spoke 5704; [ ROCKING RIFT done ]
	if sco-go-goo is true:
		now to-number of show shoe is -3;
	else:
		now to-number of show shoe is -5203;
	moot lazy loud crazy crowd;
	cheap-poem-cue light lute;

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
	now to-number of bum bout rum route is 5303;

a goodrhyme rule (this is the vc-said-sos rule):
	if player does not have red rose, unavailable;
	if sco-said-sos is true:
		vcal "You already gave said-sos!";
		already-done;
	if player is not in rum route:
		vcp "Said-sos could hit the spot elsewhere, but not here.";
		not-yet;
	if sco-dumb-doubt is false:
		vcp "Your said-sos won't work cold. You need to show confidence and be persuasive.";
		not-yet;
	ready;

this is the vr-said-sos rule:
	now sco-said-sos is true;
	say "Your said-sos make sense. You're ready for the crescendo.";
	decrease to-number of red rose by 5403;
	lose-rose-petal;

a goodrhyme rule (this is the vc-umm-out rule):
	if player is not in rum route, unavailable;
	abide by the rum-route-blanket-check rule;
	if sco-dumb-doubt is false:
		vcp "You can't just come in here cold like that! Maybe with the right preparation, an 'umm, out' would be more forceful.";
		not-yet;
	if sco-said-sos is false:
		vcp "You've instilled doubt, but you need an argument. Perhaps one that originated somewhere else.";
		not-yet;
	ready;

this is the vr-umm-out rule:
	now sco-umm-out is true;
	say "With the confidence instilled by instilling dumb doubt, you finish the deal. You notice a valley below. You should go down when you are ready.";
	now Slay Slope is mapped below Rum Route;
	declue-here;
	print-the-loc;

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
	print-the-loc;
	now to-number of nay nope slay slope is 5104;

a goodrhyme rule (this is the vc-k-cope rule):
	if player is not in Nay Nope Slay Slope, unavailable;
	abide by the coped-in-slope rule;
	if sco-hey-hope is false:
		vcp "You will be able to cope soon, but there is an intermediate step.";
		not-yet;
	ready;

this is the vr-k-cope rule:
	now sco-k-cope is true;
	say "The hope that started turns into coping, with a bit of slang. You feel spiritually refreshed. You take the lift back to the [hub].";
	remove-spoke 5704; [ GAWKING GIFT done ]

a goodrhyme rule (this is the vc-tight-tease rule):
	if player is not in slight sleaze, unavailable;
	if sco-tight-tease is true:
		vcal "You already poked the slight sleaze back. You don't get double credit for that.";
		already-done;
	ready;

this is the vr-tight-tease rule:
	now sco-tight-tease is true;
	say "You figure, if you can't beat [']em, join [']em, or just pretend to. You demand something more risque, which the slight sleaze is unable to provide. This doesn't win the war, but it wins a small, satisfying pointless side battle.[line break]Okay, yeah, I may've said this isn't that sort of game, but you're only getting a bonus point here, and this one just fit too well.";
	if sco-plight-please is true, declue-here;

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
	if sco-right-root is true:
		declue-here;
	else:
		now to-number of Slight Sleaze is -5504;

a goodrhyme rule (this is the vc-right-root rule):
	if player does not have light lute, unavailable;
	abide by the trite-trees-planted rule;
	if sleaze-score < 2:
		vcp "[if player is not in slight sleaze]The right root needs to be laid down somewhere, but not here[else]That will work when the sleaze is slight enough. Right now, you [right-root-need][end if].";
		not-yet;
	ready;

this is the vr-right-root rule:
	now sco-right-root is true;
	say "The right root takes hold in the ground, and out bloom ... trite trees! No, it's not picturesque, but it's better than what was there before. The trees bloom on all sides except one ... which cuts out a clear passage!";
	now Freak Framing is mapped south of Slight Sleaze;
	move trite trees to Slight Sleaze;
	lose-gold-string 5504;

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
	now to-number of seek sameing is 5407;

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
	now from-number of freak framing is 5306;
	if sco-clique-claiming is true:
		declue-here;
	else:
		now to-number of Freak Framing is -5607;
	print-the-loc;

a goodrhyme rule (this is the vc-clique-claiming rule):
	if player is not in freak framing seek sameing, unavailable;
	if sco-clique-claiming is true:
		vcal "Clique claiming would not have nearly as much mileage the second time around.";
		already-done;
	ready;

this is the vr-clique-claiming rule:
	now sco-clique-claiming is true;
	say "Well, claiming that cliques exist and we aren't in it always works, even though we deserve to be, and even if we don't really want to be in good with the leaders. It's not practical, but boy, is it cathartic!";
	if sco-chic-shaming is true, declue-here;

a goodrhyme rule (this is the vc-bred-bros rule):
	if player does not have red rose, unavailable;
	if sco-bred-bros is true:
		vcal "There are enough bred Bros to give your message out.";
		already-done;
	if player is not in freak framing:
		vcp "This isn't the place for Bred Bros to generate a more positive influence.";
		not-yet;
	if sco-chic-shaming is false:
		vcp "You haven't done enough so that said bred Bros can continue your work.";
		not-yet;
	ready;

this is the vr-bred-bros rule:
	now sco-bred-bros is true;
	say "Some bred Bros, more charismatic than you, arrive to disperse your message more charismatically. You engage in a ton of delegation, and stuff. They seem pleased, though with their charisma, it's possible they might secretly have contempt for you. Still, they're on board with your mission. Your work is done here.";
	move bred bros to seek sameing;
	remove-spoke 5805; [ GROKKING GRIFT done ]
	decrease to-number of red rose by 5404;
	lose-rose-petal;

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
	say "You strike back to show you know what's what. The voice goes away!";
	now Trite Trail is mapped west of Mad Most Cad Coast;
	print-the-loc;
	declue-here;

a goodrhyme rule (this is the vc-sight-sail rule):
	if player is not in Trite Trail, unavailable;
	if sco-sight-sail is true:
		vcal "You already summoned the sight sail. It's not going anywhere.";
		already-done;
	ready;

this is the vr-sight-sail rule:
	now sco-sight-sail is true;
	say "A watercraft drifts into view. Yes, indeed, it is the sight sail. It should help you track down [the whale] very nicely, when you're prepared.";
	move sight sail to trite trail;

a goodrhyme rule (this is the vc-might-mail rule):
	if player is not in Trite Trail, unavailable;
	if sco-might-mail is true:
		vcal "You already found armor to wear to fight [the whale]!";
		already-done;
	ready;

this is the vr-might-mail rule:
	now sco-might-mail is true;
	say "A suit of armor appears nearby! You don't want to put it on until you fight [the whale], but it's there when you need it.";
	move might mail to trite trail;
	adjust-trail 5504;
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
	move flight flail to trite trail;
	adjust-trail 5605;
	follow the notify-final-whale rule;

a goodrhyme rule (this is the vc-right-rail rule):
	if player is not in Trite Trail, unavailable;
	if sco-sight-sail is false:
		vcp "You might need a rail to grab, but not out here. Maybe if you've got some sort of vessel.";
		not-yet;
	if sco-right-rail is true:
		vcal "You already figured the right rail to grab to be stable on the sight sail.";
		already-done;
	ready;

this is the vr-right-rail rule:
	now sco-right-rail is true;
	say "You inspect the sight sail, and you realize that, yes, there are rails to help you keep your balance and gain your sea legs as you hunt [the whale].";
	adjust-trail 5504;
	follow the notify-final-whale rule;

a goodrhyme rule (this is the vc-bright-brute rule):
	if player does not have light lute, unavailable;
	if sco-bright-brute is true:
		vcal "Two bright brutes might be smart enough to understand the prestige of beating a white whale and beat each other up before the hunt began.";
		already-done;
	if player is not in trite trail:
		vcp "Good idea, but there's no huge foe for a bright brute to help you with here.";
		not-yet;
	ready;

this is the vr-bright-brute rule:
	now sco-bright-brute is true;
	say "You call on a bright brute, who hides in the shadows to practice their fighting moves until such time as you're ready to attack the white whale. You'll need the muscle in case the whale somehow gets on board.";
	move bright brute to trite trail;
	lose-gold-string 5605;
	follow the notify-final-whale rule;

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
	say "You get all jazzed up to fight [the whale], believing you can do it. Then you calm down and figure strategy. You're pretty confident. You just need something to restrict or capture [the white whale].";
	cue-thread-throws;
	declue-here;

a goodrhyme rule (this is the vc-thread-throws rule):
	if player does not have red rose, unavailable;
	if sco-thread-throws is true:
		vcal "You already tackled [the whale]!";
		already-done;
	if player is not in trite trail or sco-excite-exhale is false:
		vcp "The rose probably only has so much thread. You should only use it [if player is not in trite trail]to capture a big predator[else]once you're fully prepared to make a net and catch [the whale][end if].";
		not-yet;
	ready;

this is the vr-thread-throws rule:
	now sco-thread-throws is true;
	say "Everything is prepped! You throw out some nets. You're armed with the flight flail, protected by the might mail, supported by the bright brute, and holding the right rail in your sight sail. And you've mentally prepped.[paragraph break]Anyway, there's a lot of drama and stuff, but you defeat [the whale].";
	remove-spoke 5706; [ DOCKING DIFFED done ]
	decrease to-number of red rose by 5606;
	lose-rose-petal;
	moot sight sail;
	moot flight flail;
	moot bright brute;
	moot might mail;

a goodrhyme rule (this is the vc-bold-bend rule):
	if player is not in old end, unavailable;
	if sco-bold-bend is true:
		vcal "You already changed the old end into something more navigable.";
		already-done;
	ready;

this is the vr-bold-bend rule:
	now sco-bold-bend is true;
	say "Of course the old end was too simplistic. You feel a bit of courage now. But the question is: courage to face what? It's probably something abstract.";
	print-the-loc;
	now from-number of old end is 5404;
	now to-number of old end is 5705;

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
	now Drain Drat Vain Vat is mapped south of Old End;
	now to-number of old end is 5404;

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
	declue-here;

a goodrhyme rule (this is the vc-bane-bat rule):
	if player is not in drain drat vain vat, unavailable;
	if sco-bane-bat is true:
		vcal "No, you don't need additional firepower.";
		already-done;
	ready;

this is the vr-bane-bat rule:
	now sco-bane-bat is true;
	say "A particularly lethal bat appears in your hands! It looks like it could really destroy stuff. In particular, this vat. But how?";
	now to-number of vain vat is 5504;
	now player has bane bat;

a goodrhyme rule (this is the vc-flain-flat rule):
	if player is not in drain drat vain vat, unavailable;
	if sco-bane-bat is false:
		vcp "You have nothing to render the vat flain flat with. Well, not yet.";
		not-yet;
	if sco-flain-flat is true:
		vcal "No, you already trashed the (ex-)vat.";
		already-done;
	ready;

this is the vr-flain-flat rule:
	now sco-flain-flat is true;
	say "Wham! Wham! You take the bane bat to the vat, and it makes all kinds of dents. You strike a final blow, and as the vat falls over, both it and the bat disintegrate.[paragraph break]You're left standing on a main mat, which also feels welcoming. But you have a feeling you still need to give a reason to enter.";
	moot bane bat;
	now to-number of vain vat is 5605;

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
	say "Now that you've busted out of the vain vat, you announce yourself! You wonder if this was a fit of pride, but it's too late. A bunch of Pred Pros jump and ambush you. Your red rose, in a final blaze of glory, puts up a protective shield. But the Pros still guard the way south.";
	moot Red Rose;
	move Pred Pros to Vain Vat;
	move head hose to Vain Vat;
	now Threat Three Met Me is mapped south of Vain Vat;
	declue-here;
	print-the-loc;

a goodrhyme rule (this is the vc-fed-foes rule):
	if red rose is off-stage or pred pros are moot, unavailable;
	if Pred Pros are not fungible:
		vcp "But there are no foes to feed and mollify[if Pred Pros are off-stage], yet[else] here[end if]!";
		not-yet;
	if sco-fed-foes is true:
		vcal "You already fed your foes. This message should not be reachable.";
		already-done;
	ready;

this is the vr-fed-foes rule:
	now sco-fed-foes is true;
	say "What a feast appears! It looks like the red rose had a bit more something to give. And it keeps giving, until the Fed Foes are full. They nod, gratefully, still wary of the red rose's shield, before heading away. Your destiny awaits!";
	moot Pred Pros;
	moot head hose;

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
	decrease to-number of Threat Three by 5404;
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
	decrease to-number of Threat Three by 5303;
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
	decrease to-number of Threat Three by 5302;
	abide by the marquee-change rule;

a goodrhyme rule (this is the vc-plus-plaque rule):
	if player does not have sus sack and plus plaque is not fungible, unavailable;
	if spurning sprite is not fungible:
		vcp "You consider conjuring up a gaudy, flattering plus-plaque. But you have nobody to give it to, and you'd hate to have to carry it around[if player is not in Threat Three Met Me]. Maybe elsewhere[end if].";
		not-yet;
	if sco-plus-plaque is true:
		vcal "You already made and gave the plus plaque to [the sprite]! Now you just have to figure what belongs on [the plaque]!";
		already-done;
	ready;

this is the vr-plus-plaque rule:
	now sco-plus-plaque is true;
	say "You have summoned a plus plaque! The [sprite] accepts it before you can offer it. But then they are upset ... there's no name on it! What could their name be?";
	now plus plaque is in Threat Three;
	moot sus sack;

a goodrhyme rule (this is the vc-turning-trite rule):
	if player is not in threat three met me, unavailable;
	if spurning sprite is off-stage:
		vcp "Oh no! Is the story really getting that bad? Still ... that might be useful, in some context, somehow.";
		not-yet;
	if sco-plus-plaque is false:
		vcp "That is just talk, until you have something physical to notarize that this might, indeed, apply to [the sprite].";
		not-yet;
	if sco-turning-trite is true:
		vcal "Somehow, you already managed to win the game. This should not happen.";
		already-done;
	ready;

this is the vr-turning-trite rule:
	now sco-turning-trite is true;
	say "An invisible pen begins to fill the blank space in [the plaque]. The [sprite] smirks, at first, but then frowns once they see what's really there. 'That's a cheap shot! No! It's too obvious! Why would you? I ... I just get cleverer and cleverer! Or I would, if not for afterlife intrigue and backstabbing and the man keeping down the people with real ideas.' It waves its hand, and you are blown away to shouts of 'Ingrate' and 'Smart-aleck' and so forth.";
	wfak;
	say "You tumble down on the sidewalk where you first met [the sprite]. You feel like you learned nothing, and yet, at the same time, you think back to what made you say 'Wow, whoah,' trying to reconstruct that magic moment before you were interrupted. You feel as though your journeys helped piece together parts of it, and there will be other experiences that put a bit more together. You are confident that anything reminding you of [nkhh] will be worth checking out, and you will chip away pieces of the vision you had, and that will be good enough.";
	win-the-game;

section general auxiliary definitions

to print-the-loc: say "[line break][b][location of player][r][line break]" [?? move to universal?]

section auxiliary rules and definitions

[these are ranked by approximate game order SOULS SHOE ROUTE SLEAZE COAST END]

[rocks, game start]

a goodrhyme rule (this is the check-dumping-monk rule):
	if vc-dont-print is true, continue the action;
	if warn-monk is true or monk-score is 0, continue the action;
	now warn-monk is true;
	let lc be left-count of table of mad monk guesses;
	if lc is 0 and sco-gad-gunk is false, continue the action;
	say "You sense you could practice on the monk for a bit. Specifically, you have ";
	if lc > 0, say "[lc in words] guess[if lc > 1]es[end if]";
	if lc > 0 and sco-gad-gunk is false, say " and";
	if sco-gad-gunk is false, say " one bonus point";
	say " to help build muscle memory or practice grit or whatever for tougher opponents. Why, you might even [if lurking lump is off-stage]find[else]improve[end if] a puzzle-skipping item![paragraph break]Take down the monk anyway?";
	say "[i][bracket]NOTE: this nag will not appear again, and if you want to try good guesses against other enemies after they vanish, I have no problems if you [b]UNDO[r][i].[close bracket][i]";
	let X be indexed text; [ this sucks, but unfortunately 6G60 doesn't play nice with player's command and "if the player consents" ]
	now X is the player's command;
	let TS be whether or not the player dir-consents;
	change the text of the player's command to X;
	if TS is true, ready;
	if the player's command includes "bad", now monk-bad-cue is true;
	not-yet;

this is the diss-monk rule:
	if monk-score < 1:
		say "The mad monk blinks a bit. That one hurt. Your attack was simple but effective. Maybe one more...";
		continue the action;
	say "That's it. The mad monk flees. The path north really is free now.";
	moot mad monk;
	if sco-gad-gunk is false, max-down;

to say alr-ins: say "You already insulted the mad monk's "

to say sunk-or-bunk:
	say "[b]";
	if sco-sad-sunk is true:
		say "BAD BUNK";
	else if sco-bad-bunk is true:
		say "SAD SUNK";
	else:
		say "(BUG)";
	say "[r]";

to say monk-move-on: say "say [sunk-or-bunk] again to move on"

to say poke-mad-monk:
	say "You can [monk-move-on] ";
	if is-exhausted of table of mad monk guesses:
		say "now";
	else:
		say "when";
	say " you've poked the Mad Monk enough";

[guess pear peach]

to say gpp: now guessed-pear-peach is true;

[no noon]

to say rune-cue: if player does not have rho rune, say "[run paragraph on] You feel as though you're missing something basic and fundamental as well, an emblem to start whatever ritual you need to perform here[one of].[paragraph break]Also, more fourth-wallishly, the solution may be anticlimactic if you figure everything out here before finding said magic item. A few testers said so[or][stopping].[run paragraph on]"

[hub 0. lift and transport]

a goodrhyme rule (this is the lift-jump-pass rule):
	if player is not in high hub and current action is jerkingjumping, jump-reject;

to say try-miffed: now tried-mocking-miffed is true;

to take-lift (rm - a room):
	repeat through table of lift-texts:
		if rm is to-room entry, say "[if rm is visited][second-time entry][else][first-time entry][end if][line break]";
	move locking lift to rm;
	move the player to rm;
	if hub-score is 5 and delight dilute is off-stage:
		say "Suddenly your light lute pops and fizzes and springs from your hands! It explodes, and in its place is a can of DELIGHT-DILUTE. You immediately feel depressed and conflicted. You feel you'll be chickening out if you don't neutralize it, but you're wasting time if you try to. Tricky! What to do?";
		moot light lute;
		move delight dilute to high hub;

to remove-spoke (nu - a number):
	choose row hub-score in table of lift-texts;
	say "[line break][in-order entry][line break]";
	take-lift High Hub;
	if gong-hub-warn is false:
		now gong-hub-warn is true;
		if player-room-allow-threshold is nothing-left:
			say "[i][bracket][b]NOTE:[r] [i]you've finished your first spoke of the high hub, and you don't have to go back. This is a one-time nag that you may wish to activate the [b]GUIDE GONG[r][i] to block returning completely or [b]PRIDE PRONG[r][i] to close off areas where you've found all bonus points.[close bracket][r][line break]";

to lift-adjust (nu - a number):
	decrease to-number of locking lift by nu;
	if to-number of locking lift is 0, now to-number of locking lift is 5606;

the liftsummon rules are a room based rulebook.

a liftsummon rule for a room (called rm) (this is the lift won't budge rule):
	if the player is in rm:
		say "The lift doesn't move, since those words are what got you here.";
		the rule succeeds;
	if the player is in Old End:
		say "The lift wheezes. You could [b]ENTER[r] it to return to [high hub], but your destiny's ahead.";
		the rule succeeds;

to cheap-poem-cue (th - a thing):
	say "[line break]Man! That [th] seems like it appears in epic poems with heroes, and stuff. Perhaps";
	if number of multrhymables carried by player > 0, say ", like [the list of multrhymables carried by player],";
	say " it can help you deal with obstacles you can't quite tackle alone.";
	now player has th;

[hub 1. shore]

to check-red-rose:
	say "[line break]";
	if shoal-core-score is 2:
		say "Things are livelier now. Plants come into bloom, etc. Of course, there is a red rose, because there always is one during such a quick transformation. You take it.";
		if sco-lore-lols is false:
			now to-number of gore goals is -5404;
		else:
			now from-number of gore goals is -3;
		remove-spoke 5805; [SHOCKING SHIFT done]
		cheap-poem-cue red rose;
	else:
		say "You've almost filled this area's potential. Just a little more life...";

this is the animals-need-shoals rule:
	if sco-shore-shoals is false:
		vcp "[nice-animals].";
		not-yet;

to lose-rose-petal: say "[line break]A[one of][or]nother[stopping] bright petal falls off the red rose and blows away in the wind."

to say goals-hospitable: say "[gore goals] is more hospitable"

to say somewhere-hospitable: say "you're somewhere hospitable to animals"

[hub 2. shoe]

to change-shoe-number (nu - a number):
	decrease to-number of show shoe by nu;
	if to-number of show shoe is 0, now to-number of show shoe is 5507;

this is the flue-and-glue rule:
	if shoe-storage is 2:
		say "With the Glow Glue, you patch up the flow flue as best you can. Surprisingly, you find some hoses to rinse them so they're clean enough that food and drink can go through them.";
		now to-number of show shoe is 10708;

this is the stew-and-brew rule:
	if shoe-concessions is 2:
		say "With a reliable source of food and drink (which, man, they smell pretty good) a crowd starts to gather. You can't do any rhyming stuff to them directly, but perhaps there's some general stuff you can shout.";
		move lazy loud crazy crowd to show shoe;
		now to-number of show shoe is 10607;

a goodrhyme rule (this is the shoe-crowd-yet rule):
	if not shoe-food-drink:
		vcp "There's no crowd to call out to to get them hyped, but if there were, that'd be great!";
		not-yet;

a goodrhyme rule (this is the complete-hype rule):
	if sco-yo-you is true:
		vcal "You already hyped the crowd up completely. Time to give them a show!";
		already-done;

to lose-gold-string (nu - a number):
	say "[line break]A[one of][or]nother[stopping] gold[twang].";
	decrease to-number of light lute by nu;
	if to-number of light lute is 0:
		if sco-night-newt is false, decrease to-number of light lute by 5504;
		if sco-kite-coot is false, decrease to-number of light lute by 5404;
		if to-number of light lute is 0, now from-number of light lute is -4;

to lose-silver-string: say "[line break]A[one of][or]nother[stopping] silver[twang]."

to say twang: say " string twangs on the light lute. When you look again, it's a dusty greyish color"

to light-lute-llp (nu - a number):
	if to-number of light lute < 0:
		increase to-number of light lute by nu;
		if to-number of light lute is 0, now from-number of light lute is -4;

[hub 2a. got lute]

this is the lute-animal-check rule:
	if player does not have light lute, unavailable;
	if player is not in gore goals:
		vcp "This isn't a safe animal habitat. Somewhere else could be, though.";
		not-yet;
	if sco-shore-shoals is false:
		vcp "[nice-animals].";
		not-yet;

to say nice-animals: say "[if player is in gore goals]Such animals would make this area nicer, but it's too desolate for them here right now[else]Animals like that would fit in well somewhere else[end if]"

[hub 3. route]

this is the rum-route-blanket-check rule:
	if sco-umm-out is true:
		vcal "You've cleared the Rum Route. No need to overdo things.";
		already-done;

this is the coped-in-slope rule:
	if sco-k-cope is true:
		vcp "You have managed to deal with everything here.";
		not-yet;

[hub 4a. sleaze]

to say right-root-need: say "[if sleaze-score is 1]need to decrease it a bit more[else]haven't started, yet[end if]"

a goodrhyme rule (this is the trite-trees-planted rule):
	if sco-right-root is true:
		vcal "You already planted the right root to make trite trees. Nothing more to do here.";
		already-done;

[hub 4b. beyond sleaze]

a goodrhyme rule (this is the did-i-shame rule):
	if sco-chic-shaming is true:
		vcal "The chic shaming complete, you're done here. No need to repeat what you did.";
		already-done;

[hub 5. whale]

this is the notify-final-whale rule:
	unless whale-hunt-ready, continue the action;
	say "The last step of your prep will be something else! It will probably require, like, extra syllables in what you want to do. Both with psyching yourself up and then taking a step back and achieving mindfulness, or whatever.";

to decide what number is whale-score:
	decide on boolval of sco-sight-sail + boolval of sco-might-mail + boolval of sco-flight-flail + boolval of sco-right-rail + boolval of sco-bright-brute + boolval of sco-excite-exhale;

to decide what number is whale-stuff:
	decide on boolval of sco-sight-sail + boolval of sco-might-mail + boolval of sco-flight-flail;

to adjust-trail (nu - a number):
	decrease to-number of trite trail by nu;
	if to-number of trite trail is 0, now to-number of trite trail is 5606;

[ending sequence]

a goodrhyme rule (this is the marquee-there rule):
	if marquee-score < 3, continue the action;
	vcal "You already prepped yourself for the final fight. Now it is upon you.";
	already-done;

this is the marquee-change rule:
	if marquee-score is 3:
		say "The marquee crumbles. Mostly, it crumbles into what was the exit north. Behind it is ... [the sprite]! Of course! 'THREAT THREE MET ME!' it [sprite] booms, before asking if you've brought it some sort of gift to thank it for giving you something to actually do with your day. Have you? No? Really, how rude! Well, there must be something! Preferably something that can be personalized.";
		declue-here;
		move spurning sprite to Threat Three Met Me;
		moot marquee;
		now nowhere is mapped north of Threat Three Met Me;
		print-the-loc;
	else if marquee-score is 2:
		say "The marquee becomes even more visibly cracked. Only one bit of text is left on it.";
	else:
		say "The marquee shakes slightly as some of the text is rubbed off."

volume text when taking lift

table of lift-texts
to-room	first-time	second-time	in-order
sore souls	"You reflect on how we all want big changes, but we're uncomfortable with them happening just this way."	"The [lift] lurches again with a shift shocking enough even though you know it's coming..."	"The [sprite]'s voice: 'Oh. You escaped. Congratulations. Showing some initiative there. But ... but you know you're not really showing creativity. It's just a formula, and you have it nailed down. Which is something, I guess.'"
show shoe	"You wonder if a concert will really take your mind off things. You wonder what things there are to take your mind off. Before you finish wondering, [the lift] drops you by a large amphitheater. Empty, but big enough for a good show."	"Back to the [show shoe]."	"The [sprite], again. You can hear but not see it. 'Credit for perseverance, eh? Well, it's not like you have anything else to do, trapped as you are.'"
rum route	"You think back to the bad gifts you've received when people said you should be grateful for their consideration. Then you think back to favors people did, just because, and how much they meant. Gawking in each case. You dare to ask for another gift that will make you gawk the right way..."	"You know what to expect this time, so you don't gawk as much."	"The [sprite] is back with more 'encouragement:' 'So you're actually solving things, maybe even bringing people together, eh? But ever done anything like this in the real world?'"
slight sleaze	"You wonder there is a way to understand con artistry without becoming one. As you enter the lift, you reflect that you seem to know when someone is pulling your leg, but they always talk you into believing them. How to break that cycle?"	"Yes, there is still grift to be grokked. Alas, there always will be."	"The [sprite] can't help itself. 'You know, I could almost make time to see you, if you do a bit more. See if you learned more than how to make some silly rhymes.'"
Mad Most Cad Coast	"The locking lift leads you to a shore where you'd expect a watercraft, but there is none."	"Back to the [cad coast]."	"The [sprite]'s voice crackles through again. 'I've got some free time just now. Tell me what you've learned, with me as your guide. Heaven knows, I deserve an adventure. I could learn from it. You'd better have, too. Just, don't blame me if you're too bored with your own sad life once it's done.'"

volume readables

table of readables (continued)
read-thing	read-txt
train tree	"There are three ways to enter the train tree: under writing saying [b]WAYNE (WHEE)[r], [b]JANE G[r], or [b]DANE D/LANE LEE[r]. You can probably type whichever, to enter as you please."
locking lift	"You see [lift-score in words] of six settings filled in:[paragraph break][fixed letter spacing][lift-stuff].[variable letter spacing][paragraph break]You've completed [hub-score in words] areas beyond the [high hub]."

to say lift-stuff:
	say "[if sco-docking-diffed is true]DOCKING DIFFED[else]------- ------[end if][if sco-excite-exhale is true] (done)[end if].";
	say "[if sco-gawking-gift is true]GAWKING GIFT[else]------- ----[end if][if sco-k-cope is true] (done)[end if]";
	say "[if sco-grokking-grift is true]GROKKING GRIFT[else]-------- ------[end if][if sco-chic-shaming is true] (done)[end if].";
	say "[if spoke-6-known]MOCKING MIFFED[else]------- ------[end if][if hub-score < 5] (not yet)[end if]."; [ no (done) case since it is the final one ]
	say "[if sco-rocking-rift is true]ROCKING RIFT[else]------ ----[end if][if sco-throw-through is true] (done)[end if].";
	say "[if sco-shocking-shift is true]SHOCKING SHIFT[else]-------- -----[end if][if shoal-core-score is 2] (done)[end if].";

volume homonym rejections

chapter thing homonyms

[this should not be alphabetized as otherwise Inform will assume from the first entry, the Bot Board, that everything is a person.]
[the fixfirst= in talf.txt makes sure that a regular item comes first.]

table of thing homonyms
mything	hom-rule (a rule)	myhom (topic)	custom-msg (text)
pear peach	--	"pair/pare"	"You don't need to reduce or duplicate the pear peach. It has a much bigger purpose."

section thing homonym rules

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
TTTT	"There are even bigger and more intimidating trees every way except south."
Hun Harm Fun Farm	"If you left the north/east passage, you'd probably get lost."
NoNoon	"[if sco-mo-moon is false]Any way but back south might get you lost in this darkness[else]In this quasi-sacred valley, the only way out is back south[end if]."
Rare Reach	"The [if sco-bare-beach is true]water[else]darkness[end if] encompasses you every way except back south."
Jotty Jail	"This being a jail, you can't walk out. You have to find a weak link or something."
High Hub	"The only way out of the High Hub[if sco-bye-bub is true], besides going back down the sturdy stalk,[else] (well, currently,)[end if] is telling the locking lift where you want to go. Okay, the only non-lethal way."
Gore Goals	"Exploring the [if sco-shore-shoals is false]darkness would be unwise[else]animal sanctuary you hope to build would feel invasive[end if]. The only way out is entering the lift."
New Show Shoe	"The expanses beyond [show shoe] seem daunting indeed. You're the only person to bring together a successful show, though you can take the lift elsewhere if you're stuck here."
Mad Most Cad Coast	"West is the only way out, other than the lift. You [if sco-rad-roast is false]don't yet [end if]have the confidence to go west."
Trite Trail	"Although the trite trail extends in all directions except, well, where the whale is, you'd get lost everywhere except back east."
Rum Route	"Directions seem meaningless here, though you can always enter the lift. You [if sco-umm-out is true]can, however, go down now[else]suspect the route leads somewhere, once you're focused right[end if]."
nay nope slay slope	"The only physical way out of these depths is up, [if sco-k-cope is true]and you already pulled yourself out of mental depths[else]though you can pull yourself out of mental depths with the right words[end if]."
slight sleaze	"You can only enter the lift or [if sco-right-root is true]go south through the path you forged[else]try to dispel the fright freeze and find a passage[end if]."
seek sameing	"This is a hideout think-tank. If there's a more secret place, it's beyond you. So, back north it is, when you want to leave."
Old End	"[if sco-mold-mend is true]You are ready to go south now. No turning away.[else if sco-trolled-trend is true]The trolled trend got to you, but you can't forsake the bend entirely[else if sco-bold-bend is true]The bold bend you created goes south-to-east. You need to figure which of these ways is right[else]This feels like the end, but it can't be. Maybe you can puzzle your way through[end if]."
Vain Vat	"[if sco-bane-bat is false]You'd injure yourself trying to run through the vat. It's sturdy.[else if sco-flain-flat is false]You'd need to destroy the vat with your bat first. But how?[else if sco-splain-splat is false]You're out of the vat, but you can only see passage back north.[else]The Pred Pros, alas, only knocked a hole in the south wall to match the way back north.[end if]"
Threat Three	"You're at the final confrontation. There are no secret passages, [if marquee is moot]and you can't even[else]just an[end if] exit back north."

volume guesses

book guesses by item, alphabetized

section known rules, alphabetized

Low Key Learny Jokey Journey Tables ends here.

---- DOCUMENTATION ----
