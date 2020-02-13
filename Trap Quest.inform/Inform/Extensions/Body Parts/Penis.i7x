Penis by Body Parts begins here.

Part 1 - Definitions

[!<Penis>@

REQUIRES COMMENTING

@inherits <BodyPart>

@!]
penis is a body part. penis is everywhere. The text-shortcut of penis is "penis".
To say FullExamineDesc of (B - penis):
	say "[if the player is male][TotalDesc of penis][PenisModesty][otherwise]You don't have a penis.[end if]".

Understand "prick", "willy", "pecker", "clitty", "noodle", "dickie", "winky", "weeny", "cock", "dick", "bellend", "dong", "johnson", "wang", "weiner" as penis.

[!<Penis>@<size:Integer>*

REQUIRES COMMENTING

*@!]
penis has a number called size. the size of penis is usually 0.

[!<Penis>@<realSize:Integer>*

REQUIRES COMMENTING

*@!]
penis has a number called real size. The real size of penis is usually 0.

[!<Penis>@<rawness:Integer>*

Factored in for masturbation-related scenes.

*@!]
penis has a number called rawness. The rawness of penis is usually 0.

To decide which number is the max-rawness of (P - penis):
	let X be the size of penis;
	if there is a worn focus band, increase X by 2;
	let P be a random worn insertable thing penetrating asshole;
	if P is clothing and P is suppression, increase X by 1;
	if the player is horny, decrease X by 1;
	if the player is very horny, decrease X by 2;
	if the player is extremely horny, decrease X by 2;
	decide on X.

To RawUp (P - penis):
	increase the rawness of penis by 1.

To decide which number is sexual-penis-length:
	if there is a worn strapon-panties:
		let C be a random worn strapon-panties;
		if the size of penis < the strap-length of C or C is gem-strapon or C is demon codpiece, decide on the strap-length of C;
	decide on the size of penis.

To say sexual-player-penis:
	if there is a worn strapon-panties:
		say ShortPenisFlav of a random worn strapon-panties;
	otherwise:
		say player-penis.

[!<PenisIsTiny>+

REQUIRES COMMENTING

+!]
Definition: penis is tiny if the size of penis > 0 and the size of penis < 4.


[!<PenisIsLewdlyExposed>+

REQUIRES COMMENTING

+!]
Definition: penis is lewdly exposed if penis is exposed.

To decide which number is the lewdly exposed outrage of (P - penis):
	decide on 11 - (the size of penis / 2). [allows us to easily tweak this number]

[!<PenisIsAtLeastPartiallyLewdlyExposed>+

REQUIRES COMMENTING

+!]
Definition: penis is at least partially lewdly exposed if penis is at least partially exposed.

To decide which number is the at least partially lewdly exposed outrage of (P - penis):
	decide on 8 - (the size of penis / 2). [allows us to easily tweak this number]

[!<PenisIsExposed>+

REQUIRES COMMENTING

+!]
Definition: penis is exposed:
	if the size of penis <= 0, decide no;
	if the at least partial concealer of penis is a thing, decide no;
	decide yes.

[!<PenisIsAtLeastPartiallyExposed>+

REQUIRES COMMENTING

+!]
Definition: penis is at least partially exposed:
	if the size of penis <= 0, decide no;
	if the concealer of penis is a thing, decide no;
	decide yes.

[!<ClothingIsPotentiallyPenisCovering>+

REQUIRES COMMENTING

+!]
Definition: a clothing (called C) is potentially penis covering:[does not check if penis is visible, only if it is covered by something.]
	if C is potentially pussy covering clothing:
		if penis is not penis-erect:[when your penis is soft, certain clothing will still cover a penis that wouldn't fit when hard]
			if the size of penis > 3 and the penis-capacity of C >= 3, decide yes;
		if the size of penis <= the penis-capacity of C, decide yes;
	if C is skirted clothing:
		if the number of worn crotch-in-place undies > 0, decide yes;[your penis is propped up, so it's concealed by all skirts.]
		if C is not super-short and C is not short, decide yes;[long skirts protect against exposure]
		if the player is upright and C is not super-short and the size of penis < 4, decide yes; [short skirts protect against exposure as long as you're standing and have a small penis]
	decide no.

[!<ClothingIsPotentiallyPenisCovering>+

REQUIRES COMMENTING

+!]
Definition: a clothing (called C) is potentially at least partially penis covering:[does not check if penis is visible, only if it is covered by something.]
	if C is potentially pussy covering clothing:
		if there is a worn chastity cage:
			if the size of penis > 3 and the penis-capacity of C >= 1, decide yes;[when you're in chastity, certain clothing can still cover a penis that otherwise wouldn't fit]
		if the size of penis <= the penis-capacity of C + 3, decide yes; [as long as not more than 3 inches are showing we say it's partially covered]
	if C is skirted clothing:
		if the number of worn crotch-in-place undies > 0, decide yes;[your penis is propped up, so it's concealed by all skirts.]
		if C is not super-short and C is not short, decide yes; [long skirts protect against exposure]
		if the player is upright and C is not super-short, decide yes; [short skirts partially protect against exposure as long as you're standing]
	decide no.

[!<ClothingIsActuallyPenisCovering>+

REQUIRES COMMENTING

+!]
Definition: a clothing (called C) is actually penis covering:
	unless C is potentially penis covering, decide no;
	if C is actually dense, decide yes;
	decide no.

[!<ClothingIsActuallyAtLeastPartiallyPenisCovering>+

REQUIRES COMMENTING

+!]
Definition: a clothing (called C) is actually at least partially penis covering:
	unless C is potentially at least partially penis covering, decide no;
	if C is not see-through, decide yes;
	decide no.

[Highest level penis concealer]
To decide which object is the concealer of (P - penis):
	repeat with C running through worn actually penis covering clothing:
		let this-one be 1;
		repeat with D running through worn actually penis covering clothing:
			if the bottom-layer of D > the bottom-layer of C, now this-one is 0;
		if this-one is 1, decide on C;
	decide on nothing.

[Highest level penis partial concealer]
To decide which object is the at least partial concealer of (P - penis):
	repeat with C running through worn actually at least partially penis covering clothing:
		let this-one be 1;
		repeat with D running through worn actually at least partially penis covering clothing:
			if the bottom-layer of D > the bottom-layer of C, now this-one is 0;
		if this-one is 1, decide on C;
	decide on nothing.



[!<DecideWhichNumberIsMinPenisSize>+

REQUIRES COMMENTING

+!]
To decide which number is min penis size:
	if min penis size points is 0, decide on diaper quest;
	decide on min penis size points + diaper quest + micro-choice.

Section 2 - Erections

penis has a number called penis-obedience. The penis-obedience of penis is 1.

To PenisObedienceUp (X - a number):
	while X > 0:
		if the penis-obedience of penis is 10:
			now X is 0;
		otherwise:
			increase the penis-obedience of penis by 1;
			if X is 1:[i.e. this is the final change]
				if the penis-obedience of penis < 4:[player questions what its like to be on top]
					say "[first custom style][one of]I guess sex can still feel good if you're not in control. Its not like its required or anything.[or]Normally, I like to do the fucking, so just laying back for a change is pretty refreshing.[or]I don't really need to be on top ALL the time. Its fine to let someone else have a turn.[in random order][roman type][line break]";
				otherwise if the penis-obedience of penis < 7:[player decides they prefer not to be doing the fucking]
					say "[variable custom style][one of]If you think about it, my penis isn't really for my pleasure anyway.[or]Honestly, being on top is kind of overrated.[or]I don't mind not being on top. After all, I'm lucky I get to have sex at all.[in random order][roman type][line break]";
				otherwise if the penis-obedience of penis < 10:[orgasms are overrated.]
					say "[variable custom style][one of]I go soft after just one orgasm, so why even have one? After all, my only job is to stay hard for my partner.[or]Ejaculating is just a bonus. The important thing is if your penis can make someone *else* cum.[or]I've always thought [semen] made a huge mess. Its so much more convenient if I don't cum at all.[in random order][roman type][line break]";
				otherwise:[10(max)]
					say "[variable custom style][one of]My penis is for pleasure, but not my pleasure. Its just a toy to be used.[or]My penis was always a toy to be used. All I realized was that it's meant to be used by someone else.[in random order][roman type][line break]";
		decrease X by 1.


[Whenever an npc abuses your penises, it has a chance of increasing your 'obedience' value.

Normally, your penis has a chance of getting erect when you're aroused, depending on sex addiction and how recent your last orgasm was.
Additionally, you can get erect on command. This is also easier or harder depending on sex addiction and your most recent orgasm.

Your obedience level will inhibit you from getting erect randomly, and make it harder to get erections on command.
Instead, you will only be able to get erect when monsters tell you to get erect.
]

penis can be penis-erect or not penis-erect. penis is not penis-erect.

[Some things prevent the player from getting erections]
Definition: penis is able to get erect:
	if the size of penis is 0, decide no;
	if the player is female, decide no;
	if penis is penis-erect, decide yes;
	if there is a worn chastity cage, decide no;
	if there is a worn restricting research airhancer, decide no;
	if refactoryperiod > 0, decide no;[except in special circumstances, you can't get hard immediately after an orgasm]
	decide yes.

[There is a chance the player will want to get erect, but won't be able to manage. This is a little humiliating, but they should usually be able to try again.]
Definition: penis is erect-at-will:
	if penis is not able to get erect, decide no;
	if the player is extremely horny, decide yes;
	let A be 1;
	if the player is a bit horny, increase A by 1;[You get erect easier if you are horny]
	if the player is horny, increase A by 1;
	if the player is very horny, increase A by 1;
	increase A by the size of penis;[if you're bigger, its easier to get erect]
	let D be 0;
	if the wanktime of the player > 0, decrease D by the wanktime of the player / 5;[if you came recently, its harder to get an erection]
	decrease D by the penis-obedience of penis;[if you haven't been told to get an erection, it may be harder]
	decrease D by the anal sex addiction of the player / 2;[your addiction to anal sex also interferes with your erections]
	let R be a random number between A and D;
	if R < -1, decide no;
	decide yes.

[NPCs can demand the player get an erection (usually for sex). Sometimes the player won't be able to get hard at all, which is a little humiliating, and may earn a different sort of punishment]
Definition: penis is erect-on-request:
	if penis is not able to get erect, decide no;
	if the player is extremely horny, decide yes;
	if the penis-obedience of penis is 10, decide yes;
	let A be 1;
	if the player is horny, increase A by 1;
	if the player is very horny, increase A by 1;
	increase A by the size of penis;
	increase A by the penis-obedience of penis - 1;[now that the player is being asked to get hard, obedience contributes rather than hinders]
	let D be 0;
	if the wanktime of the player > 0, decrease D by the wanktime of the player / 5;
	decrease D by the anal sex addiction of the player / 2;
	let R be a random number between A and D;
	if R < -1, decide no;
	decide yes.

[Whenever the player gains arousal for the turn, they have a chance of getting an erection]
To compute sudden erection chance (X - a number):
	if penis is penis-erect or penis is not able to get erect or the penis-obedience of penis is 10:
		do nothing;
	otherwise:
		let M be 1;
		if the player is a bit horny, increase M by 1;
		if the player is horny, increase M by 1;
		if the player is very horny, increase M by 1;
		decrease M by the anal sex addiction of the player / 3;
		decrease M by (the penis-obedience of penis - 1) / 3;
		if the wanktime of the player > 0, decrease M by the wanktime of the player / 5;
		let A be (X / 100) * M;
		if a random number between 1 and A > 150 or the player is extremely horny or X > 1000:
			let K be a random worn potentially penis covering knickers;
			let S be a random worn potentially penis covering skirted clothing;
			now penis is penis-erect;
			say "[line break]";
			if K is clothing and K is not potentially penis covering:[meaning, something changed when the player got hard]
				say "Your [ShortDesc of penis] [one of]hardens[or]stiffens[or]grows[at random] into an erection, pushing up and out of the waist of your [ShortDesc of K].[line break]";
			otherwise if S is clothing and S is potentially penis covering:
				if S is not potentially penis covering:
					say "Your [ShortDesc of penis] [one of]hardens[or]stiffens[or]grows[at random] into a very obvious erection, poking out from underneath your skirt.";
				otherwise if K is clothing:
					say "Your feel your [ShortDesc of penis] [one of]hardening[or]stiffening[or]growing[at random] into an erection, but thanks to your [ShortDesc of K], it remains concealed under your skirt.";
				otherwise:
					if the size of penis > 3:
						say "Your [ShortDesc of penis] [one of]hardens[or]stiffens[or]grows[at random] into an erection, which forms a very obvious tent under your skirt.";
					otherwise:
						say "Your [ShortDesc of penis] [one of]hardens[or]stiffens[or]grows[at random] into an erection, which is thankfully not very obvious thanks to your skirt.";
			otherwise:
				if K is clothing:
					if the size of penis > 3:
						say "[line break]Your [ShortDesc of penis] [one of]hardens[or]stiffens[or]grows[at random] into an erection, which forms a very obvious tent in your [ShortDesc of K].";
					otherwise:
						say "[line break]You feel your [ShortDesc of penis] [one of]hardening[or]stiffening[or]growing[at random] into an erection, which is thankfully not obvious thanks to your [ShortDesc of K].";
				otherwise if the size of penis > 3:
					say "[line break]Your [ShortDesc of penis] [one of]hardens[or]stiffens[or]grows[at random] into a very obvious erection.";
				otherwise:
					say "[line break]Your [ShortDesc of penis] [one of]hardens[or]stiffens[or]grows[at random] into a very embarassing, albeit subtle, erection.".

[Whenever the player cools off from arousal, they will lose their erection]
To compute erection decay:
	if condom of kings is worn and condom of kings is uncursed, do nothing;
	if ghost-strapon is worn and the size of penis < the strap-length of ghost-strapon, do nothing;
	say "[line break]Your [ShortDesc of penis] softens.[line break]";
	now penis is not penis-erect.

Part 2 - Description

[!<SayShortDescOfPenis>+

REQUIRES COMMENTING

+!]
To say ShortDesc of (P - penis):
	say PenisFlavour (the size of penis).

[!<SaySexDescOfPenis>+
To be used when we potentially want to refer to a "feminine penis"
+!]
To say SexDesc of (P - penis):
	if there is a worn strapon-panties:
		say PenisFlavour of a random worn strapon-panties;
	otherwise:
		if the player is female, say "[vagina]";[shouldn't happen]
		otherwise say PenisFlavour (the size of penis).

[!<SayMediumDescOfPenis>+

Less brief details (size, exposure)

+!]
To say MediumDesc of (P - penis):
	say "[if penis is lewdly exposed]fully exposed [otherwise if penis is at least partially lewdly exposed]slightly visible [otherwise if penis is not exposed]concealed [end if][ShortDesc of penis]".

[!<SayRealDescOfPenis>+

REQUIRES COMMENTING

+!]
To say RealDesc of penis:
	say "[PenisFlavour the real size of penis]".

[!<SayRealPenisDesc>+

REQUIRES COMMENTING

+!]
To say RealPenisDesc:
	say RealDesc of penis.

[!<SayPenisFlavourNumber>+

REQUIRES COMMENTING

+!]
To say PenisFlavour (N - a number):
	if N is 0:
		say "barbie doll style lack of genitalia";
	otherwise:
		if N is 1, say "[PenisSizeFlav N], [PenisShaftFlav N]";
		otherwise say "[PenisSizeFlav N] [PenisShaftFlav N]".

[!<SayPenisSizeFlavNumber>+

REQUIRES COMMENTING

+!]
To say PenisSizeFlav (N - a number):
	if N is 1, say "less than 1 inch";
	if N is 2, say "1 inch";
	if N is 3, say "worthless 3 inch";
	if N is 4, say "tiny 4 inch";
	if N is 5, say "small 5 inch";
	if N is 6, say "average 6 inch";
	if N is 7, say "above average 7 inch";
	if N is 8, say "large 8 inch";
	if N is 9, say "giant 10 inch";
	if N is 10, say "huge 12 inch";[natural max]
	if N is 11, say "massive 15 inch";
	if N > 11, say "ridiculously huge 20 inch".

[!<SayPenisShaftFlavNumber>+

REQUIRES COMMENTING

+!]
To say PenisShaftFlav (N - a number):
	if N is 1, say "clitoris-like pee pee";
	if N is 2, say "micropenis";
	if N is 3, say "pecker";
	if N is 4, say "willy";
	if N is 5, say "dick";
	if N is 6, say "prick";
	if N is 7, say "cock";
	if N is 8, say "dong";
	if N is 9, say "tool";[10]
	if N > 9, say "monster".[12, 15, 20. 12 is natural max]

[!<SaySexShaft>+

REQUIRES COMMENTING

+!]
To say SexShaft:
	let S be a random worn strapon-panties;
	if S is clothing:
		say ShaftDesc of S;
	otherwise:
		say "shaft".

[!<SayTotalDescOfPenis>+

REQUIRES COMMENTING

+!]
To say TotalDesc of penis:
	if the size of penis > 0:
		if there is worn chastity cage:
			say "Your [ShortDesc of penis] and [ShortBallsDesc] are kept soft and locked away inside a chastity cage. ";
		otherwise if there is pussy covering clothing:
			say "You have a[if penis is penis-erect]n erect[end if] [ShortDesc of penis] and [ShortBallsDesc]. ";
		otherwise:
			if penis is penis-erect, say "Your [one of]erect[or]hard[or]stiff[at random] [ShortDesc of penis] stands at attention, and your [ShortBallsDesc] [if the size of penis > 5]sway freely[otherwise if the size of penis > 3]hang freely[otherwise]are barely noticeable[end if]. ";
			otherwise say "Your soft [ShortDesc of penis] and [ShortBallsDesc] [if the size of penis > 5]sway freely. [otherwise if the size of penis > 3]hang freely. [otherwise]are barely noticeable. [end if]";
	otherwise if the player is male:
		say "A doll-like flat mound exists where your penis used to be. [if watersports fetish is 1 or diaper lover >= 1]There's just a tiny hole to allow you to pee.[end if]".

[!<SayShortBallsDesc>+

REQUIRES COMMENTING

+!]
To say ShortBallsDesc:
	if the size of penis < 3:
		say "internal testicles";
	otherwise if the size of penis < 5:
		say "small, tight ball sac";
	otherwise if the size of penis < 7:
		say "average scrotum";
	otherwise:
		say "heavy, full balls".

[!<SayPenisModesty>+

REQUIRES COMMENTING

+!]
To say PenisModesty:
	if penis is at least partially exposed:
		let W be the at least partial concealer of penis;
		if W is clothing:
			say "It is [if penis is exposed]clearly[otherwise]partially[end if] visible [if W is actually dense]poking out of[otherwise]through[end if] your [ShortDesc of W]. ";
		otherwise:
			say "You have no clothing covering it. ";
	otherwise if the size of penis > 0:
		let W be the concealer of penis;
		say "It can't be seen thanks to the [ShortDesc of W]. ".

Part 3 - Modify Penis Stats


previous penis length is a number that varies.

To PenisUp (X - a number):
	if the player is female, now X is 0;
	now previous penis length is the size of penis;
	if cumlust tattoo is worn:
		SemenTasteAddictUp X;
		now X is 0;
	if fast tg is 3, now X is -1; [no text flavour]
	if bitch tattoo is worn, now X is X / 2;
	if X is 0:
		say "[if the player is male]Your [manly-penis] can't seem to grow any larger![end if]";
	while X > 0:
		decrease X by 1;
		if the size of penis < 10:
			increase the size of penis by 1;
			if the size of penis is 8, cutshow figure of body reaction 3 for penis;
			if the size of penis is 9, cutshow figure of body reaction 8 for penis;
			if the size of penis is 10, cutshow figure of body reaction 9 for penis;
			say "You feel your penis grow into a [ShortDesc of penis]!";
		otherwise:
			dignify 50;
			if X is 0, say "Your monster of a [manly-penis] can't seem to grow any larger! You feel like a stud!";
	let C be a random worn strapon-panties;
	if C is clothing and previous penis length < the strap-length of C and the size of penis >= the strap-length of C:
		say PenisHarden of C.

Shrink is a text that varies. Shrink is "shrink".

[X is not how much the penis shrinks, but how many times it does so]
To PenisDown (X - a number):
	now previous penis length is the size of penis;
	let flav-said be 0;
	while X > 0:
		decrease X by 1;
		if the size of penis > min penis size:
			let R be a random number from 1 to (the pregnancy rate of the player + TG fetish);
			decrease the size of penis by a random number from 1 to R;
			if the size of penis <= 4 and the size of penis > 1 and previous penis length > 4, cutshow figure of body reaction 4 for penis;
		otherwise if the player is male and the size of penis is 0 and previous penis length is 0:
			say "You feel a strange pang in your crotch... you feel that your penis tried to shrink even further, but since you have nothing left, it can't!";
			now X is 0;
	if the size of penis < min penis size, now the size of penis is min penis size;
	if the size of penis <= 0 and previous penis length > 0:
		let C be a random worn chastity cage;
		cutshow figure of body reaction 4 for penis;
		if C is a thing:
			say "Your [C] drops off and falls to the floor.";
			now C is in the location of the player;
	let C be a random worn strapon-panties;
	if C is clothing and previous penis length >= the strap-length of C and the size of penis < the strap-length of C:
		say PenisSoften of C;
	if previous penis length > the size of penis + 2:
		now Shrink is "shrivel";
	otherwise:
		now Shrink is "shrink".



Penis ends here.

