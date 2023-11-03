Fairy by Monster begins here.

A fairy is a kind of monster. A fairy is usually intelligent. A fairy is usually airborne.

A fairy can be fairydistracted. A fairy is usually not fairydistracted.

Definition: a fairy is father material: decide yes.

Figure of fairy is the file "NPCs/Forest/Fairy/fairy1.png".
Figure of diaper fairy is the file "NPCs/Forest/Fairy/fairy2.png".
Figure of blue fairy is the file "NPCs/Forest/Fairy/fairy3.png".
Figure of witch fairy is the file "NPCs/Forest/Fairy/fairy4.png".

Figure of fairy interact 1 is the file "NPCs/Forest/Fairy/cutscene-fairy-interact1.png".
Figure of fairy interact 2 is the file "NPCs/Forest/Fairy/cutscene-fairy-interact2.png".
Figure of fairy interact 3 is the file "NPCs/Forest/Fairy/cutscene-fairy-interact3.png".
Figure of fairy interact 4 is the file "NPCs/Forest/Fairy/cutscene-fairy-interact4.png".
Figure of fairy interact 5 is the file "NPCs/Forest/Fairy/cutscene-fairy-interact5.png".
Figure of fairy interact 6 is the file "NPCs/Forest/Fairy/cutscene-fairy-interact6.png".
Figure of fairy interact 7 is the file "NPCs/Forest/Fairy/cutscene-fairy-interact7.png".
Figure of fairy interact 8 is the file "NPCs/Forest/Fairy/cutscene-fairy-interact8.png".
Figure of fairy interact 9 is the file "NPCs/Forest/Fairy/cutscene-fairy-interact9.png".
Figure of fairy interact 10 is the file "NPCs/Forest/Fairy/cutscene-fairy-interact10.png".
Figure of fairy interact 11 is the file "NPCs/Forest/Fairy/cutscene-fairy-interact11.png".
Figure of fairy interact 12 is the file "NPCs/Forest/Fairy/cutscene-fairy-interact12.png".
Figure of fairy interact 13 is the file "NPCs/Forest/Fairy/cutscene-fairy-interact13.png".

To decide which figure-name is the monster-image of (M - a fairy):
	if diaper quest is 1, decide on the figure of diaper fairy;
	otherwise decide on the figure of fairy.

Definition: a fairy is woods dwelling: decide yes.

To say ShortDesc of (M - a fairy):
	say "fairy".

fist sized fairy is a fairy. The text-shortcut of fist sized fairy is "ffa".
To say MediumDesc of (M - fist sized fairy):
	say "fist sized fairy".

mischievous fairy is a fairy. The text-shortcut of mischievous fairy is "mfa".
To say MediumDesc of (M - mischievous fairy):
	say "mischievous fairy".

cheeky fairy is a fairy. The text-shortcut of cheeky fairy is "cfa".
To say MediumDesc of (M - cheeky fairy):
	say "cheeky fairy".

giggling fairy is a fairy. The text-shortcut of giggling fairy is "gfa".
To say MediumDesc of (M - giggling fairy):
	say "giggling fairy".

playful fairy is a fairy. The text-shortcut of playful fairy is "pfa".
To say MediumDesc of (M - playful fairy):
	say "playful fairy".

To say MonsterDesc of (M - a fairy):
	if diaper quest is 1:
		say "A fairy.";
	otherwise:
		if lady fetish is 2:
			say "A tiny [if M is blue-fairy]blue[otherwise if M is fairy-witch]green[otherwise]pink[end if] skinned fairy, about twice the size of your fist. [big he of M] has four wings, [if M is blue-fairy]long, flowing blue[otherwise if M is fairy-witch]braided green[otherwise]cropped pink[end if] hair, and no clothing to speak of. [big he of M] has a thin, wispy body and [his of M] although it's hard to tell thanks to [his of M] erratic movements, [his of M] [DickDesc of M] is locked up in a tiny dark-[if M is blue-fairy]blue[otherwise if M is fairy-witch]green[otherwise]pink[end if] cage.";
		otherwise:
			say "A tiny [if M is blue-fairy]blue[otherwise if M is fairy-witch]green[otherwise]pink[end if] skinned fairy, about twice the size of your fist. [big he of M] has four wings, [if M is blue-fairy]long, flowing blue[otherwise if M is fairy-witch]braided green[otherwise]cropped pink[end if] hair, and no clothing to speak of. [big his of M] breasts are big for [his of M] size, probably about a [if M is fairy-witch]GG[otherwise]D[end if] cup for a normal sized [man of M], and [his of M] [if pregnancy fetish is 1]heavy, pregnant[otherwise]large, full[end if] belly doesn't seem to slow down [his of M] erratic, unpredictable movements at all.".

To set up (M - a fairy):
	reset M;
	now the monstersetup of M is 1;
	add pink-hair to the tradableItems of M, if absent;
	add pink-hair to the taxableItems of M, if absent;
	add womb-potion to the tradableItems of M, if absent;
	add womb-potion to the taxableItems of M, if absent;
	if pregnancy fetish is 1:
		let T be a random birth control for sissies T-shirt;
		add T to the taxableItems of M, if absent;
	now the raw difficulty of M is the starting difficulty of M;
	now the health of M is the maxhealth of M.

To decide which number is the initial maxhealth of (M - a fairy):
	decide on 1 + the difficulty of M.

To decide which number is the starting difficulty of (M - a fairy):
	decide on 2.

Definition: a fairy is blocker: decide no.

To say PregGrowth of (M - a fairy):
	say "the fairy's [one of][child][or]magical gift[as decreasingly likely outcomes]".

To compute labour to (M - a fairy):
	if playerRegion is Woods and M is not alive: [any living fairy can deliver a fairy baby]
		now M is a random regional fairy;
		if M is not monster:
			now M is a random off-stage fairy;
			summon M in the woods;
			set up M;
	if M is regional and M is alive:
		compute pregnancy clothing displacement;
		say "[PregFlav][if the father is in the location of the player]The [father][otherwise if M is the father]The [father] appears almost as if on cue! [big he of M][otherwise if M is in the location of the player][BigNameDesc of M][otherwise]A [M] appears almost as if on cue! [big he of M][end if] lands on your bloated belly, giggling in delight. [if M is in the location of the player]Your belly begins to glow with a strong pink hue, as if there is a giant pink light-bulb inside of it. As you feel the head start to emerge, the fairy goes into an orgasmic spasm - watching your birthing is making [him of M] cum! You slowly give birth to the human baby girl as the fairy makes sexual sounds and furiously fingers [himself of M] above your head. [end if][if bukkake fetish is 1 and M is in the location of the player]The fairy's projectile squirt douses your face and chest like a powerhose as [he of M] climaxes, forcing you to cough and splutter as you push the rest of the baby out of your [vagina].[end if][if M is not in the location of the player][big he of M] stays sitting on your belly, stroking it, as you painfully push the newborn out of your [vagina]. Finally your ordeal is over, and after a final loving pat, the fairy takes flight.[end if][line break]";
		if M is in the location of the player, cutshow figure of fairy cutscene 1 for M;
		otherwise cutshow figure of fairy cutscene 2 for M;
		say "[one of]Just as you think things can't get any weirder, the fairy flies down and kisses the baby on the cheek. This causes your new daughter to sprout wings, her skin turns pink, and she starts giggling. You watch stunned as your new fairy daughter starts flying - she goes up into the sky and out of view.[or]Just like last time, the fairy flies down and kisses the baby on the cheek, transforming her into a fairy. Your new fairy daughter flies up into the sky and out of view.[stopping][roman type][line break]";
		if glittering rose is off-stage and glittering rose is actually summonable and (M is the father or M is mating):
			say "The glitter seems to coalesce from the air around you, forming itself into rose-shaped bow, which settles neatly on your head.";
			summon glittering rose cursed;
		otherwise if there is a worn tattoo and womb diagram tattoo is actually summonable:
			say "Looking down, you see that you have a new tattoo on your crotch - it's a diagram of a womb!";
			summon womb diagram tattoo;
		otherwise:
			say "You can't help feeling like it would better to just forget about getting out of this game and just have fun getting pregnant.";
			DexUp 1;
			IntDown 1;
		if M is not the father, now M is the father;[She may not have been the one to impregnate you, but she still "delivered" the baby!]
	otherwise if M is alive:
		Delay Labour;
	otherwise:
		say "A sudden contraction sends a small, manageable amount of pain shooting from your womb to the rest of your body.[line break]You are filled with a desire to [if Woods01 is discovered]return to[otherwise]find[end if] the Woods.".

To say NonAliveFatherBirthFlav of (M - a fairy):
	say "[if playerRegion is Woods]You should probably make sure the exit to your vagina is clear[otherwise]Something tells you that you should return to the Woods[end if]!".

Part 1 - Perception

Definition: a fairy (called M) is uniquely unfriendly:
	if the boredom of M <= 0, decide yes;
	[if the pregnancy of the player > 0 and the pregnancy of the player < 3, decide no;]
	decide no.

To compute perception of (M - a fairy):
	say "[BigNameDesc of M] giggles and focuses [his of M] eyes on you[if the player is sluttily dressed], even though [he of M]'s naked [himself of M][end if]. ";
	if the current-errand of M is completed and M is not uniquely unfriendly:
		compute errand completion of M;
	otherwise:
		say "[if M is unfriendly][big he of M] starts flying towards you...[otherwise][big he of M] doesn't seem aggressive right now.[end if]";
		display interaction of M.

To display interaction of (M - a fairy):
	alwayscutshow figure of fairy interact 1 for M.

To compute DQ perception of (M - a fairy):
	say "[BigNameDesc of M] giggles and focuses [his of M] eyes on you. ";
	if the current-errand of M is completed and M is not uniquely unfriendly:
		compute errand completion of M;
	otherwise:
		say "[if M is unfriendly][big he of M] starts flying towards you...[otherwise][big he of M] doesn't seem aggressive right now.[end if]";
		display interaction of M.

To make (M - a fairy) expectant:
	do nothing.

Part 2 - Misc Flavour

To compute RockingReaction of (M - a fairy):
	say "[BigNameDesc of M] [if M is uninterested][one of]stops what [he of M][']s doing and [or][stopping][end if]sings a sweet lullaby[one of] in an innocent yet slightly mocking tone[or][stopping]. [moderateHumiliateReflect]".

To say SummoningFlav of (M - a fairy):
	if the location of the player is Woods30, say "Glittering embers of light slowly fall from the sky above the statue, swirling around its stony form as they converge just below its belly. A [printed name of M] emerges from a puff of smoke, giggling uncontrollably as [he of M] massages [his of M] distended tummy.";
	otherwise say "You hear some playful high pitched giggling.".

To say MonsterOfferAcceptFlav of (M - a fairy) to (T - a thing):
	if M is unfriendly:
		say "[BigNameDesc of M] giggles.[line break][speech style of M]'[if the bartering value of T for M + the favour of M > the aggro limit of M]For me? Wee, thank you! Okay, I'll leave you alone for a while. But I get bored so quickly...'[otherwise]Haha, okay, I'll leave you alone for a little bit then.'[end if][roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] seems elated.[line break][speech style of M]'Wow, thank you so much! It's like Christmas!'[roman type][line break]".

To say GroundPeeReaction of (M - a fairy):
	say "[speech style of M]'Teehee, you're such a naughty minx!'[roman type][line break]".

To compute enema floor reaction of (M - a fairy):
	if voluntarySquatting is 1, obsceneHumiliate;
	otherwise severeHumiliate;
	say EnemaFloorReactionFlav of M.

To say EnemaFloorReactionFlav of (M - a fairy):
	say "[BigNameDesc of M] [if M is interested]seems to by entertained by the noises your [asshole] is making[otherwise]turns and laughs at you[end if].[line break][speech style of M]'O-M-G, you are so naughty!!!'[roman type][line break][if the humiliation of the player < 25000][one of]You turn a bright shade of red[or]You blush brightly with shame[or]You shiver with self-consciousness[or]You turn red-faced with shame[in random order].[end if]".

To say TriggeredTrapReactFlav of (M - a fairy):
	say "[BigNameDesc of M] giggles with glee!".
To say HarshTrapReactFlav of (M - a fairy):
	say TriggeredTrapReactFlav of M.
To say NastyTrapReactFlav of (M - a fairy):
	say TriggeredTrapReactFlav of M.
To say LewdTrapReactFlav of (M - a fairy):
	say "[BigNameDesc of M] squeals with delight.[line break][speech style of M]'[one of]Is it playtime already?'[or]You really do love playtime!'[or]Oh, what fun!'[in random order][roman type][line break]";
	moderateHumiliate;
	FavourDown M with consequences.

To compute disgusting spit reaction of (M - a fairy):
	say "[BigNameDesc of M] giggles.[line break][speech style of M]'You're so nasty!'[roman type][line break][slightHumiliateReflect]".

Part 3 - Protection

To compute protection of (M - a fairy):
	if the player is in danger:
		let X be M;
		repeat with U running through combative monsters:
			now X is U;
		if the player is flying:
			deinterest M;
		otherwise if X is M:
			say "BUG - [NameDesc of M] tried to protect the player (flagged as in combat) but somehow found itself as the most reasonable target...";
		otherwise:
			compute M protecting against X.

To compute (M - a fairy) protecting against (X - a monster):
	if the player is at least partially monster stuck:
		say "[one of][or][or][BigNameDesc of M] giggles, seemingly very entertained.[or][or][cycling]";
	otherwise if X is not fairy and the pregnancy of the player > 0 and the pregnancy of the player < 3:
		compute M default protecting against X;
	otherwise if X is fairy:
		say "[one of][BigNameDesc of M] giggles, seemingly very entertained.[or][or][cycling]";
	otherwise if M is guardian:
		compute M default protecting against X;
	otherwise:
		say "[speech style of M]'Well it's been fun, but I better buzz off!'[roman type][line break][BigNameDesc of M] flies off at the first sign of trouble.";
		distract M;

To say AllyDamageFlav of (M - a fairy) on (X - a monster):
	say "[speech style of M]'[if the pregnancy of the player > 0 and the pregnancy of the player < 3]Don't harm the baby!'[otherwise]Don't hurt my friend!'[end if][roman type][line break][BigNameDesc of M] darts around the [X], firing little bolts of magic.".

Part 4 - Combat

To compute periodic healing of (M - a fairy): [no periodic healing, ever]
	if the blind-status of M > 0:
		decrease the blind-status of M by 1;
		if the blind-status of M is 0 and M is in the location of the player and M is awake, say "[BigNameDesc of M] is no longer blind!";
	if the paralyse-status of M > 0:
		decrease the paralyse-status of M by 1;
		if the paralyse-status of M is 0 and M is in the location of the player and M is awake, say "[BigNameDesc of M] is no longer paralysed!";
	if the poison-status of M > 0:
		decrease the poison-status of M by 1;
		if the poison-status of M is 0 and M is in the location of the player and M is awake, say "[BigNameDesc of M] is no longer poisoned!".

To compute boredom reduction of (M - a fairy):
	if the boredom of M > 0:
		decrease the boredom of M by seconds;
		if the boredom of M <= 0:
			now the boredom of M is 0;
			if M is interested and M is unfriendly and M is in the location of the player, say "[BigNameDesc of M][']s eyes narrow, and [he of M] suddenly takes an aggressive stance, grinning. Looks like [he of M]'s gotten bored of just hanging around...".

Section 1 - Attack

To say MovementBlock of (M - a fairy):
	say "[one of][BigNameDesc of M] flies rapidly around your head, blocking your path.[or][BigNameDesc of M] flies rapidly around your head, distracting you and blocking your path.[or][BigNameDesc of M] flies rapidly around your head, disorienting you and locking your path.[or][BigNameDesc of M] flies rapidly around your head, confusing you and blocking your path.[in random order]".

To compute submission reaction of (M - a fairy):
	do nothing; [The fairy is not delayed by the player's actions]

The fairy attack rules is a rulebook. The fairy attacks then gets bored rules is a rulebook. The priority attack rules of a fairy is usually the fairy attacks then gets bored rules.

This is the fairy attacks then gets bored rule:
	let M be current-monster;
	follow the fairy attack rules;
	if the rule succeeded: [Should always happen with the current code]
		if M is not grabbing the player:
			say "[BigNameDesc of M] seems satisfied and loses interest in messing with you.";
			if the health of M >= the maxhealth of M, calm M; [this means that fairies that you retaliated against will just keep messing with you]
			bore M for 120 seconds;
		rule succeeds.
The fairy attacks then gets bored rule is listed in the fairy attacks then gets bored rules.

This is the fairy doesn't want to have sex rule:
	if presented-orifice is not nothing, say "[BigNameDesc of current-monster] giggles at your display.[line break][speech style of current-monster]'I don't know what you think I'm going to do to you, honey, but it certainly isn't that! How would that even work?'[roman type][line break]".
The fairy doesn't want to have sex rule is listed first in the fairy attack rules.

This is the fairy summons a wisp rule:
	if there is a stalking wisp and there is a nonstalking wisp:
		let W be a random stalking wisp;
		say "[BigNameDesc of current-monster] flutters its wings towards [NameDesc of W], coating it in fairy dust! It shudders and then splits in two!";
		deploy a wisp;
		satisfy current-monster;
		rule succeeds.
The fairy plays diaper quest rule is listed in the fairy attack rules.

This is the fairy plays diaper quest rule:
	if diaper quest is 1:
		let C be a random worn transformation chain transformable clothing;
		if C is clothing and a random number between 1 and 3 > 1:
			say "[BigNameDesc of current-monster] whizzes by, brushing against your [C] as [he of current-monster] does!";
			potentially transform C;
		otherwise if there are worn heels and a random number between 1 and 2 is 1:
			compute fairy meddling on thighs;
		otherwise if belly is fairy targetable:
			compute fairy meddling on belly;
		otherwise:
			compute fairy meddling on vagina;
		satisfy current-monster;
		rule succeeds.
The fairy plays diaper quest rule is listed in the fairy attack rules.

This is the fairy tries to impregnate the player rule:
	if pregnancy fetish is 1 and there is a vine wrangling a body part and the class of the player is faerie:
		say "[BigNameDesc of current-monster] continues to [one of]whiz about underneath you[or]hover beneath your legs[at random], throwing glittering dust over the horny vines twisting through the soil.";
		cutshow figure of fairy cutscene 18 for current-monster;
		rule succeeds;
	if the class of the player is faerie and the player is possessing a vagina and the pregnancy of the player is 0:
		let V be a random vine;
		now current-monster is grabbing the player; [Necessary for the part of the code that takes place in Vines.i7x]
		say "[BigNameDesc of current-monster] whizzes between your legs, tossing a handful of glittering dust at the soil underneath you. [big he of current-monster] lands on your shoulders as several vines suddenly shoot out of the ground and seize you by the wrists and ankles![line break][speech style of current-monster]'It must be awful walking around like that without a bun in your oven. Don't worry, I'll make sure you get knocked up!'[roman type][line break]";
		unless V is in the location of the player:
			now V is in the location of the player;
			now V is revealed;
			now the TrapNo of V is 0;
		now V is wrangling thighs;
		now V is wrangling arms;
		rule succeeds;
	if pregnancy fetish is 1 and the player is possessing a vagina and the pregnancy of the player is 0 and the semen volume of vagina < 15 and the largeness of belly < 10 and a random number between 1 and 2 is 1 and the vaginalvirgin of the player is 0:
		say "[BigNameDesc of current-monster] whizzes past you, briefly brushing against your belly as [he of current-monster] does. [big he of current-monster] turns and smirks as your belly rumbles, and visibly glows pink as it swells in front of your eyes.";
		if the largeness of belly > 5, cutshow figure of fairy cutscene 7 for current-monster;
		otherwise cutshow figure of fairy cutscene 3 for current-monster;
		let B be the largeness of belly;
		while the semen volume of vagina < 10 and the largeness of belly is B:
			now current-monster is penetrating vagina; [Required for pregnancy tracking]
			if the class of the player is faerie, PussyFill 4;
			otherwise PussyFill 1;
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
	if the player is somehow possessing a penis and the mystical size of penis > min penis size and a random number between 1 and 2 is 1:
		say "[BigNameDesc of current-monster] whizzes past you, briefly brushing against your crotch as [he of current-monster] does. [big he of current-monster] turns and smirks.";
		SpecialPenisDown 1; [#LXorDD]
		rule succeeds.
The fairy tries to shrink the penis of the player rule is listed last in the fairy attack rules.

Definition: a body part is fairy targetable: decide no.

Definition: breasts (called XXX) is fairy targetable:
	now decideToSuckle is 0;
	[Selkie: yes if the player has recently lactated; or probably yes if they have a lot of milk]
	if a random number between 1 and the milk volume of breasts > 5:
		now decideToSuckle is 1;
		decide yes;
	if earnings - last-lactated-time < 10 and the milk volume of breasts > 0:
		[Selkie: when I had this here instead of in the fairy-meddling-on-breasts function, it was triggering this text twice every time TQ decided what the fairy would target, even if she didn't end up deciding on the breasts. I don't understand why it always produced a pair of them!
		say "[BigNameDesc of current-monster][']s eyes light up, and [he of current-monster] smacks [his of current-monster] little lips. 'Mmm, I smell milky goodness!'";]
		now decideToSuckle is 1;
		decide yes;
	let B be a random worn bra;
	if B is a bra:
		if the size of B < max breast size and the size of B < 15, decide yes;
		decide no;
	if the player is not top heavy, decide yes;
	decide no.

To say FairyName: [assuming the current-monster is a fairy, we include that as a possibility.]
		say "[one of]fairy[or]pesky fairy[or][current-monster][or]tiny [man of current-monster][or]darting fairy[at random]".

To compute fairy meddling on (XXX - breasts):
	let B be a random worn currently at least partially visible bra;
	[Selkie: Let the fairies mess with your lactation rate, by suckling.
	It now does something more in the case where the class of the player is cowgirl!
	Aika noted this would get a bit tedious after you've seen it a few times. My plan is to work in more variability. This may suffice...?]
	if decideToSuckle is 1:
		compute fairySuckling of current-monster;
	otherwise if B is a bra:
		say "[BigNameDesc of current-monster] whizzes past you, briefly brushing against your chest as [he of current-monster] does. [big he of current-monster] turns and smirks as you see your bra grow.";
		unless B is cursed, now B is cursed;
		increase the size of B by a random number from 1 to 2;
		if the size of B > max breast size, now the size of B is max breast size;
	otherwise:
		say "[BigNameDesc of current-monster] whizzes past you, briefly brushing against your chest as [he of current-monster] does. [big he of current-monster] turns and smirks as your chest glows pink[unless the player is top heavy], and visibly swells in front of your eyes[end if].[if lactation fetish is 1] Your now [BreastDesc] feel... active.[end if]";
		if the largeness of breasts < 3:
			cutshow the figure of fairy cutscene 10 for current-monster;
		otherwise if the largeness of breasts < 4:
			cutshow the figure of fairy cutscene 11 for current-monster;
		otherwise if the largeness of breasts < 5:
			cutshow the figure of fairy cutscene 12 for current-monster;
		otherwise if the largeness of breasts < 6:
			cutshow the figure of fairy cutscene 13 for current-monster;
		otherwise if the largeness of breasts < 7:
			cutshow the figure of fairy cutscene 14 for current-monster;
		otherwise if the largeness of breasts < 10:
			cutshow the figure of fairy cutscene 15 for current-monster;
		otherwise if the largeness of breasts < 12:
			cutshow the figure of fairy cutscene 16 for current-monster;
		otherwise:
			cutshow the figure of fairy cutscene 17 for current-monster;
		BustUp 2;
		if lactation fetish is 1:
			if cow-ears is off-stage and cow-ears is actually summonable and a random number between 1 and 3 is 1:
				say "[bold type]A pair of fake cow ears materialise on your head.[roman type][line break]";
				summon cow-ears cursed;
				now the lactation count of breasts is 0;
			otherwise:
				increase the lactation rate of breasts by a random number between 1 and 3.

To compute fairySuckling of (M - a fairy):
	let fM be a random number from 1 to the milk volume of breasts;
	now decideToSuckle is 0;
	increase FairySuckled by 1;
	if fM > 7, now fM is 7;
	say "[BigNameDesc of M][']s eyes light up, and [he of M] smacks [his of M] little lips. [one of][big his of M] tiny nose sniffs deeply, and [he of M] shuts [his of M] eyes for a moment in pleasure.[or][speech style of M]'Mmm, I smell milky goodness!'[or][speech style of M]'Ooh, a pretty cow for me to play with.'[or][speech style of M]'Yum, milk!'[or][speech style of M]'Mmm, milk!'[or][speech style of M]'Yum, milky goodness!'[in random order][roman type][line break]";
	cutshow figure of fairy cutscene 8 for M;
	[Let's say the fairy is about size 7, so she can't drink more than that]
	let NipsWereNkd be 0; [This will be set to 1 if the player had their nipples already sluttily exposed. Not really used, but could be for some humiliating text.]
	let slashedSomething be 0;
	if bottom level lactation cover is nothing and random worn actually nipple covering clothing is nothing:
		[So this is the case of nipples uncovered: tempting targets]
		now NipsWereNkd is 1;
		say "[BigNameDesc of M] [one of]notices your naked teats[or]eyes your breasts[or]eyes focus on your chest[or]narrows [his of M] eyes[at random], and purses [his of M] lips as if sucking. ";
		if FairySuckled is 1:
			say "Ooh - you feel both your nipples suddenly spring even more erect than they were, like they're just [italic type]begging[roman type] for some attention!";
		otherwise if FairySuckled is 2:
			say "You suddenly feel an odd sensation, a kind of [italic type]tension[roman type], then a sensation of wetness at your nipples, and a tiny milky bead oozes out from each, glistening at the dark maroon tips. [big he of M] darts forward...";
		otherwise if FairySuckled < 5:
			say "You once again feel that odd, tingling [italic type]tension[roman type], then cool wetness, as tiny milky beads ooze forth from each, glistening temptingly at the dark maroon tips. [big he of M] licks [his of M] lips and darts forward...";
				[So this next "Oh no!" bit only happens on the 3rd and 4th time - after that, it's become normal for the player. It's intended to fit into the idea that you/your nipples are being conditioned to perk straight up, sitting up to beg like well-trained puppies begging for attention, and the feeling of milk beading beneath your clothing, as soon as you realise the fairy intends to drink from you again!]
			say "Oh, no - not again! This time, it feels almost like there's an invisible thread connecting your nipples to the fairy's lips - and [he of M]'s just tugged on it! They [one of]stiffen and perk up[or]stand up to attention[or]swell and darken, standing erect[at random].";
		otherwise:
			if the milk taste addiction of the player > 8:
				say "You feel the familiar tingly [italic type]tension[roman type], then wetness as milk starts beading and dripping from each. The drops gleam and glisten, contrasting deliciously with the dark maroon tips of [italic type]your[roman type] [milk]-laden boobies. You feel an exciting quiver in your loins as [he of M] swoops down, and you take a deep breath - bracing yourself for what's about to come. You're not thrusting them up for [him of M]! Really, you're not!";
			otherwise:
				say "You feel the familiar tingly [italic type]tension[roman type], then wetness as milk starts beading and dripping from each. The drops gleam and glisten against your dark maroon tips, beckoning [him of M] closer.";
		[This next bit shows that you or your nipples are being conditioned to perk straight up, sitting up to beg like well-trained puppies begging for attention, and the feeling of milk beading beneath your clothing, as soon as you realise the fairy intends to drink from you again!]
		if FairySuckled is 1:
			say "[variable custom style]Why'd they just do that?[roman type] You look from [his of M] puckered mouth, down to your quivering nipples.";
		otherwise if FairySuckled < 4:
			say "[one of]For a moment you have the weird thought[or]It really does seem like[stopping] [he of M]'s training your nipples to sit up and beg when [he of M] makes [his of M] attentions clear!";
		otherwise if FairySuckled < 5: [After FairySuckled > 3, randomly on a 1 in 2? chance]
			say "You know what comes next, and you feel the tips of your [BreastDesc] tighten even further.";
		otherwise if FairySuckled is 6:
			say "Damn it! [big he of M] [italic type]has[roman type] trained your nipples to sit up and beg!";
		otherwise if FairySuckled > 7:
			say "Your trained nipples perk up, to order!";
	otherwise: [This is the case were she has to attempt to deal with your nipple covering(s).]
		say "[big he of M] darts forward, and [if FairySuckleSlashes is 0]you suddenly notice [his of M] tiny hands are tipped by [otherwise]you just [italic type]know[roman type] [he of M] can smell your lovely [milk]. [one of]Your nipples are already perking up.[or]Your traitorous nipples perk up.[at random] Once again your eyes are drawn to [his of M] [end if]wickedly-sharp little nails! With amazing and horrifying speed, fingers outstretched, [he of M] swoops towards your nipples, moving so fast you don't dare even twitch, for fear of what might happen if you do!";
		repeat with nC running through worn actually breast covering clothing:
			if nc is milking flappable: [Fairies love milk so much they don't ask, they just rudely expose the player!]
				say "The [FairyName] [one of]nimbly opens[or]quickly unlatches[or]frees up your teats from[or]slips your nipple free from[or]whips open[or]draws aside the covering of[at random] your [printed name of nC]";
			otherwise if nC is actually nipple exposing:
				say "The [FairyName] [one of]smirks[or]grins[or]sniggers[at random] at the [one of]lewdly-[or]sluttily-[or]perkily-[or]mouth-wateringly [or]prominently [or]temptingly [at random]exposed nipples of your [printed name of nC]";
			otherwise if nC is top-displacable: [This means, CAN be displaced, yes?]
				say "The [FairyName] [one of]swiftly tugs[or]pulls[or]draws[or]jerks[or]slips[or]shifts[or]displaces[at random] your [printed name of nC] [one of]aside[or]aside[or]to one side[or]out of the way[or]askew[at random].";
				TopDisplace nC;
			otherwise if nC is metal: [I think metal clothing should be invulnerable to fairy fingernails, sharp as they are.]
				say "The [FairyName] slashes futilely at your [nC], [his of M] [one of]fiendishly sharp[or]wicked[or]razor sharp[or]scary[at random] nails grating against and scratching the tough material, but finally [he of M] gives up, looking frustrated and annoyed!";
				now decideToSuckle is 1; [This is my weak-ass attempt to make her more likely to try again next time: unfortunately, I don't think it will work.]
				stop; [Selkie: I believe this is the right way in i7 to exit a function early, if it returns no value. (break/next are loop controls.) '"Stop" is the plain-jane return statement. It isn't used much, partly because of some other synonyms for return, and partly as fallout from the rules-based structure of the language.']
			otherwise: [if it was already top-ripped then it would have been caught by the check for 'actually nipple exposing' above]
				say "[big his of M] [one of]flashing nails[or]tiny but scary claws[or]razor-sharp fingernails[or]oyster-shell sharp little crescent nails[at random] [one of]carve[or]cut[or]slice[or]magically slide through[at random] your [nC], exposing your nipples to [his of M] [one of]tender mercies[or]gaze[or]hungry gaze[or]eager mouth[at random].[line break]";
				now nC is top-ripped;
				now slashedSomething is 1;
				[Selkie: Given I've bypassed the damage clothing function, maybe it's okay to just add a little damage directly this way?]
				increase the damage of nC by 2;
		if slashedSomething is 1:
			increase FairySuckleSlashes by 1;
	if FairySuckled is 1 and slashedSomething is 1:
		say "You blink in shock - in under a second, [he of M]'s ruined your clothing - and exposed your nipples![line break][if the player is able to speak][line break][variable custom style]'Hey, wait just a min-'[roman type][line break]you start to cry out, but it[otherwise if the player is able to make sounds][line break][variable custom style][muffled sounds][roman type][line break]you try to complain, but your struggle to make yourself understood just seems to encourage [him of M] to mess with you! Uh-oh, it[otherwise]It[end if] seems [he of M] hasn't finished...";
	otherwise:
		[Okay, the player knows the drill now. This is probably a good place to introduce some more variability, to add interest.
		If the player is submissive, maybe have them hold up their breasts, offering them up as if not resisting.
		Or if they're a bimbo, giggle and jiggle them, hoping the cute fairy will treat you to another wonderful suckling experience.
		If nipples could be enlarged or made more sensitive, those would be other good bits of variability to throw in here.
		And with all that said, if there's a second fairy, how hot would it be if one decided that your clit was due for a similar experience; or if male, then your dick, riding up and down it, their legs and arms clutched around it and their wings buzzing madly, making them slide up and down, while vibrating powerfully at the same time!
		Though come to think of it, the 2nd fairy could target your other nipple; you could be ravaged by three fairies at the same time!]
		if slashedSomething is 1: [This is better than "NipsWereNkd is 0", since that can be true when she had merely displaced clothing]
			say "[if FairySuckleSlashes is 1][big he of M]'s just[otherwise][big he of M]'s done it again: [end if] ruined your clothing - and exposed your nipples! [italic type]Ooh - yum, I can't wait![roman type][line break]";
		say "[if the player is able to speak][line break][variable custom style][one of]'What, you think I'm just some helpless milk dispenser? What gives you the right to-'[or]'Stop treating me like my boobs are drinking fount-'[or]'Look, would you just stop for a min-'[or]'Oh, god, do you have to do this ag-'[or]'Okay, go ahead, drink up! It's not like I could st-'[stopping][roman type][line break][otherwise]You make some squeaking moans, as if you're trying to say[line break][variable custom style]'No, please, don't!'[roman type][line break], but really, you can hardly wait![end if][line break]";
		if delicateness of the player > 10:
			say "These fairies are really scary when they've been driven mad by milk-lust! You don't even [italic type]consider[roman type] trying to resist: the thought of what those [one of]frightening[or]awful[or]razor-sharp[at random] claws could do to your [BreastDesc], let alone to your tender and swollen nipples, doesn't even bear thinking about! You meekly cup and hold your boobies up to make it easier for your fairy milking-master to use you however [he of M] sees fit.[line break][variable custom style][big he of M] knows what's best for me![roman type][line break]";
			if FairySuckled > 3 and the intelligence of the player > 6: [they're not stupid]
				say "You're starting to think all this forced lactation and suckling is stimulating your breasts, making them produce even more [milk] than they would have.[line break][variable custom style]But that's fair enough - at least I'm being a *productive* member of this game. Teehee![roman type][line break]";
		otherwise if the bimbo of the player > 10:
			say "With a tremor of excited anticipation, you hold your [BreastDesc] up so the sexy little fairy knows you're ready for any attention [he of M] cares to give your swollen and eager nipples!";
	if there is a worn cow piercing:
		say "[variable custom style]'Ooh! I can smell yummy milk from the big, slow cow[boy of the player]. Does the sexy cow[boy of the player] need milking? Yes [he of the player] does, doesn't [he of the player]? I bet [he of the player]'s just dying to moo for me and let me milk [him of the player]!' [roman type][big he of M] gives your heavy nipple ring a sharp tug and a twist, and your poor, tender nub shoots a delicious mix of pain and thrilling pleasure right into your tummy, where it flares out in a shockingly intense sensation that surges into your groin. You blush at the way [he of M]'s taunting you, but can't help feeling even more aroused!";
		stimulate breasts from M;
	otherwise if there is a worn nipple chain:
		say "[big he of M] tugs sharply on your heavy nipple ring, sending a thrill of pain-tipped pleasure surging through you. And the connecting chain jerks and tweaks your other nipple, doubling the sensation, and making your [BreastDesc] jiggle. [big he of M] lands on the chain, [his of M] wings buzzing as [he of M] dances up it, shaking the chain so it jangles and tugs [italic type]both[roman type] your throbbingly-erect nubs, and then grabs the chain and hauls [himself of M] closer to the milk-beaded tip, licking [his of M] lips. It feels [italic type]so[roman type] good! You bite your lip, knowing you shouldn't be enjoying the feelings of these heavy piercings in your swollen nipples!";
		stimulate breasts from M times 2;
	if FairySuckled is 1:
		say "[big he of M] flutters toward your sensitive and milk-leaking nipple with a wicked gleam in [his of M] eye. You're about to swat [him of M] away, when [his of M] mouth gapes impossibly open and [his of M] lips somehow stretch as [his of M] head plunges down to engulf your tender tip! A shock of pleasure stuns you at [his of M] sudden, fierce suction. Your eyes widen and your toes curl, and it's all you can do to stay on your feet. You're not sure where the milk is [italic type]going[roman type], but whatever's happening, you can't think properly: it's like you've been tasered with some kind of pleasure-gun! You sway, slightly, lost in the sensations...";
	otherwise:
		say "With a knowing grin, [his of M] lips gape over your tender tip and engulf it again! The shock of pleasure from [his of M] fierce suction is as intense as you remember, and your toes curl. It's all you can do to stay on your feet. You're swamped once again by the thrilling feelings. [one of][line break][variable custom style]God, [he of M]'s like my own sexy breast pump![roman type][line break][or][line break][variable custom style]I could get used to this![roman type][line break][or][line break][variable custom style]Does [he of M] think [he of M] can train me like I'm one of Pavlov's dogs?[roman type][line break][or]The gentle tugging on your nipple, and the feel of [milk] moving inside your breasts, flowing through it and out your nipple, makes your groin tingle.[or][line break][variable custom style]Gosh, [he of M]'s good at that![roman type][line break][or][line break][variable custom style]God, [he of M]'s poking [his of M] tiny tongue into the opening![roman type][line break][at random]";
	cutshow figure of fairy cutscene 9 for M;
	say "[if FairySuckled is 1]Abruptly[otherwise if FairySuckled < 4]Once again[otherwise if FairySuckled < 6]All too soon[otherwise]As usual[end if], [he of M] releases your nipple, which [one of]springs forth from [his of M] mouth, quiveringly erect and with an angry red colour[or]pops free, achingly erect, and vividly red[or]springs up, firm and erect and tender, and an angry red[at random].[line break]";
	if FairySuckled is 1:
		say "But before you can properly gather your wits, [he of M] darts to your other nipple! This time the look in [his of M] eye is more than just a wicked gleam. It's perfectly clear [he of M] knows that [italic type]you[roman type] know just how much under [his of M] tiny thumb [he of M] has you, once [he of M] has your nipple in [his of M] mouth. But while you're still forming that thought, [his of M] eyes burn into yours as if to say [italic type]'You may be bigger than me, but you're putty in my tiny hands.'[roman type][line break][big he of M] latches onto your other poor teat and your eyes roll helplessly back in your head - again!";
	otherwise:
		if sex addiction of the player > 8 :
			say "You know it will feel so good that you don't really even [italic type]try[roman type] to stop [his of M] swooping in.";
		otherwise if delicateness of the player > 10 :
			say "You find yourself biting your lip, and holding it up slightly to [him of M], offering yourself.";
		say "[big his of M] grin widens as [he of M] darts to your other nipple, which shivers in eager anticipation of its imminent fate. The knowing look in [his of M] eyes tells you how much [he of M] enjoys having you under [his of M] tiny thumb. [big his of M] eyes burn into yours:[line break][speech style of M][one of]'Yes, putty in my hands.'[or]'That's my pretty cow-dolly.'[or]'Hello, Mommy.'[or]'Go on, be a good milk dispenser.'[or]'I should call you Buttercup!'[or]'Ooh, who's getting to be well-trained?'[or]'That's a good milk-cow.'[or]'I know you want me to suck on you.'[or]'Look how eager you are!'[or]'I know you love this![or]'Oh, look who can't wait?'[or]'Oh, my, look at them, standing up proud and glistening with milk for me!'[or]'Are your nipples getting bigger?' [big he of M] licks [his of M] lips.[at random][roman type][line break]Your eyes roll back in your head again as [one of][he of M] fastens onto you![or][his of M] mouth engulfs you![or] [he of M] starts suckling![at random]";
	if there is a worn cow piercing or there is a worn nipple chain:
		say "[big his of M] tiny hands are jerking at [italic type]this[roman type] nipple's piercing, even as [his of M] mouth stretches over your rosebud, and [his of M] lips press down right to the edge of the heavy metal as [he of M] begins sucking vigorously. Between [his of M] suckling at your tit, and [his of M] tugging at the piercing, small lightning bolts of pleasure jolt and judder through you. You have the feeling that something a little magical just happened: your [BreastDesc] feel... [italic type]milkier[roman type]. Ooh - sexy!";
		passively stimulate breasts from M;
		increase the lactation rate of breasts by 2; [Cowgirls get even milkier!]
	if FairySuckled is 1:
		say "When you regain your senses, [NameDesc of M] is fluttering smugly above you and just out of reach, watching you as if considering doing more. Both your nipples now feel like signal flares crying out for you or [italic type]anyone[roman type] to... No! You're worried that if anything touched them right now, you'd come on the spot.";
	otherwise if FairySuckled is 2:
		say "Your breasts do feel like they've been drained a little, but at the same time, you can't help but wonder whether [his of M] feeding might somehow make your body think you're breastfeeding a child? [italic type]That wouldn't make me lactate even more... would it?[roman type][line break]";
	otherwise:
		say "[one of]Your breasts feel emptier, but you worry that [his of M] feeding is somehow making your body think you're breastfeeding a child! [italic type]Is [he of M] training me to lactate?[roman type][or][BigNameDesc of M] belches prettily, watching you with satisfaction, and you feel a funny sort of [italic type]echo[roman type] ripple through the flesh deep inside your [BreastDesc].[at random][line break]";
	stimulate breasts from M;
	MilkDown fM;
	increase the lactation rate of breasts by fM / 2;
	say "[if FairySuckled > 1]Once again, as you waken from the pleasure-daze, your breasts feel less swollen with [milk], but at the same time... maybe a bit more [italic type]tingly[roman type] inside?[otherwise]You're not sure how much time has passed, but apart from feeling like you've just been through some mind-blanking oxytocin high, nothing much seems to have changed. [italic type]At least my breasts aren't aching inside so much, any more![roman type][line break][end if]".

Definition: hips (called XXX) is fairy targetable:
	if there is a worn undies, decide yes;
	if the player is not bottom heavy, decide yes;
	decide no.

To compute fairy meddling on (XXX - hips):
	let G be a random worn currently at least partially visible undies;
	if G is transformable transformation chain clothing:
		say "[BigNameDesc of current-monster] whizzes past you, briefly brushing against your [G] as [he of current-monster] does. ";
		potentially transform G;
		if G is worn:
			say "[BigNameDesc of current-monster] looks confused, but just harrumphs. ";
		otherwise:
			say "[BigNameDesc of current-monster] looks at it and giggles.";
	otherwise:
		say "[BigNameDesc of current-monster] whizzes past you, briefly brushing against your ass as [he of current-monster] does. [big he of current-monster] turns and smirks as your hips rumble, and visibly swell in front of your eyes.";
		if the thickness of hips > 8:
			cutshow figure of fairy cutscene 6 for current-monster;
		otherwise if the thickness of hips > 4:
			cutshow figure of fairy cutscene 5 for current-monster;
		otherwise:
			cutshow figure of fairy cutscene 4 for current-monster;
		AssSwell 1.

Definition: belly (called XXX) is fairy targetable:
	if the total fill of belly < 17 and max belly size > the largeness of belly, decide yes;
	decide no.

To compute fairy meddling on (XXX - belly):
	say "[BigNameDesc of current-monster] whizzes past you, briefly brushing against your belly as [he of current-monster] does. [big he of current-monster] turns and smirks as your belly rumbles[unless there is a worn corset], and visibly swells in front of your eyes[end if].";
	now current-monster is penetrating asshole; [Required for semen source tracking]
	if weight gain fetish is 1 and the flesh volume of belly < 9:
		increase the flesh volume of belly by 2;
	otherwise:
		AssFill 4;
	now current-monster is not penetrating asshole;
	let T be "The fairy's magic seems to further disturb your body -";
	check sudden squirt with reason T;
	if the largeness of belly > 6, cutshow figure of fairy cutscene 7 for current-monster;
	otherwise cutshow figure of fairy cutscene 3 for current-monster.
Definition: face (called XXX) is fairy targetable:
	if the make-up of face < 3, decide yes;
	if the lips of face < max lip size and (current-monster is blue-fairy or current-monster is fairy-witch), decide yes;
	decide no.

To compute fairy meddling on (XXX - face):
	say "[BigNameDesc of current-monster] whizzes over your head, tossing a handful of glittering dust at your face. [big he of current-monster] giggles as it settles on your cheeks, adding a new layer of makeup. [if (current-monster is blue-fairy or current-monster is fairy-witch) and the lips of face < max lip size]Your face tingles as your lips grow thicker.[end if]";
	if current-monster is blue-fairy or current-monster is fairy-witch, LipsUp 1;
	FaceUp 1.

Definition: hair (called XXX) is fairy targetable:
	if the raw largeness of hair < max hair length and 0 is the number of worn headgear, decide yes;
	decide no.

To compute fairy meddling on (XXX - hair):
	say "[BigNameDesc of current-monster] whizzes past you, briefly brushing against your hair as [he of current-monster] does. [big he of current-monster] turns and smirks as you feel your hair grow[if the redness of hair + the blondeness of hair + the brightness of hair < max hair length and current-monster is blue-fairy] and tingle as it changes colour[end if].";
	if current-monster is blue-fairy:
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
	say "[BigNameDesc of current-monster] whizzes past you, briefly brushing against your [printed name of H] as [he of current-monster] does. [big he of current-monster] turns and smirks as you feel the height of your heels grow.";
	increase the heel-height of H by 1.

Definition: vagina (called XXX) is fairy targetable:
	if watersports mechanics is 1 and the latex-transformation of the player < 4:
		if there is a worn uncursed diaper or the bladder of the player < 20, decide yes;
	decide no.

To compute fairy meddling on (XXX - vagina):
	let D be a random worn uncursed currently at least partially visible diaper;
	if diaper quest is 1 and diaper messing >= 3 and the player is not hungry:
		say "[BigNameDesc of current-monster] whizzes past you, briefly brushing against your belly as [he of current-monster] does. ";
		compute DQ hunger;
	otherwise if D is transformable diaper and diaper quest is 0:
		say "[BigNameDesc of current-monster] whizzes past you, briefly brushing against your [printed name of D] as [he of current-monster] does. ";
		potentially transform D;
	otherwise:
		increase the bladder of the player by 7;
		if the bladder of the player < 14, now the bladder of the player is 14;
		if the bladder of the player > 20, now the bladder of the player is 20;
		say "[BigNameDesc of current-monster] whizzes past you, briefly brushing against your waist as [he of current-monster] does. [big he of current-monster] turns and smirks[if the player is bursting] as you feel a sudden urgent need to pee[end if].".

[Selkie: a thought: this code looks (to my meagre understanding) like the fairies are pretty unstoppable. Unless you can kill them in one hit? But you could instead allow something like the maid's spray bottle to be especially effective, and able to prevent their attack that around, if you squirt them with it, and if you succeed twice in a row, perhaps have that drive them off? And you might do a similar thing with a slap attack: "You swat at the fairy, and make contact, which seems to upset her!" - and maybe a couple of those could have them buzz off? Just an idea.]
[Aika: Maybe we do need a more reliable way to deal with fairies. Something like the spraybottle idea but accessible to any class (or at least most)]
[MG: One easy fix to make could be that the player has a chance of dodging attacks from fairies.]
This is the fairy tries meddling rule:
	let B be a random fairy targetable body part;
	if B is body part:
		let M be current-monster;
		unless current-monster is fairyDistracted, compute fairy meddling on B;
		otherwise say "[BigNameDesc of current-monster] [one of]is so busy talking to you that [he of current-monster] doesn't immediately mess with you.[or]briefly forgets to mess with you.[at random]";
		rule succeeds.
The fairy tries meddling rule is listed last in the fairy attack rules.

This is the fairy reduces stats rule:
	if a random number between 1 and 2 is 1:
		say "[BigNameDesc of current-monster] whizzes past you, briefly brushing against your legs as [he of current-monster] does. [big he of current-monster] turns and smirks. Your legs feel weak!";
		DexDown 1;
	otherwise:
		say "[BigNameDesc of current-monster] whizzes past you, briefly brushing against your arms as [he of current-monster] does. [big he of current-monster] turns and smirks. Your arms feel weak!";
		StrengthDown 1;
	rule succeeds.
The fairy reduces stats rule is listed last in the fairy attack rules.

Section 2 - Damage

To decide which number is the damage modifier of (M - a fairy):
	[Chance for the fairy to completely dodge the attack. Increases with knees and kicks]
	let A be attack-type;
	if A > 3, now A is 1; [bombs and zaps aren't penalised]
	if A > 1 and (a random number between 1 and the dexterity of the player) + (a random number between 1 and the dexterity of the player) < ((the difficulty of M / 3) + (A * 4) - 3), decide on (attack-damage * -1);
	decide on 0.

To compute damage reaction of (M - a fairy):
	say "[BigNameDesc of M] squeals in pain!".

To compute failed damage of (M - a fairy):
	say "[BigNameDesc of M] giggles.[line break][speech style of M]'[if M is friendly]Oh, you want to play? Okay[otherwise][one of]Missed me[or]Whoopsie[or]Missed[or]Nyer nyer[in random order][end if]!'[roman type][line break]";
	anger M.

To compute loot dropping of (P - pink-hair) by (M - a fairy):
	unless M is dying, now the owner of P is M;
	say "[speech style of M]'You want some of my special hair, don't you?'[roman type][line break][BigNameDesc of M] winces as [he of M] pulls out a small clump of [his of M] [P].[line break][speech style of M]'That hurt!'[roman type][line break]".

To say BanishForceFlav of (M - a fairy):
	say "You grab [NameDesc of M] by the hair.[line break][if the player is able to speak][variable custom style]'Begone, little minx.'[roman type][line break][end if]You give [him of M] a painful flick on the rear at the same time as you release [his of M] hair, which sends [him of M] squealing and spiralling into the sky.";

To say damage-flavour of (N - a number) on (M - a fairy):
	if N is 0:
		say "[BigNameDesc of M] flutters backwards, dodging your attack! [if attack-type is 1][line break][otherwise][one of]Maybe leg based attacks are too unreliable to reach [NameDesc of M]?[or][or][or][cycling][end if]";
	otherwise if N is 1:
		say "That felt extremely weak, you doubt it hurt much at all.";
	otherwise if N is 2:
		say "That felt quite weak, but hopefully it hurt a bit.";
	otherwise if N < 5:
		say "[BigNameDesc of M] definitely felt that. A respectable hit!";
	otherwise if N < 7:
		say "[BigNameDesc of M] visibly recoils from the hit. A [if critical is 1][bold type]critical hit[roman type][otherwise]strong hit[end if]!";
	otherwise if N < 9:
		say "Wow, you felt that connect with incredible force. A super strong [if critical is 1][bold type]critical hit[roman type][otherwise]hit[end if]!";
	otherwise:
		say "POW! Your attack is accompanied by a loud sound. An almost impossibly strong [if critical is 1][bold type]critical hit[roman type][otherwise]hit[end if]!".

Part 4 - Conversation

To say RewardFlav of (M - a fairy) for (T - a thing):
	say "[speech style of M]'A gift from a fairy is a rare thing, you know.'[roman type][line break]A [T] appears on the ground in front of you.".

To say OfferFriendshipFlav of (M - a fairy):
	say "".

Section 1 - Greeting

[Fairies use a custom to greet function, since their perception works differently than it does for most monsters, but while we're here, we can use the default functions for special pregnancy themed stuff]
To compute basic greeting to (M - a fairy):
	if the greet-window of M > 0 or M is friendly:
		compute conventional response of M;
	otherwise:
		compute vanity response of M;
	now M is interested.

To say FirstResponse of (M - a fairy):
	if the health of M >= the maxhealth of M:
		say "[speech style of M]'[one of]Hi there!'[or]Hello!'[or]Hi hi!'[or]Hello hello hello!'[or]Hiya!'[or]Nice to meet you!'[or]Hello!'[at random][roman type][line break]";
		alwayscutshow figure of fairy interact 2 for M;
	otherwise:
		say HurtResponse of M.

To say HurtResponse of (M - a fairy):
	say "[speech style of M]'[one of]I don't want to talk to you, you played too rough[or]You hurt me, meanie! Take this[stopping]!'[roman type][line break]".

To say RepeatResponse of (M - a fairy):
	if the health of M < the maxhealth of M:
		say HurtResponse of M;
	otherwise if the boredom of M > 100:
		if the pregnancy of the player is 1:
			say "[speech style of M]'[one of]Congratulations![or]Hi! You're going to be a mommy soon!'[or]Hello miss mommy! You're pretty!'[at random][roman type][line break]";
		if the class of the player is fertility goddess:
			say "[speech style of M]'[one of]Hello! You look nice, miss goddess!'[or]Hi miss goddess!'[or]Hi! You look beautiful today, miss goddess!'[at random][roman type][line break]";
			alwayscutshow figure of fairy interact 2 for M;
		otherwise:
			say FirstResponse of M;
	otherwise:
		now M is fairydistracted;
		if M is interested:
			say "[speech style of M]'[one of]Hush! It's playtime!'[or]I'm going to catch you!'[or]Tag! You're it!'[or]It's playtime, shh!'[or]I'm going to get you~!'[at random][roman type][line break]";
		otherwise:
			say "[speech style of M]'Oh, is it playtime already?'[roman type][line break]";
		alwayscutshow figure of fairy interact 3 for M.

To say InvitationAccepted of (M - a fairy) with (N - a monster):
	say "[speech style of M]'Teehee, this will be fun!'[roman type][line break]";
	now M is fairydistracted.

To say InvitationRejected of (M - a fairy) with (N - a monster):
	let FM be a random father material monster penetrating vagina;
	if FM is monster and pregnancy fetish is 1:
		say "[speech style of M]'[one of]Hee hee! Looks like you're about to get inseminated!'[or]It looks like [he of FM][']s about to squirt inside you! I'm so happy for you!'[or]Cum inside [him of the player], teehee!'[or]Get [him of the player] pregnant! Get [him of the player] pregnant!'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Sorry, I don't feel like playing right now.'[or]We had playtime together already, now it's [him of N]'s turn.'[at random][roman type][line break]";

To say AssistanceRejected of (M - a fairy) with (N - a monster):
	if the boredom of M <= 100:
		say "[speech style of M]'That sounds boring. Why don't I join instead?'[roman type][line break]";
		now M is fairydistracted;
	otherwise:
		if there is a father material monster penetrating vagina and pregnancy fetish is 1:
			say "[speech style of M]'Hey [if N is presenting as female]miss[otherwise]mister[end if] [MediumDesc of N]! [one of]Make [him of the player] pregnant!'[or]Inseminate [him of the player]! Hee hee hee!'[or]Cum inside [him of the player], teehee!'[or]Get [him of the player] pregnant! Get [him of the player] pregnant!'[at random][roman type][line break]";
		otherwise:
			say "[speech style of M]'And ruin it for [NameDesc of N]? That's mean!'[roman type][line break]".

To say VanityAccepted of (M - a fairy):
	if the boredom of M <= 100, say VanityRejected of M;
	say "[speech style of M]'Where are we going?'[roman type][line break]".

To say VanityAnnoyed of (M - a fairy):
	if the boredom of M <= 100, say VanityRejected of M;
	say "[speech style of M]'I can follow you.'[roman type][line break]".

To say VanityRejected of (M - a fairy):
	if the boredom of M <= 100:
		say "[speech style of M]'Let's play!'[roman type][line break]";
		now M is fairydistracted;
	otherwise:
		say "[speech style of M]'This is boring.'[roman type][line break]".

To say AttentionExceeded of (M - a fairy) with (N - a monster):
	say "[speech style of M]'Hee hee. I knew you'd wanna play!'[roman type][line break]";
	now M is fairydistracted.

To say AttentionAccepted of (M - a fairy) with (N - a monster):
	say "[speech style of M]'That looks fun!'[roman type][line break]".

To say TauntRejected of (M - a fairy):
	say "[speech style of M]'You're mean!'[roman type][line break][BigNameDesc of M] seems even more determined to beat you!";
	now M is fairydistracted.

Section 2 - Questioning

To say TeachQuestion of (M - a fairy):
	if bellyskill is 1 and the pregnancy of the player is 1, say "[variable custom style]'[one of]Do you have any idea who the father is?'[or]Hey, can you tell me who the father is, by any chance?'[or]Can you tell me what's growing inside me?'[at random][roman type][line break]You gesture at your [BellyDesc].";
	otherwise say "[variable custom style]'Can you teach me anything useful?'[roman type][line break]".

To compute teaching of (M - a fairy):
	if bellyskill is 1 and the pregnancy of the player is 1:
		say PregnancyAssessment of M;
	otherwise:
		say "[speech style of M]'You should learn how to carry [if diaper quest is 1]a full belly[otherwise if pregnancy fetish is 1]a baby[otherwise]your weight[end if] around better. You don't want to get tired every few minutes now, do you? Here, let me show you...'[roman type][line break]";
		alwayscutshow figure of fairy interact 9 for M;
		teach belly management.

To say PregnancyAssessment of (M - a fairy):
	say "[BigNameDesc of M] puts [his of M] face up against your belly, listening intently.";
	if M is the father:
		say "[speech style of M]'Hee hee! I'm going to be a [daddytitle of M]!'[roman type][line break]";
		alwayscutshow figure of fairy interact 7 for M;
	otherwise if the father is tentacle monster or the father is lake monster or the father is vines or the father is living belt of sturdiness or the father is creampie pole trap:
		say "[speech style of M]'Oooh, how kinky!'[roman type][line break][big he of M] looks up at you and starts giggling uncontrollably. What could that mean?";
		alwayscutshow figure of fairy interact 5 for M;
	otherwise if the father is royal guard or the father is unicorn:
		say "[speech style of M]'Ooh, You're a lucky girl.'[roman type][line break]You don't really feel like that was helpful...";
		alwayscutshow figure of fairy interact 7 for M;
	otherwise if the father is sex doll:
		say "[speech style of M]'Oooh... I don't want to spoil the surprise for you.'[roman type][line break]That's helpful...";
		alwayscutshow figure of fairy interact 7 for M;
	otherwise if the father is shopkeeper or the father is mechanic or the father is gladiator:
		say "[speech style of M]'Whoever the daddy is, they must be big and strong!'[roman type][line break]You don't really feel like that was helpful...";
		alwayscutshow figure of fairy interact 7 for M;
	otherwise if the father is minotaur or the father is demon lord:
		say "[big he of M] recoils as if [he of M] just got hit in the face. [big he of M] takes it in stride and immediately begins giggling.[line break][speech style of M]'Hee hee, I think you know already.'[roman type][line break]You don't really feel like that was helpful...";
		alwayscutshow figure of fairy interact 6 for M;
	otherwise if the father is fairy:
		say "[big he of M] looks up at you with a giggle.[line break][speech style of M]'It's a secret!'[roman type][line break]That's helpful...";
		alwayscutshow figure of fairy interact 7 for M;
	otherwise:
		say "[speech style of M]'Who knows! Teehee!'[roman type][line break]That's helpful...";
		alwayscutshow figure of fairy interact 7 for M;
	say "[line break]".

To say PregnancyAssessment of (M - fairy-witch):
	say "[BigNameDesc of M] puts [his of M] face up against your belly, listening intently.";
	if M is the father:
		say "[speech style of M]'It's definitely mine, heehee!'[roman type][line break]";
		alwayscutshow figure of fairy interact 7 for M;
	otherwise if the father is tentacle monster or the father is lake monster or the father is vines or the father is living belt of sturdiness or the father is sex doll or the father is deep one:
		say "[speech style of M]'Well, the daddy definitely isn't a human. Does that help?'[roman type][line break]";
		alwayscutshow figure of fairy interact 7 for M;
	otherwise if the father is a creampie pole trap:
		say "[speech style of M]'I don't know, could be anything! How fun!'[roman type][line break]";
		alwayscutshow figure of fairy interact 7 for M;
	otherwise if the father is royal guard or the father is gladiator or the father is centaur:
		say "[speech style of M]'Um, I think the daddy definitely likes weapons. Does that help?'[roman type][line break]";
		alwayscutshow figure of fairy interact 7 for M;
	otherwise if the father is unicorn:
		say "[speech style of M]'The daddy definitely wasn't a demon. I think. Is that helpful?'[roman type][line break]";
		alwayscutshow figure of fairy interact 7 for M;
	otherwise if the father is minotaur:
		say "[big he of M] recoils, as if [he of M] just got hit in the face.[line break][speech style of M]'The daddy is definitely big and tough. Is that helpful?'[roman type][line break]";
		alwayscutshow figure of fairy interact 6 for M;
	otherwise if the father is infernal:
		say "[big he of M] recoils and starts, rubbing [his of M] cheek.[line break][speech style of M]'Whoever the daddy is, [he of mechanic]'s really really mean!'[roman type][line break]";
		alwayscutshow figure of fairy interact 6 for M;
	otherwise if the father is fairy:
		say "[line break][speech style of M]'Teehee. It's obviously a fairy!'[roman type][line break]";
		alwayscutshow figure of fairy interact 7 for M;
	otherwise:
		say "[speech style of M]'Well, it was definitely a human. Does that help?'[roman type][line break]";
		alwayscutshow figure of fairy interact 7 for M;
	say "[line break]".

To say PregnancyAssessment of (M - blue-fairy):
	say "[BigNameDesc of M] puts [his of M] face up against your belly, listening intently.";
	if the father is fairy:
		say "[speech style of M]'Uuuuummm, I think it's a fairy?'[roman type][line break]";
		alwayscutshow figure of fairy interact 11 for M;
	otherwise if the father is mansion dwelling:
		say "[big he of M] shivers.[speech style of M]It sounds like the daddy lives somewhere really spooky!'[roman type][line break]";
		alwayscutshow figure of fairy interact 7 for M;
	otherwise if the father is hotel dwelling or the father is demon lord or the father is patron:
		say "[speech style of M]'The daddy sounds really rich. Have you slept with any piggy-banks recently?'[roman type][line break]";
		alwayscutshow figure of fairy interact 7 for M;
	otherwise if the father is woods dwelling:
		say "[speech style of M]'The daddy carries the forest lord's blessing! Or maybe it IS the forest lord.'[roman type][line break]";
		alwayscutshow figure of fairy interact 7 for M;
	otherwise if the father is lake monster or the father is dungeon dwelling:
		say "[speech style of M]'Hmm, the daddy must live somewhere underground. I think.'[roman type][line break]";
		alwayscutshow figure of fairy interact 7 for M;
	otherwise:
		say "[speech style of M]'Uhhhh... mmmmm... I think it's, uhmm. I... don't know. Sorry.";
		alwayscutshow figure of fairy interact 7 for M;
	say "[line break]".

To say WhereAnswer of (M - a fairy):
	say "[speech style of M]'[if the class of the player is faerie][one of]What? I thought you knew![or]We're in our home, silly![at random][otherwise]I don't know what you'd call it, but I call this place my home[end if].'[roman type][line break]";
	alwayscutshow figure of fairy interact 11 for M.

To say WhoAnswer of (M - a fairy):
	say "[speech style of M]'[if M is fist sized fairy]Tinkerbell[otherwise if M is mischievous fairy]Jasmine[otherwise if M is cheeky fairy]Trixxy[otherwise if M is giggling fairy]Ditzi[otherwise if M is playful fairy]Ninona[otherwise]I don't know! Teehee!'[end if][if M is not blue-fairy] the fairy! [big please]d to meet you.'[end if][roman type][line break]";
	alwayscutshow figure of fairy interact 10 for M.

To say StoryAnswer of (M - a fairy):
	say "[speech style of M]'[if pregnancy fetish is 1]Us fairies are blessed with the task of spreading the joy of pregnancy to everyone we meet. And if we find a boy, we can just turn them into a girl! And that's not all we can do. It's so fun messing with people!'[otherwise]Us fairies are blessed with a desire to play with anyone we meet, and we have the magic to do it! It's so fun messing with people!'[end if][roman type][line break]";
	alwayscutshow figure of fairy interact 8 for M.

To say EscapeAnswer of (M - a fairy):
	if the class of the player is faerie:
		say "[speech style of M]'[one of]I don't think us faeries are supposed to leave...'[or]Ask the witch! [big he of witch] knows everything!'[or]Fly out! *giggle*'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]This is a magic forest, there's no way out. Teehee!'[or]There's no way of getting out of here, this forest expands for miles and miles in every direction!'[or][if diaper quest is 1]There's a big scary metal robot you have to fight, but apparently it's less scary if you're wearing a full diaper!'[otherwise]Well, if you really want to know, there's this big hole somewhere nearby. If you jump in there, you might find a way out!'[end if][or]I don't know! Teehee!'[or]There's a set of doors somewhere, but behind them everything is all scary and metal.'[as decreasingly likely outcomes][roman type][line break]";[Who exactly expects useful information from a fairy?]
	alwayscutshow figure of fairy interact 11 for M.

To say AdviceAnswer of (M - a fairy):
	if diaper quest is 1, say "[speech style of M]'[one of]Wearing heels can help your kicks and make you look more like a grown up, but they sure are difficult to walk in if you're wearing a diaper!'[or]Cumming while in a diaper isn't just humiliating, it's likely to get you addicted to diapers if you do it too much! Which kinda sounds fun, hehe!'[or]Many years ago, the princess used a mystical amulet to seal away a super mean demon's power. [big he of ex-princess] trusted us fairies to take care of it, but we lost it! It's probably around here somewhere, you should go find it, teehee!'[or]All demons are evil, but that means they all share weaknesses to the same types of magic. There are some out there that are impervious to all physical attack, but there's no such thing as impervious to magic. That's cheating!'[in random order][roman type][line break].";
	otherwise say "[speech style of M]'[one of]Those horny vines you find around here sure can be tough, but they're so clumsy! If you don't want them to [if the player is possessing a vagina]do fun stuff to your [pussy][otherwise]do fun stuff with your butthole[end if], try and find a pair of underwear that they'll have lots of trouble with!'[or][if egg laying fetish is 1]Have you ever noticed how all underground creatures seem to lay eggs? If you know there's a real monster around, you should stay away from its lair unless your belly is ready to take lots and lots of eggs!'[otherwise if pregnancy fetish is 1]Have you ever noticed how people treat you differently when you're pregnant. Well, monsters do too, so try to stick near them if there's someone trying to take advantage of your big belly to get something from you! And if you can[']t find a monster, come find me, I[']ll protect you!'[otherwise]Have you ever noticed how vines don[']t bother you once they[']ve had their fun? If you don[']t want to fight with them, just let them fuck you! They can't tell where you are until you get up afterwards, so you can rest all you want before you're ready for more semen![end if][or]Many years ago, the princess used a mystical amulet to seal away a super mean demon's power. [big he of ex-princess] trusted us fairies to take care of it, but we lost it! It's probably around here somewhere, you should go find it, teehee!'[or]All demons are evil, but that means they all share weaknesses to the same types of magic. There are some out there that are impervious to all physical attack, but there[']s no such thing as impervious to magic. That[']s cheating!'[in random order][roman type][line break].";
	alwayscutshow figure of fairy interact 12 for M.

Section 3 - Drink Requesting

To compute friendly drink of (M - a fairy):
	if slimegirl is not worn:
		say "[if M is mating][line break][speech style of M]'You just want me to get you pregnant again, don't you? Maybe you're becoming as addicted to pregnancy as a real fairy!'[otherwise][BigNameDesc of M] has an evil look in [his of M] eye. [speech style of M]'Oh don't worry, I'll fill you up!'[end if][roman type][line break]";
		alwayscutshow figure of fairy interact 13 for M;
		say "With a wave of [his of M] hands, your belly starts to expand. It keeps on growing until you feel very, very full. [if the largeness of belly < max belly size]It's not just your stomach that [he of M] has filled up...[end if]";
		StomachFoodUp 1 + diaper quest;
		increase the stomach-water of the player by 3;
		while the stomach of the player < stomach-max:
			increase the stomach-water of the player by 1;
		if diaper quest is 1:
			if the water volume of belly < belly limit - the total fill of belly, now the water volume of belly is belly limit - the total fill of belly;
		otherwise if the player is not possessing a vagina:
			while the largeness of belly < 8 and the largeness of belly < max belly size:
				assfill 1;
		otherwise:
			while the largeness of belly < 8 and the largeness of belly < max belly size:
				if the semen volume of belly < 20, assfill 1;
				if the semen volume of vagina < 15, PussyFill 1;
		distract M;
		say "[BigNameDesc of M] seems satisfied and looks to leave you alone.";
	otherwise:
		say "[BigNameDesc of M] looks at your [BellyDesc].[line break][speech style of M]'Looks like you're pretty full already! *giggle*'[roman type][line break]".

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
	say "[second custom style]'[if the class of the player is faerie]Umm, why would I want that? You are a fairy, right?'[otherwise]Us fairies doesn't use money like you mortals!'[end if][roman type][line break]".

To compute offer reward of (M - a fairy) for (T - a thing):
	if M is friendly:
		let C be yourself;
		if womb-potion is fetish appropriate and shopkeeper is not mating:
			if womb-potion is off-stage:
				now C is womb-potion;
				now womb-potion is blessed;
				now womb-potion is sure;
		if C is yourself:
			compute standard offer reward of M for T;
		otherwise:
			now C is in the location of the player;
			say "[BigNameDesc of M] hands you a [C].[line break][speech style of M]'Take this. [if C is womb-potion and interracial fetish is 1]If you use it at the right time you will make a certain black [man of shopkeeper] very happy[otherwise if C is womb-potion]If you use it at the right time you will make a certain strong [man of shopkeeper] very happy[otherwise]It's a good one[end if]. Yep yep yep.'[roman type][line break]";
			compute autotaking C.

Section 5 - Dismissal

To decide which number is the dismissalResistance of (M - a fairy):
	decide on -2.

To decide which number is the DismissalPowerRoyal of (M - a fairy):
	decide on -5.
To say DismissalResponseRoyal of (M - a fairy):
	if M is interested, say "[speech style of M]'I'm not your subject, haha!'[roman type][line break]";
	otherwise say "[speech style of M]'Pff, whatever. I'm bored anyway.'[roman type][line break]".

To decide which number is the DismissalPowerVixen of (M - a fairy):
	decide on 10.
To say DismissalResponseVixen of (M - a fairy):
	say "[speech style of M]'Ooh, where?'[roman type][line break]".

To say DismissalResponseToilet of (M - a fairy):
	say DismissalResponseDefault of M.

To say DismissalResponseBursting of (M - a fairy):
	say DismissalResponseDefault of M.

To say DismissalResponseStalker of (M - a fairy):
	say DismissalResponseDefault of M.

To say DismissalResponseDefault of (M - a fairy):
	say "[speech style of M]'Hmmmmmmm... [if M is interested]Nope[otherwise]Okay[end if]!'[roman type][line break]".

Part 5 - Variants

Section 1 - Blue Fairy

blue-fairy is a fairy. The text-shortcut of blue-fairy is "bfa". Understand "blue", "fairy" as blue-fairy.
To say ShortDesc of (M - blue-fairy):
	say "blue fairy".
To say MediumDesc of (M - blue-fairy):
	say "blue fairy".
Definition: blue-fairy is woods dwelling:
	if doomed > 1, decide yes;
	decide no.

To decide which figure-name is the monster-image of (M - blue-fairy):
	decide on the figure of blue fairy.

To display interaction of (M - blue-fairy):
	do nothing. [No image of pink fairy because it's confusing]

To say WhoAnswer of (M - blue-fairy):
	say "[speech style of M]'I don't know! Teehee!'[roman type][line break]".

To say WhereAnswer of (M - blue-fairy):
	say "[speech style of M]'[if the class of the player is faerie][one of]Um... I-is this a test?[or]I don't know, but it sure is fun here![at random][otherwise]Who cares? Isn't it fun here?[end if].'[roman type][line break]";
	[alwayscutshow figure of fairy interact 11 for M.]

To say StoryAnswer of (M - blue-fairy):
	say "[speech style of M]'[one of][if pregnancy fetish is 1]I make humans look sexier so they're more fun to get knocked up! Isn't that fun?'[otherwise]I like big boobies, and the best way to see some boobies is messing with people!'[end if][or]A long time ago, I figured out humans [if pregnancy fetish is 1]get inseminated more if they look hotter[otherwise]have the best boobies[end if], except that ugly altar witch. It changed everything for me!'[or]I think I'm a princess or something. Mostly I just like to have lots of fun messing with people!'[or]My favourite colour is blue, so I'm blue. And my favourite things are boobs, so I play with boobs! Teehee!'[at random][roman type][line break]";
	[alwayscutshow figure of fairy interact 8 for M.]

To set up (M - blue-fairy):
	reset M;
	now the monstersetup of M is 1;
	now the raw difficulty of M is the starting difficulty of M + 2;
	now the health of M is the maxhealth of M.

To decide which number is the initial maxhealth of (M - blue-fairy):
	decide on 5 + (the difficulty of M * 3).

[Of course, 'current-monster' here is the blue-fairy]
This is the blue-fairy powerup rule:
	if current-monster is blue-fairy:
		repeat with N running through dangerous monsters in the location of the player:
			if N is not current-monster and the refractory-period of current-monster <= 0 and the health of N < the maxhealth of N:
				say "[BigNameDesc of current-monster] floats over [NameDesc of N], giggling as [he of current-monster] sprinkles glittering blue-fairy dust over [his of N] head. [big he of N] shakes [his of N] head as all of [his of N] wounds close simultaneously.";
				now the health of N is the maxhealth of N;
				now the refractory-period of current-monster is 200;
				bore current-monster for 120 seconds;
				rule succeeds.
The blue-fairy powerup rule is listed first in the fairy attacks then gets bored rules.

Section 2 - Fairy Witch

fairy-witch is a fairy. The text-shortcut of fairy-witch is "faw". Understand "fairy", "witch" as fairy-witch.
To say ShortDesc of (M - fairy-witch):
	say MediumDesc of M.
To say MediumDesc of (M - fairy-witch):
	say "fairy [if lady fetish is 2]wizard[otherwise]witch[end if]".

To decide which figure-name is the monster-image of (M - fairy-witch):
	if diaper quest is 1, decide on the figure of diaper fairy;
	otherwise decide on the figure of witch fairy.

To display interaction of (M - fairy-witch):
	do nothing. [No image of pink fairy because it's confusing]

Definition: fairy-witch is woods dwelling:
	if diaper quest is 0, decide yes;
	decide no.

To say AdviceAnswer of (M - fairy-witch):
	let S be a random on-stage sword;
	unless S is sword, now S is dildo sword;
	if diaper quest is 1, say "[speech style of M]'[one of]Wearing heels can help your kicks and make you look more like a grown up, but they sure are difficult to walk in if you're wearing a diaper!'[or]Cumming while in a diaper isn't just humiliating, it's likely to get you addicted to diapers if you do it too much! Which kinda sounds fun, hehe!'[or]Many years ago, the princess used a mystical amulet to seal away a super mean demon's power. [big he of ex-princess] trusted us fairies to take care of it, but we lost it! It's probably around here somewhere, you should go find it, teehee!'[or]All demons are evil, but that means they all share weaknesses to the same types of magic. There are some out there that are impervious to all physical attack, but there's no such thing as impervious to magic. That's cheating!'[in random order][roman type][line break].";
	otherwise say "[speech style of M]'[one of]Those horny vines you find around here aren't just plants. They're all part of the same forest lord who wants to [if the player is possessing a vagina]do fun stuff to your [pussy][otherwise]do fun stuff with your butthole[end if]! [big he of vine boss] lives underground!'[or][if egg laying fetish is 1 and mythical creature fetish is 1]Wasps won't come inside you, but they sure do love cumming on eggs. If you don't see many wasps around, just leave them some eggs to find!'[otherwise if pregnancy fetish is 1]Be careful around dark magic when you're pregnant. If you're not careful it might reverse it somehow!'[otherwise]Cultivate your relationship with the forest lord! [big he of vine boss]'s friendly to everyone, even mean altar witches with tiny boobs![end if][or]There's a sword here in the woods! It can only be pulled by from the stone by[if S is dildo sword] the true slut of yore![otherwise if S is demon broadsword]... um... whoever turns it on the most, I guess![otherwise if S is gladiator-sword] a warrior with a true woman's heart![otherwise]a powerful virgin warrior! Or was it powerful virgin. I don't really remember, that sword is boring anyway![end if]'[or]Penises like it when you kiss them with your [if the player is possessing a vagina]pussy[otherwise]asshole[end if]! Yeah, it's true![or]There are some elixirs so powerful you'll get pregnant just by drinking them! Make sure you drink everything you find!'[in random order][roman type][line break].";
	alwayscutshow figure of fairy interact 12 for M.

To set up (M - fairy-witch):
	reset M;
	now the monstersetup of M is 1;
	now the raw difficulty of M is the starting difficulty of M + 4;
	now the health of M is the maxhealth of M.

Definition: fairy-witch is blocker:
	if it is not airborne, decide yes;
	decide no.

Definition: fairy-witch is uniquely distracted:
	if fairy-witch is in the location of the player:
		let LM be the list of monsters in the location of the player;
		repeat with M running through LM:
			if M is fairy-witch or M is woman-player or M is not threatening, remove M from LM;
		if the refractory-period of fairy-witch <= -100 and the number of entries in LM > 0:
			sort LM in random order;
			let M be entry 1 in LM;
			say "[BigNameDesc of fairy-witch] looks at [NameDesc of M] and giggles. [big he of fairy-witch] flies towards [him of M] and throws some fairy dust over [him of M].[line break][speech style of fairy-witch]'HUGEIFY!'[roman type][line break]";
			DifficultyUp M by 1;
			now the refractory-period of fairy-witch is 150;
			decide yes;
	decide no.

To say MovementBlock of (M - fairy-witch):
	say "[one of][BigNameDesc of M] summons a wall of vines to block your path![or][BigNameDesc of M] uses magic to bend a tree branch across your path![or][BigNameDesc of M] catches your ankle with a vine, yanking you back toward [him of M].[or][BigNameDesc of M] summons a patch of brambles to block your path![in random order]".

To compute sex resist slap of (M - fairy-witch):
	say "[BigNameDesc of M] giggles at your [one of]fruitless display[or]vain efforts[or]pointless attempts[or]futile resistance[at random].[line break][speech style of M]Heeheehee![roman type][line break]".

To say WhereAnswer of (M - fairy-witch):
	say "[speech style of M]'[if the class of the player is faerie][one of]Heehee, you're at home!'[or]The forest of Bimbacia, silly![at random][otherwise]The forest of Bimbacia, the vines lord's domain![end if].'[roman type][line break]";
	alwayscutshow figure of fairy interact 11 for M.

To say WhoAnswer of (M - fairy-witch):
	say "[speech style of M]'Sabina, elder fairy witch! [big please]d to meet you.'[roman type][line break]";
	alwayscutshow figure of fairy interact 10 for M.

To compute FairyGrab of (M - fairy-witch):
	let V be a random off-stage vine;
	if the player is upright, now the stance of the player is 1;
	now M is grabbing the player;
	if V is vine and the number of vines in the location of the player is 0:
		now V is in the location of the player;
		now V is unrevealed;
		now the TrapNo of V is -400;

[The fairy-witch restrains you if there are vines in the area or a monster that wants to fuck you.]
This is the fairy-witch enabler rule:
	if current-monster is fairy-witch:
		let N be a random vine;
		let V be a random virginity taking combative monster;
		if N is in the location of the player, now V is N;
		if (V is vine or V is monster) and the player is not vine stuck and the player is not monster fucked:
			let D be the dexterity of the player;
			let R be a random number from (the difficulty of current-monster * -1) to D;
			if current-monster is airborne:
				say "[BigNameDesc of current-monster] lands on the ground [if V is monster]next to the [V][otherwise]among the vines[end if], making intricate gestures with [his of current-monster] tiny hands as the soil around [him of current-monster] begins to shift and rumble.[line break][speech style of current-monster]'Hoooaaah...'[roman type][line break]";
				now current-monster is not airborne;
			otherwise if the player is upright:
				if R < 0:
					say "[BigNameDesc of current-monster] raises [his of current-monster] hands up above [his of current-monster] head as several vines push out of the soil underneath [him of current-monster]. [one of]They lash out before you can react, yanking you to the ground and pinning your wrists down tightly[or]You don't have any time to react as they roughly sweep you off your feet and pin your wrists on the ground in front of you[or]They quickly lash out and grab your wrists, yanking you to the ground and pinning your hands to the soil[or]You don't have enough time to react as they yank you to the ground and swiftly pin your wrists to the soil[at random].[line break][speech style of current-monster]'Now, you're not going anywhere. Teehee!'[roman type][line break]";
					compute FairyGrab of current-monster;
				otherwise:
					say "[BigNameDesc of current-monster] raises [his of current-monster] hands up above [his of current-monster] head as several vines push out of the soil underneath [him of current-monster]. [one of]You swiftly dodge out of the way as they lash out at you[or]They lash out at you, but you manage to get out of the way in time[or]You barely have enough time to get out of the way as they lash out at you[or]They quickly lash out at you, almost grabbing hold of your wrists[at random].";
			otherwise:
				if R < 3:
					say "[BigNameDesc of current-monster] raises [his of current-monster] hands up above [his of current-monster] head as several vines push out of the soil underneath [him of current-monster]. [one of]You don't have time to react as they lash out at you, seizing you by the wrists and roughly pinning them to the ground[or]They quickly grab your wrists and pin them to the ground![or]You can't react fast enough! They grab your wrists and roughly pin them to the ground[or]They lash out at you, seizing your wrists and pinning them to the ground[at random].[line break][speech style of current-monster]'You're not going anywhere, Teehee!'[roman type][line break]";
					now current-monster is grabbing the player;
				otherwise:
					say "[BigNameDesc of current-monster] raises [his of current-monster] hands up above [his of current-monster] head as several vines push out of the soil underneath [him of current-monster]. [one of]You barely have time to react as they lash out at you, scrambling out of the way before they can grab you[or]They lash out at you, but you manage to get away from them in time[or]You have just enough time to get away before they can grab you[or]They almost grab you before you get away[at random]!";
			rule succeeds;
		otherwise if current-monster is not airborne:[If the fairy-witch touched down, she takes a turn to get back up]
			if the player is monster fucked:
				say "[BigNameDesc of current-monster] seems satisfied, waving for the vines to release you as [his of current-monster] wings lift [him of current-monster] back up into the air.";
				now current-monster is airborne;
				dislodge current-monster;
				satisfy current-monster;
			otherwise if the player is vine stuck:
				if the player is vine fucked:
					say "[BigNameDesc of current-monster] giggles, [one of]continuing to gesture with [his of current-monster] hands as [he of current-monster] watches the vines fuck you[or]content to watch as the vines ravish you[or]happy to watch as the vines violate you[at random].";
				otherwise:
					say "[BigNameDesc of current-monster] giggles, waiting for something to happen.";
			otherwise:
				let V be a random vine in the location of the player;
				if V is vine and the TrapNo of V < -700:
					say "[BigNameDesc of current-monster] seems satisfied, giggling as [his of current-monster] wings lift [him of current-monster] back up into the air.";
					dislodge current-monster;
					satisfy current-monster;
				otherwise:
					say "[BigNameDesc of current-monster] looks frustrated for a moment, but seems to get over it quickly as [his of current-monster] wings lift [him of current-monster] back up into the air.";
				now current-monster is airborne;
			rule succeeds.
The fairy-witch enabler rule is listed first in the fairy attacks then gets bored rules.

Fairy ends here.
