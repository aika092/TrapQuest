Absorption by Every Turn begins here.


[!<ComputeAbsorption>+

REQUIRES COMMENTING

+!]
To compute absorption:
	repeat with C running through worn absorption clothing:
		compute absorption of C.

[!<ComputeAbsorptionOfClothing>+

REQUIRES COMMENTING

+!]
To compute absorption of (B - a clothing):
	if the total-soak of B > 0:
		let X be 50;
		if B is blessed, now X is 40;
		if B is cursed, now X is 100;
		if a random number between 1 and X is 1:
			if B is perceived soiled:
				say "Your [printed name of B] [if B is identified]cleans itself by absorbing all the bodily fluids soaked into it.[otherwise]seems to somehow clean itself of bodily fluids.";
				if B is unidentified:
					say "It's a [ShortDesc of B] of absorption!";
					now B is identified;
			clean B.


Absorption ends here.

