Squatting by Actions begins here.

[!<playerSquatting:Integer>*

We use this to tell other functions that the player's expulsion is voluntary.

*!]
player-squatting is a number that varies.

[!<publicSquattingLimit:Integer>*

If the humiliation of the player is below this, the player will refuse to expel in front of NPCs.

*!]
public-squatting-limit is a number that varies. public-squatting-limit is 30000.



[!<squatting:Action>*

REQUIRES COMMENTING

*!]
Squatting is an action applying to nothing.

[!<CheckSquatting>+

REQUIRES COMMENTING

+!]
Check squatting:
	if the semen addiction of the player > 16 and the semen volume of belly > 0, say "[variable custom style]There's no way I'm letting out my precious cum until I literally can't hold it in any longer![roman type][line break]" instead;
	if the total squirtable fill of belly <= 0, say "You don't have any liquid[if egg laying fetish is 1] or eggs[end if] in your belly." instead;
	if asshole is actually occupied, say "The [random thing penetrating asshole] is plugging your [asshole], so this will do nothing!" instead;
	if the latex-transformation of the player > 4, say "Your doll-like butthole's one way valve doesn't let you expel stuff on demand." instead; 
	if there is an enema-filling the player monster, say "You can't do that while the [random enema-filling the player monster] is still administering your enema!" instead;
	if the humiliation of the player < public-squatting-limit:
		if there is an intelligent awake monster in the location of the player and the diaper addiction of the player < 17:
			if debugmode > 0, say "If debug mode was disabled, the player would refuse.";
			otherwise say "[variable custom style]I can't bring myself to do that with people watching.[roman type][line break]" instead;
		otherwise if the player is in HoleInWall or the player is in Blindfolded:
			if debugmode > 0, say "If debug mode was disabled, the player would refuse.";
			otherwise say "[variable custom style]I can't bring myself to do that when I don't know who could be watching![roman type][line break]" instead;
	if the player is ass protected:
		let P be a random worn bottom level ass protection clothing;
		if P is not cursed:
			say "Do you really want to push the contents of your belly out into your [printed name of P]? [yesnolink] ";
			if the player consents, say "";
			otherwise say "Then you should probably [if P is displacable][bold type]displace[roman type] it[otherwise]get it out of the way[end if] first." instead;
	if the player is able to use a toilet and the location of the player is toilets:
		say "Did you mean to use the toilet? [yesnolink]";
		if the player consents:
			now seconds is 6;
			compute toilet use instead;
	if currently-squirting is 1, say "You're already expelling the contents of your belly!" instead.

[!<CarryOutSquatting>+

REQUIRES COMMENTING

+!]
Carry out squatting:
	now player-squatting is 1;
	now seconds is 6;
	say "[if the player is upright]You bend your knees to squat, with your [HipDesc] near the ground. [end if]You relax your sphincter's muscles and push.";
	if the latex-transformation of the player > 4:
		say "Nothing happens.";
	otherwise:
		humiliate 200;
		AssSquirt.
Understand "squat", "squat down", "poo", "poop", "expel", "expel enema", "expel creampie" as squatting.


Squatting ends here.

