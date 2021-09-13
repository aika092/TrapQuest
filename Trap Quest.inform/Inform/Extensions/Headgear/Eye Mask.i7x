Eye Mask by Headgear begins here.

eye-mask is a kind of headgear.

To say ShortDesc of (H - an eye-mask):
	say "mask".

domino-mask is an eye-mask. domino-mask is plastic. domino-mask is redness-positive. domino-mask is hair growing. domino-mask is zap ready. Understand "domino", "mask" as domino-mask. domino-mask has a number called charge.

Figure of domino-mask is the file "Items/Accessories/Head/eyemask1.png".

The printed name of domino-mask is "[clothing-title-before]domino mask[clothing-title-after]". The text-shortcut of domino-mask is "dmsk".

To decide which figure-name is the clothing-image of (C - domino-mask):
	decide on figure of domino-mask.

To say ClothingDesc of (H - domino-mask):
	say "This black domino mask covers only the areas around your eyes, but for some reason you feel confident that this will adequately conceal your identity.".

Definition: domino-mask is magic themed: decide no. [usually zappable things are magic themed]
Definition: domino-mask is hand ready: decide no. [usually zap ready things are flagged as hand ready]

To decide which number is the zap damage improvement of (W - domino-mask):
	decide on 5 + the charge of domino-mask + the magic-modifier of domino-mask.

To compute attack of (W - domino-mask) at (M - a monster):
	say "[one of]Using your new superpower, you feel energy surging to your pupils! In the next moment, everything turns red as two beams of concentrated light travel directly along your line of vision, hitting [NameDesc of M] and visibly burning [him of M]! Wow!!![or]You send twin laser rays from your eyes to [NameDesc of M], burning [him of M][if the charge of W <= 2]. [bold type]But since you used your laser eyes so recently, it's significantly weaker than usual.[roman type][line break][otherwise]![end if][stopping]".

To compute spell consequences of (W - domino-mask):
	now the charge of domino-mask is 0.

To compute class outfit of (H - domino-mask):
	class summon superheroine outfit.

hero-quest is a headgear-clothing-quest.
To uniquely set up (C - domino-mask):
	now C is strength-influencing;
	now the quest of C is hero-quest.

To say QuestFlav of (Q - hero-quest):
	say "You sense it wants you to [if domino-mask is cursed]fight and defeat the villain without[otherwise]avoid[end if] getting unmasked in front of people you know.".

To say QuestTitle of (Q - hero-quest):
	say " (masked quest)".

To compute unique periodic effect of (H - domino-mask):
	if the charge of domino-mask < 10, increase the charge of domino-mask by 1;
	if H is cursed:
		let V be a random video-monitor in the location of the player;
		if V is nothing or the video-caller of V is the throne, progress quest of hero-quest. [not in a call]


wrestler-hood is an eye-mask. wrestler-hood is plastic. wrestler-hood is redness-positive. wrestler-hood is hair growing. wrestler-hood is zap ready. Understand "wrestler", "hood" as wrestler-hood. wrestler-hood has a number called charge.

Figure of wrestler-hood is the file "Items/Accessories/Head/wrestlerhood1.png".

The printed name of wrestler-hood is "[clothing-title-before]wrestler hood[clothing-title-after]". The text-shortcut of wrestler-hood is "whod".

To decide which figure-name is the clothing-image of (C - wrestler-hood):
	decide on figure of wrestler-hood.

To say ClothingDesc of (H - wrestler-hood):
	say "This black and purple mask with in-built cat ears covers your eyes and nose.".

Definition: wrestler-hood is black themed: decide yes.
Definition: wrestler-hood is purple themed: decide yes.
Definition: wrestler-hood is cat themed: decide yes.

To compute class outfit of (H - wrestler-hood):
	class summon wrestler-jumpsuit.

This is the wrestler hood butt slut rule:
	if wrestler-hood is worn and current-monster is dominatrix, increase the desirability of asshole by 9999999.
The wrestler hood butt slut rule is listed in the butt slut eligibility rules.

dominatrix-quest is a headgear-clothing-quest.
To uniquely set up (C - wrestler-hood):
	now the quest of C is dominatrix-quest.

To say QuestFlav of (Q - dominatrix-quest):
	say "You sense it wants you to either satisfy the dominatrix, or banish [him of dominatrix].".

To say QuestTitle of (Q - dominatrix-quest):
	say " (dominatrix service quest)".



Eye Mask ends here.
