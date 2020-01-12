Bladder by Player begins here.


[!<PersonIsAbleToPee>+

REQUIRES COMMENTING

+!]
Definition: a person is able to pee:
	if the latex-transformation of the player > 4, decide no;
	decide yes.

[!<BladderUpX>+

REQUIRES COMMENTING

+!]
To BladderUp (X - a number):
	let P be bladder-bursting-level;
	let old-bursting be 0;
	if the player is bursting, now old-bursting is 1;
	if the player is not able to pee, now X is 0;
	if the player is female or the size of penis > 0:
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
				if newbie tips is 1, say "[one of][newbie style]Newbie tip: Looks like someone needs to take a leak! Having a full bladder lowers your dexterity, so it makes sense to pee. However there are lots of reasons not to:[line break]* Soiled clothing [if diaper lover >= 1](apart from diapers) massively reduce your dexterity as you are grossed out and [end if]performs worse at its primary function as if it had a negative magic modifier[if diaper lover >= 1]. Diapers themselves can make it very difficult to walk upright when overly soaked[end if].[line break]* Puddles on the floor give you a [if there are worn heels]higher [end if]chance of falling over.[line break][if diaper lover >= 1]Urine puddles also massively gross you out and lower dexterity, and also the player will refuse to rest on furniture here.[line break][end if]Eventually you'll urinate involuntarily[if diaper lover >= 1], and if this happens too many times you'll become incontinent, unable to control when you pee[end if].[line break]So, overall the best way to urinate is to find a body of water or a room with toilets[if diaper lover >= 1] - doing this also gradually recovers lost continence[end if].[roman type][line break][or][stopping]".

[!<BladderDownX>+

REQUIRES COMMENTING

+!]
To BladderDown (X - a number):
	decrease the bladder of the player by X;
	if the bladder of the player < 0:
		now the bladder of the player is 0.

Bladder ends here.

