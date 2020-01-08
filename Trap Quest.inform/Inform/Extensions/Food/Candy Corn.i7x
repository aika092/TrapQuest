Candy Corn by Food begins here.

A candy corn is a kind of candy. The printed name of candy corn is "[TQlink of item described]pack of candy corn[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of candy corn is "[TQlink of item described]packs of candy corn[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of candy corn is "crn". There is 1 candy corn.
To say ExamineDesc of (B - a candy corn):
	say "A translucent packet of white, orange and yellow candies.".


Figure of candy corn is the file "Items/Collectibles/candycorn1.jpg".

To decide which figure-name is the examine-image of (F - a candy corn):
	decide on figure of candy corn.

To decide which number is the crafting key of (C - a candy corn):
	decide on 46.

To say ShortDesc of (C - a candy corn):
	say "candy corn".

Definition: a candy corn is low tier: decide yes.

To say DevourFlav of (C - a candy corn):
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

To compute (M - a robochef) cooking (I - a candy corn):
	let D be a random off-stage gelatin;
	if D is food:
		now the quality of D is a random number between 1 and -1;
		now the fat of D is 1;
		now D is retained by M.

Candy Corn ends here.
