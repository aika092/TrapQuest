Doom Stuff by Collectibles begins here.

reception bell is a collectible. The printed name of reception bell is "[TQlink of item described]reception bell[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of reception bell is "rbe". Understand "bell" as reception bell.

Figure of reception bell is the file "Items/Collectibles/bell1.png".

To decide which figure-name is the examine-image of (B - reception bell):
	decide on figure of reception bell.

To say ExamineDesc of (C - reception bell):
	say "The bell from the reception desk.".

Report taking reception bell:
	if doom counter is 0:
		say "You feel a sudden sense of foreboding. Maybe you should have left that alone.";
		now doom counter is 1.

To say ShortDesc of (C - reception bell):
	say "bell".

Definition: reception bell is ingredient: decide no.
Definition: reception bell is immune to change: decide yes.
Definition: reception bell is bell themed: decide yes.

To decide which number is the bartering value of (T - reception bell) for (M - hellhound):
	decide on 5.
To say MonsterOfferAcceptFlav of (M - hellhound) to (T - reception bell):
	say "[BigNameDesc of M] seems to like the sound it makes, and turns [his of M] attention fully onto [his of M] new toy.".
To decide which number is the bartering value of (T - reception bell) for (M - shopkeeper):
	decide on 2.
To say MonsterOfferAcceptFlav of (M - shopkeeper) to (T - reception bell):
	say "[speech style of M]'Hmm, yes, I think I could find a use for this.'[roman type][line break]".
To say MonsterOfferRejectFlav of (M - mechanic) to (T - reception bell):
	say "[speech style of M]'We don't use those here any more.'[roman type][line break]".

black candle is a collectible. The printed name of black candle is "[TQlink of item described]black candle[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of black candle is "bc".

Figure of black candle is the file "Items/Collectibles/candle1.png".

To decide which figure-name is the examine-image of (B - black candle):
	decide on figure of black candle.

To say ExamineDesc of (C - black candle):
	say "A black candle.".

Report taking black candle:
	if doom counter is 0:
		say "You feel a sudden sense of foreboding. Maybe you should have left that alone.";
		now doom counter is 1.

To say ShortDesc of (C - black candle):
	say "black candle".

Definition: black candle is ingredient: decide no.
Definition: black candle is immune to change: decide yes.
Definition: black candle is candle themed: decide yes.

To decide which number is the bartering value of (T - black candle) for (M - a gladiator):
	decide on 3.
To say MonsterOfferAcceptFlav of (M - a gladiator) to (T - black candle):
	say "[speech style of M]'Ah yes, this will be useful for a certain... ritual.'[roman type][line break]".
To decide which number is the bartering value of (T - black candle) for (M - dominatrix):
	decide on 2.
To say MonsterOfferAcceptFlav of (M - dominatrix) to (T - black candle):
	say "[speech style of M]'Oh, I've been running low on candles for wax play. I'll take it!'[roman type][line break]".
To decide which number is the bartering value of (T - black candle) for (M - vampiress):
	decide on 4.
To say MonsterOfferAcceptFlav of (M - vampiress) to (T - black candle):
	say "[speech style of M]'Ah yes, this looks beautiful. I'll put it right next to my coff... I mean, my bed.'[roman type][line break]".

doom notes is a collectible. The printed name of doom notes is "[TQlink of item described]doom notes[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of doom notes is "dmn".
To decide which figure-name is the examine-image of (B - doom notes):
	decide on figure of recipe.

To say ExamineDesc of (C - doom notes):
	say "The witch's notes on the current threat. 'First you will need a bell. Any sort will do, even a really small one. Next you'll need a book, but not just any one. You'll probably need one of the books the cult uses, which will be in the mansion. Then you'll need a candle, the sort that might be used in dark rituals. I suspect one is in the dungeon. Then, take all three items to the dark altar past the mansion and read this incantation (the parchment then trails off into some language you don't know and hope you'll be able to pronounce).'".

To say ShortDesc of (C - doom notes):
	say "doom notes".

Definition: doom notes is immune to change: decide yes.
Definition: doom notes is ingredient: decide no.

To decide which number is the bartering value of (T - doom notes) for (M - an acolyte):
	if M is not intelligent, decide on 0;
	if doomed < 5, decide on 10;
	decide on 0.
To say MonsterOfferAcceptFlav of (M - an acolyte) to (T - doom notes):
	say "[speech style of M]'HAHA! YES! Without this, the heathens have no chance to prevent the return of [Azathot]! You have done a great thing here today.'[roman type][line break]".

Doom Stuff ends here.
