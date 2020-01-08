Rugged Headband by Headgear begins here.

rugged-headband is a headgear. rugged-headband is unique. rugged-headband is redness-positive. rugged-headband is roleplay. rugged-headband is manly. Understand "rugged", "headband" as rugged-headband.

Definition: rugged-headband is roleplay: decide yes. [Extension not included in DQ]

The printed name of rugged-headband is usually "[clothing-title-before]rugged headband[clothing-title-after]". The text-shortcut of rugged-headband is "rghb".

Figure of rugged-headband is the file "Items/Accessories/Head/ruggedheadband1.png".
To decide which figure-name is the clothing-image of (C - rugged-headband):
	decide on figure of rugged-headband.

To say ClothingDesc of (H - rugged-headband):
	say "This [MediumDesc of H] looks like pretty primitive.".

To say ShortDesc of (H - rugged-headband):
	say "rugged headband".

Definition: rugged-headband is condom pinnable: decide yes.

Definition: rugged-headband is leopard themed: decide yes.

rugged-summoned is a number that varies.
To compute unique recycling of (C - rugged-headband):
	now rugged-summoned is 0.

To compute class outfit of (H - rugged-headband):[TODO: eventually add a loincloth]
	let B be leopard-hotpants;
	if B is not actually summonable, now B is leopard print bikini bottoms;
	let T be rugged-crop-top;
	if T is not actually summonable, now T is leopard print tube top;
	if T is not actually summonable, now T is a random off-stage leopard print bikini top;
	let C be heavy-club;
	if C is actually summonable:
		say "[bold type]Your headband flexes, and a [printed name of C] materialises in your hands.[roman type][line break]";
		summon C;
	otherwise if T is clothing and T is actually summonable:
		say "[bold type]Your headband flexes, and a [printed name of T] materialises on your chest![roman type][line break]";
		summon T;
	otherwise if B is clothing and B is actually summonable:
		now B is dominance;[means you can't wear a strap-on, so you get a bit of a freebie]
		say "[bold type]Your headband flexes, and a [printed name of B] materialises on your crotch![roman type][line break]";
		summon B.

To decide which number is the intelligence-influence of (C - rugged-headband):
	let X be -5;
	if C is cursed, decrease X by 2;
	if C is blessed, increase X by 2;
	decide on X.

domination-quest is a headgear-clothing-quest.

To uniquely set up (C - rugged-headband):
	now the quest of C is domination-quest.

To say QuestFlav of (Q - domination-quest):
	say "You sense that it wants you to take the lead role during sex.".

To say QuestTitle of (Q - domination-quest):
	say " (domination quest)".

Rugged Headband ends here.
