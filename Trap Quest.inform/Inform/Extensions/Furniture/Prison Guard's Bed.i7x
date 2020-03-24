Prison Guard's Bed by Furniture begins here.

prison guard's bed is a kind of furniture. 1 prison guard's bed is in Dungeon06. The printed name of prison guard's bed is "[TQlink of item described]guard's bed[TQxlink of item described][shortcut-desc][verb-desc of item described]". prison guard's bed can be in use. prison guard's bed is usually not in use. The text-shortcut of prison guard's bed is "gbe".

To say ExamineDesc of (C - prison guard's bed):
	say "The prison guard has a comfortable but bland looking double bed. You have no idea if you would get in trouble for resting on it or not[if the intelligence of the player > 7], but knowing this game, the odds aren't in your favour[end if].".

To decide which figure-name is the examine-image of (F - a prison guard's bed):
	decide on figure of hotel bed. [TODO: unique image]

To compute furniture resting on (F - prison guard's bed):
	now resting is 1;
	now F is in use;
	repeat with M running through royal guards:
		if M is friendly and M is interested, deinterest M; [This is so that they notice you are using the bed]
		now the boredom of M is 0;
	compute normal rest of F.

To compute rest ending of (F - a prison guard's bed):
	now F is not in use.

To say RestingDesc of (F - prison guard's bed):
	say "You [one of]get into the bed and [or]continue to [stopping]relax on the comfortable mattress.".

Prison Guard's Bed ends here.
