Hellhound by Monster begins here.

hellhound is a monster. hellhound is male. The leftover-type of hellhound is usually 113. The poison-status of hellhound is -1. hellhound can be unknotted or knotted. Figure of hellhound is the file "NPCs/Mansion/demondog1.png". Understand "hell", "hound", "dog" as hellhound. The text-shortcut of hellhound is "hh".

Definition: hellhound (called M) is mansion dwelling:
	if mythical creature fetish is 0, decide no;
	decide yes.

To decide which figure-name is the monster-image of (M - a hellhound):
	decide on figure of hellhound.

To say ShortDesc of (M - a hellhound):
	say "hellhound".

To say MediumDesc of (M - a hellhound):
	say "hellhound".

To say MonsterDesc of (M - a hellhound):
	say "This huge black canine is as tall as you even when it's on all fours. Its spiked tail, sharp fangs and elongated claws are dead give-aways that it is from another plane. [if a random pet collar is off-stage]It holds a collar and leash in its mouth, as if it's looking for someone to take it on a walk, or more likely, a pet of its own to lead around!  [end if]It stares at you with glowing red eyes, letting you know that a keen intelligence lies hidden behind the bestial mask.".
	
To set up (M - hellhound):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 7;
	now the health of M is the maxhealth of M.

This is the spawn initial hellhound rule:
	if hellhound is off-stage and mythical creature fetish is 1, summon hellhound in the mansion.
The spawn initial hellhound rule is listed in the setting up mansion monsters rules.

To decide which number is the girth of (M - hellhound):
	if M is knotted, decide on 10;
	decide on 4.

Definition: hellhound (called M) is controlling: [Will it grab onto subduing clothing e.g. a clitoris lead?]
	decide yes.

Definition: hellhound (called M) is willing to do oral:
	decide no.

Definition: hellhound (called M) is willing to do titfucks:
	decide no.

Part 1 - Misc Flavour

To say SummoningFlav of (M - hellhound):
	if M is in the location of the player, say "The glow surrounding the mummy intensifies as a flaming rift tears open above it, and a dark shape charges through. The [printed name of M] emits a chilling howl, seizing the leash end of the collar with its teeth as the portal closes, and the mummy slowly returns to its feet.";
	say "You hear a chilling howl in the distance.".

To say PregGrowth of (M - hellhound):
	say "the hellhound".

To compute labour to (M - hellhound):
	if M is not alive or M is regional:
		compute pregnancy clothing displacement;
		say "[PregFlav][one of]You are [if the bimbo of the player < 13]horrified[otherwise]enthralled[end if] as you see a wet black nose poke its way out of your [vagina], followed by a canine head and body. The tiny puppy that has just emerged from your womb is clearly infernal even in its infant state, with its jet black fur and blood red eyes. [if the bimbo of the player < 15][line break][variable custom style]How is this even possible?![otherwise][line break][second custom style]I'm a breeding bitch for a demon dog... what an honour![end if][roman type][line break]Your cervix continues to painfully dilate and spasm as another pup begins its journey into the [if the intelligence of the player < 7]real[otherwise]virtual[end if] world, beginning to yap with a high pitched voice as soon as it has taken its first breath of air[or][stopping]. Your giant belly slowly shrinks as puppy after puppy emerge. All in all, you give birth to [one of][or]another [stopping] [one of]twelve demonic canine babies[or]litter of eleven pups[or]ten small but loud puppies[or]nine little doggies[at random]. [one of]You gaze with [if the bimbo of the player < 13]terror[otherwise]wonder[end if] at your 'children', [if the bimbo of the player < 15]unable to believe that what just happened really happened[otherwise]unsure how you're expected to care for so many at once. You only have two teats[end if]![or]You catch your breath as a weird sense of a job well done washes over you.[stopping][line break][if the father is in the location of the player]The [father][otherwise if M is alive]The [father] appears almost as if on cue!  It[otherwise]A ghostly apparition of the hellhound appears from thin air!  It[end if] howls loudly, almost like a wolf, and all the puppies copy their father. A rift appears in the air, and [one of]what looks like a portal to another plane[or]the inter-planar portal once again[stopping] opens in front of you. Your canine spawn jump through the shimmering portal, one by one, until they have all disappeared into the murky abyss. After the last one has departed from this dimension, the portal closes. [BigNameDesc of M] takes one final incomprehensible look at you, before [if M is alive]beginning to wander away[otherwise]fading away[end if].";
		if the father is in the location of the player:
			say "For some reason, you are filled with a sense of deep fulfilment. You feel great!";
			StrengthUp 1;
			DexUp 1;
			IntUp 1;
	otherwise:
		Delay Labour.

To compute fatherhood to (M - hellhound):
	now the father is not interested;
	dislodge the father.

To say SubduedGrabFlav of (M - hellhound) on (C - a clothing):
	say "[BigNameDesc of M] grabs hold of your [ShortDesc of C] with its mouth!  There's no getting away now...".


Part 2 - Perception

Report kneeling when hellhound is interested and hellhound is in the location of the player:
	compute correct perception of hellhound.

To compute perception of (M - hellhound):
	deinterest M; [This is because the hellhound does not notice enemies by default.]
	if the class of the player is living sex doll:
		say "[BigNameDesc of M] sniffs you, and then decides to leave you alone.";
		bore M;
	otherwise if the player is prone:
		anger M;
		say "[BigNameDesc of M] seems to notice you!  You could swear you see its mouth form into a sinister smile...";
		now M is interested;
	if M is interested, now the sex-length of M is the difficulty of M.

To compute kneeling reaction of (M - hellhound): [Default boring reaction if none is defined.]
	say "[BigNameDesc of M] in a half circle to get behind you[one of], allowing you to see as if for the first time how big it really is.[or], [manly-penis] bobbing as it slides out of its sheath.[or]. You can almost feel its eyes boring into you, as if daring you to run away.[or], pausing right next to you, as if to make sure you get a full look at the bestial [manly-penis] hanging between its legs.[at random]";
	if the humiliation of the player < 30000, say " You shiver with shame.";
	say "[line break]";
	humiliate 75.

Part 3 - Combat

Section 1 - Attack

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
		say "[BigNameDesc of M] [one of]licks your face with a hot, slimy devil tongue as it continues to pound away at your [variable F][or]pistons away in your [variable F] with incredible speed[or]repeatedly drills into you, plundering the depths of your [variable F] with its slippery canine cock[in random order].";
		decrease the sex-length of M by 1;
		if the reaction of the player > 0, say "[one of]You feel further humiliated by the fact that you are letting a dog fuck you, even if it is some kind of demon.[or][or][or][cycling]";
		ruin F.

To Knot (M - hellhound) in (F - a fuckhole):
	now M is knotted;
	ruin F;
	if the sex-length of M < 1, now the sex-length of M is 1.

To UnKnot (M - hellhound) in (F - a fuckhole):
	now M is unknotted;
	now the sex-length of M is 0.

To compute unique climax of (M - hellhound) in (F - a fuckhole):
	say ClimaxAnnounce of M in F;
	compute unprotected climax of M in F.

To decide if (M - hellhound) is willing to creampie (F - asshole):
	if the class of the player is catgirl, decide no;
	if the class of the player is puppygirl or the class of the player is succubus, decide yes;
	if the class of the player is priestess:
		if the virgin bonus of the player > 0, decide no;
	if the player is a butt slut, decide yes;
	if the thickness of hips > 4, decide yes;
	decide no.

To decide if (M - hellhound) is willing to creampie (F - vagina):
	if the class of the player is catgirl, decide no;
	if the class of the player is puppygirl or the class of the player is succubus, decide yes;
	if the class of the player is priestess:[He can sometimes knot a priestess, but there's rules]
		if the virgin bonus of the player < 0 or the player is a sissy, decide yes;
		decide no;
	if the player is a pussy slut, decide yes;
	if the thickness of hips + the pregnancy rate of the player > 4, decide yes;
	decide no.

To say ClimaxAnnounce of (M - hellhound) in (F - asshole):
	say "[BigNameDesc of M] howls as [he of M] climaxes, filling you with [his of M] unusually hot jism. [run paragraph on]".

To say ClimaxAnnounce of (M - hellhound) in (F - vagina):
	say "[BigNameDesc of M] howls as he climaxes, filling you with its unusually hot jism. You can feel it flow into your womb[if pregnancy fetish is 1 and inhuman pregnancy > 1], surging straight for your fallopian tubes with unnatural ease[end if]. [if pregnancy fetish is 1 and inhuman pregnancy > 1 and M is mating][line break][variable custom style]Uh-oh, not pups again![roman type][line break][otherwise if pregnancy fetish is 1 and inhuman pregnancy > 1][line break][variable custom style]I can't get pregnant with puppies, can I?!  I'm a human![roman type][line break][end if]".

To say CreampieFlav of (M - hellhound) of (F - a fuckhole):
	say "But rather than pulling out, [NameDesc of M] [one of]seems to push[or]once again pushes[stopping] even deeper into your [variable F], and you can't help but make high pitched noises as you feel the base of its cock inflating[one of][or], stretching your tired hole once again[stopping]. There's nothing you can do under the weight of the beast except shudder as you are knotted by your canine [if the player is feeling dominant]nemesis[otherwise]mate[end if].";

To say MessyPullOutFlav of (M - hellhound) in (F - asshole):
	say "[one of]You think that's the end of it, but then[or]You know it's not over yet, and sure enough[stopping] you realize you can feel the base of its cock inflating. Pinned down by its full weight, [if the anal sex addiction of the player < 3]your heart sinks[otherwise if the anal sex addiction of the player < 7]you groan[otherwise]you mewl happily[end if] as you realize there's nothing you can do to get away as you are anally knotted by your canine [if the player is feeling dominant]nemesis[otherwise]mate[end if].".

To say MessyPullOutFlav of (M - hellhound) in (F - vagina):
	say "[BigNameDesc of M] pulls out and slowly walks around to your face. He lifts his leg and immediately begins to pee, as if marking you as his territory!".

To say PullOutFlav of (M - hellhound) in (F - vagina):
	say "[BigNameDesc of M] pulls out, appearing to have immediately lost interest. [Semen] continues leaking from its [manly-penis], leaving a slimy trail along the floor.".

To compute (M - hellhound) pulling out of (F - asshole):
	say MessyPullOutFlav of M in F;
	compute M finishing in F.

To compute (M - hellhound) finishing in (F - asshole):
	AssFill the semen load of M;
	Knot M in F.

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
	SemenPuddleUp 2;

To compute creampie of (M - hellhound) in (F - vagina):
	say CreampieFlav of M in vagina;
	compute M finishing in F;
	Knot M in F.

To compute knotting of (M - hellhound) in (F - a fuckhole):
	if the sex-length of M <= 0:
		now M is unknotted;
		dislodge M;
		say "[BigNameDesc of M]'s knot finally deflates and it walks away, its [manly-penis] plopping out of your hole as the gap between you grows. It doesn't even look back, seemingly not even noticing that it is no longer dragging your body along with it.";
		bore M;
		let H be a random off-stage puppy ears;
		if H is actually summonable:
			summon H cursed;
			say "[bold type]Suddenly, a pair of [H][bold type] appear on your head![if the bimbo of the player < 9]  [line break][variable custom style]I am NOT a dog![end if][roman type][line break]";
	otherwise if M is willing to creampie F:
		if M is in Mansion08:
			say "[BigNameDesc of M] completely ignores you, continuing to drink its fill.";
		otherwise:
			let player-moved be 0;
			if delayed stand is 0: [This prevents a glitch with autostanding and the gladiator dragging]
				drag to Mansion08 by M;
		ruin F;
		say "[BigNameDesc of M]'s [semen] continues to slowly flow into you.";
		if M is penetrating asshole, Assfill 1;
		otherwise PussyFill 1;
		decrease the sex-length of M by 1;
	otherwise:
		say "[BigNameDesc of M] turns around and begins to walk off, but some stroke of mercy, or perhaps malice causes [him of M] to pause when [he of M] realizes that [his of M] giant knot has wedged [his of M] [manly-penis] firmly inside your [variable F]. Digging [his of M] bestial talons into the [if the location of M is no-roof]ground[otherwise]floorboards[end if], he [i]wrenches[/i] [him of M]self free with a [if the openness of F < 3]excruciatingly painful[otherwise if the openness of F < 6]vicious[otherwise if the openness of F < 10]moderate[otherwise]healthy[end if] amount of force,  releasing you with a loud *POP*.";
		ruin F times 5;
		DelicateUp 2;
		UnKnot M in F;
		dislodge M;
		bore M;
	let T be a random paw print tattoo;
	if there is a worn tattoo and T is not worn:
		summon T;
		say "[bold type]A new tattoo appears on your wrist![roman type][line break]";
		try examining T.

To say DragFlav of (M - hellhound) to (R - a room):
	say "[bold type][BigNameDesc of M][bold type] turns around and walks off, either oblivious or uncaring that due to the fact its giant cock is still knotted inside your body, you get dragged along with it.[roman type][line break]".

To say DragArrival of (M - hellhound) to (R - a room):
	say "[BigNameDesc of M] stops moving when it reaches the water bowl near its doghouse, where it begins lapping away, revitalising itself after its recent workout.".

To compute the default taunting of (M - hellhound):
	say "[HoundWait of M]".

To compute the dildo stuck taunting of (M - hellhound):
	say "[HoundWait of M]".

To say HoundWait of (M - hellhound):
	say "[one of][BigNameDesc of M] sniffs at your feet, waiting patiently.[or][or][cycling]".

This is the hellhound never convinced rule:
	if presented-orifice is not nothing, say "[BigNameDesc of current-monster] shows no indication of being persuaded by your action.".
The monster convinced rule of hellhound is usually the hellhound never convinced rule.

To compute (M - hellhound) entering anally:
	let C be a random off-stage pet collar;
	if C is actually summonable and M is willing to creampie asshole:
		summon C cursed;
		now M is covering C;
		say "[BigNameDesc of M] uses its giant mouth to swing the collar over your head and onto your neck, where it immediately seals itself with cursed magic. [BigNameDesc of M] still has the leash in its mouth, which it uses to hold you strictly in place. There's no way you can escape now!";[The hellhound does this instead of penetrating you for this turn]
	otherwise:
		compute M entering asshole.

To say VaginaPenetrationFlav of (M - hellhound):
	say FuckholePenetrationFlav of M.

To set up sex length of (M - a monster) in (B - a body part):
	if the sex-length of M < 5, now the sex-length of M is a random number between 3 and 4;
	if the sex-length of M > 5, now the sex-length of M is 5.

To say FuckholePenetrationFlav of (M - hellhound):
	let F be the chosen-orifice of M;
	now M is unknotted;
	[if the sex-length of M < 5, now the sex-length of M is a random number between 3 and 4;
	if the sex-length of M > 5, now the sex-length of M is 5;]
	say "Standing over you on all fours, [NameDesc of M] places its front paws over your hands, preventing you from moving at all. As if it would have mattered anyway - the beast is so heavy that all it had to do was put its weight on you!  [BigNameDesc of M] thrusts blindly, sending its [manly-penis] prodding between your butt-cheeks. [one of]No!  You clench your ass-cheeks, trying to deny it entrance, but the long member feels surprisingly oily and slippery, and you have a bad feeling you know where this is going to end...[or]Once again it probes blindly between your thighs...[stopping] You do not have to wait long before it comes across an opening, and sensing that victory is close, [NameDesc of M] begins pressing forward. As the tip of its [manly-penis] pierces into your [variable F], you hear it howl - but you could swear that the howl somehow sounds like laughter.".

This is the hellhound fills diaper rule:
	let M be current-monster;
	if the player is diaper focused:
		let D be a random worn diaper;
		say "[BigNameDesc of M] mounts you from behind, its canine [manly-penis] struggling to find anything to penetrate thanks to your well-padded rear. Unable to make its way inside, it settles for humping against your [D] whilst you lay there unable to move from under its immense weight. As [NameDesc of M]'s movements become more frantic, its [manly-penis] manages to slip into one of the leg-holes of your diaper. Stimulated by this sudden change in sensation, [NameDesc of M] ejaculates, coating your butt cheeks with canine [semen]. You hold still as [NameDesc of M] pulls away, leaving you with his musky seed seeping into your padding.";
		CumSoak 3 on D;
		satisfy M;
		rule succeeds.
The diaper punishment rule of hellhound is usually the hellhound fills diaper rule.

To say StrikingSuccessFlav of (M - hellhound) on (B - a body part):
	say "[BigNameDesc of M] scratches you [TargetName of B] with its claws!  Ouch!!".

To compute (S - a spike bra) damaging (M - hellhound):
	say "[BigNameDesc of M] yelps in pain as your [printed name of S] reflects some damage back.".

To say StrikingFailureFlav of (M - hellhound) on (B - a body part):
	say "[BigNameDesc of M] goes for you with its claws, but you manage to move your limb out the way just in time.".

Section 2 - Damage

To compute damage of (M - hellhound):
	if the health of M > 0:
		if M is uninterested:
			say "[BigNameDesc of M] barks angrily, with a terrifying demonic echo. Uh-oh...";
			now M is interested;
			anger M;
			now the sex-length of M is 4;
		otherwise:
			say DamageReaction (the health of M) of M;
	otherwise:
		compute death of M.

To say DamageReactHealthy of (M - hellhound):
	say "[BigNameDesc of M] ignores the impact and continues its assault!".

To say DamageReactDamaged of (M - hellhound):
	say "[one of][BigNameDesc of M] is showing signs of pain, but is still attacking you with everything [he of M] has got![or][BigNameDesc of M] continues to ignore the pain![stopping]".

To say DamageReactTired of (M - hellhound):
	say "[BigNameDesc of M] seems to be struggling to ignore the pain, but that isn't holding [he of M] back!".

To say DamageReactWeak of (M - hellhound):
	say "[BigNameDesc of M] seems too injured to keep going for too much longer!".

Hellhound ends here.

