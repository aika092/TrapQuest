Eating by Actions begins here.

The can't eat unless edible rule is not listed in the check eating rulebook.
The standard eating rule is not listed in the carry out eating rulebook.
The standard report eating rule is not listed in the report eating rulebook.

[!<tQEating:Action>*

REQUIRES COMMENTING

*!]
TQeating is an action applying to one thing.

[!<ObjectIsTQEdible>+

REQUIRES COMMENTING

+!]
Definition: an object (called F) is TQedible:
	decide no.

[!<FoodIsTQEdible>+

REQUIRES COMMENTING

+!]
Definition: a food (called F) is TQedible:
	decide yes.

[!<CheckEating>+

REQUIRES COMMENTING

+!]	
Check eating:
	try TQeating the noun instead.

[!<CheckTQEatingSomething>+

REQUIRES COMMENTING

+!]
Check TQeating something:
	if the noun is bottle, try drinking instead;
	if there is a worn cursed ballgag and the player is not hungry, say "You can't get it past your [printed name of random worn ballgag]!" instead;
	[###Selkie: how's this, just for fun? Maybe track no. of times, and do some real magic if they persist? And/or move into a function and add, say, a 1 in 3 chance of holding the pill between your stumps without dropping it, and a 1 in 3 chance of dropping it correctly into your up-tilted face?]
	if the player is a living sex doll and the noun is pink pill:
		humiliate 500;
		now pink pill is in the location of the player; [###Selkie: Is this how we drop the pill, too?]
		say "[one of]It's really hard to aim the pink pill so it drops through the round opening of your [LipDesc], but you release it and pray for the best.  Maybe this will change you back? You hear the pill plonk and bounce around down the plastic tubing of your throat and gullet, sending weird tingles through you from each impact, like there might be some kind of magical effect trying to trigger - or misfire? It bounces and rattles inside your middle section several times, then *plinks* and plops around through your lower tubes, like a ball in a Pachinko parlour, before falling out from between your [AssDesc] and bouncing on the floor.   You stand, stunned for several seconds by the humiliation.[or]Once again you force your rubber neck to bend backwards and awkwardly raise your two rubber stumps over your face, trying to judge the angle, and let the pill drop.[line break]It bounces off your lips, and again there's a weird tingly feeling, then the pill rattles around inside you, falling through your tubing, and making the tingle inside intensify... Then plops about from between your [AssDesc] like a tiny rabbit-pellet. You blush![or]As you raise your stumpy doll hands above you, you feel yourself blushing with shame, but you don't let that stop you.  You release the pill, hoping that [italic type]this[roman type] time the magic will activate and return you to normal.[line break]Plop![line break]It didn't.[or]Surely the pill will activate sooner or later? You drop it in, it rattles around, then falls to the floor. Again. Rats![stopping]" instead;
	if the latex-transformation of the player > 4, say "You are no longer able to eat things." instead;
	if the player is not able to eat, say "You are currently unable to eat." instead;
	if the noun is egg, say "[variable custom style][if the bimbo of the player < 10]I'm not eating that, it came out of my own butt[otherwise]It looks delicious, but something is telling me that I shouldn't[end if]![roman type][line break]" instead;
	if the player is overly full and the stomach-food of the player > 2 and the noun is not pink pill:
		say "You are already feeling very full.  Are you sure you want to force even more down? [yesnolink] ";
		unless the player consents, do nothing instead;
	if the noun is pink pill, try PinkEating the noun instead;
	if the noun is fae mushroom, try MushroomEating the noun instead;
	if there is a dangerous monster in the location of the player, say "You are too busy fighting to eat that right now!" instead;
	unless the noun is TQedible, say "That is definitely inedible." instead.
	

Understand "swallow [something]", "consume [something]", "bite [something]", "unwrap [something]" , "mm [something]", "mmm [something]", "yum [something]" as TQeating.

[!<YourselfIsAbleToEat>+

REQUIRES COMMENTING

+!]
Definition: yourself is able to eat:
	repeat with T running through things penetrating face:
		if T is ballgag: [Uncursed ballgags or cursed ones while the player is hungry can be eaten past.]
			if T is cursed and the player is not hungry, decide no;
		otherwise:
			decide no;
	if the latex-transformation of the player > 4, decide no;
	if the player is not able to breathe, decide no;
	decide yes.


Eating ends here.
