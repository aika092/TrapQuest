Mind Flayer by Monster begins here.

mind flayer is a monster. mind flayer is neuter. Understand "mindflayer" as mind flayer.

mind flayer has a number called feeding. The feeding of mind flayer is 0.

Definition: mind flayer is willing to do oral: decide yes.

The text-shortcut of mind flayer is "mf".

Figure of mindflayer is the file "NPCs/MultiFloor/mindflayer1.png".

Figure of Mindflayer Cutscene 1 is the file "Special/Cutscene/cutscene-mindflayer-perception1.png".
Figure of Mindflayer Cutscene 2 is the file "Special/Cutscene/cutscene-mindflayer-suck1.png".
Figure of Mindflayer Cutscene 3 is the file "Special/Cutscene/cutscene-mindflayer-suck2.png".
Figure of Mindflayer Cutscene 4 is the file "Special/Cutscene/cutscene-mindflayer-suck3.png".
Figure of Mindflayer Cutscene 5 is the file "Special/Cutscene/cutscene-mindflayer-drained1.png".
Figure of Mindflayer Cutscene 6 is the file "Special/Cutscene/cutscene-mindflayer-drained2.png".

To decide which figure-name is the monster-image of (M - mind flayer):
	decide on figure of mindflayer.
To decide which figure-name is the oral-sex-monster-image of (M - mind flayer):
	decide on figure of mindflayer cutscene 2.

To say ShortDesc of (M - mind flayer):
	say "mindflayer".

To say MediumDesc of (M - mind flayer):
	say "mindflayer".

To say MonsterDesc of (M - mind flayer):
	say "A lean humanoid with slimy looking purple skin. [big he of M] wears a loose robe. Slowly waving tentacles surround [his of M] mouth. Though [his of M] eyes are pure white, [he of M] exudes an aura of intelligence and menace.".

To set up (M - mind flayer):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 13;
	now the health of M is the maxhealth of M;
	anger M.

hastur is an action applying to nothing.
Carry out hastur:
	if mindflayer spawned is 0 and the player is a top donator:
		set up mind flayer;
		now mindflayer spawned is 1;
		say "You get an ominous feeling inside you suddenly. You probably shouldn[']t have said that!";
		if playerRegion is Woods:
			now mind flayer is in a random placed dodgy room;
			while mind flayer is nearby or mind flayer is in the location of the player or the location of mind flayer is an unplaced room:
				now mind flayer is in a random placed dodgy room;
		otherwise if playerRegion is Hotel:
			now mind flayer is in a random placed modern room;
			while mind flayer is nearby or mind flayer is in the location of the player or the location of mind flayer is an unplaced room:
				now mind flayer is in a random placed modern room;
		otherwise if playerRegion is Mansion:
			now mind flayer is in a random placed haunted room;
			while mind flayer is nearby or mind flayer is in the location of the player or the location of mind flayer is an unplaced room:
				now mind flayer is in a random placed haunted room;
		otherwise:
			now mind flayer is in a random placed sandy room;
			while mind flayer is nearby or mind flayer is in the location of the player or the location of mind flayer is an unplaced room:
				now mind flayer is in a random placed sandy room;
	otherwise:
		say "That probably wasn[']t a good idea, but luckily nothing seems to have come from it.".
Understand "hastur" as hastur.

Part 1 - Perception

To compute perception of (M - mind flayer):
	now M is interested;
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]";
	if the class of the player is living sex doll:
		say "It doesn't look like it's interested in you.";
		bore M for 500 seconds;
	otherwise:
		alwayscutshow figure of mindflayer cutscene 1 for M;
		anger M.

To compute (M - a minotaur) stomping (N - mind flayer):
	if M is in the location of the player, say "[BigNameDesc of M] angrily glares and stamps at the [N], which looks shockingly nonplussed and crosses its spindly arms. As [NameDesc of M] begins to charge, suddenly the [N] glares harshly and the mighty creature confusedly slams into a wall, head first. As it lays stunned on the ground, the [N] almost casually wraps its tentacles around the beast's head. It lets out a blood-curdling moo as the [N][']s tentacles push their way through its skull and gruesomely extract its brain!";
	otherwise say "You hear a blood-curdling moo from [if N is nearby]nearby![otherwise]somewhere in the dungeon![end if]";
	destroy M;
	let L be a random off-stage leftover;
	now L is in the location of N;
	now the leftover-type of L is the leftover-type of M.

To compute (M - a demon lord) stomping (N - mind flayer):
	if M is in the location of the player, say "[M] growls at the [N], which seems to briefly consider its options before hurriedly backing away.";
	regionally place N;
	bore N.

Part 2 - Combat

To say MouthPenetrationFlav of (M - mind flayer):
	if the raw intelligence of the player > 3:
		say "The creature tentatively sniffs at your forehead, then lets out an exultant shriek as it wraps its tentacles around your skull!";
	otherwise:
		say "The creature tentatively sniffs at your head, but its expression quickly shifts into one of disappointment. This in turn becomes a cruel smirk as it fixes a piercing gaze on you...".


To compute facial sex of (M - mind flayer):
	if the raw intelligence of the player > 4:
		say "The creature[']s tentacles continue to suck on your head! You feel terribly light-headed but euphoric at the same time!";
		Intdown 1;
		stimulate face from M;
		cutshow figure of mindflayer cutscene 3 for M;
	otherwise if the raw intelligence of the player is 4:
		say "With a final squelching sound not unlike a straw struggling to pull the last drops of liquid from a cup, you feel the suction on your head come to a climax. The euphoria becomes so strong that so do you!";
		Intdown 2;
		cutshow figure of mindflayer cutscene 4 for M;
		if the player is able to get horny:
			if the player is female:
				vaginally orgasm shamefully;
			otherwise:
				orgasm;
				punish shameful male orgasm;
		now the sex-length of M is 0;
	otherwise:
		say "The creature[']s gaze fills what little mind you have, and you feel yourself go blank!";
	decrease the sex-length of M by 1.

To set up sex length of (M - mind flayer) in (B - face):
	if the raw intelligence of the player > 3:
		now the sex-length of M is 4;
		now the feeding of M is 1;
	otherwise:
		now the sex-length of M is 1;
		now the feeding of M is 0.

To compute facial climax of (M - mind flayer):
	if the raw intelligence of the player > 3 and the feeding of M is 1:
		say "The creature pulls away its tentacles from your head, seemingly satisfied for the moment.";
		bore M;
		cutshow figure of mindflayer cutscene 5 for M;
	otherwise if the feeding of M is 1:
		say "The creature pulls its tentacles away, seemingly satisfied for the moment.";
		bore M;
		cutshow figure of mindflayer cutscene 6 for M;
		if there is a worn tattoo and empty-mind tattoo is not worn:
			say "As it pulls away, the word 'EMPTY' suddenly appears on your forehead!";
			summon empty-mind tattoo;
	otherwise:
		say "You aren[']t quite sure what happened while you were blacked out [if the bimbo of the player > 8]but you are quite concerned![otherwise].[end if]The creature, seemingly satisfied, haughtily walks away.";
		increase the domination of the player by 4;
		if the domination of the player > 40: [cap at an arbitrarily high number that we should never reach just to avoid a potential issue]
			now the domination of the player is 40;
		bore M.

Section 1 - Attack

The mind flayer attack rules is a rulebook. The attack rules of mind flayer is usually the mind flayer attack rules.

This is the mind flayer psychic attack rule:
	let M be current-monster;
	if a random number between 1 and 3 < 3:
		say "The creature releases a wave of psychic force!";
		if (13 - a random number between 1 and the raw intelligence of the player) > 0:
			say "The force strikes you head on, and you feel a sudden wave of fatigue!";
			let X be the difficulty of M;
			if the buckle threshold of the player / 7 > X, now X is the buckle threshold of the player / 7;
			FatigueUp X;
		otherwise:
			say "You are able to shake the attack off!";
	otherwise:
		say "You feel the creature bear all its will down on you!";
		if (10 - a random number between 1 and the raw intelligence of the player) > 0:
			say "You feel compelled to drop to your knees!";
			try kneeling;
		otherwise:
			say "You are able to shake the attack off!".
The mind flayer psychic attack rule is listed first in the mind flayer attack rules.

The mind flayer priority attack rules is a rulebook. The priority attack rules of mind flayer is usually the mind flayer priority attack rules.

This is the mind flayer sees a target rule:
	let M be current-monster;
	repeat with N running through monsters in the location of M:
		if N is woman and the woman-bimbo of woman-barbara < 6:
			if M is in the location of the player, say "[BigNameDesc of M] sniffs at [N][']s head then stares heavily at [him of N]. [big his of N] eyes roll slightly back into [his of N] head and [his of N] mouth hangs open as [he of N] drops to [his of N] knees and presents [his of N] head to the creature, which wraps its tentacles around it. [big he of N] moans euphorically as a horrible sucking sound fills the area, and after the creature withdraws its tentacles [he of N] wanders away, drooling, with unfocused eyes.";
			otherwise say "You hear a strange sucking sound from somewhere else.";
			WomanSluttify;
			Vanish N;
		otherwise if N is woman:
			if M is in the location of the player and the raw intelligence of the player > 3:
				say "[BigNameDesc of M] sniffs briefly at [N][']s head and a look of disappointment crosses its face. It stares at [him of N], irritated. After a moment it smirks, seemingly satisfied, and [N] wanders off rubbing [his of N] [vagina] and muttering about [manly-penis].";
				regionally place N;
				bore N;
			otherwise if M is in the location of the player:
				say "[BigNameDesc of M] sniffs the air, then [N][']s head, then yours. It rolls its white eyes in brief annoyance before a broad, beaky grin crosses its face. It glares at you both, and both of you mindlessly drop to your knees. It stares at [him of N] for a moment and then smirks, seemingly satisfied, as [N] wanders off rubbing [his of N] [vagina] and muttering about [manly-penis]. Then it turns to you...";
				regionally place N;
				bore N;
				try kneeling.
The mind flayer sees a target rule is listed in the mind flayer priority attack rules.

Section 2 - Damage

To compute damage of (M - mind flayer):
	if the health of M > 0:
		if M is uninterested:
			say "The creature seems to notice you. Uh-oh...";
			now M is interested;
			anger M;
		otherwise:
			say DamageReaction (the health of M) of M;
	otherwise:
		compute death of M.

To say DamageReactHealthy of (M - mind flayer):
	say "The thing doesn't even flinch!".

To say DamageReactDamaged of (M - mind flayer):
	say "The creature doesn[']t seem to be looking quite at you, only slightly reacting to the hit.".

To say DamageReactTired of (M - mind flayer):
	say "The creature takes the hit, its expression remaining as hard to read as ever.".

To say DamageReactWeak of (M - mind flayer):
	say "The creature's expression grows frantic as it senses its life is in jeopardy!".

To compute unique death of (M - mind flayer):
	say "[BigNameDesc of M] screams hideously as it collapses to the ground. ";
	if severed-tentacle is off-stage:
		now severed-tentacle is in the location of the player;
		say "Its body disappears, leaving behind a [ShortDesc of severed-tentacle].";
		compute autotaking severed-tentacle;
	otherwise:
		say "Its body disappears".


Mind Flayer ends here.

