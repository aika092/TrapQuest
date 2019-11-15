Golem by Monster begins here.

golem is a monster. golem is neuter. golem is guarding. The poison-status of golem is -1.

The text-shortcut of golem is "gol". Understand "silicone", "flesh" as golem.

Figure of Golem is the file "NPCs/MultiFloor/golem1.jpg".

To decide which figure-name is the monster-image of (M - golem):
	decide on Figure of Golem.

To say ShortDesc of (M - golem):
	say "golem".

To say MediumDesc of (M - golem):
	say "[if artificial enhancements fetish is 1]silicone[otherwise]flesh[end if] golem".

To say MonsterDesc of (M - golem):
	say "This blue creature superficially resembles a female form, but seems to be made out of a translucent, moist gel. You can immediately tell what whoever created it was most concerned with, as the face has only crude detail while the breasts and ass are rendered with as much perfection as can be managed in the medium. In spite of the lack of expression on the thing's face, it exudes a sense of malice.".

To set up (M - golem):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 7;
	now M is guarding;
	now the health of M is the maxhealth of M.

To compute monstermotion of (M - golem):
	if M is unleashed:
		now neighbour finder is the location of M;
		let A be a random N-viable direction;
		if A is a random N-viable direction and the room A from the location of M is not Dungeon12 and the room A from the location of M is not Dungeon41:
			try M going A;
		otherwise if A is a random N-viable direction and the room A from the location of M is not Dungeon12 and the room A from the location of M is not Dungeon41:
			try M going A;
		MonsterStomp M.

To compute (M - a monster) stomping (N - golem):
	say "[BigNameDesc of M] grabs the [N], but the golem seems happier for it! [if artificial enhancements fetish is 1]Its body engulfs [NameDesc of M], and its muscles bulge out with new definition and power![otherwise]Its body dissolves into a mass of ones and zeroes, which are absorbed into [NameDesc of M]'s skin. It grunts as its muscles suddenly bulge out with even more definition and power![end if]";
	DifficultyUp M by 6;
	destroy N.

Definition: golem is objectifying the player: decide yes.


To compute perception of (M - golem):
	now M is interested;
	anger M;
	now M is unleashed;
	say "The golem turns to face you almost mechanically and yet with unsettling grace[one of]. It seems to be blocking the path forward, you'll need to deal with it to move on[or][stopping].".

To compute (M - a monster) stomping (N - golem):
	if M is in the location of the player, say "[BigNameDesc of M] holds the [N] with two powerful fists and pulls apart with impossible strength. The [N] splits into two! The pieces fall to the ground and then disappear.";
	otherwise say "You hear a very loud ripping sound!";
	destroy N.

The unique punishment rule of golem is usually the golem merging rule.
This is the golem merging rule:
	say "You cringe on the ground as the creature approaches you. [if artificial enhancements fetish is 1]You realize it isn't stopping as it moves towards you, and finally presses up against you! Its cold fluid body engulfs you for a terrible instant before suddenly vanishing! Your relief quickly turns to dread at wondering what it might have done to you...[otherwise]The creature embraces you in its mismatched arms, and your body suddenly feels warm! A feeling of horrible dread comes over you all of a sudden and your vision blacks out for a moment. When you come too, you are alone.[end if][line break]";
	if artificial enhancements fetish is 1:
		if rubber top hat is off-stage and rubber top hat is actually summonable:
			say "You're now wearing a small pink latex top hat!";
			summon rubber top hat cursed;
		otherwise if the player is not top heavy:
			say "Your chest feels strange and you look down in horror to see your breasts have expanded. [if the silicone volume of breasts is 0]Apparently you have breast implants now![otherwise]Your breast implants are even bigger![end if]";
			BustImplantsUp 4;
		otherwise if the flesh volume of hips + the silicone volume of hips < max ass size:
			say "Your ass feels strange and you look down in horror to see it's expanded. [if the silicone volume of hips is 0]Apparently you have silicone implants in it now![otherwise]Your butt implants are even bigger than they used to be![end if]";
			AssImplantsUp 4;
		if the lips of face < 3:
			say "Your lips feel suddenly uncomfortable, and you can tell they've grown in size.";
			LipsUp 1;
	otherwise:
		If the player is not top heavy:
			say "Your chest feels suddenly heavier...";
			Bustup 4;
		if the player is not bottom heavy:
			say "Your ass feels suddenly heavier...";
			HipUp 4;
		say "Your muscles feel a bit stiff...";
		Dexdown 2;
	destroy golem;
	rule succeeds.

To compute damage of (M - golem):
	if the health of M > 0:
		if M is uninterested:
			say "[BigNameDesc of M] barely seems to react but does take up what could be interpreted as a fighting stance.";
			anger M;
		otherwise:
			if the health of M > the maxhealth of M / 2, say "[BigNameDesc of M] seems completely unaffected by your attack!";
			otherwise say "";
	otherwise:
		compute death of M.

To say DamageReaction (N - a number) of (M - golem):
	if N > (the maxhealth of M / 4):
		say "[BigNameDesc of M] seems completely unaffected by your attack!";
	otherwise:
		say "[if artificial enhancements fetish is 1][BigNameDesc of M] seems to be leaking clear fluid from some tears in its body.[otherwise][BigNameDesc of M] seems to be starting to come apart at the seams.[end if]".

To say StrikingSuccessFlav of (M - golem) on (B - a body part):
	say "[BigNameDesc of M] smacks you with a [if artificial enhancements fetish is 1]moist yet firm[otherwise]surprisingly strong[end if] fist!".

To say StrikingFailureFlav of (M - golem) on (B - a body part):
	say "[BigNameDesc of M] swipes at you, but you manage to dodge it.".

To compute unique death of (M - golem):
	say "[BigNameDesc of M] [if artificial enhancements fetish is 1]dissolves into clear fluid and evaporates away[otherwise]collapses into a pile of limbs, which is a bit gross, you must admit[end if].";
	destroy M.

To say MuteGreetResponse of (M - golem):
	say "The mannequin doesn't reply. It would appear to be magically animated rather than sentient.".

To say MuteQuestionResponse of (M - golem):
	say "[SexDollExplanation of M]".


Golem ends here.

