Candy by Food begins here.

A candy is a kind of food. Understand "candy" as candy.

The printed name of candy is "[TQlink of item described][ShortDesc of item described][shortcut-desc][TQxlink of item described][verb-desc of item described]".

To say ShortDesc of (C - candy):
	say "candy".

Figure of candy is the file "Items/Collectibles/candy1.png".

To decide which figure-name is the examine-image of (F - candy):
	decide on figure of candy.

Check dropping candy:
	if the player is able to use their hands, say "You get the feeling that this would be a really bad idea." instead.

Check inserting candy into something:
	say "You get the feeling that this would be a really bad idea." instead.

Definition: a candy (called C) is standard tier:
	if C is top tier, decide no;
	if C is low tier, decide no;
	decide yes.

Definition: a candy (called C) is low tier:
	decide no.

Definition: a candy (called C) is top tier:
	decide no.

Carry out TQeating candy:
	destroy the noun;
	StomachFoodUp 2;
	allocate 6 seconds.

To say DevourFlav of (C - a candy):
	say "You unwrap the [C] and [if the player is in danger]devour it as quickly as you can[otherwise if the fat-weight of the player > 28]greedily stuff the entire thing into your mouth, immediately swallowing it whole[otherwise if the fat-weight of the player > 12]speedily devour the sweet[otherwise]consume the sweet slowly, savouring the taste[end if]. ".

To restock (C - a candy):
	let B be a random off-stage candy;
	if B is candy, now B is in Standard Item Pen.

This is the setup starting candy rule:
	let C be a random candy;
	repeat with N running from 1 to 3:
		restock C.
[The setup starting candy rule is listed in the setup starting items rules.]

To decide which number is default-candy-duration:
	decide on 650.

Book - Low Tier Candy

candy corn is a candy. The printed name of candy corn is "[TQlink of item described]pack of candy corn[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of candy corn is "crn". Understand "pack", "pack of" as candy corn.

To say ExamineDesc of (B - candy corn):
	say "A translucent packet of white, orange and yellow candies.".

Figure of candy corn is the file "Items/Collectibles/candycorn1.jpg".

To decide which figure-name is the examine-image of (F - candy corn):
	decide on figure of candy corn.

To decide which number is the crafting key of (C - candy corn):
	decide on 46.

To say ShortDesc of (C - candy corn):
	say "candy corn".

Definition: candy corn is low tier: decide yes.

To say DevourFlav of (C - candy corn):
	say "You open the [C] and [if the player is in danger]devour it all as quickly as you can[otherwise if the fat-weight of the player > 28]greedily dump it all into your mouth, immediately swallowing them whole[otherwise if the fat-weight of the player > 12]speedily devour it two or three pieces at a time[otherwise]pop each piece in your mouth one at a time, savouring the taste[end if]. ".

Carry out TQeating candy corn:
	compute CandyCornEat.

To compute CandyCornEat:
	if diaper quest is 1:
		say "[second custom style]TASTY... TASTY... TASTY![roman type][line break]The word reverberates in your head over and over again. ";
		if hypno-trigger-tasty is 0:
			say "That was weird...";
			now hypno-trigger-tasty is 1;
		otherwise:
			say "You suddenly feel very hungry for [tasty] things!";
	otherwise:
		let R be a random number between 1 and 4;
		say "You feel the sweets fizzing in your stomach, and [run paragraph on]";
		if R > 2:
			if R > 3 and the number of worn somewhat fluid vulnerable clothing > 0 and bukkake fetish + watersports fetish > 0:
				say "a cloud of pink mist explodes from the torn plastic, enveloping your body!";
				repeat with C running through somewhat fluid vulnerable worn clothing:
					if C is somewhat fluid vulnerable and the soak-limit of C > 0:
						let S be 13 - the total-soak of C;
						if S > 0:[Below 13? Dirty it up!]
							if watersports fetish is 1 and a random number between 1 and 2 is 1:
								say "[line break]A sharp smell hits your nose as your [printed name of C] suddenly dampens with [urine]!";
								PissSoak S on C;
							otherwise:
								if bukkake fetish is 1:
									say "[line break]A [if the semen addiction of the player < 6]heavy[otherwise]heavenly[end if] smell hits your nose as your [printed name of C] suddenly dampens with [semen]!";
									CumSoak S on C;
								otherwise:[if bukkake fetish is 0, it means that watersports fetish must be 1, otherwise we would have gone for hair colour.]
									say "[line break]A sharp smell hits your nose as your [printed name of C] suddenly dampens with [urine]!";
									PissSoak S on C;
						otherwise if S < 0:[Above 13? Clean it completely!]
							say "a lemony smell wafts into your nose as your [printed name of C] dries out completely!";
							clean C;[At 13? No change.]
			otherwise if R > 3:
				say "an invigorating tingle passes through your whole body. You feel great!";
				BodyHeal 1;
				FatigueDown 26;
			otherwise if the sex addiction of the player < 13:
				say "a distinct... freeing feeling settles in your chest.";
				SexAddictUp 1;
			otherwise if the sex addiction of the player > 13:
				say "a weirdly reassuring feeling settles in your chest.";
				SexAddictDown 1;
			otherwise:
				say "an invigorating wave of energy moves through your body.";
				FatigueDown 52;
		otherwise:
			if R is 1:
				let L be the largeness of breasts;
				if L is 13 or (L < 13 and the player is top heavy):
					say "a refreshing tingle rolls through your body.";
					FatigueDown 26;
				otherwise if L > 13:
					say "refreshing tingles pass through your [ShortDesc of Breasts] as they start to shrink!";
					BustDown 1;
					FatigueDown 13;
				otherwise:
					say "a refreshing tingle passes through your chest.";
					BustUp 1;
					FatigueDown 13;
			otherwise if the make-up of face < 3:
				say "a tingle passes over your cheeks, leaving them covered in a new layer of makeup. [one of][line break][variable custom style]Why do I feel like a jack-o'-lantern?[roman type][line break][or][stopping]";
				FaceUp 1;
			otherwise if the lips of face < 2 + artificial enhancements fetish:
				say "your lips swell significantly.";
				LipsUp 1;
			otherwise:
				say "an invigorating tingle passes through your whole body. You feel great!";
				BodyHeal 1;
				FatigueDown 26;
		StomachFoodUp 3.

To compute (M - a robochef) cooking (I - candy corn):
	let D be a random off-stage gelatin;
	if D is food:
		now the quality of D is a random number between 1 and -1;
		now the fat of D is 1;
		now D is carried by M.

digestive biscuit is a candy. The text-shortcut of digestive biscuit is "dbc".

To say ExamineDesc of (C - digestive biscuit):
	say "A small boring digestive biscuit. You don't understand why these are so popular!".

Figure of digestive biscuit is the file "Items/Collectibles/biscuit1.jpg".

To decide which figure-name is the examine-image of (F - digestive biscuit):
	decide on figure of digestive biscuit.

Definition: digestive biscuit is low tier: decide yes.

To say ShortDesc of (C - digestive biscuit):
	say "digestive biscuit".

To say DevourFlav of (C - digestive biscuit):
	say "You [if the player is hungry or the fat-weight of the player > 25]devour the entire [C] whole[otherwise]bite off half of the [C] before swallowing it, and then you munch on the other half until it has all gone[end if]. ".

To decide which number is the crafting key of (C - digestive biscuit):
	decide on 43.

Carry out TQeating digestive biscuit:
	say DevourFlav of the noun;
	if the player is getting unlucky:
		say "You feel all your energy drain from your muscles, and your body suddenly feels very heavy. You need a rest![line break][GotUnluckyFlav]";
		now the fatigue of the player is the buckle threshold of the player;
	otherwise:
		say "You don't feel any different.".

To compute (M - a robochef) cooking (I - digestive biscuit):
	let D be a random off-stage cookie;
	if D is food:
		now the quality of D is a random number between 1 and -2;
		now the fat of D is 2;
		now D is carried by M.

To decide which number is the bartering value of (T - digestive biscuit) for (M - prison guard):
	if the times-met of ex-princess > 0, decide on 10;
	decide on 0.

To say OfferThanksFlav of (M - prison guard) for (T - digestive biscuit):
	say "[speech style of M]'How did you know? These are my favourite! I wish I could give you something in return[if skeleton key is off-stage]. Hmm...'[otherwise].'[end if][roman type][line break]".

To compute offer reward of (M - prison guard) for (T - digestive biscuit):
	if skeleton key is off-stage, compute M rewarding skeleton key;
	FavourUp M by 2.

A liquorice is a candy. The text-shortcut of liquorice is "lq".

To say ExamineDesc of (C - liquorice):
	say "A strand of black liquorice. You hate the taste of liquorice almost as much as the taste of pineapple pizza!'".

Figure of liquorice is the file "Items/Collectibles/liquorice1.jpg".

To decide which figure-name is the examine-image of (F - liquorice):
	decide on figure of liquorice.

To say ShortDesc of (C - liquorice):
	say "liquorice".

liquorice-timer is a number that varies.

Definition: liquorice is low tier: decide yes.

To say DevourFlav of (C - liquorice):
	say "You quickly chew the [C] before swallowing it. ".

To decide which number is the crafting key of (C - liquorice):
	decide on 41.

Carry out TQeating liquorice:
	say DevourFlav of the noun;
	if the player is getting unlucky:
		say "Yuck! You feel your body weaken [if liquorice-timer > 0]even further[otherwise]slightly. You feel that it's going to stay that way until the bittersweet taste fades from your mouth[end if].[line break][GotUnluckyFlav]";
		increase liquorice-timer by default-candy-duration;
	otherwise:
		say "You manage to tolerate the bittersweet taste without suffering any [if liquorice-timer > 0]further [end if]negative effects.".

a time based rule (this is the liquorice decay rule):
	if liquorice-timer > default-candy-duration:
		decrease liquorice-timer by time-seconds;
		if liquorice-timer <= default-candy-duration:
			say "[bold type]The strength decreasing effects of the liquorice have diminished.[roman type][line break]";
	otherwise if liquorice-timer > 0:
		decrease liquorice-timer by time-seconds;
		if liquorice-timer <= 0:
			say "[bold type]The strength decreasing effects of the liquorice have disappeared![roman type][line break]";
			now liquorice-timer is 0.

To compute (M - a robochef) cooking (I - liquorice):
	let D be a random off-stage gelatin;
	if D is food:
		now the quality of D is a random number between 0 and -2;
		now the fat of D is 1;
		now D is carried by M.

Book - High Tier Candy

bubblegum is a candy. The text-shortcut of bubblegum is "bbg".
To say ExamineDesc of (B - bubblegum):
	say "A pack containing a single stick of gum, labelled 'MAGIC EDIBLE BUBBLEGUM!'".

Figure of bubblegum is the file "Items/Collectibles/bubblegum1.jpg".

To decide which figure-name is the examine-image of (F - bubblegum):
	decide on figure of bubblegum.

To decide which number is the crafting key of (C - bubblegum):
	decide on 57.

To say ShortDesc of (C - bubblegum):
	say "bubblegum".

To say DevourFlav of (C - bubblegum):
	say "You chew on the bubblegum, and blow a huge pink bubble until it pops! ".

Carry out TQeating bubblegum:
	say DevourFlav of the noun;
	if (diaper quest is 0 or diaper messing < 3) and the player is getting unlucky:
		say "As it pops, you blink.[line break][variable custom style]What was I thinking about again?[roman type][line break]It feels a little more difficult to think, but if anything that just makes you feel more carefree.";
		IntDown 1;
		say GotUnluckyFlav;
	otherwise:
		say "Magic power surges through your tongue to the rest of your body!";
		MagicPowerUp 1;
	say "You happily swallow what's left of the edible treat.".

To compute (M - a robochef) cooking (I - bubblegum):
	let D be a random off-stage truffle;
	if D is food:
		now the quality of D is a random number between 2 and 1;
		if a random number between 1 and 3 is 1, now the quality of D is -2;
		now the fat of D is a random number between 2 and 3;
		now D is carried by M.

chocolate bar is a candy. The text-shortcut of chocolate bar is "cb".

To say ExamineDesc of (B - chocolate bar):
	say "A small bar of chocolate, still in its wrapper. The label says 'Experimental molecule replication nanobots will bulk up whatever organic matter they come across! Be healed in seconds!'".

Figure of chocolate is the file "Items/Collectibles/chocolate1.jpg".

To decide which figure-name is the examine-image of (F - chocolate bar):
	decide on figure of chocolate.

To decide which number is the crafting key of (C - chocolate bar):
	decide on 30.

To say ShortDesc of (C - chocolate bar):
	say "chocolate bar".

Carry out TQeating chocolate bar:
	say "[DevourFlav of the noun][if the body soreness of the player > 0]You can feel the nanobots inside the chocolate getting to work, healing your bruises and easing your tired muscles! But then suddenly[otherwise]Suddenly[end if] ";
	bodyheal 7;
	if rectum > 2:
		now rectum is rectum * 4;
		say "you feel a rumbling in your bowels and whimper as you feel the digested food within your intestines expand and quadruple in bulk. Your belly swells to contain the huge load, and [if the player is feeling full]you feel a desperate need to go number two![otherwise]you can tell that are going to have to go number two soon.[end if]";
	otherwise if diaper quest is 1:
		if diaper messing >= 3:
			StomachFoodUp 2;
			increase rectum by 5;
		otherwise:
			StomachFoodUp 5;
		say "you feel a rumbling in your stomach and whimper as you feel the recent food you ate expand and double in bulk. Your belly swells to contain the huge load!";
	otherwise if assfilled is 1:[possibly too severe for something that happens 100% of the time!]
		say "[if the semen volume of belly is 0]you realise that the nanobots must have found a few leftover cells of [semen] in your belly as [end if]your innards explode outwards, filled with [if the semen volume of belly > 0]even more of [end if]the white gooey liquid!";
		AssFill belly limit - the total squirtable fill of belly;
	otherwise if a random number between 1 and 3 > 1 and the player is not top heavy:
		say "you feel your chest swell outwards - some of the nanobots must have made their way to your [BreastDesc]!";
		BustUp 4;
	otherwise:
		say "you feel your hips rumble and start to swell - some of the nanobots must have made their way to your butt!";
		HipUp 1.

To compute (M - a robochef) cooking (I - chocolate bar):
	let D be a random off-stage truffle;
	if D is food:
		now the quality of D is a random number between 2 and 1;
		if a random number between 1 and 3 is 1, now the quality of D is -2;
		now the fat of D is a random number between 2 and 3;
		now D is carried by M.

A creme egg is a kind of candy. The text-shortcut of creme egg is "ce". There is 1 creme egg.
To say ExamineDesc of (C - creme egg):
	say "A small chocolate egg, still in its wrapper. A mystery filling awaits inside.".

Figure of creme egg is the file "Items/Collectibles/creme1.jpg".
Figure of golden-creme-egg is the file "Items/Collectibles/creme2.jpg".

To decide which figure-name is the examine-image of (F - creme egg):
	decide on figure of creme egg.

golden-creme-egg is a creme egg. The text-shortcut of golden-creme-egg is "gce". Understand "golden", "creme", "creme egg" as golden-creme-egg.

To say ExamineDesc of (C - golden-creme-egg):
	say "A small chocolate egg with a mystery filling, still in its wrapper. Its golden wrapping indicates that it's of a higher quality than usual.".

Definition: golden-creme-egg is top tier: decide yes.

To decide which figure-name is the examine-image of (F - golden-creme-egg):
	decide on figure of golden-creme-egg.

creme-egg-timer is a number that varies.

To decide which number is the crafting key of (C - a creme egg):
	decide on 39.

To say ShortDesc of (C - a creme egg):
	say "creme egg".

To say ShortDesc of (C - golden-creme-egg):
	say "golden creme egg".

To say DevourFlav of (C - a creme egg):
	say "You unwrap the [C] and pop the entire thing into your mouth before biting into it. ".

Carry out TQeating creme egg:
	say "[DevourFlav of the noun] As your tongue hits the centre, you ";
	if (diaper quest is 0 or diaper messing < 3) and the player is getting unlucky:
		if diaper quest is 1 or (diaper lover > 0 and a random number between 1 and 2 is 1):
			if the incontinence of the player < the max-incontinence of the player and a random number between 1 and 2 is 1:
				say "taste something bubbling with cursed magic.[line break][variable custom style]What was that?! And why can I suddenly I feel my bladder?![roman type][line break]A cursed effect seems to be making you temporarily incontinent!";
				increase temporary-incontinence by 3;
			otherwise if diaper messing >= 4 and a random number between 1 and 2 is 1:
				say "taste something extremely sour.[line break][variable custom style]Castor oil[one of][or] again[stopping]?![roman type][line break]Almost immediately you feel a growing pressure in your bowels...";
				increase suppository by 1;
			otherwise:
				say "taste something bitter. Moments later, you feel a slight twinge in your bladder as your control over it weakens.";
				increase incontinence by 1;
		otherwise:
			say "are [if the semen taste addiction of the player > 12]thrilled[otherwise if the semen taste addiction of the player > 8]surprised[otherwise if the semen taste addiction of the player > 4]dismayed[otherwise]disgusted[end if] to find that it is filled with [semen]! You [if the semen taste addiction of the player > 10]happily swallow it[otherwise]reluctantly force it[end if] down.";
			StomachSemenUp 2;
		say GotUnluckyFlav;
	otherwise:
		say "find that the tasty tangy liquid sends a tingle down your legs. You feel yourself getting [if the noun is golden-creme-egg]much [otherwise if creme-egg-timer > 0]even [end if]faster!";
		if the noun is golden-creme-egg, increase creme-egg-timer by default-candy-duration;
		increase creme-egg-timer by default-candy-duration.

an all time based rule (this is the creme egg decay rule):
	if creme-egg-timer > default-candy-duration:
		decrease creme-egg-timer by time-seconds;
		if creme-egg-timer <= default-candy-duration:
			say "[bold type]The dexterity improving effects of the creme egg have decreased.[roman type][line break]";
	otherwise if creme-egg-timer > 0:
		decrease creme-egg-timer by time-seconds;
		if creme-egg-timer <= 0:
			say "[bold type]The dexterity improving effects of the creme egg have ended.[roman type][line break]";
			now creme-egg-timer is 0.

To compute (M - a robochef) cooking (I - a creme egg):
	let D be a random off-stage truffle;
	if D is food:
		now the quality of D is a random number between 0 and -2;
		if D is golden-creme-egg, increase the quality of D by a random number between 1 and 2;
		now the fat of D is 2;
		if D is golden-creme-egg, increase the fat of D by 1;
		now D is carried by M.

fudge is a candy. The text-shortcut of fudge is "fud".

To say ExamineDesc of (C - fudge):
	say "A piece of fudge, still in its wrapper. It will definitely significantly increase your energy, and hopefully it isn't poisoned.".

Figure of fudge is the file "Items/Collectibles/fudge1.jpg".

To decide which figure-name is the examine-image of (F - fudge):
	decide on figure of fudge.

fudge-poison-timer is a number that varies.

To decide which number is the crafting key of (C - fudge):
	decide on 29.

To say ShortDesc of (C - fudge):
	say "fudge".

Carry out TQeating fudge:
	say "[DevourFlav of the noun]You feel more energetic[if the body soreness of the player > 0] and healed[end if]! ";
	FatigueDown 160;
	bodyheal 4;
	if (diaper quest is 0 or diaper messing < 3) and the player is getting unlucky:
		say "[if fudge-poison-timer > 0]You feel more of the dexterity draining poison enter your veins.[otherwise]But your limbs suddenly feel much heavier. The fudge was poisoned![end if][line break][GotUnluckyFlav]";
		increase fudge-poison-timer by default-candy-duration / 2.

a time based rule (this is the fudge poison decay rule):
	if fudge-poison-timer > 0:
		decrease fudge-poison-timer by time-seconds;
		if fudge-poison-timer <= 0:
			say "[bold type]The poison from the fudge seems to have run its course and your speed returns to you.[roman type][line break]";
			now fudge-poison-timer is 0.

To compute (M - a robochef) cooking (I - fudge):
	let D be a random off-stage truffle;
	if D is food:
		now the quality of D is a random number between 2 and -2;
		now the fat of D is 2;
		now D is carried by M.

lollipop is a candy. The text-shortcut of lollipop is "llp".

To say ExamineDesc of (C - lollipop):
	say "A [if diaper quest is 1 or lactation fetish is 1]white[otherwise]pink[end if] lollipop.".

Figure of lollipop is the file "Items/Collectibles/lollipop1.png".

To decide which figure-name is the examine-image of (F - lollipop):
	if diaper quest is 0 and lactation fetish is 0, decide on figure of pink lollipop;
	decide on figure of lollipop.

To decide which number is the crafting key of (C - lollipop):
	decide on 33.

To say ShortDesc of (C - lollipop):
	say "lollipop".

To say DevourFlav of (C - lollipop):
	say "You pop the entire thing into your mouth and suck on the sugary treat. ".

Carry out TQeating lollipop:
	say "[DevourFlav of the noun]The sucking action helps your body to calm down. ";
	force cool down 4000;
	SexAddictDown 1;
	if (diaper quest is 0 or diaper messing < 3) and the player is getting unlucky:
		if diaper quest is 0 and the lips of face < 2 + artificial enhancements fetish:
			say "You feel some cursed magic rub off onto your lips. Did they get a bit bigger?";
			LipsUp 1;
		otherwise if diaper messing < 3 or lactation fetish is 1:
			say "This one tastes like sickly sweet milk!";
			MilkTasteAddictUp 2 - diaper quest;
		otherwise:
			say "You feel some cursed magic rub off onto your lips.";
			OralSexAddictUp 1;
		say GotUnluckyFlav.

To compute (M - a robochef) cooking (I - lollipop):
	let D be a random off-stage truffle;
	if D is food:
		now the quality of D is a random number between 2 and -2;
		now the fat of D is 2;
		now D is carried by M.

pink nougat is a candy. The text-shortcut of pink nougat is "png".

Definition: pink nougat is pink themed: decide yes.

Figure of pink nougat is the file "Items/Collectibles/pinknougat1.jpg".

To decide which figure-name is the examine-image of (C - pink nougat):
	decide on figure of pink nougat.

To say ExamineDesc of (C - pink nougat):
	say "A small pink nougat with nuts. It glistens slightly, almost as if it is made of pure energy. It seems likely to increase your blood flow, which should hopefully increase your strength for a while.".

pink-nougat-timer is a number that varies.

To decide which number is the crafting key of (C - pink nougat):
	decide on 40.

To say ShortDesc of (C - pink nougat):
	say "pink nougat".

To say DevourFlav of (C - pink nougat):
	say "You chew on the nutty sweet for a few moments before swallowing the delicious treat. ".

Carry out TQeating pink nougat:
	say "[DevourFlav of the noun] As the candy reaches your stomach you suddenly feel ";
	if (diaper quest is 0 or diaper messing < 3) and the player is getting unlucky:
		say "an overpowering arousal flood your entire body. You can actually feel your pupils dilate as your heartbeat thumps loud and fast.";
		now refractoryperiod is 0;
		arouse 7000;
		check for arousal change;
		say "[variable custom style][one of]Uh-oh, it seems like some of these nougats increase a different kind of blood flow...[or][if the bimbo of the player < 7]Oh god, I wanted strength, not this again![otherwise if the bimbo of the player < 14 and the player is able to automatically masturbate]Oh no, not again! I should find somewhere private to sort myself out.[otherwise]Ooh, I need to cum so bad... I'm sure someone here can help me...[end if][stopping][roman type][line break]";
	otherwise:
		say "a surge of energy down your arms. You feel yourself getting [if pink-nougat-timer > 0]even [end if]stronger!";
		increase pink-nougat-timer by default-candy-duration.

an all time based rule (this is the pink nougat decay rule):
	if pink-nougat-timer > default-candy-duration:
		decrease pink-nougat-timer by time-seconds;
		if pink-nougat-timer <= default-candy-duration:
			say "[bold type]The strength improving effects of the nougat have decreased.[roman type][line break]";
	otherwise if pink-nougat-timer > 0:
		decrease pink-nougat-timer by time-seconds;
		if pink-nougat-timer <= 0:
			say "[bold type]The strength improving effects of the nougat have ended.[roman type][line break]";
			now pink-nougat-timer is 0.

To compute (M - a robochef) cooking (I - pink nougat):
	let D be a random off-stage gelatin;
	if D is food:
		now the quality of D is a random number between 2 and 0;
		now the fat of D is 3;
		now D is carried by M.

strawberry lace is a candy. The text-shortcut of strawberry lace is "sl".

To say ExamineDesc of (C - strawberry lace):
	say "This long and thin piece of candy consists of a sour lace coated with sweet sugar.".

Figure of strawberry lace is the file "Items/Collectibles/lace1.jpg".

To decide which figure-name is the examine-image of (F - strawberry lace):
	decide on figure of strawberry lace.

strawberry-lace-timer is a number that varies.

To decide which number is the crafting key of (C - strawberry lace):
	decide on 42.

To say ShortDesc of (C - strawberry lace):
	say "strawberry lace".

To say DevourFlav of (C - strawberry lace):
	say "You chew the [C] from one end to the other, swallowing as you go. ".

Carry out TQeating strawberry lace:
	say "[DevourFlav of the noun] As you finish eating it, you shiver and ";
	if (diaper quest is 0 or diaper messing < 3) and the player is getting unlucky:
		say "suddenly feel a strike on your [buttcheeks]! Whirling your head around, you see a giant strawberry lace hovering in the air behind you, flicking back and forth as it whips your ass fast and hard. You yelp [unless the player is wrist bound in front]and try to block the strokes with your hands but the magic lace somehow[otherwise]as it[end if] manages to find its mark past your hands each time, with surgical precision![line break][GotUnluckyFlav]Ten speedy swats later the lace stops whipping, leaving the welts burning. You [if the delicateness of the player < 7]struggle to avoid bursting into tears[otherwise if the delicateness of the player < 12]gently sob to yourself[otherwise]wail like a pathetic little girl[end if] as the stinging feeling grows worse over the next few seconds. The magic lace flies away into the distance.";
		PainUp 1;
		BodyRuin 3;
	otherwise:
		say "find your mind sparkling with brilliance. You feel yourself getting [if strawberry-lace-timer > 0]even [end if]smarter!";
		increase strawberry-lace-timer by default-candy-duration.

an all time based rule (this is the strawberry lace decay rule):
	if strawberry-lace-timer > default-candy-duration:
		decrease strawberry-lace-timer by time-seconds;
		if strawberry-lace-timer <= default-candy-duration:
			say "[bold type]The intelligence improving effects of the strawberry lace have decreased.[roman type][line break]";
	otherwise if strawberry-lace-timer > 0:
		decrease strawberry-lace-timer by time-seconds;
		if strawberry-lace-timer <= 0:
			say "[bold type]The intelligence improving effects of the strawberry lace have ended.[roman type][line break]";
			now strawberry-lace-timer is 0.

To compute (M - a robochef) cooking (I - strawberry lace):
	let D be a random off-stage gelatin;
	if D is food:
		now the quality of D is a random number between 2 and -2;
		now the fat of D is 2;
		now D is carried by M.

toffee is a candy. The text-shortcut of toffee is "to".

To say ExamineDesc of (C - toffee):
	say "A toffee sweet, still in its wrapper. It will definitely increase your energy, and hopefully isn't poisoned...".

Figure of toffee is the file "Items/Collectibles/toffee1.jpg".

To decide which figure-name is the examine-image of (F - toffee):
	decide on figure of toffee.

To say ShortDesc of (C - toffee):
	say "toffee".

toffee-poison-timer is a number that varies.

To decide which number is the crafting key of (C - toffee):
	decide on 28.

Carry out TQeating toffee:
	say "[DevourFlav of the noun]You feel more energetic[if the body soreness of the player > 0] and healed[end if]! ";
	FatigueDown 80;
	bodyheal 2;
	if tutorial is 1 or ((diaper quest is 0 or diaper messing < 3) and the player is getting unlucky):
		say "But [if toffee-poison-timer > 0]you also feel more of the intelligence draining poison enter your veins[otherwise]your brain suddenly clouds over and it's much more difficult to think. The toffee was poisoned[end if]![line break][GotUnluckyFlav]";
		increase toffee-poison-timer by default-candy-duration / 2.

a time based rule (this is the toffee poison decay rule):
	if toffee-poison-timer > 0:
		decrease toffee-poison-timer by time-seconds;
		if toffee-poison-timer <= 0:
			say "[bold type]The poison from the toffee seems to have run its course and you are able to think more clearly again.[roman type][line break]";
			now toffee-poison-timer is 0.

To compute (M - a robochef) cooking (I - toffee):
	let D be a random off-stage cookie;
	if D is food:
		now the quality of D is a random number between 2 and 0;
		now the fat of D is 3;
		now D is carried by M.

Candy ends here.
