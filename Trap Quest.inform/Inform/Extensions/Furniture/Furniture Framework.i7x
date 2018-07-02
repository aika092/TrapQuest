Furniture Framework by Furniture begins here.

Furniture is a kind of thing. Furniture is not portable. Furniture has a magic-curse. The magic-curse of furniture is usually bland. Furniture can be permanent fixture. Furniture is usually not permanent fixture.

Report going when there is furniture in the location of the player and newbie tips is 1:
	say "[one of][item style]Newbie tip: There's an item of furniture in this room. Pay close attention to where these are - when you take physical damage from fights[if the body soreness of the player > 0] (for example you are hurt right now)[end if], you'll need to 'rest on' the furniture in order to heal up. However, when you do this, your exercise count will go back down to 0. While your exercise count is high, you'll sometimes [if weight gain fetish is 1]burn fat or [end if]gain strength or dexterity.[roman type][line break][or][stopping]".

Section 1 - Furniture Verb

Check entering furniture:
	if the latex-transformation of the player > 5 and the noun is not HotelBedPatrons and the noun is not hotel chairs and the noun is not modification machine, say "You don't need to rest on furniture as you have no body soreness to heal[if the noun is milking bench] and no [milk] in your breasts[end if]." instead;
	if the player is upset about mess, say "[variable custom style]There's no way I'm resting until I've [if the bimbo of the player < 10]got[otherwise]been[end if] changed.[roman type][line break]" instead;
	if the player is immobile, say "Aren't you a bit busy?" instead;
	if the fatigue of the player is 0 and the body soreness of the player is 0 and the noun is not modification machine and (the noun is not milking bench or the milk volume of breasts <= 0) and the noun is not lecture chair, say "You feel completely fine." instead;
	if the player is in danger, say "You need to deal with the [random dangerous monster in the location of the player] first!" instead;
	if the player is urine averse and the urine-puddle of the location of the player > 0 and the noun is not royal bed, say "[variable custom style]I'm not resting in this room with the smell of [urine] everywhere![roman type]" instead;
	if the noun is soggy hotel bed, say "[variable custom style]I'm not getting in those sheets again, they're soaked![roman type][line break]" instead;
	if the player is clothing stuck, say "You can't because your [a random worn stuck clothing] is stuck in place!" instead;
	if the noun is hammock:
		if there are revealed aggressive vines in the location of the player and the player is prone, say "You can't kneel on the hammock like that while these threatening vines are nearby!  Try standing first?" instead;
		say "Rest on the hammock until you feel completely better? [yesnolink] ";
		unless the player consents, say "You change your mind." instead;
	if the noun is milking bench:
		if the fatigue of the player is 0 and the body soreness of the player is 0 and the milk volume of breasts is 0, say "You feel completely fine and there is no [milk] in your breasts.";
		say "Kneel on the bench [if the fatigue of the player is 0 and the body soreness of the player is 0 and the milk volume of breasts > 0]to get your udders milked[otherwise]until you feel completely better[end if]?[if the location of the player is smoky][bold type]Remember, there is pink smoke in this room, which you will inevitably have to breathe for several rounds.[roman type][line break][end if][yesnolink] ";
		unless the player consents, say "You change your mind." instead;
	if the noun is kneeling stool:
		say "Kneel on the stool until you feel completely better?[if the location of the player is smoky][bold type]Remember, there is pink smoke in this room, which you will inevitably have to breathe for several rounds.[roman type][end if] [yesnolink] ";
		unless the player consents, say "You change your mind." instead;
	if the noun is dildo rocking stool:
		let F be asshole;
		if the player is female, now F is vagina;
		if the girth of the noun - the openness of F >= the sex addiction of the player / 2:
			if debugmode is 1, say "If debugmode was disabled, the player would refuse.";
			otherwise say "[variable custom style]There's no way I'm going to try and put that thing inside of me![roman type][line break]" instead;
		if the player is female and the player is pussy protected, say "You'd need to get your [ShortDesc of random top level protection clothing] out of the way first." instead;
		if the player is male and the player is ass protected, say "You'd need to get your [ShortDesc of random top level ass protection clothing] out of the way first." instead;
		if F is actually occupied, say "You'd need to get the [ShortDesc of random thing filling F] out of your [variable F] first." instead;
		say "Lower your [variable F] onto the large dildo and kneel on the stool until you feel completely better?[if the location of the player is smoky][bold type]Remember, there is pink smoke in this room, which you will inevitably have to breathe for several rounds.[roman type][end if] [yesnolink] ";
		unless the player consents, say "You change your mind." instead;
	if the noun is royal bed:
		if the body soreness of the player is 0 and the fatigue of the player is 0, say "You are uninjured, so this would do nothing." instead;
	if the noun is hotel bed or the noun is prison guard's bed:
		say "Rest on the bed until you feel completely better?[if the location of the player is smoky][bold type]Remember, there is pink smoke in this room, which you will inevitably have to breathe for several rounds.[roman type][end if] [yesnolink] ";
		unless the player consents, say "You change your mind." instead;
	if the noun is hotel chairs and diaper focus is 0:
		if the openness of asshole < the girth of the noun - 2, say "The dildos are just too large, there's no way you'd be able to get it in your [asshole]." instead;
		if asshole is actually occupied, say "You can't sit on this chair properly because the [random thing penetrating asshole] would be in the way of the golden dildo." instead;
		if the player is ass protected, say "You would need to get the [random worn top level protection clothing] out of the way first." instead;
	if the noun is modification machine:
		if the charge of the noun > 0:
			now seconds is 6;
			say "Nothing seems to happen." instead;
	if the noun is lecture chair:
		if the charge of the noun > 0:
			now seconds is 6;
			say "It seems like it isn[']t time for a lecture right now." instead;
	compute furniture resting on the noun;
	do nothing instead.
		
Understand "kneel on [something]", "kn on [something]", "sleep in [something]", "sl in [something]", "sl on [something]", "rest in [something]", "sleep on [something]", "lie on [something]", "rest on [something]", "re on [something]", "re in [something]", "nap on [something]", "recover on [something]", "lie in [something]", "sit on [something]" as entering.

[!<computeMonsterDetectionFurniture>+

This function should be run every turn the player is resting on a piece of furniture, so the player has a chance of noticing nearby monsters.

+!]
To compute monster detection:
	if the player is in near danger:
		if the player is in danger:
			let M be a random dangerous monster in the location of the player;
			if the alert of the player is 0:
				if the intelligence of the player < a random number between 5 and the body soreness of the player + 6, say "You are so comfortable that you can't bring yourself to stop resting!  ";
				otherwise now the alert of the player is 1;
		otherwise:
			let M be a random nearby dangerous monster;
			if the alert of the player is 0, say "You are so busy resting you don't notice [NameDesc of M] nearby!  ";
			if the alert of the player is 1, say "You spot a threatening looking [M] nearby!  ".

[!<computeFurnitureResting>+

This function is called whenever the player successfully "enters furniture". Usually, it should forward control directly to the computeNormalRest function

@param <Furniture>:<F> The furniture the player is going to be resting on

+!]
To compute furniture resting on (F - a furniture):
	compute normal rest of F.

[!<computeNormalRest>+

This function represents the effects of resting. The player loses any build-up of exercise points, has their stance set to kneeling, and the resting and alert flags are both set to 1. The game will first loop the computeFatigueRefresh function until the player is completed refreshed, then loop the computeSorenessRefresh until the player is healed. If alert is set to 1 at any time, resting is interrupted and computeFurnitureAlerting is run. Otherwise, we run FurnitureRestCompletion when the player is no longer tired. In either case, we finish up by running FurnitureRestEnding, which should contain any code that MUST be run when the player "gets out of bed"

@param <Furniture>:<F> The furniture the player is going to be resting on

+!]
To compute normal rest of (F - a furniture):
	now resting is 1;
	compute fat burning reset;
	now the stance of the player is 1;
	now the alert of the player is 0;
	while the fatigue of the player > 0 and the alert of the player is 0:
		compute fatigue refresh of F;
	while the body soreness of the player > 0 and the alert of the player is 0:
		compute soreness refresh of F;
	if the alert of the player is 1:
		compute alerting of F;
	otherwise:
		compute rest completion of F;
	now resting is 0;
	compute rest ending of F.

[!<computeFurnitureNormalEffect>+

This function runs computeMonsterDetectionFurniture, invokes computeExtraTurn, then calls the uniqueFurnitureNormalEffect function. This should be called once for every passage of time while the player is resting.

@param <Furniture>:<F> The furniture the player is resting on

+!]
To compute normal effect of (F - a furniture):
	compute extra turn;
	compute monster detection;
	compute unique normal effect of F.

[!<computeUniqueFurnitureNormalEffect>+

This function should be called whenever time passes when the player is resting.

@param <Furniture>:<F> The furniture the player is resting on

+!]
To compute unique normal effect of (F - a furniture):
	do nothing.

[!<sayFurnitureRestingDesc>+

Describes the player resting on F

@param <Furniture>:<F> The furniture the player is resting on

+!]
To say RestingDesc of (F - a furniture):
	say "You continue to rest on the [printed name of F].";

[!<computeFurnitureFatigueRefresh>+

Calls sayFurnitureRestingDesc, increments seconds by 4, then calls UniqueFurnitureFatigueEffect

@param <Furniture>:<F> The furniture the player is resting on

+!]
To compute fatigue refresh of (F - a furniture):
	say  "[RestingDesc of F]";
	now seconds is 4;
	compute unique fatigue effect of F;
	compute normal effect of F.

[!<computeUniqueFurnitureFatigueEffect>+

By default does nothing

@param <Furniture>:<F> The furniture the player is resting on

+!]
To compute unique fatigue effect of (F - a furniture):
	do nothing.

[!<computeFurnitureSorenessRefresh>+

Calls sayFurnitureRestingDesc, increments seconds by 6, calls UniqueFurnitureSorenessEffect, then heals the player for 1.

@param <Furniture>:<F> The furniture the player is resting on

+!]
To compute soreness refresh of (F - a furniture):
	say  "[RestingDesc of F]";
	now seconds is 6;
	compute unique soreness effect of F;
	BodyHeal 1;
	compute normal effect of F.

[!<computeUniqueFurnitureSorenessEffect>+

By default, does nothing

@param <Furniture>:<F> The furniture the player is resting on

+!]
To compute unique soreness effect of (F - a furniture):
	do nothing.
	

[!<computeFurnitureAlerting>+

This function is called whenever a nearby monster interrupts the player's resting. 

@param <Furniture>:<F> The furniture the player was resting on

+!]
To compute alerting of (F - a furniture):
	say "Your rest has been interrupted!";
	now resting is 0;
	now the alert of the player is 0.

[!<computeFurnitureRestCompletion>+

This function is called when the player finishes resting without being interrupted

@param <Furniture>:<F> The furniture the player was resting on

+!]
To compute rest completion of (F - a furniture):
	if the bimbo of the player < 11, say "[first custom style]I feel so much better![roman type][line break]";
	otherwise say "[second custom style]I'm full of energy again. Yum![roman type][line break]";
	now resting is 0;
	now auto is 1;
	try standing;
	now auto is 0.

[!<computeFurnitureRestCompletion>+

Called whenever the player stops resting, regardless of the reason why. Does nothing by default

@param <Furniture>:<F> The furniture the player was resting on

+!]
To compute rest ending of (F - a furniture):
	dislodge F.

Furniture Framework ends here.

