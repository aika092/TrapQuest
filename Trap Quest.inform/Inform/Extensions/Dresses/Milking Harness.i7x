Milking Harness by Dresses begins here.

milking harness is an overdress. milking harness is unique. milking harness is ass plugging. milking harness is totally-exclusive. milking harness is unskirted. milking harness is plastic. milking harness is not-displacable-always-fuckable. milking harness is no-crotch. milking harness is enema-helping. milking harness is manly.

The printed name of milking harness is "[clothing-title-before]milking harness[clothing-title-after]". The text-shortcut of milking harness is "mh".

To decide which figure-name is clothing-image of (C - milking harness):
	decide on figure of milking harness.

To say ClothingDesc of (O - milking harness):
	say "This bizarre piece of 'clothing' consists of a small hollow plug for your [asshole]. Some clear rubber tubing exits the rear of the plug, connecting the hollow plug to a small solid black pumping device that rests at the small of your back, quietly humming. Two more identical clear tubes exit the top of this device and travel up your back, splitting near your shoulders where one tube travels over each shoulder and down to clear suction cups which are latched onto your nipples. In this way the [printed name of O] seems built to drain your [BreastDesc] of [milk] and pump it into your [asshole]!".

To compute SelfExamineDesc of (O - milking harness):
	say "Some [ShortDesc of O] keeps pumping anything you lactate directly into your ass. ".

To say ShortDesc of (C - milking harness):
	say "milking harness".
To say MediumDesc of (C - milking harness):
	say "plug panties connected to a milking contraption".

Figure of milking harness is the file "Items/Clothes/Upper/Special/milkingharness1.png".

To decide which number is the initial outrage of (C - milking harness):
	decide on 20.

Definition: milking harness is class-transformation-protected: decide yes.

To set up influence of (C - milking harness):
	set up taste-based influence of C.

Definition: milking harness is displacable:
	if it is not cursed, decide yes;
	decide no.

To say DisplaceFlav of (C - milking harness):
	say "You remove the plug of the [ShortDesc of C] from your [asshole].".

To say ReplaceFlav of (C - milking harness):
	say "You push the plug of the [ShortDesc of C] back into your [asshole].";[###Selkie: I wonder if there should be some varying-text function for extra humiliation for when the player is self-inserting objects; especially when they're being observed?]
	ruin asshole.

outrageous-milking-harness is a humiliating situation.
Definition: outrageous-milking-harness (called A) is applicable:
	let B be a random worn milking harness;
	let O be the outrage of B;
	if the player is not disgraced and O is too humiliating, decide yes;
	decide no.
To reflect on (A - outrageous-milking-harness):
	say "[variable custom style]I can't believe what this crazy harness is doing to me... and even worse, everyone can see exactly what's happening![roman type][line break]".

To say FriendReaction of (M - a real-life patron) to (A - outrageous-milking-harness):
	say "... You're LITERALLY being milked right now. Just, WOW. ".

To AnnouncedExpel (L - milk) On (C - milking harness) by (N - a number):
	compute harness milking N.
To UnannouncedExpel (L - milk) On (C - milking harness) by (N - a number):
	compute harness milking N.

To compute harness milking (N - a number):
	if N is 1:
		say "You hear the pumping device behind you force the [milk] through its tubes and you shiver [if the bimbo of the player > 8]in enjoyment[end if] as you feel the warm liquid enter you through the harness's plug.[roman type][line break]";
		MilkDown 1;
		AssFill 1 Milk;
	otherwise:
		if N < 10, say "You hear the pumping device behind you force the [milk] through its tubes and you shiver [if the bimbo of the player > 11]in delight[end if] as you feel substantial amounts of the warm liquid enter you through the harness's plug.[roman type][line break]";
		otherwise say "You hear the pumping device behind you force the [milk] through its tubes and you shiver [if the bimbo of the player > 14]in ecstasy[end if] as you feel the warm liquid enter you through the harness's plug.[roman type][line break]";
		MilkDown N;
		AssFill N Milk;
	say "The stimulation [one of]of the suction on your nipples combined with the [milk] rushing into your [asshole] [or][stopping]makes you aroused[if the sex addiction of the player < 11] against your will[end if].";
	passively stimulate asshole;

Milking Harness ends here.
