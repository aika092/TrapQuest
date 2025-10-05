Woman Framework by Monster Framework begins here.

woman-player is a monster.

woman-player is intelligent. woman-player has a number called delayed sluttification. woman-player can be stranger or introduced. woman-player is stranger. The leftover-type of woman-player is 131. woman-player can be angered. the favour of woman-player is 10. woman-player can be truly-female or truly-male. woman-player is truly-female. woman-player can be partially-enslaved.

Definition: woman-player is normally ally:
	if the favour of it >= 10, decide yes;
	decide no.

Definition: woman-player is summoningRelevant: decide no. [Doesn't count towards the number of monsters in the region for the purposes of summoning portals.]

woman-player has a number called woman-status.
woman-player has a number called woman-pregnancy. [0: not preg. 1: not showing. 2: normal preg. 3: tentacle preg.]

woman-player has a number called woman-bimbo. the woman-bimbo of woman-player is 2.
woman-player has a number called woman-old-bimbo. the woman-old-bimbo of woman-player is 2.

woman-player has a text called current-title. Understand the current-title property as describing woman-player. The current-title of woman-player is "Player".
woman-player has a text called old-title. Understand the old-title property as describing woman-player. The old-title of woman-player is "Player".

woman-player has a text called current-name. Understand the current-name property as describing woman-player.
woman-player has a text called old-name. Understand the old-name property as describing woman-player.

woman-player has a number called woman-diaper-state.
woman-player has a number called woman-latest-diaper-state.

Understand "mysterious", "woman" as woman-player.
The text-shortcut of woman-player is "wo".

To say ShortDesc of (M - woman-player):
	say "[if M is stranger]the [end if][FuckerDesc of M]".

To say NameDesc of (M - woman-player):
	say "[input-style][FuckerDesc of M][roman type]".
To say BigNameDesc of (M - woman-player):
	say "[input-style][BigFuckerDesc of M][roman type]".
To say FuckerDesc of (M - woman-player):
	say "[if M is stranger]the mysterious woman[otherwise][womanName][end if]".
To say BigFuckerDesc of (M - woman-player):
	say "[if M is stranger]The mysterious woman[otherwise][womanName][end if]".

To say womanTitle:
	say "[if the woman-old-bimbo of woman-player is the woman-bimbo of woman-player][current-title of woman-player][otherwise][old-title of woman-player][end if]".

To say womanName:
	say "[if the woman-old-bimbo of woman-player is the woman-bimbo of woman-player][current-name of woman-player][otherwise][old-name of woman-player][end if]".

To update woman name and bimbo:
	if the woman-old-bimbo of woman-player is not the woman-bimbo of woman-player:
		now the woman-old-bimbo of woman-player is the woman-bimbo of woman-player;
		now the old-name of woman-player is the current-name of woman-player;
		now the old-title of woman-player is the current-title of woman-player.

To uniquely interest (M - woman-player):
	if debugmode > 1, say "Setting [NameDesc of M] to interested.";
	update woman name and bimbo.

To set up (M - woman-player):
	now the monstersetup of M is 1;
	[if lady fetish is 2, now M is truly-male;]
	now the raw difficulty of M is 17;
	now the health of M is the maxhealth of M;
	calm M.

To decide which number is the difficulty of (M - woman-player):
	decide on the raw difficulty of M + game difficulty - (woman-bimbo of M * 2).

Definition: woman-player is calculated unfriendly:
	if it is angered and it is not pacified, decide yes;
	decide no.
Definition: woman-player is uniquely unfriendly: decide no.
To decide which number is the bimbo tolerance of (M - woman-player):
	decide on 100. [If we don't make this prohibitively high, there can be some weird difficult-to-debug outcomes surrounding the overriding of uniquely unfriendly above, where the NPC is objectifying but friendly, and somehow attacking while friendly.]
To decide which number is the bab tolerance of (M - woman-player):
	decide on 100.
Definition: woman-player is objectifying the player: decide no.
Definition: woman-player is babifying the player: decide no.

To womanSluttify:
	if woman-player is introduced and the woman-bimbo of woman-player < 6:
		increase the delayed sluttification of woman-player by 1.
To ImmediatewomanSluttify:
	if woman-player is introduced and the woman-bimbo of woman-player < 6:
		increase the woman-bimbo of woman-player by 1;
		update name of woman-player.
To ImmediatewomanUnsluttify:
	if woman-player is introduced and [the woman-bimbo of woman-player >= 2]the woman-bimbo of woman-player > 0:
		decrease the woman-bimbo of woman-player by 1;
		update name of woman-player;
To womanUnsluttify:
	if woman-player is introduced and the woman-bimbo of woman-player > 0:
		decrease the delayed sluttification of woman-player by 1.

This is the spawn initial woman rule:
	if woman-player is off-stage and woman-player is stranger and berri fetish is 0, now woman-player is in Woods01.
The spawn initial woman rule is listed in the setting up woods monsters rules.

To uniquely destroy (M - woman-player): [Are there any special rules we need to follow?]
	now M is permanently banished. [This should stop her spawning again.]

Definition: woman-player is human: decide yes.


Part - Magic Pistol

magic pistol is an equippable. magic pistol is unique. magic pistol is zap ready. magic pistol is manly.

The printed name of magic pistol is "[clothing-title-before]magic pistol[clothing-title-after]". The text-shortcut of magic pistol is "mgp". Understand "gun" as magic pistol.

To decide which figure-name is the clothing-image of (W - magic pistol):
	decide on figure of magic pistol.

Part 2 - Motion

To compute monstermotion of (M - woman-player):
	if the woman-status of M is 80 and the stool-scene of M is 0: [She's an anal stool and the player hasn't encountered her yet]
		check seeking 1 of M;
	otherwise if M is introduced and the woman-status of M < 90: [90 or above means she's spawned to get fucked, so she should stay still]
		now neighbour finder is the location of M;
		let A be a random N-viable direction;
		if A is a direction and a random number between 1 and 100 > 75:
			let P be the room A from the location of M;
			if P is not Dungeon12:
				blockable move M to A;
				compute monstermotion reactions of M.

To compute (M - woman-player) seeking (D - a direction):
	if the woman-status of M < 90: [90 or above means she's spawned to get fucked and should stay still]
		try M going D;
		compute monstermotion reactions of M.

Part - Summoning

[
STATES:
0: Woods exploring.
1: Dungeon crawling, has appeared randomly / waiting for event.
2: Has appeared to save you from bondage.
3: Dungeon crawling, just released minotaur.
4: Hotel exploring, has appeared randomly
5: Hotel exploring, has appeared via dildo seat scene
6: Dungeon crawling, just crafted potion.
7: Just freed the player from bondage (or told them no)

==Anything below 10 can be interpreted as normal wandering and hijacked for a scene==

25: DQ only for now: After stuck in hole in wall
26: DQ: After matron play scene.
27: DQ: After matron fight scene.
28: DQ: Changing station
29: Just rescued from the vine boss hole
==Anything below 30 implies that a scene has just ended so a new one shouldn't start, but she's able to move around as normal==

==Anything 80 or above prevents combat & protection==
80: TQ: Anal only stool
81: DQ: Hiding messy diaper
82: TQ: Pregnant

==Anything 90 or above prevents movement==
90: Appeared by being fucked by vines in the woods
91: Appeared by being fucked by mechanic in the hotel
92: Appeared to try the deepthroat discount challenge with the shopkeeper
93: Appeared in the dominatrix's predicament contraption
94: Interacting with a hypno trap
95: Released from the toilet
96: Scene with hotel beds & patrons
97: Appeared by sitting on the throne
98: DQ: Diaper pail; TQ: Buried
99: DQ: Ass hook
100: Matron / Senior bellboy fight scene
101: DQ: Appeared by being in the hotel urinal scene with the wrestler.
102: DQ: Appeared holding up the lid for the changing station tank.
103: DQ: Appeared in Christmas box.
]

Definition: woman-player is uniquely unreactive:
	if the woman-status of woman-player is 80, decide yes; [anal only stool]
	if the woman-status of woman-player >= 90, decide yes;
	decide no.

Definition: woman-player is easy-steal:
	if the woman-status of woman-player is 80, decide yes; [anal only stool]
	if the woman-status of woman-player >= 90, decide yes;
	decide no.

Definition: woman-player is summon appropriate: decide no. [Can she be randomly selected to be summoned?]
Definition: woman-player is redeploy appropriate:
	if it is not angered and it is summon-available and it is introduced and it is not partially-enslaved and the woman-pregnancy of it < 2 and (it is off-stage or (the woman-status of it < 10 and it is not in the location of the player and it is not nearby and it is not caged)):
		if the number of interested regional monsters is 0, decide yes;
	decide no.
Definition: woman-player is relaxed redeploy appropriate: [Allows for interested NPCs]
	if it is not angered and it is summon-available and it is introduced and it is not partially-enslaved and the woman-pregnancy of it < 2 and (it is off-stage or (the woman-status of it < 10 and it is not in the location of the player and it is not nearby and it is not caged)), decide yes;
	decide no.
Definition: woman-player is deploy appropriate: [currently unused]
	if it is not angered and it is angry deploy appropriate, decide yes;
	decide no.
Definition: woman-player is angry deploy appropriate:
	if it is off-stage and it is summon-available and it is introduced and (playerRegion is Dungeon or playerRegion is Woods or playerRegion is Hotel) and the location of the player is not nonstandard, decide yes;
	decide no.

To deploy (M - woman-player) with woman-status (V - a number):
	if debugmode > 0, say "[input-style]Deploying [womanName] with woman-status [V].[roman type][line break]";
	now the woman-status of M is V;
	now the sleep of M is 0;
	deinterest M;
	now M is unleashed;
	now the health of M is the maxhealth of M;
	if M is introduced and M is summon-available:
		if V is 2:
			now M is in the location of the player;
			say "[bold type]You spot [NameDesc of M] trotting up to you![roman type] [big he of M] seems concerned at your state of affairs.";
			interest M;
		otherwise if V is 3:
			now M is in Dungeon06;
			if the player is in Dungeon06, say "[bold type]You spot [NameDesc of M] trotting up to you![roman type] [big he of M] grins seemingly oblivious to your presence, and then pulls the foreboding looking lever before you can react.";
			let DB be a random alive caged dungeon boss;
			now DB is unleashed;
			if the player is in Dungeon36, say "You hear a mechanism whirring and watch with [if the bimbo of the player < 8]horror[otherwise if the bimbo of the player < 13]terrified excitement[otherwise]delight[end if] as [NameDesc of DB][']s cage suddenly swings open!";
			otherwise say "You hear a mechanism whirring, and what sounds like a metal door swing open.";
		otherwise if V is 82:
			now M is in the location of the player;
			say "[bold type]You spot [NameDesc of M] [bold type]waddling up to you, naked and with a very pregnant belly![roman type] [big he of M] seems rather tired and at the end of [his of M] tether.";
			interest M;
			say "[speech style of M]'Hey [NameBimbo]. I'm sorry I wish you didn't have to see me like this...'[roman type][line break]";
		otherwise:
			regionally place M.

To construct unique buttons for (M - woman-player):
	if the woman-status of M is 93 and the dominatrix-contraption-scene of M <= 6 and M is awake and ButtonTableFull is 0:
		unless dominatrix is interested and dominatrix is unfriendly and dominatrix is in the location of the player:
			choose a blank row in the Table of Buttons;
			now the ButtonImage entry is Figure of AddictionsButton;
			now the ButtonCommand entry is "search [text-shortcut of M]";
			now the ButtonColour entry is lightModeFullGreen;
			now the ButtonPriority entry is 1;
			if ButtonTableFull is 0 and the dominatrix-contraption-scene of M <= 2 and diaper quest is 0:
				choose a blank row in the Table of Buttons;
				now the ButtonImage entry is Figure of WrangledIcon;
				now the ButtonCommand entry is "pull [text-shortcut of M]";
				now the ButtonColour entry is lightModeFullGreen;
				now the ButtonPriority entry is 1;
	otherwise if the woman-status of M is 80 and the stool-scene of M < 2 and ButtonTableFull is 0:
		choose a blank row in the Table of Buttons;
		now the ButtonImage entry is Figure of WrangledIcon;
		now the ButtonCommand entry is "pull [text-shortcut of M]";
		now the ButtonPriority entry is 1;
		let CL be lightModeFullGreen;
		if the player is in danger, now CL is lightModeFullYellow;
		if the player is immobile, now CL is lightModeFullRed;
		now the ButtonColour entry is CL;
		if ButtonTableFull is 0 and the player is possessing a penis or there is a worn strapon-panties:
			choose a blank row in the Table of Buttons;
			now the ButtonImage entry is Figure of AnalButton;
			now the ButtonPriority entry is 1;
			now the ButtonCommand entry is "fuck [text-shortcut of M]";
			now the ButtonColour entry is CL;
	otherwise if the changing-station-tank-scene of M > 0 and ButtonTableFull is 0:
		choose a blank row in the Table of Buttons;
		now the ButtonImage entry is Figure of HandsButton;
		now the ButtonCommand entry is "pull rope";
		now the ButtonColour entry is lightModeFullGreen;
		now the ButtonPriority entry is 1;
		if the player is prone or the player is in danger, now the ButtonColour entry is lightModeFullYellow;
		if the player is immobile, now the ButtonColour entry is lightModeFullRed;
	otherwise if the woman-status of M is 103 and ButtonTableFull is 0: [diapered christmas gift]
		choose a blank row in the Table of Buttons;
		now the ButtonImage entry is Figure of WrangledIcon;
		now the ButtonCommand entry is "pull [text-shortcut of M]";
		now the ButtonPriority entry is 1;
		let CL be lightModeFullGreen;
		if the player is in danger, now CL is lightModeFullYellow;
		if the player is immobile, now CL is lightModeFullRed;
		now the ButtonColour entry is CL;
	otherwise if diaper quest is 0 and the woman-status of M is 98 and ButtonTableFull is 0: [buried urinal]
		choose a blank row in the Table of Buttons;
		now the ButtonImage entry is Figure of ToiletButton;
		now the ButtonCommand entry is "use urinal";
		now the ButtonPriority entry is 1;
		let CL be lightModeFullGreen;
		if the player is not able to use a urinal, now CL is lightModeFullYellow;
		if the player is immobile, now CL is lightModeFullRed;
		now the ButtonColour entry is CL.

The womanspawning rules is a rulebook.

A time based rule (this is the woman spawning rule):
	if woman-player is angry deploy appropriate:
		follow the womanspawning rules;
	if woman-player is off-stage and woman-player is not partially-enslaved and woman-player is not permanently banished:
		compute woman bimbo changes;
	otherwise if woman-player is not caged and woman-player is not in HoleInWall:
		if woman-player is not regional and (woman-player is not in WoodsBoss01 or playerRegion is not woods):
			vanish woman-player;
		otherwise if a random number between 1 and 40 is 1 or woman-player is asleep:
			unless woman-player is in the location of the player or woman-player is nearby or woman-player is stranger or (the woman-status of woman-player >= 80 and the woman-status of woman-player is not 98), vanish woman-player.

To compute woman bimbo changes:
	while the delayed sluttification of woman-player > 0:
		ImmediatewomanSluttify;
		decrease the delayed sluttification of woman-player by 1;
		if pregnancy fetish is 1 and the woman-pregnancy of woman-player is 0 and a random number between 2 and 12 < the woman-bimbo of woman-player, now the woman-pregnancy of woman-player is 1;
	while the delayed sluttification of woman-player < 0:
		ImmediatewomanUnsluttify;
		increase the delayed sluttification of woman-player by 1;
	update woman name and bimbo.

[These TQ-only rules need to go here so that they are in the correct order in the rulebook.]

This is the woman spawning pregnant rule:
	if pregnancy fetish > 0 and the woman-pregnancy of woman-player > 1 and (barbsummoned is true or a random number between 1 and 60 is 1):
		deploy woman-player with woman-status 82;
		compute addiction reflection on "pregnancy";
		rule succeeds.
The woman spawning pregnant rule is listed first in the womanspawning rules.

This is the woman spawning as a stool rule:
	if diaper quest is 0 and the player is the donator and the stool-scene of woman-player is 0:
		let R be a random number between 2 and 100; [This will be faster than checking her region so we prioritise it]
		if barbsummoned is true, now R is 0;
		if debuginfo > 1 and (playerRegion is Dungeon or playerRegion is Hotel), say "[input-style]Barbara stool scene summon check: RNG(2~100) = [R], needs to be below Barbara sluttiness ([woman-bimbo of woman-player]).[roman type][line break]";
		if R < the woman-bimbo of woman-player and (playerRegion is Dungeon or playerRegion is Hotel):
			deploy woman-player with woman-status 80;
			if debuginfo > 1, say "[input-style]Barbara summoned in [location of woman-player].[roman type][line break]";
			rule succeeds.
The woman spawning as a stool rule is listed last in the womanspawning rules.

This is the woman spawning to help the player with bondage rule:
	if bondage protection > 0 and there is worn locked clothing and portal gag is not worn and wrist collar bar is not worn and (barbsummoned is true or a random number between 1 and 60 is 1) and the player is not in danger:
		deploy woman-player with woman-status 2;
		rule succeeds.
The woman spawning to help the player with bondage rule is listed last in the womanspawning rules.

This is the woman spawning to release the boss rule:
	let M be a random alive caged dungeon boss;
	if M is monster and playerRegion is Dungeon and a random number between 4 and 500 < the woman-bimbo of woman-player:
		deploy woman-player with woman-status 3;
		rule succeeds.
The woman spawning to release the boss rule is listed last in the womanspawning rules.

This is the woman spawning in the region of the player rule:
	if barbsummoned is true or a random number between 1 and 80 is 1:
		if playerRegion is Dungeon:
			if diaper quest is 0 and the player is the donator and portal-bra is off-stage and woman-player is not partially-enslaved and the times-met of pimp > 0 and Hotel44 is discovered and the woman-bimbo of woman-player is 2, now woman-player is partially-enslaved;
			deploy woman-player with woman-status 1;
			rule succeeds;
		otherwise if playerRegion is Woods:
			deploy woman-player with woman-status 0;
			rule succeeds;
		otherwise if playerRegion is Hotel:
			deploy woman-player with woman-status 4;
			rule succeeds.
The woman spawning in the region of the player rule is listed last in the womanspawning rules.

woman-player has a number called hypno-scene.
woman-player has a number called human-toilet-scene. forbidden-key is an object that varies.
woman-player has a number called hotel-urinal-scene.
woman-player has a number called vine-scene.
woman-player has a number called vine-hole-scene.
woman-player has a number called mechanic-scene.
woman-player has a number called dominatrix-contraption-scene.
woman-player has a number called dominatrix-contraption-search.
woman-player has a number called shopkeeper-scene.
woman-player has a number called stool-scene.
woman-player has a number called throne-scene.
woman-player has a number called crafting-scene.
woman-player has a number called changing-station-tank-scene.
woman-player has a number called hole-in-wall-scene.
woman-player has a number called sword-stone-scene.

woman-player has a number called patron-scene-done.
[
0: Scene hasn't happened.
1: Scene has begun.
2: Climaxed
]
woman-player has a number called patron-scene-fighting.
[
0: Patrons happy
1: Patrons annoyed
2: Player chose to fight
]

Understand "vine", "vines" as woman-player when the woman-status of woman-player is 90.
Check pulling woman-player:
	if the woman-status of woman-player is 90 and the vine-scene of woman-player <= 5:
		if the player is not able to manually use their hands, do nothing instead;
		if the player is wrist bound behind, say "Unfortunately you can't really do that with your wrists bound behind you!" instead;
		if the player is immobile, say "You're a bit tied up at the moment!" instead;
		if the player is in danger, say "You're currently in combat! [big he of woman-player][']ll have to wait!" instead;
		WomanVinePull instead.

Chapter - Mechanic Scene

To compute traitor surrender to (M - a monster):
	decrease the traitor-hypno of hypno-lesson by 1;
	say "You consider attacking [NameDesc of M], but then something inside you urges you to [speech style of M]help your friend[roman type] instead. You find yourself dropping to your knees.";
	compute silent surrender to M.

Check slapping mechanic when the traitor-hypno of hypno-lesson > 0 and the woman-status of woman-player is 91:
	if the mechanic-scene of woman-player <= 3 and woman-player is in the location of the player and mechanic is unfriendly, compute traitor surrender to mechanic instead.
Check zapping mechanic with something when the traitor-hypno of hypno-lesson > 0 and the woman-status of woman-player is 91:
	if the mechanic-scene of woman-player <= 3 and woman-player is in the location of the player and mechanic is unfriendly, compute traitor surrender to mechanic instead.
Check kneeing mechanic when the traitor-hypno of hypno-lesson > 0 and the woman-status of woman-player is 91:
	if the mechanic-scene of woman-player <= 3 and woman-player is in the location of the player and mechanic is unfriendly, compute traitor surrender to mechanic instead.
Check kicking mechanic when the traitor-hypno of hypno-lesson > 0 and the woman-status of woman-player is 91:
	if the mechanic-scene of woman-player <= 3 and woman-player is in the location of the player and mechanic is unfriendly, compute traitor surrender to mechanic instead.

An all later time based rule (this is the mechanic finishes with woman rule):
	if the woman-status of woman-player is 91 and the mechanic-scene of woman-player <= 3 and mechanic is not in the location of the player:
		increase the mechanic-scene of woman-player by 1;
		if mechanic is not in the location of woman-player, now the mechanic-scene of woman-player is 4;
		if the mechanic-scene of woman-player is 4:
			now mechanic is unleashed;
			now woman-player is unleashed;
			bore mechanic;
			calm mechanic;
			WomanSluttify;
			FavourDown woman-player;
			now the sleep of woman-player is 300.

To say WaitingFlav of (M - a mechanic):
	unless the woman-status of woman-player is 91 and the mechanic-scene of woman-player <= 5 and woman-player is in the location of the player:
		say WaitingSpeechFlav of M;
		say WaitingActionFlav of M.

Chapter - Hotel Hypno Scene

A time based rule (this is the woman hypno hotel rule):
	if the woman-status of woman-player is 4 and woman-player is alive and the hypno-scene of woman-player is 0:
		if playerRegion is Hotel and woman-player is nearby:
			let Y be a random hypno trap in the location of woman-player;
			if Y is hypno trap:
				now Y is revealed;
				now Y is not untriggered;
				now the reset-timer of Y is 250;
				now the woman-status of woman-player is 94;
				say "[bold type]You spot [NameDesc of woman-player] nearby![roman type] [big he of woman-player] appears to be standing there, oblivious to your presence, transfixed by a screen. On the screen is [hypno content of Y]. You suppose you could go and attempt to rescue [him of woman-player], but you might get stuck looking at the screen yourself...";
				now the hypno-scene of woman-player is 1;
				increase the delayed sluttification of woman-player by 2.

To compute woman hypno shared progression:
	unless woman-player is angered:
		say "[BigNameDesc of woman-player] stands next to you, staring with exactly the same vacant expression as you probably have.";
		increase the delayed sluttification of woman-player by 1.

To compute woman hypno solo progression:
	say "[BigNameDesc of woman-player] drools a bit as [he of woman-player] watches the screen.";
	increase the delayed sluttification of woman-player by 1.

Chapter - Crafting Scene

Report going when the location is Dungeon37 and the woman-bimbo of woman-player is (4 + diaper quest) and the crafting-scene of woman-player is 0 and woman-player is redeploy appropriate:
	let W be woman-player;
	deploy W with woman-status 6;
	now W is in the location of the player;
	interest W;
	now the crafting-scene of W is 1;
	say WomanCraftSceneFlav;
	say "Do you drink it? ";
	if the player is consenting:
		say "You bravely swig the vial in a single gulp. ";
		if the player is getting unlucky:
			let L be the list of worn upgradable clothing;
			say "Almost immediately you can tell something is wrong. You feel uneasy[if the number of entries in L > 0]. And then the magic bursts out of your body and into your clothes![otherwise]... but nothing happens? Weird. Oh well, no harm done apparently.[end if]";
			repeat with C running through L:
				potentially transform C;
			if the number of entries in L > 0, say GotUnluckyFlav;
		otherwise:
			say "Almost immediately, you feel great! Your mind feels sharper and some of your new desires feel less important.";
			SexAddictDown 1;
			DiaperAddictDown 1;
			IntUp 1;
		StomachUp 1;
	otherwise:
		say "[BigNameDesc of W] takes the vial back and bravely swigs it in a single gulp. ";
		if a random number between 1 and 2 is 1:
			say "Almost immediately you can tell something is wrong.[line break][speech style of W]'I don't feel so good...'[roman type][line break]You see [his of W] mind going blanker as the magic potion transforms [his of W] clothes!";
			ImmediatewomanSluttify;
		otherwise:
			say "[line break][speech style of W]'Yeah, I feel amazing!'[roman type][line break]You see [his of W] mind becoming sharper as the magic potion transforms [his of W] clothes!";
			ImmediatewomanUnsluttify;
			if diaper quest is 1, ImmediatewomanUnsluttify;
		say MonsterDesc of W.

Part - Wandering

The woman wandering rules is a rulebook.

To decide which number is the bondage-favour-limit of (W - woman-player):
	decide on 10.

This is the woman helps the player remove bondage rule:
	if the woman-status of woman-player is 2 and there is worn locked clothing and the player is not at least partially immobile:
		if the favour of woman-player < the bondage-favour-limit of woman-player:
			say "[speech style of woman-player]'[one of]Oh god, you're never going to be able to continue like that. Oh, what's this?!'[or]Ooh, still having trouble with bondage, eh?'[stopping][roman type][line break][big he of woman-player] dangles a skeleton key in front of your face.[line break][second custom style]'It's such a shame that I don't feel like giving you this one, isn't it?'[roman type][line break]";
		otherwise:
			say "[speech style of woman-player]'[one of]Oh god, you're never going to be able to continue like that. Don't worry, I'll use this key I found!'[or]I guess I should let you have my key again, eh?'[stopping][roman type][line break]Do you let [him of woman-player] unlock your bondage?";
			if the player is consenting:
				say "Using the key, [he of woman-player] unlocks your bondage. The key then crumbles to dust.";
				repeat with C running through worn locked clothing:
					unlock C;
				say "[speech style of woman-player]'I hope I don't need it myself now, haha...'[roman type][line break]";
				increase the delayed sluttification of woman-player by 1;
			otherwise:
				say "[speech style of woman-player]'Are you sure?'[roman type][line break][BigNameDesc of woman-player] looks at you like [he of woman-player][']s worried about your state of mind, but then shrugs and drops the issue.";
		now the woman-status of woman-player is 7;
		rule succeeds.
The woman helps the player remove bondage rule is listed last in the woman wandering rules.

This is the woman gets bored and moves on rule:
	if the woman-status of woman-player < 80 and the friendly boredom of woman-player > 10 and the number of hotel bed in the location of the player is 0 and a random number from 1 to 36 is 1: [woman-status of 80+ means she was spawned to get fucked so she doesn't vanish]
		let M be woman-player;
		if M is in the Dungeon:
			let D be the best route from the location of M to Stairwell01 through placed rooms;
			unless D is nothing:
				say "[second custom style]'I think I'm going to go and revisit the Woods.'[roman type][line break][M] walks off towards the [D].";
				Vanish M;
				rule succeeds;
		otherwise if M is in the Hotel:
			let D be the best route from the location of M to Hotel01 through placed rooms;
			unless D is nothing:
				say "[second custom style]'I think I'm going to go and revisit the Woods.'[roman type][line break][M] walks off towards the [D].";
				Vanish M;
				rule succeeds;
		otherwise:
			let D be the best route from the location of M to Woods01 through placed rooms;
			unless D is nothing:
				say "[second custom style]'I think I'm going to go [one of]back and visit the Dungeon[or]visit the Hotel[purely at random].'[roman type][line break][M] walks off towards the [D].";
				Vanish M;
				rule succeeds.
The woman gets bored and moves on rule is listed last in the woman wandering rules.

Part - Combat

To check attack of (M - woman-player):
	if the woman-status of M < 80, check default attack of M.
Definition: woman-player is blocker:
	if the woman-status of woman-player < 80, decide yes;
	decide no.

To say AllyDamageFlav of (M - woman-player) on (X - a monster):
	say "[one of][line break][second custom style]'Let's do this!'[roman type][line break][or][line break][second custom style]'Take this!'[roman type][line break][stopping][line break][BigNameDesc of M] knees [NameDesc of X] with all [his of M] strength.".

To say AllyInstigated of (X - a monster):
	if X is intelligent, say "[BigNameDesc of X] looks really pissed off now![line break][variable custom style][if the bimbo of the player < 5]That wasn't the plan... wait why is [he of X] looking at ME angrily?![roman type][line break][otherwise if the player is able to speak]'I'm sorry, that wasn't my fault!'[roman type][line break][BigNameDesc of X] doesn't seem to care what you say, and seems mainly angry with you![otherwise]Uh-oh... why do I get the feeling I'm going to be the one in trouble here?[roman type][line break][end if]".

The unique punishment rule of woman-player is the woman unique punishment rule.

To say MonsterFailedTripFlav of (M - woman-player):
	say "[if the woman-bimbo of M < 4]You manage to leap out of the way just in time[otherwise]You manage to pull yourself free before you fall over[end if]. Phew!".

To say MonsterTrippedFlav of (M - woman-player):
	say "[big he of M] succeeds in making you topple to the ground.".

Section 2 - Damage

To compute damage reaction of (M - woman-player):
	if M is awake:
		if M is uninterested or M is not angered:
			say "[BigNameDesc of M] looks shocked.[line break][speech style of M]'[one of]Fucking bitch! Come on then![or]What the fuck is your problem? You're going down!'[or]Oh you are going to wish you never messed with me!'[at random][roman type][line break]";
			interest M;
			now M is angered;
		otherwise:
			say DamageReaction (the health of M) of M;
	otherwise:
		decrease the sleep of M by 300;
		if the health of M < the maxhealth of M / 2, now the sleep of M is 0;
		if the sleep of M < 0, now the sleep of M is 0;
		if M is awake:
			say "[big he of M] wakes up, looking very pissed off indeed! Uh-oh...";
			interest M;
			now M is angered;
		otherwise:
			say "[big he of M] is still unconscious.".

To say DamageReactHealthy of (M - woman-player):
	say "[big he of M] looks [one of][or]even [stopping]more pissed off than [he of M] did already!".

To say DamageReactDamaged of (M - woman-player):
	say "[big he of M] grunts in pain!".

To say DamageReactTired of (M - woman-player):
	say "[big he of M] staggers, squeaking in pain!".

To say DamageReactWeak of (M - woman-player):
	say "[big he of M] screams in pain, struggling to maintain [his of M] balance!".

To say DamageReactSubmissive of (M - woman-player):
	say "[big he of M] groans in pain, [if the size of penis <= 3]seemingly resigning [himself of M] to something[otherwise]staring apprehensively at your crotch[end if] as [he of M] fights to maintain [his of M] balance.".

To compute defeat of (M - woman-player):
	now the health of M is 1;
	let penis-fucked be false;
	if diaper quest is 0 and M is penis-fuckable and the player is penis-fuckable:
		say DefeatBrink of M;
		say "You could probably fuck [him of M], if you wanted. Do you want to demand sex from [NameDesc of M]?";
		if the player is consenting:
			now penis-fucked is true;
			compute dominating M;
	if penis-fucked is false:
		if M is awake:
			say "[big he of M] drops to the ground, unconscious.";
			now M is angered;
			womanSluttify;
			if the woman-bimbo of M <= 2:
				now magic pistol is in the location of the player;
				say "[big his of M] gun falls out of [his of M] hand.";
				compute autotaking magic pistol;
			otherwise:
				loot M;
			now the sleep of M is 300;
		if the woman-bimbo of M > 5, compute automatic banishment of M.

To say BanishFleeFlav of (M - woman-player):
	say "[BigNameDesc of M][']s body fizzles into blue cubes like something out of TRON, then completely disappears. It seems that [he of M][']s been removed from the game.".

To compute loot dropping of (X - a thing) by (M - woman-player):
	unless M is dying, now the owner of X is M;
	say "You notice that [he of M][']s wearing a [printed name of X]!".

Part - Conversation

Definition: woman-player is fluff-question-appropriate: decide no.
Definition: woman-player is uniquely unable to teach: decide yes.

To say vanity greeting of (M - woman-player):
	say conventional greeting of M.

To compute gagged response of (M - woman-player):
	if the woman-status of M is 0 and M is stranger:
		compute basic greeting to M;
	otherwise:
		say "It doesn't seem like [NameDesc of M] [if M is uninterested]knows that you're speaking to [him of M][otherwise]can understand you[end if].".

To compute correct perception of (M - woman-player):
	compute perception of M.

Definition: woman-player is dismissable:
	if the woman-status of it < 80, decide yes;
	decide no.

To say undismissable of (M - woman-player):
	say "[BigNameDesc of M] seems [if the woman-status of M is 80]a bit confused[otherwise]to choose to ignore that[end if].".

To compute enema floor reaction of (M - woman-player):
	strongHumiliate;
	if voluntarySquatting is 1, severeHumiliate;
	if M is interested and M is friendly, say "[BigNameDesc of M] coughs and pretends [he of M] doesn't notice.".

To say StealProvokedReaction of (M - woman-player):
	now M is angered;
	now M is introduced;
	say "[speech style of M]'Hey, what the hell do you think you're doing, bitch?!'[roman type][line break]".

To say PartialSuccessStealProvokedReaction of (M - woman-player):
	now M is angered;
	now M is introduced;
	say "[speech style of M]'Hey, give that back, bitch!'[roman type][line break]".


Part - Play As Berri Scenes

To say BerriCutsceneFlav:
	say "[second custom style][one of]Oh god... I think I've stumbled into one of the [']cutscenes['] that [']Berri['] is scripted to experience![or]Don't tell me I've found another cutscene?![or][one of]Oh crap, it's another cutscene![or]How many of these ridiculous cutscene are there?![or]I've fallen right into another cutscene, haven't I?[or]Not good, not good... What do the showrunners have in store for me this time?![in random order][stopping][roman type][line break]".

berriVineBossScene is a number that varies.

Woman Framework ends here.
