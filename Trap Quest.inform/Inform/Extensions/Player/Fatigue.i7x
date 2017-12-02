Fatigue by Player begins here.


[!<Player>@<fatigue:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called fatigue.  The fatigue of the player is usually 0. [Min 0 No Max]


[!<Player>@<fatiMod:Integer>*

Increases by 1 each turn the player spends on their knees.  Essentially the longer you rest in a row the faster you regain energy.

*@!]
The player has a number called fatimod.  The fatimod of the player is usually 1.

The player has a number called stance.  The stance of the player is usually 0. [0-standing, 1-kneeling, 2-mounted]
[!<YourselfIsUpright>+

Is the player standing?

+!]
Definition: yourself is upright:
	if the stance of it is 0, decide yes;
	decide no.

[!<YourselfIsProne>+

Is the player kneeling?

+!]
Definition: yourself is prone:
	if the stance of it is 1, decide yes;
	decide no.

[!<YourselfIsMounted>+

Is the player on a rideable vehicle?

+!]
Definition: yourself is mounted:
	if the stance of it is 2, decide yes;
	decide no.



[!<resting:Integer>*

REQUIRES COMMENTING

*!]
Resting is a number that varies.  Resting is 0. [Used to prevent fainting during the while loop of resting.]

[!<busy:Integer>*

REQUIRES COMMENTING

*!]
Busy is a number that varies.  Busy is 0.


[!<FatigueUpX>+

REQUIRES COMMENTING

+!]
To FatigueUp (X - a number):
	increase the fatigue of the player by X.
	[while X > 0:
		increase the fatigue of the player by 1;
		decrease X by 1.]

[!<FatigueDownX>+

REQUIRES COMMENTING

+!]
To FatigueDown (X - a number):
	decrease the fatigue of the player by X;
	if the fatigue of the player < 0, now the fatigue of the player is 0.
	[while X > 0:
		if the fatigue of the player > 0, decrease the fatigue of the player by 1;
		decrease X by 1.]


Fatigue ends here.
