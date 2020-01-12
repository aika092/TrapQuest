Hair by Body Parts begins here.

Part 1 - Definitions

[!<Hair>@

REQUIRES COMMENTING

@inherits <BodyPart>

@!]
hair is a body part. hair is everywhere. Understand "my hair" as hair. The text-shortcut of hair is "hair".
To say FullExamineDesc of (B - hair):
	say "[TotalDesc of hair]".

[!<DecideWhichNumberIsTheLargenessOfHair>+

REQUIRES COMMENTING

+!]
To decide which number is the largeness of hair:
	decide on the raw largeness of hair + the fake largeness of hair.

[!<Hair>@<blondeness:Integer>*

REQUIRES COMMENTING

*@!]
Hair has a number called blondeness. The blondeness of hair is usually 0. [Min 0 Max 3 - A low number means not at all blonde.]

[!<Hair>@<brightness:Integer>*

REQUIRES COMMENTING

@!]
Hair has a number called brightness. The brightness of hair is usually 0. [Min 0 Max 3 - A low number means very dark.]

[!<Hair>@<redness:Integer>*

REQUIRES COMMENTING

*@!]
Hair has a number called redness. The redness of hair is usually 0. [Min 0 Max 3 - A high number means very red.]

[!<Hair>@<rawLargeness:Integer>*

REQUIRES COMMENTING

*@!]
hair has a number called raw largeness. The raw largeness of hair is usually 1. [Min 1 Max 20]

[!<Hair>@<fakeLargeness:Integer>*

REQUIRES COMMENTING

*@!]
hair has a number called fake largeness. The fake largeness of hair is usually 0. [Min 0 Max 10]

[!<Hair>@<realLargeness:Integer>*

REQUIRES COMMENTING

*@!]
hair has a number called real largeness. The real largeness of hair is usually 1. [Min 1 Max 20]

[!<PlayerMeanDoingSomethingToHair>+

REQUIRES COMMENTING

+!]
Does the player mean doing something to hair:
	it is likely.

[!<DecideWhichNumberIsFavouriteHairLength>+

REQUIRES COMMENTING

+!]
To decide which number is favourite hair length:
	let L be the bimbo of the player / 2;
	if extreme proportions fetish is 1, increase L by the bimbo of the player / 4;
	if L < 2, now L is 2;
	decide on L.

To decide which number is the outrage of (B - hair):
	let O be 0;
	if B is lewdly exposed, decide on the lewdly exposed outrage of B + O;
	decide on O. [not humiliating by default]

To decide which number is the lewdly exposed outrage of (B - hair):
	let O be (the blondeness of hair + the redness of hair + the brightness of hair) / 3;
	if the semen coating of hair + the urine coating of hair > 0:
		increase O by 2;
		if the semen coating of hair + the urine coating of hair >= 6, increase O by 2;
		if the semen coating of hair + the urine coating of hair >= the largeness of hair, increase O by 2;
		if the urine coating of hair is 0 and the semen coating of hair is 1 and the brightness of hair > 1, decrease O by 2;
	increase O by the largeness of hair / 5;
	decide on O.

Definition: hair (called B) is lewdly exposed:
	if hair is exposed, decide yes;
	decide no.

Definition: hair (called B) is exposed:
	if there is a worn hood, decide no;
	decide yes.

[!<frozenHair:Integer>*

Stops hair changing

*!]
frozen hair is a number that varies.


Part 2 - Description

[!<SayShortDescOfHair>+

REQUIRES COMMENTING

+!]
To say ShortDesc of hair:
	let X be the largeness of hair;
	if X is 1, say "incredibly short [HairSoak][HairColour] hair";
	if X is 2, say "[if the player is male]standard short [HairSoak][HairColour] hair[otherwise]tomboyish [HairSoak][HairColour] hair[end if]";
	if X is 3, say "[HairSoak][HairColour] ear length hair";
	if X is 4, say "[HairSoak][HairColour] ear length hair";
	if X is 5, say  "chin length [HairSoak][HairColour] hair";
	if X is 6, say "[HairSoak][HairColour] shoulder length hair";
	if X is 7, say "[HairSoak][HairColour] nipple length hair";
	if X is 8, say "[HairSoak][HairColour] elbow length hair";
	if X is 9, say "[HairSoak][HairColour] belly button length hair";
	if X is 10, say "[HairSoak][HairColour] crotch length hair";
	if X is 11, say "[HairSoak][HairColour] thigh length hair";
	if X is 12, say "[HairSoak][HairColour] knee length hair";
	if X is 13, say "[HairSoak][HairColour] calf length hair";
	if X is 14, say "[HairSoak][HairColour] ankle length hair";
	if X > 14, say "ground reaching [HairSoak][HairColour] hair".

[!<SayShortHairDesc>+

REQUIRES COMMENTING

+!]
To say ShortHairDesc:
	say ShortDesc of hair.

[!<SayTotalDescOfHair>+

REQUIRES COMMENTING

+!]
To say TotalDesc of hair:
	say "You have [HairDesc raw largeness of hair].";

[!<SayHairStyle>+

REQUIRES COMMENTING

+!]
To say HairStyle:
	if the player is ponytailed:
		say "ponytail";
	otherwise if the player is pigtailed:
		say "pigtails";
	otherwise:
		say "hair".

[!<SayHairColour>+

REQUIRES COMMENTING

+!]
To say HairColour:
	say "[HairColourText]".

[!<DecideWhichTextIsHairColourVagueText>+

REQUIRES COMMENTING

+!]
To decide which text is HairColourVagueText:
	let H be HairColourText;
	if H is "jet black" or H is "black":
		decide on "black";
	otherwise if H is "dark purple" or H is "purple" or H is "pale purple" or H is "violet" or H is "dark violet" or H is "very dark purple" or H is "red-violet":
		decide on "purple";
	otherwise if H is "very dark red" or H is "dark red" or H is "red" or H is "bright red" or H is "rosewood red" or H is "crimson red" or H is "scarlet red" or H is "lust red":
		decide on "red";
	otherwise if H is "apricot orange" or H is "flame orange" or H is "orange-red" or H is "copper":
		decide on "orange";
	otherwise if H is "very dark brown" or H is "seal brown" or H is "olive" or H is "brown" or H is "light brown" or H is "maroon" or H is "beige" or H is "chestnut brown" or H is "bittersweet brown":
		decide on "brown";
	otherwise if H is "blonde" or H is "platinum blonde" or H is "dirty blonde" or H is "cream" or H is "peach-yellow" or H is "strawberry blonde" or H is "fair blonde" or H is "vanilla" or H is "gold":
		decide on "blonde";
	otherwise if H is "gray" or H is "grey" or H is "silver" or H is "pure white":
		decide on "silver";
	otherwise:
		decide on "pink".

[!<SayHairLiquids>+

REQUIRES COMMENTING

+!]
To say HairLiquids:
	if the semen coating of hair > 0 and the urine coating of hair > 0:
		say "[semen] and [urine]";
	otherwise if the urine coating of hair > 0:
		say "[urine]";
	otherwise:
		say "[semen]".

[!<SayHairSoak>+

REQUIRES COMMENTING

+!]
To say HairSoak:
	let P be (100 * (the urine coating of hair + the semen coating of hair)) / the largeness of hair; [percentage soak of hair]
	if the urine coating of hair + the semen coating of hair is 1:
		say "[HairLiquids] splashed ";
	otherwise if P >= 100:
		say "[HairLiquids] saturated ";
	otherwise if P >= 50:
		say "[HairLiquids] soaked ";
	otherwise if P > 0:
		say "[HairLiquids] stained ".

[!<SayHairDescNumber>+

REQUIRES COMMENTING

+!]
To say HairDesc (X - a number):
	say "[2HairDesc X]";
	if the fake largeness of hair > 0, say " and fake hair extensions which are extending your hair to [2HairDesc the largeness of hair]. ";

[!<Say2HairDescNumber>+

REQUIRES COMMENTING

+!]
To say 2HairDesc (X - a number):
	if the player is upright:
		if X is 1, say "incredibly short, [HairSoak][HairColour] army style hair";
		if X is 2, say "[if the player is male]standard, short [HairSoak][HairColour] hair[otherwise]tomboyish [HairSoak][HairColour] hair[end if]";
		if X is 3, say "straight [HairSoak][HairColour] [HairStyle] that reaches the tops of your ears";
		if X is 4, say "straight [HairSoak][HairColour] [HairStyle] that reaches the bottoms of your ears";
		if X is 5, say  "straight [HairSoak][HairColour] [HairStyle] that reaches your chin";
		if X is 6, say "straight [HairSoak][HairColour] [HairStyle] that goes down to your shoulders";
		if X is 7, say "straight [HairSoak][HairColour] [HairStyle] that goes down to your nipples";
		if X is 8, say "straight [HairSoak][HairColour] [HairStyle] that flows down to your elbows";
		if X is 9, say "straight [HairSoak][HairColour] [HairStyle] that flows down to your belly button";
		if X is 10, say "straight [HairSoak][HairColour] [HairStyle] that flows all the way down to your crotch";
		if X is 11, say "straight [HairSoak][HairColour] [HairStyle] that flows all the way down to your thighs";
		if X is 12, say "straight [HairSoak][HairColour] [HairStyle] that flows all the way down to your knees";
		if X is 13, say "straight [HairSoak][HairColour] [HairStyle] that flows all the way down to your calves";
		if X is 14, say "straight [HairSoak][HairColour] [HairStyle] that flows all the way down to your ankles";
		if X is 15, say "straight [HairSoak][HairColour] [HairStyle] that is so long it touches the ground when you are standing";
		if X > 15, say "straight [HairSoak][HairColour] [HairStyle] that is so long it collects and drags along the ground as you walk";
	otherwise:
		if X is 1, say "incredibly short, [HairSoak][HairColour] army style hair";
		if X is 2, say "[if the player is male]standard, short [HairSoak][HairColour] hair[otherwise]tomboyish [HairSoak][HairColour] hair[end if]";
		if X is 3, say "straight [HairSoak][HairColour] [HairStyle] that reaches the tops of your ears";
		if X is 4, say "straight [HairSoak][HairColour] [HairStyle] that reaches the bottoms of your ears";
		if X is 5, say  "straight [HairSoak][HairColour] [HairStyle] that reaches your chin";
		if X is 6, say "straight [HairSoak][HairColour] [HairStyle] that hangs past your chin as you kneel";
		if X is 7, say "straight [HairSoak][HairColour] [HairStyle] that hangs past your chin as you kneel";
		if X is 8, say "straight [HairSoak][HairColour] [HairStyle] that touches the ground as you crawl";
		if X is 9, say "straight [HairSoak][HairColour] [HairStyle] that touches the ground as you crawl";
		if X is 10, say "straight [HairSoak][HairColour] [HairStyle] that is so long it drags across the ground as you crawl";
		if X > 10, say "straight [HairSoak][HairColour] [HairStyle] that is so long it drags across the ground as you crawl";
	if the semen coating of hair is 1 and the urine coating of hair is 0, say ". The cum is [if the brightness of hair > 1]difficult to spot thanks to its light colour[otherwise]very noticeable[end if]".

[!<SayRealHairDesc>+

REQUIRES COMMENTING

+!]
To say RealHairDesc:
	say RealHairDesc the real largeness of hair;

[!<SayRealDescOfHair>+

REQUIRES COMMENTING

+!]
To say RealDesc of (XXX - hair):
	say RealHairDesc.

[!<SayRealHairDescNumber>+

REQUIRES COMMENTING

+!]
To say RealHairDesc (X - a number):
	if X is 1, say "incredibly short hair";
	if X is 2, say "[if the player is male]standard short hair[otherwise]tomboyish hair[end if]";
	if X is 3, say "ear length hair";
	if X is 4, say "ear length hair";
	if X is 5, say  "chin length hair";
	if X is 6, say "shoulder length hair";
	if X is 7, say "nipple length hair";
	if X is 8, say "elbow length hair";
	if X is 9, say "belly button length hair";
	if X is 10, say "crotch length hair";
	if X is 11, say "thigh length hair";
	if X is 12, say "knee length hair";
	if X is 13, say "calf length hair";
	if X is 14, say "ankle length hair";
	if X > 14, say "hair that is even longer than your body".

Part 3 - Modify Hair Stats


[!<DecideWhichNumberIsMaxHairLength>+

REQUIRES COMMENTING

+!]
To decide which number is max hair length:
	if extreme proportions fetish is 1, decide on 20;
	decide on 9.

[!<HairUpX>+

REQUIRES COMMENTING

+!]
To HairUp (X - a number):
	if frozen hair is 1 or diaper quest is 1:
		if frozen hair is 1, say "Your hair would change size but the divine power of Aika prevents it.";
	otherwise:
		now the previous hair length of face is the largeness of hair;
		let hair-fail be -1; [-1: No action happened yet. 0: No problems. 1: Hair failed at some point after first increase. 2: Hair failed immediately.]
		while X > 0:
			decrease X by 1;
			if the raw largeness of hair < max hair length:
				now hair-fail is 0;
				if a random number between 1 and 4 > 1, increase the raw largeness of hair by 1;
			otherwise:
				if hair-fail is 0, now hair-fail is 1;
				if hair-fail is -1, now hair-fail is 2;
		if hair-fail is 0 or hair-fail is 1:
			if the largeness of hair is 2, say "You feel your hair grow!";
			if the largeness of hair is 3, say "You feel your hair significantly grow! [one of][line break][first custom style]This can't be a good sign...[or][if the bimbo of the player < 12][first custom style]Here we go again...[otherwise]That felt goood...[end if][stopping][roman type][line break]";
			if the largeness of hair is 4, say "You feel your hair significantly grow! [one of][line break][first custom style]So this game is going to make my hair grow really long?[or][if the bimbo of the player < 12][first custom style]A bearable size for now...[otherwise]Yay, my hair does need to be longer![end if][stopping][roman type][line break]";
			if the largeness of hair is 5 and the player is gendered male, say "You feel your hair grow until it reaches your chin. [one of][if the bimbo of the player < 7][line break][first custom style]This hair is starting to feel very girly...[otherwise][line break][second custom style]I guess this hair length isn't too bad.[end if][or][stopping][roman type][line break]";
			if the largeness of hair is 5 and the player is gendered female, say "You feel your hair grow until it reaches your chin. [one of][if the bimbo of the player < 5][line break][first custom style]I always cut my hair before it gets this long...[otherwise][line break][second custom style]I know I usually cut my hair before it gets this long, but I guess this length isn't too bad.[end if][or][stopping][roman type][line break]";
			if the largeness of hair is 6 and the player is gendered male, say "You feel your hair grow until it reaches your shoulders. [one of][if the bimbo of the player < 8][line break][first custom style]Ugh, this is definitely girl's hair now.[otherwise][line break][second custom style]It could be worse, I don't mind having this length hair I guess...[end if][or][stopping][roman type][line break]";
			if the largeness of hair is 6 and the player is gendered female, say "You feel your hair grow until it reaches your shoulders. [one of][if the bimbo of the player < 6][line break][first custom style]Ugh, this hair is definitely too 'pretty girl' for me now.[otherwise][line break][second custom style]This hair length is totally fine, I am a girl after all.[end if][or][stopping][roman type][line break]";
			if the largeness of hair is 7 and the player is gendered male, say "You watch your hair grow until it reaches nipple level. [one of][if the bimbo of the player < 8][line break][first custom style]They're just trying to make me feel like a girl. I've got to fight it![otherwise][line break][second custom style]There's something nice about having long flowing locks of hair...[end if][or][stopping][roman type][line break]";
			if the largeness of hair is 7 and the player is gendered female, say "You watch your hair grow until it reaches nipple level. [one of][if the bimbo of the player < 6][line break][first custom style]They're just trying to make me feel more comfortable accepting all the girly stereotypes. I've got to fight it![otherwise][line break][second custom style]There's something nice about having long flowing locks of hair...[end if][or][stopping][roman type][line break]";
			if the largeness of hair is 8, say "You watch your hair grow until it reaches elbow level. [one of][if the bimbo of the player < 8][line break][first custom style]How much more can it grow?![otherwise][line break][second custom style]How much more can it grow, I wonder?[end if][or][second custom style][if the bimbo of the player > 12]I think I just love long hair...[end if][stopping][roman type][line break]";
			if the largeness of hair is 9, say "You watch your hair grow until it reaches your belly button. [if the player is upright]You can feel it behind you tickling the small of your back. [end if][one of][if the bimbo of the player < 9][line break][first custom style]This is getting silly now.[otherwise][line break][second custom style]Ooh, it just keeps going, doesn't it?[end if][or][stopping][roman type][line break]";
			if the largeness of hair is 10, say "You watch your hair grow until it reaches your crotch. [if the thickness of hips > 6 and the player is upright]You feel the hair start to bunch up and settle on top of your [AssDesc]. [end if][one of][if the bimbo of the player < 10][line break][first custom style]Not only do I now look like some kind of sheltered maiden, but if it grows much further I'll end up tripping over it![otherwise][line break][second custom style]I feel like some kind of glamorous model![end if][or][stopping][roman type][line break]";
			if the largeness of hair is 11, say "Your hair continues to grow right in front of your eyes, until it reaches your [ShortDesc of thighs]. [if the semen coating of thighs > 2 and the player is upright]It starts to stick to the [semen] on the insides of your [ShortDesc of thighs]. [end if][if the thickness of hips > 5 and the player is upright]Behind you, it flows gracefully over your [MediumDesc of hips]. [end if][one of][if the semen addiction of the player < 10 and the semen coating of thighs > 2][line break][first custom style]Oh man, that's just gross. And I have to walk around like this?[otherwise if the bimbo of the player < 10][first custom style]My hair is so long it's making my head feel awkwardly heavy![otherwise][line break][second custom style]I wish I could see myself in a mirror, I bet my hair looks amazing![end if][or][stopping][roman type][line break]";
			if the largeness of hair is 12, say "Your hair continues to grow right in front of your eyes, until it reaches your knees. [if the thickness of hips > 5 and the player is upright]You feel it continue to flow over your [MediumDesc of hips]. [end if][one of][if the bimbo of the player < 12][line break][first custom style]Please stop growing now...[otherwise][line break][second custom style]I have the best hair in the world![end if][or][if the bimbo of the player > 12][second custom style]This is the perfect hair length, I think.[end if][stopping][roman type][line break]";
			if the largeness of hair is 13, say "Your hair continues to grow right in front of your eyes, until it reaches your calves. [one of][if the bimbo of the player < 12][line break][first custom style]If it grows any more, I'm definitely going to have trouble walking...[otherwise][line break][second custom style]Why wouldn't I want it to grow longer?[end if][or][stopping][roman type][line break]";
			if the largeness of hair is 14, say "Your hair continues to grow right in front of your eyes, until it reaches your ankles! [one of][if the bimbo of the player < 12][line break][first custom style]Fuck this, now I'm basically tripping over my hair![otherwise][line break][second custom style]Whoops! My hair is so long, I'd better take care not to trip on it![end if][or][stopping][roman type][line break]";
			if the largeness of hair is 15, say "Your hair grows even further, and now touches the floor! [one of][if the bimbo of the player < 12][line break][first custom style]How am I supposed to walk around like this...[otherwise][line break][second custom style]Wow, my hair is crazily long![end if][or][stopping][roman type][line break]";
			if the largeness of hair > 15, say "Your hair grows even further, and [one of]now starts[or]continues[stopping] to collect on the floor! [one of][if the bimbo of the player < 13][line break][first custom style]Fuck me... my hair is insane.[otherwise]Whoops! There it goes, still growing even longer...[line break][second custom style][end if][or][line break][variable custom style]They should call me Rapunzel![or][stopping][roman type][line break]";
		let P be a random off-stage pink scrunchie;
		if P is actually summonable and 0 is the number of worn headgear and there are 2 off-stage pink scrunchie and (hair-fail > 0 or the raw largeness of hair >= 8):
			say "[bold type]You jump in shock as you feel your [ShortDesc of hair] twisted tightly together behind you, and a scrunchie added! Your hair is now in a ponytail![roman type][line break]";
			summon P;
		otherwise if a random number between 1 and 250 is 1 and P is actually summonable and there is a worn pink scrunchie and (hair-fail > 0 or the raw largeness of hair >= 12):
			say "[bold type]You jump in shock as you feel your ponytail split in two behind you, and another scrunchie added! Your hair is now in pigtails![roman type][line break]";
			summon P;
		otherwise if hair-fail is 2:
			say "You feel your hair try to grow, but it's already so long it can't grow any further!".

[!<HairDownX>+

REQUIRES COMMENTING

+!]
To HairDown (X - a number):
	if frozen hair is 1:
		say "Your hair would change size but the divine power of Aika prevents it.";
	otherwise:
		now the previous hair length of face is the largeness of hair;
		while X > 0:
			decrease X by 1;
			if the player is pigtailed or the player is ponytailed:
				if the raw largeness of hair > 5, decrease the raw largeness of hair by 1;
			otherwise:
				if the raw largeness of hair > 1, decrease the raw largeness of hair by 1.

[!<FakeHairUpX>+

REQUIRES COMMENTING

+!]
To FakeHairUp (X - a number):
	if frozen hair is 1:
		say "Your hair would change size but the divine power of Aika prevents it.";
	otherwise:
		while X > 0:
			decrease X by 1;
			if the largeness of hair < max hair length, increase the fake largeness of hair by 1;

[!<FakeHairDownX>+

REQUIRES COMMENTING

+!]
To FakeHairDown (X - a number):
	if frozen hair is 1:
		say "Your hair would change size but the divine power of Aika prevents it.";
	otherwise:
		while X > 0:
			decrease X by 1;
			if the fake largeness of hair > 0, decrease the fake largeness of hair by 1.

[!<ColourUpX>+

REQUIRES COMMENTING

+!]
To ColourUp (X - a number):
	HairRedUp X;
	HairBlondeUp X;
	HairBrightUp X;

[!<HairRedUpX>+

REQUIRES COMMENTING

+!]
To HairRedUp (X - a number):
	if frozen hair is 1:
		say "Your hair would change colour but the divine power of Aika prevents it.";
	otherwise:
		now the previous hair redness of face is the redness of hair;
		if a random number from 0 to the redness of hair is 0 or a random number between 1 and 2 is 1:
			if the redness of hair < 3:
				if the class of the player is not silicone queen and the class of the player is not cheerleader, increase the redness of hair by 1;
			otherwise:
				HairUp 1;
				hair permanent check.

[!<HairRedDownX>+

REQUIRES COMMENTING

+!]
To HairRedDown (X - a number):
	if frozen hair is 1:
		say "Your hair would change colour but the divine power of Aika prevents it.";
	while X > 0 and the redness of hair > natural redness * 3:
		if frozen hair is 0:
			now the previous hair redness of face is the redness of hair;
			if the redness of hair > 0:
				decrease the redness of hair by 1.

[!<HairBrightUpX>+

REQUIRES COMMENTING

+!]
To HairBrightUp (X - a number):
	if frozen hair is 1:
		say "Your hair would change colour but the divine power of Aika prevents it.";
	otherwise:
		now the previous hair brightness of face is the brightness of hair;
		if a random number from 0 to the brightness of hair is 0 or a random number between 1 and 2 is 1:
			if the brightness of hair < 3:
				increase the brightness of hair by 1;
			otherwise:
				HairUp 1;
				hair permanent check.

[!<HairBrightDownX>+

REQUIRES COMMENTING

+!]
To HairBrightDown (X - a number):
	if frozen hair is 1:
		say "Your hair would change colour but the divine power of Aika prevents it.";
	while X > 0 and the brightness of hair > natural brightness * 3:
		if frozen hair is 0:
			now the previous hair brightness of face is the brightness of hair;
			if the brightness of hair > 0:
				decrease the brightness of hair by 1.

[!<HairBlondeUpX>+

REQUIRES COMMENTING

+!]
To HairBlondeUp (X - a number):
	if frozen hair is 1:
		say "Your hair would change colour but the divine power of Aika prevents it.";
	otherwise:
		now the previous hair blondeness of face is the blondeness of hair;
		if a random number from 0 to the blondeness of hair is 0 or a random number between 1 and 2 is 1:
			if the blondeness of hair < 3:
				increase the blondeness of hair by 1;
			otherwise:
				HairUp 1;
				hair permanent check.

[!<HairBlondeDownX>+

REQUIRES COMMENTING

+!]
To HairBlondeDown (X - a number):
	if frozen hair is 1:
		say "Your hair would change colour but the divine power of Aika prevents it.";
	while X > 0 and the blondeness of hair > natural blondeness * 3:
		if frozen hair is 0:
			now the previous hair blondeness of face is the blondeness of hair;
			if the blondeness of hair > 0:
				decrease the blondeness of hair by 1.

[!<HairPermanentCheck>+

REQUIRES COMMENTING

+!]
To hair permanent check:
	unless the redness of hair < 3 or the blondeness of hair < 3 or the brightness of hair < 3:
		if there is a worn tattoo and bright-hair tattoo is not worn:
			summon bright-hair tattoo;
			say "[bold type]A new tattoo has appeared on your arm![roman type][line break]";
			try examining bright-hair tattoo.


Section - Image for graphics window

The text-shortcut of hair is "hair".
Figure of CumHairButton is the file "Special/Buttons/cumhair.png".

To decide which figure-name is the examine-image of (T - hair):
	if T is overglazed, decide on Figure of CumHairButton;
	decide on figure of no-image-yet.


Hair ends here.

