Teleporting and Dragging by Miscellaneous Backend begins here.

player-dragger is an object that varies. player-dragger is usually yourself.

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
			if (M is grabbing the player or M is wrangling a body part) and M is not ghostly tentacle and M is not penetrating a body part:
				say "In the confusion, [he of M] loses [his of M] grip on you!";
				dislodge M;
		if gladiator-sword is worn and M is dangerous, BurdenUp gladiator-sword by 1;
	repeat with T running through things penetrating a body part:
		unless T is worn or T is player-dragger, dislodge T;
	repeat with T running through things grabbing the player:
		unless T is ghostly tentacle or T is player-dragger, dislodge T;
	repeat with T running through things wrangling a body part:
		unless T is ghostly tentacle or T is player-dragger, dislodge T;
	repeat with M running through alive monsters: [This is mainly to address the edge case where ghostly tentacles are wrangling a player who eats a mushroom, but might catch some other edge cases too]
		if M is grabbing the player or M is penetrating a body part or M is wrangling a body part:
			if M is not in R and R is unbossed and R is in playerRegion:
				say "[line break][BigNameDesc of M] slips [if player-dragger is not monster]through the portal [end if]with you!";
				now M is in R;
			otherwise:
				dislodge M;
	repeat with C running through stuck body parts:
		now C is not stuck;
	repeat with C running through held store things:
		if vampiress is chain-tethering, end tethering;
	repeat with T running through on-stage trophies:
		if T is held, say "[bold type][BigNameDesc of T] [bold type]is ripped from your hands by an invisible force, and in your mind's eye you can see that it has been taken to the 'Trophy Hall'![roman type][line break]";
		now T is in School31;
	if the player is glue stuck, compute raw glue escaping a random glue in the location of the player with 1;[this may be causing lag]
	if player-dragger is yourself: [it was a teleport, rather than a drag]
		if iron-maiden is in R:
			now the player is in Iron Maiden;
			say "Everything goes dark. Your arms are trapped in an arched position above your head. There's cushioning all around you. Wait... Are you... are you back in the Iron Maiden?![line break][variable custom style]Oh no![roman type][line break]";
			now iron-maiden is not untriggered;
			now iron-maiden is revealed;
			now iron-maiden is expired;
			now iron-maiden-turns is 0;
		otherwise if hole-in-wall is revealed and hole-in-wall is in R:
			compute HoleInWallEntrance;
			say "Everything goes dark. Your waist feels trapped... halfway through a wall! Your front half is inside some small chamber, while your rear half is exposed inside the [R] in the hotel![line break][variable custom style]Oh no![roman type][line break]";
		otherwise if diaper messing >= 7 and there is a diaper pail in R:
			let DP be a random diaper pail in R;
			now most-recent-pail is DP;
			say "[bold type]You have appeared upside-down inside a diaper pail!!! [roman type]You are now stuck upside-down in the pail, your face pressed against old stinky nappies! Your legs flail wildly in the air as you are left almost helpless in there along with the noxious fumes.";
			compute diaper pail entrance;
		otherwise:
			now the player is in R;
	otherwise:
		now the player is in R;
	zero focus stuff; [Location has changed so we need to empty the location window]
	now the location of the player is discovered;
	update player region;
	compute bladder cleanup;
	if map images > 0, display entire map;
	if player-dragger is yourself and the player is in R, compute unique teleportation to R.

To drag to (R - a room) by (M - a thing):[TODO: player can't be dragged when stuck unless the circumstances are special.]
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

To say DragFlav of (M - a thing) to (R - a room):
	say "[BigNameDesc of M] drags you [if the distance of R > 1]all the way [end if]to the [R]!".

To say DragArrival of (M - a thing) to (R - a room):
	say "".

To check shopstealing of (M - a thing):
	if the location of the player is guarded:
		let X be the number of held store things;
		repeat with C running through held store things:
			progress quest of stealing-quest;
		if X > 0:
			say "[BigNameDesc of shopkeeper] sees [NameDesc of M] [']helping['] you to leave. [big he of shopkeeper] seems to think it's your fault.[line break][speech style of shopkeeper]'[one of]Stop Thief!'[or]Guards! Guards! Arrest this thieving imbecile!'[or]Where do you think you're going with that, bitch?'[or]Oi, you haven't paid for that!'[purely at random][roman type][line break]An alarm bell rings throughout the whole dungeon. [bold type]Looks like you're in trouble with the law![roman type][line break]";
			interest shopkeeper;
			anger shopkeeper.

To compute unique teleportation to (R - a room):
	do nothing.

[This teleports to a place where something bad will happen thanks to the teleport]
To compute bad teleport:
	let LR be a list of rooms;
	if diaper quest is 0:
		let M be a random alive dungeon boss;
		if M is monster, add the location of M to LR;
	if Woods16 is placed, add Woods16 to LR;
	if Hotel37 is placed, add Hotel37 to LR;
	if Mansion23 is placed, add Mansion23 to LR;
	if the number of entries in LR > 0:
		sort LR in random order;
		teleport to entry 1 in LR;
	otherwise:
		teleport to Dungeon31.

Teleporting and Dragging ends here.
