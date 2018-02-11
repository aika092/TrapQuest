Wasp Antennae by Headgear begins here.



A wasp-antennae is a kind of headgear. There is one wasp-antennae. A wasp-antennae is biological. Understand "wasp", "antennae" as wasp-antennae. A wasp-antennae is usually anal-sex-addiction-influencing. A wasp-antennae is usually roleplay.

The printed name of wasp-antennae is usually "[TQlink of item described][clothing-title-before]wasp antennae[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of wasp-antennae is "waa".

total-wasps is a number that varies. total-wasps is 0.

Definition: a wasp-antennae (called C) is cult garb:
	decide yes.

Figure of wasp antennae is the file "waspantennae1.png".

To decide which figure-name is the clothing-image of (C - a wasp-antennae):
	decide on figure of wasp antennae.

To say ClothingDesc of (H - a wasp-antennae):
	say "[if total-wasps < 50]A pair of bobbing yellow and black antennae. You[']re pretty sure they[']re just on a headband.[otherwise]A pair of black antennae. They twitch to and fro, and seem to protrude directly from your head! [end if]".
To say ShortDesc of (H - a wasp-antennae):
	say "wasp antennae".
	
To compute SelfExamineDesc of (H - a wasp-antennae):
	say "[if total-wasps < 50]You have a headband with a pair of yellow and black antennae bobbing on your head.[otherwise]You have a pair of twitching black antennae coming out of your head.[end if]".
	
Definition: a wasp-antennae is removable:
	if total-wasps >= 50, decide no;
	decide yes.

wasp-summoned is a number that varies.

To compute class outfit of (H - a wasp-antennae):
	let B be a random off-stage striped top;
	let S be a random off-stage black-and-yellow striped stockings;
	if B is actually summonable or (B is striped top and wasp-summoned is 0):
		if wasp-summoned is 0:
			repeat with O running through worn dresses:
				say "Your [O] vanishes!";
				destroy O;
		say "[bold type][if total-wasps < 50]A fuzzy black and yellow top suddenly appears on your chest![otherwise]You look down in shock as the skin around your breasts begins to turn black and shiny! Fine black and yellow fuzz grows out of them now![end if][roman type][line break]";
		summon B cursed;
		now the raw-magic-modifier of B is total-wasps / 50;
		now wasp-summoned is 1;
	otherwise if S is actually summonable:
		say "[bold type][if total-wasps < 50]A pair of fuzzy black and yellow stockings suddenly appears on your legs![otherwise]You look down in shock as your legs turn black and shiny! Fine black and yellow fuzz grows out of them now![end if][roman type][line break]";
		summon S cursed;
		now the raw-magic-modifier of S is total-wasps / 50.
			
	

[need: black and yellow bikini (eventually becomes damage blocking), black and yellow stockings (eventually becomes damage blocking), wasp cloud weapon

after you have laid enough eggs, you start very slowly producing them yourself if you don't have any in you perhaps]


Wasp Antennae ends here.

