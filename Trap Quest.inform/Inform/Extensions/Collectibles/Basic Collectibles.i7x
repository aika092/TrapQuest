Basic Collectibles by Collectibles begins here.

Part - Chess Piece

chess piece is a collectible. The printed name of chess piece is "[TQlink of item described]chess piece[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of chess piece is "cpic".

Figure of chess piece is the file "Items/Collectibles/chesspiece1.png".

To decide which figure-name is the examine-image of (C - chess piece):
	decide on figure of chess piece.

To say ExamineDesc of (C - chess piece):
	say "The white king piece you kept after your victory against [NameDesc of chess-opponent of chess-lesson].".

Definition: chess piece is immune to change: decide yes.

To say ShortDesc of (C - chess piece):
	say "chess piece".

Part - Ectoplasm

[Ectoplasm can be applied to clothing or (maybe) applied to implants with artificial enhancements enabled.]

An ectoplasm is a kind of collectible. The printed name of ectoplasm is "[TQlink of item described]wad of slime[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of ectoplasm is "ect". There are 5 ectoplasms. Understand "ecto", "plasm", "slime", "ectoplasm", "wad" as ectoplasm.

Figure of ectoplasm is the file "Items/Collectibles/ectoplasm1.jpg".
To decide which figure-name is the examine-image of (E - an ectoplasm):
	decide on figure of ectoplasm.

To say ExamineDesc of (B - an ectoplasm):
	say "A faintly glowing wad of slimy ectoplasm.".

To decide which number is the crafting key of (C - an ectoplasm):
	decide on 38.
To decide which number is the bartering value of (T - an ectoplasm) for (M - a witch):
	decide on 3.

To decide which number is the bartering value of (T - an ectoplasm) for (M - an aeromancer):
	decide on 5.

To decide which number is the bartering value of (T - an ectoplasm) for (M - a fairy):
	decide on 2.

To oil (C - a clothing) with (S - an ectoplasm):
	say "It seems more resilient, but... in a bad way?";
	destroy S;
	now the magic-type of C is possession.

Part - Infernal Gem

infernal gem is a collectible. The printed name of infernal gem is "[TQlink of item described]infernal gem[shortcut-desc][TQxlink of item described][verb-desc of item described]". Figure of infernal gem is the file "Items/Collectibles/gem1.jpg".

To decide which figure-name is the examine-image of (C - infernal gem):
	decide on figure of infernal gem.
To say ExamineDesc of (B - infernal gem):
	say "A powerful red gem obtained from the necklace of a demoness. It's not valuable or wearable but it clearly contains great power.".
The text-shortcut of infernal gem is "ig".

To say ShortDesc of (C - infernal gem):
	say "red gem".
To say MediumDesc of (C - infernal gem):
	say "magic red gem".

Definition: infernal gem is demonic: decide yes.
Definition: infernal gem is gem themed: decide yes.

To decide which number is the crafting key of (C - infernal gem):
	decide on 45.

To decide which number is the bartering value of (T - infernal gem) for (M - a demoness):
	decide on 4.

To decide which number is the bartering value of (T - infernal gem) for (M - a mechanic):
	decide on 5.

To say MonsterOfferAcceptFlav of (M - a mechanic) to (T - infernal gem):
	say "[speech style of M]'[one of]Holy shit! I'll take the fucking shit out of that, mate!'[or]Haha, yes! You always come through for me!'[stopping][roman type]".

To say MonsterTakeFlav of (M - a mechanic) for (T - infernal gem):
	say "[BigNameDesc of M] takes the [T], crushing it into a sparkling powder and snorting it up [his of M] nose".[Just like coke!]

To say OfferThanksFlav of (M - a mechanic) for (T - infernal gem):
	if the xavier-power of M < 3:
		say "[speech style of M]'[one of]Phew! I feel great! [or]WOOO! Fuck yeah! [at random]I won't forget this!'[roman type][line break]";
	otherwise if the xavier-power of M < 4:
		say "[speech style of M]'Yeah! I feel POWERFUL now! Hahaha! In fact, I'm actually feeling generous!'[roman type]";
	otherwise:
		say "[BigNameDesc of M] crushes the [T] into a sparkling powder and knocks it back.[line break][speech style of M]Yeah... YEAH! I can feel it now! The POWER running through my veins! Yes! Behold my true form, unleashed again upon this MORTAL PLANE!'[roman type][line break]".

To compute resolution of (M - a mechanic) taking (T - infernal gem):
	if M is unfriendly, FavourUp M by the bartering value of T for M;
	otherwise FavourUp M by (the bartering value of T for M) / 2;
	say OfferThanksFlav of M for T;
	say MonsterTakeFlav of M to T;
	XavierUp M by 1;
	compute offer reward of M for T;
	bore M.

To compute offer reward of (M - a mechanic) for (T - infernal gem):
	if M is in the location of the player:
		if the xavier-power of M is 4:
			compute xavier reward of M;
		otherwise:
			say "[BigNameDesc of M] looks... more powerful somehow? [big he of M] seems to have lost interest in you.";
			DifficultyUp M by a random number between 1 and 2.

To decide which number is the bartering value of (T - infernal gem) for (M - a shopkeeper):
	decide on 2.

Part - Mechanical Joint

mechanical joint is a collectible. The printed name of mechanical joint is "[TQlink of item described]mechanical joint[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of mechanical joint is "mj". Figure of mechanical joint is the file "Items/Collectibles/joint1.png".

To decide which figure-name is the examine-image of (C - mechanical joint):
	decide on figure of mechanical joint.
To say ExamineDesc of (B - mechanical joint):
	say "A defeated mannequin's elbow[if saved-flat-intelligence > 15]. It was clearly controlled from the centre of the torso via a complex system of gears and cables[end if].".
To decide which number is the crafting key of (C - mechanical joint):
	decide on 48.
To decide which number is the bartering value of (T - mechanical joint) for (M - a mechanic):
	decide on 3.
To say ShortDesc of (C - mechanical joint):
	say "mechanical joint".
To compute banish drop of (C - mechanical joint) from (M - a monster):
	if C is off-stage:
		now C is in the location of the player;
		say "You manage to salvage a working [C].";
		compute autotaking C.

Part - Metal Disc

metal-disc is a collectible. The printed name of metal-disc is "[TQlink of item described]metal disc[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of metal-disc is "mdi". Figure of metal-disc is the file "Items/Collectibles/disc1.png". Understand "metal", "disc" as metal-disc.

To decide which figure-name is the examine-image of (C - metal-disc):
	decide on figure of metal-disc.

To say ExamineDesc of (B - metal-disc):
	say "A cold, solid bronze coloured metal-disc from the belt of a defeated gladiator.".

To say ShortDesc of (C - metal-disc):
	say "metal disc".

To decide which number is the crafting key of (C - metal-disc):
	decide on 47.
To decide which number is the bartering value of (T - metal-disc) for (M - a royal guard):
	decide on 2.
To decide which number is the bartering value of (T - metal-disc) for (M - a mechanic):
	decide on 3.
To decide which number is the bartering value of (T - metal-disc) for (M - a shopkeeper):
	decide on 1.

Part - Piece of Rubber

piece-of-rubber is a collectible. The printed name of piece-of-rubber is "[TQlink of item described]piece of pink rubber[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of piece-of-rubber is "ru". Understand "piece", "of", "pink", "rubber" as piece-of-rubber. Figure of rubber is the file "Items/Collectibles/rubber1.png".

To decide which figure-name is the examine-image of (C - piece-of-rubber):
	decide on figure of rubber.

To say ExamineDesc of (B - piece-of-rubber):
	say "[if the bimbo of the player > 6]No, not that kind of rubber, you dirty minded slut. [end if]This item of rubber is simply a large stretchy piece of pink coloured latex with no clear use.".

To say ShortDesc of (C - piece-of-rubber):
	say "piece of rubber".

To decide which number is the crafting key of (C - piece-of-rubber):
	decide on 44.

To decide which number is the bartering value of (T - piece-of-rubber) for (M - a sex doll):
	decide on 2.
To decide which number is the bartering value of (T - piece-of-rubber) for (M - an aeromancer):
	decide on 3.

Definition: piece-of-rubber is inflation themed: decide yes.
Definition: piece-of-rubber is pink themed: decide yes.

To compute banish drop of (C - piece-of-rubber) from (M - a sex doll):
	if C is off-stage:
		now C is in the location of the player;
		say "All that remains of its latex body is a single piece of rubber.";
		increase the loot dropped of M by 1;
		compute autotaking C.

Part - Pink Hair

pink-hair is a collectible. The printed name of pink-hair is "[TQlink of item described]strand of pink hair[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of pink-hair is "ph". Understand "strand", "of pink", "pink hair" as pink-hair. Figure of pink-hair is the file "Items/Collectibles/hair1.png".

To decide which figure-name is the examine-image of (C - pink-hair):
	decide on figure of pink-hair.

To say ExamineDesc of (B - pink-hair):
	say "A strand of hair from a fairy. It is surprisingly thick and very pink. It probably contains some magic power.".

To decide which number is the crafting key of (C - pink-hair):
	decide on 17.

To decide which number is the bartering value of (T - pink-hair) for (M - a mannequin):
	decide on 4.

To say ShortDesc of (C - pink-hair):
	say "bunch of pink hair".

Definition: pink-hair is pink themed: decide yes.

Part - Poker Cards

pack of playing cards is a collectible. pack of playing cards is in Dungeon07. The printed name of pack of playing cards is "[TQlink of item described]pack of playing cards[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of pack of playing cards is "pc".
Figure of playing cards is the file "Items/Collectibles/playingcards1.jpg".

To decide which figure-name is the examine-image of (C - pack of playing cards):
	decide on figure of playing cards.

To say ExamineDesc of (P - a pack of playing cards):
	say "[if P is not held and P is in Dungeon07]A pack of playing cards sitting on the table, ready for a game to be played. Each of the cards has a different cartoon face on it[otherwise if born to lose tattoo is worn]The pack of playing cards you took from the poker table. Half of them are missing, but you notice that the queen of hearts is still there[otherwise]The pack of playing cards you took from the poker table. Each of the cards has a different cartoon face on it[end if].".

To decide which number is the outrage of (C - pack of playing cards):
	decide on 5.

To decide which number is the crafting key of (C - pack of playing cards):
	decide on 31.

Definition: pack of playing cards is immune to change: decide yes.
Definition: pack of playing cards is party themed: decide yes.

To say ShortDesc of (C - pack of playing cards):
	say "pack of playing cards".

Report taking pack of playing cards when the player is in Dungeon07:
	say "You collect up the cards. ";
	compute poker table hypno.

To compute poker table hypno:
	if diaper quest is 0 and hypno-trigger-pussy is 0 and (the player is possessing a vagina or tg fetish > 0):
		now hypno-trigger-pussy is 1;
		say "Your eyes continuously drawn to the drawings of the lewdly exposed vaginas that circle the table. As your gaze shifts around the table, the pussies flick in and out of your peripheral vision. You feel almost entranced by the way they're so... daringly on display, open and inviting! The words [second custom style]'pussy'[roman type] and [second custom style]'cunt'[roman type] consume your inner thoughts...".

Section - Poker Table

poker table is a thing. poker table is not portable. poker table is in Dungeon07. The printed name of poker table is "[TQlink of item described]poker table[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of poker table is "pkt".

Figure of tq poker table is the file "Env/Dungeon/pokertable1.png".

To decide which figure-name is the examine-image of (C - poker table):
	if diaper quest is 0, decide on figure of tq poker table;
	decide on figure of no-image-yet.

To say ExamineDesc of (C - poker table):
	say "[if diaper quest is 0]A round wooden table split into four quarters by a pattern of womanly legs wearing fishnets. At the centre of the table their spread, exposed pussies are explicitly drawn[otherwise]A round wooden table with green felt[end if]. [if pack of cards is not held and pack of cards is in Dungeon07][ExamineDesc of pack of playing cards][end if]".

Part - Royal Sigil

royal sigil is a collectible. The printed name of royal sigil is "[TQlink of item described]royal sigil[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of royal sigil is "ro". Figure of royal sigil is the file "Items/Collectibles/crest1.png".

To decide which figure-name is the examine-image of (C - royal sigil):
	decide on figure of royal sigil.

To say ExamineDesc of (B - royal sigil):
	say "This metal object carries the crest of the royal family of the kingdom.".

To say ShortDesc of (C - royal sigil):
	say "royal sigil".

To decide which number is the crafting key of (C - royal sigil):
	decide on 50.
To decide which number is the bartering value of (T - royal sigil) for (M - a shopkeeper):
	decide on 3.

To decide which number is the bartering value of (T - royal sigil) for (M - a gladiator):
	decide on 1.

To decide which number is the bartering value of (T - royal sigil) for (M - a royal guard):
	decide on 4.

Definition: royal sigil is royalty themed: decide yes.
Definition: royal sigil is grey themed: decide yes.

Part - Soul Gem

soul gem is a collectible. The printed name of soul gem is "[TQlink of item described]soul gem[shortcut-desc][TQxlink of item described][verb-desc of item described]". [Figure of soul gem is the file "Items/Collectibles/gem1.png".]

Definition: soul gem is demonic: decide yes.

To decide which figure-name is the examine-image of (C - soul gem):
	decide on figure of infernal gem.

To say ExamineDesc of (B - soul gem):
	say "A glittering blue gem containing a soul. Perhaps you could take it to someone well versed in magic?".
The text-shortcut of soul gem is "sg".

To say ShortDesc of (C - soul gem):
	say "blue gem".
To say MediumDesc of (C - soul gem):
	say "glittering blue gem".

To decide which number is the bartering value of (T - soul gem) for (M - a demoness):
	decide on 7.

To decide which number is the bartering value of (T - soul gem) for (M - mechanic):
	decide on 10.

To say MonsterOfferAcceptFlav of (M - a mechanic) to (T - soul gem):
	say "[speech style of M]'[one of]Holy shit! Is that pure?'[or]Where the FUCK did you find another one of those?'[stopping][roman type]".

To say MonsterTakeFlav of (M - a mechanic) for (T - soul gem):
	say "[BigNameDesc of M] takes the [T], crushing it into a sparkling powder and snorts it up [his of M] nose".

To say OfferThanksFlav of (M - a mechanic) for (T - soul gem):
	if the xavier-power of M < 3:
		say "[speech style of M]'[one of]Phew! I feel great! [or]WOOO! Fuck yeah! [at random]I won't forget this!'[roman type][line break]";
	otherwise if the xavier-power of M < 4:
		say "[speech style of M]'Yeah! I feel POWERFUL now! Hahaha! In fact, I'm actually feeling generous!'[roman type]";
	otherwise:
		say "[BigNameDesc of M] crushes the [T] into a sparkling powder and knocks it back.[line break][speech style of M]Yeah... YEAH! I can feel it now! The POWER running through my veins! Yes! Behold my true form, unleashed again upon this MORTAL PLANE!'[roman type][line break]".

To compute resolution of (M - a mechanic) taking (T - soul gem):
	FavourUp M by (the bartering value of T for M) / 2;
	say OfferThanksFlav of M for T;
	say MonsterTakeFlav of M to T;
	XavierUp M by 3;
	compute offer reward of M for T;
	bore M.

To compute offer reward of (M - witch) for (T - soul gem):
	say "You feel your soul re-enter your body!";
	now the player is souled;
	if the player-class is succubus:
		now the humiliation of the player is the souled-humiliation of the player.

To say MonsterOfferAcceptFlav of (M - witch) to (T - soul gem):
	say "[speech style of M]'So you want me to put this back in, huh? Fine. It's not like I have anything better to do.'[roman type]".

To say MonsterTakeFlav of (M - witch) for (T - soul gem):
	say "[BigNameDesc of M] takes the [printed name of T], performing a short chant as [he of M] holds it against your chest. The gem dissolves into tiny motes of light, which disappear into your skin.".

To say OfferThanksFlav of (M - witch) for (T - soul gem):
	say "[speech style of M]'There. Now try not to lose it again.'[roman type]".

To decide which number is the bartering value of (T - soul gem) for (M - witch):
	if M is unfriendly, decide on -10;
	decide on 3.

To compute resolution of (M - witch) taking (T - soul gem):
	if M is unfriendly, FavourUp M by the bartering value of T for M;
	otherwise FavourUp M by (the bartering value of T for M) / 2;
	say OfferThanksFlav of M for T;
	XavierUp M by 3;
	compute offer reward of M for T;
	bore M.

To say MonsterOfferRejectFlav of (M - witch) to (T - soul gem):
	if M is unfriendly, say "[BigNameDesc of M] scoffs.[line break][speech style of M]'Did you really believe I would help you?[roman type][line break]";
	otherwise say "[BigNameDesc of M] completely ignores the [T].".

Part - Wasp Wing

wasp wing is a collectible. The printed name of wasp wing is "[TQlink of item described]wasp wing[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of wasp wing is "ww". Figure of wasp wing is the file "Items/Collectibles/wing1.png".

To decide which figure-name is the examine-image of (C - wasp wing):
	decide on figure of wasp wing.

To say ExamineDesc of (B - wasp wing):
	say "A crumpled, severed wing from a defeated giant wasp. The material is translucent, extremely thin and delicate.".

To decide which number is the crafting key of (C - wasp wing):
	decide on 16.

To say ShortDesc of (C - wasp wing):
	say "wasp wing".

To decide which number is the bartering value of (T - wasp wing) for (M - a fairy):
	decide on 2.
To decide which number is the bartering value of (T - wasp wing) for (M - Icarus):
	decide on 2.

Definition: wasp wing is inflation themed: decide yes.

To compute banish drop of (C - wasp wing) from (M - a giant wasp):
	if C is off-stage:
		now C is in the location of the player;
		say "[one of]On closer inspection, you notice that[or]Once again,[stopping] a [C] has been left behind.";
		increase the loot dropped of M by 1;
		compute autotaking C.

Basic Collectibles ends here.
