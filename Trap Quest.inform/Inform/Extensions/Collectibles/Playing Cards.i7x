Playing Cards by Collectibles begins here.


pack of playing cards is a collectible. pack of playing cards is in Dungeon07. The printed name of pack of playing cards is "[TQlink of item described]pack of playing cards[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of pack of playing cards is "pc". The description of pack of playing cards is "[if item described is not held and item described is in Dungeon07]An ordinary pack of playing cards is sprawled across the table, as if some kind of game was in the middle of being played. You wouldn't want to interrupt their game, would you?[otherwise]The pack of playing cards you took from the poker table.[end if]".

To decide which number is the crafting key of (C - pack of playing cards):
	decide on 31.

Definition: pack of playing cards (called I) is immune to change:
	decide yes.

To say ShortDesc of (C - pack of playing cards):
	say "pack of playing cards".

Report taking pack of playing cards:
	if diaper quest is 0 and hypno-trigger-pussy is 0 and (the player is female or tg fetish is 1) and the player is a may 2018 top donator:
		now hypno-trigger-pussy is 1;
		say "As you collect up the cards, you find your eyes continuously drawn to the drawings of the lewdly exposed vaginas that circle the table. As your gaze shifts around the table, the pussies flick in and out of your peripheral vision. You feel almost entranced by the way that they're so... daringly on display, open and inviting! The words 'pussy' and 'cunt' consume your inner thoughts...".
	
	
Part - Poker Table

poker table is a thing. poker table is not portable. poker table is in Dungeon07. The printed name of poker table is "[TQlink of item described]poker table[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of poker table is "pkt".

The description of poker table is "[PokerTableDesc]".

Figure of tq poker table is the file "Env/Dungeon/pokertable1.png".

To say PokerTableDesc:
	if images visible is 1:
		if diaper quest is 0, display figure of tq poker table;
	say "[if diaper quest is 0]A round wooden table split into four quarters by a pattern of womanly legs wearing fishnets. At the centre of the table their spread, exposed pussies are explicitly drawn[otherwise]A round wooden table with green felt[end if]. [if pack of cards is not held and pack of cards is in Dungeon07][description of pack of playing cards][end if]".

Playing Cards ends here.

