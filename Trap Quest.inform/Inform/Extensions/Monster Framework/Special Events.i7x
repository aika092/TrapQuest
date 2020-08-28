Special Events by Monster Framework begins here.

[!<FacePiss>+

Handles the player being pissed on by an unknown entity. The flavour is kept neutral so it shouldn't matter.

@param <Object>:<M> Whomever is peeing on the player
+!]
To FacePiss from (M - an object):
	if the player is upright, try kneeling;
	if the player is not forced to drink urine and the player is not gagged:
		say PissDrinkThreat of M;
		say "Do you drink the [urine]? ";
	let vm be a random video-monitor in the location of the player;
	if the player is gagged:
		compute urine hitting face;
		if vm is video-monitor and the video-caller of vm is not the throne and vm is not recording-disgrace:
			now vm is recording-disgrace;[since sex is probably over by now, we need to set up the recorded event right away.]
			let T be the substituted form of "getting showered in [urine].";
			now the video-event of vm is T;[note that the video-event always needs to be a present participle]
	otherwise if there is a worn ringagged clothing:
		say "Your ring gag means that the [urine] flows straight into your mouth, forcing you to swallow it.";
		DrinkPiss from M;
	otherwise:
		if the thirst of the player is 5 and the player is not disgraced:
			say "Your thirst overwhelms you and you can't help but open your mouth to wet your tongue and throat.";
			DrinkPiss from M;
		otherwise if the player is desperate to drink urine:
			say "You don't even hesitate - you immediately open your mouth and start collecting as much as you can.";
			DrinkPiss from M;
		otherwise if the player is bimbo consenting:
			DrinkPiss from M;
		otherwise:
			let V be nothing;[We check if the player wants to collect some in a vessel, and output some unique flavour text.]
			if the player is not flying and the player is not at least partially monster stuck, now V is the juice-collector of urine;
			if V is bottle:
				dump V;
				say "You position the [printed name of V] below your chin just in time, as your hair, face and mouth are blasted by a stream of [urine]. [one of]As your [printed name of V] quickly fills up you realise that the only thing more humiliating than being used as a toilet is being witnessed saving some for later! [or][stopping]";[But no extra humiliation hit?]
				now the doses of V is max-doses of V;
				now the fill-colour of V is golden;
				now V is monster-origin;
			otherwise:
				say "Your face is blasted by a stream of [urine]. ";
			compute urine hitting face;
			if M is nothing: [currently only wrestler urinal scene]
				say "[first custom style]'[one of]Ungrateful brat[or]You can't even be a urinal properly[or]Useless whore[or]Disrespectful bitch[or]Oh my, you disobedient wench[or]Gross, you let some get on my shoes you [cunt][in random order]!'[roman type][line break]The anonymous man [one of]slaps you in the face[or]kicks you in the belly[or]painfully twists your nipples[at random] as punishment.";
				PainUp 1;
			otherwise if M is intelligent monster:
				compute angry punishment of M;
			if vm is video-monitor and the video-caller of vm is not the throne and vm is not recording-disgrace:
				now vm is recording-disgrace;[since sex is probably over by now, we need to set up the recorded event right away.]
				let T be the substituted form of "getting showered in [urine].";
				now the video-event of vm is T;[note that the video-event always needs to be a present participle]
	if vm is video-monitor and the video-caller of vm is not the throne and vm is not recording-disgrace:
		now vm is recording-disgrace;[since sex is probably over by now, we need to set up the recorded event right away.]
		let T be the substituted form of "drinking [urine].";
		now the video-event of vm is T;[note that the video-event always needs to be a present participle]
	SportsCount;
	if the urine taste addiction of the player > 14:
		say "The experience [one of]of being used as a toilet now [or][stopping][if the player is a bit horny]arouses you further[otherwise]turns you on[end if].";
		arouse (the urine taste addiction of the player - 14) * 150;
	let C be a random worn WC thigh high boots;
	if C is clothing:
		say "[bold type]Your [ShortDesc of C] pulse and glow! ";
		if the class of the player is human toilet, increase the powerup of C by a random number between 10 and 15;
		otherwise increase the powerup of C by a random number between 7 and 10;
		if the powerup of C > 15 and C is stumbling:
			say "You feel the stumbling enchantment being suppressed, and replaced by one that strengthens your kicks! Wow!";
			now C is kicking;
		say "[roman type][line break]".

[!<SayPissDrinkThreatOfObject>+

Displays some text from describing "M" demanding the player drink urine

@param <Object>:<M> Whomever is trying to pee in the player's mouth
+!]
To say PissDrinkThreat of (M - an object):
	if M is nothing: [Currently this only applies to the wrestler urinal scene]
		say "[first custom style]'[one of]Now open wide, little toilet-girl[or]Open up your piss chute now, darling[or]Open wide now, daddy's been holding this in for a while[or]You'd better drink this up like a good urinal or else[or]Come on now, let me turn your mouth into my personal toilet[or]Do your job properly and open your mouth already[or]Be a good human toilet and drink this all up[or]I'm sure I don't have to tell you what will happen if you don't drink it all, do I[in random order].'[roman type][line break]";
	otherwise if M is intelligent monster:
		say "[speech style of M]'[one of]Open wide or else!'[or]You'd better drink this, or you'll regret it.'[or]Don't anger me now by refusing to drink my gift.'[or]You'd better drink this up like a good submissive bitch, or else.'[or]As I'm in charge, I order you to drink it all.'[in random order][roman type][line break]".

[!<DecideWhichBottleIsTheJuiceCollector>+

Determines which of the player's containers, if any, will be used to capture urine or semen after a shower or a facial, respectively

@return <Object> The bottle the player will use to catch the liquid, or nothing.
+!]
To decide which object is the juice-collector of (L - a liquid-object):
	let collecting be nothing;
	unless the player is not able to use their hands:
		let LV be a list of things;
		repeat with V running through carried open topped vessels:
			unless the doses of V >= the max-doses of V and (diaper quest is 1 or V is monster-origin) and ((L is urine and the fill-colour of V is golden) or (L is milk and the fill-colour of V is white) or (L is murkwater and the fill-colour of V is murky)), add V to LV; [vessels that satisfy these conditions, there would be no point in refilling with new stuff]
		if the number of entries in LV > 0:
			reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
			truncate LV to 9 entries;
			say "Where do you want to collect the [variable L]?[line break]";
			repeat with V running through LV:
				if V is bottle, set next numerical response to "The [ShortDesc of V][if the doses of V > 0] (You'll lose its current contents of [PotionType of V])[end if]";
				otherwise set next numerical response to "[BigNameDesc of V]";
			set numerical response 0 to "don't collect";
			compute multiple choice question;
			if player-numerical-response > 0, now collecting is entry player-numerical-response in LV;
	decide on collecting.

[!<APersonIsDesperateToDrink>+

Determines whether the player is desperate for something to drink

@return <Boolean> True if the player is desperate
+!]
Definition: a person is desperate to drink:
	if the thirst of the player > 3, decide yes;
	decide no.

[!<APersonIsDesperateToDrinkSemen>+

Determines whether the player is mentally able to refuse to drink semen

@return <Boolean> False if the player is able to refuse
+!]
Definition: a person is desperate to drink semen:
	if the thirst of the player is 5, decide yes;
	if the player is desperate to drink and the semen taste addiction of the player > 10, decide yes;
	if the player is craving semen and the player is not overly full, decide yes;
	decide no.

[!<APersonIsDesperateToDrinkUrine>+

Determines whether the player is mentally able to refuse to drink urine

@return <Boolean> False if the player is able to refuse
+!]
Definition: a person is desperate to drink urine:
	if the thirst of the player is 5, decide yes;
	if the player is desperate to drink:
		if the urine taste addiction of the player > 5, decide yes;[do you like the taste of urine?]
		if the humiliation of the player >= HUMILIATION-DISGRACED + 3500, decide yes;[is your dignity low enough?]
	if the urine taste addiction of the player > 8 and the player is not overly full, decide yes;
	decide no.

[!<APersonIsForcedToDrinkUrine>+

Determines whether the player is able to choose not to drink urine during a golden shower

@return <Boolean> No if the player can choose not to drink urine
+!]
Definition: a person is forced to drink urine:
	if there is a worn ringagged clothing, decide yes;
	if the player is desperate to drink urine, decide yes;
	decide no.

[!<ComputeUrineHittingFace>+

Handles the player receiving a golden shower and choosing not to drink any

+!]
To compute urine hitting face:
	say "[one of]It's even hotter than you were expecting and the unmistakable smell clings to your nostrils. [or]The heat and feeling of the stream is familiar to you now, and you [if the humiliation of the player > 27500]obediently [end if]sit there silently holding your breath until the flow begins to die. [stopping]";
	if there is a worn wc catsuit and a random number between the raw intelligence of the player and 35 < 30:
		say "You feel weirdly enlightened.";
		IntUp 1;
	squirt urine on face by 40;
	reset soak flavour;
	if the make-up of face > 0 and permanent makeup is 0 and a random number between 1 and 2 is 1:
		say "[if the make-up of face > 1]Some of your[otherwise]Your[end if] make up is washed away.";
		FaceDown 1.

[To coat clothes in urine:
	repeat with C running through worn able to take more liquid clothing:
		PissSoak a random number between 3 and 7 on C.]

[!<DrinkPissFromObject>+

Handles the player receiving a golden shower and choosing to drink it

@param <Object>:<M> Whomever is trying to peeing in the player's mouth
+!]
To DrinkPiss from (M - an object):
	Humiliate 1050 - (the urine taste addiction of the player * 50);
	say "[one of]You have never experienced anything close to the humiliation of voluntarily drinking another person's [urine]. A small voice inside you is warning you that you can never go back to a time before you were literally used as a human toilet.[or]You once again [if there is a worn ringagged clothing]have no choice but to[otherwise]voluntarily[end if] gulp down the [urine], taking your place as a human toilet.[stopping][if the urine taste addiction of the player > 15][line break][second custom style][one of]Mmm, this tastes amazing![or]Delicious![or]Yummy![or]Scrumptious.[or]Tasty![then at random][roman type][line break][otherwise if the urine taste addiction of the player > 12][one of]You are really starting to enjoy the taste![or][stopping][otherwise if the urine taste addiction of the player > 6][one of]You are starting to get used to the taste, and don't find it as awful as you used to.[or][stopping][end if]";
	StomachUrineUp 3;
	compute unique piss drink effect of M;
	if WC hood is worn:
		progress quest of human-toilet-quest;
	otherwise if WC hood is off-stage and the urine taste addiction of the player > 4 and WC hood is actually summonable:
		summon WC hood cursed;
		say "[bold type]Suddenly your mouth is forced wide open as a [ShortDesc of WC hood] [bold type]appears around your head. You can't close it![roman type][line break]";
	let P be a random worn WC plug panties;
	if P is clothing:
		say "[bold type]Your [if the player is possessing a vagina][fuckholes] feel[otherwise][asshole] feels[end if] amazing![roman type] Suddenly [if the player is possessing a vagina]you feel rushes of energy from your [P], and now they are[otherwise]you feel a rush of energy from your [P], and now it is[end if] completely healed! Wow!";
		now the soreness of asshole is 0;
		now the tolerated of asshole is 0;
		now the soreness of vagina is 0;
		now the tolerated of vagina is 0;
	progress quest of piss-drinking-quest.

[!<ComputeUniquePissDrinkEffectOfObject>+

Handles any unique effect to be triggered when the player swallows the urine of a particular entity, "M"

@param <Object>:<M> Whoever just peed in the player's mouth
+!]
To compute unique piss drink effect of (M - an object):
	do nothing.

[!<AMonsterIsWillingToBukkake>+

Determines whether or not a monster will pull out or finish on the player's face after oral sex.

@param <Monster>:<M> The monster the player is having oral sex with
@return <Boolean> True if the monster is willing/able to ejaculate on the player's face, otherwise false

+!]
Definition: A monster is willing to bukkake:
	if the player is a blowjob slut, decide no;
	if the class of the player is living sex doll, decide no;
	if a random number between 1 and 2 is 1, decide yes;
	decide no.

[!<AMonsterIsPeelingWrapper>+

Determines whether or not a monster will have something happen to their condom during oral sex

@param <Monster>:<M> The monster the player is having oral sex with
@return <Boolean> True if something happens to the condom

+!]
Definition: a monster is peeling wrapper: decide no.

To compute wrapped climax of (M - a monster) in (F - face):
	if M is peeling wrapper, compute condom failure of M in F;
	otherwise compute condom success of M in F.

To compute condom failure of (M - a monster) in (F - face):
	get condom failure image of M in F;
	say OralCondomFailFlav of M;
	now M is unwrapped;
	CumFaceUp the semen load of M;
	compute happy oral reward of M.

To get condom failure image of (M - a monster) in (F - face):
	get failed facial dodge image for M.

To compute condom success of (M - a monster) in (F - face):
	get condom success image of M in F;
	say OralCondomPieFlav of M;
	StomachSemenUp the semen load of M;
	compute happy oral reward of M.

To get condom success image of (M - a monster) in (F - face):
	do nothing.

[!<SayOralCondomFailFlavOfMonster>+

Displays some text when something happens to a monster's condom during a blowjob

@param <Monster>:<M> The monster the player is having oral sex with

+!]
To say OralCondomFailFlav of (M - a monster):
	say "[one of][BigFuckerDesc of M] pulls out, peeling off the condom as [he of M] ejaculates all over your face.[or][BigFuckerDesc of M] tears off the condom as [he of M] pulls out, groaning as [he of M] paints your face with [his of M] load.[or][BigFuckerDesc of M] suddenly pulls out, ripping the condom off as [he of M] ejaculates, plastering your face with several long ropes of [semen].[or][BigFuckerDesc of M] pushes you off, peeling off the condom with a *SNAP* as [he of M] unloads all over your face.[in random order]";

[!<SayOralCondomPieFlavOfMonster>+

Displays some text when a condom successfully catches a monster's load during oral sex

@param <Monster>:<M> The monster the player is having oral sex with

+!]
To say OralCondomPieFlav of (M - a monster):
	say "[one of][BigFuckerDesc of M] tightens [his of M] grip, hissing through [his of M] teeth as [his of M] condom fills with warmth.[or][BigFuckerDesc of M][']s [DickDesc of M] throbs powerfully, firing off load after load of warm [semen] into the condom.[or][BigFuckerDesc of M] forces you all the way down, groaning as [he of M] fills the condom with [his of M] load.[or][silentThroat M][BigFuckerDesc of M] pulls you down as [he of M] begins to ejaculate, [his of M] balls slapping your chin as the condom swells to contain [his of M] big load.[or][silentThroat M][BigFuckerDesc of M] buries [his of M] [DickDesc of M] as far into your mouth as it will go, jet after jet of [semen] rushing into the increasingly bloated condom[or][silentThroat M][BigFuckerDesc of M] forces [his of M] length down your throat, groaning as the condom fills with [his of M] load.[or][silentThroat M][BigFuckerDesc of M] forces you to take [his of M] [DickDesc of M] all the way to the hilt. You can do nothing but wait helplessly as [he of M] thoroughly empties [his of M] load into the condom.[or][BigFuckerDesc of M] forces you down as [his of M] [DickDesc of M] spasms, slightly stretching the condom with [his of M] load.[in random order]".

[!<ComputeFacialDodgingOfMonster>+

This function is called when the player resists in the last turn of oral sex and their sex partner is "willing to bukkake". If the player's dexterity is high enough, they can dodge the incoming facial, otherwise they get a new paint job.

@param <Monster>:<M> A monster the player just had oral sex with

+!]
To compute facial dodging of (M - a monster):
	say FacialBrokenFree of M;
	if M is aiming a bukkake:
		compute successful facial dodging of M;
	otherwise:
		compute failed facial dodging of M.

[facials are harder to dodge the more you like the feeling of semen]
Definition: a monster (called M) is aiming a bukkake:
	if a random number between (the semen addiction of the player * -1) and the dexterity of the player <= the difficulty of M - 2, decide yes;
	decide no.

[!<ComputeSuccessFacialDodgingOfMonster>+

This function is called when the player successfully dodges an incoming facial. Usually entails semen creating a puddle on the floor.

@param <Monster>:<M> A monster the player just had oral sex with

+!]
To compute successful facial dodging of (M - a monster):
	get successful facial dodge image for M;
	say SuccessfulFacialDodge of M;
	SemenPuddleUp the semen load of M;
	compute angry punishment of M.

[!<GetSuccessfulFacialDodgeImageOfMonster>+

This function can display a relevant image when the player successfully dodges an incoming facial. Does the same thing as get facial accepting image.

@param <Monster>:<M> A monster the player just had oral sex with

+!]
To get successful facial dodge image for (M - a monster):
	get facial accepting image for M.

[!<ComputeFailedFacialDodgingOfMonster>+

This function is called when the player unsuccessfully dodges an incoming facial. Usually entails semen being added to the player's face, and an invocation of the check forgiveness function, since the player was resisting.

@param <Monster>:<M> A monster the player just had oral sex with

+!]
To compute failed facial dodging of (M - a monster):
	get failed facial dodge image for M;
	say FailedFacialDodge of M;
	CumFaceUp the semen load of M;
	check forgiveness of M.

[!<GetFailedFacialDodgeImageOfMonster>+

This function can display a relevant image when the player unsuccessfully dodges an incoming facial. Does the same thing as get facial accepting image.

@param <Monster>:<M> A monster the player just had oral sex with

+!]
To get failed facial dodge image for (M - a monster):
	get facial accepting image for M.

[!<ComputeFacialAcceptingOfMonster>+

This function is called when the player submits in the last turn of oral sex and their partner is "willing to bukkake". Almost the same as failed facial dodge, but invokes the happy reward function and humiliates the player, since they were obedient.

@param <Monster>:<M> A monster the player just had oral sex with

+!]
To compute facial accepting of (M - a monster):
	get facial accepting image for M;
	say UnavoidedFacial of M;
	CumFaceUp the semen load of M;
	humiliate 200;
	compute happy oral reward of M.

[!<GetFacialAcceptingImageOfMonster>+

This function can display a relevant image when the player receives a facial. Does nothing by default

@param <Monster>:<M> A monster the player just had oral sex with

+!]
To get facial accepting image for (M - a monster):
	do nothing.

Definition: a monster (called M) is coercing a swallow:
	let R be a random number between 10 and 20;
	let D be the delicateness of the player;
	if debuginfo > 0, say "[input-style]Automatic swallow resistance check: [if the player is desperate to drink semen]automatic failure (desperate to drink)[otherwise]d9+10 ([R]) | ([D - 1].5) submissiveness[end if][roman type][line break]";
	if the player is desperate to drink semen, decide yes;
	if R < D, decide yes;
	decide no.

[!<ComputeDefaultOralCreampieOfMonster>+

This function is called whenever a monster is not willing to bukkake the player, and they ejaculate in the player's mouth rather than down their throat. By default, this means the player was resisting in the last turn of sex. Depending on the player's delicateness score(checked by the coercing a swallow function), the player will either swallow automatically or have a choice of spitting.

@param <Monster>:<M> A monster the player just had oral sex with

+!]
To compute default oral creampie of (M - a monster):
	get oral creampie image for M;
	FaceFill semen by (the semen load of M);
	say SwallowDemand of M;
	if M is coercing a swallow:
		compute auto swallow of M;
	otherwise:
		compute swallow choice of M.

[!<ComputeOralCreampieOfMonster>+

An oral creampie where the player's resistance forced a monster to jizz in their mouth.

@param <Monster>:<M> A monster the player just had oral sex with

+!]
To compute oral creampie of (M - a monster):
	say ResistedOralCreampie of M;
	compute default oral creampie of M.

[!<ComputeMercifulOralCreampieOfMonster>+

An oral creampie where a monster decided to cum inside the player's mouth, not down their throat

@param <Monster>:<M> A monster the player just had oral sex with

+!]
To compute merciful oral creampie of (M - a monster):
	say SubmittedOralCreampie of M;
	compute default oral creampie of M.

[!<GetOralCreampieImageOfMonster>+

This function can display a relevant image when the player receives an oral creampie. Does nothing by default

@param <Monster>:<M> A monster the player just had oral sex with

+!]
To get oral creampie image for (M - a thing):
	do nothing.

[!<ComputeDeepthroatCreampieOfMonster>+

This function is called whenever a monster is not willing to bukkake the player, and they ejaculate straight down the player's throat. Humiliates the player, and invokes the happy reward function since the player was probably being obedient.

@param <Monster>:<M> A monster the player just had oral sex with

+!]
To compute deepthroat creampie of (M - a monster):
	get deepthroat creampie image for M;
	say DeepthroatCreampie of M;
	increase the throating of M by 1;
	StomachSemenUp the semen load of M;
	compute happy oral reward of M.

[!<GetDeepthroatCreampieImageOfMonster>+

This function can display a relevant image when the player is forced to deepthroat a monster as it ejaculates. By default, does the same thing as get oral creampie image.

@param <Monster>:<M> A monster the player is deepthroating

+!]
To get deepthroat creampie image for (M - a monster):
	get oral creampie image for M.

[!<ComputeSwallowChoiceOfMonster>+

This function is called whenever a monster ejaculates in the player's mouth, and they don't have any reason to swallow automatically. Player can choose to humiliate themselves by swallowing, or spit and probably piss their partner off.

@param <Monster>:<M> A monster the player just had oral sex with

+!]
To compute swallow choice of (M - a monster):
	say "What do you do with the [MouthfulDesc]?";
	reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
	set numerical response 1 to "swallow it[if newbie tips is 1] (guaranteed addiction increase)[end if]";
	set numerical response 2 to "hold it for now[if newbie tips is 1] (chance of addiction increase each turn you hold it; likely to slightly upset the [ShortDesc of M])[end if]";
	set numerical response 3 to "spit it out immediately[if newbie tips is 1] (a bit humiliating if people get to see what's been in your mouth; likely to significantly upset the [ShortDesc of M])[end if]";
	compute multiple choice question;
	if player-numerical-response is 1:
		compute voluntary swallow of M;
	otherwise if player-numerical-response is 3:
		compute spit choice of M;
	otherwise:
		compute oral creampie hold reaction of M.

To compute oral creampie hold reaction of (M - a monster):
	say "[speech style of M]'I said swallow it, not hold it!'[roman type][line break]";
	if M is friendly:
		FavourDown M by 1;
	otherwise:
		say "[BigNameDesc of M] strikes you across the face.";
		PainUp 1.

[!<ComputeSpitChoiceOfMonster>+

This function is called whenever the player chooses to spit rather than swallow after taking an oral creampie. If the player has anything available that they can use to catch the semen, they will be offered the chance to spit into it via the juice-collector decide on function. Otherwise the player won't spit into anything.

@param <Monster>:<M> A monster the player just had oral sex with

+!]
To compute spit choice of (M - a monster):
	[We check if the player wants to collect some in a vessel, and output some unique flavour text.]
	let V be nothing;
	if the player is not flying and the number of worn wrist bonds is 0, now V is the juice-collector of semen;
	if V is a bottle:[if the juice-collector isn't nothing, catch it!]
		dump V;
		compute semen catching from M in V;
		check forgiveness of M;
	otherwise:[TODO: depending on player semen addiction, and breast size they catch it on their boobs instead]
		compute voluntary spitting of M.

[!<ComputeSemenCatchingFromMonsterInBottle>+

This function is called whenever the player chooses to spit semen into a vessel/bottle rather than spit on the floor. Humiliating, and since the player was disobedient, there's a chance of a punishment from the above function.

@param <Monster>:<M> A monster the player just had oral sex with
@param <Bottle>:<V> A bottle the player can spit something into

+!]
To compute semen catching from (M - a monster) in (V - a bottle):
	say "You position the [printed name of V] below your chin[if the semen taste addiction of the player < 9], looking away from [him of M][otherwise if the semen taste addiction of the player < 13], trying not to look at [him of M][otherwise], winking up at [him of M][end if] as it catches the [one of]load[or][tasted-semen][at random] [one of]dribbling slowly out of your mouth[or]in thick gooey clumps[or]slides out of your open mouth[at random][run paragraph on]";
	if the urine volume of face <= 0 and the milk volume of face <= 0:
		say ".[one of] As your [printed name of V] quickly fills up you realise the only thing more humiliating than swallowing [semen] is being witnessed saving some for later![or][stopping]";
		now the fill-colour of V is creamy;
	otherwise:
		say ", along with the [if the urine volume of face > 0 and the milk volume of face > 0][urine] and [milk][otherwise if the urine volume of face > 0][urine][otherwise][milk][end if] already in your mouth.";
		now the fill-colour of V is murky;
	say strongHumiliateReflect;
	SetDose V to (the total volume of face + 1) / 2;
	now V is monster-origin;
	MouthEmpty.

[!<ComputeAutoSwallowOfMonster>+

This function is called whenever a monster ejaculates in the player's mouth and the player swallows automatically.

@param <Monster>:<M> A monster the player just had oral sex with

+!]
To compute auto swallow of (M - a monster):
	say AutomaticSwallow of M;
	compute silent swallowing;
	compute happy oral reward of M.

[!<ComputeVoluntarySwallowOfMonster>+

This function is called whenever a monster ejaculates in the player's mouth and the player chooses to swallow rather than spit.

@param <Monster>:<M> A monster the player just had oral sex with

+!]
To compute voluntary swallow of (M - a monster):
	say VoluntarySwallow of M;
	compute silent swallowing;
	compute happy oral reward of M.

[!<ComputeVoluntarySpittingOfMonster>+

This function is called whenever a monster ejaculates in the player's mouth, the player chooses to spit, and the player either has nothing available to spit in, or chooses not to spit into anything.

@param <Monster>:<M> A monster the player just had oral sex with

+!]
To compute voluntary spitting of (M - a monster):
	say VoluntarySpit of M;
	compute silent spitting;
	compute angry punishment of M.

[!<CheckForgivenessOfMonster>+

This function should be called whenever a monster "M" has reason to be angry with the player, but has been given some reason to forgive them. Uses the charisma of the player and the favour of M.

@param <Monster>:<M> A monster the player pissed off

+!]
To check forgiveness of (M - a monster):
	if a random number between the favour of M and the charisma of the player > 8:
		compute angry forgiveness of M;
	otherwise:
		compute angry punishment of M.

[!<ComputeAngryForgivenessOfMonster>+

This function is called when the player makes a monster angry in some way, but the monster decides to forgive them.

@param <Monster>:<M> A monster forgiving the player

+!]
To compute angry forgiveness of (M - a monster):
	say ForgivenessFlav of M.

[!<SayFacialBrokenFreeOfMonster>+

Displays some test describing the player breaking free after resisting in the last turn of a blowjob

@param <Monster>:<M> The monster having oral sex with the player

+!]
To say FacialBrokenFree of (M - a monster):
	say "[one of]You wait for your moment and pull back at the perfect time. You're free![or]You struggle valiantly, finally managing to pull off at the last moment. You're free![or]After several moments of struggling, you finally force [him of M] to let go. You're free![or]After a brief struggle, you manage to break free![in random order]".

[!<SaySuccessfulFacialDodgeOfMonster>+

Displays some test describing the player successfully dodging a facial after a blowjob

@param <Monster>:<M> The monster having oral sex with the player

+!]
To say SuccessfulFacialDodge of (M - a monster):
	say "[one of][BigFuckerDesc of M] groans as [he of M] goes over the edge, [semen] sailing over your shoulder and into a puddle on the floor.[or][BigFuckerDesc of M] groans, having already gone over the edge. You watch as spurt after spurt of [semen] shoots out of [his of M] [DickDesc of M] and into a puddle on the floor.[or][BigFuckerDesc of M] grabs at you, as [he of M] goes over the edge, but you're too fast, and [his of M] [semen] shoots out into a puddle onto the floor.[or]Thanks to your catlike reflexes, you dodge out of the way just before [FuckerDesc of M] starts to cum![or]Thanks to quick reflexes, you dodge out of the way before [FuckerDesc of M] can give you a facial.[or][BigFuckerDesc of M] grunts with pleasure, having already gone over the edge. Thanks to your catlike reflexes, you dodge out of the way just in time![or][if the semen taste addiction of the player < 10][BigFuckerDesc of M] tries to grab you again, but it's too late for [him of M] to stop! You smile triumphantly as [his of M] [semen] dribbles onto the floor.[otherwise if the semen taste addiction of the player < 15][BigFuckerDesc of M] tries to grab you again, but it's too late for [him of M] to stop! You try not to feel disappointed as [his of M] [semen] dribbles onto the floor.[otherwise][BigFuckerDesc of M] tries to grab you again, but it's too late for [him of M] to stop! You feel very disappointed as [his of M] [semen] dribbles onto the floor.[end if][in random order]".

[!<SayFailedFacialDodgeOfMonster>+

Displays some flavour describing the player unsuccessfully dodging a facial after a blowjob

@param <Monster>:<M> The monster having oral sex with the player

+!]
To say FailedFacialDodge of (M - a monster):
	say "[one of]However, it's still too late! [BigFuckerDesc of M] is already ejaculating in your face![or]Unfortunately, [FuckerDesc of M] manages to grab you again, holding you still as [he of M] ejaculates all over your face.[or][BigFuckerDesc of M] ejaculates anyway! Your reflexes kick in late and your face is already covered in a thick load of [semen] before you even think about getting out of the way.[or][BigFuckerDesc of M] groans, having already gone over the edge. You're much too slow to get out of the way, so you take a full ejaculation all over your face.[or]However, you're too slow to get out of the way before [FuckerDesc of M] jizzes all over your face.[or]Much to your displeasure, [FuckerDesc of M] manages to catch you in an instant, holding you in place for a sticky, disgusting facial.[or][if the semen addiction of the player < 8]However, [FuckerDesc of M] immediately grabs you again. You struggle in vain as [he of M] unloads all over your face.[otherwise if the semen addiction of the player < 12]However, [FuckerDesc of M] immediately grabs you again. You half-heartedly struggle as [he of M] unloads all over your face.[otherwise]However, [FuckerDesc of M] immediately grabs you again. You giggle happily as [he of M] unloads all over your face.[end if][or][if the semen addiction of the player < 9]Knowing what's coming, you try to get out of the way. Unfortunately, you're too slow, so there's nothing you can do to stop [FuckerDesc of M] from ejaculating all over your face.[otherwise if the semen addiction of the player < 13]Unfortunately, you find yourself without the will to struggle as [FuckerDesc of M] grabs you and force you to take a hot, sticky facial.[otherwise]Much to your delight, however, [FuckerDesc of M] manages to grab you and hold you in place for a hot, sticky facial.[end if][or][if the semen addiction of the player < 11]Knowing what's coming, you try to get out of the way. However, you're too slow, so there's nothing you can do to stop [FuckerDesc of M] from ejaculating all over your face.[otherwise]Finding yourself distracted by how yummy [his of M] [DickDesc of M] looks, there's nothing you can do to stop [FuckerDesc of M] from ejaculating all over your face.[end if][in random order]".

[!<SayUnavoidedFacialOfMonster>+

Displays some flavour describing the player receiving a facial after a blowjob

@param <Monster>:<M> The monster having oral sex with the player

+!]
To say UnavoidedFacial of (M - a monster):
	say "[one of][BigFuckerDesc of M] pushes you off [his of M] [DickDesc of M], and immediately jizzes all over your face.[or][BigFuckerDesc of M] pulls you off, gritting [his of M] teeth as [he of M] ejaculates all over your face.[or][BigFuckerDesc of M] pushes you away, quickly pumping [his of M] [DickDesc of M] to orgasm all over your face.[or][BigFuckerDesc of M] withdraws [his of M] [DickDesc of M] from your mouth, hissing through [his of M] teeth as [he of M] paints your face with a hot load of [semen].[or][BigFuckerDesc of M] withdraws from your mouth and immediately gives you a warm, messy facial.[or][BigFuckerDesc of M] pulls [his of M] [DickDesc of M] out of your mouth and tilts your head up. You barely have time to get your eyes closed before [he of M] gives you a thick, messy facial.[or][if the semen addiction of the player < 10][BigFuckerDesc of M] pushes you off [his of M] [DickDesc of M] as [he of M] goes over the edge. You gasp and recoil as [he of M] paints your face with hot ropes of [semen].[otherwise][BigFuckerDesc of M] pushes you off [his of M] [DickDesc of M] as [he of M] goes over the edge. You close your eyes and happily lean forward as [he of M] paints your face with hot ropes of [semen].[end if][or][if the semen addiction of the player < 7][BigFuckerDesc of M] pulls [his of M] [DickDesc of M] out of your mouth, finishing [himself of M] off with a few quick pumps. You shudder as [he of M] ejaculates all over your face.[otherwise if the semen addiction of the player < 13][BigFuckerDesc of M] pulls [his of M] [DickDesc of M] out of your mouth, finishing [himself of M] off with a few quick pumps. You gasp as [he of M] ejaculates all over your face.[otherwise][BigFuckerDesc of M] pulls [his of M] [DickDesc of M] out of your mouth, finishing [himself of M] off with a few quick pumps. You close your eyes and stick out your tongue as [he of M] ejaculates all over your face.[end if][or][if the semen addiction of the player < 9][BigFuckerDesc of M] shoves you away as hot ropes of [semen] explode from [his of M] [DickDesc of M]. You barely have time to shut your mouth before they splatter across your face.[otherwise if the semen addiction of the player < 11][BigFuckerDesc of M] shoves you away as hot ropes of [semen] explode from [his of M] [DickDesc of M]. You're surprised to find that your mouth is still open as they splatter across your face.[otherwise][BigFuckerDesc of M] shoves you away as hot ropes of [semen] explode from [his of M] [DickDesc of M]. You close your eyes and open your mouth as they fall across your face.[end if][in random order]".

[!<SayResistedOralCreampieOfMonster>+

Displays some flavour describing the player receiving a mouthful of semen after a blowjob when they tried to pull away

@param <Monster>:<M> The monster having oral sex with the player

+!]
To say ResistedOralCreampie of (M - a monster):
	say "[one of][BigFuckerDesc of M] holds you down just long enough to flood your mouth with a nice big load of [tasted-semen].[or][BigFuckerDesc of M] forces you to stay down, continuing to fuck your mouth even as [he of M] reaches orgasm and you begin to taste [his of M] salty [semen].[or][BigFuckerDesc of M] explodes into your mouth, filling it with the [semen-adjective] taste of [semen]. Thin strands of drool still connect [his of M] [DickDesc of M] to your [LipDesc] as [he of M] pulls out.[or][BigFuckerDesc of M] groans, tightening [his of M] grip as [he of M] begins to ejaculate, holding you down until your mouth has been thoroughly and completely filled with [tasted-semen].[or][BigFuckerDesc of M] barely manages to hold you down, [his of M] [DickDesc of M] only halfway in your mouth by the time [he of M] reaches orgasm. [if the semen taste addiction of the player < 8]You yelp indignantly as [he of M] paints your tongue with rope after rope of [tasted-semen].[otherwise if the semen taste addiction of the player < 12]You taste every single rope of [tasted-semen] [he of M] fires off into your mouth.[otherwise]You flatten your tongue against [his of M] opening, thoroughly tasting every last drip of [tasted-semen] shot into your mouth.[end if][in random order]".

[!<SaySubmittedOralCreampieOfMonster>+

Displays some flavour describing the player receiving a mouthful of semen after a blowjob when they didn't try to pull away

@param <Monster>:<M> The monster having oral sex with the player

+!]
To say SubmittedOralCreampie of (M - a monster):
	say "[one of][BigFuckerDesc of M] slows down, thrusting gently as [he of M] floods your mouth with a nice big load of [tasted-semen].[or][BigFuckerDesc of M] continues to fuck your mouth even as [he of M] reaches orgasm and you begin to taste [his of M] salty [semen].[or][BigFuckerDesc of M] explodes into your mouth, filling it with the [semen-adjective] taste of [semen]. Thin strands of drool still connect [his of M] [DickDesc of M] to your lips as [he of M] pulls out.[or][BigFuckerDesc of M] groans, tightening [his of M] grip as [he of M] begins to ejaculate. The [semen-adjective] taste of [semen] hits your tongue as [he of M] completely fills your mouth with [his of M] load.[or][BigFuckerDesc of M] pulls back a bit, so that [his of M] [DickDesc of M] is only halfway in your mouth when [he of M] reaches orgasm. [if the semen taste addiction of the player < 7]You squirm uncomfortably as [he of M] paints your tongue with rope after rope of [tasted-semen].[otherwise if the semen taste addiction of the player < 12]You taste every single rope of [tasted-semen] [he of M] fires off into your mouth.[otherwise]You flatten your tongue against [his of M] opening, thoroughly tasting every last drip of [tasted-semen] shot into your mouth.[end if][in random order]".

[!<SayAutomaticSwallowOfMonster>+

Displays some flavour describing the player reflexively swallowing semen after a blowjob

@param <Monster>:<M> The monster having oral sex with the player

+!]
To say AutomaticSwallow of (M - a monster):
	say "[one of]You swallow it without a second thought.[or]You swallow immediately, only realising a second later what you've done.[or]You swallow it without a moment to spare.[or]Before you give it so much as a second thought, you've already got [his of M] load slithering down your throat.[or]You suddenly feel so thirsty that you can't stop yourself from swallowing it all in one gulp.[or]Before you can stop yourself, you've already swallowed [his of M] load down to the last drop.[or][if the semen taste addiction of the player < 6]Despite the fact that every fibre of your being tells to spit, you find yourself swallowing every last drop.[otherwise if the semen taste addiction of the player < 10]You swallow every last drop, desperately insisting to yourself that it was because you were thirsty.[otherwise]You swallow every last drop, knowing full well that if you really wanted something else to drink, you would have looked harder.[end if][in random order]".

[!<SayVoluntarySwallowOfMonster>+

Displays some flavour describing the player intentionally swallowing semen after a blowjob

@param <Monster>:<M> The monster having oral sex with the player

+!]
To say VoluntarySwallow of (M - a monster):
	say "[if the semen taste addiction of the player < 9][one of]You drop your eyes, swallowing [his of M] load along with what's left of your pride.[or]You reluctantly swallow, scared of what [he of M] would do otherwise.[or]You swallow [his of M] load of your own free will, thoroughly humiliating yourself in the process.[or]Thoroughly humiliated, you swallow [his of M] load. At least nobody else will know what happened.[or]You shiver as you allow the foul-tasting fluid to slide down your throat and into your stomach.[in random order][otherwise if the semen taste addiction of the player < 13][one of]You shiver as the gooey fluid slides down your throat and into your stomach, knowing it will feed your growing addiction.[or]You swallow [his of M] load after a brief moment of hesitation.[or]You swallow obediently, knowing full well that you didn't have to.[or]You swallow without complaint, feeling strangely proud you did it all in one gulp.[or]You swallow every last drop, insisting to yourself it's because you didn't want to make a mess.[in random order][otherwise][one of]You open wide so [he of M] can see the [tasted-semen] in your mouth before swallowing it with a smile.[or]You make a show of playing with it before swallowing it all in one gulp.[or]You obediently swallow, licking the leftovers off your lower lip.[or]You gulp it down like the greedy little slut you are.[or]You swallow like an obedient little slut.[in random order][end if]".

[!<SayVoluntarySpitOfMonster>+

Displays some flavour describing the player spitting out a mouthful of semen after a blowjob

@param <Monster>:<M> The monster having oral sex with the player

+!]
To say VoluntarySpit of (M - a monster):
	say "[if the bimbo of the player < 8][one of]You crinkle your nose and immediately spit [his of M] load onto the floor.[or]You glare up at [him of M] as you spit [his of M] [semen] out and into a puddle on the floor.[or]You stare daggers at [him of M] as you let [his of M] [semen] dribble out of your mouth and onto the floor.[or]You tremble, allowing your mouth to stay open as [semen] leaves your mouth in thick, gooey clumps.[in random order][otherwise if the bimbo of the player < 12][one of]You avoid [his of M] gaze as you spit [his of M] [semen] out of your mouth and into a puddle on the floor.[or]You hope [he of M] won't be too angry with you as you let the [semen] dribble out of your mouth and onto the floor.[or]You lean over, hoping [he of M] won't notice as you spit [his of M] load on the floor.[or]You hurriedly spit it out, uncomfortable with how good it felt to take it in your mouth like a slut.[in random order][otherwise][one of]You lean over, lewdly pressing your [BreastDesc] together as [his of M] [semen] falls out of your mouth in thick clumps.[or]You immediately spit [his of M] load onto the floor, opening your mouth wide as if to ask [him of M] to replace it.[or]You glance up at [him of M] as [semen] dribbles out of your mouth, silently begging [him of M] for punishment.[or]You gaze up at [him of M], massaging your [BreastDesc] as you allow [his of M] load to dribble out of your mouth and into a puddle on the floor.[in random order][end if]".

[!<SayChestSpitOfMonster>+

Displays some text describing a monster forgiving the player after disobeying them in some way. Triggered by the compute angry forgiveness function

@param <Monster>:<M> The monster having forgiving the player

+!]
To say ForgivenessFlav of (M - a monster):
	say "[BigFuckerDesc of M] starts to look angry, but seems to forget all about it.";

[!<SayChestSpitOfMonster>+

Displays some flavour describing the player spitting out a mouthful of semen onto their breasts

@param <Monster>:<M> The monster having oral sex with the player

+!]
To say ChestSpit of (M - a monster):[TODO: maybe improve]
	say "[one of]You push your [ShortDesc of breasts] together and look up at [him of M][or][if the largeness of breasts < 7]You push up your breasts[otherwise]You lean back and push up your breasts[end if], holding your mouth open[or]You look [him of M] right in the eye as you open your mouth, pressing your [ShortDesc of breasts] together[at random] as [one of]you let [his of M] load dribble out on your chest[or][his of M] dribbles onto your chest in big gooey clumps[or]you let [his of M] load drip wetly onto your chest[or]as [his of M] load runs down your chin and pools in your cleavage[at random].";

[!<SayDeepthroatCreampieOfMonster>+

Displays some flavour describing the player deepthroating a monster as they ejaculate, along with an optional quip from the monster

@param <Monster>:<M> The monster having oral sex with the player

+!]
To say DeepthroatCreampie of (M - a monster):
	say DefaultDeepthroatDeclaration of M;
	say DefaultDeepthroatCreampie of M.

[!<SayDefaultDeepthroatDeclarationOfMonster>+

Optionally displays a taunt or a comment from a monster as they finish down the player's throat

@param <Monster>:<M> The monster having oral sex with the player

+!]
To say DefaultDeepthroatDeclaration of (M - a monster):
	do nothing.

[!<SayDefaultDeepthroatCreampieOfMonster>+

Displays some text describing the player deepthroating a monster as they ejaculate.

@param <Monster>:<M> The monster having oral sex with the player

+!]
To say DefaultDeepthroatCreampie of (M - a monster):
	say "[one of][BigFuckerDesc of M] tightens [his of M] grip, hissing through [his of M] teeth as [he of M] cums straight down your throat.[or][BigFuckerDesc of M][']s [DickDesc of M] throbs powerfully, firing off load after load of warm [semen] down your throat.[or][BigFuckerDesc of M] forces you all the way down, groaning as [he of M] ejaculates straight down your throat.[or][BigFuckerDesc of M] pulls you down as [he of M] begins to ejaculate, [his of M] balls slapping your chin as [his of M] load rushes down your throat.[or][BigFuckerDesc of M] buries [his of M] [DickDesc of M] as far into your mouth as it will go, jet after jet of [semen] pinging into the back of your throat.[or][BigFuckerDesc of M] forces [his of M] length down your throat, groaning as [he of M] fills your belly with a decent load.[or][BigFuckerDesc of M] forces you to take [his of M] [DickDesc of M] all the way to the hilt. You can do nothing but wait helplessly as [he of M] pumps [his of M] load directly into your belly.[or][if the semen taste addiction of the player < 7][BigFuckerDesc of M] forces you all the way down as [he of M] begins to ejaculate. There's nothing you can do but swallow as [his of M] [DickDesc of M] pumps [semen] directly into your mouth.[otherwise if the semen taste addiction of the player < 12][BigFuckerDesc of M] forces you all the way down as [he of M] begins to ejaculate. You obediently swallow as [his of M] [DickDesc of M] pumps [semen] directly into your mouth.[otherwise][BigFuckerDesc of M] forces you all the way down as [he of M] begins to ejaculate. You happily swallow as [his of M] [DickDesc of M] pumps [semen] directly into your mouth.[end if][or][if the semen taste addiction of the player < 7][BigFuckerDesc of M] forces [his of M] [DickDesc of M] deeper and deeper into your mouth, grunting as your lips hit [his of M] balls. Your eyes widen in horror as they empty themselves straight down your throat.[otherwise if the semen taste addiction of the player < 12][BigFuckerDesc of M] forces [his of M] [DickDesc of M] deeper and deeper into your mouth, grunting as your lips hit [his of M] balls. Your eyes widen as they empty themselves straight down your throat.[otherwise][BigFuckerDesc of M] forces [his of M] [DickDesc of M] deeper and deeper into your mouth, grunting as your lips hit [his of M] balls. You emit a muffled moan as they empty themselves straight down your throat.[end if][in random order]".

[!<SayOralResistingOfMonster>+

Displays some text describing the player resisting during a blowjob

@param <Monster>:<M> The monster having oral sex with the player

+!]
To say OralResisting of (M - a monster):
	say "[one of]You try as hard as you can to pull away, but [his of M] grip is simply too strong![or]You pull up, but [he of M] makes sure to shove you right back down![or]You grunt and try to pull away, but [he of M] simply holds you in place.[or]You claw at [his of M] hands, but [he of M] doesn't pay you any mind.[or]You fight [his of M] grip as much as you can, but in the end, [his of M] [DickDesc of M] stays in your mouth and you keep sucking it.[or]You try to pull [his of M] hands away, but [he of M][']s much too strong for you.[or]You push on [his of M] legs for leverage, but it's still no use![or][if the relevant sex addiction of M < 6]You stay completely still, blatantly refusing to do anything at all to pleasure [him of M].[otherwise if the relevant sex addiction of M < 14]You stay completely still, knowing that if you willingly pleasure [him of M] you might like it and not stop.[otherwise]You stay completely still, hoping [he of M] might *punish* you for slacking off.[end if][in random order]".

[!<SayOralResistingResponseOfMonster>+

Displays some text describing a monster having ongoing oral sex with the player when they are squirming

@param <Monster>:<M> The monster having oral sex with the player

+!]
To say OralResistingResponse of (M - a monster):
	say "[one of][BigFuckerDesc of M] seems determined to get [himself of M] off with or without your help![or][BigFuckerDesc of M] maintains a firm grip on the back of your head, determined to get [himself of M] off anyway.[or][BigFuckerDesc of M] forces you to suck [his of M] [DickDesc of M] whether you like it or not![or][BigFuckerDesc of M] thrusts with no regard for your ability to breathe![or][BigFuckerDesc of M] continues thrusting with no acknowledgement of your protests.[or][BigFuckerDesc of M] continues thrusting despite your protests![in random order]".

[!<SayOralSubmissionResponseOfMonster>+

Displays some flavour describing a monster having ongoing oral sex with a cooperative player

@param <Monster>:<M> The monster having oral sex with the player

+!]
To say OralSubmissionResponse of (M - a monster):
	if M is friendly-fucking:
		say FriendlySubOralResponse of M;
	otherwise:
		say NormalSubOralResponse of M.

[!<SayFriendlySubOralResponseOfMonster>+

Displays some text describing the player giving a blowjob to a friendly monster

@param <Monster>:<M> The monster having oral sex with the player

+!]
To say FriendlySubOralResponse of (M - a monster):
	say "[one of]You bob your head up and down, [if the humiliation of the player < 10000]eyes screwed shut in shame[otherwise if the humiliation of the player < 18000 or the player is feeling dominant]avoiding eye contact[otherwise]looking up at [FuckerDesc of M][end if] as you submissively polish [his of M] shaft.[or]You make [if the oral sex addiction of the player < 4]quiet[otherwise if the oral sex addiction of the player < 6]distinct[otherwise]exaggerated[end if] slurping noises as you suck [FuckerDesc of M][']s [DickDesc of M], [if the oral sex addiction of the player < 3]determined to get this over and done with as soon as possible[otherwise if the oral sex addiction of the player < 5]determined to get [him of M] off as soon as possible[otherwise]determined to get [him of M] shooting off in your mouth as soon as possible[end if].[or][BigFuckerDesc of M] guides the movement of your head as you [if the oral sex addiction of the player < 4]quietly [otherwise if the oral sex addiction of the player > 5]noisily [end if]suck [his of M] [DickDesc of M], [if the sex addiction of the player < 7]making you feel even more like a dirty slut. If that was even possible.[otherwise if the sex addiction of the player < 12]silently assuring you that you're doing a good job.[otherwise]allowing you to do all the work like the dirty slut you are.[end if][or][BigFuckerDesc of M] rolls [his of M] hips to complement the [if the oral sex addiction of the player > 5]enthusiastic [otherwise if the oral sex addiction of the player < 4]slow [end if]bobbing of your head.[or][BigFuckerDesc of M] allows you to do most of the work, [if the sex addiction of the player < 7]picking up the slack whenever the shame gets to be too much.[otherwise if the oral sex addiction of the player < 6]picking up the slack whenever you get tired.[otherwise]grunting with pleasure as you drag your tongue up [his of M] shaft.[end if][in random order]".

[!<SayNormalSubOralResponseOfMonster>+

Displays some text describing the player giving a blowjob to a monster

@param <Monster>:<M> The monster having oral sex with the player

+!]
To say NormalSubOralResponse of (M - a monster):
	say "[one of][BigFuckerDesc of M] thrusts at a good pace, holding on as if to make sure you won't stop.[or][BigFuckerDesc of M] breathes slowly, guiding you with one hand and clenching [his of M] other.[or][BigFuckerDesc of M] holds you tightly, rolling [his of M] hips to complement the bobbing of your head.[or][BigFuckerDesc of M] grunts in approval. However, [his of M] enjoyment doesn't seem to make [him of M] loosen [his of M] grip.[or][BigFuckerDesc of M] holds you with an almost uncomfortably tight grip, guiding your movement.[or][BigFuckerDesc of M] breathes steadily as you work, making sure not to loosen [his of M] hold at all.[in random order]".

[!<SayNearingClimaxOralOfMonster>+

Displays some text describing a monster having ongoing oral sex with the player when they are about to orgasm

@param <Monster>:<M> The monster having oral sex with the player

+!]
To say NearingClimaxOral of (M - a monster):
	say "[one of]You can feel [FuckerDesc of M]'s [DickDesc of M] start twitching in your mouth[or][BigFuckerDesc of M] breathes more and more rapidly[or][BigFuckerDesc of M]'s grip on your head noticeably tightens[in random order]. [big he of M] must be [one of]close[or]ready to cum[or]close to finishing[at random]!".

To compute facesit sex of (M - a monster):[see supporter framework for the defaults]
	if the oral sex addiction of the player > 6, passively stimulate face from M;
	if the sex-length of M is 1 and M is anticipating-climax:
		say NearingClimaxFacesit of M;
		decrease the sex-length of M by 1;
	otherwise:
		if the reaction of the player is 0:
			say FacesitResisting of M;
			say FacesitResistingResponse of M;
			if a random number between 1 and 2 is 1, decrease the sex-length of M by 1;
		otherwise:
			say FacesitSubmissionResponse of M;
			decrease the sex-length of M by 1;
			if the sex-length of M > 2 and there is a worn tongue piercing, decrease the sex-length of M by 1.

[If the monster wants another round after, sex length needs to be set above 0 in "unique facesit climax effect". If the monster shouldn't be satisfied, make them uninterested in the unique function]
To compute facesit climax of (M - a monster):
	say FacesitClimaxFlav of M;
	TimesSubmittedUp M by 1;
	compute unique facesit climax effect of M;
	LickCount;
	if the rounds of sex left of M <= 0 and M is interested:
		Satisfy M.

To compute unique facesit climax effect of (M - a monster):
	do nothing.

[!<SaySwallowDemandOfMonster>+

Displays some text describing a monster telling the player they have to swallow

@param <Monster>:<M> The monster that just finished oral sex with the player

+!]
To say SwallowDemand of (M - a monster):
	say "[BigNameDesc of M] gives you a stern look. It's clear that [he of M] wants you to swallow the [semen].".

[!<ComputeAngryPunishmentOfMonster>+

This function is called when the player makes a monster angry in some way, like disobeying an order

@param <Monster>:<M> A monster the player pissed off

+!]
To compute angry punishment of (M - a monster):
	say angry punishment insult of M;
	if M is not friendly-fucking and (M is not seduced or M is unfriendly):
		compute default angry punishment of M.

To compute default angry punishment of (M - a monster):
	let C be a random worn nudism-disabling currently at least partially visible stealable clothing; [ideally it wants to confiscate not destroy]
	let stealableFound be 1;
	if C is nothing:
		now stealableFound is 0;
		now C is a random worn nudism-disabling currently at least partially visible tearable clothing;
	if C is not clothing, rule fails;
	let D be a random top level protection nudism-disabling currently at least partially visible tearable clothing;
	if stealableFound is 1:
		let D be a random top level protection nudism-disabling currently at least partially visible stealable clothing;
		if D is nothing and the largeness of breasts > 3, now D is a random top level breasts protection nudism-disabling currently at least partially visible stealable clothing;
	otherwise:
		if D is nothing and the largeness of breasts > 3, now D is a random top level breasts protection nudism-disabling currently at least partially visible tearable clothing;
	if D is clothing, now C is D;
	if stealableFound is 1:
		compute M confiscating C;
		if C is accessory and C is plentiful:
			say angry punishment accessory confiscation of M;
		otherwise:
			say angry punishment clothing confiscation of M on C;
	otherwise:
		say "[BigNameDesc of M] brutally rips your [C] from your [body area of C]. It is completely destroyed!";
		say angry punishment clothing destruction of M on C;
		destroy C.

To compute sissy punishment of (M - a monster):
	compute default angry punishment of M;
	if the rule failed, compute sissification.

[!<SayAngryFizzleOfMonster>+

Optionally displays some comment from a monster after they try to punish the player in some way but couldn't find anything to tear off or steal

@param <Monster>:<M> A monster the player pissed off

+!]
To say AngryFizzleFlav of (M - a monster):
	do nothing.

[!<ComputeHappyRewardOfMonster>+

This function is called when the player pleases a monster in some way, like swallowing after being asked. Usually requires the player do something humiliating.

@param <Monster>:<M> The happy monster, usually as a reward for a pleasant blowjob

+!]
To compute happy reward of (M - a monster):
	if M is friendly-fucking:
		say "[speech style of M]'Keep that up and I might give you something for your trouble.'[roman type][line break]";
		FavourUp M by 1;
	FavourUp M by 1.

To compute happy oral reward of (M - a monster):
	do nothing.
	[FavourUp M by 1.] [For oral sex this was duplicating the gained favour from 'orgasm satisfy M' in the default facial climax function]

[!<SayAngryPunishmentInsultOfMonster>+

This should display some text when a monster decides to punish the player for some reason. Should be less severe for friendly monsters, since they will usually for a weaker punishment.

@param <Monster>:<M> A monster the player pissed off

+!]
To say angry punishment insult of (M - a monster):
	if M is intelligent and M is not friendly-fucking:
		say "[speech style of M]'Fucking bitch! Learn your place.'[roman type][line break]";
	otherwise if M is intelligent:
		say "[speech style of M]'Whatever, fucking bitch.'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] looks very [if the bimbo of the player < 12]angry[otherwise]disappointed[end if]!".

[!<SayAngryPunishmentAccessoryConfiscationOfMonster>+

This should display some text when a monster punishes the player by taking some jewellery

@param <Monster>:<M> A monster the player pissed off

+!]
To say angry punishment accessory confiscation of (M - a monster):
	if M is intelligent, say "[first custom style]'This is mine now.'[roman type][line break]";
	otherwise say "It looks like [he of M] intends to keep it, and there's not much you can do to prevent that!".

[!<SayAngryPunishmentClothingDesctructionOfMonster>+

This should display some text when a monster punishes the player by ripping off some clothing

@param <Monster>:<M> A monster the player pissed off

+!]
To say angry punishment clothing destruction of (M - a monster) on (C - a clothing):
	if M is intelligent, say "[first custom style]'[if C is actually breast covering and the largeness of breasts > 3]You don't deserve to have your slutty tits covered by this.'[otherwise if C is ass covering]Display your [fuckholes] to everyone, like the true whore you are.'[otherwise if the number of worn clothing > 1]Sluts don't deserve clothes! There, now you are one step closer to being buck naked.'[otherwise]Sluts don't deserve clothes!'[end if][roman type][line break]";
	otherwise say "It looks like [he of M] is satisfied with leaving it at that.".

[!<SayAngryPunishmentClothingConfiscationOfMonster>+

This should display some text when a monster punishes the player by confiscating some clothing

@param <Monster>:<M> A monster the player pissed off

+!]
To say angry punishment clothing confiscation of (M - a monster) on (C - a clothing):
	say angry punishment clothing destruction of M on C.

[!<SayMouthPenetrationFlavOfMonster>+

Displays some flavour describing a monster penetrating the player orally. If the monster doesn't want any of the default oral penetration flavour, this function should be overwritten.

@param <Monster>:<M> The monster targeting face
+!]
To say MouthPenetrationFlav of (M - a monster):
	say DefaultMouthPenetrationFlav of M.

[!<SayDefaultMouthPenetrationFlavOfMonster>+

The default function used to display oral penetration flavour.

@param <Monster>:<M> The monster targeting face
+!]
To say DefaultMouthPenetrationFlav of (M - a monster):
	if presented-orifice is face:
		say FriendlyMouthPenetrationFlav of M;
	otherwise if there is a worn ringagged clothing:
		say RingMouthPenetrationFlav of M;
	otherwise if the latex-transformation of the player > 6:
		say SexDollMouthPenetrationFlav of M;
	otherwise:
		say NormalMouthPenetrationFlav of M.

[!<SayNormalMouthPenetrationFlavOfMonster>+

Displays some text when the player is penetrated orally by a male monster

@param <Monster>:<M> The monster entering face
+!]
To say NormalMouthPenetrationFlav of (M - a monster):
	if the oral sex addiction of the player < 8:
		say "[one of][BigFuckerDesc of M] pinches your nose, shoving [his of M] [DickDesc of M] in your mouth as soon as you try to breathe. You glare up at [him of M] as [he of M] begins to thrust.[or][BigFuckerDesc of M] puts one hand on the back of your head, grinning. You open your mouth to insult [him of M], but [he of M] immediately inserts [his of M] [DickDesc of M] and begins to thrust.[or][BigFuckerDesc of M] points to your mouth, slowly stroking [his of M] [DickDesc of M]. You snarl.[line break][first custom style]'Not on your life bud-'[roman type][line break][he of M] cuts you off by immediately shoving [himself of M] into your mouth. You stare at [him of M] lividly as [he of M] begins to thrust.[or][if the delicateness of the player < 7][BigFuckerDesc of M] points to your mouth, grinning. You spit at [his of M] feet.[line break][first custom style]'Go fuck yourself assh-'[roman type][line break][he of M] cuts you off by immediately shoving [his of M] [DickDesc of M] in your mouth. You glare at [him of M] as [he of M] begins to thrust.[otherwise][BigFuckerDesc of M] points to your mouth, grinning. You slowly and fearfully open it, shuddering as [his of M] [DickDesc of M] slides past your lips.[end if][in random order]";
	otherwise if the oral sex addiction of the player < 12:
		say "[one of][BigFuckerDesc of M] points to your mouth, slowly stroking [his of M] [DickDesc of M]. You obediently open it, emitting a slow sigh through your nose as it slides through your lips.[or][BigFuckerDesc of M] puts one hand on the back of your head. Knowing what's to come, you slowly open your mouth and accept [his of M] invading shaft.[or][BigFuckerDesc of M] points to your mouth, grinning. You open and loll out your tongue, avoiding eye contact with [him of M] as [his of M] [DickDesc of M] slides through your lips.[or][BigFuckerDesc of M] places [his of M] hand on your shoulder, guiding [his of M] [DickDesc of M] to your lips with the other. You obediently open your mouth to allow [him of M] inside.[in random order]";
	otherwise:
		say "[one of][BigFuckerDesc of M] positions [his of M] [DickDesc of M] between your lips. You immediately open them, sighing contentedly as [he of M] enters your mouth.[or][BigFuckerDesc of M] points to your mouth, grinning. You obediently loll out your tongue, gazing at [him of M] reverently as [his of M] [DickDesc of M] slides through your lips.[or][BigFuckerDesc of M] places one hand on your shoulder. You greedily lean forward and take [his of M] [DickDesc of M] into your mouth.[or][BigFuckerDesc of M] puts [his of M] hand on the back of your head. You submissively part your lips and accept [his of M] [DickDesc of M] into your mouth.[in random order]".

[!<SayRingMouthPenetrationFlavOfMonster>+

Displays some text when the player is penetrated orally by a male monster whilst wearing an item that forces their mouth to stay open

@param <Monster>:<M> The monster entering face
+!]
To say RingMouthPenetrationFlav of (M - a monster):
	say "[one of][BigFuckerDesc of M] puts [his of M] hand on the back of your head, guiding [his of M] [DickDesc of M] through your gag and into your mouth.[or][BigFuckerDesc of M] slides [his of M] [DickDesc of M] through your gag. With no way of resisting[if the relevant sex addiction of M > 12], and no motivation,[end if] you have to sit there and take it as [he of M] begins to aggressively fuck your face.[or][if the relevant sex addiction of M < 7][BigFuckerDesc of M] slides [his of M] [DickDesc of M] through your gag. You emit a muffled grunt of indignation as [he of M] begins to thrust.[otherwise if the relevant sex addiction of M < 10][BigFuckerDesc of M] slides [his of M] [DickDesc of M] through your gag. You emit a muffled grunt as [he of M] begins to thrust.[otherwise]Your eyes roll back in your head as [FuckerDesc of M] slides [his of M] [DickDesc of M] through your gag and into your mouth.[end if][or][if the relevant sex addiction of M < 8]Your eyes widen in horror as [FuckerDesc of M] slides [his of M] [DickDesc of M] through your gag and into your mouth.[otherwise if the relevant sex addiction of M < 13]Your eyes widen with excitement as [FuckerDesc of M] slides [his of M] [DickDesc of M] through your gag and into your mouth.[otherwise][BigFuckerDesc of M] slides [his of M] [DickDesc of M] through your gag. You emit a muffled sigh of satisfaction as [he of M] begins to thrust.[end if][in random order]".

[!<SaySexDollMouthPenetrationFlavOfMonster>+

Displays some text when the player is penetrated orally by a male monster whilst under the effects of the living sex doll transformation

@param <Monster>:<M> The monster penetrating face
+!]
To say SexDollMouthPenetrationFlav of (M - a monster):
	say "[one of][BigFuckerDesc of M] pushes [his of M] rock hard [DickDesc of M] into the padded hole you call a mouth, planting one hand on the back of your head as [he of M] begins guiding you back and forth.[or][BigFuckerDesc of M] slides [his of M] [DickDesc of M] between your soft, plastic lips, which make faint squeaking noises as he guides your head back and forth.[or][BigFuckerDesc of M] puts one hand on the back of your head as [he of M] guides [his of M] [DickDesc of M] through your puffy plastic lips.[or]You look up at [FuckerDesc of M] as [his of M] [DickDesc of M] enters your mouth, knowing [he of M] only sees your face as just another hole to be used.[in random order]".

[!<SayFriendlyMouthPenetrationFlavOfMonster>+

Displays some text when the player is penetrated orally by a friendly male monster

@param <Monster>:<M> The monster penetrating face
+!]
To say FriendlyMouthPenetrationFlav of (M - a monster):
	if the sex addiction of the player < 5 or the oral sex addiction of the player < 3:
		say "[one of][if the player is not wrist bound]You gingerly grab [FuckerDesc of M]'s [Dickdesc of M], trying not to wretch as you slide it between your lips.[otherwise]You force yourself not to jerk back as [FuckerDesc of M] places [his of M] hands on your shoulders, shuddering with disgust as [his of M] [LongDickDesc of M] slides between your lips.[end if][or]You wrap your lips around [FuckerDesc of M]'s [DickDesc of M], forcing yourself not to pull back as [he of M] places [his of M] hands on either side of your head.[or]You force yourself to lean forward, screwing your eyes shut as [FuckerDesc of M]'s throbbing penis slides into your mouth.[or][if the largeness of breasts > 5][BigFuckerDesc of M] fondles your [BreastDesc], leaving [his of M] [DickDesc of M] to stare you in the face. It's everything you can do not to angrily smack [his of M] hands away as [his of M] hardness slides between your lips.[otherwise][BigFuckerDesc of M] pushes [his of M] [DickDesc of M] into your open mouth, grinning down at you as you force yourself not to jerk out of [his of M] grip.[end if][or][BigFuckerDesc of M] shoves [his of M] [DickDesc of M] into your open mouth. Your cheeks burn with shame as you slowly begin to suck.[or][BigFuckerDesc of M] pushes [his of M] [DickDesc of M] into your mouth and begins to guide your head back and forth. You lower your eyes, ashamed.[in random order]";
	otherwise if the oral sex addiction of the player < 7:
		say "[one of][BigFuckerDesc of M] shoves [his of M] [DickDesc of M] into your open mouth and begins to guide your head back and forth. You hesitantly take your place as [his of M] obedient little cocksucker.[or][BigFuckerDesc of M] pushes [his of M] [DickDesc of M] into your open mouth. You push aside your misgivings and eagerly begin to suck.[or]You give [FuckerDesc of M]'s [DickDesc of M] an experimental lick, furtively glancing up at [him of M] as you allow it to slide into your mouth.[or][if the player is not wrist bound]You give the [DickDesc of M] in front of you a few hesitant tugs, embarrassment colouring your cheeks as [FuckerDesc of M] pushes [his of M] member into your open mouth.[otherwise]You shiver with what you pretend is disgust as [FuckerDesc of M] places [his of M] hands on your shoulders, pushing every inch of [his of M] firm, [DickDesc of M] into your open mouth.[end if][or]You lean forward, gingerly wrapping your lips around [FuckerDesc of M]'s [DickDesc of M] before you start getting second thoughts. [if M is unfriendly]Just as they set in, a firm hand grabs the back of your head, assuring you that you're in this until [he of M] decides you're finished.[end if][or][if the largeness of breasts > 5][BigFuckerDesc of M] fondles your [BreastDesc], leaving [his of M] [DickDesc of M] to stare you in the face. You look up at [him of M], and obediently lean forward as [his of M] hardness slides between your lips.[otherwise][BigFuckerDesc of M] pushes [his of M] [DickDesc of M] into your open mouth, ruffling your [ShortDesc of hair] as you hesitantly, but obediently begin to suck.[end if][or][BigFuckerDesc of M] shoves [his of M] [DickDesc of M] into your open mouth. Without too much of a second thought, you slowly begin to suck.[in random order]";
	otherwise:
		say "[one of][BigFuckerDesc of M] shoves [his of M] [DickDesc of M] into your open mouth. You hum happily as you begin to suck.[or][BigFuckerDesc of M] pushes [his of M] [DickDesc of M] into your open mouth. You gaze up at [him of M] as you eagerly bob your head back and forth.[or][if the player is not wrist bound]You wrap your fingers around [FuckerDesc of M]'s [DickDesc of M], moaning like the dirty whore you are as [he of M] slides it into your mouth.[otherwise]You drag your tongue up and down [FuckerDesc of M]'s shaft, moaning lecherously as [his of M][line break][second custom style]delicious[roman type][line break]meat slides into your mouth.[end if][or][if the largeness of breasts > 5]You wrap your lips around [FuckerDesc of M]'s [DickDesc of M] as [he of M] manhandles your [BreastDesc], locking eyes with [him of M] as you eagerly begin to suck.[otherwise][BigFuckerDesc of M] pushes [his of M] [DickDesc of M] into your open mouth, grinning down at you as you desperately worship [his of M] length with your tongue and throat.[end if][or][BigFuckerDesc of M] shoves [his of M] [DickDesc of M] into your open mouth. Your lips close around the invader at their first opportunity, all too eager [if the semen taste addiction of the player > 8]for that spermy goodness[otherwise]to get to work[end if].[or][BigFuckerDesc of M] pushes [his of M] [DickDesc of M] into your mouth and begins to guide your head back and forth. You give [him of M] a smouldering look, eagerly leaning into [his of M] movements as you rub [his of M] shaft with your tongue.[in random order]".

[!<SayTitfuckResistFlavOfMonster>+

Displays some text describing the player resisting during a titfuck

@param <Monster>:<M> The monster fucking the player's breasts
+!]
To say TitfuckResistFlav of (M - a monster):
	let C be a random worn top level covering clothing;
	say "[one of]You try and pry [his of M] hands off, but [he of M]'s too strong![or]You do everything you can to push [him of M] away, but [if C is clothing]your [ShortDesc of C] keeps [him of M] firmly sandwiched between your breasts![otherwise]you simply don't have the leverage from your position on your knees![end if][or]You struggle but you can't get away![or]You resist, but you simply can't get away![or]You try to push [him of M] away, but [he of M] stays right on top of you.[in random order]".

[!<SayTitfuckForceFlavOfMonster>+

Displays some text describing a monster using the player's breasts for a titfuck

@param <Monster>:<M> The monster fucking the player's breasts
+!]
To say TitfuckForceFlav of (M - a monster):
	let C be a random worn top level covering clothing;
	say "[one of][if C is clothing]The [ShortDesc of C][otherwise][BigFuckerDesc of M][end if] keeps your [ShortDesc of breasts] pushed together around [FuckerDesc of M][']s [DickDesc of M] as [he of M] thrusts between them.[or][BigFuckerDesc of M] continues to powerfully thrust between your [ShortDesc of breasts]![or]Your [ShortDesc of breasts] jiggle[if the largeness of breasts > 10] obscenely[end if] as [FuckerDesc of M] continues thrusting between them![or][BigFuckerDesc of M] forces you to hold your [ShortDesc of breasts] together as [he of M] roughly thrusts between them.[or][BigFuckerDesc of M] holds you by the wrists, keeping your [ShortDesc of breasts] wrapped around [his of M] [DickDesc of M] as [he of M] thrusts between them.[in random order]".

[!<SayTitfuckReceiveFlavOfMonster>+

Displays some text describing the player giving a monster a titfuck

@param <Monster>:<M> The monster fucking the player's breasts
+!]
To say TitfuckReceiveFlav of (M - a monster):
	say "[one of][BigFuckerDesc of M] continues to enthusiastically thrust in between your [ShortDesc of breasts]![or]You [if the relevant sex addiction of M < 8]hesitantly[otherwise]eagerly[end if] continue pumping [his of M] [DickDesc of M] with your [ShortDesc of breasts].[or]You continue to massage [his of M] [DickDesc of M] with your [ShortDesc of breasts].[or]You [if the player is in a blindroom]sniff[otherwise]stare[end if] at [his of M] [DickDesc of M] [if the relevant sex addiction of M < 5]with undisguised disgust[otherwise if the relevant sex addiction of M < 10]with what you decide is curiosity[otherwise]with barely contained hunger[end if] as it thrusts between your [ShortDesc of breasts].[or][BigFuckerDesc of M]'s [DickDesc of M] gently bumps your chin as [he of M] enthusiastically thrusts it between your [ShortDesc of breasts].[or]You [if the relevant sex addiction of M < 5]dejectedly[otherwise]happily[end if] massage the [if the bimbo of the player < 7]gross[otherwise]firm, hard[end if] [DickDesc of M] between your [if the largeness of breasts > 10]wobbling[otherwise]jiggling[end if] breasts.[in random order]".

[!<SayTitfuckNearingClimaxFlavOfMonster>+

Displays some text describing a monster getting close to climax whilst using the player's breasts

@param <Monster>:<M> The monster fucking the player's breasts
+!]
To say TitfuckNearingClimaxFlav of (M - a monster):
	say "[one of][BigFuckerDesc of M] fucks your [BreastDesc] with greater and greater enthusiasm[or]You can feel [FuckerDesc of M]'s [DickDesc of M] begin to twitch as [he of M] uses your [BreastDesc][or][BigFuckerDesc of M] thrust between your [BreastDesc] with more and more urgency[at random]. [big he of M] must be ready to cum!";

[!<SayCleavageClimaxFlavOfMonster>+

Displays some text describing a monster ejaculating whilst using the player's breasts

@param <Monster>:<M> The monster fucking the player's breasts
+!]
To say CleavageClimaxFlav of (M - a monster):
	say "[BigFuckerDesc of M] ejaculates, covering your [ShortDesc of breasts] in [his of M] [semen]!".

[!<SayErectionDemandOfMonster>+

Displays some text describing a monster instructing the player to get an erection. Can be speech, gestures or whatever, but it should be clear that the monster is expecting an erection from the player.

@param <Monster>:<M> The monster intending to use the player's penis
+!]
To say ErectionDemand of (M - a monster):
	say "[line break][speech style of M]'Alright, slut. Get nice and hard for me.'[roman type][line break]".

[!<SayFriendlyErectionPenetrationFlavOfMonster>+

Displays some text describing a monster mounting the player's penis

@param <Monster>:<M> The monster using the player's penis
+!]
To say FriendlyErectionPenetrationFlav of (M - a monster):
	say ErectionPenetrationFlav of M.

[!<SayErectionPenetrationFlavOfMonster>+

Displays some text describing the player allowing a monster to mount their penis

@param <Monster>:<M> The monster using the player's penis
+!]
To say ErectionPenetrationFlav of (M - a monster):
	say "[BigNameDesc of M] mounts your [ShortDesc of penis].".

[!<ComputeUnerectTauntingOfMonster>+

Handles anything that needs to happen when a monster tells the player to get an erection, and the player can't

@param <Monster>:<M> The monster that told the player to get an erection
+!]
To compute unerect taunting of (M - a monster):
	say "[BigNameDesc of M] glances down at your [ShortDesc of penis] expectantly. Your cheeks burn with shame as it remains completely soft. [BigNameDesc of M] [one of]flicks it, watching it flop limply, [or]nudges you so it shifts limply, [or]rolls it, eyeing it like it's some kind of especially unimpressive worm, [or][at random]rolls [his of M] eyes and loses interest.";
	strongHumiliate;
	Bore M.

[!<SayErectionForceFlavOfMonster>+

Displays some text describing a monster using the player's penis

@param <Monster>:<M> The monster using the player's penis
+!]
To say ErectionForceFlav of (M - a monster):
	say "[BigNameDesc of M] holds you down as [he of M] aggressively uses your [ShortDesc of penis].".

[!<SayErectionUseFlavOfMonster>+

Displays some text describing the player allowing a monster to use their penis

@param <Monster>:<M> The monster using the player's penis
+!]
To say ErectionUseFlav of (M - a monster):
	say "[BigNameDesc of M] moans happily as [he of M] uses your [ShortDesc of penis].".

[!<SayErectionLostFlavOfMonster>+

Displays some text describing a monster reacting when the player loses their erection during sex.

@param <Monster>:<M> The monster using the player's penis
+!]
To say ErectionLostFlav of (M - a monster):
	say "[BigNameDesc of M] gives you a nonplussed look as your [ShortDesc of penis] goes soft.";
	FavourDown M by 1;
	Bore M;
	now the sex-length of M is 1.[so it can be reduced by 1]

[!<SayErectionNearingClimaxFlavOfMonster>+

Displays some text describing a monster getting close to climax whilst using the player's penis

@param <Monster>:<M> The monster using the player's penis
+!]
To say ErectionNearingClimaxFlav of (M - a monster):
	say "[BigNameDesc of M] moves faster and faster. [big he of M] must be close!".

[!<ComputeErectionOrgasmOfMonster>+

Displays some text describing the player ejaculating whilst penetrating a monster.

@param <Monster>:<M> The monster occupying the player's penis
+!]
To compute erection orgasm of (M - a monster):
	follow the default ejaculation rule;
	now penis is not penis-erect.[Although the above line is a default, and should be changed, this line should almost always be included, since automatic erection loss skipped if anything is penetrating penis]

[!<SayErectionClimaxFlavOfMonster>+

Displays some text describing a monster finishing up using the player's penis

@param <Monster>:<M> The monster using the player's penis
+!]
To say ErectionClimaxFlav of (M - a monster):
	say "[BigNameDesc of M] screams out in satisfaction as [he of M] climaxes.";
	orgasm M.

To say (M - a monster) sex reaction:
	say "".

To compute labour to (M - a monster):[Should never appear]
	say "Tried to give birth but the parent of the baby ([MediumDesc of M]) has not been accounted for, please report this bug!";
	now the pregnancy of the player is 0.

To compute fatherhood to (M - a monster): [no reason to check for successful pregnancy here, since we already know pregnancy was not delayed at this point.]
	if M is not alive:
		say DefaultBirthScene;
		if debugmode is 1, say "The father was [M], but [he of M] was dead.";
	otherwise:
		now M is mating;
		calm M;
		regionally place M;
		distract M.

[!<ComputeRacialSubmissionToMonster>+

Handles the player automatically submitting to a monster due to interracial fetish

@param <Monster>:<M> The monster the player is submitting to
+!]
To compute racial submission to (M - a monster):
	if M is dark skinned and M is male and a random number between 8 and 11 < the bbc addiction of the player + (the square root of the delicateness of the player):
		now auto is 1;
		let B be a random actually presentable body part;
		if B is not face and face is actually presentable and M is male and the player is craving semen and M is willing to do oral, now B is face;
		if the player is a butt slut and asshole is actually presentable and M is willing to do anal, now B is asshole;
		if the player is a pussy slut and vagina is actually presentable and M is willing to do vaginal, now B is vagina;
		if the player is a tit slut and M is male and M is willing to do titfucks and breasts are actually presentable, now B is breasts;
		if the sensitivity of breasts > 7 and there is a worn nipple chain and M is male and M is willing to do titfucks, now B is breasts;
		now auto is 0;
		if B is body part:
			say "[one of]For some reason you[or]You once again[stopping] can't help but want to [if the player is upright]drop to your knees and [end if][if B is body part]present yourself[otherwise]beg for [his of M] [BlackCock][end if].";
			compute silent surrender to M;
			if the player is prone, try direct-presenting B to M.

phero-horny-charge is a number that varies.

A time based rule (this is the musk horniness rule):
	if mythical creature fetish is 0:
		do nothing;
	otherwise if minotaur is in the location of the player and the class of the player is cowgirl and the player is not horny and the player is able to get horny:
		say "[one of]All it takes is one whiff of [NameDesc of minotaur]'s virile musk to send a wave of arousal rippling through your body.[or][BigNameDesc of minotaur]'s musk sends another wave of arousal through your body![stopping][line break][second custom style]'[one of]M-moooo.'[or]M-mm...moooooo.'[or]Moooo.'[then at random][roman type][line break]";
		now the arousal of the player is 8000;[the cowgirl is instantly horny in the same room as the minotaur, no matter what]
		if lactation fetish is 1:
			say "You feel [one of]an odd shiver[or]a feeling of warmth[or]a warm glow[at random] in your chest.";
			increase the lactation rate of the player by 1;
		now phero-horny-charge is 0;
	otherwise if the player is pheromonal and there is a musky monster in the location of the player:
		let M be a random musky monster in the location of the player;
		say "Spending time close to [NameDesc of M] causes your body to react to [his of M] [if pregnancy fetish is 1]virile[otherwise]potent[end if] hormones.";
		increase phero-horny-charge by 2;
		if phero-horny-charge > 30:
			compute phero submission to M;
		otherwise:
			say "You get even more aroused!";
			arouse 300;
			[if lactation fetish is 1:
				say "You feel [one of]an odd shiver[or]a feeling of warmth[or]a warm glow[at random] in your chest and for some reason [one of]find your attention caught by your nipples[or]picture a baby held to your [BreastDesc][or]licking your lips[at random].";
				increase the lactation rate of the player by 1;] [would happen every turn they stayed in the room lol]
	otherwise if playerRegion is dungeon and minotaur is alive and the player is pheromonal:
		increase phero-horny-charge by 1;
		if phero-horny-charge > 20:
			now phero-horny-charge is 0;
			say "[bold type][one of]You catch a whiff of a heavy, masculine scent and start to feel a little more turned on[or]The same masculine scent tickles your nose, and you feel yourself getting more turned on[or]Another whiff of masculine musk temporarily arrests your senses, and you get a little more turned on[stopping].[roman type]";
			if lactation fetish is 1:
				say "You feel [one of]an odd shiver[or]a feeling of warmth[or]a warm glow[at random] in your chest.";
				increase the lactation rate of the player by 1;
			arouse 150.

To compute phero submission to (M - a monster):
	if M is musky and mythical creature fetish is 1 and a random number between 3 and 7 > the intelligence of the player:
		now auto is 1;
		let B be a random actually presentable body part;
		if B is not vagina and vagina is actually presentable and M is male and M is willing to do vaginal, now B is vagina;
		if B is not asshole and asshole is actually presentable and M is male and M is willing to do anal, now B is asshole;
		if B is not breasts and the class of the player is cowgirl and M is male and M is willing to do titfucks, now B is breasts;
		now auto is 0;
		if B is body part:
			say "You can't take it anymore! You immediately [if the player is upright]drop to your knees[otherwise]crawl over[end if] and present yourself for [if pregnancy fetish is 1 and B is vagina]breeding[otherwise]the use of this virile stud[end if].";
			compute silent surrender to M;
			if the player is prone, try direct-presenting B to M.

To compute (M - a monster) buttplugging with (P - a sex toy):
	say ButtplugFlav of M with P;
	now P is not penetrating vagina; [Just in case]
	now P is worn by the player;
	now P is sure;
	now P is identified;
	now P is penetrating asshole;
	ruin asshole;
	if P is cursed and the quest of P is no-clothing-quest, compute summoned quest of P.

To say ButtplugFlav of (M - a monster) with (P - a sex toy):
	say "[BigFuckerDesc of M] [if P is off-stage]produces a[otherwise]takes the[end if] [P] and pushes it into your [asshole]!".

[!<ComputeGhostFleeingOfMonster>+

Handles a monster running away from a ghost as it charges its ectoplasm attack

@param <Monster>:<M> The monster trying to leave the room
+!]
To compute ghost fleeing of (M - a monster):
	say "[BigFuckerDesc of M] immediately begins to look for a way out of the room.";
	now the scared of M is 10.

To compute (M - a monster) sleeping (N - a number) after sex:
	now the sleep of M is N;
	if newbie tips is 1, say sleeping tip.

[!<SayGangAnnounce>+

This should display some text if the player is currently being fucked by more than one thing at a time.

+!]
To say GangAnnounce:
	let V be a random live thing penetrating vagina;
	let O be a random live thing penetrating face;
	let A be a random live thing penetrating asshole;
	if V is live thing and A is live thing:
		if debugmode > 0, say "((Fucked by [V][if O is a live thing], [O][end if] and [A]))";
		say "[line break][bold type]You're being [if O is live thing]triple[otherwise]double[end if] penetrated![roman type][line break]";
	otherwise if O is monster and (A is live thing or V is live thing):
		if debugmode > 0, say "((Fucked by [O] and [if A is live thing][A][otherwise][V][end if]))";
		say "[line break][bold type]You're being spit roasted![roman type][line break]".

Special Events ends here.
