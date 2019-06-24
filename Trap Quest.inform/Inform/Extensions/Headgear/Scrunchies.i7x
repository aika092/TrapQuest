Scrunchies by Headgear begins here.

A scrunchie is a kind of headgear. A scrunchie is usually hair growing.

A scrunchie is blondeness-positive. A scrunchie is brightness-positive. A scrunchie is redness-positive. A scrunchie is usually roleplay. A scrunchie is womanly.

The printed name of scrunchie is usually "[clothing-title-before]blue scrunchie[clothing-title-after]". The printed plural name of scrunchie is usually "[clothing-title-before]blue scrunchies[clothing-title-after]". The text-shortcut of scrunchie is "scr".

To compute SelfExamineDesc of (H - a scrunchie):
	let X be the largeness of hair;
	say "You have [ShortDesc of hair]. ".

This is the scrunchie must be the same colour rule:
	if there is a worn blue scrunchie:
		if wearing-target is scrunchie and wearing-target is not blue scrunchie:
			if summoning is 0 and autowear is false, say "That's the wrong coloured scrunchie!";
			rule fails;
	if there is a worn pink scrunchie:
		if wearing-target is scrunchie and wearing-target is not pink scrunchie:
			if summoning is 0 and autowear is false, say "That's the wrong coloured scrunchie!";
			rule fails;
	if there is a worn monkey scrunchie:
		if wearing-target is scrunchie and wearing-target is not monkey scrunchie:
			if summoning is 0 and autowear is false, say "That's the wrong coloured scrunchie!";
			rule fails;
	if there is a worn pigtail-scrunchie:
		if wearing-target is scrunchie:
			if summoning is 0 and autowear is false, say "You are already wearing two hair ties!";
			rule fails;
	if there is a worn rubber scrunchie:
		if wearing-target is scrunchie and wearing-target is not rubber scrunchie:
			if summoning is 0 and autowear is false, say "Your [printed name of random worn scrunchie] emits a sharp noise, as if preventing you from applying the new scrunchie.";
			rule fails.
The scrunchie must be the same colour rule is listed in the headgear wearability rules.

To set up influence of (C - a scrunchie):
	set up submissiveness-based influence of C.


To decide which figure-name is the clothing-image of (C - a scrunchie):
	if C is pink scrunchie, decide on figure of pink scrunchie;
	decide on figure of blue scrunchie.

[!<YourselfIsPonytailed>+

Does the player have a ponytail?

+!]
Definition: yourself is ponytailed:
	if the player is pigtailed, decide no;
	let S be the number of worn scrunchies;
	if S is 1 and the largeness of hair > 4, decide yes;
	decide no.

[!<YourselfIsPigtailed>+

Does the player have pigtails?

+!]
Definition: yourself is pigtailed:
	if there is a worn pigtail-scrunchie, decide yes;
	let S be the number of worn scrunchies;
	if S is 2 and the largeness of hair > 1, decide yes;
	decide no.

To decide which number is the initial outrage of (C - a scrunchie):
	if the number of worn scrunchies < 2, decide on 0;
	if diaper quest is 1, decide on 0;
	decide on 3.

To decide which number is the initial cringe of (C - a scrunchie):
	if the number of worn scrunchies < 2, decide on 0;
	decide on 4.

Definition: a scrunchie is transformation-protected if the player is not pigtailed.


Chapter 1 - Pink Scrunchie

[Obtained from the mannequin]

A pink scrunchie is a kind of scrunchie. There are 2 cursed pink scrunchies. The text-shortcut of pink scrunchie is "pscr". Figure of pink scrunchie is the file "Items/Accessories/Head/scrunchie1.png".

The printed name of a pink scrunchie is "[clothing-title-before]pink scrunchie[clothing-title-after]".
The printed plural name of a pink scrunchie is "[clothing-title-before]pink scrunchies[clothing-title-after]".

To say ShortDesc of (H - a pink scrunchie):
	say "pink scrunchie".

To say ClothingDesc of (H - a pink scrunchie):
	say "A pink puffy hair tie used to style hair.".

Check wearing pink scrunchie:
	if the noun is worn:
		repeat with B running through pink scrunchies in the location of the player:
			if B is not worn, try wearing B instead;
	if there is a worn blue scrunchie, say "Pink and blue don't go together, you need to find another pink one!" instead.

To decide which number is the intelligence-influence of (H - a pink scrunchie):
	decide on -1.
Definition: a pink scrunchie is pink themed: decide yes.

To compute (C - a scrunchie) unique inheriting from (D - a scrunchie):
	if D is temptation, now C is temptation. [To make sure they can still succeed at greeting quest]

Chapter - Class Outfit

Definition: a pink scrunchie (called C) is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]
	if wearing-target is cheerleader outfit, decide yes;
	decide no.

cheerleader-summoned is a number that varies.
To compute unique recycling of (C - a pink scrunchie):
	if the class of the player is not cheerleader, now cheerleader-summoned is 0.

To compute class outfit of (H - a pink scrunchie):
	let C be a random off-stage longsleeved cheerleader outfit;
	if C is nothing, now C is a random off-stage vest top cheerleader outfit;
	if C is nothing, now C is a random supershort cheerleader outfit;
	if C is nothing or there is a worn pigtail-scrunchie:
		if blue-rubber-cheerleader-outfit is off-stage, now C is blue-rubber-cheerleader-outfit;
		if C is nothing, now C is a random off-stage rubber cheerleader outfit;
	let P be a random pom-pom;
	if C is actually summonable or (C is cheerleader outfit and cheerleader-summoned is 0 and the number of worn cheerleader outfit is 0 and the number of worn pink rubber dress is 0):
		if cheerleader-summoned is 0:
			repeat with O running through worn dresses:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
			repeat with O running through worn skirts:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
		say "[bold type]A [ShortDesc of C] appears on you![line break][variable custom style]I'm a cheerleader now?[roman type][line break][if the mercyskill of the player is 0]You suddenly feel like you could get away with anything! It's like the consequences of your actions... just aren't as important as they used to be.[end if]";
		summon C;
		now the raw-magic-modifier of C is 0;
		now cheerleader-summoned is 1;
		increase the raw-magic-modifier of C by the flesh volume of hips / 5;
	otherwise if P is actually summonable:
		say "[bold type]A pair of purple pom-poms appear to cover your hands![line break][variable custom style]I guess I shouldn't be surprised.[roman type]";
		summon P cursed;
		now the raw-magic-modifier of P is 0;
		if the player is not ass protected, now the raw-magic-modifier of P is 2.


Chapter - Quest

greet-quest is a headgear-clothing-quest.

To uniquely set up (C - a pink scrunchie):
	let X be a random worn pink scrunchie;
	if X is scrunchie, now the magic-curse of C is the magic-curse of X; [don't want them to be desynchronised]
	now the quest of C is greet-quest.

To say QuestFlav of (Q - greet-quest):
	say "You sense it wants you to greet (intelligent) people who *might* want to [if diaper quest is 1]punish[otherwise]fuck[end if] you[if the class of the player is not cheerleader]. (You'll first have to wait until you fully become a cheerleader.)[otherwise].[end if]".

To say QuestTitle of (Q - greet-quest):
	say " (attention seeking quest)".


Chapter 2 - Blue Scrunchie

[The first is obtained from dungeon apothecary, second is obtained from hotel library.]

A blue scrunchie is a kind of scrunchie. 1 cursed blue scrunchie is in Dungeon27. 1 cursed blue scrunchie is in Hotel24. The text-shortcut of blue scrunchie is "bscr". Figure of blue scrunchie is the file "Items/Accessories/Head/scrunchie2.png".

Definition: a blue scrunchie is immune to change: decide yes.
Definition: a blue scrunchie is blue themed: decide yes.

schoolgirl-summoned is a number that varies.
To compute unique recycling of (C - a blue scrunchie):
	if the class of the player is not schoolgirl, now schoolgirl-summoned is 0.

To say ShortDesc of (H - a blue scrunchie):
	say "blue scrunchie".

To say ClothingDesc of (H - a blue scrunchie):
	say "An elastic blue hair tie used to style hair.".

Check wearing blue scrunchie:
	if the noun is worn:
		repeat with B running through blue scrunchies in the location of the player:
			if B is not worn, try wearing B instead;
	if there is a worn pink scrunchie, say "Pink and blue don't go together, you need to find another blue one!" instead.

Report wearing blue scrunchie:
	uniquely set up the noun; [We need to make sure that if it's not got the right quest and BUC that it gets it now]
	if diaper quest is 1:
		if the player is ponytailed, say "Your hair magically changes colour and is now platinum blonde!";
		otherwise say "Your hair magically changes colour and is now dark brown!".

To decide which number is the intelligence-influence of (H - a blue scrunchie):
	if the class of the player is schoolgirl, decide on 2;[+2 bonus if you have both scrunchies and the class]
	decide on 0.[until you do the work to become a schoolgirl, you get no intelligence bonus]

To decide which number is the strength-influence of (H - a blue scrunchie):
	if the class of the player is schoolgirl, decide on 0;
	decide on -1.

To decide which number is the dexterity-influence of (H - a blue scrunchie):
	if the class of the player is schoolgirl, decide on 0;
	decide on -1.


Chapter - Class Outfit

Definition: a scrunchie (called C) is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]
	if wearing-target is schoolgirl-enabling or wearing-target is tartan themed or wearing-target is stockings, decide yes;
	decide no.

To compute outfit of (H - a blue scrunchie):
	if diaper quest is 1:
		increase the outfit-charge of H by 1;
		if the outfit-charge of H > 25:
			now the outfit-charge of H is 0;
			compute class outfit of H.

To compute class outfit of (H - a blue scrunchie):
	let R be a random off-stage cheeky schoolgirl outfit;
	if the class of the player is magical girl, now R is a random magical dress; [We don't want to overwrite the magical girl stuff with schoolgirl stuff if the player is both]
	if diaper quest is 0 and (the number of worn scrunchies is 1 or (R is not actually summonable and the number of worn schoolgirl outfits is 0 and the number of worn magical dress is 0)):
		let O be a random off-stage tartan tube top;
		let N be a random off-stage necktie;
		let S be a random off-stage mesh stockings;
		let T be a random off-stage tartan miniskirt;
		if T is actually summonable or (schoolgirl-summoned is 0 and T is miniskirt):
			if schoolgirl-summoned is 0:
				repeat with SK running through worn skirted clothing:
					say "Your [ShortDesc of SK] [wardrobeVanishes of SK]!";
					now SK is in pink wardrobe;
			say "[bold type]A tight, extremely revealing tartan skirt appears on you![line break][variable custom style][if the player is pigtailed]Pigtails,[otherwise]Ponytailed hair[end if] and a tiny tartan skirt?  I think I know where this is going...[roman type][line break]";
			summon T;
			now the raw-magic-modifier of T is 0;
			if diaper quest is 0, now T is temptation;
			now schoolgirl-summoned is 1;
		if there is a worn tartan miniskirt and (O is actually summonable or (schoolgirl-summoned < 2 and O is tube top)): [if the miniskirt spawned let's try and spawn the tube top as well]
			if schoolgirl-summoned < 2:
				repeat with SK running through worn breast covering clothing:
					say "Your [ShortDesc of SK] [wardrobeVanishes of SK]!";
					now SK is in pink wardrobe;
			say "[bold type]A very skimpy tartan tube top shimmers into existence around your [BreastDesc]![line break][variable custom style]I guess that makes me a slutty schoolgirl. [if the bimbo of the player < 8]Sigh... there[']s more, isn[']t there.[otherwise if the bimbo of the player > 12]Tee hee! I guess I am being pretty naughty. I hope there[']s more to this outfit...[end if][roman type][line break]";
			summon O;
			now the raw-magic-modifier of O is 0;
			now O is confidence;
			if tentacle-quest is appropriate, now the quest of O is tentacle-quest;
			now schoolgirl-summoned is 2;
		otherwise if S is actually summonable and there is a worn tartan tube top and there is a worn tartan miniskirt and there is a worn necktie:
			summon S;
			now the raw-magic-modifier of S is 1;
			now S is confidence;
			say "[bold type]Fishnet stockings appear around your [ShortDesc of thighs]![roman type][line break]";
		otherwise if N is actually summonable and there is a worn tartan tube top and there is a worn tartan miniskirt:
			summon N;
			now the raw-magic-modifier of N is 0;
			say "[bold type]A small tartan necktie shimmers into existence around your neck![line break][variable custom style]This must complete the outfit.[roman type][line break]";
	otherwise:
		let S be a random off-stage frilly stockings;
		if R is actually summonable or (R is schoolgirl outfit and schoolgirl-summoned < 2):
			if schoolgirl-summoned is 0:
				repeat with O running through worn dresses:
					say "Your [O] [wardrobeVanishes of O]!";
					now O is in pink wardrobe;
				repeat with O running through worn skirts:
					say "Your [O] [wardrobeVanishes of O]!";
					now O is in pink wardrobe;
			now schoolgirl-summoned is 2;
			summon R;
			now the raw-magic-modifier of R is 1;
			if tentacle-quest is appropriate, now the quest of R is tentacle-quest;
			say "[bold type]A black fleece appears on you, followed by a short skirt and a matching tie![line break][variable custom style]I guess that makes me a [if diaper quest is 1]naughty[otherwise]slutty[end if] schoolgirl. [if the bimbo of the player < 8]Sigh...[end if][roman type][line break]";
		otherwise if there is a worn schoolgirl outfit and S is actually summonable:
			summon S;
			now the raw-magic-modifier of S is 1;
			now S is confidence;
			say "[bold type]White cotton stockings appear around your [ShortDesc of thighs]![roman type][line break]".


Chapter - Quest

recipe-quest is a headgear-clothing-quest.

To uniquely set up (C - a blue scrunchie):
	let X be a random worn blue scrunchie;
	if X is scrunchie, now the magic-curse of C is the magic-curse of X; [don't want them to be desynchronised]
	now the quest of C is recipe-quest.

To say QuestFlav of (Q - recipe-quest):
	say "You sense that it wants you to craft an item using a recipe you've learned.".

To say QuestTitle of (Q - recipe-quest):
	say " (recipe crafting quest)".

To compute generic first time class reward of (Q - recipe-quest) on (C - a clothing):
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



Chapter 3 - Monkey Scrunchie

A monkey scrunchie is a kind of scrunchie. There are 2 monkey scrunchies. The text-shortcut of monkey scrunchie is "mscr". A monkey scrunchie is not roleplay. Figure of monkey scrunchie is the file "Items/Accessories/Head/scrunchie3.png".

Definition: a monkey scrunchie is brown themed: decide yes.

To decide which figure-name is the clothing-image of (C - a monkey scrunchie):
	decide on figure of monkey scrunchie.

The printed name of monkey scrunchie is usually "[clothing-title-before]monkey scrunchie[clothing-title-after]".
The printed plural name of monkey scrunchie is usually "[clothing-title-before]monkey scrunchies[clothing-title-after]".

To decide which number is the initial cringe of (H - a monkey scrunchie):
	decide on 4.

To say ShortDesc of (H - a monkey scrunchie):
	say "monkey scrunchie".

To say ClothingDesc of (H - a monkey scrunchie):
	say "A childish elastic brown hair tie with little monkeys, used to style hair.".

Definition: a monkey scrunchie is transformation-protected: decide yes.

To transform (D - a blue scrunchie) into (C - a monkey scrunchie):
	say "Your [printed plural name of D] transform into ";
	silently transform D into C;
	now D is a random worn blue scrunchie;
	now C is a random off-stage monkey scrunchie;
	silently transform D into C;
	say "[printed plural name of C] in front of your eyes!"; [no image necessary since it'll be on character window]
	say "[TransformReaction of C]".

To decide if a monkey scrunchie is roleplay:
	if diaper quest is 0, decide no;
	decide yes;

Chapter 4 - Rubber Scrunchie

A rubber scrunchie is a kind of scrunchie. [There is 1 rubber scrunchie. ]A rubber scrunchie is usually latex.

The printed name of a rubber scrunchie is "[clothing-title-before]rubber scrunchie[clothing-title-after]".

Part - Pigtail Scrunchies

A pigtail-scrunchie is a kind of scrunchie.
To transform (D - a scrunchie) into (C - a pigtail-scrunchie):
	say "Your [if the player is pigtailed][printed plural name of D] transform[otherwise][ShortDesc of D] transforms[end if] into a ";
	silently transform D into C;
	repeat with S running through worn scrunchies:
		unless S is C, only destroy S;
	say "[printed name of C] in front of your eyes!";
	say "[TransformReaction of C]".

To compute class outfit of (C - a pigtail-scrunchie):
	unless the class of the player is schoolgirl:
		let P be a random pink scrunchie;
		compute class outfit of P;
		if C is not temptation, now C is temptation.

Chapter 5 - Helium Balloons

A pair of helium balloons is a kind of pigtail-scrunchie.  A pair of helium balloons is usually latex.  A pair of helium balloons is not roleplay. The text-shortcut of a pair of helium balloons is "pohb". There is 1 pair of helium balloons.

To decide which figure-name is the clothing-image of (C - a pair of helium balloons):
	decide on figure of helium balloons.

The printed name of a pair of helium balloons is "[clothing-title-before]pair of helium balloons[clothing-title-after]".

To decide which number is the initial outrage of (H - a pair of helium balloons):
	decide on 16.

To say ShortDesc of (H - a pair of helium balloons):
	say "helium balloons".
To say MediumDesc of (H - a pair of helium balloons):
	say "pair of helium balloons".

To say ClothingDesc of (H - a pair of helium balloons):
	say "Two helium balloons rise from each of your pigtails, attached by a piece of string. One has 'FUCK' written on it, and the other has 'DOLL' written on it.".

Definition: a pair of helium balloons is transformation-protected: decide yes.

Definition: a pair of helium balloons is roleplay: decide no.

Definition: a pair of helium balloons is oral sex themed: decide yes.
Definition: a pair of helium balloons is inflation themed: decide yes.

To decide which number is the heaviness of (H - a pair of helium balloons):
	decide on -20. [This needs to be big as it's divided by 5 when worn]

To decide which number is the relieved heaviness of (H - a pair of helium balloons):
	if there is a worn bag of holding, decide on 0;
	decide on -4.

To decide which object is the unique-upgrade-target of (C - a scrunchie):
	if inflation fetish is 1, decide on a random off-stage pair of helium balloons;
	if diaper lover > 0, decide on a random off-stage monkey scrunchie;
	decide on nothing.


Chapter 6 - Condom Pigtails

A condom pigtails is a pigtail-scrunchie. A condom pigtails is latex. A condom pigtails is not roleplay. The text-shortcut of a condom pigtails is "cndp".

To decide which figure-name is the clothing-image of (C - a condom pigtails):
	decide on figure of condom pigtails.

The printed name of a condom pigtails is "[clothing-title-before]condom pigtails[clothing-title-after]".

To decide which number is the initial outrage of (H - a condom pigtails):
	decide on 15.

To say ShortDesc of (H - a condom pigtails):
	say "condom hairties".
To say MediumDesc of (H - a condom pigtails):
	say "used condom pigtail hairties".

To say ClothingDesc of (H - a condom pigtails):
	say "Two used condoms [if H is worn]have been[otherwise]could be[end if] used to tie your hair into naughty-looking pigtails.".

Definition: a condom pigtails is transformation-protected: decide yes.

Definition: a condom pigtails is roleplay: decide no.

Definition: a condom pigtails is semen themed: decide yes.




Scrunchies ends here.

