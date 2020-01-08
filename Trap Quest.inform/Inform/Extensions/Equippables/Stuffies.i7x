Stuffies by Equippables begins here.

A stuffie is a kind of equippable. A stuffie is usually slap ready. A stuffie is usually cursed. A stuffie is usually wool. The printed name of stuffie is "[clothing-title-before]stuffie[clothing-title-after]". The text-shortcut of stuffie is "stf".


This is the spawn initial mansion stuffie rule:
	let R be a random [wire untrapped] trappable placed haunted room;
	let T be a random off-stage stuffie;
	now T is in R.
The spawn initial mansion stuffie rule is listed in the set up mansion traps rules.


To decide which number is the damage improvement of (W - a stuffie):
	decide on -99.

To decide which number is the initial outrage of (C - a stuffie):
	decide on 0.
To decide which number is the initial cringe of (C - a stuffie):
	decide on 10.

To compute attack of (W - a stuffie) at (M - a monster):
	say "You [one of]weakly[or]pathetically[or]softly[at random] slap at [NameDesc of M] with your [printed name of W].".

To decide which number is the delicateness-influence of (W - a stuffie):
	if W is blessed, decide on 0;
	if W is cursed, decide on 2;
	decide on 1.

To decide which number is the sex-addiction-influence of (W - a stuffie):
	if W is blessed, decide on -2;
	decide on -1.


Report taking a unique stuffie: [The 'unique' bit puts the rule in the correct part of the rule sequence to avoid a stack overflow upon taking.]
	try wearing the noun instead.

Check taking off stuffie when the player is prone:
	say "Are you sure? If you do this while kneeling, it'll immediately try to grab you again. Drop [NameDesc of the noun]? ";
	unless the player is consenting, say "Action cancelled." instead.

Report taking off a stuffie:
	say "As you let go, [NameDesc of the noun] falls to the ground.";
	try dropping the noun.

Report examining an unblessed sure stuffie:
	say "Perhaps if it is [bold type]blessed[roman type] before you put it down, it will stop following you around...".

A later time based rule (this is the stuffies want to be held rule):
	repeat with C running through regional unblessed stuffies:
		if C is in the location of the player:
			if the player is prone and C is actually summonable:
				say "[bold type][BigNameDesc of C] [bold type]springs to life![roman type] It leaps through the air, trying to grab your hand!";
				let D be a random number between 1 and the dexterity of the player;
				if debuginfo > 0, say "[input-style]Stuffie evasion check: d[dexterity of the player] ([D]) | (6.5) Stuffie dodge difficulty[roman type][line break]";
				if D < 7:
					say "It connects! Your hand is now stuck to [NameDesc of C] - it looks like you'll be carrying [him of C] around for a while!";
					summon C cursed with quest;
				otherwise:
					say "You manage to pull your hand away in time.";
		otherwise if C is carried:
			now C is in the location of the player;
		otherwise if C is not held and a random number between 1 and 4 is 1 and the player is not in a predicament room:
			now Neighbour Finder is the location of the player;
			if C is not nearby:
				let R be a random next door room;
				if R is a room, now C is in R. [It's always one room away. Spooky.]

To assign quest to (C - a stuffie):
	now the quest of C is show-and-tell-quest;
	set up the quest of C.


commodore cuddles is a stuffie. The printed name of commodore cuddles is "[clothing-title-before]Commodore Cuddles[clothing-title-after]". The text-shortcut of commodore cuddles is "cmdc".

Figure of commodore cuddles is the file "Items/Accessories/Equippables/stuffie1.jpg".

To decide which figure-name is clothing-image of (C - commodore cuddles):
	decide on figure of commodore cuddles.

To say ClothingDesc of (W - commodore cuddles):
	say "This very large teddy has a label, revealing that his name is 'Commodore Cuddles'.".
To say ShortDesc of (W - commodore cuddles):
	say "teddy bear".
To say MediumDesc of (W - commodore cuddles):
	say "large teddy bear".
To say NameDesc of (W - commodore cuddles):
	say "Commodore Cuddles".
To say BigNameDesc of (W - commodore cuddles):
	say NameDesc of W.

Definition: commodore cuddles is bear themed: decide yes.

To decide which number is the strength-influence of (W - commodore cuddles):
	if W is blessed, decide on 2;
	decide on 1.


Stuffies ends here.
