Vibrator by Sex Toys begins here.

A vibrator is a kind of dong. There is 1 vibrator. The size of a vibrator is usually 3. The printed name of a vibrator is usually "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if]vibrator[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of vibrator is "vi". Understand "vibe" as vibrator.

Figure of vibrator is the file "Items\Accessories\Toys\vibrator1.png".

To decide which figure-name is clothing-image of (C - a vibrator):
	decide on figure of vibrator.

To say ClothingDesc of (C - a vibrator):	
	say "A purple dildo [if the item described is cursed and the curse-ID of the item described is sure]made of cheap plastic. It has large ridges for maximum stimulation[otherwise]made of cheap plastic[end if][if the item described is worn]. Its vibrations are slowly driving you insane![otherwise].[end if]".

To say ShortDesc of (C - a vibrator):	
	say "vibrator".

To compute periodic effect of (P - a vibrator):
	increase the toy-charge of P by 1;
	if the toy-charge of P > 10:
		now the toy-charge of P is 0;
		let F be a random fuckhole penetrated by P;
		if P is blessed:
			say "[one of]Your [ShortDesc of P] is vibrating just slowly enough to stimulate you without getting you any closer to an orgasm. It's maddening![or][or]Your [ShortDesc of P] continues to stimulate you.[or][cycling]";
			arouse 100;[blessed vibrator does not increase soreness, it merely increases arousal]
		otherwise:
			if the soreness of F > 7:
				say "[one of]Your [ShortDesc of P] slows down just enough to keep stimulating you without [if refactoryperiod < 1]getting you any closer to orgasm. How cruel![otherwise]making you more sore. The relief is nice, but you feel a mounting need for release.[end if][or][or]Your [ShortDesc of P] continues to stimulate you.[or][or][or][cycling]";
				arouse 200;
			otherwise:
				say "[one of]Your [ShortDesc of P] is stimulating the deepest parts of your [variable F]! Every [if P is cursed]moment[otherwise]minute[end if] it stays inside of you is making you more sore![or]Your [ShortDesc of P] continues to ruin your [variable F]![or]Your [ShortDesc of P] is still making you sore.[cycling]";
				if F is asshole, ruin asshole;
				otherwise ruin vagina;
				if P is cursed, arouse 200.

To decide which number is the original price of (C - a vibrator):
	decide on 4.
	
To decide which number is the masturbation-bonus of (C - a vibrator):
	decide on 3.

To uniquely set up (C - a vibrator):
	let R be a random number between 1 and 10;
	if R < 3 and diaper quest is 0, now C is temptation;
	if R is 3, now C is endurance;
	if R is 4, now C is dominance.

Vibrator ends here.

