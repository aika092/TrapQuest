Predicament World by Rooms begins here.

A predicament room is a kind of room. A park room is a kind of predicament room.
The shape of a predicament room is usually L8/0-0-0-0-0-0. The grid position of a predicament room is usually <8,0,0>.
Definition: a predicament room is unwalled: decide yes.
To decide which number is the concealment of (R - a predicament room):
	decide on 3.

Definition: a predicament room (called R) is within vision:
	if R is the location of the player, decide yes;
	if the player is not in Toilet01 and the player is not in Toilet02 and the player is not in Predicament01, decide yes;
	decide no.

A predicament room is a kind of room. A predicament room has a labyrinth shape called shape. The shape of a predicament room is usually L8/0-0-1-1-1-1. The grid position of a predicament room is usually <0,0,0>.
A predicament room is usually pinned.[These rooms are always in the same place.]
To decide which number is the concealment of (R - a predicament room):
	decide on -1.

Predicament01 is a predicament room. The printed name of Predicament01 is "Abandoned Warehouse". The shape of Predicament01 is L8/0-0-1-0-0-0. The grid position of Predicament01 is <8,12,5>. Predicament01 is bossed.
Definition: Predicament01 is unwalled: decide no.
Predicament02 is a predicament room. The printed name of Predicament02 is "Alleyway". "Around the corner of this small alleyway you can hear the sounds of a road. Cars are irregular but rather frequent.". The shape of Predicament02 is L8/0-0-0-1-1-0. The grid position of Predicament02 is <8,12,6>. Predicament02 is north of Predicament01. Predicament02 is bossed.

[Ring Road]

Predicament03 is a predicament room. The printed name of Predicament03 is "Main Road". The grid position of Predicament03 is <8,13,6>. Predicament03 is east of Predicament02.
Predicament04 is a predicament room. The printed name of Predicament04 is "Main Road". The shape of Predicament04 is L8/0-0-0-1-1-1. The grid position of Predicament04 is <8,13,7>. Predicament04 is north of Predicament03.
Predicament05 is a predicament room. The printed name of Predicament05 is "Main Road". The shape of Predicament05 is L8/0-0-0-0-1-1. The grid position of Predicament05 is <8,13,8>. Predicament05 is north of Predicament04.
Predicament06 is a predicament room. The printed name of Predicament06 is "Main Road". The shape of Predicament06 is L8/0-0-0-1-1-1. The grid position of Predicament06 is <8,14,8>. Predicament06 is east of Predicament05.
Predicament07 is a predicament room. The printed name of Predicament07 is "Main Road". The shape of Predicament07 is L8/0-0-0-1-1-1. The grid position of Predicament07 is <8,15,8>. Predicament07 is east of Predicament06.
Predicament08 is a predicament room. The printed name of Predicament08 is "Main Road". The shape of Predicament08 is L8/0-0-0-1-1-1. The grid position of Predicament08 is <8,16,8>. Predicament08 is east of Predicament07.
Predicament09 is a predicament room. The printed name of Predicament09 is "Main Road". The shape of Predicament09 is L8/0-0-0-0-1-1. The grid position of Predicament09 is <8,17,8>. Predicament09 is east of Predicament08.
Predicament10 is a predicament room. The printed name of Predicament10 is "Main Road". The shape of Predicament10 is L8/0-0-1-0-1-1. The grid position of Predicament10 is <8,17,7>. Predicament10 is south of Predicament09.
Predicament11 is a predicament room. The printed name of Predicament11 is "Main Road". The grid position of Predicament11 is <8,17,6>. Predicament11 is south of Predicament10.
Predicament12 is a predicament room. The printed name of Predicament12 is "Main Road". The shape of Predicament12 is L8/0-0-1-0-1-1. The grid position of Predicament12 is <8,17,5>. Predicament12 is south of Predicament11.
Predicament13 is a predicament room. The printed name of Predicament13 is "Main Road". The shape of Predicament13 is L8/0-0-1-0-1-1. The grid position of Predicament13 is <8,17,4>. Predicament13 is south of Predicament12.
Predicament14 is a predicament room. The printed name of Predicament14 is "Main Road". The shape of Predicament14 is L8/0-0-1-0-0-1. The grid position of Predicament14 is <8,16,4>. Predicament14 is west of Predicament13.
Predicament15 is a predicament room. The printed name of Predicament15 is "Main Road". The shape of Predicament15 is L8/0-0-1-1-0-1. The grid position of Predicament15 is <8,15,4>. Predicament15 is west of Predicament14.
Predicament16 is a predicament room. The printed name of Predicament16 is "Main Road". The shape of Predicament16 is L8/0-0-1-1-0-1. The grid position of Predicament16 is <8,14,4>. Predicament16 is west of Predicament15.
Predicament17 is a predicament room. The printed name of Predicament17 is "Main Road". The shape of Predicament17 is L8/0-0-1-1-0-0. The grid position of Predicament17 is <8,13,4>. Predicament17 is west of Predicament16.
Predicament18 is a predicament room. The printed name of Predicament18 is "Main Road". The shape of Predicament18 is L8/0-0-1-1-1-0. The grid position of Predicament18 is <8,13,5>. Predicament18 is north of Predicament17. Predicament18 is south of Predicament03.

[Home]

Predicament19 is a predicament room. The printed name of Predicament19 is "Driveway". "The entrance to your house is right in front of you. Thank goodness!". The shape of Predicament19 is L8/0-0-0-1-0-1. The grid position of Predicament19 is <8,18,6>. Predicament19 is east of Predicament11. Predicament19 is bossed.
Predicament20 is a predicament room. The printed name of Predicament20 is "Portal Room". "Instead of your house, there's just a room with a portal...". The shape of Predicament20 is L8/0-0-0-1-0-1. The grid position of Predicament20 is <8,19,6>. Predicament20 is east of Predicament19. Predicament20 is bossed.
Definition: Predicament20 is unwalled: decide no.
Check going north when the player is in Predicament20:
	let Y be 0;
	repeat with C running through portable things in the location of the player:
		if C is not held and C is not person, now Y is 1;
	if Y is 1:
		say "[bold type]You have left stuff on the ground here. [roman type]Are you sure you want to do that? You might not be able to get it back any time soon.";
		unless the player is consenting, say "Action cancelled." instead;
	let T be a random trophy in the location of the player;
	if T is nothing, now T is a random held trophy;
	if T is trophy and the trophy-mode of T is 0:
		say "You have a new trophy to consider activating here. Are you sure you want to leave without activating it? ";
		unless the player is consenting, say "Action cancelled." instead.

Report going north when the player is in School01:
	now map-zoom is saved-map-zoom;
	now Predicament11 is not discovered; [This is how we flag that the predicament world needs resetting the next time the player exits the alleyway]
	repeat with T running through on-stage trophies:
		if T is held, say "[bold type][BigNameDesc of T] [bold type]is ripped from your hands by an invisible force, and in your mind's eye you can see that it has been taken to the 'Trophy Hall'![roman type][line break]";
		now T is in School31;
	progress quest of predicament-quest.

[Central Park]

To decide which number is the concealment of (R - a park room):
	decide on 0.

Park01 is a park room. The printed name of Park01 is "Park". "This area is just open grass. There is nothing to hide behind.". The grid position of Park01 is <8,14,7>. Park01 is east of Predicament04. Park01 is south of Predicament06.
To decide which number is the concealment of (R - Park01):
	decide on -1.
Park02 is a park room. The printed name of Park02 is "Public Toilets". "A small hut houses both male and female toilets. You can go [bold type]down[roman type] to go to the men's toilets or [bold type]up[roman type] to go to the women's toilets. The hut makes it eaiser to not be spotted here.". The grid position of Park02 is <8,15,7>. Park02 is east of Park01. Park02 is south of Predicament07.
To decide which number is the concealment of (R - Park02):
	decide on 5.
Park03 is a park room. The printed name of Park03 is "Upper Lake". "This section of the park is dominated by the lake, which makes it difficult to find anything to hid behind.". The grid position of Park03 is <8,16,7>. Park03 is east of Park02. Park03 is south of Predicament08. Park03 is west of Predicament10.
Park04 is a park room. The printed name of Park04 is "Trees". "There are a few trees here for you to hide behind.". The grid position of Park04 is <8,14,6>. Park04 is east of Predicament03. Park04 is south of Park01.
To decide which number is the concealment of (R - Park04):
	decide on 2.
Park05 is a park room. The printed name of Park05 is "Picnic Spot". "There are a lot of picnic benches here, and absolutely nothing to hide behind.". The grid position of Park05 is <8,15,6>. Park05 is east of Park04. Park05 is south of Park02.
To decide which number is the concealment of (R - Park05):
	decide on -1.
Park06 is a park room. The printed name of Park06 is "Park". "This area is just open grass. There is nothing to hide behind.". The grid position of Park06 is <8,16,6>. Park06 is east of Park05. Park06 is south of Park03. Park06 is west of Predicament11.
To decide which number is the concealment of (R - Park06):
	decide on -1.
Park07 is a park room. The printed name of Park07 is "Trees". "There are a few trees here for you to hide behind.". The grid position of Park07 is <8,14,5>. Park07 is east of Predicament18. Park07 is south of Park04. Park07 is north of Predicament16.
To decide which number is the concealment of (R - Park07):
	decide on 2.
Park08 is a park room. The printed name of Park08 is "Statue". "There's a large statue of an angel here. You can hide behind it pretty well.". The grid position of Park08 is <8,15,5>. Park08 is east of Park07. Park08 is south of Park05. Park08 is north of Predicament15.
To decide which number is the concealment of (R - Park08):
	decide on 4.
Park09 is a park room. The printed name of Park09 is "Tree". "There is a single tree here for you to hide behind.". The grid position of Park09 is <8,16,5>. Park09 is east of Park08. Park09 is south of Park06. Park09 is west of Predicament12. Park09 is north of Predicament14.
To decide which number is the concealment of (R - Park09):
	decide on 1.

Toilet01 is a bossed predicament room. Toilet01 is urinals. The printed name of Toilet01 is "Men's Toilets". Toilet01 is below Park02. The grid position of Toilet01 is <8,15,7>.
Definition: Toilet01 is nonstandard: decide yes.
Toilet02 is a bossed predicament room. Toilet02 is toilets. The printed name of Toilet02 is "Women's Toilets". Toilet02 is above Park02. The grid position of Toilet02 is <8,15,7>.
Definition: Toilet02 is nonstandard: decide yes.

Predicament01, Predicament02, Predicament03, Predicament04, Predicament05, Predicament06, Predicament07, Predicament08, Predicament09, Predicament10, Predicament11, Predicament12, Predicament13, Predicament14, Predicament15, Predicament16, Predicament17, Predicament18, Predicament19, Predicament20, Park01, Park02, Park03, Park04, Park05, Park06, Park07, Park08, Park09, Toilet01, Toilet02 are in the School.

saved-map-zoom is a number that varies.

Report going east when the player is in Predicament03:
	if Predicament11 is not discovered:
		if Predicament19 is not discovered, say "[variable custom style]Wait a minute, I recognise this place, it's my old neighbourhood![roman type][line break]You realise that your old house is just on the other side of this park. Can you make it all the way to the east without being noticed?!";
		now saved-map-zoom is map-zoom;
		now map-zoom is 3;
		set up predicament universe;
		repeat with R running through predicament rooms:
			unless R is Predicament20, now R is discovered;
		[display entire map.]

Report going when the player is in a bathroom predicament room:
	now map-zoom is 1.

Report going when the player is in Park02:
	now map-zoom is 3.

To say speech style of (M - a person):
	say first custom style.

A bystander is a kind of person. A bystander can be uninterested or interested. A bystander can be moved. There is 1 bystander. The printed name of a bystander is "[TQlink of item described]bystander[TQxlink of item described][shortcut-desc][verb-desc of item described]". A bystander has a number called worst-appearance.

To decide which number is the default park pull resistance of (M - a bystander):
	decide on a random number between 1 and 10. [90% of the time they ignore their drive to go to the centre]

To decide which number is the park pull resistance of (M - a bystander):
	decide on the default park pull resistance of M.

Definition: a bystander is strolling if a random number between 1 and 5 > 3.

To compute movement of (M - a bystander):
	now M is moved;
	now neighbour finder is the location of M;
	let A be the best route from the location of M to Park05; [People love going to the centre]
	let R be the park pull resistance of M;
	if A is not a direction or R > 1:
		now R is 3; [We use this to flag that the NPC is no longer choosing to walk towards the central park]
		now A is a random N-viable direction;
	let P be the room A from (the location of M);
	if A is a direction and (M is strolling or R <= 1) and P is not bossed and the number of barriers in P is 0 and the number of barriers in the location of M is 0:
		try M going A.

To decide which number is the awareness of (M - a bystander):
	decide on 8.

To decide which number is the outrage tolerance of (M - a bystander):
	decide on 5.

To decide which number is the cringe tolerance of (M - a bystander):
	decide on 8.

To check perception of (M - a bystander):
	if M is reactive:
		if M is uninterested:
			let R be a random number between 1 and the awareness of M;
			let C be the concealment of the location of the player;
			let P be the stealth of the player;
			if debuginfo > 0, say "[input-style]Bystander perception check: awareness roll (d[awareness of M]) = [R] | [C + P].5 = ([C].5) [location of the player] concealment rating + ([P]) player [if the player is upright]standing[otherwise]kneeling[end if] stealth rating[roman type][line break]";
			if C + P >= R:
				say "[BigNameDesc of M] fails to notice you.";
			otherwise:
				now M is interested;
				compute perception of M;
		otherwise if the worst-appearance of M < the appearance of the player or (diaper quest is 1 and the worst-appearance of M < the cringe appearance of the player):
			compute worsened perception of M;
		if M is interested:
			if the worst-appearance of M < the appearance of the player, now the worst-appearance of M is the appearance of the player;
			if diaper quest is 1 and the worst-appearance of M < the cringe appearance of the player, now the worst-appearance of M is the cringe appearance of the player;

To compute perception of (M - a bystander):
	say "[BigNameDesc of M] notices you! ";
	if diaper quest is 1 and the cringe appearance of the player > the cringe tolerance of M and (the cringe appearance of the player >= the appearance of the player or the appearance of the player <= the outrage tolerance of M):
		compute cringe perception reaction of M;
		say HumiliateReflect (the cringe appearance of the player * 30);
	otherwise if the appearance of the player > the outrage tolerance of M:
		compute lewd perception reaction of M;
		say HumiliateReflect (the appearance of the player * 30);
	otherwise if skirt-tray-vibrator is worn and the cakes-taken of skirt-tray-vibrator < the max-cakes of skirt-tray-vibrator:
		compute cupcake perception of M;
	otherwise:
		compute non-lewd perception reaction of M;
		say moderateHumiliateReflect.

To compute worsened perception of (M - a bystander):
	if diaper quest is 1 and the cringe appearance of the player > the cringe tolerance of M and (the cringe appearance of the player >= the appearance of the player or the appearance of the player <= the outrage tolerance of M):
		say "[BigNameDesc of M] appears even more [one of]shocked by[or]disgusted at[or]unimpressed by[in random order] your appearance! ";
		compute cringe perception reaction of M;
		say HumiliateReflect (the cringe appearance of the player * 30);
	otherwise if the appearance of the player > the outrage tolerance of M:
		say "[BigNameDesc of M] appears even more [one of]shocked by[or]disgusted at[or]unimpressed by[in random order] your appearance! ";
		compute lewd perception reaction of M;
		say HumiliateReflect (the appearance of the player * 30);
	otherwise:
		compute non-lewd worsened perception reaction of M.

To compute lewd perception reaction of (M - a bystander):
	say "[line break][first custom style]'[one of]What the fuck?!'[or]Is [he of the player]...?!'[or]Holy shit! Are you insane?'[or]What the fuck?! Disgusting!'[or]Oh my god!'[or]In public?! How inappropriate!'[or]Why would you come outside like that?!'[or]Ugh! How indecent!'[in random order][roman type][line break]".

To compute cringe perception reaction of (M - a bystander):
	compute lewd perception reaction of M.

To compute non-lewd perception reaction of (M - a bystander):
	say "[big he of M] looks at you strangely but doesn't say anything.".

To compute non-lewd worsened perception reaction of (M - a bystander):
	say "[BigNameDesc of M] frowns at you.".

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

Figure of Reading Bystander is the file "NPCs/School/bystander1.jpg".
Figure of Bench Bystander is the file "NPCs/School/bystander2.jpg".
Figure of Videocall Bystander is the file "NPCs/School/bystander3.jpg".
Figure of Football Bystander is the file "NPCs/School/bystander4.jpg".
Figure of Couple Bystander is the file "NPCs/School/bystander5.jpg".
Figure of Watchful Bystander is the file "NPCs/School/bystander6.jpg".
Figure of Dogwalking Bystander is the file "NPCs/School/bystander7.jpg".
Figure of Idle Bystander is the file "NPCs/School/bystander8.jpg".
Figure of Businesswoman Bystander is the file "NPCs/School/bystander9.jpg".
Figure of Engrossed Bystander is the file "NPCs/School/bystander10.jpg".
Figure of Jogging Bystander is the file "NPCs/School/bystander11.jpg".
Figure of Janitor Bystander is the file "NPCs/School/bystander12.jpg".
Figure of Rich Bystander is the file "NPCs/School/bystander13.jpg".
Figure of Policewoman Bystander is the file "NPCs/School/bystander14.jpg".

To decide which figure-name is the examine-image of (M - a bystander):
	decide on figure of reading bystander.

bench-bystander is a bystander. The printed name of bench-bystander is "[TQlink of item described]man on a bench[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "man", "on a bench" as bench-bystander.
To decide which figure-name is the examine-image of (M - bench-bystander):
	decide on figure of bench bystander.
To decide which number is the awareness of (M - bench-bystander):
	decide on 3.

facetime-bystander is a camera-bystander. The printed name of facetime-bystander is "[TQlink of item described]man in a videocall[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "man", "videocall", "videocaller", "in a videocall" as facetime-bystander.
To decide which figure-name is the examine-image of (M - facetime-bystander):
	decide on figure of videocall bystander.
To decide which number is the awareness of (M - facetime-bystander):
	decide on 4.
To decide which number is the outrage tolerance of (M - facetime-bystander):
	decide on 2.

football-bystander is a bystander. The printed name of football-bystander is "[TQlink of item described]footballer[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "footballer" as football-bystander.
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

watchful-bystander is a bystander. watchful-bystander is female. The printed name of watchful-bystander is "[TQlink of item described]watchful woman[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "watchful", "woman" as watchful-bystander.
To decide which figure-name is the examine-image of (M - watchful-bystander):
	decide on figure of watchful bystander.
To decide which number is the awareness of (M - watchful-bystander):
	decide on 10.
To decide which number is the outrage tolerance of (M - watchful-bystander):
	decide on 2.

dogwalking-bystander is a bystander. dogwalking-bystander is female. The printed name of dogwalking-bystander is "[TQlink of item described]dogwalking woman[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "dogwalking", "dogwalker", "woman" as dogwalking-bystander.
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
	decide on 6.

businesswoman-bystander is a bystander. businesswoman-bystander is female. The printed name of businesswoman-bystander is "[TQlink of item described]businesswoman[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "businesswoman" as businesswoman-bystander.
To decide which figure-name is the examine-image of (M - businesswoman-bystander):
	decide on figure of businesswoman bystander.

engrossed-bystander is a camera-bystander. engrossed-bystander is female. The printed name of engrossed-bystander is "[TQlink of item described]phone-engrossed woman[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "phone-engrossed", "engrossed", "woman" as engrossed-bystander.
To decide which figure-name is the examine-image of (M - engrossed-bystander):
	decide on figure of engrossed bystander.
To decide which number is the awareness of (M - engrossed-bystander):
	decide on 2.
Definition: engrossed-bystander is strolling if a random number between 1 and 4 > 3.
To decide which number is the outrage tolerance of (M - engrossed-bystander):
	decide on 7.

jogging-bystander is a bystander. jogging-bystander is female. The printed name of jogging-bystander is "[TQlink of item described]jogging woman[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "jogging", "jogger", "woman" as jogging-bystander.
To decide which figure-name is the examine-image of (M - jogging-bystander):
	decide on figure of jogging bystander.
Definition: jogging-bystander is strolling: decide yes.
To decide which number is the outrage tolerance of (M - jogging-bystander):
	decide on 8.

janitor-bystander is a bystander. janitor-bystander is female. The printed name of janitor-bystander is "[TQlink of item described]janitor[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "janitor" as janitor-bystander.
To decide which figure-name is the examine-image of (M - janitor-bystander):
	decide on figure of janitor bystander.

rich-bystander is a bystander. The printed name of rich-bystander is "[TQlink of item described]rich man[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "rich", "man" as rich-bystander.
To decide which figure-name is the examine-image of (M - rich-bystander):
	decide on figure of rich bystander.

police-bystander is a bystander. police-bystander is female. The printed name of police-bystander is "[TQlink of item described]policewoman[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "policewoman", "police officer", "cop" as police-bystander.
To decide which figure-name is the examine-image of (M - police-bystander):
	decide on figure of policewoman bystander.

A game universe initialisation rule:
	let N be 1;
	repeat with M running through bystanders:
		now the text-shortcut of M is the substituted form of "bs[N]";
		increase N by 1;
	change the north exit of Predicament20 to School01. [It's a one-way journey]

A time based rule:
	if the player is in an unbossed predicament room or the player is in Predicament02:
		repeat with M running through alive bystanders:
			if M is not moved, compute movement of M;
			now M is not moved;
			check perception of M;
		[display entire map.]

To set up predicament universe:
	repeat with M running through bystanders:
		now M is in a random unbossed predicament room;
		now M is uninterested;
		now the worst-appearance of M is 0;
		if a random number between 1 and 7 is 1 or M is in Predicament03 or M is in Toilet01 or M is in Toilet02, now M is in Park05;
	repeat with R running through unbossed predicament rooms:
		now R is not discovered;
	repeat with E running through eggs:
		if E is in a predicament room, destroy E.

A time based rule (this is the cars come past rule):
	if the player is in an unbossed predicament room:
		if the player is not in a park room and a random number between 1 and 4 is 1:
			say "[bold type]Suddenly, a car [one of]comes driving[or]zooms[or]drives[or]sails[at random] past! [roman type]The driver honks [his of shopkeeper] horn as [he of shopkeeper] spots you!";
			if a random number between 1 and 2 is 1:
				choose a blank row in Table of Published Disgraces;
				now the content entry is the substituted form of "low resoution dashcam footage of [PredicamentActivity of current-predicament]";
				now the published entry is the substituted form of "has been uploaded to www.caughtondashcam.net";
				now the severity entry is the appearance of the player;
				now the popularity entry is 2;
				now the timestamp entry is time-earnings;
				say "[variable custom style][one of]Wait, did he have a dashcam?! Does that count as a recording???[or]Shit, I think I've been caught on a dashcam again![stopping][roman type][line break]";
				strongHumiliate;
			otherwise:
				say strongHumiliateReflect;
			repeat with M running through uninterested bystanders:
				if M is not reactive:
					now neighbour finder is the location of M;
					let A be the best route from the location of M to the location of the player;
					let P be the room A from (the location of M);
					if A is a direction and a random number between 1 and 5 > 3 and the number of barriers in P is 0 and the number of barriers in the location of M is 0, try M going A;
				if M is reactive:
					now M is interested;
					compute perception of M.

A predicament is a kind of thing.
A predicament has a number called times-completed.
A team-predicament is a kind of predicament.
team-predicament-partner is an object that varies.
Definition: a predicament is appropriate: decide no.
Definition: a predicament is eligible if the times-completed of it is 0.
Definition: a team-predicament is eligible if the times-completed of it is 0 and team-predicament-partner is a monster.
To execute (P - a predicament):
	do nothing.

To decide which text is PredicamentActivity of (P - a predicament):
	decide on "you [one of]sneaking through[or]rushing through[in random order] [if the player is in a park room]a public park[otherwise]your neighbourhood[end if]".
current-predicament is an object that varies.

To say PredicamentRewardExplanation:
	say "[one of]HERE YOU CAN EARN TROPHIES WHICH MAY BE USEFUL ASSETS THROUGHOUT THE REST OF YOUR TRAINING. PLEASE NOTE, IT IS RECOMMENDED TO MOVE THROUGH THIS AREA WITH AS MODEST AN APPEARANCE AS POSSIBLE TO AVOID EMBARRASSING ENCOUNTERS WITH YOUR NEIGHBOURS. ALL YOUR ITEMS AND YOUR NEW TROPHY ARE WAITING FOR YOU IN THE DESTINATION LOCATION. PLEASE NOTE[or]ANOTHER TROPHY IS WAITING FOR YOU AT THE DESTINATION LOCATION. PLEASE REMEMBER[stopping]: ALL PHOTOS AND VIDEOS TAKEN ARE UPLOADED TO THE *REAL* INTERNET. YOUR REAL PUBLIC REPUTATION IS AT STAKE. ".
To say PredicamentRewardExplanationReaction:
	say "[one of][line break][variable custom style]How cryptic. [if the player is shameless]So photos of me can get uploaded to the real life Internet? How outrageous... and exciting![otherwise]But one thing is clear: if there's chances of photos of me being uploaded to the real life Internet, then I really must be careful here...[end if][or][stopping]".

simple-sneak-predicament is a predicament.
Figure of simple sneak predicament is the file "Special/Cutscene/cutscene-predicament-diaper-sneak1.jpg".
Definition: simple-sneak-predicament is appropriate if armband is sapphire.
To execute (SSP - simple-sneak-predicament):
	if diaper quest is 1:
		let P be a random pink leotard;
		only destroy P;
		now P is in Predicament01;
		now the raw-magic-modifier of P is 0;
		now P is bland;
		now P is blandness;
		now P is sure;
		now P is identified;
		let P be a random baby booties;
		only destroy P;
		now P is in Predicament01;
		now the raw-magic-modifier of P is 1;
		now P is bland;
		now P is blandness;
		now P is sure;
		now P is identified;
		now P is dexterity-influencing;
		let D be plain-largish-diaper;
		summon D locked;
		now the raw-magic-modifier of D is 0;
		now D is bland;
		now D is blandness;
	otherwise:
		let T be a random sexy exercise bra;
		now the size of T is the largeness of breasts;
		if the size of T > the max size of T, now the size of T is the max size of T;
		if the size of T < the min size of T, now the size of T is the min size of T;
		if the size of T < the largeness of breasts:
			now T is a random white string bikini top;
			now T is confidence;
		if the largeness of breasts <= 1, now T is a random polo shirt;
		only destroy T;
		now T is in Predicament01;
		now the raw-magic-modifier of T is 0;
		now T is bland;
		now T is blandness;
		now T is sure;
		now T is identified;
		let M be a random black sporty microskirt;
		only destroy M;
		now M is in Predicament01;
		now M is sure;
		now M is identified;
		now M is speed;
		now the raw-magic-modifier of M is a random number between 0 and 2;
		now M is bland;
		let C be white-cameltoe briefs;
		if the player is male, now C is pink-kitty-panties;
		only destroy C;
		now C is in Predicament01;
		now C is sure;
		now C is identified;
		now C is blandness;
		now the raw-magic-modifier of C is 0;
		now C is bland;
	now the player is in Predicament01;
	say "You find yourself in a small room, empty except for a wardrobe, a small table and a front door that leads outside. You are completely naked[if diaper quest is 1] except for a [MediumDesc of plain-largish-diaper][end if]. The table has a piece of card on it with the word 'INSTRUCTIONS' on it. You read the instructions:[paragraph break][first custom style]'WELCOME TO EXTRA CREDIT CLASS. [PredicamentRewardExplanation]TO EARN THIS TROPHY, YOU MUST SIMPLY... RETURN HOME.'[PredicamentRewardExplanationReaction][roman type][line break]It looks like your outfit has been decided for you...";
	if diaper quest is 1, cutshow figure of simple sneak predicament.

triple-dildo-predicament is a predicament. The printed name of triple-dildo-predicament is "dildo".
triple-dildo-predicament has a number called pill-timer. The pill-timer of triple-dildo-predicament is -1000.
Definition: triple-dildo-predicament is appropriate if the player is female and the pill-timer of triple-dildo-predicament is -1000 and the rank of the player >= 3.
To decide which number is the girth of (P - triple-dildo-predicament):
	decide on 5.
To say FuckerDesc of (P - triple-dildo-predicament):
	say "the dildo".
To say BigFuckerDesc of (P - triple-dildo-predicament):
	say "The dildo".
Definition: triple-dildo-predicament is insertable: decide yes. [Allows it to cause stimulation]
Figure of triple dildo predicament is the file "Special/Cutscene/cutscene-predicament-triple-dildo1.jpg".
To execute (P - triple-dildo-predicament):
	now the player is in Predicament01;
	display entire map;
	now temporaryYesNoBackground is Figure of triple dildo predicament;
	now the stance of the player is 1;
	let E be a random exercise shorts;
	now E is in Predicament01;
	now E is blessed;
	now E is sure;
	now E is identified;
	now the raw-magic-modifier of E is 1;
	now triple-dildo-predicament is penetrating face;
	now triple-dildo-predicament is penetrating vagina;
	now triple-dildo-predicament is penetrating asshole;
	now the stomach-semen of the player is 0;
	now the stomach-water of the player is 1;
	now refactoryperiod is 0;
	say "[bold type]Suddenly you can feel that your arms are tightly bound behind you, with your hands in fingerless mittens, and there are thick dildos in your throat, pussy and ass! [roman type][line break]A mechanic voice begins to explain your predicament.[line break][first custom style]'THE RULES ARE AS FOLLOWS: THE TANK OF SEMEN IN FRONT OF YOU IS CONNECTED TO YOUR BODY BY THREE TUBES. THE MOUTH AND [caps cunt] TUBES ARE CURRENTLY LOCKED IN PLACE. YOU CAN PUMP SEMEN DOWN YOUR THROAT BY SQUEEZING ON THE DILDO IN YOUR MOUTH. YOU CAN PUMP SEMEN UP YOUR ASSHOLE BY BOUNCING ON THE STUDDED ANAL DILDO ON THE CHAIR BELOW YOU.[paragraph break]'AFTER TWO MINUTES, ANYTHING REMAINING IN THE SEMEN TANK WILL BE DUMPED INTO YOUR FERTILE [caps pussy], AND THE LOCK HOLDING THE EXERCISE SHORTS IN THE CABINET BEHIND YOU WILL ENTER A PERMANENT LOCKED STATE. HOWEVER AS SOON AS THE SEMEN TANK IS EMPTY, ALL THE BONDAGE WILL FALL UNLOCKED AND YOU WILL BE ABLE TO ACCESS THE EXERCISE SHORTS. SO IF YOU CAN EMPTY THE TANK WITHIN TWO MINUTES, YOU WILL HAVE SOMETHING TO WEAR WHEN YOU LEAVE.[paragraph break]'FINALLY, IF YOU DO GET CREAMPIED, THERE IS A MORNING AFTER PILL WAITING FOR YOU IN YOUR HOUSE. BUT IT WILL BE DESTROYED EXACTLY 45 SECONDS AFTER THE TANK EMPTIES.[paragraph break]'GO.'[roman type][line break]";
	say "The analog timer at the base of the semen tank starts ticking down!";
	let T be 120;
	let S be 100;
	while T > 0 and S > 0:
		let A be 0;
		let M be 0;
		say "The tank is [S]% full. There are about [T] seconds left on the timer.[line break]Do you squeeze on the dildo in your mouth?";
		decrease T by 10;
		if the player is consenting:
			now M is 1;
		say "And do you ride the dildo in your [asshole]?";
		if the player is consenting:
			now A is 1;
		if M is 1:
			say "Thick warm [semen] flows straight down your throat.";
			decrease S by 3;
			StomachSemenUp 1;
			if the stomach-semen of the player > 2, PukeUp;
		if A is 1:
			say "You spend the next ten seconds pumping up and down on the dildo. ";
			now sex-hurt-balance is 10; [Each tick of asshole ruining should cause delicateness or fainting chance at maximum soreness]
			if refactoryperiod > 0:
				decrease refactoryperiod by 1;
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
			cool down 1500;
		check for arousal change;
	if S > 0:
		say "[bold type]DING DING DING![roman type][line break]You are held still as the tank dumps [if S > 30]insane amounts of[otherwise if S > 10]huge amounts of[otherwise]the remaining[end if] [semen] into your [vagina]! Meanwhile, a *clunk* lets you know that the cabinet holding the shorts is now permanently locked tight.";
		only destroy E;
		now a random creampie pole trap is inseminating vagina;
		PussyFill S / 3;
		now the pill-timer of triple-dildo-predicament is 10000;
	otherwise:
		now the pill-timer of triple-dildo-predicament is 0; [still don't want this predicament to happen again]
	dislodge triple-dildo-predicament;
	say "Suddenly, in the same moment, all the bondage holding you falls apart at the seams and clatters to the floor. You are able to pull all three dildos out of your body[if S > 0]! You want to expel the [semen] from your [asshole], but surely that'll make you lose time, and [bold type]you only have 45 seconds to race for the morning after pill[end if]![roman type][line break]".

A time based rule (this is the triple dildo punishment pill rule):
	if the pill-timer of triple-dildo-predicament > 0:
		decrease the pill-timer of triple-dildo-predicament by time-seconds;
		if the player is in Predicament20:
			if the pill-timer of triple-dildo-predicament > 99955:
				say "[bold type]You manage to grab the pill before it's dropped down a drain. [roman type]You quickly swallow it!";
				if the pregnancy of the player > 0:
					now the pregnancy of the player is 0;
					say "You feel it immediately working to reverse the effects of the pregnancy.";
				otherwise:
					say "You feel it immediately working to avoid any chance of pregnancy.";
				cancel father material;
			otherwise if the pill-timer of triple-dildo-predicament + time-seconds > 99955:
				say "[bold type]You arrive just in time to watch with [horror the semen addiction of the player] as the morning after pill is released from a metal claw and dropped down a drain! [roman type]You were so close!!!";
			otherwise:
				say "[bold type]When you arrive, you can see an open metal claw above a drainpipe. [roman type]The morning after pill must have been dropped down here when the timer ran out...";
			now the pill-timer of triple-dildo-predicament is 0;
		otherwise if the player is not in a predicament room:
			now the pill-timer of triple-dildo-predicament is 0. [failsafe]

painted-cutoffs-predicament is a predicament.
painted-cutoffs-predicament has a number called predicament-completed.
Definition: painted-cutoffs-predicament is appropriate if the player is female and ((the predicament-completed of painted-cutoffs-predicament is 0 and the rank of the player is 2) or (the predicament-completed of painted-cutoffs-predicament < 3 and the rank of the player is 3)) and the player is able to get horny.
Definition: painted-cutoffs-predicament is eligible if (the times-completed of it is 0 and the rank of the player is 2) or (the times-completed of it < 2 and the rank of the player is 3).
Figure of painted cutoffs predicament is the file "Special/Cutscene/cutscene-painted-cutoffs-predicament1.jpg".
To execute (P - painted-cutoffs-predicament):
	now the player is in Predicament02;
	display entire map;
	now predicament-painted-cutoffs is worn by the player;
	now predicament-painted-cutoffs is sure;
	now predicament-painted-cutoffs is identified;
	now predicament-painted-cutoffs is not hand-blocked;
	now predicament-painted-cutoffs is hand-decided;
	now painted-vibrator-hands is worn by the player;
	now painted-vibrator-hands is sure;
	now painted-vibrator-hands is identified;
	let C be a random pink tube top;
	only destroy C;
	now C is worn by the player;
	now C is sure;
	now C is identified;
	now C is bland;
	now the raw-magic-modifier of C is 0;
	now C is blandness;
	let C be a random satin court heels;
	only destroy C;
	now C is worn by the player;
	now C is sure;
	now C is identified;
	now C is cursed;
	now the quest of C is predicament-quest;
	now the raw-magic-modifier of C is 0;
	now C is blandness;
	now the heel-height of C is 2;
	let C be a random frilly stockings;
	only destroy C;
	now C is worn by the player;
	now C is sure;
	now C is identified;
	now C is bland;
	now the raw-magic-modifier of C is 0;
	now C is blandness;
	now refactoryperiod is 0;
	if the rank of the player < 3:
		now the predicament-completed of painted-cutoffs-predicament is 1;
		say "Suddenly you find yourself standing outside, in an alleyway. Round the corner, the noise of a road and the distant sound of voices can be heard. A robotic voice speaks from a speaker in the wall behind you.[line break][first custom style]'WELCOME TO THE [']EXTRA CREDIT['] CLASS. [PredicamentRewardExplanation]TO EARN THIS TROPHY, YOU MUST SIMPLY... RETURN HOME.[paragraph break]'GO.'[PredicamentRewardExplanationReaction][roman type][paragraph break]Looking down at yourself, you begin to realise the challenge. You're wearing a tight pink tube top which shows your nipples straight through it. Your feet are stuck in white stockings and black court heels. And the only other thing on your body is... [UniqueClothingDesc of predicament-painted-cutoffs][UniqueClothingDesc of painted-vibrator-hands][variable custom style]Holy crap...[roman type][line break]";
	otherwise:
		say "Suddenly you find yourself standing outside, in an alleyway. On the ground, a heavy wooden box holds a stack of ping pong balls. Round the corner, the noise of a road and the distant sound of voices can be heard. A robotic voice speaks from a speaker in the wall behind you.[line break][first custom style]'WELCOME TO THE SUPER FUN ['][if egg laying fetish is 0]PING PONG[otherwise]EGG[end if] TRANSFER CHALLENGE['] EXTRA CREDIT CLASS. [PredicamentRewardExplanation]THE RULES ARE AS FOLLOWS: MOVE ALL TWENTY PING PONG BALLS FROM THIS BOX TO YOUR DRIVEWAY. THE DOOR TO YOUR HOUSE WILL THEN AUTOMATICALLY UNLOCK.[paragraph break]'GO.'[PredicamentRewardExplanationReaction][roman type][paragraph break]Looking down at yourself, you [if the predicament-completed of painted-cutoffs-predicament is not 0]are wearing the same get-up as before, with a tight pink tube top, white stockings and black court heels. [UniqueClothingDesc of predicament-painted-cutoffs][UniqueClothingDesc of painted-vibrator-hands][otherwise]begin to realise the challenge. You're wearing a tight pink tube top which pretty much shows your nipples straight through it. Your feet are stuck in white stockings and black court heels. And the only other thing on your body is... [UniqueClothingDesc of predicament-painted-cutoffs][UniqueClothingDesc of painted-vibrator-hands][variable custom style]Holy crap...[roman type][line break][end if]";
		now the predicament-completed of painted-cutoffs-predicament is 3;
		repeat with N running from 1 to 20:
			let E be a random available small egg;
			now E is in Predicament02.

Check going east when the player is in Predicament19:
	if the predicament-completed of painted-cutoffs-predicament is 3 and the number of small egg in the location of the player < 20, say "The door's locked! You need to get all 20 [ShortDesc of a random small egg]s onto the ground here for it to unlock..." instead.

serving-tray-predicament is a predicament.
Definition: serving-tray-predicament is appropriate if the rank of the player is (2 + diaper quest) and the player is able to get horny.

To decide which text is PredicamentActivity of (P - serving-tray-predicament):
	decide on "you giving out free cupcakes in humiliating attire [if the player is in a park room]a public park[otherwise]your neighbourhood[end if]".

Figure of serving tray predicament 1 is the file "Special/Cutscene/cutscene-predicament-serving-tray1.jpg".
Figure of serving tray predicament 2 is the file "Special/Cutscene/cutscene-predicament-serving-tray2.jpg".
Figure of serving tray predicament 3 is the file "Special/Cutscene/cutscene-predicament-serving-tray3.jpg".
Figure of serving tray predicament 4 is the file "Special/Cutscene/cutscene-predicament-serving-tray4.jpg".
To execute (P - serving-tray-predicament):
	now the player is in Predicament02;
	display entire map;
	let C be a random pink tube top;
	only destroy C;
	now C is worn by the player;
	now C is sure;
	now C is identified;
	now C is bland;
	now the raw-magic-modifier of C is 0;
	now C is blandness;
	let C be a random satin court heels;
	only destroy C;
	now C is worn by the player;
	now C is sure;
	now C is identified;
	now C is cursed;
	now the quest of C is predicament-quest;
	now the raw-magic-modifier of C is 0;
	now C is blandness;
	now the heel-height of C is 2;
	let C be a random frilly stockings;
	only destroy C;
	now C is worn by the player;
	now C is sure;
	now C is identified;
	now C is bland;
	now the raw-magic-modifier of C is 0;
	now C is blandness;
	now refactoryperiod is 0;
	if diaper quest is 1:
		let C be plain-largish-diaper;
		only destroy C;
		now C is worn by the player;
		now C is sure;
		now C is identified;
		now C is bland;
		now the raw-magic-modifier of C is 0;
		now C is blandness;
		now skirt-tray-vibrator is worn by the player;
		now skirt-tray-vibrator is unskirted;
	otherwise:
		now skirt-tray-vibrator is in Predicament02;
	now the stance of the player is 0;
	say "Suddenly you find yourself standing outside, in an alleyway. Round the corner, the noise of a road and the distant sound of voices can be heard. A robotic voice speaks from a speaker in the wall behind you.[line break][first custom style]'WELCOME TO THE [']EXTRA CREDIT['] CLASS. [PredicamentRewardExplanation]THE SKIRT YOU HAVE BEEN PROVIDED COMES WITH A SERVING TRAY. WHENEVER A CAKE IS REMOVED FROM ITS PRESSURE PAD, THE VIBRATOR WILL TURN ON FOR 15 SECONDS. THE INTENSITY OF THE VIBRATION DEPENDS ON HOW MANY CAKES HAVE BEEN TAKEN. IF ALL CAKES ARE REMOVED FROM THEIR PRESSURE PADS, THE VIBRATOR WILL TURN PERMANENTLY ON, STUCK AT MAXIMUM POWER.[paragraph break]'GO.'[PredicamentRewardExplanationReaction][roman type][paragraph break]Looking down at yourself, you begin to realise the challenge. You're wearing a tight pink tube top which shows your nipples straight through it, with the phrase 'FREE SAMPLES' on the front. Your feet are stuck in black court heels. And [if diaper quest is 1 and the player is female]the only other thing on your body is a large white diaper with a subtle hole under your [vagina]. Attached to it and currently in your hands[otherwise if diaper quest is 1]the only other thing on your body is a large white diaper. Attached to it and currently in your hands[otherwise]your bottom half is currently completely naked. On the ground in front of you[end if] is a [skirt-tray-vibrator][paragraph break][ClothingDesc of skirt-tray-vibrator][variable custom style]Holy crap...[roman type][line break]".

maths-sex-predicament is a predicament.
Definition: maths-sex-predicament is appropriate if diaper quest is 0 and the rank of the player >= 3.

A maths-sex-predicament-puzzle is a kind of object. A maths-sex-predicament-puzzle has a text called puzzle-text. A maths-sex-predicament-puzzle has a number called the maths-answer.
There are 5 maths-sex-predicament-puzzle.
To set up (P - a maths-sex-predicament-puzzle) with difficulty (N - a number):
	let X be a random number between 1 and 9;
	let T be the substituted form of "[X]";
	repeat with M running from 0 to N:
		let Y be a random number between -9 and 9;
		if M is N, now Y is (maths-answer of P) - X;
		increase X by Y;
		unless Y is 0:
			if Y > 0, now T is the substituted form of "[T] + [Y]";
			otherwise now T is the substituted form of "[T] - [Y * -1]";
	now the puzzle-text of P is T.

A maths-sex-predicament-punishment is a kind of object.
Definition: a maths-sex-predicament-punishment is appropriate: decide yes.

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
	let A be a random ultimate-lesson-actor;
	say "You hear the [man of A] harrumph in disappointment, before leaving the way [he of A] came.".

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
Definition: condom-vaginal is appropriate if the player is female.
To decide which text is the maths-punishment-description of (M - condom-vaginal):
	decide on "Fuck me in the pussy with a condom, then tie it to my belt".
To maths-execute (M - condom-vaginal):
	let A be a random ultimate-lesson-actor;
	say "You hear the [man of A] exclaim with glee!";
	now A is wrapped;
	compute A entering vagina;
	compute maths-sex.

bareback-vaginal is a maths-sex-predicament-punishment.
Definition: bareback-vaginal is appropriate if the player is female.
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
	let A be a random ultimate-lesson-actor;
	say "You hear the [man of A] chuckle and whip out [his of A] [manly-penis]. It's not long before you hear [him of A] grunting and feel the warmth of [his of A] seed on your [AssDesc]! After that, you hear [him of A] leave the way [he of A] came.";
	squirt semen on hips by 2.

spank-my-butt is a maths-sex-predicament-punishment.
[To decide which text is the maths-punishment-description of (M - spank-my-butt):
	decide on "Spank my ass 3 times or until you hear me thank you properly".
To maths-execute (M - spank-my-butt):
	let A be a random ultimate-lesson-actor;
	say "You hear the [man of A] chuckle. And then... THWACK! A strong blow lands on your rear. You let out an involuntary squeal.[line break]Do you ".]
To decide which text is the maths-punishment-description of (M - spank-my-butt):
	decide on "Spank my ass 3 times".
To maths-execute (M - spank-my-butt):
	let A be a random ultimate-lesson-actor;
	say "You hear the [man of A] chuckle. And then... THWACK! A strong blow lands on your rear. You let out an involuntary squeal.";
	PainUp 1;
	say "And then another. THWACK!";
	PainUp 1;
	say "And finally a third. THWACK! This one stings even more than the other two!";
	PainUp 1;
	say "Satisfied, the [man of A] leaves the way [he of A] came.";

make-me-cum is a maths-sex-predicament-punishment.
To decide which text is the maths-punishment-description of (M - make-me-cum):
	decide on "Force me to cum with the wand vibrator".
To maths-execute (M - make-me-cum):
	let A be a random ultimate-lesson-actor;
	say "You hear the [man of A] switch on the vibrator in question, and press it against your [genitals]. It's so strong! It's not long before your legs are shaking and blood is rushing to your head...";
	passively stimulate vagina from drink-machine times 2;
	check for arousal change;
	vaginally orgasm shamefully;
	say "The [man of A] leaves the way [he of A] came.".

new-ass-tattoo is a maths-sex-predicament-punishment.
Definition: new-ass-tattoo is appropriate if there is a worn tattoo and the number of worn ass tattoo is 0.
To decide which text is the maths-punishment-description of (M - new-ass-tattoo):
	decide on "Write something degrading on my ass with permanent ink".
To maths-execute (M - new-ass-tattoo):
	let A be a random ultimate-lesson-actor;
	say "You hear the [man of A] chuckle and pull the lid off of a permanent marker. And then you feel [him of A] write 'just the tip' on your ass![line break][variable custom style]Really?![roman type][line break]";
	summon just the tip tattoo;
	say "The [man of A] leaves the way [he of A] came, taking the pen with [him of A].".

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
		otherwise:
			render timer image Figure of Timer 5 with background (TQcolour of violet); [violet]
			let W be the current focus window;
			focus the main window;
			say "[bold type]The timer runs out - you've failed to press any button at all![roman type] Press any key to continue.";
			focus W.

To execute (MSP - maths-sex-predicament):
	now Predicament01 is discovered;
	now the player is in Predicament01;
	now team-predicament-partner is in Predicament01;
	say "You find yourself on your hands and knees, stuck in a hole-in-a-wall! The only item of clothing on your entire body is a string belt on your waist. In front of you sits a control panel with five buttons, labelled from 1 to 5.[line break][first custom style]'WELCOME TO THE RUBY [']EXTRA CREDIT['] CLASS. SIX INSTRUCTIONS WILL BE PRESENTED IN FRONT OF YOU. THE OPTION YOU CHOOSE WILL BE DISPLAYED ON THE MONITOR ABOVE YOUR LOWER HALF, AND READ BY THE OBEDIENT INSTRUCTION UNDERTAKER WAITING IN THE ROOM BEHIND YOU. THIS WILL OCCUR FIVE TIMES. APOLOGIES, THE INSTRUCTION NUMBER GENERATOR APPEARS TO BE SLIGHTLY MALFUNCTIONING; NUMBERS ARE DISPLAYED IN THE FORM OF MATHEMATICAL SUMS. THERE IS A STRICT TIME LIMIT FOR EACH INSTRUCTION.[paragraph break]'GO.'[paragraph break][variable custom style]Holy crap...[roman type][line break]";
	now the stance of the player is 1;
	if string-belt is not worn, summon string-belt cursed;
	now the quest of string-belt is predicament-quest;
	let D be game difficulty - 1;
	repeat with N running from 1 to 5:
		let LM be the list of appropriate maths-sex-predicament-punishments;
		sort LM in random order;
		truncate LM to 4 entries;
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
		say "You hear the sound of the door opening and closing, as [one of]a[or]another[stopping] [man of shopkeeper] walks into the room behind you. Six new instructions appear on the panel, and the timer immediately starts ticking down! Are you ready to see the options? (The timer will start when you press yes).";
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
			let CLTR be the chosen letter - 48;
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
		say "[if maths-timer <= 0][bold type][end if]Timeout: 'Do what you like.'[roman type][line break]The instruction in bold has just been sent to the screen above your exposed ass, and is now being read by the [man of shopkeeper] who has been waiting there for [his of shopkeeper] instruction.";
		reset the Glulx timer;
		if maths-timer > 0:
			now maths-timer is 0;
			let M be entry ELM of LM;
			maths-execute M;
			if M is leave-me-alone, increase D by 1;
		otherwise:
			let M be condom-anal;
			if the player is female and pregnancy fetish is 1, now M is bareback-vaginal;
			maths-execute M;
	let PMM be a random pink minimalist monokini;
	now the raw-magic-modifier of PMM is 0;
	now PMM is bland;
	now PMM is blandness;
	now PMM is in the location of the player;
	say "[line break][bold type]The hole-in-the-wall widens, releasing you and allowing you to leave at any time via the door. [roman type]On the ground, you have been left an outfit to return home in: [line break]";
	try examining PMM;
	compute autotaking PMM.

team-enema-predicament is a team-predicament.
Definition: team-enema-predicament is appropriate if the rank of the player >= 4 and diaper quest is 0.
Figure of team enema predicament is the file "Special/Cutscene/cutscene-predicament-team-enema1.jpg".

To execute (TEP - team-enema-predicament):
	let SGO be a random cheeky schoolgirl outfit;
	now SGO is in Predicament01;
	now Predicament01 is discovered;
	now the player is in Predicament01;
	now temporaryYesNoBackground is Figure of team enema predicament;
	let M be team-predicament-partner;
	only destroy SGO;
	say "Your stomach gurgles horribly. You look around... you're in a very small room, with... what the hell?! [BigNameDesc of M] is bound on [his of M] back on top of a bench, completely unable to move thanks to wrist and thigh binds. You're both naked. Underneath the grated floor below your feet is what appears to be two sets of clothes. A ring gag in [NameDesc of M][']s mouth keeps it wide and open, pointing towards the ceiling. A robotic voice speaks over some kind of tannoy.[line break][first custom style]'WELCOME TO THE PINK DIAMOND [']EXTRA CREDIT['] CLASS. BOTH YOUR BELLIES HAVE BEEN FILLED WITH A VOLUMOUS SEMEN ENEMA. IN FIVE MINUTES THE DOOR AND YOUR BONDAGE WILL UNLOCK, AND THE CLOTHES BENEATH THE GROUND WILL BE RELEASED. YOUR BELLIES [if watersports fetish is 1]AND BLADDERS [end if]WILL NEED TO BE HELD, OR... OTHERWISE INGESTED... TO PREVENT YOUR CLOTHES FROM BECOMING SOILED.[paragraph break]'GOOD LUCK. YOUR TIME STARTS NOW.'[paragraph break][variable custom style]Uh-oh...[roman type][line break]";
	let T be 300;
	now the semen volume of belly is 30;
	if watersports fetish is 1 and the bladder of the player < 6, now the bladder of the player is 6;
	let SB be 10;
	let BL be 0;
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
					say "[BigNameDesc of M] moans and tries to shake [his of M] head but to no avail. There's nothing [he of M] can do as you squat over [his of M] face and begin to expel a powerful jet stream of asscum into [his of M] wide open mouth. You can hear [him of M] gagging but [he of M] does [his of M] best to swallow it all, gulp after gulp, although you're not sure how much of it is because [he of M] agrees it's the best course of action, and how much of it is because [he of M] needs to swallow it in order to be able to breathe properly.[line break]It takes a number of long painful seconds before the flow of [semen] from your [asshole] begins to peter out, and eventually stops. By the time you're done, you've just force-fed [NameDesc of M] what must be over a litre of thick warm anal creampie.";
					FavourDown M by 3;
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
		increase SB by 1;
		repeat with LX running from 1 to 2:
			let L be semen;
			let LN be SB;
			if LX is 2:
				now L is urine;
				now LN is BL;
			if LN > a random number between 6 and 20:
				say "[BigNameDesc of M] wriggles and lets out a panicked 'Eeee!'. You can tell [he of M][']s about to [if L is urine]piss [himself of M][otherwise]expel [his of M] [semen] enema[end if]. There's only one thing you could do to prevent the [variable L] flowing onto the clothing below your feet - you'd have to take it into your mouth. Do you ready your mouth in front of [NameDesc of M][']s crotch? ";
				let WL be 0;
				let ML be 0;
				if the player is consenting:
					say "[BigNameDesc of M] sighs with relief as [he of M] hears you collecting [his of M] [variable L] into your mouth rather than letting it soil your outfits.";
					decrease LN by 6;
					while LN > a random number between 0 and 6:
						say "Your mouth is full, but [NameDesc of M][']s flow keeps going! Do you swallow the mouthful of [variable L]? (If you don't, the urine will overflow onto your clothes...) ";
						if the player is consenting:
							say "You shudder with shame as you gulp down the bitter liquid to make space for more in your mouth.";
							if L is urine:
								UrineTasteAddictUp 1;
								StomachUp 3;
							otherwise:
								StomachSemenUp 3;
								decrease LN by 6;
						otherwise:
							now WL is 1;
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
						FavourDown M by 2;
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
	if diaper quest is 0 and the player is male and the size of penis is 0, decide no;
	decide yes.

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
		say "You are squatting above [NameDesc of ST][']s face, the seat your new large white diaper resting on [his of ST] nose and forehead. You would get up but you are both stuck in bondage - ankle spreaders keep your feet a fixed distance apart and large metal cuffs around your thighs are connected to [NameDesc of ST][']s wristcuffs, so that each of [his of ST] hands is stuck right next to your thighs, with nothing to hold onto except the rear of your diaper.[paragraph break]Your [if rectum >= 30 and asshole is not actually occupied]bowels are[otherwise]bladder has[end if] somehow filled to the point where it's actually painful![line break][variable custom style]'Ow ow ow[one of]! What the hell is going on?!'[or]!'[stopping][roman type][line break]";
	otherwise:
		if the player is female and the number of worn clitoris piercing is 0:
			say "You realise you now have a cold metal clitoris piercing. ";
			summon normal clit piercing;
		otherwise if the player is male:
			say "You realise you have a metal ring clamped around the top of your scrotum. It feels weird, and you certainly won't be able to get it off past your balls any time soon. ";
		say "It is somehow stuck attached to a tongue piercing, which in turn is... pierced in [ST][']s mouth.[line break][variable custom style]Uh-oh.[roman type][line break]Yes, that's right, you're on all fours, with [NameDesc of ST] stuck behind you and [his of ST] tongue forced to stretch out as if waiting for a serving from your [asshole]. Your belly gurgles again, and you realise that your innards are indeed completely, painfully full of something goopy and nasty...";
		if watersports fetish is 1, increase the urine volume of belly by 25; [We don't use the AssFull function because we don't want to allow the overflow function]
		if the total fill of belly < belly limit, AssFill (belly limit - total fill of belly);
	say "[first custom style]'WELCOME TO THE RUBY [']EXTRA CREDIT['] CLASS. THERE ARE 60 SECONDS IN BETWEEN QUESTIONS. ANSWER TWO QUESTIONS IN A ROW CORRECTLY TO HAVE YOUR [if diaper quest is 1]BONDAGE[otherwise]PIERCINGS[end if] RELEASED. ANSWER THREE QUESTIONS IN A ROW CORRECTLY TO HAVE THE PROVOCACTIVE OUTFITS RELEASED. ANSWER FOUR QUESTIONS IN A ROW CORRECTLY TO HAVE THE COCKTAIL DRESSES RELEASED. THE GAME ENDS AFTER TWO INCORRECT ANSWERS OR WHEN THE DOOR IS OPENED. REWARDS ARE ONLY DISTRIBUTED AFTER QUESTIONS END.'[paragraph break]'GOOD LUCK. YOUR TIME STARTS NOW.'[paragraph break][variable custom style]Uh-oh...[roman type][line break][BigNameDesc of ST] squeals with anxiety from below you.[line break][speech style of ST]'What?! Oh no! [if ST is nasty student]Don't you dare[otherwise][big please] don't[end if] [if diaper quest is 1]go[otherwise]squirt that disgusting stuff out[end if] on my face, [NameBimbo]...'[roman type][line break][BigNameDesc of ST] does not sound amused at all!";
	repeat with Q running through team-quiz-predicament-questions:
		reset Q.

A time based rule (this is the team quiz predicament time rule):
	if current-predicament is team-quiz-predicament:
		if the player is in Predicament01 and the questionFails of team-quiz-predicament < 2 and currently-squirting is 0:
			let L be team-quiz-predicament;
			compute quizQuestion of L;
			if the questionFails of L < 2 and questionExpelled of L is 0:
				say "The screens all around you display the same words, followed by [first custom style]'next question in 59 secs...'[roman type][line break]The minute passes by so painfully slowly! You feel your [if diaper quest is 1 and (diaper messing < 7 or asshole is actually occupied)]bladder[otherwise]sphincter[end if] beg to allow itself to be loosened. You know that if you resist, [if diaper quest is 1]you'll end up a little more incontinent[otherwise]it'll hurt[end if]. Do you hold it in?";
				if the player is consenting:
					say "You hold on with everything that you've got.";
					if diaper quest is 1:
						increase incontinence by 1;
						if the incontinence of the player >= the max-incontinence of the player:
							say "But it's no use! ";
							now questionExpelled of L is 1;
					otherwise:
						PainUp 1;
				otherwise:
					now questionExpelled of L is 1;
				if questionExpelled of L is 1:
					now questionExpelled of L is 2;
					if diaper quest is 1:
						compute quiz partner messing;
					otherwise:
						AssSquirt.

Check going north when current-predicament is team-quiz-predicament:
	if the questionFails of team-quiz-predicament < 2 and the player is in Predicament01:
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
			say "correct!'[line break][variable custom style][one of]Phew[or]Yes[or]Nice[at random]! That's [if questionWins of L > 1][questionWins of L] in a row[otherwise]one[end if]...[roman type][line break]";
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
			let N be a random backless negligee;
			only destroy N;
			now N is bland;
			now N is blandness;
			now the raw-magic-modifier of N is 0;
			now N is in the location of the player;
			say "Two naughty bedroom outfits fall from a container attached to the ceiling!";
			say FullExamineDesc of N;
			if maxQuestionWins of L > 3:
				let N be a random white slut clubbing dress;
				only destroy N;
				now N is bland;
				now N is blandness;
				now the raw-magic-modifier of N is 0;
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
	say "Which candy machine have you most recently used?";
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

Predicament World ends here.
