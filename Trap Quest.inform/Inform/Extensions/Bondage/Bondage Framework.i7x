Bondage Framework by Bondage begins here.

A clothing can be wristless, wrist-unbound, wrist-bound-in-front or wrist-bound-behind (this is the wrist-restriction property). Clothing is usually wristless.
Definition: a clothing is wrist locking:
	if it is not wristless, decide yes;
	decide no.
Definition: a clothing is wrist locked:
	if it is wrist-bound-in-front or it is wrist-bound-behind, decide yes;
	decide no.
Definition: yourself is wrist bound:
	if there is worn wrist locked clothing, decide yes;
	decide no.
Definition: yourself is wrist bound in front:
	if there is worn wrist-bound-in-front clothing, decide yes;
	decide no.
Definition: yourself is wrist bound behind:
	if there is worn wrist-bound-behind clothing, decide yes;
	decide no.

A clothing can be ankleless, ankle-unbound or ankle-bound (this is the ankle-restriction property). Clothing is usually ankleless.
Definition: a clothing is ankle locking:
	if it is not ankleless, decide yes;
	decide no.
Definition: yourself is ankle bound:
	if there is worn ankle-bound clothing, decide yes;
	decide no.

A clothing can be neckless, neck-unbound or neck-bound (this is the neck-restriction property). [If a clothing is neck locked then it connects to the player's neck, either by being a neck item itself or connected to one.]
Definition: a clothing is neck locking:
	if it is not neckless, decide yes;
	decide no.
Definition: a clothing is neck locked:
	if it is neck-bound and there is worn neck covering clothing, decide yes;
	decide no.

Definition: a clothing is restrictive rather than unrestrictive:
	if the restrictivity of it > 0, decide yes;
	decide no.

To decide which number is the restrictivity of (C - a clothing):
	let R be 0;
	if C is wrist locking, increase R by 1;
	if C is ankle locking, increase R by 1;
	if C is neck locked, increase R by 1;
	decide on R.

To decide which number is the bondage dexterity penalty of the player:
	let D be 0;
	repeat with C running through worn restrictive clothing:
		increase D by (the restrictivity of C) * (the restrictivity of C); [The more parts of the body this item connects, the more harshly it affects the player's dexterity.]
	decide on D.

bondage is a kind of clothing. bondage is usually metal. bondage is usually unique. bondage is usually manly.

Definition: a bondage is discovered varied: decide no.
Definition: a bondage is too boring: decide no.
Definition: a bondage is stealable: decide no.
Definition: a bondage is disintegration-protected: decide yes.
Definition: a bondage is magic-enhanceable: decide no.

To decide which number is the bartering value of (T - a bondage) for (M - a dominatrix):
	decide on 2.

To say MonsterOfferAcceptFlav of (M - a dominatrix) to (T - a bondage):
	say "[speech style of M]'Hmm, I must admit, that would go great in my collection. [if M is unfriendly]Fine, I'll leave you alone, for now[otherwise]You have my thanks[end if].'[roman type][line break]".

To say ShortDesc of (T - a bondage):
	say "bondage".

Part - Trashcan

trashcan is an overdress. trashcan is metal. trashcan is unique. The printed name of trashcan is "[clothing-title-before]trashcan[clothing-title-after]". The text-shortcut of trashcan is "tsh".
trashcan is chestless. trashcan is not-top-displacable. trashcan is normally-nipple-exposing. The skirt-length of trashcan is 0.

trashcan has a number called tissue-fill.
trashcan has a number called diaper-fill.

Definition: trashcan is condom pinnable:
	if the tissue-fill of trashcan >= 2, decide yes;
	decide no.
Definition: trashcan is drinkable condom pinned: decide no.
Definition: trashcan is removable: decide no.
Definition: trashcan is class-relevant:
	if the class of the player is human toilet or the class of the player is condom collector or the class of the player is latex fetish model, decide yes;
	decide no.
Definition: trashcan is trash-ready:
	if diaper quest is 1:
		if the diaper-fill of trashcan < 2, decide yes;
		decide no;
	otherwise:
		if the tissue-fill of trashcan < 2, decide yes;
		if condom fetish >= 2 and the used condoms of trashcan < a random number between 1 and 25, decide yes;
		decide no.

To compute class set up of (C - trashcan):
	if diaper quest is 0, now the tissue-fill of trashcan is 2;
	otherwise now the diaper-fill of trashcan is 0.

To say ClassSummonFlav of (C - trashcan):
	say "A [C] appears strapped around your [body area of C]! [bold type]You can sense that [NameDesc of C] [bold type]cannot be removed other than by changing your class...[roman type][line break]".

To say ShortDesc of (C - trashcan):
	say "trashcan".

To say ClothingDesc of (C - trashcan):
	say "A small metal wastepaper basket that is strapped tightly to your midriff. [if the player is not in a predicament room][bold type]It appears to have some powerful magical effect that is preventing you from unstrapping it, or even touching it, meaning that you can't do anything about anything that anyone drops inside it. [roman type][end if]";
	if diaper quest is 0, say "[if the tissue-fill of trashcan is 0]It is completely empty, so people can see your belly and crotch straight through the mesh frame[otherwise if the tissue-fill of trashcan is 1]It is half-full of discarded [semen]-filled tissues, so people can see your belly straight through the mesh frame, but your crotch is hidden from view (when you're standing)[otherwise]It is full of discarded [semen]-filled tissues, which is very humiliating, but is at least hiding your belly and crotch from view (when you're standing)[end if].";
	otherwise say "[if the diaper-fill of trashcan is 0]It is completely empty, so people can see your belly and crotch straight through the mesh frame[otherwise if the diaper-fill of trashcan is 1]It holds a single large soiled diaper, so people can see your belly straight through the mesh frame, but your crotch is hidden from view (when you're standing)[otherwise]It currently contains two large soiled diapers, which is very humiliating, but is at least hiding your belly and crotch from view (when you're standing)[end if].";
	say "[bold type]You can sense that [NameDesc of C] [bold type]cannot be removed other than by changing your class...[roman type][line break]";

To say CondomsPinnedDesc of (C - trashcan):
	if the used condoms of C >= 20, say "[BigNameDesc of C] has an almost countless number of used condoms in it.";
	otherwise say "[BigNameDesc of C] has [if the used condoms of C > 1][used condoms of C] very visible cum-filled condoms discarded on top of the tissues[otherwise if the used condoms of C is 1]a large cum-filled condom very visibly discarded on top of the tissues[end if][if the used condoms of C > 0 and the empty condoms of C > 0], and [end if][if the empty condoms of C > 1][empty condoms of C] used condoms that have been torn and sucked dry[otherwise if the empty condoms of C is 1]one used condom that has been torn and sucked dry[end if].".

To say CondomPinnedFlav of (C - trashcan):
	say "[one of]The condom appears to just be resting on top of the tissues, but you have a sneaking suspicion that you won't be able to remove it normally.[or][stopping]".

trashcan has a number called smellCycle.

To compute periodic effect of (C - trashcan):
	if diaper quest is 0:
		if the tissue-fill of trashcan < 2, now C is see-through;
		otherwise now C is dense;
	otherwise:
		if the diaper-fill of trashcan < 2, now C is see-through;
		otherwise now C is dense;
	if the diaper-fill of trashcan > 0 and diaper messing < 6:
		if the remainder after dividing turnsWithSoiledDiaper by 8 is 0, GrossOut wetDiaperSmellGrossnessLevel with reason "" and sensation "[one of]scent[or]aroma[cycling]";
		increase the smellCycle of trashcan by 1;
		if the smellCycle of trashcan is 8, now the smellCycle of trashcan is 0;
	if C is not class-relevant:
		say "[BigNameDesc of C] fizzles from existence!";
		destroy C.
To compute school periodic effect of (C - trashcan):
	compute periodic effect of C.

Definition: trashcan is potentially vagina covering:
	if diaper quest is 0 and the tissue-fill of trashcan > 0 and the player is upright, decide yes;
	if diaper quest is 1 and the diaper-fill of trashcan > 0 and the player is upright, decide yes;
	decide no.
Definition: trashcan is potentially penis covering:
	if trashcan is potentially vagina covering, decide yes;
	decide no.
Definition: trashcan is potentially at least partially vagina covering:
	if trashcan is potentially vagina covering, decide yes;
	decide no.
Definition: trashcan is potentially at least partially penis covering:
	if trashcan is potentially at least partially vagina covering, decide yes;
	decide no.

To decide which number is the soak-limit of (C - trashcan):
	decide on the tissue-fill of trashcan * 10.

To decide which number is the initial outrage of (C - trashcan):
	if diaper quest is 0 and the tissue-fill of trashcan > 0, decide on 14;
	if diaper quest is 1 and the diaper-fill of trashcan > 0, decide on 14;
	decide on 3.
To decide which number is the initial cringe of (C - trashcan):
	decide on the initial outrage of C.

Definition: trashcan is acceptableCumRag: decide no.

Bondage Framework ends here.
