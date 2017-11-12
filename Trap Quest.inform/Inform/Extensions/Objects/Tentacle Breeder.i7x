Tentacle Breeder by Objects begins here.

A tentacle-breeder is a kind of summoning portal. The printed name of tentacle-breeder is "[TQlink of item described]tentacle breeder[TQxlink of item described][shortcut-desc][verb-desc of item described]". The description of tentacle-breeder is "[TentacleBreederDesc]". Understand "tentacle", "breeder" as tentacle-breeder.  The text-shortcut of a tentacle breeder is usually "ttb".

A tentacle-breeder has a number called growth. The growth of a tentacle-breeder is usually 0.

To decide which number is the true-growth of (T - a tentacle-breeder):
	let G be the growth of T;
	if the player-class is magical girl, increase G by 1;
	decide on G.

The dungeon-breeder is a tentacle-breeder.  The charge of a tentacle-breeder is usually 30.

The woods-breeder is a tentacle-breeder.

The hotel-breeder is a tentacle-breeder.

The mansion-breeder is a tentacle-breeder.

The player-breeder is a tentacle-breeder.

To say unique-verb-desc of (T - a tentacle-breeder):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say " [link][bracket]purify[close bracket][as]purify [text-shortcut of T][end link]".


To say TentacleBreederDesc:
	say "A massively pregnant [if item described is player-breeder]previous version of yourself[otherwise]woman[end if] is stuck to the wall with thick, pink slime. A sea of tentacles pushes itself into all of [if item described is player-breeder]your previous self's[otherwise]her[end if] holes, throbbing rhythmically. Semen drools from her lips around the tentacles and from her [vagina]. Her eyes are rolled back up into her head, and it seems she doesn't have even the slightest sense of self or awareness. [if the magic-power of the player > 4]For some reason, you feel like you might be able to [bold type]purify[roman type] her corruption and rescue her from her predicament.[otherwise if item described is player-breeder]Realising that you are in some manner of speaking a... clone... of this woman raises some questions about the nature of consciousness which you don't have the time or desire to think about right now.[otherwise]You feel like you should probably stay away from her, since you'd really prefer to avoid her fate.[end if]".

Purifying is an action applying to one thing.

Check purifying:
	if the noun is not tentacle-breeder, say "This verb is for destroying tentacle breeders." instead;
	if the magic-power of the player < 5, say "You don't have enough magical power to do that (you need 5)." instead.

Understand "purify [something]" as purifying.

Carry out purifying tentacle-breeder:
	MagicPowerDown 5;
	say "You feel the magical power that has built up in your body flow into the mess of tentacles and gravid flesh, and suddenly the tentacles and slime begin to thrash around and turn brown. The tentacles restraining the woman quickly rot away, and as she falls to the floor she manages a look of gratitude before vanishing into motes of light.";
	destroy the noun.

A time based rule (this is the player tentacle breeder rule):
	if the player-breeder is in-play:
		repeat with R running through regions:
			if the player is in R and the player-breeder is in R:
				decrease the charge of player-breeder by (time-seconds + game difficulty) / 2;
				if the charge of player-breeder < 1:
					let S be player-breeder;
					let M be a random off-stage tentacle monster;
					if the true-growth of S < 5:
						now M is newborn;
						now the text-shortcut of M is "ntm";
					otherwise if the true-growth of S < 10:
						now M is large;
						now the text-shortcut of M is "ltm";
					otherwise:
						now M is massive;
						now the text-shortcut of M is "mtm";
					if M is monster:
						summon M in the dungeon;
						regionally place M;
						set up M;
						say "[bold type]You [if S is in the location of the player]watch as the girl stuck to the wall gives birth to a red mass of tentacles with a loud squelch.  The red tentacle monster looks at you with its single eye before scuttling off into the distance[otherwise]hear a loud squelch and mindless moaning coming from nearby[end if]![roman type][line break]";
						now M is in the location of S;
						now the charge of S is 300;
						increase the growth of S by 1.

A time based rule (this is the dungeon tentacle breeder rule):
	if the player is in the dungeon and the dungeon-breeder is in the dungeon:
		decrease the charge of dungeon-breeder by (time-seconds + game difficulty) / 2;
		if the charge of dungeon-breeder < 1:
			let S be dungeon-breeder;
			let M be a random off-stage tentacle monster;
			if the true-growth of S < 5:
				now M is newborn;
				now the text-shortcut of M is "ntm";
			otherwise if the true-growth of S < 10:
				now M is large;
				now the text-shortcut of M is "ltm";
			otherwise:
				now M is massive;
				now the text-shortcut of M is "mtm";
			if M is monster:
				summon M in the dungeon;
				set up M;
				say "[bold type]You [if S is in the location of the player]watch as the girl stuck to the wall gives birth to a red mass of tentacles with a loud squelch.  The red tentacle monster looks at you with its single eye before scuttling off into the distance[otherwise]hear a loud squelch and mindless moaning coming from nearby[end if]![roman type][line break]";
				now M is in the location of S;
				now the charge of S is 300;
				increase the growth of S by 1.

A time based rule (this is the woods tentacle breeder rule):
	if the player is in the woods and the woods-breeder is in the dungeon:
		decrease the charge of woods-breeder by (time-seconds + game difficulty) / 2;
		if the charge of woods-breeder < 1:
			let S be woods-breeder;
			let M be a random off-stage tentacle monster;
			if the true-growth of S < 5:
				now M is newborn;
				now the text-shortcut of M is "ntm";
			otherwise if the true-growth of S < 10:
				now M is large;
				now the text-shortcut of M is "ltm";
			otherwise:
				now M is massive;
				now the text-shortcut of M is "mtm";
			if M is monster:
				summon M in the woods;
				set up M;
				say "[bold type]You [if S is in the location of the player]watch as the girl stuck to the wall gives birth to a red mass of tentacles with a loud squelch.  The red tentacle monster looks at you with its single eye before scuttling off into the distance[otherwise]hear a loud squelch and mindless moaning coming from a tentacle breeder[end if]![roman type][line break]";
				now M is in the location of S;
				now the charge of S is 250;
				increase the growth of S by 1.

A time based rule (this is the hotel tentacle breeder rule):
	if the player is in the hotel and the hotel-breeder is in the hotel:
		decrease the charge of hotel-breeder by (time-seconds + game difficulty) / 2;
		if the charge of hotel-breeder < 1:
			let S be hotel-breeder;
			let M be a random off-stage tentacle monster;
			if the true-growth of S < 5:
				now M is newborn;
				now the text-shortcut of M is "ntm";
			otherwise if the true-growth of S < 10:
				now M is large;
				now the text-shortcut of M is "ltm";
			otherwise:
				now M is massive;
				now the text-shortcut of M is "mtm";
			if M is monster:
				summon M in the hotel;
				set up M;
				say "[bold type]You [if S is in the location of the player]watch as the girl stuck to the wall gives birth to a red mass of tentacles with a loud squelch.  The red tentacle monster looks at you with its single eye before scuttling off into the distance[otherwise]hear a loud squelch and mindless moaning coming from a tentacle breeder[end if]![roman type][line break]";
				now M is in the location of S;
				now the charge of S is 300;
				increase the growth of S by 1.

A time based rule (this is the mansion tentacle breeder rule):
	if the player is in the mansion and the mansion-breeder is in the mansion:
		decrease the charge of mansion-breeder by (time-seconds + game difficulty) / 2;
		if the charge of mansion-breeder < 1:
			let S be mansion-breeder;
			let M be a random off-stage tentacle monster;
			if the true-growth of S < 5:
				now M is newborn;
				now the text-shortcut of M is "ntm";
			otherwise if the true-growth of S < 10:
				now M is large;
				now the text-shortcut of M is "ltm";
			otherwise:
				now M is massive;
				now the text-shortcut of M is "mtm";
			if M is monster:
				summon M in the mansion;
				set up M;
				say "[bold type]You [if S is in the location of the player]watch as the girl stuck to the wall gives birth to a red mass of tentacles with a loud squelch.  The red tentacle monster looks at you with its single eye before scuttling off into the distance[otherwise]hear a loud squelch and mindless moaning coming from a tentacle breeder[end if]![roman type][line break]";
				now M is in the location of S;
				now the charge of S is 200;
				increase the growth of S by 1.

Tentacle Breeder ends here.
