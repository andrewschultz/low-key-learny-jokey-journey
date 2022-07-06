Version 1/220704 of Low Key Learny Jokey Journey Tables by Andrew Schultz begins here.

"This should briefly describe the purpose of Low Key Learny Jokey Journey Tables."

volume core tables

book main point command table

book command table by rooms

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

table of Train Tree checks
w1 (text)	w2 (text)	posthom (topic)	hom-txt-rule (rule)	think-cue	okflip	core	idid	check-rule	run-rule	wfull (topic)	think-advice
"jane"	"gee"	--	--	false	true	truth state	truth state	a rule	a rule	a topic	text
"wayne"	"whee"	--	--	false	true
"dane"	"dee|d"	--	--	false	true

table of verb checks
w1 (text)	w2 (text)	posthom (topic)	hom-txt-rule (rule)	think-cue	okflip	core	idid	check-rule	run-rule	wfull (topic)	think-advice
"boring"	"box"	--	--	false	true	true	false	vc-boring-box rule	vr-boring-box rule	--	--

this is the vc-boring-box rule: if boring box is not off-stage, say "You already got the boring box." instead;

this is the vr-boring-box rule:
	say "The roaring rocks crumble, leaving behind storing stocks and ... the boring box you'd hoped for. You totally want to open it!";
	now player has boring box;

volume guesses

book guesses by item, alphabetized

[this could technically go in the common file, but it would create so many problems with test verification.]

table of lurking lump guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"perking pump"	lump-known rule	false	--	--	"I don't want to know."

section known rules, alphabetized

this is the lump-known rule: if lurking lump is not off-stage, the rule succeeds;

Low Key Learny Jokey Journey Tables ends here.

---- DOCUMENTATION ----
