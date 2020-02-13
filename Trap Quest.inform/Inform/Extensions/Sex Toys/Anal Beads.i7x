Anal Beads by Sex Toys begins here.

An anal beads is a kind of plug. The printed name of anal beads is usually "[clothing-title-before][PlugSize size of item described] anal beads[clothing-title-after]". The printed plural name of anal beads is usually "[clothing-title-before][PlugSize size of item described] sets of anal beads[clothing-title-after]". The text-shortcut of anal beads is "anb". There is 1 anal beads. An anal beads has a number called notches. An anal beads has a number called notch-taken. Understand "bead", "anal", "beads" as anal beads.

To compute unique summoning of (S - an anal beads):
	now the notch-taken of S is the notches of S + (a random number between -1 and 0).

To compute unique dislodging of (P - an anal beads):
	now the notch-taken of P is 0.

To uniquely set up (C - an anal beads):
	now the size of C is a random number between 3 and 10;
	now the notches of C is a random number between 5 and 6;
	if the size of C > 7, now the notches of C is a random number between 4 and 3;
	let R be a random number between 1 and 15;
	if R < 3 and diaper quest is 0, now C is temptation;
	if R < 5 and the size of C < 6, now C is expansion;
	if R is 5, now C is stumbling;
	if R is 6, now C is refreshment.

To uniquely destroy (T - an anal beads):
	now the notch-taken of T is 0.


Definition: an anal beads is transformation-protected: decide yes.
Definition: an anal beads is black themed: decide yes.


To decide which object is the at least partial concealer of (S - an anal beads):
	if the notch-taken of S >= the notches of S, decide on asshole;
	repeat with O running through worn clothing:
		if S is penetrating asshole:
			if O is potentially at least partially asshole covering clothing, decide on O;
		if S is penetrating vagina:
			if O is potentially at least partially vagina covering clothing, decide on O;
	decide on nothing.


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

Figure of anal beads 0 is the file "Items/Accessories/Toys/analbeads0.jpg".
Figure of anal beads 1 is the file "Items/Accessories/Toys/analbeads1.jpg".
Figure of anal beads 2 is the file "Items/Accessories/Toys/analbeads2.jpg".
Figure of anal beads 3 is the file "Items/Accessories/Toys/analbeads3.jpg".
Figure of anal beads 4 is the file "Items/Accessories/Toys/analbeads4.jpg".
Figure of anal beads 5 is the file "Items/Accessories/Toys/analbeads5.jpg".
Figure of anal beads 6 is the file "Items/Accessories/Toys/analbeads6.jpg".
Figure of anal beads 7 is the file "Items/Accessories/Toys/analbeads7.jpg".
Figure of anal beads 8 is the file "Items/Accessories/Toys/analbeads8.jpg".
Figure of anal beads 9 is the file "Items/Accessories/Toys/analbeads9.jpg".
Figure of anal beads 10 is the file "Items/Accessories/Toys/analbeads10.jpg".

To decide which figure-name is clothing-image of (C - an anal beads):
	let N be the notches of C - the notch-taken of C;
	if N <= 0, decide on figure of anal beads 0;
	if N is 1, decide on figure of anal beads 1;
	if N is 2, decide on figure of anal beads 2;
	if N is 3, decide on figure of anal beads 3;
	if N is 4, decide on figure of anal beads 4;
	if N is 5, decide on figure of anal beads 5;
	if N is 6, decide on figure of anal beads 6;
	if N is 7, decide on figure of anal beads 7;
	if N is 8, decide on figure of anal beads 8;
	if N is 9, decide on figure of anal beads 9;
	decide on figure of anal beads 10.

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
		say "You force the last [if oldN is 1]bead[otherwise][oldN] beads[end if] in, finally allowing your sphincter to relax.";
	force clothing-focus redraw. [This forces the clothing window to redraw]

To compute insertionRuin of (S - an anal beads) into (F - a fuckhole):
	if the girth of S > the openness of F - 4:
		say "The bead [if the girth of S > the openness of F + 1]is so large compared to the openness of your [variable F] that it makes you a bit sore just putting[otherwise]stimulates you as you put[end if] it in.";
		ruin F;
	otherwise if the girth of S > the openness of F - 2:
		say "Oof! You definitely felt that as you pushed it inside.";
		passively stimulate F from S;
	otherwise:
		say "Your [variable F] is loose enough to let the bead slip in easily.".

Carry out unplugging anal beads:
	let N be 0;
	if the notch-taken of the noun > 1:
		say "There are [notch-taken of the noun] beads inside you. How many do you want to pull out? ";
		let validAnswer be 0;
		while validAnswer is 0:
			display focus stuff;
			display stuff;
			let F be YesNoBackground;
			if F is not Figure of no-image-yet:
				zero map-link-table;
				zero map-button-table;
				let H be the height of the map-window;
				let W be the width of the map-window;
				[Calculate background image size]
				let XRatio be (W * 1.0) / the pixel-width of F;
				let FY be the pixel-height of F * XRatio;
				let FYi be FY to the nearest whole number;
				display the image F in the map-window at 0 by 0 with dimensions W by FYi;
			now N is the chosen letter;
			decrease N by 48; [convert key ID to integer]
			say line break;
			if N >= 0 and N <= the notch-taken of the noun, now validAnswer is 1;
			if validAnswer is 0, say "Input not understood. Please choose a valid number.";
		conclude consenting; [refreshes the map window]
	if N is 0:
		say "You feel the bead about to come out, and then change your mind.";
	otherwise:
		let F be a random orifice penetrated by the noun;
		if the player is in danger:
			say "Blood rushes to your head as you feel incredibly humiliated, submissively pulling the [PlugSize size of item described] bead[if N > 1]s[end if] out of your fuckhole, [if the notch-taken of the noun > N]creating a perverted show[otherwise]making it available[end if] for [NameDesc of a random combative monster]. Your cheeks turn a beetroot shade of red.";
			humiliate 125;
			compute player submission;
		if the girth of the noun > the openness of F + 2:
			say "[if N > 3]You pull hard, hurting your [variable F] in the process. [otherwise if N > 2]You pull relatively hard, making yourself a little sore in the process. [end if]You hear a loud 'PLOP' as a [PlugSize size of the noun] bead comes out of your [variable F][if N is 2], followed shortly after by a second, quieter pop as another one of the [ShortDesc of the noun] slips out through your relaxed [variable F][otherwise if N > 2], followed shortly after by [N - 1] quieter pops as the other [ShortDesc of the noun] slip out through your relaxed [variable F][end if].";
			if N > 2, ruin F times (N - 2);
		otherwise if the notch-taken of the noun > N:
			let NT be the notch-taken of the noun - N;
			say "Relaxing your [if F is asshole]anal[otherwise]vaginal[end if] muscles, you pull [N] bead[if N > 1]s[end if] out in succession, before your [if F is asshole]sphincter[otherwise][variable F][end if] involuntarily tightens up from its ordeal, with [if NT is 1]one bead[otherwise][NT] beads[end if] still inside you. Looks like you'll have to keep going if you want it out...";
		otherwise:
			say "Relaxing your [if F is asshole]anal[otherwise]vaginal[end if] muscles, you pull [N] bead[if N > 1]s[end if] out in succession, causing the toy to fall out completely.";
	decrease the notch-taken of the noun by N;
	if the notch-taken of the noun < 1:
		dislodge the noun;
		now the noun is carried by the player;
	force clothing-focus redraw. [This forces the clothing window to redraw]

To compute (M - a monster) removing (C - an anal beads):
	let F be a random fuckhole penetrated by C;
	if M is intelligent:
		let R be a random number between 3 and the notch-taken of C;
		if the notch-taken of C > 2, now the notch-taken of C is 3;
		say "[BigNameDesc of M] pulls hard on the cord connected to your [printed name of C], [if R > 1]forcing [R] beads out of your [variable F] in rapid succession.[otherwise]yanking the remaining bead from your [variable F] with little effort.[end if]";
		decrease the notch-taken of C by R;
		if the notch-taken of C <= 0:
			now C is in holding pen;
			now M is retaining C;
			dislodge C;
		if F is asshole, ruin asshole times R;
		otherwise ruin vagina times R;
	otherwise:
		say "[BigNameDesc of M] manages to pull hard enough on your [printed name of C] to remove one bead";
		decrease the notch-taken of C by 1;
		if the notch-taken of C > 0:
			say ", losing interest after that isn't enough.";
			bore M;
			ruin F;
		otherwise:
			say ", tossing it on the floor.";
			ruin F;
			now C is in the location of the player;
			dislodge C;
	force clothing-focus redraw. [This forces the clothing window to redraw]

To compute replacement of (T - an anal beads) in (O - an orifice):
	unless O is actually occupied or current-monster is unintelligent:
		say "[BigNameDesc of current-monster] holds you down as [he of current-monster] pushes the [T] back into your [variable O] one bead at a time.";
		if current-monster is demoness:
			say "Plus one extra! Did the demoness somehow make it longer?!";
			increase the notches of T by 1;
		now T is worn by the player;
		now T is penetrating O;
		now the notch-taken of T is the notches of T;
		ruin O times (the notches of T + 1) / 2;
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
	let N be 5 - the notches of C / 2;
	if N < 1, decide on 1;
	decide on N.

[Haunted beads: locked at ass openness + 1. Beads only come out if pulled by npc or if repeatedly blessed.]


ritual-beads is an anal beads. ritual-beads is unique. ritual-beads is purity. The printed name of ritual-beads is usually "[clothing-title-before][PlugSize size of item described] ritual beads[clothing-title-after]". The text-shortcut of ritual-beads is "rtb". The notches of ritual-beads is 3. Understand "ritual", "ritual beads" as ritual-beads.

Definition: ritual-beads is cursable: decide no.

To say ClothingDesc of (P - ritual-beads):
	say "A set of [the notches of P] brown beads, connected by a thin cord. You can sense it wants you to [if P is not worn]wear it and then [end if]'honour the Goddess of service'. And then afterwards you could try presenting it to the dungeon altar for a reward. [if the notch-taken of P is the notches of P]Every single one is currently up your ass. [otherwise if the notch-taken of P is 1]It is currently hanging from your ass.[otherwise if the notches of P > the notch-taken of P and the notch-taken of P > 0][the notch-taken of P] are currently up your ass. [end if][if the notch-taken of P > 1]It won't be easy to remove them all at once.[end if]".

To say ShortDesc of (P - ritual-beads):
	say "ritual beads".

To uniquely set up (C - a ritual-beads):
	now the size of C is 3;
	now the notches of C is 3.

Definition: ritual-beads is cult garb: decide yes.

To decide which number is the humiliation-influence of (C - ritual-beads):
	let P be prayer-beads;
	unless P is worn and P is blessed, decide on 0;
	let T be the notch-taken of C;
	if T >= the notches of C, decide on the notches of C;
	decide on T.

To decide which number is the dexterity-influence of (C - ritual-beads):
	let P be prayer-beads;
	unless P is worn, decide on 0;
	let F be 0;
	increase F by the notch-taken of C / 2;
	if (the class of the player is cultist and P is cursed) or P is blessed, decide on F;
	decide on F * -1.

To decide which number is the soreness-influence of (C - ritual-beads):
	decide on the magic-modifier of C.

To compute virginity-loss of (T - ritual-beads):
	if the player is male or the pregnancy of the player > 0:
		say "Your [printed name of T] falls out of you and drops to the ground.";
		now T is in the location of the player;
		dislodge T;
		now the notch-taken of T is 0.


Anal Beads ends here.

