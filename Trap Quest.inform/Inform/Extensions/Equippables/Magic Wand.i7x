Magic Wand by Equippables begins here.

A magic wand is a kind of vibe-wand. A magic wand is usually unique. A magic wand is usually metal. There is 1 magic wand. The printed name of magic wand is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]magic wand[clothing-title-after]". The text-shortcut of magic wand is "mw". Figure of magic wand is the file "Items/Accessories/Toys/goldenphallus1.png".

To decide which figure-name is clothing-image of (C - a magic wand):
	decide on figure of magic wand.

To say ClothingDesc of (W - a magic wand):
	say "A solid gold wand you stole from an aeromancer. Despite being made of metal, it feels almost completely weightless when you hold it in your hand, as if filled with some magic lighter than air gas. There is a switch on the bottom that reads 'Vibrate'. [line break][variable custom style][if the intelligence of the player < 4]Viii... braa... taay. What does that mean?[otherwise if the sex addiction of the player < 7]So it's THAT kind of wand.[otherwise]I know what I'm going to use THAT for! Tee-hee![end if][roman type][line break]".

To say ShortDesc of (W - a magic wand):
	say "solid gold wand".

To decide which number is the initial outrage of (C - a magic wand):
	decide on 0.

To decide which number is the raw-masturbation-bonus of (C - a magic wand):
	decide on -1.[offsets the default]

To decide which number is the damage improvement of (W - a magic wand):
	let X be MagicPowerDamage + 3;
	increase X by the magic-modifier of W;
	increase X by saved-flat-intelligence / 6;
	if X < 0, decide on 0;
	decide on X.

To compute attack of (W - a magic wand) at (M - a monster):
	say "[one of]You slash at [NameDesc of M] with a whip-like gust of air.[or]You buffet [NameDesc of M] with gusts of air.[or][if the player is wrist bound or the largeness of breasts > 15]You flick the wand, slashing at [NameDesc of M] with a gust of wind![otherwise]You swing the wand with a wide flourish, slashing [NameDesc of M] with a gust of wind![end if][or][if the player is wrist bound or the largeness of breasts > 15]You wave the wand as best you can, buffeting [NameDesc of M] with whip-like gusts of wind![otherwise]You flourish the wand, striking [NameDesc of M] with a screaming gust of air![end if][or][if the player is wrist bound or the largeness of breasts > 15]You flick the wand, striking [NameDesc of M] with a gust of air.[otherwise]You swing the wand, blasting [NameDesc of M] with a gust of air![end if][then at random]".

To compute climax effect of (E - a magic wand):[copy of the effect from the golden phallus, but better since you don't have to put it in]
	let B be the body soreness of the player;
	if E is not cursed, BodyHeal 1;
	if E is blessed, BodyHeal 1;
	if the body soreness of the player < B, say "[bold type]Somehow your body feels a bit less bruised![roman type][line break]".

To compute attack effect of (W - a magic wand):
	if attack-type is 5:
		let R be a random number between 1 and 3;
		if R is 1 and the total fill of belly < belly limit:
			let B be the largeness of belly;
			AssFill 2 Air;
			if the largeness of belly > B, say "You notice that your [BellyDesc] has somehow grown in size. It must be the wand?";
		if R is 2:
			let B be the largeness of breasts;
			BustInflate 2;
			if the largeness of breasts > B, say "You notice that your [BreastDesc] have somehow grown in size. It must be the wand?";
		if R is 3:
			let H be the total volume of hips;
			AssInflate 2;
			if the total volume of hips > H, say "You notice that your [AssDesc] have somehow grown in size. It must be the wand?".

To compute takeoff of (W - a magic wand):
	let M be a random off-stage aeromancer;
	if M is monster and a random number between -1 and 2 > the floatskill of the player:
		now M is in the location of the player;
		set up M;
		if the location of the player is no-roof:
			say "As you float off, the wand falls out of your hand! [BigNameDesc of M] appears from thin air and immediately catches it. [big he of M] waves as you float off into the sky.[line break][second custom style]'[one of]You better hope I don't find you again, I won't go easy on you!'[or]Up up and away!'[or]Don't worry, I'll find YOU!'[in random order][roman type][line break]";
		otherwise:
			say "As you float off, the wand falls out of your hand! [BigNameDesc of M] appears from thin air and immediately catches it.[line break][second custom style]'[one of]Payback time!'[or]I'm really going to enjoy this.'[or]You're about to get the wind knocked into you!'[or]Revenge is a dish best served in a windmill!'[as decreasingly likely outcomes][roman type][line break]";
		now the favour of M is 0;
		now the balloon of M is 9;
		now M is wand-empowered;
		permanently anger M;
		only destroy W.

Definition: a magic wand is inflation themed: decide yes.
Definition: a magic wand is magic themed: decide yes.
Definition: a magic wand is yellow themed: decide yes.

Magic Wand ends here.
