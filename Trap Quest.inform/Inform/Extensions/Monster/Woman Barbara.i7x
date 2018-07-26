Woman Barbara by Monster begins here.


A woman is a kind of monster. 

woman-barbara is a woman.

woman-barbara is intelligent. woman-barbara has a number called delayed sluttification. woman-barbara can be stranger or introduced. woman-barbara is stranger. woman-barbara can be permanently dead. woman-barbara is not permanently dead. The leftover-type of woman-barbara is usually 130. woman-barbara can be angered. the favour of woman-barbara is 10. woman-barbara can be tentacle-pregnant.

Definition: woman-barbara (called M) is normally ally:
	if the favour of M >= 10, decide yes;
	decide no.

woman-barbara has a number called woman-status.

woman-barbara has a number called woman-bimbo. the woman-bimbo of woman-barbara is 2.
woman-barbara has a number called woman-old-bimbo. the woman-old-bimbo of woman-barbara is 2.

woman-barbara has an indexed text called current-title. Understand the current-title property as describing woman-barbara. The current-title of woman-barbara is "Player".
woman-barbara has an indexed text called old-title. Understand the old-title property as describing woman-barbara. The old-title of woman-barbara is "Player".

woman-barbara has an indexed text called current-name. Understand the current-name property as describing woman-barbara. The current-name of woman-barbara is "Barbara".
woman-barbara has an indexed text called old-name. Understand the old-name property as describing woman-barbara. The old-name of woman-barbara is "Barbara".

Figure of Woman 1 is the file "NPCs/MultiFloor/Woman/woman1.png". 
Figure of Woman 2 is the file "NPCs/MultiFloor/Woman/woman2.png". 
Figure of Woman 3 is the file "NPCs/MultiFloor/Woman/woman3.png". 
Figure of Woman 4 is the file "NPCs/MultiFloor/Woman/woman4.png". 
Figure of Woman 5 is the file "NPCs/MultiFloor/Woman/woman5.png". 
Figure of Woman 6 is the file "NPCs/MultiFloor/Woman/woman6.png".

Understand "mysterious", "woman" as woman-barbara. 
The text-shortcut of woman is "wo".

To say MediumDesc of (M - woman-barbara):
	say "[if M is introduced][BarbaraTitle] [BarbaraName][otherwise]mysterious woman[end if][if M is tentacle-pregnant] (pregnant)[end if]".

To say NameDesc of (M - woman-barbara):
	say "[if M is stranger]the mysterious woman[otherwise][BarbaraName][end if]".

To say BigNameDesc of (M - woman-barbara):
	say "[if M is stranger]The mysterious woman[otherwise][BarbaraName][end if]".

To say BarbaraTitle:
	say "[if the woman-old-bimbo of woman-barbara is the woman-bimbo of woman-barbara][current-title of woman-barbara][otherwise][old-title of woman-barbara][end if]".

To say BarbaraName:
	say "[if the woman-old-bimbo of woman-barbara is the woman-bimbo of woman-barbara][current-name of woman-barbara][otherwise][old-name of woman-barbara][end if]".

To decide which figure-name is the monster-image of (M - woman-barbara):
	if the woman-bimbo of M < 3, decide on figure of woman 1;
	if the woman-bimbo of M is 3, decide on figure of woman 2;
	if the woman-bimbo of M is 4, decide on figure of woman 4;
	if the woman-bimbo of M is 5, decide on figure of woman 5;
	decide on figure of woman 6.

To say MonsterDesc of (M - woman-barbara):
	if the woman-bimbo of M < 3, say "A long haired, huge breasted brunette wearing a partially torn black fishnet shirt underneath a tight black leather corset, and an extremely torn spandex pair of leggings, which provides modesty for [his of M] crotch region but little else. [big he of M] is wearing a decent amount of makeup, and carrying a modern looking pistol.";
	if the woman-bimbo of M is 3, say "A long haired, huge breasted brunette wearing an indecent sheer green dress. You can see underneath she is wearing no bra and some skimpy black briefs. [big he of M] is wearing a decent amount of makeup.";
	if the woman-bimbo of M is 4, say "A long haired, huge breasted brunette wearing nothing on [his of M] top half but a black lace bra that almost looks too small, since it covers very little. [big he of M] is also wearing a skimpy pink thong. You can tell by [his of M] facial expressions that she's having more trouble than usual thinking straight.";
	if the woman-bimbo of M is 5, say "A long haired, huge breasted brunette wearing nothing on [his of M] top half but a tiny sheer black crop top that really doesn't prevent you seeing anything. [big he of M] is also wearing an almost invisible silver g-string. You can tell by [his of M] facial expressions that she's having huge amounts of trouble thinking straight.";
	if the woman-bimbo of M is 6, say "A long haired, huge breasted brunette wearing nothing at all. [big his of M] facial expression is one of empty-headed bliss.";
	if M is tentacle-pregnant, say "[big his of M] massive bulging belly is a clear sign that [he of M][']s pregnant, and probably with something inhuman.";
	if the human-toilet-scene of M is 1, say "[big he of M] is wearing oversized nipple rings and has the words 'TOILET SLUT' and 'URINAL GIRL' permanently written onto [his of M] flesh.".

To set up (M - woman-barbara):
	now the monstersetup of M is 1;
	now the difficulty of M is 20;
	now the health of M is the maxhealth of M;
	calm M.

Definition: woman-barbara (called M) is unfriendly:
	if M is angered, decide yes;
	decide no.
Definition: woman-barbara (called M) is uniquely unfriendly:
	decide no.

Definition: woman-barbara (called M) is objectifying the player:
	decide no.
Definition: woman-barbara (called M) is babifying the player:
	decide no.

To WomanSluttify:
	if woman-barbara is introduced and the woman-bimbo of woman-barbara < 6:
		increase the woman-bimbo of woman-barbara by 1;
		decrease the difficulty of woman-barbara by 2;
		update name of woman-barbara.

To update name of (M - woman-barbara):
	if the woman-bimbo of M < 4:
		now the current-title of M is "Player";
	otherwise if the woman-bimbo of M is 4:
		now the current-title of M is "[one of]Flirty[or]Naughty[sticky random] Girl";
	otherwise if the woman-bimbo of M is 5:
		now the current-title of M is "[one of]Slutty Girl[or]Bimbo[sticky random]";
	otherwise:
		now the current-title of M is  "[one of]Cock Lover[or]Super Slut[or]Fuck Doll[sticky random]";
	if the woman-bimbo of M is 0:
		now the current-name of M is  "Barney";
	otherwise if the woman-bimbo of M is 1:
		now the current-name of M is  "Barry";
	otherwise if the woman-bimbo of M is 2:
		now the current-name of M is  "Barbara";
	otherwise if the woman-bimbo of M is 3:
		now the current-name of M is  "Barbar";
	otherwise if the woman-bimbo of M is 4:
		now the current-name of M is  "Baby";
	otherwise if the woman-bimbo of M is 5:
		now the current-name of M is  "Barbie";
	otherwise:
		now the current-name of M is  "Bambi".
		
To vanish (M - a monster):
	if M is woman and M is introduced:
		remove M from play;
	if the woman-status of M is 90 and the vine-scene of M is 5:
		FavourDown M;
		WomanSluttify;
		if pregnancy fetish is 1 and inhuman pregnancy > 1:
			now M is tentacle-pregnant.

This is the spawn initial barbara rule:
	if diaper quest is 0, summon woman-barbara in the woods.
The spawn initial barbara rule is listed in the setting up woods monsters rules.

To uniquely destroy (M - woman-barbara): [Are there any special rules we need to follow?]
	now M is permanently dead. [This should stop her spawning again.]

Definition: woman-barbara (called M) is human:
	decide yes.

To say LeftoverDesc (N - 129):
	say "[if the player is in the dungeon][random woman] lies unconscious on the floor here but you can hardly tell that it's [him of woman-barbara]. [big he of woman-barbara][']s on [his of woman-barbara] back but [his of woman-barbara] belly is so large that it covers [his of woman-barbara] body from [his of woman-barbara] knees to [his of woman-barbara] neck. Minotaur [semen] is gradually spilling out of both [his of woman-barbara] mouth and from down below, you can see that [his of woman-barbara] belly is very slowly deflating.[otherwise][random woman] lies unconscious on the floor here, with demon [semen] still slowly seeping out of [his of woman-barbara] gaping vagina.[end if]".

Part 1 - Perception

To compute perception of (M - woman-barbara):
	if M is angered:
		say "[BigNameDesc of M] notices you! [second custom style]'[one of][if the woman-bimbo of M < 5]You! How could you treat me so poorly?! I'm not going to let you get away with it any more!'[otherwise]Hey sexy. You've taught me some valuable lessons in how to be a good friend. I think it's time for me to return to favour...'[end if][or]You still haven't lost? Let's go again, then!'[or]Hi again, bitch.'[stopping][roman type][line break][big he of M] starts walking towards you.";
		now M is interested;
	otherwise:
		now M is uninterested. [Unless there has been a scene trigger, it's up to the player to interact with her]

To compute (M - a minotaur) stomping (N - woman-barbara):
	if M is in the location of the player, say "[BigNameDesc of M] grabs [NameDesc of N] by the ankles. [big he of N] shrieks as [he of N] is slowly impaled onto the waiting giant minotaur [manly-penis]. It takes only a few thrusts for him to start cumming - you can tell because [his of N] belly expands at an alarming rate. An impossible amount of [semen] fills [his of N] up and with one last wail you see [his of N] sounds cut off by the [semen] flying out of [his of N] mouth. [big he of N] soon loses consciousness and [NameDesc of M] discards [his of N] body. [big he of N] lands on [his of N] back with [his of N] belly covering most of [his of N] body.";
	otherwise say "You hear a long loud shriek from [NameDesc of N] which eventually turns into a bubbly gargling noise and then silence, from [if N is nearby]nearby![otherwise]somewhere in the dungeon![end if].";
	destroy N;
	let L be a random off-stage leftover;
	now L is in the location of M;
	now the leftover-type of L is the leftover-type of N.

Part 2 - Motion

To compute motion of (M - woman-barbara):
	 if M is introduced and the woman-status of M < 90: [90 or above means she's spawned to get fucked, so she should stay still]
		now neighbour finder is the location of M;
		let A be a random N-viable direction;
		let P be the room A from the location of M;
		if A is a random N-viable direction and P is not Dungeon12:
			try M going A;
		otherwise if A is a random N-viable direction and P is not Dungeon12:
			try M going A.

To compute (M - woman-barbara) seeking (D - a direction):
	if the woman-status of M < 90: [90 or above means she's spawned to get fucked, so she should stay still]
		try M going D;
		compute motion reactions of M.

Part 3 - Compute Woman Spawning

[
STATES:
0: Woods exploring.
1: Dungeon crawling, has appeared randomly / waiting for event.
2: Dungeon crawling, has appeared to save you from bondage.
3: Dungeon crawling, just released minotaur.
4: Hotel exploring, has appeared randomly
5: Hotel exploring, has appeared via dildo seat scene

==Anything 90 or above prevents protection==
90: Appeared by being fucked by vines in the woods
91: Appeared by being fucked by mechanic in the hotel
92: Appeared to try the deepthroat discount challenge with the shopkeeper
94: Interacting with a hypno trap
95: Released from the toilet
99: Dead
]

To deploy (M - woman-barbara) with woman-status (V - a number):
	now the woman-status of M is V;
	now the sleep of M is 0;
	now the boredom of M is 0;
	if M is off-stage and M is introduced and M is not permanently dead and (the player is in the dungeon or the player is in the woods or the player is in the hotel): [stops barbara spawning somewhere stupid like hole in the wall, iron maiden, blindfolded]
		now the health of M is the maxhealth of M;
		if V is 0 or V is 1 or V is 4:
			regionally place M;
		otherwise if V is 2:
			now M is in the location of the player;
			say "[bold type]You spot [NameDesc of M] trotting up to you![roman type] [big he of M] seems concerned at your state of affairs.";
			now M is interested;
		otherwise if V is 3:
			now M is in Dungeon06;
			if the player is in Dungeon06, say "[bold type]You spot [M] trotting up to you![roman type] [big he of M] grins seemingly oblivious to your presence, and then pulls the foreboding looking lever before you can react.";
			now minotaur is released;
			if the player is in Dungeon36, say "You hear a mechanism whirring and watch with [if the bimbo of the player < 8]horror[otherwise if the bimbo of the player < 13]terrified excitement[otherwise]delight[end if] as the [minotaur][']s cage suddenly swings open!";
			otherwise say "You hear a mechanism whirring, and what sounds like a metal door swing open.".

The womanspawning rules is a rulebook.

A time based rule (this is the woman spawning rule):
	if woman-barbara is off-stage and woman-barbara is introduced and woman-barbara is not permanently dead:
		follow the womanspawning rules;
	if woman-barbara is off-stage:
		while the delayed sluttification of woman-barbara > 0:
			WomanSluttify;
			decrease the delayed sluttification of woman-barbara by 1;
	otherwise:
		unless woman-barbara is in the location of the player or woman-barbara is nearby or woman-barbara is stranger:
			if a random number between 1 and 40 is 1:
				[if the woman-old-bimbo of woman-barbara is the woman-bimbo of woman-barbara, WomanSluttify;] [TODO remove this when there's more ways for her to get slutty]
				vanish woman-barbara.

This is the woman spawning to help the player with bondage rule:
	if there is worn locked clothing and a random number between 1 and 20 is 1:
		deploy woman-barbara with woman-status 2;
		rule succeeds.
The woman spawning to help the player with bondage rule is listed last in the womanspawning rules.

This is the woman spawning to release the minotaur rule:
	if minotaur is captive and the player is in the Dungeon and a random number between 4 and 500 < the woman-bimbo of woman-barbara:
		deploy woman-barbara with woman-status 3;
		rule succeeds.
The woman spawning to release the minotaur rule is listed last in the womanspawning rules.

This is the woman spawning in the region of the player rule:
	if a random number between 1 and 80 is 1:
		if the player is in the Dungeon:
			deploy woman-barbara with woman-status 1;
			rule succeeds;
		otherwise if the player is in the Woods:
			deploy woman-barbara with woman-status 0;
			rule succeeds;
		otherwise if the player is in the Hotel:
			deploy woman-barbara with woman-status 4;
			rule succeeds.
The woman spawning in the region of the player rule is listed last in the womanspawning rules.

Chapter - Hotel Chair Scene

Report going when the player is in Hotel21 and Hotel21 is not discovered:
	if woman-barbara is introduced and the number of monsters in Hotel21 is 0 and the number of interested regional monsters is 0 and woman-barbara is not permanently dead:
		deploy woman-barbara with woman-status 5;
		say "You walk into the staff room just in time to see [NameDesc of woman-barbara] sitting down on one of the dildo chairs in this room, easing the large golden dong into [his of woman-barbara] asshole. Suddenly [he of woman-barbara] yelps. ";
		let R be a random number between 1 and 4;
		if R is 2 and watersports fetish is 1:
			say "[chairenemaflav][line break][second custom style]'[if the woman-bimbo of woman-barbara < 4][NameBimbo], it's not what you think!  The chairs magically heal you, so I - eeek!  Noooooo!'[otherwise]Oh hey [NameBimbo], fancy catching you here. I was just experimenting with the - Oooooh!'[end if][roman type][line break][big he of woman-barbara] is cut off as a fountain of [urine] shoots out of [his of woman-barbara] butthole in a huge arc and starts coating the floor of the room. The flow is powerful and it takes several seconds before [he of woman-barbara] has emptied [himself of woman-barbara].";
			UrinePuddleUp a random number between 9 and 20;
		otherwise if R is 3 and lactation fetish is 1:
			say "[chairenemaflav][line break][second custom style]'[if the woman-bimbo of woman-barbara < 4][NameBimbo], it's not what you think!  The chairs magically heal you, so I - eeek!  Noooooo!'[otherwise]Oh hey [NameBimbo], fancy catching you here. I was just experimenting with the - Oooooh!'[end if][roman type][line break][big he of woman-barbara] is cut off as a fountain of [milk] shoots out of [his of woman-barbara] butthole in a huge arc and starts coating the floor of the room. The flow is powerful and it takes several seconds before [he of woman-barbara] has emptied [himself of woman-barbara].";
			MilkPuddleUp a random number between 9 and 20;
		otherwise if R is 1:
			say "[chairenemaflav][line break][second custom style]'[if the woman-bimbo of woman-barbara < 4][NameBimbo], it's not what you think!  The chairs magically heal you, so I - eeek!  Noooooo!'[otherwise]Oh hey [NameBimbo], fancy catching you here. I was just experimenting with the - Oooooh!'[end if][roman type][line break][big he of woman-barbara] is cut off as a fountain of [semen] shoots out of [his of woman-barbara] butthole in a huge arc and starts coating the floor of the room. The flow is powerful and it takes several seconds before [he of woman-barbara] has emptied [himself of woman-barbara].";
			SemenPuddleUp a random number between 9 and 20;
		otherwise:
			say "At the same time [he of woman-barbara] notices you, a loud mechanical voice echoes out from the chair.[line break][first custom style]'SLUT!  SLUT! SLUT! SLUT! SLUT!'[roman type][line break][if the woman-bimbo of woman-barbara < 4][BigNameDesc of woman-barbara] turns red as a beetroot as you watch [his of woman-barbara] scramble to pull [himself of woman-barbara] off the dildo as fast as [he of woman-barbara] can.[line break][second custom style]'N-n-n-no, I'm not a slut! I only sat on that because I heard that it magically heals you. You have to believe me!'[otherwise if the woman-bimbo of woman-barbara is 4][BigNameDesc of woman-barbara] squirms uncomfortably and turns slightly red.[line break][second custom style]'I can't believe you've caught me in such an embarrassing situation...'[otherwise][BigNameDesc of woman-barbara] giggles bashfully. [second custom style]'Guilty as charged!  Sluts have way more fun, though, don't you think?  Well, as long as you agree that huge cocks up your ass are fun, I guess!'[end if][roman type][line break][big he of woman-barbara] stands up and walks over to you, seemingly intent in joining your exploration attempts for the time being.";
		now woman-barbara is in the location of the player;
		now woman-barbara is interested.

To say chairenemaflav:
	say "At the same time [he of woman-barbara] notices you, [he of woman-barbara] [if the woman-bimbo of woman-barbara < 5]screams[otherwise]yelps[end if] loudly, and you watch as [his of woman-barbara] belly begins to slowly expand. [if the woman-bimbo of woman-barbara < 4][big he of woman-barbara] pulls [himself of woman-barbara] off the chair as quickly as [he of woman-barbara] can muster[otherwise]Giggling and rubbing [his of woman-barbara] swelling tummy, [he of woman-barbara] slowly but surely pulls [himself of woman-barbara] back off the dildo before [he of woman-barbara] bursts[end if], and then falls flat on [his of woman-barbara] front, clearly not quite anticipating how heavy [his of woman-barbara] belly would now be. [big he of woman-barbara] looks up at you with a dazed expression on [his of woman-barbara] face.[line break]".

Chapter - Vines Scene

woman-barbara has a number called vine-scene.

Report going when there is an aggressive vine in the location of the player and the woman-bimbo of woman-barbara < 4 and the vine-scene of woman-barbara is 0:
	if debugmode is 1, say "Checking if barbara can appear.";
	if woman-barbara is introduced and woman-barbara is not angered and the number of monsters in the location of the player is 0 and the number of interested regional monsters is 0 and woman-barbara is not permanently dead:
		deploy woman-barbara with woman-status 90;
		now woman-barbara is in the location of the player;
		now woman-barbara is interested;
		repeat with V running through aggressive vines in the location of the player:
			now the TrapNo of V is -7500; [prevents it from attacking the player]
		say "As you arrive here you see that [NameDesc of woman-barbara] is here, on [his of woman-barbara] hands and knees, with strong green vines wrapped around [his of woman-barbara] wrists and ankles, holding them in place.".

A time based rule (this is the barbara vines rule):
	if the woman-status of woman-barbara is 90 and the vine-scene of woman-barbara <= 4:
		if there are vines in the location of woman-barbara:
			let W be woman-barbara;
			increase the vine-scene of W by 1;
			if the vine-scene of W is 1:
				 if W is in the location of the player, say "[second custom style]'[NameBimbo], thank goodness you're here! Quick, help me please, it's going to - unf!!!'[roman type][line break][BigNameDesc of W] is cut off as a thick green vine pushes its way into [his of W] cunt. It looks like you could [if inline hyperlinks >= 2][link]pull vines[as]pull[end link][otherwise][bold type]pull[roman type][end if] on the vines to try and rescue [him of W], or just sit back, [bold type]wait[roman type] and watch.";
			otherwise if the vine-scene of W is 2:
				if W is in the location of the player, say "[second custom style]'Come on [NameBimbo], what's the hold-up?! Aaaahn~'[roman type][line break]A second green vine finds room in [NameDesc of W][']s pussy next to the first, stretching it wide.";
			otherwise if the vine-scene of W is 3:
				if W is in the location of the player, say "[second custom style]'Okay okay let's make a deal, if you help me I'll give you a fshashahahahahaaaaaah...'[roman type][line break]A third thick vine somehow pushes in beside the first two, the intense sensation caused by their combined girth clearly making it difficult for [NameDesc of W] to speak.";
			otherwise if the vine-scene of W is 4:
				if W is in the location of the player, say "[second custom style]'Please help me please help me please help me I'll give you all I haaaaa~'[roman type][line break]A fourth vine makes its way into the already fully stuffed cavern that is [NameDesc of W][']s cunt. It is now gaped wider than should be physically possible, in the real world. All fourth vines piston in and out with unforgiving strength and speed.";
			otherwise if the vine-scene of W is 5:
				if W is in the location of the player:
					say "[second custom style]'Gzzt... cumming... Gah!'[roman type][line break][NameDesc of W] climaxes at the same time as the vines, her belly exploding outwards as her womb is inflated full of tentacle seed.[line break][second custom style]'You fucking bitch...'[roman type][line break][big he of W] murmurs before passing out.";
					if living belt of sturdiness is off-stage:
						now living belt of sturdiness is in the location of the player;
						now living belt of sturdiness is blessed;
						now living belt of sturdiness is sure;
						say "A vine, seemingly gleeful at your collaboration, snakes up out of the soil completely before coiling around itself into a circle and turning a metallic silver. There is now a [living belt of sturdiness] on the ground in front of you!";
						compute autotaking living belt of sturdiness;
					repeat with V running through vines in the location of the player:
						now the TrapNo of V is -750;
						now V is unrevealed;
					now the sleep of W is 500;
				otherwise:
					decrease the vine-scene of W by 1; [We stall at this point until the player returns]
		otherwise: [Barbara has somehow moved on. But the scene still happened! So let's make sure that's taken into account with these numbers.]
			now the vine-scene of woman-barbara is 5;
			repeat with V running through alive vines:
				if the TrapNo of V < -750, now the TrapNo of V is -750;
				now V is unrevealed.

To WomanVinePull:
	let W be woman-barbara;
	say "You yank at the vines holding one of [NameDesc of W][']s wrists and it loosens enough for [him of W] to pull free. Then with your help [he of W] is able to quickly loosen the rest, pull the dastardly ones inside of [him of W] out and then finally stand up!";
	if the vine-scene of W is 1:
		say "[BigNameDesc of W] gives you a big tight hug.[line break][second custom style]'Thanks a bunch, hun! I don't think I could have escaped them without you.'[roman type][line break][big he of W] takes hold of your arm, as if [he of W] feels safe when [he of W][']s around you.";
		FavourUp W;
	otherwise if the vine-scene of W is 2:
		say "[BigNameDesc of W] dusts [himself of W] down.[line break][second custom style]'Phew! for a moment there I thought you were going to let it ravage me. Haha!'[roman type][line break]";
	otherwise if the vine-scene of W is 3:
		let S be a random off-stage snack;
		say "[BigNameDesc of W] harrumphs.[line break][second custom style]'I can't believe you blackmailed me like that... Fine, take this.'[roman type][line break][big he of W] gives you one [printed name of S].";
		now S is carried by the player;
		FavourDown W;
	otherwise if the vine-scene of W is 4:
		let S be a random off-stage snack;
		let J be a random off-stage plentiful accessory;
		now J is pure diamond;
		set shortcut of J;
		say "[BigNameDesc of W] growls.[line break][second custom style]'I can't believe you took advantage of me like that. I thought I was going to go crazy... Fine, take these, you bitch.'[roman type][line break][big he of W] gives you one [printed name of S] and a [printed name of J].";
		FavourDown W;
		increase the delayed sluttification of W by 1;
	now the vine-scene of W is 6.

Chapter - Mechanic Sex Scene

woman-barbara has a number called mechanic-scene.

Report going when there is an uninterested mechanic in the location of the player and the mechanic-scene of woman-barbara is 0:
	if debugmode is 1, say "Checking if barbara can appear.";
	if woman-barbara is introduced and the number of monsters in the location of the player is 1 and the number of interested regional monsters is 0 and woman-barbara is not permanently dead:
		deploy woman-barbara with woman-status 91;
		now woman-barbara is in the location of the player;
		now woman-barbara is interested;
		now mechanic is interested;
		anger mechanic;
		say "As you arrive here you see that [NameDesc of woman-barbara] is here on [his of woman-barbara] knees, with [NameDesc of mechanic][']s [manly-penis] firmly lodged in her throat. [big he of mechanic] is holding [him of woman-barbara] roughly by the hair and forcing [his of woman-barbara] head forward and back, using [his of woman-barbara] mouth as [his of mechanic] personal onahole.";
		follow the mechanic facefucks barbara rule.

This is the mechanic facefucks barbara rule:
	if the woman-status of woman-barbara is 91 and the mechanic-scene of woman-barbara <= 5 and woman-barbara is in the location of the player and mechanic is unfriendly:
		let W be woman-barbara;
		increase the mechanic-scene of W by 1;
		if the mechanic-scene of W is 1:
			say "[BigNameDesc of mechanic] gives you a brief look.[line break][speech style of mechanic]'Don't interrupt me and I'll make it worth your while.'[roman type][line break][big he of mechanic] holds a golden ring in the air, and then turns his attention back to the face [he of mechanic] has turned into a temporary cocksleeve. It looks like you could attack the mechanic to try and rescue [him of W], or just sit back, [bold type]wait[roman type] and watch.";
		otherwise if the mechanic-scene of W is 2:
			say "[BigNameDesc of mechanic] chuckles.[line break][speech style of mechanic]'Yes that's right, you dumb slut. Nobody's coming to save you. And all it took was a tiny bribe for your little [']friend['] over there to [pussy] out.'[roman type][line break][big he of mechanic] picks up the speed, causing [NameDesc of W] to make gagging sounds as [he of W] thrusts.";
		otherwise if the mechanic-scene of W is 3:
			say "[BigNameDesc of mechanic] grunts.[line break][speech style of mechanic]'Fuck, this bitch's throat is tight!'[roman type][line break]";
		otherwise if the mechanic-scene of W is 4:
			let J be a random off-stage plentiful ring;
			now J is solid gold;
			set shortcut of J;
			now J is in the location of the player;
			say "[BigNameDesc of mechanic] moans as [he of mechanic] cums, [his of mechanic] ropes of [semen] making [NameDesc of W] choke as it rebounds and spurts out the sides of [his of W] mouth. [Big he of mechanic] removes [his of mechanic] [manly-penis] and begins to clean it off by wiping it all over [NameDesc of W][']s forehead. But [he of W] is looking directly at you, with dismay in [his of W][']s eyes.[line break][speech style of W]'Really?'[roman type][line break]That's all [he of W] manages before [he of W] passes out. [BigNameDesc of mechanic] drops the [J] in front of you.[line break][speech style of mechanic]'Money well spent.'[roman type][line break]";
			now the latest-appearance of mechanic is the appearance of the player; [to stop him suddenly noticing the player and deciding to bang]
			satisfy mechanic;
			increase the delayed sluttification of W by 1;
			FavourDown W;
			now the sleep of W is 300;
			compute autotaking J;
		rule succeeds.
The mechanic facefucks barbara rule is listed in the mechanic priority attack rules.

To say WaitingFlav of (M - a mechanic):
	unless the woman-status of woman-barbara is 91 and the mechanic-scene of woman-barbara <= 5 and woman-barbara is in the location of the player:
		say WaitingSpeechFlav of M;
		say WaitingActionFlav of M.

Chapter - Shopkeeper Discount Scene

woman-barbara has a number called shopkeeper-scene.

This is the woman spawning to get shopkeeper discount rule:
	if the shopkeeper-scene of woman-barbara is 0 and shopkeeper is in Dungeon41 and shopkeeper is nearby and the woman-bimbo of woman-barbara <= 2:
		deploy woman-barbara with woman-status 92;
		now woman-barbara is in the location of shopkeeper;
		rule succeeds.
The woman spawning to get shopkeeper discount rule is listed last in the womanspawning rules.

Report going when shopkeeper is in the location of the player and woman-barbara is in the location of the player and the woman-bimbo of woman-barbara <= 2 and the shopkeeper-scene of woman-barbara is 0 and woman-barbara is not interested and shopkeeper is not interested:
	say "In this room you see that [NameDesc of shopkeeper] is not alone: [NameDesc of woman-barbara] is on [his of woman-barbara] knees, with four fifths of [his of shopkeeper] massive length stuffed into [his of woman-barbara] mouth. [big he of woman-barbara] is desperately trying to force that last bit in, causing the tip to penetrate [his of woman-barbara] throat. Lewd gagging noises fill the room as the distension in [his of woman-barbara] throat becomes more and more visible.[line break][speech style of shopkeeper]'Damn girl, you can really swallow a sword, can't you?! Unng, I'm reaching my limit...'[roman type][line break][BigNameDesc of shopkeeper] grunts and without a second thought grabs the back of [NameDesc of woman-barbara][']s head, forcing it forward and pushing that last inch of [his of shopkeeper] manhood in past her jaw. Noises of weak resistance emanate from [NameDesc of woman-barbara][']s nose but it's too little too late - [NameDesc of shopkeeper] is cumming hard. [big he of shopkeeper] grips [his of woman-barbara] head tight with both arms keeping [his of shopkeeper] whole [manly-penis] firmly wedged inside for the duration of [his of shopkeeper] climax, each string of [semen] being accompanied by an involuntary gulp from [his of shopkeeper][']s new cumdump's gullet. [big he of shopkeeper] finally releases [him of woman-barbara] and [he of woman-barbara] falls back choking, spewing up lumps of thick [semen].[line break][second custom style]'Did I win?'[roman type][line break]Is all [he of woman-barbara] manages to say before [he of woman-barbara] collapses backward onto the ground.[line break][first custom style]'Yeah, you won honey.'[roman type][line break][BigNameDesc of shopkeeper] replies but [NameDesc of woman-barbara] has already passed out cold.";
	now the sleep of woman-barbara is 200;
	increase the delayed sluttification of woman-barbara by 1;
	now the woman-status of woman-barbara is 92;
	now the shopkeeper-scene of woman-barbara is 1.


Chapter - Hotel Hypno Scene

woman-barbara has a number called hypno-scene.

A time based rule (this is the barbara hypno hotel rule):
	if the woman-status of woman-barbara is 4 and woman-barbara is alive and the hypno-scene of woman-barbara is 0:
		if the player is in the hotel and woman-barbara is nearby:
			let Y be a random hypno trap in the location of woman-barbara;
			if Y is hypno trap:
				now Y is revealed;
				now Y is not untriggered;
				now the reset-timer of Y is 250;
				now the woman-status of woman-barbara is 94;
				say "[bold type]You spot [NameDesc of woman-barbara] nearby![roman type] [big he of woman-barbara] appears to be standing there, oblivious to your presence, transfixed by a screen. On the screen is [hypno content of Y]. You suppose you could go and attempt to rescue her, but you might get stuck looking at the screen yourself...";
				now the hypno-scene of woman-barbara is 1;
				increase the delayed sluttification of woman-barbara by 2.

To compute barbara hypno shared progression:
	unless woman-barbara is angered:
		say "[BigNameDesc of woman-barbara] stands next to you, staring with exactly the same vacant expression as you probably have.";
		increase the delayed sluttification of woman-barbara by 1.

To compute barbara hypno solo progression:
	say "[BigNameDesc of woman-barbara] drools a bit as she watches the screen.";
	increase the delayed sluttification of woman-barbara by 1.

Chapter - Human Toilet Scene

woman-barbara has a number called human-toilet-scene.

To check barbara toilet:
	if the human-toilet-scene of woman-barbara > 1:
		say "You feel more dominant!";
		DelicateDown 1;
	otherwise if the human-toilet-scene of woman-barbara is 0 and woman-barbara is not permanently dead and the player is in Hotel38 and woman-barbara is not nearby and woman-barbara is not in the location of the player and the woman-bimbo of woman-barbara >= 5 and the woman-status of woman-barbara < 10:
		let barbara-toilet-choice be 0;
		now the human-toilet-scene of woman-barbara is 1;
		say "A groaning, gurgling noise from below you makes you notice that the woman below you looks different from usual.";
		if image cutscenes is 1, display figure of barbara cutscene 4;
		say "[big he of woman-barbara][']s completely naked and has 'URINAL GIRL' and 'TOILET SLUT' written on [his of woman-barbara] skin in permanent ink. [big he of woman-barbara] has oversized nipple piercings and a collar symbolizing [his of woman-barbara] slave status and buzzing vibrators in both of [his of woman-barbara] lower holes. The most notable thing, however, is [his of woman-barbara] giant bulging belly, presumably from all the pee [he of woman-barbara][']s had to drink recently.";
		say "Looking [if the player is female]between your legs [end if]into the toilet bowl you realise you recognise the ring-gagged face at the bottom - it's [NameDesc of woman-barbara]! [big he of woman-barbara] looks up at you with imploring puppy-dog eyes.[line break][speech style of woman-barbara]'Wease eh ee ow! Weeeease!'[roman type][line break]Do you look for a way to help her escape? [yesnolink]";
		if the player consents:
			now barbara-toilet-choice is 1;
			if the player is not able to use manual dexterity:
				say "Unfortunately without proper use of your hands and fingers you are unable to find any way to free [him of woman-barbara].";
				now barbara-toilet-choice is 2;
			otherwise if the intelligence of the player < a random number between 2 and 7:
				say "Unfortunately, possibly due to your low smarts, you are unable to find any way to free [him of woman-barbara].";
				now barbara-toilet-choice is 2;
		if barbara-toilet-choice is 1:
			say "Feeling around the base of the toilet, you find a latch! Moments later you have parted the front of the toilet bowl and [NameDesc of woman-barbara] is clambering out of [his of woman-barbara] prison. [big he of woman-barbara] rolls over onto [his of woman-barbara] side and promptly pukes up a gallon of [urine].[line break][speech style of woman-barbara]'Thank you so much for saving me...'[roman type][line break]That's all [he of woman-barbara] can manage before passing out.";
			deploy woman-barbara with woman-status 95;
			now woman-barbara is in the location of the player;
			UrinePuddleUp 30;
			now the sleep of woman-barbara is 300;
			FavourUp woman-barbara;
		otherwise:
			say "[if the player is not a pervert]You mumble a weak excuse[otherwise if the player is a nympho]Cackling to yourself, you give one of [NameDesc of woman-barbara][']s nipple piercings a painful tug and slap [his of woman-barbara] distended belly[otherwise]You giggle quietly to yourself as you look at [his of woman-barbara] situation[end if] before wandering off. ";
			if barbara-toilet-choice is 1:
				say "You feel more dominant!";
				DelicateDown 1;
			now the human-toilet-scene of woman-barbara is 2;
			now woman-barbara is permanently dead;
			say "You hear a clock ticking, followed by a faint bell alarm. Then you hear a loud mechanical 'SHUNK' coming from the toilet. [BigNameDesc of woman-barbara] beings sobbing gently to [himself of woman-barbara]. You get the feeling that the lock on the toilet has been reinforced, and you've missed your only chance to ever free [him of woman-barbara]...".
		


Part 4 - Wandering

To compute wandering of (M - woman-barbara):
	follow the barbara wandering rules.

The barbara wandering rules is a rulebook.

To decide which number is the bondage-favour-limit of (W - woman-barbara):
	decide on 10.

This is the woman helps the player remove bondage rule:
	if the woman-status of woman-barbara is 2 and there is worn locked clothing and the player is not immobile:
		if the favour of woman-barbara < the bondage-favour-limit of woman-barbara:
			say "[second custom style]'[one of]Oh god, you're never going to be able to continue like that. Oh, what's this?!'[or]Ooh, still having trouble with bondage, eh?'[stopping][roman type][line break][big he of woman-barbara] dangles a skeleton key in front of your face.[line break][second custom style]'It's such a shame that I don't feel like giving you this one, isn't it?'[roman type][line break]";
		otherwise:
			say "[second custom style]'[one of]Oh god, you're never going to be able to continue like that. Don't worry, I'll use this key I found!'[or]I guess I should let you have my key again, eh?'[stopping][roman type][line break]";
			say "Using the key, [he of woman-barbara] unlocks your bondage. The key then crumbles to dust.";
			repeat with C running through worn locked clothing:
				now C is unlocked;
			say "[second custom style]'I hope I don't need it myself now, haha...'[roman type][line break]";
			increase the delayed sluttification of woman-barbara by 1;
		rule succeeds.
The woman helps the player remove bondage rule is listed last in the barbara wandering rules.

This is the woman gets bored and moves on rule:
	if the woman-status of woman-barbara < 90 and a random number from 1 to 20 is 1: [woman-status of 90+ means she was spawned to get fucked so she doesn't move]
		let M be a random woman;
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
		otherwise if M is in the Woods:
			let D be the best route from the location of M to Woods01 through placed rooms;
			unless D is nothing:
				say "[second custom style]'I think I'm going to go [one of]back and visit the Dungeon[or]visit the Hotel[purely at random].'[roman type][line break][M] walks off towards the [D].";
				Vanish M;
				rule succeeds.
The woman gets bored and moves on rule is listed last in the barbara wandering rules.

This is the woman gives birth to a tentacle monster rule:
	if the woman-status of woman-barbara < 90 and woman-barbara is tentacle-pregnant and woman-barbara is in the location of the player and the number of monsters in the location of the player is 1:
		let M be a random off-stage tentacle monster;
		if M is monster:[hiding the check in an if-statement like this prevents run-time errors]
			now M is newborn;
			now the text-shortcut of M is "ntm";
			set up M;
			now M is in the location of the player;
			say "[BigNameDesc of woman-barbara] collapses to the ground.[line break][second custom style]'Oh fuck, it's coming!'[roman type][line break][big he of woman-barbara] spreads her legs, exposing [his of woman-barbara] dilated pussy and womb. You watch with [horror the bimbo of the player] as one, two, then three tentacles pry [his of woman-barbara] cunt open even further and then the thing inside begins to pull itself out.[line break][second custom style]'[if the woman-bimbo of woman-barbara < 4]It hurts! Get it out! It hurts so much[otherwise]I'm going to be a mama[end if]!'[roman type][line break][BigNameDesc of woman-barbara] flails helplessly as a basketball-sized lump of grey flesh forces its way out of [his of woman-barbara] and into the world. [big he of woman-barbara] lies exhausted on the ground as her spawn's single giant eye focuses on you.";
			now woman-barbara is not tentacle-pregnant;
			distract woman-barbara;
			now the sleep of woman-barbara is 100;
			increase the delayed sluttification of woman-barbara by 1;
			now M is interested;
			anger M;
			rule succeeds.
The woman gives birth to a tentacle monster rule is listed last in the barbara wandering rules.


Part 5 - Protection

To compute protection of (M - woman-barbara):
	let X be M;
	repeat with U running through dangerous monsters in the location of the player:
		now X is U;
	if the player is flying:
		now M is uninterested;
	otherwise if X is M:
		compute wandering of M;
	otherwise:
		compute M protecting against X;
		
To compute (M - woman-barbara) protecting against (X - a monster):
	if the woman-status of M is 91 and X is mechanic:
		if X is penetrating a body part:
			say "[BigNameDesc of M] [one of]makes [himself of M] useful by sucking [NameDesc of X][']s balls[or]makes lewd slurping sounds as [he of M] massages [NameDesc of X][']s with [his of M] lips[or]stands upright and begins to worship [NameDesc of X][']s tongue in a long, loud French kiss[or][BigNameDesc of M] is still passionately kissing [NameDesc of X][stopping].";
	otherwise if the woman-status of M >= 90:
		do nothing; [Barbara was spawned to get fucked, not fight.]
	otherwise if the player is monster fucked:
		if the woman-bimbo of M > 4:
			say "[BigNameDesc of M] giggles. [line break][second custom style]'Have fun, I won't get in your way!'[roman type][line break]";
			deinterest M;
		otherwise:
			say "[BigNameDesc of M] sobs. [line break][second custom style]'I'm so sorry, I couldn't stop [him of X]!'[roman type][line break][big he of M] runs off.";
			deinterest M;
			WomanSluttify;
			Vanish M;
			if a random number between 1 and 2 is 1 and the woman-bimbo of M < 6, increase the woman-bimbo of M by 1;
	otherwise:
		if the woman-bimbo of M > 4:
			say "[BigNameDesc of M] giggles. [line break][second custom style]'Have fun, I won't get in your way!'[roman type][line break]";
			deinterest M;
		otherwise:
			let prev-health be the health of X;
			compute X receiving a random number from 1 to 2 damage from M;
			if prev-health is the maxhealth of X and the health of X < the maxhealth of X, say "[AllyInstigated of X]".

To say AllyDamageFlav of (M - woman-barbara) on (X - a monster):
	say "[one of][line break][second custom style]'Let's do this!'[roman type][line break][or][line break][second custom style]'Take this!'[roman type][line break][stopping][line break][BigNameDesc of M] knees [NameDesc of X] with all [his of M] strength.".

To say AllyInstigated of (X - a monster):
	if X is intelligent, say "[BigNameDesc of X] looks really pissed off now!  [line break][variable custom style][if the bimbo of the player < 5]That wasn't the plan... wait why is [he of X] looking at ME angrily?![roman type][line break][otherwise if the player is able to speak]'I'm sorry, that wasn't my fault!'[roman type][line break][BigNameDesc of X] doesn't seem to care what you say, and seems mainly angry with you![otherwise]Uh-oh... why do I get the feeling I'm going to be the one in trouble here?[roman type][line break][end if]".

Part 6 - Combat

Section 0 - Punishment

This is the barbara unique punishment rule:
	let J be the biggest held jewel;
	let P be a random eligible piercing;
	let G be a random regional glue;
	if the woman-bimbo of woman-barbara < 3 and image cutscenes is 1, display figure of barbara cutscene 3;
	if the player is in the hotel and P is piercing and P is actually summonable:
		unless modification machine is in the location of the player:
			drag to Hotel02 by woman-barbara;
		say "[big he of woman-barbara] forces you onto the [ShortDesc of modification machine]! [PiercingFlav of P]";
		summon P cursed;
		say "[second custom style]'Hahaha, that looks so ridiculous! Serves you right.'[roman type][line break]";
	otherwise if the player is in the woods and vine boss is alive:
		drag to Woods16 by woman-barbara;
		say "[second custom style]'Have fun, [if the woman-bimbo of woman-barbara < 5]bitch.'[otherwise]*giggle*'[end if][roman type][line break][big he of woman-barbara] pushes you down the hole.";
		now the player is in WoodsBoss01;
		now another-turn is 1;
	otherwise if the player is in the dungeon and G is glue:
		say "[second custom style]'[if the woman-bimbo of woman-barbara < 5]Do you regret making an enemy of me yet?'[otherwise]This is my favourite spot down here! Enjoy!'[end if][roman type][line break][big he of woman-barbara] pushes you into the glue.";
		increase the times-stuck of G by 1;
		now the motion of the player is 0;
		now G is grabbing the player;
		now the stickiness of the player is 2 + a random number between 1 and the glue-strength of G / 4;
		now the smell-duration of G is 4;
	otherwise if the woman-bimbo of woman-barbara < 5 and J is plentiful accessory:
		say "[BigNameDesc of woman-barbara] yanks the [J] from your [if J is carried and there is a worn bag of holding][ShortDesc of a random worn bag of holding][otherwise if J is carried]hands[otherwise if J is necklace]neck[otherwise if J is bracelet]wrist[otherwise]finger[end if]![line break][second custom style]'This is mine now.'[roman type][line break]";
		now J is in holding pen;
		now woman-barbara is retaining J;
	otherwise:
		say "[BigNameDesc of woman-barbara] spreads [his of woman-barbara] cheeks and moves [his of woman-barbara] crack towards your face.";
		if face is not actually occupied, say "[line break][second custom style]'[if the woman-bimbo of woman-barbara < 5]Lick my asshole, [cunt]. Show me you admit defeat.'[otherwise]Wanna taste?'[end if][roman type][line break]Do you lick [NameDesc of woman-barbara][']s butthole? [yesnolink]";
		if face is not actually occupied and the player consents:
			say "You [if the player is not a pervert]reluctantly[otherwise if the player is not a nympho]obediently[otherwise]happily[end if] tongue her loose hole, [if the player is not a pervert]wincing with shame[otherwise if the player is not a nympho]and start to get turned on[end if] when she sighs with pleasure. ";
			if the raw delicateness of the player < the raw anal sex addiction of the player * 2:
				say "You feel a bit more submissive for having done that.";
				increase the raw delicateness of the player by 1;
			otherwise:
				say "You now feel a bit more [if the anal sex addiction of the player > 5]obsessed[otherwise]comfortable[end if] with butt stuff.";
				AnalSexAddictUp 1;
		otherwise:
			if bukkake fetish is 1:
				say "[second custom style]'[if face is not actually occupied and the woman-bimbo of woman-barbara >= 5]Fine, I guess you'll just have to sit there and watch!'[otherwise if the woman-bimbo of woman-barbara >= 5]Oopsie!'[otherwise if face is actually occupied]Hold still, bitch.'[otherwise]Wrong choice, bitch!'[end if][roman type][line break]A jet of cum blasts out of [NameDesc of woman-barbara][']s asshole as [he of woman-barbara] lets out an anal creampie all over your face.[line break][variable custom style][if the semen addiction of the player < 7]Gross gross gross!!![otherwise]How long has [he of woman-barbara] been holding that in? Was [he of woman-barbara] saving it for me?![roman type][line break]";
				CumFaceUp 15;
			otherwise:
				say "[second custom style]'[if face is not actually occupied and the woman-bimbo of woman-barbara >= 5]Fine, I guess you'll just have to sit there and watch!'[otherwise if the woman-bimbo of woman-barbara >= 5]Look how stretchy it is!'[otherwise if face is actually occupied]Take a close look, bitch. This is what you're gonna be tasting one of these days soon.'[otherwise]How rebellious. Are you sure you don't want a taste?'[end if][roman type][line break][big he of woman-barbara] pushes two fingers from each hand into [his of woman-barbara] butt, before pulling [his of woman-barbara] hands apart to make [his of woman-barbara] hole gape right in front of your eyes. [if the player is not a nympho]You find yourself becoming desensitized to such lewd displays - it's pretty normal for this kind of game[otherwise]You find yourself staring deep inside with glee and wonder in your eyes[end if]. [big he of woman-barbara] lowers [his of woman-barbara] gaping wide asshole over you until it's pretty much touching your face, before letting go and allowing it to snap shut on the tip of your nose, making you yelp with surprise. [big he of woman-barbara] laughs and then stands back up.";
				SexAddictUp 1;
	satisfy woman-barbara.
	
The unique punishment rule of woman-barbara is the barbara unique punishment rule.

Section 1 - Fighting

To say MonsterTripAnnounceFlav of (M - woman-barbara):
	say "[BigNameDesc of M] [if the woman-bimbo of M < 4]shifts [his of M] weight and goes for a slide tackle[otherwise if the woman-bimbo of M < 6]grabs your shoulders and tries to hook a foot behind your ankle[otherwise]drops to her knees and after greedily staring at your crotch for a moment, tries to grab your legs and squeeze them together[end if]!".

To say MonsterFailedTripFlav of (M - woman-barbara):
	say "[if the woman-bimbo of M < 4]You manage to leap out of the way just in time[otherwise]You manage to pull yourself free before you fall over[end if]. Phew!".

To say MonsterTrippedFlav of (M - woman-barbara):
	say "[big he of M] succeeds in making you topple to the ground.".

To compute (M - woman-barbara) striking (B - face):
	if bukkake fetish is 1 and the woman-bimbo of M < 3, BodyRuin 1;
	otherwise BodyRuin 2.

To say StrikingSuccessFlav of (M - woman-barbara) on (B - a body part):
	if B is face and bukkake fetish is 1 and the semen coating of face < 4 and the woman-bimbo of M < 3:
		say "[BigNameDesc of M] growls and takes a step back. Aiming with a steady hand, [he of M] points [his of M] gun at your head.[line break][second custom style]'This load wasn't meant for you.'[roman type][line break]";
		if image cutscenes is 1, display figure of barbara cutscene 1;
		say "A single moment of dread turns to surprise and [horror semen addiction of the player] as a powerful burst of [semen] jets out of the nozzle and drenches your face, blinding you!";
		CumFaceUp 20;
		now another-turn is 1;
	otherwise if the woman-bimbo of M < 5:
		say "[BigNameDesc of M] [one of]winds up a big punch and smacks you[or]lands a karate chop[or]kicks you[at random] [TargetName of B]!  Ouch!!";
	otherwise:
		say "[BigNameDesc of M] [one of]giggles as [he of M] [or]grins and [or][at random]spanks you [one of]hard [or][or][purely at random][TargetName of B]!";

Section 2 - Damage	

To compute damage of (M - woman-barbara):
	if the health of M > 0:
		if the sleep of M is 0:
			if M is uninterested or M is not angered:
				say "[BigNameDesc of M] looks shocked. [line break][speech style of M]'[one of]Fucking bitch! Come on then![or]What the fuck is your problem? You're going down!'[or]Oh you are going to wish you never messed with me!'[at random][roman type][line break]";
				if the woman-bimbo of M < 3 and image cutscenes is 1, display figure of barbara cutscene 2;
				now M is interested;
				now M is angered;
			otherwise:
				say DamageReaction (the health of M) of M;
		otherwise:
			decrease the sleep of M by 300;
			if the health of M < the maxhealth of M / 2, now the sleep of M is 0;
			if the sleep of M < 0, now the sleep of M is 0;
			if the sleep of M is 0:
				say "[big he of M] wakes up, looking very pissed off indeed!  Uh-oh..";
				now M is interested;
				anger M;
			otherwise:
				say "[big he of M] is still unconscious.";
	otherwise:
		compute death of M.

To say DamageReactHealthy of (M - woman-barbara):
	say "[big he of M] looks [one of][or]even [stopping]more pissed off than she did already!".

To say DamageReactDamaged of (M - woman-barbara):
	say "[big he of M] grunts in pain!".

To say DamageReactTired of (M - woman-barbara):
	say "[big he of M] staggers, squeaking in pain!".

To say DamageReactWeak of (M - woman-barbara):
	say "[big he of M] screams in pain, struggling to maintain [his of M] balance!".

To say DamageReactSubmissive of (M - woman-barbara):
	say "[big he of M] groans in pain, [if the size of penis <= 3]seemingly resigning [himself of M] to something[otherwise]staring apprehensively at your crotch[end if] as [he of M] fights to maintain her balance.".

To compute unique death of (M - woman-barbara):
	now the sleep of M is 0;
	if the health of M <= 0:
		if the woman-bimbo of M <= 2:
			now magic pistol is in the location of the player;
			say "[big he of M] [if the sleep of M is 0]grunts and drops to the ground before disappearing[otherwise]stops breathing and then disappears[end if]. [big his of M] gun is left behind, lying on the ground.";
			compute autotaking magic pistol;
		otherwise:
			say "[big he of M] [if the sleep of M is 0]grunts and drops to the ground before disappearing[otherwise]stops breathing and then disappears[end if].";
			loot M;
			loot M.

Part 7 - Conversation

To compute talk option (N - 1) to (M - woman-barbara):
	if the woman-status of M is 0 and M is stranger:
		say "[FirstGreeting of M]";
	otherwise:
		if the bimbo of the player < 4:
			say "[first custom style]'Hi again, [BarbaraName].'";
		otherwise if the bimbo of the player < 8:
			say "[first custom style]'Hey there, [BarbaraName] what's up?'";
		otherwise if the bimbo of the player < 10:
			say "[second custom style]'Hey hey [BarbaraName], looking good!'";
		otherwise if the bimbo of the player < 12:
			say "[second custom style]'Hiya [BarbaraName], damn you're sexy!'";
		otherwise if the bimbo of the player < 15:
			say "[second custom style]'Ooh [BarbaraName], I want you bad!'";
		otherwise:
			say "[second custom style]'Hey [BarbaraName], looking for a fuck?'";
		say "[roman type][line break]";
	if the woman-status of M is 0 and M is stranger:
		say "[second custom style]'Oh shit! Wait... oh my god, are you another player? I didn't realise there was more than one of us playing at the same time! [if the faint count of the player > 1]No wonder the map keeps resetting around me... [otherwise if the faint count of the player is 1]No wonder the map shifted around me a while ago! [end if]I wonder if we're allowed to work together?  What's my name?  My name... I can't think of anything except 'Barbara'... but I don't think that is my real name...'[roman type][line break]";
		now M is introduced;
		now the text-shortcut of M is "ba";
	otherwise if the woman-status of M is 91 and the mechanic-scene of M <= 5 and M is in the location of the player and mechanic is unfriendly:
		say "[second custom style]'HYUK HYUK HYUK'[roman type][line break]";
	otherwise if M is angered:
		say "[second custom style]'Why yes I would like to [if the woman-bimbo of the player < 5]fight[otherwise]fuck[end if].'[roman type][line break]";
	otherwise if the woman-status of M is 0:
		if M is interested:
			say "[second custom style]'I hate being alone in these woods...'[roman type][line break]";
		otherwise:
			if the woman-bimbo of M < 3:
				say "[second custom style]'Hi again. Glad to see you're still coping[if the woman-old-bimbo of M is not the woman-bimbo of M]. My name is [current-name of M] now, by the way.'[otherwise].'[end if][roman type][line break]";
			otherwise if the woman-bimbo of M < 5:
				say "[big he of M] grins at you. [line break][second custom style]'[if the woman-old-bimbo of M is not the woman-bimbo of M]That's not my name, it's [current-name of M]!'[otherwise]Heya sweetums.'[end if][roman type][line break]";
			otherwise:
				say "[second custom style]'*Giggle*. [if the woman-old-bimbo of M is not the woman-bimbo of M]That's not my name, my new super sexy name is [current-name of M]!'[otherwise]Look who it is!  Did you always look so fucking hot?  I'm jealous!'[end if][roman type][line break]";
	otherwise if the woman-status of M is 1:
		if M is interested:
			say "[second custom style]'There are lots of sex dolls around here at the moment, aren't there?'[roman type][line break]";
		otherwise:
			if the woman-bimbo of M < 3:
				say "[second custom style]'Hi again. Glad to see you're still coping.[if the woman-old-bimbo of M is not the woman-bimbo of M]  My name is [current-name of M] now, by the way.'[roman type][line break]";
			otherwise if the woman-bimbo of M < 5:
				say "[big he of M] grins at you. [line break][second custom style]'[if the woman-old-bimbo of M is not the woman-bimbo of M]That's not my name, it's [current-name of M]!'[otherwise]Heya sweetums.'[end if][roman type][line break]";
			otherwise:
				say "[second custom style]'*Giggle*. [if the woman-old-bimbo of M is not the woman-bimbo of M]That's not my name, my new super sexy name is [current-name of M]!'[otherwise]Look who it is!  Did you always look so fucking hot?  I'm jealous!'[end if][roman type][line break]";
	otherwise if the woman-status of M is 2:
		if the favour of M < the bondage-favour-limit of M:
			say "[second custom style]'Karma's a bitch, but not as much of a bitch as you.'[roman type][line break]";
		otherwise	if the woman-old-bimbo of M is the woman-bimbo of M:
			if the woman-bimbo of M < 3:
				say "[second custom style]'You should be more careful, bondage is really difficult to deal with.'[roman type][line break]";
			otherwise if the woman-bimbo of M < 5:
				say "[second custom style]'Bondage might sound fun, but it really makes it a lot more difficult to play the game.'[roman type][line break]";
			otherwise:
				say "[second custom style]'You don't know how tempting it was to have my way with you before setting you free~'[roman type][line break]";
		otherwise:
			if the woman-bimbo of M < 3:
				say "[second custom style]'Hi again. Glad to see you're still coping[if the woman-old-bimbo of M is not the woman-bimbo of M]. My name is [current-name of M] now, by the way[end if].'[roman type][line break]";
			otherwise if the woman-bimbo of M < 5:
				say "[big he of M] grins at you. [line break][second custom style]'[if the woman-old-bimbo of M is not the woman-bimbo of M]That's not my name, it's [current-name of M]!'[otherwise]Heya sweetums.'[end if][roman type][line break]";
			otherwise:
				say "[second custom style]'*Giggle*. [if the woman-old-bimbo of M is not the woman-bimbo of M]That's not my name, my new super sexy name is [current-name of M]!'[otherwise]Look who it is!  Did you always look so fucking hot?  I'm jealous!'[end if][roman type][line break]";
	otherwise if the woman-status of M is 3:
		if the woman-old-bimbo of M is the woman-bimbo of M:
			if the woman-bimbo of M < 3:
				say "[second custom style]'The minotaur is very tough. Now that it's released, you should probably get the hell out of here!'[roman type][line break]";
			otherwise if the woman-bimbo of M < 5:
				say "[second custom style]'I doubt you can take the minotaur. Unless you've got a bit of blind optimism like me, you should probably head back up to the woods.'[roman type][line break]";
			otherwise:
				say "[second custom style]'If you want to have some fun, stay down here with me!'[roman type][line break]";
		otherwise:
			if the woman-bimbo of M < 3:
				say "[second custom style]'Hi again. Glad to see you're still coping[if the woman-old-bimbo of M is not the woman-bimbo of M]. My name is [current-name of M] now, by the way.'[otherwise].'[end if][roman type][line break]";
			otherwise if the woman-bimbo of M < 5:
				say "[big he of M] grins at you. [line break][second custom style]'[if the woman-old-bimbo of M is not the woman-bimbo of M]That's not my name, it's [current-name of M]!'[otherwise]Heya sweetums.'[end if][roman type][line break]";
			otherwise:
				say "[second custom style]'*Giggle*. [if the woman-old-bimbo of M is not the woman-bimbo of M]That's not my name, my new super sexy name is [current-name of M]!'[otherwise]Look who it is!  Did you always look so fucking hot?  I'm jealous!'[end if][roman type][line break]";
	otherwise if the woman-status of M is 4:
		if M is interested:
			say "[second custom style]'Hmm, robots are kind of sexy, I guess?'[roman type][line break]";
		otherwise:
			if the woman-bimbo of M < 3:
				say "[second custom style]'Hi again. Glad to see you've made it this far.[if the woman-old-bimbo of M is not the woman-bimbo of M]  My name is [current-name of M] now, by the way.'[roman type][line break]";
			otherwise if the woman-bimbo of M < 5:
				say "[big he of M] beams at you. [line break][second custom style]'[if the woman-old-bimbo of M is not the woman-bimbo of M]That's not my name, it's [current-name of M]!'[otherwise]Hey there, honey.'[end if][roman type][line break]";
			otherwise:
				say "[second custom style]'*Giggle*. [if the woman-old-bimbo of M is not the woman-bimbo of M]I'm not called that any more, my name is obviously [current-name of M]!'[otherwise]Look who it is!  Aren't you just LOVING this fetish hotel?'[end if][roman type][line break]";
	otherwise if the woman-status of M is 5:
		say "[second custom style]'[one of][if the woman-bimbo of M < 4]Let's not talk about what just happened okay?  Please?'[otherwise if the woman-bimbo of M is 4]I can't believe I let you catch me in such a humiliating moment. Maybe I really am a slut...'[otherwise]I feel so much better after sitting on that dildo chair!  Yum!'[end if][or][if the woman-bimbo of M < 4]Come on, let's try and find the exit to this crazy hotel.'[otherwise]Exploring the hotel with you is so much fun!'[end if][stopping][roman type][line break]";
		if the woman-old-bimbo of M is not the woman-bimbo of M, say "[second custom style]'My name is [current-name of M] now, by the way.'[roman type][line break]"; 
	otherwise if the woman-status of M is 90:
		say "[second custom style]'Let's keep away from those vines, shall we?'[roman type][line break]";
	otherwise if the woman-status of M is 94:
		if there is a revealed hypno trap in the location of M:
			say "[second custom style]'Huh? Oh crap, another hypno trap! Let's get out of here!'[roman type][line break]";
			compute room leaving of M;
			now M is uninterested;
		otherwise:
			say "[second custom style]'Those TV screens are so difficult to stop watching...'[roman type][line break]";
	otherwise if the woman-status of M is 95:
		say "[second custom style]'Thank you so much for saving me from that toilet prison. It was on a timer and if nobody saved me within the next few minutes, it would have locked permanently!'[roman type][line break]";
	otherwise:
		say "[second custom style]'I'm not sure I want to talk right now.'[roman type][line break]";
	now the woman-old-bimbo of M is the woman-bimbo of M;
	now the old-name of M is the current-name of M;
	now the old-title of M is the current-title of M;
	now M is interested;
	calm M.
	
To compute talk option (N - 2) to (M - woman-barbara):
	if M is uninterested or M is stranger:
		say "[big he of M] doesn't seem to realise you're talking to [him of M].";
	otherwise if the woman-status of M is 91 and the mechanic-scene of M <= 5 and M is in the location of the player and mechanic is unfriendly:
		say "[second custom style]'HYUK HYUK HYUK'[roman type][line break]";
	otherwise if M is angered:
		say "[second custom style]'[if the player is upright]That's a great question. Let me answer it with my fist.'[otherwise]I don't think you're in the position to be the one asking questions right now, do you?'[roman type][line break]";
	otherwise if the woman-status of M is 0:
		if the woman-bimbo of M < 3:
			say "[one of][line break][second custom style]'How did I get this gun?... You don't want to know what I had to do to get this gun.'[roman type][line break][big he of M] looks ashamed.[or][line break][second custom style]'They tricked you into thinking this was just a normal game?  Those bastards, do they not get enough money from the rest of us?!  I'm here because I have huge debts I can't pay off, so I'm risking my mind and body for a chance at winning some of the prize money.'[roman type][line break][or][line break][second custom style]'Am I a man or woman in real life?  I... can't remember... if I was a man, I doubt I am any more.'[roman type][line break][in random order][line break]";
		otherwise if the woman-bimbo of M < 5:
			say "[second custom style]'[one of]How do I keep my hair this dark?  I don't know, it never seems to change for me. No idea why, I'd love to try out being a blonde!'[or]Am I a man or woman in real life?  I'm clearly woman! I think.'[or]The makeup?  Well those mannequins keep coming, and sometimes it's just less risky to let them do what they want, and then they'll stop chasing you. You wouldn't want to get caught by something a lot scarier because you are already too beaten up now, would you?'[in random order][roman type][line break]";
		otherwise:
			say "[second custom style]'[one of]What happened to me?  Lots of fun things, that's what!'[or]I'm sorry I have no idea what you just said, I was too busy thinking about [manly-penis]s.'[or]Escape?  Why would I want to escape?'[in random order][roman type][line break]";
	otherwise if the woman-status of M is 2 and the favour of M < the bondage-favour-limit of M:
		say  "[second custom style]'[one of]Why am I not giving you the key? Payback, of course. What else?'[or]Payback for what? You bloody well know what.'[or]Plead all you want, I'm not changing my mind.'[stopping][roman type][line break]";
	otherwise if the woman-status of M is 1 or the woman-status of M is 2:
		if the woman-bimbo of M < 3:	
			say  "[second custom style]'[one of]Why am I back down here? Well the shop and altar are often useful, and until the royal guards turn aggressive it's a bit safer than anywhere else.'[or][if minotaur is alive]The [ShortDesc of minotaur]? There's a lever in the prison guard's room that I bet releases him, but I'm too scared to try it.'[otherwise]I can't believe you have slain the [ShortDesc of minotaur] either! You're amazing!'[end if][or]The royal bed? I think it heals you to full, but I'm not sure it's worth it, I bet it also helps turn you into a bimbo.'[in random order][roman type][line break]";
		otherwise if the woman-bimbo of M < 5:	
			say  "[second custom style]'[one of]Why am I back down here? Well the sex dolls are easy to beat, and that shopkeeper is just so delicious...'[or][if minotaur is captive]The [ShortDesc of minotaur]?  There's a lever in the prison guard's room that I'm always tempted to try out...'[otherwise]I can't believe you have released the minotaur either! You're so daring!'[end if][or]The statue with the huge penis? Yeah it somehow magically heals your orifices, and it helps you get used to the taste of semen, which is a good thing, right?'[in random order][roman type][line break]";
		otherwise:
			say  "[second custom style]'[one of]Why am I back down here? Well I wanted to see if I could beat up a royal guard. Turns out I can't, but don't worry, he gave me a consolation prize! *giggle*'[or][if minotaur is captive]The [ShortDesc of minotaur] cage?  There's a lever somewhere apparently, and when I find it I'm definitely going to try it out!'[otherwise]I can't believe we've released the [ShortDesc of minotaur] either! How fun...'[end if][in random order][roman type][line break]";
	otherwise if the woman-status of M is 3:
		if the woman-bimbo of M < 5:	
			say  "[second custom style]'[one of]Why am I back down here?  Can you keep a secret?  I may have pulled the lever for the [ShortDesc of minotaur]! Tee hee!'[or]If I were you, I've leave the Dungeon before it finds you!'[or]I don't know what happens if the [ShortDesc of minotaur] catches you, but something tells me it's pretty unique!'[cycling][roman type][line break]";
		otherwise:
			say  "[second custom style]'[one of]Why am I back down here? To [']fight['] the [ShortDesc of minotaur], of course, silly!'[or]Yep, I've let it out!  If I were you, I've leave the Dungeon before it finds you!  Unless you want to join in with the fun?'[or]I don't know what happens if the [ShortDesc of minotaur] catches you, that's why I want to find out!'[cycling][roman type][line break]";
	otherwise if the woman-status of M is 4 or the woman-status of M is 5:
		if the woman-bimbo of M < 4:
			say "[second custom style]'[one of]I'm still looking for the way out. I hope you haven't fallen into complete depravity yet, have you?'[or]From the looks of it, I'd say that the mechanic looks like he's probably the most dangerous of the lot. But it's just a hunch.'[or]I'd just had way too much trouble with those vines, so I came up here to get away from here. And now I have to deal with robots! Grr!'[in random order][roman type][line break]";
		otherwise:
			say "[second custom style]'[one of]I'm getting myself some deliciously thick robot cock!  What about you?'[or]I don't know who's the strongest here, but it's definitely not me!  Tee hee.'[or]Ooh, yes, you must try the modification machine in room 101 - I feel much more ready to [']take on['] the monsters now, if you know what I mean.'[in random order][roman type][line break]";
	otherwise if there is a revealed hypno trap in the location of M: [looking at hypno trap]
		say "[second custom style]'Uuuuuuuuh...'[roman type][line break]";
	otherwise if the woman-status of M >= 90:
		say "[second custom style]'I'm sorry I don't really feel in the mood to answer questions right now.'[roman type][line break]".
	
To compute friendly drink of (M - woman-barbara):
	if M is uninterested or M is stranger:
		say "[big he of M] doesn't seem to realise you're talking to [him of M].";
	otherwise if M is angered:
		say "[second custom style]'As if I'd help you!'[roman type][line break]";
	otherwise if the woman-status of M is 91 and the mechanic-scene of M <= 5 and M is in the location of the player and mechanic is unfriendly:
		say "[second custom style]'HYUK HYUK HYUK'[roman type][line break]";
	otherwise:
		say "[second custom style]'I'm sorry, I've got nothing!'[roman type][line break]".


Woman Barbara ends here.

