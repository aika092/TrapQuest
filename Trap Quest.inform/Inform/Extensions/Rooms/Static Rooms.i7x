Static Rooms by Rooms begins here.

[!<start:Room>*

The first room defined is the room the player starts in. So we'll create a room called Start that allows us to use 'if the player is in Start' to determine whether the game has been initialised yet.

*!]
Start is a room.
Definition: Start is nonstandard: decide yes.

[!<loading:Room>*

Legacy room that was used to try and avoid the weird crash when trying to load from the main menu. Seemed to help a little bit so I'm keeping it for now in case I ever put it back in the game.

*!]
Loading is a room. "Type '[bold type]restore[roman type]' to load your save file.".
Definition: Loading is nonstandard: decide yes.




[!<capsule:Room>*

REQUIRES COMMENTING

*!]
Capsule is a room. The printed name of Capsule is "Virtual Reality Machine".
Definition: Capsule is nonstandard: decide yes.
"A small metal chamber with nothing but a big red button.[TutorialCapsule]".


To say unique-verb-desc of (T - a big red button):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say " [link][bracket]push[close bracket][as]push [text-shortcut of T][end link]".

[!<bigRedButton:Item>*

REQUIRES COMMENTING

*!]
In Capsule is a big red button. The big red button is not portable. The printed name of big red button is "[TQlink of item described]big red button[TQxlink of item described][verb-desc of item described]". The text-shortcut of big red button is "brb".
To say ExamineDesc of (C - big red button):
	say "It says 'Power On' above this button. I guess there's only one thing to do...".

[*<CheckPushingWhenPlayerIsInCapsule>+

REQUIRES COMMENTING

+!]
Check pushing when the player is in capsule:
	unless the noun is big red button, try pushing the big red button instead.

[!<CheckTouchingWhenPlayerIsInCapsule>+

REQUIRES COMMENTING

+!]
Check touching when the player is in capsule:
	unless the noun is big red button, try pushing the big red button instead.

[!<ReportPushingTheBigRedButton>+

REQUIRES COMMENTING

+!]
Report pushing the big red button:
	say "You steel yourself and push the button. A quiet buzzing grows louder and louder. You feel your body sucked through an invisible hole in the fabric of space. Pink walls rush from nowhere to appear around you!";
	if quick start > 1, clear the screen;
	if tutorial is 1, Start the Tutorial;
	otherwise Start The Machine.
Understand "press [something]" or "prod [something]" as touching.
The report pushing rule is not listed in the report pushing rulebook.

[!<holdingPen:Room>*

Put stuff here that's in stasis, maybe it's held by an NPC or something

*!]
Holding Pen is a room.

[!<standardItemPen:Room>*

Anything in here will be able to appear in the next container

*!]
Standard Item Pen is a room.

[!<standardItemPen:Room>*

Anything in here will be able to appear in the next christmas gift

*!]
Christmas Item Pen is a room.


[!<soonToImprint:Room>*

REQUIRES COMMENTING

*!]
soon-to-imprint is a room.

A blindroom is a kind of room. The printed name of a blindroom is "Blindfolded".
Definition: A blindroom is nonstandard: decide yes.
Check looking:
	if the player is in a blindroom:
		say "You can't see anything." instead.
UrinalBlindfolded is a blindroom. "You are chained to the floor on your knees in between two urinals in the Hotel Bathroom, and your eyes have been covered with a blindfold. You can't see a thing!".
DiamondLessonBlindfolded is a blindroom. "You are in the diamond classroom, but your eyes have been covered with a blindfold. You can't see a thing!".
Iron Maiden is a room. "You are trapped inside a claustrophobic metal cage! It has closed tightly around you, preventing you from moving a muscle. The walls of the cage seem to be lined with slimy tentacles.".
Definition: Iron Maiden is nonstandard: decide yes.
HoleInWall is a room. "You are trapped with your front half inside a pitch black room! You won't be able to get back out without help.". The printed name of HoleInWall is "Hole In Wall".
Definition: HoleInWall is nonstandard: decide yes.
MimicCrib is a room. "You are trapped inside the living, breathing belly of some kind of shapeshifting creature that has decided to take a twisted form of a crib.". The printed name of MimicCrib is "Inside the 'crib'".
Definition: MimicCrib is nonstandard: decide yes.
DiaperPail is a room. "You are stuck upside down inside a diaper pail, with your legs flailing wildly above you! Yuck!". The printed name of DiaperPail is "Inside the diaper pail".
Definition: DiaperPail is nonstandard: decide yes.
Figure of DiaperPailBackground is the file "Map/pail1.jpg".


Static Rooms ends here.

