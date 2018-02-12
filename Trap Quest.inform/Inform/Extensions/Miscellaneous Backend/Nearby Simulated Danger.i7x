Nearby Simulated Danger by Miscellaneous Backend begins here.

[!<AThingIsNearby>+

REQUIRES COMMENTING

+!]
Definition: a thing (called M) is nearby:
	if M is monster:
		if M is not alive or M is captive, decide no;
	let L be the location of M;
	now neighbour finder is the location of the player;
	repeat with D running through N-viable directions:
		if the room D from the location of the player is L, decide yes;
	decide no. 

[!<ARoomIsNearby>+

REQUIRES COMMENTING

+!]
Definition: a room (called R) is nearby:
	repeat with M running through nearby monsters:
		decide yes;
	decide no.

[!<ARoomIsNextDoor>+

REQUIRES COMMENTING

+!]
Definition: a room (called R) is next door:
	repeat with D running through N-viable directions:
		if the room D from the location of the player is R, decide yes;
	decide no.

[!<DecideWhichDirectionIsTheNearbyDirectionOfMonster>+

REQUIRES COMMENTING

+!]
To decide which direction is the nearby-direction of (M - a monster):
	let L be the location of M;
	now neighbour finder is the location of the player;
	repeat with D running through N-viable directions:
		if the room D from the location of the player is L, decide on D.	

[!<ADirectionIsNearby>+

REQUIRES COMMENTING

+!]
Definition: a direction (called D) is nearby:
	repeat with M running through nearby monsters:
		if the nearby-direction of M is D, decide yes;
	decide no.

[!<AMonsterIsDangerous>+

REQUIRES COMMENTING

+!]
Definition: a monster (called M) is dangerous:
	if M is interested and M is unfriendly and M is released and the sleep of M is 0 and the boredom of M is 0 and the health of M > 0:
		if the scared of M is 0 or M is penetrating a body part:
			decide yes;
	decide no.

[!<YourselfIsInDanger>+

REQUIRES COMMENTING

+!]
Definition: yourself (called P) is in danger:
	if there is a dangerous monster in the location of the player, decide yes;
	decide no.

[!<TheDangerBlocksMasturbationRule>+

Only sluts can masturbate when they're about to get fucked. The rules for masturbating while being fucked are a little different, so we leave the check masturbation function to handle that.

+!]
This is the danger blocks masturbation rule:
	if the player is in danger and the raw sex addiction of the player < 12 and the player is not extremely horny and the number of monsters penetrating a body part is 0:
		if auto is 0, say "You're not [if the raw sex addiction of the player > 9]quite [end if]addicted to sex enough to masturbate in front of an unfriendly enemy!";
		rule fails.
The danger blocks masturbation rule is listed last in the masturbation restriction rules.

[!<YourselfIsInNearDanger>+

REQUIRES COMMENTING

+!]
Definition: a person (called P) is in near danger:
	if P is in danger or there is a dangerous nearby monster, decide yes;
	decide no.

[!<AThingIsRegional>+

REMEMBER YOU FUCKWAD, WHEN STORING A REGION IN A VARIABLE AS OPPOSED TO EXPLICITLY NAMING IT YOU MUST USE THE "regionally in" CONDITION RATHER THAN JUST "in" OR EVERYTHING BREAKS AND YOU WASTE HOURS TRYING TO DEBUG WTF IS GOING ON

+!]
Definition: a thing (called T) is regional:
	repeat with R running through regions:
		if T is regionally in R and the player is regionally in R, decide yes;
	decide no.


Nearby Simulated Danger ends here.

