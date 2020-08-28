Cultist Veil by Headgear begins here.

cultist veil is a headgear. cultist veil is silk. cultist veil is in Mansion23. cultist veil is roleplay.

The printed name of cultist veil is "[clothing-title-before]cultist veil[clothing-title-after]". The text-shortcut of cultist veil is "cv".

Definition: cultist veil is cult garb: decide yes.

Definition: cultist veil is immune to change: decide yes.
Definition: cultist veil is black themed: decide yes.

Figure of cultist veil is the file "Items/Accessories/Head/cultistveil1.png".

To decide which figure-name is the clothing-image of (C - cultist veil):
	decide on figure of cultist veil.

To say ClothingDesc of (H - cultist veil):
	say "A sheer black veil that covers your eyes, though it does not meaningfully obstruct your vision. If you had to guess, the point is to mask your individuality.".
To say ShortDesc of (H - cultist veil):
	say "sheer black veil".

To compute SelfExamineDesc of (H - cultist veil):
	say "Your eyes are covered by a sheer black veil.".

To decide which number is the strength-influence of (H - cultist veil):
	let S be -1;
	if the class of the player is cultist:
		repeat with L running through cursed clothing worn by the player:
			if L is not H, increase S by 1;
	if abyssal tattoo is worn:
		let I be the intelligence of the player;
		increase S by I / 6;
	decide on S.

To decide which number is the dexterity-influence of (H - cultist veil):
	let D be -1;
	if the class of the player is cultist:
		repeat with L running through cursed clothing worn by the player:
			if L is not H, increase D by 1;
	if abyssal tattoo is worn:
		let I be the intelligence of the player;
		increase D by I / 6;
	decide on D.

To decide which number is the intelligence-influence of (H - cultist veil):
	let I be -1;
	if the class of the player is cultist:
		repeat with L running through cursed clothing worn by the player:
			if L is not H, increase I by 1;
	decide on I.

[Report taking off cultist veil:
	say "You feel a sudden sense of foreboding as you remove the veil. This may have been a mistake.";
	OralSexAddictUp 1;
	SexAddictUp 1.]

Report wearing cultist veil:
	if doom counter is 0:
		if Woods01 is not placed:
			Set Up The Woods;
			follow the setting up woods monsters rules;
		if Mansion01 is not placed:
			Set Up The Mansion;
			follow the setting up mansion monsters rules;
		repeat with M running through alive nonexistent monsters:
			set up M;
		say "You feel that something epic has begun.";
		commence doom.

Definition: cultist veil is condom pinnable: decide yes.

Chapter - Class Outfit

Definition: cultist veil (called C) is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]
	if wearing-target is cultist robe, decide yes;
	if wearing-target is C and the quest of C is insanity-quest and the quest-success of insanity-quest is 0, decide yes;
	decide no.

cultist-summoned is a number that varies.
To compute unique recycling of (C - cultist veil):
	now C is in the location of the elder altar;
	now the times-met of herald is 0;
	now cultist-summoned is 0.

To compute class outfit of (H - cultist veil):
	let C be a random off-stage cultist robe;
	if (C is actually summonable or (C is cultist robe and cultist-summoned is 0)):
		if cultist-summoned is 0:
			repeat with O running through worn dresses:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
			repeat with O running through worn exclusive corsets:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
			repeat with O running through worn skirt clashing clothing:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
		say "[bold type]Suddenly a sheer black robe appears around you![roman type][line break]";
		summon C;
		now cultist-summoned is 1;
		now the raw-magic-modifier of C is the humiliation of the player / 10000;
	otherwise if the humiliation of the player <= 40000:
		say "[one of]Wearing the veil is making you feel less like a person![or][or][or][or][or][or]The veil continues to destroy any sense of self-respect or dignity that you have.[or][or][or][or][or][or][cycling]";
		humiliate 50.

Chapter - Quest

insanity-quest is a headgear-clothing-quest. insanity-quest has a number called quest-success.

To uniquely set up (C - cultist veil):
	now the quest of C is insanity-quest.

To say QuestFlav of (Q - insanity-quest):
	say "You sense it wants you to do something really stupid, like participate in a ritual on the hidden altar, or free a powerful being.".

To say QuestTitle of (Q - insanity-quest):
	say " (escalation quest)".

To compute generic second time class reward of (Q - insanity-quest) on (C - a clothing):
	say "[if the player is feeling submissive]reducing your tendency to submissiveness[otherwise]making you feel more dominant[end if]!";
	DelicateDown 3.

To compute quest completion of (Q - insanity-quest) on (C - cultist veil):
	say "[bold type]";
	say QuestPersistFlav of Q on C;
	compute persistent reward of Q on C;
	increase the quest-success of Q by 1;
	if C is cursed, now C is bland;
	say "[roman type][line break]".

To say QuestPersistFlav of (Q - insanity-quest) on (C - cultist veil):
	say "[if the quest-success of Q is 0]The magic sealing your [MediumDesc of C] is lifted! It rewards your efforts by[otherwise]Your [MediumDesc of C] rewards your continued efforts by[end if] ".

To compute generic first time class reward of (Q - insanity-quest) on (C - a clothing):
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

Cultist Veil ends here.
