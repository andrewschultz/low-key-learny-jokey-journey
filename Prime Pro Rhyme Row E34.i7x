Version 1/220910 of Prime Pro Rhyme Row E34 by Andrew Schultz begins here.

volume cheat types and states

book definitions

a room has a number called from-number. a room has a number called to-number.

a thing has a number called from-number. a thing has a number called to-number.

to declue (rm - a room):
	now from-number of rm is -3;
	now to-number of rm is 0;

to declue-here:
	declue location of player;

to declue (th - a thing):
	now from-number of th is -4;
	now to-number of th is 0;

book deciphering mistakes

[to decide which number is variable-scan-length of (mynum - a number):] [keep this in the main file]

a rhymeguess rule for a table name (called tn) (this is the rhyme-guess-checker rule):
	repeat through tn:
		if the player's command matches mist-cmd entry:
			if there is a mist-rule entry:
				process the mist-rule entry;
				unless the rule succeeded, continue the action;
			say "[mist-txt entry][line break]";
			let see-leet-read be true;
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

Prime Pro Rhyme Row E34 ends here.

