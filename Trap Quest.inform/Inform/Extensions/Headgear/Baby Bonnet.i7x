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

To compute class outfit of (H - a baby bonnet):
	class summon cupcake onesie;
	class summon rubber mittens;
	gluify rubber mittens;
	unless H is rubber-baby-bonnet, class summon yellow-pacifier;
	class summon pink-baby-booties;
	gluify pink-baby-booties.

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

Definition: victorian-baby-bonnet is roleplay:
	if diaper lover >= 1, decide yes;
	decide no.

Figure of victorian baby bonnet is the file "Items/Accessories/Head/babybonnet1.png".

To decide which figure-name is the clothing-image of (C - victorian-baby-bonnet):
	decide on figure of victorian baby bonnet.

To say ClothingDesc of (H - victorian-baby-bonnet):
	say "A Victorian style pink baby bonnet, that covers the top, back and sides of your head[if H is worn]. You can sense that it is helping you remain focused and flexible, even when plagued by distracting sensations of toilet desperation[end if].".

To decide which object is the unique-upgrade-target of (H - victorian-baby-bonnet):
	decide on rubber-baby-bonnet.

To decide which number is the initial cringe of (H - victorian-baby-bonnet):
	decide on 4.

rubber-baby-bonnet is a baby bonnet. rubber-baby-bonnet is latex. The text-shortcut of rubber-baby-bonnet is "lbon".

Figure of rubber baby bonnet is the file "Items/Accessories/Head/babybonnet2.png".

To decide which figure-name is the clothing-image of (C - rubber-baby-bonnet):
	decide on figure of rubber baby bonnet.

To say ClothingDesc of (H - rubber-baby-bonnet):
	say "A fetish-focused pink baby bonnet made of rubber, that covers the top, back and sides of your head, as well as your mouth[if H is worn]. It somehow magically prevents you from speaking, but not from drinking or eating. You can sense that it is helping you remain focused and flexible, even when plagued by distracting sensations of toilet desperation[end if].".

This is the rubber baby bonnet prevents speech rule:
	if rubber-baby-bonnet is worn, rule fails.
The rubber baby bonnet prevents speech rule is listed in the player speech rules.

To decide which number is the initial cringe of (H - rubber-baby-bonnet):
	decide on 8.

Baby Bonnet ends here.
