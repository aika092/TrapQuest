Lake Monster by Objects begins here.


Figure of lake monster is the file "NPCs/Bosses/tentaclemonster1.png".
Figure of Lake Monster Cutscene 1 is the file "Special/Cutscene/cutscene-lake1.jpg".
Figure of Lake Monster Cutscene 2 is the file "Special/Cutscene/cutscene-lake2.jpg".

A lake monster is a kind of person. There is 1 lake monster. The printed name of lake monster is usually "[TQlink of item described][input-style]lake monster[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of lake monster is "lm". A lake monster has a number called semen-sniffing. A lake monster is not portable.

Definition: a lake monster is father material: decide yes.
Definition: A lake monster is live: decide yes.

To decide which number is the girth of (M - a lake monster):
	decide on 10.

A time based rule (this is the lake monster gets bored rule):
	if the semen-sniffing of a random lake monster > 0:
		let L be a random lake monster;
		decrease the semen-sniffing of L by seconds / 2;
		if the semen-sniffing of L <= 0:
			now the semen-sniffing of L is 0;
			if the player is in the location of L, say "The [L]'s tentacles recede into the water. You watch as the large shadow of the [L] travels away from you, back to the far reaches of the lake. Maybe it's safe to wash in here again now?";
			remove L from play;


To decide which figure-name is the examine-image of (C - a lake monster):
	decide on figure of lake monster.

To say ExamineDesc of (C - a lake monster):
	say "You can just about make out the huge shadow of its main body deep beneath the surface, but the only properly visible parts are the strong and seemingly intelligent tentacles that are rising proudly from the water's murky depths.".


To say PregGrowth of (M - a lake monster):
	say "the lake monster's [one of]spawn[or][child][or]babies[as decreasingly likely outcomes]".

[0 = Nothing, 1 = One waiting in front, 2 = One using for sex, 3 = Both 1 and 2, 4 = DP]
A lake monster has a number called m-state.
A lake monster has a number called a-state.
A lake monster has a number called p-state.
A lake monster has a number called b-state.

To compute secondLakeArm of (L - a lake monster):
	let Z be a random number between 1 and 3;
	if Z is 1:
		compute lakePoint to face of L with arm 2;
	otherwise if Z is 2 and face is not actually occupied:
		compute lakePenetrate to face of L with arm 2;
	otherwise if there is a worn breast covering clothing:
		compute lakeShred to breasts of L with arm 2;
	otherwise if the largeness of breasts > 5:
		compute lakePenetrate to breasts of L with arm 2;
	otherwise:
		compute lakePoint to breasts of L with arm 2;
	say "[line break]".

To compute lakePoint to (B - face) of (L - a lake monster) with arm (A - a number):
	say "[if A is 2]The second tentacle starts wrapping itself around your opposite wrist and up your arm. When it reaches your shoulder, it[otherwise if A is 3]The third tentacle wraps around your other arm and towards your face. It[otherwise]It journeys up your front and to your head. It[end if] rounds towards your face and stays there, pointing. From here you can see a tiny opening at the tip of the tentacle[one of]...  and you realise these tentacles are definitely sex organs[or], an all-too-clear reminder of how this ended last time[stopping]!";
	increase the m-state of L by 1.

To compute lakePenetrate to (B - face) of (L - a lake monster) with arm (A - a number):
	say "[if A is 2]The second tentacle starts wrapping itself around your opposite wrist and up your arm. When it reaches your shoulder, it[otherwise if A is 3]The third tentacle wraps around your other arm and towards your face. It[otherwise]It journeys up your front and to your head. It[end if] rounds towards your face and forces its way straight into your mouth!  It [one of]starts pumping away like some sort of sex organ![or]immediately starts pumping away.[stopping]";
	now L is penetrating B;
	increase the m-state of L by 2.

To compute lakeShred to (B - breasts) of (L - a lake monster) with arm (A - a number):
	let N be the number of worn breast covering clothing;
	say "The [if A is 2]second[otherwise]third[end if] tentacle starts wrapping itself around your opposite wrist and up your arm. When it reaches your shoulder, it slithers underneath your [ShortDesc of list of worn breast covering clothing], and in one swift motion rips [if N is 1]it[otherwise]them[end if] from your body, tearing [if N is 1]it[otherwise]them[end if] in half. It pauses and points at your [BreastDesc], as if admiring [if the largeness of breasts > 1]them[otherwise]it[end if].";
	increase the b-state of L by 1;
	repeat with C running through worn breast covering clothing:
		destroy C.

To compute lakePoint to (B - breasts) of (L - a lake monster) with arm (A - a number):
	say "[if A is 2]The second tentacle starts wrapping itself around your opposite wrist and up your arm. When it reaches your shoulder, it[otherwise if A is 3]The third tentacle wraps around your other arm and towards your chest. It[otherwise]It journeys up your front and to your torso. It[end if] curves and points at your [BreastDesc], as if admiring [if the largeness of breasts > 1]them[otherwise]it[end if].";
	increase the b-state of L by 1.

To compute lakePenetrate to (B - breasts) of (L - a lake monster) with arm (A - a number):
	say "[if A is 2]The second tentacle starts wrapping itself around your opposite wrist and up your arm. When it reaches your shoulder, it[otherwise if A is 3]The third tentacle wraps around your other arm and towards your chest. It[end if] slithers [if there is a worn bra]underneath your [printed name of random bra worn by the player] and [end if]between your [BreastDesc], and starts thrusting between them as if it were a [manly-penis] using your tits for sex!";
	now L is penetrating B;
	increase the b-state of L by 2.

To compute lakePoint to (B - vagina) of (L - a lake monster) with arm (A - a number):
	say "[if A is 3]The third tentacle wraps around your other arm and then journeys down your front[otherwise]The fourth tentacle wraps around your other leg[end if], [if there are worn knickers]over your [printed name of random knickers worn by the player], [end if]and starts rubbing its tip against [if the player is male]your inner thighs[otherwise]crotch[end if].";
	increase the p-state of L by 1.

To compute lakePenetrate to (B - vagina) of (L - a lake monster) with arm (A - a number):
	say "[if A is 3]The third tentacle wraps around your other arm and then journeys down your front. [otherwise]The fourth tentacle wraps around your free leg. [end if]";
	while the player is pussy protected:
		let C be a random worn top level protection clothing;
		say "It goes through the top of your [printed name of C] and out a leg hole. It roughly rips them off you and drops them into the depths of the lake. ";
		destroy C;
	say "Then it starts slowly forcing its way into your [if the openness of vagina < 5]tight [end if][vagina][unless the openness of vagina > 8], stretching it painfully as the tentacle's girth increases with depth[end if]. It starts fucking you with a slow rhythm.[if the a-state of L > 1]  You're being double penetrated by this monster![end if]";
	now L is penetrating B;
	increase the p-state of L by 2.

To compute lakeShred to (B - asshole) of (L - a lake monster) with arm (A - a number):
	while the player is ass protected:
		let C be a random worn top level ass protection clothing;
		say "[if A is 3]The third tentacle wraps around your other arm and then slithers down your back and into the back of your [printed name of C] and out one leg hole[otherwise]The fourth tentacle wraps around your free leg into one leg hole of your [printed name of C] and out the other[end if]. The tentacle effortlessly rips them off!  ";
		destroy C;
	while asshole is actually occupied:
		let C be a random thing penetrating asshole;
		say "The [if A is 3]third[otherwise]fourth[end if] tentacle rips your [printed name of C] out and discards it in the lake.";
		destroy C;
	say "You can't see it, but you can almost feel the tentacle hovering near your butt.";
	increase the a-state of L by 1.

To compute lakePoint to (B - asshole) of (L - a lake monster) with arm (A - a number):
	say "[if A is 3]The third tentacle wraps around your other arm and then slithers down your back[otherwise]The fourth tentacle wraps around your free leg[end if] and starts poking against the entrance to your ass!  It doesn't push its way in, though.";
	increase the a-state of L by 1.

To compute lakePenetrate to (B - asshole) of (L - a lake monster) with arm (A - a number):
	say "[if A is 3]The third tentacle wraps around your other arm and then slithers down your back[otherwise]The fourth tentacle wraps around your free leg[end if] and starts poking against the entrance to your ass!  [if the openness of asshole < 5]It slowly forces it way in and then[otherwise]It glides in easily, and[end if] it starts thrusting away, fucking your [asshole] ruthlessly![if the p-state of L > 1]You're being double penetrated by this monster![end if]";
	now L is penetrating B;
	increase the a-state of L by 2.

To compute lakeUnimpressed of (L - a lake monster) to (F - a fuckhole):
	while F is actually occupied:
		let C be a random thing penetrating F;
		say "It rips your [printed name of C] out and discards it into the lake.";
		destroy C;
	say "It seems unimpressed that your [variable F] has yet to be filled, and wastes no time in forcing its way into your [if the openness of F < 5]tight [end if][variable F][unless the openness of vagina > 8], stretching it painfully as the tentacle's girth increases with depth[end if]. It starts fucking you with a slow rhythm.[if the number of fuckholes penetrated by L > 1]Now you're being double penetrated![end if]"; [###Selkie: this seems a more robust check than a-state or p-state of L > 1?]
	now L is penetrating F;
	if F is vagina, increase the p-state of L by 2;
	otherwise increase the a-state of L by 2.

To compute lakeCram of (L - a lake monster) to (F - a fuckhole):
	say "It starts poking around near the entrance to your already full [variable F]!  It seems to want in, ignoring the fact that it's already being obscenely stretched. As it starts to try and push the tip in with incredible force, your [variable F] feels on fire. ";
	if the openness of F > 6:
		say "Slowly but surely your loose [variable F] manages to accommodate it, meaning you're being double penetrated in the same hole!  As they settle into an alternate fucking rhythm, you're not even sure if what you're feeling is pleasure or pain.";
		if F is asshole, increase the a-state of L by 2;
		otherwise increase the p-state of L by 2;
		now L is penetrating F;[redundant, but just making sure]
	otherwise:
		say "As much as it tries to force its way in, there is just no room. The clearly frustrated tentacle starts spanking your [AssDesc], seemingly as some sort of punishment! Your [asshole] and entire ass area is getting very sore!";
		ruin F times 3;
		BodyRuin 3.

To compute thirdLakeArm of (L - a lake monster):
	let Z be a random number between 1 and 4;
	if Z is 1 and the player is gagged, now Z is a random number between 2 and 4;
	if Z is 1:
		if the m-state of L is 0:
			if a random number between 1 and 2 is 1:
				compute lakePoint to face of L with arm 3;
			otherwise:
				compute lakePenetrate to face of L with arm 3;
		otherwise if the m-state of L is 1:
			compute lakePenetrate to face of L with arm 3;
		otherwise if the m-state of L is 2:
			compute lakePoint to face of L with arm 3;
	otherwise if Z is 2:
		if the b-state of L is 0:
			if there is a worn breast covering clothing:
				compute lakeShred to breasts of L with arm 3;
			otherwise if the largeness of breasts > 5:
				compute lakePenetrate to breasts of L with arm 3;
			otherwise:
				compute lakePoint to breasts of L with arm 3;
		otherwise if the b-state of L is 1 and the largeness of breasts > 5:
			compute lakePenetrate to breasts of L with arm 3;
		otherwise if the b-state of L is 2:
			compute lakePoint to breasts of L with arm 3;
		otherwise:
			increase Z by 1;
	if Z is 3:
		if the player is male or vagina is actually occupied:
			increase Z by 1;
		otherwise if the player is a butt slut and a random number between 1 and 2 is 1:
			increase Z by 1;
		otherwise:
			if a random number between 1 and 2 is 1:
				compute lakePoint to vagina of L with arm 3;
			otherwise:
				compute lakePoint to vagina of L with arm 3;
	if Z is 4:
		if the player is ass protected or asshole is actually occupied:
			compute lakeShred to asshole of L with arm 3;
		otherwise if a random number from 1 to 2 is 1 or the openness of asshole > 4:
			compute lakePenetrate to asshole of L with arm 3;
		otherwise:
			compute lakePoint to asshole of L with arm 3;
	say "[line break]".

To compute fourthLakeArm of (L - a lake monster):
	let Z be a random number between 1 and 2;
	if Z is 1:
		if the player is male:
			compute lakePoint to vagina of L with arm 4;
		otherwise if the p-state of L is 0:
			if a random number between 1 and 2 is 1:
				compute lakePoint to vagina of L with arm 4;
			otherwise:
				compute lakePenetrate to vagina of L with arm 4;
		otherwise if the p-state of L is 1:
			compute lakePenetrate to vagina of L with arm 4;
		otherwise if the p-state of L is 2:
			compute lakePoint to vagina of L with arm 4;
		otherwise:
			increase Z by 1;
	if Z is 2:
		if the a-state of L is 0:
			if the player is ass protected:
				compute lakeShred to asshole of L with arm 4;
			otherwise if a random number from 1 to 2 is 1 or the openness of asshole > 4:
				compute lakePenetrate to asshole of L with arm 4;
			otherwise:
				compute lakePoint to asshole of L with arm 4;
		otherwise if the a-state of L is 1:
			compute lakePenetrate to asshole of L with arm 4;
		otherwise if the a-state of L is 2:
			compute lakePoint to asshole of L with arm 4;
	say "[line break]The monster, now firmly holding you by all four of your limbs, pulls you fully out of the lake and into the air!  [if the a-state of L > 1 or the p-state of L > 1]However it doesn't break its pace fucking you at all.[otherwise][line break][end if]".

To compute firstLakeArm of (L - a lake monster):
	let Z be a random number between 1 and 2;
	say "The first tentacle that grabbed you now starts moving again, squirming further up your leg. ";
	if the a-state of L < 2 and the player is not ass protected:
		compute lakeUnimpressed of L to asshole;
	otherwise if the player is female and the p-state of L < 2 and the player is not pussy protected:
		compute lakeUnimpressed of L to vagina;
	otherwise if the a-state of L is 2 and Z is 1:
		compute lakeCram of L to asshole;
	otherwise if the p-state of L is 2 and Z is 2:
		compute lakeCram of L to vagina;
	otherwise if the m-state of L is 0 or the m-state of L is 2:
		compute lakePoint to face of L with arm 1;
	otherwise if the b-state of L is 0 or the b-state of L is 2:
		compute lakePoint to breasts of L with arm 1;
	otherwise if the m-state of L is 1:
		compute lakePenetrate to face of L with arm 1;
	otherwise:
		say "It starts spanking your [AssDesc]!  Ow ow ow ow owwww...";
		BodyRuin 3;
	say "[line break]The monster keeps fucking you like this for a few minutes, and then you feel the steady pace of the tentacles get stronger, faster and a bit more frantic, and too late you realise what is about to happen...".

To compute lakeClimax of (L - a lake monster):
	if the m-state of L is 1:
		say "The tentacle in front of your face is the first you notice cumming, as it spurts an extreme load of thick [semen] all over your face, catching you by surprise with your eyes and mouth open. You cough and splutter and it takes you a moment to notice what else is going on!";
		CumFaceUp a random number between 7 and 10;
		StomachSemenUp 1;
	otherwise if the m-state of L is 2:
		say "The tentacle in your mouth is the first you notice cumming, as it very quickly fills your mouth with its [semen], forcing you to swallow mouthful after mouthful of the [if the semen taste addiction of the player < 6][first custom style]disgusting [roman type][otherwise if the semen taste addiction of the player > 12][second custom style]delicious [roman type][end if]stuff. After the first few mouthfuls it pushes further into your mouth, forcing you to deepthroat its length, bypassing your taste-buds completely and depositing its load directly into your stomach. You continue to choke on the tentacle-dick and it takes you a moment to notice what else is going on!";
		StomachSemenUp 4;
		BlowCount;
	otherwise if the m-state of L is 3:
		say "The tentacle in your mouth and the tentacle in front of your face are the first tentacles you notice cumming, as the one in your mouth very quickly fills your mouth with its [semen], forcing you to swallow mouthful after mouthful of the [if the semen taste addiction of the player < 6][first custom style]disgusting [roman type][otherwise if the semen taste addiction of the player > 12][second custom style]delicious [roman type][end if]stuff, and the one in front of your face spurts an extreme load of the thickest [semen] all over your face, catching you by surprise with your eyes open. After the first few mouthfuls the tentacle in your mouth pushes further, forcing you to deepthroat its length, bypassing your taste-buds completely and depositing its load directly into your stomach. You continue to choke on the tentacle-dick and it takes you a moment to notice what else is going on!";
		CumFaceUp a random number between 7 and 10;
		StomachSemenUp 4;
		BlowCount;
	if the b-state of L is 1:
		say "The tentacle in front of your chest spasms powerfully before painting your [BreastDesc] with layer upon layer of thick white sex-juice. The sticky substance clings to your flesh, dripping off incredibly slowly.";
		CumTitsUp a random number between 7 and 10;
	otherwise if the b-state of L is 2:
		say "The tentacle fucking your [BreastDesc] orgasms, painting both your face and tits with its [semen].[if the m-state of L is 1 or the m-state of L is 3]  The tentacle's [semen] flows off your already covered face and helps completely paint your [BreastDesc] white.[end if]";
		if the m-state of L is 1 or the m-state of L is 3:
			CumFaceUp 10;
			CumTitsUp 10;
		otherwise:
			CumTitsUp a random number between 7 and 10;
	otherwise if the b-state of L is 3:
		say "The tentacle fucking your [BreastDesc] and the tentacle in front of your chest orgasm, painting both your face and tits with their [semen].[if the m-state of L is 1 or the m-state of L is 3]  The tentacle's [semen] flows off your already covered face and helps completely paint your [BreastDesc] white.[end if]";
		if the m-state of L is 1 or the m-state of L is 3:
			CumFaceUp 10;
			CumTitsUp 20;
		otherwise:
			CumTitsUp 15;
	if the p-state of L is 1 or the p-state of L is 3:
		say "The tentacle vigorously rubbing against your thighs cums without stopping its rubbing[if bukkake fetish is 1], smearing the alien [semen] all over your legs, thoroughly coating them with the sticky substance[end if]!";
		CumThighsUp a random number from 7 to 10;
	if the p-state of L is 2 or the p-state of L is 3:
		say "The tentacle destroying your [vagina] pumps your womb full of warm monster [semen], and you can feel your belly stretching to accommodate the huge load. The amount of [semen] is beyond inhuman, and it just won't stop coming...";
		PussyFill 7;
		ruin vagina times 3;
		FuckCount;
	otherwise if the p-state of L is 4:
		say "The tentacles destroying your [vagina] both pump your womb more than full of warm monster [semen], and you can feel your belly stretching and inflating to accommodate the huge loads. This amount of [semen] is beyond inhuman!  It just won't stop coming. There's absolutely no space for it to squirt out around the tentacles so it is all kept inside you...";
		PussyFill 11;
		ruin vagina times 5;
		FuckCount;
	cutshow figure of lake monster cutscene 1 for L;
	if the a-state of L is 1 or the a-state of L is 3:
		say "The tentacle pointing at your [asshole] deposits its load all over your [MediumDesc of hips] and thighs. The stream of [semen] seems just unending, and doesn't stop until your entire bottom half is soaked in the stuff.";
		CumThighsUp a random number from 7 to 10;
	if the a-state of L is 2 or the a-state of L is 3:
		if Egg Laying Fetish is 1:
			say "The tentacle ruining your [asshole] bulges, becoming nearly twice as wide. You moan with a mixture of intense pleasure and pain as your [asshole] is stretched to new levels. From the bottom end of the tentacle where it emerges from the lake, you see a huge bulge start to slowly travel along its length. Your eyes widen, and if it were possible your eyes would have widened even further when you see three more bulges of the same size appear behind it. You wriggle and wrestle with your bonds but the monster easily holds you in place as the bulges reach your rear.[line break]As the first solid bulge reaches your [asshole], you feel the immense pressure placed against it and shriek [if L is penetrating face]through the tentacle in your mouth [end if]in fear. Your sphincter does not yet yield, the object is just too big!  The tip of the object has lodged itself at the entrance but isn't making any more progress. But as the other bulges catch up, they push the ones in front, doubling, tripling and then quadrupling the force trying to get the first one inside. All of a sudden your [asshole] gapes that slight bit more, and all four objects go rushing at incredible velocity into your belly, mercilessly rubbing against the inside walls of your ass as they do. Your belly instantly bulges out to an impossible size, showing you and the rest of this world just how full you now are.";
			AssFill 4 Large Eggs;
			ruin asshole times 4;
		otherwise:
			say "The tentacle ruining your [asshole] keeps thrusting as it ejaculates, and the warm sloshy feeling soon turns into a worryingly full feeling, and then soon a feeling of desperately needing to squirt it all out. Your belly balloons under the pressure from your full rectum and full innards as the [semen] flows the wrong way up through your body.";
			AssFill a random number from 10 to 15;
			ruin asshole times 3;
		AnalCount;
	if the a-state of L is 4:
		if Egg Laying Fetish is 1:
			say "The two tentacles ruining your [asshole] keep up their thrusting as they ejaculate. Instead of the [semen] you were expecting, the tentacles seem to be pumping you full of small solid spherical objects!  The uncomfortable feeling immediately turns into a worryingly full feeling, and then soon a feeling of desperately needing to squirt it all back out. Your belly balloons under the pressure from your full rectum and full innards.";
			AssFill a random number from 10 to 15 small eggs;
			AssFill a random number from 10 to 15 small eggs;
			ruin asshole times 4;
		otherwise:
			say "The two tentacles ruining your [asshole] keep up their thrusting as they ejaculate, and the warm sloshy feeling immediately turns into a worryingly full feeling, and then soon a feeling of desperately needing to squirt it all out. Your belly balloons under the pressure from your full rectum and full innards as the [semen] flows the wrong way up through your body.";
			AssFill a random number from 8 to 15;
			AssFill a random number from 8 to 15;
			ruin asshole times 5;
		AnalCount.

To LakeMonsterCheck (S - a number):
	let L be a random lake monster;
	increase the semen-sniffing of L by S * 40;
	let R be a random number between 10 and 25 + a random number between 10 and 25;
	repeat with T running through lake monsters in the location of the player:
		now R is 0;
	if bukkake fetish is 0 or the latex-transformation of the player > 2, now R is 9999;
	if (R * 40 < the semen-sniffing of L) or  (R * 30 < the semen-sniffing of L and the class of the player is schoolgirl):[if a number between 800 and 1000 is less than L]
		if the dexterity of the player + (the number of worn swimming themed wearthing * 10) < a random number between 7 and 25 or acolyte-chestpiece is worn:
			allocate 6 seconds;
			if R is 0, say "[line break]The tentacle monster sends one of its tentacles to grab your leg!  You're caught!";
			otherwise say "[line break]Suddenly you notice a huge shadow of something moving underneath the waters, towards where you are. Before you can pull yourself out of the lake to safety, the shadow has moved underneath you and four large octopus-like tentacles have risen to the surface!  It must have been attracted here by all the [semen] you washed into the water. You have no chance of escaping as one tentacle grabs one of your ankles and drags you out into the deeper water with incredible strength. The slimy tentacle keeps its grip on your ankle as it slowly slides around and up your leg.";
			cutshow figure of lake monster cutscene 1 for L;
			say "[line break]";
			compute secondLakeArm of L;
			compute thirdLakeArm of L;
			compute fourthLakeArm of L;
			compute firstLakeArm of L;
			compute lakeClimax of L;
			now the a-state of L is 0;
			now the p-state of L is 0;
			now the m-state of L is 0;
			now the b-state of L is 0;
			now L is not penetrating asshole;
			now L is not penetrating vagina;
			now L is not penetrating face;
			now L is not penetrating breasts;
			say "Having finally finished with you, the monster chucks you onto the ground. The tentacles do not disappear however, seeming to favour this part of the lake now that it is full of the gallons of [semen] that didn't manage to stay on or inside you.";
			now the stance of the player is 1;
		otherwise:
			say "[line break]Suddenly you notice a huge shadow of something moving underneath the waters, towards where you are. You pull yourself out of the lake to safety just as the shadow has moved underneath you and four large tentacles have risen to the surface!  It looks like you narrowly missed something horrible happening to you...";
		now L is in Dungeon35;
		display entire map.



Lake Monster ends here.

