Bags of Holding Framework by Bags of Holding begins here.

A bag of holding is a kind of clothing. A bag of holding is unique. The printed name of bag of holding is usually "[clothing-title-before]bag of holding[clothing-title-after]". A bag of holding is usually leather. A bag of holding has a number called hunger. A bag of holding has a number called hunger-declared. The text-shortcut of bag of holding is "boh".
To decide which number is the default-soak-limit of (C - a bag of holding): decide on 0.

Definition: a bag of holding is cursable:
	if tough-shit is 1, decide yes;
	decide no.
Definition: a bag of holding is discovered varied: decide no.
Definition: a bag of holding is magic-enhanceable: decide no.
Definition: a bag of holding is transformation-theme-blockable: decide no. [It will transform away from a theme it shares with other items.]
Definition: a bag of holding is same-type:
	if theme-share-target is bag of holding, decide yes;
	decide no.

Definition: a thing is necessary-in-bag: decide yes. [Things that are not necessary-in-bag don't take up an item slot when the player has no bag.]

Definition: a thing is never-in-bag: decide no.
Definition: a bag of holding is never-in-bag: decide yes.
Definition: a bottle is never-in-bag:
	decide yes; [experimental]
	if it is empty, decide no;
	decide yes.
Definition: squeezy-bottle is never-in-bag: decide yes.
Definition: a food is never-in-bag: decide yes.
Definition: an egg is never-in-bag: decide yes.
Definition: pink pill is never-in-bag: decide yes.
Definition: a potion is never-in-bag: decide yes.
Definition: an elixir is never-in-bag: decide yes.
Definition: a tincture is never-in-bag: decide yes.
Definition: water-bomb is never-in-bag: decide yes.
Definition: a trophy is never-in-bag: decide yes.
Definition: ectoplasm is never-in-bag: decide yes.

Definition: a thing is in-bag rather than not-in-bag:
	if it is not never-in-bag and it is carried, decide yes;
	decide no.
Definition: a clothing is in-bag rather than not-in-bag:
	if it is not never-in-bag and it is carried and it is not wet and the used condoms of it is 0, decide yes;
	decide no.
Definition: a knickers is in-bag rather than not-in-bag:
	if it is not never-in-bag and it is carried and it is not wet and it is not messed and the used condoms of it is 0, decide yes;
	decide no.
Definition: a thing is currently-in-bag:
	if it is in-bag and there is a worn bag of holding, decide yes;
	decide no.
Definition: a thing is currently-not-in-bag:
	if it is carried and it is not currently-in-bag, decide yes;
	decide no.

To decide which number is not-in-bag-things:
	decide on the number of currently-not-in-bag necessary-in-bag things.

To decide which number is carried-limit:
	decide on 18.

Check taking something:
	if the noun is held by a monster:
		let M be a random monster holding the noun;
		say "[BigNameDesc of M] is holding [NameDesc of the noun]." instead;
	if the noun is not bag of holding and not-in-bag-things >= carried-limit:
		if there is a worn bag of holding:
			if the noun is never-in-bag, say "You are at your limit for carrying [if diaper messing >= 6]messy diapers, [end if]food and drink, and other items that can't go in your bag of holding. You'll have to drop some if you want to pick up more." instead;
		otherwise:
			say "You are at your limit for carrying objects[if the noun is not never-in-bag]. If only you still had that bag of holding[end if]." instead.

Check inserting food into bag of holding:
	say "A warning on [NameDesc of the second noun] says that this would be a horrible idea." instead.

Check inserting bottle into bag of holding:
	say "A warning on [NameDesc of the second noun] says that this would be a horrible idea." instead.

Check inserting pink pill into bag of holding:
	say "A warning on [NameDesc of the second noun] says that this would be a horrible idea." instead.

Check inserting something into bag of holding:
	if the second noun is worn, say "It's already automatically inside." instead;
	otherwise say "You can only do this when [NameDesc of the second noun] is equipped." instead.

Check inking bag of holding:
	say "You decide that this is too valuable to put in the chute." instead.

Definition: a bag of holding is destructible: decide no.

Definition: a bag of holding is stealable: decide no.

Check taking off bag of holding:
	if the noun is glued, try tearing off the noun instead;
	now summoning is 0;
	unless the noun is actually removable, do nothing instead;
	now the noun is bland;
	repeat with H running through bag of holding in the location of the player:
		unless the noun is H or the noun is not worn:
			say "Did you mean to transfer all of your items into the [ShortDesc of H]? ";
			if the player is consenting, say "In which case you should pick that one up first." instead;
	repeat with H running through carried bag of holding:
		if the noun is worn:
			say "Did you mean to transfer all of your items into the [ShortDesc of H]? ";
			if the player is consenting, say "In which case you should pick that one up first." instead;
	say "This will make managing your inventory much much harder, are you completely sure? ";
	if the player is consenting:
		if the number of worn bag of holding is 1:
			repeat with T running through things carried by the player:
				unless T is food or T is pink pill or T is bottle:
					now T is in the location of the player;
	otherwise:
		say "Action cancelled." instead.

Carry out taking bag of holding:
	if takingStuff is false:
		allocate 2 seconds;
		allocate arm use to the noun;
	now takingStuff is true; [The player can take several items in the same turn without penalty with "take all"]
	let H be a random worn bag of holding;
	if H is a thing and the noun is not H:
		say "You transfer all the items from your [ShortDesc of H], which you then discard onto the ground. (You can only hold one bag of holding at a time).";
		now H is in the location of the player;
		now the noun is worn by the player.

Report taking bag of holding:
	now the noun is worn by the player.

Report examining bag of holding when the hunger-declared of the noun > 0:
	say "It is growling with hunger. You need to feed it an item of clothing, or it will choose one itself.".

Check inserting bag of holding into something:
	try taking off the noun instead.

To say BagHoldingWarning:
	say "Food, liquids (including empty containers) and valuable jewellery cannot be placed in this".

To compute failed transform of (C - a bag of holding):
	increase the transform-attempts of C by 1;
	say "The [C] seems to [if the transform-attempts of C > 1]once again [end if]resist being transformed!".

To decide which number is bagHungerSpeed: [The higher this is, the longer between consumptions. But since we're squaring the number of items, this is going to be irrelevant in comparison after a while.]
	decide on 50000.
To decide which number is bagHungerAllowance: [The number of items before the bag has any chance of consuming anything.]
	decide on 12.

To compute periodic effect of (C - a bag of holding):
	unless inventory handicap is 0 or player-currently-resting is 1 or busy is 1:
		increase the hunger of C by 1;
		let NM be the number of in-bag things - the number of in-bag mass collectibles;
		let N be NM - bagHungerAllowance;
		if N < 1, now N is 1;
		let H be bagHungerSpeed / (N * N);
		let H2 be bagHungerSpeed / ((N + 1) * (N + 1));
		if debuginfo > 1, say "[input-style]Bag of holding hunger ([hunger of C]) | ([H]) Hunger limit ([NM] items in bag)[roman type][line break]";
		if the hunger of C > H and the hunger-declared of C > 0: [The time between consumptions increases exponentially with stuff in the bag]
			if the hunger-declared of C is 1:
				say "Are you sure that you want to let your [ShortDesc of C] choose an item to consume on its own? ";
				if the player is consenting:
					now the hunger-declared of C is 3;
				otherwise:
					say "Then you'd better feed it something before you do anything else.";
					now the hunger-declared of C is 2;
			otherwise if the hunger-declared of C is 2:
				now the hunger-declared of C is 3;
			if the hunger-declared of C > 2:
				let consumed-thing be a random in-bag stealable clothing;
				repeat with T running through in-bag stealable clothing:
					unless T is product:
						if diaper quest is 1 and the initial cringe of T > the initial cringe of consumed-thing:
							now consumed-thing is T;
						otherwise if the initial outrage of T > the initial outrage of consumed-thing:
							now consumed-thing is T;
				if consumed-thing is not in-bag thing, now consumed-thing is a random in-bag thing;
				if consumed-thing is in-bag thing, try BagFeeding consumed-thing to C;
		otherwise if the hunger-declared of C is 0 and the hunger of C > H2 - 1:
			now the hunger-declared of C is 1;
			force inventory-focus redraw; [This forces the inventory window to redraw]
			force clothing-focus redraw; [This forces the clothing window to redraw]
			now the alert of the player is 1;
			say "[bold type]Your [ShortDesc of C] growls hungrily. [roman type]You should feed it with an item of clothing soon or it might choose one on its own!".
To compute school periodic effect of (C - a bag of holding):
	compute periodic effect of C.

To compute (C - a bag of holding) unique inheriting from (D - a bag of holding):
	now the hunger of C is the hunger of D;
	now the hunger-declared of C is the hunger-declared of D.

BagFeeding it to is an action applying to two things.

Check BagFeeding it to:
	[if the noun is not clothing, say "The [ShortDesc of the second noun] only wants to consume clothing." instead;]
	if the second noun is not worn, say "You're not wearing the [ShortDesc of the second noun]" instead;
	if the noun is not in-bag, say "That's not inside the [ShortDesc of the second noun]!" instead.

Carry out BagFeeding it to:
	say "[bold type]Your [ShortDesc of the second noun] rumbles happily[roman type] and consumes your [ShortDesc of the noun][one of] to fuel its magic. Just like that, it's gone[or][or][or][cycling]!";
	compute BagFeedingEffect of the noun;
	destroy the noun;
	now the hunger of the second noun is 0;
	now the hunger-declared of the second noun is 0;
	force clothing-focus redraw. [the hungry icon needs to disappear]

Understand "feed [something] to [something]" as BagFeeding it to.

A bag-feeding-effect is a kind of object.
Definition: a bag-feeding-effect is appropriate: decide yes.
To execute (E - a bag-feeding-effect) on (C - a thing):
	say "BUG - somebody forgot to code the functionality of [E].".

bag-feeding-bimbo is a bag-feeding-effect.
Definition: bag-feeding-bimbo is appropriate:
	if the noun is clothing:
		if diaper quest is 0 and the initial outrage of the noun > a random number between 8 and 12, decide yes;
		if diaper quest is 1 and the initial cringe of the noun > a random number between 8 and 12, decide yes;
	decide no.
To execute (E - bag-feeding-bimbo):
	say "Your bag reacts to the [if diaper quest is 1]silly[otherwise]slutty[end if] nature of the [ShortDesc of noun], making you feel a bit light-headed and giddy!";
	SexAddictUp 1.

bag-feeding-condoms is a bag-feeding-effect.
Definition: bag-feeding-condoms is appropriate:
	if the noun is clothing and the total condoms of the noun > 0, decide yes;
	decide no.
To execute (E - bag-feeding-condoms):
	let P be a random worn condom pinnable clothing;
	let S be nothing;
	if P is nothing:
		now S is string-belt;
		summon S cursed with silent quest;
		now P is S;
	let UC be the used condoms of the noun;
	let EC be the empty condoms of the noun;
	say "Your condom bag spits out the [if UC > 1][UC] [semen]-filled condoms[otherwise if UC > 0][semen]-filled condom[end if][if UC > 0 and EC > 0] and [end if][if EC > 1][EC] empty condoms[otherwise if EC > 0]empty condom[end if]! [if the total condoms of the noun > 1]They shoot into the air around you[otherwise]For a moment, it hovers in the air in front of you[end if]. [if S is clothing]Suddenly, a [printed name of S] appears around your waist! [end if] You watch in [horror the semen taste addiction of the player] as ";
	if the number of worn condom pinnable clothing > 1:
		while UC + EC > 0:
			now P is a random worn condom pinnable clothing;
			if UC > 0:
				say "[if the total condoms of the noun > 1 and EC > 0]one full condom[otherwise if the total condoms of the noun > 1]one condom[otherwise]it[end if] pins itself to your [ShortDesc of P]";
				UsedCondomUp P by 1;
				decrease UC by 1;
				progress quest of condom-collecting-quest;
			otherwise:
				say "[if the total condoms of the noun > 1 and the used condoms of the noun > 0]one empty condom[otherwise if the total condoms of the noun > 1]one condom[otherwise]it[end if] pins itself to your [ShortDesc of P]";
				increase the empty condoms of P by 1;
				decrease EC by 1;
			say "[if UC + EC > 1], [otherwise if UC + EC is 1] and [otherwise]![end if]";
	otherwise:
		say "[if UC + EC > 2]They all fly down and pin themselves[otherwise if UC + EC is 2]They both fly down and pin themselves[otherwise]It flies down and pins itself[end if] to your [MediumDesc of P]!";
		UsedCondomUp P by UC;
		increase the empty condoms of P by EC;
	if the total condoms of the noun > 1, say "[variable custom style][if the player is shameless or (the semen taste addiction of the player > 16 and the used condoms of the noun > 0)]Perfect! I didn't want to lose them![otherwise if the semen taste addiction of the player > 13 and the used condoms of the noun > 1]Ugh. Well at least I have some emergency drinks, I guess.[otherwise if the semen taste addiction of the player > 13 and the used condoms of the noun > 0]Ugh. Well at least I have an emergency drink, I guess.[otherwise]Oh come on! Is there no escaping these things?![end if][roman type][line break]";
	otherwise say "[variable custom style][if the player is shameless or (the semen taste addiction of the player > 16 and the used condoms of the noun > 0)]Perfect! I didn't want to lose that![otherwise if the player is disgraced or (the semen taste addiction of the player > 12 and the used condoms of the noun > 0)]Grr... I guess it's here to stay for now.[otherwise]Oh come on! Is there no escaping this stupid condom?![end if][roman type][line break]".

bag-feeding-semen is a bag-feeding-effect.
Definition: bag-feeding-semen is appropriate:
	if diaper quest is 0 and the noun is semen themed, decide yes;
	decide no.
To execute (E - bag-feeding-semen):
	say "Your bag reacts to the semen theme of the [ShortDesc of noun], making you feel very thirsty!";
	if the stomach-water of the player > 1, now the stomach-water of the player is 1;
	now the stomach-semen of the player is 0;
	now the stomach-urine of the player is 0;
	now the stomach-milk of the player is 0;
	now the fill-colour of squirt dildo is creamy;
	now the doses of squirt dildo is 1;
	if squirt dildo is held:
		say "What's more, your [printed name of squirt dildo] fills up to the brim with [semen]!";
	otherwise:
		say "What's more, a [printed name of squirt dildo] appears in your hand! Something tells you that you can guess what's inside...";
		now squirt dildo is carried by the player;
	let W be a random nonstalking wisp;
	if W is wisp:
		silently set up W;
		now the wisp-quest of W is drink-wisp-quest;
		now the wisp-trigger of W is spill-wisp-trigger;
		now the wisp-punishment of W is bimbo-wisp-punishment;
		if (a random number between 0 and 1) + (a random number between 0 and 1) < game difficulty, now the wisp-punishment of W is a random appropriate wisp punishment;
		update background colour of W;
		say "[bold type]A [ColourDesc of W] curse wisp appears, and begins hovering behind you! [roman type]You can sense that you must [bold type][wisp-quest of W][roman type] before you next [bold type][wisp-trigger of W][roman type], or else you will [bold type][wisp-punishment of W][roman type].".

bag-feeding-urine is a bag-feeding-effect.
Definition: bag-feeding-urine is appropriate:
	if watersports fetish is 1 and the noun is toilet themed and the number of carried non-empty bottles is 0, decide yes;
	decide no.
To execute (E - bag-feeding-urine):
	say "Your bag reacts to the toilet theme of the [ShortDesc of noun], making you feel very thirsty!";
	if the stomach-water of the player > 1, now the stomach-water of the player is 1;
	now the stomach-semen of the player is 0;
	now the stomach-urine of the player is 0;
	now the stomach-milk of the player is 0;
	now the fill-colour of champagne-glass is golden;
	now the doses of champagne-glass is 1;
	if champagne-glass is held:
		say "What's more, your [champagne-glass] fills up to the brim with [urine]!";
	otherwise:
		say "What's more, a [champagne-glass] appears on the ground in front of you! Something tells you that you can guess what's inside...";
		now champagne-glass is in the location of the player;
	let W be a random nonstalking wisp;
	if W is wisp:
		silently set up W;
		now the wisp-quest of W is drink-wisp-quest;
		now the wisp-trigger of W is spill-wisp-trigger;
		now the wisp-punishment of W is bimbo-wisp-punishment;
		if (a random number between 0 and 1) + (a random number between 0 and 1) < game difficulty, now the wisp-punishment of W is a random appropriate wisp punishment;
		update background colour of W;
		say "[bold type]A [ColourDesc of W] curse wisp appears, and begins hovering behind you! [roman type]You can sense that you must [bold type][wisp-quest of W][roman type] before you next [bold type][wisp-trigger of W][roman type], or else you will [bold type][wisp-punishment of W][roman type].".

bag-feeding-swimming is a bag-feeding-effect.
Definition: bag-feeding-swimming is appropriate:
	if the noun is swimming themed, decide yes;
	decide no.
To execute (E - bag-feeding-swimming):
	if game difficulty > a random number between 1 and 4:
		say "Your bag reacts to the swimwear theme of the [ShortDesc of noun] by sapping your strength!";
		StrengthDown 1;
	otherwise:
		say "Your bag reacts to the swimwear theme of the [ShortDesc of noun] by drenching everything you're wearing in water!";
		repeat with T running through worn fluid vulnerable clothing:
			drench T.

bag-feeding-toy is a bag-feeding-effect.
Definition: bag-feeding-toy is appropriate:
	if the noun is sex toy, decide yes;
	decide no.
To execute (E - bag-feeding-toy):
	let F be asshole;
	if the player is possessing a vagina and the noun is not plug, now F is vagina;
	say "Your bag reacts to the toy by making your [variable F] tingle with delight!";
	ruin F times 1.

bag-feeding-skirt is a bag-feeding-effect.
Definition: bag-feeding-skirt is appropriate:
	if the noun is a skirt and there is worn skirted crotch-in-place displacable clothing, decide yes;
	decide no.
To execute (E - bag-feeding-skirt):
	let S be a random worn skirted crotch-in-place displacable clothing;
	say "Your bag reacts to the skirt by making your [ShortDesc of S] fly up into the air, exposing everything underneath!";
	displace S.

bag-feeding-exercise is a bag-feeding-effect.
Definition: bag-feeding-exercise is appropriate:
	if the noun is exercise themed and weight gain fetish is 1, decide yes;
	decide no.
To execute (E - bag-feeding-exercise):
	say "Your bag reacts to exercise theme of your [ShortDesc of noun] by making you fatter!";
	FatUp 3.

bag-feeding-magic is a bag-feeding-effect.
Definition: bag-feeding-magic is appropriate:
	if the noun is magic themed and the magic-power of the player > 0, decide yes;
	decide no.
To execute (E - bag-feeding-magic):
	say "Your bag reacts to magical nature of your [ShortDesc of noun] by reducing your magic power!";
	MagicPowerDown 1.

bag-feeding-whore is a bag-feeding-effect.
Definition: bag-feeding-whore is appropriate:
	if the noun is whore themed and there is a nonstalking wisp, decide yes;
	decide no.
To execute (E - bag-feeding-whore):
	say "Your bag reacts to prostitution theme of your [ShortDesc of noun]!";
	let W be a random nonstalking wisp;
	silently set up W;
	now the wisp-quest of W is brothel-wisp-quest;
	now the wisp-trigger of W is a random eligible appropriate wisp trigger;
	now the wisp-punishment of W is bimbo-wisp-punishment;
	if (a random number between 0 and 1) + (a random number between 0 and 1) < game difficulty, now the wisp-punishment of W is a random appropriate wisp punishment;
	update background colour of W;
	say "[bold type]A [ColourDesc of W] curse wisp appears, and begins hovering behind you! [roman type]You can sense that you must [bold type][wisp-quest of W][roman type] before you next [bold type][wisp-trigger of W][roman type], or else you will [bold type][wisp-punishment of W][roman type].".

bag-feeding-food is a bag-feeding-effect.
Definition: bag-feeding-food is appropriate:
	if the noun is food themed, decide yes;
	decide no.
To execute (E - bag-feeding-food):
	say "Your bag reacts to food theme of your [ShortDesc of noun] by making you feel extra-hungry!";
	compute DQ hunger;
	now the stomach-food of the player is 0.

bag-feeding-drink is a bag-feeding-effect.
Definition: bag-feeding-drink is appropriate:
	if the noun is drink themed, decide yes;
	decide no.
To execute (E - bag-feeding-drink):
	say "Your bag reacts to drink theme of your [ShortDesc of noun] by removing all the water you recently drank from your stomach!";
	now the stomach-water of the player is 0;
	if the stomach-urine of the player > 0:
		say "[variable custom style]Luckily for me, I recently drank [urine]...[roman type][line break]";
	otherwise if the stomach-semen of the player > 0:
		say "[variable custom style]Luckily for me, I recently swallowed [semen]...[roman type][line break]".

bag-feeding-bow is a bag-feeding-effect.
Definition: bag-feeding-bow is appropriate:
	if the noun is bow themed and there is worn transformable suspenders, decide yes;
	decide no.
To execute (E - bag-feeding-bow):
	let S be a random worn transformable suspenders;
	say "Your bag reacts to the bow theme by attempting to transform your [MediumDesc of S]!";
	potentially transform S.

bag-feeding-gem is a bag-feeding-effect.
Definition: bag-feeding-gem is appropriate:
	if the noun is gem themed and the noun is not plug and asshole is not occupied, decide yes;
	decide no.
To execute (E - bag-feeding-gem):
	let P be a random off-stage gem themed basic plug;
	if P is a plug:
		say "Your bag reacts to the sparkly theme by summoning a butt plug inside of you!";
		summon P cursed with quest.

bag-feeding-star is a bag-feeding-effect.
Definition: bag-feeding-star is appropriate:
	if the noun is star themed, decide yes;
	decide no.
To execute (E - bag-feeding-star):
	let S be a random worn transformable clothing;
	say "Your bag reacts to the star theme by attempting to transform your [MediumDesc of S]!";
	potentially transform S.

bag-feeding-ballet is a bag-feeding-effect.
Definition: bag-feeding-ballet is appropriate:
	if the noun is ballet related and the raw heel skill of the player > 0, decide yes;
	decide no.
To execute (E - bag-feeding-ballet):
	say "Your bag reacts to the ballet item by reducing your skill at walking in heels!";
	HeelDown 1.

bag-feeding-inflation is a bag-feeding-effect.
Definition: bag-feeding-inflation is appropriate:
	if the noun is inflation themed and inflation fetish is 1, decide yes;
	decide no.
To execute (E - bag-feeding-inflation):
	say "Your bag reacts to the inflation themed [ShortDesc of the noun] by slightly inflating your body!";
	BustInflate 2;
	AssFill 2 Air;
	AssInflate 2.

bag-feeding-interracial is a bag-feeding-effect.
Definition: bag-feeding-interracial is appropriate:
	if the noun is interracial themed and interracial fetish is 1, decide yes;
	decide no.
To execute (E - bag-feeding-interracial):
	say "Your bag reacts to the [MediumDesc of the noun]!";
	bbcAddictUp 1.

bag-feeding-royalty is a bag-feeding-effect.
Definition: bag-feeding-royalty is appropriate:
	if the noun is royalty themed, decide yes;
	decide no.
To execute (E - bag-feeding-royalty):
	say "Your bag reacts to the royalty theme of [MediumDesc of the noun]!";
	if game difficulty > a random number between 0 and 3:
		say "reducing your intelligence!";
		IntDown 1;
	otherwise:
		say "temporarily reducing your intelligence!";
		increase temp_int_dam by 2.

bag-feeding-party is a bag-feeding-effect.
Definition: bag-feeding-party is appropriate:
	if the noun is party themed, decide yes;
	decide no.
To execute (E - bag-feeding-party):
	say "Your bag reacts to the [']party girl['] theme of the [ShortDesc of the noun] by ";
	if game difficulty > a random number between 0 and 3:
		say "reducing your intelligence!";
		IntDown 1;
	otherwise if alcohol fetish is 1:
		say "increasing your blood's alcohol content!";
		increase alcohol level;
	otherwise:
		say "temporarily reducing your intelligence!";
		increase temp_int_dam by 2.

bag-feeding-penis-theme is a bag-feeding-effect.
Definition: bag-feeding-penis-theme is appropriate:
	if diaper quest is 0 and the noun is penis themed, decide yes;
	decide no.
To execute (E - bag-feeding-penis-theme):
	say "Your bag reacts to the [manly-penis] theme of the [MediumDesc of noun]! ";
	if the mystical size of penis > min penis size: [#LXorDD]
		SpecialPenisDown 1;
	otherwise:
		say "You feel a bit more [if the player is a pervert]perverted[otherwise]willing to consider deviant ideas[end if]...";
		SexAddictUp 1.

bag-feeding-vagina-theme is a bag-feeding-effect.
Definition: bag-feeding-vagina-theme is appropriate:
	if diaper quest is 0 and the noun is vagina themed and the player is possessing a vagina, decide yes;
	decide no.
To execute (E - bag-feeding-vagina-theme):
	say "Your bag reacts to the vagina theme of the [MediumDesc of noun]! ";
	VaginalSexAddictUp 1.

bag-feeding-pregnancy-theme is a bag-feeding-effect.
Definition: bag-feeding-pregnancy-theme is appropriate:
	if diaper quest is 0 and the noun is pregnancy themed and pregnancy fetish is 1, decide yes;
	decide no.
To execute (E - bag-feeding-pregnancy-theme):
	say "Your bag reacts to the pregnancy theme of the [MediumDesc of noun]! You can feel that [if the player is possessing a vagina]you are more fertile[otherwise]your body will become feminine at a faster rate[end if] now.";
	increase the pregnancy rate of the player by 1.

bag-feeding-anal-theme is a bag-feeding-effect.
Definition: bag-feeding-anal-theme is appropriate:
	if diaper quest is 0 and the noun is anal sex themed, decide yes;
	decide no.
To execute (E - bag-feeding-anal-theme):
	say "Your bag reacts to the anal sex theme of the [MediumDesc of noun]! ";
	AnalSexAddictUp 1.

bag-feeding-oral-theme is a bag-feeding-effect.
Definition: bag-feeding-oral-theme is appropriate:
	if diaper quest is 0 and the noun is oral sex themed, decide yes;
	decide no.
To execute (E - bag-feeding-oral-theme):
	say "Your bag reacts to the oral sex theme of the [MediumDesc of noun]! ";
	OralSexAddictUp 1.

bag-feeding-boob-theme is a bag-feeding-effect.
Definition: bag-feeding-boob-theme is appropriate:
	if diaper quest is 0 and the noun is boob themed and max breast size >= 5, decide yes;
	decide no.
To execute (E - bag-feeding-boob-theme):
	say "Your bag reacts to the tits theme of the [MediumDesc of noun]! ";
	TitfuckAddictUp 1.

bag-feeding-cat-theme is a bag-feeding-effect.
Definition: bag-feeding-cat-theme is appropriate:
	if the noun is cat themed, decide yes;
	decide no.
To execute (E - bag-feeding-cat-theme):
	say "Your bag reacts to the cat theme of the [MediumDesc of noun], ";
	if game difficulty > a random number between 0 and 3:
		say "reducing your dexterity!";
		DexDown 1;
	otherwise:
		say "temporarily reducing your dexterity!";
		increase temp_dex_dam by 2.

bag-feeding-dog-theme is a bag-feeding-effect.
Definition: bag-feeding-dog-theme is appropriate:
	if the noun is dog themed, decide yes;
	decide no.
To execute (E - bag-feeding-dog-theme):
	say "Your bag reacts to the dog theme of the [MediumDesc of noun], ";
	DelicateUp 1.

bag-feeding-bear-theme is a bag-feeding-effect.
Definition: bag-feeding-bear-theme is appropriate:
	if the noun is bear themed, decide yes;
	decide no.
To execute (E - bag-feeding-bear-theme):
	say "Your bag reacts to the bear theme of the [MediumDesc of noun], ";
	if game difficulty > a random number between 0 and 3:
		say "reducing your strength!";
		StrengthDown 1;
	otherwise:
		say "temporarily reducing your strength!";
		increase temp_str_dam by 2.

bag-feeding-cow-theme is a bag-feeding-effect.
Definition: bag-feeding-cow-theme is appropriate:
	if the noun is cow themed, decide yes;
	decide no.
To execute (E - bag-feeding-cow-theme):
	say "Your bag reacts to the cow theme of the [MediumDesc of noun], ";
	if game difficulty > a random number between 0 and 3:
		say "reducing your strength!";
		StrengthDown 1;
	otherwise:
		say "temporarily reducing your strength!";
		increase temp_str_dam by 2.

bag-feeding-horse-theme is a bag-feeding-effect.
Definition: bag-feeding-horse-theme is appropriate:
	if the noun is horse themed, decide yes;
	decide no.
To execute (E - bag-feeding-horse-theme):
	say "Your bag reacts to the horse theme of the [MediumDesc of noun], ";
	if game difficulty > a random number between 0 and 3:
		say "reducing your strength!";
		StrengthDown 1;
	otherwise:
		say "temporarily reducing your strength!";
		increase temp_str_dam by 2.

bag-feeding-elephant-theme is a bag-feeding-effect.
Definition: bag-feeding-elephant-theme is appropriate:
	if the noun is elephant themed, decide yes;
	decide no.
To execute (E - bag-feeding-elephant-theme):
	say "Your bag reacts to the elephant theme of the [MediumDesc of noun], ";
	if game difficulty > a random number between 0 and 3:
		say "reducing your strength!";
		StrengthDown 1;
	otherwise:
		say "temporarily reducing your strength!";
		increase temp_str_dam by 2.

bag-feeding-dinosaur-theme is a bag-feeding-effect.
Definition: bag-feeding-dinosaur-theme is appropriate:
	if the noun is dinosaur themed, decide yes;
	decide no.
To execute (E - bag-feeding-dinosaur-theme):
	say "Your bag reacts to the dinosaur theme of the [MediumDesc of noun], ";
	if game difficulty > a random number between 0 and 3:
		say "reducing your strength!";
		StrengthDown 1;
	otherwise:
		say "temporarily reducing your strength!";
		increase temp_str_dam by 2.

bag-feeding-bird-theme is a bag-feeding-effect.
Definition: bag-feeding-bird-theme is appropriate:
	if the noun is bird themed, decide yes;
	decide no.
To execute (E - bag-feeding-bird-theme):
	say "Your bag reacts to the bird theme of the [MediumDesc of noun], ";
	if game difficulty > a random number between 0 and 3:
		say "reducing your dexterity!";
		DexDown 1;
	otherwise:
		say "temporarily reducing your dexterity!";
		increase temp_dex_dam by 2.

bag-feeding-leopard-theme is a bag-feeding-effect.
Definition: bag-feeding-leopard-theme is appropriate:
	if the noun is leopard themed, decide yes;
	decide no.
To execute (E - bag-feeding-leopard-theme):
	say "Your bag reacts to the leopard theme of the [MediumDesc of noun], ";
	if game difficulty > a random number between 0 and 3:
		say "reducing your dexterity!";
		DexDown 1;
	otherwise:
		say "temporarily reducing your dexterity!";
		increase temp_dex_dam by 2.

bag-feeding-butterfly-theme is a bag-feeding-effect.
Definition: bag-feeding-butterfly-theme is appropriate:
	if the noun is butterfly themed, decide yes;
	decide no.
To execute (E - bag-feeding-butterfly-theme):
	say "Your bag reacts to the butterfly theme of the [MediumDesc of noun], ";
	if game difficulty > a random number between 0 and 3:
		say "reducing your dexterity!";
		DexDown 1;
	otherwise:
		say "temporarily reducing your dexterity!";
		increase temp_dex_dam by 2.

bag-feeding-bunny-theme is a bag-feeding-effect.
Definition: bag-feeding-bunny-theme is appropriate:
	if the noun is bunny themed, decide yes;
	decide no.
To execute (E - bag-feeding-bunny-theme):
	say "Your bag reacts to the bunny theme of the [MediumDesc of noun], ";
	if game difficulty > a random number between 0 and 3:
		say "reducing your dexterity!";
		DexDown 1;
	otherwise:
		say "temporarily reducing your dexterity!";
		increase temp_dex_dam by 2.

bag-feeding-baby-theme is a bag-feeding-effect.
Definition: bag-feeding-baby-theme is appropriate:
	if the player is not at least somewhat continent, decide no;
	if the noun is baby themed, decide yes;
	if the noun is clothing and the initial cringe of the noun >= 12, decide yes;
	decide no.
To execute (E - bag-feeding-baby-theme):
	say "Your bag reacts to the childish nature of the [MediumDesc of noun]! ";
	RandomIncontinenceUp 1.

bag-feeding-heart-theme is a bag-feeding-effect.
Definition: bag-feeding-heart-theme is appropriate:
	if the noun is heart themed and the player is able to get horny, decide yes;
	decide no.
To execute (E - bag-feeding-heart-theme):
	say "Your bag reacts to the heart theme of the [MediumDesc of noun]! You can hear your blood pumping in your ears as you feel yourself getting horny!";
	arouse 3000.

bag-feeding-discipline is a bag-feeding-effect.
Definition: bag-feeding-discipline is appropriate:
	if the noun is impact play themed and the body soreness of the player < a random number between 1 and 10, decide yes;
	decide no.
To execute (E - bag-feeding-discipline):
	say "Your bag reacts to the impact play theme of the [ShortDesc of noun]. An invisible paddle spanks you on the [AssDesc]!";
	BodyRuin 1;
	PainUp 10.

bag-feeding-negative is a bag-feeding-effect.
Definition: bag-feeding-negative is appropriate:
	if the noun is identified clothing and the raw-magic-modifier of the noun < 0, decide yes;
	decide no.
To execute (E - bag-feeding-negative):
	say "Your bag reacts to the negative magic modifier of the [noun]. You feel like some of the good luck you've saved up has faded away...";
	increase the raw luck of the player by the raw-magic-modifier of the noun * 3.

bag-feeding-big-bra is a bag-feeding-effect.
Definition: bag-feeding-big-bra is appropriate:
	if the noun is bra and the size of the noun <= 15 and the size of the noun > the largeness of breasts and the player is not top heavy, decide yes;
	decide no.
To execute (E - bag-feeding-big-bra):
	say "Your bag reacts to the large cup size of the [noun] compared to your [BreastDesc]. You feel it sending some magic to your chest, to attempt to grow your breasts!";
	BustUp 1.

bag-feeding-cards is a bag-feeding-effect.
Definition: bag-feeding-cards is appropriate:
	if the noun is playing card themed, decide yes;
	decide no.
To execute (E - bag-feeding-cards):
	say "Your bag reacts to the playing card theme of the [noun]. You feel like some of the good luck you've saved up has faded away...";
	decrease the raw luck of the player by 4.

bag-feeding-fire is a bag-feeding-effect.
Definition: bag-feeding-fire is appropriate:
	if the noun is fire themed and there is a worn destructible removable clothing, decide yes;
	decide no.
To execute (E - bag-feeding-fire):
	let C be a random worn destructible removable clothing;
	say "Your bag reacts to the fire theme of the [noun]. Your [C] bursts into flames and disappears!";
	destroy C.

bag-feeding-pee-time is a bag-feeding-effect.
Definition: bag-feeding-pee-time is appropriate:
	if the player is bursting and the player is not fake bursting and the noun is yellow themed, decide yes;
	decide no.
To execute (E - bag-feeding-pee-time):
	say "Your bag reacts to the yellow colour of the [ShortDesc of noun]. You feel a bit more desperate to go to the loo...";
	BladderUp 2.

bag-feeding-heels is a bag-feeding-effect.
Definition: bag-feeding-heels is appropriate:
	if the noun is heels:
		let C be a random worn heels;
		if C is heels and the heel-height of C > 0 and the heel-height of C < 8, decide yes;
	decide no.
To execute (E - bag-feeding-heels):
	let C be a random worn heels;
	increase the heel-height of C by 1;
	say "Your bag reacts to the high heels of the [ShortDesc of noun]. You feel [if the player is upright]yourself raised another inch off of the ground as [end if]your [ShortDesc of C] grow from [heel-height of C - 1] to [heel-height of C] inch heels!";

bag-feeding-pink-theme is a bag-feeding-effect.
Definition: bag-feeding-pink-theme is appropriate:
	if the noun is pink themed, decide yes;
	decide no.
To execute (E - bag-feeding-pink-theme):
	say "Your bag reacts to the pink colour of the [ShortDesc of noun]. ";
	let hairDone be 0;
	if diaper quest is 0 and frozen hair is 0:
		if the redness of hair < 3 or the blondeness of hair < 3 or the brightness of hair < 3:
			say "Your hair turns bright pink!";
			now the redness of hair is 3;
			now the brightness of hair is 3;
			now the blondeness of hair is 3;
			now hairDone is 1;
		otherwise if there is a worn tattoo:
			hair permanent check;
			now hairDone is 1;
	if hairDone is 0:
		let item-list be a list of clothing;
		repeat with X running through off-stage pink themed plentiful fetish appropriate clothing:
			if X is actually summonable, add X to item-list; [We've done this a complicated way so that we only perform this expensive check if we are already sure it's an eligible item]
		if the number of entries in item-list > 0:
			sort item-list in random order;
			let X be entry 1 of item-list;
			say "Suddenly a [ShortDesc of X] shimmers into appearance on your body!";
			summon X cursed with quest;
		otherwise:
			say "You feel more perverted...";
			SexAddictUp 1.

bag-feeding-diaper is a bag-feeding-effect.
Definition: bag-feeding-diaper is appropriate:
	if the noun is diaper and the player is not bladder incontinent and the bladder-incontinence of the player < the max-bladder-incontinence of the player, decide yes;
	decide no.
To execute (E - bag-feeding-diaper):
	say "Your bag reacts to the diaper! You feel a twinge behind your bladder as it weakens...";
	SilentlyBladderIncontinenceUp 1.

bag-feeding-dry-diaper is a bag-feeding-effect.
Definition: bag-feeding-dry-diaper is appropriate:
	if the noun is diaper:
		let BG be a random worn bag of holding;
		update upgrade target of BG;
		if the upgrade-target of BG is diaper bag of holding or the upgrade-target of BG is baby diaper bag of holding, decide yes;
	decide no.
To execute (E - bag-feeding-dry-diaper):
	let BG be a random worn bag of holding;
	say "Your bag reacts to the diaper!";
	transform BG.

bag-feeding-diaper-bag is a bag-feeding-effect.
Definition: bag-feeding-diaper-bag is appropriate:
	if diaper messing >= 6 and the noun is diaper and (there is a worn diaper bag of holding or there is a worn baby diaper bag of holding), decide yes;
	decide no.
To execute (E - bag-feeding-diaper-bag):
	let SD be a random off-stage soiled-diaper;
	if SD is soiled-diaper:
		now SD is in the location of the player;
		DiaperPrint SD from the noun;
		say "Your diaper bag reacts to the [ShortDesc of noun]! It rumbles and then spits out a [SD] onto the ground!".

To compute BagFeedingEffect of (C - a thing):
	let E be a random appropriate bag-feeding-effect;
	unless E is nothing, execute E.

enema-backpack is a clothing. enema-backpack is unique. The printed name of enema-backpack is "[clothing-title-before]enema backpack[clothing-title-after]". The text-shortcut of enema-backpack is "eb". Figure of enema-backpack is the file "Items/Clothes/Upper/Special/enemabackpack1.png". enema-backpack can be enema-released.
To decide which figure-name is clothing-image of (H - enema-backpack):
	decide on figure of enema-backpack.

Definition: enema-backpack is nudism-enabling: decide yes.

To say ShortDesc of (B - enema-backpack):
	say "backpack".
To say ClothingDesc of (B - enema-backpack):
	say "This backpack is filled with water and has a subtle tube that goes down to your [asshole]. [if B is enema-released]It has pumped its water inside you![otherwise if B is worn]If you move your hands from behind your head, an invisible cord will be pulled and the backpack will give you a huge enema!".

To decide which number is the initial cringe of (B - enema-backpack):
	decide on 2.

To compute school periodic effect of (B - enema-backpack):
	if B is not enema-released and realisticArms is 1 and (entry 1 in the armUses of arms is not hair or entry 2 in the armUses of arms is not hair):
		now B is enema-released;
		say "[bold type]A quiet 'click' sound heralds the backpack releasing its enema! [roman type]Before you can do anything your [asshole] has been filled with a huge amount of water!!![line break][variable custom style]Ugh... so much...[roman type][line break]";
		AssFill 20 with water;
		now entry 1 in the armUses of arms is the player;
		now entry 2 in the armUses of arms is the player;
	otherwise if B is not enema-released and the player is in a predicament room and the player is not in Predicament20:
		appropriate-cutscene-display figure of diaper grope predicament cutscene.

breastfeeding-bag is a clothing. breastfeeding-bag is unique. The printed name of breastfeeding-bag is "[clothing-title-before]breastfeeding bag[clothing-title-after]". The text-shortcut of breastfeeding-bag is "bfb". Figure of breastfeeding-bag is the file "Items/Accessories/Bags/bag23.png".
To decide which figure-name is clothing-image of (H - breastfeeding-bag):
	decide on figure of breastfeeding-bag.

Definition: breastfeeding-bag is nudism-enabling: decide yes.

To say ShortDesc of (B - breastfeeding-bag):
	say "bag".
To say ClothingDesc of (B - breastfeeding-bag):
	say "This baby pink satchel is looks like it should be filled with everything you need to care for a baby. But in fact it's actually just containing two large jars of clearly-labelled fluid...".

To decide which number is the initial cringe of (B - breastfeeding-bag):
	decide on 3.

Bags of Holding Framework ends here.
