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

[!<overflowed:Integer>*

We may need to flag that the thing that was collecting the player's pee overflowed, in order to trigger the correct NPC reaction.

*!]
overflowed is a number that varies.

[!<Clothing>@<temporarilyDisplaced:Boolean>*

REQUIRES COMMENTING

*!]
Clothing can be temporarily-displaced.

[!<toilet:Backdrop>*

REQUIRES COMMENTING

*!]
toilet is a backdrop. Understand "urinal", "urinals", "potty", "throne" as toilet. The text-shortcut of a toilet is "toilet". Figure of toilet is the file "Env/MultiFloor/toilet1.png". Figure of human toilet is the file "Env/MultiFloor/toilet2.png". Figure of urinal is the file "Env/MultiFloor/urinal1.png". Figure of throne potty is the file "Env/Dungeon/throne2.png".

To say ExamineDesc of (T - toilet):
	say "A toilet[if watersports mechanics is 1]. You can [bold type]use[roman type] this to relieve yourself[end if].".

To decide which figure-name is the examine-image of (T - toilet):
	if the player is in the location of ex-princess and ex-princess is caged, decide on examine-image of ex-princess;
	if the player is in Hotel38 and watersports fetish is 1 and diaper quest is 0 and the human-toilet-scene of woman-barbara is not 1, decide on figure of human toilet;
	if the location of the player is urinals and watersports fetish is 1, decide on figure of urinal;
	decide on figure of toilet.

This is the toilet gets focused rule:
	if watersports mechanics is 1 and (the location of the player is urinals or the location of the player is toilets) and the the player is not in Dungeon11 and (ex-princess is not in the location of the player or ex-princess is not caged), focus-consider toilet.
The toilet gets focused rule is listed in the focus finding rules.

To construct normal buttons for (T - toilet):
	if ButtonTableFull is 0 and watersports mechanics is 1 and the player is not incontinent:
		choose a blank row in the Table of Buttons;
		now the ButtonImage entry is Figure of ToiletButton;
		now the ButtonCommand entry is "use toilet";
		now the ButtonColour entry is lightModeFullGreen;
		if the player is prone, now the ButtonColour entry is lightModeFullYellow; [turn yellow - player needs to stand]
	if ButtonTableFull is 0 and the human-toilet-scene of woman-barbara > 1 and there is a held unlock-key and the player is in Hotel38:
		choose a blank row in the Table of Buttons;
		now the ButtonImage entry is the examine-image of a random held unlock-key;
		now the ButtonCommand entry is "unlock toilet";
		now the ButtonColour entry is lightModeFullGreen;
	repeat with E running through held eggs:
		if ButtonTableFull is 0 and the location of the player is toilets:
			choose a blank row in the Table of Buttons;
			now the ButtonImage entry is the examine-image of E;
			now the ButtonCommand entry is "drop [text-shortcut of E]";
			now the ButtonColour entry is lightModeFullGreen;
			if the player is immobile, now the ButtonColour entry is lightModeFullRed.


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
	if the bladder of the player is 0 and the number of worn prostate massager plugs is 0 and (the player is not able to use a toilet or (the total squirtable fill of belly <= 0 and the player is not full)):
		if delayed urination is not 1, say "You don't feel the need." instead;
		if debugmode is 1, say "resetting accidental urination flag.";
		now delayed urination is 0; [We've accidentally forced the player to pee when they can't, oops! Oh well, let's not break the game.]
		say "[one of]Player was forced to urinate when they had nothing in their bladder, please report the bug to Aika![or][stopping]";
 		do nothing instead;
	[if diaper lover is 0 and (the player is not bursting or the bladder of the player is 0):
		if delayed urination is 0, say "You don't feel the need." instead;
		do nothing instead;]
	if the player is incontinent and delayed urination is not 1, say "You are fully incontinent; you can't control this at all any more! Pushing just does nothing." instead;
	if the latex-transformation of the player > 4, say "[if delayed urination is 0]You can't pee, you're a sex doll![end if]" instead;
	[if the player is not bursting and delayed urination is 0, say "You don't feel the need." instead;]
	if delayed urination is 0 and the player is pee protected:
		if the player is not able to use a toilet and the player is not able to use a urinal:
			let P be a random bottom level pee protection clothing;
			if there is pee covering undisplacable unzippable clothing or (there is a worn diaper and the diaper addiction of the player >= 3):
				if P is pants pee refusal inducing and debugmode is 0, do nothing instead;
				if P is not diaper or the diaper addiction of the player < 3:
					say "Do you really want to try to pee inside your [printed name of P]? ";
					if the player is bimbo consenting, say "";
					otherwise say "Then you should probably get it out of the way first." instead;
			otherwise if P is clothing:
				say "Do you want to get your clothes out of the way first? ";
				if the player is bimbo consenting:
					repeat with C running through worn pee covering clothing:
						if C is crotch-zipped:
							say "You unzip your [ShortDesc of C].";
							ZipDown C;
							now C is temporarily-displaced;
						otherwise if C is displacable:
							say "You pull your [ShortDesc of C] out of the way.";
							now C is crotch-displaced;
							now C is temporarily-displaced;
						allocate 2 seconds;
				otherwise:
					if P is pants pee refusal inducing and debugmode is 0, do nothing instead;
	if the player is prone and the location of the player is bathroom and delayed urination is 0:
		say "Do you really want to try to pee [if the player is pee protected]your pants[otherwise]on the floor here[end if], while kneeling? ";
		if the player is bimbo consenting:
			if (the delicateness of the player < 4 or (the humiliation of the player < HUMILIATION-MODEST + 3000 and there is an intelligent monster in the location of the player)):
				if debugmode > 0, say "If debugmode was disabled, the player would refuse to pee.";
				otherwise say "[first custom style]I'm NOT peeing on the floor[if there is an intelligent monster in the location of the player and the delicateness of the player >= 4] in front of the [random intelligent monster in the location of the player][line break][first custom style].[roman type][line break]" instead;
		otherwise:
			say "Then you should probably stand up first." instead;
	if a random lake monster is in the location of the player and the bimbo of the player < 14 and delayed urination is 0:
		say "Do you really want to try to pee on the floor here? ";
		if the player is bimbo consenting:
			if (the delicateness of the player < 4) or (the humiliation of the player < HUMILIATION-MODEST + 3000 and there is an intelligent awake monster in the location of the player):
				if debugmode > 0, say "If debugmode was disabled, the player would refuse to pee.";
				otherwise say "[first custom style]I'm NOT peeing on the floor[if there is an intelligent monster in the location of the player and the delicateness of the player >= 4] in front of the [random intelligent awake monster in the location of the player][line break][first custom style].[roman type][line break]" instead;
		otherwise:
			say "Then you should probably go elsewhere, you don't dare go near the lake with the tentacle monster still lurking in these waters." instead;
	if the bladder of the player < 4 and (the player is not full or asshole is actually occupied) and delayed urination is not 1:
		if the player is full and asshole is actually occupied and diaper messing >= 4, say "You can't go number two because of the [random thing penetrating asshole].";
		allocate 6 seconds;
		say "You try to pee, but nothing comes out!" instead.

[!<AClothingIsPantsPeeRefusalInducing>+

REQUIRES COMMENTING

+!]
Definition: a clothing (called P) is pants pee refusal inducing:
	if the urine-soak of P <= 0 and P is not diaper and (the delicateness of the player < 6 or (the humiliation of the player < HUMILIATION-DISGRACED + 1000 and there is an intelligent monster in the location of the player)) and (diaper quest is 0 or there is an intelligent monster in the location of the player):
		if debugmode > 0, say "If debugmode was disabled, the player would refuse to pee.";
		otherwise say "[first custom style]I'm NOT peeing my pants[if there is an intelligent monster in the location of the player and the delicateness of the player >= 6] in front of the [random intelligent monster in the location of the player][line break][first custom style][end if].[roman type][line break]";
		decide yes;
	decide no.
[In DQ players will always pee their pants just not in front of people. This is to make sure that the 'never wet myself involuntarily' bonus is always attainable.]

toiletJustUsed is initially false. [Used in the DQ ultimate lesson.]

[!<ComputeToiletUse>+

REQUIRES COMMENTING

+!]
To compute toilet use:
	if there is displacable pee covering clothing or the player is able to use the toilet past their diaper, say "Pulling the crotch fabric of your [ShortDesc of random displacable pee covering clothing] to one side, you ";
	otherwise say "You ";
	say "sit on the [if the player is in Dungeon11]training potty throne[otherwise]nearby toilet[end if] [if the player is in Hotel38 and the human-toilet-scene of woman-barbara is 2]above [NameDesc of woman-barbara][']s ring-gagged face [end if]and release your hold on your bladder.";
	if (rectum > 3 or the total squirtable fill of belly > 0 or suppository > 0) and asshole is not actually occupied:
		if the player is in Hotel38 and the human-toilet-scene of woman-barbara is 2:
			say "With an embarrassing sound, you evacuate your bowels too, kind of cream-pie-ing [him of woman-barbara]. [if the bimbo of the player < 10][one of]You blush at the thought [he of woman-barbara]'ll know how you've been used back there.[or]Once again you've sort of creampied [him of woman-barbara].[or][variable custom style]I hope [he of woman-barbara] doesn't think my ass is always filled with [BellyContentsAlone]![roman type][line break][or][variable custom style]Why does this keep happening?[roman type][line break][or][variable custom style][big he of woman-barbara] must think I'm such an anal slut![roman type][line break][or]Again.[stopping][otherwise if the humiliation of the player > 20]You have a vague feeling this might have once embarrassed you, but, really, it's kinda hot.[otherwise]You bite your lip, wondering if [he of woman-barbara] appreciates how hard you worked to get that![end if]"; [Mainly added so we can feel Barbara's not eating poo. Eww.]
		otherwise:
			say "With an embarrassing sound, you evacuate your bowels too. ";
		if the large egg count of belly > 0:
			let X be the large egg count of belly;
			say "Your [asshole] is stretched obscenely by the giant egg[if X > 1]s[end if]!";
			let E be a random large egg;
			now E is penetrating asshole; [For size calculations]
			ruin asshole times X;
			now E is not penetrating asshole;
		otherwise if the medium egg count of belly > 0:
			let X be the medium egg count of belly;
			say "Your [asshole] is stretched wide by the uncomfortably large egg[if X > 1]s[end if]!";
			let E be a random medium egg;
			now E is penetrating asshole; [For size calculations]
			ruin asshole times X;
			now E is not penetrating asshole;
		otherwise if the small egg count of belly > 0:
			let X be the small egg count of belly;
			let E be a random small egg;
			say "Your [asshole] is stimulated as the [ShortDesc of E][if X > 1]s come[otherwise] comes[end if] popping out!";
			now E is penetrating asshole; [For size calculations]
			ruin asshole times X;
			now E is not penetrating asshole;
		say "[if the diaper addiction of the player < 10 and the bimbo of the player < 10][line break][variable custom style]Well I'm glad that's taken care of.[roman type][line break][otherwise][line break][end if]";
		reset rectum;
		empty belly;
	now the bladder of the player is 0;
	if there is intelligent monster in the location of the player:
		repeat with M running through intelligent monsters in the location of the player:
			compute toilet reaction of M;
	otherwise:
		dignify 350;
	if incontinence > 0:
		decrease incontinence by 1;
		say "You feel as if you've regained some control over your bladder[if diaper messing >= 3] and bowels[end if]!";
	if the player is in Dungeon11:
		let R be a random number from 1 to 5;
		let D be a random off-stage eligible disposable diaper;
		if D is nothing, now D is a random eligible diaper;
		if R is 1 and the player is not diapered:
			repeat with K running through worn knickers:
				only destroy K;
			summon D cursed;
			say "As you finish your business, you suddenly feel a burst of energy and blinding light from the seat of the potty. Before you can even react, you find a [ShortDesc of D] wrapped around your waist! Feeling the waistband, you confirm your suspicion: it's cursed![line break][variable custom style][if the diaper addiction of the player < 11]But I just proved I can use the [otherwise]I got to go like a grown-up AND I got fresh protection! Thanks, [end if]potty![roman type][line break]";
		otherwise if R is 2:
			say "As you finish your business, you suddenly feel a burst of energy rush from the seat of the potty to your head. ";
			let H be a random off-stage rubber-baby-bonnet;
			if H is actually summonable:
				say "Before you know it, your head is surrounded by soft silky fabric. You're now wearing a large pink baby's bonnet!";
				summon H cursed;
			otherwise if no-panties-fetish is 0:
				now no-panties permanent fetish is 1;
				say "Your mind suddenly clouds for a second... As you shake it off, you suddenly feel a strange aversion to wearing underwear thinner than diapers!";
			otherwise:
				DiaperAddictUp 1;
				say "Your mind suddenly clouds for a second... As you shake it off, you suddenly feel more comfortable wearing and using diapers!";
		otherwise if R is 3 and incontinence > 0:
			decrease incontinence by 1;
			say "You suddenly feel a rush of energy from the throne to your crotch. It seems the training potty has helped you regain even more control over your bladder[if diaper messing >= 3] and bowels[end if]!";
		otherwise if (R is 3 or R is 4) and the diaper addiction of the player > 0:
			SilentlyDiaperAddictDown 1;
			say "You suddenly feel a rush of energy to your head, and your mind suddenly feels a little clearer. It seems the training potty has helped reduce your addiction to wearing and using diapers!";
		otherwise:
			let C be a random off-stage eligible disposable diaper;
			if incontinence > 8:
				now C is a random off-stage plentiful massive diaper;
			otherwise if incontinence > 7:
				now C is a random off-stage plentiful huge diaper;
			otherwise if incontinence > 5:
				now C is a random off-stage plentiful large diaper;
			otherwise if incontinence > 2:
				now C is a random off-stage plentiful medium diaper;
			otherwise if incontinence > 0:
				now C is a random off-stage training pants;
			otherwise:
				now C is a random off-stage plentiful fetish appropriate undies;
			if C is nothing, now C is a random off-stage eligible diaper;
			if C is diaper:
				now C is blessed;
				say "Suddenly a bright light flashes from the potty throne. When your vision is restored, you see a [ShortDesc of C] on the floor in front of you.[line break][variable custom style]Maybe this is [if the player is diapered]my reward for being properly diapered[otherwise]what the throne thinks I should be wearing?[end if][roman type][line break]";
				now C is in the location of the player;
				compute autotaking C;
	progress quest of careful-peeing-quest;
	check barbara toilet;
	now toiletJustUsed is true.

[!<ComputeUrinalUse>+

REQUIRES COMMENTING

+!]
To compute urinal use:
	if there is displacable pee covering clothing, say "Pulling the crotch fabric of your [ShortDesc of random displacable pee covering clothing] to one side, you ";
	otherwise say "You ";
	say "[if the size of penis > 0]walk up to[otherwise]squat in front of[end if] the urinal and release your hold on your bladder.";
	now the bladder of the player is 0;
	repeat with M running through reactive monsters:
		compute toilet reaction of M;
	if incontinence > 0:
		decrease incontinence by 1;
		say "You feel as if you've regained some control over your bladder[if diaper messing >= 3] and bowels[end if]!";
	progress quest of careful-peeing-quest.

[!<ComputeToiletReactionOfMonster>+

REQUIRES COMMENTING

+!]
To compute toilet reaction of (M - a monster):
	humiliate STRONG-HUMILIATION;
	say "[ToiletReactionFlav of M]".

[!<SayToiletReactionFlavOfMonster>+

REQUIRES COMMENTING

+!]
To say ToiletReactionFlav of (M - a monster):
	if M is friendly, say "[BigNameDesc of M] politely looks away.";
	otherwise say "[BigNameDesc of M] stares at you, frowning.".

[!<CarryOutUrinating>+

REQUIRES COMMENTING

+!]
Carry out urinating:
	start urination.

[!<StartUrination>+

REQUIRES COMMENTING

+!]
To start urination:
	if seconds is 0, allocate 6 seconds;
	now player-urinating is 1;
	now overflowed is 0;
	if pee-bottling is 1: [We are automatically urinating so we set delayed urination to 1 to make sure we skipped the check functions. But we don't want to tell the player that the urination was involuntary because that's not actually true.]
		now pee-bottling is 0;
		if debugmode is 1, say "resetting accidental urination flag.";
		now delayed urination is 0;
	if (there is a camera trap in the location of the player and refactoryperiod < 3) or there is a camera-bystander in the location of the player, now target-poster is a random off-stage wetting poster;
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
			say "You [if the size of penis > 0 and the player is upright]walk up to the edge and [urinate] into the water[otherwise]walk past the edge, wading into the water until you can discreetly [urinate][end if]. ";
			if incontinence > 0:
				decrease incontinence by 1;
				say "You feel as if you've regained some control over your bladder!";
			progress quest of careful-peeing-quest;
			say "[PeeReaction 0]";
		otherwise if resting is 1 and there is a hotel bed in the location of the player:
			say "You [if delayed urination is 1]involuntarily [end if]release your hold on your bladder. Your [urine] soaks into the sheets and mattress.";
			now a random hotel bed in the location of the player is soggy;
			say "[PeeReaction 1]";
		otherwise if gloryhole is grabbing the player and gloryhole is blowjob portal:
			say "[if the urine taste addiction of the player > 11 and delayed urination is not 1]With an eager grin you[otherwise]You[end if] [if delayed urination is 1]involuntarily [end if]release your hold on your bladder. Your [urine] goes straight into your own mouth at full force!";
			UrineTasteAddictUp 1;
			StomachUp 3;
		otherwise if gloryhole is grabbing the player and gloryhole is normal glory hole:
			say "You [if delayed urination is 1]involuntarily [end if]release your hold on your bladder. You are [one of][or]UN[stopping]surprised to find that your new anonymous oral servant doesn't pull away!";
		otherwise:
			say "You [if delayed urination is 1]involuntarily [end if]release your hold on your bladder. Your [urine] [if the player is female and the player is dildo stuck]trickles around the dildo and down your thighs.[otherwise if playerRegion is Dungeon]flows to the ground, creating a puddle on the floor.[otherwise]flows to the ground.[end if]";
			say "[PeeReaction 1]";
			if the bladder of the player > 6:
				UrinePuddleUp 6;
			otherwise:
				UrinePuddleUp the bladder of the player;
				check piss maidification;
	otherwise:
		say "You [if delayed urination is 1]involuntarily [end if]release your hold on your bladder. ";
		compute pee protected urination;
		let K be a random worn bottom level pee protection clothing;
		if K is diaper and the player is in the location of dungeon altar:
			if diaper quest is 1:
				if the class of the player is priestess:
					repeat with S running through worn potentially at least partially asshole covering displacable clothing:
						if S is not K:
							say "A holy glow surrounds your [ShortDesc of S] as it [if S is skirted]billows upwards[otherwise]falls down[end if], exposing the rapidly yellowing diaper underneath!";
							displace S;
				progress quest of altar-sex-quest;
			if the class of the player is priestess and K is currently visible:
				let M be a random uninterested willing to change diapers intelligent undefeated monster in the dungeon;
				if M is monster:
					now M is in the location of the player;
					now M is interested;
					say "[BigNameDesc of M] walks into the altar room![line break][speech style of M]'Blessed sister, I am here for my prayer... oh.'[roman type][line break]";
					FavourDown M by 3 with consequences;
		if K is diaper and K is total protection and overflowed is 0, say "[PeeReaction 2]";
		otherwise say "[PeeReaction 3]";
	[Process punishments for involuntary wetting]
	if diaper lover >= 1 and delayed urination is 1, increase incontinence by 1;
	if delayed urination is 1:
		now wetting-valued is -1;
		if diaper bonus > 0, compute wetting failure;
		progress quest of adult-baby-quest;
		progress quest of bursting-quest;
	otherwise if wetting-valued >= 0 and wetting-valued <= 2 and diaper lover >= 1:
		increase wetting-valued by 1;
		if wetting-valued is 3, diaperreward;
	if delayed urination is 0 and diaper lover >= 1:
		if there is a worn total protection diaper and a random number between 7 and 12 >= the diaper addiction of the player:
			if diaper quest is 0, DiaperAddictUp 1;
		otherwise if the number of worn diapers is 0 and a random number between 7 and 12 <= the diaper addiction of the player:
			DiaperAddictDown 1;
	[Check if we need to continue urination]
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
		say "Your plug panties [one of]seem to somehow absorb the [urine], and also vibrate powerfully in response! [or]absorb the [urine], vibrating powerfully as they do. [stopping]";
		say "[one of][WCPantiesVibeFlav][or][or][cycling]";
		if the player is female, stimulate vagina;
		otherwise stimulate asshole;
	otherwise if quiz-partner is worn:
		compute quiz partner messing;
	otherwise:
		let K be a random worn bottom level soakable pee protection clothing;
		let oldSoak be 99;
		unless K is nothing, let oldSoak be the urine-soak of K;
		let N be 6;
		if the bladder of the player < 6, now N is the bladder of the player;
		if the bladder of the player > 12 and K is clothing and the bladder of the player >= the soak-limit of K, now N is the soak-limit of K - the total-soak of K; [Fill up the underwear in one turn if this is going to take forever]
		if K is portal-pants:
			say "Your [urine] flows out of your [genitals][run paragraph on]";
			Squirt urine on K by N;
		otherwise:
			let flav-said be 0;
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
					UrineSoakUp K by 1;
					if K is diaper and there is a worn I love my wet nappies T-shirt and the diaper addiction of the player > 10, appropriate-cutscene-display figure of wet nappies diaper cutscene 1;
					if K is cursed diaper and the location of the player is toilets, appropriate-cutscene-display figure of toilet diaper cutscene 1;
					if K is diaper and the location of the player is UrinalBlindfolded and the class of the player is human toilet, appropriate-cutscene-display figure of human toilet diaper cutscene 1;
					let sK be a random worn bottom level soakable pee protection clothing;
					if K is not sK and X < N:
						say urinationoverflow of K;
						now overflowed is 1;
						if diaper lover >= 1:
							let H be a random off-stage victorian-baby-bonnet;
							if H is actually summonable:
								say "[bold type]As your [ShortDesc of K] overflows, you feel your head suddenly surrounded by soft silky fabric. You're now wearing a large pink baby's bonnet!";
								summon H cursed;
						now K is sK;
				now flav-said is 1;
		if oldSoak is 0 and K is worn diaper and the urine-soak of K > 0:
			if royal scepter is worn:
				say "Your [royal scepter] shines brightly! It feels like it has gained some power that will decay over time.";
				now the charge of royal scepter is 25;
			otherwise if the class of the player is princess and royal scepter is actually summonable:
				summon royal scepter;
				say "[bold type]Suddenly a [MediumDesc of royal scepter] appears in your hand! The sphere at the top shines brightly! It feels like it has some magic power that will decay over time.[roman type][line break]".


[!<ComputeUrination>+

REQUIRES COMMENTING

+!]
To compute urination:
	if (there is a camera trap in the location of the player and refactoryperiod < 3) or there is a camera-bystander in the location of the player, now target-poster is a random off-stage wetting poster;
	otherwise now target-poster is nothing;
	if seconds is 0, allocate 6 seconds;
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
			say "You continue to pee into the water. ";
		otherwise if gloryhole is grabbing the player and gloryhole is blowjob portal:
			UrineTasteAddictUp 1;
			StomachUp 3;
		otherwise if gloryhole is grabbing the player and gloryhole is normal glory hole:
			do nothing;
		otherwise:
			say "Your [urine] continues to [if the player is female and the player is dildo stuck]trickle around the dildo and down your thighs.[otherwise if playerRegion is Dungeon]flow to the ground, creating a puddle on the floor.[otherwise]flows to the ground.[end if]";
			if the bladder of the player > 6:
				UrinePuddleUp 6;
			otherwise:
				UrinePuddleUp the bladder of the player;
				check piss maidification;
	otherwise:
		let old-overflow be overflowed;
		compute pee protected urination;
		if old-overflow is 0 and overflowed is 1, say "[PeeReaction 3]"; [Player began to leak, NPCs will be unimpressed]
		let K be a random worn bottom level pee protection clothing;
		if K is not diaper and diaper lover >= 1 and the bladder of the player <= 6:
			let N be a random off-stage unique nightie;
			if N is actually summonable and a random number between 1 and 6 - (unlucky * 4) is 1:
				summon N cursed;
				now N is bed wetting;
				compute quest of N;
				say "[bold type]As you finish peeing, a flimsy [ShortDesc of N] shimmers into existence around you![roman type][line break][variable custom style]Because I wet myself?[roman type][line break]";
	if the diaper addiction of the player >= 14 and there is a worn total protection diaper:
		let DA be the delayed arousal of the player;
		passively stimulate vagina;
		if DA < the delayed arousal of the player, say "Your arousal grows.";
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
	force clothing-focus redraw; [This forces the clothing window to redraw]
	if target-poster is a wetting poster:
		if the old-peereaction of target-poster > 0:
			let Y be a random camera trap in the location of the player;
			if Y is not a thing, now Y is a random camera-bystander in the location of the player;
			say "[FlashFlav of Y]";
			if Y is camera trap, say "It was in a perfect position to capture a full shot of you peeing.";
			say "[one of][line break][variable custom style][if the humiliation of the player < HUMILIATION-SHAMELESS - 1000]Oh no! No no no! Not one of me peeing! Fuck.[otherwise]Now everyone will know what a pervert I am.[end if][or][if the bimbo of the player < 14][variable custom style]Again?![otherwise][line break][second custom style]I bet that pic looks FILTHY![end if][stopping][roman type][line break]";
			set up target-poster;
	let T be a random worn I love my wet nappies T-shirt;
	if T is clothing and diaper lover >= 1:
		let D be a random eligible diaper;
		if there is a worn diaper:
			if T is cursed and the urine-soak of a random worn diaper is 0 or the urine-soak of a random worn diaper is the soak-limit of a random worn diaper:
				say "[bold type]Your [ShortDesc of T] [bold type]seems to uncurse itself. [line break][variable custom style]I guess I'm finally allowed to change my diaper?[roman type][line break]";
				bless T;
			otherwise if T is not cursed:
				say "[bold type]Your [ShortDesc of T] [bold type]seems to curse itself - it seems very eager to stay on your body right now![roman type][line break]";
				now T is cursed;
		otherwise if D is actually summonable and the player is not able to use a body of water: [Don't want it getting summoned and therefore the player somehow hasn't actually entered the body of water!]
			say "[bold type]Your [ShortDesc of T] [bold type]summons a diaper onto your crotch! It doesn't seem happy that you weren't wearing one when you peed...[roman type][line break]";
			summon D cursed with quest;
	if resting is 1 and diaper lover >= 1:
		if there is a worn tattoo and bed-wetter tattoo is not worn and a random number between 1 and 2 is 1:
			summon bed-wetter tattoo;
			say "A tattoo appears on you that says 'BED WETTER'.[line break][variable custom style][if the diaper addiction of the player < 10]I can't believe this! The fuck![otherwise if the diaper addiction of the player < 14]I can't deny it's true...[otherwise]I am a naughty bedwetter, and now everyone will know that![end if][roman type][line break]";
	if debugmode is 1, say "resetting accidental urination flag.";
	now delayed urination is 0;
	now the bladder of the player is 0;
	now continued urination is 0;
	if the player is able to automatically masturbate and the player is horny and the player is not in danger and there is a worn total protection diaper and the diaper addiction of the player >= a random number between 15 and 19:
		say "You are so turned on... you really want to masturbate!";
		now auto is 1;
		try masturbating;
		now auto is 0;
		if the player is horny and wanking is 0, say "You overcome your urge and behave yourself.";
	if the player is able to use a body of water and the size of penis is 0 or the player is prone:
		try showering water-body;
	let TP be a random worn training pants;
	if TP is training pants and there is a worn T-shirt:
		let D be a random plentiful eligible diaper;
		if D is diaper, transform TP into D;
	if there is worn temporarily-displaced clothing:
		say "You replace your [ShortDesc of list of worn temporarily-displaced clothing].";
	repeat with C running through temporarily-displaced clothing:
		if C is worn:
			if C is crotch-unzipped, ZipUp C;
			otherwise Replace C;
		now C is not temporarily-displaced.

Understand "pee", "piss", "urinate", "wee", "use toilet", "use bathroom" as urinating.

[!<SayUrinationOverflowOfClothing>+

REQUIRES COMMENTING

+!]
To say urinationoverflow of (K - a clothing):
	say "But your [ShortDesc of K] [if K is fluid immune]is waterproof, so the [urine] seeps through the leg-holes[otherwise]became so thoroughly sodden that the [urine] seeps through the fabric[end if].".

[!<SayUrinationOverflowOfDiaper>+

REQUIRES COMMENTING

+!]
To say urinationoverflow of (K - a diaper):
	say "But your poor diaper is so completely full for your [urine] that it can't hold any more! You feel the diaper overflow through the leg holes.".

To check piss maidification:
	unless the player is in a predicament room:
		if the class of the player is maid:
			say "[bold type]Your [ShortDesc of a random worn maid headdress] causes you to feel deep shame at causing messes rather than cleaning them![roman type][line break]";
			if watersports fetish is 1 and bukkake fetish is 1 and a random number between 1 and 2 is 1:
				say "A bucket full of [urine] appears above your head, and tips over, dousing you in the warm golden stuff.";
				Squirt urine on face by 40;
			otherwise if watersports fetish is 1:
				let N be the number of carried vessels;
				if N > 0:
					say "Your [if N is 1][ShortDesc of a random carried vessel] is[otherwise]drinking vessels are all[end if] filled to the brim with [urine]!";
					repeat with V running through carried vessels:
						now the fill-colour of V is golden;
						now the doses of V is the max-doses of V;
				compute service spill punishment;
			otherwise if the player is not incontinent:
				say "You feel a twinge from behind your bladder, as if it is punishing you by making you gradually more incontinent...";
				increase incontinence by 1;
		otherwise if (there is a worn maid headdress or (black maid headdress is off-stage and black maid headdress is actually summonable)):
			let C be a random pink spraybottle;
			compute maidification of C;
			say "A [C] appears in your hand! It looks like some kind of magic force is demanding that you clean up after you own messes!".


[How high will the game allow incontinence to go?]
To decide which number is the max-incontinence of the player:
	decide on 10 - (incontinence protection * 2).

To decide which number is the incontinence of the player:
	let I be incontinence;
	increase I by the number of worn bed wetting clothing;
	if diaper lover > 0:
		repeat with K running through worn knickers:
			decrease I by the magic-modifier of K;
	if I > the max-incontinence of the player, decide on the max-incontinence of the player;
	decide on I.

[!<YourselfIsIncontinent>+

This is essentially the highest level of incontinence that matters, because at this level all control is taken away from the player.

+!]
Definition: yourself is incontinent:
	if the incontinence of the player >= 10, decide yes;
	decide no.

To decide which number is bladder-risky-level:
	let N be 10;
	decrease N by the incontinence of the player;
	decrease N by the womb volume of vagina / 10;
	increase N by yellow theme bonus;
	if N < 4, decide on 4;
	decide on N.

To decide which number is bladder-bursting-level:
	decide on the bladder of the player - bladder-risky-level.

[!<YourselfIsDesperateToPee>+

Does the player need to pee?

+!]
Definition: yourself is desperate to pee:
	if tutorial is 1, decide no;
	if the latex-transformation of the player > 4, decide no;
	if the bladder of the player > 3, decide yes;
	decide no.

[!<YourselfIsBursting>+

Can the player tell they need to pee?

+!]
Definition: yourself is bursting:
	if the player is fake bursting, decide yes;
	if the player is incontinent or failed potty training tattoo is worn, decide no;
	if the player is desperate to pee and the bladder of the player > 5, decide yes;
	decide no.

[!<YourselfIsFakeBursting>+

Does the player have something telling them they need to pee even when they actually don't?

+!]
Definition: yourself is fake bursting:
	if diaper lover > 0 and there is a worn prostate massager plug, decide yes;
	decide no.

[!<YourselfIsReallyBursting>+

Is the player at risk of wetting themselves (and aware)?

+!]
Definition: yourself is really bursting:
	if the player is bursting and bladder-bursting-level >= 0, decide yes;
	decide no.

To decide which number is burstingColour:
	[unless the player is bursting, decide on 16777215;] [white] [unnecessary because the only time this is used we have already checked that the player is bursting]
	if the player is fake bursting, decide on lightModeFullRed; [red]
	if failed potty training tattoo is worn, decide on 16777215; [white]
	let R-component be 255;
	let G-component be 0;
	let B-component be 0;
	if the player is really bursting: [gradually go from pale red to red]
		now G-component is 128 - (bladder-bursting-level * 32);
		if G-component < 0, now G-component is 0;
		now B-component is G-component;
	otherwise: [gradually go from green to pale red]
		now R-component is (255 * the bladder of the player) / bladder-risky-level;
		now B-component is R-component / 2;
		now G-component is 255 - B-component;
	decide on (R-component * 65536) + (G-component * 256) + B-component.

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
	if the player is upright and the location of the player is urinals, decide yes;
	decide no.

[!<YourselfIsAbleToUseTheToiletPastTheirDiaper>+

REQUIRES COMMENTING

+!]
Definition: yourself is able to use the toilet past their diaper:
	if delayed urination is not 1 and there is a worn total protection knickers and the player is not flying and (the number of worn pee covering clothing - the number of worn pee covering displacable clothing) <= 1 and the player is potentially able to use a toilet and toilet allowance is 0 and the player is not in danger and diaper lover > 0, decide yes;
	decide no.

[!<ReportWhenThePlayerIsAbleToUseTheToiletPastTheirDiaper>+

REQUIRES COMMENTING

+!]
Report going when the player is able to use the toilet past their diaper:
	let D be a random worn total protection knickers;
	if the player is feeling full or the player is bursting:
		say "[if D is cursed][bold type]As you enter this room, the leg holes of your [ShortDesc of D] [bold type][one of]seem to [or][stopping]temporarily loosen. [roman type][one of]You can't take them off because the waist is still tightly sealed, but you could probably displace the crotch in order to use the loo. [or][stopping][otherwise]This room has a toilet in it. [end if]Do you want to pull your [D] to the side and use the [if the location of the player is urinals]urinal[otherwise]toilet[end if] like an adult? ";
		if the player is reverse bimbo consenting, compute toilet use.

[!<YourselfIsAbleToUseABodyOfWater>+

REQUIRES COMMENTING

+!]
Definition: yourself is able to use a body of water:
	if delayed urination is 1 or the player is pee protected, decide no;
	if there is a lake monster in the location of the player, decide no;
	if the location of the player is water-bodied, decide yes;
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
	let M be a random reactive monster;
	if M is monster:
		say ToiletPeeDeclaration of M;
		humiliate 100;
	otherwise:
		say "You sigh pleasantly, and now feel much more comfortable.".

To say ToiletPeeDeclaration of (M - a monster):
	[####Selkie: used to be 22500, not 24000 - 2000]
	say "[if the humiliation of the player < HUMILIATION-DISGRACED - 2000]You squirm uncomfortably, not used to anyone watching you, never mind [NameDesc of M].[otherwise]You hang your head submissively, not looking [NameDesc of M] in the eyes.[end if]";
	say ToiletPeeReaction of M.

[!<SayToiletPeeReactionOfMonster>+

REQUIRES COMMENTING

+!]
To say ToiletPeeReaction of (M - a monster):
	say "[BigNameDesc of M] frowns with distaste. [line break][speech style of M]'[one of]Disgusting[or]Gross[or]Ugh[in random order]! [one of][if M is interested]You couldn't wait until we had parted ways[otherwise]I can't believe you'd do that with me standing here... Did you think I was deaf or something[end if][or]Do you enjoy peeing in front of [if M is buddy]friends[otherwise]strangers[end if] or something[or]I'm standing right here, and you just start going to the toilet like that[in random order]?!'[roman type][line break]";
	unless M is staff member, FavourDown M with consequences.

[!<SayPeeReaction1>+

REQUIRES COMMENTING

+!]
To say PeeReaction (N - 1):
	let M be a random monster penetrating a body part;
	if M is monster:
		if M is intelligent or the number of reactive monsters is 0:
			say GroundPeeSexDeclaration of M;
		otherwise:
			let M2 be a random reactive monster;
			say GroundPeeSexDeclaration of M2;
		humiliate 300;
	otherwise:
		now M is a random reactive monster;
		if delayed urination is 0: [Purposeful urination]
			if M is monster:
				say GroundPeeDeclaration of M;
				humiliate 100;
			otherwise if playerRegion is Woods:
				say "You sigh pleasantly, and now feel much more comfortable. ";
			otherwise:
				say "[variable custom style][if the humiliation of the player < HUMILIATION-MODEST - 1000 and playerRegion is Dungeon]How embarrassing! I need to find a toilet next time.[otherwise][one of]This isn't even the most humiliating thing I've been through today.[or]Ahh, sweet release.[stopping][end if][roman type][line break]";
		otherwise: [Accidental urination]
			if M is monster:
				say GroundPeeDeclaration of M;
				humiliate 200;
			otherwise if M is in the Woods:
				say "You sigh pleasantly, and now feel much more comfortable. ";
			otherwise:
				say "[variable custom style][if the humiliation of the player < HUMILIATION-MODEST - 1000 and playerRegion is Dungeon]How embarrassing! I need to find a toilet next time.[otherwise][one of]This isn't even the most humiliating thing I've been through today.[or]Ahh, sweet release.[stopping][end if][roman type][line break]";
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
		say "[if the humiliation of the player < HUMILIATION-DISGRACED + 3500]You shudder in shame as you allow [NameDesc of M] to watch you.[otherwise]You hang your head submissively, not looking [NameDesc of M] in the eyes.[end if]";
	otherwise: [Accidental urination]
		if the humiliation of the player < HUMILIATION-DISGRACED + 3500, say "[if the player is able to speak][line break][variable custom style]'Eek! Don't watch!'[roman type][line break][end if]You stay still like a deer in headlights as [NameDesc of M] watches you pee.";
		otherwise say "You shudder[if the humiliation of the player < HUMILIATION-BROKEN], finding that the humiliation of [NameDesc of M] seeing you lose control is actually turning you on[otherwise] with a weird mixture of shame and pleasure[end if].";
	say GroundPeeReaction of M.

[!<SayGroundPeeReactionOfMonster>+

REQUIRES COMMENTING

+!]
To say GroundPeeReaction of (M - a monster):
	if M is intelligent:
		say "[speech style of M]'[one of]Gross[or]Disgusting[or]Ugh[in random order]. [if diaper quest is 1][one of]Are you sure you don't need diapers?!'[or]This wouldn't happen if you were kept in diapers, you know.'[or]Do your parents know that you still pee on the floor?!'[in random order][otherwise][one of]Can't you find a toilet to do that?!'[or]Next time use a toilet, you tramp!'[or]How shameless do you have to be to urinate on the floor in front of others?!'[in random order][end if][roman type][line break]";
		FavourDown M;
		if diaper quest is 1:
			now M is diaper-committed;
			now M is interested;
			if M is friendly and M is not student and M is not staff member:
				anger M;
				say BecomesAggressive of M.

[!<SayGroundPeeSexDeclarationOfMonster>+

REQUIRES COMMENTING

+!]
To say GroundPeeSexDeclaration of (M - a monster):
	if the humiliation of the player < HUMILIATION-DISGRACED + 3500, say "[if the player is able to speak][line break][variable custom style]'Oh god, not now!'[roman type][line break][end if]You are brought to tears in shame as you are forced to let go right in front of [NameDesc of M].";
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
	let M be a random reactive monster;
	let D be a random worn diaper;
	if M is a monster:
		say DiaperDeclaration of M;
	otherwise if delayed urination is 0:
		say "[if the diaper addiction of the player < 7][line break][first custom style][one of]I guess if I'm wearing it, I might as well use it.[or]This isn't sexy, but I guess it's practical.[or]I will not be telling my friends this part of the story when I get home.[in random order][otherwise if the diaper addiction of the player < 12]You put your hands on the front of the diaper so that you can feel the warmth spread outwards. [line break][variable custom style][one of]Why does it feel so good?[or]The warmth is really nice against my skin...[or]Diapers are pretty cool, I guess.[or]That was so much easier than having to find a loo![in random order][otherwise]As you pee, your eyes roll to the back of your head in pleasure. [line break][second custom style][one of]I love my diaper so much![or]It feels so good![or]I'm such a good girl![or]Mmmmm, yes!!![in random order][end if][roman type][line break]";
	otherwise:
		say "[if the diaper addiction of the player < 7][line break][first custom style][one of]Oh shit! Well I guess I'm glad I was wearing this thing.[or]This isn't sexy! But, I guess it is necessary, evidently...[or]Crap! I guess I really do need diapers right now.[in random order][otherwise if the diaper addiction of the player < 12][line break][variable custom style][one of]This diaper is coming in really useful![or]I could get used to this feeling.[or]I don't even need to pay attention to my bladder![or]That was so much easier than having to find a loo![in random order][otherwise][line break][second custom style][one of]*giggle*, that was fun![or]Again again![or]I hardly felt that one. Maybe soon I won't feel myself going at all![or]Ooh I just LOVE that feeling![in random order][end if][roman type][line break]";
	if target-poster is a poster:
		now old-monster of target-poster is M;
		now old-peereaction of target-poster is N.

To say DiaperDeclaration of (M - a monster):
	if the player is not disgraced:
		say "You [if delayed urination is 1]freeze in place and [end if]try as hard as possible to act casual, to prevent [NameDesc of M] from knowing what you are doing. But you feel extremely paranoid that [he of M] knows anyway.[if the diaper addiction of the player < 7][line break][first custom style][one of]Next time, I'm NOT going this in front of anyone! It's way too scary.[or]Am I making any noise? Eek![or]Am I standing weirdly?[in random order][otherwise][line break][variable custom style][one of]I'm a diaper ninja![or]This is intense, but fun.[or]I wonder what I'd say if I got caught?[in random order][end if][roman type][line break]";
		if a random worn diaper is not currently at least partially visible: [Player managed to stealth-pee]
			progress quest of stealth-diaper-quest;
			now diaper-reaction-said is 1;
	otherwise if the player is not shameless:
		say "You [if delayed urination is 1]freeze in place and [end if]try to act casual, but you can't help but stare at [NameDesc of M] coyly, tempting fate to get you caught.[if the diaper addiction of the player < 9][line break][first custom style][one of]What am I doing?![or]Why can't I stop myself?![or]Oh my god, I need to get myself under control![in random order][otherwise][line break][variable custom style][one of]I'm a diaper ninja![or]Come on, say something![or]Next time, I'm going to make it even more obvious![in random order][end if][roman type][line break]";
		if a random worn diaper is not currently at least partially visible: [Player managed to stealth-pee]
			progress quest of stealth-diaper-quest;
			now diaper-reaction-said is 1;
	otherwise:
		say "You stare directly at [NameDesc of M]. [line break][variable custom style]'[one of][if the intelligence of the player < 6][NameBimbo] is going tinkles!'[otherwise]Can you guess what I'm doing right now?'[end if][or]Please watch me as I pee in my diaper!'[or]Are you watching me wet myself?'[or]I'm peeing right now, and it feels so good!'[in random order][roman type][line break]";
	if diaper-reaction-said is 0, say "[DiaperReaction of M]".

[!<SayPeeReaction3>+

REQUIRES COMMENTING

+!]
To say PeeReaction (N - 3):
	let M be a random awake monster penetrating a body part;
	let K be a random worn bottom level pee protection clothing;
	if M is monster:
		if the humiliation of the player < HUMILIATION-DISGRACED + 3500, say "[if the player is able to speak][line break][variable custom style]'Oh god, not now!'[roman type][line break][end if]You are brought to tears in shame as you are forced to let go into your [K] right in front of [NameDesc of M].";
		otherwise say "[BrokenPeeFlav during sex with M]";
		humiliate 300;
	otherwise:
		now M is a random intelligent awake monster in the location of the player;
		if delayed urination is 0: [Purposeful urination]
			if M is monster:
				say ClothesPeeDeclaration of M;
				humiliate 200;
			otherwise:
				unless K is WC plug panties, say "[one of][line break][variable custom style]Yuck.[or][variable custom style]Eww![or][if the bimbo of the player > 9][line break][second custom style]Uh-oh, I'm a bad girl![otherwise][line break][first custom style]Err, whoops.[end if][purely at random][roman type][line break]";
		otherwise: [Accidental urination]
			if M is monster:
				say ClothesPeeDeclaration of M;
				humiliate 300;
			otherwise:
				unless K is WC plug panties, say "[one of][line break][variable custom style]Err, whoops![or][if saved-flat-intelligence < 6][line break][second custom style]Uh-oh, I had a little accident![otherwise][line break][first custom style]I can't believe I just let that happen...[end if][or][variable custom style]I guess I should try and find a toilet next time...[purely at random][roman type][line break]";
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
		say "[if the humiliation of the player < HUMILIATION-SHAMELESS - 2000]You shudder in shame as you allow [NameDesc of M] to watch you.[otherwise]You hang your head submissively, not looking [NameDesc of M] in the eyes.[end if]";
	otherwise: [Accidental urination]
		if the humiliation of the player < HUMILIATION-SHAMELESS - 2000, say "[if the player is able to speak][line break][variable custom style]'Eek! Don't watch!'[roman type][line break][end if]You stay still like a deer in headlights as [NameDesc of M] watches you wet yourself.";
		otherwise say "[BrokenPeeFlav during sex with M]";
	say ClothesPeeReaction of M.

[!<SayClothesPeeReactionOfMonster>+

REQUIRES COMMENTING

+!]
To say ClothesPeeReaction of (M - a monster):
	if diaper quest is 1:
		if M is friendly:
			say "[BigNameDesc of M] frowns. [line break][speech style of M]'What are you doing?! It looks to me like you need diapers, little [boy of the player]. I am very unimpressed.'[roman type][line break]";
			FavourDown M by 2;
			if M is unfriendly:
				say "[speech style of M]'Yes in fact, I think you need training. [if the player is upright]Get on your knees[otherwise]Stay right where you are[end if], baby!'[roman type][line break]";
				now M is interested;
				now M is diaper-committed;
		otherwise:
			say "[BigNameDesc of M] frowns angrily. [line break][speech style of M]'This is why you need to be in diapers!'[roman type][line break][if M is uninterested]Uh-oh...";
			now M is interested;
	otherwise:
		if M is interested, say "[BigNameDesc of M] frowns, but doesn't say anything.";
		otherwise say "[BigNameDesc of M] doesn't look at you directly or say anything, so it's hard to gauge [his of M] reaction.".

[!<SayDiaperReactionOfMonster>+

REQUIRES COMMENTING

+!]
To say DiaperReaction of (M - a monster):
	let D be a random currently visible diaper;
	if D is not diaper and the player is not shameless and M is not concealment immune:
		say "You're confident that [NameDesc of M] has no idea [one of]what's happening underneath your clothes[or]that you're currently wetting yourself[or]that you're going to the toilet in your pants right in front of [him of M][at random].";
	otherwise if M is interested:
		say "[BigNameDesc of M] seems to give you an odd look, but doesn't say anything. [if the player is not shameless]Maybe [he of M] didn't notice?[otherwise][line break][variable custom style]I'm such a good girl![roman type][line break][end if]";
	otherwise:
		say "[BigNameDesc of M] doesn't look at you directly or say anything, so it's hard to gauge [if the player is not shameless]if [he of M] could tell[otherwise][his of M] reaction[end if].".

[!<SayBrokenPeeFlavDuringSexWithMonster>+

REQUIRES COMMENTING

+!]
To say BrokenPeeFlav during sex with (M - a monster):
	say "You shudder[if the humiliation of the player < HUMILIATION-BROKEN], finding that the humiliation of [NameDesc of M] seeing you lose control is actually turning you on[otherwise] with a weird mixture of shame and pleasure[end if].".


Urinating ends here.
