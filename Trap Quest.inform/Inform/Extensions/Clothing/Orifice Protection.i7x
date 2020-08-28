Orifice Protection by Clothing begins here.

[!<ClothingIsTotalProtection>+

Does this item cover the player's ass and crotch?

+!]
Definition: a clothing (called C) is total protection:
	if C is crotch-displaced, decide no;
	if C is crotch-intact or C is crotch-zipped or C is crotch-skirted:
		if C is crotch-normal, decide yes;
	decide no.
[!<ClothingIsPussyProtection>+

Does this item cover the player's crotch but not ass?

+!]
Definition: a clothing (called C) is pussy protection:
	if C is crotch-displaced, decide no;
	if C is crotch-intact or C is crotch-zipped or C is crotch-skirted:
		if C is crotch-assless, decide yes;
	decide no.
[!<ClothingIsNoProtection>+

Does this item cover neither the player's ass nor crotch?

+!]
Definition: a clothing is no protection:
	if it is not total protection and it is not pussy protection, decide yes;
	decide no.

[!<ClothingIsCrotchExposing>+

Does this item not use the crotch slot?

+!]
Definition: a clothing is crotch exposing rather than crotch covering:
	if it is no-crotch, decide yes;
	decide no.

[!<ClothingIsAssCovering>+

Is this item currently covering both the player's ass and crotch?
(We can deduce this because there's no items that protect the player's ass but don't protect the crotch)

+!]
Definition: a clothing is ass covering:
	if it is worn and it is total protection, decide yes;
	decide no.

[!<ClothingIsPotentiallyPussyCovering>+

Is this item able to cover the player's crotch?

+!]
Definition: a clothing is potentially pussy covering:
	if it is pussy protection or it is total protection, decide yes;
	decide no.

[!<ClothingIsPussyCovering>+

Is this item currently covering the player's crotch?

+!]
Definition: a clothing is pussy covering:
	if it is worn and it is potentially pussy covering, decide yes;
	decide no.

[!<YourselfIsAssProtected>+

Is there currently something covering the player's ass?

+!]
Definition: yourself is ass protected:
	if there is a top level ass protection clothing, decide yes;
	decide no.

[!<YourselfIsPussyProtected>+

Is there something currently covering the player's crotch?

+!]
Definition: yourself is pussy protected:
	if there is a top level protection clothing, decide yes;
	decide no.

[!<ClothingIsUrinationBlocking>+

Some things like chastity bondage can allow urination and ejaculation through freely.

+!]
Definition: a clothing is urination blocking: decide yes.

[!<ClothingIsPotentiallyPeeCovering>+

Is this item currently able to block urination?

+!]
Definition: a clothing is potentially pee covering:
	if it is potentially pussy covering and it is urination blocking, decide yes;
	decide no.

[!<ClothingIsPeeCovering>+

Is this item currently blocking urination?

+!]
Definition: a clothing is pee covering:
	if it is worn and it is potentially pee covering, decide yes;
	decide no.

[!<ClothingIsSoakablePeeCovering>+

Is this item currently blocking urination and absorbs liquid?

+!]
Definition: a clothing (called C) is soakable pee covering:
	if C is pee covering and C is fluid vulnerable and the total-soak of C < the soak-limit of C, decide yes;
	otherwise decide no.

[!<YourselfIsPeeProtected>+

Is there anything currently blocking urination?

+!]
Definition: yourself is pee protected:
	if there is pee covering clothing, decide yes;
	decide no.

[!<ClothingIsTopLevelBellyCover>+

Is this item the highest layered belly slot item?

+!]
Definition: a clothing (called C) is top level belly cover:
	if C is belly exposing or C is not worn, decide no;
	repeat with O running through worn belly covering clothing:
		if the mid-layer of O > the mid-layer of C, decide no;
	decide yes.

[!<ClothingIsTopLevelCrotchCover>+

Is this item the highest layered crotch slot item?

+!]
Definition: a clothing (called C) is top level crotch cover:
	if C is not crotch covering or C is not worn, decide no;
	repeat with O running through crotch covering clothing:
		if the bottom-layer of O > the bottom-layer of C, decide no;
	decide yes.

[!<ClothingIsTopLevelProtection>+

Is this item the highest layered crotch slot item that is blocking an orifice?

+!]
Definition: a clothing (called C) is top level protection:
	if C is not pussy covering, decide no;
	repeat with O running through pussy covering clothing:
		if the bottom-layer of O > the bottom-layer of C, decide no;
	decide yes.

[!<ClothingIsTopLevelAssProtection>+

Is this item the highest layered crotch slot item that is blocking asshole?

+!]
Definition: a clothing (called C) is top level ass protection:
	if C is not ass covering, decide no;
	repeat with O running through ass covering clothing:
		if the bottom-layer of O > the bottom-layer of C, decide no;
	decide yes.

[This cares about layers more than protection. A 'fully exposing' cupless bra could still be this.]
Definition: a clothing (called C) is top level breasts protection:
	if C is not worn or C is not breast covering or C is not top-placed, decide no;
	repeat with O running through breast covering top-placed clothing:
		if the top-layer of O > the top-layer of C, decide no;
	decide yes.

Definition: a clothing (called C) is titfuck protection: [This cares about whether it prevents titfucks.]
	if C is breast covering and C is top-placed and C is not optional-top-displacable and C is not fully exposing, decide yes;
	decide no.

Definition: a clothing (called C) is top level titfuck protection:
	if C is not worn or C is not titfuck protection, decide no;
	repeat with O running through worn breast covering top-placed clothing:
		if the top-layer of O > the top-layer of C and O is not optional-top-displacable and O is not fully exposing, decide no;
	decide yes.

[!<ClothingIsBottomLevelProtection>+

Is this item the lowest layered crotch slot item that is blocking an orifice?

+!]
Definition: a clothing (called C) is bottom level protection:
	if C is not pussy covering, decide no;
	repeat with O running through pussy covering clothing:
		if the bottom-layer of O < the bottom-layer of C, decide no;
	decide yes.

[!<ClothingIsBottomLevelPeeProtection>+

Is this item the lowest layered crotch slot item that is blocking an orifice that blocks liquid?

+!]
Definition: a clothing (called C) is bottom level pee protection:
	if C is not pee covering, decide no;
	repeat with O running through worn pee covering clothing:
		if the bottom-layer of O < the bottom-layer of C, decide no;
	decide yes.

[!<ClothingIsBottomLevelSoakablePeeProtection>+

Is this item the lowest layered crotch slot item that is blocking an orifice that blocks liquid and absorbs liquid?

+!]
Definition: a clothing (called C) is bottom level soakable pee protection:
	if C is not soakable pee covering, decide no;
	repeat with O running through worn soakable pee covering clothing:
		if the bottom-layer of O < the bottom-layer of C, decide no;
	decide yes.

[!<ClothingIsBottomLevelAssProtection>+

Is this item the lowest layered crotch slot item that is blocking asshole?

+!]
Definition: a clothing (called C) is bottom level ass protection:
	if C is not ass covering, decide no;
	repeat with O running through ass covering clothing:
		if the bottom-layer of O < the bottom-layer of C:
			if O is ass covering, decide no;
	decide yes.

[!<ThingIsPlugged>+

Here we check if the player is wearing an UNCURSED insertable. This is something that several monsters may want to just remove in order to use you.

+!]
Definition: a thing (called T) is plugged:
	if T is the player:
		if asshole is plugged or vagina is plugged, decide yes;
		decide no;
	if T is body part and T is actually occupied:
		let P be a random object filling T;
		if P is insertable:
			unless P is cursed, decide yes;
	decide no.

[!<ThingIsCursedPlugged>+

Here we check if the player is wearing a CURSED insertable. A few monsters may have the power to remove this, use the orifice, and then replace it. The code should try and make sure that the object is always replaced.

+!]
Definition: a thing (called T) is cursed plugged:
	if T is the player:
		if asshole is cursed plugged or vagina is cursed plugged, decide yes;
		decide no;
	if T is body part and T is actually occupied:
		let P be a random object filling T;
		if P is insertable:
			if P is cursed, decide yes;
	decide no.

[Sometimes we want to check if the player has things in all their holes. It may be just a case of waiting, or removing an object. We do that here.]
Definition: yourself is fully occupied:
	if the player is not possessing a vagina:
		if asshole is actually occupied, decide yes;
	otherwise:
		if asshole is actually occupied and vagina is actually occupied, decide yes;
	decide no.

Part - Defence

To decide what number is the defence of the player:
	decide on the vaginal defence of the player.

To decide what number is the anal defence of the player:
	let D be 0;
	increase D by (the total volume of hips / 2);
	repeat with K running through top level ass protection clothing worn by the player:
		let E be (the armour of K - the damage of K) - (the semen-soak of K / 3);
		if E > 0, increase D by E;
		increase D by the magic-modifier of K;
	decide on D.

To decide what number is the vaginal defence of the player:
	let D be 0;
	increase D by (the total volume of hips / 2);
	repeat with K running through top level protection clothing worn by the player:
		let E be (the armour of K - the damage of K);
		if E > 0, increase D by E;
		increase D by the magic-modifier of K;
	decide on D.

Orifice Protection ends here.
