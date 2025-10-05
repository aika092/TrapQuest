Basic Collectibles by Collectibles begins here.

Part - Chess Piece

chess piece is a collectible. The printed name of chess piece is "[TQlink of item described]chess piece[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of chess piece is "cpic".

Figure of chess piece is the file "Items/Collectibles/chesspiece1.png".

To decide which figure-name is the examine-image of (C - chess piece):
	decide on figure of chess piece.

To say ExamineDesc of (C - chess piece):
	say "The white king piece you kept after your victory against [NameDesc of chess-opponent of chess-lesson].".

Definition: chess piece is ingredient: decide no.
Definition: chess piece is immune to change: decide yes.

To say ShortDesc of (C - chess piece):
	say "chess piece".

Part - Fertility Idol

fertility idol is a collectible. The printed name of fertility idol is "[TQlink of item described]fertility idol[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of fertility idol is "fti". fertility idol can be fertility-cursed.

Figure of fertility idol is the file "Items/Collectibles/fertility1.png".

To decide which figure-name is the examine-image of (C - fertility idol):
	decide on figure of fertility idol.

To say ExamineDesc of (C - fertility idol):
	say "A heavy stone carving of a woman with insanely large breasts and buttocks.".

Definition: fertility idol is ingredient: decide no.
Definition: fertility idol is immune to change: decide yes.
Definition: fertility idol is pregnancy themed: decide yes.
Definition: fertility idol is boob themed: decide yes.

To say ShortDesc of (C - fertility idol):
	say "fertility idol".

Carry out taking fertility idol:
	if takingStuff is false:
		allocate 2 seconds;
		allocate arm use to the noun;
	now takingStuff is true; [The player can take several items in the same turn without penalty with "take all"]
	if the player is ready for common event TG:
		say "[BigNameDesc of woman-player]'s magic surges down from your belly to your loins. [if the player is possessing a penis]Your [player-penis] feels suddenly... absent![end if] The logical conclusion of what has just happened to you is clear, and it only takes a moment for you to check and confirm... You're no longer biologically male. You blink in shock. You now have a real, fully functional vagina and womb![line break][variable custom style]And I'm already nine months pregnant... This is insane![roman type][line break]";
		SexChange the player;
	if fertility idol is fertility-cursed:
		now fertility idol is not fertility-cursed;
		if the pregnancy of the player is 0 and pregnancy fetish is 1 and the player is possessing a vagina:
			say "[bold type]Suddenly, impossibly, your belly explodes in size, leaving you full-term pregnant![line break][variable custom style]What the fuck?! Oh... Oh my god...[roman type][line break]";
			now the pregnancy of the player is 1;
			now the womb volume of vagina is 30;
			let M be a random unseen-stranger;
			repeat with N running through alive monsters:
				if the current-errand of N is fertility-idol-errand and N is father material, now M is N;
			now the father is M;
			check for extreme pregnancies;
			check goddess eligibility;
			trigger conception-wisp-trigger;
		otherwise:
			say "[bold type]Suddenly, you feel your breasts, hips and buttocks trying to rapidly expand![roman type][line break]";
			BustUp 8;
			HipUp 2;
			AssSwell 2;
			say "You now have [HipDesc].".


Part - Ectoplasm

[Ectoplasm can be applied to clothing or (maybe) applied to implants with artificial enhancements enabled.]

An ectoplasm is a kind of collectible. The printed name of ectoplasm is "[TQlink of item described]wad of slimy ectoplasm[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of ectoplasm is "ect". There are 5 ectoplasms. Understand "ecto", "plasm", "slime", "slimy", "ectoplasm", "wad", "wad of" as ectoplasm.

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

Part - Charged slime

[Charged slime can be applied to clothes]

charged-slime is a collectible. The printed name of charged-slime is "[TQlink of item described]wad of magic slime[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of charged-slime is "wds". Understand "glow", "glowing", "slime", "magic", "wad" as charged-slime.

To decide which figure-name is the examine-image of (E - charged-slime):
	decide on figure of ectoplasm.

To say ExamineDesc of (B - an charged-slime):
	say "A brightly glowing wad of slime.".

To decide which number is the bartering value of (T - an charged-slime) for (M - a witch):
	decide on 6.

To decide which number is the bartering value of (T - an charged-slime) for (M - an aeromancer):
	decide on 8.

To decide which number is the bartering value of (T - an charged-slime) for (M - a fairy):
	decide on 4.

To oil (C - a clothing) with (S - an charged-slime):
	if C is cursable:
		say "It seems more magical, but it seems cursed too!";
		now C is sure;
		fully curse C;
	otherwise:
		say "It seems more magical!";
	destroy S;
	now the magic-type of C is wizardry.

Part - ID Cards

An id-card is a kind of collectible.

Definition: an id-card is ingredient: decide no.

mechanic-id-card is an id-card. The printed name of mechanic-id-card is "[TQlink of item described]Mechanic's ID card[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of mechanic-id-card is "midc". Understand "mechanic's", "id", "card" as mechanic-id-card.

Figure of mechanic-id-card is the file "Items/Collectibles/idcard1.png".
Figure of female mechanic-id-card is the file "Items/Collectibles/idcard2.png".
To decide which figure-name is the examine-image of (E - mechanic-id-card):
	if lady fetish is 1, decide on figure of female mechanic-id-card;
	decide on figure of mechanic-id-card.

To say ExamineDesc of (B - mechanic-id-card):
	say "The mechanic's ID card.".

demonic-id-card is an id-card. The printed name of demonic-id-card is "[TQlink of item described]fire card[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of demonic-id-card is "fc". Understand "fire", "card" as demonic-id-card.

Figure of demonic-id-card is the file "Items/Collectibles/idcard3.png".
To decide which figure-name is the examine-image of (E - demonic-id-card):
	decide on figure of demonic-id-card.

To say ExamineDesc of (B - demonic-id-card):
	say "Shaped like a playing card, the image on the front represents hellfire. Perhaps it can be used like an ID card somewhere?".

Definition: demonic-id-card is demonic: decide yes.
Definition: demonic-id-card is red themed: decide yes.
Definition: demonic-id-card is fire themed: decide yes.


Part - Infernal Gem

infernal gem is a collectible. The printed name of infernal gem is "[TQlink of item described]infernal gem[shortcut-desc][TQxlink of item described][verb-desc of item described]". Figure of infernal gem is the file "Items/Collectibles/gem1.jpg". The tradability of infernal gem is 6.

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
Definition: infernal gem is red themed: decide yes.
Definition: infernal gem is fire themed: decide yes.

To decide which number is the crafting key of (C - infernal gem):
	decide on 45.

To decide which number is the bartering value of (T - infernal gem) for (M - a demoness):
	decide on 4.

To decide which number is the bartering value of (T - infernal gem) for (M - a mechanic):
	decide on 5.

To say MonsterOfferAcceptFlav of (M - a mechanic) to (T - infernal gem):
	say "[speech style of M]'[one of]Holy shit! I'll take the fucking shit out of that, mate!'[or]Haha, yes! You always come through for me!'[stopping][roman type][line break]".

To say MonsterTakeFlav of (M - a mechanic) for (T - infernal gem):
	say "[BigNameDesc of M] takes the [T], crushing it into a sparkling powder and snorting it up [his of M] nose.";
	if the xavier-power of M < 3:
		say "[speech style of M]'[one of]Phew! I feel great[or]WOOO! Fuck yeah[at random]! I won't forget this!'";
	otherwise if the xavier-power of M < 4:
		say "[speech style of M]'Yeah! I feel POWERFUL now! Hahaha! In fact, I'm actually feeling generous!'";
	otherwise:
		say "[speech style of M]Yeah... YEAH! I can feel it now! The POWER running through my veins! Yes! Behold my true form, unleashed again upon this MORTAL PLANE!'";
	say "[roman type][line break]".

To compute final resolution of (M - a mechanic) taking (T - infernal gem):
	XavierUp M by 1;
	destroy T.

To compute offer reward of (M - a mechanic) for (T - infernal gem):
	if M is in the location of the player:
		if the xavier-power of M is 4:
			compute xavier reward of M;
		otherwise:
			say "[BigNameDesc of M] looks... more powerful somehow? [big he of M] seems to have lost interest in you.";
			SilentlyDifficultyUp M by a random number between 1 and 2.

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

To say ExamineDesc of (P - pack of playing cards):
	say "[if P is not held and P is in Dungeon07]A pack of playing cards sitting on the table, ready for a game to be played. Each of the cards has a different cartoon face on it[otherwise if born to lose tattoo is worn]The pack of playing cards you took from the poker table. Half of them are missing, but you notice that the queen of hearts is still there[otherwise]The pack of playing cards you took from the poker table. Each of the cards has a different cartoon face on it[end if].".

To decide which number is the outrage of (C - pack of playing cards):
	decide on 5.

To decide which number is the crafting key of (C - pack of playing cards):
	decide on 31.

To decide which number is the bartering value of (T - pack of playing cards) for (M - orc):
	decide on 10.

Definition: pack of playing cards is immune to change: decide yes.
Definition: pack of playing cards is party themed: decide yes.
Definition: pack of playing cards is playing card themed: decide yes.

To say ShortDesc of (C - pack of playing cards):
	say "pack of playing cards".

Report taking pack of playing cards when the player is in Dungeon07:
	say "You collect up the cards. ";
	compute poker table hypno.

Check taking pack of playing cards:
	if 23 is not listed in stolenCards and the recipe of (alchemy key of queen-of-hearts heels) is memorised:
		reset multiple choice questions;
		set numerical response 0 to "Cancel";
		if pack of playing cards is not held, set next numerical response to "Take all of the cards";
		set next numerical response to "Take the queen of hearts";
		compute multiple choice question;
		if player-numerical-response is 0, do nothing instead;
	otherwise:
		now player-numerical-response is 0;
	unless player-numerical-response is 0 or chosen numerical response matches the text "all":
		let T be queen-of-hearts;
		[if chosen numerical response matches the text "queen of hearts":]
		if pack of playing cards is not held and orc is in Dungeon07:
			if orc is not easy-steal and orc is awake:
				if orc is interested, say "[BigNameDesc of orc] is looking right at you. [big he of orc] would definitely stop you." instead;
				allocate 5 seconds;
				say "You attempt to snatch the [ShortDesc of T] from the table without [NameDesc of orc] noticing.";
				let D be (a random number between 1 and the dexterity of the player) + (a random number between 1 and the dexterity of the player);
				let MD be the steal-difficulty of orc for T;
				let S be the stealth of the player;
				if debuginfo > 0, say "[input-style]Steal attempt check: Dexterity 2d[dexterity of the player] ([D]) + Stealth ([S]) = [D + S] | [MD].5 Perfect steal difficulty / [(MD * 2) / 3].5 Partial success difficulty[roman type][line break]";
				if D + S > MD: [full success]
					compute full stealing success of T from orc;
				otherwise if D > (MD * 2) / 3: [partial success]
					compute partial stealing success of T from orc;
				otherwise:
					compute stealing fail of T from orc;
			otherwise if orc is not easy-steal and the player is getting very unlucky:
				compute sleep stealing fail of T from orc;
			otherwise:
				say "You easily take [NameDesc of T].[if orc is bride-consort][line break][variable custom style]What's yours is mine, after all...[roman type][line break]";
				now T is carried by the player;
				now the owner of T is orc;
		otherwise:
			allocate 5 seconds;
			if pack of playing cards is held, say "You search through the cards and separate out the queen of hearts.";
			otherwise say "You take the queen of hearts.";
			now T is carried by the player;
		if T is held:
			compute poker theft of T;
			if pack of playing cards is not held and the player is in Dungeon07 and orc is not in Dungeon07, compute poker table hypno;
		do nothing instead;
	if pack of playing cards is not held and the player is in Dungeon07:
		allocate 1 seconds;
		if orc is in Dungeon07:
			if orc is not interested, check perception of orc;
			if orc is interested, say "[speech style of orc]'Hey! Hands off!'[roman type][line break]It looks like [NameDesc of orc] won't let you take those while [he of orc][']s here." instead;
		otherwise if orc is alive or (orc is not permanently banished and orc is not shooed):
			if orc is alive, now orc is in Dungeon07;
			otherwise set up orc;
			say "[BigNameDesc of orc] appears in the doorway.";
			check guaranteed perception of orc;
			say "[speech style of orc]'You weren't thinking of taking my playing cards without asking, were you?'[roman type][line break][big he of orc] quickly steps over to prevent you from collecting up the playing cards.";
			do nothing instead.

To construct unique buttons for (T - pack of playing cards):
	if T is held and 23 is not listed in stolenCards and the recipe of (alchemy key of queen-of-hearts heels) is memorised and ButtonTableFull is 0:
		choose a blank row in the Table of Buttons;
		now the ButtonImage entry is examine-image of queen-of-hearts;
		now the ButtonCommand entry is "take [text-shortcut of T]";
		now the ButtonColour entry is lightModeFullGreen.



To compute poker table hypno:
	if diaper quest is 0 and hypno-trigger-pussy is 0 and (the player is possessing a vagina or tg fetish > 0):
		now hypno-trigger-pussy is 1;
		say "Your eyes continuously drawn to the drawings of the lewdly exposed vaginas that circle the table. As your gaze shifts around the table, the pussies flick in and out of your peripheral vision. You feel almost entranced by the way they're so... daringly on display, open and inviting! The words [second custom style][']pussy['][roman type] and [second custom style][']cunt['][roman type] consume your inner thoughts...".

queen-of-hearts is a collectible. The printed name of queen-of-hearts is "[TQlink of item described]queen of hearts[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of queen-of-hearts is "qoh". Understand "queen", "of hearts", "hearts" as queen-of-hearts.

To decide which figure-name is the examine-image of (C - queen-of-hearts):
	decide on Figure of PokerCard23.

To say ExamineDesc of (P - queen-of-hearts):
	say "The queen of hearts playing card you took from the poker deck.".

To decide which number is the crafting key of (C - queen-of-hearts):
	decide on 31.

[To decide which number is the bartering value of (T - queen-of-hearts) for (M - orc):
	decide on 10.]

Definition: queen-of-hearts is immune to change: decide yes.
Definition: queen-of-hearts is party themed: decide yes.
Definition: queen-of-hearts is playing card themed: decide yes.
Definition: queen-of-hearts is heart themed: decide yes.
Definition: queen-of-hearts is royalty themed: decide yes.

To say ShortDesc of (C - queen-of-hearts):
	say "queen of hearts playing card".

To compute poker theft of (C - queen-of-hearts):
	add 23 to stolenCards, if absent.


Section - Poker Table

poker table is a thing. poker table is not portable. poker table is in Dungeon07. The printed name of poker table is "[TQlink of item described]poker table[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of poker table is "pkt".

Figure of tq poker table is the file "Env/Dungeon/pokertable1.jpg".

To decide which figure-name is the examine-image of (C - poker table):
	if diaper quest is 0, decide on figure of tq poker table;
	decide on figure of no-image-yet.

To say ExamineDesc of (C - poker table):
	say "A square wooden table with green felt. [if diaper quest is 0]The felt is covered with markings for card games, some mysterious runes, and right in the middle, an illustration of the female reproductive system, but with snakes for Fallopian tubes. [end if][if pack of cards is not held and pack of cards is in Dungeon07][ExamineDesc of pack of playing cards][end if]".

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

Definition: soul gem is blue themed: decide yes.
Definition: soul gem is demonic: decide yes.

To say MonsterOfferAcceptFlav of (M - mechanic) to (T - soul gem):
	say "[speech style of M]'[one of]Holy shit! Is that pure?'[or]Where the FUCK did you find another one of those?'[stopping][roman type][line break]".

To say MonsterTakeFlav of (M - mechanic) for (T - soul gem):
	say "[BigNameDesc of M] takes the [T], crushing it into a sparkling powder and snorts it up [his of M] nose.";
	if the xavier-power of M < 3:
		say "[speech style of M]'[one of]Phew! I feel great! [or]WOOO! Fuck yeah! [at random]I won't forget this!'[roman type][line break]";
	otherwise if the xavier-power of M < 4:
		say "[speech style of M]'Yeah! I feel POWERFUL now! Hahaha! In fact, I'm actually feeling generous!'[roman type][line break]";
	otherwise:
		say "[line break][speech style of M]Yeah... YEAH! I can feel it now! The POWER running through my veins! Yes! Behold my true form, unleashed again upon this MORTAL PLANE!'[roman type][line break]".

To compute final resolution of (M - mechanic) taking (T - soul gem):
	XavierUp M by 3;
	destroy T.

To compute offer reward of (M - witch) for (T - soul gem):
	say "You feel your soul re-enter your body!";
	now the player is souled.

To say MonsterOfferAcceptFlav of (M - witch) to (T - soul gem):
	say "[speech style of M]'So you want me to put this back in, huh? Fine. It's not like I have anything better to do.'[roman type][line break]".

To say MonsterTakeFlav of (M - witch) for (T - soul gem):
	say "[BigNameDesc of M] takes the [printed name of T], performing a short chant as [he of M] holds it against your chest. The gem dissolves into tiny motes of light, which disappear into your skin.".

To say OfferThanksFlav of (M - witch) for (T - soul gem):
	say "[speech style of M]'There. Now try not to lose it again.'[roman type][line break]".

To decide which number is the bartering value of (T - soul gem) for (M - witch):
	if the player is souled or the class of the player is avatar or (the class of the player is succubus and there is a worn soulstone), decide on -99;
	if M is unfriendly, decide on -10;
	decide on 3.

To compute resolution of (M - witch) taking (T - soul gem):
	let N be the bartering value of T for M;
	if M is unfriendly, FavourUp M by N;
	otherwise FavourUp M by N / 2;
	say OfferThanksFlav of M for T;
	compute offer reward of M for T;
	bore M.

To say MonsterOfferRejectFlav of (M - witch) to (T - soul gem):
	if M is unfriendly:
		say "[BigNameDesc of M] scoffs.[line break][speech style of M]'Did you really believe I would help you?[roman type][line break]";
	otherwise:
		if the class of the player is succubus and there is a worn soulstone:
			say "[BigNameDesc of M] sighs.[line break][speech style of M]'I'm sorry, but I can't help you. Your soul can never be returned to your body as long as that stone remains in your chest. You'd need much stronger magic than I'm capable of if you want to remove it.'[roman type][line break]";
		otherwise if the class of the player is avatar:
			say "[BigNameDesc of M] snorts.[line break][speech style of M]'Sorry, but you and I both know the space is currently occupied. Kick ['][big him of male-m]['] out first.'[roman type][line break]";
		otherwise if the player is souled:
			say "[BigNameDesc of M] frowns.[line break][speech style of M]'I can't return a soul to someone who already has one. I'm not even sure how you GOT that.'[roman type][line break]";
		otherwise:
			say "[BigNameDesc of M] completely ignores the [T].";
		now M is not rejecting T.[makes sure the witch is always willing to put the gem back in even after refusing to take it beforehand.]

To compute final resolution of (M - witch) taking (T - soul gem):
	XavierUp M by 3;
	destroy T.

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


Volume - Trinkets

[A trinket can be found in containers and is tradable with one or more NPCs.]

A trinket is a kind of collectible.

Definition: a trinket (called T) is eligible: [This is expensive so we need to not call it very often]
	repeat with M running through alive monsters:
		if M is in Holding Pen, decide no;
		if the bartering value of T for M > 0, decide yes;
	decide no.

Definition: a trinket is ingredient: decide no.

To say ExamineDesc of (T - a trinket):
	say "You can't see how this will be of any use to you, but perhaps you can find someone who would appreciate it as a gift.".

The printed name of a trinket is "[TQlink of item described][ShortDesc of item described][shortcut-desc][TQxlink of item described][verb-desc of item described]".

To restock (C - a trinket):
	let B be a random off-stage eligible trinket;
	if B is trinket:
		repeat with L running through Standard Item Pen:
			if L is trinket, remove L from Standard Item Pen;
		add B to Standard Item Pen.

This is the setup starting trinket rule:
	let C be a random trinket;
	restock C.
The setup starting trinket rule is listed in the setup starting items rules.

Section - Circuitboard

circuitboard is a trinket. The text-shortcut of circuitboard is "cctb". Figure of circuitboard is the file "Items/Collectibles/Trinkets/circuitboard1.jpg".
To decide which figure-name is the examine-image of (T - circuitboard):
	decide on figure of circuitboard.
To say ShortDesc of (T - circuitboard):
	say "circuitboard".
To decide which number is the bartering value of (T - circuitboard) for (M - mechanic):
	decide on 4.
To say MonsterOfferAcceptFlav of (M - mechanic) to (T - circuitboard):
	say "[speech style of M]'Oh yes! With a bit of tweaking, I can make this work.'[roman type][line break]".
To decide which number is the bartering value of (T - circuitboard) for (M - a robot):
	decide on 2.
To say MonsterOfferAcceptFlav of (M - a robot) to (T - circuitboard):
	say "[speech style of M]'COURIER MODE ENABLED. DELIVERY TARGET: MECHANIC.'[roman type][line break]".

Section - Nail File

nail file is a trinket. The text-shortcut of nail file is "nlfl". Figure of nail file is the file "Items/Collectibles/Trinkets/nailfile1.jpg".
To decide which figure-name is the examine-image of (T - nail file):
	decide on figure of nail file.
To say ShortDesc of (T - nail file):
	say "nail file".
To decide which number is the bartering value of (T - nail file) for (M - vampiress):
	decide on 4.
To decide which number is the bartering value of (T - nail file) for (M - a demoness):
	decide on 3.
To say MonsterOfferAcceptFlav of (M - a monster) to (T - nail file):
	say "[speech style of M]'Oh my yes, my claws could use a trim.'[roman type][line break]".

Section - Spork

spork is a trinket. The text-shortcut of spork is "sprk". Figure of spork is the file "Items/Collectibles/Trinkets/spork1.jpg".
To decide which figure-name is the examine-image of (T - spork):
	decide on figure of spork.
To say ShortDesc of (T - spork):
	say "spork".
To decide which number is the bartering value of (T - spork) for (M - robobutler):
	decide on 4.
To decide which number is the bartering value of (T - spork) for (M - robochef):
	decide on 4.
To say MonsterOfferAcceptFlav of (M - a robot) to (T - spork):
	say "[speech style of M]'THANK YOU FOR DISPOSING OF YOUR UTENSILS RESPONSIBLY.'[roman type][line break]".
To decide which number is the bartering value of (T - spork) for (M - wench):
	decide on 2.
To say MonsterOfferAcceptFlav of (M - a wench) to (T - spork):
	say "[speech style of M]'Nice! With this, I might actually be able to eat a meal like a human rather than an animal! For the first time in... too long.'[roman type][line break]".
To decide which number is the bartering value of (T - spork) for (M - an adult baby slave):
	decide on 4.
To say MonsterOfferAcceptFlav of (M - an adult baby slave) to (T - spork):
	say "[speech style of M]'Lol! Now I can be super random, by holding up a spork!'[roman type][line break]".
Definition: spork is food themed: decide yes.

Section - Horseshoe

horseshoe is a trinket. The text-shortcut of horseshoe is "hrsh". Figure of horseshoe is the file "Items/Collectibles/Trinkets/horseshoe1.jpg".
To decide which figure-name is the examine-image of (T - horseshoe):
	decide on figure of horseshoe.
To say ShortDesc of (T - horseshoe):
	say "horseshoe".
To decide which number is the bartering value of (T - horseshoe) for (M - centaur):
	decide on 4.
To decide which number is the bartering value of (T - horseshoe) for (M - unicorn):
	decide on 4.
To say MonsterOfferAcceptFlav of (M - a monster) to (T - horseshoe):
	say "[speech style of M]'Brilliant! It's always good to have spares.'[roman type][line break]".
To decide which number is the bartering value of (T - horseshoe) for (M - a supporter):
	decide on 2.
To say MonsterOfferAcceptFlav of (M - a supporter) to (T - horseshoe):
	say "[speech style of M]'This makes a good lucky charm. Cheers.'[roman type][line break]".
Definition: horseshoe is horse themed: decide yes.

Section - Birthday Card

birthday card is a trinket. The text-shortcut of birthday card is "bdcd". Figure of birthday card is the file "Items/Collectibles/Trinkets/birthdaycard1.jpg".
To decide which figure-name is the examine-image of (T - birthday card):
	decide on figure of birthday card.
To say ShortDesc of (T - birthday card):
	say "birthday card".
To decide which number is the bartering value of (T - birthday card) for (M - dominatrix):
	decide on 4.
To say MonsterOfferAcceptFlav of (M - dominatrix) to (T - birthday card):
	say "[speech style of M]'How did you know? How thoughtful.'[roman type][line break]".
To decide which number is the bartering value of (T - birthday card) for (M - a wrestler):
	decide on 2.
To say MonsterOfferAcceptFlav of (M - a monster) to (T - birthday card):
	say "[speech style of M]'Ooh, thanks! I know exactly who to give this to.'[roman type][line break]".

Section - Silk Flower

silk-rose is a trinket. The text-shortcut of silk-rose is "slkr". Figure of silk-rose is the file "Items/Collectibles/Trinkets/silkrose1.jpg". Understand "silk", "rose" as silk-rose.
To decide which figure-name is the examine-image of (T - silk-rose):
	decide on figure of silk-rose.
To say ShortDesc of (T - silk-rose):
	say "silk rose".
To decide which number is the bartering value of (T - silk-rose) for (M - Icarus):
	decide on 4.
To say MonsterOfferAcceptFlav of (M - Icarus) to (T - silk-rose):
	say "[speech style of M]'How romantic! Thank you.'[roman type][line break]".
To decide which number is the bartering value of (T - silk-rose) for (M - a royal guard):
	decide on 2.
To say MonsterOfferAcceptFlav of (M - a monster) to (T - silk-rose):
	say "[speech style of M]'Ah, a lovely romantic rose! Thank you, I will take it and gift it to the woman I love.'[roman type][line break]".
Definition: silk-rose is flower themed: decide yes.

Section - Gold Sticker

gold-sticker is a trinket. The text-shortcut of gold-sticker is "stkr". Figure of gold-sticker is the file "Items/Collectibles/Trinkets/goldsticker1.jpg". Understand "gold", "sticker" as gold-sticker.
To decide which figure-name is the examine-image of (T - gold-sticker):
	decide on figure of gold-sticker.
To say ShortDesc of (T - gold-sticker):
	say "gold sticker".
To decide which number is the bartering value of (T - gold-sticker) for (M - an aeromancer):
	decide on 4.
To say MonsterOfferAcceptFlav of (M - an aeromancer) to (T - gold-sticker):
	say "[speech style of M]'I did always enjoy being top of the class! Thank you for helping me feel young again.'[roman type][line break]".
To decide which number is the bartering value of (T - gold-sticker) for (M - a fairy):
	decide on 2.
To say MonsterOfferAcceptFlav of (M - a monster) to (T - gold-sticker):
	say "[speech style of M]'Ooh, yay! I'm the best!'[roman type][line break]".
Definition: gold-sticker is star themed: decide yes.

Section - Giant Pencil

giant-pencil is a trinket. The text-shortcut of giant-pencil is "pncl". Figure of giant-pencil is the file "Items/Collectibles/Trinkets/giantpencil1.jpg". Understand "giant", "pencil" as giant-pencil.
To decide which figure-name is the examine-image of (T - giant-pencil):
	decide on figure of giant-pencil.
To say ShortDesc of (T - giant-pencil):
	say "giant pencil".
To decide which number is the bartering value of (T - giant-pencil) for (M - a wrestler):
	decide on 4.
To say MonsterOfferAcceptFlav of (M - a wrestler) to (T - giant-pencil):
	say "[speech style of M]'Ooh, so big! And you know what they say - anything's a dildo if you're brave enough!'[roman type][line break]".
To decide which number is the bartering value of (T - giant-pencil) for (M - an aeromancer):
	decide on 2.
To say MonsterOfferAcceptFlav of (M - a monster) to (T - giant-pencil):
	say "[speech style of M]'Never hurts to have a spare!'[roman type][line break]".
Definition: giant-pencil is immune to change:
	if it is in WoodsBoss01, decide yes;
	decide no.

Section - Old Coin

old-coin is a trinket. The text-shortcut of old-coin is "oldc". Figure of old-coin is the file "Items/Collectibles/Trinkets/oldcoin1.jpg". Understand "old", "coin" as old-coin.
To decide which figure-name is the examine-image of (T - old-coin):
	decide on figure of old-coin.
To say ShortDesc of (T - old-coin):
	say "old coin".
To say MonsterOfferRejectFlav of (M - a monster) to (T - old-coin):
	say "[speech style of M]'...Are you calling me a [cunt]?'[roman type][line break]".
To decide which number is the bartering value of (T - old-coin) for (M - shopkeeper):
	decide on 4.
To say MonsterOfferAcceptFlav of (M - shopkeeper) to (T - old-coin):
	say "[speech style of M]'A relic from a long lost era. Used by my ancient ancestors for their noble trade. I... I will keep this close to my chest, to honour and remember them.'[roman type][line break]".
To decide which number is the bartering value of (T - old-coin) for (M - djinn):
	decide on 2.
To say MonsterOfferAcceptFlav of (M - djinn) to (T - old-coin):
	say "[speech style of M]'Ah yes, I remember when this was common coinage. My master at the time used his wishes for some rather nefarious purposes, I recall. Good times... Fine, yes, I will take this off your hands, for nostalgia.'[roman type][line break]".
Definition: old-coin is vagina themed: decide yes.

Section - Rubber Duck

rubber-duck is a trinket. The text-shortcut of rubber-duck is "rbrd". Figure of rubber-duck is the file "Items/Collectibles/Trinkets/rubberduck1.jpg". Understand "rubber", "duck" as rubber-duck.
To decide which figure-name is the examine-image of (T - rubber-duck):
	decide on figure of rubber-duck.
To say ShortDesc of (T - rubber-duck):
	say "rubber duck".
To say MonsterOfferRejectFlav of (M - a monster) to (T - rubber-duck):
	say "[speech style of M]'What are you trying to say? That I need a bath?!'[roman type][line break]".
To decide which number is the bartering value of (T - rubber-duck) for (M - djinn):
	decide on 4.
To say MonsterOfferAcceptFlav of (M - djinn) to (T - rubber-duck):
	say "[speech style of M]'Haha! Yes, this represents everything I love about you humans. You invent things with literally no value or purpose. Just like yourselves! How entertaining. I shall keep it as a reminder of your folly.'[roman type][line break]".
To decide which number is the bartering value of (T - rubber-duck) for (M - an adult baby slave):
	decide on 2.
To say MonsterOfferAcceptFlav of (M - a monster) to (T - rubber-duck):
	say "[speech style of M]'Bath time is more fun with toys! Thank you.'[roman type][line break]".
Definition: rubber-duck is swimming themed: decide yes.

Section - Love Letters

love-letters is a trinket. The text-shortcut of love-letters is "lvlt". Figure of love-letters is the file "Items/Collectibles/Trinkets/loveletters1.jpg". Understand "love", "letters" as love-letters.
To decide which figure-name is the examine-image of (T - love-letters):
	decide on figure of love-letters.
To say ShortDesc of (T - love-letters):
	say "love letters".
To decide which number is the bartering value of (T - love-letters) for (M - unicorn):
	decide on 10.
To say MonsterOfferAcceptFlav of (M - unicorn) to (T - love-letters):
	say "[speech style of M]'Oh thank GOODNESS! I thought I'd lost these forever! Thank you for finding them for me!'[roman type][line break]".
To decide which number is the bartering value of (T - love-letters) for (M - mechanic):
	decide on 2.
To say MonsterOfferAcceptFlav of (M - a monster) to (T - love-letters):
	say "[speech style of M]'Ugh, yes, these are for me. I'll add them to the rest of the pile...'[roman type][line break]".
To decide which number is the bartering value of (T - love-letters) for (M - demon lord):
	decide on 2.
To say MonsterOfferAcceptFlav of (M - demon lord) to (T - love-letters):
	say "[speech style of M]'UGH, NOT MORE LOVE LETTERS! WELL, THEY ARE FROM MY FIANCEE, SO I GUESS I SHOULD TAKE THEM...'[roman type][line break]".
Definition: love-letters is book themed: decide yes.

Section - Romance Novel

romance-novel is a trinket. The text-shortcut of romance-novel is "rnvl". Figure of romance-novel is the file "Items/Collectibles/Trinkets/novel1.jpg". Understand "romance", "novel" as romance-novel.
To decide which figure-name is the examine-image of (T - romance-novel):
	decide on figure of romance-novel.
To say ShortDesc of (T - romance-novel):
	say "romance novel".
To decide which number is the bartering value of (T - romance-novel) for (M - witch):
	decide on 4.
To say MonsterOfferAcceptFlav of (M - witch) to (T - romance-novel):
	say "[speech style of M]'YES! I gets so boring in here. I need something new to frig the hours away.'[roman type][line break]".
To decide which number is the bartering value of (T - romance-novel) for (M - a gladiator):
	decide on 2.
To say MonsterOfferAcceptFlav of (M - a monster) to (T - romance-novel):
	say "[speech style of M]'Ugh, so tacky! I will, erm, confiscate it from you and make sure it is properly disposed of. Why are you looking at me like that?'[roman type][line break]".
Definition: romance-novel is book themed: decide yes.

Section - Spare Battery

spare-battery is a trinket. The text-shortcut of spare-battery is "sbty". Figure of spare-battery is the file "Items/Collectibles/Trinkets/battery1.jpg". Understand "spare", "battery" as spare-battery.
To decide which figure-name is the examine-image of (T - spare-battery):
	decide on figure of spare-battery.
To say ShortDesc of (T - spare-battery):
	say "spare battery".
To decide which number is the bartering value of (T - spare-battery) for (M - a robot):
	decide on 4.
To say MonsterOfferAcceptFlav of (M - a monster) to (T - spare-battery):
	say "[speech style of M]'ANALYSING... SPARE BATTERY DETECTED. SUBJECTIVE VALUE STATUS: 4. ACCEPTING TRANSACTION...'[roman type][line break]".

Section - VIP Card

VIP-card is a trinket. The text-shortcut of VIP-card is "vipc". Figure of VIP-card is the file "Items/Collectibles/Trinkets/vipcard1.jpg". Understand "VIP", "card" as VIP-card.
To decide which figure-name is the examine-image of (T - VIP-card):
	decide on figure of VIP-card.
To say ShortDesc of (T - VIP-card):
	say "VIP card".
To decide which number is the bartering value of (T - VIP-card) for (M - shopkeeper):
	decide on 8.
To say MonsterOfferAcceptFlav of (M - shopkeeper) to (T - VIP-card):
	say "[speech style of M]'Oh my god! One of the only things I've ever wanted that money can't buy. Thank you so much!'[roman type][line break]".
To decide which number is the bartering value of (T - VIP-card) for (M - pimp):
	decide on 8.
To say MonsterOfferAcceptFlav of (M - pimp) to (T - VIP-card):
	say "[speech style of M]'Oh, you found this? Thank you for giving it back to me. I wouldn't want it to fall into the hands of someone who I hadn't personally given it to.'[roman type][line break]".
To decide which number is the bartering value of (T - VIP-card) for (M - a patron):
	decide on 8.
To say MonsterOfferAcceptFlav of (M - a monster) to (T - VIP-card):
	say "[speech style of M]'Oh YES! I've always wanted one of these!'[roman type][line break]".
To compute final resolution of (M - a monster) taking (T - VIP-card):
	now M is carrying T.
Definition: VIP-card is whore themed: decide yes.

Basic Collectibles ends here.
