Tentacle Breeder by Objects begins here.

A tentacle-breeder is a kind of summoning portal. The printed name of tentacle-breeder is "[TQlink of item described]tentacle breeder[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "tentacle", "breeder" as tentacle-breeder. The text-shortcut of a tentacle-breeder is usually "ttb".

The charge of a tentacle-breeder is usually 80.

To decide which number is the magic-cost of (T - a tentacle-breeder):
	decide on 12.

dungeon-breeder is a tentacle-breeder.
To decide which number is the magic-cost of (T - dungeon-breeder):
	decide on 4.
woods-breeder is a tentacle-breeder.
To decide which number is the magic-cost of (T - woods-breeder):
	decide on 6.
hotel-breeder is a tentacle-breeder.
mansion-breeder is a tentacle-breeder.
To decide which number is the magic-cost of (T - mansion-breeder):
	decide on 8.
player-breeder is a tentacle-breeder. player-breeder can be maid-history.

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
	if inhuman pregnancy >= 2, decide on figure of tentacle breeder;
	decide on figure of tentacle spawner.

To decide which figure-name is the examine-image of (C - player-breeder):
	decide on figure of player tentacle breeder.

To say ExamineDesc of (C - a tentacle-breeder):
	if inhuman pregnancy >= 2:
		say "A massively pregnant [if C is player-breeder]previous version of yourself[otherwise]woman[end if] is stuck to the wall with thick, pink slime[if C is maid-history], [bold type]your old maid headdress and magical maid outfit still worn, but completely coated in cum. [roman type][otherwise]. [end if]A sea of tentacles pushes itself into all of [if C is player-breeder]your previous self's[otherwise]her[end if] holes, throbbing rhythmically. Semen drools from her lips around the tentacles and from her [vagina]. Her eyes are rolled back up into her head, and it seems she doesn't have even the slightest sense of self or awareness. There is a translucent barrier covering her whole body, which seems to pulse in time with [magic-cost of C] eldritch seals etched into the ground below her. [if the magic power of the player >= the magic-cost of C]For some reason, you feel like you might be able to [bold type]purify[roman type] her corruption and rescue her from her predicament[otherwise if C is player-breeder]Realising that you are in some manner of speaking a... clone... of this woman raises some questions about the nature of consciousness which you don't have the time or desire to think about right now[otherwise]You feel like you should probably stay away from her, until you have enough power to overcome all the seals[end if].";
	otherwise:
		say "A messy dome of grey flesh is stuck to one wall, with rapidly pulsating holes, kind of like spasming assholes. There is a translucent barrier covering it, which seems to vibrate in time with [magic-cost of C] eldritch seals etched into the ground below it. [if the magic power of the player >= magic-cost of C]For some reason, you feel like you might be able to [bold type]purify[roman type] the corrupt substance and halt the spawning of tentacle monsters into this region[otherwise if there is a held pure totem or ritual-beads is held and the size of ritual-beads >= 7]For some reason, you feel like you have a magical item you can use to [bold type]purify[roman type] the corrupt substance and halt the spawning of tentacle monsters into this region[otherwise]You feel like you won't be able to halt the spawning of tentacle monsters here until you have enough power to overcome all the seals[end if].".

Purifying is an action applying to one thing.

Check purifying:
	if the noun is not tentacle-breeder, say "This verb is for destroying tentacle spawners." instead;
	if the magic power of the player < the magic-cost of the noun:[check if the player can cheat]
		let canCheat be 0;
		if ritual-beads is held:
			if the size of ritual-beads >= 7:
				say "This will destroy your [ShortDesc of ritual-beads]. Is that what you want? ";
				if the player is consenting:
					dislodge ritual-beads;
					say "Energy wells up inside of you as your [ShortDesc of ritual-beads] disintegrates!";
					only destroy ritual-beads;
					MagicPowerRefresh 5;
					now canCheat is 1;
		otherwise if there is a held pure totem:
			let T be a random held pure totem;
			say "This will destroy your [ShortDesc of T]. Is that what you want? ";
			if the player is consenting:
				say "Energy wells up inside of you as your [ShortDesc of T] disintegrates!";
				only destroy T;
				MagicPowerRefresh 5;
				now canCheat is 1;
		if canCheat is 0, say "You don't have enough magical power to do that (you need [magic-cost of the noun])." instead.

Understand "purify [something]" as purifying.

Carry out purifying tentacle-breeder:
	allocate 2 seconds;
	compute MagicDrain of the noun;
	say "You feel the magical power that has built up in your body flow into the mess of [if inhuman pregnancy >= 2]tentacles and gravid flesh, and suddenly the tentacles and slime begin to thrash around and turn brown. The tentacles restraining the woman quickly rot away, and as she falls to the floor she manages a look of gratitude[otherwise]grey flesh, which shrinks away inside of itself until it has all completely gone[end if].";
	check tentacle clear;
	destroy the noun;
	if inhuman pregnancy >= 2:
		if the noun is player-breeder:
			say "She vanishes into motes of light.";
		otherwise:
			let M be a random off-stage summon-available explorer;
			if composed-explorer is off-stage and composed-explorer is summon-available, now M is composed-explorer;
			if M is monster:
				set up M;
				now M is in the location of the player;
				now the boredom of M is 150;
				now the health of M is the maxhealth of M / 2;
				say "[BigNameDesc of M] pulls [himself of M] up onto two feet.[line break][speech style of M]'Thank you so much for saving me. At last I shall be able to continue my adventure.'[one of][line break][variable custom style][big he of M] plans to keep exploring this place after what [he of M][']s been through[if M is composed-explorer]?! And even though [he of M][']s HEAVILY PREGNANT[end if]?![or][stopping][roman type][line break]";
	if the class of the player is "virgin warrior" and virgin magical girl outfit is off-stage:
		class summon virgin magical girl outfit;
	otherwise if heart hairpin is off-stage:
		if the class of the player is "schoolgirl" and the number of worn scrunchies is 1:
			let S be a random worn scrunchie;
			say "Your [S] explodes in a shower of cartoon lovehearts!";
			destroy S;
		if heart hairpin is actually summonable:
			say "[bold type]Suddenly, you feel a small weight in your hair. A hair clip in the shape of a heart has appeared! You feel a sudden rush, which almost takes you to your knees.[roman type][line break]";
			summon heart hairpin cursed;
			if the player is ready for event TG:
				say "Your whole body suddenly goes numb, then is filled with an almost electric tingle. You feel terrible wrenching from your insides that you're sure should hurt, but you just don't seem to be able to feel much of anything right now. The tingling comes to a focus in your crotch, filling you with an awful sense of foreboding. [if the player is possessing a penis]As feeling comes back to you, you reach down and can immediately tell you're missing something kind of notable: your [player-penis]![otherwise]As feeling returns to you, you reach down with a sense of foreboding.[end if] It seems whatever magic made that hair clip appear has decided you'd be better off [if transGender is 1]with a vagina[otherwise]as a girl[end if]...!";
				SexChange the player;
		if the class of the player is "silicone queen": [has to be exactly this class and not any cross-class]
			let C be a random worn overdress;
			if C is a thing and the number of worn underdress is 0, transform C into anime superheroine top;
	if playerRegion is Dungeon, progress quest of royal-quest.

To compute summoning check of (T - a tentacle-breeder):
	if the total magic power of the player > 0 and T is regional:
		let TS be time-seconds - the number of alive regional on-stage tentacle monsters;
		if TS > 0, decrease the charge of T by time-seconds;
		if the charge of T < 1:
			let M be the summonChoice of T;
			if M is monster:
				compute T summoning M;
				set up M;
				compute portal reset of T;
			otherwise:
				increase the charge of T by 30.

To decide which object is the summonChoice of (T - a tentacle-breeder):
	let M be a random off-stage tentacle monster;
	if M is monster:
		if the total magic power of the player < 6:
			now M is newborn;
		otherwise if the total magic power of the player < 12:
			now M is large;
		otherwise:
			now M is massive;
	decide on M.

To compute portal reset of (T - a tentacle-breeder):
	increase the spawn-count of T by 1;
	now the reset-count of T is 0.

To compute (T - dungeon-breeder) regionally summoning (M - a monster):
	summon M in the dungeon;
	now the charge of T is 450.

To compute (T - woods-breeder) regionally summoning (M - a monster):
	summon M in the woods;
	now the charge of T is 450.

To compute (T - hotel-breeder) regionally summoning (M - a monster):
	summon M in the hotel;
	now the charge of T is 450.

To compute (T - mansion-breeder) regionally summoning (M - a monster):
	summon M in the mansion;
	now the charge of T is 450.

To compute (T - player-breeder) regionally summoning (M - a monster):
	summon M;
	now the charge of T is 600.

Tentacle Breeder ends here.
