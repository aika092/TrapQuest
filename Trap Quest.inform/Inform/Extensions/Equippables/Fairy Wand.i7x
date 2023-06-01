Fairy Wand by Equippables begins here.

fairy-wand is a vibe-wand. fairy-wand is unique. fairy-wand is womanly. The printed name of fairy-wand is "[clothing-title-before]fairy wand[clothing-title-after]". The text-shortcut of fairy-wand is "fw". Understand "fairy", "wand" as fairy-wand.

Definition: fairy-wand is destiny-appropriate:
	if diaper quest is 1 and glittering rose is off-stage and glittering rose is actually summonable, decide yes;
	decide no.

Definition: fairy-wand is class-relevant:
	if the class of the player is faerie, decide yes;
	decide no.

To decide which number is the initial outrage of (E - fairy-wand):
	decide on 3.
To decide which number is the initial cringe of (E - fairy-wand):
	decide on 5.

Figure of fairy-wand is the file "Items/Accessories/Equippables/fairywand1.png".
To decide which figure-name is the clothing-image of (W - fairy-wand):
	decide on figure of fairy-wand.

To say ClothingDesc of (W - fairy-wand):
	say "A hot pink wand vibrator with a yellow crescent moon at one end, which leaves behind a trail of glittering fairy dust wherever it goes. You sense that it's more powerful the less intelligent you are[if the class of the player is faerie], and the more perverted your thoughts are[end if].".

To say ShortDesc of (W - fairy-wand):
	say "hot pink wand".

To say ClassSummonFlav of (C - fairy-wand):
	say "You notice a peculiar warm feeling in your hand, and look down to see a tiny pink wand just barely large enough for you resting in your grasp.".

To compute class set up of (C - fairy-wand):
	now the raw-magic-modifier of C is childValue times 1;
	if the magic-power of the player < 2, MagicPowerUp 2.

To compute sword destiny of (C - fairy-wand):
	if the player is sexed male and tg fetish >= 1:
		say DefaultSexchangeFlav;
		SexChange the player;
	compute class set up of C;
	if glittering rose is off-stage and glittering rose is actually summonable:
		say "[bold type]A rose appears in your hair![roman type][line break]";
		summon glittering rose cursed.

To decide which number is the zap damage improvement of (W - fairy-wand):
	let X be MagicPowerDamage;
	increase X by the magic-modifier of W;
	decrease X by the intelligence of the player / 5;
	if the class of the player is faerie, increase X by the sex addiction of the player / 4;
	decide on X.

To compute climax effect of (E - fairy-wand):
	if diaper quest is 0:
		MagicPowerRefresh 5;
		let M be a random live thing penetrating vagina;
		unless M is nothing:
			heal vagina times 2;
			say "You feel your [vagina]'s pent up soreness melting away.";
		otherwise if pregnancy fetish is 1:
			say "You feel a wave of warmth all the way from your [vagina] to the deepest parts of your womb, and you suddenly know you're going to find it a lot easier to get pregnant from now on.";
			increase the pregnancy rate of the player by 1;
	otherwise:
		MagicPowerRefresh 10;
		if glittering rose is off-stage and glittering rose is actually summonable:
			say "[bold type]A rose appears in your hair![roman type][line break]";
			summon glittering rose cursed.

To decide which number is the raw-masturbation-bonus of (E - fairy-wand):
	let M be a random live thing penetrating vagina;
	if M is a thing or diaper quest is 1 or the pregnancy of the player is 1, decide on 1;
	decide on -1.

To compute attack of (W - fairy-wand) at (M - a monster):
	let Z be the zap damage improvement of W;
	say "You flick the wand, zapping [NameDesc of M] with pink bolts of magic.".

Definition: fairy-wand is magic themed: decide yes.

Fairy Wand ends here.
