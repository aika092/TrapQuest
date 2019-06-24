Orifice Soreness by Player begins here.

[!<ruined:Integer>*

REQUIRES COMMENTING

*!]
Ruined is a number that varies. Ruined is usually 0. [Used to check if the orifice soreness was just increased.]

[!<DecideWhichNumberIsTheLargestGirthInsideFuckhole>+

REQUIRES COMMENTING

+!]
To decide which number is the largest girth inside (F - a fuckhole):
	let G be 0;
	repeat with M running through things penetrating F: [Find the biggest thing in the orifice]
		if G < the girth of M, now G is the girth of M;
	decide on G.

[!<DecideWhichNumberIsTheSpreadingOfFuckhole>+

REQUIRES COMMENTING

+!]
To decide which number is the spreading of (F - a fuckhole):
	let T be the openness of F;
	if F is asshole and gape-gloves is worn, increase T by 2;
	decrease T by the largest girth inside F;
	decide on T.

[!<DecideWhichNumberIsTheSorenessInfluenceOfthing>+

REQUIRES COMMENTING

+!]
To decide which number is the soreness-influence of (C - a wearthing):
	decide on 0.

[!<DecideWhichNumberIsTheToleranceOfFuckhole>+

REQUIRES COMMENTING

+!]
To decide which number is the tolerance of (F - a fuckhole):
	let T be the spreading of F;
	[decrease T by the sensitivity of F;]
	if there is a lubricant covering F:
		increase T by 3;
		decrease the timer of a random lubricant covering F by 20;
	increase T by (alcohol-level + (a random number between 0 and 1)) / 2;
	if the class of the player is cumdumpster, increase T by 2;
	if there is a live thing penetrating F and the reaction of the player > 0: [Since you can only submit and resist to living things]
		increase T by 2;
		if the soreness of F > 8, increase T by 2;
		if the reaction of the player is 2, increase T by 2;
		increase T by the relaxskill of the player * 2;
	repeat with C running through worn wearthings:
		increase T by the soreness-influence of C;
	if the latex-transformation of the player > 3, increase T by 100;
	decide on T.

[!<DecideWhichNumberIsTheStimulationOfObject>+

REQUIRES COMMENTING

+!]
To decide which number is the stimulation of (O - an object) on (F - a fuckhole):
	if the semen volume of vagina > 6 and F is vagina, decide on 4; [Pussy creampie expulsion]
	decide on 0.

[!<DecideWhichNumberIsTheStimulationOfMonster>+

REQUIRES COMMENTING

+!]
To decide which number is the stimulation of (M - a monster) on (F - a fuckhole):
	if diaper quest is 1, decide on 6;
	let S be the girth of M;
	if interracial fetish is 1:
		if M is dark skinned:
			increase S by ((the BBC addiction of the player - 1) / 2) - 1;
		otherwise if M is human:
			if the player is queen of spades, decrease S by the BBC addiction of the player / 2;
			if F is vagina and black hole tattoo is worn, decrease S by 2;
	if S < 1, decide on 1;
	decide on S.

[!<DecideWhichNumberIsTheStimulationOfThing>+

REQUIRES COMMENTING

+!]
To decide which number is the stimulation of (T - a thing) on (F - a fuckhole):
	if T is insertable, decide on (the girth of T * 2) / 3;
	if diaper quest is 1, decide on 4; [Vibrations, masturbation etc. give extra arousal in diaper quest.]
	decide on 0.

[!<DecideWhichNumberIsTheStimulationOfTrap>+

REQUIRES COMMENTING

+!]
To decide which number is the stimulation of (T - a trap) on (F - a fuckhole):
	if the girth of T > 0, decide on (the girth of T * 2) / 3;
	if diaper quest is 1, decide on 4; [Vibrations, masturbation etc. give extra arousal in diaper quest.]
	decide on 0.

[!<latestAssholeInvader:Object>*

REQUIRES COMMENTING

*!]
latest-asshole-invader is an object that varies.

[!<latestVaginaInvader:Object>*

REQUIRES COMMENTING

*!]
latest-vagina-invader is an object that varies.

To say FuckerDesc of (T - a thing): [Sometimes we want to say something else other than its name, e.g. the hole in wall.]
	say "the [ShortDesc of T]".
To say BigFuckerDesc of (T - a thing): [Sometimes we want to say something else other than its name, e.g. the hole in wall.]
	say "The [ShortDesc of T]".

[!<CommunicateStrugglingOfFuckhole>+

REQUIRES COMMENTING

+!]
To communicate struggling of (F - a fuckhole):
	let T be a random thing penetrating F;
	if T is not nothing:
		if (F is asshole and latest-asshole-invader is not T) or (F is vagina and latest-vagina-invader is not T): [We haven't recently discussed how this is tearing the player apart]
			if F is asshole, now latest-asshole-invader is T;
			otherwise now latest-vagina-invader is T;
			if ungape is 0, say "[BigFuckerDesc of T] [if the girth of T > the openness of F]is much too big[otherwise]is destroying your poor [variable F][end if]! Your [one of]poor hole[or][variable F][stopping] [one of]stretches[or]is stretched[or]widens[or]is gaped[at random] [one of]painfully and is getting [if the soreness of F < 6]sore very quickly[otherwise]more and more sore[end if][or]even further[stopping].";
			otherwise say "[BigFuckerDesc of T] [if the girth of T > the openness of F]is much too big[otherwise]is destroying your poor [variable F][end if]! Your [one of]poor hole[or][variable F][stopping] [one of]has to stretch painfully wide[or]is stretched to uncomfortable levels[or]widens unnaturally[at random] to accommodate the [if the girth of T > 8]ridiculously massive[otherwise if the girth of T > 6]massive[otherwise if the girth of T > 4]huge[otherwise]large[end if] girth.".

[!<RuinRollFuckhole>+

REQUIRES COMMENTING

+!]
To RuinRoll (F - a fuckhole):
	let T be a random thing penetrating F;
	if refactoryperiod <= 0:
		let A be the sensitivity of F;
		if F is asshole, increase A by the square root of the anal sex addiction of the player;
		if F is vagina, increase A by the square root of the vaginal sex addiction of the player;
		if there is a worn total protection diaper, increase A by the square root of the diaper addiction of the player;
		let ST be stimulation of T on F * 250;
		let AR be 350 + ST + (A * 100);
		if debuginfo > 0, say "[input-style]Stimulation calculation: 350 + stimulation ([ST]) + addiction bonus ([A * 100]) = [AR][roman type][line break]";
		arouse AR;
	if diaper quest is 0:
		let X be the tolerance of F;
		if X < 1, now X is 1; [Always a small chance of avoiding soreness]
		if X > 9 and the latex-transformation of the player <= 3, now X is 9; [Minimum chance is 10%]
		let R be a random number between 1 and 10;
		let R2 be a random number between 0 and 5;
		if debuginfo > 0, say "[input-style]Soreness increase roll: d10 ([R]) | ([X].5) [F] tolerance[roman type][line break]";
		decrease X by R;
		if X < 0 and the soreness of F < 10, increase the soreness of F by 1; [Increase soreness if RNG dictates]
		if the virgin of the player is 1 and there is a live virginity taking thing penetrating F and the player is female and F is vagina: [We must always allow the player to lose their virginity this way even if they are gaped & even if they succeeded the avoid soreness roll]
			gape F times 1;
		otherwise if the analvirgin of the player is 1 and there is a live virginity taking thing penetrating F and F is asshole:
			gape F times 1;
		otherwise if X < -5 and the soreness of F < 10: [Double soreness and gape increasing]
			if debuginfo > 0, say "[input-style]BONUS DOUBLE SORENESS [if the largest girth inside F > the openness of F]& GAPE [end if](difference was greater than 5)[roman type][line break]";
			communicate struggling of F;
			increase the soreness of F by 1;
			if the largest girth inside F > the openness of F, gape F times 1;
		otherwise if the largest girth inside F > the openness of F + R2:
			if debuginfo > 0, say "[input-style]Gape increase roll: girth ([largest girth inside F - 1].5) | [the openness of F + R2] = ([openness of F]) current gape + ([R2]) d6-1[roman type][line break]";
			gape F times 1;
		otherwise:
			if debuginfo > 0, say "[input-style]Gape increase roll: girth ([largest girth inside F - 1].5) | [the openness of F + R2] = ([openness of F]) current gape + ([R2]) d6-1[roman type][line break]";
		if debuginfo > 0, say "[input-style]Total [F] soreness change: [previous soreness of F] -> [soreness of F][roman type][line break]";
		if the soreness of F <= the previous soreness of F and the soreness of F < 10 and there is a live thing penetrating F:
			if F is asshole and gape-gloves is worn:
				say "Your fingers holding your [variable F] open have helped you take [FuckerDesc of random live thing penetrating F] without getting any more sore!";
			otherwise if the class of the player is cumdumpster:
				say "Your cumdumpster [F] has taken [FuckerDesc of random live thing penetrating F] without getting any more sore!";
			otherwise if alcohol-level > 0:
				say "The alcohol has helped keep your [variable F] loose to take [FuckerDesc of random live thing penetrating F] without getting any more sore!";
			otherwise if the reaction of the player > 0:
				compute submission success of a random live thing penetrating F in F; [Tell the player they succeeded at resisting soreness]
			otherwise if the number of lubricants covering F > 0:
				say "The [lubricant] sloshing around inside your [variable F] has helped you take [FuckerDesc of random live thing penetrating F] without getting any more sore!".

[NB ruin asshole times & ruin vagina times functions are in Asshole and Vagina extensions. The core functionality is that soreness fainting is checked if soreness is at max, and then afterwards we RuinRoll the orifice (the procedure directly above this line)]



[!<SayRuinedFlavOfFuckhole>+

REQUIRES COMMENTING

+!]
To say RuinedFlav of (F - a fuckhole):
	say "[bold type]Your [variable F] is completely and utterly ruined. You won't be able to think straight until it has healed at least a bit.[roman type][line break][one of][if sex fainting is 0][otherwise if there is a live thing penetrating F]If [FuckerDesc of random live thing penetrating F] keeps fucking you much longer, you'll be at risk of fainting.[otherwise]If anyone was to try and fuck your [variable F] now, you might faint.[end if][or][stopping][roman type][line break]".


[!<CheckSorenessFaintingOfFuckhole>+

REQUIRES COMMENTING

+!]
To check soreness fainting of (F - a fuckhole):
	if sex fainting is 1 or there is a futanari slutty sister penetrating F:
		let N be the raw anal sex addiction of the player;
		if F is vagina, now N is the raw vaginal sex addiction of the player;
		if the tolerated of F <=  N / 2:
			increase the tolerated of F by 1;
		otherwise:
			say "[one of]Your [variable F] is so sore that your mind can't take it any more. You feel yourself start to pass[or]You are on the verge of passing[stopping] out.[if debugmode > 0 and the raw delicateness of the player < 20]Do you want to steel your mind and power through (this will not change any stats because you are in debug mode)? [otherwise if the raw delicateness of the player < 20][line break]Do you want to steel your mind and attempt to power through (this will cause a slight increase in delicateness)? [end if]";
			if the raw delicateness of the player < 20 and the player is consenting:
				say "You steel your mind and manage to power through the intense feelings without fainting[if the delicateness of the player < 4][otherwise if the delicateness of the player < 8]. You whimper gently[otherwise if the delicateness of the player < 12]. You sob quietly[otherwise if the delicateness of the player < 16]. You can't help but cry[otherwise if diaper lover >= 1]. You bawl loudly like a baby[otherwise]. You bawl loudly[end if].";
				if debugmode is 0:
					PainUp 1;
					potentially despair about F sex;
			otherwise:
				if the raw delicateness of the player < 20, say "Your mind is too weak and the feelings are too intense, and you fail to stay conscious!";
				now delayed fainting is 1;
				IntDown 1;
				now the fainting reason of the player is 18;
	otherwise:
		increase sex-hurt-balance by 1;
		if sex-hurt-balance > 1:
			now sex-hurt-balance is 0;
			PainUp 1;
			potentially despair about F sex.

[!<sexHurtBalance:Integer>*

REQUIRES COMMENTING

*!]
sex-hurt-balance is a number that varies.

[!<PotentiallyDespairAboutFuckholeSex>+

REQUIRES COMMENTING

+!]
To potentially despair about (F - a fuckhole) sex:
	if the raw sex addiction of the player > the raw delicateness of the player:
		say "[one of]Your addiction to sex slightly decreases.[or]Your mind associates sex with pain, slightly reducing your opinion of it.[in random order] ";
		SilentlySexAddictDown 1;
		if F is asshole and the raw anal sex addiction of the player * 2 > the raw delicateness of the player, AnalSexAddictDown 1;
		if F is vagina and the raw vaginal sex addiction of the player * 2 > the raw delicateness of the player, VaginalSexAddictDown 1.


To compute submission success of (M - a thing) in (F - a fuckhole):
	say submission success of M in F;
	if F is asshole:
		if a random number between 0 and the raw anal sex addiction of the player is 0 and the player is horny, AnalSexAddictUp 1;
	otherwise:
		if a random number between 0 and the raw vaginal sex addiction of the player is 0 and the player is horny, VaginalSexAddictUp 1.

To say submission success of (M - a thing) in (F - a fuckhole):
	say "[if the latex-transformation of the player > 3][one of]Your rubber [variable F] doesn't get sore.[or][or][cycling][otherwise if the relaxskill of the player is 1]By relaxing your [variable F] like the wrestler taught you, you have avoided getting more sore![otherwise]By not resisting the acts of [FuckerDesc of M], you have successfully stopped your [variable F] getting more sore![end if]".



Orifice Soreness ends here.

