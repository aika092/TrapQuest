All Stockings by Stockings begins here.




A stockings is a kind of clothing. Understand "pair", "pair of" as stockings. The printed name of stockings is usually "[clothing-title-before]pair of [clothing-material of the item described] stockings[clothing-title-after]". A stockings is usually sheer. The soak-limit of stockings is usually 10.

Definition: a stockings is same-type if theme-share-target is stockings.


Report examining stockings:
	if the number of worn stockings is 0 and newbie tips is 1, say "Stockings and socks make wearing heels more comfortable, and therefore slightly improve your ability to walk in them[unless the noun is socks]. Stockings also improve your knee damage[end if].".

To decide which figure-name is target-stockings-figure:
	repeat with S running through worn stockings:
		decide on the clothing-image of S;
	decide on figure of cotton stockings.

To decide which number is the hindrance-modifier of (S - a stockings):
	let X be -1;
	decrease X by the magic-modifier of S;
	decide on X.

To uniquely set up (H - a stockings):
	let R be a random number between 1 and 7;
	if R is 1, now the magic-type of H is confidence;
	if R is 2, now the magic-type of H is endurance;
	if R is 3, now the magic-type of H is posture training;
	if R is 4, now the magic-type of H is stumbling;
	if R is 3 or R is 4, curse H.

To set up magic state of (C - a stockings): [Less variance than most items]
	if C is discovered varied:
		now the raw-magic-modifier of C is 0;
		now C is bland;
		increase the raw-magic-modifier of C by a random number between -1 and 1;
		if a random number between 1 and 3 is 1, increase the raw-magic-modifier of C by a random number between -1 and 1;
		set up BUC of C.

To decide which number is the original price of (C - a stockings):
	if C is mesh, decide on 2;
	if C is latex, decide on 1;
	decide on 3;

To decide which number is the knee-modifier of (S - a wearthing):
	decide on 0.

To decide which number is the knee-modifier of (S - a stockings):
	let A be the magic-modifier of S;
	decide on A.

To restock (C - a stockings):
	let B be a random basic loot stockings;
	if B is stockings, now B is in Standard Item Pen.

To set up influence of (C - a stockings):
	set up random-based influence of C.

To say ShortDesc of (C - a stockings):
	say "pair of stockings".

To say ShortestDesc of (C - a stockings):
	say "pair of stockings".

This is the setup starting stockings rule:
	let C be a random stockings;
	restock C.
The setup starting stockings rule is listed in the setup starting items rules.

To decide which object is the coverer of (C - a stockings):
	repeat with R running through worn leg covering crotch-in-place clothing:
		if R is trousers or R is overdress, decide on R;
	decide on nothing.

To decide which object is the concealer of (C - a stockings):
	repeat with R running through worn actually dense crotch-in-place leg covering clothing:
		if R is trousers or R is overdress, decide on R;
	decide on nothing.

This is the remove inappropriate stockings rule:
	repeat with B running through latex stockings:
		now B is in Holding Pen;
	repeat with B running through mesh stockings:
		now B is in Holding Pen.
The remove inappropriate stockings rule is listed in the diaper quest fix rules.

Definition: a stockings is ingredient: decide yes.

To decide which number is the crafting key of (C - a stockings):
	decide on 53. [TODO socks are separate ingredient]

Part - Socks

A socks is a kind of stockings. The printed name of socks is usually "[clothing-title-before]pair of [clothing-material of the item described] socks[clothing-title-after]". A socks is usually dense. A socks is usually unique.

A diaper quest fix rule:
	repeat with C running through socks:
		now C is transformation-rare.

To decide which number is the knee-modifier of (S - a socks):
	decide on 0.

To say ShortDesc of (C - a socks):
	say "pair of knee high socks".

To say ShortestDesc of (C - a stockings):
	say "pair of socks".

Definition: a socks is baby themed if the initial cringe of it > 0.


Part - Wearability

stockings wearability rules is a rulebook. The wearability rules of stockings is usually stockings wearability rules.

This is the stockings already worn rule:
	repeat with O running through worn stockings:
		if summoning is 0 and autowear is false, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [printed name of O][end if]!";
		rule fails.
The stockings already worn rule is listed in the stockings wearability rules.

This is the stockings leg covering clash rule:
	if wearing-target is exclusive leg covering clothing:
		repeat with O running through worn stockings:
			if summoning is 0 and autowear is false, say "You can't wear that because it's exclusive, and you're already wearing the [O]!";
			rule fails.
The stockings leg covering clash rule is listed in the global wearability rules.

This is the shoes stockings clash rule:
	if wearing-target is stockings and summoning is 0:
		repeat with O running through worn shoes:
			if autowear is false, say "You can't wear that over the [O]!";
			rule fails.
The shoes stockings clash rule is listed in the stockings wearability rules.

This is the leg covering stockings clash rule:
	if wearing-target is stockings:
		repeat with O running through worn leg covering clothing:
			if summoning is 0 and autowear is false, say "You can't wear that over the [O]!";
			rule fails.
The leg covering stockings clash rule is listed in the stockings wearability rules.


stockings removability rules is a rulebook. The removability rules of stockings is usually stockings removability rules.

This is the cursed suspenders prevents removal of stockings rule:
	repeat with C running through worn cursed suspenders:
		if summoning is 0:
			if autoremove is false, say "Your [C] are somehow preventing you!";
			rule fails.
The cursed suspenders prevents removal of stockings rule is listed in the stockings removability rules.

This is the worn shoes prevents removal of stockings rule:
	repeat with C running through worn shoes:
		if summoning is 0 and autoremove is false, say "You would need to remove your [C] first.";
		if autolayerremove is false, rule fails.
The worn shoes prevents removal of stockings rule is listed in the stockings removability rules.

[This is the worn leg covering clothing prevents removal of stockings rule:
	repeat with C running through worn leg covering clothing:
		unless C is wearing-target:
			if summoning is 0 and autoremove is false, say "You would need to remove your [C] first.";
			if autolayerremove is false, rule fails.
The worn leg covering clothing prevents removal of stockings rule is listed in the stockings removability rules.]




bunny socks is a socks. The text-shortcut of bunny socks is "bnys".

Figure of bunny socks is the file "Items/Clothes/Lower/Legs/socks3.png".

To decide which figure-name is clothing-image of (C - bunny socks):
	decide on figure of bunny socks.

To say ClothingDesc of (C - bunny socks):
	say "These pink knee-high socks are opaque and snug. They have bunny faces at the top, making them look extremely adorable.".

To say ShortDesc of (C - bunny socks):
	say "pair of adorable bunny socks".

Definition: bunny socks is pink themed: decide yes.

To decide which number is the initial cringe of (C - bunny socks):
	decide on 5.

Definition: bunny socks is transformation-protected if the class of the player is bunny.


cafe maid stockings is a stockings. cafe maid stockings is cotton. cafe maid stockings is sheer-when-wet. The text-shortcut of cafe maid stockings is "cms".

The printed name of cafe maid stockings is "[clothing-title-before]cafe maid stockings[clothing-title-after]".

Figure of cafe maid stockings is the file "Items/Clothes/Lower/Legs/cafestockings1.png".

To decide which figure-name is clothing-image of (C - a cafe maid stockings):
	decide on figure of cafe maid stockings.

To say ClothingDesc of (C - a cafe maid stockings):
	say "These pink cotton thigh high stockings have little ribbons tied into bows at the top. They undoubtedly are designed to go with a cafe maid cosplay outfit.".

To say ShortDesc of (C - a cafe maid stockings):
	say "pair of cafe maid stockings".

To decide which number is the initial outrage of (C - a cafe maid stockings):
	if diaper quest is 1, decide on 0;
	decide on 2.

To decide which number is the initial cringe of (C - a cafe maid stockings):
	decide on 4.

Definition: cafe maid stockings is pink themed: decide yes.



A deer socks is a kind of socks. There is 1 deer socks. The text-shortcut of deer socks is "dso".

Figure of deer socks is the file "Items/Clothes/Lower/Legs/socks1.png".

To decide which figure-name is clothing-image of (C - a deer socks):
	decide on figure of deer socks.

To say ClothingDesc of (C - a deer socks):
	say "These brown knee-high socks are opaque and snug. They have sleeping deer faces at the top and antlers that poke out over [if C is worn]your[otherwise]the wearer's[end if] knees, making them look extremely adorable.".

To say ShortDesc of (C - a deer socks):
	say "pair of deer socks".
To say MediumDesc of (C - a deer socks):
	say "pair of adorable deer socks".

To decide which number is the initial outrage of (C - a deer socks):
	if diaper quest is 1, decide on 0;
	decide on 2.

To decide which number is the initial cringe of (C - a deer socks):
	decide on 4.


Definition: a deer socks is brown themed: decide yes.
Definition: a deer socks is christmas themed: decide yes.




A frilly green socks is a kind of socks. There is 1 frilly green socks. The text-shortcut of frilly green socks is "fgs".

Figure of frilly green socks is the file "Items/Clothes/Lower/Legs/socks2.png".

To decide which figure-name is clothing-image of (C - a frilly green socks):
	decide on figure of frilly green socks.

To say ClothingDesc of (C - a frilly green socks):
	say "These Christmas themed green, red and white striped knee-high socks are opaque and snug. They have frills above the ankles and a red deer motif near the knees giving them a cute and playful feel.".

To say ShortDesc of (C - a frilly green socks):
	say "pair of green socks".
To say MediumDesc of (C - a frilly green socks):
	say "pair of frilly green Christmas socks".

To decide which number is the initial outrage of (C - a frilly green socks):
	if diaper quest is 1, decide on 0;
	decide on 2.

To decide which number is the initial cringe of (C - a frilly green socks):
	decide on 4.


Definition: a frilly green socks is transformation-protected if there is a worn christmas headgear.
Definition: a frilly green socks is green themed: decide yes.
Definition: a frilly green socks is christmas themed: decide yes.



A frilly stockings is a kind of stockings. There is 1 frilly stockings. A frilly stockings is usually cotton. A frilly stockings is usually sheer-when-wet. The text-shortcut of frilly stockings is "fst".

Figure of cotton stockings is the file "Items/Clothes/Lower/Legs/cottonstockings1.png".

To decide which figure-name is clothing-image of (C - a frilly stockings):
	decide on figure of cotton stockings.

To say ClothingDesc of (C - a frilly stockings):
	say "These white cotton thigh high stockings are [if C is dry]opaque and [end if]snug[if diaper quest is 0], but still pretty sexy[end if].".

To say ShortDesc of (C - a frilly stockings):
	say "pair of cotton stockings".

To decide which number is the initial outrage of (C - a frilly stockings):
	if diaper quest is 1, decide on 0;
	decide on 2.

To decide which number is the initial cringe of (C - a frilly stockings):
	decide on 4.

To decide which object is the unique-upgrade-target of (C - a frilly stockings):
	if diaper quest is 1 and bow-stockings is off-stage, decide on bow-stockings.


Definition: a frilly stockings is white themed: decide yes.

bow-stockings is a stockings. bow-stockings is cotton. bow-stockings is transformation-rare. bow-stockings is sheer-when-wet. The text-shortcut of bow-stockings is "bpst". Understand "bow", "patterned", "stockings" as bow-stockings.

The printed name of bow-stockings is "[clothing-title-before]pair of cotton bow patterned stockings[clothing-title-after]".

Figure of bow stockings is the file "Items/Clothes/Lower/Legs/cottonstockings2.png".

To decide which figure-name is clothing-image of (C - bow-stockings):
	decide on figure of bow stockings.

To say ClothingDesc of (C - bow-stockings):
	say "These white cotton thigh high stockings have a repeating pattern of pink bows down their entire length.".

To say ShortDesc of (C - bow-stockings):
	say "pair of cotton bow stockings".

To decide which number is the initial outrage of (C - bow-stockings):
	if diaper quest is 1, decide on 0;
	decide on 2.

To decide which number is the initial cringe of (C - bow-stockings):
	decide on 5.


Definition: bow-stockings is white themed: decide yes.


A black rubber stockings is a kind of stockings. There is 1 transformation-rare black rubber stockings. A black rubber stockings is usually latex. A black rubber stockings is usually dense. The text-shortcut of black rubber stockings is "bls". The printed name of black rubber stockings is usually "[clothing-title-before]pair of black [clothing-material of the item described] stockings[clothing-title-after]".
A black-and-orange rubber stockings is a kind of stockings. There is 1 transformation-rare black-and-orange rubber stockings. A black-and-orange rubber stockings is usually latex. A black-and-orange rubber stockings is usually dense. The text-shortcut of black-and-orange rubber stockings is "bols". The printed name of black-and-orange rubber stockings is usually "[clothing-title-before]pair of black and orange [clothing-material of the item described] stockings[clothing-title-after]".
A red rubber stockings is a kind of stockings. There is 1 red transformation-rare rubber stockings. A red rubber stockings is usually latex. A red rubber stockings is usually dense. The text-shortcut of red rubber stockings is "rls". The printed name of red rubber stockings is usually "[clothing-title-before]pair of red [clothing-material of the item described] stockings[clothing-title-after]".


To say ShortDesc of (C - a red rubber stockings):
	say "latex stockings".
To say ShortDesc of (C - a black rubber stockings):
	say "latex stockings".
To say ShortDesc of (C - a black-and-orange rubber stockings):
	say "latex stockings".

To say MediumDesc of (C - a red rubber stockings):
	say "pair of red latex stockings".
To say MediumDesc of (C - a black rubber stockings):
	say "pair of black latex stockings".
To say MediumDesc of (C - a black-and-orange rubber stockings):
	say "pair of black and orange latex stockings".

To say ClothingDesc of (C - a red rubber stockings):
	say "These red latex thigh high stockings are exclusively fetishwear.".

To decide which figure-name is clothing-image of (C - a black rubber stockings):
	decide on figure of rubber stockings A.
To decide which figure-name is clothing-image of (C - a red rubber stockings):
	decide on figure of rubber stockings B.
To decide which figure-name is clothing-image of (C - a black-and-orange rubber stockings):
	decide on figure of rubber stockings C.

To say ClothingDesc of (C - a black rubber stockings):
	say "These black latex thigh high stockings are extremely provocative and eye catching.".

To say ClothingDesc of (C - a black-and-orange rubber stockings):
	say "These black and orange striped latex thigh high stockings are very shiny.".

Definition: a black rubber stockings is black themed: decide yes.
Definition: a black-and-orange rubber stockings is black themed: decide yes.
Definition: a black-and-orange rubber stockings is orange themed: decide yes.
Definition: a red rubber stockings is red themed: decide yes.

Definition: a stockings is end of transformation chain if it is latex.

Figure of rubber stockings A is the file "Items/Clothes/Lower/Legs/rubberstockings1.png".
Figure of rubber stockings B is the file "Items/Clothes/Lower/Legs/rubberstockings2.png".
Figure of rubber stockings C is the file "Items/Clothes/Lower/Legs/rubberstockings3.png".

To decide which number is the initial outrage of (C - a latex stockings):
	decide on 4.
To decide which number is the initial cringe of (C - a latex stockings):
	decide on 2.


A magical stockings is a kind of stockings. There is 1 magical stockings. A magical stockings is usually cotton. The text-shortcut of magical stockings is "mst". A magical stockings is usually unique. A magical stockings is usually dexterity-influencing. The printed name of magical stockings is "[clothing-title-before]magical stockings[clothing-title-after]".

Figure of magical stockings is the file "Items/Clothes/Lower/Legs/magicalstockings1.png".

To decide which figure-name is the clothing-image of (C - a magical stockings):
	decide on figure of magical stockings.

To say ClothingDesc of (C - a magical stockings):
	say "These pink cotton thigh high stockings are opaque and snug, but still pretty sexy. You feel positively magical in them.".

To say ShortDesc of (C - a magical stockings):
	say "pair of magical stockings".

To decide which number is the initial outrage of (C - a magical stockings):
	decide on 1.

Definition: a magical stockings is transformation-protected: decide yes.

To decide which number is the dexterity-influence of (S - a magical stockings):
	let M be the magic power of the player;
	if M > 5, decide on 4;
	if M > 3, decide on 2;
	if M > 0, decide on 1;
	decide on 0.

Definition: a magical stockings is magic themed: decide yes.
Definition: a magical stockings is pink themed: decide yes.


A heart stockings is a kind of stockings. There is 1 transformation-rare heart stockings. A heart stockings is usually mesh. The text-shortcut of heart stockings is "hbs". The printed name of heart stockings is usually "[clothing-title-before]pair of heart bow [clothing-material of the item described] stockings[clothing-title-after]". Understand "bow" as heart stockings.
A fishnet stockings is a kind of stockings. There is 1 transformation-rare fishnet stockings. A fishnet stockings is usually mesh. The text-shortcut of fishnet stockings is "fs". The printed name of fishnet stockings is usually "[clothing-title-before]pair of fishnet stockings[clothing-title-after]". Understand "fish", "net" as fishnet stockings.

To decide which figure-name is clothing-image of (C - a fishnet stockings):
	decide on figure of mesh stockings B.

To say ClothingDesc of (C - a fishnet stockings):
	say "These black fishnet thigh high stockings have smallish gaps in between the fabric showing moderate amounts of skin.".

To say ShortDesc of (C - a fishnet stockings):
	say "pair of fishnet stockings".
To say ShortDesc of (C - a heart stockings):
	say "pair of fishnet stockings".

To decide which figure-name is clothing-image of (C - a heart stockings):
	decide on figure of mesh stockings A.

To say ClothingDesc of (C - a heart stockings):
	say "These black fishnet thigh high stockings have large gaps in between the fabric showing lots of skin, and a black bow with a red heart decorating the top of each.".

Definition: a heart stockings is heart themed: decide yes.
Definition: a heart stockings is black themed: decide yes.
Definition: a heart stockings is gem themed: decide yes.
Definition: a heart stockings is bow themed: decide yes.
Definition: a fishnet stockings is black themed: decide yes.


Figure of mesh stockings A is the file "Items/Clothes/Lower/Legs/meshstockings1.png".
Figure of mesh stockings B is the file "Items/Clothes/Lower/Legs/meshstockings2.png".

To decide which number is the initial outrage of (C - a mesh stockings):
	decide on 3.


A suspender stockings is a kind of stockings. There is 1 suspender stockings. A suspender stockings is usually nylon. The text-shortcut of suspender stockings is "lns". The printed name of suspender stockings is usually "[clothing-title-before]pair of laced [clothing-material of the item described] stockings[clothing-title-after]". Understand "laced" as suspender stockings.
A lacy stockings is a kind of stockings. There is 1 lacy stockings. A lacy stockings is usually nylon. The text-shortcut of lacy stockings is "nst". The printed name of lacy stockings is usually "[clothing-title-before]pair of lacy [clothing-material of the item described] stockings[clothing-title-after]".

To decide which figure-name is clothing-image of (C - a lacy stockings):
	decide on figure of nylon stockings A.

Definition: a lacy stockings is brown themed: decide yes.

To say ClothingDesc of (C - a lacy stockings):
	say "These beige nylon thigh high stockings are moderately sheer.".

To decide which figure-name is clothing-image of (C - a suspender stockings):
	decide on figure of nylon stockings B.

Definition: a suspender stockings is white themed: decide yes.

To say ClothingDesc of (C - a suspender stockings):
	say "These white nylon thigh high stockings are extremely sheer. If it wasn't for the lace at the top, it would be difficult to tell that you were wearing them at all.".

To say ShortDesc of (C - a lacy stockings):
	say "pair of nylon stockings".
To say ShortDesc of (C - a suspender stockings):
	say "pair of nylon stockings".

Figure of nylon stockings A is the file "Items/Clothes/Lower/Legs/nylonstockings1.png".
Figure of nylon stockings B is the file "Items/Clothes/Lower/Legs/nylonstockings2.png".

To decide which number is the initial outrage of (C - a nylon stockings):
	decide on 1.

Definition: a suspender stockings is sissifying: decide yes.

Definition: a lacy stockings is sissifying: decide yes.



A black-and-yellow striped stockings is a kind of stockings. There is 1 black-and-yellow striped stockings. A black-and-yellow striped stockings is unique. A black-and-yellow striped stockings is usually biological. A black-and-yellow striped stockings is usually dense. The printed name of black-and-yellow striped stockings is "[clothing-title-before]black and yellow striped stockings[clothing-title-after]". The text-shortcut of black-and-yellow striped stockings is "bys". Understand "black", "black and yellow", "yellow" as black-and-yellow striped stockings.

Definition: a black-and-yellow striped stockings is yellow themed: decide yes.
Definition: a black-and-yellow striped stockings is black themed: decide yes.

To decide which figure-name is clothing-image of (C - a black-and-yellow striped stockings):
	decide on figure of black-and-yellow striped stockings.

Figure of black-and-yellow striped stockings is the file "Items/Clothes/Lower/Legs/stripedstockings1.png".

To say ClothingDesc of (C - a black-and-yellow striped stockings):
	say "Fuzzy black and yellow stockings[if the class of the player is broodmother]. They feel like they[']ve become somewhat hard, and their tops fade into your skin[end if].".

To say ShortDesc of (C - a black-and-yellow striped stockings):
	say "pair of striped stockings".

Definition: a black-and-yellow striped stockings is transformation-protected if the class of the player is broodmother.


A red-and-white striped stockings is a kind of stockings. There is 1 red-and-white striped stockings. A red-and-white striped stockings is usually biological. A red-and-white striped stockings is usually dense. The printed name of red-and-white striped stockings is "[clothing-title-before]red and white striped stockings[clothing-title-after]". The text-shortcut of red-and-white striped stockings is "rws". Understand "red", "red and white", "white" as red-and-white striped stockings.

To decide which figure-name is clothing-image of (C - a red-and-white striped stockings):
	decide on figure of red-and-white striped stockings.

Figure of red-and-white striped stockings is the file "Items/Clothes/Lower/Legs/stripedstockings2.png".

To say ClothingDesc of (C - a red-and-white striped stockings):
	say "A pair of [if christmas content > 0]festive [end if]red and white striped thigh-high stockings.".

To say ShortDesc of (C - a red-and-white striped stockings):
	say "pair of striped stockings".

Definition: a red-and-white striped stockings is transformation-protected if there is a worn christmas headgear.
Definition: a red-and-white striped stockings is red themed: decide yes.
Definition: a red-and-white striped stockings is white themed: decide yes.
Definition: a red-and-white striped stockings is christmas themed: decide yes.



A woven stockings is a kind of stockings. There is 1 transformation-rare woven stockings. A woven stockings is usually wool. A woven stockings is usually dense. The text-shortcut of woven stockings is "wlst".

Figure of wool stockings is the file "Items/Clothes/Lower/Legs/woolstockings1.png".

To decide which figure-name is clothing-image of (C - a woven stockings):
	decide on figure of wool stockings.

To say ClothingDesc of (C - a woven stockings):
	say "These pink woollen thigh high stockings are mostly opaque and snug, the knitted pattern and bows at the top make these even more girly than thigh highs in general.".

To say ShortDesc of (C - a woven stockings):
	say "pair of pink wool stockings".

To decide which number is the initial outrage of (C - a woven stockings):
	if diaper quest is 1, decide on 0;
	decide on 3.

To decide which number is the initial cringe of (C - a woven stockings):
	decide on 5.

Definition: a woven stockings is baby themed: decide yes.
Definition: a woven stockings is sissifying: decide yes.
Definition: a woven stockings is bow themed: decide yes.
Definition: a woven stockings is pink themed: decide yes.

To decide which object is the unique-upgrade-target of (C - a woven stockings):
	if diaper lover > 0 and the number of worn trousers is 0, decide on a random off-stage teddy bear pantyhose.



tongue-stockings is a stockings. tongue-stockings is unique. tongue-stockings is biological. tongue-stockings is dense. The printed name of tongue-stockings is "[clothing-title-before]tongue stockings[clothing-title-after]". The text-shortcut of tongue-stockings is "tgsk". Understand "tongue", "stockings" as tongue-stockings.

Figure of white tongue stockings is the file "Items/Clothes/Lower/Legs/tonguestockings1a.png".
Figure of tonguing white tongue stockings is the file "Items/Clothes/Lower/Legs/tonguestockings1b.png".
Figure of black tongue stockings is the file "Items/Clothes/Lower/Legs/tonguestockings2a.png".
Figure of tonguing black tongue stockings is the file "Items/Clothes/Lower/Legs/tonguestockings2b.png".

To decide which figure-name is the clothing-image of (C - tongue-stockings):
	if tonguesBlack is true:
		if C is tonguing, decide on figure of tonguing black tongue stockings;
		decide on figure of black tongue stockings;
	otherwise:
		if C is tonguing, decide on figure of tonguing white tongue stockings;
		decide on figure of white tongue stockings.

To say ClothingDesc of (C - tongue-stockings):
	say "A pair of [tonguesColour] thigh-high stockings with tongues for laces. [TongueStatus of C]".

To say ShortDesc of (C - tongue-stockings):
	say "pair of tongued stockings".

Definition: tongue-stockings is demonic: decide yes.
Definition: tongue-stockings is tongued: decide yes.
Definition: tongue-stockings is transformation-protected: decide yes.
Definition: tongue-stockings is white themed if tonguesBlack is false.
Definition: tongue-stockings is black themed if tonguesBlack is true.

To decide which number is the initial outrage of (C - tongue-stockings):
	if C is tonguing, decide on 14;
	decide on 4.

To decide which object is the unique-upgrade-target of (C - a stockings):
	if there is a worn demonic wearthing and tongue-stockings is off-stage, decide on tongue-stockings;
	decide on nothing.


All Stockings ends here.
