Invoking by Actions begins here.

Invoking is an action applying to nothing.

Check invoking:
	if the invokeskill of the player < 1, say "You don't know how to do that." instead;
	if the charge of the elder altar > 200, say "You feel like that would be a tragically bad idea for some reason." instead;
	if the number of worn blessed clothing < 1 and the number of worn bland clothing < 1 and the number of held blessed clothing < 1 and the number of held bland clothing < 1 and the player-class is cultist, say "You don't see what the point would be." instead;
	if the number of worn cursed clothing < 1 and the number of worn bland clothing < 1 and the number of held cursed clothing < 1 and the number of held bland clothing < 1 and the player-class is not cultist, say "You don't see what the point would be." instead.

Carry out invoking:
	if the player-class is not cultist:
		while the charge of the elder altar <= 200 and there is a worn blessable thing:[Cursable not blessable?!]
			repeat with T running through worn blessable things:
				increase the charge of the elder altar by 100;
				say "Your [T] [if T is cursed]loses its curse[otherwise]becomes blessed[end if]!";
				bless T;
		while the charge of the elder altar <= 200 and there is a held blessable wearthing:
			repeat with T running through held blessable things:
				increase the charge of the elder altar by 100;
				say "Your [T] [if T is cursed]loses its curse[otherwise]becomes blessed[end if]!";
				bless T;
	otherwise:
		while the charge of the elder altar <= 200 and there is a worn actually cursable thing:
			repeat with T running through worn actually cursable things:
				increase the charge of the elder altar by 100;
				say "Your [T] [if T is blessed]loses its hateful blessing[otherwise]becomes cursed[end if]!";
				curse T;
		while the charge of the elder altar <= 200 and there is a held actually cursable wearthing:
			repeat with T running through held actually cursable things:
				increase the charge of the elder altar by 100;
				say "Your [T] [if T is cursed]loses its hateful blessing[otherwise]becomes cursed[end if]!";
				curse T.

Understand "invoke" as invoking.

Invoking ends here.
