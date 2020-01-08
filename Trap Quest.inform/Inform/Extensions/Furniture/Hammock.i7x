Hammock by Furniture begins here.

a hammock is a kind of furniture. There are 3 hammocks. The printed name of hammock is "[TQlink of item described]hammock[TQxlink of item described][shortcut-desc][verb-desc of item described]". A hammock is permanent fixture. The text-shortcut of hammock is "ha".

To decide which figure-name is the examine-image of (C - a hammock):
	decide on figure of hammock.

To say ExamineDesc of (C - a hammock):
	say "A relaxing looking hammock is strung quite low between two trees.".

Figure of hammock is the file "Env/Forest/hammock1.png".

To compute furniture resting on (H - a hammock):
	if the player is upright:[if the player is upright, the hammock works differently than normal furniture]
		now resting is 1;
		compute fat burning reset;
		say "You climb onto the hammock and lie down comfortably. You sink securely into the hammock, ensuring that your rest won't be interrupted by anything that can't fly.";
		now the stance of the player is 1;
		while the fatigue of the player > 0:
			now busy is 1;
			allocate 6 seconds;
			compute extra turn;
		while the body soreness of the player > 0:
			now busy is 1;
			allocate 6 seconds;
			BodyHeal 1;
			compute extra turn;
		now busy is 0;
		if the bimbo of the player < 11, say "[first custom style]I feel so much better![roman type][line break]";
		otherwise say "[second custom style]I'm full of energy again. Yum![roman type][line break]";
		now resting is 0;
		try standing;
	otherwise:
		say "You crawl over and rest on your hands and knees, with your torso supported by the hammock.";
		compute normal rest of H.

To say RestingDesc of (F - a Hammock):
	say "You continue to rest against the hammock.";


Hammock ends here.
