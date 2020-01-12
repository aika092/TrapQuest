Asshole by Body Parts begins here.

Part 1 - Definitions

[!<Asshole>@

REQUIRES COMMENTING

@inherits <Fuckhole>

@!]
asshole is a fuckhole. asshole is everywhere. Understand "butthole", "anus", "ass hole", "butt hole" as asshole. Understand "pussy", "fuckhole", "cunt", "fanny", "snatch", "muffin", "cum dump" as asshole when the player is not possessing a vagina and the player is a butt slut. Understand "hole" as asshole when the player is not in Hotel16.

To say FullExamineDesc of (B - asshole):
	say "[TotalDesc of asshole][AssholeModesty]".

To decide which object is the concealer of (A - asshole):
	let C be a random worn actually dense potentially at least partially asshole covering clothing;
	if C is clothing, decide on C;
	if the total volume of hips > 13, decide on hips;
	decide on nothing.

To decide which object is the at least partial concealer of (A - asshole):
	let C be a random worn potentially at least partially asshole covering clothing;
	if C is clothing, decide on C;
	if the player is upright and the total volume of hips > 2, decide on hips;
	decide on the concealer of A.


[Can it be accessed right now with nothing blocking it?]
Definition: asshole is undefended:
	if asshole is actually occupied or the player is ass protected, decide no;
	decide yes.


[!<AssholeIsExposed>+

Fully visible

+!]
Definition: asshole is exposed:
	if the at least partial concealer of asshole is nothing, decide yes;
	decide no.

[!<AssholeIsAtLeastPartiallyExposed>+

At least a little bit visible

+!]
Definition: asshole is at least partially exposed:
	if the concealer of asshole is nothing, decide yes;
	decide no.

[!<ClothingIsPotentiallyAssholeCovering>+

Does this completely block vision of asshole when worn?

+!]
Definition: a clothing (called C) is potentially asshole covering:
	if C is actually dense total protection clothing, decide yes;
	if C is actually dense skirt-covering-crotch clothing, decide yes;
	decide no.

[!<ClothingIsPotentiallyAssholeCovering>+

Does this at least partially block vision of asshole when worn?

+!]
Definition: a clothing (called C) is potentially at least partially asshole covering:
	if (C is total protection or C is crotch-ripped or C is crotch-unzipped) and C is not see-through, decide yes;
	if C is skirt-covering-crotch and C is not see-through, decide yes;
	decide no.

[!<assholePresentableRules:Rulebook>+

REQUIRES COMMENTING

+!]
the asshole presentable rules is a rulebook.
the presentable rules of asshole is usually the asshole presentable rules.

[!<TheAssholeProtectedRule>+

REQUIRES COMMENTING

+!]
This is the asshole protected rule:
	repeat with O running through ass covering clothing:
		unless (O is displacable and O is not glued) or O is zippable or O is usually autoremovable:
			if auto is 0, say "Your [O] is preventing you from getting your [asshole] on display.";
			rule fails.
The asshole protected rule is listed in the asshole presentable rules.

[!<TheAssholeOccupiedRule>+

REQUIRES COMMENTING

+!]
This is the asshole occupied rule:
	if asshole is actually occupied:
		if auto is 0, say "Your asshole is a bit full already, don't you think?";
		rule fails.
The asshole occupied rule is listed in the asshole presentable rules.

[!<TheTooMuchDignityToPresentAssholeRule>+

REQUIRES COMMENTING

+!]
[This is the too much dignity to present asshole rule:
	if the humiliation of the player < HUMILIATION-PROUD + 2000 and the player is not horny and the virgin bonus of the player <= 0 and just the tip tattoo is not worn and debugmode < 1:
		if auto is 0, say "You have too much self respect to do that!";
		rule fails.
The too much dignity to present asshole rule is listed in the asshole presentable rules.]

[!<ThePlayerHatesAnalSexRule>+

REQUIRES COMMENTING

+!]
[This is the player hates anal sex rule:
	if the anal sex addiction of the player + 2 < the soreness of asshole and the player is not horny and flower hairclip is not worn and just the tip tattoo is not worn and debugmode < 1:
		if auto is 0, say "You don't like anal sex enough to ask for it while you are already feeling so [if the soreness of asshole < 5]raw[otherwise]sore[end if]!";
		rule fails.
The player hates anal sex rule is listed in the asshole presentable rules.]

[!<TheMonsterDoesNotdoAnalRule>+

REQUIRES COMMENTING

+!]
This is the monster doesn't do anal rule:
	if auto is 1 and the number of willing to do anal monsters in the location of the player is 0, rule fails.
The monster doesn't do anal rule is listed in the asshole presentable rules.

[!<DecideWhichNumberIsTheDesireOfAsshole>+

How much does the player want this body part to be used?

+!]
To decide which number is the desire of (B - asshole):
	decide on the anal sex addiction of the player.

Part 2 - Description

[!<SayShortDescOfAsshole>+

REQUIRES COMMENTING

+!]
To say ShortDesc of asshole:
	if diaper quest is 0:
		say "[AssGape openness of asshole]";
		if the latex-transformation of the player < 4:
			if the soreness of asshole > 7:
				say ", very sore ";
			otherwise if the soreness of asshole > 3:
				say ", sore ";
			otherwise:
				say " ";
		otherwise:
			say ", numb ";
	say "[asshole]".

[!<SayMediumDescOfAsshole>+

Less brief details (size, exposure, semen)

+!]
To say MediumDesc of (A - asshole):
	say "[if asshole is lewdly exposed]fully exposed [otherwise if asshole is at least partially lewdly exposed]slightly visible [otherwise if asshole is not exposed]concealed [end if][if the openness of asshole > 4 and diaper quest is 0][AssGape openness of asshole] [end if][if the semen volume of belly > 0]creampied [end if]asshole".

[!<SayAssGapeN>+

REQUIRES COMMENTING

+!]
To say AssGape (N - a number):
	if N < 2, say "completely tight";
	if N is 2, say "reasonably tight";
	if N is 3, say "tight";
	if N is 4, say "slightly tight";
	if N is 5, say "relatively loose";
	if N is 6, say "loose";
	if N is 7, say "very loose";
	if N is 8, say "open";
	if N is 9, say "gaping wide";
	if N is 10, say "impossibly stretched".

[!<SayTotalDescOfAsshole>+

REQUIRES COMMENTING

+!]
To say TotalDesc of asshole:
	if the openness of asshole < 2, say "Your completely tight [asshole] ";
	if the openness of asshole is 2, say "Your reasonably tight [asshole] ";
	if the openness of asshole is 3, say "Your tight [asshole] ";
	if the openness of asshole is 4, say "Your slightly tight [asshole] ";
	if the openness of asshole is 5, say "Your relatively loose [asshole] ";
	if the openness of asshole is 6, say "Your loose [asshole] ";
	if the openness of asshole is 7, say "Your very loose [asshole] ";
	if the openness of asshole is 8, say "Your open [asshole] ";
	if the openness of asshole is 9, say "Your gaping wide [asshole] ";
	if the openness of asshole is 10, say "Your impossibly stretched [asshole] ";
	if the latex-transformation of the player < 4:
		if the soreness of asshole is 0, say "feels fine. ";
		if the soreness of asshole is 1, say "feels almost completely fine. ";
		if the soreness of asshole is 2, say "is slightly tingling. ";
		if the soreness of asshole is 3, say "is tingling. ";
		if the soreness of asshole is 4, say "is throbbing a bit. ";
		if the soreness of asshole is 5, say "feels sore. ";
		if the soreness of asshole is 6, say "feels sore most of the way inside. ";
		if the soreness of asshole is 7, say "feels sore, from the entrance to the deepest point inside you. ";
		if the soreness of asshole is 8, say "feels completely ruined. ";
		if the soreness of asshole is 9, say "has been ruined so hard, it feels like it's on fire! ";
		if the soreness of asshole is 10, say "has been completely destroyed by fuckings, you feel like you're about to faint!! ";
	otherwise:
		say "feels numb. ";
	if there is a lubricant covering asshole, say "It is dripping with slippery [lubricant]. ".

[!<SayAssholeModesty>+

REQUIRES COMMENTING

+!]
To say AssholeModesty:
	if asshole is lewdly exposed:
		if there is an ass covering clothing:
			let W be a random ass covering clothing;
			say "It is clearly visible through your [ShortDesc of W]. ";
		otherwise if asshole is not actually occupied:
			say "It is completely unprotected. ";
	otherwise:
		say "It [if asshole is at least partially exposed]is partially concealed by[otherwise]can't be seen thanks to[end if] the [ShortDesc of the at least partial concealer of asshole]. ";
	if asshole is actually occupied:
		let P be a random thing penetrating asshole;
		if P is monster:
			say "It is currently being pounded by [FuckerDesc of P].";
		otherwise:
			say "It is currently the [if the girth of P > the openness of asshole]snug [end if]home of [FuckerDesc of P].".

[!<SayRealGapeDesc>+

REQUIRES COMMENTING

+!]
To say RealGapeDesc:
	say "Your asshole is [AssGape real openness of asshole][if the player is possessing a vagina] and your pussy is [PussyGape real openness of vagina]".

Part 3 - Modify Asshole Stats


[!<GapeAssholeTimesNumber>+

REQUIRES COMMENTING

+!]
To gape (A - asshole) times (X - a number):
	now the previous openness of asshole is the openness of asshole;
	while X > 0:
		decrease X by 1;
		now keriax-mirror-flag is 1;
		if the analvirgin of the player is 1 and there is a live virginity taking thing penetrating asshole:
			now the analvirgin of the player is 0;
			now analvirginity-taker is a random live virginity taking thing penetrating asshole;
			say "[bold type]You just lost your anal virginity![roman type][line break]";
			if the player is male and the virgin of the player is 1:
				if the sex addiction of the player < 10 and the bimbo of the player < 10 and the humiliation of the player < HUMILIATION-SHAMELESS, now virgincursed is 2;
				otherwise now virgincursed is 3;
			progress quest of anal-virginity-quest;
		if the openness of asshole < 10:
			if the openness of asshole is 0:
				say "[first custom style][line break][one of]Eek... my asshole is being forced open![or]Ack. My ass is being forced open again![stopping][roman type][line break]";
			if the openness of asshole is 3:
				say "[first custom style][line break][one of]Shit... my asshole doesn't feel very tight any more...[or]Shit... my ass is losing its tightness again...[stopping][roman type][line break]";
			if the openness of asshole is 5:
				say "[variable custom style][line break][one of]I guess if I feel more open at least I'll be able to take things in my [asshole] easier...[or]My [asshole] is quite stretched now, so it should get sore less quickly.[stopping][roman type][line break]";
			if the openness of asshole is 7:
				say "[if the bimbo of the player < 8][line break][variable custom style][one of]Surely my [asshole] isn't permanently stretched this wide?! It'll close back up again soon, right?[or]Oh god, it's super stretched again![stopping][otherwise][line break][second custom style][line break][one of]My [asshole] feels permanently stretched, but that can only be a good thing.[or]My [asshole] feels like it can take anything again![stopping][end if][roman type][line break]";
			if the openness of asshole is 9:
				say "[if the bimbo of the player < 10][line break][variable custom style][one of]How it is even possible? My asshole is permanently stretched wider than my fist![or]I can't believe it is even possible to be gaped so wide![stopping][otherwise][line break][second custom style][line break][one of]My [asshole] is gaping wide, I'm so proud![or]I just love the feeling of having a permanently gaping wide [asshole]![stopping][end if][roman type][line break]";
			increase the openness of asshole by 1;
			now ruined is 2;
	if the player is female and the openness of asshole > the openness of vagina + 5 and there is a worn tattoo and a random number between 1 and 10 is 1 and asshole-cupid tattoo is drawable:
		summon asshole-cupid tattoo;
		say "Your skin stings with pain as a Cupid tattoo is suddenly burned onto your butt, pointing at your [asshole]![line break][variable custom style][if the player is not a pervert]No no, I'm not a butt slut![otherwise if the anal sex addiction of the player < 7]It's saying I prefer anal sex to normal sex?[otherwise]Ooh yes that's right, anal sex is the best sex![end if][roman type][line break]";
	if transGender is 1, now virgincursed is 0;
	if virgincursed > 1:
		if virgincursed is 2:
			say "[bold type]You realise that losing your anal virginity is made even more shameful by the fact that you have yet to lose your REAL virginity. You've been fucked before you fucked anyone else! [roman type]The realisation crushes your spirit and your body shivers involuntarily. The game seems to detect these feelings and you feel ";
			if the size of penis > min penis size:
				PenisDown 1;
				say "your penis [Shrink] into a [ShortDesc of penis]. ";
			otherwise:
				say "cursed! "; [###Selkie: but this is a lie, right? There's actually no consequence?]
			say "Something tells you that until you have real, dominant sex, you are going to keep being punished by the game, spiralling towards a fucktoy plaything for the monsters of this world...[roman type][line break]";
		otherwise:[i thought it was weird you would sometimes not a message like this on losing your anal virginity first, so I wrote this to clarify things.]
			say "[bold type]You realise you've been fucked before you fucked anyone else, and [if the bimbo of the player < 10]surprisingly[otherwise]unsurprisingly[end if], you already feel yourself accepting it. [line break][variable custom style]'Anal is probably way better anyway. Who cares?'[roman type][line break]";
			if the size of penis > min penis size:
				PenisDown 1;
				say "The game seems to detect these feelings, and you feel your penis [Shrink] into a [ShortDesc of penis].";
		now virgincursed is 1.

[!<AssClose>+

REQUIRES COMMENTING

+!]
To Assclose (X - a number):
	now the previous openness of asshole is the openness of asshole;
	if the latex-transformation of the player > 2, now X is 0;
	while X > 0:
		decrease X by 1;
		if the openness of asshole > 0:
			if the number of things filling asshole > 0:[We force out any existing item when the player tightens up.]
				let I be a random insertable thing penetrating asshole;
				if I is an insertable thing and the openness of asshole + 1 < the girth of I:
					say "Your [printed name of I] shoots out of your [asshole] with some force[run paragraph on]";
					if there is worn total protection clothing:
						if there is a worn possession total protection clothing:
							say ", phasing through your [printed name of a random worn possession total protection clothing]!";
							repeat with C running through worn total protection clothing:
								if C is fluid vulnerable and C is not possession:
									if a random number between 1 and the number of worn possession clothing is 1, now the magic-type of C is possession;[Possessed items will protect your clothing, because it gets hairy to describe only one of 2-3 items not getting ripped. To compensate, the possession has a chance to "spread"]
						otherwise:
							say ", ripping through your [printed name of random worn total protection clothing]!";
							repeat with C running through worn total protection clothing:
								if C is overdress or C is trousers:
									if C is zippable, ZipDown C;
									otherwise now C is crotch-ripped;
								otherwise:[no zippable knickers yet]
									destroy C;
					otherwise:
						say ".";
					dislodge I;
					now I is in the location of the player;
				otherwise if I is an insertable thing:
					decrease the openness of asshole by 1;[in the next clause we assume anything penetrating the player is a monster, so we leave the player untightened.]
			if the number of things filling asshole is 0, decrease the openness of asshole by 1.[if this isn't 0, it wasn't an item, so we leave it in.]


Asshole ends here.

