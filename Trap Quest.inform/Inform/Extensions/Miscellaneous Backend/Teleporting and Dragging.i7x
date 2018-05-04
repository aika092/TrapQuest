Teleporting and Dragging by Miscellaneous Backend begins here.

monster-dragging is a number that varies.

To teleport to (R - a room):
	repeat with C running through stuck clothing worn by the player:
		say "Your [printed name of C] is ripped from your body by the force of the [if monster-dragging is 0]portal[otherwise]pull[end if], and destroyed. ";
		destroy C;
	repeat with M running through monsters in the location of the player:
		if R is not Dungeon12 and M is grabbing the player or M is penetrating an orifice:
			say "[line break]The [printed name of M] is pulled [if monster-dragging is 0]through the portal [end if]with you!";
			now M is in R;
			if M is grabbing the player and M is not ghostly tentacle:
				say "In the confusion, [he of M] loses [his of M] grip on you!";
				now M is not grabbing the player;
		if M is dangerous and there is a worn gladiator sword:
			let S be a random worn sword;
			increase the burden of S by 1;
	repeat with T running through things penetrating a body part:
		unless T is worn or (T is monster and monster-dragging is 1), dislodge T;
	repeat with T running through things grabbing the player:
		unless T is ghostly tentacle, dislodge T;
	repeat with C running through held store clothing:
		now C is stolen;
		now shopkeeper is released;
		if there is a worn tethering lipstick collar, end tethering;
	if the player is glue stuck, compute raw glue escaping a random glue in the location of the player with 1;[this may be causing lag]
	now the player is in R;
	now the location of the player is discovered;
	if map images is 1, display entire map.

To drag to (R - a room) by (M - a monster):[TODO: player can't be dragged when stuck unless the circumstances are special.]
	compute glue-freeing by M;
	say DragFlav of M to R;
	check shopstealing of M;
	fix map-drag to R;
	now monster-dragging is 1;
	teleport to R;
	now monster-dragging is 0;
	now M is in the location of the player;
	say DragArrival of M to R.

To fix map-drag to (R - a room):
	let L be the location of the player;
	while L is a placed room:
		let D be the the best route from L to R through placed rooms;
		if D is direction:
			now L is the room D from L;
			now L is discovered;
		otherwise:
			now L is nothing.

To say DragFlav of (M - a monster) to (R - a room):
	say "[BigNameDesc of M] drags you [if the distance of R > 1]all the way [end if]to the [R]!".

To say DragArrival of (M - a monster) to (R - a room):
	say "".

To check shopstealing of (M - a monster):
	if the location of the player is guarded:
		let X be the number of held store clothing;
		repeat with C running through held store clothing:
			now C is stolen;
		if X > 0:
			say "[BigNameDesc of shopkeeper] sees [NameDesc of M] [']helping['] you to leave. [big he of shopkeeper] seems to think it's your fault. [line break][speech style of M]'[one of]Stop Thief!'[or]Guards! Guards! Arrest this thieving imbecile!'[or]Where do you think you're going with that, bitch?'[or]Oi, you haven't paid for that!'[purely at random][roman type][line break]An alarm bell rings throughout the whole dungeon. [bold type]Looks like you're in trouble with the law![roman type][line break]";
			now shopkeeper is interested;
			anger shopkeeper.


Teleporting and Dragging ends here.

