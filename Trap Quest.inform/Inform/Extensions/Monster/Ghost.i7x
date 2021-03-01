Ghost by Monster begins here.

A ghost is a kind of monster. A ghost has a number called bank. A ghost has a number called wind-up. The wind-up of a ghost is usually 0. The poison-status of a ghost is -1. A ghost can be phased or unphased. A ghost is male. A ghost is neuter. The blind-status of a ghost is -1.

Definition: a ghost is willing to do titfucks: decide no.

Definition: a ghost is summoningRelevant: decide no. [Doesn't count towards the number of monsters in the region for the purposes of summoning portals.]

Definition: a ghost is father material: decide yes.

Definition: a ghost is delayed:
	if the last-interaction of it is 2 and diaper quest is 0, decide yes;
	decide no. [In DQ, ghosts don't get delayed]

The text-shortcut of ghost is "pe". Understand "ghost", "dick", "cock", "penis", "diaperghost" as a ghost.

To say ShortDesc of (M - a ghost):
	say "ghost".

jismbodied ghost is a ghost. The text-shortcut of jismbodied ghost is "dis". Understand "disembodied", "jism", "dism", "jis", "powder", "powder and" as jismbodied ghost.
To say MediumDesc of (M - jismbodied ghost):
	say "[if diaper quest is 1]powder and diaperghost[otherwise]disembodied ghost[end if]".

perverted ghost is a ghost. The text-shortcut of perverted ghost is "per".
To say MediumDesc of (M - perverted ghost):
	say "perverted [if diaper quest is 1]diaper[end if]ghost".

haunty ghost is a ghost. The text-shortcut of haunty ghost is "hau". Understand "horny" as haunty ghost.
To say MediumDesc of (M - haunty ghost):
	say "horny [if diaper quest is 1]diaper[end if]ghost".

creepy ghost is a ghost. The text-shortcut of creepy ghost is "crg".
To say MediumDesc of (M - creepy ghost):
	say "creepy [if diaper quest is 1]diaper[end if]ghost".

unsettling ghost is a ghost. The text-shortcut of unsettling ghost is "uns".
To say MediumDesc of (M - unsettling ghost):
	say "unsettling [if diaper quest is 1]diaper[end if]ghost".

To say MonsterDesc of (M - a ghost):
	if diaper quest is 1:
		say "This orange lifeform appears to be a sentient ghost, in the shape of a large, thick diaper cover, with a face etched into it like something out of a Disney movie! [if the wind-up of M is 1]Although normally intangible, it has temporarily shifted into the corporeal world, glowing brighter and brighter by the second. It's clearly about to unleash a powerful attack![otherwise if M is phased]Its body doesn't fully exist in the corporeal world, preventing you from interacting with it through normal means.[otherwise]Its body has temporarily shifted into the corporeal world.[end if]";
	otherwise:
		let U be 0;
		if M is unfriendly or M is penetrating a body part, now U is 1;
		say "This silvery-blue glowing ghost takes on a human [if lady fetish is 2]male[otherwise]female[end if] form. [big his of M] [']body['] is slightly transparent, and it casts a dim glow over the surrounding walls and furniture. [if the wind-up of M is 1 and bukkake fetish is 1]While normally intangible, [his of M] body is currently shifted into the corporeal world, along with a rock-hard [DickDesc of M] with bulging veins and slimy grey 'drool' leaking from its tip. It's clearly about to violently explode![otherwise if the wind-up of M is 1]While normally intangible, [his of M] body is currently shifted into the corporeal world, glowing brighter and brighter by the second. It's clearly about to unleash a powerful attack![otherwise if U is 1 and M is phased][big he of M] doesn't fully exist in the corporeal world, but from the [LongDickDesc of M] sticking out from [his of M] crotch, that isn't going to stop [him of M] from having [his of M] way with you![otherwise if U is 1][big his of M] body has temporarily shifted into the corporeal world, which only makes the [LongDickDesc of M] stick out of [his of M] crotch seem more substantial![otherwise if M is phased][big he of M] doesn't fully exist in the corporeal world, preventing you from interacting with it through normal means. Still, it's obvious [he of M] wants to fuck you.[otherwise][big he of M] has temporarily shifted into the corporeal world, making [him of M] vulnerable to normal attacks. [big he of M] probably wants to fuck you.[end if]".

To say MonsterDesc of (M - ghostly tentacle):
	if diaper quest is 1, say "This blue glowing ghost takes on a human [if lady fetish is 2]male[otherwise]female[end if] form, dressed in a right black gown which completely fails to cover [his of M] very thick white diaper. Beneath a black veil is a friendly and playful but also somewhat sinister face. [if M is phased][big he of M] doesn't fully exist in the corporeal world, preventing you from interacting with it through normal means.[otherwise][big he of M] has temporarily shifted into the corporeal world, making [him of M] vulnerable to normal attacks.[end if]";
	otherwise say "This transparent purple tentacle is hanging from the ceiling, drooling some brightly coloured grey fluid. [if M is wrangling a body part]It has temporarily shifted into the corporeal world and wrapped itself around your wrist![otherwise if M is phased]Its body doesn't fully exist in the corporeal world, preventing you from interacting with it through normal means.[otherwise]Its body has temporarily shifted into the corporeal world.[end if]".

To say MonsterDesc of (M - jismbodied ghost):
	if diaper quest is 1, say "This orange lifeform appears to be a sentient ghost, in the shape of a large, thick diaper cover, with a face etched into it like something out of a Disney movie! A small cloud of baby powder with its own cute little face floats alongside it. [run paragraph on]";
	otherwise say "This floating, faintly glowing penis is composed entirely of semi-solid silver slime. Even for an evil spectre, the size of it is unreal. [run paragraph on]";
	say "[if diaper quest is 1 and the wind-up of M is 1]Although normally intangible, it has temporarily shifted into the corporeal world, glowing brighter and brighter by the second. It's clearly about to unleash a powerful attack![otherwise if the wind-up of M is 1]Although normally transparent, it has temporarily shifted into the corporeal world, its eerie glow growing stronger by the second. It's clearly about to explode, and violently![otherwise if M is phased]Its body doesn't fully exist in the corporeal world, preventing you from interacting with it through normal means.[otherwise]Its body has temporarily shifted into the corporeal world, making it vulnerable to normal attacks.[end if]".

To say MonsterComment of (M - a ghost):
	if diaper quest is 1:
		do nothing;
	if M is penetrating a body part:
		say "[variable custom style][one of]So cold![or]Chilly![or]I-it's frigid![in random order]";
	otherwise if the bimbo of the player < 7:
		if the player is gendered male, say "[first custom style][one of][if the times-submitted of M > 0]I knew there had to be something fucking weird about these ghosts.[otherwise]Nice! It's a sexy ghost chick![end if][or][if M is phased]I can't touch it, so how am I supposed to fuck it?[otherwise]This is my chance to touch some spooky tits![end if][or]It's kind of freaky.[in random order]";
		otherwise say "[first custom style][one of]It's creepy, but for the wrong reasons.[or][if M is phased]I'll have to think outside the box if I want to fight it.[otherwise]This is my chance to damage it![end if][or]Even the ghosts have impossible proportions in this game. How stupid.[in random order]";
	otherwise if the bimbo of the player < 12:
		say "[variable custom style][one of]I can't see [him of M] clearly, but what I can see is actually really hot...[or][if M is phased]I can't fight [him of M] normally, so I probably shouldn't try, right?[otherwise]I can touch it now, which just makes me more curious.[end if][or]Ghosts are normally creepy, but this one is just sexy.[in random order]";
	otherwise:
		say "[second custom style][one of]If [he of M]'s a ghost, [he of M]'s probably single.[or][if M is phased]If I let [him of M] fuck me... how would it feel? Would I feel anything?[otherwise]I guess I don't need to worry about how [he of M]'ll fuck me![end if][or]It's spooky, but in a really sexy way.[in random order]";
	say "[roman type][line break]".

To say MonsterComment of (M - jismbodied ghost):
	if diaper quest is 1:
		do nothing;
	otherwise if M is penetrating a body part:
		say "[variable custom style][one of]Slimy![or][if the bimbo of the player < 7]It feels disgusting![otherwise]It feels like ice cream![end if][or]It's so slimy![in random order]";
	otherwise if the bimbo of the player < 7:
		if the player is gendered male, say "[first custom style][one of]I guess if I only had one part I could show as a ghost...[or][if M is phased]I guess it would be weirder if I *could* touch it.[otherwise]This is my chance to touch it. Should be easy...[end if][or]Does not surprise me that dicks have ghosts. Does not surprise me.'[in random order]";
		otherwise say "[first custom style][one of]It's just a floating penis. This is ridiculous...[or][if M is phased]It can't really touch me that way, can it?[otherwise]I can attack it now, but to do that... I'll have to touch it.[end if][or]I've never seen anything more disgusting.[in random order]";
	otherwise if the bimbo of the player < 12:
		say "[variable custom style][one of]W-why does everything have to be so sexual in this game?[or][if M is phased]Even if it looks like that, it's still a ghost. It has to have the same weaknesses.[otherwise]So I can touch it now. Not sure how to feel about that.[end if][or]It's kind of gross, but honestly, what isn't?[in random order]";
	otherwise:
		say "[second custom style][one of]The best type of ghost.[or][if M is phased]If I let it fuck me... how would it feel? Would I feel anything?[otherwise]I guess I don't need to worry about how it'll fuck me![end if][or]It's gross, but not in a way that turns me off.[in random order]";
	say "[roman type][line break]".

[TODO eventually: special text for cultist]
To say MonsterComment of (M - ghostly tentacle):
	if diaper quest is 1:
		do nothing;
	otherwise if M is penetrating a body part:
		say "[variable custom style][one of]So cold![or]Chilly![or]I-it's frigid![in random order]";
	otherwise if the bimbo of the player < 7:
		if the player is gendered male, say "[first custom style][one of]Is that even a ghost? Tentacles don't have ghosts, right?[or][if M is wrangling a body part]Dude! Fuck off![otherwise]I don't mind if I can't touch some freaky floating tentacle. Whatever.[end if][or]I guess it's ominous.'[in random order]";
		otherwise say "[first custom style][one of]Is that tentacle... attached to something?[or][if M is wrangling a body part]Let go of me![otherwise]Normal attacks won't work.[end if][or]It's ominous...[in random order]";
	otherwise if the bimbo of the player < 12:
		say "[variable custom style][one of]That tentacle clearly belongs to something... I wonder what?[or][if M is wrangling a body part]This grip is so strong. Can I even fight?[otherwise]It's intangible, which means I can't do anything to it. But it can still do stuff to me.[end if][or]It's intimidating, but is that really so bad?[in random order]";
	otherwise:
		say "[second custom style][one of]I can't wait to meet whatever that tentacle is attached to.[or][if M is wrangling a body part]It's holding me so tightly. How romantic![otherwise]I wonder if it plans on fucking me?[end if][or]It's really intimidating, which is perfect. Reminds me of my place![in random order]";
	say "[roman type][line break]".

Definition: a ghost is blocker: decide no.

To set up (M - a ghost):
	reset M;
	now the monstersetup of M is 1;
	now the raw difficulty of M is the starting difficulty of M;
	now the health of M is the maxhealth of M;
	if diaper quest is 1, now M is neuter;
	now M is phased.

To decide which number is the starting difficulty of (M - a ghost):
	decide on 5.

To decide which number is the starting difficulty of (M - jismbodied ghost):
	decide on 8.

To decide which number is the girth of (M - jismbodied ghost):
	if the location of the player is garlic, decide on 5;[weakened, but not beaten]
	decide on 7.

To compute unique periodic effect of (M - jismbodied ghost):
	if a random number between 1 and 5 is 1 and diaper quest is 0:
		if M is in the location of the player, say "[BigNameDesc of M] dribbles [semen] in its wake.";
		PuddleUp semen by 1 in (the location of M).

To decide which number is the girth of (M - a ghost):
	decide on 3.

To satisfy (M - jismbodied ghost) for (N - a number) seconds:
	if M is interested:
		bore M for N seconds;
		if M is in the location of the player, say SatisfiedFlav of M;
	otherwise:
		bore M for N seconds. [We still want to dislodge etc. even if they weren't interested for some reason.]

To satisfy (M - a ghost) for (N - a number) seconds:
	say "[BigNameDesc of M] slowly fades out of existence. You have a feeling you'll be seeing it again...";
	now creepiness is 0; [Having dealt with a ghost shouldn't cause a new one to appear immediately]
	destroy M;
	bore M for N seconds.[Is dislodging handled with the destroy M function?.]

To compute unique early action of (M - a ghost):
	if the wind-up of M is 1:
		compute ectoplasm to M; [Ghosts explode when they wind up, no matter what.]
	otherwise if M is interested and the bank of M < 100:
		increase the bank of M by the difficulty of M. [Ghosts slowly get hornier by following you around or fighting you]

To compute unique final action of (M - a ghost):
	compute phaseout of M.

Definition: a jismbodied ghost is a tripper: decide yes.

To compute phaseout of (M - a ghost):
	if the location of M is garlic and M is phased:
		now M is unphased;
		if M is in the location of the player, say "[BigNameDesc of M] [bold type]bristles as it enters the room, flickering as it shifts fully into the corporeal world.[roman type][line break]";
	otherwise if M is unphased and the location of M is not garlic:
		now M is phased;
		if M is in the location of the player, say "[BigNameDesc of M] [bold type]shimmers as it shifts out of the corporeal world.[roman type][line break]".

To compute unique final action of (M - ghostly tentacle):
	if diaper quest is 1, compute phaseout of M.[in TQ, the tentacle only phases in and out under specific circumstances]

To say SummoningFlav of (M - a ghost):
	if M is in the location of the player, say "You hear far away laughter as the glow surrounding the mummy intensifies and simultaneously converges [if futanari fetish is 1]on [his of M] crotch, [otherwise]in front of [his of M] face, [end if] coalescing into a [MediumDesc of M] and immediately [if bukkake fetish is 1 and futanari fetish is 0]ejaculates all over [his of M] face[otherwise if futanari fetish is 0]phases through [his of M] face, causing a very audible gagging noise as it comes out the other side[otherwise]ejaculates[end if]. The mummy slowly climbs to its feet, spit and [if diaper quest is 1][urine][otherwise][semen][end if] absorbing into the frayed cloth without another trace.";
	otherwise say "You hear distant laughter somewhere else in the mansion.".

To compute labour to (M - a ghost):
	compute pregnancy clothing displacement;
	say "[PregFlav]Slime trickles out of your [vagina], collecting in a pool between your legs as a steady flow of viscous, glowing fluid spreads across the floor beneath you. A heavy, suffocating feeling falls over your surroundings as your belly slowly returns to its original size. You're going to be stuck like this for a little while until the slime dissipates...";
	if playerRegion is Mansion or (playerRegion is Woods and doomed > 2):
		say "And even as some of the slime begins to disappear, its glow seems to intensify. Tiny pinpricks of light rise up from the wet floor, growing and intensifying into a floating horde of silvery blue bodies with big and very erect penises.";
		repeat with N running through ghosts:
			if (N is not ghostly tentacle and N is not jismbodied):
				set up N;
				dislodge N;
				now N is in the location of the player;
				anger N;
	increase the stickiness of the player by 3.

To compute fatherhood to (M - a ghost):
	distract M.

Part 1 - Perception

Definition: a ghost (called M) is objectifying the player:
	if M is not in the location of the player, decide no;
	if (the bimbo of the player >= 20 or the appearance of the player >= 20), decide yes;
	if the player is immobile, decide yes;
	if the player is prone, decide yes;
	if [playerRegion is Mansion and ]the slime-puddle of the location of the player > 0, decide yes;
	[if the class of the player is faerie, decide no;]
	if the appearance of the player > the bimbo tolerance of M, decide yes;
	decide no.[The ghost won't go for you unless you're vulnerable or slutty]

To say GhostTip:
	if newbie tips is 1, say "[one of][newbie style]Newbie tip: Ghosts are often invincible outside of certain rooms. Look for a description of a crest on the floor, and the ghost 'flickering into the corporeal realm' before you fight them. Also, some have really nasty OHKO attacks, but you can see them coming and move rooms before they go off. Just keep an eye on the text.[roman type][line break][or][stopping]".

To compute perception of (M - a ghost):
	let A be 0;
	repeat with N running through monsters in the location of the player:
		if the favour of N >= the aggro limit of N, now A is 1;
	if M is unfriendly or the bimbo of the player >= 15 or A is 1:
		say "[if M is jismbodied ghost][BigNameDesc of M] seems to reform itself, elongating slowly until a foot-long, slimy [manly-penis] thick enough to qualify as lumber is hovering in the air in front of you. [otherwise]Light seems to converge in front of [NameDesc of M], forming a massive and very erect [manly-penis] right before your eyes. [end if]From the way it's pointing at you it's not hard to guess at its intentions...";
		anger M;
		say GhostTip;
	otherwise:
		say "The light cast by [NameDesc of M] seems to change, and it begins to follow you around.".

To compute DQ perception of (M - a ghost):
	now M is interested;
	if M is unfriendly:
		say "[BigNameDesc of M] coos excitedly in a haunting voice. [if M is jismbodied ghost]The small powder ghost begins to energetically dance around [him of M] with increasing speed! [end if]From the way it's flexing its fabric and staring at you it's not hard to guess at its intentions...";
		say GhostTip;
	otherwise:
		say "[BigNameDesc of M][']s expression seems to change from neutral to an evil sneer, and [he of M] begins to follow you around.".

Part 2 - Combat

Section 1 - Protection

To compute (M - a ghost) protecting against (X - a monster):
	unless M is unfriendly:
		anger M;
		compute correct perception of M.

Section 2 - Sex

To compute delay of (M - a ghost):
	do nothing.
	[if diaper quest is 0, say "A huge silvery glowing [manly-penis] appears at [NameDesc of M][']s crotch, fully erect.".]

To say CondomForceFailFlav of (M - a ghost):
	say "[one of]You reach between your legs, grasping for [NameDesc of M][']s [DickDesc of M] as you quickly take out a condom. [if M is phased]Unfortunately, your fingers simply pass through its incorporeal form[otherwise]Unfortunately, your hand is forcefully shoved away by a wall of pressure[end if].[or]You take out a condom and reach between your legs, awkwardly trying to apply it to [NameDesc of M][']s [DickDesc of M]. [if M is phased]Unfortunately, its incorporeal form allows it to pass right through[otherwise]Unfortunately, your hand is forcefully shoved away by a wall of pressure[end if].[at random]";

To decide which number is the condom resistance of (M - a ghost):
	if M is phased, decide on 99;
	decide on -1.

The ghost insertion rules is a rulebook. The insertion rules of a ghost is usually the ghost insertion rules.

This is the ghost hole insertion rule:
	if chosen-orifice of current-monster is asshole, follow the ghost asshole insertion rules;
	if chosen-orifice of current-monster is vagina, follow the ghost vagina insertion rules;
	if chosen-orifice of current-monster is face, follow the ghost mouth insertion rules;
	if chosen-orifice of current-monster is breasts, compute current-monster entering breasts.[shouldn't happen]
The ghost hole insertion rule is listed in the ghost insertion rules.

The ghost asshole insertion rules is a rulebook.

This is the blessings block ghosts rule:[ghosts normally phase through orifice blocking objects, but not when blessings are involved.]
	let C be a random blessed pussy covering clothing;
	if chosen-orifice of current-monster is asshole, now C is a random blessed ass covering clothing;
	if C is clothing:
		compute current-monster attacking C;
		rule succeeds;
	otherwise:
		let P be a random insertable thing penetrating chosen-orifice of current-monster;
		if P is an insertable thing:
			compute current-monster removing P;
			rule succeeds.
The blessings block ghosts rule is listed last in the ghost asshole insertion rules. The monster penetrating asshole rule is listed last in the ghost asshole insertion rules.

To say AssholePenetrationFlav of (M - a ghost):
	let C be a random worn total protection clothing;
	[if C is clothing and M is jismbodied ghost and bukkake fetish is 1, CumSoak 5 on C;]
	let P be a random sex toy penetrating asshole;
	say "[BigNameDesc of M] floats behind you, [one of]surprising you[or]once again surprising you[stopping] [if C is clothing] as a very tangible cockhead pokes your [asshole] through your [printed name of C].[otherwise if P is worn]with a very tangible shaft rubbing itself between your [AssDesc].[otherwise]with a very tangible tip prodding at your [asshole].[end if][if C is clothing] [one of]Instead of being blocked or delayed by the layer of [clothing-material of C] protecting your hole, it simply passes through![or]It simply passes through the layer of [clothing-material of C] covering your hole.[at random][end if] You [if the openness of asshole < 3]grunt[otherwise if the anal sex addiction of the player < 4]gasp[otherwise]sigh[end if] as it slowly slides its way in[if P is worn], ignoring your [printed name of P] completely as it[otherwise] and[end if] begins to thrust.".

To compute unique penetration effect of (M - jismbodied ghost) in (F - a fuckhole):
	let C be a random worn total protection clothing;[The jismbodied ghost leaves semen on everything it touches]
	if C is clothing and bukkake fetish is 1, CumSoak 5 on C.

To compute sexDumb of (M - a ghost) in (F - a fuckhole):[submit and resist are the same for the ghost]
	compute sexSubmit of M in F.

To say sexSubmitFondleFlav of (M - a ghost) in (O - an orifice):
	say "A pair of ghostly hands materialise underneath you, [one of]eagerly fondling your [BreastDesc][or]cruelly twisting your nipples[or]tweaking your nipples and palming your [BreastDesc][or][if the largeness of breasts < 4]shamelessly manhandling your [BreastDesc][otherwise]cruelly slapping your [BreastDesc][end if][or]playing with your [BreastDesc][at random] as [NameDesc of M] [one of]pistons[or]slams[or]thrusts[at random] in and out of your [variable O].".

To say sexSubmitPushFlav of (M - a ghost) in (O - an orifice):
	let F be a random monster penetrating face;
	say "You [one of]suddenly feel a hand on your back, pushing you into the [if F is monster][F][otherwise]floor[end if][or]hear someone grunting heavily behind you[at random] as [NameDesc of M] [one of]pistons[or]slams[at random] in and out of your [variable O].".

To say sexSubmitBiteFlav of (M - a ghost) in (O - an orifice):
	let F be the openness of O - the girth of M;
	say "[if the F < 0 and the relevant sex addiction of M > 11][BigNameDesc of M] is roughly fucking your [variable O] at breakneck speed. It's even better because it barely fits![otherwise if F < -2]The thickness of [NameDesc of M][']s [manly-penis] is VERY noticeable as [he of M] slams it in and out of your tight [variable O].[otherwise if F < 0][BigNameDesc of M] ruts you like an animal. Each of [his of M] thrusts reach nice and deep, as if to acclimate your tight [variable O] to the feeling of [manly-penis].[otherwise if F > 4][BigNameDesc of M] pounds your [variable O] mercilessly, but your [variable O] is so stretched it doesn't feel rough at all.[otherwise if F > 2][BigNameDesc of M] fucks you hard and fast. However, your [variable O] is loose enough that it doesn't actually feel rough at all.[otherwise][BigNameDesc of M][']s thrusts come quickly, greedily seeking the inner reaches of your [variable O].[end if]".

To say sexSubmitSqueezeFlav of (M - a ghost) in (O - an orifice):
	let C be a random worn skirted clothing;
	if C is nothing, let C be a random worn crotch covering clothing;
	say "You feel a hand [if C is clothing]slip underneath your [printed name of C] and fondle your [AssDesc][otherwise]smack your [AssDesc][end if] as [NameDesc of M] plows your [variable O], followed shortly by several more, which take turns fondling your body from impossible angles.".

To say sexSubmitEmbarrassFlav of (M - a ghost) in (O - an orifice):
	if the reaction of the player is 0:
		say "[if there is a worn ballgag and the bimbo of the player > 12][BigNameDesc of M] slams in and out of your [variable O]. You feel slightly annoyed that your [random worn ballgag] is muffling your moans.[otherwise if there is a worn ballgag and the bimbo of the player > 7][BigNameDesc of M] slams in and out of your [variable O]. You're glad it isn't attached to any real man with how terribly your [ShortDesc of random worn ballgag] muffles the sound of your moans.[otherwise if the player is gagged][BigNameDesc of M] relentlessly pounds your [variable O]. Your grunts of displeasure are conveniently muffled by the [ShortDesc of random worn ballgag] in your mouth.[otherwise if the relevant sex addiction of M > 12][BigNameDesc of M] gives your [variable O] the hard fucking it deserves. You arch your back and shamelessly moan in pleasure.[otherwise if the relevant sex addiction of M > 7][BigNameDesc of M] gives your [variable O] the hard fucking it deserves. You arch your back and emit an involuntary moan of pleasure.[otherwise][BigNameDesc of M] gives your [variable O] the hard fucking it deserves. You dig your fingernails into the floorboards, growling with displeasure.[end if]";
	otherwise:
		say "[if the relevant sex addiction of M < 7][BigNameDesc of M] gives your [variable O] the hard fucking it deserves. You clench your fists and try to ignore your growing fear and embarrassment.[otherwise if the humiliation of the player < 15000][BigNameDesc of M] fucks your [variable O] with, rough, brutal thrusts. You can almost feel your dignity crumbling, every thrust humiliating you more and more.[otherwise if the relevant sex addiction of M < 10][BigNameDesc of M] plows in and out of your [variable O]. There's something so invigorating about letting it happen![otherwise][BigNameDesc of M] plows in and out of your [variable O]. It's so satisfying to let it happen![end if]".

To say sexSubmitSplitFlav of (M - a ghost) in (O - an orifice):
	if the player is male, say "[if the size of penis < 4 and tg fetish >= 1][BigNameDesc of M] ruts you like an animal. Even disembodied dicks are more manly than you![otherwise if the size of penis < 4 and the player is possessing a penis and the bimbo of the player < 14][BigNameDesc of M] pounds your [asshole] hard and fast. You can't help feeling a little embarrassed by how minuscule your [ShortDesc of penis] is, considering it's actually attached to someone.[otherwise if the size of penis < 4 and the player is possessing a penis][BigNameDesc of M] pounds your [asshole] hard and fast. You can't help feeling proud of how minuscule your [sissy-penis] is by comparison.[otherwise if the bimbo of the player < 3]Your [ShortBallsDesc] jiggle as [NameDesc of M] pistons in and out of your [asshole], as if to remind you how powerless you are against a real dick in action.[otherwise if the bimbo of the player < 5]Shocks of pleasure ripple through your [ShortDesc of penis] as [he of M] pounds your [asshole]. And you thought it was humiliating before...[otherwise if the bimbo of the player < 7][BigNameDesc of M] relentlessly pounds your sensitive prostate, reminding you how humiliating it is to have a [manly-penis] slamming in and out of your ass.[otherwise if the bimbo of the player < 9]Shocks of pleasure ripple through your [ShortDesc of penis] as [NameDesc of M] relentlessly pounds your [asshole]. It's difficult to resist when it feels this good.[otherwise if the bimbo of the player < 10][BigNameDesc of M] relentlessly pounds your sensitive prostate, continuing to remind you who the 'man' is between the two of you.[otherwise if the bimbo of the player < 12]Your [ShortBallsDesc] jiggle as [NameDesc of M] pistons in and out of your [asshole]. You find yourself biting your lower lip, secretly savouring the feeling of helplessness.[otherwise if the bimbo of the player < 14]Your [ShortBallsDesc] jiggle as [NameDesc of M] pistons in and out of your [asshole], as if to remind you how much you LOVE getting fucked.[otherwise]Shocks of pleasure ripple through your [ShortDesc of penis] as [NameDesc of M] pounds your [asshole]. Phew, it sure knows how to show a girl a good time![end if]";
	otherwise say "[if the relevant sex addiction of M < 8][BigNameDesc of M] fucks your [variable O] with all the callousness and vigour of an actual man![otherwise if relevant sex addiction of M < 13][BigNameDesc of M] fucks your [variable O] hard and fast! You pretend you only like it because it's not attached to any man you can see.[otherwise][BigNameDesc of M] fucks your [variable O] with all the roughness and power of an actual man! You're half disappointed you don't have one to thank for all this hard fucking.[end if]".

The ghost vagina insertion rules is a rulebook. The blessings block ghosts rule is listed last in the ghost vagina insertion rules. The monster penetrating vagina rule is listed last in the ghost vagina insertion rules.

To say VaginaPenetrationFlav of (M - a ghost):
	let C be a random worn total protection clothing;
	let P be a random sex toy penetrating vagina;
	say "[BigNameDesc of M] floats behind you, [one of]surprising you[or]once again surprising you[stopping] [if C is clothing] as a very tangible cockhead brushes your clit through your [printed name of C].[otherwise if P is worn]with a very tangible shaft rubbing itself on your inner thighs.[otherwise]with a very tangible tip rubbing your [vagina].[end if][if C is clothing] [one of]Instead of being blocked or delayed by the layer of [clothing-material of C] protecting your hole, it simply passes through![or]It simply passes through the layer of [clothing-material of C] covering your hole.[at random][end if] You [if the openness of vagina < 3]grunt[otherwise if the relevant sex addiction of M < 8]gasp[otherwise]sigh[end if] as it slowly slides its way in[if P is worn], ignoring your [printed name of P] completely as it[otherwise] and[end if] begins to thrust.".

The ghost mouth insertion rules is a rulebook.

This is the ghosts possess gags rule:
	let C be a random worn clothing penetrating face;
	if C is clothing:
		compute current-monster removing C;
		rule succeeds.[only one clothing can penetrate face at a time, so we know nothing is blessed if C is not blessed.]
The ghosts possess gags rule is listed last in the ghost mouth insertion rules. The monster penetrating mouth rule is listed last in the ghost mouth insertion rules.

To compute (M - a ghost) entering mouth:
	now the sex-length of M is 3;
	say "[one of][BigNameDesc of M] moves in closer to your face[or][BigNameDesc of M] floats closer to your face[or][BigNameDesc of M] floats up to your face[at random], throbbing visibly as[one of] a surprisingly[or][stopping] tangible cockhead [if presented-orifice is face][one of]pushes itself into your open mouth[or]slides into your open mouth[or]brushes your lips as it slides into your mouth[or]nudges your tongue as it enters your mouth[at random].[otherwise][one of]prods your pursed lips, which suddenly pop open at its chilling touch.[or]stings your lips with unnatural cold, which forces your lips to obediently fall open.[or]brushes your pursed lips, which sting with unnatural cold as they suddenly pop open.[or]phases through your lips, filling them with unnatural cold as they suddenly open.[at random][end if][if presented-orifice is face][one of]You look down as it slowly begins to thrust[or]It rests in your mouth for a moment before beginning to thrust[or]It feels even more real when it begins to thrust[at random][otherwise if the oral sex addiction of the player < 4]Your scream is abruptly cut off as it slides in and begins to thrust[otherwise if the oral sex addiction of the player < 7]You look down helplessly as it slides in and begins to thrust[otherwise]You look down happily as it slides in and begins to thrust[end if].";
	now M is penetrating face.

To say OralResisting of (M - a ghost):
	say "[one of]Nothing you do comes anywhere close to forcing the invader out of your mouth.[or]You do everything you can to pull away from your floating assailant.[or]No matter how much you struggle, you can't get it away.[or]You struggle, but there's no escaping it![at random]".

To say OralResistingResponse of (M - a ghost):
	say "[one of][BigNameDesc of M] doesn't seem bothered by your struggling and continues thrusting at full force![or][BigNameDesc of M] continues thrusting undeterred, gagging you repeatedly as it slams into the back of your throat.[or][BigNameDesc of M] ignores your struggling completely, continuing to thrust its little heart out.[or][BigNameDesc of M] thrusts relentlessly, ensuring you don't go a moment without tasting every inch of its ghostly shaft.[or][BigNameDesc of M] continues to facefuck you without stopping.[or][BigNameDesc of M] continues thrusting despite your protests![in random order]".

To say OralSubmissionResponse of (M - a ghost):
	let D be the delicateness of the player + the oral sex addiction of the player;
	say "[one of]You stay still as [NameDesc of M] thrusts in and out of your mouth [if D < 8]terrified to resist[otherwise]shivering with excitement[end if].[or]You [if D < 9]fearfully[otherwise if D < 12]hesitantly[otherwise]eagerly[end if] bob your head back and forth, obediently polishing the disembodied cock in your mouth.[or]You make quiet slurping noises as [NameDesc of M] fucks your mouth, [if D < 7]fearful of what it might do if you try to resist[otherwise if the oral sex addiction of the player < 5]disgusted at what you're allowing it to do[otherwise]obediently stroking the underside with your tongue[end if].[or][silentThroat M][BigNameDesc of M] eagerly thrusts in and out of your mouth, more than tangible enough to gag you every time it rams into the back of your throat.[or][silentThroat M][BigNameDesc of M] thrusts vigorously, taking full advantage of your submissive attitude to repeatedly slam into the back of your throat.[at random]";

To say NearingClimaxOral of (M - a ghost):
	say "[one of][BigNameDesc of M] seems to be speeding up![or][BigNameDesc of M] thrusts faster and faster with no regard for your reaction.[or]The space between [NameDesc of M][']s thrusts gets smaller with every passing moment![in random order] It must be close!".

To compute (M - a ghost) attacking (C - a clothing):
	if C is blessed and M is jismbodied ghost:
		say "[BigNameDesc of M] smacks your [printed name of C], leaving a heavy layer of [semen] behind. It seems to lose interest.";
		distract M;
	otherwise if C is blessed:
		say "[BigNameDesc of M] floats behind you, prodding your [chosen-orifice of M] through your [printed name of C]. It recoils immediately and loses interest.";
		distract M;
	otherwise:
		say "[BigNameDesc of M] awkwardly rubs itself on your [printed name of C] before backing off. It doesn't know how to deal with it, please report this bug!".

To compute (M - a ghost) removing (C - a throbbing-tentacle):
	say "[BigNameDesc of M] floats behind you, prodding your [printed name of C]. It seems to wait for a few moments before losing interest.";
	distract M.

To compute (M - a ghost) removing (C - a sex toy):
	say "[BigNameDesc of M] floats behind you, prodding your [printed name of C]. [one of]Undeterred, it phases into your [chosen-orifice of M], causing the toy to wiggle and throb with new-found life.[or]Once again, [NameDesc of M] phases into your [chosen-orifice of M], causing the toy to bulge and throb with unnatural life.[stopping] [if the relevant sex addiction of M < 8]You whimper as it slowly begins to fuck you.[otherwise if the relevant sex addiction of M < 12]Shivers run up your spine as it slowly begins to fuck you.[otherwise]A shiver of anticipation runs up your spine as it begins to fuck you.[end if]";
	now C is in the holding pen;
	now M is carrying C;
	dislodge C;
	now M is penetrating chosen-orifice of M.

To compute (M - a ghost) removing (C - a golden phallus):
	if C is blessed:
		say "[BigNameDesc of M] floats behind you, but seems to back off when it gets near your [printed name of C]. It loses interest.";
		distract M;[normally it would ignore the blessing since this item is cock shaped, but gold has magical properties]
	otherwise:
		say "[BigNameDesc of M] floats behind you, prodding your [printed name of C]. [one of]Undeterred, it phases into your [chosen-orifice of M], causing the toy to wiggle and throb with new-found life.[or]Once again, [NameDesc of M] phases into your [chosen-orifice of M], causing the toy to bulge and throb with unnatural life.[stopping] [if the relevant sex addiction of M < 8]You whimper as it slowly begins to fuck you.[otherwise if the relevant sex addiction of M < 12]Shivers run up your spine as it slowly begins to fuck you.[otherwise]A shiver of anticipation runs up your spine as it begins to fuck you.[end if]";
		now C is in the holding pen;
		now M is carrying C;
		dislodge C;
		now M is penetrating chosen-orifice of M.

To compute (M - a ghost) removing (B - a ballgag):
	if B is blessed and B is not cock pacifier:
		say "[BigNameDesc of M] floats closer to your face, but seems to recoil when it gets near your [printed name of B]. It loses interest.";
		distract M;
	otherwise if B is pacifier:
		say "[BigNameDesc of M] floats closer to your face, throbbing visibly as it nears your [printed name of B]. Your eyes widen as its ephemeral [']body['] disappears into the plastic, causing the [if B is cock pacifier]phallic nub[otherwise]chewable nub[end if] to wiggle and pulse before shooting several strings of warm [semen] directly into your mouth.";
		StomachSemenUp the semen load of M;
		now B is cursed;
		satisfy M;
	otherwise:
		say "[BigNameDesc of M] floats closer to your face, throbbing visibly as it nears your mouth. Your [printed name of B] shimmers briefly before it slowly disappears, leaving behind only a faint outline of its shape. Somehow, your mouth remains wide open, and you [if the oral sex addiction of the player < 4][one of]shudder as [NameDesc of M] slowly pushes in[or]screw your eyes shut as [NameDesc of M] slowly slides in[or]shiver as [NameDesc of M] slides in completely unimpeded[at random][otherwise][one of]lean forward as [NameDesc of M] slowly slides in[or]obediently wait as [NameDesc of M] slides in completely unimpeded[at random][end if] and begins to thrust.";
		now M is carrying B;
		dislodge B;
		now M is penetrating chosen-orifice of M.

Section 3 - Continue and Finish Sex

Definition: a ghost (called M) is able to remove cursed plugs: [Can the monster remove all plugs & gags?]
	decide yes.

The ghost end of sex rules is a rulebook. The end-of-sex-rules of a ghost is usually the ghost end of sex rules.

The reset chosen orifice rule is listed first in the ghost end of sex rules.

To finish possession of (T - a thing) in (O - an orifice):
	unless O is actually occupied or current-monster is unintelligent:
		say "The [T] reappears in your [variable O].";
		now T is worn by the player;
		now T is penetrating O.

This is the ghost facial climax rule:
	if current-monster is penetrating face, compute facial climax of current-monster;
	repeat with G running through ballgags carried by current-monster:
		finish possession of G in face.
The ghost facial climax rule is listed in the ghost end of sex rules.

To compute facial climax of (M - a ghost):
	let R be 0;
	if M is wrapped:
		compute condom success of M in face;
	otherwise if bukkake fetish is 1 and the player is not a blowjob slut and a random number between 1 and 2 is 1:[ghosts have homing jizz]
		say FailedFacialDodge of M;
		cutshow Figure of ghost 1 ectoplasm cutscene for M;
		CumFaceUp the semen load of M;
		unless the reaction of the player is 0, humiliate 200;
	otherwise: [Internal cumshot]
		if the reaction of the player is 0:
			say ResistedOralCreampie of M;[the cumshot rests in your mouth for a second before going down on its own.]
			StomachSemenUp the semen load of M;
			SemenAddictUp 1;
		otherwise: [submitted, deepthroat]
			say DeepthroatCreampie of M;
			StomachSemenUp the semen load of M;
			humiliate 300;
	TimesSubmittedUp M by 1;
	orgasm satisfy M.

To say OralCondomPieFlav of (M - a ghost):
	say "[one of][BigNameDesc of M] shivers as it ejaculates into the condom[or][BigNameDesc of M] throbs powerfully, firing off jet after jet of warm [semen] into the condom.[or][BigNameDesc of M] spasms as it fills the condom with [his of M] load.[or][BigNameDesc of M] shivers as it begins to ejaculate, bulging the condom with [his of M] big load.[or][BigNameDesc of M] buries itself as far into your mouth as it will go, jet after jet of [semen] rushing into the increasingly bloated condom[or][BigNameDesc of M] forces [himself of M] down your throat, twitching as [he of M] thoroughly fills the condom fills with [his of M] load.[or][BigNameDesc of M] forces itself in all the way to the hilt. You can do nothing but wait helplessly as [he of M] thoroughly empties [his of M] load into the condom.[or][BigNameDesc of M] jizzes, throbbing as it fills the condom with [his of M] load.[in random order]".

To say FailedFacialDodge of (M - a ghost):
	say "[one of]Ghostly hands materialise to hold you still as [NameDesc of M] ejaculates all over your face.[or]Your face is covered in a thick load of [semen] before you can even think about turning your face away.[or][BigNameDesc of M] pops out of your mouth and immediately goes over the edge. You take a full ejaculation all over your face.[or][BigNameDesc of M] pops out of your mouth as it goes over the edge, flexing as it shoots several long ropes of [semen] at you in rapid succession. [if the reaction of the player is 0]You react fast enough to duck out of the way, but the individual strands somehow curve in mid-air, and you still take a full splattering to the face.[otherwise]You close your eyes, obediently taking the full load all over your face.[end if][or][BigNameDesc of M] pulls out and immediately begins to unload all over your face. [if the reaction of the player is 0]You react fast enough to dodge most of it, but just when you think you're safe, it somehow loops around your head and hits you from the other side[otherwise]You barely have time to shut your eyes as the [semen] hits your face[end if][or][if the semen addiction of the player < 8]Knowing what's coming, you try to get out of the way as soon as [NameDesc of M] pulls out. Unfortunately, you just aren't fast enough, and you get a full facial anyway.[otherwise if the semen addiction of the player < 12]You know what's coming when [NameDesc of M] pulls out, but you can't find the will to struggle and sit obediently for a hot, sticky facial.[otherwise]You immediately know what's coming when [NameDesc of M] pulls out, and happily close your eyes for a hot, sticky facial.[end if][or][BigNameDesc of M] pops out of your mouth and immediately jizzes all over your face[or][BigNameDesc of M] withdraws from your mouth and immediately gives you a warm, messy facial.[in random order]".

To say ResistedOralCreampie of (M - a ghost):
	say "[one of][BigNameDesc of M] explodes into your mouth, filling it with the [semen-adjective] taste of [semen]. It rests there for a few seconds before slowly sliding down your throat.[or]A pair of ghostly hands materialise on either side of [NameDesc of M] and hold you down as it ejaculates into your mouth. [if the semen taste addiction of the player > 14]No matter how much you want to swallow it, it stays there for a few moments, ensuring you get a deep, thorough taste before sliding down your throat.[otherwise if the semen taste addiction of the player > 9]It rests there for a few moments, as if spreading its taste around in your mouth before it slides down your throat.[otherwise]No matter how much you want to spit it out, it clings to the bottom of your mouth, forcing you to endure its taste until it's ready to slide down your throat.[end if][or][BigNameDesc of M] tenses, shooting several ropes of thick, warm [semen] directly into your mouth. It seems to have a mind of its own, settling in the bottom of your mouth before slowly creeping down your throat.[or]Ghostly hands appear to hold you down as [semen] spurts into your mouth, which somehow manages to swish it [semen-adjective] taste around in your mouth before jumping down your throat.[or][BigNameDesc of M] shoots long ropes of [semen] into your mouth, which hit your tongue with pinpoint accuracy. [if the semen taste addiction of the player < 8]You crinkle your nose at the taste as the strangely lively fluid slides down your throat[otherwise if the semen taste addiction of the player < 13]You pause for a moment to mull over the [semen-adjective] taste before swallowing the weirdly lively fluid.[otherwise]You eagerly swish it around in your mouth, spreading the [semen-adjective] taste around as much as you can before swallowing.[end if][in random order]".

To say DeepthroatCreampie of (M - a ghost):
	say "[one of][or][BigNameDesc of M] throbs powerfully, firing off load after load of warm [semen] straight down your throat.[or][BigNameDesc of M] shoots long ropes of [semen] directly into your mouth, which arc down your throat with perfect accuracy.[or][BigNameDesc of M] pushes itself fully into your mouth, throbbing subtly as it paints the back of your throat with wave after wave of hot, stick [semen].[or]A pair of ghostly hands appear to hold you down as [NameDesc of M] ejaculates, forcibly tilting your head so every last drop of [semen] sails down your throat.[or][if the semen taste addiction of the player < 8]You do your best to keep your tongue flat as [NameDesc of M] shoots down your throat, making sure you don't have to taste any [semen] on its way down.[otherwise if the semen taste addiction of the player < 12]You gently stroke the underside of [NameDesc of M] as [semen] spurts down your throat, knowing it's better if you avoid tasting it at all[otherwise]You skilfully rub the underside of [NameDesc of M] with your tongue as [semen] shoots down your throat, determined to coax out the biggest load you can.[end if][in random order]".

This is the ghost anal climax rule:
	if current-monster is penetrating asshole, compute anal climax of current-monster;
	repeat with G running through sex toys carried by current-monster:
		finish possession of G in asshole.
The ghost anal climax rule is listed in the ghost end of sex rules.

To finish possession of (T - a sex toy) in (O - an orifice):
	unless O is actually occupied or current-monster is unintelligent:
		say "[BigNameDesc of current-monster] leaves the [T] behind in your [variable O], plugging all the [semen] inside of you.";
		now T is worn by the player;
		now T is cursed;
		now T is penetrating O.

This is the ghost vaginal climax rule:
	if current-monster is penetrating vagina, compute vaginal climax of current-monster;
	repeat with G running through sex toys carried by current-monster:
		finish possession of G in vagina.
The ghost vaginal climax rule is listed in the ghost end of sex rules.

To compute unique climax of (M - a ghost) in (F - a fuckhole):
	say CreampieFlav of M in F;
	get creampie image of M in F;
	compute M finishing in F.

To say CondomPieFlav of (M - a ghost) in (F - a fuckhole):
	say "[one of]The room fills with a ghastly glow as [NameDesc of M] slams itself home, eagerly flooding the condom with its seed. After several [if the semen addiction of the player < 7]excruciating[otherwise if the semen addiction of the player < 15]intense[otherwise]wonderful[end if] moments of stillness, broken only by the subtle twitching between loads, [NameDesc of M] pulls out.[or][BigNameDesc of M] jizzes into the condom, continuing to thrust as it slowly fills with its unnervingly cold [semen]. You look over your shoulder, [if the semen addiction of the player < 7]shuddering[otherwise]quivering[end if][if the semen addiction of the player > 14] with excitement[end if] as it pulls out.[or][BigNameDesc of M] throbs as it pumps load after load of thick [semen] into the condom, allowing the ghastly cold to soak you through to the bone before pulling out.[or][BigNameDesc of M] continues to thrust as its ghastly cold [semen] slowly fills the condom ensuring the sensation will be thoroughly embedded into your memory for a long, long time.[at random][line break]".

To say CondomPinFlav of (M - a ghost) on (C - a clothing):
	say "A ghostly hand materialises to peel the [one of]wobbling[or]semen-swollen[or]newly used[or]slimy[at random] condom off [his of M] shaft and presses it to your [C].";
	if M is awake and M is intelligent and M is interested, say "Before you can stop [him of M], [NameDesc of M] presses the [one of]newly created and now used [or]strongly-smelling [or]wobbling, semen-swollen [or][or][cycling]condom to your [C]. ";
	otherwise say "Completely of its own accord, the used condom suddenly zips from [NameDesc of M] and flies through the air until it hits your [C]. ".

To say CreampieFlav of (M - a ghost) in (F - a fuckhole):
	say "[one of]The room fills with a ghastly glow as [NameDesc of M] slams itself home, eagerly flooding your [variable F] with its seed. After several [if the semen addiction of the player < 7]excruciating[otherwise if the semen addiction of the player < 15]intense[otherwise]wonderful[end if] moments of stillness, broken only by the subtle twitching between loads, [NameDesc of M] pulls out and leaves you to [if the semen addiction of the player < 10]crawl away in shame[otherwise]take in what just happened[end if].[or][BigNameDesc of M] jizzes directly into your [variable F], continuing to thrust until your deepest, most intimate recesses have been acquainted with its ghastly [semen]. You look over your shoulder, [if the semen addiction of the player < 7]shuddering[otherwise]quivering[end if][if the semen addiction of the player > 14] with excitement[end if] as it pulls out and floats away.[or][BigNameDesc of M] throbs as it pumps load after load of thick [semen] directly into your [variable F], pushing it nice and deep with a few last thrusts before pulling out and leaving you alone.[or][BigNameDesc of M] continues to thrust as its [semen] flows inside of you, as if to ensure you won't forget the sensation until long after it pulls out and leaves you alone[if semen addiction of the player < 7], no matter how much you want to[otherwise if the semen addiction of the player < 11], although you aren't sure how you could[otherwise], which is exactly the way you like it[end if].[at random][line break]".

Section 4 - Attack

To compute ectoplasm to (M - a ghost):
	compute normal ectoplasm to M.

To compute normal ectoplasm to (M - a ghost):
	if bukkake fetish is 1, now the slime-puddle of the location of M is a random number between 5 and 10;
	otherwise now the slime-puddle of the location of M is 3;
	if M is jismbodied ghost, increase the slime-puddle of the location of M by 10;
	if M is in the location of the player:
		if the player is upright:
			say "[if bukkake fetish is 1][BigNameDesc of M] ejaculates violently, knocking you to your knees with a torrent of bright grey, glowing slime[otherwise][BigNameDesc of M] releases a violent pulse of energy, knocking you to your knees[end if].";
			try kneeling;
		otherwise:
			say "[if bukkake fetish is 1][BigNameDesc of M] ejaculates violently, dousing you in a thick layer of bright grey, glowing slime.[otherwise][BigNameDesc of M] releases a violent pulse of energy, causing everything in the vicinity to vibrate with powerful magic.[end if]";
			say "[if bukkake fetish is 1]The thick slime on the floor instantly adheres[otherwise]The glowing surface of the floor seems to glue itself[end if] to your skin!";
			increase the stickiness of the player by a random number between 2 and 4; [How many turns the player is trapped before they can move]
		if M is jismbodied ghost or bukkake fetish is 0, cutshow Figure of ghost 2 ectoplasm cutscene for M;
		otherwise cutshow Figure of ghost 1 ectoplasm cutscene for M;
	otherwise:
		if M is nearby, say "[if bukkake fetish is 1]You see the [location of M] being doused in glowing [semen] by [NameDesc of M][otherwise]The [location of M] shakes with a violent pulse of energy from [NameDesc of M][end if]. A narrow escape!";
		otherwise say "[if bukkake fetish is 1]You hear a sound similar to a fire hydrant being smashed open somewhere else in the mansion[otherwise]You hear a loud crash somewhere else in the mansion[end if].";
	decrease the bank of M by 100;
	now the wind-up of M is 0.

The ghost priority attack rules is a rulebook. The priority attack rules of a ghost is usually the ghost priority attack rules.

This is the ghost winding rule: [Ghosts should wind up if they have a full bank and haven't been given an "invitation" to fuck you]
	if the player is not immobile and presented-orifice is nothing and the bank of current-monster >= 100:
		let W be 0;
		repeat with M running through ghosts in the location of the player:
			if the wind-up of M is 1, now W is 1;
		if W is 0:[Not a huge deal if the ghosts have a huge, super jizzy party, but it makes more sense that they do it in succession. No winding if a nearby ghost has already wound up. Otherwise, fair game.]
			say "[if bukkake fetish is 1][BigNameDesc of current-monster] begins to glow brighter and brighter grey, a thin strand of slimy 'drool' leaking out of the tip as its veins bulge with sudden definition.[otherwise if diaper quest is 1][BigNameDesc of current-monster] begins to glow brighter and brighter orange, your surroundings creaking and shaking as the pale light fills the room.[otherwise][BigNameDesc of current-monster] begins to glow brighter and brighter grey, your surroundings creaking and shaking as the pale light fills the room.[end if]";
			now the wind-up of current-monster is 1;[TODO: one of's]
			repeat with N running through intelligent monsters in the location of current-monster:
				compute ghost fleeing of N;
			rule succeeds.
The ghost winding rule is listed last in the ghost priority attack rules.

To compute tripping attack of (M - a ghost):
	let C be a random worn displacable trousers;
	unless C is clothing, let C be a random worn knickers;
	if C is clothing:
		say "A pair of ghostly hands materialise next to [NameDesc of M] and dive for your [printed name of C]!";
	otherwise:
		say "A pair of ghostly hands materialise next to [NameDesc of M] and rush toward you!";
	let D be the tripping roll of M;
	if C is trousers:
		increase D by 5;
		if debuginfo > 0, say "[input-style][ShortDesc of C] gives ghost an extra tripping bonus of +5.[roman type][line break]";
	if C is knickers:
		increase D by 2;
		if debuginfo > 0, say "[input-style][ShortDesc of C] gives ghost an extra tripping bonus of +2.[roman type][line break]";
	if C is trousers, now C is crotch-displaced;
	if D >= the dexterity of the player:
		say MonsterTrippedFlav of M;
		try kneeling;
	otherwise:
		say MonsterFailedTripFlav of M.

To say MonsterTrippedFlav of (M - a ghost):
	let C be a random worn displacable trousers;
	unless C is clothing, let C be a random worn knickers;
	if C is trousers:
		say "They grab the waistband of your [ShortDesc of C] and yank straight down, causing you to suddenly lose your balance and fall to the ground!";
	otherwise if C is clothing:
		say "They grab your [ShortDesc of C] and yank straight down, pulling them off you and sweeping you off your feet in one fluid motion!";
		now C is in the location of the player;
	otherwise:
		say "They grab handfuls of your hair and yank straight down! You flail wildly [if the player is ankle bound]but you can't move your legs far enough apart to maintain your balance. You[otherwise if the largeness of hair > 7]but your long hair gives [NameDesc of M] too much extra leverage. You[otherwise]and[end if] fall to the ground!".

To say MonsterFailedTripFlav of (M - a ghost):
	let C be a random worn displacable trousers;
	unless C is clothing, let C be a random worn knickers;
	if C is trousers:
		say "They grab the waistband of your [ShortDesc of C] and yank straight down, but you manage to keep your balance.";
	otherwise if C is clothing:
		say "They grab your [ShortDesc of C] and try to pull them down, but you manage to keep them up.";
	otherwise:
		say "You manage to get out of their way before they can grab you.".

To decide which body part is the painful-part of (M - a ghost):[Only attacks places it could conceivably fuck]
	let B be a random body part;
	if B is belly, now B is thighs;
	if B is a fuckhole or B is penis or B is scrotum, now B is hips;
	if B is hair, now B is face;
	decide on B.

To say StrikingFlav of (M - a ghost) on (B - a body part):
	say "[BigNameDesc of M] slams [if B is hips]your ass[otherwise if B is face]you in the face[otherwise]itself into your [variable B][end if]!";

To say StrikingSuccessFlav of (M - a ghost) on (B - a body part):
	say StrikingFlav of M on B;
	say "Ouch! That one hurt.".

To say StrikingFailureFlav of (M - a ghost) on (B - a body part):
	say StrikingFlav of M on B;
	say "That slap wasn't too bad.".

To compute (C - a clothing) damaging (M - a ghost):
	if C is spikey:[covers both spike bra and striped top]
		say "The spikes of your [printed name of C] leave visible, pulsing gaps in [NameDesc of M]'s form for several seconds after its attack!";
		decrease the health of M by 2;
		if C is blessed, decrease the health of M by 2;
	otherwise if C is blessed:
		say "[BigNameDesc of M] seems to blur around the edges after its attack. It must have been hurt by the blessing on your [ShortDesc of C]!";
		decrease the health of M by 2.

To compute striking success effect of (M - jismbodied ghost) on (B - a body part):
	if bukkake fetish is 1:
		say "[BigNameDesc of M] leaves a glob of [semen] behind on your [B]";
		AnnouncedSquirt semen on B by 1.

Part 2 - DQ

ghost-diapering is a diaper punishment. The priority of ghost-diapering is 5.
Definition: ghost-diapering (called P) is appropriate:
	if current-monster is not ghost or current-monster is ghostly tentacle, decide no;
	if ghost-diaper is on-stage, decide no;
	if the DQBulk of the player > the DQBulk of ghost-diaper, decide no; [can't stack on top of something bigger]
	if there is a worn diaper, decide yes;
	if the player is not pussy protected and current-monster is jismbodied ghost, decide yes;
	decide no.

To compute punishment of (P - ghost-diapering):
	let M be current-monster;
	let D be a random worn diaper;
	if the player is not pussy protected and M is jismbodied ghost, say "The little ghost-ball shoots down and smashes into your crotch, turning into a big cloud as it crashes into your body, coating your loins in the white powder. ";
	if D is diaper, diaperAdd ghost-diaper;
	otherwise summon ghost-diaper;
	say "[BigNameDesc of M] quickly swoops down and turns [his of M] back on you, and then latches onto your loins, wrapping itself around your waist and buttoning itself shut. You're now wearing [him of M][if D is diaper] over your [ShortDesc of D][end if]!";
	destroy M.

To compute SelectionWaiting of (M - a ghost):
	if diaper quest is 1 or the selection-frustration of M > a random number between 4 and 10, compute SelectionFrustrated of M;
	otherwise increase the selection-frustration of M by 1. [The monster waits its turn.]

To say SelectionFrustrated of (M - a ghost):
	say "[BigNameDesc of M] seems to lose interest.".

Part 3 - Damage

Definition: a ghost (called M) is damageable:
	if M is unphased, decide yes;
	if the wind-up of M > 0, decide yes;
	if attack-type is 1:
		let S be a random worn slap ready equippable;
		if S is magic themed equippable or S is purity equippable or S is demonic equippable, decide yes;
	if attack-type is 2 and there is a worn blessed trousers or there is a worn blessed stockings or (there is a worn blessed suspenders and there is worn stockings), decide yes;
	if attack-type is 3 and there is a worn blessed heels, decide yes;
	if attack-type > 3, decide yes;
	if the class of the player is cultist or the class of the player is priestess, decide yes;
	decide no.

To say damage-flavour of (N - a number) on (M - a ghost):
	if N is 0 and M is not damageable:
		if attack-type is 1:
			say "[one of]Your [if there is a worn equippable][ShortDesc of a random worn equippable][otherwise]hand[end if] passes right through it![or]Your attack passes right through it![or]Attacking it like this is useless![cycling]";
		otherwise if attack-type > 1:
			say "[one of]Your leg passes right through it![or]Your attack passes right through it![or]You won't get anywhere like this![cycling]";
	otherwise if N is 0:
		say "That didn't feel like it did anything at all.";
	otherwise if N is 1:
		say "That felt extremely weak, you doubt it hurt much at all.";
	otherwise if N is 2:
		say "That felt quite weak, but hopefully it hurt a bit.";
	otherwise if N < 5:
		say "[BigNameDesc of M] blurs at the edges from your attack. A respectable hit!";
	otherwise if N < 7:
		say "[BigNameDesc of M] flinches from the hit, blurring at the edges. A [if critical is 1][bold type]critical hit[roman type][otherwise]strong hit[end if]!";
	otherwise if N < 9:
		say "Wow, that one sent [NameDesc of M] back a couple feet. A super strong [if critical is 1][bold type]critical hit[roman type][otherwise]hit[end if]!";
	otherwise:
		say "POW! Your attack is accompanied by a loud sound and sends [NameDesc of M] flying across the room! An almost impossibly strong [if critical is 1][bold type]critical hit[roman type][otherwise]hit[end if]!".

To compute damage reaction of (M - a ghost):
	if M is uninterested:
		if M is jismbodied ghost, say "The light cast by [NameDesc of M] seems to change, the shape of its penis-like body slowly shifting from 'flaccid' to 'very big' and 'very, very erect'.";
		otherwise say "The light emanating from [NameDesc of M] flickers, and it focuses its attention purely on you!";
		now M is interested;
		anger M;
	otherwise if the health of M is the maxhealth of M:
		let U be 0;
		if M is unfriendly or M is ghostly tentacle or M is jismbodied ghost, now U is 1;
		if U is 1, say "[one of]Grey fluid beads at[or]Grey fluid continues dripping from[stopping] [his of M] [if U is 1]tip[otherwise]crotch[end if]. It seems like all you've succeeded at is turning it on!";
		otherwise say "[one of]Grey fluid beads[or]Grey fluid continues dripping from[stopping] between [his of M] legs as a very long and very erect [DickDesc of M] slowly grows out from [his of M] crotch. It seems like all you've succeeded at is turning it on!";
		increase the bank of M by 10;
		anger M;
	otherwise if the wind-up of M > 0 and M is not jismbodied ghost:
		if M is ghostly tentacle:
			say "[bold type][BigNameDesc of M] releases you instantly, shifting back out of the physical world as it recoils from your attack![roman type]";
			now the wind-up of M is 0;
			now M is not wrangling arms;
			now M is phased;
		otherwise if a random number between 1 and 2 is 1:
			say "[BigNameDesc of M] flickers after being sent back several feet. Looks like you interrupted it!";
			now the wind-up of M is 0;
		otherwise:
			say "[BigNameDesc of M] seems completely undeterred by your attack!";
	otherwise:
		if the health of M > the maxhealth of M / 2, say "It seems completely undeterred by your attack!";
		otherwise say "Its glow is getting dimmer.".

To say BanishFleeFlav of (M - a ghost):
	say "You hear a terrible shriek and [NameDesc of M] disappears behind a curtain of grey flames.".

To say BanishFleeFlav of (M - jismbodied ghost):
	say "You hear a terrible shriek as [NameDesc of M] abruptly drops to the ground.".

To loot (M - a ghost):
	let D be a random off-stage ectoplasm;
	if D is ectoplasm:
		now D is in the location of the player;
		say "You notice a grey substance congealing on the floor below where it was floating.";
		compute autotaking D;
	increase creepiness by the difficulty of M * 2.

To loot (M - jismbodied ghost):
	let X be ghost-strapon;
	if X is off-stage and a random number between 1 and 3 is 1:
		now X is in the location of the player;
		say "A pair of black crotchless panties materialise on top of it.";
		compute autotaking X;
	otherwise if X is worn and the strap-length of X > 2:
		decrease the strap-length of X by 2;
		say "Your [ShortDesc of X] seems to weaken[if the strap-length of X > the size of penis], and you feel a wave of relief as it shrinks into a [PenisFlavour of X][end if].".

To compute unique automatic banishment of (M - a ghost):
	now creepiness is 0. [Having defeated a ghost shouldn't cause a new one to appear immediately]

Part 4 - Ghostly Tentacle

ghostly tentacle is a ghost. Understand "phantom", "ghost", "diapered" as ghostly tentacle. The bank of ghostly tentacle is usually 3.

To say ShortDesc of (M - ghostly tentacle):
	say MediumDesc of M.

To say MediumDesc of (M - ghostly tentacle):
	say "[if diaper quest is 1]diapered ghost[otherwise]phantom tentacle[end if]".

Definition: ghostly tentacle is father material: decide no.

To set up (M - ghostly tentacle):
	reset M;
	now the monstersetup of M is 1;
	now the raw difficulty of M is the starting difficulty of M + 3;
	now the health of M is the maxhealth of M;
	if diaper quest is 1:
		now M is not neuter;
		now M is female;
	now M is phased.

Definition: ghostly tentacle is blocker: decide yes.
Definition: ghostly tentacle is summoningRelevant: decide yes. [Does count towards the number of monsters in the region for the purposes of summoning portals.]
Definition: ghostly tentacle is mansion dwelling: decide yes.

To decide which number is the girth of (M - ghostly tentacle):
	let G be 4;
	if the location of the player is mansion23, increase G by 1;
	if the class of the player is schoolgirl, increase G by 1;
	decide on G.

To compute perception of (M - ghostly tentacle):
	now M is interested;
	let A be 0;
	repeat with N running through monsters in the location of the player:
		if the favour of N <= the aggro limit of N, now A is 1;
	if M is unfriendly or the bimbo of the player >= 15 or A is 1:
		say "[BigNameDesc of M] slowly unfurls to its full, six foot length, revealing an underside full of giant, octopus-like suckers.";
		anger M;
		say GhostTip;
	otherwise:
		say "The light cast by [NameDesc of M] seems to change, and it begins to follow you around.".

To compute DQ perception of (M - ghostly tentacle):
	now M is interested;
	if M is unfriendly:
		say "[BigNameDesc of M] giggles, the unearthly sound echoing around the walls. You feel a little colder, and [he of M] stares daggers into your eyes as [he of M] descends towards you! Uh-oh.";
		anger M;
		say GhostTip;
	otherwise:
		say "The light cast by [NameDesc of M] seems to change, and [he of M] begins to follow you around.".

Section 1 - Ectoplasm

To compute ectoplasm to (M - ghostly tentacle):
	if diaper quest is 1:
		compute normal ectoplasm to M;
	otherwise if the player is getting unlucky:
		set up deep one;
		now deep one is in mansion23;
		drag to mansion23 by M;
		say GotUnluckyFlav;
		now M is not wrangling arms;[Once it drops you off, the tentacle lets go.]
		now the wind-up of M is 0;
		now deep one is interested;
		now deep one is unleashed;
		now the stance of the player is 1.

To say DragFlav of (M - a ghost) to (R - a room):
	say "A swirling portal opens up as [NameDesc of M] drags you toward the ceiling, swallowing you whole!".

To say DragArrival of (M - a ghost) to (R - a room):
	say "The portal spits you out in the [R], where [NameDesc of deep one] is there waiting for you, sporting a massive erection![if the player is upright][line break][bold type]You are now on your knees.[roman type][line break][end if]".

This is the deep one express rule:
	if diaper quest is 0 and current-monster is ghostly tentacle and player is not immobile and the bank of current-monster > 15:
		let M be current-monster;
		now the wind-up of M is 1;
		now the bank of M is 0;
		say "[bold type]The air seems to rumble as [NameDesc of M] shifts fully into the corporeal world. It seizes you by the wrist![roman type]";
		now M is wrangling arms;
		now M is unphased;
		rule succeeds.
The deep one express rule is listed first in the ghost priority attack rules.

Check kneeing ghostly tentacle:
	if the noun is wrangling a body part, say "It has you by the wrist! You can't reach it with your leg!" instead.
Check kicking ghostly tentacle:
	if the noun is wrangling a body part, say "It has you by the wrist! You can't reach it with your leg!" instead.

Section - DQ

ghostly-diaper-use is a diaper punishment. The priority of ghostly-diaper-use is 5.
Definition: ghostly-diaper-use (called P) is appropriate:
	if current-monster is not ghostly tentacle, decide no;
	if there is worn fluid vulnerable knickers, decide yes;
	decide no.

To compute punishment of (P - ghostly-diaper-use):
	let M be current-monster;
	let K be a random worn knickers;
	say "[BigNameDesc of M] giggles in an extremely high-pitched voice and phases through you. But [he of M] doesn't come out the other side?! You feel a weird chill but nothing more as [NameDesc of M] inhabits the same space as you. And then... [he of M] starts urinating?! [big his of M] [urine] doesn't go into [his of M] ghostly diaper but becomes completely real!";
	PissSoak 50 on K;
	say "[variable custom style]Oh come on![roman type][line break]";
	satisfy M.

ghost-using is a diaper punishment. The priority of ghost-using is 5.
Definition: ghost-using (called P) is appropriate:
	if current-monster is not ghostly tentacle, decide no;
	if there is worn knickers, decide yes;
	decide no.

To compute punishment of (P - ghost-using):
	let M be current-monster;
	let D be a random worn diaper;
	if D is diaper:
		say "[BigNameDesc of M] floats down to you until [he of M] is occupying the same space as you. All you can feel is a freezing coldness. Moments later you hear an ethereal [second custom style]sigh[roman type] and then what sounds like a [if diaper messing >= 3]distant farting[otherwise]faint tinkling[end if]. [one of]Suddenly,[or]Once again[stopping] from the warmth below you, you can tell that [NameDesc of M] is using your diaper![line break][variable custom style][if the diaper addiction of the player < 8]That's fucking gross![otherwise if the diaper addiction of the player < 13]That's kind of rude...[otherwise]Haha, that feels funny![end if][roman type][line break]";
		UrineSoakUp D by 9;
		if diaper messing >= 3:
			say "You squirm as the foreign mush squishes itself against your butt.";
			MessUp D by 7;
			increase the foreign-mess of D by 7;
	otherwise:
		say "[BigNameDesc of M] floats down to you until [his of M] is occupying the same space as you. All you can feel is a freezing coldness. Moments later you hear an ethereal [second custom style]sigh[roman type] and then what sounds like a [if diaper messing >= 3]distant farting[otherwise]faint tinkling[end if]. [one of]Suddenly,[or]Once again[stopping] you can feel pressure building inside of you. [BigNameDesc of M] is somehow using you as [his of M] own personal toilet, filling your bladder with [his of M] pee[if diaper messing >= 3] and your bowels with [his of M] poop[end if]![line break][variable custom style][if the diaper addiction of the player < 9]What the fuck, get out of me! This is so gross and weird!!![otherwise if the diaper addiction of the player < 15]Hnngh... Oh gosh this feels really uncomfortable, please stop![otherwise]So I guess I'm the diaper now! That's what I get for not wearing nappies like a good [boy of the player], haha![end if][roman type][line break]";
		DelicateUp 1;
		increase the bladder of the player by 9;
		if diaper messing >= 3, increase rectum by 7;
	satisfy M.


Definition: ghostly tentacle is willing to donate diapers:
	if the number of worn knickers is 0, decide yes;
	decide no.

To compute diaper change of (M - ghostly tentacle):
	say "[BigNameDesc of M] giggles in an extremely high-pitched voice and phases through you. But [he of M] doesn't come out the other side?! You feel a weird chill but nothing more as [NameDesc of M] inhabits the same space as you. And then... you feel part of [him of M] become corporeal around your waist. [big he of M] sails away, but now you have a diaper where before you had nothing!";
	let D be a random eligible diaper;
	summon D cursed with quest;
	bore M.

Section 2 - Tripping

To compute tripping attack of (M - ghostly tentacle):
	let C be a random worn displacable trousers;
	unless C is clothing, now C is a random pussy covering knickers;
	if C is clothing:
		say "[BigNameDesc of M] grabs the waistband of your [ShortDesc of C]!";
	otherwise:
		say "[BigNameDesc of M] rears back and immediately rushes toward you!";
	let D be the tripping roll of M;
	if C is trousers:
		increase D by 4;
		if debuginfo > 0, say "[input-style][ShortDesc of C] gives ghost an extra tripping bonus of +4.[roman type][line break]";
	if C is knickers:
		increase D by the armour of C;
		if debuginfo > 0, say "[input-style][ShortDesc of C] gives ghost an extra tripping bonus of +[the armour of C].[roman type][line break]";
	if C is trousers, now C is crotch-displaced;
	if D >= the dexterity of the player:
		say "[MonsterTrippedFlav of M]";
		unless C is knickers, try kneeling;
	otherwise:
		say "[MonsterFailedTripFlav of M]".

To say MonsterTrippedFlav of (M - ghostly tentacle):
	let C be a random worn displacable trousers;
	unless C is clothing, let C be a random worn knickers;
	if C is trousers:
		say "[big he of M] yanks straight down, causing you to lose your balance and fall to the ground!";
	otherwise if C is clothing:
		say "[big he of M] tears them clean off!";
		destroy C;
	otherwise:
		say "[big he of M] seizes your ankle and rips you off your feet!".

To say MonsterFailedTripFlav of (M - ghostly tentacle):
	let C be a random worn displacable trousers;
	unless C is clothing, let C be a random worn knickers;
	if C is trousers:
		say "[big he of M] yanks straight down, almost causing you to lose your balance as [he of M] exposes your [if there is a worn knickers][printed name of a random worn knickers][otherwise][genitals][end if]";
	otherwise if C is clothing:
		say "[big he of M] pulls hard until [he of M] loses [his of M] grip, weakening the fabric!";
	otherwise:
		say "You manage to get out of the way before [he of M] can grab you!".

Ghost ends here.
