Facility Dungeon Drink by Objects begins here.

facility dungeon drink is a thing. facility dungeon drink is in Facility34. facility dungeon drink is not portable. The printed name of facility dungeon drink is "[TQlink of item described][if diaper quest is 1]pacifier[otherwise]dildo[end if] in the wall[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "pacifier", "dildo", "in the wall", "wall" as facility dungeon drink. The text-shortcut of facility dungeon drink is "itw".
To say ExamineDesc of (C - facility dungeon drink):
	say "A hollow [if diaper quest is 1]back end of a pacifier[otherwise]rubber dildo[end if] is attached to the wall. It looks like it's meant to be used as a drink dispenser.".

Definition: facility dungeon drink is immune to change: decide yes.

To say unique-verb-desc of (T - a facility dungeon drink):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "":
		say " [link][bracket]suck[close bracket][as]suck on [text-shortcut of T][end link]".

Check drinking facility dungeon drink:
	if the player is gagged, say "You're not going to be able to manage that whilst gagged!" instead;
	if the player is upright, say "You would need to be on your knees to manage that." instead.

Carry out drinking facility dungeon drink:
	allocate 6 seconds;
	say "[one of]You put your lips around the [if diaper quest is 1]pacifier nub[otherwise]dildo[end if] and suck. It's a little humiliating but water fills your mouth and you happily drink it down.";
	moderateHumiliate;
	StomachWaterUp 2.

Facility Dungeon Drink ends here.
