Unicorn by Monster begins here.

Unicorn is a monster. Unicorn is intelligent. Unicorn is male. Understand "the unicorn" as unicorn.[so he can be purloined] The text-shortcut of unicorn is "uni".

To decide which number is the girth of (M - a unicorn):
	decide on 2.

To decide which number is the semen load of (M - unicorn):
	decide on 4.

To say LongDickDesc of (M - unicorn):
	if full-lady fetish is 1, say "small strap-on";
	otherwise say "small [manly-penis]".

Definition: A unicorn is willing to urinate if mythical creature fetish is 1.

[Definition: unicorn is willing to masturbate: decide yes.]

To say speech style of (M - unicorn):
	say second custom style.

Definition: a unicorn is father material: decide no.

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

Definition: unicorn is presenting as male: decide no.

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

To compute (M - unicorn) protecting against (X - a monster):[if you are having sex, he'll get a bit turned on]
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
		say "[BigNameDesc of M] fondles [his of M] crotch as [he of M] watches you.";
	otherwise:
		say "[BigNameDesc of M] watches you, unable to conceal how turned on [he of M] is.";
		if a random number between 1 and 3 is 1, increase the blue-balls of M by 1.

To say PissDrinkThreat of (M - unicorn):
	say "[speech style of M]'[one of]Drink it! Drink it all[or]I-I[']m gonna make you a toilet[or]I-I want to see you drink it[in random order]!'[roman type][line break]Something about the heat radiating off [his of M] [DickDesc of M] seems to promise a punishment if you don't let some in your mouth.".

To say UrinationFlav of (M - a unicorn):[Should only happen when she's "awakened"]
	say "[BigNameDesc of M] holds [his of M] [LongDickDesc of M] inches away from your face, [one of]sighing in relief[or]furrowing [his of M] brows[or]shivering with relief[at random] as a stream of [urine] flows from the tip.[if the humiliation of the player < HUMILIATION-MODEST + 1500 and the urine taste addiction of the player < 7][line break][variable custom style][line break]This can't be happening[one of].[or] again![stopping][roman type][line break][end if]".

To say PresentAcceptanceFlav of (M - unicorn):[TODO: more interesting]
	say "[speech style of M]'[one of]You'd do that for me?'[or]Yes! Finally!'[stopping][roman type] [BigNameDesc of M] seems convinced by your request!".

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
		if C is clothing:
			say "Your [printed name of C] bursts into flame, instantly disappearing in a flash of painful cinders. The thought of that pain seems to fill in the space left by your clothes.";
			destroy C;
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
		otherwise say "[line break][speech style of M]'[one of]Lemme cum inside![or]I-I'll put it all inside...'[or]It's ok if it's not my ass.'[or]Can I cum inside? Y-you probably don't mind...'[or]D-do I have to pull out? It- it's probably better that I don't...'[at random][roman type]".

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

To compute unique death of (M - unicorn):[TODO: unicorn horn]
	say "The [noun] silently slumps to the ground, dead.";
	let D be unicorn-horn;
	if D is off-stage:
		now D is in the location of the player;
		say "The horn on [his of M] head detaches, rolling in a small arc along the ground.";
		compute autotaking D.

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
	say "[speech style of M]'[one of]A-as long as you're willing.'[or]W-well, since you put it like that...'[or]O-oh, its really ok?'[at random][roman type][line break]".

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
	say "[speech style of M]'If you ever do get assaulted, never underestimate the power of admitting your assailant's superiority and pleading for mercy. You never know, it might just soften their heart.'[roman type][line break]";
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
	say "[speech style of M]'[one of]Don't put so much stock in condoms. Sometimes they break, and some men simply prefer unprotected sex. If you ask me, they deserve it.'[or]The mechanic in the hotel is handsome, and also cunning. You would be a fool for trying to outsmart [him of M].'[or]The patrons in the hotel are rather rude, but they will offer you money in exchange for your services. If you aren't saving yourself for anyone, you could take advantage...'[or]Some sex toys are enchanted. Be sure to wear them properly to take advantage of their magic.'[at random][roman type][line break]".

Unicorn ends here.
