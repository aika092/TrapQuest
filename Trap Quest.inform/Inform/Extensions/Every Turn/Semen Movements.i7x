Semen Movements by Every Turn begins here.

Include Absorption by Every Turn.
Include Pregnancy by Every Turn.

[!<ComputeCumMovements>+

REQUIRES COMMENTING

+!]
A time based rule (this is the compute cum movements rule):
	compute absorption;
	unless the player is in Dungeon35 or the player is in Woods05:
		let R be a random number from -1 to 100;
		if R < the semen coating of face and the semen coating of face > 0:
			compute face cum dribbling;
		otherwise if R < the semen coating of breasts and the semen coating of breasts > 0:
			compute tits cum dribbling;
		otherwise if R < the semen coating of belly and the semen coating of belly > 0:
			compute belly cum dribbling;
		otherwise if R < the semen coating of thighs and the semen coating of thighs > 0:
			say "Globs of [semen] drip from your [ShortDesc of thighs] onto the ground.[if the semen addiction of the player < 6]  [first custom style]Yuck.[roman type][line break][end if]";
			CumThighsDown 1;
			SemenPuddleUp 1;
		if the total fill of belly > 0:
			if the player is male and the largeness of belly > 6 and pregnancy fetish is 1:
				let M be a random off-stage maternity bra;
				if a random number between 1 and (150 - (the largeness of belly * 5)) is 1:
					if the bimbo of the player < 12, say "[first custom style][one of]There is no way that I should look this pregnant...[or]I can't get pregnant without a womb, can I?![or]Looking like I'm pregnant is so humiliating...[or]How am I supposed to remain dignified with this belly that makes me look pregnant?![at random][roman type][line break]";
					otherwise say "[second custom style][one of]It's almost as if I'm pregnant... *giggle*[or]Can a girl get pregnant even if she doesn't have the right parts?[or]I guess I do look pretty silly with this huge belly...[or]Anyone looking at me would think that I'm a pregnant girl![at random][roman type][line break]";
					humiliate 50 * the largeness of belly; [Special case for humiliation; makes it actually meaningful to take pregnancy fetish as male]
				otherwise if M is actually summonable and a random number between 1 and 45 is 1 and the largeness of breasts < 17:
					summon M cursed;
					now the size of M is the largeness of breasts + 3;
					if the size of M > 15, now the size of M is 15;
					if the size of M > max breast size, now the size of M is max breast size;
					say "A maternity bra materialises over your breasts![if the size of M is the largeness of breasts + 3]It's way too big for you, as if it has purposefully been left with room for growth![end if]";
			compute enema holding;
		if the semen volume of vagina > 0:
			if pregnancy fetish is 1:
				if the pregnancy of the player is 0:
					let R be a random number from -420 to the semen volume of vagina;
					if the pregnancy rate of the player is 2, now R is a random number from -250 to the semen volume of vagina;
					if the pregnancy rate of the player > 2, now R is a random number from -155 to the semen volume of vagina;
					if the pregnancy rate of the player < 1, now R is a random number from -840 to the semen volume of vagina;
					if the player is a cheerleader, decrease R by 5;
					if there is a worn maternity dress or the player is a fertility goddess, increase R by 5; [TODO probably needs better balancing]
					if R > 1 and the number of family things > 0 and the virgin of the player is 0 and slow pregnancy < 3:
						say "[ConceptionFlav]";
						now the pregnancy of the player is 1;
						check goddess eligibility;
				otherwise:
					if the latex-transformation of the player > 3 and the pregnancy of the player is 1, now the pregnancy of the player is 2;
					compute pregnancy;
			if the pregnancy of the player is 0:
				let R be a random number between -1 and (85 + (pregnancy fetish * 85));
				if debugmode is 1, say "Womb action check of [R][paragraph break]";
				if R < the semen volume of vagina:
					let S be a random number between 1 and 7;
					if the latex-transformation of the player > 3, now S is 5;
					if S is 1:
						say "[one of]You feel a warm feeling in your womb.[or]You feel some pressure lifted from within your womb.[or]Heat rises from your womb up to your chest.[at random]";
						Wombsquirt 1;
						Bustup 1;
					if S is 2:
						say "[one of]A burning sense of passion runs through you.[or]Your womb sends a wave of ecstasy over your body.[or]You feel your womb cry out for more [semen].[at random]";
						Wombsquirt 1;
						SemenAddictUp 3;
					if S is 3:
						say "[one of]You feel a wave of calm come over you.[or]Your mind focuses on your womb, which feels pleasant.[at random]";
						Wombsquirt 1;
						IntUp 1;
					if S is 4:
						say "[one of]You feel a warm feeling in your womb.[or]You feel some pressure lifted from within your womb.[or]Heat flows from your womb up outwards to your hips.[at random]";
						Wombsquirt 1;
						Hipup 1;
					if S > 4:
						say "A large glob of [semen] [one of]slowly seeps[or]leaks[purely at random] out of your [vagina] and [if the player is pee protected and bukkake fetish is 1]stains your [printed name of random worn bottom level pee protection clothing].[otherwise]trickles down your [ShortDesc of thighs].[end if]";
						Wombsquirt 1;
						leak vagina semen 1.

[!<CheckGoddessEligibility>+

REQUIRES COMMENTING

+!]
To check goddess eligibility:
	let H be a random off-stage laurel wreath;
	if H is actually summonable and ((the children of the player > a random number between 1 and 2) or (the children of the player > 0 and slow pregnancy is 1)):
		say "[bold type]A laurel wreath appears on your head![roman type][line break]";
		summon H cursed.


[!<SayConceptionFlav>+

REQUIRES COMMENTING

+!]
To say ConceptionFlav:
	say "[one of]You look down, and realise that your belly isn't slowly getting smaller as you'd expect.  [if the bimbo of the player < 8][first custom style]Am I pregnant?![otherwise][second custom style]I think I'm pregnant![end if][roman type][line break][or]You feel the tiniest kick coming from inside your belly... [if the bimbo of the player < 8][first custom style]Uh-oh.[otherwise][second custom style]Oopsie, I think I got myself knocked up back there![end if][roman type][line break][purely at random]".

[!<DecideWhichNumberIsBellyStrainBalance>+

REQUIRES COMMENTING

+!]
To decide which number is belly strain balance: [tweak this number to balance this mechanic]
	if there is a rejuvenation clothing penetrating asshole, decide on 60;[rejuvenation dildos suck unless they help you handle enemas in some way, but I'm not certain how to implement "enema-helping" on only the rejuvenation clothing, especially when magical enchantments can sometimes change. Maybe it needs to be a definition instead?]
	decide on 20.

[!<ComputeEnemaHoldingWithEarningsAndSeconds>+

REQUIRES COMMENTING

+!]
To compute enema holding:
	if the total squirtable fill of belly > 0 and the latex-transformation of the player < 5 and currently-squirting is 0:
		if the player is not able to expel, now the squirt timer of belly is 0; [The orifice has been plugged, preventing the flow.]
		if the squirt timer of belly > time-seconds:
			decrease the squirt timer of belly by time-seconds;
		otherwise if the squirt timer of belly > 0:
			now the squirt timer of belly is 0;
			if currently-squirting is 0, AssSquirt;
		otherwise:
			increase the holding strain of belly by time-seconds;
			let rem be the remainder after dividing the holding strain of belly by belly strain balance;
			if rem < time-seconds:
				let strain factor be the holding strain of belly divided by belly strain balance;
				increase strain factor by (the total squirtable fill of belly * 4) divided by belly limit; [if we have a completely full belly, we increase by 4, if we have a less than a quarter, we'll increase by 0.]
				if strain factor < 4: [at less than 4 strain factor, we just give flavour]
					if strain factor > 0 and the number of worn enema-helping clothing is 0:
						say "[one of]Your belly growls as the [enema] swirls around inside[or][if the player is upright]You stagger slightly[otherwise]Your arms and legs shake slightly[end if] as the [enema] sloshes around inside you[or]Your stomach makes a gurgling sound as your [enema] bubbles away inside[or]Your [enema] puts more and more pressure on your rectum[or]The [enema] eddies and whirls inside your belly[in random order], [one of]making you feel uneasy[or]and you feel quite uncomfortable[or]making you a bit queasy[or]causing your intestines to cramp a bit[in random order].";
				otherwise:
					let R be (a random number between 6 and 40) - the incontinence of the player;
					if R < strain factor and (the player is able to automatically expel or (there is a worn crotch-in-place milking basque and the total fill of belly >= belly limit - 5)):
						unless the player is incontinent, say "[bold type]You feel a rumble in your [BellyDesc] and a pressure building from within your [asshole]... [if the small egg count of belly > 0 or the medium egg count of belly > 0 or the large egg count of belly > 0]You're going to lay some eggs soon,[otherwise if the urine volume of belly > the total fill of belly / 2]The [urine] inside you is about to come out no matter how hard you try to hold it in,[otherwise if the semen volume of belly > the total fill of belly / 2]The [semen] inside you is about to come out no matter how hard you try to hold it in,[otherwise if the milk volume of belly > the total fill of belly / 2]The [milk] inside you is about to come out no matter how hard you try to hold it in,[otherwise if the water volume of belly is the total fill of belly]The enema inside you is about to come out no matter how hard you try to hold it in,[otherwise]The stuff inside you is about to come out no matter how hard you try to hold it in,[end if] and it doesn't look like there's any way to stop it!  [if the player is live fucked]You desperately hope that your fucking ends before it starts![otherwise]Better [one of]get ready[or]prepare yourself[or]find somewhere safe if possible[in random order]...[end if][roman type][line break]";
						now the squirt timer of belly is a random number between 5 and (belly strain balance - 6); [it should always be sooner than the next cramp would have been.]
					otherwise if the number of worn enema-helping clothing is 0:
						let E be a random viable enema-effect;
						compute effect of E;
	otherwise if the holding strain of belly > 0:
		reset all enema effects;
		now the holding strain of belly is 0.

[!<YourselfIsAbleToAutomaticallyExpel>+

REQUIRES COMMENTING

+!]
Definition: yourself is able to automatically expel:
	if there is a worn crotch-in-place milking basque, decide no;
	if the player is not able to expel, decide no;
	decide yes.

[!<YourselfIsAbleToExpel>+

REQUIRES COMMENTING

+!]
Definition: yourself is able to expel:
	if asshole is actually occupied:
		if a random thing penetrating asshole is sex toy, decide yes;
		decide no;
	decide yes.

[!<EnemaEffect>@

REQUIRES COMMENTING

@inherits <Object>

@!]
An enema-effect is a kind of object.

[!<EnemaEffect>@<incidents:Integer>*

REQUIRES COMMENTING

*@!]
An enema-effect has a number called incidents.

[!<DecideWhichNumberIsTheMaxIncidentsOfEnemaEffect>+

REQUIRES COMMENTING

+!]
To decide which number is the max-incidents of (E - an enema-effect):
	decide on 1.

[!<AnEnemaEffectIsViable>+

REQUIRES COMMENTING

+!]
Definition: an enema-effect (called E) is viable:
	if the incidents of E < the max-incidents of E, decide yes;
	decide no.

[!<ResetAllEnemaEffects>+

REQUIRES COMMENTING

+!]
To reset all enema effects:
	repeat with E running through enema-effects:
		now the incidents of E is 0.

[!<ComputeEffectOfEnemaEffect>+

REQUIRES COMMENTING

+!]
To compute effect of (E - an enema-effect):
	say "[bold type]";
	execute E;
	say "[roman type][line break]";
	increase the incidents of E by 1.

[!<ExecuteEnemaEffect>+

REQUIRES COMMENTING

+!]
To execute (E - an enema-effect):
	say "BUG - the enema effect '[E]' has no coded effect.  Please report!".

[!<enemaCramping:EnemaEffect>*

REQUIRES COMMENTING

*!]
enema-cramping is an enema-effect.

[!<DecideWhichNumberIsTheMaxIncidentsOfEnemaCramping>+

REQUIRES COMMENTING

+!]
To decide which number is the max-incidents of (E - enema-cramping):
	decide on 1000.

[!<ExcecuteEnemaCramping>+

REQUIRES COMMENTING

+!]
To execute (E - enema-cramping):
	say "[one of]The [enema] inside your belly puts huge pressure on your rectum[or]Your rectal muscles spasm as it struggles to hold in your [enema][in random order], ";
	if the player is upright:
		say "[one of]causing your knees to buckle[or]and you fall to your knees[or]making you lose your balance[in random order] as [one of]your intestines cramp up[or]a huge bolt of pain hits your stomach[or]your tummy groans as it cramps[at random].";
		try kneeling;
	otherwise:
		say "[one of]causing your fatigue to rise[or]making your knees weak[or]and your arms buckle[in random order] as [one of]your intestines cramp up[or]a huge bolt of pain hits your stomach[or]your tummy groans as it cramps[at random].";
		if the fatigue of the player < the tired threshold of the player, now the fatigue of the player is the tired threshold of the player.

[!<enemaStatLoss:EnemaEffect>*

REQUIRES COMMENTING

*!]
enema-stat-loss is an enema-effect.

[!<DecideWhichNumberIsTheMaxIncidentsOfEnemaStatLoss>+

REQUIRES COMMENTING

+!]
To decide which number is the max-incidents of (E - enema-stat-loss):
	decide on 2.

[!<ExecuteEnemaStatLoss>+

REQUIRES COMMENTING

+!]
To execute (E - enema-stat-loss):
	say "The effort of holding your [enema] in weakens the rest of your body.  You will be [if the incidents of E > 0]even [end if]slower and weaker until you [italic type]expel[bold type] it out.".

[!<enemaIntLoss:EnemaEffect>*

REQUIRES COMMENTING

*!]	
enema-int-loss is an enema-effect.

[!<DecideWhichNumberIsTheMaxIncidentsOfEnemaIntLoss>+

REQUIRES COMMENTING

+!]
To decide which number is the max-incidents of (E - enema-int-loss):
	decide on 2.

[!<ExecuteEnemaIntLoss>+

REQUIRES COMMENTING

+!]
To execute (E - enema-int-loss):
	say "The uncomfortable nature of your [enema] clouds your mind.  You [if the incidents of E > 0]will have an even cloudier mind[otherwise]won't be able to think as clearly[end if] until you [italic type]expel[bold type] it out.".

[!<enemaIncontinence:EnemaEffect>*

REQUIRES COMMENTING

*!]
enema-incontinence is an enema-effect.

[!<EnemaIncontinenceIsViable>+

REQUIRES COMMENTING

+!]
Definition: enema-incontinence is viable:
	if diaper lover is 0, decide no;
	if the player is incontinent, decide no;
	if the incidents of enema-incontinence + 2 < the incidents of enema-cramping, decide yes;
	decide no.

[!<ExecuteEnemaIncontinence>+

REQUIRES COMMENTING

+!]
To execute (E - enema-incontinence):
	say "You've been holding onto your [enema] for so long that feel your sphincter weaken[if incontinence > 0] even further[end if].  ";
	increase incontinence by 1;
	say "[if the player is not incontinent]You'll now find it even more difficult to hold things in and tell when you need the toilet[otherwise]You can somehow tell that you are now completely incontinent[end if].".
	


Semen Movements ends here.
