Lake Monster by Objects begins here.

Figure of lake monster is the file "NPCs/Bosses/tentaclemonster1.png".
Figure of Lake Monster Cutscene 1 is the file "Special/Cutscene/cutscene-lake1.jpg".
Figure of Lake Monster Cutscene 2 is the file "Special/Cutscene/cutscene-lake2.jpg".

A lake monster is a kind of person. A lake monster is usually unintelligent. There is 1 lake monster. The printed name of lake monster is usually "[TQlink of item described][input-style]lake monster[roman type][shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of lake monster is "lm". A lake monster has a number called semen-sniffing. A lake monster is not portable. A lake monster can be lake-stalking or not lake-stalking. A lake monster is usually not lake-stalking. A lake monster has a number called swim-location. The swim-location of lake monster is usually 5.

Definition: a lake monster is icon-enabled: decide no. [Do they need an icon on the map?]
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
	say "[if A is 2]The second tentacle starts wrapping itself around your opposite wrist and up your arm. When it reaches your shoulder, it[otherwise if A is 3]The third tentacle wraps around your other arm and towards your face. It[otherwise]It journeys up your front and to your head. It[end if] rounds towards your face and stays there, pointing. From here you can see a tiny opening at the tip of the tentacle[one of]... and you realise these tentacles are definitely sex organs[or], an all-too-clear reminder of how this ended last time[stopping]!";
	increase the m-state of L by 1.

To compute lakePenetrate to (B - face) of (L - a lake monster) with arm (A - a number):
	say "[if A is 2]The second tentacle starts wrapping itself around your opposite wrist and up your arm. When it reaches your shoulder, it[otherwise if A is 3]The third tentacle wraps around your other arm and towards your face. It[otherwise]It journeys up your front and to your head. It[end if] rounds towards your face and forces its way straight into your mouth! It [one of]starts pumping away like some sort of sex organ![or]immediately starts pumping away.[stopping]";
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
	say "[if A is 3]The third tentacle wraps around your other arm and then journeys down your front[otherwise]The fourth tentacle wraps around your other leg[end if], [if there are worn knickers]over your [printed name of random knickers worn by the player], [end if]and starts rubbing its tip against [if the player is not possessing a vagina]your inner thighs[otherwise]crotch[end if].";
	increase the p-state of L by 1.

To compute lakePenetrate to (B - vagina) of (L - a lake monster) with arm (A - a number):
	say "[if A is 3]The third tentacle wraps around your other arm and then journeys down your front. [otherwise]The fourth tentacle wraps around your free leg. [end if]";
	while the player is pussy protected:
		let C be a random worn top level protection clothing;
		say "It goes through the top of your [printed name of C] and out a leg hole. It roughly rips them off you and allows them to fall into the depths of the lake. ";
		destroy C;
	say "Then it starts slowly forcing its way into your [if the openness of vagina < 5]tight [end if][vagina][unless the openness of vagina > 8], stretching it painfully as the tentacle's girth increases with depth[end if]. It starts fucking you with a slow rhythm.[if the a-state of L > 1] You're being double penetrated by this monster![end if]";
	now L is penetrating B;
	increase the p-state of L by 2.

To compute lakeShred to (B - asshole) of (L - a lake monster) with arm (A - a number):
	while the player is ass protected:
		let C be a random worn top level ass protection clothing;
		say "[if A is 3]The third tentacle wraps around your other arm and then slithers down your back and into the back of your [printed name of C] and out one leg hole[otherwise]The fourth tentacle wraps around your free leg into one leg hole of your [printed name of C] and out the other[end if]. The tentacle effortlessly rips them off! ";
		destroy C;
	while asshole is actually occupied:
		let C be a random thing penetrating asshole;
		say "The [if A is 3]third[otherwise]fourth[end if] tentacle rips your [printed name of C] out and discards it in the lake.";
		destroy C;
	say "You can't see it, but you can almost feel the tentacle hovering near your butt.";
	increase the a-state of L by 1.

To compute lakePoint to (B - asshole) of (L - a lake monster) with arm (A - a number):
	say "[if A is 3]The third tentacle wraps around your other arm and then slithers down your back[otherwise]The fourth tentacle wraps around your free leg[end if] and starts poking against the entrance to your ass! It doesn't push its way in, though.";
	increase the a-state of L by 1.

To compute lakePenetrate to (B - asshole) of (L - a lake monster) with arm (A - a number):
	say "[if A is 3]The third tentacle wraps around your other arm and then slithers down your back[otherwise]The fourth tentacle wraps around your free leg[end if] and starts poking against the entrance to your ass! [if the openness of asshole < 5]It slowly forces it way in and then[otherwise]It glides in easily, and[end if] it starts thrusting away, fucking your [asshole] ruthlessly![if the p-state of L > 1]You're being double penetrated by this monster![end if]";
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
	say "It starts poking around near the entrance to your already full [variable F]! It seems to want in, ignoring the fact that it's already being obscenely stretched. As it starts to try and push the tip in with incredible force, your [variable F] feels on fire. ";
	if the openness of F > 6:
		say "Slowly but surely your loose [variable F] manages to accommodate it, meaning you're being double penetrated in the same hole! As they settle into an alternate fucking rhythm, you're not even sure if what you're feeling is pleasure or pain.";
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
		if the player is not possessing a vagina or vagina is actually occupied:
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
		if the player is not possessing a vagina:
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
	say "[line break]The monster, now firmly holding you by all four of your limbs, pulls you out of the lake and into the air! [if the a-state of L > 1 or the p-state of L > 1]However it doesn't break its pace fucking you at all.[otherwise][line break][end if]".

To compute firstLakeArm of (L - a lake monster):
	let Z be a random number between 1 and 2;
	say "The first tentacle that grabbed you now starts moving again, squirming further up your leg. ";
	if the a-state of L < 2 and the player is not ass protected:
		compute lakeUnimpressed of L to asshole;
	otherwise if the player is possessing a vagina and the p-state of L < 2 and the player is not pussy protected:
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
		say "It starts spanking your [AssDesc]! Ow ow ow ow owwww...";
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
		say "The tentacle fucking your [BreastDesc] orgasms, painting both your face and tits with its [semen].[if the m-state of L is 1 or the m-state of L is 3] The tentacle's [semen] flows off your already covered face and helps completely paint your [BreastDesc] white.[end if]";
		if the m-state of L is 1 or the m-state of L is 3:
			CumFaceUp 10;
			CumTitsUp 10;
		otherwise:
			CumTitsUp a random number between 7 and 10;
	otherwise if the b-state of L is 3:
		say "The tentacle fucking your [BreastDesc] and the tentacle in front of your chest orgasm, painting both your face and tits with their [semen].[if the m-state of L is 1 or the m-state of L is 3] The tentacle's [semen] flows off your already covered face and helps completely paint your [BreastDesc] white.[end if]";
		if the m-state of L is 1 or the m-state of L is 3:
			CumFaceUp 10;
			CumTitsUp 20;
		otherwise:
			CumTitsUp 15;
	if the p-state of L is 1 or the p-state of L is 3:
		say "The tentacle vigorously rubbing against your thighs cums without stopping its rubbing[if bukkake fetish is 1], smearing the alien [semen] all over your legs, thoroughly coating them with the sticky substance[end if]!";
		CumThighsUp a random number from 7 to 10;
	if the p-state of L is 2 or the p-state of L is 3:[TODO: also eggs.]
		say "The tentacle destroying your [vagina] pumps your womb full of warm monster [semen], and you can feel your belly stretching to accommodate the huge load. The amount of [semen] is beyond inhuman, and it just won't stop coming...";
		PussyFill 7;
		ruin vagina times 3;
		FuckCount;
	otherwise if the p-state of L is 4:[TODO: also eggs]
		say "The tentacles destroying your [vagina] both pump your womb more than full of warm monster [semen], and you can feel your belly stretching and inflating to accommodate the huge loads. This amount of [semen] is beyond inhuman! It just won't stop coming. There's absolutely no space for it to squirt out around the tentacles so it is all kept inside you...";
		PussyFill 11;
		ruin vagina times 5;
		FuckCount;
	if the a-state of L is 1 or the a-state of L is 3:
		say "The tentacle pointing at your [asshole] deposits its load all over your [MediumDesc of hips] and thighs. The stream of [semen] seems just unending, and doesn't stop until your entire bottom half is soaked in the stuff.";
		CumThighsUp a random number from 7 to 10;
	if the a-state of L is 2 or the a-state of L is 3:
		if Egg Laying Fetish is 1:
			say "The tentacle ruining your [asshole] bulges, becoming nearly twice as wide. You moan with a mixture of intense pleasure and pain as your [asshole] is stretched to new levels. From the bottom end of the tentacle where it emerges from the lake, you see a huge bulge start to slowly travel along its length. Your eyes widen, and if it were possible your eyes would have widened even further when you see three more bulges of the same size appear behind it. You wriggle and wrestle with your bonds but the monster easily holds you in place as the bulges reach your rear.[line break]As the first solid bulge reaches your [asshole], you feel the immense pressure placed against it and shriek [if L is penetrating face]through the tentacle in your mouth [end if]in fear. Your sphincter does not yet yield, the object is just too big! The tip of the object has lodged itself at the entrance but isn't making any more progress. But as the other bulges catch up, they push the ones in front, doubling, tripling and then quadrupling the force trying to get the first one inside. All of a sudden your [asshole] gapes that slight bit more, and all four objects go rushing at incredible velocity into your belly, mercilessly rubbing against the inside walls of your ass as they do. Your belly instantly bulges out to an impossible size, showing you and the rest of this world just how full you now are.";
			AssFill 4 Large Eggs;
			ruin asshole times 4;
		otherwise:
			say "The tentacle ruining your [asshole] keeps thrusting as it ejaculates, and the warm sloshy feeling soon turns into a worryingly full feeling, and then soon a feeling of desperately needing to squirt it all out. Your belly balloons under the pressure from your full rectum and full innards as the [semen] flows the wrong way up through your body.";
			AssFill a random number from 10 to 15;
			ruin asshole times 3;
		AnalCount;
	if the a-state of L is 4:
		if Egg Laying Fetish is 1:
			say "The two tentacles ruining your [asshole] keep up their thrusting as they ejaculate. Instead of the [semen] you were expecting, the tentacles seem to be pumping you full of small solid spherical objects! The uncomfortable feeling immediately turns into a worryingly full feeling, and then soon a feeling of desperately needing to squirt it all back out. Your belly balloons under the pressure from your full rectum and full innards.";
			AssFill a random number from 10 to 15 small eggs;
			AssFill a random number from 10 to 15 small eggs;
			ruin asshole times 4;
		otherwise:
			say "The two tentacles ruining your [asshole] keep up their thrusting as they ejaculate, and the warm sloshy feeling immediately turns into a worryingly full feeling, and then soon a feeling of desperately needing to squirt it all out. Your belly balloons under the pressure from your full rectum and full innards as the [semen] flows the wrong way up through your body.";
			AssFill a random number from 8 to 15;
			AssFill a random number from 8 to 15;
			ruin asshole times 5;
		AnalCount.

[To LakeMonsterCheck (S - a number):
	let L be a random lake monster;
	increase the semen-sniffing of L by S * 40;
	let R be a random number between 10 and 25 + a random number between 10 and 25;
	repeat with T running through lake monsters in the location of the player:
		now R is 0;
	if bukkake fetish is 0 or the latex-transformation of the player > 2, now R is 9999;
	if (R * 40 < the semen-sniffing of L) or (R * 30 < the semen-sniffing of L and the class of the player is schoolgirl):[if a number between 800 and 1000 is less than L]
		if the dexterity of the player + (the number of worn swimming themed wearthing * 10) < a random number between 7 and 25 or acolyte-chestpiece is worn:
			allocate 6 seconds;
			if R is 0, say "[line break]The tentacle monster sends one of its tentacles to grab your leg! You're caught!";
			otherwise say "[line break]Suddenly you notice a huge shadow of something moving underneath the waters, towards where you are. Before you can pull yourself out of the lake to safety, the shadow has moved underneath you and four large octopus-like tentacles have risen to the surface! It must have been attracted here by all the [semen] you washed into the water. You have no chance of escaping as one tentacle grabs one of your ankles and drags you out into the deeper water with incredible strength. The slimy tentacle keeps its grip on your ankle as it slowly slides around and up your leg.";
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
			say "[line break]Suddenly you notice a huge shadow of something moving underneath the waters, towards where you are. You pull yourself out of the lake to safety just as the shadow has moved underneath you and four large tentacles have risen to the surface! It looks like you narrowly missed something horrible happening to you...";
		now L is in Dungeon35;
		display entire map.]

[
The player can swim to the deeper areas of the lake to look for treasure.

however, each turn the player spends there will make the monster that much more likely to notice them.

Every turn, there's a chance the player will see a treasure glint, and they can dive to get the treasure. But, there's also a chance of being noticed by the monster.

When the monster is stalking the player, it is invisible until the player has specifically noticed it. The only sign is that the player will always see a "treasure" glint, which is really the monster waiting silently for their chance (which a dive turns into a sure thing).

After the player notices the monster, it becomes a chase. The player can no longer dive, and the monster will attempt to grab them. The monster can't get to the most shallow area, but it can still grab the player when they're there.
]
To compute swimming in (WB - DungeonScenery03):
	let swimming be 1;
	let swim-turns be 0;[how long has the player been swimming]
	let swim-location be 0;[where is the player right now?]
	let M be a random lake monster;
	while swimming is 1:
		let S be swim-location;
		if swim-turns is 0 and water-peeing is false, say "You [if the player is upright]wade[otherwise]crawl[end if] out into the water and begin to swim.";
		otherwise say "You are treading water [if S is 0]in a relatively shallow area a couple feet away from the edge of the lake, just deep enough to let your toes brush the bottom.[otherwise if S is 1]in a deeper area a short ways away from the edge of the lake.[otherwise if S is 2]near the deepest area of the lake. In the distance, you can see the lake's shore, and in the other direction, you can just barely make out a small opening in the rock.[otherwise if S is 3]near the mouth of a cave, invisible from the shore.[otherwise]inside a huge cave. There is a thin lip of solid rock around the inner edge of the cave. It isn't wide enough to stand on, but it seems good enough for a short rest.[end if]";
		if M is in the location of the player:
			say "You are currently being pursued by some huge aquatic monster, which is currently trying to capture you with its four thick, octopus-like tentacles.";
			compute LakeChase at S;
			if M is not lake-stalking:
				now swimming is 0;[you got fucked.]
		otherwise:
			if swim-location is 0:[no treasure chance, but the chance of monster showing up is low]
				if M is lake-stalking:
					compute LakeStalk at 0;
					if M is not lake-stalking, now swimming is 0;[you got fucked.]
				otherwise:
					compute LakeNotice (swim-turns - 1) with (S);
			otherwise:
				if M is lake-stalking:
					compute LakeStalk at S;
					if M is not lake-stalking, now swimming is 0;
				if swimming is 1:
					if M is not lake-stalking, compute LakeNotice (swim-turns) with (S);
					if M is lake-stalking and the swim-location of M is S:
						say LakeShadowFlav of WB;
					otherwise if a random number between 1 and 2 is 1:
						say "You notice something deep beneath the water.";
		if swimming is 1:[If the player got tentacled, we don't want to do the multiple choice.]
			reset multiple choice questions;
			if swim-location is 0, set next numerical response to "get out";
			set next numerical response to "swim in place";
			if swim-location > 0:
				if swim-location is 4, set next numerical response to "swim out of cave";
				otherwise set next numerical response to "head for shore";
			if swim-location < 3:
				set next numerical response to "swim further out";
			otherwise if swim-location is 3:
				set next numerical response to "swim into cave";
			if swim-location > 0, set next numerical response to "dive";
			if swim-location is 4 and M is not in the location of the player, set next numerical response to "rest";
			say "[line break]What should you do next?";
			compute multiple choice question;
			let CNR be the chosen numerical response;
			if the printed name of CNR is "get out":
				now swimming is 0;
				now M is not lake-stalking;
				say "You swim to the shore of the [if M is in the location of the player and M is lake-stalking]lake, just barely evading the reach of the monster's tentacles as you pull yourself out.[otherwise]lake and pull yourself out.[end if]";
			otherwise if the printed name of CNR is "rest":
				if M is lake-stalking:
					say "You rest your body against the edge of the cave and begin to catch your breath. Its at that moment that you feel something slimy brush against your leg, and look down just in time to see a thick, octopus-like tentacle curling around your ankle. It yanks you out of the cave with incredible strength, dragging you underwater without giving you a chance to escape. The slimy tentacle keeps its grip on your ankle as it slowly slides around and up your leg.";
					compute lake tentacle gangbang of M;
					now swimming is 0;
				otherwise:
					say "You rest your body against the edge of the cave and catch your breath. Its a little difficult to rest here, but after a few minutes, you feel less fatigued.";
					FatigueDown 5;
			otherwise if the printed name of CNR is "dive":
				say "You dive below the surface.";
				compute difficult swimming check in WB;
				if M is lake-stalking and the swim-location of M is S:
					say "[line break]Something catches your eye, and you quickly swim toward it... Its long, red and one side of its surface is covered in octopus-like suckers. Below it is the shadow of some huge aquatic creature, with greets you by sending three more of its thick tentacles up from the depths. You change course and quickly swim back toward the surface, but just before your head breaks the water, a slimy tentacle wraps around you under with incredible strength. It keeps its grip on your ankle as it slowly slides up and around your leg.";
					compute lake tentacle gangbang of M;
					now swimming is 0;
				otherwise:
					compute treasure diving in WB at swim-location;
			otherwise if the printed name of CNR is "head for shore" or the printed name of CNR is "swim out of cave":
				if M is in the location of the player:
					if the swim-location of M < S, say "You swim straight for the monster.";[Its rare, but possible that the monter will be between you and the shore.]
					otherwise say "You swim away from the monster.";
				otherwise:
					if swim-location is 4, say "You swim out of the cave, coming to a stop as your eyes re-adjust to the light.";
					otherwise say "You kick your legs as you swim back into shallow waters.";
				compute normal swimming check in WB;
				decrease swim-location by 1;
			otherwise if the printed name of CNR is "swim further out" or the printed name of CNR is "swim into cave":
				if M is in the location of the player:
					if the swim-location of M > S, say "You swim straight for the monster.";
					otherwise say "You swim away from the monster.";
				otherwise:
					if swim-location is 3, say "You swim further into the cave and come to a stop as your eyes struggle to adjust to the darkness.";
					otherwise say "You kick your legs as you swim out into deeper water.";
				compute normal swimming check in WB;
				increase swim-location by 1;
			otherwise:
				say "You swim in place.";
				compute easy swimming check in WB;
			say "[line break]";
		if swimming is 1:
			compute bathing;[Happens every turn]
			increase swim-turns by 1;
			if (the fatigue of the player >= the strength of the player * 7) and (M is lake-stalking or M is in the location of the player):
				say "You're too tired, and strength leaves your limbs as you begin to pass out.[line break] A sudden tug on your ankle snaps you back to alertness, and you look down to see a thick, octopus-like tentacle dragging you deeper with incredibly strength. Your slimy [']savior['] keeps its grip on your ankle as it slowly slides around and up your leg.";
				compute lake tentacle gangbang of M;
				now swimming is 0;
			otherwise:
				compute swimming fatigue check in WB;
				if delayed fainting is 1, now swimming is 0;
	allocate 12 + (3 * swim-turns) seconds;[after everything]
	display entire map.

[
	What can the player find:
	sapphire jewelery - uncommon
	emerald jewelery - rare
	ruby jewelrey - very rare
	eggs - common
	tokens - common
	small clothing - uncommon
]
To compute treasure diving in (WB - DungeonScenery03) at (L - a number):
	let N be 0;
	if (L is 1 and the player is getting very lucky) or (L is 2 and the player is getting lucky) or (L is 3 and the player is getting lucky) or (L is 4 and the player is not getting unlucky):
		now N is a random number between 1 and 30;
	say "[line break]Something catches your eye, and you quickly swim toward it... [run paragraph on]";
	if N > 20:[jewels]
		let J be a random off-stage plentiful accessory;
		if J is accessory and L > 1:[You won't find jewels until you go further out]
			if N is 30:[Ruby]
				 now J is ruby;
			otherwise if N >= 27:[emerald]
				now J is emerald;
			otherwise:[sapphire]
				now J is sapphire;
			say "[bold type]You find a [ClothingDesc of J]![roman type] You take it with you as you swim back to the surface.";
			now J is carried by the player;
		otherwise:
			say "You find a rusted out piece of jewelery. You leave it behind as you swim back to the surface.";
	otherwise if N is 20:[bra]
		let B be a random off-stage plentiful bra;
		if B is clothing:
			compute found size of B;
			say "[bold type]You find a [MediumDesc of B]![roman type] You take it with you as you swim back to the surface.";
			now B is carried by the player;
			now the water-soak of B is the soak-limit of B;
		otherwise:
			say "You find a bra that has been torn in two pieces. You leave it behind as you swim back to the surface.";
	otherwise if N is 19:[underwear]
		let U be a random off-stage plentiful knickers;
		if U is clothing:
			say "[bold type]You find a [selfexamineuniquetitle of U]![roman type] You take it with you as you swim back to the surface!";
			now the water-soak of U is the soak-limit of U;
			now U is carried by the player;
		otherwise:
			say "You find a pair of briefs with a huge hole in the crotch. You leave it behind as you swim back to the surface.";
	otherwise if N is 18:[shoes]
		let H be a random off-stage plentiful shoes;
		if H is clothing:
			say "[bold type]You find a pair of [UniqueShortDesc of H]![roman type] You hold onto them as you swim back to the surface.";
			now the water-soak of H is the soak-limit of H;
			now H is carried by the player;
		otherwise:
			say "You find a single high-heel. You leave it behind as you swim back to the surface.";
	otherwise if N is 17:[swimsuit]
		let C be a random off-stage swimming themed clothing;
		if C is clothing:
			say "[bold type]You find a [MediumDesc of C]![roman type] You take it with you as you swim back to the surface.";
			now the water-soak of C is the soak-limit of C;
			now C is carried by the player;
		otherwise:
			say "You find a swimsuit with a tear straight up the middle. You leave it behind as you swim back to the surface.";
	otherwise if N is 16:
		say "You find a piece of shredded fabric. You leave it behind as you swim back to the surface.";
	otherwise if N is 15:[magic token]
		let T be a random off-stage magic token;
		if T is magic token:
			say "[bold type]You find a magic token.[roman type] You take it with you as you swim back to the surface.";
			now T is carried by the player;
		otherwise:
			say "You find a rusted coin. You leave it behind as you swim back to the surface.";
	otherwise if N > 11:[defiance token]
		let T be a random off-stage defiance token;
		if T is defiance token:
			say "[bold type]You find a defiance token.[roman type] You take it with you as you swim back to the surface.";
			now T is carried by the player;
		otherwise:
			say "You find a rusted coin. You leave it behind as you swim back to the surface.";
	otherwise if N > 9:[fabric token]
		let T be a random off-stage fabric token;
		if T is fabric token:
			say "[bold type]You find a fabric token.[roman type] You take it with you as you swim back to the surface.";
			now T is carried by the player;
		otherwise:
			say "You find a rusted coin. You leave it behind as you swim back to the surface.";
	otherwise if N > 6:[sanity token]
		let T be a random off-stage sanity token;
		if T is sanity token:
			say "[bold type]You find a sanity token.[roman type] You take it with you as you swim back to the surface.";
			now T is carried by the player;
		otherwise:
			say "You find a rusted coin. You leave it behind as you swim back to the surface.";
	otherwise if N > 3:[egg]
		let E be a random off-stage egg;
		if E is egg and egg laying fetish is 1 and L > 2:[The eggs only show up close to the monster's lair]
			say "[bold type]You find a [ShortDesc of E].[roman type] You aren't sure you want to keep it, but who knows what it could hatch into if you left it. You take it with you as you swim back to the surface.";
			unless E is large egg:
				now the hatching of E is a random number between 100 and 130;
			now E is carried by the player;
		otherwise:
			say "You find a piece of broken eggshell. You leave it behind as you swim back to the surface.";
	otherwise:[nothing]
		say "It turns out to be nothing. You go back to the surface empty-handed.";
	force immediate inventory-focus redraw.

[turns - number of turns spent swimming.
location - current location]
To compute LakeNotice (turns - a number) with (swim-location - a number):[TODO: factor in luck]
	let M be a random lake monster;
	if M is not lake-stalking and bukkake fetish is 1:[It hasn't noticed you. Lets see if it does. Disabled if bukkake is disabled.]
		if debugmode > 0, say "[input style]Checking if player escapes notice...[line break]";
		let T be tracked-semen;
		let L be a random lake monster;
		increase the semen-sniffing of L by T * 40;
		increase the semen-sniffing of L by a random number between (turns * 5) and (swim-location * 10);[The longer you stick around, the higher the chance of being noticed.]
		let R be a random number between 10 and 25 + a random number between 10 and 25;
		if bukkake fetish is 0 or the latex-transformation of the player > 2, now R is 9999;[monster doesn't attack sex dolls]
		if the class of the player is schoolgirl, now R is R * 10;[schoolgirls have the worst luck sometimes.]
		if (R * 40 < the semen-sniffing of L):[if a number between 800 and 1000 is less than the monster's "curiousity"]
			if debugmode > 0, say "[bold type]FAILED[roman type]";
			now M is lake-stalking;
		otherwise:
			if debugmode > 0, say "[bold type]PASSED[roman type]".

[The player has noticed the monster, and is actively being chased. What does it do?]
To compute LakeChase at (swim-location - a number):
	let M be a random lake monster;
	let L be the swim-location of M;
	if L is swim-location or (L + a random number between 1 and -1) is swim-location or (L is 1 and swim-location is 0):[under you? Tries to grab you. Otherwise, 1 in 3.]
		if debugmode > 0, say "[input style]Checking if monster visibly grabs...[line break]";
		let S be the swimming challenge of the player;
		decrease S by a random number between dexterity of the player / 3 and the dexterity of the player;
		let D be a random number between 10 and 75;
		if L is swim-location, increase D by 10;
		if D < S:[You get grabbed]
			say "[line break]You try to evade, but you aren't fast enough to evade this creature in its own domain! One of its, octopus-like tentacle curls around your ankle and drags you underwater with incredible strength! The slimy tentacle keeps its grip on your ankle as it slowly slides around and up your leg.";
			compute lake tentacle gangbang of M;
		otherwise:
			say "[line break]You evade the monster's tentacles for a couple more seconds, but its only a matter of time before it catches you. You have to get out of the water!";

[If you, the player, haven't noticed the monster, but its watching you, what does it do?]
To compute LakeStalk at (swim-location - a number):
	let M be a random lake monster;
	let L be the swim-location of M;
	if L is swim-location or (a random number between 1 and -1) + L is swim-location or (L is 1 and swim-location is 0):[under you? Tries to grab you. Otherwise, 1 in 3.]
		if debugmode > 0, say "[input style]Checking if monster secretly grabs...[roman type][line break]";
		let S be the swimming challenge of the player;
		let D be a random number between 5 and 70;[Slightly easier for the player to dodge, since the monster is being sneaky, but still harder since the monster is being sneaky and doesn't let you use dexterity]
		if L is swim-location, increase D by 10;
		if D < S:[You get grabbed]
			say "[line break]You feel something slimy brush against your leg, and look down just in time to see a thick, octopus-like tentacle curl around your ankle. Its incredibly strong, and it drags you underwater without giving you a chance to escape! The slimy tentacle keeps its grip on your ankle as it slowly slides around and up your leg.";
			compute lake tentacle gangbang of M;
		otherwise:[You don't get grabbed.]
			let N be a random number between 1 and 15;
			increase N by the intelligence of the player / 3;
			decrease N by (L - swim-location) * 5;
			if N > 10:[You notice the monster! Oh shit!]
				say "[line break]You feel something slimy brush against your leg, and look down just in time to avoid a thick, octopus-like tentacle curling around your ankle. The tentacle is connected to a huge shadow of something underwater [if L is swim-location]rapidly ascending from directly underneath[otherwise]rapdily moving toward[end if] you. Four tentacles break the surface of the lake and move to capture you!";
				now a random lake monster is in the location of the player;
			otherwise if N > 5:[You get a warning, but don't *actually* notice.]
				say "[line break]You feel something slimy brush against your leg.";
	otherwise:[Moves closer]
		if L > swim-location:
			unless L - 1 is 0, decrease the swim-location of M by 1;[The monster can't go to location "0"]
		otherwise:[we know the monster's location is different, and we know it isn't higher. Therefore, its lower.]
			increase the swim-location of M by 1.

[The monster is stalking the player. Do they see it for what it is, or do they mistake it for treasure.]
To say LakeShadowFlav of (W - DungeonScenery03):
	if a random number between 1 and the intelligence of the player > 15:
		say "[line break]Suddenly you notice a huge shadow of something moving underneath the waters. As if reacting to your attention, four large tentacles quickly rise to the surface and move to surround you!";
		now a random lake monster is in the location of the player;
	otherwise:
		say "You notice something deep beneath the water.".

To compute swimming fatigue check in (WB - DungeonScenery03):
	let X be the strength of the player * 7;
	if the fatigue of the player >= X:[You're too tired. If the tentacle monster is around, it will catch you, but otherwise you faint.]
		let M be a random lake monster;
		if M is lake-stalking:
			say "You're too tired, and strength leaves your limbs as you begin to pass out. A sudden tug on your ankle snaps you back to alertness, and you look down to see a thick, octopus-like tentacle dragging you deeper with incredibly strength. Your slimy [']savior['] keeps its grip on your ankle as it slowly slides around and up your leg.";
			compute lake tentacle gangbang of M;
		otherwise:
			say "You're too tired, and strength leaves your limbs as you slowly sink beneath the water. You pass out.";
			now delayed fainting is 1;
			now the fainting reason of the player is 19;
	otherwise:
		describe swimming fatigue for X.

To compute lake tentacle gangbang of (L - lake monster):
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
	say "Having finally finished with you, the monster chucks you onto the shore of the lake. Its tentacles do not disappear however, seeming to favour this part of the lake now that it is full of the gallons of [semen] that didn't manage to stay on or inside you.";
	now the stance of the player is 1;
	now the swim-location of L is 1;
	now L is not lake-stalking;
	if L is not in the location of the player, now L is in Dungeon35.

Lake Monster ends here.
