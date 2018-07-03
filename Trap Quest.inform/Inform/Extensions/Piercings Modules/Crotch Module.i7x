Crotch Module by Piercings Modules begins here.

A crotch module is a kind of module. The printed name of crotch module is "[TQlink of item described][item style]crotch module[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of crotch module is "crm". There is 1 crotch module.

To say ClothingDesc of (C - a crotch module):
	say "A triangle of silvery metal is pressed into your skin where your pubic hair would normally be. You recall the dire warning you were given and don[']t mess with it.".
To say ShortDesc of (C - a crotch module):
	say "crotch module".
	
To say ModuleFlav of (M - a crotch module):
	say "[second custom style]'Thank you for participating in the trial! Module type selected: Semen Burning Engine. This module allows your body to be powered by injected semen.'[roman type] An arm snakes out with a strange silvery triangle on one end. It carefully places it on your skin just above your [if the player is male]penis[otherwise]vagina[end if], and you feel a brief twinge of pain as wires push their way into your skin. When the arm pulls away the triangle is left behind. [line break][second custom style]'The Health and Safety Department reminds all testers that removal of installed modules may result in severe nerve disruption and permanent loss of all brain function. Installation confirmed complete. Have a nice day and a pleasant remainder of your test experience, TESTER [NameBimbo]!'[roman type][line break]".
	
To compute periodic effect of (P - a crotch module):
	increase the module-charge of P by 1;
	if the module-charge of P > 14:
		now the module-charge of P is 0;
		if the semen volume of vagina > 0:
			if the fatigue of the player > 0:
				FatigueDown 50;
			arouse 200;
			say "[bold type]You feel a sudden warmth from your [vagina]. You feel more energetic, but the warmth doesn't seem to be fading away.[roman type][line break]";
		otherwise if semen volume of belly > 0:
			if the fatigue of the player > 0:
				FatigueDown 50;
			arouse 200;
			say "[bold type]You feel a sudden warmth from your ass. You feel more energetic, but the warmth doesn't seem to be fading away.[roman type][line break]".

[!<TheCrotchModulePussySlutRule>+

Increases the chances of vaginal sex.

+!]
This is the crotch module pussy slut rule:
	if there is a worn crotch module, increase the desirability of vagina by 10.
The crotch module pussy slut rule is listed in the pussy slut eligibility rules.

Crotch Module ends here.

