Game Universe Initialisation by Miscellaneous Backend begins here.

The game universe initialisation rules is a rulebook.

[!<StartTheMachine>+

The button has been pushed, let's set up the actual game environment. Doing this separately from engine initialisation allows us to split up the setup lag at the start of the game into two chunks.

+!]
To Start The Machine:
	Prune Settings Menu;
	repeat with H running through clothing:
		set up magic state of H; [otherwise certain things appear unidentified that shouldn't]
	Set Up The Dungeon;
	Set Up Monsters;
	if debugmode > 1, say "Finished setting up monsters.";
	now the player is in Dungeon12;
	resolve graphics windows mayhem;
	fix window overhang;
	if debugmode > 1, say "Now configuring pink smoke.";
	move pink smoke backdrop to all smoky rooms;
	move water-body backdrop to all water-bodied rooms;
	if debugmode > 1, say "Now configuring toilets.";
	move toilet backdrop to all urinals rooms;
	move toilet backdrop to all toilets rooms;
	if spontaneous tattoos is 1:
		summon ink-me tattoo;
		say "You notice that [if latex prisoner is 0]you are naked, and that [end if]you have a tattoo of the words 'INK ME' on the back of your left hand.[line break]";
	if background-nurse is 1:
		let B be a random bandage;
		now B is held by the player;
		say "You notice that you seem to have some medical supplies. Handy![line break]";
	if latex prisoner is 1, initialise latex prisoner;
	if bondage prisoner is 1, initialise bondage prisoner;
	if bondage protection is 1, initialise bondage protection;
	if debugmode > 1, say "Now initialising wardrobe.";
	initialise wardrobe;
	now the pink pill is held by the player;
	say "You notice you are holding a small pink pill in your hand.";
	set up debug stuff;
	follow the game universe initialisation rules;
	display stuff;
	display focus stuff;
	display inventory-focus stuff;
	display clothing-focus stuff;
	if the player is able to automatically slap and the player is able to automatically knee and the player is able to automatically kick, do nothing; [For some reason the first time these queries are called, it causes newlines we don't want. So let's make that happen here.]
	update status line.

previousGUILayout is a number that varies. previousGUILayout is -1.

To resolve graphics windows mayhem:
	repeat through the Table of User Styles:
		[now background color entry is lightModeWhiteHex;]
		if style name entry is normal-style[ or style name entry is bold-style or style name entry is italic-style], now color entry is lightModeTextHex;
		if style name entry is special-style-1, now color entry is lightModeSpecial1Hex;
	follow the set generic text styles rule;
	repeat with W running through g-window:
		if W is graphics g-window, now the background color of W is lightModeWhiteGraphicsHex;
		otherwise now the background color of W is lightModeWhiteTextHex;
	if GUI layout is 0: [NEWEST NYMPHO layout, i.e. the new shiny one]
		if previousGUILayout is not 0:
			repeat with W running through g-window:
				if W is g-present and W is not the main window and W is not status window, close W;
			now the inventory-focus-window is spawned by the main window;
			now the position of the inventory-focus-window is g-placeabove;
			now the measurement of the inventory-focus-window is 13;
			now the clothing-focus-window is spawned by the main window;
			now the position of the clothing-focus-window is g-placeleft;
			now the measurement of the clothing-focus-window is 8;
			now the map-window is spawned by the main window;
			now the position of the map-window is g-placeleft;
			now the measurement of the map-window is 40;
			now the focus-window is spawned by the map-window;
			now the position of the focus-window is g-placebelow;
			now the measurement of the focus-window is focusWindowHeight;
			now the graphics-window is spawned by the map-window;
			now the position of the graphics-window is g-placeleft;
			now the measurement of the graphics-window is 50;
			now the inventory-window is spawned by the main window;
			now the position of the inventory-window is g-placeright;
			now the measurement of the inventory-window is 30;
			if inventory window enabled is 0:
				let N be (the measurement of the inventory-window * the measurement of the map-window) / 100; [This keeps the main window in the same proportion by making sure that we're taking the same amount away]
				increase the measurement of the map-window by the measurement of the inventory-window - N;
		now previousGUILayout is 0;
		resolve newest nympho inventory focus window opening;
	otherwise: [CLASSIC COCKSUCKER Layout, i.e. the old one]
		if previousGUILayout is not 1:
			repeat with W running through g-window:
				if W is g-present and W is not the main window and W is not status window, close W;
			now the map-window is spawned by the main window;
			now the position of the map-window is g-placeleft;
			now the measurement of the map-window is 10 + (10 * map images); [map images ranges from 1 to 5]
			now the graphics-window is spawned by the main window;
			now the position of the graphics-window is g-placeright;
			now the measurement of the graphics-window is 25 + (5 * (side images + map images)); [side images ranges from 1 to 5]
			now the hyper-window is spawned by the map-window;
			now the position of the hyper-window is g-placebelow;
			now the measurement of the hyper-window is 25;
		now previousGUILayout is 1;
		resolve classic cocksucker map window opening.

To resolve newest nympho inventory focus window opening:
	if images visible is 1 and flexible focus windows is 2, open the inventory-focus-open-window;
	if inventory focus window enabled is 1 and images visible is 1, open the inventory-focus-window;
	resolve newest nympho clothing focus window opening;
	refresh the inventory-focus-open-window;
	display inventory-focus stuff.

To resolve newest nympho clothing focus window opening:
	if images visible is 1 and flexible focus windows is 2, open the clothing-focus-open-window;
	if clothing focus window enabled is 1 and images visible is 1, open the clothing-focus-window;
	refresh the clothing-focus-open-window;
	resolve newest nympho map window opening;
	display clothing-focus stuff.

To resolve newest nympho map window opening:
	if map images > 0:
		now the graphics-window is spawned by the map-window;
		now the focus-window is spawned by the map-window;
		now the focus-open-window is spawned by the map-window;
		open the map-window;
		resolve newest nympho focus window opening;
		refresh the map-window;
	otherwise:
		now the graphics-window is spawned by the main window;
		now the focus-window is spawned by the graphics-window;
		now the focus-open-window is spawned by the graphics-window;
		resolve newest nympho graphics-window opening;
		resolve newest nympho focus window opening.

To resolve newest nympho focus window opening:
	if images visible is 1 and flexible focus windows is 2, open the focus-open-window;
	if focus window enabled is 1 and images visible is 1, open the focus-window;
	resolve newest nympho graphics-window opening;
	refresh the focus-open-window;
	display focus stuff.

To resolve newest nympho graphics-window opening:
	if side images > 0:
		open the graphics-window;
		resolve newest nympho inventory-window opening;
		display stuff;
	otherwise if the focus-window is g-unpresent:
		now the focus-window is spawned by the main window;
		now the focus-open-window is spawned by the main window;
		resolve newest nympho inventory-window opening.

To resolve newest nympho inventory-window opening:
	if images visible is 1 and flexible focus windows > 0, open the inventory-open-window;
	if inventory window enabled is 1, open the inventory-window;
	refresh the inventory-open-window;
	refresh the inventory-window.

To resolve newest nympho inventory-window closing:
	close the inventory-window;
	close the inventory-open-window.

To resolve newest nympho graphics-window closing:
	resolve newest nympho inventory-window closing;
	close the graphics-window.

To resolve newest nympho focus window closing:
	resolve newest nympho graphics-window closing;
	close the focus-window;
	close the focus-open-window.

To resolve newest nympho map window closing:
	resolve newest nympho focus window closing;
	close the map-window.

To resolve newest nympho clothing focus window closing:
	resolve newest nympho map window closing;
	close the clothing-focus-window;
	close the clothing-focus-open-window.

To resolve newest nympho inventory focus window closing:
	resolve newest nympho clothing focus window closing;
	close the inventory-focus-window.

To resolve classic cocksucker map window opening:
	if map images > 0:
		open the map-window;
		refresh the map-window;
	resolve classic cocksucker graphics-window opening.

To resolve classic cocksucker graphics-window opening:
	if side images > 0:
		open the graphics-window;
		refresh the graphics-window;
	resolve classic cocksucker hyper window opening.

To resolve classic cocksucker hyper window opening:
	if actual inline hyperlinks > 0:
		open the hyper-window;
		refresh the hyper-window.


[!<InitialiseLatexPrisoner>+

Used at the start of the game to encase the player in latex items, if that option has been enabled.

+!]
To initialise latex prisoner:
	let R be a random number between 1 and 2;
	say "You suddenly feel your body encased in a skin-tight suit. You look down and see you are encased in latex! You feel your feet forced onto tip toes as a pair of latex [if diaper quest is 1]ballet[otherwise]fetish[end if] heels are magically secured to them. ";
	if diaper quest is 0, say "Suddenly you feel your [if the player is female][vagina] and [end if][asshole] invaded by [if the player is male]a plug[otherwise]plugs[end if].[line break][first custom style]Oh no...[roman type][line break]The [if the player is female]rear [end if]plug starts vibrating!";
	let L be a random latex transformation-eligible heels;
	if diaper quest is 1, now L is a random sissy ballet boots;
	if L is clothing, summon L;
	let L be a random latex transformation-eligible bra;
	if diaper quest is 1, now L is rubber mittens;
	if L is clothing, summon L;
	if diaper quest is 0:
		let L be a random off-stage vibrating plug panties;
		if L is clothing, summon L;
	let L be a random black rubber stockings;
	if diaper quest is 1, now L is rubber-baby-bonnet;
	if L is clothing, summon L;
	let L be a random off-stage black catsuit;
	if diaper quest is 1, now L is a random rubber dungarees;
	if L is clothing, summon L;
	repeat with C running through worn cursable clothing:
		if C is discovered varied:
			if a random number between 1 and 4 is 1, now the raw-magic-modifier of C is -2;
			otherwise now the raw-magic-modifier of C is -1;
		now C is identified;
		now C is sure;
		now C is unowned;
		if C is heels:
			now C is posture training;
			now the heel-height of C is 2;
			compute quest of C;
		if C is vibrating plug panties:
			now the damage of C is 7;
			now C is cursed;
		otherwise if C is rubber mittens:
			do nothing;
		otherwise:
			now C is glued;
		if C is overdress:
			layer C correctly;
			if C is posture training, now C is blandness;
	if rubber-baby-bonnet is worn:
		now rubber-baby-bonnet is cursed;
		now baby-summoned is 1;
		now the outfit-charge of rubber-baby-bonnet is -500;
	if diaper quest is 0:
		ruin asshole;
		if the player is female:
			ruin vagina.

[!<InitialiseBondagePrisoner>+

Used at the start of the game to put the necessary bondage items on the player, if that option has been enabled.

+!]
To initialise bondage prisoner:
	let R be a random number between 1 and 2;
	let A be a random off-stage pair of anklecuffs;
	if R is 2:
		now A is a random off-stage pair of handcuffs;
		now A is wrist-bound-in-front;
	let C be a random off-stage chastity cage;
	let G be a random off-stage small ballgag;
	let S be a random off-stage slave collar;
	let D be a random off-stage eligible plentiful diaper;
	summon A locked;
	unless there is worn vibrating plug panties:
		summon C cursed with silent quest;
		if diaper lover >= 1, summon D cursed with silent quest;
	summon G cursed with silent quest;
	summon S cursed with silent quest;
	say "Suddenly, a collar is wrapped around your neck and a pair of metal cuffs latch around your [if R is 2]wrists[otherwise]ankles[end if]![line break][first custom style]Oh come on, that's not fair![roman type][line break][if there is worn vibrating plug panties]You are about to shout your objections to this dick move by Nintendolls when [otherwise]You are suddenly placed in chastity by a cage appearing at your loins!  You don't even have time to consider the implications of this before [end if]your mouth is forced open by the appearance of a [ShortDesc of G]![line break][if D is worn]Just as you think it's over, your eyes widen in shock as a [ShortDesc of D] materialises over your chastity cage![line break][end if][line break][first custom style]'MMMMMMPH!'[roman type][line break]".


[!<InitialiseBondageProtection>+

Used at the start of the game to put the necessary bondage items out of the game, if that option has been enabled.

+!]
To initialise bondage protection:
	repeat with C running through off-stage bondage:
		now C is in holding pen.

Definition: a clothing is pinkWardrobeAppropriate if it is basic loot and it is fetish appropriate and the unworn outrage of it <= 3 + the notManlyFactor of it.
Definition: a knickers is pinkWardrobeAppropriate if it is basic loot and it is fetish appropriate and the unworn outrage of it <= 6 + the notManlyFactor of it.


[!<InitialiseWardrobe>+

Used at the start of the game to put the necessary items in the pink wardrobe.

+!]
To initialise wardrobe:
	let L be a list of clothing;
	let C be a random pinkWardrobeAppropriate undies;
	if roleplay fetish is 1, compute starting headgear;
	if pregnancy fetish is 1 and a random number between 1 and 3 is 1, now C is white-diagram briefs;
	if diaper focus is 1 or (diaper lover >= 1 and a random number between 1 and 2 is 1), now C is a random training pants;
	if C is clothing, add C to L;
	let C be a random pinkWardrobeAppropriate corset;
	if C is clothing, add C to L;
	now C is a random basic loot fetish appropriate heels;
	if C is clothing, add C to L;
	if C is platform heels or C is wedge heels, now the heel-height of C is 3;
	otherwise now the heel-height of C is 1;
	now C is a random pinkWardrobeAppropriate bra;
	if C is clothing, add C to L;
	now the size of C is the largeness of breasts;
	if the size of C > the max size of C, now the size of C is the max size of C;
	if the size of C < the min size of C, now the size of C is the min size of C;
	now C is a random pinkWardrobeAppropriate nylon stockings;
	if C is nothing, now C is a random pinkWardrobeAppropriate stockings;
	if C is clothing, add C to L;
	now C is a random pinkWardrobeAppropriate suspenders;
	if C is clothing, add C to L;
	let C be a random Boobies T-shirt;
	if the player is male and a random number between trap fetish and 1 is 1, now C is a random Gender Bender T-shirt;
	if diaper lover >= 1 and a random number between 1 and 2 is 1, now C is a random I love my wet nappies T-shirt;
	if a random number between 1 and 2 is 1, now C is a random pinkWardrobeAppropriate underdress;
	if a random number between 1 and 2 is 1 or C is nothing, now C is a random pinkWardrobeAppropriate overdress;
	if C is clothing, add C to L;
	if C is unskirted:
		now C is a random basic loot short or longer not-butt-windowed actually dense fetish appropriate skirt;
		if C is clothing, add C to L;
	if diaper focus >= 1:
		let C be a random eligible diaper;
		if easter content is 1, now C is brown-button-diaper;
		if C is clothing, add C to L;
	repeat with X running through L:
		if X is in Standard Item Pen, restock X;
		now X is in pink wardrobe;
		if X is blessed, now X is bland;
		if X is stockings, now the raw-magic-modifier of X is 0;
		if X is suspenders and the raw-magic-modifier of X > 1, now the raw-magic-modifier of X is 1;
		if the raw-magic-modifier of X < -2, now the raw-magic-modifier of X is a random number between -2 and 0;
		if the raw-magic-modifier of X > 2, now the raw-magic-modifier of X is a random number between 0 and 2;
		if X is cursed, assign quest to X;
		otherwise now X is blandness;
		now X is unowned;
	now champagne-glass is sure;
	now champagne-glass is bland;
	now champagne-glass is in pink wardrobe;
	let D be a random off-stage ring;
	now D is sapphire;
	set shortcut of D;
	now D is in pink wardrobe;
	now D is a random off-stage ring;
	now D is emerald;
	set shortcut of D;
	now D is in pink wardrobe;
	if the player is the donator, now combat visor is in pink wardrobe;
	if combatvisor is 1, now combat visor is worn by the player;
	if christmas content is 1:
		initialise christmas gifts;
		now a random santa hat is in pink wardrobe.

To compute starting headgear:
	let H be a random roleplay headgear;
	if latex prisoner is 1, now H is black hood;
	now H is in pink wardrobe;
	now H is cursed.

[!<ScrambleItems>+

REQUIRES COMMENTING

+!]
To Scramble Items:
	Set Up Clothing;
	Set Up Collectibles;
	Set Up Bras;
	follow the setup starting items rules.


Game Universe Initialisation ends here.

