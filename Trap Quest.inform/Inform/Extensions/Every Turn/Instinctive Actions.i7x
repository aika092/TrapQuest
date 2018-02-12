Instinctive Actions by Every Turn begins here.


[!<ComputeInstinctiveactions>+

REQUIRES COMMENTING

+!]
To Compute Instinctive Actions:
	if another-turn is 0, follow the hypno triggers rules;
	now hypno-trigger is "";
	if another-turn is 0, Compute Compulsions;
	if the player is in Dungeon31 and another-turn is 0, compute podium action;
	if another-turn is 0, Compute Broken Actions.


[!<ComputeCompulsions>+

REQUIRES COMMENTING

+!]
To Compute Compulsions:
	if there is a carried throbbing-tentacle:
		let P be a random carried throbbing-tentacle;
		say "You feel the Master gently throbbing in your hands, so much smarter and more worthy than you. You reverently place him once again in front of your hole. [line break][first custom style]'It is good that you understand your place, slave. I will return now to my place of honour.'[roman type][line break]The Master once again worms its way into your [if the player is male][asshole][otherwise][vagina][end if]!";
		repeat with C running through worn top level protection clothing:
			destroy C;
		repeat with D running through worn clothing:
			if D is penetrating a fuckhole:
				destroy D;
		now P is worn by the player;
		if the player is male:
			now P is penetrating asshole;
		otherwise:
			now P is penetrating vagina;
		now another-turn is 1;
	otherwise if there is a throbbing-tentacle in the location of the player and the number of interested unfriendly monsters in the location of the player is 0:
		let P be a random throbbing-tentacle in the location of the player;
		say "You see the Master sitting, forlorn, on the ground. You find it so hard to think without him inside you, and you gently and reverently pick him up and place him once again in front of your hole. [line break][first custom style]'It is good that you understand your place, slave. I will return now to my place of honour.'[roman type][line break]The Master once again worms its way into your [if the player is male][asshole][otherwise][vagina][end if]!";
		repeat with C running through worn top level protection clothing:
			destroy C;
		repeat with D running through worn clothing:
			if D is penetrating a fuckhole:
				destroy D;
		now P is worn by the player;
		if the player is male:
			now P is penetrating asshole;
		otherwise:
			now P is penetrating vagina;
		now another-turn is 1;
	let V be a random cultist veil in the location of the player;
	if the humiliation of the player >= 40000 and V is actually summonable:
		say "You see a black veil and suddenly feel so ashamed that your worthless face is on display, as though you were a person and not simply a selection of holes to be used. You silently lift the veil over your face, as is proper.";
		now V is worn by the player;
		now another-turn is 1.
		
		
[!<ComputeBrokenActions>+

REQUIRES COMMENTING

+!]
To Compute Broken Actions:
	if the humiliation of the player >= 40000 and the player is prone and the player is not immobile and resting is 0 and busy is 0:
		if there is a willing to shag monster in the location of the player:
			let M be a random willing to shag monster in the location of the player;
			compute broken sex of M.

broken-present-cooldown is a number that varies.

[!<ComputeBrokenSexOfMonster>+

REQUIRES COMMENTING

+!]
To compute broken sex of (M - a monster):
	let B be nothing;
	if broken-present-cooldown <= 0:
		now auto is 1;
		now B is a random actually presentable orifice;
		now auto is 0;
		if B is not face and face is actually presentable and M is male and the player is craving and M is willing to do oral, now B is face;
		if the player is a butt slut and asshole is actually presentable and M is willing to do anal, now B is asshole;
		if the player is a pussy slut and vagina is actually presentable and M is willing to do vaginal, now B is vagina;
		if the player is a tit slut and M is male and M is willing to do titfucks and breasts are actually presentable, now B is breasts;
		if the sensitivity of breasts > 7 and there is a worn nipple chain and M is male and M is willing to do titfucks, now B is breasts;
	otherwise:
		decrease broken-present-cooldown by seconds;
	if B is body part and the sex addiction of the player > a random number between 10 and 18: [If it is nothing, this means there's no sex we can have right now.]
		if M is interested:
			say "Without a second thought, you crawl towards the [M].";
		otherwise:
			say "Without a second thought, you crawl towards the [M], gently stroking your head on [his of M] [if M is airborne]body[otherwise]leg[end if].";
			now M is interested;
		try direct-presenting B to M;
		now broken-present-cooldown is 120;
		now another-turn is 1;
	otherwise if M is dangerous:
		say "[one of][bold type]Now that you are on your knees, you remember your role as an object to be used and[or]You[stopping] can't bring yourself to fight back.[roman type][line break]";
		now another-turn is 1.


Instinctive Actions ends here.

