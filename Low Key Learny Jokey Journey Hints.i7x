Version 1/220924 of Low Key Learny Jokey Journey Hints by Andrew Schultz begins here.

"This module is spun off to keep the debug version of LLJJ in z8. There should not be many use cases that require testing for Zarf's scripts."

volume end-notation

plus-noted is a truth state that varies.

plus-after is a truth state that varies.

minus-noted is a truth state that varies.

minus-after is a truth state that varies.

check hintobjing:
	now plus-after is false;
	now minus-after is false;

to say pplus:
	say ". (+)[paragraph break]";
	now plus-after is true;

to say qplus:
	say "? (+)[paragraph break]";
	now plus-after is true;

to say xplus:
	say "! (+)[paragraph break]";
	now plus-after is true;

to say pminus:
	say ". (-)[paragraph break]";
	now minus-after is true;

report hintobjing:
	check-minus-and-plus;

report hinting:
	check-minus-and-plus;

to check-minus-and-plus:
	if minus-after is true and minus-noted is false:
		ital-say "a minus sign means you've reached the end of a hint loop. You can cycle through them again, though.";
		now minus-noted is true;

volume definitions

lift-hint-warn is a truth state that varies.

volume thing hints

this is the hint-player rule:
	if core-score > 0, say "Your magic power is being able to construct parallel rhymes, as the game title suggests." instead;
	say "[one of]Look at the location names and title of the story[pplus][or]Read the train tree[pplus][or]Note that there are a lot of rhyme pairs floating around[pplus][or]Your job in this game is to manufacture parallel rhyme pairs[pminus][stopping]" instead;

this is the hint-learner-part rule: say "The leet learner and its parts only give hints. You can [b]LL[r] alone to scan a room, [b]LL[r] any thing or person, or [b]READ[r] the leet learner to see its option." instead;

this is the hint-lurking-lump rule: say "You can say [b]LL[r] for the lurking lump to push you through a puzzle at the right time. It can solve any rhyme you wish but has limited charges." instead;

this is the hint-boring-box rule: say "You can really only [b]OPEN[r] [the box]." instead;

this is the hint-mad-monk rule:
	if warn-monk is true, say "You already know both [b]BAD BUNK[b] and [r]SAD SUNK[r]. Repeat [b][if monk-bad-cue is true]BAD BUNK[else]SAD SUNK[end if][r] to get by." instead;
	say "[one of]You have two ways you need to dispose of the mad monk[pplus][or]Both ways are a downer, and you may be able to guess words that rhyme with ad[pplus][or]You can say [b][if monk-score is 0][one of]BAD BUNK[or]SAD SUNK[in random order][else if sco-bad-bunk is true]SAD SUNK[else]BAD BUNK[end if][r][pminus][cycling]" instead;

this is the hint-tree-trunk rule:
	if sco-see-sunk is false, say "[one of]The tree trunk, or a place in it you can look, is too high up[pplus][or]You can bring the tree trunk down a little[pplus][or][b]SEE SUNK[r] brings the tree trunk down[pminus][cycling]" instead;
	if sco-gee-junk is false, say "[one of]There's something in the tree trunk, but you need to see it right[pplus][or]You might be glad to find something that seems worthless to others[pplus][or][b]GEE JUNK[r] reveals what's in the tree trunk[pminus][cycling]" instead;
	say "You saw what was in the tree trunk, and that's all you need to do with it." instead;

this is the hint-free-fruit rule:
	if sco-whee-woot is false, say "[one of]You need to be thrilled you got free fruit[pplus][or]There are two colloquial interjections that make things click[pplus][or][b]WHEE WOOT[r][pminus][cycling]" instead;
	say "[one of]Figuring what free fruit to get is a lateral-thinking puzzle. It's not a rhyme that springs from [b]FREE FRUIT[r][pplus][or]There are other places that need something[pplus][or][if rare reach is unvisited]I won't spoil this until you've been the other place[else]The Rare Reach[end if][pplus][or][if rare reach is unvisited]It's a combination of two fruits, but I won't spoil it until you've been where you need to be[else][b]PEAR PEACH[r][end if][pminus][cycling]" instead;

this is the hint-diss-door rule: say "[one of]There are two solutions to the [diss door]. One is racy, and one is not[pplus][or]The racy one is to cut the diss door down with your own rude phrase[pplus][or][b]PISS POOR[r][pplus][or]You can also try a hint given at game's end[pplus][or][b]SWEAR SWAMP WHERE WOMP[r][pminus][cycling]" instead;

this is the hint-just-jack rule: say "[one of][jack] is in the way, and he won't get out without proper transport[pplus][or]You don't need to summon something directly, just something that leaves [jack] displaced[pplus][or]Make [jack] [b]BUSSED BACK[r][pminus][cycling]" instead;

this is the hint-sus-sack rule: say "[one of]The sus sack can be changed to something more useful[pplus][or]You don't need that something in the sus sack for yourself, but it is a nice gift for someone, if they are present[pplus][or][b]PLUS PLAQUE[r][pminus][cycling]" instead;

this is the hint-pear-peach rule:
	if rare reach is unvisited, say "It's impressive you got the pear peach before visiting the place where you need to use it. You'll know when you get there." instead;
	if player is not in rare reach, say "The pear peach can work its magic in Rare Reach." instead;
	say "[one of]The pear peach can make Rare Reach a bit less desolate[pplus][or]This could be a place with life, or at least, water[pplus][or]Make a [b]BARE BEACH[r][pminus][cycling]" instead;

this is the hint-deep-dune rule:
	if sco-seep-soon is false, say "[one of]You need the deep dune to start getting smaller[pplus][or]The deep dune won't get smaller right away[pplus][or]Make the deep dune [b]SEEP SOON[r][pminus][cycling]" instead;
	if flag-reap-rune is false, say "Leave and come back before making further progress with the deep dune." instead;
	say "[one of]What is in the deep dune? Something valuable[pplus][or]A symbol of magic power is inside the dune, if you search right[pplus][or][b]REAP RUNE[r][pminus][cycling]" instead;

this is the hint-rho-rune rule: say "The [rune] [if player is in nonoon]gives you power here[else if nonoon is unvisited]is useful somewhere you haven't been[else]is useful somewhere you've been[end if]." instead;

this is the hint-cocoon rule:
	if sco-mo-moon is false, say "[one of]You need some light to appear in the night sky[pplus][or]There are no stars that can appear, but there is another celestial body[pplus][or][b]MO MOON[r][pminus][cycling]" instead;
	if sco-so-soon is false, say "[one of]You'd like to hurry up the cocoon opening[pplus][or]There is a way to speed up time, but not quite to where the cocoon opens[pplus][or][b]SO SOON[r][pminus][cycling]" instead;
	if sco-crow-croon is false, say "[one of]You need morning to appear[pplus][or]You have no rooster, but there's another animal that can make a noise that might signify morning[pplus][or][b]CROW CROON[r][pminus][cycling]" instead;
	say "[done-here]." instead;

this is the hint-locking-lift rule:
	if hub-score < lift-score and lift-score < 5 and lift-hint-warn is false:
		now lift-hint-warn is true;
		say "You have uncompleted areas you can reach in the lift, so hinting the lift will show what is remaining until you are ready for the final spoke of the hub.[line break]";
	if sco-rocking-rift is false, say "[one of]A good introductory hub is a concert that has been split up. It's on the long side, but the words are short[pplus][or][b]ROCKING RIFT[r][pminus][cycling]" instead;
	if sco-shocking-shift is false, say "[one of]You want to change things everywhere, but one place is particularly drastic. It gives you an item you need elsewhere[pplus][or]The background itself will change, and you'll be amazed[pplus][or][b]SHOCKING SHIFT[r][pminus][cycling]" instead;
	if sco-gawking-gift is false, say "[one of]There's a place where you get knowledge and confidence[pplus][or]You'll stare blankly, whether it's too much or too little[pplus][or][b]GAWKING GIFT[r][if player does not have red rose], though you can't complete it now until you visit another hub[end if][pminus][cycling]" instead;
	if sco-grokking-grift is false, say "[one of]You need to learn about the seedy side of things without being affected[pplus][or]This lift setting requires slang for knowing something[pplus][or][b]GROKKING GRIFT[r][pminus][cycling]" instead;
	if sco-docking-diffed is false, say "[one of]There's a boat ahead in the toughest area[pplus][or][b]DOCKING DIFFED[r][pminus][cycling]" instead;
	if hub-score < 5, say "[b][best-hub][r] is the recommended lift setting to complete." instead;
	if sco-mocking-miffed is false, say "[one of]The last area is where you encounter [the sprite]. They are upset and contemptuous[pplus][or]Specifically, you may imagine you hear scornful laughter, which you need to follow[pplus][or][b]MOCKING MIFFED[r][pminus][cycling]" instead;
	say "You've figured out the locking lift completely." instead;

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

this is the hint-sturdy-stalk rule:
	if sco-wordy-walk is true, say "You already figured how to be inspired by the sturdy stalk." instead;
	say "[one of]The sturdy stalk isn't critical to winning, but it provides a bonus point[pplus][or]Look at the stalk the right way, and you get inspiration[pplus][or]Have a [b]WORDY WALK[r][pminus][cycling]" instead;

this is the hint-crow-crew rule:
	if sco-yo-you is false, say "You need to hype up the crowd before the crow crew makes their big entrance. [b]HINT[r] the general area for that." instead;
	say "[one of]The Crow Crew needs to make a big, grand entrance[pplus][or]You can give the Crow Crew momentum if you introduce them right[pplus][or][b]THROW THROUGH[r][pminus][cycling]" instead;

this is the hint-trail-stuff rule: say "You will have [the noun]'s help when the time comes. It's there so you don't lose track of it." instead;

this is the hint-sight-sail rule:
	if sco-right-rail is false, say "[one of]You need to gain your bearings on the sight sail[pplus][or]A piece of equipment rhyming with sight sail would help[pplus][or]Find the [b]RIGHT RAIL[r][pminus][cycling]" instead;
	say "You got your bearings with the sight sail already." instead;

this is the hint-delight-dilute rule:
	say "[one of]It's optional to get rid of [the dilute], and if you want to, the solution may be a bit tricky. But it follows the rhyming description[pplus][or]The name of [the dilute] suggests taking something nice and making it worse. You can do the reverse[pplus][or][b]DESPITE DISPUTE[r][pminus][cycling]" instead;

this is the hint-bane-bat rule: say "[one of]Now you have a weapon, what's the right way to bust out[qplus][or]There's a specific way to bring the walls of the vat down[pplus][or][b]FLAIN FLAT[r][pminus][cycling]" instead;

this is the hint-pred-pros rule:
	say "[one of]The Pred Pros in their head hose are blocked by your red rose, but you can actually make them allies[pplus][or]The Pred Pros look very skinny[pplus][or][b]FED FOES[r][pminus][cycling]" instead;

this is the hint-market-marquee rule:
	say "[one of]You need to figure the three settings of the marquee[pplus][or]The nonsense words on the marquee clue the rhymes you need, ones that work with market marquee, but they're shorter[pplus][or][if sco-yet-ye is false][b]TWET/TWEE[b] leads to [r]YET YE[r][else if sco-set-see is false][b]TRET/TREE[b] leads to [r]SET SEE[r][else][b]GLET/GLEE[b] leads to [r]FRET FREE[r][end if][pminus][cycling]" instead;

this is the hint-plus-plaque rule:
	say "[one of]You need to label the plus plaque now. Something that describes [the sprite][pplus][or]You can describe [the sprite] unfavorably[pplus][or][b]TURNING TRITE[r][pminus][cycling]" instead;

this is the hint-spurning-sprite rule:
	if sco-plus-plaque is false, say "You need a gift for [the sprite] first. Check your inventory for something to work on." instead;
	abide by the hint-plus-plaque rule;

this is the hint-light-lute rule:
	if player does not have the light lute, say "[outside-item]." instead;
	if player is in slight sleaze:
		if sco-plight-please is false, say "[genprog of lute]." instead;
		if sco-right-root is false, say "[one of]You want to grow trite trees, but they'd be hard to build[pplus][or]The light lute can help you build a firm foundation[pplus][or][b]RIGHT ROOT[r][pminus][cycling]" instead;
	if player is in trite trail:
		if sco-bright-brute is false, say "[one of]The light lute can summon a generic animal ally[pplus][or]You need an animal ally with strength and a positive mood[pplus][or]Summon a [b]BRIGHT BRUTE[r][pminus][cycling]" instead;
	if player is in gore goals:
		if sco-shore-shoals is false, say "The light lute can summon some optional animals once you've taken care of general business." instead;
		if sco-kite-coot is false, say "[one of]You can summon a hybrid bird with the light lute[pplus][or]Each word is a bit odd, and it has another non-animal use, too[pplus][or]Summon a [b]KITE COOT[r][pminus][cycling]" instead;
		if sco-night-newt is false, say "[one of]You can summon an animal that blends into the background with the light lute[pplus][or]Not the background during the day[pplus][or]Summon a [b]NIGHT NEWT[r][pminus][cycling]" instead;
	if lute-strings is 0, say "You've done all you can with [the lute]." instead;
	if gold-lute-strings is 0, say "You only have bonus points to gain from [the lute]." instead;
	say "[useless of light lute]." instead;

this is the hint-red-rose rule:
	if player does not have the red rose, say "[outside-item]." instead;
	if player is in bum bout rum route and sco-said-sos is false:
		if sco-dumb-doubt is false, say "[genprog of red rose]." instead;
		say "[one of]The red rose can extend the dumb doubt you've cast on your oppressors[pplus][or]The red rose can use a rhetorical trick or help you use one[pplus][or]The red rose can generate [b]SAID SOS[r][pminus][cycling]" instead;
	if player is in seek sameing:
		if sco-chic-shaming is false, say "[genprog of red rose]." instead;
		if sco-bred-bros is false, say "[one of]The red rose can attract people who can spread a positive message better than you can[pplus][or]Summon upper-class types full of camaraderie[pplus][or][b]BRED BROS[r][pminus][cycling]" instead;
	if player is in trite trail:
		if whale-score < 5, say "[genprog of red rose]." instead;
		if sco-thread-throws is false, say "[one of]The red rose is useful for making something to subdue [the whale][pplus][or]Generally you use a net to catch fish. Something that can sort of make a net is the first word, and how you use a net is the second[pplus][or][b]THREAD THROWS[r][pminus][cycling]" instead;
	say "[useless of red rose]." instead;

to say useless of (itm - a thing): say "The [itm] is useful but not here"

to say genprog of (itm - a thing): say "You can use [the itm] after making progress with the general area here"

volume room hints

this is the hint-bane-be-sane-see rule:
	say "[one of]You may notice the [b]TRAIN TREE[r] has writing on it. It's an option that's meaningless for gameplay, but it helps you see what sort of puzzles are ahead[pplus][or]You can [b]READ[r] the train tree to decide your name, which has no effect on anything except the hints you may pick up in the next room[pplus][or]If you note the names, you may find a bonus point that goes along with the room name and game theme[pminus][cycling]" instead;

this is the hint-roaring-rocks rule:
	if sco-boring-box is false, say "[one of]The roaring rocks can be changed into something useful and interesting. Or something that contains something interesting. Something that double-rhymes roaring rocks[pplus][or]The container itself may not look interesting[pplus][or][b]BORING BOX[r][pminus][cycling]" instead;
	say "You can [b]LL[b] and try going [r]UP[r] to look around and get clues about the leet learner here, but there are no more puzzles." instead;

this is the hint-stun-storm rule:
	if sco-done-dorm is false, say "[one of]You need a place to rest that double-rhymes [b]STUN STORM[r][pplus][or]Your place to rest must be sturdy and solid[pplus][or][b]DONE DORM[r][pminus][cycling]" instead;
	if sco-fun-form is false, say "[one of]You need certification you're the sort of person welcome in a done dorm. How to rhyme that[qplus][or][b]FUN FORM[r][pminus][cycling]" instead;
	say "[done-here]." instead;

this is the hint-nnss rule:
	if sco-grow-grudge is false, say "[one of]The [sludge] is annoying. You need to be annoyed by it the right way[pplus][or]What's a good way to build up annoyance[qplus][or][b]GROW GRUDGE[r][pminus][cycling]" instead;
	say "[done-here]." instead;

this is the hint-tttt rule:
	if sco-gee-junk is false, abide by the hint-tree-trunk rule;
	if free fruit is not moot, abide by the hint-free-fruit rule;
	say "[done-here]." instead;

this is the hint-trust-track rule:
	if sco-crust-crack is true, say "[done-here]." instead;
	if just jack is fungible, abide by the hint-just-jack rule;
	say "[one of]There is a passage, even though you trust there isn't[pplus][or]But the passage won't appear until there is a shift in the ground[pplus][or]Make the [b]CRUST CRACK[r][pminus][cycling]" instead;

this is the hint-rare-reach rule:
	if sco-reap-rune is true, say "[done-here]." instead;
	if sco-bare-beach is false and player does not have pear peach, say "You don't have the item you need to transform this place. You can guess what to say, though, until you find that item." instead;
	abide by the hint-pear-peach rule;

this is the hint-fun-farm rule:
	if sco-un-arm is true, say "[done-here]." instead;
	say "[one of]How can you get rid of weapons and threats to get by[qplus][or]You can shorten things up[pplus][or][b]UN ARM[b] or [r]UNARM[r][pminus][cycling]" instead;

this is the hint-nonoon rule:
	if rho rune is off-stage, say "You can't do much here until you get an item of power. You can guess what to do, but it will have no effect." instead;
	if sco-go-goon is false, say "[one of]You need to ward off enemies[pplus][or]Give an order to a certain sort of enemy[pplus][or][b]GO GOON[r][pminus][cycling]" instead;
	if sco-co-coon is false, say "[one of]You must summon something that can grow with the passage of time[pplus][or]Something that can burst into life[pplus][or][b]COCOON[r], with or without a space[pminus][cycling]" instead;
	abide by the hint-cocoon rule;

this is the hint-jotty-jail rule:
	say "[one of]You'll want to look for a weakness in the construction of the jail you're in[pplus][or]What's something that's used in construction and rhymes with jail[qplus][or][b]KNOTTY NAIL[r][pminus][cycling]" instead;

this is the hint-high-hub rule:
	if sco-bye-bub is true, say "The only thing to do here is to operate [the lift]." instead;
	say "[one of]There's a way back down from the high hub, but it's largely for entertainment. Your main objective here is to use the lift as needed[pplus][or]You can take your leave of the hub with the right phrase[pplus][or][b]BYE BUB[r][pminus][cycling]" instead;

this is the hint-no-new-show-shoe rule:
	if sco-flow-flue is false, say "[one of]You need to build infrastructure to start[pplus][or]Tubes, or something like them, would help, to transport stuff that can't be easily contained[pplus][or][b]FLOW FLUE[r][pminus][cycling]" instead;
	if sco-glow-glue is false, say "[one of]You need something that will hold infrastructure together[pplus][or]Duct tape works a lot of places, but you need something less visible[pplus][or][b]GLOW GLUE[r][pminus][cycling]" instead;
	if sco-bro-brew is false, say "[one of]You need to provide potential concertgoers with something to drink[pplus][or]What sort of drink would provide camaraderie[qplus][or][b]BRO BREW[r][pminus][cycling]" instead;
	if sco-stow-stew is false, say "[one of]You need to provide potential concertgoers with something to eat[pplus][or]You'll want to keep that something to eat tucked away, nice and hot, until people are hungry[pplus][or][b]STOW STEW[r][pminus][cycling]" instead;
	if sco-ho-who is false, say "[one of]You need to call out to the crowd to start getting them hyped[pplus][or]What's a question that might make a crowd feel wanted[qplus][or][b]HO WHO[r][pminus][cycling]" instead;
	if sco-yo-you is false, say "[one of]You have the crowd's attention. They need to be acknowledged[pplus][or]You need to let the crowd know whom the show's for[pplus][or][b]YO YOU[r][pminus][cycling]" instead;
	if sco-crow-crew is false, say "[one of]The stage needs performers! They have a name[pplus][or]What kind of, umm, group would fit in the Shoe[qplus][or][b]CROW CREW[r][pminus][cycling]" instead;
	if sco-throw-through is false, abide by the hint-crow-crew rule;
	say "[done-here]." instead;

this is the hint-gore-goals rule:
	if sco-shore-shoals is false, say "[one of]You can make this area much more livable[pplus][or]A more coastal backdrop would be nice[pplus][or][b]SHORE SHOALS[r][pminus][cycling]" instead;
	if sco-four-foals is false, say "[one of]This place needs animals. Let's get some cute ones[pplus][or]A specific number of cute animals works here[pplus][or][b]FOUR FOALS[r][pminus][cycling]" instead;
	if sco-more-moles is false, say "[one of]This place doesn't have enough animals, yet[pplus][or]We don't need any specific number, but some animals might be particularly useful[pplus][or][b]MORE MOLES[r][pminus][cycling]" instead;
	say "[done-here]." instead;

this is the hint-rum-route rule:
	if sco-dumb-doubt is false, say "[one of]Being here makes you feel a lack of confidence for silly reasons. You can flip that around[pplus][or]Put a name to the indecision you are feeling[pplus][or][b]DUMB DOUBT[r][pminus][cycling]" instead;
	if sco-said-sos is false, abide by the hint-red-rose rule;
	if sco-umm-out is false, say "[one of]You need to seal the deal you started with dumb doubt[pplus][or]What's an underhanded way to say good-bye[qplus][or][b]UMM OUT[r][pminus][cycling]" instead;
	say "[done-here][line break]" instead; [ no period after this since the new room name ends with an exclamation mark ]

this is the hint-slay-slope rule:
	if sco-hey-hope is false, say "[one of]You need to improve your mood a bit[pplus][or]You can't do anything concrete, and you don't need to force a smile, but you can discover a small light[pplus][or][b]HEY HOPE[r][pminus][cycling]" instead;
	if sco-k-cope is false, say "[one of]Now you've discovered solace, you need to find something to do with it[pplus][or]The first word is a bit of slang, but the second word is all about fully dealing with your current life[pplus][or][b]K COPE[r][pminus][cycling]" instead;
	say "[done-here][line break]" instead; [ no period after this since the new room name ends with an exclamation mark ]

this is the hint-slight-sleaze rule:
	if sco-bright-breeze is false, say "[one of]You need a change in the weather to start to alleviate the fright freeze[pplus][or]There's something that could cheer you up. A breath of fresh air[pplus][or][b]BRIGHT BREEZE[r][pminus][cycling]" instead;
	if sco-plight-please is false, say "[one of]You need to dispel the false moaning that seems to swirl around[pplus][or]Things aren't so bad, and the right phrase will emphasize that[pplus][or][b]PLIGHT PLEASE[r][pminus][cycling]" instead;
	if light lute is off-stage, say "You don't have the item you need to find passage beyond here." instead;
	if sco-right-root is false, abide by the hint-light-lute rule instead;
	say "[done-here]." instead;

this is the hint-seek-sameing rule:
	if sco-bleak-blaming is false, say "[one of]You need to establish the freak framing as something far less glamorous[pplus][or]Show complaining is not as insightful as many people think. What to call it[qplus][or][b]BLEAK BLAMING[r][pminus][cycling]" instead;
	if sco-chic-shaming is false, say "[one of]It's not enough to call out bad, whiny behavior. You need a counter to it.[or]There's a rather cheery counterattack possible.[or][b]CHIC SHAMING[r][pminus][cycling]" instead;
	abide by the hint-red-rose rule;
	if sco-bred-bros is false, abide by the hint-red-rose rule;
	say "[done-here]" instead; [ no period since the room name now ends with a ! ]

this is the hint-trite-trail rule:
	if sco-thread-throws is true, say "[done-here]." instead;
	if sco-sight-sail is false, say "[one of]You need transportation to fight [the whale][pplus][or]What sort of transportation could be available from the Trite Trail[qplus][or][b]SIGHT SAIL[r][pminus][cycling]" instead;
	if sco-might-mail is false, say "[one of]You need armor to fight [the whale][pplus][or]What sort of armor could be available from the Trite Trail[qplus][or][b]MIGHT MAIL[r][pminus][cycling]" instead;
	if sco-flight-flail is false, say "[one of]You need a weapon to fight [the whale][pplus][or]What sort of weapon could be available from the Trite Trail[qplus][or][b]FLIGHT FLAIL[r][pminus][cycling]" instead;
	if sco-right-rail is false, say "[one of]You could have trouble keeping your legs during water travel[pplus][or]What could you grab on the sight sail so you don't fall over[qplus][or][b]RIGHT RAIL[r][pminus][cycling]" instead;
	if sco-excite-exhale is false, say "[one of]You really need a big mental boost, but then you need to relax[pplus][or]It's a tall order. Two six-letter words work here[pplus][or][b]EXCITE EXHALE[r][pminus][cycling]";
	if sco-bright-brute is false:
		abide by the hint-light-lute rule;
	abide by the hint-red-rose rule;

this is the hint-mad-most-cad-coast rule:
	if sco-bad-boast is false, say "[one of]You need to repel the insults and bravado you're hearing[pplus][or]Label the taunts around you as objectively not up to par[pplus][or][b]BAD BOAST[r][pminus][cycling]" instead;
	if sco-rad-roast is false, say "[one of]You've dealt with the taunts, but it's time for a counter-offensive[pplus][or]Have faith in yourself. Show you can give better than you get[pplus][or][b]RAD ROAST[r][pminus][cycling]" instead;
	say "[done-here]." instead;

this is the hint-old-end rule:
	if sco-bold-bend is false, say "[one of]You need to extend the path[pplus][or]There's a way to extend the old end, though it won't be a linear path[pplus][or][b]BOLD BEND[r][pminus][cycling]" instead;
	if sco-trolled-trend is false, say "[one of]There are two ways to go. You need to look for clues which way to go[pplus][or]One way clearly has nastiness, if you know what to look for[pplus][or][b]TROLLED TREND[r][pminus][cycling]" instead;
	if sco-mold-mend is false, say "[one of]The trolling hurt a bit. You need to prepare yourself to face it[pplus][or]First you need the right mindset, then you can heal[pplus][or][b]MOLD MEND[r][pminus][cycling]" instead;
	say "[done-here]." instead;

this is the hint-vain-vat rule:
	if sco-bane-bat is false, say "[one of]You need to get out of this vat! But you have nothing to break the vat down with[pplus][or]You need a strong weapon to beat down the vat[pplus][or][b]BANE BAT[r][pminus][cycling]" instead;
	if sco-flain-flat is false, abide by the hint-bane-bat rule;
	if sco-splain-splat is false, say "[one of]It's time to announce your presence[xplus][or]You need to do so with sound effects after[pplus][or][b]SPLAIN SPLAT[r][pminus][cycling]" instead;
	if pred pros are fungible, abide by the hint-pred-pros rule;
	say "[done-here].";

[	if sco-xxx-xxx is false, say "[one of][or][or][b]XXX XXX[r][pminus][cycling]" instead;]

this is the hint-threat-three rule:
	if market marquee is fungible, abide by the hint-market-marquee rule;
	if sus sack is fungible, abide by the hint-sus-sack rule;
	abide by the hint-spurning-sprite rule;

Low Key Learny Jokey Journey Hints ends here.

---- DOCUMENTATION ----
