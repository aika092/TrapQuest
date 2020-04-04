Backpacks of Holding by Bags of Holding begins here.

A backpack of holding is a kind of bag of holding.
Definition: a backpack of holding is pink themed: decide yes.

To decide which number is the initial cringe of (C - a backpack of holding):
	decide on 3.

To decide which object is the potential-upgrade-target of (C - a backpack of holding):
	if the transform-attempts of C < a random number between 0 and unlucky, decide on nothing;
	decide on a random off-stage childish backpack of holding.

A pink backpack of holding is a kind of backpack of holding. A pink backpack of holding is usually leather. There is 1 pink backpack of holding. The printed name of pink backpack of holding is usually "[clothing-title-before]pink backpack of holding[clothing-title-after]".

Figure of pink backpack of holding is the file "Items/Accessories/Bags/bag17.png".

To decide which figure-name is clothing-image of (C - a pink backpack of holding):
	decide on figure of pink backpack of holding.

To say ClothingDesc of (C - a pink backpack of holding):
	say "A smart but girly leather backpack in a stylish shade of pink that holds all your spare items and negates their weight. Whilst it could be worse, it's very eye-catching and you'd expect it to be worn be someone of a school age rather than an adult. A warning on the label says '[BagHoldingWarning] backpack'.".

To say ShortDesc of (C - a pink backpack of holding):
	say "girly pink leather backpack".

enema-backpack is a clothing. enema-backpack is unique. The printed name of enema-backpack is "[clothing-title-before]enema backpack[clothing-title-after]". The text-shortcut of enema-backpack is "eb". Figure of enema-backpack is the file "Items/Clothes/Upper/Special/enemabackpack1.png". enema-backpack can be enema-released.
To decide which figure-name is clothing-image of (H - enema-backpack):
	decide on figure of enema-backpack.

To say ShortDesc of (B - enema-backpack):
	say "backpack".
To say ClothingDesc of (B - enema-backpack):
	say "This backpack is filled with water and has a subtle tube that goes down to your [asshole]. [if B is enema-released]It has pumped its water inside you![otherwise if B is worn]If you move your hands from behind your head, an invisible cord will be pulled and the backpack will give you a huge enema!".

To decide which number is the initial cringe of (B - enema-backpack):
	decide on 2.

To compute school periodic effect of (B - enema-backpack):
	if B is not enema-released and (entry 1 in the armUses of arms is not hair or entry 2 in the armUses of arms is not hair):
		now B is enema-released;
		say "A quiet 'click' sound heralds the backpack releasing its enema! Before you can do anything your [asshole] has been filled with a huge amount of water!!![line break][variable custom style]Ugh... so much...[roman type][line break]";
		AssFill 20 with water;
	otherwise if B is not enema-released and the player is not in a park room:
		appropriate-cutscene-display figure of diaper grope predicament cutscene.

Backpacks of Holding ends here.
