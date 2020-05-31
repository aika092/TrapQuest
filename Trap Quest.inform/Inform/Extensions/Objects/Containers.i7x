Containers by Objects begins here.

[!<Container>@<IsTrapped>+

REQUIRES COMMENTING

+@!]
A container can be trappable.

[!<Container>@<prevSearch:Integer>*

REQUIRES COMMENTING

*@!]
A container has a number called prevsearch. The prevsearch of a container is usually 0.

[!<Container>@<isEmptied:Boolean>*

REQUIRES COMMENTING

*@!]
Containers can be emptied. A container is usually not emptied.

[!<AContainerIsTrapped>+

REQUIRES COMMENTING

+!]
Definition: a container (called C) is trapped rather than untrapped:
	if the trigger-target of C is a trap, decide yes;
	decide no.

Definition: A container is immune to change if it is in the location of the player.

To decide which object is the trigger-target of (C - a container):
	repeat with T running through click traps in the location of C:
		if the click-trigger of T is C, decide on T;
	decide on nothing.

[!<LargeSack>@

REQUIRES COMMENTING

@inherits <Container>

@!]
A large sack is a kind of container. A large sack is openable. A large sack is closed. A large sack is not portable. The printed name of a large sack is "[TQlink of item described][if the class of the player is santa's little helper]stocking[otherwise]large sack[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of large sack is "sac". 25 trappable large sacks are in Holding Pen. Understand "stocking" as large sack.

Figure of sack is the file "Env/Dungeon/sack1.jpg".
Figure of giant stocking is the file "Env/Dungeon/giantstocking1.png".

To decide which figure-name is the examine-image of (C - a large sack):
	if the class of the player is santa's little helper, decide on figure of giant stocking;
	decide on figure of sack.

To say ExamineDesc of (C - a large sack):
	say "[if the class of the player is santa's little helper]A giant stocking, which probably contains a lovely present.[otherwise]A large brown cotton sack lying against one wall.[end if]".

To say ShortDesc of (C - a large sack):
	say "sack".

[!<WoodenCrate>@

REQUIRES COMMENTING

@inherits <Container>

@!]
A wooden crate is a kind of container. A wooden crate is openable. A wooden crate is closed. A wooden crate is not portable. The printed name of a wooden crate is "[TQlink of item described][if the class of the player is santa's little helper]giant present[otherwise]wooden crate[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of wooden crate is "wcr". 25 trappable wooden crates are in Holding Pen. Understand "giant", "present" as wooden crate.

Figure of wooden crate is the file "Env/Dungeon/crate2.jpg".
Figure of giant present is the file "Env/Dungeon/giantpresent1.png".

To decide which figure-name is the examine-image of (C - a wooden crate):
	if the class of the player is santa's little helper, decide on figure of giant present;
	decide on figure of wooden crate.

To say ExamineDesc of (C - a wooden crate):
	say "[if the class of the player is santa's little helper]A large box that has been fashioned in the style of a Christmas present.[otherwise]A large wooden crate that looks like it has been there for a long time.[end if]".

To say ShortDesc of (C - a wooden crate):
	say "crate".

[!<MetalCrate>@

REQUIRES COMMENTING

@inherits <Container>

@!]
A metal crate is a kind of container. A metal crate is openable. A metal crate is closed. A metal crate is not portable. The printed name of a metal crate is "[TQlink of item described][if the class of the player is santa's little helper]giant toybox[otherwise]metal crate[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of metal crate is "mcr".
25 trappable metal crates are in Holding Pen. Understand "giant", "toy", "box", "toybox" as metal crate.

To say ShortDesc of (C - a metal crate):
	say "crate".

Figure of metal crate is the file "Env/Dungeon/crate1.jpg".
Figure of toy box is the file "Env/Dungeon/toybox1.png".

To decide which figure-name is the examine-image of (C - a metal crate):
	if the class of the player is santa's little helper, decide on figure of toy box;
	decide on figure of metal crate.

To say ExamineDesc of (C - a metal crate):
	say "[if the class of the player is santa's little helper]A large box that has been fashioned in the style of a toy box.[otherwise]A large metal crate that has handles on the lid for easy opening.".

[!<TreeStumpCrate>@

REQUIRES COMMENTING

@inherits <Container>

@!]
A tree stump crate is a kind of container. A tree stump crate is openable. A tree stump crate is closed. A tree stump crate is not portable. The printed name of a tree stump crate is "[TQlink of item described]tree stump crate[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of tree stump crate is "tsc".
30 trappable tree stump crates are in Holding Pen.

To say ShortDesc of (C - a tree stump crate):
	say "crate".

Figure of tree stump crate is the file "Env/Forest/treestumpcrate1.png".

To decide which figure-name is the examine-image of (C - a tree stump crate):
	decide on figure of tree stump crate.

To say ExamineDesc of (C - a tree stump crate):
	say "This wooden crate was made by hollowing out a tree stump then replacing the top as a lid.".

[!<FilingCabinet>@

REQUIRES COMMENTING

@inherits <Container>

@!]
A filing cabinet is a kind of container. A filing cabinet is openable. A filing cabinet is closed. A filing cabinet is not portable. The printed name of a filing cabinet is "[TQlink of item described]filing cabinet[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of filing cabinet is "cab".
20 trappable filing cabinets are in Holding Pen.

To say ShortDesc of (C - a filing cabinet):
	say "cabinet".

Figure of filing cabinet is the file "Env/Hotel/filingcabinet1.png".

To decide which figure-name is the examine-image of (C - a filing cabinet):
	decide on figure of filing cabinet.

To say ExamineDesc of (C - a filing cabinet):
	say "An ordinary looking filing cabinet, only the top drawer appears to be openable.".

[!<Wardrobe>@

REQUIRES COMMENTING

@inherits <Container>

@!]
A wardrobe is a kind of container. A wardrobe is openable. A wardrobe is closed. A wardrobe is not portable. The printed name of a wardrobe is "[TQlink of item described]wardrobe[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of wardrobe is "war".
10 trappable wardrobes are in Holding Pen.

Figure of wardrobe is the file "Env/Hotel/wardrobe1.png".

To decide which figure-name is the examine-image of (C - a wardrobe):
	decide on figure of wardrobe.

To say ExamineDesc of (C - a wardrobe):
	say "A large wooden wardrobe with two doors, it looks very impressive.".

To say ShortDesc of (C - a wardrobe):
	say "wardrobe".

[!<ChestOfDrawers>@

REQUIRES COMMENTING

@inherits <Container>

@!]
A chest of drawers is a kind of container. A chest of drawers is openable. A chest of drawers is closed. A chest of drawers is not portable. The printed name of a chest of drawers is "[TQlink of item described]chest of drawers[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of chest of drawers is "dra". 10 trappable chest of drawers are in Holding Pen.

Figure of drawers is the file "Env/Hotel/chestofdrawers1.png".

To decide which figure-name is the examine-image of (C - a chest of drawers):
	decide on figure of drawers.

To say ExamineDesc of (C - a chest of drawers):
	say "A wooden chest of drawers. It looks like only the top drawer is openable.".

To say ShortDesc of (C - a chest of drawers):
	say "shelving unit".

[!<Minibar>@

REQUIRES COMMENTING

@inherits <Container>

@!]
A minibar is a kind of container. A minibar is openable. A minibar is closed. A minibar is not portable. The printed name of a minibar is "[TQlink of item described]minibar[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of minibar is "mi". Understand "mini", "bar" as minibar.
10 minibars are in Holding Pen.

Figure of minibar is the file "Env/Hotel/minibar1.png".

To decide which figure-name is the examine-image of (C - a minibar):
	decide on figure of minibar.

To say ExamineDesc of (C - a minibar):
	say "A fridge that might hold overpriced drinks. There is a small slot on the side, marked 'payment'.".

To say ShortDesc of (C - a minibar):
	say "minibar".

[A trunk is a kind of container. A trunk is openable. A trunk is closed. A trunk is not portable. The printed name of a trunk is "trunk". The text-shortcut of trunk is "tk". The description is "An unassuming wooden trunk.".]
[!<AntiqueTrunk>@

REQUIRES COMMENTING

@inherits <Container>

@!]
An antique trunk is a kind of container. An antique trunk is openable. An antique trunk is closed. An antique trunk is not portable. The printed name of an antique trunk is "[TQlink of item described]antique trunk[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of antique trunk is "at".
15 trappable antique trunks are in Holding Pen.

Figure of antique trunk is the file "Env/Mansion/trunk2.png".

To decide which figure-name is the examine-image of (C - an antique trunk):
	decide on figure of antique trunk.

To say ExamineDesc of (C - an antique trunk):
	say "An unassuming wooden trunk.".

To say ShortDesc of (C - an antique trunk):
	say "trunk".

[!<OrnateTrunk>@

REQUIRES COMMENTING

@inherits <Container>

@!]
An ornate trunk is a kind of container. An ornate trunk is openable. An ornate trunk is closed. An ornate trunk is not portable. The printed name of an ornate trunk is "[TQlink of item described]ornate trunk[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of ornate trunk is "ot".
5 trappable ornate trunks are in Holding Pen.[mimics will appear only in ornate trunks.]

Figure of ornate trunk is the file "Env/Mansion/trunk2.png".

To decide which figure-name is the examine-image of (C - an ornate trunk):
	decide on figure of ornate trunk.

To say ExamineDesc of (C - an ornate trunk):
	say "A rather impressive looking wooden trunk.".

To say ShortDesc of (C - an ornate trunk):
	say "trunk".

[!<AddTreasureToMinibar>+

REQUIRES COMMENTING

+!]
To add treasure to (X - a minibar):
	if there is an off-stage can:
		let flav-said be 0;
		repeat with Z running from 1 to a random number between 1 and 3:
			let I be a random can in Standard Item Pen;
			if I is can:
				now I is in X;
				restock I;
				if flav-said is 0:
					say "You find a [printed name of I] ";
					now flav-said is 1;
				otherwise:
					say "and a [printed name of I] ";
		say "inside!";
		repeat with Z running through cans in X:
			compute autotaking Z;
	otherwise:
		compute generic treasure to X;
		say "[variable custom style]'That[']s weird. Maybe it's out of drinks or something?'[roman type]".

[!<Safe>@

REQUIRES COMMENTING

@inherits <Container>

@!]
A safe is a kind of container. A safe is openable. A safe is closed. A safe is not portable. The printed name of a safe is "[TQlink of item described]safe[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of safe is "saf". 10 trappable safes are in Holding Pen.
Figure of safe is the file "Env/Hotel/safe1.png".

To say ShortDesc of (C - a safe):
	say "safe".

To decide which figure-name is the examine-image of (C - a safe):
	decide on figure of safe.

To say ExamineDesc of (C - a safe):
	say "A small safe for keeping valuables inside. It's not locked.".

[!<TreasureChest>@

REQUIRES COMMENTING

@inherits <Container>

@!]
A treasure chest is a kind of container. A treasure chest is openable. A treasure chest is closed. A treasure chest is not portable. The printed name of a treasure chest is "[TQlink of item described]treasure chest[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of treasure chest is "ch".
Figure of treasure chest is the file "Env/Multifloor/treasurechest1.jpg".

To decide which figure-name is the examine-image of (C - a treasure chest):
	decide on figure of treasure chest.

To say ExamineDesc of (C - a treasure chest):
	say "An important looking chest that might contain key items.".

40 trappable treasure chests are in Holding Pen.

To say ShortDesc of (C - a treasure chest):
	say "chest".

[!<AddTreasureToTreasureChest>+

REQUIRES COMMENTING

+!]
To add treasure to (X - a treasure chest):
	if the location of X is Dungeon12: [Like the stuff in the pink wardrobe but unidentified]
		let L be a list of clothing;
		let C be a random pinkWardrobeAppropriate undies;
		if C is clothing, add C to L;
		let C be a random pinkWardrobeAppropriate corset;
		if C is clothing, add C to L;
		now C is a random basic loot fetish appropriate heels;
		if C is clothing, add C to L;
		if C is platform heels or C is wedge heels, now the heel-height of C is 3;
		otherwise now the heel-height of C is 1;
		let LB be the list of pinkWardrobeAppropriate bras;
		sort LB in random order;
		repeat with B running through LB:
			if B is not bikini top, now C is B;
		if C is bra:
			add C to L;
			now the size of C is the largeness of breasts;
			if the size of C > the max size of C, now the size of C is the max size of C;
			if the size of C < the min size of C, now the size of C is the min size of C;
		now C is a random pinkWardrobeAppropriate suspenders;
		if C is clothing, add C to L;
		now C is a random pinkWardrobeAppropriate skirted overdress;
		if C is clothing, add C to L;
		now C is a random pinkWardrobeAppropriate trousers;
		if C is clothing, add C to L;
		repeat with Z running through L:
			if Z is in Standard Item Pen, restock Z;
			now Z is in X;
			if Z is blessed, now Z is bland;
			if Z is suspenders and the raw-magic-modifier of Z > 0, now the raw-magic-modifier of Z is 0;
			if the raw-magic-modifier of Z < -2, now the raw-magic-modifier of Z is a random number between -2 and 0;
			if the raw-magic-modifier of Z > 2, now the raw-magic-modifier of Z is a random number between 0 and 2;
			if Z is cursed, assign quest to Z;
			otherwise now Z is blandness;
			now Z is unowned;
		let I be a random can in Standard Item Pen;
		if I is can:
			now I is in X;
			restock I;
		say "You find a lot of stuff in here. But something tells you that you can't be sure if any of it has any magical effects until you put them on...";
		if newbie tips is 1, say "[newbie style]Newbie tip: Consider this your bonus starting kit. These items start UNIDENTIFIED and may have random magic properties - they might be cursed. Wearing heels is an interesting but challenging choice because this will make you more vulnerable in the early game but is a great source of damage later on.[roman type][line break]";
	otherwise:
		let R be a random off-stage appropriate recipe;
		let S be a random uncastable fetish appropriate magic-spell;
		if a random number between 1 and 6 > (2 - the number of worn blue scrunchie) and earnings < starting-earnings - 100 and (R is recipe or S is magic-spell):
			if S is magic-spell and a random number between -16 and the number of in-play recipes > 0:
				say "[bold type]You find the instructions for casting a magic spell written on the inside of the lid! [roman type]Interesting...[NewbieSpellFlav]";
				compute learning of S;
				cutshow figure of recipe for S;
				say "Magic energy flows through the words and into your body.";
				MagicPowerUp 1;
			otherwise:
				now R is in X;
				say "You find a [printed name of R] written on the inside of the lid! Interesting...";
				say NewbieMagicSpells;
				say ExamineDesc of R;
				say line break;
		otherwise:
			compute generic treasure to X.

To say NewbieMagicSpells:
	if newbie tips is 1, say "[one of][newbie style]Newbie tip: You've found a recipe! Recipes allow you to craft certain things at the Apothecary in the Dungeon once you've found the necessary ingredient. Using anything but the correct ingredients will create cursed versions of random craftable items, so it's dangerous to risk it without knowing the recipe, as you won't know that what you've created will have a beneficial effect. You can choose to memorise the recipe, but you can only remember a certain number, depending on your intelligence. For most recipes, memorising it gives you a chance to create a better (e.g. blessed) version of the item.[roman type][line break][or][stopping]".

Section - Pedestals

Carry out taking museum-store clothing:
	now the noun is unowned;
	if the location of the player is mansion28 and there is a worn lipstick collar:
		let L be a random lipstick collar;
		now L is tethering;
		say "The barrier shatters as your hands pull back, and you hear a chilling rattling noise as a brilliant pink chain shoots out of your collar and secures itself to a tiny hook in the floor. [if vampiress is in the location of the player][BigNameDesc of vampiress] grins as the chain pulls taut[otherwise]You hear a sultry voice giggling down the hall as the chain pulls taut[end if].[line break][speech style of vampiress]'It would be a shame if you left without paying, now wouldn[']t it?'[roman type][line break][line break][line break]";
		unless vampiress is alive:
			summon vampiress in the mansion;
			say "[SummoningFlav of vampiress]";
			set up vampiress;
			now vampiress is interested;
			anger vampiress.

A pedestal is a kind of container. A pedestal is usually not openable. A pedestal is closed. A pedestal is not portable. The printed name of a pedestal is "[TQlink of item described][if the item described is erect and diaper lover > 0]nurturing[otherwise][pedestal-lock of the item described][end if] [pedestal-variant of the item described] pedestal[if the paid of the item described > 0] ([paid of the item described])[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of pedestal is "ped". A pedestal has a number called paid. The paid of a pedestal is usually 0. Understand "glass", "dome", "case", "barrier" as pedestal.

To say ShortDesc of (C - a pedestal):
	say "pedestal".

Figure of fertile pedestal is the file "Env/Mansion/pedestal1.png".
Figure of parched pedestal is the file "Env/Mansion/pedestal2.png".
Figure of chilled pedestal is the file "Env/Mansion/pedestal3.png".
Figure of erect pedestal is the file "Env/Mansion/pedestal4.png".
Figure of bottle pedestal is the file "Env/Mansion/pedestal5.png".

To decide which figure-name is the examine-image of (C - a pedestal):
	if C is fertile, decide on figure of fertile pedestal;
	if C is parched, decide on figure of parched pedestal;
	if C is chilled, decide on figure of chilled pedestal;
	if diaper lover > 0, decide on figure of bottle pedestal;
	decide on figure of erect pedestal.

A pedestal is not trappable.

A pedestal can be fertile, parched, chilled, or erect (this is the pedestal-lock property). A pedestal is usually erect. Understand the pedestal-lock property as describing a pedestal. Understand "nurturing" as pedestal when the item described is erect.

A pedestal can be wood, clay, terracotta, granite, quartz, sandstone or marble(this is the pedestal-variant property). A pedestal is usually sandstone. Understand the pedestal-variant property as describing a pedestal. [Pedestals have names so you can refer to them individually.]

There are 7 pedestals.

To say ExamineDesc of (P - a pedestal):
	say "A [pedestal-variant of P] pedestal[if there is a thing in P] bearing a [ShortDesc of a random thing in P][end if], which is protected by a glass case. [if P is fertile]Vines are carved into the base, twisting together just underneath the lip of the case to form a circular basin.[otherwise if P is chilled]Mist flows from small openings in the base, which are decorated with carvings of androgynous people. A [pedestal-variant of P] basin protrudes from one side.[otherwise if P is erect and diaper lover > 0]A[one of]...[or] [stopping]sippy cup protrudes from one side of the pedestal.[otherwise if P is erect]A [pedestal-variant of P][one of]...[or] [stopping]penis protrudes from one side of the pedestal[one of]. Drinking from it will in all likelihood unlock the case, but at what cost?[or].[stopping][otherwise]The base has been carved to resemble a nude woman. Her mouth is open, and her tongue is hanging out, as if begging for a drink.[end if][line break]You can make out the number [paid of P] on the inside of case, written in Roman numerals.";
	if newbie tips is 1, say "[newbie style]Newbie Tip: You need to [if P is erect]get on your knees and suck on this pedestal[otherwise if P is chilled]pour a container with milk in it into this pedestal[otherwise if P is parched]pour a container with urine in it into this pedestal[otherwise]pour a container with semen in it into this pedestal[end if] to open it.[roman type][line break]".

Report examining a pedestal: [Specifically with examining we want it to appear in the main window always]
	repeat with T running through things in the noun:
		display the examine-image of T.

To lock pedestals:
	let V be 1;[if V is 1, the pedestal is sandstone]
	repeat with P running through pedestals:
		now the text-shortcut of P is the substituted form of "pe[V]";
		if V is 2, now P is wood;
		if V is 3, now P is marble;
		if diaper quest is 1 and V > 3:
			destroy P; [Not enough different rare items to allow them all to be found in this room]
		otherwise:
			if V is 4, now P is clay;
			if V is 5, now P is terracotta;
			if V is 6, now P is granite;
			if V is 7, now P is quartz;
			increase V by 1;
		let L be a random number between 1 and 5;
		if L is 1 and diaper quest is 0, now P is fertile;
		if (L is 2 or L is 3):
			if watersports fetish is 1 and (diaper quest is 1 or a random number between 1 and 2 is 1):
				now P is parched;
			otherwise if diaper quest is 0:
				now P is fertile;
		if L is 4 and lactation fetish is 1, now P is chilled.

To add treasure to (X - a pedestal):[This function should happen when the mansion is generated, not when the pedestal is opened.]
	if there is an off-stage pocket necronomicon:
		let P be a random off-stage pocket necronomicon;
		now P is in X;
		now P is museum-store;
		now the paid of X is 3;
	otherwise if there is an off-stage magic lamp:
		let P be a random off-stage magic lamp;
		now P is in X;
		now P is museum-store;
		now the paid of X is 2;
	otherwise if there is an off-stage wood-dong and diaper quest is 0:[if this is found in the mansion shop, its ridiculously expensive]
		let P be a random off-stage wood-dong;
		now P is in X;
		now P is museum-store;
		now the paid of X is 10;
	otherwise:
		let P be a random off-stage rare fetish appropriate clothing;
		now P is in X;
		now P is museum-store;
		now the paid of X is the price of P / 3;
		if the paid of X <= 0, now the paid of X is 1.

To BackgroundRender (T - a pedestal) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	let C be a random thing in T;
	if C is a thing: [We have some fixed values here because there's a specific area we want to render inside, from (149,40) to (251,160)]
		[let W be the current focus window;
		focus the main window;
		say "Area to render in is [X1] by [Y1] with dimensions [DX] by [DY].";]
		let X1R be X1 + ((DX * 149.0) / 400.0);
		let Y1R be Y1 + (DY * 0.1);
		let X2R be X1 + ((DX * 251.0) / 400.0);
		let Y2R be Y1 + ((DY * 160.0) / 400.0);
		[say "Transparent area to render in is [X1R] by [Y1R] to [X2R] by [Y2R].";]
		let DXR be X2R - X1R;
		let DYR be Y2R - Y1R;
		let F be the examine-image of C;
		let PX be the pixel-width of F;
		let PY be the pixel-height of F;
		let Xratio be DXR / PX;
		let Yratio be DYR / PY;
		[say "Figure size is [PX] by [PY]; ratios are therefore X: [Xratio] and Y: [Yratio].";]
		if Xratio > Yratio: [we use all of Y and need to shrink X]
			now DXR is PX * Yratio;
			increase X1R by ((X2R - X1R) - DXR) / 2; [We want it to sit centred]
		otherwise: [we use all of X and need to shrink Y]
			now DYR is PY * Xratio;
			now Y1R is Y2R - DYR; [We want it to sit at the bottom of the transparent area.]
		now X1 is X1R to the nearest whole number;
		now Y1 is Y1R to the nearest whole number;
		now DX is DXR to the nearest whole number;
		now DY is DYR to the nearest whole number;
		[say "Rendering the figure of [C] at [X1] by [Y1] with dimensions [DX] by [DY].";
		focus W;]
		display the image F in the current focus window at X1 by Y1 with dimensions DX by DY.

Check drinking a pedestal:
	unless the noun is erect, say "How would you drink that?" instead;
	if the player is upright, say "You need to be on your knees first." instead;
	if the player is gagged, say "You would need to remove your gag first." instead.

Carry out drinking a pedestal:
	allocate 6 seconds;
	if a random number between 0 and watersports fetish is 1:
		say "You put your lips on the end of the [pedestal-variant of the noun] [if diaper lover > 0]sippy cup[otherwise][manly-penis][end if] and suck. It squirts [urine] straight down your throat, with quite some force. [if the urine taste addiction of the player < 7]You cough and splutter![otherwise if the urine taste addiction of the player <= 13][line break][variable custom style]Ack![roman type][line break][otherwise][line break][second custom style]Yum![roman type][line break][end if]";
		StomachUp the paid of the noun;
		if the stomach-liquid of the player > 5, say "Your belly feels very full of [urine].";
		UrineTasteAddictUp ((the paid of the noun + 1) / 2);
	otherwise if diaper lover > 0:
		say "You put your lips on the end of the [pedestal-variant of the noun] sippy cup and suck. Warm sweet fluid immediately rushes into your mouth and straight down your throat![line break]";
		StomachUp the paid of the noun;
		Humiliate 10 * the paid of the noun;
		repeat with N running from 1 to the paid of the noun:
			let R be a random number between 1 and 3;
			if R is 1:
				say "You feel your smarts fading[one of][or] further[stopping]...";
				IntDown 1;
			otherwise if R is 2 and diaper messing >= 3:
				say "You feel a growing pressure in your bowels...";
				increase suppository by 1;
			otherwise if a random number between 1 and 2 is 1:
				say "You feel your muscles weakening[one of][or] further[stopping]...";
				StrengthDown 1;
			otherwise:
				say "You feel your muscles stiffening[one of][or] further[stopping]...";
				DexDown 1;
	otherwise:
		say "You put your lips around the [pedestal-variant of the noun] [manly-penis], and suck. [one of][if the semen taste addiction of the player < 8][line break][first custom style]I can't believe I'm doing this! Do I really need it open this badly?[roman type][line break]Your thoughts are interrupted by the penis ejaculating [semen] straight down your throat, with quite some force. You cough and splutter![otherwise if the semen taste addiction of the player > 11]The stone penis ejaculates [semen] straight down your throat, with quite some force. [line break][second custom style]Yippee![roman type][line break][otherwise]The penis ejaculates [semen] straight down your throat, with quite some force. [end if][or]You [if the oral sex addiction of the player < 5]wish you could push away the invasive imagination that the stone penis belongs to a real, living man. You scrunch your eyes in dismay[otherwise]pretend the stone penis belongs to a real, living stud, and curl your tongue around it while you suck avidly – after all, no one can see what your tongue is doing, right, so what's the harm in making it extra fun by a little imagining? Your finely-tuned BJ skills warn you, and you pull back to ease it out of your throat so you can taste it properly! You thrill[end if] as you feel it spurt its [semen]. [if the semen taste addiction of the player > 11]Yummy! You swirl it around for a while, savouring the taste properly, before you reluctantly [otherwise]You [end if]swallow it down.[or]You give the penis another blowjob, and once again it ejaculates [semen] into your mouth. You [if the semen taste addiction of the player > 11]greedily [end if]gulp it down.[stopping][line break]";[TODO: vary for oral sex addiction]
		StomachSemenUp the paid of the noun;
		get oral creampie image for the noun;
	now the paid of the noun is 0;
	say "You hear a distinctive *shunk* as the glass dome splits and slowly opens.";
	now the paid of the noun is 0;
	now the noun is open;
	repeat with X running through things in the noun:
		now X is unowned;
		compute autotaking X.

Carry out pouring bottle into pedestal:
	allocate 6 seconds;
	let L be water;
	if the fill-colour of the noun is creamy, now L is semen;
	if the fill-colour of the noun is golden, now L is urine;
	if the fill-colour of the noun is white, now L is milk;
	if the fill-colour of the noun is murky, now L is murkwater;
	let N be the doses of the noun;
	DoseEmpty the noun;
	compute PedestalFilling the second noun with L by N.

To compute PedestalFilling (P - a pedestal) with (L - a liquid-object) by (N - a number):
	let oP be the paid of P;
	if P is fertile and (L is semen or L is murkwater):
		decrease the paid of P by N;
	otherwise if P is parched and (L is urine or L is murkwater):
		decrease the paid of P by N;
	otherwise if P is chilled and L is milk:
		decrease the paid of P by N;
	if the paid of P < 1:
		say fullPaymentSatisfy of P;
	otherwise if the paid of P < oP:
		say partialPaymentSatisfy of P;
	otherwise:
		say paymentSatisfyReject of P.

To say fullPaymentSatisfy of (P - a pedestal):
	if P is fertile:
		say "The stone basin fills with [semen], and you hear a distinctive *shunk* as the glass dome splits and slowly opens.";
	otherwise if P is parched:
		say "The [urine] disappears into it, and you hear a deep rumble as the [pedestal-variant of P] carving's mouth snaps closed. A moment passes, and you hear a distinctive *shunk* as the glass dome splits and slowly opens.";
	otherwise:
		say "The [pedestal-variant of P] basin fills with [milk], and you hear a deep rumble as the [pedestal-variant of P] carvings in the base fill out impressively, breasts growing and hips widening as the glass dome opens with a distinctive *shunk*.";
	repeat with X running through things in P:
		now X is unowned;
		now P is open.

To say partialPaymentSatisfy of (P - a pedestal):
	if P is fertile:
		say "A dim green glow creeps down the [pedestal-variant of P] vines that make up the base of the pedestal as the basin fills with [semen]. The dome doesn't open. Maybe you'll need more?";
	otherwise if P is parched:
		say "You hear a sound very much like a sigh as the [urine] disappears into the hole, and a dim golden glow inside the carving seems to grow in intensity. The dome doesn't open. Maybe you need more?";
	otherwise:
		say "The stone basin fills with [milk], and the mist flowing from the base seems to take on a slightly deeper tint of white. The dome still doesn't open. Maybe you need more?".

To say paymentSatisfyReject of (P - a pedestal):
	say "The [pedestal-variant of P] basin fills with the liquid, but the dome doesn't open. Maybe that's the wrong type of liquid? [if P is fertile]Something to do with fertility might be a better shot...[otherwise if P is parched]Maybe the fact that the carving looks like a human toilet is supposed to be suggesting something in particular...[otherwise if P is chilled]The pedestal looks like it keeps whatever liquid it stores cool, so maybe it's for making sure that a certain lactated liquid doesn't go off?[end if]".

Containers ends here.
