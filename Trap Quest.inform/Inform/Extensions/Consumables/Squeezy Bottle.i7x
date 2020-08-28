Squeezy Bottle by Consumables begins here.

squeezy-bottle is a thing. squeezy-bottle is in Hotel19. The printed name of squeezy-bottle is "[TQlink of item described]squeezy bottle[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of squeezy-bottle is "sq". Understand "squeezy", "bottle" as squeezy-bottle.

Figure of squeezy bottle is the file "Items/Collectibles/squeezybottle1.png".

To decide which figure-name is the examine-image of (C - squeezy-bottle):
	decide on figure of squeezy bottle.

Definition: squeezy-bottle is drink themed: decide yes.

To say ExamineDesc of (B - squeezy-bottle):
	say "A large bottle with one of those lids where you have to squeeze the bottle to get the liquid to come out. A label on the side says 'THE MANAGEMENT ARE NOT RESPONSIBLE FOR ANY SIDE EFFECTS THAT MAY OCCUR FROM DRINKING FROM THIS EXPERIMENTAL DEVICE'.[line break][variable custom style][if the bimbo of the player > 13]Sounds fair enough to me![otherwise]Sounds about right.[end if][roman type][line break]".

Definition: squeezy-bottle is immune to change: decide yes.

Check drinking squeezy-bottle:
	if the latex-transformation of the player > 4, say "You can no longer drink, you're too far through your transformation into a doll and your body doesn't need hydration any more." instead;
	if the noun is not held and the player is flying, say "You can't reach!" instead;
	if the player is overly full, say "Your stomach feels too full to drink any more right now, you should wait a while." instead;
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
			PainUp 1;
	otherwise:
		say "Water squirts from the bottle into your mouth.";
	StomachUp 1 instead.

Squeezy Bottle ends here.
