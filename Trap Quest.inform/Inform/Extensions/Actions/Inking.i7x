Inking by Actions begins here.

Inking is an action applying to one thing.
Check inking:
	if the player is flying, say "You're not even on the ground!" instead;
	if the noun is the player, say "You wouldn't fit, and you don't know where that goes!" instead;
	if the noun is not held by the player, say "You need to be holding it." instead;
	if the noun is worn:
		now summoning is 1;
		unless the noun is actually removable:
			say "You'd need to remove it first.";
		now summoning is 0 instead.
Carry out inking:
	say "You push the [noun] through the hole.";
	let T be nothing;
	let inspiration-understood be 0;
	if debugmode is 1, say "List of potential inspired tattoos: [list of drawable eligible tattoos].";
	now T is a random drawable eligible tattoo;
	if T is tattoo:
		now inspiration-understood is 1;
	otherwise:
		now T is a random drawable tattoo;
	if T is tattoo:
		say "Metal robotic arms fly out of concealed holes in the ceiling and grab onto your limbs. They pin you to the table, with your head facing the screen. [if T is tattoo and inspiration-understood is 1]The screen now says 'Inspiration understood.'  [otherwise]The screen now says 'Inspiration not understood, selecting template at random.'  [end if][inking-flav]Another arm descends carrying a mirror, to allow you to see your new ink:[line break]";
		summon T;
		try examining T;
	otherwise:
		say "The screen says 'ERROR: Canvas already full. No appropriate templates found.'  The arms let go of you and recede into the ceiling.";
	destroy the noun;
	now the noun is in Holding Pen; [so it never comes back]
	now seconds is 6.
		
To say inking-flav:
	if there is a worn tattoo:
		say "Once again the robotic arm descends. [if the bimbo of the player < 13]You're ready for the pain this time and you manage to bear it without making a noise. [otherwise]You're ready for the pain, and you find yourself almost enjoying the painful sensations. [end if]It doesn't take long before it has finished.";
	otherwise:
		say "Another robotic arm descends - this one has a tattoo needle at the end!  You [if the bimbo of the player < 10]scream[otherwise]squeal[end if] in pain as it gets to work - there's nothing you can do as it expertly and quickly permanently imprints your body.".

To compute inking effect of (T - a tattoo):
	do nothing.

Check inserting it into while the second noun is HotelScenery01:
	try inking the noun instead.

Inking ends here.

