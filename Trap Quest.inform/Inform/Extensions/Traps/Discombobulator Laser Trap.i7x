Discombobulator Laser Trap by Traps begins here.

A discombobulator laser trap is a kind of trap. There are 20 potentially click potentially wire discombobulator laser traps.
To say ExamineDesc of (C - a discombobulator laser trap):
	say "A futuristic looking laser ray gun pokes out from its hidden compartment in [if C is in The Woods]a tree[otherwise]the wall[end if].".

This is the spawn initial dungeon laser traps rule:
	repeat with N running from 1 to (4 + (unlucky * 2)):
		let R be a random trappable untrapped placed labyrinth room;
		let T be a random off-stage discombobulator laser trap;
		unless there is a discombobulator laser trap in R, deploy T in R.
The spawn initial dungeon laser traps rule is listed first in the set up dungeon traps rules.

This is the spawn initial woods laser traps rule:
	repeat with N running from 1 to (3 + (unlucky * 3)):
		let R be a random trappable untrapped placed jungle room;
		let T be a random off-stage discombobulator laser trap;
		unless there is a discombobulator laser trap in R, deploy T in R.
The spawn initial woods laser traps rule is listed first in the set up woods traps rules.

This is the spawn initial hotel laser traps rule:
	repeat with N running from 1 to (2 + (unlucky * 4)):
		let R be a random trappable untrapped placed modern room;
		let T be a random off-stage discombobulator laser trap;
		unless there is a discombobulator laser trap in R, deploy T in R.
The spawn initial hotel laser traps rule is listed first in the set up hotel traps rules.

To trigger (Y - a discombobulator laser trap):
	now the reset-timer of Y is 250;
	now Y is not untriggered;
	now Y is revealed;
	now Y is expired;
	compute discombobulation.

To compute discombobulation:
	let X be a random number between 8 and 30;
	say "A laser ray gun appears from within a hidden compartment in [if item described is in The Woods]a tree[otherwise]the wall[end if], and fires a shot right at you! ";
	if debuginfo > 0, say "[line break][input-style]Laser dodge check: [if the player is prone]Player on knees = automatic fail[otherwise]Dexterity ([dexterity of the player]) | ([X].5) d23+7 difficulty roll[end if][roman type][line break]";
	let C be most-transformable-uncovered-clothing;
	if tutorial is 1, now C is a random worn dress;
	if tutorial is 1 or the player is prone or X > the dexterity of the player:
		if C is clothing:
			say "It hits your [ShortDesc of C], which starts to shimmer!";
			potentially transform C;
			if C is not worn:
				repeat with M running through reactive monsters:
					say SuddenTransformTrapReactFlav of M;
		otherwise if artificial enhancements fetish is 0 and the latex-transformation of the player is 0: [#LXorDD: No silicone or similar plumping up unless they're amenable to 'plastic'.]
			say "It hits your skin directly, making you feel weaker...";
			StrengthDown 1;
		otherwise: [#LXorDD: they're amenable to 'plastic'.]
			if diaper quest is 1, now X is a random number between 1 and 2; [i.e. limited to breasts or belly.]
			otherwise now X is a random number between 1 and 4;
			say "It hits your [LatexFlav]skin directly!";
			if ArtificialUp 4 options with override X is 0:
				say "It shivers through you, making you feel weaker.";
				StrengthDown 1;
	otherwise:
		say "With lightning reflexes, you avoid the path of the laser ray.".

To say SuddenTransformTrapReactFlav of (M - a monster):
	say TriggeredTrapReactFlav of M.

Discombobulator Laser Trap ends here.
