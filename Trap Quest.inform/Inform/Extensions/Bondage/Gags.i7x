Gags by Bondage begins here.

A gag is a kind of bondage. A gag is usually unique. A gag is usually leather. The text-shortcut of gag is "gag". Understand "gag" as gag.

Definition: a gag is disembodied rather than embodied: decide yes. [When penetrating an orifice, can it fit underneath other clothing like a sex toy? Or will clothing get in the way, e.g. a dildo pole?]

A ballgag is a kind of gag. A ballgag is transformation-rare. Understand "ballgag" as a ballgag.

Definition: a ballgag is same-type:
	if theme-share-target is ballgag, decide yes;
	decide no.

Definition: a ballgag (called C) is application appropriate:
	if C is fetish appropriate:
		if early-bondage-check is true and (face is an actual target or belly is an actual target), decide no;
		decide yes;
	decide no.

This is the ball gag oral slut rule:
	if there is a worn ballgag, decrease the desirability of face by 10.
The ball gag oral slut rule is listed in the blowjob slut eligibility rules.

Definition: yourself is gagged:[Refers specifically to gags that occupy face]
	repeat with C running through worn gags:
		if C is ringagged:
			if C is penetrating face, now C is not penetrating face; [Failsafe that should pick up bugs and fix them]
		otherwise:
			if C is not penetrating face, now C is penetrating face; [Failsafe that should pick up bugs and fix them]
			decide yes;
	decide no.

Definition: yourself is mouthblocked: [not just gags]
	if the player is gagged, decide yes;
	repeat with C running through things penetrating face:
		if C is ringagged clothing:
			if C is penetrating face, now C is not penetrating face; [Failsafe that should pick up bugs and fix them]
		otherwise:
			decide yes;
	decide no.

To decide which number is the initial outrage of (C - a ballgag):
	decide on 4.

To decide which number is the initial outrage of (C - large-ballgag):
	decide on 6.

To decide which number is the initial outrage of (C - huge-ballgag):
	decide on 8.

To decide which number is the intelligence-influence of (C - a ballgag):
	let S be -1;
	increase S by the magic-modifier of C;
	decide on S.

To decide which number is the intelligence-influence of (C - large-ballgag):
	let S be -2;
	increase S by the magic-modifier of C;
	decide on S.

To decide which number is the intelligence-influence of (C - huge-ballgag):
	let S be -4;
	increase S by the magic-modifier of C;
	decide on S.

small-ballgag is a ballgag. The printed name of small-ballgag is "[clothing-title-before]small ballgag[clothing-title-after]". The text-shortcut of small-ballgag is "sga". Understand "small" as small-ballgag.
Definition: small-ballgag is red themed: decide yes.
Definition: small-ballgag is IcarusScienceAppropriate:
	if diaper quest is 0 and it is actually summonable, decide yes;
	decide no.
large-ballgag is a ballgag. The printed name of large-ballgag is "[clothing-title-before]large ballgag[clothing-title-after]". The text-shortcut of large-ballgag is "lga". Understand "large" as large-ballgag.
Definition: large-ballgag is white themed: decide yes.
Definition: large-ballgag is application appropriate: decide no.
huge-ballgag is a ballgag. The printed name of huge-ballgag is "[clothing-title-before]huge ballgag[clothing-title-after]". The text-shortcut of huge-ballgag is "hga". Understand "huge" as huge-ballgag.
Definition: huge-ballgag is red themed: decide yes.
Definition: huge-ballgag is application appropriate: decide no.

To compute SelfExamineDesc of (C - a ballgag):
	say "You are not able to speak due to your mouth being filled by [ShortDesc of C]. ".

To say ShortDesc of (C - a ballgag):
	say "ballgag".

Figure of small ballgag is the file "Items/Accessories/Head/ballgag1.png".
Figure of small ballgag full is the file "Items/Accessories/Head/ballgag1b.png".
Figure of large ballgag is the file "Items/Accessories/Head/ballgag2.png".
Figure of huge ballgag is the file "Items/Accessories/Head/ballgag3.png".

To decide which figure-name is clothing-image of (C - small-ballgag):
	decide on figure of small ballgag.
To decide which figure-name is icarus-clothing-image of (C - small-ballgag):
	decide on figure of small ballgag full.

To decide which figure-name is clothing-image of (C - large-ballgag):
	decide on figure of large ballgag.

To decide which figure-name is clothing-image of (C - huge-ballgag):
	decide on figure of huge ballgag.

To say ClothingDesc of (C - small-ballgag):
	say "This small red ballgag stops you from speaking but without stretching your jaw too badly in the process.".

To say ClothingDesc of (C - large-ballgag):
	say "This large white ballgag stops you from speaking and keeps your jaw constantly stretched[if C is worn]. This constant aching makes it harder to concentrate.[end if].".

To say ClothingDesc of (C - huge-ballgag):
	say "This enormous red ballgag stops you from speaking and keeps your jaw locked as wide as it could ever possibly go[if C is worn]. Your mind is so fixed on the uncomfortable and constant aching of your mouth that you struggle to think about anything else[end if].".

To decide which object is the unique-upgrade-target of (C - small-ballgag):
	if there is worn swimming themed wearthing and there is an off-stage rubber duck gag, decide on a random off-stage rubber duck gag;
	if diaper quest is 1, decide on a random off-stage fetish appropriate baby pacifier;
	decide on nothing. [other sizes can apepar if fetish appropriate]

To decide which object is the unique-upgrade-target of (C - large-ballgag):
	if diaper quest is 1, decide on a random off-stage fetish appropriate baby pacifier;
	decide on nothing.

Definition: a ballgag is fetish appropriate:
	if diaper quest is 0, decide yes;
	decide no.

bit-gag is a ballgag. The printed name of bit-gag is "[clothing-title-before]bit gag[clothing-title-after]". The text-shortcut of bit-gag is "btg". Understand "bit" as bit-gag.

To say ShortDesc of (C - a bit-gag):
	say "bit gag".

Figure of bit gag is the file "Items/Accessories/Head/bitgag1.jpg".

To decide which figure-name is clothing-image of (C - bit-gag):
	decide on figure of bit gag.

To say ClothingDesc of (C - bit-gag):
	say "This red cylindrical gag stops you from speaking properly but without stretching your jaw too badly in the process.".

To decide which number is the initial outrage of (C - bit-gag):
	decide on 6.
To decide which number is the intelligence-influence of (C - bit-gag):
	let S be 0;
	increase S by the magic-modifier of C;
	decide on S.

Definition: bit-gag is orange themed: decide yes.
Definition: bit-gag is fetish appropriate: decide yes. [Never appears randomly]

mask-gag is a ballgag. The printed name of mask-gag is "[clothing-title-before]gag behind face mask[clothing-title-after]". The text-shortcut of mask-gag is "mskg".

To say ShortDesc of (C - mask-gag):
	say "hidden gag".

Figure of mask ballgag is the file "Items/Accessories/Head/maskgag1.jpg".
Figure of mask pacifier gag is the file "Items/Accessories/Head/maskgag2.jpg".

To decide which figure-name is clothing-image of (C - mask-gag):
	if diaper quest is 1, decide on figure of mask pacifier gag;
	decide on figure of mask ballgag.

To say ClothingDesc of (C - mask-gag):
	say "This [if diaper quest is 1]pacifier [otherwise]ball[end if]gag stops you from speaking. It is hidden behind a surgical mask. It has a small subtle plastic tube running through the centre, allowing you to suck from the drinks hidden in your bag.".

Definition: mask-gag is fetish appropriate: decide no. [Never appears randomly]
To decide which number is the initial outrage of (C - mask-gag):
	decide on 1.

outrageous-gag is a humiliating situation.
Definition: outrageous-gag (called A) is applicable:
	if diaper quest is 0 and the player is not disgraced and the bimbo of the player < 14 and there is a worn gag, decide yes;
	decide no.
To reflect on (A - outrageous-gag):
	let G be a random worn gag;
	let Its-making-me-drool be "I can't even talk with this gag in my mouth[if the latex-transformation of the player < 8], and it's making me drool everywhere. Yuck![otherwise] - [one of]not that I even can make words anymore with this stupid doll mouth.[or]not that I can form words with this stupid stuck-in-an-[']O[']-shape mouth.[or]not that I can even talk while this stupid curse has turned me into a darn doll![or]not that I could talk even if it was removed. Wah![in random order][end if]"; [#LXorDD]
	if G is small-ballgag, say "[variable custom style][Its-making-me-drool]";
	if G is large-ballgag or G is huge-ballgag, say "[variable custom style][if the intelligence of the player < 9]Ow ow ow, this ballgag is making my jaw ache! Get it off![otherwise][Its-making-me-drool][end if]";
	if G is cock pacifier, say "[variable custom style][if the oral sex addiction of the player > 6]I guess it's pretty embarrassing to have this fake [manly-penis] in my mouth, but at least it keeps me hydrated! Yum![otherwise]This [manly-penis] pacifier is so humiliating. Not only can everyone see that I've got a pacifier in my mouth, but while it's in my mouth I'm basically permanently sucking [manly-penis]![end if]";
	if G is opengag, say "[variable custom style]I can't even talk with this gag in my mouth, and it makes me look like I'm always ready to suck dick. Yuck!";
	say "[roman type][line break]".

To say FriendReaction of (M - a real-life patron) to (A - outrageous-gag):
	let G be a random worn gag;
	if G is not pacifier and G is ballgag, say "... [if M is nemesis-friend]If you ask me, you should do everyone a favour and keep yourself gagged all the time. [otherwise]I guess there's no point asking you for an explanation. [end if]";
	if G is pacifier, say "... Just so you know, [if G is cock pacifier]I can tell what's on the end of that [otherwise]no self-respecting adult would wear a [end if]pacifier. ";
	if G is opengag, say "... I guess there's no point asking if you know how that makes you look. ";
	say "[roman type][line break]".

Chapter - Wearability

gag wearability rules is a rulebook. The wearability rules of gag is usually gag wearability rules.

This is the gag already worn rule:
	repeat with O running through worn gags:
		if summoning is 0 and autowear is false, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [printed name of O][end if]!";
		rule fails.
The gag already worn rule is listed in the gag wearability rules.

This is the mouth already full rule:
	if face is actually occupied:
		if summoning is 0 and autowear is false, say "Your mouth is [if wearing-target is ringagged]currently[otherwise]already[end if] occupied.";
		rule fails.
The mouth already full rule is listed in the gag wearability rules.


Gags ends here.
