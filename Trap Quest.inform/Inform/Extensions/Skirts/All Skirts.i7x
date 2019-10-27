All Skirts by Skirts begins here.

A skirt is a kind of clothing. A skirt is usually knee-length. Understand "skirt" as skirt. The soak-limit of a skirt is usually 16.

Definition: a skirt is same-type if theme-share-target is skirt.

A miniskirt is a kind of skirt. A miniskirt is usually short.

To decide which number is the initial outrage of (C - a skirt):
	decide on 2;

To uniquely set up (S - a skirt):
	unless S is unique:
		let R be a random number between 1 and 7;
		if R is 1, now the magic-type of S is confidence;
		if R is 2, now the magic-type of S is endurance;
		if R is 3:
			now the magic-type of S is temptation;
			if diaper quest is 1, now S is respiration;
		if R is 4, now the magic-type of S is dressup;
		if R >= 5 and S is super-short or S is actually sheer, now the magic-type of S is protection;
		if R is 3, curse S;
	now the raw-magic-modifier of S is 0.

To restock (C - a skirt):
	let B be a random basic loot skirt;
	if B is skirt, now B is in Standard Item Pen.

This is the setup starting skirts rule:
	let C be a random skirt;
	repeat with N running from 1 to 2:
		restock C.
The setup starting skirts rule is listed in the setup starting items rules.

To set up influence of (C - a skirt):
	set up random-based influence of C.

Report examining skirts:
	if newbie tips is 1, say "[one of][newbie style]Skirts [if the noun is super-short or the noun is unskirted](but not this one!) [end if]can sometimes help with your modesty.[roman type][line break][or][stopping]".

Definition: a skirt is displacable if it is short or longer.

This is the remove inappropriate skirts rule:
	repeat with B running through microskirts:
		unless B is tartan themed, now B is in Holding Pen;
	repeat with B running through sequins belts:
		now B is in Holding Pen;
	repeat with B running through chainmail skirts:
		now B is in Holding Pen;
	repeat with B running through rubber-skirts:
		now B is in Holding Pen.
The remove inappropriate skirts rule is listed in the diaper quest fix rules.

To compute SelfExamineDesc of (S - a skirt):
	say "A [ShortDesc of S] hangs down from your waist.".

To say ShortDesc of (S - a skirt):
	say "skirt".

To say ShortestDesc of (C - a skirt):
	say "skirt".

Definition: a clothing (called C) is skirt-covering-crotch: [does it (potentially if dense) protect the visibility of asshole]
	if C is skirted:
		if C is super-short or C is crotch-assless, decide no; [tiny skirts don't protect anything]
		if C is worn: [We only care about these checks if it's already worn; a kneeling player should still be happy to wear a short skirt because it CAN protected them once they stand back up]
			if the player is prone and C is short, decide no; [short skirts don't protect you unless you're standing.]
			if C is crotch-displaced or C is crotch-unzipped, decide no; [if it's raised up it is currently not covering stuff]
		if C is crotch covering and (C is no protection or C is pussy protection), decide no; [ripped hobble skirt, or crotch only]
		decide yes;
	decide no.

Definition: a skirt is ingredient: decide yes.

To decide which number is the crafting key of (C - a skirt):
	decide on 54.

[This is supposed to line up with DQBulk]
To decide which number is the skirtLength of (C - a clothing):
	if C is super-short or C is unskirted or C is crotch-displaced or C is crotch-unzipped or C is crotch-ripped, decide on 0;
	if C is short, decide on 1;
	if C is knee-length, decide on 7;
	decide on 8.


Chapter - Wearability

Check wearing gown of purity:
	if the virgin of the player is 0, say "The latches of the belt refuse to close!  It's almost as if the 'gown' is refusing to let you wear it..." instead;

skirt wearability rules is a rulebook. The wearability rules of skirt is usually skirt wearability rules.

This is the skirt already worn rule:
	repeat with O running through worn skirts:
		if summoning is 0 and autowear is false, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [printed name of O][end if]!";
		rule fails.
The skirt already worn rule is listed in the skirt wearability rules.

This is the overdress skirts clash rule:
	if wearing-target is skirted or wearing-target is crotch covering:
		repeat with C running through worn skirted skirts:
			if summoning is 0 and autowear is false, say "[if wearing-target is skirted]You can't wear that over[otherwise]You would feel a bit stupid wearing that at the same time as[end if] your [printed name of C]!";
			rule fails.
The overdress skirts clash rule is listed in the overdress wearability rules.

Check taking off worn skirt:
	if the noun is living belt of sturdiness:
		if the noun is penetrating a fuckhole, say "You're going to have to find some way to remove it from your insides first!" instead.



assless skirt is a skirt. assless skirt is latex. assless skirt is transformation-rare. assless skirt is butt-windowed.
Definition: assless skirt is black themed: decide yes.

Printed name of assless skirt is "[clothing-title-before]assless latex skirt[clothing-title-after]". The text-shortcut of assless skirt is "alxs". Figure of assless skirt is the file "Items/Clothes/Lower/Skirts/naughtyskirt2.png".

To decide which figure-name is clothing-image of (C - assless skirt):
	decide on figure of assless skirt.

To say ClothingDesc of (C - assless skirt):
	say "This tight knee length black skirt has nothing but four thin buckle straps at the back, completely exposing [if diaper quest is 1]what underwear or incontinence aid the wearer has on[otherwise]all of the wearer's butt[end if].".

To say ShortDesc of (Y - assless skirt):
	say "assless latex skirt".

To say MediumDesc of (Y - assless skirt):
	say "butt cheek exposing latex skirt".

To decide which number is the initial outrage of (C - assless skirt):
	decide on 7.



A chainmail skirt is a kind of miniskirt. A chainmail skirt is usually see-through. A chainmail skirt is rare. A chainmail skirt is metal. There is 1 chainmail skirt. Figure of chainmail skirt is the file "Items/Clothes/Lower/Skirts/chainmailskirt1.png".

The printed name of a chainmail skirt is "[clothing-title-before]chainmail skirt[clothing-title-after]". The text-shortcut of chainmail skirt is "cs".

To decide which figure-name is clothing-image of (C - a chainmail skirt):
	decide on figure of chainmail skirt.

To say ClothingDesc of (C - a chainmail skirt):
	say "This short skirt is made of metal, and parts at the front to ensure that it provides absolutely no modesty to your [genitals]. However you can tell that it is a powerful defensive item.".

To say ShortDesc of (Y - a chainmail skirt):
	say "chainmail skirt".

To decide which number is the initial outrage of (C - a chainmail skirt):
	decide on 1.

To decide which number is the bartering value of (T - a chainmail skirt) for (M - a gladiator):
	decide on 4.

Definition: a chainmail skirt is transformation-protected: decide yes.
Definition: a chainmail skirt is grey themed: decide yes.

[A chainmail skirt is a skirt, so its cost is 2, which is appropriate.]



chequered skirt is a skirt. Figure of chequered skirt is the file "Items/Clothes/Lower/Skirts/skirt2.png". The printed name of chequered skirt is "[clothing-title-before]chequered skirt[clothing-title-after]". The text-shortcut of chequered skirt is "cqs".

To decide which figure-name is clothing-image of (C - chequered skirt):
	decide on figure of chequered skirt.

To say ClothingDesc of (C - chequered skirt):
	say "This tight skirt has a busy repeating white and black pattern.".

To compute SelfExamineDesc of (Y - chequered skirt):
	say "Strips of white skirt flow from your waist, exposing some thigh.".

To say ShortDesc of (Y - chequered skirt):
	say "chequered skirt".

To decide which number is the initial outrage of (C - chequered skirt):
	decide on 2.

To set up influence of (C - chequered skirt):
	set up random-based influence of C.

To decide which number is the adult-influence of (C - chequered skirt):
	decide on 1.


Definition: chequered skirt is black themed: decide yes.
Definition: chequered skirt is white themed: decide yes.


flowing skirt is a skirt. Figure of flowing skirt is the file "Items/Clothes/Lower/Skirts/skirt1.png". The printed name of flowing skirt is "[clothing-title-before]flowing white skirt[clothing-title-after]". The text-shortcut of flowing skirt is "fws". Understand "white" as flowing skirt.

To decide which figure-name is clothing-image of (C - flowing skirt):
	decide on figure of flowing skirt.

To say ClothingDesc of (C - flowing skirt):
	say "This long white skirt has a few slits cut out to expose some of [if C is worn]your[otherwise]the wearer's[end if] thighs and help make movement easy.".

To compute SelfExamineDesc of (Y - flowing skirt):
	say "Strips of white skirt flow from your waist, exposing some thigh.".

To say ShortDesc of (Y - flowing skirt):
	say "flowing white skirt".

To decide which number is the initial outrage of (C - flowing skirt):
	decide on 3.

To set up influence of (C - flowing skirt):
	set up random-based influence of C.

To decide which number is the adult-influence of (C - flowing skirt):
	decide on 1.

Definition: flowing skirt is slitted: decide yes.
Definition: flowing skirt is white themed: decide yes.


full zip skirt is a skirt. Figure of full zip skirt is the file "Items/Clothes/Lower/Skirts/skirt3.png". The printed name of full zip skirt is "[clothing-title-before]full zip white skirt[clothing-title-after]". The text-shortcut of full zip skirt is "fzs". Understand "white" as full zip skirt. full zip skirt is zippable. full zip skirt is leather.

To decide which figure-name is clothing-image of (C - full zip skirt):
	decide on figure of full zip skirt.

To say ClothingDesc of (C - full zip skirt):
	say "This tight skirt has a zip that goes diagonally along the entire fabric of the skirt to allow it to be easily removed.".

To compute SelfExamineDesc of (Y - full zip skirt):
	say "Strips of white skirt flow from your waist, exposing some thigh.".

To say ShortDesc of (Y - full zip skirt):
	say "full zip white skirt".

Definition: full zip skirt is displacable: decide no.
Definition: full zip skirt is white themed: decide yes.

To decide which number is the initial outrage of (C - full zip skirt):
	decide on 2.

To set up influence of (C - full zip skirt):
	set up random-based influence of C.

To decide which number is the adult-influence of (C - full zip skirt):
	decide on 1.


A gown of purity is a kind of skirt. Figure of Gown of Purity is the file "Items/Clothes/Lower/Skirts/gown1.png". A gown of purity is usually see-through. A gown of purity is usually purity. There is 1 unique silk cursed gown of purity. The printed name of gown of purity is usually "[clothing-title-before]gown of purity[clothing-title-after]". The text-shortcut of gown of purity is "gop".

To decide which figure-name is clothing-image of (C - a gown of purity):
	decide on figure of gown of purity.

To say ClothingDesc of (C - a gown of purity):
	say "Calling this item of clothing a gown is a bit of a misnomer, since it does not cover one's torso. Instead the fabric of the gown hangs down at the sides, from an ornate belt, providing modesty for your legs from anyone looking at you from the side, but not the front or back. The fabric is a brilliant white which shines with an almost impossible brightness, as if it had its own light source. In this way it seems to represent an unlikely harmony of purity and exhibitionism.".

To compute SelfExamineDesc of (Y - a gown of purity):
	say "Pure white fabric flows down the sides of your legs from a belt, concealing nothing useful at all. ".

To say ShortDesc of (Y - a  gown of purity):
	say "bright white flowing belt".

To compute virginity-loss of (H - gown of purity):
	say "As the [H] falls from your [ShortDesc of hips], you feel [if the virgin bonus of the player < 0]some more of [end if]your determination ripped from you.";
	decrease the virgin bonus of the player by 1;
	now H is in the location of the player.

To decide which number is the humiliation-influence of (O - a gown of purity):
	let B be 1;
	increase B by the magic-modifier of O;
	decide on B.

Definition: a gown of purity is transformation-protected: decide yes.
Definition: a gown of purity is white themed: decide yes.

To decide which number is the initial outrage of (C - a gown of purity):
	decide on 4.

Definition: a gown of purity is slitted: decide yes.


rubber hobble skirt is a skirt. Printed name of rubber hobble skirt is "[clothing-title-before]latex hobble skirt[clothing-title-after]". The text-shortcut of rubber hobble skirt is "lxhs". rubber hobble skirt is latex. rubber hobble skirt is hobble-skirted. rubber hobble skirt is crotch-skirted. The armour of rubber hobble skirt is 12.

Figure of rubber hobble skirt is the file "Items/Clothes/Lower/Skirts/Latex/latexhobbleskirt1.png".

To decide which figure-name is clothing-image of (C - rubber hobble skirt):
	decide on figure of rubber hobble skirt.

To say ClothingDesc of (C - rubber hobble skirt):
	say "This ankle length metallic blue latex skirt clings tightly to your thighs, making it very challenging to move around freely.".

To say ShortDesc of (C - rubber hobble skirt):
	say "latex hobble skirt".

To decide which number is the initial outrage of (C - rubber hobble skirt):
	decide on 4.



Definition: rubber hobble skirt is blue themed: decide yes.

To restock (C - rubber hobble skirt):
	do nothing.

To set up influence of (C - rubber hobble skirt):
	do nothing.


A rubber-skirt is a kind of skirt. A rubber-skirt is usually latex.
Definition: a rubber-skirt is black themed: decide yes.

To say ShortDesc of (Y - a rubber-skirt):
	say "shiny latex skirt".

Part 1 - Longer Rubber Skirt

A longer rubber skirt is a kind of rubber-skirt.

There is 1 longer rubber skirt. Printed name of longer rubber skirt is "[clothing-title-before]latex skirt[clothing-title-after]". The text-shortcut of longer rubber skirt is "ls". Figure of longer rubber skirt is the file "Items/Clothes/Lower/Skirts/Latex/latexskirt1.png".

To decide which figure-name is clothing-image of (C - a longer rubber skirt):
	decide on figure of longer rubber skirt.

To say ClothingDesc of (C - a longer rubber skirt):
	say "This tight knee length black skirt is made entirely of latex, which makes it cling even tighter to your body.".

To decide which number is the initial outrage of (C - a longer rubber skirt):
	decide on 4.

To decide which object is the unique-upgrade-target of (C - a longer rubber skirt):
	decide on a random off-stage shorter-rubber-skirt.

Part 2 - Shorter Rubber Skirt

A shorter-rubber-skirt is a kind of rubber-skirt. A shorter-rubber-skirt is usually short. A shorter-rubber-skirt is usually transformation-rare. Understand "short" as shorter-rubber-skirt.

To decide which number is the initial outrage of (C - a shorter-rubber-skirt):
	decide on 6.

A black rubber skirt is a kind of shorter-rubber-skirt. There is 1 black rubber skirt. Figure of black rubber skirt is the file "Items/Clothes/Lower/Skirts/Latex/latexskirt2.png". Printed name of black rubber skirt is "[clothing-title-before]short black latex skirt[clothing-title-after]". The text-shortcut of black rubber skirt is "sbs".

To decide which figure-name is clothing-image of (C - a black rubber skirt):
	decide on figure of black rubber skirt.

To say ClothingDesc of (C - a black rubber skirt):
	say "This short black skirt is made entirely of latex, but is wide and flowing, making it dangerous to wear with nothing else underneath.".

Part 3 - Pink Rubber Miniskirt

A pink rubber miniskirt is a kind of shorter-rubber-skirt. There is 1 latex pink rubber miniskirt. Printed name of pink rubber miniskirt is "[clothing-title-before]pink latex miniskirt[clothing-title-after]". The text-shortcut of pink rubber miniskirt is "prm". Figure of pink rubber miniskirt is the file "Items/Clothes/Lower/Skirts/Latex/latexminiskirt1.png".

To decide which figure-name is clothing-image of (C - a pink rubber miniskirt):
	decide on figure of pink rubber miniskirt.

To say ClothingDesc of (C - a pink rubber miniskirt):
	say "This short pink skirt is made entirely of latex, including the belt that sits loosely at the waist.".

To say ShortDesc of (Y - a pink rubber miniskirt):
	say "pink latex miniskirt".

Definition: a pink rubber miniskirt is pink themed: decide yes.
Definition: a pink rubber miniskirt is black themed: decide no.



A microskirt is a kind of skirt. A microskirt is usually super-short. The soak-limit of  microskirt is usually 10. A microskirt is usually transformation-rare.

Understand "micro" or "skirt" as the microskirt.

A red microskirt is a kind of microskirt. There is 1 latex red microskirt. Printed name of red microskirt is "[clothing-title-before]red latex microskirt[clothing-title-after]". Figure of red microskirt is the file "Items/Clothes/Lower/Skirts/Micro/microskirt1.png". The text-shortcut of red microskirt is "rms".
Definition: a red microskirt is red themed: decide yes.
A white microskirt is a kind of microskirt. There is 1 latex white microskirt. Printed name of white microskirt is "[clothing-title-before]white latex microskirt[clothing-title-after]". Figure of white microskirt is the file "Items/Clothes/Lower/Skirts/Micro/microskirt5.png". The text-shortcut of white microskirt is "wms".
Definition: a white microskirt is white themed: decide yes.
A tartan microskirt is a kind of microskirt. There is 1 tartan microskirt. Printed name of tartan microskirt is "[clothing-title-before]tartan microskirt[clothing-title-after]". The text-shortcut of tartan microskirt is "tms". Figure of tartan microskirt is the file "Items/Clothes/Lower/Skirts/Micro/microskirt2.png".
Definition: a tartan microskirt is transformation-protected if the class of the player is schoolgirl.
Definition: a tartan microskirt is tartan themed: decide yes.
Definition: a tartan microskirt is brown themed: decide yes.
A pink microskirt is a kind of microskirt. There is 1 pink microskirt. Printed name of pink microskirt is "[clothing-title-before]pink microskirt[clothing-title-after]". The text-shortcut of pink microskirt is "pms". Figure of pink microskirt is the file "Items/Clothes/Lower/Skirts/Micro/microskirt3.png".
Definition: a pink microskirt is tartan themed: decide yes.
Definition: a pink microskirt is pink themed: decide yes.
A black sporty microskirt is a kind of microskirt. A black sporty microskirt is usually plentiful. There is 1 black sporty microskirt. A black sporty microskirt is usually nylon. Printed name of black sporty microskirt is "[clothing-title-before]black sporty microskirt[clothing-title-after]". The text-shortcut of black sporty microskirt is "bms". Figure of black sporty microskirt is the file "Items/Clothes/Lower/Skirts/Micro/microskirt4.png".
Definition: a black sporty microskirt is exercise themed: decide yes.
Definition: a black sporty microskirt is black themed: decide yes.
A babydoll microskirt is a kind of microskirt. There is 1 babydoll microskirt. A babydoll microskirt is usually mesh. A babydoll microskirt is sheer. The printed name of babydoll microskirt is "[clothing-title-before]babydoll microskirt[clothing-title-after]". The text-shortcut of babydoll microskirt is "bdm". Figure of babydoll microskirt is the file "Items/Clothes/Lower/Skirts/Micro/microskirt6.png".
Definition: a babydoll microskirt is sissifying: decide yes.
Definition: a babydoll microskirt is pink themed: decide yes.

To decide which figure-name is clothing-image of (C - a red microskirt):
	decide on figure of red microskirt.
To say ClothingDesc of (C - a red microskirt):
	say "This red latex skirt is only crotch high. [one of]Really, it should be called a belt.[or]Only the sluttiest of girls would wear this, especially without anything else underneath.[or]It conceals absolutely nothing![at random]".
To decide which figure-name is clothing-image of (C - a white microskirt):
	decide on figure of white microskirt.
To say ClothingDesc of (C - a white microskirt):
	say "This white latex skirt is only crotch high. [one of]Really, it should be called a belt.[or]Only the sluttiest of girls would wear this, especially without anything else underneath.[or]It conceals absolutely nothing![at random]".
To decide which figure-name is clothing-image of (C - a tartan microskirt):
	decide on figure of tartan microskirt.
To say ClothingDesc of (C - a tartan microskirt):
	say "This tartan skirt is only crotch high. [one of]Really, it should be called a belt.[or]Only the sluttiest of girls would wear this, especially without anything else underneath.[or]It conceals absolutely nothing![at random]".
To decide which figure-name is clothing-image of (C - a pink microskirt):
	decide on figure of pink microskirt.
To say ClothingDesc of (C - a pink microskirt):
	say "This pink skirt is only crotch high. [one of]Really, it should be called a belt.[or]Only the sluttiest of girls would wear this, especially without anything else underneath.[or]It conceals absolutely nothing![at random]".
To decide which figure-name is clothing-image of (C - a black sporty microskirt):
	decide on figure of black sporty microskirt.
To say ClothingDesc of (C - a black sporty microskirt):
	say "This black lycra skirt is only crotch high. It has pink stripes which make it appear sporty.".
To decide which figure-name is clothing-image of (C - a babydoll microskirt):
	decide on figure of babydoll microskirt.
To say ClothingDesc of (C - a babydoll microskirt):
	say "This pink frilly skirt is extremely delicate and sheer. But that doesn't even matter because it is only crotch high!".

To decide which number is the dexterity-influence of (C - a black sporty microskirt):
	decide on 2 + the magic-modifier of C.

To set up influence of (C - a microskirt):
	set up stat-based influence of C.

To compute SelfExamineDesc of (Y - a  microskirt):
	if the player is prone:
		say "You are sporting a tiny [ShortDesc of Y] around your waist that completely fails to cover your ass or crotch, especially while you are on your knees with your ass in the air. ";
	otherwise:
		say "You are sporting a tiny [ShortDesc of Y] around your waist that almost completely fails to cover your ass, even though you're standing up straight. ".

To say ShortDesc of (Y - a  microskirt):
	say "tiny [clothing-material of Y] microskirt".
To say ShortDesc of (Y - a  black sporty microskirt):
	say "tiny black lycra microskirt".

To decide which number is the initial outrage of (C - a microskirt):
	decide on 9.

Definition: a microskirt is end of transformation chain: decide yes.



A lace miniskirt is a kind of miniskirt. There is 1 mesh lace miniskirt. A lace miniskirt is transformation-rare. Printed name of lace miniskirt is "[clothing-title-before]sheer miniskirt[clothing-title-after]". The text-shortcut of lace miniskirt is "sms". Figure of lace miniskirt is the file "Items/Clothes/Lower/Skirts/Mini/miniskirt1.png". Understand "sheer" as lace miniskirt.

To decide which figure-name is the clothing-image of (C - a lace miniskirt):
	decide on figure of lace miniskirt.

To say ClothingDesc of (C - a lace miniskirt):
	say "This tiny black skirt is lacy and partly transparent, the only times you'd see someone wearing this is as part of a slutty Halloween costume or privately in the bedroom.".

Definition: a lace miniskirt is black themed: decide yes.

To say ShortDesc of (Y - a miniskirt):
	say "small miniskirt".

A tartan miniskirt is a kind of miniskirt. There is 1 unique tartan miniskirt. Printed name of tartan miniskirt is "[clothing-title-before]tartan miniskirt[clothing-title-after]". The text-shortcut of tartan miniskirt is "tm". Figure of tartan miniskirt is the file "Items/Clothes/Lower/Skirts/Mini/miniskirt2.png".

To decide which figure-name is the clothing-image of (C - a tartan miniskirt):
	decide on figure of tartan miniskirt.

To say ClothingDesc of (C - a tartan miniskirt):
	say "This tiny apricot skirt is has a tartan pattern, you could imagine a skirt four times the length being part of a school uniform but this version is clearly never acceptable attire. It barely covers your crotch, and even bending over slightly would reveal everything to anyone behind you.".

To decide which number is the initial outrage of (C - a miniskirt):
	decide on 6.

Definition: a tartan miniskirt is class-transformation-protected if the class of the player is schoolgirl.

To decide which object is the unique-upgrade-target of (C - a tartan miniskirt):
	decide on a random off-stage tartan microskirt.

Definition: a tartan miniskirt is tartan themed: decide yes.
Definition: a tartan miniskirt is orange themed: decide yes.



A naughty skirt is a kind of skirt. A naughty skirt is usually leather. A naughty skirt is transformation-rare. A naughty skirt is usually butt-windowed.

There is 1 naughty skirts. Printed name of naughty skirt is "[clothing-title-before]naughty leather skirt[clothing-title-after]". The text-shortcut of naughty skirt is "nls". Figure of naughty skirt is the file "Items/Clothes/Lower/Skirts/naughtyskirt1.png".

To decide which figure-name is clothing-image of (C - a naughty skirt):
	decide on figure of naughty skirt.

To say ClothingDesc of (C - a naughty skirt):
	say "This tight knee length black skirt has a deep groove at the top with laces, which shows off [if diaper quest is 1]what underwear or incontinence aid the wearer has on[otherwise]lots of butt cleavage[end if].".

To say ShortDesc of (Y - a naughty skirt):
	say "assless leather skirt".

To say MediumDesc of (Y - a naughty skirt):
	say "butt cheek exposing leather skirt".

To decide which number is the initial outrage of (C - a naughty skirt):
	decide on 6.

Definition: a naughty skirt is black themed: decide yes.



office skirt is a skirt. Printed name of office skirt is "[clothing-title-before]office skirt[clothing-title-after]". The text-shortcut of office skirt is "os". office skirt is nylon. office skirt is hobble-skirted. office skirt is crotch-skirted. The armour of office skirt is 7.

Figure of office skirt is the file "Items/Clothes/Lower/Skirts/officeskirt1.png".

To decide which figure-name is clothing-image of (C - office skirt):
	decide on figure of office skirt.

To say ClothingDesc of (C - office skirt):
	say "This ankle length skirt is made of form-fitting black fabric. It clings tightly to your thighs, making it very challenging to move around freely.".

To decide which number is the skirtLength of (C - office skirt):
	decide on 7.

To say ShortDesc of (C - office skirt):
	say "office skirt".

Definition: office skirt is black themed: decide yes.

To decide which number is the initial outrage of (C - office skirt):
	decide on 2.

To decide which number is the adult-influence of (C - office skirt):
	decide on 2.

To restock (C - office skirt):
	do nothing.

To set up influence of (C - office skirt):
	do nothing.


A punishment skirt is a kind of skirt. A punishment skirt is usually latex. A punishment skirt is usually hobble-skirted. A punishment skirt is usually crotch-skirted. A punishment skirt is transformation-rare. A punishment skirt is usually butt-windowed. The armour of punishment skirt is usually 12.

There is 1 punishment skirt. Printed name of punishment skirt is "[clothing-title-before]latex backless hobble skirt[clothing-title-after]". The text-shortcut of punishment skirt is "hs". Figure of punishment skirt is the file "Items/Clothes/Lower/Skirts/punishmentskirt1.png". Understand "backless", "hobble" as punishment skirt. A punishment skirt is usually crotch-assless.

To decide which figure-name is clothing-image of (C - a punishment skirt):
	decide on figure of punishment skirt.

To say ClothingDesc of (C - a punishment skirt):
	say "This constricting ankle length black skirt is made entirely of latex, which just makes it cling even tighter to your body. Even worse, it has a huge circle cut out at the back to expose [if C is worn]your[otherwise]the wearer's[end if] [if there is a worn diaper or the diaper addiction of the player > 5]diaper[otherwise]backside[end if].".

To say ShortDesc of (Y - a punishment skirt):
	say "punishment skirt".
To say MediumDesc of (Y - a punishment skirt):
	say "tight black punishment skirt with butt window".

To decide which number is the initial outrage of (C - a punishment skirt):
	if diaper quest is 1:
		if there is a worn diaper, decide on 0;
		decide on 4;
	decide on 8.

To uniquely set up (C - a punishment skirt):
	if a random number between 1 and 3 is 1, now C is stumbling.

To decide which object is the unique-upgrade-target of (C - a punishment skirt):
	if the number of worn overdress is 0 and diaper quest is 0, decide on a random off-stage hobble-skirted fetish dress.

Definition: a punishment skirt is end of transformation chain if the unique-upgrade-target of it is nothing.

Definition: a punishment skirt is displacable: decide no.
Definition: a punishment skirt is black themed: decide yes.


A sequins belt is a kind of skirt. A sequins belt is usually sheer. A sequins belt is short. Figure of sequins belt is the file "Items/Clothes/Lower/Waist/Belts/belt1.png". There is 1 transformation-rare metal sequins belt. The printed name of sequins belt is "[clothing-title-before]sequins belt[clothing-title-after]". The text-shortcut of sequins belt is "seq".

To decide which figure-name is clothing-image of (C - a sequins belt):
	decide on figure of sequins belt.

To say ClothingDesc of (C - a sequins belt):
	say "This belt is made of several strands of sequins that hang freely in front of your crotch, held around your waist by a small black strap. It would appear to be completely pointless except for possibly providing the tiniest amount of modesty.".

To compute SelfExamineDesc of (Y - a sequins belt):
	say "Several strands of sequins hang in front of your crotch. ".

To say ShortDesc of (Y - a sequins belt):
	say "sequins belt".

To decide which number is the initial outrage of (C - a sequins belt):
	decide on 6.

To decide which number is the bartering value of (T - a sequins belt) for (M - a gladiator):
	decide on 2.

Definition: a sequins belt is gem themed: decide yes.

To set up influence of (C - a sequins belt):
	set up stat-based influence of C.

To decide which object is the unique-upgrade-target of (C - a sequins belt):
	let S be a random off-stage sequins outfit;
	if the number of worn overdress + the number of worn bottom-exclusive corsets + the number of worn bottom-exclusive bras + the number of worn bottom-exclusive knickers is 0, decide on S;
	decide on a random off-stage sequins dress.

To transform (D - a sequins belt) into (C - a sequins outfit):
	say "[bold type]Your [D] [bold type]transforms into ";
	silently transform D into C;
	say "a [C] [bold type]in front of your eyes![roman type]  ";
	say "[TransformReaction of C]".


All Skirts ends here.
