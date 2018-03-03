Puppy Ears by Headgear begins here.

A puppy ears is a kind of headgear. A puppy ears is usually manly. There is 1 puppy ears. Figure of puppy ears is the file "Items\Accessories\Head\puppyears1.png". Understand "pair", "of" as puppy ears. A puppy ears is blondeness-negative. A puppy ears is brightness-positive. A puppy ears is redness-negative. A puppy ears is usually hair growing. A puppy ears is usually dexterity-influencing. A puppy ears is usually roleplay.

Definition: a puppy ears (called C) is fluid immune:
	decide yes.

The printed name of puppy ears is usually "[TQlink of item described][clothing-title-before]pair of puppy ears[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of puppy ears is "pue".

To decide which figure-name is the clothing-image of (C - a puppy ears):
	decide on figure of puppy ears.

To say ClothingDesc of (H - a puppy ears):
	say "A pair of fake multicoloured puppy ears on a headband.".

To say ShortDesc of (H - a puppy ears):
	say "fake puppy ears".

To compute SelfExamineDesc of (H - a puppy ears):
	let X be the largeness of hair;
	say "You are wearing a pair of fake puppy ears on top of your [ShortDesc of hair]. ".

puppy-summoned is a number that varies.

To compute class outfit of (H - a puppy ears):
	let K be a random off-stage puppy mittens;
	let P be a random off-stage puppy tail plug;
	let G be a random off-stage puppy bone gag;
	if K is actually summonable or (K is puppy mittens and puppy-summoned is 0):
		if puppy-summoned is 0:
			repeat with O running through worn slap ready equippables:
				say "Your [O] vanishes!";
				destroy O;
		say "[bold type]Your puppy ears barely noticeably quiver, and then your hands become encased in tight leather mittens!  On closer inspection, these are puppy paws![roman type][line break]";
		summon K cursed;
		now the raw-magic-modifier of K is the stance of the player;
		now puppy-summoned is 1;
	otherwise if the class of the player is puppygirl and P is actually summonable and the player is not ass protected:
		say "[bold type]You feel your [asshole] suddenly invaded by a foreign object!  Looking around you see a puppy tail swaying proudly from your [asshole].[roman type][line break]";
		summon P cursed;
		let X be the openness of asshole + the number of worn clothing;
		assign size X to P;
	otherwise if the class of the player is puppygirl and G is actually summonable:
		say "[bold type]You feel your mouth suddenly bite down around a foreign object!  You are now wearing a bone shaped gag.[roman type][line break]";
		summon G cursed.


Puppy Ears ends here.

