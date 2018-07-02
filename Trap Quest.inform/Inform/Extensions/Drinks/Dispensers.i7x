Dispensers by Drinks begins here.


[!<Dispenser>@

REQUIRES COMMENTING

@inherits <Thing>

@!]
A dispenser is a kind of thing. A dispenser is not portable.

[!<Dispenser>@<doses:Integer>*

REQUIRES COMMENTING

*@!]
A dispenser has a number called doses. The description of dispenser is "[DisDesc]".

[!<Dispenser>@<fillColour:DrinkColourEnums>*

REQUIRES COMMENTING

*@!]
A dispenser has a drink-colour called the fill-colour. Understand "potion" as dispenser when the doses of the item described > 0.

[!<Dispenser>@<WhichNumberIsTheFillType>+

REQUIRES COMMENTING

+@!]
To decide which number is the fill-type of (D - a dispenser):
	let X be Magic corresponding to a appearance of fill-colour of D in the Table of Drinks;
	decide on X.

[!<Tank>@

REQUIRES COMMENTING

@inherits <Dispenser>

@!]
A tank is a kind of dispenser. 1 tank is in Dungeon12. 7 tanks are in Holding Pen. Figure of tank is the file "Env/Dungeon/tank1.png".
The printed name of a tank is usually "[TQlink of item described][if the doses of item described > 0][fill-colour of the item described][otherwise]empty[end if] tank[if the fill-type of item described is remembered and the doses of item described > 0] ([FillName the fill-type of item described])[end if][shortcut-desc][TQxlink of item described]". The text-shortcut of a tank is usually "ta". Understand the fill-colour property as describing a tank when the doses of item described > 0.

[!<Bucket>@

REQUIRES COMMENTING

@inherits <Dispenser>

@!]
A bucket is a kind of dispenser. 8 buckets are in Holding Pen. Figure of bucket is the file "Env/Forest/bucket1.png". The printed name of bucket is "[TQlink of item described][if the doses of item described <= 0]empty [end if]bucket[shortcut-desc][TQxlink of item described]". The text-shortcut of a bucket is usually "bu".

[!<RefillDispenser>+

Assigns a fill color to a dispenser based on the value of its integer argument.

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
		now the doses of D is a random number between 2 + bonus liquid and 8;
		if D is alchemical vat, now the doses of D is 10;
		increase N by 1;
		if N is 16, now N is 1;
	repeat with D running through dispensers in Dungeon12:
		now the fill-colour of D is magenta;
		now the doses of D is 1.

[!<SayDisDesc>+

REQUIRES COMMENTING

+!]
To say DisDesc:
	let D be item described;
	if D is a bucket:
		if images visible is 1, display figure of bucket;
		say "A metal bucket hanging from, and secured to, a branch of a nearby tree. You can't see what kind of liquid is inside!";
	if D is a tank:
		if images visible is 1, display figure of tank;
		if the doses of D > 0:
			let X be the fill-type of D;
			say "A small glass tank set in the stone wall about 5 feet off the ground, with a gap above it. You can reach into it if you stretch your arm but you can't drink from it directly. [if the doses of D < 3]The nearly empty tank contains [end if][if the doses of D is 3]The mostly empty tank contains [end if][if the doses of D is 4]The half full tank contains [end if][if the doses of D is 5]The over halfway full tank contains [end if][if the doses of D is 6]The mostly full tank contains [end if][if the doses of D is 7]The nearly full tank contains [end if][if the doses of D is 8]The tank is completely full of [end if][if X is remembered][FillName X].[otherwise]a [appearance corresponding to an Magic of X in the Table of Drinks] liquid.[end if]";
		otherwise:
			say "A glass tank set in the stone wall about 5 feet off the ground, with a gap above it. You can reach into it if you stretch your arm but you can't drink from it directly. It is empty anyway.";
	if D is an alchemical vat:
		say "A huge wrought iron vat, resting on the floor between two counters. You can reach into it if you stretch your arm, but it would be pretty challenging to drink from directly. [run paragraph on]";
		if the doses of D > 0:
			let X be the fill-type of D;
			say "[if the doses of D < 3]The nearly empty vat contains [end if][if the doses of D is 3]The mostly empty vat contains [end if][if the doses of D is 4]The half full vat contains [end if][if the doses of D is 5]The over halfway full vat contains [end if][if the doses of D is 6]The mostly full vat contains [end if][if the doses of D is 7]The nearly full vat contains [end if][if the doses of D is 8]The tank is completely full of [end if] murky liquid, which doesn't seem to remain one color for more than a couple moments.";
		otherwise:
			say "It is empty anyway.".



[The vat is a unique dispenser that periodically refills itself with a new liquid. TODO: make the vat less busted]
An alchemical vat is a kind of dispenser. There is 1 alchemical vat in Mansion19. Understand "murky" as alchemical vat when the doses of the item described > 0.

The printed name of an alchemical vat is usually "[TQlink of item described][if the doses of item described > 0]vat of murky potion[otherwise]empty vat[end if][shortcut-desc][TQxlink of item described]".
 The text-shortcut of an alchemical vat is usually "av".	

Definition: An alchemical vat (called I) is immune to change:
	decide yes.

A time based rule (this is the vat cycling rule):
	if the player is in the Mansion and the remainder after dividing earnings by 995 < seconds:
		let V be a random alchemical vat;
		let N be a random number between 1 and 15;
		refill V with N;
		now the doses of V is 10;
		if the location of the player is Mansion19, say "A small compartment opens in the wall, and a hose snakes out, filling the vat with another serving of potion!";

Report decanting something with alchemical vat:
	let N be a random number between 1 and 15;
	refill the second noun with N.



Dispensers ends here.

