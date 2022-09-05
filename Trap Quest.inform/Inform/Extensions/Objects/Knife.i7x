Knife by Objects begins here.

A knife is a kind of thing. A knife is usually not portable. 1 knife is in Hotel19. The printed name of knife is "[TQlink of item described]sharp knife ([if the charge of item described > 0]not [end if]glowing)[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of a knife is "kn". Understand "sharp" as knife. A knife has a number called charge.

Figure of knife is the file "Env/Hotel/knife1.png".

To decide which figure-name is the examine-image of (K - a knife):
	decide on figure of knife.

To say ExamineDesc of (C - a knife):
	say "A large sharp kitchen knife chained to the worktop. You can't take it away with you but you might be able to use it to destroy some items of clothing you don't like wearing.".

Definition: a knife is immune to change: decide yes.

Check going when there is a knife in the location of the player:
	force clothing-focus redraw. [This forces the clothing window to redraw]

Report going when there is a knife in the location of the player:
	force clothing-focus redraw. [This forces the clothing window to redraw]

A later time based rule (this is the knife charge decay rule):
	repeat with K running through knife:
		if the charge of K > 0:
			decrease the charge of K by time-seconds;
			if the charge of K <= 0 and the player is in the location of K, say "The knife suddenly starts glowing again!.".

Knifing it with is an action applying to two things.
Check knifing:
	if the second noun is knife:
		if the noun is monster, say "Since it's on such a short chain, you really doubt that would work." instead;
		if the class of the player is not santa's little helper and the noun is not wrist-bound-behind clothing:
			if the player is not able to manually use manual dexterity, do nothing instead;
		if the player is immobile, say "You are a bit tied up right now!" instead;
	otherwise if the second noun is sword:
		if the noun is monster, try slapping the noun instead;
		if the second noun is not metal, say "Your [ShortDesc of (the second noun)] isn't hard enough to slice through anything." instead;
		if the noun is ass hook and the player is wrist bound in front, say "You can't do that when your wrists are bound together in front of you!" instead;
		if there is a thing wrangling arms, say "You can't do that while your arms are restricted like this!" instead;
		if the player is monster stuck, say "You're a bit busy right now!" instead;
		if the second noun is not worn, say "You would need to wield it first." instead;
	otherwise:
		say "How would you cut anything with that?" instead;
	if the noun is hair:
		if the largeness of hair <= favourite hair length, say "[variable custom style][if the bimbo of the player < 10]I feel comfortable with[otherwise if the bimbo of the player < 15]I like[otherwise]I LOVE[end if] my hair being this length.[roman type][line break]" instead;
	otherwise if the noun is worn clothing:
		if the coverer of the noun is clothing, say "You would first need to remove or destroy your [coverer of the noun]." instead;
	otherwise if the noun is not ass hook and the noun is not vines:
		say "Why would you want to do that?" instead;
	if the player is in danger, say "It's a bit dangerous to try and handle a sharp knife with enemies nearby!" instead.

Carry out knifing:
	allocate 6 seconds;
	force clothing-focus redraw; [This forces the clothing window to redraw]
	if the noun is hair:
		if the second noun is equippable:
			say "Your [ShortDesc of the second noun] refuses to cut your hair. Maybe you need to cut it with something specific...";
		otherwise:
			say "You use the knife to cut your [ShortDesc of hair] to your favourite length.";
			HairCut to favourite hair length;
			say "You now have [ShortDesc of hair].";
			now the charge of the second noun is 500;
	otherwise if the noun is ass hook:
		let S be the dexterity of the player;
		if S < 9, now S is 9;
		let R be a random number from 1 to S;
		if R > 3:
			say "You manage to cut through the rope attached to the hook, abruptly severing its assistance with your balance and sending you painfully to the floor!";
			now the stance of the player is 1;
			BodyRuin 1;
			now the noun is not penetrating asshole;
			now the noun is unrevealed;
		otherwise:
			say "You try, but can't bend your arms enough to safely cut the rope. Maybe you should try again?";
	otherwise if the noun is vine:[strength and dexterity check]
		let V be a random vine wrangling a body part;
		let S be a random number between 1 and the dexterity of the player;
		if S > 8:
			say "You bend down and try to hack through some of the vines holding onto your ankles.";
			now S is a random number between 1 and the strength of the player;
			if S > 8:
				say "The vines are moving constantly, so it's difficult, but after chopping through a few of them, you have enough of an opening to finally wrench free! More vines push out of the soil, determined to capture you again!";
				now V is not wrangling thighs;
			otherwise if S > 3:
				say "The vines are moving constantly, and although you manage to chop through a few, the broken vines are immediately replaced with newer ones. Maybe you should keep trying?";
			otherwise:
				say "The vines are moving constantly, and while you're trying to chop through them, a vine suddenly lashes out and grabs your wrist! You shake it off, but not before another vine grabs your [ShortDesc of (the second noun)] and tosses it away from you!";
				now the second noun is in the location of the player;
		otherwise:
			if S > 3:
				say "You try to bend over, but you just aren't flexible enough for it! Maybe you should try again?";
			otherwise:
				say "You try to bend over to cut the vines around your ankles, but just as your hands are about to reach the ground, several vines lash out and grab your wrists, slamming you down onto all fours!";
				now V is wrangling arms;
				now the stance of the player is 1;
	otherwise:
		if the second noun is equippable and the second noun is not midnight tanto and the noun is cursed:
			say "Your [ShortDesc of the second noun] refuses to cut through the [clothing-material of the noun]. Maybe you need to cut it with something more specialised to cut through a curse...";
		otherwise if the second noun is equippable and the second noun is not blessed:
			say "Your [ShortDesc of the second noun] refuses to cut through the [clothing-material of the noun]. Maybe [if the second noun is midnight tanto]if it was blessed[otherwise]you need to cut it with something more specialised[end if]...";
		otherwise if (the noun is bondage and the noun is not ballgag and the noun is not blessed) or (the noun is unremovable and the noun is not blessed piercing):
			say "The [clothing-material of the noun] material is too tough, the blade can't cut through it![if the noun is not unremovable or the noun is piercing][line break][variable custom style]Perhaps if it was blessed?[roman type][line break][end if]";
		otherwise if the noun is cursed and strongCurses is 1 and the noun is not headgear:
			say "The blade can't seem to cut through the curse! You'll need to [if the quest of the noun is no-clothing-quest]find an altar to give it a quest[otherwise]complete its quest first[end if].";
		otherwise if second noun is knife:
			if the charge of the second noun > 0:
				say "The knife seems to be completely dull at the moment! You give up.";
			otherwise:
				say "You force the knife under and through the [clothing-material of the noun] material of the [noun] and slice straight through it as if it were made of butter. It is completely destroyed! The knife loses its glow[if newbie tips is 1][one of]. Maybe it needs to recharge?[or].[stopping][otherwise].[end if]";
				destroy the noun;
				now the charge of the second noun is 500;
				now the noun is in Holding Pen; [stop it spawning again]
		otherwise:
			say "You force the blade under and through the [clothing-material of the noun] material of the [noun] and slice straight through it as if it were made of butter. It is completely destroyed! The blade loses its glow, and it is no longer blessed.";
			now the second noun is bland;
			destroy the noun;
			now the noun is in Holding Pen. [stop it spawning again]
Report knifing:
	let M be a random friendly robochef in the location of the player;
	if M is a monster:
		say "[first custom style]'[one of]HAZARDOUS ACTIVITIES DETECTED! PACIFICATION PROTOCOL REQUIRED... PROTOCOL FOUND. RELEASE THE CHOPPING DEVICE AND PREPARE FOR [if diaper quest is 1]BABIFICATION[otherwise]ANAL INFUSION[end if] ROUTINE!'[or]UNAUTHORISED COOKING DETECTED! RELEASE THE SHARP WEAPON AND PREPARE FOR [if diaper quest is 1]APPROPRIATE[otherwise]ANAL BREWING[end if] PUNISHMENT ROUTINE.'[at random][roman type][line break]Uh-oh, looks like you've angered [NameDesc of M]!";
		anger M;
		interest M.
Understand "cut [something] with [something]", "slice [something] with [something]", "destroy [something] with [something]", "remove [something] with [something]" as knifing it with.
Check cutting when the player is in Hotel19:
	try knifing the noun with a random knife instead.

Knife ends here.
