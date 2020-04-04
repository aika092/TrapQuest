Immobility by Player begins here.

The immobility rules is a rulebook.

player-immobile is initially false.

[!<ToCheckImmobility>+

We don't want to check this all the time.

+!]
To check immobility:
	follow the immobility rules;
	if the rule failed, now player-immobile is true;
	otherwise now player-immobile is false.

[!<YourselfIsImmobile>+

Is the player unable to move?

+!]
Definition: yourself is immobile if player-immobile is true.

This is the trap stuck immobility rule:
	if the player is trap stuck, rule fails.
The trap stuck immobility rule is listed in the immobility rules.

This is the body stuck immobility rule:
	if the player is body stuck, rule fails.
The body stuck immobility rule is listed in the immobility rules.

This is the blindfolded immobility rule:
	if the player is in a blindroom, rule fails.
The blindfolded immobility rule is listed in the immobility rules.

[This is the seduction minigame immobility rule:
	if there is a seduced reactive monster, rule fails.
The seduction minigame immobility rule is listed in the immobility rules.]

[!<YourselfIsTrapStuck>+

REQUIRES COMMENTING

+!]
Definition: yourself is trap stuck: [A player who is trap stuck will not be fucked by most NPCs]
	if it is throne stuck, decide yes;
	if it is bed-stuck, decide yes;
	if there is a trap penetrating a body part, decide yes;
	if there is a trap grabbing the player, decide yes;
	if chess table is grabbing the player, decide yes;
	if gloryhole is penetrating a body part or gloryhole is grabbing the player, decide yes;
	decide no.

[!<YourselfIsPoleStuck>+

Doesn't include drill traps

+!]
Definition: a yourself is pole stuck:
	if there is a dildo pole trap penetrating a fuckhole, decide yes;
	if there is a creampie pole trap penetrating a fuckhole, decide yes;
	if there is a ghostly dildo pole trap penetrating a fuckhole, decide yes;
	decide no.
[!<YourselfIsDrillStuck>+

Drill traps only

+!]
Definition: a thing is drill stuck:
	if there is a drill pole trap penetrating a fuckhole, decide yes;
	decide no.

[!<YourselfIsDildoStuck>+

REQUIRES COMMENTING

+!]
Definition: yourself is dildo stuck:
	if there is a dildo trap penetrating a fuckhole, decide yes;
	decide no.

[doll-stuck is meant to be used in remarks that refer to you being stuck on a dildo trap that's trying to
 force you to pose like a little dolly. In this case, the only such trap will be one that makes you pose
 like a ballerina - because you're wearing ballerina wearables.
 If it's set to "", it's a flag that you're not currently stuck like that.
 To be used in case we use some randomness to decide whether the 'pose' attack initiates.
 In this first implementation, it will always do it if you have two ballerina wearthings.
 I had to add doll-stuck-num, even though redundant, because you can't test 'if doll-stuck is ""' inside say "...".
 Aika has hijacked doll-stuck-num to count the turns the player has been impaled.
	doll-stuck-num: Number of turns the player has been turning around, posed like a doll in a music box.
 doll-stuck-kind is used to record the kind of doll the dildo wants you to pose as:
 doll-stuck-kind:
	0: Not doll stuck at all.
	1: Ballerina.
	2: TBD
]
doll-stuck is a text that varies. doll-stuck is "".
doll-stuck-num is a number that varies. doll-stuck-num is 0.
doll-stuck-kind is a number that varies. doll-stuck-kind is 0.

[!<YourselfIsHorseStuck>+

Returns yes if the player is stuck on a wooden horse.

+!]
Definition: yourself is horse stuck:
	if the number of wooden horses penetrating a fuckhole > 0, decide yes;
	decide no.

[!<TheImmobilityBlocksMasturbationRule>+

REQUIRES COMMENTING

+!]
This is the immobility blocks masturbation rule:
	if there is a thing grabbing the player:
		if auto is 0, say "The [random thing grabbing the player] is preventing you!";
		rule fails.
The immobility blocks masturbation rule is listed last in the masturbation restriction rules.

Part - Subduing

[!<ComputeLeadHoldingOfMonster>+

REQUIRES COMMENTING

+!]
To compute lead holding of (M - a monster):
	let C be a random worn subduing clothing;
	now M is covering C;
	say "[SubduedGrabFlav of M on C]";
	say "[SubduedGrabFlav of C]".

[!<SaySubduedGrabFlavOfMonsterOnClothing>+

REQUIRES COMMENTING

+!]
To say SubduedGrabFlav of (M - a monster) on (C - a clothing):
	say "[BigNameDesc of M] grabs hold of your [ShortDesc of C]! There's no getting away now...".

[!<SaySubduedGrabFlavOfClothing>+

REQUIRES COMMENTING

+!]
To say SubduedGrabFlav of (C - clothing):
	say "[variable custom style][if the delicateness of the player < 8]Fuck fuck fuck get off!!![otherwise if the delicateness of the player < 14]Oh dear, they have complete control of me now![otherwise]Uh-oh, caught again![end if][roman type][line break]";
	if the player is glue stuck, say "[variable custom style]Oh no, this is gonna hurt![roman type][line break]".

Immobility ends here.
