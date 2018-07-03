Breast Module by Piercings Modules begins here.

A breast module is a kind of module. The printed name of breast module is "[TQlink of item described][item style]breast module[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of breast module is "brm". There is 1 breast module.

breast module has a number called int-transfer. The int-transfer of breast module is 0.

To decide which number is the intelligence-influence of (C - a breast module):
	let I be the int-transfer of C + 2;
	decide on I.

[!<TheBreastModuleSlutRule>+

A breast module increases the chance of titfucks.

+!]
This is the breast module slut rule:
	if there is a worn breast module, increase the desirability of breasts by 10.
The breast module slut rule is listed in the tit slut eligibility rules.
	
To say ModuleFlav of (M - a breast module):
	say "[second custom style]'Thank you for participating in the trial! Module type selected: Silicone Processing Support. This module allows large external silicone sources to be leveraged to support subject processing power. Subject asked to facilitate process by capturing high-density protein on module.'[roman type] An arm snakes out with a strange silvery triangle on one end. It carefully places it on your skin just above your cleavage, and you feel a brief twinge of pain as wires push their way into your skin. When the arm pulls away the triangle is left behind. '[line break][second custom style]The Health and Safety Department reminds all testers that removal of installed modules may result in severe nerve disruption and permanent loss of all brain function. Installation confirmed complete. Have a nice day and a pleasant remainder of your test experience, TESTER [NameBimbo]!'[roman type][line break]".

To say ClothingDesc of (C - a breast module):
	say "A triangle of silvery metal is pressed into your skin just above your cleavage. You recall the dire warning you were given and don[']t mess with it.".
To say ShortDesc of (C - a breast module):
	say "breast module".
	
To compute periodic effect of (P - a breast module):
	increase the module-charge of P by 1;
	if the module-charge of P > 24:
		now the module-charge of P is 0;
		if the silicone volume of breasts > 0 and the player is not top heavy and the semen coating of breasts > 0:
			CumTitsDown 1;
			TitfuckAddictUp 1;
			BustImplantsUp 1;
			say "[bold type]Your breasts suddenly feel terribly warm, and some of the semen on them begins to soak into them. They suddenly swell up in size! They also feel somehow more sensitive...[roman type][line break]";
		otherwise if the raw intelligence of the player > 1 and the silicone volume of breasts > the int-transfer of P:
			Intdown 1;
			say "[bold type]Your catch yourself slightly zoning out, as though some of your thoughts were suddenly coming from slightly farther away.[roman type][line break]";
			increase the int-transfer of P by 1.

Breast Module ends here.

