Baby Bonnet by Headgear begins here.

A baby bonnet is a kind of headgear. A baby bonnet is blondeness-negative. A baby bonnet is brightness-negative. A baby bonnet is redness-negative. A baby bonnet is usually hair growing. A baby bonnet is womanly. A baby bonnet is usually diaper-addiction-influencing. Understand "baby", "bonnet" as a baby bonnet. The printed name of baby bonnet is usually "[clothing-title-before][clothing-material of item described] baby bonnet[clothing-title-after]".

Definition: a baby bonnet is baby themed: decide yes.
Definition: a baby bonnet is pink themed: decide yes.

To say ShortDesc of (H - a baby bonnet):
	say "pink baby bonnet".

To compute SelfExamineDesc of (H - a baby bonnet):
	let X be the largeness of hair;
	say "You are wearing a pink baby bonnet which [if the largeness of hair < 6]completely[otherwise if the largeness of hair < 8]mostly[otherwise]only partially[end if] covers your [ShortDesc of hair]. ".

Definition: a baby bonnet is condom pinnable: decide yes.

Part - Class Outfit


Definition: a baby bonnet is removal-blocking if wearing-target is onesie or wearing-target is mittens or wearing-target is baby booties. [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]

baby-summoned is a number that varies.
To compute unique recycling of (C - a baby bonnet):
	now baby-summoned is 0.

To compute class outfit of (H - a baby bonnet):
	let O be a random off-stage onesie;
	let M be a random off-stage rubber mittens;
	let P be nothing;
	let B be a random off-stage baby booties;
	if there is a worn mittens and there is a worn baby booties and a random tiger pacifier is off-stage:
		now P is a random tiger pacifier;
	otherwise if there is an off-stage yellow pacifier:
		now P is a random yellow pacifier;
	otherwise if there is an off-stage pink pacifier:
		now P is a random pink pacifier;
	if O is actually summonable or (O is onesie and baby-summoned is 0 and the number of worn onesie is 0):
		if baby-summoned is 0:
			repeat with D running through worn dresses:
				say "Your [D] [wardrobeVanishes of D]!";
				now D is in pink wardrobe;
			repeat with D running through worn corsets:
				say "Your [D] [wardrobeVanishes of D]!";
				now D is in pink wardrobe;
		say "[bold type]Your bonnet flutters in an invisible wind as a warm, thick onesie appears over you, encasing your torso and limbs in its soft fabric.[roman type][line break]";
		summon O;
		now the raw-magic-modifier of O is 0;
		let D be a random worn diaper;
		if D is diaper:
			increase the raw-magic-modifier of O by 1;
			if the urine-soak of D > 0, increase the raw-magic-modifier of O by 1;
			if D is messed, increase the raw-magic-modifier of O by 1;
		now baby-summoned is 1;
	otherwise if M is actually summonable:
		say "[bold type]Your bonnet flutters in an invisible wind as large, round mittens appear around your hands.[roman type][line break]";
		summon M;
		now the raw-magic-modifier of M is 0;
	otherwise if B is actually summonable:
		say "[bold type]Your bonnet flutters in an invisible wind as soft pink booties appear around your feet.[roman type][line break]";
		summon B;
		now the raw-magic-modifier of B is 0;
	otherwise if P is actually summonable:
		if the semen taste addiction of the player > 11:
			now P is a random cock pacifier;
			say "[bold type]Your bonnet flutters in an invisible wind as a penis shaped pacifier suddenly appears out of nowhere and forces its way into your mouth![roman type][line break]";
		otherwise:
			say "[bold type]Your bonnet flutters in an invisible wind as a pacifier suddenly appears out of nowhere and forces its way into your mouth![roman type][line break]";
		summon P cursed;
		now the raw-magic-modifier of P is 0.




Part - Quest


adult-baby-quest is a headgear-clothing-quest.

To uniquely set up (C - a baby bonnet):
	now the quest of C is adult-baby-quest.

To say QuestFlav of (Q - adult-baby-quest):
	say "You sense that it wants you to hold your [if diaper messing >= 3]bladder and bowels[otherwise]pee[end if] until it becomes outside of your control.".

To say QuestTitle of (Q - adult-baby-quest):
	say " (incontinence quest)".


Part - Variations

victorian-baby-bonnet is a baby bonnet. The text-shortcut of victorian-baby-bonnet is "vbon".

Definition: victorian-baby-bonnet is roleplay if diaper lover >= 1.

Figure of victorian baby bonnet is the file "Items/Accessories/Head/babybonnet1.png".

To decide which figure-name is the clothing-image of (C - victorian-baby-bonnet):
	decide on figure of victorian baby bonnet.

To say ClothingDesc of (H - victorian-baby-bonnet):
	say "A Victorian style pink baby bonnet, that covers the top, back and sides of your head.".

To decide which object is the unique-upgrade-target of (H - victorian-baby-bonnet):
	decide on rubber-baby-bonnet.

rubber-baby-bonnet is a baby bonnet. The text-shortcut of rubber-baby-bonnet is "lbon".

Figure of rubber baby bonnet is the file "Items/Accessories/Head/babybonnet2.png".

To decide which figure-name is the clothing-image of (C - rubber-baby-bonnet):
	decide on figure of rubber baby bonnet.

To say ClothingDesc of (H - rubber-baby-bonnet):
	say "A fetish-focused pink baby bonnet made of rubber, that covers the top, back and sides of your head, as well as your mouth.".

This is the rubber baby bonnet prevents speech rule:
	if rubber-baby-bonnet is worn, rule fails.
The rubber baby bonnet prevents speech rule is listed in the player speech rules.






Baby Bonnet ends here.

