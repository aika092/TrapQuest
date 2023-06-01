Invoking by Actions begins here.

Invoking is an action applying to nothing.

Check invoking:
	if the invokeskill of the player < 1, say "You don't know how to do that." instead.

Carry out invoking:
	allocate 6 seconds;
	say "You concentrate, attempting to connect your feeble mind to the minds of impossibly powerful ancient entities with forms and goals beyond your wildest comprehension.";
	let nothing-happened be true;
	let oldCharge be the charge of elder altar;
	if oldCharge < 0, now the charge of elder altar is 0;
	if the player-class is not cultist:
		while the charge of the elder altar <= 200 and there is a worn blessable thing:[Cursable not blessable?!]
			let T be a random worn blessable thing;
			increase the charge of the elder altar by 100;
			if doom counter > 0, increase doom counter by 30;
			say "Your [T] [if T is cursed]loses its curse[otherwise]becomes blessed[end if]!";
			bless T;
			now nothing-happened is false;
			if doom counter > 0 and doomed < 5, say "You feel like the [great ones] draw slightly closer to this world.";
		while the charge of the elder altar <= 200 and there is a held blessable wearthing:
			let T be a random held blessable thing;
			increase the charge of the elder altar by 100;
			if doom counter > 0, increase doom counter by 30;
			say "Your [T] [if T is cursed]loses its curse[otherwise]becomes blessed[end if]!";
			bless T;
			now nothing-happened is false;
			if doom counter > 0 and doomed < 5, say "You feel like the [great ones] draw slightly closer to this world.";
	otherwise:
		while the charge of the elder altar <= 200 and there is a worn actually cursable thing:
			let T be a random worn actually cursable thing;
			increase the charge of the elder altar by 100;
			if doom counter > 40, decrease doom counter by 40;
			say "Your [T] [if T is blessed]loses its hateful blessing[otherwise]becomes cursed[end if]!";
			curse T;
			now nothing-happened is false;
			if doom counter > 0 and doomed < 5, say "You feel like the [great ones] have been pushed slightly further away from this world.";
		while the charge of the elder altar <= 200 and there is a held actually cursable wearthing:
			let T be a random held actually cursable wearthing;
			increase the charge of the elder altar by 100;
			if doom counter > 40, decrease doom counter by 40;
			say "Your [T] [if T is cursed]loses its hateful blessing[otherwise]becomes cursed[end if]!";
			curse T;
			now nothing-happened is false;
			if doom counter > 0 and doomed < 5, say "You feel like the [great ones] have been pushed slightly further away from this world.";
	if nothing-happened is true:
		if oldCharge < 0, now the charge of elder altar is oldCharge;
		say "Nothing seems to happen[if the charge of the elder altar > 200]. Perhaps the power in this world that is creating a pathway to the [great ones] needs to recharge[end if].".
Understand "invoke" as invoking.

Invoking ends here.
