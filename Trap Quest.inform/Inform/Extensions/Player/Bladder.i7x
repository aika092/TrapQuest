Bladder by Player begins here.

Definition: a person is able to pee:
	if the latex-transformation of the player > 4, decide no;
	decide yes.

To BladderUp (X - a number):
	let P be bladder-bursting-level;
	let old-bursting be 0;
	if the player is bursting, now old-bursting is 1;
	if the player is not able to pee, now X is 0;
	if the player is not barbie:
		if watersports mechanics is 1:
			increase the bladder of the player by 2 * X;
			if the player is pheromonal:
				let N be 3 * X;
				increase the bladder of the player by N / 2;
			if the bladder of the player > 12: [slower increase beyond twelve]
				decrease the bladder of the player by X;
			if the bladder of the player > 20: [maximum 20]
				now the bladder of the player is 20;
		if (the player is bursting or the bladder of the player >= 14) and player-urinating is not 1 and the player is not fake bursting:
			if the player is diapered:
				if bladder-bursting-level >= 2 and P < 2:
					say "[if the delicateness of the player < 17][line break][variable custom style]I'm going to pee myself in my diaper any minute now![otherwise][line break][second custom style][NameBimbo] needs to go tinkles really bad![end if][roman type][line break]";
				otherwise if bladder-bursting-level >= 0 and P < 0:
					say "[bold type]You could really do with [if the humiliation of the player < 5000]finding a toilet![otherwise]using your diaper![end if][roman type][line break]";
				otherwise if old-bursting is 0 and the player is bursting:
					say "[bold type]You are starting to feel the need to [if the humiliation of the player < 5000]use the rest room.[otherwise]use your diaper.[end if][roman type][line break]";
			otherwise:
				if bladder-bursting-level >= 2 and P < 2:
					say "[if the bimbo of the player < 17][line break][variable custom style]Uh-oh, at this rate I'm going to wet myself![otherwise][line break][second custom style][NameBimbo] needs to go tinkles really bad![end if][roman type][line break]";
				otherwise if bladder-bursting-level >= 0 and P < 0:
					say "[bold type]You could really do with [if the humiliation of the player < 5000]finding a toilet![otherwise]having a piss![end if][roman type][line break]";
				otherwise if old-bursting is 0 and the player is bursting:
					say "[bold type]You are starting to feel the need to [if the humiliation of the player < 5000]use the rest room.[otherwise]pee.[end if][roman type][line break]";
			if old-bursting is 0 and the player is bursting:
				if newbie tips is 1, say "[one of][newbie style]Newbie tip: Looks like someone needs to take a leak! Having a full bladder lowers your dexterity, so it makes sense to pee. However there are lots of reasons not to:[line break]* Soiled clothing [if diaper lover >= 1](apart from diapers) massively reduce your dexterity as you are grossed out and [end if]will significantly worsen your appearance rating if visible[if diaper lover >= 1]. Diapers themselves can make it very difficult to walk upright when overly soaked[end if].[line break]* Puddles on the floor give you a [if there are worn heels]higher [end if]chance of falling over.[line break][if diaper lover >= 1]Urine puddles also massively gross you out and lower dexterity, and also the player will refuse to rest on furniture here.[line break][end if]Eventually you'll urinate involuntarily[if diaper lover >= 1], and if this happens too many times you'll become incontinent, unable to control when you pee[end if].[line break]So, overall the best way to urinate is to find a body of water or a room with toilets[if diaper lover >= 1] - doing this also gradually recovers lost continence[end if].[roman type][line break][or][stopping]".

To BladderDown (X - a number):
	decrease the bladder of the player by X;
	if the bladder of the player < 0:
		now the bladder of the player is 0.

[How high will the game allow bladder incontinence to go?]
To decide which number is the max-bladder-incontinence of the player:
	decide on 10 - (incontinence protection * 2).

The player has a number called raw-bladder-incontinence.

To BladderIncontinenceUp (N - number):
	if the raw-bladder-incontinence of the player < the max-bladder-incontinence of the player:
		say "You feel your ability to hold onto your bladder weakening.";
		SilentlyBladderIncontinenceUp N.
To SilentlyBladderIncontinenceUp (N - number):
	if the raw-bladder-incontinence of the player < the max-bladder-incontinence of the player:
		increase the raw-bladder-incontinence of the player by N;
		if the raw-bladder-incontinence of the player > the max-bladder-incontinence of the player, now the raw-bladder-incontinence of the player is the max-bladder-incontinence of the player.

To BladderIncontinenceDown (N - number):
	if the raw-bladder-incontinence of the player > 0:
		say "You feel your ability to hold onto your bladder [if N is 1 and the raw-bladder-incontinence of the player > 1]slightly [otherwise if the raw-bladder-incontinence of the player > N + 2]somewhat [end if]returning.";
		SilentlyBladderIncontinenceDown N.
To SilentlyBladderIncontinenceDown (N - number):
	decrease the raw-bladder-incontinence of the player by N;
	if the raw-bladder-incontinence of the player < 0, now the raw-bladder-incontinence of the player is 0.


temporary-bladder-incontinence is a number that varies.
To progress temporary incontinence:
	if temporary-bladder-incontinence > 0:
		let DA be 0;
		if the player is bladder diaper aware, now DA is 1;
		decrease temporary-bladder-incontinence by 1;
		if temporary-bladder-incontinence is 0 and the bladder-incontinence of the player < the max-bladder-incontinence of the player:
			say "[bold type]You feel that the magic curse that was making you completely incontinent has finally lifted![line break][variable custom style]I can feel my bladder again![roman type][line break]";
			if DA is 0 and the player is bladder diaper aware: [Player has regained the ability to detect when they urinate into a diaper]
				let C be a random worn diaper;
				if C is diaper, compute awakened state check of C;
	if temporary-rectum-incontinence > 0:
		let DA be 0;
		if the player is rectum diaper aware, now DA is 1;
		decrease temporary-rectum-incontinence by 1;
		if temporary-rectum-incontinence is 0 and the rectum-incontinence of the player < the max-rectum-incontinence of the player:
			say "[bold type]You feel that the magic curse that was making you completely incontinent has finally lifted![line break][variable custom style]I can feel my rectum again![roman type][line break]";
			if DA is 0 and the player is rectum diaper aware: [Player has regained the ability to detect when they urinate into a diaper]
				let C be a random worn diaper;
				if C is diaper, compute awakened state check of C.
To TemporaryIncontinenceUp (N - a number):
	if diaper messing >= 3 and a random number between 0 and 1 is 1, increase temporary-rectum-incontinence by N;
	increase temporary-bladder-incontinence by N.

To decide which number is the bladder-incontinence-influence of (C - a wearthing):
	if C is diaper or C is bladder-incontinence-influencing clothing:
		let N be -1 * the magic-modifier of C;
		if C is bed wetting clothing, decrease N by 1;
		decide on N;
	decide on 0.

To decide which number is the bladder-incontinence of the player:
	if temporary-bladder-incontinence > 0, decide on the max-bladder-incontinence of the player;
	let I be the raw-bladder-incontinence of the player;
	repeat with C running through worn wearthings:
		increase I by the bladder-incontinence-influence of C;
	if I > the max-bladder-incontinence of the player, decide on the max-bladder-incontinence of the player;
	decide on I.

[!<YourselfIsBladderIncontinent>+

This is essentially the highest level of bladder incontinence that matters, because at this level all control is taken away from the player.

+!]
Definition: yourself is bladder incontinent:
	if the bladder-incontinence of the player >= 8, decide yes;
	decide no.
Definition: yourself is incontinent:
	if the player is rectum incontinent or the player is bladder incontinent, decide yes;
	decide no.
Definition: yourself is totally incontinent:
	if the player is bladder incontinent and (diaper messing < 3 or the player is rectum incontinent), decide yes;
	decide no.


Definition: yourself is at least somewhat bladder continent: [we use this to check whether there's any point in applying more bladder continence reducing effects to the player.]
	if the raw-bladder-incontinence of the player < the max-bladder-incontinence of the player, decide yes;
	decide no.
Definition: yourself is at least somewhat continent: [we use this to check whether there's any point in applying more continence reducing effects to the player.]
	if the player is at least somewhat bladder continent or (diaper messing >= 3 and the player is at least somewhat rectum continent), decide yes;
	decide no.

Definition: yourself is potentially diaper aware: [Do they always know the state of their diaper?]
	if failed potty training tattoo is worn or the diaper addiction of the player >= 20, decide no;
	decide yes.

Definition: yourself is bladder diaper aware: [Do they always know the state of their diaper after peeing?]
	if the player is not potentially diaper aware or the bladder-incontinence of the player >= 10, decide no;
	decide yes.

Definition: yourself is diaper aware: [Do they always know the state of their diaper?]
	if the player is not potentially diaper aware or the bladder-incontinence of the player >= 10 or the rectum-incontinence of the player >= 10, decide no;
	decide yes.

[The level of bladder at which the player has a chance to squirt out a bit of pee when surprised / distracted]
To decide which number is bladder-squirty-level:
	let N be 7;
	decrease N by the bladder-incontinence of the player;
	decrease N by the womb volume of vagina / 10; [pregnancy makes you need to go more]
	increase N by yellow theme bonus;
	if N < 1, decide on 1;
	decide on N.

[The level of bladder at which the player has a chance to just spontaneously wet themselves]
To decide which number is bladder-risky-level:
	let N be 12;
	decrease N by the bladder-incontinence of the player;
	decrease N by the womb volume of vagina / 10; [pregnancy makes you need to go more]
	increase N by yellow theme bonus;
	if N < 4, decide on 4;
	decide on N.

[As bladder rises further above bladder-risky-level, the player is more likely to wet themselves each turn]
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
	if the player is bladder incontinent or failed potty training tattoo is worn, decide no;
	if the player is fake bursting, decide yes;
	if the player is desperate to pee and the bladder of the player >= 6, decide yes;
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
	if the player is bursting and bladder-bursting-level > 0, decide yes;
	decide no.

To decide which number is burstingColour:
	[unless the player is bursting, decide on 16777215;] [white] [unnecessary because the only time this is used we have already checked that the player is bursting]
	if failed potty training tattoo is worn, decide on 16777215; [white]
	if the player is fake bursting, decide on lightModeFullRed; [red]
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

A game universe initialisation rule:
	if tough-shit is 1 and diaper lover > 0:
		now the bladder of the player is bladder-risky-level + 2;
		if diaper messing >= 4:
			now rectum is 4;
			now suppository is 1;
		say "[bold type]You feel an urgent need to use the toilet![line break][first custom style]What, straight away?! How horribly unfair!!![roman type][line break]".


Bladder ends here.
