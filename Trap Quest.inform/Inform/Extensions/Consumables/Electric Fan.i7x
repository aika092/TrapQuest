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
To decide which number is the alchemy key of (C - an electric fan):
	decide on 21.
Definition: an electric fan is product: decide yes.
To decide which number is the bartering value of (T - an electric fan) for (M - an aeromancer):
	decide on 5.
To decide which number is the bartering value of (T - an electric fan) for (M - a mechanic):
	decide on 3.
To say OfferThanksFlav of (M - a mechanic) for (T - an electric fan):
	say "[speech style of M]'Thanks a lot for this! I'd almost run out of this kind of battery.'[roman type][line break]".
To decide which number is the bartering value of (T - an electric fan) for (M - a robot):
	decide on 1.
To decide which number is the bartering value of (T - an electric fan) for (M - a mannequin):
	decide on 1.

[air tentacles if you try to use it in a boss room]
To decide which number is the girth of (T - an electric fan):
	decide on 10.
To decide which number is the stimulation of (T - an electric fan) on (F - a body part):
	decide on 8.

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
		if R is bossed: [Trying to use this in a boss room to remove a boss? Bad munchkin!]
			say "A huge blast of air billows around you, stinging you all over!";
			PainUp 2;
			say "The air is so strong that your clothing is ripped to shreds!";
			repeat with C running through worn removable clothing:
				unless C is diaper, destroy C;
			let M be entry 1 of here-monsters;
			say "[BigNameDesc of M] stands in front of you, completely unaffected by the wind, looking menacing. It seems like you may have made a huge mistake by trying that here.";
			if diaper quest is 0:
				say "Several tentacles made of pure pressurized air materialise in front of you, and then the tornado around you lifts you into the air, leaving your orifices completely defenceless as the air tentacles move to penetrate you in every fuckhole, quickly making you 'airtight'. They widen and widen as more and more barely visible tentacles force their way into your body!";
				repeat with O running through orifices:
					if O is not actually occupied:
						now the noun is penetrating O;
						if O is fuckhole, ruin O;
				if inflation fetish is 1 or artificial enhancements fetish is 1:
					say "They pump their pressurised air inside you, inflating your ";
					if inflation fetish is 0 or the silicone volume of breasts > 0 or the silicone volume of hips > 0:
						say "implants!";
						if the silicone volume of breasts > 0, BustImplantsUp 5;
						if the silicone volume of breasts is 0 or the silicone volume of hips > 0, AssImplantsUp 3;
					otherwise:
						say "body!";
						AssInflate 4;
						BustInflate 6;
				otherwise:
					say "The tentacles retreat and give you a moment's rest.";
					wait 1200 ms before continuing;
					say "...And then they just come back for more! All the now super-thick tentacles shoot back in for one more brutal session!";
					repeat with F running through fuckholes:
						if the noun is penetrating F, ruin F;
					dislodge the noun;
					reset the Glulx timer;
			otherwise:
				if the player is not incontinent and the bladder of the player > 0:
					say "The stinging wind squeezes you tight, forcing the air out of your lungs and the urine out of your bladder.";
					now delayed urination is 1;
					try urinating;
				otherwise:
					say "The stinging strikes of the wind seem to start to focus on certain specific spots on your body - your [AssDesc], your [ShortDesc of thighs] and your [genitals]! A weird mixture of pleasure and pain whirls around your body and mind, overwhelming you!";
					PainUp 1;
					stimulate vagina from the noun times 2;
			now the fatigue of the player is the buckle threshold of the player;
			say "The ordeal leaves you exhausted, barely able to move.";
			if the player is upright, try kneeling;
		otherwise:
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
	otherwise if there is a monster in R:
		say "It doesn't affect the [list of monsters in the location of the player]!";
	if the location of the player is R, say "Soon, it apparently runs out of battery and stops working. [if the location of the player is smoky and the noun is cursed]The smoke settles back down to waist height. [end if]You discard the expired fan.";
	destroy the noun.

Understand "turn on [something]", "activate [something]" as fanning.
Check drinking an electric fan:
	try fanning the noun instead.

Definition: an electric fan is inflation themed: decide yes.

Electric Fan ends here.
