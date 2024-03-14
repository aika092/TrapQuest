Cringe Appearance by Player begins here.

To decide which number is the cringe appearance of the player:
	[potentially update appearance and cringe levels;]
	if lake-swimming is true, decide on 4;
	decide on the saved cringe appearance of the player.

To decide which number is the saved cringe appearance of the player:
	let B be 1;
	increase B by calculated-cumulative-cringe-level;
	if B < 0, decide on 0;
	if B > 20, decide on 20;
	decide on B.

To decide which number is the adult-influence of (C - a thing):
	decide on 0.

To decide which number is the adult appearance of the player:
	let B be 0;
	increase B by the make-up of face;
	if breasts is showing cleavage, increase B by 1;
	repeat with C running through worn wearthings:
		if the adult-influence of C is not 0 or C is maturity clothing:
			if C is maturity clothing or C is currently visible:
				increase B by the adult-influence of C;
				if C is maturity clothing, increase B by 1;
	decide on B.

[!<cringeTarget:Thing>*

We save the most embarrassing thing for the player except body parts

*!]
cringe-target is a thing that varies.

[!<appearanceCringeTarget:Thing>*

We save the most embarrassing thing for the player right now

*!]
appearance-cringe-target is a thing that varies.
[!<secondAppearanceCringeTarget:Thing>*

We save the second most embarrassing thing for the player right now

*!]
second-appearance-cringe-target is a thing that varies.

[!<DecideWhichNumberIsAppearanceCringeLevel>+

Here we decide what is the most childish visible item of clothing the player is wearing OR BODY PART.

+!]
To decide which number is appearance-cringe-level:
	let O be 0;
	now cringe-target is arms;
	now appearance-cringe-target is arms;
	repeat with C running through worn wearthings:
		let OC be the cringe of C; [to make sure we only spend the CPU cycles to calculate it once]
		if OC > O:
			now O is OC;
			now cringe-target is C;
			now second-appearance-cringe-target is appearance-cringe-target;
			now appearance-cringe-target is C;
	repeat with C running through carried currently-not-in-bag things:
		let OC be the cringe of C / 2; [to make sure we only spend the CPU cycles to calculate it once]
		if OC > O:
			now O is OC;
			now cringe-target is C;
			now second-appearance-cringe-target is appearance-cringe-target;
			now appearance-cringe-target is C;
	repeat with C running through body parts:
		let OC be the cringe of C; [to make sure we only spend the CPU cycles to calculate it once]
		if OC > O:
			now O is OC;
			now second-appearance-cringe-target is appearance-cringe-target;
			now appearance-cringe-target is C;
	decide on O.

To decide which number is cumulative-cringe-level:
	let A be calculated-cringe-level; [Outrage of the lewdest worn thing / exposed body part]
	let A2 be A / 2;
	let A3 be A - A2;
	let N be 0;
	let maxSimilarItems be 4;
	repeat with C running through worn wearthings:
		if the cringe of C >= A2, increase N by 1;
	repeat with C running through carried currently-not-in-bag things:
		if the cringe of C / 2 >= A2, increase N by 1;
	repeat with C running through body parts:
		if the cringe of C >= A2, increase N by 1;
	if N > maxSimilarItems, now N is maxSimilarItems;
	decrease A by (A3 * (maxSimilarItems - N)) / maxSimilarItems; [The more items there are within 50% of A, the less we subtract from A. And if there are lots of lewd items within 50% of A, appearance hits its max value for this item, i.e. its raw cringe rating.]
	if appearance-explained is 1, say "(cumulative cringe level is [A]) ";
	if A > 20, decide on 20;
	decide on A.

calculated-cringe-level is a number that varies.
calculated-cumulative-cringe-level is a number that varies.

Cringe Appearance ends here.
