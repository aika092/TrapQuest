Pacifiers by Bondage begins here.

A pacifier is a kind of ballgag. The text-shortcut of pacifier is "pac".
Definition: a pacifier is same-type if theme-share-target is ballgag.
A pacifier has a number called stolen-intelligence.
Definition: a pacifier is curse-sticky: decide no.
Definition: a pacifier is fetish appropriate: decide yes.
Definition: a baby pacifier is fetish appropriate if diaper lover > 0.

Definition: a baby pacifier is baby themed: [Is it something that only an adult baby fetishist would have?]
	decide yes.

A cock pacifier is a kind of pacifier. There is 1 unique cock pacifier. The printed name of cock pacifier is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]cock pacifier[clothing-title-after]". The text-shortcut of cock pacifier is "cpc".
Definition: a cock pacifier is fetish appropriate if diaper quest is 0.
Definition: a cock pacifier is drink themed: decide yes.
Definition: a cock pacifier is oral sex themed: decide yes.
Definition: a cock pacifier is penis themed: decide yes.
Definition: a cock pacifier is red themed: decide yes.
A baby pacifier is a kind of pacifier.
A pink pacifier is a kind of baby pacifier. There is 1 pink pacifier. The printed name of pink pacifier is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]pink pacifier[clothing-title-after]". The text-shortcut of pink pacifier is "ppa".
Definition: a pink pacifier is pink themed: decide yes.
A tiger pacifier is a kind of baby pacifier. There is 1 tiger pacifier. The printed name of tiger pacifier is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]tiger pacifier[clothing-title-after]". The text-shortcut of tiger pacifier is "tpa".
Definition: tiger pacifier is orange themed: decide yes.
A yellow pacifier is a kind of baby pacifier. There is 1 yellow pacifier. The printed name of yellow pacifier is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]yellow pacifier[clothing-title-after]". The text-shortcut of yellow pacifier is "ypa".
Definition: a yellow pacifier is yellow themed: decide yes.
A sparkly princess pacifier is a kind of baby pacifier. There is 1 sparkly princess pacifier. The printed name of sparkly princess pacifier is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]sparkly princess pacifier[clothing-title-after]". The text-shortcut of sparkly princess pacifier is "spp".
Definition: a sparkly princess pacifier is royalty themed: decide yes.
Definition: a sparkly princess pacifier is heart themed: decide yes.
Definition: a sparkly princess pacifier is gem themed: decide yes.
Definition: a sparkly princess pacifier is pink themed: decide yes.
A ghost pacifier is a kind of baby pacifier. There is 1 ghost pacifier. The printed name of ghost pacifier is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]ghost pacifier[clothing-title-after]". The text-shortcut of ghost pacifier is "gpa".
Definition: a ghost pacifier is orange themed: decide yes.
Definition: a ghost pacifier is transformation-protected if the class of the player is trick-or-treater.

To say ShortDesc of (P - a pacifier):
	say "pacifier".
To say ShortDesc of (P - a cock pacifier):
	say "cock pacifier".
To say ShortDesc of (P - a sparkly princess pacifier):
	say "sparkly princess pacifier".

Carry out taking off a cursed pacifier:
	if the raw intelligence of the player > 1:
		let I be the raw intelligence of the player / 2;
		increase the stolen-intelligence of the noun by I;
		say "[bold type]You feel the [noun] [bold type]steal [if I < 3]some[otherwise]a huge amount[end if] of your intelligence as you remove it! [roman type]It's probably trying to ensure that you replace it after you have a drink...";
		decrease the raw intelligence of the player by I.

Carry out wearing a pacifier:
	if the stolen-intelligence of the noun > 0:
		increase the raw intelligence of the player by the stolen-intelligence of the noun;
		now the stolen-intelligence of the noun is 0;
		say "[bold type]As you place the [noun][bold type] back in your mouth, you feel it return your stolen intelligence![roman type][line break]".

Definition: a pacifier (called C) is uniquely reasonable: [When is it reasonable to wear even when the player has high dignity?]
	if the stolen-intelligence of C > 0, decide yes;
	decide no.

To decide which number is the initial outrage of (C - a pacifier):
	if diaper quest is 1, decide on 0;
	decide on the initial cringe of C - 2.

To decide which number is the initial cringe of (C - a pacifier):
	decide on 8.

To decide which number is the initial cringe of (C - a pink pacifier):
	decide on 9.

To decide which number is the initial cringe of (C - a ghost pacifier):
	decide on 10.

To decide which number is the initial cringe of (C - a sparkly princess pacifier):
	decide on 13.

To decide which number is the bartering value of (T - a pacifier) for (M - a matron):
	if M is friendly and incontinence <= 2, decide on 4;
	decide on 0.

To say MonsterOfferAcceptFlav of (M - a matron) to (T - a pacifier):
	say "[speech style of M]'Ooh, I'll add this to my collection. Thanks!'[roman type][line break]".

To say MonsterOfferRejectFlav of (M - a matron) to (T - a pacifier):
	say "[speech style of M]'That's for you, not me, baby!'[roman type][line break]".

Check drinking cock pacifier:
	if the noun is not worn, say "You would need to put it in first." instead.

Carry out drinking cock pacifier:
	say "You suck as hard as you can on your pacifier, triggering it to ejaculate [semen] down your throat.[line break][second custom style][if the semen taste addiction of the player > 8]Mm, that's actually pretty tasty...[otherwise][line break][first custom style]Eww. So slimy...[end if][roman type][line break]";
	StomachSemenUp 1.

Figure of cock pacifier is the file "Items/Accessories/Head/cockpacifier1.png".
Figure of pink pacifier is the file "Items/Accessories/Head/pacifier1.png".
Figure of tiger pacifier is the file "Items/Accessories/Head/pacifier2.png".
Figure of yellow pacifier is the file "Items/Accessories/Head/pacifier3.png".
Figure of sparkly princess pacifier is the file "Items/Accessories/Head/pacifier4.png".
Figure of ghost pacifier is the file "Items/Accessories/Head/pacifier5.png".

To decide which figure-name is clothing-image of (C - a cock pacifier):
	decide on figure of cock pacifier.
To decide which figure-name is clothing-image of (C - a pink pacifier):
	decide on figure of pink pacifier.
To decide which figure-name is clothing-image of (C - a tiger pacifier):
	decide on figure of tiger pacifier.
To decide which figure-name is clothing-image of (C - a yellow pacifier):
	decide on figure of yellow pacifier.
To decide which figure-name is clothing-image of (C - a sparkly princess pacifier):
	decide on figure of sparkly princess pacifier.
To decide which figure-name is clothing-image of (C - a ghost pacifier):
	decide on figure of ghost pacifier.

To say ClothingDesc of (C - a cock pacifier):
	say "This pacifier has a penis shaped sucker, [if the oral sex addiction of the player < 7]to further humiliate the wearer[otherwise]to keep you happy by letting you practice sucking [manly-penis] all the time.[end if]".

To say ClothingDesc of (C - a pink pacifier):
	say "This pink pacifier's vibrant colour makes it stand out even more than it would otherwise.".

To say ClothingDesc of (C - a tiger pacifier):
	say "This orange pacifier has a tiger face on the front.".

To say ClothingDesc of (C - a yellow pacifier):
	say "This white and yellow pacifier is more discreet than most. But it's still a pacifier, and therefore rather visible.".

To say ClothingDesc of (C - a sparkly princess pacifier):
	say "This very large purple pacifier has a heart-shaped motif of a happy princess on the front and sparkly gems adorning its edges!".

To say ClothingDesc of (C - a ghost pacifier):
	say "This large orange pacifier has a spooky ghost on the front!".

To decide which number is the strength-influence of (C - a tiger pacifier):
	let S be 2;
	increase S by the magic-modifier of C;
	decide on S.

To decide which number is the intelligence-influence of (C - a pacifier):
	decide on 0.

To compute periodic effect of (P - a pacifier):
	if diaper quest is 0 and the thirst of the player >= 5 and P is not cock pacifier:
		let C be a random off-stage cock pacifier;
		if C is cock pacifier:
			say "[bold type]Your [ShortDesc of P] [bold type]morphs in your mouth, turning into a [ShortDesc of C]! As the cock forms in your mouth, it squirts a shot of [semen] down your throat.";
			only destroy P;
			summon C cursed with quest;
			StomachSemenUp 1.

Pacifiers ends here.
