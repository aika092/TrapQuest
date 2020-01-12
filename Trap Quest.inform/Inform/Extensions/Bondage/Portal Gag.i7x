Portal Gag by Bondage begins here.

portal gag is a ballgag. The printed name of portal gag is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]portal gag[clothing-title-after]". The text-shortcut of portal gag is "ptg". portal gag has a number called charge.

To say ShortDesc of (C - portal gag):
	say "portal gag".

Figure of portal gag is the file "Items/Accessories/Head/portalgag1.png".

To decide which figure-name is clothing-image of (C - portal gag):
	decide on figure of portal gag.

To say ClothingDesc of (C - portal gag):
	say "This unique ballgag has a swirling portal for a ball.".

Definition: portal gag is fetish appropriate: decide no. [Never appears randomly]
Definition: portal gag is magic themed: decide yes.
Definition: portal gag is transformation-protected: decide yes.

To Squirt (L - a liquid-object) on (C - portal gag) by (N - a number):
	say ", disappearing through the portal.".

To compute periodic effect of (C - portal gag):
	increase the charge of C by 1;
	if portal-pants is worn:
		if the charge of C > a random number between 16 and 40:
			now the charge of C is 0;
			say "[bold type][one of]You can't help but[or]Once again you[stopping] accidentally stimulate yourself with your tongue![roman type][line break]";
			stimulate vagina from face;
			if the player is male:
				if penis is pushed over the edge, vaginally orgasm shamefully;[####Selkie: surely this should be penile orgasm?]
			otherwise:
				if vagina is pushed over the edge, vaginally orgasm shamefully;
	otherwise:
		let M be a random monster retaining portal-pants;
		if M is monster:
			if the charge of C is 26:
				if M is regionally in playerRegion:
					now the charge of C is 0;
				otherwise if M is male and a random number between 1 and 5 > 2 and diaper quest is 0:
					say "[bold type]All of a sudden, you feel [NameDesc of M][bold type] push [his of M] [manly-penis] through the portal and into your mouth![roman type][line break][big he of M] begins thrusting in and out, threatening to make you gag![line break][variable custom style]'Mmmmmph! Glk glk glk glk glk...'[roman type][line break]";
				otherwise:
					now the charge of C is 0;
					if the player is thirsty:
						if watersports fetish is 1 and a random number between 1 and 2 is 1:
							say "[bold type]All of a sudden, you feel [NameDesc of M][bold type] push [his of M] [if M is male][manly-penis][otherwise]pussy[end if] up against your mouth![roman type][line break][big he of M] begins urinating... and there's nowhere for it to go except into your mouth!";
							DrinkPiss from M;
						otherwise:
							say "[bold type]All of a sudden, you feel [NameDesc of M][bold type] pour some kind of drink through the portal.[roman type][line break]There's nowhere for it to go except into your mouth!";
							StomachUp 4;
							if a random number between 0 and alcohol fetish is 1:
								say "It's some kind of strong [one of]fruity wine[or]alcoholic spirit[or]beer[in random order], which is going straight to your head!";
								increase alcohol level;
					otherwise if diaper messing >= 3 or the player is hungry:
						say "[bold type]All of a sudden, you feel [NameDesc of M][bold type] push something into your mouth![roman type] It seems [he of M][']s forcefeeding you candy! [one of]It's[or]This time it's[stopping] a ";
						if a random number between 1 and 2 is 1:
							say "nasty sour piece of liquorice!";
							if a random number between 1 and 4 > 1:
								say "You manage to tolerate the bittersweet taste without suffering any [if liquorice-timer > 0]further [end if]negative effects.";
							otherwise:
								say "Yuck! You feel your body weaken [if liquorice-timer > 0]even further[otherwise]slightly. You feel that it's going to stay that way until the bittersweet taste fades from your mouth[end if].";
								increase liquorice-timer by default-candy-duration;
						otherwise:
							say "whole mouthful of candy corn!";
							compute CandyCornEat;
					otherwise:
						say "[bold type]All of a sudden, you feel [NameDesc of M][bold type] push something small and solid into your mouth![roman type] It seems to be some kind of pill... and you're forced to swallow it! Your eyes glaze over as your body quickly floods with extreme arousal...";
						Arouse 8000;
			if the charge of C > 26:
				if M is regionally in playerRegion or a random number between 26 and 28 < the charge of C:
					now the charge of C is 0;
					say "[BigNameDesc of M] cums, filling your mouth with [his of M] load!";
					dislodge C;
					now M is penetrating face;
					StomachSemenUp the semen load of M; [We make sure M is penetrating face, for correct deepthroat checks.]
					dislodge M;
					now C is penetrating face;
				otherwise:
					say "[BigNameDesc of M] is still fucking your mouth through the portal![line break][variable custom style]'Glk glk glk glk glk...'[roman type][line break]";




Portal Gag ends here.
