Clothing Functions by Clothing begins here.

[!<ComputeShortDescOfClothing>+

REQUIRES COMMENTING

+!]
To compute SelfExamineDesc of (C - a clothing):
	say "You are wearing a [ShortDesc of C]. ". [Hopefully, this will never happen, as each piece of clothing will have a description, but it needs to be here just in case.]

[!<SayShortDescOfClothing>+

REQUIRES COMMENTING

+!]
To say ShortDesc of (C - a clothing):
	say "[C]". [Similarly, hopefully this will never happen, as each piece of clothing will have a description, but it needs to be here just in case.]

To say ShortestDesc of (C - a clothing):
	say "item of clothing".

To decide which number is the masturbation-bonus of (C - a clothing):
	let X be 0;
	decrease X by the total-soak of C / 3.

To compute periodic effect of (C - a wearthing):
	do nothing.

To decide which number is the leniency-addition of (C - a clothing): [How much extra size is necessary to burst through a bra or corset?]
	decide on 0.

To say ClothingDesc of (C - a clothing):
	say "This item does not yet have a description.".

To say item style:
	if shortcuts is 1, say newbie style.

To say clothing-title-before:
	say "[TQlink of item described][item style][cumdesc][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][if item described is glued]glued [end if][raw-magic-modifier-desc]".

To say clothing-title-after:
	say "[if magic-ID of the item described is identified and magic-type of the item described is not blandness] of [magic-type of the item described][end if][roman type][quest-desc][shortcut-desc][ownership-desc][displacement-desc][TQxlink of item described][verb-desc of item described]".

To say shortcut-desc:
	if shortcuts is 1 and inline hyperlinks is 0 and the text-shortcut of item described is not "", say "[bracket][text-shortcut of item described][close bracket]".

To decide which number is the heaviness of (C - a clothing):
	let H be 1;
	if C is metal or C is glass, now H is 2;
	increase H by the water-soak of C / 3;
	decide on H.

To decide which number is the hindrance of (C - a clothing):
	decide on 0.

To decide which number is the hindrance of (Y - yourself):
	let H be a random worn shoes;
	if H is clothing, decide on the hindrance of H;
	decide on 0.

To restock (C - a clothing):
	say "Error - the game tried to restock an item of clothing but there was no specific function to call. Please report the bug to Aika.".

[!<DamageClothing>+

REQUIRES COMMENTING

+!]
To damage (K - clothing):
	let D be 0;
	unless K is possession and a random number between 1 and 7 < 4, increase D by 1;
	if D is 0, say "[line break]The [K] glows faintly, regenerating the damage as it happens.";
	increase the damage of K by D;
	if D > 0 and debuginfo > 0, say "[input-style][ShortDesc of K] damage [damage of K - 1] -> [damage of K][roman type][line break]".

[!<RepairClothing>+

REQUIRES COMMENTING

+!]
To repair (C - clothing):
	replace C;
	now C is top-intact;
	if C is crotch-ripped:
		if C is hobble-skirted, now C is crotch-skirted;
		otherwise now C is crotch-intact;
	if C is zippable:
		ZipUp C.

[!<DisplaceClothing>+

Clothing goes from in place to displaced

+!]
To Displace (C - clothing):
	if C is displacable:
		now C is crotch-displaced;
		dislodge C;
		force clothing-focus redraw; [Forces redraw of clothing inventory window]
	otherwise:
		TopDisplace C.

[!<ReplaceClothing>+

Clothing goes from displaced to in place.

+!]
To Replace (C - clothing):
	if C is not crotch-in-place:
		now C is crotch-in-place;
		if C is ass plugging:
			now C is penetrating asshole;
			ruin asshole;
		if C is vagina plugging:
			now C is penetrating vagina;
			ruin vagina;
		force clothing-focus redraw. [Forces redraw of clothing inventory window]

[!<TopDisplaceClothing>+

Clothing goes from top in place to displaced

+!]
To TopDisplace (C - clothing):
	if C is not not-top-displacable:
		now C is top-displaced;
		force clothing-focus redraw. [Forces redraw of clothing inventory window]

[!<TopReplaceClothing>+

Clothing goes from displaced to in place.

+!]
To TopReplace (C - clothing):
	if C is not top-placed:
		now C is top-placed;
		force clothing-focus redraw. [Forces redraw of clothing inventory window]

[!<ZipDownClothing>+

Clothing goes from zipped to unzipped

+!]
To ZipDown (C - clothing):
	if C is crotch-zipped:
		now C is crotch-unzipped;
		force clothing-focus redraw. [Forces redraw of clothing inventory window]

[!<ZipUpClothing>+

Clothing goes from unzipped to zipped.

+!]
To ZipUp (C - clothing):
	if C is crotch-unzipped:
		now C is crotch-zipped;
		force clothing-focus redraw. [Forces redraw of clothing inventory window]

[!<RipClothing>+

REQUIRES COMMENTING

+!]
To rip (C - a clothing):
	ZipDown C;
	if C is rippable and (C is crotch-intact or C is crotch-skirted), now C is crotch-ripped.

[!<DelayedImprintDestroy>+

REQUIRES COMMENTING

+!]
To delayed imprint destroy (C - a clothing):
	now C is in soon-to-imprint.

To SemenSoakUp (C - a clothing) by (N - a number):
	if C is listed in the list of stacked diapers:
		increase the semen-soak of diaper-stack by N;
		increase the perceived-semen-soak of diaper-stack by N;
	increase the semen-soak of C by N;
	now previous-clothing-glazed is -1; [force appearance reassessment]
	if C is diaper, increase the perceived-semen-soak of C by N.

To UrineSoakUp (C - a clothing) by (N - a number):
	if C is listed in the list of stacked diapers:
		increase the urine-soak of diaper-stack by N;
		increase the perceived-urine-soak of diaper-stack by N;
	increase the urine-soak of C by N;
	now previous-clothing-glazed is -1; [force appearance reassessment]
	if C is diaper, increase the perceived-urine-soak of C by N.

To MilkSoakUp (C - a clothing) by (N - a number):
	if C is listed in the list of stacked diapers:
		increase the milk-soak of diaper-stack by N;
		increase the perceived-milk-soak of diaper-stack by N;
	increase the milk-soak of C by N;
	now previous-clothing-glazed is -1; [force appearance reassessment]
	if C is diaper, increase the perceived-milk-soak of C by N.

To WaterSoakUp (C - a clothing) by (N - a number):
	if C is listed in the list of stacked diapers:
		increase the water-soak of diaper-stack by N;
		increase the perceived-water-soak of diaper-stack by N;
	increase the water-soak of C by N;
	now previous-clothing-glazed is -1; [force appearance reassessment]
	if C is diaper, increase the perceived-water-soak of C by N.

[We call the stealth functions when it's a way that a 100% babified player might not notice the soaking happening.]

To StealthSemenSoakUp (C - a clothing) by (N - a number):
	if C is listed in the list of stacked diapers:
		increase the semen-soak of diaper-stack by N;
		if the player is diaper aware, increase the perceived-semen-soak of diaper-stack by N;
	if the player is diaper aware, increase the perceived-semen-soak of C by N;
	increase the semen-soak of C by N.

To StealthUrineSoakUp (C - a clothing) by (N - a number):
	if C is listed in the list of stacked diapers:
		increase the urine-soak of diaper-stack by N;
		if the player is diaper aware, increase the perceived-urine-soak of diaper-stack by N;
	if the player is diaper aware, increase the perceived-urine-soak of C by N;
	increase the urine-soak of C by N.

To StealthMilkSoakUp (C - a clothing) by (N - a number):
	if C is listed in the list of stacked diapers:
		increase the milk-soak of diaper-stack by N;
		if the player is diaper aware, increase the perceived-milk-soak of diaper-stack by N;
	if the player is diaper aware, increase the perceived-milk-soak of C by N;
	increase the milk-soak of C by N.

To StealthWaterSoakUp (C - a clothing) by (N - a number):
	if C is listed in the list of stacked diapers:
		increase the water-soak of diaper-stack by N;
		if the player is diaper aware, increase the perceived-water-soak of diaper-stack by N;
	if the player is diaper aware, increase the perceived-water-soak of C by N;
	increase the water-soak of C by N.

[!<DestroyClothing>+

REQUIRES COMMENTING

+!]
To destroy (C - a clothing):
	if clothing-imprinting > 0 and (C is worn or C is listed in the list of stacked diapers), imprint C;
	only destroy C.

To only destroy (C - a thing):
	destroy C.

To WaterEmpty (C - a clothing):
	now the water-soak of C is 0;
	if C is diaper, now the perceived-water-soak of C is 0;
	if C is worn, update appearance level.
To Drench (C - a clothing):
	increase the water-soak of C by the soak-limit of C - the total-soak of C;
	if C is diaper and the player is diaper aware, now the perceived-water-soak of C is the water-soak of C;
	if C is worn, update appearance level.

[!<OnlyDestroyClothing>+

Skip imprinting

+!]
To only destroy (C - clothing):
	uniquely destroy C;
	now C is crotch-in-place;
	now C is top-placed;
	now the top-layer of C is 0;
	now the mid-layer of C is 0;
	now the bottom-layer of C is 0;
	now the used condoms of C is 0;
	now the empty condoms of C is 0;
	clean C;
	WaterEmpty C;
	dislodge C;
	repair C;
	if C is crotch-unzipped, now C is crotch-zipped;
	now C is not stuck;
	now C is not glued;
	if C is strut enabling and C is worn and the strut of the player is 1 and the strutskill of the player is 0 and the number of worn strut enabling clothing is 1, now the strut of the player is 0;
	unless C is headgear, now C is bland; [The state of headgear is important and shouldn't be reset]
	if C is discovered varied, now C is blandness;
	unless C is alwaysSure, now C is unsure;
	unless C is alwaysIdentified, now C is unidentified;
	now the raw-magic-modifier of C is 0;
	now C is unowned;
	now the damage of C is 0;
	now C is not-influencing;
	repeat with M running through monsters retaining C:
		now M is not retaining C;
	repeat with M running through monsters rejecting C:
		now M is not rejecting C;
	remove C from play;
	if C is listed in the list of stacked diapers, diaperRemove C;
	set up C.

Clothing Functions ends here.
