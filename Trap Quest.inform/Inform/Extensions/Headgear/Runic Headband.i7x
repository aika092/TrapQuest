Runic Headband by Headgear begins here.


A runic headband is a kind of headgear. A runic headband is usually silk. There is 1 runic headband. Figure of runic headband is the file "Items/Accessories/Head/runicheadband1.png". A runic headband is usually hair growing. A runic headband is usually roleplay.

Definition: a runic headband (called C) is fluid immune:
	decide yes.
The printed name of runic headband is usually "[TQlink of item described][clothing-title-before]runic headband[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of runic headband is "rhb".


To decide which figure-name is the clothing-image of (C - a runic headband):
	decide on figure of runic headband.

To say ClothingDesc of (H - a runic headband):
	say "This white headband [if H is worn]sits on your forehead. It [end if]has runic characters embedded in silver most of the way around. You have no idea what they mean.[if there is a worn abyssal tattoo] The runes have turned black, and almost seem wet with some kind of sludge.[end if]".

To say ShortDesc of (H - a runic headband):
	say "runic headband".

To compute SelfExamineDesc of (H - runic headband):
	let X be the largeness of hair;
	say "You are wearing a religious headband on top of your [ShortDesc of hair]. ".
	
To set up influence of (C - a runic headband):
	set up stat-based influence of C.

To decide which number is the strength-influence of (H - a runic headband):
	let S be 0;
	if the class of the player is cultist:
		repeat with L running through cursed clothing worn by the player:
			if L is not H, increase S by 1;
		let I be the intelligence of the player;
		increase S by I / 6;
	decide on S.
	
To decide which number is the dexterity-influence of (H - a runic headband):
	let D be 0;
	if the class of the player is cultist:
		repeat with L running through cursed clothing worn by the player:
			if L is not H, increase D by 1;
		let I be the intelligence of the player;
		increase D by I / 6;
	decide on D.
	
To decide which number is the intelligence-influence of (H - a runic headband):
	let I be 0;
	if the class of the player is cultist:
		repeat with L running through cursed clothing worn by the player:
			if L is not H, increase I by 1;
	decide on I.

priestess-summoned is a number that varies.

To compute class outfit of (H - a runic headband):
	let P be a random off-stage flowing priestess outfit;
	if P is actually summonable or (P is priestess outfit and priestess-summoned is 0):
		if priestess-summoned is 0:
			repeat with O running through worn dresses:
				say "Your [O] vanishes!";
				destroy O;
			repeat with O running through worn skirts:
				say "Your [O] vanishes!";
				destroy O;
		now priestess-summoned is 1;
		say "[bold type]Your runic headband gently hums as holy attire shimmers into existence around your body.[roman type][line break]";
		summon P cursed;
		now the raw-magic-modifier of P is the number of worn cursed clothing.
		
To compute hair colour change of (H - runic headband):
	compute hair colour darken of H.

Definition: a runic headband (called C) is condom pinnable:
	decide yes.


Runic Headband ends here.

