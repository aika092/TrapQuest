Halloween Headgear by Headgear begins here.

halloween headgear is a kind of headgear. halloween headgear is womanly.

Definition: a halloween headgear is roleplay: decide no.

To set up influence of (C - a halloween headgear):
	set up sex-based influence of C.

[The halloween headgears are used in a couple of the predicaments in the predicament world. There's one room there where the player can go either down or up, so this function is probably intended for that.
It seems like having a halloween headgear on will prevent you from leaving or entering a region. Again, that's probably intended.]
Check going down when there is a worn halloween headgear:
	unless the player is in a predicament room, say "Your [random worn headgear] is somehow preventing you from leaving while you're a [']trick or treater[']!" instead.

Chapter - Quest

To compute recycling of (H - a halloween headgear):
	repeat with C running through in-play candy:
		if C is not held, destroy C.

trick-or-treat-quest is a headgear-clothing-quest.

To uniquely set up (C - a halloween headgear):
	now the quest of C is trick-or-treat-quest.

To say QuestFlav of (Q - trick-or-treat-quest):
	say "You sense it wants you to explore the haunted house to find and eat lots of tasty treats.".

To say QuestTitle of (Q - trick-or-treat-quest):
	say " (candy search quest)".

To compute generic first time class reward of (Q - trick-or-treat-quest) on (C - a clothing):
	compute generic second time class reward of Q on C.

To progress quest of (Q - trick-or-treat-quest):
	repeat with C running through worn clothing:
		if the quest of C is Q:
			if the number of regional candy > 1:
				say "Your [ShortDesc of C] pulses happily. Keep it up!";
			otherwise:
				compute quest completion of Q on C.

nun cowl is a halloween headgear. The text-shortcut of nun cowl is "nnc".
Figure of nun cowl is the file "Items/Accessories/Head/nuncowl2.png".

The printed name of nun cowl is "[clothing-title-before]nun cowl[clothing-title-after]".

To decide which figure-name is the clothing-image of (C - nun cowl):
	decide on figure of nun cowl.

To say ClothingDesc of (H - nun cowl):
	say "This black and white cowl look rather normal and modest.".

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

rubber nun cowl is a halloween headgear. rubber nun cowl is womanly. Figure of rubber nun cowl is the file "Items/Accessories/Head/nuncowl1.png". rubber nun cowl is blondeness-negative. rubber nun cowl is brightness-negative. rubber nun cowl is redness-negative. The text-shortcut of rubber nun cowl is "lnc".

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

Chapter - Class Outfit

Definition: rubber nun cowl (called C) is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]
	if wearing-target is black themed and wearing-target is not C, decide yes;
	decide no.

To compute full outfit summon of (H - rubber nun cowl):
	summon H cursed;
	say "You are wearing a [H], ";
	if nun-top is actually summonable:
		summon nun-top;
		say "a [nun-top], ";
	if red-orange briefs is actually summonable:
		summon red-orange briefs uncursed;
		say "a [red-orange briefs], ";
	if black-rubber-hobble-skirt is actually summonable:
		summon black-rubber-hobble-skirt uncursed;
		say "a [black-rubber-hobble-skirt], ";
	if black-leather-boots is actually summonable:
		summon black-leather-boots uncursed;
		now the heel-height of black-leather-boots is 1;
		say "and a [black-leather-boots]!".

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

Chapter - Class Outfit

Definition: witch's hat (called C) is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]
	if wearing-target is latex court heels or (wearing-target is magic themed and wearing-target is not C), decide yes;
	decide no.

To compute full outfit summon of (H - witch's hat):
	summon H cursed;
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
		say "and a [S]!".

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

To decide which number is the initial cringe of (C - doll hairbow):
	decide on 3.

Chapter - Class Outfit

Definition: doll hairbow (called C) is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]
	if wearing-target is orange themed and wearing-target is not C, decide yes;
	decide no.

To compute full outfit summon of (H - doll hairbow):
	summon H cursed;
	say "You are wearing a [H], ";
	if doll-dress is actually summonable:
		summon doll-dress;
		say "a [doll-dress], ";
	let BOR be a random black-and-orange rubber stockings;
	if BOR is actually summonable:
		summon BOR uncursed;
		say "a [BOR], ";
	if red-orange briefs is actually summonable:
		summon red-orange briefs uncursed;
		say "a [red-orange briefs], ";
	let P be a random ghost pacifier;
	if P is actually summonable:
		summon P;
		say "a [P], ";
	let S be black girly bow court heels;
	if S is actually summonable:
		summon S uncursed;
		now the heel-height of S is 1;
		say "and a [S]!".

Halloween Headgear ends here.
