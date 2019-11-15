Wasp Antennae by Headgear begins here.

wasp-antennae is a headgear. wasp-antennae is biological. Understand "wasp", "antennae" as wasp-antennae. wasp-antennae is anal-sex-addiction-influencing.

The printed name of wasp-antennae is "[clothing-title-before]wasp antennae[clothing-title-after]". The text-shortcut of wasp-antennae is "waa".

total-wasps is a number that varies. total-wasps is 0.

Definition: wasp-antennae is cult garb: decide yes.
Definition: wasp-antennae is yellow themed: decide yes.
Definition: wasp-antennae is black themed: decide yes.

Figure of fake wasp antennae is the file "Items/Accessories/Head/waspantennae1.png".
Figure of real wasp antennae is the file "Items/Accessories/Head/waspantennae2.png".

To decide which figure-name is the clothing-image of (C - wasp-antennae):
	if total-wasps < 50, decide on figure of fake wasp antennae;
	decide on figure of real wasp antennae.

To say ClothingDesc of (H - wasp-antennae):
	say "[if total-wasps < 50]A pair of bobbing yellow and black antennae. You[']re pretty sure they[']re just on a headband.[otherwise]A pair of black antennae. They twitch to and fro, and seem to protrude directly from your head![end if]".
To say ShortDesc of (H - wasp-antennae):
	say "wasp antennae".

To compute SelfExamineDesc of (H - wasp-antennae):
	say "[if total-wasps < 50]You have a headband with a pair of yellow and black antennae bobbing on your head.[otherwise]You have a pair of twitching black antennae coming out of your head.[end if]".


Chapter - Class Outfit

Definition: wasp-antennae (called C) is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]
	if wearing-target is C and total-wasps >= 50, decide yes;
	if wearing-target is striped top or wearing-target is black-and-yellow striped stockings or wearing-target is wasp-cloud, decide yes;
	decide no.

To say RemovalBlocked of (C - wasp-antennae):
	if total-wasps >= 50, say "You can't, you're now a broodmother for life!";
	otherwise say "Your [ShortDesc of C] is somehow preventing you from taking this off!".

wasp-summoned is a number that varies.
To compute unique recycling of (C - wasp-antennae):
	now wasp-summoned is 0.

To compute class outfit of (H - wasp-antennae):
	let B be a random off-stage striped top;
	let S be a random off-stage black-and-yellow striped stockings;
	if B is actually summonable or (B is striped top and wasp-summoned is 0):
		if wasp-summoned is 0:
			repeat with O running through worn dresses:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
		say "[bold type][if total-wasps < 50]A fuzzy black and yellow top suddenly appears on your chest![otherwise]You look down in shock as the skin around your breasts begins to turn black and shiny! Fine black and yellow fuzz grows out of them now![end if][roman type][line break]";
		summon B;
		now the raw-magic-modifier of B is total-wasps / 50;
		now wasp-summoned is 1;
	otherwise if S is actually summonable:
		say "[bold type][if total-wasps < 50]A pair of fuzzy black and yellow stockings suddenly appears on your legs![otherwise]You look down in shock as your legs turn black and shiny! Fine black and yellow fuzz grows out of them now![end if][roman type][line break]";
		summon S;
		now the raw-magic-modifier of S is total-wasps / 50.


Chapter - Quest

wasp-sex-quest is a headgear-clothing-quest.

To uniquely set up (C - wasp-antennae):
	now the quest of C is wasp-sex-quest.

To say QuestFlav of (Q - wasp-sex-quest):
	say "You sense that it wants you to breed more with your giant wasps.".

To say QuestTitle of (Q - wasp-sex-quest):
	say " (wasp sex quest)".


[need: black and yellow bikini (eventually becomes damage blocking), black and yellow stockings (eventually becomes damage blocking), wasp cloud weapon

after you have laid enough eggs, you start very slowly producing them yourself if you don't have any in you perhaps]


Wasp Antennae ends here.

