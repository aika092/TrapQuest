Heel Skill by Player begins here.

Part 1 - Calculate Heel Skill


[!<DecideWhichNumberIsTheHeelSkillInfluenceOfThing>+

REQUIRES COMMENTING

+!]
To decide which number is the heel-skill-influence of (C - a thing):
	decide on 0.

[!<DecideWhichNumberIsTheHeelSkillInfluenceOfClothing>+

REQUIRES COMMENTING

+!]
To decide which number is the heel-skill-influence of (C - a clothing):
	if C is heel-skill-influencing:
		let S be 0;
		increase S by the magic-modifier of C;
		decide on S;
	decide on 0.

[!<DecideWhichNumberIsTheHeelSkillOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the heel skill of the player:
	let temp be the raw heel skill of the player;
	repeat with C running through worn wearthings:
		increase temp by the heel-skill-influence of C;
	if temp < 0, decide on 0;
	if temp > 10, decide on 10;
	decide on temp.

Part 2 - Modify Heel Skill


[!<Player>@<rawHeelSkill:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called raw heel skill. The raw heel skill of the player is usually 0. [Min 0 Max 10]

[!<Player>@<heelTime:Integer>*

Experience

*@!]
The player has a number called heel time. The heel time of the player is usually 0.


To decide which number is minHeelXP: [How much experience does it take to go up one level of heel skill]
	decide on 220.


[!<HeelUpX>+

REQUIRES COMMENTING

+!]
To HeelUp (X - a number):
	while X > 0:
		decrease X by 1;
		2HeelUp.

[!<2HeelUp>+

REQUIRES COMMENTING

+!]
To 2HeelUp:
	if the raw heel skill of the player is 1, say "[if the bimbo of the player < 4][line break][first custom style]Right so if I put this foot like this... wow, walking in heels is difficult.[otherwise][line break][second custom style]This is hard... I want to be better at walking in heels![end if][roman type][line break]";
	if the raw heel skill of the player is 3, say "[if the bimbo of the player < 5][line break][first custom style]Ahh, if I put the heel down first...[otherwise][line break][second custom style]I'm getting better at walking in these... yay![end if][roman type][line break]";
	if the raw heel skill of the player is 5, say "[if the bimbo of the player < 6][line break][first custom style]I could totally get used to walking in heels![otherwise][line break][second custom style]Walking in heels is fun![end if][roman type][line break]";
	if the raw heel skill of the player is 8, say "[if the bimbo of the player < 8][line break][first custom style]Okay now I can walk on my heels a bit too well for my liking...[otherwise][line break][second custom style]I can waltz around in heels almost perfectly![end if][roman type][line break]";
	let HMod be 0;
	if heel-module is worn, now HMod is the heel-skill-influence of heel-module; [The amount that the heel module contributes to heel skill kind-of counts as raw heel skill]
	if the raw heel skill of the player + HMod < 10:
		progress quest of heel-walking-quest;
		increase the raw heel skill of the player by 1;
		now heel time of the player is 0.


[!<HeelDownX>+

REQUIRES COMMENTING

+!]
To HeelDown (X - a number):
	while X > 0:
		decrease X by 1;
		2HeelDown.

[!<2HeelDown>+

REQUIRES COMMENTING

+!]
To 2HeelDown:
	if the raw heel skill of the player > 1, decrease the raw heel skill of the player by 1.


Heel Skill ends here.
