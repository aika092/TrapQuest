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

Definition: rugged-headband (called C) is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]
	if wearing-target is not C and wearing-target is leopard themed, decide yes;
	if wearing-target is heavy-club, decide yes;
	decide no.

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
		now B is dominance;[means you can't wear a strapon, so you get a bit of a freebie]
		say "[bold type]Your headband flexes, and a [printed name of B] materialises on your crotch![roman type][line break]";
		summon B.

To decide which number is the intelligence-influence of (C - rugged-headband):
	let X be -5;
	if C is cursed, decrease X by 2;
	if C is blessed, increase X by 2;
	decide on X.

domination-quest is a headgear-clothing-quest.

domination-quest-tries is a number that varies.

To progress quest of (Q - domination-quest):
	let C be rugged-headband;
	if C is worn and the quest of C is Q:
		if player-fucking is DOMINANT-DOMINANT or player-fucking is DOMINANT-SUPER:
			compute quest completion of Q on C;
			now domination-quest-tries is 0;
		otherwise:
			if player-fucking is DOMINANT-NEUTRAL, increase domination-quest-tries by 1;
			otherwise increase domination-quest-tries by 2;
			if domination-quest-tries < 2:
				say "Your [ShortDesc of C] quivers, like it's laughing at you. You'll need to be [if player-fucking is DOMINANT-NEUTRAL]a bit [end if]more dominant if [if C is cursed]you want to remove this curse[otherwise]you want its approval[end if]...";
			otherwise if domination-quest-tries < 3:
				say "Your [ShortDesc of C] flexes, squeezing your temples. If [if player-fucking is DOMINANT-NEUTRAL]that's the best you can do[otherwise]you don't start acting dominant[end if], [if C is cursed]you'll never get rid of this curse![otherwise]you get the feeling it's going to get really pissed off![end if]";
			otherwise if domination-quest-tries < 5:
				say "Your [ShortDesc of C] flexes, painfully squeezing your temples. It clearly thinks you [if player-fucking is DOMINANT-NEUTRAL]can do better than that[otherwise]aren't acting dominant at all[end if]. If you don't get your act together [if C is cursed]and remove this curse soon, there might be trouble in store for you![otherwise]soon, there might be trouble in store for you![end if]";
				PainUp 1;
			otherwise:
				say "Your [ShortDesc of C] flexes, painfully squeezing your temples. It gradually increases the force, and you can hear the fabric ripping under the strain. Finally, the pain reaches its peak, and the [ShortDesc of C] drops from your your forehead in shredded pieces.";
				PainUp 4;
				now domination-quest-tries is 0;
				only destroy C.

To uniquely set up (C - rugged-headband):
	now the quest of C is domination-quest.

To say QuestFlav of (Q - domination-quest):
	say "You sense that it wants you to dominate defeated enemies.".

To say QuestTitle of (Q - domination-quest):
	say " (domination quest)".

Rugged Headband ends here.
