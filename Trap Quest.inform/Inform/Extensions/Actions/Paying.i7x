Paying by Actions begins here.

Paying is an action applying to nothing.

Check paying:
	if the player is not in Dungeon41, say "You can only pay in the shop.";
	let X be 0;
	repeat with H running through held store things:
		increase X by the price of H;
	if X is 0, say "You have nothing to pay for!" instead;
	let jewellery be list of held plentiful currently perceivable accessories;
	truncate jewellery to 8 entries;
	let chosen jewellery be jewellery priced at X;
	if the number of entries in chosen jewellery is 0, say "You don't have enough valuable gems to pay for that!" instead;
	if shopkeeper is not in Dungeon41, say "You need a shopkeeper here to pay for something." instead.

To say FriendlyPaymentReceivedFlav of (T - a thing):
	say "[speech style of shopkeeper]'Thank you for your business!'[roman type][line break]You exchange the jewellery for the [printed name of T].".

To say UnfriendlyPaymentReceivedFlav of (T - a thing):
	say "[speech style of shopkeeper]'Damn right you'll pay for that!'[roman type][line break]You hand over the jewellery for the [printed name of T].";


Carry out paying:
	let Z be a random off-stage clothing;
	repeat with C running through held store things:
		say "Pay for [ShortDesc of C]? ";
		if the player is bimbo consenting:
			now Z is C;
			break;
	if Z is off-stage:
		repeat with C running through held stolen things:
			say "Pay for [ShortDesc of C]? ";
			if the player is bimbo consenting:
				now Z is C;
				break;
	if Z is off-stage:
		say "Paying cancelled.";
	otherwise:
		allocate 4 seconds;
		let P be the price of Z;
		let jewellery be list of held plentiful currently perceivable accessories;
		truncate jewellery to 8 entries;
		let chosen jewellery be jewellery priced at P;
		repeat with J running through chosen jewellery:
			only destroy J;
		now Z is unowned;
		if shopkeeper is in Dungeon41 and shopkeeper is friendly, say FriendlyPaymentReceivedFlav of Z;
		otherwise say UnfriendlyPaymentReceivedFlav of Z;
		trigger purchase-wisp-quest;
		force inventory-focus redraw. [Forces redraw of inventory window]
Understand "pay", "buy", "sell", "exchange", "purchase", "transact", "pay shopkeeper" as paying.

Report taking store thing while the player is in Dungeon41 and Dungeon41 is guarded and shopkeeper is interested and shopkeeper is friendly:
	let P be the price of the noun;
	if the total wealth of the player < P:
		if debuginfo > 1, say "[input-style]Total wealth: [Total wealth of the player]; Item cost: [P][roman type][line break]";
		say "[speech style of shopkeeper]'I'm sorry, you can't afford [if P - the total wealth of the player < 3]that. You're not far off, though. [otherwise]that. [end if]";
		if diaper quest is 0, say "But if you want to try and convince me, you could [if the player is upright]get on your knees and [end if][bold type]present[speech style of shopkeeper] another method of... [']payment[']. No guarantees that it'll convince me, though.'";
		say "[roman type][line break]";
	otherwise:
		let jewellery be list of held plentiful currently perceivable accessories;
		truncate jewellery to 8 entries;
		let chosen jewellery be jewellery priced at P;
		let E be the number of entries in chosen jewellery;
		if the number of held plentiful currently perceivable accessories is 0:
			say "[speech style of shopkeeper]'I'm sorry, you can't afford that. ";
			if diaper quest is 0, say "But if you want to try and convince me, you could [if the player is upright]get on your knees and [end if][bold type]present[speech style of shopkeeper] another method of... [']payment[']. No guarantees that it'll convince me, though.'";
			say "[roman type][line break]";
		otherwise if E is 0:
			say "[speech style of shopkeeper]'Hmm, I'm having trouble working out how best you can afford that, my brain can't handle all those different possible combinations. Maybe try dropping a few items of jewellery then picking up the [noun] again?'[roman type][line break]";
		otherwise:
			say "[speech style of shopkeeper]'That will cost you your ";
			while E > 0:
				let J be the entry E of chosen jewellery;
				say "[ShortDesc of J][if E > 2], [otherwise if E is 2] and [otherwise].'[roman type][line break][end if]";
				decrease E by 1;
			try paying.

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
