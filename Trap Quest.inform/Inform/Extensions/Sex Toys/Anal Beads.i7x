Anal Beads by Sex Toys begins here.

An anal beads is a kind of plug. The printed name of anal beads is usually "[TQlink of item described][clothing-title-before][PlugSize size of item described] anal beads[clothing-title-after][TQxlink of item described][verb-desc of item described]". The printed plural name of anal beads is usually "[TQlink of item described][clothing-title-before][PlugSize size of item described] sets of anal beads[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of anal beads is "anb". There is 1 anal beads. An anal beads has a number called notches. The notches of an anal beads is usually 0. An anal beads has a number called notch-taken. The notch-taken of an anal beads is usually 0. Understand "bead", "anal" as anal beads.

To summon (S - an anal beads):
	now S is not penetrating vagina;
	now S is worn by the player;
	now S is penetrating asshole;
	now the notch-taken of S is the notches of S + a random number between -1 and 1.

To uniquely set up (C - an anal beads):
	now the size of C is a random number between 3 and 10;
	now the notches of C is a random number between 5 and 6;
	if the size of C > 7, now the notches of C is a random number between 4 and 3;
	let R be a random number between 1 and 15;
	if R < 3 and diaper quest is 0, now C is temptation;
	if R < 5 and the size of C < 6, now C is expansion;
	if R is 5, now C is stumbling;
	if R is 6, now C is refreshment.

To decide which object is the potential-upgrade-target of (C - an anal beads):
	decide on nothing.

Definition: an anal beads (called C) is untransformable:
	decide yes.

To compute periodic effect of (C - an expansion anal beads):
	increase the toy-charge of C by 1;
	if the toy-charge of C > 40:
		now the toy-charge of C is 0;
		if a random number between 4 and 10 > the notches of C:
			say "Your [ShortDesc of C] grows, and another bead forces itself into your [asshole]";
			increase the notches of C by 1;
			increase the notch-taken of C by 1;
			if the player is male, PenisUp 1;
		otherwise if the size of C < 10:
			say "Your [ShortDesc of C] drastically increases in size!";
			increase the size of C by 1;
			let F be a random fuckhole penetrated by C;
			if the size of C > the openness of F, Ruin F;
			if the player is male, PenisUp 1.

Figure of anal beads is the file "analbeads1.png".

To decide which figure-name is clothing-image of (C - an anal beads):
	decide on figure of anal beads.

To say ClothingDesc of (P - an anal beads):
	say "A set of [the notches of P] [PlugSize size of P] beads, connected by a thin cord with a small hook at the end. [if the notch-taken of P is the notches of P]Every single one is currently up your ass. [otherwise if the notch-taken of P is 1]It is currently hanging from your ass.[otherwise if the notches of P > the notch-taken of P and the notch-taken of P > 0][the notch-taken of P] are currently up your ass. [end if][if the notch-taken of P > 1]It won't be easy to remove them all at once.[end if]".

To say ShortDesc of (P - an anal beads):
	say "anal beads".

Carry out unplugging anal beads:
	let N be a random number between 3 and the notch-taken of the noun;
	if N >= 3, now N is 2;
	if N > the notch-taken of the noun, now N is the notch-taken of the noun;
	if the player is in danger:
		say "Blood rushes to your head as you feel incredibly humiliated, submissively pulling the [PlugSize size of item described] beads out of your fuckhole, [if the notch-taken of the noun > N]creating a perverted show[otherwise]making it available[end if] for the [printed name of random unfriendly interested monster in the location of the player]. Your cheeks turn a beetroot shade of red.";
		humiliate 125;[the process is more humiliating overall, but less so on a bead by bead basis]
		compute player submission;
	if the girth of the noun > the openness of a random orifice penetrated by the noun + 2:
		let R be a random number between 1 and 2;[50% chance to double the soreness.]
		if N is 1, now R is 1;
		say "You hear a loud 'PLOP' as a [PlugSize size of the noun] bead comes out of your [random orifice penetrated by the noun][if N is 1].[otherwise if N is 2], followed shortly after by a second, quieter pop as another one of the [printed name of the noun] slips out through your relaxed sphincter.[end if]";
		ruin a random orifice penetrated by the noun times R;
	otherwise if the notch-taken of the noun > N:
		say "Relaxing your anal muscles, you pull [N] bead[if N > 1]s[end if] out in succession, but you can't manage much more without hurting yourself from this angle, so you stop.";
	otherwise:
		say "Relaxing your anal muscles, you pull [N] bead[if N > 1]s[end if] out in succession, causing the toy to fall out completely.";
	decrease the notch-taken of the noun by N;
	if the notch-taken of the noun < 1:
		now the notch-taken of the noun is 0;[the value will sometimes dip below 1, so we reset to make sure.]
		now the noun is not penetrating asshole;
		now the noun is not penetrating vagina;
		now the noun is carried by the player.

To compute (M - a monster) removing (C - an anal beads):
	let F be a random fuckhole;
	while C is not penetrating F:
		now F is a random fuckhole;
	if M is intelligent:
		let R be a random number between 3 and the notch-taken of C;
		if the notch-taken of C > 2, now the notch-taken of C is 3;
		say "The [M] pulls hard on the cord connected to your [printed name of C], [if R > 1]forcing [R] beads out of your [variable F] in rapid succession.[otherwise]yanking the remaining bead from your [variable F] with little effort.[end if]";
		if the notch-taken of C - R > 0:
			say "[big he of M] gives your [AssDesc] a vicious smack and leaves you alone.";
			decrease the notch-taken of C by R;
			DelicateUp 1;
			bore M;
		otherwise:
			now the notch-taken of C is 0;
			now C is in holding pen;
			now M is retaining C;
			dislodge C;
		if F is asshole, ruin asshole times R;
		otherwise ruin vagina times R;
	otherwise:
		say "The [M] manages to pull hard enough on your [printed name of C] to remove one bead";
		ruin F;
		if the notch-taken of C - 1 > 0:
			say ", losing interest after that isn't enough.";
			bore M;
		otherwise:
			say ", tossing it on the floor.";
			now C is in the location of the player;
			dislodge C.

To compute replacement of (T - an anal beads) in (O - an orifice):
	unless O is actually occupied or current-monster is not intelligent:
		say "The [current-monster] holds you down as [he of current-monster] pushes the [T] back into your [variable O] one bead at a time.";
		if current-monster is demoness:
			say "Plus one extra! Uh-oh!";
			increase the notches of T by 1;
		now T is worn by the player;
		now T is penetrating O;
		now the notch-taken of T is the notches of T;
		now current-monster is not retaining T.

To compute (M - a ghost) removing (C - an anal beads):
	say "The [M] floats behind you, dripping precum as it nears your [printed name of C]. Undeterred, it phases into your [chosen-orifice of M], causing the toy to wiggle and throb as it changes shape. [if the sex addiction of the player < 8]You whimper as the newly formed dildo slowly begins to fuck you.[otherwise if the sex addiction of the player < 12]Shivers run up your spine as the newly formed dildo slowly begins to fuck you.[otherwise]A shiver of anticipation runs up your spine as the newly formed dildo beings to fuck you.[end if]";
	now C is in the holding pen;
	now M is retaining C;
	dislodge C;
	now M is penetrating chosen-orifice of M.

To finish possession of (T - an anal beads) in (O - an orifice):
	if the size of T < 10 and the size of T < (the notches of T + 3) and a random number between 1 and 2 is 1:
		increase the size of T by 1;
		decrease the notches of T by 1;
		say "The [T] returns gradually to its original shape, leaving [notches of T] thickened beads up your ass.";
	otherwise:
		increase the notches of T by 1;
		say "The [T] returns gradually to its original shape, leaving [notches of T] beads up your ass.";
	now T is worn by the player;
	now T is cursed;
	now T is penetrating O;
	now the notch-taken of T is the notches of T;
	now current-monster is not retaining T;
	now T is worn by the player.

To decide which number is the original price of (C - an anal beads):
	decide on the notches of C.

[Haunted beads: locked at ass openness + 1. Beads only come out if pulled by npc or if repeatedly blessed.]


Anal Beads ends here.

