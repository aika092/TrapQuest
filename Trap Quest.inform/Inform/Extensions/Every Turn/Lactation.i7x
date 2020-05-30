Lactation by Every Turn begins here.

[!<ComputeLactationWithEarningsAndSeconds>+

REQUIRES COMMENTING

+!]
A time based rule (this is the lactation rule):
	if lactation fetish > 0:
		let R be the lactation rate of the player;
		repeat with C running through worn wearthing:
			if C is milk production clothing:
				increase R by 1;
				if C is cursed, increase R by 1;
			if C is maternity dress, increase R by 1;
			if C is milking basque, increase R by 1;
			if C is nintendolls-brand tattoo, increase R by 2;
			if C is abyssal tattoo and the class of the player is cowgirl, increase R by 2;
		if the latex-transformation of the player > 5 or there is a worn pasties, now R is 0;
		if R > 0:
			if R > 10, now R is 10;
			let L be 50 - (R * 4);
			if the remainder after dividing time-earnings by L < time-seconds:
				let flav-said be 0;
				if there is an ass covering milking basque:
					let previous-size be the largeness of belly;
					Assfill 1 Milk;
					if the largeness of belly > previous-size:
						say "Your body has produced [if the milk volume of belly < 5]enough[otherwise]so much[end if] [milk] that you now have a [BellyDesc]![one of][line break][variable custom style]Wait... what?!?! What the hell is this basque doing to me? That's not how lactation is supposed to work.[roman type][line break][or][stopping]";
						now flav-said is 1;
				if the number of ass covering white milking basques is 0: [this way, cow print milking basques do both]
					let previous-size be the largeness of breasts;
					MilkUp 1;
					if the largeness of breasts > previous-size:
						say "Your body has produced [if the milk volume of breasts < 5]enough[otherwise]so much[end if] [milk] that you now have [BreastDesc]!";
						now flav-said is 1;
				if a random number between 1 and 10 is 1 and the lactation rate of the player > 0:
					say "You feel your [unless there is an ass covering milking basque]breasts['] [end if][milk] production rate [if R is 1]stop.[otherwise][one of]slow down[or]decrease[or]lower[in random order].[end if]";
					decrease the lactation rate of the player by 1;
		if the milk volume of breasts > 0:
			if the lactation rate of the player > 3: [Selkie. (Incidentally: I put this comment in front of the "if" on this line, and Inform got confused.)]
				if a random number between 1 and 70 is 1: [Added because it was saying this too often]
					say "[one of]Your [BreastDesc] feel active.[or]Your breasts feel strangely warm.[or]Your [BreastDesc] feel kind of tight, or intense... kind of... busy?[or]There's a funny tingling in your boobs.[or]A funny sort of quiver, deep inside your breasts, makes you stop and stare at your [BreastDesc].[or]You stare at your breasts, certain that - just for a moment - you felt liquid moving inside them![at random] ";
					if FairySuckled > 3 and a random number between 1 and 2 is 1 :
						say "[one of]They've felt weird ever since those darned fairies started fixating on your boobs![or]Surely, all that fairy-suckling... are they turning you into a brood mare?[or]You hope it's not a side-effect of all that fairy attention to your milky boobs![or]You worry it's a side-effect of all those milk-hungry fairies![at random][line break]";
			let M be the milk volume of breasts;
			let L be 120;
			if the class of the player is cowgirl, now L is 240;
			decrease L by M * 2; [The more milk there is, the higher chance of lactation]
			if there is a worn pasties, now L is 1;[lactation shouldn't happen when the player is wearing pasties]
			if (the class of the player is not cowgirl or (the class of the player is royal slave and there is a worn crotch-in-place top-placed milking basque)) and a random number between 0 and L <= 0: [We want to allow the cow slave class to still regularly lactate when the milking basque is in place]
				trigger lactation;
			otherwise if the milk volume of breasts >= the flesh volume of breasts:
				if the ready-for-milking of milking-quest is 0:
					let quest-2b-milked be nothing;
					repeat with C running through worn clothing:
						if the quest of C is milking-quest, now quest-2b-milked is C;
					say "[bold type]Your breasts are now completely full of milk[if quest-2b-milked is clothing]. Your [ShortDesc of quest-2b-milked] fills you with a desire to find somewhere to get milked[end if][if the milk volume of breasts > 10]. Until you do, your heavy breasts will make you become fatigued much faster while standing[end if].[roman type][line break]";
				now the ready-for-milking of milking-quest is 1.

To decide which number is milkingColour:
	let R-component be 255;
	let G-component be 255 - ((255 * the milk volume of breasts) / the flesh volume of breasts); [gradually go from yellow to red as breasts fill]
	if G-component < 0, now G-component is 0;
	if G-component > 255, now G-component is 255;
	decide on (R-component * 65536) + (G-component * 256).

To decide which object is bottom level lactation cover:
	let N be nothing;
	repeat with C running through worn actually nipple covering clothing:
		if N is nothing:
			now N is C;
		otherwise if the top-layer of N > the top-layer of C:
			now N is C;
	if N is nothing and the player is upright and gloryhole is grabbing the player, now N is gloryhole;
	decide on N.

[!<TriggerLactation>+

REQUIRES COMMENTING

+!]
To trigger lactation:
	if milking is 0:
		say "[bold type]";
		let M be a random number from 1 to (the milk volume of breasts / 2);
		if M < 2, now M is 2;
		let CGM be the the milk volume of breasts - the flesh volume of breasts;
		if the class of the player is cowgirl and CGM < M, now M is CGM; [cowgirls stay at maximum fill and only expel the excess]
		increase the lactation-count of the player by 1;
		if lactation-count of the player is 1:
			say "You feel a strange tingle in your chest... a feeling like... something weird is going on. Your nipples perk up and feel strangely sensitive. The feeling intensifies, and then with a shock you stare at your chest as you work out what's happening.[line break]";
			if the player is sexed male:
				say "[variable custom style]This is not possible! What the hell is this crazy game doing to me?![roman type][line break]";
				humiliate 200;
		let N be bottom level lactation cover;
		if there is a worn yellow pacifier, now N is a random worn yellow pacifier;
		if N is yellow pacifier:
			say "[one of]You feel [milk] leak from your [BreastDesc], but the milk never reaches [if bottom level lactation cover is clothing]your [bottom level lactation cover][otherwise]the air[end if]![roman type] Instead you feel your [ShortDesc of N] magically feeding it back into your body via your mouth[or]Once again you feel [milk] leak from your nipples and magically appear in your mouth[stopping].[line break][variable custom style][if the milk taste addiction of the player < 7][one of]Yuck![or]Gross...[or]My own milk? Eww![or]I'm breastfeeding myself, gross![in random order][otherwise if the milk taste addiction of the player < 14][one of]At least it tastes good.[or]This is a bit weird, but I've done weirder.[or]Well I guess it's good for my nutrition...[or]Does all breast milk taste this good?[in random order][otherwise][one of]Yum![or]How delicious![or]So tasty![or]Ooh, I want to drink even more![in random order][end if][roman type][line break]";
			MilkDown M;
			StomachUp M;
			increase the fat-burning of the player by 75 * M;
		otherwise if N is crotch-in-place top-placed milking basque:
			say "[one of]Milk flows from your nipples, but it doesn't stain your [ShortDesc of N]! Instead you feel the milk somehow flow directly into your [asshole]![line break][variable custom style]What the hell?! This thing must be magic![roman type][line break][or]Milk flows from your nips directly into your [asshole] thanks to your [ShortDesc of N].[stopping]";
			MilkDown M;
			AssFill M Milk;
		otherwise if N is milking harness:
			if M is 1:
				say "A few drops of [milk] leak from your [BreastDesc] and into the suction cups of your [ShortDesc of N]. You hear the pumping device behind you force the [milk] through its tubes and you shiver [if the bimbo of the player > 8]in enjoyment[end if] as you feel the warm liquid enter you through the harness's plug.";
				MilkDown 1;
				AssFill 1 Milk;
			otherwise:
				if M < 10, say "Milk flows from your nipples into the suction cups of your [ShortDesc of N]. You hear the pumping device behind you force the [milk] through its tubes and you shiver [if the bimbo of the player > 11]in delight[end if] as you feel substantial amounts of the warm liquid enter you through the harness's plug.";
				otherwise say "Your [BreastDesc] powerfully squirt [milk] into the suction cups of your [ShortDesc of N]. You hear the pumping device behind you force the [milk] through its tubes and you shiver [if the bimbo of the player > 14]in ecstasy[end if] as you feel the warm liquid enter you through the harness's plug.";
				MilkDown M ;
				AssFill M Milk;
			say "The stimulation [one of]of the suction on your nipples combined with the [milk] rushing into your [asshole] [or][stopping]makes you aroused[if the sex addiction of the player < 11] against your will[end if].";
			passively stimulate asshole;
		otherwise if N is clothing:
			if M is 1:
				say "A few drops of [milk] leak from your [BreastDesc] and [if N is bra]into the cups of[otherwise]onto[end if] your [ShortDesc of N][if N is not liquid-soak-appropriate].[end if]";
				MilkDown 1;
				Squirt milk on N by 1;
			otherwise:
				if M < 10, say "Milk flows from your nipples and [if N is fluid vulnerable]noticeably stains[otherwise]onto[end if] [if N is bra]the cups of [end if]your [ShortDesc of N][if N is not liquid-soak-appropriate].[end if]";
				otherwise say "Your [BreastDesc] powerfully squirt [milk] into your [ShortDesc of N][if N is not liquid-soak-appropriate].[end if]";
				MilkDown M;
				Squirt milk on N by M;
		otherwise if N is gloryhole:
			if M is 1:
				say "A few drops of [milk] squirt from your tender nipples and into whatever is causing the suction at the [printed name of N] that's currently gripping your [BreastDesc].";
				MilkDown 1;
				if a random number between 1 and 4 is 1:
					say "A strange shivery feeling tingles through your chest.";
					increase the lactation rate of the player by 1;
			otherwise: [Selkie: when I started the line below "[Milk] starts...", that entire block of text came out in bold (and Milk was not capitalised). So I changed it to just say "Milk starts..."]
				if M < 10, say "Milk starts jetting from your nipples into the suction cups of the [printed name of N]. You hear a recording of a cow mooing, playing from somewhere right by your head, so that if anyone were looking at you they'd think you were the one mooing in pleasure. Ohhh - how mean! You shiver [if the humiliation of the player > 11]in delight [end if]and wonder if somehow this situation might be somehow making you more cow-like? But they wouldn't be that mean, would they?";
				otherwise say "Your [BreastDesc] powerfully squirt [milk] into the suction cups of the [printed name of N]. You feel the pressure easing from your swollen udders, and combined with the wonderful feeling of the exciting suction on your tender and sucked-erect teats, and the [milk] squirting from them, you feel a heat growing in your loins. [line break][variable custom style]This is actually pretty wonderful![roman type][line break]It goes on for a long time, and you feel yourself getting hornier, and find yourself pressing your thighs together, trying to squeeze out a little bit more pleasure from your tingling groin. [one of][line break][variable custom style]Wow, this is really giving my milk ducts a workout! Imagine if they were like other muscles, and... oohhh... the more I work them, the better they get at doing their job?[if the bimbo of the player > 14] I sure hope it does![roman type][line break][otherwise]You sure hope not. The idea of [italic type]your[roman type] breasts giving milk is just awful![end if][or][line break][variable custom style]It's like an exercise machine for my milky boobs![roman type][line break][or]You feel a curious burning sensation, spread out deep inside your boobs - it reminds you of growing pains, when you were a teen.[or]You imagine your poor milk ducts, being filled and emptied, over and over.[or]Your milk glands definitely feel [italic type]healthier.[roman type][stopping][line break]";
				let tempM be M;
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
				cutshow figure of lactation 1 for breasts;
			otherwise:
				if M < 10, say "Milk flows from your nipples and pools on the floor.";
				otherwise say "Your [BreastDesc] powerfully squirt [milk] onto the floor.";
				MilkDown M;
				MilkPuddleUp M;
		let O be a random off-stage milking harness;
		if a random number from 6 to 50 - (20 * unlucky) < the lactation-count of the player and O is actually summonable and royal circlet is not worn and the number of worn yellow pacifiers is 0:
			say "[bold type]As you finish lactating, a plug connected to some tubing and suction cups [italic type]shunks[bold type] into place around you.[roman type] You feel your loins encased in latex and your nipples pulled outwards by a suction force.";
			summon O cursed;
			now the lactation-count of the player is 0;
			now the plug size of O is the openness of asshole;
			say "[one of]You look down to try and work out exactly what this thing does...[line break][ExamineDesc of O][or][stopping]";
		otherwise if a random number from 4 to 50 - (30 * unlucky) < the lactation-count of the player and royal circlet is off-stage and royal circlet is actually summonable and the number of worn yellow pacifiers is 0:
			say "[bold type]As you finish lactating, a silver circlet appears on your head.[line break][variable custom style]Why do I get the feeling that people are going to want my milk soon...[roman type][line break]";
			summon royal circlet cursed;
			now the lactation-count of the player is 0;
		say "[roman type][line break]";
		now last-lactated-time is earnings; [Record this: the idea is that the player will smell of milk for a while after lactating, and possibly exciting some monsters when they smell it.]
		if N is gloryhole, progress quest of milking-quest;
		otherwise now the ready-for-milking of milking-quest is 1.

Lactation ends here.
