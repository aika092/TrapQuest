Clothing Functions by Clothing begins here.



[!<ComputeShortDescOfClothing>+

REQUIRES COMMENTING

+!]
To compute SelfExamineDesc of (C - a clothing):
	say "You are wearing a [ShortDesc of C].  ". [Hopefully, this will never happen, as each piece of clothing will have a description, but it needs to be here just in case.]

[!<SayShortDescOfClothing>+

REQUIRES COMMENTING

+!]
To say ShortDesc of (C - a clothing):
	say "[C]". [Similarly, hopefully this will never happen, as each piece of clothing will have a description, but it needs to be here just in case.]

To say ShortestDesc of (C - a clothing):
	say "item of clothing".

To compute periodic effect of (C - a wearthing):
	do nothing.

To decide which number is the leniency-addition of (C - a clothing):
	decide on 0.

To say ClothingDesc of (C - a clothing):
	say "This item does not yet have a description.".

To say clothing-title-before:
	say "[item style][cumdesc][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][if item described is glued]glued [end if][raw-magic-modifier-desc]".
	
To say clothing-title-after:
	say "[if magic-ID of the item described is identified and magic-type of the item described is not blandness] of [magic-type of the item described][end if][shortcut-desc][ownership-desc][displacement-desc][roman type]".
	
To say shortcut-desc:
	if shortcuts is 1 and inline hyperlinks is 0 and the text-shortcut of item described is not "", say "[bracket][text-shortcut of item described][close bracket]".
	
To decide which number is the heaviness of (C - a clothing):
	let H be 1;
	if C is metal or C is glass, now H is 2;
	increase H by the water-soak of C / 3;
	decide on H.

To decide which number is the hindrance of (C - a clothing):
	decide on 0.

To restock (C - a clothing):
	say "Error - the game tried to restock an item of clothing but there was no specific function to call.  Please report the bug to Aika.".

[!<DamageClothing>+

REQUIRES COMMENTING

+!]
To damage (K - clothing):
	let D be 0;
	unless K is possession and a random number between 1 and 7 < 4, increase D by 1;
	if D is 0, say "[line break]The [K] glows faintly, regenerating the damage as it happens.";
	increase the damage of K by D.


[!<RepairClothing>+

REQUIRES COMMENTING

+!]
To repair (C - clothing):
	replace C;
	if C is crotch-ripped:
		if C is hobble-skirted, now C is crotch-skirted;
		otherwise now C is crotch-intact;
	if C is zippable:
		now C is crotch-zipped.

[!<DisplaceClothing>+

REQUIRES COMMENTING

+!]
To displace (C - clothing):
	if C is displacable:
		now C is crotch-displaced;
	otherwise if C is top-displacable:
		now C is top-displaced.

[!<ReplaceClothing>+

REQUIRES COMMENTING

+!]
To replace (C - clothing):
	now C is crotch-in-place.

[!<RipClothing>+

REQUIRES COMMENTING

+!]
To rip (C - a clothing):
	if C is crotch-zipped, now C is crotch-unzipped;
	if C is rippable and (C is crotch-intact or C is crotch-skirted), now C is crotch-ripped.


[!<DelayedImprintDestroy>+

REQUIRES COMMENTING

+!]
To delayed imprint destroy (C - a clothing):
	now C is in soon-to-imprint.


[!<DestoryClothing>+

REQUIRES COMMENTING

+!]
To destroy (C - a clothing):
	if clothing-imprinting > 0 and C is worn, imprint C;
	only destroy C.

[!<OnlyDestroyClothing>+

REQUIRES COMMENTING

+!]
To only destroy (C - clothing):
	now the top-layer of C is 0;
	now the mid-layer of C is 0;
	now the bottom-layer of C is 0;
	now the used condoms of C is 0;
	now the empty condoms of C is 0;
	clean C;
	now the water-soak of C is 0;
	dislodge C;
	now C is not stuck;
	now C is crotch-in-place;
	if C is strut enabling and C is worn and the strut of the player is 1 and the strutskill of the player is 0 and the number of worn strut enabling clothing is 1, now the strut of the player is 0;
	now C is bland;
	now C is unsure;
	now C is blandness;
	now C is unidentified;
	now the raw-magic-modifier of C is 0;
	now C is normal;
	now the damage of C is 0;
	now C is not-influencing;
	repeat with M running through monsters retaining C:
		now M is not retaining C;
	repeat with M running through monsters rejecting C:
		now M is not rejecting C;
	remove C from play;
	set up C.


Clothing Functions ends here.
