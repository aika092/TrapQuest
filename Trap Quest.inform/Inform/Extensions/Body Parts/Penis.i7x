Penis by Body Parts begins here.

Part 1 - Definitions

penis is a body part. penis is everywhere. The text-shortcut of penis is "penis".
To say FullExamineDesc of (B - penis):
	say "[if the player is possessing a penis][ImageDesc of penis][TotalDesc of penis][PenisModesty][otherwise if the player is not possessing a vagina][TotalDesc of penis][otherwise]You don't have a penis.[end if]". [The use of TPD when they have no penis and no vagina catches the doll-like mound case handled by TPD at size 0]

Understand "prick", "willy", "pecker", "clitty", "noodle", "dickie", "winky", "weeny", "cock", "dick", "bellend", "dong", "johnson", "wang", "weiner" as penis.
Understand "crotch", "groin" as vagina when the player is possessing a vagina.
Understand "crotch", "groin" as penis when the player is not possessing a vagina.

penis has a number called size. penis has a number called previous visible size.

To decide which number is the visible size of (P - penis):
	if the player is not possessing a penis, decide on 0;
	if players-dick-is-detached > 0, decide on 0;
	decide on the size of penis.

To decide which number is the effective size of (P - penis):
	if the player is not possessing a penis, decide on 0;
	if players-dick-is-detached > 0, decide on 0;
	let C be a random worn chastity bond;
	if C is a thing, decide on the penis-size-cap of C;
	decide on the size of penis;

penis has a number called real size. The real size of penis is usually 0.

penis has a number called rawness. The rawness of penis is usually 0.
penis has a number called previous rawness.

[!<Penis>@<rawness:Integer>*

Describes how close to orgasm the player's penis is.

*@!]
To decide which number is the max-rawness of (P - penis):
	let X be the size of penis;
	if focus band is worn, increase X by 2;
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

Definition: penis is tiny:
	if the player is possessing a penis and the size of penis < 4, decide yes;
	decide no.

[!<DecideWhichNumberIsMinPenisSize>+

Outputs the player's minimum penis size

@returns <Number> The smallest size penis the player can have during the playthrough, aside from being female

+!]
To decide which number is min penis size:
	if min penis size points is 0, decide on diaper quest;
	decide on min penis size points + diaper quest + micro-choice.

Definition: yourself is possessing a penis:
	if the size of penis > 0, decide yes;
	decide no.

Definition: yourself is solely possessing a penis:
	if the player is possessing a penis and the player is not possessing a vagina, decide yes;
	decide no.

Definition: yourself is really possessing a penis:
	if the real size of penis > 0, decide yes;
	decide no.

Section 1 - Exposure

[!<PenisIsLewdlyExposed>+

Determines whether the player's penis is exposed in a provocative way.

+!]
Definition: penis is lewdly exposed:
	if penis is exposed, decide yes;
	decide no.

To decide which number is the lewdly exposed outrage of (P - penis):
	decide on 11 - (the effective size of penis / 2). [allows us to easily tweak this number]

[!<PenisIsAtLeastPartiallyLewdlyExposed>+

Determines whether the player's penis is partially exposed in a provocative way.

+!]
Definition: penis is at least partially lewdly exposed:
	if penis is at least partially exposed, decide yes;
	decide no.

To decide which number is the at least partially lewdly exposed outrage of (P - penis):
	decide on 8 - (the effective size of penis / 2). [allows us to easily tweak this number]

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
		if penis is penis-erect:[erect penises are twice as hard to cover]
			if the effective size of penis <= the penis-capacity of C / 2, decide yes;
		otherwise:
			if the effective size of penis <= the penis-capacity of C, decide yes; [if the skirt is long enough, it protects you]
	otherwise if C is potentially pussy covering clothing:
		if the effective size of penis <= the penis-capacity of C, decide yes;
	decide no.

Definition: a clothing (called C) is potentially erection concealing:
	if C is skirted crotch-in-place clothing and there is pussy covering unskirted clothing, decide yes; [your penis is propped up, so it's concealed by all skirts.]
	decide no.
Definition: a diaper is potentially erection concealing: decide yes.

Definition: a clothing is potentially penis concealing:
	if it is actually dense and it is potentially penis covering and (penis is not penis-erect or the effective size of penis < 3 or it is potentially erection concealing), decide yes;
	decide no.
[Erections can show up as "tents" in skirts or dresses or even less discreetly for some tighter clothing. However, as long as the player's penis isn't sticking all the way out (making it uncovered) then the clothing should still count as partial concealment.]
Definition: a clothing (called C) is potentially at least partially penis concealing:
	if C is not-see-through and C is potentially penis covering, decide yes;
	if C is not-see-through skirted crotch-in-place clothing:
		if penis is penis-erect:[erect penises are twice as hard to cover]
			if the effective size of penis <= (the penis-capacity of C * 2) / 3, decide yes;
		otherwise:
			if the penis-capacity of C > 1, decide yes; [if the skirt is long enough, it protects you at least a bit]
	otherwise if C is not-see-through potentially pussy covering clothing:
		if the effective size of penis <= (the penis-capacity of C * 3) / 2, decide yes;
	decide no.

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

Section 2 - Erections

[Range from 1 to 10]
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
	[#LXorDD I think it now makes sense to handle a detached penis becoming erect here.]
	if the player is not possessing a penis and the players-dick-is-detached is 0, decide no;
	if penis is penis-erect, decide yes;
	if there is a worn chastity bond, decide no;
	if broken-clitty tattoo is worn, decide no;
	if there is a worn restricting research airhancer, decide no;
	if refractoryperiod > 0, decide no;[except in special circumstances, you can't get hard immediately after an orgasm]
	decide yes.

[There is a chance the player will want to get erect, but won't be able to manage. This is a little humiliating, but they should usually be able to try again.]
Definition: penis is erect-at-will:
	if penis is not able to get erect, decide no;
	if the player is extremely horny, decide yes;
	if there is a worn portal-cock-ring, decide yes; [#LXorDD]
	let A be 1;
	if the player is a bit horny, increase A by 1;[You get erect easier if you are horny]
	if the player is horny, increase A by 1;
	if the player is very horny, increase A by 1;
	increase A by the size of penis;[if you're bigger, it's easier to get erect]
	let D be 0;
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
	decrease D by the anal sex addiction of the player / 2;
	let R be a random number between A and D;
	if R < -1, decide no;
	decide yes.

[Sometimes NPCs will test the player to see if they get an erection, and punish them if it happens.]
Definition: penis is flaccid-under-pressure:
	if penis is penis-erect, decide no;
	if penis is not able to get erect, decide yes;
	if the player is extremely horny, decide yes;
	if the penis-obedience of penis is 10, decide yes;
	let A be 1;
	if the player is horny, increase A by 1;
	if the player is very horny, increase A by 1;
	increase A by the size of penis;
	let D be 0;
	decrease D by the anal sex addiction of the player / 2;
	decrease D by the penis-obedience of penis;
	let R be a random number between A and D;
	if R < -1, decide yes;[results are flipped, since this check is about staying flaccid, not getting hard.]
	decide no.

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
			if players-dick-is-detached > 0:
				say "You feel your [mystical ShortDesc of penis] [harden].";
			otherwise if penis is exposed:
				if the size of penis > 3:
					say "[line break]Your [mystical ShortDesc of penis] [harden]s into a very obvious erection.";
				otherwise:
					say "[line break]Your [mystical ShortDesc of penis] [harden]s into a very embarrassing, albeit subtle, erection.";
			otherwise if penis is at least partially exposed:
				if S2 is clothing:
					if S2 is metal:
						say "Your [mystical ShortDesc of penis] [harden]s into an erection, which presses against the inside of your [ShortDesc of S2].";
					otherwise if S2 is potentially erection concealing:
						say "Your [mystical ShortDesc of penis] [harden]s into an erection, which is thankfully not very obvious thanks to your [ShortDesc of S2].";
					otherwise:
						say "Your [mystical ShortDesc of penis] [harden]s into an erection, which forms a very obvious tent under your [ShortDesc of S2].";
				otherwise if K2 is clothing:
					if K2 is potentially erection concealing:
						say "[line break]You feel your [mystical ShortDesc of penis] [harden]ing into an erection, which is thankfully not obvious thanks to your [ShortDesc of K2].";
					otherwise:
						say "[line break]Your [mystical ShortDesc of penis] [harden]s into an erection, which forms a very obvious tent in your [ShortDesc of K2].";
				otherwise if S1 is clothing:
					say "Your [mystical ShortDesc of penis] [harden]s into an erection, still visible through your [ShortDesc of S1][if K1 is clothing] and [ShortDesc of K1][end if].";
				otherwise if K1 is clothing:
					say "Your [mystical ShortDesc of penis] [harden]s into an erection, still visible through your [ShortDesc of K1].";
			otherwise:
				if S2 is clothing:
					let K3 be a random pussy covering unskirted clothing;
					say "Your feel your [mystical ShortDesc of penis] [harden]ing into an erection, but [if K3 is knickers]thanks to your [ShortDesc of K3], [end if]it remains concealed under your [ShortDesc of S2].";
				otherwise:
					let K3 be a random worn potentially penis concealing clothing;
					say "Your feel your [mystical ShortDesc of penis] [harden]ing into an erection[if K3 is clothing], still concealed under your [ShortDesc of K3][end if].".

[Whenever the player cools off from arousal, they will lose their erection]
To compute erection decay:
	if condom of kings is worn and condom of kings is uncursed, do nothing;
	if ghost-strapon is worn and the size of penis < the strap-length of ghost-strapon, do nothing;
	if the size of penis > 0, say "[line break][bold type]Your [mystical ShortDesc of penis] softens.[roman type][line break]";
	now penis is not penis-erect.

Section 3 - Presenting

the penis presentable rules is a rulebook.
the presentable rules of penis is usually the penis presentable rules.

This is the penis protected rule:
	repeat with O running through pussy covering actually unavoidable clothing:
		if auto is 0, say "Your [O] is preventing you from getting your [player-penis] on display.";
		rule fails.
The penis protected rule is listed in the penis presentable rules.

This is the penis occupied rule:
	if penis is actually occupied:
		if auto is 0, say "Your penis is a bit busy already, don't you think?";
		rule fails.
The penis occupied rule is listed in the penis presentable rules.

This is the penis doesn't exist rule:
	if the player is not possessing a penis:
		if auto is 0:
			if the player is not possessing a vagina:
				say "You have no penis, just a doll-like mound.";
			otherwise:
				say "You don't have a penis.";
		rule fails.
The penis doesn't exist rule is listed in the penis presentable rules.

This is the monster doesn't do penetration rule:
	if auto > 0 and ((presenting-receiver is monster and presenting-receiver is not willing to charm snakes) or the number of willing to charm snakes monsters in the location of the player is 0), rule fails.
The monster doesn't do penetration rule is listed in the penis presentable rules.

To decide which number is the desire of (B - penis):
	let D be 0;
	if the player is gendered male:
		increase D by 5;
		decrease D by anal-orgasms / 2;
	if penis is penis-erect, increase D by 3;
	increase D by the penis-obedience of penis;
	decide on D.

Part 2 - Description

To say ShortDesc of (P - penis):
	say PenisFlavour (the size of penis).

[!<SaySexDescOfPenis>+
To be used when we potentially want to refer to a "feminine penis"
+!]
To say SexDesc of (P - penis):
	if there is a worn strapon-panties:
		say PenisFlavour of a random worn strapon-panties;
	otherwise:
		if the player is not possessing a penis, say "[vagina]";[shouldn't happen]
		otherwise say PenisFlavour (the size of penis).

[!<SayMediumDescOfPenis>+

Less brief details (size, exposure)

+!]
To say MediumDesc of (P - penis):
	say "[if penis is lewdly exposed]fully exposed [otherwise if penis is at least partially lewdly exposed]slightly visible [otherwise if penis is not exposed]concealed [end if][ShortDesc of penis]".

To say RealDesc of penis:
	say "[PenisFlavour the real size of penis]".

To say RealPenisDesc:
	say RealDesc of penis.

To say PenisFlavour (N - a number):
	if N is 0:
		say "Barbie doll style lack of genitalia";
	otherwise:
		if N is 1, say "[PenisSizeFlav N], [PenisShaftFlav N]";
		otherwise say "[PenisSizeFlav N] [PenisShaftFlav N]".

To say PenisSizeFlav (N - a number):
	if N is:
		-- 1: say "less than 1 inch";
		-- 2: say "1 inch";
		-- 3: say "worthless 3 inch";
		-- 4: say "tiny 4 inch";
		-- 5: say "small 5 inch";
		-- 6: say "average 6 inch";
		-- 7: say "above average 7 inch";
		-- 8: say "large 8 inch";
		-- 9: say "giant 10 inch";
		-- 10: say "huge 12 inch";[natural max. beyond here is strapon territory]
		-- 11: say "massive 15 inch";
		-- otherwise: say "ridiculously huge 20 inch".

To say PenisShaftFlav (N - a number):
	if N is:
		-- 1: say "clitoris-like pee pee";[less than 1]
		-- 2: say "micropenis";[1 inch]
		-- 3: say "pecker";
		-- 4: say "willy";
		-- 5: say "dick";
		-- 6: say "prick";
		-- 7: say "cock";
		-- 8: say "dong";
		-- 9: say "tool";[10 inch]
		-- otherwise: say "monster".[12 15, and 20 inches. 12 is natural max]

To say SexShaft:
	let S be a random worn strapon-panties;
	if S is clothing:
		say ShaftDesc of S;
	otherwise:
		say "shaft".

To say TotalDesc of penis:
	if the player is possessing a penis:
		let C be a random worn chastity bond;
		if C is a thing:
			let E be the effective size of penis;
			say "Your [ShortDesc of penis] and [ShortDesc of scrotum] are kept soft and locked away inside a [ShortDesc of C], which prevents it from getting longer than [E] [if E is 1]inch[otherwise]inches[end if]. ";
		otherwise if there is pussy covering clothing:
			say "You have a[if penis is penis-erect]n erect[end if] [ShortDesc of penis] and [ShortDesc of scrotum]. ";
		otherwise:
			if penis is penis-erect, say "Your [one of]erect[or]hard[or]stiff[at random] [ShortDesc of penis] stands at attention, and your [ShortDesc of scrotum] [if the size of scrotum > 5]sway freely[otherwise if the size of scrotum > 3]hang freely[otherwise]are barely noticeable[end if]. ";
			otherwise say "Your soft [ShortDesc of penis] and [ShortDesc of scrotum] [if the size of scrotum > 5]sway freely. [otherwise if the size of scrotum > 3]hang freely. [otherwise]are barely noticeable. [end if]";
	otherwise if the player is sexed male:
		say "A doll-like flat mound exists where your penis and balls used to be[if players-dick-is-detached is 1 and players-detached-dick is held by the player] attached to you: and you know exactly where they are right now[otherwise if players-dick-is-detached is 1 and players-detached-dick is somewhere-here] attached to you: and you hope you're about to get them back[otherwise if players-dick-is-detached is 1] attached to you: [one of]you're not sure where they are now[or]they've been stolen[or]you need to get them back[at random][end if][if watersports mechanics is 1]. There's just a tiny hole to allow you to pee[end if].". [#LXorDD]

To say PenisModesty:
	if penis is at least partially exposed:
		let W be the at least partial concealer of penis;
		if W is clothing:
			say "It is [if penis is exposed]clearly[otherwise]partially[end if] visible [if W is actually dense]poking out of[otherwise]through[end if] your [ShortDesc of W]. ";
		otherwise:
			let C be a random worn skirted crotch-in-place clothing;
			if C is clothing and the number of pussy covering unskirted clothing is 0: [your penis is not propped up by knickers or whatever]
				if penis is penis-erect, say "Your erection is pushing your [ShortDesc of C] away, exposing itself.";
				otherwise say "It dangles down lower than your [ShortDesc of C] covers.";
			otherwise:
				say "You have no clothing covering it. ";
	otherwise if the player is possessing a penis:
		let W be the concealer of penis;
		say "It can't be seen thanks to the [ShortDesc of W]. ";
	if penis is actually occupied:
		let P be a random thing penetrating penis;
		if P is gargoyle:
			say "It is currently inside [FuckerDesc of P]'s mouth.";
		otherwise if P is dominatrix:
			say "It is currently inside [FuckerDesc of P]'s cocksleeve.";
		otherwise:
			say "It is currently inside [FuckerDesc of P]'s [HoleDesc of P].";
	if the player is a penis slut and the player is possessing a penis:
		let P be a random thing penetrating penis;
		if P is monster, say "Monsters are definitely paying extra attention to it.";
		otherwise say "You have a feeling that monsters are paying extra attention to it.".

To say HoleDesc of (M - a thing):
	say "hole".

Part 3 - Modify Penis Stats

previous penis length is a number that varies.

[ PenisUp(X)
#LXorDD:
For the detached dick case, since it can be grown or shrunk while detached, and since these functions are quite involved, rather than copying and modifying them, I'm trying to reuse them: I temporarily set the penis and scrotum sizes back to those of the detached dick before calling these, and back to zero immediately after, and adding some code in here to handle the special case of the detached dick.]
To PenisUp (X - a number):
	if the player is not possessing a vagina or (the player is possessing a vagina and player futanari fetish > 0):
		OnlyPenisUp X;
		let N be the remainder after dividing X by 2;
		if N is 1:
			if X is 1, now X is 1;
			otherwise now X is (X - 1) / 2;[PenisUp 1 causes scrotum and penis to grow at the same rate, but higher values of X cause penis to grow faster.]
		if previous penis length is 10:
			ScrotumUp X;[only announce if no penis growth happened.]
		otherwise:
			SilentlyScrotumUp X.

[#LXorDD
  NOTE:
    This function can increase detached dicks via the SpecialPenisUp or DetachedPenisUp functions, which first swap the dick back in as far as the code is concerned, then calls PenisUp, then swaps it back out.
    In other words, don't use the 'mystical size of the penis' here, just use 'the size of the penis'.

As of Sept 2021 there's a new TG situation here:
    If your dick is at maximum size AND if the latex transformation > 5, it's possible to grow your dick above the normal maximum size of 10.
    But it hurts and you get a warning that it might pop.
    Once at size 12, there's a 2 in 3 chance it will pop each time it tries to grow bigger still.
    If TG fetish is on and it bursts, you can then change sex.
    If TG fetish is not on and it bursts, it leaves you at size 0.
]
To OnlyPenisUp (X - a number):
	now previous penis length is the size of penis;
	if the player is not possessing a penis and player futanari fetish is 0, now X is 0;
	if cumlust tattoo is worn:
		SemenTasteAddictUp X;
		now X is 0;
	if bitch tattoo is worn, now X is X / 2;
	if metal-cage is worn:
		now X is 0;
		say "Your [ShortDesc of metal-cage] is preventing your [player-penis] from getting any larger!";
	if X > 0: [We're now allowing penis size to increase above the max of 10, a 12 inch cock, if they're latex-TFed enough, but if they try to grow over 12 they'll burst. This used to happen only if their penis was detached AND they were latex TFed.]
		let sense be "feel";
		if players-dick-is-detached > 0:
			if players-detached-dick is in the location of the player, now sense is "see";
		if the size of penis > 9:
			if the latex-transformation of the player >= 6: [If LHS of 1, 2, or 3 > RHS of 1 or 2, they're rubbery enough to try to grow, and maybe burst!]
				say "You [sense] your [if players-dick-is-detached > 0]stolen [end if]monster of a [manly-penis] try to grow even larger, ";
				if the size of penis < 12:
					say "swelling even bigger, its [LatexFlav]skin stretching dangerously. It's starting to hurt, like it could pop![run paragraph on][if the size of penis >= 11] Seriously, you [sense] its skin thinning, reminding you of an over-stretched balloon.[end if][if players-dick-is-detached > 0][line break][variable custom style]I need to get it reattached, and sooner rather than later![roman type][end if][line break]";
					increase the size of penis by 1;
					say "It's now a [ShortDesc of penis]!";
				otherwise: [They've inflated to size 12 and trying to grow larger. Let's give them a 1 in 3 chance they don't pop.]
					if a random number between 1 and 3 is 1:
						say "and its [LatexFlav]skin [i]really[/i] hurts as it strains against itself. Then the pain eases as it stops trying to grow any further. [one of]You feel you had a lucky escape.[or]It felt like it almost popped, that time![or]For a second or two you were sure it was going to burst like a balloon.[in random order]";
					otherwise:
						say "its [LatexFlav]skin expanding until it's translucent, and a sharp stab of pain runs through you.[line break]At the last moment the pain vanishes... into a scary numbness. But your eyes widen as it keeps stretching, until the horror you're feeling explodes - as does your [manly-penis], bursting into a million pieces![line break]You stare in utter shock and shame, wide-eyed, not quite believing what just happened.[line break][variable custom style]My dick just exploded. My magnificent, awesome dick. It just literally blew up![roman type][line break]You're utterly stunned. Flabbergasted.[variable custom style]At least it didn't hurt, at the end.[roman type][line break]That traitorous little thought only makes the humiliation of the event burn even stronger. Something also tells you that you won't be able to reassemble the tiny rubbery pieces of your burst dick, to reattach it. You sense it's gone for good. Wah!";
						if players-dick-is-detached > 0:
							uniquely destroy players-detached-dick;
							now the size of players-detached-dick is -1;
						severeHumiliate;
						if TG fetish > 0 and the player is not possessing a vagina:
							SexChange the player;
						otherwise:
							[Selkie: this is right. We don't set it to Min Penis Size and remark on the meagre stub remaining.]
							now the size of penis is 0;
							now the size of scrotum is 0;
			otherwise: [They're at or over max penis size, but not elastic enough to grow]
				if the latex-transformation of the player > 0:
					say "Your monster of a [manly-penis] tries to swell even larger, but it can't. [one of]It's just not stretchy enough.[or]It'd have to be more rubbery for that to be possible.[or]It'd need to be more elastic.[or]Your [LatexFlav]skin does make you wonder whether it's completely out of the question. Hmm...[or]You [sense] its [LatexFlav]skin try to stretch, but it's just not elastic enough.[in random order]";
				otherwise:
					say "Your monster of a [manly-penis] can't seem to grow any larger! You feel like a stud!";
				dignify 50;
		otherwise:[dick is <= 9, which is 10 inch]
			if players-dick-is-detached > 0:
				say "You feel your detached penis grow into "; [#LXorDD This is mainly to cover the possibility of it being detached and a flat disc, i.e. zero sized. I'm just being defensive]
			otherwise if the player is possessing a penis:
				say "You feel your penis grow into ";
			otherwise if the player is not possessing a vagina:
				say "You feel something growing out of your featureless barbie mound. It's ";
			otherwise:
				say "Suddenly, you feel something growing just above your [vagina]. It's ";
			while X > 0:
				decrease X by 1;
				if the size of penis < 10, increase the size of penis by 1;
			say "a [ShortDesc of penis]!";
			if the size of penis is 8, cutshow figure of body reaction 3 for penis;
			if the size of penis is 9, cutshow figure of body reaction 8 for penis;
			if the size of penis is 10, cutshow figure of body reaction 9 for penis;
	if players-dick-is-detached is 0: [#LXorDD Any worn clothes will only affect the penis if it's attached.]
		let C be a random worn strapon-panties;[TODO: flavour for the player's dick popping out of too-small underwear]
		if C is clothing and previous penis length < the strap-length of C and the size of penis >= the strap-length of C:
			say PenisHarden of C.

penis-flav is initially true.

[This function is to be used when we don't want text output, it could be because we're in the middle of outputting some text. So this turns off the text output when the sexchange happens.
NB: that means if you use this function and it reduces the penis size below the minimum at which sexchange should normally occur, then sexchange won't happen unless the player somehow increases it so there's a chance the penis will cross that borderline a second time.]
To SilentlyPenisDown (X - a number):
	now penis-flav is false;
	PenisDown X;
	now penis-flav is true.

To PenisDown (X - a number):
	OnlyPenisDown X;
	ScrotumDown X.

[X is not how much the penis shrinks, but how many times it does so]
To OnlyPenisDown (X - a number):
	now previous penis length is the size of penis;
	if X > 0:
		if the player is sexed male and the size of penis <= min penis size:
			if penis-flav is true, say "You feel a strange pang in your crotch... you feel that your penis[if players-dick-is-detached > 0 and players-detached-dick is not in the location of the player], wherever it may be,[end if] tried to shrink even further, but [if the player is not possessing a penis]since you have nothing left, it can't[otherwise if the size of penis < 4]it's so tiny that it can't get any smaller[otherwise]something prevents it[end if]!";
			now X is 0;
		while X > 0:
			decrease X by 1;
			let R be a random number from 1 to (the pregnancy rate of the player + TG fetish);
			decrease the size of penis by a random number from 1 to R;
		if the size of penis < min penis size, now the size of penis is min penis size;
		if penis-flav is true[ or image cutscenes > 1]:
			if the size of penis <= 4 and the size of penis > 1 and previous penis length > 4:
				cutshow figure of body reaction 5 for penis;
			otherwise if the player is not possessing a penis and previous penis length > 0:
				cutshow figure of body reaction 4 for penis;
		if penis-flav is true:
			if the player is male and previous penis length <= min penis size and shrink tg is 4:
				say DefaultSexChangeFlav;
				SexChange the player;
			otherwise if the size of penis < previous penis length:
				let feeling be "Some place, somewhere, you can feel your"; [#LXorDD]
				if players-dick-is-detached is 0 or players-detached-dick is somewhere-here, now feeling is "Your";
				if penis-flav is true, say "[feeling] [one of]penis[or]dick[cycling] [if previous penis length > the size of penis + 2]shrivels[otherwise]shrinks[end if] into a [ShortDesc of penis].";
			if players-dick-is-detached is 0: [#LXorDD Any worn clothes will only affect the penis if it's attached.]
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
