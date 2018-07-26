Squeezy Bottle by Consumables begins here.


A squeezy bottle is a kind of thing. There is 1 squeezy bottle in Hotel19. The description of squeezy bottle is "A large bottle with one of those lids where you have to squeeze the bottle to get the liquid to come out. A label on the side says 'THE MANAGEMENT ARE NOT RESPONSIBLE FOR ANY SIDE EFFECTS THAT MAY OCCUR FROM DRINKING FROM THIS EXPERIMENTAL DEVICE'. [line break][variable custom style][if the bimbo of the player > 13]Sounds fair enough to me![otherwise]Sounds about right.[end if][roman type][line break]". The printed name of squeezy bottle is "[TQlink of item described]squeezy bottle[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of squeezy bottle is "sq".

Definition: a squeezy bottle (called B) is immune to change:
	decide yes.

Check drinking a squeezy bottle:
	if the latex-transformation of the player > 4, say "You can no longer drink, you're too far through your transformation into a doll and your body doesn't need hydration any more." instead;
	if the noun is not held and the player is flying, say "You can't reach!" instead;
	if the player is overly full, say "Your stomach feels too full to drink any more right now, you should wait a while." instead;
	if face is actually occupied:
		let T be a random thing penetrating face;
		if T is cock pacifier:
			unless the noun is cock pacifier, say "The cock pacifier is so tightly connected to your face that there's no way you can drink anything else with it on!" instead;
		otherwise if T is ballgag and the noun is held:
			if (artificial enhancements fetish is 0 and a random number between 1 and 3 > 1) or (artificial enhancements fetish is 1 and a random number between the lips of face and 5 > 2):[3 > 2!]
				say "You manage to stretch your [LipDesc] wide enough to get some past your [T].";
			otherwise:
				say "You try to stretch your [LipDesc] wide enough to get some past your [T], but you don't manage it!  The liquid drips down your chin to the ground.";
				decrease the doses of the noun by 1;
				if the doses of the noun is 0:
					if the noun is can:
						say "You discard the empty can.";
						destroy the noun;
					otherwise:
						say "The [noun] is now empty.";
		otherwise:
			say "The [T] is preventing you from doing that!" instead;
	now seconds is 6;
	let R be a random number between 1 and 3;
	if R is 1:
		if alcohol fetish is 1:
			say "Some kind of alcoholic drink burns your throat![line break][variable custom style]Eek! [one of]That's strong stuff[or]It happened again[stopping]![roman type][line break]";
			increase alcohol level;
		otherwise:
			say "Some kind of extremely spicy liquid burns your throat![line break][variable custom style]Eek! [one of]That's hot stuff[or]Not again[stopping]![roman type][line break]";
			DelicateUp 1;
	otherwise:
		say "Water squirts from the bottle into your mouth.";
	StomachUp 1 instead.


Squeezy Bottle ends here.

