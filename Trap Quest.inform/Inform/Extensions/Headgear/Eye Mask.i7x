Eye Mask by Headgear begins here.

eye-mask is a headgear. eye-mask is plastic. eye-mask is redness-positive. eye-mask is hair growing. eye-mask is zap ready. Understand "eye", "mask" as eye-mask. eye-mask has a number called charge.

Figure of eye-mask is the file "Items/Accessories/Head/eyemask1.png".

The printed name of eye-mask is "[clothing-title-before]eye mask[clothing-title-after]". The text-shortcut of eye-mask is "emsk".

To decide which figure-name is the clothing-image of (C - eye-mask):
	decide on figure of eye-mask.

To say ClothingDesc of (H - eye-mask):
	say "This black domino mask covers only the areas around your eyes, but for some reason you feel confident that this will adequately conceal your identity.".

To say ShortDesc of (H - eye-mask):
	say "mask".

Definition: eye-mask is magic themed: decide no. [usually zappable things are magic themed]

To decide which number is the zap damage improvement of (W - eye-mask):
	decide on 5 + the charge of eye-mask + the magic-modifier of eye-mask.

To compute attack of (W - eye-mask) at (M - a monster):
	say "[one of]Using your new super power, you feel energy surging to your pupils! In the next moment, everything turns red as two beams of concentrated light are travelling directly along your line of vision, hitting [NameDesc of M] and visibly burning [him of M]! Wow!!![or]You send twin laser rays from your eyes to [NameDesc of M], burning [him of M][if the charge of W <= 2]. [bold type]But since you used your laser eyes so recently, it's significantly weaker than usual.[roman type][line break][otherwise]![end if][stopping]".

To compute spell consequences of (W - eye-mask):
	now the charge of eye-mask is 0.

To compute class outfit of (H - eye-mask):
	class summon superheroine outfit.

hero-quest is a headgear-clothing-quest.
To uniquely set up (C - eye-mask):
	now C is strength-influencing;
	now the quest of C is hero-quest.

To say QuestFlav of (Q - hero-quest):
	say "You sense it wants you to [if eye-mask is cursed]fight and defeat the villain without[otherwise]avoid[end if] getting unmasked in front of people you know.".

To say QuestTitle of (Q - hero-quest):
	say " (masked quest)".

To compute unique periodic effect of (H - eye-mask):
	if the charge of eye-mask < 10, increase the charge of eye-mask by 1;
	if H is cursed:
		let V be a random video-monitor in the location of the player;
		if V is nothing or the video-caller of V is the throne, progress quest of hero-quest. [not in a call]



Eye Mask ends here.
