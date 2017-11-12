Consensual Sex by Monster Framework begins here.

Definition: a thing (called T) is friendly fucking:
	if T is not monster, decide no;
	if T is not friendly-fucking, decide no;
	if T is unfriendly, decide no;
	if T is not penetrating a body part, decide no;
	decide yes;

Definition: yourself is friendly fucked:
	if the number of live things penetrating a body part is 0, decide no;
	repeat with T running through live things penetrating a body part:
		if T is not friendly fucking, decide no;
	decide yes.

To check consensual submissive sex of (M - a monster):
	now current-monster is M;
	follow the monster friendly convinced rule of M;
	if the rule succeeded:
		now the chosen-orifice of M is presented-orifice;
		now M is friendly-fucking;
		FavourUp M by the sex desire of M;
		follow the insertion rules of M;
	otherwise:
		if presented-orifice is nothing, say "The [M] can't seem to understand what you want from [him of M].".

To decide which number is the sex desire of (M - a monster):
	decide on 1. [How much favour does the player gain from fucking them?]

This is the default monster friendly convinced rule:
	if presented-orifice is a reasonable target and the refactory-period of current-monster <= 0:
		now the chosen-orifice of current-monster is presented-orifice;[This is on top so flavor can refer to chosen orifice.]
		say "[PresentFriendlyAcceptanceFlav of current-monster]";
		rule succeeds;
	otherwise if presented-orifice is not nothing:
		say "[PresentFriendlyRejectionFlav of current-monster]".

To say PresentFriendlyAcceptanceFlav of (M - a monster):
	if M is intelligent, say "[speech style of M]'You're on!'[roman type][line break]";
	otherwise say "The [M] seems convinced by your request!".

To say PresentFriendlyRejectionFlav of (M - a monster):
	if M is intelligent, say "[speech style of M]'[if presented-orifice is a reasonable target and the refactory-period of M > 0]I need some time to recover from our last session!'[otherwise if presented-orifice is a potential target]Not interested.'[otherwise]Not today, honey.  I don't feel like it.'[end if][roman type][line break]";
	otherwise say "The [M] seems to ignore your request.".

To say FriendlyAssholePenPrep of (M - a monster):
	say AssholePenPrep of M.

To say FriendlyAssholePenetrationFlav of (M - a monster):
	let N be a random monster penetrating vagina;
	let O be a random monster penetrating face;
	let F be the openness of asshole - the girth of M;
	say "[FriendlyAssholePenPrep of M]";
	if F < -2:[low bimbo: 2, mid: 2, high: 1; very tight]
		if the sex addiction of the player < 7:
			say "[one of]You stare at the ground, silently chiding yourself as [his of M] [manly-penis] presses at your sphincter, adding a bit of spit for lube as he slowly, painfully forces [his of M] way in. Trembles of shame and humiliation make their way up your spine as [he of M] begins to thrust.[or]You push back against [him of M], trembling with shame and humiliation as you work together with [him of M] to force your sphincter to slowly, painfully stretch to admit [his of M] invading length. The [M] lubricates your [asshole] with a little bit of spit and immediately begins to thrust.[at random]";
		otherwise if the sex addiction of the player < 12:
			say "[one of]You wait quietly as [his of M] [manly-penis] presses at your sphincter, adding a little bit of spit for lube as he slowly, painfully forces [his of M] way in. A rush of shame and excitement makes its way up your spine as [he of M] begins to thrust.[or]You push back against [him of M], shivering with both embarrassment and excitement as [he of M] tries to force [his of M] [manly-penis] into your [asshole]. Your combined efforts force your reluctant sphincter to slowly, painfully stretch accepting his invading length inch by inch until finally [he of M] tightens his grip and begins mercilessly pounding your [if the soreness of asshole > 3]throbbing[otherwise]increasingly tender[end if] hole.[at random]";
		otherwise:
			say "You eagerly push back against [him of M] as [his of M] [manly-penis] presses at your sphincter, your combined efforts, along with a little bit of spit, forcing your tight [asshole] to slowly, painfully stretch until [he of M] finally slides all the way in. [if M is male and M is not gladiator]He[otherwise]She[end if] immediately begins to thrust.";
	otherwise if F < 0:[low bimbo: 3 mid: 2, high: 1; less tight]
		if the sex addiction of the player < 7:
			say "[one of]You angrily chide yourself as [his of M] [manly-penis] presses at your sphincter, just tight enough to hurt as much as possible and still allow [him of M] to force [his of M] way in without extra lube. The [M] gives you a moment to get used to [him of M] and slowly begins to thrust.[or]You tremble with shame as [he of M] presses [his of M] [manly-penis] presses at your sphincter, which barely stretches enough to let [him of M] slowly force [his of M] way in. The [M] gives your [AssDesc] a slap and slowly begins to thrust. [or]You give [him of M] a fake smile over your shoulder as [his of M] [manly-penis] forces open your sphincter, realizing with a stifled grunt of pain just how much power you have if [he of M] doesn[']t want to listen to you. None. Maybe this was a bad idea.[at random]";
		otherwise if the sex addiction of the player < 12:
			say "[one of]It's all you can do not to impale yourself backward on his [manly-penis] as the throbbing tip presses at your sphincter, which has just enough give to allow him to force his way in without adding any lube at all, and remind you how much you wish it didn't. The [M] chuckles and immediately begins thrusting.[or]You bite your lip as [his of M] throbbing cockhead pushes through your reluctant sphincter, desperately trying to hate the [his of M] big, hard [manly-penis] slowly forcing its way into your too-tight [asshole]. The [M] gives you an uncomfortably welcome spank and immediately begins to thrust.[at random]";
		otherwise:
			say "You eagerly push back against [him of M] as [his of M] [manly-penis] presses at your sphincter, which is just tight enough for you to feel him as much as possible without needing any extra lube. The [M] gives your [AssDesc] a spank as [he of M] slides in and begins to thrust.";
	otherwise if F < 2:[low bimbo: 2 mid: 2, high: 2; less loose]
		if the sex addiction of the player < 7:
			say "[one of]You scowl at the ground in front of you as [he of M] pushes [his of M] [manly-penis] into your [asshole], which easily stretches to accommodate him. The [M] slowly begins to thrust, holding your hips for 'support' as [his of M] balls slap your taint.[or]You give [him of M] a fake smile over your shoulder as [he of M] pushes [his of M] [manly-penis] into your [asshole], which he mistakes for real enthusiasm. The [M] starts out hard and fast, every thrust further shaming you for letting it happen.[at random]";
		otherwise if the sex addiction of the player < 12:
			say "[one of]You look over your shoulder as [he of M] pushes [his of M] [manly-penis] into your [asshole], which is all too ready to accommodate him. The [M] leers at you as [his of M] hands explore your body, groping your [BreastDesc] and squeezing your [AssDesc] until you finally lose your patience and begin fucking yourself with [his of M] cock.[or]You ease yourself backward, onto [his of M] of [manly-penis], emitting a quiet moan when [he of M] suddenly tightens [his of M] grip on your waist and slams it the rest of the way into your [asshole].  The [M] 'apologises' with an all-too-welcome slap on the ass and immediately begins to thrust.[at random]";
		otherwise:
			say "[one of]You [if there is a monster penetrating face]moan happily[otherwise]give [him of M] a hungry look over your shoulder[end if], wiggling your hips as [he of M] pushes every inch of [his of M] [manly-penis] into your eager [asshole]. The [M] slaps your [AssDesc] and immediately begins to thrust.[or]You push back against [his of M] invading [manly-penis], moaning throatily as every inch sinks into your loose hole. The [M] gropes your [BreastDesc] as you begin to work your hips back and forth, eager to enjoy [him of M]self while you proudly do the work.[at random]";
	otherwise:[low bimbo: 1 mid: 3, high: 3; very loose]
		if the sex addiction of the player < 7:
			say "You sigh and roll your eyes as [he of M] slides [his of M] dick into your [asshole], beginning to mechanically fuck yourself on [his of M] cock. The [M] brazenly smacks your [AssDesc] and gropes your [BreastDesc], obviously willing to let you do all the work.";
		otherwise if the sex addiction of the player < 12:
			say "[one of]You emit a low moan as [he of M] slides [his of M] [manly-penis] slides into your [asshole], grabbing both of your wrists and pinning them behind your back as [he of M] immediately begins to thrust. Somehow, the thought that [he of M] might not stop if you ask turns you on even more.[or]You look over your shoulder as [he of M] slides [his of M] [manly-penis] into your [asshole], suddenly realizing what a [second custom style]naughty[roman type] expression you're making when he slaps your [AssDesc] and immediately begins thrusting.[or]You moan as the [M] slams [his of M] [manly-penis] into your [asshole] and begins thrusting at full force! The [M] doesn[']t seem to care you invited [him of M], [he of M][']s still treating you like a piece of meat! But then again, it's not like you hate it...[at random]";
		otherwise:
			say "[one of]You giggle happily as [he of M] slides [his of M] [manly-penis] into your [asshole], working your hips back and forth as [he of M] smacks your [AssDesc] and gropes your [BreastDesc]. It's even more fun when you get to do the work![or]You proudly look over your shoulder as [he of M] slides [his of M] [manly-penis] into your loose [asshole], grinning at [him of M] as [he of M] begins to thrust. You[']re loose enough that [he of M] can go all out from the get go, his balls slapping audibly against your [if the player is male]sack[otherwise]cunt[end if] as [his of M] hands grab hold of your waist.[or]You push backward against [him of M] as [his of M] [manly-penis] enters your [asshole], glancing over your shoulder to [if there is a worn ballgag]stare seductively at the [M] as you begin to work your hips back and forth.[otherwise]seductively lick your lips as you begin to work your hips back and forth.[end if][at random]".[This needs changing for some monsters!]

To say FriendlyVaginaPenPrep of (M - a monster):
	say VaginaPenPrep of M.

To say FriendlyVaginaPenetrationFlav of (M - a monster):
	let N be a random thing penetrating asshole;
	let O be a random monster penetrating face;
	let F be the openness of asshole - the girth of M;
	say "[FriendlyVaginaPenPrep of M]";
	if F < -2:[low bimbo: 2, mid: 2, high: 1]
		if the sex addiction of the player < 7:
			say "[one of]You stare at the ground, silently chiding yourself as [his of M] [manly-penis] slowly, painfully forces its way into your [vagina], every inch more painful than the last as your inner walls desperately try to adjust to the huge invader. Trembles of shame, pain, and humiliation radiate through your being as [he of M] begins to thrust.[or]You push back against [him of M], trembling with shame and humiliation as [his of M] [manly-penis] slowly enters your [vagina], every inch just as intensely painful as the last. No matter what way you move or how slowly you do it, your inner walls just can't adjust to the huge invader, and the pain nearly drowns out your regret when [he of M] begins to thrust.[at random]";
		otherwise if the sex addiction of the player < 12:
			say "[one of]You do your best to stay still as [his of M] [manly-penis] slowly, painfully forces its way into your [vagina] every inch more painful than the last as your inner walls desperately try to adjust to the huge invader. Shame, pain, and raw excitement radiate through your being as [he of M] begins to thrust[or]You push back against [him of M], shivering with both shame and excitement as [his of M] [manly-penis] slowly enters your too-tight [vagina], every inch just as painful as the last. Even as your inner walls desperately try to adjust to the huge invader, you can't help but relish the grunt of pleasure of accompanying each of [his of M] thrusts.[at random]";
		otherwise:
			say "You eagerly push back against [him of M] as [his of M] [manly-penis] slowly enters your [vagina], every inch more deliciously painful than the last as your inner walls desperately try to adjust to the huge invader. The [M] can't help but let you know how much [he of M] loves it at every turn, beginning to thrust without bothering to get it all the way in.";
	otherwise if F < 0:[low bimbo: 3 mid: 2, high: 1]
		if the sex addiction of the player < 7:
			say "[one of]You angrily chide yourself as [his of M] [manly-penis] slowly enters your [vagina], fingers of pain licking their way through your belly as your inner walls to desperately stretch. The [M] doesn't seem to react to your barely hidden groan of pain, [if M is intelligent]hissing[otherwise]grunting[end if] with pleasure as [he of M] slowly begins to thrust.[or]You tremble with shame as [he of M] slowly forces [his of M] [manly-penis] into your [vagina], which only barely stretches enough to accommodate him. The [M] gives your [AssDesc] a slap, as if to remind you everything about this you regret as he slowly begins to thrust.[or]You give [him of M] a fake smile over your shoulder as [his of M] [manly-penis] forces its way into your [vagina], realizing with a stifled grunt of pain just how much power you have if [he of M] doesn[']t want to listen to you, or if you don[']t want a creampie. None. Maybe he won[']t realize that?[at random]";
		otherwise if the sex addiction of the player < 12:
			say "[one of]You can[']t help a sigh of pleasure as [he of M] slowly forces [his of M] [manly-penis] into your [vagina], faking a grunt of pain just so [he of M] knows [he of M]'s a little too big. The [M] chuckles, giving your [AssDesc] a firm swat as he slowly begins to thrust.[or]You bite your lip as [his of M] throbbing [if M is gladiator]'man'[otherwise]man[end if]hood enters your [vagina], only dimly realizing how much it hurts as your inner walls desperately stretch to accommodate him. The [M] gives you a brief moment to get used to him before he begins to thrust.[at random]";
		otherwise:
			say "You already know he[']s a little too big, but that[']s why you want to fuck him so much! The [M] tightens [his of M] grip on your waist as you [if the player is able to use manual dexterity]guide [his of M] throbbing hardness into your [vagina], emitting a throaty moan as your walls draw taut around [his of M] invading [manly-penis][otherwise]impale yourself on [his of M] throbbing hardness, emitting a throaty moan as your [vagina] desperately stretches to accommodate the invading [manly-penis][end if]. The [M] immediately begins to thrust.";
	otherwise if F < 2:[low bimbo: 2 mid: 2, high: 2]
		if the sex addiction of the player < 7:
			say "[one of]You scowl at the ground in front of you as [he of M] pushes [his of M] [manly-penis] into your [vagina], which easily stretches to accommodate him. The [M] pauses for a moment to grope your [BreastDesc] before he begins to thrust, as if to remind you how dumb you are for actually letting [him of M] do it.[or]You give [him of M] a fake smile over your shoulder as [he of M] pushes [his of M] [manly-penis] into your [vagina], which he somehow mistakes for real enthusiasm. The [M] starts out hard and fast, every thrust further shaming you for actually inviting him into this.[at random]";
		otherwise if the sex addiction of the player < 12:
			say "[one of]You look over your shoulder as [he of M] pushes [his of M] [manly-penis] into your [vagina], which is all too ready to accommodate [him of M]. The [M] looks you in the eye as [his of M] hands explore your body, groping your [BreastDesc] and squeezing your [AssDesc] until you finally lose your patience and begin fucking yourself with [his of M] cock.[or]You ease yourself backward, onto [his of M] of [manly-penis], emitting a quiet moan when [he of M] suddenly tightens [his of M] grip on your waist and slams it the rest of the way into your [vagina].  The [M] 'apologises' with an all-too-welcome slap on the ass and immediately begins to thrust.[at random]";
		otherwise:
			say "[one of]You [if there is a monster penetrating face]moan happily[otherwise]give [him of M] a hungry look over your shoulder[end if], wiggling your hips as [he of M] pushes every inch of [his of M] [manly-penis] into your eager [vagina]. The [M] slaps your [AssDesc] and immediately begins to thrust.[or]You push back against [his of M] invading [manly-penis], moaning throatily as every inch sinks into your [vagina]. The [M] gropes your [BreastDesc] as you begin to work your hips back and forth, eager to enjoy [him of M]self while you proudly do the work.[at random]";
	otherwise:[low bimbo: 1 mid: 3, high: 3]
		if the sex addiction of the player < 7:[EVERYTHING BELOW IS WIP]
			say "You sigh and roll your eyes as [he of M] slides [his of M] [manly-penis] into your [vagina], mechanically beginning to fuck yourself on [his of M] throbbing hardness. The [M] brazenly smacks your [AssDesc] and gropes your [BreastDesc], obviously willing to let you do all the work.";
		otherwise if the sex addiction of the player < 12:
			say "[one of]You [if the player is able to use manual dexterity]reach between your legs, spreading your lips wide[otherwise]emit a low moan[end if] as [he of M] slides [his of M] [manly-penis] slides into your [vagina], grabbing both of your wrists and pinning them behind your back as [he of M] immediately begins to thrust. Somehow, the thought that [he of M] might not stop if you ask turns you on even more.[or]You look over your shoulder as [he of M] slides [his of M] [manly-penis] into your [vagina], suddenly realizing what a [second custom style]naughty[roman type] expression you're making when he slaps your [AssDesc] and immediately begins thrusting.[or]You moan as the [M] slams [his of M] [manly-penis] into your [vagina] and begins thrusting at full force! It's degrading to get treated like a piece of meat like this, but you can[']t help loving every second![at random]";
		otherwise:
			say "[one of]You giggle happily as [he of M] slides [his of M] [manly-penis] into your [vagina], working your hips back and forth as [he of M] smacks your [AssDesc] and gropes your [BreastDesc]. It's even more fun when you get to do the work![or]You proudly look over your shoulder as [he of M] slides [his of M] [manly-penis] into your loose [vagina], grinning at [him of M] as [he of M] begins to thrust. You[']re loose enough that [he of M] can go all out from the get go, his balls slapping audibly against you as [his of M] hands grab hold of your waist.[or]You push backward against [him of M] as [his of M] [manly-penis] slides into your [vagina], glancing over your shoulder to [if there is a worn ballgag]stare seductively at the [M] as you begin to work your hips back and forth.[otherwise]seductively lick your lips as you begin to work your hips back and forth.[end if][at random]".[This may need changing for every monster!]

To say FriendlyBreastsPenetrationFlav of (M - a monster):
	say "The [M] places [his of M] [manly-penis] in between your [ShortDesc of breasts], and begins thrusting!". [This needs changing for every monster!  It's boring and might not even be accurate if the monster isn't male.]

To say FriendlySexResistFlav of (T - a thing):
	say "You squirm but can't get away!".

To say FriendlySexResistFlav of (M - a monster):
	if the player is able to speak, say "[variable custom style]'[if the player is in danger][one of]Oh god, we have to stop now!'[or]Uh-oh.  Please get off quickly, I need to deal with this!'[or]FUCK!'[at random][otherwise][one of]This was fun, but we need to stop now.'[or]I'm finished now, please let me go!'[or]I've changed my mind, I don't want this!'[or]Sorry, I'm not feeling it any more.'[at random][end if][roman type][line break]";
	otherwise say "[if the player is able to make sounds][variable custom style][muffled sounds][roman type][line break][end if]";
	if M is penetrating an orifice, say "[one of]You tap the [M] on the [if M is human]shoulder[otherwise]back[end if], trying to get [him of M] to stop.[or]You try to yank your [if M is penetrating a fuckhole]hips[otherwise if M is penetrating face]head[otherwise]body[end if] away from the [M]'s grasp.[or]You try and pull the [M] [if M is penetrating an orifice]out[otherwise]off[end if] of you.[or]You turn and try to push the [M] off you.[purely at random]";
	otherwise say "You squirm but can't get away!".

To say FriendlySexSubmissionFlav of (T - a thing):
	if number of body parts penetrated by T < 1:
		say "You let the [T] keep going.";
	if T is penetrating face and T is monster:
		do nothing;[handled by the monster itself, usually]
	otherwise if the sex addiction of the player < 8:
		say "[one of]You lie still and allow the [T] to keep going.[or]You submit to the [T][if T is monster], hoping [he of T] won[']t realize you aren[']t really in charge[end if].[or]You stay still and let yourself be used.[or]You push back against the [T][if T is monster], eager to have this over and done with as soon as possible[end if].[or]You silently submit to the [T], forcing yourself not to resist.[or]You 'allow' the [T] to keep going unhindered.[at random]";
	otherwise:
		say "[one of]You lie still and allow yourself to enjoy the stimulation.[or]You eagerly submit to the [T][if T is monster] - you know who's in charge[end if].[or]You are happy just staying still and letting yourself be used.[or]You push back against the [T][if T is monster] to get [him of T] nice and worked up[end if]![or]You clench your muscles, joining in the same rhythm of the [T].[or]You vigorously thrust your [random body part penetrated by T] back and forth![purely at random]".

To compute FriendlySexRelease of (M - a monster):
	if M is willing to let go:
		say FriendlySexReleaseFlav of M;
		increase the blue-balls of M by 1;
		dislodge M;
	otherwise:
		say FriendlySexReleaseRefusalFlav of M.

Definition: a monster (called M) is willing to let go:
	if the blue-balls of M < the blue-balls-limit of M, decide yes;
	if M is mating, decide yes;
	decide no.

To say FriendlySexReleaseSpeech of (M - a monster):
	say "[speech style of M]'Oh, how disappointing.'[roman type][line break]";
	FavourDown M by the sex desire of M.

To say FriendlySexReleaseFlav of (M - a monster):
	if M is intelligent, say FriendlySexReleaseSpeech of M;
	say "The [M] pulls [if M is penetrating an orifice]out[otherwise]away[end if].".

To say FriendlySexReleaseRefusalSpeech of (M - a monster):
	say "[speech style of M]'[one of]Yeah, that's not going to happen.'[or]You've got to be kidding, I'm not done yet.'[or]We're done when I say we're done.'[or]Fuck you, I'm not stopping until I get my [if M is male]nut[otherwise]fill[end if].'[or]Hahaha, no way.'[or][if the sex-length of M is 1]I'm way too close to stop now!'[otherwise]Oh there's a long time to go yet before we can stop.'[end if][in random order][roman type][line break]".

To say FriendlySexReleaseRefusalFlav of (M - a monster):
	if M is intelligent, say FriendlySexReleaseRefusalSpeech of M;
	say "The [M] refuses to let you go!".



Consensual Sex ends here.
