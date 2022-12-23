Mind Flayer by Monster begins here.

mind flayer is a monster. mind flayer is neuter. Understand "mindflayer" as mind flayer.

mind flayer has a number called feeding. mind flayer has a number called alreadyspawned. mind flayer has a number called domination.

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
	add severed-tentacle to the banishItems of M, if absent;
	repeat with N running from 1 to 3:
		let T be a random off-stage sanity token;
		if T is a thing, add T to the banishItems of M, if absent;
	let T be a random off-stage plentiful accessory;
	add T to the banishItems of M, if absent;
	now the raw difficulty of M is the starting difficulty of M;
	now the health of M is the maxhealth of M;
	anger M.

To decide which number is the starting difficulty of (M - mind flayer):
	decide on 15.
To decide which number is the grossness of (M - mind flayer): [grossness addiction needed to tolerate it]
	decide on 6.

To check mindflayerquest:
	if alreadyspawned of mind flayer is 0 and diaper quest is 0:
		set up mind flayer;
		if playerRegion is Woods:
			summon mind flayer in the woods;
		otherwise if playerRegion is Mansion:
			summon mind flayer in the mansion;
		otherwise if playerRegion is Hotel:
			summon mind flayer in the hotel;
		otherwise:
			summon mind flayer in the dungeon.

hastur is an action applying to nothing.
Carry out hastur:
	if the player is a top donator:
		check mindflayerquest;
	otherwise:
		say "That probably wasn't a good idea, but luckily nothing seems to have come from it.".
Understand "hastur" as hastur.

A later time based rule (this is the mindflayer quest of mind flayer rule):
	if alreadyspawned of mind flayer is 0 and mind flayer is alive:
		say "You hear a very quiet muttering from just behind your ear, even though nobody is there.[line break][second custom style]'Did [he of the player] just... [big he of the player][']s not supposed to be able to do that! Quick, do something! I don't know, send in the flayer! Screw protocol, just do it!'[roman type][line break]You then hear a strange tapping sound, and suddenly a much louder voice rings out as though from a PA system![line break][second custom style]'Testing, testing. Is this thing on? Hello, testers! It appears a monster from a not-yet-implemented area has inadvertently been introduced into the live test area. We're not really sure how this happened, but this does highlight the importance of your job as testers. We don't seem to be able to despawn it ourselves, if one of you could be a dear and destroy it so we can analyse its data we would really appreciate it.[roman type][line break]";
		now alreadyspawned of mind flayer is 1;
	if alreadyspawned of mind flayer is 1 and mind flayer is permanently banished:
		say "The PA system comes alive again.[line break][second custom style]'Oh wonderful. Nintendolls thanks you for your contribution to the completion of this testing phase! The standard bug bounty has been credited to your winnings, how lucky for you! Oh, and if it dropped anything feel free to keep it, it's an item from later in the game so it's probably pretty powerful.'[roman type][line break]";
		now alreadyspawned of mind flayer is 2.

A time based rule (this is the mindflayer domination rule):
	if the domination of mind flayer > 0:[Revised Mind Flayer Domination Attack, starts by checking for domination at all]
		if domination-time - (a random number between the domination of mind flayer and 40) < 0:
			decrease the domination of mind flayer by 1;
			now domination-time is 30;
			if (a random number between 1 and 3 < 3) and (the arousal of the player < maximum arousal / 2):
				say "Swirling images of sex begin to fill your mind, and you hear a voice in your head![line break][first custom style]'Your holes burn to be filled.'[roman type][line break]You are so aroused you could burst!";
				now the arousal of the player is maximum arousal;
			otherwise if the location of the player is smoky and the largeness of breasts < max breast size:
				say "You see images of yourself with incredible breasts, and you hear a voice in your head![line break][first custom style]'Breathe deep and become the [whore] you know yourself to be.'[roman type][line break]You fall to your knees!";
				try silently kneeling;
			otherwise if (a random number between 1 and 3 < 3) and (the raw oral sex addiction of the player < 10):
				say "Images of erect penises fill your mind, and you hear a voice in your head![line break][first custom style]'You hunger to taste the prize inside of us.'[roman type][line break]";
				OralSexAddictUp 1;
			otherwise if (a random number between 1 and 2 < 3) and (the humiliation of the player < 40000):
				say "You see images of yourself mindlessly complying as men use every part of your body, and you hear a voice in your head![line break][first custom style]'A man chooses, an object obeys.'[roman type][line break]You feel less and less like a person!";
				humiliate 400;
			otherwise:
				say "Images of erect penises fill your mind, and you hear a voice in your head![line break][first custom style]'Put us in you and revel in serving us.'[roman type][line break]You feel a sudden strange longing to fill your holes with [manly-penis]!";
				OrificeAddictUp 1;
		otherwise:
			decrease domination-time by 1.


Part 1 - Perception

To compute perception of (M - mind flayer):
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]";
	if the class of the player is living sex doll:
		say "It doesn't look like [he of M]'s interested in you.";
		bore M;
	otherwise:
		alwayscutshow figure of mindflayer cutscene 1 for M;
		anger M.

To compute (M - a minotaur) stomping (N - mind flayer):
	if M is in the location of the player, say "[BigNameDesc of M] angrily glares and stamps at the [N], which looks shockingly nonplussed and crosses [his of N] spindly arms. As [NameDesc of M] begins to charge, suddenly the [N] glares harshly and the mighty creature confusedly slams into a wall, head first. As [he of M] lays stunned on the ground, the [N] almost casually wraps [his of N] tentacles around the beast's head. [big he of M] lets out a blood-curdling moo as the [N][']s tentacles push their way through [his of M] skull and gruesomely extract [his of M] brain!";
	otherwise say "You hear a blood-curdling moo from [if N is nearby]nearby![otherwise]somewhere in the dungeon![end if]";
	destroy M;
	let L be a random off-stage leftover;
	now L is in the location of N;
	now the leftover-type of L is the leftover-type of M.

To compute (M - a demon lord) stomping (N - mind flayer):
	if M is in the location of the player, say "[M] growls at the [N], which seems to briefly consider [his of N] options before hurriedly backing away.";
	regionally place N;
	bore N.

Part 2 - Combat

To say MouthPenetrationFlav of (M - mind flayer):
	if the raw intelligence of the player > 3:
		say "The creature tentatively sniffs at your forehead, then lets out an exultant shriek as [he of M] wraps [his of M] tentacles around your skull!";
	otherwise:
		say "The creature tentatively sniffs at your head, but [his of M] expression quickly shifts into one of disappointment. This in turn becomes a cruel smirk as [he of M] fixes a piercing gaze on you...".

To compute facial sex of (M - mind flayer):
	if the raw intelligence of the player > 4:
		say "The creature's tentacles continue to suck on your head! You feel terribly light-headed but euphoric at the same time!";
		IntDown 1;
		stimulate face from M;
		cutshow figure of mindflayer cutscene 3 for M;
	otherwise if the raw intelligence of the player is 4:
		say "With a final squelching sound not unlike a straw struggling to pull the last drops of liquid from a cup, you feel the suction on your head come to a climax. The euphoria becomes so strong that so do you!";
		IntDown 2;
		cutshow figure of mindflayer cutscene 4 for M;
		if the player is able to get horny:
			if the player is possessing a penis, penis orgasm shamefully;
			otherwise vaginally orgasm shamefully;
		now the sex-length of M is 0;
	otherwise:
		say "The creature's gaze fills what little mind you have, and you feel yourself go blank!";
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
		say "The creature pulls away [his of M] tentacles from your head, seemingly satisfied for the moment.";
		bore M;
		cutshow figure of mindflayer cutscene 5 for M;
	otherwise if the feeding of M is 1:
		say "The creature pulls [his of M] tentacles away, seemingly satisfied for the moment.";
		bore M;
		cutshow figure of mindflayer cutscene 6 for M;
		if there is a worn tattoo and empty-mind tattoo is not worn:
			say "As it pulls away, the word 'EMPTY' suddenly appears on your forehead!";
			summon empty-mind tattoo;
	otherwise:
		say "You aren't quite sure what happened while you were blacked out [if the bimbo of the player > 8]but you are quite concerned![otherwise].[end if]The creature, seemingly satisfied, haughtily walks away.";
		increase the domination of mind flayer by 4;
		if the domination of mind flayer > 40, now the domination of mind flayer is 40; [cap at an arbitrarily high number that we should never reach just to avoid a potential issue]
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
		say "You feel the creature bear all [his of M] will down on you!";
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
		if N is woman and the woman-bimbo of woman-player < 6:
			if M is in the location of the player, say "[BigNameDesc of M] sniffs at [N][']s head then stares heavily at [him of N]. [big his of N] eyes roll slightly back into [his of N] head and [his of N] mouth hangs open as [he of N] drops to [his of N] knees and presents [his of N] head to the creature, which wraps [his of M] tentacles around it. [big he of N] moans euphorically as a horrible sucking sound fills the area, and after the creature withdraws [his of M] tentacles [he of N] wanders away, drooling, with unfocused eyes.";
			otherwise say "You hear a strange sucking sound from somewhere else.";
			WomanSluttify;
			Vanish N;
		otherwise if N is woman:
			if M is in the location of the player and the raw intelligence of the player > 3:
				say "[BigNameDesc of M] sniffs briefly at [N][']s head and a look of disappointment crosses [his of M] face. [big he of M] stares at [him of N], irritated. After a moment [he of M] smirks, seemingly satisfied, and [N] wanders off rubbing [his of N] [vagina] and muttering about [manly-penis].";
				regionally place N;
				bore N;
			otherwise if M is in the location of the player:
				say "[BigNameDesc of M] sniffs the air, then [N][']s head, then yours. [big he of M] rolls [his of M] white eyes in brief annoyance before a broad, beaky grin crosses [his of M] face. It glares at you both, and both of you mindlessly drop to your knees. [big he of M] stares at [him of N] for a moment and then smirks, seemingly satisfied, as [N] wanders off rubbing [his of N] [vagina] and muttering about [manly-penis]. Then [he of M] turns to you...";
				regionally place N;
				bore N;
				try kneeling.
The mind flayer sees a target rule is listed in the mind flayer priority attack rules.

Section 2 - Damage

To say CombatProvokedReaction of (M - mind flayer):
	say "The creature seems to notice you. Uh-oh...".

To say DamageReactHealthy of (M - mind flayer):
	say "The thing doesn't even flinch!".

To say DamageReactDamaged of (M - mind flayer):
	say "The creature doesn't seem to be looking quite at you, only slightly reacting to the hit.".

To say DamageReactTired of (M - mind flayer):
	say "The creature takes the hit, [his of M] expression remaining as hard to read as ever.".

To say DamageReactWeak of (M - mind flayer):
	say "The creature's expression grows frantic as [he of M] senses [his of M] life might be in jeopardy!".

To compute unique banishment of (M - mind flayer):
	check tentacle clear.

Mind Flayer ends here.
