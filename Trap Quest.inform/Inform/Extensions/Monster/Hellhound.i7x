Hellhound by Monster begins here.

hellhound is a monster. hellhound is male. The leftover-type of hellhound is usually 113. The poison-status of hellhound is -1. hellhound can be unknotted or knotted.

To decide which figure-name is the monster-image of (M - hellhound):
	if mythical creature fetish is 0, decide on figure of slavehound;
	decide on figure of hellhound.

Understand "hell", "hound", "dog", "puppy", "slave" as hellhound. The text-shortcut of hellhound is "hh".

Definition: hellhound is mansion dwelling:
	decide yes.

Definition: hellhound is musky:
	if the refractory-period of it <= 0, decide yes;
	decide no.

Definition: hellhound is infernal:
	if mythical creature fetish is 1, decide yes;
	decide no.

Definition: hellhound is a clothes-destroyer:
	if mythical creature fetish is 1, decide yes;
	decide no.

Definition: hellhound is a diaper wetter:
	if diaper quest is 1, decide yes;
	decide no.

To say ShortDesc of (M - hellhound):
	say "[if mythical creature fetish is 1]hellhound[otherwise]puppy slave[end if]".

To say MediumDesc of (M - hellhound):
	say ShortDesc of M.

To say MonsterDesc of (M - hellhound):
	if mythical creature fetish is 1:
		say "This black, hulking creature is hunched over on all fours, yet still 'stands' just as tall as you. [big his of M] spiked tail, sharp fangs and bestial, clawed hands are dead give-aways that [he of M] is from another plane. [if pet collar is off-stage][big he of M] holds a collar and leash in [his of M] mouth, as if [he of M]'s looking for someone to take [him of M] on a walk, or more likely, a pet of [his of M] own to lead around! [end if][big he of M] stares at you with glowing red eyes, letting you know that a keen intelligence lies hidden behind the bestial mask.";
	otherwise:
		say "This [man of M] has black bondage items keeping [his of M] arms and legs fully bent, forcing [him of M] to crawl along on [his of M] elbows and knees. [big he of M] seems pretty happy though, and you can make out a joyous and playful expression behind [his of M] fetish hood. [if diaper quest is 1]A thick black diaper covers [his of M] rear[otherwise]Naked just like a real animal, [he of M][']s completely naked and [his of M] average sized [DickDesc of M] are completely visible. A black cock ring is situated near the base of [his of M] shaft.[end if].".

To say MonsterComment of (M - hellhound):
	if diaper quest is 1:
		say "[variable custom style][big he of M] seems friendly![roman type]";
	otherwise if mythical creature fetish is 1:
		if the class of the player is worshipper:
			if the bimbo of the player < 7:
				say "[first custom style]This is... really an appearance it chose? This has to be to fuck with me, right?";
			otherwise if the bimbo of the player < 12:
				say "[variable custom style]Well, if it's the appearance one of my masters chose, then it's good enough for me.";
			otherwise:
				say "[second custom style]I'll do whatever it wants, no matter what form it decides to take. That's just the kind of sex slave I am!";
		otherwise if the class of the player is priestess:
			if M is penetrating a body part:
				say "A solemn voice sounds in your head. [second custom style]'Defiled Sister, [one of]you must not accept this indignity. Escape!'[or]this is a powerful being, and it will stop at nothing to defile this world. You must escape! Quickly!'[or][if M is knotted]you now know for yourself the truth of this creature's powers. You must not let this happen to anyone else!'[otherwise]you must now allow this creature to use its evil powers. Escape! Hurry!'[end if][in random order]";
			otherwise:
				say "A concerned voice sounds in your head.[second custom style]'Kind Sister, [one of]this is a cruel, wicked existence. You must drive it away![or]this terrible being will stop at nothing to defile this world. It cannot be allowed to roam here!'[or]you must be wary of this being's dark power, which tethers it to the victims of its torment.'[in random order]";
		otherwise if the player is pheromonal:
			if M is penetrating a body part:
				if the bimbo of the player < 7:
					say "[first custom style]Why is my body fighting me?!";
				otherwise if the bimbo of the player < 12:
					say "[variable custom style][big his of M] scent is driving me insane!";
				otherwise:
					say "[second custom style]Who knew being a breeding bitch would be so FUN!";
			otherwise:
				if the bimbo of the player < 7:
					say "[first custom style][big he of M] smells like smoke, but [he of M] smells like something else too. Why can't I stop thinking about it?";
				otherwise if the bimbo of the player < 12:
					say "[variable custom style][big he of M] smells like smoke, but [he of M] smells like something else too. I kind of want to get closer. J-just enough to figure it out...";
				otherwise:
					say "[second custom style][big he of M] smells like smoke, but [he of M] smells like something else too. It kind of makes me want to let [him of M] mount me for a little while.";
		otherwise:
			if the bimbo of the player < 7:
				if M is penetrating a body part:
					if the player is gendered male, say "[first custom style]What the fuck kind of dog is this?!";
					otherwise say "[first custom style]This is WAY beyond leg humping!";
				otherwise:
					if the player is gendered male, say "[first custom style][one of][if the times-submitted of M > 0]Is THAT what chick dogs have to deal with?[otherwise]It's huge... Maybe it's a mount?[end if][or]Seems like it'd be a bitch to train. Heh.[in random order]";
					otherwise say "[first custom style][one of][if the times-submitted of M > 0]It's taunting me, isn't it...[otherwise]How am I supposed to fight something this huge?![end if][or]It has the appearance of a dog, but it isn't one.'[or]Ugh, I hate dogs.[in random order]";
			otherwise if the bimbo of the player < 12:
				if M is penetrating a body part, say "[variable custom style]So rough!";
				otherwise say "[variable custom style][one of][if the times-submitted of M > 0]On one hand, it was probably rough on purpose. On the other hand, I kind of liked it anyway.[otherwise]I feels like it might be attracted to me.[end if][or]It's more than a mere beast.[in random order]";
			otherwise:
				if M is penetrating a body part, say "[variable custom style]Yeah, get rough with me, baby!";
				otherwise say "[variable custom style][one of][if the times-submitted of M > 0]Nice and rough, just how I like it![otherwise]I wonder if it wants to 'hump my leg.'[end if][or]What a beautiful beast! Wait, I wonder if that's disrespectful.[in random order]";
	otherwise:
		if the bimbo of the player < 7:
			if the player is gendered male, say "[first custom style][one of][if M is knotted or the times-submitted of M > 0]That isn't a cockring! What the fuck![otherwise]That cockring looks a little loose.[end if][or]Is it really that fun?[or]I better watch out for whoever did that to [him of M].[in random order]";
			otherwise say "[first custom style][one of][if M is knotted or the times-submitted of M > 0]Is that really a cockring?! How is it so painful?[otherwise]Ugh. Penis rings are disgusting.[end if][or]How could anyone enjoy such a thing?[or]A slave... who would own a slave like that?[in random order]";
		otherwise if the bimbo of the player < 12:
			say "[variable custom style][one of][if M is knotted or the times-submitted of M > 0]I guess I can see where the idea for the cockring came from![otherwise]That cockring isn't just a cockring, right? It's special.[end if][or][big he of M]'s really enjoying [his of M] pet play a lot...[or]Will I also end up as a slave? Wait, I shouldn't answer that.[in random order]";
		otherwise:
			say "[variable custom style][one of][if M is knotted or the times-submitted of M > 0]Knotted for my pleasure![otherwise]It's not just a fashion statement. I bet that cockring does something interesting...[end if][or][big he of M]'s really enjoying that. I'm jealous.[or][if the class of the player is royal slave]We're slave buddies![otherwise]It's only a matter of time until I become a slave too![end if][in random order]";
	say "[roman type][line break]".

To set up (M - hellhound):
	reset M;
	now the monstersetup of M is 1;
	now the raw difficulty of M is the starting difficulty of M;
	if mythical creature fetish is 0, now M is intelligent;
	now the health of M is the maxhealth of M.

To decide which number is the girth of (M - hellhound):
	if mythical creature fetish is 0, decide on 2;
	if M is knotted, decide on 10;
	decide on 4.
To decide which number is the grossness of (M - hellhound): [grossness addiction needed to tolerate it]
	if mythical creature fetish is 0, decide on 0;
	decide on 11.

Definition: hellhound is controlling: decide yes. [Will it grab onto subduing clothing e.g. a clitoris lead?]

Definition: hellhound is reactive: decide no. [Will it react to things it sees the player do?]

Definition: hellhound is willing to do oral: decide no.

Definition: hellhound is willing to do titfucks: decide no.

hellhound has a number called peeTimer.

To compute unique periodic effect of (M - hellhound):
	unless M is dangerous or M is seduced:
		if diaper quest is 1:
			increase the peeTimer of M by 1;
			if a random number between 30 and 1000 <= the peeTimer of M:
				if M is in the location of the player and M is not penetrating face:
					if M is asleep, say "As you watch [NameDesc of M], [his of M] completely full diaper begins to leak, [urine] spilling out of the legholes and down to the floor. [big he of M] doesn't even stir from [his of M] slumber.";
					otherwise say "[BigNameDesc of M] makes eye contact with you as a hissing sound emanates from [his of M] diaper. [big his of M] padding is so completely saturated that [his of M] [urine] just flows out of the legholes and down [his of M] legs. [big he of M] giggles cheekily.";
				UrinePuddleUp the peeTimer of M / 10 in (the location of M);
				now the peeTimer of M is 0;
		otherwise:
			increase the peeTimer of M by 1;
			if a random number between 30 and 1000 <= the peeTimer of M:
				let R be the location of M;
				if the urine-puddle of R <= 0:
					if M is in the location of the player, say "[BigNameDesc of M] sniffs around a nearby wall, then lifts [his of M] leg and marks it with steaming hot [urine].";
					UrinePuddleUp the peeTimer of M / 10 in R;
					now the peeTimer of M is 0;
				otherwise:
					if M is in the location of the player, say "[BigNameDesc of M] sniffs around the puddle on the floor and turns toward you suddenly, as if to glare.";
					now the peeTimer of M is 0;
					DifficultyUp M by 1.

Part 1 - Misc Flavour

To decide which text is he of (M - hellhound):
	decide on "[if mythical creature fetish is 1]it[otherwise if lady fetish is 1]she[otherwise]he[end if]".

To decide which text is his of (M - hellhound):
	decide on "[if mythical creature fetish is 1]its[otherwise if lady fetish is 1]her[otherwise]his[end if]".

To decide which text is him of (M - hellhound):
	decide on "[if mythical creature fetish is 1]it[otherwise if lady fetish is 1]her[otherwise]him[end if]".

To decide which text is himself of (M - hellhound):
	decide on "[if mythical creature fetish is 1]itself[otherwise if lady fetish is 1]herself[otherwise]himself[end if]".

To say LongDickDesc of (M - hellhound):
	if mythical creature fetish is 1, say "[one of]slippery[or]slick[or]oily[in random order] canine [DickDesc of M]";
	otherwise say "hard [DickDesc of M]".

To say cockhead of (M - hellhound):
	if mythical creature fetish is 1, say "[one of]tapered[or]narrow[or]slender[in random order][if full-lady fetish is 1], plastic[otherwise] [one of]cockhead[or]tip[or]bellend[or]dicktip[in random order]";
	otherwise say "[if full-lady fetish is 1]plastic [otherwise][one of]cockhead[or]tip[or]bellend[or]dicktip[in random order]".

To say SummoningFlav of (M - hellhound):
	if M is in the location of the player, say "The glow surrounding the mummy intensifies as a flaming rift tears open above it, and a dark shape charges through. The [printed name of M] emits a chilling howl, seizing the leash end of the collar with [his of M] teeth as the portal closes, and the mummy slowly returns to its feet.";
	say "You hear a chilling howl in the distance.".

Definition: a hellhound is father material:
	if mythical creature fetish is 1, decide yes;
	decide no.

To say PregGrowth of (M - hellhound):
	if mythical creature fetish is 1, say "the hellhound's brood";
	otherwise say "the demon spawn".

To compute labour to (M - hellhound):
	if mythical creature fetish is 1:
		if M is not alive or M is regional:
			let birthsex be a random number between 1 and 2;
			say "[PregFlav][one of]You are [if bimbo of the player < 13]horrified[otherwise]enthralled[end if] as you see a wet, black nose poke its way out of your [vagina], followed by a canine head and a tiny human body. The mutant [if birthsex is 1]son[otherwise]daughter[end if] that has just emerged from your womb is clearly infernal even in [if birthsex is 1]his[otherwise]her[end if] infant state, with blood red eyes and jet black fur covering [if birthsex is 1]his[otherwise]her[end if] little head, hands and feet.[if the bimbo of the player < 15][line break][variable custom style]How is this even possible?![otherwise][line break][second custom style]I'm a breeding bitch for a demon... what an honour![end if][roman type][line break]Your cervix continues to painfully dilate and spasm as another 'pup' begins its journey into the [if the intelligence of the player < 7]real[otherwise]virtual[end if] world, beginning to yap with a high pitched voice as soon as it has taken its first breath of air[or][stopping]. Your giant belly slowly shrinks as you give birth to [one of][or]another [stopping][one of]twelve demonic babies[or]litter of eleven infernal babies[or]ten small but loud demon babies[or]nine little demon babies[at random].[one of]You gaze with [if the bimbo of the player < 13]terror[otherwise]wonder[end if] at your 'children', [if the bimbo of the player < 15]unable to believe that what just happened really happened[otherwise]unsure how you're expected to care for so many at once[end if]![or]You catch your breath as a weird sense of a job well done washes over you.[stopping][line break][if the father is in the location of the player]The [father][otherwise if M is alive]The [father] appears almost as if on cue! It[otherwise]A ghostly apparition of the hellhound appears from thin air! It[end if] howls loudly, almost like a wolf, and all the children copy their father. A rift appears in the air, and [one of]what looks like a portal to another plane[or]the inter-planar portal once again[stopping] opens in front of you. Your mutated spawn jump through the shimmering portal, one by one, until they have all disappeared into the murky abyss. After the last one has departed from this dimension, the portal closes. [BigNameDesc of M] takes one final incomprehensible look at you, and you could swear [he of M] muttered something like 'thank you' before [if M is alive]beginning to wander away[otherwise]fading away[end if].";
		otherwise:
			Delay Labour;
	otherwise:
		compute infernal birth.

To compute fatherhood to (M - hellhound):
	distract M.

To say SubduedGrabFlav of (M - hellhound) on (C - a clothing):
	say "[BigNameDesc of M] grabs hold of your [ShortDesc of C] with [his of M] mouth! There's no getting away now...".

To say GroundPeeReaction of (M - hellhound):
	if diaper quest is 1:
		say "[speech style of M]'Raaaawr!'[roman type][line break][BigNameDesc of M] doesn't seem impressed!";
		interest M;
		anger M.

To say ClothesPeeReaction of (M - hellhound):
	say GroundPeeReaction of M.

To say ToiletPeeReaction of (M - hellhound):
	say GroundPeeReaction of M.

To say ToiletReactionFlav of (M - hellhound):
	say GroundPeeReaction of M.

To compute diaper mess reaction of (M - hellhound):
	if diaper quest is 1:
		say "You see [NameDesc of M][']s eyes glaze over with arousal.[line break][speech style of M]'Awoo...'[roman type][line break]It looks like [he of M] wants to play...";
		anger M;
		interest M.

To say MonsterOfferAcceptFlav of (M - hellhound) to (T - a thing):
	if M is unfriendly:
		say "[BigNameDesc of M] pounces on the [ShortDesc of T], seemingly immediately bored with you and only interested in [his of M] new toy.";
	otherwise:
		say "[BigNameDesc of M] happily takes the [ShortDesc of T] in [his of M] mouth and wags [his of M] tail.".

Part 2 - Perception

To decide which number is the outrage tolerance of (M - hellhound):
	decide on 12.
To decide which number is the cringe tolerance of (M - hellhound):
	decide on 12.

To compute perception of (M - hellhound):
	if the class of the player is living sex doll:
		say "[BigNameDesc of M] sniffs you, and then decides to leave you alone.";
		bore M;
	otherwise if skeleton-playsuit is worn or skeleton stockings is worn:
		say "[BigNameDesc of M] barks eagerly upon seeing your [if skeleton-playsuit is worn]skeleton playsuit[end if][if skeleton-playsuit is worn and skeleton stockings is worn] and [end if][if skeleton stockings is worn]skeleton stockings[end if]! It looks like [he of M] wants a bone for [himself of M]![line break][variable custom style][if the player is able to speak]'Uh-oh... Bad dog! Down!'[otherwise]Uh-oh...[end if][roman type][line break]";
		anger M;
	otherwise if the player is pheromonal:
		anger M;
		say "[BigNameDesc of M] sniffs the air as a waft of your pheromones catches [his of M] attention. [big his of M] massive demon cock swells, and [he of M] turns towards you with visible aggression! [if mythical creature fetish is 1]You could swear you see [his of M] mouth form into a sinister smile[otherwise][big his of M] smile just got even wider[end if]...";
	otherwise if pet collar is worn:
		anger M;
		say "[BigNameDesc of M] looks at your [pet collar] and seems to decide it means you're [his of M] property. [he of M] turns towards you with visible aggression!";
	otherwise:
		compute appearance assessment of M;
		if M is friendly, bore M for 100 seconds;
	if M is interested:
		now the sex-length of M is the difficulty of M;
		if M is unfriendly, say "[big he of M] adopts an aggressive stance.".

To compute appearance assessment of (M - hellhound):
	if the appearance of the player > the outrage tolerance of M or (diaper quest is 1 and the cringe appearance of the player > the cringe tolerance of M):
		FavourDown M by 1;
		if M is unfriendly:
			say "[BigNameDesc of M][']s eyes [if asshole is lewdly exposed]immediately settle on your exposed [asshole][otherwise if there is a worn diaper]settle on your cushy padding[otherwise]hungrily rove your body[end if] as [he of M] licks [his of M] lips. [if mythical creature fetish is 1]You could swear you see [his of M] mouth form into a sinister smile[otherwise][big his of M] smile just got even wider[end if]...";
		otherwise:
			compute grope of M;
	otherwise:
		say "[big he of M] seems completely uninterested in you, and continues [if mythical creature fetish is 1]prowling[otherwise]crawling around[end if].".

To decide which number is the groping threshold of (M - hellhound):
	decide on a random number between 5 and 8.
To decide which number is the breasts grope preference of (M - hellhound):
	decide on -9999.
To decide which number is the asshole grope preference of (M - hellhound):
	if asshole is lewdly exposed, decide on 5;
	decide on -9999.
To decide which number is the vagina grope preference of (M - hellhound):
	decide on -9999.
To decide which number is the penis grope preference of (M - hellhound):
	decide on -9999.
To decide which number is the belly grope preference of (M - hellhound):
	decide on -9999.
To decide which number is the face grope preference of (M - hellhound):
	if the player is upright, decide on -9999;
	decide on 5.
To decide which number is the thighs grope preference of (M - hellhound):
	decide on 0.
To decide which number is the ass grope preference of (M - hellhound):
	if there is a worn diaper, decide on 5;
	decide on -9999.

To compute asshole grope of (M - hellhound):
	say "[BigNameDesc of M] buries [his of M] snout in between your [AssDesc], sniffing your butthole[if mythical creature fetish is 1] with [his of M] big wet nose[end if]!".

To compute face grope of (M - hellhound):
	say "[BigNameDesc of M] licks your face with [his of M] wet sloppy tongue!".

To compute thighs grope of (M - hellhound):
	say "[BigNameDesc of M] rubs [his of M] [if diaper quest is 1]padded[otherwise]exposed[end if] crotch up against your thigh!".

To compute ass grope of (M - hellhound):
	say "[BigNameDesc of M] rubs [his of M] [if diaper quest is 1]padded[otherwise]exposed[end if] crotch up against your diaper, creating a loud plastic rustling sound!".

To compute kneeling reaction of (M - hellhound):
	if mythical creature fetish is 1, say "[BigNameDesc of M] walks in a half circle to get behind you[one of], as if to make sure you know exactly how big [his of M] [DickDesc of M] really is.[or], [DickDesc of M] bobbing as it slides out of its sheath.[or]. You can almost feel [his of M] cruel eyes boring into you, as if daring you to run away.[or], pausing right next to you, as if to make sure you get a full look at the bestial [DickDesc of M] hanging between its legs.[at random]";
	otherwise say "[BigNameDesc of M] emits a sexual growl.";
	if the player is not shameless, say "You shiver with shame.";
	strongHumiliate.

Part 3 - Combat

Section 1 - Attack

To compute damaging attack of (M - hellhound):
	if a random number between 1 and 5 is 1 and the health of M <= the maxhealth of M / 2:
		compute shredding attack of M;
	otherwise:
		compute striking attack of M.

To compute shredding attack of (M - hellhound):
	say "[BigNameDesc of M] rears back onto [his of M] [if mythical creature fetish is 1]hind legs[otherwise]'hind legs'[end if], taking a deep breath and spitting out a giant fireball! ";
	let B be the painful-part of M;
	if the semen coating of B > 0:
		say "The fireball hits you [TargetName of B], instantly drying [if B is breasts]them[otherwise]it[end if] off!";
		now the semen coating of B is 0;
	otherwise:
		say "The fireball hits you [TargetName of B]! Ouch!";
		BodyRuin 2.

To say StrikingFlav of (M - hellhound) on (B - a body part):
	if mythical creature fetish is 1, say "[BigNameDesc of M] [one of]charges at you![or]takes a few steps back and charges at you![or]charges at you with [his of M] huge frame.[in random order]";
	otherwise say "[BigNameDesc of M] tries to headbutt you!".

To say StrikingSuccessFlav of (M - hellhound) on (B - a body part):
	say StrikingFlav of M on B;
	say "[big he of M] connects with your [if B is face]face[otherwise][printed name of B][end if]!".

To say StrikingFailureFlav of (M - hellhound) on (B - a body part):
	say StrikingFlav of M on B;
	say "[big he of M] nearly connects, but you move out of the way just in time.".

To compute (S - a spike bra) damaging (M - hellhound):
	say "[BigNameDesc of M] yelps in pain as your [ShortDesc of S] reflects some damage back.".

To say SexResistSlapFlav of (M - hellhound):
	say "[BigNameDesc of M] scratches at one of your arms [one of]to get you to behave[or]in order to keep you under control[or]as punishment[or]to discourage further disobedience[at random].".

This is the hellhound leash rule:
	let M be current-monster;
	if pet collar is actually summonable and M is willing to creampie asshole:
		summon pet collar locked;
		now M is covering pet collar;
		say "[BigNameDesc of M] uses [his of M] [if mythical creature fetish is 0]mouth to swing a large[otherwise]giant mouth to swing the[end if] collar over your head and onto your neck, where it immediately seals itself with cursed magic. [BigNameDesc of M] still has the leash in [his of M] mouth, which [he of M] uses to hold you strictly in place. There's no way you can escape now!";[The hellhound does this instead of penetrating you for this turn]
		rule succeeds.
The unique punishment rule of hellhound is the hellhound leash rule.

To compute the flying player taunting of (M - hellhound):
	if a random number from 1 to 6 is 1:
		say "[BigNameDesc of M] is [one of][or]still [stopping]watching you, waiting.".

To decide which number is the rounds of sex left of (M - hellhound):
	if M is knotted, decide on 1;
	decide on the sex-length of M.

To compute anal sex of (M - hellhound):
	compute fuckhole sex of M.

To compute vaginal sex of (M - hellhound):
	compute fuckhole sex of M.

To compute fuckhole sex of (M - hellhound):
	let F be a random fuckhole penetrated by M;
	if M is knotted:
		compute knotting of M in F;
	otherwise if the rounds of sex left of M <= 1:
		compute climax of M in F;
		if M is knotted, now the sex-length of M is a random number between 2 and 5;
	otherwise:
		if mythical creature fetish is 1, say "[BigNameDesc of M] [one of]licks your face with a hot, slimy devil tongue as [he of M] continues to pound away at your [variable F][or]pistons away in your [variable F] with incredible speed[or]repeatedly drills into you, plundering the depths of your [variable F] with [his of M] [LongDickDesc of M][in random order].";
		otherwise say "[BigNameDesc of M] [one of]licks the back of your neck with [his of M] warm tongue as [he of M] continues to pound away at your [variable F][or]pistons away in your [variable F] with incredible speed[or]repeatedly drills into you, plundering the depths of your [variable F] with [his of M] [DickDesc of M][in random order].";
		decrease the sex-length of M by 1;
		if the reaction of the player > 0, say "[one of]You feel further humiliated by the fact that you are letting [him of M] fuck you.[or][or][or][cycling]";
		ruin F.

To Knot (M - hellhound) in (F - a fuckhole):
	orgasm M;[makes sure the orgasm from the hellhound is counted]
	now M is knotted;
	ruin F;
	if the sex-length of M < 1, now the sex-length of M is 1.

To UnKnot (M - hellhound) in (F - a fuckhole):
	now M is unknotted;
	now the sex-length of M is 0.

To compute unique climax of (M - hellhound) in (F - a fuckhole):
	if M is wrapped:
		compute wrapped climax of M in F;
	otherwise:
		say ClimaxAnnounce of M in F;
		compute unprotected climax of M in F.

To say CondomPieFlav of (M - hellhound) in (F - a fuckhole):
	say "[BigNameDesc of M] howls as [he of M] climaxes, filling the condom with [if mythical creature fetish is 1]unnatural [end if]warmth. You can [if mythical creature fetish is 0]feel [his of M] cock ring expanding[otherwise]feel the base of [his of M] [DickDesc of M] expanding[end if], but luckily [he of M] pulls out before it can lock [him of M] inside of you.";
	UnKnot M in F.

[This function gets checked in a special way that prevents us from using randomness here.]
To decide if (M - hellhound) is willing to creampie (F - asshole):
	if the class of the player is catgirl, decide no;[he never creampies a catgirl]
	if the class of the player is puppygirl or the class of the player is succubus, decide yes;
	if the class of the player is priestess, decide no;
	if the player is a butt slut, decide yes;
	if the thickness of hips > 4, decide yes;
	decide no.

To decide if (M - hellhound) is willing to creampie (F - vagina):
	if there is a worn xavier's cunt tattoo, decide no;
	if the player is pheromonal, decide yes;
	if the class of the player is catgirl, decide no;[you can still get creampied if you count as pheromonal]
	if the class of the player is succubus, decide yes;
	if the class of the player is priestess, decide no;[would be brutal, so we prevent it.]
	if the player is a pussy slut, decide yes;
	if the thickness of hips + the pregnancy rate of the player > 4, decide yes;
	decide no.



To say ClimaxAnnounce of (M - hellhound) in (F - asshole):
	say "[BigNameDesc of M] howls as [he of M] climaxes, filling you with [his of M] [if mythical creature fetish is 1]unusually [end if]hot jism. [run paragraph on]".

To say ClimaxAnnounce of (M - hellhound) in (F - vagina):
	if mythical creature fetish is 1, say "[BigNameDesc of M] howls as [he of M] climaxes, filling you with [his of M] unusually hot jism. You can feel it flow into your womb[if pregnancy fetish is 1 and inhuman pregnancy > 1], surging straight for your Fallopian tubes with unnatural ease[end if]. [if pregnancy fetish is 1 and inhuman pregnancy > 1 and M is mating and the pregnancy of the player is 0][line break][variable custom style]Uh-oh, not pups again![roman type][line break][otherwise if pregnancy fetish is 1 and inhuman pregnancy > 1 and the pregnancy of the player is 0][line break][variable custom style]I can't get pregnant with puppies, can I?! I'm a human![roman type][line break][end if]";
	otherwise say ClimaxAnnounce of M in asshole.

To say CreampieFlav of (M - hellhound) in (F - a fuckhole):
	say "But rather than pulling out, [NameDesc of M] [if mythical creature fetish is 0]chuckles knowingly to [himself of M] and [end if][one of]seems to push[or]once again pushes[stopping] even deeper into your [variable F], and [if mythical creature fetish is 0]you hear something that sounds like a balloon inflating as [his of M] cock ring begins to rapidly expand inside of you[otherwise]you can't help but make high pitched noises as you feel the base of [his of M] [DickDesc of M] inflating[end if][one of][or], stretching your tired hole once again[stopping]. There's nothing you can do under the weight of the [if mythical creature fetish is 0][man of M][otherwise]demon[end if] except shudder as you are [']knotted['] by your canine [if the player is feeling dominant]nemesis[otherwise]mate[end if].";

To say MessyPullOutFlav of (M - hellhound) in (F - asshole):
	say "[one of]You think that's the end of it, but then[or]You know it's not over yet, and sure enough[stopping] you realise you can feel [if mythical creature fetish is 0][his of M] cock ring[otherwise]the base of [his of M] [DickDesc of M][end if] inflating. Pinned down by [his of M] full weight, [if the anal sex addiction of the player < 3]your heart sinks[otherwise if the anal sex addiction of the player < 7]you groan[otherwise]you mewl happily[end if] as you realise you are anally [']knotted['] by your canine [if the player is feeling dominant]nemesis[otherwise]mate[end if].".

[See climax announce above, we already displayed flavour for the creampie.]
To say MessyPullOutFlav of (M - hellhound) in (F - vagina):
	say "[BigNameDesc of M] pulls out, seeming to snicker as [he of M] walks around in front of you. [big his of M] red eyes fix you with a cruel stare as [he of M] lifts [his of M] leg and begins to pee in your face, as if marking you as [his of M] territory!".

To say PullOutFlav of (M - hellhound) in (F - vagina):
	say "[BigNameDesc of M] pulls out, appearing to have immediately lost interest. Meanwhile, [semen] continues leaking from [his of M] [DickDesc of M], leaving a slimy trail along the floor.".

To compute (M - hellhound) pulling out of (F - asshole):
	say MessyPullOutFlav of M in F;[the hellhound pulls out, but it's delayed by a turn]
	compute M finishing in F.

To compute (M - hellhound) finishing in (F - asshole):
	AssFill the semen load of M;
	unless M is wrapped, Knot M in F.

To compute (M - hellhound) pulling out of (F - vagina):
	if watersports fetish is 1, compute M messily pulling out of F;
	otherwise compute M cleanly pulling out of F;
	bore M.

To compute (M - hellhound) messily pulling out of (F - vagina):
	say MessyPullOutFlav of M in F;
	compute M finishing in F;
	FacePiss from M.

To compute (M - hellhound) cleanly pulling out of (F - vagina):
	say PullOutFlav of M in F;
	compute M finishing in F;
	SemenPuddleUp 2.

To compute creampie of (M - hellhound) in (F - vagina):
	say CreampieFlav of M in vagina;
	compute M finishing in F;
	Knot M in F.

To compute knotting of (M - hellhound) in (F - a fuckhole):
	if the sex-length of M <= 0:
		now M is unknotted;
		dislodge M;
		say "[BigNameDesc of M][']s [if mythical creature fetish is 0]cock ring[otherwise]knot[end if] finally deflates and [he of M] walks away, [his of M] [DickDesc of M] plopping out of your hole as the gap between you grows. [big he of M] doesn't look back, not even bothering to acknowledge that [he of M][']s no longer dragging you along with [him of M].";
		bore M;
		let H be a random off-stage puppy ears;
		if H is actually summonable:
			summon H cursed;
			say "[bold type]Suddenly, a [H][bold type] appear on your head![if the bimbo of the player < 9][line break][variable custom style]I am NOT a dog![end if][roman type][line break]";
	otherwise if M is willing to creampie F:
		if M is in Mansion08:
			say "[BigNameDesc of M] completely ignores you, continuing to drink its fill.";
		otherwise:
			let player-moved be 0;
			if delayed stand is 0: [This prevents a glitch with autostanding and the gladiator dragging]
				drag to Mansion08 by M;
				now M is penetrating F; [above line can dislodge]
		ruin F;
		say "[BigNameDesc of M][']s [semen] continues to slowly flow into you.";
		if M is penetrating asshole, Assfill 1;
		otherwise PussyFill 1;
		decrease the sex-length of M by 1;
	otherwise:
		say "[BigNameDesc of M] turns around and begins to walk off, but some stroke of mercy, or perhaps malice causes [him of M] to pause when [he of M] realises that [his of M] giant inflated [if mythical creature fetish is 0]cock ring[otherwise]knot[end if] has wedged [his of M] [DickDesc of M] firmly inside your [variable F]. Digging [his of M] [if mythical creature fetish is 0]elbows[otherwise]bestial talons[end if] into the [if the location of M is no-roof]ground[otherwise]floorboards[end if], [he of M] [i]wrenches[/i] [himself of M] free with a [if the openness of F < 3]excruciatingly painful[otherwise if the openness of F < 6]vicious[otherwise if the openness of F < 10]moderate[otherwise]healthy[end if] amount of force, releasing you with a loud *POP*.";
		ruin F times 5;
		PainUp 20;
		UnKnot M in F;
		dislodge M;
		bore M;
	if there is a worn tattoo and paw print tattoo is off-stage:
		summon paw print tattoo;
		say "[bold type]A new tattoo appears on your wrist![roman type][line break]";
		try examining paw print tattoo.

To say DragFlav of (M - hellhound) to (R - a room):
	say "[bold type][BigNameDesc of M][bold type] turns around and walks off, [if mythical creature fetish is 0]but since [his of M] cock ring has grown to such a large size that it can't get out[otherwise]either oblivious or uncaring that due to the fact its [LongDickDesc of M] is still knotted inside your body[end if], you get dragged along with [him of M].[roman type][line break]".

To say DragArrival of (M - hellhound) to (R - a room):
	say "[BigNameDesc of M] stops moving when [he of M] reaches the water bowl near [his of M] doghouse, where [he of M] begins lapping away, revitalising [himself of M] after [his of M] recent workout.".

To compute the default taunting of (M - hellhound):
	say "[HoundWait of M]".

To compute the dildo stuck taunting of (M - hellhound):
	say "[HoundWait of M]".

To say HoundWait of (M - hellhound):
	say "[one of][BigNameDesc of M] sniffs at your feet, waiting patiently.[or][or][cycling]".

This is the hellhound never convinced rule:
	if presented-orifice is not nothing, say "[BigNameDesc of current-monster] shows no indication of being persuaded by your action.".
The monster convinced rule of hellhound is usually the hellhound never convinced rule.

To set up sex length of (M - hellhound) in (B - a body part):
	if the sex-length of M < 5, now the sex-length of M is a random number between 3 and 4;
	if the sex-length of M > 5, now the sex-length of M is 5.

To say GrabbedPrep of (M - hellhound) with (G - a monster) in (F - vagina):
	say "[BigFuckerDesc of M] mounts you, pinning you down even further with [his of M] [if mythical creature fetish is 1]massive [end if]weight.".

To say GrabbedPrep of (M - hellhound) with (G - a monster) in (F - asshole):
	say GrabbedPrep of M with G in vagina.

To say TwosomePrep of (M - hellhound) in (F - vagina):
	say "Standing over you on all fours, [FuckerDesc of M] places [his of M] front [if mythical creature fetish is 0][']paws['][otherwise]paws[end if] over your hands, preventing you from moving at all. [if mythical creature fetish is 1]As if it would have mattered anyway - the demon is so heavy that all [he of M] had to do was put its weight on you! [end if]";

To say TwosomePrep of (M - hellhound) in (F - asshole):
	say TwosomePrep of M in vagina.

To say ThreesomePrep of (M - hellhound) with (N - a monster) in (F - vagina):[Does this monster have something unique for double penetration, or do N and M interact in a special way? override this function]
	if N is intelligent, say "The [N] flips you so your head is resting on [his of N] chest, holding you by the waist as [FuckerDesc of M] [if mythical creature fetish is 0]climbs onto your back[otherwise]drops [his of M] weight on top of you[end if].";
	otherwise say "[BigFuckerDesc of M] adds [himself of M] to the pile, pinning you down even further under [his of M] weight.".

To say ThreesomePrep of (M - hellhound) with (N - a monster) in (F - asshole):
	say ThreesomePrep of M with N in vagina.

To say SpitroastPrep of (M - hellhound) with (O - a monster) in (F - vagina):
	say TwosomePrep of M in F;

To say SpitroastPrep of (M - hellhound) with (O - a monster) in (F - asshole):
	say TwosomePrep of M in F;

To say FoursomePrep of (M - hellhound) with (N - a monster) and (O - a monster) in (F - vagina):
	say "[BigFuckerDesc of M] adds [himself of M] to the pile, pinning you down even further under [his of M] weight.".

To say FoursomePrep of (M - hellhound) with (N - a monster) and (O - a monster) in (F - asshole):
	say "[BigFuckerDesc of M] adds [himself of M] to the pile, pinning you down even further under [his of M] weight.".

To say AssholePenetrationFlav of (M - hellhound):
	say PenPrep of M in asshole;
	say "[one of][BigFuckerDesc of M] begins to thrust blindly, sending [his of M] [DickDesc of M] prodding[or]Once again, [FuckerDesc of M]'s [DickDesc of M] begins to blindly probe[stopping] between your [AssDesc]. No! You try to clench your cheeks shut, but [if mythical creature fetish is 1][his of M] shaft feels surprisingly oily and slippery[otherwise][he of M] doesn't seem disheartened at all[end if], and you have a bad feeling [one of]you know exactly how this is going to end[or]this is about to end the same way it did before[stopping]...";
	now M is unknotted;
	if the analvirgin of the player is 1:
		say AnalDefloweringFlav of M;
	otherwise:
		say "You do not have to wait long before [he of M] finds [one of]what [he of M]'s looking for[or][his of M] target[or][his of M] mark[in random order], and sensing that victory is close, [FuckerDesc of M] begins pressing forward. You hear [him of M] howl as [his of M] [one of][cockhead of M] pierces[or][LongDickDesc of M] spears[or][LongDickDesc of M] pierces[or][cockhead of M] spears[in random order] into your [asshole], but you could swear that the howl somehow sounds like laughter.".

To say AnalDefloweringFlav of (M - hellhound):
	say "You do not have to wait long before [he of M] finds what [he of M]'s looking for, and sensing that victory is close, [FuckerDesc of M] begins pressing forward. [big his of M] [cockhead of M] forces open your sphincter almost excruciating slowness, as if savouring the act of taking your first time. Just when you think it might never end, [FuckerDesc of M] suddenly bears down with all of [his of M] weight, letting out a cruel howl as [he of M] forces every inch of [his of M] [LongDickDesc of M] in all at once!".

To say VaginaPenetrationFlav of (M - hellhound):
	say PenPrep of M in vagina;
	say "[one of][BigFuckerDesc of M] begins to thrust blindly, sending [his of M] [DickDesc of M] prodding[or]Once again, [FuckerDesc of M]'s [DickDesc of M] begins to blindly probe[stopping] between your thighs. No! You try to close your legs, but [if mythical creature fetish is 1][his of M] shaft seems like it's the perfect shape for getting into small openings[otherwise][he of M] doesn't seem disheartened at all[end if], and you have a bad feeling [one of]you know exactly how this is going to end[or]this is about to end the same way it did before[stopping]...";
	now M is unknotted;
	if the vaginalvirgin of the player is 1:
		say VaginalDefloweringFlav of M;
	otherwise:
		say "You do not have to wait long before [one of]something hard brushes your labia[or]something hard suddenly pokes between your labia[or]something hard touches your outer folds[in random order], and sensing that victory is close, [FuckerDesc of M] begins pressing forward. You hear [him of M] howl as [his of M] [one of][cockhead of M] slides[or][LongDickDesc of M] pushes[or][LongDickDesc of M] slides[or][cockhead of M] pushes[in random order] into your [vagina], but you could swear that the howl somehow sounds like laughter.".

To say VaginalDefloweringFlav of (M - hellhound):
	say "You do not have to wait long before something hard brushes your labia, and sensing that victory is close, [FuckerDesc of M] begins pressing forward. [big his of M] [cockhead of M] is only briefly stopped by your hymen, easily tearing through it and removing your virginity forever. [big he of M] howls, but you could swear [he of M] was laughing as [his of M] [LongDickDesc of M] slides in.";

This is the hellhound fills diaper rule:
	let M be current-monster;
	if the player is diaper focused:
		let D be a random worn diaper;
		say "[BigNameDesc of M] mounts you from behind, [his of M] [if mythical creature fetish is 1]canine [end if][DickDesc of M] struggling to find anything to penetrate thanks to your well-padded rear. Unable to make [his of M] way inside, [he of M] settles for humping against your [ShortDesc of D] while you lay there unable to move from under [his of M] immense weight. As [NameDesc of M][']s movements become more frantic, [his of M] [DickDesc of M] manages to slip into one of the leg-holes of your diaper. Stimulated by this sudden change in sensation, [NameDesc of M] ejaculates, coating your butt cheeks with [if mythical creature fetish is 1]canine [end if][semen]. You hold still as [NameDesc of M] pulls away, leaving you with [his of M] musky seed seeping into your padding.";
		CumSoak 3 on D;
		satisfy M;
		rule succeeds.
The diaper punishment rule of hellhound is usually the hellhound fills diaper rule.

Section 2 - DQ

hellhound-hump is a diaper punishment. The priority of hellhound-hump is 5.
Definition: hellhound-hump (called P) is appropriate:
	if current-monster is not hellhound, decide no;
	if current-monster is penetrating vagina, decide yes;
	if there is a worn diaper, decide yes;
	decide no.

To compute punishment of (P - hellhound-hump):
	let M be current-monster;
	if M is penetrating vagina:
		if the sex-length of M > 0:
			let D be a random worn diaper;
			say "[BigNameDesc of M] [one of]continues to grind away, [if D is diaper]your combined[otherwise][his of M] thick[end if] padding filling the room with a loud rustling racket![or]increases [his of M] tempo even further, doubling the pressure on your [genitals]![or]playfully licks your face as [he of M] keeps rubbing [his of M] diaper against [if D is diaper]yours[otherwise]you[end if].[or]drools on you as [he of M] messily pants with [his of M] tongue hanging over your face. And [he of M] never stops [his of M] grinding![in random order]";
			decrease the sex-length of M by 1;
			cutscene display hellhound hump;
			ruin vagina;
		otherwise:
			say "[BigNameDesc of M] reaches [his of M] crescendo, barking happily as [he of M] fills [his of M] padding with [his of M] juices. ";
			ruin vagina;
			say "[big he of M] clambers off of you, and after a hearty sigh, appears to lose interest.";
			bore M;
	otherwise:
		say "With expert dexterity, [NameDesc of M] rolls you onto your back. Before you can react, [he of M] has leaped fully on top of you, squashing you under [his of M] weight and now the crotches of your diapers are mushed into each other. With what can only be described as an extremely sexual purr, [he of M] begins to grind your loins together through your joint layers padding.";
		now M is penetrating vagina;
		cutscene display hellhound hump;
		ruin vagina.

To cutscene display hellhound hump:
	if there is a worn perceived messed diaper:
		cutshow figure of puppy cutscene 3 for hellhound;
	otherwise if there is a worn perceived wet diaper:
		cutshow figure of puppy cutscene 2 for hellhound;
	otherwise:
		cutshow figure of puppy cutscene 1 for hellhound.

hellhound-facesit is a diaper punishment. The priority of hellhound-facesit is 4.
Definition: hellhound-facesit (called P) is appropriate:
	if current-monster is not hellhound, decide no;
	decide yes.

To compute punishment of (P - hellhound-facesit):
	let M be current-monster;
	if M is penetrating face:
		if the sex-length of M > 1:
			let C be a random worn top level protection clothing;
			if C is clothing:
				compute current-monster attacking C;
				unless there is worn top level protection clothing:
					say "[big he of M] immediately dives in, [if the player is possessing a penis]taking your [player-penis] into [his of M] mouth and whining happy as [he of M] begins to suck[otherwise]tongue at the ready, and begins to happily and messily lick at your [vagina][end if]!";
					ruin vagina;
			otherwise:
				if the player is possessing a penis, say "";
				otherwise say "[BigNameDesc of M] [one of]licks away at your [vagina] but never stops grinding on your face![or]messily tongues your inner folds whilst pleasuring [himself of M] on the tip of your nose![or]gently nibbles on your clit as [he of M] drives [his of M] diapered crotch across your face.[in random order]";
				ruin vagina;
			decrease the sex-length of M by 1;
			cutshow figure of puppy cutscene 4 for M;
		otherwise if the sex-length of M is 1:
			say "[BigNameDesc of M] [if there is worn top level protection clothing]suddenly sits up, and with a particularly dominant growl begins to use [his of M] diaper[otherwise]speeds up [his of M] oral pleasuring as [he of M] also pushes [his of M] diapered butt hard onto your face and begins to go to the toilet[end if]. ";
			if diaper messing >= 7:
				say "You can feel the pitter-patter of [his of M] [urine] and the squishiness of [his of M] bulk on your face through the material as [he of M] empties a full bladder and bowels into [his of M] nappy. ";
				cutshow figure of puppy cutscene 6 for M;
			otherwise:
				say "You can feel the pitter-patter of [his of M] [urine] on your face through the material as [he of M] empties a full bladder into [his of M] nappy. ";
				cutshow figure of puppy cutscene 5 for M;
			say "[big he of M] makes sure to give your [genitals] the time of its life as [he of M] does, making strong rhythmic motions with [his of M] tongue that you didn't even realise were possible!";
			DiaperAddictUp 1;
			unless there is worn top level protection clothing, ruin vagina times 3;
			decrease the sex-length of M by 1;
		otherwise:
			say "[BigNameDesc of M] soon reaches [his of M] crescendo, barking happily as [he of M] further fills [his of M] padding with [his of M] cummies. [big he of M] clambers off of you, and after a hearty sigh, appears to lose interest.";
			bore M;
	otherwise:
		say "[BigNameDesc of M] rolls you onto your back before turning 180 degrees and promptly sitting on your face. Your eyes, mouth and nose are all completely blocked under [his of M] thick padding. That is, until [he of M] begins to grind back and forth, giving you very brief chances to breathe in between each thrust of [his of M] hips!";
		now M is penetrating face;
		now the sex-length of M is 5;
		cutshow figure of puppy cutscene 4 for M;
		unless there is worn top level protection clothing:
			say "[big he of M] also moves [his of M] face down to your crotch and [if the player is possessing a penis]takes your [player-penis] into [his of M] mouth[otherwise]begins to explore your [vagina] with [his of M] tongue[end if]!";
			ruin vagina.

The hellhound continue sex rules is a rulebook. The continue sex rules of a hellhound is usually the hellhound continue sex rules.

This is the hellhound extra continue sex check rule:
	if diaper quest is 1:
		if current-monster is penetrating face:
			compute punishment of hellhound-facesit;
			rule succeeds;
		if current-monster is penetrating vagina:
			compute punishment of hellhound-hump;
			rule succeeds;
	follow the default continue sex rules;
	if the rule succeeded, rule succeeds.
The hellhound extra continue sex check rule is listed in the hellhound continue sex rules.

Section 3 - Damage

To say CombatProvokedReaction of (M - hellhound):
	say "[BigNameDesc of M] barks [if mythical creature fetish is 0]playfully and turns to face you[otherwise]angrily, with a terrifying demonic echo[end if]. Uh-oh...";
	now the sex-length of M is 4.

To say DamageReactHealthy of (M - hellhound):
	say "[BigNameDesc of M] ignores the impact and continues [his of M] assault!".

To say DamageReactDamaged of (M - hellhound):
	say "[one of][BigNameDesc of M] is showing signs of pain, but is still attacking you with everything [he of M] has got![or][BigNameDesc of M] continues to ignore the pain![stopping]".

To say DamageReactTired of (M - hellhound):
	say "[BigNameDesc of M] seems to be struggling to ignore the pain, but that isn't holding [him of M] back!".

To say DamageReactWeak of (M - hellhound):
	say "[BigNameDesc of M] seems too injured to keep going for too much longer!".

To say BanishFleeFlav of (M - hellhound):
	say "[BigNameDesc of M] limps away, howling in pain! You get the feeling you won't be seeing [him of M] again any time soon!".

Part - Conversation

Definition: hellhound is fluff-question-appropriate: decide no.

To compute conventional response of (M - hellhound):
	say "[speech style of M]'[one of]Arf[or]Woof[or]Ruff[or]Woof woof[in random order]!'[roman type][line break]".
To compute vanity response of (M - hellhound):
	compute conventional response of M.

To compute teaching offer of (M - hellhound):
	compute conventional response of M.

To compute friendly drink of (M - hellhound):
	compute conventional response of M.
To compute unfriendly drink of (M - hellhound):
	compute conventional response of M.

To compute friendly food of (M - hellhound):
	compute conventional response of M.
To compute unfriendly food of (M - hellhound):
	compute conventional response of M.

To compute unfriendly dismissal of (M - hellhound):
	compute conventional response of M.

To consider (T - talk-mute-question) for (M - hellhound): [Player can always ask this question]
	now the printed name of T is the substituted form of "[MuteQuestion of M]";
	set next numerical response to the substituted form of "[printed name of T]".

To say MuteResponse of (M - hellhound):
	if M is intelligent, say "[speech style of M]'[DogPetName] is an adult [man of M], but [DogPetName] only talks and acts like a dog because [DogPetName] is a good puppy slave for [literalMistress of vampiress]!'[roman type][line break]";
	otherwise say "The response comes telepathically.[line break][speech style of M]'Yes I am sentient. Yes I am of sexual [maturity]. No I am not an actual canine from your world, this is simply the form I take in your realm. No more questions.'[roman type][line break]".

To consider (T - talk-who-question) for (M - hellhound):
	if M is interested and M is intelligent:
		now the printed name of T is the substituted form of "[WhoQuestion of M]";
		set next numerical response to the substituted form of "[printed name of T]".

To say WhoAnswer of (M - hellhound):
	say "[speech style of M]'[DogPetName]! Woof!'[roman type][line break]".

Hellhound ends here.
