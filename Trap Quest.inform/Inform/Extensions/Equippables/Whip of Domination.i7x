Whip of Domination by Equippables begins here.

whip-of-domination is an equippable. whip-of-domination is slap ready. whip-of-domination is unique. whip-of-domination is leather. The printed name of whip-of-domination is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]whip of domination[clothing-title-after]". The text-shortcut of whip-of-domination is "whi". Understand "whip", "of domination" as whip-of-domination.

Figure of whip-of-domination is the file "Items/Accessories/Equippables/whipofdomination1.png".

To decide which figure-name is the clothing-image of (W - whip-of-domination):
	decide on figure of whip-of-domination.

To say ClothingDesc of (W - whip-of-domination):
	say "This looks like a normal whip, but you can tell it has magic properties.".
To say ShortDesc of (W - whip-of-domination):
	say "leather whip".
To say MediumDesc of (W - whip-of-domination):
	say "leather whip of domination".

To decide which number is the initial outrage of (C - whip-of-domination):
	decide on 3.

Definition: whip-of-domination is product: decide yes.
Definition: whip-of-domination is impact play themed: decide yes.
Definition: whip-of-domination is black themed: decide yes.
Definition: whip-of-domination is red themed: decide yes.

To decide which number is the alchemy key of (W - whip-of-domination):
	decide on 15.

Definition: whip-of-domination is recipe specific: decide yes.

This is the whip-of-domination specific recipe rule:
	now the Product in row 19 of the Table of Alchemy is 15;
	now the Recipe in row 19 of the Table of Alchemy is 1.
The whip-of-domination specific recipe rule is listed in the specific recipe rules.

To compute recipe specific cursing of (T - whip-of-domination):
	if the noun is not writhing vine, now T is cursed.

To compute attack effect of (W - whip-of-domination):
	if attack-type is 1 and W is not cursed and the player is not feeling submissive:
		passively stimulate vagina from W;
		say "Using the [printed name of W] is [if the player is a pervert]quickly [end if]making you more[if the player is horny] and more[end if] aroused!".

To decide which number is the damage improvement of (W - whip-of-domination):
	let X be 0;
	if W is cursed, decrease X by 1;
	increase X by the magic-modifier of W;
	let Y be (the delicateness of the player + 2) / 5;
	increase X by (2 - Y) * 2; [The lower the player's delicateness, the more bonus damage]
	if the player is horny, increase X by 1;
	decide on X.

To compute slaying bonus of (W - whip-of-domination):
	if W is not cursed and attack-type is 1:
		dignify 750;
		say "The [random worn whip-of-domination] sends positive feelings of confidence flowing through your body!";
		SexAddictDown 1.

To compute attack of (W - whip-of-domination) at (M - a monster):
	say "[if the player is feeling dominant and a random number between 4 and 8 < the sex addiction of the player]With a powerful piercing laugh, you skilfully slash[otherwise if the player is feeling dominant]You feel confident inside as you skilfully lash[otherwise if the player is not feeling submissive]You strike[otherwise if the delicateness of the player < 17]You fight against your newly found submissive streak and timidly whip[otherwise]Your fully submissive subconscious fights against your motion as you weakly flick at[end if] the [noun] with your [printed name of W]! [if W is cursed]After striking [NameDesc of M], the whip flicks back with recoil, hitting you as well![end if]";
	if W is cursed:
		PainUp 1;
		say "[one of][variable custom style]Is this the whip's curse?![or][stopping][roman type][line break]";

To decide which number is the bartering value of (T - whip-of-domination) for (M - a demoness):
	if M is friendly, decide on 4;
	decide on 0.

To say MonsterOfferAcceptFlav of (M - a demoness) to (T - whip-of-domination):
	say "[speech style of M]'Oh wow, this is PERFECT!'[roman type][line break]".

To say MonsterOfferRejectFlav of (M - a demoness) to (T - whip-of-domination):
	say "[speech style of M]'I don't need that to dominate you with, slut.'[roman type][line break]".

To say OfferThanksFlav of (M - a demoness) for (T - whip-of-domination):
	say "[speech style of M]'What a rare magical item... I'll have to give you something in return. Here, take this! I understand it's the most valuable item to you mortals in the entire world.'[roman type][line break]".

To compute offer reward of (M - a demoness) for (T - whip-of-domination):
	let D be a random off-stage necklace;
	if D is necklace:
		now D is solid gold;
		set shortcut of D;
		now D is in the location of the player;
		say "[BigNameDesc of M] summons a [D] out of nowhere, and hands it to you.".

To decide which number is the bartering value of (T - whip-of-domination) for (M - a dominatrix):
	decide on 5.

To say MonsterOfferAcceptFlav of (M - a dominatrix) to (T - whip-of-domination):
	say "[speech style of M]'Incredible. Did you make this for me?!'[roman type][line break]".

To say MonsterOfferRejectFlav of (M - a dominatrix) to (T - whip-of-domination):
	say "[speech style of M]'I don't need that to dominate you with, slave.'[roman type][line break]".

To say OfferThanksFlav of (M - a dominatrix) for (T - whip-of-domination):
	say "[speech style of M]'What incredible craftsmanship. I must pay you accordingly!'[roman type][line break]".

To compute offer reward of (M - a dominatrix) for (T - whip-of-domination):
	let D be a random off-stage ring;
	if D is ring:
		now D is solid gold;
		set shortcut of D;
		now D is in the location of the player;
		say "[BigNameDesc of M] summons a [D] out of nowhere, and hands it to you.".

Whip of Domination ends here.

