Necessary Figures by DQ Only Stuff begins here.

Figure of acolyte 5 is the file "NPCs/Mansion/Cultist/cultist5.png".
To decide which figure-name is the monster-image of (M - an acolyte):
	decide on figure of acolyte 5.

Figure of agent angry is the file "NPCs/MultiFloor/Agent/agent2b.png".
Figure of agent camera cutscene 1 is the file "NPCs/MultiFloor/Agent/cutscene-agent4.jpg".
Figure of agent camera cutscene 2 is the file "NPCs/MultiFloor/Agent/cutscene-agent5.jpg".

Figure of bianca defeated is the file "NPCs/School/Teacher/teacher3c.png".

Figure of demoness cutscene 15 is the file "NPCs/Forest/Demoness/cutscene-demoness-dq-facesit1.jpg".
Figure of detention chair is the file "Env/School/detentionchair2.jpg".

Figure of dominatrix 1 is the file "NPCs/Hotel/Dominatrix/diapernatrix1.jpg".
Figure of diapernatrix cutscene 1 is the file "NPCs/Hotel/Dominatrix/cutscene-dominatrix-bottle1.jpg".
To decide which figure-name is the monster-image of (M - dominatrix):
	if M is feeding the player, decide on figure of diapernatrix cutscene 1;
	decide on figure of dominatrix 1.
Figure of dominatrix cage wrestler 1 is the file "Env/Hotel/cage3.jpg".
Figure of dominatrix cage wrestler 2 is the file "Env/Hotel/cage4.jpg".
Figure of dominatrix cage berri 1 is the file "Env/Hotel/cage5.jpg".
Figure of dominatrix cage berri 2 is the file "Env/Hotel/cage6.jpg".
Figure of dominatrix cage berri 3 is the file "Env/Hotel/cage7.jpg".
Figure of dominatrix cage berri 4 is the file "Env/Hotel/cage8.jpg".
To decide which figure-name is the examine-image of (C - dominatrix-cage):
	let M be a random caged wrestler in the location of dominatrix-cage;
	if M is monster:
		if M is messy, decide on figure of dominatrix cage wrestler 2;
		decide on figure of dominatrix cage wrestler 1;
	if woman-player is caged and woman-player is in the location of dominatrix-cage:
		if the mess of dominatrix-cage > 1:
			if diaper messing >= 3, decide on figure of dominatrix cage berri 4;
			decide on figure of dominatrix cage berri 3;
		if woman-player is messy, decide on figure of dominatrix cage berri 2;
		decide on figure of dominatrix cage berri 1;
	decide on figure of dominatrix cage empty.

Figure of DungeonScenery01 is the file "Env/Dungeon/statue2.jpg".

Figure of enema tag 1 is the file "Special/Cutscene/cutscene-enema-tag-1b.jpg".
Figure of enema tag 1 finish line is the file "Special/Cutscene/cutscene-enema-tag-1d.jpg".
Figure of enema tag 2 is the file "Special/Cutscene/cutscene-enema-tag-2b.jpg".
Figure of enema tag 2 finish line is the file "Special/Cutscene/cutscene-enema-tag-2d.jpg".
Figure of enema tag 3 is the file "Special/Cutscene/cutscene-enema-tag-3b.jpg".
Figure of enema tag 3 finish line is the file "Special/Cutscene/cutscene-enema-tag-3d.jpg".

Figure of Gladiator is the file "NPCs/MultiFloor/Gladiator/gladiator1a.jpg".

Figure of ghost 5 is the file "NPCs/Mansion/Ghost/ghost5.png".
Figure of ghost 6 is the file "NPCs/Mansion/Ghost/ghost6.png".
Figure of ghost 7 is the file "NPCs/Mansion/Ghost/ghost7.png".
To decide which figure-name is the monster-image of (M - ghostly tentacle):
	decide on figure of ghost 5.
To decide which figure-name is the monster-image of (M - a ghost):
	decide on figure of ghost 6.
To decide which figure-name is the monster-image of (M - jismbodied ghost):
	decide on figure of ghost 7.

Figure of hotel toilet room 2 is the file "Map/Hotel/HotelBath3.png".

Figure of IronMaidenBackground is the file "Map/maiden2.png".

Figure of Maths Predicament Xray 1 is the file "Special/Cutscene/cutscene-maths-dq-xray1.jpg".
Figure of Maths Predicament 1 is the file "Special/Cutscene/cutscene-maths-dq1.jpg".
Figure of Maths Predicament 2 is the file "Special/Cutscene/cutscene-maths-dq2.jpg".

To decide which figure-name is figure of maths predicament:
	if maths-timer is -100:
		decide on figure of maths predicament xray 1;
	otherwise if there is a worn messed knickers:
		decide on figure of maths predicament 2;
	otherwise:
		decide on figure of maths predicament 1.

Figure of Mimic Cutscene 1 is the file "Special/Cutscene/cutscene-mimic1.jpg".
Figure of Mimic Cutscene 2 is the file "Special/Cutscene/cutscene-mimic2.jpg".
Figure of Mimic Cutscene 3 is the file "Special/Cutscene/cutscene-mimic3.jpg".
Figure of Mimic Cutscene 4 is the file "Special/Cutscene/cutscene-mimic4.jpg".

Figure of Mirror Cutscene 1 is the file "Special/Cutscene/cutscene-mirror1.jpg".
Figure of Mirror Cutscene 2 is the file "Special/Cutscene/cutscene-mirror2.jpg".
Figure of Mirror Cutscene 3 is the file "Special/Cutscene/cutscene-mirror3.jpg".

Figure of nintendolls gameshow 4 is the file "Special/Epilogue/epilogue-nintendolls-gameshow4b.jpg".

Figure of female orc is the file "NPCs/Dungeon/Orc/orc2b.png".


Figure of white gross patron is the file "NPCs/Hotel/Patron/patron5a.png".
Figure of black gross patron is the file "NPCs/Hotel/Patron/patron6a.png".
Figure of femme white experienced patron is the file "NPCs/Hotel/Patron/patron3c.png".
Figure of femme black experienced patron is the file "NPCs/Hotel/Patron/patron4c.png".
Figure of femme white gross patron is the file "NPCs/Hotel/Patron/patron5b.png".
Figure of femme black gross patron is the file "NPCs/Hotel/Patron/patron6c.png".
Figure of femme white dickhead patron is the file "NPCs/Hotel/Patron/patron7c.png".
Figure of femme black dickhead patron is the file "NPCs/Hotel/Patron/patron8c.png".

Figure of pink smoke 0 is the file "Env/MultiFloor/smoke0.jpg".
Figure of pink smoke 1 is the file "Env/MultiFloor/smoke1.jpg".
Figure of pink smoke 2 is the file "Env/MultiFloor/smoke2.jpg".

To decide which figure-name is the examine-image of (T - pink smoke):
	if the player is upright, decide on figure of pink smoke 0;
	if the player is sexed female, decide on figure of pink smoke 2;
	decide on figure of pink smoke 1.

Figure of babhound is the file "NPCs/Mansion/Hound/hound3.png".
Figure of Puppy Cutscene 1 is the file "NPCs/Mansion/Hound/cutscene-puppy1.jpg".
Figure of Puppy Cutscene 2 is the file "NPCs/Mansion/Hound/cutscene-puppy2.jpg".
Figure of Puppy Cutscene 3 is the file "NPCs/Mansion/Hound/cutscene-puppy3.jpg".
Figure of Puppy Cutscene 4 is the file "NPCs/Mansion/Hound/cutscene-puppy4.jpg".
Figure of Puppy Cutscene 5 is the file "NPCs/Mansion/Hound/cutscene-puppy5.jpg".
Figure of Puppy Cutscene 6 is the file "NPCs/Mansion/Hound/cutscene-puppy6.jpg".

Figure of Podium Cutscene 1 is the file "Special/Cutscene/cutscene-podium1.jpg".
Figure of Podium Cutscene 2 is the file "Special/Cutscene/cutscene-podium2.jpg".

Figure of quiz predicament is the file "Special/Cutscene/cutscene-quiz2.jpg".

Figure of rank 2 candy is the file "NPCs/School/Student/student5c.png".
Figure of rank 3 candy dry is the file "NPCs/School/Student/student5e.png".
Figure of rank 3 candy messy is the file "NPCs/School/Student/student5eM.png".
Figure of rank 3 candy double diaper is the file "NPCs/School/Student/student5eD.png".
To decide which figure-name is figure of rank 3 candy:
	if student-candy is messy, decide on figure of rank 3 candy messy;
	if the student-diaper-mess of student-candy is 1, decide on figure of rank 3 candy double diaper;
	decide on figure of rank 3 candy dry.
Figure of rank 4 candy is the file "NPCs/School/Student/student5g.png".

Figure of rank 2 laci is the file "NPCs/School/Student/student3f.png".
Figure of rank 3 laci dry is the file "NPCs/School/Student/student3g.png".
Figure of rank 3 laci messy is the file "NPCs/School/Student/student3gm.png".
Figure of rank 3 laci double diaper messy is the file "NPCs/School/Student/student3gmd.png".
To decide which figure-name is figure of rank 3 laci:
	if student-laci is messy:
		if the student-extra-diapers of student-laci > 0, decide on figure of rank 3 laci double diaper messy;
		decide on figure of rank 3 laci messy;
	decide on figure of rank 3 laci dry.
Figure of rank 4 laci is the file "NPCs/School/Student/student3h.png".
Figure of rank 5 laci is the file "NPCs/School/Student/student3i.png".

Figure of rank 2 misty is the file "NPCs/School/Student/student4c.png".
Figure of rank 3 misty is the file "NPCs/School/Student/student4e.png".
Figure of rank 4 misty is the file "NPCs/School/Student/student4g.png".
Figure of rank 5 misty is the file "NPCs/School/Student/student4h.png".

Figure of rank 1 rosie is the file "NPCs/School/Student/student1a.png".
Figure of rank 2 rosie is the file "NPCs/School/Student/student1c.png".

Figure of shopkeeper 1a is the file "NPCs/Dungeon/Shopkeeper/shopkeeper4.jpg".
Figure of shopkeeper 1b is the file "NPCs/Dungeon/Shopkeeper/shopkeeper4b.jpg".
To decide which figure-name is Figure of Shopkeeper 1:
	if shopkeeper is in Dungeon41, decide on Figure of shopkeeper 1a;
	decide on Figure of shopkeeper 1b.
Figure of babified shopkeeper urinal is the file "NPCs/Dungeon/Shopkeeper/shopkeeper6a.jpg".
Figure of babified shopkeeper is the file "NPCs/Dungeon/Shopkeeper/shopkeeper6b.jpg".
To decide which figure-name is the pacified-image of (M - shopkeeper):
	if M is diaper-enslaved, decide on figure of babified shopkeeper;
	decide on figure of Missing NPC.

Figure of swirlie knickers clean is the file "Special/Cutscene/cutscene-swirlie3.jpg".
Figure of swirlie knickers wet is the file "Special/Cutscene/cutscene-swirlie4.jpg".

Figure of Teacher Hannah is the file "NPCs/School/Teacher/teacher5a.png".

Figure of throne is the file "Env/Dungeon/throne1b.jpg".
Figure of transformed throne is the file "Env/Dungeon/throne2b.jpg".

Figure of Train Predicament Cutscene is the file "Special/Train/profile2.jpg".
Figure of Train Predicament Player White is the file "Special/Train/train__0003_Figure-Dip.png".
Figure of Train Predicament Player Green is the file "Special/Train/train__0026_Figure-Dip-2.png".
To decide which figure-name is Figure of Train Predicament Player:
	if plain-largish-diaper is messed or plain-largish-diaper is dry, decide on Figure of Train Predicament Player Green;
	otherwise decide on Figure of Train Predicament Player White.

Figure of trashcan empty is the file "Items/Accessories/Other/trashcan1.png".
Figure of trashcan 1 wet diaper is the file "Items/Accessories/Other/trashcan4a.png".
Figure of trashcan 2 wet diapers is the file "Items/Accessories/Other/trashcan4b.png".
Figure of trashcan 1 messy diaper is the file "Items/Accessories/Other/trashcan5a.png".
Figure of trashcan 2 messy diapers is the file "Items/Accessories/Other/trashcan5b.png".

To decide which figure-name is clothing-image of (C - trashcan):
	if the diaper-fill of C > 1:
		if diaper messing >= 6, decide on Figure of trashcan 2 messy diapers;
		otherwise decide on Figure of trashcan 2 wet diapers;
	otherwise if the diaper-fill of C > 0:
		if diaper messing >= 6, decide on Figure of trashcan 1 messy diaper;
		otherwise decide on Figure of trashcan 1 wet diaper;
	decide on Figure of trashcan empty.

Figure of urinal is the file "Env/MultiFloor/urinal2.png".
To decide which figure-name is the examine-image of (T - urinal):
	if the player is in School27, decide on figure of staff room urinal;
	decide on figure of urinal.

Figure of Vibe Pose Predicament 1 is the file "Special/Cutscene/cutscene-vibe-pose3.jpg".
Figure of Vibe Pose Predicament 2 is the file "Special/Cutscene/cutscene-vibe-pose4.jpg".

Figure of Vines Cutscene 3a is the file "Special/Cutscene/cutscene-vines3a.jpg".
Figure of Vines Cutscene 3b is the file "Special/Cutscene/cutscene-vines3b.jpg".

Figure of WoodsStatueButtonHead is the file "Special/Buttons/statue3d.jpg".
Figure of WoodsStatueButtonHand is the file "Special/Buttons/statue3e.jpg".
Figure of WoodsStatueButtonFoot is the file "Special/Buttons/statue3f.jpg".

Figure of cutscene-xavier-nightmare-diaper-clean is the file "NPCs/Bosses/Xavier/cutscene-xavier-nightmare-diaper1.jpg".
Figure of cutscene-xavier-nightmare-diaper-messy is the file "NPCs/Bosses/Xavier/cutscene-xavier-nightmare-diaper2.jpg".
Figure of cutscene-xavier-nightmare-gag-clean is the file "NPCs/Bosses/Xavier/cutscene-xavier-nightmare-gag1.jpg".
Figure of cutscene-xavier-nightmare-gag-wet is the file "NPCs/Bosses/Xavier/cutscene-xavier-nightmare-gag2.jpg".
Figure of cutscene-xavier-nightmare-belt-clean is the file "NPCs/Bosses/Xavier/cutscene-xavier-nightmare-belt1.jpg".
Figure of cutscene-xavier-nightmare-belt-messy is the file "NPCs/Bosses/Xavier/cutscene-xavier-nightmare-belt2.jpg".

Figure of Babified Royal Guard 1 is the file "NPCs/Dungeon/royalguardbab1.jpg".
Figure of Babified Royal Guard 2 is the file "NPCs/Dungeon/royalguardbab2.jpg".
To decide which figure-name is the pacified-image of (M - a royal guard):
	if the refractory-period of M <= 0 and diaper messing >= 6, decide on figure of Babified Royal Guard 2;
	decide on figure of Babified Royal Guard 1.

[Figure of caged pail princess is the file "NPCs/MultiFloor/Princess/cage7.jpg".]
Figure of caged pail princess messy is the file "NPCs/MultiFloor/Princess/cage6.jpg".
Figure of caged pail princess facedown is the file "NPCs/MultiFloor/Princess/cage8.jpg".
Figure of dark princess 1 is the file "NPCs/MultiFloor/Princess/darkprincess3.jpg".
Figure of dark princess 2 is the file "NPCs/MultiFloor/Princess/darkprincess4.jpg".
Figure of dark princess 3 is the file "NPCs/MultiFloor/Princess/darkprincess5.jpg".
Figure of dark princess 4 is the file "NPCs/MultiFloor/Princess/darkprincess6.jpg".
Figure of dark princess 5 is the file "NPCs/MultiFloor/Princess/darkprincess7.jpg".
Figure of princess final battle plug is the file "NPCs/MultiFloor/Princess/cutscene-princess-final-battle4a.jpg".
Figure of princess final battle victory is the file "NPCs/MultiFloor/Princess/cutscene-princess-final-battle7a.jpg".
Figure of dark princess final battle defeat clean is the file "NPCs/MultiFloor/Princess/cutscene-dark-princess-final-battle1a.jpg".
Figure of dark princess final battle defeat messy is the file "NPCs/MultiFloor/Princess/cutscene-dark-princess-final-battle1b.jpg".
To decide which figure-name is figure of princess final battle final chance:
	if diaper messing >= 7 and (the uses of final-battle-final-chance >= 2 or ex-princess is penetrating face), decide on Figure of dark princess final battle defeat messy;
	otherwise decide on Figure of dark princess final battle defeat clean.

To decide which figure-name is the clothing-image of (C - runic headband):
	decide on figure of runic headband.

Figure of change self tattoo is the file "Items/Tats/tattoo110.jpg".
To decide which figure-name is the examine-image of (T - change-self tattoo):
	decide on figure of change self tattoo.

Figure of cloth revolution tattoo is the file "Items/Tats/tattoo56.jpg".
To decide which figure-name is the examine-image of (T - cloth revolution tattoo):
	decide on figure of cloth revolution tattoo.

Figure of cum when messing male tattoo is the file "Items/Tats/tattoo119a.jpg".
Figure of cum when messing female tattoo is the file "Items/Tats/tattoo119b.jpg".
To decide which figure-name is the examine-image of (T - cum-when-messing tattoo):
	if the player is not possessing a penis, decide on Figure of cum when messing female tattoo;
	decide on Figure of cum when messing male tattoo.

Figure of demon belly mark is the file "Items/Tats/tattoo120.jpg".
To decide which figure-name is the examine-image of (T - demon belly mark):
	decide on figure of demon belly mark.

Figure of diapered dinosaur tattoo is the file "Items/Tats/tattoo74.jpg".
To decide which figure-name is the examine-image of (T - diapered dinosaur tattoo):
	decide on figure of diapered dinosaur tattoo.

Figure of dumb baby tattoo is the file "Items/Tats/tattoo90.jpg".
To decide which figure-name is the examine-image of (T - dumb baby tattoo):
	decide on figure of dumb baby tattoo.

Figure of incontinent-when-speaking tattoo is the file "Items/Tats/tattoo112.jpg".
To decide which figure-name is the examine-image of (T - incontinent-when-speaking tattoo):
	decide on figure of incontinent-when-speaking tattoo.

Figure of kitty cat tattoo is the file "Items/Tats/tattoo69.jpg".
To decide which figure-name is the examine-image of (T - kitty cat tattoo):
	decide on figure of kitty cat tattoo.

Figure of loser tattoo is the file "Items/Tats/tattoo93.jpg".
To decide which figure-name is the examine-image of (T - loser tattoo):
	decide on figure of loser tattoo.

Figure of mushbutt tattoo is the file "Items/Tats/tattoo94.jpg".
To decide which figure-name is the examine-image of (T - mushbutt tattoo):
	decide on figure of mushbutt tattoo.

Figure of princess castle tattoo is the file "Items/Tats/tattoo68.jpg".
To decide which figure-name is the examine-image of (T - princess castle tattoo):
	decide on figure of princess castle tattoo.

Figure of safety pin tattoo is the file "Items/Tats/tattoo55.jpg".
To decide which figure-name is the examine-image of (T - safety pin tattoo):
	decide on figure of safety pin tattoo.

Figure of stinker tattoo is the file "Items/Tats/tattoo91.jpg".
To decide which figure-name is the examine-image of (T - stinker tattoo):
	decide on figure of stinker tattoo.

Figure of teapot tattoo is the file "Items/Tats/tattoo72.jpg".
To decide which figure-name is the examine-image of (T - teapot tattoo):
	decide on figure of teapot tattoo.

Figure of walking teddy bear tattoo is the file "Items/Tats/tattoo99.jpg".
To decide which figure-name is the examine-image of (T - walking teddy bear tattoo):
	decide on figure of walking teddy bear tattoo.

Figure of Face101 is the file "CharWins/FocusWin/Face/face101.jpg".
Figure of Face105 is the file "CharWins/FocusWin/Face/face105.jpg".
Figure of Face111 is the file "CharWins/FocusWin/Face/face111.jpg".
Figure of Face115 is the file "CharWins/FocusWin/Face/face115.jpg".
Figure of Face121 is the file "CharWins/FocusWin/Face/face121.jpg".
Figure of Face125 is the file "CharWins/FocusWin/Face/face125.jpg".
Figure of Face131 is the file "CharWins/FocusWin/Face/face131.jpg".
Figure of Face135 is the file "CharWins/FocusWin/Face/face135.jpg".

To decide which figure-name is the examine-image of (T - face):
	if the make-up of face <= 0:
		if alcohol-level <= 0:
			decide on Figure of Face101;
		otherwise:
			decide on Figure of Face105;
	otherwise if the make-up of face is 1:
		if alcohol-level <= 0:
			decide on Figure of Face111;
		otherwise:
			decide on Figure of Face115;
	otherwise if the make-up of face is 2:
		if alcohol-level <= 0:
			decide on Figure of Face121;
		otherwise:
			decide on Figure of Face125;
	otherwise:
		if alcohol-level <= 0:
			decide on Figure of Face131;
		otherwise:
			decide on Figure of Face135.

Figure of BreastsObject3 is the file "CharWins/FocusWin/Breasts/03.jpg".

To decide which figure-name is the examine-image of (T - breasts):
	decide on figure of BreastsObject3.

Figure of HipsObject3 is the file "CharWins/FocusWin/Hips/hips3.jpg".

To decide which figure-name is the examine-image of (T - hips):
	decide on figure of HipsObject3.

Figure of WoodsScenery02 is the file "Env/Forest/statue7.jpg".

IntroDAnimation is a loading animation track. The pause-frame of IntroDAnimation is 12.

Figure of DiaperIntroBanner is the file "Special/Animations/JammyLoading3/IntroBanner.png".
To decide which figure-name is the bannerImage of (T - IntroDAnimation):
	decide on Figure of DiaperIntroBanner.

Figure of IntroD1 is the file "Special/Animations/JammyLoading3/loading_1.jpg".
Figure of IntroD2 is the file "Special/Animations/JammyLoading3/loading_2.jpg".
Figure of IntroD3 is the file "Special/Animations/JammyLoading3/loading_3.jpg".
Figure of IntroD4 is the file "Special/Animations/JammyLoading3/loading_4.jpg".
Figure of IntroD5 is the file "Special/Animations/JammyLoading3/loading_5.jpg".
Figure of IntroD6 is the file "Special/Animations/JammyLoading3/loading_6.jpg".
Figure of IntroD7 is the file "Special/Animations/JammyLoading3/loading_7.jpg".
Figure of IntroD8 is the file "Special/Animations/JammyLoading3/loading_8.jpg".

To compute unique setup of (T - IntroDAnimation):
	if the number of entries in the image-reel of T is 0:
		fill T from Figure of IntroD1 to 2;
		fill T from Figure of IntroD3 to -2;
		fill T from Figure of IntroD1 to 2;
		fill T from Figure of IntroD3 to -2;
		fill T from Figure of IntroD1 to 2;
		fill T from Figure of IntroD3 to -2;
		fill T from Figure of IntroD1 to 2;
		fill T from Figure of IntroD4 to -3;
		fill T from Figure of IntroD1 to 7;
		add Figure of IntroD7 to the image-reel of T;
		add Figure of IntroD6 to the image-reel of T;
		add Figure of IntroD7 to the image-reel of T;
		add Figure of IntroD8 to the image-reel of T;
		add Figure of IntroD8 to the image-reel of T;
		add Figure of IntroD8 to the image-reel of T.

To decide which number is the frameSlowness of (T - IntroDAnimation):
	decide on 2.

Necessary Figures ends here.
