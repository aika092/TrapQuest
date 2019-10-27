Bombs by Crafting begins here.

A bomb is a kind of alchemy product. Understand "bomb" as a bomb.

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
	destroy the noun.

Understand "throw [bomb] to [direction]", "throw [bomb] to escape [direction]" as SmokeBombing it to.

Figure of bomb is the file "Items/Collectibles/bomb1.png".
To decide which figure-name is the examine-image of (V - a bomb):
	decide on the figure of bomb.


Section 1 - Smoke Bomb

A smoke bomb is a kind of bomb. The printed name of smoke bomb is "[TQlink of item described]smoke bomb[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of smoke bomb is "smkb". There are 8 smoke bombs.

To say ExamineDesc of (B - a smoke bomb):
	say "A small dark grey ball. Throwing it at the ground will allow you to escape in a direction.".

To decide which number is the alchemy key of (A - a smoke bomb):
	decide on 29.

To BackgroundRender (T - a smoke bomb) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of grey in the current focus window at X1 by Y1 with size DX by DY.

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
		say "For a few moments, [if the number of person in the location of the player > 1]nobody can[otherwise]you can't[end if] see anything!";
		repeat with M running through interested monsters in the location of the player:
			if the blind-status of M is -1:
				say "[BigNameDesc of M] seems to be immune to the effects of the smoke!";
			otherwise:
				let F be the favour of M;
				bore M for 0 seconds;
				now the favour of M is F; [no favour change]
				now M is moved; [won't move again this turn]
		try going the second noun.

Section 2 - Water Bomb

water-bomb is a bomb. water-bomb has a number called cum-known. The printed name of water-bomb is "[TQlink of item described][if the cum-known of water-bomb is 0]water[otherwise]cum[end if] bomb[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of water-bomb is "wbmb". Understand "water" as water-bomb when the cum-known of water-bomb is 0 and the number of water-body-scenery in the location of the player is 0. Understand "cum" as water-bomb when the cum-known of water-bomb is not 0.

Definition: water-bomb is semen themed if the cum-known of water-bomb is 1.
Definition: water-bomb is combat-bomb: decide yes.

To say ExamineDesc of (B - water-bomb):
	say "A large thin balloon containing a heavy liquid. Throwing it at an enemy might blind or otherwise incapacitate them.".

To decide which number is the alchemy key of (A - water-bomb):
	decide on 30.

To decide which figure-name is the examine-image of (V - water-bomb):
	decide on the figure of water bomb.

Check throwing water-bomb at a monster:
	if the player is immobile, say "It's a bit late for that, don't you think?" instead;
	allocate 4 seconds;
	if water-bomb is cursed or the player is prone or fake-nails is worn:
		say "You grip the [noun] tight and prepare to launch it at [NameDesc of the second noun]. [if water-bomb is cursed]You throw it and it appears on target, but suddenly, almost as if it was cursed to do so, it changes direction in mid-air and heads straight back towards you! You have no time to dodge before it collides with your nose where [otherwise if fake-nails is worn]But your sharp nails press against the delicate rubber and [otherwise]However from your position on your knees it's difficult to keep your balance and not grip it [italic type]too[roman type] tightly, and [end if]it explodes in your face, blinding you!";
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
			increase the blind-status of the second noun by a random number between 3 and 8;
		if the second noun is friendly or the second noun is not interested, compute damage of the second noun;
	destroy the noun;
	now the cum-known of water-bomb is 1 instead;
	do nothing instead.

Check TQEating water-bomb when the cum-known of water-bomb > 0:
	let BL be a random off-stage bag lunch;
	if BL is bag lunch:
		now BL is in Holding Pen;
		try TQEating BL;
		if BL is off-stage: [eating was successful]
			destroy water-bomb instead;
			do nothing instead;
		otherwise:
			destroy BL.

Section 3 - Energy Bomb

energy-bomb is a bomb. The printed name of energy-bomb is "[TQlink of item described]energy bomb[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of energy-bomb is "nrgb". Understand "energy" as energy-bomb.

Definition: energy-bomb is combat-bomb: decide yes.

To say ExamineDesc of (B - energy-bomb):
	say "A small glass sphere containing what looks like constantly sparking red electricity. Throwing it at an enemy might turn a fight in your favour.".

To decide which number is the alchemy key of (A - energy-bomb):
	decide on 31.

To BackgroundRender (T - energy-bomb) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of scarlet in the current focus window at X1 by Y1 with size DX by DY.

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
		damage 15 on the second noun;
		now latestCombatFocus is the second noun;
	destroy the noun instead;
	do nothing instead.

Section 4 - Time Bomb

timeBombTime is a number that varies.
time-bomb is a bomb. time-bomb is blessed. [for testing] The printed name of time-bomb is "[TQlink of item described]time bomb[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of time-bomb is "timb". Understand "time" as time-bomb.

To say ExamineDesc of (B - time-bomb):
	say "A small glass sphere containing some kind of green energy. Activating it might allow you to do something really cool.".

To decide which number is the alchemy key of (A - time-bomb):
	decide on 32.

To BackgroundRender (T - time-bomb) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of lime in the current focus window at X1 by Y1 with size DX by DY.

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
				bore M for 0 seconds;
		otherwise:
			let here-monsters be the list of monsters in the location of the player;
			let E be the number of entries in here-monsters;
			if E > 0:
				repeat with M running through here-monsters:
					regionally place M;
					bore M for 0 seconds;
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
		if the player is female:
			now the semen volume of vagina is 30;
			now the womb volume of vagina is 5;
			now a random creampie pole trap is inseminating vagina;
			now the soreness of vagina is 10;
			if the virgin of the player is 1, compute virginity loss;
			check sudden pregnancy;
		PukeUp the stomach-semen of the player;
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
Check kneeing a monster when timeBombTime > 0:
	say "[BigNameDesc of the noun] is frozen in time stasis and seems immune to your attacks." instead.
Check kicking a monster when timeBombTime > 0:
	say "[BigNameDesc of the noun] is frozen in time stasis and seems immune to your attacks." instead.

To progress stopped time:
	if timeBombTime > 0:
		decrease timeBombTime by 1;
		if timeBombTime is 0, say "Time seems to start moving normally again.".


Section 5 - Nail Bomb

nail-bomb is a bomb. nail-bomb is blessed. [for testing] The printed name of nail-bomb is "[TQlink of item described]nail bomb[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of nail-bomb is "naib". Understand "nail" as nail-bomb.

To say ExamineDesc of (B - nail-bomb):
	say "A small glass sphere containing several small pink shards. It seems like it would be most sensible to use this in combat.".

To decide which number is the alchemy key of (A - nail-bomb):
	decide on 33.

To BackgroundRender (T - nail-bomb) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of magenta in the current focus window at X1 by Y1 with size DX by DY.

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
			say "Moments later you are wearing a set of long and slutty pink fake nails. Wow that was fast! You are immediately filled with a horrible sense of dread; almost all you can think about is [if the player is horny]how horny you are and [end if]how awful, and painful, it would be if any of your nails were to break. The invasive thought is so powerful that you also feel significantly weaker and slower as your mind makes you think twice about every action you take.";
			summon fake-nails cursed;
		otherwise if fake-nails is not cursed:
			say "They apply themselves on top of your [fake-nails], returning them to a cursed delicate state.";
			now fake-nails is cursed;
		otherwise:
			say "They try to apply themselves on top of your [fake-nails], but since they are already as delicate and bimbo-like as could be, nothing happens.";
	otherwise:
		if nail-bomb is blessed and there is a friendly monster in the location of the player, say "The shards fly out and hit [if the number of dangerous monsters in the location of the player > 1]all enemies[otherwise][NameDesc of a random dangerous monster in the location of the player][end if], the blessing of the nail bomb guiding them true so that they only hit those that are currently fighting you.";
		otherwise say "The shards fly out and hit [if the number of monsters in the location of the player > 1]everyone else in the room[otherwise][NameDesc of a random monster in the location of the player][end if]!";
		now attack-type is 4;
		repeat with M running through monsters in the location of the player:
			if nail-bomb is bland or M is dangerous:
				damage a random number between 9 and 12 on M;
				now latestCombatFocus is M;
	destroy the noun instead;
	do nothing instead.

Bombs ends here.

