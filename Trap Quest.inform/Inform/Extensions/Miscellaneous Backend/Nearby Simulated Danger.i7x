Nearby Simulated Danger by Miscellaneous Backend begins here.

['nearby' does not care about monsters, it's finding all rooms. If it is checking a monster, then it does not include pacified monsters.]
Definition: a thing (called M) is nearby:
	if M is monster and (M is not alive or M is pacified or M is dying), decide no;
	let L be the location of M;
	repeat with D running through the Nviables of the location of the player:
		if the room D from the location of the player is L, decide yes;
	decide no.
Definition: a room (called R) is nearby: [Synonymous with 'next door' which is more linguistically intuitive]
	if R is next door, decide yes;
	decide no.
Definition: a room (called R) is next door:
	let L be the location of the player;
	repeat with D running through the Nviables of R:
		if the room D from R is L:
			if R is School33: [Gotta hack this because it's an unrevealed pathway until later]
				let DD be the opposite-direction of D;
				if the room DD from L is R, decide yes;
				decide no;
			otherwise:
				decide yes;
	decide no.
Definition: a room (called R) is within vision: [next door or right here]
	if R is the location of the player or R is next door, decide yes;
	decide no.
Definition: a thing (called M) is within vision: [next door or right here]
	if M is in the location of the player or M is nearby, decide yes;
	decide no.

Definition: a monster is not-dying:
	if it is dying, decide no;
	decide yes.

[This only cares about places with monsters, but it does allow for monsters that are pacified]
Definition: a monster (called M) is monster-nearby:
	if M is off-stage or M is dying, decide no;
	let L be the location of M;
	repeat with D running through the Nviables of L:
		if the room D from the location of the player is L, decide yes;
	decide no.
Definition: a room (called R) is monster-present:
	if there is a not-dying monster in R, decide yes;
	decide no.
Definition: a room (called R) is monster-nearby:
	repeat with M running through monsters in R:
		if M is not dying:
			if R is nearby, decide yes;
			decide no;
	decide no.
Definition: a direction (called D) is monster-nearby:
	if D is listed in the Nviables of the location of the player:
		let L be the room D from the location of the player;
		repeat with M running through monsters in L:
			if M is not dying, decide yes;
	decide no.

Definition: a room (called R) is room-monster-nearby:
	repeat with D running through the Nviables of R:
		if the room D from R is monster-present, decide yes;
	decide no.


[!<AMonsterIsDangerous>+

Ready to fight the player, or already fighting / fucking.

+!]
Definition: a monster (called M) is dangerous:
	if M is interested and M is not dying and M is threatening and M is awake[ and the boredom of M is 0 and the health of M > 0] and M is unfriendly and M is not submission-assisting:
		if the scared of M is 0 or M is not scarable or M is penetrating a body part:
			decide yes;
	decide no.

[unused]
[Definition: a monster (called M) is not-dangerous:
	if M is dangerous, decide no;
	decide yes.]

[!<AMonsterIsCombative>+

Fighting the player or already fucking the player.

+!]
Definition: a monster is combative:
	if it is in the location of the player and it is dangerous, decide yes;
	decide no.


Definition: yourself is in danger:
	if there is a combative monster, decide yes;
	decide no.

[!<TheDangerBlocksMasturbationRule>+

Only sluts can masturbate when they're about to get fucked. The rules for masturbating while being fucked are a little different, so we leave the check masturbation function to handle that.

+!]
This is the danger blocks masturbation rule:
	if the player is in danger and the raw sex addiction of the player < 12 and the player is not extremely horny and the number of monsters penetrating a body part is 0:
		if auto is 0, say "You're not [if the raw sex addiction of the player > 9]quite [end if]addicted to sex enough to masturbate in front of an unfriendly enemy!";
		rule fails.
The danger blocks masturbation rule is listed last in the global masturbation restriction rules.

[!<AThingIsRegional>+

REMEMBER YOU FUCKWAD, WHEN STORING A REGION IN A VARIABLE AS OPPOSED TO EXPLICITLY NAMING IT YOU MUST USE THE "regionally in" CONDITION RATHER THAN JUST "in" OR EVERYTHING BREAKS AND YOU WASTE HOURS TRYING TO DEBUG WTF IS GOING ON

+!]
Definition: a thing is regional:
	if it is regionally in playerRegion, decide yes;
	decide no.
Definition: a thing is nonregional:
	if it is regional, decide no;
	decide yes.
Definition: a room is regional:
	if it is regionally in playerRegion, decide yes;
	decide no.
Definition: a room is nonregional:
	if it is regional, decide no;
	decide yes.

playerRegion is a region that varies. playerRegion is Dungeon.
noRegion is a region.
To decide which region is the currentRegion of (T - a thing):
	repeat with R running through regions:
		if T is regionally in R, decide on R;
	decide on noRegion.
Definition: a region is loaded: decide no.
Definition: Dungeon is loaded: decide yes.
Definition: School is loaded: decide yes.
Definition: Woods is loaded:
	if Woods01 is placed, decide yes;
	decide no.
Definition: Hotel is loaded:
	if Hotel01 is placed, decide yes;
	decide no.
Definition: Mansion is loaded:
	if Mansion01 is placed, decide yes;
	decide no.
Definition: a thing (called T) is loaded:
	if the currentRegion of T is loaded, decide yes;
	decide no.
To update player region:
	let R be the currentRegion of the player;
	if R is not noRegion, now playerRegion is R.

Nearby Simulated Danger ends here.
