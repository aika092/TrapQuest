Woman Barbara by Monster begins here.

Include Fishbowl by Headgear.


The current-name of woman-player is "Barbara". The old-name of woman-player is "Barbara".

To say MediumDesc of (M - woman-player):
	say "[if M is introduced][womanTitle] [womanName][otherwise]mysterious [man of M][end if][if the woman-pregnancy of M > 1] (pregnant)[end if]".

Figure of woman 1 interested is the file "NPCs/MultiFloor/barbara/woman1a.jpg".
Figure of woman 1 uninterested is the file "NPCs/MultiFloor/barbara/woman1b.jpg".
Figure of woman 2 is the file "NPCs/MultiFloor/barbara/woman2.png".
Figure of woman 3 is the file "NPCs/MultiFloor/barbara/woman3.png".
Figure of woman 4 is the file "NPCs/MultiFloor/barbara/woman4.png".
Figure of woman 5a is the file "NPCs/MultiFloor/barbara/woman5a.png".
Figure of woman 5b is the file "NPCs/MultiFloor/barbara/woman5b.png".
Figure of woman pregnant is the file "NPCs/MultiFloor/barbara/woman6.jpg".
Figure of woman stool is the file "NPCs/MultiFloor/barbara/woman7.jpg".
Figure of woman buried is the file "NPCs/MultiFloor/barbara/woman8.jpg".
Figure of woman partial slavery is the file "NPCs/MultiFloor/barbara/woman9.png".

Figure of Barbara Cutscene 1 is the file "NPCs/MultiFloor/barbara/cutscene-barbara-throne1.jpg".
Figure of Barbara Cutscene 2 is the file "NPCs/MultiFloor/barbara/cutscene-barbara-throne2.jpg".
Figure of Barbara Cutscene 3 is the file "NPCs/MultiFloor/barbara/cutscene-barbara-throne3.jpg".
Figure of Barbara Cutscene 4 is the file "NPCs/MultiFloor/barbara/cutscene-barbara-toilet1.jpg".
Figure of Barbara Cutscene 5 is the file "NPCs/MultiFloor/barbara/cutscene-barbara-anal-contraption1.jpg".
Figure of Barbara Cutscene 6 is the file "NPCs/MultiFloor/barbara/cutscene-barbara-crafting1.jpg".
Figure of Barbara Cutscene 7 is the file "NPCs/MultiFloor/barbara/cutscene-barbara-crafting2.jpg".
Figure of Barbara Cutscene 8 is the file "NPCs/MultiFloor/barbara/cutscene-barbara-vines1.jpg".
Figure of Barbara Cutscene 9 is the file "NPCs/MultiFloor/barbara/cutscene-barbara-vines2.jpg".
Figure of Barbara Cutscene 10 is the file "NPCs/MultiFloor/barbara/cutscene-barbara-bellboy1.jpg".
Figure of Barbara Cutscene 11 is the file "NPCs/MultiFloor/barbara/cutscene-barbara-birth1.jpg".
Figure of Barbara Cutscene 12 is the file "NPCs/MultiFloor/barbara/cutscene-barbara-pool1.jpg".
Figure of Barbara Cutscene 13 is the file "NPCs/MultiFloor/barbara/cutscene-barbara-pregswap1.jpg".
Figure of Barbara Cutscene 14 is the file "NPCs/MultiFloor/barbara/cutscene-barbara-fuck1.jpg".
Figure of Barbara Cutscene 15 is the file "NPCs/MultiFloor/barbara/cutscene-barbara-fuck2.jpg".
Figure of Barbara Cutscene 16 is the file "NPCs/MultiFloor/barbara/cutscene-barbara-glue1.jpg".
Figure of Barbara Cutscene 17 is the file "NPCs/MultiFloor/barbara/cutscene-barbara-glue2.jpg".
Figure of Barbara Cutscene 18 is the file "NPCs/MultiFloor/barbara/cutscene-barbara-shopkeeper1.jpg".
Figure of Barbara Cutscene 19 is the file "NPCs/MultiFloor/barbara/cutscene-barbara-gangbang1.jpg".
Figure of Barbara Cutscene 20 is the file "NPCs/MultiFloor/barbara/cutscene-barbara-cum-kiss1.jpg".

To decide which figure-name is the monster-image of (M - woman-player):
	if the woman-status of M is 97:
		if the throne-scene of woman-player >= 3, decide on figure of barbara cutscene 3;
		if the throne-scene of woman-player is 2, decide on figure of barbara cutscene 2;
		decide on figure of barbara cutscene 1;
	if the woman-status of M is 98, decide on Figure of woman buried;
	if the woman-status of M is 93 and the number of interested unfriendly dominatrix in the location of the player is 0, decide on figure of barbara cutscene 5;
	if the woman-status of M is 80, decide on figure of woman stool;
	if the vine-scene of M > 0 and the vine-scene of M < 5, decide on figure of barbara cutscene 8;
	if the woman-pregnancy of M > 1, decide on figure of woman pregnant;
	if M is partially-enslaved, decide on Figure of woman partial slavery;
	if the woman-bimbo of M < 3:
		if M is interested, decide on figure of woman 1 interested;
		decide on figure of woman 1 uninterested;
	if the woman-bimbo of M is 3, decide on figure of woman 2;
	if the woman-bimbo of M is 4, decide on figure of woman 3;
	if the woman-bimbo of M is 5, decide on figure of woman 4;
	if bukkake fetish is 1, decide on figure of woman 5b;
	decide on figure of woman 5a.

To decide which figure-name is the examine-image of (G - hole-in-wall):
	decide on figure of hole.
[
Condition for barbara being male
if (tg fetish is 1 and the woman-bimbo of M < 2 and lady fetish is not 1) or lady fetish is 2:
]
To say MonsterDesc of (M - woman-player):
	if the woman-pregnancy of M > 1:
		say "A long haired brunette, currently essentially naked. [big his of M] massive bulging belly is a clear sign that [he of M][']s pregnant[if the woman-pregnancy of M > 2], and probably with something inhuman[end if].";
	otherwise:
		if lady fetish is 2:
			if the woman-bimbo of M is 0, say "A slim, brown-haired [man of M] wearing a dark grey shirt under a black leather jacket and a matching pair of figure-hugging leather pants. [big his of M] strong jawline is darkened with stubble, and although most of [his of M] skin is covered up, you can tell [he of M]'s fairly athletic. [big he of M] is wearing a pair of square-rimmed glasses and carrying a modern-looking pistol.";[Barney]
			if the woman-bimbo of M is 1, say "A [man of M] with ear-length brown hair and a soft cast to [his of M] facial features that makes [him of M] look very feminine. [big he of M] is wearing a black fishnet shirt under a cropped leather jacket, and a matching pair of fishnet leggings underneath a pair of form-hugging leather shorts. The glasses resting on the bridge of [his of M] nose are slightly askew, and [he of M] is carrying a modern-looking pistol.";[Barry]
			if the woman-bimbo of M is 2, say "A long haired brunette wearing a black fishnet shirt underneath a tight black leather corset. Below that, [he of M]'s wearing a pair of torn fishnet leggings and a tiny pair of black hotpants, which provides the bare minimum of modesty for [his of M] crotch. [big he of M] is wearing glasses over a decent amount of makeup, and carrying a modern looking pistol.";
			if the woman-bimbo of M is 3, say "A long haired brunette wearing a tight black latex top which is too small and has too large a cleavage window to cover [his of M] nipples. A pair of fishnet leggings and a super short black latex skirt are too exposing to hide the fact that [his of M] [manly-penis] has been locked into chastity. [big he of M] is wearing glasses over a decent amount of makeup.";
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
			if the woman-bimbo of M is 6, say "A long haired, huge breasted brunette wearing nothing at all[if bukkake fetish is 0] except a pair of white latex fetish boots with chunky heels[end if]. [big his of M] facial expression is one of empty-headed bliss.[if bukkake fetish is 1] [big he of M] is thoroughly covered in [semen] from head to toe, and has yet more [semen] dripping out of [his of M] two lower fuckholes. [end if][big his of M] hips and buttcheeks must have doubled if not tripled in size since you first met [him of M].";[actually naked]
	if M is partially-enslaved, say "[big his of M] breasts are trapped behind some sort of [']portal bra['] which is teleporting [his of M] breasts to a different location, where others can use them for their personal entertainment whenever they like.";
	if the human-toilet-scene of M is 1, say "[big he of M] is wearing oversized nipple rings and has the words 'TOILET SLUT' and 'URINAL [caps boy of M]' permanently written onto [his of M] flesh.";
	if the woman-status of M is 80, say "[big he of M] is bound bent over a bar-stool on wheels, with a blindfold over [his of M] eyes and a ballgag in [his of M] mouth. [big his of M] asshole is pulled wide open by duct tape, and more rainbow covered tape with the words 'ANAL ONLY' printed on it is plastered chaotically over [his of M] [if lady fetish is 2]taint[otherwise]pussy[end if]. You could probably [if the player is possessing a penis or there is worn strapon-panties]fuck [him of M] or [end if]free [him of M] by [bold type]pull[roman type]ing at [his of M] bondage if you like.";
	if the woman-status of M is 97, say "[big he of M] is sat on the throne, with a bulging belly[if the throne-scene of M >= 3] and a river of [semen] flowing from [his of M] mouth. [big he of M] seems barely conscious[end if].".

To update name of (M - woman-player):
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

To compute friendly boredom of (M - woman-player):
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
			if M is in the location of the player, say BecomesBoredFlav of M.

To vanish (M - a monster):
	if M is woman-player and M is introduced:
		if M is partially-enslaved:
			regionally place M;
		otherwise:
			remove M from play;
	if the woman-pregnancy of M is 1, now the woman-pregnancy of M is 2;
	if the woman-status of M is 90 and the vine-scene of M is 5:
		FavourDown M;
		womanSluttify;
		if the woman-pregnancy of M is 0 and pregnancy fetish is 1 and inhuman pregnancy > 1 and lady fetish < 2, now the woman-pregnancy of M is 3. [tentacle pregnant]

To say LeftoverDesc (N - 131):
	say "[if playerRegion is Dungeon][woman-player] lies unconscious on the floor here but you can hardly tell that it's [him of woman-player]. [big he of woman-player][']s on [his of woman-player] back but [his of woman-player] belly is so large that it covers [his of woman-player] body from [his of woman-player] knees to [his of woman-player] neck. Minotaur [semen] is gradually spilling out of both [his of woman-player] mouth and from down below, you can see that [his of woman-player] belly is very slowly deflating.[otherwise][woman-player] lies unconscious on the floor here, with demon [semen] still slowly seeping out of [his of woman-player] gaping vagina.[end if]".

To compute unique unsimulated periodic effect of (M - woman-player):
	if the woman-status of M is 90 and the vine-scene of M >= 5 and the sleep of M > 440:
		let L be the location of M;
		if egg laying fetish is 1:
			let V be a random vine;
			let E be a random off-stage small egg;
			if E is a thing:
				now E is in L;
				now the egg-origin of E is V;
				if the player is in L, say "A [E] pops out of the unconscious [NameDesc of M][']s [HoleDesc of M].";
		otherwise:
			let collecting be nothing;
			if the player is in L:
				say "A big glob of [semen] spurts out of the unconscious [NameDesc of M][']s [HoleDesc of M].";
				unless the player is at least partially immobile or the player is in danger or the player is not able to use their hands:
					let LV be a list of things;
					repeat with V running through carried vessels:
						unless V is tight topped or (the fill-colour of V is creamy and the doses of V >= the max-doses of V), add V to LV;
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
					DoseUp collecting by 2;
					say "Several gulps worth of [semen] are spewed into the [ShortDesc of collecting].";
					if M is presenting as male:
						now collecting is anal-origin;
					otherwise if collecting is boring-origin:
						now collecting is vaginal-origin;
				otherwise:
					say "The [semen] flows to the ground.";
			if collecting is nothing, SemenPuddleUp 2 in L.


Part - Magic Pistol

Figure of magic pistol is the file "Items/Accessories/Equippables/pistol1.png".

magic pistol is metal.

Definition: magic pistol is grey themed: decide yes.

To say ClothingDesc of (W - magic pistol):
	say "A small metal gun. There's no ammo, so how does it work?".

To say ShortDesc of (W - magic pistol):
	say "pistol".

To decide which number is the zap damage improvement of (W - magic pistol):
	if the stomach-semen of the player > 0, decide on 2;
	decide on -99.

To say PistolStomachSemen:
	say "[one of]You are shocked to feel your stomach emptying of [semen]! [if the semen volume of belly > 0](but the [semen] in your intestines is still there). [end if][or][stopping]".

To compute attack of (W - magic pistol) at (M - a monster):
	say "You aim the [ShortDesc of W] at [NameDesc of M] and pull the trigger. ";
	if the stomach-semen of the player > 0, say "[PistolStomachSemen]Ropes of [semen] fly out of the tip, painting [NameDesc of M][if M is human] and covering [his of M] eyes[end if]! ";
	otherwise say "Nothing happens...";
	if the stomach-semen of the player > 0:
		if the blind-status of M is not -1, increase the blind-status of M by the stomach-semen of the player;
		if M is blinded, say "[BigNameDesc of M] is blinded!";
		StomachSemenDown the stomach-semen of the player.

Part 1 - Perception

To compute (M - minotaur) stomping (N - woman-player):
	if M is in the location of the player:
		say "[BigNameDesc of M] grabs [NameDesc of N] by the ankles. [big he of N] shrieks as [he of N] is slowly impaled onto the waiting [LongDickDesc of M]. It takes only a few thrusts for [him of M] to start cumming - you can tell because [his of N] belly expands at an alarming rate. An impossible amount of [semen] fills [him of N] up and with one last wail you see [his of N] sounds cut off by the [semen] flying out of [his of N] mouth. [big he of N] soon loses consciousness and [NameDesc of M] discards [his of N] body. [big he of N] lands on [his of N] back with [his of N] belly covering most of [his of N] body.";
		let L be a random off-stage leftover;
		now L is in the location of M;
		now the leftover-type of L is the leftover-type of N;
		destroy N;
	otherwise:
		vanish N.

To compute (M - demon lord) stomping (N - woman-player):
	if M is in the location of the player:
		if diaper quest is 1:
			say "[BigNameDesc of M] makes an intricate gesture with [his of M] hands. A red portal appears underneath [NameDesc of N]! [big he of N] shrieks as [he of N] is slowly pulled into the demon realm.[line break][speech style of M]'HAHAHA! TELL MY FAMILY I SAID HELLO, AND THAT YOU ARE TO BE THEIR NEW DOLL PLAYTHING! BAHAHAHA!'[line break][speech style of N]'Nooo! I don't want to be a diapered plaything for demons! Somebody save me!'[roman type][line break]Just it's too late. The portal closes behind [him of N], and just like that, [NameDesc of N] is gone.";
		otherwise:
			say "[BigNameDesc of M] grabs [NameDesc of N] by the ankles. [big he of N] shrieks as [he of N] is slowly impaled on the waiting [LongDickDesc of M]. It takes only a few thrusts for [him of M] to start cumming - you can tell because [his of N] belly expands at an alarming rate. An impossible amount of [semen] fills [him of N] up and with one last wail you see [his of N] sounds cut off by the [semen] flying out of [his of N] mouth. [big he of N] soon loses consciousness and [NameDesc of M] discards [his of N] body. [big he of N] lands on [his of N] back with [his of N] belly covering most of [his of N] body.";
			let L be a random off-stage leftover;
			now L is in the location of M;
			now the leftover-type of L is the leftover-type of N;
		destroy N;
	otherwise:
		vanish N.

To compute perception of (M - woman-player):
	if M is angered:
		say "[BigNameDesc of M] notices you![line break][speech style of M]'[one of][if the woman-bimbo of M < 5]You! How could you treat me so poorly?! I'm not going to let you get away with it any more!'[otherwise]Hey sexy. You've taught me some valuable lessons in how to be a good friend. I think it's time for me to return to favour...'[end if][or]You still haven't lost? Let's go again, then!'[or]Hi again, bitch.'[stopping][roman type][line break][big he of M] starts walking towards you.";
	otherwise:
		deinterest M. [Unless there has been a scene trigger, it's up to the player to interact with her]

Part 3 - Compute woman Spawning

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

27: Partial slavery
28: Cum kiss
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
98: Buried in the woods
99: Dead
]

Chapter - Hotel Chair Scene

Report going when the player is in Hotel21 and Hotel21 is not discovered:
	if the number of monsters in Hotel21 is 0 and diaper focus is 0 and woman-player is relaxed redeploy appropriate:
		deploy woman-player with woman-status 5;
		say "You walk into the staff room just in time to see [NameDesc of woman-player] sitting down on one of the dildo chairs in this room, easing the large golden dong into [his of woman-player] asshole. Suddenly [he of woman-player] yelps. ";
		let R be a random number between 1 and 4;
		if R is 2 and watersports fetish is 1:
			say "[chairenemaflav][line break][speech style of woman-player]'[if the woman-bimbo of woman-player < 4][NameBimbo], it's not what you think! The chairs magically heal you, so I - eeek! Noooooo!'[otherwise]Oh hey [NameBimbo], fancy catching you here. I was just experimenting with the - Oooooh!'[end if][roman type][line break][big he of woman-player] is cut off as a fountain of [urine] shoots out of [his of woman-player] butthole in a huge arc and starts coating the floor of the room. The flow is powerful and it takes several seconds before [he of woman-player] has emptied [himself of woman-player].";
			UrinePuddleUp a random number between 9 and 20;
		otherwise if R is 3 and lactation fetish is 1:
			say "[chairenemaflav][line break][speech style of woman-player]'[if the woman-bimbo of woman-player < 4][NameBimbo], it's not what you think! The chairs magically heal you, so I - eeek! Noooooo!'[otherwise]Oh hey [NameBimbo], fancy catching you here. I was just experimenting with the - Oooooh!'[end if][roman type][line break][big he of woman-player] is cut off as a fountain of [milk] shoots out of [his of woman-player] butthole in a huge arc and starts coating the floor of the room. The flow is powerful and it takes several seconds before [he of woman-player] has emptied [himself of woman-player].";
			MilkPuddleUp a random number between 9 and 20;
		otherwise if R is 1:
			say "[chairenemaflav][line break][speech style of woman-player]'[if the woman-bimbo of woman-player < 4][NameBimbo], it's not what you think! The chairs magically heal you, so I - eeek! Noooooo!'[otherwise]Oh hey [NameBimbo], fancy catching you here. I was just experimenting with the - Oooooh!'[end if][roman type][line break][big he of woman-player] is cut off as a fountain of [semen] shoots out of [his of woman-player] butthole in a huge arc and starts coating the floor of the room. The flow is powerful and it takes several seconds before [he of woman-player] has emptied [himself of woman-player].";
			SemenPuddleUp a random number between 9 and 20;
		otherwise:
			say "At the same time [he of woman-player] notices you, a loud mechanical voice echoes out from the chair.[line break][first custom style]'SLUT! SLUT! SLUT! SLUT! SLUT!'[roman type][line break][if the woman-bimbo of woman-player < 4][BigNameDesc of woman-player] turns red as a beetroot as you watch [his of woman-player] scramble to pull [himself of woman-player] off the dildo as fast as [he of woman-player] can.[line break][speech style of woman-player]'N-n-n-no, I'm not a slut! I only sat on that because I heard that it magically heals you. You have to believe me!'[otherwise if the woman-bimbo of woman-player is 4][BigNameDesc of woman-player] squirms uncomfortably and turns slightly red.[line break][speech style of woman-player]'I can't believe you've caught me in such an embarrassing situation...'[otherwise][BigNameDesc of woman-player] giggles bashfully. [speech style of woman-player]'Guilty as charged! Sluts have way more fun, though, don't you think? Well, as long as you agree that huge cocks up your ass are fun, I guess!'[end if][roman type][line break][big he of woman-player] stands up and walks over to you, seemingly intent in joining your exploration attempts for the time being.";
		now woman-player is in the location of the player;
		interest woman-player.

To say chairenemaflav:
	say "At the same time [he of woman-player] notices you, [he of woman-player] [if the woman-bimbo of woman-player < 5]screams[otherwise]yelps[end if] loudly, and you watch as [his of woman-player] belly begins to slowly expand. [if the woman-bimbo of woman-player < 4][big he of woman-player] pulls [himself of woman-player] off the chair as quickly as [he of woman-player] can muster[otherwise]Giggling and rubbing [his of woman-player] swelling tummy, [he of woman-player] slowly but surely pulls [himself of woman-player] back off the dildo before [he of woman-player] bursts[end if], and then falls flat on [his of woman-player] front, clearly not quite anticipating how heavy [his of woman-player] belly would now be. [big he of woman-player] looks up at you with a dazed expression on [his of woman-player] face.[line break]".

Chapter - Vines Scene

Report going when there is an aggressive vine in the location and the woman-bimbo of woman-player < 4 and the vine-scene of woman-player is 0:
	if debugmode is 1, say "Checking if barbara can appear.";
	if the number of monsters in the location of the player is 0 and woman-player is relaxed redeploy appropriate:
		deploy woman-player with woman-status 90;
		now woman-player is in the location of the player;
		interest woman-player;
		repeat with V running through aggressive vines in the location of the player:
			now the TrapNo of V is -7500; [prevents it from attacking the player]
		say "As you arrive here you see that [NameDesc of woman-player] is here, on [his of woman-player] hands and knees, with strong green vines wrapped around [his of woman-player] wrists and ankles, holding them in place.".

An all time based rule (this is the barbara vines rule):
	if the woman-status of woman-player is 90 and the vine-scene of woman-player <= 4:
		if there are vines in the location of woman-player:
			let W be woman-player;
			increase the vine-scene of W by 1;
			if the vine-scene of W is 1:
				if W is in the location of the player, say "[speech style of W]'[NameBimbo], thank goodness you're here! Quick, help me [please], it's going to - unf!!!'[roman type][line break][BigNameDesc of W] is cut off as a thick green vine pushes its way into [his of W] [HoleDesc of W]. It looks like you could [if inline hyperlinks >= 2][link]pull vines[as]pull[end link][otherwise][bold type]pull[roman type][end if] on the vines to try and rescue [him of W], or just sit back, [bold type]wait[roman type] and watch.";
			otherwise if the vine-scene of W is 2:
				if W is in the location of the player, say "[speech style of W]'Come on [NameBimbo], what's the hold-up?! Aaaahn~'[roman type][line break]A second green vine finds room in [NameDesc of W][']s [HoleDesc of W] next to the first, stretching it wide.";
			otherwise if the vine-scene of W is 3:
				if W is in the location of the player, say "[speech style of W]'Okay okay let's make a deal, if you help me I'll give you a fshashahahahahaaaaaah...'[roman type][line break]A third thick vine somehow pushes in beside the first two, the intense sensation caused by their combined girth clearly making it difficult for [NameDesc of W] to speak.";
			otherwise if the vine-scene of W is 4:
				if W is in the location of the player, say "[speech style of W]'[big please] help me [please] help me [please] help me I'll give you all I haaaaa~'[roman type][line break]A fourth vine makes its way into the already fully stuffed cavern that is [NameDesc of W][']s [HoleDesc of W]. It is now gaped wider than should be physically possible, in the real world. All fourth vines piston in and out with unforgiving strength and speed.";
			otherwise if the vine-scene of W is 5:
				if W is in the location of the player:
					say "[speech style of W]'Gzzt... cumming... Gah!'[roman type][line break][BigNameDesc of W] climaxes at the same time as the vines, [his of W] belly exploding outwards as [his of W] [if lady fetish is 2]intestines are[otherwise]womb is[end if] inflated full of tentacle seed.[line break][speech style of W]'You fucking bitch...'[roman type][line break][big he of W] murmurs before passing out.";
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
			now the vine-scene of woman-player is 5;
			repeat with V running through alive vines:
				if the TrapNo of V < -750, now the TrapNo of V is -750;
				now V is unrevealed.

To womanVinePull:
	let W be woman-player;
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
			say "[BigNameDesc of W] gives you a big tight hug.[line break][speech style of W]'Thanks a bunch, hun! I don't think I could have escaped them without you.'[roman type][line break][big he of W] takes hold of your arm, as if [he of W] feels safe when [he of W][']s around you.";
			FavourUp W;
		otherwise if the vine-scene of W is 2:
			say "[BigNameDesc of W] dusts [himself of W] down.[line break][speech style of W]'Phew! for a moment there I thought you were going to let it ravage me. Haha!'[roman type][line break]";
		otherwise if the vine-scene of W is 3:
			let S be a random off-stage snack;
			say "[BigNameDesc of W] harrumphs.[line break][speech style of W]'I can't believe you blackmailed me like that... Fine, take this.'[roman type][line break][big he of W] gives you one [printed name of S].";
			now S is carried by the player;
			FavourDown W;
		otherwise if the vine-scene of W is 4:
			let S be a random off-stage snack;
			let J be a random off-stage plentiful accessory;
			now J is pure diamond;
			set shortcut of J;
			say "[BigNameDesc of W] growls.[line break][speech style of W]'I can't believe you took advantage of me like that. I thought I was going to go crazy... Fine, take these, you bitch.'[roman type][line break][big he of W] gives you one [printed name of S] and a [printed name of J].";
			FavourDown W;
			now S is carried by the player;
			now J is in the location of the player;
			compute autotaking J;
			increase the delayed sluttification of W by 1;
		now the vine-scene of W is 6.

Chapter - Vine Hole Scene

Report going when the vine-hole-scene of woman-player is 0 and the woman-bimbo of woman-player is 2 and the player is the donator and the location is Woods16:
	if debugmode is 1, say "Checking if barbara can appear.";
	if the number of monsters in the location of the player is 0 and another-turn is 0 and vine boss is in WoodsBoss01 and woman-player is redeploy appropriate:
		deploy woman-player with woman-status 29;
		now the vine-hole-scene of woman-player is 1;
		now woman-player is in the location of the player;
		interest woman-player;
		say "As you arrive here you see that [NameDesc of woman-player] is here, completely naked and trying to climb out of the pit, with a strong green vine wrapped around one of [his of woman-player] wrists, trying to pull [him of woman-player] back down into the underground cavern. [big his of woman-player] pistol has fallen out of [his of woman-player] hand, lying just inches away out of [his of woman-player] reach. [if the player is upright][bold type]As you are distracted by the gun, you stumble on a rock and fall to your knees.[roman type][line break][line break][BigNameDesc of woman-player] spots you and [his of woman-player] eyes widen with a look of urgency.[line break][speech style of woman-player]'[NameBimbo]! Thank the stars! Quick, my gun!'[roman type][line break]What do you do?";
		now the stance of the player is 1; [Important to avoid the clumsy fall-in-the-hole cutscene happening in the same turn]
		cutshow figure of barbara cutscene 9 for woman-player;
		now temporaryYesNoBackground is Figure of Barbara Cutscene 9;
		reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
		set numerical response 1 to "hand [his of woman-player] pistol to [him of woman-player]";
		if magic pistol is actually summonable, set numerical response 2 to "try to use [his of woman-player] pistol yourself to save [him of woman-player]";
		set numerical response 3 to "take [his of woman-player] gun for yourself";
		set numerical response 0 to "ignore [him of woman-player] entirely";
		compute multiple choice question;
		let CNR be player-numerical-response;
		if CNR is 1:
			say "[BigNameDesc of woman-player] snatches the pistol out of your hand as soon as it is in [his of woman-player] reach and points it down below [his of woman-player] feet, outside of your vision. You hear a weird sort of wet 'phut phut' sound as [he of woman-player] squeezes the trigger and you swear you can see [his of woman-player] belly slightly deflate as [he of woman-player] does. A loud roar comes from the pit, and you see the vine around [NameDesc of woman-player][']s wrist loosen slightly - enough for [him of woman-player] to quickly wriggle free and scramble further out of the pit! You take [his of woman-player] hand and help [him of woman-player] to [his of woman-player] feet, out of harm's way.[line break][speech style of woman-player]'Thanks, you really saved my bacon there. I owe you one.'[roman type][line break][BigNameDesc of woman-player] hugs you closely, [his of woman-player] warm, soft, naked body pressing against you for a few precious moments.[line break][speech style of woman-player]'If I were you, I wouldn't try to fight the vine monster down there. It's just too strong. And as I just learned, it seems immune to being blinded...'[roman type][line break]";
			FavourUp woman-player;
		otherwise if CNR is 2:
			say "[BigNameDesc of woman-player] looks concerned as you pick up the pistol and point it towards the vine gripping [his of woman-player] hand.[line break][speech style of woman-player]'No, wait-'[roman type][line break][big he of woman-player] tries to stop you but you've already pulled the trigger. ";
			if the stomach-semen of the player > 0:
				say "[PistolStomachSemen]Huge numbers of ropes of [semen] fly out of the tip, painting not only the vine but [NameDesc of woman-player] in massive amounts of the sticky stuff. [big he of woman-player] coughs and splutters and loses [his of woman-player] grip. ";
			otherwise:
				say "The trigger clicks but nothing comes out.[line break][speech style of woman-player]'It's not a normal gun, you idiot, you need to have swallowed som-'[roman type][line break][big his of woman-player] speech turns into a yelp as [he of woman-player] loses [his of woman-player] grip with [his of woman-player] free hand. ";
			say "You watch awkwardly and helplessly as [he of woman-player] is pulled back down into the hole!";
			summon magic pistol;
			FavourDown woman-player;
			now woman-player is in WoodsBoss01;
			now the vine-scene of woman-player is 5;
			now the sleep of woman-player is 9999;
			increase the woman-bimbo of woman-player by 1;
			reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
			set numerical response 1 to "throw the pistol down after [him of woman-player]. Maybe it's not too late for it to be of some use.";
			set numerical response 2 to "go down the pit to try and rescue [him of woman-player]";
			set numerical response 3 to "just leave...";
			compute multiple choice question;
			let CNR be player-numerical-response;
			if CNR is 1:
				say "You feel too guilty to hold onto the pistol, and throw it down into the pit. Hopefully that way [he of woman-player] will know that you didn't mean to fail [him of woman-player]...";
				only destroy magic pistol;
			otherwise if CNR is 2:
				now the stance of the player is 0;
				try going down;
				say "When you get to the bottom you discover that it's already too late.";
				try examining woman-player;
				say "Also, there's another problem. The vine boss is here. And it's clearly already very angry.";
				now the health of vine boss is (the maxhealth of vine boss * 2) / 3;
			otherwise:
				say "You slowly back away from the hole, racked with guilt, but too scared to stay close!";
				if pregnancy fetish is 1 and inhuman pregnancy > 1 and lady fetish < 2, now the woman-pregnancy of woman-player is 3; [tentacle pregnant]
		otherwise:
			say "[BigNameDesc of woman-player] looks [if CNR is 3]concerned as you pick up the pistol, and [end if]horrified when [he of woman-player] sees you turning to walk away.[line break][speech style of woman-player]'WHAT?! No, [NameBimbo], don't leave me like this! You bastard! I'll never forgive you!'[roman type][line break][if CNR is not 3]With an impressive display of agility, [NameDesc of woman-player] manages to grab the pistol and point it at you. A huge jet of [semen] blasts from the nozzle, coating you in the sticky stuff. [end if]At this moment, [he of woman-player] loses [his of woman-player] grip with [his of woman-player] free hand, and is pulled back down into the hole.";
			if CNR is 3:
				now magic pistol is carried by the player;
				now woman-player is angered;
			otherwise:
				if bukkake fetish is 1, CumFaceUp 60;
				otherwise PuddleUp semen by 60;
				FavourDown woman-player by 10;
			now woman-player is in WoodsBoss01;
			now the vine-scene of woman-player is 5;
			now the sleep of woman-player is 9999;
			increase the delayed sluttification of woman-player by 1;
			if pregnancy fetish is 1 and inhuman pregnancy > 1 and lady fetish < 2 and the woman-pregnancy of woman-player is 0:
				now the woman-pregnancy of woman-player is 3; [tentacle pregnant]
				increase the delayed sluttification of woman-player by 1;
			otherwise:
				increase the woman-bimbo of woman-player by 1.

Chapter - Mechanic Sex Scene

Report going when there is an uninterested mechanic in the location [of the player ]and the mechanic-scene of woman-player is 0:
	if debugmode is 1, say "Checking if barbara can appear.";
	if the number of monsters in the location of the player is 1 and woman-player is redeploy appropriate:
		deploy woman-player with woman-status 91;
		now woman-player is in the location of the player;
		interest woman-player;
		interest mechanic;
		anger mechanic;
		say "As you arrive here you see that [NameDesc of woman-player] is here on [his of woman-player] knees, with [NameDesc of mechanic][']s [DickDesc of mechanic] firmly lodged in [his of woman-player] throat. [big he of mechanic] is holding [him of woman-player] roughly by the hair and forcing [his of woman-player] head forward and back, using [his of woman-player] mouth as [his of mechanic] personal onahole.";
		follow the mechanic facefucks barbara rule.

This is the mechanic facefucks barbara rule:
	if the woman-status of woman-player is 91 and the mechanic-scene of woman-player <= 3 and woman-player is in the location of the player and mechanic is unfriendly:
		let W be woman-player;
		let M be mechanic;
		increase the mechanic-scene of W by 1;
		if the mechanic-scene of W is 1:
			say "[BigNameDesc of M] gives you a brief look.[line break][speech style of M]'Don't interrupt me and I'll make it worth your while.'[roman type][line break][big he of M] holds a golden ring in the air, and then turns [his of M] attention back to the face [he of M] has turned into a temporary cocksleeve. It looks like you could attack [NameDesc of M] to try and rescue [him of W], or just sit back, [bold type]wait[roman type] and watch.";
			now M is guarding;
			now woman-player is guarding;
		otherwise if the mechanic-scene of W is 2:
			say "[BigNameDesc of M] chuckles.[line break][speech style of M]'Yes that's right, you dumb slut. Nobody's coming to save you. And all it took was a tiny bribe for your little [']friend['] over there to [pussy] out.'[roman type][line break][big he of M] picks up the speed, causing [NameDesc of W] to make gagging sounds as [he of M] thrusts.";
		otherwise if the mechanic-scene of W is 3:
			say "[BigNameDesc of M] grunts.[line break][speech style of M]'Fuck, this bitch's throat is tight!'[roman type][line break]";
		otherwise if the mechanic-scene of W is 4:
			let J be a random off-stage plentiful ring;
			now J is solid gold;
			set shortcut of J;
			now J is in the location of the player;
			say "[BigNameDesc of M] moans as [he of M] cums, [his of M] ropes of [semen] making [NameDesc of W] choke as it rebounds and spurts out the sides of [his of W] mouth. [big he of M] removes [his of M] [DickDesc of M] and begins to clean it off by wiping it all over [NameDesc of W][']s forehead. But [he of W] is looking directly at you, with dismay in [his of W] eyes.[line break][speech style of W]'Really?'[roman type][line break]That's all [he of W] manages before [he of W] passes out. [BigNameDesc of M] drops the [J] in front of you.[line break][speech style of M]'Money well spent.'[roman type][line break]";
			now the latest-appearance of M is the appearance of the player; [to stop him suddenly noticing the player and deciding to bang]
			satisfy mechanic;
			DifficultyUp mechanic by 1;
			now mechanic is unleashed;
			WomanSluttify;
			FavourDown W;
			now the sleep of W is 300;
			compute autotaking J;
		rule succeeds.
The mechanic facefucks barbara rule is listed first in the mechanic priority attack rules.

Chapter - Anal Dildo Contraption Scene

Understand "fucking", "machine", "box", "pink dildo", "rope", "ropes", "pulley", "pulleys", "spring", "springs", "glue", "glove", "gloves" as woman-player when the woman-status of woman-player is 93.

Report going when the player is in Hotel37 and the dominatrix-contraption-scene of woman-player is 0:
	if debugmode is 1, say "Checking if barbara can appear.";
	if dominatrix is alive and dominatrix is not in the location of the player and woman-player is relaxed redeploy appropriate:
		deploy woman-player with woman-status 93;
		now woman-player is in the location of the player;
		interest woman-player;
		say "As you arrive here you see that [NameDesc of woman-player] is here on [his of woman-player] back, tied up in a very unique contraption. [big he of woman-player] is lying with [his of woman-player] legs above [his of woman-player] head and is holding [his of woman-player] asshole invitingly open. That looks uncomfortable! Upon closer inspection, it's clear that [his of woman-player] hands are stuck in skintight gloves that are somehow glued to [his of woman-player] buttcheeks, meaning that [his of woman-player] hands are stuck there gaping [his of woman-player] own butthole regardless of whether [he of woman-player] wants to or not!";
		say "Powerful springs connect [NameDesc of woman-player][']s wrists to [his of woman-player] thighs, putting pressure on them to come back down from their raised position. But [his of woman-player] ankles are held up there by rope, which is connected above [his of woman-player] head by a series of pulleys that lead... to the activation lever of a metal box, which is holding a large pink dildo on a pole, poised right outside the entrance of [his of woman-player] open and waiting butthole.";
		say "The predicament is clear: if [NameDesc of woman-player] relaxes [his of woman-player] legs for even a moment, and allows [his of woman-player] thighs to be pulled into a more comfortable position by the springs, then the fucking machine will activate, and [his of woman-player] poor pucker will be plowed by that thick Pink Pounder until [he of woman-player] can muster the energy to raise [his of woman-player] legs again.".

A time based rule (this is the anal contraption predicament rule):
	if the woman-status of woman-player is 93 and the dominatrix-contraption-scene of woman-player <= 5 and woman-player is in the location of the player:
		unless dominatrix is combative or gape-gloves is worn: [second part shouldn't be necessary but apparently sometimes the game gets the first part wrong]
			let W be woman-player;
			increase the dominatrix-contraption-scene of W by 1;
			if the dominatrix-contraption-scene of W is 1:
				say "[BigNameDesc of W] sees you enter, and [his of W] expression changes from one of panic to one of relief.[line break][speech style of W]'[NameBimbo], thank the stars! That [if the woman-bimbo of W <= 2]insane[otherwise]cheeky[end if] dominatrix didn't like the tone of my voice and decided I needed to [']Learn the merits of inner balance.['] But I don't [if the woman-bimbo of W <= 3]think I can take it[otherwise]wanna[end if]! [big please], find a way to disarm this thing before it... well, you know...'[roman type][line break][big he of W] wiggles [his of W] hands, making [his of W] asshole open and close slightly, to indicate what [he of W] means.";
				say "You could [bold type]search[roman type] the box for a way to disarm it, or you could [bold type]pull[roman type] on [NameDesc of W][']s legs to force [him of W] to fail, [unless the player is feeling submissive or 1 is 1]or you could [bold type]fuck[roman type] [him of W] while [he of W] is in such a compromising position, [end if]or you could [bold type]wait[roman type] (or just leave), to not mess with the dominatrix's plans.";
			otherwise if the dominatrix-contraption-scene of W is 2:
				say "[BigNameDesc of W] groans in discomfort.[line break][speech style of W]'I can't hold my legs any longer... [big please] hurry!'[roman type][line break][big he of W][']s right - [his of W] legs are now visibly shaking, and the force of the springs has made [him of W] pull open [his of W] asshole even wider than before. It really does look like [he of W][']s desperate to be reamed by that big fat fake [manly-penis]!";
			otherwise if the dominatrix-contraption-scene of W is 3:
				say "[BigNameDesc of W] grunts with exhaustion and [his of W] legs give out. The ropes to pull the switch through the pulley and the mechanism clicks into action. [AnalContraptionStart]";
			otherwise if the dominatrix-contraption-scene of W is 4:
				say "[speech style of W]'It's so big! No more, no more! Or my butthole will never be tight again!'[roman type][line break]Surprisingly enough, the metal box doesn't listen. [BigNameDesc of W][']s backdoor is once again brutally broken in by its new best buddy. All the way in, all the way out. All the way in, all the way out. Wait, was that a bit faster than the first time? Yes. It's getting faster.";
				increase the delayed sluttification of W by 1;
			otherwise if the dominatrix-contraption-scene of W is 5:
				say "[speech style of W]'Gaaaah...'[roman type][line break][BigNameDesc of W] no longer seems capable of coherent speech. [big he of W] spends the last of [his of W] energy to raise [his of W] ankles back up. The machine clicks off. But [NameDesc of W] can hold it for less than two seconds before [he of W] exhausts, [his of W] ankles fall back down and the box clicks into life once again. All the way in, all the way out. All the way in, all the way out. This time it manages two full thrusts within four seconds. Each one must be causing severe amounts of sensory overload inside [his of W] delicate derriere.";
			otherwise if the dominatrix-contraption-scene of W is 6:
				say "[speech style of W]'Fbbbbrt... Fgaaahh... Cumming! CUMMING!'[roman type][line break][BigNameDesc of W] manages a real word, announcing [his of W] ultimate defeat under the unrelenting use of the fucking machine. [if dominatrix is in the location of the player][BigNameDesc of dominatrix] snaps [his of dominatrix] fingers and the[otherwise]It gives two more quick thrusts for good measure before something inside its[end if] mechanism clicks itself off. However it's not truly over, because the machine has powered down while that pink monstercock is still fully embedded in [NameDesc of W]['] butthole, right up to the base. You look at [NameDesc of W][']s face to see how [he of W][']s handling the sensation... Oh. [big he of W] has already passed out.";
				now the sleep of W is 200;
				increase the delayed sluttification of W by 1;
				if dominatrix is in the location of the player:
					say "[BigNameDesc of dominatrix] laughs playfully and claps [his of dominatrix] hands as if this was just a fun little joke you were all in on. Applying some ointment to [NameDesc of W][']s glued gloves, [he of dominatrix] is able to neutralise the adhesive and remove [NameDesc of W][']s hands from [his of W] buttcheeks. But [he of dominatrix] doesn't make any move to remove the big pink dildo from its new home.[line break][speech style of dominatrix]'[big he of W][']ll be fine sleeping like that, don't you think? It'll be a nice surprise when [he of W] wakes up.'[roman type][line break]";
					satisfy dominatrix.

To say AnalContraptionStart:
	let W be woman-player;
	say "[big his of W] ankles probably only move about four inches downwards in total before the rope is pulled taut with the switch now in the full 'ON' position. The overly thick pink dong advances steadily, the head easily slipping inside thanks to [NameDesc of W][']s helpful self-gape. However the dildo is slightly conic, getting thicker towards the base, so as it continues to enter [his of W] sensitive hole, it begins to force [his of W] sphincter to stretch ever wider and wider.[line break][speech style of W]'Jeez... Fuck... FUCK!'[roman type][line break]The butt exploring beast doesn't stop until its full length has pushed all the way inside, right up to the fake balls. Only then does it begin to withdraw, just as painfully slowly, until eventually it exits with an audible slurping sound, returning to its original position. [BigNameDesc of W][']s fuckhole remains horribly gaped thanks to the mechanical penetration. The entire motion probably took between five and six seconds. And it's already on the move forward again, ready for round two!".

Check pulling woman-player when the woman-status of woman-player is 93 and the dominatrix-contraption-scene of woman-player < 6:
	if the player is at least partially immobile or the player is in danger, say "You're a bit busy right now!" instead;
	if the dominatrix-contraption-scene of woman-player > 2, say "It's a bit late for that, [he of woman-player][']s already lost control and started the fucking machine." instead;
	allocate 6 seconds;
	say "You approach [NameDesc of woman-player][']s legs with an evil grin on your face.[line break][speech style of woman-player]'No way... you can't be serious?![roman type][line break][BigNameDesc of woman-player] clearly can't believe what [he of woman-player] is seeing! You vindictively pull down on [his of woman-player][']s legs. [big he of woman-player] can't do anything but wail with despair as [his of woman-player] ankles are lowered a few inches, which pulls the rope and clicks the machine into life. [AnalContraptionStart]You feel more dominant!";
	DelicateDown 3 - the dominatrix-contraption-scene of woman-player;
	now the dominatrix-contraption-scene of woman-player is 3;
	compute DominatrixInterruption.

Check searching woman-player when the woman-status of woman-player is 93 and the dominatrix-contraption-scene of woman-player < 6:
	if the player is at least partially immobile or the player is in danger, say "You're a bit busy right now!" instead;
	if the traitor-hypno of hypno-lesson > 0 and the dominatrix-contraption-scene of woman-player <= 2:
		decrease the traitor-hypno of hypno-lesson by 1;
		say "Something inside you urges you to [second custom style]help your friend[roman type] instead.";
		try pulling woman-player instead;
	if the player is upright, try kneeling;
	if the player is upright: [Just in case]
		now the stance of the player is 1;
		say "You are now on your knees.";
	allocate 6 seconds;
	increase the dominatrix-contraption-search of woman-player by 1;
	if a random number between 1 and the intelligence of the player > 10, increase the dominatrix-contraption-search of woman-player by 1;
	if the dominatrix-contraption-scene of woman-player <= 1:
		say "You check to see if the box can be moved so the dildo is no longer pointing at [NameDesc of woman-player][']s spread asshole. Unfortunately, it's completely stuck in place.";
	otherwise if the dominatrix-contraption-scene of woman-player is 2:
		say "You look for a second failsafe switch, or some way to disconnect the rope where it connects to the box's lever. But unfortunately it looks like it's completely futile to try to alter anything at this end.";
	otherwise:
		say "[one of]You decide the only way to get [him of woman-player] out is to untie the ropes around [his of woman-player] ankles. [or][stopping]";
		if the dominatrix-contraption-search of woman-player < 4:
			say "You fumble with one of the knots but it's really tight! You haven't made much progress yet.";
		otherwise if the dominatrix-contraption-search of woman-player is 4:
			say "You manage to loosen a knot and get one of [NameDesc of woman-player][']s ankles free! One more and [he of woman-player][']ll be able to escape!";
		otherwise:
			say "You've done it! You've freed both of [NameDesc of woman-player][']s ankles! When the pink dildo next exits [his of woman-player] asshole, [he of woman-player] rolls to the side and out of the thrusting path.[line break][speech style of woman-player]'I'm free! I'm free! Thank you so much [NameBimbo], I owe you my sanity! I wish I had something to give you, but...'[roman type][line break][NameDesc of woman-player] shrugs as best as [he of woman-player] can what with [his of woman-player] hands still glued to [his of woman-player] buttcheeks, to emphasise the point that [he of woman-player] doesn't have anything of value right now.[line break][speech style of woman-player]'I've got to go sort out this glue, I think. Wish me luck.'[roman type][line break][NameDesc of woman-player] waddles from the room, looking very ridiculous with [his of woman-player] hands stuck to [his of woman-player] backside, still keeping [his of woman-player] asshole slightly open and in open view.";
			FavourUp woman-player by 3;
			say "Thanks to solving the situation, you now feel much [smarter]!";
			IntUp 3;
			if the woman-bimbo of woman-player is 2:
				say "[bold type]You spot [NameDesc of woman-player][']s pistol left in the corner of the room!";
				now magic pistol is in the location of the player;
				compute autotaking magic pistol;
			now the dominatrix-contraption-scene of woman-player is 7;
			vanish woman-player;
	if woman-player is in the location of the player, compute DominatrixInterruption;
	do nothing instead.

To compute DominatrixInterruption:
	if clumsy april fools is 1 or dominatrix is in the location or dominatrix is in the room east from the location or (a random number between 1 and 10) is 1:
		let M be dominatrix;
		now M is in the location of the player;
		interest M;
		anger M;
		say "[bold type][if clumsy april fools is 1]You accidentally knock two pulleys into each other, which make a loud metal CLANG! [roman type][aprilFoolsClumsyFlav][bold type]Moments later[otherwise]All of a sudden,[end if] [NameDesc of M][bold type] [if dominatrix is in the location of the player]bursts into a fit of rage[otherwise]arrives from the east[end if]![line break][speech style of M]'WHAT HAVE WE HERE? Did I give you permission to interfere in my affairs?! I saw what you were trying to do. Oh [honey of M], you're going to regret that.'[roman type][line break][big he of M] crosses [his of M] arms at the wrists, making an intricate sign with [his of M] fingers.[line break][speech style of M]'Mutanretla Menimoh.'[roman type][line break]Your head feels funny... And then your body feels funny. You try to move your hands but they are glued to your buttcheeks, holding your [asshole] open wide. Your ankles are dangling high in the air above your face, attached to ropes and pulleys. Your legs feel completely exhausted. [NameDesc of woman-player] is looking down at you with [horror (the woman-bimbo of woman-player * 4)] from a kneeling position next to you. You've somehow swapped positions with [him of woman-player]!";
		repeat with C running through worn total protection clothing:
			now C is in the location of the player;
		repeat with C running through worn hand ready equippables:
			now C is in the location of the player;
		repeat with C running through worn wrist locking clothing:
			now C is in the location of the player;
		repeat with C running through things penetrating asshole:
			dislodge C;
			now C is in the location of the player;
		now the fatigue of the player is the buckle threshold of the player;
		now the stance of the player is 1;
		now M is penetrating asshole;
		summon gape-gloves;
		gluify gape-gloves;
		now gape-gloves is wrist-bound-behind.

Check resisting when dominatrix is penetrating asshole and woman-player is in the location and the woman-status of woman-player is 93 and woman-player is awake:
	say "You try to raise your ankles but your body is much too fatigued to be able to resist in any meaningful way!";
	now forced submit is 1;
	try submitting instead.

To compute contraption sex of (M - a monster):
	if the dominatrix-contraption-scene of woman-player < 7:
		increase the dominatrix-contraption-scene of woman-player by 1;
		let aRuin be the dominatrix-contraption-scene of woman-player / 2;
		say "The big pink dildo [one of]powerfully punches[or]unrelentingly assaults[or]continues to destroy[then at random] your [asshole], all the way in, all the way out, [one of][if aRuin is 1]brutally slowly[otherwise][aRuin] times[end if][or]another [if aRuin is 1]time[otherwise][aRuin] times[end if][stopping].";
		ruin asshole times aRuin;
		say "It's [one of][or]still [stopping]picking up speed!";
		say "[one of][speech style of M]'You, get to work.'[roman type][line break][BigNameDesc of M] has turned to [NameDesc of woman-player] and is pointing at [his of M] [LongDickDesc of M]. [NameDesc of woman-player] obediently takes it into [his of woman-player] mouth and begins to fellate it[or][BigNameDesc of M] chuckles. [NameDesc of woman-player] continues to worship [his of M] [DickDesc of M][stopping].";
	otherwise:
		compute contraption climax of M.

To compute contraption climax of (M - a monster):
	say "[speech style of M]'I guess that's enough.'[roman type][line break][BigNameDesc of M] snaps [his of M] fingers and the dildo stops its merciless machinations. The ropes loosen themselves from your ankles and you are able to roll away to the side. However, your hands are still glued inside those gloves, which are in turn glued to your [asshole]!";
	satisfy M;
	say "[BigNameDesc of woman-player] slinks away, muttering a quiet [speech style of woman-player]'Sorry.'[roman type][line break]";
	vanish woman-player.

Chapter - Human Toilet Scene

To check woman toilet:
	if the player is in Hotel38 and watersports fetish is 1 and a2m fetish >= 2:
		if the human-toilet-scene of woman-player is 0 and the woman-bimbo of woman-player >= (a random number between 2 and 5) and woman-player is relaxed redeploy appropriate:
			say "A groaning, gurgling noise from below you makes you notice that the [man of woman-player] below you looks different from usual.";
			cutshow figure of barbara cutscene 4 for toilet;
			say "Looking [if the player is not possessing a penis]between your legs [end if]into the toilet bowl you realise you recognise the ring-gagged face at the bottom - it's [NameDesc of woman-player]! [big he of woman-player] looks up at you with imploring puppy-dog eyes.[line break][speech style of woman-player]'Wease eh ee ow! Weeeease! Ha hay-hron hah heh hee!'[roman type][line break]You think you understand what [he of woman-player][']s saying? There's a key that can be used to release [him of woman-player], but it's currently in the possession of a hotel patron. Perhaps if you spend enough time in the hotel, you'll be able to encounter [him of a random patron] and agree to pay some kind of... [']ransom[']. Until then there's nothing you can do about the fact that [NameDesc of woman-player] is the new hotel toilet. It's up to you how many more times you use [his of woman-player] mouth as your waste disposal unit. You doubt it'll be very good for [his of woman-player] sanity, but it might help you feel more dominant.";
			now the human-toilet-scene of woman-player is 2;
			now woman-player is permanently banished;
			womanSluttify;
		otherwise if the human-toilet-scene of woman-player is not 1:
			cutshow figure of barbara cutscene 4 for toilet;
			if the human-toilet-scene of woman-player > 1:
				SportsGet;
				DelicateDown 1;
				FavourDown woman-player by 1;
				womanSluttify.

To compute woman toilet release:
	let K be skeleton key;
	if human-toilet-key is held and (K is nothing or forbidden-key is not human-toilet-key), now K is human-toilet-key;
	if K is held:
		if forbidden-key is K:
			say "Something deep in your brain won't let you use [NameDesc of K] to save [NameDesc of woman-player].";
		otherwise if the traitor-hypno of hypno-lesson > 0 and forbidden-key is nothing:
			decrease the traitor-hypno of hypno-lesson by 1;
			say "Something inside you urges you to [speech style of woman-player]help your friend[roman type]. You find yourself unable to bring yourself to use [NameDesc of K] to save [NameDesc of woman-player]. Perhaps if you are able to obtain a different key, however, you'll be able to circumvent your hypnosis and help [him of woman-player] in the [']proper['] way.";
			if the player is desperate to pee and the player is able to use a toilet:
				say "But for now... your body has different plans for what would be the best way to help [NameDesc of woman-player] become a better person...";
				allocate 6 seconds;
				compute toilet use;
		otherwise:
			allocate 6 seconds;
			now the human-toilet-scene of woman-player is 1;
			now woman-player is summon-available;
			say "You push the key into the slot and twist. Moments later you have parted the front of the toilet bowl and [NameDesc of woman-player] is clambering out of [his of woman-player] prison. [big he of woman-player] rolls over onto [his of woman-player] side and promptly pukes up a gallon of [urine].[line break][speech style of woman-player]'Thank you so much for saving me...'[roman type][line break]That's all [he of woman-player] can manage before passing out.";
			deploy woman-player with woman-status 95;
			now woman-player is in the location of the player;
			UrinePuddleUp 30;
			now the sleep of woman-player is 300;
			FavourUp woman-player;
			say "[BigNameDesc of K] crumbles into dust.";
			destroy K;
	otherwise:
		say "You don't have a key that could do that.".

Chapter - Shopkeeper Discount Scene

This is the woman spawning to get shopkeeper discount rule:
	if the shopkeeper-scene of woman-player is 0 and shopkeeper is in Dungeon41 and shopkeeper is nearby and the woman-bimbo of woman-player <= 2 and the woman-pregnancy of woman-player < 2:
		deploy woman-player with woman-status 92;
		now woman-player is in the location of shopkeeper;
		rule succeeds.
The woman spawning to get shopkeeper discount rule is listed last in the womanspawning rules.

Report going when shopkeeper is in the location and woman-player is in the location and the woman-bimbo of woman-player <= 2 and the shopkeeper-scene of woman-player is 0 and woman-player is not interested and shopkeeper is not interested:
	say "In this room you see that [NameDesc of shopkeeper] is not alone: [NameDesc of woman-player] is on [his of woman-player] knees, with four fifths of [his of shopkeeper] massive length stuffed into [his of woman-player] mouth. [big he of woman-player] is desperately trying to force that last bit in, causing the tip to penetrate [his of woman-player] throat. Lewd gagging noises fill the room as the distension in [his of woman-player] throat becomes more and more visible.[line break][speech style of shopkeeper]'Damn [boy of woman-player], you can really swallow a sword, can't you?! Unng, I'm reaching my limit...'[roman type][line break][BigNameDesc of shopkeeper] grunts and without a second thought grabs the back of [NameDesc of woman-player][']s head, forcing it forward and pushing that last inch of [his of shopkeeper] manhood in past [his of woman-player] jaw. Noises of weak resistance emanate from [NameDesc of woman-player][']s nose but it's too little too late - [NameDesc of shopkeeper] is cumming hard. [big he of shopkeeper] grips [his of woman-player] head tight with both arms keeping [his of shopkeeper] whole [manly-penis] firmly wedged inside for the duration of [his of shopkeeper] climax, each string of [semen] being accompanied by an involuntary gulp from [his of shopkeeper][']s new cumdump's gullet. [big he of shopkeeper] finally releases [him of woman-player] and [he of woman-player] falls back choking, spewing up lumps of thick [semen].[line break][speech style of woman-player]'Did I win?'[roman type][line break]Is all [he of woman-player] manages to say before [he of woman-player] collapses backward onto the ground.[line break][speech style of shopkeeper]'Yeah, you won honey.'[roman type][line break][BigNameDesc of shopkeeper] replies but [NameDesc of woman-player] has already passed out cold.";
	cutshow figure of barbara cutscene 18 for woman-player;
	now the sleep of woman-player is 200;
	[increase the delayed sluttification of woman-player by 1;]
	now the woman-status of woman-player is 92;
	DifficultyUp shopkeeper by 1;
	now the shopkeeper-scene of woman-player is 1.

Chapter - Patron Scene

To compute patron scene of (W - woman-player):
	let C be 8;
	repeat with M running through off-stage patrons:
		if C > 0 and M is not real-life patron and M is generic-appropriate:
			set up M;
			now M is in the location of the player;
			decrease C by 1;
			interest M;
			increase the times-met of M by 1;
			make M expectant;
	now neighbour finder is the location of the player;
	now the woman-status of W is 96;
	now the patron-scene-done of W is 1;
	increase patronbed uses by 1;
	interest W;
	say "[first custom style]'Hey everyone, get in here!'[roman type][line break]A hidden door opens from the opposite wall, and you watch [the number of patrons in the location of the player] patrons stride in, each with a bottle of beer in one hand and a party hat on their head. [if the number of N-viable directions is 1]A modesty barrier comes[otherwise]Modesty barriers come[end if] down, preventing either of you from leaving[if W is asleep]. [BigNameDesc of W] wakes up with a start[end if].[line break][first custom style]'We've paid a lot of money to be allowed to have two of you at once, so you'd better follow everything we say.'[roman type][line break]A look of [if the bimbo of the player < 5]horror[otherwise if the bimbo of the player < 10]uncertainty[otherwise]understanding[end if] passes between you and [NameDesc of W]. Whether you fight or fuck them, this is going to be a great challenge. One of the older patrons speaks first.[line break][first custom style]'Okay, let's get this party started[if the player is upright]. On your knees, bitches[end if].'[roman type][line break]";
	now the sleep of W is 0;
	mapcutshow Figure of Barbara Cutscene 19 for W;
	now a random modesty shutter is in the location of the player.

Report slapping patron when woman-player is in the location and the woman-status of woman-player is 96:
	if the patron-scene-fighting of woman-player < 2, now the patron-scene-fighting of woman-player is 2.
Report kneeing patron when woman-player is in the location and the woman-status of woman-player is 96:
	if the patron-scene-fighting of woman-player < 2, now the patron-scene-fighting of woman-player is 2.
Report kicking patron when woman-player is in the location and the woman-status of woman-player is 96:
	if the patron-scene-fighting of woman-player < 2, now the patron-scene-fighting of woman-player is 2.

Check standing when there is an unconcerned patron in the location:
	allocate 1 seconds;
	say "You are grabbed violently by the hair and shoved back to the ground.[line break][first custom style]'Nobody said you could stand up, slut!'[roman type][line break]" instead.

Check taking fishbowl when there is a patron in the location:
	allocate 1 seconds;
	say "Your hand is slapped away.[line break][first custom style]'Nobody told you to touch that, slut!'[roman type][line break]" instead.

Check drinking fishbowl when there is a patron in the location:
	try taking the noun instead.

To compute patron interaction of (W - woman-player):
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
			if the player is not possessing a vagina, decrease RN by 1;
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
				say "[one of][BigNameDesc of W] takes [NameDesc of M][']s [if M is balls-haver]ballsack[otherwise]shaft[end if] into [his of W] mouth as [he of W] pleasures [him of M] with [his of W] hand[or][BigNameDesc of W] jacks [NameDesc of M] off with both hands[or][BigNameDesc of W] strokes [NameDesc of M][']s [manly-penis] with one hand, while gently sucking the tip[in random order]. When [he of M] begins to grunt, [NameDesc of W] points [his of M] [manly-penis] towards the bowl and begins pumping twice as hard until [he of M] spurts [his of M] entire load into the bowl.";
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

To compute patron scene climax of (W - woman-player):
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
				totalHumiliate;
			otherwise:
				say "[BigNameDesc of W] pushes [his of W] lips tight against yours and then opens wide, sending both [his of W] tongue and the nasty mixture over into your mouth. ";
				ultraHumiliate;
			if the fill-colour of fishbowl is murky:
				say "It tastes just as disgusting as you'd expect for a mixture of almost every bodily fluid you can think of. ";
				TasteGrossOut 5;
			otherwise if (the fill-colour of the fishbowl is creamy and the semen taste addiction of the player < 12) or (the fill-colour of the fishbowl is golden and the urine taste addiction of the player < 12):
				say "It tastes just as disgusting as you'd expect. ";
			otherwise:
				say "You find the taste surprisingly palatable, considering how many different locations inside people's bodies the liquid has recently been. ";
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
					say "[BigNameDesc of M] pockets the gold rings that [he of M][']d been dangling in front of your face.[line break][speech style of M]'What, you think I'd waste good money on cheap whores like you two? Fuck off. You haven't earned a dime. Worthless [cunt]s.'[roman type][line break]";
		otherwise:
			say "[if the player is able to speak][variable custom style]'Fuck off, I'm not going anywhere near that.'[roman type][line break][otherwise]You shake your head in disgust.[end if][line break][speech style of M]'Worthless [cunt]! I'll make you learn your place. [womanName], put that shit back in the bowl.'[roman type][line break][BigNameDesc of W] lets the horrid mixture slowly drip back into the [fishbowl]. [BigNameDesc of M] picks it up and unceremoniously dumps it all over ";
			if (bukkake fetish is 1 or the fill-colour of fishbowl is murky) and a random number between 1 and 5 > 2:
				say "your head!";
				if the fill-colour of fishbowl is murky:
					AnnouncedSquirt urine on hair by ((the doses of fishbowl + 1) / 2);
					AnnouncedSquirt semen on hair by ((the doses of fishbowl + 1) / 2);
				otherwise if the fill-colour of fishbowl is golden:
					AnnouncedSquirt urine on hair by the doses of fishbowl;
				otherwise:
					AnnouncedSquirt semen on hair by the doses of fishbowl;
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
		repeat with M running through patrons in the location of the player:
			now current-monster is M;
			repeat with G running through temporarily-removed sex toys carried by M:
				if the player is possessing a vagina and G is not plug, compute replacement of G in vagina;
				otherwise compute replacement of G in asshole;
			repeat with D running through temporarily-removed diapers carried by M:
				compute replacement of D;
			repeat with C running through worn clothing:
				compute replacement of C; [this only does something if it's displaced or unzipped]
			repeat with C running through temporarily-removed clothing carried by M:
				compute replacement of C;
		say "All the patrons cheerfully chat to each other, patting each other on the back and congratulating each other on a good job well done, as they all leave the way they came[unless fishbowl-hat is worn], taking the bowl with them[end if].";
		now fishbowl is in Holding Pen;
		repeat with M running through alive patrons:
			now the boredom of M is 0;
			now M is unleashed;
			destroy M;
		force allocate 6 seconds.

Chapter - Anal Only Stool

A later time based rule (this is the barbara stool gets noticed rule):
	if the woman-status of woman-player is 80 and woman-player is in the location of the player:
		let W be woman-player;
		if the stool-scene of W is 0:
			say "You perform a double-take as you notice [NameDesc of W][']s state of affairs. [big he of W] is very slowly wandering from room to room, quietly moaning to [himself of W] every time [he of W] bumps into a wall.";
			now the stool-scene of W is 1;
		let M be W;
		repeat with N running through reactive male monsters:
			if the refractory-period of N <= 0 and (N is uninterested or N is friendly), now M is N;
		if M is not W:
			compute barbara stool fuck of M;
			if the refractory-period of M <= 0, now the refractory-period of M is 150. [Even if the NPC doesn't usually have a refractory period, we need to give them one here or they will fuck Barbara every single turn]

To say BecomesDistractedFlav of (M - a monster) to (W - a monster):
	say "[BigNameDesc of M][']s gaze shifts from you to [NameDesc of W].".

To compute barbara stool fuck of (M - a monster):
	if M is interested, say BecomesDistractedFlav of M to woman-player;
	say WomanStoolFuckStartFlav of M;
	say WomanStoolFuckReactionFlav of M;
	say WomanStoolFuckClimaxFlav of M;
	now the refractory-period of M is the refractory-time of M;
	satisfy M;
	unless M is shopkeeper or M is guarding, compute mandatory room leaving of M.

To say WomanStoolFuckStartFlav of (M - a monster):
	let W be woman-player;
	say "[BigNameDesc of M] [one of]saunters[or]strides[or]gingerly tiptoes[in random order] over to [NameDesc of W] [one of]where [he of M] grabs [him of W] by the waist before[or]where [he of M] swats [him of W] loudly on the ass and then[or]and makes sure not to let [him of W] know [he of M][']s there at all until[in random order] [he of M] [one of]shoves [his of M] entire [LongDickDesc of M] into [his of W] asshole in a single unforgiving thrust[or]lets [his of M] [LongDickDesc of M] slide easily into [his of W] gaping rear fuckhole[in random order]. ";

To say WomanStoolFuckReactionFlav of (M - a monster):
	say "[BigNameDesc of woman-player] [one of]squeals[or]yelps[or]shrieks[or]screams[in random order] with what seems to be a mixture of shock and [one of]delight[or]pleasure[or]desire[in random order]. ";

To say WomanStoolFuckClimaxFlav of (M - a monster):
	let W be woman-player;
	say "[BigNameDesc of M] [one of]thrusts [his of M] hips back and forth with no visible care or concern for whether [NameDesc of W] enjoys [himself of W][or]jackhammers in and out at impressive speed[or]enjoys [himself of M] with long, slow thrusts, each one going as deep as [his of M] [DickDesc of M] will allow[in random order], until [he of M] [one of]grunts[or]moans animalistically[at random] and [one of]fills [NameDesc of W][']s belly with more [semen][or]sends [his of M] swimmers [if pregnancy fetish is 1]searching in vain for an egg to fertilise [end if]down the wrong hole[in random order].";

To compute PlayerWomanStoolFuck:
	if the latex-transformation of the player >= 6:
		say "You wouldn't feel anything from it, so you don't see the point.";
		stop the action;
	let PF be vagina;
	let S be a random worn strapon-panties;
	if S is nothing, now S is penis;
	if S is demon codpiece, say CodTightenFlav of S;
	if sexual-penis-length > 0:
		say "Do you want to [if S is clothing]use your [SexDesc of penis] on[otherwise]fuck[end if] [his of woman-player] [asshole]?";
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
			if there is an actually unavoidable pussy covering clothing:
				say "You'll have to find a way to remove your [printed name of a random actually unavoidable pussy covering clothing] first.";
				now PF is vagina;
			if there is a worn chastity cage:
				say "You'll have to find a way to get out of your chastity cage first!";
				now PF is vagina;
			if there is a worn restricting research airhancer:
				say "Your [ShortDesc of penis] can't get hard enough to fuck anything. You'll need to deactivate your [printed name of a random research airhancer] first.";
				now PF is vagina;
	if PF is not vagina:
		let W be woman-player;
		increase the delayed sluttification of W by 1;
		say "You push your [ShortDesc of PF] into [NameDesc of W][']s gaping butthole. ";
		if PF is penis, say "Your [SexDesc of penis] [if sexual-penis-length < 5]is feels extremely slim in comparison to the huge width that [his of W] sphincter has been stretched out to[otherwise if sexual-penis-length < 8]finds it all too easy to fit inside the poor [man of W][']s cavernous fuckhole[otherwise]slides in with ease, which evidences just how horribly stretched poor [NameDesc of W][']s sphincter has become[end if][if ungape is 0], and as you feel the contours of [his of W] distended ring with your fingers, you find yourself severely doubting that it'll ever return to proper tightness again[end if]. ";
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

Check pulling woman-player when the woman-status of woman-player is 80 and the stool-scene of woman-player < 2:
	if the player is at least partially immobile or the player is in danger, say "You're a bit busy right now!" instead;
	allocate 6 seconds;
	now Neighbour Finder is the location of the player;
	say "You loosen the binds around [NameDesc of noun][']s wrists and remove the blindfold. After you unlatch the gag, [NameDesc of noun] almost sobs with relief.[line break][speech style of the noun]'Thank you so much, [NameBimbo], how can I ever repay you?! I'll see you later!'[roman type][line break][big he of the noun] waddles off to the [random N-viable direction] to finish removing the rest of [his of the noun] bondage and gape tape.";
	FavourUp the noun by 4;
	now the stool-scene of the noun is 2;
	vanish the noun instead.

Chapter - Throne Scene

Report going when the player is in Dungeon11 and the player is the donator and the woman-bimbo of woman-player is 4 and the throne-scene of woman-player is 0:
	if debugmode is 1, say "Checking if [WomanName] can appear.";
	if woman-player is relaxed redeploy appropriate:
		deploy woman-player with woman-status 97;
		now woman-player is in the location of the player;
		interest woman-player;
		say "As you arrive you see [NameDesc of woman-player] is here, sitting on the throne. [big his of woman-player] belly looks a little more round than you'd expect. It looks like [he of woman-player] was about to stand up, but then [he of woman-player] saw you and changed [his of woman-player] mind.".

An all time based rule (this is the barbara throne rule):
	if the woman-status of woman-player is 97 and the throne-scene of woman-player <= 4:
		let W be woman-player;
		if W is in the location of the player:
			increase the throne-scene of W by 1;
			if the throne-scene of W is 1:
				say "[speech style of W]'Oh wow, [NameBimbo], fancy seeing you here at a time like this. Not that there's anything going on here. Nothing's going on here. Would you mind, um, leaving me alone for a moment?'[roman type][line break]";
				cutshow W;
			otherwise if the throne-scene of W is 2:
				say "You can see [NameDesc of W][']s belly growing larger with each moment that passes. Is [he of W] getting filled up from behind?[line break][speech style of W]'Seriously, there's nothing going on here, so if you could please just leave me alone for a brief second I'll... ergh...'[roman type][line break]";
				cutshow W;
			otherwise:
				if the throne-scene of W is 3:
					say "[BigNameDesc of W] now [if pregnancy fetish is 1]looks nine months pregnant[otherwise]looks like [his of W] belly is about to burst[end if]![line break][speech style of W]'Oh god... can't hold it...'[roman type][line break]";
					womanSluttify;
					cutshow W;
				otherwise:
					say "[one of]Mouthfuls of [semen] start to erupt from [NameDesc of W][']s mouth. [big he of W] can no longer speak, and [his of W] eyes have rolled into the back of [his of W] head. You're not sure [he of W] is even fully conscious any more.[or]Mouthfuls of [semen] continue to spew from [NameDesc of W][']s mouth.[stopping]";
					decrease the throne-scene of W by 1; [Keeps the scene going indefinitely]
					let collecting be nothing;
					unless the player is at least partially immobile or the player is in danger or the player is not able to use their hands:
						let LV be a list of things;
						repeat with V running through carried vessels:
							unless V is tight topped or (the fill-colour of V is creamy and the doses of V >= the max-doses of V), add V to LV;
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
						now collecting is anal-origin;
					otherwise:
						SemenPuddleUp 4;
		otherwise:
			if W is nearby, say "You glance behind you and notice that [NameDesc of W] has gone.";
			now the throne-scene of woman-player is 5;
			SemenPuddleUp 20 in (the location of W);
			vanish W.

To say WomanCraftSceneFlav:
	say "You see [NameDesc of woman-player] is here, in the middle of crafting a potion. [big he of woman-player] is bent over at the waist, deep in thought, [his of woman-player] [if lady fetish < 2]pussy and [end if]asshole on total display.";
	alwayscutshow Figure of Barbara Cutscene 6 for woman-player;
	say "Before you can say anything, [he of woman-player] stands up triumphantly, holding a small vial full of a brightly glowing pink liquid.[line break][speech style of woman-player]'Oh hey [NameBimbo], I almost didn't notice you there! I think this one is gonna be good! Do you want to try it? If you don't, I'll be the guinea pig myself!'[roman type][line break][big he of woman-player] hands you the pink vial.";
	appropriate-cutscene-display Figure of Barbara Cutscene 7.


Chapter - Cum Kiss Scene

woman-player can be cum-kissed.

Report going when the player is an october 2023 top donator and the woman-bimbo of woman-player is 3 and woman-player is not cum-kissed and playerRegion is Mansion:
	if debugmode is 1, say "Checking if [WomanName] can appear.";
	if woman-player is relaxed redeploy appropriate and the player is upright and face is not actually occupied and the location of the player is not mandatory room and the location of the player is not important room and the location of the player is not pinned room and the number of monsters in the location of the player is 0:
		now woman-player is cum-kissed;
		deploy woman-player with woman-status 28;
		now woman-player is in the location of the player;
		interest woman-player;
		say "As you arrive you see [NameDesc of woman-player] is here. [big he of woman-player] looks a bit stressed, or perhaps spooked - you see that [bold type]a pink wisp is following [him of woman-player] from behind. [roman type]You also note that [his of woman-player] cheeks appear to be... bulging... and an unmistakable creamy substance is dripping down [his of woman-player] chin.[line break][speech style of woman-player]'Mmmm Mmmm Mm Mm Mmmmm!'[roman type][line break][BigNameDesc of woman-player] urgently mumbles, whilst trying to make sure not to open [his of woman-player] mouth wide enough to cause any more of the [semen] to spill out. And then... [he of woman-player] steps towards you, and moves [his of woman-player] lips towards yours. It seems like [he of woman-player] is desperate to lock those big pink lips, bursting with [semen], directly to yours, and give you a big messy kiss...[paragraph break]Do you accept the sloppy snowball kiss?";
		cutshow Figure of Barbara Cutscene 20 for woman-player;
		if the player is bimbo consenting:
			say "You close your eyes and let it happen. As soon as [NameDesc of woman-player][']s lips are locked with yours, [he of woman-player] begins to use [his of woman-player] tongue to shovel heaps of [semen] from [his of woman-player] mouth into yours.";
			TasteGrossOut 3;
			FaceFill semen by 3;
			now face is vaginal-origin;
			say "As [he of woman-player] finishes filling your cheeks with this [semen] from god-knows-who[']s-balls, you watch [him of woman-player] breathe a sigh of relief as the pink wisp behind [his of woman-player] head fades away into nothingness.[line break][speech style of woman-player]'Thanks so much, [NameBimbo]. If it wasn't for me stumbling into you, and you letting me do that, the wisp would have transformed me into a slut!'[roman type][line break]You are tempted to point out that with those massive tits pretty much fully on show, [he of woman-player] looks pretty damn slutty already, but mercifully, your mouth full of [semen] prevents that from being an option in the first place.";
			FavourUp woman-player;
			if there is a nonstalking wisp and the player is getting unlucky:
				let W be a random nonstalking wisp;
				silently set up W;
				now the wisp-quest of W is brothel-wisp-quest;
				now the wisp-trigger of W is lose-mouthful-wisp-trigger;
				now the wisp-punishment of W is bimbo-wisp-punishment;
				if (a random number between 0 and 1) + (a random number between 0 and 1) < game difficulty, now the wisp-punishment of W is a random appropriate wisp punishment;
				now W is everywhere;
				update backdrop positions;
				now the text-shortcut of W is the substituted form of "[ColourDesc of W]";
				say "And then suddenly, [bold type]a [ColourDesc of W] curse wisp appears, and begins hovering behind you! [roman type]You can sense that you must [bold type][wisp-quest of W][roman type] before you next [bold type][wisp-trigger of W][roman type], or else you will [bold type][wisp-punishment of W][roman type]. [GotUnluckyFlav][line break][speech style of woman-player]'Oh no... I didn't know that the wisp would just transfer over to you! I'm so sorry, [NameBimbo]! And so ashamed!'[roman type][line break]Before you can stop [him of woman-player], [NameDesc of woman-player] has run away, holding [his of woman-player] hands over [his of woman-player] face in shame.";
				vanish woman-player;
		otherwise:
			say "You shake your head and back away. [BigNameDesc of woman-player] whines in panic... And then you hear [his of woman-player] belly rumble. [big he of woman-player] groans in dismay as the pink wisp pulses with energy, and then a shower of pink magic sparkles surrounds [NameDesc of woman-player]. A moment later, the pink wisp is gone, but [NameDesc of woman-player] looks a bit different.";
			ImmediateWomanSluttify;
			try examining woman-player;
			say "[speech style of woman-player]'BLEAURGH!'[roman type][line break][BigNameDesc of woman-player] spits [his of woman-player] mouthful of semen out onto the ground.";
			SemenPuddleUp 3;
			say "[speech style of woman-player]'I can't believe you wouldn't let me kiss you, [NameBimbo]! I know it's gross, but I thought we had each others['] backs. Now look at me... And I can feel... I can feel that I can't brain too good any more... I have the dumb.'[roman type][line break]".


Chapter - Barbara Buried

woman-player can be already-buried.

Report going when the player is the donator and the woman-bimbo of woman-player < 6 and woman-player is not already-buried and playerRegion is Woods:
	if debugmode is 1, say "Checking if [WomanName] can appear.";
	if woman-player is relaxed redeploy appropriate and the player is upright and the player is bursting and the player is desperate to pee and the location of the player is not mandatory room and the location of the player is not important room and the location of the player is not pinned room and there is a nonstalking wisp and the number of pee covering actually unavoidable clothing is 0 and the number of monsters in the location of the player is 0:
		now woman-player is already-buried;
		deploy woman-player with woman-status 98;
		now woman-player is in the location of the player;
		interest woman-player;
		now the location of the player is urinals;
		say "As you arrive you see [NameDesc of woman-player] is here - well, down there. [big he of woman-player] has been buried up to [his of woman-player] neck![line break][speech style of woman-player]'Hey [NameBimbo]... I'm afraid I can't help you out right now, for obvious reasons! Don't worry, I think the vines will let me go eventually, and unless you have a shovel, I don't think there's anything you can do to help me right now! So maybe just, you know, see you around?'[roman type][line break]";
		while there is a nonstalking wisp:
			let W be a random nonstalking wisp;
			silently set up W;
			now the wisp-quest of W is use-urinal-wisp-quest;
			say "Suddenly, [bold type]a [ColourDesc of W] curse wisp appears, and begins hovering behind you! [roman type]You can sense that you must [bold type][wisp-quest of W][roman type] before you next [bold type][wisp-trigger of W][roman type], or else you will [bold type][wisp-punishment of W][roman type]. ";
		say "[paragraph break]You understand all too clearly that [bold type][WomanName][']s face currently counts as a urinal.[roman type][line break]";
		say "[speech style of woman-player]'...Why are you looking at me like that...?!'[roman type][line break]".

Report going up:
	if the woman-status of woman-player is 98 and woman-player is alive:
		if the location of the player is urinals, now the location of woman-player is use-the-floor;
		vanish woman-player;
	let R be a random urinals jungle room;
	if R is room:
		say "BUG - [R] should have had its urinal flag removed, but it didn't. This is probably because [NameDesc of woman-player] was unintentionally moved somehow. Please report this bug!";
		now R is use-the-floor.


Chapter - Bellboy Fight Scene

woman-player has a number called bellboy-fight-scene.

Report going when the bellboy-fight-scene of woman-player is 0 and the woman-bimbo of woman-player is 2 and playerRegion is hotel:
	let M be a random robobellboy in the location of the player;
	if M is threatening and M is uninterested:
		if debugmode is 1, say "Checking if barbara can appear.";
		if woman-player is relaxed redeploy appropriate:
			deploy woman-player with woman-status 100;
			now the bellboy-fight-scene of woman-player is 1;
			now woman-player is in the location of the player;
			interest woman-player;
			now the health of woman-player is 1;
			now the health of M is (the maxhealth of M * 3) / 4;
			now M is guarding;
			if the boredom of M < 100, now the boredom of M is 100;
			say "As you arrive here you see [NameDesc of woman-player] is on [his of woman-player] knees in front of [NameDesc of M] looking extremely fatigued, [his of woman-player] water pistol empty. On the other hand, [NameDesc of M] looks like [he of M][']s barely damaged. [BigNameDesc of woman-player] is looking up at [NameDesc of M] with a face full of trepidation.".

A later time based rule (this is the barbara robobellboy rule):
	if the woman-status of woman-player is 100:
		let M be a random alive guarding robobellboy;
		let ableToRun be false;
		if M is monster:
			increase the bellboy-fight-scene of woman-player by 1;
			if M is uninterested or M is friendly:
				if the bellboy-fight-scene of woman-player <= 2:
					if M is in the location of the player:
						say "[speech style of woman-player]'Help me, [NameBimbo]! This crazy robot is trying to put me in weird clothes!'[roman type][line break]";
						cutshow figure of barbara cutscene 10 for M;
				otherwise if the bellboy-fight-scene of woman-player is 3:
					if M is in the location of the player:
						say "[BigNameDesc of M] holds [NameDesc of woman-player] still, and confiscates [his of woman-player] pistol.[line break][speech style of woman-player]'Let me go, you mad tin can!'[roman type][line break]";
						cutshow figure of barbara cutscene 10 for woman-player;
				otherwise:
					ImmediatewomanSluttify;
					now the woman-status of woman-player is 27;
					if M is in the location of the player:
						say "[BigNameDesc of M] pulls a much-too-small latex jacket out of [his of M] chest compartment, and after ripping off [his of woman-player] top, forces it onto [NameDesc of woman-player][']s chest.[paragraph break]";
						say "[speech style of woman-player]'You bastard! Get this off!'[roman type][line break][BigNameDesc of woman-player] demands, while tugging at [his of woman-player] new top, which won't budge, clearly because of a curse.";
						update woman name and bimbo;
						say "[speech style of M]'WARDROBE ALTERATIONS COMPLETE. NAME DESIGNATION UPDATE REQUIRED: PLAYER NOW KNOWN AS ['][current-name of woman-player in upper case]['].'[roman type][line break][BigNameDesc of M] declares in an emotionless voice, before losing interest in [NameDesc of woman-player].[line break][speech style of woman-player]'What?! You can't just change my name! My name is [current-name of woman-player]! I mean [current-name of woman-player]!, No, [current-name of woman-player]! Oh God...'[roman type][line break][BigNameDesc of woman-player] is bright red, embarrassed not only about [his of woman-player] new outfit, but also the new name that [he of woman-player] can't seem to stop referring to [himself of woman-player] as.";
					deinterest M;
					if M is in the location of the player, check guaranteed perception of M;
			otherwise:
				now ableToRun is true;
		otherwise:
			now ableToRun is true;
		if ableToRun is true:
			now the woman-status of woman-player is 27;
			if woman-player is in the location of the player:
				say "[BigNameDesc of woman-player] flees from the room, as fast as [his of woman-player] legs will carry [him of woman-player]!";
				compute mandatory room leaving of woman-player;
			deinterest woman-player;
			regionally place woman-player.

Chapter - Swimming Pool Scene

first-time-swimming-pool is initially false.

Carry out going west:
	if the player is in School19 and School20 is unvisited, now first-time-swimming-pool is true.

Report going when the player is in School20 and first-time-swimming-pool is true:
	now first-time-swimming-pool is false;
	if the woman-bimbo of woman-player is 2:
		if debugmode is 1, say "Checking if barbara can appear.";
		let MSM be a random off-stage turtle-swimsuit;
		if MSM is clothing and woman-player is relaxed redeploy appropriate:
			deploy woman-player with woman-status 1; [we're going to send her dungeon crawling afterwards]
			now woman-player is in School20;
			interest woman-player;
			only destroy MSM;
			now MSM is in the location of the player;
			if the player is not getting lucky, now MSM is cursed;
			let able-to-wear-swimsuit be false;
			let LC be a list of clothing;
			repeat with C running through worn usually autoremovable clothing:
				add C to LC;
				now C is in Holding Pen;
			now autowear is true;
			if MSM is actually wearable, now able-to-wear-swimsuit is true;
			now autowear is false;
			repeat with C running through LC:
				now C is worn by the player;
			say "As you arrive here you see [NameDesc of woman-player] holding a stretchy blue swimsuit. [big he of woman-player] spots you immediately.[line break][speech style of woman-player]'Hey, [NameBimbo]! I didn't know you went to this academy. I'm just visiting on a provisional basis - I'm not sure I really want to join somewhere designed to make you sluttier, even if there are allegedly excellent rewards available once you get to the higher ranks. But still, while I'm here, I might as well take a dip in this pool, right? Come on, fancy joining me? There's loads of spare swimsuits over there. Although I'm afraid I've nabbed the only one that isn't weirdly slutty, haha.'[roman type][line break]";
			reset multiple choice questions;
			set numerical response 0 to "Decline to go in the pool with [him of woman-player]";
			if able-to-wear-swimsuit is true and the player is silently able to manually speak, set numerical response 1 to "Say you'll only join [him of woman-player] if you can have the modest swimsuit";
			set numerical response 2 to "[if able-to-wear-swimsuit is true]Take a slutty swimsuit and get in the pool[otherwise]You can't wear a swimsuit because of your current clothing situation; get in the pool in what you're wearing[end if]";
			compute multiple choice question;
			zero focus stuff; [we only want the new image of barbara]
			if player-numerical-response <= a random number between 0 and 1:
				if player-numerical-response is 1, say "[BigNameDesc of woman-player] frowns.[line break][speech style of woman-player]'I'm not giving you this, so suit yourself.'[roman type][line break]";
				otherwise say "[BigNameDesc of woman-player] shrugs.[line break][speech style of woman-player]'Suit yourself.'[roman type][line break]";
				say "[BigNameDesc of woman-player] changes into the blue swimsuit and then jumps into the pool.[line break][speech style of woman-player]'The water's great!'[roman type][line break][big he of woman-player] calls to you, splashing around joyfully, before heading back to the ladder. [big he of woman-player] sighs with delight as [he of woman-player] pulls [himself of woman-player] up out of the water using the handrails.[paragraph break]You instantly notice that something is wrong.";
				cutshow Figure of Barbara Cutscene 12 for woman-player;
				say "[BigNameDesc of woman-player][']s belly is big. REALLY big. Putting a hand to your mouth, you point at [his of woman-player] belly. [big he of woman-player] looks down and shrieks with panic. As [he of woman-player] strips off the swimsuit to get a closer look at [his of woman-player] new ballooned midriff, an illusion that had been cast over the pool begins to fade. You both become aware that it's not full of normal pool water, but in fact full to the brim with warm creamy [semen]!!![line break][speech style of woman-player]'What the fuck?!'[roman type][line break]You can now see that [NameDesc of woman-player] is not covered with water, but with [semen]! It's dripping from [his of woman-player] hair, [his of woman-player] body, and out of [his of woman-player] holes. [BigNameDesc of woman-player] lets out a half-surprised, half-humiliated moan as a torrent of [semen] shoots out of [his of woman-player] asshole.[paragraph break]";
				if pregnancy fetish > 0:
					say "But [his of woman-player] belly is hardly deflating![line break][speech style of woman-player]'Huh?!'[roman type][line break][BigNameDesc of woman-player] holds [his of woman-player] new bloated, round belly.[line break][speech style of woman-player]'Wait, am I... Am I PREGNANT?! WHAT THE FUCK?!'[roman type][line break]In visible distress, [NameDesc of woman-player] sprints from the room, not even remembering to take [his of woman-player] clothes with [him of woman-player].";
					now the woman-pregnancy of woman-player is 2;
				otherwise:
					say "[speech style of woman-player]'What is this place?! What sort of evil person would arrange for such a [']prank['], or whatever this is! How disgusting! How humiliating! I can't stay here a moment longer!'[roman type][line break]In visible distress, [NameDesc of woman-player] quickly gathers up [his of woman-player] clothes and sprints from the room.";
					ImmediatewomanSluttify;
				only destroy MSM;
			otherwise:
				if player-numerical-response is 1:
					say "[BigNameDesc of woman-player] frowns.[line break][speech style of woman-player]'Fine.'[roman type][line break][BigNameDesc of woman-player] drops the blue swimsuit for you.";
					now MSM is turtle-swimsuit;
					blandify and reveal MSM;
					now MSM is in School20;
				if able-to-wear-swimsuit is true:
					say "You strip down and don the swimsuit.";
					repeat with C running through worn usually autoremovable clothing:
						unless C is armband:
							now C is in the location of the player;
							dislodge C;
					if MSM is cursed, summon MSM cursed with quest;
					otherwise summon MSM uncursed;
				force immediate clothing-focus redraw;
				say "You jump off the diving board into the pool. Just as you're in the air, your perception shifts. Instead of a pool of normal water that you're jumping into, it's in fact full of [semen]![line break][speech style of woman-player]'WHAT THE FUCK?!'[roman type][line break]You hear [NameDesc of woman-player] say from [his of woman-player] position at the side of the pool. [big he of woman-player] can clearly see it too. The last thing you see is [him of woman-player] turning and running from the room, with a hand over [his of woman-player] mouth and nose.[paragraph break]The next moment, you are submerged in the vile seed. Thankfully, it's enough like normal water that you can swim back to the surface.";
				compute TQ swimmingpool swimming at 0 with 1;
				trigger swim-wisp-quest;
			try woman-player going east;
			now woman-player is in Dungeon32.

Part 4 - Wandering

To compute wandering of (M - woman-player):
	follow the woman wandering rules.

This is the woman gives birth to a tentacle monster rule:
	if the woman-status of woman-player < 80 and the woman-pregnancy of woman-player is 3 and woman-player is in the location of the player and the number of monsters in the location of the player is 1:
		let M be a random off-stage tentacle monster;
		if M is monster:
			now M is newborn;
			set up M;
			now M is in the location of the player;
			say "[BigNameDesc of woman-player] collapses to the ground.[line break][speech style of woman-player]'Oh fuck, it's coming!'[roman type][line break][big he of woman-player] spreads [his of woman-player] legs, exposing [his of woman-player] dilated pussy and womb. You watch with [horror the bimbo of the player] as one, two, then three tentacles pry [his of woman-player] cunt open even further and then the thing inside begins to pull itself out.[line break][speech style of woman-player]'[if the woman-bimbo of woman-player < 4]It hurts! Get it out! It hurts so much[otherwise]I'm going to be a mama[end if]!'[roman type][line break][BigNameDesc of woman-player] flails helplessly as a basketball-sized lump of grey flesh forces its way out of [his of woman-player] and into the world. [big he of woman-player] lies exhausted on the ground as [his of woman-player] spawn's single giant eye focuses on you.";
			cutshow figure of barbara cutscene 11 for woman-player;
			now the woman-pregnancy of woman-player is 0;
			distract woman-player;
			now the sleep of woman-player is 100;
			increase the delayed sluttification of woman-player by 1;
			interest M;
			anger M;
			rule succeeds.
The woman gives birth to a tentacle monster rule is listed last in the woman wandering rules.

This is the woman trips a glue trap rule:
	if the woman-status of woman-player < 30 and the woman-bimbo of woman-player is 2 and woman-player is in the location of the player and the number of monsters in the location of the player is 1 and the player is not immobile and the player is able to use their hands:
		let G be a random glue in the location of the player;
		let GT be a random revealed glue trap in the location of the player;
		if (G is glue and G is not grabbing the player) or (G is nothing and GT is a glue trap):
			interest woman-player;
			say "[BigNameDesc of woman-player] slips, and collapses to the ground.[line break][speech style of woman-player]'Oh shit!'[roman type][line break][big he of woman-player] tries to pull [himself of woman-player] up, but [his of woman-player] hands are stuck in a puddle of glue![line break][speech style of woman-player]'Uh-oh...'[roman type][line break][BigNameDesc of woman-player] flails helplessly as the glue begins to surge up [his of woman-player] legs, and start attacking [his of woman-player] clothes. Before you can say [']magic clothes-dissolving glue trap['], [his of woman-player] hotpants are gone.";
			cutshow figure of barbara cutscene 16 for woman-player;
			say "[speech style of woman-player]'Help! Quickly [NameBimbo], help me!'[roman type][line break]Oh dear. [big he of woman-player][']s flailing so much that you suspect there's probably a small but not insignificant chance that trying to help [him of woman-player] will just get you stuck as well.";
			ImmediatewomanSluttify;
			reset multiple choice questions;
			set numerical response 1 to "Pretend you can't reach [him of woman-player].";
			set numerical response 2 to "Try and help [him of woman-player] escape.";
			if the player is silently able to manually speak, set numerical response 3 to "Demand [he of woman-player] give you [his of woman-player] pistol in return for helping [him of woman-player] escape.";
			compute multiple choice question;
			if player-numerical-response is 3:
				let R be a random number between 1 and 2;
				if R is 1:
					now player-numerical-response is 1;
					say "[BigNameDesc of woman-player] scowls.[line break][speech style of woman-player]'Fuck no! I worked too hard for this to just give it away to-'[roman type][line break]That's all [he of woman-player] manages to say before [he of woman-player] is interrupted by the magic glue flaring up beneath [him of woman-player].";
				otherwise:
					say "[BigNameDesc of woman-player] hesitates with a frown, but then relents.[line break][speech style of woman-player]'Fine. Just get me out of here!'[roman type][line break][big he of woman-player] reaches out [his of woman-player] hand towards you.";
			if player-numerical-response is 1:
				say "You shrug, and watch with feigned pity as the glue works its way up [NameDesc of woman-player][']s torso, dissolving [his of woman-player] top... and [his of woman-player] prized magic pistol.[line break][speech style of woman-player]'Noooo!'[roman type][line break]In the end, the glue covers [his of woman-player] whole body from head to toe, before suddenly disappearing, leaving the poor [man of woman-player] looking rather different. [big he of woman-player] is wearing nothing but a raunchy lacy black bra, suspenders and stockings, and slutty fishnet gloves. [big his of woman-player] face looks somewhat different too, with heavier make up, and noticeably thicker lips. [big his of woman-player] expression looks less stressed, and more chilled out.";
				zero focus stuff;
				cutshow figure of barbara cutscene 17 for woman-player;
				say "[speech style of woman-player]'You know what, I actually feel a bit better now! Maybe that wasn't such a bad thing after all!'[roman type][line break][big he of woman-player] chirps. [big he of woman-player] tugs at [his of woman-player] clothes, and discovers they're all stuck fast with glue. [big he of woman-player] just shrugs, as if it's no big deal.";
				ImmediatewomanSluttify;
				say "[speech style of woman-player]'See you round, sweet-cheeks!'[roman type][line break][BigNameDesc of woman-player] struts out of the [location of the player].";
				vanish woman-player;
			otherwise:
				say "You reach for [his of woman-player] hand, doing your best to avoid the glue yourself as you pull [him of woman-player] out.";
				if the player is getting unlucky:
					let E be a random worn hand ready clothing;
					say "But just as your hand touches [hers of woman-player], the glue springs to life again! [GotUnluckyFlav]This time, it gets you both! The glue works its way up [NameDesc of woman-player][']s torso, dissolving [his of woman-player] top... and [his of woman-player] prized magic pistol.[line break][speech style of woman-player]'Noooo!'[roman type][line break]It also crosses from [his of woman-player] hand to yours. ";
					if E is clothing:
						say "It engulfs your [NameDesc of E], coating it with glue and imbuing it with negative magic.";
						decrease the raw-magic-modifier of E by 1;
						gluify E;
					otherwise:
						say "It engulfs your [NameDesc of E], before forming into the shape of a giant dildo.";
						summon dildo sword uncursed;
						gluify dildo sword;
					say "In the end, the glue covers [NameDesc of woman-player][']s whole body from head to toe, before suddenly disappearing, leaving the poor [man of woman-player] looking rather different. [big he of woman-player] is wearing nothing but a raunchy lacy black bra, suspenders and stockings, and slutty fishnet gloves. [big his of woman-player] face looks somewhat different, with heavier make up, and noticeably thicker lips. [big his of woman-player] expression looks less stressed, and more chilled out.";
					zero focus stuff;
					cutshow figure of barbara cutscene 17 for woman-player;
					say "[speech style of woman-player]'You know what, I actually feel a bit better now! Maybe that wasn't such a bad thing after all!'[roman type][line break][big he of woman-player] chirps. [big he of woman-player] tugs at [his of woman-player] clothes, and discovers that they are all stuck fast with glue. [big he of woman-player] just shrugs, as if it's no big deal.";
					ImmediatewomanSluttify;
					say "[speech style of woman-player]'See you round, sweet-cheeks!'[roman type][line break][BigNameDesc of woman-player] struts out of the [location of the player].";
					vanish woman-player;
				otherwise:
					say "Success! You are able to rip [him of woman-player] out of the sticky stuff and out to safety.";
					if player-numerical-response is 3:
						now magic pistol is in the location of the player;
						say "[BigNameDesc of woman-player] wrinkles [his of woman-player] nose.[line break][speech style of woman-player]'I guess I should be grateful. Fair's fair.'[roman type][line break][big he of woman-player] drops [his of woman-player] [magic pistol] onto the ground.";
						compute autotaking magic pistol;
					otherwise:
						say "[BigNameDesc of woman-player] embraces you with immense gratitude.[line break][speech style of woman-player]'Thank you so much, [NameBimbo]. Who knows what that stuff would have done to me if I'd been stuck there any longer...'[roman type][line break]";
						FavourUp woman-player by 2;
			rule succeeds.
The woman trips a glue trap rule is listed last in the woman wandering rules.

Part 5 - Protection

To compute protection of (M - woman-player):
	let X be M;
	repeat with U running through dangerous monsters in the location of the player:
		now X is U;
	if the player is flying:
		now M is uninterested;
	otherwise if X is M:
		compute unique interaction of M;
	otherwise:
		compute M protecting against X;

To compute unique interaction of (M - woman-player):
	if the woman-status of M is 96 and the patron-scene-done of M is 1 and M is in the location of the player:
		compute patron scene climax of M;
	otherwise if the woman-status of M is 82 and pregnancy fetish is 1 and the pregnancy of the player is 0 and (the player is immobile or milking is 1) and (the player is possessing a vagina or the player is ready for event TG):
		compute pregnancy swap of M;
	otherwise if the woman-bimbo of M < 4 and the woman-status of M < 10 and the player is possessing a penis and the size of penis > 7:
		compute penis siphoning of M;
	otherwise:
		compute wandering of M.

To compute (M - woman-player) protecting against (X - a monster):
	if the woman-status of M is 96 and X is patron:
		compute patron interaction of M;
	otherwise if the woman-status of M is 91 and X is mechanic:
		if X is penetrating a body part:
			if X is a balls-haver:
				say "[BigNameDesc of M] [one of]makes [himself of M] useful by sucking [NameDesc of X][']s balls[or]makes lewd slurping sounds as [he of M] massages [NameDesc of X][']s balls with [his of M] lips[or]stands upright and begins to worship [NameDesc of X][']s tongue in a long, loud French kiss[or][BigNameDesc of M] is still passionately kissing [NameDesc of X][stopping].";
			otherwise:
				say "[BigNameDesc of M] [one of]makes [himself of M] useful by licking [NameDesc of X][']s taint[or]makes lewd slurping sounds as [he of M] massages [NameDesc of X][']s taint with [his of M] tongue[or]stands upright and begins to worship [NameDesc of X][']s tongue in a long, loud French kiss[or][BigNameDesc of M] is still passionately kissing [NameDesc of X][stopping].";
	otherwise if the woman-status of M >= 80:
		do nothing; [Barbara was spawned to get fucked, not fight.]
	otherwise if M is partially-enslaved and the pedestal-user of pimp-pedestal-2 is a monster:
		say "[BigNameDesc of M] is too busy getting [his of M] breasts molested through the portal to help you fight!"; [Barbara is getting molested]
	otherwise if the player is monster fucked:
		if the woman-bimbo of M > 4:
			say "[BigNameDesc of M] giggles.[line break][speech style of M]'Have fun, I won't get in your way!'[roman type][line break]";
			deinterest M;
		otherwise:
			say "[BigNameDesc of M] sobs.[line break][speech style of M]'I'm so sorry, I couldn't stop [him of X]!'[roman type][line break][big he of M] runs off.";
			deinterest M;
			womanSluttify;
			Vanish M;
			if a random number between 1 and 2 is 1 and the woman-bimbo of M < 6, increase the woman-bimbo of M by 1;
	otherwise:
		if the woman-bimbo of M > 4:
			say "[BigNameDesc of M] giggles.[line break][speech style of M]'Have fun, I won't get in your way!'[roman type][line break]";
			deinterest M;
		otherwise:
			let prev-health be the health of X;
			compute X receiving a random number from 1 to 2 damage from M;
			if prev-health is the maxhealth of X and the health of X < the maxhealth of X, say AllyInstigated of X.

To compute pregnancy swap of (M - woman-player):
	say "[speech style of woman-player]'I'm really sorry about this, but if I don't take this opportunity now, I know it'll never come again. I've got to do what's right for myself.'[roman type][line break][BigNameDesc of woman-player] advances on you, in your compromised position.[line break][variable custom style][if the player is able to speak]'[womanName], what are you...'[otherwise]Wait, what is [he of woman-player]...[end if][roman type][line break][big he of woman-player] presses a palm to your belly, and whispers into your ear.[line break][speech style of woman-player]'[one of]The witch taught me a special way... To get someone to share my burden[or]How was it last time? Are you excited to give birth again? I'm almost jealous[stopping].'[roman type][line break]Looking down with [horror the sex addiction of the player], you realise that [his of woman-player] belly has shrunk back to normal, while yours has expanded to that huge, full term pregnant size.[line break][variable custom style]Holy shit...[roman type][line break]";
	if the player is ready for event TG:
		say "[BigNameDesc of woman-player]'s magic surges down from your belly to your loins. [if the player is possessing a penis]Your [player-penis] feels... Absent![end if] The logical conclusion of what has just happened to you is clear, and it only takes a moment for you to check and confirm... You're no longer biologically male. You have a real, fully functional vagina and womb![line break][variable custom style]And I'm already 9 months pregnant... This is insane![roman type][line break]";
		SexChange the player;
	cutshow figure of barbara cutscene 13 for woman-player;
	now the pregnancy of the player is 1;
	now the womb volume of vagina is 30;
	if the woman-pregnancy of woman-player is 3, now the father is a random tentacle monster;
	otherwise now the father is a random ultimate-lesson-actor;
	now the woman-pregnancy of woman-player is 0;
	check for extreme pregnancies;
	check goddess eligibility;
	trigger conception-wisp-trigger;
	say "[BigNameDesc of woman-player] quickly takes [his of woman-player] leave.[line break][speech style of woman-player]'I hope, some day, you'll be able to forgive me!'[roman type][line break]";
	compute mandatory room leaving of woman-player;
	vanish woman-player.

To compute penis siphoning of (M - woman-player):
	if the player is immobile and the number of things penetrating penis is 0 and penis is exposed:
		say "[speech style of woman-player]'I'm really sorry about this, but if I don't take this opportunity now, I know it'll never come again. I've got to do what's right for myself.'[roman type][line break][BigNameDesc of woman-player] advances on you, in your compromised position.[line break][variable custom style][if the player is able to speak]'[womanName], what are you...'[otherwise]Wait, what is [he of woman-player]...[end if][roman type][line break][big he of woman-player] lies down and takes your [MediumDesc of penis] into [his of M] mouth and begins to give you a blowjob.";
		cutshow figure of barbara cutscene 14 for woman-player;
		say "It feels amazing[one of], but you can't help but think that there's another motivation for [his of M] actions other than brining you pleasure. Either way, you[or]! You[stopping] can't bring [him of M] to stop, and [he of M] quickly and skilfully brings you to a powerful orgasm in [his of M] mouth.";
		orgasm quietly;
		say "[BigNameDesc of M] gulps down your [semen] and then sighs loudly.[line break][speech style of woman-player]'[one of]The witch gave me a curse... My lips were going to keep growing more and more plump and sensitive until I did that[or]I'm sorry, but I had to get rid of the curse again[stopping].'[roman type][line break]Looking down with [horror the delicateness of the player], you realise that the curse has had a lasting effect on your [player-penis] - it is shrinking!";
		PenisDown 3;
		say "[variable custom style]Noooo...[roman type][line break]You now have a [ShortDesc of penis].[paragraph break][BigNameDesc of woman-player] quickly takes [his of woman-player] leave.[line break][speech style of woman-player]'I hope, some day, you'll be able to forgive me!'[roman type][line break]";
		compute mandatory room leaving of woman-player;
		vanish woman-player.

Part 6 - Combat

Section 0 - Punishment

This is the woman unique punishment rule:
	let J be the biggest held jewel;
	let P be a random eligible piercing;
	let G be a random regional glue;
	if playerRegion is Hotel and P is piercing and P is actually summonable:
		unless modification machine is in the location of the player:
			drag to Hotel02 by woman-player;
		say "[big he of woman-player] forces you onto the [ShortDesc of modification machine]! [PiercingFlav of P]";
		summon P cursed;
		say "[speech style of woman-player]'Hahaha, that looks so ridiculous! Serves you right.'[roman type][line break]";
	otherwise if playerRegion is Woods and vine boss is alive:
		drag to Woods16 by woman-player;
		say "[speech style of woman-player]'Have fun, [if the woman-bimbo of woman-player < 5]bitch.'[otherwise]*giggle*'[end if][roman type][line break][big he of woman-player] pushes you down the hole.";
		now the player is in WoodsBoss01;
		if another-turn-flavour is "", now another-turn-flavour is the substituted form of "It takes you a moment to recover from the fall.";
		now another-turn is 1;
	otherwise if playerRegion is Dungeon and G is glue:
		let L be the location of G;
		drag to L by woman-player;
		say "[speech style of woman-player]'[if the woman-bimbo of woman-player < 5]Do you regret making an enemy of me yet?'[otherwise]This is my favourite spot down here! Enjoy!'[end if][roman type][line break][big he of woman-player] pushes you into the glue.";
		increase the times-stuck of G by 1;
		now the player-motion of the player is 0;
		now G is grabbing the player;
		now the stickiness of the player is 2 + a random number between 1 and the glue-strength of G / 4;
		now the smell-duration of G is 4;
	otherwise if the woman-bimbo of woman-player < 5 and J is plentiful accessory:
		say "[BigNameDesc of woman-player] yanks the [J] from your [if J is carried and there is a worn bag of holding][ShortDesc of a random worn bag of holding][otherwise if J is carried]hands[otherwise if J is necklace]neck[otherwise if J is bracelet]wrist[otherwise]finger[end if]![line break][speech style of woman-player]'This is mine now.'[roman type][line break]";
		now woman-player is carrying J;
	otherwise:
		say "[BigNameDesc of woman-player] spreads [his of woman-player] cheeks and moves [his of woman-player] crack towards your face.";
		if face is not actually occupied, say "[line break][speech style of woman-player]'[if the woman-bimbo of woman-player < 5]Lick my asshole, [cunt]. Show me you admit defeat.'[otherwise]Wanna taste?'[end if][roman type][line break]Do you lick [NameDesc of woman-player][']s butthole? ";
		if face is not actually occupied and the player is bimbo consenting:
			say "You [if the player is not a pervert]reluctantly[otherwise if the player is not a nympho]obediently[otherwise]happily[end if] tongue [his of woman-player] loose hole, [if the player is not a pervert]wincing with shame[otherwise if the player is not a nympho]and start to get turned on[end if] when [he of woman-player] sighs with pleasure. ";
			if the raw delicateness of the player < the raw anal sex addiction of the player * 2:
				say "You feel a bit more submissive for having done that.";
				increase the raw delicateness of the player by 1;
			otherwise:
				say "You now feel a bit more [if the anal sex addiction of the player > 5]obsessed[otherwise]comfortable[end if] with butt stuff.";
				AnalSexAddictUp 1;
		otherwise:
			if bukkake fetish is 1:
				say "[speech style of woman-player]'[if face is not actually occupied and the woman-bimbo of woman-player >= 5]Fine, I guess you'll just have to sit there and watch!'[otherwise if the woman-bimbo of woman-player >= 5]Oopsie!'[otherwise if face is actually occupied]Hold still, bitch.'[otherwise]Wrong choice, bitch!'[end if][roman type][line break]A jet of cum blasts out of [NameDesc of woman-player][']s asshole as [he of woman-player] lets out an anal creampie all over your face.[line break][variable custom style][if the semen addiction of the player < 7]Gross gross gross!!![otherwise]How long has [he of woman-player] been holding that in? Was [he of woman-player] saving it for me?![roman type][line break]";
				CumFaceUp 15;
			otherwise:
				say "[speech style of woman-player]'[if face is not actually occupied and the woman-bimbo of woman-player >= 5]Fine, I guess you'll just have to sit there and watch!'[otherwise if the woman-bimbo of woman-player >= 5]Look how stretchy it is!'[otherwise if face is actually occupied]Take a close look, bitch. This is what you're gonna be tasting one of these days soon.'[otherwise]How rebellious. Are you sure you don't want a taste?'[end if][roman type][line break][big he of woman-player] pushes two fingers from each hand into [his of woman-player] butt, before pulling [his of woman-player] hands apart to make [his of woman-player] hole gape right in front of your eyes. [if the player is not a nympho]You find yourself becoming desensitised to such lewd displays - it's pretty normal for this kind of game[otherwise]You find yourself staring deep inside with glee and wonder in your eyes[end if]. [big he of woman-player] lowers [his of woman-player] gaping wide asshole over you until it's pretty much touching your face, before letting go and allowing it to snap shut on the tip of your nose, making you yelp with surprise. [big he of woman-player] laughs and then stands back up.";
				SexAddictUp 1;
	satisfy woman-player.

Section 1 - Fighting

To say MonsterTripAnnounceFlav of (M - woman-player):
	say "[BigNameDesc of M] [if the woman-bimbo of M < 4]shifts [his of M] weight and goes for a slide tackle[otherwise if the woman-bimbo of M < 6]grabs your shoulders and tries to hook a foot behind your ankle[otherwise]drops to [his of M] knees and after greedily staring at your crotch for a moment, tries to grab your legs and squeeze them together[end if]!".

To compute (M - woman-player) striking (B - face):
	unless bukkake fetish is 1 and the semen coating of face < 4 and the woman-bimbo of M < 3 and the delayed sluttification of M is 0, BodyRuin 2.

To compute striking success effect of (M - woman-player) on (B - face):
	if bukkake fetish is 1 and the semen coating of face < 4 and the woman-bimbo of M < 3 and the delayed sluttification of M is 0:
		CumFaceUp 20;
		now another-turn-flavour is the substituted form of "You are still recoiling from being blinded with [semen].";
		now another-turn is 1.

To say StrikingSuccessFlav of (M - woman-player) on (B - a body part):
	if B is face and bukkake fetish is 1 and the semen coating of face < 4 and the woman-bimbo of M < 3 and the delayed sluttification of M is 0:
		say "[BigNameDesc of M] growls and takes a step back. Aiming with a steady hand, [he of M] points [his of M] gun at your head.[line break][speech style of M]'This load wasn't meant for you.'[roman type][line break]";
		say "A single moment of dread turns to surprise and [horror semen addiction of the player] as a powerful burst of [semen] jets out of the nozzle and drenches your face, blinding you!";
	otherwise if the woman-bimbo of M < 5:
		say "[BigNameDesc of M] [one of]winds up a big punch and smacks you[or]lands a karate chop[or]kicks you[at random] [TargetName of B]! Ouch!!";
	otherwise:
		say "[BigNameDesc of M] [one of]giggles as [he of M] [or]grins and [or][at random]spanks you [one of]hard [or][or][purely at random][TargetName of B]!".

Definition: woman-player is penis-fuckable: decide yes. [Can this NPC be fucked with a penis when defeated?]

To decide which number is the submissiveness of (M - woman-player):
	decide on DOMINANT-DOMINANT.

To compute unique dominance reward of (M - woman-player):
	WomanSluttify.

To penetration dominate (M - woman-player):
	let C be a random bottom level protection clothing;
	let L be sexual-penis-length;
	say "You force [NameDesc of M] onto [his of M] knees, [if C is not strapon-panties and C is clothing]pull out[otherwise]take[end if] your [SexDesc of penis].[line break][speech style of M]'[one of]Huh? If you wanted to have sex, you could have just said...'[or]Okay, okay!'[stopping][roman type][line break][big he of M] [if L > 8]looks at your [manly-penis] with awe.[line break][speech style of M]'Holy shit that's big... Maybe let's try doing it like this...'[otherwise if L > 4]turns around to embrace you.[line break][speech style of M]'How about for once in this god forsaken place, two people have sex while actually looking at each other?'[otherwise]Grins and tickles your [sissy-penis].[line break][speech style of M]'Might as well try and enjoy this little thing...'[end if][roman type][line break]";
	cutshow Figure of Barbara Cutscene 15 for M;
	say "You are locked into a bizarrely intimate episode of intercourse with [NameDesc of M]. As you lock arms around each other, there's nowhere to look except into your eyes.[line break][speech style of M]'In some ways, this feels more wrong than doggy-style, doesn't it? And yet, it feels so right, too...'[roman type][line break]All you can do is moan in response as you climax inside of [him of M].";
	now player-fucking is DOMINANT-NEUTRAL;
	orgasm;
	FuckGet.

Part 7 - Conversation

To say conventional greeting of (M - woman-player):
	if the woman-status of M is 0 and M is stranger:
		say FirstGreeting to M;
	otherwise:
		if the bimbo of the player < 4:
			say "'Hi again, [womanName].'";
		otherwise if the bimbo of the player < 8:
			say "'Hey there, [womanName] what's up?'";
		otherwise if the bimbo of the player < 10:
			say "'Hey hey [womanName], looking good!'";
		otherwise if the bimbo of the player < 12:
			say "'Hiya [womanName], damn you're sexy!'";
		otherwise if the bimbo of the player < 15:
			say "'Ooh [womanName], I want you bad!'";
		otherwise:
			say "'Hey [womanName], looking for a fuck?'".

To compute basic greeting to (M - woman-player):
	if M is uninterested, check guaranteed perception of M; [This should make sure all flags and variable trackings are as normal for an NPC]
	if the woman-status of M is 0 and M is stranger:
		say "[speech style of M]'Oh shit! Wait... oh my god, are you another player? I didn't realise there was more than one of us playing at the same time! [if the faint count of the player > 1]No wonder the map keeps resetting around me... [otherwise if the faint count of the player is 1]No wonder the map shifted around me a while ago! [end if]I wonder if we're allowed to work together? What's my name? My name... I can't think of anything except [']Barbara[']... but I don't think that is my real name...'[roman type][line break]";
		if newbie tips is 1, say "[newbie style]Newbie tip: Barbara is a special type of NPC, that under normal circumstances remains friendly throughout the entire course of the game, and will even fight alongside you, or appear to help you out of sticky situations. However if bad things happen, including if you lose a fight alongside [him of M], [he of M]'ll start to lose the game [himself of M], and become more slutty. Also, sometimes when you bump into [him of M] [he of M]'ll be in the middle of a predicament, and you have to choose whether to help [him of M] or let it happen. Letting it happen usually either avoids the risk of bad stuff, or rewards you with powerful items. However, it'll continue Barbara's progress towards becoming a brainless bimbo. A super slutty Barbara is a sort-of useless sidekick who can even do really unhelpful things like release the [ShortDesc of minotaur].[roman type][line break]";
		now M is introduced;
		now the text-shortcut of M is "ba";
	otherwise if the woman-status of M is 91 and the mechanic-scene of M <= 5 and M is in the location of the player and mechanic is unfriendly:
		say "[speech style of M]'HYUK HYUK HYUK'[roman type][line break]";
	otherwise if the woman-status of M is 80:
		say "[speech style of M]'MMMMPH!'[roman type][line break]";
	otherwise if M is angered:
		say "[speech style of M]'Why yes I would like to [if the woman-bimbo of the M < 5]fight[otherwise]fuck[end if].'[roman type][line break]";
	otherwise if M is partially-enslaved and the current-errand of M is no-errand:
		now the current-errand of M is satisfy-pimp-errand;
		now the current-reward of M is alliance-reward;
		say "[speech style of M]'Oh [NameBimbo], I've got myself in a terrible pickle! That nasty pimp [unless playerRegion is hotel]up in the hotel [end if]has attached this portal thing to my breasts, and has said that I'm in so much debt with [him of pimp] that [he of pimp][']ll be letting [men of male-m] play with my tits for the rest of my days... I don't know what to do! [big he of pimp] clearly doesn't trust me... Is there any way you could negotiate something with [him of pimp]? I'd be forever in your debt...'[roman type][line break]";
	otherwise if the woman-status of M is 0:
		if M is interested:
			say "[speech style of M]'I hate being alone in these woods...'[roman type][line break]";
		otherwise:
			if the woman-bimbo of M < 3:
				say "[speech style of M]'Hi again. Glad to see you're still coping[if the woman-old-bimbo of M is not the woman-bimbo of M]. My name is [current-name of M] now, by the way.'[otherwise].'[end if][roman type][line break]";
			otherwise if the woman-bimbo of M < 5:
				say "[big he of M] grins at you.[line break][speech style of M]'[if the woman-old-bimbo of M is not the woman-bimbo of M]That's not my name, it's [current-name of M]!'[otherwise]Heya sweetums.'[end if][roman type][line break]";
			otherwise:
				say "[speech style of M]'*giggle*. [if the woman-old-bimbo of M is not the woman-bimbo of M]That's not my name, my new super sexy name is [current-name of M]!'[otherwise]Look who it is! Did you always look so fucking hot? I'm jealous!'[end if][roman type][line break]";
	otherwise if the woman-status of M is 1:
		if M is interested:
			say "[speech style of M]'There are lots of sex dolls around here at the moment, aren't there?'[roman type][line break]";
		otherwise:
			if the woman-bimbo of M < 3:
				say "[speech style of M]'Hi again. Glad to see you're still coping[if the woman-old-bimbo of M is not the woman-bimbo of M]. My name is [current-name of M] now, by the way[end if].'[roman type][line break]";
			otherwise if the woman-bimbo of M < 5:
				say "[big he of M] grins at you.[line break][speech style of M]'[if the woman-old-bimbo of M is not the woman-bimbo of M]That's not my name, it's [current-name of M]!'[otherwise]Heya sweetums.'[end if][roman type][line break]";
			otherwise:
				say "[speech style of M]'*giggle*. [if the woman-old-bimbo of M is not the woman-bimbo of M]That's not my name, my new super sexy name is [current-name of M]!'[otherwise]Look who it is! Did you always look so fucking hot? I'm jealous!'[end if][roman type][line break]";
	otherwise if the woman-status of M is 2 or the woman-status of M is 7:
		if the favour of M < the bondage-favour-limit of M:
			say "[speech style of M]'Karma's a bitch, but not as much of a bitch as you.'[roman type][line break]";
		otherwise if the woman-old-bimbo of M is the woman-bimbo of M:
			if the woman-bimbo of M < 3:
				say "[speech style of M]'You should be more careful, bondage is really difficult to deal with.'[roman type][line break]";
			otherwise if the woman-bimbo of M < 5:
				say "[speech style of M]'Bondage might sound fun, but it really makes it a lot more difficult to play the game.'[roman type][line break]";
			otherwise:
				say "[speech style of M]'You don't know how tempting it was to have my way with you before setting you free~'[roman type][line break]";
		otherwise:
			if the woman-bimbo of M < 3:
				say "[speech style of M]'Hi again. Glad to see you're still coping[if the woman-old-bimbo of M is not the woman-bimbo of M]. My name is [current-name of M] now, by the way[end if].'[roman type][line break]";
			otherwise if the woman-bimbo of M < 5:
				say "[big he of M] grins at you.[line break][speech style of M]'[if the woman-old-bimbo of M is not the woman-bimbo of M]That's not my name, it's [current-name of M]!'[otherwise]Heya sweetums.'[end if][roman type][line break]";
			otherwise:
				say "[speech style of M]'*giggle*. [if the woman-old-bimbo of M is not the woman-bimbo of M]That's not my name, my new super sexy name is [current-name of M]!'[otherwise]Look who it is! Did you always look so fucking hot? I'm jealous!'[end if][roman type][line break]";
	otherwise if the woman-status of M is 3:
		if the woman-old-bimbo of M is the woman-bimbo of M:
			if the woman-bimbo of M < 3:
				say "[speech style of M]'The minotaur is very tough. Now that it's released, you should probably get the hell out of here!'[roman type][line break]";
			otherwise if the woman-bimbo of M < 5:
				say "[speech style of M]'I doubt you can take the minotaur. Unless you've got a bit of blind optimism like me, you should probably head back up to the woods.'[roman type][line break]";
			otherwise:
				say "[speech style of M]'If you want to have some fun, stay down here with me!'[roman type][line break]";
		otherwise:
			if the woman-bimbo of M < 3:
				say "[speech style of M]'Hi again. Glad to see you're still coping[if the woman-old-bimbo of M is not the woman-bimbo of M]. My name is [current-name of M] now, by the way.'[otherwise].'[end if][roman type][line break]";
			otherwise if the woman-bimbo of M < 5:
				say "[big he of M] grins at you.[line break][speech style of M]'[if the woman-old-bimbo of M is not the woman-bimbo of M]That's not my name, it's [current-name of M]!'[otherwise]Heya sweetums.'[end if][roman type][line break]";
			otherwise:
				say "[speech style of M]'*giggle*. [if the woman-old-bimbo of M is not the woman-bimbo of M]That's not my name, my new super sexy name is [current-name of M]!'[otherwise]Look who it is! Did you always look so fucking hot? I'm jealous!'[end if][roman type][line break]";
	otherwise if the woman-status of M is 4:
		if M is interested:
			say "[speech style of M]'Hmm, robots are kind of sexy, I guess?'[roman type][line break]";
		otherwise:
			if the woman-bimbo of M < 3:
				say "[speech style of M]'Hi again. Glad to see you've made it this far[if the woman-old-bimbo of M is not the woman-bimbo of M]. My name is [current-name of M] now, by the way[end if].'[roman type][line break]";
			otherwise if the woman-bimbo of M < 5:
				say "[big he of M] beams at you.[line break][speech style of M]'[if the woman-old-bimbo of M is not the woman-bimbo of M]That's not my name, it's [current-name of M]!'[otherwise]Hey there, honey.'[end if][roman type][line break]";
			otherwise:
				say "[speech style of M]'*giggle*. [if the woman-old-bimbo of M is not the woman-bimbo of M]I'm not called that any more, my name is obviously [current-name of M]!'[otherwise]Look who it is! Aren't you just LOVING this fetish hotel?'[end if][roman type][line break]";
	otherwise if the woman-status of M is 5:
		say "[speech style of M]'[one of][if the woman-bimbo of M < 4]Let's not talk about what just happened okay? [big please]?'[otherwise if the woman-bimbo of M is 4]I can't believe I let you catch me in such a humiliating moment. Maybe I really am a slut...'[otherwise]I feel so much better after sitting on that dildo chair! Yum!'[end if][or][if the woman-bimbo of M < 4]Come on, let's try and find the exit to this crazy hotel.'[otherwise]Exploring the hotel with you is so much fun!'[end if][stopping][roman type][line break]";
		if the woman-old-bimbo of M is not the woman-bimbo of M, say "[speech style of M]'My name is [current-name of M] now, by the way.'[roman type][line break]";
	otherwise if the woman-status of M is 90:
		say "[speech style of M]'Let's keep away from those vines, shall we?'[roman type][line break]";
	otherwise if the woman-status of M is 94:
		let HT be a random revealed hypno trap in the location of M;
		if HT is a thing and HT is not expired:
			say "[speech style of M]'Huh? Oh crap, another hypno trap! Let's get out of here!'[roman type][line break]";
			compute mandatory room leaving of M;
			now M is uninterested;
		otherwise:
			say "[speech style of M]'Those TV screens are so difficult to stop watching...'[roman type][line break]";
	otherwise if the woman-status of M is 95:
		say "[speech style of M]'Thank you so much for saving me from that toilet prison. It was on a timer and if nobody saved me within the next few minutes, it would have locked permanently!'[roman type][line break]";
	otherwise if the woman-status of M is 98:
		say "[speech style of M]'I think maybe we should chat properly after I get out of here.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'I'm not sure I want to talk right now.'[roman type][line break]";
	interest M;
	update woman name and bimbo.

talk-barbara-question is a talk-object.

To consider (T - talk-barbara-question) for (M - a monster):
	if M is woman-player and M is interested and M is not stranger:
		now the printed name of T is the substituted form of "[variable custom style][BarbaraQuestion][roman type][line break]";
		set next numerical response to the substituted form of "[printed name of T]";

To say BarbaraQuestion:
	let M be woman-player;
	if the woman-status of M is 0:
		if the woman-bimbo of M < 3:
			say "'How did you get that gun?'";
		otherwise if the woman-bimbo of M < 5:
			say "'Are you a man or woman in real life?'";
		otherwise:
			say "'What happened to you?'";
	otherwise if the woman-status of M is 2 and the favour of M < the bondage-favour-limit of M:
		say "'Could I please use your skeleton key?'";
	otherwise if the woman-status of M is 3 or playerRegion is Dungeon:
		say "'Why are you back down here?'";
	otherwise if playerRegion is Hotel:
		say "'Why are you visiting the Hotel?'";
	otherwise:
		say "'Can we chat?'".

To execute (T - talk-barbara-question) for (M - a monster):
	let HT be a random revealed hypno trap in the location of M;
	if the woman-status of M is 91 and the mechanic-scene of M <= 5 and M is in the location of the player and mechanic is unfriendly:
		say "[speech style of M]'HYUK HYUK HYUK'[roman type][line break]";
	otherwise if the woman-status of M is 80:
		say "[speech style of M]'MMMMPH!'[roman type][line break]";
	otherwise if M is angered:
		say "[speech style of M]'[if the player is upright]That's a great question. Let me answer it with my fist.'[otherwise]I don't think you're in the position to be the one asking questions right now, do you?'[roman type][line break]";
	otherwise if HT is a thing and HT is not expired: [looking at hypno trap]
		say "[speech style of M]'Uuuuuuuuh...'[roman type][line break]";
	otherwise if the woman-status of M is 0:
		if the woman-bimbo of M < 3:
			say "[speech style of M]'You don't want to know what I had to do to get this gun.'[roman type][line break][big he of M] looks ashamed.";
		otherwise if the woman-bimbo of M < 5:
			say "[speech style of M]'I'm clearly a woman! I think.'[roman type][line break]";
		otherwise:
			say "[speech style of M]'Lots of fun things, that's what!'[roman type][line break]";
	otherwise if the woman-status of M is 2 and the favour of M < the bondage-favour-limit of M:
		say "[speech style of M]'Fuck no. [one of]Why am I not giving you the key? Payback, of course. What else?'[or]Payback for what? You bloody well know what.'[or]Plead all you want, I'm not changing my mind.'[stopping][roman type][line break]";
	otherwise if the woman-status of M is 3:
		if the woman-bimbo of M < 5:
			say "[speech style of M]'Can you keep a secret? I may have pulled the lever for the [ShortDesc of minotaur]! Teehee!'[roman type][line break]";
		otherwise:
			say "[speech style of M]'To [']fight['] the [ShortDesc of minotaur], of course, silly!'[roman type][line break]";
	otherwise if the woman-status of M is 98:
		say "[speech style of M]'I think maybe we should chat properly after I get out of here.'[roman type][line break]";
	otherwise if playerRegion is Dungeon:
		if the woman-bimbo of M < 3:
			say "[speech style of M]'Well the shop and altar are often useful, and until the royal guards turn aggressive it's a bit safer than anywhere else.'[roman type][line break]";
		otherwise if the woman-bimbo of M < 5:
			say "[speech style of M]'Well the sex dolls are easy to beat, and that shopkeeper is just so delicious...'[roman type][line break]";
		otherwise:
			say "[speech style of M]'Well I wanted to see if I could beat up a royal guard. Turns out I can't, but don't worry, [he of a random royal guard] gave me a consolation prize! *giggle*'[roman type][line break]";
	otherwise if playerRegion is Hotel:
		if the woman-bimbo of M < 4:
			say "[speech style of M]'[one of]I'm still looking for the way out. I hope you haven't fallen into complete depravity yet, have you?'[or]I'd just had way too much trouble with those vines, so I came up here to get away from here. And now I have to deal with robots! Grr!'[cycling][roman type][line break]";
		otherwise:
			say "[speech style of M]'I'm getting myself some deliciously thick robot cock! What about you?'[roman type][line break]";
	otherwise:
		say "[speech style of M]'I'm sorry I don't really feel in the mood right now.'[roman type][line break]".

To compute friendly drink of (M - woman-player):
	if M is uninterested or M is stranger:
		say "[big he of M] doesn't seem to realise you're talking to [him of M].";
	otherwise if M is angered:
		say "[speech style of M]'As if I'd help you!'[roman type][line break]";
	otherwise if the woman-status of M is 91 and the mechanic-scene of M <= 5 and M is in the location of the player and mechanic is unfriendly:
		say "[speech style of M]'HYUK HYUK HYUK'[roman type][line break]";
	otherwise if the woman-status of M is 80:
		say "[speech style of M]'MMMMPH!'[roman type][line break]";
	otherwise if the woman-bimbo of M is 6:
		compute woman cum drink offer;
	otherwise:
		say "[speech style of M]'I'm sorry, I've got nothing!'[roman type][line break]".

To compute friendly food of (M - woman-player):
	if M is stranger:
		say "[big he of M] doesn't seem to realise you're talking to [him of M].";
	otherwise if M is angered:
		say "[speech style of M]'As if I'd help you!'[roman type][line break]";
	otherwise if the woman-status of M is 91 and the mechanic-scene of M <= 5 and M is in the location of the player and mechanic is unfriendly:
		say "[speech style of M]'HYUK HYUK HYUK'[roman type][line break]";
	otherwise if the woman-status of M is 80:
		say "[speech style of M]'MMMMPH!'[roman type][line break]";
	otherwise if the woman-bimbo of M is 6:
		compute woman cum drink offer;
	otherwise:
		say FriendlyFoodApologiseFlav of M.

To compute woman cum drink offer:
	say "[speech style of woman-player]'I've been saving some [tasty] cum in my [if a2m fetish > 2]ass[otherwise][pussy][end if] if you want some!'[roman type][line break]";
	if the semen taste addiction of the player < 4:
		say "You can't bring yourself to even begin to consider that offer.";
	otherwise:
		say "Do you drink [semen] from [his of woman-player] fuckhole?";
		if the player is bimbo consenting:
			say "You create a seal around [NameDesc of woman-player][']s [if a2m fetish > 2]asshole[otherwise]love tunnel[end if] with your [LipDesc] and suck and slurp as [he of woman-player] pushes multiple thick loads of warm [semen] into your mouth. [strongHumiliateReflect]";
			if a2m fetish > 2, OralSexAddictUp 1;
			FaceFill semen by 4;
			suggest swallowing with semen consequences.

To compute disgusting spit reaction of (M - woman-player):
	compute boring spit reaction of M.

To compute boring spit reaction of (M - woman-player):
	say "[BigNameDesc of M] [one of]wrinkles [his of M] nose[or]frowns[or]pouts[in random order].[line break][speech style of M]'[one of]Really? Right in front of my salad[or]Do you mind[stopping]?'[roman type][line break][slightHumiliateReflect]".

Part - Unused Functions

To compute WrestlerUrinalCompletion:
	do nothing.

Woman Barbara ends here.
