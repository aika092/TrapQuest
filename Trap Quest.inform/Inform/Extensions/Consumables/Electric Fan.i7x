Electric Fan by Consumables begins here.

An electric fan is a kind of thing. There are 7 electric fans. The printed name of electric fan is "[TQlink of item described][if item described is blessed]blessed [end if]electric fan[TQxlink of item described][verb-desc of item described]". The printed plural name of electric fan is "[TQlink of item described][if item described is blessed]blessed [end if]electric fans[TQxlink of item described][verb-desc of item described]". The text-shortcut of electric fan is "ef".
When play begins:
	let fanShortcutCount be 1;
	repeat with E running through electric fan:
		now the text-shortcut of E is substituted form of "ef[fanShortcutCount]";
		increase fanShortcutCount by 1.
To say ExamineDesc of (B - an electric fan):
	say "A small desktop fan that appears to run on batteries.".
Figure of fan is the file "Items/Collectibles/fan1.png".
To decide which figure-name is the examine-image of (E - an electric fan):
	decide on figure of fan.
An electric fan has a magic-curse. An electric fan is usually bland.
An electric fan has a curse-ID. [Just because otherwise we get programming errors when other functions try to set its curse-ID]
To decide which number is the alchemy key of (C - a electric fan):
	decide on 21.
Definition: an electric fan is product: decide yes.
To decide which number is the bartering value of (T - a electric fan) for (M - an aeromancer):
	decide on 5.
To decide which number is the bartering value of (T - a electric fan) for (M - a mechanic):
	decide on 3.
To say OfferThanksFlav of (M - a mechanic) for (T - a electric fan):
	say "[speech style of M]'Thanks a lot for this! I'd almost run out of this kind of battery.'[roman type][line break]".
To decide which number is the bartering value of (T - a electric fan) for (M - a robot):
	decide on 1.
To decide which number is the bartering value of (T - a electric fan) for (M - a mannequin):
	decide on 1.

Fanning is an action applying to one thing.
Check fanning:
	if the noun is candy machine, try CandyObtaining the noun instead;
	if the noun is not electric fan, say "This verb is used for turning on a fan!" instead;
	if playerRegion is School or the location of the player is Dungeon12, say "Something tells you that some kind of ancient magic is preventing that from working properly here." instead;
	if the player is immobile, say "Aren't you a bit busy?" instead.

Carry out fanning:
	allocate 6 seconds;
	say "You turn on the fan and place it on the ground. It begins whirring!";
	let R be the location of the player;
	now Neighbour Finder is R;
	let D be a random N-viable direction;
	let OD be the opposite-direction of D;
	if R is smoky:
		if the noun is cursed:
			say "The smoke is blown violently, allowing it to envelop the entire room! Maybe the fan is cursed?";
			if the player is able to breathe:
				say "You cough as you are forced to breathe a bit in. ";
				if the largeness of breasts < max breast size and diaper quest is 0:
					say "Your chest rumbles and swells slightly.";
					BustUp 2;
				otherwise:
					arouse 3000;
		otherwise:
			say "The pink smoke in this room is dispersed by the fan! You can kneel here safely now.";
			now R is not smoky;
	let here-monsters be the list of monsters in R;
	repeat with M running through the list of monsters in R:
		if M is caged or M is defeated or (M is acolyte and M is not unleashed), remove M from here-monsters;
	let E be the number of entries in here-monsters;
	if E > 0:
		say "A strong blast of air blows ";
		let RD be the room D from R;
		repeat with M running through here-monsters:
			say "[NameDesc of M][if E > 2], [otherwise if E is 2] and [end if]";
			decrease E by 1;
			now M is in RD;
			now M is moved; [won't move again this turn]
			if M is shopkeeper, anger M;
		say " to the [D]!";
		if there is a monster in the location of the player:
			say "It doesn't affect the [list of monsters in the location of the player]!";
		if the noun is cursed or (the noun is blessed and OD is N-viable):
			if the noun is blessed:
				now D is OD;
				now RD is the room D from R;
			say "The gale pushes you to the [D][if the noun is cursed]. It must have been cursed[end if]!";
			teleport to RD;
	if the location of the player is R, say "Soon, it apparently runs out of battery and stops working. [if the location of the player is smoky and the noun is cursed]The smoke settles back down to waist height. [end if]You discard the expired fan.";
	destroy the noun.

Understand "turn on [something]", "activate [something]" as fanning.
Check drinking an electric fan:
	try fanning the noun instead.

Definition: an electric fan is inflation themed: decide yes.

Electric Fan ends here.
