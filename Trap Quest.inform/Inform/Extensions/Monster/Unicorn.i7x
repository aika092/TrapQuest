Unicorn by Monster begins here.

Unicorn is a monster. Unicorn is intelligent. Unicorn is male. Understand "unicorn monster" as unicorn.[so he can be purloined] The text-shortcut of unicorn is "uni".

To decide which number is the girth of (M - a unicorn):
	decide on 2.

To decide which number is the base semen load of (M - unicorn):
	decide on 4.

To say LongDickDesc of (M - unicorn):
	if full-lady fetish is 1, say "short strap-on";
	otherwise say "short [manly-penis]".

Definition: A unicorn is willing to urinate if mythical creature fetish is 1.

[Definition: unicorn is willing to masturbate: decide yes.]

To say speech style of (M - unicorn):
	say second custom style.

Definition: a unicorn is father material: decide no.
Definition: a unicorn is wenchy: decide yes.
Definition: a unicorn is human: decide yes.

Definition: A unicorn is woods dwelling: decide yes.

To say ShortDesc of (M - unicorn):
	say "unicorn".

To say MediumDesc of (M - unicorn):
	say "unicorn".

To say MonsterDesc of (M - unicorn):
	say "An androgynous woman (or maybe a man?) with blonde hair, pointy ears, and an ivory horn poking out of [his of M] forehead. [big he of M] is wearing an extravagant wedding dress.".

Figure of happy unicorn is the file "NPCs/Forest/unicorn1.jpg".
Figure of angry unicorn is the file "NPCs/Forest/unicorn2.jpg".

To decide which figure-name is the monster-image of (M - unicorn):
	if M is friendly, decide on figure of happy unicorn;
	decide on figure of angry unicorn.

To set up (M - unicorn):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 10;
	now the health of M is the maxhealth of M.

This is the spawn potential unicorn rule:
	if a random number between 1 and 2 is 1:
		summon unicorn in the woods.
The spawn potential unicorn rule is listed in the setting up woods monsters rules.

To compute perception of (M - unicorn):
	now M is interested;
	let X be demon lord;
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed]![otherwise].[end if]";
	if there is a worn xavier's cunt tattoo or X is mating:
		say "[big he of M] snarls.[line break][speech style of M]'[one of]The demon lord is MINE. You can't have [him of X]!'[or]You think you can compete with me, but you can't. The demon lord wants only ME. ME!'[or]You[']ll regret you ever looked at the demon lord.'[at random]";
		anger M;
	otherwise if the class of the player is princess:
		say "[big he of M] snarls.[line break][speech style of M]'[one of]Get ready to pay.'[or]Home wrecking BITCH!'[or]Time for me to finally get my REVENGE.'[at random]";
		anger M;
	otherwise if penis is lewdly exposed or vagina is lewdly exposed:
		let B be breasts;
		if penis is lewdly exposed and the player is male, now B is penis;
		if vagina is lewdly exposed and the player is female, now B is vagina;
		say "[big he of M] glances at your exposed [B] and turns the other way.[line break][speech style of M]'[one of]I won't associate with someone like you.'[or]I am not interested in people like you.'[or]Don't worry, I'll leave first.'[at random][roman type][line break]";
		distract M;
		increase the scared of M by 10;
	otherwise:
		compute appearance assessment of M;
		if M is objectifying the player, compute sudden objectification of M.

To compute appearance assessment of (M - unicorn):
	if the class of the player is succubus or the class of the player is hotel employment:
		say "[Big he of M] frowns. [line break][speech style of M]'You look horrid. I thought you should know.'[roman type][line break]";
		FavourDown M by 2;
	otherwise if breasts is lewdly exposed:
		say "[Big his of M] eyes go directly to your chest, and linger there as a flush spreads over [his of M] cheeks. [line break][speech style of M]'[one of]T-They look so soft...'[or]A-are those real?'[at random][roman type][line break]";
		FavourDown M;
	otherwise if the class of the player is cowgirl or (the class of the player is catgirl and the player is a bit horny) or the number of glazed body parts > 0:
		say "[BigNameDesc of M][']s nose twitches, and a visible flush spreads over [his of M] face.[line break][speech style of M]'[one of]'U-uhm... G-go take a shower!'[or]I-I hate how you smell! T-take a shower!'[or]Y-your scent is a-awful. Y-yes. Take a shower.'[at random]";
		FavourDown M;
	otherwise:
		say "[Big his of M] expression remains mostly neutral, except for a small smile as [he of M] nods toward you.".

To say SatisfiedFlav of (M - unicorn):
	say "[BigNameDesc of M] looks really satisfied and loses interest.".

Definition: unicorn is presenting as male:
	if lady fetish is 2, decide yes;
	decide no.

 To say ChestDesc of (M - unicorn):
	say "chest".

To say SummoningFlav of (M - unicorn):
	if M is in the location of the player, say "You hear a shrieking moan come from inside the statue, and a moment later, an androgynous looking [man of M] drops out of the stony opening, rubbing [his of M] backside.";
	otherwise say "You hear a thump somewhere nearby.".

Part 3 - Combat

[To say waitingflav of (M - a unicorn):
	if the player is able to speak:
		say "[one of][line break][variable custom style]'[if the bimbo of the player < 10]Go on then, let's get this over with.'[otherwise]You're the boss, big boy!'[end if][roman type][line break][or][or][or][or][cycling]";
	otherwise:
		say "[variable custom style][muffled sounds][roman type][line break]".]

Section 1 - Protect and Attack

To compute (M - a monster) protecting against (X - unicorn):
	if the player is upright and M is unleashed:
		say "[BigNameDesc of X]'s horn seems to catch [NameDesc of M]'s eye, and [he of M] stares at it blankly for a moment before suddenly rounding on you.[if M is intelligent][line break][speech style of M]'Get away from [him of X]!'[roman type][line break][end if]";
		anger M.

To compute (M - unicorn) protecting against (X - a monster):[if you are having sex, she'll get a bit turned on]
	if (X is witch or X is gladiator or X is ballooned aeromancer) and breasts is lewdly exposed:
		say "[BigNameDesc of M] looks from the [X]'s chest to yours, visibly blushing. [line break][speech style of M]'I-I'll be going now.'[roman type][line break]";
		FavourDown M;
	otherwise if the player is live fucked:
		say "[BigNameDesc of M] [one of]raises [his of M] eyebrows[or]scoffs[at random] as [he of M] watches you. [line break][speech style of M]'[one of]You're doing that all wrong, you know.'[or]You know, you're really terrible at that.'[or]Um, WOW. Who taught you how to have sex?'[or]Um, are you sure you're doing that right?'[or]You look like you have no CLUE what you're doing.'[or]Wow, you're really talentless. Don't quit your day job.'[at random][roman type][line break]";
		FavourDown M;
		Bore M;
	otherwise if M is buddy:
		if the player is upright:
			say "[BigNameDesc of M] rolls [his of M] eyes. [speech style of M]'[one of]Ugh, are you stupid? Just get on your knees.'[or]Why are you fighting [him of X]? Just get on your knees already.'[or]What are you doing? [big he of X] wants you to get on your knees.'[or][big he of X] wants you to get on your knees. Are you stupid or something?'[at random][roman type][line break] [BigNameDesc of M] turns to leave.";
			FavourDown M;
			Bore M;
		otherwise:
			say "[BigNameDesc of M] turns up [his of M] nose at you. [line break][speech style of M]'I guess we can find each other later. Hmph.'[roman type][line break]";
			now the scared of M is 30;
			FavourUp M;
			Bore M;
	otherwise:
		say "[speech style of M]'A bride to be should not concern herself with things like this.'[roman type] [BigNameDesc of M] turns to leave.";
		now the scared of M is 30;
		Bore M.

To compute the default taunting of (M - unicorn):[TODO]
	if M is unfriendly:
		say "[BigNameDesc of M] tries to covertly fondle [his of M] crotch as [he of M] watches you.";
	otherwise:
		say "[BigNameDesc of M] watches you, unable to conceal how turned on [he of M] is.";
		if a random number between 1 and 3 is 1, increase the blue-balls of M by 1.

To say PissDrinkThreat of (M - unicorn):
	say "[speech style of M]'[one of]Drink it! Drink it all[or]I-I[']m gonna make you a toilet[or]I-I want to see you drink it[in random order]!'[roman type][line break]Something about the heat radiating off [his of M] [DickDesc of M] seems to promise a punishment if you don't let some in your mouth.".

To say UrinationFlav of (M - a unicorn):
	say "[BigNameDesc of M] holds [his of M] [LongDickDesc of M] inches away from your face, [one of]sighing in relief[or]furrowing [his of M] brows[or]shivering with relief[at random] as a stream of [urine] flows from the tip.[if the humiliation of the player < HUMILIATION-MODEST + 1500 and the urine taste addiction of the player < 7][line break][variable custom style][line break]This can't be happening[one of].[or] again![stopping][roman type][line break][end if]".

To say PresentAcceptanceFlav of (M - unicorn):
	say "[speech style of M]'[one of]Hmph. I-I suppose I could take you up on that.'[or]Did you expect me to say no? B-because I won't!'[or]W-well, when you put it like that I suppose I could make an exception...'[stopping][roman type] [BigNameDesc of M] seems convinced by your request!".

To say NormalMouthPenetrationFlav of (M - unicorn):
	say "[one of][if the relevant sex addiction of M < 8][BigNameDesc of M] presses the tip of [his of M] [DickDesc of M] against your lips, smearing [his of M] precum up and down your chin until you finally relent and let [him of M] slide in. You glower up at [him of M] as [he of M] begins to thrust.[otherwise if the relevant sex addiction of M < 13][BigNameDesc of M] presses the tip of [his of M] [DickDesc of M] against your lips, smearing [his of M] precum up and down your chin until you finally give in and open your mouth, emitting a slow sigh through your nose as [his of M] shaft slides through your lips.[otherwise][BigNameDesc of M] positions [his of M] [DickDesc of M] between your lips. You immediately open them, sighing contentedly as [he of M] enters your mouth.[end if][or][BigNameDesc of M] puts one hand on the back of your head, rapidly jerking [him of M]self off as [his of M] tip prods your lips. [if the relevant sex addiction of M < 8] You open your mouth to tell [him of M] off, but [he of M] immediately inserts [his of M] [DickDesc of M] and begins to thrust.[otherwise if the relevant sex addiction of M < 12]Knowing what's to come, you slowly open your mouth and accept [his of M] invading shaft.[otherwise]You obediently loll out your tongue, gazing at [his of M] [DickDesc of M] reverently as it slides through your lips.[end if][or][BigNameDesc of M] points to your mouth, desperately pumping [his of M] [DickDesc of M]. [if the relevant sex addiction of M < 7]You snarl. [line break][first custom style]'Not my proble-'[roman type][line break][big he of M] cuts you off by immediately shoving [himself of M] into your mouth. You glare lividly as [he of M] begins to thrust.[otherwise if the relevant sex addiction of M < 13]You open your mouth and loll out your tongue, avoiding eye contact with [him of M] as [his of M] [DickDesc of M] slides between your lips.[otherwise]You greedily lean forward and take [his of M] yummy [DickDesc of M] into your mouth.[end if][or][BigNameDesc of M] points to your mouth, whining as [he of M] jerks [him of M]self off. [if the relevant sex addiction of M < 3]You spit at [his of M] feet. [line break][first custom style]'That[']s your problem! Ask-'[roman type][line break][big he of M] cuts you off by immediately shoving [his of M] [DickDesc of M] in your mouth. You glare at [him of M] as [he of M] begins to thrust.[otherwise if the relevant sex addiction of M < 7]You slowly open it, not sure whether to hate or congratulate yourself as [his of M] [LongDickDesc of M] slides past your lips.[otherwise if the relevant sex addiction of M < 11]You obediently open your mouth, telling yourself not to enjoy it too much as [he of M] slides in.[otherwise]You eagerly part your lips and accept [his of M] [LongDickDesc of M] into your mouth.[end if][in random order]".

[For now, the unicorn doesn't change anything from the orgasm portion of the oral climax]
To compute angry punishment of (M - unicorn):
	if a random number between 1 and 4 is 1:
		if the lips of face < 2 + artificial enhancements fetish:
			say "Your lips swell significantly as a harsh burning sensation passes through the inside of your mouth, leaving you with a lasting reminder of all the pain you just endured, and how to avoid it next time.";
			LipsUp 1;
		otherwise:
			say "Your lips form a pronounced O-shape as a harsh waves of pain pass along the bottom of your mouth and down your throat. The sensation lingers in your head even after it has stopped, and you realize it has intensified your desire for oral sex.";
			OralSexAddictUp 1;
	otherwise if cow-ears is off-stage and cow-ears is actually summonable:
		summon cow-ears cursed;
		say "A [ShortDesc of cow-ears] materializes in your hair as a flash of red light fills your vision. You can't help but imagine the pain of being branded as property, and the sensation lingers in your thoughts long after the light fades.";
	otherwise if the number of worn clothing > 0:
		let C be a random worn tearable clothing;
		let R be a random number between 1 and 3;
		if R is 1 and C is clothing:
			say "Your [printed name of C] bursts into flame, instantly disappearing in a flash of painful cinders. The thought of that pain seems to fill in the space left by your clothes.";
			destroy C;
		otherwise:
			let C be a random worn clothing;
			say "Your [printed name of C] bursts into flame as the material absorbs [NameDesc of M]'s magic. Pain continues to linger even as the flames die out.";
			decrease the raw-magic-modifier of C by 1;
	otherwise:
		say "Your stomach turns over as a harsh burning sensation passes through your whole body, leaving you with a long lasting reminder of all the pain you brought on yourself for your resistance.";
	PainUp 1.


To check forgiveness of (M - unicorn):
	if the class of the player is priestess and a random number between the blue-balls of M * -1 and the charisma of the player > 1:
		compute angry forgiveness of M;
	otherwise:
		compute angry punishment of M.

To say ForgivenessFlav of (M - unicorn):
	say "[BigNameDesc of M] seems a little disappointed.".

To say OralResistingResponse of (M - unicorn):
	say "[one of][BigNameDesc of M] seems too absorbed with getting [himself of M] off to acknowledge your protests![or][BigNameDesc of M] holds on tightly, too absorbed with how [his of M] [manly-penis] feels in your mouth to acknowledge your protests![or][BigNameDesc of M] doesn't seem to notice your protests, panting as [he of M] fucks your mouth with [his of M] [DickDesc of M].[or][BigNameDesc of M] continues thrusting with no acknowledgement of your protests.[or][BigNameDesc of M] continues thrusting despite your protests![in random order]".

To say NormalSubOralResponse of (M - unicorn):
	say "[one of][BigNameDesc of M] meets the bobbing of your head with eager thrusts.[or][BigNameDesc of M] holds your head with both hands, rolling [his of M] hips to meet the bobbing of your head.[or][BigNameDesc of M] holds on tightly, mewing with pleasure as you polish [his of M] [LongDickDesc of M].[or][BigNameDesc of M] thrusts steadily, huffing quietly as you [if the oral sex addiction of the player < 4]reluctantly[otherwise]eagerly[end if] polish [his of M] shaft.'[or][BigNameDesc of M] aggressively guides your movement, mewling quietly as you [if the oral sex addiction of the player < 4]reluctantly[otherwise]submissively[end if] suck [his of M] [DickDesc of M].[in random order]".

To say NearingClimaxOral of (M - unicorn):
	say "[one of]You feel your lips heat up as [NameDesc of M]'s thrusting grows even faster![or][BigNameDesc of M]'s thrusts grow faster and faster as you feel your lips slowly heating up.[or][BigNameDesc of M] face fucks you even harder, moaning uncontrollably as your lips begin heating up.[or]Your lips seem to heat up as [NameDesc of M] picks up speed, moaning as [he of M] rapidly slams [his of M] [DickDesc of M] down your throat.[at random]".

To say SwallowDemand of (M - a unicorn):
	say "Your lips [one of]continue to burn with heat[or]radiate palpable heat[or]keep their heat[or]radiate intense heat[at random] as you hold the [semen] in your mouth. [line break][speech style of M]'[one of]Now swallow it. Or I'll curse you.'[or]By all means, spit it out. If you want to be cursed.'[or]Swallow, or I'll curse you.'[at random][roman type][line break]".

To compute happy reward of (M - unicorn):
	say "The heat remains for a few seconds before slowly dissipating.";[see above function]
	FavourUp M by 1.

To say PrepTaunt of (M - unicorn) in (F - a fuckhole):
	if M is unwrapped:
		if F is vagina, say "[line break][speech style of M]'[one of]I-I'm gonna breed you![or]L-let's breed!'[or]Lemme cum inside you!'[or]Can I cum inside? I-I think I will!'[or]I'll breed you fast. N-nice and fast!'[at random][roman type]";
		otherwise say "[line break][speech style of M]'[one of]Lemme cum inside![or]I-I'll put it all inside...'[or]It's OK if it's not my ass.'[or]Can I cum inside? Y-you probably don't mind...'[or]D-do I have to pull out? It- it's probably better that I don't...'[at random][roman type]".

To decide if (M - unicorn) is willing to creampie (F - a fuckhole):
	if the reaction of the player is 1, decide no;
	decide yes.

To decide if (M - unicorn) is losing wrapper in (F - a fuckhole):
	if the reaction of the player is 1 or the class of the player is princess, decide yes;
	decide no.

To compute post climax effect of (M - unicorn) in (F - a fuckhole):
	compute M sleeping 200 after sex;
	now the blue-balls of M is 0;
	FavourUp M;
	now M is uninterested;
	Satisfy M;
	if newbie tips is 1, say sleeping tip.

To say sexSubmitNearingClimax of (M - a unicorn) in (F - a fuckhole):
	say "[one of]Heat begins to gather in your [variable F] as [NameDesc of M] pounds away. You can tell [he of M]'s close.[or]Heat slowly builds in your [variable F] as [NameDesc of M] fucks you with more and more urgency.[or][BigNameDesc of M] pounds you harder and harder, heat slowly building up inside your [variable F].[or]You feel heat building in your [variable F] as [NameDesc of M] slowly speeds up, every thrust coming even faster than the last.'[at random][line break][speech style of M]'[one of]You better let me cum inside, or I'll curse you!'[or]If you know what's good for you, you'll take all my cum.'[at random][roman type][line break]".

To compute (M - unicorn) pulling out of (F - a fuckhole):
	if bukkake fetish is 1, compute M messily pulling out of F;
	otherwise compute M cleanly pulling out of F;
	if a random number between 1 and 4 is 1:
		if the soreness of F < 10:
			say "Your [variable F] cramps painfully, leaving you with a lasting reminder of all the pain you just endured, and how to avoid it next time.";
			Ruin F times 2;
		otherwise:
			say "Harsh waves of pain pass through your [variable F], following every contour of your inner tunnel. The sensation lingers in your head even after it has stopped, and you realize it has intensified your desire for penetrative sex.";
			if F is asshole, AnalSexAddictUp 1;
			otherwise VaginalSexAddictUp 1;
	otherwise if the number of worn clothing > 0:
		let C be a random worn tearable clothing;
		if C is clothing:
			say "Your [printed name of C] bursts into flame, instantly disappearing in a flash of painful cinders. The thought of that pain seems to fill in the space left by your clothes.";
			destroy C;
	otherwise:
		say "Your stomach turns over as a harsh burning sensation passes through your whole body, leaving you with a long lasting reminder of all the pain you brought on yourself for your resistance.";
	PainUp 1.

To say CreampieFlav of (M - unicorn) in (F - a fuckhole):
	say "[one of][BigNameDesc of M] mumbles incoherently, tightening [his of M] grip as [he of M] unloads all of [his of M] pent up frustration directly into your [variable F].[or][BigNameDesc of M] rapidly speeds up as [he of M] erupts directly into your [variable F], thoroughly blasting your insides with wave upon wave of fresh, creamy [semen].[or][at random] The heat slowly dissipates as [his of M] orgasm tapers off, and [he of M] slumps over asleep as [his of M] [DickDesc of M] slides out.".

To say CondomFailFlav of (M - unicorn) in (F - a fuckhole):
	say "[BigNameDesc of M] slams [his of M] [DickDesc of M] home, and you feel a rush of heat as the condom disappears, allowing [NameDesc of M]'s load to [one of]shoot[or]surge[or]splurt[at random] directly into your unprotected [variable F]. [big he of M] doesn't seem to notice at all, continuing to thrust until [his of M] [DickDesc of M] softens and [he of M] slumps over, asleep.".

To say CondomRejectFlav of (M - unicorn):
	say "[BigNameDesc of M] [one of]scoffs[or]frowns[or]rolls [his of M] eyes[at random], and ignores your suggestion. Looks like [he of M][']s going in bare...".

To say CondomPieFlav of (M - unicorn) in (F - a fuckhole):
	say "[BigNameDesc of M] moans with pleasure as the condom floods with warmth, shivering with relief as [his of M] softening [DickDesc of M] slides out. The heat dissipates as [he of M] slumps over, asleep.".

To say PullOutFlav of (M - unicorn) in (F - a fuckhole):
	say "[one of]Your continued struggling pushes [NameDesc of M] away at the last moment, causing [him of M] to spray [his of M] load all over the ground and immediately fall asleep[or][BigNameDesc of M] accidentally slips out of you at the last moment, shooting [his of M] load on the ground before immediately falling asleep[or]Thanks to your struggling, [BigNameDesc of M] is unable to hold on to you, and [his of M] [DickDesc of M] slips out of you just in time for [him of M] to blow [his of M] load on the ground and immediately fall asleep[at random].".

To say MessyPullOutFlav of (M - unicorn) in (F - a fuckhole):
	say "[one of]Your continued struggling pushes [NameDesc of M] away at the last moment, causing [him of M] to spray your [variable F] with fresh [semen][or][BigNameDesc of M] accidentally slips out of you at the last moment, shooting [his of M] load all over your [variable F] and thighs[or]Thanks to your struggling, [BigNameDesc of M] is unable to hold on to you, and [his of M] [DickDesc of M] slips out of you just in time for [him of M] to cover your [variable F] with [semen][at random]. [big he of M] immediately slumps over and falls asleep.".

[To say MasturbationDeclarationFlav of (M - unicorn):
	say "[speech style of M]'[one of]Hmmph. You don't deserve what I'm about to do.'[or]You're lucky I'm doing this.'[stopping][roman type][line break]".

To say MasturbationStartFlav of (M - unicorn):
	say "[BigNameDesc of M] plants [his of M] foot on your [genitals].".

To say MasturbationFlav of (M - unicorn):
	if the player is female:
	otherwise:]

Section 3 - Damage

[To compute damage of (M - a unicorn):
	if the health of M > 0:
		if M is uninterested or M is friendly:
			say "[big he of M] [if M is asleep]wakes up and [end if]snarls menacingly! Uh-oh...";
			now M is interested;
			now the variety of M is gladiator-next-level of M;
			anger M;
			now the sleep of M is 0;
		otherwise:
			say DamageReaction (the health of M) of M;
	otherwise:
		if the health of M <= 0:
			compute death of M.]

To say DamageReactHealthy of (M - unicorn):
	say "[big he of M] yelps in pain!".

To say DamageReactDamaged of (M - unicorn):
	say "[big he of M] grunts in pain!".

To say DamageReactTired of (M - unicorn):
	say "[big he of M] staggers, squeaking in pain!".

To say DamageReactWeak of (M - unicorn):
	say "[big he of M] screams in pain, struggling to maintain [his of M] balance!".

To compute unique death of (M - unicorn):
	say "The [noun] silently slumps to the ground, dead.";
	let D be unicorn-horn;
	if D is off-stage:
		now D is in the location of the player;
		say "The horn on [his of M] head detaches, rolling in a small arc along the ground.";
		compute autotaking D.

Section 4 - Dominant Sex

To suggestFucker (F - a body part) for (M - unicorn):
	if F is penis:
		say "Do you want to try fucking [him of M] with your [SexDesc of penis]? It could be challenging.";
		if the player is consenting:
			now player-fucker is F;
			now player-fuckchoice is FUCK-PENETRATION;
	otherwise if F is a fuckhole:
		say "Do you want to try riding [him of M]?";
		if the player is consenting:
			now player-fucker is F;
			now player-fuckchoice is FUCK-RIDE;
	otherwise:
		say "You decide against it.".

To compute domination interference of (M - unicorn) for (N - a monster):
	say "[BigNameDesc of M] moves out of the way. [line break][speech style of M]'Hmmph. I look forward to seeing you fail.'[roman type][line break]".

To say DominanceIntro of (M - unicorn):
	say "[BigNameDesc of M] yelps as you shove [him of M] to the ground and straddle [him of M]. [PowerBottomComment of M] [big his of M] cheeks redden as you pull [his of M] [LongDickDesc of M] out of [his of M] panties. [line break][speech style of M]'[one of]W-what are you planning?!'[or]S-stop looking at me like that!'[or]W-wait a second!'[at random][roman type][line break]";
	if there is a held condom-providing thing:
		say "Would you like to have [him of M] wear a condom?";
		if the player is consenting:
			say CondomManualFlav of M;
			now M is wrapped.
[
To say PowerBottomComment of (M - unicorn):
	say "TODO";[TODO]]

To say DominanceFailure of (M - unicorn):
	if player-fucker is penis:
		say "[BigNameDesc of M] squirms as you grab [him of M] by the wrists and wrestle [him of M] to the ground.";
	otherwise:
		say DominanceIntro of M;
		unless M is wrapped:
			say "You give [him of M] a wink as you [if face is not actually occupied]use your mouth to bring [him of M][otherwise]use your hands to bring [him of M][end if] full hardness. ";
	say "The horn on [his of M] head suddenly catches your eye, and your vision blurs as the horn shoots out several bright red sparks.".

To compute failed dominance punishment of (M - unicorn):
	let R be a random number between 1 and 3;
	if R is 1:
		say "You feel a wave of fatigue as strength drains out of your muscles.";
		StrengthDown 2;
	otherwise if R is 2:
		say "You feel a wave of fatigue as stiffness settles in your joints.";
		DexDown 2;
	otherwise:
		say "You feel a wave of fatigue as cloudiness settles over your thoughts.";
		IntDown 2;
	say "[line break][speech style of M]'Maybe that will teach you to get fresh with me. Hmph!'[roman type][line break]";
	Bore M.

To say DominanceSuccess of (M - unicorn):
	if player-fucker is penis:
		weiner dominate M;
	otherwise:
		say DominanceIntro of M;
		now refactoryperiod is 1;[Ensures the player does not orgasm too early during the scene]
		unless M is wrapped:
			say "You give [him of M] a wink as you [if face is not actually occupied]use your mouth to bring [him of M][otherwise]use your hands to bring [him of M][end if] full hardness. [run paragraph on]";
		let B be 0;
		if breasts is lewdly exposed or the class of the player is cowgirl or the class of the player is catgirl or the number of glazed body parts > 0, now B is 1;
		let A be the anal sex addiction of the player;
		if the player is female, now A is the vaginal sex addiction of the player;
		let R be a random number between ((A * -1) + 1) and the intelligence of the player / 2;
		say "[line break][speech style of M]'No matter how[if the size of penis > 7]...hung[otherwise if B is 1]...eye-catching[otherwise]...powerful[end if] you are, I am spoken for. Please, if you spare me, I promise I can heal you.'[roman type][line break][if the times-submitted of M > 0 and R > 0][line break][variable custom style][big he of M] sure didn't seem spoken for when [he of M] was fucking me.[roman type][line break][end if][if R > 0]Do you let [him of M] go?[end if]";
		[say "[line break][speech style of M]'Wait. No matter how [if the size of penis > 7]hung[otherwise if B is 1]attractive[otherwise]forceful[end if] you are, I orgasm only for the demon lord. If you spare me, I swear I-I'll...satisfy you another way.'[roman type][line break][BigNameDesc of M] blushes as [his of M] tongue lolls out of [his of M] mouth. [if the times-submitted of M > 0 and R > 0]You've already had sex, so [his of M] claim is clearly false.[end if][if R > 0]Do you let [him of M] eat your ass instead?[end if]";]
		if R > 0 and the player is consenting:
			say "[BigNameDesc of M]'s horn glows bright blue, and a wave of relief passes through your body.";
			if fudge-poison-timer > 0, now fudge-poison-timer is 1;
			if toffee-poison-timer > 0, now toffee-poison-timer is 1;
			if cookie-poison-timer > 0, now cookie-poison-timer is 1;
			if wasp-poison-timer > 0, now wasp-poison-timer is 1;
			if the body soreness of the player > 2, now the body soreness of the player is (the body soreness of the player / 2);
			if the fatigue of the player > 2, FatigueDown (the fatigue of the player / 2);
		otherwise:
			if the player is male, anal dominate M;
			otherwise vaginal dominate M.

[To female dominate (M - unicorn):
	if the player is female:
		say "You decide to humor [him of M], giving [him of M] an expectant look as you present [him of M] with your [vagina].";
	otherwise:
		say "";]

To anal dominate (M - unicorn):
	let R be a random number between 3 and the intelligence of the player / 2;
	if the class of the player is princess or the class of the player is succubus or demon lord is mating:[If the unicorn hates you]
		say "[line break][speech style of M]'I knew it! You want to ruin me for [him of demon lord]! I-I'll never cum for the likes of you!'[roman type][line break][BigNameDesc of M] shrieks, [his of M] [DickDesc of M] twitching excitedly as you slide it into your [asshole]. [if the girth of M < the openness of asshole - 2][big his of M] girth leaves a lot to be desired, which of course makes [his of M] little 'declaration' even more annoying[otherwise][big his of M] girth perfectly fills you up without stretching you out too much, which makes [his of M] little declaration that much more annoying[end if]. You decide to take it as a challenge, [if the player is able to speak]kissing [him of M] roughly as you begin to ride [him of M]. [big his of M] [DickDesc of M] responds with a very appreciative throb as you force your tongue into [his of M] mouth, and you can feel [his of M] heart racing as [he of M] struggles not to moan[otherwise]roughly tearing open [his of M] dress as you begin to ride [him of M]. [big his of M] [DickDesc of M] responds with an appreciative throb as you tweak [his of M] exposed nipples, and the flush on [his of M] cheeks deepens as [he of M] struggles not to moan[end if]. However, [he of M] refuses to break, and as you pour ever more effort into making [him of M] cum, you're the one who starts to feel the strain. You find yourself moaning every few breaths, your hard [ShortDesc of penis] tapping audibly against [his of M] belly as you vigorously fuck yourself with [his of M] shaft, but still--[he of M] refuses to break. A smug look creeps across [his of M] features as [he of M] realizes you've hit your limit, and your [if the intelligence of the player < 8]dim [end if]mind goes into overdrive trying to think of a way to wipe that look off [his of M] face. [line break][variable custom style][if R <= 5]Um...I can't think of anything!'[roman type][line break]You simply can't focus enough when you're this close to orgasm, and you feel your internal muscles tightening up as they embrace the inevitable.[otherwise]I bet [he of M]'d cum if I put my finger in [his of M] ass. Although, it would definitely mean [he of M]'s going to creampie me.'[roman type][line break]Do you go for [his of M] ass?[end if]";
		if R > 5 and the player is bimbo consenting:
			say "[if M is wrapped]Knowing the condom will protect you anyway[otherwise]Deciding a creampie is worth it[end if], you reach between [his of M] legs and immediately jam your finger up [his of M] ass.[line break][speech style of M]'W-What are you d-doing? T-that's my-AH! AAAH! UUUUAAAAAH!'[roman type][line break][BigNameDesc of M] wildly bucks [his of M] hips, no longer able to contain [his of M] moans as [his of M] [LongDickDesc of M] begins to spasm. You feel an incredible wave of satisfaction as [if M is wrapped]the condom finally fills with [his of M] load[otherwise][his of M] load finally shoots into your [asshole][end if], your last moan coming out as a laugh as [if the size of penis is 0]you reach a climax of your own[otherwise if the size of penis < 3 or there is a worn chastity cage]your own load dribbles out on [his of M] belly[otherwise]your load spurts out on [his of M] belly[end if] a few seconds later.";
			orgasm;
			if M is unwrapped:
				AssFill the semen load of M;
			FavourDown M by 2;
			now player-fucking is DOMINANT-SUPER;
			say AfterDominationComment 5 of M;
		otherwise:
			say "You cum within a few seconds, unable to fully enjoy your orgasm thanks to the smug look [he of M][']s wearing the entire time. Its not like you're humiliated or anything, but you certainly don't feel very dominant.";
			orgasm;
			passively stimulate vagina from M;
			now player-fucking is DOMINANT-SHAMEFUL;
			say AfterDominationComment 4 of M;
	otherwise:
		say "[line break][speech style of M]'W-well, I'm not even turned on anyway!'[roman type][line break][BigNameDesc of M] blurts, [his of M] [DickDesc of M] twitching excitedly as you line it up with your [asshole]. [if the intelligence of the player > 10]You smirk at [his of M] terrible lie as you lower yourself onto [his of M] shaft, gently fucking yourself as you theatrically fondle your tits[otherwise]You have no reason to disbelieve [him of M], so you don't bother being dramatic, gently tweaking your nipples as you begin to fuck yourself with [his of M] shaft[end if]. [big he of M] bites [his of M] lip, and [his of M] eyes glue themselves to your [if the largeness of breasts >= 6]ample[otherwise]petite[end if] chest as stifled moans leak out of [his of M] mouth. You can feel [his of M] [DickDesc of M] throb inside of you as you continue to play with your breasts, and [if the intelligence of the player <= 10]you start thinking of a a way to somehow turn [him of M] on. Unfortunately, its too difficult, so you decide to simply relax and enjoy yourself. You sigh as you lay down ontop of [him of M], allowing her head to rest[otherwise]you come up with the perfect idea to turn [him of M] on even more. With a dramatic sigh, you lay down ontop of [him of M], grinning at [him of M] as you press [his of M] head[end if] [if the largeness of breasts < 6]against your chest[otherwise]between your tits[end if].[line break][speech style of M]'Huh!? Wh-...What are you-...I...I-I'm...I-I'M GONNA CUM!'[roman type][line break][BigNameDesc of M] bucks hips as [his of M] shaft begins to rapidly spasm, and you're left with only a few seconds to react. [if R > 5 and M is unwrapped]If you stop now, you might be able to avoid a creampie, but you'd probably lose out on your chance to cum. Do you want to stop?[end if]";
		if R > 5 and M is unwrapped and the player is reverse bimbo consenting:
			say "You immediately stand up off [him of M], very narrowly missing the first salvo of [semen] as it spurts out of [his of M] [DickDesc of M] and falls in an arc across [his of M] belly.";
			now player-fucking is DOMINANT-NEUTRAL;
			passively stimulate asshole from M times 2;
			orgasm M;
			Calm M;
			FavourUp M by 2;
			say AfterDominationComment 6 of M;
		otherwise:
			let C be a random worn chastity cage;
			say "[if R <= 5]You don't have enough time to think about stopping, and before you can make your decision[otherwise if M is unwrapped]You decide you'd rather keep going, and in the moment you make your decision[otherwise]You don't bother thinking about it, and a moment later[end if], you feel several spurts of [semen] [if M is wrapped]shooting into the condom[otherwise]shooting out inside you[end if]. Satisfaction fills your chest as you milk [him of M] down to [his of M] last drop, finally standing up when [his of M] softening [DickDesc of M] slips out of your [asshole]. [line break][speech style of M]'T-this is all your fault! I told you I-Mmnf!'[roman type][line break]You cut [him of M] off by immediately sitting on [his of M] face, grinding [if there is a worn chastity cage]your cage[otherwise if the size of penis is 0]yourself[otherwise]your [ShortDesc of penis][end if] against [his of M] horn as [his of M] load seeps out of you. The slight stimulation is just enough to push you over the edge, and you groan happily as [if the size of penis is 0]climax finally wracks your body[otherwise if C is clothing or the size of penis < 3]your [semen] dribbles out on [his of M] face[otherwise]your [semen] arcs paints [his of M] forehead[end if].";
			orgasm M;
			FavourDown M by 1;
			orgasm;
			LickGet;
			say AfterDominationComment 7 of M;
	AnalCount.

To vaginal dominate (M - unicorn):
	let R be a random number between 3 and the intelligence of the player / 2;
	if the class of the player is princess or the class of the player is succubus or there is a worn xavier's cunt tattoo or demon lord is mating:[If the unicorn hates you]
		say "[line break][speech style of M]'I knew it! You want to ruin me for [him of demon lord]! I-I'll never cum for the likes of you!'[roman type][line break][BigNameDesc of M] shrieks, [his of M] [DickDesc of M] twitching excitedly as you slide it into your [vagina]. [if the girth of M < the openness of vagina - 2][big his of M] girth leaves a lot to be desired, which of course makes [his of M] little 'declaration' even more annoying[otherwise][big his of M] girth perfectly fills you up without stretching you out too much, which makes [his of M] little declaration that much more annoying[end if]. You decide to take it as a challenge, [if the player is able to speak]kissing [him of M] roughly as you begin to ride [him of M]. [big his of M] [DickDesc of M] responds with a very appreciative throb as you force your tongue into [his of M] mouth, and you can feel [his of M] heart racing as [he of M] struggles not to moan[otherwise]roughly tearing open [his of M] dress as you begin to ride [him of M]. [big his of M] [DickDesc of M] responds with an appreciative throb as you tweak [his of M] exposed nipples, and the flush on [his of M] cheeks deepens as [he of M] struggles not to moan[end if]. However, [he of M] refuses to break, and as you pour ever more effort into making [him of M] cum, you're the one who starts to feel the strain. You find yourself moaning every few breaths, tingles radiating up your spine as you vigorously fuck yourself with [his of M] shaft, but still--[he of M] refuses to break. A smug look creeps across [his of M] features as [he of M] realizes you've hit your limit, and your [if the intelligence of the player < 8]dim [end if]mind goes into overdrive trying to think of a way to wipe that look off [his of M] face. [line break][variable custom style][if R <= 5]Um...I can't think of anything![roman type][line break]You simply can't focus enough when you're this close to orgasm, and you feel your internal muscles tightening up as they embrace the inevitable.[otherwise]I bet [he of M]'d cum if I put my finger in [his of M] ass. Although, it would definitely mean [he of M]'s going to creampie me.[roman type][line break]Do you go for [his of M] ass?[end if]";
		if R > 5 and the player is bimbo consenting:
			say "[if M is wrapped]Knowing the condom will protect you anyway[otherwise]Deciding a creampie is worth it[end if], you reach between [his of M] legs and immediately jam your finger up [his of M] ass.[line break][speech style of M]'W-What!? B-but t-that's my-UOH! UUUUAAAAAH!'[roman type][line break][BigNameDesc of M] wildly bucks [his of M] hips, no longer able to contain [his of M] moans as [his of M] [LongDickDesc of M] begins to spasm. You feel an incredible wave of satisfaction as [if M is wrapped]the condom finally fills with warmth[otherwise][his of M] load shoots into your [vagina][end if], your last moan coming out as a laugh as you reach a climax of your own a few seconds later.";
			orgasm;
			if M is unwrapped:
				WombFill the semen load of M;
			FavourDown M by 2;
			now player-fucking is DOMINANT-SUPER;
			say AfterDominationComment 5 of M;
		otherwise:
			say "You cum within a few seconds, unable to fully enjoy your orgasm thanks to the smug look [he of M][']s wearing the entire time.";
			orgasm;
			say "It's not like you're humiliated or anything, but you certainly don't feel very dominant.";
			now player-fucking is DOMINANT-SHAMEFUL;
			say AfterDominationComment 4 of M;
	otherwise:
		say "[line break][speech style of M]'W-well, I'm not even turned on anyway!'[roman type][line break][BigNameDesc of M] blurts, [his of M] [DickDesc of M] twitching excitedly as you line it up with your [vagina]. [if the intelligence of the player > 10]You smirk at [his of M] terrible lie as you lower yourself onto [his of M] shaft, gently fucking yourself as you theatrically fondle your tits[otherwise]You have no reason to disbelieve [him of M], so you don't bother being dramatic, gently tweaking your nipples as you begin to fuck yourself with [his of M] shaft[end if]. [big he of M] bites [his of M] lip, and [his of M] eyes glue themselves to your [if the largeness of breasts >= 6]ample[otherwise]petite[end if] chest as stifled moans leak out of [his of M] mouth. You can feel [his of M] [DickDesc of M] throb inside of you as you continue to play with your breasts, and [if the intelligence of the player <= 10]you start thinking of a a way to somehow turn [him of M] on. Unfortunately, its too difficult, so you decide to simply relax and enjoy yourself. You sigh as you lay down ontop of [him of M], allowing her head to rest[otherwise]you come up with the perfect idea to turn [him of M] on even more. With a dramatic sigh, you lay down ontop of [him of M], grinning at [him of M] as you press [his of M] head[end if] [if the largeness of breasts < 6]against your chest[otherwise]between your tits[end if].[line break][speech style of M]'Huh!? Wh-...What are you-...I...I-I'm...I-I'M GONNA CUM!'[roman type][line break][BigNameDesc of M] bucks hips as [his of M] shaft begins to rapidly spasm, and you're left with only a few seconds to make a choice. [if R > 5 and M is unwrapped]If you stop now, you might be able to avoid a creampie, but you'd probably lose out on your chance to cum. Do you want to stop?[end if]";
		if R > 5 and M is unwrapped and the player is reverse bimbo consenting:
			say "You immediately stand up off [him of M], very narrowly missing the first salvo of [semen] as it spurts out of [his of M] [DickDesc of M] and falls in an arc across [his of M] belly.";
			now player-fucking is DOMINANT-NEUTRAL;
			passively stimulate vagina from M times 2;
			orgasm M;
			Calm M;
			FavourUp M by 2;
			say AfterDominationComment 6 of M;
		otherwise:
			say "[if R <= 5]You simply don't have enough time to think it through, and before you can make your decision[otherwise if M is unwrapped]You decide you'd rather keep going, and in the moment you make your decision[otherwise]You don't bother thinking about it, and a moment later[end if], you feel several spurts of [semen] [if M is wrapped]shooting into the condom[otherwise]shooting out inside you[end if]. Satisfaction fills your chest as you milk [him of M] down to [his of M] last drop, finally standing up when [his of M] softening [DickDesc of M] slips out of your [vagina]. [line break][speech style of M]'T-this is all your fault! I told you I-Mmnf!'[roman type][line break]You cut [him of M] off by immediately sitting on [his of M] face, grinding your clit against [his of M] horn as [his of M] load dribbles out onto [his of M] nose. The direct clitoral stimulation is just what you need to finish yourself off, and you groan happily as you cover [NameDesc of M]'s face with femcum.";
			orgasm M;
			FavourDown M by 1;
			orgasm;
			LickGet;
			say AfterDominationComment 7 of M;
	FuckCount.

unicorn has a number called times-seeded. The times-seeded of unicorn is usually 0.

To weiner dominate (M - unicorn):
	let C be a random bottom level protection clothing;
	say "[BigNameDesc of M] squirms as you grab [him of M] by the wrists and wrestle [him of M] to the ground. The horn on [his of M] forehead somehow catches your eye, and you realize you're slipping into some sort of trance. However, [his of M] wriggling jars you out of your chance, and you avoid any further distractions by immediately tearing off [his of M] panties and forcing [his of M] knees up over [his of M] head.[line break][speech style of M]'[one of]H-How dare you hold me in such a position. Release me. R-right now. I swear I'll...'[or]W-what are you planning on doing to me? This is...'[or]W-what are you doing? Don't you know I'm betrothed? Release...'[at random][roman type][line break][big he of M] trails off as you [if C is not strapon-panties and C is clothing]pull your [SexDesc of penis] out of your pants[otherwise if sexual-penis-length > 3]grind your [SexDesc of penis] between [his of M] cheeks[otherwise]line up your [SexDesc of penis] with [his of M] entrance[end if]";
	if sexual-penis-length > 8:
		if the times-seeded of M < 1, say "[line break][speech style of M]'Wait. Even if you are...v-very hung, I am already betrothed. Please, I'll even strengthen some of your items if you spare me!'[roman type][line break][big he of M] says that, but [his of M] [DickDesc of M] looks pretty hard already. Do you really want to spare [him of M] instead?";
		otherwise say "[line break][speech style of M]'W-wait! S-surely you wouldn't fuck a bride...nevermind. A strong, hung person like you will obviously claim me without remorse. B-but if you don't claim me, I'll strengthen some of your items in return.'[roman type][line break][big he of M] says that, but [his of M] [DickDesc of M] looks pretty hard already. Do you really want to spare [him of M] instead?";
		if the player is consenting:
			Calm M;
			say "You release [him of M], watching expectantly as [his of M] horn lights up and shoots off several glittering motes of light.";
			let X be 3;
			repeat with H running through held clothing:
				say "The motes land on your [printed name of H].";
				increase the raw-magic-modifier of H by 1;
				decrease X by 1;
				if X <= 0, break;
				now player-fucking is DOMINANT-NEUTRAL;
			say AfterDominationComment 1 of M;
		otherwise:[The unicorn is actually a huge slut]
			say "You answer by way of spitting on your [sexual-player-penis], smirking at the angry face [he of M] makes as you slowly push your [SexShaft] into [his of M] [asshole]. [big he of M] flings curses and obscenities at you as you begin to fuck [him of M], stifled moans punctuating every word as [his of M] [DickDesc of M] bobs in time with your thrusts. [big his of M] voice quickly loses all coherence, reducing [him of M] to frustrated spluttering and grunting as you eagerly piston away. It goes on for so long that you're not even sure [he of M]'s angry, so you decide to see if you can force another reaction out of [him of M]. You plant both hands on the ground, throwing your full weight against [him of M] as you drive every inch of your [sexual-player-penis] into [his of M] ass. [big his of M] eyes cross, and [he of M] grits [his of M] teeth in the midst of the merciless pounding, still trying to hold out. Unfortunately, you won't allow it. Your balls slap the nape of [his of M] ass as you relentlessly drill [his of M] prostate, forcing [him of M] to moan as [his of M] [asshole] starts clenching up around you. [big his of M] mouth slowly twists into a big, submissive 'O,' and [he of M] cries out in pleasure as [his of M] [DickDesc of M] shoots streamers of [semen] across [his of M] belly, chest, and face. Defeated, [he of M] stares up at you [if bukkake fetish is 1]with [his of M] own [semen] gluing one of [his of M] eyes shut [end if]as [he of M] finally accepts the pounding like the horny submissive [he of M] is. You ease off a little, making sure to enjoy yourself nice and fully before slamming your [sexual-player-penis] home, groaning as you pump [his of M] [asshole] full of fresh [semen].";
			orgasm;
			increase the times-seeded of M by 1;
			now player-fucking is DOMINANT-SUPER;
			say AfterDominationComment 2 of M;
	otherwise if sexual-penis-length > 3:
		if the times-seeded of M < 1, say "[line break][speech style of M]'W-wait. My arse is the property of the demon lord. I c-cannot disrespect [him of M] by allowing you to claim me. Please...I'll even strengthen some of your items!'[roman type][line break][big he of M] says that, but anticipation is clearly written all over [his of M] face. Do you really want to spare [him of M] instead?";
		otherwise say "[line break][speech style of M]'W-wait! If you claim my arse again...s-surely it could incur the wrath of the demon lord. I promise I'll strengthen some of your items if you reconsider!'[roman type][line break][big he of M] says that, but anticipation is clearly written all over [his of M] face. Do you really want to spare [him of M] instead?";
		if the player is consenting:
			Calm M;
			let X be 2;
			say "You release [him of M], watching expectantly as [his of M] horn lights up and shoots off a few glittering motes of light.";
			repeat with H running through held clothing:
				say "The motes land on your [printed name of H].";
				increase the raw-magic-modifier of H by 1;
				decrease X by 1;
				if X <= 0, break;
				now player-fucking is DOMINANT-NEUTRAL;
			say AfterDominationComment 1 of M;
		otherwise:
			say "You answer by way of spitting on your [sexual-player-penis], smirking at the angry face [he of M] makes as you slide your [SexShaft] into [his of M] tight little [asshole]. [big he of M] flings curses and obscenities at you as you begin to fuck [him of M], stifled moans punctuating every word as [his of M] rigid [DickDesc of M] bobs in time with your thrusts. [big his of M] voice quickly loses all coherency, reducing [him of M] to frustrated spluttering and grunting as you mercilessly piston away. It goes on for so long that you're not even sure if [he of M]'s angry or not, and you definitely don't have the stamina to try and force another reaction out of [him of M]. You lose control before long, groaning heavily as you fill [his of M] [asshole] with your load.";
			orgasm;
			increase the times-seeded of M by 1;
			say AfterDominationComment 2 of M;
	otherwise:
		say "[line break][speech style of M]'Stop, you can't do that. My arse belongs to the demon lord. Surely [if the player is male and lady fetish is not 1 and transGender is 0]a fellow sissy[otherwise]someone[end if] like you can understand that.'[roman type][line break]Do you want to fuck [him of M] anyway?";
		if the player is consenting:
			Calm M;
			let H be a random held clothing;
			say "You release [him of M], watching expectantly as [his of M] horn lights up and shoots off a single, glittering fleck of light. It lands on your [printed name of H].";
			increase the raw-magic-modifier of H by 1;
			now player-fucking is DOMINANT-NEUTRAL;
			say AfterDominationComment 1 of M;
		otherwise:
			say "[big he of M] snorts.[line break][speech style of M]'Fine, don't you dare look at me, scum.'[roman type][line break][big he of M] makes a scary face, prompting you to immediately look away. You have a little bit of trouble penetrating [him of M] without being able to look at what you're doing, but after embarassing yourself for around 30 seconds, you finally manage to slip your [sexual-player-penis] into [his of M] [asshole]. Even without looking at [him of M], you can still feel hatred flowing off [him of M] in waves, and you hump [him of M] eagerly in hopes of getting it over with quickly. You end up going too fast and finish before you get the chance to really enjoy yourself.";
			now player-fucking is DOMINANT-SHAMEFUL;
			orgasm;
			say AfterDominationComment 3 of M;
	if full-lady fetish is 1, FuckGet;
	otherwise AnalGet.

To say AfterDominationComment (N - a number) of (M - unicorn):
	if N is 1:
		say "[speech style of M]'[one of]Thank you. I'll remember this.'[or]I'm glad you were reasonable.'[or]If we ever come to blows, I'll remember this moment.'[in random order][roman type][line break]";
	otherwise if N is 2:
		say "[speech style of M]'[one of]I will tell the demon lord of your crime. [big he of demon lord] will make you pay.'[or]I knew it. All mortal [if the player is presenting as female]women[otherwise]men[end if] are disgusting!'[or]You disregarded my vows, you pig!'[in random order][roman type][line break]";
	otherwise if N is 3:
		say "[speech style of M]'[one of]Did you enjoy yourself, idiot?'[or]I hope you enjoyed yourself, fool.'[or]I hope you liked it. Inferior beast...'[in random order][roman type][line break]";
	otherwise if N is 4:
		say "[speech style of M]'[one of]Nice try, harlot.'[or]Naturally, you were outclassed.'[or]If you were planning to humiliate me, you could have done better.'[in random order][roman type][line break]";
	otherwise if N is 5:
		say "[speech style of M]'[one of]My arse is sacred, you BRUTE!'[or]How dare you violate my arse!'[or]My arse does not belong to you, you BRUTE!'[in random order][roman type][line break]";
	otherwise if N is 6:
		say "[speech style of M]'Although you forced yourself on me, in truth, I...er....we won't speak of this again. Goodbye.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Did you have to make a mess of my face?[or]Did you have to make me look like a tart?'[or]My makeup is ruined!'[in random order][roman type][line break]";


Part 4 - Conversation

To say UnAnnoyedResponse of (M - unicorn):
	say "[speech style of M]'[one of]T-that's right! Take it, you hussy!'[or]Y-yes! Don't forget your place!'[or]S-stop distracting me!'[at random][roman type]".

To say MildAnnoyedResponse of (M - unicorn):
	say "[speech style of M]'[one of]Stop complaining! I am doing a very good job!'[or]I'm trying my best, you know!'[or]A-are you insinuating I'm not doing this correctly?'[at random][roman type]".

To say AnnoyedResponse of (M - unicorn):
	say "[BigNameDesc of M]'s horn begins to spark. [speech style of M]'[one of]If you don't stop talking, I'm going to get MAD!'[or]RRrrr...Shut. Up.'[or]Ooh...You better shut it!'[at random][roman type]".

To compute annoyed punishment of (M - unicorn):
	say "[line break][speech style of M]'SHUT UUUUUP!'[roman type][line break][BigNameDesc of M]'s horn spews hot sparks as [he of M] shrieks with rage. The sparks pop like firecrackers on contact with your skin!";
	DelicateUp 1;
	ApplyFullConvoFatigue to M.

To say InvitationAccepted of (M - unicorn) with (N - a monster):
	say "[speech style of M]'[one of]A-as long as you're willing.'[or]W-well, since you put it like that...'[or]O-oh, its really OK?'[at random][roman type][line break]".

To say InvitationRejected of (M - unicorn) with (N - a monster):
	say "[speech style of M]'W-Why would I want to do that! H-how ridiculous!'[roman type][line break]".

To say AssistanceRejected of (M - unicorn) with (N - a monster):
	if M is unfriendly:
		say "[speech style of M]'How can you ask me that after r-riling me up like this? How RUDE!'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Me? Help you? You must be stupid.'[roman type][line break]".

To say AttentionExceeded of (M - unicorn) with (N - a monster):
	say "[speech style of M]'H-how dare you ask me to watch this! I'll have to punish you!'[roman type][line break]".

To say AttentionAccepted of (M - unicorn) with (N - a monster):
	say "[speech style of M]'L-like I would miss an opportunity to see you embarass yourself!'[roman type][line break]".

To say VanityAccepted of (M - unicorn):
	say "[speech style of M]'Fine. I'll grace you with my presence.'[roman type][line break]".

To say VanityAnnoyed of (M - unicorn):
	say "[speech style of M]'Fine, but don't expect me to do it for very long.'[roman type][line break]".

To say SubmissiveResponse of (M - unicorn):
	say "[speech style of M]'Hmph. You're lucky I decided to satisfy you.'[roman type][line break]";

To say FirstResponse of (M - unicorn):
	if the class of the player is princess:
		say "[speech style of M]'We aren't exchanging words. You are going DOWN.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'...Hello. Did you need something?'[roman type][line break]".

To say RepeatResponse of (M - unicorn):
	say FirstResponse of M.

To compute annoyance of (M - unicorn):
	if M is unfriendly:
		say "[speech style of M]'Sh-sh-shhh! There are other matters you need to attend to right now.'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] ignores you.".

To compute teaching of (M - unicorn):
	say "[speech style of M]'I would never do this, of course, but have you ever considered simply admitting your own inferiority and begging for mercy? Who knows, it might even turn them on!'[roman type][line break]";
	teach begging for mercy;
	HeavyConvoFatigue M.

To say WhereAnswer of (M - unicorn):
	say "[speech style of M]'Does it matter? This place is nothing without a master to rule over it.'[roman type][line break]".

To say WhoAnswer of (M - unicorn):
	say "[speech style of M]'My name is Elwyn.'[roman type][line break]";

To say StoryAnswer of (M - unicorn):
	let X be demon lord;
	say "[speech style of M]'[one of]I am waiting for the day when I am reunited with my true love.'[or]I have taken a vow of anal chastity in the name of my true love. One day we will be together again.'[or]An evil princess trapped the love of my life in an amulet and then fled. [if X is alive]I know [he of X] will return for me one day[end if]...'[or]I am waiting for the day when I will once again feel my darling master's touch. It's been so long...'[at random][roman type][line break]";

To say EscapeAnswer of (M - unicorn):
	let X be demon lord;
	say "[speech style of M]'[one of]There's a mansion somewhere nearby. But... last time I went there, I met a very forward undead. I wouldn't recommend it[or]There's a hotel nearby, but stay away from the owner. [big he of X]'s spoken for[at random].'[roman type][line break]".

To say AdviceAnswer of (M - unicorn):
	say "[speech style of M]'[one of]Don't put so much stock in condoms. Sometimes they break, and some men simply prefer unprotected sex. If you ask me, they deserve it.'[or]The mechanic in the hotel is cunning in addition to being [if lady fetish is 1]very beautiful[otherwise]handome[end if]. You would be a fool for trying to outsmart [him of mechanic].'[or]The patrons in the hotel are rather rude, but they will offer you money in exchange for your services. If you aren't saving yourself for anyone, you could take advantage...'[or]Some sex toys are enchanted. Be sure to wear them properly to take advantage of their magic.'[at random][roman type][line break]".

Unicorn ends here.
