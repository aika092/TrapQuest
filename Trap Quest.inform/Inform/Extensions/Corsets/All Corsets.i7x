All Corsets by Corsets begins here.

ballet corset is a corset. ballet corset is top-exclusive. ballet corset is pvc. ballet corset is transformation-rare. ballet corset is normally-nipple-covering. ballet corset is average cut. ballet corset is super-short.

The text-shortcut of ballet corset is "bcst".

Figure of ballet corset is the file "Items/Clothes/Upper/Corsets/balletcorset1.png".

To decide which figure-name is clothing-image of (C - ballet corset):
	decide on figure of ballet corset.

Definition: ballet corset is pink themed: decide yes.

To say ClothingDesc of (C - ballet corset):
	say "A [unless the outrage of C is too humiliating][second custom style]super-cute[roman type][end if] pink overbust corset with an attached short frilly tutu.".

To say ShortDesc of (C - ballet corset):
	say "ballet corset".
To say MediumDesc of (C - ballet corset):
	say "ballet corset".

To decide which number is the initial outrage of (C - ballet corset):
	decide on 4.

Definition: ballet corset is ballet related: decide yes.

Definition: ballet corset is strut enabling:
	if there is a worn thigh high ballet boots, decide yes;
	decide no.

Definition: ballet corset is transformation-protected:
	if there is a worn thigh high ballet boots, decide yes;
	decide no.

Definition: ballet corset is IcarusScienceAppropriate:
	if ballet corset is actually summonable, decide yes;
	decide no.

To compute periodic effect of (C - ballet corset):
	if there is a worn thigh high ballet boots and the strut of the player is 0 and the player is upright:
		say "You are [one of][or]once again [stopping]magically forced to walk with your hands above your head! [bold type]You are now strutting[one of], [roman type]which gives you increased dexterity but slowly increases humiliation.[or].[roman type][line break][stopping]";
		cutshow figure of ballet cutscene for C;
		now the strut of the player is 1.

Check strutting when ballet corset is worn:
	if the strut of the player is 1 and there is a worn thigh high ballet boots, say "You can't stop strutting, you're being magically forced to by your ballet clothing!" instead.

[!<ThePlayerCantSlapWhileBalletStruttingRule>+

This rule causes a slap to fail if the player is ballet strutting. If the player is attacking manually, outputs a message explaining why the slap failed.

+!]
This is the player can't slap while ballet strutting rule:
	if there is a worn ballet corset and there is a worn thigh high ballet boots:
		if autoattack is 0, say "Your ballet clothing won't allow you to, it keeps your hands high above your head in a ballerina pose!";
		rule fails.
The player can't slap while ballet strutting rule is listed in the ability to slap rules.

A bat corset is a kind of corset. A bat corset is leather. A bat corset is unique. A bat corset is normally-nipple-covering. A bat corset is very low cut. Understand "bat", "corset" as a bat corset.
Definition: a bat corset is fluid immune: decide yes.

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

To decide what number is the original price of (C - a bat corset):
	decide on 7.

To say ShortDesc of (C - a bat corset):
	say "bat corset".
To say MediumDesc of (C - a bat corset):
	say "bat corset".

bat-shape-corset is a bat corset. bat-shape-corset is rare. The text-shortcut of bat corset is "bco".
Definition: bat-shape-corset is black themed: decide yes.

To decide which number is the initial outrage of (C - bat-shape-corset):
	decide on 4.

Figure of Bat Corset is the file "Items/Clothes/Upper/Corsets/batcorset1.png".
To decide which figure-name is clothing-image of (C - bat-shape-corset):
	decide on figure of bat corset.

To say ClothingDesc of (C - bat-shape-corset):
	say "A stylish black overbust corset in the shape of a bat. You can feel powerful magic flowing from it.".

To decide which object is the unique-upgrade-target of (C - bat-shape-corset):
	if diaper quest is 1, decide on bat-pattern-corset;
	decide on slutty-bat-corset.


bat-pattern-corset is a bat corset. bat-pattern-corset is high cut. The text-shortcut of bat-pattern-corset is "bpco".
Definition: bat-pattern-corset is grey themed: decide yes.

To decide which number is the initial outrage of (C - bat-pattern-corset):
	decide on 2.
To decide which number is the initial cringe of (C - bat-pattern-corset):
	decide on 4.

Figure of Bat Pattern Corset is the file "Items/Clothes/Upper/Corsets/batcorset2.png".
To decide which figure-name is clothing-image of (C - bat-pattern-corset):
	decide on figure of bat pattern corset.

Definition: bat-pattern-corset is transformation-protected:
	if diaper quest is 1, decide yes;
	decide no.

To decide which object is the unique-upgrade-target of (C - bat-pattern-corset):
	decide on slutty-bat-corset.

To say MediumDesc of (C - bat-pattern-corset):
	say "bat pattern corset".
Understand "pattern" as bat-pattern-corset.
To say ClothingDesc of (C - bat-pattern-corset):
	say "A cute grey overbust corset with a spooky pattern of bats, ghosts and candy on it. You can feel powerful magic flowing from it.".


slutty-bat-corset is a bat corset. slutty-bat-corset is ridiculously low cut. slutty-bat-corset is top-exclusive. The text-shortcut of slutty-bat-corset is "ncbc". slutty-bat-corset is normally-partially-nipple-covering. slutty-bat-corset is optional-top-displacable.
Definition: slutty-bat-corset is grey themed: decide yes.

To decide which number is the initial outrage of (C - slutty-bat-corset):
	decide on 6.

Figure of Slutty Bat Corset is the file "Items/Clothes/Upper/Corsets/batcorset3.png".
To decide which figure-name is clothing-image of (C - slutty-bat-corset):
	decide on figure of slutty bat corset.

Definition: slutty-bat-corset is transformation-protected: decide yes.

To say MediumDesc of (C - slutty-bat-corset):
	say "nipple clamp bat corset".
Understand "nipple", "clamp" as slutty-bat-corset.
To say ClothingDesc of (C - slutty-bat-corset):
	say "A cute grey underbust corset with a spooky pattern of bats, ghosts and candy on it. It has bat wings at the back and nipple clamps in the shape of small bats that come up via chains to semi-cover your nipples. You can feel powerful magic flowing from it.".

bondage-corset is a corset. bondage-corset is leather. bondage-corset is transformation-rare. bondage-corset is normally-nipple-covering. bondage-corset is high cut. bondage-corset is top-displacable.

The text-shortcut of bondage-corset is "bdct".

Figure of bondage-corset is the file "Items/Clothes/Upper/Corsets/bondagecorset1.png".
To decide which figure-name is clothing-image of (C - bondage-corset):
	decide on figure of bondage-corset.

Definition: bondage-corset is black themed: decide yes.

To say ClothingDesc of (C - bondage-corset):
	say "A black leather overbust corset with a zip, tight buckle straps, and ringlets for bondage anchoring.".

To say ShortDesc of (C - bondage-corset):
	say "bondage corset".
To say MediumDesc of (C - bondage-corset):
	say "leather bondage corset".
Understand "bondage" as bondage-corset.

To decide which number is the initial outrage of (C - bondage-corset):
	decide on 6.

skirted-bondage-corset is a corset. skirted-bondage-corset is latex. skirted-bondage-corset is unique. skirted-bondage-corset is hobble-skirted. skirted-bondage-corset is crotch-skirted. skirted-bondage-corset is fully exposing. skirted-bondage-corset is neck covering. skirted-bondage-corset is enema-helping.

The text-shortcut of skirted-bondage-corset is "sbct".

Figure of skirted-bondage-corset is the file "Items/Clothes/Upper/Corsets/bondagecorset2.png".
To decide which figure-name is clothing-image of (C - skirted-bondage-corset):
	decide on figure of skirted-bondage-corset.

Definition: skirted-bondage-corset is black themed: decide yes.
Definition: skirted-bondage-corset is red themed: decide yes.

To say ClothingDesc of (C - skirted-bondage-corset):
	say "A black underbust corset with several tight buckle straps, connected to a long tight red latex skirt. The outfit also wraps round the back to finish up at the neck, while leaving your [BreastDesc] entirely exposed.".

To say ShortDesc of (C - skirted-bondage-corset):
	say "bondage corset".
To say MediumDesc of (C - skirted-bondage-corset):
	say "skirted bondage corset".
Understand "skirted", "bondage" as skirted-bondage-corset.

To decide which number is the initial outrage of (C - skirted-bondage-corset):
	decide on 12.

skirted-maid-corset is a corset. skirted-maid-corset is latex. skirted-maid-corset is unique. skirted-maid-corset is short. skirted-maid-corset is fully exposing. skirted-maid-corset is neck covering. skirted-maid-corset is only arm covering.


The text-shortcut of skirted-maid-corset is "smct".

Figure of skirted-maid-corset is the file "Items/Clothes/Upper/Corsets/bondagecorset3.png".
To decide which figure-name is clothing-image of (C - skirted-maid-corset):
	decide on figure of skirted-maid-corset.

Definition: skirted-maid-corset is black themed: decide yes.
Definition: skirted-maid-corset is displacable: decide yes.

To say ClothingDesc of (C - skirted-maid-corset):
	say "A black latex underbust corset connected to a skirt with a completely transparent latex 'apron' at the front, providing a window through to your crotch. The outfit also wraps round the back to finish up at the neck, while leaving your [BreastDesc] entirely exposed. [bold type]You can sense that it magically prevents you from increasing your addiction to different tastes while worn.[roman type][line break]".

To say ShortDesc of (C - skirted-maid-corset):
	say "maid corset dress".
To say MediumDesc of (C - skirted-maid-corset):
	say "skirted maid corset".
Understand "skirted", "maid" as skirted-maid-corset.

To decide which number is the initial outrage of (C - skirted-maid-corset):
	decide on 12.

[doesn't cover the bottom at all thanks to apron window]
Definition: skirted-maid-corset is potentially-partially-bottom-layer-concealing: decide no.
Definition: skirted-maid-corset is potentially at least partially vagina covering: decide no.
Definition: skirted-maid-corset is potentially at least partially penis covering: decide no.
Definition: skirted-maid-corset is potentially vagina covering:	decide no.
Definition: skirted-maid-corset is potentially penis covering: decide no.

fetish corset is a corset. fetish corset is latex. fetish corset is top-exclusive. fetish corset is sheer. fetish corset is transformation-rare.

The text-shortcut of fetish corset is "fco".

Definition: fetish corset is yellow themed: decide yes.

Figure of Fetish Corset is the file "Items/Clothes/Upper/Corsets/fetishcorset1.png".

To decide which figure-name is clothing-image of (C - fetish corset):
	decide on figure of fetish corset.

To say ClothingDesc of (C - fetish corset):
	say "[if the outrage of C is too humiliating]An outrageous[otherwise]A [second custom style]lush[roman type][end if] translucent latex underbust corset with an extremely exaggerated shape and rubbery frills at the bottom. This must be designed to be worn exclusively at fetish events.".

To say ShortDesc of (C - fetish corset):
	say "fetish corset".
To say MediumDesc of (C - fetish corset):
	say "latex fetish corset".

To decide which number is the initial outrage of (C - fetish corset):
	decide on 7.

gothic corset is a corset. gothic corset is leather.

Definition: gothic corset is fluid immune: decide yes.
Definition: gothic corset is magic themed: decide yes.
Definition: gothic corset is red themed: decide yes.

The text-shortcut of gothic corset is "gco".

Figure of Gothic Corset is the file "Items/Clothes/Upper/Corsets/gothiccorset1.png".

To decide which figure-name is clothing-image of (C - gothic corset):
	decide on figure of gothic corset.

To say ClothingDesc of (C - gothic corset):
	say "A red and black leather underbust corset with a cross pattern.".

To say ShortDesc of (C - gothic corset):
	say "gothic corset".
To say MediumDesc of (C - gothic corset):
	say "leather gothic corset".

To decide which number is the initial outrage of (C - gothic corset):
	decide on 3.

black corset is a corset. black corset is leather.

Definition: black corset is fluid immune: decide yes.
Definition: black corset is black themed: decide yes.

The text-shortcut of black corset is "lc".

Figure of Leather Corset is the file "Items/Clothes/Upper/Corsets/leathercorset1.png".

To decide which figure-name is clothing-image of (C - black corset):
	decide on figure of leather corset.

To say ClothingDesc of (C - black corset):
	say "A comfortable black underbust corset [if C is worn]that feels nice against your skin[otherwise]that looks expensive[end if].".

santa corset is a corset. santa corset is wool. santa corset is rare. santa corset is normally-nipple-covering. santa corset is top-exclusive. santa corset is average cut. santa corset is top-displacable.

The text-shortcut of santa corset is "san".

Figure of santa corset is the file "Items/Clothes/Upper/Corsets/santacorset1.png".

Definition: santa corset is christmas themed: decide yes.
Definition: santa corset is red themed: decide yes.

To decide which figure-name is clothing-image of (C - santa corset):
	decide on figure of santa corset.

To say ShortDesc of (C - santa corset):
	say "Santa corset".
To say MediumDesc of (C - santa corset):
	say "Santa corset".
To say ClothingDesc of (C - santa corset):
	say "A red overbust corset with fluffy white wool at the top and bottom, to reflect the festive nature of the item.[if C is worn][line break]It looks like it might be able to protect your breasts from injury.[end if]".

To decide what number is the original price of (C - santa corset):
	decide on 6.


pink corset is a corset. pink corset is satin. The text-shortcut of pink corset is "sco".

Figure of Satin Corset is the file "Items/Clothes/Upper/Corsets/satincorset1.png".

To decide which figure-name is clothing-image of (C - pink corset):
	decide on figure of satin corset.

To say MediumDesc of (C - pink corset):
	say "pink satin corset".
To say ClothingDesc of (C - pink corset):
	say "A neon pink satin underbust corset.".

Definition: pink corset is pink themed: decide yes.

To decide which number is the initial outrage of (C - pink corset):
	decide on 4.

spike corset is a corset. spike corset is leather. spike corset is rare. spike corset is normally-nipple-covering. spike corset is top-exclusive. spike corset is low cut. spike corset is spikey. [Seems too stiff to be displacable, even though that bust line is pretty low!]

The text-shortcut of spike corset is "spc".

Figure of spike corset is the file "Items/Clothes/Upper/Corsets/spikecorset1.png".

To decide which figure-name is clothing-image of (C - spike corset):
	decide on figure of spike corset.

To say ClothingDesc of (C - spike corset):
	say "A black overbust corset with terrifying large metal spikes at the bust, and a low bust line to allow for a lot of cleavage.[if C is worn][line break]It looks like it would be a bad idea for enemies to attack your breasts now![end if]".

To uniquely set up (C - spike corset):
	if a random number between 1 and 2 is 1, now C is dominance.

Definition: spike corset is transformation-protected: decide yes.

To decide what number is the original price of (C - spike corset):
	decide on 6.

To say ShortDesc of (C - spike corset):
	say "spike corset".
To say MediumDesc of (C - spike corset):
	say "spike corset".

Definition: spike corset is black themed: decide yes.

vinyl corset is a corset. vinyl corset is pvc. vinyl corset is transformation-rare.

The text-shortcut of vinyl corset is "vco".

Figure of Vinyl Corset is the file "Items/Clothes/Upper/Corsets/vinylcorset1.png".

To decide which figure-name is clothing-image of (C - vinyl corset):
	decide on figure of vinyl corset.

To say ShortDesc of (C - vinyl corset):
	say "vinyl corset".
To say MediumDesc of (C - vinyl corset):
	say "vinyl corset".
To say ClothingDesc of (C - vinyl corset):
	say "[if the outrage of C is too humiliating]An outrageous[otherwise]A [second custom style]gorgeous[roman type][end if] black vinyl fetish underbust corset that clings tightly to the flesh to show off the wearer's curves.".

Definition: vinyl corset is black themed: decide yes.

To decide which number is the initial outrage of (C - vinyl corset):
	decide on 4.

All Corsets ends here.
