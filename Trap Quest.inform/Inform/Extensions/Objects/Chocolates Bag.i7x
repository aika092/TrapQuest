Chocolates Bag by Objects begins here.

chocolates bag is a thing. chocolates bag is not portable. The printed name of chocolates bag is "[TQlink of item described]chocolates bag[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of chocolates bag is "chb".
To say ExamineDesc of (C - chocolates bag):
	say "A bag full of chocolates.".
To decide which figure-name is the examine-image of (C - chocolates bag):
	decide on figure of chocolates bag.

Check TQEating chocolates bag:
	say "It's tightly tied shut and you can't open it!" instead.

Check taking chocolates bag:
	say "It's tightly tied shut and you can't open it!  It also seems to be completely immobile, as if it's been glued to the floor!" instead.

Definition: chocolates bag is TQEdible:	decide yes.

chocolate-announced is a number that varies.

Figure of chocolates bag is the file "Env/MultiFloor/DQChocolates1.png".
Figure of chocolates cutscene 1 is the file "Special/Cutscene/DQChocolates1.png".
Figure of chocolates cutscene 2 is the file "Special/Cutscene/DQChocolates2.png".

A time based rule (this is the chocolates stalking rule):
	if christmas content is 1:
		while chocolates bag is not regional:
			now chocolates bag is in a random placed room;
			if debugmode is 1, say "now chocolates bag is in [location of chocolates bag].";
			if chocolates bag is in the location of the player, remove chocolates bag from play; [It can't just appear on top of the player]
		if the player is prone and chocolates bag is in the location of the player and there is a worn christmas dress and the player is able to eat:
			if chocolate-announced is 0:
				say "The [chocolates bag] on the ground suddenly springs into the air as if by magic!  ";
				now chocolate-announced is 1;
				if there is worn perceived messed knickers, cutshow figure of chocolates cutscene 2 for chocolates bag;
				otherwise cutshow figure of chocolates cutscene 1 for chocolates bag;
			say "Several chocolate buttons soar out of the bag and fly directly into your mouth! You [one of]are forced to quickly chomp and swallow them all down to prevent yourself from choking![or]gulp them all down obediently.[stopping]";
			StomachFoodUp 2;
		otherwise if chocolate-announced is 1:
			if chocolates bag is in the location of the player:
				say "The magic seems to suddenly disappear from the [chocolates bag] and it drops to the ground with a thud.";
			now chocolate-announced is 0.

Report going:
	if the player is prone and chocolate-announced is 1 and chocolates bag is regional:
		now chocolates bag is in the location of the player;
		say "The [chocolates bag] follows you into the [location of the player]!".

Chocolates Bag ends here.

