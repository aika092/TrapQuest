School Drink Machine by Objects begins here.

drink-machine is a dispenser. The printed name of drink-machine is "[TQlink of item described]drink machine[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of drink-machine is "drm". Understand "drink", "machine" as drink-machine. drink-machine is in School17.

Figure of school drink machine is the file "Env/School/drinkmachine1.jpg".

To say ShortDesc of (C - drink-machine):
	say "drink machine".

To decide which figure-name is the examine-image of (C - drink-machine):
	decide on figure of school drink machine.

To say ExamineDesc of (C - drink-machine):
	say "This drinks dispenser is a lot like what you might expect to see at a fast food joint. However instead of there being a normal button to press to start the flow of liquid, instead there's a large 'Sybian' style vibrator that someone must sit on in order to open the nozzle.".


To compute standard decanting of (D - drink-machine):
	allocate 6 seconds;
	compute drink-machine decanting of the noun;

To compute drink-machine decanting of (V - a vessel):
	say "You place the [ShortDesc of V] underneath the nozzle. ";
	compute sybian sitting;
	compute drink-machine filling of V;
	let keep-going be 1;
	while keep-going is 1 and the doses of V < the max-doses of V:
		say "Continue sitting on the Sybian? ";
		if the player is bimbo consenting:
			compute extra turn;
			compute sybian sitting;
			compute drink-machine filling of V;
		otherwise:
			now keep-going is 0.

To compute drink-machine filling of (V - a vessel):
	if diaper quest is 1, now the fill-colour of V is white;
	otherwise now the fill-colour of V is the Appearance corresponding to an Magic of 3 in the Table of Drinks;
	now V is player-origin;
	if the doses of V < the max-doses of V:
		say "The [ShortDesc of V] is filled with [if V is empty]a[otherwise]another[end if] mouthful of [fill-colour of V] liquid.";
		increase the doses of V by 1;



To compute sybian sitting:
	let K be a random worn bottom level pee protection clothing;
	say "You straddle the large vibrator[if K is clothing], the protruding nub pushing into your [genitals] through your [MediumDesc of K][otherwise if the player is female], allowing the silicone nub to sink into the entrance of your [vagina][end if]. As your weight presses down it clicks into action, the powerful mechanism sending superfast vibrations directly into your sensitive crotch. At the same time, the nozzle dispenses its [if diaper quest is 1][milk][otherwise]soda[end if].";
	stimulate vagina from drink-machine.

To decide which number is the stimulation of (D - drink-machine) on (B - a body part):
	decide on 10. [Something like 4 or 5 is more common]

Report going when the player is in School17: [We automatically get a bully if possible]
	if the number of unfriendly uninterested students in the location of the player is 0:
		let M be nothing;
		repeat with ST running through alive students:
			if ST is uninterested and ST is not amicable student and the boredom of ST <= 0 and ST is unfriendly:
				now M is ST;
		if M is student:
			if M is not in the location of the player:
				let NR be School24;
				let SR be School02;
				if the noun is north:
					if M is in SR:
						try M going north;
					otherwise:
						now M is in NR;
						try M going south;
				otherwise:
					if M is in NR:
						try M going south;
					otherwise:
						now M is in SR;
						try M going north;
			if M is in the location of the player, compute perception of M.




School Drink Machine ends here.

