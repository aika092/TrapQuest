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
	let R be 0;
	if the magic power of the player >= the magic-cost of C or there is a held pure totem or (ritual-beads is held and the size of ritual-beads >= 7), now R is 1;
	if inhuman pregnancy >= 2:
		if C is active, say "A massively pregnant [if C is player-breeder]previous version of yourself[otherwise]woman[end if] is held to the wall by a sea of grey tentacles[if C is maid-history], [bold type]your old maid headdress and magical maid outfit still worn, but completely coated in cum. [roman type][otherwise]. [end if]Every one of [if C is player-breeder]your previous self's[otherwise]her[end if] holes, including her mouth, is plugged up by a thick, rythmically thrusting tentacle. Her eyes follow you as you move through the room, as if waiting for you to do something to free her from her predicament. There is a translucent barrier covering her whole body, which seems to pulse in time with [magic-cost of C] eldritch seals etched into the ground below her. [if the divinationskill of the player > 0 and R is 1]You can sense that your current magic power is enough to [otherwise if the divinationskill of the player > 0]You can sense that your current magic power is currently not enough to[otherwise if C is player-breeder]If that woman is really your past self, you'd like to know why she's isn't using her safeword... but you don't have a clue[otherwise]You feel bad leaving her, but its not like she doesn't have a safeword... and you don't know how to[end if] [bold type]purify[roman type] the corrupted seals and free her.";
		otherwise say "A massively pregnant [if C is player-breeder]previous version of yourself[otherwise]woman[end if] is held to the wall by a sea of grey tentacles[if C is maid-history], [bold type]your old maid headdress and magical maid outfit still worn, but completely coated in cum. [roman type][otherwise]. [end if]None of the tentacles are penetrating her right now, since [if C is player-breeder]your previous self[otherwise]she[end if] is unconscious, but [semen] is still drooling from every one of her holes. There is a translucent barrier covering her whole body, which seems to pulse in time with [magic-cost of C] eldritch seals etched into the ground below her. [if the divinationskill of the player > 0 and R is 1]You can sense that you can[otherwise if the divinationskill of the player > 0]You can sense that you'll need some magic power before[otherwise if C is player-breeder]You'd like to talk to her and find out if she's really your past self, but you don't know how to[otherwise]You feel bad leaving her, but you don't know how to[end if] [bold type]purify[roman type] the corrupted seals and free her.";
	otherwise:
		say "A messy dome of grey flesh is stuck to one wall, with rapidly pulsating holes, kind of like spasming assholes. There is a translucent barrier covering it, which seems to vibrate in time with [magic-cost of C] eldritch seals etched into the ground below it. [if the divinationskill of the player > 0 and R is 1]You can sense that your current magic power is enough to [otherwise if the divinationskill of the player > 0]You can sense that your current magic power is currently not enough to[otherwise]You don't have a clue how to[end if] [bold type]purify[roman type] the corrupted seals and destroy it.";

Report going when there is a tentacle-breeder in the location:
	if inhuman pregnancy >= 2, compute addiction reflection on "pregnancy".

A later time based rule (this is the tentacle breeder makes you horny rule):
	if inhuman pregnancy >= 2:
		let TB be a random active tentacle-breeder in the location of the player;
		if TB is a thing and the player is not a bit horny and the player is able to get horny:
			say "As you watch the tentacles rhythmically plunging into [NameDesc of TB][']s holes, you feel your own [fuckholes] tingling, and [if the player is not a pervert]despite yourself, [end if]you can feel your body becoming more aroused.";
			now the arousal of the player is 3100;
			if the player is not a pervert:
				say "[variable custom style]No, no, I don't want that to happen to me![roman type][line break]";
			otherwise if the player is not nympho:
				say "[variable custom style]I don't want that to happen to me... Do I?[roman type][line break]";
			otherwise:
				say "[variable custom style]I [one of]kind of wish that was me up there... I must be crazy, haha![or]totally wish that was me up there...[stopping][roman type][line break]".

Purifying is an action applying to one thing.

Check purifying:
	if the noun is not tentacle-breeder and the noun is not mini-portal and the noun is not wisp, say "How would you purify something like that?" instead;
	if the divinationskill of the player is 0:
		if magic-purify is castable, say "You don't know enough about magical energy for such a task... Either you need to find an expert, or you could perhaps use your [bold type]purification spell[roman type], if you have enough magic power to both cast the spell and meet the requiements of the [noun] (so you need [magic-cost of magic-purify] + [magic-cost of the noun])..." instead;
		otherwise say "You don't know enough about magical energy for such a task... Maybe you should find an expert?" instead;
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
	MagicPurify the noun.

To MagicPurify (B - a tentacle-breeder):
	say "You feel the magical power that has built up in your body flow into the mess of [if inhuman pregnancy >= 2]tentacles and gravid flesh, and suddenly the tentacles and slime begin to thrash around and turn brown. The tentacles restraining the woman quickly rot away, and as she falls to the floor she manages a look of gratitude[otherwise]grey flesh, which shrinks away inside of itself until it has all completely gone[end if].";
	check tentacle clear;
	destroy B;
	if inhuman pregnancy >= 2:
		let M be a random off-stage summon-available explorer;
		if B is player-breeder:
			now M is kitsune;
			unless M is alive:
				set up M;
			reveal disguise of M;
		otherwise:
			if composed-explorer is off-stage and composed-explorer is summon-available, now M is composed-explorer;
			set up M;
		now M is in the location of the player;
		now the boredom of M is 150;
		now the health of M is the maxhealth of M / 2;
		now M is moved;
		if B is player-breeder:
			say "Your clone pulls herself to her feet, grinning [he of M] shimmers and disappears in a puff of smoke. In her place stands a fully clothed and quite relieved looking [ShortDesc of M] [line break][variable custom style]'Phew. Lucky I didn't use your safeword, right? Hohoho!'[roman type][line break]";
		otherwise if M is monster:
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
		let TS be time-seconds - the number of alive regional tentacle monsters;
		if TS > 0, decrease the charge of T by TS;
		unless T is active:
			if T is in the location of the player:
				let A be a random explorer;
				say "[bold type]You feel [if the divinationskill of the player > 0]a strong tug on your magical energy[otherwise]a tingle run down your spine[end if] as [if inhuman pregnancy >= 2]the mass of tentacles surrounding [end if][NameDesc of T] emits a piercing screech that reverberates through the dungeon... and beyond.[roman type][paragraph break]";
				if inhuman pregnancy >= 2, say "The [man of A] being used as a living tentacle breeder stirs awake, all semblance of sleep vanishing from [his of A] face as [he of A] lays [his of A] eyes on you.[line break][speech style of A]'H-hey. You... y-you can use magic, right? Listen, you've got to get me out of this! I can't give up now, but the tentacles, they keep-! GLMPH! MMPH! MMMMPH!'[roman type][line break]The [man of A][']s voice grows faster and more desperate with every word, until finally being cut off by a fat tentacle shoving its way into [his of A] mouth midsentence.";
				otherwise say "[BigNameDesc of T] shudders, its bizarre selection of orifices beginning to pulsate faster and faster.";
				let M be the summonChoice of T;
				if M is monster:
					compute T summoning M;
					set up M;
					compute portal reset of T;
				repeat with B running through tentacle-breeders:
					now B is active;
				if newbie tips is 1, say "[one of][newbie style]Newbie Tip: Tentacle breeders are special summoning portals that only spawn tentacle monsters. You can shut them off permanently if you can convince the witch[if the player is not an april 2025 top donator] or the neuromancer[end if] to teach you how to sense magical energy... or you can leave them alone, if you're fine dealing with the monsters.[roman type][or][stopping]";
		otherwise if the charge of T < 1:
			let M be the summonChoice of T;
			if M is monster:
				compute T summoning M;
				set up M;
				compute portal reset of T;
			otherwise:
				increase the charge of T by 30;
		otherwise if the magic power of the player >= the magic-cost of magic-purify + the magic-cost of T and heart hairpin is off-stage and heart hairpin is actually summonable:
			say "A heart hairpin appears in your hair!";
			summon heart hairpin cursed.

To decide which object is the summonChoice of (T - a tentacle-breeder):
	let M be a random off-stage tentacle monster;
	if M is monster:
		if the total magic power of the player < 6:
			now M is lesser;
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
