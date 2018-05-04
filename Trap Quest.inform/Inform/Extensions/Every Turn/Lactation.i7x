Lactation by Every Turn begins here.


[!<ComputeLactationWithEarningsAndSeconds>+

REQUIRES COMMENTING

+!]
A time based rule (this is the lactation rule):
	let R be the lactation rate of the player;
	repeat with C running through worn clothing:
		if C is milk production:
			increase R by 2;
			if C is blessed, decrease R by 1;
			if C is cursed, increase R by 1;
		if C is maternity dress, increase R by 1;
		if C is milking basque, increase R by 1;
		if C is nintendolls-brand tattoo, increase R by 2;
		if C is abyssal tattoo and the class of the player is cowgirl, increase R by 2;
	if the latex-transformation of the player > 5 or there is a worn pasties, now R is 0;
	if R > 0:
		let L be 200 / R + 1;
		if the remainder after dividing time-earnings by L < time-seconds:
			let flav-said be 0;
			if there is an ass covering milking basque:
				let previous-size be the largeness of belly;
				Assfill 1 Milk;
				if the largeness of belly > previous-size:
					say "Your body has produced [if the milk volume of belly < 5]enough[otherwise]so much[end if] [milk] that you now have a [BellyDesc]![one of][line break][variable custom style]Wait.. what?!?! What the hell is this basque doing to me?  That's not how lactation is supposed to work.[roman type][line break][or][stopping]";
					now flav-said is 1;
			if the number of ass covering white milking basques is 0: [this way, cow print milking basques do both]
				let previous-size be the largeness of breasts;
				MilkUp 1;
				if the largeness of breasts > previous-size:
					say "Your body has produced [if the milk volume of breasts < 5]enough[otherwise]so much[end if] [milk] that you now have [BreastDesc]!";
					now flav-said is 1;
			if a random number between 1 and  10 is 1 and the lactation rate of the player > 0:
				say "You feel your [unless there is an ass covering milking basque]breasts['] [end if][milk] production rate [if R is 1]stop.[otherwise][one of]slow down[or]decrease[or]lower[in random order].[end if]";
				decrease the lactation rate of the player by 1;
	if the milk volume of breasts > 0:
		if the lactation rate of the player > 3: [Selkie. (Incidentally: I put this comment in front of the "if" on this line, and Inform got confused.)]
			if a random number between 1 and 70 is 1: [Added because it was saying this too often]
				say "[one of]Your [BreastDesc] feel active.[or]Your breasts feel strangely warm.[or]Your [BreastDesc] feel kind of tight, or intense... kind of... busy?[or]There's a funny tingling in your boobs.[or]A funny sort of quiver, deep inside your breasts, makes you stop and stare at your [BreastDesc].[or]You stare at your breasts, certain that - just for a moment - you felt liquid moving inside them![at random]  ";
				if FairySuckled > 3 and a random number between 1 and 2 is 1 :
					say "[one of]They've felt weird ever since those darned fairies started fixating on your boobs![or]Surely, all that fairy-suckling.... are they turning you into a brood mare?[or]You hope it's not a side-effect of all that fairy attention to your milky boobs![or]You worry it's a side-effect of all those milk-hungry fairies![at random][line break]";
		let M be the milk volume of breasts;
		let L be 120;
		if the class of the player is cowgirl, now L is 240;
		decrease L by M * 2; [The more milk there is, the higher chance of lactation]
		if a random number between 0 and L <= 0:
			trigger lactation.

[!<DecideWhichObjectIsBottomLevelLactationCover>+

REQUIRES COMMENTING

+!]
To decide which object is bottom level lactation cover:
	let N be nothing;
	if there is a worn bra:
		let B be a random bra worn by the player;
		unless B is nipple exposing or B is fluid immune, now N is B;
	if N is nothing and there is a worn overdress:
		let O be a random worn overdress;
		unless O is nipple exposing or O is fluid immune, now N is O;
		if O is milking harness and O is penetrating asshole, now N is O; [separate because milking harness is fluid immune]
	if N is nothing and the player is upright and gloryhole is grabbing the player, now N is gloryhole;
	decide on N.

[!<TriggerLactation>+

REQUIRES COMMENTING

+!]
To trigger lactation:
	if milking is 0:
		say "[bold type]";
		let M be a random number from 1 to the milk volume of breasts / 2;
		increase the lactation-count of the player by 1;
		if lactation-count of the player is 1:
			say "You feel a strange tingle in your chest... a feeling like... something weird is going on. Your nipples perk up and feel strangely sensitive. The feeling intensifies, and then with a shock you stare at your chest as you work out what's happening.[line break]";
			if the player is male:
				say "[variable custom style]This is not possible! What the hell is this crazy game doing to me?![roman type][line break]";
				humiliate 200;
		let N be bottom level lactation cover;
		if there is a worn white pacifier, now N is a random worn white pacifier;
		if N is white pacifier:
			say "[one of]You feel [milk] leak from your [BreastDesc], but the milk never reaches [if bottom level lactation cover is clothing]your [bottom level lactation cover][otherwise]the air[end if]![roman type]  Instead you feel your [N] magically feeding it back into your body via your mouth[or]Once again you feel [milk] leak from your nipples and magically appear in your mouth[stopping]. [line break][variable custom style][if the milk taste addiction of the player < 7][one of]Yuck![or]Gross...[or]My own milk?  Eww![or]I'm breastfeeding myself, gross![in random order][otherwise if the milk taste addiction of the player < 14][one of]At least it tastes good.[or]This is a bit weird, but I've done weirder.[or]Well I guess it's good for my nutrition...[or]Does all breast milk taste this good?[in random order][otherwise][one of]Yum![or]How delicious![or]So tasty![or]Ooh, I want to drink even more![in random order][end if][roman type][line break]";
			MilkDown M / 2;
			StomachUp M / 2;
			increase the fat-burning of the player by 75 * M;
		otherwise if N is crotch-in-place top-placed milking basque:
			say "[one of]Milk flows from your nipples, but it doesn't stain your [N]!  Instead you feel the milk somehow flow directly into your [asshole]!  [line break][variable custom style]What the hell?!  This thing must be magic![roman type][line break][or]Milk flows from your nips directly into your [asshole] thanks to your [N].[stopping]";
			MilkDown M / 2;
			AssFill M / 2 Milk;
		otherwise if N is milking harness:
			if M is 1:
				say "A few drops of [milk] leak from your [BreastDesc] and into the suction cups of your [printed name of N]. You hear the pumping device behind you force the [milk] through its tubes and you shiver [if the bimbo of the player > 8]in enjoyment[end if] as you feel the warm liquid enter you through the harness's plug.";
				MilkDown 1;
				AssFill 1 Milk;
			otherwise:
				if M < 10, say "Milk flows from your nipples into the suction cups of your [printed name of N]. You hear the pumping device behind you force the [milk] through its tubes and you shiver [if the bimbo of the player > 11]in delight[end if] as you feel substantial amounts of the warm liquid enter you through the harness's plug.";
				otherwise say "Your [BreastDesc] powerfully squirt [milk] into the suction cups of your [printed name of N]. You hear the pumping device behind you force the [milk] through its tubes and you shiver [if the bimbo of the player > 14]in ecstasy[end if] as you feel the warm liquid enter you through the harness's plug.";
				MilkDown M / 2;
				AssFill M / 2 Milk;
			say "The stimulation [one of]of the suction on your nipples combined with the [milk] rushing into your [asshole] [or][stopping]makes you aroused[if the sex addiction of the player < 11] against your will[end if].";
			arouse 400;
		otherwise if N is clothing and N is top-placed:
			if M is 1:
				say "A few drops of [milk] leak from your [BreastDesc] and [if N is bra]into the cups of[otherwise]onto[end if] your [printed name of N]";
				MilkDown 1;
				Squirt milk on N by 1;
			otherwise:
				if M < 10, say "Milk flows from your nipples and noticeably stains [if N is bra]the cups of [end if]your [printed name of N]";
				otherwise say "Your [BreastDesc] powerfully squirt [milk] into your [printed name of N]";
				MilkDown M / 2;
				Squirt milk on N by M / 2;
		otherwise if N is gloryhole:
			if M is 1:
				say "A few drops of [milk] squirt from your tender nipples and into whatever is causing the suction at the [printed name of N] that's currently gripping your [BreastDesc].";
				MilkDown 1;
				if a random number between 1 and 4 is 1:
					say "A strange shivery feeling tingles through your chest.";
					increase the lactation rate of the player by 1;
			otherwise: [Selkie: when I started the line below "[Milk] starts..." , that entire block of text came out in bold (and Milk was not capitalised). So I changed it to just say "Milk starts..."]
				if M < 10, say "Milk starts jetting from your nipples into the suction cups of the [printed name of N]. You hear a recording of a cow mooing, playing from somewhere right by your head, so that if anyone were looking at you they'd think you were the one mooing in pleasure. Ohhh - how mean!  You shiver [if the humiliation of the player > 11]in delight [end if]and wonder if somehow this situation might be somehow making you more cow-like?  But they wouldn't be that mean, would they?";
				otherwise say "Your [BreastDesc] powerfully squirt [milk] into the suction cups of the [printed name of N]. You feel the pressure easing from your swollen udders, and combined with the wonderful feeling of the exciting suction on your tender and sucked-erect teats, and the [milk] squirting from them, you feel a heat growing in your loins. [line break][variable custom style]This is actually pretty wonderful![roman type][line break]It goes on for a long time, and you feel yourself getting hornier, and find yourself pressing your thighs together, trying to squeeze out a little bit more pleasure from your tingling groin. [one of][line break][variable custom style]Wow, this is really giving my milk ducts a workout!  Imagine if they were like other muscles, and... oohhh... the more I work them, the better they get at doing their job?[if the bimbo of the player > 14]  I sure hope it does![roman type][line break][otherwise]You sure hope not. The idea of [italic type]your[roman type] breasts giving milk is just awful![end if][or][line break][variable custom style]It's like an exercise machine for my milky boobs![roman type][line break][or]You feel a curious burning sensation, spread out deep inside your boobs - it reminds you of growing pains, when you were a teen.[or]You imagine your poor milk ducts, being filled and emptied, over and over.[or]Your milk glands definitely feel [italic type]healthier.[roman type][stopping][line break]";
				let tempM be M / 2;
				MilkDown tempM;
				if tempM < 4:
					increase the lactation rate of the player by 2;
					arouse 50;
					humiliate 50;
				otherwise:
					increase the lactation rate of the player by 4;
					arouse 200;
					humiliate 100;
		otherwise:
			if M is 1:
				say "A few drops of [milk] leak from your [BreastDesc] and drip to the floor.";
				MilkDown 1;
				MilkPuddleUp 1;
			otherwise:
				if M < 10, say "Milk flows from your nipples and pools on the floor.";
				otherwise say "Your [BreastDesc] powerfully squirt [milk] onto the floor.";
				MilkDown M / 2;
				MilkPuddleUp M / 2;
		let O be a random off-stage milking harness;
		let H be a random off-stage royal circlet;
		if a random number from 6 to 50 - (20 * unlucky) < the lactation-count of the player and O is actually summonable and the number of worn royal circlets is 0 and the number of worn white pacifiers is 0:
			say "[bold type]As you finish lactating, a plug connected to some tubing and suction cups [italic type]shunks[bold type] into place around you.[roman type]  You feel your loins encased in latex and your nipples pulled outwards by a suction force.";
			summon O cursed;
			now the lactation-count of the player is 0;
			now the plug size of O is the openness of asshole;
			say "[one of]You look down to try and work out exactly what this thing does...[line break][description of O][or][stopping]";
		otherwise if a random number from 4 to 50 - (30 * unlucky)  < the lactation-count of the player and H is actually summonable and the number of worn white pacifiers is 0:
			say "[bold type]As you finish lactating, a silver circlet appears on your head.[roman type][line break]";
			summon H cursed;
			now the lactation-count of the player is 0;
		say "[roman type][line break]";
		now last-lactated-time is earnings; [Record this: the idea is that the player will smell of milk for a while after lactating, and possibly exciting some monsters when they smell it.]
		


Lactation ends here.

