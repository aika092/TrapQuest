Hoods by Headgear begins here.

A hood is a kind of headgear. A hood is usually latex. A hood is usually manly. Figure of latex hood is the file "Items/Accessories/Head/latexhood1.png". A hood is usually oral-sex-addiction-influencing.

Definition: a hood is ringagged: decide yes.

The printed name of hood is usually "[clothing-title-before]latex hood[clothing-title-after]". The text-shortcut of hood is "lh".

hood wearability rules is a rulebook. The wearability rules of a hood is the hood wearability rules.

The headgear already worn rule is listed in the hood wearability rules.

This is the opengag exclusivity rule:
	if there is a worn ringagged clothing and wearing-target is ringagged:
		if summoning is 0 and autowear is false, say "You can't wear that because you're already wearing the [printed name of a random worn opengag]!";
		rule fails.
The opengag exclusivity rule is listed in the hood wearability rules.

To decide which figure-name is the clothing-image of (C - a hood):
	decide on figure of latex hood.

To say ShortDesc of (H - a hood):
	say "latex hood".

To compute SelfExamineDesc of (H - a hood):
	say "You are wearing a bondage style latex hood. ".

To decide which number is the dexterity-influence of (H - a hood):
	let D be 0;
	if the class of the player is latex fetish model:
		repeat with L running through cursed latex clothing worn by the player:
			unless L is H, increase D by 3;
	decide on D.

To decide which number is the initial outrage of (C - a hood):
	decide on 13.

Carry out wearing hood:
	if the player is not gagged and the noun is ringagged, say "Your mouth is forced wide open by the gag ring.";
	curse the noun;

To say MonsterOfferRejectFlav of (M - a wrestler) to (T - a hood):
	say "[speech style of M]'I've already got one of those, silly!'[roman type][line break]".

Definition: a hood is condom pinnable: decide yes.

Part - Black Hood

black hood is a hood. black hood is dexterity-influencing. black hood is roleplay.

The printed name of black hood is "[clothing-title-before]black latex hood[clothing-title-after]". The text-shortcut of hood is "blh".

Definition: black hood is product: decide yes.
Definition: black hood is black themed: decide yes.

To decide which number is the alchemy key of (C - black hood):
	decide on 20.

Definition: black hood is fetish appropriate:
	if diaper quest is 0, decide yes;
	decide no.

To compute recipe specific cursing of (T - a headgear):
	now T is cursed; [As it is headgear, it needs to always be cursed upon creation. So instead the punishment for it being the wrong recipe is that it gets the 'stumbling' attribute]
	let K be the alchemy key of T;
	if Recipe corresponding to an Ingredient of current-crafting-key in the Table of Alchemy is 0:
		now T is stumbling;
	otherwise:
		let I be the intelligence of the player;
		increase I by (the number of worn blue scrunchies + alchemyskill of the player) * 8;
		if the recipe of K is memorised, increase I by 5;
		let R be a random number between 1 and I;
		if R > 15:
			now T is speed;
		otherwise:
			now T is blandness.

To decide which number is the strength-influence of (H - black hood):
	let S be 0;
	if the class of the player is latex fetish model, increase S by 2 * the number of worn bondage;
	decide on S.

To say ShortDesc of (H - black hood):
	say "black latex hood".

To say ClothingDesc of (H - black hood):
	say "This black latex hood completely covers your head, and only has holes for your eyes, your nostrils, [if the player is pigtailed or the player is ponytailed]your hair, [end if]and your mouth. The mouth hole is fitted with an O-ring tube gag, which keeps your mouth wide open and prevents you from speaking properly. Anyone could put anything into your mouth that they wanted, even a penis or a more conventional gag[if H is worn and H is cursed and there is a worn cursed catsuit]. The bottom of the hood has merged with your catsuit.[end if]".

Chapter - Class Outfit

Definition: black hood (called C) is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]
	if wearing-target is latex and wearing-target is not C, decide yes;
	decide no.

Chapter - Quest

just-wait-quest is a headgear-clothing-quest. just-wait-quest has a number called main-reward. just-wait-quest has a number called wait-count.

Definition: just-wait-quest is school-disabled: decide yes.

To compute unique recycling of (C - black hood):
	now the wait-count of just-wait-quest is 0;
	now the main-reward of just-wait-quest is 0.

To uniquely set up (C - black hood):
	if the main-reward of just-wait-quest is 0, now the quest of C is just-wait-quest.

To say QuestFlav of (Q - just-wait-quest):
	say "You sense that it wants you to just spend some time wearing your current outfit without purposefully changing anything.".

To say QuestTitle of (Q - just-wait-quest):
	say " (no wardrobe changes quest)".

To compute unique periodic effect of (H - black hood):
	if the quest of H is just-wait-quest:
		unless the player is in a bossed room or playerRegion is school:
			increase the wait-count of just-wait-quest by 1;
			if the wait-count of just-wait-quest > a random number between (30 + (latex prisoner * 30)) and 1000:
				progress quest of just-wait-quest;
				now the wait-count of just-wait-quest is 0.

To compute persistent reward of (Q - just-wait-quest) on (C - a clothing):
	if the main-reward of Q is 0:
		compute generic first time class reward of Q on C;
		now the main-reward of Q is 1;
	otherwise if the main-reward of Q < 2:
		compute generic second time class reward of Q on C;
		now the main-reward of Q is 2;
	otherwise:
		compute generic class reward of Q on C.

Report wearing clothing when black hood is worn:
	compute just-wait-reset.

Report taking off clothing when black hood is worn:
	compute just-wait-reset.

Report knifing clothing with a thing when black hood is worn:
	compute just-wait-reset.

To compute just-wait-reset:
	now the wait-count of just-wait-quest is 0;
	if the quest of black hood is just-wait-quest and black hood is not cursed:
		now black hood is cursed;
		say "[bold type]Your [ShortDesc of black hood] curses itself as punishment for you changing your outfit![roman type][line break]".

To uniquely destroy (C - black hood):
	let L be the number of worn latex clothing;
	if the quest of C is just-wait-quest:
		say "You can feel the hood rewarding you for [if L > 1]all the [L] different latex items[otherwise]the other latex item[end if] you're wearing by improving your dexterity!";
		DexUp L.

Part - White (WC) Hood

WC hood is a hood. The printed name of WC hood is "[clothing-title-before]white latex hood[clothing-title-after]". The text-shortcut of WC hood is "wlh". Understand "white" as WC hood.

Figure of WC hood is the file "Items/Accessories/Head/WcLatexHood.png".

To decide which figure-name is the clothing-image of (C - WC hood):
	decide on figure of WC hood.

To say ClothingDesc of (H - WC hood):
	say "This white latex hood completely covers your head, and only has holes for your eyes, your nostrils, [if the player is pigtailed or the player is ponytailed]your hair, [end if]and your mouth. The mouth hole is fitted with an O-ring tube gag, which keeps your mouth wide open and prevents you from speaking properly. Anyone could put anything into your mouth that they wanted, even a penis or another gag[if H is worn and H is cursed and there is a worn cursed black catsuit]. The bottom of the hood has merged with your catsuit.[end if]".

To say ShortDesc of (H - WC hood):
	say "white latex hood".

To set up influence of (C - WC hood):
	now C is oral-sex-addiction-influencing. [Don't want it to be urine taste addiction influencing because if it was, it would probably help reduce urine addiction which is counter-intuitive.]

Definition: WC hood is roleplay:
	if watersports fetish is 1, decide yes;
	decide no.
Definition: WC hood is white themed: decide yes.

Chapter - Class Outfit

Definition: WC hood (called C) is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]
	if wearing-target is WC catsuit or wearing-target is WC thigh high boots, decide yes;
	decide no.

toilet-summoned is a number that varies.
To compute unique recycling of (C - WC hood):
	now the gulp-count of human-toilet-quest is 0;
	now toilet-summoned is 0.

To decide which number is the outfit threshold of (H - WC hood):
	decide on 75. [this takes longer than most because it's also automatically triggered each time the player drinks urine]

To compute class outfit of (H - WC hood):
	let C be a random off-stage WC catsuit;
	let B be a random off-stage WC thigh high boots;
	let P be a random off-stage WC plug panties;
	if C is actually summonable or (C is catsuit and toilet-summoned is 0):
		PinkWardrobeUnclash C;
		say "[bold type]Your hood pulses once, and then a white catsuit materialises over your body![line break][variable custom style][if the player is not disgraced]Holy crap, is this icon on the front what I think it is?![otherwise]Oh, I get what this icon on the front means. I'm a human toilet now![end if][roman type][line break]";
		summon C uncursed;
		if toilet-summoned is 0, now toilet-summoned is 1;
	otherwise if B is actually summonable or (B is boots and toilet-summoned < 2):
		PinkWardrobeUnclash B;
		say "[bold type]Your hood pulses once, and then a pair of white latex thigh high boots appear on your feet![roman type][line break]";
		summon B uncursed;
		if toilet-summoned < 2, now toilet-summoned is 2;
	otherwise if P is actually summonable or (diaper quest is 0 and P is knickers and toilet-summoned < 3 and asshole is not actually occupied and vagina is not actually occupied):
		PinkWardrobeUnclash P;
		say "[bold type]Your hood pulses once, and then a pair of white plug panties appear on (and in) you![roman type][line break]";
		summon P cursed with quest;
		now toilet-summoned is 3;
		now the raw-magic-modifier of P is 0.

Chapter - Quest

human-toilet-quest is a headgear-clothing-quest. human-toilet-quest has a number called gulp-count.

To uniquely set up (C - WC hood):
	if the gulp-count of human-toilet-quest is 0, now the quest of C is human-toilet-quest.

To say QuestFlav of (Q - human-toilet-quest):
	say "You sense that it wants you to take your place as a human toilet.".

To say QuestTitle of (Q - human-toilet-quest):
	say " (human toilet quest)".

To progress quest of (Q - human-toilet-quest):
	if toilet-summoned < 3:
		compute class outfit of WC hood;
	otherwise:
		repeat with C running through worn clothing:
			if the quest of C is Q, compute quest completion of Q on C.

To compute persistent reward of (Q - human-toilet-quest) on (C - a clothing):
	if C is cursed:
		compute generic first time class reward of Q on C;
	otherwise:
		say "infusing itself with [one of]powerful magic! You feel that something good will happen when you finally decide to stop being a human toilet.[or]even more blessed magic![stopping]";
		increase the gulp-count of Q by 1.

To uniquely destroy (C - WC hood):
	if the gulp-count of human-toilet-quest > 0 and the quest of C is human-toilet-quest:
		say "You can feel the blessed magic your [ShortDesc of C] had stored within itself shoot straight into your body, [if the gulp-count of human-toilet-quest > 2]significantly [end if]improving your speed!";
		DexUp (the gulp-count of human-toilet-quest + 1) / 2.

Part - Clown Mask

clown mask is a hood. clown mask is not roleplay. The printed name of clown mask is "[clothing-title-before]white latex clown mask[clothing-title-after]". The text-shortcut of clown mask is "lcm". Understand "white" as clown mask.

A diaper quest fix rule:
	now clown mask is in the location of podium.

Figure of clown mask is the file "Items/Accessories/Head/clownmask1.png".

To decide which figure-name is the clothing-image of (C - clown mask):
	decide on figure of clown mask.

Report wearing clown mask:
	say "[one of][variable custom style]No one cared who I was after I put on the mask...[roman type][line break][or][stopping]".

To say ClothingDesc of (H - clown mask):
	say "This white and cream latex hood completely covers your head, and only has holes for your eyes, your nostrils, pigtailed hair, and your mouth. The mouth hole is shaped like a creepy smile, complete with pink lips. Extreme pink and white rubber neck ruffles complete the image of some kind of latex clown[if H is worn and H is cursed and there is a worn cursed black catsuit]. The bottom of the hood has merged with your catsuit.[end if]".

To say ShortDesc of (H - clown mask):
	say "latex clown mask".

Definition: clown mask is roleplay:
	if diaper quest is 1, decide yes;
	decide no.
Definition: clown mask is white themed: decide yes.

To decide which number is the initial cringe of (C - clown mask):
	decide on 10.

Definition: a clown mask is ringagged: decide no.

Chapter - Class Outfit

Definition: clown mask (called C) is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]
	if wearing-target is latex and wearing-target is not C and wearing-target is not equippable, decide yes;
	decide no.

clown-summoned is a number that varies.
To compute unique recycling of (C - clown mask):
	now clown-summoned is 0.

To compute class outfit of (H - clown mask):
	let B be a random off-stage rubber booties;
	let M be a random off-stage blue rubber mittens;
	if fetish baby dress is actually summonable or (clown-summoned is 0 and the number of worn latex dress is 0):
		PinkWardrobeUnclash fetish baby dress;
		say "[bold type]Your mask emits a high pitched cackling sound, and then a creamy fetish dress materialises over your body![line break][variable custom style]I look so ridiculous! [if the player is shameless]How delicious[otherwise]This is crazy[end if]![roman type][line break]";
		summon fetish baby dress uncursed;
		if clown-summoned is 0, now clown-summoned is 1;
	otherwise if B is actually summonable or (B is shoes and clown-summoned < 2):
		PinkWardrobeUnclash B;
		say "[bold type]Your mask emits a high pitched laughing sound, and then a pair of latex booties appear on your feet![roman type][line break]";
		summon B uncursed;
		if clown-summoned < 2, now clown-summoned is 2;
	otherwise if M is actually summonable and clown-summoned < 3:
		say "[bold type]Your mask emits a high pitched giggling sound, and then a pair of blue latex mittens appear on your hands![roman type][line break]";
		summon M cursed with quest;
		now the raw-magic-modifier of M is 0;
		if clown-summoned < 3, now clown-summoned is 3.

Chapter - Quest

clown-quest is a headgear-clothing-quest. clown-quest has a number called humiliation-latest.

To uniquely set up (C - clown mask):
	now the humiliation-latest of clown-quest is the humiliation of the player / 8000;
	now the quest of C is clown-quest.

To say QuestFlav of (Q - clown-quest):
	say "You sense that it wants you to keep degrading yourself in front of others until you [if the player is ashamed]learn to enjoy it more[otherwise]begin to learn to enjoy it[end if].".

To say QuestTitle of (Q - clown-quest):
	say " (self-degradation training quest)".

To progress quest of (Q - clown-quest):
	if the humiliation-latest of Q < the humiliation of the player / 8000:
		repeat with C running through worn clothing:
			if the quest of C is Q, compute quest completion of Q on C;
		now the humiliation-latest of clown-quest is the humiliation of the player / 8000.

To compute persistent reward of (Q - clown-quest) on (C - a clothing):
	let D be a random off-stage ring;
	if D is ring:
		if the humiliation of the player >= 40000:
			now D is solid gold;
		otherwise if the humiliation of the player >= 32000:
			now D is pure diamond;
		otherwise if the humiliation of the player >= 24000:
			now D is pink diamond;
		otherwise if the humiliation of the player >= 16000:
			now D is ruby;
		otherwise:
			now D is emerald;
		set shortcut of D;
		if D is actually summonable:
			summon D;
		otherwise:
			now D is in the location of the player;
		say "summoning a [MediumDesc of D] [if D is worn]straight onto your finger[otherwise]right in front of you[end if]!";
	otherwise if the raw dexterity of the player < 30:
		say "improving your agility!";
		DexUp 1;
	otherwise:
		compute generic second time class reward of Q on C.

Part - Trainee Hood

trainee hood is a hood. trainee hood has a number called training-progress. The training-progress of trainee hood is 0. trainee hood can be magnetised. trainee hood is magnetised. trainee hood is not roleplay.

The printed name of trainee hood is "[TQlink of item described][item style]trainee hood[clothing-title-after]". The text-shortcut of trainee hood is "th".

To say ClothingDesc of (H - trainee hood):
	say "This silicone hood completely covers your head, with holes only for your eyes, nostrils, [if the player is pigtailed or the player is ponytailed]your hair, [end if]and your mouth. Padding underneath your cheekbones and around your lips gives you an exaggerated feminine appearance. The mouth hole is fitted with an O-ring tube gag, which keeps your mouth wide open for anything someone might want to put in there. Metal accents make the hood seem futuristic and high-tech, containing magnetic sensors that keep it in place with a surprising amount of security[if H is worn and H is cursed and there is a worn cursed black catsuit]. The bottom of the hood has merged with your catsuit.[end if]".

To decide which number is the perceived-bimbo-influence of (C - trainee hood):
	decide on 2.
Definition: a trainee hood is whore themed: decide yes.
Definition: a trainee hood is removable:
	if it is not magnetised, decide yes;
	decide no.

trainee hood removability rules is a rulebook. The removability rules of trainee hood is trainee hood removability rules.

This is the magnetised trainee hood can't be removed rule:
	if the wearing-target is magnetised:
		if summoning is 0 and autoremove is false, say "The magnetic latches keep the [printed name of the wearing-target] all but immobile. You'll need to find a way to deactivate it if you want to get it off.";
		rule fails.
The magnetised trainee hood can't be removed rule is listed in the trainee hood removability rules.

Report wearing trainee hood:
	say "The magnetic latches snap closed as you finish putting it on.";
	now the noun is magnetised.

To compute class outfit of (H - trainee hood):[TODO: improve]
	if the training-progress of H is 3:
		LipsUp 3;
		say "The [printed name of H] emits four short tones, and falls off your face. You can still feel the heavy lips resting on your face, but when you move to peel them off, you realise they've merged fully with your skin! You now have [LipDesc]!";
		DelicateUp 2;
		now the training-progress of H is 0;
		only destroy H;
		ProgressUp senior robobellboy;
	otherwise if face is not actually occupied:
		say "The [printed name of H] emits a short tone and the metal ring collapses, forcing your lips shut as your mouth fills with thick, sweet smelling smoke. You [if the bimbo of the player > 13]breathe in happily, knowing that whatever it is, it'll do something fun! The silicone lips slowly open after a few seconds, hugging even tighter to the real ones underneath[otherwise if the bimbo of the player > 9]breathe in cautiously, knowing your airway is too restricted to have any choice. A funny feeling lingers at the back of your throat as the silicone lips slowly open again, subtly hugging tighter to the real ones underneath[otherwise]hold your breath desperately, but with your restricted airway you have no choice but to breathe in, coughing reflexively as the silicone lips slowly open again, subtly hugging tighter to the real ones underneath[end if].";
		FaceUp 1;
		OralSexAddictUp 1;
		increase the training-progress of H by 1.

To demagnetise (C - a clothing):[Do not call this function unless you know it is a magnetic item.]
	say "The [C] emits a sharp tone and the magnetic latches snap open!";
	now C is not magnetised.

Hoods ends here.
