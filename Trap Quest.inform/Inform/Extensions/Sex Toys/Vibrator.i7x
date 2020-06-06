Vibrator by Sex Toys begins here.

A vibrator is a kind of dong. The size of a vibrator is usually 3. The printed name of a vibrator is usually "[clothing-title-before]vibrator[clothing-title-after]". The text-shortcut of a vibrator is "vi". Understand "vibe", "vibrator" as a vibrator.

Figure of vibrator is the file "Items/Accessories/Toys/vibrator1.png".
To decide which figure-name is clothing-image of (C - a vibrator):
	decide on figure of vibrator.

To say ShortDesc of (C - a vibrator):
	say "vibrator".
To say ClothingDesc of (C - purple-vibrator):
	say "A vibrating dildo[if C is worn]. Its vibrations are slowly driving you insane![otherwise].[end if]".

To compute school periodic effect of (V - a vibrator):
	compute periodic effect of V.

To compute periodic effect of (P - a vibrator):
	increase the toy-charge of P by 1;
	if the player is in a predicament room and the player is not in Predicament20:
		if the player is in a bossed predicament room, increase the toy-charge of P by 1; [double speed in toilets etc.]
		otherwise increase the toy-charge of P by 5; [quintuple speed in main area]
	if the toy-charge of P > 10:
		now the toy-charge of P is 0;
		let F be a random fuckhole penetrated by P;
		if P is blessed:
			say "[one of]Your [ShortDesc of P] is vibrating just slowly enough to stimulate you without getting you any closer to an orgasm. It's maddening![or][or]Your [ShortDesc of P] continues to stimulate you.[or][cycling]";
			passively stimulate F from P;
		otherwise:
			if the soreness of F > 7 or (the soreness of F > 2 and F is vagina):
				say "[one of]Your [ShortDesc of P] is stimulating the deepest parts of your [variable F]! Every [if P is cursed]moment[otherwise]minute[end if] it stays inside of you is making you more aroused![or]Your [ShortDesc of P] continues to buzz away inside your [variable F]![or]Your [ShortDesc of P] is still vibrating strongly inside your [variable F].[cycling]";
				stimulate F from P;
			otherwise:
				if diaper quest is 0, say "[one of]Your [ShortDesc of P] is stimulating the deepest parts of your [variable F]! Every [if P is cursed]moment[otherwise]minute[end if] it stays inside of you is making you more sore![or]Your [ShortDesc of P] continues to ruin your [variable F]![or]Your [ShortDesc of P] is still making you sore.[cycling]";
				otherwise say "[one of]Your [ShortDesc of P] is stimulating the deepest parts of your [variable F]! Every [if P is cursed]moment[otherwise]minute[end if] it stays inside of you is making you more aroused![or]Your [ShortDesc of P] continues to buzz away inside your [variable F]![or]Your [ShortDesc of P] is still vibrating strongly inside your [variable F].[cycling]";
				ruin F;
			if P is cursed, arouse 200.

To decide which number is the original price of (C - a vibrator):
	decide on 4.
To decide which number is the raw-masturbation-bonus of (C - a vibrator):
	decide on 3.
To decide which number is the stimulation of (T - a vibrator) on (F - a body part):
	decide on 4.

To uniquely set up (C - a vibrator):
	if C is discovered varied:
		let R be a random number between 1 and 10;
		if R < 3 and diaper quest is 0, now C is temptation;
		if R is 3, now C is endurance;
		if R is 4, now C is dominance.

purple-vibrator is a vibrator.
Definition: purple-vibrator is purple themed: decide yes.
To say ClothingDesc of (C - purple-vibrator):
	say "A purple dildo [if C is cursed and the curse-ID of C is sure]made of cheap plastic. It has large ridges for maximum stimulation[otherwise]made of cheap plastic[end if][if C is worn]. Its vibrations are slowly driving you insane![otherwise].[end if]".

remote-controlled-vibrator is a vibrator. remote-controlled-vibrator is unique.
Figure of remote controlled vibrator 1 is the file "Items/Accessories/Toys/vibrator2.jpg".
Figure of remote controlled vibrator 2 is the file "Items/Accessories/Toys/vibrator3.jpg".
To decide which figure-name is clothing-image of (C - remote-controlled-vibrator):
	if the player is male, decide on figure of remote controlled vibrator 2;
	decide on figure of remote controlled vibrator 1.
Definition: remote-controlled-vibrator is discovered varied: decide no.
Definition: remote-controlled-vibrator is fetish appropriate: decide no. [Stops it spawning randomly]
To say ClothingDesc of (C - remote-controlled-vibrator):
	if the game-state of team-football-predicament is 0:
		say "This hi-tech remote controlled [if the player is male]onahole vibrator wrapped around your [player-penis][otherwise]vibrator[end if] vibrates more strongly the closer it is to the football. Apparently it also has a hollow section, and the loser of the game will find their [if the player is male]pants[otherwise][vagina][end if] filled to the brim with cum.";
	otherwise if the game-state of team-football-predicament is 1:
		say "This hi-tech remote controlled vibrator has turned itself off.";
	otherwise if the toy-charge of C >= 10:
		say "This hi-tech remote controlled vibrator has run out of battery.";
	otherwise:
		say "A hi-tech remote controlled [if the player is male]onahole [end if]vibrator that was used in the football extra credit lesson.".
To compute periodic effect of (P - remote-controlled-vibrator):
	if the game-state of team-football-predicament is not 1:
		if the toy-charge of P >= 10:
			if the toy-charge of P is 10, say "[bold type][BigNameDesc of P] [bold type]seems to run out of battery, and stops vibrating.[roman type][line break]";
			now the toy-charge of P is 11;
		otherwise:
			if football is in the location of the player or the game-state of team-football-predicament is 2: [double stimulation]
				if the football-possessor of football is the player or the game-state of team-football-predicament is 2: [triple stimulation]
					if the player is female:
						if diaper quest is 0, say "[one of]Your [ShortDesc of P] is stimulating the deepest parts of your [vagina]! Every moment it stays inside of you is making you more sore![or]Your [ShortDesc of P] ruins your [vagina] with its powerful buzzing![or]Your [ShortDesc of P] is making you sore with its powerful vibrations.[cycling]";
						otherwise say "[one of]Your [ShortDesc of P] is powerfully stimulating the deepest parts of your [vagina]! Every moment it stays inside of you is making you more aroused![or]Your [ShortDesc of P] powerfully buzzez away inside your [vagina]![or]Your [ShortDesc of P] is vibrating strongly inside your [vagina].[cycling]";
						ruin vagina;
					otherwise:
						say "[one of]Your [ShortDesc of P] is stimulating the deepest parts of your [player-penis]! Every moment your [player-penis] stays inside of it is making you more aroused![or]Your [ShortDesc of P] powerfully buzzes away on your [player-penis]![or]Your [ShortDesc of P] is vibrating strongly on your [player-penis].[cycling]";
						stimulate penis from P;
					if the player is not in a predicament room, increase the toy-charge of P by 1;
				otherwise:
					say "Your [ShortDesc of P] stimulates you with moderately strong vibrations!";
				stimulate vagina from P;
			otherwise if the game-state of team-football-predicament is 0:
				say "Your [ShortDesc of P] gently stimulates you.";
			stimulate vagina from P.
Check plugging something with remote-controlled-vibrator when the player is male:
	say "You can't work out how to put this back on." instead.
Check wearing remote-controlled-vibrator when the player is male:
	say "You can't work out how to put this back on." instead.
Check plugging asshole with remote-controlled-vibrator:
	say "That doesn't fit that way round." instead.

Vibrator ends here.
