Paying by Actions begins here.

[!<paying:Action>*

REQUIRES COMMENTING

*!]
Paying is an action applying to nothing.

[!<CheckPaying>+

REQUIRES COMMENTING

+!]
Check paying:
	if the player is not in Dungeon41, say "You can only pay in the shop.";
	let X be 0;
	repeat with H running through store clothing held by the player:
		increase X by the price of H;
	if X is 0, say "You have nothing to pay for!" instead;
	let jewellery be list of held plentiful currently perceivable accessories;
	truncate jewellery to 8 entries;
	let chosen jewellery be jewellery priced at X;
	if the number of entries in chosen jewellery is 0, say "You don't have enough valuable gems to pay for that!" instead;
	if the number of shopkeepers in Dungeon41 is 0, say "You need a shopkeeper here to pay for something." instead;
	if a random shopkeeper is mating:
		repeat with C running through store clothing held by the player:
			now C is normal;
		now seconds is 2;
		say "[first custom style]'What's mine is yours!'[roman type][line break]" instead.

[!<CarryOutPaying>+

REQUIRES COMMENTING

+!]
Carry out paying:
	let Z be a random off-stage clothing;
	repeat with C running through store clothing held by the player:
		say "Pay for [printed name of C]? [yesnolink] ";
		if the player consents:
			now Z is C;
			break;
	if Z is off-stage:
		repeat with C running through stolen clothing held by the player:
			say "Pay for [printed name of C]? [yesnolink] ";
			if the player consents:
				now Z is C;
				break;
	if Z is off-stage:
		say "Paying cancelled.";
	otherwise:
		now seconds is 4;
		let P be the price of Z;
		let jewellery be list of held plentiful currently perceivable accessories;
		truncate jewellery to 8 entries;
		let chosen jewellery be jewellery priced at P;
		repeat with J running through chosen jewellery:
			only destroy J;
		now Z is normal;
		if a random shopkeeper in Dungeon41 is friendly, say "[first custom style]'Thank you for your business!'[roman type][line break]You exchange the jewels for the [printed name of Z].";
		otherwise say "[first custom style]'Damn right you'll pay for that!'[roman type][line break]You hand over the jewels for the [printed name of Z].".
Understand "pay", "buy", "sell", "exchange", "purchase", "transact", "pay shopkeeper" as paying.

[!<ReportTakingStoreClothingWhileThePlayerIsInDungeon41AndDungeon41IsGuardedAndARandomShopkeeperIsNotMatingThePlayer>+

REQUIRES COMMENTING

+!]
Report taking store clothing while the player is in Dungeon41 and Dungeon41 is guarded and a random shopkeeper is not mating:
	let P be the price of the noun;
	if the total wealth of the player < P:
		if debugmode is 1, say "Total wealth: [Total wealth of the player]. Item cost: [P].";
		say "[first custom style]'I'm sorry, you can't afford [if P - the total wealth of the player < 3]that. You're not far off, though. [otherwise]that. [end if]But if you want to try and convince me, you could [if the player is upright]get on your knees and [end if][bold type]present[first custom style] another method of... [']payment[']. No guarantees that it'll convince me, though.'[roman type][line break]";
	otherwise:
		let jewellery be list of held plentiful currently perceivable accessories;
		truncate jewellery to 8 entries;
		let chosen jewellery be jewellery priced at P;
		if the number of held plentiful currently perceivable accessories is 0:
			say "[first custom style]'I'm sorry, you can't afford that. But if you want to try and convince me, you could [if the player is upright]get on your knees and [end if][bold type]present[line break][first custom style] another method of... [']payment[']. No guarantees that it'll convince me, though.'[roman type][line break]";
		otherwise if the number of entries of chosen jewellery is 0:
			say "[first custom style]'Hmm, I'm having trouble working out how best you can afford that, my brain can't handle all those different possible combinations. Maybe try dropping a few items of jewellery then picking up the [noun] again?'[roman type][line break]";
		otherwise:
			say "[first custom style]'That will cost you your [chosen jewellery][line break][first custom style].'[roman type][line break]";
			try paying.

[!<DecideWhichNumberIsTheTotalValueOfJewellery>+

REQUIRES COMMENTING

+!]
To decide which number is the total value of (jewellery - list of objects):
	let N be 0;
	repeat with J running through jewellery:
		increase N by the price of J;
	decide on N.

[!<DecideWhichListOfObjectsIsPricedAtN>]
To decide which list of objects is (jewellery - list of objects) priced at (N - a number):
	[Base case: we can't add anything else or we've reached our goal]
	if the number of entries in jewellery is 0 or N <= 0, decide on { };
	[Base case: we don't have enough jewellery to reach N]
	if the total value of jewellery < N, decide on { };
	let next piece be entry 1 in jewellery; [First item in (head of) the list]
	let other jewellery be jewellery;
	remove entry 1 from other jewellery; [Tail of list]
	let nSub be N - the price of next piece;
	[Here we use recursion. We assume that our function works on nSub where nSub < N. This function will return the list of jewellery with value >= nSub. It cannot be an empty list because we know we have enough jewellery already.]
	let rest of pieces be other jewellery priced at nSub;
	let try with first be rest of pieces;
	add next piece at entry 1 in try with first; [add next piece to the returned list]
	[Now find the best list without next piece]
	let try without first be other jewellery priced at N;
	[Handle the case where other jewellery didn't sum to N]
	if the number of entries in try without first is 0, decide on try with first;
	[If they could both work, return the one with the smaller value (closest to N)]
	if the total value of try with first <= the total value of try without first, decide on try with first;
	decide on try without first.

Paying ends here.

