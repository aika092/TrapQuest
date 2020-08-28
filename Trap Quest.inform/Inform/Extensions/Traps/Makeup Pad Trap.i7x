Makeup Pad Trap by Traps begins here.

[!<MakeUpPad>@

REQUIRES COMMENTING

@inherits <Trap>

@!]
A makeup pad is a kind of trap. There are 12 click makeup pads.
To say ExamineDesc of (C - a makeup pad):
	say "A cotton pad on the end of a wooden pole, set up on a catapult style mechanism.".

This is the spawn initial dungeon makeup traps rule:
	repeat with N running from 1 to 2:
		let R be a random click untrapped trappable placed labyrinth room;
		let T be a random off-stage makeup pad;
		unless there is a makeup pad in R, deploy T in R.
The spawn initial dungeon makeup traps rule is listed in the set up dungeon traps rules.

This is the spawn initial woods makeup traps rule:
	repeat with N running from 1 to 2:
		let R be a random click untrapped trappable placed jungle room;
		let T be a random off-stage makeup pad;
		unless there is a makeup pad in R, deploy T in R.
The spawn initial woods makeup traps rule is listed in the set up woods traps rules.

This is the spawn initial hotel makeup traps rule:
	let R be a random click untrapped trappable placed modern room;
	let T be a random off-stage makeup pad;
	unless there is a makeup pad in R, deploy T in R.
The spawn initial hotel makeup traps rule is listed in the set up hotel traps rules.

To trigger (Y - a makeup pad):
	now the reset-timer of Y is 250;
	now Y is not untriggered;
	now Y is revealed;
	now Y is expired;
	let X be a random number between 8 and 20;
	if X > the dexterity of the player or the make-up of face is 3:
		if diaper quest is 0:
			say "A large cotton pad swings out and smacks you straight in the face! [if the make-up of face is 0]A fine cloud of dust is created as it instantly applies a layer of makeup.[otherwise if the make-up of face < 3]A fine cloud of dust is created as it instantly applies another layer of makeup to your already slutty appearance.[otherwise]But nothing really seems to have changed...[end if]";
			FaceUp 1;
		otherwise:
			say "A large cotton pad swings out and smacks you straight in the face! [if the make-up of face < 3][one of]You[or]Once again you[stopping] are left with [one of]trashy[or]over-done[or]over-the-top[at random] make up that looks like it was [one of]done by a ten year old playing dressup[or]applied by a child[cycling]![otherwise]But nothing really seems to have changed...[end if]";
			FaceUp 3;
		repeat with M running through reactive monsters:
			say MakeUpTrapReactFlav of M;
	otherwise:
		say "With lightning reflexes, you dodge a large cotton pad that was flying straight for your face! It looks like you avoided a compulsory [if diaper quest is 0]slutty [end if]makeover!".

To say MakeUpTrapReactFlav of (M - a monster):
	say TriggeredTrapReactFlav of M.

Makeup Pad Trap ends here.
