Version 1/220917 of Low Key Learny Jokey Journey Beta Testing by Andrew Schultz begins here.

"Here is a command for Beta testers to jump to the hub."

volume hubing

hubing is an action applying to nothing.

understand the command "hub" as something new.

understand "hub" as hubing.

carry out hubing:
	if core-score > 0, say "You need to be at the very start for this warp command to work." instead;
	let count be 0;
	repeat through table of verb checks:
		increment lump-charges;
		now player has lurking lump;
		increment count;
		if core entry is false, next;
		if there is a best-room entry and location of player is not best-room entry, move player to best-room entry;
		if check-rule entry is vc-bad-bunk rule:
			say "Opening the box and activating the monk.";
			try opening boring box;
			try going north;
		else if check-rule entry is vc-reap-rune rule:
			say "Doing a two-step.";
			try going south;
			try going north;
		try jerkingjumping;
		if player is in high hub, the rule succeeds;

Low Key Learny Jokey Journey Beta Testing ends here.

---- DOCUMENTATION ----
