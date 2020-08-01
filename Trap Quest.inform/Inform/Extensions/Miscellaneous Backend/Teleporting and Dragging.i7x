Teleporting and Dragging by Miscellaneous Backend begins here.

player-dragger is an object that varies.

To teleport to (R - a room):
	if doll-stuck-num > 0:
		let T be a random dildo trap penetrating a fuckhole;
		say "The [printed name of T] is ripped free from you. Owww!";
		BodyRuin 1;
		dislodge T;
	repeat with C running through worn stuck clothing:
		say "[BigNameDesc of C] is ripped from your body by the force of the [if player-dragger is not monster]portal[otherwise]pull[end if], and destroyed. ";
		destroy C;
	repeat with M running through monsters in the location of the player:
		if R is unbossed and (M is grabbing the player or M is penetrating an orifice):
			say "[line break][BigNameDesc of M] is pulled [if player-dragger is not monster]through the portal [end if]with you!";
			now M is in R;
			if M is grabbing the player and M is not ghostly tentacle and M is not penetrating a body part:
				say "In the confusion, [he of M] loses [his of M] grip on you!";
				dislodge M;
		if gladiator-sword is worn and M is dangerous, BurdenUp gladiator-sword by 1;
	repeat with T running through things penetrating a body part:
		unless T is worn or T is player-dragger, dislodge T;
	repeat with T running through things grabbing the player:
		unless T is ghostly tentacle or T is player-dragger, dislodge T;
	repeat with C running through held store things:
		compute stealing of C;
		if shopkeeper is interested and the shopkeeper is in the location of the player, increase the stolen-aware of shopkeeper by 1;
		if there is a worn tethering lipstick collar, end tethering;
	if the player is glue stuck, compute raw glue escaping a random glue in the location of the player with 1;[this may be causing lag]
	now the player is in R;
	zero focus stuff; [Location has changed so we need to empty the location window]
	if class-time <= 0 and playerRegion is School, now class-time is lessonFrequency * -2; [teleporting = detention]
	now the location of the player is discovered;
	update player region;
	if map images > 0, display entire map.

To drag to (R - a room) by (M - a monster):[TODO: player can't be dragged when stuck unless the circumstances are special.]
	compute glue-freeing by M;
	say DragFlav of M to R;
	check shopstealing of M;
	fix map-drag to R;
	now player-dragger is M;
	now M is in R;
	teleport to R;
	now player-dragger is yourself;
	say DragArrival of M to R.

To fix map-drag to (R - a room):
	let L be the location of the player;
	while L is a placed room:
		let D be the the best route from L to R through placed rooms;
		if D is direction:
			now L is the room D from L;
			now L is discovered;
		otherwise:
			now L is a random unplaced room.

To say DragFlav of (M - a monster) to (R - a room):
	say "[BigNameDesc of M] drags you [if the distance of R > 1]all the way [end if]to the [R]!".

To say DragArrival of (M - a monster) to (R - a room):
	say "".

To check shopstealing of (M - a monster):
	if the location of the player is guarded:
		let X be the number of held store things;
		repeat with C running through held store things:
			compute stealing of C;
		if X > 0:
			say "[BigNameDesc of shopkeeper] sees [NameDesc of M] [']helping['] you to leave. [big he of shopkeeper] seems to think it's your fault.[line break][speech style of M]'[one of]Stop Thief!'[or]Guards! Guards! Arrest this thieving imbecile!'[or]Where do you think you're going with that, bitch?'[or]Oi, you haven't paid for that!'[purely at random][roman type][line break]An alarm bell rings throughout the whole dungeon. [bold type]Looks like you're in trouble with the law![roman type][line break]";
			now shopkeeper is interested;
			increase the stolen-aware of shopkeeper by 1;
			anger shopkeeper.

Teleporting and Dragging ends here.
