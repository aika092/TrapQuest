Attacking by Actions begins here.

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
	if the sleep of the noun > 0, say "Just because they're asleep doesn't mean you can defeat [him of the noun] in one hit in this world. You're going to have to attack them as usual, which will wake [him of the noun] up.";
	let Sl be the slap damage of the player - combat bonus remainder;
	let K be the knee damage of the player - combat bonus remainder;
	let Ki be the kick damage of the player - combat bonus remainder;
	[let Ki2 be the kick damage of the player / 4;]
	say "You need to be more specific, please choose between [bold type]kick [bracket]ki[close bracket] ([Ki] average damage)[roman type], [bold type]knee [bracket]kn[close bracket] ([K] average damage)[roman type] and [bold type]slap [bracket]sl[close bracket] ([Sl] average damage)[roman type]." instead.
Understand "kill [something]", "murder [something]", "destroy [something]", "stamp on [something]", "stamp [something]", "k [something]", "at [something]", "break [something]" as attacking.

Attacking ends here.

