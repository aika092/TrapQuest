Penis by Body Parts begins here.

Part 1 - Definitions

[!<Penis>@

The player's penis.

@inherits <BodyPart>

@!]
penis is a body part. penis is everywhere. The text-shortcut of penis is "penis".
To say FullExamineDesc of (B - penis):
	say "[if the player is male][ImageDesc of penis][TotalDesc of penis][PenisModesty][otherwise]You don't have a penis.[end if]".

Understand "prick", "willy", "pecker", "clitty", "noodle", "dickie", "winky", "weeny", "cock", "dick", "bellend", "dong", "johnson", "wang", "weiner" as penis.

[!<Penis>@<size:Integer>*

Describes the player's penis size inside the game. Usually, but not always corresponds to penis length. Affects success rate during dominant sex.

*@!]
penis has a number called size. the size of penis is usually 0.

[!<Penis>@<realSize:Integer>*

Describes the player's penis size in real life. Unlike other real-life values, this one doesn't prevent the player's penis from getting bigger

*@!]
penis has a number called real size. The real size of penis is usually 0.

[!<Penis>@<rawness:Integer>*

Describes how close to orgasm the player's penis is.

*@!]
penis has a number called rawness. The rawness of penis is usually 0.
penis has a number called previous rawness.

[!<Penis>@<rawness:Integer>*

Describes how close to orgasm the player's penis is.

*@!]
To decide which number is the max-rawness of (P - penis):
	let X be the size of penis;
	if there is a worn focus band, increase X by 2;
	let P be a random worn insertable thing penetrating asshole;
	if P is clothing and P is suppression, increase X by 1;
	if the player is horny, decrease X by 1;
	if the player is very horny, decrease X by 2;
	if the player is extremely horny, decrease X by 2;
	decide on X * 10.

[!<RawUpPenis>+

Increases the rawness value of penis. Should be called whenever the player's penis receives strong stimulation.

@param <Penis>:<P> The player's penis
+!]

To RawUp (P - penis):
	if the rawness of penis < the max-rawness of penis, increase the rawness of penis by 10.

To RawDown (P - penis):
	if the rawness of penis > 0, decrease the rawness of penis by 1.

[!<DecideWhichNumberIsSexualPenisLength>+

Outputs either the player's strapon length or penis length. Used mainly for dominant sex.

@return <Number> A larger value means a bigger phallus.
+!]
To decide which number is sexual-penis-length:
	if there is a worn strapon-panties:
		let C be a random worn strapon-panties;
		if the size of penis < the strap-length of C or C is gem-strapon or C is demon codpiece, decide on the strap-length of C;
	decide on the size of penis.

[!<SaySexualPlayerPenis>+

Outputs a one or two word description for the player's penis or strapon. Used mainly for dominant sex.

@return <Number> A larger value means a bigger phallus.
+!]
To say sexual-player-penis:
	if there is a worn strapon-panties:
		say ShortPenisFlav of a random worn strapon-panties;
	otherwise:
		say player-penis.

[!<PenisIsTiny>+

REQUIRES COMMENTING

+!]
Definition: penis is tiny if the player is possessing a penis and the size of penis < 4.

[!<PenisIsLewdlyExposed>+

Determines whether the player's penis is exposed in a provocative way.

+!]
Definition: penis is lewdly exposed if penis is exposed.

To decide which number is the lewdly exposed outrage of (P - penis):
	decide on 11 - (the size of penis / 2). [allows us to easily tweak this number]

[!<PenisIsAtLeastPartiallyLewdlyExposed>+

Determines whether the player's penis is partially exposed in a provocative way.

+!]
Definition: penis is at least partially lewdly exposed if penis is at least partially exposed.

To decide which number is the at least partially lewdly exposed outrage of (P - penis):
	decide on 8 - (the size of penis / 2). [allows us to easily tweak this number]

[!<PenisIsExposed>+

Determines whether penis is concealed, not if it is covered by something.

+!]
Definition: penis is exposed:
	if the player is not possessing a penis, decide no;
	if the at least partial concealer of penis is a thing, decide no;
	decide yes.

[!<PenisIsAtLeastPartiallyExposed>+

Determines whether penis is partially concealed.

+!]
Definition: penis is at least partially exposed:
	if the player is not possessing a penis, decide no;
	if the concealer of penis is a thing, decide no;
	decide yes.

[When penis-capacity is exceeded, the player can still conceal their junk, but there's a chance of wardrobe malfunctions.]

[!<ClothingIsPotentiallyPenisCovering>+

Determines whether a piece of clothing can cover the player's penis. Does NOT check if penis is visible, only if it is covered.

@param <Clothing>:<C> The clothing that potentially covers the player's penis

+!]
Definition: a clothing (called C) is potentially penis covering:
	if C is skirted crotch-in-place clothing:
		if there is pussy covering unskirted clothing, decide yes; [your penis is propped up, so it's concealed by all skirts.]
		if the size of penis <= the penis-capacity of C, decide yes; [if the skirt is long enough, it protects you]
	otherwise if C is potentially pussy covering clothing:
		if the size of penis <= the penis-capacity of C, decide yes;
	decide no.

Definition: a clothing (called C) is potentially erection concealing:
	if C is skirted crotch-in-place clothing and there is pussy covering unskirted clothing, decide yes; [your penis is propped up, so it's concealed by all skirts.]
	decide no.
Definition: a diaper is potentially erection concealing: decide yes.

Definition: a clothing is potentially penis concealing if it is actually dense and it is potentially penis covering and (penis is not penis-erect or the size of penis < 3 or it is potentially erection concealing).
Definition: a clothing is potentially at least partially penis concealing if it is not see-through and it is potentially penis covering.

[!<DecideWhichObjectIsTheConcealerOfPenis>+

Determines which object is concealing the player's penis at the highest level.

@return <Object> The object that is concealing penis. If this function returns nothing, it means there is no concealer.

+!]
To decide which object is the concealer of (P - penis):
	if water-fountain is penetrating asshole, decide on water-fountain;
	repeat with C running through worn potentially penis concealing clothing:
		let this-one be 1;
		repeat with D running through worn potentially penis concealing clothing:
			if the bottom-layer of D > the bottom-layer of C, now this-one is 0;
		if this-one is 1, decide on C;
	decide on nothing.

[!<DecideWhichObjectIsTheConcealerOfPenis>+

Determines which object is partially concealing the player's penis at the highest level.

@return <Object> The object that is concealing penis. If this function returns nothing, it means there is no concealer.

+!]
To decide which object is the at least partial concealer of (P - penis):
	if water-fountain is penetrating asshole, decide on water-fountain;
	if the player is upright and gloryhole is grabbing the player, decide on gloryhole;
	if vagina is listed in the armUses of arms, decide on arms;
	repeat with C running through worn potentially at least partially penis concealing clothing:
		let this-one be 1;
		repeat with D running through worn potentially at least partially penis concealing clothing:
			if the bottom-layer of D > the bottom-layer of C, now this-one is 0;
		if this-one is 1, decide on C;
	decide on nothing.

[!<DecideWhichNumberIsMinPenisSize>+

Outputs the player's minimum penis size

@returns <Number> The smallest size penis the player can have during the playthrough, aside from being female

+!]
To decide which number is min penis size:
	if min penis size points is 0, decide on diaper quest;
	decide on min penis size points + diaper quest + micro-choice.

[!<PlayerIsPossessingPenis>

REQUIRES COMMENTING

+!]
Definition: yourself is possessing a penis:
	if the size of penis > 0, decide yes;
	decide no.

[!<PlayerIsReallyPossessingPenis>

REQUIRES COMMENTING

+!]
Definition: yourself is really possessing a penis:
	if the real size of penis > 0, decide yes;
	decide no.

Section 2 - Erections

penis has a number called penis-obedience. The penis-obedience of penis is 1.

To PenisObedienceUp (X - a number):
	while X > 0:
		if the penis-obedience of penis is 10:
			now X is 0;
		otherwise:
			increase the penis-obedience of penis by 1;
			if X is 1:[i.e. this is the final change]
				if the penis-obedience of penis < 4:[player questions what it's like to be on top]
					say "[first custom style][one of]I guess sex can still feel good if you're not in control. It's not like it's required or anything.[or]Normally, I like to do the fucking, so just laying back for a change is pretty refreshing.[or]I don't really need to be on top ALL the time. It's fine to let someone else have a turn.[in random order][roman type][line break]";
				otherwise if the penis-obedience of penis < 7:[player decides they prefer not to be doing the fucking]
					say "[variable custom style][one of]If you think about it, my penis isn't really for my pleasure anyway.[or]Honestly, being on top is kind of overrated.[or]I don't mind not being on top. After all, I'm lucky I get to have sex at all.[in random order][roman type][line break]";
				otherwise if the penis-obedience of penis < 10:[orgasms are overrated.]
					say "[variable custom style][one of]I go soft after just one orgasm, so why even have one? After all, my only job is to stay hard for my partner.[or]Ejaculating is just a bonus. The important thing is if your penis can make someone *else* cum.[or]I've always thought [semen] made a huge mess. It's so much more convenient if I don't cum at all.[in random order][roman type][line break]";
				otherwise:[10(max)]
					say "[variable custom style][one of]My penis is for pleasure, but not my pleasure. It's just a toy to be used.[or]My penis was always a toy to be used. All I realised was that it's meant to be used by someone else.[in random order][roman type][line break]";
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
	if the player is not possessing a penis, decide no;
	if penis is penis-erect, decide yes;
	if there is a worn chastity cage, decide no;
	if there is a worn restricting research airhancer, decide no;
	if refractoryperiod > 0, decide no;[except in special circumstances, you can't get hard immediately after an orgasm]
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
	if the wanktime of the player > 100, decrease D by the wanktime of the player / 5;[if you came recently, its harder to get an erection]
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
	if the wanktime of the player > 100, decrease D by the wanktime of the player / 5;
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
		if the wanktime of the player > 100, decrease M by the wanktime of the player / 5;
		now X is X / 100;
		let A be X * M;
		let R be a random number between 1 and A;
		if debuginfo > 1, say "[input-style]Erection chance: [if the player is extremely horny]Automatic; extremely horny[otherwise if X > 10]Automatic; arousal gain over 1000[otherwise]([M]) * arousal factor ([X]) = [A]; d[A] = ([R]) | (150.5) erection threshold[end if][roman type][line break]";
		if X > 10 or the player is extremely horny or R > 150:
			let K1 be a random worn potentially penis covering unskirted clothing;
			let K2 be a random worn potentially penis concealing unskirted clothing;
			let S1 be a random worn potentially penis covering skirted clothing;
			let S2 be a random worn potentially penis concealing skirted clothing;
			now penis is penis-erect;
			say "[line break]";
			if penis is exposed:
				if the size of penis > 3:
					say "[line break]Your [ShortDesc of penis] [harden]s into a very obvious erection.";
				otherwise:
					say "[line break]Your [ShortDesc of penis] [harden]s into a very embarrassing, albeit subtle, erection.";
			otherwise if penis is at least partially exposed:
				if S2 is clothing:
					if S2 is potentially erection concealing:
						say "Your [ShortDesc of penis] [harden]s into an erection, which is thankfully not very obvious thanks to your [ShortDesc of S2].";
					otherwise:
						say "Your [ShortDesc of penis] [harden]s into an erection, which forms a very obvious tent under your [ShortDesc of S2].";
				otherwise if K2 is clothing:
					if K2 is potentially erection concealing:
						say "[line break]You feel your [ShortDesc of penis] [harden]ing into an erection, which is thankfully not obvious thanks to your [ShortDesc of K2].";
					otherwise:
						say "[line break]Your [ShortDesc of penis] [harden]s into an erection, which forms a very obvious tent in your [ShortDesc of K2].";
				otherwise if S1 is clothing:
					say "Your [ShortDesc of penis] [harden]s into an erection, still visible through your [ShortDesc of S1][if K1 is clothing] and [ShortDesc of K1][end if].";
				otherwise if K1 is clothing:
					say "Your [ShortDesc of penis] [harden]s into an erection, still visible through your [ShortDesc of K1].";
			otherwise:
				if S2 is clothing:
					let K3 be a random pussy covering unskirted clothing;
					say "Your feel your [ShortDesc of penis] [harden]ing into an erection, but [if K3 is knickers]thanks to your [ShortDesc of K3], [end if]it remains concealed under your [ShortDesc of S2].";
				otherwise:
					let K3 be a random worn potentially penis concealing clothing;
					say "Your feel your [ShortDesc of penis] [harden]ing into an erection[if K3 is clothing], still concealed under your [ShortDesc of K3][end if].".

[Whenever the player cools off from arousal, they will lose their erection]
To compute erection decay:
	if condom of kings is worn and condom of kings is uncursed, do nothing;
	if ghost-strapon is worn and the size of penis < the strap-length of ghost-strapon, do nothing;
	say "[line break][bold type]Your [ShortDesc of penis] softens.[roman type][line break]";
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
		say "Barbie doll style lack of genitalia";
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
	if the player is possessing a penis:
		if there is worn chastity cage:
			say "Your [ShortDesc of penis] and [ShortBallsDesc] are kept soft and locked away inside a chastity cage. ";
		otherwise if there is pussy covering clothing:
			say "You have a[if penis is penis-erect]n erect[end if] [ShortDesc of penis] and [ShortBallsDesc]. ";
		otherwise:
			if penis is penis-erect, say "Your [one of]erect[or]hard[or]stiff[at random] [ShortDesc of penis] stands at attention, and your [ShortBallsDesc] [if the size of penis > 5]sway freely[otherwise if the size of penis > 3]hang freely[otherwise]are barely noticeable[end if]. ";
			otherwise say "Your soft [ShortDesc of penis] and [ShortBallsDesc] [if the size of penis > 5]sway freely. [otherwise if the size of penis > 3]hang freely. [otherwise]are barely noticeable. [end if]";
	otherwise if the player is male:
		say "A doll-like flat mound exists where your penis used to be[if watersports mechanics is 1]. There's just a tiny hole to allow you to pee[end if].".

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
	otherwise if the player is possessing a penis:
		let W be the concealer of penis;
		say "It can't be seen thanks to the [ShortDesc of W]. ".

Part 3 - Modify Penis Stats

previous penis length is a number that varies.

To PenisUp (X - a number):
	now previous penis length is the size of penis;
	if the player is not possessing a penis and (diaper quest is 0 and (choice in row 68 of the Table of Player Options is 0 or the player is not a june 2020 top donator)) or (diaper quest is 1 and the player is not a june 2020 diaper donator), now X is 0;
	if cumlust tattoo is worn:
		SemenTasteAddictUp X;
		now X is 0;
	if bitch tattoo is worn, now X is X / 2;
	if fast tg is 3, now X is 0;
	if X > 0:
		if the size of penis >= 10:
			say "Your monster of a [manly-penis] can't seem to grow any larger! You feel like a stud!";
			dignify 50;
		otherwise:
			if the player is possessing a penis, say "You feel your penis grow into a ";
			otherwise say "Suddenly, you feel something growing just above your [vagina]. It's ";
			while X > 0:
				decrease X by 1;
				if the size of penis < 10, increase the size of penis by 1;
			say "a [ShortDesc of penis]!";
			if the size of penis is 8, cutshow figure of body reaction 3 for penis;
			if the size of penis is 9, cutshow figure of body reaction 8 for penis;
			if the size of penis is 10, cutshow figure of body reaction 9 for penis;
	let C be a random worn strapon-panties;[TODO: flavour for the player's dick popping out of too-small underwear]
	if C is clothing and previous penis length < the strap-length of C and the size of penis >= the strap-length of C:
		say PenisHarden of C.

penis-flav is initially true.

To SilentlyPenisDown (X - a number):
	now penis-flav is false;
	PenisDown X;
	now penis-flav is true.

[X is not how much the penis shrinks, but how many times it does so]
To PenisDown (X - a number):
	now previous penis length is the size of penis;
	let flav-said be 0;
	if X > 0:
		if the player is male and the size of penis <= min penis size:
			if penis-flav is true, say "You feel a strange pang in your crotch... you feel that your penis tried to shrink even further, but [if the player is not possessing a penis]since you have nothing left, it can't[otherwise if the size of penis < 4]it's so tiny that it can't get any smaller[otherwise]something prevents it[end if]!";
			now X is 0;
		while X > 0:
			decrease X by 1;
			let R be a random number from 1 to (the pregnancy rate of the player + TG fetish);
			decrease the size of penis by a random number from 1 to R;
		if the size of penis < min penis size, now the size of penis is min penis size;
		if penis-flav is true or image cutscenes > 1:
			if the size of penis <= 4 and the size of penis > 1 and previous penis length > 4:
				cutshow figure of body reaction 5 for penis;
			otherwise if the player is not possessing a penis and previous penis length > 0:
				cutshow figure of body reaction 4 for penis;
		if penis-flav is true:
			if the player is male and previous penis length <= min penis size and fast tg is 3:
				say DefaultSexChangeFlav;
				sexchange the player;
			otherwise if the size of penis < previous penis length:
				if penis-flav is true, say "Your [one of]penis[or]dick[cycling] [if previous penis length > the size of penis + 2]shrivels[otherwise]shrinks[end if] into a [ShortDesc of penis].";
			let C be a random worn strapon-panties;
			if C is clothing and previous penis length >= the strap-length of C and the size of penis < the strap-length of C, say PenisSoften of C.

Section - Image for graphics window

[Figure of PenisObject1 is the file "CharWins/FocusWin/Penis/Penis1.jpg".
Figure of PenisObject2 is the file "CharWins/FocusWin/Penis/Penis2.jpg".]
Figure of PenisObject3 is the file "CharWins/FocusWin/Penis/Penis3.jpg".
Figure of PenisObject4 is the file "CharWins/FocusWin/Penis/Penis4.jpg".
Figure of PenisObject5 is the file "CharWins/FocusWin/Penis/Penis5.jpg".
Figure of PenisObject6 is the file "CharWins/FocusWin/Penis/Penis6.jpg".
[Figure of PenisObject7 is the file "CharWins/FocusWin/Penis/Penis7.jpg".]
Figure of PenisObject8 is the file "CharWins/FocusWin/Penis/Penis8.jpg".
Figure of PenisObject9 is the file "CharWins/FocusWin/Penis/Penis9.jpg".

To decide which figure-name is the examine-image of (T - Penis):
	if the size of penis < 2, decide on figure of PenisObject3;
	if the size of penis is 2, decide on figure of PenisObject3;
	if the size of penis is 3, decide on figure of PenisObject3;
	if the size of penis is 4, decide on figure of PenisObject4;
	if the size of penis is 5, decide on figure of PenisObject5;
	if the size of penis is 6, decide on figure of PenisObject6;
	if the size of penis is 7, decide on figure of PenisObject6;
	if the size of penis is 8, decide on figure of PenisObject8;
	decide on figure of PenisObject9.

Penis ends here.
