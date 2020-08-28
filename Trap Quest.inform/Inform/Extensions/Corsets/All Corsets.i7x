All Corsets by Corsets begins here.

A ballet corset is a kind of corset. A ballet corset is usually top-exclusive. A ballet corset is usually pvc. A ballet corset is usually short. There is 1 transformation-rare ballet corset. A ballet corset is usually normally-nipple-covering. A ballet corset is usually average cut.

The printed name of ballet corset is usually "[clothing-title-before]ballet corset[clothing-title-after]". The text-shortcut of ballet corset is "bcst".

Figure of ballet corset is the file "Items/Clothes/Upper/Corsets/balletcorset1.png".

To decide which figure-name is clothing-image of (C - a ballet corset):
	decide on figure of ballet corset.

Definition: a ballet corset is pink themed: decide yes.

To say ClothingDesc of (C - a ballet corset):
	say "A [unless the outrage of C is too humiliating][second custom style]super-cute[roman type][end if] pink overbust corset with an attached short frilly tutu.".

To say ShortDesc of (C - a ballet corset):
	say "ballet corset".

To decide which number is the initial outrage of (C - a ballet corset):
	decide on 4.

Definition: a ballet corset is ballet related: decide yes.

Definition: a ballet corset is strut enabling:
	if there is a worn thigh high ballet boots, decide yes;
	decide no.

Definition: a ballet corset is transformation-protected:
	if there is a worn thigh high ballet boots, decide yes;
	decide no.

Definition: a ballet corset is IcarusScienceAppropriate:
	if it is actually summonable, decide yes;
	decide no.

To compute periodic effect of (C - a ballet corset):
	if there is a worn thigh high ballet boots and the strut of the player is 0 and the player is upright:
		say "You are [one of][or]once again [stopping]magically forced to walk with your hands above your head! [bold type]You are now strutting[one of], [roman type]which gives you increased dexterity but slowly increases humiliation.[or].[roman type][line break][stopping]";
		cutshow figure of ballet cutscene for C;
		now the strut of the player is 1.

Check strutting when there is a worn ballet corset:
	if the strut of the player is 1 and there is a worn thigh high ballet boots, say "You can't stop strutting, you're being magically forced to by your ballet clothing!" instead.

[!<ThePlayerCantSlapWhileBalletStruttingRule>+

This rule causes a slap to fail if the player is ballet strutting. If the player is attacking manually, outputs a message explaining why the slap failed.

+!]
This is the player can't slap while ballet strutting rule:
	if there is a worn ballet corset and there is a worn thigh high ballet boots:
		if autoattack is 0, say "Your ballet clothing won't allow you to, it keeps your hands high above your head in a ballerina pose!";
		rule fails.
The player can't slap while ballet strutting rule is listed in the ability to slap rules.

A bat corset is a kind of corset. A bat corset is usually leather. A bat corset is rare. A bat corset is usually normally-nipple-covering. There is 1 bat corset. A bat corset is usually very low cut.

Definition: a bat corset is fluid immune: decide yes.
Definition: a bat corset is black themed: decide yes.

The printed name of bat corset is usually "[clothing-title-before]bat corset[clothing-title-after]". The text-shortcut of bat corset is "bco".

Figure of Bat Corset is the file "Items/Clothes/Upper/Corsets/batcorset1.png".

To decide which figure-name is clothing-image of (C - a bat corset):
	decide on figure of bat corset.

To say ClothingDesc of (C - a bat corset):
	say "A stylish black overbust corset in the shape of a bat. You can feel powerful magic flowing from it.".

To decide which number is the dexterity-influence of (C - a bat corset):
	let D be 1;
	increase D by the magic-modifier of C;
	decide on D.

To decide which number is the strength-influence of (C - a bat corset):
	let D be 1;
	increase D by the magic-modifier of C;
	decide on D.

To decide which number is the intelligence-influence of (C - a bat corset):
	let D be 1;
	increase D by the magic-modifier of C;
	decide on D.

To uniquely set up (C - a bat corset):
	do nothing. [It never gets a magic enhancement, unlike other corsets]

Definition: a bat corset is transformation-protected: decide yes.

To decide what number is the price of (C - a bat corset):
	decide on 7.

To decide which number is the initial outrage of (C - a bat corset):
	decide on 4.

To say ShortDesc of (C - a bat corset):
	say "bat corset".

A fetish corset is a kind of corset. A fetish corset is usually latex. A fetish corset is usually top-exclusive. A fetish corset is usually sheer. There is 1 transformation-rare fetish corset.

The printed name of fetish corset is usually "[clothing-title-before]fetish corset[clothing-title-after]". The printed plural name of fetish corset is usually "[clothing-title-before]fetish corsets[clothing-title-after]". The text-shortcut of fetish corset is "fco".

Definition: a fetish corset is yellow themed: decide yes.

Figure of Fetish Corset is the file "Items/Clothes/Upper/Corsets/fetishcorset1.png".

To decide which figure-name is clothing-image of (C - a fetish corset):
	decide on figure of fetish corset.

To say ClothingDesc of (C - a fetish corset):
	say "[if the outrage of C is too humiliating]An outrageous[otherwise]A[line break][second custom style]lush[roman type][line break][end if] translucent latex underbust corset with an extremely exaggerated shape and rubbery frills at the bottom. This must be designed to be worn exclusively at fetish events.".

To say ShortDesc of (C - a fetish corset):
	say "fetish corset".

To decide which number is the initial outrage of (C - a fetish corset):
	decide on 7.

A gothic corset is a kind of corset. A gothic corset is usually leather. There is 1 gothic corset.

Definition: a gothic corset is fluid immune: decide yes.
Definition: a gothic corset is magic themed: decide yes.
Definition: a gothic corset is red themed: decide yes.

The printed name of gothic corset is usually "[clothing-title-before]gothic corset[clothing-title-after]". The printed plural name of gothic corset is usually "[clothing-title-before]gothic corsets[clothing-title-after]". The text-shortcut of gothic corset is "gco".

Figure of Gothic Corset is the file "Items/Clothes/Upper/Corsets/gothiccorset1.png".

To decide which figure-name is clothing-image of (C - a gothic corset):
	decide on figure of gothic corset.

To say ClothingDesc of (C - a gothic corset):
	say "A red and black leather underbust corset with a cross pattern.".

To say ShortDesc of (C - a gothic corset):
	say "gothic corset".

To decide which number is the initial outrage of (C - a gothic corset):
	decide on 3.

A black corset is a kind of corset. A black corset is usually leather. There is 1 black corset.

Definition: a black corset is fluid immune: decide yes.
Definition: a black corset is black themed: decide yes.

The text-shortcut of black corset is "lc".

Figure of Leather Corset is the file "Items/Clothes/Upper/Corsets/leathercorset1.png".

To decide which figure-name is clothing-image of (C - a black corset):
	decide on figure of leather corset.

To say ClothingDesc of (C - a black corset):
	say "A comfortable black underbust corset [if C is worn]that feels nice against your skin[otherwise]that looks expensive[end if].".

To say ShortDesc of (C - a black corset):
	say "leather corset".

A santa corset is a kind of corset. A santa corset is usually wool. A santa corset is rare. A santa corset is usually normally-nipple-covering. A santa corset is usually top-exclusive. There is 1 santa corset. A santa corset is usually average cut. A santa corset is usually top-displacable.

The printed name of santa corset is usually "[clothing-title-before]Santa corset[clothing-title-after]". The text-shortcut of santa corset is "san".

Figure of santa corset is the file "Items/Clothes/Upper/Corsets/santacorset1.png".

Definition: a santa corset is christmas themed: decide yes.
Definition: a santa corset is red themed: decide yes.

To decide which figure-name is clothing-image of (C - a santa corset):
	decide on figure of santa corset.

To say ClothingDesc of (C - a santa corset):
	say "A red overbust corset with fluffy white wool at the top and bottom, to reflect the festive nature of the item.[if C is worn][line break]It looks like it might be able to protect your breasts from injury.[end if]".

To uniquely set up (C - a santa corset):
	do nothing.[It never gets a magic enhancement.]

To decide what number is the price of (C - a santa corset):
	decide on 6.

To say ShortDesc of (C - a santa corset):
	say "Santa corset".

A pink corset is a kind of corset. A pink corset is usually satin. There is 1 pink corset. The text-shortcut of pink corset is "sco".

Figure of Satin Corset is the file "Items/Clothes/Upper/Corsets/satincorset1.png".

To decide which figure-name is clothing-image of (C - a pink corset):
	decide on figure of satin corset.

To say ClothingDesc of (C - a pink corset):
	say "A neon pink satin underbust corset.".

To say ShortDesc of (C - a pink corset):
	say "satin corset".

Definition: a pink corset is pink themed: decide yes.

To decide which number is the initial outrage of (C - a pink corset):
	decide on 4.

A spike corset is a kind of corset. A spike corset is usually leather. A spike corset is rare. A spike corset is usually normally-nipple-covering. A spike corset is usually top-exclusive. There is 1 spike corset. A spike corset is usually low cut. A spike corset is usually spikey. [Seems too stiff to be displacable, even though that bust line is pretty low!]

The printed name of spike corset is usually "[clothing-title-before]spike corset[clothing-title-after]". The text-shortcut of spike corset is "spc".

Figure of spike corset is the file "Items/Clothes/Upper/Corsets/spikecorset1.png".

To decide which figure-name is clothing-image of (C - a spike corset):
	decide on figure of spike corset.

To say ClothingDesc of (C - a spike corset):
	say "A black overbust corset with terrifying large metal spikes at the bust, and a low bust line to allow for a lot of cleavage.[if C is worn][line break]It looks like it would be a bad idea for enemies to attack your breasts now![end if]".

To uniquely set up (C - a spike corset):
	if a random number between 1 and 2 is 1, now C is dominance.

Definition: a spike corset is transformation-protected: decide yes.

To decide what number is the price of (C - a spike corset):
	decide on 6.

To say ShortDesc of (C - a spike corset):
	say "spike corset".

Definition: a spike corset is black themed: decide yes.

A vinyl corset is a kind of corset. A vinyl corset is usually pvc. A vinyl corset is transformation-rare. There is 1 vinyl corset.

The printed name of vinyl corset is usually "[clothing-title-before]vinyl corset[clothing-title-after]". The printed plural name of vinyl corset is usually "[clothing-title-before]vinyl corsets[clothing-title-after]". The text-shortcut of vinyl corset is "vco".

Figure of Vinyl Corset is the file "Items/Clothes/Upper/Corsets/vinylcorset1.png".

To decide which figure-name is clothing-image of (C - a vinyl corset):
	decide on figure of vinyl corset.

To say ClothingDesc of (C - a vinyl corset):
	say "[if the outrage of C is too humiliating]An outrageous[otherwise]A[line break][second custom style]gorgeous[roman type][line break][end if] black vinyl fetish underbust corset that clings tightly to the flesh to show off the wearer's curves.".

To say ShortDesc of (C - a vinyl corset):
	say "vinyl corset".

Definition: a vinyl corset is black themed: decide yes.

To decide which number is the initial outrage of (C - a vinyl corset):
	decide on 4.

All Corsets ends here.
