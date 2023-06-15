Fox Ears by Headgear begins here.

fox ears is a headgear. fox ears is biological. fox ears is dexterity-influencing. fox ears is blondeness-positive. fox ears is brightness-negative. fox ears is redness-positive. fox ears has a number called charge.
Definition: fox ears is brown themed: decide yes.

The printed name of fox ears is "[clothing-title-before]fox ears[clothing-title-after]".
The text-shortcut of fox ears is "fe".

Figure of fox ears is the file "Items/Accessories/Head/foxears1.png".

To decide which figure-name is the clothing-image of (C - fox ears):
	decide on figure of fox ears.

To say ClothingDesc of (H - fox ears):
	say "A headband with a pair of fluffy fox ears on it. It has an air of magic around it.".

To say ShortDesc of (H - fox ears):
	say "fox ears".
To say MediumDesc of (H - fox ears):
	say "fake fox ears".

To compute SelfExamineDesc of (H - fox ears):
	say "You are wearing a headband that gives you the appearance of fox ears.".

To decide which number is the dexterity-influence of (C - fox ears):
	let X be 2;
	decide on X + the magic-modifier of C.

To decide which number is the stealth-influence of (C - fox ears):
	decide on 1.

To decide which number is the intelligence-influence of (C - fox ears):[vixens get an intelligence bonus from wearing stolen things]
	let X be the number of worn stolen clothing;
	increase X by the number of worn museum-stolen clothing;
	if C is blessed, increase X by X;
	decide on X + the magic-modifier of C.

To unique periodic effect of (H - fox ears):
	increase the charge of H by 1;
	if the charge of H > a random number between 40 and 100:
		now the charge of H is 0;
		if there is a worn locked clothing:
			let B be a random worn locked clothing;
			say "You feel your [ShortDesc of H] twitch slightly, and your [printed name of B] briefly lights up as it is magically unlocked!";
			unlock B;
		otherwise if the make-up of face < 3:
			FaceUp 1;
			say "You feel your [ShortDesc of H] twitch slightly, and you feel a wave of warmth on your cheeks as it magically conjures [if the make-up of face is 0]a[otherwise]another[end if] layer of makeup on your face!".

Chapter - Quest

stealing-quest is a headgear-clothing-quest.

To uniquely set up (C - fox ears):
	now the quest of C is stealing-quest.

To say QuestFlav of (Q - stealing-quest):
	say "You sense it wants you to steal things that aren't yours.".

To say QuestTitle of (Q - stealing-quest):
	say " (stealing quest)".

To compute generic first time class reward of (Q - stealing-quest) on (C - a clothing):
	let D be a random off-stage ring;
	if D is ring:
		now D is pure diamond;
		set shortcut of D;
		if D is actually summonable:
			summon D;
		otherwise:
			now D is in the location of the player;
		say "summoning a [MediumDesc of D] [if D is worn]straight onto your finger[otherwise]right in front of you[end if]!";
	otherwise:
		compute generic second time class reward of Q on C.

[no bonus rings since it's too easy to trigger this like 6 times in 1 turn]
To compute generic class reward of (Q - stealing-quest) on (C - a clothing):
	if C is hair growing or the raw largeness of hair <= 1 or frozen hair is 1:
		say "filling you with renewed energy!";
		repeat with F running through fuckholes:
			heal F times 5;
		now the fatigue of the player is 0;
	otherwise:
		say "shrinking the length of your hair, like a Barbie doll's hair being retracted!";
		HairDown 1;


Fox Ears ends here.
