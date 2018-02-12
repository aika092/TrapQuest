Attacking Monsters by Monster Framework begins here.

The block attacking rule is not listed in the check attacking rulebook.

[!<attackType:Integer>*

REQUIRES COMMENTING

*!]
attack-type is a number that varies. attack-type is usually 0.
[
0 - Start of game
1 - Slap
2 - Knee
3 - Kick
]

Part 1 - Ability to attack

[!<autoattack:Integer>*

REQUIRES COMMENTING

*!]
autoattack is a number that varies.

[!<autoslap:Integer>*

REQUIRES COMMENTING

*!]
autoslap is a number that varies. autoslap is 1.

[!<autoknee:Integer>*

REQUIRES COMMENTING

*!]
autoknee is a number that varies. autoknee is 1.

[!<autokick:Integer>*

REQUIRES COMMENTING

*!]
autokick is a number that varies. autokick is 1.

[!<abilityToSlapRules:Rulebook>*

REQUIRES COMMENTING

*!]
The ability to slap rules is a rulebook.

[!<abilityToKickRules:Rulebook>*

REQUIRES COMMENTING

*!]
The ability to knee rules is a rulebook.

[!<abilityToKickRules:Rulebook>*

REQUIRES COMMENTING

*!]
The ability to kick rules is a rulebook.

[!<YourselfIsAbleToSlap>+

This definition performs two checks:
The first check only runs if the player is trying to slap automatically, and returns a value based on the value of "autoslap". This is so that we only calculate whether the player can automatically slap a maximum of once per turn.
The second check goes through each of the rules in the ability to slap rulebook, and sets autoslap to -1 if any of those rules failed. Otherwise, sets autoslap to -1.

@return <Boolean> returns true if autoslap is 1, otherwise returns false

+!]
Definition: yourself is able to slap:
	if autoattack is 1 and autoslap is not 0:
		now autoattack is 0;
		if autoslap is 1, decide yes;
		if autoslap is -1, decide no;
	follow the ability to slap rules;
	if the rule failed:
		now autoslap is -1;
		now autoattack is 0;
		decide no;
	now autoslap is 1;
	now autoattack is 0;
	decide yes.

[!<YourselfIsAbleToKnee>+

This definition performs two checks:
The first check only runs if the player is trying to knee automatically, and returns a value based on the value of "autoknee". This is so that we only calculate whether the player can automatically knee a maximum of once per turn.
The second check goes through each of the rules in the ability to knee rulebook, and sets autoknee to -1 if any of those rules failed. Otherwise, sets autoknee to -1.

@return <Boolean> returns true if autoknee is 1, otherwise returns false

+!]
Definition: yourself is able to knee:
	if autoattack is 1 and autoknee is not 0:
		now autoattack is 0;
		if autoknee is 1, decide yes;
		if autoknee is -1, decide no;
	follow the ability to knee rules;
	if the rule failed:
		now autoknee is -1;
		now autoattack is 0;
		decide no;
	now autoknee is 1;
	now autoattack is 0;
	decide yes.

[!<YourselfIsAbleToKnee>+

This definition performs two checks:
The first check only runs if the player is trying to kick automatically, and returns a value based on the value of "autokick". This is so that we only calculate whether the player can automatically kick a maximum of once per turn.
The second check goes through each of the rules in the ability to kick rulebook, and sets autokick to -1 if any of those rules failed. Otherwise, sets autokick to -1.

@return <Boolean> returns true if autokick is 1, otherwise returns false

+!]
Definition: yourself is able to kick:
	if autoattack is 1 and autokick is not 0:
		now autoattack is 0;
		if autokick is 1, decide yes;
		if autokick is -1, decide no;
	follow the ability to kick rules;
	if the rule failed:
		now autokick is -1;
		now autoattack is 0;
		decide no;
	now autokick is 1;
	now autoattack is 0;
	decide yes.

[!<ThePlayerCanNotAttackWhenFlyingRule>+

This rule causes an attack to fail when the player is flying. If the player is attacking manually, outputs a brief message explaining why.

+!]
This is the player can't attack when flying rule:
	if the player is flying:
		if autoattack is 0, say "You aren't even on the ground!";
		rule fails.

The player can't attack when flying rule is listed in the ability to slap rules.
The player can't attack when flying rule is listed in the ability to knee rules.
The player can't attack when flying rule is listed in the ability to kick rules.

[!<ThePlayerCanNotAttackWhenProneRule>+

This rule causes an attack to fail when the player is prone. If the player is attacking manually, outputs a brief message explaining why.

+!]
This is the player can't attack when prone rule:
	if the player is prone:
		if autoattack is 0, say "You need to stand up first.";
		rule fails.

The player can't attack when prone rule is listed in the ability to slap rules.
The player can't attack when prone rule is listed in the ability to knee rules.
The player can't attack when prone rule is listed in the ability to kick rules.

[!<ThePlayerCanNotAttackWhenImmobileRule>+

The rule causes a knee or a kick to fail when the player is immobile. If the player is attacking manually, outputs a brief message explaining why.

+!]
This is the player can't attack when immobile rule:
	if the player is immobile:
		if autoattack is 0, say "You're a bit immobile right now to be trying to attack anything!";
		rule fails.

The player can't attack when immobile rule is listed in the ability to knee rules.
The player can't attack when immobile rule is listed in the ability to kick rules.

[!<ThePlayerCanNotSlapWhenImmobileRule>+

The rule causes a slap to fail when the player is immobile, except when restrained by vines. If the player is attacking manually, outputs a brief message explaining why.

+!]

This is the player can't attack when immobile except vines rule:
	if the player is immobile and the number of vines grabbing the player is 0:
		if autoattack is 0, say "You're a bit immobile right now to be trying to attack anything!";
		rule fails.
The player can't attack when immobile except vines rule is listed in the ability to slap rules.

[!<ThePlayerCanNotAttackWhenExtremelyHornyRule>+

This rule causes an attack to fail when the player is extremely horny, as defined by the ThingIsExtremelyHorny definition. If the player is attacking manually, outputs a message explaining why the attack failed

+!]
This is the player can't attack when extremely horny rule:
	if the player is extremely horny:
		if autoattack is 0, say "Your mind is too busy thinking about how you could get off.";
		rule fails.

The player can't attack when extremely horny rule is listed in the ability to slap rules.
The player can't attack when extremely horny rule is listed in the ability to knee rules.
The player can't attack when extremely horny rule is listed in the ability to kick rules.

[!<ThePlayerCanNotAttackWithFakeNailsRule>+

This rule causes a slap to fail if the player is wearing unblessed fake nails. If the player is attacking manually, outputs a message explaining why the slap failed.

+!]
This is the player can't attack with fake nails rule:
	repeat with N running through worn fake nails:
		unless N is blessed:
			if autoattack is 0, say "You're too worried about breaking a nail to do that!";
			rule fails.

The player can't attack with fake nails rule is listed in the ability to slap rules.

[!<ThePlayerCanNotAttackWhenBoundBehindRule>+

This rule causes a slap to fail if the player is wearing a wrist bond with its "bound-behind" flag set to true. If the player is attacking manually, outputs a message explaining why the slap failed.

+!]
This is the player can't attack when bound behind rule:
	if the player is wrist bound behind:
		if autoattack is 0, say "You can't do that with your wrists bound behind you!";
		rule fails.
The player can't attack when bound behind rule is listed in the ability to slap rules.

[!<ThePlayerCanNotAttackWithMessRule>+

This rule causes a knee or a kick to fail if the player is wearing a messy diaper. If the player is attacking manually, outputs a message explaining why the attack failed.

+!]
This is the player can't attack with mess rule:
	if the player is upset about mess:
		if autoattack is 0, say "You can't bring yourself to do that whilst wearing a squishy messy diaper!";
		rule fails.

The player can't attack with mess rule is listed in the ability to knee rules.
The player can't attack with mess rule is listed in the ability to kick rules.

[!<ThePlayerCanNotAttackWithAnkleBondageRule>+

This rule causes a knee or a kick to fail if the player is wearing an ankle bond. If the player is attacking manually, outputs a message explaining why the attack failed.

+!]
This is the player can't attack with ankle bondage rule:
	if the player is ankle bound:
		if autoattack is 0, say "You can't raise your knee whilst bound at the ankles!";
		rule fails.

The player can't attack with ankle bondage rule is listed in the ability to knee rules.
The player can't attack with ankle bondage rule is listed in the ability to kick rules.

[!<ThePlayerCanNotAttackWithDisplacedTrousersRule>+

This rule causes a knee or a kick to fail if the player is wearing displaced trousers. If the player is attacking manually, outputs a message explaining why the attack failed.

+!]
This is the player can't attack with displaced trousers rule:
	if there is worn crotch-displaced trousers:
		if autoattack is 0, say "You can't raise your knee whilst your [random worn crotch-displaced trousers] are pulled down!";
		rule fails.

The player can't attack with displaced trousers rule is listed in the ability to knee rules.
The player can't attack with displaced trousers rule is listed in the ability to kick rules.

[!<ThePlayerCanNotKneeWithHobbleSkirtRule>+

This rule causes a knee to fail if the player is wearing a hobble-skirted clothing that has not been displaced. If the player is attacking manually, outputs a message explaining why the knee failed.

+!]
This is the player can't knee with hobble skirt rule:
	repeat with C running through worn crotch-in-place hobble-skirted clothing:
		if autoattack is 0:
			say "You can't raise your knee whilst sporting a hobble skirt!";
			now focused-thing is C;
		if the player is upright and the player is in danger, now focused-thing is C; [This way the player can conveniently hike it]
		rule fails.
The player can't knee with hobble skirt rule is listed in the ability to knee rules.

[!<ThePlayerCanNotKickWithKneesRule>+

This rule causes a kick to fail if the player is wearing a knee-length or hobble-skirted clothing that has not been displaced. If the player is attacking manually, outputs a message explaining why the kick failed.

+!]
This is the player can't kick with knees rule:
	repeat with C running through worn knee-length or longer clothing:
		if [C is hobble-skirted and ]C is crotch-in-place and C is not slitted:
			if autoattack is 0:
				say "You can't raise your knee like that whilst sporting a long skirt!";
				now focused-thing is C;
			if the player is upright and the player is in danger, now focused-thing is C; [This way the player can conveniently hike it]
			rule fails.
The player can't kick with knees rule is listed in the ability to kick rules.

[!<ThePlayerCanNotAttackWithStuckShoesRule>+

This rule causes a knee or a kick to fail if the player is wearing shoes with the "stuck" flag set to true. If the player is attacking manually, outputs a message explaining why the attack failed.

+!]
This is the player can't attack with stuck shoes rule:
	if there is worn stuck shoes:
		if autoattack is 0, say "Your shoes are stuck to the floor!";
		rule fails.

The player can't attack with stuck shoes rule is listed in the ability to knee rules.
The player can't attack with stuck shoes rule is listed in the ability to kick rules.

[!<YourselfIsAbleToAutomaticallySlap>+

This definition sets the "autoattack" variable to 1, and passes control to the YourselfIsAbleToSlap
definition
@return <Boolean> returns the result of the YourselfIsAbleToSlap definition

+!]
Definition: yourself is able to automatically slap:
	now autoattack is 1;
	if the player is able to slap, decide yes;
	decide no.

[!<YourselfIsAbleToAutomaticallyKnee>+

This definition sets the "autoattack" variable to 1, and passes control to the YourselfIsAbleToKnee
definition
@return <Boolean> returns the result of the YourselfIsAbleToKnee definition

+!]
Definition: yourself is able to automatically knee:
	now autoattack is 1;
	if the player is able to knee, decide yes;
	decide no.

[!<YourselfIsAbleToAutomaticallyKick>+

This definition sets the "autoattack" variable to 1, and passes control to the YourselfIsAbleToKick
definition
@return <Boolean> returns the result of the YourselfIsAbleToKick definition

+!]
Definition: yourself is able to automatically kick:
	now autoattack is 1;
	if the player is able to kick, decide yes;
	decide no.

Part 2 - Attacking Actions

Include Attacking by Actions.
Include Slapping by Actions.
Include Kneeing by Actions.
Include Kicking by Actions.

Part 3 - Automatic Surrender

[!<MonsterIsIntimidating>+

REQUIRES COMMENTING

+!]
Definition: a monster (called M) is intimidating:
	if the delicateness of the player < 15, decide no;
	if M is uninterested or M is friendly, decide no;
	if the health of M < the maxhealth of M, decide no;
	let R be a random number between 10 and the delicateness of the player;
	if debugmode is 1, say "Surrender check of [R] | [15 - (the difficulty of M / 8)].";
	if R > 15 - (the difficulty of M / 8), decide yes;
	decide no.

[!<surrendered:Integer>*

REQUIRES COMMENTING

*!]
surrendered is a number that varies.

[!<ComputeSurrenderToMonster>+

REQUIRES COMMENTING

+!]
To compute surrender to (M - a monster):
	let N be a random intelligent dangerous monster in the location of the player;
	say "You consider attacking the [M], but then your [if the humiliation of the player >= 40000]desire to be used as an object[otherwise]fear of pain[end if] gets the better of you. You find yourself dropping to your knees. [if N is monster and M is not intelligent][SurrenderFlav of N][otherwise][SurrenderFlav of M][end if]";
	now surrendered is 1;
	try kneeling.

[!<SaySurrenderFlavOfMonster>+

REQUIRES COMMENTING

+!]
To say SurrenderFlav of (M - a monster):
	if M is intelligent:
		if the player is able to speak:
			if the humiliation of the player >= 40000, say "[variable custom style]'[one of]Please use my body to your heart's desire.'[or]I understand my place.'[or]I am yours to use. Please do not show me any mercy.'[in random order][roman type][line break]";
			otherwise say "[variable custom style]'[one of]Do what you want with me, just please don't be rough!'[or]I'll do whatever you say, just please don't hurt me!'[or]You're the boss... just please be kind to me!'[or]I'm delicate, please don't break me!'[or]I'm just a poor weakling, please show me mercy!'[in random order][roman type][line break]";
	if the player is able to use their hands, say "You [if the humiliation of the player >= 40000]put your hands on the back of your head[otherwise]raise your hands above your head[end if] as a sign of [if the humiliation of the player >= 40000]your status as a powerless object[otherwise][one of]surrender[or]submission[at random][end if][if M is not intelligent and the humiliation of the player < 40000], unsure if the [M] even understands your actions[end if].".


Part 4 - Damage Calculation


[!<combatBonus:Integer>*

REQUIRES COMMENTING

*!]
combat bonus is a number that varies.

[!<DecideWhichNumberIsCombatScaling>+

REQUIRES COMMENTING

+!]
To decide which number is combat scaling:
	decide on 6. [This number allows for easy balance changes to damage. The higher this number is, the less of an impact strength will have on damage.]

[!<combatBonusRemainder:Integer>*

REQUIRES COMMENTING

*!]
combat bonus remainder is a number that varies.

[Once per turn, we decide what the player's next attack strength will be. This is done so that estimation of average damage in the verb above is consistent.]
[!<TheCombatBonusRule>+

REQUIRES COMMENTING

+!]
A time based rule (this is the combat bonus rule):
	let N be the flat strength of the player / combat scaling;
	let N2 be the remainder after dividing the strength of the player by combat scaling;
	if a random number between 1 and combat scaling <= N2:
		increase N by 1;
		now combat bonus remainder is 1;
	otherwise:
		now combat bonus remainder is 0;
	if the player is breasts blinded, decrease N by 2;
	now combat bonus is N.


[!<DecideWhichNumberIsTheDamageModifierOfThing>+

REQUIRES COMMENTING

+!]
To decide which number is the damage modifier of (T - a thing): [Check for any bonus or reduced damage they are dealt]
	decide on 0.

[!<ComputeSlayingBonusOfThing>+

REQUIRES COMMENTING

+!]
To compute slaying bonus of (T - a thing):
	do nothing.

[!<ComputeSlayingBonusOfMonster>+

REQUIRES COMMENTING

+!]
To compute slaying bonus of (M - a monster):
	if a random number between 0 and (20 - the delicateness of the player) < the difficulty of M and the delicateness of the player > 1:
		say "Your self-confidence has grown!";
		if the delicateness of the player > 20 - the difficulty of M, DelicateDown 1;
		DelicateDown 1.

[!<ComputeDamageOfMonster>+

REQUIRES COMMENTING

+!]
To compute damage of (M - a monster):
	if the health of M > 0:
		say DamageReaction (the health of M) of M;
		now M is interested;
		anger M;
		now the boredom of M is 0;
	otherwise:
		say "The [noun] drops slowly to the ground defeated, and disappears."; 
		compute death of the noun.

[!<SayDamageReactionOfMonster>+

REQUIRES COMMENTING

+!]
To say DamageReaction (N - a number) of (M - a monster):
	if N > (the maxhealth of M / 4) * 3:
		say "The [noun] easily takes the hit!";
	otherwise if N > (the maxhealth of M / 4) * 2:
		say "The [noun] flinches, taking the hit!";
	otherwise if N > (the maxhealth of M / 4):
		say "The [noun] takes the hit, staggering!";
	otherwise:
		say "The [noun] takes the hit, fighting to maintain [his of M] balance!";

[!<SayDamageFlavourOfNumberOnMonster>+

REQUIRES COMMENTING

+!]
To say damage-flavour of (N - a number) on (M - a monster):
	if N is 0:
		say "You're pretty sure that did nothing at all.";
	otherwise if N is 1:
		say "That felt extremely weak, you doubt it hurt much at all.";
	otherwise if N < 3:
		say "That felt quite weak, but hopefully it hurt a bit.";
	otherwise if N < 6:
		say "The [M] definitely felt that. A respectable hit!";
	otherwise if N < 9:
		say "The [M] visibly recoils from the hit. A [if critical is 1][bold type]critical hit[roman type][otherwise]strong hit[end if]!";
	otherwise if N < 13:
		say "Wow, you felt that connect with incredible force. A super strong [if critical is 1][bold type]critical hit[roman type][otherwise]hit[end if]!";
	otherwise:
		say "POW!  Your attack is accompanied by a loud sound. An almost impossibly strong [if critical is 1][bold type]critical hit[roman type][otherwise]hit[end if]!";

[!<critical:Integer>*

REQUIRES COMMENTING

*!]
Critical is a number that varies. Critical is 0. [Flag whether the attack counts as a critical]

[!<attackDamage:Integer>*

REQUIRES COMMENTING

*!]
Attack-damage is a number that varies.

[!<DamageOnMonster>+

REQUIRES COMMENTING

+!]
To damage (A - a number) on (M - a monster):
	now seconds is 6;
	[Roll for damage - essentially 2dX]
	now attack-damage is (a random number between 1 and A) + (a random number between 1 and A);
	if debugmode is 1, say "Rolled [attack-damage].";
	now critical is 0;
	[Held items have some damage bonus or reduction rules]
	repeat with T running through worn clothing:
		increase attack-damage by the damage modifier of T;
	[Minimum damage is 1]
	if attack-damage < 1, now attack-damage is 1;
	[Balancing attempt]
	if a random number between -3 and 4 > attack-damage, increase attack-damage by 1;
	[Specific Monsters can add or subtract damage]
	increase attack-damage by the damage modifier of M;
	[Damage calculation over, deal damage now.]	
	decrease the health of M by attack-damage;
	if the health of M > 0:
		say "[Damage-flavour of attack-damage on M]";
	otherwise:
		increase the fat-burning of the player by 20 * the difficulty of M; [Your exercise count is massively rewarded by defeating a monster. Not relevant to the other clause but putting it here because why not.]
	if debugmode is 1, say "After final monster and clothing specific changes, player deals [attack-damage] damage, [M] has [the health of M] HP left.";
	[Just in case it doesn't happen in the monster's damage function - everything should be unfriendly after you attack it.]
	anger M;
	reset orifice selection of M;
	now the boredom of M is 0;
	[Call the damage function of the monster]
	if attack-damage > 0:
		compute damage of M;
	otherwise if the health of M < 1: [This could happen if an allied NPC damages it this turn, but the player fails to do any damage.]
		now the health of M is 1;
	[Check for weapons effects]
	repeat with E running through worn equippables:
		compute attack effect of E;
	[Regardless of final attack used, wearing heels whilst defeating an enemy massively increases heel skill]
	if there are worn heels, increase the heel time of the player by the difficulty of M * 5;
	[Check for bonuses]
	if the health of M < 1:
		repeat with T running through worn clothing:
			compute slaying bonus of T;
	[If the player has killed something, let's remove it and potentially reward the player.]
	if the health of M <= 0:
		compute slaying bonus of M;
		finally destroy M;
		if the number of interested unfriendly monsters in the location of the player is 0 and side images is 1 and character-version is 0:
			now danaume-arms-victory is 1;
			display character window.





Attacking Monsters ends here.

