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
	if diaper messing >= 3, now rectum is 1;
	if debugmode > 1, say "Finished setting up monsters.";
	if halloween content is 1:
		now playerRegion is Mansion;
		Set Up The Woods;
		follow the setting up woods monsters rules;
		Set Up The Mansion;
		follow the setting up mansion monsters rules;
		repeat with M running through alive nonexistent monsters:
			set up M;
		wait until animations are over;
		now the player is in Mansion01;
	otherwise:
		wait until animations are over;
		now the player is in Dungeon12;
	resolve graphics windows mayhem;
	fix window overhang;
	if debugmode > 1, say "Now configuring pink smoke.";
	move pink smoke backdrop to all smoky rooms;
	move water-body backdrop to all water-bodied rooms;
	if debugmode > 1, say "Now configuring toilets.";
	move toilet backdrop to all toilets rooms;
	move urinal backdrop to all urinals rooms;
	if spontaneous tattoos is 1:
		if background-pure is 1, summon virgin void tattoo;
		otherwise summon ink-me tattoo;
		say "You notice that [if latex prisoner is 0 and halloween content is 0 and christmas content is 0]you are naked, and that [end if]you have a tattoo of the [if background-pure is 1]word 'VIRGIN' on your belly[otherwise]words 'INK ME' on the back of your left hand[end if].[line break]";
		focus-consider a random worn tattoo;
	if background-nurse is 1:
		let B be a random bandage;
		now B is held by the player;
		say "You notice that you seem to have some medical supplies. Handy![line break]";
	if christmas content is 1:
		if diaper lover > 0:
			now christmas bonnet is worn by the player; [if we summon it, it'll summon the default outfit too and we don't want that]
			now christmas bonnet is cursed;
			now christmas bonnet is sure;
			now christmas bonnet is identified;
			uniquely set up christmas bonnet;
			summon naughty-or-nice outfit;
			summon plain-small-diaper uncursed;
			let FGS be a random frilly green socks;
			summon FGS uncursed;
			now the raw-magic-modifier of FGS is 2;
			now FGS is charisma-influencing;
			say "You seem to have been given some kind of... festive baby outfit and diaper to wear?! This must be some weird Christmas-themed event...";
		otherwise:
			now conic santa hat is worn by the player; [if we summon it, it'll summon the default outfit too and we don't want that]
			now conic santa hat is cursed;
			now conic santa hat is sure;
			now conic santa hat is identified;
			uniquely set up conic santa hat;
			summon present outfit;
			increase the transform-resistance of present outfit by 1;
			say "You seem to have been given some kind of... sexy festive outfit to wear?! This must be some weird Christmas-themed event...";
	if halloween content is 1:
		set up vampiress;
		now vampiress is in Mansion01;
		now vampiress is interested;
		calm vampiress;
		now the pink pill is in pink wardrobe;
		now candy corn is in Mansion28;
		now liquorice is in Mansion36;
		now strawberry lace is in Mansion16;
		let H be a random fetish appropriate halloween headgear;
		compute full outfit summon of H;
		let C be bat-pattern-corset;
		if diaper quest is 1, now C is bat-shape-corset;
		now C is in the location of the player;
		now C is cursed;
		now C is provocation;
		now the raw-magic-modifier of C is a random number between 1 and 3;
		let SM be a random space mead;
		now SM is in the location of the player;
		say "[second custom style]Ding Dong![roman type][line break]The giant manor house's doorbell sounds surprisingly cheerful and welcoming considering how scary the place looks from the outside. And yet, when the door opens, it opens with a creepy creak like you might expect from such an old and grand door. The [man of vampiress] who greets you has red eyes and very, very pale skin. [big he of vampiress] looks at your bare chest.[line break][if the player is sexed female][speech style of vampiress]'Nice tits.'[roman type][line break][end if]You look down and see that half of your outfit is for some reason on the ground in front of you instead of covering your chest![line break][variable custom style]'Trick or treat[if diaper lover > 0]! And, erm, could I use your bathroom?'[otherwise]!'[end if][roman type][line break]You say automatically, without thinking. [if diaper lover > 0]It's true - you really really do need the loo. [end if]The [man of vampiress] licks [his of vampiress] lips.[line break][speech style of vampiress]'[if diaper lover > 0]Why of course you can sweetie. Come on in...'[otherwise]Why not both?'[end if][roman type][line break][big he of vampiress] offers seductively, before ushering you inside.[line break][speech style of vampiress]'I did have some candy for you but my house is so big that I've lost it all somewhere around here. Why don't you have a little look around and see if you can find it all? There should be [bold type]three pieces of candy[roman type] [speech style of vampiress]for you to find. Feel free to eat it all when you find it.'[roman type][line break]You also notice a [C] on the ground nearby. You sense that wearing it should make you feel much more powerful! Intriguing...";
		if diaper lover > 0, now the bladder of the player is 8;
		if diaper messing >= 3, now rectum is 11;
		if diaper quest is 1:
			set up ghostly tentacle;
			now ghostly tentacle is in a random placed mandatory haunted room;
		display inventory-focus stuff;
	otherwise:
		now the pink pill is carried by the player;
		say "You notice you are holding a small pink pill in your hand.";
	if latex prisoner is 1, initialise latex prisoner;
	if bondage prisoner is 1, initialise bondage prisoner;
	if bondage protection is 2, initialise bondage protection;
	if debugmode > 1, say "Now initialising wardrobe.";
	initialise wardrobe;
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
		[now background colour entry is lightModeWhiteHex;]
		if style name entry is normal-style[ or style name entry is bold-style or style name entry is italic-style], now colour entry is lightModeTextHex;
		if style name entry is special-style-1, now colour entry is lightModeSpecial1Hex;
	follow the set generic text styles rule;
	repeat with W running through g-window:
		if W is graphics g-window, now the background colour of W is lightModeWhiteGraphicsHex;
		otherwise now the background colour of W is lightModeWhiteTextHex;
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
	say "You suddenly feel your body encased in a skin-tight suit. You look down and see you are encased in latex! You feel your feet forced onto tip toes as a pair of latex [if diaper quest is 1]ballet[otherwise]fetish[end if] heels are magically secured to them. [if diaper quest is 0 and black hood is actually summonable]Your mouth is opened wide by a ring-gag as a latex hood appears over your face! [end if]";
	if diaper quest is 0, say "Suddenly you feel your [if the player is possessing a vagina][vagina] and [end if][asshole] invaded by [if the player is not possessing a vagina]a plug[otherwise]plugs[end if].[line break][first custom style]Oh no...[roman type][line break]The [if the player is possessing a vagina]rear [end if]plug starts vibrating!";
	let L be a random latex transformation-eligible heels;
	if diaper quest is 1, now L is a random sissy ballet boots;
	if L is actually summonable clothing, summon L;
	if diaper quest is 0:
		let L be a random latex transformation-eligible bra;
		if L is actually summonable clothing, summon L;
	let L be black rubber mittens;
	if diaper quest is 1, now L is rubber mittens;
	if L is actually summonable clothing, summon L;
	let L be a random off-stage vibrating plug panties;
	if diaper quest is 1, now L is a random rubber diaper;
	if L is actually summonable clothing, summon L;
	if diaper quest is 0:
		let BRS be a random black rubber stockings;
		if BRS is actually summonable, summon BRS;
	if diaper quest is 1 and rubber-baby-bonnet is actually summonable, summon rubber-baby-bonnet uncursed;
	let L be black-catsuit;
	if diaper quest is 1, now L is a random rubber jacket;
	if L is actually summonable clothing, summon L;
	if black hood is actually summonable, summon black hood cursed;
	repeat with C running through worn clothing:
		if C is latex or C is pvc:
			if C is discovered varied:
				if a random number between 1 and 4 is 1, now the raw-magic-modifier of C is -1;
				otherwise now the raw-magic-modifier of C is 0;
			now C is identified;
			now C is sure;
			now C is unowned;
			if C is not headgear:
				now C is bland;
				if C is heels:
					now C is posture training;
					now the heel-height of C is 2;
					compute quest of C;
				otherwise if C is vibrating plug panties:
					now the damage of C is 7;
				if C is rubber mittens:
					now the glue timer of C is a random number between 230 and 250;
				otherwise:
					now the glue timer of C is a random number between 425 and 500;
			if C is overdress:
				layer C correctly;
				if C is posture training, now C is blandness;
	if rubber-baby-bonnet is worn:
		now rubber-baby-bonnet is cursed;
		now the quest of rubber-baby-bonnet is just-wait-quest;
	if there is worn vibrating plug panties:
		ruin asshole;
		if the player is possessing a vagina, ruin vagina.

[!<InitialiseBondagePrisoner>+

Used at the start of the game to put the necessary bondage items on the player, if that option has been enabled.

+!]
To initialise bondage prisoner:
	let R be a random number between 1 and 2;
	let A be a random off-stage pair of anklecuffs;
	if R is 2:
		now A is a random off-stage pair of handcuffs;
		now A is wrist-bound-in-front;
	let C be a random off-stage actually summonable chastity bond;
	let G be a random off-stage small ballgag;
	let S be a random off-stage slave collar;
	let D be a random off-stage eligible plentiful diaper;
	if A is actually summonable clothing, summon A locked;
	unless there is worn vibrating plug panties:
		summon C cursed with silent quest;
	if diaper lover >= 1 and D is actually summonable clothing, summon D cursed with silent quest;
	if G is actually summonable clothing, summon G cursed with silent quest;
	if S is actually summonable clothing, summon S cursed with silent quest;
	say "Suddenly, a collar is wrapped around your neck and a pair of metal cuffs latch around your [if R is 2]wrists[otherwise]ankles[end if]![line break][first custom style]Oh come on, that's not fair![roman type][line break][if there is worn vibrating plug panties]You are about to shout your objections to this dick move by Nintendolls when [otherwise]You are suddenly placed in chastity by a cage appearing at your loins! You don't even have time to consider the implications of this before [end if]your mouth is forced open by the appearance of a [ShortDesc of G]![line break][if D is worn]Just as you think it's over, your eyes widen in shock as a [ShortDesc of D] materialises over your chastity cage![line break][end if][line break][first custom style]'MMMMMMPH!'[roman type][line break]".

[!<InitialiseBondageProtection>+

Used at the start of the game to put the necessary bondage items out of the game, if that option has been enabled.

+!]
To initialise bondage protection:
	repeat with C running through off-stage bondage:
		now C is in holding pen.

Definition: a clothing is pinkWardrobeAppropriate:
	if it is basic loot and the unworn outrage of it <= 3 + the notManlyFactor of it and (diaper quest is 0 or the unworn cringe of it <= 3 + the notManlyFactor of it), decide yes;
	decide no.
Definition: a bra is pinkWardrobeAppropriate:
	if it is fetish appropriate and it is not in pink wardrobe and it is not unique and (the player is male or the min size of it <= the largeness of breasts) and the max size of it >= the largeness of breasts + 2 and it is actually dense and it is not product and the support of it > 0 and the unworn outrage of it <= 3 + the notManlyFactor of it and (diaper quest is 0 or the unworn cringe of it <= 4 + the notManlyFactor of it), decide yes;
	decide no. [We allow rare bras]
Definition: a knickers is pinkWardrobeAppropriate:
	if it is basic loot and the unworn outrage of it <= 6 + the notManlyFactor of it and (diaper quest is 0 or the unworn cringe of it <= 3 + the notManlyFactor of it), decide yes;
	decide no.

[!<InitialiseWardrobe>+

Used at the start of the game to put the necessary items in the pink wardrobe.

+!]
To initialise wardrobe:
	let L be a list of clothing;
	let C be a random pinkWardrobeAppropriate undies;
	if roleplay fetish is 1, compute starting headgear;
	if pregnancy fetish is 1, now C is white-diagram briefs;
	if diaper lover >= 1:
		now C is a random training pants;
		if tough-shit is 1:
			now the bladder of the player is 9;
			say "[bold type]You are bursting to pee![line break][variable custom style]Crap, how unfair! I've got to find a toilet right away or I'm going to piss myself![roman type][line break]";
	if C is clothing, add C to L;
	now C is a random pinkWardrobeAppropriate bikini top;
	if C is bikini top:
		add C to L;
		now the size of C is the largeness of breasts;
		if the size of C > the max size of C, now the size of C is the max size of C;
		if the size of C < the min size of C, now the size of C is the min size of C;
	now C is a random pinkWardrobeAppropriate nylon stockings;
	if C is nothing, now C is a random pinkWardrobeAppropriate stockings;
	if C is clothing, add C to L;
	let C be a random Boobies T-shirt;
	if the player is male and a random number between trap fetish and 1 is 1, now C is a random Gender Bender T-shirt;
	if diaper lover >= 1 and a random number between 1 and 2 is 1, now C is a random I love my wet nappies T-shirt;
	if a random number between 1 and 2 is 1, now C is a random unskirted pinkWardrobeAppropriate underdress;
	if a random number between 1 and 2 is 1 or C is nothing, now C is a random unskirted pinkWardrobeAppropriate overdress;
	if C is clothing, add C to L;
	now C is a random basic loot short or longer not-butt-windowed actually dense pinkWardrobeAppropriate skirt;
	if C is clothing, add C to L;
	if diaper focus >= 1:
		let C be a random eligible diaper;
		if easter content is 1, now C is brown-button-diaper;
		if C is clothing, add C to L;
	repeat with X running through L:
		if X is listed in Standard Item Pen:
			restock X;
		blandify and reveal X;
		now X is in pink wardrobe;
	let CG be champagne-glass;
	if diaper quest is 1:
		if alcohol fetish is 0, now CG is novelty mug;
		otherwise now CG is cocktail-glass;
	now CG is sure;
	now CG is bland;
	now CG is in pink wardrobe;
	let D be a random off-stage plentiful ring;
	now D is sapphire;
	set shortcut of D;
	now D is in pink wardrobe;
	now D is a random off-stage plentiful ring;
	now D is emerald;
	set shortcut of D;
	if background-rich is 1:
		let D be a random off-stage plentiful ring;
		now D is sapphire;
		set shortcut of D;
		now D is in pink wardrobe;
		now D is a random off-stage plentiful ring;
		now D is sapphire;
		set shortcut of D;
		let D be a random off-stage plentiful bracelet;
		now D is sapphire;
		set shortcut of D;
		now D is in pink wardrobe;
		now D is a random off-stage plentiful bracelet;
		now D is sapphire;
		set shortcut of D;
		now D is in pink wardrobe;
		now D is a random off-stage plentiful necklace;
		now D is sapphire;
		set shortcut of D;
	now D is in pink wardrobe;
	if the player is the donator, now combat visor is in pink wardrobe;
	if combatvisor is 1, now combat visor is worn by the player;
	if christmas content is 1, initialise christmas gifts.

To compute starting headgear:
	let H be a random roleplay headgear;
	now H is in pink wardrobe;
	now H is cursed.

To Scramble Items:
	Set Up Clothing;
	Set Up Collectibles;
	Set Up Bras;
	set up store;
	follow the setup starting items rules;
	sort Standard Item Pen in random order.

Game Universe Initialisation ends here.
