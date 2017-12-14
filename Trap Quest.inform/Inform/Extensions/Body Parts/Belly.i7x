Belly by Body Parts begins here.

Include Stomach by Player.

Part 1 - Definitions

[!<Belly>@

REQUIRES COMMENTING

@inherits <Flesh>

@!]
belly is a flesh.  Belly is everywhere.  The description of belly is "[TotalDesc of belly]".  Understand "torso", "waist", "tummy", "stomach" as belly.

[!<Belly>@<fleshVolume:Integer>*

REQUIRES COMMENTING

*@!]
Belly has a number called flesh volume.  The flesh volume of belly is usually 0.

[!<Belly>@<waterVolume:Integer>*

REQUIRES COMMENTING

*@!]
Belly has a number called water volume.  The water volume of belly is usually 0.  [Currently unused]

[!<Belly>@<semenVolume:Integer>*

REQUIRES COMMENTING

*@!]
Belly has a number called semen volume.  The semen volume of belly is usually 0.

[!<Belly>@<urineVolume:Integer>*

REQUIRES COMMENTING

*@!]
Belly has a number called urine volume.  The urine volume of belly is usually 0.

[!<Belly>@<milkVolume:Integer>*

REQUIRES COMMENTING

*@!]
Belly has a number called milk volume.  The milk volume of belly is usually 0.

[!<Belly>@<airVolume:Integer>*

REQUIRES COMMENTING

*@!]
Belly has a number called air volume.  The air volume of belly is usually 0.

[!<Belly>@<smallEggCount:Integer>*

REQUIRES COMMENTING

*@!]
Belly has a number called small egg count.  The small egg count of belly is usually 0.

[!<Belly>@<mediumEggCount:Integer>*

REQUIRES COMMENTING

*@!]
Belly has a number called medium egg count.  The medium egg count of belly is usually 0.

[!<Belly>@<largeEggCount:Integer>*

REQUIRES COMMENTING

*@!]
Belly has a number called large egg count.  The large egg count of belly is usually 0.

[!<Player>@<stomachWater:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called stomach-water.  The stomach-water of the player is usually 5.

[!<Player>@<stomachSemen:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called stomach-semen.  The stomach-semen of the player is usually 0.

[!<Player>@<stomachFood:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called stomach-food.  The stomach-food of the player is usually 2.

[!<Player>@<stance:Integer>*

REQUIRES COMMENTING

*@!]

[!<Belly>@<previousLargeness:Integer>*

REQUIRES COMMENTING

*@!]
Belly has a number called previous largeness.

[!<Belly>@<holdingStrain:Integer>*

REQUIRES COMMENTING

*@!]
Belly has a number called holding strain.

[!<Belly>@<squirtTimer:Integer>*

REQUIRES COMMENTING

*@!]
Belly has a number called squirt timer.

[!<Player>@<bellyChanged:Integer>*

REQUIRES COMMENTING

*@!]

[!<DecideWhichNumberIsTheTotalFillOfBelly>+

REQUIRES COMMENTING

+!]
To decide which number is the total fill of belly:
	let B be the semen volume of belly;
	increase B by the total egg fill of belly;
	increase B by the urine volume of belly;
	increase B by the air volume of belly;
	increase B by the milk volume of belly;
	increase B by the water volume of belly;
	if a random slimegirl is worn, increase B by 10;
	decide on B.

[!<DecideWhichNumberIsTheTotalEggFillOfBelly>+

REQUIRES COMMENTING

+!]
To decide which number is the total egg fill of belly:
	let E be 0;
	increase E by the small egg count of belly;
	increase E by 2 * the medium egg count of belly;
	increase E by 5 * the large egg count of belly;
	decide on E.

[!<DecideWhichNumberIsTheTotalSquirtableFillOfBelly>+

REQUIRES COMMENTING

+!]
To decide which number is the total squirtable fill of belly:
	let B be the semen volume of belly;
	increase B by the total egg fill of belly;
	increase B by the urine volume of belly;
	increase B by the milk volume of belly;
	increase B by the water volume of belly;
	decide on B.

[!<DecideWhichNumberIsTheLargenessOfBelly>+

REQUIRES COMMENTING

+!]
To decide which number is the largeness of belly:
	let B be the total fill of belly;
	increase B by (the stomach of the player + rectum) / 3;
	increase B by the semen volume of vagina;
	increase B by the flesh volume of belly;
	repeat with C running through corsets worn by the player:
		decrease B by (the magic-modifier of C + 5);
		if C is constriction, decrease B by 4;
	if the pregnancy of the player > 0 and semen volume of vagina > 30, decide on belly magnitude of semen volume of vagina; [Monster pregnancy = we only care about womb fill]
	let F be belly magnitude of B;
	if F > max belly size:
		now B is the flesh volume of belly;
		if the pregnancy of the player > 0, increase B by the semen volume of vagina;
		increase B by the air volume of belly;
		let B2 be belly magnitude of B;
		if B2 > max belly size, decide on B2; [we only override max belly size if pregnancy + fat + air is higher on its own.]
		decide on max belly size;
	decide on F.


[!<DecideWhichNumberIsBellyMagnitudeOfNumber>+

REQUIRES COMMENTING

+!]
To decide which number is belly magnitude of (B - a number): 
	let S be 0;
	if B < 4:
		now S is 1;
	otherwise if B < 5:
		now S is 2;
	otherwise if B < 7:
		now S is 3;
	otherwise if B < 10:
		now S is 4;
	otherwise if B < 13:
		now S is 5;
	otherwise if B < 16:
		now S is 6;
	otherwise if B < 20:
		now S is 7;
	otherwise if B < 23:
		now S is 8;
	otherwise if B < 28:
		now S is 9;
	otherwise:
		now S is 10;
	if the semen volume of vagina > 30: [Super pregnancy sizes]
		if the semen volume of vagina > 45, decide on 13;
		if the semen volume of vagina > 37, decide on 12;
		decide on 11;
	if S > 10, decide on 10;
	otherwise decide on S.

[!<DecideWhichNumberIsTheWeightOfBelly>+

REQUIRES COMMENTING

+!]
To decide which number is the weight of (XXX - belly):
	let B be the total fill of belly;
	decrease B by the air volume of belly; [this one is to counteract the total belly fill count]
	decrease B by the air volume of belly * 2; [this one is because the air is lighter than air]
	increase B by the stomach of the player / 2;
	increase B by the semen volume of vagina;
	increase B by the flesh volume of belly;
	if there is a worn buoyant salve covering belly:
		let S be a random worn buoyant salve covering belly;
		if S is cursed, increase B by 4;
		if S is bland, decrease B by 3;
		if S is blessed, decrease B by 6;
	if B > 0:
		let bellymod be 100;
		if the bellyskill of the player is 1, decrease bellymod by 66;
		if there is a worn maternity dress or the class of the player is fertility goddess:
			let M be a random overdress worn by the player;
			if M is cursed:
				if the pregnancy of the player is 0:
					increase bellymod by 25;
				otherwise:
					increase bellymod by 10;
			otherwise:
				if the pregnancy of the player is 0:
					decrease bellymod by 10;
				otherwise:
					decrease bellymod by 25;
		decide on (B * bellymod) / 100;
	if the latex-transformation of the player > 1 and B > 8, now B is 8;
	if the latex-transformation of the player > 5 and B > 0, now B is 0;
	decide on B.

[!<BellyIsHeavy>+

REQUIRES COMMENTING

+!]
Definition: belly is heavy:
	if the weight of belly >= 18, decide yes;
	decide no.

Definition: belly (called B) is exposed:
	if there is a worn actually dense belly covering clothing, decide no;
	decide yes.

Part 2 - Description

[!<SayShortDescOfBelly>+

REQUIRES COMMENTING

+!]
To say ShortDesc of belly:
	say "[BellyDesc]".

[!<SayTotalDescOfBelly>+

REQUIRES COMMENTING

+!]
To say TotalDesc of belly:
	say "you have a [BellyDesc][if the semen coating of belly > 7] which is plastered in [semen].  [otherwise if the semen coating of belly > 4] which is covered in [semen].  [otherwise if the semen coating of belly > 0] which has a splattering of [semen] on it.  [otherwise].  [end if][BellyContents][BellyWeight][StomachContents]";
	if there is a worn corset, compute SelfExamineDesc of a random worn corset.

[!<SayBellydesc>+

REQUIRES COMMENTING

+!]			
To say BellyDesc:
	let X be the largeness of belly;
	if weight gain fetish is 1 and belly egg count < 3 and total squirtable fill of belly < the flesh volume of belly + 2 and X < 7 and flesh volume of belly > 2:
		if X < 3, say "flat belly";
		if X is 3, say "slightly chubby belly";
		if X is 4, say "round, chubby belly";
		if X is 5, say "fat potbelly";
		if X is 6, say "bulging, obese belly";		
	otherwise:
		if X < 3, say "flat belly";
		if X is 3, say "slightly curvy belly";
		if X is 4, say "curvy belly";
		if X is 5, say "mostly full belly";
		if X is 6, say "full belly";
		if X is 7, say "completely full belly";
		if X is 8, say "overly full belly";
		if X is 9, say "[if pregnancy fetish is 1]7 months pregnant looking[otherwise]bulging[end if], stretched belly";
		if X is 10, say "[if pregnancy fetish is 1]9 months pregnant looking[otherwise]bulging[end if], very stretched belly";
		if X is 11, say "extremely stretched, [if pregnancy fetish is 1]pregnant and overdue looking[otherwise]beach ball sized[end if] belly";
		if X is 12, say "[if pregnancy fetish is 1]pregnant with twins looking[otherwise]cartoonish looking[end if], overly stretched belly";
		if X is 13, say "[if pregnancy fetish is 1]pregnant with octuplets looking[otherwise]cartoonish looking[end if], impossibly huge belly";

[!<SayBellyContents>+

REQUIRES COMMENTING

+!]
To say BellyContents:
	if the flesh volume of belly > 0, say "It has a [if the flesh volume of belly > 6]large[otherwise if the flesh volume of belly > 3]medium[otherwise]small[end if] amount of fat.  ";
	if the semen volume of belly > 0, say "It is currently [if the semen addiction of the player < 9]a reluctant [otherwise if the semen addiction of the player > 14]a welcoming [end if]home to a [if the semen volume of belly > 20]ridiculously huge[otherwise if the semen volume of belly > 15]huge[otherwise if the semen volume of belly > 10]large[otherwise if the semen volume of belly > 5]decent[otherwise]small[end if] amount of [semen].  ";
	if the urine volume of belly > 0, say "It is currently [if the humiliation of the player < 25000]a reluctant [otherwise if the humiliation of the player > 34000]a welcoming [end if]home to a [if the urine volume of belly > 20]ridiculously huge[otherwise if the urine volume of belly > 15]huge[otherwise if the urine volume of belly > 10]large[otherwise if the urine volume of belly > 5]decent[otherwise]small[end if] amount of [urine].  ";
	if the milk volume of belly > 0, say "It is currently [if the humiliation of the player < 25000]a reluctant [otherwise if the humiliation of the player > 34000]a welcoming [end if]home to a [if the milk volume of belly > 20]ridiculously huge[otherwise if the milk volume of belly > 15]huge[otherwise if the milk volume of belly > 10]large[otherwise if the milk volume of belly > 5]decent[otherwise]small[end if] amount of [milk].  ";
	if the air volume of belly > 0, say "It is currently inflated by a [if the air volume of belly > 20]ridiculously huge[otherwise if the air volume of belly > 15]huge[otherwise if the air volume of belly > 10]large[otherwise if the air volume of belly > 5]decent[otherwise]small[end if] amount of air.  ";
	if the small egg count of belly > 0, say "It is currently inflated by a [if the small egg count of belly > 20]ridiculously huge[otherwise if the small egg count of belly > 15]huge[otherwise if the small egg count of belly > 10]large[otherwise if the small egg count of belly > 5]decent[otherwise]small[end if] number of small eggs.  ";
	if the medium egg count of belly > 0, say "It is currently inflated by a [if the medium egg count of belly > 10]ridiculously huge[otherwise if the medium egg count of belly > 7]huge[otherwise if the medium egg count of belly > 5]high[otherwise if the medium egg count of belly > 2]notable[otherwise]low[end if] number of average sized eggs.  ";
	if the large egg count of belly > 0, say "It is currently inflated by [if the large egg count of belly > 4]a ridiculously huge number of giant eggs[otherwise if the large egg count of belly > 3]a big number of giant eggs[otherwise if the large egg count of belly > 2]three giant eggs[otherwise if the large egg count of belly > 1]two giant eggs[otherwise]a single giant egg[end if].  ".

[!<SayBellyWeight>+

REQUIRES COMMENTING

+!]
To say BellyWeight:
	if the weight of belly < -6:
		say "It weighs significantly less than air and is trying to pull you up off the ground.";
	otherwise if the weight of belly < 3:
		say "It is essentially weightless.";
	otherwise if the weight of belly < 10:
		say "It is a bit heavy.";
	otherwise if the weight of belly < 17:
		say "It is weighing you down a lot.";
	otherwise if the weight of belly < 24:
		say "It is very heavy and cumbersome.";
	otherwise if the weight of belly < 31:
		say "It is extremely heavy and unwieldy, making it a huge challenge for you to move around.";
	otherwise if the weight of belly < 40:
		say "It is impossibly heavy and unwieldy, making each step a very challenging task.";
	otherwise:
		say "It is heavier than the rest of your body combined and means you can literally only take a few steps before you buckle with exhaustion.".

[!<SayStomachContents>+

REQUIRES COMMENTING

+!]
To say StomachContents:
	say "Your stomach [if the stomach of the player <= 2]is quite empty[otherwise if the stomach-water of the player < 2]is quite empty because you haven't drunk anything recently[otherwise if the stomach-water of the player < 4]is a little bit full[otherwise if the stomach-water of the player < 6]is quite full of things you have recently drunk[otherwise]is very full of things you have recently drunk[end if].  ";
	if the stomach-semen of the player > 0, say "It is currently [if the stomach-semen of the player > 6]almost completely full of[otherwise if the stomach-semen of the player > 4]quite full of[otherwise if the stomach-semen of the player > 2]digesting a decent amount of[otherwise]digesting a small amount of[end if] [semen].  ";
	if the stomach-food of the player > 0, say "It is currently [if the stomach-food of the player > 6]almost completely full of[otherwise if the stomach-food of the player > 4]quite full of[otherwise if the stomach-food of the player > 2]digesting a decent amount of[otherwise]digesting a small amount of[end if] food.  ".

[!<SayPermanentBelly>+

REQUIRES COMMENTING

+!]
To say PermanentBelly:
	say "[if the total squirtable fill of belly is 0] permanent[end if]".

Part 3 - Modify Belly Stats


[!<DecideWhichNumberIsBellyLimit>+

REQUIRES COMMENTING

+!]
To decide which number is belly limit:
	if the player is female, decide on 20;
	decide on 30.

[!<DecideWhichNumberIsBellyLiquidTypes>+

REQUIRES COMMENTING

+!]
To decide which number is belly liquid types:
	let X be 0;
	if the semen volume of belly > 0, increase X by 1;
	if the milk volume of belly > 0, increase X by 1;
	if the urine volume of belly > 0, increase X by 1;
	decide on X.

[!<DecideWhichNumberIsBellyEggCount>+

REQUIRES COMMENTING

+!]
To decide which number is belly egg count:
	let X be 0;
	increase X by the small egg count of belly;
	increase X by the medium egg count of belly;
	increase X by the large egg count of belly;
	decide on X.

Chapter 1 - Fat


[!<FatBellyUpX>+

REQUIRES COMMENTING

+!]
To FatBellyUp (X - a number):
	while X > 0 and weight gain fetish is 1:
		if the flesh volume of belly < 10 and the number of restricting salve covering belly is 0, increase the flesh volume of belly by 1;
		decrease X by 1;
		if newbie tips is 1 and the flesh volume of belly > 3, say "[one of][item style]Newbie tip: Your belly getting a bit fat!  That's making you heavier and therefore you'll tire out faster.  However, it is fully reversible!  Lots of things exercise fat away from your belly, including fighting enemies and drinking milk.[roman type][line break][or][stopping]".

[!<FatBellyDownX>+

REQUIRES COMMENTING

+!]
To FatBellyDown (X - a number):
	while X > 0:
		if the flesh volume of belly > 0, decrease the flesh volume of belly by 1;
		decrease X by 1.

Chapter 2 - Overflow

[!<Overflow>+

REQUIRES COMMENTING

+!]
To Overflow:
	if the player is able to expel and belly liquid types + belly egg count > 0 and the total fill of belly > belly limit and currently-squirting is 0 and the latex-transformation of the player <= 4:
		AssSquirt;
	otherwise if the total fill of belly > belly limit + 20 and the latex-transformation of the player > 4:
		say "Your belly maxes out and just can't physically inflate any further.  Suddenly there is a loud [bold type]POP[roman type], and then everything goes black.";
		now delayed fainting is 1;
		now the fainting reason of the player is 19;
	otherwise if the total fill of belly > belly limit and the latex-transformation of the player <= 4:
		let semen-flav-said be 0;
		let milk-flav-said be 0;
		let urine-flav-said be 0;
		let small-egg-flav-said be 0;
		while total fill of belly - belly limit > 0 and delayed fainting is 0:
			if the milk volume of belly > 0:
				if the stomach of the player < 15:
					if milk-flav-said is 0:
						say "Your stomach audibly gurgles as [milk] flows upwards through your body.";
						now milk-flav-said is 1;
					StomachUp 1;
					if a random number from 1 to 2 is 1, StomachUp 1;
					decrease the milk volume of belly by 1;
				otherwise:
					if milk-flav-said < 2:
						say "Some [milk] is forced upwards through your innards and out your mouth!  You cough and splutter uncontrollably as it flies out.";
					decrease the milk volume of belly by 1;
					let R be a random number between 1 and the intelligence of the player;
					if R > 4:
						if milk-flav-said < 2, say "You find yourself unable to breathe as this is going on, and struggle to stay conscious.  Somehow, you manage to pull through, but your head feels a bit emptier.";
						if a random number between 1 and 5 is 1, IntDown 1;
					otherwise if delayed fainting is 0:
						if delayed fainting is 0, say "[if milk-flav-said < 2]You find yourself unable to breathe as this is going on, and struggle to stay conscious.  You gasp for air but your lungs fill with [milk] instead.  [otherwise]But the [milk] keeps coming!  You eventually have to gasp for air but your lungs fill with [milk] instead.  [end if]You black out.";
						now delayed fainting is 1;
						now the fainting reason of the player is 10;
					now milk-flav-said is 2;
			otherwise if the semen volume of belly > 0:
				if the stomach of the player < 15:
					if semen-flav-said is 0:
						say "Your stomach audibly gurgles as [semen] flows upwards through your body.[one of][line break][variable custom style]Now that is a pretty unique feeling...[roman type][line break][or][stopping]";
						now semen-flav-said is 1;
					increase the stomach-semen of the player by 1;
					decrease the semen volume of belly by 1;
				otherwise:
					if semen-flav-said < 2:
						say "Some [semen] is forced upwards through your innards and out your mouth!  You cough and splutter uncontrollably as it flies out.";
						if the throne is penetrating asshole and image cutscenes is 1, display figure of throne cutscene 5;
					decrease the semen volume of belly by 1;
					let R be a random number between 5 and the intelligence of the player;
					if R > 5:
						if semen-flav-said < 2, say "You find yourself unable to breathe as this is going on, and struggle to stay conscious.  Somehow, you manage to pull through, but your head feels a lot giddier.";
						SemenAddictUp 1; [The semen came in through the backdoor entrance so creampie addiction is increased, not taste addiction.]
					otherwise if delayed fainting is 0:
						if delayed fainting is 0, say "[if semen-flav-said < 2]You find yourself unable to breathe as this is going on, and struggle to stay conscious.  You gasp for air but your lungs fill with [semen] instead.  [otherwise]But the [semen] keeps coming!  You eventually have to gasp for air but your lungs fill with [semen] instead.  [end if]You black out.";
						now delayed fainting is 1;
						now the fainting reason of the player is 10;
					now semen-flav-said is 2;
			otherwise if the urine volume of belly > 0:
				if the stomach of the player < 15:
					if urine-flav-said is 0:
						say "Your stomach audibly gurgles as [urine] flows upwards through your body.[one of][line break][variable custom style]Now that is a pretty unique feeling...[roman type][line break][or][stopping]";
						now urine-flav-said is 1;
					StomachUp 1;
					decrease the urine volume of belly by 1;
				otherwise:
					if urine-flav-said < 2:
						say "Some [urine] is forced upwards through your innards and out your mouth!  You cough and splutter uncontrollably as it flies out.";
					decrease the urine volume of belly by 1;
					let R be a random number between 1 and the intelligence of the player;
					if R > 5:
						if urine-flav-said < 2, say "You find yourself unable to breathe as this is going on, and struggle to stay conscious.  Somehow, you manage to pull through, but your head feels a lot emptier.";
						if a random number between 1 and 3 is 1, IntDown 1;
					otherwise if delayed fainting is 0:
						if delayed fainting is 0, say "[if urine-flav-said < 2]You find yourself unable to breathe as this is going on, and struggle to stay conscious.  You gasp for air but your lungs fill with [urine] instead.  [otherwise]But the [urine] keeps coming!  You eventually have to gasp for air but your lungs fill with [urine] instead.  [end if]You black out.";
						now delayed fainting is 1;
						now the fainting reason of the player is 10;
					now urine-flav-said is 2;
			otherwise if the small egg count of belly > 0:
				if the stomach of the player < 15:
					say "[if small-egg-flav-said is 0]Your stomach audibly gurgles and you wince in pain as a solid egg is forced upwards through your body into your stomach.[line break][one of][variable custom style]What the fuck is happening to me![or]Not again![stopping][roman type][line break][otherwise]Another egg is forced up from your belly into your stomach.[end if]";
					now small-egg-flav-said is 1;
					StomachFoodUp 2;
					decrease the small egg count of belly by 1;
				otherwise:
					if delayed fainting is 0, say "Your body's insides are now just completely full of eggs, but they don't stop coming.  As an egg is forced up towards your mouth, it cuts off your ability to breathe.  You quickly black out.";
					now delayed fainting is 1;
					now the fainting reason of the player is 10;
			otherwise if the medium egg count of belly > 0:
				if the stomach of the player < 15:
					say "[if small-egg-flav-said is 0]Your stomach audibly gurgles and you wince in pain as a solid egg is forced upwards through your body into your stomach.[line break][one of][variable custom style]What the fuck is happening to me![or]Not again![stopping][roman type][line break][otherwise]Another egg is forced up from your belly into your stomach.[end if]";
					now small-egg-flav-said is 1;
					StomachFoodUp 2;
					decrease the medium egg count of belly by 1;
				otherwise:
					if delayed fainting is 0, say "Your body's insides are now just completely full of eggs, but they don't stop coming.  As an egg is forced up towards your mouth, it cuts off your ability to breathe.  You quickly black out.";
					now delayed fainting is 1;
					now the fainting reason of the player is 10;
			otherwise if the large egg count of belly > 0:
				if the stomach of the player < 15:
					say "[if small-egg-flav-said is 0]Your stomach audibly gurgles and you wince in pain as a giant egg is forced upwards through your body into your stomach.[line break][one of][variable custom style]What the fuck is happening to me![or]Not again![stopping][roman type][line break][otherwise]Another egg is forced up from your belly into your stomach.[end if]";
					now small-egg-flav-said is 1;
					StomachFoodUp 4;
					decrease the large egg count of belly by 1;
				otherwise:
					if delayed fainting is 0, say "Your body's insides are now just completely full of eggs, but they don't stop coming.  As an egg is forced up towards your mouth, it cuts off your ability to breathe.  You quickly black out.";
					now delayed fainting is 1;
					now the fainting reason of the player is 10;
			otherwise if the air volume of belly > 10:
				say "Your belly maxes out and just can't physically inflate any further.  Suddenly there is a loud [bold type]POP[roman type], and then everything goes black.";
				now delayed fainting is 1;
				now the fainting reason of the player is 10;
			otherwise:
				say "Your belly maxes out and just can't physically inflate any further.  Suddenly there is a loud [bold type]POP[roman type], and then everything goes black.";
				now delayed fainting is 1;
				now the fainting reason of the player is 19.

Chapter 3 - Ass Filling


[!<assFilled:Integer>+

has the player ever had cum in their butt?

+!]
assfilled is a number that varies.

[!<AssFillX

REQUIRES COMMENTING

+!]
To Assfill (X - a number):
	let L be a random worn lipstick collar;
	if L is clothing, increase X by 1;
	let M be a random wrapped monster penetrating asshole;
	if M is monster:
		now X is 0;
		compute condom filling of M;
	otherwise:
		compute father material of asshole;
		now assfilled is 1;
	if invigoration-elixir-timer > 0 and the soreness of asshole > 0 and X > 0:
		say "As the [semen] rushes through your system into your [BellyDesc], the lining of your [asshole] is somehow healed!";
		if the soreness of asshole > X, decrease the soreness of asshole by X;
		otherwise now the soreness of asshole is 0;
		now the tolerated of asshole is 0;
	if there is a worn cum dump's undergarment and the body soreness of the player > 0 and X > 1:
		say "As the [semen] rushes through your system into your [BellyDesc], you feel your body somehow being healed!";
		if the body soreness of the player > X / 2, decrease the body soreness of the player by X / 2;
		otherwise now the body soreness of the player is 0;
	if there is a worn slimegirl:
		let M be a random slimegirl;
		say "The [semen] flowing into your [asshole] is consumed by the [M]!  She communicates with you telepathically.";
		say "[second custom style]'[one of]Yum[or]Ooh, hooray[or]Yippee[or]Ooh, goodie[at random][if the hunger of M > 2]!  I feel better now...'[otherwise]!'[end if][roman type][line break]";
		now the hunger of M is 0;
		if the intensity of M > 0:
			say "You feel the negative effects of the [M] on your mental state fade away.";
			now the intensity of M is 0;
		now the timetaken of M is 0;
		now X is 0;
	if a random number between 0 and 6 < X, SemenAddictUp 1;
	while X > 0:
		increase the semen volume of belly by 1;
		decrease X by 1;
	overflow;
	if there is a live thing penetrating asshole, SemenAddictUp 1;
	if L is clothing and L is tethering, end tethering.

	
To Assfill (X - a number) with (L - semen):
	Assfill X.

[!<AssFillXSmallEggs>+

REQUIRES COMMENTING

+!]
To assfill (X - a number) small eggs:
	while X > 0:
		decrease X by 1;
		increase the small egg count of belly by 1;
	overflow;

[!<AssFillXMediumEggs>+

REQUIRES COMMENTING

+!]			
To assfill (X - a number) medium eggs:
	while X > 0:
		decrease X by 1;
		increase the medium egg count of belly by 1;
	overflow;

[!<AssFillXLargeEggs>+

REQUIRES COMMENTING

+!]
To assfill (X - a number) large eggs:
	while X > 0:
		decrease X by 1;
		increase the large egg count of belly by 1;
	overflow;

[!<AssFillXUrine>+

REQUIRES COMMENTING

+!]
To Assfill (X - a number) urine:
	while X > 0:
		decrease X by 1;
		increase the urine volume of belly by 1;
	overflow.

To Assfill (X - a number) with (L - urine):
	Assfill X urine.

[!<AssFillXMilk>+

REQUIRES COMMENTING

+!]
To Assfill (X - a number) milk:
	while X > 0:
		decrease X by 1;
		increase the milk volume of belly by 1;
	overflow.

To Assfill (X - a number) with (L - milk):
	Assfill X milk.

[!<AssFillXAir>+

REQUIRES COMMENTING

+!]
To Assfill (X - a number) air:
	if the number of worn research airhancers > 0, increase X by 1;
	while X > 0:
		decrease X by 1;
		increase the air volume of belly by 1;
	overflow;

[!<AssFillXWater>+

REQUIRES COMMENTING

+!]
To Assfill (X - a number) water:
	while X > 0:
		decrease X by 1;
		increase the water volume of belly by 1;
	overflow.

To Assfill (X - a number) with (L - water):
	Assfill X water.

Chapter 4 - Enema / Creampie Squirting

[These count values are the totals of how many of each element are going to come out.  They're here because the function had hit the maximum number of temporary variables]
[!<smallEggCount:Integer>*

REQUIRES COMMENTING

*!]
small-egg-count is a number that varies.

[!<mediumEggCount:Integer>*

REQUIRES COMMENTING

*!]
medium-egg-count is a number that varies.

[!<largeEggCount:Integer>*

REQUIRES COMMENTING

*!]
large-egg-count is a number that varies.

[!<milkCount:Integer>*

REQUIRES COMMENTING

*!]
milk-count is a number that varies.

[!<urineCount:Integer>*

REQUIRES COMMENTING

*!]
urine-count is a number that varies.

[!<airCount:Integer>*

REQUIRES COMMENTING

*!]
air-count is a number that varies.

[!<semenCount:Integer>*

REQUIRES COMMENTING

*!]
semen-count is a number that varies.

[!<waterCount:Integer>*

REQUIRES COMMENTING

*!]
water-count is a number that varies.

[!<currentlySquirting:Integer>*

REQUIRES COMMENTING

*!]
currently-squirting is a number that varies.

[!<AssSquirt>+

REQUIRES COMMENTING

+!]
To AssSquirt:
	[This makes sure that the game doesn't start counting down to another expulsion whilst one is still happening]
	reset all monster reactions;
	now currently-squirting is 1;
	now the squirt timer of belly is -1;
	now small-egg-count is 0;
	now medium-egg-count is 0;
	now large-egg-count is 0;
	now milk-count is 0;
	now urine-count is 0;
	now semen-count is 0;
	now water-count is 0;
	[total-count is the total count of all elements currently inside.]
	let total-count be 0;
	[target-count is the decided amount of how much stuff is coming out.]
	let target-count be 0;
	[liquid-total is the decided amount of liquid that is coming out.]
	let liquid-total be 0;
	[liquid-count is used to keep track of how much liquid has been squirted this round.]
	let liquid-count be 0;
	[We use doses-count to track the about of liquid compared to number of doses (2 units of liquid = 1 dose)]
	let doses-count be 0;
	[collecting is used to keep track of what vessel if any the player is using to capture some liquid.]
	let collecting be nothing;
	[element-count lets us count how many different things we've expelled (or at least tried to).  The idea is that we can now use a while loop in between expulsions, which in turn allows us to break the while loop if the player ever becomes ass plugged during expulsion.]
	let element-count be 0;
	[turn-count keeps track of how many turns we've been squirting liquid for, mainly so we know if it's the first turn or not for text flavour purposes.]
	let turn-count be 0;
	[flav-said is used to stop the soak flavour text being repeated in the same turn.]
	let flav-said be 0;
	[Here we decide just how much stuff is coming out.]
	[let R be 0;
	if a random number between 1 and 8 is 8, now target-count is the total squirtable fill of belly;
	otherwise now R is a random number between 2 and the total squirtable fill of belly;
	if R is the total squirtable fill of belly:
		now target-count is the total squirtable fill of belly;
	otherwise if R > the total squirtable fill of belly / 2:
		now target-count is the total squirtable fill of belly / 2;
	otherwise if R > the total squirtable fill of belly / 3:
		now target-count is the total squirtable fill of belly / 3;
	if target-count < 4:
		now target-count is 3;
	if the total squirtable fill of belly < 6 or player-squatting is 1: [If the player squats, everything comes out.]
		now target-count is the total squirtable fill of belly;]
	now target-count is the total squirtable fill of belly; [Experimental balance change - everything always comes out]
	[The simple option: if everything is coming out!]
	if the total squirtable fill of belly is target-count:
		now small-egg-count is the small egg count of belly;
		now medium-egg-count is the medium egg count of belly;
		now large-egg-count is the large egg count of belly;
		now milk-count is the milk volume of belly;
		now urine-count is the urine volume of belly;
		now semen-count is the semen volume of belly;
		now water-count is the water volume of belly;
		now liquid-total is milk-count + urine-count + semen-count + water-count;
	otherwise: [always at least one egg if possible]
		if small egg count of belly > 0:
			now small-egg-count is 1;
			now total-count is 1;
		otherwise if medium egg count of belly > 0:
			now medium-egg-count is 1;
			now total-count is 2;
		otherwise if large egg count of belly > 0:
			now large-egg-count is 1;
			now total-count is 5;
		while total-count < target-count:
			let R be a random number between 1 and 7;
			if R is 1 and small-egg-count < the small egg count of belly:
				increase small-egg-count by 1;
				increase total-count by 1;
			otherwise if R is 2 and medium-egg-count < the medium egg count of belly:
				increase medium-egg-count by 1;
				increase total-count by 2;
			otherwise if R is 3 and large-egg-count < the large egg count of belly:
				increase large-egg-count by 1;
				increase total-count by 5;
			otherwise if R is 4 and urine-count < the urine volume of belly:
				increase urine-count by 1;
				increase liquid-total by 1;
				increase total-count by 1;
			otherwise if R is 5 and milk-count < the milk volume of belly:
				increase milk-count by 1;
				increase liquid-total by 1;
				increase total-count by 1;
			otherwise if R is 6 and semen-count < the semen volume of belly:
				increase semen-count by 1;
				increase liquid-total by 1;
				increase total-count by 1;
			otherwise if R is 7 and water-count < the water volume of belly:
				increase water-count by 1;
				increase liquid-total by 1;
				increase total-count by 1;
	[If it's a large amount or includes any eggs, the player falls to their knees.]
	if the latex-transformation of the player < 3 and player-squatting is 0 and belly egg count > 0 or total-count > 8:
		say "[bold type]Your strength crumbles [if the player is upright]and you fall to your knees [end if]as your [asshole]'s sphincter starts to loosen involuntarily.[roman type][line break]";
		let seconds-saved be seconds;
		now seconds is 0; [This stops the monsters taking a turn here]
		if the player is upright, try kneeling;
		now seconds is seconds-saved;
	let ST be a random sex toy penetrating asshole;
	if ST is sex toy:
		say "Your [ST] bursts out of your [asshole]";
		if diaper quest is 1:
			let BL be a random bottom level ass protection clothing;
			if BL is clothing, say ", shoots out of the leghole of your [BL]";
		otherwise:
			repeat with BL running through bottom level ass protection clothing:
				if BL is possession:
					say ", passing seamlessly through your [BL]";
				otherwise if BL is rippable and BL is crotch-intact:
					say ", rips through your [BL]";
					now BL is crotch-ripped;
				otherwise:
					say ", destroys your [BL]";
					delayed imprint destroy BL;
		say " and falls to the ground.";
		resolve delayed imprints;
		ruin asshole;
		now ST is in the location of the player;
		dislodge ST;
	[Now we set up an expulsion poster, if appropriate]
	if there is a camera trap in the location of the player and there is an off-stage expulsion poster and the number of worn total protection diapers is 0:
		now target-poster is a random off-stage expulsion poster;
		compute uniquest variables of target-poster;
	[Now we have our big while loop that can get exited early by the player's ass getting plugged.]	
	while the player is able to expel and element-count < 5:
		if element-count is 0:
			if small-egg-count > 0:
				say "[EggBeginsFlav]";
				lay small-egg-count small eggs;
				now seconds is 6;
				compute extra turn; [After each type of egg comes out, the game world gets a turn to act.]
			increase element-count by 1;
		otherwise if element-count is 1:
			if medium-egg-count > 0:
				if small-egg-count > 0:
					if the latex-transformation of the player < 3, say "You are left panting from your initial egg laying session, and you hope it's all over now, but it's not.  You yelp in extreme discomfort as ";
					otherwise say "You coo softly as ";
				otherwise:
					say "[EggBeginsFlav]";			
				lay medium-egg-count medium eggs;
				now seconds is 6;
				compute extra turn;	
			increase element-count by 1;
		otherwise if element-count is 2:
			if large-egg-count > 0:
				if small-egg-count > 0 and medium-egg-count > 0:
					say "[variable custom style]Surely the eggs must be all out now?![roman type]  Your optimistic thought is interrupted by the feeling of your [asshole] being stretched to what feels like a diameter as ";
				otherwise if small-egg-count > 0 or medium-egg-count > 0:
					if the latex-transformation of the player < 3, say "You are left panting from your initial egg laying session, and you hope it's all over now, but it's not.  You yelp in extreme discomfort as ";
					otherwise say "You coo softly as ";
				otherwise:
					say "[EggBeginsFlav]";
				lay large-egg-count large eggs;
				now seconds is 6;
				compute extra turn;
			increase element-count by 1;
		otherwise if element-count is 3:
			if liquid-total > 0:
				[On the first round, we check if the player wants to collect some in a vessel, and output some unique flavour text.]
				if turn-count is 0:
					if debugmode is 1, say "there are [open-topped-vessel-count] open topped vessels held by the player.";
					if open-topped-vessel-count > 0 and the player is not flying and collecting is nothing and the player is not ass protected and the number of dangerous monsters in the location of the player is 0 and (water-count < liquid-total):
						repeat with V running through open topped vessels held by the player:
							if collecting is nothing:
								say "Collect the liquid you're about to expel into the [printed name of V][if the doses of V > 0] (You'll lose its current contents of [PotionType of V])[end if]? [yesnolink] ";
								if the player consents:
									if the doses of V > 0:
										say "You tip the contents of the [printed name of V] onto the floor.";
										dump V;
									now collecting is V;
					if collecting is bottle:
						say "You position the [printed name of collecting] below your [asshole] just in time, as you begin to expel ";
					otherwise if small-egg-count > 0 or medium-egg-count > 0 or large-egg-count > 0:
						say "The eggs are immediately followed by ";
					otherwise:
						say "You [if player-squatting is 1]close your eye[otherwise]freeze still on the spot[end if] as you expel ";
					say "a [if liquid-total > 6]huge [cascade][otherwise]few squirts[end if] of ";
					if urine-count is 0 and semen-count is 0 and milk-count is 0, say "[if diaper lover >= 3 and the player is full][one of]murky[or]lumpy[in random order] brown water[otherwise if there is a worn total protection diaper]enema water[otherwise]clear water[end if] ";
					otherwise say "[if urine-count > 0 and semen-count > 0 and milk-count > 0]what must be a disgraceful mix of [urine], [milk] and [semen][otherwise if urine-count > 0 and semen-count > 0]what seems like a mix of [urine] and [semen][otherwise if urine-count > 0 and milk-count > 0]what seems like a mix of [urine] and [milk][otherwise if milk-count > 0 and semen-count > 0]what seems like a mix of [milk] and [semen][otherwise if urine-count > 0][urine][otherwise if semen-count > 0][semen][otherwise if milk-count > 0][milk][otherwise]BUG - can't find any liquid.  Report this bug please[end if], directly from your [asshole] ";
					say "[if the player is ass protected]into your [printed name of random bottom level ass protection clothing worn by the player][otherwise if collecting is bottle]into the [collecting][otherwise]onto your [ShortDesc of thighs][end if].";
					if there is a worn total protection diaper and the player is full and diaper lover >= 3:
						say "It is accompanied by [if rectum < 8]a large amount of squishy brown mush[otherwise if rectum < 10]a huge log of mess[otherwise]an ungodly amount of of squishy, smelly goop[end if] as your bowels are completely excavated.";
				if collecting is bottle:
					now collecting is monster-origin;
					[In the first turn we decide what type of liquid the bottle is being filled with]
					if turn-count is 0:
						if urine-count > 0:
							if semen-count > 0 or milk-count > 0:
								now the fill-colour of collecting is murky;
							otherwise:
								now the fill-colour of collecting is golden;
						otherwise if milk-count > 0:
							if semen-count > 0:
								now the fill-colour of collecting is murky;
							otherwise:
								now the fill-colour of collecting is white;
						otherwise if semen-count > 0:
							now the fill-colour of collecting is creamy;
							compute father material of asshole into collecting;
						otherwise:
							[Shouldn't be able to happen]
							now the fill-colour of collecting is murky;
					[Now we fill the bottle]
					if debugmode is 1, say "liquid-count: [liquid-count], liquid-total: [liquid-total], milk-count: [milk-count], semen-count: [semen-count], urine-count: [urine-count], doses: [doses of collecting] / [max-doses of collecting].";
					while liquid-count < liquid-total and liquid-total > 0 and the doses of collecting < the max-doses of collecting:
						if milk-count > 0:
							decrease milk-count by 1;
							decrease the milk volume of belly by 1;
							increase liquid-count by 1;
							increase doses-count by 1;
						if semen-count > 0:
							decrease semen-count by 1;
							decrease the semen volume of belly by 1;
							increase liquid-count by 1;
							increase doses-count by 1;
						if urine-count > 0:
							decrease urine-count by 1;
							decrease the urine volume of belly by 1;
							increase liquid-count by 1;
							increase doses-count by 1;
						[Here we transfer doses-count into actual doses]
						while doses-count > 0 and the doses of collecting < the max-doses of collecting:
							increase the doses of collecting by 1;
							decrease doses-count by 2;
					[If it's full, change the noun so that we stop using it.]
					if the doses of collecting is the max-doses of collecting:
						say "The [printed name of collecting] is now full[if liquid-count < liquid-total], but it keeps coming[end if]!";
						now collecting is the player;
				[One the bottle is full (or never existed), we start soaking clothing or the floor]
				[If the player isn't ass protected we are going to use a random off-stage item to allow us to perform some if checks without causing 'property does not exist' errors]
				let C2 be a random off-stage unique fluid vulnerable clothing;
				let C be C2;
				now the milk-soak of C is 10;
				now the urine-soak of C is 10;
				now the semen-soak of C is 10;
				now the water-soak of C is 10;
				[But if the player is wearing underwear we'll need to keep track of that item of clothing to see how soaked it's getting.]
				if the player is ass protected, now C is a random bottom level ass protection clothing worn by the player;
				if turn-count is 0, compute squirt declarations into C;
				while liquid-count < 6 and liquid-count < liquid-total:
					if milk-count > 0:
						if C is worn, MilkSoak C;
						otherwise MilkPuddleUp 1;
						decrease the milk volume of belly by 1;
						decrease milk-count by 1;
						increase liquid-count by 1;
					if semen-count > 0:
						if C is worn:
							CumSoak 1 on C;
						otherwise if player-squatting is 0:
							CumThighsUp 1;
						otherwise:
							SemenPuddleUp 1;
						decrease the semen volume of belly by 1;
						decrease semen-count by 1;
						increase liquid-count by 1;
					if urine-count > 0:
						if C is worn, PissSoak C;
						otherwise UrinePuddleUp 1;
						decrease the urine volume of belly by 1;
						decrease urine-count by 1;
						increase liquid-count by 1;
					if water-count > 0:
						let W be water-count;
						if W > 6 - liquid-count, now W is 6 - liquid-count;
						if W > 0:
							if C is worn, WaterSoak W on C;
							decrease the water volume of belly by W;
							decrease water-count by W;
							increase liquid-count by W;
					if flav-said is 0 and C is not worn:
						say "It flows down your thighs to the ground.";
						now flav-said is 1;
					compute enema reactions;
					if semen-count is 0 and urine-count is 0 and milk-count is 0 and water-count is 0, now liquid-count is 6; [In case of glitches and we somehow run out of liquid, we don't break the game.]
				[Let's fix that piece of off-stage clothing we just messed up]
				now the milk-soak of C2 is 0;
				now the urine-soak of C2 is 0;
				now the semen-soak of C2 is 0;
				now the water-soak of C2 is 0;
				let Y be a random camera trap in the location of the player;
				if target-poster is an expulsion poster and Y is camera trap:
					if the reset-timer of Y < 99900:
						say "[FlashFlav of Y]";
						say "It was in a perfect position to capture a full shot of what just happened.";
						say "[one of][variable custom style][if the humiliation of the player < 31000]Oh god, how embarrassing![otherwise]Now everyone will know what I've had happen to me recently.[end if][or][if the bimbo of the player < 14][variable custom style]Again?![otherwise][second custom style]Ooh, I can't wait to see that one![end if][stopping][roman type][line break]";
						set up target-poster;
				[Now we deal with if there's much left and therefore we need to keep going.  In total, no more than 6 liquid should have been released]
				if liquid-total > 6 and liquid-total < 1000:
					decrease liquid-total by 6;
					say "The [cascade] [one of]shows no signs of slowing down[or]is still spurting just as powerfully[or]continues[at random]!";	
					ruin asshole;
					if liquid-total < 7, now liquid-total is 9999;
				otherwise if liquid-total is 9999:
					say "The [flow] now slows down, until there's only a tiny trickle leaving your [asshole].";
					now liquid-total is 0;
				otherwise:
					now liquid-total is 0;
				now liquid-count is 0;
				now seconds is 6;
				compute extra turn;
				increase turn-count by 1;
			otherwise:
				increase element-count by 1;
		otherwise if element-count is 4:
			let D be a random worn total protection diaper;
			if D is diaper and diaper lover >= 4 and rectum > 1:
				increase the mess of D by rectum - 1;
				now rectum is 1;
			increase element-count by 1;
		otherwise:
			[Prevents an infinite loop in case of a glitch]
			now element-count is 5;
	now the squirt timer of belly is 0;
	now player-squatting is 0;
	if asshole is actually occupied, say "The cascade stops since your [asshole] is now occupied.";
	now currently-squirting is 0;
	if the semen volume of belly is 0, cancel father material of asshole.

[!<EggBeginsFlav>+

REQUIRES COMMENTING

+!]
To say EggBeginsFlav:
	say "You shudder [if the humiliation of the player < 12500]in shame[otherwise if the bimbo of the player < 27500]in a mixture of arousal and shame[otherwise]with pure arousal[end if] as ".

[!<LayXSmallEggs>+

REQUIRES COMMENTING

+!]
To lay (X - a number) small eggs:
	if X < 10, say "[if X is 1]one[otherwise]one, then another[end if][if X > 2], then a third[end if][if X > 3], then a fourth [variable custom style](woah!)[roman type][end if][if X > 4], then a fifth[end if][if X > 5], then a sixth [variable custom style](how many?!)[roman type][end if][if X > 6], then a seventh[end if][if X > 7], then an eighth [variable custom style](holy shit..)[roman type][end if][if X > 8], then a ninth[end if] small spherical egg slowly emerges from your ever loosening [asshole], making a quiet 'plop' sound as [if X is 1]it[otherwise]each[end if] comes out.";
	otherwise say "smallish eggs one by one plop from your [asshole].  There are so many that you quickly lose count, it's at least ten but you really have no idea.";
	if X > 2 and the latex-transformation of the player < 3:
		say "The movement of each egg forcefully stimulates the inside of your ass, which feels incredible but also makes you quite sore.";
		let E be a random small egg;
		now E is penetrating asshole; [For size calculations]
		ruin asshole times X;
		now E is not penetrating asshole;
	let D be a random worn total protection diaper;
	if D is diaper:
		say "The egg[if X > 1]s crack[otherwise] cracks[end if] inside your diaper, leaving a nasty slimy, soggy feeling!  The pieces of shell seem to somehow dissolve away.";
		while X > 0:
			decrease the small egg count of belly by 1;
			decrease X by 1;
			WaterSoak 1 on D;
	otherwise:
		while the player is ass protected:
			egg rip a random bottom level ass protection clothing worn by the player;
		while X > 0:
			decrease the small egg count of belly by 1;
			decrease X by 1;
			let S be a random available small egg;
			now S is in the location of the player;
			now S is laid.

[!<LayXMediumEggs>+

REQUIRES COMMENTING

+!]
To lay (X - a number) medium eggs:
	if X < 10, say "[if X is 1]one[otherwise]one, then another[end if][if X > 2], then a third [variable custom style](owww!)[roman type][end if][if X > 3], then a fourth[end if][if X > 4], then a fifth[end if][if X > 5], then a sixth [variable custom style](my poor [asshole] can't survive much more of this...)[roman type][end if][if X > 6], then a seventh[end if][if X > 7], then an eighth [variable custom style](there's no way this was all inside me..)[roman type][end if][if X > 8], then a ninth[end if] full sized egg slowly emerges from your ever loosening [asshole], making a quiet 'plop' sound as [if X is 1]it[otherwise]each[end if] comes out.";
	otherwise say "Full sized chicken-like eggs one by one force their way from your [asshole].  There are so many that you quickly lose count, it's at least ten but you really have no idea.";
	if X > 1 and the latex-transformation of the player < 3:
		say "The eggs are much too big to be passed comfortably, and the ordeal inevitably stimulates your ass just as much as a good rough fucking would.";
		let E be a random medium egg;
		now E is penetrating asshole; [For size calculations]
		ruin asshole times X;
		now E is not penetrating asshole;
	let D be a random worn total protection diaper;
	if D is diaper:
		say "The egg[if X > 1]s crack[otherwise] cracks[end if] inside your diaper, leaving a nasty slimy, soggy feeling!  The pieces of shell seem to somehow dissolve away.";
		while X > 0:
			decrease the medium egg count of belly by 1;
			decrease X by 1;
			WaterSoak 2 on D;
	otherwise:
		while the player is ass protected:
			egg rip a random bottom level ass protection clothing worn by the player;
		while X > 0:
			decrease the medium egg count of belly by 1;
			decrease X by 1;
			let S be a random available medium egg;
			now S is in the location of the player;
			now S is laid.

[!<LayXLargeEggs>+

REQUIRES COMMENTING

+!]
To lay (X - a number) large eggs:
	say "the largest egg you've ever seen exits your [asshole] at an excruciatingly slow speed, keeping your [asshole] stretched for several seconds as it eases its way out.  It's as wide as your forearm.";
	if X > 1 and the latex-transformation of the player < 3:
		say "You breathe a sigh of relief as it finally passes, but your sigh immediately turns into a scream of [if the bimbo of the player < 12]despair[otherwise]unexpected pleasure[end if] as [if X is 2]another egg[otherwise]one by one, [X - 1] more eggs[end if] of the same size make their way through just as slowly and with just as intense sensations.[line break][variable custom style][if the player is gagged]'MMMMMMMMMPH MMMMMMMMPH!!'[roman type][line break]The feelings are so intense that you can't help but scream out loud through your [random ballgag worn by the player].[otherwise]'Fuuuuuuuuuuck Meeeeeeeeeeee!'[roman type][line break]The feelings are so intense that you can't help but scream out loud.[end if]";
	otherwise if X > 1:
		say "You moan softly as [if X is 2]another egg[otherwise]one by one, [X - 1] more eggs[end if] of the same size make their way through just as slowly and with just as intense sensations.[line break]";
	let E be a random large egg;
	now E is penetrating asshole; [For size calculations]
	ruin asshole times X;
	now E is not penetrating asshole;
	let D be a random worn total protection diaper;
	if D is diaper:
		say "The egg[if X > 1]s crack[otherwise] cracks[end if] inside your diaper, leaving a nasty slimy, soggy feeling!  The pieces of shell seem to somehow dissolve away.";
		while X > 0:
			decrease the large egg count of belly by 1;
			decrease X by 1;
			WaterSoak 4 on D;
	otherwise:
		while the player is ass protected:
			egg rip a random bottom level ass protection clothing worn by the player;
		while X > 0:
			decrease the large egg count of belly by 1;
			decrease X by 1;
			let S be a random available large egg;
			now S is in the location of the player;
			now S is laid.

[!<EggRipClothing>+

REQUIRES COMMENTING

+!]
To Egg Rip (C - a clothing):
	if C is knickers:
		if C is displacable:
			say "The force with which the egg shoots out makes it go straight through the leg holes of your [printed name of C].  [bold type]Your underwear is now displaced![roman type][line break]";
			displace C;
		otherwise if C is possession:
			say "The force with which the egg shoots out makes it go straight through your [printed name of C], which allow[if the armour of C >= 7]s[end if] it to pass right through![roman type][line break]";
		otherwise:
			say "The force with which the egg shoots out makes it go straight through your [printed name of C], ruining [if the armour of C < 7]it[otherwise]them[end if].  [bold type]Your clothing has been destroyed![roman type][line break]";
			destroy C;
	otherwise if C is possession:
		say "The force with which the egg shoots out makes it go straight through your [printed name of C], which allow it to pass right through![roman type][line break]";		
	otherwise if C is rippable:
		say "The force with which the egg shoots out makes it go straight through your [printed name of C].  [bold type]Your outfit is now ripped![roman type][line break]";
		rip C;
	otherwise:
		say "The force with which the egg shoots out makes it go straight through your [printed name of C], ruining them.  [bold type]Your clothing has been destroyed![roman type][line break]";
		destroy C.

[!<ComputeSquirtDeclarationsIntoClothing>+

REQUIRES COMMENTING

+!]
To compute squirt declarations into (C - a clothing):
	if there is an intelligent awake monster in the location of the player and the player is able to speak:
		let M be a random intelligent awake monster in the location of the player;
		if there is a worn total protection diaper and diaper lover >= 3 and the player is full:
			say "[diaper mess declaration of M]";
		otherwise if C is worn clothing:
			say "[enema declaration of M into C]";
		otherwise:
			say "[enema floor declaration of M]".

[!<ResetAllMonsterReactions>+

REQUIRES COMMENTING

+!]
To reset all monster reactions:
	repeat with M running through reacted-already monsters:
		now M is not reacted-already.

[!<SayEnemaFloorDeclarationOfMonster>+

REQUIRES COMMENTING

+!]
To say enema floor declaration of (M - a monster):
	say "[variable custom style]'[if player-squatting is 1 and the humiliation of the player < 20000][purposeful shameful enema floor declaration of M][otherwise if the humiliation of the player < 20000][shameful enema floor declaration of M][otherwise if player-squatting is 1 and the humiliation of the player < 30000][purposeful apathetic enema floor declaration of M][otherwise if the humiliation of the player < 30000][apathetic enema floor declaration of M][otherwise if player-squatting is 1][purposeful shameless enema floor declaration of M][otherwise][shameless enema floor declaration of M][end if][roman type][line break]".

[!<SayPurposefulShamefulEnemaFloorDeclarationOfmonster>+

REQUIRES COMMENTING

+!]
To say purposeful shameful enema floor declaration of (M - a monster):
	say "[one of]Please don't watch...'[or]I'm sorry, please forgive me, I couldn't find a toilet in time...'[or]Please look away, I don't usually do this in front of people...'[in random order]".

[!<SayShamefulEnemaFloorDeclarationOfMonster>+

REQUIRES COMMENTING

+!]
To say shameful enema floor declaration of (M - a monster):
	say "[one of]Oh no, quickly, look away, please!'[or]Oh no, I can't make it to the toilet in time... please don't watch!'[or]Oh no, not here, please not right in front of [him of M]!  I'm so sorry...'[in random order]".

[!<SayPurposefulApatheticEnemaFloorDeclarationOfMonster>+

REQUIRES COMMENTING

+!]
To say purposeful apathetic enema floor declaration of (M - a monster):
	say "[one of]You can watch if you really want, I guess...'[or]You should look away unless you enjoy watching this sort of thing.'[or]Don't judge me, okay, I just can't be bothered to find a toilet.'[in random order]".

[!<SayApatheticEnemaFloorDeclarationOfMonster>+

REQUIRES COMMENTING

+!]
To say apathetic enema floor declaration of (M - a monster):
	say "[one of]Oops, haha, that's pretty bad timing, but I can't stop it now.'[or]Awkward... No this isn't on purpose, I promise.'[or]I'm not enjoying the fact you're watching me, you know.'[in random order]".

[!<SayPurposefulShamelessEnemaFloorDeclarationOfMonster>+

REQUIRES COMMENTING

+!]
To say purposeful shameless enema floor declaration of (M - a monster):
	say "[one of]Please watch me disgrace myself!'[or]Don't look away!  I want you to watch as I squirt it all out!'[or]Are you going to punish me for messing up the floor?'[in random order]".

[!<SayShamelessEnemaFloorDeclarationOfMonster>+

REQUIRES COMMENTING

+!]
To say shameless enema floor declaration of (M - a monster):
	say "[one of]It's all coming out! It's all coming out of my [asshole]!'[or]Omigod it's coming out!  It's all coming out!  Please watch my [asshole] as I disgrace myself!'[in random order]".

[!<SayEnemaDeclarationOfMonsterIntoClothing>+

REQUIRES COMMENTING

+!]
To say enema declaration of (M - a monster) into (C - a clothing):
	say "[variable custom style]'[if player-squatting is 1 and the humiliation of the player < 20000][purposeful shameful enema declaration of M into C][otherwise if the humiliation of the player < 20000][shameful enema declaration of M into C][otherwise if player-squatting is 1 and the humiliation of the player < 30000][purposeful apathetic enema declaration of M into C][otherwise if the humiliation of the player < 30000][apathetic enema declaration of M into C][otherwise if player-squatting is 1][purposeful shameless enema declaration of M into C][otherwise][shameless enema declaration of M into C][end if][roman type][line break]".

[!<SayPurposefulShamefulEnemaDeclarationOfMonsterIntoClothing>+

REQUIRES COMMENTING

+!]
To say purposeful shameful enema declaration of (M - a monster) into (C - a clothing):
	say "[one of]It's... it's not what it looks like...  Oh okay yes it is, but please don't look!'[or]I'm sorry, please forgive me, I couldn't find a private place in time...'[or]Oh god, how gross.  I'm not enjoying this, you know...'[in random order]".

[!<SayShamefulEnemaDeclarationOfMonsterIntoClothing>+

REQUIRES COMMENTING

+!]
To say shameful enema declaration of (M - a monster) into (C - a clothing):
	say "[one of]Oh crap, not in my clothes!  Not now, in front of [him of M]!'[or]Oh no, I can't [if C is cursed]take these stupid clothes off[otherwise]make it to the toilet in time[end if]... please don't watch!'[or]Oh no, not here, please not right in front of [him of M]!'[in random order]".

[!<SayPurposefulApatheticEnemaDeclarationOfMonsterIntoClothing>+

REQUIRES COMMENTING

+!]
To say purposeful apathetic enema declaration of (M - a monster) into (C - a clothing):
	say "[one of]You can watch if you really want, I guess...'[or]You should look away unless you enjoy watching this sort of thing.'[or]Don't judge me, okay, I just can't [if C is cursed]actually take off these clothes right now[otherwise]be bothered to find a toilet[end if].'[in random order]".

[!<SayApatheticEnemaDeclarationOfMonsterIntoClothing>+

REQUIRES COMMENTING

+!]
To say apathetic enema declaration of (M - a monster) into (C - a clothing):
	say "[one of]Oops, haha, that's pretty bad timing, but I can't stop it now.'[or]Awkward... No this isn't on purpose, I promise.'[or]I'm not enjoying the fact you're watching me, you know.'[in random order]".

[!<SayPurposefulShamelessEnemaDeclarationOfMonsterIntoClothing>+

REQUIRES COMMENTING

+!]
To say purposeful shameless enema declaration of (M - a monster) into (C - a clothing):
	say "[one of]Please watch me soil my clothes!'[or]Don't look away!  I want you to watch as I squirt it all into my clothes!'[or]Are you enjoying watching me defile my own clothes? Tee-hee...'[in random order]".

[!<SayShamelessEnemaDeclarationOfMonsterIntoClothing>+

REQUIRES COMMENTING

+!]
To say shameless enema declaration of (M - a monster) into (C - a clothing):
	say "[one of]It's all coming out! It's all coming out of my [asshole]!'[or]Omigod it's coming out!  It's all coming out!  Please watch my butt as I defile my clothes!'[in random order]".

[!<SayPurposefulShamefulEnemaDeclarationOfMonsterIntoDiaper>+

REQUIRES COMMENTING

+!]
To say purposeful shameful enema declaration of (M - a monster) into (C - a diaper):
	say "[one of]It's... it's not what it sounds like...  Oh okay yes it is, but please don't look!'[or]Those sounds aren't what you think they are!  I promise!'[or]Oh no, I can't make it to the toilet in time... please don't judge me!'[or]Oh god, how gross.  Why aren't you looking away?'[in random order]".

[!<SayShamefulEnemaDeclarationOfMonsterIntoDiaper>+

REQUIRES COMMENTING

+!]
To say shameful enema declaration of (M - a monster) into (C - a diaper):
	say "[one of]Oh crap, not in my diaper!  I wanted to make it to the toilet!'[or]Oh no, not here please don't tell me you can hear that!'[or]Oops... that wasn't supposed to happen in front of you...'[in random order]".

[!<SayPurposefulApatheticEnemaDeclarationOfMonsterIntoDiaper>+

REQUIRES COMMENTING

+!]
To say purposeful apathetic enema declaration of (M - a monster) into (C - a diaper):
	say "[one of]Ugh, I'm just using my diaper [if diaper quest is 1]like I'm told[otherwise]for its intended purpose[end if], it's not a big deal.'[or]You should leave unless you enjoy witnessing this sort of thing.'[or]Don't judge me okay, I just can't [if C is cursed]actually take off this diaper right now[otherwise]be bothered to find a toilet[end if].'[in random order]".

[!<SayPurposefulShamelessEnemaDeclarationOfMonsterIntoDiaper>+

REQUIRES COMMENTING

+!]
To say purposeful shameless enema declaration of (M - a monster) into (C - a diaper):
	say "[one of]Please watch me squirt [if diaper quest is 1]my enema[otherwise]stuff from my [asshole][end if] into my diaper!'[or]Don't look away!  I want you to watch as I squirt [if diaper quest is 1]my enema[otherwise]stuff from my [asshole][end if] all into my diaper!'[or]Are you enjoying watching me use my diaper as a toilet for my [asshole]?'[in random order]".

[!<SayShamelessEnemaDeclarationOfMonsterIntoDiaper>+

REQUIRES COMMENTING

+!]
To say shameless enema declaration of (M - a monster) into (C - a diaper):
	say "[one of]It's all coming out! It's all coming out of my [asshole] into my diaper!'[or]Omigod it's coming out!  It's all coming out!  Please watch my diaper as I fill it from my [asshole]!'[in random order]".

[!<ComputeEnemaReactions>+

REQUIRES COMMENTING

+!]
To compute enema reactions:
	let C be nothing;
	if the player is ass protected, now C is a random bottom level ass protection clothing worn by the player;
	repeat with M running through intelligent awake monsters in the location of the player:
		unless M is reacted-already:
			if C is diaper:
				compute diaper mess reaction of M;
			otherwise if C is clothing:
				compute enema reaction of M into C;
			otherwise:
				compute enema floor reaction of M;
			now M is reacted-already.

[!<ComputeEnemaFloorReactionOfMonster>+

REQUIRES COMMENTING

+!]
To compute enema floor reaction of (M - a monster):
	FavourDown M;
	humiliate 200;
	if player-squatting is 1, humiliate 500;
	say "[EnemaFloorReactionFlav of M]";
	if M is unfriendly and diaper quest is 1:
		now M is interested;
	otherwise if M is friendly and M is interested:
		say "The [M] turns to leave you alone.";
		distract M.

[!<SayEnemaFloorReactionFlavOfMonster>+

REQUIRES COMMENTING

+!]
To say EnemaFloorReactionFlav of (M - a monster):
	say "The [M] [if M is interested]seems unimpressed[otherwise]turns to look at you[end if].  [speech style of M]'Disgusting[if M is unfriendly and diaper quest is 1].  You need further punishment[end if].'[roman type][line break][if the humiliation of the player < 25000][one of]You turn a bright shade of red[or]You blush brightly with shame[or]You shiver with self-consciousness[or]You turn red-faced with shame[in random order].[end if]".

[!<ComputeEnemaReactionOfMonsterIntoClothing>+

REQUIRES COMMENTING

+!]
To compute enema reaction of (M - a monster) into (C - a clothing):
	compute enema floor reaction of M.



Belly ends here.
