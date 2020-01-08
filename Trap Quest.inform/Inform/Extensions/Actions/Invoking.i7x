Invoking by Actions begins here.

[!<invoking:Action>*

REQUIRES COMMENTING

*!]
Invoking is an action applying to nothing.

[!<CheckInvoking>+

REQUIRES COMMENTING

+!]
Check invoking:
	if the invokeskill of the player < 1, say "You don[']t know how to do that." instead;
	if the charge of the elder altar < 100, say "You feel like that would be a tragically bad idea for some reason." instead;
	if the number of worn blessed clothing < 1 and the number of worn bland clothing < 1 and the number of held blessed clothing < 1 and the number of held bland clothing < 1 and the player-class is cultist, say "You don[']t see what the point would be." instead;
	if the number of worn cursed clothing < 1 and the number of worn bland clothing < 1 and the number of held cursed clothing < 1 and the number of held bland clothing < 1 and the player-class is not cultist, say "You don[']t see what the point would be." instead.

[!<CarryOutInvoking>+

REQUIRES COMMENTING

+!]
Carry out invoking:
	if the player-class is not cultist:
		while the charge of the elder altar >= 100 and there is a worn cursable thing:
			repeat with T running through worn cursable things:
				decrease the charge of the elder altar by 100;
				say "Your [T] [if T is cursed]loses its curse[otherwise]becomes blessed[end if]!";
				bless T;
		while the charge of the elder altar >= 100 and there is a held cursable wearthing:
			repeat with T running through worn cursable things:
				decrease the charge of the elder altar by 100;
				say "Your [T] [if T is cursed]loses its curse[otherwise]becomes blessed[end if]!";
				bless T;
	otherwise:
		while the charge of the elder altar >= 100 and there is a worn cursable thing:
			repeat with T running through worn cursable things:
				decrease the charge of the elder altar by 100;
				say "Your [T] [if T is blessed]loses its hateful blessing[otherwise]becomes cursed[end if]!";
				curse T;
		while the charge of the elder altar >= 100 and there is a held cursable wearthing:
			repeat with T running through worn cursable things:
				decrease the charge of the elder altar by 100;
				say "Your [T] [if T is cursed]loses its hateful blessing[otherwise]becomes cursed[end if]!";
				curse T.

Understand "invoke" as invoking.


Invoking ends here.
