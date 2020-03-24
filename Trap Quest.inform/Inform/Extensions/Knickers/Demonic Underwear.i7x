Demonic Underwear by Knickers begins here.

tongue-panties is a knickers. tongue-panties is unique. tongue-panties is biological. The printed name of tongue-panties is "[clothing-title-before]tongue panties[clothing-title-after]". The text-shortcut of tongue-panties is "tgps". Understand "tongue", "panties" as tongue-panties. The armour of tongue-panties is 10.

Figure of white tongue panties is the file "Items/Clothes/Lower/Underwear/Special/tonguepanties1a.png".
Figure of tonguing white tongue panties is the file "Items/Clothes/Lower/Underwear/Special/tonguepanties1b.png".
Figure of black tongue panties is the file "Items/Clothes/Lower/Underwear/Special/tonguepanties2a.png".
Figure of tonguing black tongue panties is the file "Items/Clothes/Lower/Underwear/Special/tonguepanties2b.png".

To decide which figure-name is the clothing-image of (C - tongue-panties):
	if tonguesBlack is true:
		if C is tonguing, decide on figure of tonguing black tongue panties;
		decide on figure of black tongue panties;
	otherwise:
		if C is tonguing, decide on figure of tonguing white tongue panties;
		decide on figure of white tongue panties.

To say ClothingDesc of (C - tongue-panties):
	say "This pair of [tonguesColour] panties has several large red tongues emerging from the inside of the fabric. [TongueStatus of C]".

To say ShortDesc of (C - tongue-panties):
	say "tongued panties".
To say MediumDesc of (C - tongue-panties):
	say "[tonguesColour] [ShortDesc of C]".
To compute SelfExamineDesc of (C - tongue-panties):
	say "A pair of [MediumDesc of C] covers a decent amount of your [ShortDesc of hips]. ".

Definition: tongue-panties is displacable: decide yes.

Definition: tongue-panties is demonic: decide yes.
Definition: tongue-panties is tongued: decide yes.
Definition: tongue-panties is transformation-protected: decide yes.
Definition: tongue-panties is white themed if tonguesBlack is false.
Definition: tongue-panties is black themed if tonguesBlack is true.

To decide which number is the unique outrage of (C - tongue-panties):
	if C is tonguing, decide on 14;
	decide on 4.

To compute periodic effect of (C - tongue-panties):
	if C is crotch-in-place and the player is prone and there is a reactive dangerous monster and tonguesActive > 0:
		say "[bold type][BigNameDesc of C] [bold type]uses its tongues to pull itself out of the way, completely of its own volition![roman type][line break]";
		displace C.

[The codpiece can be obtained in a couple ways. Sometimes crafting, sometimes as a reward from monsters.]
Demon codpiece is a strapon-panties. Demon codpiece is unique. The armour of demon codpiece is 10. The printed name of demon codpiece is "[clothing-title-before]demon lord's codpiece[clothing-title-after]". The soak-limit of demon codpiece is 6. The text-shortcut of demon codpiece is "dlj". demon codpiece is crotch-assless.[ demon codpiece is leather. demon codpiece is totally-exclusive.] Understand "lord", "lords", "lord's", "cod", "piece" as demon codpiece. demon codpiece has a number called charge. The charge of demon codpiece is 1.

Figure of demon codpiece is the file "Items/Clothes/Lower/Underwear/Special/codpiece1.png".

To decide which figure-name is clothing-image of (C - demon codpiece):
	decide on figure of demon codpiece.

[Definition: an demon codpiece is displacable: decide yes.]

To say ShortDesc of (K - demon codpiece):
	say "leather codpiece".

To say selfexamineuniquetitle of (K - demon codpiece):
	say "leather codpiece".

To say ClothingDesc of (K - demon codpiece):
	say "A leather belt with a red pouch designed to keep [if the size of penis > 0]your[otherwise]the wearer's[end if] genitals in place. It doesn[']t do anything to protect [if K is not worn]the wearer's[otherwise]your[end if] [asshole], but a large pentagonal gem on the front prevents anything else from being worn on top of it. [if the number of wenchy monsters in the location of the player > 0 or the dominance of the player < -1]It catches the light strangely, and when you look at it for too long you almost feel like it's taunting you.[otherwise]It appears to be inert, but a weird feeling in your gut tells you that isn't true.[end if]".

To say CodTightenFlav of (K - demon codpiece):
	say "The [printed name of demon codpiece] seems to sense the possibility of sex, and the leather tightens as its gem transforms into a [PenisFlavour of demon codpiece].[line break]".

To say CodLoosenFlav of (K - demon codpiece):
	say "The [printed name of demon codpiece] loosens, and the [PenisFlavour of demon codpiece] transforms back into a gemstone.[line break]";

Definition: A demon codpiece (called P) is dildo-usage:
	if the player is female and futanari fetish is 0, decide yes;
	decide no.

To say PenisFlavour of (K - demon codpiece):
	let N be the strap-length of K;
	if K is dildo-usage:
		say "[PenisSizeFlav N] demonic strap-on";
	otherwise:
		say "[PenisSizeFlav N] demonic [PenisShaftFlav N]".

To say ShortPenisFlav of (K - demon codpiece):[used any time you use "player-penis"]
	if K is dildo-usage:
		say "strap-on";
	otherwise:
		if the sexual-penis-length < 5, say sissy-penis;
		otherwise say manly-penis.

To say ShaftDesc of (K - demon codpiece):[used any time you use "shaft"]
	if K is dildo-usage, say "dildo";
	otherwise say "shaft".

To uniquely set up (C - demon codpiece):
	now the strap-length of C is 7;
	now the magic-type of C is dominance.

Definition: demon codpiece is product: decide yes.

To decide which number is the alchemy key of (C - demon codpiece):
	decide on 23.

Definition: demon codpiece is demonic: decide yes.
Definition: demon codpiece is red themed: decide yes.

To SexChange (J - demon codpiece):
	now J is temptation;
	if the player is female:
		say "The [ShortDesc of J] disappears in a flash of scarlet flames!";
		destroy J;
	otherwise if the size of penis is 0 and cumlust tattoo is actually summonable and there is a worn tattoo:
		say "The [ShortDesc of J] disappears in a flash of scarlet flames, leaving behind a red symbol that lights up as it draws a pair of puckered lips where your penis used to be!"; [###Selkie: ooh, nice! I'd *love* to see an Icarus cut scene for *that*!]
		summon cumlust tattoo;
		destroy J;
	otherwise:
		transform J into pouch-panties.

To decide which number is the strength-influence of (C - demon codpiece):
	decide on the charge of C + (the charge of C / 2) + the magic-modifier of C.

To decide which number is the dexterity-influence of (C - demon codpiece):
	decide on (the charge of C / 2) + the magic-modifier of C.

This is the demon junk reward rule:
	say "Your [ShortDesc of demon codpiece] shifts and the gem lights up, [one of]as if reacting in approval[or]once again showing its opinion of your actions[stopping]! You feel more powerful!";
	increase the charge of demon codpiece by 1;
	increase the strap-length of demon codpiece by 1;
	Dignify 50.

This is the demon junk punishment rule:
	let F be a random number between 1 and 3;
	[if the player is female, now F is 1;]
	let J be a random worn demon codpiece;
	say "Your [printed name of J] tightens painfully and the gem lights up, [one of]as if reacting in disapproval of your actions[or]once again showing its opinion of your actions[stopping]!";
	if the size of penis > min penis size:
		PenisDown the charge of J;
		say "Your penis [Shrink]s into a [ShortDesc of penis]!";
	otherwise if the raw dexterity of the player + the raw strength of the player > 6:
		if a random number between 1 and 2 is 1:
			StrengthDown the charge of J;
			say "Strength and definition fade from your muscles, surging upward through your body before settling in your chest!";
			BustUp the charge of J;
		otherwise:
			DexDown the charge of J;
			say "Flexibility fades from your joints, swirling around inside you before settling decisively in your hips!";
			HipUp the charge of J;
	otherwise if F is 1:
		if tg fetish >= 1:
			say DefaultSexchangeFlav;
			SexChange the player;
		otherwise:
			SexChange J;
		if the player is female:
			if the number of worn crotch tattoos is 0 and there is a worn tattoo:
				say "You feel a piercing pain above your [vagina], and look down to see the words 'Xavier's Cunt' burned into your skin.";
				summon xavier's cunt tattoo;
			otherwise:
				VaginalSexAddictUp 5;
				Arouse 5000;
				say "You feel a sudden desperate need to jam a giant cock into your pussy!";
		let M be a random alive mechanic;
		if M is monster:
			XavierUp M by 2;
	otherwise:
		IntDown 2;
		say "A fog settles over your mind, permanently impairing your ability to think about... just about anything, really.".

acolyte-undergarment is a crotchless-panties. acolyte-undergarment is unique. The text-shortcut of acolyte-undergarment is "audg". acolyte-undergarment is metal. The soak-limit of acolyte-undergarment is 0. Understand "gold", "golden", "undergarment", "acolyte", "acolyte's" as acolyte-undergarment. acolyte-undergarment has a number called charge. The charge of acolyte-undergarment is usually 0. Acolyte-undergarment is top-exclusive. The printed name of acolyte-undergarment is "[clothing-title-before]acolyte's undergarment[clothing-title-after]".

Figure of acolyte undergarment is the file "Items/Clothes/Lower/Underwear/Skimpy/Crotchless/crotchless7.jpg".

To decide which figure-name is the clothing-image of (C - acolyte-undergarment):
	decide on figure of acolyte undergarment.

To say ShortDesc of (B - acolyte-undergarment):
	say "acolyte's undegarment".

To say ClothingDesc of (C - acolyte-undergarment):
	say "A pair of crotchless golden 'underwear,' with [if the player is male]two matching strings of rubies[otherwise]a string of rubies[end if][if the player is female and C is worn] that stimulate your [vagina] as you walk[otherwise if C is worn]that fit around your [ShortDesc of penis][otherwise]down the middle[end if]. It hides absolutely nothing.[if the charge of C > 0][line break][end if][if the charge of C > 4]The skimpy 'fabric' is warm to the touch, and you can tell it has absorbed a great deal of power.[otherwise if the charge of C > 1]The skimpy 'fabric' is slightly warm to the touch, and you can tell it has absorbed a bit of power.[otherwise]The skimpy 'fabric' is surprisingly cool to the touch.[end if]";

Definition: acolyte-undergarment is blessable: decide no.
Definition: acolyte-undergarment is demonic: decide yes.
Definition: acolyte-undergarment is yellow themed: decide yes.
Definition: acolyte-undergarment is walking-stimulating: decide yes.

To MagicSteal (C - acolyte-undergarment):
	if the charge of C < 5:
		say "Your [printed name of C] absorbs the magical energy!";
		increase the charge of C by 1;
		if the charge of C is 5:
			say "A surge of warmth passes through the fabric, and you get the feeling it has reached maximum power.";
	otherwise:
		increase the magic-power of the player by 1.

To decide which number is the vaginal-sex-addiction-influence of (C - acolyte-undergarment):
	decide on 1 - the magic-modifier of C.

This is the worshipper masochism rule:
	if acolyte-undergarment is worn:
		say "The gemstones on your [ShortDesc of acolyte-undergarment] glint in response to your orgasm, and a wave of pain wracks your body.";
		BodyRuin 1;
		PainUp 1.
The worshipper masochism rule is listed last in the orgasm fatigue effects rules.

To decide which number is the dexterity-influence of (C - acolyte-undergarment):
	if the charge of C < 5:
		if the magic-modifier of C < 0, decide on the magic-modifier of C;
		decide on 0;
	otherwise:
		if the magic-modifier of C > 0, decide on the magic-modifier of C + 2;
		decide on 2.

Demonic Underwear ends here.
