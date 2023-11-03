Monster Adjectives by Monster Framework begins here.

A monster is a kind of animal. A dungeon boss is a kind of monster.
Definition: a dungeon boss is summoningRelevant: decide no. [Doesn't count towards the number of monsters in the region for the purposes of summoning portals.]
Definition: a dungeon boss is a urinater: decide no.
A monster can be interested or uninterested. A monster is usually uninterested. [Are they currently actively looking to interact with the player?]
A monster has a number called sleep. [The number of seconds until they wake up.]
Definition: a monster is awake rather than asleep:
	if the sleep of it <= 0 and timeBombTime <= 0, decide yes;
	decide no.
A monster has a number called sex-length. [Used in sex to determine how many turns until ejaculation. Also can be used to track something else outside of sex.]
A monster has a number called raw difficulty. The raw difficulty of a monster is usually 1. [Used in combat calculations, higher number means they take less damage and it's harder to run away]
To decide which number is the difficulty of (M - a monster):
	decide on the raw difficulty of M[ + game difficulty].
To decide which number is the starting difficulty of (M - a monster):
	if M is hotel dwelling:
		decide on 11;
	if M is mansion dwelling:
		decide on 10;
	if M is woods dwelling:
		decide on 8;
	if M is dungeon dwelling:
		decide on 6;
	decide on 5.
A monster can be friendly-fucking. [Are they having non-aggressive sex with you?]
A monster can be not-getting-licked, getting-licked, or getting-asslicked (this is the monster-licking property). [Is your tongue on a different part of their body than their genitals?]
Definition: a monster is damageable: decide yes. [A monster who is not damageable takes no damage from attacks.]
A monster has a number called health. The health of a monster is usually 10. [Current HP, if this hits 0 they die.]
To decide which number is the maxhealth of (M - a monster):
	decide on the initial maxhealth of M * combatSpeed.
To decide which number is the initial maxhealth of (M - a monster):
	if tutorial is 1, decide on 99999;
	let X be 10;
	increase X by (the difficulty of M * 7) / 3;
	if M is durable-tentacle-monster, increase X by the difficulty of M;
	decide on X.
A monster has a number called boredom. [The number of seconds until they will begin actively perceiving. If the monster doesn't fall asleep, set this to something between 100 and 250 after sex to stop the monster just fucking the player repeatedly.]
A monster has a number called friendly boredom. [The number of turns that the monster has been following the player around. The higher it gets, the more chance that the monster will get bored and leave the player alone.]
A monster has a room called target-room. [Any monster that can change locations at unusual times might want to use this to hold a room in memory.]
A monster has a room called target-toilet. [This is the toilet that the NPC prefers to use.]
[A monster can be captive or released. A monster is usually released.] [Captive monsters are completely docile unless attacked, and they usually have a trigger to become 'released'.] [Replaced with the monster-restriction property]
A monster can be dying. [A flag used by the game to remind itself that the monster should be removed from play.]
Definition: A monster is wenchy: decide no.
A monster has a number called times-dominated. [Like times-submitted, but for dominant sex.]
A monster has a number called scared. [How many seconds left until the monster is no longer scared. Scared monsters will attempt to flee from the player upon sight.]
Definition: a monster is father material:[This means the monster can father children.]
	if it is male, decide yes;
	decide no.
[The first value mentioned becomes the default. Because a monster is a kind of animal which is a kind of person, we also set the default (un)intelligence of a monster here too.]
A person can be intelligent or unintelligent. A monster is usually unintelligent. [Essentially, can they speak English?; TODO: definition]
[This is redundant we believe, so Selkie has commented it out.
A monster can be intelligent. A monster is usually unintelligent. [Essentially, can they speak English?]
]
[A monster is an animal, which is a subclass of a person, and a person can be intelligent or unintelligent.]
A monster is usually female. [Male = Do they have a sex organ that can ejaculate semen?]
A monster has a number called times-met.
A monster has a number called times-submitted.
A monster can be moved. [Has the monster moved this turn?]
A monster can be seeked. [Has the monster moved aggressively this turn?]
A monster can be stalled. [If the player is moving slowly so monsters get a double move, monsters in the location of the player who aren't already chasing the player lose their second action.]
A monster can be trip-warned.[Did the player get a warning about their incoming trip attack last turn?]
A monster can be notebook-studied.
A monster can be bossdefeated.
A monster can be diaper-committed.
A monster can be double-diaper-committed. [Going to double diaper you now]
A monster can be diaperMessReacted. [Have they already recently reacted to the player messing themselves?]
A monster has a number called dismissRefused. [Have they refused to be dismissed?]
A monster can be summon-available or permanently banished. A monster is usually summon-available. [Can it come back?]
Definition: a monster is summon appropriate:
	if it is summon-available and it is summoningRelevant, decide yes;
	decide no. [Can it be randomly selected to be summoned?]
A monster has a number called time-alive. [How long has it been hanging around recently]
Definition: a monster is willing to have time out: [Will it sometimes go off-stage for a while, to allow a different NPC to spawn]
	if the class of the player is bride and bride-consort is it, decide no;
	if it is intelligent and it is summoningRelevant, decide yes;
	decide no.

[These adjectives describe what regions a monster is allowed to spawn in, via the spawning trap and summoning portals.]
Definition: a monster is dungeon dwelling: decide no.
Definition: a monster is woods dwelling: decide no.
Definition: a monster is hotel dwelling: decide no.
Definition: a monster is mansion dwelling: decide no.

To say speech style of (M - a person):
	if M is male, say first custom style; [has a penis = red]
	otherwise say second custom style.
To say speech style of (M - yourself):
	say variable custom style.
Definition: a monster is raunchy: decide no. [is it interested in friendly sex]
A monster can be airborne or flightless. A monster is usually flightless. [Does the monster fly or does it walk around? (Currently used to decide if the monster can stop the player standing back up by standing on their hair)]
A monster can be strangers, survived or triumphant (this is the monster-history property). A monster is usually strangers. [A monster who is strangers has never voluntarily gotten aggressive at the player. A survived monster has attacked the player, and then failed to catch them, and then gotten bored. A triumphant monster has defeated the player. We use this to reward the player for surviving several encounters with DIFFERENT enemies.]
[The following variables are used for deciding what body parts can be automatically presented to a monster.]
Definition: a monster is willing to do vaginal:
	if it is male, decide yes;
	decide no.
Definition: a monster is willing to do anal:
	if it is male, decide yes;
	decide no.
Definition: a monster is willing to do oral:
	if it is male, decide yes;
	decide no.
Definition: a monster is willing to urinate: decide no.
Definition: a monster is willing to do licking:
	if it is human and it is intelligent and it is raunchy, decide yes;
	decide no.
Definition: a monster is willing to do anilingus:
	if it is willing to do licking and a2m fetish > 0, decide yes;
	decide no.
Definition: a monster is eager to do anilingus:
	if it is willing to do anilingus and the remainder after dividing earnings by 4 < (a2m fetish + 1), decide yes; [50% of turns for a2m = 1; 75% of turns for a2m = 2]
	decide no.
Definition: a monster is willing to do titfucks:
	if it is male, decide yes;
	decide no.
Definition: a monster is willing to charm snakes: decide no.[penis-centric sex]
Definition: a monster is condom obsessed: decide no. [Does he always use condoms if possible?]
Definition: a monster is condom prepared: [Does he have condoms on him?]
	if it is condom obsessed, decide yes;
	decide no.
Definition: a monster (called M) is enjoys sex:
	if M is willing to do anal or M is willing to do vaginal or M is willing to do oral or M is willing to do titfucks, decide yes;
	decide no.
Definition: a monster is wrangling-while-kneeling: decide no. [For use if there's NPCs that need to maintain their wrangles when the players gets on their knees.]
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
A monster has a number called times-changed. [THIS SHOULD NEVER BE RESET TO 0. The diaper addiction section of the humiliating situation 'low-addiction' makes an assumption that if the player has had their diaper changed, there will be a monster out there with this at a nonzero level.]
Definition: a monster is change-intimate:
	if the times-changed of it > 0, decide yes;
	decide no.
A monster has a rule called the diaper punishment rule. The diaper punishment rule of a monster is usually the default diaper punishment rule.
A monster has a rule called the stolen item recovery rule. The stolen item recovery rule of a monster is usually the default stolen item recovery rule.
A monster has a rule called the unique punishment rule. The unique punishment rule of a monster is usually the default unique punishment rule.
A monster has a rule called the monster convinced rule. The monster convinced rule of a monster is usually the default monster convinced rule.
A monster has a rule called the monster friendly convinced rule. The monster friendly convinced rule of a monster is usually the default monster friendly convinced rule.
The default monster insertion rules is a rulebook. A monster has a rulebook called insertion rules. The insertion rules of a monster is usually the default monster insertion rules.
The default monster attack rules is a rulebook. A monster has a rulebook called attack rules. The attack rules of a monster is usually the default monster attack rules.
A monster has a number called collar-pulled.
A monster has a rule called the pullstring rule. The pullstring rule of a monster is usually the default pullstring rule.
A monster has a number called blue-balls. [A value increased by initiating friendly sex then stopping early, or by seducing. Resets to 0 on orgasm.]
To decide which number is the blue-balls-limit of (M - a monster):
	let B be the default blue-balls-limit of M;
	if the class of the player is stripper, increase B by 6;
	decide on B.
To decide which number is the default blue-balls-limit of (M - a monster):
	decide on 10.
A monster has a number called refractory-period. [This will be greater than 0 if an intelligent NPC has orgasmed recently. It is mainly used for preventing friendly sex hundreds of times in a row without pause. In diaper quest it is instead used for diapered NPC messing timers.]
To decide which number is the refractory-time of (M - a monster):
	decide on 300. [This can be tweaked for balancing purposes. Goes down by 4 per round.]
A monster has a number called bladder. The bladder of a monster is usually 400. [Increases by 4 each turn. Divide by 100 to get a number similar to player's bladder]
Definition: a monster is a urinater: decide yes. [Does this NPC have a bladder, and urinate?]
Definition: a monster is a diaper wetter: decide no. [Does this NPC use a diaper rather than a toilet to urinate?]
A monster can be enticed. [Has it already tried to entice the player this combat?]
A monster has a number called temporary-damage-reduction. [Does this NPC have extra damage reduction until the next time they get bored?]
A monster can be dragging.
A monster has a number called monstersetup.
Definition: a monster is nonexistent:
	if the monstersetup of it is 0, decide yes;
	decide no.
A monster has a number called loot dropped.
A monster has a number called leftover-type. The leftover-type of a monster is usually 100.

Definition: a monster is dark skinned: decide no.
Definition: a monster is pale skinned:
	if it is human and it is not dark skinned and it is not infernal, decide yes;
	decide no.
Definition: a monster is musky: decide no.
Definition: a monster is a generic-unlocker: decide no. [Does it have access to keys to unlock clothing?]
Definition: a monster is a clothes-destroyer: decide no. [Does it have enough strength to easily rip clothes apart, even ones with a metal chain and lock?]

A monster can be doing nothing special, spanking the player, changing the player, feeding the player, whipping the player, masturbating the player, enema-filling the player, diaper-facesitting the player (this is the punishment-attack-state property).
A monster has a number called paralyse-status. [paralyse status of -1 makes you immune]
Definition: A monster is paralysed rather than not-paralysed:
	if the paralyse-status of it > 0, decide yes;
	decide no.
A monster has a number called poison-status. [poison status of -1 makes you immune]
Definition: A monster is poisoned rather than not-poisoned:
	if the poison-status of it > 0, decide yes;
	decide no.
A monster has a number called blind-status. [blind status of -1 makes you immune]
Definition: A monster is blinded rather than not-blinded:
	if the blind-status of it > 0, decide yes;
	decide no.
A monster has a number called diaper-duration. [NPCs can put the player in a diaper and this will usually be uncursed, the reason the player is motivated to keep it on is that they will receive further punishments if the NPC finds them without a diaper within this duration.]
A monster has a number called diaper-duration-ended. [When this gets set to 1, we know that the NPC needs to inform the player that their diaper punishment has ended.]
Definition: a monster is diaper-instructing:
	if the diaper-duration of it > 0, decide yes;
	decide no.

A monster can be wrapped or unwrapped. A monster is usually unwrapped. [Are they wearing a condom?]
A monster has a number called selection-frustration. [Have they tried the same body part several times without success, or waited several turns to be able to fuck without success?]
A monster can be mating. [Has the player given birth to their spawn?]
A monster has a number called waitress-boredom.

Definition: a monster is blocker: decide yes.

Definition: a monster is visible:
	if it is in the location of the player or it is nearby, decide yes;
	decide no.

Definition: a monster is virginity taking:
	if it is male, decide yes;
	decide no.
Definition: a monster is penis-virginity taking: decide yes.

Definition: a monster is already moved rather than unmoved:
	if it is moved or it is seeked, decide yes;
	decide no.

A monster has a number called last-interaction.
[
Last-Interaction, delayed, expectant are used to track submissive interactions between the player and an unfriendly NPC.
Last Interaction Reference:
0: Default, nothing interesting
1: Player delayed the monster already and wasn't aggressive since
2: Player delayed the monster by acting submissive this turn
]

Definition: a monster is delayed:
	if the last-interaction of it is 2, decide yes;
	decide no.
Definition: a monster (called M) is expectant:
	if the last-interaction of M > 0 and M is interested and M is unfriendly, decide yes;
	decide no.

Definition: a person is live: decide yes.

Definition: a monster is willing to shag: decide no. [A willing monster is one who is currently available for consensual sex.]
Definition: a monster is willing to shag right now:
	if it is willing to shag and the refractory-period of it < 0, decide yes;
	decide no. [Currently available for consensual sex and hasn't orgasmed recently]

Definition: a monster is controlling:
	if it is intelligent, decide yes;
	decide no. [Will they grab onto subduing clothing e.g. a clitoris lead? This way we can make mostly non-intelligent NPCs like the hellhound grab on]

To decide which number is the girth of (M - a monster):
	if M is male, decide on 2; [Normal penis girth]
	decide on 0.

To decide which number is the base semen load of (M - a monster):
	decide on the girth of M.

To decide which number is the semen load of (M - a thing):
	if the trophy-mode of ejaculate-trophy is 1, decide on (the girth of M * 2) + 5;
	decide on the girth of M.

Definition: a person is alive:
	if it is on-stage, decide yes;
	decide no.
Understand "alive" as a thing when item described is on-stage.

To decide which number is the amount of available directions of (M - a monster):
	let X be 0;
	now neighbour finder is the location of M;
	repeat with D running through N-viable directions:
		increase X by 1;
	decide on X.

[
Unleashed: Normal NPC state
Caged: Can be unfriendly but can't physically interact with the player, or move.
Guarding: Doesn't move location while in this state. Can be unfriendly and fight. If you want them to chase, they should become unleashed after noticing the player.
Unconcerned: Doesn't become unfriendly (dangerous) while in this state.
The rest: Different variations of an NPC who is essentially permanently defeated - unable to move, fight, etc! But maybe can be still interacted with by the player. Maybe the player can fuck them, or talk to them.
]
A monster can be unleashed, caged, guarding, unconcerned, fucked-silly, sex-enslaved, diaper-enslaved (this is the monster-restriction property). A monster is usually unleashed.
Definition: a monster is threatening rather than non-threatening:
	if it is unleashed or it is guarding, decide yes;
	decide no. [non-threatening can't attack the player (but might be unfriendly and caged)]
Definition: a monster (called M) is attack-threatening: [monsters that are NOT attack-threatening skip the 'compute attack' function.]
	if debugmode > 1, say "[M] is [if M is unfriendly]un[end if]friendly.";
	if M is threatening and M is unfriendly and M is not submission-assisting, decide yes;
	decide no.
Definition: a monster is pacified rather than unpacified:
	if it is non-threatening and it is not caged, decide yes;
	decide no. [Will never be unfriendly in its current state]
Definition: a monster is defeated rather than undefeated:
	if it is fucked-silly or it is sex-enslaved or it is diaper-enslaved, decide yes;
	decide no. [It's got knocked down, it's not getting up again, it's always going to let you keep it down]

Definition: a monster is messy:
	if it is diaper-enslaved and the refractory-period of it <= (the messRefractoryLimit of it) and diaper messing >= 6 and playerRegion is not school, decide yes;
	if it is caged and it is in the location of dominatrix-cage and the mess of dominatrix-cage > 0, decide yes;
	decide no.
Definition: a monster is messy-seeker: decide yes. [Does this NPC follow the player around like a fly when messy?]

Definition: a monster is scarable: decide yes. [Can this monster be made to flee? Mostly just overridden for bosses.]

A monster can be seduced, unseduced or seduction-refused (this is the monster-seduction property). A monster is usually unseduced. [Is the player currently playing a seduction minigame with it? If it has refused seduction then it won't allow the seduction to happen again.]
Definition: a monster is seduce-satisfiable:
	if it is intelligent and it is not robot, decide yes;
	decide no. [Can the player bring it closer to orgasm? If not, seduction will mainly be about condoms]
Definition: a monster is seducable:
	if it is willing to do oral or it is willing to do anal or it is willing to do vaginal or (it is willing to charm snakes and the player is possessing a penis), decide yes;
	decide no.
Definition: a monster is actually seducable:
	if diaper quest is 0 and it is seducable and it is reactive and it is interested and it is unseduced and it is not penetrating a body part, decide yes;
	decide no.
A monster has a number called teaseTimer. [This number goes up when a defeated monster is dominated then down each turn. It stops the player from being able to continuously gain stats by dominating an NPC over and over again.]


A monster has a number called throating. [Is it currently doing deepthroat oral? If so, for how many turns shall it do this?]
Definition: a thing is throater: decide no. [Does it always cause deepthroat?]
Definition: a thing is actual throater:
	if it is a monster and the throating of it > 0, decide yes;
	if it is throater:
		if it is monster and it is not not-getting-licked, decide no; [penetrating face, but not in the normal way]
		decide yes;
	decide no.
To say silentThroat (M - a monster): [Shortcut to flag to the game that the NPC is deepthroating this turn]
	increase the throating of M by 1.
To instantThroat (M - a monster): [Deepthroat and check for gagging right away]
	increase the throating of M by 1;
	follow the do we puke rule.

Definition: a monster (called M) is a balls-haver:
	unless M is male, decide no;
	if lady fetish is 2, decide yes;
	if futanari fetish is 1, decide yes;[This is specifically futanari fetish "is 1", not "> 0"]
	decide no.

A monster has a list of things called banishItems.
A monster has a list of things called taxableItems.
A monster has a list of things called tradableItems.

A game universe initialisation rule:
	let L be the list of off-stage mass collectibles;
	repeat with M running through mass collectibles:
		add M to L, if absent;
	sort L in random order;
	repeat with M running through intelligent monsters:
		unless M is student or M is staff member or M is ex-princess or M is goblin:
			if the number of entries in L > 0:
				let X be entry 1 in L;
				add X to the tradableItems of M;
				remove X from L;
			otherwise:
				let X be a random mass collectible;
				add X to the tradableItems of M.

[Flags a monster as having a soul or not having a soul.]
A monster can be soul-stolen or not soul-stolen. A monster is usually not soul-stolen.
A monster can be submission-assisting or not submission-assisting.
Definition: a monster is willing to fluff: decide no.[available to help out the player during sex, without directly fucking the player.]
Definition: a monster is willing to fluff right now:
	if it is willing to fluff and the refractory-period of it < 0 and it is intelligent, decide yes;
	decide no.

[#LXorDD]
A monster can be a-dick-detacher or a-non-detacher. A monster is usually a-non-detacher. [These (rare few) monsters can detach the player's dick. At present: djinn, aeromancer.]
A monster can be a-dick-reattacher or a-non-reattacher. A monster is usually a-non-reattacher. [These (rare few) monsters can reattach the player's dick. At present: djinn, aeromancer, witch.]
A monster can be detached-dick-desiring or detached-dick-ignoring. A monster is usually detached-dick-desiring. [Most monsters are willing to take a player's detached dick if they see it lying around. Several though are not. At present: ghosts, giant wasps.]

Monster Adjectives ends here.
