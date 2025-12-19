Squeezy Bottle by Consumables begins here.

squeezy-bottle is a thing. squeezy-bottle is in Hotel19. The printed name of squeezy-bottle is "[TQlink of item described]squeezy bottle[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of squeezy-bottle is "sq". Understand "squeezy", "bottle" as squeezy-bottle.

The inventoryFocusPriority of a squeezy-bottle is -30.

Figure of squeezy bottle is the file "Items/Collectibles/squeezybottle1.png".

To decide which figure-name is the examine-image of (C - squeezy-bottle):
	decide on figure of squeezy bottle.

Definition: squeezy-bottle is drink themed: decide yes.

To say ExamineDesc of (B - squeezy-bottle):
	say "A large bottle with one of those lids where you have to squeeze the bottle to get the liquid to come out. ";
	if the player is in a predicament room, say "[if business-briefcase-predicament is squeezy-bottle-drunk]It is now empty[otherwise]Who knows what's inside it[end if].";
	otherwise say "A label on the side says 'THE MANAGEMENT ARE NOT RESPONSIBLE FOR ANY SIDE EFFECTS THAT MAY OCCUR FROM DRINKING FROM THIS EXPERIMENTAL DEVICE'.[line break][variable custom style][if the bimbo of the player > 13]Sounds fair enough to me![otherwise]Sounds about right.[end if][roman type][line break]".

Definition: squeezy-bottle is immune to change: decide yes.

Check drinking squeezy-bottle:
	if current-predicament is business-briefcase-predicament and the player is in a predicament room:
		if business-briefcase-predicament is squeezy-bottle-drunk, say "It's already empty." instead;
		allocate 6 seconds;
		now business-briefcase-predicament is squeezy-bottle-drunk;
		say "You bring the tip of the bottle to your lips and squeeze it, allowing some of the strange tasting liquid to enter your mouth. You obediently swallow gulp after gulp until it's all gone.";
		if diaper messing >= 4:
			say "Your stomach almost immediately starts rumbling, and a pressure builds in your belly... Oh no. You've just drunk an entire bottle of laxative...";
			now suppository is 5;
			if the bladder of the player < 6, now the bladder of the player is 6;
		otherwise:
			say "You can feel your bladder almost immediately feeling more full than it did a moment ago. And then, with every passing moment, it feels even more full than the moment before! Oh no. You've just drunk an entire bottle of diuretic...";
			if the bladder of the player < bladder-risky-level, now the bladder of the player is bladder-risky-level;
		do nothing instead;
	if the latex-transformation of the player > 4, say "You can no longer drink, you're too far through your transformation into a doll and your body doesn't need hydration any more." instead;
	if the noun is not held and the player is flying, say "You can't reach!" instead;
	if the player is overly full and the player is not thirsty, say "Your stomach feels too full to drink any more right now, you should wait a while." instead;
	if face is actually occupied:
		let T be a random thing penetrating face;
		if T is cock pacifier:
			say "The cock pacifier is so tightly connected to your face that there's no way you can drink anything else with it on!" instead;
		otherwise if T is ballgag and the noun is held:
			say "You manage to stretch your [LipDesc] wide enough to get some past your [ShortDesc of T].";
		otherwise:
			say "The [ShortDesc of T] is preventing you from doing that!" instead;
	allocate 6 seconds;
	let R be a random number between 1 and 3;
	if alcohol > 0, decrease R by 1; [alcohol more likely if you've already drunk some]
	if R <= 1:
		if alcohol fetish is 1:
			say "Some kind of alcoholic drink burns your throat![line break][variable custom style]Eek! [one of]That's strong stuff[or]It happened again[stopping]![roman type][line break]";
			increase alcohol level;
		otherwise:
			say "Some kind of extremely spicy liquid burns your throat![line break][variable custom style]Eek! [one of]That's hot stuff[or]Not again[stopping]![roman type][line break]";
			PainUp 10;
	otherwise:
		say "Water squirts from the bottle into your mouth.";
	StomachUp 1 instead.

straw-bottle is a thing. The printed name of straw-bottle is "[TQlink of item described]straw bottle[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of straw-bottle is "sb". Understand "straw", "bottle" as straw-bottle.

The inventoryFocusPriority of a straw-bottle is -30.

Figure of straw bottle is the file "Items/Accessories/Vessels/strawbottle1.jpg".

To decide which figure-name is the examine-image of (C - straw-bottle):
	decide on figure of straw bottle.

Definition: straw-bottle is drink themed: decide yes.

To say ExamineDesc of (B - straw-bottle):
	say "A straw is available near your mouth for you sip on. Before it went dark, you saw that it's inside a small bottle of liquid.".

Definition: straw-bottle is immune to change: decide yes.

Check taking straw-bottle:
	say "You can't move your arms!" instead.

Check drinking straw-bottle:
	if the latex-transformation of the player > 4, say "You can no longer drink, you're too far through your transformation into a doll and your body doesn't need hydration any more." instead;
	if the player is overly full and the player is not thirsty, say "Your stomach feels too full to drink any more right now, you should wait a while." instead;
	if face is actually occupied:
		let T be a random thing penetrating face;
		if T is cock pacifier:
			say "The cock pacifier is so tightly connected to your face that there's no way you can drink anything else with it on!" instead;
		otherwise if T is ballgag:
			say "You manage to stretch your [LipDesc] wide enough to get some past your [ShortDesc of T].";
		otherwise:
			say "The [ShortDesc of T] is preventing you from doing that!" instead;
	allocate 6 seconds;
	say "You sip [one of]the mystery liquid[or]some more of the strong laxative drink[stopping] into your mouth, and swallow. Almost instantly, your colon rumbles and groans.[line break][variable custom style][one of]Oh fuck... Don't tell me... That is some kind of super-strong laxative drink...[or]Fuck... That laxative effect is so strong![stopping][roman type][line break]";
	increase suppository by 2;
	StomachUp 1 instead.

This is the thirsty straw-bottle suck rule:
	try drinking straw-bottle.



Squeezy Bottle ends here.
