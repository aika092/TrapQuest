Fox Ears by Headgear begins here.

A fox ears is a kind of headgear. There is 1 fox ears. A fox ears is biological. A fox ears is usually dexterity-influencing. A fox ears is usually intelligence-influencing. A fox ears is blondeness-positive. A fox ears is brightness-negative. A fox ears is redness-positive. A fox ears is usually roleplay.

The printed name of fox ears is usually "[TQlink of item described][clothing-title-before]fox ears[clothing-title-after][TQxlink of item described][verb-desc of item described]".
The text-shortcut of fox ears is "fe".

Figure of fox ears is the file "Items/Accessories/Head/foxears1.png".

To decide which figure-name is the clothing-image of (C - a fox ears):
	decide on figure of fox ears.

To say ClothingDesc of (H - a fox ears):
	say "A headband with a pair of fluffy fox ears on it. It has an air of magic around it.".

To say ShortDesc of (H - a fox ears):
	say "fake fox ears".
	
To compute SelfExamineDesc of (H - a fox ears):
	say "You are wearing a headband that gives you the appearance of fox ears.".
	
To decide which number is the dexterity-influence of (C - a fox ears):
	let X be 2;
	decide on X + the magic-modifier of C.

To decide which number is the intelligence-influence of (C - a fox ears):[vixens get an intelligence bonus from wearing stolen things]
	let X be the number of worn stolen clothing;
	if C is blessed, increase X by X;
	decide on X + the magic-modifier of C.

To compute class outfit of (H - a fox ears):
	if there is a worn locked clothing:
		let B be a random worn locked clothing;
		say "You feel your [ShortDesc of H] twitch slightly, and your [printed name of B] briefly lights up as it is magically unlocked!";
		now B is unlocked;
	otherwise if the make-up of face < 3:
		FaceUp 1;
		say "You feel your [ShortDesc of H] twitch slightly, and you feel a wave of warmth on your cheeks as it magically conjures [if the make-up of face is 0]a[otherwise]another[end if] layer of makeup on your face!".

Fox Ears ends here.

