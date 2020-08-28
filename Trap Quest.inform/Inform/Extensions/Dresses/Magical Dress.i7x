Magical Dress by Dresses begins here.

A magical dress is a kind of overdress. A magical dress is usually unique. A magical dress is usually silk. A magical dress is usually only arm covering. A magical dress is not-top-displacable. The text-shortcut of magical dress is "mgd". [A magical dress is usually strength-influencing.]

Definition: a magical dress is class-transformation-protected:
	if the class of the player is magical girl, decide yes;
	decide no.

To decide which number is the strength-influence of (O - a magical dress):
	let M be the magic power of the player;
	if M > 5, decide on 4;
	if M > 3, decide on 2;
	if M > 0, decide on 1;
	decide on 0.

To compute periodic effect of (H - a magical dress): [tentacle monsters grow and pop out almost instantly]
	if the pregnancy of the player is 1 and the father is tentacle monster, now maximum-pregnancy-delay-tracker is maximum-pregnancy-delay + 1.

Definition: a magical dress is magic themed: decide yes.

To decide which number is the initial outrage of (H - a magical dress):
	decide on 4.

A lolita magical dress is a kind of magical dress.

There is 1 lolita magical dress.

Figure of lolita magical dress is the file "Items/Clothes/Upper/Special/MahouShoujo/magicaldress1.png".

To decide which figure-name is the clothing-image of (O - a lolita magical dress):
	decide on figure of lolita magical dress.

The printed name of lolita magical dress is usually "[clothing-title-before]magical dress[clothing-title-after]".

To compute SelfExamineDesc of (O - a lolita magical dress):
	say "[if the top-layer of O > 1 or the mid-layer of O > 1]Over this you[otherwise]You[end if] are wearing a [ShortDesc of O]. ".

To say ShortDesc of (O - a lolita magical dress):
	say "lolita magical dress".

To say ClothingDesc of (O - a lolita magical dress):
	say "A frilly hime lolita dress that [if the thickness of hips > 5 and O is worn]would be just below knee height on a normal sized ass, but yours prevents it from sitting properly and so it only covers just beneath your rear[otherwise]is just below knee height[end if]. It is layered with bows and lace, making it incredibly innocent looking. It sparkles with an almost magical air.".

Definition: a lolita magical dress is white themed: decide yes.
Definition: a lolita magical dress is potentially erection concealing: decide yes. [non-tight skirts conceal erections]

An exposing magical dress is a kind of magical dress. An exposing magical dress is usually arm exposing. An exposing magical dress is optional-top-displacable. An exposing magical dress is chestless. An exposing magical dress is belly exposing. An exposing magical dress is unskirted.

There is 1 exposing magical dress.

Figure of exposing magical dress is the file "Items/Clothes/Upper/Special/MahouShoujo/magicaldress2.png".

To decide which figure-name is the clothing-image of (O - an exposing magical dress):
	decide on figure of exposing magical dress.

The printed name of exposing magical dress is usually "[clothing-title-before]exposing magical dress[clothing-title-after]".

To compute SelfExamineDesc of (O - an exposing magical dress):
	say "You are wearing a [ShortDesc of O]. ".

To say ShortDesc of (O - an exposing magical dress):
	say "exposing magical dress".

To say ClothingDesc of (O - an exposing magical dress):
	say "The top of a Japanese sailor uniform, but just the neckline with the bow, literally nothing else. It sits just above your chest, exposing literally everything, and yet somehow magically forbidding you from wearing much else.".

To decide which number is the initial outrage of (H - an exposing magical dress):
	decide on 10.

Definition: an exposing magical dress is nudism-enabling: decide yes.
Definition: an exposing magical dress is blue themed: decide yes.

magical-maid-outfit is a magical dress. Understand "magical", "maid", "outfit" as magical-maid-outfit. magical-maid-outfit is fully exposing. magical-maid-outfit is arm exposing. magical-maid-outfit is crotch-intact. magical-maid-outfit is unskirted. magical-maid-outfit has a number called charge. magical-maid-outfit has an object called saved-item.

Definition: magical-maid-outfit is white themed: decide yes.

Figure of magical-maid-outfit is the file "Items/Clothes/Upper/Special/MahouShoujo/magicaldress3.png".

To decide which figure-name is the clothing-image of (O - magical-maid-outfit):
	decide on figure of magical-maid-outfit.

The printed name of magical-maid-outfit is usually "[clothing-title-before]magical maid outfit[clothing-title-after]".

To compute SelfExamineDesc of (O - magical-maid-outfit):
	say "You are wearing a [ShortDesc of O]. ".

To say ShortDesc of (O - magical-maid-outfit):
	say "magical maid outfit".

To say ClothingDesc of (O - magical-maid-outfit):
	say "A white one-piece leotard with big maid-like frills all around the chest where a giant hole leaves [if O is worn]your [BreastDesc][otherwise]the wearer's chest[end if] completely exposed and a giant blue bow at the neckline makes it feel like an anime superheroine outfit.".

To decide which number is the initial outrage of (H - magical-maid-outfit):
	decide on 4.

To compute periodic effect of (O - magical-maid-outfit):
	decrease the charge of O by 1;
	if the charge of O <= 0 and the number of combative tentacle monsters is 0 and the number of embodied things penetrating a fuckhole is 0:
		let MO be chosen-maid-outfit;
		say "[bold type][BigNameDesc of O] [bold type]runs out of magical energy![roman type][line break]";
		transform O into MO;
		if the saved-item of O is clothing:
			if the saved-item of O is actually summonable:
				summon the saved-item of O;
				say "[BigNameDesc of O] reappears on you.";
			otherwise:
				now the saved-item of O is in pink wardrobe;
			now the saved-item of O is nothing.

anime superheroine top is a magical dress. anime superheroine top is pvc. anime superheroine top is neck covering. anime superheroine top is belly exposing. anime superheroine top is unskirted. anime superheroine top is top-exclusive. anime superheroine top is low cut. anime superheroine top is not-top-displacable. anime superheroine top is erect-nipple-exposing. The text-shortcut of anime superheroine top is "aso".

The printed name of anime superheroine top is "[clothing-title-before]anime superheroine top[clothing-title-after]".

Figure of anime heroine top is the file "Items/Clothes/Upper/Special/Hero/animeheroine1.png".

To decide which number is the initial cringe of (C - anime superheroine top):
	decide on 3.

To decide which figure-name is clothing-image of (C - anime superheroine top):
	decide on figure of anime heroine top.

To say ClothingDesc of (C - anime superheroine top):
	say "This red PVC top has a large heart cut out at the chest, in order to expose a lot of cleavage. It is styled in an anime fashion. [if saved-flat-intelligence > 9]You realise that the cleavage window is probably the secret to its magic power. [end if][if saved-flat-intelligence > 15]The larger your breasts, the more strength this will give you.[end if]".

To decide which number is the strength-influence of (C - anime superheroine top):
	let S be -1;
	increase S by the magic-modifier of C;
	increase S by the largeness of breasts / 3;
	decide on S.

To say ShortDesc of (C - anime superheroine top):
	say "cosplay top".
To say MediumDesc of (C - anime superheroine top):
	say "PVC anime style cosplay outfit".

Definition: anime superheroine top is heart themed: decide yes.
Definition: anime superheroine top is pink themed: decide yes.
Definition: anime superheroine top is boob themed: decide yes.
Definition: anime superheroine top is disintegration-protected: decide yes.
Definition: anime superheroine top is displacable: decide no.

Magical Dress ends here.
