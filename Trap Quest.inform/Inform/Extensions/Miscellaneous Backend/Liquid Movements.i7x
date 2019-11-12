Liquid Movements by Miscellaneous Backend begins here.

Part 1 - New Stuff

A liquid-object is a kind of object.

semen is a liquid-object.
urine is a liquid-object.
milk is a liquid-object.
water is a liquid-object.
murkwater is a liquid-object.

To say variable (L - a liquid-object):
	say "[L]".
To say variable (L - semen):
	say "[semen]".
To say variable (L - urine):
	say "[urine]".
To say variable (L - milk):
	say "[milk]".
To say variable (L - murkwater):
	say "murky liquid".

To reset soak flavour:
	repeat with T running through soaked clothing:
		now T is unsoaked;
	repeat with T running through soaked body parts:
		now T is unsoaked.


To LiquidSoak (L - a liquid-object) On (O - an object):
	say "Error - no LiquidSoak function for soaking [L] on [O].".

To LiquidSoak (L - semen) On (B - a body part):
	if diaper quest is 0:
		if the semen coating of B is 0, force inventory-focus redraw; [Forces redraw of inventory window for wipe buttons to appear]
		increase the semen coating of B by 1.
To LiquidSoak (L - urine) On (B - a body part):
	do nothing.
To LiquidSoak (L - urine) On (B - hair):
	increase the urine coating of B by 1.
To LiquidSoak (L - milk) On (B - a body part):
	do nothing.
To LiquidSoak (L - water) On (B - a body part):
	do nothing.
To LiquidSoak (L - murkwater) On (B - an object):
	LiquidSoak semen on B.
To LiquidSoak (L - semen) On (C - a clothing):
	SemenSoakUp C by 1.
To LiquidSoak (L - urine) On (C - a clothing):
	UrineSoakUp C by 1.
To LiquidSoak (L - milk) On (C - a clothing):
	MilkSoakUp C by 1.
To LiquidSoak (L - water) On (C - a clothing):
	WaterSoakUp C by 1.

To Squirt (L - a liquid-object) On (C - an object) by (N - a number):
	unless C is not thighs and bukkake fetish is 0 and L is not water, UniqueSquirt L on C by N;
	now C is soaked.

Definition: a clothing is liquid-soak-appropriate if it is crotch covering or bukkake fetish is 1.

To Squirt (L - a liquid-object) On (C - a clothing) by (N - a number):
	if L is water or C is liquid-soak-appropriate:
		now C is soaked;
		if C is fluid vulnerable and C is worn, say ", [if N > 5]drenching[otherwise if the total-soak of C is 0]wetting[otherwise][one of]spreading through[or]permeating[or]extending throughout[at random][end if] it.";
		if C is worn:
			force clothing-focus redraw;
		otherwise if C is held:
			force inventory-focus redraw;
		UniqueSquirt L on C by N.

To UniqueSquirt (L - a liquid-object) On (C - an object) by (N - a number):
	say "Error - no Soak function for soaking [L] on [C].".


times-bukkaked is a number that varies.

To display cumshot reaction to (N - a number):
	if N >= 10:
		cutshow figure of cumshot reaction 5 for face;
	otherwise if times-bukkaked < 5:
		cutshow figure of cumshot reaction 1 for face;
	otherwise if the semen addiction of the player < 7 and the semen taste addiction of the player < 7:
		cutshow figure of cumshot reaction 4 for face;
	otherwise if the semen taste addiction of the player > 14:
		cutshow figure of cumshot reaction 3 for face;
	otherwise:
		cutshow figure of cumshot reaction 2 for face;


To UniqueSquirt (L - a liquid-object) On (C - Face) by (N - a number):
	let M be N / 2; [headgear & hair]
	if L is semen:
		increase times-bukkaked by 1;
		let LC be a random worn lipstick collar;
		if LC is clothing, increase N by 1;
		if N > a random number between 0 and 3, SemenAddictUp 1;
		if the semen addiction of the player > 14:
			say "You shiver with arousal as your face gets a fresh gooey load.";
			stimulate face from semen times N;
		if M > 0 and hair is not soaked:
			decrease N by M; [face]
			Squirt L on hair by M;
		while the semen coating of C < 10 and N > 0:
			LiquidSoak L on C;
			decrease N by 1;
		if the semen coating of C > 0:
			say "[SemenEncounterFlav]";
			if newbie tips is 1, say "[one of][newbie style]Newbie tip: You've got cum on your face! That's not great - you'll be extremely humiliated if anyone sees you. It'll slowly drip off, but if you have any spare clothing, you might be able to use it as a rag to wipe the cum off, by typing 'wipe face with X'. Your chest and belly work similarly.[roman type][line break][or][stopping]";
			if LC is tethering lipstick collar, end tethering;
			if face is temporarily made up and a random number between 1 and 6 is 1:
				say "[if the make-up of face > 1]Some of your[otherwise]Your[end if] make up is washed away.";
				FaceDown 1;
		if the semen coating of C >= 10 and N > 0:
			if C is unsoaked, say "The [semen] drips down your chin and onto your [BreastDesc].";
			Squirt L on Breasts by N;
	otherwise:
		if M > 0:
			decrease N by M; [face]
			UniqueSquirt L on hair by M;
		if the semen coating of C > 0:
			if the semen coating of C > N:
				say "The [variable L] washes some [semen] off of your face. ";
				PuddleUp semen by N;
				decrease the semen coating of C by N;
			otherwise:
				say "The [variable L] washes all the [semen] off of your face. ";
				PuddleUp semen by the semen coating of C;
				now the semen coating of C is 0;
		if face is temporarily made up:
			if the make-up of face > N:
				say "The [variable L] washes some of the make-up from your face. ";
			otherwise:
				say "The [variable L] washes all the make-up from your face. ";
			FaceDown N;
		if breasts is unsoaked, say "The [variable L] steadily flows down your face to your [BreastDesc].";
		Squirt L on Breasts by N.

To UniqueSquirt (L - a liquid-object) On (C - Hair) by (N - a number):
	let M be N / 2; [headgear]
	let H be a random worn able to take more liquid headgear;
	if M > 0 and H is headgear:
		decrease N by M; [hair]
		say "It gets all over your [ShortDesc of H]";
		Squirt L on H by M;
	if L is semen or L is urine:
		while the semen coating of C + the urine coating of C < the largeness of hair and N > 0:
			LiquidSoak L on C;
			decrease N by 1;
		if N > 0 and the urine coating of C is 0 and the semen coating of C > 0: [if hair is completely saturated by cum we want to replace one unit with urine so that the hair is correctly identified as both cum and piss stained]
			LiquidSoak L on C;
			decrease the semen coating of C by 1;
			decrease N by 1;
		if the semen coating of C + the urine coating of C >= the largeness of hair and N > 0:
			if C is unsoaked, say "The [variable L] drips down your [ShortDesc of hair] and to the floor.";
			PuddleUp L by N;
	otherwise:
		if C is unsoaked, say "The [variable L] drips down your [ShortDesc of hair] and to the floor.";
		PuddleUp L by N.

highest-cleavage-clothing is an object that varies.

To decide which number is highest-cleavage:
	let C be 0;
	repeat with B running through worn breast covering clothing:
		if B is fully covering:
			now C is 6;
			now highest-cleavage-clothing is B;
		if B is high cut and C < 5:
			now C is 5;
			now highest-cleavage-clothing is B;
		if B is average cut and C < 4:
			now C is 4;
			now highest-cleavage-clothing is B;
		if B is low cut and C < 3:
			now C is 3;
			now highest-cleavage-clothing is B;
		if B is very low cut and C < 2:
			now C is 2;
			now highest-cleavage-clothing is B;
		if B is ridiculously low cut and C < 1:
			now C is 1;
			now highest-cleavage-clothing is B;
	decide on C.

To UniqueSquirt (L - a liquid-object) On (C - Breasts) by (N - a number):
	let HC be highest-cleavage;
	let M be (N * HC) / 6; [the amount blocked by clothing]
	if L is semen:
		let LC be a random worn lipstick collar;
		if LC is clothing, increase N by 1;
		if M > 0 and highest-cleavage-clothing is unsoaked clothing:
			decrease N by M; [exposed cleavage]
			if highest-cleavage-clothing is fluid vulnerable, say "The [semen] lands on your [ShortDesc of highest-cleavage-clothing]";
			Squirt L on highest-cleavage-clothing by M;
		while the semen coating of C < 10 and N > 0:
			LiquidSoak L on C;
			decrease N by 1;
		if LC is tethering lipstick collar, end tethering;
		if the semen coating of C >= 10 and N > 0:
			if C is unsoaked, say "The [semen] drips down your chest and towards your [BellyDesc].";
			Squirt L on Belly by N;
	otherwise:
		if M > 0 and highest-cleavage-clothing is unsoaked clothing:
			decrease N by M; [exposed cleavage]
			if highest-cleavage-clothing is fluid vulnerable, say "The [variable L] lands on your [ShortDesc of highest-cleavage-clothing]";
			Squirt L on highest-cleavage-clothing by M;
		if the semen coating of C > 0:
			if the semen coating of C > N:
				if C is unsoaked, say "The [variable L] washes some [semen] off of your chest. ";
				PuddleUp semen by N;
				decrease the semen coating of C by N;
			otherwise:
				if C is unsoaked, say "The [variable L] washes all the [semen] off of your chest. ";
				PuddleUp semen by the semen coating of C;
				now the semen coating of C is 0;
		if belly is unsoaked, say "The [variable L] steadily flows down your chest to your [BellyDesc].";
		Squirt L on Belly by N;
	if acolyte-chestpiece is worn:
		say "The gemstones adorning your [ShortDesc of acolyte-chestpiece] glint as waves of fatigue and arousal wash through your body.";
		Arouse 500 * N;
		FatigueUp N * 15.

To UniqueSquirt (L - a liquid-object) On (C - Belly) by (N - a number):
	let BC be a random worn top level belly cover clothing;
	if BC is unsoaked clothing:
		if BC is fluid vulnerable, say "The [variable L] flows onto your [ShortDesc of BC]";
		Squirt L on BC by N;
	otherwise:
		if L is semen:
			while the semen coating of C < 10 and N > 0:
				LiquidSoak L on C;
				decrease N by 1;
			if the semen coating of C >= 10 and N > 0:
				if C is unsoaked, say "The [semen] drips down your belly and to your loins.";
				Squirt L on Hips by N;
		otherwise:
			if the semen coating of C > 0:
				if the semen coating of C > N:
					if C is unsoaked, say "The [variable L] washes some [semen] off of your belly. ";
					PuddleUp semen by N;
					decrease the semen coating of C by N;
				otherwise:
					if C is unsoaked, say "The [variable L] washes all the [semen] off of your belly. ";
					PuddleUp semen by the semen coating of C;
					now the semen coating of C is 0;
			if hips is unsoaked, say "The [variable L] steadily flows down your belly to your loins.";
			Squirt L on Hips by N.

To UniqueSquirt (L - a liquid-object) On (C - Hips) by (N - a number):
	let CC be a random worn top level crotch cover clothing;
	if CC is unsoaked clothing:
		if CC is fluid vulnerable, say "The [variable L] flows onto your [ShortDesc of CC]";
		Squirt L on CC by N;
	otherwise:
		if thighs is unsoaked, say "The [variable L] keeps flowing down to your thighs.";
		Squirt L on Thighs by N.

To UniqueSquirt (L - a liquid-object) On (C - Thighs) by (N - a number):
	let LC be a random worn leg covering fluid vulnerable clothing;
	let SH be a random worn fluid vulnerable shoes;
	if L is semen:
		while the semen coating of C < 10 and N > 0:
			LiquidSoak L on C;
			decrease N by 1;
		if newbie tips is 1 and the semen coating of C > 0, say "[one of][newbie style]Newbie tip: You've got cum on your thighs! That's bad for you - you'll have reduced dexterity until it's gone. It'll slowly drip off, but if you have any spare clothing, you might be able to use it as a rag to wipe the cum off, by typing 'wipe thighs with X'.[roman type][line break][or][stopping]";
	otherwise:
		if the semen coating of C > 0:
			if the semen coating of C > N:
				if C is unsoaked, say "The [variable L] washes some [semen] off of your thighs. ";
				PuddleUp semen by N;
				decrease the semen coating of C by N;
			otherwise:
				if C is unsoaked, say "The [variable L] washes all the [semen] off of your thighs. ";
				PuddleUp semen by the semen coating of C;
				now the semen coating of C is 0;
	if N > 0:
		if LC is clothing:
			if C is unsoaked, say "The [variable L] flows onto your [ShortDesc of LC]";
			Squirt L on LC by N;
		otherwise if SH is clothing:
			if C is unsoaked, say "The [variable L] flows into your [ShortDesc of SH]";
			Squirt L on SH by N;
		otherwise:
			if C is unsoaked, say "The [variable L] drips down to the ground.";
			PuddleUp L by N.

To UniqueSquirt (L - a liquid-object) On (C - a headgear) by (N - a number):
	while C is able to take more liquid and N > 0:
		LiquidSoak L on C;
		decrease N by 1;
	if N > 0:
		Squirt L on Hair by N.

To UniqueSquirt (L - a liquid-object) On (C - a shoes) by (N - a number):
	while N > 0: [If there's overflow we'll squelch it out later.]
		LiquidSoak L on C;
		decrease N by 1.

Report going when there are worn shoes and the player is upright:
	let C be a random worn shoes;
	if the total-soak of C > the soak-limit of C:
		if the urine-soak of C > 0 and the semen-soak of C > 0:
			say "As you walk, a horrid mixture of [urine] and [semen] squelches out of your [ShortDesc of C] and dribbles to the ground.";
			puddle water before urine from C;
			while the total-soak of C > the soak-limit of C:
				if the semen-soak of C > the urine-soak of C:
					decrease the semen-soak of C by 1;
					PuddleUp semen by 1;
				otherwise:
					decrease the urine-soak of C by 1;
					PuddleUp urine by 1;
		otherwise if the urine-soak of C > 0:
			say "As you walk, excess [urine] squelches out of your [ShortDesc of C] and dribbles to the ground.";
			puddle water before urine from C;
			PuddleUp urine by the total-soak of C - the soak-limit of C;
			decrease the urine-soak of C by the total-soak of C - the soak-limit of C;
		otherwise if the semen-soak of C > 0:
			say "As you walk, excess [semen] squelches out of your [ShortDesc of C] and bubbles to the ground.";
			puddle water before semen from C;
			PuddleUp semen by the total-soak of C - the soak-limit of C;
			decrease the semen-soak of C by the total-soak of C - the soak-limit of C;
		otherwise if the milk-soak of C > 0: [hopefully super rare or I'll have to recode this]
			say "As you walk, excess [milk] squelches out of your [ShortDesc of C] and bubbles to the ground.";
			puddle water before milk from C;
			PuddleUp milk by the total-soak of C - the soak-limit of C;
			decrease the milk-soak of C by the total-soak of C - the soak-limit of C.

To puddle water before (L - a liquid-object) from (C - a clothing):
	while the water-soak of C > 0 and the total-soak of C > the soak-limit of C:
		PuddleUp L by 1;
		decrease the water-soak of C by 1.


To UniqueSquirt (L - a liquid-object) On (C - a clothing) by (N - a number):
	while C is able to take more liquid and N > 0:
		LiquidSoak L on C;
		decrease N by 1;
	if N > 0: [To avoid infinite recursion, we always make sure that clothing items drip liquid to the body part directly below them. So first we check if they're leg covering, and then crotch covering, and so on, so we're working in 'gravity priority order'. Otherwise for example a liquid soaking into trousers could go crotch clothing code > thighs code > crotch clothing code > thighs code > etc.]
		if C is leg covering:
			let SH be a random worn shoes;
			if SH is clothing:
				Squirt L on SH by N;
				now N is 0;
			if N > 0:
				say "The [variable L] flows down to the ground.";
				PuddleUp L by N;
		otherwise if C is crotch covering:
			if C is listed in the list of stacked diapers: [handle liquid soaking down from one diaper to another]
				let X be 100;
				let Y be the number of entries in the list of stacked diapers;
				repeat with Z running from 1 to Y:
					if entry Z in the list of stacked diapers is C, now X is Z + 1;
				if X <= Y:
					let CC be entry X in the list of stacked diapers;
					say "It leaks out and down into your [ShortDesc of CC].";
					Squirt L on CC by N;
					now N is 0;
			if C is fluid vulnerable and N > 0: [liquid can soak all the way through]
				repeat with CC running through worn unsoaked crotch covering clothing:
					if the bottom-layer of CC is the bottom-layer of CC - 1 and CC is somewhat fluid vulnerable:
						say "It reaches your [ShortDesc of CC]";
						Squirt L on CC by N;
						now N is 0;
				if N > 0:
					repeat with CC running through worn unsoaked crotch covering clothing:
						if the bottom-layer of CC is the bottom-layer of CC + 1 and CC is somewhat fluid vulnerable:
							say "It reaches your [ShortDesc of CC]";
							Squirt L on CC by N;
							now N is 0;
			if N > 0:
				if thighs is unsoaked, say "The [variable L] flows down to your thighs.";
				Squirt L on Thighs by N;
		otherwise if C is belly covering:
			if C is fluid vulnerable: [liquid can soak all the way through]
				if the mid-layer of C is 1:
					Squirt L on belly by N;
					now N is 0;
				otherwise:
					repeat with BC running through worn unsoaked belly covering clothing:
						if the mid-layer of BC is the mid-layer of BC - 1 and BC is somewhat fluid vulnerable:
							say "It reaches your [ShortDesc of BC]";
							Squirt L on BC by N;
							now N is 0;
					if N > 0:
						repeat with BC running through worn unsoaked belly covering clothing:
							if the mid-layer of BC is the mid-layer of BC + 1 and BC is somewhat fluid vulnerable:
								say "It reaches your [ShortDesc of BC]";
								Squirt L on BC by N;
								now N is 0;
			if N > 0:
				if hips is unsoaked, say "The [variable L] flows down to your loins.";
				Squirt L on hips by N;
		otherwise if C is breast covering:
			if C is fluid vulnerable: [liquid can soak all the way through]
				if the top-layer of C is 1:
					Squirt L on breasts by N;
					now N is 0;
				otherwise:
					repeat with BC running through worn unsoaked breast covering clothing:
						if the top-layer of BC is the top-layer of BC - 1 and BC is somewhat fluid vulnerable:
							say "It reaches your [ShortDesc of BC]";
							Squirt L on BC by N;
							now N is 0;
					if N > 0:
						repeat with BC running through worn unsoaked breast covering clothing:
							if the top-layer of BC is the top-layer of BC - 1 and BC is somewhat fluid vulnerable:
								say "It reaches your [ShortDesc of BC]";
								Squirt L on BC by N;
								now N is 0;
			if N > 0:
				if belly is unsoaked, say "The [variable L] flows down to your belly.";
				Squirt L on belly by N;
		otherwise:
			if N > 0:
				say "The [variable L] flows down to the ground.";
				PuddleUp L by N.

Part 2 - Old Stuff made to work with New Stuff


[!<ClothingIsAbleToTakeMoreLiquid>+

REQUIRES COMMENTING

+!]
Definition: a clothing (called C) is able to take more liquid:
	if C is fluid immune or the total-soak of C >= the soak-limit of C, decide no;
	decide yes.

[!<CumSoakXOnClothing>+

REQUIRES COMMENTING

+!]
To CumSoak (X - a number) on (C - a clothing):
	if C is fluid vulnerable and C is worn, say "[semen] soaks into your [ShortDesc of C][if bukkake fetish is 0 and C is not crotch covering].[end if]";
	Squirt semen on C by X;
	reset soak flavour.


[!<PissSoakXOnClothing>+

REQUIRES COMMENTING

+!]
To PissSoak (X - a number) on (C - a clothing):
	if C is fluid vulnerable and C is worn, say "[urine] soaks into your [ShortDesc of C][if bukkake fetish is 0 and C is not crotch covering].[end if]";
	Squirt urine on C by X;
	reset soak flavour.


[!<PissSoakClothing>+

REQUIRES COMMENTING

+!]
To PissSoak (C - a clothing):
	pisssoak 1 on C.

[!<MilkSoakXOnClothing>+

REQUIRES COMMENTING

+!]
To MilkSoak (X - a number) on (C - a clothing):
	if C is fluid vulnerable and C is worn, say "[milk] soaks into your [ShortDesc of C][if bukkake fetish is 0 and C is not crotch covering].[end if]";
	Squirt milk on C by X;
	reset soak flavour.


[!<MilkSoakClothing>+

REQUIRES COMMENTING

+!]
To MilkSoak (C - a clothing):
	milksoak 1 on C.

[!<WaterSoakXOnClothing>+

REQUIRES COMMENTING

+!]
To WaterSoak (X - a number) on (C - a clothing):
	if C is fluid vulnerable and C is worn, say "[water] soaks into your [ShortDesc of C]";
	Squirt water on C by X;
	reset soak flavour.

[!<WaterSoakClothing>+

REQUIRES COMMENTING

+!]
To WaterSoak (C - a clothing):
	WaterSoak 1 on C.

To CumHairUp (X - a number):
	Squirt semen on Hair By X;
	if a random number between 7 and 15 < the semen coating of hair, SemenAddictUp 1;
	reset soak flavour

[!<CumFaceUpX>+

REQUIRES COMMENTING

+!]
To CumFaceUp (X - a number):
	Squirt semen On Face By X;
	if a random number between 0 and 8 < the semen coating of face, SemenAddictUp 1;
	reset soak flavour.

[!<CumFaceDownX>+

REQUIRES COMMENTING

+!]
To CumFaceDown (X - a number):
	while X > 0:
		decrease X by 1;
		if the semen coating of face > 0:
			decrease the semen coating of face by 1;
			if the semen coating of face is 0, force inventory-focus redraw. [Forces redraw of inventory window]

[!<CumTitsUpX>+

REQUIRES COMMENTING

+!]
To CumTitsUp (X - a number):
	Squirt semen On Breasts By X;
	if a random number between 5 and 13 < the semen coating of breasts, SemenAddictUp 1; [less likely than face]
	reset soak flavour.


[!<CumTitsDownX>+

REQUIRES COMMENTING

+!]
To CumTitsDown (X - a number):
	while X > 0:
		decrease X by 1;
		if the semen coating of breasts > 0:
			decrease the semen coating of breasts by 1;
			if the semen coating of breasts is 0, force inventory-focus redraw. [Forces redraw of inventory window]

[!<CumBellyUpX>+

REQUIRES COMMENTING

+!]
To CumBellyUp (X - a number):
	Squirt semen On Belly By X;
	reset soak flavour.


[!<CumBellyDownX>+

REQUIRES COMMENTING

+!]
To CumBellyDown (X - a number):
	while X > 0:
		decrease X by 1;
		if the semen coating of belly > 0:
			decrease the semen coating of belly by 1;
			if the semen coating of belly is 0, force inventory-focus redraw. [Forces redraw of inventory window]

[!<CumThighsUpX>+

REQUIRES COMMENTING

+!]
To CumThighsUp (X - a number):
	Squirt semen On Thighs By X;
	if a random number between 6 and 13 < the semen coating of thighs, SemenAddictUp 1; [less likely than face]
	reset soak flavour.


[!<CumThighsDownX>+

REQUIRES COMMENTING

+!]
To CumThighsDown (X - a number):
	while X > 0:
		decrease X by 1;
		if the semen coating of thighs > 0:
			decrease the semen coating of thighs by 1;
			if the semen coating of thighs is 0, force inventory-focus redraw. [Forces redraw of inventory window]


[!<BellyIsDrippable>+

REQUIRES COMMENTING

+!]
Definition: belly is drippable:[can semen drip onto the player's stomach, from anywhere above it.]
	if the largeness of breasts <= 6, decide yes;
	if the largeness of breasts < 11 and the largeness of belly < 3, decide no;[drips to foot level]
	if the largeness of breasts >= 11, decide no;[above this size, always reaches over the belly. Drips to floor.]
	decide yes.


[!<ComputeFaceCumDribbling>+

REQUIRES COMMENTING

+!]
To compute face cum dribbling:
	say "Globs of [semen] drip down from your chin onto your [BreastDesc]. ";
	CumTitsUp 1;
	CumFaceDown 1.


[!<ComputeTitsCumDribbling>+

REQUIRES COMMENTING

+!]
To compute tits cum dribbling:
	now breasts is soaked;
	let HC be highest-cleavage-clothing;
	if HC is unsoaked clothing:
		say "Some [semen] runs down your [BreastDesc] and onto your [ShortDesc of HC]. ";
		CumSoak 1 on HC;
	otherwise:
		say "Some [semen] runs down your [BreastDesc] and onto your [BellyDesc]. ";
		CumBellyUp 1;
	CumTitsDown 1.

[!<ComputeBellyCumDribbling>+

REQUIRES COMMENTING

+!]
To compute belly cum dribbling:
	say "Some [semen] runs down your [BellyDesc] and towards your loins. ";
	Squirt semen on hips by 1;
	reset soak flavour;
	CumBellyDown 1.

To fully clean (B - a body part):
	now the semen coating of B is 0;
	now the urine coating of B is 0.


Liquid Movements ends here.

