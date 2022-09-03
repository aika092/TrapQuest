Fainting by Miscellaneous Frontend begins here.

[!<sexChanged:Integer>*

Set to 1 when the player is sex changed, telling us that the next time the player faints, we should mention it. Then it gets set to 2 so we don't do that again the following time the player faints.

*!]
Sex-changed is a number that varies. Sex-changed is 0.

[!<newlyTattooed:Integer>*

Set to 1 when the player gets a property tattoo as they faint so that we know to mention it.

*!]
Newly-tattooed is a number that varies. Newly-tattooed is 0.

[!<tentacled:Integer>*

This tells us that a tentacle monster saw us faint, and therefore we could get turned into a tentacle breeder potentially.

*!]

tentacled is a number that varies. tentacled is 0.

[!<ExecuteFainting>+

Called when the player faints. We reset a lot of variables.

+!]
To Execute Fainting:
	let lossChosen be 0;
	repeat with M running through monsters in the location of the player:
		dislodge M;
	now another-turn is 0;
	let OL be the location of the player;
	if the player is in WoodsBoss01, now the player is in Woods16;
	if the player is in a linkedroom, now the player is in the source-room of the location of the player;
	if the player is in DiamondLessonBlindfolded, now the player is in School12;
	if the player is in a predicament room:
		now the player is in School01;
		repeat with T running through things in Predicament20:
			if T is trophy:
				if T is in the location of the player, now T is in School31;
				otherwise destroy T;
			otherwise:
				now T is in School01;
	if class-time < lessonFrequency, now class-time is lessonFrequency;
	if playerRegion is Mansion and there is an off-stage mindless acolyte:
		let A be a random off-stage mindless acolyte;
		set up A;
		summon A in the mansion;
	if the number of worn lower back tattoos is 0 and there is a worn tattoo and the player can see a royal guard:
		summon property-tattoo;
		now newly-tattooed is 1;
	if there is a tentacle monster in the location of the player, now tentacled is 1;
	let J be the biggest jewel;
	if J is a plentiful accessory:
		say "[if J is held]You feel your [J] ripped from you by an invisible force![otherwise if J is in the location of the player]You watch the [J] disintegrate in front of your eyes![end if]";
		remove J from play;
	if crashdebug is 1:
		say "Checkpoint 1.";
	if sex-changed is 1 and tg fetish >= 1:
		if the faint count of the player is 0, say "[First Time TG Fainting Story]";
		otherwise say "[TG Fainting Story]";
		if the player is gendered male:
			say "You didn't ask to be changed like this, but knowing how hard it would be to change back, you find yourself wondering... wouldn't it be best if you identified as a woman from now on?";
			if the player is bimbo consenting:
				say "You decide to give up on being a man once and for all, since it's obvious now that you were only pretending to be one.";
				now choice in row 79 of the Table of Player Options is 1;[permanently switches the player to feminine pronouns]
		now sex-changed is 2;
	otherwise:
		say "[if the faint count of the player is 0][First Time Fainting Story][otherwise][Next Time Fainting Story][end if]";
	say "[second custom style]'[one of]Oh yeah... when you come back here, we are supposed to give you a chance to, well, give up. If you want to. You'll leave with no winnings[or]Also we're going to keep giving you the option to quit with no winnings every time you come back here[stopping]. So, are you sure you want to keep playing? That means say [bold type]yes [second custom style] to keep playing and [bold type]no [second custom style]to give up.'[roman type][line break][line break]";
	unless the player is consenting:
		repeat with A running through worn plentiful accessories:
			now A is carried by the player; [You can't just bail and then win! You lose all your money]
		now lossChosen is 1;
		end the story finally saying "You have lost.";
	if lossChosen is 0:
		decrease the extra lives of the player by 1;
		unless earnings is starting-earnings:
			Set Leftovers;
			increase the faint count of the player by 1;
			if debugmode is 1, say "[line break][bold type]RECOVERING MONSTERS[roman type][line break]";
			Recover Monsters;
			if crashdebug is 1:
				say "Checkpoint 2.";
			if debugmode is 1, say "[line break][bold type]RECOVERING CLOTHING[roman type][line break]";
			Recover Clothing;
			if debugmode is 1, say "[line break][bold type]RECOVERING TRAPS[roman type][line break]";
			Recover Traps;
			if map reset is 1:
				if crashdebug is 1:
					say "Checkpoint 3.";
				if debugmode is 1, say "[line break][bold type]RECOVERING DRINKS[roman type][line break]";
				Recover Drinks;
				if crashdebug is 1:
					say "Checkpoint 4.";
				Recover Collectibles;
				if crashdebug is 1:
					say "Checkpoint 5.";
				if debugmode is 1, say "[line break][bold type]RECOVERING CONTAINERS[roman type][line break]";
				Recover Containers;
				if crashdebug is 1:
					say "Checkpoint 6.";
				if debugmode is 1, say "[line break][bold type]RECOVERING ROOMS[roman type][line break]";
				Recover Rooms;
				if crashdebug is 1:
					say "Checkpoint 7.";
			if debugmode is 1, say "[line break][bold type]RECOVERING PLAYER[roman type][line break]";
			Recover the Player;
			if crashdebug is 1:
				say "Checkpoint 8.";
			scramble items;
			set up monsters;
			if debugmode is 1, say "Finished setting up monsters.";
			if the location of the player is unplaced or the location of the player is unspawnable: [To stop a gamebreaking bug where the tile of the player was not used]
				if playerRegion is Woods:
					now the player is in Woods01;
				otherwise if playerRegion is Hotel:
					now the player is in Hotel01;
				otherwise if playerRegion is Mansion:
					now the player is in Mansion01;
				otherwise:
					now the player is in Dungeon11;
			now the location of the player is discovered;
			say "[one of]You wake up, and realise you are lying face down[if the location of the player is OL], still[end if] in the [printed name of the location of the player][if the urine-puddle of the location of the player > 0], surrounded by a puddle of [urine][end if]. Your body feels like it has significantly recovered and there are no monsters or traps anywhere to be seen. The world around you looks different, suggesting that the entire game world may have been reset, but with you still in it! [if pubic hair images visible is 0][otherwise if the extra lives of the player <= 0]You notice that your pubic hair has completely gone, which reminds you that this is your last life. [otherwise if pubic hair images visible > the extra lives of the player]You notice that your pubic hair has gotten shorter and smaller, a cruel way to track how few tries you have left. [end if][line break][variable custom style]How long was I out for?[roman type][line break]A hologram of yourself in the virtual chamber shimmers into existence above you for a few seconds. It looks like you get to see exactly what they have done to you.[or]You wake up, again lying face down, this time in the [printed name of the location of the player]. Once again a hologram of your real self appears in front of you.[stopping]";
			say "You are [RealDesc]";
			if the pink pill is not held by the player and dungeon chains is not worn:
				say "You [one of][or]once again [stopping]find a pink pill inside your clenched fist.";
				now the pink pill is held by the player;
			if Newly-tattooed is 1:
				say "Your lower back feels sore, and when you look you realise you've had the word 'PROPERTY' tattooed on your back! Oh no!";
				now Newly-tattooed is 0;
			if inhuman pregnancy is 2 and tentacled is 1 and the player is possessing a vagina:
				now tentacled is 0;
				now player-breeder is in the location of the player;
				say "You see a suspiciously familiar body wrapped up by tentacles and stuck to the wall. Oh dear...";
				if magical-maid-outfit is worn:
					now magical-maid-outfit is in Holding Pen;
					let MH be a random worn maid headdress;
					if MH is clothing, now MH is in Holding Pen;
					now player-breeder is maid-history;
				otherwise:
					now player-breeder is not maid-history;
				try examining player-breeder;
			check immobility;
			refresh windows;
			zero focus stuff;
			display focus stuff;
			stop the action;
	otherwise:
		stop the action.

[!<SetLeftovers>+

We put an object in the room that contains some description about how the player fainted there in the past.

+!]
To Set Leftovers:
	repeat with X running through leftovers in the location of the player:
		remove X from play;
	let L be a random off-stage leftover;
	now L is in the location of the player;
	now the leftover-type of L is the fainting reason of the player.

[!<AThingIsImmuneToChange>+

Some things don't get reset when the player faints.

+!]
Definition: a thing (called I) is immune to change:
	if I is held or I is in the location of the player or I is in pink wardrobe or I is in HoleInWall or I is penetrating a body part or I is store or I is in a pedestal or I is in Predicament-Pen, decide yes;
	if I is in School15:
		if I is predicament-fixed clothing, decide yes;
	decide no.

[!<RecideWhichObjectIsTheBiggestJewel>+

We remove the biggest jewel in the game universe when the player faints, this is how we calculate which jewel is the biggest jewel.

+!]
To decide which object is the biggest jewel:
	let N be 0;
	let bigJ be nothing;
	repeat with J running through in-play plentiful accessories:
		if the price of J > N and J is not in holding pen:
			now N is the price of J;
			now bigJ is J;
	decide on bigJ.

[!<RecideWhichObjectIsTheBiggestHeldJewel>+

Maybe an NPC wants to take away the player's best jewel.

+!]
To decide which object is the biggest held jewel:
	let N be 0;
	let bigJ be nothing;
	repeat with J running through held plentiful accessories:
		if the price of J > N:
			now N is the price of J;
			now bigJ is J;
	decide on bigJ.

To Recover Clothing:
	repeat with I running through clothing:
		now I is not stuck;
		unless I is immune to change or map reset is 0:
			only destroy I;
		if I is worn yoga pants:
			if I is cursed:
				if cock pacifier is off-stage and cock pacifier is actually summonable:
					summon cock pacifier cursed;
					say "[bold type]As you are being warped back into the game, you feel your mouth filled with a [ShortDesc of cock pacifier][bold type]![roman type] Somehow you know this is the doing of your [ShortDesc of I]...";
			otherwise:
				now I is cursed;
		if I is worn store thing, compute stealing of I.

To Recover Containers:
	repeat with I running through containers:
		unless I is immune to change:
			now I is closed;
			now the prevsearch of I is 0;
			now I is in holding pen.

To Recover Collectibles:
	repeat with C running through on-stage collectibles:
		unless C is immune to change, destroy C;
	repeat with C running through on-stage recipes:
		unless C is immune to change, destroy C;
	repeat with C running through on-stage lubricant:
		unless C is immune to change, destroy C;
	now the pink pill is held by the player.

To Recover Drinks:
	repeat with I running through bottles:
		unless I is immune to change:
			destroy I;
	repeat with D running through on-stage dispensers:
		now D is in Holding Pen.

To Recover Monsters:
	unless the player is in Dungeon35, destroy a random lake monster;
	repeat with M running through threatening monsters:
		if M is alive:
			if map reset is 1 or M is slutty sister, set up M;
			if (M is in the location of the player or M is nearby) and M is not slutty sister and M is not vine boss and M is not caged, summon M; [Move NPCs away from the player]
	WomanSluttify.

To totally clean (R - a room):
	now the semen-puddle of R is 0;
	now the urine-puddle of R is 0;
	now the milk-puddle of R is 0;
	now the sprinkle-puddle of R is 0;

To Recover Rooms:
	repeat with R running through labyrinth rooms:
		now Neighbour Finder is R;
		unless R is the location of the player, totally clean R;
		unless R is the location of the player or R is Dungeon12, now R is not smoky; [All rooms except the royal chambers lose pink smoke]
		unless R is Dungeon10 or R is Dungeon11 or R is Dungeon12 or R is Dungeon32: [The first 4 rooms don't change location or configuration, everything else is reset]
			now the grid position of R is <0,0,0>;
			repeat with D running through N-viable directions:
				change the D exit of R to Solid Rock;
			now R is not discovered;
			now R is not seen;
			now R is unvisited;
		if the player is not in Dungeon10 and the player is not in Dungeon11 and the player is not in Dungeon12 and the player is not in Dungeon32: [If the player is not in the dungeon, we still hide the map location of these locations.]
			now Dungeon10 is not discovered;
			now Dungeon10 is not seen;
			now Dungeon10 is unvisited;
			now Dungeon11 is not discovered;
			now Dungeon11 is not seen;
			now Dungeon11 is unvisited;
			now Dungeon12 is not discovered;
			now Dungeon12 is not seen;
			now Dungeon12 is unvisited;
			now Dungeon32 is not discovered;
			now Dungeon32 is not seen;
			now Dungeon32 is unvisited;
	repeat with R running through jungle rooms: [Every room in the woods is reset]
		now Neighbour Finder is R;
		now R is not discovered;
		unless R is the location of the player, totally clean R;
		now the grid position of R is <0,0,0>;
		repeat with D running through N-viable directions:
			change the D exit of R to Solid Rock;
	repeat with R running through modern rooms:
		now Neighbour Finder is R;
		now R is not discovered;
		unless R is the location of the player, totally clean R;
		now the grid position of R is <0,0,0>;
		repeat with D running through N-viable directions:
			change the D exit of R to Solid Rock;
	repeat with R running through haunted rooms:
		now Neighbour Finder is R;
		now R is not discovered;
		unless R is the location of the player, totally clean R;
		[if R is Mansion00:
			if the location of the player is R, now the player is in Mansion01;]
		now the grid position of R is <0,0,0>;
		repeat with D running through N-viable directions:
			change the D exit of R to Solid Rock;
		if R is the location of the player, now the slime-puddle of R is 0;
	repeat with F running through on-stage furniture:
		unless F is permanent fixture, destroy F;
	[Now we need to make the three non-west exits to the hallway at the start of the game available for connections again]
	change the north exit of Dungeon32 to Solid Rock;
	change the east exit of Dungeon32 to Solid Rock;
	change the south exit of Dungeon32 to Solid Rock;
	now Terra Incognita is open;
	if crashdebug is 1:
		say "Room Checkpoint 1.";
	Set Up The Dungeon;
	if crashdebug is 1:
		say "Room Checkpoint 2.";
	if the player is not in the dungeon or dungeon portal is in Dungeon10, Set Up The Woods;
	if crashdebug is 1:
		say "Room Checkpoint 3.";
	if playerRegion is Hotel or dungeon portal is in Dungeon10, Set Up The Hotel;
	if crashdebug is 1:
		say "Room Checkpoint 4.";
	if playerRegion is Mansion, Set Up The Mansion;
	if crashdebug is 1:
		say "Room Checkpoint 5.".

[!<RecoverThePlayer>+

Return the player to a playable state.

+!]
To Recover the Player:
	SemenPuddleUp (the semen coating of face + the semen coating of breasts + the semen coating of thighs + the semen coating of hair) / 2;
	now the semen coating of face is 0;
	now the semen coating of hair is 0;
	now the urine coating of hair is 0;
	now the water-drench of hair is 0;
	now the semen coating of breasts is 0;
	now the semen coating of hips is 0;
	now the semen coating of belly is 0;
	now the semen coating of thighs is 0;
	now the air volume of breasts is 0;
	[now the flesh volume of thighs is 0;
	now the flesh volume of arms is 0;
	now the flesh volume of belly is 0;]
	now the squirt timer of belly is 0;
	now the suffocation of the player is 0;
	repeat with C running through throater things penetrating face:
		only destroy C; [otherwise the suffocation continues]
	now the throne is not filling asshole;
	now the throne is not untriggered;
	now the throne is not triggered;
	MilkPuddleUp the milk volume of breasts / 2;
	now the milk volume of breasts is the square root of the lactation rate of breasts;
	now the lactation rate of breasts is 0;
	now the air volume of belly is 0; [always deflate belly of air even if ass is plugged]
	let AP be a random thing penetrating asshole;
	if AP is nothing or the player is in Dungeon19:
		if AP is a thing:
			now AP is in the location of the player;
			dislodge AP;
		SemenPuddleUp the semen volume of belly / 2;
		now the soreness of asshole is 0;
		now the tolerated of asshole is 0;
		now the openness of asshole is the real openness of asshole;
		MilkPuddleUp the milk volume of belly / 2;
		if watersports mechanics is 1, UrinePuddleUp (the urine volume of belly + the urine coating of hair) / 2;
		empty belly liquids;
		while the small egg count of belly > 0:
			decrease the small egg count of belly by 1;
			let E be a random off-stage small egg;
			if E is a thing, now E is in the location of the player;
		while the medium egg count of belly > 0:
			decrease the medium egg count of belly by 1;
			let E be a random off-stage medium egg;
			if E is a thing, now E is in the location of the player;
		while the large egg count of belly > 0:
			decrease the large egg count of belly by 1;
			let E be a random off-stage large egg;
			if E is a thing, now E is in the location of the player;
	if the player is possessing a vagina and the number of things penetrating vagina is 0:
		now the soreness of vagina is 0;
		now the tolerated of vagina is 0;
		now the openness of vagina is the real openness of vagina;
	if the pregnancy of the player is 0:
		cancel father material;
		if the player is possessing a vagina and the number of things penetrating vagina is 0:
			WombEmpty the womb volume of vagina;
			SemenPuddleUp the semen volume of vagina / 2;
			now the semen volume of vagina is 0;
	now the body soreness of the player is 0;
	now the fatigue of the player is 0;
	now the stomach-water of the player is 3;
	now the stomach-semen of the player is 0;
	now the stomach-milk of the player is 0;
	now the stomach-urine of the player is 0;
	now the stomach-food of the player is 2;
	if the bladder of the player + the delayed bladder of the player > 0 and watersports mechanics is 1:
		let P be a random bottom level pee protection clothing;
		if P is clothing:
			if P is fluid vulnerable, UrineSoakUp P by the bladder of the player + the delayed bladder of the player;
		otherwise:
			UrinePuddleUp the bladder of the player + the delayed bladder of the player;
		now the bladder of the player is 0;
		now the delayed bladder of the player is 0;
	now the stance of the player is 1;
	allocate 0 seconds;
	now last-lactated-time is 0;
	now milking is 0;
	now the alert of the player is 0;
	now delayed stand is 0;
	now delayed fainting is 0;
	now delayed urination is 0;
	now player-currently-resting is 0;
	now the flesh volume of breasts is the real flesh volume of breasts;
	now the thickness of hips is the real thickness of hips;
	now the flesh volume of hips is the real thickness of hips;
	now the air volume of hips is 0;
	now the raw largeness of hair is the real largeness of hair;
	[now the fake largeness of hair is 0;]
	now the size of penis is the real size of penis;
	if the size of penis < min penis size and the player is sexed male, now the size of penis is min penis size;
	now the size of scrotum is the real size of scrotum;
	now the arousal of the player is 0;
	if the latex-transformation of the player > 0:
		if witch is alive and witch is friendly:
			let R be a random recipe for latex curse reversal;
			unless R is in-play, now R is in Hotel25;
			let F be a random fae mushroom;
			unless F is in-play, now F is in Woods01;
		otherwise:
			carry out LatexCurseRemoval;
	[Now we give the player some stats back]
	if the raw strength of the player < the starting strength of the player, now the raw strength of the player is the starting strength of the player;
	if the raw dexterity of the player < the starting dexterity of the player, now the raw dexterity of the player is the starting dexterity of the player;
	if the raw intelligence of the player < the starting intelligence of the player and the sex addiction of the player < 20, now the raw intelligence of the player is the starting intelligence of the player;
	now busy is 0;
	if debugmode > 0, say "Finished recovering player.".

To Recover Traps:
	repeat with I running through on-stage traps:
		if I is the throne:
			reset I;
			now I is not triggered;
			now I is untriggered;
		otherwise if map reset is 1:
			destroy I;
		otherwise:
			dislodge I;
	repeat with B running through on-stage barriers:
		destroy B.

The player has a number called fainting reason. The fainting reason of the player is usually 0.


A leftover is a kind of thing.
A leftover is scenery.
A leftover has a number called leftover-type.
The leftover-type of a leftover is usually 0.
There are 25 leftovers.

Before doing something to a leftover:
	print the you can't see message instead.

Before doing something when a leftover is the second noun:
	print the you can't see message instead.

To say ExamineDesc of (L - a leftover):
	say "[LeftoverDesc the leftover-type of the L]".

To say LeftoverDesc (N - a number):
	say "A dusty outline of your previous body can be seen on the floor here.[line break]";

To say LeftoverDesc (N - 3):
	say "A murky outline of your previous body can be seen on the floor here.[line break]";

To say LeftoverDesc (N - 4):
	say "A dusty outline of a heavily pregnant woman can be seen on the floor here.[line break]";

To say LeftoverDesc (N - 9):
	say "A outline of [semen] shaped like your head and shoulders can be seen on the floor here.[line break]";

To say LeftoverDesc (N - 10):
	say "A dusty outline of your previous body can be seen on the floor here, with large pools of [semen] around the head and crotch areas.[line break]";

To say LeftoverDesc (N - 11):
	say "There is a large puddle of [semen] on the floor in front of the throne.[line break]";

To say LeftoverDesc (N - 13):
	say "Looks like a very messy fight happened here... oh, right.[line break]";

To say LeftoverDesc (N - 16):
	say "There are gallons of [semen] absolutely everywhere down here now - on the floor, on the walls, and even on the ceiling![line break]".

To say LeftoverDesc (N - 22):
	say "[LeftoverDesc 10]".

To say LeftoverDesc (N - 100):
	say "An unidentifiable body is on the ground here.[line break]";

[ FAINTING REASONS:
0 - Misc (unknown)
1 - Bed
2 - Vibrating Plug Panties
3 - Toilets
4 - Pregnancy
5 - Dildo pole hits on head
6 - Fatigue + ass hook
7 - Unable to jump from dildo
8 - generic suffocation
9 - wench suffocation
10 - belly overflow
11 - throne specific belly overflow
12 - Demoness penetrates sore ass
13 - Gladiator sword
15 - Thirst
16 - Vine Boss
17 - Full Cum Addiction
18 - Misc Orifice Soreness
22 - Nintendoll suffocation
23 - Drowned
]

[!<SayFirstTimeFaintingStory>+

This is what we say if the player has fainted for the first time (and didn't change sex).

+!]
To say First Time Fainting Story:
	say "BZZZZZZZZZzzzzzzzzz...[line break]";
	say "You feel weird. You feel like you are floating through a dream world. You slowly try to open your eyes, and realise they're already open, you just can't see anything. You realise you aren't breathing, and try to breathe in. When it doesn't work, you instantly realise what feels weird - your lungs are full of water! But somehow you aren't running out of oxygen. It takes you a long time to get used to the sensation of not needing to breathe.[line break]You try to move your arms, and realise you are completely underwater. You spread them out wide and in front of you, and you feel the metal walls of what must be the virtual reality machine capsule. What is going on?[line break][second custom style]'Oh, [if the player is gendered female or the bimbo of the player > 7]s[end if]he's woken up.'[roman type][line break]You hear the words shakily through the liquid you are floating in.[line break][second custom style]'Hey there, how are you doing? As per the contract, the longer you take to win the game, the longer we get to transform your body!'[line break][first custom style][line break]Transform my WHAT?[line break][second custom style][line break]'As you hopefully read, whenever your body proportions in-game are more girly than your body proportions in real life, we'll slowly use our state-of-the-art Hormone Fluid Chamber to make you just like your character! You might be able to feel some of the changes already.'[roman type][line break]";
	say "[if the real largeness of breasts > 1 and the real largeness of breasts < 4]You move your hands to your chest, where you can feel some breast-like bumps where before you had an essentially flat chest.[line break][otherwise if the real largeness of breasts > 3]You move your arms to your chest, where you can feel some already quite large breasts![line break][end if][if the bimbo of the player < 7][line break][first custom style]Oh no. This is not going according to plan![line break][end if][line break][second custom style]'Your character won't to be able to reduce her body proportions to below what your real life body is like, so be careful or you could be in a lot of trouble! And of course we *can* reverse the process for you, but it's very costly - you'd have to spend some of your winnings to do that! If you have any...[line break]'Anyway that's enough from us, time is ticking! Let's send you back into the game. Good luck baby!'[roman type][line break]".

[!<SayFirstTimeTGFaintingStory>+

This is what we say if the player has fainted for the first time (and did change sex).

+!]
To say First Time TG Fainting Story:
	say "BZZZZZZZZZzzzzzzzzz...[line break]You feel weird. You feel like you are floating through a dream world. You slowly try to open your eyes, and realise they're already open, you just can't see anything. You realise you aren't breathing, and try to breathe in. When it doesn't work, you instantly realise what feels weird - your lungs are full of water! But somehow you aren't running out of oxygen. It takes you a long time to get used to the sensation of not needing to breathe.[line break]You try to move your arms, and realise you are completely underwater. You spread them out wide and in front of you, and you feel the metal walls of what must be the virtual reality machine capsule. What is going on?[line break][second custom style]'Oh, [if the player is gendered female or the bimbo of the player > 6]s[end if]he's woken up.'[roman type][line break]You hear the words shakily through the liquid you are floating in.[line break][second custom style]'Hey there, how are you doing? As per the contract, the longer you take to win the game, the longer we get to transform your body!'[line break][first custom style][line break]Transform my WHAT?[line break][second custom style][line break]'As you hopefully read, whenever your body proportions in-game are more girly than your body proportions in real life, we'll slowly use our state-of-the-art Hormone Fluid Chamber to make you just like your character! You might be able to feel some of the changes already.'[roman type][line break]";
	say "[if the real largeness of breasts > 1 and the real largeness of breasts < 4]You move your hands to your chest, where you can feel some breast-like bumps where before you had an essentially flat chest.[line break][otherwise if the real largeness of breasts > 3]You move your arms to your chest, where you can feel some already quite large breasts![line break][end if][if the bimbo of the player < 7][line break][first custom style]Oh no. This is not going according to plan![line break][end if][line break][second custom style]'Your character won't to be able to reduce her body proportions to below what your real life body is like, so be careful or you could be in a lot of trouble! And of course we *can* reverse the process for you, but it's very costly - you'd have to spend some of your winnings to do that! If you have any...[line break]Something else feels off, but you can't tell what. You reach to scratch your balls, and squeal with shock as you find a vagina there instead. [second custom style]'SURPRISE!!!'[roman type][line break]The girl's voice is overly enthusiastic.[line break][second custom style]'[if the player is female]You got transformed into a girl in the game[otherwise]We finished shrinking down your old pee pee into nothing[end if], so we've already gone ahead and properly turned you into a girl! Well I mean obviously it's artificial, I mean we can't change your DNA, but we *can* give you this, and make sure that you're kept pumped full of girly hormones for the rest of your days with a special implant right where your prostate used to be!'[roman type][line break][if the bimbo of the player < 11]You thrash around as much as possible to show your frustration.[otherwise]You peel back the folds of your new pussy and timidly explore your new sex.[end if][line break][second custom style]'We'll take that to mean you like it! Well that's good because the reversal process is a bit sketchy and VERY expensive so it looks like you might be staying like this for a while longer! Anyway that's enough from us, time is ticking! Let's send you back into the game. Good luck baby!'[roman type][line break]".

[!<SayNextTimeFaintingStory>+

This is what we say if the player has fainted after the first time (and didn't change sex).

+!]
To say Next Time Fainting Story:
	say "BZZZZZZZZZzzzzzzzzz...[line break]You[one of][or] once again[stopping] wake up in the capsule. [if the extra lives of the player > 0][FaintingFlav][end if][line break]".

[!<SayTGFaintingStory>+

This is what we say if the player has fainted after the first time (and did change sex).

+!]
To say TG Fainting Story:
	say "BZZZZZZZZZzzzzzzzzz...[line break]You once again wake up in the capsule. Something feels off, but you can't tell what. You reach to scratch your balls, and [if the bimbo of the player < 11]freeze in terror[otherwise]squeal with surprise[end if] as you find a vagina there instead.[line break][second custom style]'SURPRISE!!!'[roman type][line break]The girl's voice is overly enthusiastic.[line break][second custom style]'[if the player is female]You got transformed into a girl in the game[otherwise]We finished shrinking down your old pee pee into nothing[end if], so we went ahead and properly turned you into a girl! Well I mean obviously it's artificial, I mean we can't change your DNA, but we *can* give you this, and make sure that you're kept pumped full of girly hormones for the rest of your days with a special implant right where your prostate used to be!'[roman type][line break]You find yourself consumed by curiosity, peeling back the folds of your new pussy and timidly exploring your new sex.[line break][second custom style]'We'll take that to mean you like it! Well that's good because the reversal process is a bit sketchy and VERY expensive so it looks like you might be staying like this for a while longer! Anyway that's all we wanted to say this time really, so we're going to send you back into the game now. What an amazing opportunity, to get to try out your new fuck hole without any risk of repercussions! Well I guess that's not quite true, now I think about it...'[roman type][line break]Her voice slowly fades away.";

[!<SayFaintingFlav>+

The girls make a comment depending on the way the player fainted.

+!]
To say FaintingFlav:
	say "[second custom style][FaintingFlav the fainting reason of the player][roman type][line break]";
	now the fainting reason of the player is 0.

To say FaintingFlav (N - a number):
	if the bimbo of the player < 6:
		say "'How's it going baby? Looks like you're finding the game pretty difficult, huh? Oh well, better luck next time!'";
	otherwise if the bimbo of the player < 12:
		say "'How's your head feeling baby? I bet you're starting to crave orgasms now aren't you? Don't worry, you can admit it to us...'";
	otherwise:
		say "'Uh-oh, I don't think you're ever going to win when you can't take your mind off sex, do you? Keep on trying hun!'".

[1 and 2 currently unused]

To say FaintingFlav (N - 3):
	say "'[one of]Eww, what a nasty way to go! Gross. Oh well, try and avoid that room in the future if you're already feeling unwell. Good luck with your next attempt...'[or]We did warn you to avoid that room. Did you not learn? Come on, try again now. And this time, learn from your mistakes...'[stopping]".

[4 unused]

To say FaintingFlav (N - 5):
	say "'[one of]Ouch! That looks like it hurt. Crawling around is dangerous, especially when your tits are that huge. Oh well, hopefully you'll do better this time...'[or]We did warn you to avoid crawling around. Did you not learn? Come on, try again now. And this time, learn from your mistakes...'[stopping]".

To say FaintingFlav (N - 6):
	say "'[one of]Oof! Well, what did you really expect when you were waking around with your butthole exposed? Of course that's going to happen. Next time, wear some underwear. Or, you know, get a bit more flexible! Either one would help.'[or]We did warn you to avoid exploring further when you have no underwear. Did you not learn? Come on, try again now. And this time, learn from your mistakes...'[stopping]".

To say FaintingFlav (N - 7):
	say "'[one of]Wow, what an unusual way to go! It's not very difficult to jump off that dildo you know, your body must have been pretty heavy from all those shape adjustments, or were you stuck on some high heels that prevented you from jumping at all? Let's see if this reset helps...'[or]Absolutely awful. How could you let that happen to you again? Come on, try again now. And this time, learn from your mistakes...'[stopping]".

To say FaintingFlav (N - 8):
	say "'[one of]Hmm, perhaps you bit off a bit more than you could chew there! If you needed to breathe that badly, all you needed to do was make her cum.'[or]You suffocated again?! You're hopeless!'[stopping]".

To say FaintingFlav (N - 9):
	say "'[one of]Not going to lie, that was your own fault entirely. Don't provoke that girl unless you're sure you can take her. Back in you go, and this time, be less aggressive...'[or]You lost another fight with the wench?! Did you not learn? Come on, try again now. And this time, learn from your mistakes...'[stopping]".

To say FaintingFlav (N - 10):
	say "'[one of]Ah, yes, that will happen if your ass gets filled too much. You don't have an unlimited capacity to hold stuff inside of you! Bear that in mind next time...'[or]Oh come on. you've already fainted from your ass getting too full, didn't you learn anything?! We're sending you back into the game. And this time, learn from your mistakes...'[stopping]".

To say FaintingFlav (N - 11):
	say "'[one of]Ah, yes, that will happen if your ass gets filled too much. And the throne is particularly good at filling you up very quickly. You don't have an unlimited capacity to hold cum! Bear that in mind next time...'[or]Oh come on. you've already fainted from the throne filling you up too much, didn't you learn anything?! We're sending you back into the game. And this time, learn from your mistakes...'[stopping]".

[12 and 13 and 14 and 15 unused]

To say FaintingFlav (N - 16):
	say "'[one of]The vine boss is a very difficult monster... maybe if [he of vine boss]'s too tough for you, you should just leave [him of vine boss] alone? It's not worth losing all that progress you've made if you fail! If you do decide to fight [him of vine boss] again, good luck sweetie!!'[or]Oh dear, you lost to [him of vine boss] again? Maybe it really is time to give up with that approach baby. Be less over-confident this time!'[stopping]".

To say FaintingFlav (N - 17):
	say "'Uh-oh... looks like you were enjoying that a bit too much. I think it'll be a miracle for you to win the game the proper way at this point. You could always try fucking your way out, though!'".

To say FaintingFlav (N - 18):
	say "'[one of]It's important to keep your internal soreness levels down, if you want to survive this game. They do go down slowly by themselves, but there are items you can find and certain things in the statue hall that you can... *ahem* interact with to reduce them further if you're in trouble!'[or]Oh boy, soreness again? If this keeps being an issue for you, maybe you should take a closer look at the statues in the statue hall? You might find something useful.'[stopping]".

To say FaintingFlav (N - 19):
	say "'[one of]Wee! That looked fun. No? You didn't find getting popped fun? Oh well I guess you should try to avoid it happening again, eh? Anyway, back into the game you go.'[or]Oopsie! You keep ballooning out of control, don't you? You should probably find a way to stop that. We'll be sending you back into the game now...'[stopping]".

To say FaintingFlav (N - 20):
	say "'[one of]Oof, that wooden horse is mean, isn't it? Hopefully you'll be luckier with getting off quickly next time...'[or]Wow, the wooden horse again? You should stop wandering around the Woods like that if you can't take the heat...'[stopping]".

To say FaintingFlav (N - 21):
	say "'Careful of those cultists; they don't appreciate intruders.'".

To say FaintingFlav (N - 22):
	say "'It was really fun suffocating you with my face. If you don't want to meet the same end next time then I suggest letting your stomach empty a bit first. Oh, and the more you love cum, the easier it'll be to keep it all down.'".

To say FaintingFlav (N - 23):
	say "'Next time, you should get out of the water before you get so tired.'".

To say FaintingFlav (N - 24):
	say "'Next time, you should leave the room as soon as [he of minotaur] starts swinging the cage around. Honestly, MOST players slutty enough to act like you are already too voluptuous to get dragged in.'".

To say FaintingFlav (N - 50):
	say "'It was all getting a bit much for you, was it? No need to feel ashamed, it happens to the best of us. Have as much time as you need to rest up and recover.'".

Fainting ends here.
