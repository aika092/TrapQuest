Knife by Objects begins here.


A knife is a kind of thing. A knife is usually not portable. 1 knife is in Hotel19. The printed name of knife is "[TQlink of item described]sharp knife ([if the charge of item described > 0]not [end if]glowing)[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of a knife is "kn". Understand "sharp" as knife. The description of knife is "A large sharp butcher's knife chained to the worktop. You can't take it away with you but you might be able to use it to destroy some items of clothing you don't like wearing.". A knife has a number called charge.

Definition: A knife (called I) is immune to change:
	decide yes.

This is the knife charge decay rule:
	repeat with K running through knife:
		if the charge of K > 0:
			decrease the charge of K by counters-seconds;
			if the charge of K <= 0 and the player is in the location of K, say "The knife suddenly starts glowing again!.".
The knife charge decay rule is listed in the advance counters rules.

Knifing it with is an action applying to two things.
Check knifing:
	if the second noun is not knife and (the second noun is not sword or the second noun is not metal) and the second noun is not midnight tanto, say "How would you cut anything with that?" instead;
	if the second noun is knife:
		if the player is not able to manually use manual dexterity, do nothing instead;
		if the noun is monster, say "Since it's on such a short chain, you really doubt that would work." instead;
		if the noun is hair:
			if the largeness of hair <= favourite hair length, say "[variable custom style][if the bimbo of the player < 10]I feel comfortable with[otherwise if the bimbo of the player < 15]I like[otherwise]I LOVE[end if] my hair being this length.[roman type][line break]" instead;
		otherwise if the noun is worn clothing:
			if the coverer of the noun is clothing, say "You would first need to remove or destroy your [coverer of the noun]." instead;
		otherwise:
			say "Why would you want to do that?" instead;
		if the player is in danger, say "It's a bit dangerous to try and handle a sharp knife with enemies nearby!" instead;
		if the player is immobile, say "You are a bit tied up right now!" instead;
	otherwise:
		if the noun is monster, try slapping the noun instead;
		if the noun is ass hook and the player is wrist bound in front, say "You can't do that when your wrists are bound together in front of you!";
		if the noun is not vines and the noun is not ass hook, say "How would you cut that?".
Carry out knifing:
	now seconds is 6;
	if the noun is hair:
		say "You use the knife to cut your [ShortDesc of hair] to your favourite length.";
		while the largeness of hair > favourite hair length:
			if the fake largeness of hair > 0:
				decrease the fake largeness of hair by 1;
			otherwise:
				decrease the raw largeness of hair by 1;
		say "You now have [ShortDesc of hair].";
	otherwise if the noun is ass hook:
		let S be the dexterity of the player;
		if S < 9, now S is 9;
		let R be a random number from 1 to S;
		if R > 3:
			say "You manage to cut through the rope attached to the hook, abruptly severing its assistance with your balance and sending you painfully to the floor";
			increase the body soreness of the player by 1;
			now the stance of the player is 1;
			now the noun is not penetrating asshole;
			now the noun is unrevealed;
		otherwise:
			say "You can't bend enough to get a safe angle for cutting the rope! Maybe you should try again?";
	otherwise if the noun is vine:[strength and dexterity check]
		let V be a random vine grabbing the player;
		if the player is upright:
			if a random number between 1 and the dexterity of the player > 8:
				say "You bend down and find an angle where you can safely chop through several of the vines holding your ankles. You're free!";
				now V is not grabbing the player;
			otherwise:
				if the player is vine-cursed and a random number between 3 and the dexterity of the player < 3: [####Selkie: Changed back to < 3. MG to check. Can only fail if Dex is 1 or 2]
					say "You bend down to try and free your ankles, but while you[']re looking for a clean cut, several vines lash out and grab you by the wrists, slamming you down onto all fours!";
					now the stance of the player is 1;
				otherwise:
					say "You try, but you can't bend over enough to find a place for a clean cut! Maybe you should keep trying?";
		otherwise:
			if a random number between 1 and the strength of the player > 12:
				say "You wrest your hand free of the vines and slice at every piece of vegetation in your immediate vicinity. They reflexively release you, retreating back into the soil for another attempt. You should get out of here before they catch you again!";
				now V is not grabbing the player;
			otherwise:
				say "You try, but the vines holding your wrist keep your sword arm firmly pinned to the ground. Maybe you should try again?";
	otherwise:
		if the noun is bondage or the noun is unremovable:
			say "The [clothing-material of the noun] material is too tough, the knife can't cut through it!  You give up.";
		otherwise if the charge of the second noun > 0:
			say "The knife seems to be completely dull at the moment!  You give up.";
		otherwise:
			say "You force the knife under and through the [clothing-material of the noun] material of the [noun] and slice straight through it as if it were made of butter!  It is completely destroyed!  The knife loses its glow[if newbie tips is 1][one of]. Maybe it needs to recharge?[or].[stopping][otherwise].[end if]";
			now the charge of the second noun is 300;
			destroy the noun;
			now the noun is in Holding Pen. [stop it spawning again]
Report knifing:
	let M be a random friendly robochef in the location of the player;
	if M is a monster:
		say "[first custom style]'[one of]HAZARDOUS ACTIVITIES DETECTED! PACIFICATION PROTOCOL REQUIRED.....PROTOCOL FOUND. RELEASE THE CHOPPING DEVICE AND PREPARE FOR [if diaper quest is 1]BABIFICATION[otherwise]ANAL INFUSION[end if] ROUTINE!'[or]UNAUTHORIZED COOKING DETECTED!  RELEASE THE SHARP WEAPON AND PREPARE FOR [if diaper quest is 1]APPROPRIATE[otherwise]ANAL BREWING[end if] PUNISHMENT ROUTINE.'[at random][roman type][line break]Uh-oh, looks like you've angered [NameDesc of M]!";
		anger M;
		now M is interested;
		now the boredom of M is 0.
Understand "cut [something] with [something]", "slice [something] with [something]", "destroy [something] with [something]", "remove [something] with [something]" as knifing it with.
Check cutting when the player is in Hotel19:
	try knifing the noun with a random knife instead.


Knife ends here.

