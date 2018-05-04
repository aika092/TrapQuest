Vines by Traps begins here.


This is the spawn initial woods vines rule:
	if diaper quest is 0:
		repeat with N running from 1 to 5:
			let R be a random trappable placed jungle room;
			let T be a random off-stage vine;
			if the number of vines in R is 0, deploy T in R.
The spawn initial woods vines rule is listed in the set up woods traps rules.

vine are a kind of trap. The printed name of vine is "[TQlink]vine[TQxlink of item described][verb-desc of item described]". There are 16 revealed vines. Understand "living", "vine", "vines" as vines when item described is in the location of the player. The printed plural name of vines is "vines". The description of vines is "[VineDesc]". Figure of vines is the file "Env/Forest/vines1.png". The text-shortcut of a vine is "vin".

Definition: a vine (called M) is father material:
	decide yes.

To decide which number is the girth of (V - a vine):
	decide on 2 * (1 + the TrapNo of V).

To say VineDesc:
	if images visible is 1, display figure of vines;
	say "Seemingly intelligent vines with oozing, phallic tips. They [if the player is vine-cursed]seem irrationally eager to penetrate your body.[otherwise]only seem interested in penetrating your body.[end if][if egg laying fetish is 1] Some of them are covered in large yellow splotches, as if they needed any help looking bizarre[end if]".
	
To say ShortDesc of (T - a vine):
	say "vine".
	
To say MediumDesc of (T - a vine):
	say "Strong, living vines worm through the soil [if the player is vine-cursed]underneath your feet.[otherwise]around your feet.[end if]  ".

To say PregGrowth of (M - a vine):
	say "the [one of]vines['] offspring[or]vines['] [child][stopping]".

[!<YourselfIsVineStuck>+

Returns yes if the player is grabbed by a vine.

+!]
Definition: yourself is vine stuck:
	if there is a vine grabbing the player, decide yes;
	if fairy-witch is grabbing the player, decide yes;
	decide no.

[!<YourselfIsVineFucked>+

Returns yes if the player is being fucked by one or more vines.

+!]
Definition: yourself is vine fucked:
	if there is a vine penetrating a fuckhole, decide yes;
	decide no.

[!<VineIsAgressive>+

REQUIRES COMMENTING

+!]
Definition: a vine (called V) is aggressive:
	if V is penetrating a body part or V is grabbing the player, decide yes;
	if the TrapNo of V < 0, decide no;
	if the player is diaper focused and the player is not in WoodsBoss01, decide no;
	if vine boss is off-stage, decide no;
	if busy is 1, decide no;
	if the player is monster fucked or the player is trap stuck, decide no;
	if asshole is actually occupied and (the player is male or vagina is actually occupied), decide no;
	decide yes.

[!<ComputeVinesStanding>+

REQUIRES COMMENTING

+!]
To compute vines standing:
	repeat with V running through aggressive vines in the location of the player:
		if the player is vine stuck and the player is not vine fucked:
			compute V penetrating;
		otherwise if the player is not vine stuck:
			now V is revealed;
			let D be the dexterity of the player;
			if there are worn heels:
				if the heel-height of a random heels worn by the player > the heel skill of the player, decrease D by 1;
				if the heel-height of a random heels worn by the player > the heel skill of the player + 1, decrease D by 1;
			let R be a random number from 1 to D;
			if R <= 2 or (R <= 4 and the class of the player is schoolgirl and the player is vine-cursed):
				say "[one of]Vines slither up your legs, locking them in place. Maybe you'll be able to get away if you [bold type]pull[roman type] them.[or]Living vines grab your ankles and feet, locking them in place. There's no way you'll be able to get away if you don't [bold type]pull[roman type] them off.[or]A single vine slowly rises out of the soil, swaying [if the raw sex addiction of the player > 6]hypnotically[otherwise]menacingly[end if], sticky white fluids oozing from its shiny, bulbous tip. Before you can react, several more burst out of the ground and wrap around your ankles.[or]Vines shoot out of the ground and wrap around your ankles![or]A pair of vines shoot out of the soil. You try to move out of the way, but it's too late! They wrap around your ankles and pin them to the ground.[then at random]";
				now V is grabbing the player;
				if image cutscenes is 1, display figure of vines cutscene 2;
			otherwise if the living belt of sturdiness is not worn and R is 6:
				say "[one of]A living vine tries to grab your [if there are worn heels]heels[otherwise]feet[end if]. You manage to avoid it grabbing you but it makes you trip and fall![or]Living vines burst out of the soil, grasping at your legs. You manage to keep them from grabbing you, but you lose your balance and fall.[or]A living vine tries to grab your heels. You successfully kick it away, but you lose your balance and fall.[or]Vines shoot out of the soil beneath you. In your scramble to get out of the way, you trip and fall.[or]A single vine bursts out of the soil, headed straight for your ankle. Your reflexes kick in too late, sending you toppling to the ground.[in random order]";
				try kneeling;
				FatigueUp 15;
			otherwise:
				say "[one of]A living vine tries to grab your [if there are worn heels]heels[otherwise]feet[end if]. You manage to avoid it grabbing you![or]Living vines burst out of the soil, grasping for your ankles. Thanks to your good reflexes, you successfully keep them from grabbing you for now.[or]A single vine slowly rises out of the soil, swaying [if the raw sex addiction of the player > 6]hypnotically[otherwise]menacingly[end if], sticky white fluids oozing from its shiny, bulbous tip. You feel the soil moving beneath you and jump back before more can grab you. Still free for now.[or]Several vines rise out of the soil and pounce for your ankles. You [if the dexterity of the player > 13]easily [end if]dodge each one thanks to your [if the dexterity of the player > 15]catlike [end if]reflexes, safe for the time being.[in random order]";
				FatigueUp 10.

[!<ComputeVinesKneeling>+

REQUIRES COMMENTING

+!]
To compute vines kneeling:
	repeat with V running through aggressive vines in the location of the player:
		if the player is vine stuck and the player is not vine fucked:
			compute V penetrating;
		otherwise if the player is not vine stuck:
			now V is revealed;
			let D be the dexterity of the player;
			let R be a random number from 1 to D;
			if R <= 3 or (R <= 6 and the class of the player is schoolgirl):
				say "[one of]The soil beneath you shifts as living vines burst out and instantly pin your wrists and ankles to the ground. Maybe you'll be able to get away if you [bold type]pull[roman type] them.[or]Several vines rise out of the soil, closing in on you slowly. Watching the movement of their oozing, bulbous tips [if the raw sex addiction of the player > 6]is strangely hypnotic, and before you realize it,[otherwise]is unsettling enough to distract you from the feeling of the shifting soil underneath you. Before you realize it,[end if] they've pinned your wrists and ankles to the ground.[or]Vines burst out of the soil and grab your wrists with whip-like quickness. They do the same with your ankles.[or]Before you can react, vines have grabbed your wrists and ankles. You try to move, but it's no use. You're pinned.[or]Vines shoot out of the soil and wrap around your wrists and ankles![then at random]";
				now V is grabbing the player;
				if image cutscenes is 1, display figure of vines cutscene 2;
			otherwise:
				say "[one of]Vines shoot out of the ground and attempt to wrap around your wrists and ankles. You manage to avoid being grappled for now![or]Several vines rise out of the soil, closing in on you slowly. You bat away each one. Looks like you've avoided a grapple for now.[or]Vines shoot out of the soil with whip-like quickness! But thanks to your good reflexes you jump out of the way just in time. You're safe for now.[or]Living vines burst out of the soil, fumbling to grab your wrists. You're much too fast for them to catch you. For now.[in random order]".

[!<ReportKneelingWhenThereIsAVineGrabbingThePlayer>+

REQUIRES COMMENTING

+!]
Report kneeling when there is a vine grabbing the player:
	say "[one of]Vines wrap around your wrists as soon as they hit the ground.[or]Your wrists are immediately pinned to the ground.[or]Vines immediately pin your hands to the ground.[or]Vines wrap around your wrists and pin them to the ground.[or]Unsurprisingly, vines immediately grab your wrists and pin them to the ground.[in random order]".

[!<ComputeVinePenetrating>+

REQUIRES COMMENTING

+!]
To compute (V - a vine) penetrating:
	let H be a random number from 1 to 14;
	if the player is prone, now H is 14;
	let R be a random number between 1 and 2;
	if the player is a butt slut or the player is male, now R is 1;
	if the player is a pussy slut and the player is not a butt slut, now R is 2;
	if H < the thickness of hips and H < 10: [Vines will always succeed on a roll above 9]
		say "A vine shoots straight out of the ground in between your legs, but misses and bounces off your [HipDesc]. It recoils back into the ground.";
	otherwise if R is 1:
		compute V penetrating asshole;
	otherwise:
		compute V penetrating vagina.

To compute (V - a vine) penetrating (F - asshole):
	let K be a random worn top level ass protection clothing;
	if the player is ass protected:
		[let K be a random worn top level ass protection clothing;]
		compute V attacking K;
	if the player is not ass protected and K is crotch-ripped or K is crotch-unzipped:
		say "It continues straight into your [asshole] and immediately begins fucking you at full force!";
		if V is grabbing the player:
			now V is penetrating asshole;
		otherwise:
			repeat with X running through vines grabbing the player:
				now X is penetrating asshole;
			ruin asshole;
	otherwise if asshole is actually occupied:
		let T be a random thing penetrating asshole;
		if T is disembodied:
			say "The vine powerfully pulls out the [T] and throws it on the ground.";
			dislodge T;
			now T is in the location of the player;
	otherwise:
		let N be a random vine grabbing the player;
		if N is V:
			now V is penetrating asshole;
		otherwise if N is vine:
			now N is penetrating asshole;
		otherwise:
			now a random vine in the location of the player is penetrating asshole;
		if image cutscenes is 1 and the player is female, display figure of vines cutscene 1;
		say "[AssholePenetrationFlav of V]";
		ruin asshole.

To compute (V - a vine) penetrating (F - vagina):
	let K be a random worn top level protection clothing;
	if the player is pussy protected:
		[let K be a random worn top level protection clothing;]
		compute V attacking K;
	if the player is not pussy protected and K is crotch-ripped or K is crotch-unzipped:
		say "It continues straight into your [vagina] and immediately begins fucking you at full force!";
		let N be a random vine grabbing the player;
		if N is V:
			now V is penetrating vagina;
		otherwise if N is vine:
			now N is penetrating vagina;
		otherwise:
			now a random vine in the location of the player is penetrating vagina;
			ruin vagina;
	otherwise if vagina is actually occupied:
		let T be a random thing penetrating vagina;
		if T is disembodied:
			say "The vine powerfully pulls out the [ShortDesc of T] and throws it on the ground.";
			dislodge T;
			now T is in the location of the player;
	otherwise:
		if V is grabbing the player:
			now V is penetrating vagina;
		otherwise:
			repeat with X running through vines grabbing the player:
				now X is penetrating vagina;
		if image cutscenes is 1, display figure of vines cutscene 1;
		say "[VaginaPenetrationFlav of V]";
		ruin vagina.

[!<ComputeVineAttackingClothing>+

REQUIRES COMMENTING

+!]
To compute (V - a vine) attacking (K - a clothing):
	if K is rippable:
		say "A large vine [one of]comes up from within the ground right under your butt, and starts[or]is[stopping] trying to force its way through your [ShortDesc of K]!";
		if the armour of K < the damage of K or K is zippable:
			say "[if K is zippable]The vine finds the zipper and easily forces its way through![otherwise]The vine pushes straight through your [ShortDesc of K], it's now permanently ripped![end if]";
			rip K;
		otherwise:
			say "The [clothing-material of K] is weakening!";
			damage K;
	otherwise if K is displacable:
		say "The vine pulls your [if K is hobble-skirted]skirt up, exposing your crotch[otherwise if K is trousers]waistband down to your knees[otherwise]crotch section to one side[end if]!";
		displace K;
	otherwise:
		say "The vine [one of]grabs[or]wiggles into[cycling] your [ShortDesc of K] and [one of]rips[or]powerfully tears[cycling] it off!";
		destroy K;

[!<SayAssholePenetrationFlavOfVine>+

REQUIRES COMMENTING

+!]
To say AssholePenetrationFlav of (V - a vine):
	say "[one of]The vines holding your legs spread your [asshole] as another shoots out of the ground and begins fucking you at full force! [or]A vine shoots out of the ground between your feet and into your [asshole]. [or]It begins fucking you at full force! [or]A single vine shoots out of the ground beneath your feet and into your [asshole]. It begins to fuck you at full force! [or]The vines [if the raw sex addiction of the player < 5]pry[otherwise]spread[end if] your thighs apart as an unseen vine beneath you shoves itself into your [asshole]. It begins fucking you at full force! [in random order]Owww!";

[!<SayVaginaPenetrationFlavOfVine>+

REQUIRES COMMENTING

+!]	
To say VaginaPenetrationFlav of (V - a vine):
	say "[one of]The vines holding your legs keep your [vagina] wide open as another shoots out of the ground and begins fucking you at full force! [or]A vine shoots out of the ground between your feet and into your [vagina]. It begins fucking you at full force! [or]A single vine shoots out of the ground beneath your feet and into your [vagina]. It begins to fuck you at full force! [or]The vines [if the raw sex addiction of the player < 5]pry[otherwise]spread[end if] your legs apart as an unseen vine beneath you shoves itself into your [vagina]. It begins fucking you at full force! [in random order]Oof!";

[!<ComputeVinesFucking>+

REQUIRES COMMENTING

+!]	
To compute vines fucking:
	repeat with V running through vines penetrating a fuckhole:
		increase the TrapNo of V by 1;
		if the reaction of the player is 0 and bukkake fetish is 1 and the TrapNo of V < 4 and a random number between 1 and 4 is 1:
			let R be a random number between 12 and 19;
			say "As if to quell your resistance, a free vine lashes out with its oozing, bulbous tip and slaps you across the face several times, leaving drippy trails of [semen] in its wake. [if the semen taste addiction of the player > R and Face is not occupied]Overwhelmed by submissive desires, [one of]your tongue lewdly reaches out and licks up as much of the sticky mess as it can.[or] you follow its movements with your open mouth in an attempt to steal a taste of the writhing intruder.[or]you stop struggling and part your lips in supplication. The vine momentarily rewards your response by wrapping itself around your neck, forcing its way into your mouth and down your gullet, and simultaneously squeezing and fucking your throat while you choke and sputter. It withdraws as you start to see stars, leaving you feeling dazed yet disturbingly satisfied.[then at random][end if][line break]";
			if the semen taste addiction of the player > R:
				CumFaceUp 1;
				now V is penetrating face;
				StomachSemenUp 1;
				now V is not penetrating face;[To allow the player to gag]
			otherwise:
				CumFaceUp 2;
		if the TrapNo of V is 1:
			say "Another vine joins the first in fucking your [if V is penetrating asshole][asshole][otherwise][vagina][end if]! Shit!";
			Ruin a random fuckhole penetrated by V;
		if the TrapNo of V is 2:
			say "A third vine squeezes into your [if V is penetrating asshole][asshole][otherwise][vagina][end if]! You are being stretched!";
			Ruin a random fuckhole penetrated by V;
		if the TrapNo of V is 3:
			say "A fourth vine somehow manages to squeeze into your [if V is penetrating asshole][asshole][otherwise][vagina][end if], and they all continue fucking you!";
			Ruin a random fuckhole penetrated by V;
		if the reaction of the player is 0 and bukkake fetish is 1 and the TrapNo of V < 4 and (a random number between 1 and 3 is 1 or the player is vine-cursed):
			say "[line break]The increase in sensation sends shivers of pleasure through the nearby vines, and they squirt and ooze from their tips. Several hover near enough that your face and chest are splashed and splattered with [semen].";
			CumFaceUp a random number between 1 and 2;
			CumTitsUp a random number between 1 and 2;
		if the reaction of the player > 0:
			say "You relax your [if V is penetrating asshole][asshole][otherwise][vagina][end if], not resisting the invasion.";
		if the TrapNo of V is 4:
			say "The vines all stop thrusting and start cumming inside you, filling you with [if V is penetrating asshole and egg laying fetish is 1]their eggs[otherwise]their [semen][end if]. Your belly expands and expands. ";
			if bukkake fetish is 1 and a random number between 1 and 3 is 1 or the player is vine-cursed:
				say "At the same time, several vines hovering nearby launch jets of [semen] at your face and chest[if the semen addiction of the player < 6], making you recoil in disgust[end if][if the semen taste addiction of the player > a random number between 12 and 19], and you instinctively open your mouth as wide as possible to receive the tasty treat[end if].";
				CumFaceUp a random number between 2 and 4;
				CumTitsUp a random number between 2 and 4;
			if V is penetrating asshole and egg laying fetish is 1:
				assfill ((a random number between 1 and 3) + (a random number between 1 and 3) + (a random number between 0 and 1) + the stance of the player) small eggs;
			otherwise if V is penetrating asshole:
				assfill ((a random number between 1 and 3) + (a random number between 1 and 3) + the stance of the player);
			otherwise:
				PussyFill ((a random number between 1 and 3) + (a random number between 1 and 3) + the stance of the player);
				let F be a random fairy grabbing the player;
				if F is monster and the pregnancy of the player is 0 and pregnancy fetish is 1:
					say "Your belly [if slow pregnancy > 2]grows rapidly, emitting magenta light[otherwise]emits magenta light for several seconds, illuminating the vegetal mass between your legs[end if] as [NameDesc of F] grins up at you, fingering herself as she floats away.[run paragraph on]";
					now the pregnancy of the player is 1;
					if slow pregnancy > 2, now the womb volume of vagina is 30;
					if image cutscenes is 1, display figure of fairy cutscene 19;
				otherwise if there is a fairy in the location of the player:
					if image cutscenes is 1, display figure of fairy cutscene 20;
				if F is monster and the pregnancy of the player is 1, say "[line break][speech style of F]'[one of]Pay me back whenever you want, honey!'[or]Don[']t you feel so much better now?'[or]Fairies help fairies!'[or]You[']re welcoooome!'[in random order][roman type][line break]";
				if F is monster:
					now F is not grabbing the player;
					bore F for 120 seconds;
				SemenPuddleUp 2;
			say "The vines disappear back into the ground.[if V is penetrating vagina]A huge glob of [semen] seeps from your [vagina] to the ground.[end if]";
			now V is not grabbing the player;
			now V is not penetrating asshole;
			now V is not penetrating vagina;
			now V is unrevealed;
			TimesFuckedUp vine boss by 1;[Princesses should avoid this!]
			if V is in WoodsBoss01:
				remove V from play;
				now the TrapNo of V is 0;
			otherwise:
				now the TrapNo of V is -750.

Part - Escaping from Vines


[!<CheckPullingVineBoss>+

REQUIRES COMMENTING

+!]
Check pulling vine boss:
	if the player is vine stuck, try pulling a random vines grabbing the player instead;

[!<CheckPullingVines>+

REQUIRES COMMENTING

+!]
Check pulling vines:
	if there is a fairy-witch grabbing the player, say "They're too strong. Its like the fairy is empowering them!" instead;
	if the noun is not grabbing the player:
		repeat with V running through vines grabbing the player:
			try pulling V instead;
		if woman-barbara is in the location of the player and the woman-status of woman-barbara is 90 and the vine-scene of woman-barbara <= 5:
			if the player is not able to manually use their hands, do nothing instead;
			WomanVinePull instead;
		say "You can't see any such thing." instead;
	let R be a random number from 7 to 13;
	if the TrapNo of the noun > 0 and the noun is penetrating a fuckhole:
		if R < the soreness of a random fuckhole penetrated by the noun:
			now seconds is 2;
			say "Your [variable random fuckhole penetrated by the noun] is so sore that you are paralysed for a moment by the intense feelings!" instead;
	VinePull instead.

[!<VinePull>+

REQUIRES COMMENTING

+!]
To VinePull:
	let S be the dexterity of the player;
	let X be a random number between square root of S and S;
	let V be a random number between 5 and 20;
	let T be the TrapNo of the noun;
	increase X by T;
	if the player is prone, increase V by (a random number from 0 to 4 + a random number from 0 to 5);
	if debugmode is 1, say "Player [X].5 |  [V] Vines.";
	if X < V:
		if the player is prone, say "[one of][if the TrapNo of the noun < 3]You pull at the vines but they are holding your wrists tightly. Maybe try again?[otherwise]You pull at the vines but they are holding your wrists tightly. Uh-oh, they're slowing down...[end if][or][if the TrapNo of the noun < 3]You pull at the vines with all your might, but their grip is just too tight. Maybe you should try again?[otherwise]You pull at the vines with all your might, but their grip is just too tight. It seems like they're slowing down...[end if][or][if the TrapNo of the noun < 3]You try to yank your hands free, but the vines have you bound too well. Nothing to do but take it or try again.[otherwise]You try to work your hands free, but it's no use. In fact, it seems like they grip you even tighter. What now?[end if][or][if the TrapNo of the noun < 3]You pull one hand free only to have it immediately grabbed and pinned to the ground once more. Maybe try again?[otherwise]You pull one hand free only to have it immediately grabbed and pinned to the ground once more. The vines seem like they're slowing down...[end if][in random order]";
		otherwise say "[one of][if the TrapNo of the noun < 3]You pull at the vines but they are holding your ankles tightly. Maybe try again?[otherwise]You pull at the vines but they are holding your ankles tightly. Uh-oh, they're slowing down...[end if][or][if the TrapNo of the noun < 3]You pull at the vines with all your might, but their grip is just too tight. Maybe you should try again?[otherwise]You pull at the vines with all your might, but their grip is just too tight. It seems like they're slowing down...[end if][or][if the TrapNo of the noun < 3]You try to free yourself as best you can without falling over. It doesn't work, but you can always try again.[otherwise]You try to free yourself as best you can without falling over. It doesn't work, but it does seem like they're slowing down.[end if][or][if the TrapNo of the noun < 3]You manage to get a few to let go, but several more immediately take their place. Maybe try again?[otherwise]You manage to get a few to let go, but several more immediately take their place. They seem to tighten their grip. What now?[end if][in random order]";
	otherwise:
		say "You manage to loosen the vines and free your [if the player is prone]wrists and [end if]ankles!  ";
		now the noun is not grabbing the player;
		if the noun is penetrating a fuckhole:
			say "The vine[if the TrapNo of the noun > 0]s[end if] in your [if the noun is penetrating asshole][asshole][otherwise][vagina][end if] pull[if the TrapNo of the noun is 0]s[end if] out and go[if the TrapNo of the noun is 0]es[end if] back into the ground, ready to strike again. ";
			now the noun is not penetrating asshole;
			now the noun is not penetrating vagina;
		now the TrapNo of the noun is 0;
		if the player is prone:
			say "You quickly try to stand!";
			now seconds is 0;
			try standing;
		say "Run for it before they catch you again!";
	now seconds is 6.

[!<CheckAttackingVines>+

REQUIRES COMMENTING

+!]
Check attacking vines:
	try pulling the noun instead.



Vines ends here.

