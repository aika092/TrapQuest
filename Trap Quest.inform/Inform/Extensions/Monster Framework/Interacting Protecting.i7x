Interacting Protecting by Monster Framework begins here.

To compute friendly boredom of (M - a monster):
	compute default friendly boredom progress of M.

To compute default friendly boredom progress of (M - a monster):
	increase the friendly boredom of M by 1;
	if M is not caged and a random number from 10 to 30 < the friendly boredom of M and the player is not in danger, compute default friendly boredom of M.

To compute default friendly boredom of (M - a monster):
	compute christmas gifting of M;
	bore M for 150 seconds;
	if M is in the location of the player, say BecomesBoredFlav of M.

To compute interaction of (M - a monster):
	let N be a random monster penetrating a body part;
	if M is submission-assisting:
		if N is monster:
			compute submissive assistance of M with N;
		otherwise:
			compute protection of M;
			now M is not submission-assisting;
	if M is undefeated and M is not caged, compute protection of M.

To compute protection of (M - a monster): [You can define this for your monster if you want it to act hugely differently]
	if the player is in danger:
		let X be M;
		let LX be the list of combative monsters;
		if debugmode > 1, say "combative monsters: [LX].";
		now X is entry 1 in LX;
		if the player is flying:
			distract M;
		otherwise if X is M:
			say "BUG - [NameDesc of M] tried to protect the player (flagged as in combat) but somehow found itself as the most reasonable target...";
		otherwise if X is seduced: [monsters don't get involved or keep attacking enemies while you're seducing]
			do nothing;
		otherwise:
			if debugmode > 1, say "calling protection of [MediumDesc of M] against [MediumDesc of X].";
			compute M protecting against X.

To compute (M - a monster) protecting against (X - a monster):
	if debugmode > 1, say "called protection of [MediumDesc of M] against [MediumDesc of X].";
	compute M default protecting against X.

To compute (M - a monster) default protecting against (X - a monster): [Default protection if not defined for the monster]
	if debugmode > 1, say "called default protection of [MediumDesc of M] against [MediumDesc of X].";
	if the player is upright and M is intelligent and M is unleashed and M is guardian:
		compute M standard fighting against X;
	otherwise:
		compute default protecting of M.

To compute (M - a monster) standard fighting against (X - a monster):
	if debugmode > 1, say "called standard fighting of [MediumDesc of M] against [MediumDesc of X].";
	let R be a random number between 7 and 15;
	let N be (the difficulty of M + R) / (R + 1); [usually 1, sometimes more depending on difficulty]
	compute X receiving N damage from M;
	if M is guardian, FavourDown M.

To compute default protecting of (M - a monster):
	if M is intelligent:
		if the player is upright and M is ally:
			say "[one of][BigNameDesc of M] looks hesitant, as if [he of M] is not sure what to do.[or][BigNameDesc of M] clenches [his of M] fists, clearly rooting for you.[or][BigNameDesc of M] nods with interest, as if impressed by your performance.[or][BigNameDesc of M] holds [his of M] breath. [big he of M] looks genuinely concerned for your safety.[or][BigNameDesc of M] watches with keen interest.[cycling]";
		otherwise if M is ally:
			if the player is immobile:
				say "[BigNameDesc of M] closes [his of M] eyes and looks away.";
				distract M;
				compute mandatory room leaving of M;
		otherwise:
			say "[one of][BigNameDesc of M] watches, seemingly unconcerned by your situation.[or][or][BigNameDesc of M] nods with interest, as if rating your performance.[or][or]Your actions appear to interest [NameDesc of M], who purses [his of M] lips as if unsure if your heart is really in this.[or][or][BigNameDesc of M] seems mildly surprised by your actions, but shrugs, not wishing to judge you.[or][or][BigNameDesc of M] shakes [his of M] head, as if surprised by your behaviour.[or][or][BigNameDesc of M] looks away, as if embarrassed by your choice of actions.[cycling]";
	otherwise:
		say "[one of][BigNameDesc of M] watches, seemingly not noticing your situation.[or][BigNameDesc of M] appears not to have noticed what's going on![or][BigNameDesc of M] is looking the other way, and doesn't see your humiliating situation.[or][BigNameDesc of M] seems confused by your actions.[or][BigNameDesc of M] simply watches, waiting. It's a little embarrassing, and you try to tell yourself that what you're doing is perfectly normal, really. Besides, it's not like [NameDesc of M] cares. Right?[cycling]".

To compute submissive assistance of (M - a monster) with (N - a monster):
	if N is penetrating face:
		compute oral assistance from M with N;
	otherwise if N is penetrating breasts:
		compute boobs assistance from M with N;
	otherwise if N is penetrating vagina:
		compute vaginal assistance from M with N;
	otherwise if N is penetrating asshole:
		compute anal assistance from M with N;
	otherwise:
		compute generic assistance from M with N;

[d = dominant, s = submissive]
To compute oral assistance from (S - a monster) with (D - a monster):
	if S is unfriendly:
		if D is male:
			say "[if D is intelligent][line break][speech style of D]'You! Fuck my [DickDesc of D] with [his of the player] mouth.'[roman type][line break][end if][BigFuckerDesc of S] holds your head, forcing you back and forth like a living onahole.[line break][if the player is able to make sounds][line break][variable custom style][muffled sounds][roman type][line break][end if]You choke and splutter.";
			if the throating of D is 0, now the throating of D is 1;
		otherwise:
			say "[BigFuckerDesc of S] holds your head, preventing you from pulling up for air as [FuckerDesc of D] grinds on your face.";
			FatigueUp 5;
	otherwise:
		if D is male and a random number between 1 and 2 is 1:
			say "[BigFuckerDesc of S] kneels next to you, [one of]holding [his of S] mouth open, allowing [NameDesc of D] to fuck your mouth and [hers of S] alternately[or]holding [FuckerDesc of D]'s thighs as [he of S] noisily [if (D is presenting as female and futanari fetish is 2) or full-lady fetish is 1]munches [FuckerDesc of D]'s box[otherwise]polishes [FuckerDesc of D]'s scrotum[end if][or]licking the exposed parts of [FuckerDesc of D]'s shaft[or]holding your hair back[in random order].";
			if the sex-length of D > 1, decrease the sex-length of D by 1;
		otherwise:
			compute boobs assistance from S with D.
		
	
To compute boobs assistance from (S - a monster) with (D - a monster):
	if a2m fetish > 1:
		say "[BigNameDesc of S] [one of]submissively[or]diligently[or]quietly[or]obediently[or]greedily[at random] [one of]tongues[or]eats out[in random order] [NameDesc of D][']s asshole";
	otherwise:
		if D is male and (lady fetish is not 1 or futanari fetish is 1), say "[BigNameDesc of S] [one of]submissively[or]diligently[or]quietly[or]obediently[or]greedily[at random] [one of]licks[or]sucks on[as decreasingly likely outcomes] [NameDesc of D]'s [one of]balls[or]testicles[or]scrotum[as decreasingly likely outcomes].";
		otherwise say "[BigNameDesc of S] [one of]submissively[or]diligently[or]quietly[or]obediently[or]greedily[at random] [one of]tongues[or]eats out[in random order] [NameDesc of D][']s pussy.";
	if the sex-length of D > 0, decrease the sex-length of D by 1.

To compute vaginal assistance from (S - a monster) with (D - a monster):
	if a random number between 1 and 2 is 1 and S is not unfriendly:
		say "[BigFuckerDesc of S] kneels [one of]over you, holding [his of S] mouth open, allowing [NameDesc of D] [if D is male]fuck[otherwise]abuse[end if] your [vagina] and [his of S] face alternately.[or]next to you, periodically slurping your juices off [FuckerDesc of D]'s [DickDesc of D] as [he of D] [if D is male]fucks[otherwise]uses[end if] your [vagina].[in random order]";
		if the sex-length of D > 0, decrease the sex-length of D by 1;
	if a random number between 1 and 2 is 1 and S is female and lady fetish < 2:
		say "[BigNameDesc of S] kneels over you, holding [his of S] ass cheeks open, allowing [NameDesc of D] to fuck your [vagina] and [hers of S] alternately.";
		if the sex-length of D > 0, decrease the sex-length of D by 1;
	otherwise:
		compute generic assistance from S with D.

To compute anal assistance from (S - a monster) with (D - a monster):
	if a random number between 1 and 2 is 1:
		if S is not unfriendly:
			if a2m fetish > 1, say "[BigFuckerDesc of S] kneels [one of]over you, holding [his of S] mouth open, allowing [NameDesc of D] [if D is male]fuck[otherwise]abuse[end if] your [asshole] and [his of S] face alternately.[or]next to you, allowing [FuckerDesc of D] to periodically pull out and [if D is male]fuck[otherwise]use[end if] [his of S] face.[in random order]";
			otherwise say "[BigFuckerDesc of S] kneels [one of]over you, periodically adding spit for extra lube as [NameDesc of D] to abuses your [asshole] and [his of S] face alternately.[or]next to you, periodically leaning in and spitting between your asscheeks to add extra lube for [NameDesc of D].[in random order]";
		otherwise:
			say "[BigNameDesc of S] kneels over you, holding your cheeks open so [NameDesc of D] can [if D is male]fuck your [asshole] even harder[otherwise]ruin your [asshole] even more[end if]!";
			ruin asshole;
		if the sex-length of D > 0, decrease the sex-length of D by 1;	
	otherwise if a random number between 1 and 2 is 1 and S is female:
		say "[BigNameDesc of S] kneels over you, holding [his of S] ass cheeks open, allowing [NameDesc of D] to fuck your [asshole] and [if lady fetish is 1][hers of S][otherwise][his of S] [asshole][end if] alternately.";
		if the sex-length of D > 0, decrease the sex-length of D by 1;
	otherwise:
		compute generic assistance from S with D.

To compute generic assistance from (S - a monster) with (D - a monster):
	if D is unfriendly and S is unfriendly:
		say "[one of][BigNameDesc of S] kisses [NameDesc of D] passionately, slapping your [BreastDesc] roughly as [he of S] does for good measure, purposefully hurting you.[or][line break][speech style of D]'You! Slap [him of the player]. HARD.'[roman type][line break][BigNameDesc of S] looks at you and hesitates for only a brief moment, before bringing [his of S] hand powerfully across your cheek. It stings painfully![in random order]";
		PainUp 1;
	otherwise:
		say "[one of][BigNameDesc of S] kisses [NameDesc of D] passionately, groping [his of D] [ChestDesc of D] for good measure.[or][BigNameDesc of S] allows [NameDesc of D] to grope [him of S], passionately kissing [him of D] as [he of D] does.[in random order]";
		if the sex-length of D > 0, decrease the sex-length of D by 1.

Interacting Protecting ends here.
