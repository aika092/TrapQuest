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
Definition: a bottle is never-in-bag: decide yes.
Definition: squeezy-bottle is never-in-bag: decide yes.
Definition: a food is never-in-bag: decide yes.
Definition: an egg is never-in-bag: decide yes.
Definition: pink pill is never-in-bag: decide yes.
Definition: a bag of holding is never-in-bag: decide yes.
Definition: a potion is never-in-bag: decide yes.
Definition: an elixir is never-in-bag: decide yes.
Definition: a tincture is never-in-bag: decide yes.
Definition: water-bomb is never-in-bag: decide yes.
Definition: a trophy is never-in-bag: decide yes.
Definition: ectoplasm is never-in-bag: decide yes.
Definition: pink-spraybottle is never-in-bag: decide yes.

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

To decide which number is not-in-bag:
	decide on the number of currently-not-in-bag necessary-in-bag things.

Check taking something:
	if not-in-bag >= 15:
		if there is a worn bag of holding:
			if the noun is never-in-bag, say "You are at your limit for carrying [if diaper messing >= 6]messy diapers, [end if]food and drink. You'll have to drop some if you want to pick up more." instead;
		otherwise:
			unless the noun is bag of holding, say "You are at your limit for carrying objects[if the noun is not never-in-bag]. If only you still had that bag of holding[end if]." instead.

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
	say "Food, drink and valuable jewellery cannot be placed in this".

To compute failed transform of (C - a bag of holding):
	increase the transform-attempts of C by 1;
	say "The [C] seems to [if the transform-attempts of C > 1]once again [end if]resist being transformed!".

To decide which number is bagHungerSpeed: [The higher this is, the longer between consumptions. But since we're squaring the number of items, this is going to be irrelevant in comparison after a while.]
	decide on 50000.
To decide which number is bagHungerAllowance: [The number of items before the bag has any chance of consuming anything.]
	decide on 12.

To compute periodic effect of (C - a bag of holding):
	unless inventory handicap is 0 or resting is 1 or busy is 1:
		increase the hunger of C by 1;
		let NM be the number of in-bag things - the number of in-bag mass collectibles;
		let N be NM - bagHungerAllowance;
		if N < 1, now N is 1;
		let H be 10 + (bagHungerSpeed / (N * N));
		let H2 be 10 + (bagHungerSpeed / ((N + 1) * (N + 1)));
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
	force inventory-focus redraw. [This forces the inventory window to redraw]

Understand "feed [something] to [something]" as BagFeeding it to.

A bag-feeding-effect is a kind of object.
To execute (E - a bag-feeding-effect) on (C - a thing):
	say "BUG - somebody forgot to code the functionality of [E].".

A bag of holding has a number called tempBimbo.
bag-feeding-bimbo is a bag-feeding-effect.
To execute (E - bag-feeding-bimbo) on (C - a thing):
	if C is clothing:
		if (diaper quest is 0 and the initial outrage of C > a random number between 8 and 12) or (diaper quest is 1 and the initial cringe of C > a random number between 8 and 12):
			say "Your bag reacts to the [if diaper quest is 1]silly[otherwise]slutty[end if] nature of the [ShortDesc of C], making you feel a bit light-headed and giddy! Your thoughts will be slightly more [if diaper quest is 1]immature[otherwise]lewd[end if] until your bag consumes its next item.";
			now the tempBimbo of a random worn bag of holding is 1;
		otherwise:
			now the tempBimbo of a random worn bag of holding is 0;
	otherwise:
		now the tempBimbo of a random worn bag of holding is 0.
A sex addiction theme rule:
	let B be a random worn bag of holding;
	if B is bag of holding, decrease tempThemeBonus by the tempBimbo of B.

bag-feeding-condoms is a bag-feeding-effect.
To execute (E - bag-feeding-condoms) on (C - a thing):
	if there is a worn condom rolls bag of holding and C is clothing:
		if the total condoms of C > 0:
			let P be a random worn condom pinnable clothing;
			let S be nothing;
			if P is nothing:
				now S is string-belt;
				summon S cursed with silent quest;
				now P is S;
			let UC be the used condoms of C;
			let EC be the empty condoms of C;
			say "Your condom bag spits out the [if UC > 1][UC] [semen]-filled condoms[otherwise if UC > 0][semen]-filled condom[end if][if UC > 0 and EC > 0] and [end if][if EC > 1][EC] empty condoms[otherwise if EC > 0]empty condom[end if]! [if the total condoms of C > 1]They shoot into the air around you[otherwise]For a moment, it hovers in the air in front of you[end if]. [if S is clothing]Suddenly, a [printed name of S] appears around your waist! [end if] You watch in [horror the semen taste addiction of the player] as ";
			if the number of worn condom pinnable clothing > 1:
				while UC + EC > 0:
					now P is a random worn condom pinnable clothing;
					if UC > 0:
						say "[if the total condoms of C > 1 and EC > 0]one full condom[otherwise if the total condoms of C > 1]one condom[otherwise]it[end if] pins itself to your [ShortDesc of P]";
						increase the used condoms of P by 1;
						decrease UC by 1;
						progress quest of condom-eating-quest;
					otherwise:
						say "[if the total condoms of C > 1 and the used condoms of C > 0]one empty condom[otherwise if the total condoms of C > 1]one condom[otherwise]it[end if] pins itself to your [ShortDesc of P]";
						increase the empty condoms of P by 1;
						decrease EC by 1;
					say "[if UC + EC > 1], [otherwise if UC + EC is 1] and [otherwise]![end if]";
			otherwise:
				say "[if UC + EC > 2]They all fly down and pin themselves[otherwise if UC + EC is 2]They both fly down and pin themselves[otherwise]It flies down and pins itself[end if] to your [MediumDesc of P]!";
				increase the used condoms of P by UC;
				increase the condom-count of condom-eating-quest by UC - 1;
				progress quest of condom-eating-quest;
				increase the empty condoms of P by EC;
			if the total condoms of C > 1, say "[variable custom style][if the player is shameless or (the semen taste addiction of the player > 16 and the used condoms of C > 0)]Perfect! I didn't want to lose them![otherwise if the semen taste addiction of the player > 13 and the used condoms of C > 1]Ugh. Well at least I have some emergency drinks, I guess.[otherwise if the semen taste addiction of the player > 13 and the used condoms of C > 0]Ugh. Well at least I have an emergency drink, I guess.[otherwise]Oh come on! Is there no escaping these things?![end if][roman type][line break]";
			otherwise say "[variable custom style][if the player is shameless or (the semen taste addiction of the player > 16 and the used condoms of C > 0)]Perfect! I didn't want to lose that![otherwise if the player is disgraced or (the semen taste addiction of the player > 12 and the used condoms of C > 0)]Grr... I guess it's here to stay for now.[otherwise]Oh come on! Is there no escaping this stupid condom?![end if][roman type][line break]";
		if the semen-soak of C > 0:
			say "Your condom bag absorbs the [semen] from the [C] and transfers it into a condom! The now full condom shoots out of the bag, hovering still in mid-air in front of you for a brief moment. ";
			compute spontaneous condom of a random worn bag of holding.

bag-feeding-semen is a bag-feeding-effect.
To execute (E - bag-feeding-semen) on (C - a thing):
	if diaper quest is 0 and C is semen themed and the number of carried non-empty bottles is 0:
		say "Your bag reacts to the semen theme of the [ShortDesc of C], making you feel very thirsty!";
		if the stomach-water of the player > 1, now the stomach-water of the player is 1;
		now the stomach-semen of the player is 0;
		now the stomach-urine of the player is 0;
		now the stomach-milk of the player is 0;
		now the fill-colour of squirt dildo is creamy;
		now the doses of squirt dildo is 1;
		if squirt dildo is held:
			say "What's more, your [printed name of squirt dildo] fills up to the brim with [semen]!";
		otherwise:
			say "What's more, a [printed name of squirt dildo] appears on the ground in front of you! Something tells you that you can guess what's inside...";
			now squirt dildo is in the location of the player.

bag-feeding-urine is a bag-feeding-effect.
To execute (E - bag-feeding-urine) on (C - a thing):
	if watersports fetish is 1 and C is toilet themed and the number of carried non-empty bottles is 0:
		say "Your bag reacts to the toilet theme of the [ShortDesc of C], making you feel very thirsty!";
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
			now champagne-glass is in the location of the player.

bag-feeding-swimming is a bag-feeding-effect.
To execute (E - bag-feeding-swimming) on (C - a thing):
	if C is swimming themed:
		say "Your bag reacts to the swimwear theme of the [ShortDesc of C] by drenching everything you're wearing in water!";
		repeat with T running through worn fluid vulnerable clothing:
			drench T.

bag-feeding-toy is a bag-feeding-effect.
To execute (E - bag-feeding-toy) on (C - a thing):
	if C is a sex toy:
		let F be asshole;
		if the player is possessing a vagina and C is not plug, now F is vagina;
		say "Your bag reacts to the toy by making your [variable F] tingle with delight!";
		ruin F times 1.

bag-feeding-skirt is a bag-feeding-effect.
To execute (E - bag-feeding-skirt) on (C - a thing):
	let S be a random worn skirted crotch-in-place displacable clothing;
	if C is a skirt and S is clothing:
		say "Your bag reacts to the skirt by making your [ShortDesc of S] fly up into the air, exposing everything underneath!";
		displace S.

bag-feeding-sex-themes is a bag-feeding-effect.
To execute (E - bag-feeding-sex-themes) on (C - a thing):
	if diaper quest is 0:
		let B be a random worn bag of holding;
		if B is penis themed and C is penis themed:
			say "Your [MediumDesc of B][']s [manly-penis] theme synergises with the theme of the [MediumDesc of C]! ";
			if the size of penis > min penis size:
				PenisDown 1;
			otherwise:
				say "You feel a bit more [if the player is a pervert]perverted[otherwise]willing to consider deviant ideas[end if]...";
				SexAddictUp 1;
		if B is vagina themed and C is vagina themed and the player is possessing a vagina:
			say "Your [MediumDesc of B][']s vagina theme synergises with the theme of the [MediumDesc of C]! ";
			VaginalSexAddictUp 1;
		if B is anal sex themed and C is anal sex themed:
			say "Your [MediumDesc of B][']s anal sex theme synergises with the theme of the [MediumDesc of C]! ";
			AnalSexAddictUp 1;
		if B is oral sex themed and C is oral sex themed:
			say "Your [MediumDesc of B][']s oral sex theme synergises with the theme of the [MediumDesc of C]! ";
			OralSexAddictUp 1;
		if B is boob themed and C is boob themed and max breast size >= 5:
			say "Your [MediumDesc of B][']s boob theme synergises with the theme of the [MediumDesc of C]! ";
			TitfuckAddictUp 1;
		if B is dog themed and C is dog themed:
			say "Your [MediumDesc of B][']s [']bitch['] theme synergises with the dog theme of the [MediumDesc of C]!";
			DelicateUp 1;
		if B is heart themed and C is heart themed and the player is able to get horny:
			say "Your [MediumDesc of B][']s heart theme synergises with the theme of the [MediumDesc of C]! You can hear your blood pumping in your ears as you feel yourself getting horny!";
			Arouse 3000.

bag-feeding-discipline is a bag-feeding-effect.
To execute (E - bag-feeding-discipline) on (C - a thing):
	if C is impact play themed and the body soreness of the player is 0:
		say "Your bag reacts to the impact play theme of the [ShortDesc of C]. An invisible paddle spanks you on the [AssDesc]!";
		BodyRuin 1;
		PainUp 1.

bag-feeding-pee-time is a bag-feeding-effect.
To execute (E - bag-feeding-pee-time) on (C - a thing):
	if the player is bursting and the player is not fake bursting and C is yellow themed:
		say "Your bag reacts to the yellow colour of the [ShortDesc of C]. You feel a bit more desperate to go to the loo...";
		BladderUp 2.

bag-feeding-pink-theme is a bag-feeding-effect.
To execute (E - bag-feeding-pink-theme) on (C - a thing):
	if C is pink themed and there is a worn pink themed bag of holding:
		say "Your pink bag reacts strongly to the pink colour of the [ShortDesc of C]! ";
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

bag-feeding-wet-diaper is a bag-feeding-effect.
To execute (E - bag-feeding-wet-diaper) on (C - a thing):
	if (C is wet diaper or (C is wet knickers and diaper quest is 1)) and the player is not incontinent and incontinence < the max-incontinence of the player:
		say "Your bag reacts to the wetness! You feel a twinge behind your bladder as it weakens...";
		increase incontinence by 1.

bag-feeding-dry-diaper is a bag-feeding-effect.
To execute (E - bag-feeding-dry-diaper) on (C - a thing):
	if C is clean diaper:
		let BG be a random worn bag of holding;
		update upgrade target of BG;
		if the upgrade-target of BG is diaper bag of holding or the upgrade-target of BG is baby diaper bag of holding:
			say "Your bag reacts to the diaper!";
			transform BG.

bag-feeding-diaper-bag is a bag-feeding-effect.
To execute (E - bag-feeding-diaper-bag) on (C - a thing):
	if diaper messing >= 6 and C is diaper and (there is a worn diaper bag of holding or there is a worn baby diaper bag of holding):
		let SD be a random off-stage soiled-diaper;
		if SD is soiled-diaper:
			now SD is in the location of the player;
			DiaperPrint SD from C;
			say "Your diaper bag reacts to the [ShortDesc of C]! It rumbles and then spits out a [SD] onto the ground!".

To compute BagFeedingEffect of (C - a thing):
	repeat with E running through bag-feeding-effects:
		execute E on C.

enema-backpack is a clothing. enema-backpack is unique. The printed name of enema-backpack is "[clothing-title-before]enema backpack[clothing-title-after]". The text-shortcut of enema-backpack is "eb". Figure of enema-backpack is the file "Items/Clothes/Upper/Special/enemabackpack1.png". enema-backpack can be enema-released.
To decide which figure-name is clothing-image of (H - enema-backpack):
	decide on figure of enema-backpack.

To say ShortDesc of (B - enema-backpack):
	say "backpack".
To say ClothingDesc of (B - enema-backpack):
	say "This backpack is filled with water and has a subtle tube that goes down to your [asshole]. [if B is enema-released]It has pumped its water inside you![otherwise if B is worn]If you move your hands from behind your head, an invisible cord will be pulled and the backpack will give you a huge enema!".

To decide which number is the initial cringe of (B - enema-backpack):
	decide on 2.

To compute school periodic effect of (B - enema-backpack):
	if B is not enema-released and realisticArms is 1 and (entry 1 in the armUses of arms is not hair or entry 2 in the armUses of arms is not hair):
		now B is enema-released;
		say "A quiet 'click' sound heralds the backpack releasing its enema! Before you can do anything your [asshole] has been filled with a huge amount of water!!![line break][variable custom style]Ugh... so much...[roman type][line break]";
		AssFill 20 with water;
	otherwise if B is not enema-released and the player is not in a park room:
		appropriate-cutscene-display figure of diaper grope predicament cutscene.

Bags of Holding Framework ends here.
