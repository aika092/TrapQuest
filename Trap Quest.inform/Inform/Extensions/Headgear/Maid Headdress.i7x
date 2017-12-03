Maid Headdress by Headgear begins here.


A maid headdress is a kind of headgear.  A maid headdress is usually brightness-negative.  A maid headdress is usually hair growing.  The text-shortcut of maid headdress is "mh".  A maid headdress is usually strength-influencing. A maid headdress is usually roleplay.

To compute SelfExamineDesc of (H - maid headdress):
	let X be the largeness of hair;
	say "You are wearing a [ShortDesc of H] on top of your [ShortDesc of hair].  ";

To decide which number is the initial outrage of (C - a maid headdress):
	if diaper quest is 1, decide on 1;
	decide on 5.

To decide which number is the initial cringe of (C - a maid headdress):
	decide on 2.

To compute periodic effect of (H - a maid headdress):
	[compute headgear chances of H;]
	compute hair growth of H;
	compute hair colour change of H;
	compute class outfit of H;
	let S be a random worn pink spraybottle;
	if S is clothing and the work ethic of S < 0:[not cleaning enough? You might be punished!]
		[if debugmode > 0, say "The work ethic of S is [the work ethic of S]";]
		let R be a random number between -4000 and -130;
		[if debugmode > 0, say "R is [R]";]
		if S is clothing and the work ethic of S < R, compute spraybottle punishment.

Report going:
	if the player is prone:
		increase the crawl count of the player by 1;
		let M be a random off-stage black maid headdress;
		if (15 is not too humiliating or the player is in the woods) and (the player is not crotch covered or diaper quest is 1), now M is a random off-stage cat ears;
		if M is actually summonable:
			let R1 be a random number between 3 and 40;
			let R2 be a random number between 3 and 40;
			if unlucky is 1:
				now R1 is a random number between 3 and 25;
				now R2 is a random number between 3 and 25;
			if R1 + R2 < the crawl count of the player:
				if M is normal maid headdress:
					say "[bold type][if diaper quest is 1]Suddenly your hair turns green and you[otherwise]You[end if] feel a maid's headdress materialise on your head.[roman type]  [if the bimbo of the player < 7][first custom style]I think the game is trying to tell me something about how much I'm crawling around this place...[otherwise][second custom style]Tee hee, I guess I have been on my knees for a while, like a hard-working maid...[end if][roman type][line break]";
				otherwise if M is cat ears:
					say "[bold type]You feel a headband with cat ears materialise on your head.[roman type]  [if the bimbo of the player < 13][first custom style]I think the game is trying to tell me something about how much I'm crawling around this place...[otherwise][second custom style]Tee hee, I guess I have been on all fours for ages, like a naughty pussycat...[end if][roman type][line break]";
				summon M cursed;
			otherwise if R1 < the crawl count of the player or R2 < the crawl count of the player:
				say "With all the time you[']ve been spending crawling along the ground, you're beginning to think this place really needs a good cleaning...[line break]";
		if the class of the player is princess and the number of monsters in the location of the player > 0, humiliate 10;
		if the semen-puddle of the location of the player > 3 and bukkake fetish is 1:
			if the largeness of breasts > 10 and the semen coating of breasts is 0:
				say "[one of]Your [BreastDesc] become smeared with [semen] as they rub along the ground.[or][or][or][cycling]";
				CumTitsUp 1;
				decrease the semen-puddle of the location of the player by 1;[TODO, milk and urine soaking into clothes; Player should probably be humiliated to crawl through their own urine.]
			if there is a worn able to take more liquid leg covering clothing:
				say "[one of]You can't help crawling through the puddle of [semen] as you move along the ground.[or][or][or][cycling]";
				CumSoak 1 on a random worn able to take more liquid leg covering clothing;
				decrease the semen-puddle of the location of the player by 1;
	otherwise:
		now the crawl count of the player is 0.

To decide which thing is chosen-maid-outfit:
	if diaper quest is 1, decide on a random off-stage playdude maid outfit;
	let B be the bimbo of the player;
	increase B by a random number from -6 to 6;
	if B < 3 and a random off-stage playdude maid outfit is actually summonable, decide on a random off-stage playdude maid outfit;
	if B < 5 and a random off-stage playdude maid outfit is actually summonable, decide on a random off-stage drooping maid outfit;
	if B < 7 and a random off-stage cheap maid outfit is actually summonable, decide on a random off-stage cheap maid outfit;
	if B < 9 and a random off-stage fetish maid outfit is actually summonable, decide on a random off-stage fetish maid outfit;
	if B < 11 and a random off-stage pink maid outfit is actually summonable, decide on a random off-stage pink maid outfit;
	if B < 13 and a random off-stage slutty maid outfit is actually summonable, decide on a random off-stage slutty maid outfit;
	if B < 15 and a random off-stage V-shape maid outfit is actually summonable, decide on a random off-stage V-shape maid outfit;
	decide on a random fishnet maid outfit.

maid-summoned is a number that varies.

To compute class outfit of (H - a maid headdress):
	let C be a random off-stage chastity cage;
	let M be chosen-maid-outfit;
	if the headgear chance of H < the threshold of H and (M is actually summonable or (M is maid outfit and maid-summoned is 0)):
		if maid-summoned is 0:
			repeat with O running through worn dresses:
				say "Your [O] vanishes!";
				destroy O;
			repeat with O running through worn knickers:
				unless O is diaper:
					say "Your [O] vanishes!";
					destroy O;
			repeat with O running through worn skirts:
				say "Your [O] vanishes!";
				destroy O;
		say "[bold type]Your headdress barely noticeably shakes, and then a [if the bimbo of the player > 4]slutty [end if]maids outfit materialises on you.[roman type][line break]";
		summon M cursed;
		now maid-summoned is 1;
		now the raw-magic-modifier of M is 0;
		increase the raw-magic-modifier of M by the crawl count of the player / 10;
	otherwise if the headgear chance of H < (2 + unlucky) and there is a worn maid outfit and C is actually summonable and the player is horny:
		say "[bold type]You suddenly feel a tightness around your loins.  You [if there are worn knickers]can feel[otherwise]look down and see[end if] that a chastity cage has appeared around your [if the player is male][ShortDesc of penis][otherwise][vagina][end if]![roman type]  [if the bimbo of the player < 10]Even worse, the[otherwise]The[end if] cage only stops anything from touching your crotch, your [asshole] remains completely unprotected!";
		summon C cursed;
		say "[variable custom style]I'm a maid locked in chastity!  How humiliating.[roman type][line break]".

To decide which object is the unique-upgrade-target of (M - a maid headdress):
	if diaper quest is 1, decide on a random off-stage cafe maid headdress;
	decide on nothing.

Definition: a maid headdress (called M) is untransformable:
	if the unique-upgrade-target of M is clothing, decide no;
	decide yes.

Part 1 - Black Maid Headdress

A black maid headdress is a kind of maid headdress.  There is 1 black maid headdress.  Figure of maid headdress is the file "maidheaddress1.png".  

The printed name of maid headdress is usually "[TQlink of item described][clothing-title-before]maid headdress[clothing-title-after][TQxlink of item described][verb-desc of item described]".

To decide which figure-name is the clothing-image of (C - a maid headdress):
	decide on figure of maid headdress.

To say ClothingDesc of (H - a maid headdress):
	say "This lacy hair-band consists of a surprising amount of material. Black satin ribbons and white ruffled lace comprise the item. It is a hallmark of domestic subservience.";

To say ShortDesc of (H - maid headdress):
	say "maid's headdress".

Part 2 - Cafe Maid Headdress

A cafe maid headdress is a kind of maid headdress.  There is 1 cafe maid headdress.  Figure of cafe maid headdress is the file "maidheaddress2.png".  The text-shortcut of cafe maid headdress is "mch".  A cafe maid headdress is usually strength-influencing. A cafe maid headdress is usually not roleplay.

The printed name of cafe maid headdress is usually "[TQlink of item described][clothing-title-before]cafe maid headdress[clothing-title-after][TQxlink of item described][verb-desc of item described]".

To decide which figure-name is the clothing-image of (C - a cafe maid headdress):
	decide on figure of cafe maid headdress.

To say ClothingDesc of (H - a cafe maid headdress):
	say "This lacy hair-band has a teddybear adorning one side. It's a cosplay piece designed to go with a maid cafe uniform, and feels rather childish.";

To say ShortDesc of (H - cafe maid headdress):
	say "cafe maid's headdress".

To compute SelfExamineDesc of (H - cafe maid headdress):
	let X be the largeness of hair;
	say "You are wearing a [ShortDesc of H] on top of your [ShortDesc of hair].  ";

To decide which number is the initial cringe of (C - a cafe maid headdress):
	decide on 4.



Maid Headdress ends here.
