Swimming Pool by Objects begins here.


The swimming-pool is a water-body-scenery. the swimming-pool is not portable. The printed name of swimming-pool is "[TQlink of item described]swimming pool[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of swimming-pool is "swp". swimming-pool is in School20. Understand "swimming", "pool", "swimming pool" as swimming-pool.

To decide which figure-name is the examine-image of (C - swimming-pool):
	if diaper quest is 0, decide on Figure of school swimming pool cum;
	decide on Figure of school swimming pool.

To say ExamineDesc of (S - swimming-pool):
	if diaper quest is 0, say "This swimming pool isn't full of water, but instead strong-smelling warm [semen].[line break][variable custom style][if the semen taste addiction of the player < 10 and the semen addiction of the player < 10]What the FUCK is this place?![otherwise]That's... impressive...[end if][roman type][line break]";
	otherwise say "This swimming pool is complete with diving board and that familiar chlorine smell.".

Check showering water-body when swimming-pool is in the location of the player:
	if auto is 0 and diaper quest is 0:
		say "That's not full of water, but [semen]. Are you sure? ";
		unless the player is bimbo consenting, do nothing instead.

To say ShortDesc of (S - swimming-pool):
	say "swimming pool".

To say MediumDesc of (S - swimming-pool):
	say "swimming pool[if diaper quest is 0] full of [semen][end if]".

To compute showering (S - swimming-pool):
	if diaper quest is 0:
		say "The [semen] gets absolutely everywhere! By the time you get out, you're soaked from head to toe in slimy [semen].";
		compute cum pool coating;
		compute cum pool face coating;
		if the player is naked, cutshow figure of bukkake door cutscene 1 for hair;
		if the semen addiction of the player < 10, say "Your body can't help but become more accustomed to the sensation of being covered in [semen].";
		SemenAddictUp 1.


To compute cum pool coating:
	now the semen coating of thighs is 10;
	if bukkake fetish is 1:
		now the semen coating of breasts is 10;
		now the semen coating of belly is 10;
		repeat with C running through worn fluid vulnerable clothing:
			unless C is headgear, now the semen-soak of C is the soak-limit of C.

To compute cum pool face coating:
	if bukkake fetish is 1:
		now the semen coating of face is 10;
		now the semen coating of hair is the largeness of hair;
		repeat with C running through worn fluid vulnerable headgear:
			now the semen-soak of C is the soak-limit of C.



Swimming Pool ends here.
