Alchemy Products by Crafting begins here.

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

To decide which number is the outrage of (A - water-bomb):
	decide on 20 * the cum-known of water-bomb.

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
		if the second noun is friendly or the second noun is not interested, compute standard damage of the second noun;
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
		if nail-bomb is blessed and there is a friendly monster in the location of the player, say "The shards fly out and hit [if the number of dangerous monsters in the location of the player > 1]all enemies[otherwise][NameDesc of a random dangerous monster in the location of the player][end if], the blessing of the nail bomb guiding them true so that they only hit those that are currently fighting you.";
		otherwise say "The shards fly out and hit [if the number of monsters in the location of the player > 1]everyone else in the room[otherwise][NameDesc of a random monster in the location of the player][end if]!";
		now attack-type is 4;
		repeat with M running through monsters in the location of the player:
			if nail-bomb is bland or M is dangerous:
				damage a random number between 9 and 12 on M;
				now latestCombatFocus is M;
	destroy the noun instead;
	do nothing instead.

An elixir is a kind of alchemy product. Understand "elixirs" as an elixir.

Definition: an elixir is drink themed: decide yes.

Figure of elixir is the file "Items/Collectibles/elixir1.png".
To decide which figure-name is the examine-image of (V - an elixir):
	decide on the figure of elixir.

Section 1 Elixir of Magnetism

An elixir of magnetism is a kind of elixir. The printed name of elixir of magnetism is "[TQlink of item described]elixir of magnetism[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of elixir of magnetism is "[TQlink of item described]elixirs of magnetism[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of elixir of magnetism is "em". There are 3 elixir of magnetism.

To say ExamineDesc of (B - an elixir of magnetism):
	say "A small glass flask filled with a small dose of shimmering purple liquid. It looks like it could do something useful if you drank it, but who knows when it would be appropriate to drink, and if there are any side effects...".

To BackgroundRender (T - an elixir of magnetism) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of violet in the current focus window at X1 by Y1 with size DX by DY.

To decide which number is the alchemy key of (A - an elixir of magnetism):
	decide on 3.

magnetism-timer is a number that varies. magnetism-timer is 0.

Carry out quaffing elixir of magnetism:
	say "You pull out the tiny stopper and down the glowing liquid. You feel more... present, as if [bold type]people are now being drawn towards you.[roman type][line break]";
	let R be a random number between 20 and 25;
	if the noun is blessed, increase R by 6;
	now magnetism-timer is R * 6;
	repeat with M running through alive monsters:
		now the scared of M is 0;
	if the noun is not cursed and the player is in danger:
		repeat with M running through unfriendly interested monsters in the location of the player:
			if M is penetrating a body part or M is grabbing the player or M is not scarable:
				say "[BigNameDesc of M][']s eyes open wide for a moment, but then it passes.";
			otherwise:
				now the scared of M is magnetism-timer;
				say "[one of]As if mind controlled, the[or]The[stopping] [M] turns tail and starts fleeing away from you!".

A time based rule (this is the magnetism elixir decay rule):
	if magnetism-timer > 0:
		decrease magnetism-timer by time-seconds;
		if magnetism-timer < 0, now magnetism-timer is 0.

Section 2 Elixir of Life

An elixir of life is a kind of elixir. The printed name of elixir of life is "[TQlink of item described]elixir of life[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of elixir of life is "[TQlink of item described]elixirs of life[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of elixir of life is "el". There are 3 elixir of life.

To say ExamineDesc of (B - an elixir of life):
	say "A small glass flask filled with a small dose of shimmering green liquid. It looks like it could do something useful if you drank it, but who knows when it would be appropriate to drink, and if there are any side effects...".

To BackgroundRender (T - an elixir of life) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of green in the current focus window at X1 by Y1 with size DX by DY.

To decide which number is the alchemy key of (A - an elixir of life):
	decide on 4.

[Bonus is the amount of strength to add. Timer is the amount of seconds it lasts for.]
life-elixir-timer is a number that varies. life-elixir-timer is 0.

Carry out quaffing elixir of life:
	say "You pull out the tiny stopper and down the glowing liquid. [if the body soreness of the player > 0 or the soreness of asshole > 0 or the soreness of vagina > 0 and the noun is not cursed]You start to feel... healthier, as if some kind of magic particle is running around your body, healing your wounds. The particle gets to your belly. ";
	if the player is male:
		say DefaultSexchangeFlav;
		SexChange the player;
		say "But the elixir hasn't finished yet! ";
	if the pregnancy of the player is 0, say "Your [BellyDesc] rumbles[if the largeness of belly < 4] and slightly expands[end if]. You feel a small kick coming from within. [if the children of the player is 0][line break][variable custom style]No way... [roman type][line break][end if]It looks like you're pregnant[if the children of the player > 0] again[end if]!";
	otherwise say "Your [BellyDesc] rumbles, and energy rushes to your womb. For a brief moment you can feel your womb perfectly - you can feel exactly where it is, how swollen and expanded it is, and you can feel your baby inside with as if the inside lining of your womb had all the sensitive nerve endings of your hand. As you [if the player is upright]stand[otherwise]lie[end if] there stunned, the feeling disappears and your [vagina] is left with a dull, throbbing ache as if it can't wait to feel the sensation of being stretched beyond its limits and giving birth[if the children of the player > 0] again[end if].";
	allocate 6 seconds;
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
		let R be a random number between 20 and 25;
		if the noun is blessed, increase R by 20;
		now life-elixir-timer is R * 20.

A time based rule (this is the life elixir decay rule):
	if life-elixir-timer > 0:
		decrease life-elixir-timer by time-seconds;
		if life-elixir-timer < 0, now life-elixir-timer is 0;
		if the remainder after dividing time-earnings by 12 < time-seconds:
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

An elixir of invigoration is a kind of elixir. The printed name of elixir of invigoration is "[TQlink of item described]elixir of invigoration[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of elixir of invigoration is "[TQlink of item described]elixirs of invigoration[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of elixir of invigoration is "ei". There are 3 elixir of invigoration.

To say ExamineDesc of (B - an elixir of invigoration):
	say "A small glass flask filled with a small dose of shimmering [if the bimbo of the player < 6]creamy[otherwise][second custom style][semen]-like[roman type][end if] liquid. It looks like it could do something useful if you drank it, but who knows when it would be appropriate to drink, and if there are any side effects...".

To BackgroundRender (T - an elixir of invigoration) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of creamy in the current focus window at X1 by Y1 with size DX by DY.

To decide which number is the alchemy key of (A - an elixir of invigoration):
	decide on 5.

invigoration-elixir-timer is a number that varies. invigoration-elixir-timer is 0.

Carry out quaffing elixir of invigoration:
	say "You pull out the small stopper and drink the creamy liquid. You feel your [fuckholes] pulse gently.";
	let R be a random number between 20 and 25;
	if the noun is blessed, increase R by 6;
	if the noun is cursed, decrease R by 19;
	now invigoration-elixir-timer is R * 6.

A time based rule (this is the invigoration elixir decay rule):
	if invigoration-elixir-timer > 0:
		decrease invigoration-elixir-timer by time-seconds;
		if invigoration-elixir-timer < 0, now invigoration-elixir-timer is 0.

[Section 4 Elixir of Siphoning

A elixir of siphoning is a kind of elixir. The printed name of elixir of siphoning is "[TQlink of item described]elixir of siphoning[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of elixir of siphoning is "[TQlink of item described]elixirs of siphoning[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of elixir of siphoning is "esp". There are 2 elixir of siphoning.

To say ExamineDesc of (B - a elixir of siphoning):
	say "A round clear hip flask filled with a dose of shimmering red liquid. It looks like it could do something useful if you drank it, but who knows when it would be appropriate to drink, and if there are any side effects...".

To BackgroundRender (T - a elixir of siphoning) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of red in the current focus window at X1 by Y1 with size DX by DY.

To decide which number is the alchemy key of (A - a elixir of siphoning):
	decide on 34.

siphoning-elixir-timer is a number that varies. siphoning-elixir-timer is usually 0.
siphoning-elixir-charge is a number that varies. siphoning-elixir-charge is usually 0.

Carry out quaffing elixir of siphoning:
	say "You pull out the small stopper and drink the shimmering liquid. You feel... hungry. You're not sure what that means";
	let R be a random number between 20 and 25;
	if the noun is blessed, now siphoning-elixir-charge is 100;
	if the noun is cursed, now siphoning-elixir-charge is -1;
	if the noun is not blessed and the noun is not cursed, now siphoning-elixir-charge is 1;
	now siphoning-elixir-timer is R.

A time based rule (this is the siphoning elixir decay rule):
	if siphoning-elixir-timer > 0:
		decrease siphoning-elixir-timer by time-seconds;
		if siphoning-elixir-timer < 0:
			say "You feel a wave of pleasure as your stored energy is fully absorbed into your body.";
			if siphoning-elixir-charge > 100:
				decrease siphoning-elixir-charge by 100;
				let X be siphoning-elixir-charge;
				if the player is female or the size of penis is 10:
					if the virgin of the player is 1 and the player is not originally female and sex-changed < 2 and the player is female:[if you haven't seen your real body since changing into a woman, AND you're a virgin, then you can change back]
						say "Suddenly you feel your insides behind your crotch twisting and turning and rearranging themselves, and you yelp in surprise as you realise your [vagina] has been replaced by your original [player-penis]!";
						ReverseSexChange the player;
					otherwise:
						say "You feel smarter!";
						IntUp X / 2;
				otherwise:
					say "Your [player-penis] grows!";
					PenisUp X / 2;
				say "You feel stronger!";
				StrengthUp X / 2;
			otherwise if siphoning-elixir-charge > 0:
				let X be siphoning-elixir-charge;
				if the player is female or the size of penis is 10:
					say "You feel smarter!";
					IntUp X / 3;
				otherwise:
					say "Your [player-penis] grows!";
					PenisUp X / 3;
				say "You feel stronger!";
				StrengthUp X / 3;
			otherwise:
				let X be siphoning-elixir-charge * -1;
				if the size of penis > 0:
					say "Your [player-penis] shrinks!";
					PenisDown (X / 2) + 1;
				otherwise:
					say "You feel dumber.";
					IntDown (X / 2) + 1;
				say "You feel weaker.";
				StrengthDown X / 2;
			say "You feel like your magical power has increased.";
			MagicPowerUp (X / 2) + 1;[you always get a little bit of power out of it]
			now siphoning-elixir-charge is 0;
			now siphoning-elixir-timer is 0.]

A potion is a kind of alchemy product.

Definition: a potion is drink themed: decide yes.

Figure of potion is the file "Items/Collectibles/potion1.png".
To decide which figure-name is the examine-image of (V - an potion):
	decide on the figure of potion.

Section 1 Potion of Balance

A potion of balance is a kind of potion. The printed name of potion of balance is "[TQlink of item described]potion of balance[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of potion of balance is "[TQlink of item described]potions of balance[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of potion of balance is "pba". There are 3 potion of balance.

To say ExamineDesc of (B - a potion of balance):
	say "A round clear hip flask filled with a dose of smoky [appearance corresponding to an Magic of 4 in the Table of Drinks] liquid. It looks like it could do something useful if you drank it, but who knows when it would be appropriate to drink, and if there are any side effects...".

To BackgroundRender (T - a potion of balance) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	let TQC be appearance corresponding to an Magic of 4 in the Table of Drinks;
	draw a rectangle TQcolour of TQC in the current focus window at X1 by Y1 with size DX by DY.

To decide which number is the alchemy key of (A - a potion of balance):
	decide on 6.

Carry out quaffing potion of balance:
	say "You pull out the stopper and down the smoky liquid.";
	let flav-said be 0;
	if the noun is not cursed and the heel skill of the player < 10:
		say "You feel [unless there are worn heels]like you'll be [end if]more steady standing in heels! ";
		increase the raw heel skill of the player by 1;
	otherwise if the noun is cursed:
		if there are worn heels and the player is upright, say "You feel [unless there are worn heels]like you'll be [end if]less steady walking in heels! This must have been cursed! ";
		decrease the raw heel skill of the player by 2;
	if diaper quest is 0:
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

A potion of the womb is a kind of potion. The printed name of potion of the womb is "[TQlink of item described]potion of the womb[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of potion of the womb is "[TQlink of item described]potions of the womb[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of potion of the womb is "potw". There are 3 potion of the womb.

To say ExamineDesc of (B - a potion of the womb):
	say "A round clear hip flask filled with a dose of smoky pink liquid. It looks like it could do something useful if you drank it, but who knows when it would be appropriate to drink, and if there are any side effects...".

To BackgroundRender (T - a potion of the womb) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of magenta in the current focus window at X1 by Y1 with size DX by DY.

To decide which number is the alchemy key of (A - a potion of the womb):
	decide on 7.

Carry out quaffing potion of the womb:
	say "You pull out the stopper and down the smoky liquid.";
	if the player is female:
		if the pregnancy of the player is 0:
			[The player becomes pregnant]
			say "[ConceptionFlav]";
			now the pregnancy of the player is 1;
			if the womb volume of vagina < 5, now the womb volume of vagina is 5;
			if the noun is cursed, now the womb volume of vagina is 15;
			if the noun is blessed:
				now the father is shopkeeper;
			otherwise if there is an alive fairy and inhuman pregnancy > 0 and the noun is not cursed:
				now the father is a random alive fairy;
			otherwise:
				now the father is random creampie pole trap; [Tentacles for players who have them enabled]
			check sudden pregnancy;
		otherwise if the pregnancy of the player is 1:
			[Pause the pregnancy]
			say "Your [BellyDesc] seems suddenly... inactive.[if the largeness of belly > 6] But you still feel kicking coming from inside your womb.[end if]";
			now the pregnancy of the player is 2;
		otherwise if the pregnancy of the player is 2:
			[Unpause the pregnancy]
			say "Your [BellyDesc] feels active again.";
			now the pregnancy of the player is 1;
	otherwise:
		PenisDown 1.

Section 3 Potion of Blessing

To decide which number is the alchemy key of (A - a potion of blessing):
	decide on 8.

A potion of blessing is a kind of potion. The printed name of potion of blessing is "[TQlink of item described]potion of blessing[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of potion of blessing is "[TQlink of item described]potions of blessing[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of potion of blessing is "pob". There are 3 potion of blessing.

To say ExamineDesc of (B - a potion of blessing):
	say "A round clear hip flask filled with a dose of bright glowing blue liquid. It looks like it could do something useful if you drank it, but who knows when it would be appropriate to drink, and if there are any side effects...".

To BackgroundRender (T - a potion of blessing) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of turquoise in the current focus window at X1 by Y1 with size DX by DY.

Carry out quaffing potion of blessing:
	say "You pull out the stopper and down the brightly glowing liquid.";
	if playerRegion is not Dungeon or the player is trap stuck or a random lake monster is penetrating an orifice:[how would this last condition occur?]
		say "Nothing seems to happen.";
	otherwise if the player is not in Dungeon28:
		say "You feel yourself sucked through a portal. ";
		if the player is glue stuck, compute raw glue escaping a random glue in the location of the player with 1;
		say "The scenery around you slightly changes, and you are now in an altar room! ";
		teleport to Dungeon28;
		if map images > 0, display entire map;
	if the player is in Dungeon28 and (the charge of the dungeon altar > 0 or the noun is cursed):
		say "You feel that it is safe to pray at the altar. Hopefully the potion you drank wasn't cursed, or you might be mistaken...";
		if the noun is cursed, now the charge of the dungeon altar is 99;
		otherwise now the charge of the dungeon altar is 0;
		force inventory-focus redraw; [This forces the inventory window to redraw]
		force clothing-focus redraw; [This forces the clothing window to redraw]
	otherwise:
		say "Nothing seems to happen.".

Section 4 Potion of Bull Strength

A potion of bull strength is a kind of potion. The printed name of potion of bull strength is "[TQlink of item described]potion of bull strength[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of potion of bull strength is "[TQlink of item described]potions of bull strength[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of potion of bull strength is "pbu". There are 2 potion of bull strength.

To say ExamineDesc of (B - a potion of bull strength):
	say "A round clear hip flask filled with a dose of murky white liquid. It looks like it could do something useful if you drank it, but who knows when it would be appropriate to drink, and if there are any side effects...".

To BackgroundRender (T - a potion of bull strength) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of white in the current focus window at X1 by Y1 with size DX by DY.

To decide which number is the alchemy key of (A - a potion of bull strength):
	decide on 12.

This is the potion of bull strength specific recipe rule:
	let R be a random recipe for potion of bull strength;
	if R is appropriate:
		now the Product in row 18 of the Table of Alchemy is 12;
		now the Recipe in row 18 of the Table of Alchemy is 1.
The potion of bull strength specific recipe rule is listed in the specific recipe rules.

To compute recipe specific cursing of (T - a potion of bull strength):
	let K be the alchemy key of T;
	if the noun is bottle:
		if the fill-colour of the noun is white and the noun is horn and the noun is monster-origin:
			now T is bland;
			if the noun is blessed or (a random number between 1 and 7 <= the number of worn blue scrunchies and the class of the player is schoolgirl):
				now T is blessed;
		otherwise:
			now T is cursed;
	otherwise:
		now T is cursed.

Carry out quaffing potion of bull strength:
	say "You pull out the stopper and down the murky white liquid.";
	if the noun is not cursed:
		say "You feel incredibly strong! Wow!";
		StrengthUp 10;
	unless the flesh volume of thighs > 6 and the flesh volume of arms > 6 and the flesh volume of belly > 6 and the flesh volume of hips > 6:
		say "Your body instantly spills out as you instantly put on huge amounts of weight!";
		FatUp 20;
	if lactation fetish is 1:
		[if the class of the player is adventurer:
			let H be a random worn headgear;
			if H is clothing:
				say "Your [ShortDesc of H] suddenly vanishes!";
				destroy H;
				now H is off-stage; [The player hasn't had a chance to do this class properly]]
		if cow-ears is off-stage and cow-ears is actually summonable:
			say "[bold type]A pair of fake cow ears materialise on your head.[roman type][line break]";
			summon cow-ears cursed;
			now the lactation-count of the player is 0;
		let B be a random off-stage cow print bikini top;
		if B is actually summonable:
			say "[bold type]A cow print bikini top materialises on your chest.[roman type][line break]";
			if there is worn cow-ears, summon B;
			otherwise summon B cursed with quest;
			now B is milk production.

Section 5 Space Mead

A space mead is a kind of potion. The printed name of space mead is "[TQlink of item described]carafe of space mead[TQxlink of item described][verb-desc of item described]". The printed plural name of space mead is "[TQlink of item described]carafes of space mead[TQxlink of item described][verb-desc of item described]". There are 3 space meads. Understand "carafe" as space mead. The text-shortcut of space mead is "smd".

A game universe initialisation rule:
	let K be 1;
	repeat with W running through space mead:
		now the text-shortcut of W is the substituted form of "smd[K]";
		increase K by 1.

To say ExamineDesc of (B - a space mead):
	say "A small wine carafe with a strange golden liquid in it. It smells quite sweet but has a somewhat ominous shimmer to it that suggests this is something rather unusual.".

To BackgroundRender (T - a space mead) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of golden in the current focus window at X1 by Y1 with size DX by DY.

Carry out quaffing space mead:
	say "You drink the golden liquid.";
	if a random number between 1 and 4 < 3:
		say "Your muscles suddenly swell out for just an instant before returning with slightly more definition than previous!";
		StrengthUp 1;
	if a random number between 1 and 4 < 3:
		say "For just a moment your limbs twist to an impossible orientation before returning to normal. You feel a bit more limber afterwards.";
		Dexup 1;
	if a random number between 1 and 4 < 3:
		say "For an instant your mind opens up to an infinite vista of possibilities, and even after it fades you still feel somewhat smarter.";
		Intup 1;
	StomachUp 4;
	humiliate 500;
	say "You feel more full, but somehow it also feels as though a vast emptiness has eaten away at your sense of self.";
	increase alcohol level;
	increase alcohol level.

A powder is a kind of alchemy product. Understand "powders" as a powder.

PowderRubbing it on is an action applying to two things.
Check PowderRubbing:
	if the noun is not powder, say "This verb is for applying powder to things." instead;
	if the second noun is not clothing, say "Powder should be applied to clothing." instead.

Carry Out PowderRubbing:
	destroy the noun.

Understand "sprinkle [powder] on [something]" as PowderRubbing it on.

Figure of powder is the file "Items/Collectibles/powder1.png".
To decide which figure-name is the examine-image of (V - a powder):
	decide on the figure of powder.

Section 1 - Powder of Identification

A powder of identification is a kind of powder. The printed name of powder of identification is "[TQlink of item described]powder of identification[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of powder of identification is "[TQlink of item described]powders of identification[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of powder of identification is "poi". There are 3 powder of identification.

To say ExamineDesc of (B - a powder of identification):
	say "A small pinch of fine white powder in a tiny pouch. It looks like it is intended to be applied to clothing, to reveal its magic properties.".

To decide which number is the alchemy key of (A - a powder of identification):
	decide on 24.

Check PowderRubbing a powder of identification on clothing:
	if the second noun is sure and the second noun is identified, say "[variable custom style]I already know the magic details of this item...[roman type][line break]" instead.

Carry Out PowderRubbing a powder of identification on a thing:
	say "You sprinkle the powder onto the [ShortDesc of the second noun]. It glitters brightly as its magic properties are revealed to you! ";
	now the second noun is sure;
	now the second noun is identified;
	say "It is a [second noun][if the raw-magic-modifier of the second noun is 0 and the second noun is bland and the second noun is blandness]. [line break][variable custom style]Hmm, how underwhelming[end if].[roman type][line break]";
	if the noun is cursed and the second noun is not cursed:
		say "Suddenly it is surrounded by a dark glow. ";
		curse the second noun;
		say "Oh no! The powder itself must have been cursed, as it is now a [second noun]! You must have created it with the wrong recipe...";
	force inventory-focus redraw. [This forces the inventory window to redraw]

Section 2 - Powder of Enhancement

A powder of enhancement is a kind of powder. The printed name of powder of enhancement is "[TQlink of item described]powder of enhancement[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of powder of enhancement is "[TQlink of item described]powders of enhancement[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of powder of enhancement is "poe". There are 3 powder of enhancement.

To say ExamineDesc of (B - a powder of enhancement):
	say "A small pinch of fine green powder in a tiny pouch. It looks like it is intended to be applied to clothing, to improve its magical power.".

To BackgroundRender (T - a powder of enhancement) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of green in the current focus window at X1 by Y1 with size DX by DY.

To decide which number is the alchemy key of (A - a powder of enhancement):
	decide on 25.

Check PowderRubbing a powder of enhancement on clothing:
	if the raw-magic-modifier of the second noun > 4 and the second noun is identified, say "[variable custom style]Something tells me that would be a complete waste.[roman type][line break]" instead.

Carry Out PowderRubbing a powder of enhancement on a thing:
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
		if the second noun is worn,	force clothing-focus redraw; [This forces the clothing window to redraw]
		otherwise force inventory-focus redraw; [This forces the inventory window to redraw]
	otherwise:
		say "Nothing happens, and the powder is wasted. Darn, that must mean it is [if the second noun is identified]too powerful[otherwise]a powerful item[end if] already!".

Section 3 - Powder of Resistance

A powder of resistance is a kind of powder. The printed name of powder of resistance is "[TQlink of item described]powder of resistance[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of powder of resistance is "[TQlink of item described]powders of resistance[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of powder of resistance is "por". There are 3 powder of resistance.

To say ExamineDesc of (B - a powder of resistance):
	say "A small pinch of fine purple powder in a tiny pouch. It looks like it is intended to be applied to clothing, to prevent it from transforming.".

To BackgroundRender (T - a powder of resistance) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of violet in the current focus window at X1 by Y1 with size DX by DY.

To decide which number is the alchemy key of (A - a powder of resistance):
	decide on 26.

Check PowderRubbing a powder of resistance on clothing:
	if the second noun is untransformable, say "This can't be transformed so you don't see the point." instead.

Carry Out PowderRubbing a powder of resistance on a thing:
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

A powder of escape is a kind of powder. The printed name of powder of escape is "[TQlink of item described]powder of escape[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of powder of escape is "[TQlink of item described]powders of escape[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of powder of escape is "pox". There are 3 powder of escape.

To say ExamineDesc of (B - a powder of escape):
	say "A small pinch of fine silver powder in a tiny pouch. It looks like it is intended to be applied to clothing, to allow for its immediate removal.".

To BackgroundRender (T - a powder of escape) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of silver in the current focus window at X1 by Y1 with size DX by DY.

To decide which number is the alchemy key of (A - a powder of escape):
	decide on 27.

Check PowderRubbing a powder of escape on a thing:
	if the second noun is not worn clothing, say "[variable custom style]I should save this to use it on something that I'm wearing.[roman type][line break]" instead;
	if the second noun is headgear, say "[variable custom style]Something tells me that won't work.[roman type][line break]" instead;
	if the second noun is unremovable and the second noun is not uncursed piercing, say "[variable custom style]I think that's completely unremovable, even with this powder's magic.[roman type][line break]" instead.

Carry Out PowderRubbing a powder of escape on a thing:
	say "You sprinkle the powder onto the [ShortDesc of the second noun]. ";
	if the noun is cursed:
		say "Instead of removing it, you feel it stick to you more firmly[if the second noun is not glued]. It is now glued[end if]! Darn, that must mean the powder itself must have been cursed! You must have created it with the wrong recipe...";
		now the second noun is glued;
		force clothing-focus redraw; [This forces the clothing window to redraw]
	otherwise:
		say "With a flash of silver it is suddenly no longer on your body but instead in your [if there is a worn bag of holding][ShortDesc of a random worn bag of holding][otherwise]hands[end if]!";
		dislodge the second noun;
		now the second noun is unlocked;
		now the second noun is carried by the player.

A salve is a kind of alchemy product. Understand "salves" as a salve.
A true salve is a kind of alchemy product. Understand "salves" as a true salve.
A true salve is wearable.

Check taking off salve:
	say "The only way this [noun] is coming off is if you wash it off." instead.
Check taking off true salve:
	say "The only way this [noun] is coming off is if you wash it off." instead.

Figure of salve is the file "Items/Collectibles/salve1.png".
To decide which figure-name is the examine-image of (V - a salve):
	decide on the figure of salve.
To decide which figure-name is the examine-image of (V - a true salve):
	decide on the figure of salve.

Part 1 - Salve of Buoyancy

A salve of buoyancy is a kind of salve. The printed name of salve of buoyancy is "[TQlink of item described]salve of buoyancy[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of salve of buoyancy is "[TQlink of item described]salves of buoyancy[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of salve of buoyancy is "sbo". There are 3 salve of buoyancy.
To say ExamineDesc of (C - a salve of buoyancy):
	say "A small round metal container that contains an orange greasy lip-balm-like substance. [if item described is covering a backdrop][SalveStatus][otherwise]It seems like you are supposed to rub it on your body, and something tells you it is probably most appropriate to apply it to your [bold type]breasts[roman type], [bold type]belly[roman type] or [bold type]butt[roman type].[end if]".

To BackgroundRender (T - a salve of buoyancy) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of orange in the current focus window at X1 by Y1 with size DX by DY.

To decide which number is the alchemy key of (A - a salve of buoyancy):
	decide on 9.

A buoyant salve is a kind of true salve. The printed name of buoyant salve is "[TQlink of item described][if item described is cursed]cursed [end if]buoyant salve[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of buoyant salve is "bysv". There are 3 buoyant salve.

To BackgroundRender (T - a buoyant salve) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of orange in the current focus window at X1 by Y1 with size DX by DY.

To say ExamineDesc of (C - a buoyant salve):
	say "You feel a salve making your [random backdrop covered by C] [if C is cursed]heavier[otherwise]lighter[end if].".

To oil (B - a body part) with (S - a salve of buoyancy):
	if S is cursed, say "You somehow feel a bit heavier! Uh-oh...";
	otherwise say "You somehow feel a [if the noun is blessed]bit[otherwise]lot[end if] lighter!";
	let O be a random off-stage buoyant salve;
	[now O is held by the player;]
	now O is worn by the player;
	now O is covering B;
	if S is cursed, now O is cursed.

Part 2 - Salve of Restriction

A salve of restriction is a kind of salve. The printed name of salve of restriction is "[TQlink of item described]salve of restriction[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of salve of restriction is "[TQlink of item described]salves of restriction[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of salve of restriction is "sor". There are 3 salve of restriction.
To say ExamineDesc of (C - a salve of restriction):
	say "A small round metal container that contains a blue greasy lip-balm-like substance. [if item described is covering a backdrop][SalveStatus][otherwise]It seems like you are supposed to rub it on your body, and something tells you it is probably most appropriate to apply it to your [bold type]breasts[roman type], [bold type]belly[roman type] or [bold type]butt[roman type].[end if]".

To BackgroundRender (T - a salve of restriction) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of blue in the current focus window at X1 by Y1 with size DX by DY.

To decide which number is the alchemy key of (A - a salve of restriction):
	decide on 10.

A restricting salve is a kind of true salve. The printed name of restricting salve is "[TQlink of item described][if item described is cursed]cursed [end if]restricting salve[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of restricting salve is "rssv". There are 3 restricting salve.

To say ExamineDesc of (C - a restricting salve):
	say "The salve is [if C is cursed]making your [random backdrop covered by C] grow over time[otherwise]holding your [random backdrop covered by C] in place[end if].".

To BackgroundRender (T - a restricting salve) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of blue in the current focus window at X1 by Y1 with size DX by DY.

A time based rule (this is the cursed restricting salve punishment rule):
	repeat with S running through cursed restricting salve covering body parts:
		if a random number between 1 and 30 is 1:
			if S is covering breasts and the player is not top heavy:
				increase the flesh volume of breasts by 1;
				say "Your [BreastDesc] have somehow slightly grown in size[one of]! The salve must have been cursed[or][stopping]!";
			if S is covering belly and weight gain fetish is 1 and the flesh volume of belly < 10:
				increase the flesh volume of belly by 1;
				say "Your [BellyDesc] has somehow gotten slightly fatter[one of]! The salve must have been cursed[or][stopping]!";
			if S is covering hips:
				if extreme proportions fetish is 1 and the thickness of hips < 20:
					increase the thickness of hips by 1;
					say "Your [ShortDesc of hips] have somehow slightly grown in size[one of]! The salve must have been cursed[or][stopping]!";
				otherwise if the thickness of hips < 10:
					increase the thickness of hips by 1;
					say "Your [ShortDesc of hips] have somehow slightly grown in size[one of]! The salve must have been cursed[or][stopping]!";
				if weight gain fetish is 0 or the flesh volume of hips is the thickness of hips - 1, now the flesh volume of hips is the thickness of hips.

To oil (B - a body part) with (S - a salve of restriction):
	say "You feel a bit more... stable.";
	let O be a random off-stage restricting salve;
	[now O is held by the player;]
	now O is worn by the player;
	now O is covering B;
	if S is cursed, now O is cursed.

Part 3 - Salve of Concealment

A salve of concealment is a kind of salve. The printed name of salve of concealment is "[TQlink of item described]salve of concealment[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of salve of concealment is "[TQlink of item described]salves of concealment[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of salve of concealment is "slvc". There are 2 salve of concealment.

To say ExamineDesc of (C - a salve of concealment):
	say "A small round metal container that contains a cream greasy lip-balm-like substance. [if item described is covering a backdrop][SalveStatus][otherwise]It seems like you are supposed to rub it on your body, and something tells you it is probably most appropriate to apply it to an orifice.[end if]".

To BackgroundRender (T - a salve of concealment) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of creamy in the current focus window at X1 by Y1 with size DX by DY.

To decide which number is the alchemy key of (A - a salve of concealment):
	decide on 11.

A concealment salve is a kind of true salve. The printed name of concealment salve is "[TQlink of item described][if item described is cursed]cursed [end if]concealment salve[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of concealment salve is "ccsv". There are 2 concealment salve.

To say ExamineDesc of (C - a concealment salve):
	say "Your eye [if C is cursed]is magically drawn to focus on[otherwise]slides uncomfortably by[end if] your [random backdrop covered by C].".

To BackgroundRender (T - a concealment salve) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of creamy in the current focus window at X1 by Y1 with size DX by DY.

To say SalveStatus:
	say "It is currently smeared all over your [random backdrop covered by item described].".

To oil (B - a body part) with (S - a salve of concealment):
	let O be a random off-stage concealment salve;
	[now O is held by the player;]
	now O is worn by the player;
	now O is covering B;
	if S is cursed, now O is cursed.

[!<TheSalvePussySlutRule>+

Increases the chance of vaginal sex if cursed and applied to vagina.

+!]
This is the salve pussy slut rule:
	if there is a cursed concealment salve covering vagina, increase the desirability of vagina by 15.
The salve pussy slut rule is listed in the pussy slut eligibility rules.
[!<TheSalveButtSlutRule>+

Increases the chance of anal sex if cursed and applied to asshole.

+!]
This is the salve butt slut rule:
	if there is a cursed concealment salve covering asshole, increase the desirability of asshole by 15.
The salve butt slut rule is listed in the butt slut eligibility rules.

SalveRubbing it on is an action applying to two things.

Check SalveRubbing:
	if the noun is powder, try PowderRubbing the noun on the second noun instead;
	if the noun is lubricant, try orilubing the noun with the second noun instead;
	if the noun is glue, try GlueRubbing the second noun on the noun instead;
	if the second noun is glue, try GlueRubbing the noun on the second noun instead;
	if the noun is not salve and the noun is not ectoplasm, say "I understood the verb as you wanting to apply a salve, but then the noun was not a salve." instead;
	if the noun is salve of buoyancy or the noun is salve of restriction or the noun is salve of restriction:
		if the second noun is not breasts and the second noun is not hips and the second noun is not belly, say "You can only apply a salve to your [bold type]breasts[roman type], your [bold type]belly[roman type] or your [bold type]ass[roman type] at the moment." instead;
	if the noun is salve of concealment:
		if the second noun is hips, now the second noun is asshole;
		if the player is male and second noun is not asshole, say "You can only apply this salve to your [bold type][asshole][roman type]!" instead;
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
	let S be the noun;
	let B be the second noun;
	if B is body part:
		say "You gingerly rub the [printed name of S] [if B is fuckhole]around[otherwise]onto[end if] your [ShortDesc of B] and wait to see what will happen.[line break]";
	otherwise:
		say "Your [printed name of B] seems to tremble unnaturally as you rub the slime into the fabric.[line break]";
	oil B with S;
	destroy S.

Report SalveRubbing:
	allocate 6 seconds;

Understand "rub [something] on [something]", "rub [something] into [something]", "apply [something] on [something]", "apply [something] to [something]", "apply [something] into [something]" as SalveRubbing it on.

A tincture is a kind of alchemy product.

Definition: a tincture is drink themed: decide yes.

Figure of tincture is the file "Items/Collectibles/tincture1.png".
To decide which figure-name is the examine-image of (V - a tincture):
	decide on the figure of tincture.

Section 1 Tincture of Strength

A tincture of strength is a kind of tincture. The printed name of tincture of strength is "[TQlink of item described][if item described is blessed]blessed [end if]tincture of strength[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of tincture of strength is "[TQlink of item described][if item described is blessed]blessed [end if]tinctures of strength[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of tincture of strength is "tis". There are 3 tincture of strength.
To say ExamineDesc of (C - a tincture of strength):
	say "A tiny glass vial filled with a small dose of glowing [appearance corresponding to an Magic of 2 in the Table of Drinks] liquid. It looks like it would do something extremely powerful if you drank it, but who knows for how long, and if there are any side effects...".

To BackgroundRender (T - a tincture of strength) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	let A be appearance corresponding to an Magic of 2 in the Table of Drinks;
	draw a rectangle TQcolour of A in the current focus window at X1 by Y1 with size DX by DY.

To decide which number is the alchemy key of (A - a tincture of strength):
	decide on 1.

[Bonus is the amount of strength to add. Timer is the amount of seconds it lasts for.]
strength-tincture-bonus is a number that varies. strength-tincture-bonus is 0.
strength-tincture-timer is a number that varies. strength-tincture-timer is 0.

Carry out quaffing tincture of strength:
	say "You pull out the tiny stopper and down the glowing liquid.[unless saved-flat-strength > 26]You feel much, much stronger! [one of][line break][variable custom style]Wooow![roman type][line break][or][stopping]Time to go kick some ass![end if]";
	let T be a random number between 10 and 15;
	now strength-tincture-timer is T * 6;
	while saved-flat-strength < 30 and T > 0:
		decrease T by 1;
		increase strength-tincture-bonus by 1;
		now saved-flat-strength is the flat strength of the player;
	if the noun is cursed, now strength-tincture-timer is 7;
	if the noun is blessed, increase strength-tincture-timer by 20.

A time based rule (this is the strength tincture decay rule):
	if strength-tincture-timer > 0:
		decrease strength-tincture-timer by time-seconds;
		if strength-tincture-timer <= 0:
			now strength-tincture-timer is 0;
			if strength-tincture-bonus > 0, say "[bold type]Your magical superhuman strength fades. As the energy disperses from your muscles, you feel your body expand rapidly![line break][variable custom style]Oh no...![roman type]";
			while strength-tincture-bonus > 0:
				let R be a random number between 1 and 5;
				if R is 1 and the player is not top heavy:
					BustUp 1;
				if R is 2 and the player is not bottom heavy:
					HipUp 1;
				if R is 3 and weight gain fetish is 1 and strength-tincture-bonus > 2:
					FatUp 4;
				decrease strength-tincture-bonus by 1.

Section 2 Tincture of Acceleration

A tincture of acceleration is a kind of tincture. The printed name of tincture of acceleration is "[TQlink of item described][if item described is blessed]blessed [end if]tincture of acceleration[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of tincture of acceleration is "[TQlink of item described][if item described is blessed]blessed [end if]tinctures of acceleration[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of tincture of acceleration is "tia". There are 3 tincture of acceleration.
To say ExamineDesc of (C - a tincture of acceleration):
	say "A tiny glass vial filled with a small dose of glowing [appearance corresponding to an Magic of 1 in the Table of Drinks] liquid. It looks like it would do something extremely powerful if you drank it, but who knows for how long, and if there are any side effects...".

To BackgroundRender (T - a tincture of acceleration) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	let A be appearance corresponding to an Magic of 1 in the Table of Drinks;
	draw a rectangle TQcolour of A in the current focus window at X1 by Y1 with size DX by DY.

To decide which number is the alchemy key of (A - a tincture of acceleration):
	decide on 2.

acceleration-tincture-bonus is a number that varies. strength-tincture-bonus is 0.
acceleration-tincture-timer is a number that varies. strength-tincture-timer is 0.

Carry out quaffing tincture of acceleration:
	say "You pull out the tiny stopper and down the glowing liquid. [unless saved-flat-dexterity > 26 or the noun is cursed]Time seems to noticeably slow down around you, giving you loads of time to react to things. [one of][line break][variable custom style]Wooow![roman type][line break][or][stopping]You feel like running a marathon![end if][line break]Your [BellyDesc] rumbles worryingly...";
	let T be a random number between 10 and 15;
	now acceleration-tincture-timer is T * 6;
	while saved-flat-dexterity < 30 and T > 0:
		decrease T by 1;
		increase acceleration-tincture-bonus by 1;
	if the noun is cursed, now acceleration-tincture-bonus is 0;
	if the noun is blessed, increase acceleration-tincture-timer by 20.

A time based rule (this is the acceleration tincture decay rule):
	if acceleration-tincture-timer > 0:
		decrease acceleration-tincture-timer by time-seconds;
		if acceleration-tincture-timer <= 0:
			now acceleration-tincture-timer is 0;
			if acceleration-tincture-bonus > 0:
				now acceleration-tincture-bonus is 0;
				say "Time speeds back up to its normal speed.";
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
			if the womb volume of vagina > 1 and the pregnancy of the player is 0 and pregnancy fetish is 1 and acceleration-tincture-timer < 48 and the number of family things > 0:
				say ConceptionFlav;
				now the pregnancy of the player is 1;
				check sudden pregnancy;
			if the player is upright and acceleration-tincture-bonus > 0, increase the fat-burning of the player by 20.

Alchemy Products ends here.
