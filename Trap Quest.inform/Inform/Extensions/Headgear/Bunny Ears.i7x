Bunny Ears by Headgear begins here.

A bunny ears is a kind of headgear. Understand "pair", "of" as bunny ears. A bunny ears is blondeness-positive. A bunny ears is brightness-positive. A bunny ears is usually hair growing. A bunny ears is usually dexterity-influencing.


bunny-summoned is a number that varies.

Part 1 - Bunny Waitress Ears

bunny waitress ears is a bunny ears. bunny waitress ears is satin. bunny waitress ears has a number called service-ready.

Definition: bunny waitress ears (called C) is fluid immune:
	decide no.

Figure of bunny waitress ears is the file "Items/Accessories/Head/bunnyears1.png". 

The printed name of bunny waitress ears is "[TQlink of item described][clothing-title-before]pair of bunny ears[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of bunny waitress ears is "bne".

To decide which figure-name is the clothing-image of (C - bunny waitress ears):
	decide on figure of bunny waitress ears.

To say ClothingDesc of (H - bunny waitress ears):
	say "A pair of fake bunny waitress ears on a headband, with a frilly piece of fabric between the ears.".
	
To say ShortDesc of (H - bunny waitress ears):
	say "fake bunny waitress ears".

To compute SelfExamineDesc of (H - bunny waitress ears):
	let X be the largeness of hair;
	say "You are wearing a pair of fake bunny ears on top of your [ShortDesc of hair]. ".

To compute class outfit of (H - bunny waitress ears):
	let B be a random off-stage bunny waitress outfit;
	if B is actually summonable or (B is bunny outfit and bunny-summoned is 0):
		if bunny-summoned is 0:
			repeat with O running through worn dresses:
				say "Your [O] vanishes!";
				destroy O;
			repeat with O running through worn trousers:
				say "Your [O] vanishes!";
				destroy O;
		say "[bold type]You feel your bunny waitress ears twitch as if they were real, and then a [ShortDesc of B] appears on you![roman type][line break]";
		summon B cursed;
		if artificial enhancements fetish is 1, now the raw-magic-modifier of B is ((4 - the silicone volume of breasts) / 5) - 1;
		if bunny-summoned < 1, now bunny-summoned is 1.

This is the bunny waitress inappropriate rule:
	now bunny waitress ears is in Holding Pen.
The bunny waitress inappropriate rule is listed in the diaper quest fix rules.

Definition: bunny waitress ears (called C) is untransformable:
	if the potential-upgrade-target of C is nothing, decide yes;
	decide no.

To decide which object is the potential-upgrade-target of (C - bunny waitress ears):
	if egg laying fetish is 0, decide on nothing; [TODO: change]
	if the total egg fill of belly > 0, decide on a random off-stage rubber bunny ears;
	decide on nothing.

To decide which number is the intelligence-influence of (C - a bunny waitress ears):
	let I be the magic-modifier of C;
	if the service-ready of C > 0, increase I by 3;
	decide on I.

To compute unique periodic effect of (C - bunny waitress ears):
	let G be a random held champagne-glass;
	let CG be a random held cocktail-glass;
	if G is empty bottle or CG is empty bottle:
		if the service-ready of C is 1:
			say "[bold type]The bonus intelligence-enhancing effect of your bunny ears has ended.[roman type][line break]";
			now the service-ready of C is 0;
	otherwise if G is bottle or CG is bottle:
		if the service-ready of C is 0:
			say "[bold type]You can feel your bunny ears making you much smarter[one of]![line break][variable custom style]Wow, I feel amazing while carrying around [if G is bottle and CG is bottle]these drinks[otherwise]this drink[end if], just like a good bunny waitress![roman type][line break][or] again![stopping][roman type][line break]";
			now the service-ready of C is 1.

To decide which number is the waitress bartering value of (T - a bottle) for (M - a monster):
	if ((the class of the player is bunny and bunny waitress ears is worn) or serving table is worn) and M is intelligent and M is human and M is friendly and T is non-empty:
		if the fill-colour of T is golden or the fill-colour of T is murky or the fill-colour of T is creamy:
			if M is female, decide on 2;
		otherwise:
			decide on 4;
	decide on 0.

To say OfferFlav of (T - a waitress vessel):
	if the player is able to speak:
		say "[variable custom style]'[if the second noun is unfriendly]Please, take this instead!'[otherwise if bunny waitress ears is worn and T is non-empty]Would you care for a drink?'[otherwise]Would you be interested in this?'[end if][roman type][line break]";
	otherwise if the player is able to make sounds:
		say "[variable custom style][muffled sounds][roman type][line break]";
	otherwise:
		say "You hold the item up to the [second noun].".

To compute (M - a monster) considering (T - a bottle):
	if M is not interested:
		say "[BigNameDesc of M] isn[']t even looking at you.";
	otherwise if M is not intelligent:
		say "[BigNameDesc of M] ignores your offer completely.";
	otherwise if the waitress bartering value of T for M > 0:
		if the waitress-boredom of M > 0:
			say "[BigNameDesc of M] turns away. [speech style of M]'I'm not thirsty at the moment.'[roman type][line break]";
		otherwise:
			say WaitressOfferAcceptFlav of M to T;
			say WaitressTakeFlav of M to T;
			compute waitress resolution of M taking T;
	otherwise if convincing power > 0 and (M is friendly or convincing power >= the square root of (a random number between 1 and 10)):
		say MonsterOfferAcceptFlav of M to T;
		say MonsterTakeFlav of M to T;
		now T is in Holding Pen;
		now M is retaining T;
		compute resolution of M taking T;
	otherwise:
		if M is not rejecting T, make M expectant; [The player can keep offering things they haven't offered yet without the NPC immediately moving to punishment.]
		now M is rejecting T;
		say MonsterOfferRejectFlav of M to T.

To say WaitressOfferAcceptFlav of (M - a monster) to (T - a bottle):
	say "[BigNameDesc of M] smiles. [line break][speech style of M]'Ah yes, I will have a drink. Thank you, [one of]darling[or]cutie[or]sweetie[at random].'[roman type][line break]".

To say WaitressTakeFlav of (M - a monster) to (T - a bottle):
	say "[big he of M] takes the [ShortDesc of T] out of your hand and drinks it all, before returning the empty vessel to you.".

To say WaitressPaymentFlav of (M - a monster) with (C - an accessory):
	say "[speech style of M]'Keep the change.'[roman type][line break][big he of M] throws a [ShortDesc of C] in your direction.".

To compute waitress resolution of (M - a monster) taking (T - a bottle):
	now the doses of T is 0;
	now the waitress-boredom of M is 300;
	let C be a random off-stage plentiful accessory;
	let R be a random number from the difficulty of M to (the difficulty of M * 4) / 3;
	set jewellery value of C to (R - 3);
	now C is in the location of the player;
	say WaitressPaymentFlav of M with C;
	compute autotaking C.

To compute service spill punishment of (C - bunny waitress ears):
	if serving table is off-stage and the player is not in danger and the player is not immobile and there is a held waitress vessel:
		say "[bold type]You feel a heavy weight on your back! [roman type]You now have a large glass table magically attached to your back. It's preventing you from standing up!";
		summon serving table;
		repeat with V running through held waitress vessels:
			if V is empty:
				now the fill-colour of V is white;
				now the doses of V is the max-doses of V;
				say "Your [ShortVesselDesc of V] magically fills itself with milk and then disappears from your hand, appearing on top of the [ShortDesc of serving table]!";
			otherwise:
				say "Your [ShortVesselDesc of V] disappears from your hand, appearing on top of the [ShortDesc of serving table]!";
		say "[variable custom style][one of]What, so I'm not allowed to stand up until I've served these drinks?[or]Uh-oh, not again![stopping][roman type][line break]";
	if the total volume of hips < the largeness of breasts and the player is not bottom heavy:
		say "You feel your butt expanding [if the silicone volume of hips > 0]with more silicone [otherwise if artificial enhancements fetish is 1]with silicone implants [end if]as punishment[one of] for being a clumsy waitress[or][stopping]!";
		if artificial enhancements fetish is 1, AssImplantsUp 2;
		otherwise AssSwell 2;
	otherwise if the player is not top heavy:
		say "You feel your [if the silicone volume of breasts > 0]breast implants expanding[otherwise if artificial enhancements fetish is 1]breasts being enhanced with silicone implants[otherwise]breasts growing larger[end if] to try and make up for the fact that you're a [one of]useless[or]rubbish[or]terrible[or]clumsy[in random order] cocktail waitress!";
		if artificial enhancements fetish is 1, BustImplantsUp 4;
		otherwise BustUp 4.
	

Part 2 - Rubber Bunny Ears

rubber bunny ears is a bunny ears. rubber bunny ears is latex. rubber bunny ears has a number called charge.

Definition: rubber bunny ears (called C) is fluid immune:
	decide yes.

Figure of rubber bunny ears is the file "Items/Accessories/Head/bunnyears2.png". 

The printed name of rubber bunny ears is "[TQlink of item described][clothing-title-before]latex bunny ears hood[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of rubber bunny ears is "lbe". Understand "hood" as rubber bunny ears.

To decide which figure-name is the clothing-image of (C - rubber bunny ears):
	decide on figure of rubber bunny ears.

To say ClothingDesc of (H - rubber bunny ears):
	say "A latex cream hood with a large pair of rubber bunny ears on top.".
	
To say ShortDesc of (H - rubber bunny ears):
	say "bunny ears hood".

To compute SelfExamineDesc of (H - rubber bunny ears):
	let X be the largeness of hair;
	say "You are wearing a latex bunny ears hood on top of your [ShortDesc of hair]. ".

To compute class outfit of (H - rubber bunny ears):
	let B be a random off-stage cream rubber bunny outfit;
	if B is actually summonable or (B is bunny outfit and bunny-summoned < 2):
		if bunny-summoned < 2:
			repeat with O running through worn dresses:
				say "Your [O] vanishes!";
				destroy O;
			repeat with O running through worn trousers:
				say "Your [O] vanishes!";
				destroy O;
		say "[bold type]You feel your rubber bunny ears twitch as if they were real, and then a [ShortDesc of B] appears on you![roman type][line break]";
		summon B cursed;
		now the raw-magic-modifier of B is ((4 - the total egg fill of belly) / 5) - 1;
		if bunny-summoned < 2, now bunny-summoned is 2.

To compute unique periodic effect of (C - rubber bunny ears):
	increase the charge of C by 1;
	if the charge of C > 23:
		now the charge of C is 0;
		say "[one of][bold type]Suddenly your belly feels strange![roman type][line break]You realise that your body has somehow created an egg![line break][variable custom style]Huh?! Am I now an egg-laying bunnygirl?![roman type][line break][or]You feel your body create another egg.[stopping]";
		assfill 1 medium eggs.


Part 3 - Bunny Hat

bunny hat is a kind of bunny ears. a bunny hat is wool. a bunny hat has a number called charge.

black bunny hat is a bunny hat. The printed name of black bunny hat is "[TQlink of item described][clothing-title-before]black bunny hat[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of black bunny hat is "bbh". 
white-bunny-hat is a bunny hat. The printed name of white-bunny-hat is "[TQlink of item described][clothing-title-before]white bunny hat[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of white-bunny-hat is "wbh". Understand "white", "bunny", "hat" as white-bunny-hat.
brown bunny hat is a bunny hat. The printed name of brown bunny hat is "[TQlink of item described][clothing-title-before]brown bunny hat[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of brown bunny hat is "brbh". 

To decide which number is the initial cringe of (C - a bunny hat):
	decide on 3.

To decide which number is the initial cringe of (C - white-bunny-hat):
	decide on 4.

To decide which number is the initial cringe of (C - brown bunny hat):
	decide on 7.

Definition: a bunny hat (called C) is untransformable:
	if the potential-upgrade-target of C is nothing, decide yes;
	decide no.

To decide which object is the potential-upgrade-target of (C - black bunny hat):
	decide on a random off-stage white-bunny-hat.

To decide which object is the potential-upgrade-target of (C - white-bunny-hat):
	decide on a random off-stage brown bunny hat.

Figure of black bunny hat is the file "Items/Accessories/Head/bunnyhat1.png". 
Figure of white bunny hat is the file "Items/Accessories/Head/bunnyhat2.png". 
Figure of brown bunny hat is the file "Items/Accessories/Head/bunnyhat3.png". 

To decide which figure-name is the clothing-image of (C - black bunny hat):
	decide on figure of black bunny hat.

To decide which figure-name is the clothing-image of (C - white-bunny-hat):
	decide on figure of white bunny hat.

To decide which figure-name is the clothing-image of (C - brown bunny hat):
	decide on figure of brown bunny hat.

To say ClothingDesc of (H - black bunny hat):
	say "A black woollen hat with pink bunny ears on top.".

To say ClothingDesc of (H - white-bunny-hat):
	say "A white woollen hat with pink bunny ears on top and a pink bow at the side.".

Definition: white-bunny-hat (called H) is bow themed:
	decide yes.

To say ClothingDesc of (H - brown bunny hat):
	say "A brown woollen hat with floppy bunny ears at the side and a cute bunny face on the front.".
	
To say ShortDesc of (H - a bunny hat):
	say "bunny hat".

To compute SelfExamineDesc of (H - a bunny hat):
	let X be the largeness of hair;
	say "You are wearing a bunny hat on top of your [ShortDesc of hair]. ".

To compute class outfit of (H - a bunny hat):
	let B be a random off-stage dq bunny outfit;
	let S be a random off-stage bunny booties;
	if B is actually summonable or (B is bunny outfit and bunny-summoned is 0):
		if bunny-summoned is 0:
			repeat with O running through worn dresses:
				say "Your [O] vanishes!";
				destroy O;
			repeat with O running through worn trousers:
				say "Your [O] vanishes!";
				destroy O;
		say "[bold type]You feel your a bunny hat twitch as if the ears were real, and then a [ShortDesc of B] appears on you![roman type][line break]";
		summon B cursed;
		now the raw-magic-modifier of B is the number of worn diapers;
		if bunny-summoned is 0, now bunny-summoned is 1;
	otherwise if the class of the player is bunny and S is actually summonable:
		say "[bold type]You feel your a bunny hat twitch as if the ears were real, and then a [ShortDesc of S] appears on your feet![roman type][line break]";
		summon S cursed;
		now the raw-magic-modifier of S is 2 - the number of held chocolate eggs.

To compute unique periodic effect of (C - a bunny hat):
	increase the charge of C by 1;
	if the charge of C > 23 and there is an off-stage chocolate egg:
		let E be a random off-stage chocolate egg;
		now the charge of C is 0;
		say "[bold type]Suddenly a [E] [bold type]appears in your hand![roman type][line break]Your [C] loses some magic power and becomes a ";
		decrease the raw-magic-modifier of C by 2;
		say "[C].";
		now E is carried by the player.

Report TQeating chocolate egg:
	let H be a random worn bunny hat;
	if H is clothing:
		say "Your [H] shines brightly and turns into a ";
		increase the raw-magic-modifier of H by 2;
		say "[H]!".

Part 4 - Bunny Glasses

bunny glasses is a bunny ears. bunny glasses is plastic.

Figure of bunny glasses is the file "Items/Accessories/Head/bunnyears3.png". 

The printed name of bunny glasses is "[TQlink of item described][clothing-title-before]bunny glasses[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of bunny glasses is "bgl".

To decide which figure-name is the clothing-image of (C - bunny glasses):
	decide on figure of bunny glasses.

To say ClothingDesc of (H - bunny glasses):
	say "A pair of giant pink fake glasses with large pink bunny ears coming out the top and a bunny nose underneath. It looks very silly.".
	
To say ShortDesc of (H - bunny glasses):
	say "bunny glasses".

To compute class outfit of (H - bunny glasses):
	let B be a random off-stage bunny dress;
	let K be a random off-stage bunny socks;
	if B is actually summonable or (B is bunny outfit and bunny-summoned < 3):
		if bunny-summoned < 3:
			repeat with O running through worn dresses:
				say "Your [O] vanishes!";
				destroy O;
			repeat with O running through worn skirted clothing:
				say "Your [O] vanishes!";
				destroy O;
		say "[bold type]You feel your a bunny hat twitch as if the ears were real, and then a [ShortDesc of B] appears on you![roman type][line break]";
		summon B cursed;
		now the raw-magic-modifier of B is the number of worn diapers;
		if bunny-summoned < 3, now bunny-summoned is 3;
	otherwise if K is actually summonable or (K is clothing and bunny-summoned < 4):
		if bunny-summoned < 4:
			repeat with O running through worn leg covering clothing:
				say "Your [O] vanishes!";
				destroy O;
		say "[bold type]You feel your a bunny hat twitch as if the ears were real, and then a [ShortDesc of K] appears on your feet![roman type][line break]";
		summon K cursed;
		now the raw-magic-modifier of K is 1;
		now K is intelligence-influencing;
		if bunny-summoned < 4, now bunny-summoned is 4.

To compute SelfExamineDesc of (H - bunny glasses):
	say "You are wearing a pair of silly pink bunny glasses on your face. ".



Bunny Ears ends here.
