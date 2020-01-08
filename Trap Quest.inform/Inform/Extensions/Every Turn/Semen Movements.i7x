Semen Movements by Every Turn begins here.


To decide which number is vagina-semen-frequency:
	decide on 129.

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
			say "Globs of [semen] drip from your [ShortDesc of thighs] onto the ground.[if the semen addiction of the player < 6]  [line break][first custom style]Yuck.[roman type][line break][end if]";
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
					compute summoned quest of M;
			compute enema holding;
		if the pregnancy of the player > 0 and timeBombTime <= 0  and the player is not in a predicament room:
			if the latex-transformation of the player > 3 and the pregnancy of the player is 1, now the pregnancy of the player is 2;
			compute pregnancy;
		if the remainder after dividing time-earnings by vagina-semen-frequency < time-seconds:
			if the womb volume of vagina > 0:
				if pregnancy fetish is 1:
					if the pregnancy of the player is 0:
						let PR be 0 - the pregnancy rate of the player;
						if the class of the player is cheerleader, increase PR by 3;
						if there is a worn maternity dress or the class of the player is fertility goddess, decrease R by 3; [TODO probably needs better balancing]
						let R be a random number from PR to 5;
						if the number of family things > 0 and slow pregnancy < 3:
							if forcedFertility is true:
								now R is 0;
								now forcedFertility is false;
							otherwise if debuginfo > 0:
								say "[input-style]Conception avoidance check: pregnancy resistance ([PR]) ==> RNG([PR]~5) = [R] | ([womb volume of vagina].5) womb volume[roman type][line break]";
							if R <= the womb volume of vagina:
								say ConceptionFlav;
								now the pregnancy of the player is 1;
								check goddess eligibility;
			if the remainder after dividing time-earnings by (vagina-semen-frequency * 2) < time-seconds and the latex-transformation of the player <= 3: [half the time we are going to cause womb absorption, the other half is pussy trickling]
				if the pregnancy of the player is 0 and the womb volume of vagina > 0: [Womb semen isn't absorbed during a pregnancy!]
					let S be a random number between 1 and 3;
					if debuginfo > 0, say "[input-style]Womb absorption roll: d3 ([S + 0]) | 1)Creampie addiction + 3; 2)Intelligence + 1; 3)Hip width + 1[roman type][line break]";
					if S is 1:
						say "[one of]A burning sense of passion runs through you.[or]Your womb sends a wave of ecstasy over your body.[or]You feel your womb cry out for more [semen].[at random]";
						WombEmpty 1;
						SemenAddictUp 3;
					if S is 2:
						say "Your mind focuses on your womb, which feels pleasant. A wave of calm and clarity washes over you.";
						WombEmpty 1;
						IntUp 1;
					if S is 3:
						say "[one of]Heat flows from your womb up outwards to your hips.[or]You feel a warm feeling in your womb.[or]You feel some pressure lifted from within your womb.[cycling]";
						WombEmpty 1;
						Hipup 1;
			otherwise if the semen volume of vagina > 0:
				say "A large glob of [semen] [one of]slowly seeps[or]leaks[purely at random] out of your [vagina] and [if the player is pee protected and bukkake fetish is 1]stains your [printed name of random worn bottom level pee protection clothing].[otherwise if the player is prone]puddles below you.[otherwise]trickles down your [ShortDesc of thighs].[end if]";
				PussySquirt 1.

[!<CheckGoddessEligibility>+

REQUIRES COMMENTING

+!]
To check goddess eligibility:
	unless the player is in a predicament room:
		if the virgin of the player is 1:
			if glittering rose is off-stage and glittering rose is actually summonable:
				say "[bold type]A glittering rose appears on your head![roman type][line break]A voice appears in your head:[line break][second custom style]'My my, a virgin pregnancy! You are the goddess that was promised! Welcome, join our ranks!'[roman type][line break]";
				summon glittering rose cursed;
		otherwise if childValue times 2 >= 1:
			if laurel wreath is off-stage and laurel wreath is actually summonable:
				say "[bold type]A laurel wreath appears on your head![roman type][line break]";
				summon laurel wreath cursed;
			otherwise if the class of the player is bunny and bunny tail plug is off-stage and asshole is not actually occupied:
				repeat with O running through worn total protection dresses:
					say "Your [O] vanishes!";
					destroy O;
				repeat with O running through worn total protection knickers:
					say "Your [O] vanishes!";
					destroy O;
				repeat with O running through worn total protection trousers:
					say "Your [O] vanishes!";
					destroy O;
				say "[bold type]A bunny tail plug materialises inside your [asshole]![roman type][line break]";
				summon bunny tail plug cursed.


[!<SayConceptionFlav>+

REQUIRES COMMENTING

+!]
To say ConceptionFlav:
	say "[one of]You look down, and realise that your belly isn't slowly getting smaller as you'd expect. [if the bimbo of the player < 8][line break][first custom style]Am I pregnant?![otherwise][line break][second custom style]I think I'm pregnant![end if][roman type][line break][or]You feel the tiniest kick coming from inside your belly... [if the bimbo of the player < 8][line break][first custom style]Uh-oh.[otherwise][line break][second custom style]Oopsie, I think I got myself knocked up back there![end if][roman type][line break][purely at random]".

[!<DecideWhichNumberIsBellyStrainBalance>+

REQUIRES COMMENTING

+!]
To decide which number is belly strain balance: [tweak this number to balance this mechanic]
	if there is a rejuvenation clothing penetrating asshole, decide on 160;[rejuvenation dildos suck unless they help you handle enemas in some way, but I'm not certain how to implement "enema-helping" on only the rejuvenation clothing, especially when magical enchantments can sometimes change. Maybe it needs to be a definition instead?]
	[if the player is in a predicament room, decide on 15;]
	decide on 40.

[!<ComputeEnemaHoldingWithEarningsAndSeconds>+

REQUIRES COMMENTING

+!]
To compute enema holding:
	let TS be the total squirtable fill of belly;
	if TS > 0 and the latex-transformation of the player < 5 and currently-squirting is 0:
		if the player is not able to automatically expel, now the squirt timer of belly is 0; [The orifice has been plugged, preventing the flow.]
		if the squirt timer of belly > time-seconds:
			decrease the squirt timer of belly by time-seconds;
		otherwise if the squirt timer of belly > 0:
			now the squirt timer of belly is 0;
			if currently-squirting is 0, AssSquirt;
			if rubber bunny ears is worn and the class of the player is bunny and the number of laid medium eggs in the location of the player > 1 and carrot daggers is off-stage:
				say "[bold type]Suddenly, [if the number of medium eggs in the location of the player is 2]the two[otherwise]two of the[end if] eggs beneath you shine a bright orange and change shape![roman type][line break]In their place are now a pair of latex carrots.[line break][variable custom style]What in the world?![roman type][line break]";
				destroy a random laid medium egg in the location of the player;
				destroy a random laid medium egg in the location of the player;
				now carrot daggers is in the location of the player;
				compute autotaking carrot daggers;
		otherwise:
			let T be (the square root of TS) * time-seconds;
			increase the holding strain of belly by T;
			let rem be the remainder after dividing the holding strain of belly by belly strain balance;
			if rem < T:
				let strain factor be the holding strain of belly divided by belly strain balance;
				increase strain factor by (the total squirtable fill of belly * 4) divided by belly limit; [if we have a completely full belly, we increase by 4, if we have a less than a quarter, we'll increase by 0.]
				if gape-gloves is worn and gape-gloves is wrist-bound-behind and currently-squirting is 0:
					say "With your [asshole] spread open by your [MediumDesc of gape-gloves], you are forced to immediately begin expelling the contents of your belly.";
					AssSquirt;
				otherwise if strain factor < 4 and (strain factor < 2 or the player is not in an unbossed predicament room): [at less than 4 strain factor, we just give flavour]
					if strain factor > 0 and the trophy-mode of expel-trophy is 0 and the number of worn enema-helping clothing is 0:
						say "[one of]Your belly growls as the [enema] swirls around inside[or][if the player is upright]You stagger slightly[otherwise]Your arms and legs shake slightly[end if] as the [enema] sloshes around inside you[or]Your stomach makes a gurgling sound as your [enema] bubbles away inside[or]Your [enema] puts more and more pressure on your rectum[or]The [enema] eddies and whirls inside your belly[in random order], [one of]making you feel uneasy[or]and you feel quite uncomfortable[or]making you a bit queasy[or]causing your intestines to cramp a bit[in random order].";
				otherwise:
					let R be (a random number between 6 and 40) - the incontinence of the player;
					if the player is in an unbossed predicament room, now R is a random number between 2 and 8; [you pop very quickly when running through that neighbourhood]
					if R < strain factor and (the player is able to automatically expel or (there is a worn crotch-in-place milking basque and the total fill of belly >= belly limit - 5)):
						unless the player is incontinent, say "[bold type]You feel a rumble in your [BellyDesc] and a pressure building from within your [asshole]... [if the small egg count of belly > 0 or the medium egg count of belly > 0 or the large egg count of belly > 0]You're going to lay some eggs soon,[otherwise if the urine volume of belly > the total fill of belly / 2]The [urine] inside you is about to come out no matter how hard you try to hold it in,[otherwise if the semen volume of belly > the total fill of belly / 2]The [semen] inside you is about to come out no matter how hard you try to hold it in,[otherwise if the milk volume of belly > the total fill of belly / 2]The [milk] inside you is about to come out no matter how hard you try to hold it in,[otherwise if the water volume of belly is the total fill of belly]The enema inside you is about to come out no matter how hard you try to hold it in,[otherwise]The stuff inside you is about to come out no matter how hard you try to hold it in,[end if] and it doesn't look like there's any way to stop it! [if the player is live fucked]You desperately hope that your fucking ends before it starts![otherwise if the class of the player is royal slave and the player is ass protected and the player is not in danger and the milk volume of belly > 0 and the semen volume of belly <= 0 and the urine volume of belly <= 0]You should get your [random top level ass protection clothing] out of the way if possible so that you can collect the milk that comes out![otherwise]Better [one of]get ready[or]prepare yourself[or]find somewhere safe if possible[in random order]...[end if][roman type][line break]";
						now the squirt timer of belly is a random number between 5 and (belly strain balance - 6); [it should always be sooner than the next cramp would have been.]
					otherwise if the trophy-mode of expel-trophy is 0 and the number of worn enema-helping clothing is 0:
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
	if the trophy-mode of expel-trophy is 1 and asshole is actually occupied, decide no;
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
	say "BUG - the enema effect '[E]' has no coded effect. Please report!".

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
	if the player is upright and the incidents of enema-cramping > 0:
		say "[one of]causing your knees to buckle[or]and you fall to your knees[or]making you lose your balance[in random order] as [one of]your intestines cramp up[or]a huge bolt of pain hits your stomach[or]your tummy groans as it cramps[at random].";
		try kneeling;
	otherwise if resting is 1:
		say "making you feel uncomfortable as you rest.";
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
	say "The effort of holding your [enema] in weakens the rest of your body. You will be [if the incidents of E > 0]even [end if]slower and weaker until you [italic type]expel[bold type] it out.".

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
	say "The uncomfortable nature of your [enema] clouds your mind. You [if the incidents of E > 0]will have an even cloudier mind[otherwise]won't be able to think as clearly[end if] until you [italic type]expel[bold type] it out.".

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
	say "You've been holding onto your [enema] for so long that feel your sphincter weaken[if incontinence > 0] even further[end if]. ";
	increase incontinence by 1;
	say "[if the player is not incontinent]You'll now find it even more difficult to hold things in and tell when you need the toilet[otherwise]You can somehow tell that you are now completely incontinent[end if].".



Semen Movements ends here.

