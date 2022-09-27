Version 1/220924 of Low Key Learny Jokey Journey Hints by Andrew Schultz begins here.

"This module is spun off to keep the debug version of LLJJ in z8. There should not be many use cases that require testing for Zarf's scripts."

volume thing hints

this is the hint-player rule:
	if core-score > 0, say "Your magic power is being able to construct parallel rhymes, as the game title suggests." instead;
	say "[one of]Look at the location names and title of the story.[or]Read the train tree.[or]Note that there are a lot of rhyme pairs floating around.[or]Your job in this game is to manufacture parallel rhyme pairs.[stopping]" instead;

this is the hint-learner-part rule: say "The leet learner and its parts only give hints. You can [b]LL[r] alone to scan a room, [b]LL[r] any thing or person, or [b]READ[r] the leet learner to see its option." instead;

this is the hint-lurking-lump rule: say "You can say [b]LL[r] for the lurking lump to push you through a puzzle at the right time. It can solve any rhyme you wish but has limited charges." instead;

this is the hint-boring-box rule: say "You can really only [b]OPEN[r] [the box]." instead;

this is the hint-mad-monk rule:
	if monk-score is 2, say "You already know both [b]BAD BUNK[r] and [b]SAD SUNK[r]. Repeat [b][if monk-bad-cue is true]BAD BUNK[else]SAD SUNK[end if][r] to get by." instead;
	say "[one of]You have two ways you need to dispose of the mad monk.[or]Both ways are a downer, and you may be able to guess words that rhyme with ad.[or]You can say [b][if monk-score is 0][one of]BAD BUNK[or]SAD SUNK[in random order][else if sco-bad-bunk is true]SAD SUNK[else]BAD BUNK[end if][r].[cycling]" instead;

this is the hint-tree-trunk rule:
	if sco-see-sunk is false, say "[one of]The tree trunk, or a place in it you can look, is too high up.[or]You can bring the tree trunk down a little.[or][b]GEE JUNK[r] brings the tree trunk down.[cycling]" instead;
	if sco-gee-junk is false, say "[one of]There's something in the tree trunk, but you need to see it right.[or]You might be glad to find something that seems worthless to others.[or][b]GEE JUNK[r] reveals what's in the tree trunk.[cycling]" instead;
	say "You did what you need to see what was in the tree trunk." instead;

this is the hint-free-fruit rule:
	if sco-whee-woot is false, say "[one of]You need to be thrilled you got free fruit.[or]There are two colloquial interjections that make things click.[or][b]WHEE WOOT[r].[cycling]" instead;
	say "[one of]Figuring what free fruit to get is a lateral-thinking puzzle. It's not a rhyme that springs from [b]FREE FRUIT[r].[or]There are other places that need something.[or][if rare reach is unvisited]I won't spoil this until you've been the other place[else]The Rare Reach[end if].[or][if rare reach is unvisited]It's a combination of two fruits, but I won't spoil it until you've been where you need to be[else][b]PEAR PEACH[r][end if].[cycling]" instead;

this is the hint-diss-door rule: say "[one of]There are two solutions to the [diss door]. One is racy, and one is not.[or]The racy one is to cut the diss door down with your own rude phrase.[or][b]PISS POOR[r].[or]You can also try a hint given at game's end.[or][b]SWEAR SWAMP WHERE WOMP[r].[cycling]" instead;

this is the hint-just-jack rule: say "[one of][jack] is in the way, and he won't get out without proper transport.[or]You don't need to summon something directly, just something that leaves [jack] displaced.[or]Make [jack] [b]BUSSED BACK[r].[cycling]" instead;

this is the hint-sus-sack rule: say "[one of]The sus sack can be changed to something more useful.[or]You don't need that something in the sus sack for yourself, but it may impress someone.[or][b]PLUS PLAQUE[r].[cycling]" instead;

this is the hint-pear-peach rule:
	if rare reach is unvisited, say "It's impressive you got the pear peach before visiting the place that tipped it off." instead;
	if player is not in rare reach, say "The pear peach can work its magic in Rare Reach." instead;
	say "[one of]The pear peach can make Rare Reach a bit less desolate.[or]This could be a place with life, or at  least, water.[or]Make a [b]BARE BEACH[r].[cycling]" instead;

this is the hint-deep-dune rule:
	if sco-seep-soon is false, say "[one of]You need the deep dune to start getting smaller.[or]The deep dune won't get smaller right away.[or]Make the deep dune [b]SEEP SOON[r].[cycling]" instead;
	if flag-reap-rune is false, say "Leave and come back before making further progress with the deep dune." instead;
	say "[one of]What is in the deep dune? Something valuable.[or]A symbol of magic power is inside the dune, if you search right.[or][b]REAP RUNE[r].[cycling]" instead;

this is the hint-rho-rune rule: say "The [rune] [if player is in nonoon]gives you power here[else if nonoon is unvisited]is useful somewhere you haven't been[else]is useful somewhere you've been[end if]." instead;

this is the hint-cocoon rule:
	if sco-mo-moon is false, say "[one of]You need some light to appear in the night sky.[or]There are no stars that can appear, but there is another celestial body.[or][b]MO MOON[r].[cycling]" instead;
	if sco-so-soon is false, say "[one of]You'd like to hurry up the cocoon opening.[or]There is a way to speed up time, but not quite to where the cocoon opens.[or][b]SO SOON[r].[cycling]" instead;
	if sco-crow-croon is false, say "[one of]You need morning to appear.[or]You have no rooster, but there's another animal that can make a noise that might signify morning.[or][b]CROW CROON[r].[cycling]" instead;
	say "The cocoon should be gone now. This is a BUG." instead;

this is the hint-locking-lift rule:
	if hub-score < lift-score and lift-score < 5, say "You have uncompleted areas you can reach in the lift, but filling in lift settings will take priority when you ask for hints here.[line break]" instead;
	if sco-rocking-rift is false, say "[one of]A good introductory hub is a concert that has been split up. It's on the long side, but the words are short.[or][or][r]ROCKING RIFT[b].[cycling]" instead;
	if sco-shocking-shift is false, say "[one of]You want to change things everywhere, but one place is particularly drastic. It gives you an item you need elsewhere.[or]The background itself will change, and you'll be amazed.[or][r]SHOCKING SHIFT[b].[cycling]" instead;
	if sco-gawking-gift is false, say "[one of]There's a place where you get knowledge and confidence.[or]You'll stare blankly, whether it's too much or too little[or][r]GAWKING GIFT[b][if player does not have red rose], though you can't complete it now until you visit another hub[end if].[cycling]" instead;
	if sco-grokking-grift is false, say "[one of]You need to learn about the seedy side of things without being affected.[or]This lift setting requires slang for knowing something.[or][r]GROKKING GRIFT[b].[cycling]" instead;
	if sco-docking-diffed is false, say "[one of]There's a boat ahead in the toughest[or][or][r]DOCKING DIFFED[b].[cycling]" instead;
	if hub-score < 5, say "[b][best-hub][r] is the recommended lift setting to complete." instead;
	if sco-mocking-miffed is false, say "[one of]The last area is where you encounter [the sprite]. They are upset and contemptuous.[or]Specifically, you may imagine you hear scornful laughter, which you need to follow.[or][r]MOCKING MIFFED[b].[cycling]" instead;
	say "[done-here]." instead;

to say need-rose: if player does not have red rose, say "though you can't complete it now until you visit another hub"

to say need-rose-and-lute:
	if side-item-score is 2, continue the action;
	if player does not have red rose, say "though you can't complete it now until you visit ";
	if side-item-score is 1:
		say "another hub";
	else:
		say "two other hubs";

to say best-hub:
	if sco-throw-through is false:
		say "ROCKING RIFT";
	else if shoal-core-score < 2:
		say "SHOCKING SHIFT";
	else if sco-k-cope is false:
		say "GAWKING GIFT";
	else if sco-bred-bros is false:
		say "GROKKING GRIFT";
	else:
		say "DOCKING DIFFED"

this is the hint-sturdy-stalk rule: say "[one of]The sturdy stalk isn't critical to winning, but it provides a bonus point.[or]Look at the stalk the right way, and you get inspiration.[or]Have a [b]WORDY WALK[r].[cycling]" instead;

this is the hint-crow-crew rule:
	if sco-yo-you is false, say "You need to hype up the crowd before the crow crew makes their big entrance. [b]HINT[r] the general area for that." instead;
	say "[one of]The Crow Crew needs to make a big, grand entrance.[or]You can give the Crow Crew momentum if you introduce them right.[or][b]THROW THROUGH[r].[cycling]" instead;

this is the hint-trail-stuff rule: say "You will have [the noun]'s help when the time comes. It's there so you don't lose track of it." instead;

this is the hint-sight-sail rule:
	if sco-right-rail is false, say "[one of]You need to gain your bearings on the sight sail.[or]A piece of equipment rhyming with sight sail would help.[or]Find the [b]RIGHT RAIL[r].[cycling]" instead;

this is the hint-delight-dilute rule:
	say "[one of]It's optional to get rid of [the dilute], and if you want to, the solution may be a bit tricky. But it follows the rhyming description.[or]The name of [the dilute] suggests taking something nice and making it worse. You can do the reverse.[or][b]DESPITE DISPUTE[r].[cycling]" instead;

this is the hint-pred-pros rule:
	say "[one of]The Pred Pros in their head hose are blocked by your red rose, but you can actually make them allies.[or]The Pred Pros look very skinny.[or][b]FED FOES[r].[cycling]" instead;

this is the hint-market-marquee rule:
	say "[one of]You need to figure the three settings of the marquee.[or]The nonsense words on the marquee clue the rhymes you need, ones that work with market marquee, but they're shorter.[or][if sco-yet-ye is false][b]TWET/TWEE[r] leads to [b]YET YE[r][else if sco-set-see is false][b]TRET/TREE[r] leads to [b]SET SEE[r][else][b]GLET/GLEE[r] leads to [b]FRET FREE[r][end if].[cycling]" instead;

this is the hint-plus-plaque rule:
	say "[one of]You need to label the plus plaque now. Something that describes [the sprite].[or]You can describe [the sprite] unfavorably.[or][b]TURNING TRITE[r].[cycling]" instead;

this is the hint-spurning-sprite rule:
	if sus sack is not moot, say "You need a gift for [the sprite] first. Check your inventory for something to work on." instead;
	abide by the hint-plus-plaque rule;

this is the hint-light-lute rule:
	if player does not have the light lute, say "An outside item is required for what you need to do next." instead;
	if player is in slight sleaze:
		if sco-plight-please is false, say "[genprog of lute]." instead;
	if player is in trite trail:
		if sco-bright-brute is false, say "[one of]The light lute can summon a generic animal ally.[or]You need an animal ally with strength and a positive mood.[or]Summon a [b]BRIGHT BRUTE[r].[cycling]" instead;
	if player is in gore goals:
		if sco-shore-shoals is false, say "The light lute can summon some optional animals once you've taken care of general business." instead;
		if sco-kite-coot is false, say "[one of]You can summon a hybrid bird with the light lute.[or]Each word is a bit odd, and it has another non-animal use, too.[or]Summon a [b]KITE COOT[r].[cycling]" instead;
		if sco-night-newt is false, say "[one of]You can summon an animal that blends into the background with the light lute.[or]Not the background during the day.[or]Summon a [b]NIGHT NEWT[r].[cycling]" instead;
	if lute-strings is 0, say "You've done all you can with [the lute]." instead;
	if gold-lute-strings is 0, say "You only have bonus points to gain from [the lute]." instead;
	say "[useless of light lute]." instead;

this is the hint-red-rose rule:
	if player does not have the red rose, say "An outside item is required for what you need to do next." instead;
	if player is in bum bout rum route and sco-said-sos is false:
		if sco-dumb-doubt is false, say "[genprog of red rose]." instead;
		say "[one of]The red rose can extend the dumb doubt you've cast on your oppressors.[or]The red rose can use a rhetorical trick or help you use one.[or]The red rose can generate [b]SAID SOS[r].[cycling]" instead;
	if player is in seek sameing:
		if sco-chic-shaming is false, say "[genprog of red rose]." instead;
		say "[one of]The red rose can attract people who can spread a positive message better than you can.[or]Summon upper-class types full of camaraderie.[or][b]BRED BROS[r].[cycling]" instead;
	if player is in trite trail:
		if whale-score < 5, say "[genprog of red rose]." instead;
		if sco-thread-throws is false, say "[one of]The red rose is useful for making something to subdue [the whale].[or]Generally you use a net to catch fish. Something that can sort of make a net is the first word, and how you use a net is the second.[or][b]THREAD THROWS[r].[cycling]";
	say "[useless of red rose]." instead;

to say useless of (itm - a thing): say "The [itm] is useful but not here"

to say genprog of (itm - a thing): say "You can use [the itm] after making progress with the general area here"

volume room hints

this is the hint-bane-be-sane-see rule:
	say "[one of]You may notice the [b]TRAIN TREE[r] has writing on it. It's an option that's meaningless for gameplay, but it helps you see what sort of puzzles are ahead.[or]You can [b]READ[r] the train tree to decide your name, which has no effect on anything except the hints you may pick up in the next room.[or]If you note the names, you may find a bonus point that goes along with the room name and game theme.[cycling]" instead;

this is the hint-roaring-rocks rule:
	if sco-boring-box is false, say "[one of]The roaring rocks can be changed into something useful and interesting. Or something that contains something interesting. Something that double-rhymes roaring rocks.[or]The container itself may not look interesting.[or][b]BORING BOX[r].[cycling]" instead;
	say "You can [b]LL[r] and try going [b]UP[r] to look around and get clues about the leet learner here, but there are no more puzzles." instead;

this is the hint-stun-storm rule:
	if sco-done-dorm is false, say "[one of]You need a place to rest that double-rhymes [b]STUN STORM[r].[or]Your place to rest must be sturdy and solid.[or][b]DONE DORM[r].[cycling]" instead;
	if sco-fun-form is false, say "[one of]You need certification you're the sort of person welcome in a done dorm. How to rhyme that?[or][b]FUN FORM[r].[cycling]" instead;
	say "[done-here]." instead;

this is the hint-nnss rule:
	if sco-grow-grudge is false, say "[one of]The [sludge] is annoying. You need to be annoyed by it.[or]What's a good way to build up annoyance?[or][b]GROW GRUDGE[r].[cycling]" instead;
	say "[done-here]" instead;

this is the hint-tttt rule:
	if sco-gee-junk is false, abide by the hint-tree-trunk rule;
	if free fruit is not moot, abide by the hint-free-fruit rule;
	say "[done-here]." instead;

this is the hint-trust-track rule:
	if sco-crust-crack is true, say "[done-here]." instead;
	if just jack is fungible, abide by the hint-just-jack rule;
	say "[one of]There is a passage, even though you trust there isn't.[or]But the passage won't appear until there is a shift in the ground.[or]Make the [b]CRUST CRACK[r].[cycling]" instead;

this is the hint-rare-reach rule:
	if sco-reap-rune is true, say "[done-here]." instead;
	if sco-bare-beach is false:
		if player does not have pear peach, say "You don't have the item you need to transform this place. You can guess what to say, though, until you find that item." instead;
	abide by the hint-pear-peach rule;

this is the hint-fun-farm rule:
	if sco-un-arm is true, say "[done-here]." instead;
	say "[one of]How can you get rid of weapons and threats to get by?[or]You can shorten things up.[or][b]UN ARM[r] or [b]UNARM[r].[cycling]" instead;

this is the hint-nonoon rule:
	if rho rune is off-stage, say "You can't do much here until you get an item of power. You can guess what to do, but it will have no effect." instead;
	if sco-go-goon is false, say "[one of]You need to ward off enemies.[or]Give an order to a certain sort of enemy.[or][b]GO GOON[r].[cycling]" instead;
	if sco-co-coon is false, say "[one of]You must summon something that can grow with the passage of time.[or]Something that can burst into life.[or][b]COCOON[r], with or without a space.[cycling]" instead;
	if sco-crow-croon is true, say "[done-here]." instead;
	abide by the hint-cocoon rule;

this is the hint-jotty-jail rule:
	say "[one of]You'll want to look for a weakness in the construction of the jail you're in.[or]What's something that's used in construction and rhymes with jail?[or][b]KNOTTY NAIL[r].[cycling]" instead;

this is the hint-high-hub rule:
	if sco-bye-bub is true, say "The only thing to do here is to operate [the lift]." instead;
	say "[one of]There's a way back down from the high hub, but it's largely for entertainment.[or]You can take your leave of the hub with the right phrase.[or][b]BYE BUB[r].[cycling]" instead;

this is the hint-no-new-show-shoe rule:
	if sco-flow-flue is false, say "[one of]You need to build infrastructure to start.[or]Tubes, or something like them, would help, to transport stuff that can't be easily contained.[or][r]FLOW FLUE[b].[cycling]" instead;
	if sco-glow-glue is false, say "[one of]You need something that will hold infrastructure together.[or]Duct tape works a lot of places, but you need something less visible.[or][r]GLOW GLUE[b].[cycling]" instead;
	if sco-bro-brew is false, say "[one of]You need to provide potential concertgoers with something to drink.[or]What sort of drink would provied camaraderie?[or][r]BRO BREW[b].[cycling]" instead;
	if sco-stow-stew is false, say "[one of]You need to provide potential concertgoers with something to eat.[or]You'll want to keep that something to eat tucked away, nice and hot, until people are hungry.[or][r]STOW STEW[b].[cycling]" instead;
	if sco-ho-who is false, say "[one of]You need to call out to the crowd to start getting them hyped.[or]What's a question that might make a crowd feel wanted?[or][r]HO WHO[b].[cycling]" instead;
	if sco-yo-you is false, say "[one of]You have the crowd's attention. They need to be acknowledged.[or]You need to let the crowd know whom the show's for.[or][r]YO YOU[b].[cycling]" instead;
	if sco-crow-crew is false, say "[one of]The stage needs performers! They have a name.[or]What kind of, umm, group would fit in the Shoe?[or][r]CROW CREW[b].[cycling]" instead;
	if sco-throw-through is false, abide by the hint-crow-crew rule;
	say "[done-here]." instead;

this is the hint-gore-goals rule:
	if sco-shore-shoals is false, say "[one of]You can make this area much more livable.[or]A more coastal backdrop would be nice.[or][r]SHORE SHOALS[b].[cycling]" instead;
	if sco-four-foals is false, say "[one of]This place needs animals. Let's get some cute ones.[or]A specific number of cute animals works here.[or][r]FOUR FOALS[b].[cycling]" instead;
	if sco-more-moles is false, say "[one of]This place doesn't have enough animals, yet.[or]We don't need any specific number, but some animals might be particularly useful.[or][r]MORE MOLES[b].[cycling]" instead;
	say "[done-here]." instead;

this is the hint-rum-route rule:
	if sco-dumb-doubt is false, say "[one of]Being here makes you feel a lack of confidence for silly reasons. You can flip that around.[or]Put a name to the indecision you are feeling.[or][r]DUMB DOUBT[b].[cycling]" instead;
	if sco-said-sos is false, abide by the hint-red-rose rule;
	if sco-umm-out is false, say "[one of]You need to seal the deal you started with dumb doubt.[or]What's an underhanded way to say good-bye?[or][r]UMM OUT[b].[cycling]" instead;
	say "[done-here]." instead;

this is the hint-slay-slope rule:
	if sco-hey-hope is false, say "[one of]You need to improve your mood a bit.[or]You can't do anything concrete, and you don't need to force a smile, but you can discover a small light.[or][r]HEY HOPE[b].[cycling]" instead;
	if sco-k-cope is false, say "[one of]Now you've discovered solace, you need to find something to do with it.[or]The first word is a bit of slang, but the second word is all about fully dealing with your current life.[or][r]K COPE[b].[cycling]" instead;
	say "[done-here]." instead;

this is the hint-slight-sleaze rule:
	if sco-bright-breeze is false, say "[one of]You need a change in the weather to start to alleviate the fright freeze.[or]There's something that could cheer you up. A breath of fresh air.[or][b]BRIGHT BREEZE[r].[cycling]" instead;
	if sco-plight-please is false, say "[one of]You need to dispel the false moaning that seems to swirl around.[or]Things aren't so bad, and the right phrase will emphasize that.[or][b]PLIGHT PLEASE[r].[cycling]" instead;
	if light lute is off-stage, say "You don't have the item you need to find passage beyond here." instead;
	if sco-right-root is false, say "[one of]You want to grow trite trees, but they'd be hard to build.[or]You have something that can help build a firm foundation.[or]The light lute helps here.[or][b]RIGHT ROOT[r].[cycling]" instead;
	say "[done-here]." instead;

this is the hint-seek-sameing rule:
	if sco-bleak-blaming is false, say "[one of]You need to establish the freak framing as something far less glamorous.[or]Show complaining is not as insightful as many people think. What to call it?[or][r]BLEAK BLAMING[b].[cycling]" instead;
	if sco-chic-shaming is false, say "[one of][or][or][r]SEEK SAMEING[b].[cycling]" instead;
	abide by the hint-red-rose rule;
	if sco-bred-bros is false, say "[one of]You need someone to communicate your vision.[or]A group of close-knit people with high social status would help you a lot.[or][r]BRED BROS[b].[cycling]" instead;
	say "[done-here]." instead;

this is the hint-trite-trail rule:
	if sco-thread-throws is true, say "You've done everything you need to here." instead;
	if sco-might-mail is false, say "[one of]You need armor to fight [the whale].[or]What sort of armor could be available from the Trite Trail?[or][b]MIGHT MAIL[r].[cycling]" instead;
	if sco-might-mail is false, say "[one of]You need a weapon to fight [the whale].[or]What sort of weapon could be available from the Trite Trail?[or][b]MIGHT MAIL[r].[cycling]" instead;
	if sco-sight-sail is false, say "[one of]You need transportation to fight [the whale].[or]What sort of transportation could be available from the Trite Trail?[or][b]SIGHT SAIL[r].[cycling]" instead;
	if sco-right-rail is false, say "[one of]You could have trouble keeping your legs during water travel.[or]What could you grab on the sight sail so you don't fall over?[or][b]RIGHT RAIL[r].[cycling]" instead;
	if sco-excite-exhale is false, say "[one of]You could have trouble keeping your legs during water travel.[or]What could you grab on the sight sail so you don't fall over?[or][b]RIGHT RAIL[r].[cycling]";
	if sco-thread-throws is false, abide by the hint-red-rose rule;
	say "[done-here]." instead;

this is the hint-mad-most-cad-coast rule:
	if sco-bad-boast is false, say "[one of]You need to repel the insults and bravado you're hearing.[or]Label the taunts around you as objectively not up to par.[or][r]BAD BOAST[b].[cycling]" instead;
	if sco-rad-roast is false, say "[one of]You've dealt with the taunts, but it's time for a counter-offensive.[or]Have faith in yourself. Show you can give better than you get.[or][r]RAD ROAST[b].[cycling]" instead;
	say "[done-here]." instead;

this is the hint-old-end rule:
	if sco-bold-bend is false, say "[one of]You need to extend the path.[or]There's a way to extend the old end, though it won't be a linear path.[or][b]BOLD BEND[r].[cycling]" instead;
	if sco-trolled-trend is false, say "[one of]There are two ways to go. You need to look for clues which way to go.[or]One way clearly has nastiness, if you know what to look for.[or][b]TROLLED TREND[r].[cycling]" instead;
	if sco-mold-mend is false, say "[one of]The trolling hurt a bit. You need to prepare yourself to face it.[or]First you need the right mindset, then you can heal.[or][b]MOLD MEND[r].[cycling]" instead;
	say "[done-here]." instead;

this is the hint-vain-vat rule:
	if sco-bane-bat is false, say "[one of]You need to get out of this vat! But you have nothing to break the vat down with.[or]You need a strong weapon to beat down the vat.[or][b]BANE BAT[r].[cycling]" instead;
	if sco-flain-flat is false, say "[one of]Now you have a weapon, what's the right way to bust out?[or]Leave the walls of the vat down[or][b]FLAIN FLAT[r].[cycling]" instead;
	if sco-splain-splat is false, say "[one of]It's time to announce your presence![or]You need to do so with sound effects after.[or][b]SPLAIN SPLAT[r].[cycling]" instead;
	if pred pros are fungible, abide by the hint-pred-pros rule;
	say "[done-here].";

[	if sco-xxx-xxx is false, say "[one of][or][or][b]XXX XXX[r].[cycling]" instead;]

this is the hint-threat-three rule:
	if market marquee is fungible, abide by the hint-market-marquee rule;
	if sus sack is fungible, abide by the hint-sus-sack rule;
	if sprite is fungible, abide by the hint-spurning-sprite rule;
	say "BUG. Sorry." instead;

Low Key Learny Jokey Journey Hints ends here.

---- DOCUMENTATION ----
