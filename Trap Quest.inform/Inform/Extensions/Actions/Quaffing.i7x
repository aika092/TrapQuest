Quaffing by Actions begins here.


[Quaffing is the verb used to handle potions created via alchemy. It is called automatically by the drinking verb when appropriate.]
Quaffing is an action applying to one thing.
Check quaffing:
	if the noun is salve or the noun is true salve or the noun is powder, say "That cannot be drunk, try [bold type]rub[roman type]bing the [ShortDesc of the noun] on a [if the noun is salve]body part[otherwise]item of clothing[end if] instead." instead;
	if the latex-transformation of the player > 4, say "You can no longer drink, you're too far into your transformation into a doll and your body doesn't need hydration any more." instead;
	if the noun is not held and the player is flying, say "You can't reach!" instead;
	if the player is overly full, say "Your stomach feels too full to drink any more right now, you should wait a while." instead;
	if the player is wrist bound behind, say "You won't be able to drink this with your hands bound behind you." instead;
	if the player is wrist bound in front and there are worn heels and the player is upright and the noun is not held by the player, say "With your hands tied together you won't be able to balance well enough to pick that up without getting on your knees." instead;
	if there is a worn ballgag, say "The glass container is too delicate, you can't get anything past your [ShortDesc of random worn ballgag] safely!" instead;
	if face is actually occupied, say "Your mouth is currently occupied!" instead.

Carry out quaffing:
	allocate 3 seconds;
	StomachUp 1;
	if the noun is cursed and the noun is not potion of blessing, say "That tasted really awful - you're pretty sure it was cursed!";
	destroy the noun.


Quaffing ends here.
