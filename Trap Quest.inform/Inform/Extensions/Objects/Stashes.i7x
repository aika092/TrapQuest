Stashes by Objects begins here.

A stash is a kind of thing. A stash is not portable. A stash can be unstashed. A stash can be stash-tentacled. A stash has a number called tentacle-turns.
Definition: a stash is immune to change: decide yes.
Definition: a stash is live:
	if it is stash-tentacled, decide yes;
	decide no.
Definition: a stash is father material:
	if it is stash-tentacled, decide yes;
	decide no.
Definition: a stash is egg-fathering: decide yes.
Definition: a stash is facefucker: decide yes.
Definition: a stash is throater: decide yes.
To decide which number is the girth of (S - a stash):
	decide on 4.

The printed name of a stash is usually "[if item described is grabbing the player]tentacle pit[otherwise]secret button[end if]". Understand "secret", "button" as a stash. Understand "tentacle", "pit" as a stash when the item described is grabbing the player. Understand "debugtentacled" as a stash when the item described is stash-tentacled.
The text-shortcut of a stash is usually "sctb".

To say ExamineDesc of (C - a stash):
	say "A secret button in [if playerRegion is the woods]a tree trunk[otherwise]the wall[end if]. [if C is unstashed]You already pushed it.[otherwise]Pushing it might open some sort of secret panel?[end if]";
	if C is unstashed and C is stash-tentacled, say "...Also, there's a pit [if diaper quest is 1]with a portal at the bottom[otherwise]of tentacles[end if] there now. You have no intention to go close to it again.".

To say ShortDesc of (C - a stash):
	if C is unstashed and C is stash-tentacled, say "tentacle";
	otherwise say "button".
To say MediumDesc of (C - a stash):
	if C is unstashed and C is stash-tentacled, say "tentacle pit";
	otherwise say "secret button".

dungeon-stash is a stash.
woods-stash is a stash.
mansion-stash is a stash.
hotel-stash is a stash.

To deploy stashes:
	now dungeon-stash is in Dungeon21;
	now woods-stash is in Woods25;
	now mansion-stash is in Mansion24;
	now hotel-stash is in Hotel10;
	let X be a random stash;
	if a random number between 1 and 10 <= 8, now X is stash-tentacled.

[Figure of dungeon stash is the file "Env/Dungeon/stash1.jpg".]
Figure of woods stash is the file "Env/Forest/stash1.jpg".
Figure of mansion stash is the file "Env/Mansion/stash1.jpg".
Figure of hotel stash is the file "Env/Hotel/stash1.jpg".
Figure of tentacle pit stash is the file "Env/MultiFloor/stash1.png".

To decide which figure-name is the examine-image of (C - a stash):
	if diaper quest is 0 and C is stash-tentacled and C is unstashed:
		decide on figure of tentacle pit stash;
	otherwise if C is dungeon-stash:
		decide on figure of mansion stash;
	otherwise if C is woods-stash:
		decide on figure of woods stash;
	otherwise if C is mansion-stash:
		decide on figure of mansion stash;
	otherwise:
		decide on figure of hotel stash.

Check pushing a stash:
	if the noun is unstashed, say "You already did this." instead;
	if the player is not able to manually use their hands, do nothing instead;
	if the player is prone, say "You would need to be standing in order to reach that." instead;
	if the player is immobile or the player is in danger, say "Aren't you a bit busy?" instead;
	allocate 2 seconds;
	now the noun is unstashed;
	say StashPushFlav of the noun;
	if the noun is stash-tentacled:
		if diaper quest is 1, compute stash prank of the noun;
		otherwise compute stash tentacle of the noun;
	otherwise:
		compute stash reward of the noun;
	do nothing instead.

To say StashPushFlav of (S - a stash):
	say "You reach up and push the secret button.".

To compute stash reward of (S - a stash):
	let J be a random off-stage plentiful accessory;
	if the player is getting lucky:
		if the player is getting lucky:
			now J is pure diamond;
		otherwise:
			now J is pink diamond;
	otherwise:
		if the player is getting unlucky:
			now J is emerald;
		otherwise:
			now J is ruby;
	set shortcut of J;
	let AP be a random off-stage fetish appropriate alchemy product;
	now J is in the location of the player;
	now AP is in the location of the player;
	say "A hidden compartment opens in the [if playerRegion is woods]tree trunk[otherwise]wall[end if] in front of you! Inside is a [J] and an [AP]![line break][variable custom style]NICE![roman type][line break]";
	compute autotaking AP;

To compute stash tentacle of (S - a stash):
	maybe-map-display figure of tentacle pit stash;
	now the tentacle-turns of S is 4;
	say "The floor suddenly disappears from beneath you![line break][variable custom style]A trap door?![roman type][line break]Yep, an impressively concealed trap door, which has now opened, allowing you to fall directly down... Into a pit of strong, writhing tentacles! Immediately, all four of your limbs have been grabbed, and you are completely at the tentacle pit's mercy!";
	now the stance of the player is 1;
	now S is grabbing the player;
	let C be a random worn destructible top level titfuck protection clothing;
	if the largeness of breasts > 4:
		while C is a thing:
			say "A tentacle rips apart your [ShortDesc of C]!";
			destroy C;
			now C is a random worn destructible top level titfuck protection clothing;
	now C is a random worn destructible top level ass protection clothing;
	while C is a thing:
		if C is rippable:
			say "A tentacle rips open your [ShortDesc of C]!";
			rip C;
		otherwise:
			say "A tentacle rips apart your [ShortDesc of C]!";
			destroy C;
		now C is a random worn destructible top level ass protection clothing;
	let G be a random clothing penetrating face;
	if G is destructible clothing:
		say "A tentacle rips off your [ShortDesc of G]!";
		destroy G;
	unless face is actually occupied:
		say "A thick tentacle plunges into your mouth!";
		now S is penetrating face;
	if the largeness of breasts > 4 and the number of worn titfuck protection clothing is 0:
		say "A tentacle wriggles in between your breasts!";
		now S is penetrating breasts;
	if the player is possessing a vagina and the number of crotch covering clothing is 0:
		let X be a random clothing penetrating vagina;
		if X is a thing:
			say "A tentacle yanks out [NameDesc of X]!";
			dislodge X;
			now X is in the location of the player;
		if vagina is not actually occupied:
			say "A tentacle pushes its way into your [vagina]!";
			now S is penetrating vagina;
			ruin vagina;
	if the number of ass covering clothing is 0:
		let X be a random clothing penetrating asshole;
		if X is a thing:
			say "A tentacle yanks out [NameDesc of X]!";
			dislodge X;
			now X is in the location of the player;
		if asshole is not actually occupied:
			say "A tentacle pushes its way into your [asshole]!";
			now S is penetrating asshole;
			ruin asshole;
	say "[variable custom style]Oh my goooooood![roman type][line break]";

A later time based rule (this is the tentacle pit rule):
	let S be a random stash grabbing the player;
	if S is a thing:
		decrease the tentacle-turns of S by 1;
		if the tentacle-turns of S < 3: [no action beyond penetration on the first turn]
			if the tentacle-turns of S <= 0 and bukkake fetish is 1:
				say "Countless tentacles coat your entire body in spunk!";
				AnnouncedSquirt semen on face by 20;
				AnnouncedSquirt semen on breasts by 10;
				AnnouncedSquirt semen on belly by 10;
				AnnouncedSquirt semen on hips by 10;
				AnnouncedSquirt semen on thighs by 10;
			if S is penetrating face:
				say "The tentacle in your mouth forcefully violates your throat![line break][variable custom style][gag sounds][roman type][line break]";
				FatigueUp 20;
				if the tentacle-turns of S <= 0:
					say "Suddenly, it explodes with its own version of an orgasm, forcing you to swallow inhuman quantities of [semen]!";
					StomachSemenUp 10;
			if S is penetrating breasts:
				say "The tentacle in between your [BreastDesc] slithers up and down energetically!";
				stimulate breasts from S;
				if the tentacle-turns of S <= 0, say "It ejaculates [semen] all over your face and chest!";
			if S is penetrating vagina:
				say "The tentacle inside your [vagina] pumps away aggressively!";
				ruin vagina;
				if egg laying fetish is 1:
					say "You feel a hard lump travel up the tentacle... as an egg is implanted into your womb!";
					WombFill 1 medium eggs;
				if the tentacle-turns of S <= 0:
					say "And then with a powerful jet, you feel your pussy being pumped full to the brim with [semen]!";
					PussyFill 10;
			if S is penetrating asshole:
				say "The tentacle inside your [asshole] treats your colon like an onahole![line break][variable custom style][gag sounds][roman type][line break]";
				ruin asshole;
				if egg laying fetish is 1:
					say "You feel your sphincter widen even further as the tentacle pushes an egg up deep into your intestines!";
					AssFill 1 medium eggs;
				if the tentacle-turns of S <= 0:
					say "And then your feel your belly balloon outwards as it unleashes its own reserves of alien [semen] into your guts.";
					AssFill 10;
		if the tentacle-turns of S <= 0:
			say "The tentacles are finally done with you - [if S is penetrating an orifice]they slither out of your holes, and then [end if]you are unceremoniously dumped on the ground just out side of the pit. You crawl a few steps away, just in case they suddenly get horny again!";
			dislodge S.


To compute stash prank of (S - a stash):
	say "The floor suddenly disappears from beneath you![line break][variable custom style]A trap door?![roman type][line break]Yep, an impressively concealed trap door, which has now opened, allowing you to fall directly down... Into some sort of teleportation trap!";
	compute bad teleport.




Stashes ends here.
