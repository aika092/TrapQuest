Clothing Adjectives by Clothing begins here.

[!<WearThing>@

REQUIRES COMMENTING

@inherits <Thing>

@!]
A wearthing is a kind of thing.

A wearthing can be predicament-normal, predicament-temporary or predicament-fixed (this is the predicament-persistence property). A wearthing is usually predicament-normal. [Anything predicament-temporary is removed at the end of a predicament.]

[!<Clothing>@

REQUIRES COMMENTING

@inherits <WearThing>

@!]
A clothing is a kind of wearthing. A clothing is wearable. Understand "worn" as clothing when item described is worn. Understand "unworn", "not worn" as clothing when item described is not worn. Understand "held", "carried", "taken" as a thing when item described is carried. Understand "unheld", "uncarried", "not held", "not carried", "untaken", "not taken" as a thing when item described is not held.

Clothing can be cotton, latex, glass, leather, pvc, satin, mesh, wool, nylon, metal, biological, hemp, silk, velvet, denim, lycra, plastic, polyester (this is the clothing-material property). Clothing is usually cotton. Understand the clothing-material property as describing a clothing.

Clothing can be dense, sheer-when-wet, sheer, see-through (this is the clothing-transparency property). Understand the clothing-transparency property as describing a clothing. Clothing is usually dense. [Sheer and see-through clothing does not prevent humiliation from being naked but soaks up liquid. Clothing that is see-through can never be less humiliating than being naked. Clothing that is sheer can.]
Definition: a clothing is not-see-through:
	if it is not see-through, decide yes;
	decide no.

[!<Clothing>@<IsActuallySheer>+

Currently see-through.

+@!]
Definition: a clothing (called C) is actually sheer:
	if C is dense or (C is sheer-when-wet and the total-soak of C is 0), decide no;
	decide yes.

[!<Clothing>@<IsActuallyDense>+

Currently not see-through.

+@!]
Definition: a clothing is actually dense:
	if it is not actually sheer, decide yes;
	decide no.

[!<Clothing>@<skirtLength:SkirtLengthEnum>*

Short clothing (usually skirts) expose the crotch when the player is on their knees. Super short clothing never covers the crotch. hobble clothing hinders walking but also makes it crotch covering. NB hobble-skirted clothing also needs to be flagged as crotch-intact.

*@!]
Clothing can be unskirted, knee-length, short, super-short, hobble-skirted (this is the skirt-length property). Understand the skirt-length property as describing a clothing. Clothing is usually unskirted.

Definition: a clothing is difficult to don: decide no. [Does it take 2 turns to wear]
Definition: a clothing is difficult to remove:
	if it is difficult to don, decide yes;
	decide no. [Does it take 2 turns to remove]

the default wearability rules is a rulebook.
Clothing has a rulebook called wearability rules. The wearability rules of clothing is usually the default wearability rules.
Clothing has a rulebook called removability rules. The removability rules of clothing is usually the default wearability rules.

Definition: a clothing is skirted:
	if it is not unskirted, decide yes;
	decide no.

Understand "glued" as clothing when item described is glued.

Definition: a clothing (called C) is rigid:
	if C is glass or C is denim or C is metal or C is plastic, decide yes;
	decide no.

Clothing can be unlocked or locked. Clothing is usually unlocked.

Clothing has a number called effect. The effect of clothing is usually 1.
To decide which number is the soak-limit of (C - a clothing):
	if C is latex or C is metal or C is glass or C is pvc or C is biological or C is plastic or C is leather, decide on 0;
	decide on the default-soak-limit of C.
To decide which number is the default-soak-limit of (C - a clothing): decide on 10.
Definition: a clothing is fluid immune: [Is fluid unable to soak into or pass through C?]
	if the soak-limit of it is 0, decide yes;
	decide no.
Definition: a clothing is fluid vulnerable: [Can it absorb fluid all the way through?]
	if it is not fluid immune and it is not external fluid immune, decide yes;
	decide no.
Definition: a clothing is external fluid immune: decide no. [Is the top of it waterproof but the underside soakable?]
Definition: a clothing is somewhat fluid vulnerable: [Can it absorb fluid at least partially?]
	if it is fluid immune, decide no;
	decide yes.
Clothing has a number called semen-soak. The semen-soak of clothing is usually 0.
Clothing has a number called urine-soak. The urine-soak of clothing is usually 0.
Clothing has a number called milk-soak. The milk-soak of clothing is usually 0.
Clothing has a number called water-soak. The water-soak of clothing is usually 0.
To decide which number is the total-soak of (C - a clothing):
	decide on the semen-soak of C + the urine-soak of C + the milk-soak of C + the water-soak of C.
To compute drying of (C - a clothing):
	if the total-soak of C > 0:
		if C is fluid immune:
			WaterEmpty C;
			clean C;
		otherwise:
			if the water-soak of C > 0:
				if a random number between 1 and 10 is 1:
					decrease the water-soak of C by 1;
			if the milk-soak of C > 0:
				if a random number between 1 and 16 is 1:
					decrease the milk-soak of C by 1;
			if the urine-soak of C > 0:
				if a random number between 1 and 14 is 1:
					decrease the urine-soak of C by 1;
			if the semen-soak of C > 0:
				if a random number between 1 and 20 is 1:
					decrease the semen-soak of C by 1;
			if the total-soak of C is 0 and C is in the location of the player or C is held:
				if C is worn, force clothing-focus redraw;
				otherwise force inventory-focus redraw;
				say "[if C is held]Your[otherwise]The[end if] [ShortDesc of C] is now completely dry.".
Clothing has a number called top-layer. The top-layer of clothing is usually 0.
Clothing has a number called mid-layer. The mid-layer of clothing is usually 0.
Clothing has a number called bottom-layer. The bottom-layer of clothing is usually 0.
Clothing can be crotch-intact, crotch-skirted, crotch-zipped, crotch-unzipped, crotch-ripped, crotch-exposing, no-crotch (this is the crotch-layering property). Clothing is usually no-crotch.

[How is this item put on and taken off?]
Definition: a clothing is crotch-pullup:
	if it is not no-crotch and it is unskirted, decide yes;
	decide no.
Definition: a clothing is crotch-tie-up:
	if it is not no-crotch and it is not crotch-pullup, decide yes;
	decide no.

Clothing can be crotch-in-place or crotch-displaced. Clothing is usually crotch-in-place.
[!<ClothingIsDisplacable>+

Can this (usually) be displaced at the crotch?

+!]
Definition: a clothing is displacable: decide no.
[!<ClothingIsUndisplacable>+

Is this unable to (usually) be displaced at the crotch?

+!]
Definition: a clothing is undisplacable:
	if it is not displacable, decide yes;
	decide no.
[!<ClothingIsActuallyDisplacable>+

Can this be displaced at the crotch right now?

+!]
Definition: a clothing (called C) is actually displacable rather than actually undisplacable:
	if C is not worn or C is glued, decide no;
	if C is crotch-displaced or C is not displacable, decide no;
	unless C is skirted:
		repeat with D running through worn top level protection unskirted clothing:
			if the bottom-layer of D > the bottom-layer of C, decide no;
	decide yes.
[!<ClothingIsActuallyAvoidable>+

Can this be somehow made to expose the crotch if it's the top level protection?

+!]
Definition: a clothing (called C) is actually avoidable rather than actually unavoidable:
	if C is glued, decide no;
	if C is crotch-displaced or (C is not displacable and C is not zippable and C is not usually autoremovable), decide no;
	decide yes.

[!<ClothingIsRippable>+

Can this be ripped at the crotch?

+!]
Definition: a clothing is rippable:
	if it is crotch-zipped, decide yes;
	decide no.

Clothing can be not-enema-helping or enema-helping. Clothing is usually not-enema-helping.
Clothing can be crotch-normal or crotch-assless. Clothing is usually crotch-normal.
Clothing can be not-butt-windowed or butt-windowed. Clothing is usually not-butt-windowed. [A butt window exposes underwear but not the asshole itself.]
Clothing have a number called armour. Clothing have a number called damage.
Clothing can be non-combat, slap ready, knee ready, kick ready or zap ready (this is the equippable-type property). Clothing is usually non-combat.
Clothing can be zippable or unzippable. Clothing is usually unzippable.
Clothing can be plentiful, rare, transformation-rare, unique (this is the clothing-rarity property). Clothing is usually plentiful. [Plentiful shows up in containers. Rare shows up much less often in special containers and in the junk room. Transformation rare are (mostly) slutty items that mainly appear from transformations. Unique are items with their own spawning mechanics that shouldn't be spawned in other ways.]
Definition: a clothing is transformation-eligible:
	if (it is plentiful or it is transformation-rare) and it is fetish appropriate, decide yes;
	decide no.
Definition: a clothing is non-unique:
	if it is not unique, decide yes;
	decide no.
Clothing can be belly exposing or belly covering. Clothing is usually belly exposing. [Does it take up the belly slot?]
Clothing can be neck exposing or neck covering. Clothing is usually neck exposing. [Does it take up the neck slot?]
Clothing can be leg exposing or leg covering. Clothing is usually leg exposing.
Definition: a clothing (called C) is at least partially thigh covering:
	if C is crotch-in-place:
		if C is leg covering, decide yes;
		if C is short or longer, decide yes;
	decide no.
Definition: a clothing (called C) is thigh covering:
	if C is crotch-in-place:
		if C is leg covering, decide yes;
		if C is knee-length or longer, decide yes;
	decide no.
Definition: a clothing (called C) is calf covering:
	if C is crotch-in-place:
		if C is leg covering or C is hobble-skirted, decide yes;
	decide no.
Definition: a clothing (called C) is ankle covering:
	if C is leg covering, decide yes;
	decide no.
Clothing can be arm exposing, only arm covering, or finger covering (this is the arm slot property). Clothing is usually arm exposing.
Definition: a clothing (called C) is arm covering:
	if C is arm exposing, decide no;
	decide yes.
Clothing can be chestless, fully exposing, ridiculously low cut, very low cut, low cut, average cut, high cut, fully covering (this is the clothing-cleavage property). Clothing is usually chestless. [Chestless means it doesn't take up the chest slot. Whereas fully exposing means that the breasts are fully exposed but the item still takes up the chest slot. e.g. cupless bra.]
Clothing can be top-intact or top-ripped. Clothing is usually top-intact.
Definition: a clothing is breast exposing rather than breast covering:
	if it is chestless, decide yes;
	decide no.
Definition: a clothing is actually breast covering:
	if it is breast covering and it is not fully exposing[ and it is top-intact] and it is top-placed, decide yes;
	decide no. [Yes it's a chest slot item but does it actually cover any skin?]
Definition: a clothing is breast hiding: decide no. [Does it somehow completely hide the fact that the player has breasts? Probably with a portal or something like that]
Clothing can be top-placed or top-displaced. Clothing is usually top-placed.[Displaced but for the chest.]
Clothing can be top-displacable, optional-top-displacable, or not-top-displacable (this is the top-displacability property). Clothing is usually not-top-displacable.[optional-top-displacable means it can be displaced, but it's not necessary.]
Definition: a clothing is not-top-displacable:
	if it is fully exposing or it is chestless or it is rigid or it is top-ripped or it is corset, decide yes;
	decide no.
Definition: a clothing (called C) is actually top-displacable rather than actually not-top-displacable:
	if C is not worn or C is glued, decide no;
	if C is top-displaced or C is not-top-displacable, decide no;
	repeat with D running through worn top level breasts protection clothing:
		if the top-layer of D > the top-layer of C, decide no;
	decide yes.
Clothing can be normally-nipple-covering, erect-nipple-exposing, normally-partially-nipple-covering or normally-nipple-exposing. Clothing is usually normally-nipple-exposing. [This is separate as some clothing has holes specifically for the nipples.]
Definition: a clothing (called C) is actually nipple exposing rather than actually nipple covering: [Are the nipples literally exposed to the open air]
	if C is chestless or C is normally-nipple-exposing or C is top-displaced or C is top-ripped or C is fully exposing or C is uniquely nipple exposing, decide yes;
	decide no.
Definition: a clothing (called C) is at least partially nipple exposing rather than nipple covering: [Are the nipples at least partially visible]
	if C is normally-partially-nipple-covering or (C is erect-nipple-exposing and the player is horny) or C is actually nipple exposing or C is actually sheer, decide yes;
	decide no.
Definition: a clothing (called C) is nipple exposing rather than at least partially nipple covering: [ripped clothing leaves them only partially visible]
	if C is normally-nipple-exposing or C is top-displaced or C is chestless or C is fully exposing or C is see-through or C is uniquely nipple exposing, decide yes;
	decide no.
Definition: a clothing (called C) is uniquely nipple exposing: [Allows us to create unique rules for when nipples are exposed]
	decide no.
Clothing can be milking flappable or milking unflappable. Clothing is usually milking unflappable. [Are there flaps that allow for breast feeding / milking?]
Clothing can be totally-exclusive, top-exclusive, bottom-exclusive, not-exclusive (this is the clothing-exclusivity property). Clothing is usually not-exclusive. [Exclusive means nothing can go above or below it.]
Definition: a clothing is exclusive:
	if it is not not-exclusive, decide yes;
	decide no.
Clothing can be ass plugging. Clothing is usually not ass plugging.
Clothing can be vagina plugging. Clothing is usually not vagina plugging.
Clothing has a number called plug size. The plug size of clothing is usually 0.
Clothing can be purity. Clothing is usually not purity. [Means they care about your virginity.]
A Magic-type is a kind of value. The magic-types are blandness, dressup, milk production, absorption, temptation, suppression, bed wetting, confidence, endurance, dominance, constriction, speed, kicking, protection, posture training, expansion, refreshment, rejuvenation, possession, maturity, respiration, durability, stumbling, provocation, exposure, audible jiggles, and hostility. Clothing has a magic-type. The magic-type of clothing is usually blandness.
Magic-ID is a kind of value. The magic-IDs are unidentified and identified. Clothing has a Magic-ID. The Magic-ID of clothing is usually unidentified.
Clothing has a number called raw-magic-modifier. The raw-magic-modifier of clothing is usually 0.
To decide which number is the penis-capacity of (C - a clothing):[what's the largest size of penis it can cover?]
	if C is skirted:
		if the player is upright or C is not worn, decide on the skirtLength of C * 2;
		otherwise decide on the skirtLength of C - 2;
	decide on 10.
Clothing can be stuck. Clothing is usually not stuck.
[!<YourselfIsClothingStuck>+

Is the player unable to move because some clothing is stuck?

+!]
Definition: yourself is clothing stuck:
	if there is worn stuck clothing, decide yes;
	decide no.
Clothing can be bsounding. Clothing is usually not bsounding. 
Clothing can be glued or unglued. Clothing is usually unglued.
Clothing can be womanly or manly. Clothing is usually womanly. [Manly clothing is anything that is not specifically something only women should wear. E.g. a T-shirt]
Clothing can be restart immune. Clothing is usually not restart immune. [This means it won't disappear or change when the map is reset.]
Clothing can be spikey. A clothing is usually not spikey.
A clothing has a number called used condoms. A clothing has a number called empty condoms.
A clothing has a number called stolen-strength. [This strength is returned when the item is worn again]
Definition: an object is removal-blocking: decide no. [Some items can prevent other clothing from being removed until it is removed]
[!<Clothing>@<temporarilyDisplaced:Boolean>*

It's been automatically displaced to allow the player to pee or something. We intend to replace it afterwards.

*!]
Clothing can be temporarily-displaced.
[!<Clothing>@<temporarilyRemoved:Boolean>*

It's been removed by something or someone that has the intent to replace it after punishing the player.

*!]
Clothing can be temporarily-removed.
Definition: a clothing (called C) is subduing:[Can C be held by monsters to fully control the player?]
	decide no.
[!<YourselfIsSubdued>+

Is the player unable to move because a monster is holding onto a subduing clothing?

+!]
Definition: yourself is subdued:
	repeat with C running through worn subduing clothing:
		repeat with M running through monsters covering C:
			if M is not in the location of the player or M is not dangerous, now M is not covering C; [As a safety feature we force monsters to let go of subduing clothing if they're no longer attacking the player]
			otherwise decide yes;
	decide no.
[!<SubduedImmobilityRule>+

Allows us to flag the player as immobile if they are subdued.

+!]
This is the subdued immobility rule:
	if the player is subdued, rule fails.
The subdued immobility rule is listed in the immobility rules.
Definition: a clothing is nudism-enabling: decide no. [If the player is wearing this, they are wearing something that counts as clothing!]
Definition: a clothing is nudism-disabling:
	if it is not nudism-enabling, decide yes;
	decide no.
Definition: an accessory is nudism-enabling: decide yes.
Definition: an headgear is nudism-enabling: decide yes.
Definition: a sex toy is nudism-enabling: decide yes.
Definition: a piercing is nudism-enabling: decide yes.
Definition: a bondage is nudism-enabling: decide yes.
Definition: an equippable is nudism-enabling: decide yes.
Definition: a bag of holding is nudism-enabling: decide yes.
Definition: yourself is clothed:
	if there is worn nudism-disabling clothing, decide yes;
	decide no.
Definition: yourself is naked:
	if the player is clothed, decide no;
	decide yes.

Definition: a clothing (called C) is ringagged: [Is it something that includes a ring gag?]
	decide no.

[!<ClothingIsBasicLoot>+

Is this something that should be able to appear as a generic item?

+!]
Definition: a clothing (called C) is basic loot:
	if C is diaper, decide no;
	if C is off-stage and C is plentiful and C is fetish appropriate, decide yes;
	decide no.

[!<ClothingIsDesirable>+

Does the wench want to steal it?

+!]
Definition: a clothing (called C) is desirable:
	if C is store or C is diaper or C is unremovable or C is cursed or C is locked or C is glued or C is ass plugging or C is vagina plugging, decide no;
	if C is not worn by the player and C is not held by the player, decide no;
	if C is not currently perceivable, decide no;
	if C is knickers and (C is messed or C is not total protection), decide no;
	decide yes.

Definition: a clothing is slitted: decide no. [Slitted skirts don't block knee attacks]

To decide which number is the stealth-influence of (C - a wearthing):
	decide on 0.
To decide which number is the stealth-influence of (C - a clothing):
	let N be 0;
	if C is nudism-disabling and C is actually dense, decrease N by 1;
	if C is gem themed, decrease N by 1;
	if C is bsounding, decrease N by 6;
	decide on N.
Definition: a clothing is stealthy:
	if the stealth-influence of it > 0, decide yes;
	decide no.
Definition: yourself is stealthy:
	if there is worn stealthy clothing, decide yes;
	decide no.

tonguesActive is a number that varies.
tonguesBlack is initially false.
Definition: a clothing is tongued: decide no.
Definition: a clothing is tonguing:
	if it is tongued and tonguesActive > 0 and it is worn, decide yes;
	decide no.

To decide which number is top-malfunction-likelihood:
	if titties out tattoo is worn, decide on 400;
	decide on 1250.

latest-top-malfunction is a number that varies.
Definition: yourself is top-wardrobe-malfunctioning:
	if (the player is sexed male and the largeness of breasts <= 1) or the number of worn actually nipple covering clothing is not 1:
		now latest-top-malfunction is 0;
		decide no;
	let C be a random worn actually nipple covering clothing;
	if C is not-top-displacable or C is glued or C is fully covering or C is fully exposing or C is slutty-bat-corset:
		now latest-top-malfunction is 0;
		decide no;
	if latest-top-malfunction is not 0:
		let timePassed be latest-top-malfunction - earnings;
		let CC be cleavageCover;
		if CC >= 3 and CC <= 7: [Just to make sure]
			let CL be 8 - CC;
			let malfunctionChance be timePassed * CL;
			let R be a random number between 1 and top-malfunction-likelihood;
			if debuginfo > 0, say "[input-style]Wardrobe Malfunction Check: Seconds since last check ([timePassed]) * cleavage ([CL]) = [malfunctionChance] | ([R].5) d[top-malfunction-likelihood] malfunction likelihood[roman type][line break]";
			if malfunctionChance > R:
				decide yes;
	decide no.
Carry out wearing breast covering clothing:
	now latest-top-malfunction is earnings.
Carry out taking off breast covering clothing:
	now latest-top-malfunction is earnings.
Carry out topReplacing:
	now latest-top-malfunction is earnings.
To say NipSlipFlav:
	let C be a random worn actually nipple covering clothing;
	if C is clothing, say "[bold type]You look down and notice that your [ShortDesc of C] has fallen open a bit, exposing a nipple. [roman type][moderateHumiliateReflect]You quickly fix the wardrobe malfunction.";
	otherwise say "[bold type]Minor bug - game calculated that you had experienced a nip slip but couldn't find a relevant item of clothing.[roman type][line break]".
To compute tq nip slip reaction of (M - a monster):
	say NipSlipSeenFlav of M;
	FavourDown M;
	now groping-person is M;
	update gropability;
	if the gropability of breasts > 0, increase the gropability of breasts by 8;
	if M is groping:
		now specificBodyPartChosen is true;
		now targeted-body-part is breasts;
		compute grope of M;
	say NipSlipFlav;
	if M is friendly human monster, progress quest of chest-exposing-quest from M.
To compute dq nip slip reaction of (M - a monster):
	say DQNipSlipSeenFlav of M;
	FavourDown M;
	say NipSlipFlav;
	if M is friendly human monster, progress quest of chest-exposing-quest from M.
To say NipSlipSeenFlav of (M - a monster):
	say "[speech style of M]'[one of]Err, I can see your nipple.'[or]Are you aware your nipple is on show?'[or]Nip-slip alert.'[in random order][roman type][line break]".
To say DQNipSlipSeenFlav of (M - a monster):
	say "[speech style of M]'[one of]Err, I can see your nipple. [or]Are you aware your nipple is on show? [purely at random][one of]Adults should not allow themselves to be exposed like this in public.'[or]Would you please put it away!'[or]Being unable to dress yourself properly is not a good sign of [maturity].'[at random][roman type][line break]".
An all time based rule (this is the malfunction checking rule):
	if saved-flat-intelligence > a random number between 1 and 350: [Do this check first as it is less computationally expensive]
		if another-turn is 0 and the player is not immobile and the player is not in danger:
			if the player is top-wardrobe-malfunctioning, say NipSlipFlav.

Clothing Adjectives ends here.
