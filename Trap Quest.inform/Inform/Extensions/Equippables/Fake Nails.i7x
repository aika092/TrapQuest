Fake Nails by Equippables begins here.

fake-nails is an equippable. fake-nails is slap ready. The printed name of fake-nails is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if]set of fake nails[clothing-title-after]". The text-shortcut of fake-nails is "fn". fake-nails is unique. Understand "set", "set of", "fake", "nails" as fake-nails. fake-nails is plastic.

Figure of fake-nails is the file "Items/Accessories/Equippables/fakenails1.png".

To decide which figure-name is the clothing-image of (C - fake-nails):
	decide on figure of fake-nails.

To say ClothingDesc of (C - fake-nails):
	say "A set of large pink fake nails. [if C is cursed]You find yourself constantly distracted, worrying that you will accidentally break a nail.[otherwise if C is blessed]You are fully confident that your blessed nails are magically reinforced and impossible to break.[otherwise]You find yourself more than a bit distracted by them as you anticipate that it might hurt if one were to break.[end if]".

To say ShortDesc of (C - fake-nails):
	say "fake nails".

To say MediumDesc of (C - fake-nails):
	say "large pink fake nails".

To decide which number is the damage improvement of (W - fake-nails):
	if W is blessed, decide on 3;
	decide on 0.

To compute attack of (W - fake-nails) at (M - a monster):
	say "You slash at [NameDesc of M] with your [W]!".

Definition: fake-nails is too boring: decide no.
Definition: fake-nails is pink themed: decide yes.

To decide which number is the initial outrage of (C - fake-nails):
	if C is cursed, decide on 6;
	decide on 4.

To decide which number is the bimbo-influence of (C - fake-nails):
	let B be 1;
	if C is cursed, increase B by 1;
	decide on B.

To decide which number is the strength-influence of (C - fake-nails):
	let B be -1;
	increase B by the magic-modifier of C;
	decide on B.

To decide which number is the dexterity-influence of (C - fake-nails):
	let B be -1;
	increase B by the magic-modifier of C;
	decide on B.

To decide which number is the delicateness-influence of (C - fake-nails):
	let B be 0;
	if C is cursed, increase B by 4;
	increase B by 1;
	decide on B.

To set up fake-nails:
	do nothing.

Check taking off fake-nails:
	say "[if item described is cursed]It[otherwise]It's not a magic curse keeping these melded with your real nails, it just[end if] seems like they are permanently glued on!" instead.

Definition: fake-nails is removable: decide no.

This is the fake nails prevent hand use rule:
	if fake-nails is worn and fake-nails is not blessed:
		if manual hands attempt is 1, say "[variable custom style]I can't do that without risking breaking a nail![roman type][line break]";
		rule fails.
The fake nails prevent hand use rule is listed in the manual dexterity restriction rules.


Fake Nails ends here.

