Clothing Adjectives by Clothing begins here.


[!<WearThing>@

REQUIRES COMMENTING

@inherits <Thing>

@!]
A wearthing is a kind of thing.  A wearthing can be interracial related.

[!<Clothing>@

REQUIRES COMMENTING

@inherits <WearThing>

@!]
A clothing is a kind of wearthing.  A clothing is wearable.  Understand "worn" as clothing when item described is worn.  Understand "unworn", "not worn" as clothing when item described is not worn.  Understand "held", "carried", "taken" as a thing when item described is carried.  Understand "unheld", "uncarried", "not held", "not carried", "untaken", "not taken" as a thing when item described is not held.

[!<Clothing>@<clothingMaterial:ClothingMaterialEnum>*

REQUIRES COMMENTING

*@!]
Clothing can be cotton, latex, glass, leather, pvc, satin, mesh, wool, nylon, metal, biological, hemp, silk, denim, lycra, plastic, polyester (this is the clothing-material property).  Clothing is usually cotton.  Understand the clothing-material property as describing a clothing.

[!<Clothing>@<clothingTransparancy:ClothingTransparancyEnum>*

REQUIRES COMMENTING

*@!]
Clothing can be dense, sheer-when-wet, sheer, see-through (this is the clothing-transparency property).  Understand the clothing-transparency property as describing a clothing.  Clothing is usually dense.  [Sheer and see-through clothing does not prevent humiliation from being naked but soaks up liquid.  Clothing that is see-through can never be less humiliating than being naked.  Clothing that is sheer can.]

[!<Clothing>@<IsActuallySheer>+

REQUIRES COMMENTING

+@!]
Definition: a clothing (called C) is actually sheer:
	if C is dense or (C is sheer-when-wet and the total-soak of C is 0), decide no;
	decide yes.

[!<Clothing>@<IsActuallyDense>+

REQUIRES COMMENTING

+@!]
Definition: a clothing (called C) is actually dense:
	if C is actually sheer, decide no;
	decide yes.

[!<Clothing>@<skirtLength:SkirtLengthEnum>*

REQUIRES COMMENTING

*@!]
Clothing can be unskirted, knee-length, short, super-short, hobble-skirted (this is the skirt-length property).  Understand the skirt-length property as describing a clothing.  Clothing is usually unskirted.  [Short clothing (usually skirts) expose the crotch when the player is on their knees.  Super short clothing never covers the crotch.  hobble clothing hinders walking but also makes it crotch covering.  NB hobble-skirted clothing also needs to be flagged as crotch-intact.]

[!<defaultWearability:Rulebook>*

REQUIRES COMMENTING

*!]
the default wearability rules is a rulebook.

[!<Clothing>@<wearabilityRules:Rulebook>*

REQUIRES COMMENTING

*@!]
Clothing has a rulebook called wearability rules.  The wearability rules of clothing is usually the default wearability rules.

[!<Clothing>@<removabilityRules:Rulebook>*

REQUIRES COMMENTING

*@!]
Clothing has a rulebook called removability rules.  The removability rules of clothing is usually the default wearability rules.

[!<Clothing>@<IsSkirted>+

REQUIRES COMMENTING

+@!]
Definition: a clothing is skirted if it is not unskirted.

Understand "glued" as clothing when item described is glued.

[!<Clothing>@<IsRigid>+

REQUIRES COMMENTING

+!]
Definition: a clothing (called C) is rigid:
	if C is glass or C is denim or C is metal or C is plastic, decide yes;
	decide no.

Clothing can be unlocked or locked.  Clothing is usually unlocked.

Clothing has a number called effect.  The effect of clothing is usually 1.
Clothing has a number called soak-limit. The soak-limit of a clothing is usually 10.
Clothing has a number called semen-soak.  The semen-soak of clothing is usually 0.  
Clothing has a number called urine-soak.  The urine-soak of clothing is usually 0.  
Clothing has a number called milk-soak.  The milk-soak of clothing is usually 0. 
Clothing has a number called water-soak.  The water-soak of clothing is usually 0. 
To decide which number is the total-soak of (C - a clothing):
	decide on the semen-soak of C + the urine-soak of C + the milk-soak of C + the water-soak of C.
To compute drying of (C - a clothing):
	if the total-soak of C > 0:
		if the water-soak of C > 0:
			if a random number between 1 and 3 is 1:
				decrease the water-soak of C by 1;
		if the milk-soak of C > 0:
			if a random number between 1 and 12 is 1:
				decrease the milk-soak of C by 1;
		if the urine-soak of C > 0:
			if a random number between 1 and 10 is 1:
				decrease the urine-soak of C by 1;
		if the semen-soak of C > 0:
			if a random number between 1 and 16 is 1:
				decrease the semen-soak of C by 1;
		if the total-soak of C is 0 and C is in the location of the player, say "[if C is held]Your[otherwise]The[end if] [C] is now completely dry.".
[Clothing has a number called semen-limit.  The semen-limit of clothing is usually 10.
Clothing has a number called urine-limit.  The urine-limit of clothing is usually 10.
Clothing has a number called milk-limit.  The milk-limit of clothing is usually 10.]
Clothing has a number called top-layer.  The top-layer of clothing is usually 0.
Clothing has a number called mid-layer.  The mid-layer of clothing is usually 0.
Clothing has a number called bottom-layer.  The bottom-layer of clothing is usually 0.
Clothing can be crotch-intact, crotch-skirted, crotch-zipped, crotch-unzipped, crotch-ripped, crotch-exposing, no-crotch (this is the crotch-layering property).  Clothing is usually no-crotch.
Clothing can be crotch-in-place or crotch-displaced.  Clothing is usually crotch-in-place.
[!<ClothingIsDisplacable>+

Can this be displaced at the crotch?

+!]
Definition: a clothing is displacable:
	decide no.

[!<ClothingIsUndisplacable>+

Is this unable to be displaced at the crotch?

+!]
Definition: a clothing is undisplacable:
	if it is displacable, decide no;
	decide yes.
[!<ClothingIsRippable>+

Can this be ripped at the crotch?

+!]
Definition: a clothing is rippable:
	decide no.

Clothing can be not-enema-helping or enema-helping.  Clothing is usually not-enema-helping.
Clothing can be crotch-normal or crotch-assless.  Clothing is usually crotch-normal.
Clothing can be not-butt-windowed or butt-windowed.  Clothing is usually not-butt-windowed. [A butt window exposes underwear but not the asshole itself.]
Clothing have a number called armour.  The armour of clothing is usually 0.  Clothing have a number called damage.  The damage of clothing is usually 0.
Clothing can be zippable or unzippable.  Clothing is usually unzippable. [We use the flag "no protection" vs "total protection" to tell if a zip is up or down.  Zippable clothing can never be pussy protection.]
Clothing can be plentiful, rare, unique (this is the clothing-rarity property).  Clothing is usually plentiful.
Clothing can be belly exposing or belly covering.  Clothing is usually belly exposing. [Does it take up the belly slot?]
Clothing can be neck exposing or neck covering.  Clothing is usually neck exposing. [Does it take up the neck slot?]
Clothing can be leg exposing or leg covering.  Clothing is usually leg exposing.
Clothing can be arm exposing, only arm covering, or finger covering (this is the arm slot property).  Clothing is usually arm exposing.
Definition: a clothing (called C) is arm covering:
	if C is arm exposing, decide no;
	decide yes.
Clothing can be chestless, fully exposing, ridiculously low cut, very low cut, low cut, average cut, high cut, fully covering (this is the clothing-cleavage property).  Clothing is usually chestless.  [Chestless means it doesn't take up the chest slot.  Whereas fully exposing means that the breasts are fully exposed but the item still takes up the chest slot.  e.g. cupless bra.]
Definition: a clothing is breast exposing rather than breast covering if it is chestless.
Definition: a clothing is actually breast covering if it is breast covering and it is not fully exposing.
Clothing can be top-placed or top-displaced. Clothing is usually top-placed.[Displaced but for the chest.]
Clothing can be top-displacable, optional-top-displacable, or not-top-displacable. Clothing is usually not-top-displacable.[optional-top-displacable means it can be displaced, but it's not necessary.]
Definition: a clothing is not-top-displacable if it is fully exposing or it is chestless.
Clothing can be nipple covering or nipple exposing.  Clothing is usually nipple exposing.
Definition: a clothing is nipple exposing[ rather than nipple covering] if it is top-displaced.[This is separate as some clothing has holes specifically for the nipples.]
Clothing can be totally-exclusive, top-exclusive, bottom-exclusive, not-exclusive (this is the clothing-exclusivity property).  Clothing is usually not-exclusive. [Exclusive means nothing can go above or below it.]
Definition: a clothing is exclusive:
	if it is not-exclusive, decide no;
	decide yes.
Clothing can be ass plugging.  Clothing is usually not ass plugging.
Clothing can be vagina plugging.  Clothing is usually not vagina plugging.
Clothing has a number called plug size.  The plug size of clothing is usually 0.
Clothing can be swimwear.  Clothing is usually not swimwear. [Items flagged as swimwear help with activities in bodies of water (mostly escaping from monsters living there)]
Clothing can be purity.  Clothing is usually not purity. [Means they care about your virginity.]
magic-type is a kind of value.  The magic-types are blandness, dressup, milk production, absorption, temptation, suppression, bed wetting, confidence, endurance, dominance, constriction, speed, kicking, protection, posture training, expansion, refreshment, rejuvenation, possession, maturity, respiration, durability, and stumbling.  Clothing has a magic-type.  The magic-type of clothing is usually blandness.
Clothing can be normal, store, museum-store, stolen (this is the ownership property).  Clothing is usually normal.
Magic-ID is a kind of value. The magic-IDs are unidentified and identified. Clothing has a Magic-ID.  The Magic-ID of clothing is usually unidentified.
Clothing has a number called raw-magic-modifier.  The raw-magic-modifier of clothing is usually 0.
Clothing can be stuck.  Clothing is usually not stuck.
[!<YourselfIsClothingStuck>+

Is the player unable to move because some clothing is stuck?

+!]
Definition: yourself is clothing stuck:
	if there is worn stuck clothing, decide yes;
	decide no.
Clothing can be glued or unglued.  Clothing is usually unglued.
Clothing can be womanly or manly.  Clothing is usually womanly.  [Manly clothing is anything that is not specifically something only women should wear.  E.g. a T-shirt]
Clothing can be restart immune.  Clothing is usually not restart immune.  [This means it won't disappear or change when the map is reset.]
Clothing can be spikey.  A clothing is usually not spikey.
A clothing has a number called used condoms.  A clothing has a number called empty condoms.
A clothing can be unsoaked or soaked.  A clothing is usually unsoaked.  [Used to track where we've already spread liquid movements to, so that recursive functions don't become infinite.]
Definition: a clothing (called C) is fluid immune:[Is fluid unable to soak into or pass through C?]
	if C is latex or C is metal or C is glass or C is pvc or C is biological or C is plastic or C is leather, decide yes;
	decide no.
Definition: a clothing (called C) is fluid vulnerable:[Can C absorb fluid all the way through?]
	if C is fluid immune, decide no;
	if C is top only fluid immune, decide no;
	decide yes.
Definition: a clothing (called C) is top only fluid immune:[Is the top of C waterproof but the underside soakable?]
	decide no.
Definition: a clothing (called C) is somewhat fluid vulnerable:[Can C absorb fluid at least partially?]
	if C is fluid immune, decide no;
	decide yes.
Definition: a clothing (called C) is subduing:[Can C be held by monsters to fully control the player?]
	decide no.
[!<YourselfIsSubdued>+

Is the player unable to move because a monster is holding onto a subduing clothing?

+!]
Definition: yourself is subdued:
	repeat with C running through worn subduing clothing:
		repeat with M running through monsters covering C:
			if M is not in the location of the player, now M is not covering C; [As a safety feature we force monsters to let go of subduing clothing if they're no longer in the same room]
			otherwise decide yes;
	decide no.
[!<SubduedImmobilityRule>+

Allows us to flag the player as immobile if they are subdued.

+!]
This is the subdued immobility rule:
	if the player is subdued, rule fails.
The subdued immobility rule is listed in the immobility rules.
Definition: a clothing (called C) is nudism-enabling:
	decide no. [If the player is wearing this, they are wearing something that counts as clothing!]
Definition: a clothing (called C) is nudism-disabling:
	if C is nudism-enabling, decide no;
	decide yes.
Definition: an accessory (called C) is nudism-enabling:
	decide yes.
Definition: a bondage (called C) is nudism-enabling:
	decide yes.
Definition: an equippable (called C) is nudism-enabling:
	decide yes.
Definition: a bag of holding (called C) is nudism-enabling:
	decide yes.
Definition: yourself is clothed:
	if there is worn nudism-disabling clothing, decide yes;
	decide no.
Definition: yourself is naked:
	if the player is clothed, decide no;
	decide yes.
Definition: a clothing (called C) is leghole free: [Anything that must be pulled down the legs like jeans is NOT leghole free.]
	decide yes.

[!<ClothingIsBasicLoot>+

Is this something that should be able to appear as a generic item?

+!]
Definition: a clothing (called C) is basic loot:
	if C is diaper, decide no;
	if C is off-stage and C is plentiful, decide yes;
	decide no.


[!<ClothingIsDesirable>+

Does the wench want to steal it?

+!]
Definition: a clothing (called C) is desirable:
	if C is store, decide no;
	if C is diaper or C is cursed or C is ass plugging or C is vagina plugging, decide no;
	if C is not worn by the player and C is not held by the player, decide no;
	if C is worn and C is not currently visible, decide no;
	if C is knickers and C is not total protection, decide no;
	if C is dirty, decide no;
	decide yes.

Include Orifice Protection by Clothing.


Clothing Adjectives ends here.
