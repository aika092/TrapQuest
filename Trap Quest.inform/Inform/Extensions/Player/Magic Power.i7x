Magic Power by Player begins here.

[Creating functions for magic power management so I can use these to trigger becoming the Magical Girl if you don't have another class when gaining magic power]

To MagicPowerUp (X - a number):
	while X > 0:
		decrease X by 1;
		increase the magic-power of the player by 1.

[###Selkie: might be fun to have a [Smartening] function that would say, depending on intelligence, stuff like "getting smarterer", "getting better at thinking and stuff", "becoming way smarter", "becoming less sluggish", "working more smoothly", "operating more efficiently", "functioning keenly", "sparkling with brilliance".]
To MagicPowerDown (X - a number):
	if X > the magic-power of the player, now X is the magic-power of the player;
	while X > 0:
		decrease X by 1;
		decrease the magic-power of the player by 1.


[Stuff to do with casting spells goes below.]
the magic consequences rules is a rulebook.

To decide which number is MagicPowerDamage:
	let X be the magic-power of the player;
	increase X by magic theme bonus;
	if X > 5, decide on 5;
	decide on X.

To compute spell consequences of (Z - a thing):
	compute MagicDrain of Z;
	follow the magic consequences rules.

To compute MagicDrain of (Z - a thing):
	if the magic-power of the player > 0:
		MagicPowerDown 1.


Definition: a tentacle monster is a tripper if the class of the player is "magical schoolgirl".

To say TripChanceFlav of (M - a tentacle monster):
	do nothing.

To decide which number is the tripping roll of (M - a tentacle monster):
	if there is a worn uncursed living belt of sturdiness, decide on -9999;
	decide on 9999.

To say MonsterTrippedFlav of (M - a tentacle monster):
	say "Roaring with unrestrained arousal, [NameDesc of M] picks you up off the ground with several strong tentacles!";
	let H be a random held heart wand;
	if H is a thing:
		now H is in the location of the player;
		say "Your [H] is wrestled out of your hand and thrown to the corner of the room!".

Check taking equippable when the player is immobile:
	if the noun is not held, say "You try to reach it but it's too far away!" instead.


This is the magical schoolgirl cums then wins her fight orgasm resolution rule:
	let H be a random heart wand in the location of the player;
	if there is a tentacle monster penetrating a body part and the class of the player is "magical schoolgirl" and H is an actually summonable clothing and the body soreness of the player < 10:
		now the fatigue of the player is 0;
		say "Your orgasm fills you with renewed energy! You feel like you could escape and keep fighting if you want. Do you want to? ";
		if the player is consenting:
			say "With a flick of your fingers, your [ShortDesc of H] comes flying back to your hand! You swerve it in an arc and the tentacles holding [if there is a tentacle monster penetrating a fuckhole]and filling [end if]you are sliced in two! You fall to the ground gracefully, landing on two feet.";
			now the stance of the player is 0;
			now H is worn by the player;
			repeat with M running through monsters in the location of the player:
				dislodge M;
			if the player is able to speak, say "[variable custom style]'[if the player is a nympho]That was fun, but I have to beat you up now, sorry[otherwise if the player is a pervert]You've had your fun, but now you'll pay the price for your sins[otherwise]How dare you make me... orgasm... on your... eww! You will pay with your life[end if]!'[roman type][line break]";
			if the magic-power of the player < 2:
				say "You feel your body filled with more magic energy!";
				MagicPowerUp (2 - the magic-power of the player).
The magical schoolgirl cums then wins her fight orgasm resolution rule is listed last in the orgasm resolution rules.

Magic Power ends here.

