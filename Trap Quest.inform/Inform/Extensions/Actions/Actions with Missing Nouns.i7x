Actions with Missing Nouns by Actions begins here.

AutoSlapping is an action applying to nothing.

Check AutoSlapping:
	if the number of dangerous monsters in the location of the player is 1:
		let M be a random dangerous monster in the location of the player;
		try slapping M instead;
	if the number of monsters in the location of the player is 1:
		let M be a random monster in the location of the player;
		try slapping M instead;
	say "[if there is a monster in the location of the player]Slap who?[otherwise]But there's nobody to slap...[end if]" instead.
Understand "hit", "slap", "punch", "slash", "slash at", "swipe", "swipe at", "scratch", "thrust", "swing at", "sa", "sl" as AutoSlapping.

AutoKneeing is an action applying to nothing.

Check AutoKneeing:
	if the number of dangerous monsters in the location of the player is 1:
		let M be a random dangerous monster in the location of the player;
		try kneeing M instead;
	if the number of monsters in the location of the player is 1:
		let M be a random monster in the location of the player;
		try kneeing M instead;
	say "[if there is a monster in the location of the player]Knee who?[otherwise]But there's nobody to knee...[end if]" instead.
Understand "knee", "kn" as AutoKneeing.

AutoKicking is an action applying to nothing.

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

Check AutoDrinking:
	repeat with B running through autodrinkable bottles:
		say "(the [printed name of B])";
		try drinking B instead;
	say "[if there is a held bottle]Drink what?[otherwise]But you're not holding any drinks?[end if]" instead.
Understand "drink", "dr" as AutoDrinking.

Definition: a bottle (called B) is autodrinkable:
	if the doses of B is 0, decide no;
	if B is held or B is in the location of the player, decide yes;
	if B is in an open container in the location of the player, decide yes;
	decide no.

AutoTaking is an action applying to nothing.

Check AutoTaking:
	repeat with B running through autotakable things:
		say "(the [printed name of B])";
		try taking B instead;
	say "Take what?" instead.
Understand "take", "ta", "t" as AutoTaking.

Definition: a thing (called B) is autotakable:
	if B is not portable, decide no;
	if B is held, decide no;
	if B is the player, decide no;
	if B is in the location of the player, decide yes;
	if B is in an open container in the location of the player, decide yes;
	decide no.

AutoWearing is an action applying to nothing.

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

Check AutoOpening:
	repeat with C running through closed containers in the location of the player:
		unless C is pink wardrobe:
			say "(the [printed name of C])";
			try opening C instead;
	say "Open what?" instead.
Understand "open", "op" as AutoOpening.

AutoTalking is an action applying to nothing.

Check AutoTalking:
	repeat with C running through intelligent monsters in the location of the player:
		say "([BigNameDesc of C])";
		try talking C instead;
	repeat with C running through monsters in the location of the player:
		say "([BigNameDesc of C])";
		try talking C instead;
	say "Greet who?" instead.
Understand "greet", "say hello", "say hi", "talk", "speak", "say", "converse" as AutoTalking.

AutoDipping is an action applying to one thing.

Check AutoDipping:
	if the noun is not vessel, say "You need to choose a drinking vessel.";
	repeat with C running through dispensers in the location of the player:
		say "(the [printed name of C])";
		try decanting the noun with C instead;
	say "Into what?" instead.
Understand "dip [something]", "fill [something]" as AutoDipping.

AutoGlueWiping is an action applying to one thing.

Check AutoGlueWiping:
	let C be a random carried unglued clothing;
	if C is clothing and the player is glue stuck and the noun is glue, try GlueRubbing the noun on C instead;
	say "Brush glue on what?" instead.
Understand "brush [something]" as AutoGlueWiping.

Definition: a clothing is strut enabling: decide no.

Report taking off strut enabling clothing:
	if the strut of the player is 1 and the strutskill of the player is 0 and the number of worn strut enabling clothing is 0:
		say "You feel some confidence leave you as you take the [noun] off. You think that you'd just trip endlessly if you keep strutting, so you stop.";
		now the strut of the player is 0.

Strutting is an action applying to nothing.

Check strutting:
	if the strut of the player is 0:
		if the strutskill of the player is 0 and the number of worn strut enabling clothing is 0, say "You don't know this ability." instead;
		if the strut of the player is 0 and 0 is the number of worn heels, say "You aren't wearing heels so you can't strut at the moment." instead;
		if the player is prone, say "You can only change your walking mode whilst upright." instead;
		if the player is flying, say "You aren't even touching the ground!" instead;
		if the class of the player is living sex doll, say "You don't have the muscles to control your body in such a specific way." instead;
		if the player is waddling, say "You can't waddle and strut at the same time!" instead;
		if the player is wobbling, say "You're too unsure on your heels to strut properly." instead;
		if there is a worn hobble-skirted clothing, say "Your restrictive skirt prevents you from strutting!" instead;
		if the player is hobbling, say "You are being forced to hobble, so can't strut properly." instead;
		if the player is squirming, say "Your [printed name of random insertable object penetrating a fuckhole] is preventing you from strutting properly." instead;
		if the player is in danger or the player is immobile, say "It's too late to try to start strutting now!" instead;
		if the player is swaying:
			if there is a worn blessed yoga pants, say "You'd think strutting would be impossible with your [ShortDesc of hips], but you manage just fine.";
			otherwise say "Your [ShortDesc of hips] are too large to allow you to strut properly." instead.

Carry out strutting:
	if the strut of the player is 0:
		now the strut of the player is 1;
		say "[bold type]You are now provocatively strutting around in your heels.[roman type][line break][one of]Somehow, this makes you feel more agile![or][stopping]";
	otherwise:
		now the strut of the player is 0;
		say "[bold type]You have stopped strutting around.[roman type][line break]".
Understand "strut", "strutting", "slut it up" as strutting.

Actions with Missing Nouns ends here.
