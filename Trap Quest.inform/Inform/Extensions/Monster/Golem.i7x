Golem by Monster begins here.

A golem is a kind of monster. There is 1 golem. A golem is poison immune. A golem is usually neuter.

The description of golem is usually "[GolemDesc]". The text-shortcut of golem is "sg". The printed name of golem is "[if item described is in the location of the player][TQlink of item described][end if][input-style][if artificial enhancements fetish is 1]silicone[otherwise]flesh[end if] golem[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". Understand "silicone", "flesh" as golem.

To say GolemDesc:
	say "[if artificial enhancements fetish is 1]This creature superficially resembles a female form, but seems to be made out of a translucent, moist gel. You can immediately tell what whoever created it was most concerned with, as the face has only crude detail while the breasts and ass are rendered with as much perfection as can be managed in the medium. In spite of the lack of expression on the thing's face, it exudes a sense of malice.[otherwise]The product of some especially mad science, this appears to be some kind of Frankenstein's Bimbo pieced together from parts as mismatched as they are comically exaggerated. In spite of its vapid expression, you can somehow sense an air of malice about it.[end if]".

To set up (M - a golem):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 7;
	now the health of M is the maxhealth of M;
	now M is captive.

To compute motion of (M - a golem):
	if M is released:
		now neighbour finder is the location of M;
		let A be a random N-viable direction;
		if A is a random N-viable direction and the room A from the location of M is not Dungeon12 and the room A from the location of M is not Dungeon41:
			try M going A;
		otherwise if A is a random N-viable direction and the room A from the location of M is not Dungeon12 and the room A from the location of M is not Dungeon41:
			try M going A;
		MonsterStomp M.	

To compute (M - a monster) stomping (N - a golem):
	say "The [M] grabs the [N], but the golem seems happier for it! [if artificial enhancements fetish is 1]Its body engulfs the [M], and his muscles bulge out with new definition and power![otherwise]Its body dissolves into a mass of ones and zeroes, which are absorbed into the [M]'s skin. He grunts as his muscles suddenly bulge out with even more definition and power![end if]";
	DifficultyUp M by 6;
	destroy N.

Definition: a golem (called M) is objectifying the player:
	decide yes.

To compute motion of (M - a golem):
	if M is released:
		now neighbour finder is the location of M;
		let A be a random N-viable direction;
		if A is a random N-viable direction and the room A from the location of M is not Dungeon12 and the room A from the location of M is not Dungeon41:
			try M going A;
		otherwise if A is a random N-viable direction and the room A from the location of M is not Dungeon12 and the room A from the location of M is not Dungeon41:
			try M going A;

To compute perception of (M - a golem):
	now M is interested;
	anger M;
	say "The golem turns to face you almost mechanically and yet with unsettling grace. It seems to be blocking the path forward, you'll need to deal with it to move on.".

To compute (M - a monster) stomping (N - a golem):
	if M is in the location of the player, say "The [M] holds the [N] with two powerful fists and pulls apart with impossible strength.  The [N] splits into two!  The pieces fall to the ground and then disappear.";
	otherwise say "You hear a very loud ripping sound!";
	destroy N.

The unique punishment rule of a golem is usually the golem merging rule.
This is the golem merging rule:
	let M be a random golem;
	say "You cringe on the ground as the creature approaches you. [if artificial enhancements fetish is 1]You realize it isn't stopping as it moves towards you, and finally presses up against you! Its cold fluid body engulfs you for a terrible instant before suddenly vanishing! Your relief quickly turns to dread at wondering what it might have done to you...[otherwise]The creature embraces you in its mismatched arms, and your body suddenly feels warm! A feeling of horrible dread comes over you all of a sudden and your vision blacks out for a moment. When you come too, you are alone.[end if][line break]";
	if artificial enhancements fetish is 1:
		let T be a random off-stage rubber top hat;
		if the player is not top heavy:
			say "Your chest feels strange and you look down in horror to see your breasts have expanded. [if the silicone volume of breasts is 0]Apparently you have breast implants now![otherwise]Your breast implants are even bigger![end if]";
			BustImplantsUp 4;
		otherwise if the thickness of hips < max ass size:
			say "Your ass feels strange and you look down in horror to see it's expanded. [if the silicone volume of hips is 0]Apparently you have silicone implants in it now![otherwise]Your butt implants are even bigger than they used to be![end if]";
			AssImplantsUp 4;
		if the lips of face < 3:
			say "Your lips feel suddenly uncomfortable, and you can tell they've grown in size.";
			LipsUp 1;
	otherwise:
		If the player is not top heavy:
			say "Your chest feels suddenly heavier...";
			Bustup 4;
		if the total volume of hips < max ass size:
			say "Your ass feels suddenly heavier...";
			FatAssUp 4;
		say "Your muscles feel a bit stiff...";
		Dexdown 2;	
	destroy M;
	rule succeeds.
	
To compute damage of (M - a golem):
	if the health of M > 0:
		if M is uninterested:
			say "The [M] barely seems to react but does take up what could be interpreted as a fighting stance.";
			anger M;
		otherwise:
			if the health of M > the maxhealth of M / 2, say "The [M] seems completely unaffected by your attack!";
			otherwise say "";
	otherwise:
		compute death of M.

To say DamageReaction (N - a number) of (M - a golem):
	if N > (the maxhealth of M / 4):
		say "The [M] seems completely unaffected by your attack!";
	otherwise:
		say "[if artificial enhancements fetish is 1]The [M] seems to be leaking clear fluid from some tears in its body.[otherwise]The [M] seems to be starting to come apart at the seams.[end if]".

To say StrikingSuccessFlav of (M - a golem) on (B - a body part):
	say "The [M] smacks you with a [if artificial enhancements fetish is 1]moist yet firm[otherwise]surprisingly strong[end if] fist!".

To say StrikingFailureFlav of (M - a golem) on (B - a body part):
	say "The [M] swipes at you, but you manage to dodge it".

To compute unique death of (M - a golem):
	say "The [M] [if artificial enhancements fetish is 1]dissolves into clear fluid and evaporates away[otherwise]collapses into a pile of limbs, which is a bit gross, you must admit[end if].";
	destroy M.


Golem ends here.
