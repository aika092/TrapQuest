Game Universe Initialisation by Miscellaneous Backend begins here.


[!<StartTheMachine>+

The button has been pushed, let's set up the actual game environment. Doing this separately from engine initialisation allows us to split up the setup lag at the start of the game into two chunks.

+!]
To Start The Machine:
	Set Up The Dungeon;
	Set Up Monsters;
	if debugmode > 1, say "Finished setting up monsters.";
	if debugmode > 1, say "Now configuring pink smoke.";
	move pink smoke backdrop to all smoky rooms;
	if debugmode > 1, say "Now configuring toilets.";
	move toilet backdrop to all toilets rooms;
	now the player is in Dungeon12;
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
	[Depending on which way round we open the character window and map window, one will be bigger than the other. So we have allowed the user to decide which with the "larger window" option.]
	if character larger is 1 and side images > 0, display stuff;
	if map images is 1, display entire map;
	if character larger is 0 and side images > 0, display stuff;
	if inline hyperlinks >= 1:
		initialise hyperlink stuff;
		fill hyperlink window;
	display entire map; [Otherwise setting up hyperlinks will have fucked up the map screen size]
	if the player is able to automatically slap or the player is able to automatically knee or the player is able to automatically kick, do nothing. [For some reason the first time these queries are called, it causes newlines we don't want. So let's make that happen here.]

[!<InitialiseLatexPrisoner>+

Used at the start of the game to encase the player in latex items, if that option has been enabled.

+!]
To initialise latex prisoner:
	let R be a random number between 1 and 2;
	say "You suddenly feel your body encased in a skin-tight suit. You look down and see you are encased in latex!  You feel your feet forced onto tip toes as a pair of latex fetish heels are magically secured to them. Suddenly you feel your [if the player is female][vagina] and [end if][asshole] invaded by [if the player is male]a plug[otherwise]plugs[end if].[line break][first custom style]Oh no...[roman type][line break]The [if the player is female]rear [end if]plug starts vibrating!";
	now a random off-stage latex basic loot heels is worn by the player;
	now a random off-stage latex basic loot bra is worn by the player;
	now a random off-stage vibrating plug panties is worn by the player;
	now a random black rubber stockings is worn by the player;
	now a random off-stage catsuit is worn by the player;
	repeat with C running through worn clothing:
		now C is cursed;
		if a random number between 1 and 4 is 1, now the raw-magic-modifier of C is -2;
		otherwise now the raw-magic-modifier of C is -1;
		now C is identified;
		now C is sure;
		now C is normal;
		if C is heels:
			now C is posture training;
			now the heel-height of C is 2;
			compute quest of C;
		if C is vibrating plug panties:
			now the damage of C is 7;
			now C is penetrating asshole;
			if the player is female, now C is penetrating vagina;
		if C is overdress:
			layer C correctly;
			if C is posture training, now C is blandness;
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
		summon C cursed;
		if diaper lover >= 1, summon D cursed;
	summon G cursed;
	summon S cursed;
	say "Suddenly, a collar is wrapped around your neck and a pair of metal cuffs latch around your [if R is 2]wrists[otherwise]ankles[end if]![line break][first custom style]Oh come on, that's not fair![roman type][line break][if there is worn vibrating plug panties]You are about to shout your objections to this dick move by Nintendolls when [otherwise]You are suddenly placed in chastity by a cage appearing at your loins!  You don't even have time to consider the implications of this before [end if]your mouth is forced open by the appearance of a [printed name of G]![line break][if D is worn]Just as you think it's over, your eyes widen in shock as a [printed name of D] materialises over your chastity cage![line break][end if][line break][first custom style]'MMMMMMPH!'[roman type][line break]".


[!<InitialiseBondageProtection>+

Used at the start of the game to put the necessary bondage items out of the game, if that option has been enabled.

+!]
To initialise bondage protection:
	repeat with C running through off-stage bondage:
		now C is in holding pen.

[!<InitialiseWardrobe>+

Used at the start of the game to put the necessary items in the pink wardrobe.

+!]
To initialise wardrobe:
	let U be a random off-stage basic loot undies;
	if roleplay fetish is 1, compute starting headgear;
	if pregnancy fetish is 1 and a random number between 1 and 3 is 1, now U is white-diagram briefs;
	if diaper lover >= 1, now U is a random training pants;
	now U is in pink wardrobe;
	let C be a random basic loot corset;
	if C is clothing, now C is in pink wardrobe;
	now C is a random basic loot heels;
	now C is in pink wardrobe;
	if C is platform heels or C is wedge heels, now the heel-height of C is 4;
	otherwise now the heel-height of C is 2;
	now C is a random basic loot bra;
	now C is in pink wardrobe;
	now C is a random basic loot short or longer skirt;
	now C is in pink wardrobe;
	now C is a random basic loot stockings;
	now C is in pink wardrobe;
	now C is a random basic loot suspenders;
	if C is clothing, now C is in pink wardrobe;
	let T be a random Gang Bang Girl T-shirt;
	if the player is male, now T is a random Gender Bender T-shirt;
	if diaper lover >= 1, now T is a random I love my wet nappies T-shirt;
	if a random number between 1 and 2 is 1, now T is a random basic loot overdress;
	now T is in pink wardrobe;
	if diaper focus >= 1:
		now  a random bunny diaper is in pink wardrobe;
		now a random bunny diaper is normal; [Just in case it had been put in the shop]
	repeat with X running through clothing in pink wardrobe:
		if X is blessed, now X is bland;
		if X is cursed, assign quest to X;
		otherwise now X is blandness;
		now X is normal;
	now champagne-glass is sure;
	now champagne-glass is bland;
	now champagne-glass is in pink wardrobe;
	if the player is the donator, now combat visor is in pink wardrobe;
	if christmas content is 1, now a random santa hat is in pink wardrobe.

["only destroy": with the new imprinting functionality when clothing is destroyed, Aika introduced the concept of "only destroy". This is used when you want to destroy clothing without causing any imprinting effect on the player.]

[!<ComputeStartingHeadgear>+

REQUIRES COMMENTING

+!]
To compute starting headgear:
	repeat with H running through on-stage headgear:
		only destroy H;[takes care of things like scrunchies and cultist veils]
	let H be a random roleplay headgear;
	let C be 0;
	while C < 2 and H is scrunchie:
		now H is a random roleplay headgear;
		increase C by 1;[because there are six times as many scrunchies as other types of headgear, we re-roll up to two times if we get a scrunchie]
	now the raw-magic-modifier of H is a random number between 0 and -2;
	if H is royal circlet or H is sissy bow, increase the raw-magic-modifier of H by 3;
	if H is white hood or H is vampiric fangs or H is pink scrunchie or H is monkey scrunchie, increase the raw-magic-modifier of H by 2;
	if H is cat ears or H is rubber top hat or H is black hood or H is cultist veil, increase the raw-magic-modifier of H by 1;
	if H is scrunchie:
		let M be the raw-magic-modifier of H;
		if H is blue scrunchie:
			repeat with S running through blue scrunchies:
				now the raw-magic-modifier of S is M;
				now S is in pink wardrobe;
		if H is pink scrunchie:
			repeat with S running through pink scrunchies:
				now the raw-magic-modifier of S is M;
				now S is in pink wardrobe;
	otherwise:
		now H is in pink wardrobe.


[!<ScrambleItems>+

REQUIRES COMMENTING

+!]
To Scramble Items:
	Set Up Clothing;
	Set Up Collectibles;
	Set Up Bras;
	follow the setup starting items rules.


Game Universe Initialisation ends here.

