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
	let X be 50;
	if B is blessed, now X is 40;
	if B is cursed, now X is 100;
	let power-found be 0;
	if a random number between 1 and X is 1:
		if the semen-soak of B > 0:
			now the semen-soak of B is 0;
			say "Your [printed name of B] [if B is identified]cleans itself by absorbing some [semen].[otherwise]seems to somehow clean itself of [semen].";
			now power-found is 1;
		otherwise if the urine-soak of B > 0:
			now the urine-soak of B is 0;
			say "Your [printed name of B] [if B is identified]cleans itself by absorbing some [urine].[otherwise]seems to somehow clean itself of [urine].";
			now power-found is 1;
		otherwise if the milk-soak of B > 0:
			now the milk-soak of B is 0;
			say "Your [printed name of B] [if B is identified]cleans itself by absorbing some [milk].[otherwise]seems to somehow clean itself of [milk].";
			now power-found is 1;
		otherwise if B is overdress and there is a worn bra or there is a worn knickers:
			let O be a random worn bra;
			if (O is nothing or a random number between 1 and 2 is 1) and there is worn knickers, now O is a random worn knickers;
			if the semen-soak of O > 0:
				decrease the semen-soak of B by 1;
				say "Your [printed name of B] [if B is identified]cleans your [printed name of O] by absorbing some [semen].[otherwise]seems to somehow partially clean your [printed name of O] of [semen].";
				now power-found is 1;
			otherwise if the urine-soak of B > 0:
				decrease the urine-soak of B by 1;
				say "Your [printed name of B] [if B is identified]cleans your [printed name of O] by absorbing some [urine].[otherwise]seems to somehow partially clean your [printed name of O] of [urine].";
				now power-found is 1;
			otherwise if the milk-soak of B > 0:
				decrease the milk-soak of B by 1;
				say "Your [printed name of B] [if B is identified]cleans your [printed name of O] by absorbing some [milk].[otherwise]seems to somehow partially clean your [printed name of O] of [milk].";
				now power-found is 1;
		otherwise if B is not overdress and there is a worn overdress:
			let O be a random worn overdress;
			if the semen-soak of O > 0:
				decrease the semen-soak of B by 1;
				say "Your [printed name of B] [if B is identified]cleans your [printed name of O] by absorbing some [semen].[otherwise]seems to somehow partially clean your [printed name of O] of [semen].";
				now power-found is 1;
			otherwise if the urine-soak of B > 0 and B is not diaper:
				decrease the urine-soak of B by 1;
				say "Your [printed name of B] [if B is identified]cleans your [printed name of O] by absorbing some [urine].[otherwise]seems to somehow partially clean your [printed name of O] of [urine].";
				now power-found is 1;
			otherwise if the milk-soak of B > 0:
				decrease the milk-soak of B by 1;
				say "Your [printed name of B] [if B is identified]cleans your [printed name of O] by absorbing some [milk].[otherwise]seems to somehow partially clean your [printed name of O] of [milk].";
				now power-found is 1;
	if power-found is 1 and B is unidentified:
		if B is bra, say "  It's a bra of absorption!";
		now B is identified.


Absorption ends here.

