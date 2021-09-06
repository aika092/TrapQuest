Bunny Ears TQ by Headgear begins here.

A bunny ears is a kind of headgear. Understand "pair", "pair of", "bunny", "ears" as bunny ears. A bunny ears is blondeness-positive. A bunny ears is brightness-positive. A bunny ears is usually hair growing. A bunny ears is usually dexterity-influencing.

Definition: a bunny ears is transformation-protected: decide no.
Definition: a bunny ears is bunny themed: decide yes.

Part 1 - Bunny Waitress Ears

A bunny waitress ears is a kind of bunny ears.

Definition: a bunny waitress ears is waitress-enabling: decide yes.

To say ShortDesc of (H - a bunny waitress ears):
	say "bunny ears".

To decide which number is the intelligence-influence of (C - a bunny waitress ears):
	let I be the magic-modifier of C;
	if service-ready is true, increase I by 3;
	decide on I.

To compute unique periodic effect of (C - bunny waitress ears):
	let G be a random held champagne-glass;
	let CG be a random held cocktail-glass;
	if G is empty bottle or CG is empty bottle:
		if service-ready is true:
			say "[bold type]The bonus intelligence-enhancing effect of your bunny ears has ended.[roman type][line break]";
			now service-ready is false;
	otherwise if G is bottle or CG is bottle:
		if service-ready is false:
			say "[bold type]You can feel your bunny ears making you much [smarter][one of]![line break][variable custom style]Wow, I feel amazing while carrying around [if G is bottle and CG is bottle]these drinks[otherwise]this drink[end if], just like a good bunny waitress![roman type][line break][or] again![stopping][roman type][line break]";
			now service-ready is true.

To decide which number is the waitress bartering value of (T - a bottle) for (M - a monster):
	if M is intelligent and M is human and M is friendly and T is non-empty:
		if the class of the player is royal slave and the fill-colour of T is white:
			decide on 5;
		if there is a worn waitress-enabling wearthing:
			if the fill-colour of T is golden or the fill-colour of T is murky or the fill-colour of T is creamy:
				if M is female, decide on 2;
			otherwise:
				decide on 4;
	decide on 0.

To say OfferFlav of (T - a waitress vessel):
	if the player is able to speak:
		say "[if the second noun is unfriendly][variable custom style]'Please, take this instead!'[otherwise if there is worn waitress-enabling wearthing and T is non-empty][variable custom style]'Would you care for a drink?'[otherwise if the class of the player is royal slave][variable custom style]'Please accept this freshly brewed milk as a gift from the Princess.'[otherwise][variable custom style]'Would you be interested in this?'[end if][roman type][line break]";
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

To compute waitress resolution of (M - a monster) taking (T - a bottle):
	now the waitress-boredom of M is 300;
	progress quest of milk-serve-quest;
	if T is player-origin and the class of the player is royal slave:
		class summon cow print basque;
	progress quest of bunny-waitress-quest;
	DoseEmpty T;
	if T is can:
		say "You discard the empty [T].";
		destroy T.

To compute service spill punishment:
	if flight attendant hat is worn and there is a held waitress vessel:
		say "[bold type]As punishment for spilling the drink, you feel your body suddenly inflate full of air![roman type][line break]";
		BustInflate 30;
		AssInflate 30;
		Assfill 30 air;
	otherwise if bondage protection is 0 and the player is not immobile and the number of things wrangling a body part is 0 and there is a held waitress vessel:
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
		if O is clothing and O is not cafe-maid-outfit, transform O into cafe-maid-outfit;
	otherwise if bondage protection is 1 or there is a worn waitress-enabling wearthing:
		if the total weighty volume of hips < the largeness of breasts and the player is not bottom heavy:
			say "You feel your butt expanding [if the silicone volume of hips > 0]with more silicone [otherwise if artificial enhancements fetish is 1]with silicone implants [end if]as punishment[if the class of the player is bunny][one of] for being a clumsy waitress[or][stopping][end if]!";
			if artificial enhancements fetish is 1, AssImplantsUp 2;
			otherwise AssSwell 2;
		otherwise if the player is not top heavy:
			say "You feel your [if the silicone volume of breasts > 0]breast implants expanding[otherwise if artificial enhancements fetish is 1]breasts being enhanced with silicone implants[otherwise]breasts growing larger[end if] [if the class of the player is bunny]to try and make up for the fact that you're a [one of]useless[or]rubbish[or]terrible[or]clumsy[in random order] cocktail waitress[otherwise]as punishment[end if]!";
			if artificial enhancements fetish is 1, BustImplantsUp 4;
			otherwise BustUp 4.


playdude bunny waitress ears is a bunny waitress ears. playdude bunny waitress ears is satin.

Definition: playdude bunny waitress ears is fluid immune: decide no.

Figure of playdude bunny waitress ears is the file "Items/Accessories/Head/bunnyears1.png".

The printed name of playdude bunny waitress ears is "[clothing-title-before]pair of bunny ears[clothing-title-after]". The text-shortcut of playdude bunny waitress ears is "bne".

To decide which figure-name is the clothing-image of (C - playdude bunny waitress ears):
	decide on figure of playdude bunny waitress ears.

To say ClothingDesc of (H - playdude bunny waitress ears):
	say "A pair of fake bunny waitress ears on a headband, with a frilly piece of fabric between the ears.".

To say MediumDesc of (H - playdude bunny waitress ears):
	say "fake bunny waitress ears".

To compute SelfExamineDesc of (H - playdude bunny waitress ears):
	let X be the largeness of hair;
	say "You are wearing a pair of fake bunny ears on top of your [ShortDesc of hair]. ".

Definition: playdude bunny waitress ears is black themed: decide yes.

To decide which object is the unique-upgrade-target of (C - playdude bunny waitress ears):
	if egg laying fetish is 0, decide on nothing; [TODO: change]
	if the total egg fill of belly > 0, decide on a random off-stage rubber bunny ears;
	decide on nothing.

Section - Class Outfit

To compute class outfit of (H - playdude bunny waitress ears):
	class summon bunny waitress outfit.


rubber-bunny-waitress-ears is a bunny waitress ears. rubber-bunny-waitress-ears is latex.

Figure of rubber-bunny-waitress-ears is the file "Items/Accessories/Head/bunnyears4.png".

The printed name of rubber-bunny-waitress-ears is "[clothing-title-before]pair of latex bunny ears[clothing-title-after]". The text-shortcut of rubber-bunny-waitress-ears is "lbne".

To decide which figure-name is the clothing-image of (C - rubber-bunny-waitress-ears):
	decide on figure of rubber-bunny-waitress-ears.

To say ClothingDesc of (H - rubber-bunny-waitress-ears):
	say "A pair of fake latex bunny waitress ears on a headband.".

To say MediumDesc of (H - rubber-bunny-waitress-ears):
	say "latex bunny waitress ears".

To compute SelfExamineDesc of (H - rubber-bunny-waitress-ears):
	let X be the largeness of hair;
	say "You are wearing a pair of latex bunny ears on top of your [ShortDesc of hair]. ".

Definition: rubber-bunny-waitress-ears is pink themed: decide yes.
Definition: rubber-bunny-waitress-ears is white themed: decide yes.

Section - Class Outfit

To compute class outfit of (H - rubber-bunny-waitress-ears):
	class summon rubber-bunny-waitress-outfit.


Chapter - Flight Attendant Hat

flight attendant hat is a headgear. flight attendant hat is blondeness-positive. flight attendant hat is brightness-positive. flight attendant hat is hair growing. flight attendant hat is dexterity-influencing. flight attendant hat is nylon.

Definition: flight attendant hat is inflation themed: decide yes.
Definition: flight attendant hat is fluid immune: decide no.

Figure of flight attendant hat is the file "Items/Accessories/Head/flightattendant1.png".
Figure of inflated flight attendant hat is the file "Items/Accessories/Head/flightattendant2.png".

The printed name of flight attendant hat is "[clothing-title-before][if item described is latex]inflated latex [end if]flight attendant hat[clothing-title-after]". The text-shortcut of flight attendant hat is "fah". Understand "inflated" as flight attendant hat when flight attendant hat is latex.

To decide which figure-name is the clothing-image of (C - flight attendant hat):
	if C is latex, decide on figure of flight attendant hat;
	decide on figure of flight attendant hat.

To say ClothingDesc of (H - flight attendant hat):
	say "A bold blue and yellow flight attendant hat[if H is latex] made out of latex and inflatable. It has a long yellow cord attached to allow someone to carry you around like a balloon[end if].".

To say ShortDesc of (H - flight attendant hat):
	say "flight attendant hat".

To compute SelfExamineDesc of (H - flight attendant hat):
	let X be the largeness of hair;
	say "You are wearing a smart flight attendant hat on top of your [ShortDesc of hair]. ".

Definition: flight attendant hat is blue themed: decide yes.

To decide which number is the heaviness of (H - flight attendant hat):
	if H is latex, decide on -5; [This needs to be big as it's divided by 5 when worn]
	decide on 0.

To decide which number is the intelligence-influence of (C - flight attendant hat):
	let I be the magic-modifier of C;
	if service-ready is true, increase I by 3;
	decide on I.

To compute class outfit of (H - flight attendant hat):
	class summon flight-attendant-top;
	class summon flight-attendant-skirt.

To compute unique periodic effect of (C - flight attendant hat):
	let G be a random held champagne-glass;
	let CG be a random held cocktail-glass;
	if G is empty bottle or CG is empty bottle:
		if service-ready is true:
			say "[bold type]The bonus intelligence-enhancing effect of your hat has ended.[roman type][line break]";
			now service-ready is false;
	otherwise if G is bottle or CG is bottle:
		if service-ready is false:
			say "[bold type]You can feel your flight attendant hat making you much [smarter][one of]![line break][variable custom style]Wow, I feel amazing while carrying around [if G is bottle and CG is bottle]these drinks[otherwise]this drink[end if], just like a good air hostess![roman type][line break][or] again![stopping][roman type][line break]";
			now service-ready is true;
	if C is latex and the player is not zeroG and the player is not flying:
		say "[bold type]You're no longer weightless! Your [ShortDesc of C] returns to its normal nylon form and loses the balloon cord.[roman type][line break]";
		now C is nylon;
		repeat with M running through monsters covering C:
			say "[BigNameDesc of M] is no longer able to hold onto you via your [C]!";
			now M is not covering C.

To compute takeoff of (C - flight attendant hat):
	say "[bold type]Your [ShortDesc of C] transforms![roman type][line break]";
	now C is latex;
	try examining C.

Definition: flight attendant hat is subduing:
	if flight attendant hat is latex, decide yes;
	decide no.


Chapter - Quest

bunny-waitress-quest is a headgear-clothing-quest. bunny-waitress-quest has a number called serve-count.

To compute unique recycling of (C - a bunny waitress ears):
	now the serve-count of bunny-waitress-quest is 0.

To uniquely set up (C - bunny waitress ears):
	now the quest of C is bunny-waitress-quest.

To uniquely set up (C - flight attendant hat):
	now the quest of C is bunny-waitress-quest.

To say QuestFlav of (Q - bunny-waitress-quest):
	say "You sense it wants you to share drinks with customers.".

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
	compute waitress hat reward of C.
To uniquely destroy (C - flight attendant hat):
	compute waitress hat reward of C.

To compute waitress hat reward of (C - a headgear):
	if the serve-count of bunny-waitress-quest > 4 and the quest of C is bunny-waitress-quest:
		say "You can feel the blessed magic your [ShortDesc of C] had stored within itself shoot out around you.";
		while the serve-count of bunny-waitress-quest > 4:
			decrease the serve-count of bunny-waitress-quest by 2;
			let B be a random held blessable bottle;
			if B is bottle:
				say "A blue light surrounds your [B]!";
				bless B.

Part 3 - Rubber Bunny Ears

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
	class summon cream rubber bunny outfit.

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

Part 4 - Bunny Hat

bunny hat is a kind of bunny ears.
black bunny hat is a bunny hat.
white-bunny-hat is a bunny hat.
brown bunny hat is a bunny hat.

egg-eating-quest is a headgear-clothing-quest.

Part 5 - Bunny Glasses

bunny glasses is a bunny ears.

trap-braving-quest is a headgear-clothing-quest.

Bunny Ears TQ ends here.
