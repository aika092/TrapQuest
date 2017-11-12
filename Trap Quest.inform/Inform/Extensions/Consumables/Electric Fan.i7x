Electric Fan by Consumables begins here.


An electric fan is a kind of thing.  There are 3 electric fans.  The printed name of electric fan is "[TQlink of item described]electric fan[TQxlink of item described][verb-desc of item described]".  The printed plural name of electric fan is "[TQlink of item described]electric fans[TQxlink of item described][verb-desc of item described]".  The text-shortcut of electric fan is "ef".  The description of electric fan is "A small desktop fan that appears to run on batteries.".
An electric fan has a magic-curse.  An electric fan is usually bland.
An electric fan has a curse-ID. [Just because otherwise we get programming errors when other functions try to set its curse-ID]
To decide which number is the alchemy key of (C - a electric fan):
	decide on 21.
Definition: an electric fan (called E) is product:
	decide yes.
To decide which number is the bartering value of (T - a electric fan) for (M - an aeromancer):
	decide on 5.
To decide which number is the bartering value of (T - a electric fan) for (M - a mechanic):
	decide on 3.
To say OfferThanksFlav of (M - a mechanic) for (T - a electric fan):
	say "[speech style of M]'Thanks a lot for this!  I'd almost run out of this kind of battery.'[roman type][line break]".
To decide which number is the bartering value of (T - a electric fan) for (M - a robot):
	decide on 1.
To decide which number is the bartering value of (T - a electric fan) for (M - a mannequin):
	decide on 1.

Fanning is an action applying to one thing.
Check fanning:
	if the noun is candy machine, try CandyObtaining the noun instead;
	if the noun is not electric fan, say "This verb is used for turning on a fan!" instead;
	if the player is immobile, say "Aren't you a bit busy?" instead;
	if the player is not able to manually use their hands, do nothing instead.

Carry out fanning:
	now seconds is 6;
	say "You turn on the fan and place it on the ground.  It begins whirring!";
	if the location of the player is smoky:
		if the noun is cursed:
			say "The smoke is blown violently, allowing it to envelop the entire room!  Maybe the fan is cursed?";
			if the player is able to breathe:
				say "You cough as you are forced to breathe a bit in.  ";
				if the largeness of breasts < max breast size:
					say "Your chest rumbles and swells slightly.";
					BustUp 2;
		otherwise:
			say "The pink smoke in this room is dispersed by the fan!  You can kneel here safely now.";
			now the location of the player is not smoky;
	otherwise:
		say "Nothing interesting seems to happen.  But maybe it would if used in a room with smoke...";
	say "Soon, it apparently runs out of battery and stops working.  [if the location of the player is smoky and the noun is cursed]The smoke settles back down to waist height.  [end if]You discard the expired fan.";
	destroy the noun.

Understand "turn on [something]", "activate [something]" as fanning.
Check drinking an electric fan:
	try fanning the noun instead.

Definition: an electric fan (called C) is inflation themed:
	decide yes.



Electric Fan ends here.
