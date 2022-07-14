Version 1/220704 of Low Key Learny Jokey Journey Tables by Andrew Schultz begins here.

"This should briefly describe the purpose of Low Key Learny Jokey Journey Tables."

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
think-cue = is this command cued by "think," e.g. did you use it bfore you were ready?
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
w1 (text)	w2 (text)	posthom (topic)	hom-txt-rule (rule)	think-cue	okflip	core	idid	check-rule	run-rule	wfull (topic)	think-advice (text)
"dane|jane|lane|wayne"	"d|dee|g|gee|lee|whee"	--	--	false	false	true	false	vc-in-bane rule	vr-choose-name rule	"d/dee dane" or "dane dee/d" or "jane g/gee" or "gee/g jane" or "wayne whee" or "whee wayne"	--
"plain"	"plea"	--	--	false	true	false	false	vc-plain-plea rule	vr-plain-plea rule	--	--
"boring"	"box"	--	--	false	true	true	false	vc-boring-box rule	vr-boring-box rule	--	--
"grow"	"grudge"	--	--	false	false	true	false	vc-grow-grudge rule	vr-grow-grudge rule

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
	the rule succeeds;

a goodrhyme rule (this is the vc-plain-plea rule):
	if player is not in Bane Be Sane See, unavailable;
	if sco-plain-plea is true:
		say "You already made a plain plea.";
		already-done;
	ready;

this is the vr-plain-plea rule:
	say "Your plain plea seems perfect for the situation. The train tree grows brighter. It pervades the air for a bit, then dissipates.";
	now sco-plain-plea is true;
	the rule succeeds;

a goodrhyme rule (this is the vc-boring-box rule):
	if player is not in Roaring Rocks, unavailable;
	if sco-boring-box is true:
		say "You already uncovered the boring box.";
		already-done;
	ready;

this is the vr-boring-box rule:
	say "The roaring rocks crumble, leaving behind storing stocks and ... the boring box you'd hoped for. You totally want to open it!";
	now player has boring box;
	now sco-boring-box is true;

a goodrhyme rule (this is the vc-grow-grudge rule):
	if player is not in NNSS, unavailable;
	if sco-grow-grudge is true:
		say "You already neutralized [the sludge].";
		already-done;
	ready;

this is the vr-grow-grudge rule:
	say "The sludge hardens! You feel good about not being perfect and not trying to be. It's opened up possibilities, for sure.";
	now sco-grow-grudge is true;

volume guesses

book guesses by item, alphabetized

section known rules, alphabetized

this is the lump-known rule: if lurking lump is not off-stage, the rule succeeds;

Low Key Learny Jokey Journey Tables ends here.

---- DOCUMENTATION ----
