Monster Adjectives by Monster Framework begins here.


A monster is a kind of animal.  
A monster can be interested or uninterested.  A monster is usually uninterested.  [Are they currently actively looking to interact with the player?]
A monster has a number called sleep.  The sleep of a monster is usually 0.  [The number of seconds until they wake up.]
Definition: A monster is awake rather than asleep if its sleep <= 0.
A monster has a number called sex-length.  The sex-length of a monster is usually 0.  [Used in sex to determine how many turns until ejaculation.  Also can be used to track something else outside of sex.]
A monster can be anal or vaginal.  A monster is usually anal.  [Does this monster plan to use you anally or vaginally?]
A monster has a number called difficulty.  The difficulty of a monster is usually 1.  [Used in combat calculations, higher number means they take less damage and it's harder to run away]
A monster can be friendly-fucking. [Are they having consensual sex with you?]
A monster has a number called health.  The health of a monster is usually 10.  [Current HP, if this hits 0 they die.]
To decide which number is the maxhealth of (M - a monster):
	if tutorial is 1, decide on 99999;
	decide on 1 + (the difficulty of M * (4 + game difficulty)).
A monster has a number called boredom.  The boredom of a monster is usually 0.  [The number of seconds until they will begin actively perceiving.  If the monster doesn't fall asleep, set this to something between 100 and 250 after sex to stop the monster just fucking the player repeatedly.]
A monster has a number called friendly boredom.  The friendly boredom of a monster is usually 0.  [The number of turns that the monster has been following the player around.  The higher it gets, the more chance that the monster will get bored and leave the player alone.]
A monster has a number called variety.  The variety of a monster is usually 0.  [Monsters with variations or varied states can use this variable to track that.]
A monster has a room called target-room.  [Any monster that can change locations at unusual times might want to use this to hold a room in memory.]
 A monster can be captive or released.  A monster is usually released.  [Captive monsters are completely docile unless attacked, and they usually have a trigger to become 'released'.]
 A monster can be dying.  A monster is usually not dying.  [A flag used by the game to remind itself that the monster should be removed from play.]
 A monster has a number called questioned.  The questioned of a monster is usually 0.  [How many questions has this monster been asked?  Most monsters will only tolerate one.]
 A monster has a number called question-asked. The question-asked of a monster is usually 0.[Determines whether or not the monster has been asked "can you teach me something useful". Ranges from 0 to 1]
 A monster can be wenchy. A monster is usually not wenchy.
A monster has a number called times-dominated. The times-dominated of a monster is usually 0.[Like times-fucked, but for dominant sex.]
 A monster has a number called scared.  The scared of a monster is usually 0.  [How many seconds left until the monster is no longer scared.  Scared monsters will attempt to flee from the player upon sight.]
 A monster can be father material.  A monster is usually not father material.  [This means the monster can father children.]
 A monster can be dungeon dwelling.  A monster is usually not dungeon dwelling.  A monster can be woods dwelling.  A monster is usually not woods dwelling.  A monster can be hotel dwelling.  A monster is usually not hotel dwelling.  A monster can be mansion dwelling. A monster is usually not mansion dwelling. [These adjectives describe what regions a monster is allowed to spawn in, via the spawning trap.]
 A monster can be intelligent.  A monster is usually not intelligent.  [Essentially, can they speak English?]
A monster is usually female. [Male = Do they have a sex organ that can ejaculate semen?]
 A person can be raunchy.  A person is usually not raunchy.  [Are they influenced in their behaviour by sexual lust?  Mainly for deciding who is affected by "seduction" clothing.]
 A monster has a number called times-met.  The times-met of a monster is usually 0.
 A monster has a number called times-fucked.  The times-fucked of a monster is usually 0.
 A monster can be moved.  A monster is usually not moved. [Has the monster moved this turn?]
 A monster can be seeked.  A monster is usually not seeked. [Has the monster moved aggressively this turn?]
A monster can be airborne or flightless.  A monster is usually flightless. [Does the monster fly or does it walk around?  (Currently used to decide if the monster can stop the player standing back up by standing on their hair)]
A monster can be strangers, survived or triumphant.  A monster is usually strangers.  [A monster who is strangers has never voluntarily gotten aggressive at the player.  A survived monster has attacked the player, and then failed to catch them, and then gotten bored.  A triumphant monster has defeated the player. We use this to reward the player for surviving several encounters with DIFFERENT enemies.]
[The following variables are used for deciding what body parts can be automatically presented to a monster.]
A monster can be unwilling to do vaginal or willing to do vaginal.  A monster is usually unwilling to do vaginal.
A monster can be unwilling to do anal or willing to do anal.  A monster is usually unwilling to do anal.
A monster can be unwilling to do oral or willing to do oral.  A monster is usually unwilling to do oral.
A monster can be unwilling to urinate or willing to urinate.  A monster is usually unwilling to urinate.
A monster can be unwilling to do titfucks or willing to do titfucks.  A monster is usually unwilling to do titfucks.
Definition: a monster (called M) is enjoys sex:
	if M is willing to do anal or M is willing to do vaginal or M is willing to do oral or M is willing to do titfucks, decide yes;
	decide no.
A monster has an object called chosen-orifice.  The chosen-orifice of a monster is usually nothing.
[The following rules are what command the monster's behaviour in combat and sex.]
The nothing coded yet rules is a rulebook.
This is the nothing coded yet rule:
	do nothing.
The default continue sex rules is a rulebook.  A monster has a rulebook called continue sex rules.  The continue sex rules of a monster is usually the default continue sex rules.
The default end of sex rules is a rulebook.  A monster has a rulebook called end of sex rules.  The end of sex rules of a monster is usually the default end of sex rules.
The default progress sex rules is a rulebook.  A monster has a rulebook called progress sex rules.  The progress sex rules of a monster is usually the default progress sex rules.
The default priority attack rules is a rulebook.  A monster has a rulebook called priority attack rules.  The priority attack rules of a monster is usually the nothing coded yet rules.
The default taunting rules is a rulebook.  A monster has a rulebook called taunting rules.  The taunting rules of a monster is usually the default taunting rules.
A monster has a rule called the monster fucked taunting rule.  The monster fucked taunting rule of a monster is usually the default monster fucked taunting rule.
A monster has a rule called the latex punishment rule.  The latex punishment rule of a monster is usually the default latex punishment rule. [If you want your monster to be able to have sex with the player when they are a sex doll, you need to change this to the "no latex punishment rule".]
The default diaper quest rules is a rulebook.  A monster has a rulebook called the diaper quest rules.  The diaper quest rules of a monster is usually the default diaper quest rules.
A monster has a number called times-changed. 
A monster has a rule called the diaper punishment rule.  The diaper punishment rule of a monster is usually the default diaper punishment rule.
A monster has a rule called the unique punishment rule.  The unique punishment rule of a monster is usually the default unique punishment rule.
A monster has a rule called the monster convinced rule.  The monster convinced rule of a monster is usually the default monster convinced rule.
A monster has a rule called the monster friendly convinced rule.  The monster friendly convinced rule of a monster is usually the default monster friendly convinced rule.
The default monster insertion rules is a rulebook.  A monster has a rulebook called insertion rules.  The insertion rules of a monster is usually the default monster insertion rules.
The default monster attack rules is a rulebook.  A monster has a rulebook called attack rules.  The attack rules of a monster is usually the default monster attack rules.
A monster has a number called collar-pulled.  The collar-pulled of a monster is usually 0.
A monster has a rule called the pullstring rule.  The pullstring rule of a monster is usually the default pullstring rule.
A monster has a number called blue-balls. [The number of times the player has initiated friendly sex then stopped early.]
To decide which number is the blue-balls-limit of (M - a monster):
	decide on 1.
A monster has a number called refactory-period.  [This will be greater than 0 if an intelligent NPC has orgasmed recently.  It is mainly used for preventing friendly sex hundreds of times in a row without pause.]
To decide which number is the refactory time of (M - a monster):
	decide on 120. [This can be tweaked for balancing purposes.  Goes down by 4 per round.]
A monster can be dragging.
A monster has a number called monstersetup. The monstersetup of a monster is usually 0.
A monster has a number called loot dropped.  The loot dropped of a monster is usually 0.
A monster has a number called leftover-type. The leftover-type of a monster is usually 100.
A monster can be dark skinned.  A monster is usually not dark skinned.
A monster can be doing nothing special, spanking the player, changing the player, feeding the player, whipping the player, masturbating the player, enema-filling the player (this is the punishment-attack-state property).
A monster can be paralyzed or limber. A monster is usually limber.
A monster can be poisoned or healthy. A monster is usually healthy. 
A monster can be poison vulnerable or poison immune. A monster is usually poison vulnerable.
A monster can be blinded or not-blinded. A monster is usually not-blinded.
A monster can be reacted-already.  [This is used in ass squirting function which occurs over several turns to track which NPCs have already reacted to this particular episode]
A monster has a number called diaper-duration. [NPCs can put the player in a diaper and this will usually be uncursed, the reason the player is motivated to keep it on is that they will receive further punishments if the NPC finds them without a diaper within this duration.]
A monster has a number called diaper-duration-ended. [When this gets set to 1, we know that the NPC needs to inform the player that their diaper punishment has ended.]
Understand "NPC", "enemy" as a monster.
A monster can be wrapped or unwrapped.  A monster is usually unwrapped. [Are they wearing a condom?]
A monster has a number called selection-frustration.  [Have they tried the same body part several times without success?]
A monster can be mating. [Has the player given birth to their spawn?]

Definition: a monster (called M) is blocker:
	decide yes.

Definition: a monster (called M) is visible:
	if M is in the location of the player or M is nearby, decide yes;
	decide no.

Definition: a monster (called M) is virginity taking:
	if M is female, decide no;
	decide yes.

Definition: a monster is already moved:
	if a monster is moved or a monster is seeked, decide yes;
	decide no.

Definition: a monster is unmoved:
	if a monster is already moved, decide no;
	decide yes.

A monster has a number called last-interaction.  The last-interaction of a monster is usually 0.  
 [
Last-Interaction, delayed, expectant are used to track submissive interactions between the player and an unfriendly NPC.
Last Interaction Reference:
0: Default, nothing interesting
1: Player delayed the monster already and wasn't aggressive since
2: Player delayed the monster by acting submissive this turn
]

Definition: A monster (called M) is delayed:
	if the last-interaction of M is 2:
		decide yes;
	decide no.

Definition: A person (called M) is live:
	decide yes.

Definition: A monster (called M) is expectant:
	if the last-interaction of M > 0 and M is interested and M is unfriendly:
		decide yes;
	decide no.

Definition: A monster (called M) is willing to shag: [A willing monster is one who is currently available for consensual sex.]
	decide no.

Definition: a monster (called M) is controlling: [Will they grab onto subduing clothing e.g. a clitoris lead?  This way we can make mostly non-intelligent NPCs like the hellhound grab on.]
	if M is intelligent, decide yes;
	decide no.

monster-adjective is a kind of value.  The monster-adjectives are nonexistant, buzzing, hovering, angry, newborn, daddy, massive, large.  A monster has a monster-adjective.  Understand the monster-adjective property as describing a monster.  

Definition: a monster-adjective (called A) is unused:
	repeat with M running through alive monsters:
		if the monster-adjective of M is A, decide no;
	decide yes;

The monster adjectives scrambling rules is a rulebook.

To scramble monster adjectives:
	follow the monster adjectives scrambling rules.

To decide which number is the girth of (M - a monster):
	decide on 0.

To decide which number is the semen load of (M - a monster):
	decide on the girth of M.

Definition: a monster is alive if it is on-stage.  Understand "alive" as a thing when item described is on-stage.

To decide which number is the amount of available directions of (M - a monster):
	let X be 0;
	now neighbour finder is the location of M;
	repeat with D running through N-viable directions:
		increase X by 1;
	decide on X.


Monster Adjectives ends here.
