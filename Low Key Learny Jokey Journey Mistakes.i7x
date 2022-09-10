Version 1/220706 of Low Key Learny Jokey Journey Mistakes by Andrew Schultz begins here.

"Mistakes, or what qualifies as them--good guesses and their homonyms for Low-Key Learny Jokey Journey."

volume all kinds of guesses

table of general good guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"okie ernie/earnie/earny"	--	false	--	--	"No stereotypical rural fellow pops up with down-home advice."
"tokey tourney"	--	false	--	--	"That could potentially be very relaxed and low-key, indeed. I guess."
"coppin cart"	--	false	--	--	"No policemen drive by. They might be corrupt, anyway."
"choppin chart"	--	false	--	--	"There are only three regions, and the name isn't really important."
"mopping mart"	--	false	--	--	"Surely this is more exciting than a trip for cleaning supplies."

to say is-was of (ts - a truth state): say "[if ts is true]was[else]is[end if]"

book current table notes

to current-table-note (tn - a table name):
	say "[line break]";
	if tn is table of mad monk guesses:
		if warn-monk is false, continue the action;
		let nptn be nudge-points of tn;
		if (nptn is number of rows in tn) and sco-gad-gunk is true:
			say "You've torn apart the Mad Monk in pretty much any which way. Time to [monk-move-on].";
			continue the action;
		say "[monk-count].";

to say monk-count:
	say "You've discovered [nudge-points of table of mad monk guesses] of [number of rows in table of mad monk guesses] good guesses available from the Mad Monk, and you have [if sco-gad-gunk is false]not [end if]found the Last Lousy Point. If that's good enough, [monk-move-on]";

book guesses by room, alphabetical

table of bane be sane see guesses [note: you don't have the leet learner here, so MAGICNUM can't be filled in, and even if it could, it would be a mess]
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"cane key"	--	false	--	--	"You don't need any key to unlock the tree."
"feign fee"	--	false	--	--	"You whine about how [this-game] costs money on top of being a waste of time. Nobody listens."
"main me"	--	false	--	--	"You are the main character in this adventure, but don't let it go to your head."
"pain p/pee"	--	false	--	--	"[this-game] is nonviolent and hopefully devoid of bathroom humor."
"sprain spree"	--	false	--	--	"While this is technically correct, you don't want to injure yourself or others."
"vain v"	--	false	--	--	"You come to grips with how you are not as humble as you should be."

table of bum bout rum route guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"crumb kraut"	--	false	108	no-umm-out rule	"You don't need a plate of food. You need spiritual nourishment."
"drum drought"	--	false	108	no-umm-out rule	"Thankfully, there's no percussion in the background."
"gum gout"	--	false	108	no-umm-out rule	"But gout is in the toes, not the mouth."
"numb nowt"	no-umm-out rule	false	108	--	"Once you're more confident, you won't want to feel numb any more, and it'll just happen."
"pum pout" or "pump out"	--	false	108	no-umm-out rule	"Clever sleight-of-mouth, but I can't quite allow it."
"scum scout"	--	false	108	--	"You don't want to call up an antagonist face-to-face."

this is the no-umm-out rule:
	if sco-umm-out is false, the rule succeeds;
	the rule fails;

table of bum bout rum route guesses (continued)
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"bum boot"	--	false	108	no-umm-out rule	"[route-not-root]What would you do with only one boot?"
"chum chute"	--	false	108	no-umm-out rule	"[route-not-root]Misery loves company, but company doesn't love misery."
"come coot"	--	false	108	no-umm-out rule	"[route-not-root][no-anim]."
"from fruit"	--	false	108	no-umm-out rule	"[route-not-root]We already did stuff with fruit."
"hum hoot"	--	false	108	no-umm-out rule	"[route-not-root]You try to scrounge up a tune. It's very bluesy!"
"mum moot"	--	false	108	no-umm-out rule	"[route-not-root]No matter how quiet things are, that won't stop negative voices in one's head."
"numb newt"	--	false	108	no-umm-out rule	"[route-not-root][no-anim]."
"scum scoot"	--	false	108	no-umm-out rule	"[route-not-root]There are no scum here, just thoughts that make you feel negative."
"some suit"	--	false	108	no-umm-out rule	"[route-not-root]A better wardrobe would only help things look better, not be better."

to say route-not-root: say "While [']Bout should indicate Route is pronounced with a long o, I'll let you have fun guessing.[paragraph break]"

to say no-anim: say "This isn't the place to summon animals"

table of drain drat vain vat guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"attain a tat"	--	false	105	splat-splained rule	"Oh, your parents warned you that text adventures and D&D would lead to darker desires, but did you listen? Oh, no, you did not."
"brain brat"	--	false	105	splat-splained rule	"You don't want to fight annoying people with violence. Inanimate obstacles, yes. People, no."
"cane cat"	--	false	105	splat-splained rule	"Cats don't deserve to be caned. Dogs don't, either."
"chain chat"	--	false	105	splat-splained rule	"More forceful talking [is-was of sco-splain-splat] necessary here."
"feign fat"	--	false	105	splat-splained rule	"You don't need to cry about being a few pounds overweight."
"gain gat"	--	false	105	splat-splained rule	"A gun would be too much here."
"main mat"	in-vat rule	false	105	splat-splained rule	"Perhaps that will be laid out once you have figured how to get out of the vat."
"pain pat"	--	false	105	splat-splained rule	"Not being Patrick Swayze's character in [i]Road House[r], you admit the truism that pain, indeed, does hurt. And you grab where it hurts, briefly."
"plain plat"	--	false	105	splat-splained rule	"The terrain is already pretty flat."
"rain rat"	--	false	105	splat-splained rule	"But you'd have no way to make it rain cats and dogs to catch the rat(s) after."
"rain/reign rat"	--	false	105	splat-splained rule	"You don't need an animal overlord."
"sane sat"	--	false	105	splat-splained rule	"You convince yourself the vain vat [is-was of sco-flain-flat] a great place to sort out your emotions."
"slain slat"	--	false	105	splat-splained rule	"There is no slat to slay, alas."
"spain spat"	--	false	105	splat-splained rule	"You make up reasons to complain about Spain, for whatever good that does."
"sprain sprat"	--	false	105	splat-splained rule	"You find no fish to torment."
"stain stat"	--	false	105	splat-splained rule	"Alas, you have nothing to vandalize the premises with."
"strain strat"	--	false	105	splat-splained rule	"You contemplate a way to put your ultimate enemy under pressure."

this is the splat-splained rule:
	if sco-splain-splat is true, the rule succeeds;
	the rule fails;

this is the in-vat rule:
	if sco-flain-flat is false, the rule succeeds;
	the rule fails;

table of freak framing seek sameing guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"eek aiming"	no-eek-aim rule	false	106	--	"Yes, you do need to aim barbs at people."
"geek gaming"	--	false	106	--	"Geek gaming, I suppose, has its own brand of conformism and conventions, so you can't quite use it as a shelter."
"leek laming"	--	false	106	--	"Mangling plants is sort of nonconformist in its own way, I guess."
"meek maiming/mameing/maming"	--	false	106	--	"Sure, go ahead, sneak a few of your favorite arcade games in on MAME. I'll wait."
"teak/tique taming"	--	false	106	--	"You need neither wood nor a boutique nor a critique."

this is the no-eek-aim rule:
	if sco-chic-shaming is false, the rule succeeds;
	the rule fails;

table of high hub guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"cly club"	--	false	33	bye-bub-yet rule	"You try to go old-school finding an so-old-school-schools-didn't-exist weapon, but alas, it doesn't work."
"die/dye dub"	--	false	33	bye-bub-yet rule	"Whether you want to die or dye for a win or just for a double something, you consider the possibilities. Hey, you may need all the clue points you can get, here."
"dry drub"	--	false	33	bye-bub-yet rule	"You mentally make fun of someone you disliked, using phrases like 'I won't even raise my voice' or 'I'm sure you're nice and all.'"
"fly flub"	--	false	33	bye-bub-yet rule	"You consider making a mistake to impress someone. After all, being too perfect makes you dislikable. Then you realize there is nobody to impress."
"nigh nub"	--	false	33	bye-bub-yet rule	"You suspect some small stuff or other is around."
"pie pub"	--	false	33	bye-bub-yet rule	"Alas, the high hub is not expansive enough to fit such an establishment."
"rye/wry rub"	--	false	33	bye-bub-yet rule	"You aren't sure whether you mean a rub of alcohol or bread. You're not sure what it will do. But you consider the possibility."
"scry scrub"	--	false	33	bye-bub-yet rule	"As good-looking as ever."
"sigh sub"	--	false	33	bye-bub-yet rule	"You sigh at what you did down below, wondering if you [if sco-bye-bub is true]should[else]can[end if] go back."
"sly slub"	--	false	33	bye-bub-yet rule	"You have no need to spin yarn out or be sneaky doing so."
"sty stub"	--	false	33	bye-bub-yet rule	"You search for a ticket that would admit you to a barn. There is none."
"tie tub"	--	false	33	bye-bub-yet rule	"Alas, there is no tub to tie."
"try trub"	--	false	33	bye-bub-yet rule	"You'll have to look harder than that to find trouble. But it is close."
"why wub"	--	false	33	bye-bub-yet rule	"You think back to a Philip K. Dick short story."

this is the bye-bub-yet rule:
	if sco-bye-bub is true, the rule fails;
	the rule succeeds;

table of hun harm fun farm guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"one worm/warm"	--	false	23	need-unarm rule	"That doesn't quite work. Maybe the farm needs worms or warm weather, but its survival isn't as important to you as passage north."

this is the need-unarm rule:
	if sco-un-arm is false, the rule succeeds;
	the rule fails;

table of jotty jail guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"botty/bawdy bail/bale"	--	false	74	--	"You don't need a dirty story, and money won't get you out of here."
"dotty/doughty dale"	--	false	74	--	"Perhaps there is a dale beyond, but going dotty or staying doughty isn't the way to go find it."
"foughty fail"	--	false	74	--	"Don't give up! I believe in you!"
"hottie/hotty hail/hale"	--	false	74	--	"Such useless thoughts at a time like this! Less escapism, more escape!"
"scotty scale"	--	false	74	--	"No spaceship engineer comes to rescue you."
"soddy sail"	--	false	74	--	"Having a sail of any material wouldn't help. You're landlocked."
"stottie stale"	--	false	74	--	"Stale bread won't help you here."
"swotty swale"	--	false	74	--	"You focus on what sort of land is outside, ignoring how you might actually get out."
"trotty trail"	--	false	74	--	"No trail opens up, but even if it did, the snotty snail would push you back from it."

table of mad most cad coast guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"gad ghost"	--	false	35	no-roast-yet rule	"You fail to scare anyone with this[if sco-rad-roast is true], not that you need to, any more[end if]."
"grad grossed"	--	false	35	no-roast-yet rule	"You think of the most sophisticated disgusting joke you've ever heard."
"had host"	no-roast-yet rule	false	35	no-roast-yet rule	"Once the insults are gone, this will be true."
"pad post"	no-roast-yet rule	false	35	no-roast-yet rule	"A post would offer scant protection against insults."
"tad toast"	--	false	35	no-roast-yet rule	"There's no such thing as toasting someone with an insult halfway."

this is the no-roast-yet rule:
	if sco-rad-roast is false, the rule succeeds;
	the rule fails;

table of nay nope slay slope guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"day dope"	--	false	107	--	"Reaffirming every day is dope is pretty positive and all, but you [if sco-k-cope is true]did[else]can do[end if] better."
"gray grope"	--	false	107	--	"[no-mope-grope]."
"lay lope"	--	false	107	--	"You make rudimentary plans to ambush something, even though there's nothing to ambush."
"may mope"	--	false	107	--	"[no-mope-grope]."
"pay pope"	--	false	107	--	"Oh dear no. The proper way to surrender to religious corruption these days is to chuck money at televangelists. Get with the times!"
"ray rope"	--	false	107	--	"The right sort of ray? Yes. Rope to pull you back? No."
"say soap"	--	false	107	--	"I suppose I should put in a cliche about cleansing one's soul here."
"stay stope"	--	false	107	--	"Building a long-lasting mine here would not make or keep things happier."
"tray/tres trope"	--	false	107	--	"You recognize a trope or twelve at play during your journeys."

to say no-mope-grope: say "The object is not to be consumed by depression but to reduce its influence"

table of no new show shoe guesses [ you can't go back to the show shoe after you THROW THROUGH, so there is no leet-rule ]
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"blow blew/blue"	--	false	100	--	"You blow off steam that you haven't quite revitalized the [show shoe] yet."
"cocu"	--	false	100	--	"Your knowledge of former footballers is impressive. (So is mine, since I caught this, eh?)"
"doh do/due/dew"	--	false	100	--	"No need for regrets."
"dough do/due/dew"	--	false	100	--	"Bread isn't quite the right food for a concert."
"doe do/due/dew"	--	false	100	--	"This isn't a nature park. Other places need animals, though."
"fo/foe foo/phoo"	--	false	100	--	"You don't need to be expressing contempt here."
"grow grue"	--	false	100	--	"You want entertainers who crave the spotlight, not avoid it. Also, you'd prefer them less predatory."
"lo/low loo"	--	false	100	--	"The [shoe] is already equipped with those, out of sight."
"lo/low lew/lou"	--	false	100	--	"You don't need to call out anyone by name."
"mo moo"	--	false	100	--	"Cows would not make very exciting performers, [if sco-crow-crew is false]but another animal, or people named after them, might[else]unlike the Crow Crew[end if]."
"no/know knew/new"	--	false	100	--	"The last thing people want to be thinking about is knowledge, or how cliched a show might be if you think about it too much."
"oh oo/ooh"	--	false	100	--	"[generic-sounds]."
"po poo/pooh"	--	false	100	--	"There is underpromising and overdelivering, but that's a bit too much. Way too much."
"po pew"	--	false	100	--	"The show ahead is not particularly religious."
"row rue"	--	false	100	--	"No, we want a positive environment, here."
"slow slue/slew"	--	false	100	--	"But we want to make this place less of a backwater. Gotta speed things up so the performance starts!"
"so sue"	--	false	100	--	"You don't want to either take or face legal action, which is a lot less exciting than how it's presented in most TV dramas."
"toe two/too"	--	false	100	--	"Counting your digits would be exciting for nobody."
"woe/whoah/whoa woo"	--	false	100	--	"[generic-sounds]."

to say generic-sounds: say "That's a bit too generic a sound to make, [if sco-yo-you is false]but it gives you ideas[else]and you've already made the right ones, anyway[end if]"

table of nonoon guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"blow balloon"	--	false	102	need-crow-croon rule	"This ... this is worth a nudge-point, if not strictly a rhyming pair. But the whole procedure [is-was of sco-crow-croon] a bit more mystical."
"beau/bow boon"	--	false	102	need-crow-croon rule	"You require no ranged weapon or physical attractiveness."
"doe/doh/dough dune"	--	false	102	need-crow-croon rule	"The [if sco-bare-beach is false]prospective [end if]dune is elsewhere in this game."
"ho hewn"	need-crow-croon rule	false	102	need-crow-croon rule	"This is what to intone once things are all right. They are not, yet."
"jo/joe june"	--	false	102	need-crow-croon rule	"You call for old or new friends, who do not appear."
"lo/low loon"	--	false	102	need-crow-croon rule	"That is the wrong sort of bird."
"po poon"	--	false	102	need-crow-croon rule	"The only thing po['] is your dirty mind. This is a family game!"
"pro prune"	--	false	102	need-crow-croon rule	"You come out mentally in favor of a high-fiber diet."
"row/rho ruin/rune"	--	false	102	need-crow-croon rule	"[if player has rho rune]But you already have the rune[else]You are on the right track for what you need[end if]."
"toe/tow tune/toon"	--	false	102	need-crow-croon rule	"Nothing toe-tapping starts playing, nor are any cartoon characters dragged across the landscape."

this is the need-crow-croon rule:
	if sco-crow-croon is false, the rule succeeds;
	the rule fails;

table of no nudge slow sludge guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"fo/foe fudge"	--	false	46	--	"This isn't Willy Wonka's Chocolate Factory. Err, Charlie's."
"joe judge"	--	false	46	--	"No former New York Giants head football coach appears."
"po/poe pudge"	--	false	46	--	"Weight gain won't help here."
"trow trudge"	--	false	46	--	"No need for Middle English here."
"stow studge"	--	false	46	--	"No ghost of Saki arrives to tell you to eat your Filboid Studge and don't let it sit."

table of old end guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"fold fend"	--	false	105	untrolled-yet rule	"Folding and fending are contradictory. Or at least they are here."
"polled penned"	--	false	105	untrolled-yet rule	"Someone rushes by and ropes you into a corner you didn't know existed. They hand you a pen and a push-poll about how much you're enjoying [this-game]. Super-Great, Extra-Great, and ten other options. You feel compelled to check them all! Then you try to keep the pen they loaned you, but they remind you that if you're having so much fun, it'd just be wack to steal a pen in the process."
"rolled rend"	--	false	105	untrolled-yet rule	"But if you got rolled, you wouldn't be able to rend."
"sold send"	--	false	105	untrolled-yet rule	"Not quite. Commerce isn't at the end of all this."
"told tend"	--	false	105	untrolled-yet rule	"Not quite. You weren't given instructions how to take care of things, and you probably can't pass them on."

this is the untrolled-yet rule:
	if sco-trolled-trend is false, the rule succeeds;
	the rule fails;

table of one warm stun storm guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"none/nun norm"	--	false	113	no-fun-form rule	"You wouldn't want to instill strict morals on this place. Or deny Mr. Peterson an extension of his bar tab."

this is the no-fun-form rule:
	if sco-fun-form is false, the rule succeeds;
	the rule fails;

table of rare reach guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"air/ere/err each"	--	false	45	need-bare-beach rule	"There aren't enough things to be each-worthy here."
"blair/blare bleach"	--	false	45	need-bare-beach rule	"But this area is sparse enough already."
"chair/cher cheech"	--	false	45	need-bare-beach rule	"Celebrities from the [']80s can't help you here, even though they're more worth celebrity than celebrities these days, when text adventures aren't properly respected."
"lair leech/leach"	--	false	45	need-bare-beach rule	"You don't need to summon enemies or drain anything here."
"pear peach"	need-pear-peach rule	false	--	--	"Very interesting! If you are ever in a position to ask for fruit, that might be helpful indeed."
"prayer preach"	--	false	45	need-bare-beach rule	"The goal of [this-game] is not to become some televangelist."
"snare sneech/sneetch"	--	false	45	need-bare-beach rule	"You consider the possibility, but then you're not sure whether you want to snare a star-bellied one. So much for that."
"spare speech"	--	false	45	need-bare-beach rule	"[if sco-pear-peach is false]You know, something even more spare than that might work, in the right place[else]But that is less spare than a pear peach[end if]."
"tear/tare teach"	--	false	45	need-bare-beach rule	"There is nobody to teach, much less verbally tear while you do so."

guessed-pear-peach is a truth state that varies.

this is the need-pear-peach rule:
	now guessed-pear-peach is true;
	if sco-pear-peach is false, the rule succeeds;
	the rule fails;

this is the need-bare-beach rule:
	if sco-bare-beach is false, the rule succeeds;
	the rule fails;

table of roaring rocks guesses [note: MAGICNUM doesn't really apply here since you get the leet learner after]
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"flooring flocks"	--	false	63	--	"You don't need to be dive-bombed by aerial predators. And I don't have the artistic ability to show you majestic birds, either. Sorry."
"poring/pouring pox"	--	false	63	--	"You don't need to catch anything, and denting the rocks would not reveal anything[furthers of sco-boring-box]."
"storing stocks"	box-hidden rule	false	63	--	"That's what the rocks will become, but you want something simpler and smaller and shorter."

this is the box-hidden rule:
	if boring box is off-stage, the rule succeeds;
	the rule fails;

table of slight sleaze guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"bite bees"	--	false	66	sleaze-undone rule	"Those wouldn't taste very good."
"fight fees"	--	false	66	sleaze-undone rule	"Yes, it's important to fight unfairly sleazy fees, but not here and now."
"flight flees/fleas"	--	false	66	sleaze-undone rule	"You need to feel less scared, not more."
"fright frees/freeze"	--	false	66	sleaze-undone rule	"You need to feel more active, not less."
"kite keys"	--	false	66	sleaze-undone rule	"That would be electrifying if it were possible."
"knight/night knees/nis"	--	false	66	sleaze-undone rule	"This rhyme was accidental, but since you found it, I'll say [i]Life of Brian[r] was a better movie. And I'll die on that hill."
"light lease/lees"	--	false	66	sleaze-undone rule	"Lees may be sleazy in their own way."
"might mes"	--	false	66	sleaze-undone rule	"Bad grammar is pretty neutral on the sleaze scale."
"sight sees/seize"	--	false	66	sleaze-undone rule	"There is enough to see, and seizing anything would be, uh, sleazy."
"smite smees"	--	false	66	sleaze-undone rule	"I'm afraid Never-Never Land is a few universes over."
"sprite sprees"	--	false	66	sleaze-undone rule	"Well, guzzling a two-liter pop bottle is less sleazy than doing the same with alcohol."
"trite trees"	sleaze-undone rule	false	66	--	"They will pop up once you've removed the sleaze."
"white whees/wheeze"	--	false	66	sleaze-undone rule	"You imagine yourself reciting Philip Larkin's fine poem [i]Sympathy in White Major[r] to great applause. Unfortunately, the speaker in the poem being sleazy doesn't help your cause, here."

this is the sleaze-undone rule:
	if sco-plight-please is false, the rule succeeds;
	the rule fails;

table of sore souls gore goals guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"boar bowls"	--	false	109	--	"Boars would be too rowdy for here."
"bore bowls"	--	false	109	--	"You're trying to bring life here, not drain it."
"cor/core coals"	--	false	109	--	"Coal would not enliven such a place[if sco-shore-shoals is true] further[end if]."
"door doles"	--	false	109	--	"No, this place doesn't need more doors."
"nor knolls"	--	false	109	--	"You don't need to deprive this place of landscape."
"poor/pour/pore poles"	--	false	109	--	"Lifeless poles would not make this area cheerier."
"roar rolls/roles"	--	false	109	--	"Perhaps the roaring would be lively. Perhaps it wouldn't. But it might not add anything."
"score skols"	--	false	109	--	"Perhaps Vikings will discover this land and conquer it some day. But why speed things up?"
"store stoles"	--	false	109	--	"[if shoal-core-score < 0]Before you have animal pelts, you'll need animals living in peace, and then you'd hate to hurt them[else]Bringing animal pelts into a place coming to life doesn't quite work[end if]."
"whore holes"	--	false	109	--	"Now, now, this isn't that sort of game."

table of threat three met me guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"bet be/bee"	--	false	112	--	"You don't need to gamble or bluff right now."
"het he/hee"	--	false	112	--	"Discussions of sexual orientation won't go over well."
"jet gee"	--	false	112	--	"You let wack punks and suckers know they'd best get to stepping, which is slightly cathartic."
"let lee"	--	false	112	--	"Whoever Lee is, they're not better-equipped to deal, here."
"net knee/ni"	--	false	112	--	"No knights appear to say a paralyzing two-letter word."
"pet pee"	--	false	112	--	"No, you don't need to mess things up that way, here."
"wet wee/whee"	--	false	112	--	"No cool waterslide or pool appears. You still have business!"

table of Thunk Tree Trunk guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"be bunk"	--	false	34	free-fruit-offstage rule	"You crave neither a tall bed nor outright lies."
"de dunk"	--	false	34	free-fruit-offstage rule	"Your mind flashes back to an 80s-era DePaul basketball commercial. Okay, maybe it doesn't, but mine did when I thought of this."
"fee/phi funk"	--	false	34	free-fruit-offstage rule	"You try to monetize or formulate olfactory and/or musical funkiness but fail."
"flee flunk"	--	false	34	free-fruit-offstage rule	"Aw, c'mon, you've gotten pretty far. You shouldn't need to run in shame."
"klee clunk/klunk"	--	false	34	free-fruit-offstage rule	"The landscape stays its own form of surreal."
"me monk"	--	false	34	free-fruit-offstage rule	"Alas, there is no monastery nearby to retreat to."
"pee punk"	--	false	34	free-fruit-offstage rule	"Micturation is unnecessary to complete [this-game]."
"plea plunk"	--	false	34	free-fruit-offstage rule	"The time for a plea that landed for a bonus point is passed, and you [if sco-plain-plea is true]took[else]missed[end if] it."
"ski skunk"	--	false	34	free-fruit-offstage rule	"The weather is not cold enough, and there's no snow."
"whee whunk"	--	false	34	free-fruit-offstage rule	"You shouldn't be thrilled to go around socking stuff."

this is the free-fruit-offstage rule:
	if sco-gee-junk is false, the rule succeeds;
	the rule fails;

table of trite trail guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"aight ail"	--	false	104	no-excite-exhale-rule rule	"You resort to the vernacular to express your displeasure with enemies, real or imagined."
"bite bail/bale"	--	false	104	no-excite-exhale-rule rule	"There is no bale to bite, and if you want to bail, you can just go back east."
"bright braille"	--	false	104	no-excite-exhale-rule rule	"There is no braille here."
"fight fail"	--	false	104	no-excite-exhale-rule rule	"[desp-gloat]!"
"fright frail"	--	false	104	no-excite-exhale-rule rule	"[desp-gloat]!"
"height hail/hale"	--	false	104	no-excite-exhale-rule rule	"Alas, no airplane appears to destroy [the whale]."
"kite kale"	--	false	104	no-excite-exhale-rule rule	"No nutririous green kite appears."
"quite quail"	--	false	104	no-excite-exhale-rule rule	"A quail would not [if sco-excite-exhale is true]have helped[else]help[end if] much against [the whale]."
"shite shale"	--	false	104	no-excite-exhale-rule rule	"Well, that would certainly make the trite trail less trite, in its own way."

to say desp-gloat: say "Don't [if sco-excite-exhale is false]despair[else]gloat[end if]"

this is the no-excite-exhale-rule rule:
	if sco-excite-exhale is false, the rule succeeds;
	the rule fails;

table of trust track guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"cussed cack"	--	false	101	--	"[if player has sus sack]No, the sack will be worthwhile.[else]There's a useful item to discover here. More useful than such words![end if]"
"gust gack"	--	false	101	--	"No stinky cloud rumbles in[if sco-bussed-back is false] to push Jack away[end if]."
"lust lack"	--	false	101	--	"You make sure put impure thoughts aside so you're really focused on a totally cool text adventure. Yay, you!"
"must mack"	--	false	101	--	"[if just jack is in trust track]Jack raises his eyebrows, but sadly, he seems more concerned with blocking you[else]This is a comedy puzzle game, not a romance game[end if]."
"rust rack"	--	false	101	--	"That would be a useless item."

this is the in-trust-track rule:
	if player is in Trust Track, the rule succeeds;
	the rule fails;

book guesses by item, alphabetical

to say furthers of (ts - a truth state): if ts is true, say " further"

table of deep dune guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"beep boon"	--	false	44	rune-unreaped rule	"No, you don't need a Geiger counter to search[furthers of sco-reap-rune] through the dune."
"creep croon"	--	false	44	rune-unreaped rule	"I couldn't get R. Kelly or Robin Thicke to appear here. Sorry!"
"keep coon"	--	false	44	rune-unreaped rule	"The dune would not be stable enough for wild animals like that to make a home."
"leap loon"	--	false	44	rune-unreaped rule	"Alas, nobody odd comes by and dives into the deep dune [if sco-reap-rune is false]to help you find what's there[else]for your entertainment[end if]. Nobody at all."
"peep poon"	--	false	44	rune-unreaped rule	"[this-game] is the wrong environment for that, and not just because it's text-based."
"streep strewn"	--	false	44	rune-unreaped rule	"Honestly! Her acting style goes well beyond just lazing about."
"sweep swoon"	--	false	44	rune-unreaped rule	"You have neither a broom nor a favorite team who overpowers all playoff foes."

this is the rune-unreaped rule:
	if sco-reap-rune is false, the rule succeeds;
	the rule fails;

table of free fruit guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"be/bee boot"	--	false	44	--	"The free fruit does not change into footwear.[fruit-clue]"
"flee/flea flute"	--	false	44	--	"There is no need to chase animals away with music.[fruit-clue]"
"gee jute"	--	false	44	--	"No, there's actual fruit inside.[fruit-clue]"
"glee glute"	--	false	44	--	"You pat yourself on the back for eating so much fruit to keep your stomach in shape.[fruit-clue]"
"he/hee hoot"	--	false	44	--	"You make a small show of being grateful for the prospect of free fruit. But you [if sco-whee-woot is false]may need to be more demonstrative[else]already did enough[end if].[fruit-clue]"
"key coot"	--	false	44	--	"No animal appears to unlock the free fruit.[fruit-clue]"
"me moot"	--	false	44	--	"Do not dismiss your importance.[fruit-clue]"
"pee poot"	--	false	44	--	"A good guess, technically, I suppose.[fruit-clue]"
"re root" or "reroot/reroute"	--	false	44	--	"The free fruit dispenser is not broken. No need to start it up again.[fruit-clue]"
"see soot/suit"	--	false	44	--	"The free fruit dispenses fruit, not clothes or coal.[fruit-clue]"
"she/shee chute/shoot"	--	false	44	--	"No gun or passage down appears.[fruit-clue]"
"ski scoot"	--	false	44	--	"You can just walk to get around.[fruit-clue]"
"tea toot/tout"	--	false	44	--	"Perhaps the tea would be fruit-flavored and refreshing, but it wouldn't be useful.[fruit-clue]"

to say fruit-clue:
	if sco-whee-woot is true:
		if guessed-pear-peach is true:
			say "[run paragraph on] In fact, it looks like you already guessed what the hybrid free fruit is elsewhere. Perhaps a look around would help you recall what you guessed.[no line break]";
		else:
			say "[run paragraph on] You probably want to figure what free fruit there is now. Perhaps traveling [if rare reach is visited]around again[else]some more[end if] will suggest something.[no line break]"

table of light lute guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"bite boot"	--	false	111	--	"That would be no fun."
"flight flute"	--	false	111	--	"No, you can't run from your problems."
"fright fruit"	--	false	111	--	"You already made some fruit for good. You don't need that."
"height hoot"	--	false	111	--	"Not useful, not even in the High Hub."
"mite/might moot"	--	false	111	--	"You aren't powerful enough to cut anything that far down to size."
"polite pollute"	--	false	111	--	"Polite polluters are the worst kind, because they're harder to point out."
"plight plute"	--	false	111	--	"No, we don't need a potential nuclear disaster on our hands."
"shite shoot/chute"	--	false	111	--	"Creative, but not terribly helpful."
"sight/cite/site suit"	--	false	111	--	"The light lute is too artsy to beget a business suit or a lawsuit."
"tight toot"	--	false	111	--	"You fail to drag that sort of noise from the lute."
"white woot"	--	false	111	--	"While it's okay to be white, it's not okay to be all IT'S OKAY TO BE WHITE."

table of locking lift guesses [ leet-rule is always true, since MOCKING MIFFED sends you to the final area ]
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"balking biffed"	--	false	103	--	"You don't want to go somewhere you might get punched with no response."
"clocking clift/cliffed"	--	false	103	--	"You're already way above ground, clocking mad rhymes."
"knocking niffed"	--	false	103	--	"Smells and knocking aren't the way to go here."
"socking sift"	--	false	103	--	"Sifting through punches thrown at you would be a bit too violent, here."
"spocking spiffed"	--	false	103	--	"Alas, not even one famous fictitious spaceman takes you to adventurous parts unknown."
"whocking whiffed"	--	false	103	--	"You wouldn't want to attack someone and miss."

table of mad monk guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"brad brunk"	--	false	34	--	"[monk-name]."
"chad chunk"	--	false	34	--	"You find no ballot or part thereof."
"clad clunk"	--	false	34	--	"You disparage the mad monk's outfit. They roll their eyes. Something more spiritual is the way to go, here."
"dad dunk"	--	false	34	--	"Alas, no middle-aged man soars into the air, basketball in hand, to posterize the mad monk."
"fad funk"	--	false	34	--	"Falling prey to fashion is not one of the mad monk's vices. They're more about violence and intimidation."
"grad grunk"	--	false	34	--	"The mad monk fails to look for a lost pig or learn anything."
"had hunk"	--	false	34	--	"You try to claim the mad monk has lost muscle, but the insult doesn't really land, because they have more wisdom than ever, and stuff."
"lad lunk"	--	false	34	--	"Both insults are a bit too trivial to land."
"pad punk"	--	false	34	--	"No mercenary hoodlum walks by, which might actually be a good thing for the hoodlum."
"plaid plunk"	--	false	34	--	"The mad monk's fashion choice will not change."
"scad skunk"	--	false	34	--	"Alas, a bunch of skunks fail to assault the mad monk."
"thad thunk"	--	false	34	--	"[monk-name]."

to say monk-name: say "The mad monk needs no name, proper or familiar"

table of market marquee guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"met me"	--	false	112	--	"You will be met[act-att]."
"threat three"	--	false	112	--	"Threat three will appear[act-att]."

to say act-att: say ", but you need the right actions and attitude"

table of miss more diss door guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"chiz chore"	--	false	44	--	"You briefly get your Nigel Molesworth on."
"his/hiss whore"	--	false	44	--	"No, nothing tasteless."
"is or"	--	false	44	--	"Too simple."
"kiss cor/core"	--	false	44	--	"Potentially scandalous, but there's 'better.'"
"sis soar/sore"	--	false	44	--	"No, family praise or squabbles aren't it."
"this thor"	--	false	44	--	"Thor is more about actions than words."
"tis tore"	--	false	44	--	"The [diss door] remains intact."
"wiz war"	--	false	44	--	"No lightning bolt spell blasts the door."

guess-table of red rose is the table of red rose guesses.

table of red rose guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"bed bows"	--	false	110	--	"You need no fancy place to sleep."
"bed beaus"	--	false	110	--	"Yeah, roses are romantic and all, but by now, you may guess this game's shtick is corny jokes."
"bled blows"	--	false	110	--	"You do not need to incite violence."
"cred crows"	--	false	110	--	"You don't need to brag about street cred, real or imagined."
"dead does/dohs/doze"	--	false	110	--	"You aren't here to kill helpless animals or utter a Simpsonesque epithet. Or sleep on the job."
"fled flows"	--	false	110	--	"Nobody and nothing flees at your proclamation."
"fred froze"	--	false	110	--	"[sad-tale]."
"ed ohs/os"	--	false	110	--	"No larger-than-life football coach with a thick Cajun accent appears. He is probably out driving that Hummer he bought in that one commercial."
"head hos/hoes/hose"	--	false	110	--	"You have no need to disguise your face with hose."
"jed joes"	--	false	110	--	"No 'charmingly-named' rustic diner appears."
"led/lead lows"	--	false	110	--	"You have no need to go low or be laid low."
"ned knows"	--	false	110	--	"There is nobody named Ned around."
"shed shows"	--	false	110	--	"There are no sheds that need showing."
"sled slows"	--	false	110	--	"There are no sleds that need slowing."
"ted tows/toes"	--	false	110	--	"You recall an ad for a towing service."
"thread throws"	--	false	110	--	"The rose would not make enough thread to tie up any antagonists."
"wed woes"	--	false	110	--	"[sad-tale]."

to say sad-tale: say "A sad, succinct tale, indeed"

table of sus sack guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"pus/puss pack"	--	false	46	--	"You don't need a cat, or a mound of pus. Think more positive!"
"wuss wack/whack"	--	false	46	--	"No, something more positive and flattering is inside."

table of sturdy stalk guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"birdy balk"	--	false	54	need-wordy-walk rule	"No bird makes loud noises."
"curdy caulk/calk"	--	false	54	need-wordy-walk rule	"You don't need to do any construction."
"dirty doc"	--	false	54	need-wordy-walk rule	"Whether it's a dirty document or people, no."
"herdy hawk"	--	false	54	need-wordy-walk rule	"You wouldn't want a bunch of hawks to swarm."
"nerdy knock"	--	false	54	need-wordy-walk rule	"A nerdy knock, whatever it is, wouldn't get a favorable response."
"purdy pock"	--	false	54	need-wordy-walk rule	"No, pock marks wouldn't make the stalk look better."

this is the need-wordy-walk rule:
	if sco-wordy-walk is false, the rule succeeds;
	the rule fails;

book miscellaneous guesses

[this is for cases that may conflict with actual puzzles. Homonyms may apply as well.]

table of first check rhymes
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
a topic	a rule	a truth state	a number	a rule	text

Low Key Learny Jokey Journey Mistakes ends here.

---- DOCUMENTATION ----
