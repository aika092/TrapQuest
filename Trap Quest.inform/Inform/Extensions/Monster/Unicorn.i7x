Unicorn by Monster begins here.

Unicorn is a monster. Unicorn is intelligent. Unicorn is male. Understand "temperamental", "temper", "mental" as unicorn. The text-shortcut of unicorn is "uni".

To decide which number is the girth of (M - unicorn):
	decide on 2.

To decide which number is the base semen load of (M - unicorn):
	decide on 4.

To say LongDickDesc of (M - unicorn):
	if full-lady fetish is 1, say "short strap-on";
	otherwise say "short [manly-penis]".

Definition: unicorn is willing to urinate:
	if unicorn is unbridaled, decide no;
	if mythical creature fetish is 1, decide yes;
	decide no.

Definition: unicorn is willing to do oral:
	if unicorn is unbridaled, decide no;
	decide yes.

Definition: unicorn is willing to do anal:
	if the unicorn is unbridaled and the player is possessing a vagina, decide no;
	decide yes.

Definition: unicorn is willing to fluff:
	if there is a monster penetrating a fuckhole, decide no;
	decide yes.

[Definition: unicorn is willing to masturbate: decide yes.]

To say speech style of (M - unicorn):
	say second custom style.

Definition: unicorn is father material: decide yes.
Definition: unicorn is wenchy: decide yes.
Definition: unicorn is human: decide yes.
Definition: unicorn is musky:
	if the refractory-period of it <= 0, decide yes;
	decide no.

Definition: unicorn is woods dwelling: decide yes.

To say ShortDesc of (M - unicorn):
	say "unicorn".

To say MediumDesc of (M - unicorn):
	say "temperamental unicorn".

To say MonsterDesc of (M - unicorn):
	say "An androgynous person with blonde hair, pointy ears, and an ivory horn poking out of [his of M] forehead. [big he of M] is wearing an extravagant wedding dress with a slit down the front that puts [his of M] dainty white panties and lissom legs on full display. [if mythical creature fetish is 1][big his of M] ankles are covered in fine white fur below the ankles, and in place of feet, [he of M] has a pair of immaculate white hooves.[end if]".

To say MonsterComment of (M - unicorn):
	if diaper quest is 0:
		if the player is pheromonal:
			if the bimbo of the player < 7:
				say "[first custom style][big his of M] perfume is really nice. No, actually it doesn't smell like perfume at all. In fact, it's making me feel a bit... strange.";
			otherwise if the bimbo of the player < 12:
				say "[variable custom style][big he of M] smells good. It's like the best perfume ever, but... why is it making me horny?";
			otherwise:
				say "[second custom style][big he of M] smells so good I'm actually starting to get turned on. I really have to try that scent... especially inside me.";
		otherwise if the bimbo of the player < 7:
			if the player is gendered male, say "[first custom style][one of][if the times-submitted of M > 0]Is that how I'm supposed to end up?[otherwise]I wonder what's up with that bulge in [his of M] panties. Heh, I bet it's a dildo or something.[end if][or]Reminds me of a dating sim I used to play at home.[or][big he of M] seems kind of haughty, but I can handle that.[in random order]";
			otherwise say "[first custom style][one of][if the times-submitted of M > 0]I suppose I know the reason for the panty bulge now...[otherwise][big his of M] panties don't seem to fit right. They're bulging out a bit in the front.[end if][or]That dress is fairly modest by this game's standards.[or][big he of M] seems like [he of M] has a good head on [his of M] shoulders.[in random order]";
		otherwise if the bimbo of the player < 12:
			say "[variable custom style][one of][big he of M]'s so beautiful...[or]That dress is so fashionable![or][big he of M]'s really dignified![in random order]";
		otherwise:
			say "[second custom style][one of]I wouldn't mind being a homewrecker for you, cutie![or]I wonder who the lucky [man of demon lord] is?[or]Everyone's dignified until you make them cum![in random order]";
		say "[roman type][line break]".

Figure of happy unicorn is the file "NPCs/Forest/unicorn1.jpg".
Figure of angry unicorn is the file "NPCs/Forest/unicorn2.jpg".

To decide which figure-name is the monster-image of (M - unicorn):
	if M is friendly, decide on figure of happy unicorn;
	decide on figure of angry unicorn.

To say PregGrowth of (M - unicorn):
	say "[NameDesc of M][']s [child]".

To compute labour to (M - unicorn):
	if M is regional and M is alive:
		compute pregnancy clothing displacement;
		say "[PregFlav][if the father is in the location of the player]The [father]'s horn[otherwise]The [father] appears almost as if on cue! [big his of M] horn[end if] glows brilliantly as [he of M] places [his of M] hand on your belly, and an adorable human baby materialises in the crux of [his of M] arm.[line break][speech style of M]'How am I going to explain this to my [literalMistress of demon lord]? [one of]Ugh, looks like I need to be[or]Once again, looks like I have to be[stopping] the responsible one and raise [one of]him[or]her[at random]. Ugh, next time, why not just keep your legs closed.'[roman type][line break][BigNameDesc of M] cradles the tiny baby to [his of M] chest, and with a final, surprisingly happy look in your direction, [he of M] leaves you to recover you from your ordeal.";
		if the father is in the location of the player:[possibly this effect could be different]
			say "For some reason, you are filled with a sense of deep fulfilment. You feel great!";
			StrengthUp 1;
			DexUp 1;
			IntUp 1;
	otherwise if M is alive:
		Delay Labour.

To set up (M - unicorn):
	reset M;
	now the monstersetup of M is 1;
	now the raw difficulty of M is the starting difficulty of M;
	add demon tail plug to the tradableItems of M, if absent;
	add demon tail plug to the taxableItems of M, if absent;
	add demon belt to the tradableItems of M, if absent;
	now the health of M is the maxhealth of M.

Definition: unicorn is uniquely unfriendly: [We can use this to easily specify when a monster is pissed off regardless of usual stats.]
	if unicorn is friendly-fucking, decide no;
	if unicorn is default uniquely unfriendly, decide yes;
	if unicorn is unbridaled, decide yes;
	decide no.

unicorn can be unbridaled or bridaled. unicorn is bridaled.

To compute perception of (M - unicorn):
	let X be demon lord;
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed]![otherwise].[end if]";
	if M is unbridaled:
		say "[big he of M] has fury in [his of M] eyes.[line break][speech style of M]'[one of]YOU!'[or]YOOOUUU!'[in random order][roman type][line break]";
	otherwise if player-class matches the text "princess bride":
		say "[big he of M] has fury in [his of M] eyes.[line break][speech style of M]'My name is Unicorn Montoya. You stole my fiancé. Prepare to be creampied.'[roman type][line break]";
		now M is unbridaled;
		anger M;
	otherwise if there is a worn xavier's cunt tattoo or X is mating:
		say "[big he of M] snarls.[line break][speech style of M]'[one of]The demon lord is MINE. You can't have [him of X]!'[or]You think you can compete with me, but you can't. The demon lord wants only ME. ME!'[or]You'll regret you ever looked at the demon lord.'[at random][roman type][line break]";
		anger M;
	otherwise if the class of the player is princess:
		say "[big he of M] snarls.[line break][speech style of M]'[one of]Get ready to pay.'[or]Home wrecking BITCH!'[or]Time for me to finally get my REVENGE.'[at random][roman type][line break]";
		anger M;
	otherwise if penis is lewdly exposed or vagina is lewdly exposed:
		let B be breasts;
		if penis is lewdly exposed and the player is possessing a penis, now B is penis;
		if vagina is lewdly exposed and the player is possessing a vagina, now B is vagina;
		say "[big he of M] glances at your exposed [B] and turns the other way.[line break][speech style of M]'[one of]I won't associate with someone like you.'[or]I am not interested in people like you.'[or]Don't worry, I'll leave first.'[at random][roman type][line break]";
		distract M;
		increase the scared of M by 10;
	otherwise:
		compute appearance assessment of M;
		if M is objectifying the player, compute sudden objectification of M.

To compute appearance assessment of (M - unicorn):
	if the class of the player is succubus or the player is hotel employed:
		say "[big he of M] frowns.[line break][speech style of M]'You look horrid. I thought you should know.'[roman type][line break]";
		FavourDown M by 2;
	otherwise if breasts is lewdly exposed:
		say "[big his of M] eyes go directly to your chest, and linger there as a flush spreads over [his of M] cheeks.[line break][speech style of M]'[one of]T-They look so soft...'[or]A-are those real?'[at random][roman type][line break]";
		FavourDown M;
	otherwise if the player is pheromonal or the number of glazed body parts > 0:
		say "[BigNameDesc of M][']s nose twitches, and a visible flush spreads over [his of M] face.[line break][speech style of M]'[one of]'U-uhm... G-go take a shower!'[or]I-I hate how you smell! T-take a shower!'[or]Y-your scent is a-awful. Y-yes. Take a shower.'[at random][roman type][line break]";
		FavourDown M;
	otherwise if the player is top-wardrobe-malfunctioning:
		compute tq nip slip reaction of M;
	otherwise:
		say "[big his of M] expression remains mostly neutral, except for a small smile as [he of M] nods toward you.".

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

To check motion of (M - unicorn):
	if M is unbridaled and the boredom of M <= 0, check seeking 1 of M;
	otherwise check default motion of M.

To check attack of (M - unicorn):
	if M is unbridaled:
		say "[speech style of M]'[one of][caps he of demon lord] WAS MINE, BITCH!'[or]NOBODY STEALS MY FIANCE'[in random order][roman type][line break]";
	otherwise if player-class matches the text "princess bride":
		say "[speech style of M]'My name is Unicorn Montoya. You stole my fiancé. Prepare to be creampied.'[roman type][line break]";
		now M is unbridaled;
	check default attack of M.

unicorn can be unicorn-charged or not unicorn-charged. unicorn is not unicorn-charged.

To compute damaging attack of (M - unicorn):
	let T be the total magic power of the player;
	let P be 0;
	if M is unbridaled, now P is 2;
	if M is unicorn-charged:
		compute shooting attack of M;
	otherwise if the player is the donator and a random number between 1 and (5 - P) is 1:
		if the magic-fatigue of the player < T:
			say "[BigNameDesc of M][']s horn glows with power as you feel magic being sucked out of you.";
			let X be the difficulty of M / 2;
			increase the magic-fatigue of the player by X;
			now M is unicorn-charged;
		otherwise if P > 0:
			say "[BigNameDesc of M][']s horn glows with power as it sucks energy out of you! It hurts!";
			let X be the difficulty of M;
			FatigueUp X * 2;
			BodyRuin 1;
			now M is unicorn-charged;
		otherwise:
			compute striking attack of M;
	otherwise:
		compute striking attack of M.

To compute shooting attack of (M - unicorn):
	say "A beam of light shoots out of [NameDesc of M]'s horn!";
	if the accuracy roll of M > the dexterity of the player:
		let B be the painful-part of M;
		say "The beam hits you [TargetName of B]! You feel a rush of stinging pain and tiredness!";
		compute M hurting B;
		FatigueUp 25;
		PainUp 10;
	otherwise:
		say "It's fast, but somehow you're able to dodge it without being hit.";
	now M is not unicorn-charged.

Section 1 - Protect and Attack

To compute (M - unicorn) protecting against (X - a monster):[if you are having sex, she'll get a bit turned on]
	if (X is witch or X is gladiator or X is ballooned aeromancer) and breasts is lewdly exposed:
		say "[BigNameDesc of M] looks from the [X]'s chest to yours, visibly blushing.[line break][speech style of M]'I-I'll be going now.'[roman type][line break]";
		FavourDown M;
	otherwise if the player is upright and M is guardian:
		compute M standard fighting against X;
	otherwise if the player is live fucked:
		say "[BigNameDesc of M] [one of]raises [his of M] eyebrows[or]scoffs[at random] as [he of M] watches you.[line break][speech style of M]'[one of]You're doing that all wrong, you know.'[or]You know, you're really terrible at that.'[or]Um, WOW. Who taught you how to have sex?'[or]Um, are you sure you're doing that right?'[or]You look like you have no CLUE what you're doing.'[or]Wow, you're really talentless. Don't quit your day job.'[at random][roman type][line break]";
		FavourDown M;
		Bore M;
	otherwise if M is buddy:
		if the player is upright:
			say "[BigNameDesc of M] rolls [his of M] eyes. [speech style of M]'[one of]Ugh, are you stupid? Just get on your knees.'[or]Why are you fighting [him of X]? Just get on your knees already.'[or]What are you doing? [big he of X] wants you to get on your knees.'[or][big he of X] wants you to get on your knees. Are you stupid or something?'[at random][roman type][line break] [BigNameDesc of M] turns to leave.";
			FavourDown M;
			Bore M;
		otherwise:
			say "[BigNameDesc of M] turns up [his of M] nose at you.[line break][speech style of M]'I guess we can find each other later. Hmph.'[roman type][line break]";
			now the scared of M is 30;
			FavourUp M;
			Bore M;
	otherwise:
		say "[speech style of M]'A bride to be should not concern [himself of M] with things like this.'[roman type][line break][BigNameDesc of M] turns to leave.";
		now the scared of M is 30;
		Bore M.

To say AllyDamageFlav of (X - unicorn) on (M - a monster):
	say "A bolt of magic fires from the tip of [NameDesc of X][']s horn and strikes [NameDesc of M][one of]. [BigNameDesc of X] looks surprised, as if [he of X] didn't even mean that to happen[or][stopping]!".

To compute the default taunting of (M - unicorn):[TODO]
	if M is unfriendly:
		say "[BigNameDesc of M] tries to covertly fondle [his of M] crotch as [he of M] watches you.";
	otherwise:
		say "[BigNameDesc of M] watches you, unable to conceal how turned on [he of M] is.";
		increase the blue-balls of M by 1.

To say PissDrinkThreat of (M - unicorn):
	say "[speech style of M]'[one of]Drink it! Drink it all[or]I-I'm gonna make you a toilet[or]I-I want to see you drink it[in random order]!'[roman type][line break]Something about the heat radiating off [his of M] [DickDesc of M] seems to promise a punishment if you don't let some in your mouth.".

To say UrinationFlav of (M - a unicorn):
	say "[BigNameDesc of M] holds [his of M] [LongDickDesc of M] inches away from your face, [one of]sighing in relief[or]furrowing [his of M] brows[or]shivering with relief[at random] as a stream of [urine] flows from the tip.[if the humiliation of the player < HUMILIATION-MODEST + 1500 and the urine taste addiction of the player < 7][line break][variable custom style][line break]This can't be happening[one of].[or] again![stopping][roman type][line break][end if]".

To say PresentAcceptanceFlav of (M - unicorn):
	say "[speech style of M]'[one of]Hmph. I-I suppose I could take you up on that.'[or]Did you expect me to say no? B-because I won't!'[or]W-well, when you put it like that I suppose I could make an exception...'[stopping][roman type][line break][BigNameDesc of M] seems convinced by your request!".

To say NormalMouthPenetrationFlav of (M - unicorn):
	say "[one of][if the relevant sex addiction of M < 8][BigNameDesc of M] presses the tip of [his of M] [DickDesc of M] against your lips, smearing [his of M] precum up and down your chin until you finally relent and let [him of M] slide in. You glower up at [him of M] as [he of M] begins to thrust.[otherwise if the relevant sex addiction of M < 13][BigNameDesc of M] presses the tip of [his of M] [DickDesc of M] against your lips, smearing [his of M] precum up and down your chin until you finally give in and open your mouth, emitting a slow sigh through your nose as [his of M] shaft slides through your lips.[otherwise][BigNameDesc of M] positions [his of M] [DickDesc of M] between your lips. You immediately open them, sighing contentedly as [he of M] enters your mouth.[end if][or][BigNameDesc of M] puts one hand on the back of your head, rapidly jerking [himself of M] off as [his of M] tip prods your lips. [if the relevant sex addiction of M < 8] You open your mouth to tell [him of M] off, but [he of M] immediately inserts [his of M] [DickDesc of M] and begins to thrust.[otherwise if the relevant sex addiction of M < 12]Knowing what's to come, you slowly open your mouth and accept [his of M] invading shaft.[otherwise]You obediently loll out your tongue, gazing at [his of M] [DickDesc of M] reverently as it slides through your lips.[end if][or][BigNameDesc of M] points to your mouth, desperately pumping [his of M] [DickDesc of M]. [if the relevant sex addiction of M < 7]You snarl.[line break][first custom style]'Not my proble-'[roman type][line break][big he of M] cuts you off by immediately shoving [himself of M] into your mouth. You glare lividly as [he of M] begins to thrust.[otherwise if the relevant sex addiction of M < 13]You open your mouth and loll out your tongue, avoiding eye contact with [him of M] as [his of M] [DickDesc of M] slides between your lips.[otherwise]You greedily lean forward and take [his of M] yummy [DickDesc of M] into your mouth.[end if][or][BigNameDesc of M] points to your mouth, whining as [he of M] jerks [himself of M] off. [if the relevant sex addiction of M < 3]You spit at [his of M] feet.[line break][first custom style]'That's your problem! Ask-'[roman type][line break][big he of M] cuts you off by immediately shoving [his of M] [DickDesc of M] in your mouth. You glare at [him of M] as [he of M] begins to thrust.[otherwise if the relevant sex addiction of M < 7]You slowly open it, not sure whether to hate or congratulate yourself as [his of M] [LongDickDesc of M] slides past your lips.[otherwise if the relevant sex addiction of M < 11]You obediently open your mouth, telling yourself not to enjoy it too much as [he of M] slides in.[otherwise]You eagerly part your lips and accept [his of M] [LongDickDesc of M] into your mouth.[end if][in random order]".

[For now, the unicorn doesn't change anything from the orgasm portion of the oral climax]
To compute angry punishment of (M - unicorn):
	if a random number between 1 and 4 is 1:
		if the lips of face < 2 + artificial enhancements fetish:
			say "Your lips swell significantly as a harsh burning sensation passes through the inside of your mouth, leaving you with a lasting reminder of all the pain you just endured, and how to avoid it next time.";
			LipsUp 1;
		otherwise:
			say "Your lips form a pronounced O-shape as a harsh waves of pain pass along the bottom of your mouth and down your throat. The sensation lingers in your head even after it has stopped, and you realise it has intensified your desire for oral sex.";
			OralSexAddictUp 1;
	otherwise if cow-ears is off-stage and cow-ears is actually summonable:
		summon cow-ears cursed;
		say "A [ShortDesc of cow-ears] materialises in your hair as a flash of red light fills your vision. You can't help but imagine the pain of being branded as property, and the sensation lingers in your thoughts long after the light fades.";
	otherwise if the number of worn clothing > 0:
		let C be a random worn tearable clothing;
		let R be a random number between 1 and 3;
		if R is 1 and C is clothing:
			say "Your [printed name of C] bursts into flame, instantly disappearing in a flash of painful cinders. The thought of that pain seems to fill in the space left by your clothes.";
			destroy C;
		otherwise:
			let C be a random worn clothing;
			say "Your [printed name of C] bursts into flame as the material absorbs [NameDesc of M][']s magic. Pain continues to linger even as the flames die out.";
			decrease the raw-magic-modifier of C by 1;
	otherwise:
		say "Your stomach turns over as a harsh burning sensation passes through your whole body, leaving you with a long lasting reminder of all the pain you brought on yourself for your resistance.";
	PainUp 10.

To check forgiveness of (M - unicorn):
	if the class of the player is priestess and a random number between (the blue-balls of M * -1) and (the charisma of the player * 10) >= 10:
		compute angry forgiveness of M;
	otherwise:
		consider angry punishment of M.

To say ForgivenessFlav of (M - unicorn):
	say "[BigNameDesc of M] seems a little disappointed.".

To say OralResistingResponse of (M - unicorn):
	say "[one of][BigNameDesc of M] seems too absorbed with getting [himself of M] off to acknowledge your protests![or][BigNameDesc of M] holds on tightly, too absorbed with how [his of M] [manly-penis] feels in your mouth to acknowledge your protests![or][BigNameDesc of M] doesn't seem to notice your protests, panting as [he of M] fucks your mouth with [his of M] [DickDesc of M].[or][BigNameDesc of M] continues thrusting with no acknowledgement of your protests.[or][BigNameDesc of M] continues thrusting despite your protests![in random order]".

To say NormalSubOralResponse of (M - unicorn):
	say "[one of][BigNameDesc of M] meets the bobbing of your head with eager thrusts.[or][BigNameDesc of M] holds your head with both hands, rolling [his of M] hips to meet the bobbing of your head.[or][BigNameDesc of M] holds on tightly, mewing with pleasure as you polish [his of M] [LongDickDesc of M].[or][BigNameDesc of M] thrusts steadily, huffing quietly as you [if the oral sex addiction of the player < 4]reluctantly[otherwise]eagerly[end if] polish [his of M] shaft.'[or][BigNameDesc of M] aggressively guides your movement, mewling quietly as you [if the oral sex addiction of the player < 4]reluctantly[otherwise]submissively[end if] suck [his of M] [DickDesc of M].[in random order]".

To say NearingClimaxOral of (M - unicorn):
	say "[one of]You feel your lips heat up as [NameDesc of M][']s thrusting grows even faster![or][BigNameDesc of M][']s thrusts grow faster and faster as you feel your lips slowly heating up.[or][BigNameDesc of M] face fucks you even harder, moaning uncontrollably as your lips begin heating up.[or]Your lips seem to heat up as [NameDesc of M] picks up speed, moaning as [he of M] rapidly slams [his of M] [DickDesc of M] down your throat.[at random]".

To say SwallowDemand of (M - a unicorn):
	say "Your lips [one of]continue to burn with heat[or]radiate palpable heat[or]keep their heat[or]radiate intense heat[at random] as you hold the [semen] in your mouth.[line break][speech style of M]'[one of]Now swallow it. Or I'll curse you.'[or]By all means, spit it out. If you want to be cursed.'[or]Swallow, or I'll curse you.'[at random][roman type][line break]".

To compute happy oral sex reward of (M - unicorn):
	say "The heat remains for a few seconds before slowly dissipating.";[see above function]
	FavourUp M by 1.

To say PrepTaunt of (M - unicorn) in (F - a fuckhole):
	if M is unwrapped:
		if F is vagina, say "[line break][speech style of M]'[one of]I-I'm gonna breed you![or]L-let's breed!'[or]Lemme cum inside you!'[or]Can I cum inside? I-I think I will!'[or]I'll breed you fast. N-nice and fast!'[at random][roman type][line break]";
		otherwise say "[line break][speech style of M]'[one of]Lemme cum inside![or]I-I'll put it all inside...'[or]It's OK if it's not my ass.'[or]Can I cum inside? Y-you probably don't mind...'[or]D-do I have to pull out? It- it's probably better that I don't...'[at random][roman type][line break]".

To decide if (M - unicorn) is willing to creampie (F - asshole):
	if the class of the player is princess or there is a worn anal star tattoo or the player is a butt slut, decide yes;
	if the reaction of the player is 0, decide no;
	decide yes.

To decide if (M - unicorn) is willing to creampie (F - vagina):
	if M is unbridaled, decide yes;
	if there is a worn xavier's cunt tattoo, decide no;[she respects her master]
	if the player is pheromonal or the player is a pussy slut, decide yes;
	if the class of the player is princess or the player is mating demon lord, decide yes;
	if the reaction of the player is 0, decide no;[After checking all the above conditions, struggling can now have an effect]
	decide yes.

To decide if (M - unicorn) is losing wrapper in (F - a fuckhole):
	if the reaction of the player is 0 or the class of the player is princess, decide yes;
	decide no.

To compute post climax effect of (M - unicorn) in (F - a fuckhole):
	compute M sleeping 200 after sex;
	FavourUp M;
	if newbie tips is 1, say sleeping tip.

[TODO: modify to account for condom]
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
			say "Harsh waves of pain pass through your [variable F], following every contour of your inner tunnel. The sensation lingers in your head even after it has stopped... ";
			if F is asshole, AnalSexAddictUp 1;
			otherwise VaginalSexAddictUp 1;
	otherwise if the number of worn clothing > 0:
		let C be a random worn tearable clothing;
		if C is clothing:
			say "Your [printed name of C] bursts into flame, instantly disappearing in a flash of painful cinders. The thought of that pain seems to fill in the space left by your clothes.";
			destroy C;
	otherwise:
		say "Your stomach turns over as a harsh burning sensation passes through your whole body, leaving you with a long lasting reminder of all the pain you brought on yourself for your resistance.";
	PainUp 10.

To say CreampieFlav of (M - unicorn) in (F - a fuckhole):
	if the reaction of the player is 1, say "[one of]Despite your struggling, [NameDesc of M] holds onto you with an iron grip, mumbling incoherently as [he of M] floods your [variable F] with [his of M] [semen].[or]Although you struggle, [NameDesc of M] holds on with an unexpectedly tight grip, moaning incoherently as [he of M] pumps your [variable F] full of [semen].[or][BigNameDesc of M] rapidly speeds up, ignoring your struggling with a surprisingly powerful grip as [he of M] shoots wave after wave of fresh, creamy [semen] into your [variable F].[at random] The heat slowly dissipates as [his of M] orgasm tapers off, and [he of M] slumps over asleep as [his of M] [DickDesc of M] slides out.";
	otherwise say "[one of][BigNameDesc of M] mumbles incoherently, tightening [his of M] grip as [he of M] unloads all of [his of M] pent up frustration directly into your [variable F].[or][BigNameDesc of M] rapidly speeds up as [he of M] erupts directly into your [variable F], thoroughly blasting your insides with wave upon wave of fresh, creamy [semen].[at random] The heat slowly dissipates as [his of M] orgasm tapers off, and [he of M] slumps over asleep as [his of M] [DickDesc of M] slides out.".

To say CondomFailFlav of (M - unicorn) in (F - a fuckhole):
	say "[BigNameDesc of M] slams [his of M] [DickDesc of M] home, and you feel a rush of heat as the condom disappears, allowing [NameDesc of M][']s load to [one of]shoot[or]surge[or]splurt[at random] directly into your unprotected [variable F]. [big he of M] doesn't seem to notice at all, continuing to thrust until [his of M] [DickDesc of M] softens and [he of M] slumps over, asleep.".

To say CondomPieFlav of (M - unicorn) in (F - a fuckhole):
	say "[BigNameDesc of M] moans with pleasure as the condom floods with warmth, shivering with relief as [his of M] softening [DickDesc of M] slides out. The heat dissipates as [he of M] slumps over, asleep.".

To say PullOutFlav of (M - unicorn) in (F - a fuckhole):
	if the reaction of the player is 1, say "[one of]Your continued struggling pushes [NameDesc of M] away at the last moment, causing [him of M] to spray [his of M] load all over the ground and immediately fall asleep[or][BigNameDesc of M] accidentally slips out of you at the last moment, shooting [his of M] load on the ground before immediately falling asleep[or]Thanks to your struggling, [BigNameDesc of M] is unable to hold on to you, and [his of M] [DickDesc of M] slips out of you just in time for [him of M] to blow [his of M] load on the ground and immediately fall asleep[at random].";
	otherwise say "[BigNameDesc of M] suddenly pulls out and sprays [his of M] load all over the ground.";

To say MessyPullOutFlav of (M - unicorn) in (F - a fuckhole):
	if the reaction of the player is 1, say "[one of]Your continued struggling pushes [NameDesc of M] away at the last moment, causing [him of M] to spray your [variable F] with fresh [semen][or][BigNameDesc of M] accidentally slips out of you at the last moment, shooting [his of M] load all over your [variable F] and thighs[or]Thanks to your struggling, [BigNameDesc of M] is unable to hold on to you, and [his of M] [DickDesc of M] slips out of you just in time for [him of M] to cover your [variable F] with [semen][at random]. [big he of M] immediately slumps over and falls asleep.";
	otherwise say "[BigNameDesc of M] suddenly pulls out and sprays [his of M] load all over your thighs.";

[To say MasturbationDeclarationFlav of (M - unicorn):
	say "[speech style of M]'[one of]Hmmph. You don't deserve what I'm about to do.'[or]You're lucky I'm doing this.'[stopping][roman type][line break]".

To say MasturbationStartFlav of (M - unicorn):
	say "[BigNameDesc of M] plants [his of M] foot on your [genitals].".

To say MasturbationFlav of (M - unicorn):
	if the player is possessing a vagina:
	otherwise:]

Section 3 - Damage

To say DamageReactHealthy of (M - unicorn):
	say "[big he of M] yelps in pain!".

To say DamageReactDamaged of (M - unicorn):
	say "[big he of M] grunts in pain!".

To say DamageReactTired of (M - unicorn):
	say "[big he of M] staggers, squeaking in pain!".

To say DamageReactWeak of (M - unicorn):
	say "[big he of M] screams in pain, struggling to maintain [his of M] balance!".

To say BanishForceFlav of (M - unicorn):
	say "You flick [his of M] horn threateningly. [BigNameDesc of M] shrieks in pain, as if you'd hit it with an axe, and begins to flee in tears!".

To compute unique banishment of (M - unicorn):
	let D be a random off-stage unicorn-horn;
	if D is clothing:
		now D is in the location of the player;
		say "The horn on [his of M] head detaches, rolling in a small arc along the ground.";
		compute autotaking D.

To compute kneeling reaction of (M - unicorn):
	say "[one of][BigNameDesc of M][']s pulls down [his of M] panties, revealing a rapidly hardening [DickDesc of M][or][BigFuckerDesc of M]'s cheeks redden as [he of M] pops [his of M] boner out of [his of M] panties.[or][BigFuckerDesc of M] pops [his of M] [LongDickDesc of M] out of [his of M] panties, breathing heavily.[or][BigFuckerDesc of M]'s [LongDickDesc of M] practically jumps out of [his of M] panties as [he of M] pulls them down and walks up to you.[in random order][line break][speech style of M]'[one of]I-I can't look the other way for slut like you.'[or]I-I suppose I have no choice.'[or]S-so you've finally given yourself over to your... d-dirty, s-sexy desires?'[or]Yes! N-no longer will you prance around with your... dirty... *sexy* body.'[or]You're going to t-take responsibility, aren't you?'[or]You're p-plotting something! I-I'll have to stop you in any way I can, e-even at the risk of my chastity![in random order][roman type][line break]";
	if the player is not shameless, say " You shiver with shame.";
	strongHumiliate.

Section 4 - Dominant Sex

To compute domination interference of (M - unicorn) for (N - a monster):
	say "[BigNameDesc of M] moves out of the way.[line break][speech style of M]'Hmmph. I look forward to seeing you fail.'[roman type][line break]".

To say DominanceFailure of (M - unicorn):
	say "[BigNameDesc of M] squirms as you grab [him of M] by the wrists and wrestle [him of M] to the ground. The horn on [his of M] head suddenly catches your eye, and your vision blurs as the horn shoots out several bright red sparks.".

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

To ride dominate (M - unicorn):
	say "[BigNameDesc of M] yelps as you shove [him of M] to the ground and straddle [him of M]. [PowerBottomComment of M] [big his of M] cheeks redden as you pull [his of M] [LongDickDesc of M] out of [his of M] panties.";
	let B be 0;
	if breasts is lewdly exposed or the player is pheromonal or the number of glazed body parts > 0, now B is 1;
	say "[line break][speech style of M]'No matter how[if the size of penis > 7]...hung[otherwise if B is 1]...eye-catching[otherwise]...powerful[end if] you are, I am spoken for. [big please], if you spare me, I promise I can heal you.'[roman type][line break][if the times-submitted of M > 0][line break][variable custom style][big he of M] sure didn't seem spoken for when [he of M] was fucking me...[roman type][line break][end if]Do you let [him of M] go?";
	if the player is consenting:
		say "[BigNameDesc of M][']s horn glows bright blue, and a wave of relief passes through your body.";
		if fudge-poison-timer > 0, now fudge-poison-timer is 1;
		if toffee-poison-timer > 0, now toffee-poison-timer is 1;
		if cookie-poison-timer > 0, now cookie-poison-timer is 1;
		if wasp-poison-timer > 0, now wasp-poison-timer is 1;
		if the body soreness of the player > 2, now the body soreness of the player is (the body soreness of the player / 2);
		if the fatigue of the player > 2, FatigueDown (the fatigue of the player / 2);
	otherwise:
		now refractoryperiod is 1;[Ensures the player does not orgasm too early during the scene]
		if the player is not possessing a vagina and player-fucker is asshole, anal ride dominate M;
		otherwise vaginal ride dominate M.

[TODO: combine anal ride and vaginal ride, because they're the same.]
To anal ride dominate (M - unicorn):
	let R be mental semi-dominance roll for M;
	if the class of the player is princess or the class of the player is succubus or demon lord is mating:[If the unicorn hates you]
		say "[line break][speech style of M]'I knew it! You want to ruin me for [him of demon lord]! I-I'll never cum for the likes of you!'[roman type][line break][BigNameDesc of M] shrieks, [his of M] shaft twitching excitedly as you slide it into your [asshole]. [if the girth of M < the openness of asshole - 2][big his of M] girth leaves a lot to be desired, which of course makes [his of M] little 'declaration' even more annoying[otherwise][big his of M] girth perfectly fills you up without stretching you out too much, which makes [his of M] little declaration that much more annoying[end if]. You decide to take it as a challenge, [if the player is able to speak]kissing [him of M] roughly as you begin to ride [him of M]. [big his of M] [DickDesc of M] responds with a very appreciative throb as you force your tongue into [his of M] mouth, and you can feel [his of M] heart racing as [he of M] struggles not to moan[otherwise]roughly tearing open [his of M] dress as you begin to ride [him of M]. [big his of M] [DickDesc of M] responds with an appreciative throb as you tweak [his of M] exposed nipples, and the flush on [his of M] cheeks deepens as [he of M] struggles not to moan[end if]. However, [he of M] refuses to break, and as you pour ever more effort into making [him of M] cum, you're the one who starts to feel the strain. You find yourself moaning every few breaths, your hard [ShortDesc of penis] tapping audibly against [his of M] belly as you vigorously fuck yourself with [his of M] shaft, but still--[he of M] refuses to break. A smug look creeps across [his of M] features as [he of M] realises you've hit your limit, and your [if the intelligence of the player < 8]dim [end if]mind goes into overdrive trying to think of a way to wipe that look off [his of M] face.[line break][variable custom style][if R <= 0]Um...I can't think of anything!'[roman type][line break]You simply can't focus when you're this close to orgasm, and you feel your internal muscles tightening up as they embrace the inevitable.[otherwise]I bet [he of M]'d cum if I put my finger in [his of M] ass. Although, it would definitely mean [he of M]'s going to creampie me.'[roman type][line break]Do you go for [his of M] ass?[end if]";
		if R > 0 and the player is bimbo consenting:
			say "[if M is wrapped]Knowing the condom will protect you anyway[otherwise]Deciding a creampie is worth it[end if], you reach between [his of M] legs and immediately jam your finger up [his of M] ass.[line break][speech style of M]'W- What are you d-doing? T-that's my-AH! AAAH! UUUUAAAAAH!'[roman type][line break][BigNameDesc of M] wildly bucks [his of M] hips, no longer able to contain [his of M] moans as [his of M] [LongDickDesc of M] begins to spasm. You feel an incredible wave of satisfaction as [if M is wrapped]the condom finally fills with [his of M] load[otherwise][his of M] load finally shoots into your [asshole][end if], your last moan coming out as a laugh as [if the player is not possessing a penis]you reach a climax of your own[otherwise if the size of penis < 3 or there is a worn chastity cage]your own load dribbles out on [his of M] belly[otherwise]your load spurts out on [his of M] belly[end if] a few seconds later.";
			orgasm;
			if M is unwrapped:
				AssFill the semen load of M;
			FavourDown M by 2;
			now player-fucking is DOMINANT-SUPER;
			say AfterDominationComment 5 of M;
		otherwise:
			say "You cum within a few seconds, unable to fully enjoy your orgasm thanks to the smug look [he of M][']s wearing the entire time. It's not like you're humiliated or anything, but you certainly don't feel very dominant.";
			orgasm;
			passively stimulate vagina from M;
			now player-fucking is DOMINANT-SHAMEFUL;
			say AfterDominationComment 4 of M;
	otherwise:
		say "[line break][speech style of M]'W-well, I'm not even turned on anyway!'[roman type][line break][BigNameDesc of M] blurts, [his of M] shaft twitching excitedly as you line it up with your [asshole]. [if the intelligence of the player > 10]You smirk at [his of M] terrible lie as you lower yourself onto [his of M] shaft, gently fucking yourself as you theatrically fondle your tits[otherwise]You have no reason to disbelieve [him of M], so you don't bother being dramatic, gently tweaking your nipples as you begin to fuck yourself with [his of M] shaft[end if]. [big he of M] bites [his of M] lip, and [his of M] eyes glue themselves to your [if the largeness of breasts >= 6]ample[otherwise]petite[end if] chest as stifled moans leak out of [his of M] mouth. You can feel [his of M] [DickDesc of M] throb inside of you as you continue to play with your breasts, and [if the intelligence of the player <= 10]you start thinking of a way to somehow turn [him of M] on. Unfortunately, it's too difficult, so you decide to simply relax and enjoy yourself. You sigh as you lay down on top of [him of M], allowing [his of M] head to rest[otherwise]you come up with the perfect idea to turn [him of M] on even more. With a dramatic sigh, you lay down on top of [him of M], grinning at [him of M] as you press [his of M] head[end if] [if the largeness of breasts < 6]against your chest[otherwise]between your tits[end if].[line break][speech style of M]'Huh!? Wh-...What are you-...I...I-I'm...I- I'M GONNA CUM!'[roman type][line break][BigNameDesc of M] bucks hips as [his of M] shaft begins to rapidly spasm, and you're left with only a few seconds to react. [if R > 0 and M is unwrapped]If you stop now, you might be able to avoid a creampie, but you'd probably lose out on your chance to cum. Do you want to stop?[end if]";
		if R > 0 and M is unwrapped and the player is reverse bimbo consenting:
			say "You immediately stand up off [him of M], very narrowly missing the first salvo of [semen] as it spurts out of [his of M] [DickDesc of M] and falls in an arc across [his of M] belly.";
			now player-fucking is DOMINANT-NEUTRAL;
			passively stimulate asshole from M times 2;
			orgasm M;
			Calm M;
			FavourUp M by 2;
			say AfterDominationComment 6 of M;
		otherwise:
			let C be a random worn chastity cage;
			say "[if R <= 5]You don't have enough time to think about stopping, and before you can make your decision[otherwise if M is unwrapped]You decide you'd rather keep going, and in the moment you make your decision[otherwise]You don't bother thinking about it, and a moment later[end if], you feel several spurts of [semen] [if M is wrapped]shooting into the condom[otherwise]shooting out inside you[end if]. Satisfaction fills your chest as you milk [him of M] down to [his of M] last drop, finally standing up when [his of M] softening [DickDesc of M] slips out of your [asshole].[line break][speech style of M]'T-this is all your fault! I told you I- Mmnf!'[roman type][line break]You cut [him of M] off by immediately sitting on [his of M] face, grinding [if there is a worn chastity cage]your cage[otherwise if the player is not possessing a penis]yourself[otherwise]your [ShortDesc of penis][end if] against [his of M] horn as [his of M] load seeps out of you. The slight stimulation is just enough to push you over the edge, and you groan happily as [if the player is not possessing a penis]climax finally wracks your body[otherwise if C is clothing or the size of penis < 3]your [semen] dribbles out on [his of M] face[otherwise]your [semen] arcs paints [his of M] forehead[end if].";
			orgasm M;
			FavourDown M by 1;
			orgasm;
			LickGet;
			say AfterDominationComment 7 of M;
	AnalCount.

To vaginal ride dominate (M - unicorn):
	let R be mental semi-dominance roll for M;
	if the class of the player is princess or the class of the player is succubus or there is a worn xavier's cunt tattoo or demon lord is mating:[If the unicorn hates you]
		say "[line break][speech style of M]'I knew it! You want to ruin me for [him of demon lord]! I-I'll never cum for the likes of you!'[roman type][line break][BigNameDesc of M] shrieks, [his of M] shaft twitching excitedly as you slide it into your [vagina]. [if the girth of M < the openness of vagina - 2][big his of M] girth leaves a lot to be desired, which of course makes [his of M] little 'declaration' even more annoying[otherwise][big his of M] girth perfectly fills you up without stretching you out too much, which makes [his of M] little declaration that much more annoying[end if]. You decide to take it as a challenge, [if the player is able to speak]kissing [him of M] roughly as you begin to ride [him of M]. [big his of M] [DickDesc of M] responds with a very appreciative throb as you force your tongue into [his of M] mouth, and you can feel [his of M] heart racing as [he of M] struggles not to moan[otherwise]roughly tearing open [his of M] dress as you begin to ride [him of M]. [big his of M] [DickDesc of M] responds with an appreciative throb as you tweak [his of M] exposed nipples, and the flush on [his of M] cheeks deepens as [he of M] struggles not to moan[end if]. However, [he of M] refuses to break, and as you pour ever more effort into making [him of M] cum, you're the one who starts to feel the strain. You find yourself moaning every few breaths, tingles radiating up your spine as you vigorously fuck yourself with [his of M] shaft, but still--[he of M] refuses to break. A smug look creeps across [his of M] features as [he of M] realises you've hit your limit, and your [if the intelligence of the player < 8]dim [end if]mind goes into overdrive trying to think of a way to wipe that look off [his of M] face.[line break][variable custom style][if R <= 0]Um...I can't think of anything![roman type][line break]You simply can't focus enough when you're this close to orgasm, and you feel your internal muscles tightening up as they embrace the inevitable.[otherwise]I bet [he of M]'d cum if I put my finger in [his of M] ass. Although, it would definitely mean [he of M]'s going to creampie me.[roman type][line break]Do you go for [his of M] ass?[end if]";
		if R > 0 and the player is bimbo consenting:
			say "[if M is wrapped]Knowing the condom will protect you anyway[otherwise]Deciding a creampie is worth it[end if], you reach between [his of M] legs and immediately jam your finger up [his of M] ass.[line break][speech style of M]'W- what!? B-but t-that's my- UOH! UUUUAAAAAH!'[roman type][line break][BigNameDesc of M] wildly bucks [his of M] hips, no longer able to contain [his of M] moans as [his of M] [LongDickDesc of M] begins to spasm. You feel an incredible wave of satisfaction as [if M is wrapped]the condom finally fills with warmth[otherwise][his of M] load shoots into your [vagina][end if], your last moan coming out as a laugh as you reach a climax of your own a few seconds later.";
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
		say "[line break][speech style of M]'W-well, I'm not even turned on anyway!'[roman type][line break][BigNameDesc of M] blurts, [his of M] shaft twitching excitedly as you line it up with your [vagina]. [if the intelligence of the player > 10]You smirk at [his of M] terrible lie as you lower yourself onto [his of M] shaft, gently fucking yourself as you theatrically fondle your tits[otherwise]You have no reason to disbelieve [him of M], so you don't bother being dramatic, gently tweaking your nipples as you begin to fuck yourself with [his of M] shaft[end if]. [big he of M] bites [his of M] lip, and [his of M] eyes glue themselves to your [if the largeness of breasts >= 6]ample[otherwise]petite[end if] chest as stifled moans leak out of [his of M] mouth. You can feel [his of M] [DickDesc of M] throb inside of you as you continue to play with your breasts, and [if the intelligence of the player <= 10]you start thinking of a way to somehow turn [him of M] on. Unfortunately, it's too difficult, so you decide to simply relax and enjoy yourself. You sigh as you lay down on top of [him of M], allowing [his of M] head to rest[otherwise]you come up with the perfect idea to turn [him of M] on even more. With a dramatic sigh, you lay down on top of [him of M], grinning at [him of M] as you press [his of M] head[end if] [if the largeness of breasts < 6]against your chest[otherwise]between your tits[end if].[line break][speech style of M]'Huh!? Wh-...What are you-...I...I-I'm...I- I'M GONNA CUM!'[roman type][line break][BigNameDesc of M] bucks hips as [his of M] shaft begins to rapidly spasm, and you're left with only a few seconds to make a choice. [if R > 0 and M is unwrapped]If you stop now, you might be able to avoid a creampie, but you'd probably lose out on your chance to cum. Do you want to stop?[end if]";
		if R > 0 and M is unwrapped and the player is reverse bimbo consenting:
			say "You immediately stand up off [him of M], very narrowly missing the first salvo of [semen] as it spurts out of [his of M] [DickDesc of M] and falls in an arc across [his of M] belly.";
			now player-fucking is DOMINANT-NEUTRAL;
			passively stimulate vagina from M times 2;
			orgasm M;
			Calm M;
			FavourUp M by 2;
			say AfterDominationComment 6 of M;
		otherwise:
			say "[if R <= 5]You simply don't have enough time to think it through, and before you can make your decision[otherwise if M is unwrapped]You decide you'd rather keep going, and in the moment you make your decision[otherwise]You don't bother thinking about it, and a moment later[end if], you feel several spurts of [semen] [if M is wrapped]shooting into the condom[otherwise]shooting out inside you[end if]. Satisfaction fills your chest as you milk [him of M] down to [his of M] last drop, finally standing up when [his of M] softening [DickDesc of M] slips out of your [vagina].[line break][speech style of M]'T-this is all your fault! I told you I- mmnf!'[roman type][line break]You cut [him of M] off by immediately sitting on [his of M] face, grinding your clit against [his of M] horn as [his of M] load dribbles out onto [his of M] nose. The direct clitoral stimulation is just what you need to finish yourself off, and you groan happily as you cover [NameDesc of M][']s face with femcum.";
			orgasm M;
			FavourDown M by 1;
			orgasm;
			LickGet;
			say AfterDominationComment 7 of M;
	FuckCount.

unicorn has a number called times-seeded. The times-seeded of unicorn is usually 0.

To penetration dominate (M - unicorn):
	let C be a random bottom level protection clothing;
	say "[BigNameDesc of M] squirms as you grab [him of M] by the wrists and wrestle [him of M] to the ground. The horn on [his of M] forehead somehow catches your eye, and you realise you're slipping into some sort of trance. However, [his of M] wriggling jars you out of your daze, and you avoid any further distractions by immediately tearing off [his of M] panties and forcing [his of M] knees up over [his of M] head.[line break][speech style of M]'[one of]H-How dare you hold me in such a position. Release me. R-right now. I swear I'll...'[or]W-what are you planning on doing to me? This is...'[or]W-what are you doing? Don't you know I'm betrothed? Release...'[at random][roman type][line break][big he of M] trails off as you [if C is not strapon-panties and C is clothing]pull your [SexDesc of penis] out of your pants[otherwise if sexual-penis-length > 3]grind your [SexDesc of penis] between [his of M] cheeks[otherwise]line up your [SexDesc of penis] with [his of M] entrance[end if]";
	if sexual-penis-length > 8:
		if the times-seeded of M < 1, say "[line break][speech style of M]'Wait. Even if you are...v-very hung, I am already betrothed. [big please], I'll even strengthen some of your items if you spare me!'[roman type][line break][big he of M] says that, but [his of M] [DickDesc of M] looks pretty hard already. Do you really want to spare [him of M] instead?";
		otherwise say "[line break][speech style of M]'W-wait! S-surely you wouldn't fuck a bride...never mind. A strong, hung person like you will obviously claim me without remorse. B-but if you don't claim me, I'll strengthen some of your items in return.'[roman type][line break][big he of M] says that, but [his of M] [DickDesc of M] looks pretty hard already. Do you really want to spare [him of M] instead?";
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
			say "You answer by way of spitting on your [sexual-player-penis], smirking at the angry face [he of M] makes as you slowly push your [SexShaft] into [his of M] [asshole]. [big he of M] flings curses and obscenities at you as you begin to fuck [him of M], stifled moans punctuating every word as [his of M] [DickDesc of M] bobs in time with your thrusts. [big his of M] voice quickly loses all coherence, reducing [him of M] to frustrated spluttering and grunting as you eagerly piston away. It's a little difficult to tell if [he of M]'s actually upset or not, so you decide to see if you can force another reaction out of [him of M]. You plant both hands on the ground, throwing your full weight against [him of M] as you drive every inch of your [sexual-player-penis] into [his of M] ass. [big his of M] eyes cross, and [he of M] grits [his of M] teeth in the midst of the merciless pounding, still trying to hold out. Unfortunately, you won't allow it. Your [if the player is possessing a scrotum]balls slap the nape of[otherwise]hips slap[end if] [his of M] ass as you relentlessly drill [his of M] prostate, forcing [him of M] to moan as [his of M] [asshole] starts clenching up around you. [big his of M] mouth slowly twists into a big, submissive 'O,' and [he of M] cries out in pleasure as [his of M] [DickDesc of M] shoots streamers of [semen] across [his of M] belly, chest, and face. Defeated, [he of M] stares up at you [if bukkake fetish is 1]with [his of M] own [semen] gluing one of [his of M] eyes shut [end if]as [he of M] finally accepts the pounding like the horny submissive [he of M] is. You ease off a little, making sure to enjoy yourself nice and fully before slamming your [sexual-player-penis] home, groaning as you pump [his of M] [asshole] full of fresh [semen].";
			orgasm M;
			orgasm;
			increase the times-seeded of M by 1;
			now player-fucking is DOMINANT-SUPER;
			say AfterDominationComment 2 of M;
	otherwise if sexual-penis-length > 3:
		if the times-seeded of M < 1, say "[line break][speech style of M]'W-wait. My arse is the property of the demon lord. I c-cannot disrespect [him of demon lord] by allowing you to claim me. [big please]...I'll even strengthen some of your items!'[roman type][line break][big he of M] says that, but anticipation is clearly written all over [his of M] face. Do you really want to spare [him of M] instead?";
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
			say "You answer by way of spitting on your [sexual-player-penis], smirking at the angry face [he of M] makes as you slide your [SexShaft] into [his of M] tight little [asshole]. [big he of M] flings curses and obscenities at you as you begin to fuck [him of M], stifled moans punctuating every word as [his of M] rigid [DickDesc of M] bobs in time with your thrusts. [big his of M] voice quickly loses all coherency, reducing [him of M] to frustrated spluttering and grunting as you mercilessly piston away. It's a little difficult to tell if [he of M]'s actually upset or not, but [he of M]'s tight, and you don't have the stamina to force another reaction out of [him of M]. You groan heavily as you lose control and fill [his of M] [asshole] with your load.";
			orgasm;
			increase the times-seeded of M by 1;
			say AfterDominationComment 2 of M;
	otherwise:
		say "[line break][speech style of M]'Stop, you can't do that. My arse belongs to the demon lord. Surely [if the player is gendered male and lady fetish is not 1]a fellow sissy[otherwise]someone[end if] like you can understand that.'[roman type][line break]Do you want to fuck [him of M] anyway?";
		unless the player is consenting:
			Calm M;
			let H be a random held clothing;
			say "You release [him of M], watching expectantly as [his of M] horn lights up and shoots off a single, glittering fleck of light. It lands on your [printed name of H].";
			increase the raw-magic-modifier of H by 1;
			now player-fucking is DOMINANT-NEUTRAL;
			say AfterDominationComment 1 of M;
		otherwise:
			say "[big he of M] snorts.[line break][speech style of M]'Fine, don't you dare look at me, scum.'[roman type][line break][big he of M] makes a scary face, prompting you to immediately look away. You have a little bit of trouble penetrating [him of M] without being able to look at what you're doing, but after embarrassing yourself for around 30 seconds, you finally manage to slip your [sexual-player-penis] into [his of M] [asshole]. Even without looking at [him of M], you can still feel hatred flowing off [him of M] in waves, and you hump [him of M] eagerly in hopes of getting it over with quickly. You end up going too fast and finish before you get the chance to really enjoy yourself.";
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
		say "[speech style of M]'Although you forced yourself on me, in truth, I... er... we won't speak of this again. Goodbye.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Did you have to make a mess of my face?[or]Did you have to make me look like a tart?'[or]My makeup is ruined!'[in random order][roman type][line break]";

Part 4 - Conversation

To say RewardFlav of (M - unicorn) for (T - a thing):
	say "A [T] appears on the ground in front of you. [BigNameDesc of M] looks at it with mild surprise.[line break][speech style of M]'That must be for you.'[roman type][line break]".

To say OfferFriendshipFlav of (M - unicorn):
	say "[speech style of M][if M is guardian]'I guess I have to b-back you up in f-fights now, or something[otherwise if M is buddy]'You're not t-trying to steal my heart, are you? It won't work[otherwise]'T-this doesn't change anything[end if].'[roman type][line break]".

To decide which number is the bartering value of (T - a bridal sissy-suspenders) for (M - unicorn):
	decide on 6.

To say MonsterOfferAcceptFlav of (M - unicorn) to (T - a bridal sissy-suspenders):
	say "[BigNameDesc of M][']s eyes sparkle with joy.[line break][speech style of M]'Oh wow! These will be perfect for my wedding day!'[roman type][line break]".

To decide which number is the bartering value of (T - a stockings) for (M - unicorn):
	if unicorn is carrying a stockings or T is not white themed, decide on 0;
	decide on 4.

To say MonsterOfferRejectFlav of (M - unicorn) to (T - a stockings):
	say "[BigNameDesc of M] shakes [his of M] head.[line break][speech style of M][if M is carrying an overdress]'You already gave me some white stockings, remember? I don't need a second pair, I'm only getting married once.'[otherwise if M is unfriendly]'Nuh-uh. Right now, I need something else...'[otherwise]'I do need some stockings for my wedding day, but I need them to match my dress.'[end if][roman type][line break]".

To say MonsterOfferAcceptFlav of (M - unicorn) to (T - a stockings):
	say "[BigNameDesc of M] smiles widely.[line break][speech style of M]'White stockings! These will be perfect for my wedding day!'[roman type][line break]".

To say UnAnnoyedResponse of (M - unicorn):
	say "[speech style of M]'[one of]T-that's right! Take it, you hussy!'[or]Y-yes! Don't forget your place!'[or]S-stop distracting me!'[at random][roman type][line break]".

To say MildAnnoyedResponse of (M - unicorn):
	say "[speech style of M]'[one of]Stop complaining! I am doing a very good job!'[or]I'm trying my best, you know!'[or]A-are you insinuating I'm not doing this correctly?'[at random][roman type][line break]".

To say AnnoyedResponse of (M - unicorn):
	say "[BigNameDesc of M][']s horn begins to spark. [speech style of M]'[one of]If you don't stop talking, I'm going to get MAD!'[or]RRrrr... Shut. Up.'[or]Ooh... You better shut it!'[at random][roman type][line break]".

To compute annoyed punishment of (M - unicorn):
	say "[line break][speech style of M]'[one of]QUIET, HUSSY!'[or]SHUT UP, HUSSY!'[in random order][roman type][line break][BigNameDesc of M][']s horn spews hot sparks as [he of M] shrieks with rage. The sparks pop like firecrackers on contact with your skin!";
	DelicateUp 1.

To say InvitationAccepted of (M - unicorn) with (N - a monster):
	say "[speech style of M]'[one of]A-as long as you're willing.'[or]W-well, since you put it like that...'[or]O-oh, it's really OK?'[at random][roman type][line break]".

To say InvitationRejected of (M - unicorn) with (N - a monster):
	say "[speech style of M]'Wuh-!? Why would I want to do that! H-how ridiculous!'[roman type][line break]".

To say AssistanceRejected of (M - unicorn) with (N - a monster):
	if M is unfriendly:
		say "[speech style of M]'How can you ask me that after r-riling me up like this? How RUDE!'[roman type][line break]";
	otherwise:
		if N is penetrating a fuckhole, say "[speech style of M]'WHAT?! A-as if I would ever risk my treasured purity!'[roman type][line break]";
		otherwise say "[speech style of M]'Me? Help you? You must be stupid.'[roman type][line break]".

To say FluffResponse of (M - unicorn) with (N - a monster):
	say "[speech style of M]'[one of]Of course I'll help you... B-but I won't enjoy it!'[or]I can help out a little... O-only a little.'[in random order][roman type][line break]".

To say NonFluffResponse of (M - unicorn) with (N - a monster):
	let F be a random fuckhole penetrated by N;
	say "[speech style of M]'Of course I'll... Ah. I-I have my vows to think about, so I'll have to help indirectly.'[roman type][line break][BigFuckerDesc of M]'s horn lights up, and [FuckerDesc of N]'s [if N is male][DickDesc of N][otherwise]punishment[end if] suddenly grows more bearable. Your [variable F] has been lubricated!";
	let L be a random off-stage lubricant;
	now the timer of L is a random number between 30 and 50;
	now L is covering F.

To compute vaginal assistance from (S - unicorn) with (D - a monster):
	if a random number between 1 and 2 is 1 and S is not unfriendly:
		say "[BigFuckerDesc of S] kneels [one of]over you, holding [his of S] mouth open, allowing [NameDesc of D] [if D is male]fuck[otherwise]abuse[end if] your [vagina] and [his of S] face alternately.[or]next to you, periodically slurping your juices off [FuckerDesc of D]'s [DickDesc of D] as [he of D] [if D is male]fucks[otherwise]uses[end if] your [vagina].[in random order]";
		if the sex-length of D > 0, decrease the sex-length of D by 1;
	otherwise:
		compute generic assistance from S with D.

To compute anal assistance from (S - unicorn) with (D - a monster):
	if a random number between 1 and 2 is 1:
		if S is not unfriendly:
			if a2m fetish > 1, say "[BigFuckerDesc of S] kneels [one of]over you, holding [his of S] mouth open, allowing [NameDesc of D] [if D is male]fuck[otherwise]abuse[end if] your [asshole] and [his of S] face alternately.[or]next to you, allowing [FuckerDesc of D] to periodically pull out and [if D is male]fuck[otherwise]use[end if] [his of S] face.[in random order]";
			otherwise say "[BigFuckerDesc of S] kneels [one of]over you, periodically adding spit for extra lube as [NameDesc of D] to abuses your [asshole] and [his of S] face alternately.[or]next to you, periodically leaning in and spitting between your asscheeks to add extra lube for [NameDesc of D].[in random order]";
		otherwise:
			say "[BigNameDesc of S] kneels over you, holding your cheeks open so [NameDesc of D] can [if D is male]fuck your [asshole] even harder[otherwise]ruin your [asshole] even more[end if]!";
			ruin asshole;
		if the sex-length of D > 0, decrease the sex-length of D by 1;
	otherwise:
		compute generic assistance from S with D.

To say AttentionExceeded of (M - unicorn) with (N - a monster):
	say "[speech style of M]'H-how dare you ask me to watch this! I'll have to punish you!'[roman type][line break]".

To say AttentionAccepted of (M - unicorn) with (N - a monster):
	say "[speech style of M]'L-like I would miss an opportunity to see you embarrass yourself!'[roman type][line break]".

To say VanityAccepted of (M - unicorn):
	say "[speech style of M]'Fine. I'll grace you with my presence.'[roman type][line break]".

To say VanityAnnoyed of (M - unicorn):
	say "[speech style of M]'Fine, but don't expect me to do it for very long.'[roman type][line break]".

To say SubmissiveResponse of (M - unicorn):
	say "[speech style of M]'[one of]Hmph. You're lucky I decided to satisfy you.'[or]Oh, that? I already forgot about it. D-don't do it again.'[in random order][roman type][line break]";

To say FirstResponse of (M - unicorn):
	if the class of the player is princess:
		say "[speech style of M]'We aren't exchanging words. You are going DOWN.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'...Hello. Did you need something?'[roman type][line break]".

To say RepeatResponse of (M - unicorn):
	say FirstResponse of M.

To compute teaching of (M - unicorn):
	say "[speech style of M]'I would never do this, obviously, but have you ever considered simply admitting your own inferiority and begging for mercy? Who knows, they might even fuck you harder!'[roman type][line break]";
	teach begging for mercy.

To say WhereAnswer of (M - unicorn):
	say "[speech style of M]'Does it matter? This place is nothing without a master to rule over it.'[roman type][line break]".

To say WhoAnswer of (M - unicorn):
	say "[speech style of M]'[one of]My master only ever called me [']unicorn['], so my name is unicorn.'[or]My name is [']None of your business!['] Now stop flirting with me, I'm not interested. Not even a little. Hmph!'[sticky random][roman type][line break]";

To say StoryAnswer of (M - unicorn):
	say "[speech style of M]'[one of]I am waiting for the day when I am reunited with my true love.'[or]I have taken a vow of anal chastity in the name of my true love. One day we will be together again.'[or]An evil princess trapped the love of my life in an amulet and then fled. [if demon lord is alive]I know [he of demon lord] will return for me one day[otherwise]One day, I'll get revenge on that ugly bitch[end if]...'[or]I am waiting for the day when I will once again feel my darling master's touch. It's been so long...'[at random][roman type][line break]";

To say EscapeAnswer of (M - unicorn):
	say "[speech style of M]'[one of]There's a mansion somewhere nearby. But... last time I went there, I met a very forward undead. I wouldn't recommend it[or]There's a hotel nearby, but stay away from the owner. [big he of demon lord]'s spoken for[at random].'[roman type][line break]".

To say AdviceAnswer of (M - unicorn):
	say "[speech style of M]'[one of]Don't put so much stock in condoms. Sometimes they break, and some men simply prefer unprotected sex. If you ask me, they deserve it.'[or]The mechanic in the hotel is cunning in addition to being [if lady fetish is 1]very beautiful[otherwise]handsome[end if]. You would be a fool for trying to outsmart [him of mechanic].'[or]The patrons in the hotel are rather rude, but they will offer you money in exchange for your services. If you aren't saving yourself for anyone, you could take advantage...'[or]Some sex toys are enchanted. Be sure to wear them properly to make full use of their magic.'[at random][roman type][line break]".

Unicorn ends here.
