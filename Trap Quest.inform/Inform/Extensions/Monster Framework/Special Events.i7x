Special Events by Monster Framework begins here.

[Here we address the player being pissed on by an unknown entity.  But we keep the flavour neutral so it doesn't matter.]
To FacePiss:
	if the player is upright, try kneeling;
	if the player is not forced to drink urine and the player is not gagged, say "Do you drink the [urine]? [yesnolink] ";
	if the player is gagged:
		compute urine hitting face;
	otherwise if there is a worn hood:
		say "Your ring gag means that the [urine] flows straight into your mouth, forcing you to swallow it.";
		DrinkPiss;
	otherwise if the thirst of the player is 5 and the humiliation of the player <= 27500:
		say "Your thirst overwhelms you and you can't help but open your mouth to wet your tongue and throat.";
		DrinkPiss;
	otherwise if the player is desperate to drink urine:
		say "You don't even hesitate - you immediately open your mouth and start collecting as much as you can.";
		DrinkPiss;
	otherwise if the player consents:
		DrinkPiss;
	otherwise:
		let V be nothing;[We check if the player wants to collect some in a vessel, and output some unique flavour text.]
		if the player is not flying and the player is not monster stuck, now V is the juice-collector;
		if V is held:
			say "You position the [printed name of V] below your chin just in time, as your hair, face and mouth are blasted by a stream of [urine].  [one of]As your [printed name of V] quickly fills up you realise that the only thing more humiliating than being used as a toilet is being witnessed saving some for later!  [or][stopping]";[But no extra humiliation hit?]
			now the doses of V is max-doses of V;
			now the fill-colour of V is golden;
			now V is monster-origin;
		otherwise:	
			say "Your face is blasted by a stream of [urine].  ";
		compute urine hitting face;
	if the urine taste addiction of the player > 14:
		say "The experience [one of]of getting pissed on now [or][stopping][if the player is a bit horny]arouses you further[otherwise]turns you on[end if].";
		arouse (the urine taste addiction of the player - 14) * 150;
	let C be a random worn WC thigh high boots;
	if C is clothing:
		say "[bold type]Your [C][bold type] pulse and glow!  ";
		increase the powerup of C by a random number between 10 and 15;
		if the powerup of C > 15 and C is stumbling:
			say "You feel the stumbling enchantment being suppressed, and replaced by one that strengthens your kicks!  Wow!";
			now C is kicking;
		say "[roman type][line break]".

To decide which bottle is the juice-collector:
	if debugmode is 1, say "there are [open-topped-vessel-count] open topped vessels held by the player.";
	repeat with V running through open topped vessels held by the player:
		say "Collect some into the [printed name of V][if the doses of V > 0] (You'll lose its current contents of [PotionType of V])[end if]? [yesnolink] ";
		if the player consents:
			if the doses of V > 0:
				say "You tip the contents of the [printed name of V] onto the floor.";
				dump V;
			decide on V;
	decide on a random off-stage bottle.[if there are no open topped vessels, or the player doesn't want to use any of them, decide on something we know the player isn't holding]

Definition: a person is desperate to drink:
	if the thirst of the player > 3, decide yes;
	decide no.

Definition: a person is desperate to drink semen:
	if the thirst of the player is 5, decide yes;
	if the player is desperate to drink and the semen taste addiction of the player > 10, decide yes;
	if the player is craving and the player is not overly full, decide yes;
	decide no.

Definition: a person is desperate to drink urine:
	if the thirst of the player is 5, decide yes;
	if the player is desperate to drink and the urine taste addiction of the player > 5, decide yes;
	if the urine taste addiction of the player > 8 and the player is not overly full, decide yes;
	decide no.

Definition: a person is forced to drink urine:
	if there is a worn hood, decide yes;
	if the player is desperate to drink urine, decide yes;
	decide no.

To compute urine hitting face:
	say "[one of]It's even hotter than you were expecting and the unmistakable smell clings to your nostrils.  [or]The heat and feeling of the stream is familiar to you now, and you [if the humiliation of the player > 27500]obediently [end if]sit there silently holding your breath until the flow begins to die.  [stopping]";
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

To DrinkPiss:
	Humiliate 1050 - (the urine taste addiction of the player * 50);
	StomachUp 3;
	say "[one of]You have never experienced anything close to the humiliation of voluntarily drinking another person's [urine].  A small voice inside you is warning you that you can never go back to a time before you were literally used as a human toilet.[or]You once again [if there is a worn hood]have no choice but to[otherwise]voluntarily[end if] gulp down the [urine], taking your place as a human toilet.[stopping][if the urine taste addiction of the player > 15][second custom style][one of]Mmm, this tastes amazing![or]Delicious![or]Yummy![or]Scrumptious.[or]Tasty![then at random][roman type][line break][otherwise if the urine taste addiction of the player > 12][one of]You are really starting to enjoy the taste![or][stopping][otherwise if the urine taste addiction of the player > 6][one of]You are starting to get used to the taste, and don't find it as awful as you used to.[or][stopping][end if]";
	let H be a random white hood;
	if H is worn:
		compute full class outfit of H;
		if the class of the player is human toilet and a random number between the raw dexterity of the player and 30 < 25:
			say "You feel more limber!";
			DexUp 1;
	otherwise if H is actually summonable and H is off-stage:
		summon H cursed;
		say "[bold type]Suddenly your mouth is forced wide open as a [H] [bold type]appears around your head.  You can't close it![roman type][line break]";
	UrineTasteAddictUp 1;
	let P be a random worn WC plug panties;
	if P is clothing:
		say "[bold type]Your [if the player is female][fuckholes] feel[otherwise][asshole] feels[end if] amazing![roman type]  Suddenly [if the player is female]you feel rushes of energy from your [P], and now they are[otherwise]you feel a rush of energy from your [P], and now it is[end if] completely healed!  Wow!";
		now the soreness of asshole is 0;
		now the tolerated of asshole is 0;
		now the soreness of vagina is 0;
		now the tolerated of vagina is 0.


[!<AMonsterIsWillingToBukkake>+

Determines whether or not a monster will pull out or finish on the player's face after oral sex.

@param <Monster>:<M> A monster the player is having oral sex with
@return <Boolean> True if the monster is willing/able to ejaculate on the player's face, otherwise false

+!]
Definition: A monster (called M) is willing to bukkake:
	if the player is a blowjob slut, decide no;
	if the class of the player is living sex doll, decide no;
	if a random number between 1 and 2 is 1, decide yes;
	decide no.

[!<ComputeFacialDodgingOfMonster>+

This function is called when the player resists in the last turn of oral sex and their sex partner is "willing to bukkake". If the player's dexterity is high enough, they can dodge the incoming facial, otherwise they get a new paint job.

@param <Monster>:<M> A monster the player just had oral sex with

+!]
To compute facial dodging of (M - a monster):
	say FacialBrokenFree of M;
	if a random number between the semen addiction of the player * -1 and the dexterity of the player > the difficulty of M - 2:[facials are harder to dodge the more you like the feeling of semen]
		compute successful facial dodging of M;
	otherwise:
		compute failed facial dodging of M.

[!<ComputeSuccessFacialDodgingOfMonster>+

This function is called when the player successfully dodges an incoming facial. Usually entails semen creating a puddle on the floor.

@param <Monster>:<M> A monster the player just had oral sex with

+!]
To compute successful facial dodging of (M - a monster):
	if image cutscenes is 1, get successful facial dodge image for M;
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
	if image cutscenes is 1, get failed facial dodge image for M;
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
	if image cutscenes is 1, get facial accepting image for M;
	say UnavoidedFacial of M;
	CumFaceUp the semen load of M;
	humiliate 200;
	compute happy reward of M.

[!<GetFacialAcceptingImageOfMonster>+

This function can display a relevant image when the player receives a facial. Does nothing by default

@param <Monster>:<M> A monster the player just had oral sex with

+!]
To get facial accepting image for (M - a monster):
	do nothing.

[!<ComputeOralCreampieOfMonster>+

This function is called whenever a monster is not willing to bukkake the player, and they ejaculate in the player's mouth rather than down their throat. By default, this means the player was resisting in the last turn of sex. Depending on the player's delicateness score(checked by the coercing a swallow function), the player will either swallow automatically or have a choice of spitting.

@param <Monster>:<M> A monster the player just had oral sex with

+!]
To compute oral creampie of (M - a monster):
	if image cutscenes is 1, get oral creampie image for M;
	say ResistedOralCreampie of M;
	say SwallowDemand of M;
	now M is not penetrating face;[This prevents the player from puking]
	if M is coercing a swallow:[Automatic swallow]
		compute auto swallow of M;
	otherwise:
		compute swallow choice of M.

[!<GetOralCreampieImageOfMonster>+

This function can display a relevant image when the player receives an oral creampie. Does nothing by default

@param <Monster>:<M> A monster the player just had oral sex with

+!]
To get oral creampie image for (M - a monster):
	do nothing.

[!<ComputeDeepthroatCreampieOfMonster>+

This function is called whenever a monster is not willing to bukkake the player, and they ejaculate straight down the player's throat. Humiliates the player, and invokes the happy reward function since the player was probably being obedient.

@param <Monster>:<M> A monster the player just had oral sex with

+!]
To compute deepthroat creampie of (M - a monster):
	if image cutscenes is 1, get deepthroat creampie image for M;
	say DeepthroatCreampie of M;
	StomachSemenUp the semen load of M;
	humiliate 100;
	compute happy reward of M.

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
	say "Do you swallow? [yesnolink] ";
	if the player consents:
		compute voluntary swallow of M;
	otherwise:
		compute spit choice of M.

[!<ComputeSpitChoiceOfMonster>+

This function is called whenever the player chooses to spit rather than swallow after taking an oral creampie. If the player has anything available that they can use to catch the semen, they will be offered the chance to spit into it via the juice-collector decide on function. Otherwise the player won't spit into anything.

@param <Monster>:<M> A monster the player just had oral sex with

+!]
To compute spit choice of (M - a monster):
	[We check if the player wants to collect some in a vessel, and output some unique flavour text.]
	let V be nothing;
	if the player is not flying and the number of worn wrist bonds is 0, now V is the juice-collector;
	if V is held:[if the juice-collector isn't nothing, catch it!]
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
	say "You position the [printed name of V] below your chin[if the semen taste addiction of the player < 9], looking away from [him of M][otherwise if the semen taste addiction of the player < 13], trying not to look at [him of M][otherwise], winking up at [him of M][end if] as it catches the [one of]load[or][tasted-semen][at random] [one of]dribbling slowly out of your mouth[or]in thick gooey clumps[or]slides out of your open mouth[at random].[one of] As your [printed name of V] quickly fills up you realise the only thing more humiliating than swallowing [semen] is being witnessed saving some for later!  [or][stopping]";
	humiliate 100;
	now the doses of V is max-doses of V;
	now the fill-colour of V is creamy;
	now V is monster-origin.


[!<ComputeAutoSwallowOfMonster>+

This function is called whenever a monster ejaculates in the player's mouth and the player swallows automatically. Humiliating.

@param <Monster>:<M> A monster the player just had oral sex with

+!]
To compute auto swallow of (M - a monster):
	say AutomaticSwallow of M;
	StomachSemenUp the semen load of M;
	humiliate 200;
	compute happy reward of M.

[!<ComputeVoluntarySwallowOfMonster>+

This function is called whenever a monster ejaculates in the player's mouth and the player chooses to swallow rather than spit. Twice as humiliating as swallowing automatically.

@param <Monster>:<M> A monster the player just had oral sex with

+!]
To compute voluntary swallow of (M - a monster):
	say VoluntarySwallow of M;
	StomachSemenUp the semen load of M;
	humiliate 400;
	compute happy reward of M.

[!<ComputeVoluntarySpittingOfMonster>+

This function is called whenever a monster ejaculates in the player's mouth, the player chooses to spit, and the player either has nothing available to spit in, or chooses not to spit into anything. Depending on fetish options, semen addiction, and breast size, the player has a chance to spit on their body rather than on the floor.

@param <Monster>:<M> A monster the player just had oral sex with

+!]
To compute voluntary spitting of (M - a monster):
	if the largeness of breasts >= 5 and bukkake fetish is 1 and the semen addiction of the player > a random number between 15 and (10 - the bimbo of the player):
		compute chest spitting of M;
	otherwise:
		compute floor spitting of M.

[!<ComputeFloorSpittingOfMonster>+

This function is called whenever a monster ejaculates in the player's mouth and the player chooses to spit the semen on the floor. Since the player is being disobedient, we invoke the angry punishment for this monster.

@param <Monster>:<M> A monster the player just had oral sex with

+!]
To compute floor spitting of (M - a monster):
	say VoluntarySpit of M;
	SemenPuddleUp the semen load of M;
	compute angry punishment of M.

[!<ComputeChestSpittingOfMonster>+

This function is called whenever a monster ejaculates in the player's mouth and the player chooses to spit the semen on the floor. The player has high semen addiction, so they decide to play with the semen instead. The player is being disobedient, but some monsters might like what the player decided to do instead of swallowing, so we invoke the check forgiveness function for M.

@param <Monster>:<M> A monster the player just had oral sex with

+!]
To compute chest spitting of (M - a monster):
	say ChestSpit of M;
	CumTitsUp the semen load of M;
	check forgiveness of M.

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

To say FacialBrokenFree of (M - a monster):
	say "[one of]You wait for your moment and pull back at the perfect time. You're free![or]You struggle valiantly, finally managing to pull off at the last moment. You're free![or]After several moments of struggling, you finally force [him of M] to let go. You're free![or]After a brief struggle, you manage to break free![in random order]".

To say SuccessfulFacialDodge of (M - a monster):
	say "[one of]The [M] groans as [he of M] goes over the edge, [semen] sailing over your shoulder and into a puddle on the floor.[or]The [M] groans, having already gone over the edge. You watch as spurt after spurt of [semen] shoots out of [his of M] [manly-penis] and into a puddle on the floor.[or]The [M] grabs at you, as [he of M] goes over the edge, but you're too fast, and [his of M] [semen] shoots out into a puddle onto the floor.[or]Thanks to your catlike reflexes, you dodge out of the way just before the [M] starts to cum![or]Thanks to quick reflexes, you dodge out of the way before the [M] can give you a facial.[or]The [M] grunts with pleasure, having already gone over the edge. Thanks to your catlike reflexes, you dodge out of the way just in time![or][if the semen taste addiction of the player < 10]The [M] tries to grab you again, but it's too late for [him of M] to stop! You smile triumphantly as [his of M] [semen] dribbles onto the floor.[otherwise if the semen taste addiction of the player < 15]The [M] tries to grab you again, but it's too late for [him of M] to stop! You try not to feel disappointed as [his of M] [semen] dribbles onto the floor.[otherwise]The [M] tries to grab you again, but it's too late for [him of M] to stop! You feel very disappointed as [his of M] [semen] dribbles onto the floor.[end if][in random order]".

To say FailedFacialDodge of (M - a monster):
	say "[one of]However, it's still too late! The [M] is already ejaculating in your face![or]Unfortunately, the [M] manages to grab you again, holding you still as [he of M] ejaculates all over your face.[or]The [M] ejaculates anyway! Your reflexes kick in late and your face is already covered in a thick load of [semen] before you even think about getting out of the way.[or]The [M] groans, having already gone over the edge. You're much too slow to get out of the way, so you take a full ejaculation all over your face.[or]However, you're too slow to get out of the way before the [M] jizzes all over your face.[or]Much to your displeasure, the [M] manages to catch you in an instant, holding you in place for a sticky, disgusting facial.[or][if the semen addiction of the player < 8]However, the [M] immediately grabs you again. You struggle in vain as [he of M] unloads all over your face.[otherwise if the semen addiction of the player < 12]However, the [M] immediately grabs you again. You half-heartedly struggle as [he of M] unloads all over your face.[otherwise]However, the [M] immediately grabs you again. You giggle happily as [he of M] unloads all over your face.[end if][or][if the semen addiction of the player < 9]Knowing what's coming, you try to get out of the way. Unfortunately, you're too slow, so there's nothing you can do to stop the [M] from ejaculating all over your face.[otherwise if the semen addiction of the player < 13]Unfortunately, you find yourself without the will to struggle as the [M] grabs you and force you to take a hot, sticky facial.[otherwise]Much to your delight, however, the [M] manages to grab you and hold you in place for a hot, sticky facial.[end if][or][if the semen addiction of the player < 11]Knowing what's coming, you try to get out of the way. However, you're too slow, so there's nothing you can do to stop the [M] from ejaculating all over your face.[otherwise]Finding yourself distracted by how yummy [his of M] [manly-penis] looks, there's nothing you can do to stop the [M] from ejaculating all over your face.[end if][in random order]".

To say UnavoidableFacial of (M - a monster):
	say "[one of]The [M] holds you still as [he of M] ejaculates all over your face.[or]Your face is covered in a thick load of [semen] before you can even think about turning your face away.[or]The [M] groans, having already gone over the edge. You take a full ejaculation all over your face.[or]You're completely unable to get out of the way as the [M] jizzes all over your face.[or][if the semen addiction of the player < 9]You struggle in vain as [he of M] unloads all over your face.[otherwise if the semen addiction of the player < 12]You half-heartedly struggle as [he of M] unloads all over your face.[otherwise]You giggle happily as [he of M] unloads all over your face.[end if][or][if the semen addiction of the player < 8]Knowing what's coming, you try to get out of the way. Unfortunately, there's nothing you can do to stop the [M] from ejaculating all over your face.[otherwise if the semen addiction of the player < 12]Unfortunately, you find yourself without the will to struggle as the [M] grabs you and force you to take a hot, sticky facial.[otherwise]Much to your delight, the [M] grabs you and holds you in place for a hot, sticky facial.[end if][or][if the semen addiction of the player < 11]Knowing what's coming, you try to get out of the way. However, there's nothing you can do to stop the [M] from ejaculating all over your face.[otherwise]Finding yourself distracted by how yummy [his of M] [manly-penis] looks, there's nothing you can do to stop the [M] from ejaculating all over your face.[end if][in random order]".

To say UnavoidedFacial of (M - a monster):
	say "[one of]The [M] pushes you off [his of M] [manly-penis], and immediately jizzes all over your face.[or]The [M] pulls you off, gritting [his of M] teeth as [he of M] ejaculates all over your face.[or]The [M] pushes you away, quickly pumping [his of M] [manly-penis] to orgasm all over your face.[or]The [M] withdraws [his of M] [manly-penis] from your mouth, hissing through [his of M] teeth as [he of M] paints your face with a hot load of [semen].[or]The [M] withdraws from your mouth and immediately gives you a warm, messy facial.[or]The [M] pulls [his of M] [manly-penis] out of your mouth and tilts your head up. You barely have time to get your eyes closed before [he of M] gives you a thick, messy facial.[or][if the semen addiction of the player < 10]The [M] pushes you off [his of M] [manly-penis] as [he of M] goes over the edge. You gasp and recoil as [he of M] paints your face with hot ropes of [semen].[otherwise]The [M] pushes you off [his of M] [manly-penis] as [he of M] goes over the edge. You close your eyes and happily lean forward as [he of M] paints your face with hot ropes of [semen].[end if][or][if the semen addiction of the player < 7]The [M] pulls [his of M] [manly-penis] out of your mouth, finishing [himself of M] off with a few quick pumps. You shudder as [he of M] ejaculates all over your face.[otherwise if the semen addiction of the player < 13]The [M] pulls [his of M] [manly-penis] out of your mouth, finishing [himself of M] off with a few quick pumps. You gasp as [he of M] ejaculates all over your face.[otherwise]The [M] pulls [his of M] [manly-penis] out of your mouth, finishing [himself of M] off with a few quick pumps. You close your eyes and stick out your tongue as [he of M] ejaculates all over your face.[end if][or][if the semen addiction of the player < 9]The [M] shoves you away as hot ropes of [semen] explode from [his of M] [manly-penis]. You barely have time to shut your mouth before they splatter across your face.[otherwise if the semen addiction of the player < 11]The [M] shoves you away as hot ropes of [semen] explode from [his of M] [manly-penis]. You're surprised to find that your mouth is still open as they splatter across your face.[otherwise]The [M] shoves you away as hot ropes of [semen] explode from [his of M] [manly-penis]. You close your eyes and open your mouth as they fall across your face.[end if][in random order]".

To say ResistedOralCreampie of (M - a monster):
	say "[one of]The [M] holds you down just long enough to flood your mouth with a nice big load of [tasted-semen].[or]The [M] forces you to stay down, continuing to fuck your mouth even as [he of M] reaches orgasm and you begin to taste [his of M] salty [semen].[or]The [M] explodes into your mouth, filling it with the [semen-adjective] taste of [semen]. Thin strands of drool still connect [his of M] [manly-penis] to your lips as [he of M] pulls out.[or]The [M] groans, tightens [his of M] grip as [he of M] begins to ejaculate, holding you down until your mouth has been thoroughly and completely filled with [tasted-semen].[or][if the semen taste addiction of the player < 8]The [M] barely manages to hold you down, [his of M] [manly-penis] only halfway in your mouth by the time [he of M] reaches orgasm. You yelp indignantly as [he of M] paints your tongue with rope after rope of [tasted-semen].[otherwise if the semen taste addiction of the player < 12]The [M] barely manages to hold you down, [his of M] [manly-penis] only halfway in your mouth by the time [he of M] reaches orgasm. You taste every single rope of [tasted-semen] [he of M] fires off into your mouth.[otherwise]The [M] barely manages to hold you down, [his of M] [manly-penis] only halfway in your mouth by the time [he of M] reaches orgasm. You flatten your tongue against [his of M] opening, thoroughly tasting every last drip of [tasted-semen] shot into your mouth.[end if][in random order]".

To say AutomaticSwallow of (M - a monster):
	say "[one of]You swallow it without a second thought.[or]You swallow immediately, only realizing a second later what you've done.[or]You swallow it without a moment to spare.[or]Before you give it so much as a second thought, you've already got [his of M] load slithering down your throat.[or]You suddenly feel so thirsty that you can't stop yourself from swallowing it all in one gulp.[or]Before you can stop yourself, you've already swallowed [his of M] load down to the last drop.[or][if the semen taste addiction of the player < 6]Despite the fact that every fibre of your being tells to spit, you find yourself swallowing every last drop.[otherwise if the semen taste addiction of the player < 10]You swallow every last drop, desperately insisting to yourself that it was because you were thirsty.[otherwise]You swallow every last drop, knowing full well that if you really wanted something else to drink, you would have looked harder.[end if][in random order]".

To say VoluntarySwallow of (M - a monster):
	say "[if the semen taste addiction of the player < 9][one of]You drop your eyes, swallowing [his of M] load along with what's left of your pride.[or]You reluctantly swallow, scared of what [he of M] would do otherwise.[or]You swallow [his of M] load of your own free will, thoroughly humiliating yourself in the process.[or]Thoroughly humiliated, you swallow [his of M] load. At least nobody else will know what happened.[or]You shiver as you allow the foul-tasting fluid to slide down your throat and into your stomach.[in random order][otherwise if the semen taste addiction of the player < 13][one of]You shiver as the gooey fluid slides down your throat and into your stomach, knowing it will feed your growing addiction.[or]You swallow [his of M] load after a brief moment of hesitation.[or]You swallow obediently, knowing full well that you didn't have to.[or]You swallow without complaint, feeling strangely proud you did it all in one gulp.[or]You swallow every last drop, insisting to yourself it's because you didn't want to make a mess.[in random order][otherwise][one of]You open wide so [he of M] can see the [tasted-semen] in your mouth before swallowing it with a smile.[or]You make a show of playing with it before swallowing it all in one gulp.[or]You obediently swallow, licking the leftovers off your lower lip.[or]You gulp it down like the greedy little slut you are.[or]You swallow like an obedient little slut.[in random order][end if]".

To say VoluntarySpit of (M - a monster):
	say "[if the bimbo of the player < 8][one of]You crinkle your nose and immediately spit [his of M] load onto the floor.[or]You glare up at [him of M] as you spit [his of M] [semen] out and into a puddle on the floor.[or]You stare daggers at [him of M] as you let [his of M] [semen] dribble out of your mouth and onto the floor.[or]You tremble, allowing your mouth to stay open as [semen] leaves your mouth in thick, gooey clumps.[in random order][otherwise if the bimbo of the player < 12][one of]You avoid [his of M] gaze as you spit [his of M] [semen] out of your mouth and into a puddle on the floor.[or]You hope [he of M] won't be too angry with you as you let the [semen] dribble out of your mouth and onto the floor.[or]You lean over, hoping [he of M] won't notice as you spit [his of M] load on the floor.[or]You hurriedly spit it out, uncomfortable with how good it felt to take it in your mouth like a slut.[in random order][otherwise][one of]You lean over, lewdly pressing your [BreastDesc] together as [his of M] [semen] falls out of your mouth in thick clumps.[or]You immediately spit [his of M] load onto the floor, opening your mouth wide as if to ask [him of M] to replace it.[or]You glance up at [him of M] as [semen] dribbles out of your mouth, silently begging [him of M] for punishment.[or]You gaze up at [him of M], massaging your [BreastDesc] as you allow [his of M] load to dribble out of your mouth and into a puddle on the floor.[in random order][end if]".

To say ForgivenessFlav of (M - a monster):
	say "The [M] starts to look angry, but seems to let it go.";

To say ChestSpit of (M - a monster):[TODO: maybe improve]
	say "[one of]You push your [ShortDesc of breasts] together and look up at [him of M][or][if the largeness of breasts < 7]You push up your breasts[otherwise]You lean back and push up your breasts[end if], holding your mouth open[or]You look [him of M] right in the eye as you open your mouth, pressing your [ShortDesc of breasts] together[at random] as [one of]you let [his of M] load dribble out on your chest[or][his of M] dribbles onto your chest in big gooey clumps[or]you let [his of M] load drip wetly onto your chest[at random]as [his of M] runs down your chin and pools in your cleavage.";

To say DeepthroatCreampie of (M - a monster):
	say DefaultDeepthroatDeclaration of M;
	say DefaultDeepthroatCreampie of M.

To say DefaultDeepthroatDeclaration of (M - a monster):
	do nothing.

To say DefaultDeepthroatCreampie of (M - a monster):
	say "[one of]The [M] tightens [his of M] grip, hissing through [his of M] teeth as [he of M] cums straight down your throat.[or]The [M][']s [manly-penis] throbs powerfully, firing off load after load of warm [semen] down your throat. [or]The [M] forces you all the way down, groaning as [he of M] ejaculates straight down your throat.[or]The [M] pulls you down as [he of M] begins to ejaculate, [his of M] balls slapping your chin as [his of M] load rushes down your throat.[or]The [M] buries [his of M] [manly-penis] as far into your mouth as it will go, jet after jet of [semen] pinging into the back of your throat.[or]The [M] forces [his of M] length down your throat, groaning as [he of M] fills your belly with a decent load.[or]The [M] forces you to take [his of M] [manly-penis] all the way to the hilt. You can do nothing but wait helplessly as [he of M] pumps [his of M] load directly into your belly.[or][if the semen taste addiction of the player < 7]The [M] forces you all the way down as [he of M] begins to ejaculate. There's nothing you can do but swallow as [his of M] [manly-penis] pumps [semen] directly into your mouth.[otherwise if the semen taste addiction of the player < 12]The [M] forces you all the way down as [he of M] begins to ejaculate. You obediently swallow as [his of M] [manly-penis] pumps [semen] directly into your mouth.[otherwise]The [M] forces you all the way down as [he of M] begins to ejaculate. You happily swallow as [his of M] [manly-penis] pumps [semen] directly into your mouth.[end if][or][if the semen taste addiction of the player < 7]The [M] forces [his of M] [manly-penis] deeper and deeper into your mouth, grunting as your lips hit [his of M] balls. Your eyes widen in horror as they empty themselves straight down your throat.[otherwise if the semen taste addiction of the player < 12]The [M] forces [his of M] [manly-penis] deeper and deeper into your mouth, grunting as your lips hit [his of M] balls. Your eyes widen as they empty themselves straight down your throat.[otherwise]The [M] forces [his of M] [manly-penis] deeper and deeper into your mouth, grunting as your lips hit [his of M] balls. You emit a muffled moan as they empty themselves straight down your throat.[end if][in random order]".

To say OralResisting of (M - a monster):
	say "[one of]You try as hard as you can to pull away, but [his of M] grip is simply too strong![or]You pull up, but [he of M] makes sure to shove you right back down![or]You grunt and try to pull away, but [he of M] simply holds you in place.[or]You claw at [his of M] hands, but [he of M] doesn't pay you any mind.[or]You fight [his of M] grip as much as you can, but in the end, [his of M] [manly-penis] stays in your mouth and you keep sucking it.[or]You try to pull [his of M] hands away, but [he of M][']s much too strong for you.[or]You push on [his of M] legs for leverage, but it's still no use![or][if the relevant sex addiction of M < 6]You stay completely still, blatantly refusing to do anything at all to pleasure [him of M].[otherwise if the relevant sex addiction of M < 14]You stay completely still, knowing that if you willingly pleasure [him of M] you might like it and not stop.[otherwise]You stay completely still, hoping [he of M] might *punish* you for slacking off.[end if][in random order]".

To say OralResistingResponse of (M - a monster):
	say "[one of]The [M] seems determined to get [himself of M] off with or without your help![or]The [M] maintains a firm grip on the back of your head, determined to get [himself of M] off anyway.[or]The [M] forces you to suck [his of M] [manly-penis] whether you like it or not![or]The [M] thrusts with no regard for your ability to breathe![or]The [M] continues thrusting with no acknowledgement of your protests.[or]The [M] continues thrusting despite your protests![in random order]".

To say OralSubmissionResponse of (M - a monster):
	if M is friendly-fucking:
		say "[one of]You bob your head up and down, [if the humiliation of the player < 10000]eyes screwed shut in shame[otherwise if the humiliation of the player < 18000 or the sex addiction of the player < 8]avoiding eye contact[otherwise]looking up at the [M][end if] as you submissively polish [his of M] shaft.[or]You make [if the oral sex addiction of the player < 4]quiet[otherwise if the oral sex addiction of the player < 6]distinct[otherwise]exaggerated[end if] slurping noises as you suck the [M]'s cock, [if the oral sex addiction of the player < 3]determined to get this over and done with as soon as possible.[otherwise if the oral sex addiction of the player < 5]determined to get [him of M] off as soon as possible[otherwise]determined to get [him of M] shooting off in your mouth as soon as possible[end if][or]The [M] guides the movement of your head as you [if the oral sex addiction of the player < 4]quietly [otherwise if the oral sex addiction of the player > 5]noisily [end if]suck [his of M] cock, [if the sex addiction of the player < 7]making you feel even more like a dirty slut. If that was even possible.[otherwise if the sex addiction of the player < 12]silently assuring you that you[']re doing a good job.[otherwise]allowing you to do all the work like the dirty slut you are.[end if][or]The [M] rolls [his of M] hips to complement the [if the oral sex addiction of the player > 5]enthusiastic [otherwise if the oral sex addiction of the player < 4]slow [end if]bobbing of your head.[or]The [M] allows you to do most of the work, [if the sex addiction of the player < 7]picking up the slack whenever the shame gets to be too much.[otherwise if the oral sex addiction of the player < 6]picking up the slack whenever you get tired.[otherwise]grunting with pleasure as you drag your tongue up [his of M] shaft.[end if][in random order]";
	otherwise:
		say "[one of]The [M] thrusts at a good pace, holding on as if to make sure you won't stop.[or]The [M] breathes slowly, guiding you with one hand and clenching [his of M] other.[or]The [M] holds you tightly, rolling [his of M] hips to complement the bobbing of your head.[or]The [M] grunts in approval. However, [his of M] enjoyment doesn't seem to make [him of M] loosen [his of M] grip.[or]The [M] holds you with an almost uncomfortably tight grip, guiding your movement.[or]The [M] breathes steadily as you work, making sure not to loosen [his of M] hold at all.[in random order]".

To say NearingClimaxOral of (M - a monster):
	say "[one of]The [M] seems to be speeding up![or]The [M] is now breathing more rapidly, you can tell that [he of M][']s very close![or]The [M]'s grip on your head noticeably tightens![in random order]".

To say SwallowDemand of (M - a monster):
	say "The [M] gives you a stern look.  It's clear that [he of M] wants you to swallow the [semen].".

[!<ComputeAngryPunishmentOfMonster>+

This function is called when the player makes a monster angry in some way, like disobeying an order

@param <Monster>:<M> A monster the player pissed off

+!]
To compute angry punishment of (M - a monster):
	say angry punishment insult of M;
	if there is worn tearable clothing and M is not friendly-fucking:
		let C be a random worn tearable clothing; [This is done in reverse priority order.]
		if there is a worn top level ass protection tearable clothing:
			now C is a random worn top level ass protection tearable clothing;
		if there is a worn nipple covering tearable bra and the largeness of breasts > 3:
			now C is a random worn nipple covering tearable bra;
		if there is a worn nipple covering tearable overdress and the largeness of breasts > 3:
			now C is a random worn nipple covering tearable overdress;
		if C is accessory and C is plentiful:
			say "The [M] rips your [C] from your [if C is necklace]neck[otherwise if C is bracelet]wrist[otherwise if C is ring]finger[otherwise]body[end if].  ";
			say angry punishment accessory confiscation of M;
		otherwise:
			say "The [M] brutally rips your [C] from your [if C is heels]feet[otherwise if C is headgear]head[otherwise]body[end if].  It is completely destroyed!  ";
			say angry punishment clothing destruction of M on C;
		destroy C.

[!<ComputeHappyRewardOfMonster>+

This function is called when the player pleases a monster in some way, like swallowing after being asked. Usually requires the player do something humiliating.

@param <Monster>:<M> The happy monster, usually as a reward for a pleasant blowjob

+!]
To compute happy reward of (M - a monster):
	if M is friendly-fucking:
		say "[speech style of M]'Keep that up and I might give you something for your trouble.'[roman type][line break]";
		FavourUp M by 1;
	FavourUp M by 1.
	
[!<SayAngryPunishmentInsultOfMonster>+

This should display some text when a monster decides to punish the player for some reason. Should be less severe for friendly monsters, since they will usually for a weaker punishment.

@param <Monster>:<M> A monster the player pissed off

+!]
To say angry punishment insult of (M - a monster):
	if M is intelligent and M is not friendly-fucking:
		say "[first custom style]'Fucking bitch!  Learn your place.'[roman type][line break]";
	otherwise if M is intelligent:
		say "[first custom style]'Whatever, fucking bitch.'[roman type][line break]";
	otherwise:
		say "The [M] looks very [if the bimbo of the player < 12]angry[otherwise]disappointed[end if]!".

[!<SayAngryPunishmentAccessoryConfiscationOfMonster>+

This should display some text when a monster punishes the player by taking some jewelery

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
	if M is intelligent, say "[first custom style]'[if C is nipple covering and the largeness of breasts > 3]You don't deserve to have your slutty tits covered by this.'[otherwise if C is ass covering]Display your [fuckholes] to everyone, like the true whore you are.'[otherwise if the number of worn clothing > 1]Sluts don't deserve clothes! There, now you are one step closer to being buck naked.'[otherwise]Sluts don't deserve clothes!'[end if][roman type][line break]";
	otherwise say "it looks like [he of M] is satisfied with leaving it at that.".

[!<ComputeUniqueClimaxOfMonster>+

Contains the unique handling for a monster "M" climaxing in a fuckhole "F". Monsters with a unique way of climaxing for a given hole should have their own version of this function. The outer function "compute climax of M in F" increments timers and handles a couple of other things, so anything coded in this function should only pertain to this specific monster. This function assumes the monster is male.

@param <Monster>:<M> The monster having the climax
@param <Fuckhole>:<F> The fuckhole the monster is climaxing with

+!]
To compute unique climax of (M - a monster) in (F - a fuckhole):[assumes M is male]
	if M is wrapped, compute wrapped climax of M in F;
	otherwise compute unprotected climax of M in F.

[!<ComputePostClimaxEffectOfMonster>+

Handles anything that needs to happen after a monster "M" climaxes in a fuckhole "F". This function is meant to help specific monsters control what happens after a climax, anything that affects all or most monsters needs to be part of the outer function "compute climax of M in F". No functionality in this function by default

@param <Monster>:<M> The monster that had the climax
@param <Fuckhole>:<F> The fuckhole the monster had the climax with

+!]
To compute post climax effect of (M - a monster) in (F - a fuckhole):
	do nothing.

[!<DecideIfMonsterIsLosingWrapperInFuckhole>+

Determines whether or not anything happens to the condom the monster "M" is wearing in the fuckhole "F". This function handles condoms breaking, being manually removed, or simply not working right. By default, the condom is always successful, so condoms only fail if there is a unique reason specified in a given monster's version of this function

@param <Monster>:<M> The monster wearing the condom
@param <Fuckhole>:<F> The fuckhole the monster is inside of
@return <Boolean> true if the monster's condom fails for any reason, otherwise false

+!]
To decide if (M - a monster) is losing wrapper in (F - a fuckhole):
	decide no.

[!<ComputeWrappedClimaxOfMonsterInFuckhole>+

This function is called when a monster "M" has an orgasm in a fuckhole "F" whilst wearing a condom. If M's condom fails for any reason, calls the condom failure function for M and F. Otherwise, calls the condom success function for M and F

@param <Monster>:<M> The monster wearing the condom
@param <Fuckhole>:<F> The fuckhole the monster is penetrating

+!]
To compute wrapped climax of (M - a monster) in (F - a fuckhole):
	if M is losing wrapper in F, compute condom failure of M in F;
	otherwise compute condom success of M in F;

[!<ComputeCondomFailureOfMonsterInFuckhole>+

This function is called when a monster "M" has an orgasm in a fuckhole "F", and for some reason the condom they were wearing fails. Usually this means the player won't have to deal with a condom being pinned to their clothes and takes a full-on creampie instead.

@param <Monster>:<M> The monster that was wearing the condom
@param <Fuckhole>:<F> The fuckhole the monster is penetrating

+!]
To compute condom failure of (M - a monster) in (F - a fuckhole):
	if debugmode > 0, say "CONDOM FAILED[line break]";
	if image cutscenes is 1, get condom failure image of M in F;
	say CondomFailFlav of M in F;
	now M is unwrapped;
	compute M finishing in F;
	say CreampieReactionFlav to M in F.

[!<GetCondomFailureImageOfMonsterInFuckhole>+

This function can display a relevant image when a monster "M" has their condom fail for the fuckhole "F". By default, shares an image with the get creampie image function for M and F.

@param <Monster>:<M> The monster that was wearing the condom
@param <Fuckhole>:<F> The fuckhole the monster is penetrating

+!]
To get condom failure image of (M - a monster) in (F - a fuckhole):
	get creampie image of M in F.

[!<ComputeCondomSuccessOfMonster>+

This function is called when a monster "M" has an orgasm in a fuckhole "F" whilst wearing a condom, and it didn't fail for any reason.

@param <Monster>:<M> The monster wearing the condom
@param <Fuckhole>:<F> The fuckhole the monster is penetrating

+!]
To compute condom success of (M - a monster) in (F - a fuckhole):
	if debugmode > 0, say "CONDOM SUCCEEDED[line break]";
	if image cutscenes is 1, get condom success image of M in F;
	say CondomPieFlav of M in F;
	compute M finishing in F.

[!<GetCondomSuccessImageOfMonsterInFuckhole>+

This function can display a relevant image when a monster "M" ejaculates in the fuckhole "F" whilst wearing a condom. By default, shares an image with the get creampie image function for M and F.

@param <Monster>:<M> The monster wearing the condom
@param <Fuckhole>:<F> The fuckhole the monster is penetrating

+!]
To get condom success image of (M - a monster) in (F - a fuckhole):
	get creampie image of M in F.

[!<DecideIfMonsterIsWillingToCreampieFuckhole>+

Determines whether or a monster "M" will pull out of a fuckhole "F" before it ejaculates. If M has some reason not to finish inside F, or M has something planned for after it finishes with F, this function should evaluate as false. By default, any given monster is willing to creampie, so any monster that pulls out after sex is doing so for a unique reason specified in their version of this function

@param <Monster>:<M> A monster who might creampie a fuckhole
@param <Fuckhole>:<F> The fuckhole that might be creampied
@return <Boolean> true if M is going to do anything but ejaculate in F and then lose interest, otherwise false

+!]
To decide if (M - a monster) is willing to creampie (F - a fuckhole):
	decide yes.

[!<ComputeUnprotectedClimaxOfMonsterInFuckhole>+

This function is called whenever a monster "M" ejaculates in a fuckhole "F" whilst not wearing a condom. If the monster has any reason not to creampie the player, calls the compute M pulling out of F function. In any other case, calls the compute creampie of M in F function.

@param <Monster>:<M> The monster having the climax
@param <Fuckhole>:<F> The fuckhole the monster is penetrating

+!]
To compute unprotected climax of (M - a monster) in (F - fuckhole):
	if M is willing to creampie F, compute creampie of M in F;
	otherwise compute M pulling out of F.

[!<ComputeMonsterFinishingInVagina>+

This function is called whenever a monster "M" ejaculates in the player's vagina "F".

@param <Monster>:<M> The monster ejaculating
@param <Vagina>:<F> The player's vagina

+!]
To compute (M - a monster) finishing in (F - vagina):
	WombFill the semen load of M.

[!<ComputeMonsterFinishingInAsshole>+

This function is called whenever a monster "M" ejaculates in the player's asshole "F".

@param <Monster>:<M> The monster ejaculating
@param <Asshole>:<F> The player's asshole

+!]
To compute (M - a monster) finishing in (F - asshole):
	AssFill the semen load of M.

[!<ComputeCreampieOfMonsterInFuckhole>+

This function is called whenever a monster "M" ejaculates in a fuckhole "F" whilst not wearing a condom, and M has no reason to pull out.

@param <Monster>:<M> The monster performing the creampie
@param <Fuckhole>:<F> The fuckhole receiving the creampie

+!]
To compute creampie of (M - a monster) in (F - a fuckhole):
	if debugmode > 0, say "PULL OUT FAILED[line break]";
	if image cutscenes is 1, get creampie image of M in F;
	say CreampieFlav of M in F;
	compute M finishing in F;
	say CreampieReactionFlav to M in F.

To get creampie image of (M - a monster) in (F - a fuckhole):
	do nothing.

[!<ComputeMonsterPullingOutOfFuckhole>+

This function is called whenever a monster "M" is about to ejaculate in a fuckhole "F" whilst not wearing a condom, and has some reason to pull out

@param <Monster>:<M> The monster having the orgasm
@param <Fuckhole>:<F> The fuckhole M is pulling out of

+!]
To compute (M - a monster) pulling out of (F - a fuckhole):
	if debugmode > 0, say "PULL OUT SUCCEEEDED[line break]";
	if bukkake fetish is 1, compute M messily pulling out of F;
	otherwise compute M cleanly pulling out of F.

[!<ComputeMonsterMessilyPullingOutOfFuckhole>+

This function is called whenever a monster "M" is about to ejaculate in a fuckhole "F" whilst not wearing a condom, and has some reason to pull out. Usually, this function is called when bukkake fetish is enabled, and handles M glazing the player's crotch rather than ejaculating inside them.

@param <Monster>:<M> The monster having the orgasm
@param <Fuckhole>:<F> The fuckhole M pulled out of

+!]
To compute (M - a monster) messily pulling out of (F - a fuckhole):
	if image cutscenes is 1, get messy pull out image of M in F;
	say MessyPullOutFlav of M in F;
	CumThighsUp the semen load of M.

To get messy pull out image of (M - a monster) in (F - a fuckhole):
	get clean pull out image of M in F.

[!<ComputeMonsterCleanlyPullingOutOfFuckhole>+

This function is called whenever a monster "M" is about to ejaculate in a fuckhole "F" whilst not wearing a condom, and has some reason to pull out. Usually, this function is called when bukkake fetish is disabled, and handles M ejaculating on the floor rather than inside the player.

@param <Monster>:<M> The monster having the orgasm
@param <Fuckhole>:<F> The fuckhole M pulled out of

+!]
To compute (M - a monster) cleanly pulling out of (F - a fuckhole):
	if image cutscenes is 1, get clean pull out image of M in F;
	say PullOutFlav of M in F;
	SemenPuddleUp the semen load of M.

To get clean pull out image of (M - a monster) in (F - a fuckhole):
	do nothing.

[!<CreampieFlavOfMonster>+

@param <Monster>:<M> The monster the player just had sex with

+!]
To say CreampieFlav of (M - a monster) in (F - a fuckhole):
	say "[if M is intelligent][speech style of M]'[one of]Ugh... yes!'[or]Take it all, now!'[or]Yes, yes, fucking take this!'[or]I'm cumming inside you, [bitch]!'[or]Oh trust me, you're going to be able to feel this!'[in random order][roman type]  [end if]The [M] [one of]ejaculates deep inside[or]releases [his of M] load inside[or]growls as [he of M] finishes, filling[or]hisses with pleasure as [his of M] [semen] pumps into[or]pants happily and bottoms out as [he of M] shoots blast after blast of warm [semen] into[in random order] your [variable F]!".

To say CreampieReactionFlav to (M - a monster) in (F - a fuckhole):
	if pregnancy fetish is 1 and F is vagina and the pregnancy of the player is 0, say "[first custom style][if the bimbo of the player < 6][one of]I can[']t believe he came inside. What if...? [or]W-what if I get pregnant? [or]Please don't let me be pregnant.... [at random][otherwise if the bimbo of the player < 12][one of]Doesn[']t he know I could get pregnant like this?[or]I could actually get pregnant from that...[or]Is he really going to do that every time we have sex...[at random][otherwise][one of]I hope I get pregnant...[or]I hope that was enough to put a bun in my oven...[or]I know I might get pregnant from that, but it just feels so good...[or]It's no fun unless it's risky...[at random][roman type][line break]";
	otherwise say "".

To say CondomPieFlav of (M - a monster) in (F - a fuckhole):
	say "The [M] ejaculates into the condom!".

To say CondomFailFlav of (M - a monster) in (F - a fuckhole):
	say "The condom breaks as the [M] ejaculates, and [semen] flows freely into your [variable F].";

To say MessyPullOutFlav of (M - a monster) in (F - a fuckhole):
	say "The [M] pulls out and sprays your crotch with [semen]".

[!<sayPullOutFlavOfMonster>+

@param <Monster>:<M> The monster the player just had sex with

+!]
To say PullOutFlav of (M - a monster) in (F - a fuckhole):
	say "The [M] pulls out and sprays [semen] on the floor.".

To say VirginityTaken of (M - a monster):
	say "[if the sex addiction of the player < 5]The [M][']s other hand is used to guide [his of M] shaft into your [vagina]. You look over your shoulder, a single tear rolls down your face as [his of M] [manly-penis] pierces your hymen, removing your virginity forever. You don't struggle, absorbed with dread that [he of M] could be the first of dozens, if not hundreds of sex partners to fuck you against your will. Apparently not concerned with giving you time with your thoughts, the [M] places [his of M] hands on your hips and continues forcing more and more of [his of M] [manly-penis] into your [vagina]. After what feels like an eternity, every moment more painful than the last, [he of M] bottoms out, tightening [his of M] grip so you can't get away.[otherwise if the sex addiction of the player < 10]The [M][']s other hand is used to guide [his of M] shaft into your [vagina]. You look over your shoulder, worriedly biting your lip as [his of M] [manly-penis] pierces your hymen, removing your virginity forever. You are paralysed with indecision, not sure if the fact that [he of M] could be the first of dozens, if not hundreds of sex partners is something that scares you or arouses you. Apparently not concerned with giving you time with your thoughts, the [M] places [his of M] hands on your hips and continues forcing more and more of [his of M] [manly-penis] into your [vagina]. After what feels like an eternity, every moment more painful and strangely satisfying than the last, [he of M] bottoms out, tightening [his of M] grip so you can't get away.[otherwise]The [M][']s other hand is used to guide [his of M] shaft into your [vagina]. You look over your shoulder, grinning in satisfaction as [his of M] [manly-penis] pierces your hymen, removing your virginity forever. You stay still as best you can, hoping to preserve your tightness for the dozens, if not hundreds of sex partners you'll have in the future. Apparently not concerned with giving you time with your thoughts, the [M] places [his of M] hands on your hips and continues forcing more and more of [his of M] [manly-penis] into your [vagina]. After what feels like an eternity, every moment more decadently painful than the last, [he of M] bottoms out, tightening [his of M] grip so you can't get away.[end if]".

To say MouthPenetrationFlav of (M - a monster):[This probably needs changing for every monster!]
	if presented-orifice is face:
		say "[FriendlyMouthPenetrationFlav of M]";
	otherwise if there is a worn latex hood:
		say "[one of]The [M] puts [his of M] hand on the back of your head, guiding [his of M] [manly-penis] through your gag and into your mouth.[or]The [M] slides [his of M] [manly-penis] through your gag. With no way of resisting[if the relevant sex addiction of M > 12], and no motivation,[end if] you have to sit there and take it as [he of M] begins to aggressively fuck your face.[or][if the relevant sex addiction of M < 7]The [M] slides [his of M] [manly-penis] through your gag. You emit a muffled grunt of indignation as [he of M] begins to thrust.[otherwise if the relevant sex addiction of M < 10]The [M] slides [his of M] [manly-penis] through your gag. You emit a muffled grunt as [he of M] begins to thrust.[otherwise]Your eyes roll back in your head as the [M] slides [his of M] [manly-penis] through your gag and into your mouth.[end if][or][if the relevant sex addiction of M < 8]Your eyes widen in horror as the [M] slides [his of M] [manly-penis] through your gag and into your mouth.[otherwise if the relevant sex addiction of M < 13]Your eyes widen with excitement as the [M] slides [his of M] [manly-penis] through your gag and into your mouth.[otherwise]The [M] slides [his of M] [manly-penis] through your gag. You emit a muffled sigh of satisfaction as [he of M] begins to thrust.[end if][in random order]";
	otherwise if the latex-transformation of the player > 6:
		say "[SexDollMouthPenetrationFlav of M]";
	otherwise:
		say "[one of][if the relevant sex addiction of M < 8]The [M] pinches your nose, shoving [his of M] [manly-penis] in your mouth as soon as you try to breathe. You glare up at [him of M] as [he of M] begins to thrust.[otherwise if the relevant sex addiction of M < 13]The [M] points to your mouth, slowly stroking [his of M] [manly-penis]. You obediently open it, emitting a slow sigh through your nose as it slides through your lips.[otherwise]The [M] positions [his of M] [manly-penis] between your lips. You immediately open them, sighing contentedly as [he of M] enters your mouth.[end if][or][if the relevant sex addiction of M < 8]The [M] puts one hand on the back of your head, grinning. You open your mouth to insult [him of M], but [he of M] immediately inserts [his of M] [manly-penis] and begins to thrust.[otherwise if the relevant sex addiction of M < 12]The [M] puts one hand on the back of your head. Knowing what's to come, you slowly open your mouth and accept [his of M] invading shaft.[otherwise]The [M] points to your mouth, grinning. You obediently loll out your tongue, gazing at [him of M] reverently as [his of M] [manly-penis] slides through your lips.[end if][or][if the relevant sex addiction of M < 7]The [M] points to your mouth, slowly stroking [his of M] [manly-penis]. You snarl. [first custom style]'Not on your life bud-'[roman type] [he of M] cuts you off by immediately shoving [himself of M] into your mouth. You stare at [him of M] lividly as [he of M] begins to thrust.[otherwise if the relevant sex addiction of M < 13]The [M] points to your mouth, grinning. You open and loll out your tongue, avoiding eye contact with [him of M] as [his of M] [manly-penis] slides through your lips.[otherwise]The [M] places one hand on your shoulder. You greedily lean forward and take [his of M] [manly-penis] into your mouth.[end if][or][if the relevant sex addiction of M < 3]The [M] points to your mouth, grinning. You spit at [his of M] feet. [first custom style]'Go fuck yourself assh-'[roman type] [he of M] cuts you off by immediately shoving [his of M] [manly-penis] in your mouth. You glare at [him of M] as [he of M] begins to thrust.[otherwise if the relevant sex addiction of M < 7]The [M] points to your mouth, grinning. You slowly and fearfully open it, shuddering as [his of M] [manly-penis] slides past your lips.[otherwise if the relevant sex addiction of M < 11]The [M] places [his of M] hand on your shoulder, guiding [his of M] [manly-penis] to your lips with the other. You obediently open your mouth to allow [him of M] inside.[otherwise]The [M] puts [his of M] hand on the back of your head. You submissively part your lips and accept [his of M] [manly-penis] into your mouth.[end if][in random order]".

To say SexDollMouthPenetrationFlav of (M - a monster):
	say "[one of]The [M] pushes [his of M] rock hard [manly-penis] into the padded hole you call a mouth, planting one hand on the back of your head as [he of M] begins guiding you back and forth.[or]The [M] slides [his of M] [manly-penis] between your soft, plastic lips, which make faint squeaking noises as he guides your head back and forth.[or]The [M] puts one hand on the back of your head as [he of M] guides [his of M] [manly-penis] through your puffy plastic lips.[or]You look up at the [M] as [his of M] [manly-penis] enters your mouth, knowing [he of M] only sees your face as just another hole to be used.[in random order]".
		
To say FriendlyMouthPenetrationFlav of (M - a monster):[This probably needs changing for every monster!]
	if the sex addiction of the player < 5 or the oral sex addiction of the player < 3:
		say "[one of][if the player is not wrist bound]You gingerly grab the [M]'s cock, trying not to wretch as you slide it between your lips.[otherwise]You force yourself not to jerk back as the [M] places [his of M] hands on your shoulders, shuddering with disgust as [his of M] firm, hard cock slides between your lips.[end if][or]You wrap your lips around the [M]'s [manly-penis], forcing yourself not to pull back as [he of M] places [his of M] hands on either side of your head.[or]You force yourself to lean forward, screwing your eyes shut as the [M]'s throbbing penis slides into your mouth.[or][if the largeness of breasts > 5]The [M] fondles your [BreastDesc], leaving [his of M] [manly-penis] to stare you in the face. It's everything you can do not to angrily smack [his of M] hands away as [his of M] hardness slides between your lips.[otherwise]The [M] pushes [his of M] [manly-penis] into your open mouth, grinning down at you as you force yourself not to jerk out of [his of M] grip.[end if][or]The [M] shoves [his of M] [manly-penis] into your open mouth. Your cheeks burn with shame as you slowly begin to suck.[or]The [M] pushes [his of M] [manly-penis] into your mouth and begins to guide your head back and forth. You lower your eyes, ashamed.[in random order]";
	otherwise if the oral sex addiction of the player < 7:
		say "[one of]The [M] shoves [his of M] [manly-penis] into your open mouth and begins to guide your head back and forth. You hesitantly take your place as [his of M] obedient little cocksucker.[or]The [M] pushes [his of M] [manly-penis] into your open mouth. You push aside your misgivings and eagerly begin to suck.[or]You give the [M]'s [manly-penis] an experimental lick, furtively glancing up at [him of M] as you allow it to slide into your mouth.[or][if the player is not wrist bound]You give the [manly-penis] in front of you a few hesitant tugs, embarrassment coloring your cheeks as the [M] pushes [his of M] member into your open mouth.[otherwise]You shiver with what you pretend is disgust as the [M] places [his of M] hands on your shoulders, pushing every inch of [his of M] firm, hard cock into your open mouth.[end if][or]You lean forward, gingerly wrapping your lips around the [M]'s cock before you start getting second thoughts. [if M is unfriendly]Just as they set in, a firm hand grabs the back of your head, assuring you that you're in this until [he of M] decides you're finished.[end if][or][if the largeness of breasts > 5]The [M] fondles your [BreastDesc], leaving [his of M] [manly-penis] to stare you in the face. You look up at [him of M], and obediently lean forward as [his of M] hardness slides between your lips.[otherwise]The [M] pushes [his of M] [manly-penis] into your open mouth, ruffling your [ShortDesc of hair] as you hesitantly, but obediently begin to suck.[end if][or]The [M] shoves [his of M] [manly-penis] into your open mouth. Without too much of a second thought, you slowly begin to suck.[in random order]";
	otherwise:
		say "[one of]The [M] shoves [his of M] [manly-penis] into your open mouth. You hum happily as you begin to suck.[or]The [M] pushes [his of M] [manly-penis] into your open mouth. You gaze up at [him of M] as you eagerly bob your head back and forth.[or][if the player is not wrist bound]You wrap your fingers around the [M]'s [manly-penis], moaning like the dirty whore you are as [he of M] slides it into your mouth.[otherwise]You drag your tongue up and down the [M]'s shaft, moaning lecherously as [his of M] [second custom style]delicious[roman type] meat slides into your mouth.[end if][or][if the largeness of breasts > 5]You wrap your lips around the [M]'s [manly-penis] as [he of M] manhandles your [BreastDesc], locking eyes with [him of M] as you eagerly begin to suck.[otherwise]The [M] pushes [his of M] [manly-penis] into your open mouth, grinning down at you as you desperately worship [his of M] length with your tongue and throat.[end if][or]The [M] shoves [his of M] [manly-penis] into your open mouth. Your lips close around the invader at their first opportunity, all too eager [if the semen taste addiction of the player > 8]for that spermy goodness[otherwise]to get to work[end if].[or]The [M] pushes [his of M] [manly-penis] into your mouth and begins to guide your head back and forth. You give [him of M] a smouldering look, eagerly leaning into [his of M] movements as you rub [his of M] shaft with your tongue.[in random order]".

To say (M - a monster) mercy sex (N - a number):
	let O be a random orifice penetrated by M;
	if N is 1:
		say "The [M] rubs your back, fucking your [variable O] with slow strokes.";
	if N is 2:
		say "The [M] slows down a bit, but there's still quite a bit of power to [his of M] thrusts.";
	if N is 3:
		say "The [M] pounds your [variable O], slightly softening [his of M] grip and controlling [his of M] pace.";
	if N is 4:
		say "The [M] fucks your [variable O] with shallow strokes. You can tell from the softening of [his of M] grip that [he of M][']s trying not to hurt you.";
	if N is 5:
		say "The [M] slowly plows your [variable O], loosening [his of M] grip slightly so you know [he of M][']s not trying to hurt you.";
	if N is 6:
		say "The [M] slowly drives [his of M] [manly-penis] in and out of your [variable O].";
	if N is 7:
		say "The [M] fucks your [variable O] slowly and methodically, breathing evenly as if trying to maintain focus.".

To say (M - a monster) submission sex (N - a number):[We care about friendly fucking here but not during rough sex.]
	let O be a random orifice penetrated by M;
	if N is 1:
		say "The [M] takes the opportunity to reach underneath you and fondle your [BreastDesc] as [he of M] pistons [his of M] [manly-penis] in and out of your [variable O].";
	if N is 2:
		say "The [M] pushes you into the floor, leaning over so you can feel [his of M] breath on your back as [he of M] slams [his of M] [manly-penis] in and out of your [variable O].";
	if N is 3:
		let C be a random worn skirted clothing;
		if C is nothing, let C be a random worn crotch covering clothing;
		say "The [M] [if C is clothing]pushes [his of M] hand underneath your [printed name of C][otherwise]squeezes your [AssDesc][end if] as [he of M] plows your [variable O], [if M is friendly-fucking]taking full advantage of this opportunity to play with your body.[otherwise]making sure to keep one hand on your hips in case you try to get away.[end if]";
	if N is 4:
		say "[if the relevant sex addiction of M < 6]The [M] fucks your [variable O] with fast, hard thrusts. You close your eyes and tilt your head to the ground, focusing as hard as possible on when it will be over.[otherwise if the relevant sex addiction of M < 10]The [M] slams in and out of your [variable O], grunting heavily. You bite back a moan of pleasure.[otherwise]The [M] slams in and out of your [variable O], grunting heavily. You look over your shoulder and make a show of biting your lip.[end if]";
	if N is 5:
		say "[if the relevant sex addiction of M < 6]The [M] plows [his of M] [manly-penis] in and out of your [variable O]. It's extra humiliating because you're letting [him of M] do it![otherwise if the relevant sex addiction of M < 10]The [M] slams [his of M] [manly-penis] in and out of your [variable O], panting heavily. You try to convince yourself you're not doing this because you enjoy it.[otherwise]The [M] fucks your [variable O] with fast, hard thrusts. You close your eyes and tilt your head to the ground, losing yourself to pleasure.[end if]";
	if N is 6:
		say "[if the relevant sex addiction of M < 7]The [M] gives your [variable O] the hard fucking it deserves. You clench your fists and try to ignore your growing embarrassment.[otherwise if the humiliation of the player < 15000]The [M] roughly fucks your [variable O], panting heavily. You can almost feel your dignity crumbling, every thrust humiliating you more and more.[otherwise if the relevant sex addiction of M < 10]The [M] plows [his of M] [manly-penis] in and out of your [variable O]. There's something so invigorating about letting [him of M] do it![otherwise]The [M] plows [his of M] [manly-penis] in and out of your [variable O]. It's so satisfying to let [him of M] do it![end if]";
	if N is 7:
		if the player is male, say "[if the size of penis < 4 and tg fetish >= 1]The [M] ruts you like an animal. At this point, there's not a lot separating you from a girl.[otherwise if the size of penis < 4 and the size of penis > 0 and the bimbo of the player < 14]The [M] pounds your [asshole] hard and fast. You can't help feeling a little embarrassed of how minuscule your [ShortDesc of penis] is compared to [his of M].[otherwise if the size of penis < 4 and the size of penis > 0]The [M] pounds your [asshole] hard and fast. You feel proud of how minuscule your [ShortDesc of penis] is compared to [his of M].[otherwise if the bimbo of the player < 3]The [M]'s balls repeatedly slap your taint as he pistons in and out of your [asshole],as if to remind you how little you've actually done to stop [him of M].[otherwise if the bimbo of the player < 5]Shocks of pleasure ripple through your [manly-penis] as [he of M] pounds your [asshole]. And you thought it was humiliating before...[otherwise if the bimbo of the player < 7]The [M]'s [manly-penis] relentlessly pounds your sensitive prostate, reminding you how humiliating it is to get fucked by another man.[otherwise if the bimbo of the player < 9]Shocks of pleasure ripple through your [ShortDesc of penis] as [he of M] pounds your [asshole]. It's difficult to resist when it feels this good.[otherwise if the bimbo of the player < 10]The [M]'s [manly-penis] relentlessly pounds your sensitive prostate, reminding you that you're a dirty faggot for enjoying this.[otherwise if the bimbo of the player < 12]The [M]'s balls repeatedly slap your taint as he pistons in and out of your [asshole], as if to remind you how much you secretly like this.[otherwise if the bimbo of the player < 14]The [M]'s balls repeatedly slap your taint as he pistons in and out of your [asshole], as if to remind you how much you LOVE getting fucked.[otherwise]Shocks of pleasure ripple through your [ShortDesc of penis] as [he of M] pounds your [asshole]. Phew, [he of M] sure knows how to show a girl a good time![end if]";
		otherwise say "[if the player is horny and the relevant sex addiction of M < 10]The [M] fucks your [variable O] hard and fast. After a few seconds [he of M] reaches between your legs, chuckling when [he of M] discovers just how wet you are.[otherwise if the player is horny]The [M] fucks your [asshole] hard and fast. After a few seconds [he of M] reaches between your legs, sinking a finger into your [vagina] when [he of M] realizes how wet you are.[otherwise if the openness of vagina > 3]The [M] reaches between your legs, sinking two fingers into your [vagina] as [he of M] slams in and out of your [asshole].[otherwise]The [M] reaches between your legs, gently rubbing your clit in small circles as [he of M] plows your [asshole].[end if]".

To say (M - a monster) rough sex (N - a number):
	let O be a random orifice penetrated by M;
	if N is 1:
		say "[if there is a worn ballgag and the bimbo of the player > 12]The [M] rams [his of M] [manly-penis] in and out of your [variable O]. You feel slightly annoyed that your [random worn ballgag] is muffling your moans.[otherwise if there is a worn ballgag and the bimbo of the player > 7]The [M] rams [his of M] [manly-penis] in and out of your [variable O]. You feel slightly relieved that your [random worn ballgag] muffles the sound of your moans.[otherwise if there is a worn ballgag]The [M] rams [his of M] [manly-penis] in and out of your [variable O]. Your grunts of displeasure are muffled by the lump of plastic in your mouth.[otherwise if the relevant sex addiction of M > 12]The [M] gives your [variable O] the hard fucking it deserves. You arch your back and shamelessly moan in pleasure.[otherwise if the relevant sex addiction of M > 7]The [M] gives your [variable O] the hard fucking it deserves. You arch your back and emit an involuntary moan of pleasure.[otherwise]The [M] gives your [variable O] the hard fucking it deserves, panting heavily. You try as hard as possible to show your displeasure.[end if]";
	if N is 2:
		let F be the openness of O - the girth of M;
		say "[if the F < 0 and the relevant sex addiction of M > 11]The [M] is roughly fucking your [variable O] and panting heavily. It's so exciting knowing [he of M] barely fits![otherwise if F < -2]The thickness of the [M]'s [manly-penis] is VERY noticeable as [he of M] slams it in and out of your tight [variable O].[otherwise if F < 0]The [M] ruts you like an animal. Each of [his of M] thrusts reach nice and deep, as if to acclimate your tight [variable O] to the feeling of [manly-penis].[otherwise if F > 4]The [M] pounds your [variable O] mercilessly, but your [variable O] is so stretched that it doesn't feel rough at all.[otherwise if F > 2]The [M] fucks you hard and fast. However, your [variable O] is loose enough that it doesn[']t actually feel rough at all.[otherwise]The [M]'s thrusts come quickly, greedily seeking the inner reaches of your [variable O].[end if]";
	if N is 3:
		say "[if the thickness of hips > 6]The [M] plunges into your [variable O] at full force. Lewd claps ring through the air as [his of M] hips slam into your [HipDesc].[otherwise if the flesh volume of hips > 4]The [M] plows your [variable O] as if you were some kind of fuck toy! You can feel your [HipDesc] jiggling with each thrust.[otherwise]The [M] slams in and out of your [variable O], grunting heavily.[end if]";
	if N is 4:
		say "[if the largeness of breasts > 15 and the bimbo of the player > 11]The [M] explores your [BreastDesc] with [his of M] hands as [he of M] plows your [variable O]. You giggle. Of course, [he of M] knows you're much too heavy to get away.[otherwise if the largeness of breasts > 15]The [M] explores your [BreastDesc] with [his of M] hands as [he of M] plows your [variable O]. You sigh.  Obviously [he of M] knows you're much too heavy to get away.[otherwise if the largeness of breasts > 12 and the number of worn bras is 0]The [M] roughly fucks your [variable O], causing your unrestrained [BreastDesc] to slap audibly against your chest.[otherwise if the largeness of breasts > 9]The [M] roughly fucks your [variable O], jostling your [BreastDesc] with the force of [his of M] thrusts.[otherwise if the largeness of breasts > 5]The [M] roughly fucks your [variable O] as your [BreastDesc] [BreastBounceDesc] with the force of [his of M] thrusts.[otherwise]The [M] pounds your [variable O] with fast, powerful strokes.";
	if N is 5:
		say "[if the relevant sex addiction of M > 12]The [M] slams [his of M] [manly-penis] in and out of your [variable O], panting heavily. You're enjoying it so much you can hardly think![otherwise if the relevant sex addiction of M > 7]The [M] fucks your [variable O] with fast, hard thrusts. You close your eyes and tilt your head to the ground, trying to ignore how good it feels.[otherwise]The [M] slams in and out of your [variable O], grunting heavily. You look over your shoulder and scowl in hopes of turning [him of M] off.[end if]";
	if N is 6:
		if the size of penis > 0 and the relevant sex addiction of M > 7 and there is worn knickers and the number of worn chastity cages is 0:
			let P be a random worn knickers;
			say "[if the size of penis < 3]The [M] plows your [asshole] without mercy. Your desperately hard [sissy-penis] not even tenting your [printed name of P].[otherwise if the armour of P - 3 < the size of penis]The [M] plows your [asshole] without mercy, your [ShortDesc of penis] hard and peeking out of your [printed name of P].[otherwise]The [M] plows your [asshole] without mercy, your [ShortDesc of penis] hard enough to visibly tent your [printed name of P].[end if]";
		otherwise if the size of penis > 2 and the relevant sex addiction of M > 7:
			say "The [M] plows your [asshole] without mercy, your [ShortDesc of penis] slapping audibly against your [belly].";
		otherwise if the player is male:
			say "[if the bimbo of the player < 6 and the size of penis > 2]The [M] ruts you like an animal. You have a penis, but [he of M][']s still treating you just like a woman![otherwise if the size of penis > 2]The [M] rams [his of M] [manly-penis] in and out of your [asshole]. Your [ShortDesc of penis] jiggles around.[otherwise if the humiliation of the player < 22500]The [M] fucks your [asshole] hard and fast. There's something so humiliating about sex with another man![otherwise]The [M] fucks your [asshole] with fast, powerful thrusts. You can feel [his of M] [manly-penis] slamming into your sensitive prostate.[end if]";
		otherwise:
			say "[if the relevant sex addiction of M > 10 and there is a worn chastity cage]The [M] slams in and out of your [asshole]. You desperately want to play with yourself but you can't because of your stupid belt![otherwise if the relevant sex addiction of M > 6 and there is a worn chastity cage]The [M] slams in and out of your [asshole]. You can't help feeling ashamed that you would be playing with yourself if not for your chastity belt.[otherwise if the relevant sex addiction of M > 13 and vagina is not actually occupied]The [M] slams in and out of your [asshole], panting heavily. You eagerly finger yourself, determined to enjoy this as much as possible.[otherwise if the relevant sex addiction of M > 13]The [M] roughly fucks your [asshole] as you frantically diddle your clit. You want to enjoy yourself as much as you possibly can![otherwise if the relevant sex addiction of M > 9]The [M] roughly fucks your [asshole] as you play with your clit. You know you shouldn't, but it's like you just can't stop yourself![otherwise if the relevant sex addiction of M > 6]The [M] slams in and out of your [asshole], panting heavily. You want to touch yourself so badly, but you won't give [him of M] the satisfaction![otherwise]The [M] slams in and out of your [asshole], panting heavily. You know it would make it easier to take if you touched yourself as well, but you definitely won't give [him of M] or Nintendolls the satisfaction![end if]".

To say (M - a monster) sex reaction:
	say "".

To compute labour to (M - a monster):[Should never appear]
	say "Tried to give birth but the parent of the baby ([M]) has not been accounted for, please report this bug!";
	now the pregnancy of the player is 0.

To compute fatherhood to (M - a monster): [no reason to check for successful pregnancy here, since we already know pregnancy was not delayed at this point.]
	repeat with N running through family things:
		now N is not inseminating vagina;
	if M is not alive:
		say "[DefaultBirthScene]";
		if debugmode is 1, say "The father was [M], but he was dead.";
	otherwise:	
		now the father is mating;
		calm the father;
		regionally place the father;
		now the father is not interested;
		now the father is not penetrating asshole;
		now the father is not penetrating vagina;
		now the father is not grabbing the player.

To compute racial submission to (M - a monster):
	if M is dark skinned:
		now auto is 1;
		let B be a random actually presentable body part;
		if B is not face and face is actually presentable and M is male and the player is craving and M is willing to do oral, now B is face;
		if the player is a butt slut and asshole is actually presentable and M is willing to do anal, now B is asshole;
		if the player is a pussy slut and vagina is actually presentable and M is willing to do vaginal, now B is vagina;
		if the player is a tit slut and M is male and M is willing to do titfucks and breasts are actually presentable, now B is breasts;
		if the sensitivity of breasts > 7 and there is a worn nipple chain and M is male and M is willing to do titfucks, now B is breasts;
		if B is body part:
			say "[one of]For some reason you[or]You once again[stopping] can't help but [if the player is upright]drop to your knees and [end if][if B is body part]present yourself[otherwise]beg for [his of M] [manly-penis][end if].";
			now auto is 0;
			try kneeling;
			if the player is prone, try direct-presenting B to M.

To compute (M - a monster) buttplugging with (P - a sex toy):
	say "[ButtplugFlav of M with P]";
	now P is worn by the player;
	now P is penetrating asshole;
	ruin asshole.

To say ButtplugFlav of (M - a monster) with (P - a sex toy):
	say "The [M] [if P is off-stage]produces a[otherwise]takes the[end if] [P] and pushes it into your [asshole]!".

To compute ghost fleeing of (M - a monster):
	say "The [M] immediately begins to look for a way out of the room.";
	now the scared of M is 10.


To get orgasm image of (M - a monster) in (F - a fuckhole):
	do nothing.

Special Events ends here.
