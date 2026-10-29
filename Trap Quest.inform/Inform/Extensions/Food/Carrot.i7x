Carrot by Food begins here.

[These are toys that you can eat. With snowball fetish disabled, you have a choice between using it as a toy or using it as food. If it is enabled, then inserting it simply makes the food less appetizing.]

An edible-toy is a kind of sex toy. A edible-toy has a number called previous-insertion. The tradability of a edible-toy is 0. An edible-toy is usually biological. The printed name of an edible-toy is usually "[clothing-title-before][MediumDesc of item described][clothing-title-after]". An edible-toy is usually rare.

Definition: an edible-toy is fetish appropriate:
	if the player is the donator, decide yes;
	decide no.

To decide which number is the soak-limit of (C - an edible-toy):
	decide on 3.

An edible-toy is edible.
Definition: an edible-toy is TQEdible: decide yes.

Definition: an edible-toy is food themed: decide yes.

To decide which figure-name is clothing-image of (C - an edible-toy):
	decide on figure of jelldo.

To say EdibleDesc of (C - an edible-toy):
	if the previous-insertion of C is 0:
		say "It's edible!";
	otherwise:
		if snowball fetish is 1, say "It's been in your ass, but it's technically edible.";
		otherwise say "It was edible up until it got put up your [if the previous-insertion of C is 1][vagina][otherwise][asshole][end if]...";

[When inserted anally, edible toys become "dipped"]
To compute periodic effect of (C - an edible-toy):
	compute wickdip of C.
To compute wickdip of (C - an edible-toy):
	let F be a random fuckhole penetrated by C;
	if F is asshole, now previous-insertion of C is 2;
	otherwise now previous-insertion of C is 1;
	let flav be 0;
	if F is vagina and the semen volume of F > 0:
		increase the semen-soak of C by 1;
		decrease the semen volume of F by 1;
		now flav is 1;
	otherwise if C is penetrating asshole and the total fluid fill of belly > 0:
		if the semen-soak of C < 1 and the semen volume of belly > 0:
			increase the semen-soak of C by 1;
			decrease the semen volume of belly by 1;
			now flav is 1;
		otherwise if the slime-soak of C < 1 and the slime volume of belly > 0:
			increase the slime-soak of C by 1;
			decrease the slime volume of belly by 1;
			now flav is 1;
		otherwise if the milk-soak of C < 1 and the milk volume of belly > 0:
			increase the milk-soak of C by 1;
			decrease the milk volume of belly by 1;
			now flav is 1;
	if flav is 1, say "Some liquid clings to your [ShortDesc of C].";

Check TQeating edible-toy:
	let C be the noun;
	let S be the semen-soak of C;
	let L be the semen-soak of C;
	let K be the semen-soak of C;
	if the previous-insertion of the noun > 0:
		let F be asshole;
		if the previous-insertion of the noun is 1, now F is vagina;
		if snowball fetish is 0, say "That's not edible anymore. It's been up your [variable F]..." instead;
		let G be the grossness addiction of the player;
		let T be 8;
		if the player is nearly hungry, decrease T by 2;
		if the player is hungry, decrease T by 2;
		if S + L + K > 0, decrease T by the thirst of the player;
		if G < T:
			if debugmode > 0, say "If debug mode was disabled, the player would refuse to eat that.";
			otherwise say "That's been up my [variable F]. I'd have to be pretty desperate to eat something like that..." instead;
	if S > 0 or L > 0:
		let X be 5 - the thirst of the player;
		if the semen taste addiction of the player <= X, say "[line break][variable custom style]I can't eat that, there's [semen] on it![roman type][line break]";
		if the slime taste addiction of the player <= X, say "[line break][variable custom style]I can't eat that, there's [slime] on it![roman type][line break]";

To compute SausageBurst of (C - an edible-toy):
	do nothing.

Report TQeating edible-toy:
	let S be the size of the noun;
	allocate 5 + (S / 2) seconds;
	now S is S / 3;
	if S < 0, now S is 1;
	StomachFoodUp S;
	compute SausageBurst of the noun;
	say "[SlurpFlav of the noun] [YumFlav of the noun]";
	only destroy the noun.

To say SlurpFlav of (C - an edible-toy):
	let S be the semen-soak of C;
	let L be the slime-soak of C;
	let M be the milk-soak of C;
	let G be the grossness addiction of the player;
	let A be 0;
	if S > 0, increase A by the semen addiction of the player;
	if L > 0, increase A by the slime taste addiction of the player;
	if M > 0, increase A by the milk taste addiction of the player;
	if S + L + M > 0:
		say "[if A + G < 10]You try your best to wipe off the fluids[otherwise if A + G < 20]You build up some courage and slurp off the fluids[otherwise]You start by slurping off every last drop of fluids, savoring the taste[end if] before you eat. ";
		SilentlyGrossOut 3;
		if S > 0, StomachSemenUp 1;
		if L > 0, StomachSlimeUp 1;
		if M > 0, StomachMilkUp 1;
	otherwise if the previous-insertion of C > 0:
		let F be asshole;
		if previous-insertion of C is 2, now F is asshole;
		otherwise now F is vagina;
		say "[if G < 4]You try your best to wipe off any[otherwise if G < 8]It's tough, but you ignore the[otherwise]You ignore the[end if] [variable F] residue as you start eating the [ShortDesc of C]. ";
		SilentlyGrossOut 1;
	otherwise:
		let O be the oral sex addiction of the player;
		say "You [if the throatskill of the player is 1 and O > 3]can't resist deepthroating the [ShortDesc of C] several times before you eat, relishing the feeling of it filling up your throat. [otherwise if the throatskill of the player is 1]reflexively relax your throat as you bring the [ShortDesc of C] up to your lips. [otherwise if O > 7]can't resist holding the [ShortDesc of C] in your mouth for several seconds before you actually eat it. [otherwise if O > 3]instinctively slurp the tip of the [ShortDesc of C] into your mouth before remembering that what you're trying to do is eat it. [otherwise]find yourself a little put off by the phallic shape, and turn the [ShortDesc of C] to the side before you eat it. [end if]";

To say YumFlav of (C - an edible-toy):
	let A be the oral sex addiction of the player;
	let F be the fat-weight of the player;
	say "[if F >= 36]The entire thing is gone within the next few seconds, greedily devoured[otherwise if F >= 24]The entire thing is gone in short order, hungrily consumed[otherwise if F > 12]The entire thing is gone in under a minute, eagerly enjoyed[otherwise if the size of C > 5]There's too much of it to eat in just one sitting, so once you've had your fill, you discard the rest after enjoying several[otherwise]There isn't that much of it, so you finish the thing in a couple[end if] bites.";

carrot is an edible-toy. The size of carrot is 3. The text-shortcut of carrot is "edcr".

Figure of carrot is the file "Items/Accessories/Toys/carrot1.png".
To decide which figure-name is clothing-image of (C - carrot):
	decide on figure of carrot.

Definition: a carrot is orange themed: decide yes.

To say ClothingDesc of (C - carrot):
	say "A [DongSize of C], orange carrot. [EdibleDesc of C]".

To say ShortDesc of (C - carrot):
	say "carrot".
To say MediumDesc of (C - carrot):
	say "[DongSize of C] carrot".

[The busterfruit likes to explode when you're standing up, so if you want to move it, you need to crawl, or "wear" it]
busterfruit is an edible-toy. Understand "fruit", "bust", "buster" as busterfruit. The text-shortcut of busterfruit is "edbc". The size of a busterfruit is 5.

Figure of busterfruit is the file "Items/Accessories/Toys/busterfruit1.png".
To decide which figure-name is clothing-image of (C - busterfruit):
	decide on figure of busterfruit.

Definition: a busterfruit is red themed: decide yes.

To say ShortDesc of (C - busterfruit):
	say "buster fruit".
To say ClothingDesc of (C - busterfruit):
	say "A [DongSize of C], squishy, red fruit shaped like a pear... or a butt plug, depending on how you look at it. It looks a bit unstable. [EdibleDesc of C]".

To say MediumDesc of (C - busterfruit):
	say "[DongSize of C] buster fruit[if the player is upright and C is not worn] (unstable)[end if]".

Check dropping busterfruit:
	if the player is upright and the total-soak of the noun <= 0:
		say "Are you sure you want to do that? You get the feeling [one of]something will happen[or]it will explode[stopping] if you drop it right now.";
		unless the player is consenting:
			say "Then you should get on your knees first" instead.

Report dropping busterfruit:
	compute Rearm of busterfruit.

To compute SausageBurst of (C - busterfruit):
	PainUp 10;
	increase the sweet-scent of the player by 1.

To say YumFlav of (C - busterfruit):
	say "You bite into the [C], which [one of][or]still [stopping]surprises you with its sweet flavor and slightly chewy texture. However, a dreadful spicyness fills your mouth as your teeth reach the center, and your eyes water as you quickly scarf down the rest.".

To compute Rearm of (B - busterfruit):
	if the total-soak of B > 0:
		say "You hear a hiss as the [ShortDesc of B] instantly dries off.";
		now semen-soak of B is 0;
		now slime-soak of B is 0;
		now milk-soak of B is 0;
	otherwise if the player is upright:
		PineTrigger.

To PineTrigger:
	let P be busterfruit;
	say "The [ShortDesc of P] explodes, pelting you with sticky chunks as its juice vaporizes into a cloud of extra spicy mist.";
	PainUp 10;
	repeat with M running through monsters in the location of the player:
		let D be 10;
		increase D by fire theme bonus * 20;
		damage (D / (combatSpeed + 1)) on M;
	BodyRuin 3.

Carry out going when busterfruit is held:
	unless busterfruit is worn, compute Rearm of busterfruit.

Report standing when busterfruit is held:
	unless busterfruit is worn, compute Rearm of busterfruit.

Carry out going when busterfruit is in the location of the player:
	unless busterfruit is worn, compute Rearm of busterfruit.

[TODO: investigate why this doesn't work]
Check throwing busterfruit at a monster:
	if the player is immobile, say "It's a bit late for that, don't you think?" instead;
	allocate 6 seconds;
	let C be the noun;
	if the total-soak of the noun <= 0:
		say "You throw the [ShortDesc of C] at the [NameDesc of the second noun], which bounces off without doing much damage.";
		now attack-type is 4;
		damage 1 on the second noun;
		now latestCombatFocus is the second noun;
		now C is in the location of the player;
	otherwise if the player is upright:
		PineTrigger;
	otherwise:
		say "You launch the [ShortDesc of C] at [NameDesc of the second noun], which hits [him of the second noun] right in [his of the second noun] [MonsterFaceDesc of the second noun]! Fragments of fruit go everywhere as [he of the second noun] is covered in a cloud of spicy mist.";
		now attack-type is 4;
		let D be 10;
		increase D by fire theme bonus * 20;
		damage (D / (combatSpeed + 1)) on the second noun;
		now latestCombatFocus is the second noun;
	destroy the noun instead.

[The sapling always has the expansion enchantment, and it's always cursed. It falls out if it runs out of 'nutrition' (cum). Once it expands to full, it sprouts into the relevant type of food. Also, while it's inside, it likes to whip nearby npc's]
sapling is an edible-toy. Understand "sap", "ling" as sapling. sapling has a thing called home-tree. The home-tree of a sapling is usually the throne. The text-shortcut of sapling is "edsp". The size of sapling is 1. sapling is cursed.

Figure of sapling is the file "Items/Accessories/Toys/sapling1.png".
To decide which figure-name is clothing-image of (C - sapling):
	decide on figure of sapling.

To say ShortDesc of (M - sapling):
	say "sapling".

To say HomeDesc of (M - sapling):
	let F be the fruit of M;
	if F is cocochunk, say "dryad";
	otherwise say ShortDesc of F.

To decide which object is the fruit of (M - sapling):
	let N be the home-tree of M;
	if N is coconut-dryad:
		decide on cocochunk;
	otherwise if N is apple-dryad:
		decide on apple;
	otherwise if N is lemon-dryad:
		decide on lemon;
	otherwise if N is elder-dryad:
		decide on elderberry;
	otherwise:
		decide on cocochunk.

To say ClothingDesc of (C - sapling):
	say "A [DongSize of C], semi-soft nut with a tapered shape and a long, vine-like stem. [if C is worn]That vine seems to have a mind of its own, and it's clear unfriendly to everything that isn't you[otherwise if snowball fetish is 1]You feel like it would grow something tasty, if you planted it... but when you put it in soil, it refuses to enter[otherwise]You feel like it would grow something useful, if you planted it... but when you put it in soil, it refuses to enter[end if]! [EdibleDesc of C]".

To set up influence of (C - a sapling):
	do nothing.
To set up magic state of (C - a sapling):
	now C is expansion;
	now C is cursed.

Definition: sapling is immune to change: decide yes.
Definition: sapling is blessable: decide no.

To say MediumDesc of (C - sapling):
	say "[DongSize of C] sapling".

To compute periodic effect of (C - sapling):
	let T be the toy-charge of C;
	if C is penetrating asshole, compute wickdip of C;
	if the size of C >= 10:[sprout!]
		let U be the fruit of C;
		let J be a random off-stage plentiful ring;
		let F be a random fuckhole penetrated by C;
		say "You hear a crack as the [MediumDesc of C] forces itself out of your [variable F], blossoming into a [run paragraph on]";
		if the fruit of C is off-stage:
			now U is in the location of the player;
			say "[ShortDesc of U]!";
			compute autotaking U;
		otherwise if J is clothing:
			now J is sapphire;
			now J is in the location of the player;
			say "[ShortDesc of J]!";
			compute autotaking J;
		otherwise:
			say "pretty flower. Yay!";
			FatigueDown 10;
		only destroy C;
	otherwise if the remainder after dividing T by 10 is 0 and T is not 0:[every 10 turns]
		let S be the semen-soak of C;
		let M be the milk-soak of C;
		let O be a random monster in the location of the player;
		if O is monster:
			say "The [MediumDesc of C]'s vine lashes out at [BigNameDesc of O], whipping [his of O] ankle!";
			damage 1 on O;
			now latestCombatFocus is O;
			decrease the toy-charge of C by 5;
		otherwise if S + M > 0:
			if S > 0, decrease semen-soak of C by 1;
			otherwise decrease milk-soak of C by 1;
			say "You hear a slurping noise as the [MediumDesc of C] absorbs some liquid.";
			increase the toy-charge of C by 11;[expands dong faster]
		otherwise if the remainder after dividing T by 10 is 0 and T is not 0:
			let F be a random fuckhole penetrated by C;
			say "You hear a slurping noise, like the sound of too little soda sucked through a straw, before the [MediumDesc of C] forces itself out of your [variable F].";
			Ruin F;
			now C is not penetrating F;
			now C is in the location of the player;
			now the toy-charge of C is 0.

[Bananas used to be "snacks", but now they're dildos]
banana is an edible-toy. The text-shortcut of banana is "ban". The size of banana is 3.

Figure of banana is the file "Items/Accessories/Toys/banana1.png".

To decide which figure-name is the examine-image of (F - banana):
	decide on figure of banana.

To say ShortDesc of (C - banana):
	say "banana".

To say SlurpFlav of (C - banana):
	let S be the semen-soak of C;
	let L be the slime-soak of C;
	let M be the milk-soak of C;
	let G be the grossness addiction of the player;
	let A be 0;
	if S > 0, increase A by the semen addiction of the player;
	if L > 0, increase A by the slime taste addiction of the player;
	if M > 0, increase A by the milk taste addiction of the player;
	if S + L + M > 0:
		say "[if A + G < 10]You carefully peel the skin, making sure to avoid any fluids[otherwise if A + G < 20]You peel the skin, licking the fluids off your fingers as you turn your attention[otherwise]You suck off every last drop of fluids before you peel it, savoring the taste as you turn your attention[end if] on the inner fruit. ";
		SilentlyGrossOut 3;
		if S > 0, StomachSemenUp 1;
		if L > 0, StomachSlimeUp 1;
		if M > 0, StomachMilkUp 1;
	otherwise if the previous-insertion of C > 0:
		let F be asshole;
		if previous-insertion of C is 1, now F is asshole;
		otherwise now F is vagina;
		say "You [if G < 4]are extremely careful as you peel the skin, ensuring not even a little[otherwise if G < 8]slowly peel the skin, trying to avoid much[otherwise]peel the skin, not really caring how much[end if] [variable F] residue get[if G >= 4 and G < 8]ting[otherwise]s[end if] on the inner fruit. ";
		SilentlyGrossOut 1;
	otherwise:
		let O be the oral sex addiction of the player;
		say "You [if the throatskill of the player is 1 and O > 3]can't resist deepthroating the [ShortDesc of C] several times before you remove the skin, relishing the feeling of the stiff peel filling up your mouth. [otherwise if O > 7]can't resist holding the banana in your mouth for several seconds before you remove the peel. [otherwise if O > 3]can't help but give the peel an experimental lick before removing it. [otherwise]carefully peel off the skin. [end if]";

To say YumFlav of (C - banana):
	let A be the oral sex addiction of the player;
	let F be the fat-weight of the player;
	say "You [if F > 36]swallow the rest whole, allowing your throat to do the work as it slides down your ravenous gullet.[otherwise if F > 12]finish the rest in a few big bites, hungrily satisfying your big appetite. [otherwise]take bites out of the rest until it has completely gone. [end if]".

To compute (M - a robochef) cooking (I - banana):
	let D be a random off-stage gelatin;
	if D is food:
		now the quality of D is a random number between 2 and -2;
		now the fat of D is 2;
		now D is carried by M.

Carrot ends here.
