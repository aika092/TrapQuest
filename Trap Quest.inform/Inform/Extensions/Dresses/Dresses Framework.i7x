Dresses Framework by Dresses begins here.

A dress is a kind of clothing.
Definition: a dress is same-type:
	if theme-share-target is dress, decide yes;
	decide no.
To decide which number is the knee-modifier of (C - a dress):
	if C is leg covering, decide on 1;
	decide on 0.
To decide which number is the default-soak-limit of (C - a dress):
	let X be 2;
	if C is breast covering:
		let B be 1;
		if C is fully covering:
			increase B by 6;
		otherwise if C is high cut:
			increase B by 5;
		otherwise if C is average cut:
			increase B by 4;
		otherwise if C is low cut:
			increase B by 3;
		otherwise if C is very low cut:
			increase B by 2;
		otherwise if C is ridiculously low cut:
			increase B by 1;
		if C is not potentially-top-layer-concealing:
			if C is potentially-partially-top-layer-concealing, now B is B / 2;
			otherwise now B is B / 3;
		if B < 1, now B is 1;
		increase X by B;
	if C is belly covering:
		let B be 4;
		if C is not potentially-mid-layer-concealing:
			if C is potentially-partially-mid-layer-concealing, now B is B / 2;
			otherwise now B is B / 3;
		if B < 1, now B is 1;
		increase X by B;
	if C is crotch covering:
		let B be 2 + the penis-capacity of C;
		if C is not potentially-bottom-layer-concealing:
			if C is potentially-partially-bottom-layer-concealing, now B is B / 2;
			otherwise now B is B / 3;
		if B < 1, now B is 1;
		increase X by B;
	if C is super-short:
		increase X by 3;
	otherwise if C is short:
		increase X by 5;
	otherwise if C is knee-length:
		increase X by 8;
	otherwise if C is hobble-skirted:
		increase X by 12;
	decide on X.

An underdress is a kind of dress.
Definition: an underdress is same-type:
	if theme-share-target is underdress, decide yes;
	decide no.
An overdress is a kind of dress.
Definition: an overdress is same-type:
	if theme-share-target is overdress and (it is unskirted or the number of worn skirts is 0), decide yes;
	decide no. [Unskirted items will skip skirted dresses if there is a worn skirt]

Definition: a dress is rippable:
	if it is crotch covering and it is total protection and it is not ass plugging and it is not vagina plugging and it is destructible, decide yes;
	decide no.

To decide which object is the potential-upgrade-target of (C - an overdress):
	[The template is slightly modified for overdresses. It must share a colour or theme.]
	now theme-share-target is C;
	let Z be nothing;
	let L1 be the list of off-stage same-type transformation-eligible fetish appropriate more-outrageous theme-sharing clothing; [Find all items that could be reasonable transformation targets.]
	if the number of entries in L1 > 0:
		let L2 be a list of clothing;
		now Z is entry 1 of L1; [If every item is transformation-theme-blocked, we still spit out an item so that the 'is upgradable' function works as intended.]
		repeat with D running through L1:
			now the upgrade-target of C is D;
			if C is not transformation-theme-blocked, add D to L2; [Disregard ones that the item will refuse to transform into.]
		sort L2 in random order;[So we don't always pick the object with lowest ID when they have the same eligibility]
		let O be 100;
		repeat with D running through L2: [Find the least outrageous of the eligible transformation items. Hopefully makes them go in a nice sequence.]
			let IO be the initial outrage of D;
			if IO < O:
				now Z is D;
				now O is IO;
	decide on Z.

To set up influence of (C - a dress):
	set up random-based influence of C.

To say ShortDesc of (C - a dress):
	say "dress".

Part 1 - Underdresses

An underdress is usually knee-length. An underdress is usually average cut. An underdress is usually normally-nipple-covering. An underdress is usually belly covering. The armour of an underdress is usually 4. An underdress is usually top-displacable.

Definition: an underdress is displacable: decide yes.

Chapter - Wearability

underdress wearability rules is a rulebook. The wearability rules of underdress is usually underdress wearability rules.
underdress removability rules is a rulebook. The removability rules of underdress is usually underdress removability rules.

This is the underdress already worn rule:
	repeat with O running through worn underdresses:
		if summoning is 0 and autowear is false, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [ShortDesc of O][end if]!";
		rule fails.
The underdress already worn rule is listed in the underdress wearability rules.

This is the underdress necklace clash rule:
	if wearing-target is neck covering:
		repeat with O running through worn neck covering clothing:
			if summoning is 0 and autowear is false, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [ShortDesc of O][end if]!";
			rule fails.
The underdress necklace clash rule is listed in the underdress wearability rules.

This is the trousers underdress exclusive clash rule:
	repeat with C running through worn hobble-skirted underdresses:
		if summoning is 0 and autowear is false, say "You can't wear that under your [ShortDesc of C] because the [ShortDesc of C][']s skirt is too long and tight!";
		rule fails.
The trousers underdress exclusive clash rule is listed in the trousers wearability rules.

This is the skirt underdress clash rule:
	if wearing-target is skirted:
		repeat with C running through worn underdress:
			if C is skirted or C is crotch covering:
				if summoning is 0 and autowear is false, say "[if C is skirted]You can't wear that over[otherwise]You would feel a bit stupid wearing that at the same time as[end if] your [printed name of C]!";
				rule fails.
The skirt underdress clash rule is listed in the skirt wearability rules.

This is the underdress removed over head rule:
	if wearing-target is not crotch-pullup and summoning is 0:
		repeat with O running through embodied things penetrating face:
			unless O is wearing-target:
				if autoremove is false, say "You can't remove that while the [ShortDesc of O] is in your mouth!";
				rule fails.
The underdress removed over head rule is listed in the underdress removability rules.

Part 2 - Overdresses

An overdress is usually knee-length. An overdress is usually average cut. An overdress is usually normally-nipple-covering. An overdress is usually belly covering. An overdress is usually top-displacable.

Definition: an overdress is displacable:
	if it is short or longer, decide yes;
	if it is crotch-intact and it is not rigid and it is not biological, decide yes; [These materials tend to be too tight to displace]
	decide no.

To restock (C - an underdress):
	let B be a random basic loot underdress;
	if B is underdress:
		repeat with L running through Standard Item Pen:
			if L is underdress, remove L from Standard Item Pen;
		add B to Standard Item Pen.

To restock (C - an overdress):
	let B be a random basic loot overdress;
	if B is overdress:
		repeat with L running through Standard Item Pen:
			if L is overdress, remove L from Standard Item Pen;
		add B to Standard Item Pen.

This is the setup starting overdresses rule:
	let C be a random overdress;
	repeat with N running from 1 to 2:
		restock C.
The setup starting overdresses rule is listed in the setup starting items rules.

Report wearing overdress:
	if the noun is unsure and the noun is cursed, say "You finish wearing the [ShortDesc of the noun] and then you realise that the [clothing-material of the noun] is clinging extremely tightly to your skin. You try to pull it off but can't. It's cursed!";

To say ShortDesc of (O - an overdress):
	say "[printed name of O]".

To decide which object is the unique-upgrade-target of (C - an overdress):
	if there is a worn hood and C is crotch covering and the urine-soak of C > 0 and WC catsuit is off-stage:
		decide on WC catsuit;
	otherwise if the player is diaper focused and the class of the player is adventurer and a random number between 1 and 3 is 1:
		decide on a random off-stage onesie;
	decide on nothing.

Chapter - Wearability

overdress wearability rules is a rulebook. The wearability rules of overdress is usually overdress wearability rules.
overdress removability rules is a rulebook. The removability rules of overdress is usually overdress removability rules.

This is the overdress already worn rule:
	repeat with O running through worn overdresses:
		if summoning is 0 and autowear is false, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [ShortDesc of O][end if]!";
		rule fails.
The overdress already worn rule is listed in the overdress wearability rules.

This is the overdress necklace clash rule:
	if wearing-target is neck covering:
		repeat with O running through worn neck covering clothing:
			if summoning is 0 and autowear is false, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [ShortDesc of O][end if]!";
			rule fails.
The overdress necklace clash rule is listed in the overdress wearability rules.

This is the overdress removed over head rule:
	if wearing-target is not crotch-pullup and summoning is 0:
		repeat with O running through embodied things penetrating face:
			unless O is wearing-target:
				if autoremove is false, say "You can't remove that while the [ShortDesc of O] is in your mouth!";
				rule fails.
The overdress removed over head rule is listed in the overdress removability rules.

This is the skirt overdress clash rule:
	if wearing-target is skirted:
		repeat with C running through worn overdress:
			if C is skirted or C is crotch covering:
				if summoning is 0 and autowear is false, say "[if C is skirted]You can't wear that over[otherwise]You would feel a bit stupid wearing that at the same time as[end if] your [ShortDesc of C]!";
				rule fails.
The skirt overdress clash rule is listed in the skirt wearability rules.

Dresses Framework ends here.
