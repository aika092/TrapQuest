Furniture Framework by Furniture begins here.

Furniture is a kind of thing. Furniture is not portable. Furniture has a magic-curse. The magic-curse of furniture is usually bland. Furniture can be permanent fixture. Furniture is usually permanent fixture.

Report going when there is furniture in the location and newbie tips is 1:
	unless the player is in a predicament room, say "[one of][newbie style]Newbie tip: There's an item of furniture in this room. Pay close attention to where these are - when you take physical damage from fights[if the body soreness of the player > 0] (for example you are hurt right now)[end if], you'll need to 'rest on' the furniture in order to heal up. However, when you do this, your exercise count will go back down to 0. While your exercise count is high, you'll sometimes [if weight gain fetish is 1]burn fat or [end if]gain strength or dexterity.[roman type][line break][or][stopping]".

Section 1 - Furniture Verb

Check entering furniture:
	if the latex-transformation of the player > 5 and the noun is not HotelBedPatrons and the noun is not hotel chairs and the noun is not modification machine, say "You don't need to rest on furniture as you have no body soreness to heal[if the noun is milking bench] and no [milk] in your breasts[end if]." instead;
	if the noun is not grabbing the player:
		if the player is immobile, say "Aren't you a bit busy?" instead;
		[if the fatigue of the player is 0 and the body soreness of the player is 0 and the noun is not modification machine and (the noun is not milking bench or the milk volume of breasts <= 0) and the noun is not lecture chair and the noun is not med bay bed, say "You feel completely fine." instead;]
		if the player is in danger, say "You need to deal with the [random dangerous monster in the location of the player] first!" instead;
	if the player is urine averse and the urine-puddle of the location of the player > 0 and the noun is not royal bed and the noun is not automated changing station, say "[variable custom style]I'm not resting in this room with the smell of [urine] everywhere![roman type]" instead;
	if the noun is soggy hotel bed, say "[variable custom style]I'm not getting in those sheets again, they're soaked![roman type][line break]" instead;
	if the player is clothing stuck, say "You can't because your [a random worn stuck clothing] is stuck in place!" instead;
	if the player is upset about mess and the noun is not automated changing station:
		if diaper quest is 1 and the class of the player is priestess:
			say "[variable custom style]I guess as a disgusting 'diaper priestess', I have to stay messy even when I lie down to rest. Yuck...[roman type][line break]";
		otherwise:
			if the player is upset about sitting in mess, say "[variable custom style]There's no way I'm resting until I've [if the bimbo of the player < 10]got[otherwise]been[end if] changed.[roman type][line break]" instead;
			say "[variable custom style]There's no way I can rest with this awful smell.[roman type][line break]" instead;
	if player-breathing is false, say "You can't rest if you're holding your breath!" instead;
	if the noun is hammock:
		if there are revealed aggressive vines in the location of the player and the player is prone, say "You can't kneel on the hammock like that while these threatening vines are nearby! Try standing first?" instead;
		say "Rest on the hammock until you feel completely better? ";
		unless the player is in agreement, say "You change your mind." instead;
	if the noun is milking bench:
		if the fatigue of the player is 0 and the body soreness of the player is 0 and the milk volume of breasts is 0, say "You feel completely fine and there is no [milk] in your breasts.";
		say "Kneel on the bench [if the fatigue of the player is 0 and the body soreness of the player is 0 and the milk volume of breasts > 0]to get your udders milked[otherwise]until you feel completely better[end if]?[if the location of the player is smoky][bold type]Remember, there is pink smoke in this room, which you will inevitably have to breathe for several rounds.[roman type][line break][end if]";
		unless the player is in agreement, say "You change your mind." instead;
	if the noun is kneeling stool:
		say "Kneel on the stool until you feel completely better?[if the location of the player is smoky][bold type]Remember, there is pink smoke in this room, which you will inevitably have to breathe for several rounds.[roman type][end if] ";
		unless the player is in agreement, say "You change your mind." instead;
	if the noun is dildo rocking stool:
		let F be asshole;
		if the player is possessing a vagina, now F is vagina;
		if the insertableGirthAcceptance of F < the girth of the noun:
			if debugmode is 1, say "If debugmode was disabled, the player would be unable to fit it inside.";
			otherwise say "[variable custom style]There's no way I'm going to be able to fit that thing inside of me![roman type][line break]" instead;
		if the player is possessing a vagina and the player is pussy protected, say "You'd need to get your [ShortDesc of random top level protection clothing] out of the way first." instead;
		if the player is not possessing a vagina and the player is ass protected, say "You'd need to get your [ShortDesc of random top level ass protection clothing] out of the way first." instead;
		if F is actually occupied, say "You'd need to get the [ShortDesc of random thing filling F] out of your [variable F] first." instead;
		say "Lower your [variable F] onto the large dildo and kneel on the stool until you feel completely better?[if the location of the player is smoky][bold type]Remember, there is pink smoke in this room, which you will inevitably have to breathe for several rounds.[roman type][end if] ";
		unless the player is in agreement, say "You change your mind." instead;
	if the noun is royal bed:
		if the body soreness of the player is 0 and the fatigue of the player is 0, say "You are uninjured, so this would do nothing." instead;
	if the noun is hotel bed or the noun is prison guard's bed:
		repeat with M running through undefeated explorers in the location of the noun:
			if the explorer-bimbo of M >= 2:
				allocate 3 seconds;
				say "[BigNameDesc of M] blocks you.[line break][speech style of M]'Hey, this is my turf! Find your own room!'[roman type][line break]Looks like you won't be able to rest (or work) in [the location of M] while [he of M][']s stationed here." instead;
		say "Rest on the bed until you feel completely better?[if the location of the player is smoky][bold type]Remember, there is pink smoke in this room, which you will inevitably have to breathe for several rounds.[roman type][end if] ";
		unless the player is in agreement, say "You change your mind." instead;
	if the noun is hotel chairs and diaper focus is 0:
		if the insertableGirthAcceptance of asshole < the girth of the noun, say "The dildos are just too large, there's no way you'd be able to get it in your [asshole]." instead;
		if asshole is actually occupied, say "You can't sit on this chair properly because the [random thing penetrating asshole] would be in the way of the golden dildo." instead;
		if the player is ass protected, say "You would need to get the [random worn top level protection clothing] out of the way first." instead;
	if the noun is lecture chair:
		if the charge of the noun > 0 or timeBombTime > 0:
			allocate 6 seconds;
			say "It seems like it isn't time for a lecture right now." instead;
	if the noun is automated changing station:
		if the player is prone, say "You would need to be on two feet to use this." instead;
	if the noun is nursery crib and matron is in the location of the player and the number of worn diapers is 0:
		allocate 6 seconds;
		say "[BigNameDesc of matron] shakes [his of matron] head.[line break][speech style of matron]'I can't allow you to rest in there without a diaper on, sweetheart. Would you like a diaper?'[roman type][line break]";
		if the player is bimbo consenting:
			compute diaper change of matron instead;
		otherwise:
			say "[BigNameDesc of matron] blocks your path to the crib." instead;
	compute furniture resting on the noun;
	do nothing instead.

Understand "kneel on [something]", "kn on [something]", "sleep in [something]", "sl in [something]", "sl on [something]", "rest in [something]", "sleep on [something]", "lie on [something]", "rest on [something]", "re on [something]", "re in [something]", "nap on [something]", "recover on [something]", "lie in [something]", "sit on [something]" as entering.

[!<computeMonsterDetectionFurniture>+

This function should be run every turn the player is resting on a piece of furniture, so the player has a chance of noticing nearby monsters.

+!]
To compute monster detection:
	if the player is in danger or there is a dangerous nearby monster:
		if the player is in danger:
			let M be a random dangerous monster in the location of the player;
			if the alert of the player is 0:
				if the intelligence of the player < a random number between 5 and the body soreness of the player + 6, say "You are so comfortable that you can't bring yourself to stop resting! ";
				otherwise now the alert of the player is 1;
		otherwise:
			let M be a random nearby dangerous monster;
			if the alert of the player is 0, say "You are so busy resting you don't notice [NameDesc of M] nearby! ";
			if the alert of the player is 1, say "You spot a threatening looking [M] nearby! ".

[!<computeFurnitureResting>+

This function is called whenever the player successfully "enters furniture". Usually, it should forward control directly to the computeNormalRest function

@param <Furniture>:<F> The furniture the player is going to be resting on

+!]
To compute furniture resting on (F - a furniture):
	compute normal rest of F.

[!<computeNormalRest>+

This function represents the effects of resting. The player loses any build-up of exercise points, has their stance set to kneeling, and the resting and alert flags are both set to 1. The game will first loop the computeFatigueRefresh function until the player is completed refreshed, then loop the computeSorenessRefresh until the player is healed. If alert is set to 1 at any time, player-currently-resting is interrupted and computeFurnitureAlerting is run. Otherwise, we run FurnitureRestCompletion when the player is no longer tired. In either case, we finish up by running FurnitureRestEnding, which should contain any code that MUST be run when the player "gets out of bed"

@param <Furniture>:<F> The furniture the player is going to be resting on

+!]
To compute normal rest of (F - a furniture):
	now player-currently-resting is 1;
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
	now player-currently-resting is 0;
	compute rest ending of F.

[!<computeCrappyRest>+

This function represents the effects of resting on a really uncomfortable piece of furniture. The effect is the same as a normal rest, but fatigue and soreness are only recovered up to half.

@param <Furniture>:<F> The furniture the player is going to be resting on

+!]
To compute crappy rest of (F - a furniture):
	now player-currently-resting is 1;
	compute fat burning reset;
	now the stance of the player is 1;
	now the alert of the player is 0;
	while the fatigue of the player > (the buckle threshold of the player / 2) and the alert of the player is 0:
		compute fatigue refresh of F;
	while the body soreness of the player > 5 and the alert of the player is 0:
		compute soreness refresh of F;
	if the alert of the player is 1:
		compute alerting of F;
	otherwise:
		compute rest completion of F;
	now player-currently-resting is 0;
	compute rest ending of F.

[!<computeFurnitureNormalEffect>+

This function runs computeMonsterDetectionFurniture, invokes computeExtraTurn, then calls the uniqueFurnitureNormalEffect function. This should be called once for every passage of time while the player is resting.

@param <Furniture>:<F> The furniture the player is resting on

+!]
To compute normal effect of (F - a furniture):
	check regular humiliating situation;
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
	say RestingDesc of F;
	allocate 4 seconds;
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
	say RestingDesc of F;
	allocate 6 seconds;
	if debuginfo > 0, say "[input-style]Body damage [body soreness of the player] -> ";
	compute unique soreness effect of F;
	BodyHeal 1;
	if debuginfo > 0, say "[body soreness of the player][roman type][line break]";
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
	now player-currently-resting is 0;
	now the alert of the player is 0.

[!<computeFurnitureRestCompletion>+

This function is called when the player finishes resting without being interrupted

@param <Furniture>:<F> The furniture the player was resting on

+!]
To compute rest completion of (F - a furniture):
	say RestCompleteFlav of F;
	now player-currently-resting is 0;
	now auto is 1;
	try standing;
	now auto is 0.

To say RestCompleteFlav of (F - a furniture):
	if the bimbo of the player < 11, say "[first custom style]I feel so much better![roman type][line break]";
	otherwise say "[second custom style]I'm full of energy again. Yum![roman type][line break]".

[!<computeFurnitureRestCompletion>+

Called whenever the player stops resting, regardless of the reason why. Does nothing by default

@param <Furniture>:<F> The furniture the player was resting on

+!]
To compute rest ending of (F - a furniture):
	dislodge F.

an automated changing station is a kind of furniture. The printed name of an automated changing station is "[TQlink of item described]automated changing station[TQxlink of item described][if inline hyperlinks >= 2][link][bracket]use[close bracket][as]sit on [text-shortcut of item described][end link][end if]". The text-shortcut of an automated changing station is "acs". Understand "automated" as an automated changing station.
public changing station is an automated changing station.
[private changing station is an automated changing station.]
hotel changing station is an automated changing station.
Figure of automated changing station is the file "Env/MultiFloor/changingstation1.jpg".
Figure of automated changing station tank empty is the file "Env/MultiFloor/changingstation2.jpg".
Figure of automated changing station tank full is the file "Env/MultiFloor/changingstation3.jpg".
Figure of automated changing station tank messy is the file "Env/MultiFloor/changingstation4.jpg".
To decide which figure-name is the examine-image of (G - an automated changing station):
	decide on figure of automated changing station.
To decide which figure-name is the examine-image of (G - hotel changing station):
	if the changing-station-tank-scene of woman-player > 0, decide on figure of automated changing station;
	if the changing-station-tank-scene of woman-player < 0, decide on figure of automated changing station tank empty;
	if diaper messing >= 6, decide on figure of automated changing station tank messy;
	decide on figure of automated changing station tank full.

To say ExamineDesc of (G - an automated changing station):
	say "An adult-sized capsule about the size and shape of a shower cubicle stands on one wall here. A box of disposable diapers sits secured at the base, and a pair of wristcuffs dangles from the top - it seems that it is an automated diaper changing station, seemingly ready to change the diaper of anyone who locks themselves in it.[if the player is in a predicament room][one of][line break][variable custom style]This was placed here by whatever forces put me in this predicament, wasn't it.[roman type][line break][or][stopping][end if]";
	if G is hotel changing station, say "The [']exhaust['] of the machine is connected to a large transparent tank by a wide translucent tube. It would appear that the machine dumps excess used diapers into this container. The base of the container acts as its lid, with a hinge on one side, and a rope connected to a pulley on the ceiling and then tied to a hook on the nearby wall, [if the changing-station-tank-scene of woman-player > 0]or at least it normally is. Right now, [NameDesc of woman-player] is holding it shut with [his of woman-player] sheer strength. If [he of woman-player] releases [his of woman-player] grip even a little bit, [otherwise]holding it closed for now. One could open the lid by loosening the knot on the rope at the wall, but then [end if]all the diapers would immediately fall down, thanks to gravity.[if the changing-station-tank-scene of woman-player < 0][line break]Or at least they would, if the container wasn't currently empty.[end if]".

To compute furniture resting on (G - an automated changing station):
	allocate 6 seconds;
	if G is hotel changing station, cutshow figure of automated changing station for G;
	if auto is 0, say "You enter the automated changing station and close the door. You push your wrists into the cuffs above your head. ";
	let diaperChangeAllowed be 1;
	let K be a random worn knickers;
	if K is knickers:
		repeat with C running through worn clothing:
			if the bottom-layer of C > the bottom-layer of K:
				now diaperChangeAllowed is 0;
				say "Nothing happens. Perhaps the robots don't know how to get past [NameDesc of C].";
		if diaperChangeAllowed is 1:
			if K is locked:
				now diaperChangeAllowed is 0;
				say "Nothing happens. Perhaps the robots don't have a way to deal with the lock.";
		if diaperChangeAllowed is 1:
			if K is glue:
				now diaperChangeAllowed is 0;
				say "Nothing happens. Perhaps the robots don't have a way to deal with the glue.";
	if diaperChangeAllowed is 1:
		if there is a worn currently uncovered diaper and plain-largish-diaper is off-stage and plain-largish-diaper is DQBulkier and the player is getting unlucky:
			say "Instead of first removing your old diaper, the robotic arms just immediately begin to add the new diaper on top.[line break][second custom style]'ERROR, ERROR, ERROR. DIAPER MISALIGNED. APPLYING SEALANT.'[roman type][line break]A polite female robotic voice speaks loudly and calmly from a speaker above you. Then robotic arms ending in nozzles descend, forcing their way underneath your layers of padding, to apply glue to each layer.";
			DiaperAdd plain-largish-diaper;
			gluify diaper-stack;
			repeat with D running through the list of stacked diapers:
				gluify D;
			say "When the wristcuffs release you and the door opens, you are now wearing a [diaper-stack].";
		otherwise:
			let D be plain-largish-diaper;
			if K is knickers:
				fully clean K;
				if D is not K, silently transform K into D;
			otherwise:
				summon D uncursed;
			if the player is in a predicament room, now D is predicament-temporary;
			say "The wristcuffs constrict themselves until you are locked in place. Robotic arms immediately get to work [if K is knickers]removing your [ShortDesc of K] [end if][if K is dirty knickers]and wiping you down [end if]";
			if the player is not in a predicament room and the player is getting unlucky:
				say "and... huh?! It seems the robotic arms have decided to do something else before putting a new diaper on you!";
				let R be a random number between 1 and 3;
				if R is 1 and asshole is not actually occupied:
					say "You feel your [asshole] being invaded by an enema nozzle![line break][variable custom style]Uh-oh.[roman type][line break]There's absolutely nothing you can do as your belly is turned into a container for a pint of ice-cold water!";
					AssFill 10 water;
				otherwise if R is 2 and the player is able to orgasm:
					say "A vibrating wand is pressed against your [genitals]! Your arousal quickly goes through the roof as the powerful toy works its magic. You [if the player is not a pervert]hold off for as long as you can but [end if]soon find yourself reaching a shuddering climax!";
					now player-fucking is DOMINANT-DOMINANT; [prevents ejaculation from being handled]
					vaginally orgasm shamefully;
					now player-fucking is DOMINANT-NONE;
				otherwise:
					say "You feel a prick in your side as one of the arms injects you with a needle. What was that?! You feel all... numb... inside. Like you can't feel your bladder?! It seems like [bold type]the changing station has just rendered you temporarily incontinent.[roman type][line break]";
					increase temporary-bladder-incontinence by 2;
				say "[GotUnluckyFlav][line break]At least the arms seem to be finished with their fun for now. The claws reach down for a clean diaper ";
			say "and before you know it you are wearing a dry [MediumDesc of D]! The wristcuffs release you and the door opens.";
			force clothing-focus redraw;
			if K is diaper, DiaperAddictUp 1;
			trigger change-wisp-trigger.

Check pulling hotel changing station:
	if the changing-station-tank-scene of woman-player > 0, try pulling woman-player instead;
	if the changing-station-tank-scene of woman-player < 0, say "It's already empty." instead;
	if the player is immobile or the player is in danger, say "You're a bit busy!" instead;
	if the player is prone, say "You can't do that while on your knees." instead;
	say "Are you sure you want to loosen the rope and open the container?";
	if the player is consenting:
		allocate 6 seconds;
		release changing station diapers on the player;
		now the changing-station-tank-scene of woman-player is -10000;
		do nothing instead.

To release changing station diapers:
	let soiled-diapers-saved be 0;
	repeat with SD running through off-stage soiled-diapers:
		if soiled-diapers-saved < 2:
			increase soiled-diapers-saved by 1;
		otherwise:
			now SD is in the location of hotel changing station;
			now the diaper-origin of SD is "disposable diaper".

To release changing station diapers on the player:
	release changing station diapers;
	if diaper messing is 6:
		say "A cascade of foul, stinky, messy diapers falls to the ground right beside you.";
		SmellGrossOut messyDiaperSmellGrossnessLevel;
	otherwise:
		say "You are half-buried in a cascade of [if diaper messing > 6]foul, stinky, messy[otherwise]soggy used[end if] diapers.";
		if diaper messing >= 7, SmellGrossOut messyDiaperFacesitGrossnessLevel;
		otherwise SmellGrossOut wetDiaperFacesitGrossnessLevel.

Furniture Framework ends here.
