Delicateness by Player begins here.

Part 1 - Calculate Delicateness

[!<DecideWhichNumberIsTheDelicatenessInfluenceOfWearThing>+

REQUIRES COMMENTING

+!]
To decide which number is the delicateness-influence of (C - a wearthing):
	decide on 0.

[!<DecideWhichNumberIsTheDelicatenessInfluenceOfClothing>+

REQUIRES COMMENTING

+!]
To decide which number is the delicateness-influence of (C - a clothing):
	if C is delicateness-influencing:
		let S be 0;
		decrease S by the magic-modifier of C; [Positive magic = subtracted delicateness]
		decide on S;
	decide on 0.

[!<DecideWhichNumberIsTheDelicatenessOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the delicateness of the player:
	if the player is a living sex doll, decide on 1;
	if the humiliation of the player >= 40000, decide on 20;
	let S be the raw delicateness of the player;
	if submissive sex addict is 1, increase S by 7;
	repeat with C running through worn wearthings:
		increase S by the delicateness-influence of C;
	if mindbreak protection is 1 and S > 16, decide on 16;
	if virgincursed > 0 and S < 8, decide on 8;
	if truffle-confidence-timer > 0, decrease S by 2;
	if S > 20, decide on 20;
	if S < 1, decide on 1;
	decide on S.


Part 2 - Modify Delicateness



[!<Player>@<rawDelicateness:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called raw delicateness.  The raw delicateness of the player is usually 1. [Min 1 Max 20]

[!<highestDelicateness:Integer>*

REQUIRES COMMENTING

*!]
highest delicateness is a number that varies.  highest delicateness is 0.

[!<painDuration:Integer>*

REQUIRES COMMENTING

*!]
pain-duration is a number that varies.

[!<DelicateUpX>+

REQUIRES COMMENTING

+!]
To DelicateUp (X - a number):
	let K be 0;
	repeat with C running through worn confidence clothing:
		if C is blessed, increase K by 1;
		increase K by 1;
	if X > 0, increase pain-duration by X;
	while X > 0:
		decrease X by 1;
		if a random number between 1 and 8 > K: [Sometimes confidence clothing stops delicateness increases]
			if the raw delicateness of the player < 20[ and a random number between 5 and 30 > the raw delicateness of the player]:
				if highest delicateness < the delicateness of the player and X is 0 or the delicateness of the player is 19 and the delicateness of the player > the sex addiction of the player: [We only want to output 1 thing from this list even if delicateness goes up multiple times]
					if the delicateness of the player is 1, say "[first custom style]Isn't this supposed to be a FUN game?![roman type][line break]";
					if the delicateness of the player is 2, say "[first custom style]Grr!  I won't let them break me![roman type][line break]";
					if the delicateness of the player is 3, say "[first custom style]I've got to stay strong[if there is an unfriendly monster in the location of the player], I can't let them see me back down[end if]![roman type][line break]";
					if the delicateness of the player is 4, say "[first custom style]Grrr![roman type][line break]";
					if the delicateness of the player is 5, say "[first custom style]I'm going to find whoever created this game and kill them![roman type][line break]";
					if the delicateness of the player is 6, say "[variable custom style][if the soreness of asshole > 6 and there is a thing penetrating asshole]My poor [asshole]!  How much more of this game am I expected to endure?![otherwise if the sex addiction of the player < 5 and diaper quest is 0]As long as I keep things away from my [asshole], I can endure anything this game throws at me.[otherwise if diaper lover > 0 and the diaper addiction of the player < 6]As long as I keep myself out of diapers as much as possible, I'm sure I can make it out of this game with some pride.[otherwise]Maybe relaxing and trying to enjoy whatever happens is the best way to survive down here.[end if][roman type][line break]";
					if the delicateness of the player is 7, say "[variable custom style]They are NOT going to make me cry!  Oh god, I'm going to cry aren't I?[roman type][line break]";
					if the delicateness of the player is 8, say "[variable custom style]Oh my god, if my friends could see me right now, they'd think I was being such a wimp.[roman type][line break]";
					if the delicateness of the player is 9, say "[variable custom style]I can't stop whimpering...  [if diaper lover >= 1]Maybe I deserve to wear diapers.[end if][roman type][line break]";
					if the delicateness of the player is 10, say "[variable custom style]I'm not strong enough to tolerate this much pain[if there is a monster in the location of the player].  If someone's bigger and stronger than me, I should probably just do what they say[end if]...[roman type][line break]";
					if the delicateness of the player is 11, say "[second custom style]Sometimes when things are tough I'm going to cry.  There's nothing wrong with that, right?[roman type][line break]";
					if the delicateness of the player is 12, say "[second custom style]If I'm obedient, hopefully people will treat me gently?[roman type][line break]";
					if the delicateness of the player is 13, say "[second custom style][if diaper lover >= 1]So what if I sometimes act like a bit of a baby?[otherwise]I'm not brave, but hey, not everyone is, right?[end if][roman type][line break]";
					if the delicateness of the player is 14, say "[second custom style]I need someone big and strong to protect me![roman type][line break]";
					if the delicateness of the player is 15, say "[second custom style][if diaper lover >= 1]I'm just a fragile little babygirl, why is everyone being so mean to me in this place?[otherwise if the player is a sissy]I'm just a fragile little sissy, why does everyone have to be so mean to me?[otherwise]I feel so small and fragile...[end if][roman type][line break]";
					if the delicateness of the player is 16, say "[second custom style]Won't anyone take GENTLE care of little me?![roman type][line break]";
					if the delicateness of the player is 17, say "[second custom style][if diaper lover >= 1]I'm so scared of getting hurt, I almost don't want to fight back at all...[end if][roman type][line break]";
					if the delicateness of the player is 18, say "[second custom style][if diaper lover >= 1 and there is a matron in the location of the player]Nana knows what's best for me.  I'll try to be a good girl for her.[otherwise if diaper lover >= 1]Waaa!  I want my Nana![otherwise]*sniff* I want my mummy.[end if][roman type][line break]";
					if the delicateness of the player is 19, say "[second custom style][if the bimbo of the player > 17][NameBimbo] deserve[otherwise]I deserve[end if][if there is a worn diaper] to be punished, I'm a very naughty nappied baby![otherwise if diaper lover >= 1] to be kept in nappies for ever and ever after this, I'm so naughty![otherwise] to be punished, I'm a bad girl.[end if][roman type][line break]";
				increase the raw delicateness of the player by 1;
	if highest delicateness < the delicateness of the player, now highest delicateness is the delicateness of the player.

[!<DelicateDownX>+

REQUIRES COMMENTING

+!]
To DelicateDown (X - a number):
	while X > 0:
		decrease X by 1;
		if the raw delicateness of the player > 1, decrease the raw delicateness of the player by 1.




Delicateness ends here.
