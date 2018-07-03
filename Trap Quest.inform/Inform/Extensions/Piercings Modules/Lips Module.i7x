Lips Module by Piercings Modules begins here.

A lips module is a kind of module. The printed name of lips module is "[TQlink of item described][item style]lips module[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of lips module is "lpm". There is 1 lips module.

To say ClothingDesc of (C - a lips module):
	say "A resilient yet supple silvery coating covers your lips. Nothing you do seems to be able to rub it off.".
To say ShortDesc of (C - a lips module):
	say "lips module".
	
To say ModuleFlav of (M - a lips module):
	say "[second custom style]'Thank you for participating in the trial! Module type selected: Semen Conversion System. This module modifies the oral consumption systems of the subject, allowing semen to be used for system repair.'[roman type] An arm snakes out with a strange, silvery mouth guard on one end. It carefully presses it up to your lips, and you feel a sudden burning sensation from them. After a moment it pulls away, and a mirror rises to show you that your lips are now coated in something silvery. '[line break][second custom style]'The Health and Safety Department has issued a warning against attempted removal of this installation. Severe loss of motor and cognitive function may result. Installation confirmed complete. Have a nice day and a pleasant remainder of your test experience, TESTER [NameBimbo]!'[roman type][line break]".
	
To compute periodic effect of (P - a lips module):
	increase the module-charge of P by 1;
	if the module-charge of P > 24:
		now the module-charge of P is 0;
		if the stomach-semen of the player > 0:
			decrease the stomach-semen of the player by 1;
			say "Your lips feel warm for an instant, which spreads to your body.";
			if the body soreness of the player > 0:
				bodyheal 1;
				say "You feel slightly better!";
			otherwise if the soreness of vagina > 0:
				heal vagina times 1;
				say "You feel slightly less sore!";
			otherwise if the soreness of asshole > 0:
				heal asshole times 1;
				say "You feel slightly less sore!";
			otherwise:
				say "You feel as though your skin has gotten slightly tougher.";
				DelicateDown 1;
		otherwise if the raw semen taste addiction of the player < 4 * the lips of face:
			SemenTasteAddictUp 1;
			say "[bold type]Your lips tingle for a moment, and suddenly you feel oddly thirsty.[roman type][line break]".

[!<TheLipsModuleBlowjobSlutRule>+

Increases the chance of oral sex.

+!]
This is the lips module blowjob slut rule:
	if there is a worn lips module, increase the desirability of face by 10.
The lips module blowjob slut rule is listed in the blowjob slut eligibility rules.



Lips Module ends here.

