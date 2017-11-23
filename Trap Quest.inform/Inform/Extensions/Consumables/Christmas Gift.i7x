Christmas Gift by Consumables begins here.


A christmas gift is a kind of thing. [There are 25 christmas gifts.]  The description of christmas gift is "A beautifully wrapped christmas present.  Open it and find what's inside!".  Understand "present", "wrapping" as christmas gift.  The printed name of christmas gift is "[TQlink of item described]christmas gift[shortcut-desc][TQxlink of item described][verb-desc of item described]".  The text-shortcut of christmas gift is "chg".

Check opening a christmas gift:
	try unwrapping the noun instead.

Unwrapping is an action applying to one thing.
Check unwrapping:
	if the player is a living sex doll, say "You don't have the manual dexterity to do that." instead;
	if the player is immobile, say "Aren't you a bit busy?" instead;
	if the player is in danger, say "You should deal with the threatening monsters first." instead.
Carry out unwrapping:
	now seconds is 6;
	let X be nothing;
	let R be a random number from 1 to 5;
	if R is 1:
		now X is a random off-stage tincture;
	if R is 2:
		now X is a random off-stage elixir;
		if X is elixir of life and pregnancy fetish is 0, now X is nothing;
	if R is 3:
		now X is a random off-stage potion;
		if X is potion of the womb and pregnancy fetish is 0, now X is nothing;
		if X is potion of bull strength and lactation fetish is 0, now X is nothing;
	if R is 4:
		now X is a random off-stage true salve;
	if R is 5:
		now X is a random off-stage rare fetish appropriate clothing;
	if X is nothing:
		now X is a random off-stage basic loot accessory;
		if a random number from 1 to 3 is 1:
			now X is ruby;
		otherwise if a random number from 1 to 3 is 1:
			now X is emerald;
		otherwise:
			now X is sapphire;
		if X is plentiful accessory, set shortcut of X;
	unless X is nothing:
		say "Inside you find a [X]!  Ooh, very interesting!";
		now X is in the location of the player;
	otherwise:
		say "Oh no, it's empty.  Boo!";
	destroy the noun.

To decide which number is the bartering value of (T - a christmas gift) for (M - a monster):
	decide on 7.

Christmas Gift ends here.
