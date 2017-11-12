Royal Bed by Furniture begins here.


royal bed is a kind of furniture.  1 royal bed is in Dungeon12.  The printed name of royal bed is "[TQlink of item described]royal bed[TQxlink of item described][shortcut-desc][verb-desc of item described]".  The description of royal bed is "[RoyalBedDesc]".  royal bed is permanent fixture.  The text-shortcut of royal bed is "ryb".

To say RoyalBedDesc:
	if images visible is 1, display figure of royal bed;
	say "A large pink four poster bed with pink drapes, fluffy pink pillows, and a luxurious pink duvet.  [if diaper lover >= 1]On closer inspection, you realise that all the sheets are made of thin waterproof latex.[one of][variable custom style]Is the person that sleeps here a bed-wetter?[roman type][line break][or][stopping][otherwise if the body soreness of the player is 0]It looks like an injured person could have a nice rest here.[otherwise]You get the feeling having a rest here would be great for your health![end if]".
	
Figure of royal bed is the file "bed1.png".

Check sleeping:
	if there is furniture in the location of the player:
		let F be a random furniture in the location of the player;
		try entering F instead;
	try resting instead.

To compute furniture resting on (F - the royal bed):
	compute fat burning reset;
	let B be the largeness of breasts;
	let R be a random number between 1 and (3 - unlucky);
	if the player is upright:
		if B < 12, say "You get onto the bed to have a rest.  ";
		otherwise say "You flop your [BreastDesc] onto the bed and use them as pillows to have a nice rest.  ";
	otherwise:
		if B < 14, say "You crawl onto the bed to have a rest.  ";
		otherwise say "You shovel your [BreastDesc] onto the bed in front of you, crawl onto the bed yourself, and use them as pillows to have a nice rest.  ";
	now the stance of the player is 1;
	let nightie-check be 0;
	if the incontinence of the player > 5, now nightie-check is 1; [The player is over halfway to becoming fully incontinent]
	if there is worn bed wetting clothing and nightie-check < 3:
		now nightie-check is 2; [There are bed wetting items of clothing (takes priority over incontinence)]
	otherwise if there is a worn nightie:
		now nightie-check is 3; [There is a worn nightie (this takes top priority)]
	let N be a random off-stage nightie;
	if nightie-check > 0 and the bladder of the player > 1:
		if nightie-check is 3:
			say "As you lie there, you become aware of a warm wet feeling below you.  The nightie has made you wet yourself!  [variable custom style]Oh my god, how embarrassing![roman type][line break]";
			now a random worn nightie is bed wetting;
			now a random worn nightie is cursed;
		otherwise:
			say "As you lie there, you feel yourself lose control of your bladder.  [variable custom style]Yuck![roman type][line break]";
		if there is worn bottom level pee protection clothing:
			let K be a random worn bottom level pee protection clothing;
			let flav-said be 0;
			PissSoak the bladder of the player on K;
			now the bladder of the player is 0;
		otherwise if there is a worn skirted crotch-in-place clothing:
			PissSoak the bladder of the player on a random worn skirted crotch-in-place clothing;
			now the bladder of the player is 0;
	otherwise if N is actually summonable and R is 1:
		if the bladder of the player > 1 and diaper lover >= 1:
			say "As you lie there, you become aware of a warm wet feeling below you.  You've wet yourself!  [variable custom style]Oh my god, how embarrassing![roman type][line break][if 0 is the number of worn overdress and R is 1][bold type]As you get up, feeling fully refreshed, a sheer nightie shimmers into being around your body.[roman type][line break][variable custom style]What is this about?![roman type][line break][end if]";
			if there is worn bottom level pee protection clothing, PissSoak the bladder of the player on a random worn bottom level pee protection clothing;
			now the bladder of the player is 0;
			now N is bed wetting;
		otherwise:
			say "You instantly feel fully healed!  Magic!  [bold type]As you get up, a sheer nightie shimmers into being around your body.[roman type][line break][variable custom style]Ooh, I feel a bit lethargic now.[roman type][line break]";
		summon N cursed;
	otherwise:
		say "You instantly feel fully healed!  Magic!  ";
		if the size of penis > 10 - the delicateness of the player:
			PenisDown 1;
		otherwise if the delicateness of the player < 20:
			increase the raw delicateness of the player by 1;
			say "But you do feel a bit more[one of]... fragile?[or] delicate.[stopping]";
		otherwise if the sex addiction of the player < 11:
			SexAddictUp 1;
		otherwise:
			humiliate 200;
		say "[line break][bold type]You are now standing.[roman type][line break]";
	now the body soreness of the player is 0;
	now the stance of the player is 0;
	if the fatigue of the player > the fatigue of the player / 2, now the fatigue of the player is the fatigue of the player / 2;
	now seconds is 6.



Royal Bed ends here.
