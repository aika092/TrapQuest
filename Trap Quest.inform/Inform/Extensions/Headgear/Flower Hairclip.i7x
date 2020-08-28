Flower Hairclip by Headgear begins here.

flower hairclip is a headgear. flower hairclip is satin. flower hairclip is womanly. flower hairclip is purity. Figure of flower hairclip is the file "Items/Accessories/Head/flowerhairclip1.png". flower hairclip is hair growing. flower hairclip is anal-sex-addiction-influencing. Understand "white", "rose", "clip", "hair" as flower hairclip.

Definition: flower hairclip is fluid immune: decide yes.

Definition: flower hairclip is flower themed: decide yes.
Definition: flower hairclip is white themed: decide yes.

The printed name of flower hairclip is "[clothing-title-before]flower hairclip[clothing-title-after]". The text-shortcut of flower hairclip is "fh".

To decide which figure-name is the clothing-image of (C - flower hairclip):
	decide on figure of flower hairclip.

To say ClothingDesc of (H - flower hairclip):
	say "A hairclip in the style of a beautiful white rose. You can feel some magic aura emanating from it, which seems to fill you with a feeling of carefree confidence.".

To say ShortDesc of (H - flower hairclip):
	say "hairclip".

To compute SelfExamineDesc of (H - flower hairclip):
	let X be the largeness of hair;
	say "You are wearing a hairclip fashioned as a white rose in your [ShortDesc of hair]. ".

To compute hair colour change of (H - flower hairclip):
	compute hair colour darken of H.

Chapter - Class Outfit

Definition: flower hairclip is removal-blocking:
	if wearing-target is warrior chestpiece or wearing-target is gown-of-purity, decide yes;
	decide no. [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]

warrior-summoned is a number that varies.
To compute unique recycling of (C - flower hairclip):
	now the virginity-count of virginity-retention-quest is 0;
	now warrior-summoned is 0.

To compute class outfit of (H - flower hairclip):
	let W be a random off-stage reinforced warrior chestpiece;
	let G be gown-of-purity;
	if (W is actually summonable or (W is warrior chestpiece and warrior-summoned is 0 and the number of worn warrior chestpiece is 0)) and the largeness of breasts < 18:
		if warrior-summoned < 2:
			repeat with O running through worn breast covering clothing:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
			repeat with O running through worn belly covering clothing:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
		say "[bold type]You are forced to [if the player is upright]stand[otherwise]stay[end if] still as a rigid metal chestpiece appears around you. Somehow, you now feel more in control of your urges.[roman type][line break]";
		summon W;
		now the raw-magic-modifier of W is the virginity-count of virginity-retention-quest;
		if warrior-summoned is 0, now warrior-summoned is 1;
		now W is suppression;
	otherwise if virgin magical girl outfit is not worn and the number of worn golden warrior priestess outfit is 0 and (G is actually summonable or (G is gown-of-purity and warrior-summoned < 2)):
		if warrior-summoned < 2:
			repeat with O running through worn skirt clashing clothing:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
			repeat with O running through worn exclusive corsets:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
		say "[bold type]A belt suddenly latches around you with a dull *clang*. Two strips of pure white fabric hang from the sides. You feel incredible - fuelled with extra determination and feeling more comfortable with your current situation, you surge onwards![roman type][line break]";
		summon G;
		now warrior-summoned is 2;
		now the raw-magic-modifier of G is the virginity-count of virginity-retention-quest.

To compute virginity-loss of (H - flower hairclip):
	say "As the [H] falls from your hair, you feel [if the virgin bonus of the player < 0]even more of [end if]your strength ripped from you.";
	decrease the virgin bonus of the player by 1;
	now H is in the location of the player.

To compute unique periodic effect of (H - flower hairclip):
	let C be a random worn demonic wearthing;
	if C is a thing:
		say "[bold type]Your [ShortDesc of H] reacts strongly to your [ShortDesc of C]![roman type][line break]";
		transform H into spiked-tiara.

Chapter - Quest

virginity-retention-quest is a headgear-clothing-quest. virginity-retention-quest has a number called virginity-count.

To uniquely set up (C - flower hairclip):
	now the quest of C is virginity-retention-quest.

To compute (C - flower hairclip) unique inheriting from (D - a clothing):
	uniquely set up C; [It doesn't keep the same quest.]
	let M be a random worn magical dress;
	if M is magical dress:
		transform M into virgin magical girl outfit;
		now warrior-summoned is 2.

To say QuestFlav of (Q - virginity-retention-quest):
	say "You sense it wants you to make sure you remain a virgin.".

To say QuestTitle of (Q - virginity-retention-quest):
	say " (virginity retention quest)".

To progress quest of (Q - virginity-retention-quest):
	repeat with C running through worn clothing:
		if the quest of C is Q:
			increase virginity-count of Q by 1;
			compute quest completion of Q on C.

To compute persistent reward of (Q - virginity-retention-quest) on (C - a clothing):
	if C is cursed:
		compute generic first time class reward of Q on C;
	otherwise:
		say "infusing itself with [one of]powerful magic! You feel that something good will happen when you finally remove the hairclip.[or]even more blessed magic![stopping]".

To uniquely destroy (C - a flower hairclip):
	if the virginity-count of virginity-retention-quest > 2 and the quest of C is virginity-retention-quest and the vaginalvirgin of the player is 1:
		say "You can feel the blessed magic your [ShortDesc of C] had stored within itself shoot straight into your muscles, rewarding you with [if virginity-count of virginity-retention-quest > 3]huge amounts of [end if]both strength and speed!";
		StrengthUp the virginity-count of virginity-retention-quest - 1;
		DexUp the virginity-count of virginity-retention-quest - 1.

Flower Hairclip ends here.
