Bunny Ears TQ by Headgear begins here.

A bunny ears is a kind of headgear. Understand "pair", "of" as bunny ears. A bunny ears is blondeness-positive. A bunny ears is brightness-positive. A bunny ears is usually hair growing. A bunny ears is usually dexterity-influencing.

Definition: a bunny ears is transformation-protected: decide no.

Part 1 - Bunny Waitress Ears

bunny waitress ears is a bunny ears. bunny waitress ears is satin. bunny waitress ears has a number called service-ready.

bunny-summoned is a number that varies.

Definition: bunny waitress ears is fluid immune: decide no.

Figure of bunny waitress ears is the file "Items/Accessories/Head/bunnyears1.png".

The printed name of bunny waitress ears is "[clothing-title-before]pair of bunny ears[clothing-title-after]". The text-shortcut of bunny waitress ears is "bne".

To decide which figure-name is the clothing-image of (C - bunny waitress ears):
	decide on figure of bunny waitress ears.

To say ClothingDesc of (H - bunny waitress ears):
	say "A pair of fake bunny waitress ears on a headband, with a frilly piece of fabric between the ears.".

To say ShortDesc of (H - bunny waitress ears):
	say "fake bunny waitress ears".

To compute SelfExamineDesc of (H - bunny waitress ears):
	let X be the largeness of hair;
	say "You are wearing a pair of fake bunny ears on top of your [ShortDesc of hair]. ".

This is the bunny waitress inappropriate rule:
	now bunny waitress ears is in Holding Pen.
The bunny waitress inappropriate rule is listed in the diaper quest fix rules.

Definition: bunny waitress ears is black themed: decide yes.

To decide which object is the unique-upgrade-target of (C - bunny waitress ears):
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
	if M is intelligent and M is human and M is friendly and T is non-empty:
		if the class of the player is royal slave and the fill-colour of T is white:
			decide on 5;
		if (the class of the player is bunny and bunny waitress ears is worn) or there is worn serving-bondage or the class of the player is "cafe maid":
			if the fill-colour of T is golden or the fill-colour of T is murky or the fill-colour of T is creamy:
				if M is female, decide on 2;
			otherwise:
				decide on 4;
	decide on 0.

To say OfferFlav of (T - a waitress vessel):
	if the player is able to speak:
		say "[if the second noun is unfriendly][variable custom style]'Please, take this instead!'[otherwise if bunny waitress ears is worn and T is non-empty][variable custom style]'Would you care for a drink?'[otherwise if the class of the player is royal slave][variable custom style]'Please accept this freshly brewed milk as a gift from the Princess.'[otherwise][variable custom style]'Would you be interested in this?'[end if][roman type][line break]";
	otherwise if the player is able to make sounds:
		say "[variable custom style][muffled sounds][roman type][line break]";
	otherwise:
		say "You hold the item up to the [second noun].".

To compute (M - a monster) considering (T - a bottle):
	if M is not interested:
		say "[BigNameDesc of M] isn't even looking at you.";
	otherwise if M is unintelligent:
		say "[BigNameDesc of M] ignores your offer completely.";
	otherwise if the waitress bartering value of T for M > 0:
		if the waitress-boredom of M > 0:
			say "[BigNameDesc of M] turns away.[line break][speech style of M]'I'm not thirsty at the moment.'[roman type][line break]";
		otherwise if T is player-origin and the class of the player is royal slave:
			say "[BigNameDesc of M] turns away.[line break][speech style of M]'I can tell that hasn't been brewed inside a royal slave.'[roman type][line break]";
		otherwise:
			now autodrink is 1;
			if the class of the player is bunny and (T is not sure or (T is cursed and T is sure) or the Known corresponding to an Magic of the fill-type of T in the Table of Drinks is 0 or the fill-type of T >= lowest-cursed) and (alcohol fetish is 1 or a random number between 1 and 2 is 1) and the player is able to drink:
				say "[WaitressOfferSuspiciousFlav of M to T]Do you take a sip of the [MediumDesc of T]? ";
				if the player is bimbo consenting:
					compute drinking T;
					say WaitressOfferSuspiciousAcceptFlav of M to T;
					say WaitressTakeFlav of M to T;
					compute waitress resolution of M taking T;
				otherwise:
					say WaitressOfferSuspiciousRejectFlav of M to T;
			otherwise:
				say WaitressOfferAcceptFlav of M to T;
				say WaitressTakeFlav of M to T;
				compute waitress resolution of M taking T;
			now autodrink is 0;
	otherwise if convincing power > 0 and (M is friendly or (convincing power + the convincability of M) >= the square root of (a random number between 1 and 15)):
		say MonsterOfferAcceptFlav of M to T;
		compute resolution of M taking T;
		compute final resolution of M taking T;
	otherwise:
		if M is not rejecting T, make M expectant; [The player can keep offering things they haven't offered yet without the NPC immediately moving to punishment.]
		now M is rejecting T;
		say MonsterOfferRejectFlav of M to T.

To say WaitressOfferAcceptFlav of (M - a monster) to (T - a bottle):
	say "[BigNameDesc of M] smiles.[line break][speech style of M]'Ah yes, I will have a drink. Thank you, [one of]darling[or]cutie[or]sweetie[at random].'[roman type][line break]".

To say WaitressOfferSuspiciousFlav of (M - a monster) to (T - a bottle):
say "[BigNameDesc of M] eyes the [ShortDesc of T] suspiciously.[line break][speech style of M]'Sure, if you drink a bit first.'[roman type][line break]".

To say WaitressOfferSuspiciousRejectFlav of (M - a monster) to (T - a bottle):
	say "[BigNameDesc of M] turns away.[line break][speech style of M]'If you don't think it's safe, then why should I?'[roman type][line break]".

To say WaitressOfferSuspiciousAcceptFlav of (M - a monster) to (T - a bottle):
	say "[BigNameDesc of M] smiles.[line break][speech style of M]'In that case, cheers!'[roman type][line break]".

To say WaitressTakeFlav of (M - a monster) to (T - a bottle):
	say "[big he of M] takes the [ShortDesc of T] out of your hand and drinks it all, before returning the empty vessel to you.".

[To say WaitressPaymentFlav of (M - a monster) with (C - an accessory):
	say "[speech style of M]'Keep the change.'[roman type][line break][big he of M] throws a [ShortDesc of C] in your direction.".]

To compute waitress resolution of (M - a monster) taking (T - a bottle):
	DoseEmpty T;
	now the waitress-boredom of M is 300;
	progress quest of milk-serve-quest;
	progress quest of bunny-waitress-quest;
	if T is can:
		say "You discard the empty [T].";
		destroy T.

To compute service spill punishment:
	if bondage protection is 0 and the player is not immobile and the number of things wrangling a body part is 0 and there is a held waitress vessel:
		let STV be 0;
		if there is worn serving-bondage, now STV is 1;
		if STV is 0 and serving tray is off-stage:
			say "[bold type]You feel a heavy weight on the front of your neck[if the player is not wrist bound behind], as your arms and wrists are forced behind you and bound with magical rope[end if]! [roman type]You now have a large leather tray sitting in front of your belly, chained to your neck.";
			summon serving tray locked;
			now serving tray is wrist-bound-behind;
		otherwise if serving table is off-stage:
			if serving tray is worn:
				say "Suddenly, your serving tray disappears in a flash! ";
				only destroy serving tray;
			say "[bold type]You feel a heavy weight on your back! [roman type]You now have a large glass table magically attached to your back. It's preventing you from standing up!";
			summon serving table;
		if there is worn serving-bondage:
			repeat with V running through held waitress vessels:
				if V is empty:
					now the fill-colour of V is white;
					DoseFill V;
					if alcohol fetish is 1, now V is cursed;
					if tough-shit is 0, now V is monster-origin; [Royal Slaves can only serve stuff brewed inside them but it would be harsh to enforce that here]
					say "Your [ShortVesselDesc of V] [if V is cursed]is surrounded by a dark glow. It [end if]magically fills itself with milk and then disappears from your hand, appearing on top of the [ShortDesc of serving table]!";
				otherwise if STV is 0:
					say "Your [ShortVesselDesc of V] disappears from your hand, appearing on top of the [ShortDesc of serving table]!";
			if serving table is worn:
				say "[variable custom style][one of]What, so I'm not allowed to stand up until I've served these drinks?[or]Uh-oh, not again![stopping][roman type][line break]";
			otherwise if there is worn serving-bondage:
				say "[variable custom style][one of]What, so I'm being forced to serve people drinks like some kind of fetish bondage waitress?[or]Uh-oh, not this again![stopping][roman type][line break]";
	if black maid headdress is worn and cafe maid headdress is off-stage:
		transform black maid headdress into cafe maid headdress;
		let O be a random worn overdress;
		let CMO be a random cafe maid outfit;
		if O is clothing and O is not CMO, transform O into CMO;
	otherwise if bondage protection is 1 or the class of the player is bunny or the class of the player is "cafe maid":
		if the total weighty volume of hips < the largeness of breasts and the player is not bottom heavy:
			say "You feel your butt expanding [if the silicone volume of hips > 0]with more silicone [otherwise if artificial enhancements fetish is 1]with silicone implants [end if]as punishment[if the class of the player is bunny][one of] for being a clumsy waitress[or][stopping][end if]!";
			if artificial enhancements fetish is 1, AssImplantsUp 2;
			otherwise AssSwell 2;
		otherwise if the player is not top heavy:
			say "You feel your [if the silicone volume of breasts > 0]breast implants expanding[otherwise if artificial enhancements fetish is 1]breasts being enhanced with silicone implants[otherwise]breasts growing larger[end if] [if the class of the player is bunny]to try and make up for the fact that you're a [one of]useless[or]rubbish[or]terrible[or]clumsy[in random order] cocktail waitress[otherwise]as punishment[end if]!";
			if artificial enhancements fetish is 1, BustImplantsUp 4;
			otherwise BustUp 4.

Chapter - Class Outfit

Definition: a bunny ears is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]
	if wearing-target is bunny outfit or wearing-target is serving table or wearing-target is bunny stockings, decide yes;
	decide no.

To compute class outfit of (H - bunny waitress ears):
	let B be a random off-stage bunny waitress outfit;
	let W be a random off-stage waitress vessel;
	if B is actually summonable or (B is bunny outfit and bunny-summoned is 0 and the number of worn bunny outfit is 0):
		if bunny-summoned is 0:
			repeat with O running through worn dresses:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
			repeat with O running through worn exclusive corsets:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
			repeat with O running through worn skirted clothing:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
			repeat with O running through worn trousers:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
		say "[bold type]You feel your bunny waitress ears twitch as if they were real, and then a [ShortDesc of B] appears on you![roman type][line break]";
		summon B;
		if artificial enhancements fetish is 1, now the raw-magic-modifier of B is ((4 - the silicone volume of breasts) / 5) - 1;
		if bunny-summoned < 1, now bunny-summoned is 1;
	otherwise if asshole is not actually occupied and reverse bunny outfit is worn:
		say "[bold type]Suddenly, you feel a bunny tail plug invading your [asshole]![roman type][line break]";
		summon bunny tail plug cursed with quest;
	otherwise if W is a thing:
		now W is carried by the player;
		now the fill-colour of W is white;
		now W is bland;
		now W is sure;
		DoseFill W;
		let S be a random worn serving-bondage;
		say "[bold type]Suddenly a [ShortDesc of W] appears [if S is a thing]on your [ShortDesc of S][otherwise]in your hand[end if]! It appears to be full of [milk].[roman type][line break]".

Chapter - Quest

bunny-waitress-quest is a headgear-clothing-quest. bunny-waitress-quest has a number called serve-count.

To compute unique recycling of (C - a bunny waitress ears):
	now the serve-count of bunny-waitress-quest is 0;
	now waitress-dips is 0;
	now bunny-summoned is 0.

To uniquely set up (C - bunny waitress ears):
	now the quest of C is bunny-waitress-quest.

To say QuestFlav of (Q - bunny-waitress-quest):
	say "You sense it wants you to [unless the class of the player is bunny]first become a bunny waitress and then [end if]share drinks with customers.".

To say QuestTitle of (Q - bunny-waitress-quest):
	say " (waitress quest)".

To progress quest of (Q - bunny-waitress-quest):
	repeat with C running through worn clothing:
		if the quest of C is Q:
			increase serve-count of Q by 1;
			if playerRegion is not school, increase serve-count of Q by 1;
			if serve-count of Q > 4:
				compute quest completion of Q on C.

To compute persistent reward of (Q - bunny-waitress-quest) on (C - a clothing):
	if C is cursed:
		compute generic first time class reward of Q on C;
	otherwise:
		say "infusing itself with [one of]powerful magic! You feel that something good will happen when you finally decide to stop being a bunny waitress.[or]even more blessed magic![stopping]".

To uniquely destroy (C - bunny waitress ears):
	if the serve-count of bunny-waitress-quest > 4 and the quest of C is bunny-waitress-quest:
		say "You can feel the blessed magic your [ShortDesc of C] had stored within itself shoot out around you.";
		while the serve-count of bunny-waitress-quest > 4:
			decrease the serve-count of bunny-waitress-quest by 2;
			let B be a random held blessable bottle;
			if B is bottle:
				say "A blue light surrounds your [B]!";
				bless B.

Part 2 - Rubber Bunny Ears

rubber bunny ears is a bunny ears. rubber bunny ears is latex. rubber bunny ears has a number called charge.

rubber-bunny-summoned is a number that varies.
To compute unique recycling of (C - rubber bunny ears):
	now rubber-bunny-summoned is 0.

Definition: rubber bunny ears is fluid immune: decide yes.
Definition: rubber bunny ears is white themed: decide yes.

Figure of rubber bunny ears is the file "Items/Accessories/Head/bunnyears2.png".

The printed name of rubber bunny ears is "[clothing-title-before]latex bunny ears hood[clothing-title-after]". The text-shortcut of rubber bunny ears is "lbe". Understand "hood" as rubber bunny ears.

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
	if B is actually summonable or (B is bunny outfit and rubber-bunny-summoned < 2):
		if rubber-bunny-summoned < 2:
			repeat with O running through worn dresses:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
			repeat with O running through worn exclusive corsets:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
			repeat with O running through worn trousers:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
		say "[bold type]You feel your rubber bunny ears twitch as if they were real, and then a [ShortDesc of B] appears on you![roman type][line break]";
		summon B;
		now the raw-magic-modifier of B is ((4 - the total egg fill of belly) / 5) - 1;
		if rubber-bunny-summoned < 2, now rubber-bunny-summoned is 2.

To compute unique periodic effect of (C - rubber bunny ears):
	increase the charge of C by 1;
	if the charge of C > 23:
		now the charge of C is 0;
		say "[one of][bold type]Suddenly your belly feels strange![roman type][line break]You realise your body has somehow created an egg![line break][variable custom style]Huh?! Am I now an egg-laying bunnygirl?![roman type][line break][or]You feel your body create another egg.[stopping]";
		assfill 1 medium eggs.

Chapter - Quest

egg-holding-quest is a headgear-clothing-quest.

To uniquely set up (C - rubber bunny ears):
	now the quest of C is egg-holding-quest.

To compute (C - rubber bunny ears) unique inheriting from (D - a clothing):
	uniquely set up C. [It doesn't keep the same quest.]

To say QuestFlav of (Q - egg-holding-quest):
	say "You sense it wants you to hold eggs in your belly for as long as physically possible.".

To say QuestTitle of (Q - egg-holding-quest):
	say " (egg holding quest)".

Part 3 - Bunny Hat

bunny hat is a kind of bunny ears.
black bunny hat is a bunny hat.
white-bunny-hat is a bunny hat.
brown bunny hat is a bunny hat.

egg-eating-quest is a headgear-clothing-quest.

Part 4 - Bunny Glasses

bunny glasses is a bunny ears.

trap-braving-quest is a headgear-clothing-quest.

Bunny Ears TQ ends here.
