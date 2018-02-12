Recovering Traps by Fainting begins here.

[!<RecoverTraps>+

REQUIRES COMMENTING

+!]
To Recover Traps:
	repeat with I running through on-stage traps:
		if I is the throne:
			reset I;
			now I is not triggered;
			now I is untriggered;
		otherwise if map reset is 1:
			destroy I;
		otherwise:
			dislodge I;
	repeat with B running through on-stage barriers:
		destroy B.

Recovering Traps ends here.

