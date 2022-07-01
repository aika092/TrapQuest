Urinating Into Bottles by Actions begins here.

PeeBottling is an action applying to one thing.

Check PeeBottling:[TODO: compatible with parched pedestal]
	if the bladder of the player < 4, say "You don't feel the need." instead;
	if the player is immobile or the player is in danger, say "You're a bit busy right now!" instead;
	if the player is not disgraced and there is a reactive monster and debugmode is 0, say "You consider yourself too dignified to do that in front of someone right now. Peeing on the floor would be humiliating enough." instead;
	unless the noun is a vessel or the noun is a pedestal, say "How would you pee into that?" instead;
	if the noun is a vessel and the noun is tight topped, say "You can only pee into open-topped containers." instead;
	if the noun is erect pedestal, say "There's no opening where you can pee." instead;
	if the player is prone, say "You can only do that when standing." instead;
	if there is worn pee covering clothing:
		now auto is 1;
		if the player is able to displace:
			say "Do you want to get your clothes out of the way first? ";
			if the player is consenting:
				repeat with C running through worn pee covering clothing:
					if C is crotch-zipped:
						try unzipping C;
						if C is crotch-unzipped, now C is temporarily-displaced;
					otherwise if C is displacable and C is crotch-in-place:
						try displacing C;
						if C is crotch-displaced, now C is temporarily-displaced;
		now auto is 0;
		if there is worn pee covering clothing, say "If you peed right now, it'd be inside your [MediumDesc of random worn pee covering clothing]." instead;
	if the noun is a vessel:
		if the doses of the noun > 0 and the fill-type of the noun is not 21:
			say "Are you sure you wish to empty your [noun] of its current contents ([PotionType of the noun])? ";
			if the player is consenting:
				dump the noun;
			otherwise:
				say "You change your mind." instead;
	otherwise if the noun is pedestal:
		if the player is pee protected or there is a worn pee covering actually unavoidable clothing, say "You can't get your genitals close enough to the carving for that to work." instead;
	otherwise:
		say "How would you pee into that?" instead.

pee-bottling is a number that varies.
Carry out PeeBottling:
	if the noun is vessel:
		if the fill-type of the noun is not 21, dump the noun;
		now the fill-colour of the noun is golden;
		now the noun is player-origin;
		while the doses of the noun < the max-doses of the noun and the bladder of the player > 0:
			DoseUp the noun;
			BladderDown 2;
		say "You pee into the [noun][if the bladder of the player > 0], but it's now full and you can't stop going![otherwise if the max-doses of the noun is the doses of the noun], and it's now full.[otherwise].[end if][if the humiliation of the player < 25000][line break][variable custom style]Yuk, why am I doing this?[roman type][line break][end if]";
		humiliate MODERATE-HUMILIATION + SLIGHT-HUMILIATION;
		if the bladder of the player > 0:
			now delayed urination is 1;
			now pee-bottling is 1;
			try urinating;
		otherwise:
			if there is worn temporarily-displaced clothing:
				say "You replace your [ShortDesc of list of worn temporarily-displaced clothing].";
			repeat with C running through temporarily-displaced clothing:
				if C is worn:
					if C is crotch-unzipped, ZipUp C;
					otherwise Replace C;
				now C is not temporarily-displaced;
		if the urine taste addiction of the player > (a random number between 6 and 10) and there is a worn tattoo and drinkme tattoo is not worn:
			summon drinkme tattoo;
			say "A tattoo appears on your leg! Uh-oh.";
			try examining drinkme tattoo;
		otherwise:
			say "The smell of your own [urine] inside the [ShortDesc of the noun] hits your nose.";
			if watersports fetish is 1, SlowUrineTasteAddictUp 1;
			otherwise SlowSexAddictUp 1;
	otherwise:
		let P be the noun;
		let B be the bladder of the player;
		BladderDown B;
		if the player is able to use a urinal, say "You walk up to the [printed name of P] and piss into the mouth carved into the base.";
		compute PedestalFilling P with urine by (B * 2);
	allocate 6 seconds.
Understand "pee into [something]", "pee in [something]", "piss in [something]", "piss into [something]", "urinate in [something]", "urinate into [something]", "wee in [something]", "wee into [something]", "pp [something]" as PeeBottling.

Urinating Into Bottles ends here.
