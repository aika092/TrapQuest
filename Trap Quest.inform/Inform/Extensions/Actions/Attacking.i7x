Attacking by Actions begins here.

latestCombatFocus is an object that varies. [What's the latest thing that was attacked?]
Report slapping:
	now latestCombatFocus is the noun.
Report kneeing:
	now latestCombatFocus is the noun.
Report kicking:
	now latestCombatFocus is the noun.
Report zapping it with:
	now latestCombatFocus is the second noun.

[!<CheckAttacking>+

REQUIRES COMMENTING

+!]
Check attacking:
	if the noun is vine boss and the player is vine stuck, try pulling a random vines grabbing the player instead;
	if the noun is pedestal:
		if there is a worn lipstick collar, say "Your hand passes freely through the barrier.";
		otherwise say "You try, but the glass won't break no matter what you try. It must be enchanted...";
	if the noun is the player, try autofainting instead;
	if the noun is not a monster, say "Err, why would you do that?" instead;
	if the player is prone, say "You can't do much to hurt [the noun] whilst on your [if the noun is wench and the noun is grabbing the player]back[otherwise]knees[end if]!" instead;
	if the player is immobile, say "You're a bit immobile right now to be trying to attack anything!" instead;
	if the noun is asleep, say "Just because they're asleep doesn't mean you can defeat [him of the noun] in one hit in this world. You're going to have to attack them as usual, which will wake [him of the noun] up.";
	say "You need to be more specific, please choose between [bold type]kick [bracket]ki[close bracket] ([saved-printed-kick-damage] [if kick-fatigue > 0](-[kick-fatigue]) [end if]average damage)[roman type], [bold type]knee [bracket]kn[close bracket] ([saved-printed-knee-damage] [if knee-fatigue > 0](-[knee-fatigue]) [end if]average damage)[roman type] and [bold type]slap [bracket]sl[close bracket] ([saved-printed-slap-damage] average damage)[roman type]." instead.
Understand "kill [something]", "murder [something]", "destroy [something]", "stamp on [something]", "stamp [something]", "k [something]", "at [something]", "break [something]", "knock [something]", "knock on [something]" as attacking.

To decide which number is best attack:
	now autoattack is 1;
	let Sl be the slap damage of the player;
	let K be the knee damage of the player;
	let Ki be the kick damage of the player;
	if the player is able to slap and (Sl >= K or the player is not able to knee) and (Sl >= Ki or the player is not able to kick):
		now autoattack is 0;
		decide on 1;
	if the player is able to knee and (K >= Ki or the player is not able to kick):
		now autoattack is 0;
		decide on 2;
	if the player is able to kick:
		now autoattack is 0;
		decide on 3;
	now autoattack is 0;
	decide on 1.

Attacking ends here.
