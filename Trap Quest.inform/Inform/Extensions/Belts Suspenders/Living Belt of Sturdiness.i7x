Living Belt of Sturdiness by Belts Suspenders begins here.

The living belt of sturdiness is a belt. Figure of living belt of sturdiness is the file "belt2.png". The living belt of sturdiness is unique. The living belt of sturdiness is biological. The printed name of living belt of sturdiness is usually "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]living belt of sturdiness[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of living belt of sturdiness is "lbs".

The living belt of sturdiness has a number called buildup. The buildup of the living belt of sturdiness is 0.

Definition: a living belt of sturdiness (called C) is father material:
	decide yes.

To decide which figure-name is clothing-image of (C - the living belt of sturdiness):
	decide on figure of living belt of sturdiness.

To say ClothingDesc of (C - living belt of sturdiness):
	say "This 'belt' is a loop of living metallic silver tentacles that are slowly undulating. They look almost robotic in nature but they are warm to the touch and not as solid as a real metal.";
	if item described is penetrating a fuckhole:
		say "[line break]";
		say "[if item described is filling asshole and item described is filling vagina]The tentacles are[otherwise]The tentacle is[end if] currently penetrating you and filling you to the brim. ";
		if item described is thrusting, say "[if the sex addiction of the player > 12 and item described is filling asshole and item described is filling vagina]Moreover, the tentacles are fucking you simultaneously in a deliciously teasing[otherwise if the sex addiction of the player > 12]Moreover, the tentacle is fucking you in a deliciously teasing[otherwise if item described is filling asshole and item described is filling vagina] Even worse, the tentacles are fucking you simultaneously in a frustratingly distracting[otherwise] Even worse, the tentacle is fucking you in a frustratingly distracting[end if] slow, strong and steady manner.";
		otherwise say line break.

To say ShortDesc of (Y - living belt of sturdiness):
	say "belt of living sex tentacles".

Definition: a living belt of sturdiness (called C) is product:
	decide yes.

To decide which number is the alchemy key of (C - living belt of sturdiness):
	decide on 19.

Definition: A clothing (called C) is thrusting:
	if C is living belt of sturdiness and C is penetrating a fuckhole and the player is upright and the player is horny, decide yes;
	decide no.

To decide which number is the girth of (I - the living belt of sturdiness):
	decide on 4.

To decide which number is the initial outrage of (C - living belt of sturdiness):
	decide on 16.

To uniquely set up (C - living belt of sturdiness):
	now the buildup of C is 0.

Definition: living belt of sturdiness (called C) is untransformable:
	decide yes.

To compute periodic effect of (I - living belt of sturdiness):
	if the player is upright:
		if the living belt of sturdiness is penetrating a fuckhole:
			if the buildup of the living belt of sturdiness > 6 and a random number between 1 and (30 - buildup of living belt of sturdiness) < 2 and the player is not unable to orgasm so soon:
				say "The steady fucking of the strong, rhythmic silver tentacle[if living belt of sturdiness is penetrating vagina and living belt of sturdiness is penetrating asshole]s[end if] of your [printed name of living belt of sturdiness] [one of]finally[or]once again[stopping] becomes too much for you, and your knees wobble and fail as you reach an extremely powerful climax.[line break][if the player is gagged]You scream into your [ShortDesc of random thing penetrating face]. [line break][variable custom style]'MMMMMPHH!!!'[otherwise][variable custom style]'Oooooooh fuuuuuuuuccckk!'[end if][roman type][line break]";
				if the living belt of sturdiness is penetrating vagina:
					vaginally orgasm shamefully;
					[say "Your orgasm seems to cause the silver tentacle[if living belt of sturdiness is penetrating vagina and living belt of sturdiness is penetrating asshole]s[end if] to explode with their own climax!  You feel yourself getting filled up with inhuman [semen].";
					WombFill 5;]
				otherwise:
					anally orgasm shamefully;
					[say "Your orgasm seems to cause the silver tentacle to explode with its own climax!  You feel yourself getting filled up with inhuman [semen].";]
				[AssFill 5;]
			otherwise if the player is horny:
				let X be 8;
				if the player is very horny, now X is 4;
				if the player is extremely horny, now X is 1;
				if a random number between 1 and 8 is 1:
					say "The slow but steady thrusting of your [printed name of the living belt of sturdiness] is slowly building you towards an orgasm!";
					increase the buildup of the living belt of sturdiness by 1;
		otherwise:
			say "Silver tentacles shoot out of the belt and towards your crotch!  You quickly feel the warm, smooth tip of a tentacle trying to push its way into your [asshole]! ";
			while the player is ass protected:
				let A be a random top level ass protection clothing worn by the player;
				say "The tentacle easily rips through your [printed name of A]!";
				if A is rippable, rip A;
				otherwise destroy A;
			if asshole is actually occupied:
				say "The tentacle, unable to enter your occupied [asshole], spanks your butt in frustration![line break][variable custom style][one of]Owwwww[or]Ouch[or]Fuck[or]Owiee[purely at random]![roman type][line break]";
				BodyRuin 1;
			otherwise:
				say "[if the openness of asshole < 8]With a moderate amount of effort and force, it manages to make its way in![otherwise]The tentacle slides into your loose hole with ease![end if]";
				now the living belt of sturdiness is penetrating asshole;
			if the player is female:
				say "You feel the warm, smooth tip of a tentacle trying to push its way into your [vagina]! ";
				while the player is pussy protected:
					let A be a random top level protection clothing worn by the player;
					say "The tentacle easily rips through your [printed name of A]!";
					if A is rippable, rip A;
					otherwise destroy A;
				if vagina is actually occupied:
					say "The tentacle, unable to enter your occupied [vagina], spanks your butt in frustration![line break][variable custom style][one of]Owwwww[or]Ouch[or]Fuck[or]Owiee[purely at random]![roman type][line break]";
					BodyRuin 1;
				otherwise:
					say "[if the openness of vagina < 8]With a moderate amount of effort and force, it manages to make its way in![otherwise]The tentacle slides into your loose hole with ease![end if]";
					now the living belt of sturdiness is penetrating vagina;					
	otherwise:
		if the living belt of sturdiness is filling something:
			say "The [if the living belt of sturdiness is penetrating asshole and the living belt of sturdiness is penetrating vagina]tentacles recede[otherwise]tentacle recedes[end if] back into the belt[if the player is not ass protected], leaving you open and exposed[otherwise].[end if].";
			now the living belt of sturdiness is not penetrating asshole;
			now the living belt of sturdiness is not penetrating vagina;

Section 1 Wearability

This is the overdress living belt clash rule:
	if wearing-target is not no protection:
		if the living belt of sturdiness is worn:
			if summoning is 0, say "Your [printed name of living belt of sturdiness] lashes out and prevents you from putting your feet through the leg holes!  It looks like you're not allowed...";
			rule fails.
The overdress living belt clash rule is listed in the overdress wearability rules.

This is the knickers living belt clash rule:
	if wearing-target is not no protection:
		if the living belt of sturdiness is worn:
			if summoning is 0, say "Your [printed name of living belt of sturdiness] lashes out and prevents you from putting your feet through the leg holes!  It looks like you're not allowed...";
			rule fails.
The knickers living belt clash rule is listed in the knickers wearability rules.

This is the trousers living belt clash rule:
	if wearing-target is not no protection:
		if the living belt of sturdiness is worn:
			if summoning is 0, say "Your [printed name of living belt of sturdiness] lashes out and prevents you from putting your feet through the leg holes!  It looks like you're not allowed...";
			rule fails.
The trousers living belt clash rule is listed in the trousers wearability rules.


Living Belt of Sturdiness ends here.

