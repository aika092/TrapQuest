Pacifiers by Bondage begins here.

A pacifier is a kind of ballgag.  The text-shortcut of pacifier is "pac".
A pacifier has a number called stolen-intelligence.
Definition: a pacifier (called C) is curse-sticky:
	decide no.
Definition: A pacifier (called P) is fetish appropriate:
	decide yes.
Definition: A baby pacifier (called P) is fetish appropriate:
	if diaper lover is 0, decide no;
	decide yes.
Definition: A cock pacifier (called P) is fetish appropriate:
	if diaper quest is 1, decide no;
	decide yes.

A cock pacifier is a kind of pacifier.  There is 1 cock pacifier.  The printed name of cock pacifier is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]cock pacifier[clothing-title-after][TQxlink of item described][verb-desc of item described]".  The text-shortcut of cock pacifier is "cpc".
A baby pacifier is a kind of pacifier.
A pink pacifier is a kind of baby pacifier.  There is 1 pink pacifier.  The printed name of pink pacifier is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]pink pacifier[clothing-title-after][TQxlink of item described][verb-desc of item described]".  The text-shortcut of pink pacifier is "ppa".
A tiger pacifier is a kind of baby pacifier.  There is 1 tiger pacifier.  The printed name of tiger pacifier is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]tiger pacifier[clothing-title-after][TQxlink of item described][verb-desc of item described]".  The text-shortcut of tiger pacifier is "tpa".
A white pacifier is a kind of baby pacifier.  There is 1 white pacifier.  The printed name of white pacifier is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]white pacifier[clothing-title-after][TQxlink of item described][verb-desc of item described]".  The text-shortcut of white pacifier is "wpa".
A sparkly princess pacifier is a kind of baby pacifier.  There is 1 sparkly princess pacifier.  The printed name of sparkly princess pacifier is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]sparkly princess pacifier[clothing-title-after][TQxlink of item described][verb-desc of item described]".  The text-shortcut of sparkly princess pacifier is "spp".

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
		say "[bold type]You feel the [noun] [bold type]steal [if I < 3]some[otherwise]a huge amount[end if] of your intelligence as you remove it!  [roman type]It's probably trying to ensure that you replace it after you have a drink...";
		decrease the raw intelligence of the player by I.

Carry out wearing a pacifier:
	if the stolen-intelligence of the noun > 0:
		increase the raw intelligence of the player by the stolen-intelligence of the noun;
		now the stolen-intelligence of the noun is 0;
		say "[bold type]As you place the [noun][bold type] back in your mouth, you feel it return your stolen intelligence![roman type][line break]".

To decide which number is the initial outrage of (C - a pacifier):
	if diaper quest is 1, decide on 0;
	decide on 7.
To decide which number is the initial cringe of (C - a pacifier):
	decide on 10.

To decide which number is the initial outrage of (C - a sparkly princess pacifier):
	if diaper quest is 1, decide on 0;
	decide on 10.
To decide which number is the initial cringe of (C - a sparkly princess pacifier):
	decide on 14.

To decide which number is the bartering value of (T - a pacifier) for (M - a matron):
	if M is friendly and incontinence <= 2, decide on 4;
	decide on 0.

To say MonsterOfferAcceptFlav of (M - a matron) to (T - a pacifier):
	say "[speech style of M]'Ooh, I'll add this to my collection.  Thanks!'[roman type][line break]".

To say MonsterOfferRejectFlav of (M - a matron) to (T - a pacifier):
	say "[speech style of M]'That's for you, not me, baby!'[roman type][line break]".

Check drinking cock pacifier:
	if the noun is not worn, say "You would need to put it in first." instead.

Carry out drinking cock pacifier:
	say "You suck as hard as you can on your pacifier, triggering it to ejaculate [semen] down your throat.[line break][second custom style][if the semen taste addiction of the player > 8]Mm, that's actually pretty tasty...[otherwise][first custom style]Eww.  So slimy...[end if][roman type][line break]";
	StomachSemenUp 1.

Figure of cock pacifier is the file "cockpacifier1.png".
Figure of pink pacifier is the file "pacifier1.png".
Figure of tiger pacifier is the file "pacifier2.png".
Figure of white pacifier is the file "pacifier3.png".
Figure of sparkly princess pacifier is the file "pacifier4.png".

To decide which figure-name is clothing-image of (C - a cock pacifier):
	decide on figure of cock pacifier.
To decide which figure-name is clothing-image of (C - a pink pacifier):
	decide on figure of pink pacifier.
To decide which figure-name is clothing-image of (C - a tiger pacifier):
	decide on figure of tiger pacifier.
To decide which figure-name is clothing-image of (C - a white pacifier):
	decide on figure of white pacifier.
To decide which figure-name is clothing-image of (C - a sparkly princess pacifier):
	decide on figure of sparkly princess pacifier.

To say ClothingDesc of (C - a cock pacifier):
	say "This pacifier has a penis shaped sucker, [if the oral sex addiction of the player < 7]to further humiliate the wearer[otherwise]to keep you happy by letting you practice sucking [manly-penis] all the time.[end if]".

To say ClothingDesc of (C - a pink pacifier):
	say "This pink pacifier says 'Baby GIRL' on the front.".

To say ClothingDesc of (C - a tiger pacifier):
	say "This orange pacifier has a tiger face on the front.".

To say ClothingDesc of (C - a white pacifier):
	say "This white and blue pacifier has a [if lactation fetish is 1]sort of milky[otherwise]cloudy[end if] pattern on the front.".

To say ClothingDesc of (C - a sparkly princess pacifier):
	say "This very large purple pacifier has a heart-shaped motif of a happy princess on the front and sparkly gems adorning its edges!".

To decide which object is the potential-upgrade-target of (C - a white pacifier):
	decide on a random off-stage pink pacifier.
To decide which object is the potential-upgrade-target of (C - a pink pacifier):
	decide on a random off-stage sparkly princess pacifier.

Definition: a baby pacifier (called C) is untransformable:
	if the potential-upgrade-target of C is clothing, decide no;
	decide yes.

To decide which number is the strength-influence of (C - a tiger pacifier):
	let S be 2;
	increase S by the magic-modifier of C;
	decide on S.

To compute periodic effect of (P - a pacifier):
	if diaper quest is 0 and the thirst of the player >= 5 and P is not cock pacifier:
		let C be a random off-stage cock pacifier;
		if C is cock pacifier:
			summon C cursed;
			say "[bold type]Your [P] [bold type]morphs in your mouth, turning into a [C]!  As the cock forms in your mouth, it squirts a shot of [semen] down your throat.";
			only destroy P;
			StomachSemenUp 1.


Pacifiers ends here.
