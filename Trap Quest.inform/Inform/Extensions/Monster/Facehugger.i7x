Facehugger by Monster begins here.

A facehugger is a kind of monster. facehugger is neuter. The text-shortcut of facehugger is "fhgr".

There are 10 facehuggers.
facehuggers-fucked is a number that varies.

Definition: a facehugger is summoningRelevant: decide no. [Doesn't count towards the number of monsters in the region for the purposes of summoning portals.]
Definition: a facehugger is egg-fathering: decide yes.
Definition: a facehugger is virginity taking: decide yes.

To decide which number is the girth of (M - a facehugger):
	decide on 1.

facehuggerShortcutCount is initially 1.
To facehuggerShortcutAssign (C - a facehugger):
	if the text-shortcut of C is "fhgr":
		now the text-shortcut of C is substituted form of "fhgr[facehuggerShortcutCount]";
		increase facehuggerShortcutCount by 1.

Figure of facehugger is the file "NPCs/MultiFloor/Facehugger/facehugger1.jpg".
Figure of facehugger cutscene 1 is the file "NPCs/MultiFloor/Facehugger/cutscene-facehugger-attack1.jpg".
Figure of facehugger cutscene 2 is the file "NPCs/MultiFloor/Facehugger/cutscene-facehugger-attack2.jpg".
Figure of facehugger cutscene 3 is the file "NPCs/MultiFloor/Facehugger/cutscene-facehugger-panties1.jpg".
Figure of facehugger cutscene 4 is the file "NPCs/MultiFloor/Facehugger/cutscene-facehugger-panties2.jpg".

To decide which figure-name is the monster-image of (M - facehugger):
	if M is wrangling thighs, decide on figure of facehugger cutscene 2;
	decide on figure of facehugger.

To say ShortDesc of (M - facehugger):
	say "facehugger".

To say MediumDesc of (M - facehugger):
	say "facehugger".

To say MonsterDesc of (M - facehugger):
	say "This weird insect-like monster is not much bigger than your hand-span. It has two strong tentacle-like arms extending from its tadpole-like body which allow it to launch really high and then try to latch onto you.".

To say MonsterComment of (M - facehugger):
	let U be 0;
	if M is unfriendly, now U is 1;
	if diaper quest is 0:
		do nothing;
	otherwise if facehuggers-fucked > 0:
		if the bimbo of the player < 7:
			say "[first custom style][one of]I have to kill it before it catches me![or]Stop trying to breed with me![in random order]";
		otherwise if the bimbo of the player < 12:
			say "[variable custom style][one of]It grosses me out, but all it really wants to do is reproduce.[or]Stop trying to breed with me! Or at least be a little gentler when you do it![in random order]";
		otherwise:
			say "[second custom style][one of]Hurry up and catch me, you naughty little freakshow![or]I wonder what hole it's going to choose this time...[in random order]";
	otherwise if the bimbo of the player < 7:
		if the player is gendered male, say "[first custom style][one of]What the fuck is this thing?![or]It's fast![in random order]";
		otherwise say "[first custom style][one of]It's moving in such a creepy way![or]What happens if it catches me?![in random order]";
	otherwise if the bimbo of the player < 12:
		say "[variable custom style][one of]It moves in such an elegant way...[or]I don't know what it is, but if it catches me... maybe I'll find out?[in random order]";
	otherwise:
		say "[second custom style][one of]I really want to find out what happens if it catches me...[or]It definitely knows what it wants.[in random order]";
	say "[roman type][line break]".

To set up (M - facehugger):
	reset M;
	now the monstersetup of M is 1;
	now the raw difficulty of M is 1;
	now the health of M is the maxhealth of M;
	facehuggerShortcutAssign M;
	anger M;
	now M is interested.

To decide which number is the difficulty of (M - a facehugger):
	decide on the raw difficulty of M.

To decide which number is the initial maxhealth of (M - a facehugger):
	decide on 7.

To compute labour to (M - a facehugger):
	compute tentacle birth.[Possibly this can be changed so tentacle monster daddy is different from lake monster, vine, and belt daddy.]

Definition: a facehugger is too intimidating: decide no.

To compute monstermotion of (M - a facehugger):
	do nothing.

To compute (M - facehugger) seeking (D - a direction):
	do nothing.

To compute action (N - a number) of (M - a facehugger):
	if M is in the location of the player and N is not 2:
		anger M;
		now M is interested;
		let O be a random orifice;
		if O is undefended and M is not wrangling thighs:
			say "[BigNameDesc of M] leaps at you, trying to latch onto your [variable O]!";
			cutshow figure of facehugger cutscene 1 for M;
			let D be a random number between 1 and the dexterity of the player;
			let X be D;
			if the player is prone, decrease X by 8;
			if debuginfo > 0, say "[input-style]Facehugger evasion check: dexterity roll (d[dexterity of the player]) = [D] [if the player is prone]- kneeling penalty (8) = [X] [end if]| (6.5) Facehugger evasion difficulty[roman type][line break]";
			let C be nothing;
			if O is face and hugger-gag is off-stage, now C is hugger-gag;
			if O is vagina and crotch-hugger is off-stage, now C is crotch-hugger;
			if O is asshole and ass-hugger is off-stage, now C is ass-hugger;
			if X > 6:
				say "You manage to move yourself out of the way, and [NameDesc of M] goes flying past. It turns around, ready to try again...";
			otherwise:
				let SL be a random number between 3 and 5;
				say "You don't move out of the way in time! It latches on, quickly pushing its ovipositor into your [variable O] before you have a chance to rip it off.";
				now M is penetrating O;
				if O is fuckhole, ruin O;
				if the player is able to use their hands:
					say "[one of]You tug at the horrid, slimy creature[or]You frantically try to pull it free[or]Its thick, bony legs are like steel clamps, and its main body is stuck to you as if it's sucking at your skin[or]Your fingers scrabble futilely against its tough, slick skin[in random order]. [one of]But it's like it's vacuum-sealed to you. You can't squeeze even a fingertip under the edge of its inhuman grip[or]But rather than pulling it loose, all you do is shift it and your flesh around together, making it look like you're actively participating in its fucking of your [variable O][or]But between its slimy skin and inhuman suction, all you do is jiggle it, thrusting it harder into your [variable O][in random order]!";
				otherwise:
					say "Without the use of your hands[one of] you can only squirm helplessly as you feel something [i]thick[/i] force open your [variable O][or] it's like you're welcoming the invasive penetration of your [variable O][or] you try to squeeze your muscles to prevent the muscular penetration... fruitlessly[or] you shiver helplessly as you feel [i]something[/i] gape your [variable O] wide, throbbing as it does[in random order].";
				if C is clothing and the player is getting unlucky:
					summon C;
					gluify C;
				if O is asshole:
					if egg laying fetish is 1:
						say "It pumps several eggs inside of your belly!";
						assfill SL small eggs;
					otherwise:
						say "It pumps your [asshole] full of inhuman [semen]!";
						assfill SL;
				otherwise if O is vagina:
					if egg laying fetish is 1 and vagina is accepting womb eggs and C is not worn:
						say "It pumps your womb full of its alien eggs!";
						wombfill SL small eggs;
					otherwise:
						say "It pumps your [vagina] full of inhuman [semen]!";
						pussyfill SL;
				otherwise:
					if egg laying fetish is 1 and super gag reflex < 2 and C is not worn:
						say "It pumps your stomach full of eggs and inhuman [semen]! Your throat doesn't handle having eggs forced down it very well, and as soon as [NameDesc of M] pulls out, you puke it all up.";
						increase the stomach-semen of the player by 1;
						follow the player pukes rule;
						repeat with NN running from 1 to SL:
							let E be a random available small egg;
							if E is egg:
								now E is in the location of the player;
								if a random number between 1 and 5 is 1, now the hatching of E is 1;
						if there is a small egg in the location of the player, say "The eggs fall to the ground in front of you. [bold type]You feel that because they were only in your body for a brief moment, there's a good chance that they're inert.[roman type][line break]";
					otherwise:
						say "It pumps your stomach full of inhuman [semen]!";
						StomachSemenUp SL;
				if C is worn:
					now M is not penetrating O;
					now C is penetrating O;
					say "That doesn't seem to be the end of it, and its grip even tightens as it continues to violate your [variable O]![GotUnluckyFlav]";
					destroy M;
				otherwise:
					say "The legs let go of you and the body falls off, motionless and dead.";
					increase facehuggers-fucked by 1;
					destroy M;
		otherwise if M is wrangling thighs:
			let C be a random pussy covering tearable skirted clothing;
			if C is nothing, now C is a random currently uncovered tearable knickers;
			if C is nothing, now C is a random currently uncovered tearable pussy covering clothing;
			if C is clothing:
				say "[BigNameDesc of M] shoots acid at your [C]!";
				if C is pussy covering and C is rippable:
					say "The crotch section dissolves away!";
					now C is crotch-ripped;
				otherwise:
					say "Parts of the [ShortDesc of C] rapidly dissolve the whole thing falls off you, completely ruined!";
					destroy C;
			otherwise if the player is possessing a vagina and crotch-hugger is off-stage and crotch-hugger is actually summonable:
				say "[BigNameDesc of M] crawls up your leg and latches itself against your [vagina]! You can feel it inserting its ovipositor inside of you as it settles into place as your new 'underwear'. Uh-oh...";
				summon crotch-hugger;
				gluify crotch-hugger;
				destroy M;
			otherwise if ass-hugger is off-stage and ass-hugger is actually summonable:
				say "[BigNameDesc of M] crawls up your leg and latches itself against your [asshole]! You can feel it inserting its ovipositor inside of you as it settles into place as your new 'underwear'. Uh-oh...";
				summon ass-hugger;
				gluify ass-hugger;
				destroy M;
			otherwise if hugger-gag is off-stage and hugger-gag is actually summonable:
				say "[BigNameDesc of M] crawls up your body and latches itself onto your face! You can feel it inserting its ovipositor into your mouth as it settles into place as a sort-of 'gag'. Uh-oh...";
				summon hugger-gag;
				gluify hugger-gag;
				destroy M;
		otherwise:
			say "[BigNameDesc of M] leaps at you, trying to latch onto your thigh!";
			let D be a random number between 1 and the dexterity of the player;
			let X be D;
			if the player is prone, decrease X by 8;
			if debuginfo > 0, say "[input-style]Facehugger evasion check: dexterity roll (d[dexterity of the player]) = [D] [if the player is prone]- kneeling penalty (8) = [X] [end if]| (9.5) Facehugger evasion difficulty[roman type][line break]";
			if X > 9:
				say "You manage to move yourself out of the way, and [NameDesc of M] goes flying past. It turns around, ready to try again...";
			otherwise:
				say "You don't move out of the way in time! It latches onto your thigh with an incredibly strong grip[one of]! Are you going to be able to rip it off?[or]![stopping]";
				now M is wrangling thighs.

To decide which number is the strength roll of (M - a facehugger): [If this is less than strength, the player can remove the facehugger]
	if the player is able to use manual dexterity, decide on a random number between 0 and 50;
	decide on 99999.

To compute WrangleResistSuccess of (T - a facehugger):
	say "You manage to rip it off your thigh, and fling it into a wall! It goes rigid and falls to the ground, dead.";
	destroy T.

To say WrangleResistFailFlav of (T - a facehugger):
	if the player is able to use manual dexterity, say "You try to yank it off, but [NameDesc of T] holds on tightly!";
	otherwise say "Without your hands, there's no way you can break its grip on your thigh!".

To compute (M - a monster) stomping (N - a facehugger):
	if M is in the location of the player, say "[BigNameDesc of M] kills the [N].";
	destroy N;
	let L be a random off-stage leftover;
	now L is in the location of M;
	now the leftover-type of L is the leftover-type of N.

Section 3 - Damage

[Chance for the facehugger to completely dodge the attack.]
To decide which number is the damage modifier of (M - a facehugger):
	if (a random number between 1 and the dexterity of the player) + (a random number between 1 and the dexterity of the player) < a random number between 3 and 12, decide on (attack-damage * -1);
	decide on 0.

To say damage-flavour of (N - a number) on (M - a facehugger):
	if N is 0:
		say "[BigNameDesc of M] hops backwards, dodging your attack! Try again?";
	otherwise:
		say "A direct hit!".

To compute standard damage of (M - a facehugger):
	if the health of M <= 0, compute defeat of M.

To compute defeat of (M - a facehugger):
	say "You hear a snap as [NameDesc of M] drops lifelessly to the ground.";
	check tentacle clear;
	destroy M.

To loot (M - a facehugger):
	do nothing.

[If the player gets unlucky, they can get attacked by a more permanent facehugger variant. The only way to get rid of them is for the player to get lucky, or to use special means like the elder altar or wishing well.]

hugger-gag is a ballgag. hugger-gag is unique. a hugger-gag is biological. The printed name of hugger-gag is "[clothing-title-before]facehugging facehugger[clothing-title-after]". The text-shortcut of hugger-gag is "fhg". Understand "face", "hugging", "facehugging" as hugger-gag. A hugger-gag has a number called charge.

Definition: hugger-gag is transformation-proteted: decide yes.
Report taking off hugger-gag:
	say "You discard the inert facehugger, and it drops to the ground, lifeless.";
	only destroy the noun.

[Figure of bit gag is the file "Items/Accessories/Head/bitgag1.jpg".]

[Definition: a hugger-gag (called S) is removable:
	decide no.]

To decide which figure-name is the clothing-image of (M - hugger-gag):
	decide on figure of facehugger.

To say ShortDesc of (C - hugger-gag):
	say "facehugger".
To say MediumDesc of (C - hugger-gag):
	say "facehugging facehugger".

To say ClothingDesc of (C - hugger-gag):
	say "This weird insect-like monster has used its strong legs to attach itself to your face! It's currently fucking your face with some bizarre alien organ!".

To compute periodic effect of (P - hugger-gag):
	let N be 4;
	increase the charge of P by N;
	let interval be N * 3;
	let X be the remainder after dividing the charge of P by interval;
	if X is 0:
		say "[one of]The facehugger rhythmically thrusts its bizarre organ down your throat![or]The facehugger fucks your throat with its throbbing organ![or]The facehugger rams its pulsating organ down your throat![or]The facehugger repeatedly invades your throat with its pulsating organ![in random order]";
		if a random number between 2 and 5 < (the charge of P / interval):
			if super gag reflex < 2, follow the do we puke rule;[Instead of ruining face, we check for puke]
			let F be 0;
			if the player is getting lucky, now F is 1;
			let SL be a random number between 3 and 5;
			say "It pumps your stomach full of inhuman [semen]!";
			StomachSemenUp a random number between 3 and 5;
			now the charge of P is 0;
			if F is 1:
				say "The legs let go of you and the body falls off, motionless and dead.[GotLuckyFlav]";
				increase facehuggers-fucked by 1;
				only destroy P;

Definition: hugger-gag is fetish appropriate: decide no. [Never appears randomly]
[Definition: hugger-gag is throater: decide yes.] [This is too imbalanced now that throating triggers suffocation]

To decide which number is the girth of (A - hugger-gag):
	decide on 1.

A hugger-panties is a kind of knickers. Understand "hugging" as hugger-panties. The plug size of a hugger-panties is 1. A hugger-panties is biological. A hugger-panties has a number called charge.

Definition: a hugger-panties is egg-fathering: decide yes.
Definition: a hugger-panties is transformation-proteted: decide yes.
Report taking off a hugger-panties:
	say "You discard the inert facehugger, and it drops to the ground, lifeless.";
	only destroy the noun.

To decide which figure-name is the clothing-image of (M - a hugger-panties):
	decide on Figure of facehugger cutscene 4.

To decide which number is the initial outrage of (C - a hugger-panties):
	decide on 8.
To decide which number is the initial armour of (C - a hugger-panties):
	decide on 15.

[Definition: a hugger-panties (called S) is removable:
	decide no.] [looks like MG made them glued instead]

Definition: a hugger-panties is displacable: decide no.

To say ShortDesc of (C - a hugger-panties):
	say "facehugger".

Definition: a hugger-panties is rigid: decide yes.

crotch-hugger is a hugger-panties. crotch-hugger is unique. crotch-hugger is vagina plugging. The printed name of crotch-hugger is "[clothing-title-before]crotchhugging facehugger[clothing-title-after]". The text-shortcut of crotch-hugger is "chg". Understand "crotch", "crotchhugging" as crotch-hugger. crotch-hugger is crotch-assless.

To say ClothingDesc of (C - crotch-hugger):
	say "This weird insect-like monster has used its strong legs to attach itself to your crotch! It's currently fucking your [vagina] with some bizarre alien organ!".

To compute periodic effect of (P - crotch-hugger):
	let N be 4;
	increase the charge of P by N;
	let interval be N * 3;
	let X be the remainder after dividing the charge of P by interval;
	if X is 0:
		say "[one of]The facehugger rhythmically thrusts its [if egg laying fetish is 1]ovipositor[otherwise]bizarre organ[end if] in and out of your [vagina]![or]The facehugger fucks your [vagina] with its throbbing [if egg laying fetish is 1]ovipositor[otherwise]organ[end if]![or]The facehugger rams its pulsating organ in and out of your [vagina]![or]The facehugger repeatedly invades your [vagina] with its pulsating organ![in random order]";
		if a random number between 2 and 5 < (the charge of P / interval):
			ruin vagina;
			let F be 0;
			if the player is getting lucky, now F is 1;
			let SL be a random number between 3 and 5;
			if F is 0 or egg laying fetish is 0 or vagina is not accepting womb eggs:
				say "It pumps your [vagina] full of inhuman [semen]!";
				pussyfill SL;
			otherwise:
				say "It pumps your womb full of its alien eggs!";
				wombfill SL small eggs;
			now the charge of P is 0;
			if F is 1:
				say "The legs let go of you and the body falls off, motionless and dead.[GotLuckyFlav]";
				increase facehuggers-fucked by 1;
				only destroy P.

ass-hugger is a hugger-panties. ass-hugger is unique. ass-hugger is ass plugging. The printed name of ass-hugger is "[clothing-title-before]asshugging facehugger[clothing-title-after]". The text-shortcut of ass-hugger is "chg". Understand "asshugging" as ass-hugger. ass-hugger is crotch-exposing.

To say ClothingDesc of (C - ass-hugger):
	say "This weird insect-like monster has used its strong legs to attach itself to your butt! It's currently fucking your [asshole] with some bizarre alien organ!".

To compute periodic effect of (P - ass-hugger):
	let N be 4;
	increase the charge of P by N;
	let interval be N * 3;
	let X be the remainder after dividing the charge of P by interval;
	if X is 0:
		say "[one of]The facehugger rhythmically thrusts its [if egg laying fetish is 1]ovipositor[otherwise]bizarre organ[end if] in and out of your [asshole]![or]The facehugger fucks your [asshole] with its throbbing [if egg laying fetish is 1]ovipositor[otherwise]organ[end if]![or]The facehugger rams its pulsating organ in and out of your [asshole]![or]The facehugger repeatedly invades your [asshole] with its pulsating organ![in random order]";
		if a random number between 2 and 5 < (the charge of P / interval):
			ruin asshole;
			let F be 0;
			if the player is getting lucky, now F is 1;
			let SL be a random number between 3 and 5;
			if egg laying fetish is 0:
				say "It pumps your [asshole] full of inhuman [semen]!";
				assfill SL;
			otherwise:
				say "It pumps several eggs inside of your belly!";
				assfill SL small eggs;
			now the charge of P is 0;
			if F is 1:
				say "The legs let go of you and the body falls off, motionless and dead.[GotLuckyFlav]";
				increase facehuggers-fucked by 1;
				only destroy P.

Facehugger ends here.
