Tattoos Framework by Tattoos begins here.

A tattoo is a kind of wearthing. A tattoo is wearable. Understand "tattoo" as tattoo.

The printed name of a tattoo is "[TQlink of item described][MediumDesc of item described][TQxlink of item described][verb-desc of item described]".

Report examining a tattoo:
	say "[visibility-desc of the noun][outrage-desc of the noun]".

To say TQlink of (T - a tattoo):
	if inline hyperlinks >= 1, say "[link]".

To say TQxlink of (T - a tattoo):
	if inline hyperlinks >= 1, say "[as]x [ShortDesc of T][end link]".

To say verb-desc of (T - a tattoo):
	if inline hyperlinks >= 2, say "[if the player is in Dungeon28 or the player is in Tutorial05] [link][bracket]altar[close bracket][as]put [ShortDesc of T] on altar[end link][end if]".

Definition: a tattoo is drawable: [Can the inking machine select this?]
	decide yes.
Definition: a tattoo is eligible: [Does the inking machine understand the relevance of the noun to inspire this?]
	[if debugmode > 1, say "Now checking eligibility of [T].";]
	decide no.

Definition: a tattoo (called T) is actually summonable:
	if the number of worn tattoos is 0, decide no;
	if T is drawable, decide yes;
	decide no.

A tattoo has a text called the tattoo-title. The tattoo-title of a tattoo is "MISSING NAME". Understand the tattoo-title property as describing a tattoo.

tattooNameCount is a number that varies.
To TattooNameAssign (T - a tattoo):
	if the tattoo-title of T is "MISSING NAME":
		now the tattoo-title of T is substituted form of "MISSING NAME [tattooNameCount]";
		increase tattooNameCount by 1;
	now the text-shortcut of T is the substituted form of "[tattoo-title of T]".
When play begins: [This will help with debugging as we will be able to tell the various missing name tattoos apart when they are referenced in an error report]
	repeat with T running through tattoos:
		TattooNameAssign T.

To say ExamineDesc of (T - a tattoo):
	say tattoo-desc of T;
	if the anal sensitivity influence of T > 0, say "You can sense that it is [if the anal sensitivity influence of T > 1]significantly [end if]magically enhancing the pleasure you receive from your [asshole].".

To say tattoo-desc of (T - a tattoo):
	say "This is a [ShortDesc of T]".

To say ShortDesc of (T - a tattoo): [If this isn't unique it needs to be changed so that it is unique, or the TQxlink needs changing]
	say "[tattoo-title of T] tattoo".

To say MediumDesc of (T - a tattoo):
	say ShortDesc of T.

To summon (T - a tattoo):
	progress quest of inking-quest;
	compute inking effect of T;
	now T is worn by the player.

To decide which number is the heaviness of (T - a tattoo):
	decide on 0.

To decide which object is the coverer of (T - a tattoo):
	decide on nothing.

To decide which object is the concealer of (T - a tattoo):
	decide on nothing.
To decide which object is the at least partial concealer of (T - a tattoo):
	if T is listed in the armUses of arms, decide on arms;
	decide on nothing.

To say visibility-desc of (T - a tattoo):
	if the concealer of T is a thing:
		say "It currently can't be seen thanks to [NameDesc of concealer of T].";
	otherwise if the at least partial concealer of T is a thing:
		say "It currently can only partially be seen thanks to [NameDesc of at least partial concealer of T].";
	otherwise:
		say "It can currently be seen by anyone who looks at you.".

To say outrage-desc of (T - a tattoo):
	if the unworn outrage of T is too humiliating:
		let C be the concealer of T;
		if C is clothing:
			if the unworn outrage of C < the unworn outrage of T, say "[variable custom style]I'm so glad this [ShortDesc of C] is covering up my tattoo. I can't let anyone see it, it's too embarrassing![roman type][line break]";
			otherwise say "[if T is not asshole-tattoo][line break][variable custom style]I know it's an awful, trashy tattoo, but I think I'd actually rather have it on display than wear this ridiculous [ShortDesc of C]![roman type][line break]";
		otherwise:
			say "[variable custom style]How humiliating. I need to find something to wear to cover this up![roman type][line break]".

To decide which number is the initial outrage of (T - a tattoo):
	decide on 2. [Standard minimum outrage]

To decide which number is the initial cringe of (T - a tattoo):
	decide on 2. [Standard minimum cringe]

To decide which number is the unworn outrage of (T - a tattoo):
	let O be the initial outrage of T;
	if the initial cringe of T > 2:
		if diaper quest is 1, decide on 0; [No outrage in diaper quest if it's a childish tattoo]
		if the initial cringe of T > O, now O is the initial cringe of T / (3 - diaper lover); [convert cringe to outrage where appropriate in TQ; cringe is less humiliating if diapers are disabled]
	if O > 20, now O is 20;
	decide on O.

To decide which number is the unworn cringe of (T - a tattoo):
	let O be the initial cringe of T;
	if O > 20, now O is 20;
	decide on O.

Check taking off tattoo:
	say "That's permanently inked into your skin!" instead.

This is the tattoos get focused rule:
	if tattoo vision is 1 and the focus-window is g-present:
		repeat with T running through currently at least partially visible tattoos:
			if diaper quest is 0 or the appearance of the player > the cringe appearance of the player:
				let A be calculated-appearance-outrage-level - (calculated-appearance-outrage-level / 2);
				if the outrage of T >= A, focus-consider T;
			otherwise:
				let C be calculated-cringe-level - (calculated-cringe-level / 2);
				if the cringe of T >= C, focus-consider T.
The tattoos get focused rule is listed in the focus finding rules.

Section 1 - Ass Tattoos

An asscheek tattoo is a kind of tattoo.
A both-asscheeks tattoo is a kind of asscheek tattoo.
A left-asscheek tattoo is a kind of asscheek tattoo.
A right-asscheek tattoo is a kind of asscheek tattoo.
Definition: an asscheek tattoo is drawable:
	if there is a worn asscheek tattoo, decide no;
	decide yes.
Definition: a left-asscheek tattoo is drawable:
	if there is a worn left-asscheek tattoo or there is a worn both-asscheeks tattoo, decide no;
	decide yes.
Definition: a right-asscheek tattoo is drawable:
	if there is a worn right-asscheek tattoo or there is a worn both-asscheeks tattoo, decide no;
	decide yes.
To decide which object is the concealer of (T - an asscheek tattoo):
	decide on a random worn potentially asshole covering clothing.
To decide which object is the at least partial concealer of (T - an asscheek tattoo):
	if T is listed in the armUses of arms or hips is listed in the armUses of arms, decide on arms;
	decide on a random worn potentially at least partially asshole covering clothing.

Section 2 - Asshole tattoos

An asshole-tattoo is a kind of tattoo. Understand "asshole tattoo" as asshole-tattoo.
Definition: an asshole-tattoo is drawable:
	if diaper quest is 1 or there is a worn asshole-tattoo, decide no;
	decide yes.

Definition: an asshole-tattoo is anal sex themed: decide yes.

To decide which object is the concealer of (T - an asshole-tattoo):
	decide on the concealer of asshole.
To decide which object is the at least partial concealer of (T - an asshole-tattoo):
	if T is listed in the armUses of arms or asshole is listed in the armUses of arms, decide on arms;
	decide on the at least partial concealer of asshole.

To decide which number is the initial outrage of (T - an asshole-tattoo):
	decide on 14.

To decide which number is the anal sensitivity influence of (C - an asshole-tattoo):
	decide on 1.

Section 3 - Crotch Tattoos

A crotch tattoo is a kind of tattoo. [above the genitals]
Definition: a crotch tattoo is drawable:
	if diaper quest is 1 or there is a worn crotch tattoo, decide no;
	decide yes.

To decide which object is the concealer of (T - a crotch tattoo):
	decide on the concealer of vagina.
To decide which object is the at least partial concealer of (T - a crotch tattoo):
	if T is listed in the armUses of arms, decide on arms;
	decide on the at least partial concealer of vagina.

To decide which number is the initial outrage of (T - a crotch tattoo):
	decide on 6.

A genitals-tattoo is a kind of tattoo. A vagina-tattoo is a kind of genitals-tattoo. [A cock-tattoo is a kind of genitals-tattoo.] [around the genitals]
Definition: a genitals-tattoo is drawable:
	if diaper quest is 1 or there is a worn vagina-tattoo, decide no;
	decide yes.
Definition: a vagina-tattoo is drawable:
	if diaper quest is 1 or there is a worn vagina-tattoo or the player is not possessing a vagina, decide no;
	decide yes.

To decide which object is the concealer of (T - a genitals-tattoo):
	decide on the concealer of vagina.
To decide which object is the at least partial concealer of (T - a genitals-tattoo):
	if T is listed in the armUses of arms or vagina is listed in the armUses of arms or penis is listed in the armUses of arms, decide on arms;
	decide on the at least partial concealer of vagina.

To decide which number is the initial outrage of (T - a genitals-tattoo):
	decide on 11.

Section 4 - Chest Tattoos

A chest tattoo is a kind of tattoo. [above the breasts]
Definition: a chest tattoo is drawable:
	if there is a worn chest tattoo, decide no;
	decide yes.

A breast tattoo is a kind of tattoo. [on the breasts]
A both-breasts tattoo is a kind of breast tattoo.
A left-breast tattoo is a kind of breast tattoo.
A right-breast tattoo is a kind of breast tattoo.
Definition: a breast tattoo is drawable:
	if there is a worn breast tattoo, decide no;
	decide yes.
Definition: a left-breast tattoo is drawable:
	if there is a worn left-breast tattoo or there is a worn both-breasts tattoo, decide no;
	decide yes.
Definition: a right-breast tattoo is drawable:
	if there is a worn right-breast tattoo or there is a worn both-breasts tattoo, decide no;
	decide yes.

To decide which object is the concealer of (T - a chest tattoo):
	decide on a random top-layer-concealing actually dense fully covering actually breast covering clothing.
To decide which object is the at least partial concealer of (T - a chest tattoo):
	if T is listed in the armUses of arms, decide on arms;
	decide on a random partially-top-layer-concealing not-see-through fully covering actually breast covering clothing.

To decide which number is the initial outrage of (T - a chest tattoo):
	decide on 4.

To decide which object is the concealer of (T - a breast tattoo):
	decide on a random top-layer-concealing actually dense average cut or higher actually breast covering clothing.
To decide which object is the at least partial concealer of (T - a breast tattoo):
	if T is listed in the armUses of arms or breasts is listed in the armUses of arms, decide on arms;
	decide on a random partially-top-layer-concealing not-see-through very low cut or higher actually breast covering clothing.

To decide which number is the initial outrage of (T - a breast tattoo):
	decide on 5.

Section 5 - Leg Tattoos

A leg tattoo is a kind of tattoo.
Definition: a leg tattoo is drawable:
	if there is a worn leg tattoo, decide no;
	decide yes.
To decide which object is the concealer of (T - a leg tattoo):
	let C be a random worn layer-concealing calf covering actually dense clothing;
	decide on C.
To decide which object is the at least partial concealer of (T - a leg tattoo):
	if T is listed in the armUses of arms, decide on arms;
	let C be a random worn partially-layer-concealing calf covering not-see-through clothing;
	decide on C.
To decide which number is the initial outrage of (T - a leg tattoo):
	decide on 3.
To decide which number is the cringe of (T - a leg tattoo):
	decide on 0.

Section 6 - Lower Back Tattoos

A lower back tattoo is a kind of tattoo.
Definition: a lower back tattoo is drawable:
	if there is a worn lower back tattoo, decide no;
	decide yes.
To decide which object is the concealer of (T - a lower back tattoo):
	decide on a random mid-layer-concealing actually dense belly covering clothing.
To decide which object is the at least partial concealer of (T - a lower back tattoo):
	if T is listed in the armUses of arms, decide on arms;
	decide on a random partially-mid-layer-concealing not-see-through belly covering clothing.
To decide which number is the initial outrage of (T - a lower back tattoo):
	decide on 3.

Section 6b - Upper Back Tattoos

A upper back tattoo is a kind of tattoo.
Definition: a upper back tattoo is drawable:
	if there is a worn upper back tattoo, decide no;
	decide yes.

To decide which object is the concealer of (T - a upper back tattoo):
	decide on a random top-layer-concealing actually dense breast covering clothing.
To decide which object is the at least partial concealer of (T - a upper back tattoo):
	if T is listed in the armUses of arms, decide on arms;
	decide on a random partially-top-layer-concealing not-see-through breast covering clothing.

To decide which number is the initial outrage of (T - a upper back tattoo):
	decide on 2.

Section 7 - Body Tattoos

[Body tattoos are miscellaneous and the player can have many of them. The chance of one being selected at random goes down, the more tattoos there are. They are not selected at random.]

A body tattoo is a kind of tattoo.
Definition: a body tattoo (called A) is drawable:
	if A is worn, decide no;
	if A is eligible, decide yes;
	decide no.

To decide which object is the concealer of (T - a body tattoo):
	decide on nothing.
To decide which object is the at least partial concealer of (T - a body tattoo):
	if T is listed in the armUses of arms, decide on arms;
	decide on nothing.

Section 8 - Face tattoos

A face-tattoo is a kind of body tattoo. Understand "face tattoo" as a face-tattoo.

To decide which object is the concealer of (T - a face-tattoo):
	decide on the concealer of face.
To decide which object is the at least partial concealer of (T - a face-tattoo):
	if T is listed in the armUses of arms or face is listed in the armUses of arms, decide on arms;
	decide on the at least partial concealer of face.
To decide which number is the initial outrage of (T - a face-tattoo):
	decide on 7.

Section 9 - Belly Tattoos

A belly-tattoo is a kind of tattoo.
Definition: a belly-tattoo is drawable:
	if there is a worn belly-tattoo, decide no;
	decide yes.
To decide which object is the concealer of (T - a belly-tattoo):
	decide on a random mid-layer-concealing actually dense belly covering clothing.
To decide which object is the at least partial concealer of (T - a belly-tattoo):
	if T is listed in the armUses of arms or belly is listed in the armUses of arms, decide on arms;
	decide on a random partially-mid-layer-concealing not-see-through belly covering clothing.
To decide which number is the initial outrage of (T - a belly-tattoo):
	decide on 2.

Section 10 - DQ Tattoos

[These never show up in TQ]

A DQ tattoo is a kind of body tattoo.
Definition: a dq tattoo (called A) is drawable:
	if diaper quest is 0, decide no;
	if A is worn, decide no;
	decide yes. [So these can be selected randomly!]

Section 11 - Hand tattoos

A hand-tattoo is a kind of body tattoo. Understand "hand tattoo" as a hand-tattoo.

To decide which object is the concealer of (T - a hand-tattoo):
	decide on a random worn actually dense finger covering clothing.
To decide which object is the at least partial concealer of (T - a hand-tattoo):
	if T is listed in the armUses of arms, decide on arms;
	decide on a random worn not-see-through finger covering clothing.
To decide which number is the initial outrage of (T - a hand-tattoo):
	decide on 1.
Definition: a hand-tattoo (called A) is drawable:
	if A is worn or the number of worn hand-tattoo >= 2, decide no;
	if A is eligible, decide yes;
	decide no.

Section 12 - Thigh tattoos

A thigh-tattoo is a kind of body tattoo. Understand "thigh tattoo" as a thigh-tattoo.
To decide which object is the concealer of (T - a thigh-tattoo):
	decide on a random worn partially-layer-concealing actually dense thigh covering clothing. [as long as it's flagged as at least partially layer concealing it's probably covering the entire tattoo]
To decide which object is the at least partial concealer of (T - a thigh-tattoo):
	if T is listed in the armUses of arms or thighs is listed in the armUses of arms, decide on arms;
	decide on a random worn partially-layer-concealing not-see-through at least partially thigh covering clothing.

Section 13 - Arm tattoos

An arm-tattoo is a kind of body tattoo. Understand "arm tattoo" as a arm-tattoo.
To decide which object is the concealer of (T - an arm-tattoo):
	decide on a random worn partially-layer-concealing actually dense arm covering clothing. [as long as it's flagged as at least partially layer concealing it's probably covering the entire tattoo]
To decide which object is the at least partial concealer of (T - an arm-tattoo):
	if T is listed in the armUses of arms, decide on arms;
	decide on a random worn partially-layer-concealing not-see-through arm covering clothing.


Tattoos Framework ends here.
