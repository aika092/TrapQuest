Halloween Headgear by Headgear begins here.

halloween headgear is a kind of headgear. halloween headgear is womanly.

To set up influence of (C - a halloween headgear):
	set up sex-based influence of C.

Chapter - Quest

[To compute recycling of (H - a halloween headgear):
	repeat with C running through in-play candy:
		if C is not held, destroy C.]

trick-or-treat-quest is a headgear-clothing-quest.

To uniquely set up (C - a halloween headgear):
	now the quest of C is trick-or-treat-quest.

To say QuestFlav of (Q - trick-or-treat-quest):
	say "You sense it wants you to explore the haunted house to find AND EAT lots of tasty treats.".

To say QuestTitle of (Q - trick-or-treat-quest):
	say " (candy search quest)".

To compute generic first time class reward of (Q - trick-or-treat-quest) on (C - a clothing):
	repeat with N running from 1 to 3:
		let D be a random off-stage ring;
		if D is ring:
			if N is 1, now D is sapphire;
			if N is 2, now D is emerald;
			if N is 3, now D is ruby;
			set shortcut of D;
			if D is actually summonable:
				summon D;
			otherwise:
				now D is in the location of the player;
			say "summoning a [MediumDesc of D] [if D is worn]straight onto your finger[otherwise]right in front of you[end if]!".

To compute generic second time class reward of (Q - trick-or-treat-quest) on (C - a clothing):
	repeat with N running from 1 to 2:
		let D be a random off-stage ring;
		if D is ring:
			if N is 1, now D is pink diamond;
			otherwise now D is pure diamond;
			set shortcut of D;
			if D is actually summonable:
				summon D;
			otherwise:
				now D is in the location of the player;
			say "summoning a [MediumDesc of D] [if D is worn]straight onto your finger[otherwise]right in front of you[end if]!".

To progress quest of (Q - trick-or-treat-quest):
	repeat with C running through worn clothing:
		if the quest of C is Q:
			if the number of regional candy > 1:
				say "Your [ShortDesc of C] pulses happily. Keep it up!";
			otherwise:
				compute quest completion of Q on C;
			let D be a random worn diaper;
			if D is diaper:
				now the transform-attempts of D is 99;
				potentially transform D.

nun cowl is a halloween headgear. The text-shortcut of nun cowl is "nnc".
Figure of nun cowl is the file "Items/Accessories/Head/nuncowl2.png".

The printed name of nun cowl is "[clothing-title-before]nun cowl[clothing-title-after]".

To decide which figure-name is the clothing-image of (C - nun cowl):
	decide on figure of nun cowl.

To say ClothingDesc of (H - nun cowl):
	say "This black and white cowl looks rather normal and modest.".

To say ShortDesc of (H - nun cowl):
	say "nun cowl".
To say MediumDesc of (H - nun cowl):
	say "black nun cowl".

To compute SelfExamineDesc of (H - nun cowl):
	say "You are wearing a black nun cowl over your [ShortDesc of hair]. ".

Definition: nun cowl is black themed: decide yes.
Definition: nun cowl is white themed: decide yes.
Definition: nun cowl is fetish appropriate: decide no.
Definition: nun cowl is transformation-protected: decide no.
To decide which object is the unique-upgrade-target of (C - nun cowl):
	decide on rubber nun cowl.
To decide which number is the initial outrage of (C - nun cowl):
	decide on 0.

rubber nun cowl is a halloween headgear. rubber nun cowl is womanly. rubber nun cowl is latex. Figure of rubber nun cowl is the file "Items/Accessories/Head/nuncowl1.png". rubber nun cowl is blondeness-negative. rubber nun cowl is brightness-negative. rubber nun cowl is redness-negative. The text-shortcut of rubber nun cowl is "lnc".

The printed name of rubber nun cowl is "[clothing-title-before]latex nun cowl[clothing-title-after]".

To decide which figure-name is the clothing-image of (C - rubber nun cowl):
	decide on figure of rubber nun cowl.

To say ClothingDesc of (H - rubber nun cowl):
	say "This black and white cowl would look rather normal and modest if it weren't for the fact it's made of shiny, fetishy latex.".

To say ShortDesc of (H - rubber nun cowl):
	say "nun cowl".
To say MediumDesc of (H - rubber nun cowl):
	say "black rubber nun cowl".

To compute SelfExamineDesc of (H - rubber nun cowl):
	say "You are wearing a black latex nun cowl over your [ShortDesc of hair]. ".

Definition: rubber nun cowl is black themed: decide yes.
Definition: rubber nun cowl is white themed: decide yes.
Definition: rubber nun cowl is fetish appropriate:
	if diaper quest is 0, decide yes;
	decide no.

To decide which number is the initial outrage of (C - rubber nun cowl):
	decide on 3.

To compute periodic effect of (C - rubber nun cowl):
	if the location of the player is garlic-waned:
		say "[bold type]Your blessed aura interacts with the hidden runes in this room, renewing their power! This room is now once again purified and strengthened against malicious spirits.[roman type][line break]";
		now the location of the player is garlic;
		let RN be the number of garlic placed haunted rooms + the number of garlic-waned placed haunted rooms;
		if debugmode > 0, say "Blessed rooms: [list of garlic placed haunted rooms]. Unblessed rooms: [list of garlic-waned placed haunted rooms]";
		if the number of garlic placed haunted rooms > RN - 4, progress quest of mansion-purification-quest.

Chapter - Class Outfit

To compute full outfit summon of (H - rubber nun cowl):
	now H is worn by the player;
	now H is cursed;
	now H is sure;
	now H is identified;
	set up H;
	say "You are wearing a [H], ";
	if nun-top is actually summonable:
		summon nun-top uncursed;
		now nun-top is blessed;
		now nun-top is suppression;
		now nun-top is charisma-influencing;
		say "a [nun-top], ";
	if black-rubber-hobble-skirt is actually summonable:
		summon black-rubber-hobble-skirt uncursed;
		now black-rubber-hobble-skirt is blessed;
		now black-rubber-hobble-skirt is dexterity-influencing;
		say "a [black-rubber-hobble-skirt], ";
	if crotch chain is actually summonable:
		summon crotch chain uncursed;
		now crotch chain is blessed;
		now crotch chain is intelligence-influencing;
		say "a [crotch chain], ";
	if black-leather-boots is actually summonable:
		summon black-leather-boots uncursed;
		now black-leather-boots is blessed;
		now black-leather-boots is suppression;
		now black-leather-boots is luck-influencing;
		now the heel-height of black-leather-boots is 1;
		say "and a [black-leather-boots]! ";
	repeat with P running through on-stage pedestals:
		if wood-dong is in P:
			only destroy wood-dong;
			now cum dump's undergarment is in P;
			now P is fertile;
			now the paid of P is 5;
	if wood-dong is off-stage:
		summon wood-dong uncursed;
		now the size of wood-dong is 1;
		now wood-dong is blessed;
		now wood-dong is luck-influencing;
		say "You can also feel that some sort of holy wooden ornament is secretly lodged inside your [asshole].";

To compute class outfit of (H - rubber nun cowl):
	class summon nun-top;
	class summon black-rubber-hobble-skirt;
	class summon black-leather-boots;
	class summon crotch chain.

Chapter - Quest

mansion-purification-quest is a headgear-clothing-quest.

To uniquely set up (C - rubber nun cowl):
	now the quest of C is mansion-purification-quest.

To say QuestFlav of (Q - mansion-purification-quest):
	say "You sense it wants you to explore the haunted house to find lots of rooms with peaceful auras, to revive their blessings. ...There's also a secret extra mission. Drive a wooden stake into a defeated vampire.".

To say QuestTitle of (Q - mansion-purification-quest):
	say " (mansion purification quest)".

To compute persistent reward of (Q - mansion-purification-quest) on (C - a clothing):
	if vampiress is in the location of the player and the stake of vampiress is wood-dong and wood-dong is held by the player and player-fucking is DOMINANT-SUPER:
		let D be a random off-stage ring;
		if D is ring:
			now D is solid gold;
			set shortcut of D;
			if D is actually summonable:
				summon D;
			otherwise:
				now D is in the location of the player;
			say "summoning a [MediumDesc of D] [if D is worn]straight onto your finger[otherwise]right in front of you[end if]!";
		otherwise:
			compute generic second time class reward of Q on C;
		if C is not blessed:
			say "You sense a blessing being laid upon your [ShortDesc of C]!";
			now C is blessed;
	otherwise if C is cursed:
		compute generic first time class reward of Q on C;
	otherwise if C is bland:
		compute generic second time class reward of Q on C;
	otherwise:
		compute generic class reward of Q on C.

witch's hat is a halloween headgear. witch's hat is latex. Figure of witch's hat is the file "Items/Accessories/Head/witchhat1.png". witch's hat is blondeness-negative. witch's hat is brightness-negative. witch's hat is redness-negative. The text-shortcut of witch's hat is "wtch".

The printed name of witch's hat is "[clothing-title-before]latex witch's hat[clothing-title-after]".

To decide which figure-name is the clothing-image of (C - witch's hat):
	decide on figure of witch's hat.

To say ClothingDesc of (H - witch's hat):
	say "A large black witch hat made out of latex, with a purple ribbon.".

To say ShortDesc of (H - witch's hat):
	say "witch's hat".
To say MediumDesc of (H - witch's hat):
	say "black latex witch's hat".

To compute SelfExamineDesc of (H - witch's hat):
	say "You are wearing a black latex witch's hat in your [ShortDesc of hair]. ".

Definition: witch's hat is black themed: decide yes.
Definition: witch's hat is magic themed: decide yes.
Definition: witch's hat is fetish appropriate:
	if diaper quest is 0, decide yes;
	decide no.

To decide which number is the initial outrage of (C - witch's hat):
	decide on 2.

Chapter - Quest

doom-ritual-quest is a headgear-clothing-quest.

To uniquely set up (C - witch's hat):
	now the quest of C is doom-ritual-quest.

To say QuestFlav of (Q - doom-ritual-quest):
	say "You sense it wants you to save the world from an Elder God by completing the Doom Ritual (read your [']doom notes[']!)".

To say QuestTitle of (Q - doom-ritual-quest):
	say " (doom ritual quest)".

To compute persistent reward of (Q - doom-ritual-quest) on (C - a clothing):
	let D be a random off-stage ring;
	if D is ring:
		now D is solid gold;
		set shortcut of D;
		if D is actually summonable:
			summon D;
		otherwise:
			now D is in the location of the player;
		say "summoning a [MediumDesc of D] [if D is worn]straight onto your finger[otherwise]right in front of you[end if]!";
	otherwise:
		compute generic second time class reward of Q on C;
	if C is not blessed:
		say "You sense a blessing being laid upon your [ShortDesc of C]!";
		now C is blessed;
	say "You feel a surge of magic power! You've been promoted to Head Witch!";
	MagicPowerUp 8.

Chapter - Class Outfit

[Definition: witch's hat (called C) is removal-blocking:
	if wearing-target is latex court heels or (wearing-target is magic themed and wearing-target is not C), decide yes;
	decide no.]

To compute full outfit summon of (H - witch's hat):
	now H is worn by the player;
	now H is cursed;
	now H is sure;
	now H is identified;
	set up H;
	say "You are wearing a [H], ";
	if witch's top is actually summonable:
		summon witch's top;
		say "a [witch's top], ";
	if witch's trousers is actually summonable:
		summon witch's trousers;
		say "a [witch's trousers], ";
	let S be a random latex court heels;
	if S is actually summonable:
		summon S;
		now S is bland;
		now S is blandness;
		now the raw-magic-modifier of S is 0;
		now the heel-height of S is 1;
		say "and a [S]!";
	[blandify and reveal witch's top;
	now witch's top is in the location of the player;
	say "A [witch's top] is on the ground in front of you almost as if you forgot to put it on[if the largeness of breasts > 1], leaving you completely topless. Eek[end if]!".]

To compute class outfit of (H - witch's hat):
	class summon witch's top;
	class summon witch's trousers.

doll hairbow is a halloween headgear. doll hairbow is latex. Figure of doll hairbow is the file "Items/Accessories/Head/dollbow1.png". doll hairbow is blondeness-negative. doll hairbow is brightness-negative. doll hairbow is redness-negative. The text-shortcut of doll hairbow is "dlhb".

The printed name of doll hairbow is "[clothing-title-before]doll hairbow[clothing-title-after]".

To decide which figure-name is the clothing-image of (C - doll hairbow):
	decide on figure of doll hairbow.

To say ClothingDesc of (H - doll hairbow):
	say "A large orange ribbon that goes in your hair.".

To say ShortDesc of (H - doll hairbow):
	say "doll bow".
To say MediumDesc of (H - doll hairbow):
	say "orange doll hairbow".

To compute SelfExamineDesc of (H - doll hairbow):
	say "You are wearing an orange hairbow in your [ShortDesc of hair]. ".

Definition: doll hairbow is orange themed: decide yes.
Definition: doll hairbow is fetish appropriate:
	if diaper quest is 1, decide yes;
	decide no.
Definition: doll hairbow is halloween themed: decide yes.

To decide which number is the initial cringe of (C - doll hairbow):
	decide on 3.

Chapter - Class Outfit

Definition: doll hairbow (called C) is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]
	if wearing-target is orange themed and wearing-target is not C and wearing-target is not pacifier, decide yes;
	decide no.

To compute full outfit summon of (H - doll hairbow):
	blandify and reveal H;
	now H is cursed;
	say "You are wearing a [H], ";
	if doll-dress is actually summonable:
		summon doll-dress;
		say "a [doll-dress], ";
	if black-and-orange rubber stockings is actually summonable:
		summon black-and-orange rubber stockings uncursed;
		say "a [black-and-orange rubber stockings], ";
	if red-orange briefs is actually summonable:
		summon red-orange briefs uncursed;
		say "a [red-orange briefs], ";
	[let P be a random ghost pacifier;
	if P is actually summonable:
		summon P;
		now P is strength stealing;
		say "a [P], ";]
	let S be black girly bow court heels;
	if S is actually summonable:
		summon S uncursed;
		now the heel-height of S is 1;
		say "and a [S]!";
	summon H cursed.
	[blandify and reveal doll-dress;
	now doll-dress is in the location of the player;
	say "A [doll-dress] is on the ground in front of you almost as if you forgot to put it on[if the largeness of breasts > 1], leaving you completely topless. Eek[end if]!".]

To compute class outfit of (H - doll hairbow):
	class summon doll-dress;
	class summon black girly bow court heels;
	class summon red-orange briefs.

Chapter - Quest

exorcism-quest is a headgear-clothing-quest.

To uniquely set up (C - doll hairbow):
	now the quest of C is exorcism-quest.

To say QuestFlav of (Q - exorcism-quest):
	say "You sense it wants you to exorcise a humanoid ghost from the mansion.".

To say QuestTitle of (Q - exorcism-quest):
	say " (exorcism quest)".


bat wings is a halloween headgear. bat wings is latex. Figure of bat wings is the file "Items/Accessories/Head/batwings1.png". bat wings is blondeness-negative. bat wings is brightness-negative. bat wings is redness-negative. The text-shortcut of bat wings is "batw".

The printed name of bat wings is "[clothing-title-before]bat wings[clothing-title-after]".

To decide which figure-name is the clothing-image of (C - bat wings):
	decide on figure of bat wings.

To say ClothingDesc of (H - bat wings):
	say "A discreet headband makes it look like you have bat wings sprouting out of your head.".

To say ShortDesc of (H - bat wings):
	say "pair of bat wings".
To say MediumDesc of (H - bat wings):
	say "pair of purple bat wings".

To compute SelfExamineDesc of (H - bat wings):
	say "You are wearing a headband with purple bat wings in your [ShortDesc of hair]. ".

Definition: bat wings is purple hemed: decide yes.
Definition: bat wings is fetish appropriate:
	if diaper quest is 1, decide yes;
	decide no.
Definition: bat wings is halloween themed: decide yes.

To decide which number is the initial cringe of (C - bat wings):
	decide on 2.

Chapter - Class Outfit

Definition: bat wings (called C) is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]
	if wearing-target is halloween rubber diaper cover, decide yes;
	if wearing-target is purple themed and wearing-target is not C and wearing-target is not pacifier, decide yes;
	decide no.

To compute full outfit summon of (H - bat wings):
	blandify and reveal H;
	now H is cursed;
	say "You are wearing a [H], ";
	if purple-velcro-diaper is actually summonable:
		summon purple-velcro-diaper uncursed;
		say "a [purple-velcro-diaper], ";
	if halloween rubber diaper cover is actually summonable:
		summon halloween rubber diaper cover uncursed;
		say "a [halloween rubber diaper cover], ";
	if pumpkin bib is actually summonable:
		summon pumpkin bib cursed;
		now the quest of pumpkin bib is oversatiated-quest;
		say "a [pumpkin bib], ";
	if halloween socks is actually summonable:
		summon halloween socks uncursed;
		say "a [halloween socks], ";
	if pom-pom-shoes is actually summonable:
		summon pom-pom-shoes uncursed;
		say "and a [pom-pom-shoes]!";
	now bat-shape-corset is in Mansion01;
	if a random number between 1 and 3 is 1:
		now bat-shape-corset is cursed;
		now bat-shape-corset is provocation;
	say "A [bat-shape-corset] is on the ground in front of you almost as if you forgot to put it on[if the largeness of breasts > 1], leaving you completely topless. Eek[end if]!";
	summon H cursed.

To compute class outfit of (H - bat wings):
	class summon halloween rubber diaper cover;
	class summon pumpkin bib;
	class summon halloween socks;
	class summon pom-pom-shoes.

Halloween Headgear ends here.
