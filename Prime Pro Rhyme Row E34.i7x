Version 1/220910 of Prime Pro Rhyme Row E34 by Andrew Schultz begins here.

include Prime Pro Rhyme Row Leet Learner by Andrew Schultz.

include Prime Pro Rhyme Row Hints by Andrew Schultz.

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

to declue-unchanged (th - a thing):
	now to-number of th is -2;

book common printables

to print-the-loc: say "[line break][b][location of player][r][line break]" [?? move to universal?]

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
			if press-pro-warn is false:
				say "[i][bracket][b]NOTE:[r][i] to switch on the option that shows how many similar rhyme pairs you have left in this area, you can type [b]YO YES[r][i] or, to recall what you found, [b]MO MESS[r][i]. This option is curtailed by default as it may distract people from the main game.[close bracket][r]";
				now press-pro-warn is true;
			current-table-note-x tn; [the -x is for special cases like the mad monk, even though table-note is in the universal file]
			check-lump-progress;
		the rule succeeds;

compare-item is a thing that varies.

to print-my-clue:
	let from-num be 0;
	let to-num be 0;
	let from-num be 2500 + (50 * number of characters in word number 1 in the player's command) + (number of characters in word number 2 in the player's command);
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
	if x < 0:
		say "-";
		now x is 0 - x;
	let numerator be x * 100;
	if y > 2, increase numerator by (y / 2);
	let digit be numerator / (y * 100);
	say "[digit]";
	say ".[run paragraph on]";
	let decimal be the remainder after dividing (numerator / y) by 100;
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
	let dots be nto / 2500;
	say "You notice [if nto is 0]no[else][nto / 2500 in words][end if] dot[if dots > 1]s[end if] in the corner.";
	if press-pro-level is 0:
		continue the action;
	else:
		say "[line break]";
	let name-length be nfrom / 2500;
	let puz-length be nto / 2500;
	let name-1 be the remainder after dividing (nfrom / 50) by 50; [the from- and to- numbers are in base 50, sort of. 2500 = number left, 50 = first word, 1 = second word. digit = first word # of letters]
	let puz-1 be the remainder after dividing (nto / 50) by 50;
	let name-2 be the remainder after dividing nfrom by 50; [ones digit = second word # of letters]
	let puz-2 be the remainder after dividing nto by 50;
[	say "[name-length] [puz-length] [name-1] [name-2] [puz-1] [puz-2].";]
[	say "[nfrom] [nto] reading...";]
	let numerator be (name-length * puz-1) - (puz-length * name-1);
	let denominator be (name-length * puz-length);
	say "The [learner]'s display lights up and scrolls through LCD numbers which settle on the pair ([floatfrac of numerator and denominator], ";
	now numerator is (name-length * puz-2) - (puz-length * name-2);
	now denominator is (name-length * puz-length);
	say "[floatfrac of numerator and denominator].)";
	if optionals is true, say "[line break]However, it's really dim, as if you don't need to do or think whatever there is to do or think.";

last-notelearner-score is a number that varies.

this is the note learner changes rule:
	if press-pro-level > 0 and note-learner-dots is false and current-score > last-notelearner-score:
		now note-learner-dots is true;
		say "[line break]You note a dot winks out on the Leet Learner.";
	now last-notelearner-score is current-score;

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

thing-hint-rule of leet learner is the hint-learner-part rule.

any-leet-hint is a truth state that varies.

this is the hint-learner-part rule:
	if any-leet-hint is false:
		now any-leet-hint is true;
		say "The leet learner and its parts only give hints. You can [b]LL[r] alone to scan a room, [b]LL[r] any thing or person, or [b]READ[r] the leet learner to see its option." instead;
	say "[one of]Unless the Leet Learner is set to [b]GO GUESS[r], the number of dots shows how many phrases you can find parallel with whatever you scanned.[pplus][or]The numbers for the Leet Learner are a bit trickier. First, if the reading is dim, that's a sign it's an optional puzzle.[pplus][or]Sometimes the numbers you get will not be integers, but they will always be a fraction with a relatively low denominator. Sometimes they're negative, too. The question may be, why?[pplus][or]There are two reasons. Let's say you are in ABCDE FGHI JKLM NOP and you need to find QRST UVWX, the reading will be (-0.50, 0.50) since the average of the first words is 4.5, the average of the second is 3.5, and you need a 4-letter solution for each. 4.5 - 4 = -.5, and 3.5 - 4 = -.5.[pplus][or]Similarly, if you are in ABCD EFGH, and you need to find IJK LMN and OPQR STUV, the reading would be (-0.50, -0.50).[pminus][stopping]";

volume parser errors

hint-trip-room is a room that varies.

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
		say "Most special commands are more than one word[if hint-trip-room is visited], because of the rhyme-pairs involved[end if]";
	else if number of words in the player's command is 0:
		say "You think a bit";
	else if number of words in the player's command is 2 and rhyme-mechanism-known:
		say "Your rhyming attempts bring up nothing. Or, if you tried a standard verb--well, [this-game] has eliminated a lot of them, so you can focus on the puzzle verbs";
	else:
		say "I couldn't parse that command. You don't need any more than two words long";
	say ". [b]VERBS[r] will give a list of useful, non-puzzle-solving verbs.";
	the rule succeeds;

volume testing - not for release

chapter missesing

missesing is an action out of world.

understand the command "misses" as something new.
understand the command "missed" as something new.

understand "misses" as missesing.
understand "missed" as missesing.

carry out missesing:
	process the show-misses rule;
	the rule succeeds;

Prime Pro Rhyme Row E34 ends here.

