Predicament World by Rooms begins here.

A predicament room is a kind of room. A park room is a kind of predicament room. The printed name of a park room is "Park". The description of a park room is "This area is just open grass. There is nothing to hide behind.". A road room is a kind of predicament room. The printed name of a predicament room is "Main Road".
Definition: a predicament room is unwalled: decide yes.
To decide which number is the concealment of (R - a predicament room):
	decide on -1.

Definition: a predicament room (called R) is within vision:
	if R is the location of the player, decide yes;
	if R is Predicament03 and the player is in Predicament02, decide yes;
	if the player is in Toilet01 or the player is in Toilet02 or the player is in Predicament01 or the player is in Predicament02, decide no;
	decide yes.

A predicament room has a labyrinth shape called shape. The shape of a predicament room is usually L8/0-0-1-1-1-1. The grid position of a predicament room is usually <0,0,0>.
A predicament room is usually pinned.[These rooms are always in the same place.]

Predicament01 is a predicament room. Predicament01 is discovered. The printed name of Predicament01 is "Abandoned Warehouse". The shape of Predicament01 is L8/0-0-1-0-0-0. The grid position of Predicament01 is <8,12,5>. Predicament01 is bossed.
Definition: Predicament01 is unwalled: decide no.
Predicament02 is a predicament room. The printed name of Predicament02 is "Alleyway". "Around the corner of this small alleyway you can hear the sounds of a road. Cars are irregular but rather frequent.". The shape of Predicament02 is L8/0-0-0-1-1-0. The grid position of Predicament02 is <8,12,6>. Predicament02 is north of Predicament01. Predicament02 is bossed.

[Ring Road Part 1]

Predicament03 is a road room. The grid position of Predicament03 is <8,13,6>. Predicament03 is east of Predicament02.
Predicament04 is a road room. The shape of Predicament04 is L8/0-0-0-1-1-0. The grid position of Predicament04 is <8,13,7>. Predicament04 is north of Predicament03.
Predicament05 is a road room. The grid position of Predicament05 is <8,14,7>. Predicament05 is east of Predicament04.
Predicament06 is a road room. The shape of Predicament06 is L8/0-0-0-1-1-0. The grid position of Predicament06 is <8,14,8>. Predicament06 is north of Predicament05.
Predicament07 is a road room. The grid position of Predicament07 is <8,15,8>. Predicament07 is east of Predicament06.
Predicament08 is a road room. The shape of Predicament08 is L8/0-0-0-1-1-0. The grid position of Predicament08 is <8,15,9>. Predicament08 is north of Predicament07.
Predicament09 is a road room. The shape of Predicament09 is L8/0-0-0-1-1-1. The grid position of Predicament09 is <8,16,9>. Predicament09 is east of Predicament08.
Predicament10 is a road room. The shape of Predicament10 is L8/0-0-0-1-1-1. The grid position of Predicament10 is <8,17,9>. Predicament10 is east of Predicament09.
Predicament11 is a road room. The shape of Predicament11 is L8/0-0-0-0-1-1. The grid position of Predicament11 is <8,18,9>. Predicament11 is east of Predicament10.
Predicament12 is a road room. The grid position of Predicament12 is <8,18,8>. Predicament12 is south of Predicament11.
Predicament13 is a road room. The shape of Predicament13 is L8/0-0-0-0-1-1. The grid position of Predicament13 is <8,19,8>. Predicament13 is east of Predicament12.
Predicament14 is a road room. The grid position of Predicament14 is <8,19,7>. Predicament14 is south of Predicament13.
Predicament15 is a road room. The shape of Predicament15 is L8/0-0-0-0-1-1. The grid position of Predicament15 is <8,20,7>. Predicament15 is east of Predicament14.
Predicament16 is a road room. The shape of Predicament16 is L8/0-0-1-0-1-1. The grid position of Predicament16 is <8,20,6>. Predicament16 is south of Predicament15.
Predicament17 is a road room. The grid position of Predicament17 is <8,20,5>. Predicament17 is south of Predicament16.
Predicament18 is a road room. The shape of Predicament18 is L8/0-0-1-0-1-1. The grid position of Predicament18 is <8,20,4>. Predicament18 is south of Predicament17.

[Home]

Predicament19 is a predicament room. The printed name of Predicament19 is "Driveway". "The entrance to your house is right in front of you. Thank goodness!". The shape of Predicament19 is L8/0-0-0-1-0-1. The grid position of Predicament19 is <8,21,5>. Predicament19 is east of Predicament17. Predicament19 is bossed.
Predicament20 is a predicament room. The printed name of Predicament20 is "Portal Room". "Instead of your house, there's just a room with a portal...". The shape of Predicament20 is L8/0-0-0-0-0-1. The grid position of Predicament20 is <8,22,5>. Predicament20 is east of Predicament19. Predicament20 is bossed.
Definition: Predicament20 is unwalled: decide no.
Check going north when the player is in Predicament20:
	[let Y be 0;
	repeat with C running through portable things in the location of the player:
		if C is not held and C is not person, now Y is 1;
	if Y is 1:
		say "[bold type]You have left stuff on the ground here. [roman type]Are you sure you want to do that? You might not be able to get it back any time soon.";
		unless the player is consenting, say "Action cancelled." instead;]
	if areYouSure is 1:
		let T be a random trophy in the location of the player;
		if T is nothing, now T is a random held trophy;
		if T is trophy and the trophy-mode of T is 0:
			say "You have a new [T] to consider activating here. Are you sure you want to leave without activating it? ";
			unless the player is consenting, say "Action cancelled." instead.

Check going west when the player is in Predicament20:
	say "The door seems to have locked itself behind you. The only way out is [bold type]north[roman type] through the portal." instead.

Report going north when the player is in School01:
	now map-zoom is saved-map-zoom;
	clean up predicament universe;
	repeat with T running through on-stage trophies:
		if T is held, say "[bold type][BigNameDesc of T] [bold type]is ripped from your hands by an invisible force, and in your mind's eye you can see that it has been taken to the 'Trophy Hall'![roman type][line break]";
		now T is in School31;
	repeat with R running through predicament rooms:
		repeat with T running through things in R:
			unless T is backdrop or T is male-gloryhole or T is female-gloryhole or T is automated changing station, destroy T;
	if the stomach-liquid of the player < 3, now the stomach-water of the player is 3 - the stomach-liquid of the player;
	if the player is hungry, now the stomach-food of the player is 2;
	repeat with C running through worn wearthings:
		compute predicament resolution of C.

To compute predicament resolution of (C - a wearthing):
	do nothing.

[Ring Road Part 2]

Predicament21 is a road room. The grid position of Predicament21 is <8,19,4>. Predicament21 is west of Predicament18.
Predicament22 is a road room. The shape of Predicament22 is L8/0-0-1-0-0-1. The grid position of Predicament22 is <8,19,3>. Predicament22 is south of Predicament21.
Predicament23 is a road room. The grid position of Predicament23 is <8,18,3>. Predicament23 is west of Predicament22.
Predicament24 is a road room. The shape of Predicament24 is L8/0-0-1-0-0-1. The grid position of Predicament24 is <8,18,2>. Predicament24 is south of Predicament23.
Predicament25 is a road room. The shape of Predicament25 is L8/0-0-1-1-0-1. The grid position of Predicament25 is <8,17,2>. Predicament25 is west of Predicament24.
Predicament26 is a road room. The shape of Predicament26 is L8/0-0-1-1-0-1. The grid position of Predicament26 is <8,16,2>. Predicament26 is west of Predicament25.
Predicament27 is a road room. The shape of Predicament27 is L8/0-0-1-0-0-1. The grid position of Predicament27 is <8,15,2>. Predicament27 is west of Predicament26.
Predicament28 is a road room. The grid position of Predicament28 is <8,15,3>. Predicament28 is north of Predicament27.
Predicament29 is a road room. The shape of Predicament29 is L8/0-0-1-0-0-1. The grid position of Predicament29 is <8,14,3>. Predicament29 is west of Predicament28.
Predicament30 is a road room. The grid position of Predicament30 is <8,14,4>. Predicament30 is north of Predicament29.
Predicament31 is a road room. The shape of Predicament31 is L8/0-0-1-0-0-1. The grid position of Predicament31 is <8,13,4>. Predicament31 is west of Predicament30.
Predicament32 is a road room. The shape of Predicament32 is L8/0-0-1-1-1-0. The grid position of Predicament32 is <8,13,5>. Predicament32 is north of Predicament31. Predicament32 is south of Predicament03.

[Central Park]

To decide which number is the concealment of (R - a park room):
	decide on 0.

Park01 is a park room. The grid position of Park01 is <8,16,8>. Park01 is east of Predicament07. Park01 is south of Predicament09.
Park02 is a park room. The printed name of Park02 is "Public Toilets". "A small hut houses both male and female toilets. You can go [bold type]down[roman type] to go to the men's toilets or [bold type]up[roman type] to go to the women's toilets. The hut makes it much easier to not be spotted here.". The grid position of Park02 is <8,17,8>. Park02 is east of Park01. Park02 is south of Predicament10. Park02 is west of Predicament12.
To decide which number is the concealment of (R - Park02):
	decide on 5.
Park03 is a park room. The grid position of Park03 is <8,15,7>. Park03 is east of Predicament05. Park03 is south of Predicament07. The printed name of Park03 is "Trees". "There are a few trees here for you to hide behind.".
To decide which number is the concealment of (R - Park03):
	decide on 2.
Park04 is a park room. The grid position of Park04 is <8,16,7>. Park04 is east of Park03. Park04 is south of Park01.
Park05 is a park room. The grid position of Park05 is <8,17,7>. Park05 is east of Park04. Park05 is south of Park02.
Park06 is a park room. The grid position of Park06 is <8,18,7>. Park06 is east of Park05. Park06 is south of Predicament12. Park06 is west of Predicament14. The printed name of Park06 is "Trees". "There are a few trees here for you to hide behind.".
To decide which number is the concealment of (R - Park06):
	decide on 2.
Park07 is a park room. The grid position of Park07 is <8,14,6>. Park07 is east of Predicament03. Park07 is south of Predicament05.
Park08 is a park room. The grid position of Park08 is <8,15,6>. Park08 is east of Park07. Park08 is south of Park03.
Park09 is a park room. The grid position of Park09 is <8,16,6>. Park09 is east of Park08. Park09 is south of Park04. The printed name of Park09 is "Tree". "There is a single tree here for you to hide behind.".
To decide which number is the concealment of (R - Park09):
	decide on 1.
Park10 is a park room. The grid position of Park10 is <8,17,6>. Park10 is east of Park09. Park10 is south of Park05.
Park11 is a park room. The grid position of Park11 is <8,18,6>. Park11 is east of Park10. Park11 is south of Park06. The printed name of Park11 is "Upper Lake". "This section of the park is dominated by the lake, which makes it difficult to find anything to hide behind.".
To decide which number is the obstacle-hindrance of (R - Park11):
	decide on 4.
To decide which text is ObstacledDesc of (R - Park11):
	decide on "It takes a bit of extra time to move around the outside of the lake.".
Park12 is a park room. The grid position of Park12 is <8,19,6>. Park12 is east of Park11. Park12 is south of Predicament14. Park12 is west of Predicament16.
Park13 is a park room. The grid position of Park13 is <8,14,5>. Park13 is east of Predicament32. Park13 is south of Park07. Park13 is north of Predicament30. The printed name of Park13 is "Tree". "There is a single tree here for you to hide behind.".
To decide which number is the concealment of (R - Park13):
	decide on 1.
Park14 is a park room. The grid position of Park14 is <8,15,5>. Park14 is east of Park13. Park14 is south of Park08.
Park15 is a park room. The grid position of Park15 is <8,16,5>. Park15 is east of Park14. Park15 is south of Park09.
Park16 is a park room. The grid position of Park16 is <8,17,5>. Park16 is east of Park15. Park16 is south of Park10. The printed name of Park16 is "Picnic Spot". "There are a lot of picnic benches here, and absolutely nothing to hide behind.".
Park17 is a park room. The grid position of Park17 is <8,18,5>. Park17 is east of Park16. Park17 is south of Park11.
Park18 is a park room. The grid position of Park18 is <8,19,5>. Park18 is east of Park17. Park18 is south of Park12. Park18 is west of Predicament17. Park18 is north of Predicament21.
Park19 is a park room. The grid position of Park19 is <8,15,4>. Park19 is east of Predicament30. Park19 is south of Park14. Park19 is north of Predicament28. The printed name of Park19 is "Trees". "There are a few trees here for you to hide behind.".
To decide which number is the concealment of (R - Park19):
	decide on 2.
Park20 is a park room. The grid position of Park20 is <8,16,4>. Park20 is east of Park19. Park20 is south of Park15. The printed name of Park20 is "Tree". "There is a single tree here for you to hide behind.".
To decide which number is the concealment of (R - Park20):
	decide on 1.
Park21 is a park room. The grid position of Park21 is <8,17,4>. Park21 is east of Park20. Park21 is south of Park16.
Park22 is a park room. The grid position of Park22 is <8,18,4>. Park22 is east of Park21. Park22 is south of Park17. Park22 is west of Predicament21. Park22 is north of Predicament23. The printed name of Park22 is "Trees". "There are a few trees here for you to hide behind.".
To decide which number is the concealment of (R - Park22):
	decide on 2.
Park23 is a park room. The grid position of Park23 is <8,16,3>. Park23 is east of Predicament28. Park23 is south of Park20. Park23 is north of Predicament26.
Park24 is a park room. The grid position of Park24 is <8,17,3>. Park24 is east of Park23. Park24 is south of Park21. Park24 is north of Predicament25. Park24 is west of Predicament23. The printed name of Park24 is "Statue". "There's a large statue of an angel here. You can hide behind it pretty well.".
To decide which number is the concealment of (R - Park24):
	decide on 4.

Toilet01 is a bossed predicament room. Toilet01 is toilets. The printed name of Toilet01 is "Men's Toilets". Toilet01 is below Park02. The grid position of Toilet01 is <7,17,8>.
Definition: Toilet01 is nonstandard: decide yes.
Toilet02 is a bossed predicament room. Toilet02 is toilets. The printed name of Toilet02 is "Women's Toilets". Toilet02 is above Park02. The grid position of Toilet02 is <9,17,8>.
Definition: Toilet02 is nonstandard: decide yes.
male-gloryhole is a thing. male-gloryhole is not portable. The printed name of male-gloryhole is "[TQlink of item described]gloryhole[TQxlink of item described]". The text-shortcut of male-gloryhole is "gl". Understand "gloryhole" as male-gloryhole.
Figure of male gloryhole is the file "Env/School/gloryhole1.jpg".
To decide which figure-name is the examine-image of (G - male-gloryhole):
	decide on figure of male gloryhole.
To say ExamineDesc of (G - male-gloryhole):
	say "The east wall of the public toilets has a hole in the wall, the perfect size to fit a [manly-penis] through. It leads into the women's toilets. There's some impressive wall art of a slutty looking woman bending over, positioned so that the hole is where her pussy should be. Multiple giant crudely drawn penises are ejaculating on her, and several degrading quips have been scrawled over the walls, including 'Fat Chicks Love A Gloryhole' and 'Yes She's Ugly, But You Don't Have To See Her Face!'[line break][if the player is not a pervert][first custom style]How awful.[roman type][line break][end if]On the opposite wall, a vending machine stocks several different sizes of condoms.".
Check climbing male-gloryhole:
	try entering male-gloryhole instead.
Check entering male-gloryhole:
	if the player is not possessing a penis, say "You don't have a penis." instead;
	if the player is prone, say "You would need to be standing up." instead;
	if the player is pee protected, say "You would need to remove your [random worn pee covering clothing] first." instead;
	allocate 1 seconds;
	say "You insert your [player-penis] but nothing happens. There must be nobody on the other side, or at least nobody interested in your [player-penis]." instead.

female-gloryhole is a thing. female-gloryhole is not portable. The printed name of female-gloryhole is "[TQlink of item described]gloryhole[TQxlink of item described][if inline hyperlinks >= 2][link][bracket]knock[close bracket][as]knock on [text-shortcut of item described][end link][end if]". The text-shortcut of female-gloryhole is "gl". Understand "gloryhole", "wall" as female-gloryhole.
Figure of female gloryhole is the file "Env/School/gloryhole2.jpg".
To decide which figure-name is the examine-image of (G - female-gloryhole):
	decide on figure of female gloryhole.
To say ExamineDesc of (G - female-gloryhole):
	say "The west wall of the public toilets has a hole in the wall, the perfect size to fit a [manly-penis] through. The men's toilets are on the other side. There's some impressive wall art of a very hunky fireman, positioned so that the hole is where his penis should be. Several empowering quips have been scrawled over the walls, including 'Be Who You Want To Be' and 'You Are Beautiful No Matter What They Say!'[line break][if the player is not a pervert][first custom style]How... modern.[otherwise][variable custom style]Yeah! Girl power![end if][roman type][line break]Writing to the bottom right hand side of the gloryhole instructs a willing lady to 'Knock for Cock'.".
Check climbing female-gloryhole:
	try entering female-gloryhole instead.
Check entering female-gloryhole:
	if the player is not possessing a penis, say "You don't have a penis." instead;
	if the player is prone, say "You would need to be standing up." instead;
	if the player is pee protected, say "You would need to remove your [random worn pee covering clothing] first." instead;
	allocate 1 seconds;
	say "You insert your [player-penis] but nothing happens. There must be nobody on the other side, or at least nobody interested in your [player-penis]." instead.
To construct normal buttons for (D - female-gloryhole):
	if ButtonTableFull is 0:
		choose a blank row in the Table of Buttons;
		now the ButtonColour entry is lightModeFullGreen;
		now the ButtonImage entry is figure of SlapButton;
		now the ButtonCommand entry is "knock on [text-shortcut of D]";
		if the player is immobile, now the ButtonColour entry is lightModeFullRed. [turn red - player immobile]

To decide which figure-name is the examine-image of (G - an automated changing station):
	decide on figure of modification machine.
To say ExamineDesc of (G - an automated changing station):
	say "An adult-sized hard plastic 'bed' is attached to one wall here. Several robotic arms hover silently above it, seemingly ready to change the diaper of anyone who lies on it.[one of][line break][variable custom style]This was placed here by whatever forces put me in this predicament, wasn't it.[roman type][line break][or][stopping]".
To compute furniture resting on (G - an automated changing station):
	allocate 6 seconds;
	say "You lie on the hard surface. ";
	let diaperChangeAllowed be 1;
	let K be a random worn knickers;
	if K is knickers:
		repeat with C running through worn clothing:
			if the bottom-layer of C > the bottom-layer of K:
				now diaperChangeAllowed is 0;
				say "Nothing happens. Perhaps the robots don't know how to get past [NameDesc of C].";
		if diaperChangeAllowed is 1:
			if K is locked:
				now diaperChangeAllowed is 0;
				say "Nothing happens. Perhaps the robots don't have a way to deal with the lock.";
	if diaperChangeAllowed is 1:
		let D be plain-largish-diaper;
		if K is knickers:
			fully clean K;
			if D is not K, silently transform K into D;
		otherwise:
			summon D uncursed;
		say "The robotic arms immediately get to work [if K is knickers]removing your [ShortDesc of K] [end if][if K is dirty knickers]and wiping you down [end if]and before you know it you are wearing a dry [MediumDesc of D]!";
		if K is diaper, DiaperAddictUp 1;
	if the player is prone:
		now auto is 1;
		try standing;
		now auto is 0.

Predicament01, Predicament02, Predicament03, Predicament04, Predicament05, Predicament06, Predicament07, Predicament08, Predicament09, Predicament10, Predicament11, Predicament12, Predicament13, Predicament14, Predicament15, Predicament16, Predicament17, Predicament18, Predicament19, Predicament20, Predicament21, Predicament22, Predicament23, Predicament24, Predicament25, Predicament26, Predicament27, Predicament28, Predicament29, Predicament30, Predicament31, Predicament32, Park01, Park02, Park03, Park04, Park05, Park06, Park07, Park08, Park09, Park10, Park11, Park12, Park13, Park14, Park15, Park16, Park17, Park18, Park19, Park20, Park21, Park22, Park23, Park24, Toilet01, Toilet02 are in the School.

saved-map-zoom is a number that varies.

To clean up predicament universe:
	now Predicament17 is not discovered; [This is how we flag that the predicament world needs resetting the next time the player exits the alleyway]
	repeat with R running through unbossed predicament rooms:
		now R is not discovered;
	if smoothie van is in a predicament room, destroy smoothie van;
	repeat with E running through eggs:
		if E is in a predicament room, destroy E;
	if house-key is on-stage:
		if house-key is held, say "Your house key fizzles into nothingness.";
		destroy house-key.

To set up predicament universe:
	set up tokens for current-predicament;
	set up bystanders for current-predicament.

Report going east when the player is in Predicament03:
	set up predicament universe;
	compute predicament map reveal.

Report going down when the player is in Park02:
	compute predicament map reveal.

To compute predicament map reveal:
	if Predicament17 is not discovered: [This means that the map has been darkened so yes we need to brighten it again]
		if Predicament19 is not discovered, say "[variable custom style]Wait a minute, I recognise this place, it's my old neighbourhood![roman type][line break]You realise that your old house is just on the other side of this park. Can you make it all the way to the east without being noticed?!"; [Since this room is bossed it won't be re-darkened usually. So we know that if it is darkened, this is the first time it's been revealed]
		now saved-map-zoom is map-zoom;
		now map-zoom is 3;
		repeat with R running through predicament rooms:
			unless R is Predicament20, now R is discovered;
		[display entire map.]

Report going when the player is in a bathroom predicament room:
	now map-zoom is 1.

Report going when the player is in Park02:
	now map-zoom is 3.

Predicament-Pen is a room. [stored items that would make the predicament difficult]
predicamentPenList is a list of things that varies.
To say PredicamentPenCheck:
	repeat with C running through predicamentPenList:
		if C is not in Predicament-Pen:
			say "[C] missing from Predicament Pen!";
			now C is in Predicament-Pen.

Report going when the player is in Predicament20:
	repeat with C running through predicamentPenList:
		say "[BigNameDesc of C] reappears on you!";
		now C is worn by the player;
		if C is clothing, layer C correctly;
	truncate predicamentPenList to 0 entries;
	if tough-shit is 0:
		if the make-up of face is not predicamentSavedMakeUp:
			now the make-up of face is predicamentSavedMakeUp;
			say "Your face returns to the state it was before you entered the Extra Credit Zone. It [MakeUpDesc].";
	progress quest of predicament-quest;
	let T be a random trophy in Predicament20;
	if T is trophy, say "[bold type]There is a [T][bold type] in this room![roman type] [one of]You feel [bold type]permanently more lucky[roman type][or]Once again you feel more lucky[stopping] for having completed this Extra Credit Assignment.[one of][line break][variable custom style]Why do I get the feeling that if I rub the trophy, something interesting might happen?[roman type][line break][or][stopping]".

To say speech style of (M - a person):
	say first custom style.

A bystander is a kind of person. A bystander can be uninterested or interested. A bystander can be moved. The printed name of a bystander is "[TQlink of item described]bystander[TQxlink of item described][shortcut-desc][verb-desc of item described]".
[What's the most lewd they've seen the player this time?]
A bystander has a number called worst-appearance.
[Can be used for different things by different predicaments:
Smoothie predicament: How much will they enjoy the drink? (negative number means they have already tried a drink)]
A bystander has a number called bystanderInt1.
[Can be used for different things by different predicaments:
Smoothie predicament: How much convincing do they need?]
A bystander has a number called bystanderInt2.

Definition: a bystander is reactive if it is in the location of the player and it is interested. [Can it react to things it sees the player do?]

To decide which number is the default park pull resistance of (M - a bystander):
	decide on a random number between 1 and 10. [90% of the time they ignore their drive to go to the centre]

To decide which number is the park pull resistance of (M - a bystander):
	decide on the default park pull resistance of M.

Definition: a bystander is strolling if a random number between 1 and 5 > 3.

[Which place do all bystanders tend to wander towards?]
To decide which room is the predicament-pull-room of (M - a bystander):
	if current-predicament is smoothie-predicament and the player is in Predicament03 and the bystanderInt1 of M >= 0, decide on Predicament03;
	decide on Park16.

bystander-room-target is a room that varies.

To compute movement of (M - a bystander):
	now M is moved;
	now neighbour finder is the location of M;
	let A be the best route from the location of M to the predicament-pull-room of M; [People love going to the centre]
	let R be the park pull resistance of M;
	if water-fountain is penetrating asshole and M is in the location of water-fountain and M is not fountain-unquenched, now R is 1; [They'll always move away after drinking]
	if (M is not in the location of water-fountain or M is not fountain-unquenched) and (M is strolling or R <= 1):
		if A is not a direction or R > 1:
			now R is 3; [We use this to flag that the NPC is no longer choosing to walk towards the central park]
			let LA be the list of N-viable directions; [This is how we randomise an APPROPRIATE direction for M to walk in]
			sort LA in random order;
			if debugmode > 1, say "List of N-viable directions: [LA].";
			repeat with D running through LA:
				now bystander-room-target is the room D from neighbour finder;
				if debugmode > 1, say "Considering [D] ([bystander-room-target]): ";
				if M is target-room-happy:
					now A is D;
					if debugmode > 1, say "Chosen!";
					break;
				otherwise:
					if debugmode > 1, say "Not allowed.";
		if A is a direction:
			let P be the room A from (the location of M);
			if A is a direction and the number of barriers in P is 0 and the number of barriers in the location of M is 0:
				try M going A.

Definition: a bystander (called M) is target-room-happy:
	if bystander-room-target is bossed, decide no;
	decide yes. [Mostly yes but some NPCs will only go to the park or to the road]

To decide which number is the awareness of (M - a bystander):
	decide on 11.

To decide which number is the outrage tolerance of (M - a bystander):
	decide on 5.

To decide which number is the cringe tolerance of (M - a bystander):
	decide on 7.

To check perception of (M - a bystander):
	if M is in the location of the player:
		if M is uninterested:
			let R be a random number between 1 and the awareness of M;
			let C be the concealment of the location of the player;
			let P be the stealth of the player;
			if debuginfo > 0, say "[input-style]Bystander perception check: awareness roll (d[awareness of M]) = [R] | [C + P].5 = ([C].5) [location of the player] concealment rating + ([P]) player [if the player is upright]standing[otherwise]kneeling[end if] stealth rating[roman type][line break]";
			if C + P >= R and smoothie gag is not worn:
				say "[BigNameDesc of M] fails to notice you.";
			otherwise:
				now M is interested;
				compute perception of M;
		otherwise if the worst-appearance of M < the appearance of the player or (diaper quest is 1 and the worst-appearance of M < the cringe appearance of the player):
			compute worsened perception of M;
	if the predicament-pull-room of M is Predicament03 and M is not in Predicament03, now M is uninterested. [People who didn't take a smoothie can reconsider if they step away then step back.]

To compute perception of (M - a bystander):
	say "[BigNameDesc of M] notices you! ";
	if smoothie gag is worn and the bystanderInt1 of M >= 0:
		compute smoothie perception of M;
	otherwise if diaper quest is 1 and the cringe appearance of the player > the cringe tolerance of M and (the cringe appearance of the player >= the appearance of the player or the appearance of the player <= the outrage tolerance of M):
		compute cringe perception reaction of M;
		say HumiliateReflect (the cringe appearance of the player * 30);
	otherwise if the appearance of the player > the outrage tolerance of M:
		compute lewd perception reaction of M;
		say HumiliateReflect (the appearance of the player * 30);
	otherwise if nun-dress is worn:
		compute nun perception of M;
	otherwise:
		compute non-lewd perception reaction of M;
		if the appearance of the player >= the humiliation of the player / 2000, say moderateHumiliateReflect;
	if skirt-tray-vibrator is worn and the cakes-taken of skirt-tray-vibrator < the max-cakes of skirt-tray-vibrator:
		compute cupcake perception of M; [This always happens even if they look lewd]
	if the worst-appearance of M < the appearance of the player, now the worst-appearance of M is the appearance of the player;
	if diaper quest is 1 and the worst-appearance of M < the cringe appearance of the player, now the worst-appearance of M is the cringe appearance of the player.

To compute worsened perception of (M - a bystander):
	let A be the appearance of the player;
	let C be 0;
	if diaper quest is 1, now C is the cringe appearance of the player;
	if debuginfo > 0:
		if diaper quest is 1 and the worst-appearance of M < C, say "[input-style]New baby appearance rating ([C]) | ([worst-appearance of M]) [MediumDesc of M] worst seen appearance[roman type][line break]";
		otherwise say "[input-style]New slutty appearance rating ([A]) | ([worst-appearance of M]) [MediumDesc of M] worst seen appearance[roman type][line break]";
	if diaper quest is 1 and C > the cringe tolerance of M and (C >= A or A <= the outrage tolerance of M):
		say "[BigNameDesc of M] appears even more [one of]shocked by[or]disgusted at[or]unimpressed by[in random order] your appearance! ";
		compute cringe perception reaction of M;
		say HumiliateReflect (C * 30);
	otherwise if A > the outrage tolerance of M:
		say "[BigNameDesc of M] appears even more [one of]shocked by[or]disgusted at[or]unimpressed by[in random order] your appearance! ";
		compute lewd perception reaction of M;
		say HumiliateReflect (A * 30);
	otherwise:
		compute non-lewd worsened perception reaction of M;
	if the worst-appearance of M < A, now the worst-appearance of M is A;
	if the worst-appearance of M < C, now the worst-appearance of M is C.

To check disapproval of (M - a bystander):
	if M is interested:
		if the worst-appearance of M < the appearance of the player or (diaper quest is 1 and the worst-appearance of M < the cringe appearance of the player):
			compute worsened perception of M;
	otherwise:
		check perception of M.

To compute lewd perception reaction of (M - a bystander):
	say "[line break][first custom style]'[one of]What the fuck?!'[or]Is [he of the player]...?!'[or]Holy shit! Are you insane?'[or]What the fuck?! Disgusting!'[or]Oh my god!'[or]In public?! How inappropriate!'[or]Why would you come outside like that?!'[or]Ugh! How indecent!'[in random order][roman type][line break]".

To compute cringe perception reaction of (M - a bystander):
	compute lewd perception reaction of M.

To compute non-lewd perception reaction of (M - a bystander):
	say "[big he of M] looks at you strangely but doesn't say anything.".

To compute non-lewd worsened perception reaction of (M - a bystander):
	say "[BigNameDesc of M] frowns at you.".

To compute toy expulsion reaction of (M - a bystander):
	say "[BigNameDesc of M] [one of]almost chokes[or]leaps in surprise[or]barks in surprise[in random order].[line break][speech style of M]'[one of]That was INSIDE you?!'[or]What the hell? Did you just push that out of your fuckhole in front of me?!'[or]Oh my gosh, you filthy pervert!'[in random order][roman type][line break][moderateHumiliateReflect]";
	now M is interested;
	if the worst-appearance of M < the appearance of the player, now the worst-appearance of M is the appearance of the player;
	if diaper quest is 1 and the worst-appearance of M < the cringe appearance of the player, now the worst-appearance of M is the cringe appearance of the player.

A camera-bystander is a kind of bystander. The printed name of a camera-bystander is "[TQlink of item described][man of item described] on [his of item described] phone[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "man", "on his phone" as camera-bystander when item described is male. Understand "woman", "on her phone" as camera-bystander when item described is female. Understand "phone" as camera-bystander.

To compute lewd perception reaction of (M - a camera-bystander):
	say "[big he of M] [one of]widens [his of M] eyes and quickly[or]gasps and quickly[or]doesn't say anything, but just[then at random] raises [his of M] phone and snaps a photo of you![line break][italic type]CLICK![roman type][line break]You then see [him of M] tapping away, and a 'whoosh' sound as [he of M] sends the photo to who knows how many people![one of][line break][variable custom style]Noooo! How many people are going to have seen me like this?![roman type][line break][or][stopping]";
	let A be the appearance of the player;
	if diaper quest is 1 and the appearance of the player < the cringe appearance of the player, now A is the cringe appearance of the player;
	compute digital reputation damage (PredicamentActivity of current-predicament) strength (A) quality (a random number between 1 and 6).

To say FlashFlav of (M - a camera-bystander):
	say "[BigNameDesc of M] [if M is not interested]notices you! [big he of M] [end if]gasps, snapping several photos of you with [his of M] phone![line break][italic type]CLICK! CLICK! CLICK! CLICK![roman type][line break]And then... a 'whoosh' sound as [he of M] sends the photo to who knows how many people![one of][line break][variable custom style]Now the whole world will know my shame...[roman type][line break][or][stopping]";
	let T be PredicamentActivity of current-predicament;
	if target-poster is expulsion poster, now T is "expelling stuff from your [asshole]";
	if target-poster is masturbation poster, now T is "masturbating";
	if target-poster is wetting poster, now T is "[if the player is pee protected]wetting yourself[otherwise]urinating[end if]";
	let A be the appearance of the player;
	if diaper quest is 1 and the appearance of the player < the cringe appearance of the player, now A is the cringe appearance of the player;
	compute digital reputation damage T strength (A) quality (a random number between 1 and 4);
	now M is interested;
	if the worst-appearance of M < the appearance of the player, now the worst-appearance of M is the appearance of the player;
	if diaper quest is 1 and the worst-appearance of M < the cringe appearance of the player, now the worst-appearance of M is the cringe appearance of the player;
	say HumiliateReflect (the appearance of the player * 30).

To compute toy expulsion reaction of (M - a camera-bystander):
	say "[BigNameDesc of M] leaps in surprise, but [his of M] camera is at the ready![italic type]CLICK! CLICK! CLICK! CLICK![roman type][line break]And then... a 'whoosh' sound as [he of M] sends the photo to who knows how many people![line break][strongHumiliateReflect]";
	now M is interested;
	let T be "you in public, as a sex toy falls from your orifice to the ground below";
	compute digital reputation damage T strength 16 quality (a random number between 1 and 3);
	if the worst-appearance of M < the appearance of the player, now the worst-appearance of M is the appearance of the player;
	if diaper quest is 1 and the worst-appearance of M < the cringe appearance of the player, now the worst-appearance of M is the cringe appearance of the player.

Figure of Businessman Bystander is the file "NPCs/School/Bystander/bystander1.jpg".
Figure of Businesswoman Bystander is the file "NPCs/School/Bystander/bystander2.jpg".
Figure of Male Birdwatcher Bystander is the file "NPCs/School/Bystander/bystander3.jpg".
Figure of Female Birdwatcher Bystander is the file "NPCs/School/Bystander/bystander4.jpg".
Figure of Male Gardener Bystander is the file "NPCs/School/Bystander/bystander5.jpg".
Figure of Female Gardener Bystander is the file "NPCs/School/Bystander/bystander6.jpg".
Figure of Male Jogger Bystander is the file "NPCs/School/Bystander/bystander7.jpg".
Figure of Female Jogger Bystander is the file "NPCs/School/Bystander/bystander8.jpg".
Figure of Postman Bystander is the file "NPCs/School/Bystander/bystander9.jpg".
Figure of Postwoman Bystander is the file "NPCs/School/Bystander/bystander10.jpg".

Figure of Male Frisbeer Bystander is the file "NPCs/School/Bystander/bystander11.jpg".
Figure of Female Frisbeer Bystander is the file "NPCs/School/Bystander/bystander12.jpg".
Figure of Male Bookworm Bystander is the file "NPCs/School/Bystander/bystander13.jpg".
Figure of Female Bookworm Bystander is the file "NPCs/School/Bystander/bystander14.jpg".
Figure of Male Selfie Bystander is the file "NPCs/School/Bystander/bystander15.jpg".
Figure of Female Selfie Bystander is the file "NPCs/School/Bystander/bystander16.jpg".
Figure of Male Skater Bystander is the file "NPCs/School/Bystander/bystander17.jpg".
Figure of Female Skater Bystander is the file "NPCs/School/Bystander/bystander18.jpg".
Figure of Male Sunbather Bystander is the file "NPCs/School/Bystander/bystander19.jpg".
Figure of Female Sunbather Bystander is the file "NPCs/School/Bystander/bystander20.jpg".

Figure of Shutterbug Bystander is the file "NPCs/School/Bystander/bystander21.jpg".
Figure of Bro Bystander is the file "NPCs/School/Bystander/bystander22.jpg".
Figure of Bum Bystander is the file "NPCs/School/Bystander/bystander23.jpg".
Figure of Partygirl Bystander is the file "NPCs/School/Bystander/bystander24.jpg".
Figure of Cosplayer Bystander is the file "NPCs/School/Bystander/bystander25.jpg".
Figure of Construction Worker Bystander is the file "NPCs/School/Bystander/bystander26.jpg".
Figure of Housewife Bystander is the file "NPCs/School/Bystander/bystander27.jpg".
Figure of Hooker Bystander is the file "NPCs/School/Bystander/bystander28.jpg".
Figure of Couple Bystander is the file "NPCs/School/Bystander/bystander29.jpg".

[Figure of Watchful Bystander is the file "NPCs/School/bystander6.jpg".
Figure of Dogwalking Bystander is the file "NPCs/School/bystander7.jpg".
Figure of Idle Bystander is the file "NPCs/School/bystander8.jpg".
Figure of Football Bystander is the file "NPCs/School/bystander4.jpg".
Figure of Couple Bystander is the file "NPCs/School/bystander5.jpg".
Figure of Businesswoman Bystander is the file "NPCs/School/bystander9.jpg".
Figure of Engrossed Bystander is the file "NPCs/School/bystander10.jpg".
Figure of Jogging Bystander is the file "NPCs/School/bystander11.jpg".
Figure of Janitor Bystander is the file "NPCs/School/bystander12.jpg".
Figure of Rich Bystander is the file "NPCs/School/bystander13.jpg".
Figure of Policewoman Bystander is the file "NPCs/School/bystander14.jpg".]

To decide which figure-name is the examine-image of (M - a bystander):
	decide on figure of businessman bystander.

businessman-bystander is a bystander. The printed name of businessman-bystander is "[TQlink of item described]businessman[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "businessman" as businessman-bystander.
To decide which number is the awareness of (M - businessman-bystander):
	decide on 4.
To decide which number is the cringe tolerance of (M - businessman-bystander):
	decide on 5.
To say ExamineDesc of (M - businessman-bystander):
	say "This smartly dressed [man of M] looks very busy and distracted. [big he of M] is constantly checking [his of M] watch.".

businesswoman-bystander is a camera-bystander. businesswoman-bystander is female. The printed name of businesswoman-bystander is "[TQlink of item described]businesswoman[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "businesswoman" as businesswoman-bystander.
To decide which figure-name is the examine-image of (M - businesswoman-bystander):
	decide on figure of businesswoman bystander.
To decide which number is the awareness of (M - businesswoman-bystander):
	decide on 6.
To decide which number is the outrage tolerance of (M - businesswoman-bystander):
	decide on 3.
To decide which number is the cringe tolerance of (M - businesswoman-bystander):
	decide on 3.
To say ExamineDesc of (M - businesswoman-bystander):
	say "This smartly dressed [man of M] looks rather busy. [big he of M] is in the middle of an important looking phonecall.".

male-birdwatcher-bystander is a camera-bystander. The printed name of male-birdwatcher-bystander is "[TQlink of item described]birdwatcher[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "birdwatcher" as male-birdwatcher-bystander.
To decide which figure-name is the examine-image of (M - male-birdwatcher-bystander):
	decide on figure of male birdwatcher bystander.
To decide which number is the awareness of (M - male-birdwatcher-bystander):
	decide on 4.
To say ExamineDesc of (M - male-birdwatcher-bystander):
	say "This modestly dressed [man of M] is scouting around for interesting birds with [his of M] binoculars. A digital camera hangs from a strap around [his of M] neck, ready to be used at any time.".
Definition: male-birdwatcher-bystander is target-room-happy:
	if bystander-room-target is bossed or bystander-room-target is not park room, decide no;
	decide yes.

female-birdwatcher-bystander is a camera-bystander. female-birdwatcher-bystander is female. The printed name of female-birdwatcher-bystander is "[TQlink of item described]birdwatcher[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "birdwatcher" as female-birdwatcher-bystander.
To decide which figure-name is the examine-image of (M - female-birdwatcher-bystander):
	decide on figure of female birdwatcher bystander.
To decide which number is the awareness of (M - female-birdwatcher-bystander):
	decide on 4.
To decide which number is the outrage tolerance of (M - female-birdwatcher-bystander):
	decide on 3.
To say ExamineDesc of (M - female-birdwatcher-bystander):
	say "This modestly dressed [man of M] is scouting around for interesting birds with [his of M] binoculars. A digital camera hangs from a strap around [his of M] shoulder, ready to be used at any time.".
Definition: female-birdwatcher-bystander is target-room-happy:
	if bystander-room-target is bossed or bystander-room-target is not park room, decide no;
	decide yes.

male-gardener-bystander is a bystander. The printed name of male-gardener-bystander is "[TQlink of item described]gardener[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "gardener" as male-gardener-bystander.
To decide which figure-name is the examine-image of (M - male-gardener-bystander):
	decide on figure of male gardener bystander.
To say ExamineDesc of (M - male-gardener-bystander):
	say "This [man of M] is wearing denim overalls and carrying a hoe. It looks like [he of M][']s currently on [his of M] break.".
To compute lewd perception reaction of (M - male-gardener-bystander):
	say "[line break][first custom style]'Oh my god! And I thought *this* was the biggest hoe in the area!'[roman type][line break]".
To compute cringe perception reaction of (M - male-gardener-bystander):
	say "[line break][first custom style]'Well now, that's just plain weird. Are you all right in the head?!'[roman type][line break]".
To set up smoothie stats of (M - male-gardener-bystander):
	now the bystanderInt1 of M is a random number between 3 and 9; [How much will they enjoy the drink?]
	now the bystanderInt2 of M is 0. [How much convincing do they need?]
Definition: male-gardener-bystander is target-room-happy:
	if bystander-room-target is bossed or bystander-room-target is not park room, decide no;
	decide yes.

female-gardener-bystander is a bystander. female-gardener-bystander is female. The printed name of female-gardener-bystander is "[TQlink of item described]gardener[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "gardener" as female-gardener-bystander.
To decide which figure-name is the examine-image of (M - female-gardener-bystander):
	decide on figure of female gardener bystander.
To decide which number is the awareness of (M - female-gardener-bystander):
	decide on 7.
To say ExamineDesc of (M - female-gardener-bystander):
	say "This [man of M] is wearing denim overalls and tending to the grass and flowers.".
To set up smoothie stats of (M - female-gardener-bystander):
	now the bystanderInt1 of M is a random number between 3 and 9; [How much will they enjoy the drink?]
	now the bystanderInt2 of M is 0. [How much convincing do they need?]
Definition: female-gardener-bystander is target-room-happy:
	if bystander-room-target is bossed or bystander-room-target is not park room, decide no;
	decide yes.

male-jogger-bystander is a bystander. The printed name of male-jogger-bystander is "[TQlink of item described]jogger[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "jogger" as male-jogger-bystander.
To decide which figure-name is the examine-image of (M - male-jogger-bystander):
	decide on figure of male jogger bystander.
To say ExamineDesc of (M - male-jogger-bystander):
	say "This [man of M] is wearing a rather tight pair of exercise shorts and is completely topless, showing off [his of M] impressive abs. [big he of M]'s jogging at a decent pace, while listening to music through [his of M] earbuds.".
Definition: male-jogger-bystander is strolling: decide yes.
To decide which number is the outrage tolerance of (M - male-jogger-bystander):
	decide on 8.
To set up smoothie stats of (M - male-jogger-bystander):
	now the bystanderInt1 of M is a random number between 5 and 7; [How much will they enjoy the drink?]
	now the bystanderInt2 of M is a random number between -1 and 2. [How much convincing do they need?]

female-jogger-bystander is a bystander. female-jogger-bystander is female. The printed name of female-jogger-bystander is "[TQlink of item described]jogger[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "jogger" as female-jogger-bystander.
To decide which figure-name is the examine-image of (M - female-jogger-bystander):
	decide on figure of female jogger bystander.
To say ExamineDesc of (M - female-jogger-bystander):
	say "This [man of M] is wearing a rather skimpy set of exercise top and shorts. [big he of M]'s jogging at a decent pace, while listening to music through [his of M] earbuds.".
Definition: female-jogger-bystander is strolling: decide yes.
To decide which number is the outrage tolerance of (M - female-jogger-bystander):
	decide on 7.
To set up smoothie stats of (M - female-jogger-bystander):
	now the bystanderInt1 of M is a random number between 5 and 7; [How much will they enjoy the drink?]
	now the bystanderInt2 of M is a random number between -1 and 2. [How much convincing do they need?]

postman-bystander is a bystander. The printed name of postman-bystander is "[TQlink of item described]postman[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "postman" as postman-bystander.
To decide which figure-name is the examine-image of (M - postman-bystander):
	decide on figure of postman bystander.
To say ExamineDesc of (M - postman-bystander):
	say "This [man of M] is wearing a postie's uniform and has a satchel full of mail slung over one shoulder. [big he of M]'s busy heading from postbox to postbox. [big he of M] has a slightly mischievous grin on [his of M] face.".
Definition: postman-bystander is strolling: decide yes.
To decide which number is the outrage tolerance of (M - postman-bystander):
	decide on 9.
Definition: postman-bystander is target-room-happy:
	if bystander-room-target is bossed or bystander-room-target is not road room, decide no;
	decide yes.

postwoman-bystander is a bystander. postwoman-bystander is female. The printed name of postwoman-bystander is "[TQlink of item described]postwoman[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "postwoman" as postwoman-bystander.
To decide which figure-name is the examine-image of (M - postwoman-bystander):
	decide on figure of postwoman bystander.
To say ExamineDesc of (M - postwoman-bystander):
	say "This [man of M] is wearing a postie's uniform and has a satchel full of mail slung over one shoulder. [big he of M]'s busy heading from postbox to postbox.".
Definition: postwoman-bystander is strolling: decide yes.
Definition: postwoman-bystander is target-room-happy:
	if bystander-room-target is bossed or bystander-room-target is not road room, decide no;
	decide yes.

male-frisbeer-bystander is a bystander. The printed name of male-frisbeer-bystander is "[TQlink of item described]frisbeer[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "frisbeer" as male-frisbeer-bystander.
To decide which figure-name is the examine-image of (M - male-frisbeer-bystander):
	decide on figure of male frisbeer bystander.
To decide which number is the awareness of (M - male-frisbeer-bystander):
	decide on 5.
To say ExamineDesc of (M - male-frisbeer-bystander):
	say "This [man of M] is throwing a Frisbee around, so [he of M] is a little distracted.".
Definition: male-frisbeer-bystander is target-room-happy:
	if bystander-room-target is bossed or bystander-room-target is not park room, decide no;
	decide yes.

female-frisbeer-bystander is a bystander. female-frisbeer-bystander is female. The printed name of female-frisbeer-bystander is "[TQlink of item described]frisbeer[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "frisbeer" as male-frisbeer-bystander.
To decide which figure-name is the examine-image of (M - female-frisbeer-bystander):
	decide on figure of female frisbeer bystander.
To decide which number is the awareness of (M - female-frisbeer-bystander):
	decide on 5.
To say ExamineDesc of (M - female-frisbeer-bystander):
	say "This [man of M] is throwing a Frisbee around, so [he of M] is a little distracted.".
Definition: female-frisbeer-bystander is target-room-happy:
	if bystander-room-target is bossed or bystander-room-target is not park room, decide no;
	decide yes.

male-bookworm-bystander is a bystander. The printed name of male-bookworm-bystander is "[TQlink of item described]bookworm[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "bookworm" as male-bookworm-bystander.
To decide which figure-name is the examine-image of (M - male-bookworm-bystander):
	decide on figure of male bookworm bystander.
To decide which number is the awareness of (M - male-bookworm-bystander):
	decide on 2.
To say ExamineDesc of (M - male-bookworm-bystander):
	say "This [man of M] has [his of M] nose in [his of M] book[if M is not interested]. Hopefully [he of M] won't look up[end if].".
To compute lewd perception reaction of (M - male-bookworm-bystander):
	say "[line break][first custom style]'[one of]I... Oh god!'[or]H...haaah...Hello!'[in random order][roman type][line break][BigNameDesc of M] has turned bright red and you can see that [he of M] has a massive erection forming in [his of M] pants!".

female-bookworm-bystander is a bystander. female-bookworm-bystander is female. The printed name of female-bookworm-bystander is "[TQlink of item described]bookworm[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "bookworm" as male-bookworm-bystander.
To decide which figure-name is the examine-image of (M - female-bookworm-bystander):
	decide on figure of female bookworm bystander.
To decide which number is the awareness of (M - female-bookworm-bystander):
	decide on 2.
To say ExamineDesc of (M - female-bookworm-bystander):
	say "This [man of M] has [his of M] nose in [his of M] book[if M is not interested]. Hopefully [he of M] won't look up[end if].".
To compute lewd perception reaction of (M - female-bookworm-bystander):
	say "[line break][first custom style]'[one of]I... Oh my!'[or]H...haaah...How are you so brave?'[in random order][roman type][line break][BigNameDesc of M] has turned bright red and [he of M] is crossing [his of M] legs together as if [he of M] desperately needs the toilet.".

male-selfie-bystander is a camera-bystander. The printed name of male-selfie-bystander is "[TQlink of item described]selfie addict[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "selfie", "addict" as male-selfie-bystander.
To decide which figure-name is the examine-image of (M - male-selfie-bystander):
	decide on figure of male selfie bystander.
To decide which number is the awareness of (M - male-selfie-bystander):
	decide on 5.
To decide which number is the outrage tolerance of (M - male-selfie-bystander):
	decide on 7.
To say ExamineDesc of (M - male-selfie-bystander):
	say "This fashionably dressed [man of M] is a bit distracted by [his of M] own image. [big he of M]'s spending [his of M] entire time making poses and taking selfies of [himself of M].".

female-selfie-bystander is a camera-bystander. female-selfie-bystander is female. The printed name of female-selfie-bystander is "[TQlink of item described]selfie chick[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "selfie", "chick" as female-selfie-bystander.
To decide which figure-name is the examine-image of (M - female-selfie-bystander):
	decide on figure of female selfie bystander.
To decide which number is the awareness of (M - female-selfie-bystander):
	decide on 5.
To decide which number is the outrage tolerance of (M - female-selfie-bystander):
	decide on 8.
To say ExamineDesc of (M - female-selfie-bystander):
	say "This confidently dressed [man of M] is a bit distracted by [his of M] own image. [big he of M]'s spending [his of M] entire time making sexy poses and taking selfies of [himself of M].".

male-skater-bystander is a bystander. The printed name of male-skater-bystander is "[TQlink of item described]skater[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "skater" as male-skater-bystander.
To decide which figure-name is the examine-image of (M - male-skater-bystander):
	decide on figure of male skater bystander.
To say ExamineDesc of (M - male-skater-bystander):
	say "This long-haired [man of M] is wearing a vest, jeans and skating helmet and pads. [big he of M]'s whizzing along on [his of M] skateboard.".
Definition: male-skater-bystander is strolling: decide yes.
To set up smoothie stats of (M - male-skater-bystander):
	now the bystanderInt1 of M is a random number between 5 and 7; [How much will they enjoy the drink?]
	now the bystanderInt2 of M is a random number between -1 and 2. [How much convincing do they need?]

female-skater-bystander is a bystander. female-skater-bystander is female. The printed name of female-skater-bystander is "[TQlink of item described]skater[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "skater" as female-skater-bystander.
To decide which figure-name is the examine-image of (M - female-skater-bystander):
	decide on figure of female skater bystander.
To say ExamineDesc of (M - female-skater-bystander):
	say "This short-haired [man of M] is wearing a T-shirt, shorts and skating helmet and pads. [big he of M]'s whizzing along on [his of M] skateboard.".
Definition: female-skater-bystander is strolling: decide yes.
To set up smoothie stats of (M - female-skater-bystander):
	now the bystanderInt1 of M is a random number between 5 and 7; [How much will they enjoy the drink?]
	now the bystanderInt2 of M is a random number between -1 and 2. [How much convincing do they need?]

male-sunbather-bystander is a bystander. The printed name of male-sunbather-bystander is "[TQlink of item described]sunbathing dude[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "sunbathing", "dude" as male-sunbather-bystander.
To decide which figure-name is the examine-image of (M - male-sunbather-bystander):
	decide on figure of male sunbather bystander.
To say ExamineDesc of (M - male-sunbather-bystander):
	say "This [man of M] is wearing board shorts and nothing else, clearly very proud of [his of M] tanned body and rock hard abs. [big he of M]'s got expensive shades on [his of M] face and a beach ball underneath one arm.".
To decide which number is the outrage tolerance of (M - male-sunbather-bystander):
	decide on 10.
To set up smoothie stats of (M - male-sunbather-bystander):
	now the bystanderInt1 of M is a random number between 3 and 9; [How much will they enjoy the drink?]
	now the bystanderInt2 of M is 0. [How much convincing do they need?]
To compute lewd perception reaction of (M - male-sunbather-bystander):
	say "[line break][first custom style]'Holy shit! Come on, that's just too far!'[roman type][line break]".
To compute cringe perception reaction of (M - male-sunbather-bystander):
	say "[line break][first custom style]'Is there something wrong with your brain?!'[roman type][line break]".
To compute non-lewd perception reaction of (M - male-sunbather-bystander):
	if M is groping:
		compute grope of M;
	otherwise:
		say "[big he of M] gives you the 'finger-guns' sign.[if the saved appearance of the player > 3][line break][first custom style]'Looking fine, shawty! We should hang out some time!'[roman type][line break][end if]".
To compute non-lewd worsened perception reaction of (M - male-sunbather-bystander):
	say "[BigNameDesc of M] grins widely at you.[line break][first custom style]'Now that's what I like to see! Work it, baby!'[roman type][line break]".

female-sunbather-bystander is a bystander. female-sunbather-bystander is female. The printed name of female-sunbather-bystander is "[TQlink of item described]sunbathing babe[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "sunbathing babe" as female-sunbather-bystander.
To decide which figure-name is the examine-image of (M - female-sunbather-bystander):
	decide on figure of female sunbather bystander.
To say ExamineDesc of (M - female-sunbather-bystander):
	say "This [man of M] is wearing a rather skimpy blue bikini and sipping from a cool drink. [big he of M] seems very confident in [his of M] own (very tanned) skin.".
To decide which number is the outrage tolerance of (M - female-sunbather-bystander):
	decide on 12.
To set up smoothie stats of (M - female-sunbather-bystander):
	now the bystanderInt1 of M is 1; [How much will they enjoy the drink?]
	now the bystanderInt2 of M is 5. [How much convincing do they need?]
To compute lewd perception reaction of (M - female-sunbather-bystander):
	say "[line break][first custom style]'Come on, you've taken it way too far. What a SLUT!'[roman type][line break]".
To compute cringe perception reaction of (M - female-sunbather-bystander):
	say "[line break][first custom style]'Are you for real?!'[roman type][line break]".
To compute non-lewd perception reaction of (M - female-sunbather-bystander):
	say "[big he of M] gives you a friendly thumbs up.[if the saved appearance of the player > 3][line break][first custom style]'I LOVE your confidence! You do you, sister! Don't let anyone tell you how to dress!'[roman type][line break][end if]".
To compute non-lewd worsened perception reaction of (M - female-sunbather-bystander):
	say "[BigNameDesc of M] hums with approval.[line break][first custom style]'You flaunt what you got, sister! Ain't no shame in that!'[roman type][line break]".

shutterbug-bystander is a camera-bystander. The printed name of shutterbug-bystander is "[TQlink of item described]shutterbug[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "shutterbug" as shutterbug-bystander.
To decide which figure-name is the examine-image of (M - shutterbug-bystander):
	decide on figure of shutterbug bystander.
To decide which number is the awareness of (M - shutterbug-bystander):
	decide on 10.
To decide which number is the outrage tolerance of (M - shutterbug-bystander):
	decide on 2.
To say ExamineDesc of (M - shutterbug-bystander):
	say "This creepy looking guy seems to be trying to take photos of everything that moves...".

bro-bystander is a bystander. The printed name of bro-bystander is "[TQlink of item described]bro[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "bro" as bro-bystander.
To decide which figure-name is the examine-image of (M - bro-bystander):
	decide on figure of bro bystander.
To decide which number is the outrage tolerance of (M - bro-bystander):
	decide on 14.
To say ExamineDesc of (M - bro-bystander):
	say "This guy looks like a total douchebag. [big his of M] shirt reads 'SEND NUDES' and [he of M] has a mocking sneer on [his of M] face.".
To compute lewd perception reaction of (M - bro-bystander):
	say "[line break][first custom style]'Holy shit! What the actual fuck is this?!'[roman type][line break]".
To compute non-lewd perception reaction of (M - bro-bystander):
	compute grope of M.
To compute non-lewd worsened perception reaction of (M - bro-bystander):
	say "[BigNameDesc of M] gives you two thumbs up.[line break][first custom style]'NICE! What a thot!'[roman type][line break]".

bum-bystander is a bystander. The printed name of bum-bystander is "[TQlink of item described]bum[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "bum" as bum-bystander.
To decide which figure-name is the examine-image of (M - bum-bystander):
	decide on figure of bum bystander.
To decide which number is the outrage tolerance of (M - bum-bystander):
	decide on 10.
To say ExamineDesc of (M - bum-bystander):
	say "This guy looks like [he of M]'s been living on the streets for a while, if [his of M] long beard and worn clothes are anything to go by.".
To compute lewd perception reaction of (M - bum-bystander):
	say "[line break][first custom style]'I must still be drunk...'[roman type][line break]".
To compute non-lewd perception reaction of (M - bum-bystander):
	compute grope of M.
To compute non-lewd worsened perception reaction of (M - bum-bystander):
	say "[BigNameDesc of M] cackles to [himself of M] as [he of M] watches you.".

partygirl-bystander is a bystander. partygirl-bystander is female. The printed name of partygirl-bystander is "[TQlink of item described]party girl[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "party", "girl" as partygirl-bystander.
To decide which figure-name is the examine-image of (M - partygirl-bystander):
	decide on figure of partygirl bystander.
To decide which number is the outrage tolerance of (M - partygirl-bystander):
	decide on 8.
To say ExamineDesc of (M - partygirl-bystander):
	say "This [man of M] is in a tight fitting clubbing dress, and is walking home carrying [his of M] heels in [his of M] hand, looking rather worse for wear the morning after. Some folks might call this a 'walk of shame'.".
To compute lewd perception reaction of (M - partygirl-bystander):
	say "[line break][first custom style]'I must still be drunk...'[roman type][line break]".
To compute non-lewd perception reaction of (M - partygirl-bystander):
	say "[line break][first custom style]'Ugh, [if the saved appearance of the player < 3]I'm never drinking again[otherwise]you and me both, sister[end if]...'[roman type][line break]".
To compute non-lewd worsened perception reaction of (M - partygirl-bystander):
	say "[BigNameDesc of M] scratches [his of M] head and looks at you with a confused stare.[line break][first custom style]'Are you all right...?'[roman type][line break]".

cosplay-bystander is a bystander. cosplay-bystander is female. The printed name of cosplay-bystander is "[TQlink of item described]cosplayer[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "cosplayer" as cosplay-bystander.
To decide which figure-name is the examine-image of (M - cosplay-bystander):
	decide on figure of cosplayer bystander.
To decide which number is the outrage tolerance of (M - cosplay-bystander):
	decide on 8.
To say ExamineDesc of (M - cosplay-bystander):
	say "This [man of M] is dressed up as some kind of anime character, complete with fake pink cat ears and tail.".
To compute lewd perception reaction of (M - cosplay-bystander):
	say "[line break][first custom style]'Um, is there a SLUT convention happening at the same time as the anime one or something?!'[roman type][line break]".
To compute cringe perception reaction of (M - cosplay-bystander):
	say "[line break][first custom style]'Um, is there a DISGUSTING FETISH convention happening at the same time as the anime one or something?!'[roman type][line break]".
To compute non-lewd perception reaction of (M - cosplay-bystander):
	say "[line break][first custom style]'[if the saved appearance of the player < 3]Do you know the quickest way to get to the anime convention[otherwise]Oh, are you going to the convention too? That's an interesting costume, I assume it's from an ecchi anime I haven't heard of[end if]?'[roman type][line break]".
To compute non-lewd worsened perception reaction of (M - cosplay-bystander):
	say "[BigNameDesc of M] scratches [his of M] head and looks at you with a confused stare.[line break][first custom style]'Are you all right? Do you need somewhere private to adjust your costume?'[roman type][line break]".

construction-worker-bystander is a bystander. construction-worker-bystander is female. The printed name of construction-worker-bystander is "[TQlink of item described]construction worker[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "construction", "worker" as construction-worker-bystander.
To decide which figure-name is the examine-image of (M - construction-worker-bystander):
	decide on figure of construction worker bystander.
Definition: construction-worker-bystander is strolling: decide no.
To say ExamineDesc of (M - construction-worker-bystander):
	say "This rather butch looking [man of M] is working on fixing a path.".
To compute lewd perception reaction of (M - construction-worker-bystander):
	say "[line break][first custom style]'You're the worst kind of [man of the player]. SLUT!'[roman type][line break]".
To compute cringe perception reaction of (M - construction-worker-bystander):
	say "[line break][first custom style]'[if there is a currently at least partially visible diaper]Is that a DIAPER?! [end if]Are you serious?!'[roman type][line break]".
To compute non-lewd perception reaction of (M - construction-worker-bystander):
	if M is groping:
		compute grope of M;
	otherwise:
		say "[line break][first custom style]'[if the saved appearance of the player < 3]Mind yourself[otherwise]You're looking fine, sweetie[end if].'[roman type][line break]".

housewife-bystander is a bystander. housewife-bystander is female. The printed name of housewife-bystander is "[TQlink of item described]housewife[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "housewife" as housewife-bystander.
To decide which figure-name is the examine-image of (M - housewife-bystander):
	decide on figure of housewife bystander.
To decide which number is the awareness of (M - housewife-bystander):
	decide on 9.
To decide which number is the outrage tolerance of (M - housewife-bystander):
	decide on 2.
To say ExamineDesc of (M - housewife-bystander):
	say "This prim and proper [man of M] is carrying [his of M] shopping home.".
To compute lewd perception reaction of (M - housewife-bystander):
	say "[line break][first custom style]'I knew this neighbourhood was going downhill! HMPH!'[roman type][line break]".

hooker-bystander is a bystander. hooker-bystander is female. The printed name of hooker-bystander is "[TQlink of item described]hooker[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "hooker" as hooker-bystander.
To decide which figure-name is the examine-image of (M - hooker-bystander):
	decide on figure of hooker bystander.
To decide which number is the outrage tolerance of (M - hooker-bystander):
	decide on 6.
To say ExamineDesc of (M - hooker-bystander):
	say "This skankily dressed [man of M] clearly wants to find a John and make some money.".
To compute lewd perception reaction of (M - hooker-bystander):
	say "[line break][first custom style]'Hey, this is my turf, bitch! Find your own block.'[roman type][line break]".
To compute cringe perception reaction of (M - hooker-bystander):
	say "[line break][first custom style]'I've done weird stuff for cash before, but even I would never stoop that low.'[roman type][line break]".

couple-bystander is a bystander. The printed name of couple-bystander is "[TQlink of item described]man with girlfriend[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "man", "girlfriend", "with girlfriend" as couple-bystander.
To decide which figure-name is the examine-image of (M - couple-bystander):
	decide on figure of couple bystander.
To decide which number is the outrage tolerance of (M - couple-bystander):
	decide on 4.
To say ExamineDesc of (M - couple-bystander):
	say "This [man of M]'s girlfriend seems to be rather irritated with how [he of M]'s looking at everyone except her[if M is interested], including you[end if].".
To compute non-lewd perception reaction of (M - couple-bystander):
	say "[line break][BigNameDesc of M] looks you up and down. [big his of M] girlfriend is the one that speaks, in an angry tone.[line break][first custom style]'Keep your eyes to yourself, John!'[roman type][line break]".
To compute lewd perception reaction of (M - couple-bystander):
	say "[line break][BigNameDesc of M] looks you up and down, mouth wide open. [big his of M] girlfriend shrieks at [him of M].[line break][first custom style]'Don't look at [him of the player], you pig!'[roman type][line break]".
To compute cringe perception reaction of (M - couple-bystander):
	say "[line break][BigNameDesc of M] looks you up and down, mouth wide open. [big his of M] girlfriend shrieks at [him of M].[line break][first custom style]'Oh my god, are you getting turned on by a [boy of the player] dressed as a baby? You disgusting pervert!'[roman type][line break]".
To compute cupcake perception of (M - couple-bystander):
	say "[BigNameDesc of M] takes a cupcake. ";
	now the charge of skirt-tray-vibrator is 3;
	increase the cakes-taken of skirt-tray-vibrator by 1;
	if the cakes-taken of skirt-tray-vibrator < the max-cakes of skirt-tray-vibrator:
		say "And then [he of M] takes another one![line break][speech style of M]'For my girlfriend!'[roman type][line break][he of M] explains.";
		increase the cakes-taken of skirt-tray-vibrator by 1;
	say skirtTrayBuzzFlav.

[watchful-bystander is a bystander. watchful-bystander is female. The printed name of watchful-bystander is "[TQlink of item described]watchful woman[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "watchful", "woman" as watchful-bystander.
To decide which figure-name is the examine-image of (M - watchful-bystander):
	decide on figure of watchful bystander.
To decide which number is the awareness of (M - watchful-bystander):
	decide on 10.
To decide which number is the outrage tolerance of (M - watchful-bystander):
	decide on 2.

dogwalking-bystander is a bystander. dogwalking-bystander is female. The printed name of dogwalking-bystander is "[TQlink of item described]dogwalking woman[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "dogwalking", "woman" as dogwalking-bystander.
To decide which figure-name is the examine-image of (M - dogwalking-bystander):
	decide on figure of dogwalking bystander.
To decide which number is the awareness of (M - dogwalking-bystander):
	decide on 7.
Definition: dogwalking-bystander is strolling if a random number between 1 and 5 > 1.
To compute cupcake perception of (M - dogwalking-bystander):
	say "[BigNameDesc of M] walks up to you and takes a cupcake. ";
	now the charge of skirt-tray-vibrator is 3;
	increase the cakes-taken of skirt-tray-vibrator by 1;
	if the cakes-taken of skirt-tray-vibrator < the max-cakes of skirt-tray-vibrator:
		say "And then [he of M] takes another one![line break][speech style of M]'Are they safe for dogs? Oh, I'm sure it's fine!'[roman type][line break][big he of M] feeds one to [his of M] dog!";
		increase the cakes-taken of skirt-tray-vibrator by 1;
	say skirtTrayBuzzFlav.

idle-bystander is a bystander. The printed name of idle-bystander is "[TQlink of item described]idle man[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "idle", "man" as idle-bystander.
To decide which figure-name is the examine-image of (M - idle-bystander):
	decide on figure of idle bystander.
Definition: idle-bystander is strolling: decide no.
To decide which number is the outrage tolerance of (M - idle-bystander):
	decide on 6.]

[football-bystander is a bystander. The printed name of football-bystander is "[TQlink of item described]footballer[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "footballer" as football-bystander.
To decide which figure-name is the examine-image of (M - football-bystander):
	decide on figure of football bystander.
To decide which number is the outrage tolerance of (M - football-bystander):
	decide on 5.
To decide which number is the cringe tolerance of (M - football-bystander):
	decide on 10.
To compute lewd perception reaction of (M - football-bystander):
	say "[line break][first custom style]'[if the appearance of the player > 8][one of]Holy shit! Are you insane?'[or]What the fuck?!'[or]Oh my god!'[in random order][otherwise][one of]Looking good, sweet-cheeks!'[or]Holy cow, you are HOT!'[or]Oh WOW! I'm going to be thinking about you in bed tonight.'[or]Fuck yeah! You single, babe?'[in random order][end if][roman type][line break]".
To compute cringe perception reaction of (M - football-bystander):
	say "[line break][first custom style]'[one of]Holy shit! Why are you dressed like that?'[or]What the fuck? Is this a fetish thing?!'[in random order][roman type][line break]".

couple-bystander is a bystander. The printed name of couple-bystander is "[TQlink of item described]boyfriend with his girlfriend[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "boyfriend", "girlfriend", "with his girlfriend" as couple-bystander.
To decide which figure-name is the examine-image of (M - couple-bystander):
	decide on figure of couple bystander.
To decide which number is the outrage tolerance of (M - couple-bystander):
	decide on 1.
To compute cupcake perception of (M - couple-bystander):
	say "[BigNameDesc of M] walks up to you and takes a cupcake. ";
	now the charge of skirt-tray-vibrator is 3;
	increase the cakes-taken of skirt-tray-vibrator by 1;
	if the cakes-taken of skirt-tray-vibrator < the max-cakes of skirt-tray-vibrator:
		say "And then [he of M] takes another one![line break][speech style of M]'For my girlfriend!'[roman type][line break][he of M] explains.";
		increase the cakes-taken of skirt-tray-vibrator by 1;
	say skirtTrayBuzzFlav.

engrossed-bystander is a camera-bystander. engrossed-bystander is female. The printed name of engrossed-bystander is "[TQlink of item described]phone-engrossed woman[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "phone-engrossed", "engrossed", "woman" as engrossed-bystander.
To decide which figure-name is the examine-image of (M - engrossed-bystander):
	decide on figure of engrossed bystander.
To decide which number is the awareness of (M - engrossed-bystander):
	decide on 2.
Definition: engrossed-bystander is strolling if a random number between 1 and 4 > 3.
To decide which number is the outrage tolerance of (M - engrossed-bystander):
	decide on 7.

janitor-bystander is a bystander. janitor-bystander is female. The printed name of janitor-bystander is "[TQlink of item described]janitor[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "janitor" as janitor-bystander.
To decide which figure-name is the examine-image of (M - janitor-bystander):
	decide on figure of janitor bystander.

rich-bystander is a bystander. The printed name of rich-bystander is "[TQlink of item described]rich man[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "rich", "man" as rich-bystander.
To decide which figure-name is the examine-image of (M - rich-bystander):
	decide on figure of rich bystander.

police-bystander is a bystander. police-bystander is female. The printed name of police-bystander is "[TQlink of item described]policewoman[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "policewoman" as police-bystander.
To decide which figure-name is the examine-image of (M - police-bystander):
	decide on figure of policewoman bystander.]

A game universe initialisation rule:
	let N be 1;
	repeat with M running through bystanders:
		now the text-shortcut of M is the substituted form of "bs[N]";
		increase N by 1;
	change the north exit of Predicament20 to School01. [It's a one-way journey]

An all time based rule (this is the bystanders move rule):
	if the player is in an unbossed predicament room or the player is in Predicament02:
		update appearance level; [We really want to make sure we've got this accurate]
		repeat with M running through alive bystanders:
			if debugmode > 1, say "Computing [NameDesc of M] ([location of M]).";
			if M is not moved, compute movement of M;
			now M is not moved;
			check perception of M;
		[display entire map.]

To set up bystanders for (P - a predicament):
	set up 20 bystanders.

To set up tokens for (P - a predicament):
	let tokensAlreadySetUp be false;
	if there is a held mass collectible:
		now tokensAlreadySetUp is true;
	otherwise:
		repeat with R running through predicament rooms:
			if there is a mass collectible in R, now tokensAlreadySetUp is true;
	if tokensAlreadySetUp is false:
		let LT be a list of things;
		let TK be nothing;
		let TK be a random off-stage defiance token;
		if TK is a thing, add TK to LT;
		let TK be a random off-stage fabric token;
		if TK is a thing, add TK to LT;
		let TK be a random off-stage sanity token;
		if TK is a thing, add TK to LT;
		let TK be a random off-stage magic token;
		if TK is a thing, add TK to LT;
		repeat with T running through LT:
			let place-attempts be 0;
			while T is off-stage and place-attempts < 50:
				increase place-attempts by 1;
				let L be a random unbossed predicament room;
				if the number of things in L is 0, now T is in L.

To set up (N - a number) bystanders:
	let LB be the list of bystanders;
	repeat with M running through LB:
		destroy M;
	sort LB in random order;
	truncate LB to N entries;
	repeat with M running through LB:
		now M is uninterested;
		now the worst-appearance of M is 0;
		let valid-location-found be 0;
		while valid-location-found is 0:
			now neighbour finder is a random unbossed predicament room;
			if a random number between 1 and 7 is 1 or neighbour finder is Predicament03 or neighbour finder is Toilet01 or neighbour finder is Toilet02, now neighbour finder is Park16;
			now M is in neighbour finder;
			let LA be the list of N-viable directions;
			repeat with D running through LA:
				now bystander-room-target is the room D from neighbour finder;
				if M is target-room-happy, now valid-location-found is 1; [This NPC will be able to find a valid direction to walk in]
		now M is moved; [stops them moving instantly]

An all time based rule (this is the cars come past rule):
	if the player is in an unbossed predicament room:
		if the player is not in a park room and (current-predicament is not smoothie-predicament or the player is not in Predicament03) and a random number between 1 and 4 is 1:
			say "[bold type]Suddenly, a car [one of]comes driving[or]zooms[or]drives[or]sails[at random] past! [roman type]";
			if the appearance of the player > 2 or the cringe appearance of the player > 4:
				say "The driver honks [his of shopkeeper] horn as [he of shopkeeper] spots you!";
				let R be a random number between 1 and 2;
				if R is 1 and face is not listed in the armUses of arms:
					choose a blank row in Table of Published Disgraces;
					now the content entry is the substituted form of "low resoution dashcam footage of [PredicamentActivity of current-predicament] [ReputationAttire]";
					now the published entry is the substituted form of "has been uploaded to www.caughtondashcam.net";
					now the severity entry is the appearance of the player;
					now the popularity entry is 2;
					now the timestamp entry is time-earnings;
					now the viewsfuzz entry is a random number between -100 and 100;
					say "[variable custom style][one of]Wait, did [he of shopkeeper] have a dashcam?! Does that count as a recording???[or]Shit, I think I've been caught on a dashcam again![stopping][roman type][line break]";
					strongHumiliate;
				otherwise:
					if R is 1, say "The car had a dashcam, but thanks to you having an arm covering your face, people viewing the recording won't be able to identify you.";
					say moderateHumiliateReflect;
				repeat with M running through uninterested bystanders:
					if M is not in the location of the player:
						now neighbour finder is the location of M;
						let A be the best route from the location of M to the location of the player;
						if A is a direction:
							let P be the room A from (the location of M);
							if a random number between 1 and 5 > 3 and the number of barriers in P is 0 and the number of barriers in the location of M is 0, try M going A;
					if M is in the location of the player:
						now M is interested;
						compute perception of M;
				display entire map; [Icons need to be moved]
			otherwise:
				say line break.

A predicament is a kind of thing. A predicament is not portable.
A predicament has a number called times-completed.
A team-predicament is a kind of predicament.
team-predicament-partner is an object that varies.
Definition: a predicament is appropriate: decide no.
Definition: yourself is predicament-ready:
	if the latex-transformation of the player > 0 or black hood is worn, decide no;
	if (class-time is 1000 or class-time < 0) and armband is worn and armband is not solid gold and there is an alive undefeated correctly-ranked teacher, decide no; [ready for class]
	if there is worn locked clothing, decide no;
	repeat with C running through worn clothing:
		if C is unremovable and C is not piercing and C is not fake-nails and tough-shit is 1, decide no;
		if C is cursed and the quest of C is next-lesson-quest, decide no;
		if C is christmas dress and the class of the player is santa's little helper, decide no;
	decide yes.
Definition: a predicament is eligible if the times-completed of it is 0.
Definition: a team-predicament is eligible if the times-completed of it is 0 and team-predicament-partner is a monster.
To execute (P - a predicament):
	do nothing.

To decide which text is PredicamentActivity of (P - a predicament):
	decide on "you [one of]sneaking through[or]rushing through[in random order] [if the player is in a park room]a public park[otherwise]your neighbourhood[end if]".
To say PredicamentDescription of (P - a predicament):
	say "I'm currently in an Extra Credit lesson where I need to get back to my home while avoiding as many bystanders from noticing me as possible.".
current-predicament is an object that varies.

To say PredicamentRewardExplanation:
	say "[one of]HERE YOU CAN EARN TROPHIES WHICH MAY BE USEFUL ASSETS THROUGHOUT THE REST OF YOUR TRAINING. [caps please] NOTE, IT IS RECOMMENDED TO MOVE THROUGH THIS AREA WITH AS MODEST AN APPEARANCE AS POSSIBLE TO AVOID EMBARRASSING ENCOUNTERS WITH YOUR NEIGHBOURS. ALL YOUR ITEMS AND YOUR NEW TROPHY ARE WAITING FOR YOU IN THE DESTINATION LOCATION. PLEASE NOTE[or]ANOTHER TROPHY IS WAITING FOR YOU AT THE DESTINATION LOCATION. [caps please] REMEMBER[stopping]: ALL PHOTOS AND VIDEOS TAKEN ARE UPLOADED TO THE *REAL* INTERNET. YOUR REAL PUBLIC REPUTATION IS AT STAKE. ".
To say PredicamentRewardExplanationReaction:
	say "[one of][line break][variable custom style]How cryptic. [if the player is shameless]So photos of me can get uploaded to the real life Internet? How outrageous... and exciting![otherwise]But one thing is clear: if there's chances of photos of me being uploaded to the real life Internet, then I really must be careful here...[end if][or][stopping]".

simple-sneak-predicament is a predicament.
Figure of simple sneak predicament is the file "Special/Cutscene/cutscene-predicament-diaper-sneak1.jpg".
Definition: simple-sneak-predicament is appropriate if armband is sapphire.
To execute (SSP - simple-sneak-predicament):
	if diaper quest is 1:
		let P be a random pink leotard;
		blandify and reveal P;
		now P is in Predicament01;
		let P be pink-baby-booties;
		blandify and reveal P;
		now P is in Predicament01;
		now the raw-magic-modifier of P is 1;
		now P is dexterity-influencing;
		let D be plain-largish-diaper;
		summon D uncursed;
		now D is locked;
		now the raw-magic-modifier of D is 2;
		now D is diaper-addiction-influencing;
		now skeleton key is in a random unbossed park room;
	otherwise:
		let T be a random sexy exercise bra;
		now the size of T is the largeness of breasts;
		if the size of T > the max size of T, now the size of T is the max size of T;
		if the size of T < the min size of T, now the size of T is the min size of T;
		if the size of T < the largeness of breasts:
			now T is a random white string bikini top;
			now T is confidence;
		if the largeness of breasts <= 1, now T is a random polo shirt;
		blandify and reveal T;
		now T is in Predicament01;
		let M be a random black sporty microskirt;
		blandify and reveal M;
		now M is in Predicament01;
		now M is speed;
		now the raw-magic-modifier of M is a random number between 0 and 2;
		let C be blue-cameltoe briefs;
		if the player is male, now C is pink-kitty-panties;
		blandify and reveal C;
		now C is in Predicament01;
	now the printed name of Predicament01 is "Small Room";
	now the player is in Predicament01;
	say "You find yourself in a small room, empty except for a wardrobe, a small table and a front door that leads outside. You are completely naked[if diaper quest is 1] except for a [MediumDesc of plain-largish-diaper][end if]. The table has a piece of card on it with the word 'INSTRUCTIONS' on it. You read the instructions:[paragraph break][first custom style]'WELCOME TO EXTRA CREDIT CLASS. [PredicamentRewardExplanation]TO EARN THIS TROPHY, YOU MUST SIMPLY... RETURN HOME[if diaper quest is 1]. A KEY FOR YOUR PADLOCK HAS BEEN LEFT SOMEWHERE IN THE PARK. IT IS UP TO YOU IF YOU SPEND EXTRA TIME SEARCHING FOR IT[end if].'[PredicamentRewardExplanationReaction][roman type][line break]It looks like your outfit has been decided for you...";
	if diaper quest is 1, cutshow figure of simple sneak predicament.

vibe-photo-predicament is a predicament. The printed name of vibe-photo-predicament is "[TQlink of item described]wand vibrator[TQxlink of item described][shortcut-desc]". Understand "vibrator" as vibe-photo-predicament. The text-shortcut of vibe-photo-predicament is "wand".
To say ExamineDesc of (V - vibe-photo-predicament):
	say "This wand vibrator has a green circle towards the rear of its tip and a red diamond towards the front. You'll need to obscure the green circle by putting your crotch directly onto the tip, in order to satisfy the camera's requirements.".
vibe-photo-predicament has a number called camera-countdown.
vibe-photo-predicament can be position-adopted.
To decide which figure-name is the examine-image of (V - vibe-photo-predicament):
	if V is position-adopted or blue-exercise-shorts is held or blue-exercise-shorts is in Predicament01, decide on figure of vibe pose predicament 2;
	decide on figure of vibe pose predicament 1.
Definition: vibe-photo-predicament is appropriate if armband is sapphire and ((diaper quest is 0 and the player is a december 2019 top donator) or (diaper quest is 1 and the player is a december 2019 diaper donator)).
To execute (VPP - vibe-photo-predicament):
	now the stance of the player is 0;
	if diaper quest is 1:
		let D be pink-huge-diaper;
		summon D uncursed;
		now D is locked;
	otherwise:
		summon predicament-painted-cutoffs uncursed;
	now the camera-countdown of VPP is (a random number between 1 and 6) + (a random number between 0 and 5);
	now VPP is in Predicament01;
	now the player is in Predicament01;
	say "You find yourself in a small room, empty except for a camera on a tripod pointing at a wand vibrator, fixed vertically to a pole in the ground, and a locked cabinet containing a crop top and loose-fitting exercise shorts. You are completely naked except for a [if diaper quest is 1][MediumDesc of pink-huge-diaper] which has been locked around you waist with a padlock[otherwise]spraypainting of demin cutoffs which would hopefully fool someone who wasn't standing too closely[end if]. There are green dots painted onto the backs of your hands, the backs of your index and middle fingers, the front of your other six fingers, on the tip of the wand vibrator, [if diaper quest is 1]at the crotch of your diaper, [end if]and on wall either side of you at chest height. A robotic voice can suddenly be heard from a hidden speaker:[paragraph break][first custom style]'WELCOME TO EXTRA CREDIT CLASS. [PredicamentRewardExplanation]TO EARN THIS TROPHY, YOU MUST SIMPLY... RETURN HOME. TO UNLOCK THE BONUS CLOTHING, [caps please] ENSURE THAT THE CAMERA CANNOT DETECT ANY GREEN, AND CAN SEE FOUR SPOTS OF RED IN A DIAMOND SHAPE - YOUR TONGUE, NIPPLES AND [if diaper quest is 1]VIBRATOR[otherwise]CROTCH[end if]. THE CAMERA WILL ONLY TAKE ONE PHOTO, AT A RANDOM TIME IN THE NEAR FUTURE. THIS PHOTO WILL BE PUBLISHED ONLINE AND LINKED TO YOUR SOCIAL MEDIA ACCOUNT.'[PredicamentRewardExplanationReaction][roman type][line break]The 'predicament' seems simple. You must either walk home looking as you are, or pose in a way which meets the unlocking criteria - with your crotch pressed into the wand vibrator, your hands up to your sides showing 'peace signs', and your tongue lolling out of your mouth. And who knows exactly when the camera will go off...".
To say PredicamentDescription of (P - vibe-photo-predicament):
	say "I'm currently in an Extra Credit lesson where I need to decide whether to pose for a photo to earn decent clothing and then get back to my home while avoiding as many bystanders from noticing me as possible.".

To decide which number is the stimulation of (D - vibe-photo-predicament) on (B - a body part):
	decide on a random number between 15 and 20.

An all time based rule:
	if current-predicament is vibe-photo-predicament:
		decrease the camera-countdown of vibe-photo-predicament by 1;
		if the player is in Predicament01:
			if the player is upright and the camera-countdown of vibe-photo-predicament > -100:
				say "[if vibe-photo-predicament is position-adopted]Continue to hold[otherwise]Adopt[end if] the correct pose for the photo[one of] immediately[or][stopping]? ";
				if the player is consenting:
					say "You hold your hands up into peace signs, push your tongue lewdly out of your mouth, and [if vibe-photo-predicament is position-adopted]continue to push[otherwise]lower[end if] your [genitals] onto the vibrator. The stimulation is intense!";
					stimulate vagina from vibe-photo-predicament;
					if the player is upright, now vibe-photo-predicament is position-adopted;
					otherwise now vibe-photo-predicament is not position-adopted;
				otherwise:
					say "You [if vibe-photo-predicament is position-adopted]pull away from the vibrator and step[otherwise]hold back for now, and stay[end if] out of the camera's vision.";
					now vibe-photo-predicament is not position-adopted;
			if the camera-countdown of vibe-photo-predicament is 0:
				now the camera-countdown of vibe-photo-predicament is -100; [the player knows that the camera already flashed so has no motivation to straddle the vibrator any more]
				say "[italic type]FLASH![roman type][line break]The camera takes its photo.";
				if vibe-photo-predicament is position-adopted:
					say "You hear a series of high pitched electronic tones, declaring that the camera successfully detected the pattern it was looking for. The cabinet unlocks! However, you also hear the sound of a file being uploaded. Uh-oh.[line break][variable custom style]My friends are going to be able to see this! How humiliating![roman type][line break]";
					blandify and reveal baby doll crop top;
					now baby doll crop top is in the location of the player;
					blandify and reveal blue-exercise-shorts;
					now blue-exercise-shorts is in the location of the player;
					choose a blank row in Table of Published Disgraces;
					now the content entry is the substituted form of "a high resolution photo of you posing with peace signs, tongue lolled out and [genitals] pushed into a vibrating wand, [ReputationAttire]";
					now the published entry is the substituted form of "has been [one of]uploaded to[or]posted on[purely at random] your social media profile";
					now the severity entry is 100;
					now the popularity entry is 0;
					now the viewsfuzz entry is 0;
					now the timestamp entry is 0;
					[by setting these to 0, the 'views' will be set to 1, which means there's no tracked views and the reputation damage is flat severity]
				otherwise:
					say "You hear a series of low electronic tones, declaring that the camera failed to detect the pattern it was looking for.[line break][variable custom style]Well, there goes my only chance to get some proper clothes...[roman type][line break]".

triple-dildo-predicament is a predicament. The printed name of triple-dildo-predicament is "dildo".
triple-dildo-predicament has a number called pill-timer.
Definition: triple-dildo-predicament is appropriate if diaper quest is 0 and the player is female and super gag reflex < 2 and (pregnancy fetish is 0 or the pregnancy of the player is 0) and the rank of the player >= 3.
To decide which number is the girth of (P - triple-dildo-predicament):
	decide on 5.
To say FuckerDesc of (P - triple-dildo-predicament):
	say "the dildo".
To say BigFuckerDesc of (P - triple-dildo-predicament):
	say "The dildo".
Definition: triple-dildo-predicament is insertable: decide yes. [Allows it to cause stimulation]
Figure of triple dildo predicament is the file "Special/Cutscene/cutscene-predicament-triple-dildo1.jpg".
To say PredicamentDescription of (P - triple-dildo-predicament):
	say "I'm currently in an Extra Credit lesson where I need to get back to my home as fast as possible [if the pill-timer of triple-dildo-predicament > 0 and pregnancy fetish is 1]to get the plan B pill [otherwise if the pill-timer of triple-dildo-predicament > 0]to stop the video upload [end if]while avoiding as many bystanders from noticing me as possible.".
To execute (P - triple-dildo-predicament):
	now the player is in Predicament01;
	display entire map;
	now temporaryYesNoBackground is Figure of triple dildo predicament;
	now the stance of the player is 1;
	now the arousal of the player is 1000;
	update arousal;
	let E be grey-exercise-shorts;
	now E is in Predicament01;
	now E is blessed;
	now E is sure;
	now E is identified;
	now E is unowned;
	now the raw-magic-modifier of E is 1;
	let E be a random sexy exercise bra;
	now E is in Predicament01;
	now E is blessed;
	now E is sure;
	now E is identified;
	now E is unowned;
	now triple-dildo-predicament is penetrating face;
	now triple-dildo-predicament is penetrating vagina;
	now triple-dildo-predicament is penetrating asshole;
	now the stomach-semen of the player is 0;
	now the stomach-water of the player is 3;
	now refractoryperiod is 0;
	display focus stuff;
	now bigGameLoop is 2; [tells the game not to refresh any windows]
	say "[bold type]Suddenly you can feel that your arms are tightly bound behind you, with your hands in fingerless mittens, and there are thick dildos in your throat, pussy and ass![roman type][line break]A mechanical voice begins to explain your predicament.[line break][first custom style]'THE RULES ARE AS FOLLOWS: THE TANK OF SEMEN IN FRONT OF YOU IS CONNECTED TO YOUR BODY BY THREE TUBES. THE MOUTH AND [caps cunt] TUBES ARE CURRENTLY LOCKED IN PLACE. YOU CAN PUMP SEMEN DOWN YOUR THROAT BY SQUEEZING ON THE DILDO IN YOUR MOUTH. YOU CAN PUMP SEMEN UP YOUR ASSHOLE BY BOUNCING ON THE STUDDED ANAL DILDO ON THE CHAIR BELOW YOU. WARNING: IF YOU FAIL TO PERFORM ANY SIGNIFICANT PUMPING AT ALL FOR 10 SECONDS, THE LOCK HOLDING THE EXERCISE SHORTS IN THE CABINET BEHIND YOU WILL ENTER A PERMANENT LOCKED STATE.[paragraph break]'AFTER TWO MINUTES, ANYTHING REMAINING IN THE SEMEN TANK WILL BE DUMPED INTO YOUR FERTILE [caps pussy]. HOWEVER AS SOON AS THE SEMEN TANK IS EMPTY, ALL THE BONDAGE WILL FALL UNLOCKED AND YOU WILL BE ABLE TO ACCESS THE EXERCISE SHORTS. SO IF YOU DON'T SLACK FOR JUST TWO MINUTES, YOU WILL HAVE SOMETHING TO WEAR WHEN YOU LEAVE.[paragraph break]'FINALLY, IF YOU DO GET CREAMPIED, [if pregnancy fetish is 1]THERE IS A MORNING AFTER PILL WAITING FOR YOU IN YOUR HOUSE. BUT IT WILL BE DESTROYED[otherwise]THE COMPUTER IN YOUR HOUSE WILL UPLOAD A VIDEO RECORDING OF YOUR TIME HERE TO THE INTERNET[end if] EXACTLY 60 SECONDS AFTER THE TANK EMPTIES, SO THERE WILL BE NO TIME TO WASTE [bold type]PURPOSEFULLY EXPELLING[first custom style] OR [bold type]DOUBLING BACK ON YOURSELF[first custom style] ON YOUR WAY HOME.[paragraph break]'GO.'[roman type][line break]";
	say "The analog timer at the base of the semen tank starts ticking down!";
	let T be 120;
	let S be 100;
	let playerContinue be 1;
	while T > 0 and S > 0 and delayed fainting is 0:
		say "The tank is [S]% full. There are about [T] seconds left on the timer.";
		decrease T by 10;
		if playerContinue is not 0:
			reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
			set numerical response 1 to "squeeze on the dildo in your mouth";
			set numerical response 2 to "ride the dildo in your [asshole]";
			set numerical response 3 to "both squeeze and ride";
			set numerical response 4 to "do nothing[if grey-exercise-shorts is in Predicament01] (this will make the exercise shorts permanently locked away)[end if]";
			if grey-exercise-shorts is not in Predicament01, set numerical response 0 to "do nothing for the rest of the predicament";
			compute multiple choice question;
			now playerContinue is player-numerical-response;
		if playerContinue is 1 or playerContinue is 3:
			say "You squeeze and suck on the dildo in your mouth. Thick warm [semen] flows straight down your throat.";
			decrease S by 3;
			StomachSemenUp 1;
			if the stomach-semen of the player > a random number between 3 and 10:
				follow the player pukes rule;
			otherwise if the stomach-semen of the player > 3:
				say "[bold type]You gag horribly on the dildo but manage to hold back from puking up any [semen], for now.[roman type][line break]";
		if playerContinue is 2 or playerContinue is 3:
			say "You spend the next ten seconds pumping up and down on the dildo. ";
			now sex-hurt-balance is 10; [Each tick of asshole ruining should cause delicateness or fainting chance at maximum soreness]
			if refractoryperiod > 0:
				decrease refractoryperiod by 1;
				say "[bold type]But due to your fatigue from your recent orgasm, your pumping is much slower than before![roman type][line break]";
				AssFill 1;
				decrease S by 3;
				ruin asshole;
			otherwise:
				say "You feel the goopy stuff flowing straight through to your innards.";
				AssFill 3;
				decrease S by 9;
				ruin asshole times 2;
		otherwise:
			if the soreness of asshole > 0, say "Giving your [asshole] a break has made it feel a little less tender.";
			heal asshole times 1;
			force cool down 1500;
		if playerContinue is 0 or playerContinue is 4:
			say "You stay still and refuse to do anything.";
			if grey-exercise-shorts is in Predicament01:
				say "A [bold type]*clunk*[roman type] lets you know that the cabinet holding the shorts is now permanently locked tight.";
				destroy grey-exercise-shorts;
		check for arousal change;
	if delayed fainting is 0:
		if S > 0:
			say "[bold type]DING DING DING![roman type][line break]You are held still as the tank dumps [if S > 30]insane amounts of[otherwise if S > 10]huge amounts of[otherwise]the remaining[end if] [semen] into your [vagina]!";
			PussyFill S / 3;
			now the pill-timer of triple-dildo-predicament is 1; [deploy the pill]
	dislodge triple-dildo-predicament;
	now bigGameLoop is 0;
	conclude consenting;
	if delayed fainting is 0:
		say "Suddenly, in the same moment, all the bondage holding you falls apart at the seams and clatters to the floor. You are able to pull all three dildos out of your body[if grey-exercise-shorts is in Predicament01]. The lock on [NameDesc of E] turns green and the case falls open - you can take and wear the shorts[end if]!";
		if S > 0:
			if the semen volume of belly > 0, say "You want to expel the [semen] from your [asshole], but surely that'll make you lose time, and [bold type]you only have 60 seconds to race for the [if pregnancy fetish is 1]morning after pill[otherwise]computer to stop the upload[end if]![roman type][line break]";
			if newbie tips is 1, say "[newbie style]Newbie tip: If you [if the semen volume of belly > 0]manually expel your anal creampie or [end if]walk west, or do many other things that waste time, you will fail to reach your house in time. You will not be penalised for putting on clothes but that's about it.[roman type][line break]".

Carry out going:
	if the pill-timer of triple-dildo-predicament > 0:
		if the noun is west or the noun is up or the noun is down, increase the pill-timer of triple-dildo-predicament by 1.
Carry out waiting:
	if the pill-timer of triple-dildo-predicament > 0, increase the pill-timer of triple-dildo-predicament by 1.
Carry out cleaning it with:
	if the pill-timer of triple-dildo-predicament > 0, increase the pill-timer of triple-dildo-predicament by 1.
Carry out displacing:
	if the pill-timer of triple-dildo-predicament > 0, increase the pill-timer of triple-dildo-predicament by 1.
Carry out topdisplacing:
	if the pill-timer of triple-dildo-predicament > 0, increase the pill-timer of triple-dildo-predicament by 1.
Carry out taking off something:
	if the pill-timer of triple-dildo-predicament > 0, increase the pill-timer of triple-dildo-predicament by 1.
Carry out kneeling when the pill-timer of triple-dildo-predicament > 0:
	if seconds is 0, increase the pill-timer of triple-dildo-predicament by 1. [if it's on purpose]

An all time based rule (this is the triple dildo punishment pill rule):
	if the pill-timer of triple-dildo-predicament > 0:
		if the player is in Predicament20:
			if the pill-timer of triple-dildo-predicament is 1:
				if pregnancy fetish is 1:
					say "[bold type]You manage to grab the pill before it's dropped down a drain. [roman type]You quickly swallow it! You feel it immediately working to avoid any chance of pregnancy.";
					cancel father material;
				otherwise:
					say "[bold type]You manage to get to the PC just in time to close the program before it executes and uploads your video to the internet.[line break][variable custom style]Phew![roman type][line break]";
			otherwise if the pill-timer of triple-dildo-predicament is 2:
				say "[bold type]You arrive just in time to watch with [horror the semen addiction of the player] as the [if pregnancy fetish is 1]morning after pill is released from a metal claw and dropped down a drain[otherwise]program executes, uploading the video of your shameful predicament to the Internet[end if]! [roman type]You were so close!!!";
			otherwise:
				say "[bold type]When you arrive, you can see [if pregnancy fetish is 1]an open metal claw above a drainpipe. [roman type]The morning after pill must have been dropped down here when the timer ran out[otherwise]your computer with a 100% uploaded bar. [roman type]It looks like you were much too late to stop the video of your shameful predicament being uploaded to the Internet...";
			if the pill-timer of triple-dildo-predicament > 1:
				if pregnancy fetish is 1:
					now the pregnancy of the player is 1;
					let M be a random creampie pole trap;
					now M is inseminating vagina;
					now the father is M;
					check sudden pregnancy;
				otherwise:
					choose a blank row in Table of Published Disgraces;
					now the content entry is the substituted form of "a high quality video showing you being pumped full of [semen] by three dildos lodged deep inside each of your holes";
					now the published entry is the substituted form of "has been uploaded to www.pronhub.com";
					now the severity entry is 14;
					now the popularity entry is 8;
					now the timestamp entry is earnings;
					now the viewsfuzz entry is a random number between -100 and 100;
			now the pill-timer of triple-dildo-predicament is 0;
		otherwise if the player is not in a predicament room:
			now the pill-timer of triple-dildo-predicament is 0. [failsafe]

painted-cutoffs-predicament is a predicament.
painted-cutoffs-predicament has a number called predicament-completed.
Definition: painted-cutoffs-predicament is appropriate if the player is female and ((the predicament-completed of painted-cutoffs-predicament is 0 and the rank of the player is 2) or (the predicament-completed of painted-cutoffs-predicament < 3 and the rank of the player is 3)) and the player is able to get horny.
Definition: painted-cutoffs-predicament is eligible if diaper quest is 0 and ((the times-completed of it is 0 and the rank of the player is 2) or (the times-completed of it < 2 and the rank of the player is 3)).
Figure of painted cutoffs predicament is the file "Special/Cutscene/cutscene-painted-cutoffs-predicament1.jpg".
To set up bystanders for (P - painted-cutoffs-predicament):
	set up 15 bystanders.
To say PredicamentDescription of (P - painted-cutoffs-predicament):
	say "I'm currently in an Extra Credit lesson where I need to get back to my home while deciding whether to look extremely slutty or stimulate my [genitals], and avoiding as many bystanders from noticing me as possible.".
To execute (P - painted-cutoffs-predicament):
	now the player is in Predicament02;
	display entire map;
	now predicament-painted-cutoffs is worn by the player;
	now predicament-painted-cutoffs is sure;
	now predicament-painted-cutoffs is identified;
	now painted-vibrator-hands is worn by the player;
	now painted-vibrator-hands is sure;
	now painted-vibrator-hands is identified;
	let C be a random pink tube top;
	summon C uncursed;
	let C be a random satin court heels;
	summon C uncursed;
	now C is cursed;
	now the quest of C is predicament-quest;
	now the heel-height of C is 2;
	let C be a random frilly stockings;
	summon C uncursed;
	now refractoryperiod is 0;
	if the rank of the player < 3:
		now the predicament-completed of painted-cutoffs-predicament is 1;
		say "Suddenly you find yourself standing outside, in an alleyway. Round the corner, the noise of a road and the distant sound of voices can be heard. A robotic voice speaks from a speaker in the wall behind you.[line break][first custom style]'WELCOME TO THE [']EXTRA CREDIT['] CLASS. [PredicamentRewardExplanation]TO EARN THIS TROPHY, YOU MUST SIMPLY... RETURN HOME.[paragraph break]'GO.'[PredicamentRewardExplanationReaction][roman type][paragraph break]Looking down at yourself, you begin to realise the challenge. You're wearing a tight pink tube top which shows your nipples straight through it. Your feet are stuck in white stockings and black court heels. And the only other thing on your body is... [UniqueClothingDesc of predicament-painted-cutoffs][ClothingDesc of painted-vibrator-hands][variable custom style]Holy crap...[roman type][line break]";
	otherwise:
		say "Suddenly you find yourself standing outside, in an alleyway. On the ground, a heavy wooden box holds a stack of ping pong balls. Round the corner, the noise of a road and the distant sound of voices can be heard. A robotic voice speaks from a speaker in the wall behind you.[line break][first custom style]'WELCOME TO THE SUPER FUN [']PING PONG TRANSFER CHALLENGE['] EXTRA CREDIT CLASS. [PredicamentRewardExplanation]THE RULES ARE AS FOLLOWS: MOVE ALL TWENTY PING PONG BALLS FROM THIS BOX TO YOUR DRIVEWAY. THE DOOR TO YOUR HOUSE WILL THEN AUTOMATICALLY UNLOCK.[paragraph break]'GO.'[PredicamentRewardExplanationReaction][roman type][paragraph break]Looking down at yourself, you [if the predicament-completed of painted-cutoffs-predicament is not 0]are wearing the same get-up as before, with a tight pink tube top, white stockings and black court heels. [UniqueClothingDesc of predicament-painted-cutoffs][ClothingDesc of painted-vibrator-hands][otherwise]begin to realise the challenge. You're wearing a tight pink tube top which pretty much shows your nipples straight through it. Your feet are stuck in white stockings and black court heels. And the only other thing on your body is... [UniqueClothingDesc of predicament-painted-cutoffs][ClothingDesc of painted-vibrator-hands][variable custom style]Holy crap...[roman type][line break][end if]";
		now the predicament-completed of painted-cutoffs-predicament is 3;
		repeat with N running from 1 to 20:
			let E be a random available small egg;
			now E is in Predicament02.

Check going east when the player is in Predicament19:
	if the predicament-completed of painted-cutoffs-predicament is 3 and the number of small egg in the location of the player < 20, say "The door's locked! You need to get all 20 [ShortDesc of a random small egg]s onto the ground here for it to unlock..." instead.

serving-tray-predicament is a predicament.
Definition: serving-tray-predicament is appropriate if the rank of the player is (2 + diaper quest) and the player is able to get horny.
To set up bystanders for (P - serving-tray-predicament):
	set up 29 bystanders.

To decide which text is PredicamentActivity of (P - serving-tray-predicament):
	decide on "you giving out free cupcakes in humiliating attire [if the player is in a park room]a public park[otherwise]your neighbourhood[end if]".
To say PredicamentDescription of (P - serving-tray-predicament):
	say "I'm currently in an Extra Credit lesson where I need to decide to either look extremely slutty or wear a skirt-tray-thing that stimulates me as I serve cupcakes, and then get back to my home while avoiding as many bystanders from noticing me as possible.".

Figure of serving tray predicament 1 is the file "Special/Cutscene/cutscene-predicament-serving-tray1.jpg".
Figure of serving tray predicament 2 is the file "Special/Cutscene/cutscene-predicament-serving-tray2.jpg".
Figure of serving tray predicament 3 is the file "Special/Cutscene/cutscene-predicament-serving-tray3.jpg".
Figure of serving tray predicament 4 is the file "Special/Cutscene/cutscene-predicament-serving-tray4.jpg".
To execute (P - serving-tray-predicament):
	now the player is in Predicament02;
	display entire map;
	let C be a random pink tube top;
	summon C uncursed;
	let C be a random satin court heels;
	summon C uncursed;
	now C is cursed;
	now the quest of C is predicament-quest;
	now the heel-height of C is 2;
	let C be a random frilly stockings;
	summon C uncursed;
	now refractoryperiod is 0;
	if diaper quest is 1:
		let C be plain-largish-diaper;
		summon C uncursed;
		now skirt-tray-vibrator is worn by the player;
		now skirt-tray-vibrator is unskirted;
	otherwise:
		now skirt-tray-vibrator is in Predicament02;
	now the stance of the player is 0;
	say "Suddenly you find yourself standing outside, in an alleyway. Round the corner, the noise of a road and the distant sound of voices can be heard. A robotic voice speaks from a speaker in the wall behind you.[line break][first custom style]'WELCOME TO THE [']EXTRA CREDIT['] CLASS. [PredicamentRewardExplanation]THE SKIRT YOU HAVE BEEN PROVIDED COMES WITH A SERVING TRAY. WHENEVER A CAKE IS REMOVED FROM ITS PRESSURE PAD, THE VIBRATOR WILL TURN ON FOR 15 SECONDS. THE INTENSITY OF THE VIBRATION DEPENDS ON HOW MANY CAKES HAVE BEEN TAKEN. IF ALL CAKES ARE REMOVED FROM THEIR PRESSURE PADS, THE VIBRATOR WILL TURN PERMANENTLY ON, STUCK AT MAXIMUM POWER.[paragraph break]'GO.'[PredicamentRewardExplanationReaction][roman type][paragraph break]Looking down at yourself, you begin to realise the challenge. You're wearing a tight pink tube top which shows your nipples straight through it, with the phrase 'FREE SAMPLES' on the front. Your feet are stuck in black court heels. And [if diaper quest is 1 and the player is female]the only other thing on your body is a large white diaper with a subtle hole under your [vagina]. Attached to it and currently in your hands[otherwise if diaper quest is 1]the only other thing on your body is a large white diaper. Attached to it and currently in your hands[otherwise]your bottom half is currently completely naked. On the ground in front of you[end if] is a [skirt-tray-vibrator][paragraph break][ClothingDesc of skirt-tray-vibrator][variable custom style]Holy crap...[roman type][line break]".

maths-sex-predicament is a predicament.
Definition: maths-sex-predicament is appropriate if the rank of the player >= 3 - diaper quest.
To set up bystanders for (P - maths-sex-predicament):
	set up 15 + (diaper quest * 5) bystanders.

A maths-sex-predicament-puzzle is a kind of object. A maths-sex-predicament-puzzle has a text called puzzle-text. A maths-sex-predicament-puzzle has a number called the maths-answer.
There are 5 maths-sex-predicament-puzzle.
To set up (P - a maths-sex-predicament-puzzle) with difficulty (N - a number):
	let X be a random number between 1 and 9;
	let T be the substituted form of "[X]";
	if N < 0, now N is 0;
	repeat with M running from 0 to N:
		let Y be a random number between -9 and 9;
		if M is N, now Y is (maths-answer of P) - X;
		increase X by Y;
		unless Y is 0:
			if Y > 0, now T is the substituted form of "[T] + [Y]";
			otherwise now T is the substituted form of "[T] - [Y * -1]";
	now the puzzle-text of P is T.

A maths-sex-predicament-punishment is a kind of object.
Definition: a maths-sex-predicament-punishment is appropriate if diaper quest is 0.

To compute maths-sex:
	now current-monster is a random monster penetrating a body part;
	while current-monster is penetrating a body part:
		follow the default continue sex rules;
		check for arousal change;
		render buffered stuff;
	say "The [man of current-monster] leaves the way [he of current-monster] came.".

leave-me-alone is a maths-sex-predicament-punishment.
Definition: leave-me-alone is appropriate: decide no.
To decide which text is the maths-punishment-description of (M - leave-me-alone):
	decide on "Leave me alone".
To maths-execute (M - leave-me-alone):
	say "You hear [if diaper quest is 1]a series of electronic tones that sound somewhat disappointed[otherwise]the [man of shopkeeper] harrumph in disappointment, before leaving the way [he of shopkeeper] came[end if].".

condom-anal is a maths-sex-predicament-punishment.
To decide which text is the maths-punishment-description of (M - condom-anal):
	decide on "Fuck me in the ass with a condom, then tie it to my belt".
To maths-execute (M - condom-anal):
	let A be a random ultimate-lesson-actor;
	say "You hear the [man of A] exclaim with glee!";
	now A is wrapped;
	compute A entering asshole;
	compute maths-sex.

bareback-anal is a maths-sex-predicament-punishment.
To decide which text is the maths-punishment-description of (M - bareback-anal):
	decide on "Fuck me in the ass bareback and cum inside".
To maths-execute (M - bareback-anal):
	let A be a random ultimate-lesson-actor;
	say "You hear the [man of A] exclaim with glee!";
	now A is unwrapped;
	compute A entering asshole;
	compute maths-sex.

condom-vaginal is a maths-sex-predicament-punishment.
Definition: condom-vaginal is appropriate if the player is female and diaper quest is 0.
To decide which text is the maths-punishment-description of (M - condom-vaginal):
	decide on "Fuck me in the pussy with a condom, then tie it to my belt".
To maths-execute (M - condom-vaginal):
	let A be a random ultimate-lesson-actor;
	say "You hear the [man of A] exclaim with glee!";
	now A is wrapped;
	compute A entering vagina;
	compute maths-sex.

bareback-vaginal is a maths-sex-predicament-punishment.
Definition: bareback-vaginal is appropriate if the player is female and diaper quest is 0.
To decide which text is the maths-punishment-description of (M - bareback-vaginal):
	decide on "Fuck me in the pussy bareback and cum inside".
To maths-execute (M - bareback-vaginal):
	let A be a random ultimate-lesson-actor;
	say "You hear the [man of A] exclaim with glee!";
	now A is unwrapped;
	compute A entering vagina;
	compute maths-sex.

jizz-on-me is a maths-sex-predicament-punishment.
Definition: jizz-on-me is appropriate if bukkake fetish is 1.
To decide which text is the maths-punishment-description of (M - jizz-on-me):
	decide on "Masturbate until you cum all over my butt".
To maths-execute (M - jizz-on-me):
	say "You hear the [man of shopkeeper] chuckle and whip out [his of shopkeeper] [manly-penis]. It's not long before you hear [him of shopkeeper] grunting and feel the warmth of [his of shopkeeper] seed on your [AssDesc]! After that, you hear [him of shopkeeper] leave the way [he of shopkeeper] came.";
	squirt semen on hips by 2.

spank-my-butt is a maths-sex-predicament-punishment.
Definition: spank-my-butt is appropriate: decide yes.
[To decide which text is the maths-punishment-description of (M - spank-my-butt):
	decide on "Spank my ass 3 times or until you hear me thank you properly".
To maths-execute (M - spank-my-butt):
	say "You hear the [man of shopkeeper] chuckle. And then... THWACK! A strong blow lands on your rear. You let out an involuntary squeal.[line break]Do you ".]
To decide which text is the maths-punishment-description of (M - spank-my-butt):
	decide on "Spank my ass 3 times".
To maths-execute (M - spank-my-butt):
	say "You hear [if diaper quest is 0]the [man of shopkeeper] chuckle[otherwise]a robotic arm whirring into action[end if]. And then... THWACK! A strong blow lands on your rear. You let out an involuntary squeal.";
	PainUp 1;
	if diaper quest is 0:
		say "And then another. THWACK!";
		PainUp 1;
	otherwise:
		say "And then another. THWACK! The thick padding on your rear helps endure the brutal assault, but it still really hurts.";
	say "And finally a third. THWACK! This one stings even more than the other two!";
	PainUp 1;
	if diaper quest is 0, say "Satisfied, the [man of shopkeeper] leaves the way [he of shopkeeper] came.".

spank-my-butt-small is a maths-sex-predicament-punishment.
Definition: spank-my-butt-small is appropriate if diaper quest is 1.
To decide which text is the maths-punishment-description of (M - spank-my-butt-small):
	decide on "Spank my ass 2 times".
To maths-execute (M - spank-my-butt-small):
	say "You hear a robotic arm whirring into action. And then... THWACK! A strong blow lands on your rear. You let out an involuntary squeal.";
	PainUp 1;
	say "And then another. THWACK! The thick padding on your rear helps endure the brutal assault, but it still really hurts.".

spank-my-butt-large is a maths-sex-predicament-punishment.
Definition: spank-my-butt-large is appropriate if diaper quest is 1.
To decide which text is the maths-punishment-description of (M - spank-my-butt-large):
	decide on "Spank my ass 10 times".
To maths-execute (M - spank-my-butt-large):
	say "You hear a robotic arm whirring into action. And then... THWACK! A strong blow lands on your rear. You let out an involuntary squeal.";
	PainUp 1;
	say "And then another. THWACK! The thick padding on your rear helps endure the brutal assault, but it still really hurts. And you still have eight more to go...";
	PainUp 1;
	say "THWACK! THWACK! THWACK! THWACK! It's almost too much to bear!";
	PainUp 1;
	if the bladder of the player > (bladder-risky-level / 2):
		say "The pain of the spanking episode causes you to involuntarily wet yourself.";
		now delayed urination is 1;
		try urinating;
	say "THWACK! THWACK!";
	PainUp 1;
	if rectum > 1 and rectum < the delicateness of the player:
		say "The pain is so intense that you can't help but mess yourself.";
		compute messing;
	say "THWACK! THWACK! By the time it's finished, you are reduced to a quivering mess.";
	PainUp 1.

make-me-cum is a maths-sex-predicament-punishment.
Definition: make-me-cum is appropriate: decide yes.
To decide which text is the maths-punishment-description of (M - make-me-cum):
	decide on "Force me to cum with the wand vibrator".
To maths-execute (M - make-me-cum):
	say "You hear [if diaper quest is 1]a powerful vibrator whirr into motion as it is pressed[otherwise]the [man of shopkeeper] switch on the vibrator in question, and press it[end if] against your [genitals]. It's so strong! It's not long before your legs are shaking and blood is rushing to your head...";
	passively stimulate vagina from drink-machine times 2;
	check for arousal change;
	vaginally orgasm shamefully;
	if diaper quest is 0, say "The [man of shopkeeper] leaves the way [he of shopkeeper] came.".

new-ass-tattoo is a maths-sex-predicament-punishment.
Definition: new-ass-tattoo is appropriate if diaper quest is 0 and there is a worn tattoo and the number of worn ass tattoo is 0.
To decide which text is the maths-punishment-description of (M - new-ass-tattoo):
	decide on "Write something degrading on my ass with permanent ink".
To maths-execute (M - new-ass-tattoo):
	say "You hear the [man of shopkeeper] chuckle and pull the lid off of a permanent marker. And then you feel [him of shopkeeper] write 'just the tip' on your ass![line break][variable custom style]Really?![roman type][line break]";
	summon just the tip tattoo;
	say "The [man of shopkeeper] leaves the way [he of shopkeeper] came, taking the pen with [him of shopkeeper].".

new-ankle-tattoo is a maths-sex-predicament-punishment.
Definition: new-ankle-tattoo is appropriate if there is a worn tattoo and new-ass-tattoo is not appropriate and spank-me-heart tattoo is not worn.
To decide which text is the maths-punishment-description of (M - new-ankle-tattoo):
	decide on "Give me a new ankle tattoo".
To maths-execute (M - new-ankle-tattoo):
	say "You hear the [if diaper quest is 0][man of shopkeeper] think to [himself of shopkeeper] carefully[otherwise]robotic arm whirr into action[end if] and then you hear a tattoo needle being turned on![line break][variable custom style]Uh-oh...[roman type][line break]The needle brings stinging pain with it as it engages with your ankle.";
	PainUp 1;
	summon spank-me-heart tattoo;
	say "A few minutes later, you have a brand new tattoo.";
	try examining spank-me-heart tattoo;
	say "[variable custom style]No way... and this is permanent??[roman type][line break]";
	if diaper quest is 0, say "The [man of shopkeeper] leaves the way [he of shopkeeper] came, mumuring to [himself of shopkeeper] about a job well done.".

maths-timer is a number that varies. maths-timer is -100.

To render timer image (F - a figure-name) with background (N - a number):
	let W be the width of the map-window;
	let H be the height of the map-window;
	[Calculate background image size]
	let XRatio be (W * 1.0) / the pixel-width of F;
	let YRatio be (H * 1.0) / the pixel-height of F;
	let FXi be W;
	let FYi be H;
	if XRatio < YRatio:
		let FY be the pixel-height of F * XRatio;
		now FYi is FY to the nearest whole number;
	otherwise:
		let FX be the pixel-width of F * YRatio;
		now FXi is FX to the nearest whole number;
	let Xi be (W - FXi) / 2; [centre horizontally]
	let Yi be (H - FYi) / 2; [centre vertically]
	draw a rectangle N in the map-window at 0 by 0 with size W by H;
	display the image F in the map-window at Xi by Yi with dimensions FXi by FYi.

Figure of timer 1 is the file "Map/Timer/timer1.png".
Figure of timer 2 is the file "Map/Timer/timer2.png".
Figure of timer 3 is the file "Map/Timer/timer3.png".
Figure of timer 4 is the file "Map/Timer/timer4.png".
Figure of timer 5 is the file "Map/Timer/timer5.png".

Glulx input handling rule for a timer-event:
	if maths-timer > 0:
		decrease maths-timer by 1;
		if maths-timer >= 4:
			render timer image Figure of Timer 1 with background 16776960; [yellow]
		otherwise if maths-timer is 3:
			render timer image Figure of Timer 2 with background 16755200; [orangeyellow]
		otherwise if maths-timer is 2:
			render timer image Figure of Timer 3 with background 16733440; [orangered]
		otherwise if maths-timer is 1:
			render timer image Figure of Timer 4 with background lightModeFullRed; [red]
		otherwise:[###MG: There's some kind of issue going on here where the player gets stuck forever.]
			render timer image Figure of Timer 5 with background (TQcolour of violet); [violet]
			let W be the current focus window;
			focus the main window;
			say "[bold type]The timer runs out - you've failed to press any button at all![roman type] Press any key to continue.";
			focus W.

To execute (MSP - maths-sex-predicament):
	now Predicament01 is discovered;
	now the player is in Predicament01;
	say "You find yourself on your hands and knees, stuck in a hole-in-a-wall! The only item of clothing on your entire body is a [if diaper quest is 1]big thick white diaper[otherwise]string belt on your waist[end if]. In front of you sits a control panel with five buttons, labelled from 1 to 5.[line break][first custom style]'WELCOME TO THIS MATHEMATICS-THEMED [']EXTRA CREDIT['] CLASS. SIX INSTRUCTIONS WILL BE PRESENTED IN FRONT OF YOU. THE OPTION YOU CHOOSE WILL BE DISPLAYED ON THE MONITOR ABOVE YOUR LOWER HALF, AND [if diaper quest is 1]EXECUTED BY THE AUTOMATED ROBOTIC ARMS[otherwise]READ BY THE OBEDIENT INSTRUCTION UNDERTAKER WAITING[end if] IN THE ROOM BEHIND YOU, FILMED, AND UPLOADED TO THE INTERNET. THIS WILL OCCUR FIVE TIMES. APOLOGIES, THE INSTRUCTION NUMBER GENERATOR APPEARS TO BE SLIGHTLY MALFUNCTIONING; NUMBERS ARE DISPLAYED IN THE FORM OF MATHEMATICAL SUMS. THERE IS A STRICT TIME LIMIT FOR EACH INSTRUCTION. [if diaper quest is 0][paragraph break]'THERE IS ALSO A FURTHER BONUS AVAILABLE: ARRIVE HOME WITH FIVE CONDOMS PINNED TO YOUR BELT TO EARN A SECOND TROPHY![end if][paragraph break]'GO.'[paragraph break][variable custom style]Holy crap...[roman type][line break]";
	now the stance of the player is 1;
	if diaper quest is 0:
		if string-belt is not worn, summon string-belt cursed;
		now the quest of string-belt is predicament-quest;
	otherwise:
		summon plain-largish-diaper uncursed;
	let D be game difficulty - 1;
	repeat with N running from 1 to 5:
		let LM be the list of appropriate maths-sex-predicament-punishments;
		let new-shuffle be 1;
		while new-shuffle is 1:
			sort LM in random order;
			truncate LM to 4 entries;
			if diaper quest is 1 or condom-anal is listed in LM or condom-vaginal is listed in LM:
				now new-shuffle is 0;
			otherwise: [reshuffle - need a condom option available]
				truncate LM to 0 entries;
				repeat with M running through appropriate maths-sex-predicament-punishments:
					add M to LM;
		add leave-me-alone to LM;
		sort LM in random order;
		let LN be {1, 2, 3, 4, 5};
		sort LN in random order;
		let NP be 1;
		repeat with P running through maths-sex-predicament-puzzle:
			now the maths-answer of P is entry NP of LN;
			if entry NP of LM is leave-me-alone, set up P with difficulty D * 2;
			otherwise set up P with difficulty D / 2;
			increase NP by 1;
		say "[if diaper quest is 0]You hear the sound of the door opening and closing, as [one of]a[or]another[stopping] [man of shopkeeper] walks into the room behind you. [end if]Six new instructions appear on the panel, and the timer immediately starts ticking down! Are you ready to see the options? (The timer will start when you press yes).";
		now temporaryYesNoBackground is Figure of maths predicament;
		while the player is not consenting:
			say "Just press yes when you are ready.";
		now temporaryYesNoBackground is Figure of small image;
		request repeating Glk timer event at 3000 milliseconds;
		now maths-timer is 5;
		let E be 0;
		repeat with M running through LM:
			increase E by 1;
			repeat with P running through maths-sex-predicament-puzzle:
				if the maths-answer of P is entry E of LN, say "[puzzle-text of P]: ";
			say "'[maths-punishment-description of M].'[line break]";
		say "Timeout: 'Do what you like.'[paragraph break]";
		say "Time is running out! What numbered button do you press!?[paragraph break][link]1[end link] [link]2[end link] [link]3[end link] [link]4[end link] [link]5[end link][line break]";
		let CLTR be 1000;
		while CLTR is 1000:
			try looking;
			if the focus-window is g-present, display focus stuff;
			let TEMPCLTR be the chosen letter - 48;
			if maths-timer > 0, now CLTR is TEMPCLTR;
			otherwise now CLTR is 1001;
			if maths-timer > 0 and (CLTR < 1 or CLTR > 5):
				say "[bold type]Input not understood.[roman type] Please choose a number between 1 and 5.";
				now CLTR is 1000;
		say "[if CLTR < 999]As you press the button[otherwise]After the timer runs out[end if], the maths sums reveal their answers.[paragraph break]";
		let E be 0;
		let ELM be 1;
		repeat with M running through LM:
			increase E by 1;
			if CLTR is entry E of LN, now ELM is E;
			say "[if CLTR is entry E of LN][bold type][end if][entry E of LN]: '[maths-punishment-description of M].'[roman type][line break]";
		say "[if maths-timer <= 0][bold type][end if]Timeout: 'Do what you like.'[roman type][line break]The instruction in bold has just been sent to the screen above your [if diaper quest is 0]exposed ass, and is now being read by the [man of shopkeeper] who has been waiting there for [his of shopkeeper] instruction[otherwise]butt[end if].";
		reset the Glulx timer;
		if maths-timer > 0:
			now maths-timer is 0;
			let M be entry ELM of LM;
			maths-execute M;
			if M is leave-me-alone, increase D by 1;
			if D < 5, increase D by 1;
		otherwise:
			let M be condom-anal;
			if the player is possessing a vagina and pregnancy fetish is 1, now M is bareback-vaginal;
			if diaper quest is 1, now M is spank-my-butt-large;
			maths-execute M;
	let PMM be a random pink minimalist monokini;
	if diaper quest is 1, now PMM is a random crybaby T-shirt;
	blandify and reveal PMM;
	now PMM is in the location of the player;
	say "[line break][bold type]The hole-in-the-wall widens, releasing you and allowing you to leave at any time via the door. [roman type]On the ground, you have been left an outfit to return home in: [line break]";
	try examining PMM;
	compute autotaking PMM.

Report going when the player is in Predicament19:
	if string-belt is worn and the used condoms of string-belt >= 5 and the number of trophy in Predicament20 < 2:
		let TP be a random off-stage fetish appropriate trophy;
		if TP is trophy, now TP is in Predicament20.

team-enema-predicament is a team-predicament.
Definition: team-enema-predicament is appropriate if the rank of the player >= 4 and (diaper quest is 1 or a2m fetish >= 2) and (diaper quest is 0 or watersports fetish is 1).
Figure of team enema predicament is the file "Special/Cutscene/cutscene-predicament-team-enema1.jpg".

To execute (TEP - team-enema-predicament):
	let SGO be a random cheeky schoolgirl outfit;
	only destroy SGO;
	now SGO is in Predicament01;
	now Predicament01 is discovered;
	now the player is in Predicament01;
	now temporaryYesNoBackground is Figure of team enema predicament;
	let M be team-predicament-partner;
	say "Your stomach gurgles horribly. You look around... you're in a very small room, with... what the hell?! [BigNameDesc of M] is bound on [his of M] back on top of a bench, completely unable to move thanks to wrist and thigh binds. You're both naked. Underneath the grated floor below your feet is what appears to be two sets of clothes. A ring gag in [NameDesc of M][']s mouth keeps it wide and open, pointing towards the ceiling. A robotic voice speaks over some kind of tannoy.[line break][first custom style]'WELCOME TO THE PINK DIAMOND [']EXTRA CREDIT['] CLASS. [if diaper quest is 0]BOTH YOUR BELLIES HAVE BEEN FILLED WITH A VOLUMOUS SEMEN ENEMA. [end if]IN FIVE MINUTES THE DOOR and YOUR BONDAGE WILL UNLOCK, AND THE CLOTHES BENEATH THE GROUND WILL BE RELEASED. YOUR [if diaper quest is 0]BELLIES [end if][if watersports fetish is 1 and diaper quest is 1]AND [end if][if watersports fetish is 1]BLADDERS [end if]WILL NEED TO BE HELD, OR... OTHERWISE INGESTED... TO PREVENT YOUR CLOTHES FROM BECOMING SOILED.[paragraph break]'GOOD LUCK. YOUR TIME STARTS NOW.'[paragraph break][variable custom style]Uh-oh...[roman type][line break]";
	let T be 300;
	if diaper quest is 0, now the semen volume of belly is 30;
	if watersports fetish is 1 and the bladder of the player < 6, now the bladder of the player is 6;
	let SB be 10; [partner's enema]
	if diaper quest is 1, now SB is 0;
	let BL be 0; [partner's bladder]
	let L be semen;
	while T > 0:
		let Min be T / 60;
		let S be the remainder after dividing T by 60;
		say "[bold type]The timer screen on the wall currently reads [Min] minute[unless Min is 1]s[end if] and [S] seconds.[roman type][line break]";
		decrease T by 15;
		if the semen volume of belly > 0:
			say "Release your hold on your huge anal creampie?";
			if the player is consenting:
				now the squirt timer of belly is 1;
			otherwise:
				compute enema holding;
			if the squirt timer of belly > 0:
				now the squirt timer of belly is 0;
				say "You can choose to position your [asshole] over [NameDesc of M][']s mouth, if you wish, to force [him of M] to drink it rather than it going down onto your outfits. Do you squat over [NameDesc of M][']s mouth? ";
				if the player is consenting:
					say "[BigNameDesc of M] moans and tries to shake [his of M] head but to no avail. There's nothing [he of M] can do as you squat over [his of M] face and begin to expel a powerful jet stream of asscum into [his of M] wide open mouth. You can hear [him of M] gagging but [he of M] does [his of M] best to swallow it all, gulp after gulp, although you're not sure how much of it is because [he of M] agrees it's the best course of action, and how much of it is because [he of M] needs to swallow it in order to be able to breathe properly.[line break]It takes a number of long painful seconds before the flow of [semen] from your [asshole] begins to peter out, and eventually stops. By the time you're done, you've just forcefed [NameDesc of M] what must be over a litre of thick warm anal creampie.";
					HappinessDown M by 3;
				otherwise:
					say "[BigNameDesc of M] squeaks with timid objection as you let it rip, coating both of your outfits in your horrid asscum. It takes a number of long painful seconds before the flow of [semen] from your [asshole] begins to peter out, and eventually stops. By the time you're empty, the clothes are more cum than they are cotton...";
					FavourDown M;
					repeat with C running through clothing in the location of the player:
						now the semen-soak of C is the soak-limit of C;
					PuddleUp semen by 30;
				now the semen volume of belly is 0;
				reset all enema effects;
				now the holding strain of belly is 0;
		if watersports fetish is 1:
			if the player is bursting:
				say "Release your hold on your bladder?";
				if the player is consenting:
					now delayed urination is 2;
				otherwise:
					compute bladder growth;
				if delayed urination > 0:
					say "[if delayed urination is 1]You can't hold it any more!!! You involuntarily[otherwise]You[end if] release your hold on your bladder, and have to make a super quick decision - you can choose to position your [genitals] over [NameDesc of M][']s mouth, if you wish, to force [him of M] to drink it rather than it going down onto your outfits. Do you squat over [NameDesc of M][']s mouth? ";
					if the player is consenting:
						say "[BigNameDesc of M] moans and tries to shake [his of M] head but to no avail. There's nothing [he of M] can do as you squat over [his of M] face and let your [urine] flow into [his of M] wide open mouth. You can hear [him of M] coughing and spluttering but [he of M] does [his of M] best to swallow it all, gulp after reluctant gulp, until eventually [he of M] has drunk your entire bladder-full of [urine], like the perfect urinal.";
						FavourDown M by 2;
					otherwise:
						say "[BigNameDesc of M] lets out a concerned whine as [he of M] hears you emptying your bladder. By the time you're done, the clothing underneath you is completely soaked through with your [urine].";
						FavourDown M;
						repeat with C running through clothing in the location of the player:
							now the urine-soak of C is the soak-limit of C;
						PuddleUp urine by the bladder of the player;
					now delayed urination is 0;
					now the bladder of the player is 0;
			increase BL by 1;
		if diaper quest is 0, increase SB by 1;
		repeat with LX running from 1 to 2:
			let L be semen;
			let LN be SB;
			if LX is 2:
				now L is urine;
				now LN is BL;
			if LN > a random number between 6 and 20:
				say "[BigNameDesc of M] wriggles and lets out a panicked 'Eeee!'. You can tell [he of M][']s about to [if L is urine]piss [himself of M][otherwise]expel [his of M] [semen] enema[end if]. There's only one thing you could do to prevent the [variable L] flowing onto the clothing below your feet - you'd have to take it into your mouth. Do you ready your mouth in front of [NameDesc of M][']s crotch? ";
				let WL be 0; [Player relented and liquid goes on clothes?]
				let ML be 0; [Player's mouth has liquid in it?]
				if the player is consenting:
					say "[BigNameDesc of M] sighs with relief as [he of M] hears you collecting [his of M] [variable L] into your mouth rather than letting it soil your outfits.";
					decrease LN by 6;
					while LN > a random number between 0 and 6:
						say "Your mouth is full, but [NameDesc of M][']s flow keeps going! Do you swallow the mouthful of [variable L]? (If you don't, the [variable L] will overflow onto your clothes...) ";
						if the player is consenting:
							say "You shudder with shame as you gulp down the bitter liquid to make space for more in your mouth.";
							if L is urine:
								UrineTasteAddictUp 1;
								StomachUp 3;
							otherwise:
								StomachSemenUp 3;
						otherwise:
							now WL is 1;
						decrease LN by 6;
					now ML is 1;
				otherwise:
					now WL is 1;
				if WL > 0:
					say "[BigNameDesc of M] grunts with what might be disappointment as [his of M] [variable L] audibly gurgles as it makes its way from [his of M] genitals, down to the ground to where it coats both of your outfits.";
					repeat with C running through clothing in the location of the player:
						if L is urine:
							if the urine-soak of C < the soak-limit of C, increase the urine-soak of C by LN;
						otherwise:
							if the semen-soak of C < the soak-limit of C, increase the semen-soak of C by LN;
					PuddleUp L by LN;
					now LN is 0;
					FavourDown M;
				if ML > 0:
					say "Your mouth is full of [NameDesc of M][']s [variable L]! What do you want to do with it? You could swallow it yourself of course, but why do that when you could snowball it into [NameDesc of M][']s mouth and force [him of M] to drink [his of M] own bodily fluids! Do you snowball the [variable L] back into [NameDesc of M][']s mouth? ";
					if the player is consenting:
						say "You keep an expressionless face as you force-kiss [NameDesc of M] and push [his of M] [variable L] back into [his of M] mouth, forcing [him of M] to swallow [his of M] own shame.";
						HappinessDown M by 2;
					otherwise:
						say "You shudder with shame as you gulp down the bitter liquid to make space for more in your mouth.";
						if L is urine:
							UrineTasteAddictUp 1;
							StomachUp 3;
						otherwise:
							StomachSemenUp 3;
			if L is urine, now BL is LN;
			otherwise now SB is LN;
		if the stomach-liquid of the player > 3, StomachDown (the stomach-liquid of the player / 3);
	say "As the timer hits 0, a latch on the grate underneath your feet opens, allowing you access to the outfits. [BigNameDesc of M][']s bondage all clicks open, releasing [him of M]. [big he of M] is still having some trouble removing the ring gag from [his of M] jaw, so [he of M] just mutters some frustrated noises towards you before retrieving one of the [ShortDesc of SGO]s and making for the now-unlocked door.";
	try M going north;
	now M is in School01;
	say "It looks like you're going to have to make your way out of here on your own.".

team-quiz-predicament is a team-predicament.
team-quiz-predicament has a number called questionCorrect.
team-quiz-predicament has a number called questionWins. [how many questions has the player gotten correct in a row right now?]
team-quiz-predicament has a number called maxQuestionWins. [what's the most number of questions the player has gotten correct in a row?]
team-quiz-predicament has a number called questionFails. [how many questions has the player gotten wrong?]
team-quiz-predicament has a number called questionExpelled. [has the player let it rip yet?]

Definition: team-quiz-predicament is appropriate:
	if the rank of the player < 3, decide no;
	if diaper quest is 1 and the incontinence of the player >= the max-incontinence of the player, decide no;
	if diaper quest is 0 and (a2m fetish < 2 or the player is barbie), decide no;
	decide yes.
To set up bystanders for (P - team-quiz-predicament):
	set up 13 bystanders.
To say PredicamentDescription of (P - team-quiz-predicament):
	say "I'm currently in an Extra Credit lesson where I need to answer questions correctly to escape a situation where I'm forced to crawl and I'm going to release an enema on [student-name of team-predicament-partner][']s face, and then I need to get back to my home while avoiding as many bystanders from noticing me as possible.".

To execute (L - team-quiz-predicament):
	now the stance of the player is 1;
	now the questionWins of L is 0;
	now the maxQuestionWins of L is 0;
	now the questionFails of L is 0;
	now the questionExpelled of L is 0;
	let ST be team-predicament-partner;
	summon quiz-partner;
	now the bound-target of quiz-partner is ST;
	now the player is in Predicament01;
	say "Your stomach gurgles horribly. You look around... you're in a very small room, screens on all sides, and with... what the hell?! ";
	if diaper quest is 1:
		if diaper messing >= 7 and asshole is not actually occupied, now rectum is 30;
		let D be a random off-stage diaper;
		if there is an off-stage massive diaper, now D is a random off-stage massive diaper;
		summon D cursed;
		now the quest of D is predicament-quest;
		now the bottom-layer of D is 1;
		now the bottom-layer of quiz-partner is 2;
		say "You are kneeling in front of [NameDesc of ST], wristcuffs connected tightly to thigh binds by short red rope. More red rope connects [NameDesc of ST][']s collar with your anklecuffs via D-rings in your thigh binds, which means that the seat your new large white diaper is pushed into [his of ST] entire face. To complete the predicament, [NameDesc of ST][']s own ankles and thighs are tightly bound together. So, every time you try to crawl around, [he of ST][']ll be forced to follow you and [his of ST] face will be repeatedly smushed into your diaper.[paragraph break]Your [if rectum >= 30 and asshole is not actually occupied]bowels are[otherwise]bladder has[end if] somehow filled to the point where it's actually painful![line break][variable custom style]'Ow ow ow[one of]! What the hell is going on?!'[or]!'[stopping][roman type][line break]";
	otherwise:
		if the player is female and the number of worn clitoris piercing is 0:
			say "You realise you now have a cold metal clitoris piercing. ";
			summon normal clit piercing;
			force immediate clothing-focus redraw;
		otherwise if the player is male:
			say "You realise you have a metal ring clamped around the top of your scrotum. It feels weird, and you certainly won't be able to get it off past your balls any time soon. ";
		say "It is somehow stuck attached to a tongue piercing, which in turn is... pierced in [ST][']s mouth.[line break][variable custom style]Uh-oh.[roman type][line break]Yes, that's right, you're on all fours, with [NameDesc of ST] stuck behind you and [his of ST] tongue forced to stretch out as if waiting for a serving from your [asshole]. Your belly gurgles again, and you realise that your innards are indeed completely, painfully full of something goopy and nasty...";
		if the total fill of belly < belly limit - 5:
			if watersports fetish is 1, increase the urine volume of belly by ((belly limit - 5) - total fill of belly);
			otherwise AssFill ((belly limit - 5) - total fill of belly);
	say "[first custom style]'WELCOME TO THE RUBY [']EXTRA CREDIT['] CLASS. THERE ARE 60 SECONDS IN BETWEEN QUESTIONS. ANSWER TWO QUESTIONS IN A ROW CORRECTLY TO HAVE YOUR [if diaper quest is 1]BONDAGE[otherwise]PIERCINGS[end if] RELEASED. ANSWER THREE QUESTIONS IN A ROW CORRECTLY TO HAVE THE PROVOCACTIVE OUTFITS RELEASED. ANSWER FOUR QUESTIONS IN A ROW CORRECTLY TO HAVE THE COCKTAIL DRESSES RELEASED. THE GAME ENDS AFTER TWO INCORRECT ANSWERS OR WHEN THE DOOR IS OPENED. REWARDS ARE ONLY DISTRIBUTED AFTER QUESTIONS END.'[paragraph break]'GOOD LUCK. YOUR TIME STARTS NOW.'[paragraph break][variable custom style]Uh-oh...[roman type][line break][BigNameDesc of ST] squeals with anxiety from below you.[line break][speech style of ST]'What?! Oh no! [if ST is nasty student]Don't you dare[otherwise][big please] don't[end if] [if diaper quest is 1]go[otherwise]squirt that disgusting stuff out[end if] on my face, [NameBimbo]...'[roman type][line break][BigNameDesc of ST] does not sound amused at all!";
	zero focus stuff;
	display focus stuff;
	force immediate clothing-focus redraw;
	repeat with Q running through team-quiz-predicament-questions:
		reset Q.

An all time based rule (this is the team quiz predicament time rule):
	if current-predicament is team-quiz-predicament:
		if the player is in Predicament01 and the questionFails of team-quiz-predicament < 2 and currently-squirting is 0:
			let L be team-quiz-predicament;
			if questionExpelled of L is 0:
				if diaper quest is 1 and diaper messing is 7 and asshole is not actually occupied:
					check real messing;
				otherwise if diaper quest is 0 or (the questionFails of L + the maxQuestionWins of L) >= a random number between 2 and 4:
					say "You feel your [if diaper quest is 1]bladder[otherwise]sphincter[end if] beg to allow itself to be loosened. You know that if you resist, [if diaper quest is 1]you'll end up a little more incontinent[otherwise]it'll really hurt[end if]. Do you hold it in?";
					now temporaryYesNoBackground is figure of quiz predicament room;
					if the player is consenting:
						say "You hold on with everything that you've got.";
						if diaper quest is 1:
							increase incontinence by 1;
							if the incontinence of the player >= the max-incontinence of the player:
								say "But it's no use! ";
								now questionExpelled of L is 1;
						otherwise:
							PainUp 2;
					otherwise:
						now questionExpelled of L is 1;
					now temporaryYesNoBackground is figure of small image;
				if questionExpelled of L is 1:
					now questionExpelled of L is 2;
					if diaper quest is 1:
						compute quiz partner messing;
					otherwise:
						AssSquirt;
			compute quizQuestion of L;
			say "The screens all around you display the same words, followed by [first custom style]'next question in 59 secs...'[roman type][line break]";

Check going north when current-predicament is team-quiz-predicament:
	if the questionFails of team-quiz-predicament < 2 and the maxQuestionWins of team-quiz-predicament < 4 and the player is in Predicament01:
		say "This will end the quiz. Are you sure? ";
		if the player is consenting:
			allocate 3 seconds;
			now the questionFails of team-quiz-predicament is 2;
			say "As you begin to push open the door, the screens change colour to black and the quiz ends.";
			conclude quiz of team-quiz-predicament;
			say "[bold type]You are still in [Predicament01].[roman type][line break]";
		do nothing instead.

To compute quizQuestion of (L - team-quiz-predicament):
	let ST be team-predicament-partner;
	let Q be a random eligible team-quiz-predicament-question;
	if Q is a team-quiz-predicament-question:
		if debugmode > 1, say "Debug info: Chosen [question for Q][line break]";
		set up Q;
		execute Q;
		say "[first custom style]'That's ";
		if the questionCorrect of L is 1:
			increase questionWins of L by 1;
			if questionWins of L > maxQuestionWins of L, now maxQuestionWins of L is questionWins of L;
			say "correct!'[line break][variable custom style][one of]Phew[or]Yes[or]Nice[at random]! That's [if questionWins of L > 1][questionWins of L] in a row[otherwise]one[end if][if questionWins of L is 4]. Now let's get out of here[end if]...[roman type][line break]";
		otherwise:
			increase questionFails of L by 1;
			now questionWins of L is 0;
			let CA be correctAnswer of Q;
			say "incorrect! The correct answer was [if the maxAnswer of Q > 0][CA][otherwise if CA > 0][entry CA of the possible-answers of Q][otherwise] (BUG - no correct answer)[end if].'[roman type][line break]";
	otherwise:
		say "BUG: no valid question found. Abandoning...";
		now questionFails of L is 2;
	if the questionFails of L is 2:
		say "Now that you have gotten two questions incorrect, the screens change colour to black and the quiz ends.";
		conclude quiz of L.

To conclude quiz of (L - team-quiz-predicament):
	let ST be team-predicament-partner;
	if maxQuestionWins of L > 1:
		say "The [if diaper quest is 1]bondage keeping you knelt on top of [NameDesc of ST][']s face disappears[otherwise]piercings separate[end if]! [BigNameDesc of ST] can finally take [his of ST] face away from your ass.";
		if maxQuestionWins of L > 2:
			blandify and reveal backless negligee;
			now backless negligee is in the location of the player;
			say "Two naughty bedroom outfits fall from a container attached to the ceiling!";
			say FullExamineDesc of backless negligee;
			if maxQuestionWins of L > 3:
				let N be a random white slut clubbing dress;
				blandify and reveal N;
				now N is in the location of the player;
				say "Two slutty cocktail dresses fall from another container next to the first!";
			say "[BigNameDesc of ST] grabs one of the [if maxQuestionWins of L > 3]cocktail dresses[otherwise]negligees[end if] and runs out the door as quickly as [he of ST] can.";
		otherwise:
			say "[BigNameDesc of ST] runs out the door as quickly as [he of ST] can.";
		only destroy quiz-partner;
	otherwise:
		say "[BigNameDesc of ST] is still stuck, so has to follow you everywhere!".

A team-quiz-predicament-question is a kind of object.
A team-quiz-predicament-question has a number called askedAlready.
A team-quiz-predicament-question has a list of texts called possible-answers.
A team-quiz-predicament-question has a number called minAnswer.
A team-quiz-predicament-question has a number called maxAnswer.
A team-quiz-predicament-question has a number called correctAnswer.
Definition: a team-quiz-predicament-question is appropriate: decide yes.
Definition: a team-quiz-predicament-question (called Z) is eligible:
	if Z is not appropriate, decide no;
	repeat with Q running through team-quiz-predicament-questions:
		if Q is not Z and the askedAlready of Q < the askedAlready of Z and Q is appropriate, decide no;
	decide yes.
To set up (Q - a team-quiz-predicament-question):
	say "Bug - No function coded for this question.";
To say question for (Q - a team-quiz-predicament-question):
	say "Missing question goes here";
To execute (Q - a team-quiz-predicament-question):
	ask question of Q;
	process answer of Q;

To ask question of (Q - a team-quiz-predicament-question):
	say "[first custom style]'[question for Q]?'[roman type][line break]";
	if the maxAnswer of Q > 0: [number question]
		repeat with N running from the minAnswer of Q to the maxAnswer of Q:
			say "[link][N][end link] ";
		say line break;
	otherwise: [text question]
		let N be 1;
		repeat with T running through the possible-answers of Q:
			say "[link][N]) [T][as][N][end link][line break]";
			increase N by 1.
To process answer of (Q - a team-quiz-predicament-question):
	let CL be -999;
	while CL is -999:
		now CL is the chosen letter - 48;
		if the maxAnswer of Q > 0: [number question]
			if CL < the minAnswer of Q or CL > the maxAnswer of Q:
				now CL is -999;
				say "Input not understood. Press a number between 1 and [the maxAnswer of Q].";
		otherwise:
			if CL < 1 or CL > the number of entries in the possible-answers of Q:
				now CL is -999;
				say "Input not understood. Press a number between 1 and [the number of entries in the possible-answers of Q].";
	if CL is the correctAnswer of Q:
		now the questionCorrect of team-quiz-predicament is 1;
	otherwise:
		now the questionCorrect of team-quiz-predicament is 0.

To reset (Q - a team-quiz-predicament-question):
	truncate the possible-answers of Q to 0 entries;
	now the askedAlready of Q is 0.

To set up number answers for (Q - a team-quiz-predicament-question):
	let R be a random number from -2 to 0;
	if the correctAnswer of Q + R < 0, now R is 0 - the correctAnswer of Q;
	if the correctAnswer of Q + R > 7, now R is 7 - the correctAnswer of Q;
	now the minAnswer of Q is the correctAnswer of Q + R;
	now the maxAnswer of Q is the correctAnswer of Q + R + 2.

quiz-woods-candy is a team-quiz-predicament-question.
Definition: quiz-woods-candy is appropriate if there is a candy machine in a placed jungle room and the askedAlready of it is 0.
To say question for (Q - quiz-woods-candy):
	say "In which of these places in the woods is there a candy machine";
To set up (Q - quiz-woods-candy):
	truncate the possible-answers of Q to 0 entries;
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is a random number between 1 and 3;
	let N be 1;
	while N <= 3:
		let T be "";
		if N is the correctAnswer of Q:
			repeat with C running through candy machines:
				if C is in a placed jungle room, now T is the substituted form of "[printed name of the location of C]";
			if T is "":
				say "BUG - tried to set up woods candy question and failed to find it.";
			otherwise if T is listed in the possible-answers of Q:
				now N is 0; [start again]
				truncate the possible-answers of Q to 0 entries;
			otherwise:
				add T to the possible-answers of Q;
		otherwise:
			now T is the substituted form of "[printed name of a random placed jungle room]";
			if T is listed in the possible-answers of Q:
				decrease N by 1; [try again]
			otherwise:
				add T to the possible-answers of Q;
		increase N by 1.

quiz-candy is a team-quiz-predicament-question.
Definition: quiz-candy is appropriate:
	if Woods01 is not placed, decide no;
	repeat with C running through candy machines:
		if the recent uses of C > 0, decide yes;
	decide no.
To say question for (Q - quiz-candy):
	say "Which candy machine have you most recently used";
To set up (Q - quiz-candy):
	increase the askedAlready of Q by 1;
	truncate the possible-answers of Q to 0 entries;
	let N be 1;
	repeat with C running through candy machines:
		if C is in a labyrinth room:
			add "Dungeon" to the possible-answers of Q, if absent;
		otherwise if C is in a jungle room:
			add "Woods" to the possible-answers of Q, if absent;
		otherwise if C is in a modern room:
			add "Hotel" to the possible-answers of Q, if absent;
		otherwise:
			add "Mansion" to the possible-answers of Q, if absent;
		if the recent uses of C > 0, now the correctAnswer of Q is N;
		increase N by 1;

quiz-dog is a team-quiz-predicament-question.
To say question for (Q - quiz-dog):
	say "What's the name of the [ShortDesc of hellhound] that lives in the creepy mansion";
To set up (Q - quiz-dog):
	increase the askedAlready of Q by 1;
	let N be a random number between 1 and 4;
	while N > 1:
		decrease N by 1;
		let T be the substituted form of "[PossiblePetName]"; [So we start listing the names at a random point in the sequence]
	while N < 4:
		let T be the substituted form of "[PossiblePetName]";
		add T to the possible-answers of Q, if absent;
		now N is the number of entries in the possible-answers of Q;
		if T matches the text DogPetName, now the correctAnswer of Q is N;

quiz-fairies is a team-quiz-predicament-question.
Definition: quiz-fairies is appropriate if Woods01 is placed.
To say question for (Q - quiz-fairies):
	say "How many fairies are there in the woods right now";
To set up (Q - quiz-fairies):
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is the number of alive fairy;
	set up number answers for Q.

quiz-tentacles is a team-quiz-predicament-question.
Definition: quiz-tentacles is appropriate if tentacle fetish is 1 and the number of alive tentacle monsters < 10.
To say question for (Q - quiz-tentacles):
	say "How many tentacle monsters are there in the world right now";
To set up (Q - quiz-tentacles):
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is the number of alive tentacle monsters;
	set up number answers for Q.

quiz-humans is a team-quiz-predicament-question.
To say question for (Q - quiz-humans):
	say "How many humans are there in the dungeon right now";
To set up (Q - quiz-humans):
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is the number of human monsters in the dungeon;
	set up number answers for Q.

quiz-junk is a team-quiz-predicament-question.
Definition: quiz-junk is appropriate if the number of clothing in School15 < 10.
To say question for (Q - quiz-junk):
	say "How many items of clothing are there in the junk room right now";
To set up (Q - quiz-junk):
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is the number of clothing in School15;
	set up number answers for Q.

quiz-wealth is a team-quiz-predicament-question.
Definition: quiz-wealth is appropriate if the wealth of the player > 0 and the wealth of the player < 10.
To say question for (Q - quiz-wealth):
	say "What's the total value of all the jewellery you're wearing";
To set up (Q - quiz-wealth):
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is the wealth of the player;
	set up number answers for Q.

team-quiz-predicaments is a team-quiz-predicament-question.
Definition: team-quiz-predicaments is appropriate if totalLessonCount < 10.
To say question for (Q - team-quiz-predicaments):
	say "How many lessons have you attended";
To set up (Q - team-quiz-predicaments):
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is totalLessonCount;
	set up number answers for Q.

quiz-orgasms is a team-quiz-predicament-question.
Definition: quiz-orgasms is appropriate if totalOrgasmCount < 10.
To say question for (Q - quiz-orgasms):
	say "How many orgasms have you had";
To set up (Q - quiz-orgasms):
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is totalOrgasmCount;
	set up number answers for Q.

quiz-snacks is a team-quiz-predicament-question.
Definition: quiz-snacks is appropriate if snacks-found < 10.
To say question for (Q - quiz-snacks):
	say "How many beneficial snacks have you found in containers";
To set up (Q - quiz-snacks):
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is snacks-found;
	set up number answers for Q.

quiz-patrons is a team-quiz-predicament-question.
Definition: quiz-patrons is appropriate if patronbed uses > 0 and patronbed uses < 10.
To say question for (Q - quiz-patrons):
	say "How many times have you worked as a [if diaper quest is 1]professional baby slave[otherwise]whore[end if] at a hotel bed";
To set up (Q - quiz-patrons):
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is patronbed uses;
	set up number answers for Q.

quiz-throne is a team-quiz-predicament-question.
Definition: quiz-throne is appropriate if timesSat of the throne < 10.
To say question for (Q - quiz-throne):
	say "How many times have you sat on the royal throne";
To set up (Q - quiz-throne):
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is timesSat of the throne;
	set up number answers for Q.

smoothie-predicament is a predicament.
Definition: smoothie-predicament is appropriate if diaper messing > 3 and the rank of the player > 1 and ((diaper quest is 0 and the player is a december 2019 top donator) or (diaper quest is 1 and the player is a december 2019 diaper donator)).
smoothie-predicament has a number called bananas-left.
smoothie-predicament has a number called smoothies-served.
To set up bystanders for (P - smoothie-predicament):
	set up 24 bystanders.
To say PredicamentDescription of (P - smoothie-predicament):
	say "I'm currently in an Extra Credit lesson where I need to [if smoothie gag is worn]serve smoothies as fast as possible so that I can escape this van, while trying to minimize how much they force me to drink myself, and then I need to [end if]get back to my home while avoiding as many bystanders from noticing me as possible.".

smoothie van is a thing. smoothie van is not portable. The printed name of smoothie van is "[TQlink of item described]smoothie van[TQxlink of item described]". The text-shortcut of smoothie van is "smvn".
To say ExamineDesc of (C - smoothie van):
	say "You are standing inside a mobile van, in front of a serving window, and lots of equipment with which to make smoothies[if there is a bystander in the location of C]. Bystanders can't tell that you are locked in place and diapered[end if].".
Figure of smoothie van opaque is the file "Env/School/smoothievan1.jpg".
Figure of smoothie van X-ray is the file "Env/School/smoothievan2.jpg".
To decide which figure-name is examine-image of (C - smoothie van):
	if there is a bystander in the location of C, decide on figure of smoothie van opaque;
	decide on figure of smoothie van X-ray.

To execute (L - smoothie-predicament):
	now the stance of the player is 0;
	now the fatigue of the player is 0;
	now the bananas-left of smoothie-predicament is 4;
	now skeleton key is in Predicament20;
	summon smoothie gag locked;
	now smoothie gag is stuck;
	summon smoothie-apron;
	summon pink-huge-diaper locked;
	now the player is in Predicament03;
	if tough-shit is 0, now rectum is 1;
	now the stomach-food of the player is 1;
	now the stomach-water of the player is 3;
	now the bladder of the player is 1;
	now the delayed bladder of the player is 0;
	say "Your mouth is forced open by the appearance of a new tube gag. What the hell?! You look around. You are standing inside a mobile van, in front of a serving window, and lots of equipment with which to make smoothies. Your ankles are chained to the ground beneath you, preventing you from leaving - not that your customers will be able to see this. A tube leads upwards from your tube gag to a funnel attached to the top of the window. Anyone could pour liquids down that, and force you to drink them! For clothing, you can see that you are wearing a white top and a green apron that can barely hide the massive pink diaper sitting behind it. You are parked on a road opposite a park. A mechanical voice begins to explain your predicament.[line break][first custom style]'THE RULES ARE AS FOLLOWS: [PredicamentRewardExplanation]TO EARN THIS TROPHY, YOU MUST SIMPLY RETURN HOME - YOUR HOUSE IS ON THE OTHER SIDE OF THIS PARK. SERVE SIX CUSTOMERS TO BE RELEASED. A SIGN ON THE FRONT OF YOUR VAN ENCOURAGES CUSTOMERS WHO ARE NOT ENJOYING THEIR DRINK TO FORCEFEED YOU THE REST. GOOD LUCK.'[PredicamentRewardExplanationReaction][roman type][line break]";
	set up predicament universe;
	compute predicament map reveal;
	now smoothie van is in Predicament03; [has to come after the map reveal]
	repeat with M running through alive bystanders:
		set up smoothie stats of M;
	display entire map and refresh icons.

To set up smoothie stats of (M - a bystander):
	now the bystanderInt1 of M is a random number between 0 and 9; [How much will they enjoy the drink?]
	now the bystanderInt2 of M is a random number between -2 and 5. [How much convincing do they need?]

To compute smoothie perception of (M - a bystander):
	let convinceMe be the bystanderInt2 of M;
	let convinceMeFuzzy be convinceMe + a random number between -2 and 2;
	let convincing be 0;
	display entire map and refresh icons;
	if convinceMe > 0:
		say SmoothieConvinceMe convinceMeFuzzy for M;
		say "How would you like to try and convince [him of M] to take a smoothie? [bold type][one of]The[or]Remember, the[stopping] more effort you make to try to convince [him of M] to take a smoothie, the less tolerant [he of M][']ll be if [he of M] doesn't like the taste.[roman type][line break]";
		reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
		set numerical response 1 to "make a noise to try and show you're paying [him of M] attention";
		set numerical response 2 to "make a welcoming noise";
		set numerical response 3 to "try to speak a friendly greeting past your gag, and wave";
		set numerical response 4 to "make a happy humming sound while rubbing your tummy and nodding";
		set numerical response 5 to "make urgent sounds while desperately pointing to the 'SATISFACTION GUARANTEED' sign";
		set numerical response 0 to "do nothing";
		compute multiple choice question;
		now convincing is player-numerical-response;
		decrease convinceMe by convincing;
		if convinceMe <= 0, decrease the bystanderInt1 of M by convincing;
	if convinceMe > 0:
		say "[BigNameDesc of M] ultimately shakes [his of M] head, deciding against it for now.";
	otherwise:
		say "[BigNameDesc of M] seems convinced to try a smoothie. [bold type]You have [if bananas-left of smoothie-predicament is 1]one spare banana[otherwise][bananas-left of smoothie-predicament] spare bananas[end if] remaining. [roman type]How do you make it?";
		reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
		if the bananas-left of smoothie-predicament >= 1, set numerical response 1 to "equal parts oatmeal, prunes and banana - consumes 1 spare banana";
		set numerical response 2 to "higher proportion of oatmeal - a thicker drink makes it a bit more likely [he of M][']ll get full before [he of M] finishes it, and if you are forced to drink any, it'll fill you up a bit more";
		set numerical response 3 to "higher proportion of prunes - additional laxative effects if you are made to drink any";
		if the bananas-left of smoothie-predicament >= 2, set numerical response 4 to "higher proportion of banana - a tastier drink makes it a bit more likely [he of M] will enjoy it - consumes 2 spare bananas";
		compute multiple choice question;
		let CNR be player-numerical-response;
		if debuginfo > 0, say "[input-style]Smoothie check: NPC tastebuds ([bystanderInt1 of M + convincing]) - extra convincing given ([convincing]) ";
		if CNR is 1:
			decrease the bananas-left of smoothie-predicament by 1;
		otherwise if CNR is 2:
			let R be a random number between 1 and 2;
			if debuginfo > 0, say "- flavour penalty ([R]) ";
			decrease the bystanderInt1 of M by R;
			if the bystanderInt1 of M < 5, StomachFoodUp 1;
		otherwise if CNR is 3:
			if the bystanderInt1 of M < 5, increase suppository by 1;
		otherwise:
			let R be a random number between 2 and 4;
			if debuginfo > 0, say "+ flavour bonus ([R]) ";
			increase the bystanderInt1 of M by R;
			decrease the bananas-left of smoothie-predicament by 2;
		if debuginfo > 0, say "= [bystanderInt1 of M] | (4.5) smoothie finish threshold[roman type][line break]";
		compute M drinking CNR;
		say "[big he of M] turns to leave you alone.";
		now the bystanderInt1 of M is -1; [flags that they've already had a drink]
		increase the smoothies-served of smoothie-predicament by 1;
		if the smoothies-served of smoothie-predicament is 6:
			say "You hear a loud 'BEEP' as your restraints are released. You can now [bold type]remove the gag[roman type] and then leave the van.";
			now smoothie gag is unlocked;
			say "Remove the gag immediately? ";
			if the player is consenting, try taking off smoothie gag.

To say SmoothieConvinceMe (N - a number) for (M - a bystander):
	if N <= 0:
		say "[big he of M] [one of]licks [his of M] lips as [he of M] looks at the smoothies, but [he of M] doesn't ask for one[or]looks keen. But then [he of M] checks [his of M] pocket for spare change and looks more hesitant[in random order].";
	otherwise if N is 1:
		say "[big he of M] looks very tempted but doesn't approach you.";
	otherwise if N is 2:
		say "[big he of M] looks undecided about whether [he of M] wants a smoothie.";
	otherwise if N is 3:
		say "[big he of M] reads the signs on your van politely but doesn't approach you.";
	otherwise if N is 4:
		say "[big he of M] glances at you only briefly before losing interest.";
	otherwise if N is 5:
		say "[big he of M] wrinkles [his of M] nose when [he of M] reads the ingredients in your smoothie.";
	otherwise if N > 5:
		say "[big he of M] grimaces with disgust when [he of M] reads the ingredients in your smoothie.".

To compute (M - a bystander) drinking (CNR - a number):
	if the bystanderInt1 of M < 1:
		say "[BigNameDesc of M] takes [if CNR is 2]only a few sips before pulling away, apparently already feeling full[otherwise]one sip and pulls it away, an unpleasant look on [his of M] face[end if]. [big he of M] [one of]has a slightly irritated look[or]has a slight frown[or]has an annoyed look[in random order] on [his of M] face as [he of M] pours the mostly-full cup down the funnel. You are forced to gulp and swallow the entire [if CNR is 2]heavy [end if]drink...[SmoothieDisgusted of M]";
		StomachFoodUp 3;
	otherwise if the bystanderInt1 of M < 3:
		say "[BigNameDesc of M] [if CNR is 2]takes a fair few gulps before pulling away, looking satisfied and full[otherwise]drinks several mouthfuls before [he of M] pulls it away, an undecided look on [his of M] face[end if]. [big he of M] then moves to pour the half-full cup down the funnel. You are forced to gulp and swallow the rest of [his of M] [if CNR is 2]thick and heavy [end if]drink...[SmoothieUnhappy of M]";
		StomachFoodUp 2;
	otherwise if the bystanderInt1 of M < 5:
		say "[BigNameDesc of M] [if CNR is 2]swallows a number of big mouthfuls before eventually pulling away, looking extremely full[otherwise]drinks the majority of the cup before releasing it with a satisfied sigh[end if]. Still, there is a bit left in the cup. [SmoothieAlmostHappy of M]";
		StomachFoodUp 1;
	otherwise:
		say SmoothieHappy of M;

To say SmoothieDisgusted of (M - a bystander):
	say "[line break][speech style of M]'[one of]Satisfaction guaranteed, eh?! This is disgusting[or]This is not my sort of drink at all[or]Yuck[at random].'[roman type][line break]".

To say SmoothieUnhappy of (M - a bystander):
	say "[line break][speech style of M]'[one of]It was okay, I guess[or]I'm not going to lie, I didn't really enjoy it[or]I think I might just not be a fan of prunes. Sorry[at random].'[roman type][line break]".

To say SmoothieAlmostHappy of (M - a bystander):
	say "[big he of M] shrugs before obeying the instructions and pouring the rest down the funnel. You are forced to gulp and swallow the remaining couple of mouthfuls.[line break][speech style of M]'[one of]Sorry, couldn't quite finish it[or]That was good, but just a bit much for me[at random].'[roman type][line break]".

To say SmoothieHappy of (M - a bystander):
	say "[BigNameDesc of M] greedily glups down the entire thing, clearly really enjoying it.[line break][speech style of M]'[one of]Thanks a lot[or]That was great, just as you promised[at random]!'[roman type][line break]".

photo-display-predicament is a predicament.
Definition: photo-display-predicament is appropriate if diaper quest is 0 and the rank of the player > 2 and the player is a december 2019 top donator and the player is not shameless.

To execute (L - photo-display-predicament):
	now the stance of the player is 0;
	now the fatigue of the player is 0;
	now the printed name of Predicament01 is "Strip Club Main Stage";
	let S be a random off-stage string monokini;
	only destroy S;
	now the raw-magic-modifier of S is 1;
	now S is sure;
	now S is identified;
	now S is speed;
	now S is bland;
	now S is in Predicament01;
	let M be a random off-stage minimalist monokini;
	only destroy M;
	now the raw-magic-modifier of M is 1;
	now M is sure;
	now M is identified;
	now M is speed;
	now M is bland;
	now M is in Predicament01;
	now the player is in Predicament01;
	say "You find yourself standing upright in a small glass cage, on top of what looks like a stage, in an empty bar. A large ring gag is tightly held in place by thick leather straps, keeping your mouth wide open. The ring is connected to a clear wide tube that splits in two, each tube bending up to a vertical angle where they end in even wider funnels, securely bolted to the wall behind you. Dispensing tubes sit pointing downwards above each of the funnels. Below your collared neck, you are completely naked except for two separate anklecuffs that are also bolted into the wall behind you, preventing you from moving your legs at all, never mind crossing them. You notice a sign on the front of the glass cage which reads 'PHOTOS OK!', which makes you instinctively cover your nipples and [genitals] with your arms and hands.[paragraph break]And then, a huge crowd of men start to enter! Chatting to each other loudly, they file in and begin to crowd round, every eye on you. Some cheer and wolf-whistle. You whimper with embarrassment at them seeing you naked, and double-check that your rude bits are definitely covered by your arms and hands.";
	say "[first custom style]'We've got a very special strip show for you today, gentlemen!'[roman type][line break]An announcer speaks over a speaker system from an unseen location.[line break][first custom style]'As you know, we've been collecting the donations of semen from you lot and all our other patrons over the course of the last few months and keeping it all on ice. And today it's all getting used! The container has just finished defrosting, and now those pints of warm cum are ready for today's game! In the [']hot seat['] today we have the lovely [NameBimbo], a young shy slut who's completely new to the adult scene! [big he of the player][']s all locked up in our [']Predicament Cage['], where in a brief minute your cum will begin to be dispensed from those two tubes directly above the two funnels leading to [his of the player] mouth! The only way [he of the player] can prevent [himself of the player] from being forcefed all that thick salty goodness is to try and block the entrances to the funnels with [his of the player] hands, redirecting as much of the flow as possible away from those feeding tubes. But of course, [his of the player] hands seem quite busy right now protecting [his of the player] dignity! And as you can see from the sign, photos and videos are allowed and encouraged! We want you to spread the footage of today's event across the entire Internet! Make sure to completely expose [NameBimbo] for the whore that [he of the player] is! Make sure to include the name of our hometown in the details of your uploads![roman type][line break]";
	say "Some sort of vent is closed and the excited cheering from the crowd becomes muffled. You can tell that the final part of the announcer's explanation is for your ears only.[line break][first custom style]'There are two outfits you can be walking home in today, [cunt]. The first is that ludicrously tiny slinkini that won't even cover your nips, that you can see hanging up in the left corner of the room. But... if you [bold type]spend at least a few seconds holding up two peace signs[first custom style] instead of covering yourself of the funnels, we'll give you the option of taking that [ShortDesc of M] hanging up in the right hand corner of the room instead. Still incredibly slutty, but at least it'll cover your bits. The choice is yours... do you want to look more like a whore on the walk home, when people can reach you and touch you and perhaps molest you, or right now in front of the crowd, and when you see the footage that's been uploaded to the Internet?'[roman type][line break]The vent is opened again, and the sound of the crowd clamouring for the event to start is the only thing you can hear.";
	say "After a couple of tense seconds, a mechanical pumping sound heralds the arrival of a flow of [semen]! You can see it about to start to drip down into the funnels. ";
	now temporaryYesNoBackground is figure of photo display predicament;
	now bigGameLoop is 2; [tells the game not to refresh any windows]
	let timeRemaining be (a random number between 5 and 6) + (a random number between 0 and 1);
	let peaceSignUsed be 0;
	while timeRemaining > 0:
		let SB be 0; [semen blocked]
		let SD be 2; [semen drunk]
		say "What do you do?";
		reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
		set numerical response 1 to "cover both funnels, exposing everything";
		set numerical response 2 to "cover your [genitals], exposing your [ShortDesc of breasts] and blocking half the [semen]";
		set numerical response 3 to "cover your [genitals] and [ShortDesc of breasts], drinking all the [semen]";
		set numerical response 4 to "hold up peace signs, exposing everything and drinking the all the [semen]";
		compute multiple choice question;
		let T be "collared, naked, and drinking [semen] via a tube gag";
		let A be 15;
		if player-numerical-response is 1:
			say "You block both funnels with your hands. The men whoop, laugh and make obscene gestures as they take photos of your [ShortDesc of breasts] and [if the player is male][ShortDesc of penis][otherwise][vagina][end if]. [strongHumiliateReflect]";
			now T is "collared, naked, and holding your arms up above your body instead of protecting your modesty";
			now SB is 2;
			now SD is 0;
		otherwise if player-numerical-response is 2:
			say "You hold one hand in front of your crotch and block the left hand funnel with your other hand. The men make entertained sounds as they take photos of your [ShortDesc of breasts]. [moderateHumiliateReflect]";
			now T is "collared, naked, and holding one hand over your [if the player is male][ShortDesc of penis][otherwise][vagina][end if]";
			now A is 9;
			now SB is 1;
			now SD is 1;
		otherwise if player-numerical-response is 3:
			say "You hold one hand in front of your crotch and use your other arms to protect your nipples. The men cackle as they watch you guzzle down their collective [semen] and ready their smartphones in preparation for if and when you expose your rude bits.";
			now A is 6;
			now T is "collared, naked, and holding your arms in front of your [ShortDesc of breasts] and [genitals] to protect your modesty";
		otherwise:
			say "The crowd [if peaceSignUsed is 0]breaks into a frenzied roar of excitement as you hold your hands up into peace signs in front of them. Clearly they don't know about your special instructions and think you're just doing it because you're that much of an exhibitionist, [semen] addicted slut[otherwise]once again roars with wild excitement[end if]. Countless photos and videos are taken of your cringeworthy pose.";
			now T is "collared, naked, and holding your hands up in enthusiastic peace signs while being fed [semen] through a tube gag";
			now A is 19;
			increase peaceSignUsed by 1;
		if SD > 0:
			say "You are forced to gulp down the [if SD > 1]double-helping of [end if]thick salty [semen].";
			if the player is overly full:
				say "Your belly groans in pain as it is forced to accommodate even more liquid!";
				PainUp 1;
			StomachSemenUp SD;
		if SB > 0:
			say "Some of the [semen] blocked from the funnel[if SB > 1]s[end if] by your hand[if SB > 1]s[end if] drips down your arm[if SB > 1]s[end if] and onto your thigh[if SB > 1]s[end if].";
			CumThighsUp SB;
		repeat with XXX running from 1 to 2:
			let N be (XXX * 3) - (a random number between 0 and 1);
			let SW be a random number between 1 and 6;
			let W be "[if SW < a random number between 3 and 5][sluttyWebsite][otherwise]www.slutsfromyourhometown.com[end if]";
			choose a blank row in Table of Published Disgraces;
			now the content entry is the substituted form of "[if N < 1]a low resolution photo[otherwise if N < 3]a high resolution photo[otherwise if N < 5]an animated gif[otherwise]a high quality video[end if] showing you [T]";
			now the published entry is the substituted form of "has been [one of]uploaded to[or]posted on[purely at random] [W]";
			now the severity entry is SW;
			now the popularity entry is N;
			now the timestamp entry is earnings;
			now the viewsfuzz entry is a random number between -100 and 100;
		decrease timeRemaining by 1;
		if timeRemaining > 0, say "The [semen] keeps coming! [if the player is overly full][bold type][one of]Since your stomach is overly full, if[or]If[stopping] you drink any more [semen] it's going to be painful.[roman type][line break][end if]";
	say "Finally a buzzer sounds and the [semen] stops flowing. The men, all very aroused and very pleased with themselves, begin to disperse and leave the way they came. Soon enough you are left on your own with your shame. Finally, your bondage is released and a pneumatic system hisses as the glass cage opens in front of you, freeing you.";
	if peaceSignUsed is 0:
		say "The hook holding [NameDesc of M] rises towards the ceiling, pulling it far out of your reach[if the player is modest]. You already regret your decision not to make the peace signs[end if]...";
		only destroy M;
		zero focus stuff;
	now bigGameLoop is 0; [tells the game to refresh windows again]
	conclude consenting.

sex-toy-predicament is a predicament.
Definition: sex-toy-predicament is appropriate if the rank of the player is 1 and the player is a december 2019 top donator.
To say PredicamentDescription of (P - sex-toy-predicament):
	say "I'm currently in an Extra Credit lesson where I need to get the key to my house by finding two sex toys, one at the angel statue and the other in the men's toilets and then bringing them back to the starting room and dropping them, and then I need to get back to my home while avoiding as many bystanders from noticing me as possible.".

To execute (L - sex-toy-predicament):
	let C be a random off-stage short business dress;
	if C is nothing, now C is a random short business dress;
	only destroy C;
	now the raw-magic-modifier of C is 0;
	now C is sure;
	now C is identified;
	now C is bland;
	now C is blandness;
	now C is in Predicament01;
	if diaper quest is 0, now C is a random pink catsuit;
	otherwise now C is baby-medium-diaper;
	only destroy C;
	now the raw-magic-modifier of C is 0;
	now C is sure;
	now C is identified;
	now C is bland;
	now C is blandness;
	now C is in Predicament01;
	let ST be purple-vibrator;
	only destroy ST;
	now ST is sure;
	now ST is identified;
	now ST is bland;
	now ST is blandness;
	now the raw-magic-modifier of ST is 0;
	now the size of ST is the insertableGirthAcceptance of asshole - 3;
	if the player is female, now the size of ST is the insertableGirthAcceptance of vagina - 3;
	if the size of ST < 1, now the size of ST is 1;
	now ST is in Park24;
	now ST is flesh-johnson;
	if interracial fetish is a random number between 1 and 2, now ST is a random mamba;
	if diaper quest is 1, now ST is a random prostate massager plug;
	only destroy ST;
	now ST is sure;
	now ST is identified;
	now ST is bland;
	now ST is blandness;
	now the raw-magic-modifier of ST is 0;
	now the size of ST is the insertableGirthAcceptance of asshole - 3;
	if ST is mamba, now the size of ST is the insertableGirthAcceptance of asshole;
	if the size of ST < 1, now the size of ST is 1;
	now ST is in Toilet01;
	now the printed name of Predicament01 is "Small Room";
	now the player is in Predicament01;
	say "You find yourself in a small room, empty except for a wardrobe, a small table and a front door that leads outside. You are completely naked. The table has a piece of card on it with the word 'INSTRUCTIONS' on it. You read the instructions:[paragraph break][first custom style]'WELCOME TO EXTRA CREDIT CLASS. [PredicamentRewardExplanation]TO EARN THIS TROPHY, YOU MUST FIND THE TWO SEX TOYS HIDDEN IN THE PARK AND PLACE THEM ON THIS TABLE. ONLY THEN WILL THE KEY TO YOUR FRONT DOOR BE RELEASED. ONE SEX TOY IS HIDDEN IN THE MEN'S TOILETS. THE OTHER IS HIDDEN BEHIND THE STATUE. CONSIDER YOUR OUTFIT CAREFULLY, AS KEEPING THE TOYS HIDDEN MAY NOT BE EASY...'[PredicamentRewardExplanationReaction][roman type][line break]It looks like you are going to look a bit eye-catching no matter what you wear, but at least you have been given a bit of choice. You consider the warning from the tape. [if diaper quest is 1]Would wearing the diaper really[otherwise]Which of these would best[end if] help you... 'hide' the sex toys?";

An all time based rule:
	if current-predicament is sex-toy-predicament and the player is in Predicament01 and the number of sex toys in Predicament01 > 1 and house-key is not held and house-key is not in Predicament01:
		say "[bold type]You place the toys on the table. [roman type]A split second later, your house key drops from a hidden panel above your head!";
		now house-key is in Predicament01;
		compute autotaking house-key.

Check going east when the player is in Predicament19:
	if house-key is not held and (current-predicament is sex-toy-predicament or current-predicament is gloryhole-predicament), say "The door is locked! You need to bring your house key..." instead.

team-face-crotch-predicament is a team-predicament.
Definition: team-face-crotch-predicament is appropriate:
	if the rank of the player > 2, decide no;
	if diaper lover is 0, decide no;
	if the player is a february 2020 diaper donator or the player is a february 2020 top donator, decide yes;
	decide no.

Figure of face crotch predicament 1 is the file "Special/Cutscene/cutscene-face-crotch-predicament1.jpg".
Figure of face crotch predicament 2 is the file "Special/Cutscene/cutscene-face-crotch-predicament2.jpg".

To execute (L - team-face-crotch-predicament):
	let playerAbove be 0;
	let ST be team-predicament-partner;
	now ST is in Predicament01;
	now the player is in Predicament01;
	now the stance of the player is 1;
	now the fatigue of the player is 0;
	now the bladder of the player is 10;
	zero focus stuff;
	display focus stuff;
	now bigGameLoop is 1; [tells the game not to refresh the map window]
	say "You and [ST] find yourself in an almost pitch-black room, unable to see anything at all, and bound in place, unable to move. You bladder feels soooo full! A worried moan from [NameDesc of ST] lets you know that [he of ST] is feeling just as desperate to pee as you are. A scary sounding robotic voice booms loudly from all around you.[line break][first custom style]'WELCOME TO EXTRA CREDIT CLASS. [PredicamentRewardExplanation]FIRST, A LITTLE GAME, TO SEE WHICH OF YOU IS THE MOST POTTY TRAINED. YOU MUST BOTH ANSWER THIS QUESTION AT THE SAME TIME: WHICH OF YOU IS THE BIGGER BABY? YOUR ANSWERS DETERMINE THE PREDICAMENT...'[roman type][line break]";
	reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
	set numerical response 1 to "I'm the bigger baby";
	set numerical response 2 to "We're both the same";
	set numerical response 3 to "[big he of ST][']s the bigger baby";
	compute multiple choice question;
	let STChoice be the vindictiveness of ST;
	if STChoice < 1, now STChoice is 1;
	if STChoice > 3, now STChoice is 3;
	let PredicamentMinutes be STChoice + player-numerical-response;
	say "[variable custom style]'[the chosen numerical response]!'[roman type][line break]You say at the same time that [NameDesc of ST] says[line break][speech style of ST]'[if STChoice is 1]I'm the bigger baby[otherwise if STChoice is 2]We're both the same[otherwise][big he of the player][']s the bigger baby[end if]!'[roman type][line break]There's a short pause before the voice continues.[line break][first custom style]'CALCULATING... ";
	if player-numerical-response is STChoice:
		say "IDENTICAL ANSWERS GIVEN. RANDOMIZING ALLOCATIONS... ";
	if player-numerical-response > STChoice or (player-numerical-response is STChoice and a random number between 1 and 2 is 1):
		say "CONTESTANT [student-name of ST in upper case] HAS BEEN ALLOCATED THE ROLE OF BABY. PROCESSING OUTFIT!'[roman type][line break]You hear [NameDesc of ST] yelp, and the sound of disposable diaper tapes being stretched and placed around the rustly plastic sound that the outside of a diaper would make.[line break][first custom style]'[NameBimbo in upper case] HAS BEEN ALLOCATED THE ROLE OF GROWN UP. PROCESSING OUTFIT!'[roman type][line break]It's your turn to squeal as you feel robotic arms begin to dress you, placing a bikini top and bottoms around your body.";
		let P be a random purple bikini top;
		summon P uncursed;
		summon red-bikini-briefs uncursed;
		if player-numerical-response is 3, HappinessDown ST;
	otherwise:
		say "CONTESTANT [NameBimbo in upper case] HAS BEEN ALLOCATED THE ROLE OF BABY. PROCESSING OUTFIT!'[roman type][line break]You yelp as you hear and feel a thick disposable diaper being applied to your loins by robotic hands![line break][first custom style]'[student-name of ST in upper case] HAS BEEN ALLOCATED THE ROLE OF GROWN UP. PROCESSING OUTFIT!'[roman type][line break]It's [NameDesc of ST][']s turn to squeal as you hear robotic arms dressing [him of ST] in a set of bikini top and bottoms.";
		summon plain-largish-diaper uncursed;
	let K be a random worn knickers;
	say "[first custom style]'ASSESSING VINDICTIVENESS... TOTAL VINDICTIVENESS WAS [PredicamentMinutes]; THIS IS [if PredicamentMinutes > 4]HIGH[otherwise if PredicamentMinutes < 4]LOW[otherwise]AVERAGE[end if]. PREDICAMENT DURATION SET AT [PredicamentMinutes] MINUTES. ASSESSING AGREEMENT... ";
	if player-numerical-response is 3 and STChoice is 1:
		say "[first custom style]'CONTESTANTS AGREED THAT [student-name of ST in upper case] IS A PATHETIC INCONTINENT BABY. PROCEEDING TO DIAPER DEPENDENCE EXPERIENCE PREDICAMENT!'";
	otherwise if player-numerical-response is 1 and STChoice is 3:
		say "[first custom style]'CONTESTANTS AGREED THAT [NameBimbo in upper case] IS A PATHETIC INCONTINENT BABY. PROCEEDING TO DIAPER DEPENDENCE EXPERIENCE PREDICAMENT!'";
		now playerAbove is 1;
	otherwise if player-numerical-response is 2 and STChoice is 2:
		say "[first custom style]'CONTESTANTS AGREED THAT THEY ARE BOTH PATHETIC BABIES. PROCEEDING TO DIAPER DEPENDENCE EXPERIENCE PREDICAMENT!'";
		if plain-largish-diaper is K, now playerAbove is 1;
	otherwise:
		say "[first custom style]'CONTESTANTS DISAGREED ON [caps maturity] LEVELS. PROCEEDING TO DRY BRIEFS EXPERIENCE!'";
		if red-bikini-briefs is K, now playerAbove is 1;
	if (K is diaper and playerAbove is 1) or (K is red-bikini-briefs and playerAbove is 0), now temporaryYesNoBackground is figure of face crotch predicament 1;
	otherwise now temporaryYesNoBackground is figure of face crotch predicament 2;
	say "[roman type][line break]You both scream as you are yanked into the air by robotic arms and manhandled in several ways at once as you are strapped into various items of bondage. Finally, the lights come on, and you can both see the nature of your predicament.[paragraph break]";
	if playerAbove is 1, say "You are sitting on a chair, your feet held up by anklecuffs in a raised legs crossed position, supports under your knees preventing you from lowering them. This leaves the front of your [if plain-largish-diaper is K]diaper[otherwise]bikini briefs[end if] fully exposed, and that is where [NameDesc of ST][']s face is planted, kept there by a cord from [his of ST] collar, which is also connected to [his of ST] strict arm binds. If you were to release your hold on your bladder, [NameDesc of ST][']s face and nose would get an intimate first hand experience of it!";
	otherwise say "[BigNameDesc of ST] is sitting on a chair, [his of ST] feet held up by anklecuffs in a raised legs crossed position, supports under [his of ST] knees preventing [him of ST] from lowering them. This leaves the front of [his of ST] [if plain-largish-diaper is K]bikini briefs[otherwise]diaper[end if] fully exposed, and that is where your face is planted, kept there by a cord from your collar, which is also connected to your strict arm binds. If [NameDesc of ST] were to release [his of ST] hold on [his of ST] bladder, your face and nose would get an intimate first hand experience of it!";
	say "[first custom style]'YOUR BONDAGE WILL RELEASE IN [PredicamentMinutes] MINUTES. TIME TO SEE WHETHER [if playerAbove is 1 and red-bikini-briefs is K][NameBimbo in upper case] SHOULD REALLY BE IN DIAPERS TOO[otherwise if playerAbove is 0 and plain-largish-diaper is K][student-name of ST in upper case] SHOULD REALLY BE IN DIAPERS TOO[otherwise if playerAbove is 1][student-name of ST in upper case][']S LACK OF CONFIDENCE IN [NameBimbo in upper case][']S POTTY TRAINING WAS ACCURATE[otherwise][NameBimbo in upper case][']S LACK OF CONFIDENCE IN [student-name of ST in upper case][']S POTTY TRAINING WAS ACCURATE[end if]!'[roman type][line break]And with that, the voice disappears and a digital timer on the wall showing [PredicamentMinutes] minutes remaining begins ticking downwards!";
	let STBladder be 10;
	while PredicamentMinutes > 0:
		say "[line break]There [if PredicamentMinutes > 1]are [PredicamentMinutes] minutes remaining[otherwise]is one minute remaining[end if].";
		if the bladder of the player >= 10:
			say "Your bladder [if the bladder of the player < 12]twinges with significant discomfort. [bold type]Holding on will have a small chance of hurting[otherwise if the bladder of the player < 14]strains with its fullness, begging you to release. [bold type]Holding on has a decent chance of hurting[otherwise]is on fire, desperate to release! [bold type]Holding on will definitely hurt, and negatively affect your long-term continence[end if].[roman type][line break]Do you hold on? ";
			if the player is consenting:
				say "You hold on tight!";
				let R be a random number between 10 and 14;
				if R <= the bladder of the player:
					say "It hurts! ";
					PainUp 1;
					if the bladder of the player >= 14:
						say "Your overall control over your bladder feels permanently weakened.";
						increase incontinence by 1;
			otherwise:
				say "You whine and squirm as you release your warm [urine] into your [ShortDesc of K][if playerAbove is 1 and K is diaper], [NameDesc of ST][']s nose still pressed firmly into your crotch through the thick padding. You're sure [he of ST] can feel that warmth spreading throughout your diaper[otherwise if playerAbove is 1], [NameDesc of ST][']s nose still pressed firmly into your crotch through the thin nylon of your bikini briefs. You're sure [he of ST] must be getting a full face-worth of warm piss-soaked cloth. Yuck[end if].";
				if playerAbove is 1:
					if red-bikini-briefs is worn, HappinessDown ST by 5;
					otherwise HappinessDown ST by 2;
				UrineSoakUp K by the bladder of the player;
				now the bladder of the player is 0;
		otherwise if playerAbove is 1:
			say "[BigNameDesc of ST] [one of]groans[or]moans[or]whimpers[in random order] as [he of ST] is forced to continue to faceplant your piss-soaked [ShortDesc of K].";
			if K is red-bikini-briefs, HappinessDown ST;
		let R be a random number between 10 and 14;
		if R <= STBladder + the vindictiveness of ST - the dedication of ST:
			say "[BigNameDesc of ST] sighs with defeat and you can tell that [he of ST] is peeing[if playerAbove is 0 and K is diaper]. Mostly because you can FEEL it on your face! The [urine] soaks straight through [his of ST] bikini briefs, making your face warm, wet and smelly. YUCK[otherwise if playerAbove is 0]. Mostly becuase you can feel the padding in front of your nose turning warm. Over time that subtle but distinct smell of [urine] begins to hit your nostrils[otherwise if K is diaper] into [his of ST] bikini briefs. Looks like [he of ST] will be walking home wet and dripping[otherwise] in [his of ST] diaper. Looks like [he of ST] will be walking home wet and soggy[end if].";
			if playerAbove is 0 and K is red-bikini-briefs:
				if watersports fetish is 1 and K is diaper, UrineTasteAddictUp 1;
				otherwise DiaperAddictUp 1;
			now STBladder is 0;
		if STBladder < 10 and playerAbove is 0:
			say "The smell of [urine] goes to your head and makes you feel rather light-headed[if watersports fetish is 1 and K is diaper][otherwise if K is diaper or the remainder after dividing STBladder by 2 is 1], and perhaps a bit more perverse[end if].";
			if K is diaper or the remainder after dividing STBladder by 2 is 1:
				if watersports fetish is 1 and K is diaper, UrineTasteAddictUp 1;
				otherwise SexAddictUp 1;
		decrease PredicamentMinutes by 1;
		increase the bladder of the player by 1;
		increase STBladder by 1;
	say "Finally, a buzzer beeps and all your bondage unlocks. While you are still wriggling out of yours, [NameDesc of ST] wastes no time in running from the room, not concerned with waiting for you at all. [if STBladder >= 10 and playerAbove is 0][speech style of ST]'You'd better be fucking grateful that I didn't piss on you.'[roman type][line break]Is all [he of ST] says as [he of ST] leaves. [end if]Looks like you'll be sneaking home on your own.[if K is diaper][line break][variable custom style]And in nothing but a diaper...[roman type][line break][end if]";
	now bigGameLoop is 0;
	now ST is in School02.

diaper-grope-predicament is a predicament.
Definition: diaper-grope-predicament is appropriate:
	if the rank of the player < 2 or the rank of the player > 4 or the player is shameless, decide no;
	if diaper lover is 0, decide no;
	if the player is a february 2020 diaper donator or the player is a february 2020 top donator, decide yes;
	decide no.
To say PredicamentDescription of (P - diaper-grope-predicament):
	say "I'm currently in an Extra Credit lesson where I need to decide whether to keep my hands behind my head in order to avoid receiving an enema, and then I need to get back to my home while avoiding as many bystanders from noticing me as possible.".

Figure of diaper grope predicament cutscene is the file "Special/Cutscene/cutscene-predicament-diaper-grope1.jpg".

To execute (L - diaper-grope-predicament):
	now the defaultLeftTarget of arms is hair;
	now the defaultRightTarget of arms is hair;
	now entry 1 in the armUses of arms is hair;
	now entry 2 in the armUses of arms is hair;
	summon enema-backpack locked;
	summon grope-me-skirt;
	summon plain-medium-diaper uncursed;
	summon nipples-crop-top uncursed;
	let S be a random frilly stockings;
	summon S uncursed;
	let MJ be a random mary janes;
	summon MJ uncursed;
	now the printed name of Predicament01 is "Small Room";
	now the player is in Predicament02;
	say "You find yourself in an alleyway, for some reason holding your hands behind your head in a chilled-out fashion. You look down at yourself: You are wearing frilly white stockings, a short purple skirt that fails to hide your plain white diaper, and also has a sign on the front that says 'PLEASE GROPE MY TITS!'. Your tits are protected by nothing but a flimsy crop top that has a pair of circular holes cut out where your nipples are! The pink backpack on your back is very heavy, and you can feel some sort of intrusion in your [asshole]. Just before you move your hands, you hear a robotic voice coming from a nearby speaker...[paragraph break][first custom style]'WELCOME TO EXTRA CREDIT CLASS. [PredicamentRewardExplanation]TO EARN THIS TROPHY, YOU MUST SIMPLY REACH HOME. HOWEVER, IF YOU MOVE YOUR HANDS FROM BEHIND YOUR BACK, THE INVISIBLE WIRES ATTACHED TO YOUR WRISTS WILL BE PULLED, WHICH WILL CAUSE THE BACKPACK TO RELEASE ITS LARGE TANK OF WATER, WHICH WILL BE DELIVERED INTO YOUR BELLY VIA THE ENEMA NOZZLE. THE CHOICE IS YOURS...'[PredicamentRewardExplanationReaction][roman type][line break]It looks like you are going to look a bit eye-catching no matter where your arms are, but at least you have been given a choice. You can adjust where your arms are at any time with [bold type]adjust arms[roman type] and also if you pick anything up or try to remove anything, that will automatically require you to move your arms...";

team-football-predicament is a team-predicament.
team-football-predicament has a number called student-stimulation. [Count towards student orgasm]
team-football-predicament has a number called game-state. [0: Game in progress; 1: Player won; 2: Student won]

Definition: team-football-predicament is appropriate:
	if diaper quest is 1, decide no;
	if the rank of the player > 2, decide no;
	if the player is barbie, decide no;
	decide yes.
To say PredicamentDescription of (P - team-football-predicament):
	say "I'm currently in an Extra Credit lesson where I need to stay close to the football and try and get it far away from [student-name of team-predicament-partner] to win the game and avoid the forfeits, but also try to avoid having the ball for too long without winning as it'll make me cum, and then I need to get back to my home while avoiding as many bystanders from noticing me as possible.".

football is a thing. football is not portable. The printed name of football is "[TQlink of item described]football[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of football is "ftb". football has a person called the football-possessor. football can be dribbled. Understand "ball" as football.
Figure of football is the file "Env/School/football1.png".
To say ExamineDesc of (F - football):
	say "A regulation size (soccer) football[if the football-possessor of football is yourself], currently under your control[otherwise if the football-possessor of football is team-predicament-partner], currently under [student-name of team-predicament-partner][']s control[end if]. You are aware that it has an electronic distance sensor inside that is connected to your gloves and vibrators.".
To decide which figure-name is the examine-image of (F - football):
	decide on figure of football.
Check taking football:
	say "Thanks to your gloves, that would make you lose the game!" instead.
To say unique-verb-desc of (T - football):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say " [link][bracket]kick[close bracket][as]kick [text-shortcut of T][end link]".
A game universe initialisation rule:
	now the football-possessor of football is headmistress.

To execute (L - team-football-predicament):
	zero focus stuff;
	now the stance of the player is 0;
	now the fatigue of the player is 0;
	let ST be team-predicament-partner;
	now the body soreness of the player is 0;
	now the lessonInt1 of ST is 0;
	now the health of ST is the maxhealth of ST;
	now ST is in Toilet02;
	now Toilet02 is discovered;
	now Toilet02 is seen;
	now the player is in Toilet02;
	now skeleton key is in Predicament20;
	summon football-hotpants locked;
	summon football-gloves;
	summon remote-controlled-vibrator vaginally;
	if the player is male:
		dislodge remote-controlled-vibrator;
		now remote-controlled-vibrator is penetrating penis;
	otherwise:
		now the size of remote-controlled-vibrator is the openness of vagina;
	summon red crop top uncursed;
	summon grey-sneakers uncursed;
	now football is in Park02;
	set up predicament universe;
	say "Suddenly, you find yourself standing outside the cubicles of a ladies['] toilets. [BigNameDesc of ST] is there with you, wearing some sort of slutty soccer gear. A padlock at the waist keeps [his of ST] very tight shorts stuck on, and a bump in front of [his of ST] crotch is a tell-tale sign that [he of ST] has some kind of vibrator fastened to [his of ST] genitals. [big his of ST] hands appear to be locked in goalkeeping gloves. You look down at yourself... you're wearing exactly the same outfit.[line break][variable custom style]Uh-oh.[roman type][line break]A voice speaks from a hidden speaker.[paragraph break][first custom style]'WELCOME TO EXTRA CREDIT CLASS. [PredicamentRewardExplanation]THE DOORS TO YOUR HOUSES ARE CURRENTLY LOCKED. A FOOTBALL IS WAITING FOR YOU ON THE OTHER SIDE OF THE BATHROOM DOOR. WHEN THE FOOTBALL REACHES MORE THAN THIRTY FEET AWAY FROM ONE OF YOUR VIBRATORS, THAT PLAYER LOSES, THE GAME ENDS, AND THE DOORS UNLOCK. THE LOSER'S VIBRATOR WILL GET STUCK ON MAXIMUM POWER, AND SHOOT A LARGE LOAD OF WARM FRESH CUM INTO THE WEARER'S [if the player is female][caps cunt][otherwise]PANTS[end if]. MOVING YOUR FOOTBALL GLOVES TOO CLOSE TO THE BALL WILL RESULT IN IMMEDIATE LOSS. UNTIL THE GAME ENDS, THE CLOSER YOU GET TO THE BALL, THE STRONGER YOUR VIRBATOR WILL BUZZ. HAVE FUN!'[PredicamentRewardExplanationReaction][roman type][line break]You and [NameDesc of ST] look at each other. You know what you have to do.";
	display entire map.

An all later time based rule:
	if current-predicament is team-football-predicament and the game-state of team-football-predicament is 0:
		let FL be the location of football;
		if (the player is not in Toilet02 or FL is not Park02) and the distance of FL > (a random number between 1 and 2):
			if debugmode > 0, say "Player in [location of the player] ([grid position of (the location of the player)]); Football in [FL] ([grid position of FL]). Distance is [distance of FL].";
			let M be team-predicament-partner;
			now the game-state of team-football-predicament is 2;
			now the football-possessor of football is headmistress;
			say "[bold type]Your vibrator plays a little sad tune and turns itself to maximum! The football has gotten too far away from you, and you've lost! [BigNameDesc of M] squeals with delight runs for home as fast as [his of M] legs will carry [him of M]!";
			say "You squeal in [horror the semen addiction of the player] as the vibrator begins spurting huge amounts of [semen] from its tip!";
			if the player is female:
				PussyFill 12;
				if the pregnancy of the player is 0 and pregnancy fetish is 1: [Once pregnant you don't get any more potential fathers!]
					let ULA be a random ultimate-lesson-actor;
					now ULA is inseminating vagina;
			otherwise:
				squirt semen on football-hotpants by 12;
			now M is in School02;
		otherwise:
			if the football-possessor of football is not a student, now football is not dribbled;
			if the football-possessor of football is yourself and another-turn is 0:
				now another-turn is 1;
				add the football possession rule to another-turn-rules, if absent;
			if team-predicament-partner is in the location of the player and football is in the location of the player, cutshow figure of football predicament.

This is the football possession rule:
	now temporaryYesNoBackground is Figure of no-image-yet; [We draw the map, not the choice image.]
	display entire map;
	say "You currently have possession of the football. What would you like to do?[one of][line break][variable custom style]Maybe [he of team-predicament-partner] would be too shy to follow the ball into a large crowd of people?[roman type][line break][or][stopping]";
	reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
	set numerical response 1 to "remain still and focus on maintaining possession";
	set numerical response 2 to "dribble in a direction";
	set numerical response 3 to "kick the ball in a direction";
	set numerical response 4 to "leave the ball behind and move in a direction";
	set numerical response 5 to "leave the ball behind and step away";
	compute multiple choice question;
	let FChoice be player-numerical-response;
	if FChoice is 1:
		now football is dribbled;
		if team-predicament-partner is in the location of the player, say "You prepare for [NameDesc of team-predicament-partner][']s incoming tackle.";
		otherwise say "You stay put.";
	otherwise if FChoice is 5:
		now the football-possessor of football is headmistress;
	otherwise:
		let L be the location of the player;
		reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
		repeat with D running through the Nviables of L:
			set next numerical response to "[D]";
		compute multiple choice question;
		let D be entry player-numerical-response in the NViables of L;
		if Fchoice is 3 or Fchoice is 4:
			now the football-possessor of football is headmistress;
		if Fchoice is 3:
			let R be the room D from L;
			if R is a room and R is not Solid Rock:
				say "You kick [NameDesc of football] as hard as you can to the [D]!";
				now football is in R;
		otherwise:
			now auto is 1;
			try going D;
			now auto is 0;
			now football is not dribbled;
	zero focus stuff;
	now temporaryYesNoBackground is Figure of small image.

Check kicking football:
	if the game-state of team-football-predicament is not 0, say "The football game is over. Time to make your way home!" instead;
	if the player is prone, say "You would need to stand up first!" instead;
	let ball-taken be 0;
	allocate 3 seconds;
	let M be team-predicament-partner;
	if the football-possessor of football is M:
		say "You try to take the ball away from [NameDesc of M] with some fancy footwork!";
		let D be a random number between -5 and the dexterity of the player;
		if football is dribbled, decrease D by the dexterity of the player / 2;
		if D > 0:
			say "You smoothly steal it right away from [him of M]! ";
			now M is stalled;
			now ball-taken is 1;
			say "[bold type]You now have possession of the ball.[roman type][line break]";
		otherwise:
			say "[big he of M] manages to keep the ball well away from your feet!";
			if football is dribbled:
				say "By pulling the ball away at just the right moment, [NameDesc of M] is able to make you lose your footing!";
				try kneeling instead;
	otherwise:
		now ball-taken is 2;
	if ball-taken > 0:
		now the football-possessor of football is the player;
		if ball-taken > 1, follow the football possession rule instead; [the ball was just available for the taking]
	do nothing instead.

An all time based rule:
	if current-predicament is team-football-predicament and the game-state of team-football-predicament is 0:
		if the football-possessor of football is not the player, now football is not dribbled;
		let M be team-predicament-partner;
		now the last-interaction of M is 0;
		if the football-possessor of football is yourself or the football-possessor of football is M, now football is in the location of the football-possessor of football;
		if football is in the location of M:
			increase the student-stimulation of team-football-predicament by a random number between 1 and 3;
			if the football-possessor of football is M, increase the student-stimulation of team-football-predicament by a random number between 1 and 3;
		otherwise:
			decrease the student-stimulation of team-football-predicament by 1;
		if the student-stimulation of team-football-predicament >= a random number between 10 and (15 + the dedication of M):
			say "[BigNameDesc of M] [bold type]wobbles as a powerful orgasm wracks [his of M] body![roman type][line break][big he of M] collapses to the ground[if the football-possessor of football is M], losing control of the ball[end if].";
			if the football-possessor of football is M:
				now football is not dribbled;
				now the football-possessor of football is headmistress;
				increase the lessonInt1 of M by a random number between 0 and 1;
			now M is stalled;
			now the student-stimulation of team-football-predicament is 0;
			HappinessDown M;
		let FL be the location of football;
		let L be the location of M;
		if (L is not in Toilet02 or FL is not Park02) and the distance of L from FL > (a random number between 1 and 2):
			if debugmode > 0, say "Opponent in [L] ([grid position of L]); Football in [FL] ([grid position of FL]). Distance is [distance of L from FL].";
			now the game-state of team-football-predicament is 1;
			now the football-possessor of football is headmistress;
			say "[bold type]Your vibrator plays a little triumphant tune and turns itself off. [roman type]The football has gotten far enough away from [NameDesc of M], and you've won! Even from over here you can hear [his of M] vibrator has clicked into a permanent maximum setting. [big he of M] squeals and runs for home as fast as [his of M] legs will carry [him of M].";
			HappinessDown M by 3;
			now M is in School02;

To compute football movement of (M - a student):
	let FL be the location of football;
	let L be the location of M;
	if M is in Toilet02:
		try M going down;
		if the player is not in Toilet02 and the vindictiveness of M > 0, compute football movement of M; [On the first turn, they usually get to take possession super quickly]
	otherwise if the lessonInt1 of M > 0:
		say "[BigNameDesc of M] is still recovering...";
		decrease lessonInt1 of M by 1;
	otherwise if L is FL:
		if the football-possessor of football is M:
			if the student-stimulation of team-football-predicament > 10 + the dedication of M:
				let R be a random number between 1 and (the number of entries in the Nviables of L);
				let D be entry R in the Nviables of L;
				let RD be the room D from L;
				say "[BigNameDesc of M] kicks the football towards [if the player is in RD]you[otherwise]the [D][end if]!";
				now football is in RD;
				now the football-possessor of football is headmistress;
				now football is not dribbled;
			otherwise:
				let R be a random number between -1 and the dedication of M;
				if R >= 0:
					let R be a random number between 1 and (the number of entries in the Nviables of L);
					let D be entry R in the Nviables of L;
					let RD be the room D from L;
					say "[BigNameDesc of M] dribbles the football[if the player is not in RD and the player is not in L] towards the [D][end if]!";
					try M going D;
					now football is in RD;
					if a random number between 1 and 5 > 2, now M is stalled; [moving with the ball is slow work]
					now football is not dribbled;
				otherwise:
					say "[BigNameDesc of M] stays still and focuses on maintaining possession.";
					now football is dribbled;
		otherwise:
			if the player is in L, say "[BigNameDesc of M] goes for the ball.";
			let R be 1;
			if the football-possessor of football is the player, now R is a random number between (the dexterity of the player * -1) and 10;
			if football is dribbled, decrease R by 2;
			if R > 0:
				say "[BigNameDesc of M] [bold type][if the football-possessor of football is the player]successfully tackles you and [end if]now has the ball![roman type][line break]";
				purge NPC icons;
				if the football-possessor of football is the player:
					now another-turn is 1;
					now another-turn-flavour is "It takes you a moment to regain your footing.";
				now the football-possessor of football is M;
			otherwise:
				say "You deftly pull the ball away from [his of M] foot at the last moment, retaining possession!";
				if football is dribbled:
					say "You manage to make [NameDesc of M] lose [his of M] balance, and [he of M] falls to the ground! This is your chance!";
					now M is stalled;
	otherwise:
		let LD be a list of directions;
		if the distance of L from FL > 1: [There might be multiple best routes, we should consider them all]
			if the easting part of the grid position of FL > the easting part of the grid position of L:
				add east to LD;
			otherwise if the easting part of the grid position of FL < the easting part of the grid position of L:
				add west to LD;
			if the northing part of the grid position of FL > the northing part of the grid position of L:
				add north to LD;
			otherwise if the northing part of the grid position of FL < the northing part of the grid position of L:
				add south to LD;
		otherwise:
			let D be the best route from L to FL through placed rooms;
			add D to LD;
		let LDE be the number of entries in LD;
		let LDN be 0;
		repeat with D running through LD:
			if LDN < LDE:
				increase LDN by 1;
				let LR be the room D from L;
				let NB be the number of bystanders in LR - the number of bystanders in L;
				if NB > 0 and NB >= (the dedication of M / 2) + (a random number between 0 and 1):
					if LDN >= LDE, say "[BigNameDesc of M] is too shy to go towards the ball while there are so many bystanders about..."; [Only said once after we have checked the last viable direction]
				otherwise:
					now LDN is 100;
					try M going D.

This is the lose football possession from orgasm rule:
	if the football-possessor of football is the player:
		say "Thanks to the orgasm, [bold type]you no longer have proper control over the football.[roman type][line break]";
		now football is not dribbled;
		now the football-possessor of football is headmistress.
The lose football possession from orgasm rule is listed last in the orgasm resolution rules.

Check going east when the player is in Predicament19:
	if current-predicament is team-football-predicament and the game-state of team-football-predicament is 0, say "The door is locked! You need to wait until the football game is over..." instead.

water-fountain-predicament is a predicament.
Definition: water-fountain-predicament is appropriate:
	if the rank of the player > 2, decide no;
	if the player is a february 2020 diaper donator or the player is a february 2020 top donator, decide yes;
	decide no.
To say PredicamentDescription of (P - water-fountain-predicament):
	say "I'm currently in an Extra Credit lesson where I need to decide when to stand up and stop receiving enemas each time the water fountain is used, exposing myself to everyone left in the area when I do, and then I need to get back to my home while avoiding as many bystanders from noticing me as possible.".

water-fountain is a thing. water-fountain is not portable. The printed name of water-fountain is "[TQlink of item described]water fountain[shortcut-desc][TQxlink of item described]". The text-shortcut of water-fountain is "wtf". Understand "water", "fountain" as water-fountain.

Figure of water-fountain scene is the file "Env/School/waterfountain1.jpg".
Figure of water-fountain is the file "Env/School/waterfountain2.jpg".

To decide which figure-name is the examine-image of (C - water-fountain):
	if water-fountain is penetrating asshole, decide on figure of water-fountain scene;
	decide on figure of water-fountain.

To say ShortDesc of (S - water-fountain):
	say "water fountain".

To say MediumDesc of (S - water-fountain):
	say "water fountain and bench".

To say NameDesc of (S - water-fountain):
	say "the enema bench".
To say BigNameDesc of (S - water-fountain):
	say "The enema bench".

To say ExamineDesc of (S - water-fountain):
	say "This water-fountain's drain is subtly connected to a pipe that runs down to the nearby park bench, where an enema nozzle is fixed in an upright position[if S is penetrating asshole]. You are currently sitting on that enema nozzle...[otherwise].[end if]".

Check going when water-fountain is penetrating asshole:
	say "You need to stand up first!" instead.

Report standing when water-fountain is penetrating asshole:
	dislodge water-fountain;
	let K be a random worn crotch-displaced knickers;
	if K is knickers:
		say "[if there is an uninterested bystander in the location of the player]Everyone is about to notice you. [end if]Do you want to replace your [ShortDesc of K][if there is a bystander in the location of the player] before anyone sees your [asshole][end if]? ";
		if the player is consenting:
			now auto is 1;
			try replacing K;
			now auto is 0;
	update appearance level;
	if debugmode > 0, say "Player appearance is [appearance of the player].";
	repeat with M running through uninterested bystanders in the location of the player:
		now M is interested;
		compute perception of M;
	if the total squirtable fill of belly >= 0 and the player is able to automatically expel, now the holding strain of belly is (belly strain balance * 2) - 1. [As soon as time ticks forward the player will get a kick of enema cramp]

Carry out kneeling when water-fountain is in the location of the player:
	say "Sit back down on the enema nozzle?";
	if the player is bimbo consenting, compute toyInsertion of water-fountain into asshole;
	update appearance level.

To execute (L - water-fountain-predicament):
	set up predicament universe;
	summon gross tank top uncursed;
	let S be a random pink microskirt;
	summon S uncursed;
	summon white-girly briefs uncursed;
	now white-girly briefs is crotch-displaced;
	now water-fountain is in Park13;
	now water-fountain is penetrating asshole;
	now the stance of the player is 1;
	now the player is in Park13;
	say "You find yourself sitting on a park bench wearing a slutty tank top, tiny microskirt and embarrassing white underwear, and you can feel some sort of intrusion in your [asshole]. Looking behind you, your predicament becomes clear. There's a nearby stand-alone water fountain, fed by a mains tap in the ground. [ExamineDesc of water-fountain][paragraph break]At some point you're going to have to stand up and try to leave. But standing up before the large queue of bystanders clears will surely let them all see exactly where you've been sitting! But... as you remain seated, everything the drinkers fail to drink gets delivered straight into your belly...";
	compute predicament map reveal.

A bystander can be fountain-unquenched. A bystander is usually fountain-unquenched.

To set up bystanders for (P - water-fountain-predicament):
	set up 16 bystanders;
	let Q be 4;
	let LM be the list of alive bystanders;
	sort LM in random order;
	repeat with M running through LM:
		if Q > 0:
			now M is in Park13;
		otherwise if Q > -1:
			now M is in Predicament30;
		otherwise if Q > -2:
			now M is in Predicament32;
		decrease Q by 1;
		now M is fountain-unquenched.

An all time based rule:
	if current-predicament is water-fountain-predicament:
		if water-fountain is penetrating asshole and (the total fill of belly >= 20):
			say "[bold type]Your overly full belly cramps with pain.[roman type][line break]";
			PainUp 1;
		let M be a random fountain-unquenched bystander in Park13;
		if M is bystander:
			if the player is in Park13:
				say "[BigNameDesc of M] takes a drink from the water fountain.";
				if water-fountain is penetrating asshole:
					say "As cold water gurgles down the drain, nobody but you notices as it flows straight up your [asshole] and into your belly!";
					if the total fill of belly < belly limit, AssFill 4 water;
					if the total fill of belly >= 20, say "[one of][bold type]Your belly is just too full. It's going to hurt a lot if you don't stand up now!!![roman type][line break][or][stopping]";
			now M is not fountain-unquenched.

gloryhole-predicament is a predicament. gloryhole-predicament has a number called internet-outrage. gloryhole-predicament has a number called cocks-sucked. gloryhole-predicament has a number called cocks-missed. gloryhole-predicament has a number called mens-room-entered. gloryhole-predicament has a number called clothing-not-worn. Understand "gholepd" as gloryhole-predicament.

Definition: gloryhole-predicament is appropriate if diaper quest is 0 and the player is an april 2020 top donator and the rank of the player > 3.

To say PredicamentDescription of (P - gloryhole-predicament):
	say "I'm currently in an Extra Credit lesson where I need to suck at least 5 cocks in the women's toilets, trying to make sure nobody leaves from the other side of the gloryhole without having their dick sucked, and then go into the men's toilets and retrieve my house key and mystery outfit, and then get back to my home while avoiding as many bystanders from noticing me as possible.".

id-poster is a thing. The printed name of id-poster is "[TQlink of item described]identity poster[TQxlink of item described]". The text-shortcut of id-poster is "idp". Understand "identity", "poster" as id-poster.

To say ExamineDesc of (P - id-poster):
	say "A poster [if the location of P is Toilet01 and P is not held]pinned to the wall above the gloryhole [end if] which has a photo of your face, your full name, and a huge amount of personal information about you, including your date of birth, hometown and phone number. In large letters at the top of the poster, it says 'YOUR GLORYHOLE SLUT FOR TODAY'.[if the location of P is Toilet01 and P is not held and the player is not shameless][line break][variable custom style]Oh my god, I can't believe it! I need to take this down right now![roman type][line break][end if]".

To decide which figure-name is the examine-image of (C - id-poster):
	decide on figure of poster.

To execute (P - gloryhole-predicament):
	now the printed name of Predicament01 is "Small Room";
	now the player is in Predicament01;
	now id-poster is in Toilet01;
	now house-key is in Toilet01;
	summon lycra-bodysuit uncursed; [quickest way to strip it of any magic modifiers]
	now lycra-bodysuit is in Toilet01;
	summon skimpy-pink-bikini-top uncursed;
	summon pink bikini bottoms uncursed;
	say "You find yourself in a small room, empty except a small table, and a front door that leads outside. You are wearing an extremely skimpy metallic pink bikini set. The table has a piece of card on it with the word 'INSTRUCTIONS' on the front. You read the instructions on the back:[paragraph break][first custom style]'WELCOME TO EXTRA CREDIT CLASS. [PredicamentRewardExplanation]TO EARN THIS TROPHY, YOU MUST SIMPLY RETURN HOME AFTER EARNING THE KEY TO YOUR FRONT DOOR. THE KEY WILL BE OBTAINABLE FROM THE MEN'S TOILETS AFTER YOU HAVE SUCKED AT LAST ONE COCK TO COMPLETION AT THE GLORYHOLE IN THE PARK'S WOMEN'S TOILETS. YOUR PERFORMANCE WILL BE FILMED. EACH OF THE FOLLOWING WILL EARN YOU ONE PENALTY POINT:[line break]* EACH TIME YOU LET SOMEONE LEAVE THE MEN'S TOILETS WITHOUT YOU HAVING SUCKED THEIR COCK TO COMPLETION (WHILE YOU ARE IN THE LADIES['] TOILETS)- YOU ARE ALLOWED TO MISS ONE COCK, BUT EACH ONE AFTER THAT EARNS YOU A PENALTY POINT.[line break]* ENTERING THE MEN'S TOILETS BEFORE YOU HAVE FINISHED SUCKING COCKS[line break]* FAILING TO WEAR THE CLOTHING YOU WILL FIND IN THE MEN'S TOILETS HOME (AND ONLY THAT CLOTHING)[paragraph break]THE FOLLOWING ARE THE PUNISHMENTS FOR EACH PENALTY POINT EARNED:[line break]1) THE FOOTAGE OF YOUR PERFORMANCE WILL BE SENT TO YOUR [DistantRole in upper case] [DistantName in upper case][line break]2) THE FOOTAGE OF YOUR PERFORMANCE WILL BE SENT TO YOUR [PlatonicRole in upper case] [PlatonicName in upper case][line break]3) THE FOOTAGE OF YOUR PERFORMANCE WILL BE SENT TO YOUR [NemesisRole in upper case] [NemesisName in upper case][line break]4) THE FOOTAGE OF YOUR PERFORMANCE WILL BE SENT TO YOUR [FanciedRole in upper case] [FanciedName in upper case][line break]5) THE FOOTAGE OF YOUR PERFORMANCE WILL BE PUBLISHED ON WWW.SLUTHUB.COM.[paragraph break]FINALLY, [caps please] NOTE THAT SUCKING LESS THAN FIVE COCKS TO COMPLETION WILL AUTOMATICALLY TRIGGER ALL FIVE PUNISHMENTS.'[PredicamentRewardExplanationReaction][roman type][line break]It looks like your outfit has been decided for you...".

Check taking house-key:
	if current-predicament is gloryhole-predicament and the cocks-sucked of gloryhole-predicament < 1, say "The key is currently sealed inside a transparent case that hasn't yet unlocked. It looks like you'll need to go next door and suck a dick before it will open." instead.

Check going down when the player is in Park02:
	if current-predicament is gloryhole-predicament and the cocks-sucked of gloryhole-predicament < 5 and the mens-room-entered of gloryhole-predicament is 0:
		say "This will go into the men's room. You'll be punished if you do this before finishing sucking enough cocks. Are you sure you want to? ";
		if the player is not consenting:
			say "You change your mind.[line break]Did you want to go into the women's bathroom instead?";
			if the player is consenting, try going up instead;
			do nothing instead;
	otherwise if current-predicament is nun-walk-predicament:
		say "This will go into the men's room. If you're looking to serve at the gloryhole, you'll want to make sure you go to the women's room, not the men's. Go to the women's toilets instead? ";
		if the player is consenting, try going up instead;
	otherwise if diaper quest is 1 and the number of worn locked crotch covering clothing is 0:
		say "This will go into the men's room. [if Toilet02 is seen]The diaper changing station is in the women's room[otherwise]You have a thought that perhaps the women's room is more likely to have diaper changing facilities[end if]. Go to the women's toilets instead? ";
		if the player is consenting, try going up instead.

Report going when the player is in Toilet01:
	if id-poster is in Toilet01 and id-poster is not held:
		say "Your eyes are immediately drawn to the poster above the wall.";
		try examining id-poster;
		say HumiliateReflect 20 + (100 * the cocks-sucked of gloryhole-predicament);
	if lycra-bodysuit is in Toilet01:
		say "[variable custom style]And they want me to wear that bodysuit home?![roman type][line break]".

Report going when the player is in Toilet02:
	if current-predicament is gloryhole-predicament and mens-room-entered of gloryhole-predicament is 0, now mens-room-entered of gloryhole-predicament is 1.

Report going when the player is in Predicament20:
	if current-predicament is gloryhole-predicament:
		let PP be 0;
		say "[bold type]As you enter your house, your attention is drawn to a giant screen set up on the opposite wall.[line break][first custom style]";
		if the cocks-sucked of gloryhole-predicament < 5:
			say "LESS THAN FIVE COCKS SUCKED. ALL PUNISHMENTS ENABLED.";
			now PP is 5;
		otherwise:
			let CSP be the cocks-missed of gloryhole-predicament - 1;
			if CSP < 0, now CSP is 0;
			say "YOU FAILED TO SUCK OFF [cocks-missed of gloryhole-predicament] [if cocks-missed of gloryhole-predicament is 1]PERSON[otherwise]PEOPLE[end if][if cocks-missed of gloryhole-predicament > 0]. PENALTY POINTS INCREASED BY [CSP][end if].";
			increase PP by CSP;
			if mens-room-entered of gloryhole-predicament is 2:
				say "YOU ENTERED THE MEN'S ROOM BEFORE FINISHING YOUR WORK AT THE GLORYHOLE. PENALTY POINTS INCREASED BY 1.";
				increase PP by 1;
			otherwise:
				say "YOU DID NOT ENTER THE MEN'S ROOM UNTIL YOU HAD FINISHED YOUR WORK AT THE GLORYHOLE. PENALTY POINTS INCREASED BY 0.";
			if clothing-not-worn of gloryhole-predicament is 1:
				say "YOU DID NOT WEAR YOUR ALLOCATED BODYSUIT ALL THE WAY HOME. PENALTY POINTS INCREASED BY 1.";
				increase PP by 1;
			otherwise:
				say "YOU WORE YOUR ALLOCATED BODYSUIT ALL THE WAY HOME. PENALTY POINTS INCREASED BY 0.";
			if PP is 0:
				say "CONGRATULATIONS. NO PUNISHMENTS ENABLED.[roman type][line break]";
			otherwise:
				say "[if PP is 1]ONE PUNISHMENT[otherwise][PP] PUNISHMENTS[end if] ENABLED.[roman type][line break]";
				let T be "CCTV video footage of you sucking [cocks-sucked of gloryhole-predicament] [manly-penis][if cocks-sucked of gloryhole-predicament > 1]s[end if] through a gloryhole, dressed in nothing but super skimpy swimwear";
				say "The screen changes to show thumbnail summaries of [T], which is then animated being packaged into an email attachment and sent to [DistantName], your [DistantRole].";
				now distant-friend is friend-shocked;
				choose a blank row in Table of Published Disgraces;
				now the content entry is the substituted form of T;
				now the published entry is the substituted form of "has been uploaded to an obscure website www.fatherless.com by your [DistantRole] [DistantName]";
				now the severity entry is 2 + the internet-outrage of gloryhole-predicament;
				now the popularity entry is 1;
				now the timestamp entry is time-earnings;
				now the viewsfuzz entry is a random number between -10 and 10;
				if PP > 1:
					say "Then the screen shows the same file being sent to your [PlatonicRole] [PlatonicName].";
					now platonic-friend is friend-shocked;
					choose a blank row in Table of Published Disgraces;
					now the content entry is the substituted form of T;
					now the published entry is the substituted form of "has been sent to a small private group chat of your friends by your [PlatonicRole] [PlatonicName]";
					now the severity entry is 500;
					now the popularity entry is 0;
					now the timestamp entry is 0;
					now the viewsfuzz entry is 0;
				if PP > 2:
					say "Next, the screen shows the same file being sent to [NemesisName], your [NemesisRole].";
					now nemesis-friend is friend-shocked;
					choose a blank row in Table of Published Disgraces;
					now the content entry is the substituted form of T;
					now the published entry is the substituted form of "has been sent to a small private group chat of your friends and family by your [NemesisRole] [NemesisName]";
					now the severity entry is 750;
					now the popularity entry is 0;
					now the timestamp entry is 0;
					now the viewsfuzz entry is 0;
				if PP > 3:
					say "Next, the screen shows the same file being sent to [FanciedName], your [FanciedRole].";
					now fancied-friend is friend-shocked;
					choose a blank row in Table of Published Disgraces;
					now the content entry is the substituted form of T;
					now the published entry is the substituted form of "has been sent to a large private group chat of all of your friends by your [FanciedRole] [FanciedName] along with the message 'WARNING: TURNS OUT THAT [NameBimbo] IS A HUGE CREEP AND A MASSIVE PERV. GROSS!!!'";
					now the severity entry is 1400;
					now the popularity entry is 0;
					now the timestamp entry is 0;
					now the viewsfuzz entry is 0;
				if PP > 4:
					say "Next, the screen shows the file is now live on www.pronhub.com, and gaining views in real time as you watch.";
					choose a blank row in Table of Published Disgraces;
					now the content entry is the substituted form of T;
					now the published entry is the substituted form of "has been uploaded to www.pronhub.com";
					now the severity entry is 12 + the internet-outrage of gloryhole-predicament;
					now the popularity entry is 5;
					now the timestamp entry is time-earnings;
					now the viewsfuzz entry is a random number between 1 and 9;
				say obsceneHumiliateReflect.

An all later time based rule:
	if current-predicament is gloryhole-predicament:
		let M be a random ultimate-lesson-actor in Toilet02;
		if M is a thing:
			if M is not penetrating a body part:
				if the player is in Toilet02, say "You hear [NameDesc of M] do [his of M] business and then leave.[line break][MissedGloryholeCock]";
				otherwise increase the cocks-missed of gloryhole-predicament by 1;
				finally destroy M;
				zero focus stuff;
		otherwise if the player is in Toilet02:
			if a random number between 1 and 3 is 1:
				let M be a random ultimate-lesson-actor;
				set up M;
				now M is in Toilet02;
				now M is not interested;
				say "[bold type]Through the hole, you can hear someone enter the men's bathroom.[if the cocks-sucked of gloryhole-predicament >= 5][line break][variable custom style]Another person already?! Wait, if I leave without sucking this new guy's [manly-penis], will that count against me?![otherwise if the cocks-sucked of gloryhole-predicament is 0][line break][variable custom style][one of]I guess that's my cue to knock on the wall[or]I need to knock now or [he of M] might leave[stopping]...[end if][roman type][line break]";
			otherwise:
				say "[one of]You silently wait and listen for any noise through the hole.[or][or]You silently reflect on how you must look in the CCTV camera, patiently waiting at a gloryhole for [if the cocks-sucked of gloryhole-predicament > 0]more [end if][manly-penis].[or][or]Time feels like it stands still as you quietly wait[if the player is prone] on your knees[end if].[or][or][variable custom style]This is a new low.[roman type][line break][or][or]You stare at the CCTV camera in the corner.[line break][variable custom style]I've got to stop that recording from getting out.[roman type][line break][then at random]".

Before doing something to an ultimate-lesson-actor when the player is in a predicament room:
	if the current action is not talking the noun and the current action is not examining the noun, say "You can't reach through the hole." instead.

Check attacking female-gloryhole:
	if the player is immobile, say "Aren't you a bit busy?" instead;
	allocate 1 seconds;
	say "You knock on the wall next to the gloryhole.";
	let M be a random ultimate-lesson-actor in the location of the player;
	if M is monster:
		let OT be a random number between -1 and 5;
		let T be OT;
		let TX be T + a random number between -1 and 1;
		say "The [man of M] on the other side of the wall [if TX <= 1]seems intrigued.[line break][speech style of M]'Oh, is somebody hungry?'[otherwise if TX is 2]seems curious.[line break][speech style of M]'Oh, is somebody there?'[otherwise if TX is 3]seems cautious.[line break][speech style of M]'Who's there?'[otherwise if TX is 4]seems hesitant.[line break][speech style of M]'You're not a dude, are you?'[otherwise]seems reluctant.[line break][speech style of M]'This can't be for real...'[end if][roman type][line break]";
		if current-predicament is gloryhole-predicament, say "What will you do? Remember, the more outrageous your performance, the more humiliating the video that is being published on the Internet will be.";
		reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
		if the player is able to speak:
			set numerical response 1 to "whisper a greeting";
			set numerical response 2 to "say hi with a sweet, slightly seductive voice";
			set numerical response 3 to "offer [him of M] a blowjob";
			set numerical response 4 to "submissively offer [him of M] a blowjob";
			set numerical response 5 to "seduce [him of M] with your voice and words as best as you can";
		otherwise:
			set numerical response 1 to "make a noise";
		set numerical response 0 to "do nothing";
		compute multiple choice question;
		decrease T by player-numerical-response;
		if current-predicament is gloryhole-predicament:
			if the internet-outrage of gloryhole-predicament < player-numerical-response:
				now the internet-outrage of gloryhole-predicament is player-numerical-response;
			otherwise if the internet-outrage of gloryhole-predicament / 2 <= player-numerical-response:
				increase the internet-outrage of gloryhole-predicament by 1;
		if player-numerical-response is 1:
			if the player is able to speak, say "You whisper quiety through the hole.[line break][variable custom style]'[one of]Psst. Hi.'[or]Hello?'[or]Hey, over here...'[in random order][roman type][line break]";
			otherwise say "You make an [variable custom style]'Mhmm'[roman type] sound.";
		otherwise if player-numerical-response is 2:
			say "You try to make your tone of voice as friendly and feminine as possible.[line break][variable custom style]'Hey there, [stud of M]...'[roman type][line break]";
		otherwise if player-numerical-response is 3:
			say "You try to keep your voice from wavering as you make the proposition.[line break][variable custom style]'[one of]I'm here to give you a blowjob!'[or]Want a BJ?'[or]Come on, you know what this is for. Let me suck you off!'[in random order][roman type][line break]";
		otherwise if player-numerical-response is 4:
			say "You try to keep your voice soft and submissive.[line break][variable custom style]'[one of]Please could I give you a blowjob?'[or]Will you please let me suck you off?'[or]I'm here to make you cum, if you'll allow me...'[in random order][roman type][line break]";
		otherwise if player-numerical-response is 5:
			say "You make your voice as high pitched and girly as possible.[line break][variable custom style]'Please [stud of M], [one of]can I please taste your yummy [manly-penis]?'[or]I'm desperate to suck on your big [manly-penis] and drink your cum...'[or]I'm a [manly-penis]-addicted slut and I just really need your [manly-penis] straight away! Pleeeease let me taste it!'[in random order][roman type][line break]";
		if T <= 0:
			if current-predicament is not nun-walk-predicament and a random number between 1 and 2 is 1, now M is wrapped;
			otherwise now M is unwrapped;
			say "[if OT > 0]You can hear [NameDesc of M] [one of]breathing heavily[or]almost tripping over [himself of M] as [he of M] drops [his of M] pants[or]rushing to comply[or]making excited sounds[in random order].[line break][speech style of M]'[one of]Today must be my lucky day[or]Oh yeah[or]Stay right there[in random order]...'[roman type][line break][end if]Moments later, a [manly-penis] appears through the hole! There is [if M is unwrapped][bold type]not[roman type] [end if]a condom on [his of M] [manly-penis].";
			say "Suck the [manly-penis]?";
			if the player is consenting:
				if mens-room-entered is 1 and current-predicament is gloryhole-predicament, now mens-room-entered of gloryhole-predicament is 2;
				say "You [if the player is upright]get on your knees and [end if]accept the [manly-penis] into your mouth[if current-predicament is gloryhole-predicament], acutely aware of the CCTV camera recording everything[end if].[line break][speech style of M]'[one of]Woah, this is really happening!'[or]Wow, what a slut.'[or]Good girl.'[or]Yes!'[cycling][roman type][line break]";
				now the stance of the player is 1;
				if id-poster is in Toilet01 and a random number between 1 and 2 is 1:
					say "You hear a [bold type]BEEP[roman type] that sounds like [he of M][']s started a recording on [his of M] phone.";
					choose a blank row in Table of Published Disgraces;
					now the content entry is the substituted form of "video footage of a [man of shopkeeper][']s [manly-penis] being sucked through a gloryhole, with a poster above the hole showing your face and all your personal details,";
					now the published entry is the substituted form of "has been uploaded to www.youpron.com";
					now the severity entry is 6;
					now the popularity entry is 7;
					now the timestamp entry is time-earnings;
					now the viewsfuzz entry is a random number between -100 and 100;
				calm M;
				now M is interested;
				now M is penetrating face;
				now M is friendly-fucking;
			otherwise:
				say "[BigNameDesc of M] quickly gets fed up, pulls away and leaves.[line break][MissedGloryholeCock]";
				destroy M;
				zero focus stuff;
		otherwise:
			say "You hear a cough and then someone leaving the men's toilets as soon as they can.[line break][MissedGloryholeCock]";
			destroy M;
			zero focus stuff;
	otherwise:
		 say "Nobody responds.";
	do nothing instead.

To say MissedGloryholeCock:
	if current-predicament is gloryhole-predicament:
		increase the cocks-missed of gloryhole-predicament by 1;
		say "[variable custom style][if the cocks-missed of gloryhole-predicament is 1]That's one I've failed to give a blowjob to. I guess that was my only freebie...[otherwise if the cocks-missed of gloryhole-predicament is 2]That's a second [man of shopkeeper] I've failed to give a blowjob to. That means I've gained a punishment point...[otherwise]That's [cocks-missed of gloryhole-predicament] [men of shopkeeper] I've failed to give a blowjob to. That means I've gained another punishment point...[end if][roman type][line break]".

nun-walk-predicament is a predicament.
Definition: nun-walk-predicament is appropriate if diaper quest is 0 and (armband is emerald or armband is ruby) and (tough-shit is 0 or the number of worn headgear is 0).
To execute (NWP - nun-walk-predicament):
	summon nun-dress uncursed;
	now nun-dress is locked;
	now nun-dress is wrist-bound-behind;
	summon nun cowl uncursed;
	if the player is female, summon purple-vibrator vaginally;
	otherwise summon purple-vibrator;
	now the raw-magic-modifier of purple-vibrator is 0;
	now purple-vibrator is bland;
	now purple-vibrator is blandness;
	let F be a random fuckhole penetrated by purple-vibrator;
	if the size of purple-vibrator > the openness of F, now the size of purple-vibrator is the openness of F;
	otherwise now the size of purple-vibrator is 3;
	summon dark-leggings uncursed;
	now dark-leggings is crotch-ripped;
	summon black-leather-flat-boots cursed;
	now the quest of black-leather-flat-boots is mouthful-quest;
	now the raw-magic-modifier of black-leather-flat-boots is -2;
	now black-leather-flat-boots is oral-sex-addiction-influencing;
	now the player is in Predicament02;
	say "You find yourself in an alleyway somewhere outside. You are wearing a nun's cowl and underneath it, a nun's dress. [ClothingDesc of nun-dress][line break]To make things worse, there is a vibrator buzzing powerfully in your [variable random fuckhole penetrated by purple-vibrator], currently held in place by your hands. A robotic voice speaks from a hidden speaker.[paragraph break][first custom style]'WELCOME TO EXTRA CREDIT CLASS. [PredicamentRewardExplanation]TO EARN THIS TROPHY, YOU MUST SIMPLY RETURN HOME. HOWEVER, YOUR OUTFIT WILL ONLY UNLOCK ONCE YOU REACH YOUR HOUSE IF THE VIBRATOR MAKES IT THERE WITH YOU, AND A MOUTHFUL OF SEMEN IS DEPOSITED INTO THE BOWL ON THE TABLE IN YOUR HOUSE. IF YOU WONDER WHERE YOU MIGHT FIND A MOUTHFUL OF SEMEN, CONSIDER THE GLORYHOLE IN THE WOMEN'S TOILETS...'[PredicamentRewardExplanationReaction][roman type][line break]";
	now the previous-temporary-image of nun-dress is Figure of nun-dress-xray-dong;
	maybe-map-display nun-dress.

To say PredicamentDescription of (P - nun-walk-predicament):
	say "I'm currently in an Extra Credit lesson where I need to get back to my home while avoiding as many bystanders from noticing me as possible. If I want to be freed from my hidden-bondage nun dress then I need to make sure I arrive at my house with the vibrator and my mouth full of [semen], which I can get from the gloryhole in the women's toilets.".

An all later time based rule:
	if current-predicament is nun-walk-predicament:
		if the number of on-stage bystanders < 25, set up 29 bystanders; [reset all bystanders and increase the number for the walk home from the toilets]
		let M be a random ultimate-lesson-actor in Toilet02;
		if M is a thing:
			if M is not penetrating a body part:
				if the player is in Toilet02, say "You hear [NameDesc of M] do [his of M] business and then leave.[line break]";
				finally destroy M;
				zero focus stuff;
		otherwise if the player is in Toilet02:
			if a random number between 1 and 3 is 1:
				let M be a random ultimate-lesson-actor;
				set up M;
				now M is in Toilet02;
				now M is not interested;
				say "[bold type]Through the hole, you can hear someone enter the men's bathroom.[if the semen volume of face is 0][line break][variable custom style]I guess that's my cue to knock on the wall...[end if][roman type][line break]";
			otherwise:
				say "[one of]You silently wait and listen for any noise through the hole.[or][or]You silently reflect on how you must look to anyone watching you play Trap Quest, patiently waiting at a gloryhole for [manly-penis].[or][or]Time feels like it stands still as you quietly wait[if the player is prone] on your knees[end if].[or][or][then at random]".

Report going when the player is in Predicament20:
	if nun-dress is worn and nun-dress is locked and the semen volume of face > 0:
		say "[bold type]There is a bowl with some kind of electronic sensor at the bottom waiting for you on a pedestal in the middle of the room. [roman type]This must be the bowl you're supposed to fill with [semen] in order to escape from [NameDesc of nun-dress]! You let the [semen] run out of your mouth and into the bowl.";
		MouthEmpty;
		if purple-vibrator is held or purple-vibrator is in the location of the player:
			say "[BigNameDesc of purple-vibrator] makes a beeping sound and then [NameDesc of nun-dress] clicks open, falling to the ground around you! Phew!";
			now nun-dress is not locked;
			now nun-dress is wristless;
			now nun-dress is in the location of the player;
		otherwise:
			say "Unfortunately nothing seems to happen. You recall the instructions saying that you needed to still have [NameDesc of purple-vibrator] with you as well.[line break][variable custom style]Oh crap... so I'm stuck wearing this?![roman type][line break]";
	if nun cowl is worn:
		say "[BigNameDesc of nun cowl] fades from existence.";
		only destroy nun cowl.

To compute nun perception of (M - a bystander):
	say "[big he of M] looks at you.[line break][speech style of M]'[one of]Seven blessings [or]Good morning [or]Blessings be upon you, [or]Pleasant greetings [or]A lovely day isn't it, [in random order]sister[run paragraph on]";
	if a random number between 1 and 2 is 1:
		say ". [one of]Might I ask what passage you are reading?'[or]Are you reading a sermon, or...?'[or]What are you reading?'[in random order][roman type][line break]";
		reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
		set numerical response 1 to "remain silent";
		set numerical response 2 to "[if the total volume of face > 0]swallow your [MouthfulDesc] and then [end if]fob [him of M] off with a bluff";
		if the total volume of face > 0, set numerical response 3 to "try to mumble a bluff through your [MouthfulDesc] without spilling any";
		compute multiple choice question;
		if player-numerical-response is 1:
			say "You remain silent. ";
			if a random number between 1 and 3 is 1:
				say "[big he of M] shrugs and leaves you alone.";
			otherwise:
				say "[big he of M] comes a step closer and peers at the pages of the book. [big his of M] eyes go wide and [he of M] gasps.[line break][speech style of M]'[one of]This... this is[or]S-sacrilege[at random]!!!'[roman type][line break][big he of M] is rendered almost speechless.[strongHumiliateReflect]";
				now the worst-appearance of M is 5;
		otherwise if player-numerical-response is 2:
			if the total volume of face > 0, compute swallowing;
			say "[variable custom style]'It's, ah, yes, my favourite piece of scripture. It's about, um, guidance for nuns on how to remain pure. You would find it very dull.'[line break][speech style of M]'Ah, I see.'[roman type][line break]Satisfied, [NameDesc of M] turns to leave you alone.";
		otherwise if player-numerical-response is 3:
			say "[variable custom style]'It's, ah, yes, my favourite piece of scripture[run paragraph on]";
			if a random number between -1 and the total volume of face > 0:
				say "-'[roman type][line break]Your explanation is interrupted by some of the [MouthfulDesc] escaping through the gap in your lips.";
				compute accidental spitting;
				if M is not camera-bystander, say "[big he of M] gags and backs away from you in horror.[severeHumiliateReflect]";
				now the worst-appearance of M is 10;
			otherwise:
				say ". It's about, um, guidance for nuns on how to remain pure. You would find it very dull.'[line break][speech style of M]'Ah, I see.'[roman type][line break]Satisfied, [NameDesc of M] turns to leave you alone.";
		if the worst-appearance of M >= 5 and M is camera-bystander:
			say "[big he of M] whips up [his of M] camera and takes a photo of you.[line break][speech style of M]'This is going straight on Twatter, you crazy bitch!'[roman type][line break]";
			choose a blank row in Table of Published Disgraces;
			now the content entry is the substituted form of "a high resolution photo of you dressed as a nun, [if the worst-appearance of M is 10]semen spurting out of your mouth and dribbling down your chin[otherwise]holding and reading a fake religious book that clearly actually contains diagrams and instructions on how to perform niche sex acts[end if]";
			now the published entry is the substituted form of "has been shared on www.twatter.com";
			now the severity entry is the worst-appearance of M;
			now the popularity entry is 5;
			now the timestamp entry is time-earnings;
			now the viewsfuzz entry is a random number between -100 and 100;
	otherwise:
		say ".'[roman type][line break]".

Check taking off purple-vibrator:
	if current-predicament is nun-walk-predicament and nun-dress is worn and nun-dress is wrist-bound-behind:
		say "Are you sure? It'll drop to the ground and with your current bondage situation you won't be able to retrieve it.";
		if the player is not consenting, say "You decide against it." instead.

team-snowball-predicament is a team-predicament.
Definition: team-snowball-predicament is appropriate if the rank of the player >= 3 and diaper quest is 0 and the player is a june 2020 top donator.
Figure of team snowball predicament female is the file "Special/Cutscene/cutscene-predicament-snowball1.jpg".
Figure of team snowball predicament male is the file "Special/Cutscene/cutscene-predicament-snowball2.jpg".

To execute (TEP - team-snowball-predicament):
	now the stance of the player is 0;
	let IHC be a random I heart cum shirt;
	summon IHC uncursed;
	let PPP be a random pump plug panties;
	if the player is possessing a vagina, now PPP is vagina plugging;
	summon PPP uncursed;
	now the plug size of PPP is 1;
	let BRS be a random black rubber stockings;
	summon BRS uncursed;
	now BRS is speed;
	if the player is possessing a vagina, now temporaryYesNoBackground is Figure of team snowball predicament female;
	otherwise now temporaryYesNoBackground is Figure of team snowball predicament male;
	force immediate clothing-focus redraw;
	now bigGameLoop is 1; [tells the game not to refresh the map window]
	clear the map-window;
	let M be team-predicament-partner;
	say "You look around... you're standing with your back to one wall of a rather large room, with [NameDesc of M] standing at the other end. You're both wearing the same outfit - a black cotton shirt that reads 'I <3 CUM', a pair of black latex stockings and a pair of black latex plug panties with inflatable plugs, the pumps for the plugs dangling between your legs. You're attached to the wall (and [student-name of M] is attached to the opposing wall) by some kind of elastic bungee harness that keeps your arms bound behind you. By you is a fishbowl, half-full of [semen]. By [student-name of M] is another identical fishbowl, completely empty. On the ground right in the middle of the room is some kind of flat electronic sensor. A robotic voice speaks over some kind of tannoy.[line break][first custom style]'WELCOME TO THE SEMEN SNOWBALL [']EXTRA CREDIT['] CLASS. TO BE RELEASED FROM YOUR BONDAGE, YOU MUST TRANSFER ALL THE SEMEN FROM FISHBOWL A TO FISHBOWL B. YOU WILL FIND THAT THE ONLY WAY TO DO THIS IS BY PASSING THE SEMEN BETWEEN YOUR MOUTHS. ANY SEMEN THAT DROPS ON THE SENSOR IN THE MIDDLE OF THE ROOM WILL CAUSE YOUR PLUGS TO INFLATE A BIT.[paragraph break]'IF NO SEMEN IS TRANSFERRED FOR APPROXIMATELY TEN SECONDS, THEN THE PLUGS WILL AUTOMATICALLY INFLATE A BIT. IN TWO MINUTES, THE GAME WILL END AND YOU WILL BE ABLE TO LEAVE. IF YOU HAVE TRANSFERRED THE VAST MAJORITY OF THE SEMEN, YOU WILL BE ABLE TO DEFLATE THE PLUGS. IF NOT, VALVES WILL SHUT AND YOU WILL NOT BE ABLE TO DEFLATE THEM AT ALL.[paragraph break]'GOOD LUCK. YOUR TIME STARTS NOW.'[paragraph break][variable custom style]Oh god. Well, refusing to co-operate is clearly not an option...[roman type][line break]";
	let S be 30; [units of semen to transfer]
	let T be 120;
	let F be (the buckle threshold of the player + 4) / 5;
	while T > 0 and S > 0:
		let SP be ((S * 100) / (30 * 5)) * 5; [round down to nearest 5%]
		say "The are approximately [T] seconds left. About [SP]% of the [semen] remains. How much semen do you want to put in your mouth? [one of][bold type][or][stopping]The more semen you try to transfer at once, the exponentially higher chance you have of growing more [if the semen taste addiction of the player < 8]accustomed[otherwise]addicted[end if] to the taste.[roman type][line break]";
		reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
		set numerical response 0 to "none (rest)";
		set numerical response 1 to "a small amount";
		if S >= 2, set numerical response 2 to "a normal amount";
		if S >= 3, set numerical response 3 to "a large amount";
		if S >= 4, set numerical response 4 to "as much as physically possible";
		compute multiple choice question;
		if player-numerical-response > 0:
			decrease S by player-numerical-response;
			now the semen volume of face is player-numerical-response;
			say "You reach down and slurp from the bowl. You now have a [MouthfulDesc]. ";
			if a random number between 0 and 20 < the semen volume of face * the semen volume of face, SemenTasteAddictUp 1;
			say "You and [student-name of M] stretch your bungee harnesses as far as they will go, meeting in the middle of the room over the sensor[if the player is very tired]. [bold type]You are very tired[otherwise if the player is tired]. [bold type]You are tired[end if].[roman type][line break]";
			reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
			set numerical response 1 to "transfer the cum slowly (increases fatigue faster; small chance of a major spillage, increasing with fatigue and mouthful volume)";
			set numerical response 2 to "transfer the cum quickly (reasonable chance of minor spillage, increasing with mouthful volume)";
			if bukkake fetish is 1, set numerical response 3 to "transfer the cum quickly, pressing your bodies together (humiliating; any minor spillage will be caught by your clothing)";
			compute multiple choice question;
			if player-numerical-response is 1:
				say "You lock lips with [student-name of M] and begin to feed [him of M] the [semen] with your tongue. ";
				let FR be the fatigue of the player / F;
				let R be a random number between (5 - FR) and 6;
				if R < the semen volume of face:
					let SL be the semen volume of face;
					if R > 0, decrease SL by R;
					say "[bold type]But before you can [if SL is the semen volume of face]even properly start[otherwise]finish[end if], your knees buckle and the bungee cord pulls you away, breaking the seal![roman type] [if SL is the semen volume of face]All the[otherwise if SL is 1]A small amount of[otherwise if SL is 2]A small amount of[otherwise]A large amount of[end if] [semen] spurts out from between your lips, falling to the sensor on the ground between your legs.";
					decrease the semen volume of face by SL;
					SemenPuddleUp SL in Predicament01;
					if the plug size of PPP > 5, HappinessDown M;
				otherwise:
					say "You manage to successfully funnel your [if the semen volume of face > 1]entire [end if][MouthfulDesc] into [his of M] mouth.";
					if the fatigue of the player < F * 5, increase the fatigue of the player by F;
				say "Working against the bungee cord has made you both much more fatigued. ";
			otherwise:
				say "You [if player-numerical-response is 3]press your chest into [student-name of M][']s chest as tightly as you can, and [end if]lock lips with [him of M], before trying to push your [MouthfulDesc] into [his of M] mouth in one go. ";
				if player-numerical-response is 3:
					say "Your nipples rub against each other through the cotton fabric. [slightHumiliateReflect]";
					passively stimulate breasts;
				if a random number between 0 and 5 < the semen volume of face:
					say "[bold type][if the semen volume of face > 1]Some of[otherwise]Unfortunately,[end if] the [semen] escapes the seal.[roman type] ";
					decrease the semen volume of face by 1;
					if player-numerical-response is 3:
						CumSoak 1 on IHC;
						force immediate clothing-focus redraw;
					otherwise:
						SemenPuddleUp 1 in Predicament01;
					if the dedication of M > a random number between 0 and 3, HappinessDown M;
				otherwise:
					say "[big he of M] manages to accept it [if the semen volume of face > 1]all [end if]into [his of M] mouth without any spillages.";
			if the fatigue of the player < F * 5, increase the fatigue of the player by F;
			say "You both return to your walls[if the semen volume of face > 0], and [student-name of M] spits the [MouthfulDesc] into [his of M] fishbowl[end if].";
			now the semen volume of face is 0;
		otherwise:
			say "Time moves forward[if the fatigue of the player > 0]. You recover some energy[end if]. In response to your inaction, the [if the player is possessing a vagina]plugs in your [vagina] and [asshole] inflate[otherwise]plug in your [asshole] inflates[end if] a bit.";
			increase the plug size of PPP by 1;
			let FD be the fatigue of the player / 2;
			if FD < F, now FD is F;
			decrease the fatigue of the player by FD;
			if the fatigue of the player < 0, now the fatigue of the player is 0;
			increase analGripCount by 100; [Forces gripping to trigger again this turn]
			if PPP is vagina plugging, increase vaginalGripCount by 100;
		decrease T by 10;
		increase analGripCount by 10;
		if PPP is vagina plugging, increase vaginalGripCount by 10;
		compute gripping of PPP;
		update arousal;
	say "A beeping sound signals that the game is over. Your restraints are removed and you find that you are able to leave. ";
	if S > 0:
		say "A different buzzer sound coming from your fishbowl indicates that you failed to empty it. A clicking sound from your [PPP] lets you know that you won't be able to deflate it!";
	otherwise if the plug size of PPP > 1:
		say "You test the plug[if PPP is vagina plugging]s[end if] on your [PPP] and find that the valves are working! You are able to deflate it down to its minimum size.";
		now the plug size of PPP is 1;
	say "[BigNameDesc of M] just mutters some frustrated noises towards you before making for the door.";
	try M going north;
	now M is in School01;
	now bigGameLoop is 0;
	say "It looks like you're going to have to make your way out of here on your own.".

To SemenPuddleUp (X - a number) in (R - Predicament01):
	increase the semen-puddle of R by X;
	let P be a random worn pump plug panties;
	if P is clothing:
		if the plug size of P < 10:
			if the plug size of P + X > 10, now X is 10 - the plug size of P;
			say "The [if the player is possessing a vagina]plugs in your [vagina] and [asshole] inflate[otherwise]plug in your [asshole] inflates[end if] [if X is 1]a bit[otherwise if X is 2]significantly[otherwise]several sizes[end if]!";
			increase the plug size of P by X.

Predicament World ends here.
