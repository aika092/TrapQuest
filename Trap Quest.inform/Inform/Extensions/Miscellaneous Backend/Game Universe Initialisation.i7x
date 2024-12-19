Game Universe Initialisation by Miscellaneous Backend begins here.

The game universe initialisation rules is a rulebook.

Figure of YesNoBackgroundHalloween is the file "Special/Buttons/YesNo/vamp.jpg".

[!<StartTheMachine>+

The button has been pushed, let's set up the actual game environment. Doing this separately from engine initialisation allows us to split up the setup lag at the start of the game into two chunks.

+!]
To Start The Machine:
	Prune Settings Menu;
	repeat with H running through clothing:
		set up magic state of H; [otherwise certain things appear unidentified that shouldn't]
	Set Up The Dungeon;
	Set Up Monsters;
	if diaper messing >= 3, now rectum is 1;
	if debugmode > 1, say "Finished setting up monsters.";
	if halloween content is 1:
		now playerRegion is Mansion;
		Set Up The Woods;
		follow the setting up woods monsters rules;
		Set Up The Mansion;
		follow the setting up mansion monsters rules;
		repeat with M running through alive nonexistent monsters:
			set up M;
		wait until animations are over;
		now the player is in Mansion01;
	otherwise if nursery resident is 1:
		now playerRegion is Hotel;
		Set Up The Woods;
		follow the setting up woods monsters rules;
		Set Up The Hotel;
		follow the setting up hotel monsters rules;
		repeat with M running through alive nonexistent monsters:
			set up M;
		wait until animations are over;
		now the player is in Hotel22;
	otherwise:
		wait until animations are over;
		now the player is in Dungeon12;
	resolve graphics windows mayhem;
	fix window overhang;
	if debugmode > 1, say "Now configuring pink smoke.";
	move pink smoke backdrop to all pink-smoky rooms;
	move water-body backdrop to all water-bodied rooms;
	if debugmode > 1, say "Now configuring toilets.";
	move toilet backdrop to all toilets rooms;
	move urinal backdrop to all urinals rooms;
	if spontaneous tattoos is 1:
		if background-pure is 1, summon virgin void tattoo;
		otherwise summon ink-me tattoo;
		say "You notice that [if latex prisoner is 0 and halloween content is 0 and christmas content is 0]you are naked, and that [end if]you have a tattoo of the [if background-pure is 1]word 'VIRGIN' on your belly[otherwise]words 'INK ME' on the back of your left hand[end if].[line break]";
		focus-consider a random worn tattoo;
	if background-nurse is 1:
		let B be a random unowned bandage;
		now B is held by the player;
		say "You notice that you seem to have some medical supplies. Handy![line break]";
	if christmas content is 1:
		if diaper lover > 0:
			now christmas bonnet is worn by the player; [if we summon it, it'll summon the default outfit too and we don't want that]
			now christmas bonnet is cursed;
			now christmas bonnet is sure;
			now christmas bonnet is identified;
			uniquely set up christmas bonnet;
			summon naughty-or-nice outfit;
			summon plain-small-diaper uncursed;
			let FGS be a random frilly green socks;
			summon FGS uncursed;
			now the raw-magic-modifier of FGS is 2;
			now FGS is charisma-influencing;
			say "You seem to have been given some kind of... festive baby outfit and diaper to wear?! This must be some weird Christmas-themed event...";
		otherwise:
			now conic santa hat is worn by the player; [if we summon it, it'll summon the default outfit too and we don't want that]
			now conic santa hat is cursed;
			now conic santa hat is sure;
			now conic santa hat is identified;
			uniquely set up conic santa hat;
			summon present outfit;
			increase the transform-resistance of present outfit by 1;
			say "You seem to have been given some kind of... sexy festive outfit to wear?! This must be some weird Christmas-themed event...";
	if halloween content is 1:
		now temporaryYesNoBackground is Figure of YesNoBackgroundHalloween;
		set up vampiress;
		now vampiress is in Mansion01;
		interest vampiress;
		calm vampiress;
		now the pink pill is in pink wardrobe;
		reset multiple choice questions;
		if diaper quest is 0:
			say "[bold type]Dark forces are more powerful at this time of year! You sense a sinister energy in the air... Shaping your fate...[roman type][paragraph break]In front of you, in the darkness, are three items. You see a crucifix, a pentagram, and a human bone in front of you. You could reach out and touch one, if you like...";
			set numerical response 1 to "Touch the crucifix"; [refresh room blessings]
			set numerical response 2 to "Touch the pentagram"; [doom quest starts but you get the necronomicon?]
			set numerical response 3 to "Touch the bone"; [trick or treat]
		otherwise:
			say "[bold type]Dark forces are more powerful at this time of year! You sense a sinister energy in the air... Shaping your fate...[roman type][paragraph break]In front of you, in the darkness, are three items. You see a doll, a potty, and a bat wing in front of you. You could reach out and touch one, if you like...";
			set numerical response 1 to "Touch the doll"; [ghosts?]
			set numerical response 2 to "Touch the potty"; [urgently needs toilet]
			set numerical response 3 to "Touch the bat wing"; [diapered trick or treat]
			set numerical response 4 to "Don't touch anything, and let the dark forces choose randomly for you...";
		compute multiple choice question;
		if player-numerical-response is 4, now player-numerical-response is a random number between 1 and 3;
		if diaper quest is 0:
			if player-numerical-response is 1:
				compute full outfit summon of rubber nun cowl;
				repeat with RM running through garlic haunted rooms:
					now RM is garlic-waned;
				say "[second custom style]Ding Dong![roman type][line break]The giant manor house's doorbell sounds surprisingly cheerful and welcoming considering how scary the place looks from the outside. And yet, when the door opens, it opens with an uncanny creak like you might expect from such an old and grand door. The [man of vampiress] who greets you has red eyes and very, very pale skin.[line break][variable custom style]'Trick or treat!'[roman type][line break]You say automatically, without thinking. The [man of vampiress] rolls [his of vampiress] eyes.[line break][speech style of vampiress]'You're here to renew my blessings, right? They've been waning for ages. I've been waking up to fucking ghost cum on my face for the last month. Seriously, you're lucky there's no nun version of TrustPilot.'[roman type][line break][big he of vampiress] ushers you inside.[line break][speech style of vampiress]'Just go on in, and get on with it. And don't touch my stuff!'[roman type][line break]";
				repeat with M running through alive acolytes:
					finally destroy M;
			otherwise if player-numerical-response is 2:
				compute full outfit summon of witch's hat;
				now doom notes is carried by the player;
				now the doom-warned of witch is 1;
				repeat with P running through on-stage pedestals:
					if pocket necronomicon is in P:
						now P is fertile;
						now the paid of P is 2;
				say "[second custom style]Ding Dong![roman type][line break]The giant manor house's doorbell sounds surprisingly cheerful and welcoming considering how scary the place looks from the outside. And yet, when the door opens, it opens with a spooky, drawn out creak like you might expect from such an old and grand door. The [man of vampiress] who greets you has red eyes and very, very pale skin.[line break][variable custom style]'Trick or treat!'[roman type][line break]You say automatically, without thinking. The [man of vampiress] claps [his of vampiress] hands with relief.[line break][speech style of vampiress]'You're the doom specialist, right? Thank god you're here. Some friendly ladies set up a little meetup in the back of my mansion, and I didn't think anything of it at first, but lately the dark energy emanating from that wing of the house has been getting a little out of hand.'[roman type][line break][big he of vampiress] leans in close and speaks in a barely audible whisper.[line break][speech style of vampiress]'I think they're trying to wake an elder god.'[roman type][line break][big he of vampiress] pulls back and gives you a knowing look.[line break][speech style of vampiress]'Your Head Office sent this, for me to give to you.'[roman type][line break][big he of vampiress] hands you a piece of paper, with instructions on how to stop the alleged ritual.[line break][speech style of vampiress]'Oh, and I managed to steal a book from them when they weren't looking. I think it's important. I am keeping it secure in one of the pedestals in my library. You'll be able to open it with this. Just don't spill it before you get there!'[roman type][line break][BigNameDesc of vampiress] points to a goblet that appears to be full of [semen], sitting on a sideboard near the front door.";
				repeat with M running through alive ghosts:
					finally destroy M;
				now witch's goblet is in the location of the player;
				now witch's goblet is sure;
				now the fill-colour of witch's goblet is creamy;
				now the doses of witch's goblet is 2;
				now vampiress is inseminating witch's goblet;
				follow the incantation initialisation rule;
				MagicPowerUp 5;
				say "[bold type]New arcane knowledge appears in your mind! You've learned a new spell![NewbieSpellFlav]";
				compute learning of magic-mapping;
				force commence doom;
				say "[if there is a worn bag of holding][BigNameDesc of witch's goblet] can't go in your bag, so it[otherwise]Picking up [NameDesc of witch's goblet][end if] will negatively affect your appearance. Do you want to pick it up?";
				if the player is consenting:
					now witch's goblet is carried by the player;
					say "You pick up the goblet full of [semen].";
			otherwise if player-numerical-response is 3:
				now candy corn is in Mansion28;
				now liquorice is in Mansion36;
				now strawberry lace is in Mansion16;
				if hellhound is off-stage, set up hellhound;
				regionally place hellhound;
				repeat with M running through alive ghosts:
					finally destroy M;
				summon skeleton-playsuit cursed;
				now the quest of skeleton-playsuit is trick-or-treat-quest;
				summon skeleton stockings uncursed;
				say "You are wearing a [skeleton-playsuit] and a [skeleton stockings].";
				say "[second custom style]Ding Dong![roman type][line break]The giant manor house's doorbell sounds surprisingly cheerful and welcoming considering how scary the place looks from the outside. And yet, when the door opens, it opens with a creepy creak like you might expect from such an old and grand door. The [man of vampiress] who greets you has red eyes and very, very pale skin.[line break][variable custom style]'Trick or treat!'[roman type][line break]You say automatically, without thinking. The [man of vampiress] licks [his of vampiress] lips.[line break][speech style of vampiress]'Why not both?'[roman type][line break][big he of vampiress] offers seductively, before ushering you inside.[line break][speech style of vampiress]'I did have some candy for you but my house is so big that I've lost it all somewhere around here. Why don't you have a little look around and see if you can find it all? There should be [bold type]three pieces of candy[roman type] [speech style of vampiress]for you to find. Feel free to eat it all when you find it. Just watch out for the guard dog. [big he of hellhound] often fancies a [']bone[']...'[roman type][line break]";
		otherwise:
			if player-numerical-response is 1:
				compute full outfit summon of doll hairbow;
				say "[second custom style]Ding Dong![roman type][line break]The giant manor house's doorbell sounds surprisingly cheerful and welcoming considering how scary the place looks from the outside. And yet, when the door opens, it opens with an uncanny creak like you might expect from such an old and grand door. The [man of vampiress] who greets you has red eyes and very, very pale skin.[line break][variable custom style]'Trick or treat!'[roman type][line break]You say automatically, without thinking. The [man of vampiress] seems to ignore this, and quickly ushers you inside.[line break][speech style of vampiress]'You're the ghost exterminator I ordered, right? Look, there's no time. I need you to [bold type]attract the attention of the girl ghost[speech style of vampiress] who has been haunting me here, [bold type]bait her into one of the rooms with a pentagram[speech style of vampiress], and [bold type]get her to leave my fucking mansion[speech style of vampiress]! And try not to fuck up - I mistook the last mortal who came knocking as the exorcist but she was just some dumb trick-or-treater, and the next thing you know the ghost had turned her into some sort of traumatized diapered baby! But that shouldn't be a problem for you - you're the real deal!'[roman type][line break]Before you can reply, [NameDesc of vampiress] has burst into a small flock of bats, which have flown away back into the depths of the mansion!";
				repeat with M running through alive ghosts:
					finally destroy M;
				set up ghostly tentacle;
				summon ghostly tentacle in the mansion;
				deinterest vampiress;
				regionally place vampiress;
			otherwise if player-numerical-response is 2:
				summon purple-velcro-diaper uncursed;
				summon trick-or-treat onesie cursed;
				now the quest of trick-or-treat onesie is desperation-quest;
				summon halloween socks uncursed;
				now halloween socks is waddle-walking;
				[summon spider pacifier uncursed;
				set up unique shop state of spider pacifier;
				now spider pacifier is strength stealing;]
				summon pom-pom-shoes cursed;
				now the quest of pom-pom-shoes is kicking-quest;
				now creepiness is 29;
				repeat with M running through alive ghosts:
					finally destroy M;
				now the bladder of the player is 11;
				if diaper messing >= 3, now rectum is 8;
				say "You are wearing a [trick-or-treat onesie] over a [purple-velcro-diaper], and a [pom-pom-shoes] over a [halloween socks].";
				say "[second custom style]Ding Dong![roman type][line break]The giant manor house's doorbell sounds surprisingly cheerful and welcoming considering how scary the place looks from the outside. And yet, when the door opens, it opens with a creepy creak like you might expect from such an old and grand door. The [man of vampiress] who greets you has red eyes and very, very pale skin.[line break][variable custom style]'Trick or treat!'[roman type][line break]You say automatically, without thinking. But then you feel a concerning pressure in your bladder[if diaper messing >= 3] and bowels[end if].[line break][variable custom style]'Oh my... Actually... I really need to use your toilet!'[roman type][paragraph break][BigNameDesc of vampiress] steps up to you, and places a hand on the front of your onesie, feeling the soft padding underneath.[line break][speech style of vampiress]'But you have your potty right here, don't you?'[roman type][paragraph break]You recoil, but your enchanted [halloween socks] force you to keep your legs wide apart, so it's actually more of an embarrassing waddle.[line break][variable custom style]'N-no way! That's just part of my costume! Please, I don't want to [if diaper messing >= 3]poop[otherwise]wet[end if] myself!'[roman type][paragraph break][BigNameDesc of vampiress] laughs patronizingly.[line break][speech style of vampiress]'Okay okay, sure thing. But let's turn it into a game. If you can't find the toilet before you [if diaper messing >= 3]make [']pushies['][otherwise]soak yourself[end if], then I'm going to keep you in diapers until you can learn to use the potty like a big [boy of the player].'[roman type][paragraph break]You're too desperate to argue.[line break][variable custom style]'F-fine! Whatever! Just let me in!'[roman type][paragraph break][BigNameDesc of vampiress] smirks and steps to the side, inviting you in. You awkwardly waddle past [him of vampiress], and into [his of vampiress] creepy old mansion.[line break][speech style of vampiress]'If you see anything scary, try not to [if diaper messing >= 3]poop[otherwise]piss[end if] your pants with fear.'[roman type][line break][big he of vampiress] whispers in your ear as you pass [him of vampiress].";
			otherwise if player-numerical-response is 3:
				now candy corn is in Mansion28;
				now liquorice is in Mansion36;
				now strawberry lace is in Mansion16;
				compute full outfit summon of bat wings;
				say "[second custom style]Ding Dong![roman type][line break]The giant manor house's doorbell sounds surprisingly cheerful and welcoming considering how scary the place looks from the outside. And yet, when the door opens, it opens with a creepy creak like you might expect from such an old and grand door. The [man of vampiress] who greets you has red eyes and very, very pale skin.[line break][variable custom style]'Trick or treat!'[roman type][line break]You say automatically, without thinking. The [man of vampiress] licks [his of vampiress] lips.[line break][speech style of vampiress]'Why not both?'[roman type][line break][big he of vampiress] offers seductively, before ushering you inside.[line break][speech style of vampiress]'I did have some candy for you but my house is so big that I've lost it all somewhere around here. Why don't you have a little look around and see if you can find it all? There should be [bold type]three pieces of candy[roman type] [speech style of vampiress]for you to find.'[roman type][line break]But then, at this moment, [he of vampiress] notices your [halloween rubber diaper cover]. [big he of vampiress] hisses.[line break][speech style of vampiress]M-mommy... Feels... ANGRY! RAAAR!'[roman type][line break][big he of vampiress] turns into a flock of bats, which quickly fly away into the depths of the mansion.[paragraph break][variable custom style]Uh-oh. Something tells me that if I run into [him of vampiress] again while I'm wearing this diaper cover, [he of vampiress] isn't going to be very friendly with me...[roman type][line break]";
				deinterest vampiress;
				regionally place vampiress;
		follow the player class rules; [update class]
		let C be bat-pattern-corset;
		if diaper quest is 1, now C is bat-shape-corset;
		if C is not in Mansion01:
			now C is in Mansion16;
			if a random number between 1 and 3 is 1:
				now C is cursed;
				now C is provocation;
			now the raw-magic-modifier of C is a random number between 1 and 3;
		[let SM be a random space mead;
		now SM is in the location of the player;]
		[say "[second custom style]Ding Dong![roman type][line break]The giant manor house's doorbell sounds surprisingly cheerful and welcoming considering how scary the place looks from the outside. And yet, when the door opens, it opens with a creepy creak like you might expect from such an old and grand door. The [man of vampiress] who greets you has red eyes and very, very pale skin. [big he of vampiress] looks at your bare chest.[line break][if the player is sexed female][speech style of vampiress]'Nice tits.'[roman type][line break][end if]You look down and see that half of your outfit is for some reason on the ground in front of you instead of covering your chest![line break][variable custom style]'Trick or treat[if diaper lover > 0]! And, erm, could I use your bathroom?'[otherwise]!'[end if][roman type][line break]You say automatically, without thinking. [if diaper lover > 0]It's true - you really really do need the loo. [end if]The [man of vampiress] licks [his of vampiress] lips.[line break][speech style of vampiress]'[if diaper lover > 0]Why of course you can sweetie. Come on in...'[otherwise]Why not both?'[end if][roman type][line break][big he of vampiress] offers seductively, before ushering you inside.[line break][speech style of vampiress]'I did have some candy for you but my house is so big that I've lost it all somewhere around here. Why don't you have a little look around and see if you can find it all? There should be [bold type]three pieces of candy[roman type] [speech style of vampiress]for you to find. Feel free to eat it all when you find it.'[roman type][line break]";]
		if diaper quest is 1:
			if the bladder of the player < 5, now the bladder of the player is 5;
			if diaper messing >= 3 and rectum < 3, now rectum is 3;
			[set up ghostly tentacle;
			now ghostly tentacle is in a random placed mandatory haunted room;]
		display inventory-focus stuff;
	otherwise if nursery resident is 1:
		let D be a random eligible small diaper;
		if D is nothing, now D is a random eligible medium diaper;
		if D is nothing, now D is a random eligible diaper;
		if D is nothing, now D is a random diaper;
		summon D uncursed;
		summon teddy-bear-diaper-cover locked;
		now teddy-bear-diaper-cover is bed wetting;
		let K be a random off-stage specific-key;
		if K is a thing:
			now K is covering teddy-bear-diaper-cover;
			now K is carried by matron;
		let DR be blue-romper;
		summon DR locked;
		let K be a random off-stage specific-key;
		if K is a thing:
			now K is covering DR;
			now K is carried by matron;
		now the times-met of matron is 1;
		now matron is motherly;
		if the bladder of the player < 5, now the bladder of the player is 5;
		UrineSoakUp D by the soak-limit of D;
		if diaper messing >= 3 and rectum < 3, now rectum is 3;
		now nursery crib is grabbing the player;
		now the stance of the player is 1;
		now the charge of nursery crib is 30;
		regionally place matron;
		say "You wake up inside [NameDesc of nursery crib], wearing a locked [MediumDesc of DR], and you can feel layers of padding underneath. And you can feel that the diaper you're wearing is far from dry![line break][variable custom style]Oh god, what have I gotten myself into already?![roman type][line break]The immediate question, then, is do you try to escape, or do you wait for someone to arrive and hopefully let you free?";
	otherwise:
		now the pink pill is carried by the player;
		say "You notice you are holding a small pink pill in your hand.";
	if latex prisoner is 1 and nursery resident is 0, initialise latex prisoner;
	if bondage prisoner is 1, initialise bondage prisoner;
	if bondage protection is 2, initialise bondage protection;
	if debugmode > 1, say "Now initialising wardrobe.";
	initialise wardrobe;
	set up debug stuff;
	follow the game universe initialisation rules;
	update appearance level;
	[zero focus stuff;
	display stuff;]
	if the player is able to automatically slap and the player is able to automatically knee and the player is able to automatically kick, do nothing; [For some reason the first time these queries are called, it causes newlines we don't want. So let's make that happen here.]
	update status line;
	allocate 1 seconds;
	compute full engine loop.

previousGUILayout is a number that varies. previousGUILayout is -1.

To resolve graphics windows mayhem:
	repeat through the Table of User Styles:
		[now background colour entry is lightModeWhiteHex;]
		if style name entry is normal-style[ or style name entry is bold-style or style name entry is italic-style], now colour entry is lightModeTextHex;
		if style name entry is special-style-1, now colour entry is lightModeSpecial1Hex;
	follow the set generic text styles rule;
	now the position of the graphics-window is g-placeleft;
	now the measurement of the graphics-window is 64;
	repeat with W running through g-window:
		if W is graphics g-window, now the background colour of W is lightModeWhiteGraphicsHex;
		otherwise now the background colour of W is lightModeWhiteTextHex.


[!<InitialiseLatexPrisoner>+

Used at the start of the game to encase the player in latex items, if that option has been enabled.

+!]
To initialise latex prisoner:
	let R be a random number between 1 and 2;
	say "You suddenly feel your body encased in a skin-tight suit. You look down and see you are encased in latex! You feel your feet forced onto tip toes as a pair of latex [if diaper quest is 1]ballet[otherwise]fetish[end if] heels are magically secured to them. [if diaper quest is 0 and black hood is actually summonable]Your mouth is opened wide by a ring-gag as a latex hood appears over your face! [end if]";
	if diaper quest is 0, say "Suddenly you feel your [if the player is possessing a vagina][vagina] and [end if][asshole] invaded by [if the player is not possessing a vagina]a plug[otherwise]plugs[end if].[line break][first custom style]Oh no...[roman type][line break]The [if the player is possessing a vagina]rear [end if]plug starts vibrating!";
	let L be a random latex transformation-eligible heels;
	if diaper quest is 1, now L is a random sissy ballet boots;
	if L is actually summonable clothing, summon L;
	if diaper quest is 0:
		let L be a random latex transformation-eligible bra;
		if L is actually summonable clothing, summon L;
	let L be black rubber mittens;
	if diaper quest is 1, now L is rubber mittens;
	if L is actually summonable clothing, summon L;
	let L be a random off-stage vibrating plug panties;
	if diaper quest is 1, now L is a random rubber diaper;
	if L is actually summonable clothing, summon L;
	if diaper quest is 0:
		let BRS be a random black rubber stockings;
		if BRS is actually summonable, summon BRS;
	if diaper quest is 1 and rubber-baby-bonnet is actually summonable, summon rubber-baby-bonnet uncursed;
	let L be black-catsuit;
	if diaper quest is 1, now L is a random rubber jacket;
	if L is actually summonable clothing, summon L;
	if black hood is actually summonable, summon black hood cursed;
	repeat with C running through worn clothing:
		if C is latex or C is pvc:
			if C is discovered varied:
				if a random number between 1 and 4 is 1, now the raw-magic-modifier of C is -1;
				otherwise now the raw-magic-modifier of C is 0;
			now C is identified;
			now C is sure;
			now the owner of C is nothing;
			if C is not headgear:
				now C is bland;
				if C is heels:
					now C is posture training;
					now the heel-height of C is 2;
					compute quest of C;
				otherwise if C is vibrating plug panties:
					now the damage of C is 7;
				if C is rubber mittens:
					now the glue timer of C is a random number between 230 and 250;
				otherwise:
					now the glue timer of C is a random number between 425 and 500;
			if C is overdress:
				layer C correctly;
				if C is posture training, now C is blandness;
	if rubber-baby-bonnet is worn:
		now rubber-baby-bonnet is cursed;
		now the quest of rubber-baby-bonnet is just-wait-quest;
	if there is worn vibrating plug panties:
		ruin asshole;
		if the player is possessing a vagina, ruin vagina.

[!<InitialiseBondagePrisoner>+

Used at the start of the game to put the necessary bondage items on the player, if that option has been enabled.

+!]
To initialise bondage prisoner:
	let R be a random number between 1 and 2;
	let A be a random off-stage pair of anklecuffs;
	if R is 2:
		now A is a random off-stage pair of handcuffs;
		now A is wrist-bound-in-front;
	let C be a random off-stage actually summonable chastity bond;
	let G be a random off-stage small ballgag;
	let S be a random off-stage slave collar;
	let D be a random off-stage eligible plentiful diaper;
	if A is actually summonable clothing, summon A locked;
	unless there is worn vibrating plug panties:
		summon C cursed with silent quest;
	if diaper lover >= 1 and D is actually summonable clothing, summon D cursed with silent quest;
	if G is actually summonable clothing, summon G cursed with silent quest;
	if S is actually summonable clothing, summon S cursed with silent quest;
	say "Suddenly, a collar is wrapped around your neck and a pair of metal cuffs latch around your [if R is 2]wrists[otherwise]ankles[end if]![line break][first custom style]Oh come on, that's not fair![roman type][line break][if there is worn vibrating plug panties]You are about to shout your objections to this dick move by Nintendolls when [otherwise]You are suddenly placed in chastity by a cage appearing at your loins! You don't even have time to consider the implications of this before [end if]your mouth is forced open by the appearance of a [ShortDesc of G]![line break][if D is worn]Just as you think it's over, your eyes widen in shock as a [ShortDesc of D] materialises over your chastity cage![line break][end if][line break][first custom style]'MMMMMMPH!'[roman type][line break]".

[!<InitialiseBondageProtection>+

Used at the start of the game to put the necessary bondage items out of the game, if that option has been enabled.

+!]
To initialise bondage protection:
	repeat with C running through off-stage bondage:
		now C is in holding pen.

Definition: a clothing is pinkWardrobeAppropriate:
	if it is worn, decide no;
	if tough-shit is 0 and it is basic loot and the unworn outrage of it <= 3 + the notManlyFactor of it and (diaper quest is 0 or the unworn cringe of it <= 3 + the notManlyFactor of it), decide yes;
	if tough-shit is 1 and it is not unique and it is fetish appropriate and (diaper quest is 1 or the unworn outrage of it > 4 + the notManlyFactor of it) and the unworn outrage of it <= 10 + the notManlyFactor of it and (diaper quest is 0 or the unworn cringe of it > 4 + the notManlyFactor of it) and (diaper quest is 0 or the unworn cringe of it <= 10 + the notManlyFactor of it), decide yes;
	decide no.
Definition: a bra is pinkWardrobeAppropriate:
	if it is worn, decide no;
	if it is fetish appropriate and it is not in pink wardrobe and it is not unique and (the player is male or the min size of it <= the largeness of breasts) and the max size of it >= the largeness of breasts + 2 and it is actually dense and it is not product and the support of it > 0 and the unworn outrage of it <= 3 + the notManlyFactor of it and (diaper quest is 1 or the unworn outrage of it > 4 + the notManlyFactor of it) and the unworn outrage of it <= 10 + the notManlyFactor of it and (diaper quest is 0 or the unworn cringe of it > 4 + the notManlyFactor of it) and (diaper quest is 0 or the unworn cringe of it <= 10 + the notManlyFactor of it), decide yes;
	decide no. [We allow rare bras]
Definition: a knickers is pinkWardrobeAppropriate:
	if it is worn, decide no;
	if tough-shit is 0 and it is basic loot and the unworn outrage of it <= 6 + the notManlyFactor of it and (diaper quest is 0 or the unworn cringe of it <= 3 + the notManlyFactor of it), decide yes;
	if tough-shit is 1 and it is not unique and it is fetish appropriate and (diaper quest is 1 or the unworn outrage of it > 6 + the notManlyFactor of it) and the unworn outrage of it <= 12 + the notManlyFactor of it and (diaper quest is 0 or the unworn cringe of it > 4 + the notManlyFactor of it) and (diaper quest is 0 or the unworn cringe of it <= 12 + the notManlyFactor of it), decide yes;
	decide no.

[!<InitialiseWardrobe>+

Used at the start of the game to put the necessary items in the pink wardrobe.

+!]
To initialise wardrobe:
	let L be a list of clothing;
	let C be a random pinkWardrobeAppropriate undies;
	if roleplay fetish is 1, compute starting headgear;
	if pregnancy fetish is 1, now C is white-diagram briefs;
	if tough-shit is 1, now C is a random pinkWardrobeAppropriate thong;
	if diaper focus >= 1, now C is a random training pants;
	if diaper lover >= 1 and tough-shit is 1:
		now the bladder of the player is 9;
		say "[bold type]You are bursting to pee![line break][variable custom style]Crap, how unfair! I've got to find a toilet right away or I'm going to piss myself![roman type][line break]";
	if C is clothing, add C to L;
	now C is a random pinkWardrobeAppropriate bikini top;
	if C is bikini top:
		add C to L;
		now the size of C is the largeness of breasts;
		cupsizefix C;
	now C is a random pinkWardrobeAppropriate nylon stockings;
	if C is nothing, now C is a random pinkWardrobeAppropriate stockings;
	if C is clothing, add C to L;
	let C be a random Boobies T-shirt;
	if the player is male and a random number between trap fetish and 1 is 1, now C is a random Gender Bender T-shirt;
	if diaper lover >= 1 and a random number between 1 and 2 is 1, now C is a random I love my wet nappies T-shirt;
	if a random number between 1 and 2 <= 1 + tough-shit, now C is a random unskirted pinkWardrobeAppropriate underdress;
	if a random number between 1 and 2 <= 1 + tough-shit or C is nothing, now C is a random unskirted pinkWardrobeAppropriate overdress;
	if C is clothing, add C to L;
	now C is a random short-or-longer not-butt-windowed actually dense pinkWardrobeAppropriate skirt;
	if tough-shit is 1, now C is a random very-short-or-longer pinkWardrobeAppropriate skirt;
	if C is clothing, add C to L;
	if diaper focus >= 1:
		let C be a random eligible diaper;
		if easter content is 1, now C is brown-button-diaper;
		if C is clothing, add C to L;
	repeat with X running through L:
		if X is listed in Standard Item Pen:
			restock X;
		blandify and reveal X;
		now X is in pink wardrobe;
	let CG be champagne-glass;
	if diaper quest is 1:
		if alcohol fetish is 0, now CG is novelty mug;
		otherwise now CG is cocktail-glass;
	now CG is sure;
	now CG is bland;
	now CG is in pink wardrobe;
	let D be a random off-stage plentiful ring;
	now D is sapphire;
	set shortcut of D;
	now D is in pink wardrobe;
	now D is a random off-stage plentiful ring;
	now D is emerald;
	set shortcut of D;
	if background-rich is 1:
		let D be a random off-stage plentiful ring;
		now D is sapphire;
		set shortcut of D;
		now D is in pink wardrobe;
		now D is a random off-stage plentiful ring;
		now D is sapphire;
		set shortcut of D;
		let D be a random off-stage plentiful bracelet;
		now D is sapphire;
		set shortcut of D;
		now D is in pink wardrobe;
		now D is a random off-stage plentiful bracelet;
		now D is sapphire;
		set shortcut of D;
		now D is in pink wardrobe;
		now D is a random off-stage plentiful necklace;
		now D is sapphire;
		set shortcut of D;
	now D is in pink wardrobe;
	if the player is the donator, now combat visor is in pink wardrobe;
	if combatvisor is 1, now combat visor is worn by the player;
	if christmas content is 1, initialise christmas gifts.

To compute starting headgear:
	let H be a random roleplay headgear;
	now H is in pink wardrobe;
	now H is cursed.

To Scramble Items:
	Set Up Clothing;
	Set Up Collectibles;
	set up store;
	follow the setup starting items rules;
	sort Standard Item Pen in random order.

Game Universe Initialisation ends here.
