Maid Headdress by Headgear begins here.

A maid headdress is a kind of headgear. A maid headdress is usually brightness-negative. A maid headdress is usually hair growing. A maid headdress is womanly. The text-shortcut of maid headdress is "mhd". A maid headdress is usually strength-influencing. A maid headdress is usually roleplay.

Definition: a maid headdress is white themed: decide yes.
Definition: a maid headdress is disintegration-protected if the class of the player is maid.

To compute SelfExamineDesc of (H - maid headdress):
	let X be the largeness of hair;
	say "You are wearing a [ShortDesc of H] on top of your [ShortDesc of hair]. ";

To decide which number is the initial outrage of (C - a maid headdress):
	if diaper quest is 1, decide on 1;
	decide on 3.

To decide which number is the initial cringe of (C - a maid headdress):
	decide on 2.

Report going:
	unless playerRegion is school:
		if the player is prone:
			increase the crawl count of the player by 1;
			let M be black maid headdress;
			if (15 is not too humiliating or playerRegion is Woods) and (the player is not crotch covered or diaper quest is 1) and cat-ears is off-stage, now M is cat-ears;
			if M is off-stage and M is actually summonable:
				let R1 be a random number between 3 and 40;
				let R2 be a random number between 3 and 40;
				if unlucky is 1:
					now R1 is a random number between 3 and 25;
					now R2 is a random number between 3 and 25;
				if R1 + R2 < the crawl count of the player:
					if M is maid headdress:
						say "[bold type][if diaper quest is 1]Suddenly your hair turns green and you[otherwise]You[end if] feel a maid's headdress materialise on your head.[roman type] [if the bimbo of the player < 7][line break][first custom style]I think the game is trying to tell me something about how much I'm crawling around this place...[otherwise][line break][second custom style]Tee hee, I guess I have been on my knees for a while, like a hard-working maid...[end if][roman type][line break]";
					otherwise if M is cat-ears:
						say "[bold type]You feel a headband with cat ears materialise on your head.[roman type] [if the bimbo of the player < 13][line break][first custom style]I think the game is trying to tell me something about how much I'm crawling around this place...[otherwise][line break][second custom style]Tee hee, I guess I have been on all fours for ages, like a naughty pussycat...[end if][roman type][line break]";
					summon M cursed;
				otherwise if R1 < the crawl count of the player or R2 < the crawl count of the player:
					say "With all the time you[']ve been spending crawling along the ground, you're beginning to think this place really needs a good cleaning...[line break]";
			if the crawl count of the player >= 12, progress quest of crawling-quest;
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

Chapter - Class Outfit

Definition: a maid headdress is removal-blocking if wearing-target is maid outfit or wearing-target is magical-maid-outfit or wearing-target is cafe maid stockings. [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]

To decide which thing is chosen-maid-outfit:
	if (diaper quest is 1 or cafe maid headdress is worn) and a random off-stage maid waitress outfit is actually summonable:
		decide on a random off-stage maid waitress outfit;
	let B be the humiliation of the player;
	increase B by a random number from 0 to 5000;
	if B < 5000 and a random maid waitress outfit is actually summonable, decide on a random maid waitress outfit;
	if B < 10000 and a random sexy maid outfit is actually summonable, decide on a random sexy maid outfit;
	if B < 15000 and a random sexy maid outfit is actually summonable, decide on a random drooping maid outfit;
	if B < 20000 and a random cheap maid outfit is actually summonable, decide on a random cheap maid outfit;
	if B < 25000 and a random fetish maid outfit is actually summonable, decide on a random fetish maid outfit;
	if B < 30000 and a random pink maid outfit is actually summonable, decide on a random pink maid outfit;
	if B < 35000 and a random slutty maid outfit is actually summonable, decide on a random slutty maid outfit;
	if B < 40000 and a random V-shape maid outfit is actually summonable, decide on a random V-shape maid outfit;
	decide on a random fishnet maid outfit.

maid-summoned is a number that varies.
To compute unique recycling of (C - a maid headdress):
	now maid-summoned is 0.

To compute class outfit of (H - a maid headdress):
	let C be a random off-stage chastity cage;
	let M be chosen-maid-outfit;
	let S be a random off-stage cafe maid stockings;
	if M is actually summonable or (maid-summoned is 0 and the number of worn maid outfit is 0 and magical-maid-outfit is not worn):
		if maid-summoned is 0:
			repeat with O running through worn dresses:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
			repeat with O running through worn exclusive corsets:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
			repeat with O running through worn skirted clothing:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
			repeat with O running through worn exclusive bras:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
		if maid-summoned is 0, now M is chosen-maid-outfit; [Now that we've actually removed the previous offending garments, let's check again]
		if M is crotch covering:
			repeat with O running through worn knickers:
				unless O is diaper:
					say "Your [O] [wardrobeVanishes of O]!";
					now O is in pink wardrobe;
		say "[bold type]Your headdress barely noticeably shakes, and then a [if the bimbo of the player > 4]slutty [end if]maids outfit materialises on you.[roman type][line break]";
		summon M uncursed;
		now maid-summoned is 1;
		increase the raw-magic-modifier of M by the crawl count of the player / 10;
	otherwise if H is cafe maid headdress and S is actually summonable:
		say "[bold type]Your headdress barely noticeably shakes, and then a [ShortDesc of S] materialises on your legs.[roman type][line break]";
		summon S uncursed;
		now S is strength-influencing;
		now the raw-magic-modifier of S is -1;
		increase the raw-magic-modifier of S by the crawl count of the player / 7;
	otherwise if there is a worn maid outfit and C is actually summonable and the player is extremely horny:
		say "[bold type]You suddenly feel a tightness around your loins. You [if there are worn knickers]can feel[otherwise]look down and see[end if] that a chastity cage has appeared around your [if the player is possessing a penis][ShortDesc of penis][otherwise if the player is possessing a vagina][vagina][end if]![roman type] [if the bimbo of the player < 10]Even worse, the[otherwise]The[end if] cage only stops anything from touching your crotch, your [asshole] remains completely unprotected!";
		summon C locked;
		say "[variable custom style]I'm a hornymaid locked in chastity! But I need to cum so badly...[roman type][line break]".

Chapter - Quest

puddle-cleaning-quest is a headgear-clothing-quest.
puddle-cleaning-quest has a number called puddles-cleaned.

To uniquely set up (C - a maid headdress):
	now the quest of C is puddle-cleaning-quest;
	now the puddles-cleaned of puddle-cleaning-quest is 0.

To say QuestFlav of (Q - puddle-cleaning-quest):
	say "You sense that it wants you to clean up any messes you find on the floor.".

To say QuestTitle of (Q - puddle-cleaning-quest):
	say " (cleaning quest)".

To progress quest of (Q - puddle-cleaning-quest):
	repeat with C running through worn clothing:
		if the quest of C is Q:
			increase the puddles-cleaned of Q by 1;
			if the puddles-cleaned of Q < (a random number between 3 and 4) - diaper quest:
				say "Your [ShortDesc of C] pulses happily. [one of]If you keep this sort of work ethic up, you're sure to be rewarded eventually[or]Keep it up[stopping]!";
			otherwise if pink-spraybottle is cloth and pink-spraybottle is worn and the work ethic of pink-spraybottle < 150 and diaper quest is 0:
				say "Your [ShortDesc of C] [if C is cursed]doesn't uncurse - it [end if]seems to think you [one of]need to do more cleaning with the cloth until you have redeemed yourself for breaking the bottle[or]still need to do more cleaning[stopping]!";
			otherwise:
				now the puddles-cleaned of Q is 0;
				compute quest completion of Q on C.

To compute generic first time class reward of (Q - puddle-cleaning-quest) on (C - a clothing):
	let D be a random off-stage ring;
	if D is ring:
		now D is ruby;
		set shortcut of D;
		if D is actually summonable:
			summon D;
		otherwise:
			now D is in the location of the player;
		say "summoning a [MediumDesc of D] [if D is worn]straight onto your finger[otherwise]right in front of you[end if]!";
	otherwise:
		compute generic second time class reward of Q on C.

To compute generic second time class reward of (Q - puddle-cleaning-quest) on (C - a clothing):
	say "filling you with renewed energy!";
	repeat with F running through fuckholes:
		heal F times 5;
	now the fatigue of the player is 0.

To compute generic class reward of (Q - puddle-cleaning-quest) on (C - a clothing):
	if pink-spraybottle is worn:
		if pink-spraybottle is cloth and the work ethic of pink-spraybottle < 0:
			compute generic second time class reward of Q on C;
		otherwise if pink-spraybottle is cloth:
			say "[BigNameDesc of pink-spraybottle] lights up, emitting a lemony scent as a matching pink spraybottle materialises in your other hand!";
			now pink-spraybottle is spray;
			now the charge of pink-spraybottle is 1;
		otherwise if pink-spraybottle is cursed:
			say "[BigNameDesc of pink-spraybottle] lights up, emitting a puff of green, minty vapour as it loses its curse.";
			silently bless pink-spraybottle;
		otherwise:
			if the work ethic of pink-spraybottle >= 400:
				say "[BigNameDesc of pink-spraybottle] lights up, emitting a puff of sweet-smelling vapour as it becomes blessed.";
				silently bless pink-spraybottle;
			otherwise:
				compute generic second time class reward of Q on C;
	otherwise:
		compute generic second time class reward of Q on C.

Part 1 - Black Maid Headdress

black maid headdress is a maid headdress. Figure of maid headdress is the file "Items/Accessories/Head/maidheaddress1.png".

The printed name of maid headdress is "[clothing-title-before]maid headdress[clothing-title-after]".

To decide which figure-name is the clothing-image of (C - black maid headdress):
	decide on figure of maid headdress.

To say ClothingDesc of (H - black maid headdress):
	say "This lacy hair-band consists of a surprising amount of material. Black satin ribbons and white ruffled lace comprise the item. It is a hallmark of domestic subservience.";

To say ShortDesc of (H - black maid headdress):
	say "maid's headdress".

To decide which object is the unique-upgrade-target of (M - black maid headdress):
	if diaper quest is 1 and cafe maid headdress is off-stage, decide on cafe maid headdress;
	decide on nothing.

Part 2 - Cafe Maid Headdress

cafe maid headdress is a maid headdress. Figure of cafe maid headdress is the file "Items/Accessories/Head/maidheaddress2.png". The text-shortcut of cafe maid headdress is "mch". cafe maid headdress is strength-influencing. cafe maid headdress is not roleplay.

The printed name of cafe maid headdress is "[clothing-title-before]cafe maid headdress[clothing-title-after]".

Definition: cafe maid headdress is sissifying: decide yes.

To decide which figure-name is the clothing-image of (C - cafe maid headdress):
	decide on figure of cafe maid headdress.

To say ClothingDesc of (H - cafe maid headdress):
	say "This lacy hair-band has a teddybear adorning one side. It's a cosplay piece designed to go with a maid cafe uniform[if diaper lover > 0], and feels rather childish[end if].";

To say ShortDesc of (H - cafe maid headdress):
	say "cafe maid's headdress".

To compute SelfExamineDesc of (H - cafe maid headdress):
	let X be the largeness of hair;
	say "You are wearing a [ShortDesc of H] on top of your [ShortDesc of hair]. ";

To decide which number is the initial cringe of (C - cafe maid headdress):
	decide on 4.

Definition: cafe maid headdress is bear themed: decide yes.

Maid Headdress ends here.
