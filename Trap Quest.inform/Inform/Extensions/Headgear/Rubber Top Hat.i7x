Rubber Top Hat by Headgear begins here.


rubber top hat is a headgear. rubber top hat is latex. rubber top hat is womanly. Figure of rubber top hat is the file "Items/Accessories/Head/tophat1.png". rubber top hat is blondeness-positive. rubber top hat is brightness-positive. rubber top hat is redness-negative. rubber top hat is hair growing. The text-shortcut of rubber top hat is "rth".


Definition: rubber top hat is roleplay if artificial enhancements fetish is 1.

The printed name of rubber top hat is "[clothing-title-before]rubber top hat[clothing-title-after]".


To decide which figure-name is the clothing-image of (C - rubber top hat):
	decide on figure of rubber top hat.

To say ClothingDesc of (H - rubber top hat):
	say "This pink rubber mini top hat is quite the novelty item for dressing up as a showgirl. It also screams a love for everything girly, fake and superficial.".

To say ShortDesc of (H - rubber top hat):
	say "mini top hat".

To compute SelfExamineDesc of (H - rubber top hat):
	say "You are wearing a pink latex top hat in your [ShortDesc of hair]. ".

To compute hair growth of (H - rubber top hat):
	let X be 0;
	if H is cursed, now X is -25;
	if H is blessed, now X is 50;
	if the largeness of hair < max hair length and a random number between 1 and (100 + X + (the fake largeness of hair * 7) - (the outrage of H * 3)) is 1 and the fake largeness of hair > 0 and the fake largeness of hair < 10:
		say "Your [printed name of H] feels warm. You feel the fake hair extensions in your hair grow in length!";
		FakeHairUp 1.

To set up influence of (C - rubber top hat):
	set up sex-based influence of C.

Definition: rubber top hat is condom pinnable: decide yes.
Definition: rubber top hat is pink themed: decide yes.

This is the top hat titfuck rule:
	if rubber top hat is worn, increase the desirability of breasts by 5.
The top hat titfuck rule is listed in the tit slut eligibility rules.


Chapter - Class Outfit

Definition: rubber top hat (called C) is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]
	if wearing-target is pink rubber dress or wearing-target is platform heels, decide yes;
	decide no.

plastic-summoned is a number that varies.
To compute unique recycling of (C - rubber top hat):
	now plastic-summoned is 0.

To compute class outfit of (H - rubber top hat):
	let R be a random off-stage pink rubber dress;
	let P be a random off-stage plentiful platform heels; [there are some rare ones we don't want]
	if R is actually summonable or (R is pink rubber dress and plastic-summoned is 0):
		if plastic-summoned is 0:
			repeat with O running through worn dresses:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
			repeat with O running through worn exclusive corsets:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
			repeat with O running through worn skirted clothing:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
		say "[bold type]Your [printed name of H] wobbles violently, and a tight rubber pink dress materialises around you.[roman type][line break]";
		summon R uncursed;
		now the raw-magic-modifier of R is the largeness of breasts / 4;
		if the silicone volume of breasts is 0 and the player is not top heavy:
			let B be the largeness of breasts;
			while B is the largeness of breasts:
				BustImplantsUp 1;
			say "[bold type]You feel and hear your tits expanding like stretchy rubber until they are [BreastDesc]![roman type] Touching and feeling them, you can definitely feel tight, less squishy areas below the nipple. Somehow, your new dress has summoned breast implants inside of your boobs!";
		now plastic-summoned is 1;
	otherwise if the class of the player is silicone queen and P is actually summonable:
		summon P uncursed;
		now P is pvc;
		now the heel-height of P is 4;
		if the silicone volume of breasts + a random number between 1 and 10 > 10, now P is speed;
		otherwise now P is unowned;
		say "[bold type][if the player is upright]You suddenly shoot four inches upwards off the ground![otherwise]The soles of your feet are forced into an arch![end if][roman type][line break]A pair of [printed name of P] have appeared on your feet.";
	otherwise if the class of the player is silicone queen and the total weighty volume of hips < max ass size and the silicone volume of hips is 0:
		AssImplantsUp 1;
		say "[bold type]You feel and hear your ass expanding like stretchy rubber! Touching and feeling it, you can feel a tight, less squishy area in each cheek. Somehow, your dress has also summoned implants into your ass![roman type][line break]".


Chapter - Quest

titfuck-desirability-quest is a headgear-clothing-quest.

To uniquely set up (C - rubber top hat):
	now the quest of C is titfuck-desirability-quest.

To say QuestFlav of (Q - titfuck-desirability-quest):
	say "You sense it wants people to choose to grope or fuck your tits without you suggesting it yourself.".

To say QuestTitle of (Q - titfuck-desirability-quest):
	say " (fuckable tits quest)".

To compute generic first time class reward of (Q - titfuck-desirability-quest) on (C - a clothing):
	let D be a random off-stage ring;
	if D is ring:
		now D is ruby;
		set shortcut of D;
		if D is actually summonable:
			summon D;
		otherwise:
			now D is in the location of the player;
		say "summoning a [MediumDesc of D] [if D is worn]straight onto your finger[otherwise]right in front of you[end if]!";
	otherwise:
		compute generic second time class reward of Q on C.


Rubber Top Hat ends here.

