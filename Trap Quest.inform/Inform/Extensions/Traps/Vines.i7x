Vines by Traps begins here.

Figure of Vines Cutscene 2 is the file "Special/Cutscene/cutscene-vines2.png".
Figure of Vines Cutscene 4 is the file "Special/Cutscene/cutscene-vines4.png".
Figure of Vines Cutscene 6 is the file "Special/Cutscene/cutscene-vines6.jpg".

This is the spawn initial woods vines rule:
	repeat with N running from 1 to 5:
		let R be a random trappable placed jungle room;
		let T be a random off-stage vine;
		if the number of vines in R is 0, deploy T in R.
The spawn initial woods vines rule is listed in the set up woods traps rules.

vine are a kind of trap. The printed name of vine is "[TQlink]vine[TQxlink of item described][verb-desc of item described]". There are 16 revealed vines. Understand "living", "vine", "vines" as vines when item described is in the location of the player. The printed plural name of vines is "vines". Figure of vines is the file "Env/Forest/vines1.png". The text-shortcut of a vine is "vin". A vine has a number called vine-condoms. The vine-condoms of a vine is usually 0.

Definition: a vine is father material: decide yes.
Definition: A vine is live: decide yes.

To decide which number is the girth of (V - a vine):
	decide on 2 * (1 + the TrapNo of V).

To decide which figure-name is the examine-image of (C - a vine):
	if diaper quest is 0 and the player is female:
		if C is penetrating asshole, decide on figure of vines cutscene 5;
		if C is penetrating vagina:
			if the TrapNo of C > 0, cutshow figure of vines cutscene 7;
			decide on figure of vines cutscene 1;
	if C is wrangling the player:
		if the player is upright, decide on figure of vines cutscene 2;
		otherwise decide on figure of vines cutscene 6;
	decide on figure of vines.

To say ExamineDesc of (C - a vine):
	if diaper quest is 0, say "Seemingly intelligent vines with oozing, phallic tips. They [if the player is vine-cursed]seem irrationally eager to penetrate your body.[otherwise]only seem interested in penetrating your body.[end if][if egg laying fetish is 1]Some of them are covered in large yellow splotches, as if they needed any help looking bizarre.[end if]";
	otherwise say "These vines are moving around like tentacles and seem to be somehow intelligent!".

To say ShortDesc of (T - a vine):
	say "vine".

To say EnvironmentDesc of (T - a vine):
	say "Strong, living vines worm through the soil [if the player is vine-cursed]underneath your feet.[otherwise]around your feet.[end if] ".

To say PregGrowth of (M - a vine):
	say "the [one of]vines['] offspring[or]vines['] [child][stopping]".

[!<YourselfIsVineStuck>+

Returns yes if the player is grabbed by a vine.

+!]
Definition: yourself is vine stuck:
	if there is a vine wrangling the player, decide yes;
	if fairy-witch is grabbing the player, decide yes;
	decide no.

[!<YourselfIsVineFucked>+

Returns yes if the player is being fucked by one or more vines.

+!]
Definition: yourself is vine fucked if there is a vine penetrating a body part.

[!<VineIsAgressive>+

REQUIRES COMMENTING

+!]
Definition: a vine (called V) is aggressive:
	if V is penetrating a body part or V is wrangling the player, decide yes;
	if the TrapNo of V < 0 or V is not in the location of the player, decide no;
	if vine boss is off-stage, decide no;
	if busy is 1, decide no;
	if the player is monster fucked or the player is trap stuck or (the player is monster stuck and diaper quest is 1), decide no;
	if diaper quest is 1:
		if the player is in WoodsBoss01:
			if the player is prone and there is a worn diaper, decide yes;
			otherwise decide no;
		if there is a worn wet diaper or there is a worn messed diaper, decide yes;
		if there is a worn diaper and (the player is prone or (diaper messing >= 3 and face is not actually occupied)), decide yes;
		decide no;
	if asshole is actually occupied and (the player is male or vagina is actually occupied), decide no;
	decide yes.

[!<ComputeVinesStanding>+

REQUIRES COMMENTING

+!]
To compute vines standing:
	repeat with V running through aggressive vines:
		if playerRegion is Woods or the player is in WoodsBoss01:
			now V is in the location of the player;
		otherwise:
			dislodge V; [To avoid glitches]
		if the player is vine stuck and the player is not vine fucked:
			compute V penetrating;
		otherwise if the player is not vine stuck:
			now V is revealed;
			let D be the dexterity of the player;
			if there are worn heels:
				if the heel-height of a random heels worn by the player > the heel skill of the player, decrease D by 1;
				if the heel-height of a random heels worn by the player > the heel skill of the player + 1, decrease D by 1;
			let R be a random number from 1 to D;
			if debuginfo > 0, say "[input-style]Vine evasion check: dexterity d[D] ([R]) | ([if the class of the player is schoolgirl and the player is vine-cursed]4[otherwise]2[end if].5) vine difficulty[roman type][line break]";
			if R <= 2 or (R <= 4 and the class of the player is schoolgirl and the player is vine-cursed):
				say "[one of]Vines slither up your legs, locking them in place. Maybe you'll be able to get away if you [bold type]pull[roman type] them.[or]Living vines grab your ankles and feet, locking them in place. There's no way you'll be able to get away if you don't [bold type]pull[roman type] them off.[or]A single vine slowly rises out of the soil, swaying [if the raw sex addiction of the player > 6]hypnotically[otherwise]menacingly[end if], sticky white fluids oozing from its shiny, bulbous tip. Before you can react, several more burst out of the ground and wrap around your ankles.[or]Vines shoot out of the ground and wrap around your ankles![or]A pair of vines shoot out of the soil. You try to move out of the way, but it's too late! They wrap around your ankles and pin them to the ground.[then at random]";
				now V is wrangling the player;
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
	repeat with V running through aggressive vines:
		if playerRegion is Woods or the player is in WoodsBoss01:
			now V is in the location of the player;
		otherwise:
			dislodge V; [To avoid glitches]
		if the player is vine stuck and the player is not vine fucked:
			compute V penetrating;
		otherwise if diaper quest is 1 and refractoryperiod <= 0 and the player is able to get horny:
			let D be a random worn diaper;
			say "Squirming living vines [one of]rise up from the ground and begin rubbing[or]squirm and rub[stopping] against the crotch of your diaper! Your [genitals] [one of]is stimulated through your padding[or]feels amazing[or]tingles with delight[or]pulses with pleasure[at random]...";
			if the player is not a pervert, say "[variable custom style][one of]Not good, not good![or]I need to get out of here! Or at least stand up high enough that these guys can't reach me...[or][if the diaper addiction of the player < 8]No, I don't want to be turned on in my diaper[otherwise]Enough with making me turned on all the time, I just want to wear my diapers in peace[end if]![or]This game is totally trying to give me a diaper fetish, isn't it?[then at random][roman type][line break]";
			ruin vagina;
			ruin vagina;
		otherwise if the player is not vine stuck:
			now V is revealed;
			let D be the dexterity of the player;
			let R be a random number from 1 to D;
			if debuginfo > 0, say "[input-style]Vine evasion check: dexterity d[D] ([R]) | ([if the class of the player is schoolgirl or the class of the player is magical girl or diaper quest is 1]6[otherwise]3[end if].5) vine difficulty[roman type][line break]";
			if R <= 3 or (R <= 6 and (the class of the player is schoolgirl or the class of the player is magical girl or diaper quest is 1)):
				say "[one of]The soil beneath you shifts as living vines burst out and instantly pin your wrists and ankles to the ground. Maybe you'll be able to get away if you [bold type]pull[roman type] them.[or]Several vines rise out of the soil, closing in on you slowly. Watching the movement of their [if diaper quest is 1]undulating bodies is strangely hypnotic, and before[otherwise if the raw sex addiction of the player > 6]oozing, bulbous tips is strangely hypnotic, and before[otherwise]oozing, bulbous tips is unsettling enough to distract you from the feeling of the shifting soil underneath you. Before[end if] you realise it they've pinned your wrists and ankles to the ground.[or]Vines burst out of the soil and grab your wrists with whip-like quickness. They do the same with your ankles.[or]Before you can react, vines have grabbed your wrists and ankles. You try to move, but it's no use. You're pinned.[or]Vines shoot out of the soil and wrap around your wrists and ankles![then at random]";
				now V is wrangling the player;
			otherwise:
				say "[one of]Vines shoot out of the ground and attempt to wrap around your wrists and ankles. You manage to avoid being grappled for now![or]Several vines rise out of the soil, closing in on you slowly. You bat away each one. Looks like you've avoided a grapple for now.[or]Vines shoot out of the soil with whip-like quickness! But thanks to your good reflexes you jump out of the way just in time. You're safe for now.[or]Living vines burst out of the soil, fumbling to grab your wrists. You're much too fast for them to catch you. For now.[in random order]";
				if the player is female, cutshow figure of vines cutscene 1 for V;

[!<ReportKneelingWhenThereIsAVineGrabbingThePlayer>+

REQUIRES COMMENTING

+!]
Report kneeling when there is a vine wrangling the player:
	say "[one of]Vines wrap around your wrists as soon as they hit the ground.[or]Your wrists are immediately pinned to the ground.[or]Vines immediately pin your hands to the ground.[or]Vines wrap around your wrists and pin them to the ground.[or]Unsurprisingly, vines immediately grab your wrists and pin them to the ground.[in random order]".

[!<ComputeVinePenetrating>+

REQUIRES COMMENTING

+!]
To compute (V - a vine) penetrating:
	if diaper quest is 1:
		if diaper messing >= 3 and the number of worn wet diapers is 0 and the number of worn messed diapers is 0 and the player is not in WoodsBoss01 and the TrapNo of V < 1, compute vine laxative torture of V;
		otherwise compute vine diaper torture of V;
	otherwise:
		let R be a random number between 1 and 2;
		let F be asshole;
		if the player is a pussy slut, now R is 2;
		if R is 2 and the player is female and the player is not a butt slut, now F is vagina;
		let H be a random number from 1 to 14;
		if the player is prone, now H is 14;
		if H < the total volume of hips and H < 10, say "A vine shoots straight out of the ground in between your legs, but misses and bounces off your [AssDesc]. It recoils back into the ground.";
		otherwise compute V penetrating F.

To compute condomCatch of (V - a vine) in (F - a fuckhole):
	if V is penetrating F, say "[one of]The soil continues to shift underneath you, and you realise another vine must be headed for your [variable F][or]The soil shifts as another vine gets ready to penetrate your [variable F][stopping]. Try to intercept it with a condom?";
	otherwise say "You feel the ground shifting directly under your [variable F], and you realise where the vines are heading next. Try to protect yourself with a condom?";
	if the player is consenting:
		let D be the dexterity of the player;
		let R be a random number from 1 to D;
		if R <= 3 or (the player is prone and R <= 6):
			if the player is prone, say "[one of]You manage to slip free just long enough to pull out a condom, only to be caught and pinned a moment later. [if V is penetrating F]Another[otherwise]A[end if] vine shoots out of the soil and [if the TrapNo of V > 1]squeezes[otherwise]plunges[end if] its way into your unprotected [variable F].[or]You manage to free your hands long enough to catch the incoming vine with a condom, but as you're unrolling it, a second vine shoots out of the soil and into your unprotected [variable F]![or]No matter how hard you try, you can't free your hands long enough to pull out a condom. You [if sex addiction of the player > 7]moan[otherwise]grunt[end if] as [if V is penetrating F]another[otherwise]a[end if] vine [if the TrapNo of V > 1]squeezes[otherwise]shoots[end if] into your unprotected [variable F].[or]You slip one hand free and quickly pull out a condom. You try to capture the vine with a condom, but it's too fast! You hand is knocked out of the way as it [if the TrapNo of V > 1]squeezes[otherwise]slams directly[end if] into your [variable F].[at random]";
			otherwise say "[one of]You try to catch the vine with a condom as it shoots out of the ground, but it's too late! It smacks your hand out of the way and [if the TrapNo of V > 1]squeezes[otherwise]plunges[end if] its way into your [variable F].[or]You manage to catch the vine with a condom as it shoots out of the soil, but it tears right through, [if the TrapNo of V > 1]hungrily forcing its way[otherwise]sailing directly[end if] into your [variable F].[or]You try to capture the vine with a condom as it shoots out of the ground, and it knocks your hand out of the way as it eagerly [if the TrapNo of V > 1]squeezes[otherwise]slams[end if] itself into your [variable F].[at random]";
		otherwise:
			if the player is prone, say "[one of]You slip one hand free and catch the vine with a condom as it shoots out of the soil and [if the TrapNo of V > 1]squeezes[otherwise]plunges[end if] into your [variable F].[or]You manage to free yourself just long enough to snag the incoming vine with a condom, covering it with latex as it [if the TrapNo of V > 1]squeezes[otherwise]sails[end if] into your [variable F][or]You barely free yourself in time to snag the vine with a condom, covering as much of it as you can before it eagerly [if the TrapNo of V > 1]squeezes[otherwise]slams[end if] itself into your [variable F].[at random]";
			otherwise say "[one of]You catch the vine with a condom as it shoots out of the soil, barely covering it as it plunges into your [variable F].[or]You react just fast enough to snag the vine with a condom as it shoots out of the soil, covering it with latex as it [if the TrapNo of V > 1]squeezes[otherwise]sails[end if] into your [variable F].[or]You barely capture the vine with a condom as it shoots out of the soil, covering as much as you can before it eagerly [if the TrapNo of V > 1]squeezes[otherwise]slams[end if] itself into your [variable F].[at random]";
			increase the vine-condoms of V by 1;

To compute (V - a vine) penetrating (F - asshole):
	let K be a random worn top level ass protection clothing;
	if the player is ass protected:
		[let K be a random worn top level ass protection clothing;]
		compute V attacking K;
	if the player is not ass protected and K is crotch-ripped or K is crotch-unzipped:
		say "It continues straight into your [asshole] and immediately begins fucking you at full force!";
		if V is wrangling the player:
			now V is penetrating asshole;
		otherwise:
			repeat with X running through vines wrangling the player:
				now X is penetrating asshole;
			ruin asshole;
	otherwise if asshole is actually occupied:
		let T be a random thing penetrating asshole;
		if T is disembodied:
			say "The vine powerfully pulls out the [T] and throws it on the ground.";
			dislodge T;
			now T is in the location of the player;
	otherwise:
		let N be a random vine wrangling the player;
		if N is V:
			now V is penetrating asshole;
		otherwise if N is vine:
			now N is penetrating asshole;
		otherwise:
			now a random vine in the location of the player is penetrating asshole;
		let NV be a random vine penetrating asshole;
		if the player is upright and there is a held condom-providing thing, compute condomCatch of NV in asshole;
		if the vine-condoms of NV <= 0, say AssholePenetrationFlav of NV;
		ruin asshole.

To compute (V - a vine) penetrating (F - vagina):
	let K be a random worn top level protection clothing;
	if the player is pussy protected:
		[let K be a random worn top level protection clothing;]
		compute V attacking K;
	if the player is not pussy protected and K is crotch-ripped or K is crotch-unzipped:
		say "It continues straight into your [vagina] and immediately begins fucking you at full force!";
		let N be a random vine wrangling the player;
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
		if V is wrangling the player:
			now V is penetrating vagina;
		otherwise:
			repeat with X running through vines wrangling the player:
				now X is penetrating vagina;
		let NV be a random vine penetrating vagina;
		if the player is upright and there is a held condom-providing thing, compute condomCatch of NV in vagina;
		if the vine-condoms of NV <= 0, say VaginaPenetrationFlav of NV;
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
	say "[one of]The vines holding your legs spread your [asshole] as another shoots out of the ground and begins fucking you at full force! [or]A vine shoots out of the ground between your feet and into your [asshole]. It begins fucking you at full force! [or]A single vine shoots out of the ground beneath your feet and into your [asshole]. It begins to fuck you at full force! [or]The vines [if the raw sex addiction of the player < 5]pry[otherwise]spread[end if] your thighs apart as an unseen vine beneath you shoves itself into your [asshole]. It begins fucking you at full force! [in random order]Owww!";

[!<SayVaginaPenetrationFlavOfVine>+

REQUIRES COMMENTING

+!]
To say VaginaPenetrationFlav of (V - a vine):
	say "[one of]The vines holding your legs keep your [vagina] wide open as another shoots out of the ground and begins fucking you at full force! [or]A vine shoots out of the ground between your feet and into your [vagina]. It begins fucking you at full force! [or]A single vine shoots out of the ground beneath your feet and into your [vagina]. It begins to fuck you at full force! [or]The vines [if the raw sex addiction of the player < 5]pry[otherwise]spread[end if] your legs apart as an unseen vine beneath you shoves itself into your [vagina]. It begins fucking you at full force! [in random order]Oof!";

[!<ComputeVinesFucking>+

Handles vines having sex with the player

+!]
To compute vines fucking:
	repeat with V running through vines penetrating a fuckhole:
		let O be a random fuckhole penetrated by V;
		increase the TrapNo of V by 1;
		if the reaction of the player is 0 and bukkake fetish is 1 and the TrapNo of V < 4 and a random number between 1 and 4 is 1:
			let R be a random number between 12 and 19;
			say "As if to quell your resistance, a free vine lashes out with its oozing, bulbous tip and slaps you across the face several times, leaving drippy trails of [semen] in its wake. [if the semen taste addiction of the player > R and face is not occupied]Overwhelmed by submissive desires, [one of]your tongue lewdly reaches out and licks up as much of the sticky mess as it can.[or] you follow its movements with your open mouth in an attempt to steal a taste of the writhing intruder.[or]you stop struggling and part your lips in supplication. The vine momentarily rewards your response by wrapping itself around your neck, forcing its way into your mouth and down your gullet, and simultaneously squeezing and fucking your throat while you choke and sputter. It withdraws as you start to see stars, leaving you feeling dazed yet disturbingly satisfied.[then at random][end if][line break]";
			if the semen taste addiction of the player > R:
				CumFaceUp 1;
				now V is penetrating face;
				StomachSemenUp 1;
				now V is not penetrating face;[To allow the player to gag]
			otherwise:
				CumFaceUp 2;
		if the TrapNo of V is 1:
			if the player is upright and there is a held condom-providing thing and the reaction of the player > 0, compute condomCatch of V in O;
			otherwise say "Another vine joins the first in fucking your [if V is penetrating asshole][asshole][otherwise][vagina][end if]! Shit!";
			Ruin O;
		if the TrapNo of V is 2:
			if the player is upright and there is a held condom-providing thing and the reaction of the player > 0, compute condomCatch of V in O;
			otherwise say "A third vine squeezes into your [if V is penetrating asshole][asshole][otherwise][vagina][end if]! You are being stretched!";
			Ruin O;
		if the TrapNo of V is 3:
			if the player is upright and there is a held condom-providing thing and the reaction of the player > 0, compute condomCatch of V in O;
			otherwise say "A fourth vine somehow manages to squeeze into your [if V is penetrating asshole][asshole][otherwise][vagina][end if], and they all continue fucking you!";
			Ruin O;
		if the reaction of the player is 0 and bukkake fetish is 1 and the TrapNo of V < 4 and (a random number between 1 and 3 is 1 or the player is vine-cursed):
			say "[line break]The increase in sensation sends shivers of pleasure through the nearby vines, and they squirt and ooze from their tips. Several hover near enough that your face and chest are splashed and splattered with [semen].";
			CumFaceUp a random number between 1 and 2;
			CumTitsUp a random number between 1 and 2;
		if the reaction of the player > 0:
			say "You relax your [if V is penetrating asshole][asshole][otherwise][vagina][end if], not resisting the invasion.";
			repeat with M running through reactive monsters:
				say VineSubmitTrapReactFlav of M;
		if the TrapNo of V >= 4:
			compute vineNut of V.

To compute vineNut of (V - a vine):
	let O be a random fuckhole penetrated by V;
	say "The vines all stop thrusting and start cumming inside you, filling [if the vine-condoms of V is 4]the condoms with their [semen][otherwise if O is asshole and egg laying fetish is 1]your [asshole] with eggs[otherwise]your [variable O] with [semen][end if]. Your belly expands and expands. ";
	if bukkake fetish is 1 and a random number between 1 and 3 is 1 or the player is vine-cursed:
		say "At the same time, several vines hovering nearby launch jets of [semen] at your face and chest[if the semen addiction of the player < 6], making you recoil in disgust[end if][if the semen taste addiction of the player > a random number between 12 and 19], and you instinctively open your mouth as wide as possible to receive the tasty treat[end if].";
		CumFaceUp a random number between 2 and 4;
		CumTitsUp a random number between 2 and 4;
	let X be 0;[X is the total "mess" the vines create]
	let N be 4;
	let C be the vine-condoms of V;
	while N > 0:
		if C > 0:
			decrease C by 1;
		otherwise:
			increase X by a random number between 2 and 3;
			if X < 6, increase X by a random number between 2 and 3;
		decrease N by 1;
	if O is asshole:
		if X > 0:
			if egg laying fetish is 1, Assfill (X + the stance of the player) small eggs;
			otherwise Assfill (X + the stance of the player);
		AnalCount;
	otherwise:
		if X > 0:
			PussyFill (X + the stance of the player);
			SemenPuddleUp 2;
			let F be a random fairy grabbing the player;
			if F is monster and the pregnancy of the player is 0 and pregnancy fetish is 1 and inhuman pregnancy is 2:
				say "Your belly grows rapidly, emitting magenta light as [NameDesc of F] grins up at you, fingering [himself of F] as [he of F] floats away.";
				cutshow figure of fairy cutscene 19 for F;
				now the pregnancy of the player is 1;
				now V is inseminating vagina;
				now the father is V;
				compute sudden pregnancy;
			otherwise if there is a fairy in the location of the player:
				cutshow figure of fairy cutscene 20 for V;
			if F is monster and the pregnancy of the player is 1, say "[line break][speech style of F]'[one of]Pay me back whenever you want, honey!'[or]Don[']t you feel so much better now?'[or]Fairies help fairies!'[or]You[']re welcoooome!'[in random order][roman type][line break]";
			if F is monster:
				bore F for 120 seconds;
		FuckCount;
	if the vine-condoms of V > 0:
		repeat with CD running from 1 to the vine-condoms of V:
			compute condom filling of vine boss;
	say "The vines disappear back into the ground.[if V is penetrating vagina and the vine-condoms of V < 4]A huge glob of [semen] seeps from your [vagina] to the ground.[end if]";
	dislodge V;
	now V is unrevealed;
	TimesSubmittedUp vine boss by 1; [Princesses should avoid this!]
	progress quest of tentacle-quest;
	if V is in WoodsBoss01:
		remove V from play;
		now the TrapNo of V is 0;
	otherwise:
		now the TrapNo of V is -750;
	if the vine-condoms of V > 0 and the player is in WoodsBoss01 and vine boss is alive: [Otherwise if the player is really good with her condoms, she'll never get eaten]
		if the vine-condoms of V >= 4:
			say "[BigNameDesc of vine boss] looks somewhat fatigued and frustrated at your skill at placing condoms rendering [him of vine boss] unable to fill you with [his of vine boss] [semen]. Your suspicions are confirmed when the monster grabs you with [his of vine boss] 'hands' and throws you upwards, expelling you from [his of vine boss] pit in annoyance!";
			teleport to Woods16;
		otherwise:
			say "[BigNameDesc of vine boss] looks somewhat frustrated at your condoms restricting how many of [his of vine boss] vines were able to fill you with [his of vine boss] [semen]. However the fact that you didn't manage to catch them all gives [him of vine boss] enough of an encouragement to continue [his of vine boss] assault!";
	now the vine-condoms of V is 0.

To say CondomPinFlav of (M - vine boss) on (C - a clothing):
	say "A used condom suddenly zips from its vine and flies through the air until it hits your [C]. ".

To say CondomPinReactionFlav of (M - vine boss) on (C - a clothing):
	do nothing.

To compute vine laxative torture of (V - a vine):
	say "Holding your limbs carefully in place, one vine approaches your mouth holding a big purple baby bottle labelled 'LAX'. [one of]Somehow you suspect that isn't a reference to some unnamed Los Angeles-based ex-girlfriend. [or][stopping]After the nipple is pushed into your mouth, the vine squeezes the middle of the bottle and the bitter tasting liquid squirts into your mouth. There's nothing you can do but drink up.";
	increase suppository by 2;
	StomachUp 1;
	if butterfly wings is actually summonable:
		say "Even more bizarrely, you feel a pair of wings sprout from your back! You feel lighter.";
		summon butterfly wings cursed with quest;
	appropriate-cutscene-display figure of vines cutscene 4;
	say "After this the vines release you, retreating back into the trees and disappearing into the ground.";
	now V is not wrangling the player;
	now V is unrevealed;
	TimesSubmittedUp vine boss by 1;
	now the TrapNo of V is -750;
	if witch is unfriendly and witch is interested, satisfy witch.

To compute vine diaper torture of (V - a vine):
	let D be a random worn diaper;
	increase the TrapNo of V by 1;
	if the TrapNo of V is 1:
		if the player is in WoodsBoss01:
			now the player is in a random placed jungle room;
			now V is in the location of the player;
			display entire map;
			say "A portal opens underneath your body and before you can react you are falling through the sky face first! The ground rushes up to reach you but vines catch your feet just in time. You are now back in the woods. The vines pull your feet back through a new portal above you and then after you are halfway up through this new portal your OWN diapered butt appears below you in front of your face! You are bent at the waist and your feet touch the ground. Your butt is placed into the perfect position so that your face is resting against the back of your diaper. You end up face-planting the back of your own [MediumDesc of D]!";
		otherwise:
			say "Before you can escape the vines more have grabbed hold of your thighs. More have descended from the trees above and wrapped around your torso, trapping your arms against your body. [if the player is prone]The vines yank and pull you up onto your two feet. [end if][one of]Your eyes widen in [horror the diaper addiction of the player] as a shimmering portal appears in the air in front of you at waist height and through it you can see the top of someone's head and behind it, the ground. It takes several moments before you can comprehend what you are seeing: it's you yourself, but from above! This doesn't make any sense! And then the vines start to force your head through the portal and your own head disappears from your vision and is replaced by a back and a diapered posterior, your OWN diapered butt in fact! As you are bent at the waist and your upper body is moved forward through the portal your butt is placed into the perfect position so that your face ends up vertically descending onto the back of it. You end up face-planting the back of your own[or]You are once again forced halfway through a portal which forces your own face into the back of your own[stopping] [MediumDesc of D]!";
		compute automatic state check of D;
		say "It's like the vines want you to experience your own [if D is messed]smelly[otherwise]soggy[end if] shame right up close and personal. You could either [link][bold type]submit[roman type][end link] and rub your own face in the seat of your diaper, or [link][bold type]resist[roman type][end link] and see how the vines act themselves.";
	otherwise if the reaction of the player is 0: [resisting]
		say "[one of]Seemingly unamused by your disobedience, the vines begin to spank your thighs from behind![or]The vines punish the backs of your thighs with several stinging swats![stopping]";
		PainUp 1;
		BodyRuin 1;
	otherwise:
		compute automatic state check of D;
		say "You [if the diaper addiction of the player < 8][one of]reluctantly[or]sob quietly to yourself as you[or]try to think about more pleasant things while you[at random] [end if][one of]nuzzle your own [if D is perceived messed]dirty[otherwise]wet[end if] diaper with your face[or]push your nose deep into the padding of your [MediumDesc of D][or]grind your padded butt into your own scrunched up face[or]motorboat your own [if D is perceived messed]smelly, squishy[otherwise]soggy[end if] padding[in random order][if the diaper addiction of the player > 15][one of] with pride[or] without a second thought[or], cooing happily as you do[or], enjoying the pleasant sensations[at random][end if].";
		ruin vagina;
	if the TrapNo of V > a random number between 4 and 5:
		say "After this the vines seem to grow bored, and after removing your upper half from the portal it disappears. The vines release you, retreating back into the trees and disappearing into the ground.";
		now V is not wrangling the player;
		now V is unrevealed;
		TimesSubmittedUp vine boss by 1;
		now the TrapNo of V is -750;
		if witch is unfriendly and witch is interested, satisfy witch;
	otherwise:
		if there is a worn messed diaper, cutshow figure of vines cutscene 3b for V;
		otherwise cutshow figure of vines cutscene 3a for V.

This is the vine diaper orgasm resolution rule:
	if diaper quest is 1:
		repeat with V running through vines wrangling the player:
			now the TrapNo of V is 6. [Forces scene to finish]
The diaper orgasm resolution rule is listed last in the orgasm resolution rules.

To say SexSubmissionFlav of (T - a vine):
	if T is penetrating a body part, say "[one of]You stay still and let the vines take what they want.[or]You relax and allow the vines to plunder your depths.[or]You surrender to the pleasurable sensations of getting [if inhuman pregnancy > 0]bred[otherwise]plowed[end if] by alien vines.[or]You give into the pleasure and let the vines use you freely.[or]You obediently let the vines claim their prize.[purely at random]".

Part - Escaping from Vines

[!<CheckPullingVineBoss>+

REQUIRES COMMENTING

+!]
Check pulling vine boss:
	if the player is vine stuck, try pulling a random vines wrangling the player instead;

[!<CheckPullingVines>+

REQUIRES COMMENTING

+!]
Check pulling vines:
	if there is a fairy-witch grabbing the player, say "They're too strong. It's like the fairy is empowering them!" instead;
	if the noun is not wrangling the player:
		repeat with V running through vines wrangling the player:
			try pulling V instead;
		if woman-barbara is in the location of the player and the woman-status of woman-barbara is 90 and the vine-scene of woman-barbara <= 5:
			if the player is not able to manually use their hands, do nothing instead;
			if the player is wrist bound behind, say "Unfortunately you can't really do that with your wrists bound behind you!" instead;
			WomanVinePull instead;
		say "You can't see any such thing." instead;
	if the TrapNo of the noun > 0 and diaper quest is 1, say "It's too late for that, there are way too many of them holding you in this position for you to escape now!" instead;
	let R be a random number from 7 to 13;
	if the TrapNo of the noun > 0 and the noun is penetrating a fuckhole:
		if R < the soreness of a random fuckhole penetrated by the noun:
			allocate 2 seconds;
			say "Your [variable random fuckhole penetrated by the noun] is so sore that you are paralysed for a moment by the intense feelings!" instead;
	VinePull instead.

[!<VinePull>+

REQUIRES COMMENTING

+!]
To VinePull:
	let S be the dexterity of the player;
	let X be a random number between square root of S and S;
	let V be a random number between 5 and 19;
	let T be the TrapNo of the noun;
	increase X by T;
	if the player is prone, increase V by (a random number from 0 to 4 + a random number from 0 to 5);
	if debuginfo > 0, say "[input-style]Vines escape check: dexterity roll RNG([square root of S]~[S + 0]) + turns ([T]) = [X] | [V].5 = [if the player is prone](d5-1 + d6-1) player on knees bonus + [end if](d15+4.5) grapple roll[roman type][line break]";
	if X <= V:
		if diaper quest is 1:
			say "You pull at the vines but they are holding your wrists tightly. There's no escape this time!";
		otherwise if the player is prone:
			say "[one of][if the TrapNo of the noun < 3]You pull at the vines but they are holding your wrists tightly. Maybe try again?[otherwise]You pull at the vines but they are holding your wrists tightly. Uh-oh, they're slowing down...[end if][or][if the TrapNo of the noun < 3]You pull at the vines with all your might, but their grip is just too tight. Maybe you should try again?[otherwise]You pull at the vines with all your might, but their grip is just too tight. It seems like they're slowing down...[end if][or][if the TrapNo of the noun < 3]You try to yank your hands free, but the vines have you bound too well. Nothing to do but take it or try again.[otherwise]You try to work your hands free, but it's no use. In fact, it seems like they grip you even tighter. What now?[end if][or][if the TrapNo of the noun < 3]You pull one hand free only to have it immediately grabbed and pinned to the ground once more. Maybe try again?[otherwise]You pull one hand free only to have it immediately grabbed and pinned to the ground once more. The vines seem like they're slowing down...[end if][in random order]";
		otherwise:
			say "[one of][if the TrapNo of the noun < 3]You pull at the vines but they are holding your ankles tightly. Maybe try again?[otherwise]You pull at the vines but they are holding your ankles tightly. Uh-oh, they're slowing down...[end if][or][if the TrapNo of the noun < 3]You pull at the vines with all your might, but their grip is just too tight. Maybe you should try again?[otherwise]You pull at the vines with all your might, but their grip is just too tight. It seems like they're slowing down...[end if][or][if the TrapNo of the noun < 3]You try to free yourself as best you can without falling over. It doesn't work, but you can always try again.[otherwise]You try to free yourself as best you can without falling over. It doesn't work, but it does seem like they're slowing down.[end if][or][if the TrapNo of the noun < 3]You manage to get a few to let go, but several more immediately take their place. Maybe try again?[otherwise]You manage to get a few to let go, but several more immediately take their place. They seem to tighten their grip. What now?[end if][in random order]";
	otherwise:
		say "You manage to loosen the vines and free your [if the player is prone]wrists and [end if]ankles! ";
		now the noun is not wrangling the player;
		if the noun is penetrating a fuckhole:
			say "The vine[if the TrapNo of the noun > 0]s[end if] in your [if the noun is penetrating asshole][asshole][otherwise][vagina][end if] pull[if the TrapNo of the noun is 0]s[end if] out and go[if the TrapNo of the noun is 0]es[end if] back into the ground, ready to strike again. ";
			now the noun is not penetrating asshole;
			now the noun is not penetrating vagina;
		now the TrapNo of the noun is 0;
		if the player is prone:
			say "You quickly try to stand!";
			allocate 0 seconds;
			try standing;
		say "Run for it before they catch you again!";
		now the vine-condoms of the noun is 0;
	allocate 6 seconds.

[!<CheckAttackingVines>+

REQUIRES COMMENTING

+!]
Check attacking vines:
	try pulling the noun instead.

To say VineSubmitTrapReactFlav of (M - a monster):
	say LewdTrapReactFlav of M.

Vines ends here.
