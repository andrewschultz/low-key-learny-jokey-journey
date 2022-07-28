Version 1/220715 of Low Key Learny Jokey Journey Tests by Andrew Schultz begins here.

"This should briefly describe the purpose of Low Key Learny Jokey Journey Tests."

volume IDE tests

test ocome with "jane g/boring box/open box/n/guide gong/s/e/pride prong/s/e".

test w1 with "jane g/boring box/open box/n/grow grudge"

test thru with "jane g/boring box/open box/n/grow grudge/e/crust crack/think/bussed back/crust crack"

volume diagnostics

definition: a room (called rm) is unrhymable:
	if rm is in Get a Guess, yes;
	if rm is One Warm Stun Storm, yes;
	no;

when play begins:
	let needs be 0;
	say "[b]Checking rhymable rooms ...[r]";
	repeat with myrm running through rooms:
		if myrm is in unrhymable, next;
		if guess-table of myrm is table of no good guesses:
			say "[myrm] needs a good-guess table.";
			increment needs;
	if needs is 0, say "YAY! All rooms are taken care of!";
	now needs is 0;
	say "[b]On to rhymable things or people ...[r]";
	repeat with myth running through rhymables:
		if guess-table of myth is table of no good guesses:
			say "[myth] needs a good-guess table.";
			increment needs;
	if needs is 0, say "YAY! All rhymables are taken care of!";

Low Key Learny Jokey Journey Tests ends here.

---- DOCUMENTATION ----
