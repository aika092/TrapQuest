Layering by Clothing begins here.

current-layer is a number that varies.

Definition: a clothing (called C) is top layer:
	if C is breast covering, decide yes;
	decide no.

To decide which number is max-top-layer:
	let X be 0;
	repeat with T running through worn top layer clothing:
		if X < the top-layer of T:
			now X is the top-layer of T;
	decide on X.

Definition: a clothing (called C) is top-layer-highlighted:
	if C is not worn, decide no;
	if C is not top layer, decide no;
	if the top-layer of C is current-layer, decide yes;
	decide no.

Definition: a clothing (called C) is mid layer:
	if C is belly covering, decide yes;
	decide no.

To decide which number is max-mid-layer:
	let X be 0;
	repeat with T running through worn mid layer clothing:
		if X < the mid-layer of T, now X is the mid-layer of T;
	decide on X.

Definition: a clothing (called C) is mid-layer-highlighted:
	if C is not worn, decide no;
	if C is not mid layer, decide no;
	if the mid-layer of C is current-layer, decide yes;
	decide no.

Definition: a clothing (called C) is bottom layer:
	if C is crotch covering, decide yes;
	decide no.

Definition: a chastity cage is bottom layer: decide yes.

To decide which number is max-bottom-layer:
	let X be 0;
	repeat with T running through worn bottom layer clothing:
		if X < the bottom-layer of T, now X is the bottom-layer of T;
	decide on X.

Definition: a clothing (called C) is bottom-layer-highlighted:
	if C is not worn, decide no;
	if C is not bottom layer, decide no;
	if the bottom-layer of C is current-layer, decide yes;
	decide no.

[This is how we layer clothing if worn by the player]
To layer (C - a clothing) correctly on top:
	now the top-layer of C is 0;
	now the mid-layer of C is 0;
	now the bottom-layer of C is 0;
	if C is breast covering, now the top-layer of C is max-top-layer + 1;
	if C is belly covering, now the mid-layer of C is max-mid-layer + 1;
	if C is crotch covering, now the bottom-layer of C is max-bottom-layer + 1;
	if C is chastity cage, now the bottom-layer of C is 1;
	if C is crotch-tie-up:
		now the bottom-layer of C is 1 + the number of worn chastity cages;
		repeat with O running through worn crotch covering clothing:
			increase the bottom-layer of O by 1.

To compress top layers:
	let N be the number of worn top layer clothing;
	now current-layer is 0;
	let correct-layer be 1;
	while correct-layer <= N:
		let C be a random worn top-layer-highlighted clothing;
		if C is clothing:
			now the top-layer of C is correct-layer;
			increase correct-layer by 1;
		increase current-layer by 1;
	if current-layer >= 10:
		say "BUG: Top layered clothing is incorrectly layered after attempted compression. There are [N] items:[line break]";
		repeat with C running through worn top layer clothing:
			say "[C] with top-layer [top-layer of C].";

To compress mid layers:
	let N be the number of worn mid layer clothing;
	now current-layer is 0;
	let correct-layer be 1;
	while correct-layer <= N:
		let C be a random worn mid-layer-highlighted clothing;
		if C is clothing:
			now the mid-layer of C is correct-layer;
			increase correct-layer by 1;
		increase current-layer by 1;
	if current-layer >= 10:
		say "BUG: mid layered clothing is incorrectly layered after attempted compression. There are [N] items:[line break]";
		repeat with C running through worn mid layer clothing:
			say "[C] with mid-layer [mid-layer of C].";

To compress bottom layers:
	let N be the number of worn bottom layer clothing;
	now current-layer is 0;
	let correct-layer be 1;
	if debugmode is 2:
		say "Compressing bottom layers. There are [N] items:[line break]";
		repeat with C running through worn bottom layer clothing:
			say "[C] with bottom-layer [bottom-layer of C].";
	while correct-layer <= N and current-layer <= 10:
		let C be a random bottom-layer-highlighted clothing;
		if debugmode is 2, say "current-layer: [current-layer], correct-layer: [correct-layer], C: [C].";
		if C is clothing:
			now the bottom-layer of C is correct-layer;
			increase correct-layer by 1;
		increase current-layer by 1;
	if current-layer >= 10:
		say "BUG: Bottom layered clothing is incorrectly layered after attempted compression. There are [N] items:[line break]";
		repeat with C running through worn bottom layer clothing:
			say "[C] with bottom-layer [bottom-layer of C].";
	if debugmode is 2:
		repeat with C running through worn clothing:
			if the bottom-layer of C > 0:
				say "Bottom layer of [C] is [bottom-layer of C].".

To validate layers:
	if max-top-layer is not the number of worn top layer clothing, compress top layers;
	if max-mid-layer is not the number of worn mid layer clothing, compress mid layers;
	if max-bottom-layer is not the number of worn bottom layer clothing, compress bottom layers.

To layer (C - a clothing) correctly:
	now C is in Holding Pen; [Make sure it's not worn for validation]
	validate layers;
	now C is worn by the player; [Make sure it is now worn]
	now the top-layer of C is 0;
	now the mid-layer of C is 0;
	now the bottom-layer of C is 0;
	if debugmode is 2:
		say "layering items correctly. these are the bottom layer items:[line break]";
		repeat with X running through worn bottom layer clothing:
			say "[X] with bottom-layer [bottom-layer of X].";
	if C is top layer:
		let MTL be max-top-layer + 1;
		repeat with CL running from 1 to MTL:
			if the top-layer of C is 0: [If we haven't found its place yet]
				now current-layer is CL;
				let H be a random worn top-layer-highlighted clothing;
				if H is clothing:
					check that C usually goes under H;
					if the rule succeeded: [We've found its home, underneath H, which means it steals H's layer and everything else has to move up one. Selkie thinks that if the rule didn't succeed, then it goes on top and there was nothing else to do.]
						let CL2 be max-top-layer;
						while CL2 >= CL:
							now current-layer is CL2;
							if debugmode is 2, say "So now we are on clothing Layer [CL2], ";
							let H2 be a random top-layer-highlighted clothing;
							if H2 is clothing:
								if debugmode is 2, say "we increase the layer of [H2] by 1 from [top-layer of H2] to [top-layer of H2 + 1].";
								increase the top-layer of H2 by 1;
							otherwise:
								say "[type 1 layering bug]";
							decrease CL2 by 1;
						now the top-layer of C is CL;
				otherwise if CL is max-top-layer + 1: [It goes on top]
					now the top-layer of C is CL;
				otherwise:
					say "[type 2 layering bug]";
	if C is mid layer:
		repeat with CL running from 1 to max-mid-layer + 1:
			if the mid-layer of C is 0: [If we haven't found its place yet]
				now current-layer is CL;
				let H be a random worn mid-layer-highlighted clothing;
				if H is clothing:
					check that C usually goes under H;
					if the rule succeeded: [We've found its home, underneath H, which means it steals H's layer and everything else has to move up one.]
						let CL2 be max-mid-layer;
						while CL2 >= CL:
							now current-layer is CL2;
							if debugmode is 2, say "So now we are on clothing Layer [CL2], ";
							let H2 be a random mid-layer-highlighted clothing;
							if H2 is clothing:
								if debugmode is 2, say "we increase the layer of [H2] by 1 from [mid-layer of H2] to [mid-layer of H2 + 1].";
								increase the mid-layer of H2 by 1;
							otherwise:
								say "[type 3 layering bug]";
							decrease CL2 by 1;
						now the mid-layer of C is CL;
				otherwise if CL is max-mid-layer + 1: [It goes on top]
					now the mid-layer of C is CL;
				otherwise:
					say "[type 4 layering bug]";
	if C is bottom layer:
		let MBL be max-bottom-layer + 1;
		if debugmode is 2, say "Layering data: C is [C]. Max bottom layer is [MBL].";
		repeat with CL running from 1 to MBL:
			if debugmode is 2, say "At Clothing Layer [CL], ";
			if the bottom-layer of C is 0: [If we haven't found its place yet]
				now current-layer is CL;
				let H be a random bottom-layer-highlighted clothing;
				if debugmode is 2, say "we have [H].";
				if H is clothing:
					check that C usually goes under H;
					if the rule succeeded: [We've found its home, underneath H, which means it steals H's layer and everything else has to move up one.]
						if debugmode is 2, say "We are putting [C] underneath this, and will now iterate from [max-bottom-layer] to [CL].";
						let CL2 be max-bottom-layer;
						while CL2 >= CL:
							now current-layer is CL2;
							if debugmode is 2, say "So now we are on clothing Layer [CL2], ";
							let H2 be a random bottom-layer-highlighted clothing;
							if H2 is clothing:
								if debugmode is 2, say "we increase the layer of [H2] by 1 from [bottom-layer of H2] to [bottom-layer of H2 + 1].";
								increase the bottom-layer of H2 by 1;
							otherwise:
								say "[type 5 layering bug]";
							decrease CL2 by 1;
						now the bottom-layer of C is CL;
				otherwise if CL is max-bottom-layer + 1: [It goes on top]
					now the bottom-layer of C is CL;
				otherwise:
					say "[type 6 layering bug]".

To say type (N - a number) layering bug:
	say "Uh-oh, A type [N] layering bug has cropped up! Aika apologises and asks that you [bold type]undo one turn if you are a donator[roman type], immediately save the game and make a bug report with the save file (and an explanation of what just happened)!".

To check that (C - a clothing) usually goes under (D - a clothing): [I tried making this with "Definition:" but the compiler didn't like me defining a second parameter.]
	rule fails.

To check that (C - a clothing) usually goes under (D - a skirt): [This will only be crotch covering skirts, which nothing goes on top of]
	rule succeeds.

To check that (C - a chastity cage) usually goes under (D - a clothing):
	rule succeeds.

To check that (C - a knickers) usually goes under (D - a trousers):
	rule succeeds.

To check that (C - a knickers) usually goes under (D - a dress):
	rule succeeds.

To check that (C - a knickers) usually goes under (D - a diaper cover):
	rule succeeds.

To check that (C - an overdress) usually goes under (D - a trousers):
	if C is skirted, rule fails;
	rule succeeds.

To check that (C - a trousers) usually goes under (D - an overdress):
	if D is skirted, rule succeeds;
	rule fails.

To check that (C - a diaper cover) usually goes under (D - a trousers):
	rule succeeds.

To check that (C - a diaper cover) usually goes under (D - an overdress):
	rule succeeds.

To check that (C - a diaper cover) usually goes under (D - a dress):
	rule succeeds.

To check that (C - an underdress) usually goes under (D - a trousers):
	rule succeeds.

To check that (C - an underdress) usually goes under (D - an overdress):
	rule succeeds.

To check that (C - a bra) usually goes under (D - a corset):
	rule succeeds.

To check that (C - a dress) usually goes under (D - a bra):
	if C is bottom-exclusive, rule succeeds;
	rule fails.

To check that (C - a bra) usually goes under (D - a dress):
	if D is bottom-exclusive, rule fails;
	rule succeeds.

To check that (C - a dress) usually goes under (D - a corset):
	if C is bottom-exclusive or D is top-exclusive, rule succeeds;
	rule fails.

To check that (C - a corset) usually goes under (D - a dress):
	if D is bottom-exclusive or C is top-exclusive, rule fails;
	rule succeeds.

Layering ends here.
