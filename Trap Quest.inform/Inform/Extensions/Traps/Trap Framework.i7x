Trap Framework by Traps begins here.


[!<Trap>@

REQUIRES COMMENTING

@inherits <Thing>

@!]
A trap is a kind of thing. A trap is not portable.

[!<Trap>@<isExpired:Boolean>*

REQUIRES COMMENTING

*@!]
A trap can be expired. A trap is usually not expired.

[!<Trap>@<isUntriggered:Boolean>*

REQUIRES COMMENTING

*!]
A trap can be untriggered. A trap is usually untriggered.

[!<Trap>@<triggered:Boolean>*

REQUIRES COMMENTING

*@!]
A trap can be triggered. A trap is usually not triggered.

[!<Trap>@<potentiallyClick:Boolean>*

REQUIRES COMMENTING

*:!]
A trap can be potentially click. A trap is usually not potentially click.

[!<Trap>@<potentiallyPressure:Boolean>*

REQUIRES COMMENTING

*@!]
A trap can be potentially pressure. A trap is usually not potentially pressure.

[!<Trap>@<potentiallyWire:Boolean>*

REQUIRES COMMENTING

*@!]
A trap can be potentially wire. A trap is usually not potentially wire.

[!<Trap>@<potentiallySticky:Boolean>*

REQUIRES COMMENTING

*@!]
A trap can be potentially sticky. A trap is usually not potentially sticky.

[!<Trap>@<trigger:TriggerStateEnum>*

A click trap means it's triggered by opening a container in the room.

*@!]
A trap can be triggerless, click, pressure, wire, swing, sticky (this is the trigger-type property).

A trap has an object called the click-trigger.

Understand "trap" as trap.

[!<Trap>@<triggerDifficulty:Integer>*

REQUIRES COMMENTING

*@!]
A trap has a number called trigger-difficulty.

[!<Trap>@<trapDirection:Direction>*

REQUIRES COMMENTING

*@!]
A trap has a direction called trap-direction.

[!<Trap>@<resetTimer:Integer>*

REQUIRES COMMENTING

*@!]
A trap has a number called reset-timer. The reset-timer of a trap is usually 0.
A trap is scenery.

[!<Trap>@<trapNo:Integer>*

REQUIRES COMMENTING

*@!]
A trap has a number called TrapNo. The TrapNo of a trap is usually 0.

[!<Trap>@<SayEnvironmentDesc>+

This is what is put in the room description when the trap is visible (revealed).

+@!]
To say EnvironmentDesc of (T - a trap):[some traps do not have this]
	do nothing.

[!<Trap>@<IsRelevant>+

REQUIRES COMMENTING

+@!]
Definition: a trap (called T) is relevant:
	if the room-entering of the player is 0 and the trap-direction of T is the travel-direction of the player, decide yes;
	if the room-entering of the player is 1 and the trap-direction of T is the travel-opposite of the player, decide yes;
	decide no.

[!<TriggerTrap>+

REQUIRES COMMENTING

+!]
To trigger (Y - a trap):
	say "Nothing seems to happen.".


[!<ResetTrap>+

REQUIRES COMMENTING

+!]
To reset (I - a trap):
	dislodge I;
	now I is not grabbing the player;
	now I is not inseminating the player;
	if I is vines, now the TrapNo of I is 0.

[!<DestroyTrap>+

REQUIRES COMMENTING

+!]
To destroy (I - a trap):
	now the reset-timer of I is 0;
	now the TrapNo of I is 0;
	now I is not expired;
	now I is untriggered;
	now I is not triggered;
	now I is unrevealed;
	reset I;
	dislodge I;
	remove I from play.

[!<PrintTheYouCannotGoMessage>+

REQUIRES COMMENTING

+!]
To print the you can't go message:
	[(- L__M(##Go, 2, 0) -).]
	say "You can't go that way.".

[!<PrintTheYouCannotSeeMessage>+

REQUIRES COMMENTING

+!]
To print the you can't see message:
	[(- L__M(##Miscellany, 30, 0) -).]
	say "There doesn't seem to be any such thing.".

[!<Trap>@<isRevealed:Boolean>*

REQUIRES COMMENTING

*@!]
A trap can be revealed or unrevealed. A trap is unrevealed.


[!<CheckExaminingTrap>+

REQUIRES COMMENTING

+!]
Check examining trap:
	unless the noun is revealed, say "You can't see any such thing." instead.[x trap will still reveal things due to the disambiguation extension]


[!<BeforeDoingSomethingToATrapWhichIsUnrevealed>+

REQUIRES COMMENTING

+!]
Before doing something to a trap which is unrevealed:
	print the you can't see message instead.

[!<BeforeDoingSomethingWhenATrapIsTheSecondNounAndTheSecondNounIsUnrevealed>+

REQUIRES COMMENTING

+!]
Before doing something when a trap is the second noun and the second noun is unrevealed:
	print the you can't see message instead.

[!<setUpDungeonTrapsRules:Rulebook>*

REQUIRES COMMENTING

*!]
The set up dungeon traps rules is a rulebook.

[!<setUpWoodsTrapsRules:Rulebook>*

REQUIRES COMMENTING

*!]
The set up woods traps rules is a rulebook.

[!<setUpHotelTrapsRules:Rulebook>*

REQUIRES COMMENTING

*!]
The set up hotel traps rules is a rulebook.

[!<setUpMansionTrapsRules:Rulebook>*

REQUIRES COMMENTING

*!]
The set up mansion traps rules is a rulebook.

[!<RoomIsTrapped>+

REQUIRES COMMENTING

+!]
Definition: a room is trapped:
	if there is a trap in it, decide yes;
	decide no.

[!<RoomIsUntrapped>+

REQUIRES COMMENTING

+!]
Definition: a room is untrapped:
	if it is trapped, decide no;
	decide yes.

[!<RoomIsClickTrapped>+

REQUIRES COMMENTING

+!]
Definition: a room is click trapped:
	if there is a click trap in it, decide yes;
	decide no.

[!<RoomIsClickUntrapped>+

REQUIRES COMMENTING

+!]
Definition: a room is click untrapped:
	if it is click trapped, decide no;
	decide yes.

[!<RoomIsWireTrapped>+

REQUIRES COMMENTING

+!]
Definition: a room is wire trapped:
	if there is a wire trap in it, decide yes;
	decide no.

[!<RoomIsWireUntrapped>+

REQUIRES COMMENTING

+!]
Definition: a room is wire untrapped:
	if it is wire trapped, decide no;
	decide yes.

[!<RoomIsPressureTrapped>+

REQUIRES COMMENTING

+!]
Definition: a room is pressure trapped:
	if there is a pressure trap in it, decide yes;
	decide no.

[!<RoomIsPressureUntrapped>+

REQUIRES COMMENTING

+!]
Definition: a room is pressure untrapped:
	if it is pressure trapped, decide no;
	decide yes.

To say TriggeredTrapReactFlav of (M - a monster):
	say "[BigNameDesc of M] [one of]smirks[or]harrumphs[or]chuckles[or]clicks [his of M] tongue[at random].[line break][speech style of M]'[one of]I didn't see that coming[or]Trust you to fall for that[or]Whoopsie[or]Mind yourself[or]That was clumsy of you[or]How unfortunate[or]Watch yourself around here[or]You've got to be more careful than that[or]That sort of thing will keep happening if you're not careful[in random order].'[roman type][line break]".
To say HarshTrapReactFlav of (M - a monster):
	say "[BigNameDesc of M] [one of]gasps[or][if M is human]puts [his of M] hand in front of [his of M] mouth[otherwise]looks shocked[end if][or][if M is human]raises [his of M] eyebrows[otherwise][end if][at random].[line break][speech style of M]'[one of]Really now[or]Idiot[or]You've got to be more careful than that[or]That was rather predicable[in random order].'[roman type][line break]".
To say NastyTrapReactFlav of (M - a monster):
	say "[BigNameDesc of M] [one of]makes a disgusted sound[or]almost chokes in surprise[or]grimaces[at random].[line break][speech style of M]'[one of]Yuck.'[or]How could you let that happen to you? Do you have no shame?'[or]Oh my lord! What a disgrace.'[in random order][roman type][line break]".
To say LewdTrapReactFlav of (M - a monster):
	say "[BigNameDesc of M] [one of]widens [his of M] eyes[or][if M is human]puts [his of M] hand in front of [his of M] mouth[otherwise]looks surprised[end if][or][if M is human]raises [his of M] eyebrows[otherwise][end if][at random].[line break][speech style of M]'[one of]I didn't know you were into things like that.'[or]Are you really doing what it looks like you're doing?!'[or][if diaper quest is 0]Slut[otherwise]What a silly baby[end if].'[or]That's a pretty outrageous thing to be caught doing, you know.'[or]Do my eyes deceive me, or are you...?!'[in random order][roman type][line break]";
	moderateHumiliate;
	FavourDown M with consequences.



Part 1 Grabby Traps


[planned to have grabby traps help out ghosts, but not necessary given their power level]

[!<GrabbyTrap>@

REQUIRES COMMENTING

@inherits <Trap>

@!]
A grabby trap is a kind of trap. A grabby trap is usually potentially wire. The text-shortcut of a grabby trap is "ha". [There are 10 grabby traps.] The printed name of a grabby trap is "[TQlink of item described]clammy hand[TQxlink of item described][verb-desc of item described]".
To say ExamineDesc of (C - a grabby trap):
	say "A hand sticking out of the floor, holding your ankle. You'll have to wrench yourself out of its grip!".

[!<TheSpawnInitialGrabbyTrapsRule>+

REQUIRES COMMENTING

+!]
[This is the spawn initial grabby traps rule:
	repeat with N running from 1 to 4:
		let R be a random untrapped trappable placed haunted room;
		let T be a random off-stage grabby trap;
		deploy T in R.]

[!<GrabbyTrap>@<SayShortDesc>+

REQUIRES COMMENTING

+@!]
To say ShortDesc of (T - a grabby trap):
	say "There is a hole small hole in the floorboards here.".[shouldn't appear, probably.]

[!<GrabbyTrap>@<Trigger>+

REQUIRES COMMENTING

+!@]
To trigger (Y - a grabby trap):
	say "A pair of hands burst from the floor and grab your ankles.".




Trap Framework ends here.

