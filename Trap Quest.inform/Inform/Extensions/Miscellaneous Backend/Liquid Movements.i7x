Liquid Movements by Miscellaneous Backend begins here.

Part 1 - New Stuff

A thing can be unsoaked or soaked. [Used to track where we've already spread liquid movements to, so that recursive functions don't become infinite.]

inside-out is initially false. [When FALSE, that means that the liquid has appeared from an external source and so is going to hit the outside of the player / their clothes and go from there. When TRUE, that means that the liquid has appeared from an internal source and so is going to hit the inside of the player / their clothes and go from there.]

A liquid-object is a kind of object.

semen is a liquid-object.
urine is a liquid-object.
milk is a liquid-object.
water is a liquid-object.
murkwater is a liquid-object.

A liquid-object has a number called cold turkey. [How long has the player starved themselves of it?]

[Once we've already told the player there's some liquid moving, we start referring to it as 'The semen' or whatever]
liquid-announced is initially false.
To say announced (L - a liquid-object):
	if liquid-announced is true:
		say "The [L]";
	otherwise:
		now liquid-announced is true;
		let T be the substituted form of "[L]";
		say "[T in title case]".

[We reset tracking which items we've already told the player are getting hit by liquid]
To reset soak flavour:
	repeat with T running through soaked clothing:
		now T is unsoaked;
	repeat with T running through soaked body parts:
		now T is unsoaked.

[The LIQUIDSOAK function is the final function we should call when assigning liquid to be soaked into things. The function should be able to determine itself whether the object is eligible for soaking based on liquid type and fetish settings.]
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
To LiquidSoak (L - water) On (B - hair):
	increase the water-drench of B by 1.
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

[The SQUIRT function is the triage function we should ALWAYS call FIRST when liquid comes near it. The function should be able to determine itself whether the object is eligible for being considered for soaking based on liquid type and fetish settings.]
To SilentSquirt (L - a liquid-object) On (C - an object) by (N - a number):
	now C is soaked;
	unless C is not thighs and bukkake fetish is 0 and L is not water, UniqueSquirt L on C by N. [only thighs accept cum when bukkake fetish is disabled]

[This version of the SQUIRT function is for when the liquid has already hit somewhere else and is now continuing its journey elsewhere, going from the OUTSIDE inwards.]
To ContinuedSquirt (L - a liquid-object) On (C - an object) by (N - a number):
	if C is unsoaked:
		now inside-out is false;
		SilentSquirt L on C by N.

[This version of the SQUIRT function is for when the liquid has already hit somewhere else and is now continuing its journey elsewhere, going from the INSIDE outwards.]
To ContinuedDribble (L - a liquid-object) On (C - an object) by (N - a number):
	if C is unsoaked:
		now inside-out is true;
		SilentSquirt L on C by N.

[This version of the SQUIRT function is for when the liquid is hitting this place FIRST but we've already told the player what's hit them and where.]
To AnnouncedSquirt (L - a liquid-object) On (C - an object) by (N - a number):
	now liquid-announced is true;
	now inside-out is false;
	SilentSquirt L on C by N;
	if L is semen and a random number between 0 and 6 < N, SemenAddictUp 1;
	reset soak flavour.

[This version of the SQUIRT function is for when the liquid is hitting this place FIRST but we've NOT already told the player what's hit them and where.]
To UnannouncedSquirt (L - a liquid-object) On (C - an object) by (N - a number):
	now liquid-announced is false;
	now inside-out is false;
	SilentSquirt L on C by N;
	if L is semen and a random number between 0 and 6 < N, SemenAddictUp 1;
	reset soak flavour.

[This version of the SQUIRT function is for when the liquid is hitting this place FIRST but we've already told the player what's hit them and where.]
To AnnouncedExpel (L - a liquid-object) On (C - an object) by (N - a number):
	now liquid-announced is true;
	now inside-out is true;
	SilentSquirt L on C by N;
	reset soak flavour.

[This version of the SQUIRT function is for when the liquid is hitting this place FIRST but we've NOT already told the player what's hit them and where.]
To UnannouncedExpel (L - a liquid-object) On (C - an object) by (N - a number):
	now liquid-announced is false;
	now inside-out is true;
	SilentSquirt L on C by N;
	reset soak flavour.


[A clothing is LIQUID SOAK APPROPRIATE if the liquid is something that should be able to soak into it based on current FETISH selection. We do not care about waterproofing here.]
Definition: a clothing is liquid-soak-appropriate:
	if it is crotch covering or bukkake fetish is 1, decide yes;
	decide no.

To SilentSquirt (L - a liquid-object) On (C - a clothing) by (N - a number):
	if L is water or C is liquid-soak-appropriate: [water can soak everything even when bukkake is disabled]
		now C is soaked; [this item has been squirt functioned this liquid movement]
		if C is worn:
			force clothing-focus redraw; [the clothing window might need refreshing to stay accurate]
		otherwise if C is held:
			force inventory-focus redraw; [the inventory window might need refreshing to stay accurate]
		UniqueSquirt L on C by N. [now let's actually process the liquid's interaction with this clothing item]

[The UNIQUESQUIRT function is the MAIN function we should end up calling if it's appropriate for liquid to interact with an object. The function should then determine HOW MUCH liquid moves on further, and WHERE it goes, by calling a new UniqueSquirt function with a different object target.]
To UniqueSquirt (L - a liquid-object) On (C - an object) by (N - a number):
	say "[announced L] flows to the ground.";
	PuddleUp L by N.

Chapter - Hair and Face

times-bukkaked is a number that varies. [increases by 1 every time that UniqueSquirt semen on face is called, regardless of N]

To display cumshot reaction to (N - a number): [displays an appropriate image for cum hitting face, depending on volume]
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
	if debugmode > 1, say "[if inside-out is false]Squirting[otherwise]Expelling[end if] [N] units of [L] on face.";
	let M be N / 2; [50% of the fluid (rounded down) is going to be redirected to headgear & hair]
	if L is semen:
		increase times-bukkaked by 1;
		if lipstick collar is worn and N > 0, increase N by 1; [lipstick collar increases semen volume on face by 1 each time]
		if N > a random number between 0 and 3, SemenAddictUp 1; [semen addiction might go up]
		if the semen addiction of the player > 14:
			say "You shiver with arousal as your face gets a fresh gooey load.";
			stimulate face from semen times N;
		if M > 0 and hair is not soaked: [we only redirect 50% to hair & headgear if hair is not flagged as already soaked this movement; this prevents anything that drips back down from hair onto face getting into a loop]
			decrease N by M; [reduce cum hitting face by the amount that's going into hair instead]
			ContinuedSquirt L on hair by M;
		while the semen coating of C < 10 and N > 0: [put as much cum on face as possible]
			LiquidSoak L on C;
			decrease N by 1;
		if the semen coating of C > 0:
			say SemenEncounterFlav;
			if newbie tips is 1, say "[one of][newbie style]Newbie tip: You've got cum on your face! That's not great - you'll be extremely humiliated if anyone sees you. It'll slowly drip off, but if you have any spare clothing, you might be able to use it as a rag to wipe the cum off, by typing 'wipe face with X'. Your chest and belly work similarly.[roman type][line break][or][stopping]";
	otherwise: [NOT semen]
		if M > 0:
			decrease N by M; [reduce liquid hitting face by the amount that's going into headgear & hair instead]
			ContinuedSquirt L on hair by M;
		if the semen coating of C > 0: [this liquid will clean the player's face of semen]
			if the semen coating of C > N:
				say "The [variable L] washes some [semen] off of your face. ";
				PuddleUp semen by N;
				decrease the semen coating of C by N;
			otherwise:
				say "The [variable L] washes all the [semen] off of your face. ";
				PuddleUp semen by the semen coating of C;
				now the semen coating of C is 0;
		if face is temporarily made up: [this liquid will clean the player's face of make up]
			if the make-up of face > N:
				say "The [variable L] washes some of the make-up from your face. ";
			otherwise:
				say "The [variable L] washes all the make-up from your face. ";
			FaceDown N;
	if N > 0 and breasts is unsoaked: [leftover liquid drips down to BREASTS]
		say "[announced L] drips down your chin and onto your [BreastDesc].";
		ContinuedSquirt L on Breasts by N;
		now N is 0;
	if N > 0: [failsafe]
		say "[announced L] drips down your chin and to the floor.";
		PuddleUp L by N.

To UniqueSquirt (L - a liquid-object) On (C - Hair) by (N - a number):
	if debugmode > 1, say "[if inside-out is false]Squirting[otherwise]Expelling[end if] [N] units of [L] on hair.";
	let H be a random worn able to take more liquid headgear;
	if inside-out is false and H is unsoaked headgear: [we have found a headgear to take half of the liquid hitting hair]
		let M be N / 2; [headgear]
		if M > 0:
			decrease N by M; [hair]
			say "[announced L] gets all over your [ShortDesc of H].";
			ContinuedSquirt L on H by M;
	if L is semen or L is urine:
		while the semen coating of C + the urine coating of C + the water-drench of C < the largeness of hair and N > 0: [soak liquid into hair]
			LiquidSoak L on C;
			decrease N by 1;
		if N > 0 and the urine coating of C is 0 and the semen coating of C > 0: [if hair is completely saturated by cum we want to replace one unit with urine so that the hair is correctly identified as both cum and piss stained]
			LiquidSoak L on C;
			decrease the semen coating of C by 1;
			decrease N by 1;
	otherwise if L is water:
		if (the semen coating of C + the urine coating of C) > 0: [Water cleans hair, 1 unit of water to 1 unit of semen/urine.]
			let O be N;
			let P be the semen coating of C; [We need to know the pre-cleaning values of semen and urine for accurate flavour text afterwards.]
			let Q be the urine coating of C;
			while O > 0: [We only clean 1 unit at a time so we can alternate targets. Would be silly to always clean out all of semen first before touching urine or vice versa.]
				if the semen coating of C > 0:
					decrease O by 1;
					decrease the semen coating of C by 1;
					PuddleUp semen by 1;
				if the urine coating of C > 0 and O > 0:
					decrease O by 1;
					decrease the urine coating of C by 1;
					PuddleUp urine by 1;
				if (the semen coating of C + the urine coating of C) < 1:
					now O is 0;
			if (the semen coating of C + the urine coating of C) > 0:
				say "The [variable L] washes some [if P > 0 and Q > 0][semen] and [urine][otherwise if Q > 0][urine][otherwise][semen][end if] out of your hair. ";
			otherwise:
				say "The [variable L] washes all the [if P > 0 and Q > 0][semen] and [urine][otherwise if Q > 0][urine][otherwise][semen][end if] out of your hair. ";
		while the water-drench of C < the largeness of hair and N > 0: [soak water into hair]
			LiquidSoak L on C;
			decrease N by 1;
	if N > 0 and face is unsoaked:
		say "[announced L] drips down your [ShortDesc of hair] onto your face.";
		ContinuedSquirt L on face by N;
		now N is 0;
	if N > 0:
		say "[announced L] drips down your [ShortDesc of hair] and to the floor.";
		PuddleUp L by N.

highest-cleavage-clothing is an object that varies.

To decide which object is highest-cleavage-clothing:
	let B be nothing;
	let X be 0;
	repeat with C running through worn breast covering clothing:
		unless C is normally-nipple-exposing or C is top-displaced or C is top-ripped or C is fully exposing:
			let CC be the cleavageCover of C;
			if CC > X:
				now X is CC;
				now B is C;
	decide on B.

To UniqueSquirt (L - a liquid-object) On (C - Breasts) by (N - a number):
	if debugmode > 1, say "[if inside-out is false]Squirting[otherwise]Expelling[end if] [N] units of [L] on breasts.";
	if inside-out is false: [liquid is coming from the outside inwards]
		let HC be highest-cleavage-clothing;
		let HCC be the cleavageCover of HC;
		if debugmode > 1, say "Cleavage cover of [HC] is [HCC].";
		let M be N;
		if the player is showing cleavage: [calculate the number of units blocked by clothing]
			let CLVH be N * HCC;
			now M is CLVH / 8; [cleavage cover is ranked out of 8]
			if debugmode > 1, say "[M] units definitiely going to [HC]. Checking for leftover unit...";
			now CLVH is the remainder after dividing CLVH by 8;
			if a random number between 1 and 8 <= CLVH, increase M by 1; [randomise whether the borderline unit hits cleavage or clothing]
			if debugmode > 1, say "A total of [M] units are redirected to [HC].";
		if L is semen:
			if lipstick collar is worn, increase N by 1;
			if M > 0 and HC is unsoaked clothing:
				decrease N by M; [exposed cleavage]
				if HC is fluid vulnerable, say "[announced L] lands on your [ShortDesc of HC].";
				ContinuedSquirt L on HC by M;
			while the semen coating of C < 10 and N > 0:
				LiquidSoak L on C;
				decrease N by 1;
		otherwise:
			if M > 0 and HC is unsoaked clothing:
				decrease N by M; [exposed cleavage]
				if HC is fluid vulnerable, say "[announced L] lands on your [ShortDesc of HC].";
				ContinuedSquirt L on HC by M;
			if the semen coating of C > 0:
				if the semen coating of C > N:
					if C is unsoaked, say "[announced L] washes some [semen] off of your chest. ";
					PuddleUp semen by N;
					decrease the semen coating of C by N;
				otherwise:
					if C is unsoaked, say "[announced L] washes all the [semen] off of your chest. ";
					PuddleUp semen by the semen coating of C;
					now the semen coating of C is 0;
		if acolyte-chestpiece is worn:
			say "The gemstones adorning your [ShortDesc of acolyte-chestpiece] glint as waves of fatigue and arousal wash through your body.";
			Arouse 500 * N;
			FatigueUp N * 15;
	otherwise: [liquid starts at the nipples and comes outwards]
		if L is semen:
			while the semen coating of C < 10 and N > 0:
				LiquidSoak L on C;
				decrease N by 1;
		otherwise if the semen coating of C > 0:
			if the semen coating of C > N:
				if C is unsoaked, say "[announced L] washes some [semen] off of your chest. ";
				PuddleUp semen by N;
				decrease the semen coating of C by N;
			otherwise:
				if C is unsoaked, say "[announced L] washes all the [semen] off of your chest. ";
				PuddleUp semen by the semen coating of C;
				now the semen coating of C is 0;
		if N > 0:
			let BLLC be bottom level lactation cover;
			if BLLC is unsoaked clothing:
				if BLLC is somewhat fluid vulnerable, say "[announced L] flows into your [ShortDesc of BLLC].";
				ContinuedDribble L on BLLC by N;
				now N is 0;
	if N > 0 and belly is unsoaked:
		say "[announced L] drips down your chest and towards your [BellyDesc].";
		ContinuedDribble L on Belly by N;
		now N is 0;
	if N > 0: [failsafe, should very rarely happen]
		say "[announced L] drips down your chest and to the floor.";
		PuddleUp L by N.

To UniqueSquirt (L - a liquid-object) On (C - Belly) by (N - a number):
	if debugmode > 1, say "[if inside-out is false]Squirting[otherwise]Expelling[end if] [N] units of [L] on belly.";
	if inside-out is false: [liquid is coming from the outside inwards]
		let BC be a random worn top level belly cover clothing;
		if BC is unsoaked clothing:
			if BC is fluid vulnerable, say "[announced L] lands on your [ShortDesc of BC].";
			ContinuedSquirt L on BC by N;
	if N > 0:
		if L is semen:
			while the semen coating of C < 10 and N > 0:
				LiquidSoak L on C;
				decrease N by 1;
		otherwise:
			if the semen coating of C > 0:
				if the semen coating of C > N:
					if C is unsoaked, say "[announced L] washes some [semen] off of your belly. ";
					PuddleUp semen by N;
					decrease the semen coating of C by N;
				otherwise:
					if C is unsoaked, say "[announced L] washes all the [semen] off of your belly. ";
					PuddleUp semen by the semen coating of C;
					now the semen coating of C is 0;
	otherwise: [liquid is coming from the outside inwards]
		let BC be a random worn bottom level belly cover clothing;
		if BC is unsoaked somewhat fluid vulnerable able to take more liquid clothing:
			[say "[announced L] oozes into your [ShortDesc of BC].";]
			ContinuedDribble L on BC by N;
			now N is 0;
	if N > 0 and hips is unsoaked:
		say "[announced L] drips down your belly and to your loins.";
		ContinuedDribble L on Hips by N;
		now N is 0;
	if N > 0: [failsafe, should very rarely happen]
		say "[announced L] drips down your belly and to the floor.";
		PuddleUp L by N.

To UniqueSquirt (L - a liquid-object) On (C - Hips) by (N - a number):
	if debugmode > 1, say "[if inside-out is false]Squirting[otherwise]Expelling[end if] [N] units of [L] on hips.";
	if inside-out is false: [liquid is coming from the outside inwards]
		let CC be a random worn top level crotch cover clothing;
		let CCM be the hipModesty of CC; [ratio of ass covered...]
		let CCE be the hipExposure of CC + CCM; [...to ass exposed]
		let M be N; [assume all covered]
		if CCM is 0: [nothing covered]
			now M is 0;
		otherwise if CCE > 0: [some amount covered]
			now M is (N * CCM) / CCE; [the amount blocked by clothing]
		if M > 0 and CC is unsoaked clothing:
			decrease N by M; [exposed ass]
			if CC is fluid vulnerable, say "[announced L] lands on your [ShortDesc of CC].";
			ContinuedSquirt L on CC by M;
	if N > 0:
		if L is semen:
			while the semen coating of C < 10 and N > 0:
				LiquidSoak L on C;
				decrease N by 1;
		otherwise if the semen coating of C > 0:
			if the semen coating of C > N:
				if C is unsoaked, say "[announced L] washes some [semen] off of your ass. ";
				PuddleUp semen by N;
				decrease the semen coating of C by N;
			otherwise:
				if C is unsoaked, say "[announced L] washes all the [semen] off of your ass. ";
				PuddleUp semen by the semen coating of C;
				now the semen coating of C is 0;
	otherwise: [liquid is coming from the outside inwards]
		let BC be a random worn bottom level protection clothing;
		if BC is unsoaked somewhat fluid vulnerable able to take more liquid clothing:
			[say "[announced L] oozes into your [ShortDesc of BC].";]
			ContinuedDribble L on BC by N;
			now N is 0;
	if N > 0 and thighs is unsoaked:
		say "[announced L] drips down your ass and to your thighs.";
		ContinuedDribble L on Thighs by N;
		now N is 0;
	if N > 0: [failsafe, should very rarely happen]
		say "[announced L] drips down your ass and to the floor.";
		PuddleUp L by N.

To UniqueSquirt (L - a liquid-object) On (C - Thighs) by (N - a number):
	if debugmode > 1, say "[if inside-out is false]Squirting[otherwise]Expelling[end if] [N] units of [L] on thighs.";
	if inside-out is false: [liquid is coming from the outside inwards]
		let TC be a random worn top level thigh cover clothing;
		if TC is unsoaked clothing:
			if TC is fluid vulnerable, say "[announced L] lands on your [ShortDesc of TC].";
			ContinuedSquirt L on TC by N;
			now N is 0;
	if N > 0:
		if L is semen:
			while the semen coating of C < 10 and N > 0:
				LiquidSoak L on C;
				decrease N by 1;
			if newbie tips is 1 and the semen coating of C > 0, say "[one of][newbie style]Newbie tip: You've got cum on your thighs! That's bad for you - you'll have reduced dexterity until it's gone. It'll slowly drip off, but if you have any spare clothing, you might be able to use it as a rag to wipe the cum off, by typing 'wipe thighs with X'.[roman type][line break][or][stopping]";
		otherwise if the semen coating of C > 0:
			if the semen coating of C > N:
				if C is unsoaked, say "[announced L] washes some [semen] off of your thighs. ";
				PuddleUp semen by N;
				decrease the semen coating of C by N;
			otherwise:
				if C is unsoaked, say "[announced L] washes all the [semen] off of your thighs. ";
				PuddleUp semen by the semen coating of C;
				now the semen coating of C is 0;
	if N > 0:
		let LC be a random worn bottom level leg cover clothing;
		if LC is nothing, now LC is a random worn shoes;
		if LC is unsoaked clothing:
			say "[announced L] flows down your legs into your [ShortDesc of LC].";
			ContinuedDribble L on LC by N;
		otherwise:
			say "[announced L] drips down your thighs to the ground.";
			PuddleUp L by N.

To UniqueSquirt (L - a liquid-object) On (C - a headgear) by (N - a number):
	while C is able to take more liquid and N > 0:
		LiquidSoak L on C;
		decrease N by 1;
	if N > 0, ContinuedDribble L on Hair by N.

To UniqueSquirt (L - a liquid-object) On (C - a shoes) by (N - a number):
	if inside-out is true or C is fluid vulnerable: [if the shoes are waterproof on the outside and we're squirting then the liquid doesn't get in]
		while N > 0 and (C is able to take more liquid or C is not fluid vulnerable): [If there's overflow in semi-waterproof or fully waterproof shoes we'll squelch it out later.]
			LiquidSoak L on C;
			decrease N by 1;
	if N > 0:
		say "[announced L] drips down your [ShortDesc of C] to the ground.";
		PuddleUp L by N.

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
	if debugmode > 0, say "assigning [N] units of [L] onto [C].";
	let TSK be 0; [fluid that has been soaked into C during this function]
	if (inside-out is false and C is fluid vulnerable) or (inside-out is true and C is somewhat fluid vulnerable):
		while N > 0 and C is able to take more liquid:
			LiquidSoak L on C;
			decrease N by 1;
			increase TSK by 1;
	if TSK > 0, say "[announced L] [if N > 0]drenches[otherwise if L is water and the total-soak of C is TSK]wets[otherwise if the total-soak of C is TSK]stains[otherwise][one of]spreads through[or]permeates[or]extends throughout[at random][end if] [NameDesc of C]."; [if N > 0 then the item is fully soaked; if the total-soak of C is TSK then the item was dry before this happened]
	if N > 0 and C is worn: [To avoid infinite recursion, we always make sure that clothing items drip liquid to the body part directly below them. So first we check if they're leg covering, and then crotch covering, and so on, so we're working in 'gravity priority order'. Otherwise for example a liquid soaking into trousers could go crotch clothing code > thighs code > crotch clothing code > thighs code > etc.]
		if C is leg covering:
			let SH be a random worn shoes;
			if SH is clothing:
				if inside-out is false: [liquid coming from the outside]
					ContinuedSquirt L on SH by N;
				otherwise: [liquid coming from the inside]
					ContinuedDribble L on SH by N;
				now N is 0;
		otherwise if C is crotch covering:
			if inside-out is false:
				if C is fluid vulnerable and N > 0: [liquid can soak all the way through]
					repeat with CC running through worn unsoaked crotch covering clothing:
						if the bottom-layer of CC is the bottom-layer of C - 1: [find the next layer down]
							ContinuedSquirt L on CC by N;
							now N is 0;
			otherwise:
				if C is listed in the list of stacked diapers: [handle liquid soaking down from one diaper to another]
					let X be 100;
					let Y be the number of entries in the list of stacked diapers;
					repeat with Z running from 1 to Y:
						if entry Z in the list of stacked diapers is C, now X is Z + 1;
					if X <= Y:
						let CC be entry X in the list of stacked diapers;
						ContinuedDribble L on CC by N;
					now N is 0;
				if C is fluid vulnerable and N > 0: [liquid can soak all the way through]
					repeat with CC running through worn unsoaked crotch covering clothing:
						if the bottom-layer of CC is the bottom-layer of C + 1: [find the next layer down]
							ContinuedDribble L on CC by N;
							now N is 0;
			if N > 0:
				if thighs is unsoaked, say "[announced L] flows down to your thighs.";
				ContinuedDribble L on Thighs by N;
		otherwise if C is belly covering:
			if inside-out is false:
				if C is fluid vulnerable and N > 0: [liquid can soak all the way through]
					repeat with BC running through worn unsoaked belly covering clothing:
						if the mid-layer of BC is the mid-layer of C - 1: [find the next layer down]
							ContinuedSquirt L on BC by N;
							now N is 0;
			otherwise:
				if C is fluid vulnerable and N > 0: [liquid can soak all the way through]
					repeat with BC running through worn unsoaked belly covering clothing:
						if the mid-layer of BC is the mid-layer of C + 1: [find the next layer up]
							ContinuedDribble L on BC by N;
							now N is 0;
			if N > 0:
				if hips is unsoaked, say "[announced L] flows down to your loins.";
				ContinuedDribble L on hips by N;
		otherwise if C is breast covering:
			if inside-out is false:
				if C is fluid vulnerable and N > 0: [liquid can soak all the way through]
					repeat with BC running through worn unsoaked breast covering clothing:
						if the top-layer of BC is the top-layer of C - 1: [find the next layer down]
							ContinuedSquirt L on BC by N;
							now N is 0;
			otherwise:
				if C is fluid vulnerable and N > 0: [liquid can soak all the way through]
					repeat with BC running through worn unsoaked breast covering clothing:
						if the top-layer of BC is the top-layer of C + 1: [find the next layer up]
							ContinuedDribble L on BC by N;
							now N is 0;
			if N > 0:
				if belly is unsoaked, say "[announced L] flows down to your belly.";
				ContinuedDribble L on belly by N;
	if N > 0:
		say "[announced L] flows down to the ground.";
		PuddleUp L by N.

Part 2 - Old Stuff made to work with New Stuff

[TODO: depreciate and retire]

Definition: a clothing (called C) is able to take more liquid:
	if C is fluid immune or the total-soak of C >= the soak-limit of C, decide no;
	decide yes.

To CumSoak (X - a number) on (C - a clothing):
	UnannouncedSquirt semen on C by X.

To PissSoak (X - a number) on (C - a clothing):
	UnannouncedSquirt urine on C by X.

To PissSoak (C - a clothing):
	pisssoak 1 on C.

To MilkSoak (X - a number) on (C - a clothing):
	UnannouncedSquirt milk on C by X

To MilkSoak (C - a clothing):
	milksoak 1 on C.

To WaterSoak (X - a number) on (C - a clothing):
	UnannouncedSquirt water on C by X.

To WaterSoak (C - a clothing):
	WaterSoak 1 on C.

To CumFaceUp (X - a number):
	AnnouncedSquirt semen On Face By X.

To compute face cum dribbling:
	now face is soaked; [cum can't come straight back to the face]
	decrease the semen coating of face by 1;
	say "Globs of [semen] drip down from your chin onto your [BreastDesc]. ";
	AnnouncedExpel semen on breasts by 1.

To compute tits cum dribbling:
	now breasts is soaked; [cum can't come straight back to the breasts]
	decrease the semen coating of breasts by 1;
	let HC be highest-cleavage-clothing;
	if HC is unsoaked clothing:
		say "Some [semen] runs down your [BreastDesc] and onto your [ShortDesc of HC]. ";
		AnnouncedExpel semen on HC by 1;
	otherwise:
		say "Some [semen] runs down your [BreastDesc] and onto your [BellyDesc]. ";
		AnnouncedExpel semen on belly by 1.

To compute belly cum dribbling:
	now belly is soaked; [cum can't come straight back to the belly]
	decrease the semen coating of belly by 1;
	say "Some [semen] runs down your [BellyDesc] and towards your loins. ";
	AnnouncedExpel semen on hips by 1.

To compute hips cum dribbling:
	now hips is soaked; [cum can't come straight back to the hips]
	decrease the semen coating of hips by 1;
	say "Some [semen] runs down your [AssDesc] and towards your thighs. ";
	AnnouncedExpel semen on thighs by 1.

To fully clean (B - a body part):
	now the semen coating of B is 0;
	now the urine coating of B is 0.

Liquid Movements ends here.
