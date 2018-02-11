Capsule by Rooms begins here.


[!<capsule:Room>*

REQUIRES COMMENTING

*!]
Capsule is a room. The printed name of Capsule is "Virtual Reality Machine".
"A small metal chamber with nothing but a big red button.[TutorialCapsule]".

[!<bigRedButton:Item>*

REQUIRES COMMENTING

*!]
In Capsule is a big red button. The big red button is not portable. The printed name of big red button is "[TQlink of item described]big red button[TQxlink of item described][verb-desc of item described]". The text-shortcut of big red button is "brb".
The description of the big red button is "It says 'Power On' above this button. I guess there's only one thing to do...".

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
	if quick start is 1, clear the screen;
	if tutorial is 1, Start the Tutorial;
	otherwise Start The Machine.
Understand "press [something]" or "prod [something]" as touching.
The report pushing rule is not listed in the report pushing rulebook.


Capsule ends here.

