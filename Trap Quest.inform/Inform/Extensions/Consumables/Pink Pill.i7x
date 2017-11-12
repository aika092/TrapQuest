Pink Pill by Consumables begins here.



The pink pill is a thing.  The description of pink pill is "A small pink pill.  You get the feeling it may help you out if you use it in a desperate time of need.  It is virtually weightless.".  The printed name of pink pill is "[TQlink of item described]pink pill[shortcut-desc][TQxlink of item described][verb-desc of item described]".  The text-shortcut of pink pill is "pi".  Understand "pp" as pink pill.

Check taking pink pill:
	if the noun is carried by the player, try PinkEating the noun instead.

Check pushing pink pill:
	if the player is in Capsule, try pushing the big red button instead. [Weird bug where the player tried to push the pink pill if "push" was entered]

Does the player mean pushing pink pill: it is very unlikely.

PinkEating is an action applying to one thing.
Check PinkEating:
	if the player is in Dungeon12 or the player is not virtual, say "For some reason, something inside of you is telling you that this would be a horrible idea." instead;
Carry out PinkEating:
	now seconds is 6;
	say "As you eat the pill, you feel yourself sucked through a portal. ";
	if the player is glue stuck, compute raw glue escaping a random glue in the location of the player with 1;
	say " The scenery around you slightly changes, and you are now in [Dungeon12]!  ";
	repeat with M running through things in the location of the player:
		if M is grabbing the player or M is penetrating a body part:
			unless M is disembodied:
				if M is monster, say "[line break]The [M] loses [his of M] grip on you!";
				if M is penetrating asshole:
					now the player-reaction of the player is resisting;
					say "The [M] is ripped out of your [asshole][if M is penetrating vagina] and [vagina][end if] at an incredible speed, causing a loud pop!  Your mind reels from the brutal damage done to the inside of your poor hole[if M is penetrating vagina]s[end if]!";
					AssRuin 2;
					if M is penetrating vagina, PussyRuin 2;
				otherwise if M is penetrating vagina:
					now the player-reaction of the player is resisting;
					say "The [M] is ripped out of your [vagina] at an incredible speed, causing a loud pop.  Your mind reels from the brutal damage done to the inside of your [vagina]!";
					PussyRuin 2;
				dislodge M;
	teleport to Dungeon12;
	remove all interest;
	if the player is prone:
		now the stance of the player is 0;
		say "[bold type]You are now standing.[roman type]";
	if there is a worn lipstick collar, now a random worn lipstick collar is not tethering;
	remove the noun from play.


Pink Pill ends here.
