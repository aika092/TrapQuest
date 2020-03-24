Fishbowl by Headgear begins here.

fishbowl is a vessel. fishbowl is open topped. The max-doses of a fishbowl is 35. fishbowl is in Holding Pen. The printed name of fishbowl is "[TQlink of item described][unless curse-ID of the item described is unsure][magic curse of item described] [end if]fishbowl[if the doses of item described > 0 and the fill-type of item described is remembered] ([FillName the fill-type of item described])[otherwise if the doses of item described > 0] ([fill-colour of item described] liquid)[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of fishbowl is "fshb". Figure of fishbowl is the file "Items/Accessories/Vessels/bowl1.jpg". Figure of cummy fishbowl is the file "Items/Accessories/Vessels/bowl2.jpg". Figure of cumfilled fishbowl is the file "Items/Accessories/Vessels/bowl3.jpg". Understand "fish", "bowl", "fishbowl" as fishbowl.
To decide which figure-name is the examine-image of (V - fishbowl):
	if the doses of V > 6, decide on the figure of cumfilled fishbowl;
	if the doses of V > 3, decide on the figure of cummy fishbowl;
	decide on the figure of fishbowl.
To say VesselDesc of (V - fishbowl):
	say "A glass bowl which is so large a goldfish could easily live in it.".
To say ShortVesselDesc of (V - fishbowl):
	say "fishbowl".
Definition: fishbowl is immune to change: decide yes.
Definition: fishbowl is blessable: decide no.
To compute drinking (X - fishbowl):
	unless the fill-type of X > highest-cursed, compute cursed drinking X.

fishbowl-hat is a headgear. fishbowl-hat is glass. Understand "fish", "bowl", "fishbowl" as fishbowl-hat. fishbowl-hat can be betrayal.
The printed name of fishbowl-hat is "[clothing-title-before]fishbowl[clothing-title-after]". The text-shortcut of fishbowl-hat is "fshb".

To set up influence of (C - fishbowl-hat):
	set up stat-based influence of C.

To say ShortDesc of (H - fishbowl-hat):
	say "fishbowl".

Definition: fishbowl-hat is condom pinnable: decide no.
Definition: fishbowl-hat is semen themed: decide yes.
Definition: fishbowl-hat is whore themed if it is not betrayal.

To decide which number is the initial outrage of (C - fishbowl-hat):
	if C is betrayal, decide on 11;
	decide on 7.

Figure of upside down fishbowl is the file "Items/Accessories/Head/bowl1.jpg".

To decide which figure-name is the clothing-image of (C - fishbowl-hat):
	decide on figure of upside down fishbowl.

To say ClothingDesc of (H - fishbowl-hat):
	say "This glass bowl [if H is worn]sits upside down on your head. It [end if]still has the dregs of the [if the fill-colour of fishbowl is murky][urine] and [end if][semen] that was collected during your gangbang session [NameDesc of woman-barbara][if H is betrayal]. It has the words 'WHORE TRAITOR' written in red Sharpie across the front, to let everyone know you have no honour even amongst your own kind[end if].".

To compute SelfExamineDesc of (H - fishbowl-hat):
	say "You are wearing a glass bowl [if H is betrayal]that reads 'WHORE TRAITOR' [end if]on top of your [ShortDesc of hair]. ".

Chapter - Class Outfit

Definition: fishbowl-hat (called C) is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]
	if the semen-soak of C > 0 or the urine-soak of C > 0, decide yes;
	decide no.

Check cleaning a body part with a clothing when fishbowl-hat is worn:
	say "Your [fishbowl-hat] is somehow preventing your muscles from following through on that command!" instead.

Check showering when fishbowl-hat is worn:
	say "Your [fishbowl-hat] is somehow preventing your muscles from following through on that command!" instead.

To say RemovalBlocked of (C - fishbowl-hat):
	say "Your [ShortDesc of C] is somehow preventing you from taking this off while it still has [if the urine-soak of C > 0][urine] or [end if][semen] on it!".

To compute class outfit of (H - fishbowl-hat):
	do nothing.

This is the fishbowl class rule:
	if fishbowl-hat is worn:
		if fishbowl-hat is betrayal, now the player-class is "worst of all whores";
		otherwise now the player-class is "inadequate whore";
		rule succeeds.
The fishbowl class rule is listed first in the player class rules.

Chapter - Quest

whore-exposing-quest has an object called latest-exposee.
whore-exposing-quest has a number called expose-count.

To compute unique recycling of (C - fishbowl-hat):
	now the latest-exposee of C is nothing;
	now the expose-count of whore-exposing-quest is 0.

To uniquely set up (C - fishbowl-hat):
	now the quest of C is whore-exposing-quest.

To say QuestFlav of (Q - whore-exposing-quest):
	say "You sense it wants you to let lots of people see you like this.".

To say QuestTitle of (Q - whore-exposing-quest):
	say " (shameful bowl-head quest)".

To progress quest of (Q - whore-exposing-quest) for (M - a monster):
	let H be a random worn headgear;
	if H is headgear and the quest of H is Q:
		if M is not latest-exposee of Q:
			now the latest-exposee of Q is M;
			increase the expose-count of Q by 1;
			if the remainder after dividing expose-count of Q by 7 is 0:
				repeat with C running through worn clothing:
					if the quest of C is Q, compute quest completion of Q on C;
			otherwise:
				say "[BigNameDesc of H] shudders happily at your exposure as a whore. Keep it up.".

To compute persistent reward of (Q - whore-exposing-quest) on (C - a clothing):
	if C is cursed:
		compute generic first time class reward of Q on C;
	otherwise:
		say "infusing itself with [one of]powerful magic! You feel that something good will happen when you finally decide to stop letting everyone know how pathetic a whore you are.[or]even more blessed magic![stopping]".

To uniquely destroy (C - fishbowl-hat):
	if the expose-count of whore-exposing-quest >= 14 and the quest of C is whore-exposing-quest:
		say "You can feel the blessed magic your [ShortDesc of C] had stored within itself shoot straight into your tendons, making you more flexible, so you can be a more satisfying prostitute!";
		DexUp the expose-count of whore-exposing-quest / 7.

Fishbowl ends here.
