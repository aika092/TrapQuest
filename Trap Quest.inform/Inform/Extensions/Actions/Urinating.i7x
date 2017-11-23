Urinating by Actions begins here.


[!<urinating:Action>*

REQUIRES COMMENTING

*!]
Urinating is an action applying to nothing.

[!<targetPoster:Object>*

REQUIRES COMMENTING

*!]
target-poster is an object that varies.

[!<diaperReactionSaid:Integer>*

REQUIRES COMMENTING

*!]
diaper-reaction-said is a number that varies.

[!<playerUrinating:Integer>*

REQUIRES COMMENTING

*!]
player-urinating is a number that varies.

[!<Clothing>@<temporarilyDisplaceable:Boolean>*

REQUIRES COMMENTING

*!]
Clothing can be temporarily-displaced.

[!<toilet:Backdrop>*

REQUIRES COMMENTING

*!]
toilet is a backdrop.  The description of toilet is "A toilet[if watersports mechanics is 1].  You can [bold type]use[roman type] this to relieve yourself[end if].".

[!<CheckEnteringToilet>+

REQUIRES COMMENTING

+!]
Check entering toilet:
	try urinating instead.

[!<CheckDrinkingDiaper>+

REQUIRES COMMENTING

+!]
Check drinking diaper:
	try urinating instead.

[!<CheckUrinating>+

REQUIRES COMMENTING

+!]
Check urinating:
	if the bladder of the player is 0 and the number of worn prostate massager plugs is 0:
		if delayed urination is not 1, say "You don't feel the need." instead;
		now delayed urination is 0; [We've accidentally forced the player to pee when they can't, oops!  Oh well, let's not break the game.]
		say "[one of]Player was forced to urinate when they had nothing in their bladder, please report the bug to Aika![or][stopping]";
 		do nothing instead;
	[if diaper lover is 0 and (the player is not bursting or the bladder of the player is 0):
		if delayed urination is 0, say "You don't feel the need." instead;
		do nothing instead;]
	if the player is incontinent and delayed urination is not 1, say "You are fully incontinent; you can't control this at all any more!  Pushing just does nothing." instead;
	if the latex-transformation of the player > 4, say "[if delayed urination is 0]You can't pee, you're a sex doll![end if]" instead;
	[if the player is not bursting and delayed urination is 0, say "You don't feel the need." instead;]
	if delayed urination is 0 and the player is pee protected:
		if the player is not able to use a toilet and the player is not able to use a urinal:
			let P be a random bottom level pee protection clothing;
			if there is pee covering undisplacable unzippable clothing or (there is a worn diaper and the diaper addiction of the player >= 3):
				if P is pants pee refusal inducing and (debugmode is 0 or the player is not a september 2017 top donator), do nothing instead;
				if P is not diaper or the diaper addiction of the player < 3:
					say "Do you really want to try to pee inside your [printed name of P]? [yesnolink] ";
					if the player consents, say "";
					otherwise say "Then you should probably get it out of the way first." instead;
			otherwise:
				say "Do you want to get your clothes out of the way first? [yesnolink] ";
				if the player consents:
					repeat with C running through worn pee covering clothing:
						if C is crotch-zipped:
							say "You unzip your [C].";
							now C is crotch-unzipped;
							now C is temporarily-displaced;
						otherwise if C is displacable:
							say "You pull your [C] out of the way.";
							now C is crotch-displaced;
							now C is temporarily-displaced;
						now seconds is 2;
				otherwise:
					if P is pants pee refusal inducing and (debugmode is 0 or the player is not a september 2017 top donator), do nothing instead;
	if the player is prone and the location of the player is bathroom and delayed urination is 0:
		say "Do you really want to try to pee on the floor here? [yesnolink] ";
		if the player consents:
			if (the delicateness of the player < 4 or (the humiliation of the player < 19000 and there is an intelligent monster in the location of the player)):
				if debugmode > 0 and the player is a september 2017 top donator, say "If debugmode was disabled, the player would refuse to pee.";
				otherwise say "[first custom style]I'm NOT peeing on the floor[if there is an intelligent monster in the location of the player and the delicateness of the player >= 4] in front of the [random intelligent monster in the location of the player][first custom style].[roman type][line break]" instead;
		otherwise:
			say "Then you should probably stand up first." instead;
	if a random lake monster is in the location of the player and the bimbo of the player < 14 and delayed urination is 0:
		say "Do you really want to try to pee on the floor here? [yesnolink] ";
		if the player consents:
			if (the delicateness of the player < 4 or (the humiliation of the player < 19000 and there is an intelligent awake monster in the location of the player)):
				if debugmode > 0 and the player is a september 2017 top donator, say "If debugmode was disabled, the player would refuse to pee.";
				otherwise say "[first custom style]I'm NOT peeing on the floor[if there is an intelligent monster in the location of the player and the delicateness of the player >= 4] in front of the [random intelligent awake monster in the location of the player][first custom style].[roman type][line break]" instead;
		otherwise:
			say "Then you should probably go elsewhere, you don't dare go near the lake with the tentacle monster still lurking in these waters.." instead;
	if the bladder of the player < 4 and (the player is not full or asshole is actually occupied) and delayed urination is not 1:
		if the player is full and asshole is actually occupied and diaper lover >= 4, say "You can't go number two because of the [random thing penetrating asshole].";
		now seconds is 6;
		say "You try to pee, but nothing comes out!" instead.

[!<AClothingIsPantsPeeRefusalInducing>+

REQUIRES COMMENTING

+!]
Definition: a clothing (called P) is pants pee refusal inducing:
	if the urine-soak of P <= 0 and P is not diaper and (the delicateness of the player < 6 or (the humiliation of the player < 25000 and there is an intelligent monster in the location of the player)) and (diaper quest is 0 or there is an intelligent monster in the location of the player):
		if debugmode > 0 and the player is a september 2017 top donator, say "If debugmode was disabled, the player would refuse to pee.";
		otherwise say "[first custom style]I'm NOT peeing my pants[if there is an intelligent monster in the location of the player and the delicateness of the player >= 6] in front of the [random intelligent monster in the location of the player][first custom style][end if].[roman type][line break]";
		decide yes;
	decide no.
[In DQ players will always pee their pants just not in front of people.  This is to make sure that the 'never wet myself involuntarily' bonus is always attainable.]

[!<ComputeToiletUse>+

REQUIRES COMMENTING

+!]
To compute toilet use:
	if there is displacable pee covering clothing or the player is able to use the toilet past their diaper, say "Pulling the crotch fabric of your [ShortDesc of random displacable pee covering clothing] to one side, you ";
	otherwise say "You ";
	say "sit on the nearby toilet and release your hold on your bladder.";
	if (rectum > 3 or the total squirtable fill of belly > 0 or suppository > 0) and asshole is not actually occupied:
		say "With an embarrassing sound, you excavate your bowels too[if the diaper addiction of the player < 10 and the bimbo of the player < 10].  [variable custom style]Well I'm glad that's taken care of.[roman type][line break][otherwise].[end if]";
		reset rectum;
		now the water volume of belly is 0;
		now the semen volume of belly is 0;
		now the urine volume of belly is 0;
		now the milk volume of belly is 0;
		now the small egg count of belly is 0;
		now the medium egg count of belly is 0;
		now the large egg count of belly is 0;
	now the bladder of the player is 0;
	repeat with M running through intelligent monsters in the location of the player:
		compute toilet reaction of M;
	if incontinence > 0:
		decrease incontinence by 1;
		say "You feel as if you've regained some control over your bladder[if diaper lover >= 3] and bowels[end if]!".

[!<ComputeUrinalUse>+

REQUIRES COMMENTING

+!]
To compute urinal use:
	if there is displacable pee covering clothing, say "Pulling the crotch fabric of your [ShortDesc of random displacable pee covering clothing] to one side, you ";
	otherwise say "You ";
	say "walk up to a urinal and release your hold on your bladder.";
	now the bladder of the player is 0;
	repeat with M running through intelligent monsters in the location of the player:
		compute toilet reaction of M;
	if incontinence > 0:
		decrease incontinence by 1;
		say "You feel as if you've regained some control over your bladder[if diaper lover >= 3] and bowels[end if]!".

[!<ComputeToiletReactionOfMonster>+

REQUIRES COMMENTING

+!]
To compute toilet reaction of (M - a monster):
	humiliate 100;
	say "[ToiletReactionFlav of M]".

[!<SayToiletReactionFlavOfMonster>+

REQUIRES COMMENTING

+!]
To say ToiletReactionFlav of (M - a monster):
	if M is friendly, say "The [M] politely looks away.";
	otherwise say "The [M] stares at you, frowning.".

[!<CarryOutUrinating>+

REQUIRES COMMENTING

+!]
Carry out urinating:
	start urination.

[!<StartUrination>+

REQUIRES COMMENTING

+!]
To start urination:
	if seconds is 0, now seconds is 6;
	now player-urinating is 1;
	if pee-bottling is 1: [We are automatically urinating so we set delayed urination to 1 to make sure we skipped the check functions.  But we don't want to tell the player that the urination was involuntary because that's not actually true.]
		now pee-bottling is 0;
		now delayed urination is 0;
	if there is a camera trap in the location of the player and refactoryperiod < 3, now target-poster is a random off-stage wetting poster;
	otherwise now target-poster is nothing;
	if the player is not pee protected or the player is able to use a toilet or the player is able to use a urinal:
		if the player is flying:
			say "You urinate freely from the air onto the ground below.";
			say "[variable custom style]Well this is a new experience...[roman type][line break]";
			if the bladder of the player > 6:
				UrinePuddleUp 6;
			otherwise:
				UrinePuddleUp the bladder of the player;
		otherwise if the player is able to use a toilet and delayed urination is 0:
			compute toilet use;
			say "[PeeReaction 0]";
		otherwise if the player is able to use a urinal and delayed urination is 0:
			compute urinal use;
			say "[PeeReaction 0]";
		otherwise if the player is able to use a body of water and delayed urination is 0:
			say "You [if the size of penis > 0 and the player is upright]walk up to the edge and [urinate] into the water[otherwise]walk past the edge, wading into the water until you can discreetly [urinate][end if].  ";
			if incontinence > 0:
				decrease incontinence by 1;
				say "You feel as if you've regained some control over your bladder!";
			say "[PeeReaction 0]";
		otherwise if resting is 1 and there is a hotel bed in the location of the player:
			say "You [if delayed urination is 1]involuntarily [end if]release your hold on your bladder.  Your [urine] soaks into the sheets and mattress.";
			now a random hotel bed in the location of the player is soggy;
			say "[PeeReaction 1]";
		otherwise if gloryhole is grabbing the player and gloryhole is blowjob portal:
			say "[if the urine taste addiction of the player > 11 and delayed urination is not 1]With an eager grin you[otherwise]You[end if] [if delayed urination is 1]involuntarily [end if]release your hold on your bladder.  Your [urine] goes straight into your own mouth at full force!";
			UrineTasteAddictUp 1;
			StomachUp 3;
		otherwise if gloryhole is grabbing the player and gloryhole is normal glory hole:
			say "You [if delayed urination is 1]involuntarily [end if]release your hold on your bladder.  You are [one of][or]un[stopping]surprised to find that your new anonymous oral servant doesn't pull away!";
		otherwise:
			say "You [if delayed urination is 1]involuntarily [end if]release your hold on your bladder.  Your [urine] [if the player is female and the player is dildo stuck]trickles around the dildo and down your thighs.[otherwise if the player is in the Dungeon]flows to the ground, creating a puddle on the floor.[otherwise]flows to the ground.[end if]";
			say "[PeeReaction 1]";
			if the bladder of the player > 6:
				UrinePuddleUp 6;
			otherwise:
				UrinePuddleUp the bladder of the player;
	otherwise:
		say "You [if delayed urination is 1]involuntarily [end if]release your hold on your bladder.  ";
		compute pee protected urination;
		let K be a random worn bottom level pee protection clothing;
		if K is diaper and K is total protection, say "[PeeReaction 2]";
		otherwise say "[PeeReaction 3]";
	if the bladder of the player > 6:
		decrease the bladder of the player by 6;
		now continued urination is 1;
	otherwise:
		end urination.

[!<ComputePeeProtectedUrination>+

REQUIRES COMMENTING

+!]	
To compute pee protected urination:
	if there is a worn WC plug panties:
		say "Your plug panties [one of]seem to somehow absorb the [urine], and also vibrate powerfully in response!  [or]absorb the [urine], vibrating powerfully as they do.  [stopping]";
		say "[one of][WCPantiesVibeFlav][or][or][cycling]";
		Arouse 300;
		if the player is able to orgasm and (the player is horny and a random number between 1 and 2 is 1) or the player is very horny:
			orgasm;
	otherwise:
		let K be a random worn bottom level soakable pee protection clothing;
		let flav-said be 0;
		let N be 6;
		if the bladder of the player < 6, now N is the bladder of the player;
		repeat with X running from 1 to N:
			if K is nothing:
				if resting is 1 and there is a hotel bed in the location of the player:
					if flav-said is 0, say "Your [urine] soaks into the sheets and mattress.";
					now a random hotel bed in the location of the player is soggy;
				otherwise:
					UrinePuddleUp 1;
					if flav-said is 0, say "Your [urine] drips through your clothing and onto the ground.";
			otherwise:
				if flav-said is 0, say "Your [urine] flows into your [ShortDesc of K][unless K is fluid immune or K is diaper], soaking it[end if].";
				increase the urine-soak of K by 1;
				if K is diaper and there is a worn I love my wet nappies T-shirt and the diaper addiction of the player > 10 and image cutscenes is 1, display figure of wet nappies diaper cutscene 1;
				if K is cursed diaper and the location of the player is toilets and image cutscenes is 1, display figure of toilet diaper cutscene 1;
				if K is diaper and the location of the player is Blindfolded and the player is a human toilet and image cutscenes is 1, display figure of human toilet diaper cutscene 1;
				let sK be a random worn bottom level soakable pee protection clothing;
				if K is not sK and X < N:
					say urinationoverflow of K;
					if diaper lover >= 1:
						let H be a random off-stage baby bonnet;
						if H is actually summonable:
							say "[bold type]As your [ShortDesc of K] overflows, you feel your head suddenly surrounded by soft silky fabric.  You're now wearing a large pink baby's bonnet!";
							summon H cursed;
					now K is sK;
			now flav-said is 1.

[!<ComputeUrination>+

REQUIRES COMMENTING

+!]
To compute urination:
	if there is a camera trap in the location of the player and refactoryperiod < 3, now target-poster is a random off-stage wetting poster;
	otherwise now target-poster is nothing;
	if seconds is 0, now seconds is 6;
	if the player is not pee protected or the player is able to use a toilet:
		if the player is flying:
			say "You continue to urinate onto the ground below.";
			if the bladder of the player > 6:
				UrinePuddleUp 6;
			otherwise:
				UrinePuddleUp the bladder of the player;
		otherwise if the player is able to use a toilet:
			if the location of the player is toilets:
				say "You continue to use the toilet.";
			otherwise:
				say "You continue to use the urinal.";
		otherwise if the player is able to use a body of water:
			say "You continue to pee into the water.  ";
		otherwise if gloryhole is grabbing the player and gloryhole is blowjob portal:
			UrineTasteAddictUp 1;
			StomachUp 3;
		otherwise if gloryhole is grabbing the player and gloryhole is normal glory hole:
			do nothing;
		otherwise:
			say "Your [urine] continues to [if the player is female and the player is dildo stuck]trickle around the dildo and down your thighs.[otherwise if the player is in the Dungeon]flow to the ground, creating a puddle on the floor.[otherwise]flows to the ground.[end if]";
			if the bladder of the player > 6:
				UrinePuddleUp 6;
			otherwise:
				UrinePuddleUp the bladder of the player;
	otherwise:
		compute pee protected urination;
		let K be a random worn bottom level pee protection clothing;
		if K is not diaper and diaper lover >= 1 and the bladder of the player <= 6:
			let N be a random off-stage unique nightie;
			if N is actually summonable and a random number between 1 and 6 - (unlucky * 4) is 1:
				summon N cursed;
				now N is bed wetting;
				say "[bold type]As you finish peeing, a flimsy [ShortDesc of N] shimmers into existence around you![roman type][line break][variable custom style]Because I wet myself?[roman type][line break]";
	if the diaper addiction of the player >= 15 and there is a worn total protection diaper:
		say "Your arousal grows.";
		arouse 200 * (the diaper addiction of the player - 14);
	if the bladder of the player > 6:
		decrease the bladder of the player by 6;
		now continued urination is 1;
	otherwise:
		end urination.


[!<EndUrination>+

REQUIRES COMMENTING

+!]
To end urination:
	now player-urinating is 0;
	if target-poster is a poster:
		if the old-peereaction of target-poster > 0:
			say "[FlashFlav of a random camera trap in the location of the player]";
			say "It was in a perfect position to capture a full shot of you peeing.";
			say "[one of][variable custom style][if the humiliation of the player < 31000]Oh no! No no no!  Not one of me peeing!  Fuck.[otherwise]Now everyone will know what a pervert I am.[end if][or][if the bimbo of the player < 14][variable custom style]Again?![otherwise][second custom style]I bet that pic looks FILTHY![end if][stopping][roman type][line break]";
			set up target-poster;
	let T be a random worn I love my wet nappies T-shirt;
	if T is clothing and diaper lover >= 1:
		let D be a random eligible diaper;
		if there is a worn diaper:
			if T is cursed and the urine-soak of a random worn diaper is 0 or the urine-soak of a random worn diaper is the soak-limit of a random worn diaper:
				say "[bold type]Your [ShortDesc of T] [bold type]seems to uncurse itself.  [variable custom style]I guess I'm finally allowed to change my diaper?[roman type][line break]";
				bless T;
			otherwise if T is not cursed:
				say "[bold type]Your [ShortDesc of T] [bold type]seems to curse itself - it seems very eager to stay on your body right now![roman type][line break]";
				now T is cursed;
		otherwise if D is actually summonable and the player is not able to use a body of water: [Don't want it getting summoned and therefore the player somehow hasn't actually entered the body of water!]
			say "[bold type]Your [ShortDesc of T] [bold type]summons a diaper onto your crotch!  It doesn't seem happy that you weren't wearing one when you peed...[roman type][line break]";
			summon D cursed;
	if resting is 1 and diaper lover >= 1:
		let BW be a random bed-wetter tattoo;
		if there is a worn tattoo and BW is not worn:
			summon BW;
			say "A tattoo appears on you that says 'BED WETTER'. [variable custom style][if the diaper addiction of the player < 10]I can't believe this!  The fuck![otherwise if the diaper addiction of the player < 14]I can't deny it's true...[otherwise]I am a naughty bedwetter, and now everyone will know that![end if][roman type][line break]";
	if diaper lover >= 1 and delayed urination is 1, increase incontinence by 1;
	if delayed urination is 1:
		now wetting-valued is -1;
		if diaper bonus > 0, compute wetting failure;
	otherwise if wetting-valued >= 0 and wetting-valued <= 2 and diaper lover >= 1:
		increase wetting-valued by 1;
		if wetting-valued is 3, diaperreward;
	if delayed urination is 0 and diaper lover >= 1:
		if there is a worn total protection diaper:
			DiaperAddictUp 1;
		otherwise if the number of worn diapers is 0:
			DiaperAddictDown 1;
	now delayed urination is 0;
	now the bladder of the player is 0;
	now continued urination is 0;
	now auto is 1;
	if the player is able to masturbate and the player is horny and the player is not in danger and there is a worn total protection diaper and the diaper addiction of the player >= a random number between 15 and 19 and wanking is 0:
		say "You are so turned on... you really want to masturbate!";
		try masturbating;
		if the player is horny and wanking is 0, say "You overcome your urge and behave yourself.";
	now auto is 0;
	if the player is able to use a body of water and the size of penis is 0 or the player is prone:
		if the player is in Woods05, try showering woodsscenery01;
		if the player is in Dungeon35, try showering dungeonscenery03;
	let TP be a random worn training pants;
	if TP is training pants and there is a worn T-shirt:
		let D be a random plentiful eligible diaper;
		if D is diaper:
			summon D;
			now D is bland;
			now the urine-soak of D is the urine-soak of TP;
			say "[bold type]Suddenly your [ShortDesc of random worn training pants] transforms into a [ShortDesc of D]![roman type][line break]";
			only destroy TP;
			layer D correctly;
	if there is worn temporarily-displaced clothing:
		say "You replace your [ShortDesc of list of worn temporarily-displaced clothing].";
	repeat with C running through temporarily-displaced clothing:
		if C is worn:
			if C is crotch-unzipped, now C is crotch-zipped;
			otherwise now C is crotch-in-place;
		now C is not temporarily-displaced.

Understand "pee", "piss", "urinate", "wee", "use toilet", "use bathroom" as urinating.

[!<SayUrinationOverflowOfClothing>+

REQUIRES COMMENTING

+!]
To say urinationoverflow of (K - a clothing):
	say "But your [printed name of K] [if K is fluid immune]are waterproof, so the [urine] seeps through the leg-holes[otherwise]became so thoroughly sodden that the [urine] seeps through the fabric[end if].".

[!<SayUrinationOverflowOfDiaper>+

REQUIRES COMMENTING

+!]
To say urinationoverflow of (K - a diaper):
	say "But your poor diaper is so completely full for your [urine] that it can't hold any more!  You feel the diaper overflow through the leg holes.".

[!<ThingIsDesperateToPee>+

REQUIRES COMMENTING

+!]
Definition: a thing is desperate to pee: [Does the player need to pee?]
	if tutorial is 1, decide no;
	if the latex-transformation of the player > 4, decide no;
	if the bladder of the player > 6, decide yes;
	decide no.

[!<ThingIsBursting>+

REQUIRES COMMENTING

+!]
Definition: a thing is bursting: [Can the player tell they need to pee?]
	if diaper lover > 0 and there is a worn prostate massager plug, decide yes;
	if the player is desperate to pee and (the incontinence of the player + 5) < the bladder of the player, decide yes;
	decide no.

[!<DecideWhichNumberIsTheIncontinenceOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the incontinence of the player:
	let I be incontinence;
	repeat with C running through clothing worn by the player:
		if C is bed wetting:
			increase I by 1;
			decrease I by the magic-modifier of C;
	if I > 10, decide on 10;
	decide on I.

[!<AThingIsIncontinent>+

REQUIRES COMMENTING

+!]
Definition: a thing is incontinent:
	if the incontinence of the player >= 10, decide yes;
	decide no.

[!<YourselfIsAbleToUseAUrinal>+

REQUIRES COMMENTING

+!]
Definition: yourself is able to use a urinal:
	if the player is immobile or the player is in danger or the player is flying, decide no;
	if the player is potentially able to use a urinal:
		if the player is not pee protected and delayed urination is 0, decide yes;
		if the number of worn pee covering undisplacable clothing is 0, decide yes;
	decide no.

[!<YourselfIsAbleToUseAToilet>+

REQUIRES COMMENTING

+!]
Definition: yourself is able to use a toilet:
	if the player is immobile or the player is in danger or the player is flying, decide no;
	if the player is potentially able to use a toilet:
		if the player is not pee protected and delayed urination is 0, decide yes;
		if the number of worn pee covering undisplacable clothing is 0, decide yes;
	decide no.

[!<YourselfIsPotentiallyAbleToUseAToilet>+

REQUIRES COMMENTING

+!]
Definition: yourself is potentially able to use a toilet:
	if the player is upright and the location of the player is toilets, decide yes;
	decide no.

[!<YourselfIsPotentiallyAbleToUseAUrinal>+

REQUIRES COMMENTING

+!]
Definition: yourself is potentially able to use a urinal:
	if the player is male and the player is upright and the location of the player is urinals, decide yes;
	decide no.

[!<YourselfIsAbleToUseTheToiletPastTheirDiaper>+

REQUIRES COMMENTING

+!]
Definition: yourself is able to use the toilet past their diaper:
	if delayed urination is not 1 and there is a worn total protection knickers and the player is not flying and the number of worn pee covering clothing is 1 and the player is potentially able to use a toilet and toilet allowance is 0 and the player is not in danger and diaper lover > 0, decide yes;
	decide no.

[!<ReportWhenThePlayerIsAbleToUseTheToiletPastTheirDiaper>+

REQUIRES COMMENTING

+!]
Report going when the player is able to use the toilet past their diaper:
	let D be a random worn total protection knickers;
	if the player is feeling full or the player is bursting:
		say "[if D is cursed][bold type]As you enter this room, the leg holes of your [D] [bold type][one of]seem to [or][stopping]temporarily loosen.  [roman type][one of]You can't take them off because the waist is still tightly sealed, but you could probably displace the crotch in order to use the loo.  [or][stopping][otherwise]This room has a toilet in it.  [end if]Do you want to pull your [D] to the side and use the [if the location of the player is urinals]urinal[otherwise]toilet[end if] like an adult? [yesnolink] ";
		if the player consents, compute toilet use.

[!<YourselfIsAbleToUseABodyOfWater>+

REQUIRES COMMENTING

+!]
Definition: yourself is able to use a body of water:
	if delayed urination is 1 or the player is pee protected, decide no;
	if the player is in Dungeon35 and a random lake monster is not in the location of the player, decide yes;
	if the player is in Woods05, decide yes;
	decide no.

[
Pee Reaction Numbers:
0: Non-humiliating urination into toilet or body of water
1: Urination onto ground
2: Urination into diaper
3: Urination into other clothing
]

[!<SayPeeReaction0>+

REQUIRES COMMENTING

+!]
To say PeeReaction (N - 0):
	let M be a random intelligent awake monster in the location of the player;
	if M is monster:
		say ToiletPeeDeclaration of M;
		humiliate 100;
	otherwise:
		say "You sigh pleasantly, and now feel much more comfortable.".

To say ToiletPeeDeclaration of (M - a monster):
	say "[if the humiliation of the player < 22500]You squirm uncomfortably, not used to anyone watching you, never mind the [M].[otherwise]You hang your head submissively, not looking the [M] in the eyes.[end if]";
	say ToiletPeeReaction of M.

[!<SayToiletPeeReactionOfMonster>+

REQUIRES COMMENTING

+!]
To say ToiletPeeReaction of (M - a monster):
	say "The [M] frowns with distaste.  [speech style of M]'[one of]Disgusting[or]Gross[or]Ugh[in random order]!  [one of][if M is interested]You couldn't wait until we had parted ways[otherwise]I can't believe you'd do that with me standing here... Did you think I was deaf or something[end if][or]Do you enjoy peeing in front of [if M is buddy]friends[otherwise]strangers[end if] or something[or]I'm standing right here, and you just start going to the toilet like that[in random order]?!'[roman type][line break]";
	FavourDown M.

[!<SayPeeReaction1>+

REQUIRES COMMENTING

+!]
To say PeeReaction (N - 1):
	let M be a random monster penetrating a body part;
	if M is monster:
		if M is intelligent or the number of intelligent awake monsters in the location of the player is 0:
			say GroundPeeSexDeclaration of M;
		otherwise:
			let M2 be a random intelligent awake monster in the location of the player;
			say GroundPeeSexDeclaration of M2;
		humiliate 300;
	otherwise:
		now M is a random intelligent awake monster in the location of the player;
		if delayed urination is 0: [Purposeful urination]
			if M is monster:
				say GroundPeeDeclaration of M;
				humiliate 100;
			otherwise if the player is in the Woods:
				say "You sigh pleasantly, and now feel much more comfortable.  ";
			otherwise:
				say "[variable custom style][if the humiliation of the player < 15000 and the player is in the Dungeon]How embarrassing!  I need to find a toilet next time.[otherwise][one of]This isn't even the most humiliating thing I've been through today.[or]Ahh, sweet release.[stopping][end if][roman type][line break]";
		otherwise: [Accidental urination]
			if M is monster:
				say GroundPeeDeclaration of M;
				humiliate 200;
			otherwise if M is in the Woods:
				say "You sigh pleasantly, and now feel much more comfortable.  ";
			otherwise:
				say "[variable custom style][if the humiliation of the player < 15000 and the player is in the Dungeon]How embarrassing!  I need to find a toilet next time.[otherwise][one of]This isn't even the most humiliating thing I've been through today.[or]Ahh, sweet release.[stopping][end if][roman type][line break]";
				humiliate 50;
	humiliate 100;
	if target-poster is a poster:
		now old-monster of target-poster is M;
		now old-peereaction of target-poster is N.

[!<SayGroundPeeDeclarationOfMonster>+

REQUIRES COMMENTING

+!]
To say GroundPeeDeclaration of (M - a monster):
	if delayed urination is 0: [Voluntary urination]
		say "[if the humiliation of the player < 27500]You shudder in shame as you allow the [M] to watch you.[otherwise]You hang your head submissively, not looking the [M] in the eyes.[end if]";
	otherwise: [Accidental urination]
		if the humiliation of the player < 27500, say "[if the player is able to speak][variable custom style]'Eek!  Don't watch!'[roman type]  [end if]You stay still like a deer in headlights as the [M] watches you pee.";
		otherwise say "You shudder[if the humiliation of the player < 40000], finding that the humiliation of the [M] seeing you lose control is actually turning you on[otherwise] with a weird mixture of shame and pleasure[end if].";
	say GroundPeeReaction of M.

[!<SayGroundPeeReactionOfMonster>+

REQUIRES COMMENTING

+!]	
To say GroundPeeReaction of (M - a monster):
	if M is intelligent:
		say "[speech style of M]'[one of]Gross[or]Disgusting[or]Ugh[in random order].  [if diaper quest is 1][one of]Are you sure you don't need diapers?!'[or]This wouldn't happen if you were kept in diapers, you know.'[or]Do your parents know that you still pee on the floor?!'[in random order][otherwise][one of]Can't you find a toilet to do that?!'[or]Next time use a toilet, you tramp!'[or]How shameless do you have to be to urinate on the floor in front of others?!'[in random order][end if][roman type][line break]";
		FavourDown M.

[!<SayGroundPeeSexDeclarationOfMonster>+

REQUIRES COMMENTING

+!]
To say GroundPeeSexDeclaration of (M - a monster):
	if the humiliation of the player < 27500, say "[if the player is able to speak][variable custom style]'Oh god, not now!'[roman type]  [end if]You are brought to tears in shame as you are forced to let go right in front of the [M].";
	otherwise say "[BrokenPeeFlav during sex with M]";
	say GroundPeeSexReaction of M.

[!<SayGroundPeeSexReactionOfMonster>+

REQUIRES COMMENTING

+!]
To say GroundPeeSexReaction of (M - a monster):
	say GroundPeeReaction of M.

[!<SayPeeRection2>+

REQUIRES COMMENTING

+!]
To say PeeReaction (N - 2):
	let M be a random intelligent awake monster in the location of the player;
	let D be a random worn diaper;
	if M is a monster:
		say DiaperDeclaration of M;
	otherwise if delayed urination is 0:
		say "[if the diaper addiction of the player < 7][first custom style][one of]I guess if I'm wearing it, I might as well use it.[or]This isn't sexy, but I guess it's practical.[or]I will not be telling my friends this part of the story when I get home.[in random order][otherwise if the diaper addiction of the player < 12]You put your hands on the front of the diaper so that you can feel the warmth spread outwards.  [variable custom style][one of]Why does it feel so good?[or]The warmth is really nice against my skin...[or]Diapers are pretty cool, I guess.[or]That was so much easier than having to find a loo![in random order][otherwise]As you pee, your eyes roll to the back of your head in pleasure.  [second custom style][one of]I love my diaper so much![or]It feels so good![or]I'm such a good girl![or]Mmmmm, yes!!![in random order][end if][roman type][line break]";
	otherwise:
		say "[if the diaper addiction of the player < 7][first custom style][one of]Oh shit!  Well I guess I'm glad I was wearing this thing.[or]This isn't sexy!  But, I guess it is necessary, evidently...[or]Crap!  I guess I really do need diapers right now.[in random order][otherwise if the diaper addiction of the player < 12][variable custom style][one of]This diaper is coming in really useful![or]I could get used to this feeling.[or]I don't even need to pay attention to my bladder![or]That was so much easier than having to find a loo![in random order][otherwise][second custom style][one of]*giggle*, that was fun![or]Again again![or]I hardly felt that one.  Maybe soon I won't feel myself going at all![or]Ooh I just LOVE that feeling![in random order][end if][roman type][line break]";
	if target-poster is a poster:
		now old-monster of target-poster is M;
		now old-peereaction of target-poster is N.

To say DiaperDeclaration of (M - a monster):
	if the humiliation of the player < 20000:
		say "You [if delayed urination is 1]freeze in place and [end if]try as hard as possible to act casual, to prevent the [M] from knowing what you are doing.  But you feel extremely paranoid that [he of M] knows anyway.[if the diaper addiction of the player < 7][first custom style][one of]Next time, I'm NOT going this in front of anyone!  It's way too scary.[or]Am I making any noise? Eek![or]Am I standing weirdly?[in random order][otherwise][variable custom style][one of]I'm a diaper ninja![or]This is intense, but fun.[or]I wonder what I'd say if I got caught?[in random order][end if][roman type][line break]";
	otherwise if the humiliation of the player < 31000:
		say "You [if delayed urination is 1]freeze in place and [end if]try to act casual, but you can't help but stare at the [M] coyly, tempting fate to get you caught.[if the diaper addiction of the player < 9][first custom style][one of]What am I doing?![or]Why can't I stop myself?![or]Oh my god, I need to get myself under control![in random order][otherwise][variable custom style][one of]I'm a diaper ninja![or]Come on, say something![or]Next time, I'm going to make it even more obvious![in random order][end if][roman type][line break]";
	otherwise:
		say "You stare directly at the [M].  [variable custom style]'[one of][if the intelligence of the player < 6][NameBimbo] is going tinkles!'[otherwise]Can you guess what I'm doing right now?'[end if][or]Please watch me as I pee in my diaper!'[or]Are you watching me wet myself?'[or]I'm peeing right now, and it feels so good!'[in random order][roman type][line break]";
	if diaper-reaction-said is 0, say "[DiaperReaction of M]".

[!<SayPeeReaction3>+

REQUIRES COMMENTING

+!]
To say PeeReaction (N - 3):
	let M be a random monster penetrating a body part;
	let K be a random worn bottom level pee protection clothing;
	if M is monster:
		if the humiliation of the player < 27500, say "[if the player is able to speak][variable custom style]'Oh god, not now!'[roman type]  [end if]You are brought to tears in shame as you are forced to let go into your [K] right in front of the [M].";
		otherwise say "[BrokenPeeFlav during sex with M]";
		humiliate 300;
	otherwise:
		now M is a random intelligent awake monster in the location of the player;
		if delayed urination is 0: [Purposeful urination]
			if M is monster:
				say ClothesPeeDeclaration of M;
				humiliate 200;
			otherwise:
				unless K is WC plug panties, say "[one of][variable custom style]Yuck.[or][variable custom style]Eww![or][if the bimbo of the player > 9][second custom style]Uh-oh, I'm a bad girl![otherwise][first custom style]Err, whoops.[end if][purely at random][roman type][line break]";
		otherwise: [Accidental urination]
			if M is monster:
				say ClothesPeeDeclaration of M;
				humiliate 300;
			otherwise:
				unless K is WC plug panties, say "[one of][variable custom style]Err, whoops![or][if the flat intelligence of the player < 6][second custom style]Uh-oh, I had a little accident![otherwise][first custom style]I can't believe I just let that happen...[end if][or][variable custom style]I guess I should try and find a toilet next time...[purely at random][roman type][line break]";
				humiliate 150;
	humiliate 275;
	if target-poster is a poster:
		now old-monster of target-poster is M;
		now old-peereaction of target-poster is N.

[!<SayClothesPeeDeclarationOfMonster>+

REQUIRES COMMENTING

+!]
To say ClothesPeeDeclaration of (M - a monster):
	if delayed urination is 0: [Voluntary urination]
		say "[if the humiliation of the player < 30000]You shudder in shame as you allow the [M] to watch you.[otherwise]You hang your head submissively, not looking the [M] in the eyes.[end if]";
	otherwise:  [Accidental urination]
		if the humiliation of the player < 30000, say "[if the player is able to speak][variable custom style]'Eek!  Don't watch!'[roman type]  [end if]You stay still like a deer in headlights as the [M] watches you wet yourself.";
		otherwise say "[BrokenPeeFlav during sex with M]";
	say ClothesPeeReaction of M.

[!<SayClothesPeeReactionOfMonster>+

REQUIRES COMMENTING

+!]
To say ClothesPeeReaction of (M - a monster):
	if diaper quest is 1:
		if M is friendly:
			say "The [M] frowns.  [speech style of M]'What are you doing?!  It looks to me like you need diapers, little girl.  I am very unimpressed.'[roman type][line break]";
			FavourDown M by 2;
			if M is unfriendly, say "[speech style of M]'Yes in fact, I think you need training.  [if the player is upright]Get on your knees[otherwise]Stay right where you are[end if], baby!'[roman type][line break]";
		otherwise:
			say "The [M] frowns angrily.  [speech style of M]'This is why you need to be in diapers!'[roman type][line break][if M is uninterested]Uh-oh...";
			now M is interested;
	otherwise:
		if M is interested, say "The [M] frowns, but doesn't say anything.";
		otherwise say "The [M] doesn't look at you directly or say anything, so it's hard to gauge [his of M] reaction.".

[!<SayDiaperReactionOfMonster>+

REQUIRES COMMENTING

+!]
To say DiaperReaction of (M - a monster):
	if M is interested, say "The [M] seems to give you an odd look, but doesn't say anything.  [if the humiliation of the player < 31000]Maybe [he of M] didn't notice?[otherwise][variable custom style]I'm such a good girl![roman type][line break][end if]";
	otherwise say "The [M] doesn't look at you directly or say anything, so it's hard to gauge [if the humiliation of the player < 31000]if [he of M] saw[otherwise][his of M] reaction[end if].".

[!<SayBrokenPeeFlavDuringSexWithMonster>+

REQUIRES COMMENTING

+!]
To say BrokenPeeFlav during sex with (M - a monster):
	say "You shudder[if the humiliation of the player < 40000], finding that the humiliation of the [M] seeing you lose control is actually turning you on[otherwise] with a weird mixture of shame and pleasure[end if].".


Urinating ends here.
