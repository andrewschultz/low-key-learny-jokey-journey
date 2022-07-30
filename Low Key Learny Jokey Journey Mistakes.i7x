Version 1/220706 of Low Key Learny Jokey Journey Mistakes by Andrew Schultz begins here.

"Mistakes, or what qualifies as them--good guesses and their homonyms for Low-Key Learny Jokey Journey."

volume all kinds of guesses

table of general good guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"okie ernie/earnie/earny"	--	false	--	--	"No stereotypical rural fellow pops up with down-home advice."
"tokey tourney"	--	false	--	--	"That could potentially be very relaxed and low-key, indeed. I guess."

book guesses by room, alphabetical

table of bane be sane see guesses [note: you don't have the leet learner here, so MAGICNUM can't be filled in, and even if it could, it would be a mess]
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"cane key"	--	false	--	--	"You don't need any key to unlock the tree."
"feign fee"	--	false	--	--	"You whine about how [this-game] costs money on top of being a waste of time. Nobody listens."
"main me"	--	false	--	--	"You are the main character in this adventure, but don't let it go to your head."
"pain p/pee"	--	false	--	--	"[this-game] is nonviolent and hopefully devoid of bathroom humor."
"vain v"	--	false	--	--	"You come to grips with how you are not as humble as you should be."

table of high hub guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"sly slub"	--	false	43	sigh-sub-yet rule	"You have no need to spin yarn out or be sneaky doing so."
"nigh nub"	--	false	43	sigh-sub-yet rule	"You suspect some small stuff or other is around."
"bye bub"	--	false	43	sigh-sub-yet rule	"[if sco-sigh-sub is false]There's another way down. Be more resigned and more tuned to the location name[else]You do want to say good-bye to whomever put you here[end if]."
"rye rub"	--	false	43	sigh-sub-yet rule	"You aren't sure whether you mean a rub of alcohol or bread. You're not sure what it will do. But you consider the possibility."
"die/dye dub"	--	false	43	sigh-sub-yet rule	"Whether you want to die or dye for a win or just for a double something, you consider the possibilities. Hey, you may need all the clue points you can get, here."
"tie tub"	--	false	43	sigh-sub-yet rule	"Alas, there is no tub to tie."
"cly club"	--	false	43	sigh-sub-yet rule	"You try to go old-school finding an so-old-school-schools-didn't-exist weapon, but alas, it doesn't work."
"dry drub"	--	false	43	sigh-sub-yet rule	"You mentally make fun of someone you disliked, using phrases like 'I won't even raise my voice' or 'I'm sure you're nice and all.'"
"fly flub"	--	false	43	sigh-sub-yet rule	"You consider making a mistake to impress someone. After all, being too perfect makes you dislikable. Then you realize there is nobody to impress."
"sty stub"	--	false	43	sigh-sub-yet rule	"You search for a ticket that would admit you to a barn. There is none."
"try trub"	--	false	43	sigh-sub-yet rule	"You'll have to look harder than that to find trouble. But it is close."

this is the sigh-sub-yet rule:
	if sco-sigh-sub is true, the rule fails;
	the rule succeeds;

table of roaring rocks guesses [note: MAGICNUM doesn't really apply here since you get the leet learner after]
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"flooring flocks"	--	false	63	--	"You don't need to be dive-bombed by aerial predators. And I don't have the artistic ability to show you majestic birds, either. Sorry."
"poring/pouring pox"	--	false	63	--	"You don't need to catch anything, and denting the rocks would not reveal anything[furthers of sco-boring-box]."
"storing stocks"	--	false	63	--	"That's what the rocks will become, but you want something simpler and smaller and shorter."

this is the box-hidden rule:
	if boring box is off-stage, the rule succeeds;
	the rule fails;

table of no nudge slow sludge guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"fo/foe fudge"	--	false	46	--	"This isn't Willy Wonka's Chocolate Factory. Err, Charlie's."
"joe judge"	--	false	46	--	"No former New York Giants head football coach appears."
"po/poe pudge"	--	false	46	--	"Weight gain won't help here."

table of trust track guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"cussed cack"	--	false	101	--	"[if player has sussed sack]No, the sack will be worthwhile.[else]There's a useful item here. More useful than such words![end if]"
"lust lack"	--	false	101	--	"[if just jack is fungible]Jack would still be bugging you in that state[else]You continue to put impure thoughts aside to focus on a really cool text adventure[end if]."
"must mack"	jack-gone rule	false	101	--	"You don't need memories of Just Jack."
"rust rack"	--	false	101	--	"That would be a useless item."

this is the jack-gone rule:
	if Just Jack is moot, the rule succeeds;
	the rule fails;

table of fun farm hun harm guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"one worm/warm"	--	false	23	--	"That doesn't quite work. Maybe the farm needs worms or warm weather, but its survival isn't as important to you as passage north."

table of no new show shoe guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"blow blew/blue"	--	false	100	--	"You blow off steam that you haven't quite revitalized the [show shoe] yet."
"cocu"	--	false	100	--	"Your knowledge of former footballers is impressive. (So is mine, since I caught this, eh?)"
"doh do/due"	--	false	100	--	"There is talking about action or deserving stuff, and there is doing it."
"fo/foe foo/phoo"	--	false	100	--	"You don't need to be expressing contempt here."
"grow grue"	--	false	100	--	"You want entertainers who crave the spotlight, not avoid it. Also, you'd prefer them less predatory, too."
"lo/low lew/lou"	--	false	100	--	"You don't need to call out anyone by name."
"mo moo"	--	false	100	--	"Cows would not make very exciting performers, [if sco-crow-crew is false]but another animal, or people named after them, might[else]unlike the Crow Crew[end if]."
"oh oo/ooh"	--	false	100	--	"That's a bit too generic a sound to make, [if sco-yo-you is false]but it gives you ideas[else]and you've already made the right ones, anyway[end if]."
"po poo/pooh"	--	false	100	--	"There is underpromising and overdelivering, but that's a bit too much. Way too much."
"row rue"	--	false	100	--	"No, we want a positive environment, here."
"slow slue/slew"	--	false	100	--	"But this place was a backwater when you got here."
"so sue"	--	false	100	--	"You don't want to either take or face legal action, which is a lot less exciting than how it's presented in most TV dramas."
"toe two/too"	--	false	100	--	"Counting your digits would be exciting for nobody."

table of nonoon guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"bow boon"	--	false	102	--	"You require no ranged weapon."
"doe/doh/dough dune"	--	false	102	--	"The [if sco-bare-beach is false]prospective [end if]dune is elsewhere in this game."
"jo/joe june"	--	false	102	--	"You call for old or new friends, who do not appear."
"lo/low loon"	--	false	102	--	"That is the wrong sort of bird."
"po poon"	--	false	102	--	"The only thing po['] is your dirty mind."
"row/rho ruin/rune"	--	false	102	--	"[if player has rho rune]But you already have the rune[else]You are on the right track for what you need[end if]."
"toe tune"	--	false	102	--	"Nothing toe-tapping starts playing."
"pro prune"	--	false	102	--	"You come out mentally in favor of a high-fiber diet."

book guesses by item, alphabetical

to say furthers of (ts - a truth state): if ts is true, say " further"

table of deep dune guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"beep boon"	--	false	44	--	"No, you don't a Geiger counter to search[furthers of sco-reap-rune] through the dune."
"creep croon"	--	false	44	--	"Alas, R. Kelly can't show up. He's still in jail."
"leap loon"	--	false	44	--	"Alas, nobody odd comes by and dives into the deep dune. Nobody at all."
"peep poon"	--	false	44	--	"[this-game] is the wrong environment for that, and not just because it's text-based."

table of locking lift guesses
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
"knocking niffed"	--	false	103	--	"Smells and knocking aren't the way to go here."
"socking sift"	--	false	103	--	"You wouldn't want to sift through punches to receive."
"whocking whiffed"	--	false	103	--	"You wouldn't want to attack someone and miss."

book miscellaneous guesses

[this is for cases that may conflict with actual puzzles. Homonyms may apply as well.]

table of first check rhymes
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	mist-txt
a topic	a rule	a truth state	a number	a rule	text

Low Key Learny Jokey Journey Mistakes ends here.

---- DOCUMENTATION ----
