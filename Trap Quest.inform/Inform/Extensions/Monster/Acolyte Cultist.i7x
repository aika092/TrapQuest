Acolyte Cultist by Monster begins here.

An acolyte is a kind of monster. An acolyte is usually intelligent. An acolyte is usually female. Understand "cultist" as acolyte.

Definition: an acolyte is wenchy: decide yes.

Definition: an acolyte is mansion dwelling: decide yes.

An acolyte has a number called entranced. The entranced of an acolyte is usually 0.

An acolyte has a number called wind-up. The wind-up of an acolyte is usually 0.

To say ShortDesc of (M - an acolyte):
	say "cultist".

A mindless acolyte is a kind of acolyte. A mindless acolyte is unintelligent. The entranced of a mindless acolyte is 1. A mindless acolyte is unconcerned.
Definition: a mindless acolyte is summoningRelevant: decide no. [Doesn't count towards the number of monsters in the region for the purposes of summoning portals.]
To say ShortDesc of (M - a mindless acolyte):
	say "mindless cultist".

vacant acolyte is a mindless acolyte. The text-shortcut of vacant acolyte is "vac".
To say MediumDesc of (M - vacant acolyte):
	say "vacant cultist".

unminded acolyte is a mindless acolyte. The text-shortcut of unminded acolyte is "min". Understand "mindless", "mind" as unminded acolyte.
To say MediumDesc of (M - unminded acolyte):
	say "unminded cultist".

chanting acolyte is a mindless acolyte. The text-shortcut of chanting acolyte is "chac". Understand "chanting", "chant" as chanting acolyte.
To say MediumDesc of (M - chanting acolyte):
	say "chanting cultist".

humming acolyte is a mindless acolyte. The text-shortcut of humming acolyte is "humc". Understand "humming" as humming acolyte.
To say MediumDesc of (M - humming acolyte):
	say "humming cultist".

ardent acolyte is an acolyte. The text-shortcut of ardent acolyte is "aac".
To say MediumDesc of (M - ardent acolyte):
	say "ardent cultist".

crazed acolyte is an acolyte. The text-shortcut of crazed acolyte is "cac".
To say MediumDesc of (M - crazed acolyte):
	say "crazed cultist".

insane acolyte is an acolyte. The text-shortcut of insane acolyte is "iac".
To say MediumDesc of (M - insane acolyte):
	say "insane cultist".

clairvoyant acolyte is an acolyte. The text-shortcut of clairvoyant acolyte is "clc".
Definition: clairvoyant acolyte is summoningRelevant: decide no. [Doesn't count towards the number of monsters in the region for the purposes of summoning portals.]
clairvoyant acolyte has a number called suffocation. Understand "seer", "voyant", "clair" as clairvoyant acolyte.
To say MediumDesc of (M - clairvoyant acolyte):
	say "clairvoyant cultist".

Definition: clairvoyant acolyte is willing to do oral: decide yes.

To decide which figure-name is the monster-image of (M - an acolyte):
	if diaper quest is 1, decide on figure of acolyte 5;
	decide on figure of acolyte 1.

To decide which figure-name is the monster-image of (M - a mindless acolyte):
	if diaper quest is 1, decide on figure of acolyte 5;
	if pregnancy fetish is 1:
		if inhuman pregnancy > 0, decide on figure of acolyte 4;
		otherwise decide on figure of acolyte 3;
	otherwise:
		decide on figure of acolyte 2.

To say MonsterDesc of (M - an acolyte):
	if diaper quest is 0, say "A veiled [man of M] in a sheer black robe. What you can see of [his of M] expression suggests [he of M][']s not exactly all there. Still, despite looking like [he of M] hasn't seen the sun in a few years [he of M] does seem to be in quite good shape and could be unexpectedly dangerous.";
	otherwise say "This [man of M] wears a black hooded robe that covers [his of M] eyes and therefore conceals [his of M] identity. [if lady fetish is 2][big his of M] fully exposed nipples[otherwise][big his of M] fully exposed breasts[end if] are pierced and chained together by a light gold chain. The open robe also leaves [his of M] massive pink diaper completely visible. A black marked pentagram is marked on the front[if demon-diaper is worn], just like your own demonic diaper[otherwise if xavier-diaper-link > 0], which you recognise means that this is a demonic diaper, much like the one you had to wear for the Demon Queen[end if]. [big he of M] has a large dangling necklace with what appears to be purposeful geometric shape and another pentagram on it, and numbers printed on [his of M] pink pacifier read '777'. [big he of M] wields a bizarre looking gold and blue sacrificial dagger in [his of M] left hand, with several pointed stars and other basic shapes etched into the design.".

To say MonsterComment of (M - an acolyte):
	say "[if the class of the player is cultist and the bimbo of the player <= 8][line break][first custom style][one of]I'm just glad this outfit fools the cultists.[or]I need to blend in, it makes this place much safer.[in random order][otherwise if the class of the player is cultist][line break][second custom style][one of]Yay, another sister in service of the [great ones]! Wait, what?[or]I hope my sister's not sad that the [great ones] haven't blessed [him of M] yet.[in random order][otherwise if the bimbo of the player <= 8][first custom style]This could be a problem[otherwise][second custom style][big he of M][']s sexy but seems kind of dangerous...[end if][roman type][line break]".

To say MonsterDesc of (M - a mindless acolyte):
	if diaper quest is 1:
		say MonsterDesc of ardent acolyte;
		say "[big he of M] stands completely still, humming, [his of M] mouth gaping vacantly as [he of M] rubs the front of [his of M] diaper with [his of M] right hand. Your impression is of someone who is completely empty minded or in a trance and wholly unaware of their surroundings.";
	otherwise:
		say "A veiled [man of M] in a sheer black robe. While you cannot clearly see [his of M] eyes, [his of M] mouth gapes vacantly and the cords of drool running from it betray how empty [his of M] mind must be[if pregnancy fetish is 1 and lady fetish < 2]. [big he of M] is massively pregnant, and [his of M] only motion is to absently rub [his of M] belly every so often[otherwise if lady fetish is 2]. [big his of M] penis is locked into a glowing purple chastity cage, and [his of M] only motion is to absently rub [his of M] ass every so often[otherwise]. [big his of M] only motion is to absently touch [himself of M] every so often[end if].".

To say MonsterComment of (M - a mindless acolyte):
	say "[if the player-class is cultist and the bimbo of the player <= 8][line break][first custom style][one of]That's not how I'm supposed to end up, is it?[or]I need to make sure they don't do that to me...[in random order][otherwise if the player-class is cultist][line break][second custom style][one of]They look like they have things really easy, maybe it wouldn't be so bad to join them...[or]My sisters look really happy...[in random order][otherwise if the bimbo of the player <= 8][first custom style]Well they're sure creepy.[otherwise][second custom style]That's kind of a hot look on them...[end if][roman type][line break]".

To say MonsterDesc of (M - clairvoyant acolyte):
	if diaper quest is 1:
		say MonsterDesc of ardent acolyte;
		say "[big his of M] body is pale, almost green, but it almost seems like [he of M]'s... stronger for it.";
	otherwise:
		say "A veiled [man of M] in a sheer black robe. While you cannot clearly see [his of M] eyes, there is a noticeably blank look on [his of M] face, as if [he of M] were thinking of... nothing at all. [big his of M] [if bukkake fetish is 1 and the location of the player is Mansion02]entire body is coated in [semen], especially [his of M] crotch and chin, which are very clearly leaking onto the bedspread beneath [him of M][otherwise if the location of the player is Mansion02]body is pale, almost green compared to the bedspread beneath [him of M][otherwise if bukkake fetish is 1]entire body is coated in [semen], especially [his of M] [HoleDesc of M] and chin, but [he of M] doesn't seem to mind[otherwise]body is pale, almost green, but it almost seems like [he of M]'s... stronger for it[end if]. [if pregnancy fetish is 1 and lady fetish < 2]You can't be certain, but it looks like [he of M] has a bit of a baby bump.[end if]";

To say MonsterComment of (M - clairvoyant acolyte):
	say "[if the player-class is cultist and the bimbo of the player <= 8][line break][first custom style][one of][big he of M] seems different to the others, maybe I should be a bit cautious.[or]This one is definitely more in touch with whatever the cult works for.[in random order][otherwise if the player-class is cultist][line break][second custom style][one of][big he of M]'s so pretty! I wish the [great ones] favoured me that much. Um, did I just think that?[or]I should probably stay and let [him of M] mould my weak mind. Wait, should I be thinking that?[in random order][otherwise if the bimbo of the player <= 8][first custom style]I might not want to stick around here...[otherwise][second custom style]That's a weird look, but it kind of works for [him of M]![end if][roman type][line break]".

To set up (M - an acolyte):
	reset M;
	now the monstersetup of M is 1;
	now the raw difficulty of M is the starting difficulty of M;
	now the health of M is the maxhealth of M.

To decide which number is the starting difficulty of (M - an acolyte):
	decide on 7.

To set up (M - a mindless acolyte):
	reset M;
	now the monstersetup of M is 1;
	now the raw difficulty of M is the starting difficulty of M - 2;
	if doomed is 5:
		DifficultyUp M by 4;
		now M is unleashed;
	otherwise:
		now M is unconcerned;
	now M is in Mansion23;
	now the health of M is the maxhealth of M.

To compute monstermotion of (M - a mindless acolyte):
	if M is unleashed, compute room leaving of M;
	otherwise do nothing.

To compute combatProvoked of (M - a mindless acolyte):
	do nothing. [The deep one comes to defend her instead of her needing to break from her ritual.]

To compute (M - an acolyte) seeking (D - a direction):
	if M is unleashed, try M going D.

Definition: an acolyte (called M) is controlling: [Otherwise it causes infinite chanting.]
	decide no.

This is the spawn initial acolytes rule:
	if clairvoyant acolyte is off-stage:
		set up clairvoyant acolyte;
		summon clairvoyant acolyte in the mansion;
		now clairvoyant acolyte is in Mansion02;
	[if the number of alive intelligent acolytes < 2:
		let M be a random off-stage intelligent acolyte;
		set up M;
		summon M in the mansion;]
	while the number of alive mindless acolyte < 2:
		let M be a random off-stage mindless acolyte;
		set up M;
		summon M in the mansion;
		now M is in Mansion23.
The spawn initial acolytes rule is listed in the setting up mansion monsters rules.

To say SummoningFlav of (M - an acolyte):
	if M is in the location of the player:
		if M is intelligent, say "The cloth wrappings covering the mummified figure slowly unravel, revealing [NameDesc of M] underneath. [big his of M] legs shake a bit as [he of M] steps forward, mumbling the same syllable over and over under [his of M] breath. The mummy immediately reforms behind [him of M].";
		otherwise say "The cloth wrappings covering the mummified figure slowly unravel, revealing [NameDesc of M] underneath. [big he of M] stands in place for a moment before stumbling forward, allowing the mummy to reform behind [him of M].";
	otherwise:
		say "You hear fabric unravelling somewhere else in the mansion".

Definition: an acolyte is human: decide yes.

Part 1 - Misc Flavour

To say BecomesBoredFlav of (M - a mindless acolyte):
	say "".

To say GroundPeeReaction of (M - an acolyte):
	if M is intelligent:
		say "[speech style of M]'You would dare defile this sacred ground?!'[roman type][line break]";
		FavourDown M with consequences.

To say ClothesPeeReaction of (M - an acolyte):
	if M is interested, say "You feel like you know that [NameDesc of M] is smirking under [his of M] veil, but you can't actually see it.";
	otherwise say "[BigNameDesc of M] doesn't look at you directly or say anything, so it's hard to gauge [his of M] reaction.".

To compute unique periodic effect of (M - an acolyte):
	let R be the location of M;
	if R is garlic and a random number between 1 and 7 is 1:
		if diaper quest is 0 and watersports fetish is 1 and a random number between 1 and 2 is 1:
			if M is in the location of the player, say "[BigNameDesc of M] spreads [his of M] nether lips, chanting fervently as [he of M] douses the ground with [urine].";
			PuddleUp urine by 1 in R;
		otherwise:
			if M is in the location of the player, say "[BigNameDesc of M] begins to masturbate, chanting fervently as [he of M] reaches an explosive climax within seconds.";
		if doomed > 0 and doomed < 5 and doom counter > 0, increase doom counter by 5.

To compute unique periodic effect of (M - a mindless acolyte):
	if a random number between 1 and 7 is 1 and M is unleashed:
		if M is in the location of the player, say "Milk seeps out of the ground, forming a loose ring around [NameDesc of M].";
		PuddleUp milk by 1 in (the location of M).

Part 2 - Perception

To decide which number is the bimbo tolerance of (M - an acolyte): [What number of outrage they become immediately unfriendly.]
	if M is mindless acolyte, decide on 30;
	if the class of the player is cultist, decide on 30;
	if M is wenchy and there is a worn demon codpiece, decide on 1;
	decide on 18.

To decide which number is the bab tolerance of (M - an acolyte): [What number of cringe they become immediately unfriendly.]
	decide on the bimbo tolerance of M.

Definition: a mindless acolyte is scarable: decide no.

To compute perception of (M - a mindless acolyte):
	if M is unleashed:
		say "[BigNameDesc of M] notices you![line break][second custom style]'Non-believer...'[roman type][line break]";
		now M is interested;
		anger M;
	otherwise:
		say "[BigNameDesc of M] does not react to your presence in any way!";
	commence doom.

To compute perception of (M - an acolyte):
	now M is interested;
	say "[BigNameDesc of M] notices you![line break]";
	if the class of the player is cultist and (the pregnancy of the player > 0 or xavier-diaper-link > 0):
		say "[first custom style]'Well met sister, though why do you not wait with the other blessed downstairs?'[roman type][line break]";
		calm M;
	otherwise if the player-class is cultist:
		say "[first custom style]'Well met sister! I see you too are between blessings.'[roman type][line break]";
		calm M;
	otherwise if the player-class is succubus:
		say "[first custom style]'If you are willing to abase yourself before the Masters, you may pass, servant of Xavier.'[roman type][line break]";
		calm M;
	otherwise if the player-class is vampire spawn:
		say "[first custom style]'The [great ones] tolerate the existence of your kind, but watch your step.'[roman type][line break]";
		calm M;
	otherwise if the pregnancy of the player > 0:
		say "[first custom style]'Have you been blessed? You should report downstairs for your veil, it is improper that you maintain individuality.'[roman type][line break]";
		calm M;
	otherwise if the player is female and the pregnancy of the player is 0 and pregnancy fetish is 1:
		say "[first custom style]'An unbeliever, here! You too must serve the [great ones] with your [if diaper quest is 0]body[otherwise if diaper messing >= 3]bowels[otherwise]bladder[end if]!'[roman type][line break]";
		anger M;
	otherwise:
		say "[first custom style]'An unbeliever? Here? And one who has no use as a vessel! You must be driven off!'[roman type][line break]";
		anger M;
	commence doom.

To compute appearance assessment of (M - clairvoyant acolyte):
	if mystical amulet is worn:
		say "[speech style of M]'That amulet you possess bears a mighty power, [if the class of the player is cultist]sister[otherwise]heretic[end if]. You could gain great favour from the [great ones] were you to gift it to them at their altar.'";
	otherwise if the class of the player is cultist:
		say "[speech style of M]'[one of]I knew you were coming, sister.'[or]Sister, do you come for a prophecy?'[or]The Herald will arrive soon, sister. Why do you waste time?'[at random]";
	otherwise if the times-met of M > 0 and the player is top-wardrobe-malfunctioning:
		compute tq nip slip reaction of M;
	otherwise:
		say "[speech style of M]'[one of]A non-believer? Here? Now? The [great ones] test us...'[or]I knew you were coming, non-believer. You cannot stop what has already been set in motion.'[or]Do not try to oppose us, non-believer. We serve a greater will...'[stopping]";
	say "[roman type][line break]";
	commence doom.

To compute perception of (M - clairvoyant acolyte):
	if doomed is 5 and the class of the player is not cultist:
		say "[speech style of M]'[one of]THE HERALD IS HERE! YOU ARE TOO LATE, NON-BELIEVER!'[or]I see servitude in your NEAR future, non-believer...'[stopping][roman type][line break][BigNameDesc of M] cackles deliriously and assumes an aggressive stance!";
		anger M;
	otherwise:
		compute appearance assessment of M;
		calm M.

To compute monstermotion of (M - clairvoyant acolyte):
	if the location of M is not Mansion02:
		let L be the location of M;
		let D be the best route from L to Mansion02;
		if a random number between 1 and 5 > 2 and D is N-viable, try M going D.

To compute kneeling reaction of (M - an acolyte):
	say "[BigNameDesc of M] appears to grin. [line break][speech style of M]'[one of]You will make a fine servant to the [great ones].'[or]Yes. Accept your place, like all of us have done before you.'[or][big please], I will take you to receive their blessing.'[or]Their holy power can sway even the hardest non-believers.'[at random][roman type][line break]";
	if the humiliation of the player < HUMILIATION-SHAMELESS - 2000:
		say " You shiver with shame.";
		say "[line break]";
	humiliate 15.

To compute diaper mess reaction of (M - an acolyte):
	say "[BigNameDesc of M] solemnly chants [speech style of M]'Blessings be with you.'[roman type][line break]";
	humiliate 200;
	if voluntarySquatting is 1, humiliate 600.

To say ToiletPeeReaction of (M - an acolyte):
	say "[BigNameDesc of M] cocks [his of M] head with apparent distaste.[line break][speech style of M]'[if the class of the player is cultist]Fool! How are you serving the Great Ones by doing that?!'[otherwise]This is not how we do things around here. You will learn...'[end if][roman type][line break]".

To say GroundPeeReaction of (M - an acolyte):
	if M is intelligent:
		say ToiletPeeReaction of M.

To say ClothesPeeReaction of (M - an acolyte):
	say "[BigNameDesc of M][']s head snaps round to focus on your loins.[line break][speech style of M]'[if the class of the player is cultist]Sister[otherwise]Heathen[end if], you appear to be [if diaper lover > 0]missing your most important garment[otherwise]leaking[end if]...'[roman type][line break]".

To say DiaperReaction of (M - an acolyte):
	say "[BigNameDesc of M] slightly bows [his of M] head.[line break][speech style of M]'Amen.'[roman type][line break]".

To resolve sudden appearance change of (M - clairvoyant acolyte):
	do nothing. [She could get you in an infinite loop if she became unfriendly while friendly-fucking]

Definition: clairvoyant acolyte is unfriendly rather than friendly:
	if it is not pacified and it is not friendly-fucking and (it is not normally annoyed or it is uniquely unfriendly), decide yes; ["annoyed" is the final level of relationship before unfriendly]
	decide no.

Part 3 - Combat

Section 1 - Attack

The unique punishment rule of the acolyte is usually the cult conversion rule.
This is the cult conversion rule:
	let M be current-monster;
	unless M is penetrating a body part or M is grabbing the player:
		if M is unintelligent and M is unconcerned:
			say "[one of][BigNameDesc of M] completely ignores you.[or][or][BigNameDesc of M] continues to ignore you.[or][stopping]"; [mindless cultists don't fight or punish]
		otherwise if the player is at least partially immobile:
			say "[one of][BigNameDesc of M] chants feverishly to [himself of M][or][BigNameDesc of M] fervently whispers to [himself of M][or][BigNameDesc of M] continues [his of M] hushed chanting[then at random].";
		otherwise if the class of the player is not cultist and the pregnancy of the player is 0:
			say "[one of][line break][first custom style]'[if M is intelligent]You too shall serve as a vessel for the power of the [great ones]!'[otherwise]Vessel...'[end if][roman type][line break][or][stopping]";
			now the target-room of M is Mansion23;
			if delayed stand is 0:
				if the location of the player is the target-room of M:
					say "[BigNameDesc of M] forces you onto the altar![line break][first custom style]'[if M is intelligent]I envy you for the pure fulfilment you will achieve when the [great one] fills you with seed.'[otherwise]The [great ones]...'[end if][roman type][line break]";
					bore M for 600 seconds;
					try praying yourself with the elder altar;
				otherwise:
					drag to the target-room of M by M;
		otherwise if the pregnancy of the player > 0 and M is intelligent:
			say "[first custom style]'It is unseemly for the blessed to be so unruly, maintain decorum in the future.'[roman type][line break]";
			bore M;
		otherwise if the player-class is cultist and M is intelligent:
			say "[first custom style]'I hold no grudge, though in future you should restrain yourself from such outbursts sister.'[roman type][line break]";
			bore M;
		otherwise:
			if the wind-up of M is 1 and M is intelligent:
				say "[first custom style]'The [great one] will be [please]d by this victory over such an unbeliever!'[roman type][line break][BigNameDesc of M] suddenly draws a small knife, and as [he of M] slashes at you everything goes dark!";
				now delayed fainting is 1;
				now the fainting reason of the player is 21;
				now the wind-up of M is 0;
				rule succeeds;
			otherwise if the wind-up of M is 1 and herald is alive:
				say "[first custom style]'The herald...'[roman type][line break]";
				drag to the location of herald by M;
				bore M;
				now the wind-up of M is 0;
				if herald is not interested, check perception of herald;
				rule succeeds;
			now the wind-up of M is 1;
		rule succeeds.

Section 2 - DQ

cultist-altar-force is a diaper punishment. The priority of cultist-altar-force is 5.
Definition: cultist-altar-force (called P) is appropriate:
	if current-monster is not acolyte, decide no;
	decide yes.

To compute punishment of (P - cultist-altar-force):
	let M be current-monster;
	if M is unintelligent and M is unconcerned:
		say "[one of][BigNameDesc of M] completely ignores you.[or][or][BigNameDesc of M] continues to ignore you.[or][stopping]"; [mindless cultists don't fight or punish]
	otherwise if the player is at least partially immobile:
		say "[one of][BigNameDesc of M] chants feverishly to [himself of M][or][BigNameDesc of M] fervently whispers to [himself of M][or][BigNameDesc of M] continues [his of M] hushed chanting[then at random].";
	otherwise:
		say "[one of][line break][first custom style]'[if M is intelligent]You too shall serve as a vessel for the power of the [great ones]!'[otherwise]Vessel...'[end if][roman type][line break][or][stopping]";
		now the target-room of M is Mansion23;
		if delayed stand is 0:
			if the location of the player is the target-room of M:
				say "[BigNameDesc of M] forces you onto the altar! [line break][first custom style]'[if M is intelligent]I envy you for the pure fulfilment you will achieve when the [great one] fills you with its [']blessing['].'[otherwise]The [great ones]...'[end if][roman type][line break]";
				try praying yourself with the elder altar;
				satisfy M for 600 seconds;
			otherwise:
				drag to the target-room of M by M.

Section 3 - Damage

To compute damage reaction of (M - an acolyte):
	say DamageReaction (the health of M) of M;
	if M is uninterested:
		say "[speech style of M]'You will regret this madness. I should know.'[roman type][line break]";
		commence doom.

To compute standard damage of (M - a mindless acolyte):
	if the health of M > 0:
		say DamageReaction (the health of M) of M;
		if M is unleashed:
			if M is uninterested, say "[BigNameDesc of M][']s head snaps toward you, and [he of M] assumes an aggressive stance.";
			now M is interested;
			anger M;
		otherwise:
			say "The cultist still does not seem to notice your presence.";
			calm M;
	otherwise:
		compute defeat of M;
	if deep one is in the location of the player:
		say "The grotesque fish-man seems to take offence at your actions!";
		now deep one is angered;
		now deep one is interested;
		anger deep one;
	otherwise:
		say "An ominous shape appears from behind [if the player is in Mansion23]the altar[otherwise]the cultist[end if]! It seems a horrible creature has come to defend [him of M]!";
		set up deep one;
		now deep one is angered;
		now deep one is in the location of the player.

To say DamageReactHealthy of (M - an acolyte):
	say "[big he of M] doesn[']t seem to notice any injury!".

To say DamageReactDamaged of (M - an acolyte):
	say "[big he of M] takes the hit without dodging!".

To say DamageReactTired of (M - an acolyte):
	say "[big he of M] seems to be getting frantic!".

To say DamageReactWeak of (M - an acolyte):
	say "[big he of M] seems to be fighting to maintain [his of M] balance.".

To say DamageReactSubmissive of (M - an acolyte):
	say "[big he of M] staggers as [he of M] takes the hit, pushing out [his of M] chest provocatively as [he of M] struggles to maintain [his of M] balance.".

Definition: an acolyte is automatically banishable if it is unconcerned.

To compute unique banishment of (M - an acolyte):
	let B be a random off-stage space mead;
	if B is a thing:
		say "[BigNameDesc of M] left behind a [ShortDesc of B]!";
		compute autotaking B.

The acolyte priority attack rules is a rulebook. The priority attack rules of an acolyte is usually the acolyte priority attack rules.

This is the acolyte performs mummy ritual rule:
	if diaper quest is 0:
		let M be mysterious-mummy;
		if M is in the location of the player and the cult-cooldown of M <= 0:
			say MummyChant of current-monster;
			now the cult-cooldown of M is 150;
			rule succeeds.
The acolyte performs mummy ritual rule is listed last in the acolyte priority attack rules.

To say MummyChant of (M - an acolyte):
	let E be 0;
	if the class of the player is cultist:
		say "[speech style of M]Come, sister. Help me prepare the ritual.'[roman type][line break][BigNameDesc of M] motions for you to stand in front of [ShortDesc of mysterious-mummy]. Do you obey [him of M]?";
		if the player is bimbo consenting:
			try entering mysterious-mummy;
			FavourUp M;
			now E is 1;
		otherwise:
			say "[line break][speech style of M]'Well, I suppose I can do it without you.'[roman type][line break]";
	otherwise if M is unfriendly:
		say "[speech style of M]'Come, non-believer. You WILL help me prepare the ritual.'[roman type][line break][BigNameDesc of M] takes an aggressive stance. Looks like [he of M] isn't taking no for an answer!";
		now E is 1;
	otherwise:
		say "[speech style of M]'Nonbeliever. Come, help me with the ritual.'[roman type][line break][BigNameDesc of M] motions for you to stand in front of [ShortDesc of mysterious-mummy]. Do you obey [him of M]?";
		if the player is bimbo consenting:
			try entering mysterious-mummy;
			FavourUp M by 1;
			now E is 1;
		otherwise:
			say "[line break][speech style of M]'Fool. Then I have no need of you.'[roman type][line break]";
			FavourDown M by 2;
	if E is 0:
		if mysterious-mummy is active:
			say "[BigNameDesc of M] steps into the circle of candles in front of [ShortDesc of mysterious-mummy] and begins to masturbate. You can feel pressure building up all around you as [he of M] works [himself of M] to a fast orgasm.";
			ChargeDown mysterious-mummy by 50;
		otherwise:
			say "[BigNameDesc of M] steps into the circle of candles at [ShortDesc of mysterious-mummy]'s feet, holding [his of M] arms wide open as the mummy bursts forward, completely covering [him of M] with strips of frayed linen. A moment passes, and the linen releases [him of M], reforming the mummy as [NameDesc of M] stumbles away.";
			DifficultyUp M by 1;
			ChargeDown mysterious-mummy by 30;
			let A be a random off-stage summon appropriate acolyte;
			if A is acolyte, now the next-summon of mysterious-mummy is A.

Part 4 - Conversation

To say MuteGreeting of (M - an acolyte):
	say "'Hello. What's up with your ritual?'";

To say MuteGreetResponse of (M - an acolyte):
	say "[big he of M] seems to be intentionally ignoring you.".

To say MuteResponse of (M - an acolyte):
	say "The response comes telepathically.[line break][speech style of M]'Silence heathen, of course I am; I am merely in the middle of an extremely complex ritual. No more questions.'[roman type][line break]".

Section 1 - Greeting

[FirstResponse only fires if they're friendly, right? So it only needs cases for handling such.]
To say FirstResponse of (M - an acolyte):
	if the class of the player is cultist:
		say "[first custom style]'A fine day to you, sister.'[roman type][line break]";
	otherwise if the player-class is succubus:
		say "[first custom style]'Do not speak to me as though we are allies, we merely tolerate your presence demon.'[roman type][line break]";
	otherwise if M is unfriendly:
		say TauntRejected of M;
	otherwise:[if she's friendly, it probably means the player is pregnant]
		say "[first custom style]'Greetings, but know that it is improper for the blessed to speak.'[roman type][line break]".

To say RepeatResponse of (M - an acolyte):
	if the class of the player is cultist:
		say "[speech style of M]'[one of]Yes sister, I am aware.'[or]Could we make this quick? I was trying to meditate on the void at the heart of all reality.'[or]As always a pleasure to see you, sister.'[at random][roman type][line break]";
	otherwise if the player-class is succubus:
		say "[speech style of M]'[one of]Isn't there some demon you could be sucking off instead of bothering me?'[or]Come back to me when you've joined the winning side.[or]Seriously, go away. I'm kinda busy.[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]The blessed are better seen than heard. Do remember that.'[or]Remember, the blessed are to open themselves to the void and be nothing. Which means no talking'[or]You do know you shouldn't even be thinking, much less talking?'[at random][roman type][line break]".

To say TauntAccepted of (M - an acolyte):
	say "[speech style of M]'Hm. You are still of use to the [great ones]. I will quarrel with you no further.'[roman type][line break][BigNameDesc of M] turns to leave.".

To say TauntRejected of (M - an acolyte):
	say "[speech style of M]'[one of]Kneel before the power of the [great one]!'[or]The [great one] will reward me for your life!'[or]For your blood, the [great one] will fill me with its holy [if diaper quest is 0]seed[otherwise]milk[end if]!'[or]The [great one] will bless me by making me a vessel for its [if diaper quest is 0]seed[otherwise]urinations[end if] when I destroy you!'[at random][roman type][line break]".

To say PleadRejected of (M - an acolyte):
	if the class of the player is cultist, say "[speech style of M]'[one of]Silence, sister!'[or]Quiet yourself, sister!'[or]Enough babbling!'[at random][roman type][line break]";
	otherwise say "[speech style of M]'[one of]This is a fated battle, non-believer!'[or]You WILL serve the [great one], non-believer!'[or]For your blood, the [great one] will fill me with its holy [if diaper quest is 0]seed[otherwise]milk[end if]!'[or]The [great one] will bless me by making me a vessel for its [if diaper quest is 0]seed[otherwise]urinations[end if] when I destroy you!'[at random][roman type][line break]".

To say AttentionExceeded of (M - an acolyte) with (N - a monster):
	say AttentionAccepted of M with N.

To say AttentionAccepted of (M - an acolyte) with (N - a monster):
	say "[speech style of M]'[one of]I don't mind watching.'[or]I won't take my eyes off you, non-believer.'[at random][roman type][line break]";

To say InvitationAccepted of (M - an acolyte) with (N - a monster):
	say InvitationRejected of M with N.

To say InvitationRejected of (M - an acolyte) with (N - a monster):
	say "[speech style of M]'[one of]No thanks, I prefer to watch.'[or]Your voids are full enough at the moment.'[at random][roman type][line break]";

To say AssistanceRejected of (M - an acolyte) with (N - a monster):
	say "[speech style of M]'[one of]The [great one] helps those who help themselves.'[or]Sorry, I've taken a vow of unhelpfulness.'[at random][roman type][line break]".

To say DominantResponse of (M - an acolyte):
	if M is unfriendly:
		say TauntResponse of M;
	otherwise:
		say "[speech style of M]'[one of]You are nearly ready to serve the [great one].'[or]Your time of service is close at hand.'[at random][roman type][line break][BigNameDesc of M] doesn't seem disturbed by your taunting.".

To say VanityAccepted of (M - an acolyte):
	say "[speech style of M]'I see. Are you in need of protection?'[roman type][line break]".

To say VanityAnnoyed of (M - an acolyte):
	say "[speech style of M]'Er, you know the blessed are to be seen, not heard, correct?'[roman type][line break]".

Section 2 - Questioning

To say WhereAnswer of (M - an acolyte):
	say "[first custom style]'[one of]I think this used to be the house of a rich family. They[']re long since dead though.'[or]This is our temporary base. Kind of a fixer-upper, though.'[at random][roman type][line break]".

To say WhoAnswer of (M - an acolyte):
	say "[first custom style]'We are all one in service of the [great ones], feel free to call me whatever you prefer.'[roman type][line break]".

To say StoryAnswer of (M - an acolyte):
	say "[first custom style]'[one of]I had a life before, but I was called into the service of the [great ones] when I was brought to their holy altar and experienced their glory first-hand.'[or]My story begins when I was brought to the holy altar and experienced the glory of the [great ones] first-hand. I knew then that I had a higher call.'[or]I just really like the outfits. And servitude of the almighty [great ones].'[at random][roman type][line break]".

To say EscapeAnswer of (M - an acolyte):
	say "[first custom style]'The void surrounds us all, there is no escape from it.'[roman type][line break]".

To say AdviceAnswer of (M - an acolyte):
	say "[first custom style]'[one of]We left a copy of one of our holy scriptures with the curator of this mansion. [big he of vampiress] won't give it back...'[or]I think this place is haunted. And if it wasn[']t before we got here, it probably is now.'[or]The Deep One won't appreciate it if you bother the blessed sisters. We're still cleaning the walls after the last intruder.'[or]The altar downstairs will gladly consume any corruption you bring to it.'[or]Normally we don't name the [great ones] out of respect, but there is one that we avoid out of fear. No, I won't tell you his name, I don't fancy having my brains sucked out.'[or]I heard one of the other sisters grabbed a mannequin from the woods and tried to modify it. It, uh, didn't go that well.'[or]There are some demons that have seen the truth of the [great ones] and come over to our side. They are far more valuable than you, so make sure you show respect and do whatever they tell you.'[or]The people who used to own this house had strange taste, there are cursed mirrors all over the place.'[or]If you feel the need to loot this place, take care. Some of the boxes are... wrong.'[at random][roman type][line break]".

To compute teaching of (M - an acolyte):
	say "[first custom style]'For the weak and infirm of faith, the curses their clothing bear weigh them down. But we see that while blessing is limited, the power of curses is truly bottomless. If you open your mind to the [great ones], they will answer your call and their curses will flow to you as well.'[roman type][line break]";
	teach invoking.

Section 3 - Drink Requesting

To compute friendly drink of (M - an acolyte):
	if the player-class is cultist:
		say "[first custom style]'It would not do for you to weaken, sister. Here, drink this.'[roman type][line break][big he of M] hands you a small cup of amber liquid with an odd, sweet smell. As you drink it, you feel quite refreshed but also somehow empty inside.";
		StomachUp 2;
		humiliate MODERATE-HUMILIATION;
	otherwise:
		say "[first custom style]'Sorry, but only true servants of the [great ones] would [']appreciate['] what I have to offer you.'[roman type]";
	bore M;
	say "[line break]".

To compute unfriendly drink of (M - an acolyte):
	say "[first custom style]'The only drink you will receive is your own blood, infidel!'[roman type][line break]";
	anger M;
	now M is interested.

To compute desperate drinking to (M - an acolyte):
	if the player-class is not cultist:
		say "You [if the player is upright]drop to your knees and [end if]beg [NameDesc of M] to give you something to drink.";
		compute unfriendly drink of M;
	otherwise:
		say "[if M is uninterested]You spot [NameDesc of M]! You beg [him of M][otherwise]You can't control yourself - you beg [NameDesc of M][end if] to give you something to drink. [big he of M] nods and pulls out a small cup of amber liquid. You snatch it from [him of M] and down it in one. You feel much less thirsty, but you somehow feel empty inside. The cultist nods at you and turns away.";
		humiliate MODERATE-HUMILIATION;
		StomachUp 2;
		bore M for 400 seconds;
		now the stance of the player is 1;

To compute (M - a mindless acolyte) protecting against (X - a monster):
	if M is unleashed and M is friendly:
		if X is tentacle monster or X is herald or X is deep one:
			say "[BigNameDesc of M][']s attention snaps over to you, and [he of M] assumes what looks like an aggressive stance.";
			anger M.

Section 4 - Dominant Sex

To decide which number is the dominationtype of (M - an acolyte) using (F - a fuckhole):
	decide on FUCK-FACESIT.

To compute domination interference of (M - an acolyte) for (N - a monster):
	say "[BigNameDesc of M] seems to be waiting to see how this resolves.";

To compute domination interference of (M - a mindless acolyte) for (N - a monster):
	say "[BigNameDesc of M] barely turns [his of M] head toward [NameDesc of N].";

To say DominanceFailure of (M - an acolyte):
	say "You grab [NameDesc of M] and try to force [him of M] to [his of M] knees. [big he of M] places [his of M] hand on your forehead, uttering a harsh word under [his of M] breath as every muscle in your body suddenly goes limp, causing you to crumple helplessly at [his of M] feet. [line break][speech style of M]'[one of]Your dominance goes against the will of the [great ones], non-believer...'[or]Non-believer, your dominance goes against the will of the [great ones]...'[or]This body exists only for the [great ones], non-believer...[or]My body exists only as a conduit to the will of the [great ones]...'[at random][roman type][line break]";

To compute failed dominance punishment of (M - an acolyte):
	let P be 1;
	let H be herald;
	say "Your vision fades, and you suddenly find yourself in a bubblegum pink void that extends on in every direction. The sounds and sensations of sex echo all around you as you struggle to make sense of where you are, and you find yourself face to face with a pair of red, almond-shaped eyes as a [if the times-met of H > 1]familiar[otherwise]unfamiliar[end if] voice fills every fibre of your being.";
	if the player is getting very unlucky:[all of these outcomes are kind of severe]
		if the player is able to get pregnant and the player is female:[your "soul" is creampied]
			say "[speech style of H]'[one of]OK, so like, [Azathot] is about to bust a nut inside your soul.'[or]Um, [Azathot] says your soul is like, hurting for a squirting.'[or][Azathot] is totally going to make your soul ovulate or something. '[at random][line break]You look down (or was it up) to see a [if interracial fetish is 1]big black tentacle[otherwise]huge white tentacle[end if] wrapping around your thigh, rubbing its bulbous, shiny head between your lips before sliding its way into your [if interracial fetish is 1]white [vagina]. [otherwise][vagina]. [end if]Your mind goes blank as you are overtaken by the essence of the Great Ones, and you finally realise your true purpose is-[line break]You suddenly find yourself laying face up [if the location of the player is Woods23]on the altar[otherwise]on the ground[end if], the feeling of [semen] very fresh on your mind.";
			SemenAddictUp 1;
			let G be ghostly tentacle;
			now G is penetrating vagina;
			PussyFill 1;
			now G is not penetrating vagina;
			severeHumiliate;
			Bore M;
		otherwise if the player is male and the size of penis is min penis size and TG fetish > 0:[you get turned into a girl]
			say "[speech style of herald]'Your body is totally like, [if pregnancy fetish is 1]ready to be moulded into a vessel for the spawn of [Azathot] and stuff[otherwise]powerless before the will of [Azathot][end if]!'[roman type][line break]You look down (or was it up) to see a [if interracial fetish is 1]big black tentacle[otherwise]huge white tentacle[end if] wrapping around your thigh, insistently rubbing its bulbous, shiny head against your [if the player is possessing a penis and interracial fetish is 1]inferior white [sissy-penis], forcing it to recede into your[otherwise if the player is possessing a penis]against your [ShortDesc of penis], forcing it to recede into your[otherwise]blank[end if] taint. The tentacle pushes harder, further, and deeper, simultaneously moulding your genitals into a brand new [vagina] and roughly deflowering it at the same time. Your mind goes blank in anticipation of what's to come. A lifetime of service to-[line break]You suddenly find yourself laying face up [if the location of the player is Woods23]on the altar[otherwise]on the ground[end if], your [ShortDesc of penis] and your purity gone without a trace.";
			severeHumiliate;
			SexChange the player;
			now elder altar is penetrating vagina;
			ruin vagina times 1;
			now elder altar is not penetrating vagina;
		otherwise:[you get gaped and humiliated]
			say "[speech style of H]'[one of]Your mind is fucking forfeit to the will of [Azathot], or something!'[or]All mortal minds, like, crumble before will of [Azathot]!'[at random][roman type][line break]Your [if the player is possessing a vagina]orifices are forced wide open[otherwise][asshole] is forced wide open[end if] as the void's [italic type]essence[roman type] invades your body, and for a moment, you become a part of it. The myriad of blissful souls around you welcome you as one of your own, and you finally realise the reason for your existence. It's obvious. You were born to-[line break]You suddenly find yourself laying face up [if the location of the player is Woods23]on the altar[otherwise]on the ground[end if], your entire body tingling as it acclimates to a new, much lesser sense of self.";
			severeHumiliate;
			gape asshole times 1;
			if the player is possessing a vagina, gape vagina times 1;
			Bore M;
	otherwise:
		say "[speech style of H]'[one of]Wow, your spirit tits are like, fucking ridonk!'[or]Babe, your spirit tits are like, rocking as fuck!'[or]OMG, are those spirit boobs real?'[at random][roman type][line break]Your whole body tingles as you hear applause all around you, and [if interracial fetish is 1]big black[otherwise]white[end if] tentacles fill your vision as-[line break]You suddenly find yourself laying face up [if the location of the player is Woods23]on the altar, [otherwise]on the ground, [end if]feeling slightly less like your own person.";
		slightHumiliate;
		Bore M.

[To compute failed dominance punishment of (M - an acolyte):
	let R be a random number between 1 and 2;
	if the player is female and the pregnancy of the player is 0:
		now another-turn-flavour is "[BigNameDesc of M] chants under [his of M] breath, colour creeping back into [his of M] cheeks as [his of M] creampied [vagina] looms over you.";
		now another-turn is 1;
	otherwise if the player is getting unlucky:[She summons a ghost]
		say "[BigNameDesc of M] resumes [his of M] chanting, but its rhythm is now different. An incredibly uneasy feeling settles over you as the cultist theatrically fondles [his of M] breasts and plunges a pair of fingers in and out of [his of M] mouth, as if to put on a show for some unseen audience. The atmosphere grows more intense the more perverted [he of M] makes [his of M] display, and you can practically feel the air suffocating you as [he of M] finishes, leaving you as laden with arousal as the air around you.";
		Arouse 3000;
		increase creepiness by 100;
		Bore M;
	otherwise:
		compute sissy punishment of M;
		Bore M.]

[To say DominanceFailure of (M - clairvoyant acolyte):
	say "You grab [NameDesc of M] and try to force [him of M] to [his of M] knees. [big he of M] places [his of M] hand on your forehead, uttering a harsh word under [his of M] breath as every muscle in your body suddenly goes limp, causing you to crumple helplessly at [his of M] feet. [line break][speech style of M]'[one of]You are in need of their word, non-believer...'[or]Non-believer... I will make you believe...'[or]You will see as I have seen, non-believer...[or]It is their word that all things belong to the [great ones]. You will hear it...'[at random][roman type][line break]";]

[To compute failed dominance punishment of (M - an clairvoyant acolyte):
	let B be a random worn clothing penetrating face;
	if B is clothing:
		say "[BigNameDesc of M] pulls out your [ShortDesc of B].";
		now M is carrying B;
		dislodge B;
	now another-turn-flavour is "[BigNameDesc of M] chants under [his of M] breath, colour creeping back into [his of M] cheeks as [his of M] creampied [vagina] looms over you.";
	now another-turn is 1.]

To compute unique dominance reward of (M - an acolyte):
	compute default dominance reward of M;
	DifficultyUp deep one by 2.

[None of the following four functions should trigger]
To say DominationEscapeFlav of (M - a mindless acolyte):
	do nothing.

To replace (M - a mindless acolyte) after domination:
	let R be a random placed haunted room;
	while R is the location of the player:
		now R is a random placed haunted room;
	say "A portal opens up over your head, and a huge tentacle seizes you. You feel your body warping unnaturally as you are pulled through an invisible space and thrown out in [printed name of R]";
	FatigueUp 10;
	teleport to R.

To say DominationEscapeFlav of (M - clairvoyant acolyte):
	do nothing.

To replace (M - clairvoyant acolyte) after domination:
	let R be a random placed haunted room;
	while R is the location of the player:
		now R is a random placed haunted room;
	say "A portal opens up over your head, and a huge tentacle seizes you. You feel your body warping unnaturally as you are pulled through an invisible space and thrown out in [printed name of R]";
	FatigueUp 10;
	teleport to R.

To watersports dominate (M - an acolyte):
	say "[BigNameDesc of M] drops to [his of M] knees, keeping [his of M] mouth wide open as [he of M] cups [his of M] hands under [his of M] chin. You don't wait for more invitation than that, gently holding [his of M] head in place as you begin to piss directly onto [his of M] forehead. [big he of M] remains completely still as your [urine] flows down [his of M] face[if bukkake fetish is 1 and M is clairvoyant acolyte], washing the [semen] off the bridge of [his of M] nose[end if] and into [his of M] open mouth. [big his of M] veil is soaked within moments, clinging to [his of M] skin as the piss overflows from the golden 'lake' in [his of M] mouth and runs down [his of M] [if bukkake fetish is 1 and M is clairvoyant acolyte]cream-covered [end if][ChestDesc of M]. You're not sure how to feel about [his of M] total non-reaction to being treated like a human toilet, but it's unbelievably satisfying to watch [him of M] hold all that piss in [his of M] mouth.";
	now the bladder of the player is 0;
	unless M is mindless acolyte, say AfterDominationComment 2 of M;
	moderateDignify;
	SportsGet.

To penetration dominate (M - an acolyte):
	let C be a random bottom level protection clothing;
	let A be a random insertable thing penetrating asshole;
	let F be a random gag penetrating face;
	say "[BigNameDesc of M] drops to [his of M] knees, as you [if C is not strapon-panties and C is clothing]pull your [SexDesc of penis] out of your [printed name of random worn bottom level protection clothing], [otherwise]play with your [SexDesc of penis], [end if]remaining completely motionless as you spread [his of M] legs and push your [SexDesc of penis] into [his of M] [HoleDesc of M]. [line break][speech style of M]'[one of]Defile, non-believer...'[or]Ruin, non-believer...'[or]Feed with ruination, non-believer.[or]Defile, non-believer. Ruin everything.'[at random][roman type][line break][big he of M] whispers under [his of M] breath as you begin to fuck [him of M], blankly staring up at you as [if M is presenting as male][his of M] buttcheeks clap[otherwise][his of M] breasts jiggle pleasantly[end if] with the force of your thrusts. You can faintly feel tentacles coiling around your body as you pick up speed, stroking your nipples, tracing your lips, and prodding [if asshole is actually occupied]the [printed name of random thing penetrating asshole] embedded in your [asshole][otherwise]your [asshole], which feels increasingly vulnerable by the second[end if]. [if the sex addiction of the player < 6]It's unsettling enough that you try to pull out, but that only makes the tendrils tighten their grip[otherwise if the sex addiction of the player < 12]Your instincts tell you to pull out, as much as it turns you on, but the tendrils tighten their grip as soon as you finish your thought[otherwise]And if that wasn't enough to turn you on, the tendrils tighten their grip after coiling around most of your body[end if], completely wresting away control of your hips and forcing you to fuck [NameDesc of M] with even more enthusiasm.";
	if A is a thing and F is a thing:
		say "[BigNameDesc of M][']s legs wrap around your waist, and you feel the tentacles desperately trying to strong-arm their way into your holes as the pleasure slowly begins to build. You take a bit of comfort in knowing that to an on-looker, it seems like you're really just giving it a willing slut, but as the tentacle near your [asshole] punches your [printed name of a random thing penetrating asshole], you can't deny how humiliating it feels to know it's anything but. Your [if the player is male]balls[otherwise]muscles[end if] tighten, and you emit a muffled grunt as your [SexDesc of penis] explodes into [NameDesc of M][']s [HoleDesc of M], filling it with your [load].";
		slightHumiliate;
	otherwise if A is a thing:
		say "Your mouth is forced into a submissive O-shape as an invisible tentacle forces its way in, forcing you to [if the oral sex addiction of the player > 2]enjoy[otherwise]'enjoy'[end if] its pungent, salty taste as the pleasure slowly, inexorably begins to build. You take a bit of comfort in knowing that to an on-looker, it seems like you're really just giving it to a willing slut, but as the tentacle near your [asshole] punches your [printed name of A], you can't deny how humiliating it feels to know it's anything but. Your [if the player is male]balls[otherwise]muscles[end if] tighten, and you emit a muffled grunt as your [SexDesc of penis] explodes into [NameDesc of M][']s [HoleDesc of M], filling it with your [load]. You feel the tentacle in your mouth pulsating wildly as your mouth floods with the taste of [semen], although strangely, there isn't actually anything there.";
		moderateHumiliate;
		now player-fucking is DOMINANT-NEUTRAL;
	otherwise if F is a thing:
		say "You feel a strong push from the tentacle near your asshole, forcing you wide open as [NameDesc of M][']s legs wrap around your waist. Your [if the player is male]balls tighten as it presses insistently against your prostate[otherwise]muscles tighten as it fills you[end if], and you emit a muffled groan as pleasure builds and builds, finally coming to an explosive head as your [SexDesc of penis] fills [NameDesc of M]'s [HoleDesc of M] with your [load]. You can feel the tentacle pulsating wildly, but although it's as humiliating as being inseminated, strangely, it feels like nothing is actually being left inside you.";
		strongHumiliate;
		now player-fucking is DOMINANT-NEUTRAL;
	otherwise:
		say "Your mouth is forced into a submissive O-shape as an invisible tentacle forces its way in, and a strong push from the tentacle near your asshole plugs you up from the other side too, totally flipping the power hierarchy upside down. You feel an insistent pressure [if the player is sexed male]against your prostate[otherwise]inside[end if] as [NameDesc of M][']s legs wrap around your waist, and you feel your [if the player is male]balls[otherwise]muscles[end if] tightening as a half-involuntary orgasm boils up from your loins. Waves of pleasure roll through your body as your [SexDesc of penis] explodes, filling [NameDesc of M][']s [HoleDesc of M] with your [load]. You feel the tentacles pulsating wildly as your mouth is flooded with the unmistakable taste of [semen], but strangely, there isn't actually anything there.";
		severeHumiliate;
		now player-fucking is DOMINANT-SHAMEFUL;
	FuckGet;
	now the body soreness of the player is 10;
	say "The tentacles['] grip slowly fades, and you quickly return to your feet, trying to shake off what just happened.";
	if doom counter > 0, increase doom counter by 50 + the size of penis;
	if the size of penis < 10 and the player is possessing a penis:
		if the size of penis > 7, PenisUp (10 - the size of penis);
		otherwise PenisUp 3;
	otherwise:
		say "Tingles pass through your body as your muscles suddenly grow in size.";
		StrengthUp 1;
	if M is mindless acolyte and doom counter > 0, increase doom counter by 50;
	otherwise say AfterDominationComment 1 of M.

To facesit dominate (M - an acolyte):[The cultist eats you out herself!]
	say "[BigNameDesc of M] nods in no direction in particular as you force [him of M] to [his of M] knees.[line break][speech style of M]'[one of]You must be cleansed before you become a vessel...'[or]It is their will that your body be cleansed...'[or]You must be cleansed before your role in their plan can be fulfilled...'[or]I understand. I will attend to the new vessel...'[at random][roman type][line break]";
	if the player is female:
		say "You don't really know what [he of M]'s talking about, but it sounds like [he of M]'s planning to do what you had in mind anyway, so you join [him of M] on the ground and expectantly spread your legs. [big he of M] doesn't need a word of encouragement, pushing [his of M] fingers into your [vagina] as [his of M] tongue goes to work on your clit. The veil keeps you from seeing exactly what [he of M]'s doing, but [one of][he of M]'s unexpectedly good at it for someone in a game about sucking dick[or]apparently that religious stuff has more to it, because [he of M]'s pretty good at this[stopping]! You arch your back, legs shaking with pleasure as [he of M] [if the player is very horny]brings you to orgasm within moments[otherwise if the player is horny]brings you to orgasm in under a minute[otherwise if the player is a bit horny]brings you to orgasm with the impossibly dexterous motions of [his of M] tongue[otherwise]uses [his of M] dexterous tongue to bring you to an impossibly fast orgasm[end if], extending it with rhythmic, surgically precise pumping of [his of M] fingers. You can do nothing but ride on the wave of pleasure, moaning through clenched teeth as adrenaline floods through your body. When [he of M] eventually does let up, [he of M] resumes the chanting under [his of M] breath, [if the semen volume of vagina > 0 and bukkake fetish is 1][semen] clinging to [his of M] chin as [he of M] helps[otherwise if the semen volume of vagina > 0]licking [his of M] lips as [he of M] helps[otherwise]helping[end if] you gracefully to your feet. You feel great! Although for some reason you actually feel less dignified than you did before...";
		orgasm;
		slightHumiliate;
		now the fatigue of the player is 0;
		now the semen volume of vagina is 0;
		bodyHeal 1;
	otherwise:
		say "Not that you have any idea what [he of M]'s talking about, but you decide not to waste your chance, so you join [him of M] on the ground and wait expectantly.";
		if belly liquid types > 1:
			now refractoryperiod is 0;
			say "[big he of M] crawls behind you, causing you to gasp as [he of M] spreads your [AssDesc] and thrusts [his of M] tongue into your [asshole], stretching your sphincter pleasurably as [he of M] begins to explore your delicate anal passage. [big his of M] nails dig into your [AssDesc] as the horrid mixture of bodily fluids trapped inside you touches [his of M] tongue. You hear a blood-curdling slurping noise as [his of M] lips suddenly flatten around your hole, and [his of M] tongue begins moving around inside of you with such reach and dexterity that you're forced to wonder if it's still attached to a human. The violation doesn't stop there, [his of M] grip tightening as [his of M] tongue begins to relentlessly stroke your prostate, causing you to shiver with equal parts fear and pleasure as you accept the inevitable.[line break]";
			now player-fucking is DOMINANT-NONE;
			anally orgasm shamefully;
			say "[line break]Satisfied, [big he of M] finally removes [his of M] tongue and swallows the last of your anal contents in one gulp. At least you got clean...";
			empty belly liquids;
			now player-fucking is DOMINANT-SHAMEFUL;
			strongHumiliate;
		otherwise if the semen volume of belly > 0:
			say "[big he of M] crawls behind you, causing you to gasp as [he of M] spreads your [AssDesc] and thrusts [his of M] tongue into your [asshole], stretching your sphincter pleasurably as [he of M] begins to explore your delicate anal passage. [big his of M] nails dig into your [AssDesc] as [his of M] tongue enters a trapped pocket of [semen], and you hear a ravenous grunt as [his of M] lips suddenly flatten around your hole. It's undeniably humiliating to get treated like a common refrigerator, but as [he of M] slurps the cum straight from your ass, there's something reverent about [his of M] actions that really gets under your skin. You find yourself letting go of your lingering aches and fatigue as the intense-tongue fucking runs its course, feeling refreshed as [he of M] finally removes [his of M] tongue and swallows the last of your anal contents in one gulp.";
			now the semen volume of belly is 0;
			heal asshole times 1;
			bodyHeal 3;
			now the fatigue of the player is 0;
			now player-fucking is DOMINANT-NEUTRAL;
			moderateHumiliate;
		otherwise:
			say "[big he of M] crawls behind you, pausing briefly before sliding a spit-coated finger into your [asshole], which stretches your sphincter pleasurably as it begins to explore your delicate back passage. [big his of M] nails dig lightly into your [AssDesc] as [his of M] knuckle pops in and out of your hole, tongue tenderly stroking your anal ring as [he of M] continues [his of M] (now garbled) chanting under [his of M] breath. It's a little humiliating to let [him of M] violate you like this, but the reverence in [his of M] voice really gets under your skin, and you feel yourself letting go of your lingering aches and fatigue. You let the experience run its course, returning to your feet feeling refreshed.";
			bodyHeal 3;
			heal asshole times 3;
			gape asshole times 1;
			now the fatigue of the player is 0;
			slightHumiliate;
	LickGet;
	say AfterDominationComment 3 of M.

To say AfterDominationComment (N - a number) of (M - an acolyte):
	if N is 1 and the class of the player is cultist, now N is 4;
	if N is 1, say "[speech style of M]'[one of]Your seed empowers us, non-believer...'[or]All virility is an extension of the [great ones]...'[or]You lack the conviction to stand against the [great ones], non-believer...'[at random][roman type][line break]";
	if N is 2, say "[speech style of M]'You will yet become a worthy servant of the [great ones].'[roman type][line break]";
	if N is 3, say "[speech style of M]You are ready now to carry the future of the [great ones].'[roman type][line break]";
	if N is 4, say "[speech style of M]'[one of]Your seed is empowered by the [great ones]...'[or]We are truly blessed by the [great ones], sister.'[or]Did you feel it, sister? Their blessing?'[at random][roman type][line break]".

Part 5 - Variants

Section 1 - Clairvoyant Acolyte

To set up (M - clairvoyant acolyte):
	reset M;
	now the monstersetup of M is 1;
	now the raw difficulty of M is the starting difficulty of M * 2;
	now M is unconcerned;
	now the health of M is the maxhealth of M.

To say PresentFriendlyAcceptanceFlav of (M - clairvoyant acolyte):
	say "[speech style of M]'[one of]So, you wish to hear the prophecy...'[or]I admire your dedication...'[stopping][roman type][line break]".

To compute (M - clairvoyant acolyte) protecting against (X - a monster):
	[if doomed is 5, clairvoyant acolyte delivers you to the herald.]
	if X is acolyte or the class of the player is cultist:
		say "[if the class of the player is cultist and X is acolyte][line break][speech style of M]'There is no point in fighting amongst ourselves... the rise of the [great ones] is inevitable...'[roman type][line break][BigNameDesc of M] doesn't seem to want to get involved![otherwise][line break][speech style of M]'Resisting is useless, non-believer. The [great ones] will rise. It is is... inevitable.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Your petty squabbles are nothing compared to the might of the [great ones]...'[roman type]";
	distract M.

To compute unique periodic effect of (M - a clairvoyant acolyte):
	if a random number between 1 and 45 is 1:
		if M is in the location of the player, say "[BigNameDesc of M] sighs as [if diaper quest is 1][milk]squirts out of [his of M] nipples[otherwise][semen] dribbles out of [his of M] [HoleDesc of M][end if]. [big he of M] recites a slow chant as it forms a puddle on the floor.";
		if diaper quest is 0, PuddleUp semen by 1 in (the location of M);
		otherwise PuddleUp milk by 1 in (the location of M);
		if doomed > 0 and doomed < 5 and doom counter > 0, increase doom counter by 5.

To say MercyReaction of (M - clairvoyant acolyte):
	say "Your attempts to beg are muffled by [NameDesc of M][']s ass and pussy in your face!".

To compute kneeling reaction of (M - clairvoyant acolyte):
	say "[one of][BigNameDesc of M] walks over to you, eyes rolling beneath [his of M] veil as [semen] leaks freely from [his of M] [vagina].[or][BigNameDesc of M] traces strange symbols in the air as [he of M] strides over to you, only tangentially aware of the steadily increasing flow of [semen] from [his of M] already [semen] packed [vagina].[or]A colour creeps back into [NameDesc of M][']s skin as [he of M] calmly glides over to you, more and more turned on by [his of M] imminent 'missionary' work.[or][BigNameDesc of M] begins to chant under [his of M] breath, magically stemming the flow of leftover [semen] down [his of M] legs as [he of M] bears down on you.[or][BigNameDesc of M] looms over you, [his of M] cum dripping pussy level with your head. [big his of M] face is directed upward, and [he of M]'s wobbling slightly, as if looking at something [he of M] cannot quite see.[in random order][line break]";
	say "[speech style of M][one of]The blessed seed of the [great ones] will fertilise your mind...'[or]When you have tasted their seed, your mind will grow open for the [great ones]...'[or]The [great ones] blessed me with their seed... this is my responsibility...'[at random][roman type]";
	humiliate 75.

To say waitingflav of (M - clairvoyant acolyte):
	if the player is not able to speak:
		say "[one of][variable custom style][gag sounds][roman type][line break][or]You look up at [NameDesc of M] silently.[at random]";
	otherwise if the semen taste addiction of the player < 8:
		say "[one of]You stare up at the cultist, stunned.[or]You shake your head in disbelief of the situation you've gotten yourself into.[or]You turn away. [line break][first custom style]'Hmmph.'[roman type][line break][or][line break][first custom style]'Whatever you're thinking of doing to me, please don't.'[roman type][line break][or]You look away, knowing full well you have no chance of escape.[or][line break][first custom style]'Fuck off, I'm not doing it.'[roman type][line break][or]You find yourself paralysed with dread, staring at the disgusting [semen] dripping from [NameDesc of M][']s holes.[in random order]";
	otherwise if the semen taste addiction of the player < 11:
		say "[one of]You are surprised with how calm you feel about the idea of swallowing the [semen] dripping out of [NameDesc of M][']s holes.[or]You wait obediently, convincing yourself it's because you have no other choice, and not because you are starting to enjoy the taste of [semen].[or][line break][variable custom style]'I don't care if I have to eat you out, but please don't stay so long that you make me faint.'[roman type][line break][or][line break][variable custom style]'[if the class of the player is cultist]Okay, I guess I can do that. You know more about this religious stuff than I do[otherwise]Okay I'll lick it out of you but don't think I care about any of that weird religious stuff. You just really look like you need an orgasm[end if].'[roman type][line break][or][if the sex addiction of the player < 11]You try not to think about[otherwise]You find yourself thinking about[end if] the creature that must have been the source of that much [semen].[or][if the oral sex addiction of the player < 4]Internally you feel disgusted by the idea of [him of M] sitting on your face, but[otherwise]You[end if] find yourself licking your lips in anticipation.[in random order]";
	otherwise:
		say "[one of][if the player is not a pervert]You are stunned with indecision - you don't want to have to lick [him of M] out but you do love the idea of getting to swallow some more [semen].[otherwise]You stare at [his of M] [semen] dripping filled orifices and lick your lips greedily. It's like Christmas came early![end if][or]You stare at [NameDesc of M][']s [semen] coated pussy lips and thighs, and find yourself licking your lips in anticipation. [line break][second custom style]'It's a tough job, but somebody's got to do it.'[roman type][line break][or][line break][second custom style]'I do love [semen]...'[roman type][line break][or][line break][second custom style][if the class of the player is cultist]I knew I picked the right religious order to follow! I LOVE [semen][otherwise]I wouldn't mind joining [his of M] religious order or whatever if I get to swallow [semen] all day[end if]![roman type][line break][or][line break][second custom style]'I'm always up for getting another taste of a stranger's [semen]!'[roman type][line break][in random order]".

To say RepeatResponse of (M - clairvoyant acolyte):
	say "[one of]Though they may be delayed now, they will always find a way to return. That is the power of the Old Gods.'[or]Tomorrow's horoscope is... sunny.'[or]You fight a battle you cannot win.'[or]You will find yourself in a blasphemous room, and fight against a horse[']s third leg.'[cycling]";

To compute standard damage of (M - clairvoyant acolyte):
	if the health of M > 0:
		if M is uninterested:
			say "The [man of M] laughs bitterly and takes a fighting stance.[line break][speech style of M]'[if the class of the player is cultist]Jealousy is pointless. I will show you...'[otherwise][one of]Do you truly believe you can stand against a prophet of the [great ones]?'[or]Even you can be useful to the [great ones].'[at random][end if][roman type][line break]";
			now M is interested;
			anger M;
			commence doom;
		otherwise:
			say DamageReaction (the health of M) of M;
	otherwise:
		if deep one is not in the location of the player:
			say "An ominous shape appears from behind [if the player is in Mansion23]the altar[otherwise]the cultist[end if]! It seems a horrible creature has come to avenge [him of M]!";
			set up deep one;
			now deep one is angered;
			now deep one is in the location of the player;
		compute defeat of M.

To say PresentFriendlyAcceptanceFlav of (M - clairvoyant acolyte):
	say "[speech style of M]'[one of]I cannot deny you.'[or]You need only ask.'[at random][roman type][line break]".

To say PresentFriendlyRejectionFlav of (M - clairvoyant acolyte):
	if presented-orifice is a potential target:
		say "[speech style of M]'If you ask me, your mind is open enough already.'[roman type][line break]".

The unique punishment rule of the clairvoyant acolyte is the default unique punishment rule.

To compute facial sex of (M - clairvoyant acolyte):
	increase the suffocation of M by 3;
	if the body soreness of the player + the suffocation of M >= 17:
		say "[BigNameDesc of M] continues to torture you with [his of M] crotch. You really need to breathe soon! You are so exhausted there is nothing you can do, you struggle weakly but [his of M] ass cheeks and [vagina] are completely preventing you from breathing. You pass out.";
		now delayed fainting is 1;
		now the fainting reason of the player is 9;
	otherwise:
		if bukkake fetish is 1:
			say "[one of]A large glob of [semen] leaks out of [his of M] ass and onto your face.[or]Warm [semen] seeps out of [his of M] asshole and onto your face.[or]Thick [semen] slowly trickles out of [his of M] asshole, rolling down the side of your nose and over your cheeks.[or]A fat wad of [semen] leaks out of [his of M] butt and plops wetly onto your face.[or][semen] oozes out of [his of M] gaping butthole, pooling on your face.[or]Thick [semen] dribbles out of [his of M] butt, rolling down your cheeks.[in random order][if the semen addiction of the player < 7][line break][first custom style]How disgusting![roman type][line break][end if][line break]";
			CumFaceUp 1;
		compute facesit sex of M;
		[let D be a random worn messed knickers; Weird bug was happening that forced this to be commented, apparently
		if D is clothing:
			say "[BigNameDesc of M] [one of]tentatively feels the warmth of[or]gently puts pressure against[stopping] your [if D is perceived messed]messy [end if][ShortDesc of D] with [his of M] hands. [line break][speech style of M]'[one of]Oh my god, how disgusting! This must be weird for you as well, right? Because it's fucking weird for me.'[or][DiaperHumiliation of M][stopping][roman type][line break]";
			if there is worn perceived unmessed knickers, compute state check of a random worn messed knickers;
		otherwise if there is a worn diaper:
			say "[BigNameDesc of M] lovingly rubs your diaper[one of] from [his of M] advantageous position[or][stopping]. [line break][speech style of M]'[one of]What's this? Why are you wearing a nappy, honey? Are you having potty problems?'[or][DiaperHumiliation of M][stopping][roman type][line break]";
			humiliate 200;
			arouse 300;]
		say "[if the body soreness of the player + the suffocation of M < 8]You are still holding your breath.[otherwise if the suffocation of M < 12]You are running out of breath![otherwise]You still can't breathe. You're going to faint any second now![end if]".

To say FacesitResisting of (M - clairvoyant acolyte):
	say "[one of]You refuse to let [him of M] use you as [his of M] own personal cleaning service, or whatever it is [he of M] wants from you. [or]You keep your mouth shut, valuing your dignity over your ability to breathe. [or]You spitefully purse your lips, wanting to make sure [he of M] gets as little out of it as possible. [or]You keep your mouth shut. At least if you pass out, you'll still have some dignity. [in random order][BigNameDesc of M] keeps grinding on your face anyway!";

To say FacesitSubmissionResponse of (M - clairvoyant acolyte):
	say "[one of]You lick the seer's cunt with your tongue, swallowing the [semen] as it slowly flows into your mouth.[or]You dig your tongue into the seer's pussy, which immediately rewards you with a thick glob of salty [semen].[or]You tease the seer's clit with your tongue. Warm [semen] slowly dribbles out of [his of M] cunt and into your open mouth.[or]You spear your tongue into the seer's gaping honey pot, allowing the [semen] within to slowly roll into your mouth.[or]You obediently open your mouth, allowing the [semen] slowly oozing out of [his of M] pussy to slide down your throat.[or][if the semen taste addiction of the player < 8]You reluctantly stroke the seer's folds with your tongue, swallowing obediently as [semen] dribbles into your mouth.[otherwise if the sex addiction of the player < 10]You somewhat reluctantly stroke the seer's folds with your tongue, swallowing obediently as [semen] dribbles into your mouth.[otherwise]You eagerly stroke the seer's folds with your tongue, swallowing obediently as [semen] dribbles into your mouth.[end if][or][if the semen taste addiction of the player < 8]You leaf through [his of M] folds with your tongue, trying to clean it out while tasting as little [semen] as possible. There's still quite a lot.[otherwise if the semen addiction of the player < 12]You obediently scour [his of M] pussy with your tongue, hesitating only for a moment before swallowing the [semen] that trickles out.[otherwise]You kiss and lick every inch of [his of M] pussy, eagerly lapping up and swallowing any [semen] that trickles out.[end if][in random order]";
	StomachSemenUp 1;
	progress quest of creampie-drinking-quest.

To say NearingClimaxFacesit of (M - clairvoyant acolyte):
	say FacesitSubmissionResponse of M;
	cutshow figure of wench cutscene 5 for M.

To compute facial climax of (M - clairvoyant acolyte):
	compute facesit climax of M.

To compute unique facesit climax effect of (M - clairvoyant acolyte):
	SemenTasteAddictUp 1;
	strongHumiliate;
	if the reaction of the player > 0, slightHumiliate;
	orgasm bore M.

To say FacesitClimaxFlav of (M - clairvoyant acolyte):
	say "You hear a sigh and then a moan and then a screaming orgasm come from above. Feminine sex juices flood [if the reaction of the player > 0]into your mouth[otherwise]onto your face[end if], and a strange 'blocked' feeling falls over your senses. You feel some part of you fading, draining faster and faster into a place you mind cannot reach, until your senses seem to fade completely and... return. [BigNameDesc of M] watches you[if M is in mansion02], perched on the bed[otherwise] calmly[end if]. [line break][speech style of M]'[one of]How was it?'[or]Did you see it?'[or]Have you heard it?'[or]Did they touch you?'[or]Their power is great...'[at random][roman type].".

This is the seer facesitting prevents breathing rule:
	if there is clairvoyant acolyte penetrating face, decide yes;
	decide no.
The seer facesitting prevents breathing rule is listed in the breathing blocking rules.

This is the seer monster convinced rule:
	let M be current-monster;
	if presented-orifice is face:
		say "[BigNameDesc of M] sees your request and smiles calmly. [line break][speech style of M]'You will make a fine servant of the [great ones].'[roman type][line break]";
		now the chosen-orifice of current-monster is face;
		rule succeeds;
	otherwise if presented-orifice is not nothing:
		say "[BigNameDesc of M] sees your request and shakes [his of M] head. [line break][speech style of M]'I will use your body in no such manner. You are to serve the [great ones], and them alone.'[roman type][line break]".
The monster convinced rule of clairvoyant acolyte is usually the seer monster convinced rule.

To compute (M - clairvoyant acolyte) entering mouth:
	if milking is 1:
		do nothing;
	otherwise:
		if the player is clit stuck:
			say "[BigNameDesc of M] yanks on your clit lead and forces you to roll over onto your back!";
		otherwise:
			say "[BigNameDesc of M] tries to roll you over onto your back!";
		let R be a random number between the difficulty of M * 3 and 27;
		let B be the weight of the player + (the strength of the player / 3);
		if presented-orifice is face or the player is subdued or M is friendly-fucking, now B is 0; [If the player is consenting, she flips you automatically]
		if debuginfo > 0, say "[input-style]Cultist flip check: [if presented-orifice is face]player presented mouth = automatic success[otherwise if the player is subdued]player subdued by held clothing = automatic success[otherwise if M is friendly-fucking]player initiated sex = automatic success[otherwise]flip skill ([difficulty of M * 3]) ==> RNG([difficulty of M * 3]~27) = [R] | [B * 1].5 = ([weight of the player].5) weight + ([strength of the player / 3]) strength[end if][roman type][line break]";
		if R > B:
			now the suffocation of M is 0;
			if presented-orifice is face or M is friendly-fucking, say "You let [him of M], and [he of M] immediately sits on your face. ";
			otherwise say "[big he of M] succeeds, and immediately sits on your face. ";
			say MouthPenetrationFlav of M;
			if bukkake fetish is 1:
				say "A large glob of [semen] leaks out of [his of M] ass and onto your face.[if the semen addiction of the player < 7][line break][first custom style]How disgusting![roman type][line break][end if][line break]";
				CumFaceUp 1;
			say "[one of][big his of M] hold on your neck and head is too strong, you'll have to choose between either [bold type]resist[roman type]ing and risk it taking longer until you can breathe or [bold type]submit[roman type]ing by licking [him of M] out, swallowing the [semen] dripping from [his of M] pussy and hoping [he of M] [if the sex addiction of the player < 3]finishes[otherwise if the sex addiction of the player < 7]climaxes[otherwise]cums over your face[end if] quickly[or]Once again, you won't be able to breathe until [he of M]'s finished with you[stopping]!";
			now M is filling face;
		otherwise:
			say "[big he of M] doesn't manage it this time.";
			if B > 22:
				say "[big he of M] gives up, [if the the weight of the player >= the strength of the player / 3]your body is too heavy[otherwise]you are too strong[end if] for [him of M] to push over. [big he of M] leaves you lying on the ground[if the body soreness of the player > 6] panting heavily,[end if] and loses interest.";
				bore M for 600 seconds.

To say MouthPenetrationFlav of (M - clairvoyant acolyte):
	say "[big he of M] buries your nose into [his of M] cum-dripping asshole and covers your mouth with [his of M] cum-filled [vagina]. You can't breathe![line break][speech style of M]'[one of]Drink, sister. Drink it all...'[or]Feast on the blessed nectar of the [great ones]...'[or]The taste will be beyond your comprehension at first. Have no fear...'[or]Lick me clean. Prove your devotion to the old gods...[purely at random][roman type][line break]";

Acolyte Cultist ends here.
