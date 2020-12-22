Alchemy Products by Crafting begins here.

An alchemy product is a kind of thing. [We are not going to classify these as 'bottles' a) since they don't obey the colour & effect rules and b) so that they never get mixed up with normal drinks that are found in containers etc.]

Definition: an alchemy product is product: decide yes.
Definition: an alchemy product is magic themed: decide yes.

Definition: an alchemy product is shop-eligible:
	if it is off-stage and it is product and it is fetish appropriate, decide yes;
	decide no.

An alchemy product has a curse-ID. Understand the curse-ID property as describing an alchemy product. An alchemy product is usually unsure.
An alchemy product has a magic-curse. Understand the magic-curse property as describing an alchemy product when item described is sure.

To uniquely destroy (P - an alchemy product):
	now P is bland;
	now P is unsure.

Definition: an alchemy product is uncursed:
	if it is not cursed, decide yes;
	decide no.

To say alchemy-title-before:
	say "[TQlink of item described][if item described is sure and item described is blessed]blessed [otherwise if item described is sure and item described is cursed]cursed [otherwise if item described is sure]uncursed [end if]".
To say alchemy-title-after:
	say "[shortcut-desc][TQxlink of item described][verb-desc of item described]".

The printed name of an alchemy product is "[alchemy-title-before][MediumDesc of item described][alchemy-title-after]".

To decide which number is the bartering value of (T - an alchemy product) for (M - witch):
	if T is unsure, decide on 2;
	if T is cursed, decide on 1;
	if T is blessed, decide on 5;
	decide on 3.

To decide what number is the original price of (C - an alchemy product):
	decide on 4.

To say MonsterOfferAcceptFlav of (M - witch) to (T - an alchemy product):
	say "[BigNameDesc of M] gingerly takes it from you.[line break][speech style of M]'[if T is unsure]You couldn't even be bothered to identify it? Well, I guess I can pawn this off to some unsuspecting adventurer in the future. I'll take it[otherwise if T is cursed]Don't you think I have enough cursed [ShortDesc of T]s? No, no, I'll take it, just don't expect me to be over the moon or anything[otherwise if T is blessed]Wow, I haven't seen a blessed one of these in decades! I mean... not that I'm that old! Forget I said anything! Anyway, yes, thank you, I'll definitely take this off of your hands[otherwise]Nice, looks like it's in good condition too. Thanks[end if].'[roman type][line break]".


[Quaffing is the verb used to handle potions created via alchemy. It is called automatically by the drinking verb when appropriate.]
Quaffing is an action applying to one thing.
Check quaffing:
	if the noun is salve or the noun is true salve or the noun is powder, say "That cannot be drunk, try [bold type]rub[roman type]bing the [ShortDesc of the noun] on a [if the noun is salve]body part[otherwise]item of clothing[end if] instead." instead;
	if the latex-transformation of the player > 4, say "You can no longer drink, you're too far into your transformation into a doll and your body doesn't need hydration any more." instead;
	if the noun is not held and the player is flying, say "You can't reach!" instead;
	if the player is overly full, say "Your stomach feels too full to drink any more right now, you should wait a while." instead;
	if the player is wrist bound behind, say "You won't be able to drink this with your hands bound behind you." instead;
	if the player is wrist bound in front and there are worn heels and the player is upright and the noun is not held by the player, say "With your hands tied together you won't be able to balance well enough to pick that up without getting on your knees." instead;
	if there is a worn ballgag, say "The glass container is too delicate, you can't get anything past your [ShortDesc of random worn ballgag] safely!" instead;
	if face is actually occupied, say "Your mouth is currently occupied!" instead.

Carry out quaffing:
	allocate 3 seconds;
	StomachUp 1;
	if the noun is cursed and the noun is not blessing-potion, say "That tasted really awful - you're pretty sure it was cursed![line break][variable custom style]Uh-oh. That probably hasn't done what it was supposed to do...[roman type][line break]";
	check stealing of the noun;
	destroy the noun.

A bomb is a kind of alchemy product. Understand "bomb" as a bomb.

To say ShortDesc of (B - a bomb):
	say "bomb".

Check drinking bomb:
	say "You can't drink that." instead.

Definition: a bomb is combat-bomb: decide no.

SmokeBombing it to is an action applying to two objects.
Check SmokeBombing:
	if the noun is not smoke bomb, say "This verb is for using a smoke bomb to escape." instead;
	if the second noun is not direction, say "Smoke bombs should be used in combination with a direction, e.g. [bold type]throw bomb to escape north[roman type]." instead;
	if the player is immobile, say "It's a bit late for that, don't you think?" instead;
	if the number of monsters in the location of the player is 0:
		say "Are you sure? There's nobody to escape from here.";
		unless the player is consenting, say "Action cancelled." instead.

Carry Out SmokeBombing:
	check stealing of the noun;
	destroy the noun.

Understand "throw [bomb] to [direction]", "throw [bomb] to escape [direction]" as SmokeBombing it to.

Figure of bomb is the file "Items/Collectibles/bomb1.png".
To decide which figure-name is the examine-image of (V - a bomb):
	decide on the figure of bomb.

Section 1 - Smoke Bomb

A smoke bomb is a kind of bomb. The text-shortcut of smoke bomb is "smkb". There are 8 smoke bombs.
The backgroundColour of a smoke bomb is 13882323. [grey]

To say MediumDesc of (B - a smoke bomb):
	say "smoke bomb".

To say ExamineDesc of (B - a smoke bomb):
	say "A small dark grey ball. ";
	if B is sure and B is cursed, say "Since it is cursed, throwing it at the ground will probably do something bad. Perhaps you could find some other use for it, for example gifting.";
	otherwise say "Throwing it at the ground [if B is sure]will[otherwise]should[end if] allow you to escape in a direction[if B is sure and B is blessed], and the blessed magic will make everyone in the room lose interest in you[end if].".

To decide which number is the alchemy key of (A - a smoke bomb):
	decide on 29.


Carry out SmokeBombing a smoke bomb to a direction:
	allocate 3 seconds;
	say "You cast the smoke bomb to the ground. ";
	if the noun is cursed:
		say "Suddenly the entire room is filled with [if the location of the player is smoky]even more [end if][if playerRegion is Mansion]blackish-green[otherwise]pink[end if] smoke! ";
		now the location of the player is smoky;
		update backdrop positions;
		if the player is upright:
			say "Before it settles down to below waist height, you are forced to breathe some in.";
			compute pink smoke;
		say "Oh no! The bomb itself must have been cursed! You must have created it with the wrong recipe...";
		say "[bold type]You are still in the [location of the player].[roman type][line break]";
	otherwise:
		say "For a few moments, [if the number of person in the location of the player > 1]nobody can[otherwise]you can't[end if] see anything[if the noun is blessed and there is an interested monster in the location of the player]. Blessed magic dust settles around the room, distracting those who were paying attention to you[end if]!";
		repeat with M running through interested monsters in the location of the player:
			if the blind-status of M is -1:
				say "[BigNameDesc of M] seems to be immune to the effects of the smoke!";
			otherwise:
				if the noun is blessed:
					let F be the favour of M;
					deinterest M;
					now the favour of M is F; [no favour change]
				now M is moved; [won't move again this turn]
		try going the second noun.

To decide what number is the original price of (C - a smoke bomb):
	decide on 2.

Section 2 - Water Bomb

water-bomb is a bomb. water-bomb has a number called cum-known. The text-shortcut of water-bomb is "wbmb". Understand "water" as water-bomb when the cum-known of water-bomb is 0 and the number of water-body-scenery in the location of the player is 0. Understand "cum" as water-bomb when the cum-known of water-bomb is not 0.

Definition: water-bomb is semen themed:
	if the cum-known of water-bomb is 1, decide yes;
	decide no.
Definition: water-bomb is fetish appropriate:
	if bukkake fetish is 1, decide yes;
	decide no.
Definition: water-bomb is combat-bomb: decide yes.

To say MediumDesc of (B - water-bomb):
	say "[if the cum-known of water-bomb is 0]water[otherwise]cum[end if] bomb".

To say ExamineDesc of (B - water-bomb):
	say "A large thin balloon containing a large, heavy amount of [if the cum-known of water-bomb is 0]a cloudy liquid[otherwise][semen][end if]. ";
	if B is sure and B is cursed, say "Since it is cursed, throwing it at an enemy will probably do something bad. Perhaps you could find some other use for it, for example gifting.";
	otherwise say "Throwing it at an enemy should hopefully blind or otherwise incapacitate them.".

To decide which number is the alchemy key of (A - water-bomb):
	decide on 30.

To decide which number is the outrage of (A - water-bomb):
	decide on 20 * the cum-known of water-bomb.

To decide which figure-name is the examine-image of (V - water-bomb):
	decide on the figure of water bomb.

Check throwing water-bomb at a monster:
	if the player is immobile, say "It's a bit late for that, don't you think?" instead;
	allocate 4 seconds;
	if water-bomb is cursed or the player is prone or fake-nails is worn:
		say "You grip [NameDesc of the noun] tight and prepare to launch it at [NameDesc of the second noun]. [if water-bomb is cursed]You throw it and it appears on target, but suddenly, almost as if it was cursed to do so, it changes direction in mid-air and heads straight back towards you! You have no time to dodge before it collides with your nose where [otherwise if fake-nails is worn]But your sharp nails press against the delicate rubber and [otherwise]However from your position on your knees it's difficult to keep your balance and not grip it [italic type]too[roman type] tightly, and [end if]it explodes in your face, blinding you!";
		if the cum-known of water-bomb is 0, say "[variable custom style]Wait a minute, this isn't water, it's [semen]![roman type][line break]";
		if water-bomb is cursed, appropriate-cutscene-display figure of water bomb cutscene 2;
		otherwise appropriate-cutscene-display figure of water bomb cutscene 1;
		CumFaceUp 20;
	otherwise:
		say "You launch the [water-bomb] at [NameDesc of the second noun], which hits [him of the second noun] right in [his of the second noun] [MonsterFaceDesc of the second noun]! The creamy viscous liquid goes everywhere, blinding [him of the second noun][if the cum-known of water-bomb is 0]. That's not water... it's definitely [semen][end if]!";
		if the blind-status of the second noun is -1:
			say "[big he of the second noun] doesn't seem to have any problems detecting where you are through the [semen]. [big he of the second noun] must be immune to being blinded!";
		otherwise if the blind-status of the second noun > 0:
			say "[big he of the second noun] seems to be even more blinded than [he of the second noun] was before you threw it!";
		if the blind-status of the second noun is not -1:
			increase the blind-status of the second noun by a random number between 3 and 5;
			if the noun is blessed, increase the blind-status of the second noun by 4;
		if the second noun is friendly or the second noun is not interested, compute standard damage of the second noun;
	check stealing of the noun;
	destroy the noun;
	now the cum-known of water-bomb is 1 instead;
	do nothing instead.

Check TQEating water-bomb when the cum-known of water-bomb > 0:
	let BL be a random off-stage bag lunch;
	if BL is bag lunch:
		now BL is in Holding Pen;
		try TQEating BL;
		if BL is off-stage: [eating was successful]
			check stealing of water-bomb;
			destroy water-bomb instead;
			do nothing instead;
		otherwise:
			destroy BL.

Section 3 - Energy Bomb

energy-bomb is a bomb. The text-shortcut of energy-bomb is "nrgb". Understand "energy" as energy-bomb.
The backgroundColour of energy-bomb is 16720896. [scarlet]

Definition: energy-bomb is combat-bomb: decide yes.

To say MediumDesc of (B - energy-bomb):
	say "energy bomb".

To say ExamineDesc of (B - energy-bomb):
	say "A small glass sphere containing what looks like constantly sparking red electricity. ";
	if B is sure and B is cursed, say "Since it is cursed, throwing it at an enemy will probably do something bad. Perhaps you could find some other use for it, for example gifting.";
	otherwise say "Throwing it at an enemy [if B is sure]will surely[otherwise]could[end if] turn a fight in your favour.".

To decide which number is the alchemy key of (A - energy-bomb):
	decide on 31.

Check throwing energy-bomb at a monster:
	if the player is immobile, say "It's a bit late for that, don't you think?" instead;
	allocate 6 seconds;
	if energy-bomb is cursed:
		say "You launch the [energy-bomb] at [NameDesc of the second noun]. It appears on target, but suddenly, almost as if it was cursed to do so, it changes direction in mid-air and heads straight back towards you! You have no time to dodge before it collides with your arm where it explodes with energy. Sparks of red electricity shoot all over your body, causing you great pain! By the time they have died down, you are completely sore all over and your skin even looks a little singed.";
		PainUp 2;
		BodyRuin 10;
	otherwise:
		say "You launch the [energy-bomb] at [NameDesc of the second noun], which hits [him of the second noun] right in [his of the second noun] [MonsterFaceDesc of the second noun]! Sparks of red electricity shoot all over [his of the second noun] body!";
		now attack-type is 4;
		let D be a random number between 14 and 18;
		if the noun is blessed, increase D by 12;
		damage D on the second noun;
		now latestCombatFocus is the second noun;
	check stealing of the noun;
	destroy the noun instead;
	do nothing instead.

Section 4 - Time Bomb

timeBombTime is a number that varies.
time-bomb is a bomb. The text-shortcut of time-bomb is "timb". Understand "time" as time-bomb.
The backgroundColour of time-bomb is 65280. [lime]

Definition: time-bomb is fetish appropriate:
	if diaper quest is 0, decide yes;
	decide no.

To say MediumDesc of (B - time-bomb):
	say "time bomb".

To say ExamineDesc of (B - time-bomb):
	say "A small glass sphere containing some kind of green energy. ";
	if B is sure and B is cursed, say "Since it is cursed, activating it will probably do something bad. Perhaps you could find some other use for it, for example gifting.";
	otherwise say "Activating it [if B is sure]will[otherwise]might[end if] stop time for a [if B is sure and B is blessed]decent[otherwise]short[end if] while.".

To decide which number is the alchemy key of (A - time-bomb):
	decide on 32.

Check drinking time-bomb:
	if the player is immobile, say "It's a bit late for that, don't you think?" instead;
	allocate 6 seconds;
	say "You throw [NameDesc of the noun] at the ground where it shatters! ";
	if the noun is cursed and diaper quest is 0:
		wait 1200 ms before continuing;
		clear the screen;
		say "[first custom style]'What do we have here? Is [he of the player]... ";
		wait 2500 ms before continuing;
		say "frozen? ";
		wait 2500 ms before continuing;
		say "Well... ";
		wait 1000 ms before continuing;
		say "Don't mind if I do...'[roman type][line break]";
		wait 1000 ms before continuing;
		say "[italic type]Schlick ";
		repeat with N running from 1 to 4:
			wait 500 - (100 * N) ms before continuing;
			say "schlick ";
		reset the Glulx timer;
		repeat with N running from 1 to 10:
			wait before continuing;
			say "schlick";
		wait before continuing;
		say " spurt spurt spurt[line break]";
		wait 1000 ms before continuing;
		say "[first custom style]'Fuck yes, that was just what I needed. Well, I guess you can stay here until somebody else finds you...'[paragraph break]";
		wait 5000 ms before continuing;
		say "'What the... ";
		wait 1000 ms before continuing;
		say "Why is [he of the player] in that position...? ";
		wait 1000 ms before continuing;
		say "Is [he of the player]...? ";
		wait 1000 ms before continuing;
		say "Oh my god, [he of the player][']s stuck like that?";
		wait 1000 ms before continuing;
		say "Is [his of the player] asshole really stuck open like that?!'[line break]";
		repeat with N running from 1 to 15:
			wait 150 * (16 - N) ms before continuing;
			say "[first custom style]'[one of]Well I'm not going to wait any longer!' [or]Is [he of the player] going to be able to feel this when [he of the player] wakes up?' [or]Cumming!' [or]This is hilarious!' [or]My turn!' [or]Is this for real?' [or]I hope [he of the player] doesn't mind too much...' [or]Can I really put it up [his of the player] butt?' [or]I think I'll do it this way...' [or][big he of the player] probably dropped a cursed time bomb, the poor fool...' [or]... looks like it won't wear off for a fair while yet...' [in random order][if N < 6][line break][end if][roman type][one of]Shlick shlick shlick[or]Slap slap slap[or]Fap fap fap[or]Shluck shlick shluck[or]thud thud thud thud[purely at random][if N < 10][line break][otherwise] [end if]";
		wait 1 ms before continuing;
		repeat with N running from 1 to 200:
			if N < 10 or (N < 20 and the remainder after dividing N by 3 is 0) or (N < 40 and the remainder after dividing N by 9 is 0) or (the remainder after dividing N by 27 is 0), wait before continuing;
			say "[first custom style]'[one of]Hello there...' [or]One more for the road...' [or]Cumming!' [or]One more time!' [or]My turn!' [or]This is my favourite part of the day.' [or]Juicy...' [or]Fuck yeah!' [or]Lovely...' [or]Wonderful!' [or]Yum.' [or]Come to Daddy.' [or]Boo-ya.' [or]Anal?' [or]Again.' [or]More.' [or]Yes.' [or]Feels so good!' [or]Crikey!' [or]Ooh!' [or]Here we are again.' [or]My name is Buck. I like to fuck.' [or]Ew, slimy.' [or]Someone should probably clean up this mess.' [or]Cool!' [or]Gross!' [or]How deplorable.' [or]I'm glad I'm not you.' [or]Nice.' [or]Delightful.' [or]How interesting.' [or]This is unique.' [or]Open wide, honey.' [or]Rad!' [or]Wow...' [at random] [roman type][one of]Shlick[or]Slap[or]Fap[or]Shluck[or]Thud[or]Spurt[or]Squirt[purely at random] ";
		say line break;
		wait 800 ms before continuing;
		reset the Glulx timer;
		clear the screen;
		say "You [if the player is upright]suddenly find yourself bent at the waist, in a standing doggy position[otherwise]blink in confusion[end if]. Suddenly the experience and stimulation from countless fuckings hits your [fuckholes] at the same moment, forcing you to instantly cum harder than you have in your life! ";
		anally orgasm shamefully;
		if the location of the player is bossed: [We're not willing to displace the NPCs from this room.]
			repeat with M running through awake monsters in the location of the player:
				deinterest M;
		otherwise:
			let here-monsters be the list of monsters in the location of the player;
			let E be the number of entries in here-monsters;
			if E > 0:
				repeat with M running through here-monsters:
					regionally place M;
					deinterest M;
				repeat with M running through monsters in the location of the player: [Sometimes the NPC is still there, e.g. shopkeeper in the shop]
					remove M from here-monsters;
					decrease E by 1;
				if E > 0:
					say "The ";
					repeat with M running through here-monsters:
						say "[NameDesc of M][if E > 2], [otherwise if E is 2] and [end if]";
						decrease E by 1;
					say " [if the number of entries in here-monsters is 1]is[otherwise]are[end if] nowhere to be seen. ";
		repeat with T running through things penetrating an orifice:
			say "[BigNameDesc of T] is on the ground next to you. ";
			dislodge T;
			now T is in the location of the player;
		repeat with C running through worn displacable clothing:
			displace C;
		repeat with C running through worn top-displacable clothing:
			topdisplace C;
		repeat with C running through pussy covering clothing:
			say "Your [ShortDesc of C] is on the ground next to you. ";
			now C is in the location of the player;
		if bukkake fetish is 1:
			say "Your entire body and clothes is completely caked in [semen].";
			now the semen coating of hair is the largeness of hair;
			now the semen coating of face is 10;
			now the semen coating of breasts is 10;
			now the semen coating of belly is 10;
			now the semen coating of thighs is 10;
			repeat with C running through worn fluid vulnerable clothing:
				increase the semen-soak of C by the soak-limit of C - the total-soak of C;
		say "Gallons of [semen] leak from your every orifice as you try to make sense of all these sensations. There's only one explanation for all of this - you were stopped in time, for who knows how many minutes or centuries, while all the beings of this world had their way with you!";
		increase the stomach-semen of the player by 20;
		now the soreness of asshole is 10;
		now the semen volume of belly is 30;
		if the player is possessing a vagina:
			now the semen volume of vagina is 30;
			now the womb volume of vagina is 5;
			now a random creampie pole trap is inseminating vagina;
			now the soreness of vagina is 10;
			if the vaginalvirgin of the player is 1, compute virginity loss;
			check sudden pregnancy;
		compute puking;
		AssSquirt;
		reset the Glulx timer;
	otherwise:
		let here-monsters be the list of monsters in the location of the player;
		let E be the number of entries in here-monsters;
		if E > 0:
			say "You watch as ";
			repeat with M running through here-monsters:
				say "[NameDesc of M][if E > 2], [otherwise if E is 2] and [end if]";
				decrease E by 1;
			say " freeze[if the number of entries in here-monsters is 1]s[end if] in mid-motion!";
		otherwise:
			say "Everything feels weirdly... still.";
		now timeBombTime is 3;
		if the noun is blessed, now timeBombTime is 30;
	destroy the noun instead;
	do nothing instead.

Check slapping a monster when timeBombTime > 0:
	say "[BigNameDesc of the noun] is frozen in time stasis and seems immune to your attacks." instead.
Check zapping a monster with something when timeBombTime > 0:
	say "[BigNameDesc of the noun] is frozen in time stasis and seems immune to your attacks." instead.
Check kneeing a monster when timeBombTime > 0:
	say "[BigNameDesc of the noun] is frozen in time stasis and seems immune to your attacks." instead.
Check kicking a monster when timeBombTime > 0:
	say "[BigNameDesc of the noun] is frozen in time stasis and seems immune to your attacks." instead.

To progress stopped time:
	if timeBombTime > 0:
		decrease timeBombTime by 1;
		if timeBombTime is 0, say "[bold type]Time seems to start moving normally again.[roman type][line break]".

Section 5 - Nail Bomb

nail-bomb is a bomb. The text-shortcut of nail-bomb is "naib". Understand "nail" as nail-bomb.
The backgroundColour of nail-bomb is 16711935. [magenta]

Definition: nail-bomb is fetish appropriate:
	if diaper quest is 0, decide yes;
	decide no.

To say MediumDesc of (B - nail-bomb):
	say "nail bomb".

To say ExamineDesc of (B - nail-bomb):
	say "A small glass sphere containing several small pink shards. ";
	if B is sure and B is cursed, say "Since it is cursed, activating it will probably do something bad. Perhaps you could find some other use for it, for example gifting.";
	otherwise say "The label suggests it would be most helpful to activate this while in combat against multiple foes[if B is sure and B is blessed]. The blessed magic will make sure that it only targets the people in the room who you actually want to hurt[end if].".

To decide which number is the alchemy key of (A - nail-bomb):
	decide on 33.

Definition: nail-bomb is combat-bomb: decide yes.

Check throwing nail-bomb at a monster:
	try drinking the noun instead.

Check drinking nail-bomb:
	if the number of monsters in the location of the player is 0, say "You should probably wait until you're not alone for this to be any use." instead;
	if the player is immobile, say "It's a bit late for that, don't you think?" instead;
	allocate 6 seconds;
	say "You launch the orb up into the air, where it explodes in a shower of pink!";
	if nail-bomb is cursed:
		say "But instead of the shards flying towards everyone else, they fly back towards your hands! ";
		if fake-nails is not worn:
			repeat with E running through worn hand ready equippables:
				say "You are forced to drop your [E].";
				now E is in the location of the player;
			say "Moments later you are wearing a set of long and slutty pink fake nails. Wow that was fast! You are immediately filled with a horrible sense of dread; almost all you can think about is [if the player is horny]how horny you are and [end if]how awful, and painful, it would be if any of your nails were to break. The invasive thought is so powerful that you also feel significantly weaker and slower as your mind makes you think twice about every action you take.";
			summon fake-nails cursed with persistent quest;
		otherwise if fake-nails is not cursed:
			say "They apply themselves on top of your [fake-nails], returning them to a cursed delicate state.";
			now fake-nails is cursed;
		otherwise:
			say "They try to apply themselves on top of your [fake-nails], but since they are already as delicate and bimbo-like as could be, nothing happens.";
	otherwise:
		if nail-bomb is blessed and there is a friendly monster in the location of the player, say "The shards fly out and hit [if the number of dangerous monsters in the location of the player > 1]all enemies[otherwise][NameDesc of a random dangerous monster in the location of the player][end if], the luck of the nail bomb guiding them true so that they only hit those that are currently fighting you.";
		otherwise say "The shards fly out and hit [if the number of monsters in the location of the player > 1]everyone else in the room[otherwise][NameDesc of a random monster in the location of the player][end if]!";
		now attack-type is 4;
		repeat with M running through monsters in the location of the player:
			if nail-bomb is bland or M is dangerous:
				damage a random number between 12 and 20 on M;
				now latestCombatFocus is M;
	check stealing of the noun;
	destroy the noun instead;
	do nothing instead.

An elixir is a kind of alchemy product. Understand "elixir", "elixir of" as an elixir.

To say ShortDesc of (E - an elixir):
	say "elixir".

Definition: an elixir is drink themed: decide yes.

Figure of elixir is the file "Items/Collectibles/elixir1.png".
To decide which figure-name is the examine-image of (V - an elixir):
	decide on the figure of elixir.

Section 1 Elixir of Magnetism

magnetism-elixir is an elixir. The text-shortcut of magnetism-elixir is "em". Understand "magnetism" as magnetism-elixir.
The backgroundColour of magnetism-elixir is 15631086. [violet]

To say MediumDesc of (B - magnetism-elixir):
	say "elixir of magnetism".

To say ExamineDesc of (B - magnetism-elixir):
	say "A small glass flask filled with a small dose of shimmering purple liquid. ";
	if B is sure and B is cursed, say "Since it is cursed, drinking it will probably do something bad. Perhaps you could find some other use for it, for example gifting.";
	otherwise say "The label says that drinking it will encourage people in the region to wander towards you, but also [bold type]cause the enemies you are currently fighting to flee[if B is sure and B is blessed].[roman type] The blessed magic will make the effect last even longer than usual[end if].[roman type][line break]".

To decide which number is the alchemy key of (A - magnetism-elixir):
	decide on 3.

magnetism-timer is a number that varies. magnetism-timer is 0.

Carry out quaffing magnetism-elixir:
	say "You pull out the tiny stopper and down the purple liquid. You feel more... present, as if [bold type]people are now being drawn towards you.[roman type][line break]";
	let R be a random number between 20 and 25;
	if the noun is blessed, increase R by 6;
	now magnetism-timer is R * 6;
	repeat with M running through alive monsters:
		now the scared of M is 0;
	if the noun is not cursed and the player is in danger:
		repeat with M running through combative monsters:
			if M is penetrating a body part or M is grabbing the player or M is not scarable:
				say "[BigNameDesc of M][']s eyes open wide for a moment, but then it passes.";
			otherwise:
				now the scared of M is magnetism-timer;
				say "[one of]As if mind controlled, the[or]The[stopping] [M] turns tail and starts fleeing away from you!".

An all time based rule (this is the magnetism elixir decay rule):
	if magnetism-timer > 0:
		decrease magnetism-timer by time-seconds;
		if magnetism-timer < 0, now magnetism-timer is 0.

Section 2 Elixir of Life

life-elixir is an elixir. life-elixir has a number called life-timer. The text-shortcut of life-elixir is "el". Understand "life" as life-elixir.
The backgroundColour of life-elixir is 32768. [green]

Definition: life-elixir is fetish appropriate:
	if pregnancy fetish is 0, decide no;
	if the player is male and tg fetish is 0, decide no;
	decide yes.

To say MediumDesc of (B - life-elixir):
	say "elixir of life".

To say ExamineDesc of (B - life-elixir):
	say "A small glass flask filled with a small dose of shimmering green liquid. The label says that drinking it will magically encourage cell replication, continuously and rapidly healing you over time. ";
	if B is sure and B is cursed, say "Since it is cursed, drinking it will probably make you rapidly pregnant instead of healing you or something. Perhaps you could find some other use for it, for example gifting.[if the semen addiction of the player > 10][line break][second custom style]Or maybe I want to be pregnant...[roman type][line break][end if]";
	otherwise say "[if B is sure and B is blessed]The blessed magic will make the effect last even longer than usual.[otherwise][line break][end if]".

To decide which number is the alchemy key of (A - life-elixir):
	decide on 4.

Carry out quaffing life-elixir:
	say "You pull out the tiny stopper and down the glowing liquid. [if the body soreness of the player > 0 or the soreness of asshole > 0 or the soreness of vagina > 0 and the noun is not cursed]You start to feel... healthier, as if some kind of magic particle is running around your body, healing your wounds. The particle gets to your belly. ";
	if the latex-transformation of the player > 0:
		say "[LatexCurseRemoval]But the elixir hasn't finished yet! ";
	if the player is male:
		say DefaultSexchangeFlav;
		SexChange the player;
		say "But the elixir hasn't finished yet! ";
	if the pregnancy of the player is 0, say "Your [BellyDesc] rumbles[if the largeness of belly < 4] and slightly expands[end if]. You feel a small kick coming from within. [if the children of the player is 0][line break][variable custom style]No way... [roman type][line break][end if]It looks like you're pregnant[if the children of the player > 0] again[end if]!";
	otherwise say "Your [BellyDesc] rumbles, and energy rushes to your womb. For a brief moment you can feel your womb perfectly - you can feel exactly where it is, how swollen and expanded it is, and you can feel your baby inside with as if the inside lining of your womb had all the sensitive nerve endings of your hand. As you [if the player is upright]stand[otherwise]lie[end if] there stunned, the feeling disappears and your [vagina] is left with a dull, throbbing ache as if it can't wait to feel the sensation of being stretched beyond its limits and giving birth[if the children of the player > 0] again[end if].";
	if the pregnancy of the player > 0:
		increase the pregnancy rate of the player by 1;
	otherwise:
		now the pregnancy of the player is 1;
		let M be a random fairy;
		set up M;
		now the father is M;
		now M is in Woods10;
		if the womb volume of vagina < 10, now the womb volume of vagina is 1;
		check sudden pregnancy;
	if the noun is not cursed:
		let R be a random number between 20 and 35;
		if the noun is blessed, increase R by 20;
		now life-timer of life-elixir is R * 20.

An all time based rule (this is the life elixir decay rule):
	if life-timer of life-elixir > 0:
		decrease life-timer of life-elixir by time-seconds;
		if life-timer of life-elixir <= 0:
			say "[bold type]You feel the power of the elixir of life finally fizzle away.[roman type][line break]";
			now life-timer of life-elixir is 0;
		otherwise if the remainder after dividing time-earnings by 12 < time-seconds:
			if the body soreness of the player > the soreness of asshole:
				say "Your body feels slightly less sore!";
				BodyHeal 1;
			otherwise if the soreness of asshole > the soreness of vagina:
				say "Your [asshole] feels [if the openness of asshole < 6]a bit less sore[otherwise][second custom style]ready for more[roman type][end if]!";
				heal asshole times 1;
			otherwise if the soreness of vagina > 0:
				say "Your [vagina] feels [if the openness of vagina < 6]a bit less sore[otherwise][second custom style]ready for more[roman type][end if]!";
				heal vagina times 1;
			otherwise if the pregnancy of the player > 0 and the pregnancy of the player < 3:
				say "You feel life force rushing through your body, as if trying to find something to heal. After rushing through your torso, your [vagina] and your [asshole], it flows through your cervix into your womb.";
				let B be the largeness of belly;
				unless the womb volume of vagina is 30, increase the womb volume of vagina by 1;
				if the largeness of belly > B, say PregGrowth.

Section 3 Elixir of Invigoration

invigoration-elixir is an elixir. invigoration-elixir has a number called invigoration-timer. Understand "invigoration" as invigoration-elixir. The text-shortcut of invigoration-elixir is "ei".
The backgroundColour of invigoration-elixir is 16776656. [creamy]

Definition: invigoration-elixir is fetish appropriate:
	if diaper quest is 0, decide yes;
	decide no.

To say MediumDesc of (B - invigoration-elixir):
	say "elixir of invigoration".

To say ExamineDesc of (B - invigoration-elixir):
	say "A small glass flask filled with a small dose of shimmering [if the bimbo of the player < 6]creamy[otherwise][second custom style][semen]-like[roman type][end if] liquid. The label says that drinking it will allow your [fuckholes] to fully heal whenever you receive a creampie. ";
	if B is sure and B is cursed, say "Since it is cursed, drinking it will probably only last for a few seconds or something. Perhaps you could find some other use for it, for example gifting.";
	otherwise say "[if B is sure and B is blessed]The blessed magic will make the effect last even longer than usual.[otherwise][line break][end if]".

To decide which number is the alchemy key of (A - invigoration-elixir):
	decide on 5.

Carry out quaffing invigoration-elixir:
	say "You pull out the small stopper and drink the creamy liquid. It tastes like [semen]. You feel your [fuckholes] pulse gently.";
	SlowSemenTasteAddictUp 1;
	let R be a random number between 30 and 45;
	if the noun is blessed, increase R by 30;
	if the noun is cursed, decrease R by 29;
	increase invigoration-timer of invigoration-elixir by R * 6.

An all time based rule (this is the invigoration elixir decay rule):
	if invigoration-timer of invigoration-elixir > 0:
		decrease invigoration-timer of invigoration-elixir by time-seconds;
		if invigoration-timer of invigoration-elixir <= 0:
			say "[bold type]You feel the power of the elixir of invigoration finally fizzle away.[roman type][line break]";
			now invigoration-timer of invigoration-elixir is 0.

Part - Potions

A potion is a kind of alchemy product. Understand "potion", "potion of" as potion.

Definition: a potion is drink themed: decide yes.

To say ShortDesc of (P - a potion):
	say "potion".

Figure of potion is the file "Items/Collectibles/potion1.png".
To decide which figure-name is the examine-image of (V - an potion):
	decide on the figure of potion.

Section 1 Potion of Balance

balance-potion is a potion. The text-shortcut of balance-potion is "pba". Understand "balance" as balance-potion.

To say MediumDesc of (B - balance-potion):
	say "potion of balance".

To say ExamineDesc of (B - balance-potion):
	say "A round clear hip flask filled with a dose of smoky [appearance corresponding to an Magic of 4 in the Table of Drinks] liquid. The label says that drinking it will enhance your ability to walk in high heels[if diaper quest is 0], and bring the sizes of your chest and hips into balance[end if]. ";
	if B is sure and B is cursed, say "Since it is cursed, drinking it will probably do the opposite. Perhaps you could find some other use for it, for example gifting.";
	otherwise say "[if B is sure and B is blessed]The blessed magic will double the heel skill effect.[otherwise][line break][end if]".

To update background colour of (P - balance-potion):
	let A be appearance corresponding to an Magic of 4 in the Table of Drinks;
	now the backgroundColour of P is the TQcolour of A.

To decide which number is the alchemy key of (A - balance-potion):
	decide on 6.

Carry out quaffing balance-potion:
	say "You pull out the stopper and down the smoky liquid.";
	let flav-said be 0;
	if the noun is not cursed and the heel skill of the player < 10:
		say "You feel [unless there are worn heels]like you'll be [end if]more steady standing in heels! ";
		increase the raw heel skill of the player by 1;
		if the noun is blessed, increase the raw heel skill of the player by 1;
	otherwise if the noun is cursed:
		if there are worn heels and the player is upright, say "You feel [unless there are worn heels]like you'll be [end if][bold type]less[roman type] steady walking in heels!";
		decrease the raw heel skill of the player by 2;
	if diaper quest is 0 and the noun is not cursed:
		while the largeness of breasts > the flesh volume of hips + 1 and the player is not bottom heavy:
			let B be the flesh volume of breasts;
			BustDown 3;
			if the flesh volume of breasts < B:
				if flav-said is 0, say "Some of the weight in your [BreastDesc] starts to disappear, and reappear in your [ShortDesc of hips]!";
				now flav-said is 1;
				if weight gain fetish is 0, HipUp 1; [This increases both thickness and flesh volume]
				otherwise AssSwell 2;
				if the player is bottom heavy, break;
			otherwise:
				break; [If we're unable to shrink breasts further it's time to end]
		while the largeness of breasts + 1 < the flesh volume of hips and flav-said is not 1 and the player is not top heavy and the player is not a trap and (the thickness of hips > the real thickness of hips or weight gain fetish is 1):
			let H be the flesh volume of hips;
			if weight gain fetish is 0, HipDown 1;
			otherwise decrease the flesh volume of hips by 2;
			if the flesh volume of hips < 1, now the flesh volume of hips is 1; [to prevent accidental glitches, shouldn't be needed really]
			if the flesh volume of hips < H:
				if flav-said is 0, say "Some of the weight in your [ShortDesc of hips] starts to disappear, and reappear in your [BreastDesc]!";
				now flav-said is 2;
				BustUp 3.

Section 2 Potion of the Womb

womb-potion is a potion. The text-shortcut of womb-potion is "potw". Understand "womb" as womb-potion.
The backgroundColour of womb-potion is 16711935. [magenta]

Definition: womb-potion is fetish appropriate:
	if pregnancy fetish is 0, decide no;
	if the player is male and tg fetish is 0, decide no;
	decide yes.

To say MediumDesc of (B - womb-potion):
	say "potion of the womb".

To say ExamineDesc of (B - womb-potion):
	say "A round clear hip flask filled with a dose of smoky pink liquid. The label says that drinking it will help you get pregnant - or if you are already pregnant, it can pause or unpause the growth of your child. ";
	if B is sure and B is cursed, say "Since it is cursed, drinking it would probably make the pregnancy as inconvenient as possible. Perhaps you could find some other use for it, for example gifting.";
	otherwise say "[if B is sure and B is blessed]The blessed magic will likely try to choose a father who will be very appreciative that you gave [him of shopkeeper] a child.[otherwise][line break][end if]".

To decide which number is the alchemy key of (A - womb-potion):
	decide on 7.

Carry out quaffing womb-potion:
	say "You pull out the stopper and down the smoky liquid.";
	if the latex-transformation of the player > 3:
		say "Nothing seems to happen. Probably because of the latex curse...";
	otherwise if the player is possessing a vagina:
		if the pregnancy of the player is 0:
			[The player becomes pregnant]
			say ConceptionFlav;
			now the pregnancy of the player is 1;
			if the womb volume of vagina < 5, now the womb volume of vagina is 5;
			if the noun is blessed:
				now the father is shopkeeper;
			otherwise if there is an alive fairy and inhuman pregnancy > 0 and the noun is not cursed:
				now the father is a random alive fairy;
			otherwise:
				now the father is random creampie pole trap; [Tentacles for players who have them enabled]
				if the noun is cursed, compute sudden pregnancy;
				say "Your [BellyDesc] seems suddenly... inactive. But you still feel movement coming from inside your womb.";
				now the pregnancy of the player is 2;
			if the noun is not cursed, check sudden pregnancy;
		otherwise if the noun is cursed:
			say "The potion seems to have no effect.";
		otherwise if the pregnancy of the player is 1:
			[Pause the pregnancy]
			say "Your [BellyDesc] seems suddenly... inactive[if the largeness of belly > 6]. But you still feel kicking coming from inside your womb[end if].";
			now the pregnancy of the player is 2;
		otherwise if the pregnancy of the player is 2:
			[Unpause the pregnancy]
			say "Your [BellyDesc] feels active again.";
			now the pregnancy of the player is 1;
	otherwise:
		say DefaultSexchangeFlav;
		SexChange the player.

Section 3 Potion of Blessing

To decide which number is the alchemy key of (A - blessing-potion):
	decide on 8.

blessing-potion is a potion. The text-shortcut of blessing-potion is "pob". Understand "blessing" as blessing-potion.
The backgroundColour of blessing-potion is 4251856. [turquoise]

To say MediumDesc of (B - blessing-potion):
	say "potion of blessing".

To say ExamineDesc of (B - blessing-potion):
	say "A round clear hip flask filled with a dose of bright glowing blue liquid. The label says that drinking it will help you in your path to receiving a holy blessing, as long as you are in the Dungeon region. ";
	if B is sure and B is cursed, say "Since it is cursed, drinking it would probably somehow trick you into getting a curse. Perhaps you could find some other use for it, for example gifting.";
	otherwise say "[if B is sure and B is blessed]The blessed magic will likely allow the potion to work even from outside of the Dungeon.[otherwise][line break][end if]".

Carry out quaffing blessing-potion:
	say "You pull out the stopper and down the brightly glowing liquid.";
	if (the noun is not blessed and playerRegion is not Dungeon) or ((the player is trap stuck or the noun is cursed) and the player is not in Dungeon28):
		say "Nothing seems to happen.";
	otherwise if the player is not in Dungeon28:
		say "You feel yourself sucked through a portal. ";
		if the player is glue stuck, compute raw glue escaping a random glue in the location of the player with 1;
		say "The scenery around you slightly changes, and you are now in an altar room! ";
		teleport to Dungeon28;
		if map images > 0, display entire map;
	if the player is in Dungeon28 and (the charge of the dungeon altar > 0 or the noun is cursed):
		say "You feel that it is safe to pray at the altar.";
		if the noun is cursed, now the charge of the dungeon altar is 99;
		otherwise now the charge of the dungeon altar is 0;
		force inventory-focus redraw; [This forces the inventory window to redraw]
		force clothing-focus redraw; [This forces the clothing window to redraw]
	otherwise:
		say "Nothing seems to happen.".

Section 4 Potion of Bull Strength

bull-strength-potion is a potion. The text-shortcut of bull-strength-potion is "pbu". Understand "bull", "strength" as bull-strength-potion.
The backgroundColour of bull-strength-potion is 16382457. [white]

Definition: bull-strength-potion is fetish appropriate:
	if weight gain fetish is 1 and lactation fetish is 1, decide yes;
	decide no.

To say MediumDesc of (B - bull-strength-potion):
	say "potion of bull strength".

To say ExamineDesc of (B - bull-strength-potion):
	say "A round clear hip flask filled with a dose of murky white liquid. The label says that drinking it will give you the strength and body of a mighty bull. ";
	if B is sure and B is cursed, say "Since it is cursed, drinking it would probably only give you the body of a cow. Perhaps you could find some other use for it, for example gifting.";
	otherwise say "[if B is sure and B is blessed]The blessed magic will likely negate the body shape altering side effects of the potion.[otherwise][line break][end if]".

To decide which number is the alchemy key of (A - bull-strength-potion):
	decide on 12.

To decide what number is the original price of (A - bull-strength-potion):
	decide on 6.

This is the potion of bull strength specific recipe rule:
	if bull-strength-potion is fetish appropriate:
		now the Product in row 18 of the Table of Alchemy is 12;
		now the Recipe in row 18 of the Table of Alchemy is 1.
The potion of bull strength specific recipe rule is listed in the specific recipe rules.

To decide which text is RecipeDesc of (B - bull-strength-potion):
	decide on "This recipe says 'Horn Filled With Milk Matured In Your Belly'.".

Definition: bull-strength-potion is recipe specific: decide yes.

To compute recipe specific cursing of (T - bull-strength-potion):
	let K be the alchemy key of T;
	if the noun is bottle:
		if the fill-colour of the noun is white and the noun is horn and the noun is monster-origin:
			now T is bland;
			if the noun is blessed or (a random number between 1 and 4 <= the number of worn blue scrunchies and the class of the player is schoolgirl):
				now T is blessed;
		otherwise:
			now T is cursed;
	otherwise:
		now T is cursed.

Carry out quaffing bull-strength-potion:
	say "You pull out the stopper and down the murky white liquid.";
	if the noun is not cursed:
		say "You feel incredibly strong! Wow!";
		StrengthUp 10;
	unless the noun is blessed or (the flesh volume of thighs > 6 and the flesh volume of arms > 6 and the flesh volume of belly > 6 and the flesh volume of hips > 6):
		say "Your body instantly spills out as you instantly put on huge amounts of weight!";
		FatUp 20;
	if lactation fetish is 1 and cow-ears is off-stage and cow-ears is actually summonable:
		say "[bold type]A pair of fake cow ears materialise on your head.[roman type][line break]";
		summon cow-ears cursed;
		now the lactation-count of the player is 0.

Section 5 Space Mead

A space mead is a kind of potion. The printed plural name of space mead is "[alchemy-title-before]carafes of space mead[TQxlink of item described][verb-desc of item described]". There are 3 space meads. Understand "carafe", "carafe of" as space mead. The text-shortcut of space mead is "smd".
The backgroundColour of a space mead is 16766720. [golden]

Definition: a space mead is fetish appropriate:
	if alcohol fetish is 0, decide no;
	decide yes.

A game universe initialisation rule:
	let K be 1;
	repeat with W running through space mead:
		now the text-shortcut of W is the substituted form of "smd[K]";
		increase K by 1.

To say ShortDesc of (B - a space mead):
	say "space mead".

To say MediumDesc of (B - a space mead):
	say "carafe of space mead".

To say ExamineDesc of (B - a space mead):
	say "A small wine carafe with a strange golden liquid in it. It smells quite sweet but has a somewhat ominous shimmer to it that suggests this is something rather unusual. Drinking it would likely have both positive and negative effects. ";
	if B is sure and B is cursed, say "But since it is cursed, drinking it would probably only give you the negative effects.";
	otherwise say "[if B is sure and B is blessed]But the blessed magic will likely negate the bad side-effects of the potion.[otherwise][line break][end if]".

Carry out quaffing space mead:
	say "You drink the golden liquid.";
	if the noun is not cursed:
		if the player is deserving of more strength:
			say "Your muscles suddenly swell out for just an instant before returning with slightly more definition than previous!";
			StrengthUp 1;
		if the player is deserving of more dexterity:
			say "For just a moment your limbs twist to an impossible orientation before returning to normal. You feel a bit more limber afterwards.";
			DexUp 1;
		if the player is deserving of more intelligence:
			say "For an instant your mind opens up to an infinite vista of possibilities, and even after it fades you still feel somewhat [smarter].";
			IntUp 1;
	if the noun is not blessed:
		humiliate 500;
		say "It feels as though a vast emptiness has eaten away at your sense of self.";
	increase alcohol level.

Section 6 Potion of Luck

luck-potion is a potion. The text-shortcut of luck-potion is "plk". Understand "luck" as luck-potion.
The backgroundColour of luck-potion is 32768. [green]

To decide which number is the alchemy key of (A - luck-potion):
	decide on 34.

To say MediumDesc of (B - luck-potion):
	say "potion of luck".

To say ExamineDesc of (B - luck-potion):
	say "A round clear hip flask filled with a dose of bright glowing green liquid. The label claims that drinking it will improve your luck. ";
	if B is sure and B is cursed, say "Since it is cursed, drinking it would probably do the opposite. Perhaps you could find some other use for it, for example gifting.";
	otherwise say "[if B is sure and B is blessed]The blessing will enhance the effect of the potion.[otherwise][line break][end if]".

Carry out quaffing luck-potion:
	say "You pull out the stopper and down the green liquid.";
	if the noun is cursed:
		say "[bold type]You feel a curse take its hold on your soul![line break][variable custom style]Something tells me that I just made myself much more UNLUCKY...[roman type][line break]";
		decrease the raw luck of the player by 10;
	otherwise:
		say "[bold type]You feel an incredible surge of positivity flow through your veins.[line break][variable custom style]I feel much more lucky![roman type][line break]";
		if the noun is blessed, increase the raw luck of the player by 5;
		increase the raw luck of the player by 10.

Section 7 Potion of Magic

magic-potion is a potion. The text-shortcut of magic-potion is "pmg". Understand "magic" as magic-potion.
The backgroundColour of magic-potion is 16111219. [murky]

To decide which number is the alchemy key of (A - magic-potion):
	decide on 36.

To say MediumDesc of (B - magic-potion):
	say "potion of magic".

To say ExamineDesc of (B - magic-potion):
	say "A round clear hip flask filled with a dose of bright glowing murky liquid. The label claims that drinking it will improve and replenish your magic power. ";
	if B is sure and B is cursed, say "Since it is cursed, drinking it would probably lower your magic power instead. Perhaps you could find some other use for it, for example gifting.";
	otherwise say "[if B is sure and B is blessed]The blessing will somehow enhance the effect of the potion.[otherwise][line break][end if]".

Carry out quaffing magic-potion:
	say "You pull out the stopper and down the murky liquid.";
	if the noun is cursed:
		say "[bold type]You feel a curse flow through your veins!";
		MagicPowerDown 1;
	otherwise:
		MagicPowerUp 1;
		MagicPowerRefresh 10;
		if the noun is blessed:
			let S be a random uncastable fetish appropriate magic-spell;
			if S is magic-spell:
				say "[bold type]New arcane knowledge appears in your mind! You've learned a new spell![NewbieSpellFlav]";
				compute learning of S.

A powder is a kind of alchemy product. Understand "powder", "powder of" as a powder.

To say ShortDesc of (P - a powder):
	say "powder".

PowderRubbing it on is an action applying to two things.
Check PowderRubbing:
	if the noun is not powder, say "This verb is for applying powder to things." instead;
	if the second noun is not clothing, say "Powder should be applied to clothing." instead.

Carry Out PowderRubbing:
	check stealing of the noun;
	destroy the noun.

Understand "sprinkle [powder] on [something]" as PowderRubbing it on.

Figure of powder is the file "Items/Collectibles/powder1.png".
To decide which figure-name is the examine-image of (V - a powder):
	decide on the figure of powder.

Section 1 - Powder of Identification

identification-powder is a powder. The text-shortcut of identification-powder is "poi". Understand "identification" as identification-powder.

To say MediumDesc of (B - identification-powder):
	say "powder of identification".

To say ExamineDesc of (B - identification-powder):
	say "A small pinch of fine white powder in a tiny pouch. It looks like it is intended to be applied to clothing, to reveal its magic properties. ";
	if B is sure and B is cursed, say "Since it is cursed, using it would probably apply that curse to the clothing. Perhaps you could find some other use for it, for example gifting.";
	otherwise say "[if B is sure and B is blessed]The blessing might rub off onto the clothing.[otherwise][line break][end if]".

To decide which number is the alchemy key of (A - identification-powder):
	decide on 24.

Check PowderRubbing identification-powder on clothing:
	if the second noun is sure and the second noun is identified, say "[variable custom style]I already know the magic details of this item...[roman type][line break]" instead.

Carry Out PowderRubbing identification-powder on a thing:
	say "You sprinkle the powder onto the [ShortDesc of the second noun]. It glitters brightly as its magic properties are revealed to you! ";
	now the second noun is sure;
	now the second noun is identified;
	say "It is a [second noun][if the raw-magic-modifier of the second noun is 0 and the second noun is bland and the second noun is blandness].[line break][variable custom style]Hmm, how underwhelming[end if].[roman type][line break]";
	if the noun is cursed and the second noun is not cursed:
		say "Suddenly it is surrounded by a dark glow. ";
		curse the second noun;
		say "Oh no! The powder itself must have been cursed, as it is now a [second noun]! You must have created it with the wrong recipe...";
		if the second noun is clothing, compute quest of the second noun;
	if the noun is blessed and the second noun is blessable:
		say "[BigNameDesc of the second noun] is surrounded in a blue glow!";
		bless the second noun;
	force inventory-focus redraw. [This forces the inventory window to redraw]

Section 2 - Powder of Enhancement

enhancement-powder is a powder. The text-shortcut of enhancement-powder is "poe". Understand "enhancement" as enhancement-powder.
The backgroundColour of enhancement-powder is 32768. [green]

To say MediumDesc of (B - enhancement-powder):
	say "powder of enhancement".

To say ExamineDesc of (B - enhancement-powder):
	say "A small pinch of fine green powder in a tiny pouch. It looks like it is intended to be applied to clothing, to improve its magical power. ";
	if B is sure and B is cursed, say "Since it is cursed, using it would probably do the opposite. Perhaps you could find some other use for it, for example gifting.";
	otherwise say "[if B is sure and B is blessed]The blessing will double the enhancement.[otherwise][line break][end if]".

To decide which number is the alchemy key of (A - enhancement-powder):
	decide on 25.

Check PowderRubbing enhancement-powder on clothing:
	if the raw-magic-modifier of the second noun > 4 and the second noun is identified, say "[variable custom style]Something tells me that would be a complete waste.[roman type][line break]" instead.

Carry Out PowderRubbing enhancement-powder on a thing:
	say "You sprinkle the powder onto the [ShortDesc of the second noun]. ";
	let R be a random number between 2 and 6;
	if the second noun is cursed or the raw-magic-modifier of the second noun > 4 or R > the raw-magic-modifier of the second noun:
		say "A green glow surrounds it for a moment! ";
		if the noun is cursed:
			decrease the raw-magic-modifier of the second noun by 1;
		otherwise:
			increase the raw-magic-modifier of the second noun by 1;
			if the noun is blessed, increase the raw-magic-modifier of the second noun by 1;
		if the second noun is identified:
			say "It's now a [second noun]. [if the noun is cursed]Uh-oh, the powder itself must have been cursed! You must have created it with the wrong recipe...[otherwise]Nice![end if]";
		otherwise:
			say "That's probably a good thing, right?";
		if the second noun is worn, force clothing-focus redraw; [This forces the clothing window to redraw]
		otherwise force inventory-focus redraw; [This forces the inventory window to redraw]
	otherwise:
		say "Nothing happens, and the powder is wasted. Darn, that must mean it is [if the second noun is identified]too powerful[otherwise]a powerful item[end if] already!".

Section 3 - Powder of Resistance

resistance-powder is a powder. The text-shortcut of resistance-powder is "por". Understand "resistance" as resistance-powder.
The backgroundColour of resistance-powder is 15631086. [violet]

To say MediumDesc of (B - resistance-powder):
	say "powder of resistance".

To say ExamineDesc of (B - resistance-powder):
	say "A small pinch of fine purple powder in a tiny pouch. It looks like it is intended to be applied to clothing, to prevent it from transforming. ";
	if B is sure and B is cursed, say "Since it is cursed, using it would probably transform the clothing instead. Perhaps you could find some other use for it, for example gifting.";
	otherwise say "[if B is sure and B is blessed]The blessing will further enhance the resistance of the item.[otherwise][line break][end if]".

To decide which number is the alchemy key of (A - resistance-powder):
	decide on 26.

Check PowderRubbing resistance-powder on clothing:
	if the second noun is untransformable, say "This can't be transformed so you don't see the point." instead.

Carry Out PowderRubbing resistance-powder on a thing:
	say "You sprinkle the powder onto the [ShortDesc of the second noun]. ";
	if the noun is cursed:
		say "Instead of increasing the transformation resistance of it, it tries to transform it instead!";
		increase the transform-attempts of the second noun by 2;
		potentially transform the second noun;
		say "Darn, that must mean the powder itself must have been cursed! You must have created it with the wrong recipe...";
	otherwise:
		say "It glows a soft shade of purple, and you can tell that it's now more resistant to transformation.";
		increase the transform-resistance of the second noun by 3;
		if the noun is blessed, increase the transform-resistance of the second noun by 2.

Section 4 - Powder of Escape

escape-powder is a powder. The text-shortcut of escape-powder is "pox". Understand "escape" as escape-powder.
The backgroundColour of escape-powder is 12371660. [silver]

To say MediumDesc of (B - escape-powder):
	say "powder of escape".

To say ExamineDesc of (B - escape-powder):
	say "A small pinch of fine silver powder in a tiny pouch. It looks like it is intended to be applied to clothing, to allow for its immediate removal. ";
	if B is sure and B is cursed, say "Since it is cursed, using it would probably just make the clothing even more difficult to remove. Perhaps you could find some other use for it, for example gifting.";
	otherwise say "[if B is sure and B is blessed]The blessing would allow you to escape from an item that can't be removed for more than one reason.[otherwise][line break][end if]".

To decide which number is the alchemy key of (A - escape-powder):
	decide on 27.

Check PowderRubbing escape-powder on a thing:
	if the second noun is not worn clothing, say "[variable custom style]I should save this to use it on something that I'm wearing.[roman type][line break]" instead;
	if the second noun is headgear, say "[variable custom style]Something tells me that won't work.[roman type][line break]" instead;
	if the second noun is unremovable and the second noun is not uncursed piercing, say "[variable custom style]I think that's completely unremovable, even with this powder's magic.[roman type][line break]" instead.

Carry Out PowderRubbing escape-powder on a thing:
	let unlockGo be 1;
	say "You sprinkle the powder onto the [ShortDesc of the second noun]. ";
	if the noun is cursed:
		say "Instead of removing it, you feel it stick to you more firmly[if the second noun is not glued]. It is now glued[end if]! Darn, that must mean the powder itself must have been cursed! You must have created it with the wrong recipe...";
		now the second noun is glued;
		force clothing-focus redraw; [This forces the clothing window to redraw]
		now unlockGo is 0;
	if unlockGo is 1 and the second noun is locked:
		unless the noun is blessed, now unlockGo is 0;
		say "With a loud click, the lock opens!";
		now the second noun is unlocked;
	if unlockGo is 1 and the second noun is glued:
		unless the noun is blessed, now unlockGo is 0;
		say "With a quiet hiss, the glue disappears!";
		now the second noun is not glued;
	if unlockGo is 1 or the second noun is not cursed:
		say "With a flash of silver it is suddenly no longer on your body but instead in your [if there is a worn bag of holding][ShortDesc of a random worn bag of holding][otherwise]hands[end if]!";
		dislodge the second noun;
		now the second noun is carried by the player.

A salve is a kind of alchemy product. Understand "salve", "salve of" as a salve.
A true salve is a kind of alchemy product. Understand "salve", "salve of" as a true salve.
A true salve is wearable. A true salve is sure.
Definition: a true salve is product: decide no.

Definition: a salve is fetish appropriate:
	if diaper quest is 0, decide yes;
	decide no.

To say ShortDesc of (S - a salve):
	say "salve".
To say ShortDesc of (S - a true salve):
	say "salve".

Check taking off true salve:
	say "The only way this [noun] is coming off is if you wash it off." instead.

Figure of salve is the file "Items/Collectibles/salve1.png".
To decide which figure-name is the examine-image of (V - a salve):
	decide on the figure of salve.
To decide which figure-name is the examine-image of (V - a true salve):
	decide on the figure of salve.

Part 1 - Salve of Buoyancy

buoyancy-salve is a salve. The text-shortcut of buoyancy-salve is "sbo". Understand "buoyancy" as buoyancy-salve.
The backgroundColour of buoyancy-salve is 16753920. [orange]

To say MediumDesc of (C - buoyancy-salve):
	say "salve of buoyancy".

To say ExamineDesc of (C - buoyancy-salve):
	say "A small round metal container that contains an orange greasy lip-balm-like substance. The label says you are supposed to rub it on your [bold type]breasts[roman type], [bold type]belly[roman type] or [bold type]butt[roman type], to make that body part magically lighter. ";
	if C is sure and C is cursed, say "Since it is cursed, using it would probably do the opposite. Perhaps you could find some other use for it, for example gifting.";
	otherwise say "[if C is sure and C is blessed]The blessing will enhance the effect of the salve.[otherwise][line break][end if]".

To decide which number is the alchemy key of (A - buoyancy-salve):
	decide on 9.

A buoyant salve is a kind of true salve. The text-shortcut of buoyant salve is "bysv". There are 3 buoyant salve.
The backgroundColour of a buoyant salve is 16753920. [orange]

To say MediumDesc of (C - a buoyant salve):
	say "salve of buoyancy".

To say ExamineDesc of (C - a buoyant salve):
	say "You feel a salve making your [random backdrop covered by C] [if C is cursed]heavier[otherwise]lighter[end if].".

To oil (B - a body part) with (S - buoyancy-salve):
	if S is cursed, say "You somehow feel a bit heavier! Uh-oh...";
	otherwise say "You somehow feel a [if the noun is blessed]bit[otherwise]lot[end if] lighter!";
	let O be a random off-stage buoyant salve;
	now O is worn by the player;
	now the text-shortcut of O is the substituted form of "bysv[number of worn buoyant salves]";
	now O is covering B;
	now the magic-curse of O is the magic-curse of S.

Part 2 - Salve of Restriction

restriction-salve is a salve. The text-shortcut of restriction-salve is "sor". Understand "restriction" as restriction-salve.
The backgroundColour of restriction-salve is 255. [blue]

To say MediumDesc of (C - restriction-salve):
	say "salve of restriction".

To say ExamineDesc of (C - restriction-salve):
	say "A small round metal container that contains a blue greasy lip-balm-like substance. The label says you are supposed to rub it on your [bold type]breasts[roman type], [bold type]belly[roman type] or [bold type]butt[roman type], to prevent that body part from growing any larger. ";
	if C is sure and C is cursed, say "Since it is cursed, using it would probably do the opposite. Perhaps you could find some other use for it, for example gifting.";
	otherwise say "[if C is sure and C is blessed]The blessed magic will (attempt to) shrink the chosen body part.[otherwise][line break][end if]".

To decide which number is the alchemy key of (A - restriction-salve):
	decide on 10.

A restricting salve is a kind of true salve. A restricting salve has a number called charge. The text-shortcut of restricting salve is "rssv". There are 3 restricting salve.
The backgroundColour of a restricting salve is 255. [blue]

To say MediumDesc of (C - a restricting salve):
	say "salve of restriction".

To say ExamineDesc of (C - a restricting salve):
	say "The salve is [if C is cursed and C is sure]making your [random backdrop covered by C] grow over time[otherwise]holding your [random backdrop covered by C] in place[end if].".

A time based rule (this is the cursed restricting salve punishment rule):
	repeat with S running through cursed restricting salve covering body parts:
		increase the charge of S by 1;
		if the charge of S >= a random number between 30 and 50:
			now the charge of S is 0;
			if S is covering breasts and the player is not top heavy:
				say "The [S] makes your [BreastDesc] grow slightly in size!";
				BustUp 1;
			if S is covering belly and weight gain fetish is 1 and the flesh volume of belly < 10:
				increase the flesh volume of belly by 1;
				say "The [S] makes your [BellyDesc] get slightly fatter!";
			if S is covering hips:
				say "The [S] makes your [ShortDesc of hips] grow slightly in size!";
				HipUp 1.

To oil (B - a body part) with (S - restriction-salve):
	if S is blessed:
		say "You feel the magic of [NameDesc of S] try to shrink your [B].";
		if B is breasts:
			BustDown 3;
		otherwise if B is hips:
			HipDown 2;
		otherwise if B is belly:
			FatBellyDown 4;
	if S is cursed, say "Something feels wrong! Uh-oh...";
	otherwise say "You feel a bit more... stable.";
	let O be a random off-stage restricting salve;
	now O is worn by the player;
	now the text-shortcut of O is the substituted form of "rssv[number of worn restricting salves]";
	now O is covering B;
	now the magic-curse of O is the magic-curse of S.

Part 3 - Salve of Concealment

concealment-salve is a salve. The text-shortcut of concealment-salve is "slvc". Understand "concealment" as concealment-salve.
The backgroundColour of concealment-salve is 16776656. [creamy]

To say MediumDesc of (C - concealment-salve):
	say "salve of concealment".

To say ExamineDesc of (C - concealment-salve):
	say "A small round metal container that contains a cream greasy lip-balm-like substance. It seems like you are supposed to rub it on an orifice, to magically discourage your sexual partners from considering choosing it when deciding how to have sex with you. ";
	if C is sure and C is cursed, say "Since it is cursed, using it would probably make it even more difficult for you to influence how people choose to sleep with you. Perhaps you could find some other use for it, for example gifting.";
	otherwise say "[if C is sure and C is blessed]The blessed magic will make the body part magically hidden, so only the most powerful of beings will even be able to notice it's an option.[otherwise][line break][end if]".

To decide which number is the alchemy key of (A - concealment-salve):
	decide on 11.

A concealment salve is a kind of true salve. The text-shortcut of concealment salve is "ccsv". There are 2 concealment salve.
The backgroundColour of a concealment salve is 16776656. [creamy]

To say MediumDesc of (C - a concealment salve):
	say "salve of concealment".

To say ExamineDesc of (C - a concealment salve):
	if C is cursed, say "You feel that [NameDesc of C] is somehow preventing you from being able to influence which way people choose to have sex with you.";
	otherwise say "[if C is blessed][BigNameDesc of C] is making your [random backdrop covered by C] magically invisible[otherwise]Your eye slides uncomfortably by your [random backdrop covered by C][end if].".

To oil (B - a body part) with (S - concealment-salve):
	let O be a random off-stage concealment salve;
	now O is worn by the player;
	now the text-shortcut of O is the substituted form of "ccsv[number of worn concealment salves]";
	now O is covering B;
	now the magic-curse of O is the magic-curse of S;
	say ExamineDesc of O;
	if O is cursed, say "[variable custom style]Uh-oh...[roman type][line break]".

This is the salve pussy slut rule:
	if there is an uncursed concealment salve covering vagina, decrease the desirability of vagina by 10.
The salve pussy slut rule is listed in the pussy slut eligibility rules.

This is the salve butt slut rule:
	if there is an uncursed concealment salve covering asshole, decrease the desirability of asshole by 10.
The salve butt slut rule is listed in the butt slut eligibility rules.

SalveRubbing it on is an action applying to two things.

Check SalveRubbing:
	if the noun is powder, try PowderRubbing the noun on the second noun instead;
	if the noun is lubricant, try orilubing the noun with the second noun instead;
	if the noun is glue, try GlueRubbing the second noun on the noun instead;
	if the second noun is glue, try GlueRubbing the noun on the second noun instead;
	if the noun is not salve and the noun is not ectoplasm, say "I understood the verb as you wanting to apply a salve, but then the noun was not a salve." instead;
	if the noun is buoyancy-salve or the noun is restriction-salve:
		if the second noun is not breasts and the second noun is not hips and the second noun is not belly, say "You can only apply a salve to your [bold type]breasts[roman type], your [bold type]belly[roman type] or your [bold type]ass[roman type] at the moment." instead;
	if the noun is concealment-salve:
		if the second noun is hips, now the second noun is asshole;
		if the player is not possessing a vagina and second noun is not asshole, say "You can only apply this salve to your [bold type][asshole][roman type]!" instead;
		if the second noun is not asshole and the second noun is not vagina, say "You can only apply this salve to your [bold type][asshole] or [vagina][roman type]!" instead;
	if the second noun is breasts:
		if there is a worn true salve covering breasts:
			say "You already have the [printed name of random worn true salve covering breasts] covering your breasts!" instead;
		if the player is wrist bound behind, say "You can't reach your chest to apply the salve whilst your wrists are bound behind you." instead;
		if there is a worn bra:
			if the support of a random worn bra > 0 and a random worn bra is actually breast covering, say "You would need to remove your [printed name of random worn bra] first." instead; [A support of 0 means the bra is cupless]
		if there is a worn actually breast covering overdress, say "You would need to remove your [printed name of random worn overdress] first." instead;
	otherwise if the second noun is belly:
		if there is a worn true salve covering belly:
			say "You already have the [printed name of random worn true salve covering belly] covering your belly!" instead;
		if the player is wrist bound behind, say "You can't reach your belly to apply the salve whilst your wrists are bound behind you." instead;
		if there is a worn corset:
			say "You would need to remove your [printed name of random worn corset] first." instead;
		if there is a worn overdress:
			if a random worn overdress is belly covering, say "You would need to remove your [printed name of random worn overdress] first." instead;
	otherwise if the second noun is hips:
		let O be a random worn crotch covering overdress;
		let K be a random worn knickers;
		if there is a worn true salve covering hips:
			say "You already have the [printed name of random worn true salve covering hips] covering your ass!" instead;
		if the player is wrist bound in front, say "You can't really reach your butt properly to apply the salve whilst your wrists are bound in front of you." instead;
		if K is clothing:
			if the armour of K > 6, say "Your [printed name of K] are covering too much of your butt, you would need to remove them first." instead;
		if O is clothing:
			unless O is no protection, say "Your [printed name of O] is covering too much of your butt, you would need to [if O is displacable]displace[otherwise]remove[end if] it first." instead;
	otherwise if the second noun is asshole:
		if there is a worn true salve covering asshole:
			say "You already have the [printed name of random worn true salve covering asshole] covering your [asshole]!" instead;
		if there is ass covering clothing:
			say "Your [printed name of random ass covering clothing] is covering your [asshole]!" instead;
	otherwise if the second noun is vagina:
		if there is a worn true salve covering vagina:
			say "You already have the [printed name of random worn true salve covering vagina] covering your [vagina]!" instead;
		if there is a pussy covering clothing:
			say "Your [printed name of random pussy covering clothing] is covering your [vagina]!" instead;
	otherwise if the noun is ectoplasm:
		if the second noun is not clothing or the second noun is accessory or the second noun is headgear or the second noun is stockings or the second noun is heels, say "You can't really rub it on properly. It's like the slime refuses to soak into it!" instead;
		[if the second noun is worn, say "You can't really rub it on properly when you're already wearing it." instead;]
		if the second noun is not fluid vulnerable, say "That doesn't like it would absorb any of the slime." instead;
		if the second noun is possession, say "You try, but it doesn't do anything." instead.

Carry out SalveRubbing:
	allocate 6 seconds;
	let S be the noun;
	let B be the second noun;
	if B is body part:
		say "You gingerly rub [NameDesc of S] [if B is fuckhole]around[otherwise]onto[end if] your [ShortDesc of B] and wait to see what will happen.";
	otherwise:
		say "Your [printed name of B] seems to tremble unnaturally as you rub the slime into the fabric.";
	oil B with S;
	check stealing of S;
	destroy S.

Understand "rub [something] on [something]", "rub [something] into [something]", "apply [something] on [something]", "apply [something] to [something]", "apply [something] into [something]" as SalveRubbing it on.

A tincture is a kind of alchemy product. Understand "tincture", "tincture of" as a tincture.

To say ShortDesc of (T - a tincture):
	say "tincture".

Definition: a tincture is drink themed: decide yes.

To decide what number is the original price of (A - a tincture):
	decide on 7.

Figure of tincture is the file "Items/Collectibles/tincture1.png".
To decide which figure-name is the examine-image of (V - a tincture):
	decide on the figure of tincture.

Section 1 Tincture of Strength

strength-tincture is a tincture. The text-shortcut of strength-tincture is "tis". Understand "strength" as strength-tincture. strength-tincture has a number called strength-bonus. strength-tincture has a number called strength-timer. [Bonus is the amount of strength to add. Timer is the amount of seconds it lasts for.]

To say MediumDesc of (C - strength-tincture):
	say "tincture of strength".

To say ExamineDesc of (C - strength-tincture):
	say "A tiny glass vial filled with a small dose of glowing [appearance corresponding to an Magic of 2 in the Table of Drinks] liquid. The label claims that it will make you extremely powerful for a short while, but that once the energy disperses, you may be left with some side-effects. ";
	if C is sure and C is cursed, say "Since it is cursed, using it would probably make the duration of your power disappointingly short. Perhaps you could find some other use for it, for example gifting.";
	otherwise say "[if C is sure and C is blessed]The blessed magic will make the duration of the power significantly longer.[otherwise][line break][end if]".

To update background colour of (T - strength-tincture):
	let A be appearance corresponding to an Magic of 2 in the Table of Drinks;
	now the backgroundColour of T is the TQcolour of A.

To decide which number is the alchemy key of (A - strength-tincture):
	decide on 1.

Carry out quaffing strength-tincture:
	say "You pull out the tiny stopper and down the glowing liquid.[unless saved-flat-strength > 26]You feel much, much stronger! [one of][line break][variable custom style]Wooow![roman type][line break][or][stopping]Time to go kick some ass![end if]";
	let T be a random number between 10 and 15;
	now strength-timer of strength-tincture is T * 6;
	while saved-flat-strength < 30 and T > 0:
		decrease T by 1;
		increase strength-bonus of strength-tincture by 1;
		now saved-flat-strength is the flat strength of the player;
	if the noun is cursed, now strength-timer of strength-tincture is 7;
	if the noun is blessed, increase strength-timer of strength-tincture by 20.

An all time based rule (this is the strength tincture decay rule):
	if strength-timer of strength-tincture > 0:
		decrease strength-timer of strength-tincture by time-seconds;
		if strength-timer of strength-tincture <= 0:
			now strength-timer of strength-tincture is 0;
			if strength-bonus of strength-tincture > 0, say "[bold type]Your magical superhuman strength fades. As the energy disperses from your muscles, you feel your body expand rapidly![line break][variable custom style]Oh no...![roman type]";
			while strength-bonus of strength-tincture > 0:
				let R be a random number between 1 and 5;
				if R is 1 and the player is not top heavy:
					BustUp 1;
				if R is 2 and the player is not bottom heavy:
					HipUp 1;
				if R is 3 and weight gain fetish is 1 and strength-bonus of strength-tincture > 2:
					FatUp 4;
				decrease strength-bonus of strength-tincture by 1.

Section 2 Tincture of Acceleration

acceleration-tincture is a tincture. The text-shortcut of acceleration-tincture is "tia". Understand "acceleration" as acceleration-tincture. acceleration-tincture has a number called acceleration-bonus. acceleration-tincture has a number called acceleration-timer. [Bonus is the amount of dexterity to add. Timer is the amount of seconds it lasts for.]

To say MediumDesc of (C - acceleration-tincture):
	say "tincture of acceleration".

To say ExamineDesc of (C - acceleration-tincture):
	say "A tiny glass vial filled with a small dose of glowing [appearance corresponding to an Magic of 1 in the Table of Drinks] liquid. The label claims that it will make you extremely fast for a short while, but that side-effects include the inconvenient speeding up of your bodily functions. ";
	if C is sure and C is cursed, say "Since it is cursed, using it would probably only give you the side-effects. Perhaps you could find some other use for it, for example gifting.";
	otherwise say "[if C is sure and C is blessed]The blessed magic will make the duration of the acceleration significantly longer.[otherwise][line break][end if]".

To update background colour of (T - acceleration-tincture):
	let A be appearance corresponding to an Magic of 1 in the Table of Drinks;
	now the backgroundColour of T is the TQcolour of A.

To decide which number is the alchemy key of (A - acceleration-tincture):
	decide on 2.

Carry out quaffing acceleration-tincture:
	say "You pull out the tiny stopper and down the glowing liquid. [unless saved-flat-dexterity > 26 or the noun is cursed]Time seems to noticeably slow down around you, giving you loads of time to react to things. [one of][line break][variable custom style]Wooow![roman type][line break][or][stopping]You feel like running a marathon![end if][line break]Your [BellyDesc] rumbles worryingly...";
	let T be a random number between 10 and 15;
	now acceleration-timer of acceleration-tincture is T * 6;
	while saved-flat-dexterity < 30 and T > 0:
		decrease T by 1;
		increase acceleration-bonus of acceleration-tincture by 1;
	if the noun is cursed, now acceleration-bonus of acceleration-tincture is 0;
	if the noun is blessed, increase acceleration-timer of acceleration-tincture by 20.

An all time based rule (this is the acceleration tincture decay rule):
	if acceleration-timer of acceleration-tincture > 0:
		decrease acceleration-timer of acceleration-tincture by time-seconds;
		if acceleration-timer of acceleration-tincture <= 0:
			now acceleration-timer of acceleration-tincture is 0;
			if acceleration-bonus of acceleration-tincture > 0:
				now acceleration-bonus of acceleration-tincture is 0;
				say "[bold type]Time speeds back up to normal.[roman type][line break]";
		otherwise:
			if the pregnancy of the player > 0 and the pregnancy of the player < 3 and the largeness of belly < 10:
				increase the womb volume of vagina by 1;
			if the stomach of the player > 1 and the thirst of the player < 5:
				stomachdown 1;
				if watersports mechanics is 1, increase the delayed bladder of the player by 1;
			if the lactation rate of the player > 1:
				MilkUp 1;
			if the lactation rate of the player is 1 and a random number between 1 and 2 is 1:
				MilkUp 1;
			if the womb volume of vagina > 1 and acceleration-timer of acceleration-tincture < 48 and the player is able to get pregnant and the number of family things > 0:
				say ConceptionFlav;
				now the pregnancy of the player is 1;
				check sudden pregnancy;
			if the player is upright and acceleration-bonus of acceleration-tincture > 0, increase the fat-burning of the player by 20.

Section 3 Tincture of Luck

luck-tincture is a tincture. The text-shortcut of luck-tincture is "til". Understand "luck" as luck-tincture. luck-tincture has a number called luck-timer. [Timer is the amount of seconds it lasts for.]
The backgroundColour of luck-tincture is 16766720. [golden]

To say MediumDesc of (C - luck-tincture):
	say "tincture of Liquid Luck".

To say ExamineDesc of (C - luck-tincture):
	say "A tiny glass vial filled with a small dose of glowing golden liquid. The label claims that it will make you extremely lucky for a short while. ";
	if C is sure and C is cursed, say "Since it is cursed, using it would probably only make you THINK you were lucky, and perhaps in fact leave you a lot less lucky than you are now. Perhaps you could find some other use for it, for example gifting.";
	otherwise say "[if C is sure and C is blessed]The blessed magic will make the duration of the luck significantly longer.[otherwise][line break][end if]".

To decide which number is the alchemy key of (A - luck-tincture):
	decide on 35.

Carry out quaffing luck-tincture:
	say "You pull out the tiny stopper and down the golden liquid. A golden aura begins to shimmer around you.[line break][variable custom style][one of]I feel amazing! Maybe I should look for things that would usually require me to get lucky...[or]I feel lucky![stopping][roman type][line break]";
	let T be a random number between 10 and 15;
	now luck-timer of luck-tincture is T * 6;
	if the noun is cursed, decrease the raw luck of the player by 25;
	if the noun is blessed, increase luck-timer of luck-tincture by 20.

An all time based rule (this is the luck tincture decay rule):
	if luck-timer of luck-tincture > 0:
		decrease luck-timer of luck-tincture by time-seconds;
		if luck-timer of luck-tincture <= 0:
			now luck-timer of luck-tincture is 0;
			say "[bold type]Your lucky golden haze has faded.[roman type][line break]".

Alchemy Products ends here.
