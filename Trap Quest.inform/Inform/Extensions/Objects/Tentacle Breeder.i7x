Tentacle Breeder by Objects begins here.

A tentacle-breeder is a kind of summoning portal. The printed name of tentacle-breeder is "[TQlink of item described]tentacle breeder[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "tentacle", "breeder" as tentacle-breeder. The text-shortcut of a tentacle-breeder is usually "ttb".

A tentacle-breeder has a number called growth. The growth of a tentacle-breeder is usually 0. The charge of a tentacle-breeder is usually 30.

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

Figure of tentacle breeder is the file "Env/MultiFloor/breeder2.jpg".
Figure of player tentacle breeder is the file "Env/MultiFloor/breeder1.jpg".
Figure of tentacle spawner is the file "Env/MultiFloor/breeder3.jpg".

To decide which figure-name is the examine-image of (C - a tentacle-breeder):
	if inhuman pregnancy is 2, decide on figure of tentacle breeder;
	decide on figure of tentacle spawner.

To decide which figure-name is the examine-image of (C - player-breeder):
	decide on figure of player tentacle breeder.

To say ExamineDesc of (C - a tentacle-breeder):
	if inhuman pregnancy is 2:
		say "A massively pregnant [if C is player-breeder]previous version of yourself[otherwise]woman[end if] is stuck to the wall with thick, pink slime. A sea of tentacles pushes itself into all of [if C is player-breeder]your previous self's[otherwise]her[end if] holes, throbbing rhythmically. Semen drools from her lips around the tentacles and from her [vagina]. Her eyes are rolled back up into her head, and it seems she doesn't have even the slightest sense of self or awareness. There is a translucent barrier covering her whole body, which seems to pulse in time with four eldritch seals etched into the ground below her. [if the magic-power of the player > 4]For some reason, you feel like you might be able to [bold type]purify[roman type] her corruption and rescue her from her predicament[otherwise if C is player-breeder]Realising that you are in some manner of speaking a... clone... of this woman raises some questions about the nature of consciousness which you don't have the time or desire to think about right now[otherwise]You feel like you should probably stay away from her, until you have enough power to overcome all the seals[end if].";
	otherwise:
		say "A messy dome of grey flesh is stuck to one wall, with rapidly pulsating holes, kind of like spasming assholes. There is a translucent barrier covering it, which seems to vibrate in time with four eldritch seals etched into the ground below it. [if the magic-power of the player > 4]For some reason, you feel like you might be able to [bold type]purify[roman type] the corrupt substance and halt the spawning of tentacle monsters into this region[otherwise if there is a held pure totem or ritual-beads is held and the size of ritual-beads >= 7]For some reason, you feel like you have a magical item you can use to [bold type]purify[roman type] the corrupt substance and halt the spawning of tentacle monsters into this region[otherwise]You feel like you won't be able to halt the spawning of tentacle monsters here until you have enough power to overcome all the seals[end if].".

Purifying is an action applying to one thing.

Check purifying:
	if the noun is not tentacle-breeder, say "This verb is for destroying tentacle spawners." instead;
	if the magic-power of the player < 4:[check if the player can cheat]
		if ritual-beads is held:
			if the size of ritual-beads >= 7:
				say "This will destroy your [ShortDesc of ritual-beads]. Is that what you want? ";
				if the player is consenting:
					dislodge ritual-beads;
					say "You feel a swell of energy as your [ShortDesc of ritual-beads] disintegrates!";
					only destroy ritual-beads;
					MagicPowerUp 5;
		if there is a held pure totem:
			let T be a random held pure totem;
			say "This will destroy your [ShortDesc of T]. Is that what you want? ";
			if the player is consenting:
				say "You feel a swell of energy as your [ShortDesc of T] disintegrates!";
				only destroy T;
				MagicPowerUp 5;
	if the magic-power of the player < 4, say "You don't have enough magical power to do that (you need 4)." instead.

Understand "purify [something]" as purifying.

Carry out purifying tentacle-breeder:
	allocate 2 seconds;
	MagicPowerDown 4;
	say "You feel the magical power that has built up in your body flow into the mess of [if inhuman pregnancy is 2]tentacles and gravid flesh, and suddenly the tentacles and slime begin to thrash around and turn brown. The tentacles restraining the woman quickly rot away, and as she falls to the floor she manages a look of gratitude before vanishing into motes of light[otherwise]grey flesh, which shrinks away inside of itself until it has all completely gone[end if].";
	destroy the noun;
	repeat with C running through worn clothing:
		if the quest of C is tentacle-research-quest:
			compute quest completion of tentacle-research-quest on C.


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
		if the true-growth of T < 4:
			now M is newborn;
		otherwise if the true-growth of T < 6:
			now M is large;
		otherwise:
			now M is massive;
	decide on M.

To compute portal reset of (T - a tentacle-breeder):
	increase the spawn-count of T by 1;
	now the reset-count of T is 0;
	increase the growth of T by 1.

To compute (T - a dungeon-breeder) regionally summoning (M - a monster):
	summon M in the dungeon;
	now the charge of T is 450.

A time based rule (this is the tentacle breeders progress rule):
	repeat with T running through tentacle-breeder:
		if T is regionally in playerRegion, compute summoning check of T.

To compute (T - a woods-breeder) regionally summoning (M - a monster):
	summon M in the woods;
	now the charge of T is 400.

To compute (T - a hotel-breeder) regionally summoning (M - a monster):
	summon M in the hotel;
	now the charge of T is 300.

To compute (T - a mansion-breeder) regionally summoning (M - a monster):
	summon M in the mansion;
	now the charge of T is 200. [Just because I expect people to spend less time in the mansion]

To compute (T - a player-breeder) regionally summoning (M - a monster):
	summon M;
	now the charge of T is 300.


Tentacle Breeder ends here.

