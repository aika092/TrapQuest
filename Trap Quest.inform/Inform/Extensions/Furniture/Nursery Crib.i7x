Nursery Crib by Furniture begins here.

nursery crib is a furniture. The printed name of nursery crib is "[TQlink of item described]nursery crib[TQxlink of item described][shortcut-desc][verb-desc of item described]". The text-shortcut of nursery crib is "crb". nursery crib has a number called charge.

To say ExamineDesc of (C - a nursery crib):
	say "An adult-sized bed fashioned as a nursery crib, complete with solar system themed mobile, and large crib cage fencing on each side.".

Figure of nursery crib is the file "Env/Hotel/crib1.jpg".

To decide which figure-name is the examine-image of (C - a nursery crib):
	decide on figure of nursery crib.

To compute furniture resting on (F - nursery crib):
	say "You [if F is not grabbing the player]step up into the crib, and [end if]lie down.";
	compute crib locking of F;
	compute normal rest of F.

To compute crib locking of (F - nursery crib):
	if matron is in the location of the player and matron is undefeated:
		say "[BigNameDesc of matron] pulls up the cage gate, and locks it. [big he of matron] pulls away the steps, ensuring that a surprisingly high drop awaits you if you try to climb out before you are allowed.";
		now F is grabbing the player;
		distract matron;
		say "[speech style of matron]'Have a lovely rest, sweetie!' I'll be back to let you out once naptime is over.[roman type][line break][big he of matron] taps a button, which causes the mobile to start turning and playing [']rock a by baby['] in gentle chimes.";
		compute mandatory room leaving of matron;
		regionally place matron;
		now the charge of F is 0;
	otherwise if F is not grabbing the player:
		say "As [NameDesc of matron] [if matron is in the location of the player]is indisposed[otherwise]isn't there[end if], nobody closes or locks the gate.".

To compute rest completion of (F - a furniture):
	if F is not grabbing the player:
		say RestCompleteFlav of F;
		now auto is 1;
		try standing;
		now auto is 0.

To compute rest ending of (F - nursery crib):
	now player-currently-resting is 0;
	if F is grabbing the player:
		say "[if the alert of the player is 0]You now feel fully rested[otherwise]your rest has been interrupted[end if][if the charge of F < 8], but the nursery rhyme keeps playing. Being made to keep napping like this, when you no longer need to rest, makes you feel small and pathetic[otherwise]! And you notice that the nursery rhyme has stopped playing[end if].";
		if the charge of F < 8, SilentlyDelicateUp 1;
		say "You'll now need to [bold type]rest[roman type] (or [bold type]long rest[roman type]) until [NameDesc of matron] returns, or try to get out with [bold type]jump[roman type].".

To say RestingDesc of (F - a nursery crib):
	say "You [one of][or]continue to [stopping]rest on the comfortable mattress[if F is grabbing the player], with the mobile singing you its gentle song[end if].".

A time based rule (this is the nursery crib rule):
	if nursery crib is grabbing the player:
		increase the charge of nursery crib by 1;
		if the charge of nursery crib >= 40:
			say "All of a sudden, the lock snaps! The crib's gate thuds to the ground, releasing you.[line break][variable custom style]Phew![roman type][line break]";

Check standing when nursery crib is grabbing the player:
	say "The bed is too high and the ceiling is too low for you to stand." instead.

Check jumping when nursery crib is grabbing the player:
	if there is a worn ankle locking clothing, say "You won't be able to manage that while your ankles are bound!" instead;
	allocate 6 seconds;
	say "You reach for the top of the cage and try to vault over it.";
	if a random number between 6 and 20 < the delicateness of the player:
		say "[one of]Except, as your little hands grip the rail and you see just how high you are, you're suddenly overcome with fear, your hands releasing the rail without your conscious thought.[or]Once again, your eyes fall to the floor all the way down there, and you cringe back from the railing, thinking [line break][if the player is feeling submissive][second custom style][big boy of the player]s like me should just do what matron says.[otherwise][variable custom style]Maybe it's safer to just wait until I'm let out...[end if][roman type][line break][or][second custom style]Come on, you can do this [boy of the player]![roman type][line break]Except you find you're back in the middle of the crib once again.[or]But once again your nerve fails, and you abort the attempt.[stopping]";
	otherwise:
		if matron is in the location of the player and matron is undefeated:
			say "[speech style of matron]'What in the world do you think you are doing?!'[roman type][line break][BigNameDesc of matron] steps up and shoves you back in, before you can escape.[line break][speech style of matron]'Naptime isn't over yet.'[roman type][line break][big he of matron] looks rather irritated with you.";
			FavourDown matron;
			deinterest matron;
			compute mandatory room leaving of matron;
			regionally place matron;
		otherwise:
			say "As your weight is pressed down on top of the gate, the lock clicks open, causing the gate to suddenly drop to the ground. ";
			let D be a random number between 1 and the dexterity of the player;
			if debuginfo > 0, say "[input-style]Avoid injury roll: Dexterity d[dexterity of the player] = [D] | 7.5[roman type][line break]";
			if D > 7:
				say "You manage to land on your feet, and avoid injury!";
				now the stance of the player is 0;
			otherwise:
				say "You land on your side, bruising your arm and shoulder. Ouch!";
				BodyRuin 2;
				PainUp 10;
			dislodge nursery crib;
			if matron is alive and matron is undefeated and the player is getting unlucky:
				say "Suddenly, [NameDesc of matron] arrives from the west! [GotUnluckyFlav]";
				say "[speech style of matron]'What in the world do you think you are doing?!'[roman type][line break][BigNameDesc of matron] storms towards you. Uh-oh...";
				anger matron;
				now matron is interested;
				now matron is moved;
	do nothing instead.

Nursery Crib ends here.
