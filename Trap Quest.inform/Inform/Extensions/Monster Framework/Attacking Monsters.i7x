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
4 - Bomb
5 - Zap
]

Definition: yourself is blinded:
	if the player is breasts blinded, decide yes;
	if the semen coating of face > 8, decide yes;
	decide no.

Part 1 - Ability to attack

[!<autoattack:Integer>*

REQUIRES COMMENTING

*!]
autoattack is a number that varies.

[!<autoslap:Integer>*

Have we already checked this turn whether the player can do this? And if so, what was the answer?

*!]
autoslap is a number that varies. autoslap is 1.
autozap is a number that varies. autozap is 1.

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
	now attack-type is 1;
	follow the ability to slap rules;
	if the rule failed:
		now autoslap is -1;
		now autoattack is 0;
		decide no;
	now autoslap is 1;
	now autoattack is 0;
	decide yes.

Definition: yourself is able to zap:
	if autoattack is 1 and autozap is not 0:
		now autoattack is 0;
		if autozap is 1, decide yes;
		if autozap is -1, decide no;
	now attack-type is 5;
	follow the ability to slap rules;
	if the rule failed:
		now autozap is -1;
		now autoattack is 0;
		decide no;
	now autozap is 1;
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

[!<ThePlayerCanNotAttackWhenCagedRule>+

This rule causes an attack to fail when the player is in the dungeon chains. If the player is attacking manually, outputs a brief message explaining why.

+!]
This is the player can't attack when caged rule:
	if dungeon chains is worn:
		if autoattack is 0, say "The [dungeon chains] are making that impractical!";
		rule fails.
The player can't attack when caged rule is listed in the ability to slap rules.
The player can't attack when caged rule is listed in the ability to knee rules.
The player can't attack when caged rule is listed in the ability to kick rules.

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

[!<ThePlayerCanNotAttackWhenGaggingForCockRule>+

This rule causes an attack to fail when the player is extremely horny or otherwise desperate for sex, as defined by the ThingIsGaggingForCock definition. If the player is attacking manually, outputs a message explaining why the attack failed

+!]
This is the player can't attack because they're gagging for cock rule:
	if the player is gagging for cock:
		if autoattack is 0, say "Your mind is too excited about the prospect of [if the player is gagging for black cock]getting to worship that [BlackCock].[otherwise if diaper quest is 1]playtime. You need to cum so bad![otherwise]sex. You need to cum so bad![end if]";
		rule fails.

The player can't attack because they're gagging for cock rule is listed in the ability to slap rules.
The player can't attack because they're gagging for cock rule is listed in the ability to knee rules.
The player can't attack because they're gagging for cock rule is listed in the ability to kick rules.

[!<ThePlayerCanNotAttackWithFakeNailsRule>+

This rule causes a slap to fail if the player is wearing unblessed fake-nails. If the player is attacking manually, outputs a message explaining why the slap failed.

+!]
This is the player can't attack with fake-nails rule:
	if fake-nails is worn and fake-nails is not blessed and attack-type is 1:
		if autoattack is 0, say "You're too worried about breaking a nail to do that!";
		rule fails.

The player can't attack with fake-nails rule is listed in the ability to slap rules.

[!<ThePlayerCanNotAttackWhenBoundBehindRule>+

This rule causes a slap to fail if the player is wearing a wrist lockable clothing with its "wrist-bound-behind" flag set to true. If the player is attacking manually, outputs a message explaining why the slap failed.

+!]
This is the player can't attack when bound behind rule:
	if the player is wrist bound behind:
		if autoattack is 0, say "You can't do that with your [if gape-gloves is worn]your hands glued to your [AssDesc][otherwise]wrists bound behind you[end if]!";
		rule fails.
The player can't attack when bound behind rule is listed in the ability to slap rules.

[!<ThePlayerCanNotAttackWithMessRule>+

This rule causes a knee or a kick to fail if the player is wearing a messy diaper. If the player is attacking manually, outputs a message explaining why the attack failed.

+!]
This is the player can't attack with mess rule:
	if the player is upset about sitting in mess:
		if autoattack is 0, say "You can't bring yourself to do that whilst wearing [if there is a worn diaper]a squishy messy diaper[otherwise]messy underwear[end if]!";
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
		unless C is crotch-unzipped or C is slitted:
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
		if C is crotch-in-place and C is not slitted and C is not crotch-unzipped:
			if autoattack is 0:
				say "You can't raise your feet high enough whilst sporting a [if C is knee-length]tight[otherwise]long[end if] skirt!";
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

[!<ThePlayerCanNotAttackCagedMonstersRule>+

Someone in a cage is too far away for combat.

+!]
This is the player can't attack caged monsters rule:
	if the noun is caged monster:
		if autoattack is 0, say "You can't reach [him of the noun] through the cage!";
		rule fails.

The player can't attack caged monsters rule is listed in the ability to slap rules.
The player can't attack caged monsters rule is listed in the ability to knee rules.
The player can't attack caged monsters rule is listed in the ability to kick rules.

[!<ThePlayerCanNotAttackDefeatedMonstersRule>+

Someone in a permanently defeated state is not a combat target.

+!]
This is the player can't attack defeated monsters rule:
	if the noun is defeated monster:
		if autoattack is 0, say "[BigNameDesc of the noun] is no longer a threat. You have no reason to do that.";
		rule fails.

The player can't attack defeated monsters rule is listed in the ability to slap rules.
The player can't attack defeated monsters rule is listed in the ability to knee rules.
The player can't attack defeated monsters rule is listed in the ability to kick rules.

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

Part 3 - Automatic Surrender

[!<MonsterIsTooIntimidating>+

When the player attacks a monster, determines whether the player will automatically surrender to the monster instead of attacking them.

@param <Monster>:<M> the monster the player is trying to attack

+!]
Definition: a monster (called M) is too intimidating:
	if the class of the player is worshipper:
		if M is infernal:
			let G be gold-tiara;
			if M is interested, say "[one of]As soon as the thought of harming [NameDesc of M] enters your mind, your [printed name of G] sends a horrible shiver down your spine[or]At the mere thought of harming [NameDesc of M], your spine spasms in painful fear[or]You start to imagine harming [NameDesc of M] but instantly squash the thought as your [printed name of G] sends a painful shudder pricks at your spine[then at random].";
			otherwise say "[BigNameDesc of M] turns toward you as soon as the thought of harming [him of M] enters your mind, and your [printed name of G] sends a horrible shiver down your spine.";
			decide yes;
	if the player is not feeling submissive, decide no;
	if M is uninterested or M is friendly, decide no;
	if the health of M < the maxhealth of M, decide no;
	let R be a random number between 1 and the delicateness of the player;
	if debuginfo > 0, say "[input-style]automatic surrender check: player submission (delicateness) roll d[delicateness of the player] ([R]) + [ShortDesc of M] scariness ([the difficulty of M / 4]) = [R + (the difficulty of M / 4)] | (15.5) surrender threshold[roman type][line break]";
	if R + (the difficulty of M / 4) > 15, decide yes;
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
	say "You consider attacking [NameDesc of M], but then your [if the humiliation of the player >= 40000]desire to be used as an object[otherwise]fear of pain[end if] gets the better of you. You find yourself dropping to your knees. [if N is monster and M is unintelligent][SurrenderFlav of N][otherwise][SurrenderFlav of M][end if]";
	compute silent surrender to M.

To compute silent surrender to (M - a monster):
	now surrendered is 1;
	if the player is upright:
		now auto is 1;
		try kneeling;
		now auto is 0.

[!<SaySurrenderFlavOfMonster>+

REQUIRES COMMENTING

+!]
To say SurrenderFlav of (M - a monster):
	if M is intelligent:
		if the player is able to speak:
			if the humiliation of the player >= 40000, say "[variable custom style]'[one of]Please use my body to your heart's desire.'[or]I understand my place.'[or]I am yours to use. Please do not show me any mercy.'[in random order][roman type][line break]";
			otherwise say "[variable custom style]'[one of]Do what you want with me, just please don't be rough!'[or]I'll do whatever you say, just please don't hurt me!'[or]You're the boss... just please be kind to me!'[or]I'm delicate, please don't break me!'[or]I'm just a poor weakling, please show me mercy!'[in random order][roman type][line break]";
	if the player is able to use their hands and the player is not wrist bound behind, say "You [if the humiliation of the player >= 40000]put your hands on the back of your head[otherwise]raise your hands above your head[end if] as a sign of [if the humiliation of the player >= 40000]your status as a powerless object[otherwise][one of]surrender[or]submission[at random][end if][if M is unintelligent and the humiliation of the player < 40000], unsure if [NameDesc of M] even understands your actions[end if].".

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
An all later time based rule (this is the combat bonus rule):
	let N be saved-flat-strength / combat scaling;
	let N2 be the remainder after dividing the strength of the player by combat scaling;
	if a random number between 1 and combat scaling <= N2:
		increase N by 1;
		now combat bonus remainder is 1;
	otherwise:
		now combat bonus remainder is 0;
	if the player is blinded, decrease N by 2;
	now combat bonus is N.

To say combat bonus explanation:
	let N be combat bonus - combat bonus remainder;
	if the player is blinded, increase N by 2;
	say "[if N >= 0]+[end if][N] (strength component) [if combat bonus remainder is 1]+1 (strength component fluctuation) [end if][if the player is breasts blinded]-2 (blinded by breasts) [otherwise if the player is blinded]-2 (blinded by cum) [end if]".

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

To compute failed damage of (M - a monster):
	do nothing.

To compute standard damage of (M - a monster):
	if the health of M > 0:
		compute damage reaction of M;
		now M is interested;
		anger M;
		now the boredom of M is 0;
		if M is undefeated and M is not caged, compute combatProvoked of M; [All NPCs should become unfriendly here, if able.]
	otherwise:
		compute defeat of M.

To compute damage reaction of (M - a monster):
	if M is uninterested or M is friendly:
		say CombatProvokedReaction of M;
		now the sleep of M is 0;
	otherwise:
		say DamageReaction (the health of M) of M.

To say CombatProvokedReaction of (M - a monster):
	say "[BigNameDesc of M] instantly [if M is awake]reacts[otherwise]wakes up[end if], taking a fighting stance!".

To compute combatProvoked of (M - a monster):
	FavourDown M;
	now M is unleashed.

To say DamageReaction (N - a number) of (M - a monster):
	if N > (the maxhealth of M / 4) * 3:
		say DamageReactHealthy of M;
	otherwise if N > (the maxhealth of M / 4) * 2:
		say DamageReactDamaged of M;
	otherwise if N > (the maxhealth of M / 4):
		say DamageReactTired of M;
	otherwise if diaper quest is 0 and M is dominantSexReady:
		say DamageReactSubmissive of M;
		if newbie tips is 1, say "[one of][newbie style]Newbie tip: Looks like the [he of M] would rather fuck than fight! You may be able to dominate [him of M] if you defeat [him of M]!'[roman type][line break][or][stopping]";
	otherwise:
		say DamageReactWeak of M.

To say DamageReactHealthy of (M - a monster):
	say "The [noun] easily takes the hit!".

To say DamageReactDamaged of (M - a monster):
	say "The [noun] flinches, taking the hit!".

To say DamageReactTired of (M - a monster):
	say "The [noun] takes the hit, staggering!".

To say DamageReactWeak of (M - a monster):
	say "The [noun] takes the hit, fighting to maintain [his of M] balance!".

To say DamageReactSubmissive of (M - a monster):
	say "[BigNameDesc of M] takes the hit, [his of M] eyes lingering on your crotch as [he of M] fights to maintain [his of M] balance.".

[!<SayDamageFlavourOfNumberOnMonster>+

REQUIRES COMMENTING

+!]
To say damage-flavour of (N - a number) on (M - a monster):
	if N is 0:
		say "You're pretty sure that did nothing at all.";
	otherwise if N < 3:
		say "That felt extremely weak, you doubt it hurt much at all.";
	otherwise if N < 5:
		say "That felt quite weak, but hopefully it hurt a bit.";
	otherwise if N < 8:
		say "[BigNameDesc of M] definitely felt that. A respectable hit!";
	otherwise if N < 11:
		say "[BigNameDesc of M] visibly recoils from the hit. A [if critical is 1][bold type]critical hit[roman type][otherwise]strong hit[end if]!";
	otherwise if N < 15:
		say "Wow, you felt that connect with incredible force. A super strong [if critical is 1][bold type]critical hit[roman type][otherwise]hit[end if]!";
	otherwise:
		say "POW! Your attack is accompanied by a loud sound. An almost impossibly strong [if critical is 1][bold type]critical hit[roman type][otherwise]hit[end if]!";

[!<critical:Integer>*

REQUIRES COMMENTING

*!]
Critical is a number that varies. Critical is 0. [Flag whether the attack counts as a critical]

[!<attackDamage:Integer>*

REQUIRES COMMENTING

*!]
Attack-damage is a number that varies.

damage-explained is a number that varies. [We output debug info]

[!<DamageOnMonster>+

REQUIRES COMMENTING

+!]
To damage (A - a number) on (M - a monster):
	[Roll for damage - essentially 2dX]
	now attack-damage is (a random number between 1 and A) + (a random number between 1 and A);
	if damage-explained > 0, say "[input-style]=> [if A < 1]RNG(A~1)[otherwise]2d[A][end if] = [attack-damage]; ";
	now critical is 0;
	let crit-said be 0;
	[Held items have some damage bonus or reduction rules]
	repeat with T running through worn clothing:
		let N be the damage modifier of T;
		if N is not 0:
			increase attack-damage by N;
			if damage-explained > 0, say "[if N >= 0]+[end if][N] ([if critical is 1 and crit-said is 0]CRITICAL HIT [end if]bonus from [ShortDesc of T]) ";
			now crit-said is critical;
	[Minimum damage is 1]
	if attack-damage < 1:
		if damage-explained > 0, say "+[1 + (attack-damage * -1)] (minimum damage is 1) ";
		now attack-damage is 1;
	[Balancing attempt]
	if a random number between -3 and 4 > attack-damage:
		increase attack-damage by 1;
		if damage-explained > 0, say "+1 (random bonus for low damage hits) ";
	[Specific Monsters can add or subtract damage]
	let N be the damage modifier of M;
	if N is not 0:
		increase attack-damage by N;
		if damage-explained > 0, say "[if N >= 0]+[end if][N] (damage [if N < 0]reduction[otherwise]amplification[end if] of [ShortDesc of M]) ";
	if M is not damageable:
		now attack-damage is 0;
		if damage-explained > 0, say "CANCELLED - ENEMY IS INVULNERABLE!";
	[Damage calculation over, deal damage now.]
	if damage-explained > 0, say "[line break][health of M] HP - [attack-damage] damage -> ";
	decrease the health of M by attack-damage;
	if damage-explained > 0, say "[health of M] HP[roman type][line break]";
	if the health of M > 0:
		say Damage-flavour of attack-damage on M;
	otherwise if attack-damage > 0:
		increase the fat-burning of the player by 20 * the difficulty of M; [Your exercise count is massively rewarded by defeating a monster. Not relevant to the other clause but putting it here because why not.]
	[Just in case it doesn't happen in the monster's damage function - everything should be unfriendly after you attack it.]
	reset orifice selection of M;
	now the boredom of M is 0;
	if M is interested and M is friendly, progress quest of attack-quest;
	[Call the damage function of the monster]
	if attack-damage > 0:
		compute standard damage of M;
	otherwise:
		if the health of M < 1: [This could happen if an allied NPC damages it this turn, but the player fails to do any damage.]
			now the health of M is 1;
			if damage-explained > 0, say "[input-style]HP set to 1 since NPCs are not allowed to get the last hit[roman type][line break]";
		compute failed damage of M; [Perhaps we want the NPC to become unfriendly even if the attack failed.]
	now damage-explained is 0;
	[Check for weapons effects]
	repeat with E running through worn equippables:
		compute attack effect of E;
	[Check for bonuses and remove dead NPCs]
	if the health of M <= 0:
		repeat with T running through worn clothing:
			compute slaying bonus of T;
		[Regardless of final attack used, wearing heels whilst defeating an enemy massively increases heel skill]
		if there are worn heels, increase the heel time of the player by the difficulty of M * 5;
		compute slaying bonus of M;
		finally destroy M;
		if the player is not in danger and side images > 0 and character-version is 0:
			now danaume-arms-victory is 1.
			[display character window.]

Attacking Monsters ends here.
