Hoods by Headgear begins here.


A hood is a kind of headgear. A hood is usually latex. A hood is usually manly. A hood is usually roleplay. A black hood is a kind of hood. A black hood is usually strength-influencing. A black hood is usually dexterity-influencing. A white hood is a kind of hood. There is 1 black hood. There is 1 white hood. Figure of latex hood is the file "Items/Accessories/Head/latexhood1.png". Figure of WC hood is the file "Items/Accessories/Head/WcLatexHood.png". A hood is usually oral-sex-addiction-influencing. A white hood is usually urine-taste-addiction-influencing.

Definition: a hood (called C) is ringagged:
	decide yes.

The printed name of hood is usually "[TQlink of item described][clothing-title-before]latex hood[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of hood is "lh".

hood wearability rules is a rulebook. The wearability rules of a hood is the hood wearability rules.

The headgear already worn rule is listed in the hood wearability rules.

This is the opengag exclusivity rule:
	if there is a worn ringagged clothing and wearing-target is ringagged:
		if summoning is 0, say "You can't wear that because you're already wearing the [printed name of a random worn opengag]!";
		rule fails.
The opengag exclusivity rule is listed in the hood wearability rules.

To decide which figure-name is the clothing-image of (C - a hood):
	if C is white hood, decide on figure of WC hood;
	decide on figure of latex hood.

To say ClothingDesc of (H - a black hood):
	say "This black latex hood completely covers your head, and only has holes for your eyes, your nostrils, [if the player is pigtailed or the player is ponytailed]your hair, [end if]and your mouth. The mouth hole is fitted with an O-ring tube gag, which keeps your mouth wide open and prevents you from speaking properly. Anyone could put anything into your mouth that they wanted, even a penis or another gag.".

To say ClothingDesc of (H - a white hood):
	say "This white latex hood completely covers your head, and only has holes for your eyes, your nostrils, [if the player is pigtailed or the player is ponytailed]your hair, [end if]and your mouth. The mouth hole is fitted with an O-ring tube gag, which keeps your mouth wide open and prevents you from speaking properly. Anyone could put anything into your mouth that they wanted, even a penis or another gag.".

To say ShortDesc of (H - a hood):
	say "latex hood".
To say ShortDesc of (H - a black hood):
	say "black latex hood".
To say ShortDesc of (H - a white hood):
	say "white latex hood".

To compute SelfExamineDesc of (H - a hood):
	say "You are wearing a bondage style latex hood. ".

Definition: a black hood (called C) is product:
	decide yes.

To decide which number is the alchemy key of (C - a black hood):
	decide on 20.

Definition: a black hood (called C) is recipe specific:
	decide yes.

This is the hood specific recipe rule:
	now the Product in row 33 of the Table of Alchemy is 20;
	now the Recipe in row 33 of the Table of Alchemy is 1.
The hood specific recipe rule is listed in the specific recipe rules.

To compute recipe specific cursing of (T - a hood):
	now T is bland;
	if the noun is not latex clothing, now T is stumbling.

To decide which number is the dexterity-influence of (H - a hood):
	let D be 0;
	if the class of the player is latex fetish model:
		repeat with L running through cursed latex clothing worn by the player:
			unless L is H, increase D by 3;
	decide on D.

To decide which number is the strength-influence of (H - a black hood):
	let S be 0;
	if the class of the player is latex fetish model:
		if there is a worn cursed wrist bond, increase S by 3;
		if there is a worn cursed ankle bond, increase S by 3;
		if there is a worn cursed ballgag, increase S by 2;
		if there is a worn cursed chastity cage, increase S by 2;
		if there is a worn cursed sex toy penetrating asshole, increase S by 2;
		if there is a worn cursed ass plugging clothing, increase S by 2;
	decide on S.

To decide which number is the initial outrage of (C - a hood):
	decide on 10.

Carry out wearing hood:
	if the player is not gagged, say "Your mouth is forced wide open by the gag ring.";
	curse the noun;

To say MonsterOfferRejectFlav of (M - a wrestler) to (T - a hood):
	say "[speech style of M]'I've already got one of those, silly!'[roman type][line break]".

toilet-summoned is a number that varies.

To decide which number is the outfit threshold of (H - a white hood):
	decide on 75. [this takes longer than most because it's also automatically triggered each time the player drinks urine]

To compute class outfit of (H - a white hood):
	let C be a random off-stage WC catsuit;
	let B be a random off-stage WC thigh high boots;
	let P be a random off-stage WC plug panties;
	if C is actually summonable or (C is catsuit and toilet-summoned is 0):
		if toilet-summoned is 0:
			repeat with O running through worn dresses:
				say "Your [O] vanishes!";
				destroy O;
			repeat with O running through worn skirts:
				say "Your [O] vanishes!";
				destroy O;
			repeat with O running through worn bras:
				say "Your [O] vanishes!";
				destroy O;
		say "[bold type]Your hood pulses once, and then a white catsuit materialises over your body!  [line break][variable custom style][if the humiliation of the player < 27500]Holy crap, is this icon on the front what I think it is?![otherwise]Oh, I get what this icon on the front means. I'm a human toilet now![end if][roman type][line break]";
		summon C cursed;
		now the raw-magic-modifier of C is 0;
		if toilet-summoned is 0, now toilet-summoned is 1;
	otherwise if B is actually summonable or (B is boots and toilet-summoned < 2):
		if toilet-summoned < 2:
			repeat with O running through worn shoes:
				say "Your [O] vanishes!";
				destroy O;
		say "[bold type]Your hood pulses once, and then a pair of white latex thigh high boots appear on your feet![roman type][line break]";
		summon B cursed;
		now the raw-magic-modifier of B is 0;
		if toilet-summoned < 2, now toilet-summoned is 2;
	otherwise if P is actually summonable or (P is knickers and toilet-summoned < 3 and asshole is not actually occupied and vagina is not actually occupied):
		if toilet-summoned < 3:
			repeat with K running through worn knickers:
				say "Your [K] vanishes!";
				destroy K;
		say "[bold type]Your hood pulses once, and then a pair of white plug panties appear on (and in) you![roman type][line break]";
		summon P cursed;
		now toilet-summoned is 3;
		now the raw-magic-modifier of P is 0.


To set up influence of (C - a white hood):
	now C is urine-taste-addiction-influencing.


[trainee hood; obtained from senior bellboy]
A trainee hood is a kind of hood. There is 1 trainee hood. A trainee hood has a number called training-progress. The training-progress of a trainee hood is usually 0. A trainee hood can be magnetized. A trainee hood is usually magnetized. A trainee hood is usually unique. The printed name of trainee hood is usually "[TQlink of item described][item style]trainee hood[clothing-title-after][TQxlink of item described][verb-desc of item described]".

To say ClothingDesc of (H - a trainee hood):
	say "This silicone hood completely covers your head, with holes only for your eyes, nostrils, [if the player is pigtailed or the player is ponytailed]your hair, [end if]and your mouth. Padding underneath your cheekbones and around your lips gives you an exaggerated feminine appearance. The mouth hole is fitted with an O-ring tube gag, which keeps your mouth wide open for anything someone might want to put in there. Metal accents make the hood seem futuristic and high-tech, containing magnetic sensors that keep it in place with a surprising amount of security.".

To decide which number is the perceived-bimbo-influence of (C - a trainee hood):
	decide on 2.

trainee hood removability rules is a rulebook. The removability rules of trainee hood is usually trainee hood removability rules.

This is the magnetized trainee hood can't be removed rule:
	if the noun is magnetized:
		if summoning is 0, say "The magnetic latches keep the [printed name of the noun] all but immobile. You[']ll need to find a way to deactivate it if you want to get it off.";
		rule fails.
The magnetized trainee hood can't be removed rule is listed in the trainee hood removability rules.

Report wearing trainee hood:
	say "The magnetic latches snap closed as you finish putting it on.";
	now the noun is magnetized.

To compute class outfit of (H - a trainee hood):[TODO: improve]
	if the training-progress of H is 3:
		LipsUp 3;
		say "The [printed name of H] emits four short tones, and falls off your face. You can still feel the heavy lips resting on your face, but when you move to peel them of, you realize they've merged fully with your skin! You now have [LipDesc]!";
		DelicateUp 2;
		now the training-progress of H is 0;
		only destroy H;
		ProgressUp senior robobellboy;
	otherwise if face is not actually occupied:
		say "The [printed name of H] emits a short tone and the metal ring collapses, forcing your lips shut as your mouth fills with thick, sweet smelling smoke. You [if the bimbo of the player > 13]breath in happily, knowing that whatever it is, it[']ll do something fun! The silicon lips slowly open after a few seconds, hugging even tighter to the real ones underneath.[otherwise if the bimbo of the player > 9]breath in cautiously, knowing your airway is too restricted to have any choice. A funny feeling lingers at the back of your throat as the silicon lips slowly open again, subtly hugging tighter to the real ones underneath[otherwise]hold your breath desperately, but with your restricted airway you have no choice but to breath in, coughing reflexively as the silicon lips slowly open again, subtly hugging tighter to the real ones underneath.[end if].";
		FaceUp 1;
		SemenTasteAddictUp 1;
		increase the training-progress of H by 1.

To demagnetise (C - a clothing):[Do not call this function unless you know it is a magnetic item.]
	say "The [C] emits a sharp tone and the magnetic latches snap open!";
	now the noun is not magnetized.

Definition: a hood (called C) is condom pinnable:
	decide yes.

Hoods ends here.

