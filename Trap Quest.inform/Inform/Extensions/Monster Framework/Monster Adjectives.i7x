Monster Adjectives by Monster Framework begins here.

A monster is a kind of animal. A dungeon boss is a kind of monster.
Definition: a dungeon boss is summoningRelevant: decide no. [Doesn't count towards the number of monsters in the region for the purposes of summoning portals.]
A monster can be interested or uninterested. A monster is usually uninterested. [Are they currently actively looking to interact with the player?]
A monster has a number called sleep. The sleep of a monster is usually 0. [The number of seconds until they wake up.]
Definition: A monster is awake rather than asleep if its sleep <= 0 and timeBombTime <= 0.
A monster has a number called sex-length. The sex-length of a monster is usually 0. [Used in sex to determine how many turns until ejaculation. Also can be used to track something else outside of sex.]
A monster has a number called raw difficulty. The raw difficulty of a monster is usually 1. [Used in combat calculations, higher number means they take less damage and it's harder to run away]
To decide which number is the difficulty of (M - a monster):
	decide on the raw difficulty of M + game difficulty.
To decide which number is the difficulty-base of (M - a monster):
	if M is hotel dwelling:
		decide on 12;
	if M is mansion dwelling:
		decide on 12;
	if M is woods dwelling:
		decide on 9;
	if M is dungeon dwelling:
		decide on 6;
	decide on 5.
A monster can be friendly-fucking. [Are they having non-aggressive sex with you?]
Definition: a monster is damageable: decide yes. [A monster who is not damageable takes no damage from attacks.]
A monster has a number called health. The health of a monster is usually 10. [Current HP, if this hits 0 they die.]
To decide which number is the maxhealth of (M - a monster):
	if tutorial is 1, decide on 99999;
	let X be 3;
	increase X by (the difficulty of M * 10) / 3;
	if M is durable-tentacle-monster, increase X by the difficulty of M;
	decide on X.
A monster has a number called boredom. The boredom of a monster is usually 0. [The number of seconds until they will begin actively perceiving. If the monster doesn't fall asleep, set this to something between 100 and 250 after sex to stop the monster just fucking the player repeatedly.]
A monster has a number called friendly boredom. The friendly boredom of a monster is usually 0. [The number of turns that the monster has been following the player around. The higher it gets, the more chance that the monster will get bored and leave the player alone.]
A monster has a room called target-room. [Any monster that can change locations at unusual times might want to use this to hold a room in memory.]
[A monster can be captive or released. A monster is usually released.] [Captive monsters are completely docile unless attacked, and they usually have a trigger to become 'released'.] [Replaced with the monster-restriction property]
A monster can be dying. A monster is usually not dying. [A flag used by the game to remind itself that the monster should be removed from play.]
A monster has a number called questioned. The questioned of a monster is usually 0. [How many questions has this monster been asked? Most monsters will only tolerate one.]
 Definition: A monster (called M) is wenchy: decide no.
A monster has a number called times-dominated. The times-dominated of a monster is usually 0.[Like times-submitted, but for dominant sex.]
A monster has a number called scared. The scared of a monster is usually 0. [How many seconds left until the monster is no longer scared. Scared monsters will attempt to flee from the player upon sight.]
Definition: a monster (called M) is father material:[This means the monster can father children.]
	if M is male, decide yes;
	decide no.
A person can be intelligent or unintelligent. A monster is usually unintelligent. [Essentially, can they speak English?; TODO: definition]
A monster is usually female. [Male = Do they have a sex organ that can ejaculate semen?]
A monster has a number called times-met. The times-met of a monster is usually 0.
A monster has a number called times-submitted. The times-submitted of a monster is usually 0.
A monster can be moved. A monster is usually not moved. [Has the monster moved this turn?]
A monster can be seeked. A monster is usually not seeked. [Has the monster moved aggressively this turn?]
A monster can be stalled. A monster is usually not stalled. [If the player is moving slowly so monsters get a double move, monsters in the location of the player who aren't already chasing the player lose their second action.]
A monster can be notebook-studied. A monster is usually not notebook-studied.
A monster can be bossdefeated. A monster is usually not bossdefeated.
A monster can be diaper-committed. A monster is usually not diaper-committed.
A monster can be double-diaper-committed. A monster is usually not double-diaper-committed.
A monster has a number called dismissRefused. [Have they refused to be dismissed?]
A monster can be summon-available or permanently banished. A monster is usually summon-available. [Can it come back?]
Definition: a monster is summon appropriate if it is summon-available and it is summoningRelevant. [Can it be randomly selected to be summoned?]

[These adjectives describe what regions a monster is allowed to spawn in, via the spawning trap and summoning portals.]
Definition: a monster is dungeon dwelling: decide no.
Definition: a monster is woods dwelling: decide no.
Definition: a monster is hotel dwelling: decide no.
Definition: a monster is mansion dwelling: decide no.
Definition: a monster (called M) is regionally missing:
	let T1 be the substituted form of "[ShortDesc of M]";
	repeat with N running through in-play monsters:
		let T2 be the substituted form of "[ShortDesc of N]";
		if T1 is T2, decide no;
	decide yes.

A monster can be intelligent. A monster is usually unintelligent. [Essentially, can they speak English?]
Definition: a monster is raunchy: decide no.
A monster can be airborne or flightless. A monster is usually flightless. [Does the monster fly or does it walk around? (Currently used to decide if the monster can stop the player standing back up by standing on their hair)]
A monster can be strangers, survived or triumphant (this is the monster-history property). A monster is usually strangers. [A monster who is strangers has never voluntarily gotten aggressive at the player. A survived monster has attacked the player, and then failed to catch them, and then gotten bored. A triumphant monster has defeated the player. We use this to reward the player for surviving several encounters with DIFFERENT enemies.]
[The following variables are used for deciding what body parts can be automatically presented to a monster.]
Definition: a monster (called M) is willing to do vaginal:
	if M is male, decide yes;
	decide no.

Definition: a monster (called M) is willing to do anal:
	if M is male, decide yes;
	decide no.

Definition: a monster (called M) is willing to do oral:
	if M is male, decide yes;
	decide no.

Definition: a monster is willing to urinate: decide no.

Definition: a monster (called M) is willing to do titfucks:
	if M is male, decide yes;
	decide no.

Definition: a monster (called M) is willing to charm snakes: decide no.[penis-centric sex]

Definition: a monster (called M) is enjoys sex:
	if M is willing to do anal or M is willing to do vaginal or M is willing to do oral or M is willing to do titfucks, decide yes;
	decide no.
A monster has an object called chosen-orifice. The chosen-orifice of a monster is usually nothing.
[The following rules are what command the monster's behaviour in combat and sex.]
The nothing coded yet rules is a rulebook.
This is the nothing coded yet rule:
	do nothing.
The default continue sex rules is a rulebook. A monster has a rulebook called continue sex rules. The continue sex rules of a monster is usually the default continue sex rules.
The default end-of-sex rules is a rulebook. A monster has a rulebook called end-of-sex-rules. The end-of-sex-rules of a monster is usually the default end-of-sex rules.
The default progress sex rules is a rulebook. A monster has a rulebook called progress sex rules. The progress sex rules of a monster is usually the default progress sex rules.
The default priority attack rules is a rulebook. A monster has a rulebook called priority attack rules. The priority attack rules of a monster is usually the nothing coded yet rules.
The default taunting rules is a rulebook. A monster has a rulebook called taunting rules. The taunting rules of a monster is usually the default taunting rules.
A monster has a rule called the monster fucked taunting rule. The monster fucked taunting rule of a monster is usually the default monster fucked taunting rule.
A monster has a rule called the latex punishment rule. The latex punishment rule of a monster is usually the default latex punishment rule. [If you want your monster to be able to have sex with the player when they are a sex doll, you need to change this to the "no latex punishment rule".]
The default diaper quest rules is a rulebook. A monster has a rulebook called the diaper quest rules. The diaper quest rules of a monster is usually the default diaper quest rules.
A monster has a number called times-changed.
A monster has a rule called the diaper punishment rule. The diaper punishment rule of a monster is usually the default diaper punishment rule.
A monster has a rule called the unique punishment rule. The unique punishment rule of a monster is usually the default unique punishment rule.
A monster has a rule called the monster convinced rule. The monster convinced rule of a monster is usually the default monster convinced rule.
A monster has a rule called the monster friendly convinced rule. The monster friendly convinced rule of a monster is usually the default monster friendly convinced rule.
The default monster insertion rules is a rulebook. A monster has a rulebook called insertion rules. The insertion rules of a monster is usually the default monster insertion rules.
The default monster attack rules is a rulebook. A monster has a rulebook called attack rules. The attack rules of a monster is usually the default monster attack rules.
A monster has a number called collar-pulled.
A monster has a rule called the pullstring rule. The pullstring rule of a monster is usually the default pullstring rule.
A monster has a number called blue-balls. [A value increased by initiating friendly sex then stopping early, or by seducing. Resets to 0 on orgasm.]
To decide which number is the blue-balls-limit of (M - a monster):
	decide on 10.
A monster has a number called refractory-period. [This will be greater than 0 if an intelligent NPC has orgasmed recently. It is mainly used for preventing friendly sex hundreds of times in a row without pause.]
To decide which number is the refractory-time of (M - a monster):
	decide on 300. [This can be tweaked for balancing purposes. Goes down by 4 per round.]
A monster can be dragging.
A monster has a number called monstersetup.
Definition: a monster is nonexistant if the monstersetup of it is 0.
A monster has a number called loot dropped.
A monster has a number called leftover-type. The leftover-type of a monster is usually 100.

Definition: a monster is dark skinned: decide no.
Definition: a monster is musky: decide no.

A monster can be doing nothing special, spanking the player, changing the player, feeding the player, whipping the player, masturbating the player, enema-filling the player (this is the punishment-attack-state property).
A monster has a number called paralyse-status. [paralyse status of -1 makes you immune]
Definition: A monster is paralysed rather than not-paralysed if its paralyse-status > 0.
A monster has a number called poison-status. [poison status of -1 makes you immune]
Definition: A monster is poisoned rather than not-poisoned if its poison-status > 0.
A monster has a number called blind-status. [blind status of -1 makes you immune]
Definition: A monster is blinded rather than not-blinded if its blind-status > 0.
A monster has a number called diaper-duration. [NPCs can put the player in a diaper and this will usually be uncursed, the reason the player is motivated to keep it on is that they will receive further punishments if the NPC finds them without a diaper within this duration.]
A monster has a number called diaper-duration-ended. [When this gets set to 1, we know that the NPC needs to inform the player that their diaper punishment has ended.]
Definition: a monster is diaper-instructing if the diaper-duration of it > 0.

A monster can be wrapped or unwrapped. A monster is usually unwrapped. [Are they wearing a condom?]
A monster has a number called selection-frustration. [Have they tried the same body part several times without success?]
A monster can be mating. [Has the player given birth to their spawn?]
A monster has a number called waitress-boredom.

Definition: a monster is blocker: decide yes.

Definition: a monster is visible if it is in the location of the player or it is nearby.

Definition: a monster is virginity taking if it is male.

Definition: a monster is already moved rather than unmoved if it is moved or it is seeked.

A monster has a number called last-interaction. The last-interaction of a monster is usually 0.
 [
Last-Interaction, delayed, expectant are used to track submissive interactions between the player and an unfriendly NPC.
Last Interaction Reference:
0: Default, nothing interesting
1: Player delayed the monster already and wasn't aggressive since
2: Player delayed the monster by acting submissive this turn
]

Definition: A monster is delayed if the last-interaction of it is 2.

Definition: A person is live: decide yes.

Definition: A monster (called M) is expectant:
	if the last-interaction of M > 0 and M is interested and M is unfriendly:
		decide yes;
	decide no.

Definition: a monster is willing to shag: decide no. [A willing monster is one who is currently available for consensual sex.]
Definition: a monster is willing to shag right now if it is willing to shag and the refractory-period of it < 0. [Currently available for consensual sex and hasn't orgasmed recently.]

Definition: a monster is controlling if it is intelligent. [Will they grab onto subduing clothing e.g. a clitoris lead? This way we can make mostly non-intelligent NPCs like the hellhound grab on.]

To decide which number is the girth of (M - a monster):
	if M is male, decide on 2; [Normal penis girth]
	decide on 0.

To decide which number is the base semen load of (M - a monster):
	decide on the girth of M.

To decide which number is the semen load of (M - a monster):
	if the trophy-mode of ejaculate-trophy is 1, decide on (the girth of M * 2) + 5;
	decide on the girth of M.

Definition: a person is alive if it is on-stage. Understand "alive" as a thing when item described is on-stage.

To decide which number is the amount of available directions of (M - a monster):
	let X be 0;
	now neighbour finder is the location of M;
	repeat with D running through N-viable directions:
		increase X by 1;
	decide on X.

A monster has a number called conversation-sequence.
[
Unleashed: Normal NPC state
Caged: Can be unfriendly but can't physically interact with the player, or move.
Guarding: Doesn't move location while in this state. Can be unfriendly and fight. If you want them to chase, they should become unleashed after noticing the player.
Unconcerned: Doesn't become unfriendly (dangerous) while in this state.
The rest: Different variations of an NPC who is essentially permanently defeated - unable to move, fight, etc! But maybe can be still interacted with by the player. Maybe the player can fuck them, or talk to them.
]
A monster can be unleashed, caged, guarding, unconcerned, fucked-silly, sex-enslaved, diaper-enslaved (this is the monster-restriction property). A monster is usually unleashed.
Definition: a monster is threatening rather than non-threatening if it is unleashed or it is guarding. [non-threatening can't attack the player (but might be unfriendly and caged)]
Definition: a monster is pacified if it is non-threatening and it is not caged. [Will never be unfriendly in its current state]
Definition: a monster is defeated rather than undefeated if it is fucked-silly or it is sex-enslaved or it is diaper-enslaved. [It's got knocked down, it's not getting up again, it's always going to let you keep it down.]

Definition: a monster is messy if it is diaper-enslaved and the refractory-period of it <= (the messRefractoryLimit of it) and diaper messing >= 6 and playerRegion is not school.

Definition: a monster is scarable: decide yes. [Can this monster be made to flee? Mostly just overridden for bosses.]

A monster can be seduced, unseduced or seduction-refused (this is the monster-seduction property). A monster is usually unseduced. [Is the player currently playing a seduction minigame with it? If it has refused seduction then it won't allow the seduction to happen again.]
Definition: a monster is seducable if it is male and it is intelligent and it is willing to do anal.
Definition: a monster is actually seducable if diaper quest is 0 and it is seducable and it is reactive and it is interested and it is unseduced and it is not penetrating a body part.
A monster has a number called teaseTimer. [This number goes up when a defeated monster is dominated then down each turn. It stops the player from being able to continuously gain stats by dominating an NPC over and over again.]

A monster has a number called throating. [Is it currently doing deepthroat oral? If so, for how many turns shall it do this?]
Definition: a monster is throater if the throating of it > 0.
To say silentThroat (M - a monster): [Shortcut to flag to the game that the NPC is deepthroating this turn]
	increase the throating of M by 1.


Monster Adjectives ends here.
