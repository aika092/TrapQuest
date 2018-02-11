Suspenders Framework by Belts Suspenders begins here.

A suspenders is a kind of belt. The printed name of suspenders is usually "[TQlink of item described][clothing-title-before]pair of suspenders[clothing-title-after][TQxlink of item described][verb-desc of item described]". The printed plural name of suspenders is usually "[TQlink of item described][clothing-title-before]pairs of suspenders[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of suspenders is "sus". Understand "pair", "pair of", "garter", "garters", "garterbelt" as suspenders.

To decide which number is the initial outrage of (C - a suspenders):
	decide on 2.

To uniquely set up (S - a suspenders):
	set up magic state of S;
	now the raw-magic-modifier of S is 0.

To set up influence of (C - a suspenders):
	set up random-based influence of C.

To restock (C - a suspenders):
	let B be a random basic loot suspenders;
	if B is suspenders, now B is in Standard Item Pen.

This is the setup starting pair of suspenders rule:
	let C be a random suspenders;
	restock C.
The setup starting pair of suspenders rule is listed in the setup starting items rules.

Report examining suspenders:
	if newbie tips is 1, say "Suspenders can enhance the effects of your stockings.".

To say ShortDesc of (O - a suspenders):
	say "pair of suspenders".

To say ShortestDesc of (C - a suspenders):
	say "pair of suspenders".

Report wearing stockings when there are worn suspenders:
	let S be a random worn suspenders;
	if S is cursed and the noun is not cursed:
		say "The clips on your [printed name of S] snap onto the [noun] and refuse to let go!  Even worse, your stockings shrink a little, sealing themselves to your legs. It seems that they're cursed now...";
		now the noun is cursed;
		now S is sure;
	otherwise if S is not cursed and the noun is cursed:
		say "The clips on your [printed name of S] snap onto the [noun] and refuse to let go!  Even worse, your suspenders seal themselves to your hips. It seems that they're cursed now...";
		now S is cursed;
		now S is sure.

Report wearing suspenders when there are worn stockings:
	let S be a random worn stockings;
	if S is not cursed and the noun is cursed:
		say "The clips on your [noun] snap onto the [printed name of S] and refuse to let go!  Even worse, your stockings shrink a little, sealing themselves to your legs. It seems that they're cursed now...";
		now S is cursed;
		now S is sure;
	otherwise if S is cursed and the noun is not cursed:
		say "The clips on your [noun] snap onto the [printed name of S] and refuse to let go!  Even worse, your suspenders seal themselves to your hips. It seems that they're cursed now...";
		now the noun is cursed;
		now S is sure.

Report wearing suspenders:
	if the noun is unsure and the noun is cursed, say "You finish slipping your [printed name of the noun] onto your hips. As you let go you feel the clothing seal itself to your hips. These suspenders are cursed!".

To decide which number is the knee-modifier of (C - a suspenders):
	let S be a random worn stockings;
	if S is stockings, decide on the knee-modifier of S;
	decide on 0.

To decide which object is the coverer of (C - a suspenders):
	repeat with R running through worn knee-length or longer clothing:
		if R is crotch-in-place, decide on R;
	repeat with R running through worn leg covering clothing:
		if (R is trousers or R is overdress) and R is crotch-in-place, decide on R;
	decide on nothing.

To decide which object is the concealer of (C - a suspenders):
	repeat with R running through worn actually dense knee-length or longer clothing:
		if R is crotch-in-place, decide on R;
	repeat with R running through worn leg covering clothing:
		if (R is trousers or R is overdress) and R is crotch-in-place, decide on R;
	decide on nothing.

Definition: a suspenders (called C) is bow themed:
	decide yes.

Definition: a suspenders (called C) is ingredient:
	decide yes.

To decide which number is the crafting key of (C - a suspenders):
	decide on 52.


Section - Wearability

suspenders removability rules is a rulebook. The removability rules of suspenders is usually suspenders removability rules.

This is the cursed stockings prevents removal of suspenders rule:
	repeat with C running through worn cursed stockings:
		if summoning is 0:
			say "Your [C] are somehow preventing you!";
			rule fails.
The cursed stockings prevents removal of suspenders rule is listed in the suspenders removability rules.


Suspenders Framework ends here.

