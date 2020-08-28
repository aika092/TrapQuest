Hotel Chairs by Furniture begins here.

hotel chairs is a furniture. The printed name of hotel chairs is "[TQlink of item described]hotel [if diaper focus >= 1]baby [end if]chairs[TQxlink of item described][shortcut-desc][verb-desc of item described]". hotel chairs has a number called times-sat. hotel chairs is in Hotel21. Understand "baby chair", "baby chairs", "hotel baby", "chair" as hotel chairs. The text-shortcut of hotel chairs is "hch".

Figure of hotel chairs is the file "Env/Hotel/hotelchairs1.png".
Figure of baby chairs is the file "Env/Hotel/hotelchairs2.png".

To decide which figure-name is the examine-image of (C - hotel chairs):
	if diaper focus is 0, decide on figure of hotel chairs;
	otherwise decide on figure of baby chairs.

To say ExamineDesc of (C - hotel chairs):
	say "Four small chairs lining one wall of the room. ";
	if diaper focus is 0, say "Each chair has a much larger than average sized dildo fixed to the seat of the chair, very near the back. The positions of the dildos have clearly been well designed to force anyone who wants to sit down on a chair to have to put the dildo in their [asshole]. [if the player is possessing a vagina]The dildo is too far back to be able to slip into the [vagina] comfortably, and[otherwise]The[end if] seat of the chair is too small to just sit in front of the dildo comfortably.[if the times-sat of C > 0]The chairs seem to have special effects, but since the chairs switch positions after each use, it's impossible to know which is which.[otherwise if the intelligence of the player > 5]Upon closer inspection, you notice that each dildo has a hole at the tip.[end if]";
	otherwise say "Each chair is an identical pink baby chair, with a dolphin pattern, but in an adult size.[if the times-sat of C > 0]The chairs seem to have special effects, but since the chairs switch positions after each use, it's impossible to know which is which.[otherwise if the intelligence of the player > 5]Upon closer inspection, you notice that each chair has a strap that could be used to secure the sitter to the chair.[end if]".

To decide which number is the girth of (F - hotel chairs):
	decide on 5.

To compute furniture resting on (F - hotel chairs):
	now resting is 1;
	now busy is 1;
	now the stance of the player is 1;
	compute fat burning reset;
	allocate 6 seconds;
	if diaper focus is 0, compute normal hotel chair sitting on F;
	otherwise compute baby hotel chair sitting;
	if busy is 1: [Some things can cause the hotel chair scene to be interrupted]
		now the stance of the player is 0;
		now the fatigue of the player is 0;
		if the body soreness of the player > 0, now the body soreness of the player is 0;
		now the soreness of asshole is 0;
		now the soreness of vagina is 0;
		now the tolerated of asshole is 0;
		now the tolerated of vagina is 0;
		now busy is 0;
	now F is not penetrating asshole;
	increase the times-sat of F by 1;
	now resting is 0.

To compute normal hotel chair sitting on (F - hotel chairs):
	say "You [if the openness of asshole <= the girth of F]force[otherwise]slide[end if] your [asshole] down onto the large golden dong. [if the openness of asshole <= the girth of F]Your sphincter is stretched way past the limit of what is comfortable.[end if]";
	now F is penetrating asshole;
	ruin asshole;
	let R be a random number between 1 and 4;
	if R is 1 and the latex-transformation of the player > 2, now R is a random number between 2 and 4;
	if R is 1:
		unless the player is unable to orgasm so soon:
			say "As you bottom out on the dildo, you feel a weird sensation just behind your sphincter. Before you can react in time and pull yourself off, you realise the bottom section of the dildo is rapidly expanding! You test to confirm your suspicions - you can't get off! The dildo has effectively knotted you in place. [one of]The dildo starts vibrating powerfully, and you quickly realise what it intends to happen before it lets you off.[or]Once again, it begins vibrating powerfully.[stopping]";
			while the player is not unable to orgasm so soon and resting is 1:
				say "The golden dildo continues to vibrate powerfully in your [asshole], keeping you trapped on the seat!";
				ruin asshole;
				compute extra turn;
			if resting is 1, say "You are left panting as the knot of the dildo deflates and you are able to stand up. However you realise you do feel a lot less tired!";
		otherwise:
			say "[RestingDesc of F]";
	otherwise if R is 2:
		if watersports fetish is 1:
			say "As you bottom out on the dildo, you feel a weird filling sensation. You realise it is filling you up with something!";
			AssFill 12 Urine;
			UrinePuddleUp 15;
			say "You pull yourself off the dong as fast as you can without hurting yourself, which takes a few seconds, and fall forwards onto your hands and knees. Looking behind you, you realise [if the bimbo of the player < 12]it's even worse than you feared[otherwise if the bimbo of the player < 15]exactly what happened[otherwise]that you hit the jackpot[end if] - the dildo is powerfully spurting a flood of [urine] into the air! A couple of pints of that stuff definitely got inside of you. You also realise you do feel a lot less tired!";
		otherwise:
			say "[RestingDesc of F]";
	otherwise if R is 3:
		if lactation fetish is 1:
			say "As you bottom out on the dildo, you feel a weird filling sensation. You realise it is filling you up with something!";
			AssFill 12 Milk;
			MilkPuddleUp 15;
			say "You pull yourself off the dong as fast as you can without hurting yourself, which takes a few seconds, and fall forwards onto your hands and knees. Looking behind you, you realise [if the bimbo of the player < 12]what you've been given a surprise enema of[otherwise if the bimbo of the player < 15]exactly what happened[otherwise]that you hit the jackpot[end if] - the dildo is powerfully spurting a flood of [milk] into the air! A couple of pints of that stuff definitely got inside of you. You also realise you do feel a lot less tired!";
		otherwise:
			say "[RestingDesc of F]";
	otherwise:
		say "As you bottom out on the dildo, you suddenly hear a loud mechanical voice sound out from the chair.[line break][first custom style]'SLUT! SLUT! SLUT! SLUT! SLUT!'[roman type][line break][if the humiliation of the player < 12500]Consumed with shame, you turn a deep shade of red as you pull yourself off the dildo as quickly as you can without hurting yourself.[otherwise if the humiliation of the player < 28000 and there is an intelligent monster in the location of the player]You turn red but are able to tolerate the humiliation and allow the chair to complete its routine.[otherwise if the humiliation of the player < 28000]You nervously look around to see if anyone is here and watching you. You can't see anyone, which lets you relax a little bit, but you still decide to get off the chair before anyone comes and sees you in such a humiliating situation.[otherwise]You have way too little an opinion of yourself to care about some stupid robotic voice calling you a slut, and you stay sitting on your phallic throne for as long as you planned. After you feel significantly less tired, you pull yourself off the dildo of your own accord.[end if]";
		Humiliate 125;
	repeat with M running through reactive monsters:
		say HotelChairTrapReactFlav of M;
	say "You stand up and walk away feeling very refreshed. As you move away from the chairs, they all disappear backwards behind hidden panels in the wall behind them! After a few seconds mechanical whirring coming from behind the wall, the panels open again and the chairs reappear. [one of]But something tells you they are in a different order than before![or]Once again you are completely unable to tell them apart, so you don't know which is which![stopping]".

To say HotelChairTrapReactFlav of (M - a monster):
	say LewdTrapReactFlav of M.

To compute baby hotel chair sitting:
	say "You sit [if the player is diapered]your diapered butt[end if] onto the hard plastic seat. Pink straps fly up and wrap around your [if the player is diapered]nappy[otherwise]waist and crotch[end if], holding you down!";
	let R be a random number between 0 and 4;
	if R <= 1:
		let K be a random worn knickers;
		if K is total protection and K is soilable and the player is full and asshole is not actually occupied and diaper messing >= 3:
			say "As you sit there, something clicks inside of you, and you feel yourself losing control of your bowels! ";
			compute messing;
		otherwise if K is total protection clothing and the player is possessing a vagina and vagina is not actually occupied and diaper quest is 0:
			say "You feel something very thin poke its way through the [if K is diaper]padding[otherwise if K is metal or K is plastic]leg hole[otherwise]fabric[end if] of your [ShortDesc of K] and then find its way to the entrance of your [vagina]. Suddenly you feel it start to powerfully pump out something warm and viscous - it's pumping you full of [semen]! What the fuck!";
			PussyFill 6;
			now a random creampie pole trap is inseminating vagina;
			say "The pumping keeps going for what feels like a full 10 seconds before it stops, leaving your womb feeling very full.";
		otherwise if K is clothing:
			if diaper quest is 1:
				say "You feel something very thin poke its way through the [if K is not total protection]gap[otherwise if K is diaper]padding[otherwise if K is metal or K is plastic]leg hole[otherwise]fabric[end if] of your [ShortDesc of K] and then start pumping. Your [ShortDesc of K] is being filled with something warm - it's somebody else's [urine]!";
				let S be the soak-limit of K;
				decrease S by the total-soak of K;
				if S < 5, now S is 5;
				[if K is fluid immune, now S is 1;]
				PissSoak S on K;
				say "The pumping keeps going for what feels like a full 10 seconds before it stops[if the urine-soak of K > 0], leaving your the inside of your [ShortDesc of K] feeling very wet[end if].";
			otherwise:
				say "You feel something very thin poke its way through the [if K is not total protection]gap[otherwise if K is diaper]padding[otherwise if K is metal or K is plastic]leg hole[otherwise]fabric[end if] of your [ShortDesc of K] and then start pumping. Your [ShortDesc of K] is being filled with something warm and viscous - it's [semen]!";
				let S be the soak-limit of K;
				decrease S by the total-soak of K;
				if S < 5, now S is 5;
				[if K is fluid immune, now S is 1;]
				CumSoak S on K;
				say "The pumping keeps going for what feels like a full 10 seconds before it stops[if the semen-soak of K > 0], leaving your the inside of your [K] feeling very slimy[end if].";
		otherwise:
			let D be a random eligible diaper;
			say "You are not very surprised at all when you feel a [ShortDesc of D] slowly materialise around your loins![line break][variable custom style][if the bimbo of the player < 13]Here we go again.[otherwise]Yay! How comfy[end if][roman type][line break]";
			summon D cursed with quest;
	otherwise if R is 2:
		if the player is able to get horny:
			say "The seat of the chair begins vibrating powerfully! ";
			if the player is diapered:
				let D be a random worn diaper;
				say "The padding of your [D] causes the vibrations to get gently sent through to your [genitals].";
				let N be a random number between 4 and 7;
				while the player is able to get horny and busy is 1 and N > 0:
					say "The vibrations of the chair send pleasurable waves through your [ShortDesc of D]!";
					stimulate vagina times 2;
					decrease N by 1;
					compute extra turn;
			otherwise:
				say "The vibration is way too powerful for you to put up any resistance, and soon you are being forced into a shaking orgasm!";
				if the player is not possessing a vagina:
					orgasm;
					punish shameful male orgasm;
				otherwise:
					vaginally orgasm shamefully;
		otherwise:
			say "It feels harder to think straight.";
			IntDown 1;
	otherwise if R is 3:
		say "The seat of the chair heats up! ";
		if the player is diapered:
			say "If you weren't diapered, that would probably be quite painful.";
		otherwise:
			say "If you were wearing a nice thick diaper, you might have been protected, but you're not and your bottom gets painfully scorched for several seconds before the chair cools back down!";
			PainUp 2;
	otherwise:
		say "As you sit there, you suddenly hear a loud voice sound out from the chair, which sounds exactly like your own.[line break][variable custom style]'[if there is a presenting as female intelligent monster in the location of the player]NANA! NANA![otherwise]DADA! DADA![end if] Look at me[one of] being a good girl[or], sitting in the good girl chair[or], I'm a pretty princess on her magic throne[or], I'm safe and sound on my big girl chair[in random order]!'[roman type][line break][if the humiliation of the player < 12500]Consumed with shame, you turn a deep shade of red as you wrestle with the straps.[otherwise if the humiliation of the player < 28000 and the bimbo of the player < 12]You whine to yourself gently. Not fair, it's not really you saying those things![otherwise]You don't really mind the fact that the chair is pretending to speak for you.[end if]";
		repeat with M running through reactive monsters:
			compute BabyChairReaction of M;
		humiliate 150;
	if busy is 1, say "[one of]Eventually[or]Finally,[stopping] the straps unlock themselves and you stand up. [one of]You walk away, finding that you feel very refreshed! You're[or]Once again, you're[stopping] fully healed! As you move away from the chairs, they all disappear backwards behind hidden panels in the wall behind them! After a few seconds mechanical whirring coming from behind the wall, the panels open again and the chairs reappear. [one of]But something tells you they are in a different order than before![or]Once again you are completely unable to tell them apart, so you don't know which is which![stopping]". [if busy is 0, this means the scene was interrupted]

To compute BabyChairReaction of (M - a monster):
	say "[BigNameDesc of M] looks at you and grins.[line break][speech style of M]'[one of]Yes you are a good girl, aren't you?'[or]Good girl! [if M is male]Daddy[otherwise]Nanny[end if] is very impressed.'[or]Aww, does little sweetie want a gold sticker?'[in random order][roman type][line break]";
	moderateHumiliate;
	FavourDown M with consequences.

To say RestingDesc of (F - hotel chairs):
	say "You are happy to find that you instantly feel less tired and less sore! Wow!".

Hotel Chairs ends here.
