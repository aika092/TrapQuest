Fairy Wand by Equippables begins here.

A fairy wand is a kind of vibe-wand. A fairy wand is usually unique. A fairy wand is womanly. There is 1 fairy wand. The printed name of fairy wand is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]fairy wand[clothing-title-after]". The text-shortcut of fairy wand is "fw".


Figure of fairy wand is the file "Items/Accessories/Equippables/fairywand1.png".
To decide which figure-name is the clothing-image of (W - a fairy wand):
	decide on figure of fairy wand.


To say ClothingDesc of (W - a fairy wand):
	say "A hot pink wand vibrator with a yellow crescent moon at one end, which leaves behind a trail of glittering fairy dust wherever it goes. You sense that it's more powerful the less intelligent you are.".

To say ShortDesc of (W - a fairy wand):
	say "hot pink wand".

To decide which number is the damage improvement of (W - a fairy wand):
	let X be MagicPowerDamage + 3;
	if W is cursed, decrease X by 1;
	increase X by the magic-modifier of W;
	decrease X by the intelligence of the player / 5;
	decide on X.

To compute climax effect of (E - a fairy wand):
	let M be a random live thing penetrating vagina;
	unless M is nothing:
		heal vagina times 2;
		say "You feel your [vagina]'s pent up soreness melting away.";
	otherwise if pregnancy fetish is 1:
		say "You feel a wave of warmth all the way from your [vagina] to the deepest parts of your womb, and you suddenly know you're going to find it a lot easier to get pregnant from now on.";
		increase the pregnancy rate of the player by 1.


To decide which number is the raw-masturbation-bonus of (E - a fairy wand):
	let M be a random live thing penetrating vagina;
	If M is not nothing or the pregnancy of the player is 1:
		decide on 3;
	decide on -2.[You will take longer to cum if you use the fairy wand ]

To compute attack of (W - a fairy wand) at (M - a monster):
	say "You flick the wand, zapping [NameDesc of M] with pink bolts of magic.".

Definition: a fairy wand is magic themed: decide yes.

Fairy Wand ends here.

