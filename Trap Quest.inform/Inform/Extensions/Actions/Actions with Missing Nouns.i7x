Actions with Missing Nouns by Actions begins here.

AutoSlapping is an action applying to nothing.

[!<CheckAutoSlapping>+

REQUIRES COMMENTING

+!]
Check AutoSlapping:
	if the number of dangerous monsters in the location of the player is 1:
		let M be a random dangerous monster in the location of the player;
		try slapping M instead;
	if the number of monsters in the location of the player is 1:
		let M be a random monster in the location of the player;
		try slapping M instead;
	say "[if there is a monster in the location of the player]Slap who?[otherwise]But there's nobody to slap...[end if]" instead.
Understand "hit", "slap", "punch", "slash", "slash at", "swipe", "swipe at", "scratch", "thrust", "swing at", "backhand", "sa", "sl" as AutoSlapping.

AutoKneeing is an action applying to nothing.

[!<CheckAutoKneeling>+

REQUIRES COMMENTING

+!]
Check AutoKneeing:
	if the number of dangerous monsters in the location of the player is 1:
		let M be a random dangerous monster in the location of the player;
		try kneeing M instead;
	if the number of monsters in the location of the player is 1:
		let M be a random monster in the location of the player;
		try kneeing M instead;
	say "[if there is a monster in the location of the player]Knee who?[otherwise]But there's nobody to knee...[end if]" instead.
Understand "knee strike", "knee", "kn" as AutoKneeing.

AutoKicking is an action applying to nothing.

[!<CheckAutoKicking>+

REQUIRES COMMENTING

+!]
Check AutoKicking:
	if the number of dangerous monsters in the location of the player is 1:
		let M be a random dangerous monster in the location of the player;
		try kicking M instead;
	if the number of monsters in the location of the player is 1:
		let M be a random monster in the location of the player;
		try kicking M instead;
	say "[if there is a monster in the location of the player]Kick who?[otherwise]But there's nobody to kick...[end if]" instead.
Understand "kick", "ki" as AutoKicking.

AutoDrinking is an action applying to nothing.

[!<CheckAutoDrinking>+

REQUIRES COMMENTING

+!]
Check AutoDrinking:
	repeat with B running through autodrinkable bottles:
		say "(the [printed name of B])";
		try drinking B instead;
	say "[if there is a held bottle]Drink what?[otherwise]But you're not holding any drinks?[end if]" instead.
Understand "drink", "dr" as AutoDrinking.

[!<BottleIsAutodrinkable>+

REQUIRES COMMENTING

+!]
Definition: a bottle (called B) is autodrinkable:
	if the doses of B is 0, decide no;
	if B is held or B is in the location of the player, decide yes;
	if B is in an open container in the location of the player, decide yes;
	decide no.

AutoTaking is an action applying to nothing.

[!<CheckAutoTaking>+

REQUIRES COMMENTING

+!]
Check AutoTaking:
	repeat with B running through autotakable things:
		say "(the [printed name of B])";
		try taking B instead;
	say "Take what?" instead.
Understand "take", "ta", "t" as AutoTaking.

[!<ThingIsAutotakeable>+

REQUIRES COMMENTING

+!]
Definition: a thing (called B) is autotakable:
	if B is not portable, decide no;
	if B is held, decide no;
	if B is the player, decide no;
	if B is in the location of the player, decide yes;
	if B is in an open container in the location of the player, decide yes;
	decide no.

AutoWearing is an action applying to nothing.

[!<CheckAutoWearing>+

REQUIRES COMMENTING

+!]
Check AutoWearing:
	repeat with C running through open containers in the location of the player:
		repeat with B running through clothing in C:
			unless C is pink wardrobe:
				say "(the [printed name of B])";
				try wearing B instead;
	repeat with B running through clothing in the location of the player:
		unless B is held:
			say "(the [printed name of B])";
			try wearing B instead;
	say "Wear what?" instead.
Understand "wear", "we" as AutoTaking.

AutoOpening is an action applying to nothing.

[!<CheckAutoOpening>+

REQUIRES COMMENTING

+!]
Check AutoOpening:
	repeat with C running through closed containers in the location of the player:
		unless C is pink wardrobe:
			say "(the [printed name of C])";
			try opening C instead;
	say "Open what?" instead.
Understand "open", "op" as AutoOpening.

AutoGreeting is an action applying to nothing.

[!<CheckAutoGreeting>+

REQUIRES COMMENTING

+!]
Check AutoGreeting:
	repeat with C running through intelligent monsters in the location of the player:
		say "(the [printed name of C])";
		try greeting C instead;
	repeat with C running through monsters in the location of the player:
		say "(the [printed name of C])";
		try greeting C instead;
	say "Greet who?" instead.
Understand "greet", "say hello", "say hi", "talk", "speak", "say", "converse" as AutoGreeting.

AutoQuestioning is an action applying to nothing.

[!<CheckAutoQuestioning>+

REQUIRES COMMENTING

+!]
Check AutoQuestioning:
	repeat with C running through intelligent monsters in the location of the player:
		say "(the [printed name of C])";
		try questioning C instead;
	repeat with C running through monsters in the location of the player:
		say "(the [printed name of C])";
		try questioning C instead;
	say "Question who?" instead.
Understand "question", "ask" as AutoQuestioning.

AutoRequesting is an action applying to nothing.

[!<CheckAutoRequesting>+

REQUIRES COMMENTING

+!]
Check AutoRequesting:
	repeat with C running through intelligent monsters in the location of the player:
		say "(the [printed name of C])";
		try drink requesting C instead;
	repeat with C running through monsters in the location of the player:
		say "(the [printed name of C])";
		try drink requesting C instead;
	say "Question who?" instead.
Understand "request", "request drink", "ask for drink", "ask for a drink", "request for a drink" as AutoRequesting.

AutoDipping is an action applying to one thing.

[!<CheckAutoDipping>+

REQUIRES COMMENTING

+!]
Check AutoDipping:
	if the noun is not vessel, say "You need to choose a drinking vessel.";
	repeat with C running through dispensers in the location of the player:
		say "(the [printed name of C])";
		try decanting the noun with C instead;
	say "Into what?" instead.
Understand "dip [something]", "fill [something]" as AutoDipping.


AutoGlueWiping is an action applying to one thing.

[!<CheckAutoGlueWiping>+

REQUIRES COMMENTING

+!]
Check AutoGlueWiping:
	let C be a random carried unglued clothing;
	if C is clothing and the player is glue stuck and the noun is glue, try GlueRubbing the noun on C instead;
	say "Brush glue on what?" instead.
Understand "brush [something]" as AutoGlueWiping.


Actions with Missing Nouns ends here.
