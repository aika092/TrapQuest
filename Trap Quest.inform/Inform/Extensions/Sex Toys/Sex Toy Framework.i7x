Sex Toy Framework by Sex Toys begins here.

[Something you can put into a lower orifice]

Definition: A thing is insertable:
	if it is sex toy, decide yes;
	if it is squirt dildo, decide yes;
	if it is clothing:
		if it is ass plugging or it is vagina plugging, decide yes;
	decide no.

A sex toy is a kind of clothing. Understand "sex toys" as sex toy. The text-shortcut of a sex toy is "sty".
A sex toy is usually plastic. A sex toy is usually manly.
A sex toy has a number called size. The size of a sex toy is usually 0.
The printed name of a sex toy is usually "[clothing-title-before][MediumDesc of item described][clothing-title-after]".
Definition: a sex toy is disembodied rather than embodied: decide yes. [When penetrating an orifice, can it fit underneath other clothing like a sex toy? Or will clothing get in the way, e.g. a dildo pole?]
A sex toy has a number called toy-charge.
Definition: a sex toy is magic-enhanceable:
	if it is not-influencing, decide no;
	decide yes.
Definition: a sex toy is too boring: decide no.
Definition: a sex toy is transformation-protected: decide yes.
Definition: a sex toy is disintegration-protected: decide yes.

To decide which number is the initial outrage of (S - a sex toy):
	decide on 11.

To decide which number is the unworn outrage of (S - a sex toy):
	let O be (the initial outrage of S) + (the size of S);
	if O > 20, decide on 20;
	if O < 16, decide on 6;
	decide on O.

To decide which number is the outrage of (S - a sex toy):
	if S is worn:
		if S is not currently at least partially visible, decide on 0;
		if S is not currently visible, decide on (the initial outrage of S * 2) / 3; [this means it is partially visible]
	decide on the unworn outrage of S.

Definition: a sex toy (called S) is actually summonable:
	if S is on-stage, decide no;
	if S is players-detached-dick and players-dick-is-detached is not 0, decide yes;
	if S is part of something, decide no;
	if the size of S is 0, decide no;
	if asshole is actually occupied, decide no;
	decide yes.

Definition: a sex toy (called S) is vaginally summonable:
	if S is on-stage, decide no;
	if S is part of something, decide no;
	if the size of S is 0, decide no;
	if vagina is actually occupied, decide no;
	decide yes.

To compute unique summoning of (S - a sex toy):
	unless S is basic plug:
		let F be a random fuckhole penetrated by S;
		if F is a thing, now the size of S is the insertableGirthAcceptance of F.

To say DongSize of (C - a sex toy):
	let N be the size of C;
	say DongSize N.

[To say DongSize (N - a number):
	say "[if N < 3]small[otherwise if N < 5]medium sized[otherwise if N < 7]large[otherwise if N < 9]huge[otherwise]monstrous[end if]".]
To say DongSize (N - a number):
	say "[if N < 2]tiny[otherwise if N is 2]small[otherwise if N is 3]smallish[otherwise if N is 4]medium sized[otherwise if N is 5]girthy[otherwise if N is 6]large[otherwise if N is 7]very large[otherwise if N is 8]huge[otherwise if N is 9]giant[otherwise]monstrous[end if]".

To say ShortDesc of (C - a sex toy):
	say "sex toy".

To say MediumDesc of (C - a sex toy):
	say "[DongSize of C] [ShortDesc of C]".

Report examining a sex toy:
	if there is an orifice penetrated by the noun:
		repeat with O running through orifices penetrated by the noun:
			say "It is currently inside your [variable O]. ";
		say insertedToleranceDesc of the noun;
	otherwise:
		say potentialToleranceDesc of the noun.

To say insertedToleranceDesc of (P - a sex toy):
	let F be a random fuckhole penetrated by P;
	say "[if the girth of P < insertableGirthAcceptance of F - 3 and diaper quest is 0]Your experienced [variable F] is having no problems accommodating a [ShortDesc of P] of this size[otherwise if the girth of P < insertableGirthAcceptance of F - 3]Your new perverted brain is enjoying being stretched open a [ShortDesc of P] of this size - it doesn't feel bad at all[otherwise if the girth of P < insertableGirthAcceptance of F]Your [variable F] is moderately comfortable hosting a [ShortDesc of P] of this size[otherwise if the girth of P < insertableGirthAcceptance of F + 2]This [ShortDesc of P] is uncomfortably stretching your [variable F] to new limits[otherwise]This [ShortDesc of P] is insanely huge compared to what your [variable F] is accustomed to. It's making your [variable F] ache and throb, and it feels like an unwelcome intruder that you urgently need to remove[end if].".

To say potentialToleranceDesc of (P - a sex toy):
	let F be asshole;
	if P is not plug and the player is possessing a vagina, now F is vagina;
	say "[if the girth of P < insertableGirthAcceptance of F - 3 and diaper quest is 0]Your experienced [variable F] can easily take a plug of this size[otherwise if the girth of P < insertableGirthAcceptance of F - 3]Your new perverted self won't have any problems handling a plug of this size[otherwise if the girth of P < insertableGirthAcceptance of F]Your [variable F] shouldn't have any major problems taking a plug of this size[otherwise if the girth of P < insertableGirthAcceptance of F + 2]This plug would definitely stretch your [variable F] to new limits[otherwise]There's almost definitely no way that you could get this inside your [variable F][end if].".

toyShortcutCount is initially 1.

To ToyShortcutAssign (C - a sex toy):
	if the text-shortcut of C is "sty":
		now the text-shortcut of C is substituted form of "sty[toyShortcutCount]";
		increase toyShortcutCount by 1.

This is the sex toy pussy slut rule:
	if there is a sex toy penetrating vagina, decrease the desirability of vagina by 7.
The sex toy pussy slut rule is listed in the pussy slut eligibility rules.

This is the sex toy butt slut rule:
	if there is a sex toy penetrating asshole, decrease the desirability of asshole by 7.
The sex toy butt slut rule is listed in the butt slut eligibility rules.

To assign size (X - a number) to (C - a sex toy):
	if X > 10, now X is 10;
	now the size of C is X.

To sizeUp (C - a sex toy) by (X - a number):
	while X > 0 and the size of C < 10:
		increase the size of C by 1.

To set up magic state of (C - a sex toy):
	if C is alwaysSure, now C is sure;
	if C is alwaysIdentified, now C is identified;
	if C is discovered varied:
		now the raw-magic-modifier of C is 0;
		now C is bland;
		set up BUC of C;
		set up magic attribute of C.

To set up magic attribute of (C - a sex toy):
	let R be a random number between 1 and 10;
	if R is 1, now C is refreshment;
	if R is 2, now C is rejuvenation;
	if R is 3, now C is endurance;
	if R is 4, now C is suppression;
	if R is 5:
		if C is plug, now C is dressup;
		otherwise now C is temptation;
		if diaper quest is 1, now C is bed wetting;
	if R is 6:
		if C is plug, now C is stumbling;
		otherwise now C is dominance;
	set up rare magic attribute of C.

To uniquely set up (C - a sex toy):
	ToyShortcutAssign C;
	if the size of C is 0, now the size of C is a random number between 1 and 10;
	if C is plug and C is not unique and C is blandness and the size of C < 4 and a random number between 1 and 4 is 1, now C is expansion.

To compute periodic expansion effect of (C - a sex toy):
	increase the toy-charge of C by 1;
	if the size of C < 10 and the toy-charge of C > 40:
		now the toy-charge of C is 0;
		increase the size of C by 1;
		let F be a random fuckhole penetrated by C;
		say "Your [ShortDesc of C] drastically increases in size![if the size of C > the openness of F] You feel your [variable F] stretching painfully to accommodate the enlarged intruder[otherwise] You feel the [clothing-material of C] pressing much tighter against the inside of your [variable F][end if].";
		if the size of C > the openness of F, Ruin F;
		if C is not cursed and the player is somehow possessing a penis and the mystical size of penis < the size of C, SpecialPenisUp 1.[uncursed expansion clothing will slowly increase penis size for male players] [#LXorDD]

To compute periodic rejuvenation effect of (C - a sex toy):
	increase the toy-charge of C by 1;
	if the toy-charge of C > a random number between 40 and 100:
		now the toy-charge of C is 0;
		let F be a random fuckhole penetrated by C;
		let L be a random number between 1 and (3 + watersports fetish);
		let N be 2;
		if C is cursed, now N is 3;
		if the player is male, increase N by 1;
		say bold type;
		if L > 3 and F is asshole:
			say "Your [ShortDesc of C] pulses as warm, frothy liquid streams into your [variable F].";
			AssFill N urine;
			if C is blessed, heal asshole times 2;
			otherwise heal asshole times 1;
		otherwise if L > 1 or diaper quest is 1:
			say "Your [ShortDesc of C] pulses[if enema fetish is 1] as cool liquid streams into your [variable F][end if].";
			if F is asshole and enema fetish is 1, AssFill N water;
			if C is blessed, heal F times 2;
			otherwise heal F times 1;
		otherwise:
			say "Your [ShortDesc of C] pulses as several spurts of warm [semen] shoot into your [variable F], which tingles as the soreness seems to melt away.";
			if F is asshole, AssFill N;
			otherwise PussyFill N;
			if C is blessed, heal F times N;
			otherwise heal F times N - 1;
		say "[roman type][line break]".

To restock (C - a sex toy):
	let B be a random basic loot sex toy;
	if B is sex toy:
		repeat with L running through Standard Item Pen:
			if L is sex toy, remove L from Standard Item Pen;
		add B to Standard Item Pen.

To decide which number is the grip of (I - a thing):
	decide on 999. [This should never happen]

To decide which number is the grip of (I - an insertable thing):
	if I is cursed, decide on 999; [cursed things don't fall out]
	if I is part of something, decide on 999;
	if I is clothing and I is not sex toy, decide on 999; [clothing doesn't just fall out]
	let X be 0;
	if I is penetrating vagina:
		if the player is pussy protected, decide on 999; [clothing holds it in]
		decrease X by the openness of vagina;
		if there is a lubricant covering vagina, decrease X by 5;
	if I is penetrating asshole:
		if the player is ass protected, decide on 999; [clothing holds it in]
		increase X by 2;
		decrease X by the openness of asshole / 2;
		if gape-gloves is worn, decrease X by 3;
		if there is a lubricant covering asshole, decrease X by 5;
	if I is plug, increase X by the girth of I * 3;
	otherwise increase X by the girth of I;
	if I is players-detached-dick and the size of I is 0, now X is 5; [#LXorDD: It's a stick-on decal with the drawing of a dick on it.]
	decide on X.

To decide which number is the girth of (I - a thing):
	decide on 1.

To decide which number is the girth of (I - a sex toy):
	decide on the size of I.

To decide which number is the girth of (I - a clothing):
	decide on the plug size of I.

An all time based rule (this is the sex toys slipping out rule):
	if wanking is 0: [otherwise sex toys can do their stimulation (and orgasms) and even dropping out while being used for masturbation]
		repeat with I running through insertable things penetrating a fuckhole:
			compute gripping of I.

vaginalGripCount is a number that varies.
analGripCount is a number that varies.

To compute gripping of (I - a thing):
	let G be the grip of I;
	let R be a random number between 0 and G * G * 3;
	[#LXorDD: For the case of wearing the stick-on 0-sized penis decal, it's too fiddly to bother add a whole 'It peels off and flutters to the ground' or 'the stick on decal magically somehow fills your [orifice]' thing, so instead we'll kludge this special case and say the player is just pretending. I also suspect if it isn't counted as being held 'inside' long enough this might loop forever, too. So we pretend everything is proceeding normally.]
	let pretence be "The";
	if I is players-detached-dick and the size of I is 0, now pretence is "You pretend that your";
	if the player is upright and I is not glued clothing and I is not cursed clothing and chastity-belt is not worn and I is not nintendolls flag plug and (nun-dress is not worn or nun-dress is not wrist-bound-behind) and (current-predicament is not team-girlfriends-predicament or the player is not in a predicament room):
		if debuginfo > 1 and ((I is penetrating asshole and the player is not ass protected) or (I is penetrating vagina and the player is not pussy protected)), say "[input-style][ShortDesc of I] gripping check: Grip value ([G]) squared * 3 = [G * G * 3]; RNG (0~[G * G * 3]) = [R] | 9.5 Required grip strength[roman type][line break]";
		if I is players-detached-dick and the size of I is 0:
			do nothing; [so, avoid the falls 'out' check]
		otherwise if I is penetrating asshole and the player is not ass protected and G < 10 and R <= 0:
			if G <= 0:
				say "The [printed name of I] slips right back out of your [asshole] and drops to the ground.";
			otherwise if G is 1:
				say "The [printed name of I] quickly drops out of your [asshole] and onto the ground.";
			otherwise if G < 4:
				say "The [printed name of I] starts sliding out of your [asshole] and before you can stop it, it comes completely out and falls to the ground.";
			otherwise if G < 6:
				say "Your [asshole] relaxes for a moment, causing the [printed name of I] to start to slide out. This makes you clench your [asshole] in surprise, which ends up pushing the whole thing out! It falls and drops to the floor.";
			otherwise if G < 8:
				say "Your [asshole] momentarily spasms with the [if the girth of I > 6]intense size[otherwise]stimulation[end if] of your [printed name of I]. This causes it to move a bit inside you and the next thing you know it has travelled out of your [asshole] completely and dropped to the floor.";
			otherwise:
				say "You find yourself momentarily paralysed by the intense feelings coming from your [printed name of I] as it starts slowly worming its way out of your [asshole] of its own accord. Your instinct is to push it back in but the feeling of it forcing your sphincter open renders you completely unable to move until it finishes its journey, exits your [asshole] with a loud 'PLOP' and drops to the ground[if the openness of asshole > 6], leaving your very empty feeling [asshole] gaping[end if].";
			[Flavour and soreness]
			if G < 4:
				if there is a reactive person, say "[variable custom style]Oh no, not now![roman type][line break]";
				otherwise say "[if the bimbo of the player < 7][line break][first custom style]Hmm, well I guess there's no way something that small is going to stay inside my [asshole] for very long.[otherwise if the bimbo of the player < 14][line break][variable custom style]Oops, I guess this one is too small for my [asshole]![otherwise][line break][second custom style]Aww, no, it fell out! I need to find a bigger one that can properly fill my greedy [asshole] and keep it stretched and open![end if][roman type][line break]";
			otherwise if G < 8 or the player is not horny or the player is unable to orgasm so soon:
				ruin asshole;
				if there is a reactive person, say "[variable custom style]Really? Now of all times?![roman type][line break]";
				otherwise say "[if the bimbo of the player < 7][line break][first custom style]Holy shit, that felt pretty intense![otherwise if the bimbo of the player < 14][line break][variable custom style]I can't believe how good that made my [asshole] feel![otherwise][line break][second custom style]MM, I love that feeling![end if][roman type][line break]";
			otherwise:
				anally orgasm shamefully;
			dislodge I;
			now I is in the location of the player;
			if newbie tips is 1, say "[one of][newbie style]Toys won't fall out while you are on your knees.[roman type][line break][or][stopping]";
			repeat with M running through reactive people:
				compute toy expulsion reaction of M;
		otherwise if I is penetrating vagina and the player is not pussy protected and G < 10 and R <= 0:
			if G <= 0:
				say "The [printed name of I] slips right back out of your [vagina] and drops to the ground.";
			otherwise if G is 1:
				say "The [printed name of I] quickly drops out of your [vagina] and onto the ground.";
			otherwise if G < 4:
				say "The [printed name of I] starts sliding out of your [vagina] and before you can stop it, it comes completely out and falls to the ground.";
			otherwise if G < 6:
				say "Your [vagina] relaxes for a moment, causing the [printed name of I] to start to slide out. This makes you clench your [vagina] surprise, which ends up pushing the whole thing out! It falls and drops to the floor.";
			otherwise if G < 8:
				say "Your [vagina] momentarily spasms with the [if the girth of I > 6]intense size[otherwise]stimulation[end if] of your [printed name of I]. This causes it to move a bit inside you and the next thing you know it has travelled out of your [vagina] completely and dropped to the floor.";
			otherwise:
				say "You find yourself momentarily paralysed by the intense feelings coming from your [printed name of I] as it starts slowly worming its way out of your [vagina] of its own accord. Your instinct is to push it back in but the feeling of it forcing your sphincter open renders you completely unable to move until it finishes its journey, exits your [vagina] with a loud 'PLOP' and drops to the ground[if the openness of vagina > 6], leaving your very empty feeling [vagina] gaping[end if].";
			[Flavour and soreness]
			if G < 4:
				if there is a reactive person, say "[variable custom style]Oh no, not now![roman type][line break]";
				otherwise say "[if the bimbo of the player < 7][line break][first custom style]Hmm, well I guess there's no way something like that is going to stay inside my [vagina] for very long. Unless perhaps if I was on my knees?[otherwise if the bimbo of the player < 14][line break][variable custom style]Oops, I guess this one is too small for my [vagina]![otherwise][line break][second custom style]Aww, no, it fell out! I need to find a bigger one that can properly fill my greedy [vagina] and keep it stretched and open![end if][roman type][line break]";
			otherwise if G < 8 or the player is not horny or the player is unable to orgasm so soon:
				ruin vagina;
				if there is a reactive person, say "[variable custom style]Really? Now of all times?![roman type][line break]";
				say "[if the bimbo of the player < 7][line break][first custom style]Holy shit, that felt pretty intense![otherwise if the bimbo of the player < 14][line break][variable custom style]I can't believe how good that made my [vagina] feel![otherwise][line break][second custom style]MM, I love that feeling![end if][roman type][line break]";
			otherwise:
				vaginally orgasm shamefully;
			dislodge I;
			now I is in the location of the player;
			repeat with M running through reactive people:
				compute toy expulsion reaction of M;
	if I is penetrating asshole:
		increase analGripCount by 1;
		if the player is in an unbossed predicament room, increase analGripCount by 5;
		if analGripCount > 33 - ((the girth of I - the openness of asshole) * 3):
			say "[pretence] [ShortDesc of I] [one of]rubs against the inside of[or]puts pressure on[in random order] your [asshole][if the player is a bit horny], making you even more aroused[end if]!";
			passively stimulate asshole from I;
			if the girth of I > the openness of asshole and diaper quest is 0:
				let open be the openness of asshole;
				say "[if the girth of I < 3]Your [asshole] is so tight[otherwise]It's so big[end if] that you feel yourself getting slowly stretched and ruined.";
				ruin asshole;
				if the openness of asshole > open, say "You feel permanently more loose.";
			now analGripCount is 0;
	if I is penetrating vagina:
		increase vaginalGripCount by 1;
		if the player is in an unbossed predicament room, increase vaginalGripCount by 5;
		if vaginalGripCount > 23 - ((the girth of I - the openness of vagina) * 2):
			say "[pretence] [ShortDesc of I] [one of]rubs against the inside of[or]puts pressure on[in random order] your [vagina][if the player is a bit horny], making you even more aroused[end if]!";
			passively stimulate vagina from I;
			if the girth of I > the openness of vagina and diaper quest is 0:
				let open be the openness of vagina;
				say "[if the girth of I < 3]Your [vagina] is so tight[otherwise]It's so big[end if] that you feel yourself getting slowly stretched and ruined.";
				ruin vagina;
				if the openness of vagina > open, say "You feel permanently more loose.";
			now vaginalGripCount is 0.

To check plug holding with reason (T - a text):
	let I be a random sex toy penetrating asshole;
	if I is sex toy:
		let G be the grip of I;
		let R be a random number between 1 and G;
		if I is not glued clothing and I is not cursed clothing and chastity-belt is not worn and (nun-dress is not worn or nun-dress is not wrist-bound-behind) and (current-predicament is not team-girlfriends-predicament or the player is not in a predicament room) and the player is not ass protected:
			if debuginfo > 0, say "[input-style][ShortDesc of I] gripping check: Grip value ([G]); d[G] = [R] | 1.5 Required grip strength[roman type][line break]";
			if R <= 1:
				if T is not "", say "[T] you lose hold of [NameDesc of I].";
				say "The [printed name of I] shoots of your [asshole] with an audible [']pop['] and drops to the ground.";
				[Flavour and soreness]
				if there is a reactive person, say "[variable custom style]Oh no, not now![roman type][line break]";
				dislodge I;
				now I is in the location of the player;
				repeat with M running through reactive people:
					compute toy expulsion reaction of M;
				if G > 4, ruin asshole.

To compute toy expulsion reaction of (M - a person):
	do nothing.
To compute toy expulsion reaction of (M - a monster):
	say "[BigNameDesc of M] [one of]almost chokes[or]leaps in surprise[or]barks in surprise[in random order].[line break][speech style of M]'[one of]That was INSIDE you?!'[or]What the hell? Did you just push that out of your fuckhole in front of me?!'[or]You filthy pervert!'[in random order][roman type][line break][moderateHumiliateReflect]";
	FavourDown M by 1 with consequences.

To decide which number is the bartering value of (T - a sex toy) for (M - a mannequin):
	unless M is carrying a sex toy, decide on 3;
	decide on 1 + (the size of T - the size of a random sex toy carried by M).

Check taking off sex toy:
	unless the noun is clit-taped wired-vibe, try unplugging the noun instead.

Chapter 1 - Dongs

[Dongs can be used for masturbation but don't stay inside unless cursed or blocked from leaving by underwear. I wanted to call them dildos but the code argued with squirt dildos.]

A dong is a kind of sex toy. Understand "dildo" as dong.

To decide which number is the masturbation-bonus of (C - a sex toy):
	decide on 1 + the magic-modifier of C + the raw-masturbation-bonus of C.

To decide which number is the raw-masturbation-bonus of (C - a sex toy):
	decide on 0.

To say ShortDesc of (C - a dong):
	say "dildo".

A wood-dong is a sex toy. wood-dong is rare. Understand "wooden", "wood" as wood-dong. wood-dong is biological. The text-shortcut of wood-dong is "wdd".

To decide which number is the raw-masturbation-bonus of (C - wood-dong):
	decide on -2. [don't use this dildo if you want to cum fast]

To say MediumDesc of (C - wood-dong):
	say "wooden dong".

To say ClothingDesc of (C - wood-dong):
	say "This dildo appears to have been carved out of wood. It doesn't [if C is worn]feel[otherwise]look[end if] all that comfortable, but it can probably get the job done in a pinch.".

To uniquely set up (C - wood-dong):
	do nothing.[never has an enchantment]

Figure of wooden dildo is the file "Items/Accessories/Toys/woodendildo1.png".

To decide which figure-name is the clothing-image of (C - wood-dong):
	decide on figure of wooden dildo.

Chapter 2 - Plugs

[Plugs are really good at staying in - see grip.]

A plug is a kind of sex toy. A basic plug is a kind of plug. The size of plug is usually 4. Understand "butt", "plug" as plug. Understand "small" as plug when the size of item described < 4. Understand "medium", "sized" as plug when the size of item described is 4. Understand "large" as plug when the size of item described < 7 and the size of item described >= 5. Understand "huge" as plug when the size of item described < 9 and the size of item described >= 7. Understand "monstrous" as plug when the size of item described >= 9. The text-shortcut of a plug is "plu".


black-plug is a basic plug. The size of black-plug is 1. The text-shortcut of black-plug is "plu1". Understand "black" as black-plug.
To say MediumDesc of (P - black-plug):
	say "tiny black plug".
Definition: black-plug is black themed: decide yes.
pink-plug is a basic plug. The size of pink-plug is 2. The text-shortcut of pink-plug is "plu2". Understand "pink" as pink-plug.
To say MediumDesc of (P - pink-plug):
	say "small pink plug".
Definition: pink-plug is pink themed: decide yes.
small-jewelled-plug is a basic plug. The size of small-jewelled-plug is 3. The text-shortcut of small-jewelled-plug is "plu3". small-jewelled-plug is metal.
To say MediumDesc of (P - small-jewelled-plug):
	say "smallish metal plug".
Definition: small-jewelled-plug is grey themed: decide yes.
Definition: small-jewelled-plug is purple themed: decide yes.
Definition: small-jewelled-plug is gem themed: decide yes.
To decide which number is the initial cringe of (S - small-jewelled-plug):
	decide on the initial outrage of S.
To decide which number is the outrage of (S - small-jewelled-plug):
	if S is worn:
		if S is not currently at least partially visible, decide on 0;
		if S is not currently visible, decide on the initial outrage of S; [the jewel means it gets the full initial outrage rather than 2/3]
	decide on the unworn outrage of S.
medium-jewelled-plug is a basic plug. The size of medium-jewelled-plug is 4. The text-shortcut of medium-jewelled-plug is "plu4". medium-jewelled-plug is metal.
To say MediumDesc of (P - medium-jewelled-plug):
	say "medium sized metal plug".
Definition: medium-jewelled-plug is gem themed: decide yes.
Definition: medium-jewelled-plug is grey themed: decide yes.
To decide which number is the initial cringe of (S - medium-jewelled-plug):
	decide on the initial outrage of S.
To decide which number is the outrage of (S - medium-jewelled-plug):
	if S is worn:
		if S is not currently at least partially visible, decide on 0;
		if S is not currently visible, decide on the initial outrage of S; [the jewel means it gets the full initial outrage rather than 2/3]
	decide on the unworn outrage of S.
round-plug is a basic plug. The size of round-plug is 5. The text-shortcut of round-plug is "plu5". Understand "round", "black" as round-plug.
To say MediumDesc of (P - round-plug):
	say "girthy round black plug".
Definition: round-plug is black themed: decide yes.
flared-plug is a basic plug. The size of flared-plug is 6. The text-shortcut of flared-plug is "plu6". Understand "flared", "black" as flared-plug.
To say MediumDesc of (P - flared-plug):
	say "large flared black plug".
Definition: flared-plug is black themed: decide yes.
beige-plug is a basic plug. The size of beige-plug is 7. The text-shortcut of beige-plug is "plu7". Understand "beige" as beige-plug.
To say MediumDesc of (P - beige-plug):
	say "very large beige plug".
fish-plug is a basic plug. The size of fish-plug is 8. The text-shortcut of fish-plug is "plu8". Understand "fish" as fish-plug.
To say MediumDesc of (P - fish-plug):
	say "huge fish plug".
Definition: fish-plug is swimming themed: decide yes.
Definition: fish-plug is blue themed: decide yes.
Definition: fish-plug is green themed: decide yes.
To decide which number is the unworn outrage of (S - fish-plug):
	let O be (the initial outrage of S) + (the size of S) - 4; [Fish is somewhat disguised]
	if O > 20, decide on 20;
	if O < 0, decide on 0;
	decide on O.
brown-plug is a basic plug. The size of brown-plug is 9. The text-shortcut of brown-plug is "plu9". Understand "brown" as brown-plug.
To say MediumDesc of (P - brown-plug):
	say "giant brown plug".
Definition: brown-plug is brown themed: decide yes.
tiered-plug is a basic plug. The size of tiered-plug is 10. The text-shortcut of tiered-plug is "plu10". Understand "beige" as tiered-plug.
To say MediumDesc of (P - tiered-plug):
	say "monstrous beige plug".

To decide which object is the next-plug-up of (P - a plug):
	if the size of P is 1, decide on pink-plug;
	if the size of P is 2, decide on small-jewelled-plug;
	if the size of P is 3, decide on medium-jewelled-plug;
	if the size of P is 4, decide on round-plug;
	if the size of P is 5, decide on flared-plug;
	if the size of P is 6, decide on beige-plug;
	if the size of P is 7, decide on fish-plug;
	if the size of P is 8, decide on brown-plug;
	if the size of P is 9, decide on tiered-plug;
	decide on nothing.

To assign size (X - a number) to (C - a basic plug):
	if C is worn: [if we try to do this when it's not worn, horrible horrible things happen when we do the transform function]
		let P be C;
		repeat with Z running through basic plugs:
			if the size of Z is X, now P is Z;
		if P is not C, silently transform C into P.

To sizeUp (C - a basic plug) by (X - a number):
	increase X by the size of C;
	if X > 10, now X is 10;
	if X < 1, now X is 1;
	assign size X to C.

To say ShortDesc of (C - a plug):
	say "plug".

To say MediumDesc of (C - a plug):
	say "[PlugSize size of C] butt plug".

A tail plug is a kind of plug.
To decide which number is the initial outrage of (S - a tail plug):
	if S is worn, decide on 11;
	decide on 14 + (the size of S / 2).
To decide which number is the initial cringe of (S - a tail plug):
	decide on the initial outrage of S.

A balancing tail plug is a kind of tail plug.

To say PlugSize (N - a number):
	say "[if N < 2]tiny[otherwise if N is 2]small[otherwise if N is 3]smallish[otherwise if N is 4]medium sized[otherwise if N is 5]large[otherwise if N is 6]very large[otherwise if N is 7]huge[otherwise if N is 8]giant[otherwise if N is 9]massive[otherwise]monstrous[end if]".

A plug is usually ass plugging.

Figure of small plug is the file "Items/Accessories/Toys/plug6.png".
Figure of small plug 2 is the file "Items/Accessories/Toys/plug1.png".
Figure of medium plug is the file "Items/Accessories/Toys/plug2.png".
Figure of medium plug 2 is the file "Items/Accessories/Toys/plug7.png".
Figure of large plug is the file "Items/Accessories/Toys/plug3.png".
Figure of large plug 2 is the file "Items/Accessories/Toys/plug8.png".
Figure of huge plug is the file "Items/Accessories/Toys/plug4.png".
Figure of huge plug 2 is the file "Items/Accessories/Toys/plug9.png".
Figure of monstrous plug is the file "Items/Accessories/Toys/plug5.png".
Figure of monstrous plug 2 is the file "Items/Accessories/Toys/plug10.png".

To decide which figure-name is the clothing-image of (P - a plug):
	if the size of P < 2:
		decide on the figure of small plug;
	otherwise if the size of P is 2:
		decide on the figure of small plug 2;
	otherwise if the size of P is 3:
		decide on the figure of medium plug 2;
	otherwise if the size of P is 4:
		decide on the figure of medium plug;
	otherwise if the size of P is 5:
		decide on the figure of large plug;
	otherwise if the size of P is 6:
		decide on the figure of large plug 2;
	otherwise if the size of P is 7:
		decide on the figure of huge plug 2;
	otherwise if the size of P is 8:
		decide on the figure of huge plug;
	otherwise if the size of P is 9:
		decide on the figure of monstrous plug;
	otherwise:
		decide on the figure of monstrous plug 2.

To say UniquePlugDesc of (P - a plug):
	if the size of P < 2:
		say "This small black butt plug has a narrow shaft and is probably meant for beginners. ";
	otherwise if the size of P is 2:
		say "This small pink butt plug has a narrow shaft and is probably meant for beginners. ";
	otherwise if the size of P is 3:
		say "This silver metal butt plug has a flared base and T-shaped flared based to prevent it from going all the way in or from slipping out easily, and a jewel on the base to decorate your [asshole]. ";
	otherwise if the size of P is 4:
		say "This silver metal butt plug has a flared base and decent sized bulb to prevent it from going all the way in or from slipping out easily and a jewel on the base to decorate your [asshole]. ";
	otherwise if the size of P is 5:
		say "This black butt plug is has a flared base and quite a large round bulb to prevent it from going all the way in or from slipping out easily. The girth of bulb makes it clear that it is not for use by beginners but by someone that is used to having their [asshole] stretched. ";
	otherwise if the size of P is 6:
		say "This black butt plug is thick enough when squeezed shut, but is also shaped to spread open inside the wearer to make them feel extra-full and stretched. ";
	otherwise if the size of P is 7:
		say "This beige butt plug is massive. The widest part of the plug is much much larger than any human [manly-penis] could ever hope to be, and there is no chance it would ever fall out of an [asshole] on its own. ";
	otherwise if the size of P is 8:
		say "This blue-green butt plug is absolutely massive. The widest part of the plug is much much larger than any human [manly-penis] could ever hope to be, and there is no chance it would ever fall out of an [asshole] on its own. It's shaped like a fish, and you have absolutely no idea why. ";
	otherwise if the size of P is 9:
		say "This dark brown translucent butt plug is an extreme size at its widest. Only the most well-trained buttholes would be able to accommodate such a beast. ";
	otherwise if the size of P is 10:
		say "This giant beige butt plug has 3 huge bulges along it, just to make it even more intense when inserted and removed. Anyone managing to fit this inside them would have their hole kept open as wide as a 2 litre bottle. ".

To say ClothingDesc of (P - a plug):
	say UniquePlugDesc of P.

To decide which number is the bartering value of (T - a plug) for (M - a wrestler):
	decide on the girth of T / 3.

To say MonsterOfferRejectFlav of (M - a wrestler) to (T - a plug):
	say "[speech style of M]'Pff, that's not big enough for me, it'd fall right out!'[roman type][line break]".

To say MonsterOfferAcceptFlav of (M - a wrestler) to (T - a plug):
	say "[speech style of M]'Ooh, fine, you've tempted me.'[roman type][line break][BigNameDesc of M] unzips the crotch of [his of M] latex outfit, and with a lewd, shameless face, works the plug into [his of M] asshole, before zipping [his of M] outfit back up.[line break][speech style of M]'Tada!'[roman type][line break]".

Definition: a plug is transformation-protected:
	if it is not plentiful, decide yes;
	decide no.

To decide which object is the unique-upgrade-target of (C - a plug):
	decide on a random off-stage plentiful anal beads.

Section 1 Visibility

To decide which object is the at least partial concealer of (S - a sex toy):
	if current-predicament is team-lake-predicament:
		if the beachball-game of team-lake-predicament > 0, decide on park-lake;
		if the player is in a predicament room, decide on nothing;
	if S is penetrating vagina:
		decide on the at least partial concealer of vagina;
	otherwise:
		decide on the at least partial concealer of asshole.

To decide which object is the concealer of (S - a sex toy):
	if current-predicament is team-lake-predicament:
		if the beachball-game of team-lake-predicament > 0, decide on park-lake;
		if the player is in a predicament room, decide on nothing;
	if current-predicament is team-girlfriends-predicament and the player is in a predicament room, decide on nothing;
	if S is penetrating vagina:
		decide on the concealer of vagina;
	otherwise:
		decide on the concealer of asshole.

Section 2 Tail Plug

This is the remove inappropriate tail plugs rule:
	repeat with B running through tail plugs:
		now B is in Holding Pen.
The remove inappropriate tail plugs rule is listed in the diaper quest fix rules.

Report kneeling while there is a worn balancing tail plug:
	if seconds > 0 and the player is in danger and the standing capability of the player > 0 and auto is 1:
		say "With catlike reflexes, you immediately try to spring back to your feet!";
		now delayed stand is 0;
		try standing.

This is the knickers tail plug clash rule:
	if wearing-target is total protection and wearing-target is not-butt-windowed and wearing-target is not displacable:
		repeat with O running through worn tail plugs:
			if summoning is 0 and autowear is false, say "You can't wear that because your [printed name of O] is in the way!";
			rule fails.
The knickers tail plug clash rule is listed in the knickers wearability rules.

This is the trousers tail plug clash rule:
	if wearing-target is total protection and wearing-target is not-butt-windowed and wearing-target is not displacable:
		repeat with O running through worn tail plugs:
			if summoning is 0 and autowear is false, say "You can't wear that because your [printed name of O] is in the way!";
			rule fails.
The trousers tail plug clash rule is listed in the trousers wearability rules.

This is the overdress tail plug clash rule:
	if wearing-target is total protection and wearing-target is not-butt-windowed and wearing-target is undisplacable:
		repeat with O running through worn tail plugs:
			if summoning is 0 and autowear is false, say "You can't wear that because your [printed name of O] is in the way!";
			rule fails.
The overdress tail plug clash rule is listed in the overdress wearability rules.

This is the skirt tail plug clash rule:
	if wearing-target is total protection and wearing-target is not-butt-windowed and wearing-target is undisplacable:
		repeat with O running through worn tail plugs:
			if summoning is 0 and autowear is false, say "You can't wear that because your [printed name of O] is in the way!";
			rule fails.
The skirt tail plug clash rule is listed in the skirt wearability rules.

To UniquePinkWardrobeUnclash (C - a tail plug):
	repeat with O running through worn total protection clothing:
		WardrobeVanish O.

Definition: a tail plug is uniquely class summonable:
	repeat with O running through worn total protection not-butt-windowed undisplacable clothing:
		if O is unremovable or O is class-relevant, decide no;
	decide yes.

Check replacing:
	if there is a worn tail plug:
		unless the noun is crotch-assless or the noun is skirted or the noun is butt-windowed, say "You can't replace any clothing while you are wearing the [random worn tail plug]!" instead.

To decide which object is the at least partial concealer of (S - a tail plug):
	if entry 1 in the armUses of arms is S and entry 2 in the armUses of arms is S, decide on arms; [partially concealed by arms only if both are used]
	let S be a random worn actually dense potentially asshole covering not-butt-windowed clothing;
	if S is clothing, decide on S;
	decide on the concealer of S.

To decide which object is the concealer of (C - a tail plug): [not concealed by butt cheeks or arms]
	let S be a random worn unskirted actually dense potentially asshole covering not-butt-windowed clothing; [tail plug not concealed by skirts]
	if S is hobble-skirted, decide on nothing;[except hobble skirts]
	decide on S.

To say CurrentlyVisibleFlav of (C - a tail plug):
	let S be a random worn potentially asshole covering clothing;
	say "It is currently visible to anyone who looks at you[if S is clothing], since the tail is creeping out from behind your [printed name of S][end if].".

To say CurrentlyPartiallyConcealedFlav of (C - a tail plug):
	let X be the at least partial concealer of C;
	say "Your [ShortDesc of X] fails to completely hide the fact that you're wearing it[if X is skirted and X is actually dense], because the tail is poking out[end if].".


Part - Wearability

sex toy wearability rules is a rulebook. The wearability rules of sex toy is usually sex toy wearability rules.

This is the tail plug clash rule:
	if wearing-target is tail plug:
		repeat with O running through worn total protection not-butt-windowed crotch-in-place clothing:
			if summoning is 0 and autowear is false, say "You can't wear that because your [printed name of O] is in the way!";
			rule fails.
The tail plug clash rule is listed in the sex toy wearability rules.



Sex Toy Framework ends here.
