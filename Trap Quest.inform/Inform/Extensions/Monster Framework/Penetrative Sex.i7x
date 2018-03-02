Penetrative Sex by Monster Framework begins here.

Chapter 1 - Penetration

[!<SayTwoSomePrepOfMonsterInFuckhole>+

Displays some text describing a monster getting ready to penetrate the player, depending on how many monsters are having sex with them already

@param <Monster>:<M> A monster that is about to penetrate the player
@param <Fuckhole>:<F> The fuckhole "M" is planning to penetrate

+!]
To say PenPrep of (M - a monster) in (F - a fuckhole):
	do nothing.

[!<SaySpitroastPrepOfMonsterInFuckhole>+

Displays some text describing a monster getting ready to penetrate the player that is already having oral sex

@param <Monster>:<M> A monster that is about to penetrate the player
@param <Monster>:<O> A monster that is having oral sex with the player
@param <Fuckhole>:<F> The fuckhole "M" is planning to penetrate

+!]
To say SpitroastPrep of (M - a monster) with (O - a monster) in (F - a fuckhole):[Does this monster have something unique to do or set up during a spitroast, or does O interact with M in a special way? override this function]
	do nothing.

[!<SayThreeSomePrepOfMonsterInFuckhole>+

Displays some text describing a monster getting ready to penetrate the player when they are already being fucked in another fuckhole.

@param <Monster>:<M> A monster that is about to penetrate the player
@param <Monster>:<N> A monster that is currently penetrating the fuckhole that is not "F"
@param <Fuckhole>:<F> The fuckhole "M" is planning to penetrate

+!]
To say ThreesomePrep of (M - a monster) with (N - a monster) in (F - a fuckhole):[Does this monster have something unique for double penetration, or do N and M interact in a special way? override this function]
	do nothing.

[!<SayFoursomePrepOfMonsterInFuckhole>+

Displays some text describing a monster getting ready to penetrate the player when they are already being fucked by two other monsters

@param <Monster>:<M> A monster that is about to penetrate the player
@param <Monster>:<N> A monster that is currently penetrating the fuckhole that is not "F"
@param <Monster>:<O> A monster that is currently penetrating the player orally.
@param <Fuckhole>:<F> The fuckhole "M" is planning to penetrate

+!]
To say FoursomePrep of (M - a monster) with (N - a monster) and (O - a monster) in (F - a fuckhole):[Does this monster have something special for triple penetration, or do M, N, or O have something special to do together]
	do nothing.

[!<SayTwosomePrepOfMonsterInFuckhole>+

Displays some text describing a monster getting ready to penetrate the player, and no other monsters are currently having sex with the player

@param <Monster>:<M> A monster that is about to penetrate the player
@param <Fuckhole>:<F> The fuckhole "M" is planning to penetrate

+!]
To say TwosomePrep of (M - a monster) in (F - a fuckhole):[in other words, sex.]
	do nothing.

[!<SayPrepTauntOfMonsterInFuckhole>+

Something for a monster to potentially say to the player before sex begins

@param <Monster>:<M> A monster that is about to penetrate the player
@param <Fuckhole>:<F> The fuckhole "M" is planning to penetrate

+!]
To say PrepTaunt of (M - a monster) in (F - a fuckhole):
	do nothing.

[!<SayPenetrationFlavOfMonsterInFuckhole>+

Displays some text describing a monster penetrating the player in a specific hole

@param <Monster>:<M> The monster that is penetrating the player
@param <Fuckhole>:<F> The fuckhole "M" is penetrating
+!]
To say PenetrationFlav of (M - a monster) in (F - a fuckhole):
	do nothing.

To get PenetrationImage of (M - a monster) in (F - a fuckhole):
	do nothing.


Section 1 - Anal

To say PenPrep of (M - a monster) in (F - asshole):
	let N be a random monster penetrating vagina;
	let O be a random monster penetrating face;
	if N is monster and O is monster:
		[if debugmode > 0, say "Triggering foursome flavour";]
		say FoursomePrep of M with N and O in F;
	otherwise if N is a monster:
		[if debugmode > 0, say "Triggering threesome flavour";]
		say ThreesomePrep of M with N in F;
	otherwise if O is monster:
		[if debugmode > 0, say "Triggering spitroast flavour";]
		say SpitroastPrep of M with O in F;
	otherwise:
		[if debugmode > 0, say "Triggering twosome flavour";]
		say TwosomePrep of M in F;
	if the last-interaction of M is 0, say PrepTaunt of M in F.

To say SpitroastPrep of (M - a monster) with (O - a monster) in (F - asshole):
	say "The [M] pulls your hips up against [his of M] body, forcing you to support yourself with your hands as [he of M] spreads your asscheeks apart.".

To say ThreesomePrep of (M - a monster) with (N - a monster) in (F - asshole):
	if N is intelligent, say "The [N] flips you over so you're face to face, holding you by the waist as the [M] pulls apart your asscheeks.";
	otherwise say "The [M] flips you onto your side, so you're facing the [N]. The [N] continues to fuck your [vagina] as the newcomer spreads apart your asscheeks.".
		
To say FoursomePrep of (M - a monster) with (N - a monster) and (O - a monster) in (F - asshole):
	if N is intelligent, say "The [N] flips you over so your chin is resting on [his of N] chest, holding you by the waist as the [M] pulls apart your asscheeks.";
	otherwise say "The [M] flips you onto your side, so you[']re facing the [N]. The [N] and the [O] continue to fuck you as the newcomer spreads apart your asscheeks.".

To say TwosomePrep of (M - a monster) in (F - asshole):[in other words, sex.]
	say "The [M] shoves you face down and pulls your hips up against [his of M] body. [big he of M] spreads your asscheeks apart.".

[!<SayAssholePenetrationFlavOfMonster>+

Displays some text describing a monster penetrating the player anally, calling PenPrep and PenetrationFlav with asshole as an argument.

@param <Monster>:<M> The monster that is penetrating the player
+!]
To say AssholePenetrationFlav of (M - a monster):
	say PenPrep of M in asshole;
	say PenetrationFlav of M in asshole;
	if image cutscenes is 1, get PenetrationImage of M in asshole.

To say PenetrationFlav of (M - a monster) in (F - asshole):
	let H be the openness of F - the girth of M;
	if the class of the player is living sex doll:
		say SexDollAssholePenetrationFlav of M;
	otherwise if H < -2:
		say VeryTightAssholePenetrationFlav of M;
	otherwise if H < 0:
		say LessTightAssholePenetrationFlav of M;
	otherwise if H < 2:
		say LessLooseAssholePenetrationFlav of M;
	otherwise:
		say VeryLooseAssholePenetrationFlav of M.

To say SexDollAssholePenetrationFlav of (M - a monster):
	say "[if the relevant sex addiction of M < 9][line break][variable custom style]No, no![roman type][line break]you try to beg [him of M], as [he of M][otherwise]The [M][end if] turns you away, and you feel the massive bulbous head probing at your tight pucker, but then it ploughs through and inside you!";
	say "There's a sound like a rubber balloon animal being twisted into a knot as [his of M] rod plunges into your squeakily-tight interior. [one of]You feel your cheeks flush in shame at the sound - which is weird: how can rubber cheeks flush? - but maybe they've done something so your emotional state is somehow transmitted to your new plastic skin?  You wouldn't put it past the wicked minds of the people who designed this game!  Probably some kind of 'psycho-active' plastic or something. But it's pretty hard to keep philosophising while a massive cock is being rammed up your back passage[if M is not neuter], and the [M]'s hands are jerking you forward and back like some life-size rubber doll while his powerful hips plunge his hot, meaty pole in and then out of your backside[end if]. Not the least because you can't believe just how [italic type]good[roman type] it feels! It's like the number of nerve-endings back there have been multiplied ten-fold. You're also really getting off on the incoherent sounds of some bitch's high-pitched squeaking and grunting as she's... [line break][variable custom style]Oops: that's me![roman type][line break][or][stopping][line break]".

To say VeryTightAssholePenetrationFlav of (M - a monster):[low bimbo: 2, mid: 2, high: 1. Think of this spread as a prediction of when the player will be seeing this. We expect the player to have lower sex addiction at lower tightness, so we put more variation there.]
	let O be a random monster penetrating face;
	if the relevant sex addiction of M < 7:
		say "[one of]You [if O is monster]complain as loudly as you can through your mouthful of [O][otherwise]look over your shoulder[end if] as [his of M] [manly-penis] prods at your sphincter, attempting to force its way in with brute force alone. The [M] stops only to[unless O is monster] leer at your furious face and[end if] spit in your hole, giving [him of M] that last bit of lubrication needed to slowly, painfully, force [his of M] way in.[or][if O is monster]You try as hard as you can to evade it, but your mouth is much too full of dick for you to manage anything but a low groan of pain[otherwise]You try as hard as you can to make it difficult for [him of M], cursing through the pain[end if] as the [M] slowly and painfully forces [his of M] [manly-penis] into your [asshole], only pausing when [his of M] balls are in full contact with your taint.[at random]";
	otherwise if the relevant sex addiction of M < 12:
		say "[one of]You [if O is monster]half-heartedly struggle as [his of M] [manly-penis] prods at your sphincter, trying your best to ignore what[']s in your mouth and focus on keeping [him of M] at bay. The [M] stops, but[otherwise]silently look over your shoulder as [his of M] [manly-penis] prods at your sphincter, doing absolutely nothing to stop [him of M] even though every part of your being is telling you you should. The [M] stops, but[end if] only to spit in your hole, giving [him of M] that last bit of lubrication needed to slowly, painfully, force [his of M] way into your [asshole].[or]You brace yourself as the [M]'s [manly-penis] presses at your sphincter, stretching it bit by painful bit as it slowly forces its way into your [asshole]. The feeling is so intense, that by the time it occurs to you to bolt or at least fight, [his of M] balls are already slapping your [if the player is male]coin-purse[otherwise]taint[end if].[at random]";
	otherwise:
		say "You [if O is monster]continue servicing the dick in your mouth[otherwise]look over your shoulder with a grin[end if] as [his of M] [manly-penis] prods at your sphincter, attempting to force its way in with brute force alone. The [M] pauses only to [unless O is monster]return your look and [end if]spit in your hole, giving [him of M] that last bit of lubrication needed to slowly, painfully, force [his of M] way in.".

To say LessTightAssholePenetrationFlav of (M - a monster):[low bimbo: 3 mid: 2, high: 1]
	let O be a random monster penetrating face;
	if the relevant sex addiction of M < 7:
		say "[one of]You [if O is monster]groan as loudly as you can through the dick in your mouth[otherwise]grit your teeth and shoot a furious glare over your shoulder[end if] as [his of M] [manly-penis] forces open your sphincter, just big enough to hurt as much as possible without needing any extra lube. The [M] answers your look with a hearty smack of your [AssDesc], and grabs your hips with both hands to ensure you can[']t escape.[or][if O is monster]You try to dissuade [him of M], but your mouth is much too full of dick for you to manage anything but a pained grunt[otherwise]You try as hard as you can to make it difficult for [him of M], cursing through the pain[end if] as the [M] forces [his of M] [manly-penis] into your [asshole], only pausing when [his of M] balls slap your [if the player is male]taint[otherwise]cunt[end if]. Easily stopping your last escape attempt with a stronger grip, [he of M] begins to thrust.[or]You [if O is monster]grunt around the dick in your mouth[otherwise]snarl at the [M][end if] as [his of M] cockhead presses at your sphincter, which painfully stretches to let [his of M] [manly-penis] slowly slide its way in. Something tells you this will be a long, unpleasant fucking.[at random]";
	otherwise if the relevant sex addiction of M < 12:
		say "[one of]You do nothing to resist as [his of M] [manly-penis] presses at your sphincter, convincing yourself you[']re not looking forward to having [him of M] stretch out your tight little hole. A [if O is monster]muffled[end if] mixture of grunts and moans leave your mouth as it slowly forces its way in, answered with a derisive laugh as [he of M] begins to thrust.[or]You half-heartedly resist as [he of M] forces [his of M] [manly-penis] into your [asshole], emitting an involuntary moan [if O is monster]through the meat in your mouth [end if] as [he of M] finally drives it all the way in. [big he of M] tightens [his of M] grip as [he of M] begins to thrust, ensuring you won[']t be getting away if you decide you want to.[at random]";
	otherwise:
		say "You wouldn[']t even think of resisting, [if O is monster]passionately slurping the dick in your mouth and[otherwise]arching your back and[end if] wiggling your hips as [he of M] forces [his of M] [manly-penis] through your sphincter, treating you to an intense mixture of pleasure as [his of M] throbbing meat burrows its way into your tight [asshole].";

To say LessLooseAssholePenetrationFlav of (M - a monster):[low bimbo: 2 mid: 2, high: 2]
	let O be a random monster penetrating face;
	if the relevant sex addiction of M < 7:
		say "[one of]You [if O is monster]emit a muffled protest through the meat in your mouth[otherwise]scowl over your shoulder[end if] as [his of M] [manly-penis] sinks into your [asshole], and immediately begins thrusting. The [M] grabs your waist tightly with both hands, eliminating all chance of escape.[or]You struggle pitifully as [he of M] pushes [his of M] [manly-penis] into your [asshole], which easily stretches to accommodate [his of M] invading length. [if O is monster]You emit a muffled grunt of indignation[otherwise]You glare at [him of M] furiously[end if] as [he of M] smacks your [AssDesc] and immediately begins to thrust.[at random]";
	otherwise if the relevant sex addiction of M < 12:
		say "[one of]You do your best to resist, but in the end, you know [his of M] [manly-penis] is a perfect fit for your [asshole], and find yourself actively pushing back against the [M] to get [him of M] in you as soon as possible.[or]You [if O is monster]emit a muffled, but obvious moan through your mouthful[otherwise]unsuccessfully stifle a moan[end if] as [his of M] [manly-penis] sinks into your [asshole], struggling only out of embarrassment as [he of M] begins to thrust.[at random]";
	otherwise:
		say "[one of]You do your best to make [him of M] work for it, but it's hard when all you really want is to get [his of M] [manly-penis] in you and thrusting as soon as possible. As [his of M] other hand grabs your waist, you hold out hope you[']ve earned yourself a long, rough fuck.[or]You wouldn[']t even think of resisting, [if O is monster]passionately slurping the dick in your mouth and[otherwise]arching your back and[end if] wiggling your hips as [he of M] pushes [his of M] [manly-penis] into your [asshole], moaning happily as he begins to thrust.[at random]".

To say VeryLooseAssholePenetrationFlav of (M - a monster):[low bimbo: 1 mid: 3, high: 3]
	let O be a random monster penetrating face;
	if the relevant sex addiction of M < 7:
		say "You [if O is monster]exhale sharply through your nose[otherwise]angrily look over your shoulder[end if] as [his of M] [manly-penis] slides into your [asshole], and [his of M] grip on your hips tightening before you even have a chance to resist. No escaping now...";
	otherwise if the relevant sex addiction of M < 12:
		say "[one of]Your [asshole] so loose that [his of M] [manly-penis] is already in you and thrusting by the time you think to resist. [if O is monster]You sigh and return to servicing the [O],[otherwise]Knowing you weren[']t going to try very hard anyway,[end if] you sit back and try to find a way to enjoy it.[or]You try not to moan as [his of M] penis slides into your [asshole], [if O is monster]shameful noises escaping through the space between your lips and the [O]'s[manly-penis][otherwise]cooing shamefully[end if] as [he of M] smacks your [AssDesc] and begins to thrust.[or]You force yourself to resist, but it doesn[']t matter. Your [asshole] is just too loose. The [M] grabs your waist as [his of M] balls smack your taint, tightening [his of M] grip and beginning to thrust.[at random]";
	otherwise:
		say "[one of]You do your best to make [him of M] work for it, but in the end, [if there is a live thing penetrating an orifice]you[']re far too interested in what[']s already in you[otherwise]you[']re far too much of dirty slut[end if] to put up anything remotely resembling a fight as the [M] slides [his of M] [manly-penis] into your loose [asshole].[or]You wouldn't even think of resisting, doing all you can to get [his of M] [manly-penis] in you and thrusting as soon as possible.[or]You moan in pleasure as [his of M] [manly-penis] slides into your [asshole], doing your best to make [him of M] work for it [if O is monster and O is male]without neglecting your oral duties[otherwise]without actually getting in [his of M] way[end if]. From the way [his of M] grip tightens, you know you[']re in for a nice, rough fuck![or]You didn[']t necessarily invite [him of M], but that doesn[']t stop you from impaling yourself backward on [his of M] [manly-penis], shuddering with pleasure as [his of M] balls begin to repeatedly slap your taint.[at random]".

To say FriendlyAssholePenPrep of (M - a monster):
	say PenPrep of M in asshole.

To say FriendlyAssholePenetrationFlav of (M - a monster):
	say FriendlyAssholePenPrep of M;
	say FriendlyPenetrationFlav of M in asshole.

To say FriendlyPenetrationFlav of (M - a monster) in (F - asshole):
	let H be the openness of F - the girth of M;
	[say FriendlyAssholePenPrep of M;]
	if H < -2:
		say FriendlyVeryTightAssholePenetrationFlav of M;
	otherwise if H < 0:
		say FriendlyLessTightAssholePenetrationFlav of M;
	otherwise if H < 2:
		say FriendlyLessLooseAssholePenetrationFlav of M;
	otherwise:
		say FriendlyVeryLooseAssholePenetrationFlav of M.

To say FriendlyVeryTightAssholePenetrationFlav of (M - a monster):[low bimbo: 2, mid: 2, high: 1; very tight]
	if the sex addiction of the player < 7:
		say "[one of]You stare at the ground, silently chiding yourself as [his of M] [manly-penis] presses at your sphincter, adding a bit of spit for lube as [he of M] slowly, painfully forces [his of M] way in. Trembles of shame and humiliation make their way up your spine as [he of M] begins to thrust.[or]You push back against [him of M], trembling with shame and humiliation as you work together with [him of M] to force your sphincter to slowly, painfully stretch to admit [his of M] invading length. The [M] lubricates your [asshole] with a little bit of spit and immediately begins to thrust.[at random]";
	otherwise if the sex addiction of the player < 12:
		say "[one of]You wait quietly as [his of M] [manly-penis] presses at your sphincter, adding a little bit of spit for lube as [he of M] slowly, painfully forces [his of M] way in. A rush of shame and excitement makes its way up your spine as [he of M] begins to thrust.[or]You push back against [him of M], shivering with both embarrassment and excitement as [he of M] tries to force [his of M] [manly-penis] into your [asshole]. Your combined efforts force your reluctant sphincter to slowly, painfully stretch to accept [his of M] invading length inch by inch until finally [he of M] tightens [his of M] grip and begins mercilessly pounding your [if the soreness of asshole > 3]throbbing[otherwise]increasingly tender[end if] hole.[at random]";
	otherwise:
		say "You eagerly push back against [him of M] as [his of M] [manly-penis] presses at your sphincter, your combined efforts, along with a little bit of spit, forcing your tight [asshole] to slowly, painfully stretch until [he of M] finally slides all the way in. [big he of M] immediately begins to thrust.".

To say FriendlyLessTightAssholePenetrationFlav of (M - a monster):[low bimbo: 3 mid: 2, high: 1; less tight]
	if the sex addiction of the player < 7:
		say "[one of]You angrily chide yourself as [his of M] [manly-penis] presses at your sphincter, just tight enough to hurt as much as possible and still allow [him of M] to force [his of M] way in without extra lube. The [M] gives you a moment to get used to [him of M] and slowly begins to thrust.[or]You tremble with shame as [he of M] presses [his of M] [manly-penis] against your sphincter, which barely stretches enough to let [him of M] slowly force [his of M] way in. The [M] gives your [AssDesc] a slap and slowly begins to thrust. [or]You give [him of M] a fake smile over your shoulder as [his of M] [manly-penis] forces open your sphincter, realizing with a stifled grunt of pain exactly how much power you have if [he of M] doesn[']t want to listen to you. None. Maybe this was a bad idea.[at random]";
	otherwise if the sex addiction of the player < 12:
		say "[one of]It's all you can do not to impale yourself backward on [his of M] [manly-penis] as the throbbing tip presses at your sphincter, which has just enough give to allow [him of M] to force [his of M] way in without adding any lube at all, and remind you how much you wish it didn't. The [M] chuckles and immediately begins thrusting.[or]You bite your lip as [his of M] throbbing cockhead pushes through your reluctant sphincter, desperately trying to hate the big, hard [manly-penis] slowly forcing its way into your too-tight [asshole]. The [M] gives you an uncomfortably welcome spank and immediately begins to thrust.[at random]";
	otherwise:
		say "You eagerly push back against [him of M] as [his of M] [manly-penis] presses at your sphincter, which is just tight enough for you to feel [him of M] as much as possible without needing any extra lube. The [M] gives your [AssDesc] a spank as [he of M] slides in and begins to thrust.".

To say FriendlyLessLooseAssholePenetrationFlav of (M - a monster):[low bimbo: 2 mid: 2, high: 2; less loose]
	if the sex addiction of the player < 7:
		say "[one of]You scowl at the ground in front of you as [he of M] pushes [his of M] [manly-penis] into your [asshole], which easily stretches to accommodate him. The [M] slowly begins to thrust, holding your hips for 'support' as [his of M] balls slap your taint.[or]You give [him of M] a fake smile over your shoulder as [he of M] pushes [his of M] [manly-penis] into your [asshole], which [he of M] mistakes for real enthusiasm. The [M] starts out hard and fast, every thrust further shaming you for letting it happen.[at random]";
	otherwise if the sex addiction of the player < 12:
		say "[one of]You look over your shoulder as [he of M] pushes [his of M] [manly-penis] into your [asshole], which is all too ready to accommodate him. The [M] leers at you as [his of M] hands explore your body, groping your [BreastDesc] and squeezing your [AssDesc] until you finally lose your patience and begin fucking yourself with [his of M] cock.[or]You ease yourself backward, onto [his of M] of [manly-penis], emitting a quiet moan when [he of M] suddenly tightens [his of M] grip on your waist and slams it the rest of the way into your [asshole]. The [M] 'apologises' with an all-too-welcome slap on your ass and immediately begins to thrust.[at random]";
	otherwise:
		say "[one of]You [if there is a monster penetrating face]moan happily[otherwise]give [him of M] a hungry look over your shoulder[end if], wiggling your hips as [he of M] pushes every inch of [his of M] [manly-penis] into your eager [asshole]. The [M] slaps your [AssDesc] and immediately begins to thrust.[or]You push back against [his of M] invading [manly-penis], moaning throatily as every inch sinks into your loose hole. The [M] gropes your [BreastDesc] as you begin to work your hips back and forth, eager to enjoy [him of M]self while you proudly do the work.[at random]".

To say FriendlyVeryLooseAssholePenetrationFlav of (M - a monster):[low bimbo: 1 mid: 3, high: 3; very loose]
	if the sex addiction of the player < 7:
		say "You sigh and roll your eyes as [he of M] slides [his of M] dick into your [asshole], beginning to mechanically fuck yourself on [his of M] cock. The [M] brazenly smacks your [AssDesc] and gropes your [BreastDesc], obviously willing to let you do all the work.";
	otherwise if the sex addiction of the player < 12:
		say "[one of]You emit a low moan as [he of M] slides [his of M] [manly-penis] slides into your [asshole], grabbing both of your wrists and pinning them behind your back as [he of M] immediately begins to thrust. Somehow, the thought that [he of M] might not stop if you ask turns you on even more.[or]You look over your shoulder as [he of M] slides [his of M] [manly-penis] into your [asshole], suddenly realizing what a [line break][second custom style]naughty[roman type][line break]expression you're making when [he of M] slaps your [AssDesc] and immediately begins thrusting.[or]You moan as the [M] slams [his of M] [manly-penis] into your [asshole] and begins thrusting at full force! The [M] doesn[']t seem to care you invited [him of M], [he of M][']s still treating you like a piece of meat! But then again, it's not like you hate it...[at random]";
	otherwise:
		say "[one of]You giggle happily as [he of M] slides [his of M] [manly-penis] into your [asshole], working your hips back and forth as [he of M] smacks your [AssDesc] and gropes your [BreastDesc]. It's even more fun when you get to do the work![or]You proudly look over your shoulder as [he of M] slides [his of M] [manly-penis] into your loose [asshole], grinning at [him of M] as [he of M] begins to thrust. You[']re loose enough that [he of M] can go all out from the get go, [his of M] balls slapping audibly against your [if the player is male]sack[otherwise]cunt[end if] as [his of M] hands grab hold of your waist.[or]You push backward against [him of M] as [his of M] [manly-penis] enters your [asshole], glancing over your shoulder to [if there is a worn ballgag]stare seductively at the [M] as you begin to work your hips back and forth.[otherwise]seductively lick your lips as you begin to work your hips back and forth.[end if][at random]".

Section 2 - Vaginal

To say PenPrep of (M - a monster) in (F - vagina):
	let N be a random monster penetrating asshole;
	let O be a random monster penetrating face;
	if N is monster and O is monster:
		[if debugmode > 0, say "Triggering foursome flavour";]
		say FoursomePrep of M with N and O in F;
	otherwise if N is a monster:
		[if debugmode > 0, say "Triggering threesome flavour";]
		say ThreesomePrep of M with N in F;
	otherwise if O is monster:
		[if debugmode > 0, say "Triggering spitroast flavour";]
		say SpitroastPrep of M with O in F;
	otherwise:
		[if debugmode > 0, say "Triggering twosome flavour";]
		say TwosomePrep of M in F;
	if the last-interaction of M is 0, say PrepTaunt of M in F.

To say SpitroastPrep of (M - a monster) with (O - a monster) in (F - vagina):[Does this monster have something unique to do or set up during a spitroast, or does O interact with M in a special way? override this function]
	say "The [M] pulls your hips up against [his of M] body, forcing you to support yourself with your hands as [he of M] spreads your legs.".

To say ThreesomePrep of (M - a monster) with (N - a monster) in (F - vagina):[Does this monster have something unique for double penetration, or do N and M interact in a special way? override this function]
	if N is intelligent, say "The [N] flips you so your head is resting on [his of N] chest, holding you by the waist as the [M] spreads your legs.";
	otherwise say "The [M] grabs your leg and lifts it out of the way.".
		
To say FoursomePrep of (M - a monster) with (N - a monster) and (O - a monster) in (F - vagina):[Does this monster have something special for triple penetration, or do M, N, or O have something special to do together]
	if N is intelligent, say "The [N] pulls you into [his of N] lap, pinning your arms to your waist as the [M] spreads your legs.";
	otherwise say "The [M] grabs your leg and lifts it out of the way.".

To say TwosomePrep of (M - a monster) in (F - asshole):[in other words, sex.]
	say "The [M] shoves you face down and pulls your hips up against [his of M] body. [big he of M] spreads your legs.".

[###Selkie:Maybe need a preamble bit that defines some variable text for "penetration_object", and some way to say "his" or "her" or "its" (doesn't i7 give that to you, built in?), so you can then say "[his of M] [penetration_object]" - aeromancer's wind-dick, rubber wrestler's fist/hand, minotaur's cock, vine's bulbous tendril, dominatrix's strap-on, ...?
You'd like the penetration_object text to be one with a [one of]...[or]...[at random] built in to it, too.
This penetration_object would be part of each monster's definition, when it was set up.

###MG: Slightly handled by a  function in Variable Text.i7x, but it's exactly the kind of thing that shouldn't be overused in long scenes
]

[!<SayVaginaPenetrationFlavOfMonster>+

Displays some text describing a monster penetrating the player vaginally, providing vagina as an argument to the PenPrep and PenetrationFlav functions

@param <Monster>:<M> The monster that is penetrating the player
+!]
To say VaginaPenetrationFlav of (M - a monster):
	say PenPrep of M in vagina;
	say PenetrationFlav of M in vagina;
	if image cutscenes is 1, get PenetrationImage of M in vagina.

To say PenetrationFlav of (M - a monster) in (F - vagina):
	let H be the openness of F - the girth of M;
	if the virgin of the player is 1 and M is virginity taking:
		say VirginityTaken of M;
	otherwise if H < -2:
		say VeryTightVaginaPenetrationFlav of M;
	otherwise if H < 0:
		say LessTightVaginaPenetrationFlav of M;
	otherwise if H < 2:
		say LessLooseVaginaPenetrationFlav of M;
	otherwise:
		say VeryLooseVaginaPenetrationFlav of M.

[Originally the guard's text, but it was really so generic that it could just be used as a default]
To say VeryTightVaginaPenetrationFlav of (M - a monster):[Ideal spread of variations: low addiction: 2, mid: 2, high: 1]
	say "[if the vaginal sex addiction of the player < 3]You tremble with humiliation as the [M] guides [his of M] shaft into your [vagina], feeling yourself slowly stretching to accept [his of M] thick, veiny [manly-penis]. The worst part is that [he of M] doesn't hide the fact that your pain is why it feels so good for him, groaning in pleasure as [he of M] sinks inch after inch of [his of M] throbbing [manly-penis] into your defenceless hole. [big he of M] places [his of M] hands on your hips as [he of M] bottoms out.[otherwise if the vaginal sex addiction of the player < 6]You tremble with reluctant excitement as the [M] guides [his of M] shaft into your [vagina], feeling yourself slowly stretching to accept [his of M] thick, veiny [manly-penis]. [big he of M] makes it quite clear that he's enjoying himself, hissing and groaning in pleasure as inch after inch of throbbing [manly-penis] sinks into your stiff hole. [big he of M] places [his of M] hands on your hips as [he of M] bottoms out.[otherwise][big his of M]other hand is used to hold the base of [his of M] shaft as you guide it into your [vagina]. You shiver with excitement as the [M] guides [his of M] shaft into your [vagina], feeling yourself slowly stretching to accept [his of M] thick, yummy [manly-penis]. [big his of M] every hiss and groan of pleasure just makes you feel more proud, grinning from ear to ear as inch after inch of [his of M] throbbing member sinks into your waiting hole. [big he of M] places [his of M] hands on your hips as [he of M] bottoms out.[end if]".

To say LessTightVaginaPenetrationFlav of (M - a monster):[Ideal spread of variations: low addiction: 3 mid: 2, high: 1]
	say "[if the vaginal sex addiction of the player < 3]You stifle a moan of pleasure as the [M] guides [his of M] tip into your [vagina]. [big he of M] places [his of M] hands on your hips as [he of M] drives in inch after awful inch of [his of M] thick [manly-penis], tightening [his of M] grip as [he of M] bottoms out.[otherwise if the vaginal sex addiction of the player < 6]You moan in pleasure, fighting back the urge to push back against [him of M] as the [M] pushes [his of M] [manly-penis] into your [vagina]. [big he of M] doesn't stop there, driving in inch after, thick, veiny inch of until he finally bottoms out. You feel [his of M] grip tigthen, assuring you that you[']re in for a good, rough fuck.[otherwise]You moan as loudly as you can, enthusistically pushing back against [him of M] as the [M]'s thick, veiny [manly-penis] sinks into your waiting hole. [big he of M] doesn't stop there, driving in inch after inch, smacking your ass as [he of M] finally bottoms out. You feel [his of M] grip tighten, reassuring you that you're in for the good, rough fuck you so desperately want.[end if]".

To say LessLooseVaginaPenetrationFlav of (M - a monster):[Ideal spread of variations: low addiction: 2 mid: 2, high: 2]
	say "[if the vaginal sex addiction of the player < 3]You close your eyes and shamefully lower your head as [his of M] [manly-penis] slides into your [vagina], softly whimpering in pleasure. It doesn't take long for [him of M] to bottom out, placing [his of M] hands on either of your hips and gripping them tightly.[otherwise if the vaginal sex addiction of the player < 5]You try and fail not to push back against [him of M] as [his of M] [manly-penis] slides into your [vagina], uttering a defeated moan of pleasure. It doesn't take long for [him of M] to bottom out, placing [his of M] hands on either of your hips and gripping them tightly.[otherwise]You push back against the [M] as [he of M] guides [his of M] [manly-penis] into your [vagina], shamelessly moaning in pleasure as [he of M] slides in. It doesn't take long for [him of M] to bottom out, placing [his of M] hands on either of your hips and gripping them tightly.[end if]".

To say VeryLooseVaginaPenetrationFlav of (M - a monster):[low bimbo: 1 mid: 3, high: 3]
	if the sex addiction of the player < 7:
		say "You sigh and roll your eyes as [he of M] slides [his of M] [manly-penis] into your [vagina], waiting silently as [he of M] smacks your [AssDesc] and gropes your [BreastDesc]. The [M] brazenly smacks your [AssDesc] and gropes your [BreastDesc], obviously willing to let you do all the work.";
	otherwise if the sex addiction of the player < 12:
		say "[one of]You [if the player is able to use manual dexterity]reach between your legs, spreading your lips wide[otherwise]emit a low moan[end if] as [he of M] slides [his of M] [manly-penis] slides into your [vagina], grabbing both of your wrists and pinning them [if the player is wrist bound in front]under [his of M] arms[otherwise]behind your back[end if] as [he of M] immediately begins to thrust.[or]You look over your shoulder as [he of M] slides [his of M] [manly-penis] into your [vagina], suddenly realizing what a [i]naughty[/i]expression you're making when [he of M] slaps your [AssDesc] and immediately begins thrusting.[or]You moan as the [M] slams [his of M] [manly-penis] into your [vagina] and begins thrusting at full force! It's degrading to get treated like a piece of meat like this, but you can[']t help loving every second![at random]";
	otherwise:
		say "[if the vaginal sex addiction of the player < 3]You let out a completely involuntary moan as the [M]'s [manly-penis] slides into your [vagina] like a knife through butter, grunting as [he of M] bottoms out. [big he of M] grins as you look over your shoulder, [one of]horrified[or]mortified[purely at random] at the sound that just came out of your mouth. Strong hands grab your hips tightly, removing all hope of escape.[otherwise if the vaginal sex addiction of the player < 6]You let out a somewhat involuntary moan of pleasure as the [M]'s [manly-penis] slides into your [vagina] like a knife through butter, grunting as [he of M] bottoms out. [big he of M] grins as you look over your shoulder, embarrassed at how good that felt, but still hungry for more. Strong hands grab your hips tightly, assuring you that your hunger will be sated.[otherwise]You shamelessly moan in pleasure as the [M]'s [manly-penis] slides into your [vagina] like a knife through butter, grunting as [he of M] bottoms out. [big he of M] grins as you look over your shoulder, licking your lips in hopes that he'll give you the roughest fucking [he of M] can. Strong hands grab your hips tightly, assuring you that you'll get the sex you so desperately, desperately need.[end if]".

To say FriendlyVaginaPenPrep of (M - a monster):
	say PenPrep of M in vagina.

To say FriendlyVaginaPenetrationFlav of (M - a monster):
	say FriendlyVaginaPenPrep of M;
	say FriendlyPenetrationFlav of M in vagina.

To say FriendlyPenetrationFlav of (M - a monster) in (F - vagina):
	let H be the openness of F - the girth of M;
	if the virgin of the player is 1 and M is virginity taking:
		say VirginityTaken of M;
	otherwise if H < -2:
		say FriendlyVeryTightVaginaPenetrationFlav of M;
	otherwise if H < 0:
		say FriendlyLessTightVaginaPenetrationFlav of M;
	otherwise if H < 2:
		say FriendlyLessLooseVaginaPenetrationFlav of M;
	otherwise:
		say FriendlyVeryLooseVaginaPenetrationFlav of M.

To say FriendlyVeryTightVaginaPenetrationFlav of (M - a monster):[low bimbo: 2, mid: 2, high: 1]
	if the sex addiction of the player < 7:
		say "[one of]You stare at the ground, silently chiding yourself as [his of M] [manly-penis] slowly, painfully forces its way into your [vagina], every inch more painful than the last as your inner walls desperately try to adjust to the huge invader. Trembles of shame, pain, and humiliation radiate through your being as [he of M] begins to thrust.[or]You push back against [him of M], trembling with shame and humiliation as [his of M] [manly-penis] slowly enters your [vagina], every inch just as intensely painful as the last. No matter what way you move or how slowly you do it, your inner walls just can't adjust to the huge invader, and the pain nearly drowns out your regret when [he of M] begins to thrust.[at random]";
	otherwise if the sex addiction of the player < 12:
		say "[one of]You do your best to stay still as [his of M] [manly-penis] slowly, painfully forces its way into your [vagina], every inch more painful than the last as your inner walls desperately try to adjust to the huge invader. Shame, pain, and raw excitement radiate through your being as [he of M] begins to thrust[or]You push back against [him of M], shivering with both shame and excitement as [his of M] [manly-penis] slowly enters your too-tight [vagina], every inch just as painful as the last. Even as your inner walls desperately try to adjust to the huge invader, you can't help but relish the grunt of pleasure accompanying each of [his of M] thrusts.[at random]";
	otherwise:
		say "You eagerly push back against [him of M] as [his of M] [manly-penis] slowly enters your [vagina], every inch more deliciously painful than the last as your inner walls desperately try to adjust to the huge invader. The [M] can't help but let you know how much [he of M] loves it at every turn, beginning to thrust without bothering to get it all the way in.".

To say FriendlyLessTightVaginaPenetrationFlav of (M - a monster):[low bimbo: 3 mid: 2, high: 1]
	if the sex addiction of the player < 7:
		say "[one of]You angrily chide yourself as [his of M] [manly-penis] slowly enters your [vagina], fingers of pain licking their way through your belly as your inner walls strain desperately to stretch. The [M] doesn't seem to react to your barely hidden groan of pain, [if M is intelligent]hissing[otherwise]grunting[end if] with pleasure as [he of M] slowly begins to thrust.[or]You tremble with shame as [he of M] slowly forces [his of M] [manly-penis] into your [vagina], which only barely stretches enough to accommodate him. The [M] gives your [AssDesc] a slap, as if to remind you of everything about this you regret as [he of M] slowly begins to thrust.[or]You give [him of M] a fake smile over your shoulder as [his of M] [manly-penis] forces its way into your [vagina], realizing with a stifled grunt of pain precisely how much power you have if [he of M] doesn[']t want to listen to you, or if you don[']t want a creampie. None. Maybe [he of M] won[']t realize that?[at random]";
	otherwise if the sex addiction of the player < 12:
		say "[one of]You can[']t help a sigh of pleasure as [he of M] slowly forces [his of M] [manly-penis] into your [vagina], faking a grunt of pain just so [he of M] knows [he of M]'s a little too big. The [M] chuckles, giving your [AssDesc] a firm swat as [he of M] slowly begins to thrust.[or]You bite your lip as [his of M] throbbing [if M is gladiator]'man'[otherwise]man[end if]hood enters your [vagina], only dimly realizing how much it hurts as your inner walls desperately stretch to accommodate him. The [M] gives you a brief moment to get used to [him of M] before [he of M] begins to thrust.[at random]";
	otherwise:
		say "You already know he[']s a little too big, but that[']s why you want to fuck [him of M] so much! The [M] tightens [his of M] grip on your waist as you [if the player is able to use manual dexterity]guide [his of M] throbbing hardness into your [vagina], emitting a throaty moan as your walls draw taut around [his of M] invading [manly-penis][otherwise]impale yourself on [his of M] throbbing hardness, emitting a throaty moan as your [vagina] desperately stretches to accommodate the invading [manly-penis][end if]. The [M] immediately begins to thrust.".

To say FriendlyLessLooseVaginaPenetrationFlav of (M - a monster):[low bimbo: 2 mid: 2, high: 2]
	if the sex addiction of the player < 7:
		say "[one of]You scowl at the ground in front of you as [he of M] pushes [his of M] [manly-penis] into your [vagina], which easily stretches to accommodate him. The [M] pauses for a moment to grope your [BreastDesc] before [he of M] begins to thrust, as if to remind you how dumb you are for actually letting [him of M] do it.[or]You give [him of M] a fake smile over your shoulder as [he of M] pushes [his of M] [manly-penis] into your [vagina], which [he of M] somehow mistakes for real enthusiasm. The [M] starts out hard and fast, every thrust further shaming you for actually inviting [him of M] into this.[at random]";
	otherwise if the sex addiction of the player < 12:
		say "[one of]You look over your shoulder as [he of M] pushes [his of M] [manly-penis] into your [vagina], which is all too ready to accommodate [him of M]. The [M] looks you in the eye as [his of M] hands explore your body, groping your [BreastDesc] and squeezing your [AssDesc] until you finally lose your patience and begin fucking yourself with [his of M] cock.[or]You ease yourself backward, onto [his of M] of [manly-penis], emitting a quiet moan when [he of M] suddenly tightens [his of M] grip on your waist and slams it the rest of the way into your [vagina]. The [M] 'apologises' with an all-too-welcome slap on the ass and immediately begins to thrust.[at random]";
	otherwise:
		say "[one of]You [if there is a monster penetrating face]moan happily[otherwise]give [him of M] a hungry look over your shoulder[end if], wiggling your hips as [he of M] pushes every inch of [his of M] [manly-penis] into your eager [vagina]. The [M] slaps your [AssDesc] and immediately begins to thrust.[or]You push back against [his of M] invading [manly-penis], moaning throatily as every inch sinks into your [vagina]. The [M] gropes your [BreastDesc] as you begin to work your hips back and forth, eager to enjoy [him of M]self while you proudly do the work.[at random]".

To say FriendlyVeryLooseVaginaPenetrationFlav of (M - a monster):[low bimbo: 1 mid: 3, high: 3]
	if the sex addiction of the player < 7:
		say "You sigh and roll your eyes as [he of M] slides [his of M] [manly-penis] into your [vagina], mechanically beginning to fuck yourself on [his of M] throbbing hardness. The [M] brazenly smacks your [AssDesc] and gropes your [BreastDesc], obviously willing to let you do all the work.";
	otherwise if the sex addiction of the player < 12:
		say "[one of]You [if the player is able to use manual dexterity]reach between your legs, spreading your lips wide[otherwise]emit a low moan[end if] as [he of M] slides [his of M] [manly-penis] slides into your [vagina], grabbing both of your wrists and pinning them behind your back as [he of M] immediately begins to thrust. Somehow, the thought that [he of M] might not stop if you ask turns you on even more.[or]You look over your shoulder as [he of M] slides [his of M] [manly-penis] into your [vagina], suddenly realizing what a [line break][second custom style]naughty[roman type][line break]expression you're making when [he of M] slaps your [AssDesc] and immediately begins thrusting.[or]You moan as the [M] slams [his of M] [manly-penis] into your [vagina] and begins thrusting at full force! It's degrading to get treated like a piece of meat like this, but you can[']t help loving every second![at random]";
	otherwise:
		say "[one of]You giggle happily as [he of M] slides [his of M] [manly-penis] into your [vagina], working your hips back and forth as [he of M] smacks your [AssDesc] and gropes your [BreastDesc]. It's even more fun when you get to do the work![or]You proudly look over your shoulder as [he of M] slides [his of M] [manly-penis] into your loose [vagina], grinning at [him of M] as [he of M] begins to thrust. You[']re loose enough that [he of M] can go all out from the get go, [his of M] balls slapping audibly against you as [his of M] hands grab hold of your waist.[or]You push backward against [him of M] as [his of M] [manly-penis] slides into your [vagina], glancing over your shoulder to [if there is a worn ballgag]stare seductively at the [M] as you begin to work your hips back and forth.[otherwise]seductively lick your lips as you begin to work your hips back and forth.[end if][at random]".



Chapter 2 - Continue Sex


To say SexDollAnal of (M - a monster):
	say "As the [M] continues to use your [asshole] [one of]you feel your rubberised cheeks burn brighter still, and try to clamp your lips shut on your guttural but squeaky grunts and moans - but all you manage is a subtle flexing of the now round orifice, and the silken rasping of the manly tool through your tightly-gripping rosebud feels [italic type]so[roman type] good that, try as you might, you just keep squealing like a small stuck piglet[or]The [M] continues to use your super loose [asshole]![or]You continue to squeal as the [M] fucks your [asshole]![cycling].".

[!<ComputeBeggingOfMonsterInFuckhole>+

Handles the player using beg whilst being penetrated by a monster "M" in a fuckhole "F"

@param <Monster>:<M> The monster that is fucking the player
@param <Fuckhole>:<F> The fuckhole "M" is fucking
+!]
To compute begging of (M - a monster) in (F - a fuckhole):
	say (M) mercy sex (a random number between 1 and 7).

To say (M - a monster) mercy sex (N - a number):
	let O be a random orifice penetrated by M;
	if N is 1:
		say "The [M] rubs your back, fucking your [variable O] with slow strokes.";
	if N is 2:
		say "The [M] slows down a bit, but there's still quite a bit of power to [his of M] thrusts.";
	if N is 3:
		say "The [M] pounds your [variable O], slightly softening [his of M] grip and controlling [his of M] pace.";
	if N is 4:
		say "The [M] fucks your [variable O] with shallow strokes. You can tell from the softening of [his of M] grip that [he of M][']s trying not to hurt you.";
	if N is 5:
		say "The [M] slowly plows your [variable O], loosening [his of M] grip slightly so you know [he of M][']s not trying to hurt you.";
	if N is 6:
		say "The [M] slowly drives [his of M] [manly-penis] in and out of your [variable O].";
	if N is 7:
		say "The [M] fucks your [variable O] slowly and methodically, breathing evenly as if trying to maintain focus.".

[!<ComputeSexSubmitOfMonsterInFuckhole>+

Handles the player using submit whilst being penetrated by a monster "M" in a fuckhole "F"

@param <Monster>:<M> The monster that is fucking the player
@param <Fuckhole>:<F> The fuckhole "M" is fucking
+!]
To compute sexSubmit of (M - a monster) in (F - a fuckhole):
	say M submission sex (a random number between 1 and 6);
	ruin F.

[Often there will be situations where you want to override some, but not all of this. This function should probably be broken into smaller ones like "SubmissionBreastFondle of M", "SubmissionReflection of M", etc. This would also make it a lot easier to have monsters rip the player's clothes off or do other things randomly during sex]
To say (M - a monster) submission sex (N - a number):[We care about friendly fucking here but not during rough sex.]
	let O be a random orifice penetrated by M;
	if N is 1:
		say "The [M] takes the opportunity to reach underneath you and fondle your [BreastDesc] as [he of M] pistons [his of M] [manly-penis] in and out of your [variable O].";
	if N is 2:
		say "The [M] pushes you into the floor, leaning over so you can feel [his of M] breath on your back as [he of M] slams [his of M] [manly-penis] in and out of your [variable O].";
	if N is 3:
		let C be a random worn skirted clothing;
		if C is nothing, let C be a random worn crotch covering clothing;
		say "The [M] [if C is clothing]pushes [his of M] hand underneath your [printed name of C][otherwise]squeezes your [AssDesc][end if] as [he of M] plows your [variable O], [if M is friendly-fucking]taking full advantage of this opportunity to play with your body.[otherwise]making sure to keep one hand on your hips in case you try to get away.[end if]";
	if N is 4:
		say "[if the relevant sex addiction of M < 6]The [M] fucks your [variable O] with fast, hard thrusts. You close your eyes and tilt your head to the ground, focusing as hard as possible on when it will be over.[otherwise if the relevant sex addiction of M < 10]The [M] slams in and out of your [variable O], grunting heavily. You bite back a moan of pleasure.[otherwise]The [M] slams in and out of your [variable O], grunting heavily. You look over your shoulder and make a show of biting your lip.[end if]";
	if N is 5:
		say "[if the relevant sex addiction of M < 6]The [M] plows [his of M] [manly-penis] in and out of your [variable O]. It's extra humiliating because you're letting [him of M] do it![otherwise if the relevant sex addiction of M < 10]The [M] slams [his of M] [manly-penis] in and out of your [variable O], panting heavily. You try to convince yourself you're not doing this because you enjoy it.[otherwise]The [M] fucks your [variable O] with fast, hard thrusts. You close your eyes and tilt your head to the ground, losing yourself to pleasure.[end if]";
	if N is 6:
		say "[if the relevant sex addiction of M < 7]The [M] gives your [variable O] the hard fucking it deserves. You clench your fists and try to ignore your growing embarrassment.[otherwise if the humiliation of the player < 15000]The [M] roughly fucks your [variable O], panting heavily. You can almost feel your dignity crumbling, every thrust humiliating you more and more.[otherwise if the relevant sex addiction of M < 10]The [M] plows [his of M] [manly-penis] in and out of your [variable O]. There's something so invigorating about letting [him of M] do it![otherwise]The [M] plows [his of M] [manly-penis] in and out of your [variable O]. It's so satisfying to let [him of M] do it![end if]";
	if N is 7:
		if the player is male, say "[if the size of penis < 4 and tg fetish >= 1]The [M] ruts you like an animal. At this point, there's not a lot separating you from a girl.[otherwise if the size of penis < 4 and the size of penis > 0 and the bimbo of the player < 14]The [M] pounds your [asshole] hard and fast. You can't help feeling a little embarrassed of how minuscule your [ShortDesc of penis] is compared to [his of M].[otherwise if the size of penis < 4 and the size of penis > 0]The [M] pounds your [asshole] hard and fast. You feel proud of how minuscule your [ShortDesc of penis] is compared to [his of M].[otherwise if the bimbo of the player < 3]The [M]'s balls repeatedly slap your taint as he pistons in and out of your [asshole],as if to remind you how little you've actually done to stop [him of M].[otherwise if the bimbo of the player < 5]Shocks of pleasure ripple through your [manly-penis] as [he of M] pounds your [asshole]. And you thought it was humiliating before...[otherwise if the bimbo of the player < 7]The [M]'s [manly-penis] relentlessly pounds your sensitive prostate, reminding you how humiliating it is to get fucked by another man.[otherwise if the bimbo of the player < 9]Shocks of pleasure ripple through your [ShortDesc of penis] as [he of M] pounds your [asshole]. It's difficult to resist when it feels this good.[otherwise if the bimbo of the player < 10]The [M]'s [manly-penis] relentlessly pounds your sensitive prostate, reminding you that you're a dirty faggot for enjoying this.[otherwise if the bimbo of the player < 12]The [M]'s balls repeatedly slap your taint as he pistons in and out of your [asshole], as if to remind you how much you secretly like this.[otherwise if the bimbo of the player < 14]The [M]'s balls repeatedly slap your taint as he pistons in and out of your [asshole], as if to remind you how much you LOVE getting fucked.[otherwise]Shocks of pleasure ripple through your [ShortDesc of penis] as [he of M] pounds your [asshole]. Phew, [he of M] sure knows how to show a girl a good time![end if]";
		otherwise say "[if the player is horny and the relevant sex addiction of M < 10]The [M] fucks your [variable O] hard and fast. After a few seconds [he of M] reaches between your legs, chuckling when [he of M] discovers just how wet you are.[otherwise if the player is horny]The [M] fucks your [asshole] hard and fast. After a few seconds [he of M] reaches between your legs, sinking a finger into your [vagina] when [he of M] realizes how wet you are.[otherwise if the openness of vagina > 3]The [M] reaches between your legs, sinking two fingers into your [vagina] as [he of M] slams in and out of your [asshole].[otherwise]The [M] reaches between your legs, gently rubbing your clit in small circles as [he of M] plows your [asshole].[end if]".

[!<ComputeSexResistOfMonsterInFuckhole>+

Handles the player using resist whilst being penetrated by a monster "M" in a fuckhole "F"

@param <Monster>:<M> The monster that is fucking the player
@param <Fuckhole>:<F> The fuckhole "M" is fucking
+!]
To compute sexResist of (M - a monster) in (F - a fuckhole):
	say M rough sex (a random number between 1 and 5);
	ruin F.

To say (M - a monster) rough sex (N - a number):
	let O be a random orifice penetrated by M;
	if N is 1:
		say "[if there is a worn ballgag and the bimbo of the player > 12]The [M] rams [his of M] [manly-penis] in and out of your [variable O]. You feel slightly annoyed that your [random worn ballgag] is muffling your moans.[otherwise if there is a worn ballgag and the bimbo of the player > 7]The [M] rams [his of M] [manly-penis] in and out of your [variable O]. You feel slightly relieved that your [random worn ballgag] muffles the sound of your moans.[otherwise if there is a worn ballgag]The [M] rams [his of M] [manly-penis] in and out of your [variable O]. Your grunts of displeasure are muffled by the lump of plastic in your mouth.[otherwise if the relevant sex addiction of M > 12]The [M] gives your [variable O] the hard fucking it deserves. You arch your back and shamelessly moan in pleasure.[otherwise if the relevant sex addiction of M > 7]The [M] gives your [variable O] the hard fucking it deserves. You arch your back and emit an involuntary moan of pleasure.[otherwise]The [M] gives your [variable O] the hard fucking it deserves, panting heavily. You try as hard as possible to show your displeasure.[end if]";
	if N is 2:
		let F be the openness of O - the girth of M;
		say "[if the F < 0 and the relevant sex addiction of M > 11]The [M] is roughly fucking your [variable O] and panting heavily. It's so exciting knowing [he of M] barely fits![otherwise if F < -2]The thickness of the [M]'s [manly-penis] is VERY noticeable as [he of M] slams it in and out of your tight [variable O].[otherwise if F < 0]The [M] ruts you like an animal. Each of [his of M] thrusts reach nice and deep, as if to acclimate your tight [variable O] to the feeling of [manly-penis].[otherwise if F > 4]The [M] pounds your [variable O] mercilessly, but your [variable O] is so stretched that it doesn't feel rough at all.[otherwise if F > 2]The [M] fucks you hard and fast. However, your [variable O] is loose enough that it doesn[']t actually feel rough at all.[otherwise]The [M]'s thrusts come quickly, greedily seeking the inner reaches of your [variable O].[end if]";
	if N is 3:
		say "[if the thickness of hips > 6]The [M] plunges into your [variable O] at full force. Lewd claps ring through the air as [his of M] hips slam into your [HipDesc].[otherwise if the flesh volume of hips > 4]The [M] plows your [variable O] as if you were some kind of fuck toy! You can feel your [HipDesc] jiggling with each thrust.[otherwise]The [M] slams in and out of your [variable O], grunting heavily.[end if]";
	if N is 4:
		say "[if the largeness of breasts > 15 and the bimbo of the player > 11]The [M] explores your [BreastDesc] with [his of M] hands as [he of M] plows your [variable O]. You giggle. Of course, [he of M] knows you're much too heavy to get away.[otherwise if the largeness of breasts > 15]The [M] explores your [BreastDesc] with [his of M] hands as [he of M] plows your [variable O]. You sigh. Obviously [he of M] knows you're much too heavy to get away.[otherwise if the largeness of breasts > 12 and the number of worn bras is 0]The [M] roughly fucks your [variable O], causing your unrestrained [BreastDesc] to slap audibly against your chest.[otherwise if the largeness of breasts > 9]The [M] roughly fucks your [variable O], jostling your [BreastDesc] with the force of [his of M] thrusts.[otherwise if the largeness of breasts > 5]The [M] roughly fucks your [variable O] as your [BreastDesc] [BreastBounceDesc] with the force of [his of M] thrusts.[otherwise]The [M] pounds your [variable O] with fast, powerful strokes.";
	if N is 5:
		say "[if the relevant sex addiction of M > 12]The [M] slams [his of M] [manly-penis] in and out of your [variable O], panting heavily. You're enjoying it so much you can hardly think![otherwise if the relevant sex addiction of M > 7]The [M] fucks your [variable O] with fast, hard thrusts. You close your eyes and tilt your head to the ground, trying to ignore how good it feels.[otherwise]The [M] slams in and out of your [variable O], grunting heavily. You look over your shoulder and scowl in hopes of turning [him of M] off.[end if]";
	if N is 6:
		if the size of penis > 0 and the relevant sex addiction of M > 7 and there is worn knickers and the number of worn chastity cages is 0:
			let P be a random worn knickers;
			say "[if the size of penis < 3]The [M] plows your [asshole] without mercy. Your desperately hard [sissy-penis] not even tenting your [printed name of P].[otherwise if the armour of P - 3 < the size of penis]The [M] plows your [asshole] without mercy, your [ShortDesc of penis] hard and peeking out of your [printed name of P].[otherwise]The [M] plows your [asshole] without mercy, your [ShortDesc of penis] hard enough to visibly tent your [printed name of P].[end if]";
		otherwise if the size of penis > 2 and the relevant sex addiction of M > 7:
			say "The [M] plows your [asshole] without mercy, your [ShortDesc of penis] slapping audibly against your [belly].";
		otherwise if the player is male:
			say "[if the bimbo of the player < 6 and the size of penis > 2]The [M] ruts you like an animal. You have a penis, but [he of M][']s still treating you just like a woman![otherwise if the size of penis > 2]The [M] rams [his of M] [manly-penis] in and out of your [asshole]. Your [ShortDesc of penis] jiggles around.[otherwise if the humiliation of the player < 22500]The [M] fucks your [asshole] hard and fast. There's something so humiliating about sex with another man![otherwise]The [M] fucks your [asshole] with fast, powerful thrusts. You can feel [his of M] [manly-penis] slamming into your sensitive prostate.[end if]";
		otherwise:[TODO: remove masturbation text here, since the player can actually masturbate during sex]
			say "[if the relevant sex addiction of M > 10 and there is a worn chastity cage]The [M] slams in and out of your [asshole]. You desperately want to play with yourself but you can't because of your stupid belt![otherwise if the relevant sex addiction of M > 6 and there is a worn chastity cage]The [M] slams in and out of your [asshole]. You can't help feeling ashamed that you would be playing with yourself if not for your chastity belt.[otherwise if the relevant sex addiction of M > 13 and vagina is not actually occupied]The [M] slams in and out of your [asshole], panting heavily. You eagerly finger yourself, determined to enjoy this as much as possible.[otherwise if the relevant sex addiction of M > 13]The [M] roughly fucks your [asshole] as you frantically diddle your clit. You want to enjoy yourself as much as you possibly can![otherwise if the relevant sex addiction of M > 9]The [M] roughly fucks your [asshole] as you play with your clit. You know you shouldn't, but it's like you just can't stop yourself![otherwise if the relevant sex addiction of M > 6]The [M] slams in and out of your [asshole], panting heavily. You want to touch yourself so badly, but you won't give [him of M] the satisfaction![otherwise]The [M] slams in and out of your [asshole], panting heavily. You know it would make it easier to take if you touched yourself as well, but you definitely won't give [him of M] or Nintendolls the satisfaction![end if]".

Chapter 3 - Climax

[!<ComputeUniqueClimaxOfMonster>+

Contains the unique handling for a monster "M" climaxing in a fuckhole "F". Monsters with a unique way of climaxing for a given hole should have their own version of this function. The outer function "compute climax of M in F" increments timers and handles a couple of other things, so anything coded in this function should only pertain to this specific monster. This function assumes the monster is male.

@param <Monster>:<M> The monster having the climax
@param <Fuckhole>:<F> The fuckhole the monster is climaxing with

+!]
To compute unique climax of (M - a monster) in (F - a fuckhole):[assumes M is male]
	if M is wrapped, compute wrapped climax of M in F;
	otherwise compute unprotected climax of M in F.

[!<ComputePostClimaxEffectOfMonster>+

Handles anything that needs to happen after a monster "M" climaxes in a fuckhole "F". This function is meant to help specific monsters control what happens after a climax, anything that affects all or most monsters needs to be part of the outer function "compute climax of M in F". No functionality in this function by default

@param <Monster>:<M> The monster that had the climax
@param <Fuckhole>:<F> The fuckhole the monster had the climax with

+!]
To compute post climax effect of (M - a monster) in (F - a fuckhole):
	do nothing.

[!<DecideIfMonsterIsLosingWrapperInFuckhole>+

Determines whether or not anything happens to the condom the monster "M" is wearing in the fuckhole "F". This function handles condoms breaking, being manually removed, or simply not working right. By default, the condom is always successful, so condoms only fail if there is a unique reason specified in a given monster's version of this function

@param <Monster>:<M> The monster wearing the condom
@param <Fuckhole>:<F> The fuckhole the monster is inside of
@return <Boolean> true if the monster's condom fails for any reason, otherwise false

+!]
To decide if (M - a monster) is losing wrapper in (F - a fuckhole):
	decide no.

[!<ComputeWrappedClimaxOfMonsterInFuckhole>+

This function is called when a monster "M" has an orgasm in a fuckhole "F" whilst wearing a condom. If M's condom fails for any reason, calls the condom failure function for M and F. Otherwise, calls the condom success function for M and F

@param <Monster>:<M> The monster wearing the condom
@param <Fuckhole>:<F> The fuckhole the monster is penetrating

+!]
To compute wrapped climax of (M - a monster) in (F - a fuckhole):
	if M is losing wrapper in F, compute condom failure of M in F;
	otherwise compute condom success of M in F;

[!<ComputeCondomFailureOfMonsterInFuckhole>+

This function is called when a monster "M" has an orgasm in a fuckhole "F", and for some reason the condom they were wearing fails. Usually this means the player won't have to deal with a condom being pinned to their clothes and takes a full-on creampie instead.

@param <Monster>:<M> The monster that was wearing the condom
@param <Fuckhole>:<F> The fuckhole the monster is penetrating

+!]
To compute condom failure of (M - a monster) in (F - a fuckhole):
	[if debugmode > 0, say "CONDOM FAILED[line break]";]
	if image cutscenes is 1, get condom failure image of M in F;
	say CondomFailFlav of M in F;
	now M is unwrapped;
	compute M finishing in F;
	say CreampieReactionFlav to M in F.

[!<GetCondomFailureImageOfMonsterInFuckhole>+

This function can display a relevant image when a monster "M" has their condom fail for the fuckhole "F". By default, shares an image with the get creampie image function for M and F.

@param <Monster>:<M> The monster that was wearing the condom
@param <Fuckhole>:<F> The fuckhole the monster is penetrating

+!]
To get condom failure image of (M - a monster) in (F - a fuckhole):
	get creampie image of M in F.

[!<ComputeCondomSuccessOfMonster>+

This function is called when a monster "M" has an orgasm in a fuckhole "F" whilst wearing a condom, and it didn't fail for any reason.

@param <Monster>:<M> The monster wearing the condom
@param <Fuckhole>:<F> The fuckhole the monster is penetrating

+!]
To compute condom success of (M - a monster) in (F - a fuckhole):
	[if debugmode > 0, say "CONDOM SUCCEEDED[line break]";]
	if image cutscenes is 1, get condom success image of M in F;
	say CondomPieFlav of M in F;
	compute M finishing in F.

[!<GetCondomSuccessImageOfMonsterInFuckhole>+

This function can display a relevant image when a monster "M" ejaculates in the fuckhole "F" whilst wearing a condom. By default, shares an image with the get creampie image function for M and F.

@param <Monster>:<M> The monster wearing the condom
@param <Fuckhole>:<F> The fuckhole the monster is penetrating

+!]
To get condom success image of (M - a monster) in (F - a fuckhole):
	get creampie image of M in F.

[!<DecideIfMonsterIsWillingToCreampieFuckhole>+

Determines whether or a monster "M" will pull out of a fuckhole "F" before it ejaculates. If M has some reason not to finish inside F, or M has something planned for after it finishes with F, this function should evaluate as false. By default, any given monster is willing to creampie, so any monster that pulls out after sex is doing so for a unique reason specified in their version of this function

@param <Monster>:<M> A monster who might creampie a fuckhole
@param <Fuckhole>:<F> The fuckhole that might be creampied
@return <Boolean> true if M is going to do anything but ejaculate in F and then lose interest, otherwise false

+!]
To decide if (M - a monster) is willing to creampie (F - a fuckhole):
	decide yes.

[!<ComputeUnprotectedClimaxOfMonsterInFuckhole>+

This function is called whenever a monster "M" ejaculates in a fuckhole "F" whilst not wearing a condom. If the monster has any reason not to creampie the player, calls the compute M pulling out of F function. In any other case, calls the compute creampie of M in F function.

@param <Monster>:<M> The monster having the climax
@param <Fuckhole>:<F> The fuckhole the monster is penetrating

+!]
To compute unprotected climax of (M - a monster) in (F - fuckhole):
	if M is willing to creampie F, compute creampie of M in F;
	otherwise compute M pulling out of F.

[!<ComputeMonsterFinishingInVagina>+

This function is called whenever a monster "M" ejaculates in the player's vagina "F".

@param <Monster>:<M> The monster ejaculating
@param <Vagina>:<F> The player's vagina

+!]
To compute (M - a monster) finishing in (F - vagina):
	PussyFill the semen load of M.

[!<ComputeMonsterFinishingInAsshole>+

This function is called whenever a monster "M" ejaculates in the player's asshole "F".

@param <Monster>:<M> The monster ejaculating
@param <Asshole>:<F> The player's asshole

+!]
To compute (M - a monster) finishing in (F - asshole):
	AssFill the semen load of M.

[!<ComputeCreampieOfMonsterInFuckhole>+

This function is called whenever a monster "M" ejaculates in a fuckhole "F" whilst not wearing a condom, and M has no reason to pull out.

@param <Monster>:<M> The monster performing the creampie
@param <Fuckhole>:<F> The fuckhole receiving the creampie

+!]
To compute creampie of (M - a monster) in (F - a fuckhole):
	[if debugmode > 0, say "PULL OUT FAILED[line break]";]
	if image cutscenes is 1, get creampie image of M in F;
	say CreampieFlav of M in F;
	compute M finishing in F;
	say CreampieReactionFlav to M in F.

To get creampie image of (M - a monster) in (F - a fuckhole):
	do nothing.

[!<ComputeMonsterPullingOutOfFuckhole>+

This function is called whenever a monster "M" is about to ejaculate in a fuckhole "F" whilst not wearing a condom, and has some reason to pull out

@param <Monster>:<M> The monster having the orgasm
@param <Fuckhole>:<F> The fuckhole M is pulling out of

+!]
To compute (M - a monster) pulling out of (F - a fuckhole):
	[if debugmode > 0, say "PULL OUT SUCCEEDED[line break]";]
	if bukkake fetish is 1, compute M messily pulling out of F;
	otherwise compute M cleanly pulling out of F.

[!<ComputeMonsterMessilyPullingOutOfFuckhole>+

This function is called whenever a monster "M" is about to ejaculate in a fuckhole "F" whilst not wearing a condom, and has some reason to pull out. Usually, this function is called when bukkake fetish is enabled, and handles M glazing the player's crotch rather than ejaculating inside them.

@param <Monster>:<M> The monster having the orgasm
@param <Fuckhole>:<F> The fuckhole M pulled out of

+!]
To compute (M - a monster) messily pulling out of (F - a fuckhole):
	if image cutscenes is 1, get messy pull out image of M in F;
	say MessyPullOutFlav of M in F;
	CumThighsUp the semen load of M.

To get messy pull out image of (M - a monster) in (F - a fuckhole):
	get clean pull out image of M in F.

[!<ComputeMonsterCleanlyPullingOutOfFuckhole>+

This function is called whenever a monster "M" is about to ejaculate in a fuckhole "F" whilst not wearing a condom, and has some reason to pull out. Usually, this function is called when bukkake fetish is disabled, and handles M ejaculating on the floor rather than inside the player.

@param <Monster>:<M> The monster having the orgasm
@param <Fuckhole>:<F> The fuckhole M pulled out of

+!]
To compute (M - a monster) cleanly pulling out of (F - a fuckhole):
	if image cutscenes is 1, get clean pull out image of M in F;
	say PullOutFlav of M in F;
	SemenPuddleUp the semen load of M.

To get clean pull out image of (M - a monster) in (F - a fuckhole):
	do nothing.

[!<SayCreampieFlavOfMonsterInFuckhole>+

Displays some text describing a monster "M" inseminating a fuckhole "F"

@param <Monster>:<M> The monster the player just had sex with
@param <Fuckhole>:<F> The fuckhole being inseminated

+!]
To say CreampieFlav of (M - a monster) in (F - a fuckhole):
	say "[if M is intelligent][line break][speech style of M]'[one of]Ugh... yes!'[or]Take it all, now!'[or]Yes, yes, fucking take this!'[or]I'm cumming inside you, [bitch]!'[or]Oh trust me, you're going to be able to feel this!'[in random order][roman type][line break][end if]The [M] [one of]ejaculates deep inside[or]releases [his of M] load inside[or]growls as [he of M] finishes, filling[or]hisses with pleasure as [his of M] [semen] pumps into[or]pants happily and bottoms out as [he of M] shoots blast after blast of warm [semen] into[in random order] your [variable F]!".

[!<SayCreampieReactionFlavToMonsterInFuckhole>+

Displays some text describing the player reacting to being inseminated by a monster "M" in a fuckhole "F"

@param <Monster>:<M> The monster the player just had sex with
@param <Fuckhole>:<F> The fuckhole being inseminated

+!]
To say CreampieReactionFlav to (M - a monster) in (F - a fuckhole):
	do nothing.

To say CreampieReactionFlav to (M - a monster) in (F - vagina):
	if pregnancy fetish is 1 and M is male and the pregnancy of the player is 0, say "[first custom style][if the bimbo of the player < 6][one of]I can[']t believe [he of M] came inside. What if...? [or]W-what if I get pregnant? [or]Please don't let me be pregnant.... [at random][otherwise if the bimbo of the player < 12][one of]Doesn[']t [he of M] know I could get pregnant like this?[or]I could actually get pregnant from that...[or]Is [he of M] really going to do that every time we have sex...[at random][otherwise][one of]I hope I get pregnant...[or]I hope that was enough to put a bun in my oven...[or]I know I might get pregnant from that, but it just feels so good...[or]It's no fun unless it's risky...[at random][end if][roman type][line break]".

[!<SayCondomPieFlavOfMonsterInFuckhole>+

Displays some text describing a monster "M" orgasming inside a fuckhole "F" whilst wearing a condom

@param <Monster>:<M> The monster the player just had sex with
@param <Fuckhole>:<F> The fuckhole the monster is finishing in

+!]
To say CondomPieFlav of (M - a monster) in (F - a fuckhole):
	say "The [M] ejaculates into the condom!".

[!<SayCondomFailFlavOfMonsterInFuckhole>+

Displays some text describing a monster "M" orgasming inside a fuckhole "F" whilst wearing a condom and for some reason the condom has failed.

@param <Monster>:<M> The monster the player just had sex with
@param <Fuckhole>:<F> The fuckhole the monster is finishing in

+!]
To say CondomFailFlav of (M - a monster) in (F - a fuckhole):
	say "The condom breaks as the [M] ejaculates, and [semen] flows freely into your [variable F].";

[!<SayPullOutFlavOfMonsterInFuckhole>+

Displays some text describing a monster "M" pulling out of a fuckhole "F"

@param <Monster>:<M> The monster the player just had sex with
@param <Fuckhole>:<F> The fuckhole the monster is pulling out of

+!]
To say PullOutFlav of (M - a monster) in (F - a fuckhole):
	say "The [M] pulls out and sprays [semen] on the floor.".

[!<SayMessyPullOutFlavOfMonsterInFuckhole>+

Displays some text describing a monster "M" pulling out of a fuckhole "F" and punishing the player in some otherway

@param <Monster>:<M> The monster the player just had sex with
@param <Fuckhole>:<F> The fuckhole the monster is pulling out of

+!]
To say MessyPullOutFlav of (M - a monster) in (F - a fuckhole):
	say "The [M] pulls out and sprays your crotch with [semen]".

To get orgasm image of (M - a monster) in (F - a fuckhole):
	do nothing.


Penetrative Sex ends here.
