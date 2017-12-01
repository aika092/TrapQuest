Hellhound by Monster begins here.

A hellhound is a kind of monster.  A hellhound is usually mansion dwelling.  A hellhound is usually male.  A hellhound is usually father material.  A hellhound is usually willing to do anal.  A hellhound is usually willing to do vaginal.  The leftover-type of a hellhound is usually 113. A hellhound is poison immune.  A hellhound can be unknotted or knotted.  Figure of hellhound is the file "demondog1.png".  There is 1 hellhound. Understand "hell", "hound", "dog" as hellhound.

The description of hellhound is usually "[HellHoundDesc]".  The text-shortcut of hellhound is "hh".

The printed name of hellhound is "[if item described is in the location of the player][TQlink of item described][end if][input-style]hellhound[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".

To say HellHoundDesc:
	if images visible is 1, display figure of hellhound;
	say "This huge black canine is as tall as you even when it's on all fours.  Its spiked tail, sharp fangs and elongated claws are dead give-aways that it is from another plane.  [if a random pet collar is off-stage]It holds a collar and leash in its mouth, as if it's looking for someone to take it on a walk, or more likely, a pet of its own to lead around!  [end if]It stares at you with glowing red eyes, suggesting that a keen intelligence lies hidden behind the bestial mask.".
	
To set up (M - a hellhound):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 7;
	now the health of M is the maxhealth of M.

This is the spawn initial hellhound rule:
	if diaper quest is 1 or mythical creature fetish is 0:
		repeat with M running through hellhounds:
			now M is not mansion dwelling;
	otherwise if the number of alive hellhounds is 0:
		let M be a random hellhound;
		summon M in the mansion.
The spawn initial hellhound rule is listed in the setting up mansion monsters rules.

To decide which number is the girth of (M - a hellhound):
	if M is knotted, decide on 10;
	decide on 4.

Definition: a hellhound (called M) is controlling: [Will it grab onto subduing clothing e.g. a clitoris lead?]
	decide yes.

Part 1 - Misc Flavour

To say SummoningFlav of (M - a hellhound):
	if M is in the location of the player, say "The glow surrounding the mummy intensifies as a flaming rift tears open above it, and a dark shape charges through it. The [printed name of M] emits a chilling howl, siezing the leash end of the collar with its teeth as the portal closes up, and the mummy slowly returns to its feet.";
	say "You hear a chilling howl in the distance.".

To say PregGrowth of (M - a hellhound):
	say "the hellhound".

To compute labour to (M - a hellhound):
	if M is not alive or M is regional:
		compute pregnancy clothing displacement;
		say "[PregFlav][one of]You are [if the bimbo of the player < 13]horrified[otherwise]enthralled[end if] as you see a wet black nose poke its way out of your [vagina], followed by a canine head and body.  The tiny puppy that has just emerged from your womb is clearly infernal even in its infant state, with its jet black fur and blood red eyes.  [if the bimbo of the player < 15][variable custom style]How is this even possible?![otherwise][second custom style]I'm a breeding bitch for a demon dog... what an honour![end if][roman type]  Your cervix continues to painfully dilate and spasm as another pup begins its journey into the [if the intelligence of the player < 7]real[otherwise]virtual[end if] world, beginning to yap with a high pitched voice as soon as it has taken its first breath of air[or][stopping].  Your giant belly slowly shrinks as puppy after puppy emerge.  All in all, you give birth to [one of][or]another [stopping] [one of]twelve demonic canine babies[or]litter of eleven pups[or]ten small but loud puppies[or]nine little doggies[at random].   [one of]You gaze with [if the bimbo of the player < 13]terror[otherwise]wonder[end if] at your 'children', [if the bimbo of the player < 15]unable to believe that what just happened really happened[otherwise]unsure how you're expected to care for so many at once.  You only have two teats[end if]![or]You catch your breath as a weird sense of a job well done washes over you.[stopping][line break][if the father is in the location of the player]The [father][otherwise if M is alive]The [father] appears almost as if on cue!  It[otherwise]A ghostly apparition of the hellhound appears from thin air!  It[end if] howls loudly, almost like a wolf, and all the puppies copy their father.  A rift appears in the air, and [one of]what looks like a portal to another plane[or]the inter-planar portal once again[stopping] opens in front of you.  Your canine spawn jump through the shimmering portal, one by one, until they have all disappeared into the murky abyss.  After the last one has departed from this dimension, the portal closes.  The [M] takes one final incomprehensible look at you, before [if M is alive]beginning to wander away[otherwise]fading away[end if].";
		if the father is in the location of the player:
			say "For some reason, you are filled with a sense of deep fulfilment.  You feel great!";
			StrengthUp 1;
			DexUp 1;
			IntUp 1;
	otherwise:
		Delay Labour.

To compute fatherhood to (M - a hellhound):
	now the father is not interested;
	dislodge the father.

To say SubduedGrabFlav of (M - a hellhound) on (C - a clothing):
	say "The [M] grabs hold of your [C] with its mouth!  There's no getting away now...".


Part 2 - Perception

Report kneeling when there is an uninterested hellhound in the location of the player:
	repeat with M running through uninterested hellhounds in the location of the player:
		compute correct perception of M;

To compute perception of (M - a hellhound):
	deinterest M; [This is because the hellhound does not notice enemies by default.]
	if the class of the player is living sex doll:
		say "The [M] sniffs you, and then decides to leave you alone.";
		bore M;
	otherwise if the player is prone:
		anger M;
		say "The [M] seems to notice you!  You could swear you see its mouth form into a sinister smile...";
		now M is interested;
	if M is interested, now the sex-length of M is the difficulty of M.

To compute kneeling reaction of (M - a hellhound): [Default boring reaction if none is defined.]
	say "The [M] in a half circle to get behind you[one of], allowing you to see as if for the first time how big it really is.[or], [manly-penis] bobbing as it slides out of its sheath.[or]. You can almost feel its eyes boring into you, as if daring you to run away.[or], pausing right next to you, as if to make sure you get a full look at the bestial [manly-penis] hanging between its legs.[at random]";
	if the humiliation of the player < 30000, say " You shiver with shame.";
	say "[line break]";
	humiliate 75.

Part 3 - Combat

Section 1 - Attack

To compute the flying player taunting of (M - a hellhound):
	if a random number from 1 to 6 is 1:
		say "The [M] is [one of][or]still [stopping]watching you, waiting.".

To decide which number is the rounds of sex left of (M - a hellhound):
	if M is knotted, decide on 1;
	decide on the sex-length of M.

To compute anal sex of (M - a hellhound):
	compute fuckhole sex of M.

To compute vaginal sex of (M - a hellhound):
	compute fuckhole sex of M.

To compute fuckhole sex of (M - a hellhound):
	let F be a random fuckhole penetrated by M;
	if M is knotted:
		compute knotting of M;
	otherwise if the rounds of sex left of M <= 1:
		if M is penetrating asshole, compute anal climax of M;
		otherwise compute vaginal climax of M;
		now the sex-length of M is a random number between 2 and 5;
	otherwise:
		say "The [M] [one of]licks your face with a hot, slimy devil tongue as it continues to pound away at your [variable F][or]pistons away in your [variable F] with incredible speed[or]repeatedly drills into you, plundering the depths of your [variable F] with its slippery canine cock[in random order].";
		decrease the sex-length of M by 1;
		if the reaction of the player > 0, say "[one of]You feel further humiliated by the fact that you are letting a dog fuck you, even if it is some kind of demon.[or][or][or][cycling]";
		if M is penetrating asshole, AssRuin 1;
		otherwise PussyRuin 1.

To compute anal climax of (M - a hellhound):
	TimesFuckedUp M by 1;
	say "The [M] howls as [he of M] climaxes, filling you with [his of M] unusually hot jism. [run paragraph on]";
	if the player is breeding material or the player is a butt slut:
		say "Instead of pulling out, the [M] [one of]seems to push[or]once again pushes[stopping] even deeper, and [if the sex addiction of the player < 7]your heart sinks[otherwise if the sex addiction of the player < 14]you yelp[otherwise]you coo happily[end if] as you feel the base of its cock inflating. There's nothing you can do under the weight of the beast except [if the anal sex addiction of the player < 8]shudder[otherwise]shiver[end if] as you are anally knotted by your canine [if the sex addiction of the player < 14]nemesis[otherwise]mate[end if].";
	otherwise:
		say "[one of]You think that's the end of it, but then[or]You know it's not over yet, and sure enough[stopping] you realize you can feel the base of its cock inflating. Pinned down by its full weight, [if the sex addiction of the player < 7]your heart sinks[otherwise if the sex addiction of the player < 14]you groan[otherwise]you mewl happily[end if] as you realize there's nothing you can do to get away as you are anally knotted by your canine [if the sex addiction of the player < 14]nemesis[otherwise]mate[end if].";
	assfill the semen load of M;
	now M is knotted;
	AssRuin 1.

To compute vaginal climax of (M - a hellhound):
	TimesFuckedUp M by 1;
	say "The [M] howls as he climaxes, filling you with its unusually hot jism.  You can feel it flow into your womb[if pregnancy fetish is 1 and inhuman pregnancy > 1], surging straight for your fallopian tubes with unnatural ease[end if].  [if pregnancy fetish is 1 and inhuman pregnancy > 1 and M is mating][variable custom style]Uh-oh, not pups again![roman type][line break][otherwise if pregnancy fetish is 1 and inhuman pregnancy > 1][variable custom style]I can't get pregnant with puppies, can I?!  I'm a human![roman type][line break][end if]";
	wombfill the semen load of M;
	if the player is not breeding material and the player is not a pussy slut:[does he see you as a good mate?]
		say PullOutFlav of M;
		if watersports fetish is 1, FacePiss;
		otherwise SemenPuddleUp 2;
		bore M;
	otherwise:
		say CreampieFlav of M;
		now M is knotted;
		PussyRuin 1.

To say CreampieFlav of (M - a hellhound):
	if M is penetrating vagina:
		say "But rather than pulling out, the [M] [one of]seems to push[or]once again pushes[stopping] even deeper into your [vagina], and you can't help but make high pitched noises as you feel the base of its cock inflating[one of][or], stretching your tired hole once again[stopping].  There's nothing you can do under the weight of the beast except shudder as you are vaginally knotted by your canine [if the sex addiction of the player < 14]nemesis[otherwise]mate[end if].";
	otherwise:
		say "The [M] ejaculates deep inside your [asshole]!".
	
To say PullOutFlav of (M - a hellhound):
	if watersports fetish is 1:
		say "The [M] pulls out and slowly walks around to your face. He lifts his leg and immediately begins to pee, as if marking you as his territory!";
	otherwise:
		say "The [M] pulls out, appearing to have immediately lost interest. [Semen] continues leaking from its [manly-penis], leaving a slimy trail along the floor.".

To compute knotting of (M - a hellhound):
	if the sex-length of M <= 0:
		now M is unknotted;
		dislodge M;
		say "The [M]'s knot finally deflates and it walks away, its [manly-penis] plopping out of your hole as the gap between you grows.  It doesn't even look back, seemingly not even noticing that it is no longer dragging your body along with it.";
		bore M;
		let H be a random off-stage puppy ears;
		if H is actually summonable:
			summon H cursed;
			say "[bold type]Suddenly, a pair of [H][bold type] appear on your head![if the bimbo of the player < 9]  [variable custom style]I am NOT a dog![end if][roman type][line break]";
	otherwise if the player is breeding material or the player is a butt slut:
		if M is in Mansion08:
			say "The [M] completely ignores you, continuing to drink its fill.";
		otherwise:
			let player-moved be 0;
			if delayed stand is 0: [This prevents a glitch with autostanding and the gladiator dragging]
				drag to Mansion08 by M;
		if M is penetrating asshole, AssRuin 1;
		otherwise PussyRuin 1;
		say "The [M]'s [semen] continues to slowly flow into you.";
		if M is penetrating asshole, Assfill 1;
		otherwise wombfill 1;
		decrease the sex-length of M by 1;
	otherwise:
		say "The [M] turns around and begins to walk off, but some stroke of mercy, or perhaps malice causes [him of M] to pause when [he of M] realizes that [his of M] giant knot has wedged [his of M] [manly-penis] firmly inside your rectum. Digging [his of M] bestial talons into the [if the location of M is no-roof]ground[otherwise]floorboards[end if], he [i]wrenches[/i] [him of M]self free with a [if the openness of asshole < 3]excruciatingly painful[otherwise if the openness of asshole < 6]vicious[otherwise if the openness of asshole < 10]moderate[otherwise]healthy[end if] amount of force,  releasing you with a loud *POP*.";
		AssRuin 5;
		DelicateUp 2;
		now M is unknotted;
		dislodge M;
		now the sex-length of M is 0;
		bore M;
	let T be a random paw print tattoo;
	if there is a worn tattoo and T is not worn:
		summon T;
		say "[bold type]A new tattoo appears on your wrist![roman type][line break]";
		try examining T.

To say DragFlav of (M - a hellhound) to (R - a room):
	say "[bold type]The [M][bold type] turns around and walks off, either oblivious or uncaring that due to the fact its giant cock is still knotted inside your body, you get dragged along with it.[roman type][line break]".

To say DragArrival of (M - a hellhound) to (R - a room):
	say "The [M] stops moving when it reaches the water bowl near its doghouse, where it begins lapping away, revitalising itself after its recent workout.".

To compute the default taunting of (M - a hellhound):
	say "[HoundWait of M]".

To compute the dildo stuck taunting of (M - a hellhound):
	say "[HoundWait of M]".

To say HoundWait of (M - a hellhound):
	say "[one of]The [M] sniffs at your feet, waiting patiently.[or][or][cycling]".

This is the hellhound never convinced rule:
	if presented-orifice is not nothing, say "The [current-monster] shows no indication of being persuaded by your action.".
The monster convinced rule of hellhound is usually the hellhound never convinced rule.

To compute (M - a hellhound) entering asshole:
	let C be a random off-stage pet collar;
	if the player is the donator and C is actually summonable and the player is breeding material:
		summon C cursed;
		now M is covering C;
		say "The [M] uses its giant mouth to swing the collar over your head and onto your neck, where it immediately seals itself with cursed magic.  The [M] still has the leash in its mouth, which it uses to hold you strictly in place.  There's no way you can escape now!";
	otherwise:
		say "[FuckholePenetrationFlav of M]";
		now M is penetrating asshole;
		AssRuin 1.

To compute (M - a hellhound) entering vagina:
	say "[FuckholePenetrationFlav of M]";
	now M is penetrating vagina;
	PussyRuin 1.

To say FuckholePenetrationFlav of (M - a hellhound):
	let F be the chosen-orifice of M;
	now M is unknotted;
	if the sex-length of M < 5, now the sex-length of M is a random number between 3 and 4;
	if the sex-length of M > 5, now the sex-length of M is 5;
	say "Standing over you on all fours, the [M] places its front paws over your hands, preventing you from moving at all.  As if it would have mattered anyway - the beast is so heavy that all it had to do was put its weight on you!  The [M] thrusts blindly, sending its [manly-penis] prodding between your butt-cheeks.  [one of]No!  You clench your ass-cheeks, trying to deny it entrance, but the long member feels surprisingly oily and slippery, and you have a bad feeling you know where this is going to end...[or]Once again it probes blindly between your thighs...[stopping] You do not have to wait long before it comes across an opening, and sensing that victory is close, the [M] begins pressing forward.  As the tip of its [manly-penis] pierces into your [variable F], you hear it howl - but you could swear that the howl somehow sounds like laughter.".

This is the hellhound fills diaper rule:
	let M be current-monster;
	if the player is diaper focused:
		let D be a random worn diaper;
		say "The [M] mounts you from behind, its canine [manly-penis] struggling to find anything to penetrate thanks to your well-padded rear.  Unable to make its way inside, it settles for humping against your [D] whilst you lay there unable to move from under its immense weight.  As the [M]'s movements become more frantic, its [manly-penis] manages to slip into one of the leg-holes of your diaper.  Stimulated by this sudden change in sensation, the [M] ejaculates, coating your butt cheeks with canine [semen].  You hold still as the [M] pulls away, leaving you with his musky seed seeping into your padding.";
		CumSoak 3 on D;
		satisfy M;
		rule succeeds.
The diaper punishment rule of a hellhound is usually the hellhound fills diaper rule.

To say StrikingSuccessFlav of (M - a hellhound) on (B - a body part):
	say "The [M] scratches you [TargetName of B] with its claws!  Ouch!!".

To compute (S - a spike bra) damaging (M - a hellhound):
	say "The [M] yelps in pain as your [printed name of S] reflects some damage back.".

To say StrikingFailureFlav of (M - a hellhound) on (B - a body part):
	say "The [M] goes for you with its claws, but you manage to move your limb out the way just in time.".

Section 2 - Damage

To compute damage of (M - a hellhound):
	if the health of M > 0:
		if M is uninterested:
			say "The [M] barks angrily, with a terrifying demonic echo.  Uh-oh...";
			now M is interested;
			anger M;
			now the sex-length of M is 4;
		otherwise:
			say DamageReaction (the health of M) of M;
	otherwise:
		compute death of M.

To say DamageReaction (N - a number) of (M - a hellhound):
	if N > (the maxhealth of M / 4) * 3:
		say "The [M] ignores the impact and continues its assault!";
	otherwise if N > (the maxhealth of M / 4) * 2:
		say "[one of]The [M] is showing signs of pain, but is still attacking you with everything [he of M] has got![or]The [M] continues to ignore the pain![stopping]";
	otherwise if N > (the maxhealth of M / 4):
		say "The [M] seems to be struggling to ignore the pain, but that isn't holding [he of M] back!";
	otherwise:
		say "The [M] seems too injured to keep going for too much longer!".


Hellhound ends here.
