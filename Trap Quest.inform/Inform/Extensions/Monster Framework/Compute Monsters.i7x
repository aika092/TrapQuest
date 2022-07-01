Compute Monsters by Monster Framework begins here.

[We only compute monsters in the region of the player, to reduce the lag in between turns.]
Definition: a monster is simulated:
	if it is interested or it is in the location of the player or it is regional, decide yes;
	decide no.

friendly-guys is a list of monsters that varies.

timedebug is a number that varies. timedebug is 0.

To compute monsters:
	now shocked-monsters is 0; [This is the variable that makes sure we don't spam the player with too much humiliation flavour if several monsters notice them at once]
	now aroused-monsters is 0;
	let L be the list of alive simulated monsters;
	if (a random number between 1 and combatSpeed) > 1 and the player is in danger:
		repeat with M running through L:
			if M is not interested and M is not in the location of the player, remove M from L;
	sort L in random order;
	repeat with M running through L:
		if debugmode > 1, say "Computing [M]...";
		increase the time-alive of M by seconds;
		if M is bride-consort and M is defeated and there is a worn cursed headgear:
			now the ceremony of betrothal-quest is true;
			progress quest of betrothal-quest;
		unless M is seeked or (M is stalled and (M is nearby or M is in the location of the player)): [Monsters that already got a chance to chase the player get no further action. If the player is moving slowly so monsters get a double move, monsters in the location of the player or nearby who aren't already chasing the player lose their first action.]
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
	if the wrangle-bonus of M > 0 and M is wrangling a body part: [NPC is currently wrangling, and it can end automatically]
		decrease the wrangle-bonus of M by 1;
		if the wrangle-bonus of M is 0:
			repeat with BP running through body parts wrangled by M:
				say "[BigNameDesc of M][']s hold on your [BP] [one of]loosens[or]momentarily slips[or]briefly weakens[at random], and you are able to [one of]wriggle[or]pull[or]ease[or]slide[at random] free!";
				now M is not wrangling BP;
	now M is not trip-warned;
	if M is seduced: [If the NPC got to its compute turn function, that means that the seduction failed (the NPC wasn't stalled) and we can exit the seduction minigame.]
		if M is interested, now M is seduction-refused;
		otherwise now M is unseduced;
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
			if M is interested and monster-engaged is 0, now N is 3; [The monster doesn't get an action if it detected the player in the perception round this turn.]
		if current-predicament is team-football-predicament and M is student and M is in a predicament room:
			unless N is 2, compute football movement of M; [football moves don't happen at the same time as the player moving, they happen later]
		otherwise if N < 3:
			compute action N of M.

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
	compute unique early action of M;[these actions need to happen even if the player isn't in the room]
	if the scared of M > 0 and M is not scarable, now the scared of M is 0;
	if the scared of M > 0 and M is not penetrating a body part:
		compute fleeing of M;
		if M is not in the location of the player and M is not nearby:
			decrease the scared of M by 25;
			if the scared of M <= 0:
				deinterest M;
				now the scared of M is 0;
	otherwise if M is interested:
		if M is in the location of the player or M is grabbing the player or M is penetrating a body part:
			if N is 1:
				if M is penetrating a body part or M is grabbing the player or M is attack-threatening:
					check aggression change of M; [Is this NPC aggressive this turn, when they weren't at the start of the turn?]
					check attack of M;
				otherwise if M is not distracted:
					if M is undefeated and M is friendly:
						compute friendly boredom of M; [Potentially make them bored]
						if M is not interested and playerRegion is not school and M is threatening and M is regional:
							progress quest of nice-quest;
						[otherwise if M is interested and M is undefeated:
							check disapproval of M;
							check aggression change of M;] [Is this NPC aggressive this turn, when they weren't at the start of the turn?]
					if M is interested, compute interaction of M; [If still interested, check if there's anything for them to do]
		otherwise:
			if M is unfriendly:
				check seeking N of M;
				if M is not in the location of the player, check chase boredom of M;
			otherwise:
				compute friendly boredom of M; [Potentially make them bored]
				if M is interested:
					check seeking N of M;
					if M is in the location of the player and M is undefeated:
						check disapproval of M;
						check aggression change of M; [Is this NPC aggressive this turn, when they weren't at the start of the turn?]
				otherwise:
					if playerRegion is not school and M is threatening and M is regional, progress quest of nice-quest;
	otherwise if M is guarding:
		compute guarding action of M;
	otherwise if M is not distracted and M is not caged and (M is undefeated or M is not motionless-when-defeated):
		if (the boredom of M is 0 and M is unleashed and M is location-attracted) or M is messy, check seeking N of M;
		otherwise check motion of M;
	if M is submission-assisting:[TODO: handle problem where assisters randomly lose interest]
		if M is not interested or M is not in the location of the player or the number of combative monsters in the location of the player is 0:
			now M is not submission-assisting;
	if debugmode > 1, say "[BigNameDesc of M] is in [location of M].";
	compute maybe donate dick to shop by M; [#LXorDD]
	compute unique final action of M.

Definition: a monster is location-attracted:
	if there is worn cowbelled clanking clothing or the player is glued seductively or magnetism-timer > 0 or there is worn bsounding clothing or there is a triggered cage trap in the location of the player, decide yes;
	decide no.

Definition: a monster is motionless-when-defeated:
	if it is fucked-silly, decide yes;
	decide no. [Most NPCs can continue moving around when enslaved, but not when fucked silly]

To check chase boredom of (M - a monster):
	check default chase boredom of M.

To check default chase boredom of (M - a monster):
	let D be 15; [Every turn the monster (after seeking) is not in the location of the player, there's a 1 in 15 chance of them getting bored.]
	if there is worn belled clothing, increase D by 30;
	if M is musky and the player is pheromonal, increase D by 15;[beast monsters follow you longer]
	if M is not in the location of the player and (M is guarding or M is caged or a random number from 1 to D is 1), compute chase boredom of M.

To compute chase boredom of (M - a monster):
	deinterest M;
	if M is not caged and playerRegion is not school and M is threatening and M is regional:
		say "You sense that [NameDesc of M] has [if M is survived]once again [end if]lost interest in chasing you.";
		progress quest of nice-quest;
		compute survival check of M.

To compute survival check of (M - a monster):
	if M is not survived:
		now M is survived;
		compute survival rewards.

To say BecomesBoredFlav of (M - a monster):
	say "[BigNameDesc of M] seems to get bored of following you around.".

[We can make this resolve to 'yes' and also output some text about what they get up to instead of taking their action.]
Definition: a monster is distracted: decide no.

Compute Monsters ends here.
