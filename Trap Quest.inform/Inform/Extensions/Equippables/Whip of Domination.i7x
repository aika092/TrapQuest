Whip of Domination by Equippables begins here.

A whip of domination is a kind of equippable. A whip of domination is usually slap ready. There is 1 unique leather whip of domination. The printed name of whip of domination is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]whip of domination[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of whip of domination is "whi".

Figure of whip of domination is the file "Items\Accessories\Equippables\whipofdomination1.png".

To decide which figure-name is the clothing-image of (W - a whip of domination):
	decide on figure of whip of domination.

To say ClothingDesc of (W - a whip of domination):
	say "This looks like a normal whip, but you can tell it has magic properties.".
To say ShortDesc of (W - a whip of domination):
	say "whip of domination".

To decide which number is the initial outrage of (C - a whip of domination):
	decide on 0.

Definition: a whip of domination (called W) is product:
	decide yes.
	
To decide which number is the alchemy key of (W - a whip of domination):
	decide on 15.

Definition: a whip of domination (called C) is recipe specific:
	decide yes.

This is the whip of domination specific recipe rule:
	now the Product in row 19 of the Table of Alchemy is 15;
	now the Recipe in row 19 of the Table of Alchemy is 1.
The whip of domination specific recipe rule is listed in the specific recipe rules.

To compute recipe specific cursing of (T - a whip of domination):
	if the noun is not writhing vine, now T is cursed.

To compute attack effect of (W - a whip of domination):
	if attack-type is 1 and W is not cursed and the player is not feeling submissive:
		arouse 100 + (20 * the sex addiction of the player);
		say "Using the [printed name of W] is [if the player is a pervert]quickly [end if]making you more[if the player is horny] and more[end if] aroused!".
			
To decide which number is the damage improvement of (W - a whip of domination):
	let X be 0;
	if W is cursed, decrease X by 1;
	increase X by the magic-modifier of W;
	let Y be (the delicateness of the player + 2) / 5;
	increase X by (2 - Y) * 2; [The lower the player's delicateness, the more bonus damage]
	if the player is horny, increase X by 1;
	decide on X.
	
To compute slaying bonus of (W - a whip of domination):
	if W is not cursed and attack-type is 1:
		SexAddictDown 1;
		dignify 750;
		say "The [random worn whip of domination] sends positive feelings of confidence flowing through your body!".

To compute attack of (W - a whip of domination) at (M - a monster):
	say "[if the player is feeling dominant and a random number between 4 and 8 < the sex addiction of the player]With a powerful piercing laugh, you skilfully slash[otherwise if the player is feeling dominant]You feel confident inside as you skilfully lash[otherwise if the player is not feeling submissive]You strike[otherwise if the delicateness of the player < 17]You fight against your newly found submissive streak and timidly whip[otherwise]Your fully submissive subconscious fights against your motion as you weakly flick at[end if] the [noun] with your [printed name of W]!  [if W is cursed]After striking the [M], the whip flicks back with recoil, hitting you as well!  [line break][variable custom style]Oww[one of]!  Is this whip cursed?[or][stopping]![roman type][line break][end if]";
	if a random number between 1 and 2 is 1 and W is cursed:
		DelicateUp 1.

To decide which number is the bartering value of (T - a whip of domination) for (M - a demoness):
	if M is friendly, decide on 4;
	decide on 0.

To say MonsterOfferAcceptFlav of (M - a demoness) to (T - a whip of domination):
	say "[speech style of M]'Oh wow, this is PERFECT!'[roman type][line break]".

To say MonsterOfferRejectFlav of (M - a demoness) to (T - a whip of domination):
	say "[speech style of M]'I don't need that to dominate you with, slut.'[roman type][line break]".

To say OfferThanksFlav of (M - a demoness) for (T - a whip of domination):
	say "[speech style of M]'What a rare magical item.. I'll have to give you something in return. Here, take this!  I understand it's the most valuable item to you mortals in the entire world.'[roman type][line break]".

To compute offer reward of (M - a demoness) for (T - a whip of domination): 
	let D be a random off-stage necklace;
	if D is necklace:
		now D is solid gold;
		set shortcut of D;
		now D is carried by the player;
		say "The [M] summons a [D] out of nowhere, and hands it to you.".

To decide which number is the bartering value of (T - a whip of domination) for (M - a dominatrix):
	decide on 5.

To say MonsterOfferAcceptFlav of (M - a dominatrix) to (T - a whip of domination):
	say "[speech style of M]'Incredible. Did you make this for me?!'[roman type][line break]".

To say MonsterOfferRejectFlav of (M - a dominatrix) to (T - a whip of domination):
	say "[speech style of M]'I don't need that to dominate you with, slave.'[roman type][line break]".

To say OfferThanksFlav of (M - a dominatrix) for (T - a whip of domination):
	say "[speech style of M]'What incredible craftsmanship. I must pay you accordingly!'[roman type][line break]".

To compute offer reward of (M - a dominatrix) for (T - a whip of domination): 
	let D be a random off-stage ring;
	if D is ring:
		now D is solid gold;
		set shortcut of D;
		now D is carried by the player;
		say "The [M] summons a [D] out of nowhere, and hands it to you.".

Whip of Domination ends here.

