Clothing Functions by Clothing begins here.

To compute SelfExamineDesc of (C - a clothing):
	say "You are wearing a [ShortDesc of C]. ". [Hopefully, this will never happen, as each piece of clothing will have a description, but it needs to be here just in case.]

To say ShortDesc of (C - a clothing):
	say "[C]". [Similarly, hopefully this will never happen, as each piece of clothing will have a description, but it needs to be here just in case.]

To say ShortestDesc of (C - a clothing):
	say "item of clothing".

To decide which number is the masturbation-bonus of (C - a thing):
	decide on 0.

To compute periodic effect of (C - a wearthing):
	do nothing.
To compute school periodic effect of (C - a wearthing):
	do nothing.

To decide which number is the leniency-addition of (C - a clothing): [How much extra size is necessary to burst through a bra or corset?]
	decide on 0.

To say ClothingDesc of (C - a clothing):
	say "This item does not yet have a description.".

To say item style:
	if shortcuts is 1, say newbie style.

To say clothing-title-before:
	say "[TQlink of item described][item style][cumdesc][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]".

To say clothing-title-after:
	say "[if magic-ID of the item described is identified and magic-type of the item described is not blandness] of [magic-type of the item described][end if][roman type][quest-desc][shortcut-desc][displacement-desc of item described][if the stolen-strength of item described > 0] (STOLEN STRENGTH)[end if][TQxlink of item described][verb-desc of item described]".

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

To damage (K - clothing):
	let D be 0;
	unless K is possession and a random number between 1 and 7 < 4, increase D by 1;
	if D is 0, say "[line break]The [K] glows faintly, regenerating the damage as it happens.";
	increase the damage of K by D;
	if D > 0 and debuginfo > 0, say "[input-style][ShortDesc of K] damage [damage of K - 1] -> [damage of K][roman type][line break]".

To repair (C - clothing):
	replace C;
	now C is top-intact;
	if C is crotch-ripped:
		if C is hobble-skirted, now C is crotch-skirted;
		otherwise now C is crotch-intact;
	if C is zippable:
		now C is crotch-zipped;
		if C is worn, force clothing-focus redraw; [Forces redraw of clothing inventory window]
		if C is carried, force inventory-focus redraw; [Forces redraw of inventory window]
	if C is worn, update appearance level.

[!<DisplaceClothing>+

Clothing goes from in place to displaced

+!]
To Displace (C - clothing):
	if C is displacable:
		now C is crotch-displaced;
		dislodge C;
		force clothing-focus redraw; [Forces redraw of clothing inventory window]
		update appearance level;
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
		force clothing-focus redraw; [Forces redraw of clothing inventory window]
		update appearance level.

[!<TopDisplaceClothing>+

Clothing goes from top in place to displaced

+!]
To TopDisplace (C - clothing):
	if C is actually top-displacable:
		now C is top-displaced;
		force clothing-focus redraw; [Forces redraw of clothing inventory window]
		update appearance level.

[!<TopReplaceClothing>+

Clothing goes from displaced to in place.

+!]
To TopReplace (C - clothing):
	if C is not top-placed:
		now C is top-placed;
		force clothing-focus redraw; [Forces redraw of clothing inventory window]
		update appearance level.

[!<ZipDownClothing>+

Clothing goes from zipped to unzipped

+!]
To ZipDown (C - clothing):
	if C is crotch-zipped:
		now C is crotch-unzipped;
		force clothing-focus redraw; [Forces redraw of clothing inventory window]
		update appearance level.

[!<ZipUpClothing>+

Clothing goes from unzipped to zipped.

+!]
To ZipUp (C - clothing):
	if C is crotch-unzipped:
		now C is crotch-zipped;
		force clothing-focus redraw; [Forces redraw of clothing inventory window]
		update appearance level.

To ZipOrRip (C - a clothing):
	ZipDown C;
	if C is rippable and (C is crotch-intact or C is crotch-skirted):
		now C is crotch-ripped;
		update appearance level.

To delayed imprint destroy (C - a clothing):
	now C is in soon-to-imprint.

To SemenSoakUp (C - a clothing) by (N - a number):
	if N > 0:
		if C is listed in the list of stacked diapers:
			now previous-clothing-glazed is -1; [force appearance reassessment]
			let dCapacity be the soak-limit of C - the total-soak of C;
			let dLeftover be N - dCapacity;
			if dLeftover > 0: [semen leaks downwards]
				increase the semen-soak of C by dCapacity;
				increase the perceived-semen-soak of C by dCapacity;
				increase the semen-soak of diaper-stack by dCapacity;
				increase the perceived-semen-soak of diaper-stack by dCapacity;
				let E be 0;
				repeat with D running through the list of stacked diapers:
					if D is C:
						now E is 1;
					otherwise if E is 1: [the next diaper down]
						now E is 0;
						SemenSoakUp D by dLeftover;
			otherwise:
				increase the semen-soak of C by N;
				increase the perceived-semen-soak of C by N;
				increase the semen-soak of diaper-stack by N;
				increase the perceived-semen-soak of diaper-stack by N;
		otherwise:
			increase the semen-soak of C by N;
			now previous-clothing-glazed is -1; [force appearance reassessment]
			if C is diaper, increase the perceived-semen-soak of C by N;
		if C is worn, update appearance level.

To UrineSoakUp (C - a clothing) by (N - a number):
	if N > 0:
		if C is listed in the list of stacked diapers:
			now previous-clothing-glazed is -1; [force appearance reassessment]
			let dCapacity be the soak-limit of C - the total-soak of C;
			let dLeftover be N - dCapacity;
			if dLeftover > 0: [urine leaks downwards]
				increase the urine-soak of C by dCapacity;
				increase the perceived-urine-soak of C by dCapacity;
				increase the urine-soak of diaper-stack by dCapacity;
				increase the perceived-urine-soak of diaper-stack by dCapacity;
				let E be 0;
				repeat with D running through the list of stacked diapers:
					if D is C:
						now E is 1;
					otherwise if E is 1: [the next diaper down]
						now E is 0;
						UrineSoakUp D by dLeftover;
			otherwise:
				increase the urine-soak of diaper-stack by N;
				increase the perceived-urine-soak of diaper-stack by N;
				increase the urine-soak of C by N;
				increase the perceived-urine-soak of C by N;
		otherwise:
			increase the urine-soak of C by N;
			now previous-clothing-glazed is -1; [force appearance reassessment]
			if C is diaper, increase the perceived-urine-soak of C by N;
		if C is worn, update appearance level.

To MilkSoakUp (C - a clothing) by (N - a number):
	if N > 0:
		if C is listed in the list of stacked diapers:
			now previous-clothing-glazed is -1; [force appearance reassessment]
			let dCapacity be the soak-limit of C - the total-soak of C;
			let dLeftover be N - dCapacity;
			if dLeftover > 0: [milk leaks downwards]
				increase the milk-soak of C by dCapacity;
				increase the perceived-milk-soak of C by dCapacity;
				increase the milk-soak of diaper-stack by dCapacity;
				increase the perceived-milk-soak of diaper-stack by dCapacity;
				let E be 0;
				repeat with D running through the list of stacked diapers:
					if D is C:
						now E is 1;
					otherwise if E is 1: [the next diaper down]
						now E is 0;
						MilkSoakUp D by dLeftover;
			otherwise:
				increase the milk-soak of C by N;
				increase the perceived-milk-soak of C by N;
				increase the milk-soak of diaper-stack by N;
				increase the perceived-milk-soak of diaper-stack by N;
		otherwise:
			increase the milk-soak of C by N;
			now previous-clothing-glazed is -1; [force appearance reassessment]
			if C is diaper, increase the perceived-milk-soak of C by N;
		if C is worn, update appearance level.

To WaterSoakUp (C - a clothing) by (N - a number):
	if N > 0:
		if C is listed in the list of stacked diapers:
			now previous-clothing-glazed is -1; [force appearance reassessment]
			let dCapacity be the soak-limit of C - the total-soak of C;
			let dLeftover be N - dCapacity;
			if dLeftover > 0: [water leaks downwards]
				increase the water-soak of C by dCapacity;
				increase the perceived-water-soak of C by dCapacity;
				increase the water-soak of diaper-stack by dCapacity;
				increase the perceived-water-soak of diaper-stack by dCapacity;
				let E be 0;
				repeat with D running through the list of stacked diapers:
					if D is C:
						now E is 1;
					otherwise if E is 1: [the next diaper down]
						now E is 0;
						WaterSoakUp D by dLeftover;
			otherwise:
				increase the water-soak of C by N;
				increase the perceived-water-soak of C by N;
				increase the water-soak of diaper-stack by N;
				increase the perceived-water-soak of diaper-stack by N;
		otherwise:
			increase the water-soak of C by N;
			now previous-clothing-glazed is -1; [force appearance reassessment]
			if C is diaper, increase the perceived-water-soak of C by N;
		if C is worn, update appearance level.

[We call the stealth functions when it's a way that a 100% babified player might not notice the soaking happening.]

To StealthSemenSoakUp (C - a clothing) by (N - a number):
	if C is listed in the list of stacked diapers:
		if the player is diaper aware:
			increase the perceived-semen-soak of diaper-stack by N;
			now previous-clothing-glazed is -1; [force appearance reassessment]
		let dCapacity be the soak-limit of C - the total-soak of C;
		let dLeftover be N - dCapacity;
		if dLeftover > 0: [semen leaks downwards]
			increase the semen-soak of C by dCapacity;
			increase the semen-soak of diaper-stack by dCapacity;
			if the player is diaper aware, increase the perceived-semen-soak of C by dCapacity;
			let E be 0;
			repeat with D running through the list of stacked diapers:
				if D is C:
					now E is 1;
				otherwise if E is 1: [the next diaper down]
					now E is 0;
					StealthSemenSoakUp D by dLeftover;
		otherwise:
			increase the semen-soak of C by N;
			increase the semen-soak of diaper-stack by N;
	otherwise:
		increase the semen-soak of C by N;
		if the player is diaper aware:
			now previous-clothing-glazed is -1; [force appearance reassessment]
			if C is diaper, increase the perceived-semen-soak of C by N.

To StealthUrineSoakUp (C - a clothing) by (N - a number):
	if C is listed in the list of stacked diapers:
		if the player is bladder diaper aware:
			increase the perceived-urine-soak of diaper-stack by N;
			now previous-clothing-glazed is -1; [force appearance reassessment]
		let dCapacity be the soak-limit of C - the total-soak of C;
		let dLeftover be N - dCapacity;
		if dLeftover > 0: [urine leaks downwards]
			increase the urine-soak of C by dCapacity;
			increase the urine-soak of diaper-stack by dCapacity;
			if the player is bladder diaper aware, increase the perceived-urine-soak of C by dCapacity;
			let E be 0;
			repeat with D running through the list of stacked diapers:
				if D is C:
					now E is 1;
				otherwise if E is 1: [the next diaper down]
					now E is 0;
					StealthUrineSoakUp D by dLeftover;
		otherwise:
			increase the urine-soak of C by N;
			increase the urine-soak of diaper-stack by N;
	otherwise:
		increase the urine-soak of C by N;
		if the player is bladder diaper aware:
			now previous-clothing-glazed is -1; [force appearance reassessment]
			if C is diaper, increase the perceived-urine-soak of C by N.

To StealthMilkSoakUp (C - a clothing) by (N - a number):
	if C is listed in the list of stacked diapers:
		if the player is diaper aware:
			increase the perceived-milk-soak of diaper-stack by N;
			now previous-clothing-glazed is -1; [force appearance reassessment]
		let dCapacity be the soak-limit of C - the total-soak of C;
		let dLeftover be N - dCapacity;
		if dLeftover > 0: [milk leaks downwards]
			increase the milk-soak of C by dCapacity;
			increase the milk-soak of diaper-stack by dCapacity;
			if the player is diaper aware, increase the perceived-milk-soak of C by dCapacity;
			let E be 0;
			repeat with D running through the list of stacked diapers:
				if D is C:
					now E is 1;
				otherwise if E is 1: [the next diaper down]
					now E is 0;
					StealthmilkSoakUp D by dLeftover;
		otherwise:
			increase the milk-soak of C by N;
			increase the milk-soak of diaper-stack by N;
	otherwise:
		increase the milk-soak of C by N;
		if the player is diaper aware:
			now previous-clothing-glazed is -1; [force appearance reassessment]
			if C is diaper, increase the perceived-milk-soak of C by N.

To StealthWaterSoakUp (C - a clothing) by (N - a number):
	if C is listed in the list of stacked diapers:
		if the player is diaper aware:
			increase the perceived-water-soak of diaper-stack by N;
			now previous-clothing-glazed is -1; [force appearance reassessment]
		let dCapacity be the soak-limit of C - the total-soak of C;
		let dLeftover be N - dCapacity;
		if dLeftover > 0: [water leaks downwards]
			increase the water-soak of C by dCapacity;
			increase the water-soak of diaper-stack by dCapacity;
			if the player is diaper aware, increase the perceived-water-soak of C by dCapacity;
			let E be 0;
			repeat with D running through the list of stacked diapers:
				if D is C:
					now E is 1;
				otherwise if E is 1: [the next diaper down]
					now E is 0;
					StealthWaterSoakUp D by dLeftover;
		otherwise:
			increase the water-soak of C by N;
			increase the water-soak of diaper-stack by N;
	otherwise:
		increase the water-soak of C by N;
		if the player is diaper aware:
			now previous-clothing-glazed is -1; [force appearance reassessment]
			if C is diaper, increase the perceived-water-soak of C by N.

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
	if tough-shit is 0 and C is glued and C is not hugger-panties and C is not hugger-gag:
		decrease the glue timer of C by 50;
		if the glue timer of C > 0:
			if C is held, say "The glue on [NameDesc of C] is rapidly weakening!";
		otherwise:
			now the glue timer of C is 0;
			if C is held, say "The glue on [NameDesc of C] has completely degraded[if C is worn]. It's no longer stuck to you![otherwise].[end if]";
	if C is carried, force immediate inventory-focus redraw;
	if C is worn:
		force immediate clothing-focus redraw;
		update appearance level.

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
	UsedCondomWipe C;
	now the empty condoms of C is 0;
	repeat with K running through things inseminating C:
		now K is not inseminating C;
	now the stolen-strength of C is 0;
	now the augmentation-charging-time of C is 40;
	now the augmentation-grow-charge of C is 0;
	fully clean C;
	dislodge C;
	repair C;
	if C is crotch-unzipped, now C is crotch-zipped;
	now C is not stuck;
	ungluify C;
	now C is unlocked;
	if C is strut enabling and C is worn and the strut of the player is 1 and the strutskill of the player is 0 and the number of worn strut enabling clothing is 1, now the strut of the player is 0;
	unless C is headgear, now C is bland; [The state of headgear is important and shouldn't be reset]
	if C is discovered varied, now C is blandness;
	unless C is alwaysSure, now C is unsure;
	unless C is alwaysIdentified, now C is unidentified;
	now the raw-magic-modifier of C is 0;
	now the owner of C is nothing;
	now the damage of C is 0;
	now C is not-influencing;
	now C is not temporarily-displaced;
	now C is not temporarily-removed;
	repeat with M running through monsters:
		now M is not rejecting C;
	repeat with K running through specific-keys covering C:
		destroy K;
	late uniquely destroy C; [some stuff needs to happen after cleaning etc.]
	if C is headgear and C is not held and C is not in the location of the player: [headgear that is destroyed off-stage shouldn't be added to the list of recycled headgear]
		remove C from play;
		set up C;
	otherwise:
		remove C from play;
		if C is listed in the list of stacked diapers, diaperRemove C;
		set up C;
		if C is headgear, commence recycling of C.

To late uniquely destroy (C - a clothing):
	do nothing.

Clothing Functions ends here.
