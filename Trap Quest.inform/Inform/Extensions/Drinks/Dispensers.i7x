Dispensers by Drinks begins here.

[!<Dispenser>@

REQUIRES COMMENTING

@inherits <Thing>

@!]
A dispenser is a kind of thing. A dispenser is not portable.

A dispenser has a number called doses.
Definition: a dispenser is empty rather than non-empty:
	if the doses of it <= 0, decide yes;
	decide no.

To DoseDown (B - a dispenser):
	DoseDown B by 1.

To DoseDown (B - a dispenser) by (N - a number):
	if the doses of B > 0:
		decrease the doses of B by N;
		if the doses of B < 0, now the doses of B is 0.

To SetDose (B - a dispenser) to (N - a number):
	if the doses of B is not N:
		now the doses of B is N;
		if the doses of B < 0, now the doses of B is 0.

To DoseEmpty (B - a dispenser):
	if the doses of B is not 0:
		now the doses of B is 0;
		force inventory-focus redraw. [Force inventory window redraw]

A dispenser has a drink-colour called the fill-colour. Understand "potion" as dispenser when the doses of the item described > 0.

To decide which number is the fill-type of (D - a dispenser):
	let X be Magic corresponding to a appearance of fill-colour of D in the Table of Drinks;
	decide on X.

[!<Dispenser>@<KnownPotion>+

Does the player know what type of drink it is?

+@!]
Definition: a dispenser is known-potion: decide no. [Unless it's a tank we don't know what it is]

[!<Tank>@<KnownPotion>+

Does the player know what type of drink it is?

+@!]
Definition: a tank (called B) is known-potion:
	if the Known corresponding to an Magic of the fill-type of B in the Table of Drinks is 1, decide yes;
	decide no.

[!<Dispenser>@<KnownCursedPotion>+

Does the player know that it's a cursed potion?

+@!]
Definition: a dispenser (called B) is known-cursed-potion:
	if B is known-potion and the fill-type of B >= lowest-cursed and the fill-type of B <= highest-cursed, decide yes;
	decide no.

[!<Tank>@

REQUIRES COMMENTING

@inherits <Dispenser>

@!]
A tank is a kind of dispenser. 1 tank is in Dungeon12. 7 tanks are in Holding Pen. Figure of tank is the file "Env/Dungeon/tank1.png".
The printed name of a tank is usually "[TQlink of item described][if the doses of item described > 0][fill-colour of the item described][otherwise]empty[end if] tank[if the fill-type of item described is remembered and the doses of item described > 0] ([FillName the fill-type of item described])[end if][shortcut-desc][TQxlink of item described]". The text-shortcut of a tank is usually "ta". Understand the fill-colour property as describing a tank when the doses of item described > 0.

To decide which figure-name is the examine-image of (C - a tank):
	decide on figure of tank.

To BackgroundRender (T - a tank) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	let D be the doses of T;
	if D > 0: [Numbers will need changing if the dimensions of the original image file changes]
		if D > 8, now D is 8;
		let liquidHeight be (122 * D) / 8;
		let blockReduction be ((142 - liquidHeight) * DY) / 200;
		increase Y1 by blockReduction;
		decrease DY by blockReduction;
		draw a rectangle TQcolour of fill-colour of T in the current focus window at X1 by Y1 with size DX by DY.

To say ShortDesc of (T - a tank):
	say "[if the doses of T > 0][fill-colour of T][otherwise]empty[end if] tank".

To say MediumDesc of (T - a tank):
	say "[ShortDesc of T][if the fill-type of T is remembered and the doses of T > 0] ([FillName the fill-type of T])[end if]".

To say ExamineDesc of (D - a tank):
	if the doses of D > 0:
		let X be the fill-type of D;
		say "A small glass tank set in the stone wall about 5 feet off the ground, with a gap above it. You can reach into it if you stretch your arm but you can't drink from it directly. [if the doses of D < 3]The nearly empty tank contains [end if][if the doses of D is 3]The mostly empty tank contains [end if][if the doses of D is 4]The half full tank contains [end if][if the doses of D is 5]The over halfway full tank contains [end if][if the doses of D is 6]The mostly full tank contains [end if][if the doses of D is 7]The nearly full tank contains [end if][if the doses of D is 8]The tank is completely full of [end if][if X is remembered][FillName X].[otherwise]a [appearance corresponding to an Magic of X in the Table of Drinks] liquid.[end if]";
	otherwise:
		say "A glass tank set in the stone wall about 5 feet off the ground, with a gap above it. You can reach into it if you stretch your arm but you can't drink from it directly. It is empty anyway.".

[!<Bucket>@

REQUIRES COMMENTING

@inherits <Dispenser>

@!]
A bucket is a kind of dispenser. 8 buckets are in Holding Pen. Figure of bucket is the file "Env/Forest/bucket1.png". The printed name of bucket is "[TQlink of item described][if the doses of item described <= 0]empty [end if]bucket[shortcut-desc][TQxlink of item described]". The text-shortcut of a bucket is usually "bu".

To decide which figure-name is the examine-image of (C - a bucket):
	decide on figure of bucket.

To say ExamineDesc of (C - a bucket):
	say "A metal bucket hanging from, and secured to, a branch of a nearby tree. You can't see what kind of liquid is inside!".

To say ShortDesc of (C - a bucket):
	say "bucket".

[!<RefillDispenser>+

Assigns a fill colour to a dispenser based on the value of its integer argument.

@param<Dispenser>:<C> A dispenser, to be assigned a fill-colour
@param<Integer>:<N> A number representing a fill-colour

!]

To refill (C - a dispenser) with (N - a number):
	if N is 1:
		now the fill-colour of C is silver;
		unless C is alchemical vat, now the text-shortcut of C is "svc";
	if N is 2:
		now the fill-colour of C is scarlet;
		unless C is alchemical vat, now the text-shortcut of C is "scc";
	if N is 3:
		now the fill-colour of C is blue;
		unless C is alchemical vat, now the text-shortcut of C is "blc";
	if N is 4:
		now the fill-colour of C is bronze;
		unless C is alchemical vat, now the text-shortcut of C is "brc";
	if N is 5:
		now the fill-colour of C is green;
		unless C is alchemical vat, now the text-shortcut of C is "grc";
	if N is 6:
		now the fill-colour of C is grey;
		unless C is alchemical vat, now the text-shortcut of C is "gyc";
	if N is 7:
		now the fill-colour of C is clear;
		unless C is alchemical vat, now the text-shortcut of C is "cyc";
	if N is 8:
		now the fill-colour of C is magenta;
		unless C is alchemical vat, now the text-shortcut of C is "mgc";
	if N is 9:
		now the fill-colour of C is indigo;
		unless C is alchemical vat, now the text-shortcut of C is "ind";
	if N is 10:
		now the fill-colour of C is orange;
		unless C is alchemical vat, now the text-shortcut of C is "ong";
	if N is 11:
		now the fill-colour of C is lime;
		unless C is alchemical vat, now the text-shortcut of C is "lim";
	if N is 12:
		now the fill-colour of C is brownish;
		unless C is alchemical vat, now the text-shortcut of C is "bwn";
	if N is 13:
		now the fill-colour of C is violet;
		unless C is alchemical vat, now the text-shortcut of C is "vlt";
	if N is 14:
		now the fill-colour of C is glittery;
		unless C is alchemical vat, now the text-shortcut of C is "glt";
	if N is 15:
		now the fill-colour of C is turquoise;
		unless C is alchemical vat, now the text-shortcut of C is "trq".

[!<SetUpDispenser>+

Handles the setup process of all instances of the dispenser class, starting by assigning a random "type" to each dispenser, represented by "N", and assigning the volume of the dispenser based on a randomly generated number.

+!]
To Set Up Dispensers:
	let N be a random number between 1 and 15;
	repeat with D running through all dispensers:
		refill D with N;
		SetDose D to a random number between 2 + bonus liquid and 8;
		if D is alchemical vat, SetDose D to 5;
		increase N by 1;
		if N is 16, now N is 1;
	repeat with D running through dispensers in Dungeon12:
		now the fill-colour of D is magenta;
		SetDose D to 1.

[The vat is a unique dispenser that periodically refills itself with a new liquid. TODO: make the vat less busted]
alchemical vat is a dispenser. alchemical vat is in Mansion19. Understand "murky" as alchemical vat when the doses of the item described > 0.
Figure of vat is the file "Env/Mansion/vat1.jpg".
To decide which figure-name is the examine-image of (C - alchemical vat):
	decide on figure of vat.

The printed name of an alchemical vat is "[TQlink of item described][if the doses of item described > 0]vat of murky potion[otherwise]empty vat[end if][shortcut-desc][TQxlink of item described]". The text-shortcut of alchemical vat is usually "av".

To say ExamineDesc of (D - alchemical vat):
	say "A huge wrought iron vat, resting on the floor between two counters. You can reach into it if you stretch your arm, but it would be pretty challenging to drink from directly. [run paragraph on]";
	if the doses of D > 0:
		let X be the fill-type of D;
		say "[if the doses of D < 3]The nearly empty vat contains [end if][if the doses of D is 3]The mostly empty vat contains [end if][if the doses of D is 4]The half full vat contains [end if][if the doses of D is 5]The over halfway full vat contains [end if][if the doses of D is 6]The mostly full vat contains [end if][if the doses of D is 7]The nearly full vat contains [end if][if the doses of D is 8]The tank is completely full of [end if] murky liquid, which doesn't seem to remain one colour for more than a couple moments.";
	otherwise:
		say "It is empty anyway.".

Definition: alchemical vat is immune to change: decide yes.

An all time based rule (this is the vat cycling rule):
	if Mansion19 is placed and the remainder after dividing time-earnings by 995 < time-seconds:
		let N be a random number between 1 and 15;
		refill alchemical vat with N;
		SetDose alchemical vat to 5;
		if the location of the player is Mansion19, say "A small compartment opens in the wall, and a hose snakes out, filling the vat with another serving of murky potion!";

Report decanting something with alchemical vat:
	let N be a random number between 1 and 15;
	refill the second noun with N;
	[say "[if the doses of N > 0]The rest of the liquid drains away down a sinkhole at the bottom of the vat. Then, a[otherwise]A[end if] small compartment opens in the wall, and a hose snakes out, filling the vat with another serving of [appearance corresponding to an Magic of N in the Table of Drinks] potion[if known corresponding to an Magic of N in the table of drinks is 1] ([FillName N])[end if]!";]

Dispensers ends here.
