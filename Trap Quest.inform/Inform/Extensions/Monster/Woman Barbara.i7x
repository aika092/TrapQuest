Woman Barbara by Monster begins here.

Include Fishbowl by Headgear.

A woman is a kind of monster.

woman-barbara is a woman.

woman-barbara is intelligent. woman-barbara has a number called delayed sluttification. woman-barbara can be stranger or introduced. woman-barbara is stranger. The leftover-type of woman-barbara is usually 130. woman-barbara can be angered. the favour of woman-barbara is 10. woman-barbara can be tentacle-pregnant. woman-barbara can be truly-female or truly-male. woman-barbara is truly-female.

Definition: woman-barbara is normally ally if the favour of it >= 10.

Definition: woman-barbara is summoningRelevant: decide no. [Doesn't count towards the number of monsters in the region for the purposes of summoning portals.]

woman-barbara has a number called woman-status.

woman-barbara has a number called woman-bimbo. the woman-bimbo of woman-barbara is 2.
woman-barbara has a number called woman-old-bimbo. the woman-old-bimbo of woman-barbara is 2.

woman-barbara has an indexed text called current-title. Understand the current-title property as describing woman-barbara. The current-title of woman-barbara is "Player".
woman-barbara has an indexed text called old-title. Understand the old-title property as describing woman-barbara. The old-title of woman-barbara is "Player".

woman-barbara has an indexed text called current-name. Understand the current-name property as describing woman-barbara. The current-name of woman-barbara is "Barbara".
woman-barbara has an indexed text called old-name. Understand the old-name property as describing woman-barbara. The old-name of woman-barbara is "Barbara".

Figure of Woman 1 is the file "NPCs/MultiFloor/Woman/woman1.jpg".
Figure of Woman 2 is the file "NPCs/MultiFloor/Woman/woman2.png".
Figure of Woman 3 is the file "NPCs/MultiFloor/Woman/woman3.png".
Figure of Woman 4 is the file "NPCs/MultiFloor/Woman/woman4.png".
Figure of Woman 5a is the file "NPCs/MultiFloor/Woman/woman5a.png".
Figure of Woman 5b is the file "NPCs/MultiFloor/Woman/woman5b.png".
Figure of Woman pregnant is the file "NPCs/MultiFloor/Woman/woman6.png".
Figure of Woman stool is the file "NPCs/MultiFloor/Woman/woman7.jpg".

Figure of Barbara Cutscene 1 is the file "Special/Cutscene/cutscene-barbara-throne1.jpg".
Figure of Barbara Cutscene 2 is the file "Special/Cutscene/cutscene-barbara-throne2.jpg".
Figure of Barbara Cutscene 3 is the file "Special/Cutscene/cutscene-barbara-throne3.jpg".
Figure of Barbara Cutscene 4 is the file "Special/Cutscene/cutscene-barbara-toilet1.png".
Figure of Barbara Cutscene 5 is the file "Special/Cutscene/cutscene-barbara-anal-contraption1.jpg".
Figure of Barbara Cutscene 6 is the file "Special/Cutscene/cutscene-barbara-crafting1.jpg".
Figure of Barbara Cutscene 7 is the file "Special/Cutscene/cutscene-barbara-crafting2.jpg".
Figure of Barbara Cutscene 8 is the file "Special/Cutscene/cutscene-barbara-vines1.jpg".
Figure of Barbara Cutscene 9 is the file "Special/Cutscene/cutscene-barbara-vines2.jpg".

Understand "mysterious", "woman" as woman-barbara.
The text-shortcut of woman is "wo".

To say ShortDesc of (M - woman-barbara):
	say "[if M is stranger]the [end if][FuckerDesc of M]".
To say MediumDesc of (M - woman-barbara):
	say "[if M is introduced][BarbaraTitle] [BarbaraName][otherwise]mysterious [man of M][end if][if M is tentacle-pregnant] (pregnant)[end if]".

To say NameDesc of (M - woman-barbara):
	say "[input-style][FuckerDesc of M][roman type]".
To say BigNameDesc of (M - woman-barbara):
	say "[input-style][BigFuckerDesc of M][roman type]".
To say FuckerDesc of (M - woman-barbara):
	say "[if M is stranger]the mysterious woman[otherwise][BarbaraName][end if]".
To say BigFuckerDesc of (M - woman-barbara):
	say "[if M is stranger]The mysterious woman[otherwise][BarbaraName][end if]".

To say BarbaraTitle:
	say "[if the woman-old-bimbo of woman-barbara is the woman-bimbo of woman-barbara][current-title of woman-barbara][otherwise][old-title of woman-barbara][end if]".

To say BarbaraName:
	say "[if the woman-old-bimbo of woman-barbara is the woman-bimbo of woman-barbara][current-name of woman-barbara][otherwise][old-name of woman-barbara][end if]".

To decide which figure-name is the monster-image of (M - woman-barbara):
	if the woman-status of M is 97:
		if the throne-scene of woman-barbara >= 3, decide on figure of barbara cutscene 3;
		if the throne-scene of woman-barbara is 2, decide on figure of barbara cutscene 2;
		decide on figure of barbara cutscene 1;
	if the woman-status of M is 93 and the number of interested unfriendly dominatrix in the location of the player is 0, decide on figure of barbara cutscene 5;
	if the woman-status of M is 80, decide on figure of woman stool;
	if the vine-scene of M > 0 and the vine-scene of M < 5, decide on figure of barbara cutscene 8;
	if M is tentacle-pregnant, decide on figure of woman pregnant;
	if the woman-bimbo of M < 3, decide on figure of woman 1;
	if the woman-bimbo of M is 3, decide on figure of woman 2;
	if the woman-bimbo of M is 4, decide on figure of woman 3;
	if the woman-bimbo of M is 5, decide on figure of woman 4;
	if bukkake fetish is 1, decide on figure of woman 5b;
	decide on figure of woman 5a.

[
Condition for barbara being male
if (tg fetish is 1 and the woman-bimbo of M < 2 and lady fetish is not 1) or lady fetish is 2:
]
To say MonsterDesc of (M - woman-barbara):
	if lady fetish is 2:
		if the woman-bimbo of M is 0, say "A slim, brown-haired [man of M] wearing a dark grey shirt under a black leather jacket and a matching pair of figure-hugging leather pants. [big his of M] strong jawline is darkened with stubble, and although most of [his of M] skin is covered up, you can tell [he of M]'s fairly athletic. [big he of M] is wearing a pair of square-rimmed glasses and carrying a modern-looking pistol.";[Barney]
		if the woman-bimbo of M is 1, say "A [man of M] with ear-length brown hair and a soft cast to [his of M] facial features that makes [him of M] look very feminine. [big he of M] is wearing a black fishnet shirt under a cropped leather jacket, and a matching pair of fishnet leggings underneath a pair of form-hugging leather shorts. The glasses resting on the bridge of [his of M] nose are slightly askew, and [he of M] is carrying a modern-looking pistol.";[Barry]
		if the woman-bimbo of M is 2, say "A long haired brunette wearing a black fishnet shirt underneath a tight black leather corset. Below that, [he of M]'s wearing a pair of torn fishnet leggings and a tiny pair of black hotpants, which provides the bare minimum of modesty for [his of M] crotch. [big he of M] is wearing glasses over a decent amount of makeup, and carrying a modern looking pistol.";
		if the woman-bimbo of M is 3, say "A long haired brunette wearing a tight black latex top which is too small and has too large of a cleavage window to cover [his of M] nipples. A pair of fishnet leggings and a super short black latex skirt are too exposing to hide the fact that [his of M] [manly-penis] has been locked into chastity. [big he of M] is wearing glasses over a decent amount of makeup.";
		if the woman-bimbo of M is 4, say "A long haired brunette wearing nothing on [his of M] top half but a sheer lace bra that leaves [his of M] nipples very visible. [big he of M] is wearing black suspenders and stockings but no underwear, leaving [his of M] [manly-penis], which is locked in chastity, fully exposed. [big he of M] is wearing heavily done make up. You can tell by [his of M] facial expressions that [he of M]'s having more trouble than usual thinking straight.";
		if the woman-bimbo of M is 5, say "A [man of M] wearing nothing on [his of M] top half at all except a tight black latex choker around [his of M] neck. [big he of M] is wearing a pair of fake kitty cat ears with the headband well hidden under [his of M] long brown hair, which is in a ponytail. [big he of M] is also wearing a pair of black latex crotchless panties, which fully expose [his of M] chastity cage, along with a pair of very shiny black latex thigh-high boots with long stiletto heels. [big he of M] is wearing a very heavy amount of make up. You can tell by [his of M] facial expressions [he of M]'s having huge amounts of trouble thinking straight.";
		if the woman-bimbo of M is 6:
			say "A long haired, huge breasted brunette wearing nothing at all[if bukkake fetish is 0] except a pair of white latex fetish boots with chunky heels[end if] and a matching white chastity cage around [his of M] [sissy-penis]. [big his of M] facial expression is one of empty-headed bliss.[if bukkake fetish is 1] [big he of M] is thoroughly covered in [semen] from head to toe, and has yet more [semen] dripping out of [his of M] fuckhole. [big his of M] hips and buttcheeks must have doubled if not tripled in size since you first met [him of M].";
	otherwise:
		if the woman-bimbo of M is 0, say "A short haired, flatchested brunette wearing a dark grey shirt under a black leather jacket and a matching pair of figure-hugging leather pants. [big he of M] isn't wearing makeup, so [his of M] naturally sharp facial features are accentuated by the glasses resting on the bridge of [his of M] nose. [big he of M] is carrying a modern-looking pistol.";[no cleavage, crotch covered]
		if the woman-bimbo of M is 1, say "A long haired, slim brunette wearing a black fishnet shirt under a cropped leather jacket and a matching pair of form-hugging leather shorts over a pair of black fishnet leggings. [big he of M] is wearing glasses over a small amount of makeup, and carrying a modern-looking pistol.";[cleavage, nipples covered, crotch covered]
		if the woman-bimbo of M is 2, say "A long haired, big breasted brunette wearing a black fishnet shirt underneath a tight black leather corset, and a pair of torn fishnet leggings under a tiny pair of black hotpants, which provides modesty for [his of M] crotch region but little else. [big he of M] is wearing glasses over a decent amount of makeup, and carrying a modern looking pistol.";[nipples exposed, crotch covered]
		if the woman-bimbo of M is 3, say "A long haired, large breasted brunette wearing a tight black latex top which is too small and has too large of a cleavage window to cover [his of M] nipples. A pair of fishnet leggings and a super short black latex skirt are too exposing to hide the fact that [he of M][']s not wearing underwear and barely provides any modesty for [his of M] pussy. [big he of M] is wearing glasses over a decent amount of makeup.";[nipples exposed, crotch almost visible]
		if the woman-bimbo of M is 4, say "A long haired, huge breasted brunette wearing nothing on [his of M] top half but a sheer lace bra that leaves [his of M] boobs and nipples very visible. [big he of M] is wearing black suspenders and stockings but no underwear, leaving [his of M] pussy fully exposed. [big he of M] is wearing heavily done make up. You can tell by [his of M] facial expressions that [he of M]'s having more trouble than usual thinking straight.";[nipples exposed, crotch exposed]
		if the woman-bimbo of M is 5, say "A huge breasted [man of M] wearing nothing on [his of M] top half at all except a tight black latex choker around [his of M] neck. [big he of M] is wearing a pair of fake kitty cat ears with the headband well hidden under [his of M] long brown hair, which is in a ponytail. [big he of M] is also wearing a pair of black latex crotchless panties which has a line of pearls running along [his of M] pussy, and some very shiny black latex thigh-high boots with long stiletto heels. [big he of M] is wearing a very heavy amount of make up. You can tell by [his of M] facial expressions that [he of M]'s having huge amounts of trouble thinking straight.";[basically naked]
		if the woman-bimbo of M is 6, say "A long haired, huge breasted brunette wearing nothing at all[if bukkake fetish is 0] except a pair of white latex fetish boots with chunky heels[end if]. [big his of M] facial expression is one of empty-headed bliss.[if bukkake fetish is 1] [big he of M] is thoroughly covered in [semen] from head to toe, and has yet more [semen] dripping out of [his of M] two lower fuckholes. [big his of M] hips and buttcheeks must have doubled if not tripled in size since you first met [him of M].";[actually naked]
	if M is tentacle-pregnant, say "[big his of M] massive bulging belly is a clear sign that [he of M][']s pregnant, and probably with something inhuman.";
	if the human-toilet-scene of M is 1, say "[big he of M] is wearing oversized nipple rings and has the words 'TOILET SLUT' and 'URINAL [caps boy of M]' permanently written onto [his of M] flesh.";
	if the woman-status of M is 80, say "[big he of M] is bound bent over a barstool on wheels, with a blindfold over [his of M] eyes and a ballgag in [his of M] mouth. [big his of M] asshole is pulled wide open by duct tape, and more rainbow covered tape with the words 'ANAL ONLY' printed on it is plastered chaotically over [his of M] [if lady fetish is 2]taint[otherwise]pussy[end if]. You could probably [if the player is male or there is worn strapon-panties]fuck [him of M] or [end if]free [him of M] by [bold type]pull[roman type]ing at [his of M] bondage if you like.";
	if the woman-status of M is 97, say "[big he of M] is sat on the throne, with a bulging belly[if the throne-scene of M >= 3] and a river of [semen] flowing from [his of M] mouth. [big he of M] seems barely conscious[end if].".

To set up (M - woman-barbara):
	now the monstersetup of M is 1;
	[if lady fetish is 2, now M is truly-male;]
	now M is in Woods01;
	now the raw difficulty of M is 17;
	now the health of M is the maxhealth of M;
	calm M.

To decide which number is the difficulty of (M - woman-barbara):
	decide on the raw difficulty of M + game difficulty - (woman-bimbo of M * 2).

Definition: woman-barbara is unfriendly rather than friendly if it is angered and it is not pacified.
Definition: woman-barbara is uniquely unfriendly: decide no.
Definition: woman-barbara is objectifying the player: decide no.
Definition: woman-barbara is babifying the player: decide no.

To WomanSluttify:
	if woman-barbara is introduced and the woman-bimbo of woman-barbara < 6:
		increase the delayed sluttification of woman-barbara by 1.
To ImmediateWomanSluttify:
	if woman-barbara is introduced and the woman-bimbo of woman-barbara < 6:
		increase the woman-bimbo of woman-barbara by 1;
		update name of woman-barbara.
To ImmediateWomanUnsluttify:
	if woman-barbara is introduced and [the woman-bimbo of woman-barbara >= 2]the woman-bimbo of woman-barbara > 0:
		decrease the woman-bimbo of woman-barbara by 1;
		update name of woman-barbara;
To WomanUnsluttify:
	if woman-barbara is introduced and the woman-bimbo of woman-barbara > 0:
		decrease the delayed sluttification of woman-barbara by 1.

To update name of (M - woman-barbara):
	if the woman-bimbo of M < 4:
		now the current-title of M is "Player";
	otherwise if the woman-bimbo of M is 4:
		now the current-title of M is "[one of]Flirty[or]Naughty[sticky random] Girl";
	otherwise if the woman-bimbo of M is 5:
		now the current-title of M is "[one of]Slutty Girl[or]Bimbo[sticky random]";
	otherwise:
		now the current-title of M is "[one of]Cock Lover[or]Super Slut[or]Fuck Doll[sticky random]";
	if the woman-bimbo of M is 0 and lady fetish is 2:
		now the current-name of M is "Barney";
	otherwise if the woman-bimbo of M is 1 and lady fetish is 2:
		now the current-name of M is "Barry";
	otherwise if the woman-bimbo of M < 3:
		now the current-name of M is "Barbara";
	otherwise if the woman-bimbo of M is 3:
		now the current-name of M is "Barbar";
	otherwise if the woman-bimbo of M is 4:
		now the current-name of M is "Barbie";
	otherwise if the woman-bimbo of M is 5:
		now the current-name of M is "Baby";
	otherwise:
		now the current-name of M is "Bambi".

To compute friendly boredom of (M - woman-barbara):
	if the woman-status of M is 96 and the patron-scene-done of M is 1 and M is in the location of the player:
		compute patron scene climax of M;
	otherwise if the woman-status of M is 80:
		distract M; [barbara is blindfolded and can't follow the player]
	otherwise if the patron-scene-done of M is 0 and there is a hotel bed in the location of the player:
		do nothing; [barbara waits patiently for the gangbang scene]
	otherwise:
		increase the friendly boredom of M by 1;
		if the player is not in danger and a random number from 10 to 30 < the friendly boredom of M:
			distract M;
			if M is in the location of the player, say "[BecomesBoredFlav of M]".

To vanish (M - a monster):
	if M is woman and M is introduced:
		remove M from play;
	if the woman-status of M is 90 and the vine-scene of M is 5:
		FavourDown M;
		WomanSluttify;
		if pregnancy fetish is 1 and inhuman pregnancy > 1 and lady fetish < 2, now M is tentacle-pregnant.

This is the spawn initial barbara rule:
	if diaper quest is 0, summon woman-barbara in the woods.
The spawn initial barbara rule is listed in the setting up woods monsters rules.

To uniquely destroy (M - woman-barbara): [Are there any special rules we need to follow?]
	now M is permanently banished. [This should stop her spawning again.]

Definition: woman-barbara is human: decide yes.

To say LeftoverDesc (N - 129):
	say "[if playerRegion is Dungeon][random woman] lies unconscious on the floor here but you can hardly tell that it's [him of woman-barbara]. [big he of woman-barbara][']s on [his of woman-barbara] back but [his of woman-barbara] belly is so large that it covers [his of woman-barbara] body from [his of woman-barbara] knees to [his of woman-barbara] neck. Minotaur [semen] is gradually spilling out of both [his of woman-barbara] mouth and from down below, you can see that [his of woman-barbara] belly is very slowly deflating.[otherwise][random woman] lies unconscious on the floor here, with demon [semen] still slowly seeping out of [his of woman-barbara] gaping vagina.[end if]".

Part 1 - Perception

To compute perception of (M - woman-barbara):
	if M is angered:
		say "[BigNameDesc of M] notices you! [second custom style]'[one of][if the woman-bimbo of M < 5]You! How could you treat me so poorly?! I'm not going to let you get away with it any more!'[otherwise]Hey sexy. You've taught me some valuable lessons in how to be a good friend. I think it's time for me to return to favour...'[end if][or]You still haven't lost? Let's go again, then!'[or]Hi again, bitch.'[stopping][roman type][line break][big he of M] starts walking towards you.";
		now M is interested;
	otherwise:
		now M is uninterested. [Unless there has been a scene trigger, it's up to the player to interact with her]

To compute (M - a minotaur) stomping (N - woman-barbara):
	if M is in the location of the player:
		say "[BigNameDesc of M] grabs [NameDesc of N] by the ankles. [big he of N] shrieks as [he of N] is slowly impaled onto the waiting [LongDickDesc of M]. It takes only a few thrusts for [him of M] to start cumming - you can tell because [his of N] belly expands at an alarming rate. An impossible amount of [semen] fills [him of N] up and with one last wail you see [his of N] sounds cut off by the [semen] flying out of [his of N] mouth. [big he of N] soon loses consciousness and [NameDesc of M] discards [his of N] body. [big he of N] lands on [his of N] back with [his of N] belly covering most of [his of N] body.";
		let L be a random off-stage leftover;
		now L is in the location of M;
		now the leftover-type of L is the leftover-type of N;
		destroy N;
	otherwise:
		vanish N.

Part 2 - Motion

To compute monstermotion of (M - woman-barbara):
	if the woman-status of M is 80 and the stool-scene of M is 0: [She's an anal stool and the player hasn't encountered her yet]
		check seeking 1 of M;
	otherwise if M is introduced and the woman-status of M < 90: [90 or above means she's spawned to get fucked, so she should stay still]
		now neighbour finder is the location of M;
		let A be a random N-viable direction;
		let P be the room A from the location of M;
		if A is a random N-viable direction and P is not Dungeon12:
			try M going A;
		otherwise if A is a random N-viable direction and P is not Dungeon12:
			try M going A.

To compute (M - woman-barbara) seeking (D - a direction):
	if the woman-status of M < 90: [90 or above means she's spawned to get fucked and should stay still]
		try M going D;
		compute monstermotion reactions of M.

Part 3 - Compute Woman Spawning

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

29: Just rescued from the vine boss hole
==Anything below 30 implies that a scene has just ended so a new one shouldn't start, but she's able to move around as normal==

==Anything 80 or above prevents protection==
80: Anal only stool

==Anything 90 or above prevents movement==
90: Appeared by being fucked by vines in the woods
91: Appeared by being fucked by mechanic in the hotel
92: Appeared to try the deepthroat discount challenge with the shopkeeper
93: Appeared by being fucked by the dominatrix's anal predicament contraption
94: Interacting with a hypno trap
95: Released from the toilet
96: Scene with hotel beds & patrons
97: Appeared by sitting on the throne
99: Dead
]

Definition: woman-barbara is summon appropriate: decide no. [Can she be randomly selected to be summoned?]
Definition: woman-barbara is redeploy appropriate:
	if it is not angered and it is summon-available and it is introduced and (it is off-stage or (the woman-status of it < 10 and it is not in the location of the player and it is not nearby)):
		if the number of interested regional monsters is 0, decide yes;
	decide no.
Definition: woman-barbara is deploy appropriate if it is off-stage and it is not angered and it is summon-available and it is introduced.
Definition: woman-barbara is angry deploy appropriate if it is off-stage and it is summon-available and it is introduced.

To deploy (M - woman-barbara) with woman-status (V - a number):
	now the woman-status of M is V;
	now the sleep of M is 0;
	now the boredom of M is 0;
	now M is not interested;
	if M is introduced and M is summon-available and (playerRegion is Dungeon or playerRegion is Woods or playerRegion is Hotel): [stops barbara spawning somewhere stupid like hole in the wall, iron maiden, blindfolded]
		now the health of M is the maxhealth of M;
		if V is 2:
			now M is in the location of the player;
			say "[bold type]You spot [NameDesc of M] trotting up to you![roman type] [big he of M] seems concerned at your state of affairs.";
			now M is interested;
		otherwise if V is 3:
			now M is in Dungeon06;
			if the player is in Dungeon06, say "[bold type]You spot [NameDesc of M] trotting up to you![roman type] [big he of M] grins seemingly oblivious to your presence, and then pulls the foreboding looking lever before you can react.";
			now minotaur is unleashed;
			if the player is in Dungeon36, say "You hear a mechanism whirring and watch with [if the bimbo of the player < 8]horror[otherwise if the bimbo of the player < 13]terrified excitement[otherwise]delight[end if] as the [minotaur][']s cage suddenly swings open!";
			otherwise say "You hear a mechanism whirring, and what sounds like a metal door swing open.";
		otherwise:
			regionally place M.

The womanspawning rules is a rulebook.

A time based rule (this is the woman spawning rule):
	if woman-barbara is angry deploy appropriate:
		follow the womanspawning rules;
	if woman-barbara is off-stage:
		while the delayed sluttification of woman-barbara > 0:
			ImmediateWomanSluttify;
			decrease the delayed sluttification of woman-barbara by 1;
		while the delayed sluttification of woman-barbara < 0:
			ImmediateWomanUnsluttify;
			increase the delayed sluttification of woman-barbara by 1;
	otherwise:
		if woman-barbara is not regional and (woman-barbara is not in WoodsBoss01 or playerRegion is not woods):
			vanish woman-barbara;
		otherwise if a random number between 1 and 40 is 1 or woman-barbara is asleep:
			unless woman-barbara is in the location of the player or woman-barbara is nearby or woman-barbara is stranger or the woman-status of woman-barbara >= 80, vanish woman-barbara.

This is the woman spawning to help the player with bondage rule:
	if there is worn locked clothing and portal gag is not worn and wrist collar bar is not worn and a random number between 1 and 60 is 1 and the player is not in danger:
		deploy woman-barbara with woman-status 2;
		rule succeeds.
The woman spawning to help the player with bondage rule is listed last in the womanspawning rules.

This is the woman spawning as a stool rule:
	if the player is the donator and the stool-scene of woman-barbara is 0:
		let R be a random number between 2 and 100; [This will be faster than checking her region so we prioritise it]
		if debuginfo > 1 and (playerRegion is Dungeon or playerRegion is Hotel), say "[input-style]Barbara stool scene summon check: RNG(2~100) = [R], needs to be below Barbara sluttiness ([woman-bimbo of woman-barbara]).[roman type][line break]";
			if R < the woman-bimbo of woman-barbara and (playerRegion is Dungeon or playerRegion is Hotel):
				deploy woman-barbara with woman-status 80;
				if debuginfo > 1, say "[input-style]Barbara summoned in [location of woman-barbara].[roman type][line break]";
				rule succeeds.
The woman spawning as a stool rule is listed last in the womanspawning rules.

This is the woman spawning to release the minotaur rule:
	if minotaur is caged and playerRegion is Dungeon and a random number between 4 and 500 < the woman-bimbo of woman-barbara:
		deploy woman-barbara with woman-status 3;
		rule succeeds.
The woman spawning to release the minotaur rule is listed last in the womanspawning rules.

This is the woman spawning in the region of the player rule:
	if a random number between 1 and 80 is 1:
		if playerRegion is Dungeon:
			deploy woman-barbara with woman-status 1;
			rule succeeds;
		otherwise if playerRegion is Woods:
			deploy woman-barbara with woman-status 0;
			rule succeeds;
		otherwise if playerRegion is Hotel:
			deploy woman-barbara with woman-status 4;
			rule succeeds.
The woman spawning in the region of the player rule is listed last in the womanspawning rules.

Chapter - Hotel Chair Scene

Report going when the player is in Hotel21 and Hotel21 is not discovered:
	if the number of monsters in Hotel21 is 0 and woman-barbara is redeploy appropriate:
		deploy woman-barbara with woman-status 5;
		say "You walk into the staff room just in time to see [NameDesc of woman-barbara] sitting down on one of the dildo chairs in this room, easing the large golden dong into [his of woman-barbara] asshole. Suddenly [he of woman-barbara] yelps. ";
		let R be a random number between 1 and 4;
		if R is 2 and watersports fetish is 1:
			say "[chairenemaflav][line break][second custom style]'[if the woman-bimbo of woman-barbara < 4][NameBimbo], it's not what you think! The chairs magically heal you, so I - eeek! Noooooo!'[otherwise]Oh hey [NameBimbo], fancy catching you here. I was just experimenting with the - Oooooh!'[end if][roman type][line break][big he of woman-barbara] is cut off as a fountain of [urine] shoots out of [his of woman-barbara] butthole in a huge arc and starts coating the floor of the room. The flow is powerful and it takes several seconds before [he of woman-barbara] has emptied [himself of woman-barbara].";
			UrinePuddleUp a random number between 9 and 20;
		otherwise if R is 3 and lactation fetish is 1:
			say "[chairenemaflav][line break][second custom style]'[if the woman-bimbo of woman-barbara < 4][NameBimbo], it's not what you think! The chairs magically heal you, so I - eeek! Noooooo!'[otherwise]Oh hey [NameBimbo], fancy catching you here. I was just experimenting with the - Oooooh!'[end if][roman type][line break][big he of woman-barbara] is cut off as a fountain of [milk] shoots out of [his of woman-barbara] butthole in a huge arc and starts coating the floor of the room. The flow is powerful and it takes several seconds before [he of woman-barbara] has emptied [himself of woman-barbara].";
			MilkPuddleUp a random number between 9 and 20;
		otherwise if R is 1:
			say "[chairenemaflav][line break][second custom style]'[if the woman-bimbo of woman-barbara < 4][NameBimbo], it's not what you think! The chairs magically heal you, so I - eeek! Noooooo!'[otherwise]Oh hey [NameBimbo], fancy catching you here. I was just experimenting with the - Oooooh!'[end if][roman type][line break][big he of woman-barbara] is cut off as a fountain of [semen] shoots out of [his of woman-barbara] butthole in a huge arc and starts coating the floor of the room. The flow is powerful and it takes several seconds before [he of woman-barbara] has emptied [himself of woman-barbara].";
			SemenPuddleUp a random number between 9 and 20;
		otherwise:
			say "At the same time [he of woman-barbara] notices you, a loud mechanical voice echoes out from the chair.[line break][first custom style]'SLUT! SLUT! SLUT! SLUT! SLUT!'[roman type][line break][if the woman-bimbo of woman-barbara < 4][BigNameDesc of woman-barbara] turns red as a beetroot as you watch [his of woman-barbara] scramble to pull [himself of woman-barbara] off the dildo as fast as [he of woman-barbara] can.[line break][second custom style]'N-n-n-no, I'm not a slut! I only sat on that because I heard that it magically heals you. You have to believe me!'[otherwise if the woman-bimbo of woman-barbara is 4][BigNameDesc of woman-barbara] squirms uncomfortably and turns slightly red.[line break][second custom style]'I can't believe you've caught me in such an embarrassing situation...'[otherwise][BigNameDesc of woman-barbara] giggles bashfully. [second custom style]'Guilty as charged! Sluts have way more fun, though, don't you think? Well, as long as you agree that huge cocks up your ass are fun, I guess!'[end if][roman type][line break][big he of woman-barbara] stands up and walks over to you, seemingly intent in joining your exploration attempts for the time being.";
		now woman-barbara is in the location of the player;
		now woman-barbara is interested.

To say chairenemaflav:
	say "At the same time [he of woman-barbara] notices you, [he of woman-barbara] [if the woman-bimbo of woman-barbara < 5]screams[otherwise]yelps[end if] loudly, and you watch as [his of woman-barbara] belly begins to slowly expand. [if the woman-bimbo of woman-barbara < 4][big he of woman-barbara] pulls [himself of woman-barbara] off the chair as quickly as [he of woman-barbara] can muster[otherwise]Giggling and rubbing [his of woman-barbara] swelling tummy, [he of woman-barbara] slowly but surely pulls [himself of woman-barbara] back off the dildo before [he of woman-barbara] bursts[end if], and then falls flat on [his of woman-barbara] front, clearly not quite anticipating how heavy [his of woman-barbara] belly would now be. [big he of woman-barbara] looks up at you with a dazed expression on [his of woman-barbara] face.[line break]".

Chapter - Vines Scene

woman-barbara has a number called vine-scene.

Report going when there is an aggressive vine in the location [of the player ]and the woman-bimbo of woman-barbara < 4 and the vine-scene of woman-barbara is 0:
	if debugmode is 1, say "Checking if barbara can appear.";
	if the number of monsters in the location of the player is 0 and woman-barbara is redeploy appropriate:
		deploy woman-barbara with woman-status 90;
		now woman-barbara is in the location of the player;
		now woman-barbara is interested;
		repeat with V running through aggressive vines in the location of the player:
			now the TrapNo of V is -7500; [prevents it from attacking the player]
		say "As you arrive here you see that [NameDesc of woman-barbara] is here, on [his of woman-barbara] hands and knees, with strong green vines wrapped around [his of woman-barbara] wrists and ankles, holding them in place.".

An all time based rule (this is the barbara vines rule):
	if the woman-status of woman-barbara is 90 and the vine-scene of woman-barbara <= 4:
		if there are vines in the location of woman-barbara:
			let W be woman-barbara;
			increase the vine-scene of W by 1;
			if the vine-scene of W is 1:
				if W is in the location of the player, say "[second custom style]'[NameBimbo], thank goodness you're here! Quick, help me [please], it's going to - unf!!!'[roman type][line break][BigNameDesc of W] is cut off as a thick green vine pushes its way into [his of W] [HoleDesc of W]. It looks like you could [if inline hyperlinks >= 2][link]pull vines[as]pull[end link][otherwise][bold type]pull[roman type][end if] on the vines to try and rescue [him of W], or just sit back, [bold type]wait[roman type] and watch.";
			otherwise if the vine-scene of W is 2:
				if W is in the location of the player, say "[second custom style]'Come on [NameBimbo], what's the hold-up?! Aaaahn~'[roman type][line break]A second green vine finds room in [NameDesc of W][']s [HoleDesc of W] next to the first, stretching it wide.";
			otherwise if the vine-scene of W is 3:
				if W is in the location of the player, say "[second custom style]'Okay okay let's make a deal, if you help me I'll give you a fshashahahahahaaaaaah...'[roman type][line break]A third thick vine somehow pushes in beside the first two, the intense sensation caused by their combined girth clearly making it difficult for [NameDesc of W] to speak.";
			otherwise if the vine-scene of W is 4:
				if W is in the location of the player, say "[second custom style]'[big please] help me [please] help me [please] help me I'll give you all I haaaaa~'[roman type][line break]A fourth vine makes its way into the already fully stuffed cavern that is [NameDesc of W][']s [HoleDesc of W]. It is now gaped wider than should be physically possible, in the real world. All fourth vines piston in and out with unforgiving strength and speed.";
			otherwise if the vine-scene of W is 5:
				if W is in the location of the player:
					say "[second custom style]'Gzzt... cumming... Gah!'[roman type][line break][NameDesc of W] climaxes at the same time as the vines, [his of W] belly exploding outwards as [his of W] [if lady fetish is 2]intestines are[otherwise]womb is[end if] inflated full of tentacle seed.[line break][second custom style]'You fucking bitch...'[roman type][line break][big he of W] murmurs before passing out.";
					increase the delayed sluttification of W by 1;
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
		otherwise:[Barbara has somehow moved on. But the scene still happened! So let's make sure that's taken into account with these numbers.]
			now the vine-scene of woman-barbara is 5;
			repeat with V running through alive vines:
				if the TrapNo of V < -750, now the TrapNo of V is -750;
				now V is unrevealed.

To WomanVinePull:
	let W be woman-barbara;
	allocate 6 seconds;
	if the traitor-hypno of hypno-lesson > 0:
		say "Something inside you urges you to [second custom style]help your friend[roman type] instead. You stand and watch.";
		if the vine-scene of W >= 4, decrease the traitor-hypno of hypno-lesson by 1;
	otherwise if the player is upright and clumsy april fools is 1:
		say "You reach for a vine but instead trip and fall!";
		try kneeling;
		say aprilFoolsClumsyFlav;
		now another-turn is 1;
		now another-turn-flavour is "It takes you a few moments to steady yourself in the dirt and find your hands.";
	otherwise:
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
			now S is carried by the player;
			now J is in the location of the player;
			compute autotaking J;
			increase the delayed sluttification of W by 1;
		now the vine-scene of W is 6.

Chapter - Vine Hole Scene

woman-barbara has a number called vine-hole-scene.

Report going when the vine-hole-scene of woman-barbara is 0 and the woman-bimbo of woman-barbara is 2 and the player is the donator and the location is Woods16:
	if debugmode is 1, say "Checking if barbara can appear.";
	if the number of monsters in the location of the player is 0 and another-turn is 0 and vine boss is in WoodsBoss01 and the vine-scene of woman-barbara is 6 and woman-barbara is redeploy appropriate:
		deploy woman-barbara with woman-status 29;
		now the vine-hole-scene of woman-barbara is 1;
		now woman-barbara is in the location of the player;
		now woman-barbara is interested;
		say "As you arrive here you see that [NameDesc of woman-barbara] is here, completely naked and trying to climb out of the pit, with a strong green vine wrapped around one of [his of woman-barbara] wrists, trying to pull [him of woman-barbara] back down into the underground cavern. [big his of woman-barbara] pistol has fallen out of [his of woman-barbara] hand, lying just inches away out of [his of woman-barbara] reach. [if the player is upright][bold type]As you are distracted by the gun, you stumble on a rock and fall to your knees.[roman type][line break][line break][BigNameDesc of woman-barbara] spots you and [his of woman-barbara] eyes widen with a look of urgency.[line break][speech style of woman-barbara]'[NameBimbo]! Thank the stars! Quick, my gun!'[roman type][line break]What do you do?";
		now the stance of the player is 1; [Important to avoid the clumsy fall-in-the-hole cutscene happening in the same turn]
		cutshow figure of barbara cutscene 9 for woman-barbara;
		reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
		set numerical response 1 to "hand [his of woman-barbara] pistol to [him of woman-barbara]";
		if magic pistol is actually summonable, set numerical response 2 to "try to use [his of woman-barbara] pistol yourself to save [him of woman-barbara]";
		set numerical response 3 to "take [his of woman-barbara] gun for yourself";
		set numerical response 0 to "ignore [him of woman-barbara] entirely";
		compute multiple choice question;
		let CNR be player-numerical-response;
		if CNR is 1:
			say "[BigNameDesc of woman-barbara] snatches the pistol out of your hand as soon as it is in [his of woman-barbara] reach and points it down below [his of woman-barbara] feet, outside of your vision. You hear a weird sort of wet 'phut phut' sound as [he of woman-barbara] squeezes the trigger and you swear you can see [his of woman-barbara] belly slightly deflate as [he of woman-barbara] does. A loud roar comes from the pit, and you see the vine around [NameDesc of woman-barbara][']s wrist loosen slightly - enough for [him of woman-barbara] to quickly wriggle free and scramble further out of the pit! You take [his of woman-barbara] hand and help [him of woman-barbara] to [his of woman-barbara] feet, out of harm's way.[line break][speech style of woman-barbara]'Thanks, you really saved my bacon there. I owe you one.'[roman type][line break][BigNameDesc of woman-barbara] hugs you closely, [his of woman-barbara] warm, soft, naked body pressing against you for a few precious moments.[line break][speech style of woman-barbara]'If I were you, I wouldn't try to fight the vine monster down there. It's just too strong. And as I just learned, it seems immune to being blinded...'[roman type][line break]";
			FavourUp woman-barbara;
		otherwise if CNR is 2:
			say "[BigNameDesc of woman-barbara] looks concerned as you pick up the pistol and point it towards the vine gripping [his of woman-barbara] hand.[line break][speech style of woman-barbara]'No, wait-'[roman type][line break][big he of woman-barbara] tries to stop you but you've already pulled the trigger. ";
			if the stomach-semen of the player > 0:
				say "[PistolStomachSemen]Huge numbers of ropes of [semen] fly out of the tip, painting not only the vine but [NameDesc of woman-barbara] in massive amounts of the sticky stuff. [big he of woman-barbara] coughs and splutters and loses [his of woman-barbara] grip. ";
			otherwise:
				say "The trigger clicks but nothing comes out.[line break][speech style of woman-barbara]'It's not a normal gun, you idiot, you need to have swallowed som-'[roman type][line break][big his of woman-barbara] speech turns into a yelp as [he of woman-barbara] loses [his of woman-barbara] grip with [his of woman-barbara] free hand. ";
			say "You watch awkwardly and helplessly as [he of woman-barbara] is pulled back down into the hole!";
			summon magic pistol;
			FavourDown woman-barbara;
			now woman-barbara is in WoodsBoss01;
			now the vine-scene of woman-barbara is 5;
			now the sleep of woman-barbara is 9999;
			increase the woman-bimbo of woman-barbara by 1;
			reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
			set numerical response 1 to "throw the pistol down after [him of woman-barbara]. Maybe it's not too late for it to be of some use.";
			set numerical response 2 to "go down the pit to try and rescue [him of woman-barbara]";
			set numerical response 3 to "just leave...";
			compute multiple choice question;
			let CNR be player-numerical-response;
			if CNR is 1:
				say "You feel too guilty to hold onto the pistol, and throw it down into the pit. Hopefully that way [he of woman-barbara] will know that you didn't mean to fail [him of woman-barbara]...";
				only destroy magic pistol;
			otherwise if CNR is 2:
				now the stance of the player is 0;
				try going down;
				say "When you get to the bottom you discover that it's already too late.";
				try examining woman-barbara;
				say "Also, there's another problem. The vine boss is here. And it's clearly already very angry.";
				now the health of vine boss is (the maxhealth of vine boss * 2) / 3;
			otherwise:
				say "You slowly back away from the hole, racked with guilt, but too scared to stay close!";
				if pregnancy fetish is 1 and inhuman pregnancy > 1 and lady fetish < 2, now woman-barbara is tentacle-pregnant;
		otherwise:
			say "[BigNameDesc of woman-barbara] looks [if CNR is 3]concerned as you pick up the pistol, and [end if]horrified when [he of woman-barbara] sees you turning to walk away.[line break][speech style of woman-barbara]'WHAT?! No, [NameBimbo], don't leave me like this! You bastard! I'll never forgive you!'[roman type][line break][if CNR is not 3]With an impressive display of agility, [NameDesc of woman-barbara] manages to grab the pistol and point it at you. A huge jet of [semen] blasts from the nozzle, coating you in the sticky stuff. [end if]At this moment, [he of woman-barbara] loses [his of woman-barbara] grip with [his of woman-barbara] free hand, and is pulled back down into the hole.";
			if CNR is 3:
				now magic pistol is carried by the player;
				now woman-barbara is angered;
			otherwise:
				if bukkake fetish is 1, CumFaceUp 60;
				otherwise PuddleUp semen by 60;
				FavourDown woman-barbara by 10;
			now woman-barbara is in WoodsBoss01;
			now the vine-scene of woman-barbara is 5;
			now the sleep of woman-barbara is 9999;
			increase the delayed sluttification of woman-barbara by 1;
			if pregnancy fetish is 1 and inhuman pregnancy > 1 and lady fetish < 2:
				now woman-barbara is tentacle-pregnant;
				increase the delayed sluttification of woman-barbara by 1;
			otherwise:
				increase the woman-bimbo of woman-barbara by 1.

Chapter - Mechanic Sex Scene

woman-barbara has a number called mechanic-scene.

Report going when there is an uninterested mechanic in the location [of the player ]and the mechanic-scene of woman-barbara is 0:
	if debugmode is 1, say "Checking if barbara can appear.";
	if the number of monsters in the location of the player is 1 and woman-barbara is redeploy appropriate:
		deploy woman-barbara with woman-status 91;
		now woman-barbara is in the location of the player;
		now woman-barbara is interested;
		now mechanic is interested;
		anger mechanic;
		say "As you arrive here you see that [NameDesc of woman-barbara] is here on [his of woman-barbara] knees, with [NameDesc of mechanic][']s [DickDesc of mechanic] firmly lodged in [his of woman-barbara] throat. [big he of mechanic] is holding [him of woman-barbara] roughly by the hair and forcing [his of woman-barbara] head forward and back, using [his of woman-barbara] mouth as [his of mechanic] personal onahole.";
		follow the mechanic facefucks barbara rule.

This is the mechanic facefucks barbara rule:
	if the woman-status of woman-barbara is 91 and the mechanic-scene of woman-barbara <= 3 and woman-barbara is in the location of the player and mechanic is unfriendly:
		let W be woman-barbara;
		let M be mechanic;
		increase the mechanic-scene of W by 1;
		if the mechanic-scene of W is 1:
			say "[BigNameDesc of M] gives you a brief look.[line break][speech style of M]'Don't interrupt me and I'll make it worth your while.'[roman type][line break][big he of M] holds a golden ring in the air, and then turns [his of M] attention back to the face [he of M] has turned into a temporary cocksleeve. It looks like you could attack [NameDesc of M] to try and rescue [him of W], or just sit back, [bold type]wait[roman type] and watch.";
			now M is guarding;
			now woman-barbara is guarding;
		otherwise if the mechanic-scene of W is 2:
			say "[BigNameDesc of M] chuckles.[line break][speech style of M]'Yes that's right, you dumb slut. Nobody's coming to save you. And all it took was a tiny bribe for your little [']friend['] over there to [pussy] out.'[roman type][line break][big he of M] picks up the speed, causing [NameDesc of W] to make gagging sounds as [he of W] thrusts.";
		otherwise if the mechanic-scene of W is 3:
			say "[BigNameDesc of M] grunts.[line break][speech style of M]'Fuck, this bitch's throat is tight!'[roman type][line break]";
		otherwise if the mechanic-scene of W is 4:
			let J be a random off-stage plentiful ring;
			now J is solid gold;
			set shortcut of J;
			now J is in the location of the player;
			say "[BigNameDesc of M] moans as [he of M] cums, [his of M] ropes of [semen] making [NameDesc of W] choke as it rebounds and spurts out the sides of [his of W] mouth. [big he of M] removes [his of M] [Dickdesc of M] and begins to clean it off by wiping it all over [NameDesc of W][']s forehead. But [he of W] is looking directly at you, with dismay in [his of W] eyes.[line break][speech style of W]'Really?'[roman type][line break]That's all [he of W] manages before [he of W] passes out. [BigNameDesc of M] drops the [J] in front of you.[line break][speech style of M]'Money well spent.'[roman type][line break]";
			now the latest-appearance of M is the appearance of the player; [to stop him suddenly noticing the player and deciding to bang]
			satisfy mechanic;
			now mechanic is unleashed;
			increase the delayed sluttification of W by 1;
			FavourDown W;
			now the sleep of W is 300;
			compute autotaking J;
		rule succeeds.
The mechanic facefucks barbara rule is listed first in the mechanic priority attack rules.

To compute traitor surrender to (M - a monster):
	decrease the traitor-hypno of hypno-lesson by 1;
	say "You consider attacking [NameDesc of M], but then something inside you urges you to [second custom style]help your friend[roman type] instead. You find yourself dropping to your knees.";
	compute silent surrender to M.

Check slapping mechanic when the traitor-hypno of hypno-lesson > 0 and the woman-status of woman-barbara is 91:
	if the mechanic-scene of woman-barbara <= 3 and woman-barbara is in the location of the player and mechanic is unfriendly, compute traitor surrender to mechanic instead.
Check zapping mechanic with something when the traitor-hypno of hypno-lesson > 0 and the woman-status of woman-barbara is 91:
	if the mechanic-scene of woman-barbara <= 3 and woman-barbara is in the location of the player and mechanic is unfriendly, compute traitor surrender to mechanic instead.
Check kneeing mechanic when the traitor-hypno of hypno-lesson > 0 and the woman-status of woman-barbara is 91:
	if the mechanic-scene of woman-barbara <= 3 and woman-barbara is in the location of the player and mechanic is unfriendly, compute traitor surrender to mechanic instead.
Check kicking mechanic when the traitor-hypno of hypno-lesson > 0 and the woman-status of woman-barbara is 91:
	if the mechanic-scene of woman-barbara <= 3 and woman-barbara is in the location of the player and mechanic is unfriendly, compute traitor surrender to mechanic instead.

An all later time based rule (this is the mechanic finishes with barbara rule):
	if the woman-status of woman-barbara is 91 and the mechanic-scene of woman-barbara <= 3 and mechanic is not in the location of the player:
		increase the mechanic-scene of woman-barbara by 1;
		if the mechanic-scene of woman-barbara is 4:
			now mechanic is unleashed;
			now woman-barbara is unleashed;
			satisfy mechanic;
			increase the delayed sluttification of woman-barbara by 1;
			FavourDown woman-barbara;
			now the sleep of woman-barbara is 300.

To say WaitingFlav of (M - a mechanic):
	unless the woman-status of woman-barbara is 91 and the mechanic-scene of woman-barbara <= 5 and woman-barbara is in the location of the player:
		say WaitingSpeechFlav of M;
		say WaitingActionFlav of M.

Chapter - Anal Dildo Contraption Scene

woman-barbara has a number called anal-contraption-scene.
woman-barbara has a number called anal-contraption-search.

Understand "fucking", "machine", "box", "pink dildo", "rope", "ropes", "pulley", "pulleys", "spring", "springs", "glue", "glove", "gloves" as woman-barbara when the woman-status of woman-barbara is 93.

Report going when the player is in Hotel37 and the anal-contraption-scene of woman-barbara is 0:
	if debugmode is 1, say "Checking if barbara can appear.";
	if the number of monsters in the location of the player is 0 and dominatrix is alive and woman-barbara is redeploy appropriate:
		deploy woman-barbara with woman-status 93;
		now woman-barbara is in the location of the player;
		now woman-barbara is interested;
		say "As you arrive here you see that [NameDesc of woman-barbara] is here on [his of woman-barbara] back, tied up in a very unique contraption. [big he of woman-barbara] is lying with [his of woman-barbara] legs above [his of woman-barbara] head and is holding [his of woman-barbara] asshole invitingly open. That looks uncomfortable! Upon closer inspection, it's clear that [his of woman-barbara] hands are stuck in skintight gloves that are somehow glued to [his of woman-barbara] buttcheeks, meaning that [his of woman-barbara] hands are stuck there gaping [his of woman-barbara] own butthole regardless of whether [he of woman-barbara] wants to or not!";
		say "Powerful springs connect [NameDesc of woman-barbara][']s wrists to [his of woman-barbara] thighs, putting pressure on them to come back down from their raised position. But [his of woman-barbara] ankles are held up there by rope, which is connected above [his of woman-barbara] head by a series of pulleys that lead... to the activation lever of a metal box, which is holding a large pink dildo on a pole, poised right outside the entrance of [his of woman-barbara] open and waiting butthole.";
		say "The predicament is clear: if [NameDesc of woman-barbara] relaxes [his of woman-barbara] legs for even a moment, and allows [his of woman-barbara] thighs to be pulled into a more comfortable position by the springs, then the fucking machine will activate, and [his of woman-barbara] poor pucker will be plowed by that thick Pink Pounder until [he of woman-barbara] can muster the energy to raise [his of woman-barbara] legs again.".

A time based rule (this is the anal contraption predicament rule):
	if the woman-status of woman-barbara is 93 and the anal-contraption-scene of woman-barbara <= 5 and woman-barbara is in the location of the player:
		unless dominatrix is in the location of the player and dominatrix is interested unfriendly monster:
			let W be woman-barbara;
			increase the anal-contraption-scene of W by 1;
			if the anal-contraption-scene of W is 1:
				say "[BigNameDesc of W] sees you enter, and [his of W] expression changes from one of panic to one of relief.[line break][speech style of W]'[NameBimbo], thank the stars! That [if the woman-bimbo of W <= 2]insane[otherwise]cheeky[end if] dominatrix didn't like the tone of my voice and decided I needed to [']Learn the merits of inner balance.['] But I don't [if the woman-bimbo of W <= 3]think I can take it[otherwise]wanna[end if]! [big please], find a way to disarm this thing before it... well, you know...'[roman type][line break][big he of mechanic] wiggles [his of W] hands, making [his of W] asshole open and close slightly, to indicate what [he of W] means.";
				say "You could [bold type]search[roman type] the box for a way to disarm it, or you could [bold type]pull[roman type] on [NameDesc of W][']s legs to force [him of W] to fail, [unless the player is feeling submissive or 1 is 1]or you could [bold type]fuck[roman type] [him of W] while [he of W] is in such a compromising position, [end if]or you could [bold type]wait[roman type] (or just leave), to not mess with the dominatrix's plans.";
			otherwise if the anal-contraption-scene of W is 2:
				say "[BigNameDesc of W] groans in discomfort.[line break][speech style of W]'I can't hold my legs any longer... [big please] hurry!'[roman type][line break][big he of W][']s right - [his of W] legs are now visibly shaking, and the force of the springs has made [him of W] pull open [his of W] asshole even wider than before. It really does look like [he of W][']s desperate to be reamed by that big fat fake [manly-penis]!";
			otherwise if the anal-contraption-scene of W is 3:
				say "[BigNameDesc of W] grunts with exhaustion and [his of W] legs give out. The ropes to pull the switch through the pulley and the mechanism clicks into action. [AnalContraptionStart]";
			otherwise if the anal-contraption-scene of W is 4:
				say "[speech style of W]'It's so big! No more, no more! Or my butthole will never be tight again!'[roman type][line break]Surprisingly enough, the metal box doesn't listen. [BigNameDesc of W][']s backdoor is once again brutally broken in by its new best buddy. All the way in, all the way out. All the way in, all the way out. Wait, was that a bit faster than the first time? Yes. It's getting faster.";
				increase the delayed sluttification of W by 1;
			otherwise if the anal-contraption-scene of W is 5:
				say "[speech style of W]'Gaaaah...'[roman type][line break][BigNameDesc of W] no longer seems capable of coherent speech. [big he of W] spends the last of [his of W] energy to raise [his of W] ankles back up. The machine clicks off. But [NameDesc of W] can hold it for less than two seconds before [he of W] exhausts, [his of W] ankles fall back down and the box clicks into life once again. All the way in, all the way out. All the way in, all the way out. This time it manages two full thrusts within four seconds. Each one must be causing severe amounts of sensory overload inside [his of W] delicate derriere.";
			otherwise if the anal-contraption-scene of W is 6:
				say "[speech style of W]'Fbbbbrt... Fgaaahh... Cumming! CUMMING!'[roman type][line break][BigNameDesc of W] manages a real word, announcing [his of W] ultimate defeat under the unrelenting use of the fucking machine. [if dominatrix is in the location of the player][BigNameDesc of dominatrix] snaps [his of dominatrix] fingers and the[otherwise]It gives two more quick thrusts for good measure before something inside its[end if] mechanism clicks itself off. However it's not truly over, because the machine has powered down while that pink monstercock is still fully embedded in [NameDesc of W]['] butthole, right up to the base. You look at [NameDesc of W][']s face to see how [he of W][']s handling the sensation... Oh. [big he of W] has already passed out.";
				now the sleep of W is 200;
				increase the delayed sluttification of W by 1;
				if dominatrix is in the location of the player:
					say "[BigNameDesc of dominatrix] laughs playfully and claps [his of dominatrix] hands as if this was just a fun little joke you were all in on. Applying some ointment to [NameDesc of W][']s glued gloves, [he of dominatrix] is able to neutralise the adhesive and remove [NameDesc of W][']s hands from [his of W] buttcheeks. But [he of dominatrix] doesn't make any move to remove the big pink dildo from its new home.[line break][speech style of dominatrix]'[big he of W][']ll be fine sleeping like that, don't you think? It'll be a nice surprise when [he of W] wakes up.'[roman type][line break]";
					satisfy dominatrix.

To say AnalContraptionStart:
	let W be woman-barbara;
	say "[big his of W] ankles probably only move about four inches downwards in total before the rope is pulled taut with the switch now in the full 'ON' position. The overly thick pink dong advances steadily, the head easily slipping inside thanks to [NameDesc of W][']s helpful self-gape. However the dildo is slightly conic, getting thicker towards the base, so as it continues to enter [his of W] sensitive hole, it begins to force [his of W] sphincter to stretch ever wider and wider.[line break][speech style of W]'Jeez... Fuck... FUCK!'[roman type][line break]The butt exploring beast doesn't stop until its full length has pushed all the way inside, right up to the fake balls. Only then does it begin to withdraw, just as painfully slowly, until eventually it exits with an audible slurping sound, returning to its original position. [BigNameDesc of W][']s fuckhole remains horribly gaped thanks to the mechanical penetration. The entire motion probably took between five and six seconds. And it's already on the move forward again, ready for round two!".

Check pulling woman-barbara when the woman-status of woman-barbara is 93 and the anal-contraption-scene of woman-barbara < 6:
	if the player is at least partially immobile or the player is in danger, say "You're a bit busy right now!" instead;
	if the anal-contraption-scene of woman-barbara > 2, say "It's a bit late for that, [he of woman-barbara][']s already lost control and started the fucking machine." instead;
	allocate 6 seconds;
	say "You approach [NameDesc of woman-barbara][']s legs with an evil grin on your face.[line break][speech style of woman-barbara]'No way... you can't be serious?![roman type][line break][BigNameDesc of woman-barbara] clearly can't believe what [he of woman-barbara] is seeing! You vindictively pull down on [his of woman-barbara][']s legs. [big he of woman-barbara] can't do anything but wail with despair as [his of woman-barbara] ankles are lowered a few inches, which pulls the rope and clicks the machine into life. [AnalContraptionStart]You feel more dominant!";
	DelicateDown 3 - the anal-contraption-scene of woman-barbara;
	now the anal-contraption-scene of woman-barbara is 3;
	compute DominatrixInterruption.

Check searching woman-barbara when the woman-status of woman-barbara is 93 and the anal-contraption-scene of woman-barbara < 6:
	if the player is at least partially immobile or the player is in danger, say "You're a bit busy right now!" instead;
	if the traitor-hypno of hypno-lesson > 0 and the anal-contraption-scene of woman-barbara <= 2:
		decrease the traitor-hypno of hypno-lesson by 1;
		say "Something inside you urges you to [second custom style]help your friend[roman type] instead.";
		try pulling woman-barbara instead;
	if the player is upright, try kneeling;
	if the player is upright: [Just in case]
		now the stance of the player is 1;
		say "You are now on your knees.";
	allocate 6 seconds;
	increase the anal-contraption-search of woman-barbara by 1;
	if a random number between 1 and the intelligence of the player > 10, increase the anal-contraption-search of woman-barbara by 1;
	if the anal-contraption-scene of woman-barbara <= 1:
		say "You check to see if the box can be moved so the dildo is no longer pointing at [NameDesc of woman-barbara][']s spread asshole. Unfortunately, it's completely stuck in place.";
	otherwise if the anal-contraption-scene of woman-barbara is 2:
		say "You look for a second failsafe switch, or some way to disconnect the rope where it connects to the box's lever. But unfortunately it looks like it's completely futile to try to alter anything at this end.";
	otherwise:
		say "[one of]You decide the only way to get [him of woman-barbara] out is to untie the ropes around [his of woman-barbara] ankles. [or][stopping]";
		if the anal-contraption-search of woman-barbara < 4:
			say "You fumble with one of the knots but it's really tight! You haven't made much progress yet.";
		otherwise if the anal-contraption-search of woman-barbara is 4:
			say "You manage to loosen a knot and get one of [NameDesc of woman-barbara][']s ankles free! One more and [he of woman-barbara][']ll be able to escape!";
		otherwise:
			say "You've done it! You've freed both of [NameDesc of woman-barbara][']s ankles! When the pink dildo next exits [his of woman-barbara] asshole, [he of woman-barbara] rolls to the side and out of the thrusting path.[line break][speech style of woman-barbara]'I'm free! I'm free! Thank you so much [NameBimbo], I owe you my sanity! I wish I had something to give you, but...'[roman type][line break][NameDesc of woman-barbara] shrugs as best as [he of woman-barbara] can what with [his of woman-barbara] hands still glued to [his of woman-barbara] buttcheeks, to emphasise the point that [he of woman-barbara] doesn't have anything of value right now.[line break][speech style of woman-barbara]'I've got to go sort out this glue, I think. Wish me luck.'[roman type][line break][NameDesc of woman-barbara] waddles from the room, looking very ridiculous with [his of woman-barbara] hands stuck to [his of woman-barbara] backside, still keeping [his of woman-barbara] asshole slightly open and in open view.";
			FavourUp woman-barbara by 3;
			say "Thanks to solving the situation, you now feel much smarter!";
			IntUp 3;
			if the woman-bimbo of woman-barbara is 2:
				say "[bold type]You spot [NameDesc of woman-barbara][']s pistol left in the corner of the room!";
				now magic pistol is in the location of the player;
				compute autotaking magic pistol;
			now the anal-contraption-scene of woman-barbara is 7;
			vanish woman-barbara;
	if woman-barbara is in the location of the player, compute DominatrixInterruption;
	do nothing instead.

To compute DominatrixInterruption:
	if clumsy april fools is 1 or dominatrix is in the location or dominatrix is in the room east from the location or (a random number between 1 and 10) is 1:
		let M be dominatrix;
		now M is in the location of the player;
		now M is interested;
		anger M;
		say "[bold type][if clumsy april fools is 1]You accidentally knock two pulleys into each other, which make a loud metal CLANG! [roman type][aprilFoolsClumsyFlav][bold type]Moments later[otherwise]All of a sudden,[end if] [NameDesc of M][bold type] [if dominatrix is in the location of the player]bursts into a fit of rage[otherwise]arrives from the east[end if]![line break][speech style of M]'WHAT HAVE WE HERE? Did I give you permission to interfere in my affairs?! I saw what you were trying to do. Oh [honey of M], you're going to regret that.'[roman type][line break][big he of M] crosses [his of M] arms at the wrists, making an intricate sign with [his of M] fingers.[line break][speech style of M]'Mutanretla Menimoh.'[roman type][line break]Your head feels funny... And then your body feels funny. You try to move your hands but they are glued to your buttcheeks, holding your [asshole] open wide. Your ankles are dangling high in the air above your face, attached to ropes and pulleys. Your legs feel completely exhausted. [NameDesc of woman-barbara] is looking down at you with [horror (the woman-bimbo of woman-barbara * 4)] from a kneeling position next to you. You've somehow swapped positions with [him of woman-barbara]!";
		repeat with C running through worn total protection clothing:
			now C is in the location of the player;
		repeat with C running through worn equippables:
			if C is hand ready, now C is in the location of the player;
		repeat with C running through worn wrist locking clothing:
			now C is in the location of the player;
		repeat with C running through things penetrating asshole:
			dislodge C;
			now C is in the location of the player;
		now the fatigue of the player is the buckle threshold of the player;
		now the stance of the player is 1;
		now M is penetrating asshole.

Check resisting when dominatrix is penetrating asshole and woman-barbara is in the location and the woman-status of woman-barbara is 93 and woman-barbara is awake:
	say "You try to raise your ankles but your body is much too fatigued to be able to resist in any meaningful way!";
	now forced submit is 1;
	try submitting instead.

To compute contraption sex of (M - a monster):
	if the anal-contraption-scene of woman-barbara < 7:
		increase the anal-contraption-scene of woman-barbara by 1;
		let aRuin be the anal-contraption-scene of woman-barbara / 2;
		say "The big pink dildo [one of]powerfully punches[or]unrelentingly assaults[or]continues to destroy[then at random] your [asshole], all the way in, all the way out, [one of][if aRuin is 1]brutally slowly[otherwise][aRuin] times[end if][or]another [if aRuin is 1]time[otherwise][aRuin] times[end if][stopping].";
		ruin asshole times aRuin;
		say "It's [one of][or]still [stopping]picking up speed!";
		say "[one of][speech style of M]'You, get to work.'[roman type][line break][BigNameDesc of M] has turned to [NameDesc of woman-barbara] and is pointing at [his of M] [LongDickDesc of M]. [NameDesc of woman-barbara] obediently takes it into [his of woman-barbara] mouth and begins to fellate it[or][BigNameDesc of M] chuckles. [NameDesc of woman-barbara] continues to worship [his of M] [DickDesc of M][stopping].";
	otherwise:
		compute contraption climax of M.

To compute contraption climax of (M - a monster):
	say "[speech style of M]'I guess that's enough.'[roman type][line break][BigNameDesc of M] snaps [his of M] fingers and the dildo stops its merciless machinations. The ropes loosen themselves from your ankles and you are able to roll away to the side. However, your hands are still glued inside those gloves, which are in turn glued to your [asshole]!";
	summon gape-gloves;
	now gape-gloves is glued;
	now gape-gloves is wrist-bound-behind;
	satisfy M;
	say "[BigNameDesc of woman-barbara] slinks away, muttering a quiet [speech style of woman-barbara]'Sorry.'[roman type][line break]";
	vanish woman-barbara.

Chapter - Shopkeeper Discount Scene

woman-barbara has a number called shopkeeper-scene.

This is the woman spawning to get shopkeeper discount rule:
	if the shopkeeper-scene of woman-barbara is 0 and shopkeeper is in Dungeon41 and shopkeeper is nearby and the woman-bimbo of woman-barbara <= 2:
		deploy woman-barbara with woman-status 92;
		now woman-barbara is in the location of shopkeeper;
		rule succeeds.
The woman spawning to get shopkeeper discount rule is listed last in the womanspawning rules.

Report going when shopkeeper is in the location [of the player ]and woman-barbara is in the location [of the player ]and the woman-bimbo of woman-barbara <= 2 and the shopkeeper-scene of woman-barbara is 0 and woman-barbara is not interested and shopkeeper is not interested:
	say "In this room you see that [NameDesc of shopkeeper] is not alone: [NameDesc of woman-barbara] is on [his of woman-barbara] knees, with four fifths of [his of shopkeeper] massive length stuffed into [his of woman-barbara] mouth. [big he of woman-barbara] is desperately trying to force that last bit in, causing the tip to penetrate [his of woman-barbara] throat. Lewd gagging noises fill the room as the distension in [his of woman-barbara] throat becomes more and more visible.[line break][speech style of shopkeeper]'Damn girl, you can really swallow a sword, can't you?! Unng, I'm reaching my limit...'[roman type][line break][BigNameDesc of shopkeeper] grunts and without a second thought grabs the back of [NameDesc of woman-barbara][']s head, forcing it forward and pushing that last inch of [his of shopkeeper] manhood in past [his of woman-barbara] jaw. Noises of weak resistance emanate from [NameDesc of woman-barbara][']s nose but it's too little too late - [NameDesc of shopkeeper] is cumming hard. [big he of shopkeeper] grips [his of woman-barbara] head tight with both arms keeping [his of shopkeeper] whole [manly-penis] firmly wedged inside for the duration of [his of shopkeeper] climax, each string of [semen] being accompanied by an involuntary gulp from [his of shopkeeper][']s new cumdump's gullet. [big he of shopkeeper] finally releases [him of woman-barbara] and [he of woman-barbara] falls back choking, spewing up lumps of thick [semen].[line break][second custom style]'Did I win?'[roman type][line break]Is all [he of woman-barbara] manages to say before [he of woman-barbara] collapses backward onto the ground.[line break][first custom style]'Yeah, you won honey.'[roman type][line break][BigNameDesc of shopkeeper] replies but [NameDesc of woman-barbara] has already passed out cold.";
	now the sleep of woman-barbara is 200;
	[increase the delayed sluttification of woman-barbara by 1;]
	now the woman-status of woman-barbara is 92;
	now the shopkeeper-scene of woman-barbara is 1.

Chapter - Hotel Hypno Scene

woman-barbara has a number called hypno-scene.

A time based rule (this is the barbara hypno hotel rule):
	if the woman-status of woman-barbara is 4 and woman-barbara is alive and the hypno-scene of woman-barbara is 0:
		if playerRegion is Hotel and woman-barbara is nearby:
			let Y be a random hypno trap in the location of woman-barbara;
			if Y is hypno trap:
				now Y is revealed;
				now Y is not untriggered;
				now the reset-timer of Y is 250;
				now the woman-status of woman-barbara is 94;
				say "[bold type]You spot [NameDesc of woman-barbara] nearby![roman type] [big he of woman-barbara] appears to be standing there, oblivious to your presence, transfixed by a screen. On the screen is [hypno content of Y]. You suppose you could go and attempt to rescue [him of woman-barbara], but you might get stuck looking at the screen yourself...";
				now the hypno-scene of woman-barbara is 1;
				increase the delayed sluttification of woman-barbara by 2.

To compute barbara hypno shared progression:
	unless woman-barbara is angered:
		say "[BigNameDesc of woman-barbara] stands next to you, staring with exactly the same vacant expression as you probably have.";
		increase the delayed sluttification of woman-barbara by 1.

To compute barbara hypno solo progression:
	say "[BigNameDesc of woman-barbara] drools a bit as [he of woman-barbara] watches the screen.";
	increase the delayed sluttification of woman-barbara by 1.

Chapter - Human Toilet Scene

woman-barbara has a number called human-toilet-scene.

To check barbara toilet:
	if the player is in Hotel38 and watersports fetish is 1:
		if the human-toilet-scene of woman-barbara is 0 and the woman-bimbo of woman-barbara >= (a random number between 2 and 5) and the woman-status of woman-barbara < 10 and woman-barbara is redeploy appropriate:
			say "A groaning, gurgling noise from below you makes you notice that the [man of woman-barbara] below you looks different from usual.";
			cutshow figure of barbara cutscene 4 for toilet;
			say "Looking [if the player is possessing a vagina]between your legs [end if]into the toilet bowl you realise you recognise the ring-gagged face at the bottom - it's [NameDesc of woman-barbara]! [big he of woman-barbara] looks up at you with imploring puppy-dog eyes.[line break][speech style of woman-barbara]'Wease eh ee ow! Weeeease! Ha hay-hron hah heh hee!'[roman type][line break]You think you understand what [he of woman-barbara][']s saying? There's a key that can be used to release [him of woman-barbara], but it's currently in the possession of a hotel patron. Perhaps if you spend enough time in the hotel, you'll be able to encounter [him of a random patron] and agree to pay some kind of... [']ransom[']. Until then there's nothing you can do about the fact that [NameDesc of woman-barbara] is the new hotel toilet. It's up to you how many more times you use [his of woman-barbara] mouth as your waste disposal unit. You doubt it'll be very good for [his of woman-barbara] sanity, but it might help you feel more dominant.";
			now the human-toilet-scene of woman-barbara is 2;
			now woman-barbara is permanently banished;
			WomanSluttify;
		otherwise if the human-toilet-scene of woman-barbara is not 1:
			cutshow figure of barbara cutscene 4 for toilet;
			if the human-toilet-scene of woman-barbara > 1:
				say "You feel more dominant!";
				SportsGet;
				DelicateDown 1;
				WomanSluttify.

forbidden-key is an object that varies.

To compute barbara toilet release:
	let K be skeleton key;
	if toilet-key is held and (K is nothing or forbidden-key is not toilet-key), now K is toilet-key;
	if K is held:
		if forbidden-key is K:
			say "Something deep in your brain won't let you use [NameDesc of K] to save [NameDesc of woman-barbara].";
		otherwise if the traitor-hypno of hypno-lesson > 0 and forbidden-key is nothing:
			decrease the traitor-hypno of hypno-lesson by 1;
			say "Something inside you urges you to [second custom style]help your friend[roman type]. You find yourself unable to bring yourself to use [NameDesc of K] to save [NameDesc of woman-barbara]. Perhaps if you are able to obtain a different key, however, you'll be able to circumvent your hypnosis and help [him of woman-barbara] in the [']proper['] way.";
			if the player is desperate to pee and the player is able to use a toilet:
				say "But for now... your body has different plans for what would be the best way to help [NameDesc of woman-barbara] become a better person...";
				allocate 6 seconds;
				compute toilet use;
		otherwise:
			allocate 6 seconds;
			now the human-toilet-scene of woman-barbara is 1;
			now woman-barbara is summon-available;
			say "You push the key into the slot and twist. Moments later you have parted the front of the toilet bowl and [NameDesc of woman-barbara] is clambering out of [his of woman-barbara] prison. [big he of woman-barbara] rolls over onto [his of woman-barbara] side and promptly pukes up a gallon of [urine].[line break][speech style of woman-barbara]'Thank you so much for saving me...'[roman type][line break]That's all [he of woman-barbara] can manage before passing out.";
			deploy woman-barbara with woman-status 95;
			now woman-barbara is in the location of the player;
			UrinePuddleUp 30;
			now the sleep of woman-barbara is 300;
			FavourUp woman-barbara;
			say "[BigNameDesc of K] crumbles into dust.";
			destroy K;
	otherwise:
		say "You don't have a key that could do that.".

Chapter - Patron Scene

woman-barbara has a number called patron-scene-done.
[
0: Scene hasn't happened.
1: Scene has begun.
2: Climaxed
]
woman-barbara has a number called patron-scene-fighting.
[
0: Patrons happy
1: Patrons annoyed
2: Player chose to fight
]

To compute patron scene of (W - woman-barbara):
	repeat with M running through off-stage patrons:
		if M is not a real-life patron:
			now M is in the location of the player;
			set up M;
	now neighbour finder is the location of the player;
	now the woman-status of W is 96;
	now the patron-scene-done of W is 1;
	now W is interested;
	say "[first custom style]'Hey everyone, get in here!'[roman type][line break]A hidden door opens from the opposite wall, and you watch [the number of patrons in the location of the player] patrons stride in, each with a bottle of beer in one hand and a party hat on their head. [if the number of N-viable directions is 1]A modesty barrier comes[otherwise]Modesty barriers come[end if] down, preventing either of you from leaving[if W is asleep]. [BigNameDesc of W] wakes up with a start[end if].[line break][first custom style]'We've paid a lot of money to be allowed to have two of you at once, so you'd better follow everything we say.'[roman type][line break]A look of [if the bimbo of the player < 5]horror[otherwise if the bimbo of the player < 10]uncertainty[otherwise]understanding[end if] passes between you and [NameDesc of W]. Whether you fight or fuck them, this is going to be a great challenge. One of the older patrons speaks first.[line break][first custom style]'Okay, let's get this party started[if the player is upright]. On your knees, bitches[end if].'[roman type][line break]";
	now the sleep of W is 0;
	now a random modesty shutter is in the location of the player.

Report slapping patron when woman-barbara is in the location and the woman-status of woman-barbara is 96:
	if the patron-scene-fighting of woman-barbara < 2, now the patron-scene-fighting of woman-barbara is 2.
Report kneeing patron when woman-barbara is in the location and the woman-status of woman-barbara is 96:
	if the patron-scene-fighting of woman-barbara < 2, now the patron-scene-fighting of woman-barbara is 2.
Report kicking patron when woman-barbara is in the location and the woman-status of woman-barbara is 96:
	if the patron-scene-fighting of woman-barbara < 2, now the patron-scene-fighting of woman-barbara is 2.

Check standing when there is an unconcerned patron in the location:
	allocate 1 seconds;
	say "You are grabbed violently by the hair and shoved back to the ground.[line break][first custom style]'Nobody said you could stand up, slut!'[roman type][line break]" instead.

Check taking fishbowl when there is a patron in the location:
	allocate 1 seconds;
	say "Your hand is slapped away.[line break][first custom style]'Nobody told you to touch that, slut!'[roman type][line break]" instead.

Check drinking fishbowl when there is a patron in the location:
	try taking the noun instead.

To compute patron interaction of (W - woman-barbara):
	let M be a random unleashed patron in the location of the player;
	let N be a random unleashed patron in the location of the player;
	if the player is monster fucked or M is nothing:
		if fishbowl is in the location of the player:
			repeat with P running through unleashed patrons in the location of the player:
				if P is not penetrating a body part:
					if M is not penetrating a body part:
						now N is P;
					otherwise:
						now M is P;
			let CP be a random unconcerned patron in the location of the player;
			let RN be 5;
			if the player is male, decrease RN by 1;
			if the largeness of breasts <= 7, decrease RN by 1;
			if M is nothing: [All patrons have climaxed]
				compute patron scene climax of W;
			otherwise if N is not M and N is not penetrating a body part and a random number between 1 and RN > 1:
				say "[one of][BigNameDesc of W] takes [NameDesc of M] into [his of W] mouth as [he of W] pleasures [NameDesc of N] with [his of W] hand.[or][BigNameDesc of W] jacks [NameDesc of M] and [NameDesc of N] off with each of [his of W] hands.[in random order]";
			otherwise if watersports fetish is 1 and (the fill-colour of fishbowl is not murky or a random number between 1 and 2 is 1) and CP is patron:
				say "[BigNameDesc of W] [one of]takes [NameDesc of CP] into [his of W] mouth and then yelps in surprise as [his of W] mouth is filled with [his of CP] [urine]![line break][speech style of CP]'Come on bitch, add it to your precious collection.'[roman type][line break][BigNameDesc of W] obediently spits the [urine] out into the bowl.[or]is still collecting [urine] in [his of W] mouth and transferring it to the bowl.[stopping]";
				DoseUp fishbowl by 3;
				if the fill-colour of fishbowl is creamy, now the fill-colour of fishbowl is murky;
				if the fill-colour of fishbowl is not murky, now the fill-colour of fishbowl is golden;
			otherwise if M is penetrating a body part:
				let F be a random body part penetrated by M;
				say "[BigNameDesc of W] submissively licks [NameDesc of M][']s [one of]asshole[or]testicles[or]taint[in random order] as [he of M] uses your [variable F].";
			otherwise:
				say "[one of][BigNameDesc of W] takes [NameDesc of M][']s ball-sack into [his of W] mouth as [he of W] pleasures [him of M] with [his of W] hand[or][BigNameDesc of W] jacks [NameDesc of M] off with both hands[or][BigNameDesc of W] strokes [NameDesc of M][']s [manly-penis] with one hand, while gently sucking the tip[in random order]. When [he of M] begins to grunt, [NameDesc of W] points [his of M] [manly-penis] towards the bowl and begins pumping twice as hard until [he of M] spurts [his of M] entire load into the bowl.";
				if the fill-colour of fishbowl is golden, now the fill-colour of fishbowl is murky;
				if the fill-colour of fishbowl is not murky, now the fill-colour of fishbowl is creamy;
				DoseUp fishbowl by the semen load of M;
				compute payment of M;
		otherwise:
			now fishbowl is in the location of the player;
			now the curse-ID of fishbowl is sure;
			now fishbowl is cursed;
			let M be a random patron in the location of the player;
			say "One patron is carrying a large glass bowl which [he of M] places on the bed.[line break][speech style of M]'The number one rule for today, sluts, is that everything that comes out of you goes in here. Got it?'[roman type][line break][BigNameDesc of W] replies on behalf of both of you.[line break][speech style of W]'Yes sir, we understand...'[roman type][line break]";
	otherwise if patron-scene-fighting of W >= 2:
		increase patron-scene-fighting of W by a random number between 0 and 3;
		if the woman-bimbo of W > 4:
			say "[one of][BigNameDesc of W] doesn't seem to want to fight! [big he of W] kneels on the bed with a distressed look on [his of W] face.[line break][speech style of W]'[NameBimbo]... no... we need to be good little whores for them. Fighting is what powerful people do, not us...'[roman type][line break][or][BigNameDesc of W] rocks back and forth uneasily.[line break][speech style of W]'You're gonna get us both in trouble...'[roman type][line break][or][stopping]";
		otherwise:
			now M is the noun;
			if M is not alive patron, now M is a random patron in the location of the player;
			let prev-health be the health of M;
			compute M receiving a random number from 1 to 2 damage from W.

To compute patron scene climax of (W - woman-barbara):
	if the number of unleashed patron in the location of the player is 0, now the patron-scene-done of W is 2;
	if the patron-scene-done of W is 2 and fishbowl is non-empty:
		let M be a random dickhead patron in the location of the player;
		if M is nothing, let M be a random patron in the location of the player;
		if the patron-scene-fighting of W > 3:
			say "[BigNameDesc of M] pulls out a large enema syringe and fills it with the gross sloppy contents of the [fishbowl]. [big he of M] turns to [NameDesc of W].[line break][speech style of M]'You. Spread your cheeks.'[roman type][line break][BigNameDesc of W] [if the woman-bimbo of W < 5]hesitates for a moment, but then complies[otherwise]complies immediately[end if], turning around and spreading [his of W] butthole for [NameDesc of M]. [big he of M] inserts the syringe into [NameDesc of W][']s tight pucker and pushes the plunger, giving [him of W] what will surely by the most disgusting enema of [his of W] lifetime.";
			say "[speech style of M]'And now, it's time for you both to finally prove to us that you're nothing but disgusting whores. Climb onto of your friend and make [him of the player] drink your nasty ass-juice straight from the tap, and we'll think about leaving you alone without degrading you any further.'[roman type][line break][BigNameDesc of W] looks panicked but after a moment's consideration, [he of W] nods and begins to crawl over to you, ready to sit on your face, and let [his of W] butthole feed you a huge bellyful ";
		otherwise:
			if the doses of fishbowl > 6, now the doses of fishbowl is 6;
			say "[BigNameDesc of M] grabs [NameDesc of W][']s hair and mercilessly dunks [his of W] face into the [fishbowl]. Gross![line break][speech style of M]'Drink up, whore. Your friend here prepared this meal just for you.'[roman type][line break]A mixture of whimpering and slopping sucking can be heard as [NameDesc of W] hoovers up the [fill-colour of fishbowl] stuff. Just before [he of W] has finished the disgusting task, [NameDesc of M] yanks [him of W] back out of the bowl. [BigNameDesc of W][']s cheeks are bulging with a huge mouthful of the sickening substance.[line break][speech style of M]'You greedy bitch! You nearly drank it all without offering any to your cocksleeve of a friend over here. How inconsiderate! Or were you just trying to be extra kind and save [him of the player] the effort of sucking it up from the bowl? Yes, that must have been it. You're going to pass [his of the player] own [if the fill-colour of fishbowl is creamy]creampie [end if]slop back to [him of the player] mouth-to-mouth, weren't you?'[roman type][line break][BigNameDesc of M] holds up a pair of solid gold rings, seemingly implying that you might be able to earn them if you play along.";
			say "[BigNameDesc of W] looks panicked but after a moment's consideration, encouraged by the sight of the jewellery, [he of W] nods and begins to crawl over to you, ready to give you a kiss, and a huge mouthful ";
		say "of[if the fill-colour of fishbowl is not golden] the jizz that came out of your holes[end if][if the fill-colour of fishbowl is murky] and[end if][if the fill-colour of fishbowl is not creamy] the [urine] that's already been in [his of W] mouth[end if]. All [number of patrons in the location of the player] patrons surround you in a circle, chanting.[line break][speech style of M]'Drink it! Drink it! Drink it!'[roman type][line break]Do you let it happen? ";
		if the player is bimbo consenting:
			say "You clench your eyes shut and open your mouth, letting your tongue hang out [if the player is a nympho]lewdly[otherwise]as a sign of submission[end if]. ";
			if the patron-scene-fighting of W > 3:
				say "[BigNameDesc of W] mounts your face and places [his of W] butthole right on top of your tongue.[line break][speech style of W]'[if the woman-bimbo of W < 5]Sorry about this...'[otherwise]Drink up, bitch!'[end if][roman type][line break]You feel [his of W] sphincter relax and open as [he of W] pushes, and the torrent of ass-goop squirts into your mouth. ";
				humiliate TOTAL-HUMILIATION;
			otherwise:
				say "[BigNameDesc of W] pushes [his of W] lips tight against yours and then opens wide, sending both [his of W] tongue and the nasty mixture over into your mouth. ";
				humiliate ULTRA-HUMILIATION;
			if (the fill-colour of fishbowl is murky and (the semen taste addiction of the player < 14 or the urine taste addiction of the player < 14)) or (the fill-colour of the fishbowl is creamy and the semen taste addiction of the player < 12) or (the fill-colour of the fishbowl is golden and the urine taste addiction of the player < 12), say "It tastes just as disgusting as you'd expect for a mixture of almost every bodily fluid you can think of. ";
			otherwise say "You find the taste surprisingly palatable, considering how many different locations inside people's bodies the liquid has recently been. ";
			say "You gulp the stuff down to the delight of the audience, who cheer and whoop as if they're watching a sports game. [BigNameDesc of M] cackles.[line break][speech style of M]'Oh my god, I can't believe you actually did that! That's the most disgusting thing I've ever seen in my life! You two are truly the filthiest whores in the entire world.'[roman type][line break]You turn red with shame.";
			if the fill-colour of fishbowl is creamy:
				StomachSemenUp 2 * the doses of fishbowl;
			otherwise:
				StomachUrineUp the doses of fishbowl;
				StomachSemenUp the doses of fishbowl;
			if the patron-scene-fighting of W <= 3:
				let R be a random off-stage ring;
				if a random number between 2 and 4 > the patron-scene-fighting of W and R is ring:
					now R is solid gold;
					now R is in the location of the player;
					set shortcut of R;
					say "[BigNameDesc of M] drops the two [R]s [he of M] promised you in the bowl.[line break][speech style of M]'Go fetch.'[roman type][line break][BigNameDesc of W] shamelessly fishes [his of W] one out of the remnants of the slop and slips it on [his of W] finger. You move to do the same.";
					compute autotaking R;
				otherwise:
					say "[BigNameDesc of M] pockets the gold rings that [he of M][']d been dangling in front of your face.[line break][speech style of M]'What, you think I'd waste good money on cheap whores like you two? Fuck off. You haven't earned a dime. Worthless cunts.'[roman type][line break]";
		otherwise:
			say "[if the player is able to speak][variable custom style]'Fuck off, I'm not going anywhere near that.'[roman type][line break][otherwise]You shake your head in disgust.[end if][line break][speech style of M]'Worthless [cunt]! I'll make you learn your place. [BarbaraName], put that shit back in the bowl.'[roman type][line break][BigNameDesc of W] lets the horrid mixture slowly drip back into the [fishbowl]. [BigNameDesc of M] picks it up and unceremoniously dumps it all over ";
			if (bukkake fetish is 1 or the fill-colour of fishbowl is murky) and a random number between 1 and 5 > 2:
				say "your head!";
				if the fill-colour of fishbowl is murky:
					Squirt urine on face by ((the doses of fishbowl + 1) / 2);
					Squirt semen on face by ((the doses of fishbowl + 1) / 2);
				otherwise if the fill-colour of fishbowl is golden:
					Squirt urine on face by the doses of fishbowl;
				otherwise:
					Squirt semen on face by the doses of fishbowl;
				say "[speech style of M]'Fucking slut. If you won't drink it, you'll wear it with pride.'[roman type][line break]";
			otherwise:
				say "[NameDesc of W][']s head! It soaks in [his of W] hair and glazes [his of W] upper body.[line break][speech style of M]'You thought that was going over yourself for a moment, didn't you? Coating you in your own shame wouldn't do. I want you to live with the deep shame that you let your best friend down in [his of W] greatest time of need. You'll have to live with that for the rest of your life.'[roman type][line break]";
				now fishbowl-hat is betrayal;
			if fishbowl-hat is actually summonable:
				say "[BigNameDesc of M] now puts the bowl upside-down on top of your head.[line break][speech style of M]'Your new task is to let lots of people see just how much of an awful person you are.'[roman type][line break][if fishbowl-hat is betrayal]Taking out a red marker, [he of M] writes 'WHORE TRAITOR' on the glass, over your forehead.[end if]";
				summon fishbowl-hat cursed;
		DoseDown fishbowl by the doses of fishbowl;
		now the patron-scene-done of W is 3;
	if the patron-scene-done of W >= 2:
		say "All the patrons cheerfully chat to each other, patting each other on the back and congratulating each other on a good job well done, as they all leave the way they came[unless fishbowl-hat is worn], taking the bowl with them[end if].";
		now fishbowl is in Holding Pen;
		repeat with M running through alive patrons:
			now the boredom of M is 0;
			now M is unleashed;
			destroy M;
		force allocate 6 seconds.

Chapter - Anal Only Stool

woman-barbara has a number called stool-scene.

A later time based rule (this is the barbara stool gets noticed rule):
	if the woman-status of woman-barbara is 80 and woman-barbara is in the location of the player:
		let W be woman-barbara;
		if the stool-scene of W is 0:
			say "You perform a double-take as you notice [NameDesc of W][']s state of affairs. [big he of W] is very slowly wandering from room to room, quietly moaning to [himself of W] every time [he of W] bumps into a wall.";
			now the stool-scene of W is 1;
		let M be W;
		repeat with N running through reactive male monsters:
			if N is uninterested or N is friendly, now M is N;
		if M is not W:
			compute barbara stool fuck of M;

To say BecomesDistractedFlav of (M - a monster) to (W - a monster):
	say "[BigNameDesc of M][']s gaze shifts from you to [NameDesc of W].".

To compute barbara stool fuck of (M - a monster):
	if M is interested, say BecomesDistractedFlav of M to woman-barbara;
	say BarbaraStoolFuckStartFlav of M;
	say BarbaraStoolFuckReactionFlav of M;
	say BarbaraStoolFuckClimaxFlav of M;
	now the refractory-period of M is the refractory-time of M;
	satisfy M;
	compute mandatory room leaving of M.

To say BarbaraStoolFuckStartFlav of (M - a monster):
	let W be woman-barbara;
	say "[BigNameDesc of M] [one of]saunters[or]strides[or]gingerly tiptoes[in random order] over to [NameDesc of W] [one of]where [he of M] grabs [him of W] by the waist before[or]where [he of M] swats [him of W] loudly on the ass and then[or]and makes sure not to let [him of W] know [he of M][']s there at all until[in random order] [he of M] [one of]shoves [his of M] entire [LongDickDesc of M] into [his of W] asshole in a single unforgiving thrust[or]lets [his of M] [LongDickDesc of M] slide easily into [his of W] gaping rear fuckhole[in random order]. ";

To say BarbaraStoolFuckReactionFlav of (M - a monster):
	say "[BigNameDesc of woman-barbara] [one of]squeals[or]yelps[or]shrieks[or]screams[in random order] with what seems to be a mixture of shock and [one of]delight[or]pleasure[or]desire[in random order]. ";

To say BarbaraStoolFuckClimaxFlav of (M - a monster):
	let W be woman-barbara;
	say "[BigNameDesc of M] [one of]thrusts [his of M] hips back and forth with no visible care or concern for whether [NameDesc of W] enjoys [himself of W][or]jackhammers in and out at impressive speed[or]enjoys [himself of M] with long, slow thrusts, each one going as deep as [his of M] [DickDesc of M] will allow[in random order], until [he of M] [one of]grunts[or]moans animalistically[at random] and [one of]fills [NameDesc of W][']s belly with more [semen][or]sends [his of M] swimmers [if pregnancy fetish is 1]searching in vain for an egg to fertilise [end if]down the wrong hole[in random order].";

To compute PlayerBarbaraStoolFuck:
	if the latex-transformation of the player >= 6:
		say "You wouldn't feel anything from it, so you don[']t see the point.";
		stop the action;
	let PF be vagina;
	let S be a random worn strapon-panties;
	if S is demon codpiece, say CodTightenFlav of S;
	if sexual-penis-length > 0:
		say "Do you want to [if S is clothing]use your [SexDesc of penis] on[otherwise]fuck[end if] [his of woman-barbara] [asshole]?";
		if the player is consenting, now PF is S;
	if PF is penis:[Now that the part we want to use is selected, validate]
		let S be a random worn dildo-usage strapon-panties;[dildo-usage determines whether the player's dick is sticking out of the strapon]
		if there is a worn condom of kings:
			say "You wouldn't feel anything from it, so you don't see the point.";
			now PF is vagina;
		if S is clothing:
			if there is a worn chastity cage or there is a worn restricting research airhancer:
				say "Your [if there is a worn chastity cage][printed name of a random worn chastity cage] pulses[otherwise][printed name of a random research airhancer] flashes several times[end if], and your [SexDesc of penis] immediately loses all rigidity. Looks like you need to try something else...";
				now PF is vagina;
			otherwise:
				now PF is S;
		otherwise:
			if there is a undisplacable pussy covering clothing:
				say "You'll have to find a way to remove your [printed name of a random undisplacable pussy covering clothing] first.";
				now PF is vagina;
			if there is a worn chastity cage:
				say "You'll have to find a way to get out of your chastity cage first!";
				now PF is vagina;
			if there is a worn restricting research airhancer:
				say "Your [ShortDesc of penis] can't get hard enough to fuck anything. You'll need to deactivate your [printed name of a random research airhancer] first.";
				now PF is vagina;
	if PF is not vagina:
		let W be woman-barbara;
		increase the delayed sluttification of W by 1;
		say "You push your [ShortDesc of PF] into [NameDesc of W][']s gaping butthole. ";
		if PF is penis, say "Your [MediumDesc of penis] [if the size of penis < 5]is feels extremely slim in comparison to the huge width that [his of W] sphincter has been stretched out to[otherwise if the size of penis < 8]finds it all too easy to fit inside the poor [man of W][']s cavernous fuckhole[otherwise]slides in with ease, which evidences just how horribly stretched poor [NameDesc of W][']s sphincter has become[end if][if ungape is 0], and as you feel the contours of [his of W] distended ring with your fingers, you find yourself severely doubting that it'll ever return to proper tightness again[end if]. ";
		AnalGet;
		say "You enjoy [if PF is penis]the sensations of [end if]plundering [NameDesc of W][']s slack sex chute, testing out various speeds and depths, listening to [his of W] mewls of distress and pleasure until you ";
		if PF is penis:
			say "reach your limit and fill [him of W] with your [semen], adding it to the pint or so that's already sloshing around [his of W] belly. ";
			orgasm quietly;
		otherwise:
			say "are satisfied that [he of W] has suffered enough. ";
		say "You feel more dominant!";
		DominateUp W;
		DelicateDown 2;
		say "With a proud smirk, you loosen [his of W] binds a bit, and then turn [him of W] towards the [random N-viable direction] and give [him of W] a hard thwack on the rear, which makes [him of W] squeal in pain and begin waddling [his of W] way out of the room. With those weakened knots, [he of W][']ll manage to free [himself of W] after not too long, but [he of W] won't know that it was you who tormented [him of W] first.";
		now the stool-scene of W is 2;
		vanish W.

Check pulling woman-barbara when the woman-status of woman-barbara is 80 and the stool-scene of woman-barbara < 2:
	if the player is at least partially immobile or the player is in danger, say "You're a bit busy right now!" instead;
	allocate 6 seconds;
	now Neighbour Finder is the location of the player;
	say "You loosen the binds around [NameDesc of noun][']s wrists and remove the blindfold. After you unlatch the gag, [NameDesc of noun] almost sobs with relief.[line break][speech style of the noun]'Thank you so much, [NameBimbo], how can I ever repay you?! I'll see you later!'[roman type][line break][big he of the noun] waddles off to the [random N-viable direction] to finish removing the rest of [his of the noun] bondage and gape tape.";
	FavourUp the noun by 4;
	now the stool-scene of the noun is 2;
	vanish the noun instead.

Chapter - Throne Scene

woman-barbara has a number called throne-scene.

Report going when the player is in Dungeon11 and the player is the donator and the woman-bimbo of woman-barbara is 4 and the throne-scene of woman-barbara is 0 and woman-barbara is redeploy appropriate:
	if debugmode is 1, say "Checking if barbara can appear.";
	if the number of monsters in the location of the player is 0 and woman-barbara is redeploy appropriate:
		deploy woman-barbara with woman-status 97;
		now woman-barbara is in the location of the player;
		now woman-barbara is interested;
		say "As you arrive you see [NameDesc of woman-barbara] is here, sitting on the throne. [big his of woman-barbara] belly looks a little more round than you'd expect. It looks like [he of woman-barbara] was about to stand up, but then [he of woman-barbara] saw you and changed [his of woman-barbara] mind.".

An all time based rule (this is the barbara throne rule):
	if the woman-status of woman-barbara is 97 and the throne-scene of woman-barbara <= 4:
		let W be woman-barbara;
		if W is in the location of the player:
			increase the throne-scene of W by 1;
			if the throne-scene of W is 1:
				say "[speech style of W]'Oh wow, [NameBimbo], fancy seeing you here at a time like this. Not that there's anything going on here. Nothing's going on here. Would you mind, um, leaving me alone for a moment?'[roman type][line break]";
			otherwise if the throne-scene of W is 2:
				say "You can see [NameDesc of W][']s belly growing larger with each moment that passes. Is [he of W] getting filled up from behind?[line break][speech style of W]'Seriously, there's nothing going on here, so if you could please just leave me alone for a brief second I'll... ergh...'[roman type][line break]";
			otherwise:
				if the throne-scene of W is 3:
					say "[BigNameDesc of W] now [if pregnancy fetish is 1]looks nine months pregnant[otherwise]looks like [his of W] belly is about to burst[end if]![line break][speech style of W]'Oh god... can't hold it...'[roman type][line break]";
					WomanSluttify;
				otherwise:
					say "[one of]Mouthfuls of [semen] start to erupt from [NameDesc of W][']s mouth. [big he of W] can no longer speak, and [his of W] eyes have rolled into the back of [his of W] head. You're not sure [he of W] is even fully conscious any more.[or]Mouthfuls of [semen] continue to spew from [NameDesc of W][']s mouth.[stopping]";
					decrease the throne-scene of W by 1; [Keeps the scene going indefinitely]
					let collecting be nothing;
					unless the player is at least partially immobile or the player is in danger or the player is not able to use their hands:
						let LV be a list of things;
						repeat with V running through carried open topped vessels:
							unless the fill-colour of V is creamy and the doses of V >= the max-doses of V, add V to LV;
						if the number of entries in LV > 0:
							reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
							truncate LV to 9 entries;
							say "Where do you want to collect the [semen]?[line break]";
							repeat with V running through LV:
								if V is bottle, set next numerical response to "The [ShortDesc of V][if the doses of V > 0 and the fill-colour of V is not creamy] (You'll lose its current contents of [PotionType of V])[end if]";
								otherwise set next numerical response to "[BigNameDesc of V]";
							set numerical response 0 to "don't collect";
							compute multiple choice question;
							if player-numerical-response > 0, now collecting is entry player-numerical-response in LV;
					if collecting is a vessel:
						if the doses of collecting > 0 and the fill-colour of collecting is not creamy:
							say "You tip the contents of the [ShortDesc of collecting] onto the floor.";
							dump collecting;
						now the fill-colour of collecting is creamy;
						DoseUp collecting by 4;
						say "Several gulps worth of [semen] are spewed into the [ShortDesc of collecting].";
						now collecting is monster-origin;
					otherwise:
						SemenPuddleUp 4;
		otherwise:
			if W is nearby, say "You glance behind you and notice that [NameDesc of W] has gone.";
			now the throne-scene of woman-barbara is 5;
			SemenPuddleUp 20 in (the location of W);
			vanish W.

Chapter - Crafting Scene

woman-barbara has a number called crafting-scene.

Report going when the player is in Dungeon37 and the player is the donator and the woman-bimbo of woman-barbara is 4 and the crafting-scene of woman-barbara is 0 and woman-barbara is redeploy appropriate:
	let W be woman-barbara;
	deploy W with woman-status 6;
	now W is in the location of the player;
	now W is interested;
	say "You see [NameDesc of W] is here, in the middle of crafting a potion. [big he of W] is bent over at the waist, deep in thought, [his of W] [if lady fetish < 2]pussy and [end if]asshole on total display.";
	alwayscutshow Figure of Barbara Cutscene 6 for W;
	say "Before you can say anything, [he of woman-barbara] stands up triumphantly, holding a small vial full of a brightly glowing pink liquid.[line break][speech style of W]'Oh hey [NameBimbo], I almost didn't notice you there! I think this one is gonna be good! Do you want to try it? If you don't, I'll be the guinea pig myself!'[roman type][line break][big he of W] hands you the pink vial.";
	appropriate-cutscene-display Figure of Barbara Cutscene 7;
	say "Do you drink it? ";
	if the player is consenting:
		say "You bravely swig the vial in a single gulp. ";
		if a random number between 1 and 3 is 1:
			let L be the list of worn upgradable clothing;
			say "Almost immediately you can tell something is wrong. You feel uneasy[if the number of entries in L > 0]. And then the magic bursts out of your body and into your clothes![otherwise]... but nothing happens? Weird. Oh well, no harm done apparently.[end if]";
			repeat with C running through L:
				potentially transform C;
		otherwise:
			say "Almost immediately, you feel great! Your mind feels sharper and some of your new desires feel less important.";
			SexAddictDown 1;
			FuckholeAddictDown 1;
			IntUp 1;
	otherwise:
		say "[BigNameDesc of W] takes the vial back and bravely swigs it in a single gulp. ";
		if a random number between 1 and 2 is 1:
			say "Almost immediately you can tell something is wrong.[line break][speech style of W]'I don't feel so good...'[roman type][line break]You see [his of W] mind going blanker as the magic potion transforms [his of W] clothes!";
			ImmediateWomanSluttify;
		otherwise:
			say "[line break][speech style of W]'Yeah, I feel amazing!'[roman type][line break]You see [his of W] mind becoming sharper as the magic potion transforms [his of W] clothes!";
			ImmediateWomanUnsluttify;
		say MonsterDesc of W.

Part 4 - Wandering

To compute wandering of (M - woman-barbara):
	follow the barbara wandering rules.

The barbara wandering rules is a rulebook.

To decide which number is the bondage-favour-limit of (W - woman-barbara):
	decide on 10.

This is the woman helps the player remove bondage rule:
	if the woman-status of woman-barbara is 2 and there is worn locked clothing and the player is not at least partially immobile:
		if the favour of woman-barbara < the bondage-favour-limit of woman-barbara:
			say "[second custom style]'[one of]Oh god, you're never going to be able to continue like that. Oh, what's this?!'[or]Ooh, still having trouble with bondage, eh?'[stopping][roman type][line break][big he of woman-barbara] dangles a skeleton key in front of your face.[line break][second custom style]'It's such a shame that I don't feel like giving you this one, isn't it?'[roman type][line break]";
		otherwise:
			say "[second custom style]'[one of]Oh god, you're never going to be able to continue like that. Don't worry, I'll use this key I found!'[or]I guess I should let you have my key again, eh?'[stopping][roman type][line break]";
			say "Using the key, [he of woman-barbara] unlocks your bondage. The key then crumbles to dust.";
			repeat with C running through worn locked clothing:
				now C is unlocked;
			say "[second custom style]'I hope I don't need it myself now, haha...'[roman type][line break]";
			increase the delayed sluttification of woman-barbara by 1;
		now the woman-status of woman-barbara is 7;
		rule succeeds.
The woman helps the player remove bondage rule is listed last in the barbara wandering rules.

This is the woman gets bored and moves on rule:
	if the woman-status of woman-barbara < 80 and the friendly boredom of woman-barbara > 10 and the number of hotel bed in the location of the player is 0 and a random number from 1 to 20 is 1: [woman-status of 80+ means she was spawned to get fucked so she doesn't vanish]
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
		otherwise:
			let D be the best route from the location of M to Woods01 through placed rooms;
			unless D is nothing:
				say "[second custom style]'I think I'm going to go [one of]back and visit the Dungeon[or]visit the Hotel[purely at random].'[roman type][line break][M] walks off towards the [D].";
				Vanish M;
				rule succeeds.
The woman gets bored and moves on rule is listed last in the barbara wandering rules.

This is the woman gives birth to a tentacle monster rule:
	if the woman-status of woman-barbara < 80 and woman-barbara is tentacle-pregnant and woman-barbara is in the location of the player and the number of monsters in the location of the player is 1:
		let M be a random off-stage tentacle monster;
		if M is monster:[hiding the check in an if-statement like this prevents run-time errors]
			now M is newborn;
			set up M;
			now M is in the location of the player;
			say "[BigNameDesc of woman-barbara] collapses to the ground.[line break][second custom style]'Oh fuck, it's coming!'[roman type][line break][big he of woman-barbara] spreads [his of woman-barbara] legs, exposing [his of woman-barbara] dilated pussy and womb. You watch with [horror the bimbo of the player] as one, two, then three tentacles pry [his of woman-barbara] cunt open even further and then the thing inside begins to pull itself out.[line break][second custom style]'[if the woman-bimbo of woman-barbara < 4]It hurts! Get it out! It hurts so much[otherwise]I'm going to be a mama[end if]!'[roman type][line break][BigNameDesc of woman-barbara] flails helplessly as a basketball-sized lump of grey flesh forces its way out of [his of woman-barbara] and into the world. [big he of woman-barbara] lies exhausted on the ground as [his of woman-barbara] spawn's single giant eye focuses on you.";
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
	if the woman-status of M is 96 and X is patron:
		compute patron interaction of M;
	otherwise if the woman-status of M is 91 and X is mechanic:
		if X is penetrating a body part:
			say "[BigNameDesc of M] [one of]makes [himself of M] useful by sucking [NameDesc of X][']s balls[or]makes lewd slurping sounds as [he of M] massages [NameDesc of X][']s balls with [his of M] lips[or]stands upright and begins to worship [NameDesc of X][']s tongue in a long, loud French kiss[or][BigNameDesc of M] is still passionately kissing [NameDesc of X][stopping].";
	otherwise if the woman-status of M >= 80:
		do nothing;[Barbara was spawned to get fucked, not fight.]
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
			say "[BigNameDesc of M] giggles.[line break][second custom style]'Have fun, I won't get in your way!'[roman type][line break]";
			deinterest M;
		otherwise:
			let prev-health be the health of X;
			compute X receiving a random number from 1 to 2 damage from M;
			if prev-health is the maxhealth of X and the health of X < the maxhealth of X, say AllyInstigated of X.

To say AllyDamageFlav of (M - woman-barbara) on (X - a monster):
	say "[one of][line break][second custom style]'Let's do this!'[roman type][line break][or][line break][second custom style]'Take this!'[roman type][line break][stopping][line break][BigNameDesc of M] knees [NameDesc of X] with all [his of M] strength.".

To say AllyInstigated of (X - a monster):
	if X is intelligent, say "[BigNameDesc of X] looks really pissed off now! [line break][variable custom style][if the bimbo of the player < 5]That wasn't the plan... wait why is [he of X] looking at ME angrily?![roman type][line break][otherwise if the player is able to speak]'I'm sorry, that wasn't my fault!'[roman type][line break][BigNameDesc of X] doesn't seem to care what you say, and seems mainly angry with you![otherwise]Uh-oh... why do I get the feeling I'm going to be the one in trouble here?[roman type][line break][end if]".

Part 6 - Combat

Section 0 - Punishment

This is the barbara unique punishment rule:
	let J be the biggest held jewel;
	let P be a random eligible piercing;
	let G be a random regional glue;
	if playerRegion is Hotel and P is piercing and P is actually summonable:
		unless modification machine is in the location of the player:
			drag to Hotel02 by woman-barbara;
		say "[big he of woman-barbara] forces you onto the [ShortDesc of modification machine]! [PiercingFlav of P]";
		summon P cursed;
		say "[second custom style]'Hahaha, that looks so ridiculous! Serves you right.'[roman type][line break]";
	otherwise if playerRegion is Woods and vine boss is alive:
		drag to Woods16 by woman-barbara;
		say "[second custom style]'Have fun, [if the woman-bimbo of woman-barbara < 5]bitch.'[otherwise]*giggle*'[end if][roman type][line break][big he of woman-barbara] pushes you down the hole.";
		now the player is in WoodsBoss01;
		if another-turn-flavour is "", now another-turn-flavour is the substituted form of "It takes you a moment to recover from the fall.";
		now another-turn is 1;
	otherwise if playerRegion is Dungeon and G is glue:
		say "[second custom style]'[if the woman-bimbo of woman-barbara < 5]Do you regret making an enemy of me yet?'[otherwise]This is my favourite spot down here! Enjoy!'[end if][roman type][line break][big he of woman-barbara] pushes you into the glue.";
		increase the times-stuck of G by 1;
		now the player-motion of the player is 0;
		now G is grabbing the player;
		now the stickiness of the player is 2 + a random number between 1 and the glue-strength of G / 4;
		now the smell-duration of G is 4;
	otherwise if the woman-bimbo of woman-barbara < 5 and J is plentiful accessory:
		say "[BigNameDesc of woman-barbara] yanks the [J] from your [if J is carried and there is a worn bag of holding][ShortDesc of a random worn bag of holding][otherwise if J is carried]hands[otherwise if J is necklace]neck[otherwise if J is bracelet]wrist[otherwise]finger[end if]![line break][second custom style]'This is mine now.'[roman type][line break]";
		now J is in holding pen;
		now woman-barbara is retaining J;
	otherwise:
		say "[BigNameDesc of woman-barbara] spreads [his of woman-barbara] cheeks and moves [his of woman-barbara] crack towards your face.";
		if face is not actually occupied, say "[line break][second custom style]'[if the woman-bimbo of woman-barbara < 5]Lick my asshole, [cunt]. Show me you admit defeat.'[otherwise]Wanna taste?'[end if][roman type][line break]Do you lick [NameDesc of woman-barbara][']s butthole? ";
		if face is not actually occupied and the player is bimbo consenting:
			say "You [if the player is not a pervert]reluctantly[otherwise if the player is not a nympho]obediently[otherwise]happily[end if] tongue [his of woman-barbara] loose hole, [if the player is not a pervert]wincing with shame[otherwise if the player is not a nympho]and start to get turned on[end if] when [he of woman-barbara] sighs with pleasure. ";
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
				say "[second custom style]'[if face is not actually occupied and the woman-bimbo of woman-barbara >= 5]Fine, I guess you'll just have to sit there and watch!'[otherwise if the woman-bimbo of woman-barbara >= 5]Look how stretchy it is!'[otherwise if face is actually occupied]Take a close look, bitch. This is what you're gonna be tasting one of these days soon.'[otherwise]How rebellious. Are you sure you don't want a taste?'[end if][roman type][line break][big he of woman-barbara] pushes two fingers from each hand into [his of woman-barbara] butt, before pulling [his of woman-barbara] hands apart to make [his of woman-barbara] hole gape right in front of your eyes. [if the player is not a nympho]You find yourself becoming desensitised to such lewd displays - it's pretty normal for this kind of game[otherwise]You find yourself staring deep inside with glee and wonder in your eyes[end if]. [big he of woman-barbara] lowers [his of woman-barbara] gaping wide asshole over you until it's pretty much touching your face, before letting go and allowing it to snap shut on the tip of your nose, making you yelp with surprise. [big he of woman-barbara] laughs and then stands back up.";
				SexAddictUp 1;
	satisfy woman-barbara.

The unique punishment rule of woman-barbara is the barbara unique punishment rule.

Section 1 - Fighting

To say MonsterTripAnnounceFlav of (M - woman-barbara):
	say "[BigNameDesc of M] [if the woman-bimbo of M < 4]shifts [his of M] weight and goes for a slide tackle[otherwise if the woman-bimbo of M < 6]grabs your shoulders and tries to hook a foot behind your ankle[otherwise]drops to [his of M] knees and after greedily staring at your crotch for a moment, tries to grab your legs and squeeze them together[end if]!".

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
		say "A single moment of dread turns to surprise and [horror semen addiction of the player] as a powerful burst of [semen] jets out of the nozzle and drenches your face, blinding you!";
		CumFaceUp 20;
		now another-turn-flavour is the substituted form of "You are still recoiling from being blinded with [semen].";
		now another-turn is 1;
	otherwise if the woman-bimbo of M < 5:
		say "[BigNameDesc of M] [one of]winds up a big punch and smacks you[or]lands a karate chop[or]kicks you[at random] [TargetName of B]! Ouch!!";
	otherwise:
		say "[BigNameDesc of M] [one of]giggles as [he of M] [or]grins and [or][at random]spanks you [one of]hard [or][or][purely at random][TargetName of B]!";

Section 2 - Damage

To compute damage reaction of (M - woman-barbara):
	if M is awake:
		if M is uninterested or M is not angered:
			say "[BigNameDesc of M] looks shocked.[line break][speech style of M]'[one of]Fucking bitch! Come on then![or]What the fuck is your problem? You're going down!'[or]Oh you are going to wish you never messed with me!'[at random][roman type][line break]";
			now M is interested;
			now M is angered;
		otherwise:
			say DamageReaction (the health of M) of M;
	otherwise:
		decrease the sleep of M by 300;
		if the health of M < the maxhealth of M / 2, now the sleep of M is 0;
		if the sleep of M < 0, now the sleep of M is 0;
		if M is awake:
			say "[big he of M] wakes up, looking very pissed off indeed! Uh-oh...";
			now M is interested;
			now M is angered;
		otherwise:
			say "[big he of M] is still unconscious.".

To say DamageReactHealthy of (M - woman-barbara):
	say "[big he of M] looks [one of][or]even [stopping]more pissed off than [he of M] did already!".

To say DamageReactDamaged of (M - woman-barbara):
	say "[big he of M] grunts in pain!".

To say DamageReactTired of (M - woman-barbara):
	say "[big he of M] staggers, squeaking in pain!".

To say DamageReactWeak of (M - woman-barbara):
	say "[big he of M] screams in pain, struggling to maintain [his of M] balance!".

To say DamageReactSubmissive of (M - woman-barbara):
	say "[big he of M] groans in pain, [if the size of penis <= 3]seemingly resigning [himself of M] to something[otherwise]staring apprehensively at your crotch[end if] as [he of M] fights to maintain [his of M] balance.".

To compute defeat of (M - woman-barbara):
	now the health of M is 1;
	if M is awake:
		say "[big he of M] drops to the ground, unconscious.";
		now M is angered;
		WomanSluttify;
		if the woman-bimbo of M <= 2:
			now magic pistol is in the location of the player;
			say "[big his of M] gun falls out of [his of M] hand.";
			compute autotaking magic pistol;
		otherwise:
			loot M;
		now the sleep of M is 300.

To say LootFlav of (X - a thing) by (M - woman-barbara):
	say "You notice that [he of M][']s wearing a [printed name of X]!".

Part 7 - Conversation

To compute talk option (N - 1) to (M - woman-barbara):
	if the player is able to speak:
		if the woman-status of M is 0 and M is stranger:
			say FirstGreeting to M;
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
	otherwise:
		say "[variable custom style][gag sounds][roman type][line break]";
	if the woman-status of M is 0 and M is stranger:
		say "[second custom style]'Oh shit! Wait... oh my god, are you another player? I didn't realise there was more than one of us playing at the same time! [if the faint count of the player > 1]No wonder the map keeps resetting around me... [otherwise if the faint count of the player is 1]No wonder the map shifted around me a while ago! [end if]I wonder if we're allowed to work together? What's my name? My name... I can't think of anything except 'Barbara'... but I don't think that is my real name...'[roman type][line break]";
		if newbie tips is 1, say "[newbie style]Newbie tip: Barbara is a special type of NPC, that under normal circumstances remains friendly throughout the entire course of the game, and will even fight alongside you, or appear to help you out of sticky situations. However if bad things happen, including if you lose a fight alongside [him of M], [he of M]'ll start to lose the game [himself of M], and become more slutty. Also, sometimes when you bump into [him of M] [he of M]'ll be in the middle of a predicament, and you have to choose whether to help [him of M] or let it happen. Letting it happen usually either avoids the risk of bad stuff, or rewards you with powerful items. However, it'll continue Barbara's progress towards becoming a brainless bimbo. A super slutty Barbara is a sort-of useless sidekick who can even do really unhelpful things like release the [ShortDesc of minotaur].[roman type][line break]";
		now M is introduced;
		now the text-shortcut of M is "ba";
	otherwise if the woman-status of M is 91 and the mechanic-scene of M <= 5 and M is in the location of the player and mechanic is unfriendly:
		say "[second custom style]'HYUK HYUK HYUK'[roman type][line break]";
	otherwise if the woman-status of M is 80:
		say "[second custom style]'MMMMPH!'[roman type][line break]";
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
				say "[second custom style]'*Giggle*. [if the woman-old-bimbo of M is not the woman-bimbo of M]That's not my name, my new super sexy name is [current-name of M]!'[otherwise]Look who it is! Did you always look so fucking hot? I'm jealous!'[end if][roman type][line break]";
	otherwise if the woman-status of M is 1:
		if M is interested:
			say "[second custom style]'There are lots of sex dolls around here at the moment, aren't there?'[roman type][line break]";
		otherwise:
			if the woman-bimbo of M < 3:
				say "[second custom style]'Hi again. Glad to see you're still coping.[if the woman-old-bimbo of M is not the woman-bimbo of M] My name is [current-name of M] now, by the way.'[roman type][line break]";
			otherwise if the woman-bimbo of M < 5:
				say "[big he of M] grins at you. [line break][second custom style]'[if the woman-old-bimbo of M is not the woman-bimbo of M]That's not my name, it's [current-name of M]!'[otherwise]Heya sweetums.'[end if][roman type][line break]";
			otherwise:
				say "[second custom style]'*Giggle*. [if the woman-old-bimbo of M is not the woman-bimbo of M]That's not my name, my new super sexy name is [current-name of M]!'[otherwise]Look who it is! Did you always look so fucking hot? I'm jealous!'[end if][roman type][line break]";
	otherwise if the woman-status of M is 2 or the woman-status of M is 7:
		if the favour of M < the bondage-favour-limit of M:
			say "[second custom style]'Karma's a bitch, but not as much of a bitch as you.'[roman type][line break]";
		otherwise if the woman-old-bimbo of M is the woman-bimbo of M:
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
				say "[second custom style]'*Giggle*. [if the woman-old-bimbo of M is not the woman-bimbo of M]That's not my name, my new super sexy name is [current-name of M]!'[otherwise]Look who it is! Did you always look so fucking hot? I'm jealous!'[end if][roman type][line break]";
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
				say "[second custom style]'*Giggle*. [if the woman-old-bimbo of M is not the woman-bimbo of M]That's not my name, my new super sexy name is [current-name of M]!'[otherwise]Look who it is! Did you always look so fucking hot? I'm jealous!'[end if][roman type][line break]";
	otherwise if the woman-status of M is 4:
		if M is interested:
			say "[second custom style]'Hmm, robots are kind of sexy, I guess?'[roman type][line break]";
		otherwise:
			if the woman-bimbo of M < 3:
				say "[second custom style]'Hi again. Glad to see you've made it this far[if the woman-old-bimbo of M is not the woman-bimbo of M]. My name is [current-name of M] now, by the way[end if].'[roman type][line break]";
			otherwise if the woman-bimbo of M < 5:
				say "[big he of M] beams at you. [line break][second custom style]'[if the woman-old-bimbo of M is not the woman-bimbo of M]That's not my name, it's [current-name of M]!'[otherwise]Hey there, honey.'[end if][roman type][line break]";
			otherwise:
				say "[second custom style]'*Giggle*. [if the woman-old-bimbo of M is not the woman-bimbo of M]I'm not called that any more, my name is obviously [current-name of M]!'[otherwise]Look who it is! Aren't you just LOVING this fetish hotel?'[end if][roman type][line break]";
	otherwise if the woman-status of M is 5:
		say "[second custom style]'[one of][if the woman-bimbo of M < 4]Let's not talk about what just happened okay? [big please]?'[otherwise if the woman-bimbo of M is 4]I can't believe I let you catch me in such a humiliating moment. Maybe I really am a slut...'[otherwise]I feel so much better after sitting on that dildo chair! Yum!'[end if][or][if the woman-bimbo of M < 4]Come on, let's try and find the exit to this crazy hotel.'[otherwise]Exploring the hotel with you is so much fun!'[end if][stopping][roman type][line break]";
		if the woman-old-bimbo of M is not the woman-bimbo of M, say "[second custom style]'My name is [current-name of M] now, by the way.'[roman type][line break]";
	otherwise if the woman-status of M is 90:
		say "[second custom style]'Let's keep away from those vines, shall we?'[roman type][line break]";
	otherwise if the woman-status of M is 94:
		if there is a revealed hypno trap in the location of M:
			say "[second custom style]'Huh? Oh crap, another hypno trap! Let's get out of here!'[roman type][line break]";
			compute mandatory room leaving of M;
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
	otherwise if the woman-status of M is 80:
		say "[second custom style]'MMMMPH!'[roman type][line break]";
	otherwise if M is angered:
		say "[second custom style]'[if the player is upright]That's a great question. Let me answer it with my fist.'[otherwise]I don't think you're in the position to be the one asking questions right now, do you?'[roman type][line break]";
	otherwise if the woman-status of M is 0:
		if the woman-bimbo of M < 3:
			say "[one of][line break][second custom style]'How did I get this gun?... You don't want to know what I had to do to get this gun.'[roman type][line break][big he of M] looks ashamed.[or][line break][second custom style]'They tricked you into thinking this was just a normal game? Those bastards, do they not get enough money from the rest of us?! I'm here because I have huge debts I can't pay off, so I'm risking my mind and body for a chance at winning some of the prize money.'[roman type][line break][or][line break][second custom style]'Am I a man or woman in real life? I... can't remember... if I was a man, I doubt I am any more.'[roman type][line break][in random order][line break]";
		otherwise if the woman-bimbo of M < 5:
			say "[second custom style]'[one of]How do I keep my hair this dark? I don't know, it never seems to change for me. No idea why, I'd love to try out being a blonde!'[or]Am I a man or woman in real life? I'm clearly woman! I think.'[or]The makeup? Well those mannequins keep coming, and sometimes it's just less risky to let them do what they want, and then they'll stop chasing you. You wouldn't want to get caught by something a lot scarier because you are already too beaten up now, would you?'[in random order][roman type][line break]";
		otherwise:
			say "[second custom style]'[one of]What happened to me? Lots of fun things, that's what!'[or]I'm sorry I have no idea what you just said, I was too busy thinking about [manly-penis]s.'[or]Escape? Why would I want to escape?'[in random order][roman type][line break]";
	otherwise if the woman-status of M is 2 and the favour of M < the bondage-favour-limit of M:
		say "[second custom style]'[one of]Why am I not giving you the key? Payback, of course. What else?'[or]Payback for what? You bloody well know what.'[or]Plead all you want, I'm not changing my mind.'[stopping][roman type][line break]";
	otherwise if the woman-status of M is 3:
		if the woman-bimbo of M < 5:
			say "[second custom style]'[one of]Why am I back down here? Can you keep a secret? I may have pulled the lever for the [ShortDesc of minotaur]! Teehee!'[or]If I were you, I've leave the Dungeon before it finds you!'[or]I don't know what happens if the [ShortDesc of minotaur] catches you, but something tells me it's pretty unique!'[cycling][roman type][line break]";
		otherwise:
			say "[second custom style]'[one of]Why am I back down here? To [']fight['] the [ShortDesc of minotaur], of course, silly!'[or]Yep, I've let it out! If I were you, I've leave the Dungeon before it finds you! Unless you want to join in with the fun?'[or]I don't know what happens if the [ShortDesc of minotaur] catches you, that's why I want to find out!'[cycling][roman type][line break]";
	otherwise if playerRegion is Dungeon:
		if the woman-bimbo of M < 3:
			say "[second custom style]'[one of]Why am I back down here? Well the shop and altar are often useful, and until the royal guards turn aggressive it's a bit safer than anywhere else.'[or][if minotaur is alive]The [ShortDesc of minotaur]? There's a lever in the prison guard's room that I bet releases [him of minotaur], but I'm too scared to try it.'[otherwise]I can't believe you have slain the [ShortDesc of minotaur] either! You're amazing!'[end if][or]The royal bed? I think it heals you to full, but I'm not sure it's worth it, I bet it also helps turn you into a bimbo.'[in random order][roman type][line break]";
		otherwise if the woman-bimbo of M < 5:
			say "[second custom style]'[one of]Why am I back down here? Well the sex dolls are easy to beat, and that shopkeeper is just so delicious...'[or][if minotaur is caged and minotaur is alive]The [ShortDesc of minotaur]? There's a lever in the prison guard's room that I'm always tempted to try out...'[otherwise]I can't believe you have released the minotaur either! You're so daring!'[end if][or]The statue with the huge penis? Yeah it somehow magically heals your orifices, and it helps you get used to the taste of semen, which is a good thing, right?'[in random order][roman type][line break]";
		otherwise:
			say "[second custom style]'[one of]Why am I back down here? Well I wanted to see if I could beat up a royal guard. Turns out I can't, but don't worry, [he of a random royal guard] gave me a consolation prize! *giggle*'[or][if minotaur is caged and minotaur is alive]The [ShortDesc of minotaur] cage? There's a lever somewhere apparently, and when I find it I'm definitely going to try it out!'[otherwise]I can't believe we've released the [ShortDesc of minotaur] either! How fun...'[end if][in random order][roman type][line break]";
	otherwise if playerRegion is Hotel:
		if the woman-bimbo of M < 4:
			say "[second custom style]'[one of]I'm still looking for the way out. I hope you haven't fallen into complete depravity yet, have you?'[or]From the looks of it, I'd say that the mechanic looks like [he of mechanic]'s probably the most dangerous of the lot. But it's just a hunch.'[or]I'd just had way too much trouble with those vines, so I came up here to get away from here. And now I have to deal with robots! Grr!'[in random order][roman type][line break]";
		otherwise:
			say "[second custom style]'[one of]I'm getting myself some deliciously thick robot cock! What about you?'[or]I don't know who's the strongest here, but it's definitely not me! Teehee.'[or]Ooh, yes, you must try the modification machine in room 101 - I feel much more ready to [']take on['] the monsters now, if you know what I mean.'[in random order][roman type][line break]";
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
	otherwise if the woman-status of M is 80:
		say "[second custom style]'MMMMPH!'[roman type][line break]";
	otherwise:
		say "[second custom style]'I'm sorry, I've got nothing!'[roman type][line break]".

To compute friendly food of (M - woman-barbara):
	if M is stranger:
		say "[big he of M] doesn't seem to realise you're talking to [him of M].";
	otherwise if M is angered:
		say "[second custom style]'As if I'd help you!'[roman type][line break]";
	otherwise if the woman-status of M is 91 and the mechanic-scene of M <= 5 and M is in the location of the player and mechanic is unfriendly:
		say "[second custom style]'HYUK HYUK HYUK'[roman type][line break]";
	otherwise if the woman-status of M is 80:
		say "[second custom style]'MMMMPH!'[roman type][line break]";
	otherwise:
		say FriendlyFoodApologiseFlav of M.

Definition: woman-barbara is dismissable if the woman-status of it < 80.
To say Undismissable of (M - woman-barbara):
	say "[BigNameDesc of M] seems [if the woman-status of M is 80]a bit confused[otherwise]to choose to ignore that[end if].".

To compute enema floor reaction of (M - woman-barbara):
	humiliate 100;
	if voluntarySquatting is 1, humiliate 200;
	if M is interested and M is friendly, say "[BigNameDesc of M] coughs and pretends [he of M] doesn't notice.".

Woman Barbara ends here.
