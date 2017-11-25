Tentacle Breeder by Objects begins here.

A tentacle-breeder is a kind of summoning portal. The printed name of tentacle-breeder is "[TQlink of item described]tentacle breeder[TQxlink of item described][shortcut-desc][verb-desc of item described]". The description of tentacle-breeder is "[TentacleBreederDesc]". Understand "tentacle", "breeder" as tentacle-breeder.  The text-shortcut of a tentacle breeder is usually "ttb".

A tentacle-breeder has a number called growth. The growth of a tentacle-breeder is usually 0.  The charge of a tentacle-breeder is usually 30.

To decide which number is the true-growth of (T - a tentacle-breeder):
	let G be the growth of T;
	if the player-class is magical girl, increase G by 1;
	decide on G.

The dungeon-breeder is a tentacle-breeder.
The woods-breeder is a tentacle-breeder.
The hotel-breeder is a tentacle-breeder.
The mansion-breeder is a tentacle-breeder.
The player-breeder is a tentacle-breeder.

To say unique-verb-desc of (T - a tentacle-breeder):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say " [link][bracket]purify[close bracket][as]purify [text-shortcut of T][end link]".

To deploy (T - a tentacle-breeder):
	do nothing.

This is the tentacle breeder in dungeon rule:
	if tentacle fetish is 1, now dungeon-breeder is in a random sandy unrelaxing placed room.
The tentacle breeder in dungeon rule is listed in the set up dungeon traps rules.


This is the tentacle breeder in woods rule:
	if tentacle fetish is 1, now woods-breeder is in a random placed dodgy room.
The tentacle breeder in woods rule is listed in the set up woods traps rules.

This is the tentacle breeder in hotel rule:
	if tentacle fetish is 1, now hotel-breeder is in a random placed modern room.
The tentacle breeder in hotel rule is listed in the set up hotel traps rules.


This is the tentacle breeder in mansion rule:
	if tentacle fetish is 1, now mansion-breeder is in a random placed haunted room.
The tentacle breeder in mansion rule is listed in the set up mansion traps rules.

To say TentacleBreederDesc:
	if inhuman pregnancy is 2, say "A massively pregnant [if item described is player-breeder]previous version of yourself[otherwise]woman[end if] is stuck to the wall with thick, pink slime. A sea of tentacles pushes itself into all of [if item described is player-breeder]your previous self's[otherwise]her[end if] holes, throbbing rhythmically. Semen drools from her lips around the tentacles and from her [vagina]. Her eyes are rolled back up into her head, and it seems she doesn't have even the slightest sense of self or awareness. [if the magic-power of the player > 4]For some reason, you feel like you might be able to [bold type]purify[roman type] her corruption and rescue her from her predicament.[otherwise if item described is player-breeder]Realising that you are in some manner of speaking a... clone... of this woman raises some questions about the nature of consciousness which you don't have the time or desire to think about right now.[otherwise]You feel like you should probably stay away from her, since you'd really prefer to avoid her fate.[end if]";
	otherwise say "A messy dome of grey flesh is stuck to one wall.  A hole in the middle pulsates rapidly, kind of like a spasming asshole.  [if the magic-power of the player > 4]For some reason, you feel like you might be able to [bold type]purify[roman type] the corrupt substance and halt the spawning of tentacle monsters into this region.[otherwise]You feel like you should probably stay away from it until you have the power to remove its tainted presence entirely.[end if]".

Purifying is an action applying to one thing.

Check purifying:
	if the noun is not tentacle-breeder, say "This verb is for destroying tentacle spawners." instead;
	if the magic-power of the player < 5, say "You don't have enough magical power to do that (you need 5)." instead.

Understand "purify [something]" as purifying.

Carry out purifying tentacle-breeder:
	MagicPowerDown 5;
	say "You feel the magical power that has built up in your body flow into the mess of [if inhuman pregnancy is 2]tentacles and gravid flesh, and suddenly the tentacles and slime begin to thrash around and turn brown. The tentacles restraining the woman quickly rot away, and as she falls to the floor she manages a look of gratitude before vanishing into motes of light[otherwise]grey flesh, which shrinks away inside of itself until it has all completely gone[end if].";
	destroy the noun.


To compute summoning check of (T - a tentacle-breeder) :
	decrease the charge of T by (time-seconds + game difficulty) / 2;
	if the charge of T < 1:
		let M be the summonChoice of T;
		if M is monster:
			compute T summoning M;
			compute portal reset of T;
		otherwise:
			increase the charge of T by 30.

To decide which object is the summonChoice of (T - a tentacle-breeder):
	let M be a random off-stage tentacle monster;
	if M is monster:[hiding the check in an if-statement like this prevents run-time errors]
		if the true-growth of T < 5:
			now M is newborn;
			now the text-shortcut of M is "ntm";
		otherwise if the true-growth of T < 10:
			now M is large;
			now the text-shortcut of M is "ltm";
		otherwise:
			now M is massive;
			now the text-shortcut of M is "mtm";
	decide on M.

To compute portal reset of (T - a tentacle-breeder):
	increase the spawn-count of T by 1;
	now the reset-count of T is 0;
	increase the growth of T by 1.

To compute (T - a dungeon-breeder) regionally summoning (M - a monster):
	summon M in the dungeon;
	now the charge of T is 300.

This is the dungeon breeder rule:
	if the player is in the dungeon and the dungeon-breeder is in the dungeon:
		compute summoning check of dungeon-breeder.

To compute (T - a woods-breeder) regionally summoning (M - a monster):
	summon M in the woods;
	now the charge of T is 250.

This is the woods breeder rule:
	if the player is in the woods and the woods-breeder is in the woods:
		compute summoning check of woods-breeder.			

To compute (T - a hotel-breeder) regionally summoning (M - a monster):
	summon M in the hotel;
	now the charge of T is 300.

This is the hotel breeder rule:
	if the player is in the hotel and the hotel-breeder is in the hotel:
		compute summoning check of hotel-breeder.

To compute (T - a mansion-breeder) regionally summoning (M - a monster):
	summon M in the mansion;
	now the charge of T is 200.

This is the mansion breeder rule:
	if the player is in the mansion and the mansion-breeder is in the mansion:
		compute summoning check of mansion-breeder.

This is the player breeder rule:
	if the player-breeder is in-play:
		repeat with R running through regions:
			if the player is in R and the player-breeder is in R:
				compute summoning check of player-breeder;
				break.

To compute (T - a player-breeder) regionally summoning (M - a monster):
	summon M;
	now the charge of T is 300.

The tentacle-breeder-spawning rules is a rulebook.
The dungeon breeder rule is listed in the tentacle-breeder-spawning rules.
The woods breeder rule is listed in the tentacle-breeder-spawning rules.
The hotel breeder rule is listed in the tentacle-breeder-spawning rules.
The mansion breeder rule is listed in the tentacle-breeder-spawning rules.
The player breeder rule is listed in the tentacle-breeder-spawning rules

A time based rule (this is the tentacle breeder tester rule):
	follow the tentacle-breeder-spawning rules.


Tentacle Breeder ends here.
