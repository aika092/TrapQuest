Scrunchies by Headgear begins here.

A scrunchie is a kind of headgear. A scrunchie is usually hair growing.

A scrunchie is blondeness-positive. A scrunchie is brightness-positive. A scrunchie is redness-positive. A scrunchie is usually roleplay.

The printed name of scrunchie is usually "[TQlink of item described][clothing-title-before]blue scrunchie[clothing-title-after][TQxlink of item described][verb-desc of item described]". The printed plural name of scrunchie is usually "[TQlink of item described][clothing-title-before]blue scrunchies[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of scrunchie is "scr".

To compute SelfExamineDesc of (H - a scrunchie):
	let X be the largeness of hair;
	say "You have [ShortDesc of hair]. ".

This is the scrunchie must be the same colour rule:
	if there is a worn blue scrunchie:
		if wearing-target is scrunchie and wearing-target is not blue scrunchie:
			if summoning is 0, say "That's the wrong coloured scrunchie!";
			rule fails;
	if there is a worn pink scrunchie:
		if wearing-target is scrunchie and wearing-target is not pink scrunchie:
			if summoning is 0, say "That's the wrong coloured scrunchie!";
			rule fails;
	if there is a worn monkey scrunchie:
		if wearing-target is scrunchie and wearing-target is not monkey scrunchie:
			if summoning is 0, say "That's the wrong coloured scrunchie!";
			rule fails;
	if there is a worn pair of helium balloons:
		if wearing-target is scrunchie:
			if summoning is 0, say "You are already wearing two hair ties!";
			rule fails;
	if there is a worn rubber scrunchie:
		if wearing-target is scrunchie and wearing-target is not rubber scrunchie:
			if summoning is 0, say "Your [printed name of random worn scrunchie] emits a sharp noise, as if preventing you from applying the new scrunchie.";
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
	if there is a worn pair of helium balloons, decide yes;
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

Definition: a scrunchie (called C) is untransformable:
	if the player is not pigtailed, decide yes;
	if the unique-upgrade-target of C is nothing and the potential-upgrade-target of C is nothing, decide yes;
	decide no.


Chapter 1 - Pink Scrunchie

[Obtained from the mannequin]

A pink scrunchie is a kind of scrunchie. There are 2 pink scrunchies. Figure of pink scrunchie is the file "Items/Accessories/Head/scrunchie1.png".

The printed name of a pink scrunchie is "[TQlink of item described][clothing-title-before]pink scrunchie[clothing-title-after][TQxlink of item described][verb-desc of item described]".
The printed plural name of a pink scrunchie is "[TQlink of item described][clothing-title-before]pink scrunchies[clothing-title-after][TQxlink of item described][verb-desc of item described]".

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

cheerleader-summoned is a number that varies.

To compute class outfit of (H - a pink scrunchie):
	let C be a random off-stage longsleeved cheerleader outfit;
	let P be a random pom-pom;
	if C is actually summonable or (C is cheerleader outfit and cheerleader-summoned is 0):
		if cheerleader-summoned is 0:
			repeat with O running through worn dresses:
				say "Your [O] vanishes!";
				destroy O;
			repeat with O running through worn skirts:
				say "Your [O] vanishes!";
				destroy O;
		say "[bold type]A snug red outfit appears on you![line break][variable custom style]I'm a cheerleader now?[roman type][line break][if the mercyskill of the player is 0]You suddenly feel like you could get away with anything! It's like the consequences of your actions... just aren't as important as they used to be.[end if]";
		summon C cursed;
		now the raw-magic-modifier of C is 0;
		now cheerleader-summoned is 1;
		increase the raw-magic-modifier of C by the flesh volume of hips / 5;
		now the quest of C is upskirt-quest;
	otherwise if P is actually summonable:
		say "[bold type]A pair of purple pom-poms appear to cover your hands![line break][variable custom style]I guess I shouldn't be surprised.[roman type]";
		summon P cursed;
		now the raw-magic-modifier of P is 0;
		if the player is not ass protected, now the raw-magic-modifier of P is 2.

Chapter 2 - Blue Scrunchie

[The first is obtained from dungeon apothecary, second is obtained from hotel library.]

A blue scrunchie is a kind of scrunchie. 1 blue scrunchie is in Dungeon27. 1 blue scrunchie is in Hotel25. Figure of blue scrunchie is the file "Items/Accessories/Head/scrunchie2.png".

Definition: A blue scrunchie (called S) is immune to change:
	decide yes.

schoolgirl-summoned is a number that varies.

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
	if diaper quest is 1:
		if the player is pigtailed, say "Your hair magically changes colour and is now platinum blonde!";
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

To compute outfit of (H - a blue scrunchie):
	if diaper quest is 1:
		increase the outfit-charge of H by 1;
		if the outfit-charge of H > 25:
			now the outfit-charge of H is 0;
			compute class outfit of H.

To compute class outfit of (H - a blue scrunchie):
	let R be a random off-stage cheeky schoolgirl outfit;
	if diaper quest is 0 and (the number of worn scrunchies is 1 or (R is not actually summonable and the number of worn schoolgirl outfits is 0)):
		let O be a random off-stage tartan tube top;
		let N be a random off-stage necktie;
		let S be a random off-stage mesh stockings;
		let T be a random off-stage tartan miniskirt;
		if T is actually summonable:
			say "[bold type]A tight, extremely revealing tartan skirt appears on you![line break][variable custom style][if the player is pigtailed]Pigtails,[otherwise]Ponytailed hair[end if] and a tiny tartan skirt?  I think I know where this is going...[roman type][line break]";
			summon T cursed;
			now the raw-magic-modifier of T is 0;
			if diaper quest is 0, now T is temptation;
		if O is actually summonable and there is a worn tartan miniskirt: [if the miniskirt spawned let's try and spawn the tube top as well]
			say "[bold type]A very skimpy tartan tube top shimmers into existence around your [BreastDesc]![line break][variable custom style]I guess that makes me a slutty schoolgirl. [if the bimbo of the player < 8]Sigh...there[']s more, isn[']t there.[otherwise if the bimbo of the player > 12]Tee hee!  I guess I am being pretty naughty. I hope there[']s more to this outfit...[end if][roman type][line break]";
			summon O cursed;
			now the raw-magic-modifier of O is 0;
			now O is confidence;
			if tentacle-quest is appropriate, now the quest of O is tentacle-quest;
		otherwise if S is actually summonable and there is a worn tartan tube top and there is a worn tartan miniskirt and there is a worn necktie:
			summon S cursed;
			now the raw-magic-modifier of S is 1;
			now S is confidence;
			say "[bold type]Fishnet stockings appear around your [ShortDesc of thighs]![roman type][line break]";
		otherwise if N is actually summonable and there is a worn tartan tube top and there is a worn tartan miniskirt:
			summon N cursed;
			now the raw-magic-modifier of N is 0;
			say "[bold type]A small tartan necktie shimmers into existence around your neck![line break][variable custom style]This must complete the outfit.[roman type][line break]";
	otherwise:
		let S be a random off-stage frilly stockings;
		if R is actually summonable or (R is schoolgirl outfit and schoolgirl-summoned is 0):
			if schoolgirl-summoned is 0:
				repeat with O running through worn dresses:
					say "Your [O] vanishes!";
					destroy O;
				repeat with O running through worn skirts:
					say "Your [O] vanishes!";
					destroy O;
			now schoolgirl-summoned is 1;
			summon R cursed;
			now the raw-magic-modifier of R is 1;
			if tentacle-quest is appropriate, now the quest of R is tentacle-quest;
			say "[bold type]A black fleece appears on you, followed by a short skirt and a matching tie![line break][variable custom style]I guess that makes me a [if diaper quest is 1]naughty[otherwise]slutty[end if] schoolgirl. [if the bimbo of the player < 8]Sigh...[end if][roman type][line break]";
		otherwise if there is a worn schoolgirl outfit and S is actually summonable:
			summon S cursed;
			now the raw-magic-modifier of S is 1;
			now S is confidence;
			say "[bold type]White cotton stockings appear around your [ShortDesc of thighs]![roman type][line break]".

To decide which object is the potential-upgrade-target of (C - a blue scrunchie):
	if diaper lover > 0, decide on a random off-stage monkey scrunchie;
	decide on nothing.

Chapter 3 - Monkey Scrunchie

A monkey scrunchie is a kind of scrunchie. There are 2 monkey scrunchies. Figure of monkey scrunchie is the file "Items/Accessories/Head/scrunchie3.png".

To decide which figure-name is the clothing-image of (C - a monkey scrunchie):
	decide on figure of monkey scrunchie.

The printed name of monkey scrunchie is usually "[TQlink of item described][clothing-title-before]monkey scrunchie[clothing-title-after][TQxlink of item described][verb-desc of item described]".
The printed plural name of monkey scrunchie is usually "[TQlink of item described][clothing-title-before]monkey scrunchies[clothing-title-after][TQxlink of item described][verb-desc of item described]".

To decide which number is the initial cringe of (H - a monkey scrunchie):
	decide on 4.

To say ShortDesc of (H - a monkey scrunchie):
	say "monkey scrunchie".

To say ClothingDesc of (H - a monkey scrunchie):
	say "A childish elastic brown hair tie with little monkeys, used to style hair.".

Definition: a monkey scrunchie (called C) is untransformable:
	decide yes.

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

The printed name of a rubber scrunchie is "[TQlink of item described][clothing-title-before]rubber scrunchie[clothing-title-after][TQxlink of item described][verb-desc of item described]".

Chapter 5 - Helium Balloons

A pair of helium balloons is a kind of scrunchie.  A pair of helium balloons is usually latex.  Figure of helium balloons is the file "Items/Accessories/Head/scrunchie4.png". There is 1 pair of helium balloons.

To decide which figure-name is the clothing-image of (C - a pair of helium balloons):
	decide on figure of helium balloons.

The printed name of a pair of helium balloons is "[TQlink of item described][clothing-title-before]pair of helium balloons[clothing-title-after][TQxlink of item described][verb-desc of item described]".

To decide which number is the initial outrage of (H - a pair of helium balloons):
	decide on 11.

To say ShortDesc of (H - a pair of helium balloons):
	say "pair of helium balloons".

To say ClothingDesc of (H - a pair of helium balloons):
	say "Two helium balloons rise from each of your pigtails, attached by a piece of string. One has '100% bimbo' written on it, and the other has 'I suck' written on it .".

Definition: a pair of helium balloons (called C) is untransformable:
	decide yes.

To transform (D - a scrunchie) into (C - a pair of helium balloons):
	say "Your [printed plural name of D] transform into a ";
	silently transform D into C;
	repeat with S running through worn scrunchies:
		unless S is C, only destroy S;
	say "[printed name of C] in front of your eyes!"; [no image necessary since it'll be on character window]
	say "[TransformReaction of C]".

To decide if a pair of helium balloons is roleplay:
	decide no.

To decide which number is the heaviness of (H - a pair of helium balloons):
	decide on -20. [This needs to be big as it's divided by 5 when worn]

To decide which number is the relieved heaviness of (H - a pair of helium balloons):
	if there is a worn bag of holding, decide on 0;
	decide on -4.

To decide which object is the unique-upgrade-target of (C - a scrunchie):
	if inflation fetish is 1, decide on a random off-stage pair of helium balloons;
	decide on nothing.




Scrunchies ends here.

