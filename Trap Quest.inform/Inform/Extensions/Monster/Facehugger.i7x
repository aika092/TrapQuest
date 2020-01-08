Facehugger by Monster begins here.

A facehugger is a kind of monster. The difficulty of facehugger is 1. facehugger is neuter. The text-shortcut of facehugger is "fhgr".

There are 10 facehuggers.

To decide which number is the girth of (M - a facehugger):
	decide on 1.

facehuggerShortcutCount is initially 1.
To facehuggerShortcutAssign (C - a facehugger):
	if the text-shortcut of C is "fhgr":
		now the text-shortcut of C is substituted form of "fhgr[facehuggerShortcutCount]";
		increase facehuggerShortcutCount by 1.

Figure of facehugger is the file "NPCs/MultiFloor/facehugger1.jpg".

To decide which figure-name is the monster-image of (M - facehugger):
	decide on figure of facehugger.

To say ShortDesc of (M - facehugger):
	say "facehugger".

To say MediumDesc of (M - facehugger):
	say "facehugger".

To say MonsterDesc of (M - facehugger):
	say "This weird insect-like monster is not much bigger than your handspan. It has several strong legs which allow it to leap really high and then try to latch onto you.".

To set up (M - facehugger):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 1;
	now the health of M is the maxhealth of M;
	facehuggerShortcutAssign M;
	anger M;
	now M is interested.

To compute labour to (M - a facehugger):
	compute tentacle birth. [Possibly this can be changed so tentacle monster daddy is different from lake monster, vine, and belt daddy.]

To compute monstermotion of (M - a facehugger):
	do nothing.

To compute (M - facehugger) seeking (D - a direction):
	do nothing.

To compute action (N - a number) of (M - a facehugger):
	if M is in the location of the player and N is not 2:
		anger M;
		now M is interested;
		let O be a random undefended orifice;
		if O is orifice:
			say "[BigNameDesc of M] leaps at you, trying to latch onto your [variable O]!";
			let D be a random number between 1 and the dexterity of the player;
			let X be D;
			if the player is prone, decrease X by 8;
			if debuginfo > 0, say "[input-style]Facehugger evasion check: dexterity roll (d[dexterity of the player]) = [D] [if the player is prone]- kneeling penalty (8) = [X] [end if]| (6.5) Facehugger evasion difficulty[roman type][line break]";
			if X > 6:
				say "You manage to move yourself out of the way, and [NameDesc of M] goes flying past. It turns around, ready to try again...";
			otherwise:
				let SL be a random number between 3 and 5;
				say "You can't move out of the way in time! It latches on, quickly pushing its ovipositor into your [variable O] before you have a chance to rip it off.";
				now M is penetrating O;
				if O is fuckhole, ruin O;
				if O is asshole:
					if egg laying fetish is 1:
						say "It pumps several eggs inside of your belly!";
						assfill SL small eggs;
					otherwise:
						say "It pumps your [asshole] full of inhuman [semen]!";
						assfill SL;
				otherwise if O is vagina:
					if egg laying fetish is 1 and pregnancy fetish is 1 and inhuman pregnancy >= 2 and vagina is accepting womb semen:
						say "It pumps your womb full of inhuman [semen] and its alien eggs!";
						cancel father material of vagina;
						now M is inseminating vagina;
						wombfill SL;
						check sudden pregnancy;
						if the pregnancy of the player < 1:
							say ConceptionFlav;
							now the pregnancy of the player is 1;
							check goddess eligibility;
					otherwise:
						say "It pumps your [vagina] full of inhuman [semen]!";
						pussyfill SL;
				otherwise:
					if egg laying fetish is 1:
						say "It pumps your stomach full of eggs and inhuman [semen]! Your throat doesn't handle having eggs forced down it very well, and as soon as [NameDesc of M] pulls out, you puke it all up.";
						increase the stomach-semen of the player by 1;
						PukeUp 1;
						repeat with NN running from 1 to SL:
							let E be a random off-stage small egg;
							if E is egg:
								now E is in the location of the player;
								if a random number between 1 and 5 is 1, now the hatching of E is 1;
						if there is a small egg in the location of the player, say "The eggs fall to the ground in front of you. [bold type]You feel that because they were only in your body for a brief moment, there's a good chance that they're inert.[roman type][line break]";
					otherwise:
						say "It pumps your stomach full of inhuman [semen]!";
						StomachSemenUp SL;
				say "The legs let go of you and the body falls off, motionless and dead.";
				destroy M.


To compute (M - a monster) stomping (N - a facehugger):
	if M is in the location of the player, say "[BigNameDesc of M] kills the [N].";
	destroy N;
	let L be a random off-stage leftover;
	now L is in the location of M;
	now the leftover-type of L is the leftover-type of N.


Section 3 - Damage

[Chance for the facehugger to completely dodge the attack.]
To decide which number is the damage modifier of (M - a facehugger):
	 if (a random number between 1 and the dexterity of the player) + (a random number between 1 and the dexterity of the player) < a random number between 3 and 12, decide on (attack-damage * -1);
	decide on 0.


To say damage-flavour of (N - a number) on (M - a facehugger):
	if N is 0:
		say "[BigNameDesc of M] hops backwards, dodging your attack! Try again?";
	otherwise:
		say "A direct hit!".


To compute damage of (M - a facehugger):
	if the health of M <= 0, compute death of M.

To loot (M - a facehugger):
	do nothing.


Facehugger ends here.
