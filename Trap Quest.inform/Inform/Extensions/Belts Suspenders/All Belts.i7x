All Belts by Belts Suspenders begins here.

A belt is a kind of clothing. A belt is unskirted. A belt is manly.
Definition: a belt is same-type if theme-share-target is belt.

Chapter - Wearability

belt wearability rules is a rulebook. The wearability rules of a belt is usually belt wearability rules.

This is the belt already worn rule:
	repeat with B running through worn belts:
		if summoning is 0 and autowear is false, say "You can't wear that because [if B is wearing-target]you're already wearing it[otherwise]you're already wearing the [printed name of B][end if]!";
		rule fails.
The belt already worn rule is listed in the belt wearability rules.

A suspenders is a kind of belt. The printed name of suspenders is usually "[clothing-title-before]pair of suspenders[clothing-title-after]". The printed plural name of suspenders is usually "[clothing-title-before]pairs of suspenders[clothing-title-after]". The text-shortcut of suspenders is "sus". Understand "pair", "pair of", "garter", "garters", "garterbelt" as suspenders.

To decide which number is the initial outrage of (C - a suspenders):
	decide on 2.

To uniquely set up (S - a suspenders):
	now the raw-magic-modifier of S is 0.

To set up influence of (C - a suspenders):
	set up random-based influence of C.

To restock (C - a suspenders):
	let B be a random basic loot suspenders;
	if B is suspenders, now B is in Standard Item Pen.

This is the setup starting pair of suspenders rule:
	let C be a random suspenders;
	restock C.
The setup starting pair of suspenders rule is listed in the setup starting items rules.

Report examining suspenders:
	if newbie tips is 1, say "[one of][newbie style]Suspenders can enhance the effects of your stockings.[roman type][line break][or][stopping]".

To say ShortDesc of (O - a suspenders):
	say "pair of suspenders".

To say ShortestDesc of (C - a suspenders):
	say "pair of suspenders".

[Report wearing stockings when there are worn suspenders:
	let S be a random worn suspenders;
	if S is not cursed and the noun is cursed:
		say "The clips on your [printed name of S] snap onto the [noun] and refuse to let go! Even worse, your suspenders seal themselves to your hips. It seems that they're cursed now...";
		now S is cursed;
		now S is sure;
		compute summoned quest of S.

Report wearing suspenders when there are worn stockings:
	let S be a random worn stockings;
	if S is not cursed and the noun is cursed:
		say "The clips on your [noun] snap onto the [printed name of S] and refuse to let go! Even worse, your stockings shrink a little, sealing themselves to your legs. It seems that they're cursed now...";
		now S is cursed;
		now S is sure;
		compute summoned quest of S.]

Report wearing suspenders:
	if the noun is unsure and the noun is cursed, say "You finish slipping your [ShortDesc of the noun] onto your hips. As you let go you feel the clothing seal itself to your hips. These suspenders are cursed!".

To decide which number is the knee-modifier of (C - a suspenders):
	let S be a random worn stockings;
	let N be 0;
	if S is stockings:
		increase N by 1;
		if C is blessed, increase N by 1;
		if C is cursed, decrease N by 1;
	decide on N.

To decide which object is the coverer of (C - a suspenders):
	repeat with R running through worn knee-length or longer clothing:
		if R is crotch-in-place, decide on R;
	repeat with R running through worn leg covering clothing:
		if (R is trousers or R is overdress) and R is crotch-in-place, decide on R;
	decide on nothing.

To decide which object is the concealer of (C - a suspenders):
	repeat with R running through worn actually dense knee-length or longer clothing:
		if R is crotch-in-place, decide on R;
	repeat with R running through worn actually dense leg covering clothing:
		if (R is trousers or R is overdress) and R is crotch-in-place, decide on R;
	decide on nothing.

To decide which object is the at least partial concealer of (C - a suspenders):
	if C is listed in the armUses of arms, decide on arms;
	repeat with R running through worn knee-length or longer clothing:
		if R is crotch-in-place and R is not see-through, decide on R;
	repeat with R running through worn leg covering clothing:
		if (R is trousers or R is overdress) and R is crotch-in-place and R is not see-through, decide on R;
	decide on nothing.

Definition: a suspenders is bow themed: decide yes.

Definition: a suspenders is ingredient: decide yes.

To decide which number is the crafting key of (C - a suspenders):
	decide on 52.

Section - Wearability

suspenders removability rules is a rulebook. The removability rules of suspenders is usually suspenders removability rules.

This is the cursed stockings prevents removal of suspenders rule:
	repeat with C running through worn cursed stockings:
		if summoning is 0:
			if autoremove is false, say "Your [C] are somehow preventing you!";
			rule fails.
The cursed stockings prevents removal of suspenders rule is listed in the suspenders removability rules.

a black suspenders is a kind of suspenders. There is 1 black suspenders. A black suspenders is usually nylon. A black suspenders is usually sheer. The printed name of a black suspenders is usually "[clothing-title-before]pair of black sheer suspenders[clothing-title-after]". The printed plural name of a black suspenders is usually "[clothing-title-before]pairs of black sheer suspenders[clothing-title-after]". The text-shortcut of black suspenders is "bsu". Figure of black suspenders is the file "Items/Clothes/Lower/Waist/Suspenders/suspenders5.png". Understand "sheer" as black suspenders.
Definition: a black suspenders is black themed: decide yes.

To decide which figure-name is clothing-image of (C - a black suspenders):
	decide on figure of black suspenders.

To say ClothingDesc of (S - a black suspenders):
	say "A slutty pair of sheer black and red suspenders with a red bow in the middle. It looks like it would be sold in a sex shop.".

To decide which number is the initial outrage of (C - a black suspenders):
	decide on 3.

a bridal sissy-suspenders is a kind of suspenders. There is 1 transformation-rare bridal sissy-suspenders. A bridal sissy-suspenders is usually silk. The printed name of a bridal sissy-suspenders is usually "[clothing-title-before]pair of bridal sissy suspenders[clothing-title-after]". The printed plural name of a bridal sissy-suspenders is usually "[clothing-title-before]pairs of bridal sissy-suspenders[clothing-title-after]". The text-shortcut of bridal sissy-suspenders is "bss". Figure of bridal sissy-suspenders is the file "Items/Clothes/Lower/Waist/Suspenders/suspenders1.png". Understand "sissy", "suspenders" as bridal sissy-suspenders.

To decide which figure-name is clothing-image of (C - a bridal sissy-suspenders):
	decide on figure of bridal sissy-suspenders.

To say ClothingDesc of (S - a bridal sissy-suspenders):
	say "A hyper-feminine set of pink silky and frilly suspenders with a white frilly edge.".

To say ShortDesc of (S - a bridal sissy-suspenders):
	say "bridal sissy suspenders".

Definition: a bridal sissy-suspenders is sissifying: decide yes.
Definition: a bridal sissy-suspenders is pink themed: decide yes.

To set up influence of (C - a bridal sissy-suspenders):
	now C is delicateness-influencing.

To decide which number is the initial outrage of (C - a bridal sissy-suspenders):
	decide on 4.

The demon belt is a belt. Figure of demon belt is the file "Items/Clothes/Lower/Waist/Belts/belt3.png". The demon belt is unique. The demon belt is leather. The printed name of demon belt is usually "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]demon belt[clothing-title-after]". The text-shortcut of demon belt is "dbl".

To decide which figure-name is clothing-image of (C - demon belt):
	decide on figure of demon belt.

To say ShortDesc of (C - demon belt):
	say "demon belt".

To say ClothingDesc of (C - demon belt):
	say "This leather belt has a weird symbol made out of hexagons on the front.".

To set up influence of (C - demon belt):
	now C is strength-influencing.

To set up magic state of (C - demon belt):
	now the raw-magic-modifier of C is 2.

Definition: demon belt is transformation-protected: decide yes.
Definition: demon belt is demonic: decide yes.
Definition: demon belt is black themed: decide yes.

living belt of sturdiness is a belt. living belt of sturdiness is unique. living belt of sturdiness is biological. The printed name of living belt of sturdiness is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]living belt of sturdiness[clothing-title-after]". The text-shortcut of living belt of sturdiness is "lbs".

living belt of sturdiness has a number called buildup. The buildup of the living belt of sturdiness is 0.

Definition: a living belt of sturdiness is father material: decide yes.
Definition: a living belt of sturdiness is grey themed: decide yes.
Definition: a living belt of sturdiness is fetish appropriate if diaper quest is 0.

To decide which figure-name is clothing-image of (C - the living belt of sturdiness):
	if C is penetrating a fuckhole, decide on figure of living belt of sturdiness penetrated;
	decide on figure of living belt of sturdiness.

To say ClothingDesc of (C - living belt of sturdiness):
	say "This 'belt' is a loop of living metallic silver tentacles that are slowly undulating. They look almost robotic in nature but they are warm to the touch and not as solid as a real metal.";
	if C is penetrating a fuckhole:
		say "[if C is filling asshole and C is filling vagina]The tentacles are[otherwise]The tentacle is[end if] currently penetrating you and filling you to the brim. ";
		if C is thrusting, say "[if C is filling asshole and C is filling vagina and (the anal sex addiction of the player > 6 or the vaginal sex addiction of the player > 6)]Moreover, the tentacles are fucking you simultaneously in a deliciously teasing[otherwise if the anal sex addiction of the player > 6]Moreover, the tentacle is fucking you in a deliciously teasing[otherwise if C is filling asshole and C is filling vagina] Even worse, the tentacles are fucking you simultaneously in a frustratingly distracting[otherwise] Even worse, the tentacle is fucking you in a frustratingly distracting[end if] slow, strong and steady manner.";
		otherwise say line break.

To say ShortDesc of (Y - living belt of sturdiness):
	say "living belt".

Definition: a living belt of sturdiness is product: decide yes.

To decide which number is the alchemy key of (C - living belt of sturdiness):
	decide on 19.

Definition: a clothing (called C) is thrusting:
	if C is living belt of sturdiness and C is penetrating a fuckhole and the player is upright and the player is horny, decide yes;
	decide no.

To decide which number is the girth of (I - the living belt of sturdiness):
	decide on 4.

To decide which number is the initial outrage of (C - living belt of sturdiness):
	if C is penetrating a fuckhole, decide on 20;
	decide on 1.

To uniquely set up (C - living belt of sturdiness):
	now the buildup of C is 0.

Definition: living belt of sturdiness is transformation-protected: decide yes.

To compute periodic effect of (I - living belt of sturdiness):
	if the player is upright:
		if the living belt of sturdiness is penetrating a fuckhole:
			if the buildup of the living belt of sturdiness > 6 and a random number between 1 and (30 - buildup of living belt of sturdiness) < 2 and the player is not unable to orgasm so soon:
				say "The steady fucking of the strong, rhythmic silver tentacle[if living belt of sturdiness is penetrating vagina and living belt of sturdiness is penetrating asshole]s[end if] of your [printed name of living belt of sturdiness] [one of]finally[or]once again[stopping] becomes too much for you, and your knees wobble and fail as you reach an extremely powerful climax.[line break][if the player is gagged]You scream into your [ShortDesc of random thing penetrating face]. [line break][variable custom style]'MMMMMPHH!!!'[otherwise][variable custom style]'Oooooooh fuuuuuuuuccckk!'[end if][roman type][line break]";
				if the largeness of belly > 5, appropriate-cutscene-display figure of living belt of sturdiness cutscene 3;
				otherwise appropriate-cutscene-display figure of living belt of sturdiness cutscene 2;
				if the living belt of sturdiness is penetrating vagina:
					vaginally orgasm shamefully;
				otherwise:
					anally orgasm shamefully;
			otherwise if the player is horny:
				let X be 8;
				if the player is very horny, now X is 4;
				if the player is extremely horny, now X is 1;
				if a random number between 1 and 8 is 1:
					say "The slow but steady thrusting of your [printed name of the living belt of sturdiness] is slowly building you towards an orgasm!";
					increase the buildup of the living belt of sturdiness by 1;
		otherwise:
			say "Silver tentacles shoot out of the belt and towards your crotch! You quickly feel the warm, smooth tip of a tentacle trying to push its way into your [asshole]! ";
			while the player is ass protected:
				let A be a random top level ass protection clothing worn by the player;
				say "The tentacle easily rips through your [printed name of A]!";
				if A is rippable, rip A;
				otherwise destroy A;
			if asshole is actually occupied:
				say "The tentacle, unable to enter your occupied [asshole], spanks your butt in frustration![line break][variable custom style][one of]Owwwww[or]Ouch[or]Fuck[or]Owiee[purely at random]![roman type][line break]";
				BodyRuin 1;
			otherwise:
				say "[if the openness of asshole < 8]With a moderate amount of effort and force, it manages to make its way in![otherwise]The tentacle slides into your loose hole with ease![end if]";
				now the living belt of sturdiness is penetrating asshole;
			if the player is female:
				say "You feel the warm, smooth tip of a tentacle trying to push its way into your [vagina]! ";
				while the player is pussy protected:
					let A be a random top level protection clothing worn by the player;
					say "The tentacle easily rips through your [printed name of A]!";
					if A is rippable, rip A;
					otherwise destroy A;
				if vagina is actually occupied:
					say "The tentacle, unable to enter your occupied [vagina], spanks your butt in frustration![line break][variable custom style][one of]Owwwww[or]Ouch[or]Fuck[or]Owiee[purely at random]![roman type][line break]";
					BodyRuin 1;
				otherwise:
					say "[if the openness of vagina < 8]With a moderate amount of effort and force, it manages to make its way in![otherwise]The tentacle slides into your loose hole with ease![end if]";
					now the living belt of sturdiness is penetrating vagina;
					appropriate-cutscene-display figure of living belt of sturdiness cutscene 1;
	otherwise:
		if the living belt of sturdiness is filling something:
			say "The [if the living belt of sturdiness is penetrating asshole and the living belt of sturdiness is penetrating vagina]tentacles recede[otherwise]tentacle recedes[end if] back into the belt[if the player is not ass protected], leaving you open and exposed[otherwise].[end if].";
			now the living belt of sturdiness is not penetrating asshole;
			now the living belt of sturdiness is not penetrating vagina;

Section 1 Wearability

This is the overdress living belt clash rule:
	if wearing-target is not no protection:
		if the living belt of sturdiness is worn:
			if summoning is 0 and autowear is false, say "Your [printed name of living belt of sturdiness] lashes out and prevents you from putting your feet through the leg holes! It looks like you're not allowed...";
			rule fails.
The overdress living belt clash rule is listed in the overdress wearability rules.

This is the knickers living belt clash rule:
	if wearing-target is not no protection:
		if the living belt of sturdiness is worn:
			if summoning is 0 and autowear is false, say "Your [printed name of living belt of sturdiness] lashes out and prevents you from putting your feet through the leg holes! It looks like you're not allowed...";
			rule fails.
The knickers living belt clash rule is listed in the knickers wearability rules.

This is the trousers living belt clash rule:
	if wearing-target is not no protection:
		if the living belt of sturdiness is worn:
			if summoning is 0 and autowear is false, say "Your [printed name of living belt of sturdiness] lashes out and prevents you from putting your feet through the leg holes! It looks like you're not allowed...";
			rule fails.
The trousers living belt clash rule is listed in the trousers wearability rules.

a red suspenders is a kind of suspenders. There is 1 transformation-rare red suspenders. A red suspenders is usually nylon. A red suspenders is usually sheer. The printed name of a red suspenders is usually "[clothing-title-before]pair of red suspenders[clothing-title-after]". The printed plural name of a red suspenders is usually "[clothing-title-before]pairs of red suspenders[clothing-title-after]". The text-shortcut of red suspenders is "rss". Figure of red suspenders is the file "Items/Clothes/Lower/Waist/Suspenders/suspenders4.png".
Definition: a red suspenders is red themed: decide yes.

To decide which number is the initial outrage of (C - a red suspenders):
	decide on 3.

To decide which figure-name is clothing-image of (C - a red suspenders):
	decide on figure of red suspenders.

To say ClothingDesc of (S - a red suspenders):
	say "A sexy pair of frilly red suspenders.".

a sissy-suspenders is a kind of suspenders. There is 1 transformation-rare sissy-suspenders. A sissy-suspenders is usually silk. The printed name of a sissy-suspenders is usually "[clothing-title-before]pair of sissy suspenders[clothing-title-after]". The printed plural name of a sissy-suspenders is usually "[clothing-title-before]pairs of sissy suspenders[clothing-title-after]". Figure of sissy-suspenders is the file "Items/Clothes/Lower/Waist/Suspenders/suspenders2.png". The text-shortcut of sissy-suspenders is "sss". Understand "sissy", "suspenders" as sissy-suspenders.

To decide which figure-name is clothing-image of (C - a sissy-suspenders):
	decide on figure of sissy-suspenders.

To say ClothingDesc of (S - a sissy-suspenders):
	say "A hyper-feminine set of pink silky and frilly suspenders.".

To say ShortDesc of (S - a sissy-suspenders):
	say "pink sissy suspenders".

Definition: a sissy-suspenders is sissifying: decide yes.
Definition: a sissy-suspenders is pink themed: decide yes.

To decide which number is the initial outrage of (C - a sissy-suspenders):
	decide on 5.

To set up influence of (C - a sissy-suspenders):
	now C is delicateness-influencing.

Definition: a sissy-suspenders is end of transformation chain: decide yes. [It's the end of the transformation chain. This will make some things avoid bothering to attempt to transform it.]

To say TransformReaction of (C - a sissy-suspenders):
	if the outrage of C is too humiliating:
		if C is cursed, say "[variable custom style]Am I really stuck wearing this? Look at these stupid hyper-feminine frills![roman type][line break]";
		otherwise say "[variable custom style]Maybe it's time to take these off. They've just got way too ridiculous...[roman type][line break]";
	otherwise if C is almost too much:
		say "[variable custom style]I guess this is what I have become. [if the player is male and transGender is 0]A super feminine sissy...[otherwise]A parody of my own gender...[end if][roman type][line break]";
	otherwise if the humiliation of the player < HUMILIATION-BROKEN:
		say "[variable custom style]These are so [if the humiliation of the player > HUMILIATION-SHAMELESS - 2000]perfect[otherwise]cute[end if]. I love the silky frills![roman type][line break]".

string-belt is a clothing. [No clashes.] The printed name of string-belt is "[clothing-title-before]string belt[clothing-title-after]". The text-shortcut of string-belt is "stb". string-belt is unique. string-belt is hemp. string-belt is manly. Understand "string", "belt" as string-belt. The soak-limit of string-belt is 1.

Figure of string belt 0 is the file "Items/Clothes/Lower/Waist/Belts/stringbelt0.png".
Figure of string belt 1 is the file "Items/Clothes/Lower/Waist/Belts/stringbelt1.png".
Figure of string belt 2 is the file "Items/Clothes/Lower/Waist/Belts/stringbelt2.png".
Figure of string belt 3 is the file "Items/Clothes/Lower/Waist/Belts/stringbelt3.png".
Figure of string belt 4 is the file "Items/Clothes/Lower/Waist/Belts/stringbelt4.png".
Figure of string belt 5 is the file "Items/Clothes/Lower/Waist/Belts/stringbelt5.png".

To decide which figure-name is the clothing-image of (C - string-belt):
	let T be the used condoms of C;
	if T > 4:
		decide on figure of string belt 5;
	otherwise if T is 4:
		decide on figure of string belt 4;
	otherwise if T is 3:
		decide on figure of string belt 3;
	otherwise if T is 2:
		decide on figure of string belt 2;
	otherwise if T is 1:
		decide on figure of string belt 1;
	otherwise:
		decide on figure of string belt 0.

To say ClothingDesc of (C - string-belt):
	say "This is a just a piece of string tied around your waist.".

To say ShortDesc of (C - string-belt):
	say "string belt".

Definition: string-belt is condom pinnable: decide yes.

tongue-belt is a belt. tongue-belt is unique. tongue-belt is biological. The printed name of tongue-belt is "[clothing-title-before]tongue belt[clothing-title-after]". The text-shortcut of tongue-belt is "tgbt". Understand "tongue", "belt" as tongue-belt.

Figure of tongue belt is the file "Items/Clothes/Lower/Waist/Belts/tonguebelt1a.png".
Figure of tonguing belt is the file "Items/Clothes/Lower/Waist/Belts/tonguebelt1b.png".

To decide which figure-name is the clothing-image of (C - tongue-belt):
	if C is tonguing, decide on figure of tonguing belt;
	decide on figure of tongue belt.

To say ClothingDesc of (C - tongue-belt):
	say "A belt made completely out of large red demonic tongues. [TongueStatus of C]".

To say ShortDesc of (C - tongue-belt):
	say "demon-tongue belt".

Definition: tongue-belt is demonic: decide yes.
Definition: tongue-belt is tongued: decide yes.
Definition: tongue-belt is transformation-protected: decide yes.

To decide which number is the initial outrage of (C - tongue-belt):
	if C is tonguing, decide on 11;
	decide on 3.

To decide which object is the unique-upgrade-target of (C - a belt):
	if C is not demonic and there is a worn demonic wearthing and tongue-belt is off-stage, decide on tongue-belt;
	decide on nothing.

a white suspenders is a kind of suspenders. There is 1 white suspenders. A white suspenders is usually nylon. A white suspenders is usually sheer. The printed name of a white suspenders is usually "[clothing-title-before]pair of white sheer suspenders[clothing-title-after]". The printed plural name of a white suspenders is usually "[clothing-title-before]pairs of white sheer suspenders[clothing-title-after]". The text-shortcut of white suspenders is "wss". Figure of white suspenders is the file "Items/Clothes/Lower/Waist/Suspenders/suspenders3.png". Understand "sheer" as white suspenders.
Definition: a white suspenders is white themed: decide yes.

To decide which figure-name is clothing-image of (C - a white suspenders):
	decide on figure of white suspenders.

To say ClothingDesc of (S - a white suspenders):
	say "A stylish pair of sheer white suspenders.".

To decide which number is the initial outrage of (C - a white suspenders):
	decide on 1.

All Belts ends here.
