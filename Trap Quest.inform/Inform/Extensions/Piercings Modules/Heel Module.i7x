Heel Module by Piercings Modules begins here.

A heel module is a kind of module. The printed name of heel module is "[TQlink of item described][item style]heel module[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of heel module is "hem". There is 1 heel module.

To say ClothingDesc of (C - a heel module):
	say "Your ankles are now covered in a silvery substance that extends to the base of your foot.".
To say ShortDesc of (C - a heel module):
	say "heel module".
	
To say ModuleFlav of (M - a heel module):
	say "[second custom style]'Thank you for participating in the trial! Module type selected: Allure Improvement System. This module will improve the ability of your body to balance in an appropriately feminine posture.'[roman type] An arm snakes out and painfully injects something into your ankles, which are soon covered in a pliable but tough silvery substance. [line break][second custom style]'The Health and Safety Department reminds all testers that removal of installed modules may result in severe nerve disruption and permanent loss of all brain function. Installation confirmed complete. Have a nice day and a pleasant remainder of your test experience, TESTER [NameBimbo]!'[roman type][line break]".
	
Definition: a heel module (called M) is strut enabling:
	decide yes.
	
To compute periodic effect of (P - a heel module):
	increase the module-charge of P by 1;
	if the module-charge of P > 24:
		now the module-charge of P is 0;
		let H be a random worn heels;
		if H is heels and the hindrance of H > 0:
			HeelUp 1;
			say "You feel your ankles twitch, and you suddenly feel more comfortable in your heels.".
		

Heel Module ends here.

