Centaur by Monster begins here.

[The centaur is a knight that fights using a shield and her fists. She has a quite large penis, and she loves anal. In combat, she will raise her shield, which will allow her to knock the player off their feet if she is attacked.

]

Centaur is a monster. Centaur is intelligent. The text-shortcut of centaur is "cttm". Understand "templar" as centaur. Centaur is male. Centaur can be shieldblocked or not shieldblocked.

Definition: centaur is presenting as female: decide yes. [For now]

To say MediumDesc of (M - centaur):
	say "centaur templar".

To say MonsterDesc of (M - centaur):
	say "This armored [man of M] has the body of a horse from the waist down, with a [LongDickDesc of M] hanging down between [his of M] legs. Aside from [his of M] head, [his of M] torso is protected by a bit of ornate armour, and [he of M] is holding a large steel sword in one strong hand. [big his of M] shining silvery hair, which matches the fur of [his of M] lower half, flows behind [him of M] as if constantly caught by the wind.".
	[say "This armored [man of M] has the body of a horse from the waist down, with a [LongDickDesc of M] hanging down between [his of M] legs. Aside from [his of M] head, [his of M] entire torso is covered by a set of silver plate mail, with a large, circular buckler attached to one of [his of M] arms. [big his of M] fiery red hair, which matches the fur of [his of M] lower half, is drawn back into a ponytail.".]

Definition: a centaur is raunchy: decide yes.

[Definition: centaur is father material if it is male.]

Definition: centaur is presenting as male if lady fetish is 2.

Definition: A centaur is woods dwelling: decide yes.

This is the spawn potential centaur rule:
	if a random number between 1 and 2 is 1 and unicorn is not alive:
		summon centaur in the woods.
The spawn potential centaur rule is listed in the setting up woods monsters rules.

Definition: centaur (called M) is controlling:[Will it grab onto subduing clothing e.g. a clitoris lead?]
	decide no.

Definition: centaur is musky: decide yes.
Definition: centaur is a tripper: decide no.
Definition: centaur is father material: decide no.[soon....]

To say LongDickDesc of (M - centaur):
	say "massive 2-foot equine [DickDesc of M]".

To say DickDesc of (M - centaur):
	if lady fetish is 2 or futanari fetish is 1, say manly-penis;
	otherwise say "strap-on".

To set up (M - centaur):
	if mythical creature fetish is 0 or diaper quest is 1 or the player is not a december 2019 top donator, destroy M;
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 16;
	if doomed is 5, DifficultyUp M by 1;
	now the health of M is the maxhealth of M.

To decide which number is the maxhealth of (M - centaur):
	if tutorial is 1, decide on 99999;
	decide on 3 + ((the difficulty of M * (10 + game difficulty)) / 2).

To decide which number is the girth of (M - centaur):
	decide on 6;

To say SummoningFlav of (M - centaur):
	if M is in the location of the player, say "You hear very sexual sounding sigh, followed by a short prayer. Several seconds later, a heavily armored [man of M] with the lower body of a horse leaps out out of the statue, landing on the ground with a resounding *clop*.";
	otherwise say "You hear the clopping of hooves nearby.".

Part 1 - Misc Flavour

To say speech style of (M - centaur):
	say second custom style.

["To think I would have to use my full power..."
"You didn't even bring out 10% of my strength."]

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
		say "[BigNameDesc of M]'s face scrunches with hostility![line break][speech style of M]'[one of]Yet another demon?! There's no end to them! Have at you!'[or]Begone, demon! Have at you!'[or]Demon! Have at you!'[at random][roman type][line break]";
		anger M;
	otherwise:
		compute appearance assessment of M;
		if M is unfriendly:
			say "[big he of M] takes a combative stance!".

To compute appearance assessment of (M - centaur):
	if the class of the player is worshipper:
		FavourDown M by 4;
		if M is unfriendly:
			say "[BigNameDesc of M] snarls.[line break][speech style of M]'[one of]You dirty imp fucker! I'll make you change your disgusting ways!'[or]Devil lover! I'll force you to repent!'[or]I'll fuck that evil religion right out of you!'[at random][roman type][line break]";
		otherwise:
			say "[BigNameDesc of M] curls [his of M] lip.[line break][speech style of M]'[one of]A devil worshipper...You know, there's still time for you to change your ways.'[or]I have ways to make you repent, devil worshipper. There's still time, you know.'[or]Ugh. You'll have to repent sooner or later, devil worshipper.'[at random][roman type][line break]";
	otherwise if the saved appearance of the player > the outrage tolerance of M:
		FavourDown M by 2;
		if M is unfriendly:
			say "[BigNameDesc of M]'s eyes [if asshole is lewdly exposed]immediately settle on your exposed [asshole][otherwise]hungrily rove your body[end if] as [he of M] licks [his of M] lips.[line break][speech style of M]'[one of]I challenge you to a duel!'[or]I challenge you! Face me!'[or]Lets duel! Right now, before I go soft!'[at random][roman type][line break]";
		otherwise:[Duel totally isn't a euphemism for anything. Nope. Definitely not.]
			if the class of the player is cowgirl or the class of the player is puppygirl or the class of the player is catgirl or the class of the player is bunny:
				say "[BigNameDesc of M]'s eyes rove your body.[line break][speech style of M]'[one of]What a good looking...stance. Wanna duel, [player-class]?'[or]Wow, a [player-class]. And a...tough looking one too...Wanna duel?'[or]You look...strong for a [player-class]. We should duel each other sometime.'[at random][roman type][line break]";
			otherwise:
				say "[BigNameDesc of M]'s eyes widen as [his of M] gaze [if asshole is lewdly exposed]settles on your exposed [asshole][otherwise]roves your body[end if].[line break][speech style of M]'[one of]You look...strong. Wanna duel?'[or]You look like a...warrior. I really want to fight you.'[or]Up for a duel? You look like you are...'[or]Feel like dueling me? You duel all the time, don't you...'[at random][roman type][line break]";
	otherwise if the class of the player is priestess or the class of the player is cultist:
		let H be a random worn headgear;
		say "[BigNamedesc of M]'s eyes fixate on your [ShortDesc of H], and then briefly move down your body.[line break][speech style of M]'[one of]A real altar girl...wow...'[or]Its the altar girl...'[stopping][roman type][line break]";
	otherwise if the class of the player is cowgirl or the class of the player is puppygirl or the class of the player is catgirl or the class of the player is bunny:
		say "[BigNameDesc of M] cocks an eyebrow as [his of M] gaze moves up and down your body.[line break][speech style of M]'[one of]What a sexy [player-class]...'[or]Wow, a [player-class]. [if the player is female and pregnancy fetish is 1]And a pretty fertile looking one too[otherwise]And a pretty hot one too[end if].'[or]Pretty sexy for a [player-class]...'[at random][roman type][line break]";
	otherwise if the class of the player is princess:
		let H be a random worn headgear;
		say "[BigNamedesc of M]'s eyes fixate on your [ShortDesc of H], and then briefly move down your body. [big he of M] straightens up in salute.[line break][speech style of M]'Your highness!'[roman type][line break]";
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
	let M be centaur;
	if M is not shieldblocked and a random number between 1 and 5 is 1 and M is unfriendly:
		say "[BigNameDesc of M] raises [his of M] sword protectively, using it as a shield.";
		now M is shieldblocked;
		rule succeeds;
	otherwise if M is shieldblocked:
		say "[BigNameDesc of M] keeps [his of M] sword raised defensively.";
		rule succeeds.
The centaur raises shield rule is listed last in the centaur priority attack rules.

This is the centaur lowers shield rule:
	let M be centaur;
	if M is shieldblocked and a random number between 1 and 2 is not 1:
		say "[BigNameDesc of M] lowers [his of M] sword.";
		now M is not shieldblocked;
		rule succeeds.
The centaur lowers shield rule is listed first in the centaur priority attack rules.

Section 2 - Damage

To compute damage of (M - centaur):
	if M is shieldblocked:[Counter!]
		say "[line break][speech style of M]'[one of]Hyah!'[or]Dumbass!'[or]Gotcha!'[at random][roman type][line break][BigNameDesc of M] waits for the moment just before your attack connects and suddenly bashes you with the flat of [his of M] sword!";
		now M is not shieldblocked;
		silently try kneeling;
		if the player is prone:
			say "[bold type]You are knocked off your feet![roman type][line break]";
	if the health of M > 0:
		if M is uninterested or M is friendly:
			say "[big he of M] shrugs off the damage with a grin, and assumes a fighting stance!";
			now M is interested;
			anger M;
		otherwise:
			say DamageReaction (the health of M) of M;
	otherwise:
		if the health of M <= 0:
			compute death of M.

To say DamageReactHealthy of (M - centaur):
	say "[big he of M] laughs as [he of M] [one of]shrugs off[or]ignores[at random] the damage.".

To say DamageReactDamaged of (M - centaur):
	say "[big he of M] [one of]takes the hit without flinching[or]uses [his of M] armor to lessen the hit[at random].".

To say DamageReactTired of (M - centaur):
	say "[big he of M] grunts as [he of M] [one of]endures the hit[or]weathers the hit[at random]!".

To say DamageReactWeak of (M - centaur):
	say "[BigNameDesc of M] [one of]wobbles as [he of M] take the hit[or]staggers as [he of M] weathers the hit[at random]!".

To compute unique death of (M - centaur):
	say "[BigNameDesc of M]'s armor clatters as [he of M] falls to the ground, dead.";
	if gladiator-sword is off-stage:
		now gladiator-sword is in the location of the player;
		say "[BigNameDesc of gladiator-sword] falls at your feet.";
		compute autotaking gladiator-sword.

Section 3 - Punishments

To compute kneeling reaction of (M - centaur):
	say "[BigNameDesc of M]'s lower half looms over you, [his of M] [LongDickDesc of M] drooling precum as [he of M] moves closer to you.";

To say PissDrinkThreat of (M - centaur):
	if the class of the player is succubus:
		say "[speech style of M]'[one of]Swallow it all, demon. You'll regret disobeying.'[or]I'll douse your evil flames, demon! Don't resist!'[or]Its my victory, demon. Now, savour the taste of defeat![in random order][roman type][line break]";
	otherwise if the class of the player is worshipper:
		say "[speech style of M]'[one of]Drink it! Repent!''[or]This is the fate of demon worshippers! Accept it and drink!'[or]Drink, demon lover! You must repent!'[in random order][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]I can't see my piss hitting your face, so make sure you drink it all.[or]I can't see you down there, so you might as well be a good sport and be my toilet.'[or]I won the duel, so drink it. That's fair.'[in random order].'[roman type][line break]".

To say UrinationFlav of (M - centaur):[you lay down and enjoy it./You sit obediently./You try to scramble away]
	say "[BigNameDesc of M] [one of]bends [his of M] legs slightly[or]takes a tiny step forward[or]takes a tiny step back[at random], so [his of M] [LongDickDesc of M] is pointing directly at your face. [if the urine taste addiction of the player < 4][one of]Despite the clear warning, you aren't ready when[or]You are ready when[stopping][otherwise]You are delighted when[end if] a stream of [urine] floods out from the tip![if the humiliation of the player < HUMILIATION-MODEST + 1500 and the urine taste addiction of the player < 7][line break][variable custom style][line break]This can't be happening[one of].[or] again![stopping][roman type][line break][end if]".

To say SpitroastPrep of (M - centaur) with (O - a monster) in (F - asshole):
	say "[BigFuckerDesc of M] uses a hoof to force you onto all fours, [his of M] [LongDickDesc of M] prodding your [AssDesc] as [he of M] clumsily lines it up with your hole.".

To say ThreesomePrep of (M - centaur) with (N - a monster) in (F - asshole):
	if N is intelligent, say "[BigFuckerDesc of N] flips you over so you're face to face, holding you by the waist as [FuckerDesc of M] clumsily lines up [his of M] [DickDesc of M] with your hole.";
	otherwise say "With some difficulty, [BigFuckerDesc of M] flips you onto your belly without disturbing [FuckerDesc of N]. [big he of N] keeps fucking you as [FuckerDesc of M] lines up [his of M] [LongDickDesc of M] with your hole.".

To say FoursomePrep of (M - centaur) with (N - a monster) and (O - a monster) in (F - asshole):
	if N is intelligent, say "[BigFuckerDesc of O] keeps using you as [FuckerDesc of N] flips you over and firmly grabs your waist. [BigNameDesc of M]'s [LongDickDesc of M] prods your [AssDesc] as [he of M] clumsily lines it up with your final unguarded hole.";
	otherwise say "With some difficulty, [BigFuckerDesc of M] flips you onto your belly without disturbing [FuckerDesc of N] or [FuckerDesc of O]. They continue to fuck you as [FuckerDesc of M] lines up [his of M] [LongDickDesc of M] with your hole.".

To say TwosomePrep of (M - centaur) in (F - asshole):
	say "[BigFuckerDesc of M] steps over you, [his of M] [LongDickDesc of M] dragging a line of 'drool' across your ass as [he of M] lines it up with your hole.".

To say FriendlyPenetrationFlav of (M - centaur) in (F - asshole):
	say PenetrationFlav of M in F.

To say AnalDefloweringFlav of (M - centaur):
	if the sex addiction of the player < 7:
		say "[BigNameDesc of M]'s flat tip presses insistently against your sphincter, smearing it with copious precum. You desperately struggle, causing most of your buttcrack to get covered in 'lube' as [he of M] slowly increases the pressure. Trapped underneath [his of M] huge lower body, you have no choice but to lie there and experience the strange, alien sensation of [his of M] wide shaft forcing its way into your [asshole]. Since its your first time, [he of M] leaves you a moment to get used to [him of M] before [he of M] begins to thrust.";
	otherwise if the sex addiction of the player < 12:
		say "[BigNameDesc of M]'s flat tip presses insistently against your sphincter, smearing it with copious precum. Your half-hearted struggling causes most of your buttcrack to get covered in [his of M] 'lube', and since you're trapped underneath [his of M] huge lower body, there's nothing you can do but lie there and experience the strange, alien sensation of [his of M] [DickDesc of M] forces its way into your [asshole]. Since its your first time, [he of M] leaves you a moment to get used to [him of M] before [he of M] begins to thrust.";
	otherwise:
		say "[BigNameDesc of M] drives [his of M] weight forward, causing [his of M] shaft to press insistently against your sphincter. [big he of M] repeats the process several times, gradually ramping up the pressure. Finally, your [asshole] starts to give, and [NameDesc of M] grunts as [he of M] slowly, so slowly, forces [his of M] [DickDesc of M] into your virgin anal ring. Since its your first time, [he of M] leaves you a moment to get used to new, exotic sensation [him of M] before [he of M] begins to thrust.".

To say VeryTightAssholePenetrationFlav of (M - centaur):
	let O be a random monster penetrating face;
	if the relevant sex addiction of M < 7:
		say "[one of][BigNameDesc of M] drives [his of M] weight forward, causing [his of M] shaft to press insistently against your sphincter. [big he of M] repeats the process several times, gradually ramping up the force. Finally, your [asshole] starts to give, and [NameDesc of M] grunts as [he of M] slowly, painfully forces the flat head of [his of M] [DickDesc of M] through your reluctant anal ring. You [if O is monster]yell into [FuckerDesc of O] as [FuckerDesc of M][otherwise]curse through the pain as [he of M][end if] slowly slides in.[or][BigNameDesc of M]'s flat tip presses insistently against your sphincter, smearing it with copious precum. You desperately struggle, causing most of your buttcrack to get covered in 'lube' as [he of M] slowly increases the pressure. Trapped underneath [his of M] huge lower body, there's nowhere you can really go, and you are forced to [if O is monster]groan[otherwise]grit your teeth[end if] through the pain as [he of M] slowly, painfully, so painfully, forces [his of M] wide shaft into your tight [asshole].[at random] [big he of M] leaves you a moment to get used to [him of M] before [he of M] begins to thrust.";
	otherwise if the relevant sex addiction of M < 12:
		say "[BigNameDesc of M]'s flat tip presses insistently against your sphincter, smearing it with copious precum. Your half-hearted struggling causes most of your buttcrack to get covered in [his of M] lube, and since you're trapped underneath [his of M] huge lower body, there's nothing you can really do as [FuckerDesc of M] slowly increases [his of M] force. You do your best to brace yourself as [he of M] slowly, painfully forces [his of M] wide shaft into your tight [asshole]. [big he of M] leaves you a moment to get used to [him of M] before [he of M] begins to thrust.";
	otherwise:
		say "[BigNameDesc of M] drives [his of M] weight forward, causing [his of M] shaft to press insistently against your sphincter. [big he of M] repeats the process several times, gradually ramping up the pressure. Finally, your [asshole] starts to give, and [NameDesc of M] grunts as [he of M] slowly, so slowly, forces the flat head of [his of M] [DickDesc of M] through your rigid anal ring. [big he of M] leaves you a moment to get used to [him of M] before [he of M] begins to thrust.".

To say LessTightAssholePenetrationFlav of (M - centaur):
	if the relevant sex addiction of M < 7:
		say "[one of][BigNameDesc of M] drives [his of M] weight forward, causing [his of M] shaft to press insistently against your sphincter. [big he of M] repeats the process several times, you do your best to clench yourself shut, but still, you can feel your [asshole] give a little bit more each time. Finally, your stamina fails, and you feel the flat head of [his of M] [DickDesc of M] pop past your anal ring.[or][BigNameDesc of M]'s flat tip presses insistently against your sphincter, smearing it with copious precum. You struggle desperately, but trapped underneath [his of M] huge lower body, all you accomplish is getting most of your buttcrack covered in 'lube'. Its only a matter of time before your [asshole] starts to give, and [his of M] wide shaft slowly squeezes past your tight anal ring.[at random] No longer able to struggle, you resign yourself to your fate as [he of M] slowly begin to thrust.";
	otherwise if the relevant sex addiction of M < 12:
		say "[one of][BigNameDesc of M] drives [his of M] weight forward, causing [his of M] shaft to press insistently against your sphincter. [big he of M] repeats the process several times, causing your [asshole] to give a little bit more each time. Finally, you feel the flat head of [his of M] [DickDesc of M] pop past your anal ring, followed by the first few inches of [his of M] shaft.[or][BigNameDesc of M]'s flat tip presses insistently against your sphincter, smearing it with copious precum. Since you're trapped under [his of M] huge lower body, your half-heartedly struggling does nothing aside from spreading [his of M] 'lube' across most of your buttcrack. Its only a matter of time before your [asshole] starts to give, and [his of M] wide shaft slowly squeezes past your anal ring, followed by a the first few inches of [his of M] shaft.[at random] You find yourself looking forward to it as [he of M] slowly begins to thrust.";
	otherwise:
		say "[BigNameDesc of M] drives [his of M] weight forward, causing [his of M] shaft to press insistently against your sphincter. [big he of M] repeats the process several times, causing your [asshole] to give a little bit more every time. Finally, your feel [his of M] big, fat [DickDesc of M] pop past your anal ring, followed by the first few inches of [his of M] shaft. You roll your eyes back as [he of M] slowly begins to thrust.".

To say LessLooseAssholePenetrationFlav of (M - centaur):
	if the relevant sex addiction of M < 7:
		say "[BigNameDesc of M] drives [his of M] weight forward, causing [his of M] shaft to press insistently against your sphincter. You try your best to clench yourself shut, but [his of M] precum provides more than enough natural lubrication to overcome your token resistance. It only takes a couple seconds of pushing for [his of M] wide [DickDesc of M] to pop past your anal ring, followed by the first few inches of [his of M] shaft. You fling [if face is actually occupied]muffled [end if]curses as [he of M] eagerly begins to thrust.";
	otherwise if the relevant sex addiction of M < 12:
		say "[one of][BigNameDesc of M] drives [his of M] weight forward, causing [his of M] shaft to press insistently against your sphincter. You aren't sure whether to resist or just give in, and after a couple seconds of continuous pushing, your [asshole] makes the decision for you, allowing [his of M] wide shaft through your anal ring with a satisfying pop.[or][BigNameDesc of M]'s flat tip presses insistently against your sphincter, smearing it with copious precum. Since you're trapped under [his of M] huge lower body, there's nothing you can do but accept it, and after a few seconds of pushing, you feel [his of M] wide [DickDesc of M] pop through your anal ring, following by the first few inches of [his of M] shaft.[at random] You bite back a moan as [he of M] eagerly begins to thrust.";
	otherwise:
		say "[one of][BigNameDesc of M] drives [his of M] weight forward, causing [his of M] shaft to press insistently against your sphincter. [big his of M] precum provides more than enough natural lubrication to allow [his of M] flat cockhead to pop past your anal ring after a couple seconds of pushing, and you moan hungrily as the first few inches of [his of M] big, fat [DickDesc of M] slide into your [asshole].[or][BigNameDesc of M]'s flat tip presses insistently against your sphincter, smearing it with copious precum. You don't put up a shred of resistance, simply enjoying the brief period of continuous pushing before [his of M] [DickDesc of M] passes through your anal ring with a satifying pop.[at random] You roll your eyes back as [he of M] eagerly begins to thrust.".

To say VeryLooseAssholePenetrationFlav of (M - centaur):
	let O be a random monster penetrating face;
	if the relevant sex addiction of M < 7:
		say "[BigNameDesc of M] drives [his of M] weight forward, causing [his of M] shaft to press insistently against your sphincter. You [if O is monster]exhale sharply through your nose[otherwise]curse[end if] as [his of M] wide cockhead pops past your anal ring, followed by the first few inches of [his of M] shaft. Within the next moment [he of M] has already begun to thrust.";
	otherwise if the relevant sex addiction of M < 12:
		say "[one of][BigNameDesc of M] drives [his of M] weight forward, causing [his of M] shaft to press insistently against your sphincter. You put up a token resistance, but even that only delays [him of M] by a second. After exactly one second, you feel [his of M] wide cockhead pop past your anal ring, followed by the first few inches of [his of M] [DickDesc of M]. [big he of M] doesn't bother leaving time for build-up as [he of M] begins to thrust.[or][BigNameDesc of M]'s flat tip presses against your sphincter for a moment before popping in, followed by the first few inches of [his of M] shaft. By the time you think to resist, [he of M] has already begun to thrust.[at random]";
	otherwise:
		say "[one of][BigNameDesc of M] drives [his of M] weight forward, causing [his of M] shaft to press insistently against your sphincter. You wiggle your ass just a bit, so you can savor the feeling of penetration that much longer. After exactly one second, you feel [his of M] wide cockhead pop past your anal ring, followed by the first few inches of [his of M] big, fat [DickDesc of M]. Within the next moment [he of M] has already begun to thrust.[or][BigNameDesc of M]'s flat tip presses against your sphincter for a moment before popping in, followed by the first few inches of [his of M] big, fat shaft. You shudder with pleasure as [he of M] immediately begins to thrust.[at random]".

To say SpitroastPrep of (M - centaur) with (O - a monster) in (F - vagina):
	say "[BigFuckerDesc of M] uses a hoof to force you onto all fours, [his of M] [LongDickDesc of M] prodding your thighs as [he of M] clumsily lines it up with your entrance.".

To say ThreesomePrep of (M - centaur) with (N - a monster) in (F - vagina):[Does this monster have something unique for double penetration, or do N and M interact in a special way? override this function]
	if N is intelligent, say "[BigFuckerDesc of N] flips you onto your back, holding you by the waist as [FuckerDesc of M] steps over you, [his of M] [LongDickDesc of M] waving obscenely as [he of M] takes aim at your entrance.";
	otherwise say "With some difficulty, [BigFuckerDesc of M] flips you onto your back without disturbing [FuckerDesc of N]. [big he of N] keeps fucking you as [FuckerDesc of M] lines up [his of M] [LongDickDesc of M] with your entrance.".

To say FoursomePrep of (M - centaur) with (N - a monster) and (O - a monster) in (F - vagina):
	if N is intelligent, say "The [N] pulls you into [his of N] lap, pinning your arms to your waist as [FuckerDesc of M] steps over you, [his of M] [LongDickDesc of M] waving obscenely as [he of M] takes aim at your entrance.";
	otherwise say "With some difficulty, [BigFuckerDesc of M] flips you onto your back without disturbing [FuckerDesc of N] or [FuckerDesc of O]. They continue to fuck you as [FuckerDesc of M] lines up [his of M] [LongDickDesc of M] with your entrance.".

To say TwosomePrep of (M - centaur) in (F - vagina):
	say "[BigFuckerDesc of M] steps over you, [his of M] [LongDickDesc of M] dragging a line of 'drool' up the side of your leg as [he of M] lines [him of M]self up with your entrance.".

To say FriendlyPenetrationFlav of (M - centaur) in (F - vagina):
	say PenetrationFlav of M in F.

To say VaginalDefloweringFlav of (M - centaur):
	if the sex addiction of the player < 7:
		say "[BigNameDesc of M]'s flat, bestial cockhead smears you with precum as bears down on your virginal [vagina]. At first, imminent end of your purity feels like nothing more than a bad, bad dream, but as more and more of [his of M] thick , slippery 'lubrication' covers your sex, you feel yourself slowly beginning to stretch. After several seconds of pushing, each more painful than the last, your hymen is finally torn and [his of M] [DickDesc of M] slowly slides in, removing your virginity forever. [big he of M] leaves you a moment to get used to [him of M] before [he of M] begins to thrust.";
	otherwise if the sex addiction of the player < 12:
		say "[BigNameDesc of M]'s flat, bestial cockhead smears you with precum as bears down on your virginal [vagina]. At first, imminent end of your purity feels impossible, but as more and more of [his of M] thick , slippery 'lubrication' covers your sex, you feel yourself slowly beginning to stretch. After several seconds of pushing, each more painful than the last, your hymen is finally torn, and [his of M] [DickDesc of M] slowly slides in, removing your virginity forever. [big he of M] leaves you a moment to get used to [him of M] before [he of M] begins to thrust.";
	otherwise:
		say "[BigNameDesc of M]'s flat, bestial cockhead smears you with precum as bears down on your virginal [vagina]. At first, imminent end of your purity feels like nothing more than a great dream, but as more and more of [his of M] thick , slippery 'lubrication' covers your sex, you feel yourself slowly beginning to stretch. After several seconds of pushing, each more intense than the last, your hymen finally tears, and [his of M] [DickDesc of M] slowly slides in, removing your virginity forever. [big he of M] leaves you a moment to get used to [him of M] before [he of M] begins to thrust.".

To say VeryTightVaginaPenetrationFlav of (M - centaur):
	if the relevant sex addiction of M < 7:
		say "[one of][BigNameDesc of M] drives [his of M] weight forward, using [his of M] flat, bestial cockhead to part your folds. That's as far as [he of M] goes, at first, but as the seconds tick by, [he of M] slowly ramps up the force, and you feel yourself gradually beginning to stretch. The sensation is excruciating, but trapped under [his of M] huge lower body, there's nothing you can do but grit your teeth as [his of M] huge [DickDesc of M] slowly, painfully slides into your [vagina].[or][BigNameDesc of M]'s flat, bestial cockhead smears you with precum as bears down on your defenceless [vagina]. At first, the idea of [him of M] actually entering you feels like nothing more than an unpleasant dream, but as more and more of [his of M] thick, slippery 'lube' covers your sex, you feel yourself slowly beginning to stretch. After several seconds of pushing, each more painful than the last, you are finally forced wide enough for [his of M] [DickDesc of M] to slowly slide in.[at random] [big he of M] leaves you a moment to get used to [him of M] before [he of M] begins to thrust.";
	otherwise if the relevant sex addiction of M < 12:
		say "[one of][BigNameDesc of M] drives [his of M] weight forward, using [his of M] flat, bestial cockhead to part your folds. That's as far as [he of M] goes, at first, but as the seconds tick by, [he of M] slowly ramps up the force, and you feel yourself gradually beginning to stretch. The sensation is excruciating, but trapped under [his of M] huge lower body, there's nothing you can do but try to ignore your own excitement as [his of M] huge [DickDesc of M] slowly, painfully slides into your [vagina].[or][BigNameDesc of M]'s flat, bestial cockhead smears you with precum as bears down on your [vagina]. At first, the idea of [him of M] actually entering seems impossible, but as more and more of [his of M] thick, slippery 'lube' covers your sex, you feel yourself slowly beginning to stretch. After several seconds of pushing, each more painful than the last, you are finally forced wide enough for [his of M] [DickDesc of M] to slowly slide in.[at random] [big he of M] leaves you a moment to get used to [him of M] before [he of M] begins to thrust.";
	otherwise:
		say "[BigNameDesc of M]'s flat, bestial cockhead smears you with precum as bears down on your [vagina]. At first, the idea of [him of M] actually entering seems like nothing more than a pleasant dream but as more and more of [his of M] thick, slippery 'lube' covers your sex, you feel yourself slowly beginning to stretch. After several seconds of pushing, each more intense than the last, you are finally forced wide enough for [his of M] [DickDesc of M] to slowly slide in. [big he of M] leaves you a moment to get used to [him of M] before [he of M] begins to thrust.".

To say LessTightVaginaPenetrationFlav of (M - centaur):
	if the relevant sex addiction of M < 7:
		say "[one of][BigNameDesc of M] drives [his of M] weight forward, causing [his of M] flat, bestial cockhead to press between your folds. You gradually begin to stretch as [he of M] ramps up the force, and trapped under [his of M] huge lower body, you have no choice but to lie there helplessly as [his of M] huge [DickDesc of M] slides slowly into your defenceless [vagina].[or][BigNameDesc of M]'s flat, bestial cockhead smears you with precum as bears down on your defenceless [vagina]. At first, you don't know how [he of M]'s going to fit, but after the thick, slippery 'lube' has built up enough to seep into your sex, you feel yourself slowly beginning to stretch. You grit your teeth, unable to struggle as [his of M] disgusting [Dickdesc of M] forces its way in.[at random] [big he of M] only waits for a moment before [he of M] begins to thrust.";
	otherwise if the relevant sex addiction of M < 12:
		say "[one of][BigNameDesc of M] drives [his of M] weight forward, using [his of M] flat, bestial cockhead to press between your folds. You gradually begin to stretch as [he of M] ramps up the force, and trapped under [his of M] huge lower body, you decide to simply lie there and accept it as [his of M] huge [DickDesc of M] slides into your [vagina].[or][BigNameDesc of M]'s flat, bestial cockhead smears you with precum as bears down on your [vagina]. At first, you're not sure [he of M]'s going to fit, but after the thick, slippery 'lube' has built up enough to seep into your sex, you feel yourself slowly beginning to stretch. You bite back a moan, forgetting to struggle as [his of M] huge [DickDesc of M] finally slides in.[at random] [big he of M] only waits for a moment before [he of M] begins to thrust.";
	otherwise:
		say "[one of][BigNameDesc of M] drives [his of M] weight forward, using [his of M] flat, bestial cockhead to press between your folds. You gradually begin to stretch as [he of M] ramps up the force, so you happily lie there and accept it as [his of M] huge [DickDesc of M] slides into your [vagina].[or][BigNameDesc of M]'s flat, bestial cockhead smears you with precum as bears down on your [vagina]. At first, you're afraid [he of M]'s not going to fit, but after the thick, slippery 'lube' has built up enough to seep into your sex, you feel yourself slowly beginning to stretch. You moan hungrily as [his of M] big, fat [DickDesc of M] finally slides in.[at random] [big he of M] only makes you wait for a moment before [he of M] begins to thrust.".

To say LessLooseVaginaPenetrationFlav of (M - centaur):
	if the relevant sex addiction of M < 7:
		say "[one of][BigNameDesc of M] drives [his of M] weight forward, pressing [his of M] flat, bestial cockhead between your folds. Trapped under [his of M] huge body, you have no choice but to lie there helplessly as [his of M] disgusting [DickDesc of M] slides into your [vagina].[or][BigNameDesc of M]'s bestial shaft smears you with precum as bears down on your [vagina], relying on natural lubrication to slowly force its way in.[at random] You fling curses at [him of M] as [he of M] begins to thrust.";
	otherwise if the relevant sex addiction of M < 12:
		say "[one of][BigNameDesc of M] drives [his of M] weight forward, pressing [his of M] flat, bestial cockhead between your folds. Trapped under [his of M] huge body, you simply accept it as [his of M] huge [DickDesc of M] slides into your [vagina].[or][BigNameDesc of M]'s bestial shaft smears you with precum as bears down on your [vagina], relying on natural lubrication to slowly force its way in.[at random] You emit a small sigh as [he of M] begins to thrust.";
	otherwise:
		say "[one of][BigNameDesc of M] drives [his of M] weight forward, pressing [his of M] flat, bestial cockhead between your folds. You happily lie there and accept it as [his of M] huge [DickDesc of M] slides into your [vagina].[or][BigNameDesc of M]'s bestial shaft smears you with precum as bears down on your [vagina], relying on natural lubrication to slowly force its way in.[at random] You emit a satisfied moan as [he of M] begins to thrust.".

To say VeryLooseVaginaPenetrationFlav of (M - centaur):
	if the relevant sex addiction of M < 7:
		say "[one of][BigNameDesc of M] slowly drives [his of M] weight forward, sliding [his of M] bestial shaft into your unwilling [vagina].[or]You scoff as [he of M] drives [his of M] weight forward, sliding [his of M] bestial shaft into your [vagina].[or]You [if face is actually occupied]make an indignant noise[otherwise]curl your lip in digust[end if] as [his of M] bestial shaft presses between your folds, providing its own lubrication as it slowly slides into your [vagina].[in random order] [Big he of M] sighs in satisfaction as [he of M] begins to thrust.";
	otherwise if the relevant sex addiction of M < 12:
		say "[one of][BigNameDesc of M] slowly drives [his of M] weight forward, sliding [his of M] bestial shaft into your not-unwilling [vagina].[or]You suppress a moan as [he of M] drives [his of M] weight forward, sliding [his of M] bestial shaft into your [vagina].[or]You [if face is actually occupied]make an muffled noise[otherwise]bite your lip[end if] as [his of M] bestial shaft presses between your folds, providing its own lubrication as it slowly slides into your [vagina].[in random order] [Big he of M] sighs in satisfaction as [he of M] begins to thrust.";
	otherwise:
		say "[one of][BigNameDesc of M] slowly drives [his of M] weight forward, sliding [his of M] bestial shaft into your oh-so-willing [vagina].[or]You shamelessly moan as [he of M] drives [his of M] weight forward, sliding [his of M] bestial shaft into your [vagina].[or]You [if face is actually occupied]emit a muffled moan[otherwise]moan hungrily[end if] as [his of M] bestial shaft presses between your folds, providing its own lubrication as it slowly slides into your [vagina].[in random order] [Big he of M] sighs in satisfaction as [he of M] begins to thrust.".

To decide if (M - centaur) is willing to creampie (F - vagina):
	if the reaction of the player is 0:
		let C be 4;
		if the player is pheromonal, decrease C by 2;
		if the player is a pussy slut, decrease C by 1;
		if a random number between 1 and C > 1, decide no;
	decide yes.

To decide if (M - centaur) is willing to creampie (F - asshole):
	if the reaction of the player is 0:
		let C be 4;
		if the player is a butt slut, decrease C by 1;
		if a random number between 1 and C > 1, decide no;
	decide yes.

To say CreampieFlav of (M - centaur) in (F - a fuckhole):
	if the reaction of the player is 0:
		say "[BigNameDesc of M] begins to groan, forcing [his of M] long [DickDesc of M] in deeper and deeper with every thrust. Your continued struggling seems to pay off, and just when you're about to make [him of M] pop out, [he of M] slams back in with a sudden powerful thrust, followed by the first salvo of [semen]. You howl in despair as [he of M] thoroughly inseminates you, using the extraordinary length of [his of M] [LongDickdesc of M] to plant every drop of [his of M] load deep, deep inside your [variable F]. A solid minute later, [he of M] finally pulls out with a wet *schlurp*.";
	otherwise:
		say "[BigNameDesc of M] begins to groan, forcing [his of M] long [DickDesc of M] in deeper and deeper with every thrust. You are left with a final moment of anticipation as [he of M] bottoms out, [his of M] [LongDickDesc of M] penetrating you all the way to your core as you feel the first salvo of [semen]. [big he of M] continues to lightly thrust [his of M] hips as [he of M] inundates you with [his of M] load, ensuring that every drop is planted deep, deep inside your [variable F]. After a solid minute, [he of M] finally pulls out with a wet *schlurp*.";

To say CondomPieFlav of (M - centaur) in (F - a fuckhole):
	say "[BigNameDesc of M] begins to groan, forcing [his of M] long [DickDesc of M] in deeper and deeper with every thrust. You are left with a final moment of anticipation as [he of M] bottoms out, [his of M] [LongDickDesc of M] penetrating you all the way to your core as the first salvo of [semen] explodes into the condom. [big he of M] continues to lightly thrust as the latex sheath captures [his of M] load, taking a solid minute to thoroughly empty out [his of M] balls before finally pulling out.";

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
	say "[BigNameDesc of M] begins to groan, forcing [his of M] long [DickDesc of M] in deeper and deeper with every thrust. However, your [if the relevant sex addiction of M < 12]continued struggling seems to pay off, and you[otherwise]playful struggling is a little too effective, and you inadvertantly[end if] cause [him of M] to pop out just after [he of M] begins to cum. You [if the relevant sex addiction of the player < 7]breathe a sigh of relief[otherwise if the relevant sex addiction of the player < 12]breathe a sigh of half regret[otherwise]are overcome with regret[end if] as the majority of [his of M] load spews out into a huge puddle between your legs.";

To say MessyPullOutFlav of (M - centaur) in (F - a fuckhole):
	say "[BigNameDesc of M] begins to groan, forcing [his of M] long [DickDesc of M] in deeper and deeper with every thrust. However, your [if the relevant sex addiction of M < 12]continued struggling seems to pay off, and you[otherwise]playful struggling is a little too effective, and you inadvertantly[end if] cause [him of M] to pop out just as [he of M] begins to cum. You [if the relevant sex addiction of the player < 7]shudder[otherwise if the relevant sex addiction of the player < 12]wince[otherwise]squirm in delight[end if] as [his of M] huge load douses your crotch, back, and thighs.";

Part 4 - Conversation

Section 1 - Greeting

To say FirstResponse of (M - centaur):
	if the class of the player is princess:
		say "[speech style of M]'[one of]I am honoured to meet you, your grace.'[or]It is an honour to meet you, your grace.'[at random][roman type][line break]";
	otherwise if the class of the player is cowgirl:
		say "[speech style of M]'Nice to meet you. By the way, I may not look like it, but I promise I fuck like a minotaur.'[roman type]";
	otherwise if the class of the player is catgirl:
		say "[speech style of M]'Hello! By the way, I don't mind purring. It sexy.'[roman type]";
	otherwise if the class of the player is puppygirl:
		say "[speech style of M]'Nice to meet you. By the way, I don't think panting is a turn off. Its actually cute.'[roman type]";
	otherwise if the class of the player is bunny:
		say "[speech style of M]'Hello! By the way, I love scavenger hunts.'[roman type][line break]";
	otherwise if the class of the player is worshipper:
		say "[speech style of M]'Hmph.'[roman type]";
	otherwise if the class of the player is priestess or the class of the player is cultist:
		say "[speech style of M]'[one of]At your service!'[or]I'm at your service!'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]The pleasure's all mine. Although...it doesn't have to be.'[or]I'd say the pleasure is mine, but now that I really look at you, maybe you and I could find some way to share?'[at random][roman type]".

To say RepeatResponse of (M - centaur):
	if the class of the player is princess:
		say "[speech style of M]'[one of]Once again, I am honoured. Sorry if this is informal, but I've always wanted to pledge my loyalty to a princess.'[or]I am at your service! Any kind of service you want. Well, as long as I'm pitching.'[or]I'm honoured, your grace. Pardon me, but I've never met a royal before. Is it true princesses love anal?'[then at random][roman type][line break]";
	otherwise if the player is pheromonal:
		say "[speech style of M]'[one of]Hey[or]Yo[or]Sup[at random]. [one of]You smell nice.[or]By the way, that's a really nice scent.[or]I like your scent by the way. Its nice.[at random]";
	otherwise if the class of the player is priestess:
		say "[speech style of M]'[one of]I am honoured to be in the presence of your holy self.'[or]Its always a pleasure to meet a holy woman.'[or]Well met! I'm always glad to meet a woman of the cloth.'[at random][roman type]";
	otherwise if the class of the player is cultist:
		say "[speech style of M]'[one of]I don't exactly know what altar you tend to, but any altar girl is good enough for me!'[or]Even pagan gods are fine by me!'[or]Well met! Its always a pleasure to meet a fellow devout.'[at random][roman type]";
	otherwise:
		if the refactory-period of M > 0:
			say "[speech style of M]'[one of]Hey there. I don't really feel like dueling right now, but I might later.'[or]Hi. I'm not up for anything at the moment, but don't forget to check back later.'[or]Hey! I'm feeling pretty satisfied at the moment, but I'll be ready for more soon.'[at random][roman type][line break]";
		otherwise:
			say "[speech style of M]'[one of]Hey! If you don't want to duel, we could definitely try something more casual.'[or]Hi there. If it seems like I have a boner for combat, you're right. It gets me so rigid.'[or]Hey there. If you're wondering about this shield, its a family heirloom.'[or]Well met! Want to get to know each other better?'[at random][roman type][line break]".

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
	say "[speech style of M]'[one of]I'm here to meet the altar girl that resides here. Wish me luck!'[or]When I became a knight, I made a solemn pledge to always follow my heart. My heart tells me to have lots of sex.'[or]I'm visiting the domain of the princess so I can face a gladiator in combat. They like fighting, and they love huge [DickDesc of M]s, so its win-win!'[or]I'm a mission to clear out the demon lord's remaining minions...I keep getting kind of sidetracked...'[stopping][roman type][line break]".

To say EscapeAnswer of (M - centaur):
	say "[speech style of M]'You need to go through the back door. Heheheheh.'[roman type][line break]".

To say AdviceAnswer of (M - centaur):
	say "[speech style of M]'[one of]Lube doesn't just make things slippery. It can also soothe a hole that's recently taken a lot of punishment, and in a pinch, you can even drink it.'[or]There is a slimegirl in this forest that knows of a technique once known only to gladiators. If you can earn her trust, she might be willing to teach you.'[at random][roman type][line break]".

Section 3 - Drink Requesting

Centaur ends here.
