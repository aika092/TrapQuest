Mind Flayer by Monster begins here.

A mind flayer is a kind of monster. A mind flayer is usually intelligent. There is 1 mind flayer. A mind flayer is usually neuter. A mind flayer is usually willing to do oral. The difficulty of a mind flayer is usually 9.  Understand "mindflayer" as mind flayer.

The mind flayer has a number called feeding. The feeding of a mind flayer is usually 0.

The printed name of a mind flayer is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]mind flayer[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".  Understand "mind" as a mind flayer.  The description of a mind flayer is usually "[MindFlayerDesc]".  The text-shortcut of mind flayer is "mf".

To say MindFlayerDesc:
	say "A lean humanoid with slimy looking purple skin. It wears a loose robe. Slowly waving tentacles surround its mouth. Though its eyes are pure white, it exudes an aura of intelligence and menace.".
	
To set up (M - a mind flayer):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 13;
	now the health of M is the maxhealth of M;
	anger M.
	
hastur is an action applying to nothing.
Carry out hastur:
	if mindflayer spawned is 0 and the player is a top donator:
		let M be a random off-stage mind flayer;
		set up M;
		now mindflayer spawned is 1;
		say "You get an ominous feeling inside you suddenly. You probably shouldn[']t have said that!";
		if the player is in the Dungeon:
			now M is in a random placed sandy room;
			while M is nearby or M is in the location of the player or the location of M is an unplaced room:
				now M is in a random placed sandy room;
		otherwise if the player is in the Woods:
			now M is in a random placed dodgy room;
			while M is nearby or M is in the location of the player or the location of M is an unplaced room:
				now M is in a random placed dodgy room;
		otherwise if the player is in the Hotel:
			now M is in a random placed modern room;
			while M is nearby or M is in the location of the player or the location of M is an unplaced room:
				now M is in a random placed modern room;
		otherwise if the player is in the Mansion:
			now M is in a random placed haunted room;
			while M is nearby or M is in the location of the player or the location of M is an unplaced room:
				now M is in a random placed haunted room;
	otherwise:
		say "That probably wasn[']t a good idea, but luckily nothing seems to have come from it.".
Understand "hastur" as hastur.
	
Part 1 - Perception

To compute perception of (M - a mind flayer):
	now M is interested;
	say "The [M] notices you[if the player is sluttily dressed].[otherwise]![end if]";
	if the class of the player is living sex doll:
		say "It doesn't look like it's interested in you.";
		bore M for 500 seconds;
	otherwise:
		anger M.
		
To compute (M - a minotaur) stomping (N - a mind flayer):
	if M is in the location of the player, say "The [M] angrily glares and stamps at the [N], which looks shockingly nonplussed and crosses its spindly arms. As the [M] begins to charge, suddenly the [N] glares harshly and the mighty creature confusedly slams into a wall, head first. As it lays stunned on the ground, the [N] almost casually wraps its tentacles around the beast's head. It lets out a blood-curdling moo as the [N][']s tentacles push their way through its skull and gruesomely extract its brain!";
	otherwise say "You hear a blood-curdling moo from [if N is nearby]nearby![otherwise]somewhere in the dungeon![end if]";
	destroy M;
	let L be a random off-stage leftover;
	now L is in the location of N;
	now the leftover-type of L is the leftover-type of M.

To compute (M - a demon lord) stomping (N - a mind flayer):
	if M is in the location of the player, say "[M] growls at the [N], which seems to briefly consider its options before hurriedly backing away.";
	regionally place N;
	bore N.

Part 2 - Combat

To say MouthPenetrationFlav of (M - a mind flayer):
	if the raw intelligence of the player > 3:
		say "The creature tentatively sniffs at your forehead, then lets out an exultant shriek as it wraps its tentacles around your skull!";
	otherwise:
		say "The creature tentatively sniffs at your head, but its expression quickly shifts into one of disappointment. This in turn becomes a cruel smirk as it fixes a piercing gaze on you...".
		

To compute facial sex of (M - a mind flayer):
	if the raw intelligence of the player > 4:
		say "The creature[']s tentacles continue to suck on your head! You feel terribly light-headed but euphoric at the same time!";
		Intdown 1;
		arouse 50;
	otherwise if the raw intelligence of the player is 4:
		say "With a final squelching sound not unlike a straw struggling to pull the last drops of liquid from a cup, you feel the suction on your head come to a climax. The euphoria becomes so strong that so do you!";
		Intdown 2;
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
		
To compute (M - a mind flayer) entering mouth:
	say "[MouthPenetrationFlav of M]";
	if the raw intelligence of the player > 3:
		now the sex-length of M is 4;
		now the feeding of M is 1;
	otherwise:
		now the sex-length of M is 1;
		now the feeding of M is 0;
	now M is penetrating face.
	
To compute facial climax of (M - a mind flayer):
	if the raw intelligence of the player > 3 and the feeding of M is 1:
		say "The creature pulls away its tentacles from your head, seemingly satisfied for the moment.";
		bore M;
	otherwise if the feeding of M is 1:
		say "The creature pulls its tentacles away, seemingly satisfied for the moment.";
		bore M;
		let T be a random empty-mind tattoo;
		if there is a worn tattoo:
			say "As it pulls away, the word 'EMPTY' suddenly appears on your forehead!";
			summon T;
	otherwise:
		say "You aren[']t quite sure what happened while you were blacked out [if the bimbo of the player > 8]but you are quite concerned![otherwise].[end if]The creature, seemingly satisfied, haughtily walks away.";
		increase the domination of the player by 4;
		if the domination of the player > 40: [cap at an arbitrarily high number that we should never reach just to avoid a potential issue]
			now the domination of the player is 40;
		bore M.
		
Section 1 - Attack

The mind flayer attack rules is a rulebook. The attack rules of a mind flayer is usually the mind flayer attack rules.

This is the mind flayer psychic attack rule:
	let M be current-monster;
	if a random number between 1 and 3 < 3:
		say "The creature releases a wave of psychic force!";
		if (13 - a random number between 1 and the raw intelligence of the player) > 0:
			say "The force strikes you head on, and you feel a sudden wave of fatigue!";
			FatigueUp the difficulty of M;
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

The mind flayer priority attack rules is a rulebook. The priority attack rules of a mind flayer is usually the mind flayer priority attack rules.

This is the mind flayer sees a target rule:
	let M be current-monster;
	repeat with N running through monsters in the location of M:
		if N is woman and WomanBimbo < 6:
			if M is in the location of the player, say "The [M] sniffs at [N][']s head then stares heavily at her. Her eyes roll slightly back into her head and her mouth hangs open as she drops to her knees and presents her head to the creature, which wraps its tentacles around it. She moans euphorically as a horrible sucking sound fills the area, and after the creature withdraws its tentacles she wanders away, drooling, with unfocused eyes.";
			otherwise say "You hear a strange sucking sound from somewhere else.";
			WomanSluttify;
			Vanish N;
		otherwise if N is woman:
			if M is in the location of the player and the raw intelligence of the player > 3:
				say "The [M] sniffs briefly at [N][']s head and a look of disappointment crosses its face. It stares at her, irritated. After a moment it smirks, seemingly satisfied, and [N] wanders off rubbing her [vagina] and muttering about [manly-penis].";
				regionally place N;
				bore N;
			otherwise if M is in the location of the player:
				say "The [M] sniffs the air, then [N][']s head, then yours. It rolls its white eyes in brief annoyance before a broad, beaky grin crosses its face. It glares at you both, and both of you mindlessly drop to your knees. It stares at her for a moment and then smirks, seemingly satisfied, as [N] wanders off rubbing her [vagina] and muttering about [manly-penis]. Then it turns to you...";
				regionally place N;
				bore N;
				try kneeling.
The mind flayer sees a target rule is listed in the mind flayer priority attack rules.

Section 2 - Damage

To compute damage of (M - a mind flayer):
	if the health of M > 0:
		if M is uninterested:
			say "The creature seems to notice you.  Uh-oh...";
			now M is interested;
			anger M;
		otherwise:
			say DamageReaction (the health of M) of M;
	otherwise:
		compute death of M.

To say DamageReaction (N - a number) of (M - a mind flayer):
	if N > (the maxhealth of M / 4) * 3:
		say "The thing doesn't even flinch!";
	otherwise if N > (the maxhealth of M / 4) * 2:
		say "The creature doesn[']t seem to be looking quite at you, only slightly reacting to the hit.";
	otherwise if N > (the maxhealth of M / 4):
		say "The creature takes the hit, its expression remaining as hard to read as ever.";
	otherwise:
		say "The creature's expression grows frantic as it senses its life is in jeopardy!".
		
To compute unique death of (M - a mind flayer):
	say "The [noun] screams hideously as it collapses to the ground.  ";
	let B be a random off-stage severed-tentacle;
	if B is a thing:
		now B is in the location of the player;
		say "Its body disappears, leaving behind a [printed name of B].";
		compute autotaking B;
	otherwise:
		say "Its body disappears".


Mind Flayer ends here.
