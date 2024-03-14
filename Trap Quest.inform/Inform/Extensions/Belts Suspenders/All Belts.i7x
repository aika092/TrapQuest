All Belts by Belts Suspenders begins here.

A belt is a kind of clothing. A belt is unskirted. A belt is manly.
Definition: a belt is nudism-enabling: decide yes.
Definition: a belt is same-type:
	if theme-share-target is belt, decide yes;
	decide no.
To decide which number is the default-soak-limit of (C - a belt): decide on 2.
To set up influence of (C - a belt):
	set up stat-based influence of C.

Chapter - Wearability

belt wearability rules is a rulebook. The wearability rules of a belt is usually belt wearability rules.

This is the belt already worn rule:
	repeat with B running through worn belts:
		if summoning is 0 and autowear is false, say "You can't wear that because [if B is wearing-target]you're already wearing it[otherwise]you're already wearing the [printed name of B][end if]!";
		rule fails.
The belt already worn rule is listed in the belt wearability rules.

A suspenders is a kind of belt. The printed name of suspenders is usually "[clothing-title-before]pair of suspenders[clothing-title-after]". The printed plural name of suspenders is usually "[clothing-title-before]pairs of suspenders[clothing-title-after]". The text-shortcut of suspenders is "sus". Understand "pair", "pair of", "garter", "garters", "garterbelt", "suspenders" as suspenders.

To decide which number is the initial outrage of (C - a suspenders):
	decide on 2.

To uniquely set up (S - a suspenders):
	now the raw-magic-modifier of S is 0. [enhanceable but always start at 0]

To set up influence of (C - a suspenders):
	set up random-based influence of C.

To set up magic attribute of (H - a suspenders):
	let R be a random number between 1 and 9;
	if R is 1:
		now H is speed;
		if a random number between 0 and diaper quest is 1, now H is maturity;
	if R is 2, now H is dominance;
	if R is 3, now H is sneaking;
	if R is 4 and diaper lover > 0:
		now H is bed wetting;
		curse H;
	set up rare magic attribute of H.

To restock (C - a suspenders):
	let B be a random basic loot suspenders;
	if B is suspenders:
		repeat with L running through Standard Item Pen:
			if L is suspenders, remove L from Standard Item Pen;
		add B to Standard Item Pen.

This is the setup starting pair of suspenders rule:
	let C be a random suspenders;
	restock C.
The setup starting pair of suspenders rule is listed in the setup starting items rules.

Report examining suspenders:
	if newbie tips is 1, say "[one of][newbie style]Suspenders can enhance the effects of your stockings.[roman type][line break][or][stopping]".

To say ShortDesc of (C - a suspenders):
	say "pair of suspenders".

To say ShortestDesc of (C - a suspenders):
	say ShortDesc of C.

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
	repeat with R running through worn actually dense short or longer clothing:
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

princess-bride-suspenders is a suspenders. princess-bride-suspenders is unique. princess-bride-suspenders is sheer. princess-bride-suspenders is silk. The printed name of princess-bride-suspenders is "[clothing-title-before]pair of white sheer bridal suspenders[clothing-title-after]". The text-shortcut of princess-bride-suspenders is "wsbs". Figure of princess-bride-suspenders is the file "Items/Clothes/Lower/Waist/Suspenders/suspenders6.png". Understand "white", "sheer", "bridal" as princess-bride-suspenders.

Definition: princess-bride-suspenders is class-relevant:
	if the class of the player is bride, decide yes;
	decide no.

To decide which figure-name is clothing-image of (C - princess-bride-suspenders):
	decide on figure of princess-bride-suspenders.

To say ClothingDesc of (S - princess-bride-suspenders):
	say "A very feminine set of white silk suspenders with large sheer sections.".

To say MediumDesc of (S - princess-bride-suspenders):
	say "bridal sissy suspenders".

Definition: princess-bride-suspenders is sissifying: decide yes.
Definition: princess-bride-suspenders is white themed: decide yes.

To decide which number is the initial outrage of (C - princess-bride-suspenders):
	decide on 3.

porn-star-suspenders is a suspenders. porn-star-suspenders is transformation-rare. porn-star-suspenders is polyester. The printed name of porn-star-suspenders is "[clothing-title-before]pair of porn star suspenders[clothing-title-after]". The text-shortcut of porn-star-suspenders is "psps". Figure of porn-star-suspenders is the file "Items/Clothes/Lower/Waist/Suspenders/suspenders8.png". Understand "porn", "star" as porn-star-suspenders.

Definition: porn-star-suspenders is class-relevant:
	if the class of the player is cumdumpster or the class of the player is stripper, decide yes;
	decide no.

To compute class set up of (C - porn-star-suspenders):
	now C is elasticity.

To decide which figure-name is clothing-image of (C - porn-star-suspenders):
	decide on figure of porn-star-suspenders.

To say ClothingDesc of (S - porn-star-suspenders):
	say "A set of black suspenders with large white letters reading 'PORN STAR' on each thigh.".

To say MediumDesc of (S - porn-star-suspenders):
	say "porn star suspenders".

Definition: porn-star-suspenders is black themed: decide yes.
Definition: porn-star-suspenders is white themed: decide yes.
Definition: porn-star-suspenders is star themed: decide yes.
Definition: porn-star-suspenders is fetish appropriate:
	if diaper quest is 1, decide no;
	if the player is gendered female, decide yes;
	decide no.
Definition: porn-star-suspenders is end of transformation chain: decide yes. [It's the end of the transformation chain. This will make some things avoid bothering to attempt to transform it.]

To decide which number is the initial outrage of (C - porn-star-suspenders):
	decide on 4.

a bridal sissy-suspenders is a kind of suspenders. There is 1 transformation-rare bridal sissy-suspenders. A bridal sissy-suspenders is usually silk. The printed name of a bridal sissy-suspenders is usually "[clothing-title-before]pair of bridal sissy suspenders[clothing-title-after]". The text-shortcut of bridal sissy-suspenders is "bss". Figure of bridal sissy-suspenders is the file "Items/Clothes/Lower/Waist/Suspenders/suspenders1.png". Understand "sissy" as bridal sissy-suspenders.

To decide which figure-name is clothing-image of (C - a bridal sissy-suspenders):
	decide on figure of bridal sissy-suspenders.

To say ClothingDesc of (S - a bridal sissy-suspenders):
	say "A hyper-feminine set of pink silky and frilly suspenders with a white frilly edge.".

To say ShortDesc of (S - a bridal sissy-suspenders):
	say "bridal sissy suspenders".

Definition: a bridal sissy-suspenders is sissifying: decide yes.
Definition: a bridal sissy-suspenders is pink themed: decide yes.
Definition: a bridal sissy-suspenders is fetish appropriate:
	if diaper quest is 1, decide yes;
	if the player is gendered male, decide yes;
	decide no.

To set up influence of (C - a bridal sissy-suspenders):
	now C is delicateness-influencing.

To decide which number is the initial outrage of (C - a bridal sissy-suspenders):
	decide on 4.

The demon belt is a belt. Figure of demon belt is the file "Items/Clothes/Lower/Waist/Belts/belt3.png". The demon belt is unique. The demon belt is leather. The printed name of demon belt is usually "[clothing-title-before]demon belt[clothing-title-after]". The text-shortcut of demon belt is "dbl".

To decide which figure-name is clothing-image of (C - demon belt):
	decide on figure of demon belt.

To say ShortDesc of (C - demon belt):
	say "demon belt".

To say ClothingDesc of (C - demon belt):
	say "This leather belt has a weird symbol made out of hexagons on the front[if diaper quest is 1]. It serves as a reminder that you have had your body altered by demon magic, and now [bold type]anything you consume doubles in volume as it reaches your stomach[end if].[roman type][line break]".

To set up influence of (C - demon belt):
	now C is strength-influencing.

To set up magic state of (C - demon belt):
	now the raw-magic-modifier of C is 2;
	set up BUC of C;
	set up magic attribute of C.

Definition: demon belt is transformation-protected: decide yes.
Definition: demon belt is demonic: decide yes.
Definition: demon belt is black themed: decide yes.

To decide which number is the original price of (C - demon belt):
	decide on 5.

living belt of sturdiness is a belt. living belt of sturdiness is unique. living belt of sturdiness is biological. The printed name of living belt of sturdiness is "[clothing-title-before]living belt of sturdiness[clothing-title-after]". The text-shortcut of living belt of sturdiness is "lbs".

living belt of sturdiness has a number called buildup. The buildup of the living belt of sturdiness is 0.

Definition: a living belt of sturdiness is father material: decide yes.
Definition: a living belt of sturdiness is grey themed: decide yes.
Definition: a living belt of sturdiness is fetish appropriate:
	if diaper quest is 0, decide yes;
	decide no.

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

Definition: living belt of sturdiness (called C) is thrusting:
	if C is penetrating a fuckhole and the player is upright and the player is horny, decide yes;
	decide no.

To decide which number is the girth of (I - the living belt of sturdiness):
	decide on 4.

To decide which number is the initial outrage of (C - living belt of sturdiness):
	if C is penetrating a fuckhole, decide on 20;
	decide on 1.

To uniquely set up (C - living belt of sturdiness):
	now the buildup of C is 0.

Definition: living belt of sturdiness is transformation-protected: decide yes.

To compute school periodic effect of (I - living belt of sturdiness):
	compute periodic effect of I.

To compute periodic effect of (I - living belt of sturdiness):
	if the player is upright:
		if the living belt of sturdiness is penetrating a fuckhole:
			if the buildup of the living belt of sturdiness > 6 and a random number between 1 and (30 - buildup of living belt of sturdiness) < 2 and the player is not unable to orgasm so soon:
				say "The steady fucking of the strong, rhythmic silver tentacle[if living belt of sturdiness is penetrating vagina and living belt of sturdiness is penetrating asshole]s[end if] of your [printed name of living belt of sturdiness] [one of]finally[or]once again[stopping] becomes too much for you, and your knees wobble and fail as you reach an extremely powerful climax.[line break][if the player is gagged]You scream into your [ShortDesc of random thing penetrating face].[line break][variable custom style]'MMMMMPHH!!!'[otherwise][variable custom style]'Oooooooh fuuuuuuuuccckk!'[end if][roman type][line break]";
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
			let ass-protected be true;
			while ass-protected is true:
				let A be a random top level ass protection clothing;
				if A is nothing or A is diaper or A is indestructible:
					now ass-protected is false;
				otherwise:
					say "The tentacle easily rips through your [printed name of A]!";
					if A is rippable, now A is crotch-ripped;
					otherwise destroy A;
			let A be a random top level ass protection clothing;
			if A is clothing and A is not diaper: [indestructible]
				say "The tentacle, unable to get past [NameDesc of A], spanks your butt in frustration!";
				PainUp 10;
				BodyRuin 1;
			otherwise:
				if asshole is actually occupied:
					say "The tentacle, unable to enter your occupied [asshole], spanks your butt in frustration!";
					PainUp 10;
					BodyRuin 1;
				otherwise:
					say "[if A is diaper]It slides in past the leghole of [NameDesc of A]. [end if][if the openness of asshole < 8]With a moderate amount of effort and force, it manages to make its way in![otherwise]The tentacle slides into your loose hole with ease![end if]";
					now the living belt of sturdiness is penetrating asshole;
				if the player is possessing a vagina:
					say "You feel the warm, smooth tip of a tentacle trying to push its way into your [vagina]! ";
					let pussy-protected be true;
					while pussy-protected is true:
						now A is a random top level protection clothing;
						if A is nothing or A is diaper or A is indestructible:
							now pussy-protected is false;
						otherwise:
							say "The tentacle easily rips through your [printed name of A]!";
							if A is rippable, now A is crotch-ripped;
							otherwise destroy A;
					now A is a random top level protection clothing;
					unless A is clothing and A is not diaper: [indestructible]
						if vagina is actually occupied:
							say "The tentacle, unable to enter your occupied [vagina], spanks your butt in frustration![line break][variable custom style][one of]Owwwww[or]Ouch[or]Fuck[or]Owiee[purely at random]![roman type][line break]";
							BodyRuin 1;
						otherwise:
							say "[if A is diaper]It slides in past the leghole of [NameDesc of A]. [end if][if the openness of vagina < 8]With a moderate amount of effort and force, it manages to squirm its way in![otherwise]The tentacle slides into your loose hole with ease![end if]";
							now the living belt of sturdiness is penetrating vagina;
							appropriate-cutscene-display figure of living belt of sturdiness cutscene 1;
	otherwise:
		if the living belt of sturdiness is filling something:
			say "The [if the living belt of sturdiness is penetrating asshole and the living belt of sturdiness is penetrating vagina]tentacles recede[otherwise]tentacle recedes[end if] back into the belt[if the player is not ass protected], leaving you open and exposed[otherwise].[end if].";
			now the living belt of sturdiness is not penetrating asshole;
			now the living belt of sturdiness is not penetrating vagina;

sheer-suspenders is a suspenders. sheer-suspenders is unique. sheer-suspenders is silk. sheer-suspenders is sheer. The printed name of sheer-suspenders is "[clothing-title-before]pair of brown sheer suspenders[clothing-title-after]". The text-shortcut of sheer-suspenders is "ssu". Figure of sheer suspenders is the file "Items/Clothes/Lower/Waist/Suspenders/suspenders7.png". Understand "brown", "sheer" as sheer-suspenders.
Definition: sheer-suspenders is brown themed: decide yes.

To decide which figure-name is clothing-image of (C - sheer-suspenders):
	decide on figure of sheer suspenders.

To say ClothingDesc of (S - sheer-suspenders):
	say "A pair of sheer brown suspenders with long frills. You can sense that it has the magical power to make pregnancies progress very slowly.".

To decide which number is the initial outrage of (C - sheer-suspenders):
	decide on 2.

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
Definition: a sissy-suspenders is fetish appropriate:
	if diaper quest is 1, decide yes;
	if the player is gendered male, decide yes;
	decide no.

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
		say "[variable custom style]I guess this is what I have become. [if the player is gendered male]A super feminine sissy...[otherwise]A parody of my own gender...[end if][roman type][line break]";
	otherwise if the humiliation of the player < HUMILIATION-BROKEN:
		say "[variable custom style]These are so [if the humiliation of the player > HUMILIATION-SHAMELESS - 2000]perfect[otherwise]cute[end if]. I love the silky frills![roman type][line break]".

string-belt is a clothing. [No clashes.] The printed name of string-belt is "[clothing-title-before]string belt[clothing-title-after]". The text-shortcut of string-belt is "stb". string-belt is unique. string-belt is hemp. string-belt is manly. Understand "string", "belt" as string-belt.

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
Definition: string-belt is nudism-enabling: decide yes.

bridal garter is a clothing. [No clashes.] The printed name of bridal garter is "[clothing-title-before]bridal garter[clothing-title-after]". The text-shortcut of bridal garter is "bgtr". bridal garter is unique. bridal garter is silk.

Definition: bridal garter is class-relevant:
	if the class of the player is bride, decide yes;
	decide no.

Figure of bridal garter is the file "Items/Clothes/Lower/Waist/Belts/garter1.png".

To decide which figure-name is the clothing-image of (C - bridal garter):
	decide on figure of bridal garter.

To say ClothingDesc of (C - bridal garter):
	say "This sheer white fabric sits on your right thigh.".

To say ShortDesc of (C - bridal garter):
	say "garter".
To say MediumDesc of (C - bridal garter):
	say "sheer bridal garter".

Definition: bridal garter is condom pinnable: decide yes.
Definition: bridal garter is nudism-enabling: decide yes.

To decide which object is the concealer of (C - bridal garter):
	repeat with D running through thigh covering actually dense clothing:
		decide on D;
	repeat with S running through worn actually dense knee-length or longer clothing:
		unless S is crotch-displaced or S is crotch-unzipped, decide on S;
	decide on nothing.

To decide which object is the at least partial concealer of (C - bridal garter):
	repeat with D running through thigh covering not-see-through clothing:
		decide on D;
	repeat with S running through worn not-see-through knee-length or longer clothing:
		unless S is crotch-displaced, decide on S;
	decide on nothing.

key garter is a clothing. [No clashes.] The printed name of key garter is "[clothing-title-before]key garter[clothing-title-after]". The text-shortcut of key garter is "kgtr". key garter is unique. key garter is metal.

Definition: key garter is class-relevant:
	if the class of the player is bride, decide yes;
	decide no.

Figure of key garter is the file "Items/Clothes/Lower/Waist/Belts/garter2.png".

To decide which figure-name is the clothing-image of (C - key garter):
	decide on figure of key garter.

To say ClothingDesc of (C - key garter):
	say "This garter sits on your left thigh. Danging from one of the metal loops of chain is a small key to a chastity cage.".

To say ShortDesc of (C - key garter):
	say "garter".
To say MediumDesc of (C - key garter):
	say "key garter".

Definition: key garter is nudism-enabling: decide yes.
To compute class set up of (C - key garter):
	now C is dominance.
To compute periodic effect of (C - key garter):
	if the class of the player is bride and C is not dominance:
		say "[bold type]You suddenly feel your [MediumDesc of C] filling you up with pride![roman type][line break]";
		now C is dominance;
	otherwise if the class of the player is not bride and C is dominance:
		say "[bold type]You suddenly feel your [MediumDesc of C] filling you with a deep sense of shame from no longer owning a cuck! [roman type]";
		now C is locked;
		now C is dominance;

To decide which object is the concealer of (C - key garter):
	repeat with D running through thigh covering actually dense clothing:
		decide on D;
	repeat with S running through worn actually dense knee-length or longer clothing:
		unless S is crotch-displaced or S is crotch-unzipped, decide on S;
	decide on nothing.

To decide which object is the at least partial concealer of (C - key garter):
	repeat with D running through thigh covering not-see-through clothing:
		decide on D;
	repeat with S running through worn not-see-through knee-length or longer clothing:
		unless S is crotch-displaced, decide on S;
	decide on nothing.

An all time based rule (this is the key garter release rule):
	if bride-consort is sex-enslaved monster:
		if key garter is not worn and bride-consort is alive and the player is not in a predicament room:
			if key garter is in the location of the player, say "[bold type]Suddenly, the key from your garter shakes and disappears! You instinctively can tell that [NameDesc of bride-consort] has now been unlocked, and will be expecting you to fully consummate your love...[roman type][line break]";
			destroy key garter;
			now bride-consort is unleashed;
			if bride-consort is in the location of the player:
				interest bride-consort;
				anger bride-consort;
				make bride-consort expectant;
				say "[speech style of bride-consort]'Oh [NameBimbo], thank you so much! I've been waiting for this day for so long...'[roman type][line break]".



maid apron is a clothing. [No clashes.] The printed name of maid apron is "[clothing-title-before]maid apron[clothing-title-after]". The text-shortcut of maid apron is "mapn". maid apron is unique.

Definition: maid apron is class-relevant:
	if the class of the player is bride or the class of the player is maid, decide yes;
	decide no.

Figure of maid apron is the file "Items/Clothes/Lower/Waist/Belts/apron1.png".

To decide which figure-name is the clothing-image of (C - maid apron):
	decide on figure of maid apron.

To say ClothingDesc of (C - maid apron):
	say "This white frilly sheet sits in front of your crotch to catch spills.".

Definition: maid apron is white themed: decide yes.
Definition: maid apron is potentially vagina covering: decide yes.
Definition: maid apron is potentially at least partially vagina covering: decide yes.

To say ShortDesc of (C - maid apron):
	say "apron".
To say MediumDesc of (C - maid apron):
	say "small maid apron".

To compute class set up of (C - maid apron):
	now C is strength-influencing;
	now C is absorption;
	now the raw-magic-modifier of C is 2.



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
	if diaper quest is 0 and C is not demonic and there is a worn demonic wearthing and tongue-belt is off-stage, decide on tongue-belt;
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
