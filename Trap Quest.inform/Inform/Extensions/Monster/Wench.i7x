Wench by Monster begins here.

A wench is a kind of monster. A wench is usually intelligent. A wench is usually female. A wench has a number called suffocation. The wench has a number called guard-obedience. The leftover-type of a wench is usually 102. A wench has a number called creampieTimer.

A horny-wench is a kind of wench.

Definition: a wench is willing to do oral: decide yes.

Definition: a wench is raunchy: decide yes.

Definition: a wench is wenchy: decide yes.

Definition: a wench is dungeon dwelling:
	if diaper quest is 0 and a2m fetish >= 2, decide yes;
	decide no.

Definition: a wench is willing to charm snakes:
	if diaper quest is 1, decide no;
	if the player is the donator, decide yes;[Maybe bump this up if a new donator thing is coming out.]
	decide no.

To say ShortDesc of (M - a wench):
	say "wench".

Understand "slave", "girl" as a wench.

Figure of kidnapped wench is the file "NPCs/Dungeon/Wench/wench1.png".
Figure of lost wench is the file "NPCs/Dungeon/Wench/wench2.png".
Figure of creampied wench is the file "NPCs/Dungeon/Wench/wench3.png".
Figure of horny wench is the file "NPCs/Dungeon/Wench/wench4.png".

Figure of Wench Interact 1 is the file "Special/Cutscene/cutscene-wench-interact1.png".
Figure of Wench Interact 2 is the file "Special/Cutscene/cutscene-wench-interact2.png".
Figure of Wench Interact 3 is the file "Special/Cutscene/cutscene-wench-interact3.png".
Figure of Wench Interact 4 is the file "Special/Cutscene/cutscene-wench-interact4.png".
Figure of Wench Interact 5 is the file "Special/Cutscene/cutscene-wench-interact5.png".
Figure of Wench Interact 6 is the file "Special/Cutscene/cutscene-wench-interact6.png".
Figure of Wench Interact 7 is the file "Special/Cutscene/cutscene-wench-interact7.png".
Figure of Wench Interact 8 is the file "Special/Cutscene/cutscene-wench-interact8.png".
Figure of Wench Interact 9 is the file "Special/Cutscene/cutscene-wench-interact9.png".
Figure of Wench Interact 10 is the file "Special/Cutscene/cutscene-wench-interact10.png".
Figure of Wench Interact 11 is the file "Special/Cutscene/cutscene-wench-interact11.png".
Figure of Wench Interact 12 is the file "Special/Cutscene/cutscene-wench-interact12.png".
Figure of Wench Interact 13 is the file "Special/Cutscene/cutscene-wench-interact13.png".
Figure of Wench Interact 14 is the file "Special/Cutscene/cutscene-wench-interact14.png".

Figure of Wench Cutscene 1 is the file "Special/Cutscene/cutscene-wench-climax1.png".
[Figure of Wench Cutscene 2 is the file "Special/Cutscene/cutscene-wench-sex1.png".]
Figure of Wench Cutscene 3 is the file "Special/Cutscene/cutscene-wench-steal1.png".
Figure of Wench Cutscene 4 is the file "Special/Cutscene/cutscene-wench-skill1.png".
[Number 5 is used for cultist too, so has been moved to the TQ / DQ separated image definitions files]
Figure of Wench Cutscene 6 is the file "Special/Cutscene/cutscene-wench-fuck2.png".
Figure of Wench Cutscene 7 is the file "Special/Cutscene/cutscene-wench-fuck3.png".
Figure of Wench Cutscene 8 is the file "Special/Cutscene/cutscene-wench-drink1.png".

To decide which figure-name is the monster-image of (M - a creampied wench):
	decide on figure of creampied wench.
To decide which figure-name is the monster-image of (M - a lost wench):
	decide on figure of lost wench.
To decide which figure-name is the monster-image of (M - a wench):
	decide on figure of kidnapped wench.
To decide which figure-name is the monster-image of (M - a horny-wench):
	decide on figure of horny wench.
To decide which figure-name is the oral-sex-monster-image of (M - a wench):
	decide on figure of wench cutscene 7.

creampied wench is a wench. The text-shortcut of creampied wench is "cwe".
To say MediumDesc of (M - creampied wench):
	say "creampied wench".
lost wench is a wench. The text-shortcut of lost wench is "lwe".
To say MediumDesc of (M - lost wench):
	say "lost wench".
kidnapped wench is a wench. The text-shortcut of kidnapped wench is "kwe".
To say MediumDesc of (M - kidnapped wench):
	say "kidnapped wench".

desperate wench is a horny-wench. The text-shortcut of desperate wench is "dwe".
To say MediumDesc of (M - desperate wench):
	say "desperate wench".

To say MonsterDesc of (M - a wench):
	let K be a random knickers carried by M;
	let C be the creampieTimer of M;
	if M is horny-wench:
		if bukkake fetish is 1:
			say "This [man of M] has a glazed look in [his of M] eye, and from [his of M] [if lady fetish is 2]tiny penis and jizz-coated figure[otherwise]voluptuous, jizz-coated figure[end if], [he of M]'s definitely the type you'd expect to be passed around down here. [big he of M] is wearing a white blouse, which is unbuttoned and completely soaked in [if C > 0]the same pearly white stuff running out of [his of M] [HoleDesc of M]. With one hand constantly between [his of M] legs, vigorously working [his of M] [semen] loaded[otherwise]pearlier, whiter stuff. One of [his of M] hands is constantly between [his of M] legs,  vigorously working [his of M][end if] [HoleDesc of M] as [he of M] wanders around with a bow-legged stride."; [not sure desperate wenches can steal, so left panty bits out]
		otherwise:
			if C > 0, say "This [man of M] has a glazed look in [his of M] eye, a [if lady fetish is 2]tiny penis[otherwise]voluptuous figure[end if], and both hands buried in [his of M] crotch. [big his of M] beach blonde hair and white blouse, which appears to have been rather forcefully unbuttoned, are both soaked and plastered to [his of M] body. [if K is clothing]The [ShortDesc of K] [he of M] took from you (displaced for convenience) have a large dark spot where [semen] has drooled out of [his of M] [HoleDesc of M].[otherwise]The lower half of [his of M] body has nothing covering it at all, leaving [his of M] worn out, [semen]-drooling [HoleDesc of M] on full display.[end if]";
			otherwise say "This [man of M] has a glazed look in [his of M] eye, a [if lady fetish is 2]tiny penis[otherwise]voluptuous figure[end if], and both hands buried in [his of M] crotch. [big his of M] beach blonde hair and white blouse, which appears to have been rather forcefully unbuttoned, are both soaked and plastered to [his of M] body. [if K is clothing]The [ShortDesc of K] [he of M] took from you (displaced for convenience) offer a small amount of modesty for [his of M] lower body.[otherwise]The lower half of [his of M] body has nothing covering it at all, leaving [his of M] worn out, [HoleDesc of M] on full display.[end if]";
	otherwise if M is kidnapped wench:
		if bukkake fetish is 1:
			if lady fetish is 2:
				if C > 0, say "This twink is completely naked and plastered with [semen], [if K is clothing]aside from [his of M] stolen [ShortDesc of K][otherwise]and if the bright pink cage locked around [his of M] cock is any indication, [he of M] doesn't normally get to be on top[end if]. [big his of M] skin is [one of]pale[or]a pale brown[sticky random], and his beach blonde hair is unkempt and messy. [big he of M] wears a look on [his of M] face that says 'Please be gentle!', although the [semen] freely dribbling out of [his of M] asshole and [if K is clothing]soaking through [his of M] stolen [ShortDesc of K][otherwise]down [his of M] legs[end if] makes it pretty clear [he of M] tends to get it pretty rough. The words 'SISSY CUMDUMP' are tattooed across [his of M] left ass cheek.";
				otherwise say "This twink is completely naked and plastered with [semen], [if K is clothing]aside from [his of M] stolen [ShortDesc of K][otherwise]and if the bright pink cage locked around [his of M] cock is any indication, [he of M] doesn't normally get to be on top[end if]. [big his of M] skin is [one of]pale[or]a pale brown[sticky random], and his beach blonde hair is unkempt and messy. [big he of M] wears a look on [his of M] face that says 'Please be gentle!', although [unless K is clothing][his of M] reddened sphincter[otherwise]the hand-shaped welt on [his of M] cheek[end if] makes it pretty clear [he of M] tends to get it pretty rough. The words 'SISSY CUMDUMP' are tattooed across [his of M] left ass cheek[if K is clothing], and [he of M] is wearing stolen [ShortDesc of K][end if].";
			otherwise:
				if C > 0, say "This [man of M] is completely naked and plastered with [semen]. If the purple bruises on [his of M] wrists and ankles are any indication, [he of M]'s probably spent most of [his of M] time here cooped up in chains. [big his of M] skin is [one of]pale[or]a pale brown[sticky random], and [his of M] beach blonde hair is unkempt and messy. [big he of M] wears a look on [his of M] face that says 'Please be gentle!', although the [semen] freely dribbling out of both [his of M] holes and [if K is clothing]soaking through [his of M] stolen [ShortDesc of K][otherwise]down [his of M] legs[end if] makes it pretty clear [he of M] tends to get it rough. A small tattoo across the small of [his of M] back reads 'PROPERTY'.";
				otherwise say "This [man of M] is completely naked and plastered with [semen]. If the purple bruises on [his of M] wrists and ankles are any indication, [he of M]'s probably spent most of [his of M] time here cooped up in chains. [big his of M] skin is [one of]pale[or]a pale brown[sticky random], and [his of M] beach blonde hair is unkempt and messy. [big he of M] wears a look on [his of M] face that says 'Please be gentle!', although the hand-shaped welt on [his of M] cheek makes it pretty clear [he of M] tends to get it rough. A small tattoo across the small of [his of M] back reads 'PROPERTY'[if K is clothing], and [he of M] is wearing stolen [ShortDesc of K][end if].";
		otherwise:
			if lady fetish is 2, say "This twink is completely naked, [if K is clothing]aside from [his of M] stolen [ShortDesc of K][otherwise]and if the bright pink cage locked around [his of M] cock is any indication, [he of M] doesn't normally get to be on top[end if]. [big he of M] has pale skin, long, beach blonde hair and a look on [his of M] face somewhere between excitement and total exhaustion. The words 'SISSY CUMDUMP' are tattooed across [his of M] left ass cheek, and [if C > 0][semen] is dribbling freely out of [his of M] asshole[otherwise][his of M] hole seems like its recently taken a pounding.";
			otherwise say "This [man of M] is [if K is clothing]almost [end if]completely naked, and if the purple bruises on [his of M] wrists and ankles are any indication, [he of M]'s probably spent most of [his of M] time here cooped up in chains. [big he of M] has pale skin, beach blonde hair and a look on [his of M] face somewhere between excitement and total exhaustion. [if K is clothing]There is a small tattoo across the small of [his of M] back, which is partially obscured by the [ShortDesc of K] [he of M] 'received' from you[otherwise]A small tattoo across the small of [his of M] back reads 'PROPERTY', and [his of M] fuckholes look like they've been subjected to repeated poundings[end if].";
	otherwise if M is lost wench:
		if bukkake fetish is 1, say "This [man of M] is plastered with cum from head to toe, [if K is clothing]wearing stolen [ShortDesc of K] and a white blouse, both of which are as soaked as [he of M] is[otherwise]completely naked except for a white blouse, which is just as soaked as [he of M] is[end if]. [big his of M] lips are caked with a mixture of smudged purple lipstick and [semen], and [his of M] eyes are framed by runny, streaked eye shadow. [big he of M] has pale white skin, a beach blonde ponytail, [if C > 0][semen] leaking out of [his of M] [HoleDesc of M] [end if]and a look of genuine defeat and exhaustion on [his of M] face.";
		otherwise say "This [man of M] is wearing [if K is clothing]a [ShortDesc of K] and [end if]a white blouse, which is totally soaked through. [big his of M] eyes are framed by runny, streaked eye shadow, and [his of M] purple lipstick is unevenly smudged around the corners of [his of M] mouth. [big he of M] has pale white skin, a beach blonde ponytail, [if C > 0][semen] leaking out of [his of M] [HoleDesc of M] [end if]and a look of genuine defeat and exhaustion on [his of M] face.";
	otherwise:
		if bukkake fetish is 1:
			if lady fetish is 2:
				if C > 0, say "This [man of M] is wearing a white blouse with a bra underneath it. [big he of M] is [if K is clothing]completely soaked with [semen], and although [he of M] is wearing a [ShortDesc of K], it appears to have been pulled aside rather roughly to expose [his of M] recently creampied[otherwise]Otherwise completely naked, leaving your sure there isn't an inch of [his of M] body that's not plastered with pearly white [semen], including the inside of [his of M] exposed[end if] asshole. In fact, if there's a clean part of [his of M] body, it's [his of M] face, which is caked with heavy makeup that's been smudged in only a few places. [big his of M] hair has been drawn back into a beach blonde ponytail, leaving you an impression of a sissy slut on the way back from a night on the town.";
				otherwise say "This [man of M] is wearing a white blouse with a bra underneath it. [big he of M] is [if K is clothing]completely soaked with [semen], and although [he of M] is wearing a [ShortDesc of K], it appears to have been pulled aside rather roughly to expose [his of M] asshole[otherwise]Otherwise completely naked, leaving your sure there isn't an inch of [his of M] body that's not plastered with pearly white [semen][end if]. In fact, if there's a clean part of [his of M] body, it's [his of M] face, which is caked with heavy makeup that's been smudged in only a few places. [big his of M] hair has been drawn back into a beach blonde ponytail, leaving you an impression of a sissy slut on the way back from a night on the town.";
			otherwise:
				if C > 0, say "This [man of M] is wearing a white blouse, which looks like it was pulled open rather roughly to expose [his of M] breasts. [big his of M] is completely naked, [if K is clothing]aside from a [ShortDesc of K] that have been pulled aside, [end if]leaving you sure that there isn't an inch of [his of M] body that isn't plastered with pearly white [semen]. [big his of M] crotch is no exception, and [his of M] pussy is freely leaking out its most recent creampie. The only clean part of [his of M] body is [his of M] face, which is caked with heavy makeup that's been smudged in only a few places. [big his of M] hair has been drawn back into a beach blonde ponytail, and the look on [his of M] face is somewhere between arousal and total exhaustion.";
				otherwise say "This [man of M] is wearing a white blouse, which looks like it was pulled open rather roughly to expose [his of M] breasts. [big his of M] is completely naked, [if K is clothing]aside from a [ShortDesc of K] that have been pulled aside, [end if]leaving you sure that there isn't an inch of [his of M] body that isn't plastered with pearly white [semen]. The only clean part of [him of M] is [his of M] face, which is caked with heavy makeup that's been smudged in only a few places. [big his of M] hair has been drawn back into a beach blonde ponytail, and the look on [his of M] face is somewhere between arousal and total exhaustion.";
		otherwise:
			if lady fetish is 2, say "This [man of M] is wearing a white blouse with a bra underneath it. [big he of M] is [if K is clothing]also wearing a [ShortDesc of K], pulled aside,[otherwise]otherwise completely naked,[end if][if C > 0] with [semen] dribbling freely from [his of M][otherwise]leaving [him of M] with an[end if] exposed asshole. [big he of M] has the words 'SISSY SLUT' tattooed across [his of M] cheek, and [his of M] long, beach blonde ponytail and heavily decorated face leave the impression that this 'sissy slut' is back from a night on the town.";
			otherwise say "This [man of M] is wearing a white blouse, which looks like it was pulled open rather roughly to expose [his of M] breasts. [big he of M] is [if K is clothing]also wearing a [ShortDesc of K], pulled aside,[otherwise]otherwise completely naked,[end if][if C > 0] with [semen] dribbling freely from [his of M][otherwise]leaving [him of M] with an[end if] exposed [vagina] and [asshole]. [big his of M] hair has been drawn back into a beach blonde ponytail, and the look on [his of M] heavily decorated face is somewhere between arousal and total exhaustion.".

To say MonsterComment of (M - a wench):
	say "[line break][variable custom style][if the bimbo of the player < 5 and the player is gendered male][one of]Man, I'd fuck the shit out of that chick! Looks like somebody already beat me to it though...[or][big he of M]'s hot, but I don't like sloppy seconds.[stopping][otherwise if the bimbo of the player < 5][one of]Oh god, what happened to this [man of M]? Is that going to happen to me?[or]So that's how [men of M] are treated here. Disgusting.[stopping][otherwise if the bimbo of the player < 8][one of][big he of M] looks kind of weak. I'd probably win any fight with [him of M].[or]I don't think it would be hard to beat [him of M] in a fight.[in random order][otherwise if the bimbo of the player < 11][one of]Thinking of what must have happened to [him of M] so far is exciting! I should probably stop...[or]Am I going to end up like that? Doesn't seem that bad, really.[or][big he of M] looks like [he of M] could really use some clothes.[in random order][otherwise if pregnancy fetish is 1]Hee hee, I bet [he of M]'ll get pregnant from having all that cum in [his of M] pussy.[otherwise if the bimbo of the player < 14][one of][big he of M] looks like [he of M]'s had a lot of fun here.[or][big he of M] looks like [he of M] knows how to party![in random order][otherwise][one of]Maybe [he of M]'s another player. If I help [him of M] get out, maybe [he of M]'ll fuck me as a reward![or][big he of M] looks like [he of M] knows how to PARTY![stopping][end if][roman type][line break]".

To set up (M - a wench):
	reset M;
	now the monstersetup of M is 1;
	add white-bodice to the banishItems of M, if absent;
	add a random bag lunch to the tradableItems of M;
	now the raw difficulty of M is the starting difficulty of M;
	now the creampieTimer of M is 300;
	now the health of M is the maxhealth of M.

To set up (M - a horny-wench):
	reset M;
	now the monstersetup of M is 1;
	now the raw difficulty of M is the starting difficulty of M + 1;
	now the creampieTimer of M is 550;
	now the health of M is the maxhealth of M.

To decide which number is the starting difficulty of (M - a wench):
	decide on 4.

Definition: a wench is human: decide yes.

To say LeftoverDesc (N - 102):
	say "An unconscious wench on the ground has a [if pregnancy fetish is 1]pregnant looking[otherwise]fully stretched[end if] belly and [semen] slowly flowing out of [his of a random wench] asshole.[line break]";

To compute unique periodic effect of (M - wench):
	decrease the creampieTimer of M by 1;
	if the creampieTimer of M <= 0:
		if M is in the location of the player and M is not penetrating a body part:
			if M is asleep, say "[BigNameDesc of M] mumbles as a glob of [semen] rolls out of [his of M] [HoleDesc of M] and onto the floor.";
			otherwise say "[BigNameDesc of M] shivers as a glob of [semen] drips out of [his of M] [HoleDesc of M] onto the floor.";
		SemenPuddleUp 1 in (the location of M);
		now the creampieTimer of M is 30;
		if the class of the player is maid, now the creampieTimer of M is 20;
		if M is horny-wench, now the creampieTimer of M is the creampieTimer of M / 2.

Part 1 - Misc Flavour

To say SummoningFlav of (M - a wench):
	if M is in the location of the player:[TODO: diaper quest]
		say "A space opens up in the centre of the circle, and a single hand forces its way through! You watch as a naked [man of M] claws [his of M] way out of the grasp of whatever is on the other side of the portal [if M is horny-wench]moaning uncontrollably[otherwise]holding back a moan[end if] as [he of M] rips [one of]a tentacle out of [his of M] [HoleDesc of M][or]a muscular arm away from [his of M] crotch[at random] and staggers to [his of M] feet. The dark energy dissipates as the portal closes up.";
	otherwise:
		if M is horny-wench, say "You hear loud moaning coming from another part of the dungeon.";
		otherwise say "You hear the sound of [one of]moaning[or]squelching[or]wet footsteps[purely at random] coming from another part of the dungeon.".

To say PresentFriendlyAcceptanceFlav of (M - a wench):
	say "[speech style of M]'[one of]I'm not going to refuse a request like that... thank you so much!'[or]Wow, you really are a cum addict aren't you? Well, I'm not going to stop you!'[stopping][roman type][line break]".

To say DiaperReaction of (M - a wench):
	if there is a currently visible diaper or the player is shameless:
		if M is unfriendly:
			say "[BigNameDesc of M] giggles manically.[line break][speech style of M]'[if M is penetrating a body part]Seriously?! How entirely absolutely pathetic.'[otherwise if the player is upright]Are you sure a disgusting baby like you can beat me?'[otherwise]Oh this is unreal! Did you just do what I think you did?!'[end if][roman type][line break]";
		otherwise:
			bore M;
			say "[speech style of M]'Eew, gross!'[roman type][line break][BigNameDesc of M] does not look impressed.[line break][speech style of M]'[if M is interested]I'm sorry but you're on your own.'[otherwise if the number of interested friendly monsters is 0]No wonder nobody likes you.'[otherwise]Can't you find somewhere private to be a disgusting baby?'[end if][roman type][line break]";
			FavourDown M by 1;
		if the player is modest, say "[variable custom style][if the player is able to speak]'This doesn't usually happen, I swear!'[otherwise]I can't even tell [him of M] that this isn't what I usually wear![end if][roman type][line break]";
		otherwise say "You turn bright red.";
	otherwise:
		say "It seems that [NameDesc of M] is unaware of what you've just done.".

To compute (M - a monster) stomping (N - a wench):
	if M is in the location of the player:
		say "With lightning speed [NameDesc of M] grabs [NameDesc of N] and starts fucking [his of N] ass furiously. [big he of N] screams in both pleasure and terror and [he of M] starts coming inside [his of N] within seconds. [big his of N] belly expands in front of [him of N] as [he of M] fills [him of N] up. After [he of N] is full, [NameDesc of M] tosses [him of N] to the ground, where [he of N] promptly faints.";
		if mythical creature fetish is 1 and lady fetish is 0, cutshow figure of minotaur cutscene 1 for N;
	otherwise:
		say "You hear a [boy of N] shout out in a mixture of ecstasy and terror from [if N is nearby]nearby![otherwise]somewhere in the dungeon![end if]";
	destroy N;
	let L be a random off-stage leftover;
	now L is in the location of M;
	now the leftover-type of L is the leftover-type of N.

To say honey of (M - a wench):
	if the class of the player is santa's little helper:
		say "snowflake";
	otherwise:
		say "[one of]honey[or]cutie[or]babe[at random]".

To say NastyTrapReactFlav of (M - a wench):
	say "[BigNameDesc of M] smiles weakly.[line break][speech style of M]'Yeah, [one of]that's happened to me too[or]that can happen around here. You get used to the taste eventually[or]I can't count the times that's happened to me too[or]this place sucks, doesn't it[cycling].'[roman type][line break]".
To say LewdTrapReactFlav of (M - a wench):
	say "[BigNameDesc of M] [one of]blushes[or]turns red[or]is getting more turned on[at random].[line break][speech style of M]'[one of]I didn't realise you liked it that much.'[or]You're really enjoying yourself, huh?'[or]Are you having fun? You're making it rather tempting to join you.'[in random order][roman type][line break]";
	moderateHumiliate;
	FavourDown M with consequences.

Part 2 - Perception

To decide which number is the bimbo tolerance of (M - a wench):
	if there is a worn demon codpiece, decide on 1;
	decide on 14.

Definition: a horny-wench is objectifying the player: decide yes.

To decide which number is the outrage tolerance of (M - a wench):
	decide on 5.

To say DisapprovalFlav of (M - a wench):
	say "[BigNameDesc of M] [one of]snarls[or]harrumphs[in random order].[line break][speech style of M]'[one of]Are you trying to make fun of me, choosing to look like that?!'[or]Are you trying to provoke me?'[or]If you're appearing like that in front of me, you must want me to [']play['] with you, right?'[in random order][roman type][line break]".

To compute appearance assessment of (M - a wench):
	if there is a worn currently visible messed knickers:
		say "[speech style of M]'Eww, gross!!! Get away from me, poopy butt!'[roman type][line break][BigNameDesc of M] quickly moves away from you.";
		FavourDown M by 2;
		distract M;
		if there is worn perceived unmessed knickers, compute state check of a random worn messed knickers;
	otherwise if the appearance of the player > the outrage tolerance of M or M is unfriendly:
		FavourDown M;
		if M is unfriendly:
			say "[speech style of M]'[one of]I think it's time to remind you that you're my bitch.'[or]You again! You want some more, huh?'[in random order][roman type][line break]";
			alwayscutshow figure of wench interact 9 for M;
		otherwise if M is groping:
			compute grope of M;
		otherwise if M is buddy:
			say "[speech style of M]'[one of]Oh... hi. You're not seriously planning on wandering around here like that are you? You look even worse than me.'[or]Oh hey there! Wow... you're sure looking rather... provocative. Don't tell me you like this place?'[in random order][roman type][line break]";
		otherwise:
			say "[speech style of M]'[one of]Oh gosh, you look so... lewd. You're making me feel funny... down there...'[or]Wow. If even a brave adventurer like you looks like that, maybe we should all just give up and screw each other until we're mindless bimbos...'[in random order][roman type][line break]";
	otherwise if the player is top-wardrobe-malfunctioning:
		compute tq nip slip reaction of M;
	otherwise:
		if M is ally, say "[speech style of M]'[one of]Hey again. Let's stick together.'[or]Oh hey! I'm glad to see you're still around.'[in random order][roman type][line break]";
		otherwise say "[speech style of M]'[one of]Who... who are you? You're friendly, right? [big please] don't say you're going to try and fuck me too?'[or]Hi there... *whimper*'[stopping][roman type][line break]".

To compute perception of (M - a wench):
	now M is interested;
	let PSRB be a random carried probably-serve-ready bottle;
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed][one of] even though [he of M] is in no better state [himself of M][or][or][or][or][cycling][end if].";
	if the latex-transformation of the player > 6: [TODO maybe horny-wenches can have sex with male doll?]
		say "[big he of M] seems a [if M is horny-wench]bit aroused but[otherwise]little creeped out by your appearance and[end if] leaves you alone.";
		bore M;
	otherwise if M is horny-wench:
		if the size of penis > 7 and the number of worn chastity cages is 0:
			say "[big he of M] seems to be about to demand something of you, but then sees your [ShortDesc of penis] and decides it's probably best to leave you alone.";
			bore M;
		otherwise:
			let R be a random number from -10 to the semen taste addiction of the player;
			say "[speech style of M]'I can't take it any more... [please] there's so much cum and I'm so horny... I need you to lick it out of me...'[roman type][line break][if R > 9][one of]The sight and smell of all the [semen] entices you for a moment, and in a lapse of judgement you drop to your knees.[or]The familiar sight and smell of the [semen] makes you instinctively drop to your knees.[stopping][otherwise]Uh-oh, it looks like [he of M] means to force you![end if]";
			now M is interested;
			anger M;
			now the sex-length of M is 2;
			if R > 9:
				try kneeling;
	otherwise if M is objectifying the player:
		if the player is flying:
			say "[speech style of M]'What are you doing up there, you crazy bitch?!'[roman type][line break]";
		otherwise:
			if the previous-objectification of M is 0, say "Something seems to change in the way [NameDesc of M] is looking at you.[line break][speech style of M]'We should fuck.'[roman type][line break]";
			otherwise say "[speech style of M]'You look like a slut who enjoys it rough. Let's see if I'm right!'[roman type][line break]";
		now M is interested;
		anger M;
		now the sex-length of M is 2;
		alwayscutshow figure of wench interact 9 for M;
	otherwise if PSRB is bottle and the waitress-boredom of M <= 0 and M is not uniquely unfriendly:
		say "[big he of M] spots your [PSRB].[line break][speech style of M]'What's on the menu today, [honey of M]?'[roman type][line break]";
		calm M;
	otherwise if there are held desirable knickers and the number of knickers carried by M is 0:
		let K be a random held desirable knickers;
		if M is buddy:
			say "[speech style of M]'I'm very jealous of your [ShortDesc of K]. [if M is ally]Where did you get it?'[otherwise]You should hide that when I'm around otherwise I might just have to fight you for it! Ha ha...'[end if][roman type][line break]";
			FavourDown M;
		otherwise if the size of penis > 7 and the number of worn chastity cages is 0:
			say "[big he of M] seems to take an aggressive stance when [he of M] notices your [printed name of K], but then sees the huge bulge in the front and decides to leave you alone.";
			bore M;
		otherwise:
			now M is interested;
			anger M;
			now the sex-length of M is 2;
			say "[speech style of M]'... that [TypeTitle of K]... where did you get it? Give it to me!'[roman type][line break]";
			alwayscutshow figure of wench interact 5 for M;
	otherwise:
		compute appearance assessment of M;
	display interaction of M.

To display interaction of (M - a wench):
	if M is horny-wench:
		if M is interested, alwayscutshow figure of wench interact 8 for M;
		otherwise alwayscutshow figure of wench interact 3 for M;
	otherwise if M is guardian:
		alwayscutshow figure of wench interact 7 for M;
	otherwise if M is ally:
		alwayscutshow figure of wench interact 1 for M;
	otherwise if M is buddy:
		alwayscutshow figure of wench interact 6 for M;
	otherwise if M is acquaintance:
		alwayscutshow figure of wench interact 2 for M;
	otherwise if M is friendly:
		alwayscutshow figure of wench interact 4 for M;
	otherwise if M is uninterested:
		alwayscutshow figure of wench interact 10 for M.

Part 3 - Protection

To compute (M - a wench) protecting against (X - a monster):
	if M is ally:
		if the player is upright and M is guardian:
			compute M standard fighting against X;
		otherwise:
			compute default protecting of M;
	otherwise if X is male or X is unintelligent or the player is at least partially monster stuck:
		say "[speech style of M]'Eek!'[roman type][line break][BigNameDesc of M] turns tail and runs for safety, abandoning you.";
		alwayscutshow figure of wench interact 11 for M;
		now the scared of M is 30;
		compute monstermotion of M;
	otherwise:
		say "[speech style of M]'Can't we all just get along?'[roman type][line break][BigNameDesc of M] clearly doesn't want to get involved.";
		alwayscutshow figure of wench interact 12 for M;
		distract M.

To say AllyDamageFlav of (M - a wench) on (X - a monster):
	say "[speech style of M]'Take this[one of], meanie[or][stopping]!'[roman type][line break][BigNameDesc of M] weakly slaps the [X]!".

Part 4 - Combat

To say MercyReaction of (M - a wench):
	say "Your attempts to beg are muffled by [NameDesc of M][']s ass[if lady fetish < 2] and pussy[end if] in your face!".

Report dropping clothing in the presence of a wench:
	let M be a random wench in the location of the player;
	if M is not objectifying the player and the noun is desirable and the number of knickers carried by M is 0:
		compute M WenchReceiving the noun.

To compute (M - a wench) WenchReceiving (K - a knickers):
	say "[BigNameDesc of M] takes the [printed name of K] and [if M is unfriendly]seems happy[otherwise]hugs you warmly[end if].";
	now M is interested;
	calm M;
	FavourUp M by 4;
	now M is carrying K.

Section 1 - Attack

To compute kneeling reaction of (M - a wench):
	if the guard-obedience of M is 0:
		say "[one of][BigNameDesc of M] walks over to you, momentarily stopping the flow of cum out of [his of M] [HoleDesc of M] by cupping a hand to [his of M] entrance.[or][BigNameDesc of M] gently fingers [himself of M] as [he of M] strides over to you, grinning as [semen] slowly leaks through [his of M] fingers.[or]A grin spreads across [NameDesc of M][']s plastered face as [he of M] cups [his of M] hand to [his of M] [HoleDesc of M], stopping the flow of [semen] down [his of M] legs.[or][BigNameDesc of M] grins, pointing at the thick glob of [semen] rolling down [his of M] leg, and then at you.[or][BigNameDesc of M] looms over you, [his of M] cum dripping [HoleDesc of M] level with your head. [big he of M] leers down at you, grinning.[in random order]";
		if there are desirable knickers and M is not objectifying the player:
			say "[speech style of M]'Drop your panties on the ground or I'll rip them off you, bitch. Unless you'd rather [bold type]offer[line break][speech style of M] me your tongue.'[roman type][line break]";
		otherwise:
			if M is horny-wench:
				say "[speech style of M][one of]Finally, a bigger slut than me...[or]Yes! Yes! I'm so horny![or]Fuck! Fuck yes, stay down there![or]Don't get up, I really need your mouth. I need it so fucking bad...[or]You're going to help me? Thanks so much...[at random][roman type]";
			otherwise:
				say "[speech style of M]'[if the class of the player is maid][one of]Hey maid, I'm dirty, come clean me up.'[or]Open your mouth baby, I need help cleaning up.'[in random order][otherwise if the player is male and there is a worn chastity cage][one of]You're not going to fuck anybody when you're locked up like that. Now open up.'[or]Oooh, is poor widdle baby locked up in a cage? Don't worry, I've got milk for you right here.'[or]Hmm, I bet you'd like to fuck this [pussy]. Too bad you're all caged up! Now open wide.'[in random order][otherwise if the player is possessing a penis and the size of penis <= 3][one of]Hey baby dick, how'd you like to eat my [pussy]? That's probably the only action you'll ever get from a [man of M].'[or]With a [player-penis] that tiny, I bet you can't even cum. Luckily, you can still help ME cum if you lend me your mouth for a minute.'[or]Wow, what a tiny [player-penis]! You'll never satisfy anyone with that! I really hope your tongue isn't that small.'[or]If you open your mouth, I'll give you a taste of a real man's cum.'[in random order][otherwise if the size of penis > 5][one of]Wow, a [player-penis] that big and you're still on your knees? I'm going to enjoy having you eat my [pussy].'[or]I bet you thought you were going to fuck me. Wrong! Now open up, bitch.'[in random order][otherwise][one of]Open wide, bitch.'[or]Open up, bitch.'[or]You thirsty, bitch?'[or]I hope you're thirsty.'[or]I hope you're good at eating [pussy].'[in random order][end if][roman type][line break]";
		strongHumiliate.

To say WaitingFlav of (M - a wench):
	if there are worn desirable knickers and M is not objectifying the player:
		say "[if the bimbo of the player < 6]There's no way you're going to give [him of M] an easy time taking your last line of defence. If [he of M] wants your underwear [he of M] is going to have to pull it off you [himself of M].[otherwise if the bimbo of the player < 12]You refuse to move. If [he of M] wants your underwear, [he of M] can rip it off you [himself of M] and live with the guilt.[otherwise]You have grown quite attached to your clothing and don't want to give it away voluntarily. You lie there and wait for [him of M] to pull it off you [himself of M].[end if]";
	otherwise if the player is not able to speak:
		say "[if the player is able to make sounds][line break][variable custom style][muffled sounds][roman type][line break][otherwise]You look up at [NameDesc of M] silently.[end if]";
	otherwise if the semen taste addiction of the player < 8:
		say "[one of]You stare up at the wench, stunned.[or]You shake your head in disbelief of the situation you've gotten yourself into.[or]You turn away.[line break][first custom style]'Hmmph.'[roman type][line break][or][line break][first custom style]'Whatever you're thinking of doing to me, please don't.'[roman type][line break][or]You look away, knowing full well you have no chance of escape.[or][line break][first custom style]'Fuck off, I'm not doing it.'[roman type][line break][or]You find yourself paralysed with dread, staring at the disgusting [semen] dripping from [NameDesc of M][']s holes.[in random order]";
	otherwise if the semen taste addiction of the player < 11:
		say "[one of]You are surprised with how calm you feel about the idea of swallowing the [semen] dripping out of [NameDesc of M][']s holes.[or]You wait obediently, convincing yourself it's because you have no other choice, and not because you are starting to enjoy the taste of [semen].[or][line break][variable custom style]'I don't care if I have to eat you out, but please don't stay so long that you make me faint.'[roman type][line break][or][line break][variable custom style]'Okay I'll lick it out of you but only because you're forcing me. I'm not a [semen] craving addict like you.'[roman type][line break][or][if the sex addiction of the player < 11]You try not to think about[otherwise]You find yourself thinking about[end if] all the [manly-penis]s that must have been the source of that much [semen].[or][if the player is feeling dominant]Internally you feel disgusted by the idea of [him of M] sitting on your face, but[otherwise]You[end if] find yourself licking your lips in anticipation.[in random order]";
	otherwise:
		say "[one of][if the player is feeling dominant]You are stunned with indecision - you don't want to have to lick [him of M] out but you do love the idea of getting to swallow some more [semen].[otherwise]You stared at [his of M] [semen] dripping filled [HoleDesc of M] and lick your lips greedily. It's like Christmas come early![end if][or]You stare at [NameDesc of M][']s [semen] coated [if lady fetish is 2]pussy lips and [end if]thighs, and find yourself licking your lips in anticipation.[line break][second custom style]'It's a tough job, but somebody's got to do it.'[roman type][line break][or][line break][second custom style]'I do love [semen]...'[roman type][line break][or][line break][second custom style]If [he of M] thinks I'm not going to enjoy swallowing that [semen], [he of M]'s sorely mistaken![roman type][line break][or][line break][second custom style]'I'm always up for getting another taste of a stranger's [semen]!'[roman type][line break][in random order]".

To compute flying player taunting of (M - a wench):
	if a random number from 1 to 6 is 1:
		say "[BigNameDesc of M] jeers at you.[line break][speech style of M]'[one of]Look at this [if weight gain fetish is 1]fat [end if]bitch stuck on the ceiling! Haha![or]When you get down I'll show you who's boss![or]I can't believe you're still up there![or]I hope you're as disgusted with yourself as I am with you. You can't even move![or]What kind of dumb bitch gets [himself of the player] stuck on the ceiling?[or]You look absolutely disgraceful, you know that, right?[or][if weight gain fetish is 1]Fatty[otherwise]Someone[end if][']s going to get a pounding when [he of the player] gets back down here![in random order]'[roman type][line break][if the humiliation of the player < 17500]You [one of]wince[or]shudder[or]cringe[purely at random] with shame.";
		humiliate 20.

To say LandingTaunt of (M - a wench):
	say "[BigNameDesc of M] giggles.[line break][speech style of M]'That's it, come here fatty...'[roman type][line break]";
	humiliate 50.

The wench priority attack rules is a rulebook. The priority attack rules of a wench is usually the wench priority attack rules.

This is the obedient wench rule:
	let N be current-monster;
	let M be a random awake royal guard in the location of the player;
	if M is monster and the class of the player is not princess:
		if the guard-obedience of N is 1:[if the wench is obeying already, no need to have her assume the position]
			do nothing;
		otherwise if (the health of N < the maxhealth of N / 2) or (M is prison guard and the health of N < the maxhealth of N):
			say "[BigNameDesc of M] yells angrily.[line break][first custom style]'NO CAT-FIGHTING! [one of]GET ON THE GROUND NOW, WENCHES[or]Assume the position, and I will administer your punishment[or]DOWN ON THE GROUND, [if the number of wenches in the location of the player > 1]ALL[otherwise]BOTH[end if] OF YOU[in random order]!'[roman type][line break]";
			repeat with W running through wenches in the location of the player:
				anger M;
				now M is interested;
				now the boredom of M is 0;
				now the guard-obedience of W is 1;
				if the difficulty of M - the starting difficulty of M >= 1 or M is horny-wench and the player is not prone:
					let R be a random number between the difficulty of M * 2 and 27;
					let B be the weight of the player + (the strength of the player / 3);
					if W is horny-wench, say "[line break][speech style of W]'[one of]Let's do it together!'[or]We can handle this as a team!'[or]You're as horny as I am, aren't you?'[or]Submit! That's the only way we get to cum!'[at random][roman type][line break]";
					otherwise say "[line break][speech style of W]'[one of]I'm not getting punished alone!'[or]No weaseling out of it, whore!'[or]You're going down with me!'[or]We're in this together, you fucking slut!'[at random][roman type][line break]";
					if R > B, silently try kneeling;
					if the player is prone, say "[BigNameDesc of W] grabs [one of]by the wrists[or]from behind[at random] by the wrists, dragging you down with her!";
					otherwise say "[BigNameDesc of W] grabs you [one of]by the wrists[or]from behind[at random], but you shake [him of M] off before [he of M] can drag you down with [him of M]";
				otherwise:
					say "[BigNameDesc of W] [one of]obediently[or]instantly[or]silently[or]immediately[in random order] drops to the ground, and lying face down, assumes [one of]a submissive position with [his of W] hands behind [his of W] head, like a prisoner[or]the position[stopping].";
			rule succeeds;
		otherwise:
			say "[BigNameDesc of M] [one of]frowns[or]loudly clears [his of M] throat[or]raises [his of M] eyebrows[at random].[line break][speech style of M]'[one of]Wench. Other wench. Stop catfighting. You have been warned.'[or]If you wenches don't stop bickering, I will be forced to punish you.'[or]Resolve this petty squabble of yours, or I will resolve it for you.'[or]Wenches that can't get along will be punished.'[or]You there, wenches. Knock it off.[at random][roman type][line break]";
	otherwise:
		now the guard-obedience of N is 0.
The obedient wench rule is listed in the wench priority attack rules.

This is the wench submits to guard rule:
	let N be current-monster;
	if the guard-obedience of N is 1:
		let M be a random royal guard penetrating a body part;
		let F be asshole;[placeholder]
		unless M is monster:
			say "[one of][BigNameDesc of N] continues to lie face down on the ground with [his of N] hands behind [his of N] head.[or][or][cycling]";
			rule succeeds;
		otherwise if a random number between 1 and 3 > 1:
			say "[BigNameDesc of N] [one of]submissively[or]diligently[or]quietly[or]obediently[or]greedily[at random] [if M is penetrating breasts or a random number between 1 and 2 is 1]tongues [NameDesc of M][']s asshole[otherwise][one of]licks[or]sucks on[as decreasingly likely outcomes] [NameDesc of M]'s [one of]balls[or]testicles[or]scrotum[as decreasingly likely outcomes][end if].";
			if the sex-length of M > 1, decrease the sex-length of M by 1;
		otherwise if M is penetrating face:
			say "[one of][BigNameDesc of N] kneels next to you, holding [his of N] mouth open, allowing [NameDesc of M] to fuck your mouth and [hers of N] alternately[or][line break][speech style of M]'You! Fuck my [DickDesc of M] with [his of the player] mouth.'[roman type][line break][BigNameDesc of N] obeys, holding your head and forcing it back and forth like a living onahole.[line break][if M is able to make sounds][line break][variable custom style][muffled sounds][roman type][line break][end if]You choke and splutter[at random].";
		otherwise if a random number from 1 to 2 is 1 and M is penetrating a fuckhole:
			if a random number between 1 and 2 is 1:
				say "[BigNameDesc of N] kneels over you, holding [his of N] ass cheeks open, allowing [NameDesc of M] to fuck your [variable random fuckhole penetrated by M] and [his of N]s alternately. While there, [his of N] cum-glazed face rubs all over yours.";
				cutshow figure of wench cutscene 6 for M;
			otherwise:
				say "[speech style of M]'You! Ride [him of the player] face.'[roman type][line break][BigNameDesc of M] barks the order and [NameDesc of N] obeys, getting on [his of N] knees facing away from you and pushing [his of N] ass into your face.";
			if bukkake fetish is 1, CumFaceUp 2;
		otherwise:
			say "[one of][BigNameDesc of N] kisses [NameDesc of M] passionately, slapping your [BreastDesc] roughly as [he of N] does for good measure, purposefully hurting you.[or][line break][speech style of M]'You! Slap [him of the player] while I fuck [him of the player]. HARD.'[roman type][line break][BigNameDesc of N] looks at you and hesitates for only a brief moment, before bringing [his of N] hand powerfully across your cheek. It stings painfully![in random order]";
			PainUp 1;
		rule succeeds.
The wench submits to guard rule is listed in the wench priority attack rules.

To reset submissive wenches:
	repeat with N running through awake wenches in the location of the player:
		if the number of royal guards penetrating a body part is 0 and the guard-obedience of N is 1:
			if the health of N >= the maxhealth of N, calm N;
			say "[if N is unfriendly][line break][speech style of N]'[one of]You got lucky this time, [bitch][or]I'll get you next time, [bitch][or]I'll be back for you later[in random order].'[roman type][line break][end if]The [N] starts to crawl away.";
			bore N;
			now the guard-obedience of N is 0;
	repeat with N running through awake adult baby slaves in the location of the player:
		if the number of spanking the player royal guards is 0 and the guard-obedience of N is 1:
			if the health of N >= the maxhealth of N, calm N;
			say "[if N is unfriendly][line break][speech style of N]'[one of]You got lucky this time, [bitch][or]I'll [']play['] with you next time we meet, [bitch][or]We'll finish this later[in random order].'[roman type][line break][end if]The [N] starts to crawl away.";
			bore N;
			now the guard-obedience of N is 0.

This is the wench steals clothing rule:
	let M be current-monster;
	if there is a desirable knickers and M is not objectifying the player and the number of clothing carried by M is 0 and the player is prone:
		ClothingSteal M;
		rule succeeds.
The wench steals clothing rule is listed in the wench priority attack rules.

To ClothingSteal (M - a wench):
	let K be a random desirable knickers;
	let N be a random number between 3 and 5;
	M steals K;
	CumSoak N on K.

To (M - a wench) steals (K - a knickers):
	if K is worn:
		say PullAttempt of M at K;
		let R be a random number between the difficulty of M and 6 + a random number between the difficulty of M and 6;[TODO: possibly replace with strength roll]
		if debuginfo > 0, say ClothingAttackDebug of M on K with R;
		if R > the defence of K:
			cutshow figure of wench cutscene 3 for M;
			say "[big he of M] pulls them off and flees, [one of]happily[or]lewdly[or]pervertedly[or]blissfully[or]wildly[at random] [one of] sniffing[or]smelling[or]tasting[or]licking[at random] the crotch!";
			now M is carrying K;
			distract M;
			calm M;
			now the scared of M is 75;
		otherwise:
			say WeakenFlav of M on K;
			damage K;
	otherwise:
		say "[big he of M] pulls the [K] from your hands, and runs off with them!";
		now K is in holding pen;
		now M is carrying K;
		distract M;
		calm M;
		now the scared of M is 75.

To compute damaging attack of (M - a wench):
	compute striking attack of M;
	let D be the difficulty of M - the starting difficulty of M;
	if D >= 1 and a random number between 1 and 5 is 1 and the health of M < the maxhealth of M / 2:[at level 10, the wench can follow-up on her attacks.]
		let R be a random number between 1 and 3;
		say "But [NameDesc of M] isn't finished! [big he of M] lunges for you!";
		if D >= 3 and R is 1:
			compute knee attack of M;
		otherwise if R < 3:
			compute makeout attack of M;
		otherwise:
			compute hug attack of M.

[First damage, then stimulation.]
To compute makeout attack of (M - a wench):
	if the accuracy roll of M >= the dexterity of the player:[Is she accurate enough to grab you?]
		say "[BigNameDesc of M] grabs your wrists before you can stop [him of M].[line break][speech style of M]'[one of]Kiss me, you fucking bitch!'[or]Get your fucking tongue in my mouth, whore!'[or]Wanna find out how [NameDesc of a random royal guard] tastes?'[or]If I get a mouthful of sex doll, so do you!'[or]Wanna taste my discount, skank?'[in random order][roman type][line break]";
		if the strength roll of M >= the strength of the player:
			say "[BigNameDesc of M]'s grip isn't strong, but you aren't strong either, so [he of M] locks lips with you before you can break free. [big his of M] tongue immediately enters your mouth, forcing you to taste remnants of [NameDesc of M]'s last blowjob.";
			StomachSemenUp 1;
			stimulate face from M;
		otherwise:
			say "[BigNameDesc of M]'s grip isn't very strong, and you wrench yourself free before [he of M] can kiss you.";
	otherwise:
		say "You duck away from [him of M]!".

To compute knee attack of (M - a wench):
	if the accuracy roll of M >= the dexterity of the player:[Is she accurate enough to grab you?]
		say "[BigNameDesc of M] grabs your wrists before you can stop [him of M].[line break][speech style of M]'[if the size of penis > 7][one of]I hope you fucking feel this one!'[or]Promise me, you'll fucking FEEL this!'[or]I fucking hope this hurts!'[in random order][otherwise][one of]I'm not letting up, you fucking bitch!'[or]Let me see you tear up, whore!'[or]I hope you fucking cry!'[in random order][end if][roman type][line break]";
		if the strength roll of M >= the strength of the player:
			say "[BigNameDesc of M]'s grip isn't strong, but you aren't strong either, so you can't get away before [his of M] knee connects painfully with your stomach!";
			compute M hurting belly;
		otherwise:
			say "[BigNameDesc of M]'s grip isn't very strong, and you wrench yourself free before [he of M] can do anything else.";
	otherwise:
		say "You move just fast enough to avoid [him of M].".

To compute hug attack of (M - a wench):
	if the accuracy roll of M >= the dexterity of the player:[Is she accurate enough to grab you?]
		say "[BigNameDesc of M] grabs your wrists, pinning them to your sides as [he of M] presses [himself of M] in against you.[line break][speech style of M]'[one of]Even I'm fucking stronger than you.'[or]You like being held like this, don't you? Whore.'[or]Even I like to hug people every now and again. Bitch.'[in random order][roman type][line break]";
		if the strength roll of M >= the strength of the player:
			say "[BigNameDesc of M][']s grip isn't strong, but you aren't strong either, and you waste some stamina trying to break free.[if bukkake fetish is 1] To make things worse, [his of M] body is completely covered in [semen], and some of it is rubbing off on you![end if]";
			if bukkake fetish is 1:
				let R be a random number between 1 and 3;
				if R is 1, UnannouncedSquirt semen on breasts by 1;
				if R is 2, UnannouncedSquirt semen on belly by 1;
				if R is 3, UnannouncedSquirt semen on thighs by 1;
			FatigueUp 10;
		otherwise:
			say "[BigNameDesc of M]'s grip isn't very strong, and you wrench yourself free before [he of M] can kiss you.";
	otherwise:
		say "You duck away from [him of M]!".

To compute facial sex of (M - a wench):
	increase the suffocation of M by 3;
	if the body soreness of the player + the suffocation of M >= 17:
		say "[BigNameDesc of M] continues to torture you with [his of M] crotch. You really need to breathe soon! [bold type]You are so exhausted there is nothing you can do, you struggle weakly but [his of M] ass cheeks and [HoleDesc of M] and the unending stream of [semen] are completely preventing you from breathing. You pass out.[roman type][line break]";
		now delayed fainting is 1;
		now the fainting reason of the player is 9;
	otherwise:
		if bukkake fetish is 1 and lady fetish < 2:
			say "[one of]A large glob of [semen] leaks out of [his of M] ass and onto your face.[or]Warm [semen] seeps out of [his of M] asshole and onto your face.[or]Thick [semen] slowly trickles out of [his of M] asshole, rolling down the side of your nose and over your cheeks.[or]A fat wad of [semen] leaks out of [his of M] butt and plops wetly onto your face.[or][semen] oozes out of [his of M] gaping butthole, pooling on your face.[or]Thick [semen] dribbles out of [his of M] butt, rolling down your cheeks.[in random order][if the semen addiction of the player < 7][line break][first custom style]How disgusting![roman type][line break][end if][line break]";
			CumFaceUp 1;
		compute facesit sex of M;
		let D be a random worn messed knickers;
		if D is clothing:
			say "[BigNameDesc of M] [one of]tentatively feels the warmth of[or]gently puts pressure against[stopping] your [if D is perceived messed]messy [end if][ShortDesc of D] with [his of M] hands.[line break][speech style of M]'[one of]Oh my god, how disgusting! This must be weird for you as well, right? Because it's fucking weird for me.'[or][DiaperHumiliation of M][stopping][roman type][line break]";
			if there is worn perceived unmessed knickers, compute state check of a random worn messed knickers;
		otherwise if there is a worn diaper:
			say "[BigNameDesc of M] lovingly rubs your diaper[one of] from [his of M] advantageous position[or][stopping].[line break][speech style of M]'[one of]What's this? Why are you wearing a nappy, honey? Are you having potty problems?'[or][DiaperHumiliation of M][stopping][roman type][line break]";
			humiliate 200;
			passively stimulate vagina from M;
		say "[if the body soreness of the player + the suffocation of M < 8]You are still holding your breath.[otherwise if the suffocation of M < 12]You are running out of breath![otherwise]You still can't breathe. You're going to faint any second now![end if]".

To say FacesitResisting of (M - a wench):
	say "[one of]You refuse to let [him of M] use you as [his of M] own personal [if the creampieTimer of M > 0]cleaning service[otherwise]sex toy[end if]. [or]You keep your mouth shut, valuing your dignity over your ability to breathe. [or]You spitefully purse your lips, wanting to make sure [he of M] gets a little out of it as possible. [or]You keep your mouth shut. At least if you pass out, you'll still have some dignity. [in random order]".

To say FacesitSubmissionResponse of (M - a wench):
	if the creampieTimer of M <= 0:
		say "[one of][BigNameDesc of M] moans as you obediently lick [his of M] [HoleDesc of M].[or]You dig your tongue into [NameDesc of M][']s gaping [HoleDesc of M].[or]You tease [NameDesc of M][']s [if lady fetish is 2]anal ring[otherwise]clit[end if] with your tongue.[or]You [if the oral sex addiction of the player < 8]reluctantly[otherwise if the delicateness of the player < 10]somewhat reluctantly[otherwise]eagerly[end if] stroke the wench's [if lady fetish is 2]sphincter[otherwise]folds[end if] with your tongue.[in random order]";
	otherwise:
		say "[one of]You lick [NameDesc of M][']s [HoleDesc of M] with your tongue, swallowing the [semen] as it slowly flows into your mouth.[or]You dig your tongue into [NameDesc of M][']s [HoleDesc of M], which immediately rewards you with a thick glob of salty [semen].[or]You tease [NameDesc of M][']s [if lady fetish is 2]anal ring[otherwise]clit[end if] with your tongue. Warm [semen] slowly dribbles out of [his of M] [HoleDesc of M] and into your open mouth.[or]You spear your tongue into [NameDesc of M][']s gaping [HoleDesc of M], allowing the [semen] within to slowly roll into your mouth.[or]You obediently open your mouth, allowing the [semen] slowly oozing out of [his of M] [HoleDesc of M] to slide down your throat.[or]You [if the semen taste addiction of the player < 8]reluctantly[otherwise if the delicateness of the player < 10]somewhat reluctantly[otherwise]eagerly[end if] stroke the wench's [if lady fetish is 2]sphincter[otherwise]folds[end if] with your tongue, swallowing obediently as [semen] dribbles into your mouth.[or][if the semen taste addiction of the player < 8]You tease [his of M] [HoleDesc of M] with your tongue, trying to clean it out while tasting as little [semen] as possible. There's still quite a lot.[otherwise if the semen addiction of the player < 12]You obediently scour [his of M] [HoleDesc of M] with your tongue, hesitating only for a moment before swallowing the [semen] that trickles out.[otherwise]You kiss and lick every inch of [his of M] [HoleDesc of M], eagerly lapping up and swallowing any [semen] that trickles out.[end if][in random order]";
		StomachSemenUp 1;
		decrease the creampieTimer of M by 30;
		if the creampieTimer of M < 0, now the creampieTimer of M is 0;
	progress quest of creampie-drinking-quest.

To say NearingClimaxFacesit of (M - a wench):
	say FacesitSubmissionResponse of M;
	cutshow figure of wench cutscene 5 for M.

To say DiaperHumiliation of (M - a wench):
	let D be a random worn diaper;
	if D is messed, say "[one of]Come on you messy baby, eat up!'[or]What does is feel like to be sitting in your own filth?'[or]After we're done, you should probably find someone to change you, before you get a rash.'[or]You know, I thought I was quite pathetic until I saw you wallowing in your own messy diaper.'[or]At least I can control my own body and avoid messing myself!'[or]I wonder why you decided to poop your pants rather than using the toilet like a grown up?'[or]Are you some kind of sick perv who ENJOYS going number two in their diaper?'[in random order]";
	otherwise say "[one of]Don't worry, I used to be a nanny, you know. I'll make sure you get all the din-dins you can swallow!'[or]You must be pretty fucking shameless to be waddling around the place in this padded monstrosity, eh?'[or]And to think that I thought that I was the biggest disgrace down here! At least I can control my own bladder!'[or]Tell me, what's more humiliating, having everyone see you in this [if the urine-soak of D > 0]soggy [end if]nappy, or having a slut like me dump all the cum from [his of M] insides [if the reaction of the player is 0]onto your face[otherwise]into your stomach[end if]?[or]Don't worry, baby, Mommy's here for you, and [he of M] loves you[if the reaction of the player > 0]. Keep licking Mommy's butthole now, that's a good baby[end if].'[or][if there is a pacifier carried by M]I'll make sure to put your suck suck back in your mouth[otherwise]I'll make sure to find you a nice girly pacifier to suck on[end if] after I'm done, okay hun?'[or]I'm glad I'm not the one who's stuck in Pampers for the rest of my life.'[or]Aww, look at you squirm down there! You're just the most perfect [if the player is gendered male]Prissy [end if]Pampered Pottypants Princess a Mommy could ask for, aren't you?'[in random order]".

To compute facial climax of (M - a wench):
	compute facesit climax of M.

To compute unique facesit climax effect of (M - a wench):
	SlowSemenTasteAddictUp 1;
	compute M sleeping 400 after sex;
	FavourUp M;
	orgasm bore M.

To say FacesitClimaxFlav of (M - a wench):
	if lady fetish is 2:
		say "You hear a sigh and then a moan and then a screaming orgasm come from [NameDesc of M]. [big his of M] penis throbs as it shoots a rope of [semen] across your face, followed by several more as [he of M] continues shrieking in pleasure. After a few seconds, you feel [his of M] hold on your body weaken, and [he of M] rolls off your body, passed out from the pleasure.";
		if bukkake fetish is 1, CumFaceUp 3;
	otherwise:
		say "You hear a sigh and then a moan and then a screaming orgasm come from [NameDesc of M]. [big his of M] own sex juices flood [if the reaction of the player > 0]into your mouth[otherwise]onto your face[end if].[if the semen taste addiction of the player > 12][line break][second custom style]Mmm, tasty! [roman type][line break][end if][big he of M] continues screaming in pleasure for a few seconds, then you feel [his of M] hold on your body weaken, and [he of M] rolls off your body, passed out from the pleasure.";
		cutshow figure of wench cutscene 1 for M;

This is the wench facesitting prevents breathing rule:
	if there is a wench penetrating face, decide yes;
	decide no.
The wench facesitting prevents breathing rule is listed in the breathing blocking rules.

To compute the default taunting of (M - a wench):
	say "[one of][BigNameDesc of M] watches with a mixture of incredulity and fear.[or][or][cycling]";

To compute the dildo stuck taunting of (M - a wench):
	compute the default taunting of M.

This is the wench monster fucked taunting rule:
	let P be a random wench filling face;
	let M be current-monster;
	if there are desirable knickers and M is not objectifying the player:
		ClothingSteal M;
	if P is wench and the difficulty of M - the starting difficulty of M >= 3 or the difficulty of P - the starting difficulty of P >= 3:
		say "[BigNameDesc of M] laughs at your situation with the other wench.[line break]'You enjoying that down there, bitch?'[line break]The [if lady fetish is 2]twink[otherwise]girl[end if] walks over to your bottom half and [if the player is possessing a penis]starts expertly jacking you off. [otherwise if the player is not possessing a vagina]starts licking your nipples and stroking your inner thighs. [otherwise]starts expertly fingering your pussy. [end if]The added arousal is making you need to breathe even more desperately! You can't hold back, and you have a strong orgasm and black out.";
		now delayed fainting is 1;
		now the fainting reason of the player is 9;
		rule succeeds;
	otherwise if M is not horny-wench:
		let P be a random monster penetrating a body part;
		say "[BigNameDesc of M], seeing the [P], squeals and starts running away.";
		calm M;
		distract M;
		now the scared of M is 60;
		rule succeeds.
The monster fucked taunting rule of a wench is usually the wench monster fucked taunting rule.

This is the wench monster convinced rule:
	let M be current-monster;
	if presented-orifice is face:
		say "[if M is not horny-wench][BigNameDesc of M] sees your request and grins.[line break][speech style of M]'Haha, okay, you asked for it, here I come!'[otherwise][BigNameDesc of M] sees your request and smiles.[line break][speech style of M]'I knew you would see things my way!'[end if][roman type][line break]";
		now the chosen-orifice of current-monster is face;
		rule succeeds;
	otherwise if presented-orifice is penis and (M is friendly or the charisma of the player - the times-dominated of M > 0 or M is horny-wench):
		if M is not horny-wench, say "[BigNameDesc of M] scoffs.[line break][speech style of M]'[one of]Fine. [if the size of penis < 4]Must be your lucy day, shrimp dick.'[otherwise]Today is your lucky day.'[end if][or]Sure, whatever.'[or]As long as you don't forget this is about ME.'[in random order][roman type][line break]";
		otherwise say "[BigNameDesc of M] sees your request and smiles.[line break][speech style of M]'[one of]Perfect!'[or]I thought you'd never ask![or]YES.'[in random order][roman type][line break]";
		now the chosen-orifice of current-monster is penis;
		rule succeeds;
	otherwise if presented-orifice is not nothing:
		say "[if M is not horny-wench][BigNameDesc of M] sees your request and shakes [his of M] head.[line break][speech style of M]'If I'm going to fuck you, I'll be using your mouth!'[otherwise][BigNameDesc of M] sees your request and frowns.[line break][speech style of M]'Did you not hear what I said? I need you to lick me out!'[end if][roman type][line break]";
		now the chosen-orifice of current-monster is face;
		rule succeeds.
The monster convinced rule of a wench is usually the wench monster convinced rule.

To decide if (M - a wench) is flipping the player:
	if the player is subdued, decide yes;
	if presented-orifice is face or the player is live fucked or the reaction of the player > 0, decide yes;
	let R be a random number between the difficulty of M * 3 and 27;
	let B be the weight of the player + (the strength of the player / 3);
	if debuginfo > 0, say "[input-style]Wench flip check: [if presented-orifice is face]player presented mouth = automatic success[otherwise if the player is subdued]player subdued by held clothing = automatic success[otherwise if M is friendly-fucking]player initiated sex = automatic success[otherwise]flip skill ([difficulty of M * 3]) ==> RNG([difficulty of M * 3]~27) = [R] | [B * 1].5 = ([weight of the player].5) player weight rating + ([strength of the player / 3]) player strength rating[end if][roman type][line break]";
	if R > B, decide yes;
	decide no.

To compute (M - a wench) entering mouth:
	if milking is 1:
		do nothing;
	otherwise:
		if presented-orifice is penis:
			say "[BigNameDesc of M] tries to shove you flat on your back!";
		if the player is clit stuck:
			say "[BigNameDesc of M] yanks on your clit lead and forces you to roll over onto your back!";
		otherwise:
			say "[BigNameDesc of M] tries to roll you over onto your back!";
		if M is flipping the player:
			set up sex length of M in face;
			now the suffocation of M is 0;[This is what we use to track how many turns the wench has been forcing the player to hold their breath.]
			say CommencingFacesitFlav of M;
			if bukkake fetish is 1 and lady fetish < 2:
				say "A large glob of [semen] leaks out of [his of M] ass and onto your face.[if the semen addiction of the player < 7][line break][first custom style]How disgusting![roman type][line break][end if][line break]";
				CumFaceUp 1;
			say "[one of][big his of M] hold on your neck and head is too strong, you'll have to choose between either [bold type]resist[roman type]ing and risk it taking longer until you can breathe or [bold type]submit[roman type]ing by licking [him of M] out, [if the creampieTimer of M > 0]swallowing the [semen] dripping from [his of M] [HoleDesc of M] and [end if]hoping [he of M] [if the oral sex addiction of the player < 3]finishes[otherwise if the oral sex addiction of the player < 7]climaxes[otherwise]cums over your face[end if] quickly[or]Once again, you won't be able to breathe until [he of M]'s finished with you[stopping]!";
			now M is penetrating face;
		otherwise:
			let B be the weight of the player + (the strength of the player / 3);
			say "[big he of M] doesn't manage it this time.";
			if B > 22:
				say "[big he of M] gives up, [if the the weight of the player >= the strength of the player / 3]your body is too heavy[otherwise]you are too strong[end if] for [him of M] to push over. [big he of M] leaves you lying on the ground[if the body soreness of the player > 6] panting heavily,[end if] and loses interest.";
				bore M for 600 seconds.

To say CommencingFacesitFlav of (M - a wench):
	let O be a random live thing penetrating an orifice;
	unless O is nothing:
		say "You're already dealing with [NameDesc of O], so you have no way of resisting as [he of M] succeeds and immediately sits on your face. ";
	otherwise if the player is subdued or presented-orifice is face or the reaction of the player > 0:
		say "[big he of M] immediately rewards your obedience by sitting on your face. ";
	otherwise:
		say "You do your best to resist, but before long [he of M] succeeds and immediately sits on your face. ";
	get facial penetration image for M;
	say MouthPenetrationFlav of M.

To say MouthPenetrationFlav of (M - a wench):
	if lady fetish is 2:
		say "[big he of M] blocks your nose with [his of M] genitals, covering your mouth with [his of M] [if the creampieTimer of M > 0]cum-filled[end if] [asshole]. You can't breathe!";
	otherwise:
		say "[big he of M] buries your nose into [his of M] cum-dripping asshole and covers your mouth with [his of M] [if the creampieTimer of M > 0]cum-filled [end if][vagina]. You can't breathe!";
	if M is horny-wench or M is friendly-fucking:
		say "[line break][line break][line break][speech style of M]'[if the creampieTimer of M > 0][one of][big please] lick it all out of me!'[or][big please], you have to drink it all.'[or]Don't worry, it tastes really good!'[purely at random][otherwise][one of]I really need to feel your tongue...'[or]Yes! Give me your tongue!'[or]Yes! [big please] make me cum!'[purely at random][end if][roman type][line break]";
	otherwise:
		say "[line break][line break][line break][speech style of M]'[if the creampieTimer of M > 0][one of]Drink bitch, drink!'[or]Clean it out, bitch!'[or]Lick my [pussy] clean you fucking whore!'[purely at random][otherwise][one of]Eat my [pussy] bitch!'[or]How do you like the taste of my [pussy], bitch?'[or]How do you like my [pussy], you fucking whore?'[purely at random][end if][roman type][line break]".

To say SpitroastPrep of (M - a monster) with (O - a wench) in (F - vagina):
	if M is intelligent, say "[BigNameDesc of M] pushes your legs apart and kneels between them.";
	otherwise say "[BigFuckerDesc of O] grabs your legs and pushes them nice and wide as [NameDesc of M] moves into position.".

To say SpitroastPrep of (M - a monster) with (O - a wench) in (F - asshole):
	if M is intelligent, say "[BigNameDesc of M] grabs you by the waist, pulling your hips into [his of M] lap.";
	otherwise say "[BigFuckerDesc of O] pulls your leg out of the way as [NameDesc of M] moves into position.";

To say FoursomePrep of (M - a monster) with (N - a monster) and (O - a wench) in (F - asshole):
	if N is intelligent, say "The [N] twists your lower body, lifting your leg out of the way as [NameDesc of M] moves into position.";
	otherwise say "[BigFuckerDesc of O] grabs one of your legs, pulling it towards [him of O] as [NameDesc of M] moves into position.".

To say FoursomePrep of (M - a monster) with (N - a monster) and (O - a wench) in (F - vagina):
	say FoursomePrep of M with N and O in asshole.

To say StrikingFlav of (M - a wench) on (B - a body part):
	say "[BigNameDesc of M] slaps you [TargetName of B]![if M is not horny-wench][line break][speech style of M]'[one of]Bitch[or]Slut[or]Whore[or]Fucker[or]Fuck you[in random order]!!'[roman type][line break][end if]".

To say StrikingSuccessFlav of (M - a wench) on (B - a body part):
	say StrikingFlav of M on B;
	say "Ouch! That one hurt.".

To say StrikingFailureFlav of (M - a wench) on (B - a body part):
	say StrikingFlav of M on B;
	say "That slap wasn't too bad.".

To compute (S - a spike bra) damaging (M - a wench):
	say "[BigNameDesc of M] has visibly hurt [himself of M] by slapping the spikes of your [printed name of S]!";
	decrease the health of M by 4.

To set up sex length of (M - a wench) in (B - penis):
	let N be 5;
	decrease N by the size of penis / 3;
	set up sex length N of M in B.

To say ErectionDemand of (M - a wench):
	if M is friendly-fucking or presented-orifice is penis:
		say "[line break][speech style of M]'[one of]Why aren't you hard? Hurry up.'[or]Wait, you aren't even hard yet.'[or]What's the matter? Get hard.'[at random][roman type][line break][BigNameDesc of M] stares down at your flaccid [player-penis] while fingering [himself of M].";
	otherwise:
		say "[line break][speech style of M]'[one of]Want to hear a joke? [if the size of penis < 4]That tiny thing you call a dick! Luckily for you, if its capable of getting hard I'm willing to fuck you.'[otherwise]Your dick is huge, and you still fucking lost to me. Now get hard for me.'[end if][or]I was thinking about fucking you, but then I thought [']Can [his of the player] [player-penis] even get hard?['] [if M is presenting as male]Mine certainly can't.'[otherwise]I feel like that's too much to ask from a [sissy slut] like you.'[end if][or]Get hard. I'm not giving up this chance to finally be on top.'[or][if the creampieTimer of M > 0]Want a taste of [FuckerDesc of a random alive royal guard]'s sloppy seconds? [otherwise]Want a taste of this [HoleDesc of M]? [end if]Not really asking you, FYI. Either you get hard in the next ten seconds or you are literally going to taste it.'[in random order][roman type][line break][BigNameDesc of M] stares down at your flaccid [player-penis] while fingering [himself of M].".

To say ErectionPenetrationFlav of (M - a wench):
	let U be 0;
	if M is unfriendly, now U is 1;
	if penis is not penis-erect, say "You wither a little under [his of M] increasingly [if U is 1]smug[otherwise]annoyed[end if] gaze, but thankfully the sight of an almost naked [man of M] touching [himself of M] right in front of you is enough to make your [ShortDesc of penis] to stir to life. [run paragraph on]";
	otherwise say "[BigNameDesc of M] fingers [himself of M] slowly as [he of M] turns [his of M] attention toward your hard [ShortDesc of penis]. [run paragraph on]";[lead into penetration]
	say "Apparently satisfied, [he of M] drops [his of M] ass in your lap, throwing an arm over your shoulder as [his of M] [if the creampieTimer of M > 0]slick, [semen]-coated [end if]fingers [if the size of penis < 3]pinch your tiny [sissy-penis] and guide it just inside [otherwise]wrap around your shaft and guide it into[end if] [his of M] [HoleDesc of M].".

To compute unerect taunting of (M - a wench):
	if M is unfriendly and M is male:
		if the size of penis < 4, say "You wither under [his of M] increasingly smug gaze, and when [he of M] starts to laugh, you go soft completely. [BigFuckerDesc of M] punctuates the end of [his of M] laughing session by flicking your flaccid [player-penis].[line break][speech style of M]'[one of]Knew it. Now don't move, shrimp dick. You have [if M is presenting as male]an asshole[otherwise]a pussy[end if] to eat.'[or]Completely useless. [if the creampietimer of M > 0]I hope you learn something while you're eating this load out of my [HoleDesc of M]. It came from REAL dick, by the way.'[otherwise]Anyway, time to eat some [HoleDesc of M], [bitch].'[end if][in random order][roman type][line break]";
		say "You wither under [his of M] increasingly smug gaze, and when [he of M] starts to laugh, you go soft completely. [BigFuckerDesc of M] punctuates the end of [his of M] laughing session by prodding your flaccid [player-penis].[line break][speech style of M]'[one of]Want to know something? [if the player is gendered male and the creampieTimer of M > 0]The man who left this load in my [HoleDesc of M] wasn't fucking pretending. Pretend men like you are only good for cleaning it out when the REAL men are done.'[otherwise if the creampieTimer of M > 0]The load in my [HoleDesc of M] came from a smaller dick. Let me know if that affects the taste.'[otherwise]I've met other people with this problem, but never anyone this big. Think about that while you're eating my [HoleDesc of M].'[end if][or]If you're feeling embarrassed now, you'll LOVE what comes next.'[at random][roman type][line break]";
		now chosen-orifice of M is face;
		now another-turn-flavour is the substituted form of "[BigFuckerDesc of M] holds you in place.";
		now another-turn is 1;
	otherwise:
		FavourDown M by (the size of penis / 3);
		if M is unfriendly: [That is to say, the favour loss pushed her into unfriendly territory.]
			if the size of penis < 4, say "You wither under [his of M] increasingly annoyed gaze, and [his of M] annoyance turns to anger when you go soft completely.[line break][speech style of M]'You know what, shrimp dick? Just for wasting my time, I think I'm going to teach you a lesson.'[roman type][line break]";
			otherwise say "You wither under [his of M] increasingly annoyed gaze, and [his of M] annoyance turns to anger when you go soft completely.[line break][speech style of M]'You're not getting away with wasting my time like this.'[roman type][line break]";
			now chosen-orifice of M is face;
			now another-turn-flavour is the substituted form of "[BigFuckerDesc of M] holds you in place.";
			now another-turn is 1;
		otherwise:
			if the size of penis < 4, say "You wither under [his of M] increasingly annoyed gaze, and  [his of M] annoyance turns to exasperation when you go soft completely.[line break][speech style of M]'[one of]Well, I don't know what I expected...'[or]I guess it would be a bigger surprise if that pitiful thing actually COULD get hard.'[or]Gotta say, I've never met a REAL dick with this problem.'[in random order][roman type][line break]";
			otherwise say "You wither under [his of M] increasingly annoyed gaze, and [his of M] annoyance turns to exasperation when you go soft completely.[line break][speech style of M]'[one of]Are you embarassed?'[or]You seriously can't get hard? [if the size of penis > 7]With THAT dick?'[otherwise if the size of penis < 4]I know its tiny, but shouldn't that make you MORE excited?'[otherwise]Just how many times have you been fucked up the ass?'[end if][or]Wow, I bet that happens all the time, huh? Don't waste my time again, [bitch].'[in random order][roman type][line break]";
			strongHumiliate;
			Bore M.

To say ErectionForceFlav of (M - a wench):
	if bukkake fetish is 1:
		if the creampieTimer of M > 0, say "[one of][BigFuckerDesc of M] presses [his of M] [semen]-coated chest against you as [he of M] rides you, forcing you to endure someone else's load around your [player-penis] AND on your body.[or][BigFuckerDesc of M] holds you tightly as [he of M] forces your [player-penis] in and out of [his of M] creampied [HoleDesc of M], purposely rubbing [his of M] bukkake'd chest and cheeks against you.[or][BigNameDesc of M] uses [his of M] entire body to hold you down as [he of M] rides you, forcing you to enjoy the feeling of someone else's [semen] with your entire body instead of just your [player-penis].[or]You feel [semen], warm around your shaft and cool against your chest as [FuckerDesc of M] holds you down. [big he of M] uses [his of M] whole body to lock down your movement, pressing and rubbing [himself of M] against you as [he of M] fucks [himself of M] with your [player-penis].[in random order]";
		otherwise say "[one of][BigFuckerDesc of M] presses [his of M] [semen]-coated chest against you as [he of M] rides you, forcing you to endure the feeling of someone elses's load smearing off on your body while [he of M] holds you down.[or][BigFuckerDesc of M] holds you tightly as [he of M] forces your [player-penis] in and out of [his of M] [HoleDesc of M], purposely rubbing [his of M] bukkake'd chest and cheeks against you.[or][BigNameDesc of M] uses [his of M] entire body to hold you down as [he of M] rides you, forcing to enjoy the feeling of someone else's load smearing off on your body while you have sex.[or]You feel slimy [semen] against your chest as [FuckerDesc of M] holds you down. [big he of M] uses [his of M] whole body to lock down your movement, pressing and rubbing [himself of M] against you as [he of M] fucks [himself of M] with your [player-penis].[in random order]";
		let R be a random number between 1 and 3;
		if R is 1, UnannouncedSquirt semen on face by 1;
		if R is 2, UnannouncedSquirt semen on breasts by 1;
		if R is 3, UnannouncedSquirt semen on belly by 1;
	otherwise:
		if the creampieTimer of M > 0, say "[one of][BigFuckerDesc of M] uses [his of M] whole body to hold you down as [he of M] fucks you, forcing you to endure the feeling of someone else's load around your [player-penis].[or][BigFuckerDesc of M] holds you tightly as [he of M] forces your [player-penis] in and out of [his of M] creampied [HoleDesc of M].[or]You feel more [semen] than [HoleDesc of M] as [FuckerDesc of M] fucks [himself of M] with your [player-penis].[or]You feel someone else's [semen] around shaft as [FuckerDesc of M] holds you down. [big he of M] uses [his of M] whole body to lock down your movement, pressing and rubbing [himself of M] against you as [he of M] fucks [himself of M] with your [player-penis].[in random order]";
		otherwise say "[one of][BigFuckerDesc of M] uses [his of M] whole body to hold you down as [he of M] fucks you, totally locking down your movement.[or][BigFuckerDesc of M] holds you tightly as [he of M] forces your [player-penis] in and out of [his of M] [HoleDesc of M].[or][BigNameDesc of M] uses [his of M] entire body to hold you down as [he of M] rides you, forcing you to enjoy [his of M] high-mileage hole with every inch of your [player-penis].[or]You can't move anything but your hips as [FuckerDesc of M] holds you down, using [his of M] whole body to keep you still while [he of M] fucks [himself of M] with your [player-penis].[in random order]".

To say ErectionUseFlav of (M - a wench):
	if the creampieTimer of M > 0, say "[one of]You feel more [semen] than [HoleDesc of M] as [FuckerDesc of M] bounces ontop of you, frantically rubbing [his of M] [if lady fetish is 2]clitty[otherwise]clit[end if].[or]The [semen] inside [him of M] adds extra lube as your [player-penis] [if the size of penis < 4]slips[otherwise]slides[end if] in and out of [FuckerDesc of M]'s [HoleDesc of M].[or][BigNameDesc of M] [if the size of penis > 7]moans[otherwise]pants[end if] as [he of M] rocks [his of M] hips against you, driving your [player-penis] in and out of [his of M] creampied [HoleDesc of M].[or]You fuck [FuckerDesc of M]'s creampie more than [his of M] [HoleDesc of M] as [he of M] rides your [player-penis].[in random order]";
	otherwise say "[one of][BigFuckerDesc of M] [if the size of penis > 7]moans[otherwise]pants[end if] as [he of M] bounces ontop of you, frantically rubbing [his of M] [if lady fetish is 2]clitty[otherwise]clit[end if].[or]You seem to feel it [if the size of penis > 7]far less than [he of M] does[otherwise if the size of penis < 4]way more than [he of M] does[otherwise]a little less than [he of M] does[end if] as your [player-penis] [if the size of penis < 4]slips[otherwise]slides[end if] in and out of [FuckerDesc of M]'s [HoleDesc of M].[or][BigNameDesc of M] [if the size of penis > 7]moans[otherwise]pants[end if] as [he of M] rocks [his of M] hips against you, driving your [player-penis] in and out of [his of M] [HoleDesc of M].[or]You do your best [if the penis-obedience of the player < 6]not [end if]to think of yourself as a sex toy as [FuckerDesc of M] loudly rides your [player-penis].[in random order]".

To compute erection orgasm of (M - a wench):
	if M is unfriendly:
		say "[BigNameDesc of M] speeds up slightly when [he of M] feels your [ShortDesc of penis] begin to throb, smirking as [if the creampieTimer of M > 0]you add your [load] to creampie that's already there.[otherwise]you fill [his of M] [HoleDesc of M] with a nice, fresh creampie.[end if]";
		increase the creampieTimer of M by (the semen load of the player * 100); [So she can sit on your face with it.]
	otherwise:
		say "[BigNameDesc of M] stops when [he of M] feels your [ShortDesc of penis] begin to throb, pulling you out and jerking you off until you shoot your [load] across your belly.";
		if bukkake fetish is 1, AnnouncedSquirt semen on belly by the semen load of the player;
	now penis is not penis-erect.

To say ErectionLostFlav of (M - a wench):
	now the sex-length of M is 0;
	if M is unfriendly: [Now she sits on your face.]
		say "[BigNameDesc of M] cups a hand to [his of M] [HoleDesc of M] as [he of M] climbs off of you.[line break][speech style of M]'[if the size of penis < 4]Dinner time, shrimp dick!'[otherwise]Now you're going to eat it out of me, [bitch].'[end if][roman type][line break]";
		now chosen-orifice of M is face;
		now another-turn-flavour is the substituted form of "[BigFuckerDesc of M] holds you in place.";
		now another-turn is 1;
	otherwise:
		say "[BigNameDesc of M] gives you an odd look as [he of M] climbs off you.[line break][speech style of M]'[one of]I didn't cum, but I still feel really dominant.'[or]Taking control like that felt really nice.'[or]I feel kind of dominant.'[at random][roman type][line break]";
		Bore M;
	FavourDown M by 1.


To say ErectionNearingClimaxFlav of (M - a wench):
	say "[one of][BigFuckerDesc of M]'s [if the size of penis > 7]moans climb higher and higher in pitch[otherwise]pants turn to moans, climbing higher and higher in pitch[end if] as [he of M] slowly starts speeding up.[or][BigNameDesc of M] rides you with more and more urgency, moaning breathlessly as [his of M] fingers attack [his of M] [if M is presenting as male]dick[otherwise]clit[end if][at random]. [big he of M] must be close!".

To say ErectionClimaxFlav of (M - a wench):
	say "[BigNameDesc of M] shudders, [one of]shrieking[or]practically crying[at random] with pleasure as [his of M] [if lady fetish is 2]cock shoots strings of [semen] across your belly[otherwise]pussy squirts out femcum[end if]. [big his of M] climax goes on for at least 15 seconds, but eventually [his of M] voice fades, and the movement of [his of M] hips slowly comes to a stop. [big he of M] heaves out a satisfied sigh as [he of M] climbs off you.[line break][speech style of M]'[one of]Wow, I needed that.'[or]That felt SO good.'[or]THAT was fucking perfect.'[in random order][roman type][line break]";
	orgasm M;
	Calm M;
	let N be the size of penis / 3;
	if N > 0, FavourUp M by (the size of penis / 3).

Section 2 - Damage

To compute damage reaction of (M - a wench):
	if M is awake:
		if M is uninterested or M is friendly:
			say "The [boy of M] looks shocked.[line break][speech style of M]'[one of]Fucking bitch! Come on then![or]What the fuck is your problem? You're going down!'[or]Oh, you are going to wish you never messed with me!'[at random][roman type][line break]";
			now the sex-length of M is 2;
		otherwise:
			say DamageReaction (the health of M) of M;
			if a random number between 1 and 3 is 1, increase the sex-length of M by 1;
	otherwise:
		decrease the sleep of M by 300;
		if the health of M < the maxhealth of M / 2, now the sleep of M is 0;
		if the sleep of M < 0, now the sleep of M is 0;
		if M is awake:
			say "[big he of M] wakes up, looking very pissed off indeed! Uh-oh...";
			now the sex-length of M is a random number between 3 and 4;
		otherwise:
			say "[big he of M] is still unconscious.".

To say DamageReactHealthy of (M - a wench):
	say "[big he of M] looks [one of][or]even [stopping]more pissed off than [he of M] did already!".

To say DamageReactDamaged of (M - a wench):
	say "[big he of M] grunts in pain!".

To say DamageReactTired of (M - a wench):
	say "[big he of M] staggers, squeaking in pain!".

To say DamageReactWeak of (M - a wench):
	say "[big he of M] screams in pain, struggling to maintain [his of M] balance!".

To say DamageReactSubmissive of (M - a wench):
	say "[big he of M] groans in pain, [if the size of penis <= 3]seemingly resigning [himself of M] to something[otherwise]staring apprehensively at your crotch[end if] as [he of M] fights to maintain [his of M] balance.".

To say BanishDemandFlav of (M - a wench):
	say "[variable custom style]'This is my turf now. Your place is [if Woods01 is discovered]up in the Woods[otherwise if Stairwell01 is discovered]whatever is up those stairs[otherwise]um, wherever the exit leads[end if]. Best of luck, bitch.[roman type][line break]".

To say BanishForceFlav of (M - a wench):
	say "You point towards [if Stairwell01 is discovered and playerRegion is Dungeon]the stairs[otherwise]the door[end if]. [big he of M] looks dismayed.[line break][speech style of M]'[if M is horny-wench]Yes... the woods... I-I guess there are things up there that could... help me... *sniff*'[otherwise if white-bodice is off-stage]You're going to make me go into the woods? You know what's going to happen to me in there, don't you?! Fuck it, I won't be needing this any more then. And fuck you.'[otherwise]The... the woods... I... Okay... I can make it through there... I think... Maybe...'[end if][roman type][line break][BigNameDesc of M] begins to tread hesitantly towards the exit[one of]. It seems unlikely you'll ever see [him of M] again[or][stopping].";

Definition: a horny-wench is taxable: decide no. [Can this NPC have items demanded of them upon defeat?]

To say TaxReturnDismay of (M - a wench):
	say "[speech style of M]'My only ring... I can't believe you're making me give it to you. Maybe the shopkeeper will let me earn another one... *sniff*'[roman type][line break]".

To loot (M - a wench):
	let X be a random off-stage plentiful ring;
	if the class of the player is santa's little helper, now X is a random off-stage christmas gift;
	unless X is nothing:
		now X is in the location of the player;
		if X is plentiful accessory, now X is sapphire;
		set shortcut of X;
		say "[BigNameDesc of M] [if the loot dropped of M > 0]also [end if][if M is dying or M is not in the location of the player]dropped[otherwise]removes[end if] [his of M] [printed name of X].";
		increase the loot dropped of M by 1;
		compute autotaking X.

Section 3 - Dominant Sex

To compute domination interference of (M - a wench) for (N - a monster):
	if M is unfriendly:
		say "[BigNameDesc of M] moves out of the way.[line break][speech style of M]'I'm not getting involved.'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] eggs you on![line break][speech style of M]'[one of]Yeah, get [him of N]!'[or]Knock [him of N] down a peg!'[at random][roman type][line break]".

To say DominationReaction of (M - a wench) to (N - a monster):
	if player-fucking is DOMINANT-SHAMEFUL:
		FavourDown M by 1;
		if M is unfriendly:
			say "[line break][speech style of M]'Serves you right, [bitch]!'[roman type][line break][BigNameDesc of M] smirks.";
			make M expectant;
		otherwise:
			say "[line break][speech style of M]'Um, you were doing well at the beginning.'[roman type][line break][BigNameDesc of M] seems sympathetic.";
	otherwise:
		if M is unfriendly:
			say "[line break][speech style of M]'Uh, I just remembered something. Let's hash things out later.'[roman type][line break][BigNameDesc of M] turns to walk away.";
			Bore M;
			now the scared of M is 30;
		otherwise:
			say "[line break][speech style of M]'Yeah, serves you right, you fucking [bitch]!'[roman type][line break][BigNameDesc of M] sneers at [NameDesc of N].";

To say DominationFailedReaction of (M - a wench) to (N - a monster):
	FavourDown M by 1;
	if M is unfriendly:
		say "[line break][speech style of M]'That backfired, didn't it, [bitch]!'[roman type][line break][BigNameDesc of M] smirks.";
		make M expectant;
	if N is interested:
		say "[line break][speech style of M]'Um, I gotta go. I don't want to get caught up in this!'[roman type][line break][BigNameDesc of M] turns to walk away.";
		Bore M;
		now the scared of M is 30;
	otherwise:
		say "[line break][speech style of M]'That's just how things go sometimes.'[roman type][line break][BigNameDesc of M] seems sympathetic.".

To say DominanceFailure of (M - a wench):
	say "You grab [NameDesc of M] and try to force [him of M] to the ground. [big he of M] doesn't seem to resist much at first, but a glance at your [genitals] seems to cause a shift in [his of M] expression, and with a sudden burst of energy [he of M] slips your grip and sends you toppling to the ground.".

To compute failed dominance punishment of (M - a wench):
	if the player is possessing a penis and asshole is not actually occupied and the player is getting very unlucky:
		if the size of penis > 3:
			say "[speech style of M]'What's the matter? Aren't you supposed to be fucking me right about now?'[roman type] [big he of M] laughs derisively, shoving [his of M] middle and index fingers into your [asshole] and slapping your [AssDesc] as [he of M] begins to stroke your prostate from the inside. You sit there, frozen [if the player is proud]in abject humiliation[otherwise]with pleasure[end if] as [he of M] teases your [ShortDesc of penis] with the very tips of [his of M] fingers, [if the player is a bit horny]ensuring it stays achingly hard as[otherwise]ensuring it gets nice and hard as[end if] [he of M] violates your [if the openness of asshole > 5]loose[otherwise]tight[end if] hole. [big he of M][']s perfectly positioned to hold you down without putting a lot of effort in, but you just [if the player is feeling dominant]can't focus enough to challenge [him of M] even though you [italic type]know[roman type] how much you want to.[otherwise if the player is not feeling submissive]can't bring yourself to challenge [him of M], even though you know you [italic type]want[roman type] to.[otherwise]can't bring yourself to stop [him of M] when it feels so good![end if] You have no choice but to lie underneath [him of M], writhing with pleasure and humiliation as the slow stroking builds you to orgasm.[line break][speech style of M]'Ooh, you must really like having your asshole played with[if transGender is 0], faggot[end if], I can already feel your prostate tightening up![roman type] [BigNameDesc of M] coos, abruptly yanking [his of M] finger out of your butt and removing [his of M] thumb before you can cum. You groan [if the delicateness of the player < 7]furiously[otherwise]helplessly[end if] as [he of M] stands up.";
			moderateHumiliate;
			passively stimulate asshole from M times 2;
		otherwise:
			say "[speech style of M]'Did you actually think you could fuck me with that shrimp dick? Now I HAVE to fucking mess with you.'[roman type][line break][big he of M] shoves [his of M] middle finger into your [asshole], smirking scornfully as [he of M] begins to stroke your prostate from the inside. You can't stifle your moans, frozen [if the humiliation of the player < 10000]in abject humiliation[otherwise]with pleasure[end if] as [he of M] rubs your poor, neglected [ShortDesc of penis] with the tip of [his of M] thumb, as if stimulating a clitoris. [big he of M] doesn't put a lot of effort into holding you down, but you just [if the player is feeling dominant]can't focus enough to stop [him of M] even though you [i]know[/i] how much you want to.[otherwise if the player is not feeling submissive]can't bring yourself to stop [him of M], even though you know you [i]want[/i] to.[otherwise]can't bring yourself to stop [him of M] when it feels so good![end if][line break][speech style of M]'Ooh, [one of]your clit is getting harder! You're about to cum, aren't you[or]you're about to cum, aren't you[if transGender is 0], you little faggot[end if][or]is your little clitty about to cum[or]are you about to cum from having your clit played with[if transGender is 0], you little faggot[end if][at random]? Beg for it and I might let you.[roman type][line break]Do you beg [him of M] to let you cum? ";
			passively stimulate penis from M times 1;
			if face is actually occupied:
				say "[line break][speech style of M]'Huh? What's that? I can't hear you!'[roman type][line break][BigNameDesc of M] coos, abruptly yanking [his of M] finger out of your butt and removing [his of M] thumb before you finish. You groan [if the delicateness of the player < 7]furiously[otherwise]helplessly[end if] as [he of M] stands up.";
				moderateHumiliate;
				passively stimulate asshole from M;
			otherwise if the player is bimbo consenting:
				if the charisma of the player < a random number between 1 and 3:
					say "[line break][variable custom style]'[one of]Please let me cum!'[or]Please, I need to orgasm!'[or]Please, I want to cum!'[at random][roman type][line break]You blurt out. [BigNameDesc of M] looks you dead in the eye as [he of M] lets go of your [player-penis] and yanks [his of M] finger out of your [asshole], grinning as your [if the delicateness of the player < 7]furious[otherwise]helpless[end if] groan as [he of M] stands up.";
					passively stimulate asshole from M;
				otherwise:
					say "[line break][variable custom style]'[one of]Please let me cum!'[or]Please, I need to orgasm!'[or]Please, I want to cum!'[at random][roman type][line break] You blurt out. [BigNameDesc of M] laughs derisively as [he of M] removes [his of M] thumb from your [sissy-penis], focusing all the stimulation on your prostate.";
					anally orgasm shamefully;
				severeHumiliate;[you agreed, so it's really humiliating]
			otherwise:
				say "You refuse to give [him of M] the satisfaction, and [NameDesc of M] laughs derisively as [he of M] abruptly yanks [his of M] finger out of your butt, robbing you of your chance to finish. You can't help but groan [if the delicateness of the player < 7]furiously[otherwise]helplessly[end if] as [he of M] stands up.";
				slightHumiliate;
				passively stimulate asshole from M;
		Bore M;
	otherwise if the player is getting lucky:
		say "[speech style of M]'Now what, you fucking bitch...'[roman type][line break][BigNameDesc of M] looks like [he of M][']s about to do something to you, but seems to catch [himself of M] and releases you with a sigh.";
		if the player is getting unlucky:
			compute sissy punishment of M;
			Calm M;
		otherwise:
			say "[speech style of M]'If you know what's good for you, you'll fucking stay away from me.'[roman type][line break]";
			Bore M;
	otherwise:
		say "[speech style of M]'[one of]Wait your turn, you fucking greedy whore!'[or]I need this way more than you do!'[or]I don't care how fucking horny you are, bitch! It was my idea first!'[at random][roman type][line break]";
		now another-turn-flavour is the substituted form of "[BigFuckerDesc of M] holds you in place.";
		now another-turn is 1.

To say angry punishment insult of (M - a wench):
	say "[speech style of M]'I can actually see myself trying something like this on you, so...'[roman type][line break]";

To say angry punishment clothing destruction of (M - a wench) on (C - a clothing):
	say "[speech style of M]'Let's see how YOU like walking around with your [if C is actually breast covering and the largeness of breasts > 3]tits out!'[otherwise if C is ass covering][fuckholes] on display!'[otherwise]body on display!'[end if][roman type][line break]".

To say angry punishment accessory confiscation of (M - a wench):
	say "[speech style of M]'I'll just even it out by keeping this!'[roman type][line break]".

To decide which number is the dominationtype of (M - a wench) using (F - penis):
	reset multiple choice questions;
	set next numerical response to "Go for a blowjob";
	set next numerical response to "Go for penetration";
	set next numerical response to "Settle for whatever";
	say "How do you want to dominate [him of M]?";
	compute multiple choice question;
	let CNR be the chosen numerical response;
	let C be 0;
	if the printed name of CNR is "Go for a blowjob", now C is FUCK-BLOWJOB;
	if the printed name of CNR is "Go for penetration", now C is FUCK-PENETRATION;
	if the printed name of CNR is "Settle for whatever":
		if a random number between 1 and 2 is 1, now C is FUCK-BLOWJOB;
		otherwise now C is FUCK-PENETRATION;
	decide on C.

To penetration dominate (M - a wench):
	let R be the semi-dominance roll for M;
	let C be a random bottom level protection clothing;
	if sexual-penis-length > 8:
		say "[BigNameDesc of M] makes a defeated noise as you push [him of M] to the ground, but obediently spreads [his of M] legs anyway. However, [his of M] eyes widen [if C is not strapon-panties and C is clothing]as you pull your [SexDesc of penis] out of your [printed name of C][otherwise]when [he of M] sees your [SexDesc of penis][end if].[line break][speech style of M]'[if M is horny-wench]Please make me cum!'[otherwise]A- alright, I can handle that. You'll make sure I cum, right?'[end if][roman type][line break]You nod, not really listening as you guide your [sexual-player-penis] into [his of M] [if the creampieTimer of M > 0][semen]-laden[end if] [HoleDesc of M]. [big he of M] can't help but moan as you slowly begin to thrust, and as [his of M] voice grows louder, you can't help but smirk knowing how quickly you're going to make [him of M] peak. A few thrusts later, you realise your peak is even closer, and you find yourself breathing heavily with effort and anticipation as you try to modify your pace. [run paragraph on]";
		if R <= 0:[she has a ruined orgasm]
			say "Unfortunately, you're too turned on.[line break][speech style of M]'Don't stop! Don't sto-'[roman type][line break]You cut [him of M] with a guttural groan of pleasure, a brief surge of shame flashing through your chest as you flood [his of M] [HoleDesc of M] with your massive load. [BigNameDesc of M] is hot on your heels, and [his of M] whole body begins to shudder as [he of M] begins to clench up around you. However, your [sexual-player-penis] begins to soften too early, and slips out of [him of M] without satisfying [him of M].";
			now player-fucking is DOMINANT-NEUTRAL;
			orgasm M;[she came, but no favour boost]
			say AfterDominationComment 0 of M;
		otherwise:
			say "[line break][speech style of M]'Don't stop! Don't stop!'[roman type][line break]You grit your teeth as the pleasure comes to a head, forcing yourself to hold on just a moment longer. And an instant later, [BigNameDesc of M] climaxes explosively, [his of M] whole body shuddering uncontrollably as [his of M] [if lady fetish is 2][sissy-penis] shoots across [his of M] belly[otherwise][vagina] squirts out girlcum[end if]. Knowing you've reached the finish line, you allow yourself to lose control, emitting a primal groan as you flood [his of M] [HoleDesc of M] with your massive load.";
			FavourUp M by 2;
			orgasm M;
			say AfterDominationComment 1 of M;
		increase the creampieTimer of M by 500;
		orgasm;
		FuckGet;
	otherwise if sexual-penis-length > 6:
		say "[BigNameDesc of M][']s eyes find [if C is not strapon-panties and C is clothing]your bulge as you push [him of M] to the ground, and [he of M] obediently spreads [his of M] legs as [he of M] pulls your [sexual-player-penis] out of your [printed name of C][otherwise]your [sexual-player-penis] as you push [him of M] to the ground, obediently spreading [his of M] legs as [he of M] strokes your hardening [SexShaft][end if].[line break][speech style of M]'[if M is horny-wench]Y-you'll let me cum, right? Please, I'm so horny!'[otherwise]OK, I'll fuck you. Make sure I cum, OK?'[end if][roman type][line break]You nod, fondling [his of M] [ChestDesc of M] as [he of M] slides your [SexDesc of penis] into [his of M] [if the creampieTimer of M > 0]creampied[otherwise]loose[end if] [HoleDesc of M]. [big he of M] moans quietly as you begin to fuck [him of M], looking up at with [if M is horny-wench]a hungry look[otherwise]a surprisingly eager look[end if] in [his of M] eye as you pick up steam. You do your best to pace yourself, but even as [NameDesc of M][']s voice slowly rises in pitch, you feel yourself closing in on your peak. [BigNameDesc of M] isn't that far behind you, but holding on is more difficult with every moment, and you aren't sure you can keep going all the way to the end. [run paragraph on]";
		if R <= 0:
			say "Unfortunately, you're right.[line break][speech style of M]'Just like that! Keep going just like-'[roman type][line break]You cut [him of M] off with a throaty groan of defeat, your cheeks burning with shame as you flood [his of M] [HoleDesc of M] with a big load. [BigNameDesc of M] tries [his of M] best to catch up to you, but your [sexual-player-penis] has already softened too much to be of any use, and slips out of [him of M] before [he of M] has a chance to finish.";
			now player-fucking is DOMINANT-NEUTRAL;
			say AfterDominationComment 2 of M;
		otherwise:
			say "[line break][speech style of M]'Just like that! Keep going just like that!'[roman type][line break]You grit your teeth, desperately trying to keep yourself under control, but it's just too much. You groan involuntarily as your body finally gives in and your [sexual-player-penis] throbs powerfully as you fill [his of M] [HoleDesc of M] with a big load. Luckily, [he of M] finishes a few moments later, shuddering violently as [if lady fetish is 2][his of M] [sissy-penis] shoots across [his of M] belly[otherwise][his of M] [vagina] squirts out girlcum[end if].";
			FavourUp M by 1;
			orgasm M;
			say AfterDominationComment 1 of M;
		increase the creampieTimer of M by 300;
		orgasm;
		FuckGet;
	otherwise if sexual-penis-length > 3:
		say "[BigNameDesc of M][']s eyes find [if C is not strapon-panties and C is clothing]your bulge as you push [him of M] to the ground, and [he of M] obediently spreads [his of M] legs as [he of M] pulls your [sexual-player-penis] out of your [printed name of C][otherwise]your [sexual-player-penis] as you push [him of M] to the ground, and [he of M] obediently spreads [his of M] legs as [he of M] strokes your hardening [SexShaft][end if].[line break][speech style of M]'[if M is horny-wench]Please give me time to cum. I'm so horny...'[otherwise]Fine, but you better make me cum.'[end if][roman type][line break]You nod, fondling [his of M] [ChestDesc of M] as [he of M] slides your [SexDesc of penis] into [his of M] [if the creampieTimer of M > 0]creampied[otherwise]loose[end if] [HoleDesc of M]. [big he of M] touches [his of M] fingers to [his of M] [if lady fetish is 2][sissy-penis][otherwise]clit[end if] as you begin to fuck [him of M], playing with [himself of M] as you slowly pick up steam. You're a little annoyed not to be the centre of attention, but on the other hand, you can already feel yourself closing in on your peak. You try to pace yourself as much as you can, but it becomes more difficult with every passing moment, and [NameDesc of M] is playing with [himself of M] as you pick up steam. You're a little insulted not to be the centre of attention, and speed up in hopes of regaining [his of M] interest. It seems to work, albeit slowly, and [he of M] begin to moan as you eagerly piston away. Unfortunately, it's even more effective on you, and you struggle to keep yourself under control as your body rapidly closes in on its own release. [run paragraph on]";
		if R <= 0:
			say "It's too much.[line break][speech style of M]'Yes! Keep going! I'm almost there! I'm almost-'[roman type][line break]You cut [him of M] off with a groan of defeat, your cheeks burning with shame as you fill [his of M] [HoleDesc of M] with your load. [BigNameDesc of M] gives you an unimpressed look as your [sexual-player-penis] softens and slips out of [him of M], spent.";
			now player-fucking is DOMINANT-SHAMEFUL;
			orgasm;
			say AfterDominationComment 3 of M;
		otherwise:
			say "[line break][speech style of M]'Keep going! I'm almost there! I'm almost there!'[roman type][line break]Knowing you're about to blow, you stop just long enough to ruin your own orgasm and immediately resume thrusting.";
			orgasm;
			say "[BigNameDesc of M] doesn't seem to notice that you came already, and [his of M] voice steadily rises as you push [him of M] closer and closer to climax. Finally, [his of M] whole body begins to convulse, and [he of M] shrieks in pleasure as [if lady fetish is 2][his of M] [sissy-penis] shoots [semen] across [his of M] belly[otherwise][his of M] [vagina] squirts out girlcum[end if].";
			now player-fucking is DOMINANT-NEUTRAL;
			FavourUp M by 1;
			orgasm M;
			passively stimulate vagina from M;
			say AfterDominationComment 1 of M;
		FuckGet;
		increase the creampieTimer of M by 100;
	otherwise:
		say "[BigNameDesc of M][']s eyes find [if C is not strapon-panties and C is clothing]your bulge as you push [him of M] to the ground, and [he of M] scowls as you pull your [sexual-player-penis] out of your [printed name of C][otherwise]your [sexual-player-penis] as you push [him of M] to the ground, and [he of M] scowls as you tease it to hardness[end if].[line break][speech style of M]'[if M is horny-wench]Don't you have anything bigger...'[otherwise]Are you kidding? That's so tiny.'[end if][roman type][line break]You roll your eyes, eagerly spreading [his of M] legs as you line up your [SexShaft] with [his of M] [if the creampieTimer of M > 0]creampied[end if] entrance. [big he of M] stops you.[line break][speech style of M]'Yeah, no. I wouldn't even FEEL something that small. If you want, I'll jack you off, but that's as far as I'll go. Take it or leave it.'[roman type][line break] Do you settle for a hand job?";
		if the player is bimbo consenting:
			say "[BigNameDesc of M] pinches your [SexDesc of penis] between two fingers, delicately stroking your little [SexShaft] as [he of M] paws at [his of M] [if lady fetish is 2]own [sissy-penis][otherwise]clit[end if]. [big his of M] technique is really solid, and your whole body shivers as [he of M] brings you to orgasm in under a minute. [big he of M] winks at you as [he of M] takes [his of M] now [semen]-coated hand and slips it into [his of M] [HoleDesc of M].";
			now player-fucking is DOMINANT-SHAMEFUL;
			orgasm;
			increase the creampieTimer of M by 50;
			say AfterDominationComment 4 of M;
		otherwise:
			say "You scoff and quickly rise to your feet. There's no way you're going to be pushed around like that for a quick orgasm.";
			now player-fucking is DOMINANT-NEUTRAL;
			say AfterDominationComment 8 of M.

To blowjob dominate (M - a wench):
	if sexual-penis-length > 8:
		if the player is a bit horny:
			say "[BigNameDesc of M] takes one look at your [SexDesc of penis] and tries to scramble away, but you grab [him of M] by the hair and force [him of M] down onto [his of M] knees.[line break][first custom style]'Where you goin['] bitch? I thought you were all about drinking cum.'[roman type][line break][big he of M] [if M is horny-wench]shakes [his of M] head, but immediately forms an O-shape with [his of M] lips, drooling a bit as [his of M] tongue lolls out over [his of M] lower lip[otherwise]shakes [his of M] head, but after a moment [he of M] blushes slightly and slowly opens [he of M] mouth anyway[end if]. You revel in the sound of [his of M] gagging as you shove it in, brutally fucking [his of M] face until [he of M] begins to do it all by [himself of M]. [big he of M] skilfully strokes the underside of your [SexShaft] with [his of M] tongue, further streaking [his of M] makeup with fresh tears as [he of M] repeatedly impales [his of M] face on your rock hard junk. [big he of M] does such it with such precision and control that you can't bear the thought of interrupting, [run paragraph on]";
			slightDignify;[Extra dignity when you save up]
		otherwise:
			say "You force [NameDesc of M] to [his of M] knees. [big he of M] [if the times-dominated of M > 0]gulps, staring at your [sexual-player-penis] as [he of M] slowly opens [his of M] mouth. A faint blush colours [his of M] cheeks[otherwise]tentatively opens [his of M] mouth and begins to fondle [his of M] breasts, eyeing your [sexual-player-penis] with apprehension. [big his of M] expression grows even more uncertain[end if] as your [SexDesc of penis] reaches its full size, and [his of M] eyes get wide as your giant boner nears [his of M] lips. [big he of M]'s silent for a moment, [if M is horny-wench]before grabbing it with both hands, eagerly guiding[otherwise]then slowly reaches out with one hand, guiding[end if] it into [his of M] mouth. You feel [his of M] tongue move skilfully over the underside of your [SexShaft], gently lubricating it as it reaches deeper and deeper down [his of M] throat. [big he of M] does such it with such precision and control that you can't bear the thought of interrupting, [run paragraph on]";
		say " [if the oral sex addiction of the player > 3 and the throatskill of the player is 0]in fact, you're actually a little jealous of [his of M] technique[otherwise if the oral sex addiction of the player > 3]in fact, you can't help feeling [he of M] might actually be even better than you are[otherwise]but you're still getting the feeling that [he of M] isn't really making use of [his of M] full potential[end if]. You make sure [he of M] has to put [his of M] skills to good use, keeping at least 7 inches in [his of M] mouth at all times, and holding [his of M] wrists above [his of M] head so [he of M] can't cheat by using [his of M] hands. [if M is horny-wench][big he of M] seems to love the treatment, so [he of M] has a lot of trouble focusing on the exercise[otherwise]It's clear [he of M]'s no master at doing things without the training wheels on[end if], but by the time your load spurts down [his of M] throat, [he of M]'s learned a whole lot about how to properly gag on your [SexDesc of penis]. You shove [his of M] off without waiting for [his of M] to finish, allowing the rest of your [semen] to splatter liberally across [his of M] face and breasts.";
		moderateDignify;
		BlowGet;
		orgasm;
		say AfterDominationComment 5 of M;
	otherwise if sexual-penis-length > 6:
		say "You force [NameDesc of M] to [his of M] knees, brandishing your fully erect [SexDesc of penis].[line break][variable custom style]'[if the player is desperate to pee and watersports fetish is 1]So, are you ready to drink my piss[otherwise]So, do you feel like sucking my [sexual-player-penis][end if]?'[roman type][line break][big he of M] [if the times-dominated of M > 0 or M is horny-wench]nods eagerly[otherwise]gulps, avoiding eye contact as [he of M] answers with a slow nod[end if], gripping the base of your [SexShaft] with one hand and lightly stroking it as [he of M] drags [his of M] tongue up your length. You didn't really come here for foreplay though, and just as you're ready to 'nudge' [him of M] into beginning the main event, [his of M] lips wrap themselves around the end of your [sexual-player-penis] and immediately glide down your spit-coated [SexShaft]. [big he of M] furrows [his of M] eyebrows as your tip brushes the back of [his of M] throat, bracing [his of M] hands on your thighs as [he of M] forces [himself of M] down even further. Pleasure explodes up your [SexShaft] as tiny movements of [his of M] tongue push you to the brink of orgasm in no-time-flat. You barely manage to grunt before you go over the edge, involuntarily bucking your hips as you unload straight down [his of M] throat. [if the throatskill of the player is 1][big he of M]'s clearly had a lot more practise than you have, because [end if][big he of M]'s able to hold the position for the full duration of your orgasm, sitting up gracefully as your softening [sexual-player-penis] slips out of [his of M] mouth.";
		BlowGet;
		orgasm;
		slightDignify;
		say AfterDominationComment 6 of M;
	otherwise if sexual-penis-length > 3:
		say "You force [NameDesc of M] to [his of M] knees. [big he of M] [if M is horny-wench]seems to accept [his of M] role without much difficulty, gripping the base with one hand as [his of M] wraps [his of M] lips around the head[otherwise]stares at your hardening [SexDesc of penis] for a moment before slowly nodding, gripping the base with one hand as [he of M] wraps [his of M] lips around the head[end if]. [big his of M] tongue massages the underside of your [sexual-player-penis], dexterously playing across each your sensitive spots one by one, building up a powerful orgasm bit by bit as [he of M] applies gentle suction with [his of M] lips. [if the oral sex addiction of the player > 3 and the throatskill of the player is 0]You can't believe how quickly [he of M] takes you to the edge, groaning with a mix of awe and pleasure, shivering with anticipation[otherwise if the oral sex addiction of the player > 3]You can barely wrap your head around how quickly [he of M] takes you to the edge, shivering with a mixture of anticipation and jealousy[otherwise]You can't believe how quickly [he of M] takes you the edge, groaning with pleasure[end if] as [he of M] slowly pulls off, and finishes you off with two rapid pumps. [if bukkake fetish is 1]Your [semen] splatters liberally over [his of M] already plastered face, most falling in [his of M] mouth or dripping off [his of M] chin onto [his of M] chest.[otherwise][big he of M] catches every last drop of your [semen], holding it briefly in [his of M] mouth before swallowing it all in one gulp.[end if]";
		BlowGet;
		orgasm;
		trivialDignify;
		say AfterDominationComment 6 of M;
	otherwise:
		say "[if the player is a bit horny]You force [NameDesc of M] to [his of M] knees, pushing your fully erect [SexDesc of penis] against [his of M] face.[otherwise]You force [NameDesc of M] to [his of M] knees, stroking your [SexDesc of penis] to a full, unimpressive erection.[end if][line break][speech style of M]Wow, now I feel even worse... just do it on my chest alright?[roman type] [big he of M] pushes [his of M] breasts together, looking up at you with a deadpan expression as you eagerly pump your [if the player is a bit horny]desperately hard [end if][SexDesc of penis]. You wish [he of M] were more enthusiastic, but it just feels so good, and your time in this game has left you a lot more sensitive than you were before. It only takes a few short moments for you to emit a feminine grunt and spurt your [load] all over [his of M] chest.";
		now player-fucking is DOMINANT-NEUTRAL;
		say AfterDominationComment 8 of M;
		orgasm.

To watersports dominate (M - a wench):
	if the player is male:
		say "You force [NameDesc of M] to [his of M] knees, thrusting your [SexDesc of penis] in front of [him of M].";
		if the size of penis > 3:
			say "[speech style of M]'Alright, just warn me when you're going to-'[roman type][line break]You take aim while [he of M]'s talking, and let out a quiet sigh of relief as you use a stream of [urine] to interrupt [him of M] mid-sentence. [big he of M] seems annoyed at first, but after a moment, [he of M] just accepts it, closing [his of M] eyes as the contents of your bladder run down [his of M] face and chest.";
			moderateDignify;
			say AfterDominationComment 9 of M;
		otherwise:
			say "[speech style of M]'Pfft, is that tiny shrimp dick supposed to be intimidating??'[roman type] [big he of M] laughs derisively and begins to stand up, but you grab [him of M] by the hair and yank hard to get [his of M] back on [his of M] knees. You decide to punish [him of M] by releasing your hold on your bladder, grinning down at [him of M] as golden [urine] sprays all over [his of M] face and breasts.";
			now the bladder of the player is 0;
			say AfterDominationComment 7 of M;
			trivialDignify;
	otherwise:
		say "You force [NameDesc of M] to [his of M] knees, spreading your labia as you release your hold on your bladder. [big he of M] closes [his of M] eyes and angles [his of M] face toward your [vagina] as best [he of M] can. You sigh as your [urine] streams onto [his of M] face and breasts.";
		moderateDignify;
		say AfterDominationComment 9 of M;
	now the bladder of the player is 0;
	SportsGet.

To facesit dominate (M - a wench):
	Dignify 20;
	if the player is male:
		say "You force [NameDesc of M] onto [his of M] back, pulling your [AssDesc] apart as you sit on [his of M] face. [if the bimbo of the player < 12][line break][first custom style]'[one of]Hope you like the taste.'[or]Don't forget to really get your tongue in there.'[or]This is what you were planning for me, right?'[at random][otherwise][line break][second custom style]'Put your fucking tongue in my ass!'[end if][roman type][line break][if M is horny-wench][big he of M] grabs your ass with both hands, humming eagerly[otherwise][big he of M] grumbles petulantly[end if] as [his of M] tongue begins to massage your delicate rosebud. [run paragraph on]";
		if belly liquid types > 1:
			say "You sigh in pleasure, [if the player is wrist-bound-behind]grinding against [his of M][otherwise]tweaking your nipples[end if] as the sensation causes your anal muscles to loosen and allow the unholy mixture of bodily fluids in your ass to dribble out into [his of M] mouth. [big he of M] wretches, but [if M is horny-wench]doesn't stop or slow down, thoroughly scouring your [asshole] with [his of M] tongue[otherwise]a single glare over your shoulder spurs [him of M] to keep eating your [asshole][end if] until it has been completely cleaned of foreign fluids.";
			empty belly liquids;
		otherwise if the urine volume of belly > 0:
			say "You sigh in pleasure, [if the player is wrist-bound-behind]grinding against [him of M][otherwise]tweaking your nipples[end if] as the sensation causes your anal muscles to loosen and allow [urine] in your ass to dribble out into [his of M] mouth. [if M is horny-wench][big he of M] slows down briefly, but doesn't stop, scouring your [asshole] with [his of M] tongue[otherwise][big he of M] wretches, a single glare over your shoulder spurs [him of M] to keep [his of M] tongue in your [asshole][end if] until its frothy contents have been thoroughly emptied into [his of M] mouth.";
			now the urine volume of belly is 0;
		otherwise if the total fluid fill of belly > 0:
			say "You sigh in pleasure, massaging your breasts as the sensations cause your anal muscles to loosen and allow [if the semen volume of belly > 0][semen][otherwise][milk][end if] to dribble out into [his of M] mouth. [if M is horny-wench][big he of M]'s even more eager after that, moaning giddily as [he of M] greedily scours your [asshole] with [his of M] tongue.[otherwise][big he of M] pauses, but a simple glare down at [him of M] is enough to make [him of M] resume immediately.[end if] You remain 'seated' until all the fluids have been thoroughly cleaned out.";
			empty belly liquids;
		otherwise:
			say "You take the opportunity to play with [his of M] [ChestDesc of M], pinching and rubbing [his of M] pink nipples until they are tight and red. It turns out that [big he of M] isn't all that good at using [his of M] mouth to please a hole, so you eventually grow bored and climb to your feet.";
			slightDignify;
		say AfterDominationComment 9 of M;
	otherwise:
		if player-fuckchoice is FUCK-WATERSPORTS:
			say "You force [NameDesc of M] to [his of M] knees, spreading your labia as you release your hold on your bladder. [big he of M] closes [his of M] eyes and angles [his of M] face toward your [vagina] as best [he of M] can. You sigh as your [urine] streams onto [his of M] face and breasts.";
			now the bladder of the player is 0;
		otherwise:
			say "You force [NameDesc of M] onto [his of M] back, sitting on [his of M] face. [if the bimbo of the player < 12][line break][first custom style]'[one of]No offence meant[or]Nothing personal[at random], I promise.' [otherwise][line break][second custom style]'Let's see how you like it!' [end if][roman type][line break]You look [him of M] in the eye as you position your dripping wet [vagina] over [his of M] mouth and wait expectantly. [if M is horny-wench][big he of M] grabs your thighs with both hands, humming eagerly as [he of M] begins to[otherwise][big he of M] purses [his of M] lips at first, but it doesn't take long for [him of M] to swallow [his of M] pride and reluctantly begin to[end if] stroke your tender folds with [his of M] tongue. [run paragraph on]";
			if the semen volume of vagina > 0 and the pregnancy of the player is 0:
				say "You sigh in pleasure, massaging your breasts as the sensations cause your vaginal muscles to loosen and allow [semen] to dribble out onto [his of M] face. [if M is horny-wench][big he of M]'s even more eager after that, moaning greedily as [he of M][otherwise][big he of M] doesn't seem to like that, but a simple glare down at [him of M] is enough to make sure [he of M] thoroughly[end if] scours your creampied [vagina] with [his of M] tongue. You let push [him of M] away gently once you're cleaned out.";
				now the semen volume of vagina is 0;
			otherwise:
				say "Pulling your [AssDesc] apart, you position your [vagina] over [his of M] mouth and your [asshole] over [his of M] nose, cutting off [his of M] airflow. [big he of M] squirms petulantly, weakly clawing at your thighs to try and make you get up, but fails because [he of M] is weakened from the preceding fight. Reluctantly, [he of M] opens [his of M] mouth and pushes [his of M] tongue into your folds. You take the opportunity to play with [his of M] breasts, pinching and rubbing [his of M] nipples until they are tight and red. [big he of M] doesn't forget about your clit, gently pushing it back and forth in hopes of making you orgasm. It feels good, but eventually you grow bored and climb to your feet.";
				slightDignify;
		say AfterDominationComment 9 of M;
	LickGet.

To compute unique dominance reward of (M - a wench):
	compute default dominance reward of M;
	if the times-dominated of M > 0:
		if there is a worn tattoo and demongirl tattoo is not worn:
			summon demongirl tattoo;
			say "A drawing of a demon girl appears on your left arm! You feel more dominant.".

To say AfterDominationComment (N - a number) of (M - a wench):
	if N is 0:
		say "[speech style of M]'[one of]I guess that counts[or]I guess that was what I asked for[or]I guess you did your job[in random order]. Ugh. I can't wait to take you down a peg.'[roman type][line break]";
	otherwise if N is 1:
		say "[speech style of M]'[one of]FUCK that was good[or]That was actually kind of great[or]That felt so fucking good. Wow[in random order]...[if M is unfriendly]don't think this makes us friends.'[otherwise]OK, we're cool. I won't attack you anymore.'[end if][roman type][line break]";
	otherwise if N is 2:
		say "[speech style of M]'[one of]What the fuck was that?! UGH[or]UGH, you jerk! I was so fucking CLOSE[or]Are you kidding me? Do you even KNOW how CLOSE I was[in random order]! I am SO getting you back for this!'[roman type][line break]";
	otherwise if N is 3:
		say "[speech style of M]'[one of]I guess I'm not surprised[or]I don't know what I expected[or]I guess I only have myself to blame[in random order]...Don't think you'll get another chance like this.'[roman type][line break]";
	otherwise if N is 4:
		say "[speech style of M]'[one of]Now, you can tell everybody we had sex[or]Now you can at least say you came inside me[or]Now it's almost like we had sex[in random order]! FYI, I only did this because I pity you. I don't plan on doing that next time.'[roman type][line break]";
	otherwise if N is 5:[in this case, your penis is huge, so she's probably not aggressive]
		say "[speech style of M]'[one of]...I know you're in charge, OK?'[or]...You don't have to be so rough, you know.'[or]...At least be a little gentler next time.'[in random order][roman type][line break]";
	otherwise if N is 6:
		say "[speech style of M]'[one of]I'm your whore now, but just you wait.'[or]Treat me like that as much as you want. I'll remember it when I'm kicking your ass.'[or]I'm not a sore loser. But I bet YOU are.'[in random order][roman type][line break]";
	otherwise if N is 7:
		say "[speech style of M]'[one of]Ooh, you-! I'll fucking get you for that!'[or]Don't think I won't make you pay for that, baby dick.'[or]You're going to pay for that next time, baby dick.'[in random order][roman type][line break]";
	otherwise if N is 8:
		say "[speech style of M]'[one of]You better hope that shrimpy thing is bigger next time you see me.'[or]I hope you remember how that felt, because I'm going to fucking punish you next time, baby dick.'[or]Don't think this is ever going to happen again. Not when you have a tiny baby dick like that.'[in random order][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]I'll be on top next time.'[or]It's going to be me on top next time.'[or]It's going to be MY genitals in YOUR face next time.'[in random order][roman type][line break]".

Section 4 - Friendly Sex

To say PresentFriendlyAcceptanceFlav of (M - a wench):
	if presented-orifice is penis, say "[BigNameDesc of M] sees your request and stares at you in surprise. [line break][speech style of M]'[one of]You're actually willing to let me be on top? [if the size of penis < 4]Wait, no, I get it... alright, shrimp dick, today is your lucky day.'[otherwise]Lucky~!'[end if][or]Sure, since you asked.'[or]Really, you'll let me? Can't say no to that, I guess...'[in random order][roman type][line break]";
	otherwise say "[speech style of M]'[one of]Wow, you'd do that?'[or]Oh yeah! Help a girl out!'[or]Finally, nobody else ever wants to help!'[or]Now that you've asked, I feel bad about getting cum on your face, but since you made an offer...'[at random][roman type][line break]";
	alwayscutshow figure of wench interact 2 for M.

To say PresentFriendlyRejectionFlav of (M - a wench):
	if presented-orifice is a potential target:
		say "[speech style of M]'Not right now, I don't feel like it.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Sorry, I don't really swing that way.'[roman type][line break]";

To compute (M - a wench) considering (T - a vessel):
	if M is unfriendly:
		say "[speech style of M]'Why save it for later when I can feed you right now?'[roman type][line break][BigNameDesc of M] ignores the [T]!";
		alwayscutshow figure of wench interact 13 for M;
	otherwise if the waitress bartering value of T for M > 0:
		if the waitress-boredom of M > 0:
			say "[BigNameDesc of M] turns away. [speech style of M]'I'm not thirsty at the moment.'[roman type][line break]";
		otherwise:
			say WaitressOfferAcceptFlav of M to T;
			say WaitressTakeFlav of M to T;
			compute waitress resolution of M taking T;
	otherwise if T is open topped:
		say "[speech style of M]'[one of]With what? Cum? I don't know why you can't just lick me out, but I guess if you need a fix it's better than sucking [manly-penis] for it.'[or]Sure, I'm just glad to have it out of me.'[stopping][roman type]";
		say MonsterTakeFlav of M to T;
		alwayscutshow figure of wench interact 8 for M;
		SetDose T to 2;
		now the fill-colour of T is creamy;
	otherwise:
		say "[BigNameDesc of M] shakes [his of M] head no.[line break][speech style of M]'What would I even fill it up with?'[roman type]";
		alwayscutshow figure of wench interact 10 for M.

To decide which number is the blue-balls-limit of (M - a horny-wench):
	decide on -4.
To decide which number is the blue-balls-limit of (M - a wench):
	decide on -2.

To say FriendlySexReleaseSpeech of (M - a wench):
	say "[speech style of M]'Oh. I guess I'd get tired of it after a while too.'[roman type][line break]";
	FavourDown M by the sex desire of M.

To say FriendlySexReleaseFlav of (M - a wench):
	if M is intelligent, say FriendlySexReleaseSpeech of M;
	say "[BigNameDesc of M] stands up.".

To say MonsterTakeFlav of (M - a wench) to (T - a vessel):
	say "[BigNameDesc of M] takes the [T] from you [if the doses of T > 0], dumping it out before [he of M][otherwise]and[end if] turns away, quietly moaning to [himself of M] for a moment or so before handing returning the [T], full of creamy [semen].".

To say OfferFlav of (T - a vessel):
	if the player is able to speak:
		if the second noun is wench and the noun is open topped:
			say "[variable custom style]Hey, could you fill this for me?[roman type][line break]";
		otherwise:
			say "[variable custom style]'[if the second noun is unfriendly]Please, take this instead!'[otherwise]Would you be interested in this?'[end if][roman type][line break]";
	otherwise if the player is able to make sounds:
		say "[variable custom style][muffled sounds][roman type][line break]";
	otherwise:
		say "You hold the item up to the [second noun].";

To decide which number is the bartering value of (T - a sex toy) for (M - a wench):
	if M is carrying a sex toy, decide on 0;
	if the size of T < 6 or M is workaholic wench, decide on 1 + (the size of T + 4) / 5;
	decide on 0.

To say MonsterOfferRejectFlav of (M - a wench) to (T - a sex toy):
	say "[BigNameDesc of M] winces.[line break][speech style of M]'[if M is carrying a sex toy]You already gave me a toy, remember? I don't need two.'[otherwise if M is unfriendly]Nuh-uh. Right now, I need the real thing...'[otherwise]That's... um... that's a bit big for me. Thanks anyway.'[end if][roman type][line break]".

To say MonsterOfferAcceptFlav of (M - a wench) to (T - a sex toy):
	say "[BigNameDesc of M][']s eyes light up.[line break][speech style of M]'Oh my god yes please! With this I could potentially satisfy myself, and that might stop me from going crazy...'[roman type][line break]".

To decide which number is the bartering value of (T - an overdress) for (M - a wench):
	if M is carrying an overdress or T is unskirted, decide on 0;
	decide on 6 - the unworn outrage of T.

To say MonsterOfferRejectFlav of (M - a wench) to (T - an overdress):
	say "[BigNameDesc of M] shakes [his of M] head.[line break][speech style of M][if M is carrying an overdress]'You already gave me a dress, remember? I don't need two.'[otherwise if M is unfriendly]'Nuh-uh. Right now, I need something else...'[otherwise if T is unskirted]'If you have one with a skirt, I'd prefer that.'[otherwise]'That's... um... that's a bit too provocative for me. Thanks anyway.'[end if][roman type][line break]".

To say MonsterOfferAcceptFlav of (M - a wench) to (T - an overdress):
	say "[BigNameDesc of M][']s eyes light up.[line break][speech style of M]'Oh wow! Thank you! With this maybe people will treat me like less of a whore. ...I guess I should wait to put it on until after I've gotten cleaned up.'[roman type][line break]".

Part 2 - Conversation

Section 1 - Greeting

[Remember that the player can't speak if the wench is on top of them]

To say FirstResponse of (M - a wench):
	if the strength of the player > 7:
		say "[speech style of M]'[one of]I hope you don't mind me staying close. I'm scared.'[or]Do you mind if I stay close? I'm scared.'[or]I used to be an adventurer like you, but then I took a cumshot to the ass.'[as decreasingly likely outcomes][roman type][line break]";
	otherwise if the size of penis <= 3 and the player is possessing a penis and penis is exposed:
		say "[speech style of M]'[one of]Let's stick together. If your dick is that tiny you probably can't defend yourself on your own.'[or]Wow, your dick is really tiny. Do you want me to protect you or something?'[or]Stick with me. You obviously can't protect yourself if you have a shrimpy thing like that.'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]I hope you don't mind if we stick together. I'm scared.'[or]It's scary in here. Let's stick together.'[at random][roman type][line break]";
	alwayscutshow figure of wench interact 12 for M.

To say RepeatResponse of (M - a wench):
	if M is unfriendly:
		if the size of penis <= 3 and the player is possessing a penis and penis is exposed:
			say "[speech style of M]'[one of]Did you say something? I couldn't hear you over the sound of how tiny your dick is!'[or]Shut up, baby dick, I'm horny.'[or]I'm looking forward to shutting you up, baby dick.'[at random][roman type][line break]";
		otherwise if the size of penis > 7 and penis is lewdly exposed and M is unfriendly:
			say "[speech style of M]'[one of]You're crazy if you think I'll let you put that thing in me!'[or]You've got another thing coming if you think you can put that in me.'[or]Fuck off, asshole!'[at random][roman type][line break]";
		otherwise:
			say "[speech style of M]'[one of]God, do you ever fucking shut up?'[or]SHUT. UP.'[or]Do you ever stop running your mouth?'[or][if the bimbo of the player < 8]Shut up you fucking prude!'[otherwise if the bimbo of the player < 14]Shut up you fucking skank!'[otherwise]Shut up you fucking slut!'[end if][at random][roman type][line break]";
		alwayscutshow figure of wench interact 5 for M;
	otherwise if the size of penis <= 3 and the player is possessing a penis and penis is exposed:
		if M is unfriendly, say "[speech style of M]'[one of]Did you say something? I couldn't hear you over the sound of how tiny your dick is!'[or]Shut up, baby dick, I'm horny.'[or]I'm looking forward to shutting you up, baby dick.'[at random][roman type][line break]";
		say "[speech style of M]'[one of]Hey, it's baby dick!'[or]So, has your dick always been that small?'[or]How are you holding up, baby dick? Do you need me to protect you?'[or]Oh my god, I just can't get over how tiny your cock is.'[at random][roman type][line break]";
		alwayscutshow figure of wench interact 13 for M;
	otherwise if there is knickers carried by M:
		say "[speech style of M]'[one of]Thanks for the panties!'[or]Thanks for letting me have your panties!'[at random][roman type][line break]";
		alwayscutshow figure of wench interact 14 for M;
	otherwise:
		say "[speech style of M]'[one of]I hope you don't mind me staying close. I'm scared.'[or]Do you mind if I stay close? I'm scared.'[or]I used to be an adventurer like you, but then I took a cumshot to the ass.'[as decreasingly likely outcomes][roman type][line break]";
		alwayscutshow figure of wench interact 12 for M.

To say InvitationAccepted of (M - a wench) with (N - a monster):
	say "[speech style of M]'Don't worry, I'll have a turn when [he of N] finishes.'[roman type][line break]";
	alwayscutshow figure of wench interact 3 for M.

To say AssistanceRejected of (M - a wench) with (N - a monster):
	if M is unfriendly:
		say "[speech style of M]'[one of]This is getting me all hot and bothered. Don't get up.'[or]Don't worry, I'll have a turn when [he of N]'s done.'[or]It's actually sort of hot when someone else gets fucked. Stay down there after [he of N] finishes.'[at random][roman type][line break]";
		alwayscutshow figure of wench interact 3 for M;
	otherwise:
		if the size of penis > 8 and M is friendly:
			say "[speech style of M]'[one of]Haha, a dick that big and it's still useless!'[or]Donkey dick and you're still getting fucked. Haha wow.'[at random][roman type][line break]";
			alwayscutshow figure of wench interact 9 for M;
		otherwise:
			say "[speech style of M]'[one of]No way! I'm getting out of here!'[or]Fuck that! I don't want them turning on me!'[or]Do I look like I can help?'[at random][roman type][line break]";
			alwayscutshow figure of wench interact 12 for M.

To say AttentionAccepted of (M - a wench) with (N - a monster):
	if the size of penis > 8 and M is friendly:
		say "[speech style of M]'[one of]Haha, a dick that big and it's still useless!'[or]Donkey dick and you're still getting fucked. Haha wow.'[at random][roman type][line break]";
		alwayscutshow figure of wench interact 9 for M;
	otherwise:
		say "[speech style of M]'It's actually sort of hot when someone else gets fucked.'[roman type][line break]";

To say TauntAccepted of (M - a wench):
	if the size of penis <= 3 and the player is gendered male:
		say "[speech style of M]'Never mind! I don't wanna be humiliated again![roman type][line break][BigNameDesc of M] begins to run away!";
	otherwise if the size of penis > 8:
		say "[speech style of M]'W-wait a second! I-I can't take a dick that big. I'm out of here!'[roman type][line break][BigNameDesc of M] begins to run away!";
	otherwise:
		say "[speech style of M]'N-never mind. I was out of line. Sorry.'[roman type][line break][BigNameDesc of M] begins to run away!".

To say TauntRejected of (M - a wench):
	if the size of penis <= 3 and the player is possessing a penis and penis is lewdly exposed and the player is feeling dominant and transGender is 0:
		say "[speech style of M]'[one of]Just try to fuck me, shrimp dick. I fucking dare you.'[or]So you're going to fuck me? Really. With a tiny cock like that?'[or]Go ahead and try to fuck me, faggot. I wouldn't even feel it.'[at random][roman type][line break]";
		alwayscutshow figure of wench interact 6 for M;
	otherwise if the player is possessing a penis and M is unfriendly and the player is feeling dominant:
		say "[speech style of M]'[one of]You're crazy if you think I'll let you put that thing in me!'[or]You've got another thing coming if you think you can put that in me.'[or]Fuck off, asshole!'[at random][roman type][line break]";
	otherwise if the player is female and the player is not feeling submissive:
		say "[speech style of M]'[one of]Go fuck yourself, bitch!'[or]You know how to make it up to me, bitch.'[or]If you're really sorry, you'll get on your fucking knees.'[at random][roman type][line break]";
		alwayscutshow figure of wench interact 5 for M;
	otherwise if the player is upright:
		say "[speech style of M]'[one of]Get on your fucking knees then, bitch.'[or]Get on your knees then, skank.'[or]Get on the ground then, skank.'[at random][roman type][line break]";
		alwayscutshow figure of wench interact 5 for M;
	otherwise:
		say "[speech style of M]'[one of]Glad you see things my way.'[or]Wow, you really are a slut.'[or]Don't worry, bitch, I'll fucking feed you.'[at random][roman type][line break]";
		alwayscutshow figure of wench interact 13 for M.

To say DominantResponse of (M - a wench):
	if M is unfriendly:
		if bukkake fetish is 1 and the semen coating of face < 1 and M is unfriendly:
			say "[speech style of M]'[one of]Wasn't there cum on your face last time I saw you? Oh well, I can replace it.'[or]Hey, what happened to all that cum on your face? Eh, whatever. I'm replacing it anyway.'[or]Wow, your face is completely clean! I bet you fucking ate it, didn't you.'[at random][roman type][line break]";
		otherwise:
			say "[speech style of M]'[one of]Hey there. I thought of a new nickname for you. [big cunt] Wipe. How does that sound?'[or]Oh, look, it's my favourite [cunt] wipe!'[or][if M is friendly]Hey, it's my favourite [cunt] wipe!'[otherwise]Look who it is! I just got fucked so I really need a cleaning.'[end if][stopping][roman type][line break]";
		alwayscutshow figure of wench interact 6 for M;
	otherwise:
		say "[speech style of M]'[one of]You're welcome.'[or]Oh, so you're still hungry then?'[or]So you want more then?'[or]That probably means you want more, doesn't it.'[at random][roman type][line break]";
		if M is friendly, say "[speech style of M]'Haha, just kidding.'[roman type][line break]";
		alwayscutshow figure of wench interact 6 for M.

Section 2 - Questioning

To compute teaching of (M - a wench):
	say "[speech style of M]'Want me to show you how to properly deepthroat a cock? Not only will it help you when getting face-fucked but sometimes you could do it of your own accord if you'd rather not get fucked properly!'[roman type][line break]";
	cutshow figure of wench cutscene 4 for M;
	teach deepthroating.

To say WhereAnswer of (M - a wench):
	say "[speech style of M]'[if M is workaholic wench]My place of work. It's true, there are no benefits, and the customers treat you like dog shit, but somebody's gotta turn the tricks around here. Might as well be us, right?'[otherwise]Some weird dungeon filled with traps and monsters! Everything seems built to fuck you or turn you into a slut.'[roman type][line break]";
	alwayscutshow figure of wench interact 5 for M.

To say WhoAnswer of (M - a wench):
	say "[speech style of M]'My name's [if M is creampied wench]Amy[otherwise if M is lost wench]Katie[otherwise if M is kidnapped wench]Stephanie[otherwise if M is desperate wench]Mary[otherwise]Dee[end if], [please]d to meet you, I guess.'[roman type][line break]";
	alwayscutshow figure of wench interact 7 for M.

To say StoryAnswer of (M - a wench):
	say "[speech style of M]'I [if M is creampied wench]invested all of my savings into cryptocurrency. It went badly[otherwise if M is kidnapped wench]went into massive debt after getting drawn in by one of those Multi-Level-Marketing schemes[otherwise]bit off more than I could chew in a game of poker[end if]. Now I'm here.'[roman type][line break]";
	alwayscutshow figure of wench interact 10 for M.

To say EscapeAnswer of (M - a wench):
	say "[speech style of M]'[if M is creampied wench]You keep going up. But going on ahead before you're ready can be a very bad idea. I prefer to play it safe... however I must admit it hasn't been going too well for me so far.'[otherwise if M is kidnapped wench]Do you think I'd still be here if I knew?'[otherwise if M is not horny wench]I don't know at all. I tried to ask a guard but [he of a random royal guard] wouldn't talk to me.'[otherwise]Escaping? I'm normally too busy getting fucked to think about lofty stuff like that.'[end if][roman type][line break]";
	alwayscutshow figure of wench interact 13 for M.

To say AdviceAnswer of (M - a wench):
	say "[speech style of M]'[one of]If a monster is going to beat you up, and you know it, why not just kneel and accept the punishment? Sure it'll be humiliating and stuff but you'll otherwise be fine and able to continue. Especially if you haven't found anywhere good to rest...'[or]Sometimes it's better to run away than to let a monster fuck you. You'll probably get tired sooner, but if you just let them do it whenever, another monster might find you and want to join in.'[or]I think traps reset, and trapped containers close themselves when the traps reset. Try to remember where you found traps before!'[or]Don't let the guard's attitude fool you; [he of a random royal guard] isn't a pushover.'[or][if inflation fetish is 1]That cosplay chick is a fucking bitch, but [he of a random wrestler]'s no gladiator. Take that skank down a fucking peg.'[otherwise]You and I aren't the only people trapped in here. Don't be fooled, though. Some actually feel right at home.'[end if][or]You know those sex dolls? Don't stab them. Trust me.'[at random][roman type][line break]";
	alwayscutshow figure of wench interact 2 for M.

Section 3 - Drink Requesting

To compute friendly drink of (M - a wench):
	say "[speech style of M]'I'm sorry, I don't have any water on me... I've been surviving on a strict diet of semen!'[roman type][line break]";
	alwayscutshow figure of wench interact 1 for M.

To compute unfriendly drink of (M - a wench):
	say "[speech style of M]'Oh I'll give you a drink all right!'[roman type][line break][big he of M] takes an aggressive stance!";
	alwayscutshow figure of wench interact 13 for M;
	now M is interested;
	now the boredom of M is 0.

[To compute desperate drinking to (M - a wench):
	say "[if M is uninterested]You spot a [MediumDesc of M]! [otherwise]You look at [NameDesc of M] hungrily. [end if]Your thirst combined with your new found love of the taste of [semen] means you can't help but go up to the [boy of M], get on your knees and start licking [his of M] [HoleDesc of M]. You are rewarded by [his of M] sighs of pleasure, and a flood of [semen]! You gulp it down greedily.";
	alwayscutshow figure of wench interact 8 for M;
	StomachSemenUp a random number between 1 and 2;
	bore M for 400 seconds;
	now the stance of the player is 1;
	humiliate 250.]

Part 5 - Trading

To decide which number is the bartering value of (T - a thing) for (M - a horny-wench):
	decide on 0.

To decide which number is the bartering value of (T - a desirable knickers) for (M - a wench):
	if M is objectifying the player, decide on 0;
	decide on 4.

Part 3 - Variants

workaholic wench is a wench. The text-shortcut of workaholic wench is "wwe".
To say MediumDesc of (M - workaholic wench):
	say "working wench".

To say SummoningFlav of (M - workaholic wench):
	if M is in the location of the player:
		let P be a random patron;
		say "The teleportation pad emits a definitive sounding hum, and light fills the room as a mostly-naked [man of M] materialises on top of it. [big he of M] is laying face up, legs splayed at odd angles, and [if bukkake fetish is 1]lines of fresh [semen] rolling off [his of M] cheeks[otherwise]fresh [semen] drips out of [his of M] [HoleDesc of M][end if]. The [NameDesc of M] looks around indignantly as [he of M] stumbles to [his of M] feet.[line break][speech style of M]'Money doesn't TELEPORT if you're not wearing it, assholes!'[roman type][line break]";
	otherwise:
		say "You hear angry shouting coming from another part of the hotel.".

To set up (M - workaholic wench):
	reset M;
	now the monstersetup of M is 1;
	add white-bodice to the banishItems of M, if absent;
	add condom-pack to the tradableItems of M;
	now the raw difficulty of M is the starting difficulty of M + 6;
	now the creampieTimer of M is 300;
	now the health of M is the maxhealth of M;
	if the player is not a top donator, now M is off-stage.

Definition: workaholic wench is dungeon dwelling: decide no.
Definition: workaholic wench is hotel dwelling:
	if diaper quest is 0 and a2m fetish >= 2, decide yes;
	decide no.

To say MonsterDesc of (M - workaholic wench):
	let K be a random knickers carried by M;
	if bukkake fetish is 1:
		say "This [man of M] has dozens of hatch marks next to [his of M] mouth, [if lady fetish is 2]and [asshole][otherwise][asshole], and [vagina][end if], and from [his of M] [if lady fetish is 2]effeminate[otherwise]voluptuous[end if], jizz-coated figure, it's not hard to guess how [he of M] might have earned them. [big he of M]'s wearing a cum-soaked white blouse[if K is clothing] with a [printed name of K][end if], and you can see the words 'Free Ride' tattooed across [his of M] right cheek. [big he of M] looks a little exhausted.";
	otherwise:
		say "This [man of M] has dozens of hatch marks next to [his of M] mouth, [if lady fetish is 2]and [asshole][otherwise][asshole], and [vagina][end if], and from the way [semen] is leaking from [if lady fetish is 1][his of M] hole[otherwise][his of M] holes[end if], it's not hard to guess their significance. [big he of M]'s wearing a soaking wet white blouse[if K is clothing] with a [printed name of K][end if], and you can see the words 'Free Ride' tattooed across [his of M] right cheek. [big he of M] looks a little exhausted.".

To say WhereAnswer of (M - workaholic wench):
	say "[speech style of M]'[if the player is hotel employed]Our place of work. The boss is a real asshole.'[otherwise]My place of work. It's true, there are no benefits, and the customers treat you like dog shit, but somebody's gotta turn the tricks around here. Might as well be us, right?'[end if][roman type][line break]";
	alwayscutshow figure of wench interact 5 for M.

To say WhoAnswer of (M - workaholic wench):
	say "[speech style of M]'[if the player is hotel employed]Well, on the employment papers it says I'm a maid, but who am I kidding? There's only one thing whores like us are useful for.'[otherwise]My name's Dee, [please]d to meet you.'[end if][roman type][line break]";
	alwayscutshow figure of wench interact 7 for M.

To say StoryAnswer of (M - workaholic wench):
	say "[speech style of M]'I'm trying to pay off my student loans!'[roman type][line break]";
	alwayscutshow figure of wench interact 10 for M.

To say EscapeAnswer of (M - workaholic wench):
	say "[speech style of M]'Look, I mostly just entertain customers here, so I don't know about that kind of stuff.'[roman type][line break]";
	alwayscutshow figure of wench interact 13 for M.

To say AdviceAnswer of (M - workaholic wench):
	let P be pimp;
	let W be a random wrestler;
	let B be mechanic;
	say "[speech style of M]'[one of]Depending on what you're wearing, you can earn more when you're servicing customers.'[or]You know that pimp that shows up after your first couple tricks? Well, [he of P] doesn't actually work here. Don't be afraid to kick [his of P] ass.'[or]Condoms are unreliable sometimes, but they're usually better than going without.'[or]That wrestler doesn't really care too much about winning or losing. [big he of W] just wants to have fun.'[or]Even if you feel like you're not in the mood for a gangbang, it's a good way to make a lot of cash. I think it's a lot smarter to just play again. I mean, we're just whores anyway.'[or][if the player is a trained hooker]You completed the training too? Well, take it from me, there will still be consequences if you let your performance drop.'[otherwise]You'll make more money if you finish the employee training first.'[end if][or][if demon lord is alive]Some [DickDesc of B]s need to be avoided. You know who I'm talking about[otherwise]You know [NameDesc of B][speech style of M]? I think [he of mechanic]'s hiding something[end if].'[at random][roman type][line break]";
	alwayscutshow figure of wench interact 2 for M.

To compute patronMeeting of (M - workaholic wench) with (P - a patron):
	let R be a random number between 1 and 2;
	if M is in the location of the player:
		say "A [MediumDesc of P] walks into the room and pushes [NameDesc of M] onto [his of M] hands and knees. [big he of M] barely reacts as [NameDesc of P] slides [his of P] [DickDesc of P] into [NameDesc of M][']s [HoleDesc of M] and finishes inside [him of M] within a few pumps. [BigNameDesc of M] gets back on [his of M] feet as fresh [semen] dribbles down [his of M] thighs.";
		now the creampieTimer of M is the semen load of P * 100;
	SemenPuddleUp 1 in (the location of M);
	if the refractory-period of M < 0, now the refractory-period of M is 0.

Wench ends here.
