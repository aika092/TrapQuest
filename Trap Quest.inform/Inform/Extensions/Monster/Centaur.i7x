Centaur by Monster begins here.

Centaur is a monster. Centaur is intelligent. The text-shortcut of centaur is "cttm". Understand "templar" as centaur. Centaur is male. Centaur can be shieldblocked or not shieldblocked.

Figure of Centaur is the file "NPCs/Forest/centaur1.jpg".
To decide which figure-name is the monster-image of (M - centaur):
	decide on the figure of centaur.

To say MediumDesc of (M - centaur):
	say "centaur templar".

To say MonsterDesc of (M - centaur):
	say "This armoured [man of M] has the body of a horse from the waist down, with a [LongDickDesc of M] hanging down between [his of M] legs. Aside from [his of M] head, [his of M] torso is protected by a bit of ornate armour, and [he of M] is holding a large steel sword in one strong hand and a medium sized shield in the other. [big his of M] wispy black hair flows behind [him of M] as if constantly caught by the wind. A [LongDickDesc of M] dangles between [his of M] hind legs.".
	[say "This armoured [man of M] has the body of a horse from the waist down, with a [LongDickDesc of M] hanging down between [his of M] legs. Aside from [his of M] head, [his of M] entire torso is covered by a set of silver plate mail, with a large, circular buckler attached to one of [his of M] arms. [big his of M] fiery red hair, which matches the fur of [his of M] lower half, is drawn back into a ponytail.".]

Definition: a centaur is raunchy: decide yes.

Definition: centaur is presenting as male if lady fetish is 2.

Definition: a centaur is woods dwelling if the player is the donator and diaper quest is 0.

[This is the spawn potential centaur rule:
	if a random number between 1 and 2 is 1 and unicorn is not alive:
		summon centaur in the woods.
The spawn potential centaur rule is listed in the setting up woods monsters rules.]

Definition: centaur is controlling: decide no.[She can't exactly reach]

Definition: centaur is musky: decide yes.
Definition: centaur is a tripper: decide no.
Definition: centaur is father material: decide no.[soon....]
Definition: centaur is throater: decide yes.

To say LongDickDesc of (M - centaur):
	say "massive 2-foot equine [DickDesc of M]".

To say DickDesc of (M - centaur):
	if lady fetish is 2 or futanari fetish is 1, say manly-penis;
	otherwise say "strap-on".

To say cockhead of (M - centaur):
	say "flat, [if full-lady fetish is 1]plastic[otherwise]bestial[end if] [one of]cockhead[or]tip[or]bellend[or]dicktip[in random order]".

To set up (M - centaur):
	if mythical creature fetish is 0 or diaper quest is 1 or the player is not the donator, destroy M;
	reset M;
	now the monstersetup of M is 1;
	now the raw difficulty of M is the starting difficulty of M;
	if doomed is 5, DifficultyUp M by 1;
	now the health of M is the maxhealth of M.

To decide which number is the starting difficulty of (M - centaur):
	decide on 12.

To decide which number is the maxhealth of (M - centaur):
	if tutorial is 1, decide on 99999;
	decide on 3 + ((the difficulty of M * 10) / 2).

To decide which number is the girth of (M - centaur):
	decide on 6;

To say SummoningFlav of (M - centaur):
	if M is in the location of the player, say "You hear a very sexual sounding sigh, followed by a short prayer. Several seconds later, a heavily armoured [man of M] with the lower body of a horse leaps out out of the statue, landing on the ground with a resounding *clop*.";
	otherwise say "You hear the clopping of hooves nearby.".


To say PregGrowth of (M - centaur):
	say "the centaur foal".

To compute labour to (M - centaur):
	if M is regional and M is alive:
		compute pregnancy clothing displacement;
		say "[PregFlav][if the father is in the location of the player]The [father][otherwise]The [father] appears almost as if on cue! [big he of M][end if] drops to [his of M] knees, supporting your back as you push out an adorable centaur foal. You watch quietly as your newborn child wobbles to [one of]her[or]his[cycling] feet.[line break][speech style of M]'[one of]How do you feel, [']Mommy[']?'[or]Moments like this make it all worth it.'[stopping][roman type][line break]The [father] stands up, ruffling your [one of]daughter's[or]son's[cycling] hair as [he of M] gently grabs [one of]her[or]his[cycling] wrist.[line break][speech style of M]'[one of]Don't worry, I'll take care of everything. Come with me, little one!'[or]Come with Daddy. Your mommy needs her rest.'[stopping][roman type][line break]The two of them walk off together, leaving you to recover from your ordeal.";
		if the father is in the location of the player:
			say "For some reason, you are filled with a sense of deep fulfilment. You feel great!";
			StrengthUp 1;
			DexUp 1;
			IntUp 1;
	otherwise if M is alive:
		Delay Labour.

Part 1 - Misc Flavour

To say speech style of (M - centaur):
	say second custom style.

[To compute kneeling reaction of (M -centaur):
	say "".]

Part 2 - Perception

To decide which number is the bimbo tolerance of (M - centaur):
	decide on 18.

To decide which number is the outrage tolerance of (M - centaur):
	if the class of the player is priestess or the class of the player is cultist, decide on 13;
	decide on 8.

To compute perception of (M - centaur):
	now M is interested;
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]";
	if the class of the player is succubus:
		say "[BigNameDesc of M][']s face scrunches with hostility![line break][speech style of M]'[one of]Yet another demon?! There's no end to them! Have at you!'[or]Begone, demon! Have at you!'[or]Demon! Have at you!'[at random][roman type][line break]";
		anger M;
	otherwise:
		compute appearance assessment of M;
		if M is unfriendly:
			say "[big he of M] takes a combative stance!".

To compute appearance assessment of (M - centaur):
	if the class of the player is worshipper:
		FavourDown M by 4;
		if M is unfriendly:
			if M is mating, say "[BigNameDesc of M] snarls.[line break][speech style of M]'[if the pregnancy of the player is 1 and the father is infernal]Damn it! They've already desecrated you! I have no choice but to heal you with the power of love!'[otherwise][one of]Those filthy devils can't desecrate your womb if I fill it with something first!'[or]The mother of my children, fraternizing with devils...I can't stand it anymore! I'll change your ways with the power of love!'[in random order][end if][roman type][line break]";
			otherwise say "[BigNameDesc of M] snarls.[line break][speech style of M]'[one of]You dirty imp fucker! I'll make you change your disgusting ways!'[or]Devil lover! I'll force you to repent!'[or]I'll fuck that evil religion right out of you!'[in random order][roman type][line break]";
		otherwise:
			if M is mating, say "[BigNameDesc of M] curls [his of M] lip.[line break][speech style of M]'[one of]Even if you're the mother of my children, worshipping devils is...'[or]It's hard to tolerate, you know...[if the pregnancy of the player is 1 and the father is infernal]knowing the mother of my children has been desecrated in such a manner.'[otherwise]knowing those devils might defile the mother of my children.'[end if][or]A fine woman like you should have no business with devils. Please, you must change your ways.'[in random order][roman type][line break]";
			otherwise say "[BigNameDesc of M] curls [his of M] lip.[line break][speech style of M]'[one of]A devil worshipper...You know, there's still time for you to change your ways.'[or]I have ways to make you repent, devil worshipper. There's still time, you know.'[or]Ugh. You'll have to repent sooner or later, devil worshipper.'[in random order][roman type][line break]";
	otherwise if the appearance of the player > the outrage tolerance of M:
		FavourDown M by 2;
		if M is unfriendly:
			say "[BigNameDesc of M][']s eyes [if asshole is lewdly exposed]immediately settle on your exposed [asshole][otherwise]hungrily rove your body[end if] as [he of M] licks [his of M] lips.[line break][speech style of M]'[if M is mating and the pregnancy of the player is 0]Time to put another bun in your oven![otherwise][one of]I challenge you to a duel!'[or]I challenge you! Face me!'[or]Let's duel! Right now, before I go soft!'[at random][end if][roman type][line break]";
		otherwise if M is groping:
			compute grope of M;
		otherwise: [Duel totally isn't a euphemism for anything. Nope. Definitely not.]
			if M is mating and the pregnancy of the player is 0:
				say "[BigNameDesc of M][']s eyes rove your body.[line break][speech style of M]'[one of]You're just begging to get knocked up again, aren't you?'[or]Mmm, I can't wait to put another bun in that oven.'[or]You look perfect. The only thing you're missing now is a baby bump.'[in random order]";
			otherwise if the class of the player is cowgirl or the class of the player is puppygirl or the class of the player is catgirl or the class of the player is bunny:
				say "[BigNameDesc of M][']s eyes rove your body.[line break][speech style of M]'[one of]What a good looking...stance. Wanna duel, [player-class]?'[or]Wow, a [player-class]. And a...*tough* looking one too. Wanna duel?'[or]You look...*strong* for a [player-class]. We should duel each other sometime.'[in random order][roman type][line break]";
			otherwise:
				say "[BigNameDesc of M][']s eyes widen as [his of M] gaze [if asshole is lewdly exposed]settles on your exposed [asshole][otherwise]roves your body[end if].[line break][speech style of M]'[one of]You look...strong. Wanna duel?'[or]You look like a...warrior. I really want to fight you.'[or]Up for a duel? You look like you are...'[or]Feel like duelling me? You duel all the time, don't you...'[in random order][roman type][line break]";
	otherwise if the player is top-wardrobe-malfunctioning:
		compute default nip slip reaction of M;
	otherwise if the class of the player is priestess or the class of the player is cultist:
		let H be a random worn headgear;
		say "[BigNameDesc of M][']s eyes fixate on your [ShortDesc of H], and then briefly move down your body.[line break][speech style of M]'[one of]A real altar [boy of the player]...wow...'[or]It's the altar [boy of the player]...'[stopping][roman type][line break]";
	otherwise if M is mating:
		say "[BigNameDesc of M] cocks an eyebrow as [his of M] gaze moves up and down your body.[line break][speech style of M]'[one of]Hey there, baby momma.'[or]Hey [']mommy.['] You're looking sexy.'[or][if the pregnancy of the player is 0]Let me know when you want to try for another baby.'[otherwise]That's a beatiful baby bump you have there.'[end if][in random order][roman type][line break]";
	otherwise if the class of the player is cowgirl or the class of the player is puppygirl or the class of the player is catgirl or the class of the player is bunny:
		say "[BigNameDesc of M] cocks an eyebrow as [his of M] gaze moves up and down your body.[line break][speech style of M]'[one of]What a sexy [player-class]...'[or]Wow, a [player-class]. [if the player is able to get pregnant]And a pretty fertile looking one too[otherwise]And a pretty hot one too[end if].'[or]Pretty sexy for a [player-class]...'[at random][roman type][line break]";
	otherwise if the class of the player is princess:
		let H be a random worn headgear;
		say "[BigNameDesc of M][']s eyes fixate on your [ShortDesc of H], and then briefly move down your body. [big he of M] straightens up in salute.[line break][speech style of M]'Your highness!'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] eyes briefly move up your body before focusing on your face.[line break][speech style of M]'Well met!'[roman type][line break]".

Part 3 - Combat

Section 1 - Protect and Attack

To say StrikingFlav of (M - centaur) on (B - a body part):
	say "[BigNameDesc of M] punches you [TargetName of B]!".

To say StrikingSuccessFlav of (M - centaur) on (B - a body part):
	say "[StrikingFlav of M on B][one of]That's going to leave a bruise[or]It's a direct hit[or]It connects powerfully with a loud THUD[or]It leaves a sore red mark where it hit[at random]!".

To say StrikingFailureFlav of (M - centaur) on (B - a body part):
	say "[StrikingFlav of M on B][one of]You manage to dodge the blow enough that it doesn't hurt.[or]The strike was too weak to hurt you.[or]By swiftly blocking the hit, you manage to avoid getting hurt.[at random]".

The centaur priority attack rules is a rulebook. The priority attack rules of centaur is the centaur priority attack rules.

This is the centaur raises shield rule:
	if the player is upright:
		let M be centaur;
		if M is not shieldblocked and a random number between 1 and 5 is 1 and M is unfriendly:
			say "[BigNameDesc of M] returns [his of M] sword to its sheath, raising up [his of M] shield.";
			now M is shieldblocked;
			rule succeeds;
		otherwise if M is shieldblocked:
			say "[BigNameDesc of M] keeps [his of M] shield raised defensively.";
			rule succeeds.
The centaur raises shield rule is listed last in the centaur priority attack rules.

This is the centaur lowers shield rule:
	let M be centaur;
	if M is shieldblocked and a random number between 1 and 2 is not 1:
		say "[BigNameDesc of M] lowers [his of M] shield and pulls out [his of M] sword.";
		rule succeeds.
The centaur lowers shield rule is listed first in the centaur priority attack rules.

Section 2 - Damage

To compute damage reaction of (M - centaur):
	if M is shieldblocked:[Counter!]
		say "[line break][speech style of M]'[one of]Hyah!'[or]Dumbass!'[or]Gotcha!'[at random][roman type][line break][BigNameDesc of M] waits for the moment just before your attack connects and suddenly bashes you with [his of M] shield!";
		now M is not shieldblocked;
		silently try kneeling;
		if the player is prone:
			say "[bold type]You are knocked off your feet![roman type][line break]";
	otherwise if M is uninterested or M is friendly:
		say "[big he of M] shrugs off the damage with a grin, and assumes a fighting stance!";
	otherwise:
		say DamageReaction (the health of M) of M.

To say DamageReactHealthy of (M - centaur):
	say "[big he of M] laughs as [he of M] [one of]shrugs off[or]ignores[at random] the damage.".

To say DamageReactDamaged of (M - centaur):
	say "[big he of M] [one of]takes the hit without flinching[or]uses [his of M] armour to lessen the hit[at random].".

To say DamageReactTired of (M - centaur):
	say "[big he of M] grunts as [he of M] [one of]endures the hit[or]weathers the hit[at random]!".

To say DamageReactWeak of (M - centaur):
	say "[BigNameDesc of M] [one of]wobbles as [he of M] take the hit[or]staggers as [he of M] weathers the hit[at random]!".

To compute unique banishment of (M - centaur):
	if gladiator-sword is off-stage:
		now gladiator-sword is in the location of the player;
		say "[BigNameDesc of M][']s [gladiator-sword] falls at your feet.";
		compute autotaking gladiator-sword.

Section 3 - Punishments

To compute kneeling reaction of (M - centaur):
	say "[BigNameDesc of M][']s lower half looms over you, [his of M] [LongDickDesc of M] drooling precum as [he of M] moves closer to you.";

To say PissDrinkThreat of (M - centaur):
	if the class of the player is succubus:
		say "[speech style of M]'[one of]Swallow it all, demon. You'll regret disobeying.'[or]I'll douse your evil flames, demon! Don't resist!'[or]It's my victory, demon. Now, savour the taste of defeat![in random order][roman type][line break]";
	otherwise if the class of the player is worshipper:
		say "[speech style of M]'[one of]Drink it! Repent!'[or]This is the fate of demon worshippers! Accept it and drink!'[or]Drink, demon lover! You must repent!'[in random order][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]I can't see my piss hitting your face, so make sure you drink it all.[or]I can't see you down there, so you might as well be a good sport and be my toilet.'[or]I won the duel, so drink it. That's fair.'[in random order].'[roman type][line break]".

To say UrinationFlav of (M - centaur):
	say "[BigNameDesc of M] [one of]bends [his of M] legs slightly[or]takes a tiny step forward[or]takes a tiny step back[at random], so [his of M] [LongDickDesc of M] is pointing directly at your face. [if the urine taste addiction of the player < 4][one of]Despite the clear warning, you aren't ready when[or]You are ready when[stopping][otherwise]You are delighted when[end if] a stream of [urine] floods out from the tip![if the humiliation of the player < HUMILIATION-MODEST + 1500 and the urine taste addiction of the player < 7][line break][variable custom style][line break]This can't be happening[one of].[or] again![stopping][roman type][line break][end if]".

To say NormalMouthPenetrationFlav of (M - centaur):
	if the oral sex addiction of the player < 8:
		say "[one of][BigFuckerDesc of M] steps over you, [his of M] [DickDesc of M] planting musky 'kisses' all over your face as it clumsily searches around for your mouth. [line break][first custom style]'Give up, already! You aren't go-'[roman type][line break][big he of M] finds [his of M] target at the worst possible time, and your sentence is interrupted by a [cockhead of M] plugging up your open mouth. It's too wide to actually get past your lips at first, but [he of M]'s pressing forward with so much force that you can't close your mouth, and after several seconds, [his of M] [DickDesc of M] pops in and begins to thrust.[or][BigFuckerDesc of M][']s [LongDickDesc of M] stiffens as [he of M] steps over you, drooling precum as it waves closer and closer to your face. [line break][first custom style]'No way. Take your freaky genitalia and go-'[roman type][line break][big he of M] throws [his of M] hips forward at the perfect moment, cutting you off as [his of M] [cockhead of M] wedges itself in your open mouth. You unsuccessfully try to close it, your jaws being forced wider and wider until finally, [his of M] shaft pops in and begins to thrust.[or][BigFuckerDesc of M] steps over you, [his of M] [DickDesc of M] smearing precum across your lips as [he of M] tries to push it into your mouth. You involuntarily open your mouth to wretch, only for [his of M] [cockhead of M] to form a seal against your lips. After that, [he of M] slowly brings up the pressure, forcing you to taste [his of M] precum directly as [he of M] forces your jaws to open little by little. Your own drool helps [him of M] reach the breaking point, and you groan helplessly as [his of M] [LongDickDesc of M] slides in and begins to thust.[in random order]";
	otherwise if the oral sex addiction of the player < 12:
		say "[one of][BigFuckerDesc of M] steps over you, [his of M] [DickDesc of M] planting musky 'kisses' all over your face as it clumsily searches around for your mouth. You obediently open your mouth, and wait quietly for for [his of M] 'kiss' to finally land on your lips. It happens on the twelth attempt, immediately followed by your partner pressing forward with such force that you couldn't close your mouth even if you wanted to. [big his of M] [cockhead of M] is too wide to get into your mouth at first, but after forcing your jaws open wider, [his of M] [DickDesc of M] pops in and begins to thrust.[or][BigFuckerDesc of M][']s [LongDickDesc of M] stiffens as [he of M] steps over you, drooling precum as it waves closer and closer to your face. You hesitate, but after a moment, you open wide, and [his of M] [cockhead of M] wedges itself in your open mouth. Having given up on resisting, you force your jaws to open wider and wider, until finally, [his of M] shaft pops in and begins to thrust.[or][BigFuckerDesc of M] steps over you, [his of M] [DickDesc of M] smearing precum across your lips as [he of M] tries to push it into your mouth. You open your mouth, and before you can have second thoughts, [his of M] [cockhead of M] forms a seal against your lips. After that, [he of M] slowly brings up the pressure, allowing you to taste [his of M] precum directly as [he of M] forces your jaws to open little by little. You don't have the willpower to keep resisting, and force your mouth open just wide enough for [his of M] [LongDickDesc of M] to slide in and begin to thust.[in random order]";
	otherwise:
		say "[one of][BigFuckerDesc of M] steps over you, [his of M] [DickDesc of M] planting musky 'kisses' all over your face as it clumsily searches around for your mouth. You enjoy it for a little while, but eventually you get impatient, jerking your head into [his of M] path to claim your 'kiss' for yourself. [big his of M] [cockhead of M] is too wide to get into your mouth at first, but after forcing your jaws open wider, [his of M] yummy [DickDesc of M] finally pops in and begins to thrust.[or][BigFuckerDesc of M][']s [LongDickDesc of M] stiffens as [he of M] steps over you, drooling precum as it waves closer and closer to your face. You eagerly open wide, sticking your tongue out as [his of M] [cockhead of M] wedges itself in your open mouth. Enthusiasm makes for a great lubricant, and after a moment [his of M] shaft pops in and begins to thrust.[or][BigFuckerDesc of M] steps over you, [his of M] [DickDesc of M] smearing precum across your lips as [he of M] tries to push it into your mouth. You hungrily open your mouth, working up a bit of drool as [his of M] [cockhead of M] forms a seal against your lips. After that, [he of M] slowly brings up the pressure, allowing you to taste [his of M] delicious precum directly as [he of M] forces your jaws to open little by little. Your own efforts help [him of M] reach the breaking point, and you emit a contented sigh as [his of M] [LongDickDesc of M] to slide in and begin to thust.[in random order]".

To say RingMouthPenetrationFlav of (M - centaur):
	say "[one of][BigFuckerDesc of M] steps over you, [his of M] [DickDesc of M] planting musky 'kisses' all over your face as it clumsily searches around for your mouth. Even when [he of M] finds [his of M] target, [he of M] gets held up when [his of M] [cockhead of M] can't fit through the gag ring. [if the oral sex addiction of the player > 6]Thankfully, [otherwise]Mercifully, [end if]that only keeps [him of M] for a few seconds before [he of M] pops through and slowly begins to thrust.[or][BigFuckerDesc of M][']s [DickDesc of M] stiffens as [he of M] steps over you, drooling precum as it waves closer and closer to your face. Completely boxed in by all four of [his of M] limbs, there's nothing you can do but sit there and take it as [he of M] forces [his of M] [cockhead of M] past the gag-ring and begins to thrust.[or][BigFuckerDesc of M] steps over you, [his of M] [LongDickDesc of M] drooling precum as it presses right up against your lips. [big his of M] tip gets caught on the outside of the gag for a moment before popping through, giving you ample opportunity to taste [his of M] potent musk before [he of M] slides all the way in and begins to thrust.[in random order]";

To say SexDollMouthPenetrationFlav of (M - centaur):
	say "[one of][BigFuckerDesc of M] steps over you, [his of M] [DickDesc of M] repeatedly punching you in the face as [he of M] searches around for the padded hole you call a mouth. Eventually, [he of M] finds it, and a incredibly humiliating squeaking noise rings out as several inches of equine shaft fill your mouth all at once and begin to thrust.[or][BigFuckerDesc of M] steps over you, [his of M] [LongDickDesc of M] drooling precum as it presses right up against your soft, plastic lips. [big his of M] bestial tip is just a bit larger than the hole, but [he of M] has more than enough lubrication to pop [his of M] way through. Lewd squeaking noises ring out as [he of M] begin to thrust.[in random order]";

To say FriendlyMouthPenetrationFlav of (M - centaur):
	if the sex addiction of the player < 5 or the oral sex addiction of the player < 3:
		say "[one of]You hesitantly open your mouth as [FuckerDesc of M] steps over you, forcing yourself not to pull away as [he of M] presses [his of M] [cockhead of M] right up against your lips. Tears well up in your eyes as you force your jaw to open up even wider, until finally, [his of M] shaft pops into your mouth.[or]You duck under [him of M], forcing yourself to lean forward and open your mouth for [his of M] [DickDesc of M]. Unfortunately, [his of M] shaft is just too wide to fit all at once and you're stuck in an incredibly degrading position of 'kissing' [his of M] [cockhead of M] until you finally force your jaw wide enough for [him of M] to slide in.[or][BigFuckerDesc of M]'s [DickDesc of M] drools precum as you duck under [him of M] and try to stretch your lips around [his of M] [cockhead of M]. The taste of [his of M] precum completely fills your mouth, and you try not to wretch as you move your tongue to the bottom of your mouth, adding that final bit of lubrication needed to let [his of M] [LongDickDesc of M] pop into your mouth.[in random order]";
	otherwise if the oral sex addiction of the player < 7:
		say "[one of]You open your mouth as [FuckerDesc of M] steps over you, giving [his of M] [cockhead of M] an experimental lick as [he of M] presses it right up against your lips. Tears well up in your eyes as you force your jaw to open up even wider, until finally [his of M] [LongDickDesc of M] pops into your mouth.[or]You duck under [him of M], leaning forward as you open your mouth for [his of M] [DickDesc of M]. Unfortunately, [his of M] shaft is just too wide to fit all at once and you're stuck 'kissing' [his of M] [cockhead of M] until you finally force your jaw wide enough for [him of M] to slide in.[or][BigFuckerDesc of M]'s [DickDesc of M] drools precum as you duck under [him of M] and plant your lips on [his of M] [cockhead of M]. [big his of M] precum leaks freely into your mouth, and you get a thorough taste of it as you swirl your tongue around the bottom of [his of M] shaft, adding that final bit of lubrication needed to let [his of M] [LongDickDesc of M] pop into your mouth.[in random order]";
	otherwise:
		say "[one of]You open your mouth as [FuckerDesc of M] steps over you, giving [his of M] [cockhead of M] an experimental lick as [he of M] presses it right up against your lips. Tears well up in your eyes as you force your jaw to open up even wider, until finally [his of M] [LongDickDesc of M] pops into your mouth.[or]You duck under [him of M], dragging your tongue up and down [his of M] shaft before moving up to [his of M] [cockhead of M]. 'Unfortunately,' its still too big to fit all at once, and you spend a couple seconds making out with [his of M] [DickDesc of M] before your jaw finally opens wide enough to let [him of M] slide in.[or][BigFuckerDesc of M]'s [DickDesc of M] drools precum as you duck under [him of M] and start stretching your lips around [his of M] [cockhead of M]. [big his of M] precum leaks freely into your mouth, and you eagerly lick it up, adding that final bit of lubrication needed to let [his of M] [LongDickDesc of M] pop into your mouth.[in random order]".

To say OralResisting of (M - centaur):
	say "[one of]You try as hard as you can to pull away, but [his of M] shaft is too wide to get out of your mouth![or]You pull up, but there's just too much [DickDesc of M] to get out of your mouth![or]You grunt and try to pull away, but [his of M] shaft is too wide to get out of your mouth![or]You fight [his of M] as much as you can, but in the end, [his of M] [DickDesc of M] stays in your mouth and you keep sucking it.[or][or]You push back against [him of M], but it's still no use![or][if the relevant sex addiction of M < 6]You stay completely still, blatantly refusing to do anything at all to pleasure [him of M].[otherwise if the relevant sex addiction of M < 14]You stay completely still, knowing that if you willingly pleasure [him of M] you might like it and not stop.[otherwise]You stay completely still, hoping [he of M] might *punish* you for slacking off.[end if][in random order]".

To say OralResistingResponse of (M - centaur):
	say "[one of][BigFuckerDesc of M] seems determined to get [himself of M] off with or without your help![or][BigFuckerDesc of M] thrusts roughly, gagging you repeatedly with [his of M] huge tool.[or][BigFuckerDesc of M] forces you to suck [his of M] [DickDesc of M] whether you like it or not![or][BigFuckerDesc of M] thrusts with no regard for your ability to breathe![or][BigFuckerDesc of M] continues thrusting with no acknowledgement of your protests.[or][BigFuckerDesc of M] continues thrusting despite your protests![in random order]".

To say OralSubmissionResponse of (M - centaur):[The centaur can't really grab your head, so we combine both versions of this flavour function]
	say "[one of]You bob your head up and down, [if the humiliation of the player < 10000]eyes screwed shut in shame[otherwise]unable to look away[end if] as you submissively polish [his of M] shaft.[or]You make [if the oral sex addiction of the player < 4]quiet[otherwise if the oral sex addiction of the player < 6]distinct[otherwise]exaggerated[end if] slurping noises as you suck [FuckerDesc of M][']s [DickDesc of M], [if the oral sex addiction of the player < 3]determined to get this over and done with as soon as possible[otherwise if the oral sex addiction of the player < 5]determined to get [him of M] off as soon as possible[otherwise]determined to get [him of M] shooting off in your mouth as soon as possible[end if].[or][BigFuckerDesc of M] moans appreciatively as you [if the oral sex addiction of the player < 4]quietly [otherwise if the oral sex addiction of the player > 5]noisily [end if]suck [his of M] [DickDesc of M], [if the sex addiction of the player < 7]making you feel even more like a dirty slut. If that was even possible.[otherwise if the sex addiction of the player < 12]silently assuring you that you[']re doing a good job.[otherwise]allowing you to do all the work like the dirty slut you are.[end if][or][BigFuckerDesc of M] rolls [his of M] hips to complement the [if the oral sex addiction of the player > 5]enthusiastic [otherwise if the oral sex addiction of the player < 4]slow [end if]bobbing of your head.[or][BigFuckerDesc of M] allows you to do most of the work, [if the sex addiction of the player < 7]picking up the slack whenever the shame gets to be too much.[otherwise if the oral sex addiction of the player < 6]picking up the slack whenever you get tired.[otherwise]grunting with pleasure as you drag your tongue up [his of M] shaft.[end if][in random order]".

To say NearingClimaxOral of (M - centaur):
	say "[one of]You can feel [FuckerDesc of M]'s [DickDesc of M] start twitching in your mouth[or][BigFuckerDesc of M] breathes more and more rapidly[or][BigFuckerDesc of M]'s [DickDesc of M] noticeably stiffens[in random order]. [big he of M] must be [one of]close[or]ready to cum[or]close to finishing[at random]!".

Definition: centaur is willing to bukkake:
	if the reaction of the player is 0:
		let C be 4;
		if the player is a blowjob slut, decrease C by 1;
		if a random number between 1 and C > 1, decide yes;
	decide no.

Definition: centaur is willing to tongue creampie: decide no.[Just because I don't want to write it.]
Definition: centaur is aiming a bukkake: decide yes.[Because I don't want to write the player dodging it.]

To compute failed facial dodging of (M - centaur):
	get failed facial dodge image for M;
	say FailedFacialDodge of M;
	let S be the semen load of M / 3;
	CumFaceUp S;
	CumTitsUp S;
	CumBellyUp S;
	check forgiveness of M.

To say FacialBrokenFree of (M - centaur):
	say "[one of]You carefully work [his of M] shaft out of your throat, all too aware of [his of M] [cockhead of M] expanding bit by bit. Luckily, you pop [him of M] free just before its too late and force your jaws open wide enough to let [him of M] slide out of your mouth.[or]You struggle as [his of M] [cockhead of M] begins to expand little by little, cutting off more and more of your already limited airway as you try to coax it out of your throat. Somehow, you manage to succeed before its too late, practically unhinging your jaw as you extract [him of M] from your mouth.[or]Every throb of [his of M] shaft makes [him of M] that much stiffer and harder, and you struggle to get [him of M] out of your mouth before it reaches the point of no return. You make it in time, and although you practically dislocate your jaw in the process, you manage to free [him of M] from your mouth.[in random order]".

To say FailedFacialDodge of (M - centaur):
	say "[one of]Unfortunately, the effort leaves you too lightheaded to consider what happens next, and you are caught off guard as a shotgun blast of centaur [semen] catches you right in the chest. The wind is instantly knocked out of you, and you collapse backward as the rest of [his of M] load splatters across your face and stomach.[or][BigNameDesc of M]'s [DickDesc of M] throbs, and half a second later, a shotgun blast of [semen] hits you directly in the chest. You're so lightheaded that the next blast, which hits you in the face, causes you to lose your balance. The third blast hits you in the stomach, knocking you into the perfect position to receive the rest of [his of M] load across the entire front half of your body.[or]A moment later, a shotgun blast of [semen] hits you right in the chest, knocking you flat on your back as the rest of your partner's load splatters across your face and belly.[or]You're so winded that you immediately collapse, leaving you defenseless as [NameDesc of M] covers your face, chest and stomach with several shotgun blasts of fresh [semen].[in random order]".

To say ResistedOralCreampie of (M - centaur):
	say "[one of]You carefully work [his of M] shaft out of your throat, all too aware of [his of M] [cockhead of M] expanding bit by bit. You successfully pop [him of M] free, but no matter how hard you try, your jaws just won't open wide enough to let [him of M] out of your mouth.[or]You struggle as [his of M] [cockhead of M] begins to expand bit by bit, cutting off more and more of your already limited airway as you try to coax it out of your throat. You somehow manage to succeed before its too late, but by then you're too lightheaded to go any further.[or]Every throb of [his of M] shaft makes [him of M] that much stiffer and harder, and you struggle to get [him of M] out of your mouth before it reaches the point of no return. Unfortunately, your jaws simply refuse to open any wider.[in random order] Your heart [if the semen taste addiction of the player < 8]sinks[otherwise if the semen taste addiction of the player < 12]skips a beat[otherwise]flutters[end if] as [NameDesc of M]'s [DickDesc of M] spasms powerfully, and [one of][he of M] groans with pleasure as [he of M] fills your mouth with the first of several shotgun blasts of [semen][or]the first of several shotgun blasts of [tasted-semen] explode into your mouth[or]half a second later, your mouth is filled with the first of several shotgun blasts of [tasted-semen].[or]half a second later, explosions of [semen] fill your mouth in rapid succession.[in random order]".

To say DefaultDeepthroatCreampie of (M - centaur):
	say "[one of][BigNameDesc of M]'s [DickDesc of M] thickens just enough to completely fill your esophagus, [his of M] [cockhead of M] forming an airtight seal as [his of M] shaft begins to powerfully spasm.[or][BigNameDesc of M]'s [cockhead of M] thickens only slightly, but that's just enough to form an airtight seal as [his of M] shaft begins to powerfully spasm.[or][BigNameDesc of M]'s [DickDesc of M] thickens only slightly, but that's more than enough for [his of M] [cockhead of M] to form a completely airtight seal as [his of M] shaft begins to powerfully spasm.[in random order] [one of]An instant later, [semen] shoots directly into your stomach, [his of M] balls visibly flexing as the first blast is followed by several more.[or][big he of M] practically screams with pleasure as [he of M] jizzes straight down your throat, thoroughly emptying the contents of [his of M] balls into your stomach[or][big he of M] groans with pleasure as [he of M] erupts, filling your stomach with blast after blast after thick, creamy blast of hot [semen][or]Half a second later, you feel [his of M] [semen] exploding into your stomach, [his of M] balls flexing as they thoroughly empty themselves into your [if the semen addiction of the player < 8]unwilling[otherwise if semen addiction of the player < 12]not so unwilling[otherwise]oh so willing[end if] receptacle.[in random order] You take little solace in the fact that you didn't have to taste any of it, your belly stretching painfully as it struggles to contain your partner's huge load.".

To say SwallowDemand of (M - centaur):
	if the class of the player is succubus:
		say "[speech style of M]'[one of]Swallow it all, demon. You'll regret disobeying.'[or]Don't resist, demon! Swallow every last drop!'[or]It's my victory, demon. Now, savour the taste of defeat![in random order][roman type][line break]";
	otherwise if the class of the player is worshipper:
		say "[speech style of M]'[one of]Swallow it! Repent!''[or]This is the fate of demon worshippers! Accept it and drink!'[or]Swallow, demon lover! You must repent!'[in random order][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Its not every day I get a blowjob, so could you swallow?[or]I can't see you down there, so you might as well be a good sport and swallow'[or]I won the duel, so swallow it. That's fair.'[in random order].'[roman type][line break]".

To check forgiveness of (M - centaur):[she can't see whatever show you just put on, so she never forgives you]
	compute angry punishment of M.

To say BreastsPenetrationFlav of (M - centaur):
	say "[one of][BigFuckerDesc of M] uses [his of M] hooves to force you onto your back, then slowly kneels down ontop of you. [big his of M] [LongDickDesc of M] is firmly sandwhiched between your bodies, with your [ShortDesc of breasts] smushed on either side as [he of M] slowly begins to move back and forth.[or][BigFuckerDesc of M] forces you to get on your back, [his of M] [LongDickDesc of M] waving from side to side as [he of M] steps over you and slowly drops [his of M] weight. [big he of M] sandwiches [his of M] shaft between your [ShortDesc of breasts], [his of M] body weight keeping them firmly pressed together as [he of M] slowly begins to thrust between them.[or][BigNameDesc of M] uses [his of M] feet to force you onto your back before kneeling down ontop of you, wedging [his of M] [DickDesc of M] between your [ShortDesc of breasts]. [big his of M] [cockhead of M] bumps up against your chin as [he of M] begins to move back and forth.[in random order]".

To say FriendlyBreastsPenetrationFlav of (M - centaur):
	let T be the titfuck addiction of the player;
	say "[one of]You crawl underneath [FuckerDesc of M], wrapping your [ShortDesc of breasts] around [his of M] [DickDesc of M] as [he of M] kneels down ontop of you.[or]You lie back and allow [NameDesc of M] to kneel ontop of you, [his of M] [LongDickDesc of M] sticking out from between your breasts. [if T < 3]Swallowing your shame[otherwise]Marveling at its huge size[end if], you push them together and gently begin to pump.[or]You lie down under [NameDesc of M] as [he of M] drops to [his of M] knees, sandwiching [his of M] [LongDickDesc of M] between your bodies. It throbs gently as you push your [ShortDesc of breasts] up around it and slowly begin to pump.[in random order]".

To say TitfuckResistFlav of (M - centaur):
	let C be a random worn top level covering clothing;
	say "[one of]You squirm helplessly, but you're completely trapped under [his of M] weight![or]You do everything you can to push [him of M] away, you simply don't have the leverage from your position on your back![or]You struggle, but [he of M]'s just too heavy![or]You squirm, but [his of M] shaft acts like a wedge, forcing you to rub up against it if you want to go anywhere[or]You try to squirm out from under [him of M], but [he of M] keeps you firmly pinned under [his of M] weight.[in random order]".

To say TitfuckForceFlav of (M - centaur):
	let C be a random worn top level covering clothing;
	say "[one of][BigFuckerDesc of M][']s weight keeps your [ShortDesc of breasts] pushed together around [his of M] [DickDesc of M] as [he of M] thrusts between them.[or][BigFuckerDesc of M] continues to powerfully thrust between your [ShortDesc of breasts]![or]Your [ShortDesc of breasts] jiggle[if the largeness of breasts > 10] obscenely[end if] as [FuckerDesc of M] continues thrusting between them![or][BigFuckerDesc of M][']s [LongDickDesc of M] repeatedly smacks your chin as [he of M] roughly thrusts between your [ShortDesc of breasts]![or][BigFuckerDesc of M] continues to roughly grind [his of M] [DickDesc of M] between your [ShortDesc of breasts]![in random order]".

To compute cleavage climax of (M - centaur):
	TitfuckAddictUp 1;
	TimesSubmittedUp M by 1;
	say CleavageClimaxFlav of M;
	CumHairUp 1;
	CumFaceUp the semen load of M;
	CumTitsUp 1;
	if M is interested, orgasm satisfy M;
	otherwise orgasm dislodge M.

To say CleavageClimaxFlav of (M - centaur):
	say "[one of][BigFuckerDesc of M]'s [DickDesc of M] throbs powerfully as [he of M] cums, covering your face, hair and chest (mostly your face) with thick shotgun blasts of fresh [semen].[or][BigFuckerDesc of M] groans as [his of M] [DickDesc of M] spasms, blasting your face, hair, face, tits, face, face and especially your face with thick, sticky [semen].[or]The [LongDickDesc of M] between your breasts stiffens before [semen] explodes out of [his of M] opening. [big his of M] load mostly hits your face, splattering your hair and chest with tiny white droplets[in random order]".

To say SpitroastPrep of (M - centaur) with (O - a monster) in (F - asshole):
	say "[BigFuckerDesc of M] uses a hoof to force you onto all fours, [his of M] [LongDickDesc of M] prodding your [AssDesc] as [he of M] clumsily lines it up with your hole.".

To say ThreesomePrep of (M - centaur) with (N - a monster) in (F - asshole):
	if N is intelligent, say "[BigFuckerDesc of N] flips you over so you're face to face, holding you by the waist as [FuckerDesc of M] clumsily lines up [his of M] [DickDesc of M] with your hole.";
	otherwise say "With some difficulty, [BigFuckerDesc of M] flips you onto your belly without disturbing [FuckerDesc of N]. [big he of N] keeps fucking you as [FuckerDesc of M] lines up [his of M] [LongDickDesc of M] with your hole.".

To say FoursomePrep of (M - centaur) with (N - a monster) and (O - a monster) in (F - asshole):
	if N is intelligent, say "[BigFuckerDesc of O] keeps using you as [FuckerDesc of N] flips you over and firmly grabs your waist. [BigFuckerDesc of M][']s [LongDickDesc of M] prods your [AssDesc] as [he of M] clumsily lines it up with your final unguarded hole.";
	otherwise say "With some difficulty, [BigFuckerDesc of M] flips you onto your belly without disturbing [FuckerDesc of N] or [FuckerDesc of O]. They continue to fuck you as [FuckerDesc of M] lines up [his of M] [LongDickDesc of M] with your hole.".

To say TwosomePrep of (M - centaur) in (F - asshole):
	say "[BigFuckerDesc of M] steps over you, [his of M] [LongDickDesc of M] dragging a line of 'drool' across your ass as [he of M] lines it up with your hole.".

To say FriendlyPenetrationFlav of (M - centaur) in (F - asshole):
	say PenetrationFlav of M in F.

To say AnalDefloweringFlav of (M - centaur):
	if the sex addiction of the player < 7:
		say "[BigFuckerDesc of M][']s flat tip presses insistently against your sphincter, smearing it with copious precum. You desperately struggle, causing most of your buttcrack to get covered in 'lube' as [he of M] slowly increases the pressure. Trapped underneath [his of M] huge lower body, you have no choice but to lie there and experience the strange, alien sensation of [his of M] wide shaft forcing its way into your [asshole]. Since it's your first time, [he of M] leaves you a moment to get used to [him of M] before [he of M] begins to thrust.";
	otherwise if the sex addiction of the player < 12:
		say "[BigFuckerDesc of M][']s flat tip presses insistently against your sphincter, smearing it with copious precum. Your half-hearted struggling causes most of your buttcrack to get covered in [his of M] 'lube', and since you're trapped underneath [his of M] huge lower body, there's nothing you can do but lie there and experience the strange, alien sensation of [his of M] [DickDesc of M] forces its way into your [asshole]. Since it's your first time, [he of M] leaves you a moment to get used to [him of M] before [he of M] begins to thrust.";
	otherwise:
		say "[BigFuckerDesc of M] drives [his of M] weight forward, causing [his of M] shaft to press insistently against your sphincter. [big he of M] repeats the process several times, gradually ramping up the pressure. Finally, your [asshole] starts to give, and [FuckerDesc of M] grunts as [he of M] slowly, so slowly, forces [his of M] [DickDesc of M] into your virgin anal ring. Since it's your first time, [he of M] leaves you a moment to get used to new, exotic sensation [him of M] before [he of M] begins to thrust.".

To say VeryTightAssholePenetrationFlav of (M - centaur):
	let O be a random monster penetrating face;
	if the relevant sex addiction of M < 7:
		say "[one of][BigFuckerDesc of M] drives [his of M] weight forward, causing [his of M] shaft to press insistently against your sphincter. [big he of M] repeats the process several times, gradually ramping up the force. Finally, your [asshole] starts to give, and [FuckerDesc of M] grunts as [he of M] slowly, painfully forces the flat head of [his of M] [DickDesc of M] through your reluctant anal ring. You [if O is monster]yell into [FuckerDesc of O] as [FuckerDesc of M][otherwise]curse through the pain as [he of M][end if] slowly slides in.[or][BigFuckerDesc of M][']s flat tip presses insistently against your sphincter, smearing it with copious precum. You desperately struggle, causing most of your buttcrack to get covered in 'lube' as [he of M] slowly increases the pressure. Trapped underneath [his of M] huge lower body, there's nowhere you can really go, and you are forced to [if O is monster]groan[otherwise]grit your teeth[end if] through the pain as [he of M] slowly, painfully, so painfully, forces [his of M] wide shaft into your tight [asshole].[at random] [big he of M] leaves you a moment to get used to [him of M] before [he of M] begins to thrust.";
	otherwise if the relevant sex addiction of M < 12:
		say "[BigFuckerDesc of M][']s flat tip presses insistently against your sphincter, smearing it with copious precum. Your half-hearted struggling causes most of your buttcrack to get covered in [his of M] lube, and since you're trapped underneath [his of M] huge lower body, there's nothing you can really do as [FuckerDesc of M] slowly increases [his of M] force. You do your best to brace yourself as [he of M] slowly, painfully forces [his of M] wide shaft into your tight [asshole]. [big he of M] leaves you a moment to get used to [him of M] before [he of M] begins to thrust.";
	otherwise:
		say "[BigFuckerDesc of M] drives [his of M] weight forward, causing [his of M] shaft to press insistently against your sphincter. [big he of M] repeats the process several times, gradually ramping up the pressure. Finally, your [asshole] starts to give, and [FuckerDesc of M] grunts as [he of M] slowly, so slowly, forces the flat head of [his of M] [DickDesc of M] through your rigid anal ring. [big he of M] leaves you a moment to get used to [him of M] before [he of M] begins to thrust.".

To say LessTightAssholePenetrationFlav of (M - centaur):
	if the relevant sex addiction of M < 7:
		say "[one of][BigFuckerDesc of M] drives [his of M] weight forward, causing [his of M] shaft to press insistently against your sphincter. [big he of M] repeats the process several times, you do your best to clench yourself shut, but still, you can feel your [asshole] give a little bit more each time. Finally, your stamina fails, and you feel the flat head of [his of M] [DickDesc of M] pop past your anal ring.[or][BigFuckerDesc of M][']s flat tip presses insistently against your sphincter, smearing it with copious precum. You struggle desperately, but trapped underneath [his of M] huge lower body, all you accomplish is getting most of your buttcrack covered in 'lube'. It's only a matter of time before your [asshole] starts to give, and [his of M] wide shaft slowly squeezes past your tight anal ring.[at random] No longer able to struggle, you resign yourself to your fate as [he of M] slowly begin to thrust.";
	otherwise if the relevant sex addiction of M < 12:
		say "[one of][BigFuckerDesc of M] drives [his of M] weight forward, causing [his of M] shaft to press insistently against your sphincter. [big he of M] repeats the process several times, causing your [asshole] to give a little bit more each time. Finally, you feel the flat head of [his of M] [DickDesc of M] pop past your anal ring, followed by the first few inches of [his of M] shaft.[or][BigFuckerDesc of M][']s flat tip presses insistently against your sphincter, smearing it with copious precum. Since you're trapped under [his of M] huge lower body, your half-heartedly struggling does nothing aside from spreading [his of M] 'lube' across most of your buttcrack. It's only a matter of time before your [asshole] starts to give, and [his of M] wide shaft slowly squeezes past your anal ring, followed by a the first few inches of [his of M] shaft.[at random] You find yourself looking forward to it as [he of M] slowly begins to thrust.";
	otherwise:
		say "[BigFuckerDesc of M] drives [his of M] weight forward, causing [his of M] shaft to press insistently against your sphincter. [big he of M] repeats the process several times, causing your [asshole] to give a little bit more every time. Finally, your feel [his of M] big, fat [DickDesc of M] pop past your anal ring, followed by the first few inches of [his of M] shaft. You roll your eyes back as [he of M] slowly begins to thrust.".

To say LessLooseAssholePenetrationFlav of (M - centaur):
	if the relevant sex addiction of M < 7:
		say "[BigFuckerDesc of M] drives [his of M] weight forward, causing [his of M] shaft to press insistently against your sphincter. You try your best to clench yourself shut, but [his of M] precum provides more than enough natural lubrication to overcome your token resistance. It only takes a couple seconds of pushing for [his of M] wide [DickDesc of M] to pop past your anal ring, followed by the first few inches of [his of M] shaft. You fling [if face is actually occupied]muffled [end if]curses as [he of M] eagerly begins to thrust.";
	otherwise if the relevant sex addiction of M < 12:
		say "[one of][BigFuckerDesc of M] drives [his of M] weight forward, causing [his of M] shaft to press insistently against your sphincter. You aren't sure whether to resist or just give in, and after a couple seconds of continuous pushing, your [asshole] makes the decision for you, allowing [his of M] wide shaft through your anal ring with a satisfying pop.[or][BigFuckerDesc of M][']s flat tip presses insistently against your sphincter, smearing it with copious precum. Since you're trapped under [his of M] huge lower body, there's nothing you can do but accept it, and after a few seconds of pushing, you feel [his of M] wide [DickDesc of M] pop through your anal ring, following by the first few inches of [his of M] shaft.[at random] You bite back a moan as [he of M] eagerly begins to thrust.";
	otherwise:
		say "[one of][BigFuckerDesc of M] drives [his of M] weight forward, causing [his of M] shaft to press insistently against your sphincter. [big his of M] precum provides more than enough natural lubrication to allow [his of M] [cockhead of M] to pop past your anal ring after a couple seconds of pushing, and you moan hungrily as the first few inches of [his of M] big, fat [DickDesc of M] slide into your [asshole].[or][BigFuckerDesc of M][']s flat tip presses insistently against your sphincter, smearing it with copious precum. You don't put up a shred of resistance, simply enjoying the brief period of continuous pushing before [his of M] [DickDesc of M] passes through your anal ring with a satisfying pop.[at random] You roll your eyes back as [he of M] eagerly begins to thrust.".

To say VeryLooseAssholePenetrationFlav of (M - centaur):
	let O be a random monster penetrating face;
	if the relevant sex addiction of M < 7:
		say "[BigFuckerDesc of M] drives [his of M] weight forward, causing [his of M] shaft to press insistently against your sphincter. You [if O is monster]exhale sharply through your nose[otherwise]curse[end if] as [his of M] [cockhead of M] pops past your anal ring, followed by the first few inches of [his of M] shaft. Within the next moment [he of M] has already begun to thrust.";
	otherwise if the relevant sex addiction of M < 12:
		say "[one of][BigFuckerDesc of M] drives [his of M] weight forward, causing [his of M] shaft to press insistently against your sphincter. You put up a token resistance, but even that only delays [him of M] by a second. After exactly one second, you feel [his of M] [cockhead of M] pop past your anal ring, followed by the first few inches of [his of M] [DickDesc of M]. [big he of M] doesn't bother leaving time for build-up as [he of M] begins to thrust.[or][BigFuckerDesc of M][']s flat tip presses against your sphincter for a moment before popping in, followed by the first few inches of [his of M] shaft. By the time you think to resist, [he of M] has already begun to thrust.[at random]";
	otherwise:
		say "[one of][BigFuckerDesc of M] drives [his of M] weight forward, causing [his of M] shaft to press insistently against your sphincter. You wiggle your ass just a bit, so you can savour the feeling of penetration that much longer. After exactly one second, you feel [his of M] [cockhead of M] pop past your anal ring, followed by the first few inches of [his of M] big, fat [DickDesc of M]. Within the next moment [he of M] has already begun to thrust.[or][BigFuckerDesc of M][']s flat tip presses against your sphincter for a moment before popping in, followed by the first few inches of [his of M] big, fat shaft. You shudder with pleasure as [he of M] immediately begins to thrust.[at random]".

To say SpitroastPrep of (M - centaur) with (O - a monster) in (F - vagina):
	say "[BigFuckerDesc of M] uses a hoof to force you onto all fours, [his of M] [LongDickDesc of M] prodding your thighs as [he of M] clumsily lines it up with your entrance.".

To say ThreesomePrep of (M - centaur) with (N - a monster) in (F - vagina):[Does this monster have something unique for double penetration, or do N and M interact in a special way? override this function]
	if N is intelligent, say "[BigFuckerDesc of N] flips you onto your back, holding you by the waist as [FuckerDesc of M] steps over you, [his of M] [LongDickDesc of M] waving obscenely as [he of M] takes aim at your entrance.";
	otherwise say "With some difficulty, [BigFuckerDesc of M] flips you onto your back without disturbing [FuckerDesc of N]. [big he of N] keeps fucking you as [FuckerDesc of M] lines up [his of M] [LongDickDesc of M] with your entrance.".

To say FoursomePrep of (M - centaur) with (N - a monster) and (O - a monster) in (F - vagina):
	if N is intelligent, say "The [N] pulls you into [his of N] lap, pinning your arms to your waist as [FuckerDesc of M] steps over you, [his of M] [LongDickDesc of M] waving obscenely as [he of M] takes aim at your entrance.";
	otherwise say "With some difficulty, [BigFuckerDesc of M] flips you onto your back without disturbing [FuckerDesc of N] or [FuckerDesc of O]. They continue to fuck you as [FuckerDesc of M] lines up [his of M] [LongDickDesc of M] with your entrance.".

To say TwosomePrep of (M - centaur) in (F - vagina):
	say "[BigFuckerDesc of M] steps over you, [his of M] [LongDickDesc of M] dragging a line of 'drool' up the side of your leg as [he of M] lines [himself of M] up with your entrance.".

To say FriendlyPenetrationFlav of (M - centaur) in (F - vagina):
	say PenetrationFlav of M in F.

To say VaginalDefloweringFlav of (M - centaur):
	if the sex addiction of the player < 7:
		say "[BigFuckerDesc of M][']s [cockhead of M] smears you with precum as bears down on your virginal [vagina]. At first, imminent end of your purity feels like nothing more than a bad, bad dream, but as more and more of [his of M] thick, slippery 'lubrication' covers your sex, you feel yourself slowly beginning to stretch. After several seconds of pushing, each more painful than the last, your hymen is finally torn and [his of M] [DickDesc of M] slowly slides in, removing your virginity forever. [big he of M] leaves you a moment to get used to [him of M] before [he of M] begins to thrust.";
	otherwise if the sex addiction of the player < 12:
		say "[BigFuckerDesc of M][']s [cockhead of M] smears you with precum as bears down on your virginal [vagina]. At first, imminent end of your purity feels impossible, but as more and more of [his of M] thick, slippery 'lubrication' covers your sex, you feel yourself slowly beginning to stretch. After several seconds of pushing, each more painful than the last, your hymen is finally torn, and [his of M] [DickDesc of M] slowly slides in, removing your virginity forever. [big he of M] leaves you a moment to get used to [him of M] before [he of M] begins to thrust.";
	otherwise:
		say "[BigFuckerDesc of M][']s [cockhead of M] smears you with precum as bears down on your virginal [vagina]. At first, imminent end of your purity feels like nothing more than a great dream, but as more and more of [his of M] thick, slippery 'lubrication' covers your sex, you feel yourself slowly beginning to stretch. After several seconds of pushing, each more intense than the last, your hymen finally tears, and [his of M] [DickDesc of M] slowly slides in, removing your virginity forever. [big he of M] leaves you a moment to get used to [him of M] before [he of M] begins to thrust.".

To say VeryTightVaginaPenetrationFlav of (M - centaur):
	if the relevant sex addiction of M < 7:
		say "[one of][BigFuckerDesc of M] drives [his of M] weight forward, using [his of M] [cockhead of M] to part your folds. That's as far as [he of M] goes, at first, but as the seconds tick by, [he of M] slowly ramps up the force, and you feel yourself gradually beginning to stretch. The sensation is excruciating, but trapped under [his of M] huge lower body, there's nothing you can do but grit your teeth as [his of M] huge [DickDesc of M] slowly, painfully slides into your [vagina].[or][BigFuckerDesc of M][']s [cockhead of M] smears you with precum as bears down on your defenceless [vagina]. At first, the idea of [him of M] actually entering you feels like nothing more than an unpleasant dream, but as more and more of [his of M] thick, slippery 'lube' covers your sex, you feel yourself slowly beginning to stretch. After several seconds of pushing, each more painful than the last, you are finally forced wide enough for [his of M] [DickDesc of M] to slowly slide in.[at random] [big he of M] leaves you a moment to get used to [him of M] before [he of M] begins to thrust.";
	otherwise if the relevant sex addiction of M < 12:
		say "[one of][BigFuckerDesc of M] drives [his of M] weight forward, using [his of M] [cockhead of M] to part your folds. That's as far as [he of M] goes, at first, but as the seconds tick by, [he of M] slowly ramps up the force, and you feel yourself gradually beginning to stretch. The sensation is excruciating, but trapped under [his of M] huge lower body, there's nothing you can do but try to ignore your own excitement as [his of M] huge [DickDesc of M] slowly, painfully slides into your [vagina].[or][BigFuckerDesc of M][']s [cockhead of M] smears you with precum as bears down on your [vagina]. At first, the idea of [him of M] actually entering seems impossible, but as more and more of [his of M] thick, slippery 'lube' covers your sex, you feel yourself slowly beginning to stretch. After several seconds of pushing, each more painful than the last, you are finally forced wide enough for [his of M] [DickDesc of M] to slowly slide in.[at random] [big he of M] leaves you a moment to get used to [him of M] before [he of M] begins to thrust.";
	otherwise:
		say "[BigFuckerDesc of M][']s [cockhead of M] smears you with precum as bears down on your [vagina]. At first, the idea of [him of M] actually entering seems like nothing more than a pleasant dream but as more and more of [his of M] thick, slippery 'lube' covers your sex, you feel yourself slowly beginning to stretch. After several seconds of pushing, each more intense than the last, you are finally forced wide enough for [his of M] [DickDesc of M] to slowly slide in. [big he of M] leaves you a moment to get used to [him of M] before [he of M] begins to thrust.".

To say LessTightVaginaPenetrationFlav of (M - centaur):
	if the relevant sex addiction of M < 7:
		say "[one of][BigFuckerDesc of M] drives [his of M] weight forward, causing [his of M] [cockhead of M] to press between your folds. You gradually begin to stretch as [he of M] ramps up the force, and trapped under [his of M] huge lower body, you have no choice but to lie there helplessly as [his of M] huge [DickDesc of M] slides slowly into your defenceless [vagina].[or][BigFuckerDesc of M][']s [cockhead of M] smears you with precum as bears down on your defenceless [vagina]. At first, you don't know how [he of M]'s going to fit, but after the thick, slippery 'lube' has built up enough to seep into your sex, you feel yourself slowly beginning to stretch. You grit your teeth, unable to struggle as [his of M] disgusting [Dickdesc of M] forces its way in.[at random] [big he of M] only waits for a moment before [he of M] begins to thrust.";
	otherwise if the relevant sex addiction of M < 12:
		say "[one of][BigFuckerDesc of M] drives [his of M] weight forward, using [his of M] [cockhead of M] to press between your folds. You gradually begin to stretch as [he of M] ramps up the force, and trapped under [his of M] huge lower body, you decide to simply lie there and accept it as [his of M] huge [DickDesc of M] slides into your [vagina].[or][BigFuckerDesc of M][']s [cockhead of M] smears you with precum as bears down on your [vagina]. At first, you're not sure [he of M]'s going to fit, but after the thick, slippery 'lube' has built up enough to seep into your sex, you feel yourself slowly beginning to stretch. You bite back a moan, forgetting to struggle as [his of M] huge [DickDesc of M] finally slides in.[at random] [big he of M] only waits for a moment before [he of M] begins to thrust.";
	otherwise:
		say "[one of][BigFuckerDesc of M] drives [his of M] weight forward, using [his of M] [cockhead of M] to press between your folds. You gradually begin to stretch as [he of M] ramps up the force, so you happily lie there and accept it as [his of M] huge [DickDesc of M] slides into your [vagina].[or][BigFuckerDesc of M][']s [cockhead of M] smears you with precum as bears down on your [vagina]. At first, you're afraid [he of M]'s not going to fit, but after the thick, slippery 'lube' has built up enough to seep into your sex, you feel yourself slowly beginning to stretch. You moan hungrily as [his of M] big, fat [DickDesc of M] finally slides in.[at random] [big he of M] only makes you wait for a moment before [he of M] begins to thrust.".

To say LessLooseVaginaPenetrationFlav of (M - centaur):
	if the relevant sex addiction of M < 7:
		say "[one of][BigFuckerDesc of M] drives [his of M] weight forward, pressing [his of M] [cockhead of M] between your folds. Trapped under [his of M] huge body, you have no choice but to lie there helplessly as [his of M] disgusting [DickDesc of M] slides into your [vagina].[or][BigFuckerDesc of M][']s bestial shaft smears you with precum as bears down on your [vagina], relying on natural lubrication to slowly force its way in.[at random] You fling curses at [him of M] as [he of M] begins to thrust.";
	otherwise if the relevant sex addiction of M < 12:
		say "[one of][BigFuckerDesc of M] drives [his of M] weight forward, pressing [his of M] [cockhead of M] between your folds. Trapped under [his of M] huge body, you simply accept it as [his of M] huge [DickDesc of M] slides into your [vagina].[or][BigFuckerDesc of M][']s bestial shaft smears you with precum as bears down on your [vagina], relying on natural lubrication to slowly force its way in.[at random] You emit a small sigh as [he of M] begins to thrust.";
	otherwise:
		say "[one of][BigFuckerDesc of M] drives [his of M] weight forward, pressing [his of M] [cockhead of M] between your folds. You happily lie there and accept it as [his of M] huge [DickDesc of M] slides into your [vagina].[or][BigFuckerDesc of M][']s bestial shaft smears you with precum as bears down on your [vagina], relying on natural lubrication to slowly force its way in.[at random] You emit a satisfied moan as [he of M] begins to thrust.".

To say VeryLooseVaginaPenetrationFlav of (M - centaur):
	if the relevant sex addiction of M < 7:
		say "[one of][BigFuckerDesc of M] slowly drives [his of M] weight forward, sliding [his of M] bestial shaft into your unwilling [vagina].[or]You scoff as [he of M] drives [his of M] weight forward, sliding [his of M] bestial shaft into your [vagina].[or]You [if face is actually occupied]make an indignant noise[otherwise]curl your lip in disgust[end if] as [his of M] bestial shaft presses between your folds, providing its own lubrication as it slowly slides into your [vagina].[in random order] [big he of M] sighs in satisfaction as [he of M] begins to thrust.";
	otherwise if the relevant sex addiction of M < 12:
		say "[one of][BigFuckerDesc of M] slowly drives [his of M] weight forward, sliding [his of M] bestial shaft into your not-unwilling [vagina].[or]You suppress a moan as [he of M] drives [his of M] weight forward, sliding [his of M] bestial shaft into your [vagina].[or]You [if face is actually occupied]make an muffled noise[otherwise]bite your lip[end if] as [his of M] bestial shaft presses between your folds, providing its own lubrication as it slowly slides into your [vagina].[in random order] [big he of M] sighs in satisfaction as [he of M] begins to thrust.";
	otherwise:
		say "[one of][BigFuckerDesc of M] slowly drives [his of M] weight forward, sliding [his of M] bestial shaft into your oh-so-willing [vagina].[or]You shamelessly moan as [he of M] drives [his of M] weight forward, sliding [his of M] bestial shaft into your [vagina].[or]You [if face is actually occupied]emit a muffled moan[otherwise]moan hungrily[end if] as [his of M] bestial shaft presses between your folds, providing its own lubrication as it slowly slides into your [vagina].[in random order] [big he of M] sighs in satisfaction as [he of M] begins to thrust.".

To say (M - centaur) mercy sex (N - a number):
	let O be a random orifice penetrated by M;
	if N is 1:
		say "[BigFuckerDesc of M] slows down a bit, but there's still quite a bit of power to [his of M] thrusts.";
	otherwise if N is 2:
		say "[BigFuckerDesc of M] pounds your [variable O], slightly slowing down and controlling [his of M] pace.";
	otherwise if N is 3:
		say "[BigFuckerDesc of M] fucks your [variable O] with shallow strokes.";
	otherwise if N < 5:
		say "[BigFuckerDesc of M] slowly drives [his of M] [DickDesc of M] in and out of your [variable O].";
	otherwise:
		say "[BigFuckerDesc of M] fucks your [variable O] slowly and methodically, breathing evenly as if trying to maintain focus.".

[Instead of fondle, lets bulge]
To say sexSubmitFondleFlav of (M - centaur) in (O - an orifice):
	say "Your belly bulges outward as [FuckerDesc of M] pistons [his of M] [DickDesc of M] in and out of your [variable O].".

[Push with weight, not hands]
To say sexSubmitPushFlav of (M - centaur) in (O - an orifice):
	say "[BigFuckerDesc of M] throws [his of M] weight into every thrust, thoroughly destroying your [variable O].".

[No choice but to change the last part.]
To say sexSubmitBiteFlav of (M - centaur) in (O - an orifice):
	say "[if the relevant sex addiction of M < 6][BigFuckerDesc of M] fucks your [variable O] with fast, hard thrusts. You screw your eyes shut and grit your teeth, focusing as hard as possible on when it will be over.[otherwise if the relevant sex addiction of M < 10][BigFuckerDesc of M] slams in and out of your [variable O], grunting heavily. You unsuccessfully try to bite back your moans of pleasure.[otherwise][BigFuckerDesc of M] slams in and out of your [variable O], grunting heavily. You moan as loudly as possible, hoping [he of M] can tell how much you're enjoying yourself.[end if]".

[The centaur is way too huge for her balls to slap your taint]
To say sexSubmitSplitFlav of (M - centaur) in (O - an orifice):
	if the player is male, say "[if the size of penis < 4 and tg fetish >= 1][BigFuckerDesc of M] fucks you like the girl you really are![otherwise if the size of penis < 4 and the player is possessing a penis and the bimbo of the player < 14][BigFuckerDesc of M] pounds your [asshole] hard and fast. You can't help feeling a little embarrassed of how minuscule your [ShortDesc of penis] is compared to [hers of M].[otherwise if the size of penis < 4 and the player is possessing a penis][BigFuckerDesc of M] pounds your [asshole] hard and fast. You feel proud of how minuscule your [ShortDesc of penis] is compared to [hers of M].[otherwise if the bimbo of the player < 3][BigFuckerDesc of M]'s balls swing as [he of M] pistons in and out of your [asshole], as if to remind you of the creampie that you'd never be able to give, and have no choice but to look forward to.[otherwise if the bimbo of the player < 5]Shocks of pleasure ripple through your [DickDesc of M] as [he of M] pounds your [asshole]. And you thought it was humiliating before...[otherwise if the bimbo of the player < 7][BigFuckerDesc of M]'s [cockhead of M] relentlessly pounds your sensitive prostate, reminding you how humiliating it is to get fucked by such a huge [DickDesc of M].[otherwise if the bimbo of the player < 9]Shocks of pleasure ripple through your [ShortDesc of penis] as [he of M] pounds your [asshole]. It's difficult to resist when it feels this good![otherwise if the bimbo of the player < 10 and transGender is 0][BigFuckerDesc of M]'s [DickDesc of M] relentlessly pounds your sensitive prostate, reminding you that you're a dirty faggot for enjoying this.[otherwise if the bimbo of the player < 12][BigFuckerDesc of M]'s balls swing as [he of M] pistons in and out of your [asshole], a firm reminder of the creampie you can't give, and secretly look forward to.[otherwise if the bimbo of the player < 14][BigFuckerDesc of M]'s swing as [he of M] pistons in and out of your [asshole], a firm reminder that of the creampie you'd never be able to give, and look so much forward to.[otherwise]Shocks of pleasure ripple through your [ShortDesc of penis] as [he of M] pounds your [asshole]. Phew, [he of M] sure knows how to show a girl a good time![end if]";
	otherwise say "[one of][BigFuckerDesc of M] fucks your [variable O] hard and fast, stimulating every part of you with [his of M] [his of M] [LongDickDesc of M].[or][BigFuckerDesc of M]'s balls swing as [he of M] pistons in and out of your [vagina], a firm reminder of the creampie [if the semen addiction of the player < 6]you have no choice but to[otherwise if the semen addiction of the player < 12]you secretly look[otherwise]you look[end if] forward to.[in random order]".

To say sexSubmitSqueezeFlav of (M - centaur) in (O - an orifice):
	let C be a random worn skirted clothing;
	if C is nothing, let C be a random worn crotch covering clothing;
	say "[BigFuckerDesc of M]'s [cockhead of M] grinds back and forth across your innermost reaches, stimulating you in ways only a [LongDickDesc of M] can.".

To say sexRoughTittyFlav of (M - centaur) in (O - an orifice):
	say "[BigFuckerDesc of M]'s [LongDickDesc of M] causes your belly to bulge ridiculously as [he of M] pounds your [variable O] with hard, fast strokes.".

To decide if (M - centaur) is willing to creampie (F - vagina):
	if the class of the player is worshipper or the class of the player is succubus, decide yes;
	if the reaction of the player is 0:
		let C be 4;
		if the player is pheromonal, decrease C by 2;
		if the player is a pussy slut, decrease C by 1;
		if a random number between 1 and C > 1, decide no;
	decide yes.

To decide if (M - centaur) is willing to creampie (F - asshole):
	if the class of the player is worshipper or the class of the player is succubus, decide yes;
	if the reaction of the player is 0:
		let C be 4;
		if the player is a butt slut, decrease C by 1;
		if a random number between 1 and C > 1, decide no;
	decide yes.

To say CreampieFlav of (M - centaur) in (F - a fuckhole):
	if the reaction of the player is 0:
		say "[BigFuckerDesc of M] begins to groan, forcing [his of M] long [DickDesc of M] in deeper and deeper with every thrust. Your continued struggling seems to pay off, and just when you're about to make [him of M] pop out, [he of M] slams back in with a sudden powerful thrust, followed by the first salvo of [semen]. You howl in despair as [he of M] thoroughly inseminates you, using the extraordinary length of [his of M] [LongDickdesc of M] to plant every drop of [his of M] load deep, deep inside your [variable F]. A solid minute later, [he of M] finally pulls out with a wet *schlurp*.";
	otherwise:
		say "[BigFuckerDesc of M] begins to groan, forcing [his of M] long [DickDesc of M] in deeper and deeper with every thrust. You are left with a final moment of anticipation as [he of M] bottoms out, [his of M] [LongDickDesc of M] penetrating you all the way to your core as you feel the first salvo of [semen]. [big he of M] continues to lightly thrust [his of M] hips as [he of M] inundates you with [his of M] load, ensuring that every drop is planted deep, deep inside your [variable F]. After a solid minute, [he of M] finally pulls out with a wet *schlurp*.".

To say CondomPieFlav of (M - centaur) in (F - a fuckhole):
	say "[BigFuckerDesc of M] begins to groan, forcing [his of M] long [DickDesc of M] in deeper and deeper with every thrust. You are left with a final moment of anticipation as [he of M] bottoms out, [his of M] [LongDickDesc of M] penetrating you all the way to your core as the first salvo of [semen] explodes into the condom. [big he of M] continues to lightly thrust as the latex sheath captures [his of M] load, taking a solid minute to thoroughly empty out [his of M] balls before finally pulling out.";

To say MercyReaction of (M - centaur):
	if the rounds of sex left of M is 0 and M is unwrapped:
		if the class of the player is worshipper or the class of the player is succubus:
			say "[line break][speech style of M]'[one of]I don't negotiate with demons!'[or]Maybe this will make you repent!'[or]This is what happens when you love demons!'[at random][roman type][line break]";
		otherwise:
			if the player is not pheromonal, say "[line break][speech style of M]'[one of]I'm cumming!'[or]Sorry!'[or]Fuuuuck!'[at random][roman type][line break]";
			otherwise say "[line break][speech style of M]'[one of]Should have thought about that before, you [player-class] slut!'[or]No way! You're getting knocked up, you dirty little [player-class]!'[or]Got it! One creampie coming up, you nasty little [player-class]!'[at random][roman type][line break]".

To compute (M - centaur) cleanly pulling out of (F - a fuckhole):
	get clean pull out image of M in F;
	say PullOutFlav of M in F;
	if F is vagina, PussyFill 1;
	otherwise AssFill 1;
	SemenPuddleUp the semen load of M - 1.

To say PullOutFlav of (M - centaur) in (F - a fuckhole):
	say "[BigFuckerDesc of M] begins to groan, forcing [his of M] long [DickDesc of M] in deeper and deeper with every thrust. However, your [if the relevant sex addiction of M < 12]continued struggling seems to pay off, and you[otherwise]playful struggling is a little too effective, and you inadvertently[end if] cause [him of M] to pop out just after [he of M] begins to cum. You [if the relevant sex addiction of the player < 7]breathe a sigh of relief[otherwise if the relevant sex addiction of the player < 12]breathe a sigh of half regret[otherwise]are overcome with regret[end if] as the majority of [his of M] load spews out into a huge puddle between your legs.";

To say MessyPullOutFlav of (M - centaur) in (F - a fuckhole):
	say "[BigNameDesc of M] begins to groan, forcing [his of M] long [DickDesc of M] in deeper and deeper with every thrust. However, your [if the relevant sex addiction of M < 12]continued struggling seems to pay off, and you[otherwise]playful struggling is a little too effective, and you inadvertently[end if] cause [him of M] to pop out just as [he of M] begins to cum. You [if the relevant sex addiction of the player < 7]shudder[otherwise if the relevant sex addiction of the player < 12]wince[otherwise]squirm in delight[end if] as [his of M] huge load douses your crotch, back, and thighs.";

Part 4 - Conversation

Section 1 - Greeting

To say FirstResponse of (M - centaur):
	if the class of the player is princess:
		say "[speech style of M]'[one of]I am honoured to meet you, your grace.'[or]It is an honour to meet you, your grace.'[at random][roman type][line break]";
	otherwise if the class of the player is cowgirl:
		say "[speech style of M]'Nice to meet you. By the way, I may not look like it, but I promise I fuck like a minotaur.'[roman type]";
	otherwise if the class of the player is catgirl:
		say "[speech style of M]'Hello! By the way, I don't mind purring. It's sexy.'[roman type]";
	otherwise if the class of the player is puppygirl:
		say "[speech style of M]'Nice to meet you. By the way, I don't think panting is a turn off. It's actually cute.'[roman type]";
	otherwise if the class of the player is bunny:
		say "[speech style of M]'Hello! By the way, I love scavenger hunts.'[roman type][line break]";
	otherwise if the class of the player is worshipper:
		say "[speech style of M]'Hmph.'[roman type]";
	otherwise if the class of the player is priestess or the class of the player is cultist:
		say "[speech style of M]'[one of]At your service!'[or]I'm at your service!'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]The pleasure's all mine. Although... it doesn't have to be.'[or]I'd say the pleasure is mine, but now that I really look at you, maybe you and I could find some way to share?'[at random][roman type]".

To say RepeatResponse of (M - centaur):
	if the class of the player is princess:
		say "[speech style of M]'[one of]Once again, I am honoured. Sorry if this is informal, but I've always wanted to pledge my loyalty to a princess.'[or]I am at your service! Any kind of service you want. Well, as long as I'm pitching.'[or]I'm honoured, your grace. Pardon me, but I've never met a royal before. Is it true princesses love anal?'[then at random][roman type][line break]";
	otherwise if the player is pheromonal:
		say "[speech style of M]'[one of]Hey[or]Yo[or]Sup[at random]. [one of]You smell nice.[or]By the way, that's a really nice scent.[or]I like your scent by the way. It's nice.[at random]";
	otherwise if the class of the player is priestess:
		say "[speech style of M]'[one of]I am honoured to be in the presence of your holy self.'[or]It's always a pleasure to meet a holy [man of the player].'[or]Well met! I'm always glad to meet a [man of the player] of the cloth.'[at random][roman type]";
	otherwise if the class of the player is cultist:
		say "[speech style of M]'[one of]I don't exactly know what altar you tend to, but any altar [boy of the player] is good enough for me!'[or]Even pagan gods are fine by me!'[or]Well met! It's always a pleasure to meet a fellow devout.'[at random][roman type]";
	otherwise if the class of the player is worshipper:
		say "[speech style of M]'Hm.'[roman type][line break]";
	otherwise:
		if the refractory-period of M > 0:
			say "[speech style of M]'[one of]Hey there. I don't really feel like duelling right now, but I might later.'[or]Hi. I'm not up for anything at the moment, but don't forget to check back later.'[or]Hey! I'm feeling pretty satisfied at the moment, but I'll be ready for more soon.'[at random][roman type][line break]";
		otherwise:
			say "[speech style of M]'[one of]Hey! If you don't want to duel, we could definitely try something more casual.'[or]Hi there. If it seems like I have a boner for combat, you're right. It gets me so rigid.'[or]Hey there. If you're wondering about this shield, it's a family heirloom.'[or]Well met! Want to get to know each other better?'[at random][roman type][line break]".

To say UnAnnoyedResponse of (M - centaur):
	let F be a random fuckhole penetrated by M;
	if the openness of F < the girth of M:
		say "[speech style of M]'[one of]You're so fucking tight...'[or]Your [variable F] feels so good...'[or]Your [variable F] is so tight...'[at random][roman type]";
	otherwise:
		say "[speech style of M]'[one of]You're so dirty...'[or]I can't wait to creampie this [variable F]...'[or]Your [variable F] feels so good...'[at random][roman type]".

To say MildAnnoyedResponse of (M - centaur):
	say "[speech style of M]'[one of]Shhh, be quiet now.'[or]Yes, yes, I understand. Now shush!'[or]Shhh, that's annoying.'[at random][roman type][line break]".

To say AnnoyedResponse of (M - centaur):
	say "[speech style of M]'[one of]By the gods, will you shut up?'[or]You're being really annoying right now!'[or]Are you ever going to shut up?!'[at random][roman type]".

Section 2 - Questioning

To say WhereAnswer of (M - centaur):
	say "[speech style of M]'This is the forest of Bimbacia.'[roman type][line break]".

To say WhoAnswer of (M - centaur):
	say "[speech style of M]'I[']m Filia, the knight!'[roman type][line break]".

To say StoryAnswer of (M - centaur):
	say "[speech style of M]'[one of]I'm here to meet the altar girl that resides here. Wish me luck!'[or]When I became a knight, I made a solemn pledge to always follow my heart. My heart tells me to have lots of sex.'[or]I'm visiting the domain of the princess so I can face a gladiator in combat. They like fighting, and they love huge [DickDesc of M]s, so its win-win!'[or]I'm a mission to clear out the demon lord's remaining minions, but...I keep getting kind of sidetracked.'[stopping][roman type][line break]".

To say EscapeAnswer of (M - centaur):
	say "[speech style of M]'You need to go through the back door. Heheheheh.'[roman type][line break]".

To say AdviceAnswer of (M - centaur):
	say "[speech style of M]'[one of]Lube doesn't just make things slippery. It can also soothe a hole that's recently taken a lot of punishment, and in a pinch, you can even drink it.'[or]There is a slimegirl in this forest that knows of a technique once known only to gladiators. If you can earn [his of slimegirl] trust, [he of slimegirl] might be willing to teach you.'[or]Creampies are great, but if you don't want them, try begging. Of course, I can't pull out even if I want to, but in cases like mine you're better off struggling.'[or]Struggling will make deepthroating that much more difficult. Keep calm, relax, and you might find you have cock swallowing skills you never knew you had.'[at random][roman type][line break]".

Section 3 - Drink Requesting

Centaur ends here.
