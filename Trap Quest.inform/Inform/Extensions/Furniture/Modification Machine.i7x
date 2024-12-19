Modification Machine by Furniture begins here.

modification machine is furniture. The printed name of modification machine is "[TQlink of item described]modification machine[TQxlink of item described][shortcut-desc][verb-desc of item described]". modification machine is in Hotel02. Understand "chair" as modification machine. modification machine has a number called charge. The text-shortcut of modification machine is "mod".

To say ExamineDesc of (C - modification machine):
	say "What looks like a huge torture contraption, with several [if diaper quest is 1]nozzles[otherwise]phallic shaped insertables and shockers[end if] and spanking implements attached by metal arms to a gynaecologist's chair. Knowing this game, there's probably a chance of something good happening, and a bigger chance of something [if the bimbo of the player < 15]not so good[otherwise]FUN[end if] happening. [if the charge of C <= 0]A green light is on, indicating that it is fully charged[otherwise if artificial enhancements fetish is 1]A red light is on, [bold type]indicating that it will give you a new module if able[otherwise if tubesuit is worn]A red light is on, indicating that it is still charging and [bold type]it will automatically take a hefty payment from you to remove the tubesuit[otherwise]A red light is on, indicating that it is still charging[end if].[roman type][line break]".

To decide which figure-name is the examine-image of (C - modification machine):
	decide on figure of modification machine.

Check drinking furniture:
	try entering the noun instead.

To decide which number is player-enhancement:
	let E be 0;
	increase E by the silicone volume of breasts;
	increase E by 2 * the silicone volume of hips;
	increase E by 5 * the lips of face;
	decide on E.

To compute unique teleportation to (R - Hotel02):
	say "You appear above [NameDesc of modification machine]! You're falling down right into position...[line break][variable custom style]Uh-oh...[roman type][line break]";
	compute furniture resting on modification machine.

To compute furniture resting on (F - modification machine):
	let M be a random off-stage fetish appropriate module;
	say "You lie down in the chair, and [one of]as you expected, [or]once again [stopping]solid metal restraints flip over from underneath the arms and legs of the chair to secure your [unless the player is wrist bound]wrists and [end if]ankles.";
	if the charge of the noun > 0:
		allocate 6 seconds;
		if tubesuit is worn:
			let X be 8;
			let jewellery be list of held plentiful currently perceivable accessories;
			truncate jewellery to 8 entries;
			let chosen jewellery be jewellery priced at X;
			say "[second custom style]'ERROR: Low power. The modification machine must recharge. ";
			if the number of entries in chosen jewellery is 0:
				say "User does not have enough jewellery to pay for early release.'[roman type][line break]A tinny female voice announces.";
			otherwise:
				say "Acquiring automatic EARLY RELEASE FEE...'[roman type][line break]A tinny female voice announces, as robotic hands come down and claim your [chosen jewellery], removing them from your person and retreating into the ceiling with them.";
				compute tubesuit removal;
		otherwise if (artificial enhancements fetish is 0 or M is nothing):
			say "[second custom style]'ERROR: Low power. The modification machine must recharge.'[roman type][line break]A tinny female voice announces.";
		otherwise:
			say "A recording begins to play a tinny female voice as you settle into the chair.[line break][second custom style]'Hello TESTER [NameBimbo]! You have been selected to take part in a fantastic new trial to examine the engineering feasibility of an exciting new product line by R&D! Please remain perfectly still...'[roman type][line break]";
			say ModuleFlav of M;
			summon M;
			now M is a random off-stage fetish appropriate module;
		say "The restraints flip open, allowing you to leave. ";
		now F is not grabbing the player;
		if the player is prone, try standing;
	otherwise:
		now F is grabbing the player;
		now the stance of the player is 1;
		let R be a random number between 1 and 10;
		if piercing-fetish is 1 and R < 6, now R is 1;
		let P be a random eligible piercing;
		let tubesuit-wearable be false;
		if tubesuit is fetish appropriate and tubesuit is off-stage:
			now tubesuit-wearable is true;
			repeat with C running through worn clothing:
				if tubesuit-wearable is true and (C is nudism-disabling or C is sex toy): [computation efficiency]
					if C is usually unautoremovable, now tubesuit-wearable is false;
		if tubesuit-wearable is true or tubesuit is worn:
			if tubesuit is worn:
				say "[second custom style]'Thank you for your valuable data, TESTER. We hope you enjoyed your free tubesuit trial.'[roman type][line break]A tinny female voice announces.";
				compute tubesuit removal;
			otherwise:
				say "[second custom style]'You have been recognised as FREE TRIAL TESTER. Please remain still while we install your brand new AUTO-RESPIRATOR COMBAT POWERSUIT.'[roman type][line break]A tinny female voice announces.";
				repeat with C running through worn clothing:
					if C is nudism-disabling or C is sex toy:
						now C is in the location of the player;
						dislodge C;
						say "[BigNameDesc of F] removes your [C]!";
				say "[second custom style]'Please wait, you are being hydrated.'[roman type][line break]The tinny female voice says emotionlessly. You yelp as a feeding tube is forced down your throat, and some sort of thick, nutrient-rich liquid is squirted down into your stomach, until you essentially feel very full of both food and drink. Unnecessarily full, really.";
				while the player is not overly full:
					StomachUp 1;
					StomachFoodUp 1;
				summon white-giant-diaper uncursed;
				say "Next, a [white-giant-diaper] is pulled up your legs, and over your crotch.[line break][variable custom style][if the diaper addiction of the player < 8]Err, hey![otherwise]Neat.[end if][roman type][line break]Next, some kind of adhesive sealant is sprayed all over your skin. And then finally, a large latex purple onesie that stretches all the way to your wrists and ankles is efficiently pulled up over your body, where is sticks in place, seemingly completely unremovable. You see that there are two breathing tubes leading from the rear of the butt section all the way to some sort of futuristic respirator. Before you can ask any questions, this respirator is sealed to your face, covering your nose and mouth. The emergent effect is very clear - your new purple [']powersuit['] is completely sealed to your skin and not even slightly breathable, so the only air you're breathing is whatever air is being kept within the padding of your rather thick diaper.[paragraph break]The tinny voice returns to explain in more detail.[line break][second custom style]'The all new NINTENDOLLS AUTO-RESPIRATOR COMBAT POWERSUIT 3000 provides the best combination of adventurer strength enhancement, protection and pragmatism available on the market. The neo-latex material is completely indestructible and impenetrable. The in-built nanites not only strengthen the fabric, but also provide extra power to your muscles as you move and strike. Furthermore, the wearer is protected from airborne hazards thanks to the connected auto-respirator, which draws from an endless supply oxygen generated from the state-of-the-air internal OXY-GEN D1-PANTS located around your nether regions. This oxygen production device doubles up as a mobile waste collection garment, to remove any need for urgent powersuit removal. Adventurers only need remove the suit after their OXY-GEN D1-PANTS become saturated, which thanks to their 7000ml absorbance capacity, should only be once every 24 hours.[paragraph break]'PLEASE NOTE, in order to avoid damage to the FREE TRIAL UNIT, your respirator has been sealed to your face. Should you become too thirsty or hungry, please return here to end your free trial. PLEASE NOTE: returning to this machine to have the tubesuit removed before the charge cycle has completed will result in an EARLY REMOVAL FEE of 8 BAB BUCKS['] WORTH OF JEWELLERY. This machine will now begin recharging.'[roman type][line break]";
				summon tubesuit uncursed;
		otherwise if the player is sexed male and (the size of penis <= min penis size or the real size of penis <= min penis size) and tg fetish >= 1 and a random number between 1 and 3 > 1:
			say "[bold type]A robotic contraption you hadn't noticed with a large sucker on the end shoots down over your crotch![roman type] You can't see what's happening but feel your insides, behind your crotch, twisting and turning and rearranging themselves[if the player is possessing a penis]. At the same time you feel a peculiar softening, followed by an unnerving stretching and flattening, and then finally a bizarrely diffuse swelling, all through your [player-penis]. You squirm, trying to flex it, or force blood into it by sheer force of will - only to shriek in surprise and horror at the lack of results. Shivering, staring down between your legs, you're filled with a dreadful suspicion[end if]. When the sucker pulls back, it confirms your worst fears: a brand new woman's [variable custom style][vagina][roman type] has taken the place of your [player-penis]! ";
			SexChange the player;
		otherwise if diaper quest is 0 and R <= 2 and P is actually summonable:
			say PiercingFlav of P;
			summon P cursed with quest;
			cutshow P;
		otherwise if R is 3 and the player is possessing a vagina and diaper quest is 0:
			compute F widening vagina;
		otherwise if (R >= 4 and R <= 9) or R is diaper quest: [So it replaces R=1 in diaper quest]
			say "A robotic arm injects you in the side with a needle. ";
			let R2 be a random number between 1 and 4;
			if R2 is 1:
				say "You feel stronger!";
				StrengthUp 1;
			otherwise if R2 is 2:
				say "You feel as if your reflexes have been heightened!";
				DexUp 1;
			otherwise:
				say "You feel [smarter]!";
				IntUp 1;
		otherwise if artificial enhancements fetish is 1 and (the player is not top heavy or the player is not bottom heavy) and a random number between 1 and 3 > 1:
			if the player is top heavy or (the total volume of hips < the largeness of breasts and the player is not bottom heavy):
				say "Two robotic arms with needles head straight for your butt cheeks! You are completely unable to move as they pierce your flesh and begin pumping what has to be [if the silicone volume of hips > 0]even more [end if]silicone into your rump. You watch in [horror] as both buttocks swell considerably in size.";
				AssImplantsUp 2 + (2 * extreme proportions fetish);
				say "You now have surgically enhanced [AssDesc].";
			otherwise:
				say "Two robotic arms with needles head straight for your [BreastDesc]! You are completely unable to move as they pierce your flesh and begin pumping what has to be [if the silicone volume of breasts > 0]even more [end if]silicone into your chest. You watch in [horror] as they swell considerably in size.";
				BustImplantsUp 3 + (3 * extreme proportions fetish);
				say "You now have surgically enhanced [BreastDesc].";
		otherwise if diaper quest is 1:
			compute F babifying;
		otherwise:
			compute F widening asshole;
		if F is grabbing the player and delayed fainting is 0:
			allocate 6 seconds;
			say "The restraints flip open, allowing you to leave. ";
			dislodge F;
			if the player is prone, try standing;
		now the charge of F is 300;
		now F is not grabbing the player;
		if artificial enhancements fetish is 1 and M is a thing, say "A recording begins to play a tinny female voice as you settle into the chair.[line break][second custom style]'Hello TESTER [NameBimbo]! [one of]You have been selected to take part in a fantastic new trial to examine the engineering feasibility of an exciting new product line by R&D[or]We have more products from the same [']module['] line ready for simultaneous testing[stopping]! If you wish to take part, please lie on the chair again within the next 5 minutes.'[roman type][line break]".

To compute tubesuit removal:
	say "The robotic arms descend and begin the careful work of applying some sort of spray that smells like varnish to the tubesuit. After it has done this, it is able to peel it away from your skin and remove it completely.";
	dislodge tubesuit;
	now tubesuit is in Holding Pen.

To compute (M - a modification machine) removing all protection from (F - a fuckhole):
	let givenUp be 0;
	if F is vagina:
		while givenUp is 0 and the player is pussy protected:
			let C be a random top level protection clothing;
			if C is tearable:
				say "An arm with a metal claw at the end moves towards your crotch, powerfully pulls off your [ShortDesc of C], and discards it on the ground!";
				now C is in the location of the player;
				dislodge C;
				compute extra turn;
			otherwise:
				say "An arm with a metal claw at the end tries to pull off your [ShortDesc of C], but finds that it can't! It gives up.";
				now givenUp is 1;
	otherwise:
		while givenUp is 0 and the player is ass protected:
			let C be a random top level ass protection clothing;
			if C is tearable:
				say "An arm with a metal claw at the end moves towards your butt, powerfully pulls off your [ShortDesc of C], and discards it on the ground!";
				now C is in the location of the player;
				dislodge C;
				compute extra turn;
			otherwise:
				say "An arm with a metal claw at the end tries to pull off your [ShortDesc of C], but finds that it can't! It gives up.";
				now givenUp is 1;
	while givenUp is 0 and there is a thing penetrating F:
		let C be a random thing penetrating F;
		say "An arm with a metal claw at the end moves towards your [variable F], and powerfully rips out your [ShortDesc of C]!";
		if C is sex toy:
			ruin F;
			now C is in the location of the player;
			dislodge C;
		otherwise:
			destroy C;
		compute extra turn.

To compute (M - a modification machine) widening (F - a fuckhole):
	compute M removing all protection from F;
	if (F is vagina and the player is not pussy protected) or (F is asshole and the player is not ass protected), compute M stretching F.

To compute (M - a modification machine) stretching (F - a fuckhole):
	let O be the openness of F;
	now busy is 1;
	now M is penetrating F;
	say "A robotic arm with a [dildodesc of M] directs itself towards your crotch. [if the player is not a pervert]You are powerless to resist[otherwise if the player is not a nympho]You lie there stunned[otherwise]You watch with growing excitement[end if] as it pushes forward and starts pressing against your [variable F]. As the pressure increases, it starts slowly rotating like a drill! [if the openness of F < 10]It's definitely bigger than you're comfortable taking! You moan loudly as it slowly but surely forces itself in, stretching you wider[otherwise]As it forces itself in, the ridiculously wide bottom section of the cone threatens to split your already gaping hole in two[end if]!";
	say "[variable custom style][one of]Oof![or]Ack![or]Aahn![at random][roman type][line break]";
	ruin F;
	while the openness of F is O and the openness of F < 10 and delayed fainting is 0 and the latex-transformation of the player < 3:
		compute extra turn;
		say "The machine keeps drilling into your [variable F][one of] agonisingly slowly[or][stopping]!";
		say "[variable custom style][if the soreness of F > 5][one of]Fuck![or]Aargh![or]Aaahn![at random][otherwise if the relevant sex addiction of F > 12][one of]Ooh![or]Aaah![or]Uuunf.[at random][otherwise][one of]Oof![or]Ack![or]Aahn![at random][end if][roman type][line break]";
		ruin F;
	if delayed fainting is 0:
		compute extra turn;
		say "Having permanently stretched your [variable F] [if the openness of F > 4]even [end if]wider, the machine removes its toy from your hole.";
	now busy is 0;
	now M is not penetrating F.

To compute (M - a modification machine) babifying:
	if diaper messing >= 4 and a random number between 1 and 3 is 1 and the number of ass covering unremovable clothing is 0:
		compute M removing all protection from asshole;
		if the player is not ass protected:
			say "A robotic arm pushes a small rubber pellet into your [asshole].[line break][variable custom style]Was that a[one of][or]nother[stopping] suppository?![roman type][line break]";
			increase suppository by 7;
			if the player is feeling full, say "As if to answer your question, your stomach begins to grown and churn.";
	otherwise if enema fetish is 1 and the total fill of belly is 0 and a random number between 1 and 2 is 1:
		compute M removing all protection from asshole;
		if the player is not ass protected:
			say "A robotic arm pushes a small tube into your [asshole]. A moment later, you can feel yourself being pumped full of an enema! Moments later, you are brought to bursting point, your belly bulging under the strain. The tube is removed, leaving you with a desperate urge to [bold type]expel[roman type] all the liquid.";
			assfill belly limit water;
	otherwise if the player is bursting and the player is not really bursting:
		say "A robotic arm injects you in the side with a needle. ";
		while the player is not really bursting and the player is not bladder incontinent and the raw-bladder-incontinence of the player < the max-bladder-incontinence of the player:
			SilentlyBladderIncontinenceUp 1;
		say "[if the player is really bursting]You feel your bladder weaken to the point where you're really desperate to pee![line break][variable custom style]Uh-oh, I feel permanently weaker down there...[otherwise]You suddenly don't feel like you need to pee.[line break][variable custom style][one of]I don't need to pee any more? How... suspiciously convenient...[or]Uh-oh, I think it's made me incontinent again...[stopping][end if][roman type][line break]";
	otherwise if diaper messing >= 3 and the raw-rectum-incontinence of the player < the max-rectum-incontinence of the player:
		say "A robotic arm injects you in the side with a needle. ";
		RectumIncontinenceUp 1;
	otherwise:
		let B be 0;
		if the player is really bursting, now B is 1;
		say "A robotic arm injects you in the side with a needle. ";
		now the bladder of the player is 14;
		say "[if B is 1]You feel even more desperate to go to the toilet![otherwise if the player is really bursting]You suddenly feel a desperate need to go to the toilet![otherwise]You don't feel any different.[line break][variable custom style]Huh?[roman type][line break][end if]".

To decide which number is the girth of (F - a modification machine):
	if F is penetrating asshole, decide on the openness of asshole + 1;
	decide on the openness of vagina + 1.

To say dildodesc of (F - a modification machine):
	if the girth of F < 3:
		say "smallish purple penis shaped dildo";
	otherwise if the girth of F < 5:
		say "relatively large black dildo";
	otherwise if the girth of F is 5:
		say "large pink dildo";
	otherwise if the girth of F is 6:
		say "giant black dildo";
	otherwise if the girth of F is 7:
		say "unrealistically huge flesh coloured dildo complete with huge rubber balls";
	otherwise if the girth of F is 8:
		say "scarily wide silver drill shaped dildo";
	otherwise if the girth of F is 9:
		say "forearm width giant green dildo with the words HULK SMASH printed down one side";
	otherwise:
		say "large orange and white traffic cone that couldn't possibly fit all the way inside any human".

Modification Machine ends here.
