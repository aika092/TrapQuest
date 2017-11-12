Discombobulator Laser Trap by Traps begins here.


A discombobulator laser trap is a kind of trap.  There are 20 potentially click potentially wire discombobulator laser traps.  The description of a discombobulator laser trap is "A futuristic looking laser ray gun pokes out from its hidden compartment in [if item described is in The Woods]a tree[otherwise]the wall[end if].".

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
	let X be a random number between 8 and 30;
	say "A laser ray gun appears from within a hidden compartment in [if item described is in The Woods]a tree[otherwise]the wall[end if], and fires a shot right at you!  ";
	let C be a random worn currently uncovered transformable clothing;
	if tutorial is 1, now C is a random worn dress;
	if X > the dexterity of the player or tutorial is 1:
		if C is clothing:
			say "It hits your [C], which starts to shimmer!";
			potentially transform C;
		otherwise:
			say "It hits your skin directly, but nothing seems to happen...";
	otherwise:
		say "With lightning reflexes, you avoid the path of the laser ray.".



Discombobulator Laser Trap ends here.
