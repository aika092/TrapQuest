Recovering Containers by Fainting begins here.


[!<RecoverContainers>+

REQUIRES COMMENTING

+!]
To Recover Containers:
	repeat with I running through containers:
		unless I is immune to change:
			now I is closed;
			now the prevsearch of I is 0;
			[if debugmode is 1, say "[line break]moving [printed name of I] next: ";]
			now I is in holding pen.

Recovering Containers ends here.
