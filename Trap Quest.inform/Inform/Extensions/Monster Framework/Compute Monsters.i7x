Compute Monsters by Monster Framework begins here.

[We only compute monsters in the region of the player, to reduce the lag in between turns.]
Definition: a monster is simulated if it is interested or it is in the location of the player or it is regional.

timedebug is a number that varies. timedebug is 0.

To compute monsters:
	now shocked-monsters is 0; [This is the variable that makes sure we don't spam the player with too much humiliation flavour if several monsters notice them at once]
	now aroused-monsters is 0;
	let L be the list of alive simulated monsters;
	sort L in random order;
	repeat with M running through L:
		if timedebug is 1, say "Computing [M].";
		if M is not seeked: [Monsters that already got a chance to chase the player get no further action.]
			if M is moved, compute turn 3 of M; [Monsters that already moved don't move again, but get a perception check.]
			otherwise compute turn 1 of M; [This is a full monster turn.]
	now shocked-monsters is 0;
	now aroused-monsters is 0;
	repeat with M running through alive dying monsters:
		finally destroy M.

To compute turn (N - a number) of (M - a monster):
	if debugmode > 1, say "Computing turn [N] of [M].";
	[If N is 1, this is a full action
	if N is 2, this is a passive action (no attacking or perception) because the player moved and we're just making NPCs move at the same time
	if N is 3, this is a stationary passive action (only perception) because it already moved (probably with the player with N = 2 above)]
	if M is friendly-fucking:
		if M is not grabbing the player and M is not penetrating a body part, now M is not friendly-fucking; [We need to make sure that NPCs have the friendly fucking flag removed after they've finished a session, and this is probably the most reliable way to do it, if a little messy.]
	if M is dying:
		finally destroy M;
	otherwise if M is awake:[Monsters can't do anything if they are sleeping]
		now current-monster is M; [Some functions care about which monster is current-monster]
		if (M is penetrating a body part or M is grabbing the player) and the player is not in a nonstandard room, now M is in the location of the player; [Just in case there's a glitch where the player remains stuck but can't interact with the monster because somehow it's in a different room]
		if M is in the location of the player or the player is in a nonstandard room, check immobility; [It's important that NPCs are aware whether the player is already immobile or not when deciding how to interact with the player]
		if N is not 2:
			let monster-engaged be 1;
			if M is uninterested, now monster-engaged is 0;
			check perception of M;
			if debugmode > 1, say "Finished checking perception.";
			if M is in the location of the player and M is undefeated and M is not penetrating a body part and M is not grabbing the player and M is friendly and (M is interested or N is 1):
				if debugmode > 1, say "Checking disapproval...";
				check disapproval of M;
			if M is interested and monster-engaged is 0, now N is 3; [The monster doesn't get an action if it detected the player in the perception round this turn.]
		if N < 3, compute action N of M.

[!<computeUniqueEarlyActionOfMonster>+

This function represents any action taken by a monster that either supersedes a normal movement/combat/sex action from a monster, or needs to happen before any other kind of action.

@param <Monster>:<M> The monster taking the action

+!]
To compute unique early action of (M - a monster):
	do nothing.

[!<computeUniqueFinalActionOfMonster>+

This function represents any action taken by a monster that should happen after movement/combat/sex actions.

@param <Monster>:<M> The monster taking the action

+!]
To compute unique final action of (M - a monster):
	do nothing.

To compute action (N - a number) of (M - a monster):
	[If N is 1, this is a full action
	if N is 2, this is a passive action (no attacking)]
	compute unique early action of M;
	if M is interested:
		if the scared of M > 0 and M is not penetrating a body part:
			compute fleeing of M;
			if a random number from 1 to 5 is 1 and M is not in the location of the player and M is not nearby:
				bore M for 100 seconds;
		otherwise if M is in the location of the player or M is grabbing the player or M is penetrating a body part:
			if N is 1:
				if M is penetrating a body part or M is grabbing the player or (M is unfriendly and M is threatening):
					check attack of M;
				otherwise if M is not distracted:
					if M is undefeated and M is friendly, compute friendly boredom of M; [Potentially make them bored]
					if M is interested, compute interaction of M; [If still interested, check if there's anything for them to do]
		otherwise:
			if M is unfriendly:
				check seeking N of M;
				if M is in the location of the player and M is uniquely unfriendly and M is normally annoyed, resolve sudden appearance change of M; [While the NPC isn't allowed a full perception round when moving, they should still output text for their automatic reassessment of the player if already interested.]
				otherwise check chase boredom of M;
			otherwise:
				compute friendly boredom of M; [Potentially make them bored]
				if M is interested:
					check seeking N of M;
					if M is in the location of the player and M is undefeated, check disapproval of M;
	otherwise if M is not distracted and M is not caged and M is not guarding and (M is undefeated or M is not motionless-when-defeated):
		if (the boredom of M is 0 and M is unleashed and (cowbell is clanking or the player is glued seductively)) or M is messy, check seeking N of M;
		otherwise check motion of M;
	compute unique final action of M.

Definition: a monster is motionless-when-defeated if it is fucked-silly. [Most NPCs can continue moving around when enslaved, but not when fucked silly.]

To check chase boredom of (M - a monster):
	if M is not in the location of the player and a random number from 1 to (15 + (30 * the number of worn catbells)) is 1:
		bore M for 0 seconds; [Every turn the monster (after seeking) is not in the location of the player, there's a 1 in 15 chance of them getting bored.]
		compute survival check of M.

To compute survival check of (M - a monster):
	if M is strangers:
		now M is survived;
		compute survival rewards.

To say BecomesBoredFlav of (M - a monster):
	say "[BigNameDesc of M] seems to get bored of following you around.".

[We can make this resolve to 'yes' and also output some text about what they get up to instead of taking their action.]
Definition: a monster is distracted: decide no.



Compute Monsters ends here.

