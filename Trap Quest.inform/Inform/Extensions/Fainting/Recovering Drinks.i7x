Recovering Drinks by Fainting begins here.


[!<RecoverDrinks>+

REQUIRES COMMENTING

+!]
To Recover Drinks:
	repeat with I running through bottles:
		unless I is immune to change:
			destroy I;
	repeat with D running through on-stage dispensers:
		now D is in Holding Pen.

Recovering Drinks ends here.

