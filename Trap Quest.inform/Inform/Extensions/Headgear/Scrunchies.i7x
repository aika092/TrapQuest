Scrunchies by Headgear begins here.

A scrunchie is a kind of headgear.   A scrunchie is usually hair growing.

A scrunchie is blondeness-positive.  A scrunchie is brightness-positive.  A scrunchie is redness-positive. A scrunchie is usually roleplay.

The printed name of scrunchie is usually "[TQlink of item described][clothing-title-before]blue scrunchie[clothing-title-after][TQxlink of item described][verb-desc of item described]".  The printed plural name of scrunchie is usually "[TQlink of item described][clothing-title-before]blue scrunchies[clothing-title-after][TQxlink of item described][verb-desc of item described]".  The text-shortcut of scrunchie is "scr".

To compute SelfExamineDesc of (H - a scrunchie):
	let X be the largeness of hair;
	say "You have [ShortDesc of hair].  ".

This is the scrunchie must be the same colour rule:
	if there is a worn blue scrunchie:
		if wearing-target is pink scrunchie or wearing-target is rubber scrunchie:
			if summoning is 0, say "That's the wrong coloured scrunchie!";
			rule fails;
	if there is a worn pink scrunchie:
		if wearing-target is blue scrunchie or wearing-target is rubber scrunchie:
			if summoning is 0, say "That's the wrong coloured scrunchie!";
			rule fails;
	if there is a worn rubber scrunchie:
		if wearing-target is pink scrunchie or wearing-target is blue scrunchie:
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
	let S be the number of worn scrunchies;
	if S is 1 and the largeness of hair > 4, decide yes;
	decide no.

[!<YourselfIsPigtailed>+

Does the player have pigtails?

+!]
Definition: yourself is pigtailed:
	let S be the number of worn scrunchies;
	if S is 2 and the largeness of hair > 1, decide yes;
	decide no.

To decide which number is the initial outrage of (C - a scrunchie):
	if diaper quest is 1, decide on 0;
	decide on 3.

To decide which number is the initial cringe of (C - a scrunchie):
	decide on 4.


Chapter 1 - Pink Scrunchie

[Obtained from the mannequin]

A pink scrunchie is a kind of scrunchie. There are 2 pink scrunchies. Figure of pink scrunchie is the file "scrunchie1.png".

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
	if the headgear chance of H < the threshold of H:
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
		otherwise if P is actually summonable:
			say "[bold type]A pair of purple pom-poms appear to cover your hands![line break][variable custom style]I guess I shouldn't be surprised.[roman type]";
			summon P cursed;
			now the raw-magic-modifier of P is 0;
			if the player is not ass protected, now the raw-magic-modifier of P is 2.

Chapter 2 - Blue Scrunchie

[The first is obtained from dungeon apothecary, second is obtained from hotel library.]

A blue scrunchie is a kind of scrunchie. 1 blue scrunchie is in Dungeon27. 1 blue scrunchie is in Hotel25.  Figure of blue scrunchie is the file "scrunchie2.png".

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

To compute periodic effect of (H - a blue scrunchie):
	if diaper quest is 1 and (the headgear chance of H < the threshold of H or schoolgirl-summoned is 0), compute class outfit of H;
	compute hair growth of H;
	compute hair colour change of H.[Class outfit is handled during alchemy]

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
			say "[bold type]A very skimpy tartan tube top shimmers into existence around your [BreastDesc]![line break][variable custom style]I guess that makes me a slutty schoolgirl. [if the bimbo of the player < 8]Sigh...there[']s more, isn[']t there.[otherwise if the bimbo of the player > 12]Tee hee!  I guess I am being pretty naughty.  I hope there[']s more to this outfit...[end if][roman type][line break]";
			summon O cursed;
			now the raw-magic-modifier of O is 0;
			now O is confidence;
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
			say "[bold type]A black fleece appears on you, followed by a short skirt and a matching tie![line break][variable custom style]I guess that makes me a [if diaper quest is 1]naughty[otherwise]slutty[end if] schoolgirl.  [if the bimbo of the player < 8]Sigh...[end if][roman type][line break]";
		otherwise if there is a worn schoolgirl outfit and S is actually summonable:
			summon S cursed;
			now the raw-magic-modifier of S is 1;
			now S is confidence;
			say "[bold type]White cotton stockings appear around your [ShortDesc of thighs]![roman type][line break]".

Definition: a blue scrunchie (called C) is untransformable:
	if diaper quest is 0, decide yes;
	if the player is not pigtailed, decide yes;
	decide no.

To decide which object is the potential-upgrade-target of (C - a blue scrunchie):
	decide on a random off-stage monkey scrunchie.

Chapter 3 - Monkey Scrunchie

A monkey scrunchie is a kind of scrunchie. There are 2 monkey scrunchies.  Figure of monkey scrunchie is the file "scrunchie3.png".

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




Scrunchies ends here.
