Cultist Veil by Headgear begins here.


A cultist veil is a kind of headgear. A cultist veil is silk. 1 cultist veil is in Mansion23. A cultist veil is usually roleplay.

The printed name of cultist veil is usually "[TQlink of item described][clothing-title-before]cultist veil[clothing-title-after][TQxlink of item described][verb-desc of item described]".  The text-shortcut of cultist veil is "cv".

Definition: a thing (called C) is cult garb:
	decide no.
	
Definition: a cultist veil (called C) is cult garb:
	decide yes.
	
Figure of cultist veil is the file "cultistveil1.png".
	
To decide which figure-name is the clothing-image of (C - a cultist veil):
	decide on figure of cultist veil.

To say ClothingDesc of (H - a cultist veil):
	say "A sheer black veil that covers your eyes, though it does not meaningfully obstruct your vision. If you had to guess, the point is to mask your individuality.".
To say ShortDesc of (H - a cultist veil):
	say "sheer black veil".
	
To compute SelfExamineDesc of (H - a cultist veil):
	say "Your eyes are covered by a sheer black veil.".

cultist-summoned is a number that varies.

To compute class outfit of (H - a cultist veil):
	let C be a random off-stage cultist robe;
	if the headgear chance of H < the threshold of H:
		if (C is actually summonable or (C is cultist robe and cultist-summoned is 0)):
			if cultist-summoned is 0:
				repeat with O running through worn dresses:
					say "Your [O] vanishes!";
					destroy O;
				repeat with O running through worn skirts:
					say "Your [O] vanishes!";
					destroy O;
			say "[bold type]Suddenly a sheer black robe appears around you![roman type][line break]";
			summon C cursed;
			now cultist-summoned is 1;
			now the raw-magic-modifier of C is the humiliation of the player / 10000;
		otherwise if the humiliation of the player <= 40000:
			say "[one of]Wearing the veil is making you feel less like a person![or][or][or][or][or][or]The veil continues to destroy any sense of self-respect or dignity that you have.[or][or][or][or][or][or][cycling]";
			humiliate 50.
		
To decide which number is the strength-influence of (H - a cultist veil):
	let S be -1;
	if the class of the player is cultist:
		repeat with L running through cursed clothing worn by the player:
			if L is not H, increase S by 1;
	if there is a worn abyssal tattoo:
		let I be the intelligence of the player;
		increase S by I / 6;
	decide on S.
	
To decide which number is the dexterity-influence of (H - a cultist veil):
	let D be -1;
	if the class of the player is cultist:
		repeat with L running through cursed clothing worn by the player:
			if L is not H, increase D by 1;
	if there is a worn abyssal tattoo:
		let I be the intelligence of the player;
		increase D by I / 6;
	decide on D.
	
To decide which number is the intelligence-influence of (H - a cultist veil):
	let I be -1;
	if the class of the player is cultist:
		repeat with L running through cursed clothing worn by the player:
			if L is not H, increase I by 1;
	decide on I.
	
Report taking off cultist veil:
	say "You feel a sudden sense of foreboding as you remove the veil. This may have been a mistake.";
	OralSexAddictUp 1;
	SexAddictUp 1.

Definition: a cultist veil (called C) is condom pinnable:
	decide yes.



Cultist Veil ends here.
