Playing Cards by Collectibles begins here.


pack of playing cards is a collectible. pack of playing cards is in Dungeon07. The printed name of pack of playing cards is "[TQlink of item described]pack of playing cards[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of pack of playing cards is "pc".
Figure of playing cards is the file "Items/Collectibles/playingcards1.png".

To decide which figure-name is the examine-image of (C - pack of playing cards):
	decide on figure of playing cards.

To say ExamineDesc of (P - a pack of playing cards):
	say "[if P is not held and P is in Dungeon07]A pack of playing cards is spread across the table, ready for a game to be played. Each of the cards has a photo of a naked woman on it[otherwise if born to lose tattoo is worn]The pack of nude lady playing cards you took from the poker table. Half of them are missing, but you notice that the queen of hearts is still there[otherwise]The pack of nude lady playing cards you took from the poker table[end if].".

To decide which number is the outrage of (C - pack of playing cards):
	decide on 5.

To decide which number is the crafting key of (C - pack of playing cards):
	decide on 31.

Definition: pack of playing cards is immune to change: decide yes.

To say ShortDesc of (C - pack of playing cards):
	say "pack of playing cards".

Report taking pack of playing cards when the player is in Dungeon07:
	say "You collect up the cards. ";
	compute poker table hypno.

To compute poker table hypno:
	if diaper quest is 0 and hypno-trigger-pussy is 0 and (the player is female or tg fetish > 0):
		now hypno-trigger-pussy is 1;
		say "Your eyes continuously drawn to the drawings of the lewdly exposed vaginas that circle the table. As your gaze shifts around the table, the pussies flick in and out of your peripheral vision. You feel almost entranced by the way they're so... daringly on display, open and inviting! The words 'pussy' and 'cunt' consume your inner thoughts...".


Part - Poker Table

poker table is a thing. poker table is not portable. poker table is in Dungeon07. The printed name of poker table is "[TQlink of item described]poker table[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of poker table is "pkt".

Figure of tq poker table is the file "Env/Dungeon/pokertable1.png".

To decide which figure-name is the examine-image of (C - poker table):
	if diaper quest is 0, decide on figure of tq poker table;
	decide on figure of no-image-yet.

To say ExamineDesc of (C - poker table):
	say "[if diaper quest is 0]A round wooden table split into four quarters by a pattern of womanly legs wearing fishnets. At the centre of the table their spread, exposed pussies are explicitly drawn[otherwise]A round wooden table with green felt[end if]. [if pack of cards is not held and pack of cards is in Dungeon07][ExamineDesc of pack of playing cards][end if]".



Playing Cards ends here.

