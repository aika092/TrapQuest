Fairy by Monster begins here.

A fairy is a kind of monster.  A fairy is usually woods dwelling.  A fairy is usually intelligent.  A fairy is usually father material.  A fairy is usually airborne.

Figure of fairy is the file "fairy1.png".  Figure of diaper fairy is the file "fairy2.png".

The printed name of fairy is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style][monster-adjective of item described] fairy[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".  The description of fairy is usually "[FairyDesc]".

A fist sized fairy is a kind of fairy.  There is 1 fist sized fairy.
The printed name of fist sized fairy is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]fist sized fairy[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".[possible switch into variation of normal fairy?]  The text-shortcut of fist sized fairy is "ffa".
A mischievous fairy is a kind of fairy.  There is 1 mischievous fairy. 
The printed name of mischievous fairy is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]mischievous fairy[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".  The text-shortcut of mischievous fairy is "mfa".
A cheeky fairy is a kind of fairy.  There is 1 cheeky fairy.
The printed name of cheeky fairy is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]cheeky fairy[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".  The text-shortcut of cheeky fairy is "cfa".
A giggling fairy is a kind of fairy.  There is 1 giggling fairy.
The printed name of giggling fairy is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]giggling fairy[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".  The text-shortcut of giggling fairy is "gfa".
A playful fairy is a kind of fairy.  There is 1 playful fairy.
The printed name of playful fairy is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]playful fairy[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".  The text-shortcut of playful fairy is "pfa".

To say FairyDesc:
	if diaper quest is 1:
		if images visible is 1, display the figure of diaper fairy;
		say "A fairy";
	otherwise:
		if images visible is 1, display the figure of fairy;
		say "A tiny [if the item described is blue fairy]blue[otherwise]pink[end if] skinned woman, just about twice the size of your fist.  She has four wings, [if the item described is blue fairy]long flowing blue[otherwise]cropped pink[end if] hair, and is completely naked.  Her breasts are big for her size, probably about a D cup for a normal sized woman, and her [if pregnancy fetish is 1]heavy, pregnant[otherwise]large, full[end if] belly doesn't seem to slow down her erratic, unpredictable movements at all.".

To set up (M - a fairy):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 1;
	now the health of M is the maxhealth of M.

To decide which number is the maxhealth of (M - a fairy):
	decide on 1 + (the difficulty of M * (1 + game difficulty)).

This is the spawn initial fairy rule:
	while the number of alive fairies < 2:
		let M be a random off-stage fairy;
		summon M in the woods.
The spawn initial fairy rule is listed in the setting up woods monsters rules.

Definition: a fairy (called M) is blocker:
	decide no.

To say PregGrowth of (M - a fairy):
	say "the fairy's [one of][child][or]magical gift[as decreasingly likely outcomes]".

To compute labour to (M - a fairy):
	If M is regional and M is alive:
		compute pregnancy clothing displacement;
		say "[PregFlav][if the father is in the location of the player]The [father][otherwise if M is the father]The [father] appears almost as if on cue!  She[otherwise if M is in the location of the player]The [M][otherwise]A [M] appears almost as if on cue! She[end if] lands on your bloated belly, giggling in delight.  [if M is in the location of the player]Your belly begins to glow with a strong pink hue, as if there is a giant pink light-bulb inside of it.  As you feel the head start to emerge, the fairy goes into an orgasmic spasm - watching your birthing is making her cum!  You slowly give birth to the human baby girl as the fairy makes sexual sounds and furiously fingers herself above your head.  [end if][if bukkake fetish is 1 and M is in the location of the player]The fairy's projectile squirt douses your face and chest like a powerhose as she climaxes, forcing you to cough and splutter as you push the rest of the baby out of your [vagina].[end if][if M is not in the location of the player]She stays sitting on your belly, stroking it, as you painfully push the newborn out of your [vagina].  Finally your ideal is over, and after a final loving pat, the fairy takes flight.[end if][line break]";
		if image cutscenes is 1:
			if M is in the location of the player, display figure of fairy cutscene 1;
			otherwise display figure of fairy cutscene 2;
		say "[one of]Just as you think things can't get any weirder, the fairy flies down and kisses the baby on the cheek.  This causes your new daughter to sprout wings, her skin turns pink, and she starts giggling.  You watch stunned as your new fairy daughter starts flying - she goes up into the sky and out of view.[or]Just like last time, the fairy flies down and kisses the baby on the cheek, transforming her into a fairy.  Your new fairy daughter flies up into the sky and out of view.[stopping][roman type][line break]";
		let R be a random off-stage glittering rose;
		let T be a random womb diagram tattoo;
		if R is actually summonable and (M is the father or M is mating):
			say "The glitter seems to coalesce from the air around you, forming itself into rose-shaped bow, which settles neatly on your head.";
			summon R cursed;
		otherwise if there is a worn tattoo and T is actually summonable:
			say "Looking down, you see that you have a new tattoo on your crotch - it's a diagram of a womb!";
			summon T;
		otherwise:
			say "You can't help feeling like it would better to just forget about getting out of this game and just have fun getting pregnant.";
			DexUp 1;
			IntDown 1;
		if M is not the father, now M is the father;[She may not have been the one to impregnate you, but she still "delivered" the baby!]
	otherwise if the player is in woods:
		let F be a random regional fairy;
		if F is not monster:
			now F is a random off-stage fairy;
			summon F in the woods;
			set up F;
		compute labour to F;[any living fairy can deliver a fairy baby]	
	otherwise:
		Delay Labour.

Part 1 - Perception

Definition: a fairy (called M) is uniquely unfriendly:
	if the boredom of M <= 0, decide yes;
	if the pregnancy of the player > 0, decide no;
	decide no.

To compute perception of (M - a fairy):
	now M is interested;
	say "The [M] giggles and focuses her eyes on you[if the player is sluttily dressed], even though she's naked herself[end if].  [if M is unfriendly]She starts flying towards you...[otherwise]She doesn't seem aggressive right now.[end if]";
	if image cutscenes is 1, display interaction of M.

To display interaction of (M - a fairy):
	display figure of fairy interact 1.

To compute DQ perception of (M - a fairy):
	now M is interested;
	say "The [M] giggles and focuses her eyes on you.  [if M is unfriendly]She starts flying towards you...[otherwise]She doesn't seem aggressive right now.[end if]".
	
To make (M - a fairy) expectant:
	do nothing.

Part 2 - Misc Flavour

To say SummoningFlav of (M - a fairy):
	if the location of the player is Woods30, say "Glittering embers of light slowly fall from the sky above the statue, swirling around its stony form as they converge just below its belly. A [printed name of M] emerges from a puff of smoke, giggling uncontrollably as she massages her distended belly.";
	otherwise say "You hear some playful high pitched giggling.".

To say MonsterOfferAcceptFlav of (M - a fairy) to (T - a thing):
	if M is unfriendly:
		say "The [M] giggles.  [speech style of M]'[if the bartering value of T for M + the favour of M > the aggro limit of M]For me?  Wee, thank you!  Okay, I'll leave you alone for a while.  But I get bored so quickly...'[otherwise]Haha, okay, I'll leave you alone for a little bit then.'[end if][roman type][line break]";
	otherwise:
		say "The [M] seems elated.  [speech style of M]'Wow, thank you so much!  It's like Christmas!'[roman type][line break]".

To say GroundPeeReaction of (M - a fairy):
	say "[speech style of M]'Tee-hee, you're such a naughty minx!'[roman type][line break]".

To compute enema floor reaction of (M - a fairy):
	FavourDown M;
	humiliate 200;
	if player-squatting is 1, humiliate 500;
	say "[EnemaFloorReactionFlav of M]".

To say EnemaFloorReactionFlav of (M - a fairy):
	say "The [M] [if M is interested]seems to by entertained by the noises your [asshole] is making[otherwise]turns and laughs at you[end if].  [speech style of M]'O-M-G, you are so naughty!!!'[roman type][line break][if the humiliation of the player < 25000][one of]You turn a bright shade of red[or]You blush brightly with shame[or]You shiver with self-consciousness[or]You turn red-faced with shame[in random order].[end if]".

Part 3 - Protection

To compute protection of (M - a fairy):
	if the boredom of M <= 0:
		say "Suddenly a naughty grin appears on the face of the [M].  It looks like she's bored of being friendly..."; 
	otherwise if the player is in danger:
		let X be M;
		repeat with U running through dangerous monsters in the location of the player:
			now X is U;
		if the player is flying:
			deinterest M;
		otherwise if X is M:
			say "";
		otherwise:
			compute M protecting against X.
	
To compute (M - a fairy) protecting against (X - a monster):
	if the player is monster stuck:
		say "[one of][or][or]The [M] giggles, seemingly very entertained.[or][or][cycling]";
	otherwise if X is not fairy and the pregnancy of the player > 0:
		compute X receiving 2 damage from M;
	otherwise if X is fairy:
		say "[one of]The [M] giggles, seemingly very entertained.[or][or][cycling]";
	otherwise if M is guardian:
		compute X receiving 2 damage from M;
	otherwise:
		say "[speech style of M]'Well it's been fun, but I better buzz off!'[roman type][line break]The [M] flies off at the first sign of trouble.";
		distract M;

To say AllyDamageFlav of (M - a fairy) on (X - a monster):
	say "[speech style of M]'[if the pregnancy of the player > 0]Don't harm the baby!'[otherwise]Don't hurt my friend!'[end if][roman type][line break]The [M] darts around the [X], firing little bolts of magic.".

Part 4 - Combat

To compute boredom reduction of (M - a fairy):
	if the boredom of M > 0:
		decrease the boredom of M by seconds;
		if the boredom of M <= 0:
			now the boredom of M is 0;
			if M is interested and M is unfriendly and M is in the location of the player, say "The [M]'s eyes narrow, and she suddenly takes an aggressive stance, grinning.  Looks like she's gotten bored of just hanging around...".

Section 1 - Attack

To say MovementBlock of (M - a fairy):
	say "[one of]The [M] flies rapidly around your head, blocking your path.[or]The [M] flies rapidly around your head, distracting you and blocking your path.[or]The [M] flies rapidly around your head, disorienting you and locking your path.[or]The [M] flies rapidly around your head, confusing you and blocking your path.[in random order]".

To compute submission reaction of (M - a fairy):
	do nothing; [The fairy is not delayed by the player's actions]

The fairy attack rules is a rulebook.  The fairy attacks then gets bored rules is a rulebook.  The priority attack rules of a fairy is usually the fairy attacks then gets bored rules.

This is the fairy attacks then gets bored rule:
	let M be current-monster;
	follow the fairy attack rules;
	if the rule succeeded: [Should always happen with the current code]
		if M is not grabbing the player:
			say "The [M] seems satisfied and loses interest in messing with you.";
			bore M for 120 seconds;
		rule succeeds.
The fairy attacks then gets bored rule is listed in the fairy attacks then gets bored rules.

This is the fairy doesn't want to have sex rule:
	if presented-orifice is not nothing, say "The [current-monster] giggles at your display.  [speech style of current-monster]'I don't know what you think I'm going to do to you, honey, but it certainly isn't that!  How would that even work?'[roman type][line break]".
The fairy doesn't want to have sex rule is listed first in the fairy attack rules.

This is the fairy plays diaper quest rule:
	if diaper quest is 1:
		let C be a random worn transformable clothing;
		if C is clothing and a random number between 1 and 3 > 1:
			say "The [current-monster] whizzes by, brushing against your [C] as she does!";
			potentially transform C;
		otherwise if there are worn heels and a random number between 1 and 2 is 1:
			compute fairy meddling on thighs;	
		otherwise:
			compute fairy meddling on vagina;
		satisfy current-monster;
		rule succeeds.
The fairy plays diaper quest rule is listed in the fairy attack rules.

This is the fairy tries to impregnate the player rule:
	if pregnancy fetish is 1 and there is a vine grabbing the player and the player is a faerie:
		say "The [current-monster] continues to [one of]whiz about underneath you[or]hover beneath your legs[at random], throwing glittering dust over the horny vines twisting through the soil.";
		rule succeeds;
	if the player is a faerie and the player is female and the pregnancy of the player is 0:
		let V be a random vine;
		now current-monster is grabbing the player;
		say "The [current-monster] whizzes between your legs, tossing a handful of glittering dust at the soil underneath you. She lands on your shoulders as several vines suddenly shoot out of the ground and seize you by the wrists and ankles! [speech style of current-monster]It must be awful walking around like that without a bun in your oven. Don't worry, I'll make sure you get knocked up! [roman type]";
		unless V is in the location of the player:
			now V is in the location of the player;
			now V is revealed;
			now the TrapNo of V is 0;
		now V is grabbing the player;
		rule succeeds;
	if pregnancy fetish is 1 and the player is female and the pregnancy of the player is 0 and the semen volume of vagina < 15 and the largeness of belly < 10 and a random number between 1 and 2 is 1 and the virgin of the player is 0:
		say "The [current-monster] whizzes past you, briefly brushing against your belly as she does.  She turns and smirks as your belly rumbles, and visibly glows pink as it swells in front of your eyes.";
		if image cutscenes is 1:
			if the largeness of belly > 5, display figure of fairy cutscene 7;
			otherwise display figure of fairy cutscene 3;
		let B be the largeness of belly;
		while the semen volume of vagina < 10 and the largeness of belly is B:
			now current-monster is penetrating vagina; [Required for pregnancy tracking]
			if the player is a faerie, WombFill 4;
			otherwise WombFill 1;
			now current-monster is not penetrating vagina;
		rule succeeds.
The fairy tries to impregnate the player rule is listed last in the fairy attack rules.

[!<TheFairyRitualRule>+

While the fairy is grabbing the player, vaginal sex is much more likely.

+!]
This is the fairy ritual rule:
	if there is a fairy grabbing the player, increase the desirability of vagina by 20.
The fairy ritual rule is listed in the pussy slut eligibility rules.

[!<TheFairyAnalRule>+

While the fairy is grabbing the player, anal sex is less likely.

+!]
This is the fairy anal rule:
	if there is a fairy grabbing the player, decrease the desirability of asshole by 5.
The fairy anal rule is listed in the butt slut eligibility rules.

This is the fairy tries to shrink the penis of the player rule:
	if pregnancy fetish is 1 and the player is male and the size of penis > min penis size and a random number between 1 and 2 is 1:
		PenisDown 1;
		say "The [current-monster] whizzes past you, briefly brushing against your crotch as she does.  She turns and smirks as your [player-penis] [Shrink]s into a [ShortDesc of penis].";
		rule succeeds.
The fairy tries to shrink the penis of the player rule is listed last in the fairy attack rules.

Definition: a body part (called B) is fairy targetable:
	decide no.
	
Definition: breasts (called XXX) is fairy targetable:
	now decideToSuckle is 0;
	[Selkie: yes if the player has recently lactated; or  probably yes if they have a lot of milk]
	if a random number between 1 and the milk volume of breasts > 5:
		now decideToSuckle is 1;
		decide yes;
	if earnings - last-lactated-time < 10 and the milk volume of breasts > 0:
		[Selkie: when I had this here instead of in the fairy-meddling-on-breasts function, it was triggering this text twice every time TQ decided what the fairy would target, even if she didn't end up deciding on the breasts.  I don't understand why it always produced a pair of them!
		say "The [current-monster][']s eyes light up, and she smacks her little lips. 'Mmm, I smell milky goodness!'";]
		now decideToSuckle is 1;
		decide yes;
	let B be a random worn bra;
	if B is a bra:
		if the size of B < max breast size and the size of B < 15, decide yes;
		decide no;
	if the player is not top heavy, decide yes;
	decide no.
	
To say FairyName: [assuming the current-monster is a fairy, we include that as a possibility.]
		say "[one of]fairy[or]pesky fairy[or][current-monster][or]tiny woman[or]darting fairy[at random]".

To compute fairy meddling on (XXX - breasts):
	let B be a random worn currently visible bra;
	[Selkie: Let the fairies mess with your lactation rate, by suckling.
	 It now does something more in the case where the player is a cowgirl!
	 Aika noted this would get a bit tedious after you've seen it a few times. My plan is to work in more variability. This may suffice...?]
	let fM be a random number from 1 to the milk volume of breasts;
	if decideToSuckle is 1:
		now decideToSuckle is 0;
		increase FairySuckled by 1;
		if fM > 7, now fM is 7;
		say "The [current-monster][']s eyes light up, and she smacks her little lips. [one of]Her tiny nose sniffs deeply, and she shuts her eyes for a moment in pleasure.[or]'Mmm, I smell milky goodness!'[or]'Ooh, a pretty cow for me to play with.'[or]'Yum, milk!'[or]'Mmm, milk!'[or]'Yum, milky goodness!'[at random]";
		if image cutscenes is 1, display figure of fairy cutscene 8;
		[Let's say the fairy is about size 7, so she can't drink more than that]
		let NipsWereNkd be 0; [This will be set to 1 if the player had their nipples already sluttily exposed. Not really used, but could be for some humiliating text.]
		let slashedSomething be 0;
		if bottom level lactation cover is nothing and random worn nipple covering clothing is nothing:
			[So this is the case of nipples uncovered: tempting targets]
			now NipsWereNkd is 1;
			say "The [current-monster] [one of]notices your naked teats[or]eyes your breasts[or]eyes focus on your chest[or]narrows her eyes[at random], and purses her lips as if sucking. ";
			if FairySuckled is 1:
				say "Ooh - you feel both your nipples suddenly spring even more erect than they were, like they're just [italic type]begging[roman type] for some attention!";
			otherwise if FairySuckled is 2:
				say "You suddenly feel an odd sensation, a kind of [italic type]tension[roman type], then a sensation of wetness at your nipples, and a tiny milky bead oozes out from each, glistening at the dark maroon tips.  She darts forward...";
			otherwise if FairySuckled < 5:
				say "You once again feel that odd, tingling [italic type]tension[roman type], then cool wetness, as tiny milky beads ooze forth from each, glistening temptingly at the dark maroon tips.  She licks her lips and darts forward...";
				[So this next "Oh no!" bit only happens on the 3rd and 4th time - after that, it's become normal for the player.  It's intended to fit into the idea  that you/your nipples are being conditioned to perk straight up, sitting up to beg like well-trained puppies begging for attention, and the feeling of milk beading beneath your clothing, as soon as you realise the fairy intends to drink from you again!]
				say "Oh, no - not again!  This time, it feels almost like there's an invisible thread connecting your nipples to the fairy's lips: and she's just tugged on it!  They [one of]stiffen and perk up[or]stand up to attention[or]swell and darken, standing erect[at random].";
			otherwise:
				if the milk taste addiction of the player > 8:
					say "You feel the familiar tingly [italic type]tension[roman type], then wetness as milk starts beading and dripping from each.  The drops gleam and glisten, contrasting deliciously with the dark maroon tips of [italic type]your[roman type] [milk]-laden boobies.  You feel an exciting quiver in your loins as she swoops down, and you take a deep breath - bracing yourself for what's about to come.  You're not thrusting them up for her!  Really, you're not!";
				otherwise:
					say "You feel the familiar tingly [italic type]tension[roman type], then wetness as milk starts beading and dripping from each.  The drops gleam and glisten against your dark maroon tips, beckoning her closer.";
			[This next bit shows that you or your nipples are being conditioned to perk straight up, sitting up to beg like well-trained puppies begging for attention, and the feeling of milk beading beneath your clothing, as soon as you realise the fairy intends to drink from you again!]
			if FairySuckled is 1:
				say "[variable custom style]Why'd they just do that?[roman type] You look from her puckered mouth, down to your quivering nipples.";
			otherwise if FairySuckled < 4:
				say "[one of]For a moment you have the weird thought[or]It really does seem like[stopping] she's training your nipples to sit up and beg when she makes her attentions clear!";
			otherwise if FairySuckled < 5: [After FairySuckled > 3, randomly on a 1 in 2? chance]
				say "You know what comes next, and you feel the tips of your [BreastDesc] tighten even further.";
			otherwise if FairySuckled is 6:
				say "Damn it!  She [italic type]has[roman type] trained your nipples to sit up and beg!";
			otherwise if FairySuckled > 7:
				say "Your trained nipples perk up, to order!";
		otherwise:  [This is the case were she has to attempt to deal with your nipple covering(s).]
			say "She darts forward, and [if FairySuckleSlashes is 0]you suddenly notice her tiny hands are tipped by [otherwise]you just [italic type]know[roman type] she can smell your lovely [milk].  [one of]Your nipples are already perking up.[or]Your traitorous nipples perk up.[at random]  Once again your eyes are drawn to her [end if]wickedly-sharp little nails!  With amazing and horrifying speed, fingers outstretched, she swoops towards your nipples, moving so fast you don't dare even twitch, for fear of what might happen if you do!";
			repeat with nC running through worn nipple covering clothing:
				if nc is milking flappable: [Fairies love milk so much they don't ask, they just rudely expose the player!]
					say "The [FairyName] [one of]nimbly opens[or]quickly unlatches[or]frees up your teats from[or]slips your nipple free from[or]whips open[or]draws aside the covering of[at random] your [printed name of nC]";
				otherwise if nC is top-displaced or nC is nipple exposing or nC is fully exposing:
					say "The [FairyName] [one of]smirks[or]grins[or]sniggers[at random] at the [one of]lewdly-[or]sluttily-[or]perkily-[or]mouth-wateringly [or]prominently [or]temptingly [at random]exposed nipples of your [printed name of nC]";
				otherwise if nC is top-displacable: [This means, CAN be displaced, yes?]
					say "The [FairyName] [one of]swiftly tugs[or]pulls[or]draws[or]jerks[or]slips[or]shifts[or]displaces[at random] your [printed name of nC] [one of]aside[or]aside[or]to one side[or]out of the way[or]askew[at random].";
					now nC is top-displaced; 
				otherwise if nC is metal: [I think metal clothing should be invulnerable to fairy fingernails, sharp as they are.]
					say "The [FairyName] slashes futilely at your [nC], her [one of]fiendishly sharp[or]wicked[or]razor sharp[or]scary[at random] nails grating against and scratching the tough material, but finally she gives up, looking frustrated and annoyed!";
					now decideToSuckle is 1; [This is my weak-ass attempt to make her more likely to try again next time: unfortunately, I don't think it will work.]
					stop; [Selkie: I believe this is the right way in i7 to exit a function early, if it returns no value. (break/next are loop controls.) '"Stop" is the plain-jane return statement. It isn't used much, partly because of some other synonyms for return, and partly as fallout from the rules-based structure of the language.']
				otherwise if nC is nipple covering or nC is not fully exposing: [she'll rip it unless it's no protection or has already been damaged: which we take to mean that it exposes the nipples]
					say "Her [one of]flashing nails[or]tiny but scary claws[or]razor-sharp fingernails[or]oyster-shell sharp little crescent nails[at random] [one of]carve[or]cut[or]slice[or]magically slide through[at random] your [nC], exposing your nipples to her [one of]tender mercies[or]gaze[or]hungry gaze[or]eager mouth[at random].[line break]";
					now nC is nipple exposing; [bras and top coverings are considered nipple exposing or nipple covering. protection or no protection indicates whether they're damaged]
					now nC is fully exposing; [I think this is the correct way to record that it's been damaged]
					now slashedSomething is 1;
					[###Selkie: Given I've bypassed the damage clothing function, maybe it's okay to just add a little damage directly this way?]
					increase the damage of nC by 2;
			if slashedSomething is 1:
				increase FairySuckleSlashes by 1;
		if FairySuckled is 1 and slashedSomething is 1:
			say "You blink in shock - in under a second, she's ruined your clothing - and exposed your nipples![line break][if the player is able to speak][variable custom style]'Hey, wait just a min-'[roman type] you start to cry out, but it[otherwise if the player is able to make sounds][variable custom style][muffled sounds][roman type] you try to complain, but your struggle to make yourself understood just seems to encourage her to mess with you!  Uh oh, it[otherwise]It[end if] seems she hasn't finished...";
		otherwise:
			[Okay, the player knows the drill now.  This is probably a good place to introduce some more variability, to add interest.
			If the player is submissive, maybe have them hold up their breasts, offering them up as if not resisting.
			Or if they're a bimbo, giggle and jiggle them, hoping the cute fairy will treat you to another wonderful suckling experience.
			If nipples could be enlarged or made more sensitive, those would be other good bits of variability to throw in here.
			And with all that said, if there's a second fairy, how hot would it be if one decided that your clit was due for a similar experience; or if male, then your dick, riding up and down it, their legs and arms clutched around it and their wings buzzing madly, making them slide up and down, while vibrating powerfully at the same time!
			Though come to think of it, the 2nd fairy could target your other nipple; you could be ravaged by three fairies at the same time!]
			if slashedSomething is 1: [This is better than "NipsWereNkd is 0", since that can be true when she had merely displaced clothing]
				say "[if FairySuckleSlashes is 1]She's just[otherwise]She's done it again: [end if] ruined your clothing - and exposed your nipples! [italic type] Ooh - yum, I can't wait![roman type][line break]";
			say "[if the player is able to speak] [variable custom style][one of]'What, you think I'm just some helpless milk dispenser?  What gives you the right to-'[or]'Stop treating me like my boobs are drinking fount-'[or]''Look, would you just stop for a min-'[or]'Oh, god, do you have to do this ag-'[or]'Okay, go ahead, drink up!  It's not like I could st-'[stopping][roman type][otherwise]You make some squeaking moans, as if you're trying to say [variable custom style]'No, please, don't!'[roman type], but really, you can hardly wait![end if][line break]";
			if delicateness of the player > 10:
				say "These fairies are really scary when they've been driven mad by milk-lust!  You don't even [italic type]consider[roman type] trying to resist: the thought of what those [one of]frightening[or]awful[or]razor-sharp[at random] claws could do to your [BreastDesc], let alone to your tender and swollen nipples, doesn't even bear thinking about!  You meekly cup and hold your boobies up to make it easier for your fairy milking-master to use you however she sees fit.  [variable custom style]She knows what's best for me![roman type][line break]";
				if FairySuckled > 3 and the intelligence of the player > 6: [they're not stupid]
					say "You're starting to think all this forced lactation and suckling is stimulating your breasts, making them produce even more [milk] than they would have.  [variable custom style]But that's fair enough - at least I'm being a *productive* member of this game.  Tee hee![roman type][line break]";
			otherwise if the bimbo of the player > 10:
				say "With a tremor of excited anticipation, you hold your [BreastDesc] up so the sexy little fairy knows you're ready for any attention she cares to give your swollen and eager nipples!";
		if there is a worn cow piercing:
			say "[variable custom style]'Ooh!  I can smell yummy milk from the big, slow cowgirl.  Does the sexy cowgirl need milking?  Yes she does, doesn't she?  I bet she's just dying to moo for me and let me milk her!'  [roman type]She gives your heavy nipple ring a sharp tug and a twist, and your poor,  tender nub shoots a delicious mix of pain and thrilling pleasure right into your tummy, where it flares out in a shockingly intense sensation that surges into your groin.  You blush at the way she's taunting you, but can't help feeling even more aroused!";
			arouse 200;
			humiliate 150; [Is that about right?]
		otherwise if there is a worn nipple chain:
			say "She tugs sharply on your heavy nipple ring, sending a thrill of pain-tipped pleasure surging through you.  And the connecting chain jerks and tweaks your other nipple, doubling the sensation, and making your [BreastDesc] jiggle.  She lands on the chain, her wings buzzing as she dances up it, shaking the chain so it jangles and tugs [italic type]both[roman type] your throbbingly-erect nubs, and then grabs the chain and hauls herself closer to the milk-beaded tip, licking her lips.  It feels [italic type]so[roman type] good!  You bite your lip, knowing you shouldn't be enjoying the feelings of these heavy piercings in your swollen nipples!";
			arouse 400;
			humiliate 250; [About right?]
		if FairySuckled is 1:
			say "She flutters toward your sensitive and milk-leaking nipple with a wicked gleam in her eye.  You're about to swat her away, when her mouth gapes impossibly open and her lips somehow stretch as her head plunges down to engulf your tender tip!  A shock of pleasure stuns you at her sudden, fierce suction.  Your eyes widen and your toes curl, and it's all you can do to stay on your feet.  You're not sure where the milk is [italic type]going[roman type], but whatever's happening, you can't think properly: it's like you've been tasered with some kind of pleasure-gun!  You sway, slightly, lost in the sensations...";
		otherwise:
			say "With a knowing grin, her lips gape over your tender tip and engulf it again!  The shock of pleasure from her fierce suction is as intense as you remember, and your toes curl.  It's all you can do to stay on your feet.  You're swamped once again by the thrilling feelings.  [one of][variable custom style]God, she's like my own sexy breast pump![roman type][line break][or][variable custom style]I could get used to this![roman type][line break][or][variable custom style]Does she think she can train me like I'm one of Pavlov's dogs?[roman type][line break][or]The gentle tugging on your nipple, and the feel of [milk] moving inside your breasts, flowing through it and out your nipple, makes your groin tingle.[or][variable custom style]Gosh, she's good at that![roman type][line break][or][variable custom style]God, she's poking her tiny tongue into the opening![roman type][line break][at random]";
		if image cutscenes is 1, display figure of fairy cutscene 9;
		say "[if FairySuckled is 1]Abruptly[otherwise if FairySuckled < 4]Once again[otherwise if FairySuckled < 6]All too soon[otherwise]As usual[end if], she releases your nipple, which [one of]springs forth from her mouth, quiveringly erect and with an angry red colour[or]pops free, achingly erect, and vividly red[or]springs up, firm and erect and tender, and an angry red[at random].[line break]";
		if FairySuckled is 1:
			say "But before you can properly gather your wits, she darts to your other nipple! This time the look in her eye is more than just a wicked gleam.  It's perfectly clear she knows that [italic type]you[roman type] know just how much under her tiny thumb she has you, once she has your nipple in her mouth. But while you're still forming that thought, her eyes burn into yours as if to say [italic type]'You may be bigger than me, but you're putty in my tiny hands.'[roman type]  She latches onto your other poor teat and your eyes roll helplessly back in your head - again!";
		otherwise:
			if sex addiction of the player > 8 :
				say "You know it will feel so good that you don't really even [italic type]try[roman type] to stop her swooping in.";
			otherwise if delicateness of the player > 10 :
				say "You find yourself biting your lip, and holding it up slightly to her, offering yourself.";
			say "Her grin widens as she darts to your other nipple, which shivers in eager anticipation of its imminent fate.  The knowing look in her eyes tells you how much she enjoys having you under her tiny thumb.  Her eyes burn into yours: [italic type][one of]'Yes, putty in my hands.'[or]'That's my pretty cow-dolly.'[or]'Hello, Mommy.'[or]'Go on, be a good milk dispenser.'[or]'I should call you Buttercup!'[or]'Ooh, who's getting to be well-trained?'[or]'That's a good milk-cow.'[or]'I know you want me to suck on you.'[or]'Look how eager you are!'[or]'I know you love this![or]'Oh, look who can't wait?'[or]'Oh, my, look at them, standing up proud and glistening with milk for me!'[or]'Are your nipples getting bigger?'  She licks her lips.[at random][roman type]  Your eyes roll back in your head again as [one of]she fastens onto you![or]her mouth engulfs you![or] she starts suckling![at random]";
		if there is a worn cow piercing or there is a worn nipple chain:
			say "Her tiny hands are jerking at [italic type]this[roman type] nipple's piercing, even as her mouth stretches over your rosebud, and her lips press down right to the edge of the heavy metal as she begins sucking vigorously.  Between her suckling at your  tit, and her tugging at the piercing, small lightning bolts of pleasure jolt and judder through you.  You have the feeling that something a little magical just happened: your [BreastDesc] feel... [italic type]milkier[roman type].  Ooh - sexy!";
			arouse 100;
			increase the lactation rate of the player by 2; [Cowgirls get even milkier!]
		if FairySuckled is 1:
			say "When you regain your senses, the [current-monster] is fluttering smugly above you and just out of reach, watching you as if considering doing more.  Both your nipples now feel like signal flares crying out for you or [italic type]anyone[roman type] to... No! You're worried that if anything touched them right now, you'd come on the spot.";
		otherwise if FairySuckled is 2:
			say "Your breasts do feel like they've been drained a little, but at the same time, you can't help but wonder whether her feeding might somehow make your body think you're breastfeeding a child? [italic type]That wouldn't make me lactate even more... would it?[roman type][line break]";
		otherwise:
			say "[one of]Your breasts feel emptier, but you worry that her feeding is somehow making your body think you're breastfeeding a child! [italic type]Is she training me to lactate?[roman type][or]The [current-monster] belches prettily, watching you with satisfaction, and you feel a funny sort of [italic type]echo[roman type] ripple through the flesh deep inside your [BreastDesc].[at random][line break]";
		arouse 500;
		MilkDown fM;
		increase the lactation rate of the player by fM / 2;
		say "[if FairySuckled > 1]Once again, as you waken from the pleasure-daze, your breasts feel less swollen with [milk], but at the same time... maybe a bit more [italic type]tingly[roman type] inside?[otherwise]You're not sure how much time has passed, but apart from feeling like you've just been through some mind-blanking oxytocin high, nothing much seems to have changed. [italic type]At least my breasts aren't aching inside so much, any more![roman type][line break][end if]";
	otherwise if B is a bra:
		say "The [current-monster] whizzes past you, briefly brushing against your chest as she does.  She turns and smirks as you see your bra grow.";
		unless B is cursed, now B is cursed;
		increase the size of B by a random number from 1 to 2;
		if the size of B > max breast size, now the size of B is max breast size;
	otherwise:
		say "The [current-monster] whizzes past you, briefly brushing against your chest as she does.  She turns and smirks as your chest glows pink[unless the player is top heavy], and visibly swells in front of your eyes[end if].[if lactation fetish is 1]  Your now [BreastDesc] feel... active.[end if]";
		if the largeness of breasts < 3:
			if image cutscenes is 1, display the figure of fairy cutscene 10;
		otherwise if the largeness of breasts < 4:
			if image cutscenes is 1, display the figure of fairy cutscene 11;
		otherwise if the largeness of breasts < 5:
			if image cutscenes is 1, display the figure of fairy cutscene 12;
		otherwise if the largeness of breasts < 6:
			if image cutscenes is 1, display the figure of fairy cutscene 13;
		otherwise if the largeness of breasts < 7:
			if image cutscenes is 1, display the figure of fairy cutscene 14;
		otherwise if the largeness of breasts < 10:
			if image cutscenes is 1, display the figure of fairy cutscene 15;
		otherwise if the largeness of breasts < 12:
			if image cutscenes is 1, display the figure of fairy cutscene 16;
		otherwise:
			if image cutscenes is 1, display the figure of fairy cutscene 17;
		BustUp 2;
		if lactation fetish is 1:
			let H be a random off-stage cow ears;
			if H is actually summonable and a random number between 1 and 3 is 1:
				say "[bold type]A pair of fake cow ears materialise on your head.[roman type][line break]";
				summon H cursed;
				now the lactation-count of the player is 0;
			otherwise:
				increase the lactation rate of the player by a random number between 1 and 3.

Definition: hips (called XXX) is fairy targetable:
	if there is a worn undies, decide yes;
	if the thickness of hips < max ass size, decide yes;
	decide no.

To compute fairy meddling on (XXX - hips):
	let G be a random worn currently visible undies;
	if G is transformable clothing:
		say "The [current-monster] whizzes past you, briefly brushing against your [G] as she does.  ";
		potentially transform G;
		if G is worn:
			say "The [current-monster] looks confused, but just harrumphs.  ";
		otherwise:
			say "The [current-monster] looks at it and giggles.";
	otherwise:
		say "The [current-monster] whizzes past you, briefly brushing against your ass as she does.  She turns and smirks as your hips rumble, and visibly swell in front of your eyes.";
		if image cutscenes is 1:
			if the thickness of hips > 8:
				display figure of fairy cutscene 6;
			otherwise if the thickness of hips > 4:
				display figure of fairy cutscene 5;
			otherwise:
				display figure of fairy cutscene 4;
		AssSwell 1.

Definition: belly (called XXX) is fairy targetable:
	if the total fill of belly < 17 and max belly size > the largeness of belly, decide yes;
	decide no.

To compute fairy meddling on (XXX - belly):
	say "The [current-monster] whizzes past you, briefly brushing against your belly as she does.  She turns and smirks as your belly rumbles[unless there is a worn corset], and visibly swells in front of your eyes[end if].";
	now current-monster is penetrating asshole; [Required for semen source tracking]
	if weight gain fetish is 1 and the flesh volume of belly < 9, increase the flesh volume of belly by 2;
	otherwise AssFill 4;
	now current-monster is not penetrating asshole;
	if image cutscenes is 1:
		if the largeness of belly > 6, display figure of fairy cutscene 7;
		otherwise display figure of fairy cutscene 3.
Definition: face (called XXX) is fairy targetable:
	if the make-up of face < 3, decide yes;
	if the lips of face < 3 and current-monster is blue fairy, decide yes;
	decide no.

To compute fairy meddling on (XXX - face):
	say "The [current-monster] whizzes over your head, tossing a handful of glittering dust at your face.  She giggles as it settles on your cheeks, adding a new layer of makeup. [if current-monster is blue fairy and the lips of face < 2 + artificial enhancements fetish]Your face tingles as your lips grow thicker.[end if]";
	if current-monster is blue fairy, LipsUp 1;
	FaceUp 1.

Definition: hair (called XXX) is fairy targetable:
	if the raw largeness of hair < 9 and 0 is the number of worn headgear, decide yes;
	decide no.

To compute fairy meddling on (XXX - hair):
	say "The [current-monster] whizzes past you, briefly brushing against your hair as she does.  She turns and smirks as you feel your hair grow[if the redness of hair + the blondeness of hair + the brightness of hair < 9 and current-monster is blue fairy] and tingle as it changes color[end if].";
	if current-monster is blue fairy:
		if the brightness of hair < 3:
			HairBrightUp 1;
		otherwise if the blondeness of hair < 3:
			HairBlondeUp 1;
		otherwise:
			HairRedUp 1;
	HairUp 2.

Definition: thighs (called XXX) is fairy targetable:
	let H be a random worn heels;
	if H is heels:
		if the heel-height of H < 7, decide yes;
	decide no.

To compute fairy meddling on (XXX - thighs):
	let H be a random worn heels;
	say "The [current-monster] whizzes past you, briefly brushing against your [printed name of H] as she does.  She turns and smirks as you feel the height of your heels grow.";
	increase the heel-height of H by 1.

Definition: vagina (called XXX) is fairy targetable:
	if watersports mechanics is 1 and the latex-transformation of the player < 4:
		if there is a worn uncursed diaper or the bladder of the player < 20, decide yes;
	decide no.

To compute fairy meddling on (XXX - vagina):
	let D be a random worn uncursed currently visible diaper;
	if D is diaper and diaper quest is 0:
		say "The [current-monster] whizzes past you, briefly brushing against your [printed name of D] as she does.  ";
		potentially transform D;
	otherwise:
		increase the bladder of the player by 7;
		if the bladder of the player < 14, now the bladder of the player is 14;
		if the bladder of the player > 20, now the bladder of the player is 20;
		say  "The [current-monster] whizzes past you, briefly brushing against your waist as she does.  She turns and smirks[if the player is bursting] as you feel a sudden urgent need to pee[end if].".

[Selkie: a thought: this code looks (to my meagre understanding) like the fairies are pretty unstoppable. Unless you can kill them in one hit? But you could instead allow something like the maid's spray bottle to be especially effective, and able to prevent their attack that around, if you squirt them with it, and if you succeed twice in a row, perhaps have that drive them off?  And you might do a similar thing with a slap attack: "You swat at the fairy, and make contact, which seems to upset her!" - and maybe a couple of those could have them buzz off?  Just an idea.]
[Aika: Maybe we do need a more reliable way to deal with fairies.  Something like the spraybottle idea but accessible to any class (or at least most)]
This is the fairy tries meddling rule:
	let B be a random fairy targetable body part;
	if B is body part:
		compute fairy meddling on B;
		rule succeeds.
The fairy tries meddling rule is listed last in the fairy attack rules.

This is the fairy reduces stats rule:
	if a random number between 1 and 2 is 1:
		say "The [current-monster] whizzes past you, briefly brushing against your legs as she does.  She turns and smirks.  Your legs feel weak!";
		DexDown 1;
	otherwise:
		say "The [current-monster] whizzes past you, briefly brushing against your arms as she does.  She turns and smirks.  Your arms feel weak!";
		StrengthDown 1;
	rule succeeds.
The fairy reduces stats rule is listed last in the fairy attack rules.

Section 2 - Damage

To decide which number is the damage modifier of (M - a fairy):
	[Chance for the fairy to completely dodge the attack.  Increases with knees and kicks]
	if (a random number between 1 and the dexterity of the player) + (a random number between 1 and the dexterity of the player) < (the difficulty of M + (attack-type * 3) - 3), decide on (attack-damage * -1);
	decide on 0.

To compute damage of (M - a fairy):
	if the health of M > 0:
		if attack-damage > 0, say "The [noun] squeals in pain!";[you can easily kill this one. Come on.]
		now M is interested;
		anger M;
		now the boredom of M is 0;
	otherwise:
		compute death of M.

To compute unique death of (M - a fairy):
	let P be a random off-stage pink hair;
	say "The [noun] drops slowly to the ground, like a feather, where she disappears in a puff of smoke.";
	if P is pink hair:
		say "A clump of her [P] is left behind.";
		now P is in the location of the player;
		compute autotaking P.

To say damage-flavour of (N - a number) on (M - a fairy):
	if N is 0:
		say "The [M] flutters backwards, dodging your attack!  [if attack-type is 1][line break][otherwise][one of]Maybe leg based attacks are too unreliable to reach the [M]?[or][or][or][cycling][end if]";
	otherwise if N is 1:
		say "That felt extremely weak, you doubt it hurt much at all.";
	otherwise if N is 2:
		say "That felt quite weak, but hopefully it hurt a bit.";
	otherwise if N < 5:
		say "The [M] definitely felt that.  A respectable hit!";
	otherwise if N < 7:
		say "The [M] visibly recoils from the hit.  A [if critical is 1][bold type]critical hit[roman type][otherwise]strong hit[end if]!";
	otherwise if N < 9:
		say "Wow, you felt that connect with incredible force.  A super strong [if critical is 1][bold type]critical hit[roman type][otherwise]hit[end if]!";
	otherwise:
		say "POW!  Your attack is accompanied by a loud sound.  An almost impossibly strong [if critical is 1][bold type]critical hit[roman type][otherwise]hit[end if]!".

Part 4 - Conversation

Section 1 - Greeting

[Fairies use a custom to greet function, since their perception works differently than it does for most monsters, but while we're here, we can use the default functions for special pregnancy related stuff]

To compute talk option (N - 1) to (M - a fairy):
	if times-met is 0, now times-met is 1;
	let B be a random number from 1 to 4;
	let seduced be 0;
	if the player is seductive and B is 1:
		say "[BimboSeduce of M]";
		say "[BimboSeduced of M]";
		now seduced is 1;
	otherwise if there is a monster penetrating a fuckhole:
		if a random monster penetrating a fuckhole is unfriendly, say "[midDominanceGreeting of M]"; [is the player currently being dominated by another monster?]
		otherwise say "[InSexGreeting of M]"; [is the player currently having consensual sex]
	otherwise if the boredom of M > 100:
		say "[ToDominantGreeting of M]"; [To display right after "playtime." No "as partner greeting" yet.]
	otherwise if the pregnancy of the player > 0 and M is mating:
		say "[SubmissiveGreeting of M]";
	otherwise if M is mating:
		say "[DominantGreeting of M]"; [To display if the fairy has ever "fathered" one of the player's children.]
	otherwise if the times-met of M < 2:
		say "[FirstGreeting of M]";
	otherwise:
		say "[RepeatResponse of M]";
	if seduced is 0, compute greeting response of M.[the fairy is special so we can't just default to perception]

To compute greeting response of (M - a fairy):
	calm M;
	if the boredom of M <= 0 and M is interested:
		say "[UnfriendlyResponse of M]";
	otherwise if there is a monster penetrating a fuckhole:
		if a random monster penetrating a fuckhole is unfriendly, say "[midDominanceResponse of M]"; [is the player currently being dominated by another monster?]
		otherwise say "[InSexResponse of M]"; [is the player currently having consensual sex]
	otherwise if the boredom of M > 100:[To display right after "playtime"]
		say "[AsDominantResponse of M]"; 
	otherwise if the pregnancy of the player > 0:[is the player pregnant?]
		say "[SubmissiveResponse of M]";
	otherwise if M is mating: [To display if the fairy has ever "fathered" one of the player's children.]
		say "[DominantResponse of M]";
	otherwise if the times-met of M < 2:
		say "[FirstResponse of M]";
	otherwise:
		say "[RepeatResponse of M]";
	now M is interested.
	[if the pregnancy of the player is 1 and questioned is 0:
		increase boredom of M by a random number between 60 and 120; perhaps the fairy should find pregnant players less boring?]

[keep in mind that this greeting only applies if a fairy has already popped out of the player and the fairy in question is the "father"]
To say DominantGreeting of (M - a fairy):
	if the bimbo of the player < 7:
		say "[first custom style]'[one of]What on earth did you do to me to get me pregnant like that.'[or]What makes you think you can just use me for kids?'[or]Is my body just a game to you? You had no right doing that.'[at random][roman type][line break]";
	otherwise if the bimbo of the player < 14:
		say "[variable custom style]'[one of]I admit it's kind of fulfilling to be pregnant, but that doesn't mean you can force it on me!'[or]Not that being pregnant is all that bad, but...Maybe you could have asked me if you could use me first?'[or]Next time you try and get me pregnant, maybe you should ask?'[at random][roman type][line break]";
	otherwise:
		say "[second custom style]'[one of]It was so FUN being pregnant! Do it again!'[or]Hey, baby mommy! Tell me if you want me to make another little girl!'[or]Hey there baby momma!'[at random][roman type][line break]".

To say ToDominantGreeting of (M - a fairy):
	if the bimbo of the player < 7 and the player is male:
		say "[first custom style]'[one of]So, what the FUCK was that?'[or]What the fucking hell was that?'[at random][roman type][line break]";
	otherwise if the bimbo of the player < 7 and the player is female:
		say "[first custom style]'[one of]What on earth did you do to me?'[or]Where do you get off doing that to people?'[at random][roman type][line break]";
	otherwise if the bimbo of the player < 14:
		say "[variable custom style]'[one of]That was...interesting of you.'[or]That was fun. In a way.'[or]That was actually...kind of fun.'[at random][roman type][line break]";
	otherwise:
		say "[second custom style]'[one of]Wow, that was so cool! I look so much sexier now!'[or]Omigosh, that was SO cool!'[or]Wow! That was so fun!'[or]Mmm, that was a lot of fun.'[at random][roman type][line break]".

To say SubmissiveGreeting of (M - a fairy):
	say "[variable custom style]'[one of]Do you have any idea who the father is?'[or]Hey, can you tell me who the father is, by chance?'[or]Can you tell me what's growing inside me?'[at random][roman type] You gesture at your [BellyDesc].".

To say BoredResponse of (M - a fairy):
	say "[speech style of M]'Oh, is it playtime already?'[roman type][line break]".

To say FirstResponse of (M - a fairy):
	say "[speech style of M]'[one of]Hi there!'[or]Hello!'[or]Hi hi!'[or]Hello hello hello!'[or]Hiya!'[or]Nice to meet you!'[or]Hello!'[at random][roman type][line break]";
	if image cutscenes is 1, display figure of fairy interact 2.

To say RepeatResponse of (M - a fairy):
	say "[FirstResponse of M]".

To say UnfriendlyResponse of (M - a fairy):
	say "[speech style of M]'[one of]Hush! It's playtime!'[or]I'm going to catch you!'[or]Tag! You're it!'[or]It's playtime, shh!'[or]I'm going to get you~!'[at random][roman type][line break]";
	if image cutscenes is 1, display figure of fairy interact 3.

[is the fairy mating? also, they shouldn't be pregnant right now.]
To say DominantResponse of (M - a fairy):
	say "[speech style of M]'[one of]Hee hee! It's my favourite mommy!'[or]Hi there [NameBimbo]! You're my favourite mommy.'[or]There's my favourite mommy!'[at random][roman type][line break]";
	if the bimbo of the player < 14, say "[variable custom style]It[']s like she didn[']t even hear me...[roman type][line break]";
	if image cutscenes is 1, display figure of fairy interact 4.

[is the player pregnant?]
To say SubmissiveResponse of (M - a fairy):
	if M is mating and the pregnancy of the player > 0:
		say "The fairy puts her face up against your belly, listening intently.";
		if M is the father:
			say "[speech style of M]'It's definitely mine!'[roman type]";
			if image cutscenes is 1, display figure of fairy interact 7;
		otherwise if the father is tentacle monster or the father is lake monster or the father is vines or the father is living belt of sturdiness or the father is creampie pole trap:
			say "The fairy looks up at you and starts giggling uncontrollably. What could that mean?";
			if image cutscenes is 1, display figure of fairy interact 5;
		otherwise if the father is royal guard:
			say "[speech style of M]'Ooh, You[']re a lucky girl.'[roman type] You don[']t really feel like that was helpful...";
			if image cutscenes is 1, display figure of fairy interact 7;
		otherwise if the father is sex doll:
			say "[speech style of M]'Oooh...I don[']t want to spoil the surprise for you.'[roman type] That's helpful...";
			if image cutscenes is 1, display figure of fairy interact 7;
		otherwise if the father is shopkeeper:
			say "[speech style of M]'Whoever the daddy is, he[']s big and strong!'[roman type] You don[']t really feel like that was helpful...";
			if image cutscenes is 1, display figure of fairy interact 7;
		otherwise if the father is minotaur:
			say "The fairy recoils, as if she just got hit in the face. She takes it in stride and immediately begins giggling.[speech style of M]'Hee hee, I think you know already.'[roman type] You don[']t really feel like that was helpful...";
			if image cutscenes is 1, display figure of fairy interact 6;
		otherwise if the father is fairy:
			say "The fairy looks up at you with a giggle. [speech style of M]'It's a secret!'[roman type] That's helpful...";
			if image cutscenes is 1, display figure of fairy interact 7;
		otherwise:
			say "[speech style of M]'Who knows! Teehee!'[roman type] That's helpful...";
			if image cutscenes is 1, display figure of fairy interact 7;
		say "[line break]";
	otherwise if the pregnancy of the player > 0:
		say "[speech style of M]'[one of]Looks like someone's got a baby growing in their belly!'[or]Wow, you're pregnant! Congratulations~'[or]How wonderful! You have a baby in your belly!'[at random][roman type][line break]";
		if image cutscenes is 1, display figure of fairy interact 7;
	otherwise:
		say "[speech style of M]'[one of]Everybody likes being pregnant. You're weird.'[or]I love being pregnant, you should too!'[or]Being pregnant is fun!'[or]Eventually you'll learn to love being a mommy. Just like me!'[at random][roman type][line break]";
		if image cutscenes is 1, display figure of fairy interact 7.
		
[did playtime happen recently?]
To say AsDominantResponse of (M - a fairy):
	say "[speech style of M]'*Giggle*...[one of]I knew you'd enjoy playtime.'[or]I knew you'd love playtime.'[at random][roman type][line break]";
	if image cutscenes is 1, display figure of fairy interact 8.

To say midDominanceResponse of (M - a fairy):
	if there is a monster penetrating vagina and pregnancy fetish is 1:
		say "[speech style of M]'[one of]Hee hee! Looks like you're about to get inseminated!'[or]It looks like you[']re about to get inseminated! I[']m so happy for you!'[or]Cum inside her, teehee!'[or]Get her pregnant! Get her pregnant!'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'We had playtime together already, now it[']s their turn.'[roman type][line break]";
	if image cutscenes is 1, display figure of fairy interact 5.

To say BimboSeduced of (M - a fairy):
	say "[speech style of M]'Teehee, you[']re funny.'[roman type][line break]";
	if image cutscenes is 1, display figure of fairy interact 8.

Section 2 - Questioning

To compute annoyance of (M - a fairy):
	if M is uninterested:
		say "The [M] doesn't seem to realize you are talking to her.";
	otherwise if M is unfriendly:
		say "[speech style of M]'Hush now, it's playtime!'[roman type][line break]";
	otherwise:
		say "[speech style of M]'I'm bored of talking!'[roman type][line break]".

To compute teaching of (M - a fairy):
	say "[speech style of M]'You should learn how to carry [if diaper quest is 1]a full belly[otherwise if pregnancy fetish is 1]a baby[otherwise]your weight[end if] around better.  You don't want to get tired every few minutes now, do you?  Here, let me show you...'[roman type][line break]";
	if image cutscenes is 1, display figure of fairy interact 9;
	teach belly management;
	if the questioned of M <= 290:
		increase the questioned of M by 50;[Fairies love to talk!]
	otherwise:
		increase the questioned of M by 75.[but not too much]

To say WhereAnswer of (M - a fairy):
	say "[speech style of M]'[if the player is a faerie][one of]What? I thought you knew![or]We're in our home, silly![at random][otherwise]I don[']t know what you[']d call it, but I call this place my home[end if].'[roman type][line break]";
	if image cutscenes is 1, display figure of fairy interact 11.

To say WhoAnswer of (M - a fairy):
	say "[speech style of M]'[if M is fist sized fairy]Tinkerbell[otherwise if M is mischievous fairy]Jasmine[otherwise if M is cheeky fairy]Trixxy[otherwise if M is giggling fairy]Ditzi[otherwise if M is playful fairy]Ninona[otherwise]I don't know! Teehee!'[end if][if M is not blue fairy] the fairy!  Pleased to meet you.'[end if][roman type][line break]";
	if image cutscenes is 1, display figure of fairy interact 10.

To say StoryAnswer of (M - a fairy):
	say "[speech style of M]'[if pregnancy fetish is 1]Us fairies are blessed with the task of spreading the joy of pregnancy to everyone we meet.  And if we find a boy, we can just turn them into a girl!  And that's not all we can do.  It's so fun messing with people!'[otherwise]Us fairies are blessed with a desire to play with anyone we meet, and we have the magic to do it!  It's so fun messing with people!'[end if][roman type][line break]";
	if image cutscenes is 1, display figure of fairy interact 8.

To say EscapeAnswer of (M - a fairy):
	if the player is a faerie:
		say "[speech style of M]'[one of]I don't think us faeries are supposed to leave...'[or]Ask the witch! She knows everything!'[or]Fly out! *giggle*'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]This is a magic forest, there[']s no way out. Teehee!'[or]There[']s no way of getting out of here, this forest expands for miles and miles in every direction!'[or][if diaper quest is 1]There's a big scary metal robot you have to fight, but apparently it's less scary if you're wearing a full diaper!'[otherwise]Well, if you really want to know, there[']s this big hole somewhere nearby. If you jump in there, you might find a way out!'[end if][or]I don[']t know! Teehee!'[or]There[']s a set of doors somewhere, but behind them everything is all scary and metal.'[as decreasingly likely outcomes][roman type][line break]";[Who exactly expects useful information from a fairy?]
	if image cutscenes is 1, display figure of fairy interact 11.

To say AdviceAnswer of (M - a fairy):
	if diaper quest is 1, say "[speech style of M]'[one of]Wearing heels can help your kicks and make you look more like a grown up, but they sure are difficult to talk in if you're wearing a diaper!'[or]Cumming while in a diaper isn't just humiliating, it's likely to get you addicted to diapers if you do it too much!  Which kinda sounds fun, hehe!'[or]Many years ago, the princess used a mystical amulet to seal away a super mean demon's power. She trusted us fairies to take care of it, but we lost it! It's probably around here somewhere, you should go find it, teehee!'[or]All demons are evil, but that means they all share weaknesses to the same types of magic. There are some out there that are impervious to all physical attack, but there[']s no such thing as impervious to magic. That[']s cheating!'[in random order][roman type][line break].";
	otherwise say "[speech style of M]'[one of]Those horny vines you find around here sure can be tough, but they[']re so clumsy! If you don[']t want them to [if the player is female]do fun stuff to your pussy[otherwise]do fun stuff with your butthole[end if], try and find a pair of underwear that they[']ll have lots of trouble with!'[or][if egg laying fetish is 1]Have you ever noticed how all underground creatures seem to lay eggs? If you know there[']s a real monster around, you should stay away from its lair unless your belly is ready to take lots and lots of eggs!'[otherwise if pregnancy fetish is 1]Have you ever noticed how people treat you differently when you[']re pregnant. Well, monsters do too, so try to stick near them if there[']s someone trying to take advantage of your big belly to get something from you! And if you can[']t find a monster, come find me, I[']ll protect you!'[otherwise]Have you ever noticed how vines don[']t bother you once they[']ve had their fun? If you don[']t want to fight with them, just let them fuck you! They can't tell where you are until you get up afterwards, so you can rest all you want before you're ready for more semen![end if][or]Many years ago, the princess used a mystical amulet to seal away a super mean demon's power. She trusted us fairies to take care of it, but we lost it! It's probably around here somewhere, you should go find it, teehee!'[or]All demons are evil, but that means they all share weaknesses to the same types of magic. There are some out there that are impervious to all physical attack, but there[']s no such thing as impervious to magic. That[']s cheating!'[in random order][roman type][line break].";
	if image cutscenes is 1, display figure of fairy interact 12.

Section 3 - Drink Requesting

To compute friendly drink of (M - a fairy):
	if the number of worn slimegirls is 0:
		say "[if M is mating][speech style of M]'You just want me to get you pregnant again, don't you?  Maybe you're becoming as addicted to pregnancy as a real fairy!'[otherwise]The [M] has an evil look in her eye.  [speech style of M]'Oh don't worry, I'll fill you up!'[end if][roman type][line break]";
		if image cutscenes is 1, display figure of fairy interact 13;
		say "With a wave of her hands, your belly starts to expand.  It keeps on growing until you feel very, very full.  [if the largeness of belly < max belly size]It's not just your stomach that she has filled up...[end if]";
		if hunger mechanics is 1, StomachFoodUp 1 + diaper quest;
		increase the stomach-water of the player by 3;
		while the stomach of the player < stomach-max:
			increase the stomach-water of the player by 1;
		if diaper quest is 1:
			if the water volume of belly < belly limit - the total fill of belly, now the water volume of belly is belly limit - the total fill of belly;
		otherwise if the player is male:
			while the largeness of belly < 8 and the largeness of belly < max belly size:
				assfill 1;
		otherwise:
			while the largeness of belly < 8 and the largeness of belly < max belly size:
				if the semen volume of belly < 20, assfill 1;
				if the semen volume of vagina < 15, wombfill 1;
		distract M;
		say "The [M] seems satisfied and looks to leave you alone.";
	otherwise:
		say "The [M] looks at your [BellyDesc].  [speech style of M]'Looks like you're pretty full already! *Giggle*'[roman type][line break]".
		
To compute unfriendly drink of (M - a fairy):
	compute friendly drink of M.

To compute friendly food of (M - a fairy):
	compute friendly drink of M.

To compute unfriendly food of (M - a fairy):
	compute friendly drink of M.

Section 4 - Trading

To decide which number is the bartering value of (T - a thing) for (M - a fairy):
	decide on 0.

To say MonsterOfferRejectFlav of (M - a fairy) to (T - a plentiful accessory):
	say "[second custom style]'[if the player is a faerie]Umm, why would I want that? You are a fairy right?'[otherwise]Us fairies doesn't use money like you mortals!'[end if][roman type][line break]".


Part 5 - Variants

Section 1 - Blue Fairy

An blue fairy is a kind of fairy. There is 1 blue fairy.
The printed name of an blue fairy is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]blue fairy[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".  The text-shortcut of blue fairy is "bfa".

To say WhoAnswer of (M - a blue fairy):
	say "[speech style of M]'I don't know! Teehee!'[roman type][line break]".

To decide which number is the maxhealth of (M - a blue fairy):
	decide on 5 + (the difficulty of M * (1 + game difficulty)).

[Of course, 'current-monster' here is the blue fairy]
This is the blue fairy powerup rule:
	repeat with N running through dangerous monsters in the location of the player:
		if N is not current-monster and the refactory-period of current-monster <= 0 and the health of N < the maxhealth of N:
			say "The [current-monster] floats over the [N], giggling as she sprinkles glittering blue fairy dust over [his of N] head. [big he of N] shakes [his of N] head as all of [his of N] wounds close simultaneously.";
			now the health of N is the maxhealth of N;
			now the refactory-period of current-monster is 200;
			bore current-monster for 120 seconds;
			rule succeeds.
The blue fairy powerup rule is listed first in the fairy attacks then gets bored rules.

Fairy ends here.
