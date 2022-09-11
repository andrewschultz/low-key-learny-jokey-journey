Version 1/220706 of Low Key Learny Jokey Journey Mistakes by Andrew Schultz begins here.

"Mistakes, or what qualifies as them--good guesses and their homonyms for Low-Key Learny Jokey Journey."

volume all kinds of guesses

table of general good guesses
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"okie ernie/earnie/earny"	--	false	--	"No stereotypical rural fellow pops up with down-home advice."
"tokey tourney"	--	false	--	"That could potentially be very relaxed and low-key, indeed. I guess."
"coppin cart"	--	false	--	"No policemen drive by. They might be corrupt, anyway."
"choppin chart"	--	false	--	"There are only three regions, and the name isn't really important."
"mopping mart"	--	false	--	"Surely this is more exciting than a trip for cleaning supplies."

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
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"cane key"	--	false	--	"You don't need any key to unlock the tree."
"feign fee"	--	false	--	"You whine about how [this-game] costs money on top of being a waste of time. Nobody listens."
"main me"	--	false	--	"You are the main character in this adventure, but don't let it go to your head."
"pain p/pee"	--	false	--	"[this-game] is nonviolent and hopefully devoid of bathroom humor."
"sprain spree"	--	false	--	"While this is technically correct, you don't want to injure yourself or others."
"vain v"	--	false	--	"You come to grips with how you are not as humble as you should be."

table of bum bout rum route guesses
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"crumb kraut"	--	false	no-umm-out rule	"You don't need a plate of food. You need spiritual nourishment."
"drum drought"	--	false	no-umm-out rule	"Thankfully, there's no percussion in the background."
"gum gout"	--	false	no-umm-out rule	"But gout is in the toes, not the mouth."
"numb nowt"	no-umm-out rule	false	--	"Once you're more confident, you won't want to feel numb any more, and it'll just happen."
"pum pout" or "pump out"	--	false	no-umm-out rule	"Clever sleight-of-mouth, but I can't quite allow it."
"scum scout"	--	false	--	"You don't want to call up an antagonist face-to-face."

this is the no-umm-out rule:
	if sco-umm-out is false, the rule succeeds;
	the rule fails;

table of bum bout rum route guesses (continued)
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"bum boot"	--	false	no-umm-out rule	"[route-not-root]What would you do with only one boot?"
"chum chute"	--	false	no-umm-out rule	"[route-not-root]Misery loves company, but company doesn't love misery."
"come coot"	--	false	no-umm-out rule	"[route-not-root][no-anim]."
"from fruit"	--	false	no-umm-out rule	"[route-not-root]We already did stuff with fruit."
"hum hoot"	--	false	no-umm-out rule	"[route-not-root]You try to scrounge up a tune. It's very bluesy!"
"mum moot"	--	false	no-umm-out rule	"[route-not-root]No matter how quiet things are, that won't stop negative voices in one's head."
"numb newt"	--	false	no-umm-out rule	"[route-not-root][no-anim]."
"scum scoot"	--	false	no-umm-out rule	"[route-not-root]There are no scum here, just thoughts that make you feel negative."
"some suit"	--	false	no-umm-out rule	"[route-not-root]A better wardrobe would only help things look better, not be better."

to say route-not-root: say "While [']Bout should indicate Route is pronounced with a long o, I'll let you have fun guessing.[paragraph break]"

to say no-anim: say "This isn't the place to summon animals"

table of drain drat vain vat guesses
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"attain a tat"	--	false	splat-splained rule	"Oh, your parents warned you that text adventures and D&D would lead to darker desires, but did you listen? Oh, no, you did not."
"brain brat"	--	false	splat-splained rule	"You don't want to fight annoying people with violence. Inanimate obstacles, yes. People, no."
"cane cat"	--	false	splat-splained rule	"Cats don't deserve to be caned. Dogs don't, either."
"chain chat"	--	false	splat-splained rule	"More forceful talking [is-was of sco-splain-splat] necessary here."
"feign fat"	--	false	splat-splained rule	"You don't need to cry about being a few pounds overweight."
"gain gat"	--	false	splat-splained rule	"A gun would be too much here."
"main mat"	in-vat rule	false	splat-splained rule	"Perhaps that will be laid out once you have figured how to get out of the vat."
"pain pat"	--	false	splat-splained rule	"Not being Patrick Swayze's character in [i]Road House[r], you admit the truism that pain, indeed, does hurt. And you grab where it hurts, briefly."
"plain plat"	--	false	splat-splained rule	"The terrain is already pretty flat."
"rain rat"	--	false	splat-splained rule	"But you'd have no way to make it rain cats and dogs to catch the rat(s) after."
"rain/reign rat"	--	false	splat-splained rule	"You don't need an animal overlord."
"sane sat"	--	false	splat-splained rule	"You convince yourself the vain vat [is-was of sco-flain-flat] a great place to sort out your emotions."
"slain slat"	--	false	splat-splained rule	"There is no slat to slay, alas."
"spain spat"	--	false	splat-splained rule	"You make up reasons to complain about Spain, for whatever good that does."
"sprain sprat"	--	false	splat-splained rule	"You find no fish to torment."
"stain stat"	--	false	splat-splained rule	"Alas, you have nothing to vandalize the premises with."
"strain strat"	--	false	splat-splained rule	"You contemplate a way to put your ultimate enemy under pressure."

this is the splat-splained rule:
	if sco-splain-splat is true, the rule succeeds;
	the rule fails;

this is the in-vat rule:
	if sco-flain-flat is false, the rule succeeds;
	the rule fails;

table of freak framing seek sameing guesses
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"eek aiming"	no-eek-aim rule	false	--	"Yes, you do need to aim barbs at people."
"geek gaming"	--	false	--	"Geek gaming, I suppose, has its own brand of conformism and conventions, so you can't quite use it as a shelter."
"leek laming"	--	false	--	"Mangling plants is sort of nonconformist in its own way, I guess."
"meek maiming/mameing/maming"	--	false	--	"Sure, go ahead, sneak a few of your favorite arcade games in on MAME. I'll wait."
"teak/tique taming"	--	false	--	"You need neither wood nor a boutique nor a critique."

this is the no-eek-aim rule:
	if sco-chic-shaming is false, the rule succeeds;
	the rule fails;

table of high hub guesses
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"cly club"	--	false	bye-bub-yet rule	"You try to go old-school finding an so-old-school-schools-didn't-exist weapon, but alas, it doesn't work."
"die/dye dub"	--	false	bye-bub-yet rule	"Whether you want to die or dye for a win or just for a double something, you consider the possibilities. Hey, you may need all the clue points you can get, here."
"dry drub"	--	false	bye-bub-yet rule	"You mentally make fun of someone you disliked, using phrases like 'I won't even raise my voice' or 'I'm sure you're nice and all.'"
"fly flub"	--	false	bye-bub-yet rule	"You consider making a mistake to impress someone. After all, being too perfect makes you dislikable. Then you realize there is nobody to impress."
"nigh nub"	--	false	bye-bub-yet rule	"You suspect some small stuff or other is around."
"pie pub"	--	false	bye-bub-yet rule	"Alas, the high hub is not expansive enough to fit such an establishment."
"rye/wry rub"	--	false	bye-bub-yet rule	"You aren't sure whether you mean a rub of alcohol or bread. You're not sure what it will do. But you consider the possibility."
"scry scrub"	--	false	bye-bub-yet rule	"As good-looking as ever."
"sigh sub"	--	false	bye-bub-yet rule	"You sigh at what you did down below, wondering if you [if sco-bye-bub is true]should[else]can[end if] go back."
"sly slub"	--	false	bye-bub-yet rule	"You have no need to spin yarn out or be sneaky doing so."
"sty stub"	--	false	bye-bub-yet rule	"You search for a ticket that would admit you to a barn. There is none."
"tie tub"	--	false	bye-bub-yet rule	"Alas, there is no tub to tie."
"try trub"	--	false	bye-bub-yet rule	"You'll have to look harder than that to find trouble. But it is close."
"why wub"	--	false	bye-bub-yet rule	"You think back to a Philip K. Dick short story."

this is the bye-bub-yet rule:
	if sco-bye-bub is true, the rule fails;
	the rule succeeds;

table of hun harm fun farm guesses
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"one worm/warm"	--	false	need-unarm rule	"That doesn't quite work. Maybe the farm needs worms or warm weather, but its survival isn't as important to you as passage north."

this is the need-unarm rule:
	if sco-un-arm is false, the rule succeeds;
	the rule fails;

table of jotty jail guesses
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"botty/bawdy bail/bale"	--	false	--	"You don't need a dirty story, and money won't get you out of here."
"dotty/doughty dale"	--	false	--	"Perhaps there is a dale beyond, but going dotty or staying doughty isn't the way to go find it."
"foughty fail"	--	false	--	"Don't give up! I believe in you!"
"hottie/hotty hail/hale"	--	false	--	"Such useless thoughts at a time like this! Less escapism, more escape!"
"scotty scale"	--	false	--	"No spaceship engineer comes to rescue you."
"soddy sail"	--	false	--	"Having a sail of any material wouldn't help. You're landlocked."
"stottie stale"	--	false	--	"Stale bread won't help you here."
"swotty swale"	--	false	--	"You focus on what sort of land is outside, ignoring how you might actually get out."
"trotty trail"	--	false	--	"No trail opens up, but even if it did, the snotty snail would push you back from it."

table of mad most cad coast guesses
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"gad ghost"	--	false	no-roast-yet rule	"You fail to scare anyone with this[if sco-rad-roast is true], not that you need to, any more[end if]."
"grad grossed"	--	false	no-roast-yet rule	"You think of the most sophisticated disgusting joke you've ever heard."
"had host"	no-roast-yet rule	false	no-roast-yet rule	"Once the insults are gone, this will be true."
"pad post"	no-roast-yet rule	false	no-roast-yet rule	"A post would offer scant protection against insults."
"tad toast"	--	false	no-roast-yet rule	"There's no such thing as toasting someone with an insult halfway."

this is the no-roast-yet rule:
	if sco-rad-roast is false, the rule succeeds;
	the rule fails;

table of nay nope slay slope guesses
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"day dope"	--	false	--	"Reaffirming every day is dope is pretty positive and all, but you [if sco-k-cope is true]did[else]can do[end if] better."
"gray grope"	--	false	--	"[no-mope-grope]."
"lay lope"	--	false	--	"You make rudimentary plans to ambush something, even though there's nothing to ambush."
"may mope"	--	false	--	"[no-mope-grope]."
"pay pope"	--	false	--	"Oh dear no. The proper way to surrender to religious corruption these days is to chuck money at televangelists. Get with the times!"
"ray rope"	--	false	--	"The right sort of ray? Yes. Rope to pull you back? No."
"say soap"	--	false	--	"I suppose I should put in a cliche about cleansing one's soul here."
"stay stope"	--	false	--	"Building a long-lasting mine here would not make or keep things happier."
"tray/tres trope"	--	false	--	"You recognize a trope or twelve at play during your journeys."

to say no-mope-grope: say "The object is not to be consumed by depression but to reduce its influence"

table of no new show shoe guesses [ you can't go back to the show shoe after you THROW THROUGH, so there is no leet-rule ]
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"blow blew/blue"	--	false	--	"You blow off steam that you haven't quite revitalized the [show shoe] yet."
"cocu"	--	false	--	"Your knowledge of former footballers is impressive. (So is mine, since I caught this, eh?)"
"doh do/due/dew"	--	false	--	"No need for regrets."
"dough do/due/dew"	--	false	--	"Bread isn't quite the right food for a concert."
"doe do/due/dew"	--	false	--	"This isn't a nature park. Other places need animals, though."
"fo/foe foo/phoo"	--	false	--	"You don't need to be expressing contempt here."
"grow grue"	--	false	--	"You want entertainers who crave the spotlight, not avoid it. Also, you'd prefer them less predatory."
"lo/low loo"	--	false	--	"The [shoe] is already equipped with those, out of sight."
"lo/low lew/lou"	--	false	--	"You don't need to call out anyone by name."
"mo moo"	--	false	--	"Cows would not make very exciting performers, [if sco-crow-crew is false]but another animal, or people named after them, might[else]unlike the Crow Crew[end if]."
"no/know knew/new"	--	false	--	"The last thing people want to be thinking about is knowledge, or how cliched a show might be if you think about it too much."
"oh oo/ooh"	--	false	--	"[generic-sounds]."
"po poo/pooh"	--	false	--	"There is underpromising and overdelivering, but that's a bit too much. Way too much."
"po pew"	--	false	--	"The show ahead is not particularly religious."
"row rue"	--	false	--	"No, we want a positive environment, here."
"slow slue/slew"	--	false	--	"But we want to make this place less of a backwater. Gotta speed things up so the performance starts!"
"so sue"	--	false	--	"You don't want to either take or face legal action, which is a lot less exciting than how it's presented in most TV dramas."
"toe two/too"	--	false	--	"Counting your digits would be exciting for nobody."
"woe/whoah/whoa woo"	--	false	--	"[generic-sounds]."

to say generic-sounds: say "That's a bit too generic a sound to make, [if sco-yo-you is false]but it gives you ideas[else]and you've already made the right ones, anyway[end if]"

table of nonoon guesses
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"blow balloon"	--	false	need-crow-croon rule	"This ... this is worth a nudge-point, if not strictly a rhyming pair. But the whole procedure [is-was of sco-crow-croon] a bit more mystical."
"beau/bow boon"	--	false	need-crow-croon rule	"You require no ranged weapon or physical attractiveness."
"doe/doh/dough dune"	--	false	need-crow-croon rule	"The [if sco-bare-beach is false]prospective [end if]dune is elsewhere in this game."
"ho hewn"	need-crow-croon rule	false	need-crow-croon rule	"This is what to intone once things are all right. They are not, yet."
"jo/joe june"	--	false	need-crow-croon rule	"You call for old or new friends, who do not appear."
"lo/low loon"	--	false	need-crow-croon rule	"That is the wrong sort of bird."
"po poon"	--	false	need-crow-croon rule	"The only thing po['] is your dirty mind. This is a family game!"
"pro prune"	--	false	need-crow-croon rule	"You come out mentally in favor of a high-fiber diet."
"row/rho ruin/rune"	--	false	need-crow-croon rule	"[if player has rho rune]But you already have the rune[else]You are on the right track for what you need[end if]."
"toe/tow tune/toon"	--	false	need-crow-croon rule	"Nothing toe-tapping starts playing, nor are any cartoon characters dragged across the landscape."

this is the need-crow-croon rule:
	if sco-crow-croon is false, the rule succeeds;
	the rule fails;

table of no nudge slow sludge guesses
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"fo/foe fudge"	--	false	--	"This isn't Willy Wonka's Chocolate Factory. Err, Charlie's."
"joe judge"	--	false	--	"No former New York Giants head football coach appears."
"po/poe pudge"	--	false	--	"Weight gain won't help here."
"trow trudge"	--	false	--	"No need for Middle English here."
"stow studge"	--	false	--	"No ghost of Saki arrives to tell you to eat your Filboid Studge and don't let it sit."

table of old end guesses
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"fold fend"	--	false	untrolled-yet rule	"Folding and fending are contradictory. Or at least they are here."
"polled penned"	--	false	untrolled-yet rule	"Someone rushes by and ropes you into a corner you didn't know existed. They hand you a pen and a push-poll about how much you're enjoying [this-game]. Super-Great, Extra-Great, and ten other options. You feel compelled to check them all! Then you try to keep the pen they loaned you, but they remind you that if you're having so much fun, it'd just be wack to steal a pen in the process."
"rolled rend"	--	false	untrolled-yet rule	"But if you got rolled, you wouldn't be able to rend."
"sold send"	--	false	untrolled-yet rule	"Not quite. Commerce isn't at the end of all this."
"told tend"	--	false	untrolled-yet rule	"Not quite. You weren't given instructions how to take care of things, and you probably can't pass them on."

this is the untrolled-yet rule:
	if sco-trolled-trend is false, the rule succeeds;
	the rule fails;

table of one warm stun storm guesses
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"none/nun norm"	--	false	no-fun-form rule	"You wouldn't want to instill strict morals on this place. Or deny Mr. Peterson an extension of his bar tab."

this is the no-fun-form rule:
	if sco-fun-form is false, the rule succeeds;
	the rule fails;

table of rare reach guesses
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"air/ere/err each"	--	false	need-bare-beach rule	"There aren't enough things to be each-worthy here."
"blair/blare bleach"	--	false	need-bare-beach rule	"But this area is sparse enough already."
"chair/cher cheech"	--	false	need-bare-beach rule	"Celebrities from the [']80s can't help you here, even though they're more worth celebrity than celebrities these days, when text adventures aren't properly respected."
"lair leech/leach"	--	false	need-bare-beach rule	"You don't need to summon enemies or drain anything here."
"pear peach"	need-pear-peach rule	false	--	"Very interesting! If you are ever in a position to ask for fruit, that might be helpful indeed."
"prayer preach"	--	false	need-bare-beach rule	"The goal of [this-game] is not to become some televangelist."
"snare sneech/sneetch"	--	false	need-bare-beach rule	"You consider the possibility, but then you're not sure whether you want to snare a star-bellied one. So much for that."
"spare speech"	--	false	need-bare-beach rule	"[if sco-pear-peach is false]You know, something even more spare than that might work, in the right place[else]But that is less spare than a pear peach[end if]."
"tear/tare teach"	--	false	need-bare-beach rule	"There is nobody to teach, much less verbally tear while you do so."

guessed-pear-peach is a truth state that varies.

this is the need-pear-peach rule:
	now guessed-pear-peach is true;
	if sco-pear-peach is false, the rule succeeds;
	the rule fails;

this is the need-bare-beach rule:
	if sco-bare-beach is false, the rule succeeds;
	the rule fails;

table of roaring rocks guesses [note: MAGICNUM doesn't really apply here since you get the leet learner after]
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"flooring flocks"	--	false	--	"You don't need to be dive-bombed by aerial predators. And I don't have the artistic ability to show you majestic birds, either. Sorry."
"poring/pouring pox"	--	false	--	"You don't need to catch anything, and denting the rocks would not reveal anything[furthers of sco-boring-box]."
"storing stocks"	box-hidden rule	false	--	"That's what the rocks will become, but you want something simpler and smaller and shorter."

this is the box-hidden rule:
	if boring box is off-stage, the rule succeeds;
	the rule fails;

table of slight sleaze guesses
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"bite bees"	--	false	sleaze-undone rule	"Those wouldn't taste very good."
"fight fees"	--	false	sleaze-undone rule	"Yes, it's important to fight unfairly sleazy fees, but not here and now."
"flight flees/fleas"	--	false	sleaze-undone rule	"You need to feel less scared, not more."
"fright frees/freeze"	--	false	sleaze-undone rule	"You need to feel more active, not less."
"kite keys"	--	false	sleaze-undone rule	"That would be electrifying if it were possible."
"knight/night knees/nis"	--	false	sleaze-undone rule	"This rhyme was accidental, but since you found it, I'll say [i]Life of Brian[r] was a better movie. And I'll die on that hill."
"light lease/lees"	--	false	sleaze-undone rule	"Lees may be sleazy in their own way."
"might mes"	--	false	sleaze-undone rule	"Bad grammar is pretty neutral on the sleaze scale."
"sight sees/seize"	--	false	sleaze-undone rule	"There is enough to see, and seizing anything would be, uh, sleazy."
"smite smees"	--	false	sleaze-undone rule	"I'm afraid Never-Never Land is a few universes over."
"sprite sprees"	--	false	sleaze-undone rule	"Well, guzzling a two-liter pop bottle is less sleazy than doing the same with alcohol."
"trite trees"	sleaze-undone rule	false	--	"They will pop up once you've removed the sleaze."
"white whees/wheeze"	--	false	sleaze-undone rule	"You imagine yourself reciting Philip Larkin's fine poem [i]Sympathy in White Major[r] to great applause. Unfortunately, the speaker in the poem being sleazy doesn't help your cause, here."

this is the sleaze-undone rule:
	if sco-plight-please is false, the rule succeeds;
	the rule fails;

table of sore souls gore goals guesses
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"boar bowls"	--	false	--	"Boars would be too rowdy for here."
"bore bowls"	--	false	--	"You're trying to bring life here, not drain it."
"cor/core coals"	--	false	--	"Coal would not enliven such a place[if sco-shore-shoals is true] further[end if]."
"door doles"	--	false	--	"No, this place doesn't need more doors."
"nor knolls"	--	false	--	"You don't need to deprive this place of landscape."
"poor/pour/pore poles"	--	false	--	"Lifeless poles would not make this area cheerier."
"roar rolls/roles"	--	false	--	"Perhaps the roaring would be lively. Perhaps it wouldn't. But it might not add anything."
"score skols"	--	false	--	"Perhaps Vikings will discover this land and conquer it some day. But why speed things up?"
"store stoles"	--	false	--	"[if shoal-core-score < 0]Before you have animal pelts, you'll need animals living in peace, and then you'd hate to hurt them[else]Bringing animal pelts into a place coming to life doesn't quite work[end if]."
"whore holes"	--	false	--	"Now, now, this isn't that sort of game."

table of threat three met me guesses
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"bet be/bee"	--	false	--	"You don't need to gamble or bluff right now."
"het he/hee"	--	false	--	"Discussions of sexual orientation won't go over well."
"jet gee"	--	false	--	"You let wack punks and suckers know they'd best get to stepping, which is slightly cathartic."
"let lee"	--	false	--	"Whoever Lee is, they're not better-equipped to deal, here."
"net knee/ni"	--	false	--	"No knights appear to say a paralyzing two-letter word."
"pet pee"	--	false	--	"No, you don't need to mess things up that way, here."
"wet wee/whee"	--	false	--	"No cool waterslide or pool appears. You still have business!"

table of Thunk Tree Trunk guesses
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"be bunk"	--	false	free-fruit-offstage rule	"You crave neither a tall bed nor outright lies."
"de dunk"	--	false	free-fruit-offstage rule	"Your mind flashes back to an 80s-era DePaul basketball commercial. Okay, maybe it doesn't, but mine did when I thought of this."
"fee/phi funk"	--	false	free-fruit-offstage rule	"You try to monetize or formulate olfactory and/or musical funkiness but fail."
"flee flunk"	--	false	free-fruit-offstage rule	"Aw, c'mon, you've gotten pretty far. You shouldn't need to run in shame."
"klee clunk/klunk"	--	false	free-fruit-offstage rule	"The landscape stays its own form of surreal."
"me monk"	--	false	free-fruit-offstage rule	"Alas, there is no monastery nearby to retreat to."
"pee punk"	--	false	free-fruit-offstage rule	"Micturation is unnecessary to complete [this-game]."
"plea plunk"	--	false	free-fruit-offstage rule	"The time for a plea that landed for a bonus point is passed, and you [if sco-plain-plea is true]took[else]missed[end if] it."
"ski skunk"	--	false	free-fruit-offstage rule	"The weather is not cold enough, and there's no snow."
"whee whunk"	--	false	free-fruit-offstage rule	"You shouldn't be thrilled to go around socking stuff."

this is the free-fruit-offstage rule:
	if sco-gee-junk is false, the rule succeeds;
	the rule fails;

table of trite trail guesses
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"aight ail"	--	false	no-excite-exhale-rule rule	"You resort to the vernacular to express your displeasure with enemies, real or imagined."
"bite bail/bale"	--	false	no-excite-exhale-rule rule	"There is no bale to bite, and if you want to bail, you can just go back east."
"bright braille"	--	false	no-excite-exhale-rule rule	"There is no braille here."
"fight fail"	--	false	no-excite-exhale-rule rule	"[desp-gloat]!"
"fright frail"	--	false	no-excite-exhale-rule rule	"[desp-gloat]!"
"height hail/hale"	--	false	no-excite-exhale-rule rule	"Alas, no airplane appears to destroy [the whale]."
"kite kale"	--	false	no-excite-exhale-rule rule	"No nutririous green kite appears."
"quite quail"	--	false	no-excite-exhale-rule rule	"A quail would not [if sco-excite-exhale is true]have helped[else]help[end if] much against [the whale]."
"shite shale"	--	false	no-excite-exhale-rule rule	"Well, that would certainly make the trite trail less trite, in its own way."

to say desp-gloat: say "Don't [if sco-excite-exhale is false]despair[else]gloat[end if]"

this is the no-excite-exhale-rule rule:
	if sco-excite-exhale is false, the rule succeeds;
	the rule fails;

table of trust track guesses
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"cussed cack"	--	false	--	"[if player has sus sack]No, the sack will be worthwhile.[else]There's a useful item to discover here. More useful than such words![end if]"
"gust gack"	--	false	--	"No stinky cloud rumbles in[if sco-bussed-back is false] to push Jack away[end if]."
"lust lack"	--	false	--	"You make sure put impure thoughts aside so you're really focused on a totally cool text adventure. Yay, you!"
"must mack"	--	false	--	"[if just jack is in trust track]Jack raises his eyebrows, but sadly, he seems more concerned with blocking you[else]This is a comedy puzzle game, not a romance game[end if]."
"rust rack"	--	false	--	"That would be a useless item."

this is the in-trust-track rule:
	if player is in Trust Track, the rule succeeds;
	the rule fails;

book guesses by item, alphabetical

to say furthers of (ts - a truth state): if ts is true, say " further"

table of deep dune guesses
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"beep boon"	--	false	rune-unreaped rule	"No, you don't need a Geiger counter to search[furthers of sco-reap-rune] through the dune."
"creep croon"	--	false	rune-unreaped rule	"I couldn't get R. Kelly or Robin Thicke to appear here. Sorry!"
"keep coon"	--	false	rune-unreaped rule	"The dune would not be stable enough for wild animals like that to make a home."
"leap loon"	--	false	rune-unreaped rule	"Alas, nobody odd comes by and dives into the deep dune [if sco-reap-rune is false]to help you find what's there[else]for your entertainment[end if]. Nobody at all."
"peep poon"	--	false	rune-unreaped rule	"[this-game] is the wrong environment for that, and not just because it's text-based."
"streep strewn"	--	false	rune-unreaped rule	"Honestly! Her acting style goes well beyond just lazing about."
"sweep swoon"	--	false	rune-unreaped rule	"You have neither a broom nor a favorite team who overpowers all playoff foes."

this is the rune-unreaped rule:
	if sco-reap-rune is false, the rule succeeds;
	the rule fails;

table of free fruit guesses
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"be/bee boot"	--	false	--	"The free fruit does not change into footwear.[fruit-clue]"
"flee/flea flute"	--	false	--	"There is no need to chase animals away with music.[fruit-clue]"
"gee jute"	--	false	--	"No, there's actual fruit inside.[fruit-clue]"
"glee glute"	--	false	--	"You pat yourself on the back for eating so much fruit to keep your stomach in shape.[fruit-clue]"
"he/hee hoot"	--	false	--	"You make a small show of being grateful for the prospect of free fruit. But you [if sco-whee-woot is false]may need to be more demonstrative[else]already did enough[end if].[fruit-clue]"
"key coot"	--	false	--	"No animal appears to unlock the free fruit.[fruit-clue]"
"me moot"	--	false	--	"Do not dismiss your importance.[fruit-clue]"
"pee poot"	--	false	--	"A good guess, technically, I suppose.[fruit-clue]"
"re root" or "reroot/reroute"	--	false	--	"The free fruit dispenser is not broken. No need to start it up again.[fruit-clue]"
"see soot/suit"	--	false	--	"The free fruit dispenses fruit, not clothes or coal.[fruit-clue]"
"she/shee chute/shoot"	--	false	--	"No gun or passage down appears.[fruit-clue]"
"ski scoot"	--	false	--	"You can just walk to get around.[fruit-clue]"
"tea toot/tout"	--	false	--	"Perhaps the tea would be fruit-flavored and refreshing, but it wouldn't be useful.[fruit-clue]"

to say fruit-clue:
	if sco-whee-woot is true:
		if guessed-pear-peach is true:
			say "[run paragraph on] In fact, it looks like you already guessed what the hybrid free fruit is elsewhere. Perhaps a look around would help you recall what you guessed.[no line break]";
		else:
			say "[run paragraph on] You probably want to figure what free fruit there is now. Perhaps traveling [if rare reach is visited]around again[else]some more[end if] will suggest something.[no line break]"

table of light lute guesses
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"bite boot"	--	false	--	"That would be no fun."
"flight flute"	--	false	--	"No, you can't run from your problems."
"fright fruit"	--	false	--	"You already made some fruit for good. You don't need that."
"height hoot"	--	false	--	"Not useful, not even in the High Hub."
"mite/might moot"	--	false	--	"You aren't powerful enough to cut anything that far down to size."
"polite pollute"	--	false	--	"Polite polluters are the worst kind, because they're harder to point out."
"plight plute"	--	false	--	"No, we don't need a potential nuclear disaster on our hands."
"shite shoot/chute"	--	false	--	"Creative, but not terribly helpful."
"sight/cite/site suit"	--	false	--	"The light lute is too artsy to beget a business suit or a lawsuit."
"tight toot"	--	false	--	"You fail to drag that sort of noise from the lute."
"white woot"	--	false	--	"While it's okay to be white, it's not okay to be all IT'S OKAY TO BE WHITE."

table of locking lift guesses [ leet-rule is always true, since MOCKING MIFFED sends you to the final area ]
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"balking biffed"	--	false	--	"You don't want to go somewhere you might get punched with no response."
"clocking clift/cliffed"	--	false	--	"You're already way above ground, clocking mad rhymes."
"knocking niffed"	--	false	--	"Smells and knocking aren't the way to go here."
"socking sift"	--	false	--	"Sifting through punches thrown at you would be a bit too violent, here."
"spocking spiffed"	--	false	--	"Alas, not even one famous fictitious spaceman takes you to adventurous parts unknown."
"whocking whiffed"	--	false	--	"You wouldn't want to attack someone and miss."

table of mad monk guesses
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"brad brunk"	--	false	--	"[monk-name]."
"chad chunk"	--	false	--	"You find no ballot or part thereof."
"clad clunk"	--	false	--	"You disparage the mad monk's outfit. They roll their eyes. Something more spiritual is the way to go, here."
"dad dunk"	--	false	--	"Alas, no middle-aged man soars into the air, basketball in hand, to posterize the mad monk."
"fad funk"	--	false	--	"Falling prey to fashion is not one of the mad monk's vices. They're more about violence and intimidation."
"grad grunk"	--	false	--	"The mad monk fails to look for a lost pig or learn anything."
"had hunk"	--	false	--	"You try to claim the mad monk has lost muscle, but the insult doesn't really land, because they have more wisdom than ever, and stuff."
"lad lunk"	--	false	--	"Both insults are a bit too trivial to land."
"pad punk"	--	false	--	"No mercenary hoodlum walks by, which might actually be a good thing for the hoodlum."
"plaid plunk"	--	false	--	"The mad monk's fashion choice will not change."
"scad skunk"	--	false	--	"Alas, a bunch of skunks fail to assault the mad monk."
"thad thunk"	--	false	--	"[monk-name]."

to say monk-name: say "The mad monk needs no name, proper or familiar"

table of market marquee guesses
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"met me"	--	false	--	"You will be met[act-att]."
"threat three"	--	false	--	"Threat three will appear[act-att]."

to say act-att: say ", but you need the right actions and attitude"

table of miss more diss door guesses
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"chiz chore"	--	false	--	"You briefly get your Nigel Molesworth on."
"his/hiss whore"	--	false	--	"No, nothing tasteless."
"is or"	--	false	--	"Too simple."
"kiss cor/core"	--	false	--	"Potentially scandalous, but there's 'better.'"
"sis soar/sore"	--	false	--	"No, family praise or squabbles aren't it."
"this thor"	--	false	--	"Thor is more about actions than words."
"tis tore"	--	false	--	"The [diss door] remains intact."
"wiz war"	--	false	--	"No lightning bolt spell blasts the door."

guess-table of red rose is the table of red rose guesses.

table of red rose guesses
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"bed bows"	--	false	--	"You need no fancy place to sleep."
"bed beaus"	--	false	--	"Yeah, roses are romantic and all, but by now, you may guess this game's shtick is corny jokes."
"bled blows"	--	false	--	"You do not need to incite violence."
"cred crows"	--	false	--	"You don't need to brag about street cred, real or imagined."
"dead does/dohs/doze"	--	false	--	"You aren't here to kill helpless animals or utter a Simpsonesque epithet. Or sleep on the job."
"fled flows"	--	false	--	"Nobody and nothing flees at your proclamation."
"fred froze"	--	false	--	"[sad-tale]."
"ed ohs/os"	--	false	--	"No larger-than-life football coach with a thick Cajun accent appears. He is probably out driving that Hummer he bought in that one commercial."
"head hos/hoes/hose"	--	false	--	"You have no need to disguise your face with hose."
"jed joes"	--	false	--	"No 'charmingly-named' rustic diner appears."
"led/lead lows"	--	false	--	"You have no need to go low or be laid low."
"ned knows"	--	false	--	"There is nobody named Ned around."
"shed shows"	--	false	--	"There are no sheds that need showing."
"sled slows"	--	false	--	"There are no sleds that need slowing."
"ted tows/toes"	--	false	--	"You recall an ad for a towing service."
"wed woes"	--	false	--	"[sad-tale]."

to say sad-tale: say "A sad, succinct tale, indeed"

table of sus sack guesses
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"pus/puss pack"	--	false	--	"You don't need a cat, or a mound of pus. Think more positive!"
"wuss wack/whack"	--	false	--	"No, something more positive and flattering is inside."

table of sturdy stalk guesses
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
"birdy balk"	--	false	need-wordy-walk rule	"No bird makes loud noises."
"curdy caulk/calk"	--	false	need-wordy-walk rule	"You don't need to do any construction."
"dirty doc"	--	false	need-wordy-walk rule	"Whether it's a dirty document or people, no."
"herdy hawk"	--	false	need-wordy-walk rule	"You wouldn't want a bunch of hawks to swarm."
"nerdy knock"	--	false	need-wordy-walk rule	"A nerdy knock, whatever it is, wouldn't get a favorable response."
"purdy pock"	--	false	need-wordy-walk rule	"No, pock marks wouldn't make the stalk look better."

this is the need-wordy-walk rule:
	if sco-wordy-walk is false, the rule succeeds;
	the rule fails;

book miscellaneous guesses

[this is for cases that may conflict with actual puzzles. Homonyms may apply as well.]

table of first check rhymes
mist-cmd(topic)	mist-rule	got-yet	leet-rule	mist-txt
a topic	a rule	a truth state	a rule	text

Low Key Learny Jokey Journey Mistakes ends here.

---- DOCUMENTATION ----
