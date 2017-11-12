Immobility by Player begins here.

The immobility rules is a rulebook.

player-immobile is a number that varies.

[!<ToCheckImmobility>+

We don't want to check this all the time.

+!]
To check immobility:
	follow the immobility rules;
	if the rule failed, now player-immobile is 1;
	otherwise now player-immobile is 0.

[!<YourselfIsImmobile>+

Is the player unable to move?

+!]
Definition: yourself is immobile:
	if player-immobile is 1, decide yes;
	decide no.

This is the trap stuck immobility rule:
	if the player is trap stuck, rule fails.
The trap stuck immobility rule is listed in the immobility rules.

[!<YourselfIsTrapStuck>+

REQUIRES COMMENTING

+!]
Definition: yourself is trap stuck:
	if it is throne stuck, decide yes;
	if it is bed-stuck, decide yes;
	if there is a trap penetrating a body part, decide yes;
	if there is a trap grabbing the player, decide yes;
	if gloryhole is penetrating a body part or gloryhole is grabbing the player, decide yes;
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
	say "The [M] grabs hold of your [C]!  There's no getting away now...".

[!<SaySubduedGrabFlavOfClothing>+

REQUIRES COMMENTING

+!]
To say SubduedGrabFlav of (C - clothing):
	say "[variable custom style][if the delicateness of the player < 8]Fuck fuck fuck get off!!![otherwise if the delicateness of the player < 14]Oh dear, they have complete control of me now![otherwise]Uh-oh, caught again![end if][roman type][line break]";
	if the player is glue stuck, say "[variable custom style]Oh no, this is gonna hurt![roman type][line break]".

Immobility ends here.
