Rubber Top Hat by Headgear begins here.

rubber top hat is a headgear. rubber top hat is latex. rubber top hat is womanly. Figure of rubber top hat is the file "Items/Accessories/Head/tophat1.png". rubber top hat is blondeness-positive. rubber top hat is brightness-positive. rubber top hat is redness-negative. rubber top hat is hair growing. The text-shortcut of rubber top hat is "rth".

Definition: rubber top hat is roleplay:
	if artificial enhancements fetish is 1, decide yes;
	decide no.

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

Chapter - Class Outfit

To compute class outfit of (H - rubber top hat):
	class summon plastic-is-fantastic dress;
	class summon pvc-platform-heels;
	class summon spike-collar.

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
