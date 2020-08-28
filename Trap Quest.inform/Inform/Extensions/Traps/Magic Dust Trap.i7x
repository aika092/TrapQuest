Magic Dust Trap by Traps begins here.

A magic dust trap is a kind of trap. There are 10 click magic dust traps.
To say ExamineDesc of (C - a magic dust trap):
	say "A small bowl on the end of a wooden pole, set up as a catapult style mechanism.".

This is the spawn initial dungeon dust traps rule:
	repeat with N running from 1 to 3 + (2 * unlucky):
		let R be a random trappable click untrapped placed labyrinth room;
		let T be a random off-stage magic dust trap;
		unless there is a magic dust trap in R, deploy T in R.
The spawn initial dungeon dust traps rule is listed in the set up dungeon traps rules.

This is the spawn initial woods dust traps rule:
	repeat with N running from 1 to 2 + unlucky:
		let R be a random trappable click untrapped placed jungle room;
		let T be a random off-stage magic dust trap;
		unless there is a magic dust trap in R, deploy T in R.
The spawn initial woods dust traps rule is listed in the set up woods traps rules.

This is the spawn initial hotel dust traps rule:
	repeat with N running from 1 to 1 + (2 * unlucky):
		let R be a random trappable click untrapped placed modern room;
		let T be a random off-stage magic dust trap;
		unless there is a magic dust trap in R, deploy T in R.
The spawn initial hotel dust traps rule is listed in the set up hotel traps rules.

To trigger (Y - a magic dust trap):
	now the reset-timer of Y is 250;
	now Y is not untriggered;
	now Y is revealed;
	now Y is expired;
	let X be a random number between 8 and 30;
	say "A tiny catapult mechanism swings out towards you, throwing [glitter] towards you! ";
	let C be most-transformable-uncovered-clothing;
	if X > the dexterity of the player:
		if diaper quest is 1 and diaper messing >= 3 and the player is full and asshole is not actually occupied and there is worn total protection soilable knickers:
			say "A phrase rapidly repeats in your head over and over and over and over.[line break][second custom style]'I don't need maturity! I don't need maturity! I don't need maturity! Don't need maturity! Don't need maturity! Maturity! Maturity! Maturity...'[roman type][line break]";
			if hypno-trigger-maturity is 0:
				say "You feel an almost irresistible compulsion to squat down and mess yourself. You might be able to resist, but if you do, there might be more permanent long-term repercussions when you hear the word 'maturity' in the future. Do you try to resist the urge to mess yourself? ";
				if the player is consenting:
					now hypno-trigger-maturity is 1;
					say "You grit your teeth and focus on the word 'maturity'. You manage to hold on... for now.[line break][variable custom style]Maturity...[roman type][line break]";
				otherwise:
					say "You give into the magic suggestion, [if the player is upright]crouch down into a squatting position [end if]and push.";
					now voluntarySquatting is 1;
					compute messing;
			otherwise:
				say "[variable custom style][maturity]...[roman type][line break]";
		otherwise if diaper quest is 1 and the make-up of face >= 3 and permanent makeup is 0 and a random number between 1 and 5 > 3: [Selkie: I love this! I wish it was available outside DQ!]
			say "It gets all over your face! Your make-up becomes all glittery with big lips and you have a heart pattern on your cheeks. It feels more... permanent. You try to move your face but you find you [i]can't[/i] - it's stuck in place! Your facial expression is frozen into this childish vacant look...[line break][variable custom style][if the bimbo of the player > 14]Ooh, it's perfect! I'm like a pretty little doll![otherwise if the bimbo of the player > 9]Well maybe it's better than the really messy job I had before, I guess. But I can't believe I can no longer move my face! How am I going to get people to treat me like a person and not an object now?![otherwise]Oh my god, my face can't really be stuck like this, can it?![end if][roman type][line break]";
			now permanent makeup is 1;
		otherwise if C is nothing or C is untransformable or a random number between 1 and 6 is 1:
			if diaper quest is 1:
				say "It gets all over you, and you [if the player is able to get horny]can feel your entire body flush with arousal![otherwise]feel a little tingly.[end if]";
				arouse 3000;
				repeat with M running through reactive monsters:
					say TriggeredTrapReactFlav of M;
			otherwise:
				say "[if the redness of hair < 3 or the blondeness of hair < 3 or the brightness of hair < 3]It gets all over your hair![otherwise if the largeness of hair < max hair length][otherwise if the make-up of face < 3]It gets all over your face, and transforms into another layer of makeup![otherwise]It gets all over your face, making it look even more ridiculous, if that was possible![end if]";
				if the redness of hair < 3 or the blondeness of hair < 3 or the brightness of hair < 3:
					HairBrightUp 1;
					HairRedUp 1;
					HairBlondeUp 1;
				otherwise if the largeness of hair < max hair length:
					HairUp 1;
				otherwise:
					FaceUp 1;
				repeat with M running through reactive monsters:
					say SuddenTransformTrapReactFlav of M;
		otherwise:
			say "It gets all over your [ShortDesc of C], which starts to shimmer!";
			potentially transform C;
			if C is not worn:
				repeat with M running through reactive monsters:
					say SuddenTransformTrapReactFlav of M;
		identify glitter;
	otherwise:
		say "With lightning reflexes, you dodge it all! It looks like you avoided [if glitter-identified is 0]some kind of trap[otherwise if diaper quest is 0 and (the redness of hair < 3 or the blondeness of hair < 3 or the brightness of hair < 3)]having your hair brightened[otherwise]the magic effects of the trap[end if]!".

glitter-identified is a number that varies.

To identify glitter:
	if glitter-identified is 0, say "This must be some kind of magic dust!";
	now glitter-identified is 1.

To say glitter:
	say "[if glitter-identified is 0]some kind of glitter[otherwise]magic dust[end if]".

Magic Dust Trap ends here.
