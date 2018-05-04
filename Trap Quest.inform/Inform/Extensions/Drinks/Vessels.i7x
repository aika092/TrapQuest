Vessels by Drinks begins here.


[!<Vessel>@

Something that the player can refill and drink from repeatedly.

@inherits <Bottle>

@!]
A vessel is a kind of bottle.

[!<WaitressVessel>@

Has special effects with the waitress bunny class.

@inherits <Vessel>

@!]
A waitress vessel is a kind of vessel.


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
	if diaper lover < 3, now novelty mug is in Holding Pen.
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

A squirt dildo is a kind of vessel. The max-doses of a squirt dildo is usually 1. There is 1 squirt dildo. The printed name of squirt dildo is "[TQlink of item described][unless curse-ID of the item described is unsure][magic curse of item described] [end if]squirt dildo[if the doses of item described > 0 and the fill-type of item described is remembered] ([FillName the fill-type of item described])[otherwise if the doses of item described > 0] ([fill-colour of item described] liquid)[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". A squirt dildo is usually disembodied. The text-shortcut of squirt dildo is "sqd". Figure of squirt dildo is the file "Items\Accessories\Vessels\squirtdildo1.png".
To decide which figure-name is the vessel-image of (V - a squirt dildo):
	decide on the figure of squirt dildo.
Report plugging something with a squirt dildo:
	now the second noun is sure.
Definition: a squirt dildo (called S) is basic loot:
	decide no.
To compute cursed drinking (X - a squirt dildo):
	say "An extremely bitter taste and slimy consistency immediately lets you know it's not what you put in. The squirt dildo changed everything inside it into [semen]! [line break][variable custom style]'One of these is cursed, but I don[']t know which...'[roman type][line break]";
	StomachSemenUp 1.
To say VesselDesc of (V - a squirt dildo):
	say "This dildo has a hollow inside, hollow balls at the base and a hole at the top. By squeezing the base you can squirt the contents out of the dildo, and by releasing you can capture a bit of whatever liquid the dildo is in.".
To say ShortVesselDesc of (V - a squirt dildo):
	say "squirt dildo".
Definition: a squirt dildo (called C) is inflation themed:
	decide yes.

baby's bottle is a vessel. The max-doses of baby's bottle is 3. The printed name of baby's bottle is "[TQlink of item described][unless curse-ID of the item described is unsure][magic curse of item described] [end if]baby's bottle[if the doses of item described > 0 and the fill-type of item described is remembered] ([FillName the fill-type of item described])[otherwise if the doses of item described > 0] ([fill-colour of item described] liquid)[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of baby's bottle is "bab". Figure of baby's bottle is the file "Items\Accessories\Vessels\babybottle1.png".
To decide which figure-name is the vessel-image of (V - baby's bottle):
	decide on the figure of baby's bottle.
Definition: baby's bottle (called C) is pregnancy related:
	decide yes.
To compute cursed drinking (X - baby's bottle):
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
To say VesselDesc of (V - baby's bottle):
	say "A bottle with a sucker for a lid, traditionally for babies to drink breast milk from.".
To say ShortVesselDesc of (V - baby's bottle):
	say "baby's bottle".
	
cocktail-glass is a waitress vessel. cocktail-glass is open topped. The max-doses of cocktail-glass is 2. The printed name of cocktail-glass is "[TQlink of item described][unless curse-ID of the item described is unsure][magic curse of item described] [end if]cocktail glass[if the doses of item described > 0 and the fill-type of item described is remembered] ([FillName the fill-type of item described])[otherwise if the doses of item described > 0] ([fill-colour of item described] liquid)[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of cocktail-glass is "cg". Understand "cocktail", "glass" as cocktail-glass. Figure of cocktail glass is the file "Items\Accessories\Vessels\cocktailglass1.png".
To decide which figure-name is the vessel-image of (V - cocktail-glass):
	decide on the figure of cocktail glass.
To say VesselDesc of (V - cocktail-glass):
	say "A pink cocktail glass decorated with high heels and handbags, for delicate ladies to drink tasty alcoholic beverages out of.".
To say ShortVesselDesc of (V - cocktail-glass):
	say "cocktail glass".

champagne-glass is a waitress vessel. champagne-glass is open topped. The max-doses of champagne-glass is 1. The printed name of champagne-glass is "[TQlink of item described][unless curse-ID of the item described is unsure][magic curse of item described] [end if]champagne glass[if the doses of item described > 0 and the fill-type of item described is remembered] ([FillName the fill-type of item described])[otherwise if the doses of item described > 0] ([fill-colour of item described] liquid)[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of champagne-glass is "cgl". Understand "champagne", "glass" as champagne-glass. Figure of champagne glass is the file "Items\Accessories\Vessels\champagneglass1.png".
To decide which figure-name is the vessel-image of (V - champagne-glass):
	decide on the figure of champagne glass.
To say VesselDesc of (V - champagne-glass):
	say "A trashy pink bubbly wine vessel, with the words 'SEXY BITCH' across one side in tacky fake diamonds.".
To say ShortVesselDesc of (V - champagne-glass):
	say "champagne glass".

gold chalice is a vessel. gold chalice is open topped. The max-doses of a gold chalice is 3. The printed name of gold chalice is "[TQlink of item described][unless curse-ID of the item described is unsure][magic curse of item described] [end if]gold chalice[if the doses of item described > 0 and the fill-type of item described is remembered] ([FillName the fill-type of item described])[otherwise if the doses of item described > 0] ([fill-colour of item described] liquid)[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of gold chalice is "gc". Figure of gold chalice is the file "Items\Accessories\Vessels\goldenchalice1.png".
To decide which figure-name is the vessel-image of (V - gold chalice):
	decide on the figure of gold chalice.
To say VesselDesc of (V - gold chalice):
	say "A regal looking gold chalice.".
To say ShortVesselDesc of (V - gold chalice):
	say "golden chalice".

novelty mug is a vessel. novelty mug is open topped. The max-doses of a novelty mug is usually 2. The printed name of novelty mug is "[TQlink of item described][unless curse-ID of the item described is unsure][magic curse of item described] [end if]novelty mug[if the doses of item described > 0 and the fill-type of item described is remembered] ([FillName the fill-type of item described])[otherwise if the doses of item described > 0] ([fill-colour of item described] liquid)[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of novelty mug is "nm".
Figure of boob mug is the file "Items\Accessories\Vessels\mug1.png".
Figure of cow mug is the file "Items\Accessories\Vessels\mug2.png".
Figure of coffee mug is the file "Items\Accessories\Vessels\mug3.png".
To decide which figure-name is the vessel-image of (V - novelty mug):
	if diaper quest is 1, decide on the figure of coffee mug;
	if lactation fetish is 1, decide on the figure of cow mug;
	decide on the figure of boob mug.
To say VesselDesc of (V - novelty mug):
	say "[if diaper quest is 1]This brown mug is shaped like a comical brown poop. It has the words 'Coffee makes me poop' in white on the side.[otherwise if lactation fetish is 1]This mug has a cow print. The base is shaped like a cow's udder, so when the drinker is imbibing from it, it looks like they have an udder for a mouth.[otherwise]This mug is flesh coloured and has a set of large naked breasts protruding out the front.[end if]".
To say ShortVesselDesc of (V - novelty mug):
	say "novelty mug".
To compute cursed drinking (X - novelty mug):
	if diaper quest is 1:
		say "Yuck, it tastes like cold coffee! Your stomach growls horribly. ";
		increase rectum by 3;
	otherwise:
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

teapot is a vessel. The max-doses of teapot is 2. The printed name of teapot is "[TQlink of item described][unless curse-ID of the item described is unsure][magic curse of item described] [end if]teapot[if the doses of item described > 0 and the fill-type of item described is remembered] ([FillName the fill-type of item described])[otherwise if the doses of item described > 0] ([fill-colour of item described] liquid)[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of teapot is "tp".
Figure of penis teapot is the file "Items\Accessories\Vessels\teapot1.png".
Figure of kitty teapot is the file "Items\Accessories\Vessels\teapot2.png".
To decide which figure-name is the vessel-image of (V - teapot):
	if diaper quest is 1, decide on figure of kitty teapot;
	decide on the figure of penis teapot.
To say VesselDesc of (V - teapot):
	say "[if diaper quest is 0]A weird small teapot with a long stem shaped like a limp penis.[otherwise]A small teapot shaped like a cute kitty cat's head.[end if]".
To say ShortVesselDesc of (V - teapot):
	say "teapot".
Definition: teapot (called C) is cat themed:
	if diaper quest is 1, decide yes;
	decide no.
To compute cursed drinking (X - teapot):
	if diaper quest is 1:
		if there is a worn tattoo and teapot tattoo is not worn:
			summon teapot tattoo;
			say "[bold type]A new tattoo appears on your leg![roman type][line break]";
			try examining teapot tattoo;
		otherwise:
			say "[one of]As you drink the liquid, you find yourself shivering on the spot. You somehow[or]Once again you[stopping] feel a little smaller, and a little more [if the diaper addiction of the player > 10]excited[otherwise]comfortable[end if] [if there is a worn diaper]wearing your diaper[otherwise]with the thought of wearing diapers[end if].";
			DiaperAddictUp 1;
	otherwise:
		say "An extremely bitter taste and slimy consistency immediately lets you know it's not what you put in. The teapot changed everything inside it into [semen]! [if the Known corresponding to an Magic of the fill-type of X in the Table of Drinks is 0][one of][line break][variable custom style]'Either the teapot or the drink colour is cursed, but I don[']t know which...'[roman type][line break][or][stopping][end if][line break]";
		StomachSemenUp 1.

witch's goblet is a vessel. witch's goblet is open topped. The max-doses of a witch's goblet is 2. witch's goblet is in Woods20. The printed name of witch's goblet is "[TQlink of item described][unless curse-ID of the item described is unsure][magic curse of item described] [end if]witch's goblet[if the doses of item described > 0 and the fill-type of item described is remembered] ([FillName the fill-type of item described])[otherwise if the doses of item described > 0] ([fill-colour of item described] liquid)[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of witch's goblet is "wg". Figure of witch's goblet is the file "Items\Accessories\Vessels\goblet1.png".
To decide which figure-name is the vessel-image of (V - witch's goblet):
	decide on the figure of witch's goblet.
To say ShortVesselDesc of (V - witch's goblet):
	say "witch's goblet".
Definition: witch's goblet (called W) is immune to change:
	decide yes.
Definition: witch's goblet (called T) is blessable:
	decide no.
To compute drinking (X - witch's goblet):
	compute cursed drinking X.[We do not check whether this is blessed.]
	
	
horn is a vessel. horn is open topped. The max-doses of horn is 2. The printed name of horn is "[TQlink of item described][unless curse-ID of the item described is unsure][magic-curse] [end if]minotaur horn[if the doses of item described > 0 and the fill-type of item described is remembered] ([FillName the fill-type of item described])[otherwise if the doses of item described > 0] ([fill-colour of item described] liquid)[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of horn is "mho". Figure of horn is the file "Items\Accessories\Vessels\horn1.png". Understand "minotaur" as horn.
To decide which figure-name is the vessel-image of (V - horn):
	decide on the figure of horn.
To say VesselDesc of (V - horn):
	say "A horn from a large defeated minotaur. It's hollow, allowing you to use it as a drinking vessel.".
To say ShortVesselDesc of (V - horn):
	say "minotaur horn".
Definition: horn (called I) is immune to change:
	decide yes.
Definition: horn (called M) is basic loot:
	decide no.
To decide which number is the crafting key of (C - horn):
	decide on 18.
To decide which number is the bartering value of (T - horn) for (M - a gladiator):
	decide on 5.
To decide which number is the bartering value of (T - horn) for (M - a royal guard):
	decide on 5.
To decide which number is the bartering value of (T - horn) for (M - a mechanic):
	decide on 8.
To decide which number is the bartering value of (T - horn) for (M - a demon lord):
	decide on 6.
To decide which number is the bartering value of (T - horn) for (M - a witch):
	decide on 5.
To decide which number is the bartering value of (T - horn) for (M - a wench):
	decide on 5.
To decide which number is the bartering value of (T - horn) for (M - a shopkeeper):
	decide on 8.

To say vessel-desc:
	say "[ImageDesc of item described][VesselDesc of item described][if the doses of item described > 0]It currently contains [PotionType of item described].[otherwise]It is currently empty.[end if]".

To decide which figure-name is the vessel-image of (V - a vessel):
	decide on figure of no-image-yet. 

To say ImageDesc of (V - a vessel):
	if images visible is 1, display vessel-image of V.

To say VesselDesc of (V - a vessel):
	say "A [ShortDesc of V].".






Vessels ends here.

