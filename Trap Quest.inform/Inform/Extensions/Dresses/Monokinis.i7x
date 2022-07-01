Monokinis by Dresses begins here.

Part 0 - Swimming Top

swimming top is a swimsuit. swimming top is manly. swimming top is fully covering. swimming top is no-crotch. The text-shortcut of swimming top is "swt". swimming top is not-top-displacable. swimming top is top-exclusive. swimming top is sheer-when-wet.

Figure of swimming top dry is the file "Items/Clothes/Upper/Swimming/Tops/swimmingtop1.png". Figure of swimming top wet is the file "Items/Clothes/Upper/Swimming/Tops/swimmingtop2.png".

To decide which figure-name is the clothing-image of (C - swimming top):
	if C is actually dense, decide on figure of swimming top dry;
	otherwise decide on figure of swimming top wet.

To say ClothingDesc of (C - swimming top):
	say "A short sleeved nylon top that is used for keeping warm during professional swimming. [if C is actually dense]But this one looks like it will likely get see-through if it ever gets too wet.[otherwise]It is soaking wet, and that means it has become very see-through.[end if]".

To say ShortDesc of (C - swimming top):
	say "swimming top".
To say MediumDesc of (C - swimming top):
	say "professional swimming top".
Understand "professional" as swimming top.

To decide which number is the initial outrage of (C - swimming top):
	if C is actually dense, decide on 0;
	if the largeness of breasts < 6, decide on the largeness of breasts;
	decide on 6.

Definition: swimming top is blue themed: decide yes.

To decide which object is the unique-upgrade-target of (C - swimming top):
	if C is actually sheer and white-monokini is off-stage, decide on white-monokini.

Part 1 - White Monokini

white-monokini is a monokini. white-monokini is sheer-when-wet. white-monokini is fully covering. white-monokini is not-top-displacable. The text-shortcut of white-monokini is "wmk".

Figure of white-monokini is the file "Items/Clothes/Upper/Swimming/Monokinis/monokini3.png".

To decide which number is the initial outrage of (C - white-monokini):
	decide on 9.

To decide which figure-name is clothing-image of (C - white-monokini):
	decide on figure of white-monokini.

To say ClothingDesc of (C - white-monokini):
	say "This tight fitting white onepiece swimsuit would be modest enough if it wasn't for the fact that it would go quite see-through as soon as it got wet. [if C is crotch-ripped]It has a rip at the crotch.[otherwise]At least it covers your crotch![end if]".

To say ShortDesc of (C - white-monokini):
	say "white swimsuit".
To say MediumDesc of (C - white-monokini):
	say "white onepiece swimsuit".
Understand "white", "onepiece", "swimsuit" as white-monokini.

Definition: white-monokini is white themed: decide yes.

Part 2 - Green Monokini

green monokini is a monokini. green monokini is very low cut. The text-shortcut of green monokini is "gmk". Understand "onepiece", "swimsuit" as green monokini.

Figure of green monokini is the file "Items/Clothes/Upper/Swimming/Monokinis/monokini1.png".

Definition: green monokini is yellow themed: decide yes.
Definition: green monokini is green themed: decide yes.

To decide which figure-name is clothing-image of (C - green monokini):
	decide on figure of green monokini.

To say ClothingDesc of (C - green monokini):
	say "This tight fitting onepiece swimsuit is rather low cut, allowing for extra large amounts of cleavage to be shown[if C is crotch-ripped], and at the crotch to allow entrance to anything that desires so[end if].".

To say ShortDesc of (C - green monokini):
	say "green swimsuit".
To say MediumDesc of (C - green monokini):
	say "green onepiece swimsuit".

Part 3 - Navy Monokini

navy-monokini is a monokini. The text-shortcut of navy-monokini is "nvm".

Understand "navy", "onepiece", "swimsuit" as navy-monokini.

Figure of navy-monokini is the file "Items/Clothes/Upper/Swimming/Monokinis/monokini2.png".

To decide which figure-name is clothing-image of (C - navy-monokini):
	decide on figure of navy-monokini.

To say ClothingDesc of (C - navy-monokini):
	say "This tight fitting onepiece swimsuit is quite fashionable, [if C is crotch-ripped]but has a rip at the crotch[otherwise]showing off decent amounts of skin without being overly slutty[end if].".

To say ShortDesc of (C - navy-monokini):
	say "navy swimsuit".
To say MediumDesc of (C - navy-monokini):
	say "navy onepiece swimsuit".

To decide which object is the unique-upgrade-target of (C - navy-monokini):
	if tutorial is 1:
		if diaper quest is 1, decide on a random teddybear playsuit;
		otherwise decide on a random grey string monokini;
	decide on nothing.

Definition: navy-monokini is blue themed: decide yes.

Part 4 - Lolita Monokini

lolita-monokini is a monokini. The text-shortcut of lolita-monokini is "fsm".

Understand "frilly", "lolita", "fashion", "lolita-fashion" as lolita-monokini.

Figure of lolita-monokini is the file "Items/Clothes/Upper/Swimming/Monokinis/monokini4.png".

To decide which figure-name is clothing-image of (C - lolita-monokini):
	decide on figure of lolita-monokini.

To say ClothingDesc of (C - lolita-monokini):
	say "This dark purple onepiece swimsuit has white frills in the shape of a heart over the chest, and at the leg-holes. White laces keep the sides together, tied with delicate bows at the bottom.".

To say ShortDesc of (C - lolita-monokini):
	say "frilly swimsuit".
To say MediumDesc of (C - lolita-monokini):
	say "frilly lolita-fashion swimsuit".

To decide which number is the initial cringe of (C - lolita-monokini):
	decide on 3.

To decide which object is the unique-upgrade-target of (C - lolita-monokini):
	if diaper lover > 0 and turtle-swimsuit is off-stage, decide on turtle-swimsuit;
	decide on nothing.

Definition: lolita-monokini is purple themed: decide yes.
Definition: lolita-monokini is bow themed: decide yes.
Definition: lolita-monokini is flower themed: decide yes.
Definition: lolita-monokini is heart themed: decide yes.
Definition: lolita-monokini is sissifying: decide yes.

Part 5 - Turtle Swimsuit

turtle-swimsuit is a monokini. turtle-swimsuit is transformation-rare. The text-shortcut of turtle-swimsuit is "tsm".

Understand "frilly", "turtle", "babygirl" as turtle-swimsuit.

Figure of turtle-swimsuit is the file "Items/Clothes/Upper/Swimming/Monokinis/monokini5.png".

To decide which figure-name is clothing-image of (C - turtle-swimsuit):
	decide on figure of turtle-swimsuit.

To say ClothingDesc of (C - turtle-swimsuit):
	say "This bright blue onepiece swimsuit has large pink frills at the collar, and at the edge of the tutu that sprouts out at the waist. A friendly cartoon turtle is swimming with fishes on its front.".

To say ShortDesc of (C - turtle-swimsuit):
	say "turtle swimsuit".
To say MediumDesc of (C - turtle-swimsuit):
	say "frilly turtle babygirl swimsuit".

To decide which number is the initial cringe of (C - turtle-swimsuit):
	decide on 5.

Definition: turtle-swimsuit is fetish appropriate:
	if diaper lover > 0, decide yes;
	decide no.
Definition: turtle-swimsuit is ballet related: decide yes.
Definition: turtle-swimsuit is blue themed: decide yes.
Definition: turtle-swimsuit is sissifying: decide yes.

To decide which object is the unique-upgrade-target of (C - turtle-swimsuit):
	if there is a worn diaper and sailor-fleece-dress is off-stage, decide on sailor-fleece-dress;
	decide on nothing.

Part 6 - Queen of Hearts Monokini

queen-of-hearts monokini is a monokini. queen-of-hearts monokini is top-displacable. queen-of-hearts monokini is high cut. The text-shortcut of queen-of-hearts monokini is "qhmk". Understand "queen", "queen of", "hearts" as queen-of-hearts monokini.

Figure of queen of hearts monokini is the file "Items/Clothes/Upper/Swimming/Monokinis/monokini6.png".

To decide which figure-name is clothing-image of (C - queen-of-hearts monokini):
	decide on figure of queen of hearts monokini.

To decide which number is the initial outrage of (C - queen-of-hearts monokini):
	decide on 1.

To set up influence of (C - queen-of-hearts monokini):
	now C is luck-influencing.

To say ClothingDesc of (C - queen-of-hearts monokini):
	say "This tight fitting white onepiece swimsuit is decently modest except for a rather high cut at the legholes. A well-recognisable image of the queen of hearts is printed on the front.".

To say ShortDesc of (C - queen-of-hearts monokini):
	say "white swimsuit".
To say MediumDesc of (C - queen-of-hearts monokini):
	say "queen of hearts swimsuit".

Definition: queen-of-hearts monokini is white themed: decide yes.
Definition: queen-of-hearts monokini is playing card themed: decide yes.

Part 7 - Queen of Spades Monokini

queen-of-spades monokini is a monokini. queen-of-spades monokini is top-displacable. queen-of-spades monokini is unique. queen-of-spades monokini is high cut. queen-of-spades monokini is crotch-exposing. The text-shortcut of queen-of-spades monokini is "qsmk". Understand "queen", "queen of", "spades" as queen-of-spades monokini.

To set up magic attribute of (C - queen-of-spades monokini):
	now C is elasticity.

Figure of queen of spades monokini is the file "Items/Clothes/Upper/Swimming/Monokinis/monokini7.png".

To decide which figure-name is clothing-image of (C - queen-of-spades monokini):
	decide on figure of queen of spades monokini.

To decide which number is the initial outrage of (C - queen-of-spades monokini):
	decide on 4.

To say ClothingDesc of (C - queen-of-spades monokini):
	say "This tight fitting white onepiece swimsuit has a gap missing at the crotch, giving it a sexually provocative feel. A well-recognisable image of the queen of spades is printed on the front.".

To say ShortDesc of (C - queen-of-spades monokini):
	say "white swimsuit".
To say MediumDesc of (C - queen-of-spades monokini):
	say "queen of spades swimsuit".

Definition: queen-of-spades monokini is white themed: decide yes.
Definition: queen-of-spades monokini is playing card themed: decide yes.
Definition: queen-of-spades monokini is interracial themed: decide yes.

To decide which object is the unique-upgrade-target of (C - queen-of-hearts monokini):
	decide on queen-of-spades monokini.

Part 8 - Bimbo Monokini

bimbo monokini is a monokini. bimbo monokini is very low cut. bimbo monokini is unique. The text-shortcut of bimbo monokini is "bbmk". Understand "onepiece", "swimsuit" as bimbo monokini.

Figure of bimbo monokini is the file "Items/Clothes/Upper/Swimming/Monokinis/monokini8.png".

Definition: bimbo monokini is pink themed: decide yes.
Definition: bimbo monokini is bimbo themed: decide yes.

To compute post transformation effect of (C - bimbo monokini):
	now C is strength-influencing;
	now the raw-magic-modifier of C is 2.

To decide which figure-name is clothing-image of (C - bimbo monokini):
	decide on figure of bimbo monokini.

To say ClothingDesc of (C - bimbo monokini):
	say "This tight fitting onepiece swimsuit is extremely low cut, allowing for extra large amounts of cleavage to be shown, and at the same time very high-waisted, to expose a huge amount of your hips. The words 'Bimbo' are written on the front.".

To say ShortDesc of (C - bimbo monokini):
	say "pink swimsuit".
To say MediumDesc of (C - bimbo monokini):
	say "pink bimbo swimsuit".

To decide which number is the initial outrage of (C - bimbo monokini):
	decide on 6.

To decide which number is the assModesty of (C - bimbo monokini):
	decide on 3.


Monokinis ends here.
