Ass Module by Piercings Modules begins here.

An ass module is a kind of module. The printed name of ass module is "[TQlink of item described][item style]ass module[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of ass module is "asm". There is 1 ass module.

ass module has a number called dex-transfer. The dex-transfer of ass module is 0.

To decide which number is the dexterity-influence of (C - an ass module):
	let D be the dex-transfer of C + 2;
	decide on D.
	
To say ModuleFlav of (M - an ass module):
	say "[second custom style]'Thank you for participating in the trial! Module type selected: Silicone Reflex Support. This module allows large external silicone sources to be leveraged to support subject reflexes. Subject asked to facilitate this process by capturing high-density protein within anal orifice.'[roman type] An arm snakes out with a strange silvery triangle on one end. It carefully places it on your skin just above your ass, and you feel a brief twinge of pain as wires push their way into your skin. When the arm pulls away the triangle is left behind. '[line break][second custom style]The Health and Safety Department reminds all testers that removal of installed modules may result in severe nerve disruption and permanent loss of all brain function. Installation confirmed complete. Have a nice day and a pleasant remainder of your test experience, TESTER [NameBimbo]![roman type][line break]'".
	
To say ClothingDesc of (C - an ass module):
	say "A triangle of silvery metal is pressed into your skin just above your ass. You recall the dire warning you were given and don[']t mess with it.".
To say ShortDesc of (C - an ass module):
	say "ass module".
	
To compute periodic effect of (P - an ass module):
	increase the module-charge of P by 1;
	if the module-charge of P > 24:
		now the module-charge of P is 0;
		if the silicone volume of hips > 0 and the thickness of hips < max ass size and the semen volume of belly > 0:
			decrease the semen volume of belly by 1;
			AnalSexAddictUp 1;
			AssImplantsUp 1;
			say "[bold type]Your ass suddenly feels terribly warm, and some of the semen in it begins to soak in. It suddenly swells up in size! You also begin to feel a strange emptiness, as though the void between your cheeks MUST be filled...[roman type][line break]";
		otherwise if the raw dexterity of the player > 1 and the silicone volume of hips > the dex-transfer of P:
			Dexdown 1;
			say "[bold type]You feel unsteady for a moment, but manage to regain your balance. Strange.[roman type][line break]";
			increase the dex-transfer of P by 1.

[!<TheAssModuleButtSlutRule>+

Increases the chances of anal sex.

+!]
This is the ass module butt slut rule:
	if there is a worn ass module, increase the desirability of asshole by 10.
The ass module butt slut rule is listed in the butt slut eligibility rules.


Ass Module ends here.

