Fake Nails by Equippables begins here.

A fake nails is a kind of equippable. A fake nails is usually slap ready. The printed name of fake nails is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if]set of fake nails[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of fake nails is "fn". There is 1 unique fake nails. Understand "set", "set of" as fake nails. Fake nails is usually plastic.

Figure of fake nails is the file "fakenails1.png".

To decide which figure-name is the clothing-image of (C - a fake nails):
	decide on figure of fake nails.

To say ClothingDesc of (C - a fake nails):
	say "A set of large pink fake nails. [if C is cursed]You find yourself constantly distracted, worrying that you will accidentally break a nail.[otherwise if C is blessed]You are fully confident that your blessed nails are magically reinforced and impossible to break.[otherwise]You find yourself more than a bit distracted by them as you anticipate that it might hurt if one were to break.[end if]".

To say ShortDesc of (C - a fake nails):
	say "large pink fake nails". 

To decide which number is the damage improvement of (W - a fake nails):
	if W is blessed, decide on 3;
	decide on 0.

To compute attack of (W - a fake nails) at (M - a monster):
	say "You slash at the [M] with your [W]!".

Definition: a fake nails (called C) is removable: [Some clothing can never be removed, even by monsters.]
	decide no.

Definition: a fake nails (called C) is too boring:
	decide no.

To decide which number is the initial outrage of (C - a fake nails):
	if C is cursed, decide on 10;
	decide on 5.

To decide which number is the bimbo-influence of (C - a fake nails):
	let B be 1;
	if C is cursed, increase B by 1;
	decide on B.

To decide which number is the strength-influence of (C - a fake nails):
	let B be -1;
	increase B by the magic-modifier of C;
	decide on B.

To decide which number is the dexterity-influence of (C - a fake nails):
	let B be -1;
	increase B by the magic-modifier of C;
	decide on B.

To decide which number is the delicateness-influence of (C - a fake nails):
	let B be 0;
	if C is cursed, increase B by 4;
	increase B by 1;
	decide on B.

To set up fake nails:
	do nothing.

Check taking off fake nails:
	say "[if item described is cursed]It[otherwise]It's not a magic curse keeping these melded with your real nails, it just[end if] seems like they are permanently glued on!" instead.

Definition: a fake nails (called C) is removable:
	decide no.

This is the fake nails prevent hand use rule:
	if there are worn cursed fake nails:
		if manual hands attempt is 1, say "[variable custom style]I can't do that without risking breaking a nail![roman type][line break]";
		rule fails.
The fake nails prevent hand use rule is listed in the hands restriction rules.

This is the fake nails prevent finger use rule:
	if there are worn cursed fake nails or there are worn bland fake nails:
		if manual hands attempt is 1, say "[variable custom style]I can't do that without risking breaking a nail![roman type][line break]";
		rule fails.
The fake nails prevent hand use rule is listed in the manual dexterity restriction rules.


Fake Nails ends here.

