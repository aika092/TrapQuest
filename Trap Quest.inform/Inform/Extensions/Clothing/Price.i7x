Price by Clothing begins here.


To decide what number is the original price of (C - a clothing):
	decide on 0.

To decide what number is the price of (C - a clothing):
	let X be the original price of C;
	if C is trousers:
		now X is 9;
	if C is skirt:
		now X is 4;
	if C is accessory:
		if C is not plentiful, decide on 0;
		if C is ring, now X is 1;
		if C is bracelet, now X is 2;
		if C is necklace, now X is 4;
		if C is sapphire, now X is X * 1;
		if C is emerald, now X is X * 2;
		if C is ruby, now X is X * 3;
		if C is pink diamond, now X is X * 4;
		if C is pure diamond, now X is X * 5;
		if C is solid gold, now X is X * 6;
	otherwise:
		decrease X by 2; [balancing attempt]
		increase X by the magic-modifier of C * 2;
		if C is not blandness, increase X by 1;
		if discount > 0, decrease X by 5;
		if the blue-balls of shopkeeper < 0, decrease X by 1;
		if X < 1, now X is 1;
	decide on X.


Price ends here.
