Vessels by Drinks begins here.


[!<Vessel>@

REQUIRES COMMENTING

@inherits <Bottle>

@!]
A vessel is a kind of bottle.

[!<Vessel>@<openTopped:Boolean>*

REQUIRES COMMENTING

*@!]
A vessel can be open topped.
The doses of a vessel is usually 0.
The description of a vessel is "[vessel-desc]".


[!<Vessel>@<Restock>+

REQUIRES COMMENTING

+!]
To restock (C - a vessel):
	let B be a random basic loot vessel;
	if B is bottle, now B is in Standard Item Pen.

[!<TheSetupStartingVesselsRule>+

REQUIRES COMMENTING

+!]
This is the setup starting vessels rule:
	let C be a random vessel;
	repeat with N running from 1 to 3:
		restock C.
The setup starting vessels rule is listed in the setup starting items rules.

[!<TheRemoveInappropriateVesselsRule>+

REQUIRES COMMENTING

+!]
This is the remove inappropriate vessels rule:
	repeat with B running through squirt dildo:
		now B is in Holding Pen;
	repeat with B running through novelty mugs:
		now B is in Holding Pen.
The remove inappropriate vessels rule is listed in the diaper quest fix rules.

[!<DecideWhichNumberIsVesselCount>+

REQUIRES COMMENTING

+!]
To decide which number is vessel-count:
	let X be 0;
	repeat with V running through vessels held by the player:
		increase X by 1;
	decide on X.

[!<DecideWhichNumberIsOpenToppedVesselCount>+

REQUIRES COMMENTING

+!]
To decide which number is open-topped-vessel-count:
	let X be 0;
	repeat with V running through open topped vessels held by the player:
		increase X by 1;
	decide on X.

To say ShortDesc of (B - a vessel):
	if the doses of B is 0, say "empty ";
	say "[ShortVesselDesc of B]";
	if the doses of B > 0, say " with [if the fill-type of B is remembered][FillName the fill-type of B][otherwise][fill-colour of B] liquid[end if]".

To say ShortVesselDesc of (V - a vessel):
	say "drinking vessel".

A squirt dildo is a kind of vessel. The doses of a squirt dildo is usually 0. The max-doses of a squirt dildo is usually 1. There are 5 squirt dildo. The printed name of squirt dildo is "[TQlink of item described][unless curse-ID of the item described is unsure][magic curse of item described] [end if]squirt dildo[if the doses of item described > 0 and the fill-type of item described is remembered] ([FillName the fill-type of item described])[otherwise if the doses of item described > 0] ([fill-colour of item described] liquid)[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". A squirt dildo is usually disembodied. The text-shortcut of squirt dildo is "sqd".

Report plugging something with a squirt dildo:
	now the second noun is sure.

Definition: a squirt dildo (called S) is basic loot:
	decide no.

To compute cursed drinking (X - a squirt dildo):
	say "An extremely bitter taste and slimy consistency immediately lets you know it's not what you put in. The squirt dildo changed everything inside it into [semen]! [line break][variable custom style]'One of these is cursed, but I don[']t know which...'[roman type][line break]";
	StomachSemenUp 1.

To say ShortVesselDesc of (V - a squirt dildo):
	say "squirt dildo".

Definition: a squirt dildo (called C) is inflation themed:
	decide yes.


A baby's bottle is a kind of vessel. The doses of a baby's bottle is usually 0. The max-doses of a baby's bottle is usually 3. There is 1 baby's bottle. The printed name of baby's bottle is "[TQlink of item described][unless curse-ID of the item described is unsure][magic curse of item described] [end if]baby's bottle[if the doses of item described > 0 and the fill-type of item described is remembered] ([FillName the fill-type of item described])[otherwise if the doses of item described > 0] ([fill-colour of item described] liquid)[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of baby's bottle is "bab".
Definition: a baby's bottle (called C) is pregnancy related:
	decide yes.
	
To compute cursed drinking (X - a baby's bottle):
	say "It tastes like milk, but really sour. Something tells you it's not the same as what you put in, and before you can finish the thought, [run paragraph on]";
	let D be a random eligible diaper;
	if D is actually summonable and a random number between 1 and 3 - unlucky is 1:
		say "your [noun] shimmers and a diaper appears around your loins!";
		summon D cursed;
	otherwise if diaper lover >= 1 and incontinence < 5:
		say "you feel a weird twang internally, just behind your [if the player is male][ShortDesc of penis][otherwise][vagina][end if], where your bladder should be.[if the bimbo of the player < 8][one of][line break][variable custom style]That can't be good...[roman type][line break][or][stopping][end if]";
		increase incontinence by 1;
	otherwise:
		say "a fuzzy feeling enters your head, and it's harder to concentrate.";
		if 25 - the delicateness of the player > the raw intelligence of the player, DelicateUp 1;
		IntDown 1.

To say ShortVesselDesc of (V - a baby's bottle):
	say "baby's bottle".
	
A cocktail glass is a kind of vessel. A cocktail glass is usually open topped. The doses of a cocktail glass is usually 0. The max-doses of a cocktail glass is usually 2. There is 1 cocktail glass. The printed name of cocktail glass is "[TQlink of item described][unless curse-ID of the item described is unsure][magic curse of item described] [end if]cocktail glass[if the doses of item described > 0 and the fill-type of item described is remembered] ([FillName the fill-type of item described])[otherwise if the doses of item described > 0] ([fill-colour of item described] liquid)[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of cocktail glass is "cg".

To say ShortVesselDesc of (V - a cocktail glass):
	say "cocktail glass".

A champagne glass is a kind of vessel. A champagne glass is usually open topped. The doses of a champagne glass is usually 0. The max-doses of a champagne glass is usually 1. There is 1 champagne glass. The printed name of champagne glass is "[TQlink of item described][unless curse-ID of the item described is unsure][magic curse of item described] [end if]champagne glass[if the doses of item described > 0 and the fill-type of item described is remembered] ([FillName the fill-type of item described])[otherwise if the doses of item described > 0] ([fill-colour of item described] liquid)[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of champagne glass is "cgl".

To say ShortVesselDesc of (V - a champagne glass):
	say "champagne glass".

A golden chalice is a kind of vessel. A golden chalice is usually open topped. The doses of a golden chalice is usually 0. The max-doses of a golden chalice is usually 3. There is 1 golden chalice. The printed name of golden chalice is "[TQlink of item described][unless curse-ID of the item described is unsure][magic curse of item described] [end if]golden chalice[if the doses of item described > 0 and the fill-type of item described is remembered] ([FillName the fill-type of item described])[otherwise if the doses of item described > 0] ([fill-colour of item described] liquid)[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of golden chalice is "gc".

To say ShortVesselDesc of (V - a golden chalice):
	say "golden chalice".

A novelty mug is a kind of vessel. A novelty mug is usually open topped. The doses of a novelty mug is usually 0. The max-doses of a novelty mug is usually 2. There is 1 novelty mug. The printed name of novelty mug is "[TQlink of item described][unless curse-ID of the item described is unsure][magic curse of item described] [end if]novelty mug[if the doses of item described > 0 and the fill-type of item described is remembered] ([FillName the fill-type of item described])[otherwise if the doses of item described > 0] ([fill-colour of item described] liquid)[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of novelty mug is "nm".

To say ShortVesselDesc of (V - a novelty mug):
	say "novelty mug".

To compute cursed drinking (X - a novelty mug):
	say "It tastes like milk, but somehow you know something isn't right. ";
	if lactation fetish is 1:
		let R be a random number between 1 and 3;
		if R < 3 and the player is not a flatchested trap:
			milkUp R;
			say "You feel your [BreastDesc] slightly swell.";
		otherwise:
			increase the lactation rate of the player by 2;
			say "Your [BreastDesc] feel tingly.";
	otherwise if the player is a flatchested trap:
		say "Your nipples feel strange.";
		increase the raw sensitivity of breasts by 1;
	otherwise:
		BustUp a random number between 1 and 2;
		say "You feel your [BreastDesc] slightly swell.".

A teapot is a kind of vessel. The doses of a teapot is usually 0. The max-doses of a teapot is usually 2. There is 1 teapot. The printed name of teapot is "[TQlink of item described][unless curse-ID of the item described is unsure][magic curse of item described] [end if]teapot[if the doses of item described > 0 and the fill-type of item described is remembered] ([FillName the fill-type of item described])[otherwise if the doses of item described > 0] ([fill-colour of item described] liquid)[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of teapot is "tp".

To say ShortVesselDesc of (V - a teapot):
	say "teapot".

Definition: a teapot (called C) is cat themed:
	if diaper quest is 1, decide yes;
	decide no.

To compute cursed drinking (X - a teapot):
	if diaper quest is 1:
		let T be a random teapot tattoo;
		if there is a worn tattoo and T is not worn:
			summon T;
			say "[bold type]A new tattoo appears on your leg![roman type][line break]";
			try examining T;
		otherwise:
			say "[one of]As you drink the liquid, you find yourself shivering on the spot. You somehow[or]Once again you[stopping] feel a little smaller, and a little more [if the diaper addiction of the player > 10]excited[otherwise]comfortable[end if] [if there is a worn diaper]wearing your diaper[otherwise]with the thought of wearing diapers[end if].";
			DiaperAddictUp 1;
	otherwise:
		say "An extremely bitter taste and slimy consistency immediately lets you know it's not what you put in. The teapot changed everything inside it into [semen]! [if the Known corresponding to an Magic of the fill-type of X in the Table of Drinks is 0][one of][line break][variable custom style]'Either the teapot or the drink colour is cursed, but I don[']t know which...'[roman type][line break][or][stopping][end if][line break]";
		StomachSemenUp 1.

A witch's goblet is a kind of vessel. A witch's goblet is usually open topped. The doses of a witch's goblet is usually 0. The max-doses of a witch's goblet is usually 2. 1 witch's goblet is in Woods20. The printed name of witch's goblet is "[TQlink of item described][unless curse-ID of the item described is unsure][magic curse of item described] [end if]witch's goblet[if the doses of item described > 0 and the fill-type of item described is remembered] ([FillName the fill-type of item described])[otherwise if the doses of item described > 0] ([fill-colour of item described] liquid)[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of witch's goblet is "wg".

To say ShortVesselDesc of (V - a witch's goblet):
	say "witch's goblet".

Definition: a witch's goblet (called W) is immune to change:
	decide yes.
Definition: a witch's goblet (called T) is blessable:
	decide no.

To compute drinking (X - a witch's goblet):
	compute cursed drinking X.[We do not check whether this is blessed.]
	
	
A minotaur horn is a kind of vessel. A minotaur horn is usually open topped. The max-doses of a minotaur horn is usually 2. There is 1 minotaur horn. The printed name of minotaur horn is "[TQlink of item described][unless curse-ID of the item described is unsure][magic-curse] [end if]minotaur horn[if the doses of item described > 0 and the fill-type of item described is remembered] ([FillName the fill-type of item described])[otherwise if the doses of item described > 0] ([fill-colour of item described] liquid)[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of minotaur horn is "mho". The description of minotaur horn is "A horn from a large defeated minotaur. It's hollow, allowing you to use it as a drinking vessel.". Understand "ho" as minotaur horn.

To say ShortVesselDesc of (V - a minotaur horn):
	say "minotaur horn".

Definition: A minotaur horn (called I) is immune to change:
	decide yes.
Definition: a minotaur horn (called M) is basic loot:
	decide no.
To decide which number is the crafting key of (C - a minotaur horn):
	decide on 18.
To decide which number is the bartering value of (T - a minotaur horn) for (M - a gladiator):
	decide on 5.
To decide which number is the bartering value of (T - a minotaur horn) for (M - a royal guard):
	decide on 5.
To decide which number is the bartering value of (T - a minotaur horn) for (M - a mechanic):
	decide on 8.
To decide which number is the bartering value of (T - a minotaur horn) for (M - a demon lord):
	decide on 6.
To decide which number is the bartering value of (T - a minotaur horn) for (M - a witch):
	decide on 5.
To decide which number is the bartering value of (T - a minotaur horn) for (M - a wench):
	decide on 5.
To decide which number is the bartering value of (T - a minotaur horn) for (M - a shopkeeper):
	decide on 8.

To say vessel-desc:
	if images visible is 1:
		if item described is squirt dildo, display the figure of Squirt Dildo;
		if item described is baby's bottle, display the figure of baby's bottle;
		if item described is cocktail glass, display the figure of cocktail glass;
		if item described is champagne glass, display the figure of champagne glass;
		if item described is golden chalice, display the figure of golden chalice;
		if item described is novelty mug:
			if lactation fetish is 1, display the figure of cow mug;
			otherwise display the figure of boob mug;
		if item described is teapot:
			if diaper quest is 1, display the figure of kitty teapot;
			otherwise display the figure of penis teapot;
	if item described is novelty mug, say "[if lactation fetish is 1]This mug has a cow print. The base is shaped like a cow's udder, so when the drinker is imbibing from it, it looks like they have an udder for a mouth.[otherwise]This mug is flesh coloured and has a set of large naked breasts protruding out the front.[end if]";
	if item described is a cocktail glass, say "A pink cocktail glass decorated with high heels and handbags, for delicate ladies to drink tasty alcoholic beverages out of.";
	if item described is a champagne glass, say "A trashy pink bubbly wine vessel, with the words 'SEXY BITCH' across one side in tacky fake diamonds.";
	if item described is a baby's bottle, say "A bottle with a sucker for a lid, traditionally for babies to drink breast milk from.";
	if item described is a golden chalice, say "A regal looking golden chalice.";
	if item described is a squirt dildo, say "This dildo has a hollow inside, hollow balls at the base and a hole at the top. By squeezing the base you can squirt the contents out of the dildo, and by releasing you can capture a bit of whatever liquid the dildo is in.";
	if item described is a teapot, say "[if diaper quest is 0]A weird small teapot with a long stem shaped like a limp penis.[otherwise]A small teapot shaped like a cute kitty cat's head.[end if]";
	say "[if the doses of item described > 0]It currently contains [PotionType of item described].[otherwise]It is currently empty.[end if]".

Figure of squirt dildo is the file "Items\Accessories\Vessels\squirtdildo1.png".
Figure of baby's bottle is the file "Items\Accessories\Vessels\babybottle1.png".
Figure of cocktail glass is the file "Items\Accessories\Vessels\cocktailglass1.png".
Figure of champagne glass is the file "Items\Accessories\Vessels\champagneglass1.png".
Figure of golden chalice is the file "Items\Accessories\Vessels\goldenchalice1.png".
Figure of boob mug is the file "Items\Accessories\Vessels\mug1.png".
Figure of cow mug is the file "Items\Accessories\Vessels\mug2.png".
Figure of penis teapot is the file "Items\Accessories\Vessels\teapot1.png".
Figure of kitty teapot is the file "Items\Accessories\Vessels\teapot2.png".




Vessels ends here.

