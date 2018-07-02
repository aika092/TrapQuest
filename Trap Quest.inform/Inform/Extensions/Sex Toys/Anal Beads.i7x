Anal Beads by Sex Toys begins here.

An anal beads is a kind of plug. The printed name of anal beads is usually "[TQlink of item described][clothing-title-before][PlugSize size of item described] anal beads[clothing-title-after][TQxlink of item described][verb-desc of item described]". The printed plural name of anal beads is usually "[TQlink of item described][clothing-title-before][PlugSize size of item described] sets of anal beads[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of anal beads is "anb". There is 1 anal beads. An anal beads has a number called notches. The notches of an anal beads is usually 0. An anal beads has a number called notch-taken. The notch-taken of an anal beads is usually 0. Understand "bead", "anal", "beads" as anal beads.

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

Figure of anal beads is the file "Items/Accessories/Toys/analbeads1.png".

To decide which figure-name is clothing-image of (C - an anal beads):
	decide on figure of anal beads.

To say ClothingDesc of (P - an anal beads):
	say "A set of [the notches of P] [PlugSize size of P] beads, connected by a thin cord with a small hook at the end. [if the notch-taken of P is the notches of P]Every single one is currently up your ass. [otherwise if the notch-taken of P is 1]It is currently hanging from your ass.[otherwise if the notches of P > the notch-taken of P and the notch-taken of P > 0][the notch-taken of P] are currently up your ass. [end if][if the notch-taken of P > 1]It won't be easy to remove them all at once.[end if]".

To say ShortDesc of (P - an anal beads):
	say "anal beads".

To compute toyInsertion of (S - an anal beads) into (F - a fuckhole):
	let N be a random number between 1 and 3;[max is 3 at once]
	if S is penetrating asshole, say "You once again begin to push the [printed name of S] into your [variable F] one by one.";
	otherwise say "You start pushing the [printed name of S] into your [variable F] one at a time, starting at the end.";
	if the girth of S > the openness of F + 2:
		if the girth of S > the openness of F + 4, now N is 1;
		otherwise now N is 2;
	if N + the notch-taken of S > the notches of S, now N is (the notches of S - the notch-taken of S);
	let oldN be N;
	while N > 0:
		compute insertionRuin of S into F;
		increase the notch-taken of S by 1;
		decrease N by 1;
	unless S is penetrating F, now S is penetrating F;	
	if the notch-taken of S < the notches of S:
		say "You manage to force in [oldN] bead[if oldN > 1]s[end if], before your sphincter involuntarily tightens up from its ordeal. Looks like you'll have to keep going if you want all of them in...";
	otherwise:
		say "You force the last [if oldN is 1]bead[otherwise][oldN] beads[end if] in, finally allowing your sphincter to relax.".

To compute insertionRuin of (S - an anal beads) into (F - a fuckhole):
	if the girth of S > the openness of F - 4:
		say "The bead [if the girth of S > the openness of F + 1]is so large compared to the openness of your [variable F] that it makes you a bit sore just putting[otherwise]stimulates you as you put[end if] it in.";
		ruin F;
		if the girth of S > the openness of F + 1, ruin F;
	otherwise if the girth of S > the openness of F - 2:
		say "Oof!  You definitely felt that as you pushed it inside.";
	otherwise:
		say "Your [variable F] is loose enough to let the bead slip in easily.".

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
		say "Relaxing your anal muscles, you pull [N] bead[if N > 1]s[end if] out in succession, before your sphincter involuntarily tightens up from its ordeal. Looks like you'll have to keep going if you want it out...";
	otherwise:
		say "Relaxing your anal muscles, you pull [N] bead[if N > 1]s[end if] out in succession, causing the toy to fall out completely.";
	decrease the notch-taken of the noun by N;
	if the notch-taken of the noun < 1:
		now the notch-taken of the noun is 0;[the value will sometimes dip below 0, so we reset to make sure.]
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
		say "[BigNameDesc of M] pulls hard on the cord connected to your [printed name of C], [if R > 1]forcing [R] beads out of your [variable F] in rapid succession.[otherwise]yanking the remaining bead from your [variable F] with little effort.[end if]";
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
		say "[BigNameDesc of M] manages to pull hard enough on your [printed name of C] to remove one bead";
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
		say "[BigNameDesc of current-monster] holds you down as [he of current-monster] pushes the [T] back into your [variable O] one bead at a time.";
		if current-monster is demoness:
			say "Plus one extra! Uh-oh!";
			increase the notches of T by 1;
		now T is worn by the player;
		now T is penetrating O;
		now the notch-taken of T is the notches of T;
		now current-monster is not retaining T.

To compute (M - a ghost) removing (C - an anal beads):
	say "[BigNameDesc of M] floats behind you, dripping precum as it nears your [printed name of C]. Undeterred, it phases into your [chosen-orifice of M], causing the toy to wiggle and throb as it changes shape. [if the relevant sex addiction of C < 4]You whimper as the newly formed dildo slowly begins to fuck you.[otherwise if the relevant sex addiction of C < 6]Shivers run up your spine as the newly formed dildo slowly begins to fuck you.[otherwise]A shiver of anticipation runs up your spine as the newly formed dildo beings to fuck you.[end if]";
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


Ritual-beads is an anal beads. The printed name of ritual-beads is usually "[TQlink of item described][clothing-title-before][PlugSize size of item described] ritual beads[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of ritual-beads is "rtb". The notches of ritual-beads is 3. Understand "ritual", "ritual beads" as ritual-beads. Ritual-beads has a number called charge. The charge of ritual-beads is 0.

To say ClothingDesc of (P - ritual-beads):
	say "A set of [the notches of P] brown beads, connected by a thin cord, each bead slightly thicker than the last.  [if the notch-taken of P is the notches of P]Every single one is currently up your ass. [otherwise if the notch-taken of P is 1]It is currently hanging from your ass.[otherwise if the notches of P > the notch-taken of P and the notch-taken of P > 0][the notch-taken of P] are currently up your ass. [end if][if the notch-taken of P > 1]It won't be easy to remove them all at once.[end if]".

To uniquely set up (C - a ritual-beads):
	now the size of C is 3;
	now the notches of C is 3.

Definition: ritual-beads is cult garb:
	decide yes.

[To decide which number is the size of (C - ritual-beads):
	if the notch-taken of C < 2, decide on 1;
	decide on the notch-taken of C.]

To decide which number is the strength-influence of (C - ritual-beads):
	let P be prayer-beads;
	unless P is worn, decide on 0;
	let F be 0;
	let T be the notch-taken of C;
	if T > the charge of C, increase F by the charge of C / 2;
	otherwise increase F by T / 2;
	increase F by the magic-modifier of C;
	if (the class of the player is cultist and P is cursed) or P is blessed, decide on F;
	decide on F * -1.

To decide which number is the humiliation-influence of (C - ritual-beads):
	let P be prayer-beads;
	unless P is blessed, decide on 0;
	let T be the notch-taken of C;
	if T > the charge of C, decide on the charge of C;
	decide on T.

To decide which number is the bimbo-influence of (C - ritual-beads):
	let P be prayer-beads;
	unless P is cursed, decide on 0;
	let T be the notch-taken of C;
	if T > the charge of C, decide on the charge of C * -1;
	decide on T * -1.


To decide which number is the dexterity-influence of (C - ritual-beads):
	let P be prayer-beads;
	unless P is worn, decide on 0;
	let F be 0;
	let T be the notch-taken of C;
	if T > the charge of C, increase F by the charge of C / 2;
	otherwise increase F by T / 2;
	increase F by the magic-modifier of C;
	if (the class of the player is cultist and P is cursed) or P is blessed, decide on F;
	decide on F * -1.

Anal Beads ends here.

