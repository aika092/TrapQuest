Slingshot Trap by Traps begins here.


A slingshot is a kind of trap. The description of slingshot is "A loose piece of elastic fabric pokes out of the ground, from where the slingshot trap happened.". There are 5 potentially pressure potentially sticky slingshots.

This is the spawn initial dungeon slingshot traps rule:
	if diaper focus > 0:
		repeat with N running from 1 to 2:
			let R be a random trappable placed labyrinth room;
			let T be a random off-stage slingshot;
			unless there is a slingshot in R, deploy T in R.
The spawn initial dungeon slingshot traps rule is listed in the set up dungeon traps rules.

This is the spawn initial woods slingshot traps rule:
	repeat with N running from 1 to (diaper focus + 1):
		let R be a random trappable placed jungle room;
		let T be a random off-stage slingshot;
		unless there is a slingshot in R, deploy T in R.
The spawn initial woods slingshot traps rule is listed in the set up woods traps rules.

To trigger (Y - a slingshot):
	now Y is not untriggered;
	now Y is expired;
	now the reset-timer of Y is 9999;
	say "As your feet leave the ground, you hear the 'twang' of a strong elastic band. ";
	let C be a random off-stage crotch rope;
	if the player is male, now C is a random off-stage pouch panties;
	if diaper focus is 1 and diaper lover > 0, now C is a random off-stage eligible disposable diaper;
	if C is actually summonable:
		say "You yelp in surprise as you feel some kind of underwear fly up your legs and into place at your hips!  [if the player is male]You stare inquisitively[otherwise]You pull helplessly[end if] at your new [printed name of C]. You are unsurprised to find that it won't come off.";
		summon C cursed;
	otherwise if C is clothing:
		say "You jump in surprise as you feel an item of clothing thud against your [ShortDesc of hips]. You look around and see that there is now a [printed name of C] on the ground behind you.";
		now C is in the location of the player;
		compute autotaking C;
	otherwise:
		say "Nothing else happens or appears. How weird!".


Slingshot Trap ends here.

