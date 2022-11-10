Version 1/220910 of Prime Pro Rhyme Row E34 by Andrew Schultz begins here.

volume cheat types and states

book definitions

a room has a number called from-number. a room has a number called to-number.

a thing has a number called from-number. a thing has a number called to-number.

to declue (rm - a room):
	now to-number of rm is -3;

to declue-here:
	declue location of player;

to declue (th - a thing):
	now to-number of th is -4;

book deciphering mistakes

[to decide which number is variable-scan-length of (mynum - a number):] [keep this in the main file]

a rhymeguess rule for a table name (called tn) (this is the rhyme-guess-checker rule):
	repeat through tn:
		if there is a mist-cmd entry:
			unless the player's command matches mist-cmd entry, next;
		if there is a mist-regex entry:
			unless the player's command matches the regular expression "^[mist-regex entry]$", next;
		if there is a mist-rule entry:
			process the mist-rule entry;
			unless the rule succeeded, continue the action;
		say "[mist-txt entry][line break]";
		let see-leet-read be whether or not player has leet learner;
		let is-opt be false;
		if there is a leet-rule entry:
			process the leet-rule entry;
			unless the rule succeeded, now see-leet-read is false;
		if see-leet-read is true, print-my-clue;
		let gyw be got-yet entry; [this seems awkward, but here we have a case where we want to say "You've solved X of Y" and while we could add X+1, that makes "if X is Y-1" look a bit odd. ]
		now got-yet entry is true;
		if gyw is false:
			increment total-good-guesses;
			if less-lo-warn is false and guess-go is false:
				say "[i][bracket][b]NOTE:[r][i] to switch on the option that shows how many similar rhyme pairs you have left in this area, you can type [b]YES YO[r][i]. This option is off by default as it may distract people from the main game.[close bracket][r]";
				now less-lo-warn is true;
			current-table-note-x tn; [the -x is for special cases like the mad monk, even though table-note is in the universal file]
			check-lump-progress;
		the rule succeeds;

compare-item is a thing that varies.

to print-my-clue:
	let from-num be 0;
	let to-num be 0;
	let from-num be 5000 + (100 * number of characters in word number 1 in the player's command) + (number of characters in word number 2 in the player's command);
	if compare-item is not the player:
		now to-num is to-number of compare-item;
	if to-num is 0, now to-num is to-number of location of player;
	if from-num is unscannable or to-num is unscannable, continue the action;
	show-readings from-num and to-num;

to decide whether (nf - a number) is unscannable:
	if nf <= 0 and nf >= -3, yes;
	no;

book reading the Leet Learner

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

carry out lling:
	if to-number of noun is -2, say "Nothing comes up. You don't need to change [the noun]." instead;
	if to-number of noun is -4, say "Nothing comes up. You've changed [the noun] as much as you needed to." instead;
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
[	say "[nfrom] [nto] reading...";]
	let numerator be (name-length * puz-1) - (puz-length * name-1);
	let denominator be (name-length * puz-length);
	say "The [learner]'s display lights up and scrolls through LCD numbers which settle on the pair ([floatfrac of numerator and denominator], ";
	now numerator is (name-length * puz-2) - (puz-length * name-2);
	now denominator is (name-length * puz-length);
	say "[floatfrac of numerator and denominator].)";
	if optionals is true, say "[line break]However, it's really dim, as if you don't need to do or think whatever there is to do or think.";

book basic LL cross-game stuff

to say ll-later: say "The leet learner makes a weird noise, as if it's about to find something, but then it doesn't. Maybe there's something to do here ";

check lling:
	if noun is leet learner or noun is ha half nah naff button, say "The [leet learner] can't scan itself." instead;
	if noun is lurking lump, say "The [lurking lump] is a hint item, so you can't really scan it." instead;
	if noun is the player, say "Nothing. You're the changer, not the changee." instead;
	if to-number of noun is -6, say "[ll-later]with [the noun] a bit later." instead;

this is the general-ll-locations rule:
	if to-number of location of player is -1, say "Nothing comes up. The general area here doesn't need changing." instead;
	if to-number of location of player is -3, say "Nothing comes up. The general area here has been changed enough." instead;
	if to-number of location of player is -5, say "[ll-later]a bit later." instead;
	show-readings (from-number of location of player) and (to-number of location of player);

Prime Pro Rhyme Row E34 ends here.

