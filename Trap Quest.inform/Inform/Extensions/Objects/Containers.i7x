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

[!<ContainerIsFriendly>+

REQUIRES COMMENTING

+!]
Definition: a container is friendly:
	if it is trapped, decide no;
	decide yes.

[!<AContainerIsTrapped>+

REQUIRES COMMENTING

+!]
Definition: a container is trapped:
	if there is an untriggered click trap in the location of it, decide yes;
	decide no.

[!<LargeSack>@

REQUIRES COMMENTING

@inherits <Container>

@!]
A large sack is a kind of container. A large sack is openable. A large sack is closed. A large sack is not portable. The printed name of a large sack is "[TQlink of item described][if the class of the player is santa's little helper]stocking[otherwise]large sack[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of large sack is "sac". The description is "[if the class of the player is santa's little helper]A giant stocking, which probably contains a lovely present.[otherwise]A large brown cotton sack lying against one wall.[end if]".
40 trappable large sacks are in Holding Pen. Understand "stocking" as large sack.

To say ShortDesc of (C - a large sack):
	say "sack".

[!<WoodenCrate>@

REQUIRES COMMENTING

@inherits <Container>

@!]
A wooden crate is a kind of container. A wooden crate is openable. A wooden crate is closed. A wooden crate is not portable. The printed name of a wooden crate is "[TQlink of item described][if the class of the player is santa's little helper]giant present[otherwise]wooden crate[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of wooden crate is "wcr". The description is "[if the class of the player is santa's little helper]A large box that has been fashioned in the style of a Christmas present.[otherwise]A large wooden crate that looks like it has been there for a long time.[end if]".
40 trappable wooden crates are in Holding Pen. Understand "giant", "present" as wooden crate.


To say ShortDesc of (C - a wooden crate):
	say "crate".

[!<MetalCrate>@

REQUIRES COMMENTING

@inherits <Container>

@!]
A metal crate is a kind of container. A metal crate is openable. A metal crate is closed. A metal crate is not portable. The printed name of a metal crate is "[TQlink of item described][if the class of the player is santa's little helper]giant toybox[otherwise]metal crate[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of metal crate is "mcr". The description is "[if the class of the player is santa's little helper]A large box that has been fashioned in the style of a toy box.[otherwise]A large metal crate that has handles on the lid for easy opening.".
30 trappable metal crates are in Holding Pen. Understand "giant", "toy", "box", "toybox" as metal crate.

To say ShortDesc of (C - a metal crate):
	say "crate".

[!<TreeStumpCrate>@

REQUIRES COMMENTING

@inherits <Container>

@!]
A tree stump crate is a kind of container. A tree stump crate is openable. A tree stump crate is closed. A tree stump crate is not portable. The printed name of a tree stump crate is "[TQlink of item described]tree stump crate[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of tree stump crate is "tsc". The description is "This wooden crate was made by hollowing out a tree stump then replacing the top as a lid.". Understand "tr" as tree stump crate.
30 trappable tree stump crates are in Holding Pen.

To say ShortDesc of (C - a tree stump crate):
	say "crate".

[!<FilingCabinet>@

REQUIRES COMMENTING

@inherits <Container>

@!]
A filing cabinet is a kind of container. A filing cabinet is openable. A filing cabinet is closed. A filing cabinet is not portable. The printed name of a filing cabinet is "[TQlink of item described]filing cabinet[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of filing cabinet is "cab". The description is "An ordinary looking filing cabinet, only the top drawer appears to be openable.".
20 trappable filing cabinets are in Holding Pen.

To say ShortDesc of (C - a filing cabinet):
	say "cabinet".

[!<Wardrobe>@

REQUIRES COMMENTING

@inherits <Container>

@!]
A wardrobe is a kind of container. A wardrobe is openable. A wardrobe is closed. A wardrobe is not portable. The printed name of a wardrobe is "[TQlink of item described]wardrobe[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of wardrobe is "war". The description is "A large wooden wardrobe with two doors, it looks very impressive.".
20 trappable wardrobes are in Holding Pen.

To say ShortDesc of (C - a wardrobe):
	say "wardrobe".

[!<ChestOfDrawers>@

REQUIRES COMMENTING

@inherits <Container>

@!]
A chest of drawers is a kind of container. A chest of drawers is openable. A chest of drawers is closed. A chest of drawers is not portable. The printed name of a chest of drawers is "[TQlink of item described]chest of drawers[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of chest of drawers is "dra". The description is "A wooden chest of drawers. It looks like only the top drawer is openable.".
20 trappable chest of drawers are in Holding Pen.

To say ShortDesc of (C - a chest of drawers):
	say "shelving unit".

[!<Minibar>@

REQUIRES COMMENTING

@inherits <Container>

@!]
A minibar is a kind of container. A minibar is openable. A minibar is closed. A minibar is not portable. The printed name of a minibar is "[TQlink of item described]minibar[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of minibar is "mi". The description is "A fridge that might hold overpriced drinks. There is a small slot on the side, marked 'payment'.". Understand "mini", "bar" as minibar.
10 minibars are in Holding Pen.

To say ShortDesc of (C - a minibar):
	say "minibar".

[A trunk is a kind of container. A trunk is openable. A trunk is closed. A trunk is not portable. The printed name of a trunk is "trunk". The text-shortcut of trunk is "tk". The description is "An unassuming wooden trunk.".]
[!<AntiqueTrunk>@

REQUIRES COMMENTING

@inherits <Container>

@!]
An antique trunk is a kind of container. An antique trunk is openable. An antique trunk is closed. An antique trunk is not portable. The printed name of an antique trunk is "[TQlink of item described]antique trunk[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of antique trunk is "at". The description is "An unassuming wooden trunk.".
15 trappable antique trunks are in Holding Pen.

To say ShortDesc of (C - an antique trunk):
	say "trunk".

[!<OrnateTrunk>@

REQUIRES COMMENTING

@inherits <Container>

@!]
An ornate trunk is a kind of container. An ornate trunk is openable. An ornate trunk is closed. An ornate trunk is not portable. The printed name of an ornate trunk is "[TQlink of item described]ornate trunk[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of ornate trunk is "ot". The description is "A rather impressive looking wooden trunk.".
5 trappable ornate trunks are in Holding Pen.[mimics will appear only in ornate trunks.]

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
	otherwise:
		compute generic treasure to X;
		say "[variable custom style]'That[']s weird. Maybe it's out of drinks or something?'[roman type]".

[!<Safe>@

REQUIRES COMMENTING

@inherits <Container>

@!]
A safe is a kind of container. A safe is openable. A safe is closed. A safe is not portable. The printed name of a safe is "[TQlink of item described]safe[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of safe is "saf". A description is "A small safe for keeping valuables inside. It's not locked.".
20 trappable safes are in Holding Pen.

To say ShortDesc of (C - a safe):
	say "trunk".

[!<TreasureChest>@

REQUIRES COMMENTING

@inherits <Container>

@!]
A treasure chest is a kind of container. A treasure chest is openable. A treasure chest is closed. A treasure chest is not portable. The printed name of a treasure chest is "[TQlink of item described]treasure chest[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of treasure chest is "ch". The description is "An important looking chest that might contain key items.".
40 trappable treasure chests are in Holding Pen.

To say ShortDesc of (C - a treasure chest):
	say "chest".

[!<AddTreasureToTreasureChest>+

REQUIRES COMMENTING

+!]
To add treasure to (X - a treasure chest):
	let R be a random off-stage appropriate recipe;
	if a random number between 1 and 5 > 2 and earnings < starting-earnings - 100 and R is recipe:
		now R is in X;
		say "You find a [printed name of R] written on the inside of the lid!  Interesting...";
		if newbie tips is 1, say "[one of][item style]Newbie tip: You've found a recipe!  Recipes allow you to craft certain things at the Apothecary in the Dungeon once you've found the necessary ingredient. Using anything but the correct ingredients will create cursed versions of random craftable items, so it's dangerous to risk it without knowing the recipe, as you won't know that what you've created will have a beneficial effect. You can choose to memorise the recipe, but you can only remember a certain number, depending on your intelligence. For most recipes, memorising it gives you a chance to create a better (e.g. blessed) version of the item.[roman type][line break][or][stopping]";
		try examining R;
	otherwise:
		compute generic treasure to X.

Section - Pedestals

Carry out taking museum-store clothing:
	now the noun is normal;
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
			

A pedestal is a kind of container. A pedestal is usually not openable. A pedestal is closed. A pedestal is not portable. The printed name of a pedestal is "[TQlink of item described][if the item described is erect and diaper lover > 0]nurturing[otherwise][pedestal-lock of the item described][end if] [pedestal-variant of the item described] pedestal[if the paid of the item described > 0] ([paid of the item described])[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of pedestal is "ped". The description is "[PedestalDesc]". A pedestal has a number called paid. The paid of a pedestal is usually 0. Understand "glass", "dome", "case", "barrier" as pedestal.

To say ShortDesc of (C - a pedestal):
	say "pedestal".

A pedestal can be fertile, parched, chilled, or erect (this is the pedestal-lock property). A pedestal is usually erect. Understand the pedestal-lock property as describing a pedestal. Understand "nurturing" as pedestal when the item described is erect.

A pedestal can be wood, stone, clay, terracotta or marble(this is the pedestal-variant property). A pedestal is usually stone. Understand the pedestal-variant property as describing a pedestal. [Pedestals have names so you can refer to them individually.]

There are 5 not trappable pedestals.

To say PedestalDesc:
	say "A [pedestal-variant of the item described] pedestal[if there is a thing in item described] bearing a [printed name of a random thing in the item described][end if], which is protected by a glass case. [if the item described is fertile]Vines are carved into the base, twisting together just underneath the lip of the case to form a circular basin.[otherwise if the item described is chilled]Mist flows from small openings in the base, which are decorated with carvings of androgynous people. A [pedestal-variant of the item described] basin protrudes from one side.[otherwise if the item described is erect and diaper quest is 1]A [pedestal-variant of the item described][one of]...[or] [stopping]sippy cup protrudes from one side of the pedestal.[otherwise if the item described is erect]A [pedestal-variant of the item described][one of]...[or] [stopping]penis protrudes from one side of the pedestal.[otherwise]The base has been carved to resemble a nude woman. Her mouth is open, and her tongue is hanging out, as if begging for a drink.[end if][line break]You can make out the number [paid of the item described] on the inside of case, written in roman numerals.".

To lock pedestals:
	let V be 1;
	repeat with P running through pedestals:
		now the text-shortcut of P is "pe[V]";
		if V is 2, now P is wood;
		if V is 3, now P is clay;
		if V is 4, now P is terracotta;
		if V is 5, now P is marble;
		increase V by 1; 
		let L be a random number between 1 and 5;
		if L is 1 and bukkake fetish is 1, now P is fertile;
		if (L is 2 or L is 3) and diaper quest is 0:
			if watersports fetish is 1, now P is parched;
			otherwise now P is fertile;
		if L is 4 and lactation fetish is 1, now P is chilled.
		

To add treasure to (X - a pedestal):[This function should happen when the mansion is generated, not when the pedestal is "opened.]
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
	otherwise:
		let P be a random off-stage rare fetish appropriate clothing;
		now P is in X;
		now P is museum-store;
		now the paid of X is the price of P / 3;
		if the paid of X <= 0, now the paid of X is 1.

Check drinking a pedestal:
	unless the noun is erect, say "How would you drink that?" instead;
	if the player is upright, say "You need to be on your knees first." instead;
	if the player is gagged, say "You would need to remove your gag first." instead.
	
Carry out drinking a pedestal:
	if diaper quest is 1:
		say "You put your lips on the end of the [pedestal-variant of the item described] sippy cup and suck. Immediately, warm, sweet fluid rushes into your mouth and straight down your throat![line break]";
		StomachUp the paid of the noun;
		Humiliate 10 * the paid of the noun;
		IntDown 1;
	otherwise:
		say "[one of]You put your lips around the [pedestal-variant of the item described] penis, and suck. [if the semen taste addiction of the player < 8][line break][first custom style]I can't believe I'm doing this! Do I really need it open this badly?[roman type][line break]Your thoughts are interrupted by the penis ejaculating [semen] straight down your throat, with quite some force. You cough and splutter![otherwise if the semen taste addiction of the player > 11]The stone penis ejaculates [semen] straight down your throat, with quite some force. [line break][second custom style]Yippee![roman type][line break][otherwise]The penis ejaculates [semen] straight down your throat, with quite some force. [end if][or]You pretend the stone penis belongs to a real, living stud, and curl your tongue around it while you suck avidly – after all, no one can see what your tongue is doing, right, so what's the harm in making it extra fun by a little imagining? Your finely-tuned BJ skills warn you, and you pull back to ease it out of your throat so you can taste it properly!  You thrill as you feel it spurt its [semen]. [if the semen taste addiction of the player > 11]Yummy! You swirl it around for a while, savouring the taste properly, before you reluctantly [otherwise]You [end if]swallow it down.[or]You give the penis another blowjob, and once again it ejaculates [semen] into your mouth. You [if the semen taste addiction of the player > 11]greedily [end if]gulp it down.[stopping][line break]";
		StomachSemenUp the paid of the noun;
	now the paid of the noun is 0;
	say "You hear a distinctive *shunk* as the glass dome splits and slowly opens.";
	repeat with X running through things in the noun:
		now X is normal;
	now the paid of the noun is 0;
	now the noun is open;
	now seconds is 6.

Carry out pouring something into:[TODO: more interesting]
	if the second noun is fertile and the fill-colour of the noun is creamy:
		decrease the paid of the second noun by the doses of the noun;
		now the doses of the noun is 0;
		if the paid of the second noun < 1:
			say "The stone basin fills with [semen], and you hear a distinctive *shunk* as the glass dome splits and slowly opens.";
			repeat with X running through things in the second noun:
				now X is normal;
				now the second noun is open;
		otherwise:
			say "A dim green glow creeps down the [pedestal-variant of the second noun] vines that make up the base of the pedestal as the basin fills with [semen]. The dome doesn't open. Maybe you'll need more?";
	otherwise if the second noun is parched and the fill-colour of the noun is golden:
		decrease the paid of the second noun by the doses of the noun;
		now the doses of the noun is 0;
		if the paid of the second noun < 1:
			say "The [urine] disappears into it, and you hear a deep rumble as the [pedestal-variant of the second noun] statue's mouth snaps closed. A moment passes, and you hear a distinctive *shunk* as the glass dome splits and slowly opens.";
			repeat with X running through things in the second noun:
				now X is normal;
				now the second noun is open;
		otherwise:
			say "You hear a sound very much like a sigh as the [urine] disappears into the hole, and a dim golden glow inside the statue seems to grow in intensity. The dome doesn't open. Maybe you need more?";
	otherwise if the second noun is chilled and the fill-colour of the noun is white:
		decrease the paid of the second noun by the doses of the noun;
		now the doses of the noun is 0;
		if the paid of the second noun < 1:
			say "The [pedestal-variant of the second noun] basin fills with [milk], and you hear a deep rumble as the [pedestal-variant of the second noun] carvings in the base fill out impressively, breasts growing and hips widening as the glass dome opens with a distinctive *shunk*.";
			repeat with X running through things in the second noun:
				now X is normal;
				now the second noun is open;
		otherwise:
			say "The stone basin fills with [milk], and the mist flowing from the base seems to take on a slightly deeper tint of white. The dome still doesn't open. Maybe you need more?";
	otherwise:
		now the doses of the noun is 0;
		say "The [pedestal-variant of the second noun] basin fills with the liquid, but the dome doesn't open. Maybe that's the wrong type of liquid?  [if the second noun is fertile]Something to do with fertility might be a better shot...[otherwise if the second noun is parched]Maybe the fact that the carving looks like a human toilet is supposed to be suggesting something in particular...[otherwise if the second noun is chilled]The pedestal looks like it keeps whatever liquid it stores cool, so maybe it's for making sure that a certain lactated liquid doesn't go off?[end if]".





Containers ends here.

