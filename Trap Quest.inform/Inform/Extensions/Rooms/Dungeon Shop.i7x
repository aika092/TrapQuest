Dungeon Shop by Rooms begins here.


[!<discount:Integer>*

The shopkeeper can give the player a discount. This number tracks how many seconds are left on the discount. If the number is -1, this means that the discount will not be offered again. This happens when the discount offer is refused.

*!]
discount is a number that varies. discount is 0.

[!<ARoomIsGuarded>+

REQUIRES COMMENTING

+!]
Definition: A room is guarded if shopkeeper is in it and shopkeeper is awake and shopkeeper is threatening and (shopkeeper is interested or the class of the player is not vixen).

[!<DecideWhichNumberIsTheTotalWealthOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the total wealth of the player:
	let X be 0;
	repeat with A running through plentiful accessories held by the player:
		increase X by the price of A;
	decide on X.

[!<DecideWhichNumberIsTheWealthOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the wealth of the player:
	let X be 0;
	repeat with A running through worn accessories:
		increase X by the price of A;
	decide on X.


Dungeon Shop ends here.
