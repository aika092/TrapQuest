Predicament World by Rooms begins here.

A predicament room is a kind of room. An outside predicament room is a kind of predicament room. A park room is a kind of outside predicament room. The printed name of a park room is "Park". The description of a park room is "This area is just open grass. There is nothing to hide behind.". A road room is a kind of outside predicament room. The printed name of a road room is "Main Road".
Definition: a predicament room is unwalled: decide yes.
To decide which number is the concealment of (R - a predicament room):
	decide on -1.

Definition: a predicament room (called R) is within vision:
	if R is the location of the player, decide yes;
	if R is Predicament03 and the player is in Predicament02, decide yes;
	if current-predicament is vibe-photo-predicament and the predicament-progression of vibe-photo-predicament > 0 and the player is in Predicament01, decide yes;
	if current-predicament is snitch-predicament and R is Predicament02 and the player is in Predicament01, decide yes;
	if the player is in Toilet01 or the player is in Toilet02 or the player is in Predicament01 or the player is in Predicament02, decide no;
	decide yes.

A predicament room has a labyrinth shape called shape. The shape of a predicament room is usually L8/0-0-1-1-1-1. The grid position of a predicament room is usually <0,0,0>.
A predicament room is usually pinned.[These rooms are always in the same place.]

Predicament01 is a predicament room. Predicament01 is discovered. The printed name of Predicament01 is "Abandoned Warehouse". The shape of Predicament01 is L8/0-0-1-0-0-0. The grid position of Predicament01 is <8,12,5>. Predicament01 is bossed.
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
Predicament15 is a road room. The shape of Predicament15 is L8/0-0-0-1-1-1. The grid position of Predicament15 is <8,20,7>. Predicament15 is east of Predicament14.
Predicament16 is a road room. The shape of Predicament16 is L8/0-0-1-1-1-1. The grid position of Predicament16 is <8,20,6>. Predicament16 is south of Predicament15.
Predicament17 is a road room. The grid position of Predicament17 is <8,20,5>. Predicament17 is south of Predicament16.
Predicament18 is a road room. The shape of Predicament18 is L8/0-0-1-1-0-1. The grid position of Predicament18 is <8,20,4>. Predicament18 is south of Predicament17.

[Home]

Predicament19 is a predicament room. The printed name of Predicament19 is "Driveway". "The entrance to your house is right in front of you. Thank goodness!". The shape of Predicament19 is L8/0-0-1-1-1-1. The grid position of Predicament19 is <8,21,5>. Predicament19 is east of Predicament17.
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
			unless the player is consenting, say "Action cancelled." instead;
	let TT be the number of portable things in the location of the player - the number of trophies in the location of the player;
	if debugmode > 0, say "Portables: [list of portable things in the location of the player].";
	if TT > 1: [1 being the player themselves]
		say "YOU APPEAR TO HAVE LEFT SOME STUFF ON THE FLOOR HERE. It will be sent to the pink wardrobe if you don't pick it up now. Are you sure you want to leave? ";
		if the player is consenting:
			repeat with T running through portable things in the location of the player:
				if T is not trophy and T is not a person, WardrobeVanish T;
		otherwise:
			say "Action cancelled." instead.

Check going west when the player is in Predicament20:
	say "The door seems to have locked itself behind you. The only way out is [bold type]north[roman type] through the portal." instead.

Report going north when the player is in School01:
	if armband is worn and armband is solid gold, now predicamentJustDone is false;
	now map-zoom is saved-map-zoom;
	clean up predicament universe;
	repeat with T running through on-stage trophies:
		if T is held, say "[bold type][BigNameDesc of T] [bold type]is ripped from your hands by an invisible force, and in your mind's eye you can see that it has been taken to the 'Trophy Hall'![roman type][line break]";
		now T is in School31;
	if the player is wrist bound behind:
		repeat with T running through things in Predicament20:
			WardrobeVanish T;
	repeat with R running through predicament rooms:
		repeat with T running through things in R:
			unless T is backdrop or T is male-gloryhole or T is female-gloryhole or T is automated changing station, destroy T;
	if the stomach-liquid of the player < 3, now the stomach-water of the player is 3 - the stomach-liquid of the player;
	if the player is hungry, now the stomach-food of the player is 2;
	if the predicament-completed of painted-cutoffs-predicament is 3, now the predicament-completed of painted-cutoffs-predicament is 4; [otherwise in future predicaments the door will still be locked!]
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

[Driveways]

Predicament33 is a predicament room. The printed name of Predicament33 is "Path". The shape of Predicament33 is L8/0-0-0-0-1-1. The grid position of Predicament33 is <8,21,7>. Predicament33 is east of Predicament15.
Predicament34 is a predicament room. The printed name of Predicament34 is "Path". The shape of Predicament34 is L8/0-0-1-0-1-1. The grid position of Predicament34 is <8,21,6>. Predicament34 is east of Predicament16. Predicament34 is south of Predicament33. Predicament34 is north of Predicament19.
Predicament35 is a predicament room. The printed name of Predicament35 is "Path". The shape of Predicament35 is L8/0-0-1-0-0-1. The grid position of Predicament35 is <8,21,4>. Predicament35 is east of Predicament18. Predicament35 is south of Predicament19.

[Central Park]

To decide which number is the concealment of (R - a park room):
	decide on 0.

Park01 is a park room. The grid position of Park01 is <8,16,8>. Park01 is east of Predicament07. Park01 is south of Predicament09.
Park02 is a park room. The printed name of Park02 is "Public Toilets". "A small hut houses both male and female toilets. The hut makes it much easier to not be spotted here.". The grid position of Park02 is <8,17,8>. Park02 is east of Park01. Park02 is south of Predicament10. Park02 is west of Predicament12.
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

Toilet01 is a predicament room. Toilet01 is toilets. The printed name of Toilet01 is "Men's Toilets". Toilet01 is below Park02. The grid position of Toilet01 is <7,17,8>.
Definition: Toilet01 is nonstandard: decide yes.
Toilet02 is a predicament room. Toilet02 is toilets. The printed name of Toilet02 is "Women's Toilets". Toilet02 is above Park02. The grid position of Toilet02 is <9,17,8>.
Definition: Toilet02 is nonstandard: decide yes.

chose-to-go-up is initially false.

Check going down when the player is in Park02:
	if current-predicament is gloryhole-predicament and the cocks-sucked of gloryhole-predicament < 5 and the mens-room-entered of gloryhole-predicament is 0:
		say "Remember, [bold type]you'll be punished if you go into the men's room before you've finished sucking enough cocks.[roman type][line break]";
	otherwise if current-predicament is business-briefcase-predicament and business-briefcase-predicament is orgasm-caught and diaper quest is 0:
		say "Remember, [bold type]the video will be automatically shared online if you go into the men's room.[roman type][line break]";
	reset multiple choice questions;
	set numerical response 1 to "Go into the men's room";
	set numerical response 2 to "Go into the women's room";
	compute multiple choice question;
	let L be Toilet01;
	if player-numerical-response is 2:
		now L is Toilet02;
		now chose-to-go-up is true;
		now the noun is up;
	let P be a random person in L;
	if P is a person:
		allocate 2 seconds;
		say "You try the door, but it's locked. Someone's in there!" instead.

Check going up when the player is in Park02:
	if chose-to-go-up is true:
		now chose-to-go-up is false; [we let it happen this one time]
	otherwise:
		try going down instead.

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
	if the player is pee protected, say "You would need to remove your [random pee covering clothing] first." instead;
	allocate 1 seconds;
	say "You insert your [player-penis] but nothing happens. There must be nobody on the other side, or at least nobody interested in your [player-penis]." instead.

female-gloryhole is a thing. female-gloryhole is not portable. The printed name of female-gloryhole is "[TQlink of item described]gloryhole[TQxlink of item described][if inline hyperlinks >= 2][link][bracket]knock[close bracket][as]knock on [text-shortcut of item described][end link][end if]". The text-shortcut of female-gloryhole is "gl". Understand "gloryhole", "wall" as female-gloryhole.
Figure of female gloryhole is the file "Env/School/gloryhole2.jpg".
Figure of female gloryhole key scene is the file "Env/School/gloryhole4.jpg".
To decide which figure-name is the examine-image of (G - female-gloryhole):
	if current-predicament is gloryhole-key-predicament, decide on figure of female gloryhole key scene;
	decide on figure of female gloryhole.
To say ExamineDesc of (G - female-gloryhole):
	say "The west wall of the public toilets has a hole in the wall, the perfect size to fit a [manly-penis] through. The men's toilets are on the other side. ";
	if current-predicament is gloryhole-key-predicament, say line break;
	otherwise say "There's some impressive wall art of a very hunky fireman, positioned so that the hole is where his penis should be. Several empowering quips have been scrawled over the walls, including 'Be Who You Want To Be' and 'You Are Beautiful No Matter What They Say!'[line break][if the player is not a pervert][first custom style]How... modern.[otherwise][variable custom style]Yeah! Girl power![end if][roman type][line break]Writing to the bottom right hand side of the gloryhole instructs a willing lady to 'Knock for Cock'.".
Check climbing female-gloryhole:
	try entering female-gloryhole instead.
Check entering female-gloryhole:
	if the player is not possessing a penis, say "You don't have a penis." instead;
	if the player is prone, say "You would need to be standing up." instead;
	if the player is pee protected, say "You would need to remove your [random pee covering clothing] first." instead;
	allocate 1 seconds;
	say "You insert your [player-penis] but nothing happens. There must be nobody on the other side, or at least nobody interested in your [player-penis]." instead.
To construct normal buttons for (D - female-gloryhole):
	if ButtonTableFull is 0:
		choose a blank row in the Table of Buttons;
		now the ButtonColour entry is lightModeFullGreen;
		now the ButtonImage entry is figure of SlapButton;
		now the ButtonCommand entry is "knock on [text-shortcut of D]";
		if the player is immobile, now the ButtonColour entry is lightModeFullRed. [turn red - player immobile]

Before doing something to an ultimate-lesson-actor when the player is in a predicament room:
	if the current action is not talking the noun and the current action is not examining the noun, say "You can't reach through the hole." instead.

Check attacking female-gloryhole:
	if the player is immobile, say "Aren't you a bit busy?" instead;
	allocate 1 seconds;
	say "You knock on the wall next to the gloryhole.";
	let M be a random ultimate-lesson-actor in the location of the player;
	if M is monster:
		now the sex-length of M is a random number between 2 and 6;
		let OT be a random number between 1 and 5;
		if the total volume of face > 0, now OT is a random number between 0 and 3; [higher chance of finding someone who is willing to accept just a noise]
		let T be OT;
		let TX be T + a random number between -1 and 1;
		if current-predicament is business-briefcase-predicament and house-key is in Toilet01:
			say "The [man of M] on the other side of the wall seems intrigued.[line break][speech style of M]'Oh, is somebody there?'[paragraph break][variable custom style]'Please, there's a house key in there which I desperately need. Would you pass it through the hole?'[line break][speech style of M]'Ah yes, here it is. Here you go, stranger.'[roman type][line break][big he of M] passes the key through the hole, without asking for anything in return![line break][speech style of M]'Oh, that's weird, when I did that, a business card fell down from the ceiling. What's this? A picture of someone's face, and a QR code?'[line break][variable custom style]'Wait, wait, I need that too!'[roman type][line break]You squeal urgently.[line break][speech style of M]'Yeah I guessed... Someone has written something on it, that says [']Make [him of the player] work for it.['] Hmm...'[line break][variable custom style]'Please, please, just pass it to me!'[roman type][line break]";
			now house-key is carried by the player;
			if the player is getting lucky:
				say "[speech style of M]'Fine, since you asked so nicely.'[roman type][line break][BigFuckerDesc of M] passes it to you without demanding anything in return! [GotLuckyFlav]";
			otherwise:
				now M is wrapped;
				say "[speech style of M]'How about.... I'll give it to you... After you suck my [manly-penis]!'[roman type][line break]Moments later, a [manly-penis] appears through the hole. There is a condom on [his of M] [manly-penis].";
				reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
				set numerical response 1 to "'Ugh, fine, you asshole!'";
				set numerical response 2 to "'Please, mercy!'";
				compute multiple choice question;
				if player-numerical-response is 1:
					say "You angrily consent to the blowjob, and get to work.";
					calm M;
					interest M;
					now M is penetrating face;
					now M is friendly-fucking;
					now the stance of the player is 1;
					set up sex length of M in face;
				otherwise:
					if the player is getting lucky:
						say "[speech style of M]'Haha, okay fine, I'm not going to force you! Here you go.'[roman type][line break][big he of M] passes the key through the hole. [GotLuckyFlav]";
						now house-key is in Toilet02;
						compute autotaking house-key;
					otherwise:
						say "[BigFuckerDesc of M] growls with anger.[line break][speech style of M]'You don't seem to understand who's in charge here, bitch. For that, I'm removing the condom.'[roman type][line break][BigFuckerDesc of M] takes the condom off of his [manly-penis].[line break][speech style of M]'Now, I'm going to keep this card, and find out where this QR code leads, unless you do exactly what I say. ";
						now M is not wrapped;
						if a random number between 0 and a2m fetish is 0:
							say "You're going to give me the best fucking blowjob I've ever had, understand?!'[roman type][line break]";
							reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
							set numerical response 1 to "'Okay okay, I'll do it!'";
							set numerical response 2 to "'I'm not going to do that, you pig!'";
							compute multiple choice question;
							if player-numerical-response is 1:
								say "You whimper and consent to the blowjob, and get to work.";
								calm M;
								interest M;
								now M is penetrating face;
								now M is friendly-fucking;
								now the stance of the player is 1;
								set up sex length of M in face;
							otherwise:
								say "[speech style of M]'Fine, have it your way.'[roman type][line break]";
								make video go gloryhole viral;
						otherwise:
							say "You're going to go ass-to-mouth on me, you understand? In your ass, then your mouth, then your ass again, over and over until I'm satisfied!'[roman type][line break]";
							if there is worn glued knickers:
								say "[variable custom style]'That's... Actually not going to be possible... I can't access my asshole right now...'[roman type][line break]You admit delicately.[line break][speech style of M]'That's hardly my problem.'[roman type][line break]";
								make video go gloryhole viral;
							otherwise:
								reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
								set numerical response 1 to "'Okay okay, I'll do it!'";
								set numerical response 2 to "'I'm not going go ass-to-mouth on your gross dick, you pig!'";
								compute multiple choice question;
								if player-numerical-response is 1:
									say "Frustrated with yourself for not just agreeing to the blowjob, you whimper and consent to the disgusting, degrading act, and get to work, first turning around and easing the [manly-penis] into your butthole.";
									calm M;
									interest M;
									now M is penetrating asshole;
									now M is friendly-fucking;
									now business-briefcase-predicament is ass-to-mouth-agreed;
									now the stance of the player is 1;
									ruin asshole;
								otherwise:
									say "[speech style of M]'Fine, have it your way.'[roman type][line break]";
									make video go gloryhole viral;
		otherwise:
			say "The [man of M] on the other side of the wall [if TX <= 1]seems intrigued.[line break][speech style of M]'Oh, is somebody hungry?'[otherwise if TX is 2]seems curious.[line break][speech style of M]'Oh, is somebody there?'[otherwise if TX is 3]seems cautious.[line break][speech style of M]'Who's there?'[otherwise if TX is 4]seems hesitant.[line break][speech style of M]'You're not a dude, are you?'[otherwise]seems reluctant.[line break][speech style of M]'This can't be for real...'[end if][roman type][line break]";
			if current-predicament is gloryhole-predicament, say "What will you do? Remember, the more outrageous your performance, the more humiliating the video that is being published on the Internet will be.";
			reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
			if the player is silently able to manually speak:
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
				if the player is able to speak, say "You whisper quietly through the hole.[line break][variable custom style]'[one of]Psst. Hi.'[or]Hello?'[or]Hey, over here...'[in random order][roman type][line break]";
				otherwise say "You make an [variable custom style]'Mhmm'[roman type] sound.";
			otherwise if player-numerical-response is 2:
				say "You try to make your tone of voice as friendly and feminine as possible.[line break][variable custom style]'Hey there, [stud of M]...'[roman type][line break][slightHumiliateReflect]";
			otherwise if player-numerical-response is 3:
				say "You try to keep your voice from wavering as you make the proposition.[line break][variable custom style]'[one of]I'm here to give you a blowjob!'[or]Want a BJ?'[or]Come on, you know what this is for. Let me suck you off!'[in random order][roman type][line break][moderateHumiliateReflect]";
			otherwise if player-numerical-response is 4:
				say "You try to keep your voice soft and submissive.[line break][variable custom style]'[one of]Please could I give you a blowjob?'[or]Will you please let me suck you off?'[or]I'm here to make you cum, if you'll allow me...'[in random order][roman type][line break][strongHumiliateReflect]";
			otherwise if player-numerical-response is 5:
				say "You make your voice as high pitched and girly as possible.[line break][variable custom style]'Please [stud of M], [one of]can I please taste your yummy [manly-penis]?'[or]I'm desperate to suck on your big [manly-penis] and drink your cum...'[or]I'm a [manly-penis]-addicted slut and I just really need your [manly-penis] straight away! Pleeeease let me taste it!'[in random order][roman type][line break][severeHumiliateReflect]";
			if T <= 0:
				if current-predicament is not nun-walk-predicament and a random number between 1 and 2 is 1, now M is wrapped;
				otherwise now M is unwrapped;
				say "[if OT > 0]You can hear [NameDesc of M] [one of]breathing heavily[or]almost tripping over [himself of M] as [he of M] drops [his of M] pants[or]rushing to comply[or]making excited sounds[in random order].[line break][speech style of M]'[one of]Today must be my lucky day[or]Oh yeah[or]Stay right there[in random order]...'[roman type][line break][end if]Moments later, a [manly-penis] appears through the hole! There is [if M is unwrapped][bold type]not[roman type] [end if]a condom on [his of M] [manly-penis].";
				say "Suck the [manly-penis]?";
				if the player is consenting:
					if mens-room-entered of gloryhole-predicament is 1 and current-predicament is gloryhole-predicament, now mens-room-entered of gloryhole-predicament is 2; [the player has entered the men's room, and returned to suck more cock. penalty point!]
					say "You [if the player is upright]get on your knees and [end if]accept the [manly-penis] into your mouth[if current-predicament is gloryhole-predicament], acutely aware of the CCTV camera recording everything[end if].[line break][speech style of M]'[one of]Woah, this is really happening!'[or]Wow, what a slut.'[or]Good girl.'[or]Yes!'[cycling][roman type][line break]";
					now the stance of the player is 1;
					if id-poster is in Toilet01 and a random number between 1 and 2 is 1:
						say "You hear a [bold type]BEEP[roman type] that sounds like [he of M][']s started a recording on [his of M] phone.";
						if the number of blank rows in the Table of Published Disgraces > 0:
							choose a blank row in Table of Published Disgraces;
							now the content entry is the substituted form of "video footage of a [man of male-m][']s [manly-penis] being sucked through a gloryhole, with a poster above the hole showing your face and all your personal details,";
							now the published entry is the substituted form of "has been uploaded to www.youpron.com";
							now the severity entry is 6;
							now the popularity entry is 7;
							now the timestamp entry is time-earnings;
							now the lastwitnessed entry is 0;
							now the deletedtime entry is -1;
							now the viewsfuzz entry is a random number between -100 and 100;
					calm M;
					interest M;
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


The park-lake is a water-body-scenery. the park-lake is not portable. The printed name of park-lake is "[TQlink of item described]lake[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of park-lake is "lake". park-lake is in Park11.
To decide which figure-name is the examine-image of (C - park-lake):
	decide on Figure of park lake.

Figure of park lake is the file "Env/School/lake1.jpg".

To say ExamineDesc of (H - park-lake):
	say "This is a large pond, or small lake, depending on your preferred terminology. It looks cold.".

lake-swimming is initially false.

To compute swimming in (H - park-lake):
	now lake-swimming is true;
	let swim-turns be 0;
	allocate 6 seconds;
	while lake-swimming is true and the player is in the location of park-lake:
		update appearance level;
		if swim-turns is 0 and water-peeing is false:
			say "You slip into the lake and allow yourself to sink in all the way up to your neck.";
		compute bathing;
		increase swim-turns by 1;
		reset multiple choice questions;
		set numerical response 1 to "Stay in the water";
		set numerical response 2 to "Get out of the water";
		compute multiple choice question;
		if player-numerical-response is 1:
			say "You remain hidden in the lake.";
			compute extra turn;
		otherwise:
			say "You get out of the water.";
			now lake-swimming is false;
	if seconds > 0, increase seconds by swim-turns * 3;
	display entire map.

Predicament01, Predicament02, Predicament03, Predicament04, Predicament05, Predicament06, Predicament07, Predicament08, Predicament09, Predicament10, Predicament11, Predicament12, Predicament13, Predicament14, Predicament15, Predicament16, Predicament17, Predicament18, Predicament19, Predicament20, Predicament21, Predicament22, Predicament23, Predicament24, Predicament25, Predicament26, Predicament27, Predicament28, Predicament29, Predicament30, Predicament31, Predicament32, Predicament33, Predicament34, Predicament35, Park01, Park02, Park03, Park04, Park05, Park06, Park07, Park08, Park09, Park10, Park11, Park12, Park13, Park14, Park15, Park16, Park17, Park18, Park19, Park20, Park21, Park22, Park23, Park24, Toilet01, Toilet02 are in the School.

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
	if Predicament17 is not discovered:
		set up tokens for current-predicament;
		set up bystanders for current-predicament.

Report going east when the player is in Predicament03:
	set up predicament universe;
	compute predicament map reveal.

Report going down when the player is in Park02:
	compute predicament map reveal.

To compute predicament map reveal:
	if Predicament17 is not discovered: [This means that the map has been darkened so yes we need to brighten it again]
		say "[one of][variable custom style]Wait a minute, I recognise this place, it's my old neighbourhood![roman type][line break]You realise that your old house is just on the other side of this park. Can you make it all the way to the east without being noticed?![or][stopping]";
		now saved-map-zoom is map-zoom;
		now map-zoom is 3;
		repeat with R running through predicament rooms:
			unless R is Predicament20, now R is discovered;
		if current-predicament is gloryhole-key-predicament: [two women are in the queue outside]
			let LBS be the list of female camera-bystanders;
			sort LBS in random order;
			truncate LBS to 2 entries;
			repeat with M running through LBS:
				now M is in the location of the player;
				now M is moved; [stops them moving instantly]
				now M is interested;
				compute perception of M;
			let M be entry 1 in LBS;
			try M going up;
		[display entire map.]

Report going when the player is in a bathroom predicament room:
	now map-zoom is 1.

Report going down when the player is in Park02:
	now map-zoom is 3.
Report going up when the player is in Park02:
	now map-zoom is 3.

Predicament-Pen is an itemstatic room. [stored items that would make the predicament difficult]
predicamentPenList is a list of things that varies.
predicamentWornList is a list of things that varies.
To say PredicamentPenCheck:
	do nothing.
	[if tough-shit is 0:
		repeat with C running through predicamentPenList:
			if C is not in Predicament-Pen:
				say "[C] missing from Predicament Pen!";
				now C is in Predicament-Pen.]

Report going when the player is in Predicament20:
	let abnormalClothingSituation be 0;
	repeat with C running through predicament-temporary wearthings:
		now C is predicament-normal;
		if C is clothing and (the raw-magic-modifier of C > 0 or C is not blandness):
			if C is held or C is in the location of the player:
				say "[BigNameDesc of C] fades away! [bold type]You can tell that it has been sent to the 'Junk Room'.[roman type][line break]";
			dislodge C;
			now C is in School15;
			now C is predicament-fixed; [This makes it immune to change while it resides in the Junk Room. Other junk room items are reset when the player faints etc.]
			now C is not stuck;
		otherwise:
			if C is held or C is in the location of the player:
				say "[BigNameDesc of C] fades into nothingness!";
			only destroy C;
	repeat with C running through predicament-fixed wearthings:
		unless C is in School15, now C is predicament-normal;
	repeat with C running through worn wearthings:
		if C is worn clothing and C is not cursed and C is not locked and C is not glued and C is not armband and C is not sex toy and C is removable:
			say "[BigNameDesc of C] falls to the ground.";
			dislodge C;
			now C is in the location of the player;
		otherwise:
			if C is worn clothing and C is not piercing and C is not armband and C is not combat visor and C is not listed in predicamentPenList:
				if debugmode > 0, say "The [C] is blocking the player wearing their outfit again.";
				now abnormalClothingSituation is 1;
	repeat with C running through predicamentPenList:
		if C is not worn and C is not in a predicament room: [if it's in a predicament room then it's something the player was wearing at the start of the predicament and then dropped]
			if C is diaper-stack:
				let K be a random worn knickers;
				if K is knickers and K is not diaper:
					say "[BigNameDesc of K] disintegrates!";
					destroy K;
				otherwise if K is diaper:
					dislodge K;
					remove K from play;
				now C is worn by the player;
				say "[BigNameDesc of C] reappears on you! ";
				if K is diaper:
					DiaperAdd K;
					say "[BigNameDesc of K] is now a part of your stack of diapers!";
			otherwise:
				say "[BigNameDesc of C] reappears on you! ";
				if C is dress:
					repeat with D running through worn dress:
						say "[BigNameDesc of D] falls to the ground to make room for it.";
						now D is in the location of the player;
				now C is worn by the player;
				if C is clothing:
					layer C correctly;
					now C is sure;
					now C is identified;
				if C is ass plugging clothing or C is vagina plugging clothing:
					if C is ass plugging, now C is penetrating asshole;
					if C is vagina plugging and the player is possessing a vagina, now C is penetrating vagina;
				otherwise if C is insertable and C is not dildo sword:
					let F be asshole;
					if (C is not plug or asshole is actually occupied) and the player is possessing a vagina, now F is vagina;
					now C is penetrating F;
				otherwise if C is gag:
					if C is not ringagged, now C is penetrating face;
			say line break;
	truncate predicamentPenList to 0 entries;
	if tough-shit is 0:
		if the make-up of face is not predicamentSavedMakeUp:
			now the make-up of face is predicamentSavedMakeUp;
			say "Your face returns to the state it was before you entered the Extra Credit Zone. It [MakeUpDesc].";
		if watersports mechanics is 1:
			now the bladder of the player is predicamentSavedBladder;
			if diaper messing >= 3:
				now rectum is predicamentSavedRectum;
				say "You feel your bladder and bowels returning to the state they were in before you entered the Extra Credit Zone.";
			otherwise:
				say "You feel your bladder returning to the state it was in before you entered the Extra Credit Zone.";
	let B be a random off-stage plentiful bracelet;
	if B is a thing:
		now B is in Predicament20;
		now the accessory-colour of B is the accessory-colour of armband;
		set shortcut of B;
		let C be B;
		if the number of plentiful bracelets in Predicament20 > 2:
			repeat with LB running through plentiful bracelets in Predicament20:
				if the price of LB < the price of C, now C is LB;
			destroy C;
		if B is in Predicament20, say "[bold type][if C is not B]Your [C][bold type] has been transformed into a [B][bold type]! [otherwise]A brand new [B][bold type] is waiting for you in this room! [end if]Wow![roman type][line break]";
	let T be a random trophy in Predicament20;
	if T is trophy, say "[bold type]There is a [T][bold type] in this room![roman type] [one of]You feel [bold type]permanently more lucky[roman type][or]Once again you feel more lucky[stopping] for having completed this Extra Credit Assignment.[one of][line break][variable custom style]Why do I get the feeling that if I rub the trophy, something interesting might happen?[roman type][line break][or][stopping]";
	say EndGameFlav of current-predicament;
	[repeat with M running through ultimate-lesson-actors:
		now M is not specific-man;]
	now the fatigue of the player is 0;
	if the number of entries in predicamentWornList > 0:
		if abnormalClothingSituation is 1:
			say "[newbie style]Since you are wearing new clothing from the predicament, it's too complex to just automatically put everything you were wearing back on. You'll have to do it manually.[roman type][line break]";
		otherwise:
			say "Would you like to put back on the same clothing that you were wearing when you entered the Extra Credit Zone? ([predicamentWornList])[line break]";
			if the player is consenting:
				repeat with C running through predicamentWornList:
					say "You wear [NameDesc of C]. ";
					now C is worn by the player;
					if C is clothing:
						layer C correctly;
						now C is sure;
						now C is identified;
					if C is ass plugging clothing:
						now C is penetrating asshole;
						if C is anal beads and the notch-taken of C <= 0, now the notch-taken of C is 1;
					otherwise if C is vagina plugging clothing:
						if the player is possessing a vagina, now C is penetrating vagina;
					otherwise if C is insertable:
						let F be asshole;
						if (C is not plug or asshole is actually occupied) and the player is possessing a vagina, now F is vagina;
						now C is penetrating F;
					otherwise if C is gag:
						if C is not ringagged, now C is penetrating face;
					say line break;
	truncate predicamentWornList to 0 entries.

To say EndGameFlav of (P - a predicament):
	say "".

A bystander is a kind of person. A bystander can be uninterested or interested. A bystander can be moved. The printed name of a bystander is "[TQlink of item described]bystander[TQxlink of item described][shortcut-desc][verb-desc of item described]".
[What's the most lewd they've seen the player this time?]
A bystander has a number called worst-appearance.
[Can be used for different things by different predicaments:
Smoothie predicament: How much will they enjoy the drink? (negative number means they have already tried a drink)]
A bystander has a number called bystanderInt1.
[Can be used for different things by different predicaments:
Smoothie predicament: How much convincing do they need?]
A bystander has a number called bystanderInt2.

Definition: a bystander is reactive:
	if it is interested:
		if it is in the location of the player, decide yes;
		[if current-predicament is vibe-photo-predicament and the predicament-progression of vibe-photo-predicament > 0 and it is in Predicament32 and the player is in Predicament 01, decide yes;]
	decide no. [Can it react to things it sees the player do?]

To decide which number is the default park pull resistance of (M - a bystander):
	decide on a random number between 1 and 8. [% of the time they ignore their drive to go to the centre]

To decide which number is the park pull resistance of (M - a bystander):
	if smoothie van is in the location of the player and M is not interested, decide on a random number between 1 and 3;
	if skirt-tray-vibrator is worn and M is not interested, decide on a random number between 1 and 4;
	decide on the default park pull resistance of M.

Definition: a bystander is strolling:
	if a random number between 1 and 5 > 3, decide yes;
	decide no.

[Which place do all bystanders tend to wander towards?]
To decide which room is the predicament-pull-room of (M - a bystander):
	if current-predicament is smoothie-predicament and the player is in Predicament03 and the bystanderInt1 of M >= 0, decide on Predicament03;
	if skirt-tray-vibrator is worn and M is not interested, decide on the location of the player;
	decide on Park16.

bystander-room-target is a room that varies.

To compute movement of (M - a bystander):
	now M is moved;
	if the travel-direction of the player is up or M is not in the location of the player: [bystander doesn't move if the player entered its location this turn]
		now neighbour finder is the location of M;
		let A be the best route from the location of M to the predicament-pull-room of M; [People love going to the centre]
		if A is a direction:
			now bystander-room-target is the room A from neighbour finder;
			if M is not target-room-happy, now A is up; [lets us know that we need to randomise direction instead]
		let R be the park pull resistance of M;
		if water-fountain is penetrating asshole and M is in the location of water-fountain and M is not fountain-unquenched, now R is 1; [They'll always move away after drinking]
		if (M is not in the location of water-fountain or M is not fountain-unquenched) and (M is strolling or R <= 1):
			if M is in Predicament01 and the player is not in Predicament01 and a random number between 1 and 2 is 1:
				now A is north;
			otherwise if M is in Predicament02 and a random number between 1 and 2 is 1:
				now A is east;
			otherwise if A is up or A is not a direction or R > 1:
				now R is 3; [We use this to flag that the NPC is no longer choosing to walk towards the central park]
				let LA be the list of N-viable directions; [This is how we randomise an APPROPRIATE direction for M to walk in]
				if M is in Park02:
					if M is male and the number of people in Toilet01 is 0, add down to LA;
					if M is female and the number of people in Toilet02 is 0, add up to LA;
				if M is in Toilet01, add up to LA;
				if M is in Toilet02, add down to LA;
				sort LA in random order;
				if debugmode > 1, say "List of N-viable directions: [LA].";
				repeat with D running through LA:
					now bystander-room-target is the room D from neighbour finder;
					if debugmode > 1, say "Considering [D] ([bystander-room-target]): ";
					if M is target-room-happy or D is up or D is down:
						now A is D;
						if debugmode > 1, say "Chosen!";
						break;
					otherwise:
						if debugmode > 1, say "Not allowed.";
			if A is a direction:
				let P be the room A from (the location of M);
				if A is a direction and the number of barriers in P is 0 and the number of barriers in the location of M is 0:
					try M going A;
					if M is camera-bystander and current-predicament is bottle-jog-predicament and A is down and M is in Toilet01 and id-poster is in Toilet01:
						let PS be the target-camera-poster of id-poster;
						let T be the substituted form of "a poster on the men's toilets wall with all of your personal information, and... [ShortDesc of PS]";
						let PSA be the lewdness of PS / 30;
						compute digital reputation damage T strength (PSA) quality 2;
						say "In your mind's eye, you can picture [NameDesc of M] entering the men's toilets and taking a photo of the poster, and publishing it online.[line break][variable custom style]What an invasive image. It feels so real... Is it really just my imagination?[roman type][line break]";


Definition: a bystander (called M) is target-room-happy:
	if bystander-room-target is bossed, decide no;
	decide yes. [Mostly yes but some NPCs will only go to the park or to the road]

To decide which number is the awareness of (M - a bystander):
	decide on 11.

To decide which number is the outrage tolerance of (M - a bystander):
	decide on 6.

To decide which number is the cringe tolerance of (M - a bystander):
	decide on 4.

To check perception of (M - a bystander):
	if M is in the location of the player:
		if M is uninterested:
			let R be a random number between 1 and the awareness of M;
			let C be the concealment of the location of the player;
			let P be the stealth of the player;
			if lake-swimming is true, now P is a random number between 5 and 15;
			if debuginfo > 0, say "[input-style]Bystander perception check: awareness roll (d[awareness of M]) = [R] | [C + P].5 = ([C].5) [location of the player] concealment rating + ([P]) player [if the player is upright]standing[otherwise]kneeling[end if] stealth rating[roman type][line break]";
			if C + P >= R and smoothie gag is not worn and current-predicament is not always-perceiving:
				say "[BigNameDesc of M] fails to notice you.";
			otherwise:
				now M is interested;
				compute perception of M;
		otherwise if the worst-appearance of M < the appearance of the player or (diaper quest is 1 and the worst-appearance of M < the cringe appearance of the player):
			compute worsened perception of M;
	if the predicament-pull-room of M is Predicament03 and M is not in Predicament03, now M is uninterested. [People who didn't take a smoothie can reconsider if they step away then step back.]

Definition: a predicament is always-perceiving: decide no. [Some predicaments have certain situations where the bystanders cannot fail to notice you.]

To compute perception of (M - a bystander):
	say "[BigNameDesc of M] notices you! ";
	if smoothie gag is worn and the bystanderInt1 of M >= 0:
		compute smoothie perception of M;
	otherwise if currently-squirting is 1:
		compute squirting perception of M;
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
	if current-predicament is team-girlfriends-predicament and girlfriend-partner is not snogged, HappinessDown team-predicament-partner;
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

To compute squirting perception of (M - a bystander):
	let A be the appearance of the player;
	let C be 0;
	if diaper quest is 1, now C is the cringe appearance of the player;
	say "[BigNameDesc of M] [if M is interested][one of]seems[or]looks[purely at random] [one of]horrified[or]outraged[or]gobsmacked[then at random][otherwise]turns to look at you[end if].[line break][speech style of M]'[one of]Disgusting[or]I'm gonna puke[or]What the fuck[in random order]!'[roman type][line break][strongHumiliateReflect]";
	say strongHumiliateReflect;
	now M is interested;
	if the worst-appearance of M < A, now the worst-appearance of M is A;
	if the worst-appearance of M < C, now the worst-appearance of M is C.

To say EnemaFloorReactionFlav of (M - a bystander):
	compute squirting perception of M.

To check disapproval of (M - a person): [Should be rare. Perhaps sometimes the slimegirl seeing you leak pee]
	say "[BigNameDesc of M] widens [his of M] eyes and then blinks at you. [slightHumiliateReflect]".

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
	say "[BigNameDesc of M] [one of]almost chokes[or]leaps in surprise[or]barks in surprise[in random order].[line break][speech style of M]'[one of]That was INSIDE you?!'[or]What the hell? Did you just push that out of your hole in front of me?!'[or]Oh my gosh, you filthy pervert!'[in random order][roman type][line break][moderateHumiliateReflect]";
	now M is interested;
	if the worst-appearance of M < the appearance of the player, now the worst-appearance of M is the appearance of the player;
	if diaper quest is 1 and the worst-appearance of M < the cringe appearance of the player, now the worst-appearance of M is the cringe appearance of the player.

A camera-bystander is a kind of bystander. The printed name of a camera-bystander is "[TQlink of item described][man of item described] on [his of item described] phone[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "man", "on his phone" as camera-bystander when item described is male. Understand "woman", "on her phone" as camera-bystander when item described is female. Understand "phone" as camera-bystander.

To compute lewd perception reaction of (M - a camera-bystander):
	say "[big he of M] [one of]widens [his of M] eyes and quickly[or]gasps and quickly[or]doesn't say anything, but just[then at random] ";
	compute careful picture taking of M.

To compute careful picture taking of (M - a bystander):
	say "raises [his of M] phone and snaps a photo of you![line break][italic type]CLICK![roman type][line break]You then see [him of M] tapping away, and a 'whoosh' sound as [he of M] sends the photo to who knows how many people![one of][line break][variable custom style]Noooo! How many people are going to have seen me like this?![roman type][line break][or][stopping]";
	let A be the appearance of the player;
	if diaper quest is 1 and the appearance of the player < the cringe appearance of the player, now A is the cringe appearance of the player;
	compute digital reputation damage (PredicamentActivity of current-predicament) strength (A) quality (a random number between 3 and 6).

To compute squirting perception of (M - a camera-bystander):
	compute lewd perception reaction of M.

To say FlashFlav of (M - a camera-bystander):
	say "[BigNameDesc of M] [if M is not interested]notices you! [big he of M] [end if]gasps, and then ";
	compute rapid picture taking of M witnessing "".

To compute rapid picture taking of (M - a bystander) witnessing (T - a text):
	say "snaps several photos of you with [his of M] phone![line break][italic type]CLICK! CLICK! CLICK! CLICK![roman type][line break]And then... a 'whoosh' sound as [he of M] sends the photo to who knows how many people![one of][line break][variable custom style]Now the whole world will know my shame...[roman type][line break][or][stopping]";
	if T is "":
		now T is PredicamentActivity of current-predicament;
		if target-poster is expulsion poster, now T is "you expelling stuff from your [asshole]";
		if target-poster is masturbation poster, now T is "you masturbating";
		if target-poster is wetting poster, now T is "you [if the player is pee protected]wetting yourself[otherwise]urinating[end if]";
	let A be the appearance of the player;
	if diaper quest is 1 and the appearance of the player < the cringe appearance of the player, now A is the cringe appearance of the player;
	compute digital reputation damage T strength (A) quality (a random number between 1 and 4);
	now M is interested;
	if the worst-appearance of M < the appearance of the player, now the worst-appearance of M is the appearance of the player;
	if diaper quest is 1 and the worst-appearance of M < the cringe appearance of the player, now the worst-appearance of M is the cringe appearance of the player;
	say HumiliateReflect (the appearance of the player * 30).

To compute toy expulsion reaction of (M - a camera-bystander):
	say "[BigNameDesc of M] leaps in surprise, but [his of M] camera is at the ready![line break][italic type]CLICK! CLICK! CLICK! CLICK![roman type][line break]And then... a 'whoosh' sound as [he of M] sends the photo to who knows how many people![line break][strongHumiliateReflect]";
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

To decide which figure-name is the examine-image of (M - a bystander):
	decide on figure of businessman bystander.

businessman-bystander is a bystander. The printed name of businessman-bystander is "[TQlink of item described]businessman[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "businessman" as businessman-bystander.
To decide which number is the awareness of (M - businessman-bystander):
	decide on 4.
To decide which number is the cringe tolerance of (M - businessman-bystander):
	decide on 3.
To say ExamineDesc of (M - businessman-bystander):
	say "This smartly dressed [man of M] looks very busy and distracted. [big he of M] is constantly checking [his of M] watch.".

businesswoman-bystander is a camera-bystander. businesswoman-bystander is female. The printed name of businesswoman-bystander is "[TQlink of item described]businesswoman[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "businesswoman" as businesswoman-bystander.
To decide which figure-name is the examine-image of (M - businesswoman-bystander):
	decide on figure of businesswoman bystander.
To decide which number is the awareness of (M - businesswoman-bystander):
	decide on 6.
To decide which number is the outrage tolerance of (M - businesswoman-bystander):
	decide on 5.
To decide which number is the cringe tolerance of (M - businesswoman-bystander):
	decide on 4.
To say ExamineDesc of (M - businesswoman-bystander):
	say "This smartly dressed [man of M] looks rather busy. [big he of M] is in the middle of what sounds like an important phonecall.".

male-birdwatcher-bystander is a camera-bystander. The printed name of male-birdwatcher-bystander is "[TQlink of item described]birdwatcher[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "birdwatcher" as male-birdwatcher-bystander.
To decide which figure-name is the examine-image of (M - male-birdwatcher-bystander):
	decide on figure of male birdwatcher bystander.
To decide which number is the awareness of (M - male-birdwatcher-bystander):
	decide on 4.
To say ExamineDesc of (M - male-birdwatcher-bystander):
	say "This modestly dressed [man of M] is scouting around for interesting birds with [his of M] binoculars. A digital camera hangs from a strap around [his of M] neck, ready to be used at any moment.".
Definition: male-birdwatcher-bystander is target-room-happy:
	if bystander-room-target is bossed or bystander-room-target is not park room, decide no;
	decide yes.

female-birdwatcher-bystander is a camera-bystander. female-birdwatcher-bystander is female. The printed name of female-birdwatcher-bystander is "[TQlink of item described]birdwatcher[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "birdwatcher" as female-birdwatcher-bystander.
To decide which figure-name is the examine-image of (M - female-birdwatcher-bystander):
	decide on figure of female birdwatcher bystander.
To decide which number is the awareness of (M - female-birdwatcher-bystander):
	decide on 4.
To decide which number is the outrage tolerance of (M - female-birdwatcher-bystander):
	decide on 4.
To say ExamineDesc of (M - female-birdwatcher-bystander):
	say "This modestly dressed [man of M] is scouting around for interesting birds with [his of M] binoculars. A digital camera hangs from a strap around [his of M] shoulder, ready for use at a moment's notice.".
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
	if bystander-room-target is Park02, decide yes; [everyone needs the toilet sometimes!]
	if bystander-room-target is bossed or bystander-room-target is park room, decide no;
	decide yes.

postwoman-bystander is a bystander. postwoman-bystander is female. The printed name of postwoman-bystander is "[TQlink of item described]postwoman[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "postwoman" as postwoman-bystander.
To decide which figure-name is the examine-image of (M - postwoman-bystander):
	decide on figure of postwoman bystander.
To say ExamineDesc of (M - postwoman-bystander):
	say "This [man of M] is wearing a postie's uniform and has a satchel full of mail slung over one shoulder. [big he of M]'s busy heading from postbox to postbox.".
Definition: postwoman-bystander is strolling: decide yes.
Definition: postwoman-bystander is target-room-happy:
	if bystander-room-target is Park02, decide yes; [everyone needs the toilet sometimes!]
	if bystander-room-target is bossed or bystander-room-target is park room, decide no;
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
	decide on 3.
To say ExamineDesc of (M - male-bookworm-bystander):
	say "This [man of M] has [his of M] nose in [his of M] book[if M is not interested]. Hopefully [he of M] won't look up[end if].".
To compute lewd perception reaction of (M - male-bookworm-bystander):
	say "[line break][first custom style]'[one of]I... Oh god!'[or]H... haaah... Hello!'[in random order][roman type][line break][BigNameDesc of M] has turned bright red and you can see a massive erection forming in [his of M] pants!".

female-bookworm-bystander is a bystander. female-bookworm-bystander is female. The printed name of female-bookworm-bystander is "[TQlink of item described]bookworm[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "bookworm" as male-bookworm-bystander.
To decide which figure-name is the examine-image of (M - female-bookworm-bystander):
	decide on figure of female bookworm bystander.
To decide which number is the awareness of (M - female-bookworm-bystander):
	decide on 3.
To say ExamineDesc of (M - female-bookworm-bystander):
	say "This [man of M] has [his of M] nose in [his of M] book[if M is not interested]. Hopefully [he of M] won't look up[end if].".
To compute lewd perception reaction of (M - female-bookworm-bystander):
	say "[line break][first custom style]'[one of]I... Oh my!'[or]H... haaah... How are you so brave?'[in random order][roman type][line break][BigNameDesc of M] has turned bright red and [he of M] is crossing [his of M] legs together as if [he of M] desperately needs the toilet.".

male-selfie-bystander is a camera-bystander. The printed name of male-selfie-bystander is "[TQlink of item described]selfie addict[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "selfie", "addict" as male-selfie-bystander.
To decide which figure-name is the examine-image of (M - male-selfie-bystander):
	decide on figure of male selfie bystander.
To decide which number is the awareness of (M - male-selfie-bystander):
	decide on 5.
To decide which number is the outrage tolerance of (M - male-selfie-bystander):
	decide on 8.
To say ExamineDesc of (M - male-selfie-bystander):
	say "This fashionably dressed [man of M] is a bit distracted by [his of M] own image. [big he of M]'s spending [his of M] entire time posing and taking selfies of [himself of M].".

female-selfie-bystander is a camera-bystander. female-selfie-bystander is female. The printed name of female-selfie-bystander is "[TQlink of item described]selfie chick[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "selfie", "chick" as female-selfie-bystander.
To decide which figure-name is the examine-image of (M - female-selfie-bystander):
	decide on figure of female selfie bystander.
To decide which number is the awareness of (M - female-selfie-bystander):
	decide on 5.
To decide which number is the outrage tolerance of (M - female-selfie-bystander):
	decide on 8.
To say ExamineDesc of (M - female-selfie-bystander):
	say "This confidently dressed [man of M] is a bit distracted by [his of M] own image. [big he of M]'s spending [his of M] entire time trying out different sexy poses and taking selfies of [himself of M].".

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
	decide on 8.
To set up smoothie stats of (M - female-sunbather-bystander):
	now the bystanderInt1 of M is 1; [How much will they enjoy the drink?]
	now the bystanderInt2 of M is 5. [How much convincing do they need?]
To compute lewd perception reaction of (M - female-sunbather-bystander):
	say "[line break][first custom style]'Come on, you've taken it way too far. What a SLUT!'[roman type][line break]".
To compute cringe perception reaction of (M - female-sunbather-bystander):
	say "[line break][first custom style]'Are you for real?!'[roman type][line break]".
To compute non-lewd perception reaction of (M - female-sunbather-bystander):
	say "[big he of M] gives you a friendly thumbs up.[if the saved appearance of the player > 3][line break][first custom style]'I LOVE your confidence! You do you, [brother of the player]! Don't let anyone tell you how to dress!'[roman type][line break][end if]".
To compute non-lewd worsened perception reaction of (M - female-sunbather-bystander):
	say "[BigNameDesc of M] hums with approval.[line break][first custom style]'Flaunt what you got, [brother of the player]! Ain't no shame in that!'[roman type][line break]".

shutterbug-bystander is a camera-bystander. The printed name of shutterbug-bystander is "[TQlink of item described]shutterbug[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "shutterbug" as shutterbug-bystander.
To decide which figure-name is the examine-image of (M - shutterbug-bystander):
	decide on figure of shutterbug bystander.
To decide which number is the awareness of (M - shutterbug-bystander):
	decide on 10.
To decide which number is the outrage tolerance of (M - shutterbug-bystander):
	decide on 3.
To say ExamineDesc of (M - shutterbug-bystander):
	say "This creepy looking guy seems to be trying to take photos of everything that moves...".

bro-bystander is a bystander. The printed name of bro-bystander is "[TQlink of item described]bro[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "bro" as bro-bystander.
To decide which figure-name is the examine-image of (M - bro-bystander):
	decide on figure of bro bystander.
To decide which number is the outrage tolerance of (M - bro-bystander):
	decide on 14.
To say ExamineDesc of (M - bro-bystander):
	say "This guy looks like a total douche-bag. [big his of M] shirt reads 'SEND NUDES' and [he of M] has a mocking sneer on [his of M] face.".
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
	decide on 10.
To decide which number is the cringe tolerance of (M - cosplay-bystander):
	decide on 10.
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
	decide on 11.
To say ExamineDesc of (M - hooker-bystander):
	say "This skankily dressed [man of M] clearly wants to find a John and make some money.".
To compute lewd perception reaction of (M - hooker-bystander):
	say "[line break][first custom style]'Hey, this is my turf, bitch! Find your own block.'[roman type][line break]".
To compute cringe perception reaction of (M - hooker-bystander):
	say "[line break][first custom style]'I've done weird stuff for cash before, but even I would never stoop that low.'[roman type][line break]".

couple-bystander is a bystander. The printed name of couple-bystander is "[TQlink of item described]man with girlfriend[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "man", "girlfriend", "with girlfriend" as couple-bystander.
To decide which figure-name is the examine-image of (M - couple-bystander):
	decide on figure of couple bystander.
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

A game universe initialisation rule:
	let N be 1;
	repeat with M running through bystanders:
		now the text-shortcut of M is the substituted form of "bs[N]";
		increase N by 1;
	change the north exit of Predicament20 to School01. [It's a one-way journey]

This is the bystanders move rule:
	compute bystander motion;
	if ankle-ropes is worn, compute bystander motion.

To compute bystander motion:
	if girlfriend-partner is on-stage:
		if the player is in a predicament room and the player is not in Predicament20:
			now girlfriend-partner is in the location of the player;
			allocate arm use to girlfriend-partner;
		otherwise:
			destroy girlfriend-partner;
			if the player is in Predicament20, say "[student-name of team-predicament-partner] goes through the portal, leaving you behind.";
			distract team-predicament-partner;
	if the player is in an outside predicament room or the player is in Predicament02 or the player is in Toilet01 or the player is in Toilet02 or (current-predicament is vibe-photo-predicament and the player is in Predicament01):
		update appearance level; [We really want to make sure we've got this accurate]
		repeat with M running through alive bystanders:
			unless current-predicament is toilets-dildos-predicament and M is in Park02 and the player is in Toilet02:
				if debugmode > 1, say "Computing [NameDesc of M] ([location of M]).";
				if M is not moved, compute movement of M;
				now M is not moved;
				check perception of M;
			[display entire map.]

The bystanders move rule is listed first in the all time based rules. [list it first so the move happens before all other time based stuff]

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
				let L be a random outside predicament room;
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
			now neighbour finder is a random outside predicament room;
			if a random number between 1 and 7 is 1 or neighbour finder is Predicament03, now neighbour finder is Park16;
			now M is in neighbour finder;
			let LA be the list of N-viable directions;
			repeat with D running through LA:
				now bystander-room-target is the room D from neighbour finder;
				if M is target-room-happy, now valid-location-found is 1; [This NPC will be able to find a valid direction to walk in]
		now M is moved; [stops them moving instantly]

An all time based rule (this is the cars come past rule):
	if the player is in an outside predicament room:
		if the player is in a road room and (current-predicament is not smoothie-predicament or the player is not in Predicament03) and a random number between 1 and 4 is 1:
			say "[bold type]Suddenly, a car [one of]comes driving[or]zooms[or]drives[or]sails[at random] past! [roman type]";
			if the appearance of the player > 2 or the cringe appearance of the player > 4:
				say "The driver honks [his of male-m] horn as [he of male-m] spots you!";
				FearUp 4;
				let R be a random number between 1 and 2;
				if R is 1 and face is not listed in the armUses of arms:
					if the number of blank rows in the Table of Published Disgraces > 0:
						choose a blank row in Table of Published Disgraces;
						now the content entry is the substituted form of "low resolution dashcam footage of [PredicamentActivity of current-predicament] [ReputationAttire]";
						now the published entry is the substituted form of "has been uploaded to caughtondashcam.net";
						now the severity entry is the appearance of the player;
						now the popularity entry is 2;
						now the timestamp entry is time-earnings;
						now the viewsfuzz entry is a random number between -100 and 100;
						now the lastwitnessed entry is 0;
						now the deletedtime entry is -1;
					say "[variable custom style][one of]Wait, did [he of male-m] have a dashcam?! Does that count as a recording???[or]Shit, I think I've been caught on a dashcam again![stopping][roman type][line break]";
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
							if M is in the location of the player, say "[bold type][BigNameDesc of M] [bold type]must have been attracted here by the sound of the car horn![roman type][line break]";
					otherwise:
						say "[BigNameDesc of M] is started by the car horn, and looks around, now much more alert!";
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
	if armband is not worn, decide no;
	if the latex-transformation of the player > 0, decide no;
	let H be a random worn headgear;
	if H is headgear and (the quest of H is just-wait-quest or the quest of H is nice-quest or the quest of H is naughty-quest), decide no;
	if (class-time is 1000 or class-time < 0) and armband is not solid gold and there is an alive undefeated correctly-ranked teacher, decide no; [ready for class]
	repeat with C running through worn clothing:
		if C is locked, decide no;
		if C is unremovable and C is not piercing and C is not fake-nails and (tough-shit is 1 or C is dress), decide no;
		if C is glued, decide no;
	decide yes.
Definition: a predicament is eligible:
	if the times-completed of it is 0, decide yes;
	decide no.
Definition: a team-predicament is eligible:
	if the times-completed of it is 0 and team-predicament-partner is a monster, decide yes;
	decide no.
To execute (P - a predicament):
	do nothing.

To decide which text is PredicamentActivity of (P - a predicament):
	decide on "you [one of]sneaking through[or]rushing through[in random order] [if the player is in a park room]a public park[otherwise]your neighbourhood[end if]".
To say PredicamentDescription of (P - a predicament):
	say "I'm currently in an Extra Credit lesson where I need to get back to my home while avoiding as many bystanders from noticing me as possible.".
current-predicament is an object that varies.

To say PredicamentRewardExplanation:
	say "[one of]HERE YOU CAN EARN TROPHIES WHICH MAY BE USEFUL ASSETS THROUGHOUT THE REST OF YOUR TRAINING. [caps please] NOTE, IT IS RECOMMENDED TO MOVE THROUGH THIS AREA WITH AS MODEST AN APPEARANCE AS POSSIBLE TO AVOID EMBARRASSING ENCOUNTERS WITH YOUR NEIGHBOURS. ALL YOUR ITEMS AND YOUR NEW TROPHY ARE WAITING FOR YOU IN THE DESTINATION LOCATION. PLEASE NOTE[or]ANOTHER TROPHY IS WAITING FOR YOU AT THE DESTINATION LOCATION. [caps please] REMEMBER[stopping]: ALL PHOTOS AND VIDEOS TAKEN ARE UPLOADED TO THE [if simulatedInternet is 0]*REAL* [end if]INTERNET. YOUR REAL PUBLIC REPUTATION IS AT STAKE. ".
To say PredicamentRewardExplanationReaction:
	say "[one of][line break][variable custom style]How cryptic. [if the player is shameless and simulatedInternet is 0]So photos of me can get uploaded to the real life Internet? How outrageous... and exciting![otherwise if simulatedInternet is 0]But one thing is clear: if there's chances of photos of me being uploaded to the real life Internet, then I really must be careful here...[end if][or][stopping]".

simple-sneak-predicament is a predicament.
Figure of simple sneak predicament is the file "Special/Cutscene/cutscene-predicament-diaper-sneak1.jpg".
Definition: simple-sneak-predicament is appropriate:
	if armband is sapphire, decide yes;
	decide no.
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
		summon D locked;
		now the raw-magic-modifier of D is 2;
		now D is diaper-addiction-influencing;
		[now skeleton key is in a random unbossed park room;]
	otherwise if a random number between 1 and 3 is 1:
		let T be a random sexy exercise bra;
		now the size of T is the largeness of breasts;
		cupsizefix T;
		if the size of T < the largeness of breasts:
			now T is a random white string bikini top;
			now T is confidence;
		if the largeness of breasts <= 1, now T is a random polo shirt;
		blandify and reveal T;
		now T is in Predicament01;
		blandify and reveal black-sporty-microskirt;
		now black-sporty-microskirt is in Predicament01;
		now black-sporty-microskirt is speed;
		now the raw-magic-modifier of black-sporty-microskirt is a random number between 0 and 2;
		let C be blue-cameltoe briefs;
		if the player is not possessing a vagina, now C is pink-kitty-panties;
		blandify and reveal C;
		now C is in Predicament01;
	otherwise if a random number between 1 and 2 is 1:
		blandify and reveal sequins bodysuit;
		now sequins bodysuit is in Predicament01;
		now sequins bodysuit is confidence;
	otherwise:
		if the largeness of breasts > 1:
			let T be a random silver bikini top;
			now the size of T is the largeness of breasts;
			if the size of T > the max size of T, now the size of T is the max size of T;
			if the size of T < the min size of T, now the size of T is the min size of T;
			if the size of T < the largeness of breasts:
				now T is a random white string bikini top;
				now T is confidence;
			blandify and reveal T;
			now T is in Predicament01;
		let C be silver-g-string;
		if the player is possessing a penis, now C is silver-thong;
		blandify and reveal C;
		now C is in Predicament01;
	now the printed name of Predicament01 is "Small Room";
	now the player is in Predicament01;
	say "You find yourself in a small room, empty except for a wardrobe, a small table and a front door that leads outside. You are completely naked[if diaper quest is 1] except for a [MediumDesc of plain-largish-diaper][end if]. The table has a piece of card on it with the word 'INSTRUCTIONS' on it. You read the instructions:[paragraph break][first custom style]'WELCOME TO EXTRA CREDIT CLASS. [PredicamentRewardExplanation]TO EARN THIS TROPHY, YOU MUST SIMPLY... RETURN HOME.'[PredicamentRewardExplanationReaction][roman type][line break]It looks like your outfit has been decided for you...";
	if diaper quest is 1, cutshow figure of simple sneak predicament.

vibe-photo-predicament is a predicament. The printed name of vibe-photo-predicament is "[TQlink of item described]wand vibrator[TQxlink of item described][shortcut-desc]". Understand "vibrator" as vibe-photo-predicament. The text-shortcut of vibe-photo-predicament is "wand".
To set up bystanders for (P - vibe-photo-predicament):
	set up 29 bystanders.
To say ExamineDesc of (V - vibe-photo-predicament):
	say "This wand vibrator has a green circle towards the rear of its tip and a red diamond towards the front. You'll need to obscure the green circle by putting your crotch directly onto the tip, in order to satisfy the camera's requirements.".
Figure of PeaceSignButton is the file "Special/Buttons/peacesign.jpg".
To construct normal buttons for (V - vibe-photo-predicament):
	choose a blank row in the Table of Buttons;
	now the ButtonImage entry is Figure of PeaceSignButton;
	now the ButtonCommand entry is "adjust arms";
	now the ButtonColour entry is lightModeFullGreen.
vibe-photo-predicament has a number called camera-countdown. vibe-photo-predicament has a number called predicament-progression.
Definition: vibe-photo-predicament is position-adopted:
	if the player is upright and the number of entries in the armUses of arms is 2 and entry 1 in the armUses of arms is vibe-photo-predicament and entry 2 in the armUses of arms is vibe-photo-predicament, decide yes;
	decide no.
To decide which figure-name is the examine-image of (V - vibe-photo-predicament):
	if V is position-adopted or blue-exercise-shorts is held or blue-exercise-shorts is in Predicament01, decide on figure of vibe pose predicament 2;
	decide on figure of vibe pose predicament 1.
Definition: vibe-photo-predicament is appropriate:
	if armband is sapphire, decide yes;
	decide no.
To execute (VPP - vibe-photo-predicament):
	now the stance of the player is 0;
	if diaper quest is 1:
		summon pink-huge-diaper locked;
	otherwise:
		summon predicament-painted-cutoffs uncursed;
	now the camera-countdown of VPP is (a random number between 1 and 6) + (a random number between 0 and 5);
	now VPP is in Predicament01;
	now the player is in Predicament01;
	say "You find yourself in a small room, empty except for a camera on a tripod pointing at a wand vibrator, fixed vertically to a pole in the ground, and a locked cabinet containing a crop top and loose-fitting exercise shorts. You are completely naked except for a [if diaper quest is 1][MediumDesc of pink-huge-diaper] which has been locked around you waist with a padlock[otherwise]spray-painting of denim cutoffs which would hopefully fool someone who wasn't standing too close[end if]. There are green dots painted onto the backs of your hands, the backs of your index and middle fingers, the front of your other six fingers, on the tip of the wand vibrator, [if diaper quest is 1]at the crotch of your diaper, [end if]and on wall either side of you at chest height. A robotic voice can suddenly be heard from a hidden speaker:[paragraph break][first custom style]'WELCOME TO EXTRA CREDIT CLASS. [PredicamentRewardExplanation]TO EARN THIS TROPHY, YOU MUST SIMPLY... RETURN HOME. TO UNLOCK THE BONUS CLOTHING, [caps please] ENSURE THAT THE CAMERA CANNOT DETECT ANY GREEN, AND CAN SEE FOUR SPOTS OF RED IN A DIAMOND SHAPE - YOUR TONGUE, NIPPLES AND [if diaper quest is 1]VIBRATOR[otherwise]CROTCH[end if]. THE CAMERA WILL TAKE PHOTOS AT RANDOM MOMENTS IN THE NEAR FUTURE. THESE PHOTOS WILL BE PUBLISHED ONLINE. EACH TIME THE CAMERA FAILS TO DETECT THE CORRECT PATTERN, YOUR SITUATION WILL BE WORSENED, BUT PLEASE FEEL FREE TO LEAVE THE ROOM AT ANY TIME.'[PredicamentRewardExplanationReaction][roman type][line break]The 'predicament' seems simple. You must either walk home looking as you are, or pose in a way which meets the unlocking criteria - with your crotch pressed into the wand vibrator, your hands up to your sides showing 'peace signs', and your tongue lolling out of your mouth. And who knows exactly when the camera will go off...[paragraph break]NB: to adopt the pose, or stop adopting the pose, use the command [bold type]'adjust arms'[roman type].".
To say PredicamentDescription of (P - vibe-photo-predicament):
	say "I'm currently in an Extra Credit lesson where I need to decide whether to pose for a photo to earn decent clothing and then get back to my home while avoiding as many bystanders from noticing me as possible.".

To decide which number is the stimulation of (D - vibe-photo-predicament) on (B - a body part):
	decide on a random number between 7 and 14.

An all time based rule:
	if current-predicament is vibe-photo-predicament:
		if the player is in Predicament01:
			decrease the camera-countdown of vibe-photo-predicament by 1;
			if the camera-countdown of vibe-photo-predicament > -100:
				if vibe-photo-predicament is position-adopted:
					say "You hold your hands up into peace signs, push your tongue lewdly out of your mouth, and [if vibe-photo-predicament is position-adopted]continue to push[otherwise]lower[end if] your [genitals] onto the vibrator. The stimulation is intense!";
					stimulate vagina from vibe-photo-predicament;
				if vibe-photo-predicament is not position-adopted:
					if the defaultLeftTarget of arms is vibe-photo-predicament and the defaultRightTarget of arms is vibe-photo-predicament, say "Unfortunately, you are unable to maintain the pose this turn.";
					otherwise say "You hold back from making the pose for now, keeping out of the view of the camera.";
			if the camera-countdown of vibe-photo-predicament is 0:
				now the camera-countdown of vibe-photo-predicament is (a random number between 1 and 6) + (a random number between 0 and 5);
				say "[italic type]FLASH![roman type][line break]The camera takes its photo, and you can see the result on the computer screen behind the camera.";
				if vibe-photo-predicament is position-adopted:
					if the player is not getting unlucky and the player is not getting unlucky:
						blandify and reveal baby doll crop top;
						now baby doll crop top is in the location of the player;
						now baby doll crop top is predicament-temporary;
						blandify and reveal blue-exercise-shorts;
						now blue-exercise-shorts is in the location of the player;
						now blue-exercise-shorts is predicament-temporary;
						now the camera-countdown of vibe-photo-predicament is -100;
						say "You hear a series of high pitched electronic tones, declaring that the camera successfully detected the pattern it was looking for. The cabinet unlocks! However, you also ";
					otherwise:
						say "You hear a series of low electronic tones, declaring that the camera failed to detect the pattern it was looking for.[line break][variable custom style]WHAT?![roman type][line break]You notice that you accidentally allowed a small amount of green to be visible [one of]behind your left hand[or]behind your right hand[or]on the tip of the vibrator[at random] - you're going to have to try again! [GotUnluckyFlav]You ";
					say "watch with [horror ((the humiliation of the player / 1000) - the predicament-progression of vibe-photo-predicament)] as the photo is uploaded to [if the predicament-progression of vibe-photo-predicament < 4 and diaper quest is 0]www.amateursluts.com[otherwise if the predicament-progression of vibe-photo-predicament < 4]www.weirdestamateurperverts.com[otherwise]your social media profile[end if].[line break][variable custom style][if the predicament-progression of vibe-photo-predicament < 4][one of]Nobody looks at sites like that, right?[or]Not again![stopping][otherwise][one of]My friends are going to be able to see this! How humiliating![or]Not again![stopping][end if][roman type][line break]";
					if the number of blank rows in the Table of Published Disgraces > 0:
						choose a blank row in Table of Published Disgraces;
						now the content entry is the substituted form of "a high resolution photo of you posing with peace signs, tongue lolled out and [genitals] pushed into a vibrating wand, [if the predicament-progression of vibe-photo-predicament > 1]with your date of birth and hometown printed on the wall behind you, [end if][if the predicament-progression of vibe-photo-predicament > 2]alongside your full name, [end if][if the predicament-progression of vibe-photo-predicament > 4]and contact information, [end if][ReputationAttire]";
						if the predicament-progression of vibe-photo-predicament < 3:
							now the published entry is the substituted form of "has been [one of]uploaded to[or]posted on[purely at random] [if diaper quest is 0]www.amateursluts.com[otherwise]www.weirdestamateurperverts.com[end if]";
							now the severity entry is 2 + the predicament-progression of vibe-photo-predicament;
							now the popularity entry is 1;
							now the viewsfuzz entry is a random number between -200 and 200;
							now the timestamp entry is 0;
						otherwise:
							now the published entry is the substituted form of "has been posted publicly from your social media account";
							now the severity entry is the predicament-progression of vibe-photo-predicament * 150;
							now the popularity entry is 0;
							now the viewsfuzz entry is 0;
							now the timestamp entry is 0;
							[by setting these to 0, the 'views' will be set to 1, which means there's no tracked views and the reputation damage is flat severity]
						now the lastwitnessed entry is time-earnings;
						now the deletedtime entry is 0;
				otherwise:
					say "You hear a series of low electronic tones, declaring that the camera failed to detect the pattern it was looking for.";
				if blue-exercise-shorts is not in the location of the player or the predicament-progression of vibe-photo-predicament is 0:
					if the predicament-progression of vibe-photo-predicament is 0:
						say "[if blue-exercise-shorts is in the location of the player]And then to make things even worse[otherwise]Next[end if], a giant blind is pulled up on the wall to your left, revealing that the entire left wall is made of glass! Anyone who walks past will be able to see inside!";
						set up predicament universe;
						compute predicament map reveal;
					otherwise if the predicament-progression of vibe-photo-predicament is 1:
						say "Next, a panel slides away on the wall behind you, above your head, revealing a large sign with details of your date of birth and hometown!";
					otherwise if the predicament-progression of vibe-photo-predicament is 2:
						say "Next, another panel slides away on the wall behind you, revealing another sign above the first, with your full name!";
					otherwise if the predicament-progression of vibe-photo-predicament is 3:
						say "Next, you see the PC monitor next to the camera change from being 'ready to upload your photo to www.amateursluts.com' to being 'ready to upload it to your social media profile'!";
					otherwise:
						say "Next, another panel slides away on the wall behind you, revealing another sign below the others, with [one of]your email address[or]your phone number[or]the address of your house[or]a link to another of your social media profiles[stopping]!";
					say "[variable custom style]No, no, no! [one of]I can't stay here now, can I?![or]This is too much![or]This is much worse![or]There's no way I can let this happen![then at random][roman type][line break]";
					increase the predicament-progression of vibe-photo-predicament by 1;
			if the predicament-progression of vibe-photo-predicament > 0:
				let A be the appearance of the player;
				repeat with M running through bystanders in Predicament32:
					say "[BigNameDesc of M] [if M is interested][one of]watches[or]continues to watch[or]stares at[then at random][otherwise]notices[end if] you[if worst-appearance of M < A]! [big he of M] is visibly [one of]shocked[or]disgusted[or]appalled[then at random][end if].";
					now the worst-appearance of M is A;
					now M is interested;
					say HumiliateReflect (A * 30).

Carry out going when current-predicament is vibe-photo-predicament:
	if the defaultLeftTarget of arms is vibe-photo-predicament or the defaultRightTarget of arms is vibe-photo-predicament:
		now the defaultLeftTarget of arms is yourself;
		now the defaultRightTarget of arms is yourself.

triple-dildo-predicament is a predicament. The printed name of triple-dildo-predicament is "dildo".
triple-dildo-predicament has a number called pill-timer.
Definition: triple-dildo-predicament is appropriate:
	if diaper quest is 0 and the player is possessing a vagina and super gag reflex < 2 and (pregnancy fetish is 0 or the player is able to get pregnant) and the rank of the player >= 3, decide yes;
	decide no.
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
	let E be black-exercise-shorts;
	now E is in Predicament01;
	now E is blessed;
	now E is sure;
	now E is identified;
	now the owner of E is nothing;
	now the raw-magic-modifier of E is 1;
	let E be a random sexy exercise bra;
	now E is in Predicament01;
	now E is blessed;
	now E is sure;
	now E is identified;
	now the owner of E is nothing;
	now triple-dildo-predicament is penetrating face;
	now triple-dildo-predicament is penetrating vagina;
	now triple-dildo-predicament is penetrating asshole;
	now the stomach-semen of the player is 0;
	now the stomach-water of the player is 3;
	now refractoryperiod is 0;
	display focus stuff;
	now bigGameLoop is 3; [tells the game not to refresh any windows]
	say "[bold type]Suddenly you can feel that your arms are tightly bound behind you, with your hands in fingerless mittens, and there are thick dildos in your throat, pussy and ass![roman type][line break]A mechanical voice begins to explain your predicament.[line break][first custom style]'THE RULES ARE AS FOLLOWS: THE TANK OF SEMEN IN FRONT OF YOU IS CONNECTED TO YOUR BODY BY THREE TUBES. THE MOUTH AND [caps cunt] TUBES ARE CURRENTLY LOCKED IN PLACE. YOU CAN PUMP SEMEN DOWN YOUR THROAT BY SQUEEZING ON THE DILDO IN YOUR MOUTH. YOU CAN PUMP SEMEN UP YOUR ASSHOLE BY BOUNCING ON THE STUDDED ANAL DILDO ON THE CHAIR BELOW YOU. WARNING: IF YOU FAIL TO PERFORM ANY SIGNIFICANT PUMPING AT ALL FOR 10 SECONDS, THE LOCK HOLDING THE EXERCISE SHORTS IN THE CABINET BEHIND YOU WILL ENTER A PERMANENT LOCKED STATE.[paragraph break]'AFTER TWO MINUTES, ANYTHING REMAINING IN THE SEMEN TANK WILL BE DUMPED INTO YOUR FERTILE [caps pussy]. HOWEVER AS SOON AS THE SEMEN TANK IS EMPTY, ALL THE BONDAGE WILL FALL UNLOCKED AND YOU WILL BE ABLE TO ACCESS THE EXERCISE SHORTS. SO IF YOU DON'T SLACK FOR JUST TWO MINUTES, YOU WILL HAVE SOMETHING TO WEAR WHEN YOU LEAVE.[paragraph break]'FINALLY, IF YOU DO GET CREAMPIED, [if pregnancy fetish is 1]THERE IS A MORNING AFTER PILL WAITING FOR YOU IN YOUR HOUSE. BUT IT WILL BE DESTROYED[otherwise]THE COMPUTER IN YOUR HOUSE WILL UPLOAD A VIDEO RECORDING OF YOUR TIME HERE TO THE INTERNET[end if] EXACTLY 60 SECONDS AFTER THE TANK EMPTIES, SO THERE WILL BE NO TIME TO WASTE [bold type]PURPOSEFULLY EXPELLING[first custom style] OR [bold type]DOUBLING BACK ON YOURSELF[first custom style] ON YOUR WAY HOME.[paragraph break]'GO.'[roman type][line break]";
	say "The analogue timer at the base of the semen tank starts ticking down!";
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
			set numerical response 4 to "do nothing[if black-exercise-shorts is in Predicament01] (this will make the exercise shorts permanently locked away)[end if]";
			if black-exercise-shorts is not in Predicament01, set numerical response 0 to "do nothing for the rest of the predicament";
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
			if black-exercise-shorts is in Predicament01:
				say "A [bold type]*clunk*[roman type] lets you know that the cabinet holding the shorts is now permanently locked tight.";
				destroy black-exercise-shorts;
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
		say "Suddenly, in the same moment, all the bondage holding you falls apart at the seams and clatters to the floor. You are able to pull all three dildos out of your body[if black-exercise-shorts is in Predicament01]. The lock on [NameDesc of E] turns green and the case falls open - you can take and wear the shorts[end if]!";
		if S > 0:
			if the semen volume of belly > 0, say "You want to expel the [semen] from your [asshole], but you'd lose precious time, and [bold type]you only have 60 seconds to race for the [if pregnancy fetish is 1]morning after pill[otherwise]computer to stop the upload[end if]![roman type][line break]";
			if newbie tips is 1, say "[newbie style]Newbie tip: If you [if the semen volume of belly > 0]manually expel your anal creampie or [end if]walk west, or do many other things that waste time, you'll fail to reach your house in time. You will not be penalised for putting on clothes or standing up, but that's about it.[roman type][line break]".

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
				say "[bold type]You arrive just in time to watch with [horror the semen addiction of the player] as the [if pregnancy fetish is 1]morning after pill is released from a metal claw and drops down a drain[otherwise]program executes, uploading the video of your shameful predicament to the Internet[end if]! [roman type]You were so close!";
			otherwise:
				say "[bold type]When you arrive, you can see [if pregnancy fetish is 1]an open metal claw above a drainpipe. [roman type]The morning after pill must have been dropped down here when the timer ran out[otherwise]your computer with a 100% uploaded bar. [roman type]It looks like you were much too late to stop the video of your shameful predicament being uploaded to the Internet...";
			if the pill-timer of triple-dildo-predicament > 1:
				if pregnancy fetish is 1:
					now the pregnancy of the player is 1;
					let M be a random creampie pole trap;
					now M is inseminating vagina;
					now the father is M;
					check sudden pregnancy;
				otherwise if the number of blank rows in the Table of Published Disgraces > 0:
					choose a blank row in Table of Published Disgraces;
					now the content entry is the substituted form of "a high quality video showing you being pumped full of [semen] by three dildos lodged deep inside each of your holes";
					now the published entry is the substituted form of "has been uploaded to www.pronhub.com";
					now the severity entry is 14;
					now the popularity entry is 8;
					now the timestamp entry is earnings;
					now the viewsfuzz entry is a random number between -100 and 100;
					now the lastwitnessed entry is 0;
					now the deletedtime entry is 0;
			now the pill-timer of triple-dildo-predicament is 0;
		otherwise if the player is not in a predicament room:
			now the pill-timer of triple-dildo-predicament is 0. [failsafe]

painted-cutoffs-predicament is a predicament.
painted-cutoffs-predicament has a number called predicament-completed.
Definition: painted-cutoffs-predicament is appropriate:
	if the player is possessing a vagina and ((the predicament-completed of painted-cutoffs-predicament is 0 and the rank of the player is 2) or (the predicament-completed of painted-cutoffs-predicament < 3 and the rank of the player is 3)) and the player is able to get horny, decide yes;
	decide no.
Definition: painted-cutoffs-predicament is eligible:
	if diaper quest is 0 and ((the times-completed of it is 0 and the rank of the player is 2) or (the times-completed of it < 2 and the rank of the player is 3)), decide yes;
	decide no.
Figure of painted cutoffs predicament is the file "Special/Cutscene/cutscene-painted-cutoffs-predicament1.jpg".
To set up bystanders for (P - painted-cutoffs-predicament):
	set up 12 bystanders.
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
	now C is speed;
	now the heel-height of C is 2;
	now the raw-magic-modifier of C is 2;
	summon frilly stockings uncursed;
	now refractoryperiod is 0;
	if the rank of the player < 3:
		now the predicament-completed of painted-cutoffs-predicament is 1;
		say "Suddenly you find yourself standing outside, in an alleyway. Round the corner, the noise of a road and the sound of distant voices can be heard. A robotic voice issues from a speaker in the wall behind you.[line break][first custom style]'WELCOME TO THE [']EXTRA CREDIT['] CLASS. [PredicamentRewardExplanation]TO EARN THIS TROPHY, YOU MUST SIMPLY... RETURN HOME.[paragraph break]'GO.'[PredicamentRewardExplanationReaction][roman type][paragraph break]Looking down at yourself, you begin to realise the challenge. You're wearing a tight pink tube top which shows your nipples straight through it. Your feet are stuck in white stockings and black court heels. And the only other thing on your body is... [UniqueClothingDesc of predicament-painted-cutoffs][variable custom style]Holy crap...[roman type][line break]";
	otherwise:
		say "Suddenly you find yourself standing outside, in an alleyway. On the ground, a heavy wooden box holds a stack of ping pong balls. Round the corner, the noise of a road and the sound of distant voices can be heard. A robotic voice comes from a speaker in the wall behind you.[line break][first custom style]'WELCOME TO THE SUPER FUN [']PING PONG TRANSFER CHALLENGE['] EXTRA CREDIT CLASS. [PredicamentRewardExplanation]THE RULES ARE AS FOLLOWS: MOVE ALL TWENTY PING PONG BALLS FROM THIS BOX TO YOUR DRIVEWAY. THE DOOR TO YOUR HOUSE WILL THEN AUTOMATICALLY UNLOCK.[paragraph break]'GO.'[PredicamentRewardExplanationReaction][roman type][paragraph break]Looking down at yourself, you [if the predicament-completed of painted-cutoffs-predicament is not 0]are wearing the same get-up as before, with a tight pink tube top, white stockings and black court heels. [UniqueClothingDesc of predicament-painted-cutoffs][otherwise]begin to realise the challenge. You're wearing a tight pink tube top which pretty much shows your nipples straight through it. Your feet are stuck in white stockings and black court heels. And the only other thing on your body is... [UniqueClothingDesc of predicament-painted-cutoffs][variable custom style]Holy crap...[roman type][line break][end if]";
		now the predicament-completed of painted-cutoffs-predicament is 3;
		repeat with N running from 1 to 20:
			let E be a random available small egg;
			now E is in Predicament02.

Check going east when the player is in Predicament19:
	if the predicament-completed of painted-cutoffs-predicament is 3 and the number of small egg in the location of the player < 20, say "The door's locked! You need to get all 20 [ShortDesc of a random small egg]s onto the ground here for it to unlock..." instead.

serving-tray-predicament is a predicament.
Definition: serving-tray-predicament is appropriate:
	if the rank of the player is (2 + diaper quest) and the player is able to get horny, decide yes;
	decide no.
To set up bystanders for (P - serving-tray-predicament):
	set up 22 bystanders.

To decide which text is PredicamentActivity of (P - serving-tray-predicament):
	decide on "you giving out free cupcakes in humiliating attire in [if the player is in a park room]a public park[otherwise]your neighbourhood[end if]".
To say PredicamentDescription of (P - serving-tray-predicament):
	say "I'm currently in an Extra Credit lesson where I need to decide to either look extremely slutty or wear a skirt-tray-thing that stimulates me as I serve cupcakes, and then get back to my home while avoiding as many bystanders from noticing me as possible.".

Figure of serving tray predicament 1 is the file "Special/Cutscene/cutscene-predicament-serving-tray1.jpg".
Figure of serving tray predicament 2 is the file "Special/Cutscene/cutscene-predicament-serving-tray2.jpg".
Figure of serving tray predicament 3 is the file "Special/Cutscene/cutscene-predicament-serving-tray3.jpg".
Figure of serving tray predicament 4 is the file "Special/Cutscene/cutscene-predicament-serving-tray4.jpg".
To execute (P - serving-tray-predicament):
	now the player is in Predicament02;
	display entire map;
	summon free samples crop top uncursed;
	let C be a random satin court heels;
	summon C uncursed;
	now C is speed;
	now the raw-magic-modifier of C is 2;
	now the heel-height of C is 2;
	summon frilly stockings uncursed;
	now refractoryperiod is 0;
	summon heart-collar locked;
	now the raw-magic-modifier of heart-collar is 0;
	now heart-collar is blandness;
	if diaper quest is 1:
		let C be plain-largish-diaper;
		summon C uncursed;
		blandify and reveal skirt-tray-vibrator;
		now skirt-tray-vibrator is worn by the player;
		now skirt-tray-vibrator is unskirted;
	otherwise:
		now skirt-tray-vibrator is in Predicament02;
	now the stance of the player is 0;
	say "Suddenly you find yourself standing outside, in an alleyway. Round the corner, the noise of a road and the sound of distant voices can be heard. A robotic voice blares from a speaker in the wall behind you.[line break][first custom style]'WELCOME TO THE [']EXTRA CREDIT['] CLASS. [PredicamentRewardExplanation]THE SKIRT YOU HAVE BEEN PROVIDED COMES WITH A SERVING TRAY. WHENEVER A CAKE IS REMOVED FROM ITS PRESSURE PAD, THE VIBRATOR WILL TURN ON FOR 15 SECONDS. THE INTENSITY OF THE VIBRATION DEPENDS ON HOW MANY CAKES HAVE BEEN TAKEN. IF ALL CAKES ARE REMOVED FROM THEIR PRESSURE PADS, THE VIBRATOR WILL TURN PERMANENTLY ON, STUCK AT MAXIMUM POWER.[paragraph break]'GO.'[PredicamentRewardExplanationReaction][roman type][paragraph break]Looking down at yourself, you begin to realise the challenge. You're wearing a tight pink tube top which shows your nipples straight through it, with the phrase 'FREE SAMPLES' on the front. Your feet are stuck in black court heels. And [if diaper quest is 1 and the player is possessing a vagina]the only other thing on your body is a large white diaper with a subtle hole under your [vagina]. Attached to it and currently in your hands[otherwise if diaper quest is 1]the only other thing on your body is a large white diaper. Attached to it and currently in your hands[otherwise]your bottom half is currently completely naked. On the ground in front of you[end if] is a [skirt-tray-vibrator][paragraph break][ClothingDesc of skirt-tray-vibrator][variable custom style]Holy crap...[roman type][line break]".

maths-sex-predicament is a predicament. maths-sex-predicament can be outfit-stolen.
Definition: maths-sex-predicament is appropriate:
	if the rank of the player >= 3 - diaper quest, decide yes;
	decide no.
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
Definition: a maths-sex-predicament-punishment is appropriate:
	if diaper quest is 0, decide yes;
	decide no.

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
	say "You hear [if diaper quest is 1]a series of electronic tones that sound somewhat disappointed[otherwise]the [man of male-m] harrumph in disappointment, before leaving the way [he of male-m] came[end if].".

condom-anal is a maths-sex-predicament-punishment.
Definition: condom-anal is appropriate:
	if condom fetish >= 2, decide yes;
	decide no.
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
Definition: condom-vaginal is appropriate:
	if the player is possessing a vagina and condom fetish >= 2, decide yes;
	decide no.
To decide which text is the maths-punishment-description of (M - condom-vaginal):
	decide on "Fuck me in the pussy with a condom, then tie it to my belt".
To maths-execute (M - condom-vaginal):
	let A be a random ultimate-lesson-actor;
	say "You hear the [man of A] exclaim with glee!";
	now A is wrapped;
	compute A entering vagina;
	compute maths-sex.

bareback-vaginal is a maths-sex-predicament-punishment.
Definition: bareback-vaginal is appropriate:
	if the player is possessing a vagina and diaper quest is 0, decide yes;
	decide no.
To decide which text is the maths-punishment-description of (M - bareback-vaginal):
	decide on "Fuck me in the pussy bareback and cum inside".
To maths-execute (M - bareback-vaginal):
	let A be a random ultimate-lesson-actor;
	say "You hear the [man of A] exclaim with glee!";
	now A is unwrapped;
	compute A entering vagina;
	compute maths-sex.

jizz-on-me is a maths-sex-predicament-punishment.
Definition: jizz-on-me is appropriate:
	if bukkake fetish is 1, decide yes;
	decide no.
To decide which text is the maths-punishment-description of (M - jizz-on-me):
	decide on "Masturbate until you cum all over my butt".
To maths-execute (M - jizz-on-me):
	say "You hear the [man of male-m] chuckle and whip out [his of male-m] [manly-penis]. It's not long before you hear [him of male-m] grunting and feel the warmth of [his of male-m] seed on your [AssDesc]!";
	AnnouncedSquirt semen on hips by 2;
	say "After that, you hear [him of male-m] leave the way [he of male-m] came.".

spank-my-butt is a maths-sex-predicament-punishment.
Definition: spank-my-butt is appropriate: decide yes.
[To decide which text is the maths-punishment-description of (M - spank-my-butt):
	decide on "Spank my ass 3 times or until you hear me thank you properly".
To maths-execute (M - spank-my-butt):
	say "You hear the [man of male-m] chuckle. And then... THWACK! A strong blow lands on your rear. You let out an involuntary squeal.[line break]Do you ".]
To decide which text is the maths-punishment-description of (M - spank-my-butt):
	decide on "Spank my ass 3 times".
To maths-execute (M - spank-my-butt):
	say "You hear [if diaper quest is 0]the [man of male-m] chuckle[otherwise]a robotic arm whirring into action[end if]. And then... THWACK! A strong blow lands on your rear. You let out an involuntary squeal.";
	PainUp 10;
	if diaper quest is 0:
		say "And then another. THWACK!";
		PainUp 10;
	otherwise:
		say "And then another. THWACK! The thick padding on your rear helps endure the brutal assault, but it still really hurts.";
	say "And finally a third. THWACK! This one stings even more than the other two!";
	PainUp 10;
	if diaper quest is 0, say "Satisfied, the [man of male-m] leaves the way [he of male-m] came.".

spank-my-butt-small is a maths-sex-predicament-punishment.
Definition: spank-my-butt-small is appropriate:
	if diaper quest is 1, decide yes;
	decide no.
To decide which text is the maths-punishment-description of (M - spank-my-butt-small):
	decide on "Spank my ass 2 times".
To maths-execute (M - spank-my-butt-small):
	say "You hear a robotic arm whirring into action. And then... THWACK! A strong blow lands on your rear. You let out an involuntary squeal.";
	PainUp 10;
	say "And then another. THWACK! The thick padding on your rear helps endure the brutal assault, but it still really hurts.".

spank-my-butt-large is a maths-sex-predicament-punishment.
Definition: spank-my-butt-large is appropriate:
	if diaper quest is 1, decide yes;
	decide no.
To decide which text is the maths-punishment-description of (M - spank-my-butt-large):
	decide on "Spank my ass 10 times".
To maths-execute (M - spank-my-butt-large):
	say "You hear a robotic arm whirring into action. And then... THWACK! A strong blow lands on your rear. You let out an involuntary squeal.";
	PainUp 10;
	say "And then another. THWACK! The thick padding on your rear helps endure the brutal assault, but it still really hurts. And you still have eight more to go...";
	PainUp 10;
	say "THWACK! THWACK! THWACK! THWACK! It's almost too much to bear!";
	PainUp 10;
	if the bladder of the player > (bladder-risky-level / 2):
		say "The pain of the spanking episode causes you to involuntarily wet yourself.";
		now delayed urination is 1;
		try urinating;
	say "THWACK! THWACK!";
	PainUp 10;
	if rectum > 1 and rectum < the delicateness of the player:
		say "The pain is so intense you can't help but mess yourself.";
		compute messing;
	say "THWACK! THWACK! By the time it's finished, you are reduced to a quivering mess.";
	PainUp 10.

make-me-cum is a maths-sex-predicament-punishment.
Definition: make-me-cum is appropriate: decide yes.
To decide which text is the maths-punishment-description of (M - make-me-cum):
	decide on "Force me to cum with the wand vibrator".
To maths-execute (M - make-me-cum):
	say "You hear [if diaper quest is 1]a powerful vibrator whirr into motion as it is pressed[otherwise]the [man of male-m] switch on the vibrator in question, and press it[end if] against your [genitals]. It's so strong! It's not long before your legs are shaking and blood is rushing to your head...";
	passively stimulate vagina from drink-machine times 2;
	check for arousal change;
	vaginally orgasm shamefully;
	if diaper quest is 0, say "The [man of male-m] leaves the way [he of male-m] came.".

take-a-photo is a maths-sex-predicament-punishment.
take-a-photo has a number called personal-info-status. [0: undecided; 1: info is there; -1: info is not there]
To decide which text is the maths-punishment-description of (M - take-a-photo):
	decide on "Take a photo and post it online".
To maths-execute (M - take-a-photo):
	if the personal-info-status of take-a-photo is 0:
		if the player is getting lucky, now the personal-info-status of take-a-photo is -1;
		otherwise now the personal-info-status of take-a-photo is 1;
	say "[if the personal-info-status of take-a-photo is 1][one of][speech style of male-m]'Really?! Even though your name, address and photo are printed on the wall next to you?! Okay, if you say so...'[roman type][line break]You squeal with [horror the humiliation of the player / 2000] as you realise that this photo is going to be a lot less anonymous than you had thought.[or][stopping][end if]You hear a digital shutter sound effect, followed by an uploading [']whoosh['].[if the personal-info-status of take-a-photo is 1][line break][variable custom style][one of]Oh god, [or][stopping]I'll never live this down...[roman type][line break][end if]";
	if the personal-info-status of take-a-photo is 0 and the number of blank rows in the Table of Published Disgraces > 0:
		choose a blank row in Table of Published Disgraces;
		now the content entry is the substituted form of "a high quality photo showing your profile and personal details next to your butt, stuck in a hole in a wall, fully exposed[if the used condoms of string-belt is 1], with a used condom pinned to the string tied around your waist[otherwise if the used condoms of string-belt > 1], with [used condoms of string-belt] used condoms pinned to the string tied around your waist[end if]";
		now the published entry is the substituted form of "has been posted on the website amateurmeatholes.com";
		now the severity entry is 3 + the used condoms of string-belt;
		now the popularity entry is 3;
		now the timestamp entry is earnings;
		now the lastwitnessed entry is 0;
		now the deletedtime entry is -1;
		now the viewsfuzz entry is a random number between 11 and 49;
	if diaper quest is 0, say "The [man of male-m] leaves the way [he of male-m] came.".

steal-my-outfit is a maths-sex-predicament-punishment.
Definition: steal-my-outfit is appropriate:
	if maths-sex-predicament is not outfit-stolen, decide yes;
	decide no.
To decide which text is the maths-punishment-description of (M - steal-my-outfit):
	decide on "Steal my clothes for the walk home".
To maths-execute (M - steal-my-outfit):
	say "You hear the [man of male-m] chuckle and reach down to the floor. There must have been some clothes there of some description, because you hear them rustling as the [man of male-m] picks them up and takes [his of male-m] leave.[line break][variable custom style]Wait, so now I'm going to have to walk home naked?![roman type][line break]";
	now maths-sex-predicament is outfit-stolen.

new-ass-tattoo is a maths-sex-predicament-punishment.
Definition: new-ass-tattoo is appropriate:
	if diaper quest is 0 and there is a tattoo in Predicament-Pen and the number of worn asscheek tattoo is 0, decide yes;
	decide no.
To decide which text is the maths-punishment-description of (M - new-ass-tattoo):
	decide on "Write something degrading on my ass with permanent ink".
To maths-execute (M - new-ass-tattoo):
	say "You hear the [man of male-m] chuckle and pull the lid off of a permanent marker. And then you feel [him of male-m] write 'just the tip' on your ass![line break][variable custom style]Really?![roman type][line break]";
	summon just the tip tattoo;
	now just the tip tattoo is predicament-fixed;
	say "The [man of male-m] leaves the way [he of male-m] came, taking the pen with [him of male-m].".

new-ankle-tattoo is a maths-sex-predicament-punishment.
Definition: new-ankle-tattoo is appropriate:
	if there is a tattoo in Predicament-Pen and new-ass-tattoo is not appropriate and spank-me-heart tattoo is not worn, decide yes;
	decide no.
To decide which text is the maths-punishment-description of (M - new-ankle-tattoo):
	decide on "Give me a new ankle tattoo".
To maths-execute (M - new-ankle-tattoo):
	say "You hear the [if diaper quest is 0][man of male-m] think to [himself of male-m] carefully[otherwise]robotic arm whirr into action[end if] and then you hear a tattoo needle being turned on![line break][variable custom style]Uh-oh...[roman type][line break]The needle brings stinging pain with it as it engages with your ankle.";
	PainUp 10;
	summon spank-me-heart tattoo;
	now spank-me-heart tattoo is predicament-fixed;
	say "A few minutes later, you have a brand new tattoo.";
	try examining spank-me-heart tattoo;
	say "[variable custom style]No way... and this is permanent??[roman type][line break]";
	if diaper quest is 0, say "The [man of male-m] leaves the way [he of male-m] came, murmuring to [himself of male-m] about a job well done.".

maths-timer is a number that varies. maths-timer is -100.

To render timer image (F - a figure-name) with background (N - a number):
	let W be map-window-width;
	let H be map-window-height;
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
	let Xi be map-window-x-root + ((W - FXi) / 2); [centre horizontally]
	let Yi be (H - FYi) / 2; [centre vertically]
	draw a rectangle N in the graphics-window at map-window-x-root by 0 with size W by H;
	display the image F in the graphics-window at Xi by Yi with dimensions FXi by FYi.

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
			let W be the graphics-window;
			focus the main window;
			say "[bold type]The timer runs out - you've failed to press any button at all![roman type] Press any key to continue.";
			focus W.

To execute (MSP - maths-sex-predicament):
	now Predicament01 is discovered;
	now the player is in Predicament01;
	say "You find yourself on your hands and knees, stuck in a hole-in-a-wall! The only item of clothing on your entire body is a [if diaper quest is 1]big thick white diaper[otherwise]string belt on your waist[end if]. In front of you sits a control panel with five buttons, labelled from 1 to 5.[line break][first custom style]'WELCOME TO THIS MATHEMATICS-THEMED [']EXTRA CREDIT['] CLASS. SIX INSTRUCTIONS WILL BE PRESENTED IN FRONT OF YOU. THE OPTION YOU CHOOSE WILL BE DISPLAYED ON THE MONITOR ABOVE YOUR LOWER HALF, AND [if diaper quest is 1]EXECUTED BY THE AUTOMATED ROBOTIC ARMS[otherwise]READ BY THE OBEDIENT INSTRUCTION UNDERTAKER WAITING[end if] IN THE ROOM BEHIND YOU, FILMED, AND UPLOADED TO THE INTERNET. THIS WILL OCCUR FIVE TIMES. APOLOGIES, THE INSTRUCTION NUMBER GENERATOR APPEARS TO BE SLIGHTLY MALFUNCTIONING; NUMBERS ARE DISPLAYED IN THE FORM OF MATHEMATICAL SUMS. THERE IS A STRICT TIME LIMIT FOR EACH INSTRUCTION. [if condom fetish >= 2][paragraph break]'THERE IS ALSO A FURTHER BONUS AVAILABLE: ARRIVE HOME WITH FIVE CONDOMS PINNED TO YOUR BELT TO EARN A SECOND TROPHY![end if][paragraph break]'GO.'[paragraph break][variable custom style]Holy crap...[roman type][line break]";
	now the stance of the player is 1;
	if diaper quest is 0:
		if string-belt is not worn, summon string-belt uncursed;
		now string-belt is predicament-fixed;
		now the glue timer of string-belt is 650;
	otherwise:
		summon plain-largish-diaper uncursed;
	let D be game difficulty - 1;
	repeat with N running from 1 to 5:
		let LM be the list of appropriate maths-sex-predicament-punishments;
		let new-shuffle be 1;
		while new-shuffle is 1:
			sort LM in random order;
			truncate LM to 4 entries;
			if condom fetish < 2 or condom-anal is listed in LM or condom-vaginal is listed in LM:
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
		say "[if diaper quest is 0]You hear the sound of the door opening and closing, as [one of]a[or]another[stopping] [man of male-m] walks into the room behind you. [end if]Six new instructions appear on the panel, and the timer immediately starts ticking down! Are you ready to see the options? (The timer will start when you press yes).";
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
			display focus stuff;
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
		say "[if maths-timer <= 0][bold type][end if]Timeout: 'Do what you like.'[roman type][line break]The instruction in bold has just been sent to the screen above your [if diaper quest is 0]exposed ass, and is now being read by the [man of male-m] who has been waiting there for [his of male-m] instruction[otherwise]butt[end if].";
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
	if maths-sex-predicament is outfit-stolen:
		say "[line break][bold type]The hole-in-the-wall widens, releasing you and allowing you to leave at any time via the door. [roman type]You silently stare at the spot on the ground where a few minutes ago, there was probably an outfit for you to wear home, but now there is nothing.";
	otherwise:
		let PMM be a random pink minimalist monokini;
		if diaper quest is 1, now PMM is a random crybaby T-shirt;
		blandify and reveal PMM;
		now PMM is in the location of the player;
		now PMM is predicament-temporary;
		say "[line break][bold type]The hole-in-the-wall widens, releasing you and allowing you to leave at any time via the door. [roman type]On the ground, you have been left an outfit to return home in:[line break]";
		try examining PMM;
		compute autotaking PMM.

Report going when the player is in Predicament19:
	if string-belt is worn and the used condoms of string-belt >= 5 and the number of trophy in Predicament20 < 2:
		let TP be a random off-stage fetish appropriate trophy;
		if TP is trophy, now TP is in Predicament20.

team-enema-predicament is a team-predicament.
Definition: team-enema-predicament is appropriate:
	if the rank of the player >= 4 and (diaper quest is 1 or a2m fetish >= 2) and (diaper quest is 0 or watersports fetish is 1), decide yes;
	decide no.
Figure of team enema predicament is the file "Special/Cutscene/cutscene-predicament-team-enema1.jpg".

To execute (TEP - team-enema-predicament):
	only destroy cheeky schoolgirl outfit;
	now cheeky schoolgirl outfit is in Predicament01;
	now Predicament01 is discovered;
	now the player is in Predicament01;
	now temporaryYesNoBackground is Figure of team enema predicament;
	let M be team-predicament-partner;
	say "Your stomach gurgles horribly. You look around... you're in a very small room, with... what the hell?! [BigNameDesc of M] is bound on [his of M] back on top of a bench, completely unable to move thanks to wrist and thigh bindings. You're both naked. Underneath the grated floor below your feet is what appears to be two sets of clothes. A ring gag in [NameDesc of M][']s mouth keeps it wide and open, pointing towards the ceiling. A robotic voice speaks over some kind of tannoy.[line break][first custom style]'WELCOME TO THE PINK DIAMOND [']EXTRA CREDIT['] CLASS. [if diaper quest is 0]BOTH YOUR BELLIES HAVE BEEN FILLED WITH A VOLUMINOUS SEMEN ENEMA. [end if]IN FIVE MINUTES THE DOOR AND YOUR BONDAGE WILL UNLOCK, AND THE CLOTHES BENEATH THE GROUND WILL BE RELEASED. YOUR [if diaper quest is 0]BELLIES [end if][if watersports fetish is 1 and diaper quest is 0]AND [end if][if watersports fetish is 1]BLADDERS [end if]WILL NEED TO BE HELD, OR... OTHERWISE INGESTED... TO PREVENT YOUR CLOTHES FROM BECOMING SOILED.[paragraph break]'GOOD LUCK. YOUR TIME STARTS NOW.'[paragraph break][variable custom style]Uh-oh...[roman type][line break]";
	let T be 300;
	if diaper quest is 0, now the semen volume of belly is 30;
	if watersports fetish is 1 and the bladder of the player < bladder-risky-level, now the bladder of the player is bladder-risky-level;
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
				check enema holding;
			if the squirt timer of belly > 0:
				now the squirt timer of belly is 0;
				say "You can choose to position your [asshole] over [NameDesc of M][']s mouth, if you wish, to force [him of M] to drink it rather than it going down onto your outfits. Do you squat over [NameDesc of M][']s mouth? ";
				if the player is consenting:
					say "[BigNameDesc of M] moans and tries to shake [his of M] head but to no avail. There's nothing [he of M] can do as you squat over [his of M] face and begin to expel a powerful jet stream of asscum into [his of M] wide open mouth. You can hear [him of M] gagging but [he of M] does [his of M] best to swallow it all, gulp after gulp, although you're not sure how much of it is because [he of M] agrees it's the best course of action, and how much of it is because [he of M] needs to swallow it in order to be able to breathe properly.[line break]It takes a number of long painful seconds before the flow of [semen] from your [asshole] begins to peter out, and eventually stops. By the time you're done, you've just force-fed [NameDesc of M] what must be over a litre of thick warm anal creampie.";
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
					compute guaranteed bladder growth;
				if delayed urination > 0:
					say "[if delayed urination is 1]You can't hold it any more! You involuntarily[otherwise]You[end if] release your hold on your bladder, and have to make a super quick decision - you can choose to position your [genitals] over [NameDesc of M][']s mouth, if you wish, to force [him of M] to drink it rather than it going down onto your outfits. Do you squat over [NameDesc of M][']s mouth? ";
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
					progress temporary incontinence;
			increase BL by 1;
		if diaper quest is 0, increase SB by 1;
		repeat with LX running from 1 to 2:
			let L be semen;
			let LN be SB;
			if LX is 2:
				now L is urine;
				now LN is BL;
			if LN > a random number between 6 and 20:
				say "[BigNameDesc of M] wriggles and lets out a panicked 'Eeee!' You can tell [he of M][']s about to [if L is urine]piss [himself of M][otherwise]expel [his of M] [semen] enema[end if]. There's only one thing you could do to prevent the [variable L] flowing onto the clothing below your feet - you'd have to take it into your mouth. Do you ready your mouth in front of [NameDesc of M][']s crotch? ";
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
								StomachUrineUp 3;
							otherwise:
								StomachSemenUp 3;
							FavourUp M by 1;
						otherwise:
							now WL is 1;
						decrease LN by 6;
						if L is semen, SlowGrossOut 10;
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
							StomachUrineUp 3;
						otherwise:
							StomachSemenUp 3;
							TasteGrossOut 10;
			if L is urine, now BL is LN;
			otherwise now SB is LN;
		if the stomach-liquid of the player > 3, StomachDown (the stomach-liquid of the player / 3);
	say "As the timer hits 0, a latch on the grate underneath your feet opens, allowing you access to the outfits. [BigNameDesc of M][']s bondage all clicks open, releasing [him of M]. [big he of M] is still having some trouble removing the ring gag from [his of M] jaw, so [he of M] just mutters some frustrated noises towards you before retrieving one of the [ShortDesc of cheeky schoolgirl outfit]s and making for the now-unlocked door.";
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
	if diaper quest is 1 and the raw-bladder-incontinence of the player >= the max-bladder-incontinence of the player, decide no;
	if diaper quest is 0 and (a2m fetish < 2 or the player is barbie), decide no;
	decide yes.
To set up bystanders for (P - team-quiz-predicament):
	if quiz-partner is on-stage, set up 13 bystanders;
	otherwise set up 21 bystanders.
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
	now quiz-partner is predicament-fixed;
	now the bound-target of quiz-partner is ST;
	now the player is in Predicament01;
	say "Your stomach gurgles horribly. You look around... you're in a very small room, screens on all sides, and with... what the hell?! ";
	if diaper quest is 1:
		if diaper messing >= 7 and asshole is not actually occupied, now rectum is 30;
		let D be a random off-stage diaper;
		if there is an off-stage massive diaper, now D is a random off-stage massive diaper;
		summon D locked;
		now the bottom-layer of D is 1;
		now the bottom-layer of quiz-partner is 2;
		say "You are kneeling in front of [NameDesc of ST], wristcuffs connected tightly to thigh binds by short red rope. More red rope connects [NameDesc of ST][']s collar with your anklecuffs via D-rings in your thigh binds, which means that the seat of your new large white diaper is pushed into [his of ST] entire face. To complete the predicament, [NameDesc of ST][']s own ankles and thighs are tightly bound together. So, every time you try to crawl around, [he of ST][']ll be forced to follow you and [his of ST] face will be repeatedly smushed into your diaper.[paragraph break]Your [if rectum >= 30 and asshole is not actually occupied]bowels are[otherwise]bladder has[end if] somehow filled to the point where it's actually painful![line break][variable custom style]'Ow ow ow[one of]! What the hell is going on?!'[or]!'[stopping][roman type][line break]";
	otherwise:
		if the player is possessing a vagina and the number of worn clitoris piercing is 0:
			say "You realise you now have a cold metal clitoris piercing. ";
			summon normal clit piercing;
			now normal clit piercing is predicament-fixed;
		otherwise if the player is possessing a penis:
			say "You realise you have a metal ring clamped around the [if the player is possessing a scrotum]top of your scrotum[otherwise]base of your penis[end if]. It feels weird, and you certainly won't be able to get it off [if the player is possessing a scrotum]past your balls [end if]any time soon. ";
		say "It is somehow stuck attached to a tongue piercing, which in turn is... pierced in [ST][']s mouth.[line break][variable custom style]Uh-oh.[roman type][line break]Yes, that's right, you're on all fours, with [NameDesc of ST] stuck behind you and [his of ST] tongue forced to stretch out as if waiting for a serving from your [asshole]. Your belly gurgles again, and you realise that your innards are indeed completely, painfully full of something goopy and nasty...";
		if the total fill of belly < belly limit - 5:
			if watersports fetish is 1, increase the urine volume of belly by ((belly limit - 5) - total fill of belly);
			otherwise AssFill ((belly limit - 5) - total fill of belly);
	say "[first custom style]'WELCOME TO THE RUBY [']EXTRA CREDIT['] CLASS. THERE ARE 60 SECONDS IN BETWEEN QUESTIONS. ANSWER TWO QUESTIONS IN A ROW CORRECTLY TO HAVE YOUR [if diaper quest is 1]BONDAGE[otherwise]PIERCINGS[end if] RELEASED. ANSWER THREE QUESTIONS IN A ROW CORRECTLY TO HAVE THE PROVOCATIVE OUTFITS RELEASED. ANSWER FOUR QUESTIONS IN A ROW CORRECTLY TO HAVE THE COCKTAIL DRESSES RELEASED. THE GAME ENDS AFTER TWO INCORRECT ANSWERS OR WHEN THE DOOR IS OPENED. REWARDS ARE ONLY DISTRIBUTED AFTER QUESTIONS END.'[paragraph break]'GOOD LUCK. YOUR TIME STARTS NOW.'[paragraph break][variable custom style]Uh-oh...[roman type][line break][BigNameDesc of ST] squeals with anxiety from below you.[line break][speech style of ST]'What?! Oh no! [if ST is nasty student]Don't you dare[otherwise][big please] don't[end if] [if diaper quest is 1]go[otherwise]squirt that disgusting stuff out[end if] on my face, [NameBimbo]...'[roman type][line break][BigNameDesc of ST] does not sound amused at all!";
	zero focus stuff;
	maybe-map-display quiz-partner;
	display focus stuff;
	force immediate clothing-focus redraw;
	repeat with Q running through team-quiz-predicament-questions:
		reset Q.

An all time based rule (this is the team quiz predicament time rule):
	if current-predicament is team-quiz-predicament:
		if the player is in Predicament01 and the questionFails of team-quiz-predicament < 2 and maxQuestionWins of team-quiz-predicament < 4 and currently-squirting is 0:
			onlycutshow quiz-partner;
			let L be team-quiz-predicament;
			if questionExpelled of L is 0:
				let QFL be the questionFails of L + the maxQuestionWins of L;
				if diaper quest is 1 and diaper messing is 7 and asshole is not actually occupied:
					check real messing;
				otherwise if QFL is 2 or QFL >= 4:
					say "You feel your [if diaper quest is 1]bladder[otherwise]sphincter[end if] beg to allow itself to be loosened. You know if you resist, [if diaper quest is 1]your bladder will become a bit more irritable[otherwise]it'll really hurt[end if]. Do you hold it in?";
					now temporaryYesNoBackground is figure of quiz predicament room;
					if the player is consenting:
						say "You hold on with everything you've got.";
						if diaper quest is 1:
							SilentlyIrritableBladderUp 5;
							if the raw-bladder-incontinence of the player >= the max-bladder-incontinence of the player:
								say "But it's no use! ";
								now questionExpelled of L is 1;
						otherwise:
							PainUp 10;
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
			if the questionFails of L < 2 and the maxQuestionWins of L < 4, say "The screens all around you display the same words, followed by [first custom style]'next question in 59 secs...'[roman type][line break]".

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
			if the questionExpelled of L is 0 and the questionFails of L is 0, FavourUp ST;
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
		conclude quiz of L;
	otherwise if the maxQuestionWins of L >= 4:
		say "Now that you have gotten four questions in a row correct, the screens change colour to black and the quiz ends.";
		conclude quiz of L.

To conclude quiz of (L - team-quiz-predicament):
	let ST be team-predicament-partner;
	if maxQuestionWins of L > 1:
		say "The [if diaper quest is 1]bondage keeping you kneeling on top of [NameDesc of ST][']s face disappears[otherwise]piercings separate[end if]! [BigNameDesc of ST] can finally take [his of ST] face away from your ass.";
		if maxQuestionWins of L > 2:
			blandify and reveal backless negligee;
			now backless negligee is in the location of the player;
			now backless negligee is predicament-temporary;
			say "Two naughty bedroom outfits fall from a container attached to the ceiling!";
			say FullExamineDesc of backless negligee;
			if maxQuestionWins of L > 3:
				let N be a random white slut clubbing dress;
				blandify and reveal N;
				now N is in the location of the player;
				now N is predicament-temporary;
				now the raw-magic-modifier of N is 2;
				say "Two slutty cocktail dresses fall from another container next to the first!";
				HappinessUp ST by 1;
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
Definition: quiz-woods-candy is appropriate:
	if there is a candy machine in a placed jungle room and the askedAlready of it is 0, decide yes;
	decide no.
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
Definition: quiz-fairies is appropriate:
	if Woods01 is placed, decide yes;
	decide no.
To say question for (Q - quiz-fairies):
	say "How many fairies are there in the woods right now";
To set up (Q - quiz-fairies):
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is the number of alive fairy;
	set up number answers for Q.

quiz-tentacles is a team-quiz-predicament-question.
Definition: quiz-tentacles is appropriate:
	if tentacle fetish is 1 and the number of alive tentacle monsters < 10, decide yes;
	decide no.
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
Definition: quiz-junk is appropriate:
	if the number of clothing in School15 < 10, decide yes;
	decide no.
To say question for (Q - quiz-junk):
	say "How many items of clothing are there in the junk room right now";
To set up (Q - quiz-junk):
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is the number of clothing in School15;
	set up number answers for Q.

quiz-diaper-pail-dispose-count is a team-quiz-predicament-question.
Definition: quiz-diaper-pail-dispose-count is appropriate:
	if diaper messing >= 6 and diaper-pail-dispose-count < 10, decide yes;
	decide no.
To say question for (Q - quiz-diaper-pail-dispose-count):
	say "How many diapers have you disposed of in diaper pails";
To set up (Q - quiz-diaper-pail-dispose-count):
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is diaper-pail-dispose-count;
	set up number answers for Q.

quiz-wealth is a team-quiz-predicament-question.
Definition: quiz-wealth is appropriate:
	if the wealth of the player > 0 and the wealth of the player < 10, decide yes;
	decide no.
To say question for (Q - quiz-wealth):
	say "What's the total value of all the jewellery you're wearing";
To set up (Q - quiz-wealth):
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is the wealth of the player;
	set up number answers for Q.

team-quiz-predicaments is a team-quiz-predicament-question.
Definition: team-quiz-predicaments is appropriate:
	if totalLessonCount < 10, decide yes;
	decide no.
To say question for (Q - team-quiz-predicaments):
	say "How many lessons have you attended";
To set up (Q - team-quiz-predicaments):
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is totalLessonCount;
	set up number answers for Q.

quiz-orgasms is a team-quiz-predicament-question.
Definition: quiz-orgasms is appropriate:
	if totalOrgasmCount < 10, decide yes;
	decide no.
To say question for (Q - quiz-orgasms):
	say "How many orgasms have you had";
To set up (Q - quiz-orgasms):
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is totalOrgasmCount;
	set up number answers for Q.

quiz-snacks is a team-quiz-predicament-question.
Definition: quiz-snacks is appropriate:
	if snacks-found < 10, decide yes;
	decide no.
To say question for (Q - quiz-snacks):
	say "How many beneficial snacks have you found in containers";
To set up (Q - quiz-snacks):
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is snacks-found;
	set up number answers for Q.

quiz-patrons is a team-quiz-predicament-question.
Definition: quiz-patrons is appropriate:
	if patronbed uses > 0 and patronbed uses < 10, decide yes;
	decide no.
To say question for (Q - quiz-patrons):
	say "How many times have you worked as a [if diaper quest is 1]professional baby slave[otherwise]whore[end if] at a hotel bed";
To set up (Q - quiz-patrons):
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is patronbed uses;
	set up number answers for Q.

quiz-throne is a team-quiz-predicament-question.
Definition: quiz-throne is appropriate:
	if timesSat of the throne < 10, decide yes;
	decide no.
To say question for (Q - quiz-throne):
	say "How many times have you sat on the royal throne";
To set up (Q - quiz-throne):
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is timesSat of the throne;
	set up number answers for Q.

smoothie-predicament is a predicament.
Definition: smoothie-predicament is appropriate:
	if diaper messing > 3 and the rank of the player > 1, decide yes;
	decide no.
smoothie-predicament has a number called bananas-left.
smoothie-predicament has a number called smoothies-served.
To set up bystanders for (P - smoothie-predicament):
	set up 24 bystanders.
To say PredicamentDescription of (P - smoothie-predicament):
	say "I'm currently in an Extra Credit lesson where I need to [if smoothie gag is worn]serve smoothies as fast as possible so I can escape this van, while trying to minimise how much they force me to drink myself, and then I need to [end if]get back to my home while avoiding as many bystanders from noticing me as possible.".

Definition: smoothie-predicament is always-perceiving:
	if smoothie gag is stuck, decide yes; [when you are serving smoothies, people can't fail to notice you]
	decide no.

smoothie van is a thing. smoothie van is not portable. The printed name of smoothie van is "[TQlink of item described]smoothie van[TQxlink of item described]". The text-shortcut of smoothie van is "smvn".
To say ExamineDesc of (C - smoothie van):
	say "You are standing inside a mobile van, in front of a serving window, and lots of equipment with which to make smoothies[if there is a bystander in the location of C]. Bystanders can't tell you are locked in place and diapered[end if].".
Figure of smoothie van opaque is the file "Env/School/smoothievan1.jpg".
Figure of smoothie van X-ray is the file "Env/School/smoothievan2.jpg".
To decide which figure-name is examine-image of (C - smoothie van):
	if there is a bystander in the location of C, decide on figure of smoothie van opaque;
	decide on figure of smoothie van X-ray.

To execute (L - smoothie-predicament):
	now the stance of the player is 0;
	now the fatigue of the player is 0;
	now the bananas-left of smoothie-predicament is 4;
	summon smoothie gag locked;
	now smoothie gag is stuck;
	summon smoothie-apron;
	now smoothie-apron is predicament-fixed;
	summon pink-huge-diaper locked;
	now the player is in Predicament03;
	if tough-shit is 0, reset rectum;
	now the stomach-food of the player is 1;
	now the stomach-water of the player is 3;
	now the bladder of the player is 1;
	now the delayed bladder of the player is 0;
	say "Your mouth is forced open by the appearance of a new tube gag. What the hell?! You look around. You are standing inside a mobile van, in front of a serving window, and lots of equipment with which to make smoothies. Your ankles are chained to the ground beneath you, preventing you from leaving - not that your customers will be able to see this. A tube leads upwards from your tube gag to a funnel attached to the top of the window. Anyone could pour liquids down that, and force you to drink them! For clothing, you can see you are wearing a white top and a green apron that can barely hide the massive pink diaper sitting behind it. You are parked on a road opposite a park. A mechanical voice begins to explain your predicament.[line break][first custom style]'THE RULES ARE AS FOLLOWS: [PredicamentRewardExplanation]TO EARN THIS TROPHY, YOU MUST SIMPLY RETURN HOME - YOUR HOUSE IS ON THE OTHER SIDE OF THIS PARK. SERVE SIX CUSTOMERS TO BE RELEASED. SERVE NINE CUSTOMERS TO EARN A BONUS EXTRA TROPHY. A SIGN ON THE FRONT OF YOUR VAN ENCOURAGES CUSTOMERS WHO ARE NOT ENJOYING THEIR DRINK TO FORCEFEED YOU THE REST. GOOD LUCK.'[PredicamentRewardExplanationReaction][roman type][line break]";
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
		set numerical response 3 to "higher proportion of prunes - unpleasant taste if you are made to drink any";
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
			if the bystanderInt1 of M < 5 and suppository is 0, now suppository is 1;
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
			unlock smoothie gag;
			say "Remove the gag immediately? ";
			if the player is consenting, try taking off smoothie gag;
		if the smoothies-served of smoothie-predicament is 9:
			let TP be a random off-stage fetish appropriate trophy;
			if TP is trophy, now TP is in Predicament20;
			say "[bold type]You hear a loud triumphant 'BEEP' letting you know you have served 9 smoothies and therefore earned yourself an extra trophy!";
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
		if CNR is 3, TasteGrossOut 5;
	otherwise if the bystanderInt1 of M < 3:
		say "[BigNameDesc of M] [if CNR is 2]takes a fair few gulps before pulling away, looking satisfied and full[otherwise]drinks several mouthfuls before [he of M] pulls it away, an undecided look on [his of M] face[end if]. [big he of M] then moves to pour the half-full cup down the funnel. You are forced to gulp and swallow the rest of [his of M] [if CNR is 2]thick and heavy [end if]drink...[SmoothieUnhappy of M]";
		StomachFoodUp 2;
		if CNR is 3, TasteGrossOut 4;
	otherwise if the bystanderInt1 of M < 5:
		say "[BigNameDesc of M] [if CNR is 2]swallows a number of big mouthfuls before eventually pulling away, looking extremely full[otherwise]drinks the majority of the cup before releasing it with a satisfied sigh[end if]. Still, there is a bit left in the cup. [SmoothieAlmostHappy of M]";
		StomachFoodUp 1;
		if CNR is 3, SlowGrossOut 4;
	otherwise:
		say SmoothieHappy of M;

To say SmoothieDisgusted of (M - a bystander):
	say "[line break][speech style of M]'[one of]Satisfaction guaranteed, eh?! This is disgusting[or]This is not my sort of drink at all[or]Yuck[at random].'[roman type][line break]".

To say SmoothieUnhappy of (M - a bystander):
	say "[line break][speech style of M]'[one of]It was okay, I guess[or]I'm not going to lie, I didn't really enjoy it[or]I think I might just not be a fan of prunes. Sorry[at random].'[roman type][line break]".

To say SmoothieAlmostHappy of (M - a bystander):
	say "[big he of M] shrugs before obeying the instructions and pouring the rest down the funnel. You are forced to gulp and swallow the remaining couple of mouthfuls.[line break][speech style of M]'[one of]Sorry, couldn't quite finish it[or]That was good, but just a bit much for me[at random].'[roman type][line break]".

To say SmoothieHappy of (M - a bystander):
	say "[BigNameDesc of M] greedily gulps down the entire thing, clearly really enjoying it.[line break][speech style of M]'[one of]Thanks a lot[or]That was great, just as you promised[at random]!'[roman type][line break]".

photo-display-predicament is a predicament.
Definition: photo-display-predicament is appropriate:
	if diaper quest is 0 and the rank of the player > 2 and the player is not shameless, decide yes;
	decide no.

To set up bystanders for (P - photo-display-predicament):
	set up 11 bystanders.

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
	let M be a random off-stage fetish appropriate normal-monokini;
	only destroy M;
	now the raw-magic-modifier of M is 1;
	now M is sure;
	now M is identified;
	now M is speed;
	now M is bland;
	now M is in Predicament01;
	now the player is in Predicament01;
	say "You find yourself standing upright in a small glass cage, on top of what looks like a stage, in an empty bar. A large ring gag is tightly held in place by thick leather straps, keeping your mouth wide open. The ring is connected to a clear wide tube that splits in two, each tube bending up to a vertical angle where they end in even wider funnels, securely bolted to the wall behind you. Dispensing tubes sit pointing downwards above each of the funnels. Below your collared neck, you are completely naked except for two separate anklecuffs that are also bolted into the wall behind you, preventing you from moving your legs at all, never mind crossing them. You notice a sign on the front of the glass cage which reads 'PHOTOS OK!', which makes you instinctively cover your nipples and [genitals] with your arms and hands.[paragraph break]And then, a huge crowd of men starts to enter! Chatting to each other loudly, they file in and begin to crowd round, every eye on you. Some cheer and wolf-whistle. You whimper with embarrassment at them seeing you naked, and double-check that your rude bits are definitely covered by your arms and hands.";
	say "[first custom style]'We've got a very special strip show for you today, gentlemen!'[roman type][line break]An announcer speaks over a speaker system from an unseen location.[line break][first custom style]'As you know, we've been collecting the donations of semen from you lot and all our other patrons over the course of the last few months and keeping it all on ice. And today it's all getting used! The container has just finished defrosting, and now those pints of warm cum are ready for today's game! In the [']hot seat['] today we have the lovely [NameBimbo], a shy young slut who's completely new to the adult scene! [big he of the player][']s all locked up in our [']Predicament Cage['], where in a brief minute your cum will begin to be dispensed from those two tubes directly above the two funnels leading to [his of the player] mouth! The only way [he of the player] can prevent [himself of the player] from being force-fed all that thick salty goodness is to try and block the entrances to the funnels with [his of the player] hands, redirecting as much of the flow as possible away from those feeding tubes. But of course, [his of the player] hands seem quite busy right now protecting [his of the player] dignity! And as you can see from the sign, photos and videos are allowed and encouraged! We want you to spread the footage of today's event across the entire Internet! Make sure to completely expose [NameBimbo] for the whore that [he of the player] is! Make sure to include the name of our home town in the details of your uploads![roman type][line break]";
	say "Some sort of vent is closed and the excited cheering from the crowd becomes muffled. You can tell that the final part of the announcer's explanation is for your ears only.[line break][first custom style]'There are two outfits you can be walking home in today, [cunt]. The first is that ludicrously tiny slinkini that won't even cover your nips, that you can see hanging up in the left corner of the room. But... if you [bold type]hold up two peace signs[first custom style] instead of covering yourself or the funnels, we'll give you the option of taking that [ShortDesc of M] hanging up in the right hand corner of the room instead. The choice is yours... do you want to look more like a whore on the walk home, when people can reach you and touch you and perhaps molest you, or right now in front of the crowd, and when you see the footage that's been uploaded to the Internet?'[roman type][line break]The vent is opened again, and the sound of the crowd clamouring for the event to start is the only thing you can hear.";
	say "After a couple of tense seconds, a mechanical pumping sound heralds the arrival of a flow of [semen]! You can see it about to start to drip down into the funnels. ";
	now temporaryYesNoBackground is figure of photo display predicament;
	now bigGameLoop is 3; [tells the game not to refresh any windows]
	let peaceSignUsed be 0; [SB means semen blocked, SD means semen drunk]
	[let timeRemaining be (a random number between 5 and 6) + (a random number between 0 and 1);
	while timeRemaining > 0:
		let SB be 0;
		let SD be 2;
		say "What do you do?";
		reset multiple choice questions;
		set numerical response 1 to "cover both funnels, exposing everything";
		set numerical response 2 to "cover your [genitals], exposing your [ShortDesc of breasts] and blocking half the [semen]";
		set numerical response 3 to "cover your [genitals] and [ShortDesc of breasts], drinking all the [semen]";
		set numerical response 4 to "hold up peace signs, exposing everything and drinking the all the [semen]";
		compute multiple choice question;
		let T be "collared, naked, and drinking [semen] via a tube gag";
		let A be 15;
		if player-numerical-response is 1:
			say "You block both funnels with your hands. The men whoop, laugh and make obscene gestures as they take photos of your [ShortDesc of breasts] and [if the player is herm]dual genitals[otherwise if the player is possessing a penis][ShortDesc of penis][otherwise if the player is possessing a vagina][vagina][otherwise]featureless crotch[end if]. [strongHumiliateReflect]";
			now T is "collared, naked, and holding your arms up above your body instead of protecting your modesty";
			now SB is 2;
			now SD is 0;
		otherwise if player-numerical-response is 2:
			say "You hold one hand in front of your crotch and block the left hand funnel with your other hand. The men make entertained sounds as they take photos of your [ShortDesc of breasts]. [moderateHumiliateReflect]";
			now T is "collared, naked, and holding one hand over your [if the player is herm][genitals][otherwise if the player is possessing a penis][ShortDesc of penis][otherwise if the player is possessing a vagina][vagina][otherwise]groin[end if]";
			now A is 9;
			now SB is 1;
			now SD is 1;
		otherwise if player-numerical-response is 3:
			say "You hold one hand in front of your crotch and use your other arms to protect your nipples. The men cackle as they watch you guzzle down their collective [semen] and ready their smartphones in preparation for if and when you expose your rude bits.";
			now A is 6;
			now T is "collared, naked, and holding your arms in front of your [ShortDesc of breasts] and [genitals] to protect your modesty";
		otherwise:
			say "The crowd [if peaceSignUsed is 0]breaks into a frenzied roar of excitement as you hold your hands up into peace signs in front of them. Clearly they don't know about your special instructions and think you're just doing it because you're such an exhibitionist, [semen] addicted slut[otherwise]once again roars with wild excitement[end if]. Countless photos and videos are taken of your cringeworthy pose.";
			now T is "collared, naked, and holding your hands up in enthusiastic peace signs while being fed [semen] through a tube gag";
			now A is 19;
			increase peaceSignUsed by 1;
		if SD > 0:
			say "You are forced to gulp down the [if SD > 1]double-helping of [end if]thick salty [semen].";
			if the player is overly full:
				say "Your belly groans in pain as it is forced to accommodate even more liquid!";
				PainUp 10;
			StomachSemenUp SD;
		if SB > 0:
			say "Some of the [semen] blocked from the funnel[if SB > 1]s[end if] by your hand[if SB > 1]s[end if] drips down your arm[if SB > 1]s[end if] and onto your thigh[if SB > 1]s[end if].";
			AnnouncedExpel semen on thighs by SB;
		repeat with XXX running from 1 to 2:
			let N be (XXX * 3) - (a random number between 0 and 1);
			let SW be a random number between 1 and 6;
			let W be "[if SW < a random number between 3 and 5][sluttyWebsite][otherwise]www.slutsfromyourhometown.com[end if]";
			if the number of blank rows in the Table of Published Disgraces > 0:
				choose a blank row in Table of Published Disgraces;
				now the content entry is the substituted form of "[if N < 1]a low resolution photo[otherwise if N < 3]a high resolution photo[otherwise if N < 5]an animated gif[otherwise]a high quality video[end if] showing you [T]";
				now the published entry is the substituted form of "has been [one of]uploaded to[or]posted on[purely at random] [W]";
				now the severity entry is SW;
				now the popularity entry is N;
				now the timestamp entry is earnings;
				now the viewsfuzz entry is a random number between -100 and 100;
				now the lastwitnessed entry is 0;
				now the deletedtime entry is -1;
		decrease timeRemaining by 1;
		if timeRemaining > 0, say "The [semen] keeps coming! [if the player is overly full][bold type][one of]Since your stomach is overly full, if[or]If[stopping] you drink any more [semen] it's going to be painful.[roman type][line break][end if]";
	say "Finally a buzzer sounds and the [semen] stops flowing. The men, all very aroused and very pleased with themselves, begin to disperse and leave the way they came. Soon enough you are left alone with your shame. Finally, your bondage is released and a pneumatic system hisses as the glass cage opens in front of you, freeing you.";]
	let SB be 0;
	let SD be 4;
	say "What do you do?";
	reset multiple choice questions;
	set numerical response 1 to "cover both funnels, exposing everything";
	set numerical response 2 to "cover your [genitals], exposing your [ShortDesc of breasts] and blocking half the [semen]";
	set numerical response 3 to "cover your [genitals] and [ShortDesc of breasts], drinking all the [semen]";
	set numerical response 4 to "hold up peace signs, exposing everything and drinking the all the [semen]";
	compute multiple choice question;
	let T be "collared, naked, and drinking [semen] via a tube gag";
	let A be 15;
	if player-numerical-response is 1:
		say "You block both funnels with your hands. The men whoop, laugh and make obscene gestures as they take photos of your [ShortDesc of breasts] and [if the player is herm]dual genitals[otherwise if the player is possessing a penis][ShortDesc of penis][otherwise if the player is possessing a vagina][vagina][otherwise]featureless crotch[end if]. [strongHumiliateReflect]";
		now T is "collared, naked, and holding your arms up above your body instead of protecting your modesty";
		now SB is 4;
		now SD is 0;
	otherwise if player-numerical-response is 2:
		say "You hold one hand in front of your crotch and block the left hand funnel with your other hand. The men make entertained sounds as they take photos of your [ShortDesc of breasts]. [moderateHumiliateReflect]";
		now T is "collared, naked, and holding one hand over your [if the player is herm][genitals][otherwise if the player is possessing a penis][ShortDesc of penis][otherwise if the player is possessing a vagina][vagina][otherwise]groin[end if]";
		now A is 9;
		now SB is 2;
		now SD is 2;
	otherwise if player-numerical-response is 3:
		say "You hold one hand in front of your crotch and use your other arms to protect your nipples. The men cackle as they watch you guzzle down their collective [semen] and document your humiliating [semen] guzzling experience on video.";
		now A is 6;
		now T is "collared, naked, and holding your arms in front of your [ShortDesc of breasts] and [genitals] to protect your modesty";
	otherwise:
		say "The crowd breaks into a frenzied roar of excitement as you hold your hands up in peace signs in front of them. Clearly they don't know about your special instructions and think you're just doing it because you're such an exhibitionist, [semen] addicted slut. Countless photos and videos are taken of your cringeworthy pose.";
		now T is "collared, naked, and holding your hands up in enthusiastic peace signs while being fed [semen] through a tube gag";
		now A is 19;
		increase peaceSignUsed by 1;
	while SD > 0:
		decrease SD by 1;
		if the total volume of face is 0, say "Your mouth rapidly fills with thick salty [semen]. ";
		FaceFill semen by 4;
		say "[if SD is 0]It looks like this is the last of it - after this you'll be all done[otherwise if SD is 1]It looks like you've got one more helping to come after this one[otherwise]And it looks like you've got about [SD] times as much as this still to come[end if].";
	while SB > 0:
		decrease SB by 1;
		say "Some of the [semen] blocked from the funnel[if SB > 1]s[end if] by your hand[if SB > 1]s[end if] drips down your arm[if SB > 1]s[end if] and onto your thigh[if SB > 1]s[end if].";
		AnnouncedExpel semen on thighs by SB;
	repeat with XXX running from 1 to 2:
		let N be (XXX * 3) - (a random number between 0 and 1);
		let SW be a random number between 1 and 6;
		let W be "[if SW < a random number between 3 and 5][sluttyWebsite][otherwise]www.slutsfromyourhometown.com[end if]";
		if the number of blank rows in the Table of Published Disgraces > 0:
			choose a blank row in Table of Published Disgraces;
			now the content entry is the substituted form of "[if N < 1]a low resolution photo[otherwise if N < 3]a high resolution photo[otherwise if N < 5]an animated gif[otherwise]a high quality video[end if] showing you [T]";
			now the published entry is the substituted form of "has been [one of]uploaded to[or]posted on[purely at random] [W]";
			now the severity entry is SW;
			now the popularity entry is N;
			now the timestamp entry is earnings;
			now the viewsfuzz entry is a random number between -100 and 100;
			now the lastwitnessed entry is 0;
			now the deletedtime entry is -1;
	say "Finally a buzzer sounds and the [semen] stops flowing. The men, all very aroused and very pleased with themselves, begin to disperse and leave the way they came. Soon enough you are left alone with your shame. Finally, your bondage is released and a pneumatic system hisses as the glass cage opens in front of you, freeing you.";
	if peaceSignUsed is 0:
		say "The hook holding [NameDesc of M] rises towards the ceiling, pulling it far out of your reach[if the player is modest]. You already regret your decision not to make the peace signs[end if]...";
		only destroy M;
		zero focus stuff;
	now bigGameLoop is 0; [tells the game to refresh windows again]
	conclude consenting.

sex-toy-predicament is a predicament.
Definition: sex-toy-predicament is appropriate:
	if the rank of the player is 1, decide yes;
	decide no.
To say PredicamentDescription of (P - sex-toy-predicament):
	say "I'm currently in an Extra Credit lesson where I need to get the key to my house by finding two sex toys, one at the angel statue and the other in the men's toilets. Then I need to bring them back to the starting room and drop them, and finally get back to my home while avoiding as many bystanders['] notice as possible.".

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
	if diaper quest is 0, now C is pink-catsuit;
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
	now ST is predicament-fixed;
	now the raw-magic-modifier of ST is 0;
	now the size of ST is the insertableGirthAcceptance of asshole - 3;
	if the player is possessing a vagina, now the size of ST is the insertableGirthAcceptance of vagina - 3;
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
	now ST is predicament-fixed;
	now the raw-magic-modifier of ST is 0;
	now the size of ST is the insertableGirthAcceptance of asshole - 3;
	if ST is mamba, now the size of ST is the insertableGirthAcceptance of asshole;
	if the size of ST < 1, now the size of ST is 1;
	now ST is in Toilet01;
	now the printed name of Predicament01 is "Small Room";
	now the player is in Predicament01;
	say "You find yourself in a small room, empty except for a wardrobe, a small table and a front door that leads outside. You are completely naked. The table has a card on it with the heading 'INSTRUCTIONS' on it. You read the instructions:[paragraph break][first custom style]'WELCOME TO EXTRA CREDIT CLASS. [PredicamentRewardExplanation]TO EARN THIS TROPHY, YOU MUST FIND THE TWO SEX TOYS HIDDEN IN THE PARK AND PLACE THEM ON THIS TABLE. ONLY THEN WILL THE KEY TO YOUR FRONT DOOR BE RELEASED. ONE SEX TOY IS HIDDEN IN THE MEN'S TOILETS. THE OTHER IS HIDDEN BEHIND THE STATUE. CONSIDER YOUR OUTFIT CAREFULLY, AS KEEPING THE TOYS HIDDEN MAY NOT BE EASY...'[PredicamentRewardExplanationReaction][roman type][line break]It looks like you are going to look a bit eye-catching no matter what you wear, but at least you've been given a bit of choice. You consider the warning from the card. [if diaper quest is 1]Would wearing the diaper really[otherwise]Which of these would best[end if] help you... 'hide' the sex toys?";

An all time based rule:
	if current-predicament is sex-toy-predicament and the player is in Predicament01 and (the number of sex toys in Predicament01 + the number of carried sex toys) > 1 and house-key is not held and house-key is not in Predicament01:
		say "[bold type]You place the toys on the table. [roman type]A split second later, your house key drops from a hidden panel above your head![paragraph break]Also, somehow you can tell that [bold type]the sex toys will not disappear if you take them with you back to your house[roman type], and so if you wanted, you could take one or both of them back into the academy with you, and keep them.[line break][variable custom style]...Do I have any use for these toys? Is it worth me having to walk through the park with them, to be able to bring them back with me?[roman type][line break]";
		repeat with C running through carried sex toys:
			now C is in Predicament01;
		repeat with C running through sex toys in Predicament01:
			if a random number between 1 and 2 is 1:
				now the raw-magic-modifier of C is 1;
				set up stat-based influence of C;
				say "You notice that [NameDesc of C] [one of]may in fact magically enhance one of your stats while worn[or]also seems to have a magic stat-enhancing effect[stopping].";
		now house-key is in Predicament01;
		compute autotaking house-key.

Check going east when the player is in Predicament19:
	if house-key is not held and (current-predicament is sex-toy-predicament or current-predicament is gloryhole-predicament or current-predicament is business-briefcase-predicament), say "The door is locked! You need to bring your house key..." instead.

team-face-crotch-predicament is a team-predicament.
Definition: team-face-crotch-predicament is appropriate:
	if the rank of the player > 2, decide no;
	if diaper lover is 0, decide no;
	decide yes.

Figure of face crotch predicament 1 is the file "Special/Cutscene/cutscene-face-crotch-predicament1.jpg".
Figure of face crotch predicament 2 is the file "Special/Cutscene/cutscene-face-crotch-predicament2.jpg".

To execute (L - team-face-crotch-predicament):
	let playerAbove be 0;
	let ST be team-predicament-partner;
	now ST is in Predicament01;
	now the player is in Predicament01;
	now the stance of the player is 1;
	now the fatigue of the player is 0;
	now the bladder of the player is bladder-risky-level + 4;
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
		say "IDENTICAL ANSWERS GIVEN. RANDOMISING ALLOCATIONS... ";
	if player-numerical-response > STChoice or (player-numerical-response is STChoice and a random number between 1 and 2 is 1):
		say "CONTESTANT [student-name of ST in upper case] HAS BEEN ALLOCATED THE ROLE OF BABY. PROCESSING OUTFIT!'[roman type][line break]You hear [NameDesc of ST] yelp, and the sound of disposable diaper tapes being stretched and placed with the rustling plastic sound that the outside of a diaper would make.[line break][first custom style]'[NameBimbo in upper case] HAS BEEN ALLOCATED THE ROLE OF GROWN UP. PROCESSING OUTFIT!'[roman type][line break]It's your turn to squeal as you feel robotic arms begin to dress you, placing a bikini top and bottoms around your body.";
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
	if playerAbove is 1, say "You are sitting on a chair, your feet held up by anklecuffs in a raised legs crossed position, with supports under your knees preventing you from lowering them. This leaves the front of your [if plain-largish-diaper is K]diaper[otherwise]bikini briefs[end if] fully exposed, and that is where [NameDesc of ST][']s face is planted, kept there by a cord from [his of ST] collar, which is also connected to [his of ST] strict arm bindings. If you were to release your hold on your bladder, [NameDesc of ST][']s face and nose would get an intimate first hand experience of it!";
	otherwise say "[BigNameDesc of ST] is sitting on a chair, [his of ST] feet held up by anklecuffs in a raised legs crossed position. Supports under [his of ST] knees prevent [him of ST] from lowering them. This leaves the front of [his of ST] [if plain-largish-diaper is K]bikini briefs[otherwise]diaper[end if] fully exposed, and that is where your face is planted, kept there by a cord from your collar, which is also connected to your strict arm bindings. If [NameDesc of ST] were to release [his of ST] hold on [his of ST] bladder, your face and nose would get an intimate first hand experience of it!";
	if playerAbove is 0 and plain-largish-diaper is K, HappinessUp ST by 1;
	say "[first custom style]'YOUR BONDAGE WILL RELEASE IN [PredicamentMinutes] MINUTES. TIME TO SEE WHETHER [if playerAbove is 1 and red-bikini-briefs is K][NameBimbo in upper case] SHOULD REALLY BE IN DIAPERS TOO[otherwise if playerAbove is 0 and plain-largish-diaper is K][student-name of ST in upper case] SHOULD REALLY BE IN DIAPERS TOO[otherwise if playerAbove is 1][student-name of ST in upper case][']S LACK OF CONFIDENCE IN [NameBimbo in upper case][']S POTTY TRAINING WAS ACCURATE[otherwise][NameBimbo in upper case][']S LACK OF CONFIDENCE IN [student-name of ST in upper case][']S POTTY TRAINING WAS ACCURATE[end if]!'[roman type][line break]And with that, the voice stops speaking and a digital timer on the wall, showing [PredicamentMinutes] minutes remaining, begins ticking downwards!";
	let STBladder be 10;
	while PredicamentMinutes > 0:
		say "[line break]There [if PredicamentMinutes > 1]are [PredicamentMinutes] minutes remaining[otherwise]is one minute remaining[end if].";
		if the bladder of the player >= bladder-risky-level:
			say "Your bladder [if the bladder of the player < 12]twinges with significant discomfort. [bold type]Holding on will have a small chance of hurting[otherwise if the bladder of the player < 14]strains with its fullness, begging you to release. [bold type]Holding on has a decent chance of hurting[otherwise]is on fire, desperate to release! [bold type]Holding on will definitely hurt, and negatively affect your bladder's long-term irritability[end if].[roman type][line break]Do you hold on? ";
			if the player is consenting:
				say "You hold on tight!";
				let R be a random number between bladder-risky-level and (bladder-risky-level + 4);
				if R <= the bladder of the player:
					say "It hurts! ";
					UnflinchingPainUp 5;
					if the bladder of the player >= bladder-risky-level + 4:
						IrritableBladderUp 5;
				FavourUp ST;
			otherwise:
				say "You whine and squirm as you release your warm [urine] into your [ShortDesc of K][if playerAbove is 1 and K is diaper], [NameDesc of ST][']s nose still pressed firmly into your crotch through the thick padding. You're sure [he of ST] can feel that warmth spreading throughout your diaper[otherwise if playerAbove is 1], [NameDesc of ST][']s nose still pressed firmly into your crotch through the thin nylon of your bikini briefs. You're sure [he of ST] must be getting a full face-worth of warm piss-soaked cloth. Yuck[end if].";
				if playerAbove is 1:
					if red-bikini-briefs is worn, HappinessDown ST by 5;
					otherwise HappinessDown ST by 2;
				UrineSoakUp K by the bladder of the player;
				now the bladder of the player is 0;
		otherwise if playerAbove is 1:
			say "[BigNameDesc of ST] [one of]groans[or]moans[or]whimpers[in random order] as [he of ST] is forced to continue to face plant your piss-soaked [ShortDesc of K].";
			if K is red-bikini-briefs, HappinessDown ST;
		let R be a random number between 10 and 14;
		if R <= STBladder + the vindictiveness of ST - the dedication of ST:
			say "[BigNameDesc of ST] sighs with defeat and you can tell that [he of ST] is peeing[if playerAbove is 0 and K is diaper]. Mostly because you can FEEL it on your face! The [urine] soaks straight through [his of ST] bikini briefs, making your face warm, wet and smelly. YUCK[otherwise if playerAbove is 0]. Mostly because you can feel the padding in front of your nose turning warm. Over time that subtle but distinct smell of [urine] begins to hit your nostrils[otherwise if K is diaper] into [his of ST] bikini briefs. Looks like [he of ST] will be walking home wet and dripping[otherwise] in [his of ST] diaper. Looks like [he of ST] will be walking home wet and soggy[end if].";
			if playerAbove is 0 and K is red-bikini-briefs:
				if watersports fetish is 1 and K is diaper, SlowUrineTasteAddictUp 1;
				otherwise GrossOut wetDiaperFacesitGrossnessLevel;
			now STBladder is 0;
		if STBladder < 10 and playerAbove is 0:
			if K is diaper:
				say "The smell of [urine] goes to your head and makes you feel rather light-headed[if watersports fetish is 1 and K is diaper][otherwise if K is diaper or the remainder after dividing STBladder by 2 is 1], and perhaps a bit more perverse[end if].";
				if watersports fetish is 1 and K is diaper and the urine taste addiction of the player <= the sex addiction of the player, SlowUrineTasteAddictUp 1;
				otherwise SexAddictUp 1;
			otherwise:
				say "The [urine]-soaked padding is still pressed into your face.";
				SlowGrossOut wetDiaperFacesitGrossnessLevel;
		decrease PredicamentMinutes by 1;
		increase the bladder of the player by 1;
		increase STBladder by 1;
	say "Finally, a buzzer beeps and all your bondage unlocks. While you are still wriggling out of yours, [NameDesc of ST] wastes no time in running from the room, not concerned with waiting for you at all. [if STBladder >= 10 and playerAbove is 0][speech style of ST]'You'd better be fucking grateful I didn't piss on you.'[roman type][line break]Is all [he of ST] says as [he of ST] leaves. [end if]Looks like you'll be sneaking home on your own.[if K is diaper][line break][variable custom style]And in nothing but a diaper...[roman type][line break][end if]";
	now bigGameLoop is 0;
	now ST is in School02.

diaper-grope-predicament is a predicament.
Definition: diaper-grope-predicament is appropriate:
	if the rank of the player < 2 or the rank of the player > 4 or the player is shameless, decide no;
	if diaper lover is 0, decide no;
	decide yes.
To say PredicamentDescription of (P - diaper-grope-predicament):
	say "I'm currently in an Extra Credit lesson where I need to decide whether to keep my hands behind my head in order to avoid receiving an enema, and then I need to get back to my home while avoiding as many bystanders from noticing me as possible.".

Figure of diaper grope predicament cutscene is the file "Special/Cutscene/cutscene-predicament-diaper-grope1.jpg".

To execute (L - diaper-grope-predicament):
	now the stance of the player is 0; [otherwise they immediately fail]
	now the defaultLeftTarget of arms is hair;
	now the defaultRightTarget of arms is hair;
	now entry 1 in the armUses of arms is hair;
	now entry 2 in the armUses of arms is hair;
	if rectum > 0, now rectum is 6;
	summon enema-backpack locked;
	summon grope-me-skirt;
	summon plain-medium-diaper uncursed;
	now the raw-magic-modifier of plain-medium-diaper is -3;
	summon nipples-crop-top uncursed;
	summon frilly stockings uncursed;
	now the raw-magic-modifier of frilly stockings is 1;
	now frilly stockings is intelligence-influencing;
	let MJ be a random mary janes;
	summon MJ uncursed;
	now the raw-magic-modifier of MJ is 1;
	now MJ is dexterity-influencing;
	now the printed name of Predicament01 is "Small Room";
	now the player is in Predicament02;
	say "You find yourself in an alleyway, for some reason holding your hands behind your head in a chilled-out fashion. You look down at yourself: You are wearing frilly white stockings, a short purple skirt that fails to hide your plain white diaper, and which also has a sign on the front that says 'PLEASE GROPE MY TITS!'. Your tits are protected by nothing but a flimsy crop top with a pair of circular holes cut out where your nipples are! The pink backpack on your back is very heavy, and you can feel some sort of intrusion in your [asshole]. Just before you move your hands, you hear a robotic voice coming from a nearby speaker...[paragraph break][first custom style]'WELCOME TO EXTRA CREDIT CLASS. [PredicamentRewardExplanation]TO EARN THIS TROPHY, YOU MUST SIMPLY REACH HOME. HOWEVER, IF YOU MOVE YOUR HANDS FROM BEHIND YOUR BACK, THE INVISIBLE WIRES ATTACHED TO YOUR WRISTS WILL BE PULLED, WHICH WILL CAUSE THE BACKPACK TO RELEASE ITS LARGE TANK OF WATER, WHICH WILL BE DELIVERED INTO YOUR BELLY VIA THE ENEMA NOZZLE. THE CHOICE IS YOURS...'[PredicamentRewardExplanationReaction][roman type][line break]It looks like you are going to look a bit eye-catching no matter where your arms are, but at least you have been given a choice. You can adjust where your arms are at any time with [bold type]adjust arms[roman type] and also if you pick anything up or try to remove anything, that will automatically require you to move your arms...";

team-football-predicament is a team-predicament.
team-football-predicament has a number called student-stimulation. [Count towards student orgasm]
team-football-predicament has a number called game-state. [0: Game in progress; 1: Player won; 2: Student won]

Definition: team-football-predicament is appropriate:
	if diaper quest is 1, decide no;
	if the rank of the player > 2, decide no;
	if the player is barbie, decide no;
	decide yes.
To say PredicamentDescription of (P - team-football-predicament):
	say "I'm currently in an Extra Credit lesson where I need to stay close to the football and try and get it far away from [student-name of team-predicament-partner] to win the game and avoid the forfeits, but also try to avoid having the ball for too long without winning as it'll make me cum, and then I need to get back to my home while avoiding as many bystanders as possible from noticing me.".
To say EndGameFlav of (P - team-football-predicament):
	say "[bold type]You notice a skeleton key among your belongings. [roman type]Great! You can open the lock on those hotpants!".

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
When play begins:
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
	now map-zoom is 1;
	summon football-hotpants locked;
	now football-hotpants is predicament-fixed;
	let K be a random off-stage specific-key;
	if K is a thing:
		now K is in Predicament20;
		now K is covering football-hotpants;
	otherwise:
		now skeleton key is in Predicament20;
	summon football-gloves;
	summon remote-controlled-vibrator vaginally;
	if the player is possessing a penis:
		dislodge remote-controlled-vibrator;
		now remote-controlled-vibrator is penetrating penis;
	otherwise if the player is possessing a vagina:
		now the size of remote-controlled-vibrator is the openness of vagina;
	now the toy-charge of remote-controlled-vibrator is 0;
	now remote-controlled-vibrator is predicament-fixed;
	summon sporty crop top uncursed;
	summon grey-sneakers uncursed;
	now football is in Park02;
	set up predicament universe;
	say "Suddenly, you find yourself standing outside the cubicles of a ladies['] toilets. [BigNameDesc of ST] is there with you, wearing some sort of slutty soccer gear. A padlock at the waist keeps [his of ST] very tight shorts stuck on, and a bump in front of [his of ST] crotch is a tell-tale sign that [he of ST] has some kind of vibrator fastened to [his of ST] genitals. [big his of ST] hands appear to be locked in goalkeeping gloves. You look down at yourself... you're wearing exactly the same outfit.[line break][variable custom style]Uh-oh.[roman type][line break]A voice comes from a hidden speaker.[paragraph break][first custom style]'WELCOME TO EXTRA CREDIT CLASS. [PredicamentRewardExplanation]A FOOTBALL IS WAITING FOR YOU ON THE OTHER SIDE OF THE BATHROOM DOOR. WHEN THE FOOTBALL MOVES MORE THAN THIRTY FEET AWAY FROM ONE OF YOUR VIBRATORS, THAT PLAYER LOSES, THE GAME ENDS, AND THE DOORS UNLOCK. THE LOSER'S VIBRATOR WILL GET STUCK ON MAXIMUM POWER, AND SHOOT A LARGE LOAD OF WARM FRESH CUM INTO THE WEARER'S [if the player is possessing a vagina][caps cunt][otherwise]PANTS[end if]. MOVING YOUR FOOTBALL GLOVES TOO CLOSE TO THE BALL WILL RESULT IN IMMEDIATE LOSS. UNTIL THE GAME ENDS, THE CLOSER YOU GET TO THE BALL, THE STRONGER YOUR VIBRATOR WILL BUZZ. THE KEYS TO YOUR CLOTHES ARE IN YOUR HOUSES. HAVE FUN!'[PredicamentRewardExplanationReaction][roman type][line break]You and [NameDesc of ST] look at each other. You know what you have to do.";
	display entire map.

An all later time based rule:
	if current-predicament is team-football-predicament and the game-state of team-football-predicament is 0:
		let FL be the location of football;
		if (the player is not in Toilet02 or FL is not Park02) and (the player is not in a predicament room or (the distance of FL > (a random number between 1 and 2))):
			if debugmode > 0, say "Player in [location of the player] ([grid position of (the location of the player)]); Football in [FL] ([grid position of FL]). Distance is [distance of FL].";
			let M be team-predicament-partner;
			now the game-state of team-football-predicament is 2;
			now the football-possessor of football is headmistress;
			if remote-controlled-vibrator is held or remote-controlled-vibrator is in the location of the player, say "[bold type]Your vibrator plays a little sad tune and turns itself to maximum! The football has gotten too far away from you, and you've lost! ";
			if the player is in a predicament room and the player is not in Predicament20:
				say "[BigNameDesc of M] squeals with delight and runs for home as fast as [his of M] legs will carry [him of M]!";
				HappinessUp M by 2;
			if remote-controlled-vibrator is worn:
				say "You squeal in [horror the semen addiction of the player] as the vibrator begins spurting huge amounts of [semen] from its tip!";
				if remote-controlled-vibrator is penetrating vagina and the player is possessing a vagina:
					PussyFill 12;
					if the pregnancy of the player is 0 and pregnancy fetish is 1: [Once pregnant you don't get any more potential fathers!]
						let ULA be a random ultimate-lesson-actor;
						now ULA is inseminating vagina;
				otherwise if remote-controlled-vibrator is penetrating asshole:
					AssFill 12;
				otherwise:
					AnnouncedExpel semen on football-hotpants by 12;
			otherwise if remote-controlled-vibrator is carried or remote-controlled-vibrator is in the location of the player:
				say "You squeal in surprise as the vibrator begins spurting huge amounts of [semen] from its tip! The floor gets coated.";
				SemenPuddleUp 12;
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
	set numerical response 5 to "step away from the ball but stay in the same location";
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
			say "You smoothly steal it away from [him of M]! ";
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
			increase the student-stimulation of team-football-predicament by a random number between 1 and 2;
			if the football-possessor of football is M, increase the student-stimulation of team-football-predicament by a random number between 1 and 2;
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
			say "[bold type]Your vibrator plays a little triumphant tune and turns itself off. [roman type]The football has gotten far enough away from [NameDesc of M], and you've won! Even from over here you can hear [his of M] vibrator has clicked into a permanent maximum setting. [big he of M] squeals and runs for home as fast as [his of M] legs will carry [him of M], [semen] spewing violently out of the legholes of [his of M] hotpants!";
			HappinessDown M by 3;
			now M is in School02;
			deinterest M.

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
				if L is Predicament19 and D is east, now D is west; [can't dribble it into the house]
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
					if L is Predicament19 and D is east, now D is west; [can't kick it into the house]
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

[Check going east when the player is in Predicament19:
	if current-predicament is team-football-predicament and the game-state of team-football-predicament is 0, say "The door is locked! You need to wait until the football game is over..." instead.]

water-fountain-predicament is a predicament.
Definition: water-fountain-predicament is appropriate:
	if the rank of the player > 2, decide no;
	decide yes.
To say PredicamentDescription of (P - water-fountain-predicament):
	say "I'm currently in an Extra Credit lesson where I need to decide when to stand up and stop receiving enemas each time the water fountain is used, exposing myself to everyone left in the area when I do, and then I need to get back to my home while letting as few bystanders as possible notice me.".

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
	say "This water fountain's drain is subtly connected to a pipe that runs down to the nearby park bench, where an enema nozzle is fixed in an upright position[if S is penetrating asshole]. You are currently sitting on that enema nozzle...[otherwise].[end if]".

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
	if the total squirtable fill of belly >= 0 and the player is able to automatically expel, now the holding strain of belly is (belly strain balance * 2) - 1;
	let T be the substituted form of "The wide enema nozzle has left your butthole feeling momentarily weakened,";
	check enema holding with reason T.

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
			UnflinchingPainUp 10;
		let M be a random fountain-unquenched bystander in Park13;
		if M is bystander:
			if the player is in Park13:
				say "[BigNameDesc of M] takes a drink from the water fountain.";
				if water-fountain is penetrating asshole:
					say "As cold water gurgles down the drain, nobody but you notices as it flows straight up your [asshole] and into your belly!";
					if the total fill of belly < belly limit, AssFill 4 water;
					if the total fill of belly >= 20, say "[one of][bold type]Your belly is just too full. It's going to hurt a lot if you don't stand up now!!![roman type][line break][or][stopping]";
			now M is not fountain-unquenched.

gloryhole-predicament is a predicament. gloryhole-predicament has a number called internet-outrage. gloryhole-predicament has a number called cocks-sucked. gloryhole-predicament has a number called cocks-missed. gloryhole-predicament has a number called mens-room-entered. gloryhole-predicament has a number called semen-spat. gloryhole-predicament has a number called clothing-not-worn. Understand "gholepd" as gloryhole-predicament.

Definition: gloryhole-predicament is appropriate:
	if diaper quest is 0 and the rank of the player > 3, decide yes;
	decide no.

To say PredicamentDescription of (P - gloryhole-predicament):
	say "I'm currently in an Extra Credit lesson where I need to suck at least 5 cocks in the women's toilets, trying to make sure nobody leaves from the other side of the gloryhole without having their dick sucked, and then go into the men's toilets and retrieve my house key and mystery outfit, and then get back to my home while avoiding as many bystanders as possible from noticing me.".

id-poster is a thing. The printed name of id-poster is "[TQlink of item described][if current-predicament is gloryhole-predicament]identity[otherwise]explicit[end if] poster[TQxlink of item described]". The text-shortcut of id-poster is "idp". Understand "identity", "explicit", "poster" as id-poster.

id-poster has an object called target-camera-poster.

To say ExamineDesc of (P - id-poster):
	if current-predicament is gloryhole-predicament, say "A poster [if the location of P is Toilet01 and P is not held]pinned to the wall above the gloryhole [end if]which has a photo of you in that super slutty pink bikini, your full name, and a huge amount of personal information about you, including your date of birth, home town, occupation, where you went to school, measurements, blood type, and even your phone number. In large letters at the top of the poster, it says 'YOUR GLORYHOLE SLUT FOR TODAY'.[if the location of P is Toilet01 and P is not held and the player is not shameless][line break][variable custom style]Oh my god, I can't believe it! I need to take this down right now![roman type][line break][end if]";
	otherwise say "[ExamineDesc of target-camera-poster of P]It also has your full name, and a huge amount of personal information about you, including your date of birth, home town, occupation, where you went to school, measurements, blood type, and even your phone number.[if the location of P is Toilet01 and P is not held and the player is not shameless][line break][variable custom style]Oh my god, I need to take this down right now![roman type][line break][end if]".

To decide which figure-name is the examine-image of (C - id-poster):
	decide on figure of poster.

To execute (P - gloryhole-predicament):
	now the printed name of Predicament01 is "Small Room";
	now the player is in Predicament01;
	now id-poster is in Toilet01;
	now house-key is in Toilet01;
	blandify and reveal lycra-bodysuit;
	now lycra-bodysuit is in Toilet01;
	if the player is getting unlucky:
		now lycra-bodysuit is predicament-fixed;
		gluify lycra-bodysuit;
	summon skimpy-pink-bikini-top uncursed;
	summon pink bikini bottoms uncursed;
	say "You find yourself in a small room, empty except a small table, and a front door that leads outside. You are wearing an extremely skimpy metallic pink bikini set. On the table is a card with the word 'INSTRUCTIONS' on the front. You read the instructions on the back:[paragraph break][first custom style]'WELCOME TO EXTRA CREDIT CLASS. [PredicamentRewardExplanation]TO EARN THIS TROPHY, YOU MUST SIMPLY RETURN HOME AFTER EARNING THE KEY TO YOUR FRONT DOOR. THE KEY WILL BE OBTAINABLE FROM THE MEN'S TOILETS AFTER YOU HAVE SUCKED AT LEAST ONE COCK TO COMPLETION AT THE GLORYHOLE IN THE PARK'S WOMEN'S TOILETS. YOUR PERFORMANCE WILL BE FILMED. EACH OF THE FOLLOWING WILL EARN YOU ONE PENALTY POINT:[line break]* EACH TIME YOU LET SOMEONE LEAVE THE MEN'S TOILETS WITHOUT YOU HAVING SUCKED THEIR COCK TO COMPLETION (WHILE YOU ARE IN THE LADIES['] TOILETS)- YOU ARE ALLOWED TO MISS ONE COCK, BUT EACH ONE AFTER THAT EARNS YOU A PENALTY POINT.[line break]* ENTERING THE MEN'S TOILETS BEFORE YOU HAVE FINISHED SUCKING COCKS[line break]* SPITTING ANY SEMEN OUT OF YOUR MOUTH[line break]* FAILING TO WEAR THE CLOTHING YOU WILL FIND IN THE MEN'S TOILETS FOR YOUR RETURN HOME[paragraph break]THE FOLLOWING ARE THE PUNISHMENTS FOR EACH PENALTY POINT EARNED:[line break]1) THE FOOTAGE OF YOUR PERFORMANCE WILL BE SENT TO YOUR [DistantRole in upper case] [DistantName in upper case][line break]2) THE FOOTAGE OF YOUR PERFORMANCE WILL BE SENT TO YOUR [PlatonicRole in upper case] [PlatonicName in upper case][line break]3) THE FOOTAGE OF YOUR PERFORMANCE WILL BE SENT TO YOUR [NemesisRole in upper case] [NemesisName in upper case][line break]4) THE FOOTAGE OF YOUR PERFORMANCE WILL BE SENT TO YOUR [FanciedRole in upper case] [FanciedName in upper case][line break]5) THE FOOTAGE OF YOUR PERFORMANCE WILL BE PUBLISHED ON WWW.SLUTHUB.COM.[paragraph break]FINALLY, [caps please] NOTE THAT SUCKING LESS THAN FIVE COCKS TO COMPLETION WILL AUTOMATICALLY TRIGGER ALL FIVE PUNISHMENTS.'[PredicamentRewardExplanationReaction][roman type][line break]It looks like your outfit has been decided for you...".

Check taking house-key:
	if current-predicament is gloryhole-predicament and the cocks-sucked of gloryhole-predicament < 1, say "The key is currently sealed inside a transparent case that hasn't yet unlocked. It looks like you'll need to go next door and suck a dick before it will open." instead.

Report going when the player is in Toilet01:
	if id-poster is in Toilet01 and id-poster is not held:
		say "Your eyes are immediately drawn to the poster above the wall.";
		try examining id-poster;
		say HumiliateReflect 20 + (100 * the cocks-sucked of gloryhole-predicament);
	if lycra-bodysuit is in Toilet01:
		say "[variable custom style]And they want me to wear that bodysuit home?![roman type][line break][if lycra-bodysuit is glued]On closer inspection, the inside of the bodysuit seems to be covered in some sort of glue. [bold type]If you put it on, you'll likely be wearing it for quite some time.[line break][variable custom style]Those bastards! They didn't tell me there'd be glue on it! [GotUnluckyFlav]".

Report going when the player is in Toilet01:
	if current-predicament is gloryhole-predicament and mens-room-entered of gloryhole-predicament is 0, now mens-room-entered of gloryhole-predicament is 1. [flag that the player has entered the men's room, so they're not allowed to return to suck more cock]

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
			if the semen-spat of gloryhole-predicament > 0:
				say "YOU SPAT OUT [if the semen-spat of gloryhole-predicament > 1][semen-spat of gloryhole-predicament] LOADS[otherwise]ONE LOAD[end if] OF SEMEN. PENALTY POINTS INCREASED BY 1.";
				increase PP by 1;
			otherwise:
				say "YOU SWALLOWED ALL SEMEN EJACULATED INTO YOUR MOUTH. PENALTY POINTS INCREASED BY 0.";
			if PP is 0:
				say "CONGRATULATIONS. NO PUNISHMENTS ENABLED.[roman type][line break]";
			otherwise:
				say "[if PP is 1]ONE PUNISHMENT[otherwise][PP] PUNISHMENTS[end if] ENABLED.[roman type][line break]";
		if PP > 0:
			let T be "CCTV video footage of you sucking [cocks-sucked of gloryhole-predicament] [manly-penis][if cocks-sucked of gloryhole-predicament > 1]s[end if] through a gloryhole, dressed in nothing but super skimpy swimwear";
			say "The screen changes to show thumbnail summaries of [T], which then animate into being packaged in an email attachment and sent to [DistantName], your [DistantRole].";
			now distant-friend is friend-shocked;
			if the number of blank rows in the Table of Published Disgraces > 0:
				choose a blank row in Table of Published Disgraces;
				now the content entry is the substituted form of T;
				now the published entry is the substituted form of "has been uploaded to an obscure website www.fatherless.com by your [DistantRole] [DistantName]";
				now the severity entry is 2 + the internet-outrage of gloryhole-predicament;
				now the popularity entry is 1;
				now the timestamp entry is time-earnings;
				now the lastwitnessed entry is time-earnings;
				now the deletedtime entry is -1;
				now the viewsfuzz entry is a random number between -10 and 10;
			if PP > 1:
				say "Then the screen shows the same file being sent to your [PlatonicRole] [PlatonicName].";
				now platonic-friend is friend-shocked;
				if the number of blank rows in the Table of Published Disgraces > 0:
					choose a blank row in Table of Published Disgraces;
					now the content entry is the substituted form of T;
					now the published entry is the substituted form of "has been sent to a small private group chat of your friends by your [PlatonicRole] [PlatonicName]";
					now the severity entry is 500;
					now the popularity entry is 0;
					now the timestamp entry is 0;
					now the lastwitnessed entry is time-earnings;
					now the deletedtime entry is -1;
					now the viewsfuzz entry is 0;
			if PP > 2:
				say "Next, the screen shows the same file being sent to [NemesisName], your [NemesisRole].";
				now nemesis-friend is friend-shocked;
				if the number of blank rows in the Table of Published Disgraces > 0:
					choose a blank row in Table of Published Disgraces;
					now the content entry is the substituted form of T;
					now the published entry is the substituted form of "has been sent to a small private group chat of your friends and family by your [NemesisRole] [NemesisName]";
					now the severity entry is 750;
					now the popularity entry is 0;
					now the timestamp entry is 0;
					now the lastwitnessed entry is time-earnings;
					now the deletedtime entry is -1;
					now the viewsfuzz entry is 0;
			if PP > 3:
				say "Next, the screen shows the same file being sent to [FanciedName], your [FanciedRole].";
				now fancied-friend is friend-shocked;
				if the number of blank rows in the Table of Published Disgraces > 0:
					choose a blank row in Table of Published Disgraces;
					now the content entry is the substituted form of T;
					now the published entry is the substituted form of "has been sent to a large private group chat of all your friends by your [FanciedRole] [FanciedName] along with the message 'WARNING: TURNS OUT THAT [NameBimbo] IS A HUGE CREEP AND A MASSIVE PERV. GROSS!!!'";
					now the severity entry is 1400;
					now the popularity entry is 0;
					now the timestamp entry is 0;
					now the lastwitnessed entry is time-earnings;
					now the deletedtime entry is -1;
					now the viewsfuzz entry is 0;
			if PP > 4:
				say "Next, the screen shows the file is now live on www.pronhub.com, gaining views in real time as you watch.";
				if the number of blank rows in the Table of Published Disgraces > 0:
					choose a blank row in Table of Published Disgraces;
					now the content entry is the substituted form of T;
					now the published entry is the substituted form of "has been uploaded to www.pronhub.com";
					now the severity entry is 12 + the internet-outrage of gloryhole-predicament;
					now the popularity entry is 5;
					now the timestamp entry is time-earnings;
					now the lastwitnessed entry is time-earnings;
					now the deletedtime entry is -1;
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

To say MissedGloryholeCock:
	if current-predicament is gloryhole-predicament:
		increase the cocks-missed of gloryhole-predicament by 1;
		say "[variable custom style][if the cocks-missed of gloryhole-predicament is 1]That's one I've failed to give a blowjob to. I guess that was my only freebie...[otherwise if the cocks-missed of gloryhole-predicament is 2]That's a second [man of male-m] I've failed to give a blowjob to. That means I've gained a punishment point...[otherwise]That's [cocks-missed of gloryhole-predicament] [men of male-m] I've failed to give a blowjob to. That means I've gained another punishment point...[end if][roman type][line break]";
	otherwise if current-predicament is gloryhole-key-predicament:
		say "[first custom style]'Suit yourself.'[roman type][line break]";
		if the keys-agreed of gloryhole-key-predicament > 0:
			say "[big he of male-m] leaves without giving you any keys.";
		otherwise:
			now the keys-tried of gloryhole-key-predicament is -1;
			say "[first custom style]'Suit yourself.'[roman type][line break]You can hear [him of male-m] flushing the keys down the toilet, and then leaving. You have failed, and will have to leave naked.";
		now the keys-agreed of gloryhole-key-predicament is 0.

nun-walk-predicament is a predicament.
Definition: nun-walk-predicament is appropriate:
	if diaper quest is 0 and (armband is emerald or armband is ruby) and (tough-shit is 0 or the number of worn headgear is 0) and the semen taste addiction of the player < 20, decide yes; [at 20 taste addiction the player auto swallows which would make the quest impossible]
	decide no.
To execute (NWP - nun-walk-predicament):
	summon nun-dress locked;
	now nun-dress is wrist-bound-behind;
	now nun-dress is predicament-fixed;
	summon nun cowl uncursed;
	now the quest of nun cowl is no-clothing-quest;
	if the player is possessing a vagina, summon purple-vibrator vaginally;
	otherwise summon purple-vibrator;
	now the raw-magic-modifier of purple-vibrator is 0;
	now purple-vibrator is bland;
	now purple-vibrator is blandness;
	now purple-vibrator is predicament-fixed;
	let F be a random fuckhole penetrated by purple-vibrator;
	if the size of purple-vibrator > the openness of F, now the size of purple-vibrator is the openness of F;
	otherwise now the size of purple-vibrator is 3;
	summon dark-leggings uncursed;
	now dark-leggings is crotch-ripped;
	summon black-leather-flat-boots cursed;
	now the quest of black-leather-flat-boots is mouthful-quest;
	now the raw-magic-modifier of black-leather-flat-boots is -2;
	now black-leather-flat-boots is oral-sex-addiction-influencing;
	now black-leather-flat-boots is predicament-fixed;
	now the player is in Predicament02;
	say "You find yourself in an alleyway somewhere outside. You are wearing a nun's cowl and underneath it, a nun's dress. [ClothingDesc of nun-dress][line break]To make things worse, there's a vibrator buzzing powerfully in your [variable random fuckhole penetrated by purple-vibrator], currently held in place by your hands. A robotic voice speaks from a hidden speaker.[paragraph break][first custom style]'WELCOME TO EXTRA CREDIT CLASS. [PredicamentRewardExplanation]TO EARN THIS TROPHY, YOU MUST SIMPLY RETURN HOME. HOWEVER, YOUR OUTFIT WILL ONLY UNLOCK ONCE YOU REACH YOUR HOUSE IF THE VIBRATOR MAKES IT THERE WITH YOU, AND A MOUTHFUL OF SEMEN IS DEPOSITED INTO THE BOWL ON THE TABLE IN YOUR HOUSE. IF YOU WONDER WHERE YOU MIGHT FIND A MOUTHFUL OF SEMEN, CONSIDER THE GLORYHOLE IN THE WOMEN'S TOILETS...'[PredicamentRewardExplanationReaction][roman type][line break]";
	now the previous-temporary-image of nun-dress is Figure of nun-dress-xray-dong;
	maybe-map-display nun-dress.

To say PredicamentDescription of (P - nun-walk-predicament):
	say "I'm currently in an Extra Credit lesson where I need to get back to my home while avoiding as many bystanders as possible from noticing me. If I want to be freed from my hidden-bondage nun dress then I need to make sure I arrive at my house with the vibrator and my mouth full of [semen], which I can get from the gloryhole in the women's toilets.".

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
	if nun-dress is worn and nun-dress is locked:
		if the semen volume of face > 0:
			say "[bold type]There is a bowl with some kind of electronic sensor at the bottom waiting for you on a pedestal in the middle of the room. [roman type]This must be the bowl you're supposed to fill with [semen] in order to escape from [NameDesc of nun-dress]! You let a little bit of [semen] run out of your mouth and into the bowl[if black-leather-flat-boots is worn]. [bold type]You realise that given the curse upon your new [black-leather-flat-boots][bold type], it would be sensible to keep the rest in your mouth for now.[line break][variable custom style]I guess it's like extra-extra homework...[otherwise].[end if][roman type][line break]";
			[MouthEmpty;]
			if purple-vibrator is held or purple-vibrator is in the location of the player:
				say "[BigNameDesc of purple-vibrator] makes a beeping sound and then [NameDesc of nun-dress] clicks open, falling to the ground around you! Phew!";
				now nun-dress is unlocked;
				now nun-dress is wristless;
				now nun-dress is in the location of the player;
			otherwise:
				say "Unfortunately nothing seems to happen. You recall the instructions saying you needed to still have [NameDesc of purple-vibrator] with you as well.[line break][variable custom style]Oh crap... so I'm stuck wearing this?![roman type][line break]";
		if nun-dress is locked:
			say "You hear the voice of [NameDesc of receptionist] from the other side of the portal.[line break][speech style of receptionist]'Hi [NameBimbo], looks like you might be locked into that dress for a while, since you failed at the challenge. Perhaps it's best if we move all your items into your wardrobe for safekeeping.'[roman type][line break]You blink with surprise as all your possessions are surrounded by pink glows, and moments later have vanished, sent back to the pink wardrobe!";
			repeat with T running through portable things in Predicament20:
				unless T is person or T is trophy, now T is in pink wardrobe.


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
			if the player is getting lucky:
				say "[big he of M] shrugs and leaves you alone. [GotLuckyFlav]";
			otherwise:
				say "[big he of M] comes a step closer and peers at the pages of the book. [big his of M] eyes go wide and [he of M] gasps.[line break][speech style of M]'[one of]This... this is[or]S-sacrilege[at random]!'[roman type][line break][big he of M] is rendered almost speechless.[strongHumiliateReflect]";
				now the worst-appearance of M is 5;
		otherwise if player-numerical-response is 2:
			if the total volume of face > 0, compute swallowing;
			say "[variable custom style]'It's, ah, yes, my favourite piece of scripture. It's about, um, guidance for nuns on how to remain pure. You would find it very dull.'[line break]";
			if the player is getting unlucky:
				say "[speech style of M]'[one of]That actually sounds interesting, I'd love to know what chapter[or]Hmm[stopping]...'[roman type][line break][big he of M] comes a step closer and peers at the pages of the book. [GotUnluckyFlav][big his of M] eyes go wide and [he of M] gasps.[line break][speech style of M]'[one of]This... this is[or]S-sacrilege[at random]!'[roman type][line break][big he of M] is rendered almost speechless.[strongHumiliateReflect]";
				now the worst-appearance of M is 5;
			otherwise:
				say "[speech style of M]'[one of]Ah, I see[or]Fair enough[or]Ah, I guess you're right[at random].'[roman type][line break]Satisfied, [NameDesc of M] turns to leave you alone.";
		otherwise if player-numerical-response is 3:
			say "[variable custom style]'It's, ah, yes, my favourite piece of scripture[run paragraph on]";
			if a random number between -1 and the total volume of face > 0:
				say "-'[roman type][line break]Your explanation is interrupted by some of the [MouthfulDesc] escaping through the gap in your lips.";
				compute accidental spitting;
				if M is not camera-bystander, say "[big he of M] gags and backs away from you in horror.[severeHumiliateReflect]";
				now the worst-appearance of M is 10;
			otherwise:
				say ". It's about, um, guidance for nuns on how to remain pure. You would find it very dull.'[line break]";
				if the player is getting unlucky:
					say "[speech style of M]'[one of]That actually sounds interesting, I'd love to know what chapter[or]Hmm[stopping]...'[roman type][line break][big he of M] comes a step closer and peers at the pages of the book. [GotUnluckyFlav][big his of M] eyes go wide and [he of M] gasps.[line break][speech style of M]'[one of]This... this is[or]S-sacrilege[at random]!'[roman type][line break][big he of M] is rendered almost speechless.[strongHumiliateReflect]";
					now the worst-appearance of M is 5;
				otherwise:
					say "[speech style of M]'[one of]Ah, I see[or]Fair enough[or]Ah, I guess you're right[at random].'[roman type][line break]Satisfied, [NameDesc of M] turns to leave you alone.";
		if the worst-appearance of M >= 5 and M is camera-bystander:
			say "[big he of M] whips up [his of M] camera and takes a photo of you.[line break][speech style of M]'This is going straight on Twatter, you crazy bitch!'[roman type][line break]";
			if the number of blank rows in the Table of Published Disgraces > 0:
				choose a blank row in Table of Published Disgraces;
				now the content entry is the substituted form of "a high resolution photo of you dressed as a nun, [if the worst-appearance of M is 10]semen spurting out of your mouth and dribbling down your chin[otherwise]holding and reading a fake religious book that clearly actually contains diagrams and instructions on how to perform niche sex acts[end if]";
				now the published entry is the substituted form of "has been shared on www.twatter.com";
				now the severity entry is the worst-appearance of M;
				now the popularity entry is 5;
				now the timestamp entry is time-earnings;
				now the lastwitnessed entry is 0;
				now the deletedtime entry is -1;
				now the viewsfuzz entry is a random number between -100 and 100;
	otherwise:
		say ".'[roman type][line break]".

Check taking off purple-vibrator:
	if current-predicament is nun-walk-predicament and nun-dress is worn and nun-dress is wrist-bound-behind:
		say "Are you sure? It'll drop to the ground and with your current bondage situation you won't be able to retrieve it.";
		if the player is not consenting, say "You decide against it." instead.

team-snowball-predicament is a team-predicament.
Definition: team-snowball-predicament is appropriate:
	if the rank of the player >= 3 and diaper quest is 0, decide yes;
	decide no.
Figure of team snowball predicament female is the file "Special/Cutscene/cutscene-predicament-snowball1.jpg".
Figure of team snowball predicament male is the file "Special/Cutscene/cutscene-predicament-snowball2.jpg".

To execute (TEP - team-snowball-predicament):
	now the player is in Predicament01;
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
	clear the map zone;
	update appearance level;
	let M be team-predicament-partner;
	say "You look around... you're standing with your back to one wall of a rather large room, with [NameDesc of M] standing at the other end. You're both wearing the same outfit - a black cotton shirt that reads 'I <3 CUM', a pair of black latex stockings and a pair of black latex plug panties with inflatable plugs, the pumps for the plugs dangling between your legs. You're attached to the wall (and [student-name of M] to the opposing wall) by some kind of elastic bungee harness that keeps your arms bound behind you. Beside you is a fishbowl, half-full of [semen]. Beside [student-name of M] is another identical fishbowl, completely empty. On the ground right in the middle of the room is some kind of flat electronic sensor. A robotic voice speaks over some kind of tannoy.[line break][first custom style]'WELCOME TO THE SEMEN SNOWBALL [']EXTRA CREDIT['] CLASS. TO BE RELEASED FROM YOUR BONDAGE, YOU MUST TRANSFER ALL THE SEMEN FROM FISHBOWL A TO FISHBOWL B. YOU WILL FIND THAT THE ONLY WAY TO DO THIS IS BY PASSING THE SEMEN BETWEEN YOUR MOUTHS. ANY SEMEN THAT DROPS ON THE SENSOR IN THE MIDDLE OF THE ROOM WILL CAUSE YOUR PLUGS TO INFLATE A BIT.[paragraph break]'IF NO SEMEN IS TRANSFERRED FOR APPROXIMATELY TEN SECONDS, THEN THE PLUGS WILL AUTOMATICALLY INFLATE A BIT. IN TWO MINUTES, THE GAME WILL END AND YOU WILL BE ABLE TO LEAVE. IF YOU HAVE TRANSFERRED THE VAST MAJORITY OF THE SEMEN, YOU WILL BE ABLE TO DEFLATE THE PLUGS. IF NOT, VALVES WILL SHUT AND YOU WILL NOT BE ABLE TO DEFLATE THEM AT ALL.[paragraph break]'GOOD LUCK. YOUR TIME STARTS NOW.'[paragraph break][variable custom style]Oh god. Well, refusing to co-operate is clearly not an option...[roman type][line break]";
	let S be 20; [units of semen to transfer]
	let T be 100;
	let F be (the buckle threshold of the player + 4) / 5;
	while T > 0 and S > 0:
		let SP be ((S * 100) / (20 * 5)) * 5; [round down to nearest 5%]
		say "The are approximately [T] seconds left. The inflatable [if the player is possessing a vagina]plugs inside you are[otherwise]plug inside you is[end if] [DongSize the plug size of PPP]. About [SP]% of the [semen] remains. How much semen do you want to put in your mouth? [one of][bold type][or][stopping]The more semen you try to transfer at once, the exponentially higher chance you have of growing more [if the semen taste addiction of the player < 8]accustomed[otherwise]addicted[end if] to the taste[one of], ranging from 3% to 50%[or][stopping].[roman type][line break]";
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
			check tasting of semen;
			if a random number between 0 and 32 < the semen volume of face * the semen volume of face:
				say bold type;
				SlowSemenTasteAddictUp 1;
				say roman type;
			say "You and [student-name of M] stretch your bungee harnesses as far as they will go, meeting in the middle of the room over the sensor[if the player is very tired]. [bold type]You are very tired[otherwise if the player is tired]. [bold type]You are tired[end if].[roman type][line break]";
			reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
			set numerical response 1 to "transfer the cum slowly (increases fatigue faster; small chance of a major spillage, increasing with fatigue and mouthful volume; feels a bit gross)";
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
					say "You manage to successfully funnel your [if the semen volume of face > 1]entire [end if][MouthfulDesc] into [his of M] mouth in a bit wet salty kiss with lots of tongues.";
					if the fatigue of the player < F * 5, FatigueUp F;
					now the semen volume of face is 0; [no accidental spitting]
					SlowGrossOut 4;
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
						update appearance level;
					otherwise:
						SemenPuddleUp 1 in Predicament01;
					if the dedication of M > a random number between 0 and 3, HappinessDown M;
				otherwise:
					say "[big he of M] manages to accept it [if the semen volume of face > 1]all [end if]into [his of M] mouth without any spillages.";
			if the fatigue of the player < F * 5, FatigueUp F;
			say "You both return to your walls[if the semen volume of face > 0], and [student-name of M] spits the [MouthfulDesc] into [his of M] fishbowl[end if].";
			now the semen volume of face is 0;
		otherwise:
			say "Time moves forward[if the fatigue of the player > 0]. You recover some energy[end if]. ";
			if the plug size of PPP < 10:
				say "In response to your inaction, [bold type]the [if the player is possessing a vagina]plugs in your [vagina] and [asshole] inflate[otherwise]plug in your [asshole] inflates[end if] a bit.[roman type][line break]";
				increase the plug size of PPP by 1;
				let FD be the fatigue of the player / 2;
				if FD < F, now FD is F;
				decrease the fatigue of the player by FD;
				if the fatigue of the player < 0, now the fatigue of the player is 0;
				increase analGripCount by 100; [Forces gripping to trigger again this turn]
				if PPP is vagina plugging, increase vaginalGripCount by 100;
			otherwise:
				say "The [if the player is possessing a vagina]plugs in your [vagina] and [asshole][otherwise]plug in your [asshole][end if] can't grow any larger!";
		decrease T by 10;
		increase analGripCount by 10;
		if PPP is vagina plugging, increase vaginalGripCount by 10;
		compute gripping of PPP;
		update arousal;
	say "A beeping sound signals that the game is over. Your restraints are removed and you find that you are able to leave. ";
	if S > 0:
		say "A different buzzer sound coming from your fishbowl indicates you failed to empty it. A clicking sound from your [PPP] lets you know you won't be able to deflate it!";
	otherwise if the plug size of PPP > 1:
		say "You test the plug[if PPP is vagina plugging]s[end if] on your [PPP] and find that the valves are working! You are able to deflate it to its minimum size.";
		now the plug size of PPP is 1;
	say "[BigNameDesc of M] just mutters some [if the plug size of PPP is 1 and M is friendly]relieved[otherwise]frustrated[end if] noises towards you before making for the door.";
	try M going north;
	now M is in School01;
	deinterest M;
	now bigGameLoop is 0;
	if the plug size of PPP is 1, now the fatigue of the player is 0; [no point making the player rest]
	say "It looks like you're going to have to make your way out of here on your own.".

To SemenPuddleUp (X - a number) in (R - Predicament01):
	increase the semen-puddle of R by X;
	let P be a random worn pump plug panties;
	if P is clothing:
		if the plug size of P < 10:
			if the plug size of P + X > 10, now X is 10 - the plug size of P;
			say "The [if the player is possessing a vagina]plugs in your [vagina] and [asshole] inflate[otherwise]plug in your [asshole] inflates[end if] [if X is 1]a bit[otherwise if X is 2]significantly[otherwise]several sizes[end if]!";
			increase the plug size of P by X.

team-girlfriends-predicament is a team-predicament.

girlfriend-partner is a person. The printed name of girlfriend-partner is "[TQlink of item described][student-name of team-predicament-partner][TQxlink of item described][shortcut-desc]".
Definition: girlfriend-partner is snogged:
	if current-predicament is team-girlfriends-predicament and the player is in a predicament room and the player is not in Predicament01 and the player is not in Predicament20 and the number of entries in the armUses of arms is 2:
		if entry 1 in the armUses of arms is girlfriend-partner and entry 2 in the armUses of arms is girlfriend-partner, decide yes;
	decide no.
Check going when girlfriend-partner is in the location of the player:
	if the room noun from the location of the player is a road room and the defaultLeftTarget of arms is girlfriend-partner:
		say "[BigNameDesc of girlfriend-partner] pulls back, and you understand why - it's not safe to cross the road whilst pressed into [him of girlfriend-partner]. You'd be moving too slowly and a fast car could come past at any time. [bold type]If you continue with the move, you will automatically adjust your arms to try and cover your modesty instead. [roman type]Do you continue with the move? ";
		if the player is consenting:
			now the defaultLeftTarget of arms is yourself;
			say "You release your hold on [NameDesc of girlfriend-partner], exposing the vibrators. [italic type]Remember, you will need to manually [bold type]adjust arms[italic type] before moving back onto the grass if you so desire.[roman type][line break]";
		otherwise:
			say "Action cancelled." instead.
Figure of both girlfriends is the file "NPCs/School/Student/girlfriend1a.png".
Figure of solo girlfriends is the file "NPCs/School/Student/girlfriend1b.png".
Figure of both boyfriends is the file "NPCs/School/Student/girlfriend2a.png".
Figure of both diaperfriends is the file "NPCs/School/Student/girlfriend3a.png".
Figure of solo diaperfriends is the file "NPCs/School/Student/girlfriend3b.png".
To decide which figure-name is the examine-image of (G - girlfriend-partner):
	if girlfriend-partner is snogged:
		if there is a worn diaper, decide on figure of solo diaperfriends;
		decide on figure of solo girlfriends;
	if there is a worn diaper, decide on figure of both diaperfriends;
	if the player is possessing a penis, decide on figure of both boyfriends;
	decide on figure of both girlfriends.
To construct normal buttons for (T - girlfriend-partner):
	if ButtonTableFull is 0:
		choose a blank row in the Table of Buttons;
		now the ButtonImage entry is clothing-image of open-front-skirt;
		now the ButtonCommand entry is "adjust arms";
		now the ButtonColour entry is lightModeFullGreen.
To decide which number is the outrage of (G - girlfriend-partner):
	decide on 8.
To decide which figure-name is the NPC-icon of (M - girlfriend-partner):
	decide on Figure of Green NPC. [helps distinguish them from bystanders]
To say ExamineDesc of (G - girlfriend-partner):
	say "[student-name of team-predicament-partner] has a similar outfit to you, except [his of team-predicament-partner] nipples are exposed through holes in [his of team-predicament-partner] top.".
To check disapproval of (G - girlfriend-partner):
	do nothing.
Definition: girlfriend-partner is reactive: decide no.

To say PredicamentDescription of (P - team-girlfriends-predicament):
	say "I'm currently in an Extra Credit lesson where I need to get back to my home with [girlfriend-partner] while avoiding as many bystanders from noticing me as possible.".

To execute (L - team-girlfriends-predicament):
	now the stance of the player is 0;
	now the player is in Predicament02;
	now the text-shortcut of girlfriend-partner is the student-name of team-predicament-partner;
	now girlfriend-partner is in Predicament02;
	if team-predicament-partner is female, now girlfriend-partner is female;
	summon remote-controlled-vibrator vaginally;
	if the player is possessing a penis:
		dislodge remote-controlled-vibrator;
		now remote-controlled-vibrator is penetrating penis;
	otherwise if the player is possessing a vagina:
		now the size of remote-controlled-vibrator is the openness of vagina;
	now the toy-charge of remote-controlled-vibrator is 0;
	if diaper focus > 0:
		summon plain-medium-diaper locked;
		now the bladder of the player is bladder-risky-level + 4;
	summon open-front-skirt locked;
	let V be a random rubber vest top;
	summon V locked;
	now V is cotton;
	now V is normally-nipple-covering;
	summon ring gag locked;
	summon grey-sneakers uncursed;
	now grey-sneakers is speed;
	say "You find yourself standing in an alleyway with [team-predicament-partner], your left hand subtly attached to [his of team-predicament-partner] right by a pair of wristcuffs that look like bracelets. You are wearing a denim skirt with a large section missing from the front, exposing what's underneath: some sort of vibrator [if the player is possessing a penis]wrapped around the shaft of your penis[otherwise]lodged tightly inside your [vagina][end if][if there is a worn diaper], clearly visible bulging against the padding of your [plain-largish-diaper][end if]. [BigNameDesc of team-predicament-partner] is wearing the same. Your vest tops slightly differ, however: while yours has two bullet vibes secured to your nipples underneath the fabric, [NameDesc of team-predicament-partner][']s has two holes exposing [his of team-predicament-partner] nipples, held open in small circles by metal rings sewn into the fabric. You also both have ring gags locked into your mouths, the straps mostly hidden by your hair[if the bladder of the player >= 12]. You feel desperate to pee[end if].[paragraph break]A robotic voice issues from a nearby loudspeaker.[line break][first custom style]'WELCOME TO THE EXTRA CREDIT ZONE. [PredicamentRewardExplanation]YOUR APPEARANCES CAN BE MADE LESS... [']EXPOSING['] BY PRESSING YOUR BODIES INTO EACH OTHER. IF YOUR RING GAGS TOUCH, AND YOUR NIPPLE RINGS TOUCH THE NIPPLE BULLET VIBRATORS, AND THE RINGS ON YOUR OPPOSING HANDS TOUCH THE VIBRATORS AT YOUR GENITALS, THEN THE VIBRATORS AT YOUR GENITALS WILL TURN OFF, BUT MEANWHILE THE BULLET VIBRATORS WILL TURN ON. HOW YOU PROGRESS THROUGH THE ZONE IS UP TO YOU.'[roman type][paragraph break][BigNameDesc of team-predicament-partner] squeaks with fear. It seems like [he of team-predicament-partner] is really nervous about being spotted with [his of team-predicament-partner] [if there is a worn diaper]diaper[otherwise if team-predicament-partner is female]pussy[otherwise]crotch[end if] on display.[line break]You can decide when to move forward pressed together, and when to move forward just holding hands, by using the command [bold type]adjust arms[roman type].".

To compute school periodic effect of (C - rubber vest top):
	if girlfriend-partner is snogged:
		say "The bullet vibes on your nipples buzz away gently.";
		passively stimulate breasts from C.

Check going when current-predicament is team-girlfriends-predicament:
	if the player is prone and girlfriend-partner is in the location of the player, say "It's not practical to crawl while connected to [NameDesc of team-predicament-partner] at the wrist!" instead.



team-diaper-vibe-predicament is a team-predicament. The printed name of team-diaper-vibe-predicament is "wand vibrator".
Definition: team-diaper-vibe-predicament is appropriate:
	if the rank of the player >= 3 and diaper messing >= 7, decide yes;
	decide no.
Figure of team diaper weights predicament is the file "Special/Cutscene/cutscene-predicament-diaper-weights1.jpg".
Figure of team diaper weights predicament messy is the file "Special/Cutscene/cutscene-predicament-diaper-weights2.jpg".

To execute (TDVP - team-diaper-vibe-predicament):
	blandify and reveal pink-hooded-romper;
	now pink-hooded-romper is in Predicament01;
	now the player is in Predicament01;
	now the stance of the player is 1;
	now temporaryYesNoBackground is Figure of team diaper weights predicament;
	force immediate clothing-focus redraw;
	now bigGameLoop is 1; [tells the game not to refresh the map window]
	clear the map zone;
	update appearance level;
	let M be team-predicament-partner;
	let NB be the substituted form of "[NameBimbo]";
	say "You look around... you're sitting, bound with rope in the middle of a rather large room, with [NameDesc of M] also bound by rope, suspended above your head by a series of pulleys connected to a large weight. [big he of M][']s wearing a thick white diaper, while you are completely naked. A tube gag connects [student-name of M][']s mouth to a huge tank labelled 'X LAX 5000'. A vibrating wand is fixed in place, lodged against your [genitals]. A strong spring connects your two knees together, making it difficult for you to spread them. Two soft red buttons are fixed either side of your knees, where you can reach them if you stretch the spring wide enough. A robotic voice speaks over some kind of tannoy.[line break][first custom style]'WELCOME TO THE SPRING STRETCH [']EXTRA CREDIT['] CLASS. YOU WILL BE RELEASED FROM YOUR BONDAGE AFTER TWO MINUTES. WHILE [NB in upper case] KEEPS [caps his of the player] KNEES PRESSED ON THE BUTTONS, THE VIBRATOR WILL TURN ON. WHILE [caps his of the player] KNEES ARE NOT BOTH PRESSED ON THE BUTTONS, [student-name of M in upper case] WILL BE FORCED TO DRINK THE LAXATIVE DRINK.[paragraph break]'IF [student-name of M in upper case] DRINKS TOO MUCH, [caps he of M] WILL BECOME HEAVIER THAN THE WEIGHT, AND BE LOWERED DOWN ONTO [NB in upper case][']S FACE.'.[paragraph break]'GOOD LUCK. YOUR TIME STARTS NOW.'[paragraph break][variable custom style]Oh god. If I don't keep my knees apart, I might get faceplanted by [student-name of M][']s messy diaper![roman type][line break]";
	let LAX be 0;
	let HOLD be a random number between 12 and 20;
	let T be 120;
	let KNEES be 0;
	while T > 0:
		say "There are [T] seconds left on the clock.";
		reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
		set numerical response 1 to "[if KNEES is 1]Keep holding[otherwise]hold[end if] your knees apart, pressed onto the buttons[if refractoryperiod > 0] (you recently orgasmed, so this will [bold type]hurt[roman type])";
		set numerical response 2 to "[if KNEES is 1]Release the buttons, forcing [student-name of M] to drink laxative[otherwise if LAX > 0]Keep resting your legs, forcing [student-name of M] to drink more laxative[otherwise]Refuse to spread your legs and press the buttons, forcing [student-name of M] to drink laxative[end if]";
		if HOLD <= 0 and LAX >= 5:
			now player-numerical-response is 2;
			say "[one of]Now that you already have a messy diaper on your face, there's no point in holding your knees on the buttons.[or][stopping]";
		compute multiple choice question;
		if player-numerical-response is 1:
			say "The wand vibrator buzzes powerfully against your [genitals]!";
			stimulate vagina from TDVP;
			if refractoryperiod >= maxrefractoryperiod and HOLD <= 0:
				say "Orgasming whilst your nostrils are filled with the smell of a messy diaper has a significant effect on your mental state.";
				SexAddictUp 1;
				GrossnessAddictUp 1;
		otherwise:
			if HOLD > 0 or LAX < 5, say "[NameDesc of M] is forced to drink some of the laxative!";
			increase LAX by 1;
			if HOLD <= 0:
				say "The disgusting smell of the messy diaper above your head fills your nostrils.";
				SlowGrossOut messyDiaperFacesitGrossnessLevel - 1;
		if HOLD > 0:
			decrease HOLD by LAX;
			if LAX > 0, say "[student-name of M][']s stomach growls angrily[if LAX > a random number between 1 and 2]. [big he of M] groans through [his of M] gag[end if].";
			if HOLD <= 0:
				say "[student-name of M] moans with disappointment as [he of M] loses control of [his of M] sphincter. [big he of M] shudders in mid-air and then an incredibly loud rasping sound heralds a massive shitstorm being unleashed into the padding right above your head. You can hear it. You can smell it. You can see it! There's so much! And it smells so fucking bad!";
				now temporaryYesNoBackground is Figure of team diaper weights predicament messy;
				if LAX < 5, SmellGrossOut messyDiaperFacesitGrossnessLevel - 1;
		if player-numerical-response is 2 and LAX is 5:
			say "[bold type]The weight lifts! [roman type][student-name of M] quickly falls until [his of M] diaper is enveloping your face. But [he of M] keeps coming! You are forced onto your back, with [his of M] [if HOLD <= 0]stinky [end if]diaper completely covering your head. You can barely breathe!";
			if HOLD <= 0, SmellGrossOut messyDiaperFacesitGrossnessLevel;
		otherwise if HOLD <= 0 and LAX >= 5:
			say "The smell of [student-name of M][']s horrible messy diaper fills your nostrils and mouth as you draw rasping breaths through [his of M] padding.";
			SlowGrossOut messyDiaperFacesitGrossnessLevel;
		decrease T by 10;
		update arousal;
	say "A beeping sound signals that the game is over. Your restraints fall away and you find you are able to leave. [BigNameDesc of M] just mutters some [if HOLD > 0]relieved[otherwise]frustrated[end if] complaints towards you before making for the door[if LAX > 0 and HOLD > 0]. As [he of M] leaves, you hear a loud tell-tale sound - [he of M] has lost control and is messing [himself of M] as [he of M] waddles away[end if].";
	try M going north;
	now M is in School01;
	deinterest M;
	now bigGameLoop is 0;
	say "It looks like you're going to have to make your way out of here on your own.".


team-scissor-lift-predicament is a team-predicament.
Definition: team-scissor-lift-predicament is appropriate:
	if diaper lover is 0 and a2m fetish < 2, decide no;
	if the rank of the player >= 5 - (diaper lover * 2), decide yes;
	decide no.
Figure of team scissor lift predicament A is the file "Special/Cutscene/cutscene-predicament-scissor-lift1a.jpg".
Figure of team scissor lift predicament B is the file "Special/Cutscene/cutscene-predicament-scissor-lift1b.jpg".
Figure of team scissor lift predicament diaper A is the file "Special/Cutscene/cutscene-predicament-scissor-lift-diaper1a.jpg".
Figure of team scissor lift predicament diaper B is the file "Special/Cutscene/cutscene-predicament-scissor-lift-diaper1b.jpg".
Figure of team scissor lift predicament full diaper A is the file "Special/Cutscene/cutscene-predicament-scissor-lift-diaper2a.jpg".
Figure of team scissor lift predicament full diaper B is the file "Special/Cutscene/cutscene-predicament-scissor-lift-diaper2b.jpg".
Figure of team scissor lift predicament used diapers 1 is the file "Special/Cutscene/cutscene-predicament-scissor-lift-diaper-used1.png".
Figure of team scissor lift predicament used diapers 2 is the file "Special/Cutscene/cutscene-predicament-scissor-lift-diaper-used2.png".

Definition: team-scissor-lift-predicament is always-perceiving:
	if there is a student in the location of the player, decide yes; [while on a scissor lift tour, the two of you are always noticeable]
	decide no.

To execute (TSLP - team-scissor-lift-predicament):
	now the player is in Predicament01;
	now the stance of the player is 0;
	if diaper lover is 0:
		if watersports fetish is 1, now temporaryYesNoBackground is Figure of team scissor lift predicament B;
		otherwise now temporaryYesNoBackground is Figure of team scissor lift predicament A;
	otherwise:
		now temporaryYesNoBackground is Figure of no-image-yet; [forces normal map to be drawn during multiple choice, which in turn forces scissor lift images to be drawn instead]
	force immediate clothing-focus redraw;
	[now bigGameLoop is 1;] [tells the game not to refresh the map window]
	clear the map zone;
	if diaper lover > 0, summon purple-medium-diaper uncursed;
	update appearance level;
	now the stomach-food of the player is 2;
	if rectum is 1, now rectum is 2;
	let STFood be 5;
	let STDrink be 4;
	let STBladder be 2;
	let STRectum be 1;
	let STDiaper be 0;
	let STDiaperMess be 0;
	let STEnema be 16;
	let tourStatus be 0; [-1: ended; 0: not started; 1: north and east; 2: south and east; 3: south and west; 4: north and west]
	empty belly;
	if watersports fetish is 1:
		increase the urine volume of belly by 16;
	otherwise if diaper lover > 0:
		increase the water volume of belly by 16;
	otherwise:
		AssFill 16;
	let M be team-predicament-partner;
	now M is in Predicament01;
	let EL be water;
	if watersports fetish is 1:
		now EL is urine;
	otherwise if diaper lover is 0:
		now EL is semen;
	let T be 24;
	let mins be 0;
	let W be 349.5;
	let previousW be W;
	let LDW be a list of numbers;
	if diaper lover is 0:
		now T is 0;
		now mins is 30;
		now STEnema is a random number between 14 and 20;
		if watersports fetish is 1:
			now STBladder is a random number between 4 and 10;
			now the bladder of the player is 10;
		otherwise:
			increase STEnema by 6;
	say "You look around, and see you are on top of an industrial scissor lift along with [M]. The platform is raised up high - there's no way to get down safely. You are both completely naked, and you both have massive distended bellies, filled to the brim with [if watersports fetish is 1][urine][otherwise if diaper quest is 1]water[otherwise][semen][end if]. On the platform alongside you are [if diaper lover is 0]some finger foods on plates, but all with thick ropes of [semen] plastered over the top[otherwise]a large supply of unused disposable diapers, giant hamster feeders full of pureed diuretic baby food, and baby bottles full of [milk][end if][if watersports fetish is 1], and sports bottles (with the lids glued on) full of [urine][otherwise if diaper lover is 0], and sports bottles with the lids glued on[end if]. A large sign next to the scissor lift has the following information on it:[paragraph break][bold type]TIME UNTIL PLATFORM IS LOWERED[roman type][line break][if diaper lover is 0]30:00[otherwise]24:00:00[end if][line break][bold type]CURRENT PLATFORM WEIGHT[roman type][line break][W] LBS.[line break][bold type]AT 348 LBS:[roman type] MODEST CLOTHES BOX LOCKED[line break][bold type]AT 347 LBS:[roman type] HUMILIATING CLOTHES BOX LOCKED[line break][bold type][if diaper lover > 0]AT 345 LBS:[roman type] PLATFORM TAKES AN AUTOMATED TOUR OF NEIGHBOURHOOD[line break][bold type]AT 342 LBS:[roman type] TIMER INCREASED BY 24 HOURS[otherwise]AT 345 LBS:[roman type] TIMER INCREASED BY 24 HOURS[line break][bold type]AT 342 LBS:[roman type] PLATFORM TAKES AN AUTOMATED TOUR OF NEIGHBOURHOOD[end if][line break][paragraph break]Understanding washes over you: [bold type]This is a weight retention game. [roman type]If you were to expel your enema [if diaper lover > 0]or urinate outside of a diaper[otherwise if watersports fetish is 1]or urinate anywhere except into [NameDesc of M][']s mouth[otherwise]anywhere except into [NameDesc of M][']s mouth[end if], the liquid would travel down through the grate floor, and the weight measured by the scissor lift would decrease[if diaper lover > 0]. The same is true if you throw any of the used diapers off the platform, which means that the only other option is keeping your used nappies right next to you in the small space[end if]. So, the question is, what is worse? The things you'll have to do to retain the weight measurement of the platform, or the penalties for the weight going down?";
	while T >= 0:
		let D be a random worn diaper;
		say "[one of][or][bold type]Time moves forward. [roman type]The clock now reads [bold type][if T < 10]0[end if][T]:[if mins < 10]0[end if][mins]:00.[roman type][line break][stopping][if the player is extremely thirsty][bold type]You are extremely thirsty.[roman type][line break][otherwise if the player is very thirsty]You are very thirsty.[line break][otherwise if the player is thirsty]You are thirsty.[line break][end if][if the player is hungry][bold type]You are very hungry.[roman type][line break][otherwise if the player is nearly hungry]You are hungry.[line break][end if][if the bladder of the player >= 8][bold type]You desperately need to pee.[roman type][line break][otherwise if the bladder of the player >= 6]You need to pee.[line break][otherwise if the bladder of the player >= 4]You slightly need to pee.[line break][end if][if the total squirtable fill of belly > 0][bold type]You are filled to the brim with a [EL] enema.[roman type][line break][otherwise if rectum >= 6]You need to go number two.[line break][otherwise if rectum >= 4]You need to go number two soon.[line break][end if][if the number of soiled-diaper in the location of the player is 1]You have one used diaper up on the platform with you.[line break][otherwise if there is soiled-diaper in the location of the player]There are [number of soiled-diaper in the location of the player] used diapers up on the platform with you.[line break][end if]";
		let PNR be 100;
		while PNR is not 0:
			force immediate clothing-focus redraw;
			let nowUrinating be false;
			let nowExpelling be false;
			let nowMessing be false;
			let D be a random worn diaper;
			let LLR be 0.0;
			if debugmode > 0, say "[input-style]Stomach liquid: [stomach-liquid of the player][roman type][line break]";
			if diaper lover > 0:
				say "You are currently [if D is not diaper][bold type]not wearing[roman type] a diaper[otherwise if D is dry and D is clean]wearing a [bold type]dry[roman type] diaper[otherwise]wearing a [bold type][DefaultAppearanceDesc of D][roman type]diaper[end if].";
				truncate temporary-map-figures to 0 entries;
				if tourStatus <= 0:
					if STDiaperMess > 0 or D is messed diaper:
						if watersports fetish is 1, now temporary-map-figure is Figure of team scissor lift predicament full diaper B;
						otherwise now temporary-map-figure is Figure of team scissor lift predicament full diaper A;
					otherwise:
						if watersports fetish is 1, now temporary-map-figure is Figure of team scissor lift predicament diaper B;
						otherwise now temporary-map-figure is Figure of team scissor lift predicament diaper A;
					add temporary-map-figure to temporary-map-figures;
					if there is soiled-diaper in the location of the player:
						if diaper messing >= 3, add Figure of team scissor lift predicament used diapers 2 to temporary-map-figures;
						otherwise add Figure of team scissor lift predicament used diapers 1 to temporary-map-figures;
			update appearance level;
			fix status bar;
			reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
			set numerical response 0 to "wait [if tourStatus > 0]1 minute[otherwise if the total squirtable fill of belly > 0 and diaper lover is 0]5 minutes (this will hurt)[otherwise if the total squirtable fill of belly > 0]5 minutes[otherwise if STEnema > 0]5 minutes[otherwise if T < 3][T] hours and [mins] minutes[otherwise]3 hours[end if]";
			if the player is thirsty:
				if diaper lover is 0 or watersports fetish is 1, set numerical response 1 to "drink some [if watersports fetish is 1][urine][otherwise]water[end if]";
				if diaper lover > 0, set next numerical response to "drink a bottle of [milk]";
			if the player is hungry or the player is nearly hungry, set next numerical response to "eat some [if diaper lover > 0]diuretic baby food puree[otherwise][semen]-covered food[end if]";
			if the bladder of the player >= 4, set next numerical response to "urinate";
			if the total squirtable fill of belly > 0:
				set next numerical response to "expel your [EL] enema";
			otherwise if rectum > 3 and D is diaper:
				set next numerical response to "mess yourself";
			if D is diaper:
				set next numerical response to "[if D is dirty]get [student-name of M] to change you out of[otherwise]remove[end if] your diaper";
			otherwise if diaper lover > 0:
				set next numerical response to "put on a diaper";
			if there is a held soiled-diaper and the number of entries in LDW > 0:
				let LDWW be entry (number of entries in LDW) of LDW * 0.25;
				set next numerical response to "throw the closest used diaper off the platform ([LDWW] LBS)";
			compute multiple choice question;
			now PNR is player-numerical-response;
			if the chosen numerical response matches the text "eat some":
				say "You eat your fill of [if diaper lover > 0]diuretic baby food puree[otherwise][semen]-glazed snacks[end if], and now feel comfortably full.";
				if diaper lover is 0, StomachSemenUp 1;
				otherwise increase the bladder of the player by (8 - the stomach-food of the player) / 2;
				now the stomach-food of the player is 8;
				now hunger-override is false;
			otherwise if the chosen numerical response matches the text "drink some":
				say "You take one of the sports bottles and[if watersports fetish is 1 and the urine taste addiction of the player < 11], holding your nose,[end if] drink the [if watersports fetish is 1][urine][otherwise]whole thing[end if].";
				if watersports fetish is 1:
					if the urine taste addiction of the player < 7, say "[variable custom style][one of]Gross[or]Yuck[or]Blerugh![cycling][roman type][line break]";
					StomachUrineUp (8 - the stomach-liquid of the player);
				otherwise:
					StomachUp (8 - the stomach-liquid of the player);
			otherwise if the chosen numerical response matches the text "bottle":
				say "You take one of the baby bottles and drink the [milk].";
				if the milk taste addiction of the player < 7, say "[variable custom style][one of]Gross[or]Yuck[or]Blerugh![cycling][roman type][line break]";
				StomachMilkUp (8 - the stomach-liquid of the player);
			otherwise if the chosen numerical response matches the text "urinate":
				now nowUrinating is true;
			otherwise if the chosen numerical response matches the text "expel":
				now nowExpelling is true;
			otherwise if the chosen numerical response matches the text "mess":
				now nowMessing is true;
			otherwise if the chosen numerical response matches the text "your diaper":
				if D is dirty diaper:
					say "You lie on your back and close your eyes as [student-name of M] uses the changing items available to clean you up and change your diaper.";
					DiaperAddictUp 1;
					say "The used [if D is messed]messy [end if]diaper is stuck up on the platform with you!";
					let SD be a random off-stage soiled-diaper;
					if SD is soiled-diaper:
						add (the mess of D / 2) + total-soak of D to LDW;
						DiaperPrint SD from D;
						now SD is carried by the player;
					clean D;
				otherwise:
					say "You remove your diaper.";
					if D is wet:
						let SD be a random off-stage soiled-diaper;
						if SD is soiled-diaper:
							add the total-soak of D to LDW;
							DiaperPrint SD from D;
							now SD is carried by the player;
				now purple-medium-diaper is in the location of the player;
			otherwise if the chosen numerical response matches the text "put on":
				summon purple-medium-diaper uncursed;
				say "You put on a clean [MediumDesc of purple-medium-diaper].";
			otherwise if the chosen numerical response matches the text "platform":
				let SD be a random held soiled-diaper;
				destroy SD;
				let SDN be the number of held soiled-diapers;
				say "You throw one [SD] off of the platform. There [if SDN is 1]is now one soiled diaper left up there with you[otherwise]are now [SDN] soiled diapers left up there with you[end if].";
				let LDWE be the number of entries in LDW;
				if LDWE > 0:
					now LLR is (entry LDWE in LDW) * 0.25;
					truncate LDW to (LDWE - 1) entries;
			otherwise if tourStatus > 0:
				do nothing;
			otherwise:
				say "[if STEnema > 0 or the total squirtable fill of belly > 0]5 minutes pass[otherwise if T < 1][mins] minutes pass[otherwise if T < 3]The rest of the time passes[otherwise]3 hours pass[end if].";
				if STEnema > 0 or the total squirtable fill of belly > 0:
					decrease mins by 5;
					if the total squirtable fill of belly > 0:
						let hold-strength be a random number between 6 and 35;
						let TSF be the total squirtable fill of belly / 2;
						let I be hold-strength - rectum-incontinence of the player;
						if debuginfo > 0, say "[input-style]Enema hold check: d30+5 ([hold-strength]) - bowel incontinence ([rectum-incontinence of the player]) = [I + 0][if I < 4]; minimum 4[end if] | ([TSF].5) 50% enema volume[roman type][line break]";
						if I < 4, now I is 4;
						if TSF >= I:
							now nowExpelling is true;
							say "You can't hold it any longer - you have to expel the [EL] right now!";
						otherwise if mins < 50 and diaper lover is 0:
							say "Holding onto the enema for so long is [one of]starting to hurt[or]hurting you[stopping]!";
							UnflinchingPainUp 10;
						otherwise:
							say "You manage to keep your sphincter shut for another 5 minutes!";
				otherwise:
					decrease T by 3;
					now delayed urination is 0;
					let SDN be the number of held soiled-diaper;
					let SDD be SDN;
					[if there is a worn dirty diaper, increase SDD by 4;]
					if there is a worn messed diaper:
						say "You continue to wallow in your own mess.";
						SlowGrossOut messyDiaperSmellGrossnessLevel;
					otherwise if there is a worn wet diaper:
						say "You continue to wallow in your own wet padding.";
						SlowGrossOut 2;
					let R1 be -9;
					let R2 be a random number between R1 and SDD;
					if debuginfo > 0, say "[input-style]Grossness addiction check: RNG([R1]~[SDD]): ([R2]) | 0.5 addiction increase threshold[roman type][line break]";
					if R2 > 0:
						say "Spending so much time up there with [if SDN is 1]a used diaper[otherwise if SDN > 1][SDN] used diapers[end if][if SDN > 0 and there is a worn dirty diaper] and [end if][if there is a worn dirty diaper]your [D][end if], you can't help but become more accustomed to gross smells.";
						SlowGrossnessAddictUp 1;
					if the player is extremely thirsty or the player is hungry:
						say "[bold type]Your [if the player is hungry]stomach rumbles[end if][if the player is extremely thirsty and the player is hungry] and your [end if][if the player is extremely thirsty]throat is painfully dry[end if].[roman type][line break]";
						if the player is getting unlucky:
							StrengthDown 1;
							say "You feel yourself getting physically weaker as a result. [GotUnluckyFlav]";
					repeat with XXX running from 1 to 3:
						let BRL be bladder-risky-level;
						let B be bladder-bursting-level; [difference between bladder and risky level]
						if diaper messing >= 3 and nowMessing is false:
							let hold-strength be (a random number between 9 and 11) + (a random number between 1 and 3);
							let I be hold-strength - rectum-incontinence of the player;
							if debuginfo > 0 and rectum > 1, say "[input-style]Mess self-control check: 2d3+8 ([hold-strength]) - bowel incontinence ([rectum-incontinence of the player]) = [I + 0][if I < 4]; minimum 4[end if] | ([rectum].5) rectum volume[roman type][line break]";
							if I < 4, now I is 4;
							if rectum >= I:
								now nowMessing is true;
								say "During the hour, you find that you can't hold it any longer - you have to poop right now!";
								IrritableRectumUp 5;
						if B >= 0 and nowUrinating is false:
							let R be (a random number between bladder-difficulty and B) + (a random number between bladder-difficulty and B);
							if debuginfo > 0, say "[input-style]Automatic wetting check: bladder ([bladder of the player]) - continence rating ([BRL]) = [B] ---> RNG([bladder-difficulty] ~ [B]) + RNG([bladder-difficulty] ~ [B]) = [R] | positive number[roman type][line break]";
							if R > 0 and the bladder of the player > 0:
								now nowUrinating is true;
								say "During the hour, you find that you can't hold it any longer - you have to pee right now!";
								IrritableBladderUp 5;
				if mins < 0:
					increase mins by 60;
					decrease T by 1;
			if nowExpelling is true:
				let airExpel be false;
				if D is diaper:
					say "The [variable EL] powerfully shoots out of your [asshole], soaking into your [ShortDesc of D].";
					let TL be the total squirtable fill of belly;
					let SL be the soak-limit of D - the total-soak of D;
					if TL <= SL:
						if watersports fetish is 1:
							UrineSoakUp D by TL;
						otherwise if diaper lover is 0:
							SemenSoakUp D by TL;
						otherwise:
							WaterSoakUp D by TL;
						now TL is 0;
					otherwise:
						decrease TL by SL;
						if watersports fetish is 1:
							UrineSoakUp D by SL;
						otherwise if diaper lover is 0:
							SemenSoakUp D by SL;
						otherwise:
							WaterSoakUp D by SL;
						now LLR is TL * 0.25;
						say "[bold type]The diaper overflows! [roman type]Some [EL] flows down your legholes and through the platform, decreasing the weight reading.";
						if D is diaper and debugmode > 0, say "Urine soak of [D]: [urine-soak of D]; Water soak of [D]: [water-soak of D]; Semen soak of [D]: [semen-soak of D].";
					now nowMessing is true;
				otherwise if diaper lover > 0:
					say "Expel into a clean diaper?";
					if the player is consenting:
						if rectum > 1:
							now nowMessing is true;
						otherwise:
							say "The [variable EL] powerfully shoots out of your [asshole], soaking into the diaper. One dry diaper gets used up and is now a used wet diaper, stuck up on the platform with you!";
							let SD be a random off-stage soiled-diaper;
							if SD is soiled-diaper:
								DiaperPrint SD from purple-medium-diaper;
								now SD is carried by the player;
								add the total fill of belly to LDW;
					otherwise:
						now airExpel is true;
				otherwise:
					say "Demand to use [student-name of M][']s mouth?";
					if the player is consenting:
						say "[variable custom style]'I can't believe I'm asking you to do this, but we need to keep the weight up here, and this is the only way...'[line break]";
						if the dedication of M > 1:
							say "[speech style of M]'I... I... I'll do it. Oh god, I can't believe I'm doing this...'[roman type][line break][BigNameDesc of M] allows you to sit on [his of M] mouth and push. The [variable EL] powerfully shoots out of your [asshole], gushing into [his of M] mouth. [big he of M] is careful to great a seal around your [asshole] with [his of M] lips and drink every drop.";
							increase STDrink by the total squirtable fill of belly / 3;
							if STDrink > 5, say "[big he of M] now looks very[if STDrink > 8], very[end if] full.";
						otherwise:
							say "[speech style of M]'[if M is unfriendly]There's no way I'm fucking doing that for you, you pig[otherwise]I... I can't... I'm sorry, I can't bring myself to do that[end if]!'[roman type][line break]It's too late to hold back the floodgates now. You told your body it was ready to go, and now it needs to go.";
							now airExpel is true;
					otherwise:
						now airExpel is true;
				if airExpel is true:
					say "The [variable EL] powerfully shoots out of your [asshole], straight through the platform grate. The entire weight of your enema gets lost to the ground!";
					PuddleUp EL by the total squirtable fill of belly;
					now LLR is the total squirtable fill of belly * 0.25;
				empty belly;
			if nowMessing is true:
				if rectum > 1:
					if D is not diaper:
						say "You have no choice but to put on a diaper and let it happen.";
						summon purple-medium-diaper uncursed;
						now D is purple-medium-diaper;
					compute messing of D;
					reset rectum;
					if the bladder of the player > 0 and nowUrinating is false:
						say "The act of messing your diaper also makes you wet yourself.";
						now nowUrinating is true;
				now nowMessing is false;
			if nowUrinating is true:
				let airPee be false;
				if D is diaper:
					let BL be the bladder of the player;
					let SL be the soak-limit of D - the total-soak of D;
					now overflowed is 0;
					while the bladder of the player > 0:
						let N be 6;
						if the bladder of the player < 6, now N is the bladder of the player;
						if the bladder of the player > 12 and the bladder of the player >= the soak-limit of D, now N is the soak-limit of D - the total-soak of D; [Fill up the underwear in one turn if this is going to take forever]
						compute pee protected urination;
						decrease the bladder of the player by N;
						if overflowed > 0, now the bladder of the player is 0;
					if overflowed > 0:
						let LL be BL - SL;
						if LL > 0: [just in case]
							now LLR is LL * 0.25;
							say "The [urine] that leaked out of your diaper drips through the platform, causing the weight reading to decrease!";
				otherwise if diaper lover > 0:
					say "Pee into a clean diaper?";
					if the player is consenting:
						say "One dry diaper gets used up and is now a used wet diaper, stuck up on the platform with you!";
						let SD be a random off-stage soiled-diaper;
						if SD is soiled-diaper:
							DiaperPrint SD from purple-medium-diaper;
							now SD is carried by the player;
							add the bladder of the player to LDW;
					otherwise:
						now airPee is true;
				otherwise if watersports fetish is 1:
					say "Pee into [student-name of M][']s mouth?";
					if the player is consenting:
						say "[variable custom style]'Sorry about this...'[line break][speech style of M]'It's OK.'[roman type][line break][BigNameDesc of M] allows you to carefully straddle [his of M] face and pee into [his of M] mouth. ";
						let BLT be (the bladder of the player + 1) / 2;
						let STDL be 9 - STDrink;
						if STDL >= BLT:
							say "[big he of M] is careful to drink every drop.";
							increase STDrink by BLT;
						otherwise:
							let STL be BLT - STDL;
							now STDrink is 9;
							say "[big he of M] tries to drink every drop, but there's too much! There's a [if STL > 1]significant[otherwise]small[end if] amount of spillage, which flows down through the grated platform.";
							now LLR is STL * 1.0;
						if STDrink > 5, say "[big he of M] now looks very[if STDrink > 8], very[end if] full.";
					otherwise:
						now airPee is true;
				otherwise:
					now airPee is true;
				if airPee is true:
					say "You piss straight through the platform grate. The entire weight of your pee gets lost to the ground!";
					PuddleUp urine by the bladder of the player;
					now LLR is the bladder of the player * 0.25;
				now the bladder of the player is 0;
				now nowUrinating is false;
			if LLR > 0:
				decrease W by LLR;
				say "The weight reading is now [bold type][W] LBS.[roman type][line break]";
				now LLR is 0.0;
			if tourStatus <= 0: [if above 0 then they are on a quick tour]
				if PNR is 0:
					if STEnema > 0 or total squirtable fill of belly > 0 or nowExpelling is true: [5 mins]
						now nowExpelling is false; [if we expelled this turn we still only progress 5 minutes which means we want to go in here, but now we want to turn this flag off]
						if STEnema > 0:
							say "[student-name of M] groans and clutches [his of M] belly.";
							if a random number between -1 and 1 <= the dedication of M:
								if diaper lover > 0:
									say "[speech style of M]'I can't hold it any longer, it's going to come out! Eeeek!'[roman type][line break][student-name of M] squeezes [his of M] eyes shut in shame as you watch [him of M] fill [his of M] diaper with a big helping of [if diaper messing >= 3]dirty [end if]enema water.[roman type][line break]";
									if diaper messing >= 3:
										increase STDiaperMess by STRectum;
										now STRectum is 1;
									increase STDiaper by STBladder;
									increase STDiaper by STEnema;
									now STBladder is 0;
									now STEnema is 0;
								otherwise:
									say "[speech style of M]'I can't hold it any longer, it's going to come out! [big please], do your best...!'[roman type][line break]";
									while STEnema > 0:
										say "[one of]Do you let [him of M] push [his of M] asshole up against your mouth[or]Keep holding your lips around [his of M] asshole[stopping]?";
										if the player is consenting:
											let STE be 4;
											if STEnema < 4, now STE is STEnema;
											say "[if STE is 4]A torrent of[otherwise]The last of the[end if] [variable EL] gushes into your mouth!";
											if the total volume of face + STE > 4:
												say "You are forced to swallow what's already in your mouth!";
												compute swallowing; [Must succeed to avoid infinite loops]
											FaceFill EL by STE;
											decrease STEnema by STE;
											if EL is semen, TasteGrossOut 10;
											otherwise TasteGrossOut 12;
										otherwise:
											say "You pull away, and the rest of the [EL] enema flows down through the grated platform to the ground below.";
											HappinessDown M by 1;
											now LLR is STEnema * 0.25;
											now STEnema is 0;
					otherwise: [1 hour]
						if STRectum > the dedication of M + 4:
							say "[bold type][student-name of M] looks away in shame as [he of M] squats, grunts and fills [his of M] diaper with a big helping of mushy mess.[roman type][line break]";
							increase STDiaperMess by STRectum;
							now STRectum is 1;
							increase STDiaper by STBladder;
							now STBladder is 0;
							SmellGrossOut messyDiaperSmellGrossnessLevel;
						otherwise if STBladder > the dedication of M + 4:
							if diaper lover > 0:
								say "[bold type][student-name of M] coughs awkwardly as a hissing sound fills the air. [roman type][big he of M] is wetting [himself of M], but trying not to draw attention to it. You don't say anything.";
								increase STDiaper by STBladder;
								now STBladder is 0;
							otherwise:
								say "[BigNameDesc of M] crosses [his of M] legs.[line break][speech style of M]'I'm sorry [NameBimbo], I really need to pee[one of][or] again[stopping]! [big please], can I pee in your mouth? It's the only way!'[roman type][line break]";
								while STBladder > 0:
									say "[one of]Do you let [him of M] pee in your mouth[or]Keep holding your mouth under [his of M] stream[stopping]?";
									if the player is consenting:
										let STE be 4;
										if STBladder < 4, now STE is STBladder;
										say "[if STE is 4]A hot stream of[otherwise]The last of the[end if] [urine] flows directly into your mouth!";
										if the total volume of face + STE > 4:
											say "You are forced to swallow what's already in your mouth!";
											compute swallowing; [Must succeed to avoid infinite loops]
										FaceFill urine by STE;
										decrease STBladder by STE;
									otherwise:
										say "You pull away, and the rest of the [urine] flows down through the grated platform to the ground below.";
										HappinessDown M by 1;
										now LLR is STBladder * 0.25;
										now STBladder is 0;
						if the total volume of face > 0:
							reset multiple choice questions;
							set numerical response 1 to "swallow your [MouthfulDesc]";
							set numerical response 2 to "spit it off the platform";
							set numerical response 3 to "demand [student-name of M] drinks it out of your mouth instead";
							compute multiple choice question;
							if player-numerical-response is 3:
								if the dedication of M <= 1:
									say "[speech style of M]'Gross! I'm not drinking my own stuff. Sorry, but no, not this time.'[roman type][line break]";
									FavourDown M;
									reset multiple choice questions;
									set numerical response 1 to "swallow your [MouthfulDesc]";
									set numerical response 2 to "spit it off the platform";
									compute multiple choice question;
								otherwise:
									say "[speech style of M]'Gross! UGH! Fine.'[roman type][line break][big he of M] allows you to snowball the [MouthfulDesc] into [his of M] waiting mouth, and then [he of M] swallows it with a grimace.";
									HappinessDown M by 1;
									increase STDrink by (the total volume of face + 1) / 2;
									MouthEmpty;
							if player-numerical-response is 2:
								say "[speech style of M]'No, wait!'[roman type][line break][student-name of M] tries to discourage you, but it's too late - you spit the [MouthfulDesc] of the side of the platform.";
								HappinessDown M by 1;
								increase LLR by the total volume of face * 0.25;
								MouthEmpty;
							if player-numerical-response is 1, compute swallowing;
						if STDiaperMess > 0:
							say "[speech style of M]'[one of]I'm going to need you to change me.'[or]I think I need a change.'[or]Come on, [please], I can't change out of this thing properly without you.'[or][big please] change my diaper for me.'[or][big please] [NameBimbo], I need a change.'[or]Come on, I really could use a change.'[or]I really need a change now...'[or][big please] help me out of this thing...'[or][big please] change me [NameBimbo], I'm begging you!'[stopping][roman type][line break][BigNameDesc of M] [one of]whimpers[or]whines[or]says[cycling].";
							reset multiple choice questions;
							set numerical response 1 to "change [his of M] diaper";
							set numerical response 2 to "refuse";
							compute multiple choice question;
							if player-numerical-response is 1:
								say "You get down on your knees and clean and change [student-name of M][']s messy diaper, forcing your face and nose getting awfully close to something truly awful in the meantime.";
								SmellGrossOut messyDiaperSmellGrossnessLevel + 2;
							otherwise:
								say "You make a disgusted face and move to the other corner of the scissor lift.[line break][speech style of M]'[one of]What the fuck, [NameBimbo]! We're supposed to be a team!'[or]I can't believe you!'[stopping][roman type][line break][BigNameDesc of M] [one of]groans with frustration[or]says angrily[cycling].";
								HappinessDown M;
								say "[BigNameDesc of M] awkwardly changes [his of M] own messy diaper, which takes much longer than if you had just done it.";
							let SD be a random off-stage soiled-diaper;
							if SD is soiled-diaper:
								add (STDiaperMess / 2) + STDiaper to LDW;
								DiaperPrint SD from purple-medium-diaper;
								now SD is carried by the player;
							now STDiaperMess is 0;
							now STDiaper is 0;
						otherwise if STDiaper is 1 and the dedication of M < 2:
							say "[student-name of M] seems to be feeling uncomfortable. Finally, [he of M] cracks and changes [his of M] wet diaper for a dry one. That means there's another soggy used diaper up there on the platform with you both.";
							let SD be a random off-stage soiled-diaper;
							if SD is soiled-diaper:
								add STDiaper to LDW;
								DiaperPrint SD from purple-medium-diaper;
								now SD is carried by the player;
							now STDiaper is 0;
						if STFood > 0:
							decrease STFood by 1;
							if diaper messing >= 3, increase STRectum by 1;
						if (a random number between 3 and 5) - STFood > the dedication of M:
							say "[student-name of M] eats some [if diaper lover > 0]baby food from [his of M] hamster feeder[otherwise][semen]-glazed food[end if].";
							now STFood is 6;
						if STDrink > 0:
							increase STBladder by 1;
							if STDrink > 1, increase STBladder by 1;
						decrease STDrink by 2;
						if (a random number between 3 and 5) - STDrink > the dedication of M:
							say "[student-name of M] can't deal with [his of M] thirst any longer and drinks [his of M] fill of [if diaper lover > 0][milk][otherwise if watersports fetish is 1][urine][otherwise]water[end if].";
							now STDrink is 8;
						[Hourly changes]
						if debugmode > 0, say "[input-style]Before hourly changes. Food: [stomach-food of the player]. Drink: [stomach-liquid of the player]. Bladder: [bladder of the player][roman type][line break]";
						if the stomach-food of the player > 0:
							decrease the stomach-food of the player by 1;
							if diaper messing >= 3, increase rectum by 1;
						if the stomach-food of the player > 0:
							decrease the stomach-food of the player by 1;
							if diaper messing >= 3, increase rectum by 1;
						if the stomach-food of the player is 0, now hunger-override is true; [otherwise player can't get hungry in a predicament room]
						StomachDown 3;
						while the delayed bladder of the player > 0:
							bladderup 1 + xavier-belt-link;
							decrease the delayed bladder of the player by 1;
						if debugmode > 0, say "[input-style]After hourly changes. Food: [stomach-food of the player]. Drink: [stomach-liquid of the player]. Bladder: [bladder of the player][roman type][line break]";
				if LLR > 0:
					decrease W by LLR;
					say "The weight reading is now [bold type][W] LBS.[roman type][line break]";
					now LLR is 0.0;
			otherwise: [this occurs every action the player makes]
				now neighbour finder is the location of the player;
				let tourTarget be Predicament01;
				let D1 be north;
				let D2 be east;
				if tourStatus is 2 or tourStatus is 3, now D1 is south;
				if tourStatus > 2, now D2 is west;
				let D1R be the room D1 from neighbour finder;
				let D2R be the room D2 from neighbour finder;
				if tourStatus is 4 and neighbour finder is Predicament02:
					say "Finally you are arriving back at the warehouse!";
				otherwise if D2R is a road room or D2R is Predicament02:
					now tourTarget is D2R;
					say "The scissor lift drives [D2].";
				otherwise:
					now tourTarget is D1R;
					say "The scissor lift drives [D1].";
				now M is in tourTarget;
				repeat with SD running through soiled-diaper in neighbour finder:
					now SD is in tourTarget;
				now the player is in tourTarget;
				if tourTarget is Predicament10, now tourStatus is 2;
				if tourTarget is Predicament17, now tourStatus is 3;
				if tourTarget is Predicament25, now tourStatus is 4;
				if tourTarget is Predicament01:
					now tourStatus is -1;
					if diaper lover is 0:
						if watersports fetish is 1, now temporaryYesNoBackground is Figure of team scissor lift predicament B;
						otherwise now temporaryYesNoBackground is Figure of team scissor lift predicament A;
					otherwise:
						now temporaryYesNoBackground is Figure of no-image-yet;
				if tourTarget is Predicament03:
					set up predicament universe;
					compute predicament map reveal;
				if tourTarget is not Predicament01 and tourTarget is not Predicament02:
					repeat with BYS running through bystanders in the location of the player:
						now BYS is moved;
					follow the bystanders move rule;
				decrease mins by 1;
				if mins < 0:
					increase mins by 60;
					decrease T by 1;
			if previousW > 348.0 and W <= 348.0, say "With this reduction in weight, you now know that whatever 'modest clothes' may have been available for you to wear after the lift descends is locked away.";
			if previousW > 347.0 and W <= 347.0, say "With this reduction in weight, you now know that whatever 'humiliating clothes' may have been available for you to wear after the lift descends is locked away. You're going to have to sneak home in nothing[if diaper lover > 0] but a diaper[end if].";
			let W1 be 345.0;
			let W2 be 342.0;
			if diaper lover is 0:
				now W1 is 342.0;
				now W2 is 345.0;
			if previousW > W1 and W <= W1:
				say "With this reduction in weight, the wheels on the scissor lift start moving! Uh-oh...";
				now tourStatus is 1;
				now temporaryYesNoBackground is figure of no-image-yet;
				now temporary-map-figure is figure of no-image-yet;
			if previousW > W2 and W <= W2:
				say "With this reduction in weight, the timer beeps and increases by a massive 24 hours. This is insane - can you really be expected to stay up here for so long?!";
				increase T by 24;
			now previousW is W;
	say "A beeping sound signals that the game is over. The scissor lift descends and you are able to leave.";
	repeat with SD running through held soiled-diapers:
		now SD is in the location of the player;
	if W > 347.0:
		let C be orange-g-string;
		if diaper lover > 0, now C is a random yellow baby romper;
		blandify and reveal C;
		now C is in Predicament01;
		if the player is in Predicament01, say "You can see two [ShortDesc of C]s here for you and [student-name of M], in an open unlocked box.";
	if W > 348.0:
		let C be a random pink leotard;
		blandify and reveal C;
		now the raw-magic-modifier of C is 1;
		now C is in Predicament01;
		if the player is in Predicament01, say "You can see two [ShortDesc of C]s here for you and [student-name of M], in an open unlocked box.";
	say "[student-name of M] [if W > 347.0]takes [his of M] clothing and [end if]quickly leaves, evidently eager to get the sneak home over and done with. It looks like you're going to have to make your way out of here on your own.";
	if M is in Predicament01, try M going north;
	now M is in School01;
	deinterest M;
	now bigGameLoop is 0;
	repeat with BY running through bystanders:
		now BY is uninterested;
	now hunger-override is false.



gloryhole-key-predicament is a predicament. gloryhole-key-predicament has a number called keys-agreed. gloryhole-key-predicament has a number called keys-tried. gloryhole-key-predicament has a number called keys-needed. gloryhole-key-predicament can be ass-to-mouth-agreed. Understand "gholekpd" as gloryhole-key-predicament.

Definition: gloryhole-key-predicament is appropriate:
	if diaper quest is 0 and the rank of the player >= 3, decide yes;
	decide no.

To say PredicamentDescription of (P - gloryhole-key-predicament):
	say "I'm currently in an Extra Credit lesson where I need to suck cocks in the women's toilets in return for keys, hoping to soon get the right key for the bike lock preventing me from taking the swimsuit with me, and then get back to my home while avoiding as many bystanders as possible from noticing me.".

To execute (P - gloryhole-key-predicament):
	blandify and reveal navy-monokini;
	now navy-monokini is in Toilet02;
	now navy-monokini is stuck;
	now the player is in Toilet02;
	now map-zoom is 1;
	now the keys-needed of P is (a random number between 1 and 8) + the square root of the bimbo of the player;
	now bike-lock-key is in Toilet01;
	set up 29 bystanders;
	say "You find yourself in a dingy women's public toilets, completely naked. On one wall, a gloryhole is glaringly obvious. Anchored to the single toilet stall with a strong bicycle lock is a blue swimsuit. A robotic voice is speaking to you from some hidden speaker:[paragraph break][first custom style]'WELCOME TO EXTRA CREDIT CLASS. [PredicamentRewardExplanation]YOU ARE FREE TO UNLOCK THE DOOR AND LEAVE AT ANY TIME, BUT THE KEY TO THE BIKE LOCK IS AMONGST SEVERAL OTHER KEYS ON THE TABLE IN THE MEN'S TOILET, ON THE OTHER SIDE OF THE GLORYHOLE. INSTRUCTIONS IN THE MEN'S TOILETS RECOMMEND THAT ATTENDEES ARE TO PAY YOU FOR SEXUAL SERVICES WITH KEYS. YOU ARE IN A PARK CLOSE TO YOUR HOME. YOU MUST RETURN HOME TO COMPLETE THE PREDICAMENT.'[PredicamentRewardExplanationReaction][roman type][line break]And then, you hear female voices from outside the bathroom, beyond the locked door.[line break][second custom style]'Ummm... Hello? There's a line out here, you know!'[roman type][line break]Uh-oh, there's already people waiting outside. There's absolutely no way to leave the women's toilets without being seen, and potentially photographed, by who knows how many people...".

An all later time based rule:
	if current-predicament is gloryhole-key-predicament and the player is in Toilet02 and navy-monokini is in Toilet02 and navy-monokini is stuck and bike-lock-key is in Toilet01 and the number of ultimate-lesson-actor in Toilet02 is 0:
		if a random number between 1 and 2 is 1:
			let M be a random ultimate-lesson-actor;
			set up M;
			now M is in Toilet02;
			say "[bold type]Through the hole, you can hear someone enter the men's bathroom, and presumably read the instructions.[roman type][line break][speech style of M]'Hello?'[one of][roman type][line break]There's absolutely no point in pretending not to be there, so you reply.[or][stopping][line break][variable custom style]'Hi...'[roman type][line break]";
			let MPatience be a random number between 1 and 4;
			let MPatienceFuzz be MPatience + a random number between -1 and 1;
			let sexActList be {"suck my [manly-penis]"};
			if the player is possessing a vagina, add "let me fuck your pussy" to sexActList;
			add "let me fuck your asshole" to sexActList;
			if watersports fetish is 1, add "drink my piss" to sexActList;
			if a2m fetish > 0, add "repeatedly put my [manly-penis] in your ass then clean it off with your mouth" to sexActList;
			let MNastiness be a random number between 1 and the number of entries in sexActList;
			now the keys-agreed of gloryhole-key-predicament is a random number between 1 and 2;
			say "[speech style of M]'[if MPatienceFuzz <= a random number between -1 and 0]I'm going to have me some fun with you, whore. [otherwise if MPatienceFuzz <= a random number between 1 and 5]Well well well. Sounds like you're at my mercy, doesn't it. [otherwise if MPatienceFuzz <= 2]Looks like I've found myself a slut in a predicament, haha! [otherwise if MPatienceFuzz is 3]Oh, this is bad news for you, but I guess it's my lucky day! [otherwise if MPatienceFuzz is 4]Hmm, what should I do... [otherwise]I'm sorry to ask this of you, but... [end if]";
			while MPatience > 0:
				say "I'll give you [if the keys-agreed of gloryhole-key-predicament > 1][the keys-agreed of gloryhole-key-predicament] keys[otherwise]a key[end if] if you [entry MNastiness in sexActList].'[roman type][line break]";
				reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
				set numerical response 1 to "agree";
				set numerical response 2 to "demand more keys";
				set numerical response 3 to "[if MNastiness is 1]outright refuse[otherwise]tell him that's too nasty[end if]";
				now temporaryYesNoBackground is figure of female gloryhole key scene;
				compute multiple choice question;
				now temporaryYesNoBackground is figure of small image;
				if player-numerical-response is 1:
					now MPatience is -100; [this is how we flag that the player agreed]
				otherwise if player-numerical-response is 2:
					say "[variable custom style]'[one of]Make it [the keys-agreed of gloryhole-key-predicament + 1] keys and I'll think about it[or]That's worth at least [the keys-agreed of gloryhole-key-predicament + 1] keys[or]You'll need to offer more keys if you want that[or]Come on, offer more keys than that[or]If I'm really going to do that, you're going to have to give me more keys[or]You can't expect me to do that for only [if the keys-agreed of gloryhole-key-predicament is 1]a single key[otherwise][the keys-agreed of gloryhole-key-predicament] keys[end if][in random order].'[roman type][line break]";
					decrease MPatience by 1;
					if MPatience > 0:
						say "[BigNameDesc of M] [one of]clicks [his of M] tongue[or]snorts[or]grunts[in random order].[line break][speech style of M]'[one of]Fine. [or]Whatever. [or]Sure. [or]Okay. [in random order]";
						increase the keys-agreed of gloryhole-key-predicament by 1;
				otherwise if player-numerical-response is 3:
					say "[variable custom style]'[one of]No way[or]You've got to be kidding[or]Fuck off[or]Come on[or]Seriously now[in random order], [if MNastiness is 1]I'm not touching your [manly-penis] at all. Just give me the keys like a decent human being[otherwise][one of]there's no way I'm doing that. Think of something else[or]I'm not doing anything that nasty[or]you're dreaming, I don't do that kind of thing[or]that's too gross[or]please don't make me do that[or]there's got to be something less disgusting that I can do for you[in random order][end if].'[roman type][line break]";
					decrease MPatience by 1;
					if MNastiness is 1, now MPatience is 0;
					if MPatience > 0:
						if a random number between 1 and 2 is 1:
							say "[BigNameDesc of M] [one of]hums in thought[or]chuckles[or]tuts[in random order].[line break][speech style of M]'[one of]Fair enough. [or]Can't blame a guy for trying. [or]Oh well. Don't ask, don't get. [or]Perhaps that would be too much to ask. [in random order]";
							if MNastiness is 3 and watersports fetish is 0 and the player is not possessing a vagina, now MNastiness is 1;
							otherwise decrease MNastiness by 1;
						otherwise:
							say "[BigNameDesc of M] [one of]is silent for a moment[or]pauses before replying[or]whines impatiently[in random order].[line break][speech style of M]'[one of]But I really want you to. [or]The way I see it, I have all the power here. You'll do what I want you to. [or]But that's what I want. [or]Come on, it won't be that bad. You might even enjoy it. [in random order]";
				if MPatience is 0:
					if the keys-agreed of gloryhole-key-predicament is 1, now the keys-agreed of gloryhole-key-predicament is 0;
					otherwise now the keys-agreed of gloryhole-key-predicament is 1;
					say "[BigNameDesc of M] [one of]slams the wall[or]growls[or]snarls[in random order].[line break][speech style of M]'[one of]Fuck this[or]Screw this[or]My patience has run out[or]I'm not going to stand here and negotiate all day[in random order]. Either you ";
					if entry MNastiness in sexActList matches the text "suck":
						say "[one of]wrap your whore lips around my fat [manly-penis][or]get to work polishing my shaft[or]worship my [manly-penis] with your mouth[in random order] ";
					otherwise if entry MNastiness in sexActList matches the text "pussy":
						say "[one of]slide that slutty little pussy onto my shaft[or]ease that cute little cunt over my [manly-penis][in random order] ";
					otherwise if entry MNastiness in sexActList matches the text "asshole":
						say "[one of]milk my [manly-penis] with your tight little asshole[or]let me fill your guts with my jizz[in random order] ";
					otherwise if entry MNastiness in sexActList matches the text "piss":
						say "[one of]guzzle my piss like a good [boy of the player][or]suck the piss out of my dick like a straw like an obedient little whore[in random order] ";
					otherwise:
						say "[one of]go ass-to-mouth on my [manly-penis] like a dirty fucking toilet whore[or]keep sucking your own ass-juices off my [manly-penis] until I blow my load[in random order] ";
					say "[if the keys-agreed of gloryhole-key-predicament is 1]in return for ONE key[otherwise]for FREE[end if] or I will [one of]flush all these keys down the loo[or]take all the keys with me[in random order].'[roman type][line break]";
					reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
					set numerical response 1 to "agree to the reduced offer";
					set numerical response 2 to "refuse!";
					compute multiple choice question;
					if player-numerical-response is 1:
						now MPatience is -100; [this is how we flag that the player agreed]
					otherwise:
						say "[variable custom style]'Fuck you, you bastard!'[line break][speech style of M]'Suit yourself.'[roman type][line break]You hear [him of M] gathering up all the keys and then... [he of M]'s gone.";
						destroy bike-lock-key;
						destroy M;
			if MPatience is -100:
				now M is unwrapped;
				say "[variable custom style]'[one of]...Okay[or]It's a deal, then[or]Fine[or]Ugh, okay[in random order].'[line break][speech style of M]'[one of]Sweet[or]Oh yeah[or]Fuck yeah[in random order]!'[roman type][line break]Moments later, a [manly-penis] appears through the hole, and it's time for you to get to work.";
				let T be the substituted form of "[one of]Woah, this is really happening!'[or]Wow, what a slut.'[or]Good [boy of the player].'[or]Yes!'[cycling]";
				if entry MNastiness in sexActList matches the text "suck":
					say "You [if the player is upright]get on your knees and [end if]accept the [manly-penis] into your mouth.[line break][speech style of M]'[T][roman type][line break]";
					now the stance of the player is 1;
					calm M;
					interest M;
					now M is penetrating face;
					now M is friendly-fucking;
				otherwise if entry MNastiness in sexActList matches the text "pussy":
					say "You [if the player is upright]get on your knees and [end if]turn around to mount the [manly-penis] with your [vagina].[line break][speech style of M]'[T][roman type][line break]";
					now the stance of the player is 1;
					calm M;
					interest M;
					now M is penetrating vagina;
					now M is friendly-fucking;
					set up sex length of M in vagina;
					ruin vagina;
				otherwise if entry MNastiness in sexActList matches the text "asshole":
					say "You [if the player is upright]get on your knees and [end if]turn around to ease the [manly-penis] into your [asshole].[line break][speech style of M]'[T][roman type][line break]";
					now the stance of the player is 1;
					calm M;
					interest M;
					now M is penetrating asshole;
					now M is friendly-fucking;
					set up sex length of M in asshole;
					ruin asshole;
				otherwise if entry MNastiness in sexActList matches the text "piss":
					say "You [if the player is upright]get on your knees and [end if]wrap your mouth around the tip of [his of M] [manly-penis].[line break][speech style of M]'[T][roman type][line break]";
					now the stance of the player is 1;
					calm M;
					interest M;
					now M is penetrating face;
					FaceFill urine by a random number between 7 and 14;
					compute gloryhole key resolution of M;
					destroy M;
				otherwise: [ass to mouth]
					say "You [if the player is upright]get on your knees and [end if]turn around to ease the [manly-penis] into your [asshole].[line break][speech style of M]'[T][roman type][line break]";
					now the stance of the player is 1;
					calm M;
					interest M;
					now M is penetrating asshole;
					now M is friendly-fucking;
					now gloryhole-key-predicament is ass-to-mouth-agreed;
					set up sex length of M in asshole;
					ruin asshole;
		otherwise:
			say "You hear a voice from outside.[line break][second custom style]'[one of]Excuse me, I'm waiting!'[or]Is anyone even in there?!'[or]Finish up before I piss myself!'[or]You're taking forever!'[or]What's the hold up?!'[or]Are you okay in there?!'[in random order][roman type][line break]".

To compute gloryhole key resolution of (M - an ultimate-lesson-actor):
	if the keys-agreed of gloryhole-key-predicament is 0:
		say "[BigNameDesc of M] chuckles to [himself of M], and then leaves without saying another word.";
	otherwise if the player is getting very unlucky:
		say "[BigNameDesc of M] cackles to [himself of M].[line break][speech style of M]'Later, bitch!'[roman type][line break][big he of M] purposefully leaves without honouring [his of M] end of the agreement. [GotUnluckyFlav]";
	otherwise:
		say "[BigNameDesc of M] removes [his of M] [manly-penis] and then passes [if the keys-agreed of gloryhole-key-predicament > 1][the keys-agreed of gloryhole-key-predicament] keys[otherwise]a single key[end if] through the gloryhole.[line break][speech style of M]'[one of]That was awesome[or]That was fun[or]I enjoyed that[or]There you go[or]Here you go, as agreed[or]Good luck[in random order].'[roman type][line break]You hear [NameDesc of M] leave the way [he of M] came.";
		while navy-monokini is stuck and the keys-agreed of gloryhole-key-predicament > 0:
			say "You try [one of]a[or]another[or]yet another[stopping] key in the bike lock. ";
			increase the keys-tried of gloryhole-key-predicament by 1;
			decrease the keys-agreed of gloryhole-key-predicament by 1;
			if the keys-tried of gloryhole-key-predicament >= the keys-needed of gloryhole-key-predicament:
				say "It slides in and clicks open. You've done it - [NameDesc of navy-monokini] is yours!";
				now navy-monokini is not stuck;
				now bike-lock-key is carried by the player;
			otherwise:
				say "[one of]It won't fit inside the lock at all! [or]It won't go further than part of the way inside. [or]It goes all the way in, but won't turn. [purely at random][one of]Damn[or]Rats[or]Drat[in random order]!".

Report going up when the player is in Toilet02:
	if current-predicament is gloryhole-key-predicament and navy-monokini is stuck and bike-lock-key is held:
		say "[bold type]You are able to use the bike lock key to unlock the swimsuit.[roman type][line break]Hooray!";
		now navy-monokini is not stuck.



team-blowjob-race-predicament is a team-predicament. team-blowjob-race-predicament can be reeled-out. team-blowjob-race-predicament has a number called blowjob-clock. team-blowjob-race-predicament has a number called orgasm-ticks.
team-blowjob-race-predicament has a number called student-sex-method. [0 - blowjob; 1 - student vaginal; 2 - student anal; 3 - player vaginal; 4 - player anal]
team-blowjob-race-predicament has a list of numbers called previous-sex-methods.

The printed name of team-blowjob-race-predicament is "[TQlink of item described][MediumDesc of item described][TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "dildo", "pole" as team-blowjob-race-predicament when team-blowjob-race-predicament is not reeled-out. Understand "bound", "man", "woman" as team-blowjob-race-predicament when team-blowjob-race-predicament is reeled-out. The text-shortcut of team-blowjob-race-predicament is "tbrp".
Definition: team-blowjob-race-predicament is appropriate:
	if the rank of the player >= 3 and diaper quest is 0, decide yes;
	decide no.
To decide which number is the girth of (P - team-blowjob-race-predicament):
	if P is reeled-out, decide on 2;
	decide on the openness of asshole.
Definition: team-blowjob-race-predicament is live:
	if team-blowjob-race-predicament is reeled-out, decide yes;
	decide no.
Figure of team blowjob race predicament is the file "Special/Cutscene/cutscene-predicament-blowjob-race1.jpg".
Figure of team blowjob race predicament zoom is the file "Special/Cutscene/cutscene-predicament-blowjob-race2.jpg".
To decide which figure-name is the examine-image of (P - team-blowjob-race-predicament):
	if P is reeled-out, decide on Figure of team blowjob race predicament zoom;
	decide on Figure of team blowjob race predicament.

To say MediumDesc of (C - team-blowjob-race-predicament):
	say "[if C is reeled-out]bound [man of male-m][otherwise]dildo pole[end if]".

To decide which text is he of (M - team-blowjob-race-predicament):
	if M is reeled-out, decide on he of male-m;
	decide on "it".
To decide which text is his of (M - team-blowjob-race-predicament):
	if M is reeled-out, decide on his of male-m;
	decide on "its".
To decide which text is him of (M - team-blowjob-race-predicament):
	if M is reeled-out, decide on him of male-m;
	decide on "it".

To say PredicamentDescription of (P - team-blowjob-race-predicament):
	say "I'm currently in an Extra Credit lesson where I need to get back to my home while avoiding as many bystanders as possible from noticing me[if the orgasm-ticks of P >= 0]. But first I need to race to be the one to make the bound [man of male-m] in the middle of this room orgasm, reducing the time my opponent has to beat me by riding on a dildo pole when it's not my turn, because the loser remains locked in their wrist collar bar[end if].".

To execute (TBRP - team-blowjob-race-predicament):
	if seconds is 0, allocate 1 seconds;
	let M be team-predicament-partner;
	now M is in Predicament01;
	now M is unconcerned;
	now TBRP is in Predicament01;
	now the player is in Predicament01;
	now the stance of the player is 0;
	summon wrist collar bar locked;
	now wrist collar bar is stuck;
	now wrist collar bar is predicament-fixed;
	blandify and reveal no-bra-no-panties T-Shirt;
	now no-bra-no-panties T-Shirt is in Predicament01;
	now no-bra-no-panties T-Shirt is predicament-fixed;
	now no-bra-no-panties T-Shirt is confidence;
	blandify and reveal V-crotch-jeans;
	now V-crotch-jeans is in Predicament01;
	now V-crotch-jeans is predicament-fixed;
	now V-crotch-jeans is speed;
	now the blowjob-clock of TBRP is 54;
	say "You look around... you're standing at one end of a rather large room, with [NameDesc of M] standing at the other end. You're both completely naked except for a metal wrist collar bar that is attached to a strong metal chain. The two chains (one for each of you) are mostly rolled up in a large metal reel, that looks like it can be wound out (to allow you freedom to walk towards the middle of the room), and then wound back in (to pull you back towards the reel on your respective walls). Next to each of you, embedded in the ground, is a dildo mounted on a vertical pole. Right in the middle of the room is a naked [man of male-m], blindfolded, gagged, and bound to a chair with [his of male-m] legs spread wide. Above [him of male-m] is a seven segment timer which reads '01:00'.[line break][first custom style]'WELCOME TO THE PENIS RACE [']EXTRA CREDIT['] CLASS. YOU WILL EACH IN TURN, BE GRANTED ACCESS TO THE PENIS IN THE MIDDLE OF THE ROOM. THE PERSON WITH ACCESS WHEN THE PENIS EJACULATES, WILL HAVE THEIR WRIST COLLAR BAR UNLOCKED. YOU WILL THEN BOTH NEED TO WALK HOME. THE WRIST COLLAR BAR OF THE LOSER WILL NOT UNLOCK... NOT EVEN WHEN THEY GET HOME.[paragraph break]'YOU CAN REDUCE YOUR OPPONENT'S ACCESS TIMER BY ONE SECOND BY FULLY INSERTING THE DILDO BESIDE YOU INTO YOUR BODY, AND THEN FULLY REMOVING IT.[paragraph break]'GOOD LUCK. YOUR RACE STARTS NOW.'[roman type][paragraph break]As soon as the explanation has finished, [NameDesc of M][']s chain is reeled out, and [he of M] is able to crawl to the middle of the room, and the seven-segment timer in the middle of the room begins to count down, in seconds. [big he of M] seems to quickly realise what is required of her, and kneels down in front of the gagged [man of male-m], and envelops [his of M] [manly-penis] with [his of M] mouth. The [man of male-m] groans with surprised pleasure through [his of male-m] gag.[paragraph break]You eye the dildo pole to your side. It's [if the girth of TBRP > 8]monstrously huge[otherwise if the girth of TBRP > 6]very, very thick[otherwise if the girth of TBRP > 4]rather thick[otherwise if girth of TBRP > 2]got some decent thickness to it[otherwise]forgivingly not too thick[end if], but nonetheless you could try to ride on it with your [asshole][if the player is possessing a vagina] or [vagina][end if] to reduce [student-name of M][']s timer if you liked. (You can't use your mouth - the chain isn't giving you enough give.)".

An all time based rule (this is the team blowjob race predicament rule):
	if current-predicament is team-blowjob-race-predicament and the player is in Predicament01 and the orgasm-ticks of team-blowjob-race-predicament >= 0:
		let M be team-predicament-partner;
		if team-blowjob-race-predicament is reeled-out:
			let D be the dedication of M;
			if D > 0:
				increase D by a random number between 1 and 2;
				say "[BigNameDesc of M] [one of]rides on[or]fucks[or]sits on and off[in random order] [his of M] dildo pole [D] times, decreasing the timer by [D] extra seconds.";
				decrease the blowjob-clock of team-blowjob-race-predicament by D;
		otherwise:
			if blowjob-clock of team-blowjob-race-predicament is 60:
				let D be the dedication of M;
				let RD be a random number between 0 and D;
				if RD > 2, now RD is 2;
				if RD < 0, now RD is 0;
				if M is nasty student or M is innocent student:
					now RD is 0;
				otherwise if 2 is listed in the previous-sex-methods of team-blowjob-race-predicament or 4 is listed in the previous-sex-methods of team-blowjob-race-predicament:
					if RD is 1, now RD is 2; [no ass to vag]
					if RD is 0, say "[speech style of M]'Ugh, I'm too sore to do anal [if 2 is listed in the previous-sex-methods of team-blowjob-race-predicament]again[otherwise]right now[end if]...'[roman type][line break]";
				now the student-sex-method of team-blowjob-race-predicament is RD;
				say "[BigNameDesc of M] crawls up to the bound [man of male-m], and ";
				if RD is 0:
					say "kneels in front of [him of male-m]. [if the number of entries in the previous-sex-methods of team-blowjob-race-predicament > 0]Wrinkling [his of M] nose, [he of M][otherwise][big he of M][end if] opens [his of M] mouth wide and takes the erect [manly-penis] into [his of M] mouth.";
				otherwise:
					say "turns around and squats down over [his of male-m] lap. [big he of M] carefully [one of]but competently [or][stopping] works the [manly-penis] into [his of M] [if RD is 1]pussy[otherwise]asshole[end if].";
			if the student-sex-method of team-blowjob-race-predicament is 0:
				say "[BigNameDesc of M] [one of]noisily slurps on the [manly-penis][or]works hard to orally pleasure the [manly-penis][or]bobs [his of M] head up and down as fast as [he of M] can go[or]sucks the [manly-penis] in [his of M] mouth with commendable vigour[or]diligently gives the best hands-free blowjob [he of M] can[in random order].";
				if a2m fetish > 0 and (2 is listed in the previous-sex-methods of team-blowjob-race-predicament or 4 is listed in the previous-sex-methods of team-blowjob-race-predicament):
					say "[speech style of M]'[one of]Ugh, yuck, it tastes of ass[or]Eurgh[or]Yuck yuck yuck[cycling]!'[roman type][line break][BigNameDesc of M] complains.";
				otherwise if 1 is listed in the previous-sex-methods of team-blowjob-race-predicament or 3 is listed in the previous-sex-methods of team-blowjob-race-predicament:
					say "[speech style of M]'[one of]Bleurgh. It still tastes of pussy[or]Eurgh[or]Blegh[or]Eww[cycling].'[roman type][line break][BigNameDesc of M] whines.";
				increase the orgasm-ticks of team-blowjob-race-predicament by 1;
			otherwise:
				increase the orgasm-ticks of team-blowjob-race-predicament by 2;
			check team blowjob race predicament orgasm;
		if the orgasm-ticks of team-blowjob-race-predicament > 0:
			decrease the blowjob-clock of team-blowjob-race-predicament by 6;
			if the blowjob-clock of team-blowjob-race-predicament <= 0:
				say "[bold type]The timer decreases to '00:00'. [roman type]";
				if team-blowjob-race-predicament is reeled-out:
					say "Instantly, you are reeled back in towards your wall, and can no longer reach the bound [man of male-m]. At the same time, [NameDesc of M][']s chain is loosened.";
					now the stance of the player is 0;
					now team-blowjob-race-predicament is not reeled-out;
					if team-blowjob-race-predicament is penetrating vagina, add 1 to the previous-sex-methods of team-blowjob-race-predicament;
					if team-blowjob-race-predicament is penetrating asshole, add 2 to the previous-sex-methods of team-blowjob-race-predicament;
					dislodge team-blowjob-race-predicament;
				otherwise:
					say "Instantly, [student-name of M] is reeled back in towards [his of M] wall, the [man of male-m][']s [manly-penis] popping out of [his of M] [if the student-sex-method of team-blowjob-race-predicament is 2]asshole[otherwise if the student-sex-method of team-blowjob-race-predicament is 1]pussy[otherwise]mouth[end if] with an audible sound. Your chain is loosened, allowing you to advance on the waiting [manly-penis].";
					if (a2m fetish > 0 or the player is possessing a vagina) and (M is nasty student or M is innocent student), say "[one of][speech style of M]'If you're thinking of doing what I think you're thinking of doing, just don't. There's no way I'm fucking this dude, and I don't want to have to taste you on [his of male-m] [manly-penis].'[roman type][line break][or][stopping]";
					now team-blowjob-race-predicament is reeled-out;
					if the student-sex-method of team-blowjob-race-predicament is 0, truncate the previous-sex-methods of team-blowjob-race-predicament to 0 entries;
					otherwise add the student-sex-method of team-blowjob-race-predicament to the previous-sex-methods of team-blowjob-race-predicament;
				now the blowjob-clock of team-blowjob-race-predicament is 60;
			otherwise:
				say "The timer decreases to '00:[if the blowjob-clock of team-blowjob-race-predicament < 10]0[end if][blowjob-clock of team-blowjob-race-predicament]'.";
		if the orgasm-ticks of team-blowjob-race-predicament >= 0, maybe-map-display team-blowjob-race-predicament.

Check inserting team-blowjob-race-predicament into something:
	try plugging the second noun with team-blowjob-race-predicament instead.
Check plugging something with team-blowjob-race-predicament:
	if the noun is not an orifice, say "This verb is for inserting the [MediumDesc of team-blowjob-race-predicament] into an orifice." instead;
	if team-blowjob-race-predicament is penetrating a body part, say "[BigNameDesc of team-blowjob-race-predicament] is already inside your [random body part penetrated by team-blowjob-race-predicament]. Use [bold type][']submit['][roman type] to continue the sex, or [bold type][']resist['][roman type] to pull away." instead;
	if the noun is face and team-blowjob-race-predicament is not reeled-out, say "The chain is too tight, you can't bend over to reach!" instead;
	if the noun is vagina:
		if the player is not possessing a vagina, say "You don't have a vagina." instead;
		if a2m fetish > 0 and team-blowjob-race-predicament is reeled-out and (2 is listed in the previous-sex-methods of team-blowjob-race-predicament or 4 is listed in the previous-sex-methods of team-blowjob-race-predicament), say "Despite everything that's going on, you know that it's not healthy or safe to put something that's recently been inside a butthole into your [vagina]." instead;
	if the girth of team-blowjob-race-predicament > the insertableGirthAcceptance of the noun, say "There's just no way [if the girth of team-blowjob-race-predicament > the openness of the noun + 5]it would fit, it's way too big[otherwise]you could bring yourself to try and push something so big inside of your poor [variable noun][end if]!" instead;
	allocate 6 seconds;
	if team-blowjob-race-predicament is reeled-out:
		now the stance of the player is 1;
		now team-blowjob-race-predicament is penetrating the noun;
		if the noun is a fuckhole:
			say "You squat over [NameDesc of team-blowjob-race-predicament] and do your best to lower your [variable noun] onto [his of male-m] [manly-penis].";
			ruin the noun;
			if the noun is asshole:
				if a2m fetish > 0 and 2 is not listed in the previous-sex-methods of team-blowjob-race-predicament:
					say "[speech style of team-predicament-partner]'With your ass?! Really, do you have to make it taste like butthole?!'[roman type][line break][BigNameDesc of team-predicament-partner] complains.";
					FavourDown team-predicament-partner;
				add 4 to the previous-sex-methods of team-blowjob-race-predicament;
			otherwise:
				add 3 to the previous-sex-methods of team-blowjob-race-predicament;
		otherwise:
			say "You kneel down and take the [manly-penis] into your mouth.";
			if a2m fetish > 0 and (2 is listed in the previous-sex-methods of team-blowjob-race-predicament or 4 is listed in the previous-sex-methods of team-blowjob-race-predicament):
				let N be 0;
				repeat with PSM running through the previous-sex-methods of team-blowjob-race-predicament:
					if PSM is 2 or PSM is 4, increase N by 1;
				say "You're forced to slurp up the [if N > 1][N] loads of [end if]ass juices that have been left behind on the bound [man of male-m][']s [manly-penis], ";
				if (1 is listed in the previous-sex-methods of team-blowjob-race-predicament or 3 is listed in the previous-sex-methods of team-blowjob-race-predicament):
					let NN be 0;
					repeat with PSM running through the previous-sex-methods of team-blowjob-race-predicament:
						if PSM is 1 or PSM is 3, increase NN by 1;
					say "as well as the [if NN > 1][NN] loads of [end if]pussy juices, ";
				say "the strong, bitter taste of ass immediately assaulting your tongue.";
				TasteGrossOut 6 + N;
			otherwise if (1 is listed in the previous-sex-methods of team-blowjob-race-predicament or 3 is listed in the previous-sex-methods of team-blowjob-race-predicament):
				let N be 0;
				repeat with PSM running through the previous-sex-methods of team-blowjob-race-predicament:
					if PSM is 1 or PSM is 3, increase N by 1;
				say "You're forced to slurp up the [if N > 1][N] loads of [end if]pussy juices that have been left behind on the bound [man of male-m][']s [manly-penis].";
				TasteGrossOut N;
			truncate the previous-sex-methods of team-blowjob-race-predicament to 0 entries;
		increase the orgasm-ticks of team-blowjob-race-predicament by 1;
		check team blowjob race predicament orgasm;
	otherwise:
		let SR be the soreness of the noun + a random number between -2 and 2;
		if SR < 0, now SR is 0;
		let RL be 5 - the square root of SR;
		say "[if the soreness of the noun > 7]You're feeling very sore down there. [otherwise if the soreness of the noun > 4]You're feeling quite sore down there. [end if]You manage to ride the dildo [RL] times, reducing the timer by [RL] extra seconds.";
		decrease the blowjob-clock of team-blowjob-race-predicament by RL;
		compute toyInsertion of team-blowjob-race-predicament into the noun;
		dislodge team-blowjob-race-predicament;
	do nothing instead.

Check submitting when team-blowjob-race-predicament is penetrating an orifice:
	allocate 6 seconds;
	let F be a random orifice penetrated by team-blowjob-race-predicament;
	if F is face:
		say "You continue to fellate [NameDesc of team-blowjob-race-predicament].";
		increase the orgasm-ticks of team-blowjob-race-predicament by 1;
	otherwise:
		say "You bounce up and down on [NameDesc of team-blowjob-race-predicament][']s [manly-penis] with your [variable F].";
		ruin F;
		increase the orgasm-ticks of team-blowjob-race-predicament by 2;
	check team blowjob race predicament orgasm;
	do nothing instead.

Check resisting when team-blowjob-race-predicament is penetrating an orifice:
	allocate 6 seconds;
	let F be a random orifice penetrated by team-blowjob-race-predicament;
	if F is face:
		say "You pull back, removing [NameDesc of team-blowjob-race-predicament][']s [manly-penis] from your mouth.";
	otherwise:
		say "You stand up with your legs, removing [NameDesc of team-blowjob-race-predicament][']s [manly-penis] from your [variable F].";
	dislodge team-blowjob-race-predicament;
	do nothing instead.

Check taking clothing when the player is in Predicament01:
	if wrist collar bar is worn and wrist collar bar is stuck, say "You can't reach!" instead.

Carry out waiting:
	if current-predicament is team-blowjob-race-predicament and the player is in Predicament01 and the orgasm-ticks of team-blowjob-race-predicament >= 0:
		if (the soreness of asshole > 0 or the soreness of vagina > 0) and the player is getting lucky:
			repeat with F running through fuckholes:
				heal F times 1;
			say GotLuckyFlav.

To check team blowjob race predicament orgasm:
	let A be the orgasm-ticks of team-blowjob-race-predicament;
	let R1 be a random number between 1 and 50;
	let R2 be a random number between 1 and 50;
	let R be R1 + R2;
	if debuginfo > 0, say "[input-style]Orgasm check: Bound [man of male-m][']s arousal [A].5 | [R] = [R1] + [R2] (2d50) Orgasm Difficulty Roll[roman type][line break]";
	if A >= R:
		say "[bold type]The bound [man of male-m] kicks [his of male-m] legs as much as [he of male-m] can when they're bound to chair legs, and yells into [his of male-m] gag as [he of male-m] orgasms. [roman type]";
		if team-blowjob-race-predicament is reeled-out: [player wins]
			if team-blowjob-race-predicament is penetrating asshole:
				say "Your [asshole] is filled with [his of male-m] load.";
				AssFill 3;
			otherwise if team-blowjob-race-predicament is penetrating vagina:
				say "Your [vagina] is filled with [his of male-m] load.";
				PussyFill 3;
			otherwise:
				say "Your mouth is filled with [his of male-m] load.";
				FaceFill semen by 3;
			say "Both of your wrist collar bars are unlinked from the reels of chain, freeing you and allowing you to leave the [Predicament01]. But... it's only your wrist collar bar that completely unlocks, freeing your hands and allowing your to remove it, retrieve the clothes and walk home at least slightly decent. [BigNameDesc of team-predicament-partner], on the other hand, is now stuck naked and locked into a wrist collar bar... and who knows how long it will be until [he of team-predicament-partner] can find a key and get out of this thing!!![paragraph break][speech style of team-predicament-partner]'This isn't fair! This is... this is!!!'[roman type][line break][BigNameDesc of team-predicament-partner] can't think of what else to say, it would seem.";
			HappinessDown team-predicament-partner;
			say "[BigNameDesc of team-predicament-partner] runs from the room, out onto the street, sobbing to [himself of team-predicament-partner] as [he of team-predicament-partner] goes.";
			now team-predicament-partner is in School05;
			unlock wrist collar bar;
			force clothing-focus redraw;
		otherwise: [student wins]
			say "Both of your wrist collar bars are unlinked from the reels of chain, freeing you and allowing you to leave the [Predicament01]. But... it's only [student-name of team-predicament-partner][']s wrist collar bar that completely unlocks, freeing [his of team-predicament-partner] hands and allowing [him of team-predicament-partner] to retrieve the clothes and walk home at least slightly decent. You, on the other hand, are now stuck naked and locked into a wrist collar bar... and who knows how long it will be until you can find a key and get out of this thing!!![paragraph break][BigNameDesc of team-predicament-partner] wastes no time in putting on the clothes and getting out of there.";
			repeat with C running through clothing in Predicament01:
				only destroy C;
			now team-predicament-partner is in School01;
		now wrist collar bar is not stuck;
		now team-predicament-partner is unleashed;
		now the orgasm-ticks of team-blowjob-race-predicament is -1;
	otherwise if A >= R / 2:
		say "The bound [man of male-m] [one of]coos[or]moans[or]groans[then at random] into [his of male-m] gag. Is [he of male-m] getting close?".

To construct unique buttons for (T - team-blowjob-race-predicament):
	[if T is penetrating a body part:
		if ButtonTableFull is 0:
			choose a blank row in the Table of Buttons;
			now the ButtonImage entry is Figure of SubmitButton;
			now the ButtonCommand entry is "submit";
			now the ButtonColour entry is lightModeFullGreen;
		if ButtonTableFull is 0:
			choose a blank row in the Table of Buttons;
			now the ButtonColour entry is lightModeFullGreen;
			now the ButtonImage entry is Figure of ResistButton;
			now the ButtonCommand entry is "resist";]
	if T is not penetrating a body part:
		if ButtonTableFull is 0 and T is reeled-out:
			choose a blank row in the Table of Buttons;
			now the ButtonImage entry is Figure of MouthButton;
			now the ButtonCommand entry is "insert [text-shortcut of T] in mouth";
			now the ButtonColour entry is lightModeFullGreen;
		if the player is possessing a vagina and ButtonTableFull is 0:
			choose a blank row in the Table of Buttons;
			now the ButtonImage entry is Figure of VaginaButton;
			now the ButtonCommand entry is "insert [text-shortcut of T] in vagina";
			now the ButtonColour entry is lightModeFullGreen;
			if a2m fetish > 0 and T is reeled-out and (2 is listed in the previous-sex-methods of T or 4 is listed in the previous-sex-methods of T), now the ButtonColour entry is lightModeFullYellow; [no ass to vag]
		if ButtonTableFull is 0:
			choose a blank row in the Table of Buttons;
			now the ButtonImage entry is Figure of AssholeButton;
			now the ButtonCommand entry is "insert [text-shortcut of T] in asshole";
			now the ButtonColour entry is lightModeFullGreen;

Check talking a student:
	if current-predicament is joint-fuckhole-predicament and the player is in Predicament01, say "You can't have a conversation with a butt." instead;
	if current-predicament is team-blowjob-race-predicament and the player is in Predicament01 and face is not actually occupied:
		reset multiple choice questions;
		set next numerical response to "'You look like such a filthy whore right now!'";
		if team-blowjob-race-predicament is reeled-out:
			set next numerical response to "'You're a bit too eager to get back to this [manly-penis], aren't you?!'";
			if team-blowjob-race-predicament is penetrating asshole and a2m fetish > 0, set next numerical response to "'I bet you can't wait to taste my asshole, can you, slut?'";
			if team-blowjob-race-predicament is penetrating vagina, set next numerical response to "'Ready to suck my pussy juices off [his of male-m] [manly-penis]?'";
		otherwise:
			set next numerical response to "'Oh my god, you whore! You don't even know that [man of male-m]'s name!'";
		set next numerical response to "'Just give up! There's no way you're going to win this.'";
		set numerical response 0 to "cancel";
		compute multiple choice question;
		let TXT be the chosen numerical response;
		unless TXT is "cancel":
			say "[variable custom style][TXT][roman type][line break]";
			say "[speech style of the noun]'[if the noun is amicable student][one of]That's not very nice[or]Oh[or]Let's not be so cruel to each other[in random order]...'[otherwise][one of]Fuck you[or]Shut up[or]Grrr[or]Zip it, skank[in random order]!'[end if][roman type][line break]";
			try waiting instead;
		do nothing instead.


teddy-walk-predicament is a predicament.
Definition: teddy-walk-predicament is appropriate:
	if diaper lover > 0 and the rank of the player >= 2 and the player is possessing a penis, decide yes;
	decide no.
To execute (NWP - teddy-walk-predicament):
	summon giant-teddy uncursed;
	summon yellow-open-front-dress uncursed;
	now giant-teddy is penetrating face;
	now the bladder of the player is bladder-risky-level + 4;
	now the player is in Predicament02;
	say "You find yourself in an alleyway somewhere outside. You are wearing a babydoll dress that's open at the front... and then blocking the view of your front is the most bizarre and very heavy teddy bear you've ever seen. Your [player-penis] is inserted into a fleshlight where its butthole should be[if diaper quest is 0], which is masturbating you[end if]. Your mouth is full of the large bulbous teat of a pacifier that's fixed to the back of the head of the teddy. You can tell that it's so heavy, that if you don't hold it against you with all your strength, and keep your mouth and [player-penis] fixed to their parts too, you'll drop the teddy and then be unable to pick it back up.[paragraph break]You're also desperate to pee.[paragraph break][first custom style]'WELCOME TO EXTRA CREDIT CLASS. [PredicamentRewardExplanation]TO EARN THIS TROPHY, YOU MUST SIMPLY RETURN HOME. YOUR TEDDY BEAR WILL [if watersports fetish is 1 and diaper quest is 0]SLOWLY PUMP ANYTHING IT COLLECTS DOWN BELOW BACK INTO YOUR MOUTH[otherwise if watersports fetish is 1]SLOWLY PUMP ANY URINE IT COLLECTS DOWN BELOW BACK INTO YOUR MOUTH[otherwise]COLLECT ANYTHING EXCRETED DOWN BELOW INTO THE TEDDY BEAR'S DIAPER. BUT BE WARNED, IT'S ALREADY VERY FULL[end if].'[PredicamentRewardExplanationReaction][roman type][line break]".

To say PredicamentDescription of (P - teddy-walk-predicament):
	say "I'm currently in an Extra Credit lesson where I need to get back to my home while avoiding as many bystanders as possible from noticing me. My giant teddy bear is [if diaper quest is 0 or watersports fetish is 0]masturbating me and [end if][if watersports fetish is 1]feeding me anything it collects down below[otherwise]slowly feeding me [milk][end if], and if I drop it I won't be able to pick it back up, exposing my genitals to the world.".


ddr-diaper-predicament is a predicament.
Definition: ddr-diaper-predicament is appropriate:
	if diaper lover > 0 and the rank of the player > 1, decide yes;
	decide no.

Figure of ddr diaper predicament is the file "Special/Cutscene/cutscene-predicament-ddr-diaper1.png".

To set up bystanders for (P - ddr-diaper-predicament):
	do nothing.

To execute (DDP - ddr-diaper-predicament):
	configure direction numbers;
	now the player is in Predicament01;
	now the stance of the player is 0;
	now the fatigue of the player is 0;
	let fatigue-rating be 1;
	let BT be the buckle threshold of the player;
	now the printed name of Predicament01 is "Arcade Centre";
	let DP be a random eligible huge diaper;
	if DP is nothing, now DP is a random huge diaper;
	only destroy DP;
	summon DP uncursed;
	let S be a random waddle outfit;
	only destroy S;
	summon S locked;
	now S is stuck; [prevents the player from dropping to their knees due to rectum cramps]
	now baby's bottle is carried by the player;
	now the fill-colour of baby's bottle is white;
	DoseFill baby's bottle;
	now baby's bottle is bland;
	now baby's bottle is sure;
	update appearance level;
	set up 28 bystanders;
	let LBS be the list of on-stage bystanders;
	sort LBS in random order;
	repeat with Z running from 1 to 3:
		let M be entry 1 in LBS;
		now M is in Predicament01;
		now M is interested;
		let PA be the appearance of the player;
		let PC be 0;
		if diaper quest is 1, now PC is the cringe appearance of the player;
		if PA < PC, now the worst-appearance of M is PC;
		otherwise now the worst-appearance of M is PA;
		remove M from LBS;
	say "You find yourself standing on a [']Rhythm Action Game['] dance mat, in the middle of a busy arcade. A couple of passersby are starting to notice you and come over to see what's going on, even as you are still taking further stock of your situation.[paragraph break]You're wearing a thick pink waddle outfit, which is locked on, of course, over a very thick diaper. In your left hand, a giant baby's bottle full of [milk] is taped tightly into your fist, preventing you from letting go of it. Your right hand is cuffed to the horizontal support bar behind the arcade machine, with a device that reads 'POINTS REMAINING UNTIL RELEASE: 999999'.[paragraph break]It would appear that the only way for you to escape the situation is to play the dance game until you've earned enough points. And meanwhile... the crowd just gets bigger and bigger.";
	say "[first custom style]'Why is [he of the player] dressed like a baby?'[line break][second custom style]'Gross! Is [he of the player] literally wearing a diaper?'[roman type][line break][slightHumiliateReflect]";
	if the graphics-window is g-present:
		now temporaryYesNoBackground is figure of ddr diaper predicament;
	otherwise if images visible is 1:
		display figure of ddr diaper predicament;
	let pointsNeeded be 999999;
	if diaper messing >= 4, now rectum is 10 - the rectum-incontinence of the player;
	let LR be a list of numbers;
	add leftNumber to LR;
	add rightNumber to LR;
	add upNumber to LR;
	add downNumber to LR;
	let F be Figure of map up arrow;
	while pointsNeeded > 0:
		let maxSequence be 14 - (fatigue-rating * 2);
		if maxSequence < 1, now maxSequence is 1;
		let correctEntries be 0;
		say "[line break][one of]The[or]Another round of the[stopping] game is about to start! Memorise as much of the pattern that appears as possible, then when it's your turn, repeat the pattern as best as you can! [one of]As a hint, [bold type][or]Remember, [stopping]the same direction will never appear twice in a row.[roman type][line break]Press any key to start.";
		let LD be a list of numbers;
		repeat with ZZ running from 1 to maxSequence:
			let R be a random number between 1 and 4;
			while ZZ > 1 and entry 1 in LD is entry R in LR: [when ZZ is 1, there's no entries in LD]
				now R is a random number between 1 and 4; [prevent there being two of the same direction in a row]
			add entry R in LR at entry 1 in LD;
		[if debugmode > 0, say "[LD][line break]";]
		if the graphics-window is g-present:
			clear the map zone;
			render YesNoBackground;
		let CL be the chosen letter;
		increase CL by 1;
		say "Get ready...";
		wait 2000 ms before continuing;
		repeat with ZZ running from 0 to (maxSequence - 1):
			let D be entry (maxSequence - ZZ) in LD;
			if D is leftNumber:
				now F is Figure of map left arrow;
			otherwise if D is rightNumber:
				now F is Figure of map right arrow;
			otherwise if D is upNumber:
				now F is Figure of map up arrow;
			otherwise:
				now F is Figure of map down arrow;
			if the graphics-window is g-present:
				now epilogue-image is F;
				clear the map zone;
				epilogue-display;
			otherwise:
				clear the screen;
				display F;
			wait 700 ms before continuing;
			now epilogue-image is figure of no-image-yet;
			if the graphics-window is g-present:
				clear the map zone;
			otherwise:
				clear the screen;
			wait 50 ms before continuing;
		say "[bold type]Now it's your turn! [roman type]Repeat the pattern as best as you can. (If you get one wrong, don't try to correct yourself, but instead keep going to the next one in the sequence.)";
		[if debugmode > 0, say "[LD][line break]";]
		let previous-direction be 99999999;
		repeat with ZZ running from 0 to (maxSequence - 1):
			let MSZZ be maxSequence - ZZ;
			let CL be the chosen letter;
			while CL is previous-direction or (CL is not upNumber and CL is not downNumber and CL is not leftNumber and CL is not rightNumber):
				say "[bold type]INPUT REJECTED: [if CL is previous-direction]Remember, it will never be the same direction as last time![otherwise]Please only press your arrow keys![end if][roman type][line break]Try again.";
				now CL is the chosen letter;
			let D be entry MSZZ in LD;
			if CL is leftNumber:
				if CL is D, now F is Figure of map left arrow;
				otherwise now F is Figure of map left red arrow;
			otherwise if CL is rightNumber:
				if CL is D, now F is Figure of map right arrow;
				otherwise now F is Figure of map right red arrow;
			otherwise if CL is upNumber:
				if CL is D, now F is Figure of map up arrow;
				otherwise now F is Figure of map up red arrow;
			otherwise:
				if CL is D, now F is Figure of map down arrow;
				otherwise now F is Figure of map down red arrow;
			if the graphics-window is g-present:
				now epilogue-image is F;
				clear the map zone;
				epilogue-display;
			otherwise:
				display F;
			if CL is D:
				increase correctEntries by 1;
				say "Correct! ";
			otherwise:
				say "Wrong! ";
			say "The arrow was [bold type][if D is upNumber]up[otherwise if D is leftNumber]left[otherwise if D is rightNumber]right[otherwise]down[end if][roman type].";
			now previous-direction is D;
			truncate LD to MSZZ - 1 entries;
			if MSZZ is 1, wait 1000 ms before continuing;
			now epilogue-image is figure of no-image-yet;
			[if debugmode > 0, say "[LD][line break]";]
		if the graphics-window is g-present:
			clear the map zone;
			render YesNoBackground;
		say "You got [correctEntries] out of [maxSequence] correct!";
		decrease pointsNeeded by (25000 * correctEntries) + a random number between 20000 and 30000;
		increase fatigue-rating by 1;
		now the fatigue of the player is BT - (BT / fatigue-rating);
		if pointsNeeded > 0:
			say "The device keeping your wrist locked to the support bar now reads 'POINTS REMAINING UNTIL RELEASE: [pointsNeeded]'.";
			if the player is not thirsty, StomachMilkDown 2;
			say "You are feeling [if fatigue-rating > 3][bold type]extremely tired and parched[roman type][otherwise if fatigue-rating is 3][bold type]very tired and thirsty[roman type][otherwise]tired and thirsty[end if]. Do you drink some of the [milk] from the baby's bottle to recover some energy? [one of](If you don't, you'll have a smaller sequence to copy next round, and therefore a smaller maximum possible score.)[or][stopping]";
			if the player is consenting:
				say "You bring the teat to your lips, and drink a few gulps of [milk].";
				StomachMilkUp 2;
				now fatigue-rating is fatigue-rating / 2;
				say "The crowd of people watching you makes disgusted sounds, and you hear some laughter too. You [blush the number of bystanders in Predicament01 * 50].";
				if the player is getting unlucky:
					let M be a random bystander in Predicament01;
					say "[BigNameDesc of M] ";
					let T be "you drinking [milk] from a baby bottle while playing on a DDR arcade machine";
					compute rapid picture taking of M witnessing T;
					say GotUnluckyFlav;
				if diaper messing >= 4:
					say "[one of]The [milk] has a weird medicine-like tang to it.[line break][variable custom style]Don't tell me... There's laxative mixed into this drink?![roman type][line break][or]Once again, you can taste that you're drinking laxative as well as [milk]...[stopping]";
					increase suppository by 1;
				compute ddr crowd building;
			if rectum > 5:
				now another-turn is 0;
				check real messing;
				if DP is messed:
					update appearance level;
					let M be a random bystander in Predicament01;
					say "[BigNameDesc of M] ";
					let T be "you messing yourself while playing on a DDR arcade machine";
					compute rapid picture taking of M witnessing T;
				if another-turn is 1:
					UnflinchingPainUp 10;
					compute ddr crowd building;
					now another-turn is 0;
			if DP is messed:
				say "[first custom style]'[one of]Disgusting! [big he of the player] pooped [his of the player] pants[or][big he of the player] smells so bad[or]I can't believe [he of the player] is doing that in a messy diaper[or]What a stinker[stopping]!'[roman type][line break]The crowd yells insults at you, and you [blush the number of bystanders in Predicament01 * 150].";
	say "Your wrist cuff unclicks - you are finally released! You are able to pull the tape off of your other hand, allowing you to drop the baby's bottle if you want, and begin to run away from the crowd, towards the exit!";
	update appearance level;
	let PA be the appearance of the player;
	let PC be 0;
	if diaper quest is 1, now PC is the cringe appearance of the player;
	repeat with M running through bystanders in Predicament01:
		if PA < PC, now the worst-appearance of M is PC;
		otherwise now the worst-appearance of M is PA;
	now temporaryYesNoBackground is figure of small image;
	now S is not stuck.

To compute ddr crowd building:
	let ZR be a random number between 1 and 2;
	let LBS be the list of on-stage bystanders;
	if the number of entries in LBS >= ZR:
		sort LBS in random order;
		update appearance level;
		let PA be the appearance of the player;
		let PC be 0;
		if diaper quest is 1, now PC is the cringe appearance of the player;
		repeat with Z running from 1 to ZR:
			let M be entry 1 in LBS;
			now M is in Predicament01;
			now M is interested;
			if PA < PC, now the worst-appearance of M is PC;
			otherwise now the worst-appearance of M is PA;
			remove M from LBS;
		say "The crowd builds, and there are now [the number of bystanders in Predicament01] people watching you. [slightHumiliateReflect]".


train-predicament is a predicament.
train-predicament has a list of numbers called train-cake.
train-predicament has a list of numbers called train-cum.
train-predicament has a list of numbers called train-piss.
train-predicament has a list of numbers called train-tomato.
train-predicament has a number called train-ping-pong-balls.

Definition: train-predicament is appropriate:
	if the rank of the player >= 3, decide yes;
	decide no.
To execute (TRNP - train-predicament):
	summon lycra-bodysuit uncursed;
	repeat with N running from 1 to 4:
		add 2 to the train-cake of train-predicament;
		add 1 to the train-cum of train-predicament;
		add 0 to the train-piss of train-predicament;
		add 0 to the train-tomato of train-predicament;
	if diaper quest is 1:
		summon plain-largish-diaper uncursed;
		if diaper messing >= 4, now rectum is rectum-risky-level + 1;
	otherwise:
		if a2m fetish is 0, summon remote-controlled-vibrator uncursed;
		if a2m fetish is 1, assfill 7 small eggs;
		if a2m fetish is 2 and watersports fetish is 1, now the urine volume of belly is 20;
		blandify and reveal heart-strap-thong;
		now heart-strap-thong is in Predicament02;
		gluify heart-strap-thong;
		now heart-strap-thong is predicament-fixed;
		if the largeness of breasts >= the min size of heart-strap-bra and the largeness of breasts <= the max size of heart-strap-bra:
			blandify and reveal heart-strap-bra;
			now heart-strap-bra is in Predicament02;
			now the size of heart-strap-bra is the largeness of breasts;
			gluify heart-strap-bra;
			now heart-strap-bra is predicament-fixed;
	if diaper quest is 1, now the bladder of the player is bladder-risky-level + 4;
	now the player is in Predicament01;
	say "You find yourself strapped face-down on some kind of trolley / cart / bondage bench on rails. You're wearing a green lycra bodysuit that covers everything except your face and crotch[if diaper quest is 1], and a large white diaper with a green vertical strip down the middle[end if]. Strict metal bondage keeps your arms and legs restrained and away from the ground. Your head hangs off the front end of your [']vehicle[']. and your butt hangs off the other end.[paragraph break][if watersports mechanics is 1]You're also desperate to pee. [end if][if diaper quest is 1 and diaper messing >= 4]And you feel the need to poop. [end if][if diaper quest is 0 and a2m fetish > 1]Also, you can feel that something slimy has been inserted in your asshole, and now urgently needs to be squeezed out. [end if][if diaper quest is 0 and a2m fetish is 1]Also, you can feel that there's several small objects inside your asshole, urgently needing to be squeezed out. [end if][paragraph break][first custom style]'WELCOME TO EXTRA CREDIT CLASS. [PredicamentRewardExplanation]ALLOW US TO EXPLAIN THE NATURE OF TODAY'S PREDICAMENT.'[roman type][line break]";
	now temporaryYesNoBackground is Figure of Train Predicament Cutscene;
	compute single choice question "Look around as the voice speaks.";
	now temporaryYesNoBackground is Figure of no-image-yet; [forces normal map to be drawn during multiple choice, which in turn forces train state render to be drawn instead]
	now temporary-map-figure is Figure of Train Predicament Track;
	say "[first custom style]'TO EARN THIS TROPHY, YOU MUST RETURN HOME. BUT FIRST YOU'LL NEED TO EARN YOUR FREEDOM. YOU ARE BOUND ON A TROLLEY MOUNTED UPON A CIRCULAR TRACK. THERE IS A GREEN CIRCLE WITHIN THIS TRACK. THERE IS A CAMERA OBSERVING THE TRACK FROM ABOVE. WHEN IT CAN SEE AN UNINTERRUPTED GREEN CIRCLE, YOU WILL BE RELEASED. UNFORTUNATELY THERE ARE CURRENTLY SEVERAL PIECES OF CHOCOLATE FUDGE CAKE, AND SEVERAL SPLASHES OF [if diaper quest is 0]SEMEN[otherwise]HUMAN BREAST MILK[end if], BLOCKING THE PATTERN.[paragraph break]";
	if diaper quest is 0:
		if a2m fetish > 0:
			say "'YOUR BELLY HAS BEEN FILLED WITH [if a2m fetish > 1 and watersports fetish > 0]URINE[otherwise if a2m fetish > 1]TOMATO KETCHUP[otherwise]PING PONG BALLS[end if], AND IF YOU CAN'T HOLD IT IN, THE RESULT MIGHT MAKE YOUR LIFE EVEN MORE TRICKY...'";
		otherwise:
			say "'OH, AND BY THE WAY, YOU HAVE A VIBRATOR ON YOUR GENITALIA[run paragraph on]";
			if the player is possessing a penis, say ".[paragraph break]";
			otherwise say ". EVERY TIME IT DETECTS YOU HAVING AN ORGASM, A SQUIRT OF [if watersports fetish > 0]URINE[otherwise]EXTRA-STRONG MUSTARD[end if] IS ADDED TO THE TRACK.[paragraph break]";
	otherwise:
		say "'YOUR DIAPER HAS A SPECIAL HIGH-TECH STRIP DOWN THE MIDDLE. IT IS CURRENTLY GREEN, BUT IF YOU WET YOURSELF, IT WILL TURN WHITE. [if diaper messing >= 4]HOWEVER IF IT DETECTS POOP, IT WILL BE GREEN, EVEN IF THERE IS URINE PRESENT TOO[otherwise]SO IF YOU CAN'T HOLD YOUR BLADDER, YOU WILL HAVE TO REMAIN ON THE TROLLEY UNTIL SOMEONE RESCUES YOU[end if].[paragraph break]";
	say "AN UNSUSPECTING PERVERT HAS BEEN TOLD TO COME TO THIS LOCATION WITH HIS HIGH QUALITY CAMERA. HE WILL BE HERE SOON. HE WILL LIKELY RELEASE YOU IF YOU ASK NICELY, BUT WE IMAGINE HE MIGHT TAKE A FEW PHOTOS FIRST.'";
	say "[PredicamentRewardExplanationReaction][roman type][line break]";
	let trolleyTime be 1;
	let buildingPressure be 0;
	let previousPressure be 0;
	let LT be a list of numbers; [1: cake, 2: cum, 3: piss, 4: tomato, 5: ping pong]
	while trolleyTime > 0:
		say "[line break][one of]The trolley starts to move[or]The trolley has completed another circuit of the track[stopping].";
		let currentPressure be (the square root of buildingPressure) + a random number between 0 and 4;
		if diaper quest is 0 and a2m fetish is 2, increase currentPressure by 1;
		if currentPressure > 9, now currentPressure is 9;
		now currentPressure is currentPressure * 10;
		[refresh list of things on track]
		truncate LT to 0 entries;
		repeat with TC running through the train-cake of train-predicament:
			if TC > 0:
				add 1 to LT, if absent;
		repeat with TC running through the train-cum of train-predicament:
			if TC > 0:
				add 2 to LT, if absent;
		repeat with TP running through the train-piss of train-predicament:
			if TP > 0:
				add 3 to LT, if absent;
		repeat with TT running through the train-tomato of train-predicament:
			if TT > 0:
				add 4 to LT, if absent;
		if train-ping-pong-balls of train-predicament > 0:
			add 5 to LT, if absent;
		render train state;
		if (diaper quest is 0 and (a2m fetish is not 1 or the small egg count of belly > 0)) or (diaper quest is 1 and the bladder of the player > 0):
			say "Your [if diaper quest is 0 and a2m fetish > 0]belly's cramping[otherwise if diaper quest is 1]bladder's cramping[otherwise]need to orgasm[end if] [if previousPressure is 0]is suddenly at the forefront of your mind[otherwise if currentPressure > previousPressure and currentPressure <= previousPressure + 3]gets a bit stronger[otherwise if currentPressure > previousPressure]is much stronger than before[otherwise if currentPressure is previousPressure]is the same as before[otherwise if currentPressure <= previousPressure - 3]significantly dies away for now[otherwise]has slightly reduced[end if] ([bold type][currentPressure]% chance of losing control this turn[roman type]).";
			reset multiple choice questions;
			set numerical response 1 to "Focus on clearing the green path as quickly as possible (increases average amount of stuff cleared).";
			set numerical response 2 to "Split your focus between clearing the green path and holding [if diaper quest is 0 and a2m fetish > 0]your sphincter shut[otherwise if diaper quest is 1]onto your bladder[otherwise]back your orgasm[end if] (half chance of losing control).";
			set numerical response 3 to "Focus entirely on holding [if diaper quest is 0 and a2m fetish > 0]your sphincter shut[otherwise if diaper quest is 1]onto your bladder[otherwise]back your orgasm[end if] (one tenth chance of losing control).";
			compute multiple choice question;
		otherwise:
			compute single choice question "Focus on clearing the green path as quickly as possible."; [sets player-numerical-response to -1]
		if player-numerical-response is 3:
			say "You ignore the stuff on the track, and hold on with all your might.";
			now player-numerical-response is 10;
		otherwise: [use your mouth to remove some stuff]
			let ELT be the number of entries in LT;
			while ELT > 0:
				let X be entry ELT in LT;
				[do the thing]
				say line break;
				while X is 1:
					let ETC be a random number between 1 and the number of entries in the train-cake of train-predicament;
					let TC be entry ETC in the train-cake of train-predicament;
					if TC > 0:
						now entry ETC in the train-cake of train-predicament is TC - 1;
						say "You [if TC is 2]bury your face into one of the large slices of cake, eating as much as possible before the trolley moves you on[otherwise]clean up one of the smudges left by your previous messy cake eating[end if].";
						StomachFoodUp 1;
						now X is 0;
				while X is 2:
					let ETC be a random number between 1 and the number of entries in the train-cum of train-predicament;
					let TC be entry ETC in the train-cum of train-predicament;
					if TC > 0:
						now entry ETC in the train-cum of train-predicament is TC - 1;
						say "You hoover a small puddle of [if diaper quest is 1][milk][otherwise][semen][end if] up from the floor.";
						if diaper quest is 1, StomachMilkUp 1;
						otherwise StomachSemenUp 1;
						now X is 0;
				while X is 3:
					let ETP be a random number between 1 and the number of entries in the train-piss of train-predicament;
					let TP be entry ETP in the train-piss of train-predicament;
					if TP > 0:
						now entry ETP in the train-piss of train-predicament is TP - 1;
						if diaper quest is 1 or watersports fetish is 0:
							say "You lick up a foul tasting blob of mustard from the floor. It's so bitter it feels like it's burning your tongue!";
							UnflinchingPainUp 10;
						otherwise:
							say "You hoover a small puddle of [urine] up from the floor, acutely aware that a few moments ago, this foul liquid was inside your own butthole.";
							TasteGrossOut 12;
							StomachUrineUp 1;
						now X is 0;
				while X is 4:
					let ETT be a random number between 1 and the number of entries in the train-tomato of train-predicament;
					let TT be entry ETT in the train-tomato of train-predicament;
					if TT > 0:
						now entry ETT in the train-tomato of train-predicament is TT - 1;
						say "You lick some tomato ketchup from the floor. It tastes unmistakably like the taste of your butthole.";
						TasteGrossOut 12;
						say "You swallow it down.";
						now X is 0;
				if X is 5:
					let X be a random number between 1 and 3;
					if X > the train-ping-pong-balls of train-predicament, now X is the train-ping-pong-balls of train-predicament;
					decrease the train-ping-pong-balls of train-predicament by X;
					say "You use your tongue to push as many of the ping pong balls that were recently in your ass as possible off of the track. You [if the train-ping-pong-balls of train-predicament is 0]manage to get the final [X], and now this section of the train is all green.[otherwise if X is 1]only manage to move one[otherwise]manage to move [X][end if] before the trolley pulls you onwards.";
					TasteGrossOut 7;
				[remove it from the list and potentially go again]
				let RELT be a random number between 1 and 5;
				if RELT < 3 or (player-numerical-response > 1 and RELT < 5), now ELT is 0;
				otherwise decrease ELT by 1;
				truncate LT to ELT entries;
		if player-numerical-response > 0: [if it's -1, there's nothing left to hold]
			now previousPressure is currentPressure;
			if player-numerical-response > 0, now currentPressure is currentPressure / player-numerical-response;
			let RNG be a random number between 1 and 100;
			if debuginfo > 0, say "[input-style]Hold on check: d100 ([RNG]) | [currentPressure].5 difficulty rating[roman type][line break]";
			if RNG < currentPressure: [we don't hold on successfully]
				say "[bold type]You can't hold on![roman type] ";
				if diaper quest is 1:
					say "You wet yourself, huge amounts of [urine] flowing straight into the thick padding of your [plain-largish-diaper]. The green stripe disappears.";
					UrineSoakUp plain-largish-diaper by the bladder of the player;
					now the bladder of the player is 0;
				otherwise if a2m fetish is 0:
					if the player is possessing a penis:
						say "You cum hard, adding a new puddle of cum to the track.";
						let LPDL be a list of numbers;
						repeat with ETC running from 1 to 4:
							if entry ETC in train-cum of train-predicament is 0, add ETC to LPDL;
						if the number of entries in LPDL > 0:
							let LPDLR be a random number between 1 and the number of entries in LPDL;
							let LPDLN be entry LPDLR in LPDL;
							now entry LPDLN in train-cum of train-predicament is 1;
					otherwise:
						say "You cum hard. The automated predicament seems to somehow detect this, and you watch in dismay as a small puddle of [if watersports fetish is 1][urine][otherwise]mustard[end if] is squirted onto the track from a nozzle in the ceiling.";
						let LPDL be a list of numbers;
						repeat with ETP running from 1 to 4:
							if entry ETP in train-piss of train-predicament is 0, add ETP to LPDL;
						if the number of entries in LPDL > 0:
							let LPDLR be a random number between 1 and the number of entries in LPDL;
							let LPDLN be entry LPDLR in LPDL;
							now entry LPDLN in train-piss of train-predicament is 1;
					SexAddictUp 1;
				otherwise if a2m fetish is 1:
					say "A large number of ping pong balls come shooting out of your butthole. Seven of them end up on top of the green line, obscuring the perfect circle. You're going to have to reach them with your tongue and knock them out of the way before you can escape...";
					now small egg count of belly is 0;
					now the train-ping-pong-balls of train-predicament is 7;
				otherwise:
					say "A large, loud squirt of [if watersports fetish is 1][urine][otherwise]tomato ketchup[end if] comes squelching out of your butthole, coating the track behind you. Now you're going to have to lick that up, too...";
					if watersports fetish is 1:
						let LPDL be a list of numbers;
						repeat with ETP running from 1 to 4:
							if entry ETP in train-piss of train-predicament is 0, add ETP to LPDL;
						if the number of entries in LPDL > 0:
							let LPDLR be a random number between 1 and the number of entries in LPDL;
							let LPDLN be entry LPDLR in LPDL;
							now entry LPDLN in train-piss of train-predicament is 1;
					otherwise:
						let LPDL be a list of numbers;
						repeat with ETT running from 1 to 4:
							if entry ETT in train-tomato of train-predicament is 0, add ETT to LPDL;
						if the number of entries in LPDL > 0:
							let LPDLR be a random number between 1 and the number of entries in LPDL;
							let LPDLN be entry LPDLR in LPDL;
							now entry LPDLN in train-tomato of train-predicament is 1;
				now buildingPressure is 0;
			increase buildingPressure by 1;
		otherwise:
			now previousPressure is 0;
			now buildingPressure is 0;
		[refresh list of things on track]
		truncate LT to 0 entries;
		repeat with TC running through the train-cake of train-predicament:
			if TC > 0:
				add 1 to LT, if absent;
		repeat with TC running through the train-cum of train-predicament:
			if TC > 0:
				add 2 to LT, if absent;
		repeat with TP running through the train-piss of train-predicament:
			if TP > 0:
				add 3 to LT, if absent;
		repeat with TT running through the train-tomato of train-predicament:
			if TT > 0:
				add 4 to LT, if absent;
		if train-ping-pong-balls of train-predicament > 0:
			add 5 to LT, if absent;
		render train state;
		now player-numerical-response is 0;
		if diaper quest is 1 and plain-largish-diaper is wet:
			if diaper messing >= 3:
				if the number of entries in LT is 0:
					say "You've now reached the point where the only thing that's preventing there being a complete green circle is your wet diaper. And from the instructions given to you at the start, you know there's only one way to turn it back green.";
					reset multiple choice questions;
					set numerical response 1 to "Mess yourself.";
					set numerical response 2 to "You don't want to walk home messy! Wait for someone to discover and release you instead.";
					compute multiple choice question;
					if player-numerical-response is 1:
						now voluntarySquatting is 1;
						compute messing;
						say "A beeping sound indicates that the camera has seen a perfect green circle! The trolley stops, and your bondage is automatically unlocked. You're free!";
						now trolleyTime is 0;
			otherwise:
				say "Well, that's that. Thanks to your diaper, you can no longer complete the objective of creating a complete green circle. There's only one thing you can do now - wait for someone to come and discover you.";
				now player-numerical-response is 2;
		otherwise if the number of entries in LT > 0:
			reset multiple choice questions;
			set numerical response 1 to "Keep going.";
			set numerical response 2 to "Give up and wait for someone to discover you.";
			compute multiple choice question;
		if player-numerical-response is 2 or a random number between 10 and 50 < trolleyTime:
			update appearance level;
			let PA be the appearance of the player;
			let PC be 0;
			if diaper quest is 1, now PC is the cringe appearance of the player;
			now shutterbug-bystander is in Predicament01;
			now shutterbug-bystander is moved;
			now shutterbug-bystander is interested;
			if the PA < PC, now the worst-appearance of shutterbug-bystander is PC;
			otherwise now the worst-appearance of shutterbug-bystander is PA;
			say "FLASH! A noisy camera shutter sound goes off behind you. You turn your head to see [NameDesc of shutterbug-bystander] taking several pictures of you![line break][variable custom style]'HEY WHAT THE HELL! Help me out here, don't just take photos of me, you creep!'[roman type][line break][big he of shutterbug-bystander] sniffs.[line break][speech style of shutterbug-bystander]'Fine.'[roman type][line break][big he of shutterbug-bystander] approaches a red button on one wall that you hadn't even noticed, and presses it. The trolley immediately stops moving, and your bondage is automatically released.[line break][speech style of shutterbug-bystander]'But because you spoke to me so nastily, I'm going to put these photos on the Internet.'[roman type][line break]And then, before you can retort, [he of shutterbug-bystander] has dashed back out through the only door.";
			try shutterbug-bystander going north;
			let TPT be the substituted form of "you locked on a weird bondage trolley in a green lycra bodysuit [if diaper quest is 0]with your exposed butt[otherwise if plain-largish-diaper is messed]with a visibly messy diaper[otherwise if plain-largish-diaper is wet]with a visibly soaked diaper[otherwise]with a big thick (but thankfully dry) diaper[end if] sticking out the back";
			compute digital reputation damage TPT strength (the worst-appearance of shutterbug-bystander) quality 2;
			compute digital reputation damage TPT strength (the worst-appearance of shutterbug-bystander) quality 2;
			now trolleyTime is 0;
		otherwise:
			if the number of entries in LT is 0:
				say "A beeping sound indicates that the camera has seen a perfect green circle! The trolley stops, and your bondage is automatically unlocked. You're free!";
				now trolleyTime is 0;
			otherwise:
				sort LT in random order;
				increase trolleyTime by 1;
	if remote-controlled-vibrator is worn, arouse 1000 * buildingPressure;
	now temporaryYesNoBackground is figure of small image.


Figure of Train Predicament Track is the file "Special/Train/train__0001_Track-2.jpg".

Figure of Train Predicament Smear 1 is the file "Special/Train/train__0004_Smear-1.png".
Figure of Train Predicament Smear 2 is the file "Special/Train/train__0006_Smear-2.png".
Figure of Train Predicament Smear 3 is the file "Special/Train/train__0008_Smear-3.png".
Figure of Train Predicament Smear 4 is the file "Special/Train/train__0010_Smear-4.png".

Figure of Train Predicament Cake 1 is the file "Special/Train/train__0005_Cake-1.png".
Figure of Train Predicament Cake 2 is the file "Special/Train/train__0007_Cake-2.png".
Figure of Train Predicament Cake 3 is the file "Special/Train/train__0009_Cake-3.png".
Figure of Train Predicament Cake 4 is the file "Special/Train/train__0011_Cake-4.png".

Figure of Train Predicament Tomato 1 is the file "Special/Train/train__0012_Tomato-1.png".
Figure of Train Predicament Tomato 2 is the file "Special/Train/train__0013_Tomato-2.png".
Figure of Train Predicament Tomato 3 is the file "Special/Train/train__0014_Tomato-3.png".
Figure of Train Predicament Tomato 4 is the file "Special/Train/train__0015_Tomato-4.png".

Figure of Train Predicament Pee 1 is the file "Special/Train/train__0017_Pee-1.png".
Figure of Train Predicament Pee 2 is the file "Special/Train/train__0018_Pee-2.png".
Figure of Train Predicament Pee 3 is the file "Special/Train/train__0019_Pee-3.png".
Figure of Train Predicament Pee 4 is the file "Special/Train/train__0020_Pee-4.png".

Figure of Train Predicament Cum 1 is the file "Special/Train/train__0021_Cum-1.png".
Figure of Train Predicament Cum 2 is the file "Special/Train/train__0022_Cum-2.png".
Figure of Train Predicament Cum 3 is the file "Special/Train/train__0023_Cum-3.png".
Figure of Train Predicament Cum 4 is the file "Special/Train/train__0024_Cum-4.png".


To render train state:
	truncate temporary-map-figures to 0 entries;
	add temporary-map-figure to temporary-map-figures;
	add Figure of Train Predicament Player to temporary-map-figures;
	let E be 1;
	repeat with TC running through the train-cake of train-predicament:
		if TC is 1:
			if E is 1:
				add Figure of Train Predicament Smear 1 to temporary-map-figures;
			otherwise if E is 2:
				add Figure of Train Predicament Smear 2 to temporary-map-figures;
			otherwise if E is 3:
				add Figure of Train Predicament Smear 3 to temporary-map-figures;
			otherwise:
				add Figure of Train Predicament Smear 4 to temporary-map-figures;
		otherwise if TC is 2:
			if E is 1:
				add Figure of Train Predicament Cake 1 to temporary-map-figures;
			otherwise if E is 2:
				add Figure of Train Predicament Cake 2 to temporary-map-figures;
			otherwise if E is 3:
				add Figure of Train Predicament Cake 3 to temporary-map-figures;
			otherwise:
				add Figure of Train Predicament Cake 4 to temporary-map-figures;
		increase E by 1;
	now E is 1;
	repeat with TT running through the train-tomato of train-predicament:
		if TT is 1:
			if E is 1:
				add Figure of Train Predicament Tomato 1 to temporary-map-figures;
			otherwise if E is 2:
				add Figure of Train Predicament Tomato 2 to temporary-map-figures;
			otherwise if E is 3:
				add Figure of Train Predicament Tomato 3 to temporary-map-figures;
			otherwise:
				add Figure of Train Predicament Tomato 4 to temporary-map-figures;
		increase E by 1;
	now E is 1;
	repeat with TP running through the train-piss of train-predicament:
		if TP is 1:
			if E is 1:
				add Figure of Train Predicament Pee 1 to temporary-map-figures;
			otherwise if E is 2:
				add Figure of Train Predicament Pee 2 to temporary-map-figures;
			otherwise if E is 3:
				add Figure of Train Predicament Pee 3 to temporary-map-figures;
			otherwise:
				add Figure of Train Predicament Pee 4 to temporary-map-figures;
		increase E by 1;
	now E is 1;
	repeat with TC running through the train-cum of train-predicament:
		if TC is 1:
			if E is 1:
				add Figure of Train Predicament Cum 1 to temporary-map-figures;
			otherwise if E is 2:
				add Figure of Train Predicament Cum 2 to temporary-map-figures;
			otherwise if E is 3:
				add Figure of Train Predicament Cum 3 to temporary-map-figures;
			otherwise:
				add Figure of Train Predicament Cum 4 to temporary-map-figures;
		increase E by 1;
	if diaper quest is 0 and a2m fetish is 1 and the small egg count of belly > 0, add Figure of Train Predicament Ping Pong to temporary-map-figures.



bottle-jog-predicament is a predicament.
Definition: bottle-jog-predicament is appropriate:
	if diaper quest is 0 and the rank of the player > 1 and the player is possessing a vagina and there is an on-stage identifiable poster, decide yes;
	decide no.

Figure of bottle jog predicament is the file "Special/Cutscene/cutscene-predicament-bottle-jog1.jpg".

To execute (BJP - bottle-jog-predicament):
	let P be a random on-stage identifiable poster;
	now the target-camera-poster of id-poster is P;
	now id-poster is in Toilet01;
	now the player is in Park24;
	set up predicament universe;
	now bystander-room-target is Park16;
	repeat with M running through alive bystanders: [Move lots of bystanders to the middle]
		if M is in a road room and M is target-room-happy, now M is in Park16; [This NPC is happy to walk in the park]
	now the stance of the player is 0;
	summon red crop top uncursed;
	summon black-exercise-shorts uncursed;
	summon grey-sneakers uncursed;
	now sports-bottle is worn by the player;
	now the fill-colour of sports-bottle is creamy;
	DoseFill sports-bottle;
	summon remote-controlled-vibrator uncursed vaginally;
	say "You find yourself standing behind a large statue in a park. You are wearing rather revealing exercise gear... and your [vagina] feels full.[line break][variable custom style]Huh?![roman type][line break]In your hand, you are holding a large, heavy sports bottle. A tube attached to the base of the bottle leads down and under the waistband of your shorts. You're just starting to try and understand what's going on, when a voice speaks out loud through a hidden speaker.[paragraph break][first custom style]'TO EARN THIS TROPHY, ALL YOU NEED TO DO IS RETURN HOME. BUT BE AWARE: AN EXPLICIT PHOTO, TAKEN OF YOU IN THE HOTEL REGION, TITLED ['][the title of P]['], HAS BEEN PRINTED OUT AND POSTED ON THE WALL IN THE MEN'S PUBLIC TOILETS, ALONG WITH YOUR NAME AND SEVERAL OTHER PIECES OF IDENTIFYING INFORMATION. YOU MAY WISH TO GO AND REMOVE THIS ITEM BEFORE ANYONE CAN TAKE PHOTOS OF IT, OR CLAIM IT AS THEIR OWN. HOWEVER, AN ADDITIONAL CHALLENGE EXISTS, IF YOU DO WISH TO REMOVE THE POSTER.[paragraph break]'THE BOTTLE YOU SEE IN YOUR HAND IS FILLED TO THE BRIM WITH FRESH SEMEN, COLLECTED FROM VARIOUS STRANGERS AROUND TOWN. IT HAS AN [']ACTIVE TOP['] STRAW, WHICH MEANS THAT THE ONLY WAY TO GET THE LIQUID OUT, IS TO BITE AND SUCK. THAT IS, APART FROM THE TUBE CONNECTED TO THE BASE. WHEN YOU ENTER THE MEN'S TOILETS, ADJUST YOUR SHORTS, OR TRY TO TAMPER WITH THE BOTTLE, THE VIBRATOR IN YOUR PUSSY WILL IMMEDIATELY PUMP THE REMAINING CONTENTS OF THE BOTTLE INSIDE YOU.[paragraph break]'THE DECISIONS OF WHETHER TO GO TO THE MEN'S TOILETS BEFORE RETURNING HOME, AND WHETHER TO SUCK THE BOTTLE EMPTY BEFORE YOU DO, ARE UP TO YOU.'[roman type][line break]";
	compute predicament map reveal;

To compute sports bottle creampie:
	if sports-bottle is worn and remote-controlled-vibrator is worn:
		if sports-bottle is empty:
			say "You hear the electronic pump inside [NameDesc of remote-controlled-vibrator] click on, but thankfully, the sports bottle is empty, so no [if the semen volume of vagina > 0]more [end if][semen] gets pumped inside you.";
		otherwise:
			say "[bold type]Uh-oh[roman type] - The electronic pump inside [NameDesc of remote-controlled-vibrator] has been triggered![roman type][line break][variable custom style]Fuck![roman type][line break]";
			PussyFill the doses of sports-bottle * 4; [really it should only be times 2, but this is more fun]
			DoseEmpty sports-bottle.

Report displacing black-exercise-shorts:
	if current-predicament is bottle-jog-predicament and the player is in a predicament room, compute sports bottle creampie.
Report taking off black-exercise-shorts:
	if current-predicament is bottle-jog-predicament and the player is in a predicament room, compute sports bottle creampie.
Report going when the player is in Toilet01:
	if current-predicament is bottle-jog-predicament and the player is in a predicament room, compute sports bottle creampie.
Check taking off sports-bottle:
	if current-predicament is bottle-jog-predicament and the player is in a predicament room and sports-bottle is non-empty and remote-controlled-vibrator is worn, say "You have to keep holding the sports bottle, or its weight on the tube will probably trigger the tamper detection, and pump its contents into your [vagina]!" instead.

Report going east when the player is in Predicament20:
	if current-predicament is bottle-jog-predicament and id-poster is in Toilet01:
		say "You cringe at the thought of how many people are going to see this explicit photo of you, posted on the wall in the men's toilets.[if the player is not shameless][line break][variable custom style]Oh god, people might even take photos and post them online...[roman type][line break][end if]";
		let P be the target-camera-poster of id-poster;
		let T be the substituted form of "a poster on the men's toilets wall with all of your personal information, and... [ShortDesc of P]";
		let A be the lewdness of P / 30;
		repeat with N running from 1 to 5:
			compute digital reputation damage T strength (A) quality 1.

An all time based rule (this is the bottle jog image rule):
	if the player is a park room and current-predicament is bottle-jog-predicament and remote-controlled-vibrator is worn and sports-bottle is worn and black-exercise-shorts is worn:
		onlycutshow figure of bottle jog predicament.



pong-predicament is a team-predicament.
pong-predicament has a list of truth states called player-cups.
pong-predicament has a list of truth states called opponent-cups.

pong-predicament has a number called crosshairX.
pong-predicament has a number called crosshairY.
pong-predicament has a number called crosshairVariant. [1 - crosshair; 2 - crosshair; 3 - red ball; 4 - green ball]

Definition: pong-predicament is appropriate:
	if the graphics-window is g-unpresent, decide no;
	if the rank of the player <= 2, decide no;
	if diaper quest is 1, decide yes;
	if pregnancy fetish is 1 and the player is possessing a vagina, decide yes;
	if watersports fetish is 1, decide yes;
	decide no.

Figure of pong predicament piss is the file "Special/Pong/piss1.jpg".
Figure of pong predicament piss player drink is the file "Special/Pong/piss2.jpg".

Figure of pong predicament diaper is the file "Special/Pong/diaper1.jpg".
Figure of pong predicament diaper player drink is the file "Special/Pong/diaper2.jpg".
[Figure of pong predicament diaper opponent drink is the file "Special/Pong/diaper3.jpg".
Figure of pong predicament diaper double drink is the file "Special/Pong/diaper4.jpg".]
Figure of pong predicament diaper opponent soil is the file "Special/Pong/diaper5.jpg".
Figure of pong predicament diaper opponent mess is the file "Special/Pong/diaper6.jpg".
Figure of pong predicament diaper player soil is the file "Special/Pong/diaper7.jpg".
Figure of pong predicament diaper player mess is the file "Special/Pong/diaper8.jpg".
Figure of pong predicament diaper double soil is the file "Special/Pong/diaper9.jpg".
Figure of pong predicament diaper double mess is the file "Special/Pong/diaper10.jpg".

Figure of pong predicament semen is the file "Special/Pong/semen1.jpg".
Figure of pong predicament semen loss is the file "Special/Pong/semen2.jpg".
Figure of pong predicament semen win is the file "Special/Pong/semen3.jpg".

To execute (PP - pong-predicament):
	configure direction numbers;
	now crosshairVariant of pong-predicament is 1;
	let PPVariant be diaper quest; [0: Piss; 1: Diapers; 2: Creampie]
	if pregnancy fetish > 0 and the player is possessing a vagina, now PPVariant is 2;
	let LQ be "[urine]";
	if PPVariant is 1, now LQ is "[if diaper messing >= 4]laxative[otherwise]diuretic[end if] drink";
	if PPVariant is 2, now LQ is "[semen]";
	let M be team-predicament-partner;
	now M is in Predicament01;
	repeat with N running from 1 to 10:
		add false to the player-cups of pong-predicament;
		add false to the opponent-cups of pong-predicament;
	summon chastity-belt locked;
	now chastity-belt is stuck;
	let P be a random pink tube top;
	summon P uncursed;
	summon ring gag locked;
	if diaper quest is 1:
		summon plain-largish-diaper uncursed;
	otherwise:
		summon remote-controlled-vibrator vaginally; [automatically redirects to asshole if the player doesn't have a vagina]
	blandify and reveal tartan miniskirt;
	now tartan miniskirt is in Predicament01;
	force immediate clothing-focus redraw;
	refresh the graphics-window;
	let diaper-dry be true;
	let opponent-diaper-pressure be 0;
	let opponent-diaper-dry be true;
	now the player is in Predicament01;
	now the stance of the player is 0;
	say "You find yourself in front of a long, rectangular table, with two sets of cups arranged in a triangle shape at either end... it's a beer pong table! But that doesn't look like beer in those cups. A heavy metal chastity belt is locked around your loins, holding a [if diaper quest is 1]thick white diaper in place[otherwise]vibrator inside you[end if]. It is firmly attached, by a metal bar, to the table in front of you, keeping you a step away from table, and unable to move from the spot. To your right, a long clear cylinder houses a large number of ping pong balls. [BigNameDesc of M] is in the same situation, on the opposite end of the table.[paragraph break]Yep, looks like you're going to be playing beer pong.[paragraph break]Underneath the table, positioned underneath each cup, a clear tube emerges. The ten tubes for your ten cups converge into a single tube, which then leads directly into your ring-gagged mouth. Finally, pinned to the wall to the side, there is a single tartan miniskirt. Only one miniskirt.";
	say "A cold robotic voice begins to talk.[line break][first custom style]'TO EARN THIS TROPHY, YOU MUST RETURN HOME... AFTER PLAYING A GAME OF BEER PONG. IN FRONT OF YOU ARE TEN CUPS, EACH FILLED WITH A LARGE DOSE OF [if PPVariant is 0]URINE, DISCREETLY COLLECTED FROM THE NEARBY PUBLIC URINALS[otherwise if PPVariant is 1 and diaper messing >= 4]A LAXATIVE DRINK[otherwise if PPVariant is 1]A DIURETIC DRINK[otherwise]FRESH HUMAN SEMEN[end if]. EACH CUP HAS A SENSOR, AND WHEN IT DETECTS A PING PONG BALL INSIDE IT, IT WILL PUMP ITS CONTENTS INTO YOUR MOUTH. THE WINNER WILL BE RELEASED FIRST, AND THEREFORE ABLE TO CLAIM THE SKIRT FOR THE WALK HOME[if PPVariant is 2]. FURTHERMORE, ALL OF THE WINNER'S REMAINING CUPS WILL BE PUMPED INTO THE LOSER'S PUSSY[end if].[paragraph break]'ONE PING PONG BALL WILL BE DISPENSED EVERY TWENTY SECONDS. YOUR GAME STARTS NOW.'[roman type][line break]";
	if PPVariant is 0:
		now temporary-map-figure is figure of pong predicament piss;
	otherwise if PPVariant is 1:
		now temporary-map-figure is figure of pong predicament diaper;
	otherwise:
		now temporary-map-figure is figure of pong predicament semen;
	render pong state;
	display focus stuff;
	while false is listed in player-cups of pong-predicament and false is listed in opponent-cups of pong-predicament:
		let nudge-variance be 30 - the flat dexterity of the player;
		let nudge-min be 40 - nudge-variance;
		let nudge-max be 50 + nudge-variance;
		if diaper quest is 1 and diaper messing >= 4 and rectum < 4, now rectum is 4; [keep those chambers magically full, because it's more fun that way]
		[opponent turn]
		[3 attempts to find a cup]
		let R be a random number between 1 and 16;
		if R > 10 or entry R in player-cups of pong-predicament is true:
			if a random number between 1 and 4 is 1: [automatic success]
				now R is a random number between 1 and 10;
				while entry R in player-cups of pong-predicament is true:
					now R is a random number between 1 and 10;
		say "[line break][BigNameDesc of M] [one of]quickly [or][stopping]picks up a ball, and throws it towards your cups! ";
		if R > 10:
			say "It misses completely!";
		otherwise if entry R in player-cups of pong-predicament is true:
			say "It lands in cup [R], and bounces straight back out, because there's already a ball in there.";
		otherwise if the player is getting lucky:
			say "It hits the rim of cup [R], and bounces away. [GotLuckyFlav]";
		otherwise:
			say "It lands in cup [R]!";
			say "There's a clicking sound, and then the [LQ] inside the cup is pumped down through the tube, and up into your mouth! You have no choice but to swallow it.";
			if PPVariant is 0:
				unless true is listed in player-cups of pong-predicament: [first cup]
					if the urine taste addiction of the player < 6, say "[variable custom style]This can't be happening! THIS CAN'T BE HAPPENING! GROSS!!![roman type][line break]";
					now temporary-map-figure is figure of pong predicament piss player drink;
				compute slightly addictive swallowing of urine by 1;
			otherwise if PPVariant is 1:
				unless true is listed in player-cups of pong-predicament: [first cup]
					say "As soon as the liquid hits your belly, [if diaper messing >= 4]you can feel it start to rumble[otherwise]you can feel your bladder start to twinge[end if].[line break][variable custom style]Uh-oh...[roman type][line break]";
					now temporary-map-figure is figure of pong predicament diaper player drink;
				if diaper messing >= 4, increase suppository by 1;
				StomachUp 2;
				if diaper quest is 1:
					StomachDown 2; [sends it to the delayed bladder]
			otherwise:
				compute slightly addictive swallowing of semen by 1;
			now entry R in player-cups of pong-predicament is true;
		[player turn]
		display stuff; [for arousal icon]
		if false is listed in the player-cups of pong-predicament:
			now crosshairX of pong-predicament is a random number between 31 and 304;
			now crosshairY of pong-predicament is a random number between 26 and 271;
			say "[one of][line break][bold type]BEER PONG MECHANICS EXPLANATION:[roman type][line break]Your crosshair represents the area your ball might land in. You can [bold type]nudge[roman type] the crosshair by pressing an [bold type]arrow key[roman type], or finish aiming and [bold type]confirm your target[roman type] by pressing the [bold type]enter key[roman type].[line break]The lower your dexterity, the more variance in the distance your crosshair moves with your nudges, making nudging to the perfect location more difficult.[line break]Each time you nudge, there is a chance that your crosshair will get immediately locked in. [bold type]The chance increases, [if diaper quest is 1]the more urgent your need to use the toilet is. [roman type]However, the more time you spend in a used diaper, and the more well-used it is, and the lower your current diaper addiction, the more chance you have of growing more accustomed to wearing and using diapers[otherwise]the higher your arousal is[end if].[roman type][line break]While aiming, you can press the [bold type]space bar[roman type] instead of the enter key to [if diaper quest is 1][bold type]purposefully soil yourself[otherwise]focus on the pleasure of the vibrator instead of your throw, significantly [bold type]increasing your chances of orgasming[roman type] and resetting your arousal (but therefore slightly increasing sex addiction)[end if][roman type]. This also [bold type]confirms your target[roman type] at the same time.[or][stopping]";
			let nudging be 1;
			while nudging > 0:
				let NDG be the arousal of the player / 1000;
				if diaper quest is 1, now NDG is the bladder of the player;
				if a random number between 1 and 30 < NDG, now nudging is 0;
				render pong state;
				let CL be the chosen letter;
				while CL is not upNumber and CL is not downNumber and CL is not leftNumber and CL is not rightNumber and CL is not enterNumber and CL is not spaceNumber:
					say "[bold type]INPUT REJECTED: Please only press your arrow keys, enter, or space bar![roman type][line break]";
					now CL is the chosen letter;
				if CL is leftNumber:
					decrease crosshairX of pong-predicament by a random number between nudge-min and nudge-max;
					if crosshairX of pong-predicament < 1, now crosshairX of pong-predicament is 1;
				otherwise if CL is rightNumber:
					increase crosshairX of pong-predicament by a random number between nudge-min and nudge-max;
					if crosshairX of pong-predicament > 304, now crosshairX of pong-predicament is 304;
				otherwise if CL is upNumber:
					decrease crosshairY of pong-predicament by a random number between nudge-min and nudge-max;
					if crosshairY of pong-predicament < 1, now crosshairY of pong-predicament is 1;
				otherwise if CL is downNumber:
					increase crosshairY of pong-predicament by a random number between nudge-min and nudge-max;
					if crosshairY of pong-predicament > 271, now crosshairY of pong-predicament is 271;
				otherwise:
					now nudging is -10;
					if CL is spaceNumber:
						say "At the same time as you throw your ball, ";
						if diaper quest is 1:
							if diaper messing >= 4:
								say "you squat and push.";
								now voluntarySquatting is 1;
								compute messing;
							otherwise:
								say "you try to let the floodgates open.";
								try urinating;
						otherwise:
							say "you try to relax and let the pleasure rush over you.";
							vaginally orgasm shamefully;
			if nudging >= 0, say "[bold type][if diaper quest is 0]Your growing arousal[otherwise]The growing pressure behind your loins[end if] makes you lose your focus, and you throw the ball![roman type][line break]";
			say "The ball flies through the air... ";
			now crosshairVariant of pong-predicament is 2;
			render pong state;
			wait 100 ms before continuing;
			wait 400 ms before continuing;
			wait 400 ms before continuing;
			increase crosshairX of pong-predicament by a random number between -60 and 60;
			increase crosshairY of pong-predicament by a random number between -60 and 60;
			now crosshairVariant of pong-predicament is 3;
			let cupHit be 0;
			if crosshairY of pong-predicament > 26 and crosshairY of pong-predicament < 88:
				if crosshairX of pong-predicament > 31 and crosshairX of pong-predicament < 93:
					now cupHit is 1;
				otherwise if crosshairX of pong-predicament > 102 and crosshairX of pong-predicament < 163:
					now cupHit is 2;
				otherwise if crosshairX of pong-predicament > 172 and crosshairX of pong-predicament < 234:
					now cupHit is 3;
				otherwise if crosshairX of pong-predicament > 243 and crosshairX of pong-predicament < 304:
					now cupHit is 4;
			otherwise if crosshairY of pong-predicament > 88 and crosshairY of pong-predicament < 148:
				if crosshairX of pong-predicament > 67 and crosshairX of pong-predicament < 128:
					now cupHit is 5;
				otherwise if crosshairX of pong-predicament > 137 and crosshairX of pong-predicament < 199:
					now cupHit is 6;
				otherwise if crosshairX of pong-predicament > 207 and crosshairX of pong-predicament < 269:
					now cupHit is 7;
			otherwise if crosshairY of pong-predicament > 148 and crosshairY of pong-predicament < 210:
				if crosshairX of pong-predicament > 102 and crosshairX of pong-predicament < 164:
					now cupHit is 8;
				otherwise if crosshairX of pong-predicament > 172 and crosshairX of pong-predicament < 233:
					now cupHit is 9;
			otherwise if crosshairY of pong-predicament > 210 and crosshairY of pong-predicament < 271 and crosshairX of pong-predicament > 137 and crosshairX of pong-predicament < 199:
				now cupHit is 10;
			if cupHit > 0:
				if entry cupHit in opponent-cups of pong-predicament is false:
					say "and lands in the cup! Great shot!";
					now entry cupHit in opponent-cups of pong-predicament is true;
					say "[BigNameDesc of M] [one of]moans[or]groans[purely at random] with [one of]frustration[or]vexation[or]resentment[or]despair[then at random] as [he of M] is force-fed the [LQ] from the cup.";
					now crosshairVariant of pong-predicament is 4;
					increase opponent-diaper-pressure by 1;
				otherwise:
					say "and lands in a cup that's already empty. Damn!";
			otherwise:
				say "and bounces off the cups. Drat.";
			if remote-controlled-vibrator is worn, compute periodic effect of remote-controlled-vibrator;
			check for arousal change;
			let DPR be a random number between 1 and 10; [opponent diaper pressure RNG]
			if diaper quest is 1:
				if plain-largish-diaper is dirty:
					let DSF be the mess of plain-largish-diaper * 2; [diaper soak factor]
					if diaper messing < 4, now DSF is the urine-soak of plain-largish-diaper;
					let DAR be a random number between 1 and (50 + (the diaper addiction of the player * 10));
					if DAR < DSF, DiaperAddictUp 1;
				if suppository > 0:
					if the delayed bladder of the player > 0:
						bladderup 1 + xavier-belt-link;
						decrease the delayed bladder of the player by 1;
					now automaticallyHolding is true;
					check real messing;
					follow the mess gross out resolution rule;
				otherwise:
					compute guaranteed bladder growth;
				while the urination continues rule is listed in another-turn-rules:
					remove the urination continues rule from another-turn-rules;
					follow the urination continues rule;
				if debugmode > 0, say "Bladder: [bladder of the player].";
				if diaper-dry is true and plain-largish-diaper is dirty:
					if DPR <= opponent-diaper-pressure:
						say "At the same time, [NameDesc of M] loses control of [his of M] own [if diaper messing >= 4]bowels[otherwise]bladder[end if]. You both stand there, at opposite ends of the table, audibly filling your diapers with your hot, steaming [if diaper messing >= 4]filth[otherwise][urine][end if]. Both your diapers can be seen to visibly sag and expand between your legs. It really is an outrageous sight to behold.";
						now opponent-diaper-pressure is 0;
						now opponent-diaper-dry is false;
					if diaper-dry is true: [only the first mess needs to be cutscened]
						if opponent-diaper-dry is true:
							if plain-largish-diaper is messed, now temporary-map-figure is figure of pong predicament diaper player mess;
							otherwise now temporary-map-figure is figure of pong predicament diaper player soil;
						otherwise:
							if plain-largish-diaper is messed, now temporary-map-figure is figure of pong predicament diaper double mess;
							otherwise now temporary-map-figure is figure of pong predicament diaper double soil;
					now diaper-dry is false;
					force immediate clothing-focus redraw;
					refresh the graphics-window;
				if DPR <= opponent-diaper-pressure:
					say "[speech style of M]'Oh... Oh... [one of]Ah dun wun to...'[roman type][line break]Suddenly, [or]Noh ahain...'[roman type][line break]Once again, you watch as [stopping][NameDesc of M] clutches [his of M] stomach, groans, and unleashes a torrent of [if diaper messing >= 4]sludge[otherwise][urine][end if] into [his of M] thick padding, causing it to visibly sag and expand.[line break][speech style of M]'Ho gwosh...'[roman type][line break][big he of M] mumbles to [himself of M].";
					if opponent-diaper-dry is true: [only the first mess needs to be cutscened]
						if diaper-dry is true:
							if diaper messing >= 4, now temporary-map-figure is figure of pong predicament diaper opponent mess;
							otherwise now temporary-map-figure is figure of pong predicament diaper opponent soil;
						otherwise:
							if plain-largish-diaper is messed, now temporary-map-figure is figure of pong predicament diaper double mess;
							otherwise now temporary-map-figure is figure of pong predicament diaper double soil;
						now opponent-diaper-dry is false;
					now opponent-diaper-pressure is 0;
		render pong state;
		say "[bold type]Press any key to continue.[roman type][line break]";
		wait for a key before continuing;
		now crosshairVariant of pong-predicament is 1;
	[END OF BIG WHILE LOOP - GAME IS OVER]
	if false is listed in player-cups of pong-predicament: [victory]
		say "You have won! ";
		if PPVariant is 2, say "You watch as the rest of your cups are drained, and all the [semen] is pumped directly into [NameDesc of M][']s snatch. [big he of M] shrieks and tries to pull the tube out, but it won't budge. Millions, if not billions of fertile swimmers, surge up inside [him of M] and straight towards [his of M] waiting Fallopian tubes, with immense speed and pressure. Meanwhile, you are released. ";
		say "The metal bar attached to your chastity belt unclicks, allowing you to leave.";
		cutshow figure of pong predicament semen win for M;
		HappinessDown M by 2;
	otherwise:
		say "You have lost! ";
		if PPVariant is 2:
			let cumLoad be 0;
			repeat with PC running through the opponent-cups of pong-predicament:
				if PC is true, increase cumLoad by 3;
			say "You watch as the rest of [NameDesc of M][']s cups are drained, and all the [semen] is pumped directly into your [vagina].[line break][variable custom style]'EEEEEEEE!'[roman type][line break]You squeal loudly as millions, if not billions of fertile swimmers, surge up inside you and straight towards your waiting Fallopian tubes, with immense speed and pressure. Meanwhile, [student-name of M] is released. ";
			PussyFill cumLoad;
			cutshow figure of pong predicament semen loss;
		say "The metal bar attached to [student-name of M][']s chastity belt unclicks, allowing [him of M] to leave first. Before leaving, [he of M] makes sure to unpin [NameDesc of tartan miniskirt] from the wall, and wear it, protecting [his of M] modesty.";
		try M going north;
		now M is in School01;
		deinterest M;
		only destroy tartan miniskirt;
		say "By the time you are released, [he of M] is long gone.";
	now chastity-belt is not stuck;
	now crosshairVariant of pong-predicament is 0;
	now another-turn is 0. [messing and similar things can cause additional turns]

Figure of pong predicament table is the file "Special/Pong/table.jpg".
Figure of pong predicament ball is the file "Special/Pong/ball1.png".
Figure of pong predicament ball red is the file "Special/Pong/ball2.png".
Figure of pong predicament ball green is the file "Special/Pong/ball3.png".
Figure of pong predicament crosshair is the file "Special/Pong/crosshair1.png".
Figure of pong predicament crosshair locked is the file "Special/Pong/crosshair2.png".


To render pong state:
	clear the map zone;
	let mapH be map-window-height;
	let mapW be map-window-width;
	if temporary-map-figure is not figure of no-image-yet:
		[Calculate background image size]
		let XRatio be (mapW * 1.0) / the pixel-width of temporary-map-figure;
		let YRatio be (mapH * 1.0) / the pixel-height of temporary-map-figure;
		let FXi be mapW;
		let FYi be mapH;
		let Xi be map-window-x-root;
		let Yi be 0;
		if XRatio < YRatio:
			let FY be the pixel-height of temporary-map-figure * XRatio;
			now FYi is FY to the nearest whole number;
			now Yi is (mapH / 2) - (FYi / 2); [centre background vertically]
		otherwise:
			let FX be the pixel-width of temporary-map-figure * YRatio;
			now FXi is FX to the nearest whole number;
			increase Xi by (mapW / 2) - (FXi / 2); [centre background horizontally]
		display the image temporary-map-figure in the graphics-window at Xi by Yi with dimensions FXi by FYi;
		say "[bold type]Press any key to continue.[roman type][line break]";
		wait for a key before continuing;
		now temporary-map-figure is figure of no-image-yet;
		clear the map zone;
	let ballWidth be the pixel-width of Figure of pong predicament ball;
	let crosshairWidth be the pixel-width of Figure of pong predicament crosshair;
	let Fwidth be the pixel-width of Figure of pong predicament table;
	let Fheight be the pixel-height of Figure of pong predicament table;
	let final-width be 1.0 * Fwidth; [FLOAT width of table image file]
	let final-height be 1.0 * FHeight; [FLOAT height of table image file]
	let height-ratio be final-height / mapH; [FLOAT ratio of heights of image file and map window]
	[calculate actual height]
	now final-height is Fheight / height-ratio;
	now final-width is Fwidth / height-ratio;
	let final-ball-width be ballWidth / height-ratio;
	let final-crosshair-width be crosshairWidth / height-ratio;
	let int-final-height be final-height to the nearest whole number;
	let int-final-width be final-width to the nearest whole number;
	let int-final-ball-width be final-ball-width to the nearest whole number;
	let int-final-crosshair-width be final-crosshair-width to the nearest whole number;
	let renderX be map-window-x-root + ((mapW - int-final-width) / 2); [X coordinate of top left corner of location where the image will be drawn]
	let renderY be 0; [Y coordinate of top left corner of location where the image will be drawn]
	display the image Figure of pong predicament table in the graphics-window at renderX by renderY with dimensions int-final-width by int-final-height;
	let ballRendersX be a list of numbers;
	let ballRendersY be a list of numbers;
	if entry 1 in opponent-cups of pong-predicament is true:
		add 31 to ballRendersX;
		add 26 to ballRendersY;
	if entry 2 in opponent-cups of pong-predicament is true:
		add 102 to ballRendersX;
		add 26 to ballRendersY;
	if entry 3 in opponent-cups of pong-predicament is true:
		add 172 to ballRendersX;
		add 26 to ballRendersY;
	if entry 4 in opponent-cups of pong-predicament is true:
		add 244 to ballRendersX;
		add 26 to ballRendersY;
	if entry 5 in opponent-cups of pong-predicament is true:
		add 67 to ballRendersX;
		add 88 to ballRendersY;
	if entry 6 in opponent-cups of pong-predicament is true:
		add 137 to ballRendersX;
		add 88 to ballRendersY;
	if entry 7 in opponent-cups of pong-predicament is true:
		add 207 to ballRendersX;
		add 88 to ballRendersY;
	if entry 8 in opponent-cups of pong-predicament is true:
		add 102 to ballRendersX;
		add 148 to ballRendersY;
	if entry 9 in opponent-cups of pong-predicament is true:
		add 172 to ballRendersX;
		add 148 to ballRendersY;
	if entry 10 in opponent-cups of pong-predicament is true:
		add 138 to ballRendersX;
		add 210 to ballRendersY;
	if entry 1 in player-cups of pong-predicament is true:
		add 138 to ballRendersX;
		add 336 to ballRendersY;
	if entry 2 in player-cups of pong-predicament is true:
		add 102 to ballRendersX;
		add 397 to ballRendersY;
	if entry 3 in player-cups of pong-predicament is true:
		add 172 to ballRendersX;
		add 397 to ballRendersY;
	if entry 4 in player-cups of pong-predicament is true:
		add 67 to ballRendersX;
		add 457 to ballRendersY;
	if entry 5 in player-cups of pong-predicament is true:
		add 137 to ballRendersX;
		add 457 to ballRendersY;
	if entry 6 in player-cups of pong-predicament is true:
		add 207 to ballRendersX;
		add 457 to ballRendersY;
	if entry 7 in player-cups of pong-predicament is true:
		add 31 to ballRendersX;
		add 518 to ballRendersY;
	if entry 8 in player-cups of pong-predicament is true:
		add 102 to ballRendersX;
		add 518 to ballRendersY;
	if entry 9 in player-cups of pong-predicament is true:
		add 172 to ballRendersX;
		add 518 to ballRendersY;
	if entry 10 in player-cups of pong-predicament is true:
		add 243 to ballRendersX;
		add 518 to ballRendersY;
	repeat with N running from 1 to the number of entries in ballRendersX:
		[convert raw coordinates to scaled coordinates]
		let FNX be entry N in ballRendersX / height-ratio;
		let FNY be entry N in ballRendersY / height-ratio;
		let NX be FNX to the nearest whole number;
		let NY be FNY to the nearest whole number;
		display the image figure of pong predicament ball in the graphics-window at (NX + renderX) by NY with dimensions int-final-ball-width by int-final-ball-width;
	if crosshairX of pong-predicament > 0 and crosshairY of pong-predicament > 0:
		[convert raw coordinates to scaled coordinates]
		let FNX be crosshairX of pong-predicament / height-ratio;
		let FNY be crosshairY of pong-predicament / height-ratio;
		let NX be FNX to the nearest whole number;
		let NY be FNY to the nearest whole number;
		[okay now we have the centre coordinate, but we actually need the top left]
		if crosshairVariant of pong-predicament < 3:
			let crosshairRenderX be NX - (int-final-crosshair-width / 2);
			let crosshairRenderY be NY - (int-final-crosshair-width / 2);
			let F be figure of pong predicament crosshair;
			if crosshairVariant of pong-predicament is 2, now F is figure of pong predicament crosshair locked;
			display the image F in the graphics-window at (crosshairRenderX + renderX) by crosshairRenderY with dimensions int-final-crosshair-width by int-final-crosshair-width;
		otherwise:
			let ballRenderX be NX - (int-final-ball-width / 2);
			let ballRenderY be NY - (int-final-ball-width / 2);
			let F be figure of pong predicament ball red;
			if crosshairVariant of pong-predicament is 4, now F is figure of pong predicament ball green;
			display the image F in the graphics-window at (ballRenderX + renderX) by ballRenderY with dimensions int-final-ball-width by int-final-ball-width;

Check dominating a student:
	if current-predicament is pong-predicament and the player is in Predicament01:
		allocate 5 seconds;
		say EnslavedDominationFlav of the noun;
		if the humiliation of the player < the EnslavedDominationThreshold of the noun:
			say "You feel vaguely better about yourself, but mostly just a bit ambivalent.";
		otherwise:
			Dignify 1000;
		now the teaseTimer of the noun is 150;
		HappinessDown the noun instead.

toilets-dildos-predicament is a predicament. toilets-dildos-predicament has a list of numbers called dildo-boxes. toilets-dildos-predicament has a number called smart-glass-timer. The printed name of toilets-dildos-predicament is "colourful dildo". The text-shortcut of toilets-dildos-predicament is "cfd". Understand "colourful", "coloured", "dildo" as toilets-dildos-predicament.

Definition: toilets-dildos-predicament is appropriate:
	if diaper quest is 0 and the rank of the player >= 2 and the player is a june 2022 top donator and domino-mask is off-stage and there is an off-stage specific-key, decide yes;
	decide no.

Definition: toilets-dildos-predicament is always-perceiving:
	if the location of the player is Park02, decide yes; [when you leave the toilets, the people in the queue can't fail to see you leave]
	decide no.

Figure of toilets-dildos-predicament is the file "Env/School/toiletdildopredicament1.jpg".

To decide which figure-name is the examine-image of (P - toilets-dildos-predicament):
	decide on Figure of toilets-dildos-predicament.

To say PredicamentDescription of (P - toilets-dildos-predicament):
	say "I'm currently in an Extra Credit lesson where I need to suck dildos in the women's toilets to open boxes to alleviate my predicament, with only 60 seconds until the glass goes transparent and reveals me, and then get back to my home while avoiding as many bystanders as possible from noticing me.".

To say ExamineDesc of (P - toilets-dildos-predicament):
	say "On one wall, six different coloured dildos are mounted on the wall, each with a sign above and a box underneath. The signs say:[line break]DOMINO MASK[line break]SEXY SKIRT[line break]KEY TO BELT[line break]SLUTTY ONE-PIECE[line break]PLUG DEFLATION[line break]SEXY TOP[line break]".

To execute (P - toilets-dildos-predicament):
	summon chastity-belt locked;
	now chastity-belt is predicament-fixed;
	summon puppy tail plug uncursed;
	now puppy tail plug is predicament-fixed;
	now the size of puppy tail plug is a random number between 9 and 10;
	now female-gloryhole is in Holding Pen;
	now P is in Toilet02;
	now the player is in Toilet02;
	now map-zoom is 1;
	now the smart-glass-timer of P is 59;
	repeat with N running from 1 to 6:
		add 1 to the dildo-boxes of P;
	set up 29 bystanders;
	let LBS be the list of female camera-bystanders;
	sort LBS in random order;
	truncate LBS to 2 entries;
	repeat with M running through LBS:
		now M is in Park02;
		now M is moved; [stops them moving instantly]
	say "You find yourself in a spacious public toilets, naked except for a chastity belt and a huge butt plug with an attached bushy tail. [ExamineDesc of P][line break]A robotic voice is speaking to you from some hidden speaker:[paragraph break][first custom style]'WELCOME TO EXTRA CREDIT CLASS. [PredicamentRewardExplanation]YOU ARE FREE TO UNLOCK THE DOOR AND LEAVE AT ANY TIME, BUT YOU MAY BE ABLE TO EARN A LESS HUMILIATING AND UNCOMFORTABLE JOURNEY HOME, AND ALSO EARN RELEASE FROM YOUR BONDAGE, IF YOU DEEPTHROAT ONE OR MORE DILDOS. YOU ARE IN A PARK CLOSE TO YOUR HOME. YOU MUST RETURN HOME TO COMPLETE THE PREDICAMENT. YOU HAVE ONE MINUTE UNTIL THE WALLS BECOME TRANSPARENT.'[PredicamentRewardExplanationReaction][roman type][line break]And then, you hear female voices from outside the bathroom, beyond the locked door.[line break][second custom style]'Ummm... Hello? There's a line out here, you know!'[roman type][line break]Uh-oh, there's already people waiting outside. There's absolutely no way to leave the women's toilets without being seen, and potentially photographed, by who knows how many people. And in 60 seconds, the Smart Glass walls will become transparent, exposing your current state... and acts...[paragraph break]The timer above the dildos starts counting down.";

An all later time based rule:
	if current-predicament is toilets-dildos-predicament and the player is in Toilet02:
		if the smart-glass-timer of toilets-dildos-predicament > 0:
			decrease the smart-glass-timer of toilets-dildos-predicament by time-seconds;
			if the smart-glass-timer of toilets-dildos-predicament <= 0:
				say "[bold type]The timer hits 0 seconds! [roman type]The Smart Glass malfunctions, and turns transparent! [if the player is prone][bold type]As you're on your knees, it's clear to everyone outside that you've just been sucking on a bunch of colourful dildos![end if][roman type][line break]";
			otherwise if a random number between 1 and 2 is 1:
				say "You hear a voice from outside.[line break][second custom style]'[one of]Excuse me, I'm waiting!'[or]Is anyone even in there?!'[or]Finish up before I piss myself!'[or]You're taking forever!'[or]What's the hold up?!'[or]Are you okay in there?!'[in random order][roman type][line break]";
		if the smart-glass-timer of toilets-dildos-predicament > 0:
			say "The Smart Glass timer now has [bold type][smart-glass-timer of toilets-dildos-predicament] seconds remaining.[roman type][line break]";
		otherwise:
			repeat with M running through bystanders in Park02:
				let A be the appearance of the player;
				if the player is prone, increase A by 4;
				say "[BigNameDesc of M] [if M is interested][one of]watches[or]continues to watch[or]stares at[then at random][otherwise]notices[end if] you[if A > the outrage tolerance of M and worst-appearance of M < A]! [big he of M] is visibly [one of]shocked[or]disgusted[or]appalled[then at random][end if].";
				now the worst-appearance of M is A;
				now M is interested;
				say HumiliateReflect (A * 30);
				if M is camera-bystander:
					say "[BigNameDesc of M] snaps a photo of you![line break][italic type]CLICK![roman type][line break][variable custom style]Noooo! [one of]No photos please[or]No more photos[stopping]![roman type][line break]";
					if diaper quest is 1 and the appearance of the player < the cringe appearance of the player, now A is the cringe appearance of the player;
					compute digital reputation damage (PredicamentActivity of current-predicament) strength (A) quality (a random number between 1 and 6).


To compute coloured dildo sucking:
	allocate 6 seconds;
	say "Which dildo do you want to suck?";
	reset multiple choice questions;
	repeat with N running from 1 to 6:
		if entry N in the dildo-boxes of toilets-dildos-predicament is 1:
			set next numerical response to the substituted form of "[if N is 1]Blue dildo (domino mask)[otherwise if N is 2]Purple dildo (sexy skirt)[otherwise if N is 3]Pink dildo (key to belt)[otherwise if N is 4]Red dildo (slutty one-piece)[otherwise if N is 5]Orange dildo (plug deflation)[otherwise]Yellow dildo (sexy top)[end if]";
	compute multiple choice question;
	say "You push the dildo into your mouth, which triggers it to ejaculate a huge load of fresh warm [semen] into your mouth!";
	let CNR be the substituted form of "[chosen numerical response]"; [if we don't do this, FaceFill can reset multiple choice stuff and break the outcomes below]
	now toilets-dildos-predicament is penetrating face;
	FaceFill semen by 3;
	dislodge toilets-dildos-predicament;
	say "The box underneath opens, revealing ";
	if CNR matches the text "Blue":
		blandify and reveal domino-mask;
		now domino-mask is in the location of the player;
		now the quest of domino-mask is no-clothing-quest;
		now domino-mask is predicament-temporary;
		say "a [domino-mask]. While wearing this, your identity will be reasonably hidden, reducing the impact on your public reputation if any photos are taken of you!";
		now entry 1 in the dildo-boxes of toilets-dildos-predicament is 0;
	otherwise if CNR matches the text "Purple":
		let C be a random off-stage shorter-rubber-skirt;
		if C is nothing, now C is a random shorter-rubber-skirt;
		blandify and reveal C;
		now C is predicament-temporary;
		now C is in the location of the player;
		say "a [C]. It will provide modesty to your crotch while you are upright[if there is a worn tail plug], but not your tail plug[end if].";
		now entry 2 in the dildo-boxes of toilets-dildos-predicament is 0;
	otherwise if CNR matches the text "Pink":
		let K be a random off-stage specific-key;
		now K is in the location of the player;
		now K is covering chastity-belt;
		say "a [K]. You should be able to use it to unlock your chastity belt.";
		now entry 3 in the dildo-boxes of toilets-dildos-predicament is 0;
	otherwise if CNR matches the text "Red":
		blandify and reveal fetish business dress;
		now fetish business dress is in the location of the player;
		now fetish business dress is predicament-temporary;
		say "a [fetish business dress]. It will keep your crotch and chest concealed but not your butt[if there is a worn tail plug] or tail plug[end if].";
		now entry 4 in the dildo-boxes of toilets-dildos-predicament is 0;
	otherwise if CNR matches the text "Orange":
		say "Your [puppy tail plug] immediately deflates inside you, becoming a ";
		now entry 5 in the dildo-boxes of toilets-dildos-predicament is 0;
		now the size of puppy tail plug is 1;
		say "[puppy tail plug]! You should have no trouble removing it now.";
	otherwise:
		blandify and reveal rubber tube top;
		now rubber tube top is in the location of the player;
		say "a [rubber tube top].";
		now rubber tube top is predicament-temporary;
		now entry 6 in the dildo-boxes of toilets-dildos-predicament is 0;
	if the smart-glass-timer of toilets-dildos-predicament <= 0:
		repeat with M running through bystanders in Park02:
			say "[BigNameDesc of M] [big he of M] is visibly [one of]shocked[or]disgusted[or]appalled[then at random].";
			now M is interested;
			say strongHumiliateReflect;
			if M is camera-bystander:
				let TPT be the substituted form of "you on your knees, sucking on a large wall-mounted coloured dildo in a public toilets with transparent walls";
				let DRS be the worst-appearance of M + 5;
				if DRS > 20, now DRS is 20;
				if DRS < 10, now DRS is 10;
				compute digital reputation damage TPT strength DRS quality 2;
				say "FLASH! [big he of M] has snapped a photo of you sucking on the dildo.[line break][variable custom style][one of]Shit[or]Fuck[or]Eek[at random]![roman type][line break]".

Check drinking toilets-dildos-predicament:
	unless 1 is listed in the dildo-boxes of toilets-dildos-predicament, say "You've already opened every box." instead;
	if the player is upright, say "You would need to be on your knees to get one of the dildos in your mouth." instead;
	if face is actually occupied, say "Bug - your mouth is occupied when Aika didn't expect this to be possible. Please report what happened." instead;
	compute coloured dildo sucking instead;
	do nothing instead.

To construct normal buttons for (T - toilets-dildos-predicament):
	if ButtonTableFull is 0:
		choose a blank row in the Table of Buttons;
		now the ButtonImage entry is Figure of OralButton;
		now the ButtonCommand entry is "suck [text-shortcut of T]";
		now the ButtonColour entry is lightModeFullGreen;
		if the player is upright, now the ButtonColour entry is lightModeFullYellow. [player needs to kneel]

To say verb-desc of (T - toilets-dildos-predicament):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say "[unique-verb-desc of T][link][bracket]suck[close bracket][as]suck [text-shortcut of T][end link]".



snitch-predicament is a predicament. snitch-predicament has a number called snitch-time. snitch-predicament has a number called snitch-height. The printed name of snitch-predicament is "[TQlink of item described]gold quadcopter[TQxlink of item described][shortcut-desc][verb-desc of item described]". The text-shortcut of snitch-predicament is "snitch". Understand "golden", "gold", "quadcopter", "drone" as snitch-predicament. snitch-predicament can be broom-creampied. snitch-predicament is portable.

Definition: snitch-predicament is appropriate:
	if diaper quest is 0 and the rank of the player >= 2 and the player is possessing a vagina and provocative schoolgirl outfit is off-stage and the player is an august 2022 top donator, decide yes;
	decide no.

Definition: snitch-predicament is always-perceiving:
	if snitch-predicament is held, decide yes; [when you are holding a large whirring quadcopter, people can't fail to notice you]
	decide no.

Figure of snitch is the file "Env/School/snitchpredicament1.jpg".
Figure of snitch predicament cutscene is the file "Special/Cutscene/cutscene-snitch1.jpg".

To decide which figure-name is the examine-image of (P - snitch-predicament):
	decide on Figure of snitch.

To say PredicamentDescription of (P - snitch-predicament):
	say "I'm currently in an Extra Credit lesson where I need to find the golden quadcopter, and catch it, in order to unlock my broomstick and front door.".

To say ExamineDesc of (P - snitch-predicament):
	say "A small gold-coloured quadcopter. ";
	if P is held, say "The rotors are still spinning - [bold type]if you drop it, it will fly away again.[roman type][line break]";
	otherwise say HeightDesc of P.

To say HeightDesc of (P - snitch-predicament):
	let X be 11.0 - the snitch-height of snitch-predicament;
	let Y be 11.0 - the snitch-time of snitch-predicament;
	let XY be X / Y;
	say "It is currently flying [if the snitch-height of snitch-predicament > 8]very high[otherwise if the snitch-height of snitch-predicament > 6]quite high[otherwise if the snitch-height of snitch-predicament > 4]quite low[otherwise if the snitch-height of snitch-predicament > 2]very low[otherwise]incredibly low[end if] and [if the snitch-time of snitch-predicament < 1]fast[otherwise if the snitch-time of snitch-predicament < 3]a little fast[otherwise if the snitch-time of snitch-predicament < 5]rather slowly[otherwise if the snitch-time of snitch-predicament < 7]very slowly[otherwise if the snitch-time of snitch-predicament < 9]extremely slowly[otherwise]is barely moving[end if]. [bold type]You have a [if XY < 0.2]very low[otherwise if XY < 0.3]low[otherwise if XY < 0.5]moderate[otherwise if XY < 0.7]decent[otherwise]high[end if] chance of successfully catching it.[roman type][line break]".

To construct normal buttons for (T - snitch-predicament):
	if ButtonTableFull is 0:
		choose a blank row in the Table of Buttons;
		now the ButtonImage entry is Figure of TakeButton;
		now the ButtonCommand entry is "take [text-shortcut of T]";
		now the ButtonColour entry is lightModeFullGreen;
		if the player is prone, now the ButtonColour entry is lightModeFullYellow. [player needs to kneel]

To say verb-desc of (T - snitch-predicament):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say "[unique-verb-desc of T][if T is held][link][bracket]dr[close bracket][as]drop [text-shortcut of T][end link][otherwise][link][bracket]ta[close bracket][as]take [text-shortcut of T][end link][end if]".

To execute (P - snitch-predicament):
	now the stance of the player is 0;
	summon chastity-belt locked;
	now chastity-belt is predicament-fixed;
	summon broomstick locked;
	[now broomstick is predicament-fixed;]
	summon purple-vibrator uncursed;
	now purple-vibrator is not penetrating asshole;
	now purple-vibrator is penetrating vagina;
	now purple-vibrator is predicament-fixed;
	summon black-plug uncursed;
	now black-plug is predicament-fixed;
	summon provocative schoolgirl outfit uncursed;
	let G be a random small ballgag;
	summon G locked;
	now G is predicament-fixed;
	summon scarf uncursed;
	summon frilly stockings uncursed;
	let MJ be a random mary janes;
	summon MJ uncursed;
	now the raw-magic-modifier of MJ is 1;
	now MJ is dexterity-influencing;
	now the snitch-height of snitch-predicament is 10;
	now P is in Predicament01;
	now the player is in Predicament01;
	now the defaultLeftTarget of arms is broomstick;
	now the defaultRightTarget of arms is broomstick;
	if the player is not getting unlucky:
		let AP be a random off-stage fetish appropriate alchemy product;
		if magic-potion is off-stage, now AP is magic-potion;
		if AP is a thing:
			now AP is in Predicament19;
			now AP is blessed;
			now AP is unsure;
	say "You find yourself in a small abandoned building. You're wearing a skimpy schoolgirl outfit, a ballgag hidden under a scarf, and a chastity belt, attached to a witch's broomstick, which is holding two vibrating sex toys in your [fuckholes].[line break]A robotic voice is speaking to you from some hidden speaker:[paragraph break][first custom style]'WELCOME TO EXTRA CREDIT CLASS. [PredicamentRewardExplanation]THERE ARE TWO BUTTONS ON THE FRONT OF YOUR BROOMSTICK. AFTER LEAVING THIS ROOM, ONE BUTTON MUST BE HELD DOWN AT ALL TIMES, OR ELSE YOU WILL BE CREAMPIED WITH FRESH SEMEN. FURTHERMORE, WHENEVER BOTH BUTTONS AREN'T HELD DOWN, THE ANAL PLUG WILL SHOCK YOU, BUT ALSO THE QUADCOPTER'S VELOCITY WILL SLIGHTLY DECREASE. IF YOU RETURN HOME WITHOUT FIRST CAPTURING THE GOLDEN QUADCOPTER, YOU WILL BE CREAMPIED, AND THE BALLGAG WILL NOT UNLOCK.'[PredicamentRewardExplanationReaction][roman type][line break]And then, you hear a loud whirring, and see a small gold-coloured quadcopter rise up from the ground, and fly out the door.[line break][variable custom style]Holy shit... I've got to catch that thing, and fast, before too many people see me like this... And before these vibrations make me cum![roman type][line break]";
	maybe-map-display figure of snitch predicament cutscene;
	follow the update arms rule.

To decide which number is broomstick-buttons-held:
	let buttons-held be 0;
	repeat with A running through the armUses of arms:
		if A is broomstick, increase buttons-held by 1;
	if buttons-held > 2, decide on 2; [failsafe - should never happen]
	decide on buttons-held.

An all later time based rule (this is the quadcopter rule):
	if current-predicament is snitch-predicament and the player is in a predicament room and the player is not in Predicament20:
		if snitch-predicament is held and snitch-predicament is not listed in the armUses of arms, allocate arm use to snitch-predicament; [every turn the snitch is held, it requires 1 arm]
		let BBH be broomstick-buttons-held;
		if BBH < 2:
			compute broom plug shock;
			if BBH is 0 and snitch-predicament is not broom-creampied:
				say "[bold type]You are not holding down any of the broomstick's buttons![roman type][line break]";
				if debugmode > 0, say "(Arms: [armUses of arms])[line break]";
				compute broom creampie;
		if snitch-predicament is not held: [snitch flying]
			onlycutshow figure of snitch predicament cutscene;
			if the snitch-height of snitch-predicament > a random number between 6 and 9, increase the snitch-height of snitch-predicament by a random number between -2 and 2; [drone will gradually lower, at least a bit]
			otherwise increase the snitch-height of snitch-predicament by a random number between -1 and 1;
			if the snitch-height of snitch-predicament > 10, now the snitch-height of snitch-predicament is 10;
			if the snitch-height of snitch-predicament < 2, now the snitch-height of snitch-predicament is 2;
			let L be the location of snitch-predicament;
			let R be a random number between 1 and 10;
			if L is not a park room or a random number between 1 and 4 is 1:
				let A be the best route from L to Park05; [the centre of the park]
				try snitch-predicament going A;
			otherwise if R > snitch-time of snitch-predicament:
				if the player is in L and the player is getting lucky:
					say "[BigNameDesc of snitch-predicament] doesn't make it very far this turn. [GotLuckyFlav]";
				otherwise:
					now Neighbour Finder is L;
					let A be a random N-viable direction;
					if A is a direction, try snitch-predicament going A;
			otherwise if the player is in L:
				say "[BigNameDesc of snitch-predicament] doesn't make it very far this turn.";
			if snitch-predicament is in the location of the player, say HeightDesc of snitch-predicament.

Check taking snitch-predicament:
	if the noun is held, say "You've already caught that?" instead;
	if the player is prone, say "You'd need to be standing up to do that." instead;
	allocate 6 seconds;
	if broomstick-buttons-held > 0, say "You remove one hand from the broom, releasing one of the two buttons.";
	let capture-success be false;
	if the player is getting unlucky:
		say "The shock makes your arm spasm, and you lose your chance to try and grab [NameDesc of snitch-predicament]! [GotUnluckyFlav]";
	otherwise:
		let R be a random number between the snitch-time of snitch-predicament and 10;
		if debuginfo > 0, say "[input-style]Quadcopter capture roll: RNG([snitch-time of snitch-predicament]~10) = [R] | [snitch-height of snitch-predicament - 1].5 quadcopter capture difficulty[roman type][line break]";
		if R >= the snitch-height of snitch-predicament:
			say "SUCCESS! You manage to grip onto the corner of the drone and bring it down. You're now holding it in one hand, meaning you can't hold down one of the broomstick's buttons. Quick, get to your house as fast as you can!";
			now capture-success is true;
		otherwise:
			say "[if R >= the snitch-height of snitch-predicament - 2]You manage to get two fingers on it, but it slips out of your grip. Fuck, so close[otherwise if R >= the snitch-height of snitch-predicament - 4]You manage to touch it, but it flies away before you can actually grab it. Damn, that was close[otherwise]You reach for it, but it flies away before you can touch it[end if]!";
	if capture-success is false, allocate arm use instead.

To compute broom plug shock:
	let P be a random thing penetrating asshole;
	if P is a thing:
		say "[BigNameDesc of P] releases a powerful electric shock, right into your [asshole]!";
		PainUp 1;
		increase the snitch-time of snitch-predicament by 1.

To compute broom creampie:
	if snitch-predicament is not broom-creampied and purple-vibrator is penetrating vagina:
		say "[BigNameDesc of purple-vibrator] unleashes a torrent of [semen] into your [vagina]!";
		PussyFill 12;
		if the pregnancy of the player is 0 and pregnancy fetish is 1: [Once pregnant you don't get any more potential fathers!]
			let ULA be a random ultimate-lesson-actor;
			now ULA is inseminating vagina;
		now snitch-predicament is broom-creampied.

Report going when the player is in Predicament20:
	if current-predicament is snitch-predicament:
		say "As you enter your house, several things happen.";
		if snitch-predicament is held:
			let G be a random worn gag;
			if G is a gag:
				say "[BigNameDesc of G] unlocks!";
				unlock G;
			say "[BigNameDesc of snitch-predicament] disappears!";
			destroy snitch-predicament;
		otherwise:
			compute broom creampie;
		if chastity-belt is worn:
			say "[BigNameDesc of chastity-belt] unlocks, and detaches from your body, taking the plugs with it!";
			unlock chastity-belt;
			now chastity-belt is in the location of the player;
			if black-plug is worn:
				now black-plug is in the location of the player;
				dislodge black-plug;
			if purple-vibrator is worn:
				now purple-vibrator is in the location of the player;
				dislodge purple-vibrator.

Report going when the player is in Predicament19:
	if current-predicament is snitch-predicament:
		let AP be a random unsure alchemy product in Predicament19;
		if AP is an alchemy product:
			now AP is sure;
			say "[bold type]You spot a [MediumDesc of AP] on the ground in front of your door![roman type][line break]If you pick it up before you enter your house, you'll be able to keep it[if snitch-predicament is held and snitch-predicament is not broom-creampied]. Unfortunately, [bold type]to pick it up you would need to release the second broomstick button, or first release the quadcopter, and have to go and catch it all over again...[roman type][line break][otherwise].[end if]".



anal-beads-swimsuit-predicament is a predicament. anal-beads-swimsuit-predicament has a number called lipstick-heel-time. anal-beads-swimsuit-predicament has a number called snitch-height.

Definition: anal-beads-swimsuit-predicament is appropriate:
	if diaper quest is 0 and the rank of the player < 3 and the player is an august 2022 top donator, decide yes;
	decide no.

Figure of anal-beads-swimsuit-predicament is the file "Special/Cutscene/cutscene-anal-beads-swimsuit1.jpg".
Figure of anal-beads-swimsuit-predicament-crawling is the file "Special/Cutscene/cutscene-anal-beads-swimsuit2.jpg".

To say PredicamentDescription of (P - anal-beads-swimsuit-predicament):
	say "I'm currently in an Extra Credit lesson where I need to get back to my house. The top of the swimsuit only covers my breasts if I keep my hands behind my neck. Every time I walk on my heels, it pumps up the anal beads of my swimsuit a bit bigger.".

To execute (P - anal-beads-swimsuit-predicament):
	summon anal-beads-blue-swimsuit uncursed;
	now the plug size of anal-beads-blue-swimsuit is 1;
	let H be a random lipstick heels;
	summon H locked;
	now the heel-height of H is 1;
	now H is predicament-temporary;
	summon butt-slut tattoo;
	now butt-slut tattoo is predicament-fixed;
	now erasure-salve is in Toilet01;
	now erasure-salve is bland;
	now erasure-salve is sure;
	now the player is in Predicament01;
	say "You find yourself in a small abandoned building. You're wearing a pair of weird heels with stiletto heels styled as sticks of lipstick. You are also wearing a very peculiar slutty blue swimsuit, with no back, anal beads at the back of the crotch section to hold it in place, and thumb holes at the collar which requires you to hold it up with both thumbs to keep the top section in place.[line break]A robotic voice is speaking to you from some hidden speaker:[paragraph break][first custom style]'WELCOME TO EXTRA CREDIT CLASS. [PredicamentRewardExplanation]EACH TIME YOU STEP ON YOUR HEELS, YOUR ANAL BEADS WILL BE SLIGHTLY INFLATED. WHILE YOU CRAWL, YOUR NEW TATTOO WILL BE VISIBLE.'[roman type][line break]You turn to a mirror behind you, which with a bit of squatting reveals a lewd 'BUTT SLUT' tattoo around your [asshole].[line break][variable custom style]Oh my god![paragraph break][first custom style]'THERE IS A SALVE IN THE MEN'S TOILETS THAT CAN REMOVE THE TATTOO.'[roman type][line break][PredicamentRewardExplanationReaction][roman type][line break]".

Report going:
	if current-predicament is anal-beads-swimsuit-predicament and the player is upright and the plug size of anal-beads-blue-swimsuit < 10 and the player is in a predicament room and there is worn lipstick heels:
		increase the lipstick-heel-time of anal-beads-swimsuit-predicament by 1;
		let P be the lipstick-heel-time of anal-beads-swimsuit-predicament / 3;
		if P > the plug size of anal-beads-blue-swimsuit:
			now the plug size of anal-beads-blue-swimsuit is P;
			if anal-beads-blue-swimsuit is held or anal-beads-blue-swimsuit is in the location of the player, say "[bold type]Your anal beads have now reached a significant new size[if anal-beads-blue-swimsuit is penetrating asshole] inside your [asshole][end if].[line break][if anal-beads-blue-swimsuit is penetrating asshole][variable custom style][one of]I can definitely feel that![or]Aah![or]Oooh, these beads are getting big![or]Fuck, they're big![or]Holy shit, they're really stretching me out![or]Oh my god, I can't believe how full that's making me feel.[or]I can hardly take this... Surely they can't grow any larger?![or]My poor asshole... It can't take any more of this![or]Holy shit, my butthole is going to explode![stopping][roman type][line break][end if]";
			if P > the openness of asshole + a random number between 0 and 1, gape asshole times 1;
		otherwise if anal-beads-blue-swimsuit is held or anal-beads-blue-swimsuit is in the location of the player:
			say "The beads of [NameDesc of anal-beads-blue-swimsuit] [one of]grow[or]inflate[or]swell[purely at random] a [one of]fraction[or]tiny bit[purely at random] [one of]larger[or]bigger[or]wider[purely at random].".

An all later time based rule (this is the anal-beads-swimsuit-predicament cutscenes rule):
	if current-predicament is anal-beads-swimsuit-predicament and the player is in a park room and anal-beads-blue-swimsuit is worn and anal-beads-blue-swimsuit is top-placed and anal-beads-blue-swimsuit is crotch-in-place:
		if the player is upright, onlycutshow figure of anal-beads-swimsuit-predicament;
		otherwise onlycutshow figure of anal-beads-swimsuit-predicament-crawling for butt-slut tattoo.



joint-fuckhole-predicament is a team-predicament. The printed name of joint-fuckhole-predicament is "suction cups". [for breast milking]

Definition: joint-fuckhole-predicament is appropriate:
	if diaper quest is 0 and the rank of the player > 2 and the player is a december 2022 top donator, decide yes;
	decide no.

Figure of joint-fuckhole-predicament is the file "Special/Cutscene/cutscene-predicament-joint-fuckholes1.jpg".
Figure of joint-fuckhole-predicament-left-cum is the file "Special/Cutscene/cutscene-predicament-joint-fuckholes2a.png".
Figure of joint-fuckhole-predicament-right-cum is the file "Special/Cutscene/cutscene-predicament-joint-fuckholes2b.png".

To execute (P - joint-fuckhole-predicament):
	[clear the map-window;]
	now temporaryYesNoBackground is figure of no-image-yet;
	now temporary-map-figure is figure of joint-fuckhole-predicament;
	blandify and reveal torn-shirt;
	now torn-shirt is in Predicament01;
	blandify and reveal naughty-skirt;
	now naughty-skirt is in Predicament01;
	blandify and reveal heart-strap-thong;
	now heart-strap-thong is in Predicament01;
	blandify and reveal black-lace-thong;
	now black-lace-thong is in Predicament01;
	now team-predicament-partner is in Predicament01;
	now the stance of the player is 1;
	now the player is in Predicament01;
	say "You find yourself stuck in a hole in a wall. Your top half is in a small, dark room. In the room, there is a screen showing you live video footage of your rear end. Your lower half is in a larger, brighter-lit room. Pinned to the wall above your butt, is a [heart-strap-thong], and on the ground below your crotch is a [torn-shirt]. To your left is another butt - the butt of [NameDesc of team-predicament-partner]. Pinned to the wall above [his of team-predicament-partner] butt is a [black-lace-thong], and under [his of team-predicament-partner] crotch is a [naughty-skirt].[line break]A robotic voice is speaking to you from some hidden speaker:[paragraph break][first custom style]'WELCOME TO EXTRA CREDIT CLASS. [PredicamentRewardExplanation]YOU WILL EACH SIMULTANEOUSLY BE GIVEN A SERIES OF IDENTICAL CHOICES. IF YOU CHOOSE THE CRUEL OPTION, AND YOUR RIVAL DOES NOT, YOUR LIGHT WILL TURN OFF. TWO MEN WILL THEN BE RELEASED INTO THE CHAMBER BEHIND YOU, WITH INSTRUCTIONS TO DO WHAT THEY WANT TO THE BUTTS WITH LIGHTS ON ABOVE THEM. THIS WILL REPEAT UNTIL ONE OF YOU EARNS RELEASE - THE OTHER WILL THEN BE RELEASED AFTER A FINAL TWO MEN HAVE USED YOU. YOU MUST THEN RETURN HOME.'[roman type][line break][PredicamentRewardExplanationReaction][roman type][line break]";
	let rounds-completed be 0;
	let player-choice be 0;
	let rival-choice be 0;
	let pain-this-round be false; [does the rival experience pain and therefore maybe let loose?]
	let player-released be false;
	let rival-released be false;
	let rival-animosity be the vindictiveness of team-predicament-partner;
	let M be a random ultimate-lesson-actor;
	let N be a random ultimate-lesson-actor;
	now the health of M is the maxhealth of M;
	now the health of N is the maxhealth of N;
	now time-seconds is 6; [required for 'check enema holding' to work properly]
	now same-turn-squirting is true; [AssSquirt function won't try to trigger extra turns]
	while M is N:
		now N is a random ultimate-lesson-actor;
	while player-released is false and rival-released is false:
		let man-balance be 1; [0: both for player; 1: one for each; 2: both for rival]
		if refractoryperiod > 0, decrease refractoryperiod by 1;
		now pain-this-round is false;
		check for arousal change;
		say "There's [one of]a[or]another[stopping] short break before your next options appear.";
		cool down 1000;
		if the player is possessing a vagina:
			if the soreness of asshole > the soreness of vagina, heal asshole times 1;
			otherwise heal vagina times 1;
		otherwise:
			heal asshole times 1;
		if rounds-completed > 3 and the player is getting unlucky:
			say "[bold type]In the video feed, you see [NameDesc of team-predicament-partner] [bold type]lose hold of the creampies [he of team-predicament-partner] has been holding in [his of team-predicament-partner] butthole.[roman type][line break]";
			if bukkake fetish is 1:
				say "The anal creampie spurts down onto [NameDesc of naughty-skirt] underneath [his of team-predicament-partner] butt.";
				SemenSoakUp naughty-skirt by 3;
			otherwise:
				SemenPuddleUp 3;
		check enema holding;
		truncate temporary-map-figures to 0 entries;
		add temporary-map-figure to temporary-map-figures;
		if the semen-soak of naughty-skirt > 0, add Figure of joint-fuckhole-predicament-left-cum to temporary-map-figures;
		if the semen-soak of torn-shirt > 0, add Figure of joint-fuckhole-predicament-right-cum to temporary-map-figures;
		now pain-this-round is false;
		say "Two options are presented to you on the touch-screen in front of you[one of]. And presumably, through the wall to your left, [NameDesc of team-predicament-partner] is presented these same options[or][stopping].";
		reset multiple choice questions;
		set numerical response 1 to "KIND - [if rounds-completed >= 10]100[otherwise][rounds-completed * 10][end if]% CHANCE OF RIVAL'S RELEASE";
		let total-options be 3;
		if watersports fetish is 1, increase total-options by 1;
		if piercing-fetish is 1 and the number of worn nipple piercing is 0, increase total-options by 1;
		if lactation fetish is 1, increase total-options by 1;
		if small-jewelled-plug is not worn and small-jewelled-plug is not worn by team-predicament-partner, increase total-options by 1;
		if slave collar is not worn and slave collar is not worn by team-predicament-partner, increase total-options by 1;
		if fancied-friend is not friend-shocked, increase total-options by 1;
		let R be a random number between 1 and total-options;
		if debugmode > 0, say "[input-style]Option [R] out of [total-options] chosen.[roman type][line break]";
		if watersports fetish is 1:
			if R > 1:
				decrease R by 1;
			otherwise:
				set numerical response 2 to "CRUEL - RIVAL DRENCHED IN PISS";
				now R is 99999;
		if piercing-fetish is 1 and the number of worn nipple piercing is 0:
			if R > 1:
				decrease R by 1;
			otherwise:
				set numerical response 2 to "CRUEL - RIVAL GIVEN NIPPLE PIERCINGS & CHAIN";
				now R is 99999;
		if lactation fetish is 1:
			if R > 1:
				decrease R by 1;
			otherwise:
				set numerical response 2 to "CRUEL - RIVAL MILKED";
				now R is 99999;
		if small-jewelled-plug is not worn and small-jewelled-plug is not worn by team-predicament-partner:
			if R > 1:
				decrease R by 1;
			otherwise:
				set numerical response 2 to "CRUEL - RIVAL BUTT PLUGGED";
				now R is 99999;
		if slave collar is not worn and slave collar is not worn by team-predicament-partner:
			if R > 1:
				decrease R by 1;
			otherwise:
				set numerical response 2 to "CRUEL - RIVAL COLLARED";
				now R is 99999;
		if fancied-friend is not friend-shocked:
			if R > 1:
				decrease R by 1;
			otherwise:
				set numerical response 2 to "CRUEL - RIVAL FORCED VIDEO CHAT WITH [FanciedRole in upper case]";
				now R is 99999;
		if R is 1:
			set numerical response 2 to "CRUEL - RIVAL GIVEN ELECTRIC SHOCKS";
		if R is 2:
			set numerical response 2 to "CRUEL - RIVAL SEX DRIVE ENHANCED WITH HYPNOSIS";
		if R is 3:
			set numerical response 2 to "CRUEL - RIVAL FILMED AND DOXXED";
		let T be the chosen numerical response of 2;
		zero focus stuff;
		compute multiple choice question;
		let PNR be player-numerical-response; [in case we need to check it later after we've asked another question]
		if player-numerical-response is 1:
			say "You pick the kind option, and hope that [NameDesc of team-predicament-partner] does the same for you.";
			decrease rival-animosity by 1;
			if a random number between 0 and 9 < rounds-completed:
				now rival-released is true;
				say "With a [']DING!['] you watch as the hole trapping [NameDesc of team-predicament-partner] slowly widens, until [he of team-predicament-partner] is able to wiggle [himself of team-predicament-partner] out. You watch on your screen with dismay as [he of team-predicament-partner] claims [NameDesc of black-lace-thong], [NameDesc of naughty-skirt] and [NameDesc of torn-shirt] for [himself of team-predicament-partner].";
				only destroy black-lace-thong;
				only destroy torn-shirt;
				only destroy naughty-skirt;
				if a random number between 3 and 8 > the favour of team-predicament-partner:
					say "...And then you watch as [NameDesc of team-predicament-partner] takes [NameDesc of heart-strap-thong] too. [big he of team-predicament-partner] turns around, looks straight into the camera, and flips you the bird. What a bitch.";
					only destroy heart-strap-thong;
				say "Dressed looking slutty, but [if heart-strap-thong is in Predicament01]in much more clothing than you're going to have available to wear[otherwise]not as naked as you're going to be[end if], [NameDesc of team-predicament-partner] takes [his of team-predicament-partner] leave.";
				now team-predicament-partner is in School01;
		otherwise:
			say "You pick the cruel option. [BigNameDesc of team-predicament-partner] [one of]won't be happy with you[or]will be upset with you[or]will be mad about that[or]is probably going to be livid[or]may never forgive you after this[then at random].";
			decrease the favour of team-predicament-partner by 1;
			increase rival-animosity by 1;
			if T matches the text "PIERCINGS" or T matches the text "SHOCKS", now pain-this-round is true;
			if T matches the text "COLLARED", now team-predicament-partner is wearing slave collar;
		if the player is not getting very lucky and (a random number between -2 and 5 < rival-animosity or the player is getting unlucky) and (rounds-completed < 10 or a random number between 1 and 3 > 1): [33% chance of rival giving up each round at 100% chance of release]
			if PNR is 1, now man-balance is 0;
			if T matches the text "PLUGGED":
				now T is "PLUGGED";
			otherwise if T matches the text "DOXXED":
				now T is "DOXXED";
			otherwise if T matches the text "VIDEO":
				now T is "VIDEO";
			otherwise: [There's no surprise waiting in the next phase]
				if T matches the text "PISS":
					say "Suddenly, and without warning, powerful water jets start blasting at your face and upper torso from all angles. The smell is unmistakable - you're being doused in huge amounts of warm [urine]!";
					AnnouncedSquirt urine on face by 50;
					AnnouncedSquirt urine on breasts by 20;
					FearUp 1 with reason "As you jump with shock from being blasted by [urine],";
					now the urine-puddle of Predicament01 is 0;
				if T matches the text "PIERCINGS":
					say "Suddenly, and without warning, two silent robotic arms come up from below you and clamp down on your nipples with searing hot needles!";
					PainUp 1;
					let NC be a random nipple chain;
					summon NC uncursed;
					now NC is predicament-fixed;
					say "Moments later, they pull away, and you discover that your sore nipples are now pierced, and connected together by a [NC]!";
					force immediate clothing-focus redraw;
				if T matches the text "MILKED":
					say "Before you can react, two suction pumps have leapt up from beneath you, and latched onto your nipples! They immediately begin sucking and pumping at your nipples with a steady, fast rhythm!";
					stimulate breasts from P;
					now T is "MILKED";
				if T matches the text "COLLARED":
					summon slave collar locked;
					now slave collar is predicament-fixed;
					say "Suddenly, a collar is silently slipped onto your neck from behind! You didn't have any chance to see it coming!";
					FearUp 1 with reason "As you jump with shock from being suddenly collared,";
					say "You hear a lock click shut, and are now very aware that you are wearing a [slave collar]!";
					force immediate clothing-focus redraw;
				if T matches the text "SHOCKS":
					say "Suddenly, and without warning, a silent robotic arms comes up from below you and pokes your stomach with an electric cattle prod!";
					say "[line break][italic type]ZAP[roman type][paragraph break]";
					PainUp 1;
					say "[line break][italic type]ZAP[roman type][paragraph break]";
					PainUp 1;
					say "Then it lowers back away, leaving you to sob quietly into your soundproofed booth, as the pain slowly fades away.";
				if T matches the text "HYPNOSIS":
					say "Without warning, the screen in front of you starts showing an additional semi-transparent over the live feed of your rear ends. Swirling hypnotic patterns and rapidly changing scenes of [manly-penis]s surging into bodily orifices partially obscure the view. At the same time, reverberating feminine voices whispering in seductive tones about how delightful it is to get fucked, begin to fill your little capsule.[line break][variable custom style]I've got to look away! I've got to close my eyes![roman type][line break]But despite what your conscious brain tells your eyes to do, you find they're stuck open and staring at the hypnotic footage. You can't look away at all.";
					now T is "HYPNOSIS";
				say "Well, it's very clear that [NameDesc of team-predicament-partner] pressed [his of team-predicament-partner] [']CRUEL['] button.";
		otherwise:
			if PNR is 2, now man-balance is 2;
			if rival-released is false and a random number between 0 and 9 < rounds-completed:
				now player-released is true;
				say "With a [']DING!['] you watch as the hole trapping your torso slowly widens, until you are able to wiggle yourself out. It's now completely up to you what clothing you take, and what you leave for [NameDesc of team-predicament-partner]!";
		if pain-this-round is true and rounds-completed > 0 and rival-released is false:
			say "In the video feed, you see [NameDesc of team-predicament-partner] lose hold of the [semen] in [his of team-predicament-partner] ass, probably because of the pain you just caused [him of team-predicament-partner].";
			if bukkake fetish is 1:
				say "The anal creampie spurts down onto [NameDesc of naughty-skirt] underneath [his of team-predicament-partner] butt.";
				SemenSoakUp naughty-skirt by 3;
			otherwise:
				SemenPuddleUp 3;
		[--MEN COME TO FUCK--]
		if player-released is false:
			if rival-released is true, now man-balance is 0;
			now M is in Predicament01;
			now N is in Predicament01;
			say "From the camera's vantage point, you watch as the bottom halves of two naked [men of M] appear within view.[line break][speech style of M]'[one of]I can't believe this is real!'[line break]'Me neither!'[or]Haha, fuck yeah! There really [if rival-released is false]are two sluts[otherwise]is a slut[end if] stuck in this wall, just like it said!'[line break]'Wow. I guess I owe you dinner.'[or][if rival-released is false]I'll take this one on the left.'[line break]'Suit yourself, this ass looks fine to me!'[otherwise]Oh, there's only one slut here now. Dibs me first![line break]'Ugh, fine. I don't think you'll have been the first to use that hole today, anyway.'[end if][or]Am I in heaven? I think I'm in heaven.'[line break]'I never knew how much I needed to fuck a butt in a wall until right now.'[or]This is fucked up, man!'[line break]'Fucked up in the best of ways.'[or]Oh my, so many holes to choose from, and such little time!'[line break]'I feel like a kid at the candy store.'[or]The only half of a slut that matters, heh.'[line break]'That's a pretty cringe thing to say, dude.'[or]'This is super weird.'[line break]'Yeah, but the good kind of weird.'[then at random][roman type][line break][one of]Both of them sound very excited.[or][stopping][paragraph break]";
			if T is "DOXXED":
				say "And then... The screen changes a bit. It's now zoomed in, and totally focused on just your butt. But also, it's now an embedded video inside the front page of a website [']www.hourlysluts.com[']. And there's a live viewer count, sitting at 101... 102... 103... 104 people, and quickly climbing. And there's a profile underneath, detailing your name, age, address, and phone number, and a photo of your face.[line break][variable custom style][one of]This can't be real! This can't be real, can it?![or]Oh no, not again![stopping][roman type][line break]A chat bar on the right hand side shows you what people think about what they're seeing.[line break][italic type][one of][']Is [he of the player]... Mounted in a wall?!['][line break][']Holy shit, they've just completely doxxed [him of the player]!['][or][']No way, do you think those details are real?!['][or][']Hey look, the feed is back on!['][line break][']Wait, is that a different dude?!['][line break][']Just how many dudes have fucked this slut today?!['][stopping][roman type][line break]";
				if the number of blank rows in the Table of Published Disgraces > 0:
					choose a blank row in Table of Published Disgraces;
					now the content entry is "a high quality video showing your profile and personal details as your butt, stuck in a hole in a wall, gets fucked from behind";
					now the published entry is the substituted form of "has been archived after its livestream on hourlysluts.com";
					now the severity entry is 1; [there's no guarantee that it's really you]
					now the popularity entry is 5;
					now the timestamp entry is earnings;
					now the lastwitnessed entry is 0;
					now the deletedtime entry is -1;
					now the viewsfuzz entry is 100;
			if T is "VIDEO":
				say "And then... The screen changes a bit. Now only one quarter of the screen shows your butts. Another quarter now shows a close-up of your face. Another quarter shows a familiar video chat software's interface, and it's calling... Oh god. It's calling [FanciedName], your [FanciedRole]. And there's a ringing tone.[line break][variable custom style]'Oh no. No no no no no, please don't pick up!'[roman type][line break]You beg, but it's no use. A moment later, [FanciedName][']s face appears in the final quarter of the screen.[line break][speech style of fancied-friend]'[OriginalNameBimbo]? What's up? You look a little... Different?'[roman type][line break]";
				increase the times-called of fancied-friend by 1;
				FearUp 1 with reason "The reality of being in a video call with your [FanciedRole] right now makes you tense up with anxiety,";
			say "[if man-balance is 1 and PNR is 1]One [man of M] approaches each of your butts. [bold type]That confirms it - [NameDesc of team-predicament-partner] [bold type]chose KIND[roman type].[otherwise if man-balance is 1]One [man of M] approaches each of your butts.[otherwise if rival-released is true]Both [men of M] approach your defenceless butt.[otherwise if man-balance is 0]The light above [NameDesc of team-predicament-partner][']s butt turns off, because you chose KIND and [bold type][he of team-predicament-partner] chose CRUEL[roman type]. That means that both [men of M] are only allowed to fuck you![line break][variable custom style]Oh fuck[one of][or], not again[stopping]...[roman type][line break][otherwise]The light above your butt turns off, because you chose CRUEL and [NameDesc of team-predicament-partner] [bold type]chose KIND[roman type]. That means that both [men of M] are only allowed to fuck [him of team-predicament-partner]![line break][variable custom style]Sorry[one of], hun[or]again[stopping]...[roman type][line break][end if]";
			let total-men be 2;
			while total-men > 0:
				zero focus stuff; [penetration icons will get updated correctly]
				if man-balance < 2:
					if M is off-stage, now M is N;
					let F be asshole;
					if the player is possessing a vagina and a random number between 1 and 2 is 1, now F is vagina;
					if F is asshole:
						let PLG be a random worn plug;
						if PLG is a thing:
							say "[BigNameDesc of M] pulls [NameDesc of PLG] out of your [asshole] with an audible [']POP!['][line break][speech style of M]'I wonder if I'll get in trouble for keeping this as a souvenir?'[roman type][line break]";
							only destroy PLG;
					set up sex length 3 of M in F;
					now M is penetrating F;
					if T is "VIDEO", say "[variable custom style]'Hey, sorry [FanciedName], I think I must have called you by accident. I... Eek!'[roman type][line break]";
					say "[bold type][one of]With no further fanfare[or]With a hearty grunt of satisfaction[or]Chuckling sadistically[or]Breathing heavily[or]Laughing energetically[in random order], [NameDesc of M] [bold type][one of]pushes[or]forces[or]eases[at random] [his of M] [LongDickDesc of M] into your [variable F]![roman type][line break]";
					if T is "VIDEO", say "You can't help but wince and squeal a tiny bit. [FanciedName] must be able to tell that something is wrong, because [he of fancied-friend] frowns with concern.[line break][speech style of fancied-friend]'Are you okay? Your face almost looked like... Never mind.'[roman type][line break]";
					ruin F;
					while the sex-length of M > 0:
						check for arousal change;
						if T is "VIDEO":
							if the soreness of F > 8 and the player is getting unlucky:
								say "[variable custom style]'[one of]Awooo, it hurts so much...'[or]Aww fuck, I can't take it any more!'[or]Aah, my [variable F] is too sore!'[at random][roman type][line break]You were unable to stop yourself from bawling out loud. [GotUnluckyFlav][FanciedName] gasps with offence.[line break][speech style of fancied-friend]'Oh my god, you really are getting fucked right now, aren't you?! [OriginalNameBimbo], I thought you were kind and sweet, but you're nothing but a sick pervert! Don't ever call me again.'[roman type][line break][FanciedName] terminates the call.[line break][variable custom style]Noooo![roman type][line break]";
								if the friend-max-appearance of fancied-friend < 8, now the friend-max-appearance of fancied-friend is 8;
								now fancied-friend is friend-shocked;
								now T is "V";
							otherwise if the player is very horny:
								say "[variable custom style]'[one of]Hnnnnng...'[or]Haaaaah!'[or]Fuckkkkkk!'[at random][roman type][line break][FanciedName] scowls.[line break][speech style of fancied-friend]'[one of]Please tell me this is some sort of stupid joke.'[or]If you're really doing what it looks like you're doing, we can't be friends any more.'[or]Did you call me just to... Just to... No, I can't believe it...'[in random order][roman type][line break]";
								if the friend-max-appearance of fancied-friend < 7, now the friend-max-appearance of fancied-friend is 7;
							otherwise if the player is horny:
								say "[variable custom style]'[one of]I'm fine! I'm... Aaaah... Haaah...'[or]There's nothing going oooooh!'[or]Fah... Fah... Fine! I'm fine!'[at random][roman type][line break][FanciedName] narrows [his of fancied-friend] eyes.[line break][speech style of fancied-friend]'[one of]Are you fucking with me?'[or]Your eyes look really dilated...'[or]I feel like I've only seen this sort of expression in one place before...'[in random order][roman type][line break]";
								if the friend-max-appearance of fancied-friend < 5, now the friend-max-appearance of fancied-friend is 5;
						if T is "MILKED":
							say "The breast pumps on your nipples continue to suck away like hungry little devils.";
							if the milk volume of breasts > 0:
								say "You watch as some of your breast milk surges down the transparent tubing and away[one of], presumably to some hidden container[or][stopping].";
								decrease the milk volume of breasts by 5;
								if the milk volume of breasts <= 0:
									say "[bold type]Your [BreastDesc] are now completely empty of [milk].[roman type][line break]";
									now the milk volume of breasts is 0;
								otherwise:
									say "Your [BreastDesc] are completely empty of milk, and so you can feel this sucking action sending them urgent signals, telling them that your [']children['] are still hungry, and they need to produce more milk in the future...[one of][variable custom style]Are my breasts going to be making [if the lactation rate of breasts > 0]more [end if]milk from now on?![roman type][line break][or][stopping]";
									increase the lactation rate of breasts by 1;
							stimulate breasts from P;
							check sudden expulsion with reason "The combined sensations of sex and nipple-pumping are overwhelming your senses,";
						if T is "HYPNOSIS":
							say "[second custom style][one of]YOU LOVE COCK[or]COCK FEELS GREAT[or]YOU WERE MADE TO TAKE COCK[cycling][roman type][line break]The hypnotic audio and visual assault on your mind continues.";
							if F is vagina, VaginalSexAddictUp 1;
							if F is asshole, AnalSexAddictUp 1;
						if T is "DOXXED":
							say "Several more messages fly up the chat box on the right hand size of your livestream.[line break][italic type]['][one of]Yeah, fuck [him of the player] up!['][or]Don't show that slut any mercy!['][or]Fuck, I wish I could be there!['][or]Cum inside [him of the player]! Cum inside [him of the player]!['][or]What a phat ass!['][or]I wish I could see [his of the player] face!['][or]I live nearby... Maybe I should pay this slut a visit tomorrow!['][in random order][roman type][line break][moderateHumiliateReflect]";
						reset multiple choice questions;
						set numerical response 1 to "Spread your legs and take it.";
						set numerical response 2 to "Wiggle your hips with reluctance.";
						set numerical response 3 to "Try to kick [him of M] away.";
						zero focus stuff;
						compute multiple choice question;
						let rough-sex be 1;
						if player-numerical-response is 1:
							now the player-reaction of the player is submitting;
							say "[BigNameDesc of M] [one of]laughs[or]chuckles[or]cackles[at random] at your submission.[line break][speech style of M]'[one of]What a slut.'[or]I think [he of the player] likes it!'[or]The owner of this butt is one massive slut!'[or]Good butt.'[or]That's it... Take it, whore!'[or]What a good little fuckhole.'[or]This one has learned [his of the player] place!'[or]That's it, spread [']em wide, like the nasty fucking skank you are!'[or]It's like [he of the player][']s begging me to fucking ruin [him of the player], haha!'[or]Yes that's right, you filthy cock-addicted slut!'[or]I guess that's a [if F is asshole]butt slut's[otherwise]cock addict's[end if] way of telling me that [he of the player] likes it!'[or]Oh? You're that desperate to be filled with my cum?'[or]This slut is insatiable!'[in random order][roman type][line break]";
							if T is "DOXXED":
								say "The viewers on the livestream comment on your submission.[paragraph break][italic type]'[one of][big he of the player][']s a fucking disgrace!'[or]Wow, [he of the player] really wants it bad!'[or]I'm gonna send this to [his of the player] parents!'[in random order][roman type][line break][severeHumiliateReflect]";
							otherwise:
								say moderateHumiliateReflect;
						if player-numerical-response is 2:
							now the player-reaction of the player is begging for mercy;
							if the player is getting lucky:
								say "[BigNameDesc of M] seems to take mercy on you, and moves in and out a lot slower. [GotLuckyFlav]";
								now rough-sex is 0;
							otherwise if the player is getting unlucky:
								say "[BigNameDesc of M] growls with annoyance.[line break][speech style of M]'Stay still, bitch!'[roman type][line break][big he of M] spanks you hard on your [AssDesc].";
								PainUp 1;
							otherwise if F is vagina and the number of worn plugs is 0 and a random number between 1 and 4 is 1:
								say "[BigNameDesc of M] chuckles.[line break][speech style of M]'[one of]Settle down, Bessie!'[or]Where's the [']off['] button? In here, maybe?'[in random order][roman type][line break][big he of M] shoves a thumb into your [asshole] and cruelly pumps it in and out a few times.";
								ruin asshole;
							otherwise if F is asshole and the player is possessing a vagina and a random number between 1 and 4 is 1:
								say "[BigNameDesc of M] chuckles.[line break][speech style of M]'[one of]Settle down, Bessie!'[or]Where's the [']off['] button? Maybe it's this knob?'[in random order][roman type][line break][big he of M] grabs your clitoris in between a thumb and forefinger, and twists it cruelly.";
								PainUp 1;
								stimulate vagina from M;
							otherwise:
								say "[BigNameDesc of M] seems to just ignore your gentle protest.";
							if T is "DOXXED":
								say "The viewers on the livestream comment on your reaction.[paragraph break][italic type]'[one of][big he of the player] must love it really, otherwise [he of the player][']d be kicking that guy away as hard as [he of the player] could!'[or]We can tell you love it really, slut!'[or][one of][big he of the player][']s hardly fighting back at all[or]Quit faking your reluctance, slut[cycling]!'[stopping][roman type][line break][strongHumiliateReflect]";
						if player-numerical-response is 3:
							now the player-reaction of the player is resisting;
							say "[BigNameDesc of M] [one of]cries out in pain[or]gasps with frustration[or]grunts heavily[in random order] as your foot connects rather forcefully with [his of M] thigh.";
							if the player is getting lucky:
								say "[speech style of M]'[one of]Fine, you win bitch, I'm done here.'[or]This doesn't feel right. [big he of the player] clearly doesn't want it.'[or]This isn't fun at all! I'm out.'[in random order][roman type][line break][BigNameDesc of M] pulls out before [he of M][']s even orgasmed! [GotLuckyFlav]";
								now the sex-length of M is -1;
							otherwise:
								let RNG be a random number between 1 and 3;
								if RNG is 1:
									say "[speech style of M]'[one of]Don't fight back, you stupid bitch!'[or]Two can play at that game, slut!'[or]You really want to pick a fight with me?!'[in random order][roman type][line break][big he of M] spanks you hard and fast on both your [AssDesc].";
									PainUp 2;
								otherwise if RNG is 2:
									say "[speech style of M]'[one of]Your resistance just makes me wanna go harder!'[or]Now you've just pissed me off. Take this!'[or]A feisty one, eh? Looks like you need to learn a lesson about who's in control here!'[in random order][roman type][line break][big he of M] speeds up, hammering your [variable F] twice as hard as normal!";
									now rough-sex is 2;
								otherwise if F is vagina and the number of worn plugs is 0:
									say "[speech style of M]'And to think I'd been merciful by deciding to fuck your pussy. This means war!'[roman type][line break][big he of M] pulls [his of M] [manly-penis] out of your [vagina], and then forcefully shoves it into your [asshole]!";
									dislodge M;
									now M is penetrating asshole;
									now F is asshole;
									ruin asshole;
									say "[speech style of M]'How do you like them apples, little miss butt-slut?!'[roman type][line break]";
						if the sex-length of M >= 0: [we set it to -1 to signal that he's pulled out early]
							if the sex-length of M is 1:
								say sexSubmitNearingClimax of M in F;
							otherwise if rough-sex is 1:
								say "[BigNameDesc of M] [one of]pumps in and out of your [variable F][or]treats your [variable F] like a faceless masturbatory aid[or]thrusts in and out of your [variable F][or]humps your [variable F][or]fucks your [variable F][or]slams [his of M] [manly-penis] deep into your [variable F][in random order] [one of]at a steady speed[or]with a steady rhythm[or]2 or 3 times a second[or]with an energetic pace[or]quickly and rhythmically[at random].";
							ruin F times rough-sex;
							if T is "VIDEO" and refractoryperiod >= maxrefractoryperiod: [player orgasmed]
								say "The quarter of the screen showing the video call software changes to show a still of your face, with your eyes rolled into the back of your head, and your tongue lolling out of your mouth. You hadn't even realised you were doing that. At the bottom, it says [']CALLER TOOK SCREENSHOT['].[line break][FanciedName] has a darkened face, and looks angry.[line break][speech style of fancied-friend]'I can't believe you did that in front of me. That's so gross. And perverted. And wrong. I'll have you know that I've taken a screenshot, and will be posting it on your timeline, and telling everyone exactly what you did to me. Nobody's ever going to speak to you again, you freak.'[line break][variable custom style]'No wait please [FanciedName], I can explain!'[roman type][line break]Your [FanciedRole] terminates the call before you can properly respond.[line break][variable custom style]Is [he of fancied-friend] really going to post that where all my family and friends can see it? Oh god...[roman type][line break]";
								if the friend-max-appearance of fancied-friend < 8, now the friend-max-appearance of fancied-friend is 8;
								now fancied-friend is friend-shocked;
								now T is "V";
								if the number of blank rows in the Table of Published Disgraces > 0:
									choose a blank row in Table of Published Disgraces;
									now the content entry is the substituted form of "a screenshot of you making an orgasm face in a video call,";
									now the published entry is the substituted form of "posted to your wall on facepage.com by [MediumDesc of fancied-friend], accompanied by the comment '[OriginalNameBimbo] is a CREEP! [big he of the player] called me while getting FUCKED and thought I wouldn't notice!'";
									now the severity entry is 500;
									now the popularity entry is 0;
									now the viewsfuzz entry is 0;
									now the lastwitnessed entry is 0;
									now the deletedtime entry is 0;
									now the timestamp entry is 0;[by setting these to 0, the 'views' will be set to 1, which means there's no tracked views and the reputation damage is flat severity]
							decrease the sex-length of M by 1;
							if the sex-length of M is 0:
								TimesSubmittedUp M by 1;
								if F is asshole, AnalCount;
								otherwise FuckCount;
								if the player is getting lucky:
									compute M pulling out of F;
								otherwise:
									say "[speech style of M]'[one of]Take it all, bitch!'[or]Here it comes, slut!'[or]I'm gonna fill you up!'[or]It's all going right [if F is vagina]into your cunt,[otherwise]up into your guts, you[end if] whore!'[or]I'm gonna paint you from the inside!'[or]This is my hole now, bitch!'[or]Cumming!'[or]I can't hold it any longer!'[in random order][roman type][line break][BigNameDesc of M] [one of]unleashes [his of M] load[or]ejaculates[or]shoots [his of M] [semen][or]pumps [his of M] swimmers[in random order] into your [variable F] as [he of M] [one of]cums[or]climaxes[or]orgasms[at random].";
									compute M finishing in F;
					if the semen volume of vagina > 6:
						say "Your [vagina] is already so full of [semen] that some spurts out of the sides of [his of M] [manly-penis], and onto your thighs.";
						let SVV be the semen volume of vagina - 6;
						now the semen volume of vagina is 6;
						AnnouncedExpel semen on thighs by SVV;
					[--END OF FUCK--]
					dislodge M; [just in case]
				otherwise: [man-balance is 2 and therefore only the rival is getting fucked]
					say "The first [man of M] takes [his of M] turn fucking [NameDesc of team-predicament-partner], while you just get to kneel there and watch on your screen. When [he of M] finally climaxes, [he of M] grunts happily and then leaves the way [he of M] came.";
					remove M from play;
					decrease total-men by 1;
				if rival-released is false and man-balance > 0:
					say "[if man-balance is 2]Next, the other [man of N] has [his of N] turn, until [he of N] also[otherwise]At around the same time, the other [man of N][end if] climaxes inside [NameDesc of team-predicament-partner], and pulls out with a satisfied grunt.";
					if T matches the text "PLUGGED":
						if rival-released is false and PNR is 2:
							say "[speech style of N]'The instructions said that I had to make you wear this.'[roman type][line break]You watch on the monitor as [NameDesc of team-predicament-partner][']s most recent assailant pushes a small metal plug into [his of team-predicament-partner] butthole. You can almost imagine [his of team-predicament-partner] yelping with distress from inside [his of team-predicament-partner] capsule.[line break][variable custom style]I'd almost forgotten about that.[roman type][line break]";
							now team-predicament-partner is wearing small-jewelled-plug;
					say "The [man of N] who just fucked [NameDesc of team-predicament-partner] leaves the way [he of N] came.";
					remove N from play;
					decrease total-men by 1;
				if T is "PLUGGED" and the number of worn plugs is 0:
					let PLG be small-jewelled-plug;
					if small-jewelled-plug is worn by team-predicament-partner, now PLG is medium-jewelled-plug;
					blandify and reveal PLG;
					say "[speech style of N]'[if rival-released is false and PNR is 2]I got those instructions too[otherwise]The instructions said that I had to make you wear this[end if].'[roman type][line break]You watch on the monitor as [NameDesc of M] prepares to push a [medium-jewelled-plug] into your butthole. And then, as [he of M] pushes it inside, you can't help but squeal.";
					summon PLG uncursed;
					compute insertionRuin of PLG into asshole;
					force immediate clothing-focus redraw;
				if man-balance < 2:
					say "The [man of M] who just fucked you takes [his of M] leave.";
					remove M from play;
					decrease total-men by 1;
		if T is "MILKED", say "The suction cups finally release their hold on your teats, and return to their resting place below you.";
		if T is "HYPNOSIS", say "The video feed returns to normal, and the hypnotic audio turns off. You finally are able to blink and look away from the screen.";
		if T is "DOXXED", say "The video feed returns to normal, hopefully meaning that the video of your butt is no longer being livestreamed to the Internet.";
		if T is "VIDEO", say "The video feed returns to normal, hopefully meaning that the call with [FanciedName] was automatically terminated.";
		if T is "V", say "The video feed returns to normal.";
		if rival-released is true, say "With a [']DING!['] you watch as the hole trapping your torso slowly widens, until you are able to wiggle yourself out. You're finally free!";
		increase rounds-completed by 1;
		if rival-released is true and team-predicament-partner is in Predicament01, now team-predicament-partner is in School01; [just in case]
	now temporaryYesNoBackground is figure of small image;
	now same-turn-squirting is false.




diaper-maze-predicament is a team-predicament. diaper-maze-predicament has a number called player-progress. diaper-maze-predicament has a number called rival-progress.

Definition: diaper-maze-predicament is appropriate:
	if diaper quest is 1 and the rank of the player > 2 and the player is an august 2022 diaper donator, decide yes;
	decide no.

To decide which number is the stimulation of (T - diaper-maze-predicament) on (F - a body part):
	decide on 8. [magic wand vibrator shortcut]

Figure of diaper-maze-predicament-start is the file "Special/Cutscene/cutscene-diaper-maze-predicament1.jpg".
Figure of diaper-maze-predicament-up is the file "Special/Cutscene/cutscene-diaper-maze-predicament2.jpg".
Figure of diaper-maze-predicament-falling is the file "Special/Cutscene/cutscene-diaper-maze-predicament3.jpg".
Figure of diaper-maze-predicament-down is the file "Special/Cutscene/cutscene-diaper-maze-predicament4.jpg".
Figure of diaper-maze-predicament-park-up is the file "Special/Cutscene/cutscene-diaper-maze-predicament5.jpg".
Figure of diaper-maze-predicament-park-down is the file "Special/Cutscene/cutscene-diaper-maze-predicament6.jpg".

To execute (P - diaper-maze-predicament):
	let TS be a random I love my wet nappies T-shirt;
	summon TS uncursed;
	summon frilly stockings uncursed;
	let H be a random mary janes;
	summon H uncursed;
	summon plain-massive-diaper uncursed;
	summon diaper-box locked;
	now team-predicament-partner is in Predicament01;
	now the player is in Predicament01;
	now temporaryYesNoBackground is Figure of diaper-maze-predicament-start;
	now the bladder of the player is bladder-risky-level;
	if the bladder of the player < 4, now the bladder of the player is 4; [could happen at high incontinence]
	if diaper messing >= 4, now rectum is 4;
	let LST be a list of numbers;
	repeat with NMBR running from 1 to 15:
		unless (diaper messing < 4 and NMBR is 5) or (bondage protection > 0 and NMBR is 8) or (dumb baby tattoo is worn and NMBR is 7) or (the largeness of breasts < 3 and NMBR is 13) or (the largeness of breasts < 3 and NMBR is 14), add NMBR to LST;
	sort LST in random order;
	let rival-turns-per-turn be 2;
	say "You find yourself in a massive industrial building. Alongside you is [NameDesc of team-predicament-partner], who, like you, has [his of team-predicament-partner] head encased in a giant perspex cube. The bottom half of the cube contains nothing but [his of team-predicament-partner] head. Then there's a rigid barrier with a hinge separating [his of team-predicament-partner] head from the top half, which contains a huge number of used, [if diaper messing > 6]poop-filled[otherwise][urine]-soaked[end if] diapers. Both [student-name of team-predicament-partner][']s face and your own cube are attached to rails in the ceiling, via tight chains, to keep you following strict predetermined paths. You're each wearing stockings, mary janes, a slightly embarrassing T-shirt and a massive plain diaper. You can see a large monitor [line break]A robotic voice is speaking to you from some hidden speaker:[paragraph break][first custom style]'WELCOME TO EXTRA CREDIT CLASS. [PredicamentRewardExplanation]YOU START OFF IN THIS SPECIAL MAZE. WHEN THE FIRST PARTICIPANT ESCAPES, THE OTHER WILL HAVE THE BARRIER IN THEIR DIAPER CUBE OPEN, DUMPING THE DIAPERS ONTO THEIR HEAD. SHORTER ROUTES WILL TEND TO HAVE MORE NASTY TRAPS.'[roman type][line break]You and [student-name of team-predicament-partner] look at each other awkwardly.[line break][PredicamentRewardExplanationReaction][roman type][line break]";
	force immediate inventory-focus redraw;
	reset multiple choice questions;
	set numerical response 1 to "head off down the hallway away from [student-name of team-predicament-partner]";
	set numerical response 2 to "try to rattle [student-name of team-predicament-partner] first";
	compute multiple choice question;
	if player-numerical-response is 1:
		say "You waddle down the corridor to the first intersection in the railing above you.";
	otherwise:
		say "You roar and charge towards [student-name of team-predicament-partner], pretending that you're about to barrel into [him of team-predicament-partner] and hurt [him of team-predicament-partner].";
		if the player is getting unlucky:
			say "[first custom style]'UNAUTHORIZED VIOLENCE DETECTED.'[roman type][line break]Some sort of safety mechanism, detecting your movement, suddenly locks your chain in place, causing your perspex cube to suddenly be able to move forward, which means it effectively grabs you by the neck and suddenly arrests your movement, choking you in the process. [GotUnluckyFlav]";
			let T be "The sudden asphyxiation makes your muscles involuntarily clench, and";
			check sudden squirt with reason T;
			say "[BigNameDesc of team-predicament-partner] smirks at your just comeuppance, and then makes [his of team-predicament-partner] move, getting a head start, while you are forced to gather your senses and regain your breath.";
			increase rival-progress of P by 2;
		otherwise:
			say "[speech style of team-predicament-partner]'EEK!'[roman type][line break]Despite you stopping before you actually touch [him of team-predicament-partner], you succeeded in scaring the life out of [him of team-predicament-partner]... and [his of team-predicament-partner] [urine].[speech style of team-predicament-partner]'Noooo...'[roman type][line break][big his of team-predicament-partner] white diaper visibly yellows as [he of team-predicament-partner] wets [himself of team-predicament-partner]. And while [he of team-predicament-partner] is busy trying to cross [his of team-predicament-partner] legs and stem the flow, you are off in the other direction, getting a small head start.";
			increase player-progress of P by 1;
	now team-predicament-partner is in School01;
	deinterest team-predicament-partner;
	now temporaryYesNoBackground is Figure of diaper-maze-predicament-up;
	while player-progress of P < 25:
		if diaper-box is diaper-dumped:
			if temporaryYesNoBackground is Figure of diaper-maze-predicament-falling, now temporaryYesNoBackground is Figure of diaper-maze-predicament-down;
			if temporaryYesNoBackground is Figure of diaper-maze-predicament-up, now temporaryYesNoBackground is Figure of diaper-maze-predicament-falling;
		[Player turn]
		let D be a random worn diaper;
		say "You [if D is messed]audibly squelch [one of]down the hall[or]along the passageway[or]as you move onwards[in random order][otherwise][one of]keep walking down the hall[or]keep waddling along[or]shuffle and rustle your way forward[in random order][end if] until you reach another junction.";
		increase player-progress of P by 1;
		if player-progress of P < 25:
			if the player is upset about sitting in mess:
				say "You continue to wallow in your own mess.";
				SlowGrossOut 5;
			let T be the substituted form of "Holding in your enema [one of]and walking at the same time is a real challenge[or]is becoming increasingly challenging[stopping],";
			check enema holding with reason T;
			compute school periodic effect of diaper-box;
			follow the mess gross out resolution rule;
			force immediate inventory-focus redraw;
			if the number of entries in LST is 0, add a random number between 1 and 2 to LST; [more spanking or masturbation]
			let R be entry 1 in LST;
			remove R from LST;
			let SCT be a random number between 0 and 1;
			increase SCT by a random number between 0 and 1;
			increase SCT by a random number between 0 and 1;
			if SCT is 0, now SCT is 1;
			reset multiple choice questions;
			if the total squirtable fill of belly > 0, set numerical response 3 to "take a moment to release your enema";
			say "The path to the [one of]left[or]right[purely at random] would be faster, and would let you skip about [bold type][SCT * 4]%[roman type] of the maze. But in the middle of the narrow passageway, you can see ";
			if R is 1: [spanking]
				say "a robotic hand holding a spanking paddle.";
				set numerical response 1 to "take the shortcut, and probably get painfully spanked as you do";
				set numerical response 2 to "take the longer route";
				compute multiple choice question;
				if player-numerical-response is 1:
					say "You bravely venture down the hall, completely unsurprised when the arm springs to life and begins to attack your padded butt with powerful strokes! With your arms holding your box balanced, there's nothing you can do to block the blows.";
					compute strength 6 spanking;
					say "The spanking continues!";
					compute strength 5 spanking;
					say "You keep going, you're almost out of range! But not before the paddle gets few more final hits in!";
					compute strength 4 spanking;
			otherwise if R is 2: [masturbation]
				say "a robotic hand holding a vibrating wand.";
				set numerical response 1 to "take the shortcut, and probably get masturbated as you do";
				set numerical response 2 to "take the longer route";
				compute multiple choice question;
				if player-numerical-response is 1:
					say "You set off down the hall, completely unsurprised when the arm springs to life and pushes the vibrating wand into your crotch, and sets it to maximum power!";
					stimulate vagina from P;
					check for arousal change;
					say "The vibrations continue!";
					stimulate vagina from P;
					check for arousal change;
					say "You keep going, you're almost out of range! But not before the vibrator gets several more seconds of time pressed up against your sensitive [genitals] through your padding!";
					stimulate vagina from P;
					check for arousal change;
			otherwise if R is 3: [enema]
				say "two robotic arms, one of which has a gripping hand, and the other of which ends with a nozzle.";
				set numerical response 1 to "take the shortcut, and probably get given an enema as you do";
				set numerical response 2 to "take the longer route";
				compute multiple choice question;
				if player-numerical-response is 1:
					say "You set off down the hall, and as expected, when you get to the middle, the hand-shaped robot grabs your box-chain and holds you still while the nozzle snakes down inside the waistband of your diaper and into your [asshole], where it begins to pump your belly full of warm water. By the time it has finished, you feel uncomfortably full.";
					Assfill (belly limit / 2) water;
			otherwise if R is 4: [wet block]
				say "a closed gate with a sign that says [']GATE UNLOCKS FOR THOSE WITH WET DIAPERS.['][line break]";
				set numerical response 1 to "take the shortcut[if D is wet] - you're already wet![otherwise] by purposefully pissing yourself[end if]";
				set numerical response 2 to "take the longer route";
				compute multiple choice question;
				if player-numerical-response is 1:
					if D is wet:
						say "The gate unlocks as you walk up to it. That was easy!";
					otherwise:
						say "You release your bladder, and let your warm [urine] soak into the padding of your [MediumDesc of D].";
						UrineSoakUp D by the bladder of the player;
						now the bladder of the player is 0;
						say "After you've finished wetting yourself, the gate unlocks, allowing you through. You make good time, but you're now squelching audibly with every step.";
			otherwise if R is 5: [mess block]
				say "a closed gate with a sign that says [']GATE UNLOCKS FOR THOSE WITH MESSY DIAPERS.['][line break]";
				set numerical response 1 to "take the shortcut[if D is messed] - you're already wallowing in your own mess![otherwise] by purposefully messing yourself[end if]";
				set numerical response 2 to "take the longer route";
				compute multiple choice question;
				if player-numerical-response is 1:
					if D is messed:
						say "The gate unlocks as you walk up to it. That was easy!";
					otherwise:
						say "You try not to think about who might be watching through hidden cameras, as you squat, grunt and push.";
						compute messing;
						say "After you've finished, the gate unlocks, allowing you through. You make good time, but you're now squelching audibly with every step.";
			otherwise if R is 6: [camera]
				say "a robotic hand holding a video camera.";
				set numerical response 1 to "take the shortcut, and probably have footage of your current state uploaded to the internet";
				set numerical response 2 to "take the longer route";
				compute multiple choice question;
				if player-numerical-response is 1:
					say "As expected, as you head down this hallway, the robotic hand moves the camera to get a clear view of all of you, ";
					if diaper-box is diaper-dumped:
						say "but for obvious reasons, struggles to capture your face. ";
					otherwise:
						say "especially your face. ";
					say "There's no doubt that this footage is going straight up on the internet.";
					update appearance level;
					let A be the appearance of the player;
					if the cringe appearance of the player > A, now A is the cringe appearance of the player;
					let T be "you waddling diapered through a maze with countless used diapers suspended above your head";
					if diaper-box is diaper-dumped, now T is "you waddling diapered through a maze with countless used diapers engulfing your head";
					compute digital reputation damage T strength (A) quality 5;
			otherwise if R is 7: [tattoo]
				say "a robotic hand holding a red permanent marker.";
				set numerical response 1 to "take the shortcut, and probably have something humiliating written on your skin";
				set numerical response 2 to "take the longer route";
				compute multiple choice question;
				if player-numerical-response is 1:
					say "As expected, as you reach the middle of this hallway, the robotic hand takes the opportunity to add some semi-permanent writing to your leg.";
					summon dumb baby tattoo;
					focus-consider dumb baby tattoo;
					say tattoo-desc of dumb baby tattoo;
			otherwise if R is 8: [anklecuffs]
				say "a robotic hand holding a pair of anklecuffs.";
				set numerical response 1 to "take the shortcut, and probably have your ankles cuffed";
				set numerical response 2 to "take the longer route";
				compute multiple choice question;
				if player-numerical-response is 1:
					say "You try to avoid it, but it's no use. As you reach the middle of this hallway, the robotic arm skilfully clicks the metal cuffs into place around your ankles. So now not only are you walking with a waddle, but it's a pathetic inching-forward type of waddle! You're going to be making significantly slower progress from here on out.";
					let AK be a random pair of anklecuffs;
					summon AK locked;
					increase rival-turns-per-turn by 1;
			otherwise if R is 9: [glue]
				say "a robotic hand holding a large tube of glue.";
				set numerical response 1 to "take the shortcut, and probably have the glue applied to your clothing";
				set numerical response 2 to "take the longer route";
				compute multiple choice question;
				if player-numerical-response is 1:
					say "You try to avoid it, but it's no use. As you reach the middle of this hallway, the robotic arm begins squirting glue inside all of your clothing! Very little escapes its quick and well-targeted assault, and by the time you escape its reach, pretty much everything you're wearing is now solidly glued to your body.";
					repeat with C running through worn clothing:
						if C is nudism-disabling:
							gluify C;
							now C is predicament-normal;
			otherwise if R is 10: [double diaper]
				let WD be a random off-stage waddle diaper;
				if WD is nothing, now WD is pink-waddle-diaper;
				say "two robotic hands holding an absolutely massive [selfexamineuniquetitle of WD].";
				set numerical response 1 to "take the shortcut, and probably be made to wear [NameDesc of WD]";
				set numerical response 2 to "take the longer route";
				compute multiple choice question;
				if player-numerical-response is 1:
					say "As you reach the middle of the hallway, the arms spring to life, one grabbing your ankles and the other positioning the waddle diaper to allow the first to force your legs inside. It's only when you hear the [']click['] of a padlock that you realise just how screwed you are - the waistband of the massive thing has been locked tight, to prevent you from removing it!";
					blandify and reveal WD;
					DiaperAdd WD;
					if diaper-stack is worn, lock diaper-stack;
			otherwise if R is 12: [high heels]
				now the heel-height of pink girly bow court heels is 3;
				say "two robotic hands holding a [pink girly bow court heels].";
				set numerical response 1 to "take the shortcut, and probably be made to wear [NameDesc of pink girly bow court heels]";
				set numerical response 2 to "take the longer route";
				compute multiple choice question;
				if player-numerical-response is 1:
					say "As you reach the middle of the hallway, the arms spring to life, one grabbing your ankles and the other ripping off your shoes, and forcing your feet into the high heels! So now not only are you walking with a waddle, but it's an awkward, unstable type of waddle! You're going to be making significantly slower progress from here on out.";
					repeat with MJ running through worn shoes:
						only destroy MJ;
					summon pink girly bow court heels uncursed;
					increase rival-turns-per-turn by 1;
			otherwise if R is 13: [sprinklers]
				say "active water sprinklers.";
				set numerical response 1 to "take the shortcut, and have your T-shirt get soaked with water";
				set numerical response 2 to "take the longer route";
				compute multiple choice question;
				if player-numerical-response is 1:
					say "You waddle through the water jets as quickly as you can, but it's no use. By the time you're out the other side, your T-shirt is absolutely soaking with water, and as a result, has gone very sheer.";
					now the water-soak of TS is the soak-limit of TS;
			otherwise if R is 14: [scissors]
				say "two robotic hands, one holding a pair of scissors.";
				set numerical response 1 to "take the shortcut, and probably have adjustments made to your outfit";
				set numerical response 2 to "take the longer route";
				compute multiple choice question;
				if player-numerical-response is 1:
					say "You waddle towards the arms, and as soon as you're in range, they launch out and grab at your T-shirt. The empty hand pulls the fabric away from one of your nipples, and the hand with the scissors quickly cuts away a rough circle of the cotton material. Before you can even react, they have done the same to the other side. Now the shirt is ripped in front of both of your nipples, completely exposing them! You look completely ridiculous!";
					now TS is top-ripped;
			otherwise if R is 15: [collar]
				say "a robotic hand holding a pink collar.";
				set numerical response 1 to "take the shortcut, and probably gain a new collar";
				set numerical response 2 to "take the longer route";
				compute multiple choice question;
				if player-numerical-response is 1:
					say "You waddle down the passageway, and as soon as you're in range, the robotic arm carries the collar over to your neck and locks it on. You're now wearing a pink heart collar!";
					summon heart-collar locked;
			otherwise:
				say "[paragraph break]Error: Please report bug; R was [R].";
			if player-numerical-response is 1:
				say "Thanks to going down that hallway, you've saved a lot of time.";
				increase the player-progress of P by SCT;
			otherwise if player-numerical-response is 2:
				say "You take the longer route.";
			otherwise if player-numerical-response is 3:
				decrease the player-progress of P by 1;
				say "You push with your rectal muscles.";
				now voluntarySquatting is 1;
				AssSquirt;
		[Rival turn]
		let TSB be the total squirtable fill of belly;
		if TSB > 0, increase rival-turns-per-turn by 1; [if holding enema, rival gets more turns]
		repeat with ZZZ running from 1 to rival-turns-per-turn:
			if player-progress of P < 25 and rival-progress of P < 25:
				increase the rival-progress of P by a random number between 0 and 1;
		if player-progress of P < 25 and rival-progress of P < 25 and a random number between 0 and 8 < the dedication of team-predicament-partner + the player-progress of P - the rival-progress of P:
			say "You hear [NameDesc of team-predicament-partner] squealing with dismay from another part of the maze, as something happens to [him of team-predicament-partner]. That probably means [he of team-predicament-partner] took [one of]a[or]another[stopping] shortcut!";
			increase the rival-progress of P by a random number between 1 and 3;
		if TSB > 0, decrease rival-turns-per-turn by 1; [balance out increased rival turns from holding enema]
		[Update]
		if player-progress of P < 25, say "[line break]Looking at the handy giant map screen, you can see that you are about [bold type][player-progress of P * 4]%[roman type] towards one exit[if rival-progress of P < 25] and [NameDesc of team-predicament-partner] is about [bold type][rival-progress of P * 4]%[roman type] towards [his of team-predicament-partner] nearest exit[end if].[paragraph break]";
		if the rival-progress of P >= 25 and diaper-box is not diaper-dumped:
			say "[bold type]Suddenly, and without warning, the barrier holding the used diapers away from your head opens up! [roman type]What feels like a hundred nasty soiled nappies tumble down, engulfing your face.[line break][variable custom style]Noooo! GROSS![roman type][line break][BigNameDesc of team-predicament-partner] must have escaped the maze before you!";
			now diaper-box is diaper-dumped;
		update appearance level;
	say "Daylight shines down from the alleyway in front of you. [bold type]You've reached the exit! [roman type]You're free!";
	if rival-progress of P < 25, say "[speech style of team-predicament-partner]'EEK!'[roman type][line break]You can hear [NameDesc of team-predicament-partner][']s scream of panic as [his of team-predicament-partner] diaper box presumably opens, engulfing [his of team-predicament-partner] face in the nasty nappies.";
	repeat with C running through worn wearthings:
		unless C is diaper-box, now C is predicament-fixed;
	now temporaryYesNoBackground is figure of small image.

An all time based rule (this is the diaper maze cutscene rule):
	if current-predicament is diaper-maze-predicament and the player is in a park room:
		if diaper-box is diaper-dumped, cutshow Figure of diaper-maze-predicament-park-down;
		otherwise cutshow Figure of diaper-maze-predicament-park-up.



business-briefcase-predicament is a predicament. The printed name of business-briefcase-predicament is "sybian". business-briefcase-predicament can be orgasm-announced. business-briefcase-predicament can be orgasm-caught. business-briefcase-predicament can be squeezy-bottle-drunk. business-briefcase-predicament can be predicament-failed. business-briefcase-predicament can be ass-to-mouth-agreed.
Definition: business-briefcase-predicament is appropriate:
	if the player is not possessing a vagina and the player is not possessing a penis, decide no;
	if diaper quest is 0 and the player is not a february 2023 top donator, decide no;
	if diaper quest is 1 and the player is not a february 2023 diaper donator, decide no;
	if the rank of the player > 1 and the rank of the player < 4, decide yes;
	decide no.
Figure of business briefcase predicament is the file "Special/Cutscene/cutscene-business-briefcase-predicament1.jpg".
Figure of business briefcase predicament diaper is the file "Special/Cutscene/cutscene-business-briefcase-predicament2.jpg".
Figure of business briefcase predicament diaper messed is the file "Special/Cutscene/cutscene-business-briefcase-predicament3.jpg".
Figure of business briefcase predicament commando is the file "Special/Cutscene/cutscene-business-briefcase-predicament4.jpg".
Figure of business briefcase predicament pants is the file "Special/Cutscene/cutscene-business-briefcase-predicament5.jpg".
[Figure of business briefcase predicament pants messed is the file "Special/Cutscene/cutscene-business-briefcase-predicament6.jpg".]
To set up bystanders for (P - business-briefcase-predicament):
	set up 14 bystanders; [now we remove any that don't work very well with the content of the predicament]
	if couple-bystander is on-stage, remove couple-bystander from play;
	if bum-bystander is on-stage, remove bum-bystander from play.
To say PredicamentDescription of (P - business-briefcase-predicament):
	say "I'm currently in an Extra Credit lesson where I need to get back to my home while my briefcase periodically spits out business cards with a dangerous QR code on them that will risk me being exposed online. But I'm wearing a very short dress, and special stockings that shock me if I try to bend my knees, so when I bend over to pick up a business card, I expose what's underneath my dress.".

A business-card is a kind of thing. There are 5 business-cards. The printed name of a business-card is "[TQlink of item described]business card[shortcut-desc][TQxlink of item described][verb-desc of item described]". Understand "business", "card" as a business-card.
Figure of business card is the file "Env/School/businesscard1.jpg".
To say ExamineDesc of (F - a business-card):
	say "A small business card with a photo of your face... And a QR code that links to a horrendous video you recorded exposing you as a dirty exhibitionist pervert, and accompanied by all your personal information.".
To decide which figure-name is the examine-image of (F - a business-card):
	decide on figure of business card.
Report taking a business-card:
	say "You scrunch up the card.";
	destroy the noun.
When play begins:
	let cardShortcutCount be 1;
	repeat with C running through business-cards:
		now the text-shortcut of C is substituted form of "bc[cardShortcutCount]";
		increase cardShortcutCount by 1.
Report taking when current-predicament is business-briefcase-predicament: [we do this in the report phase so that the uses arms have already been properly allocated]
	if the player is in a predicament room and pinstripe business dress is worn and the player is upright and the player is not in Predicament01 and the player is not in Toilet01 and the player is not in Toilet02 and the player is not in Predicament20:
		say "You bend over at the waist, exposing yourself to the world, in order to pick up [NameDesc of the noun].";
		let K be a random worn knickers;
		if K is diaper:
			if K is messed:
				cutshow Figure of business briefcase predicament diaper messed;
			otherwise:
				cutshow Figure of business briefcase predicament diaper;
		otherwise if K is knickers:
			cutshow Figure of business briefcase predicament pants;
		otherwise:
			cutshow Figure of business briefcase predicament commando;
		now pinstripe business dress is crotch-displaced;
		update appearance level;
		repeat with M running through bystanders in the location of the player:
			if M is not interested, check perception of M;
			otherwise check disapproval of M;
		now pinstripe business dress is crotch-in-place;
		update appearance level;
	if the noun is business-card:
		say "You quickly crumple up the card into a small ball.";
		destroy the noun.


To execute (P - business-briefcase-predicament):
	display entire map;
	let C be a random lacy stockings;
	summon C uncursed;
	summon leather-peep-toe-heels uncursed;
	now the heel-height of leather-peep-toe-heels is 2;
	if diaper quest is 1:
		summon plain-small-diaper uncursed;
		[if diaper messing >= 4, now suppository is 5;
		otherwise now the bladder of the player is 10;]
	otherwise:
		blandify and reveal white-thong;
		now white-thong is in Toilet02;
		now white-thong is predicament-fixed;
		if a random number between 1 and 2 is 1, gluify white-thong;
	now house-key is in Toilet01;
	now refractoryperiod is 0;
	let F be vagina;
	if the player is not possessing a vagina, now F is penis;
	now P is penetrating F;
	now the stance of the player is 1;
	now the player is in Predicament01;
	say "Suddenly you find yourself in a small unused warehouse, kneeling over a Sybian. You are wearing black peep-toe heels and brown nylon stockings, and [if diaper quest is 1]a small plain white diaper, and [end if]nothing else. Your legs are tightly bound to the sides of the Sybian by strong metal restraints - there's no way you're getting away from this thing until it releases you. [if diaper quest is 1]You feel a strong, desperate need to use the toilet. [end if]The only other things in the room are a large video camera, pointed towards you on a tripod, and an autocue screen.[paragraph break]A robotic voice issues from a speaker in the wall behind you.[line break][first custom style]'WELCOME TO THE [']EXTRA CREDIT['] CLASS. [PredicamentRewardExplanation]TO EARN THIS TROPHY, YOU MUST FIRST READ THE FULL TRANSCRIPT FROM THE AUTOCUE. MAKE SURE TO SPEAK CLEARLY SO THAT THE SPEECH-TO-TEXT SOFTWARE SUCCESSFULLY VALIDATES YOUR WORDS. YOU WILL THEN BE RELEASED FROM THE SYBIAN, AND FURTHER INSTRUCTIONS WILL BE PROVIDED. FURTHERMORE, YOU MUST ANNOUNCE ANY ORGASMS BY DECLARING [']I[']M CUMMING! I'M A DISGUSTING PERVERT WHO GETS OFF ON [if diaper quest is 1]WEARING DIAPERS AND [end if]BEING EXPOSED ONLINE.['] FAILURE TO DO SO WILL RESULT IN A PENALTY.'[line break][PredicamentRewardExplanationReaction][paragraph break]And then the Sybian roars into life, treating your [variable F] to the sensation of several thousand rotations per minute.[line break][variable custom style]As much as you want to consider resisting, it's extremely clear that there's no way you are getting out of this without obeying the instructions. So, gulping, you start reading the words out loud as they appear on the prompter.[paragraph break][variable custom style]'My name is [OriginalNameBimbo] and I am a young slut from Washington. I have a fetish for being exposed and h-humiliated on the Internet. All my personal details - my full name, my date of birth, my contact details including my address, are available on this web page just below the video you're watching. Please, if you are watching this, I beg you to s-share the link to the world. Post it everywhere you can. Expose me as a masochistic [if diaper quest is 1]diaper wearing [end if]whore to the world. The more views this gets, the more my l-life will be ruined, and the h-happier I will be.'[roman type][paragraph break][if the player is not shameless]Despite being largely horrified by what you're being made to say[otherwise]Meanwhile[end if], the sybian works its powerful magic, and you feel it about to wrack an orgasm from your body. Do you announce your orgasm as instructed?";
	now the arousal of the player is 10000;
	if the player is bimbo consenting:
		vaginally orgasm shamefully;
		say "[variable custom style]'I[']m cumming! I'm a disgusting pervert who gets off on [if diaper quest is 1]wearing diapers and [end if]being exposed online!'[roman type][line break][strongHumiliateReflect]";
		now P is orgasm-announced;
	otherwise:
		vaginally orgasm shamefully;
		say "You grit your teeth and try to hide the fact that you just had an orgasm. It's impossible to tell if you were successful, but no immediate apparent [']penalty['] appears to happen.";
		unless the player is getting lucky, now P is orgasm-caught;
	now refractoryperiod is 0;
	say "After that, the autocue just keeps going, and there's nothing to do but continue to read what it says.[paragraph break][variable custom style]'[if diaper quest is 1]I don't just like wearing diapers, I like using them too. In fact, I can't wait to use this one[otherwise]I'm such a shameless exhibitionist! You wouldn't believe how slutty the outfit is that I'm going to be wearing[end if] while I'm out on my walk in the park. You see, right after making this video, I'm going to go for a walk in the park outside my house, and drop little business cards with links to this web page all over the park. Perhaps you are the lucky person who found one of my cards? If so, please, it's up to you to be the first to spread it around. Make me go viral! Please, punish me for being such a dirty slut! Ruin my life! I want it so bad. And if you're someone who's into degrading and abusing little naughty sluts like me, why not come pay me a visit? Threaten to show my family this video if I don't obey you, and I'll probably do whatever you say. And don't worry, I've made sure to get the website owners to promise to update my details below if they ever change. So you'll always be able to find me. I'll be the world's public slut for the rest of my life. All you have to do, is share my link around...'[roman type][paragraph break]That appears to be the end of it. The locks around the Sybian unlock, and you could stand up if you want. But now you're really horny again... Really close to the edge. So close to a second orgasm. Do you let the Sybian finish you off a second time?";
	now the arousal of the player is 10000;
	if the player is consenting:
		say "Do you announce your orgasm as instructed?";
		if the player is bimbo consenting:
			vaginally orgasm shamefully;
			say "[variable custom style]'I[']m cumming! I'm a disgusting pervert who gets off on [if diaper quest is 1]wearing diapers and [end if]being exposed online!'[roman type][line break][strongHumiliateReflect]";
			now P is orgasm-announced;
		otherwise:
			vaginally orgasm shamefully;
			say "You grit your teeth and try to hide the fact that you just had an orgasm. It's impossible to tell if you were successful, but no immediate apparent [']penalty['] appears to happen.";
			unless the player is getting lucky, now P is orgasm-caught;
	say "You crawl off the sybian, panting, giving yourself a chance to recover your breath. A minute or two later, when you're finally starting to feel less exhausted from the ordeal, you see two things being lowered down on robotic arms until they are only 6 feet above you. One is a slutty pinstripe dress, and the other is a small briefcase. And then the robotic voice speaks to you again.[line break][first custom style]'PLEASE PUT ON THE DRESS AND TAKE THE BRIEFCASE, OR THE VIDEO WILL BE SHARED TO SEVERAL POPULAR WEBSITES.'[roman type][line break]Again, you have little choice but to stand up, reach for the items, and obey the voice.";
	now the fatigue of the player is 0;
	summon pinstripe business dress uncursed;
	summon briefcase uncursed;
	now the stance of the player is 0;
	if P is orgasm-caught and diaper quest is 1:
		now squeezy-bottle is carried by the player;
	say "Once you are wearing the dress and holding the briefcase, it speaks again.[line break][first custom style]'THE FOLLOWING INFORMATION IS NOW AVAILABLE TO YOU:[line break]1) YOUR HEELS HAVE SPECIAL SENSORS UNDER YOUR SOLES. IF THEY ARE REMOVED, THE VIDEO LINK WILL BE AUTOMATICALLY SHARED WIDELY ONLINE.[line break]2) YOUR STOCKINGS HAVE SPECIAL SENSORS BEHIND YOUR KNEES. [bold type]WHILE YOU ARE OUTSIDE, [first custom style]IF YOUR KNEES BEND MORE THAN 25 DEGREES, THE VIDEO LINK WILL BE AUTOMATICALLY SHARED WIDELY ONLINE.[line break]3) YOUR BRIEFCASE HAS TWO HIDDEN BUTTONS ON THE HANDLE. IF THESE ARE NOT HELD DOWN ONCE YOU ARE OUTSIDE OF THIS ROOM, THE VIDEO LINK WILL BE AUTOMATICALLY SHARED WIDELY ONLINE.[line break]4) ONCE YOU ARRIVE HOME, RULES 1, 2 AND 3 WILL BE DEACTIVATED.[line break]5) [if diaper quest is 0]THERE IS A PAIR OF UNDERWEAR AVAILABLE IN THE WOMEN'S PUBLIC TOILETS[otherwise if diaper messing >= 4]AS YOU MAY HAVE NOTICED, WE HAVE GIVEN YOU A FAST-ACTING LAXATIVE. THERE IS A CHANGING STATION IN THE WOMEN'S PUBLIC TOILETS[otherwise]AS YOU MAY HAVE NOTICED, WE HAVE ENSURED THAT YOU ARE EXTREMELY HYDRATED[end if].[line break]6) THE KEY TO YOUR HOUSE IS IN THE MEN'S PUBLIC TOILETS[if P is orgasm-caught and diaper quest is 0].[line break]7) AS YOU FAILED TO ANNOUNCE YOUR ORGASM, THERE IS AN ADDITIONAL RULE. IF YOU ENTER THE MEN'S PUBLIC TOILETS, THE VIDEO LINK WILL BE AUTOMATICALLY SHARED WIDELY ONLINE. HOWEVER THERE IS A SMALL HOLE IN THE WALL BETWEEN THE MEN'S AND WOMEN'S TOILETS, SO YOU MAY BE ABLE TO CONVINCE SOMEONE IN THE MEN'S TO PASS YOU THE KEY[otherwise if P is orgasm-caught].[line break]7) AS YOU FAILED TO ANNOUNCE YOUR ORGASM, THERE IS AN ADDITIONAL RULE. IF YOU LEAVE HERE WITHOUT DRINKING THE ENTIRETY OF THIS BOTTLE, THE VIDEO LINK WILL BE AUTOMATICALLY SHARED WIDELY ONLINE[end if].'[roman type][line break][if P is orgasm-caught and diaper quest is 1]A [squeezy-bottle] is lowered into your free hand by a third robotic arm. [end if]You inspect the briefcase handle, and find the buttons hidden within. You carefully hold them down with your fingers.";
	dislodge P;
	if diaper quest is 0 and the player is possessing a penis and penis is at least partially exposed:
		blandify and reveal plastic-cage;
		now plastic-cage is in Predicament01;
		gluify plastic-cage;
		now plastic-cage is predicament-fixed;
		say "[bold type]You notice a chastity cage on the ground by the exit. [roman type]Looking down at your [ShortDesc of penis], you can see that it's dangling below your dress, and is therefore visible. But if you were to wear the cage, it would make your penis much shorter, allowing it to be fully hidden by your dress. But... On closer inspection... The inside of the cage seems to be coated in some sort of glue... So it may be a long while before you can take it off again![line break][variable custom style]Do I let my [player-penis] remain on display... Or do I put myself in chastity?![roman type][line break]";
	[Video is already online, just never viewed]
	if the number of blank rows in the Table of Published Disgraces > 0:
		choose a blank row in Table of Published Disgraces;
		now the content entry is the substituted form of "a high quality video showing you riding a Sybian, degrading yourself and claiming that you want this video to go viral and ruin your life, [if P is orgasm-announced]and loudly announcing when you orgasm, [end if]is live on";
		now the published entry is the substituted form of "www.expose.me";
		now the severity entry is 0;
		now the popularity entry is 0;
		now the timestamp entry is 0;
		now the lastwitnessed entry is 0;
		now the deletedtime entry is -1;
		now the viewsfuzz entry is 0.

Report going when current-predicament is business-briefcase-predicament:
	if business-briefcase-predicament is not predicament-failed:
		if the player is in Predicament20:
			let N be the number of on-stage business-cards;
			say "You've made it home, but at what cost? You left [if N is 1]a business card[otherwise][N] business cards[end if] somewhere out there, and whoever finds each one has a real chance of following through on the instructions and spreading it around...";
			repeat with C running through on-stage business-cards:
				if the player is getting unlucky,	make video go viral;
		if business-briefcase-predicament is orgasm-caught and diaper quest is 0 and the player is in Toilet01:
			say "You hear angry beeping coming from [NameDesc of briefcase], and you know that you have failed the task by entering the men's toilets. The website hosting that humiliating, life-ruining video is being spread around the Internet right now.[line break][variable custom style][if the player is shameless]Well at least I don't need to bother with this stupid challenge any more.[otherwise]No no no no noooooooooooooooo![end if][roman type][line break]";
			make video go viral;
		if business-briefcase-predicament is not squeezy-bottle-drunk and the player is in Predicament02 and (squeezy-bottle is held or squeezy-bottle is in Predicament01):
			say "You hear angry beeping coming from [NameDesc of briefcase], and you know that you have failed the task by failing to drink the contents of [NameDesc of squeezy-bottle] before leaving. The website hosting that humiliating, life-ruining video is being spread around the Internet right now.[line break][variable custom style][if the player is shameless]Well at least I don't need to bother with this stupid challenge any more.[otherwise]No no no no noooooooooooooooo![end if][roman type][line break]";
			make video go viral.

Check going when current-predicament is business-briefcase-predicament:
	if business-briefcase-predicament is not predicament-failed and business-briefcase-predicament is not squeezy-bottle-drunk and the player is in Predicament01 and (squeezy-bottle is held or squeezy-bottle is in Predicament01):
		say "If you don't drink the contents of [NameDesc of squeezy-bottle] before leaving, you the video will be shared online. Are you sure you want to leave right now?";
		unless the player is consenting, say "Action cancelled." instead.

Report taking off when current-predicament is business-briefcase-predicament:
	if business-briefcase-predicament is not predicament-failed and the player is in a predicament room and the noun is leather-peep-toe-heels:
		say "You hear angry beeping coming from [NameDesc of briefcase], and you know that you have failed the task by removing your high heels. The website hosting that humiliating, life-ruining video is being spread around the Internet right now.[line break][variable custom style][if the player is shameless]Well at least I don't need to bother with this stupid challenge any more.[otherwise]No no no no noooooooooooooooo![end if][roman type][line break]";
		make video go viral.

To make video go viral:
	now business-briefcase-predicament is predicament-failed;
	choose row with a published of "www.expose.me" in Table of Published Disgraces;
	now the severity entry is 3;
	now the popularity entry is 47;
	now the timestamp entry is earnings;
	now the deletedtime entry is 0.

To make video go gloryhole viral:
	let M be a random ultimate-lesson-actor;
	say "You hear a phone beeping, and then you hear the sounds of the video you recorded a couple of minutes ago being played out loud on [his of M] phone.[line break][variable custom style]'Please don't listen to what I said then, I was under duress!'[roman type][line break]You call after [him of M], but you can hear the sound of [his of M] phone fading away as [he of M] leaves the room.";
	make video go viral.

An all later time based rule:
	if current-predicament is business-briefcase-predicament:
		if diaper quest is 0:
			let M be a random ultimate-lesson-actor in Toilet02;
			if M is a thing:
				if M is not penetrating a body part:
					if the player is in Toilet02, say "You hear [NameDesc of M] do [his of M] business and then leave.";
					finally destroy M;
					zero focus stuff;
			otherwise if the player is in Toilet02:
				if house-key is in Toilet01:
					if business-briefcase-predicament is not predicament-failed:
						if a random number between 1 and 3 is 1:
							let M be a random ultimate-lesson-actor;
							set up M;
							now M is in Toilet02;
							now M is not interested;
							say "[bold type]Through the hole, you can hear someone enter the men's bathroom.[roman type][line break]";
					otherwise:
						say "[one of][variable custom style]The video has already been shared far and wide. I might as well just go pick up the key in the men's toilets myself.[roman type][line break][or][or][cycling]";
		if business-briefcase-predicament is not predicament-failed:
			if the player is in a predicament room and the player is not in Predicament01 and the player is not in Toilet01 and the player is not in Toilet02 and the player is not in Predicament20:
				if the player is prone:
					say "You hear angry beeping coming from [NameDesc of briefcase], and you know that you have failed the task by bending your knees too far while being outside. The website hosting that humiliating, life-ruining video is being spread around the Internet right now.[line break][variable custom style][if the player is shameless]Well at least I don't need to bother with this stupid challenge any more.[otherwise]No no no no noooooooooooooooo![end if][roman type][line break]";
					make video go viral;
				otherwise if briefcase is worn and there is an off-stage business-card:
					increase the charge of briefcase by 1 + the number of bystanders in the location of the player;
					if the charge of briefcase > a random number between 1 and 10:
						now the charge of briefcase is 0;
						let C be a random off-stage business-card;
						now C is in the location of the player;
						say "[bold type]Suddenly, [one of]a[or]another[stopping] business card slips out of the briefcase, and onto the ground![roman type][line break][one of][variable custom style]If I don't pick it up, someone will find it, and follow the QR code to the website![roman type][line break][or][stopping]";
						cutshow Figure of business briefcase predicament;
				repeat with M running through on-stage bystanders:
					let C be a random business-card in the location of M;
					if C is a thing:
						if M is in the location of the player:
							if M is interested and the player is getting unlucky:
								say "[speech style of M]'Oh, what's this?'[roman type][line break][BigNameDesc of M] has spotted the card and picked it up before you had a chance to stop [him of M]! [GotUnluckyFlav]";
								now M is carrying C;
								reset multiple choice questions;
								set numerical response 1 to "'Sorry, that wasn't meant for you! Please give it back!'";
								set numerical response 2 to "Let [him of M] take it, and just hope [he of M] doesn't follow the instructions if and when [he of M] watches the video.";
								compute multiple choice question;
								if player-numerical-response is 1:
									if the player is getting lucky:
										say "[speech style of M]'Hmm? Oh, okay.'[roman type][line break][big he of M] gives it straight back to you! [GotLuckyFlav]You quickly scrunch it up.";
										destroy C;
									otherwise:
										say "[speech style of M]'Why? Where would the QR code take me?'[roman type][line break]";
										reset multiple choice questions;
										set numerical response 1 to "'That's not important. Just give it back!'";
										set numerical response 2 to "'It's something really awful, that someone is using to blackmail me. Please, just give it back!'";
										compute multiple choice question;
										if player-numerical-response > 0: [currently all outcomes. eventually I might add some sexual favour demands]
											say "[BigNameDesc of M] looks at you sceptically.";
											[if M is male:
												say "[speech style of M]'Sure... If you show me your tits first.'[roman type][line break]";
												reset multiple choice questions;
												set numerical response 1 to "'Ugh, fine!'";
												set numerical response 2 to "Let [him of M] take it, and just hope [he of M] doesn't follow the instructions if and when [he of M] watches the video.";
												compute multiple choice question;]
											if a random number between 1 and 1 is 1:
												say "[speech style of M]'Let's see if you're telling the truth.'[roman type][line break][BigNameDesc of M] uses [his of M] phone to scan the code, and is taken to your website. [big he of M] taps on the video, which starts playing loudly, you hear your own voice degrading yourself.[line break][variable custom style]'Please, if you are watching this, I beg you to s-share the link to the world. Post it everywhere you can. Expose me as a masochistic [if diaper quest is 1]diaper wearing [end if]whore to the world.'[line break][speech style of M]'Holy shit...'[roman type][line break][strongHumiliateReflect]";
												if the player is getting unlucky:
													say "[BigNameDesc of M] begins tapping away.[line break][speech style of M]'This is going straight onto my Discord server.'[roman type][line break][GotUnluckyFlav][variable custom style]'No, please no!'[roman type][line break]You beg, but it's too late. The link is out there. You have failed.";
													make video go viral;
												otherwise if the player is getting lucky:
													say "[BigNameDesc of M] gives you the card straight back, and closes the website.[line break][speech style of M]'I don't want anything to do with this.'[roman type][line break][GotLuckyFlav]You immediately crumple the card up.";
													destroy C;
												otherwise:
													say "[BigNameDesc of M] starts quickly backing away from you.[line break][speech style of M]'You're a freak. Don't come near me.'[roman type][line break][BigNamedesc of M] keeps the card, and leaves you, faster than you can chase after [him of M] thanks to your stockings preventing you from bending your knees properly. You will just have to hope that [he of M] never decides to share the link with anybody else...";
													try M going south;
						otherwise if a random number between 1 and 5 is 1:
							now M is carrying C.





An arena room is a kind of predicament room. The description of an arena room is "Part of a large indoor arena".
Definition: an arena room is within vision: decide yes.
Arena01 is an arena room. The grid position of Arena01 is <6,16,8>. The printed name of Arena01 is "the north-west of the arena".
Arena02 is an arena room. The grid position of Arena02 is <6,17,8>. Arena02 is east of Arena01. The printed name of Arena02 is "the north of the arena".
Arena03 is an arena room. The grid position of Arena03 is <6,18,8>. Arena03 is east of Arena02. The printed name of Arena03 is "the north-east of the arena".
Arena04 is an arena room. The grid position of Arena04 is <6,16,7>. Arena04 is south of Arena01. The printed name of Arena04 is "the west of the arena".
Arena05 is an arena room. The grid position of Arena05 is <6,17,7>. Arena05 is east of Arena04. Arena05 is south of Arena02. The printed name of Arena05 is "the centre of the arena".
Arena06 is an arena room. The grid position of Arena06 is <6,18,7>. Arena06 is east of Arena05. Arena06 is south of Arena03. The printed name of Arena06 is "the east of the arena".
Arena07 is an arena room. The grid position of Arena07 is <6,16,6>. Arena07 is south of Arena04. The printed name of Arena07 is "the south-west of the arena".
Arena08 is an arena room. The grid position of Arena08 is <6,17,6>. Arena08 is east of Arena07. Arena08 is south of Arena05. The printed name of Arena08 is "the south of the arena".
Arena09 is an arena room. The grid position of Arena09 is <6,18,6>. Arena09 is east of Arena08. Arena09 is south of Arena06. The printed name of Arena09 is "the south-east of the arena".

Arena01, Arena02, Arena03, Arena04, Arena05, Arena06, Arena07, Arena08, Arena09 are in the School.

A person has a number called tempInt1.
A person has a number called tempInt2.
A person has a number called tempInt3.

balloon-kart-predicament is a predicament. balloon-kart-predicament can be humped. The printed name of balloon-kart-predicament is "kart vibrator".
balloon-kart-predicament has a person called rival1. balloon-kart-predicament has a person called rival2. balloon-kart-predicament has a person called rival3. The text-shortcut of balloon-kart-predicament is "bkp".

Definition: balloon-kart-predicament is appropriate:
	if diaper quest is 1 or the player is not a may 2023 top donator, decide no;
	if the rank of the player < 3, decide no;
	if the graphics-window is g-unpresent, decide no;
	if bukkake fetish is 1 or watersports fetish is 1, decide yes;
	decide no.

Figure of balloon kart predicament 3 balloons female is the file "Special/Cutscene/cutscene-predicament-balloon-kart1a.jpg".
Figure of balloon kart predicament 3 balloons male is the file "Special/Cutscene/cutscene-predicament-balloon-kart1b.jpg".
Figure of balloon kart predicament 2 balloons female is the file "Special/Cutscene/cutscene-predicament-balloon-kart2a.jpg".
Figure of balloon kart predicament 2 balloons male is the file "Special/Cutscene/cutscene-predicament-balloon-kart2b.jpg".
Figure of balloon kart predicament 1 balloon female is the file "Special/Cutscene/cutscene-predicament-balloon-kart3a.jpg".
Figure of balloon kart predicament 1 balloon male is the file "Special/Cutscene/cutscene-predicament-balloon-kart3b.jpg".
Figure of balloon kart predicament 0 balloons female is the file "Special/Cutscene/cutscene-predicament-balloon-kart4a.jpg".
Figure of balloon kart predicament 0 balloons male is the file "Special/Cutscene/cutscene-predicament-balloon-kart4b.jpg".

To decide which figure-name is the examine-image of (P - balloon-kart-predicament):
	if the player is possessing a vagina:
		if tempInt1 of the player >= 3, decide on figure of balloon kart predicament 3 balloons female;
		if tempInt1 of the player is 2, decide on figure of balloon kart predicament 2 balloons female;
		if tempInt1 of the player is 1, decide on figure of balloon kart predicament 1 balloon female;
		decide on figure of balloon kart predicament 0 balloons female;
	otherwise:
		if tempInt1 of the player >= 3, decide on figure of balloon kart predicament 3 balloons male;
		if tempInt1 of the player is 2, decide on figure of balloon kart predicament 2 balloons male;
		if tempInt1 of the player is 1, decide on figure of balloon kart predicament 1 balloon male;
		decide on figure of balloon kart predicament 0 balloons male.

To decide which number is the girth of (P - balloon-kart-predicament):
	decide on 5.
To decide which number is the stimulation of (T - balloon-kart-predicament) on (F - a body part):
	if T is humped, decide on 3;
	decide on 1.
To execute (BKP - balloon-kart-predicament):
	let old-map-zoom be map-zoom;
	now map-zoom is 0;
	summon sporty crop top uncursed;
	let LST be the list of on-stage students;
	sort LST in random order;
	let ST1 be entry 1 in LST;
	let ST2 be entry 2 in LST;
	let ST3 be entry 3 in LST;
	now the rival1 of BKP is ST1; [for map window]
	now the rival2 of BKP is ST2; [for map window]
	now the rival3 of BKP is ST3; [for map window]
	let LP be a list of people;
	add ST1 to LP;
	add ST2 to LP;
	add ST3 to LP;
	add yourself to LP;
	now ST1 is in Arena03;
	now the travel-direction of ST1 is west;
	now ST2 is in Arena07;
	now the travel-direction of ST2 is east;
	now ST3 is in Arena09;
	now the travel-direction of ST3 is west;
	now the travel-direction of the player is east;
	repeat with P running through LP:
		now the tempInt1 of P is 3; [tempInt1 is number of balloons]
		now the tempInt2 of P is 0; [tempInt2 is the number of balloons popped]
		now the tempInt3 of P is 0; [1: recently balloon popped; 2: just orgasmed]
		if P is student:
			now the lessonInt1 of P is 0; [arousal]
			now the lessonInt2 of P is 0; [soreness]
		now the travel-opposite of P is the opposite-direction of the travel-direction of P;
	now the player is in Arena01;
	now the stance of the player is 1;
	let F be asshole;
	if the player is possessing a vagina, now F is vagina;
	now BKP is penetrating F;
	let L be semen;
	if bukkake fetish is 0, now L is urine;
	say "Suddenly you find yourself in a large indoor arena. You're strapped down on some kind of motorised platform that reminds you of a robot vacuum cleaner, but larger. You are impaled on a large studded vibrator, which is shoved so far up your [variable F] that you can see it making a visible dent in your stomach. [if F is vagina]There are also vibrating anal beads in your [asshole]. [end if]You quickly raise your hips as far as you can, which isn't far, to relieve some of the painful pressure on your [if F is vagina]cervix[otherwise]rectum[end if].[paragraph break]Three water balloons are suspended above your head on a metal rail. At the front of your weird [']gokart['], a spike on a pole, at the same height as the balloons, points menacingly forwards. A quick glance around reveals that [ST1], [ST2] and [ST3] are bound on identical [']karts['], in the other three corners of the arena.[line break][variable custom style]Why do I get the feeling that these balloons aren't filled with water...[paragraph break]A robotic voice issues from a speaker in the wall behind you.[line break][first custom style]'WELCOME TO THE [']EXTRA CREDIT['] CLASS. [PredicamentRewardExplanation]TO EARN THIS TROPHY, YOU MUST SIMPLY RETURN HOME. BUT FIRST YOU WILL NEED TO EARN RELEASE FROM YOUR KARTS. TURN BY LEANING LEFT AND RIGHT. MOVE FORWARD BY RAPIDLY HUMPING THE DILDO AS FAST AS YOU CAN. BURST THREE RIVAL BALLOONS TO EARN RELEASE. THE FIRST TO EARN RELEASE WILL BE ABLE TO CLAIM A PAIR OF SHORTS TO WEAR HOME. WHEN A PLAYER IS RELEASED, THE OTHER PLAYERS SUFFER A PENALTY. YOUR KARTS ARE NOW ACTIVE. GO.'[line break][PredicamentRewardExplanationReaction][paragraph break]";
	now temporaryYesNoBackground is examine-image of BKP;
	reset multiple choice questions;
	set numerical response 1 to "'This is wrong! We shouldn't be letting them trick us into turning on each other!'";
	set numerical response 2 to "'Um... Best of luck, everyone. I'm not going to hold back!'";
	set numerical response 3 to "'You bitches are going down!'";
	compute multiple choice question;
	repeat with P running through LP:
		if P is student:
			let V be the vindictiveness of P - player-numerical-response;
			if V > 0:
				say "[BigNameDesc of P] [one of]rolls [his of P] eyes[or]snorts derisively[cycling].";
			otherwise if V is 0 or player-numerical-response is 1:
				say "[BigNameDesc of P] bites [his of P] lip, but doesn't reply.";
				if player-numerical-response is 3, HappinessDown P;
			otherwise:
				say "[BigNameDesc of P] shivers. You feel like you've successfully intimidated [him of P].";
				if player-numerical-response is 3, HappinessDown P by 2;
				otherwise HappinessDown P;
				now the lessonInt2 of P is 6;
	now temporaryYesNoBackground is Figure of no-image-yet; [forces normal map to be drawn during multiple choice]
	while the tempInt2 of the player < 3:
		now BKP is in the location of the player;
		sort LP in random order;
		repeat with P running through LP:
			if P is a student and the tempInt2 of the player < 3 and the tempInt2 of P < 3:
				if the tempInt3 of P > 0:
					say "[if the tempInt3 of P is 2][BigNameDesc of P] gasps as [he of P] recovers from [his of P] orgasm[otherwise][BigNameDesc of P] is blinded by [variable L]! [big he of P] has to shake [his of P] head to try and get it out [his of P] eyes[end if].";
				otherwise:
					let R be the location of P;
					let TD be the travel-direction of P;
					let forward-priority be 0;
					let forward-ability be 0;
					repeat with D running through the Nviables of R:
						let T be the room D from R;
						if D is TD, now forward-ability is 1; [we can go forward if we want]
						repeat with M running through people in T:
							if forward-priority is 0 and D is not TD and the tempInt1 of P > 0 and the tempInt2 of M < 3 and the travel-opposite of M is D: [someone is pointing their spike at us]
								now forward-priority is 1;
								if D is TD: [we are also pointing at them]
									let DED be the dedication of P;
									if DED < a random number between 1 and 3, now forward-priority is -2; [too scared to drive into each other. turn and run!]
							otherwise if D is TD and the tempInt1 of M > 0:
								now forward-priority is 1; [we can get a balloon]
					repeat with M running through people in R:
						if M is not P and the tempInt2 of M < 3 and the tempInt1 of P > 0 and the travel-direction of M is TD: [someone is in the same location as us, facing the same way as us. If we move forward they can spike us easily]
							now forward-priority is -1; [don't drive forward. turn or rest!]
					if (forward-priority is 0 or forward-priority is -1) and (the dedication of P + forward-priority) < the lessonInt2 of P: [feeling sore, and nothing urgent that means we need to go forward or turn]
						say "[BigNameDesc of P] stays still[one of], looking uncertain[or][or] and takes a breather[or], taking a short break[or], recovering [his of P] breath[or], giving [his of P] sore [variable F] a moment's rest[then at random].";
						now the lessonInt2 of P is the lessonInt2 of P / 2;
						now forward-priority is -100;
					if forward-ability is 1 and (a random number between 0 and 1) <= forward-priority: [move forward]
						say "[BigNameDesc of P] humps on [his of P] vibrator and moves [his of P] kart forwards, travelling [TD]. ";
						let T be the room TD from R;
						if a random number between 3 and 10 < the lessonInt1 of P:
							say "You watch [student-name of P] writhe and shudder on [his of P] dildo as [he of P] experiences a powerful orgasm! [big he of P] starts gasping for breath, and looking a little dazed. ";
							now the lessonInt1 of P is 0;
							now the	tempInt3 of P is 2;
						otherwise:
							increase the lessonInt2 of P by 1; [getting sore]
						now P is in T;
						say "[big he of P] is now in [T].";
						compute potential balloon pop of P;
					otherwise if forward-priority > -100: [turn]
						let LR be a list of directions; [list of directions we could turn to]
						repeat with D running through the Nviables of R:
							if D is not TD and D is not the travel-opposite of P, add D to LR;
						let LBR be a list of directions; [list of best directions we could turn to]
						repeat with D running through LR:
							let T be the room D from R;
							repeat with M running through people in T:
								if the tempInt1 of M > 0, add D to LBR;
						if the number of entries in LBR is 0:
							sort LR in random order;
							now the travel-direction of P is entry 1 in LR;
						otherwise: [nobody with balloons]
							sort LBR in random order;
							now the travel-direction of P is entry 1 in LBR;
						update travel opposite of P;
						let T be the room travel-direction of P from R;
						say "[BigNameDesc of P] leans and turns, and is now facing [travel-direction of P][if the tempInt1 of the player > 0 and the player is in T] - [bold type]directly towards you![roman type][line break][otherwise], towards [T].[end if]";
					increase the lessonInt1 of P by 1;
			otherwise if P is the player and the tempInt2 of the player < 3:
				let R be the location of P;
				let TD be the travel-direction of P;
				let T be the room TD from R;
				let LD be north;
				let RD be north;
				if TD is north:
					now LD is west;
					now RD is east;
				otherwise if TD is south:
					now LD is east;
					now RD is west;
				otherwise if TD is east:
					now LD is north;
					now RD is south;
				otherwise:
					now LD is south;
					now RD is north;
				purge NPC icons;
				reset multiple choice questions;
				if the tempInt3 of P > 0:
					set numerical response 1 to "[if the tempInt3 of P is 2]Recover from your orgasm[otherwise]Shake your head to clear your eyes of [variable L][end if]";
					if the tempInt3 of P is 1, now temporaryYesNoBackground is examine-image of BKP;
					compute multiple choice question;
					now temporaryYesNoBackground is figure of no-image-yet;
				otherwise if the player is feeling submissive and (the soreness of asshole >= 10 or the soreness of vagina >= 10):
					let F be asshole;
					if the soreness of vagina >= 10, now F is vagina;
					set numerical response 1 to "pull yourself up as high as you can, giving your poor sore [variable F] a moment to recover";
					if the tempInt3 of P is 1, now temporaryYesNoBackground is examine-image of BKP;
					compute multiple choice question;
					now temporaryYesNoBackground is figure of no-image-yet;
				otherwise:
					set numerical response 1 to "Remain still, facing [TD], and pull yourself up as high as you can, giving yourself a moment to recover";
					set numerical response 2 to "Turn anticlockwise to face [LD]";
					set numerical response 3 to "Turn clockwise to face [RD]";
					if T is an arena room, set numerical response 4 to "Hump the vibrator to travel forwards";
					compute multiple choice question;
				if player-numerical-response is 1:
					say "You remain still for a moment.";
					heal F times 2;
					decrease the fatigue of the player by the buckle threshold of the player / 5;
					if the fatigue of the player < 0, now the fatigue of the player is 0;
				otherwise if player-numerical-response is 2:
					say "You lean anticlockwise, and your kart turns until it is facing [LD].";
					now the travel-direction of P is LD;
					now the travel-opposite of P is RD;
				otherwise if player-numerical-response is 3:
					say "You lean anticlockwise, and your kart turns until it is facing [RD].";
					now the travel-direction of P is RD;
					now the travel-opposite of P is LD;
				otherwise:
					say "You slam yourself up and down on the huge vibrator, roughly stimulating your [F].";
					now BKP is humped; [harder sensations]
					ruin F times 2;
					if refractoryperiod > 0:
						now refractoryperiod is 0;
						now the tempInt3 of P is 2;
					otherwise:
						if the soreness of F > 5:
							say "[variable custom style][one of]It's pounding my [variable F] raw[or]It's too big[or]My poor [variable F][cycling]![roman type][line break]";
							PainUp the soreness of F * 2;
					now BKP is not humped;
					now P is in T;
					compute potential balloon pop of P;
				say "[BigNameDesc of BKP] gently vibrates insides your [variable F].";
				passively stimulate F from BKP times 2;
				check for arousal change;
			now the tempInt3 of P is 0;
			if the tempInt1 of ST1 + the tempInt1 of ST2 + the tempInt1 of ST3 + the tempInt2 of the player < 3: [player can't get 3 balloons]
				say "Unfortunately, you have reached a situation where it's impossible for you to be able to pop three balloons. Your kart stops moving, and the vibrator increases in power tenfold. It holds you there, bringing you to orgasm after powerful orgasm, while there's nothing you can do but scream and experiences the waves of painful pleasure. By the time the machine finally decides to release you, you're an exhausted, sweaty, whimpering mess.";
				SexAddictUp 3;
				DelicateUp 3;
				now the fatigue of the player is the buckle threshold of the player;
				now the tempInt2 of the player is 3;
	if the tempInt2 of ST1 < 3 and the tempInt2 of ST2 < 3 and the tempInt2 of ST3 < 3:
		blandify and reveal gold-microshorts;
		now gold-microshorts is in Predicament01;
	say "You clamber out of the kart and rush towards to the exit. You find yourself in the entryway to an abandoned warehouse[if gold-microshorts is in Predicament01]. Since you were the first to win, you are delighted to see that there is still a pair of gold microshorts available to take here - more skimpy than you were expecting, but still much better than nothing[end if].";
	now the player is in Predicament01;
	dislodge BKP;
	now map-zoom is old-map-zoom;
	try standing.

To compute potential balloon pop of (P - a person):
	if the number of people in the location of P > 1:
		let successfulPop be false;
		let successfulRevengePop be false;
		let L be semen;
		if bukkake fetish is 0, now L is urine;
		let LP be the list of people in the location of P;
		remove P from LP;
		sort LP in random order;
		let M be entry 1 in LP;
		say "[if P is the player]Your[otherwise][student-name of P][']s[end if] kart slams into [if M is the player]yours[otherwise][student-name of M][']s[end if]! ";
		if the tempInt1 of M is 0:
			say "But there were no more balloons to be popped.";
		otherwise:
			now successfulPop is true;
			if P is the player:
				if the player is getting unlucky, now successfulPop is false;
			otherwise if M is the player:
				if the player is getting lucky, now successfulPop is false;
			otherwise:
				if a random number between 1 and 4 is 1, now successfulPop is false;
			if successfulPop is true:
				if the tempInt2 of M < 3: [they are still in their kart]
					say "A balloon is burst open, and a pint of [variable L] drenches [YouDesc of M]!";
					if M is the player:
						if the tempInt1 of M is 3, AnnouncedSquirt semen on hair by 10;
						if the tempInt1 of M is 2, AnnouncedSquirt semen on face by 10;
						if the tempInt1 of M is 1, AnnouncedSquirt semen on breasts by 10;
					otherwise:
						say "[speech style of M]'[one of]Eek[or]Nooo[or]Gross[or]Aaaah[then at random]!'[roman type][line break][student-name of M] squeals [one of]in panic[or]with disgust[or]with despair[cycling].";
						if P is the player, HappinessDown M;
				otherwise:
					say "A balloon is burst open, drenching the empty kart seat in [variable L].";
			otherwise:
				say "[one of]The spike narrowly misses a balloon[or]The spike touches a balloon, but not hard enough to pop it[or]The spike completely misses a balloon[then at random]! [if P is the player][GotUnluckyFlav][otherwise if M is the player][GotLuckyFlav][otherwise][student-name of M] got lucky there.[end if]";
		if the travel-direction of P is the travel-opposite of M and the tempInt1 of P > 0:
			now successfulRevengePop is true;
			if P is the player:
				if the player is getting lucky, now successfulRevengePop is false;
			otherwise if M is the player:
				if the player is getting unlucky, now successfulRevengePop is false;
			otherwise:
				if a random number between 1 and 4 is 1, now successfulRevengePop is false;
			if successfulRevengePop is true:
				if M is the player, say "At the same time, your spike connects with one of [student-name of P][']s balloons, bursting it and drenching [him of P]!";
				otherwise say "[if the tempInt1 of M > 0]At the same time, [student-name of M][']s spike slices[otherwise]But [student-name of M][']s spike is in the right place to slice[end if] open one of [if P is the player]your[otherwise][student-name of P][']s[end if] balloons!";
				if P is the player:
					if the tempInt1 of P is 3, AnnouncedSquirt semen on hair by 10;
					if the tempInt1 of P is 2, AnnouncedSquirt semen on face by 10;
					if the tempInt1 of P is 1, AnnouncedSquirt semen on breasts by 10;
				otherwise:
					say "[speech style of P]'[one of]Eek[or]Nooo[or]Gross[or]Aaaah[then at random]!'[roman type][line break][student-name of P] squeals [one of]in panic[or]with disgust[or]with despair[cycling].";
					if M is the player, HappinessDown P;
				decrease the tempInt1 of P by 1;
				if the tempInt3 of P is 0 and the tempInt1 of P < 2, now the tempInt3 of P is 1;
				increase the tempInt2 of M by 1;
				say "[bold type][if P is the player]Your[otherwise][student-name of P][']s[end if] kart has [tempInt1 of P] balloon[if tempInt1 of P is not 1]s[end if] left. [if M is the player]You have[otherwise][student-name of M] has[end if] popped [tempInt2 of M] balloon[if tempInt2 of M is not 1]s![otherwise].[end if][roman type][line break]";
				if M is student and the tempInt2 of M is 3:
					say "[big his of M] restraints are released, and [he of M] quickly clambers out [his of M] kart and flees towards the exit. [big his of M] kart is left motionless.[roman type][line break]";
			otherwise:
				say "[one of]The spike narrowly misses a balloon[or]The spike touches a balloon, but not hard enough to pop it[or]The spike completely misses a balloon[then at random]! [if P is the player][GotLuckyFlav][otherwise if M is the player][GotUnluckyFlav][otherwise][student-name of P] got lucky there.[end if]";
		if successfulPop is true:
			decrease the tempInt1 of M by 1;
			if the tempInt3 of M is 0 and the tempInt1 of M < 2, now the tempInt3 of M is 1;
			increase the tempInt2 of P by 1;
			say "[bold type][if M is the player]Your[otherwise][student-name of M][']s[end if] kart has [tempInt1 of M] balloon[if tempInt1 of M is not 1]s[end if] left. [if P is the player]You have[otherwise][student-name of P] has[end if] popped [tempInt2 of P] balloon[if tempInt2 of P is not 1]s![otherwise].[end if][roman type][line break]";
		otherwise if M is student and the tempInt2 of M is 3:
			say "It is now just sitting there, [if the tempInt1 of M is 0]with no balloons remaining[otherwise if tempInt1 of M is 1][bold type]with 1 balloon remaining[otherwise][bold type]with [tempInt1 of M] balloons remaining[end if].[roman type][line break]";
		if P is student and the tempInt2 of P is 3:
			say "[BigNameDesc of P] has popped 3 balloons! [big his of P] restraints are released, and [he of P] quickly clambers out [his of P] kart and flees towards the exit. [big his of P] kart is left motionless, [if the tempInt1 of P is 0]with no balloons remaining[otherwise if tempInt1 of P is 1][bold type]with 1 balloon remaining[otherwise][bold type]with [tempInt1 of P] balloons remaining[end if].[roman type][line break]";


Figure of Red Kart N0 is the file "Map/Icons/Karts/redn0.png".
Figure of Red Kart N1 is the file "Map/Icons/Karts/redn1.png".
Figure of Red Kart N2 is the file "Map/Icons/Karts/redn2.png".
Figure of Red Kart N3 is the file "Map/Icons/Karts/redn3.png".
Figure of Red Kart E0 is the file "Map/Icons/Karts/rede0.png".
Figure of Red Kart E1 is the file "Map/Icons/Karts/rede1.png".
Figure of Red Kart E2 is the file "Map/Icons/Karts/rede2.png".
Figure of Red Kart E3 is the file "Map/Icons/Karts/rede3.png".
Figure of Red Kart S0 is the file "Map/Icons/Karts/reds0.png".
Figure of Red Kart S1 is the file "Map/Icons/Karts/reds1.png".
Figure of Red Kart S2 is the file "Map/Icons/Karts/reds2.png".
Figure of Red Kart S3 is the file "Map/Icons/Karts/reds3.png".
Figure of Red Kart W0 is the file "Map/Icons/Karts/redw0.png".
Figure of Red Kart W1 is the file "Map/Icons/Karts/redw1.png".
Figure of Red Kart W2 is the file "Map/Icons/Karts/redw2.png".
Figure of Red Kart W3 is the file "Map/Icons/Karts/redw3.png".

Figure of Green Kart N0 is the file "Map/Icons/Karts/greenn0.png".
Figure of Green Kart N1 is the file "Map/Icons/Karts/greenn1.png".
Figure of Green Kart N2 is the file "Map/Icons/Karts/greenn2.png".
Figure of Green Kart N3 is the file "Map/Icons/Karts/greenn3.png".
Figure of Green Kart E0 is the file "Map/Icons/Karts/greene0.png".
Figure of Green Kart E1 is the file "Map/Icons/Karts/greene1.png".
Figure of Green Kart E2 is the file "Map/Icons/Karts/greene2.png".
Figure of Green Kart E3 is the file "Map/Icons/Karts/greene3.png".
Figure of Green Kart S0 is the file "Map/Icons/Karts/greens0.png".
Figure of Green Kart S1 is the file "Map/Icons/Karts/greens1.png".
Figure of Green Kart S2 is the file "Map/Icons/Karts/greens2.png".
Figure of Green Kart S3 is the file "Map/Icons/Karts/greens3.png".
Figure of Green Kart W0 is the file "Map/Icons/Karts/greenw0.png".
Figure of Green Kart W1 is the file "Map/Icons/Karts/greenw1.png".
Figure of Green Kart W2 is the file "Map/Icons/Karts/greenw2.png".
Figure of Green Kart W3 is the file "Map/Icons/Karts/greenw3.png".

Figure of Blue Kart N0 is the file "Map/Icons/Karts/bluen0.png".
Figure of Blue Kart N1 is the file "Map/Icons/Karts/bluen1.png".
Figure of Blue Kart N2 is the file "Map/Icons/Karts/bluen2.png".
Figure of Blue Kart N3 is the file "Map/Icons/Karts/bluen3.png".
Figure of Blue Kart E0 is the file "Map/Icons/Karts/bluee0.png".
Figure of Blue Kart E1 is the file "Map/Icons/Karts/bluee1.png".
Figure of Blue Kart E2 is the file "Map/Icons/Karts/bluee2.png".
Figure of Blue Kart E3 is the file "Map/Icons/Karts/bluee3.png".
Figure of Blue Kart S0 is the file "Map/Icons/Karts/blues0.png".
Figure of Blue Kart S1 is the file "Map/Icons/Karts/blues1.png".
Figure of Blue Kart S2 is the file "Map/Icons/Karts/blues2.png".
Figure of Blue Kart S3 is the file "Map/Icons/Karts/blues3.png".
Figure of Blue Kart W0 is the file "Map/Icons/Karts/bluew0.png".
Figure of Blue Kart W1 is the file "Map/Icons/Karts/bluew1.png".
Figure of Blue Kart W2 is the file "Map/Icons/Karts/bluew2.png".
Figure of Blue Kart W3 is the file "Map/Icons/Karts/bluew3.png".

Figure of Purple Kart N0 is the file "Map/Icons/Karts/purplen0.png".
Figure of Purple Kart N1 is the file "Map/Icons/Karts/purplen1.png".
Figure of Purple Kart N2 is the file "Map/Icons/Karts/purplen2.png".
Figure of Purple Kart N3 is the file "Map/Icons/Karts/purplen3.png".
Figure of Purple Kart E0 is the file "Map/Icons/Karts/purplee0.png".
Figure of Purple Kart E1 is the file "Map/Icons/Karts/purplee1.png".
Figure of Purple Kart E2 is the file "Map/Icons/Karts/purplee2.png".
Figure of Purple Kart E3 is the file "Map/Icons/Karts/purplee3.png".
Figure of Purple Kart S0 is the file "Map/Icons/Karts/purples0.png".
Figure of Purple Kart S1 is the file "Map/Icons/Karts/purples1.png".
Figure of Purple Kart S2 is the file "Map/Icons/Karts/purples2.png".
Figure of Purple Kart S3 is the file "Map/Icons/Karts/purples3.png".
Figure of Purple Kart W0 is the file "Map/Icons/Karts/purplew0.png".
Figure of Purple Kart W1 is the file "Map/Icons/Karts/purplew1.png".
Figure of Purple Kart W2 is the file "Map/Icons/Karts/purplew2.png".
Figure of Purple Kart W3 is the file "Map/Icons/Karts/purplew3.png".

To decide which figure-name is the kart-icon of (P - a person):
	if P is rival1 of balloon-kart-predicament: [blue]
		if the tempInt1 of P >= 3:
			if the travel-direction of P is north, decide on Figure of Blue Kart N3;
			if the travel-direction of P is east, decide on Figure of Blue Kart E3;
			if the travel-direction of P is south, decide on Figure of Blue Kart S3;
			decide on Figure of Blue Kart W3;
		otherwise if the tempInt1 of P >= 2:
			if the travel-direction of P is north, decide on Figure of Blue Kart N2;
			if the travel-direction of P is east, decide on Figure of Blue Kart E2;
			if the travel-direction of P is south, decide on Figure of Blue Kart S2;
			decide on Figure of Blue Kart W2;
		otherwise if the tempInt1 of P >= 1:
			if the travel-direction of P is north, decide on Figure of Blue Kart N1;
			if the travel-direction of P is east, decide on Figure of Blue Kart E1;
			if the travel-direction of P is south, decide on Figure of Blue Kart S1;
			decide on Figure of Blue Kart W1;
		otherwise:
			if the travel-direction of P is north, decide on Figure of Blue Kart N0;
			if the travel-direction of P is east, decide on Figure of Blue Kart E0;
			if the travel-direction of P is south, decide on Figure of Blue Kart S0;
			decide on Figure of Blue Kart W0;
	otherwise if P is rival2 of balloon-kart-predicament: [purple]
		if the tempInt1 of P >= 3:
			if the travel-direction of P is north, decide on Figure of Purple Kart N3;
			if the travel-direction of P is east, decide on Figure of Purple Kart E3;
			if the travel-direction of P is south, decide on Figure of Purple Kart S3;
			decide on Figure of Purple Kart W3;
		otherwise if the tempInt1 of P >= 2:
			if the travel-direction of P is north, decide on Figure of Purple Kart N2;
			if the travel-direction of P is east, decide on Figure of Purple Kart E2;
			if the travel-direction of P is south, decide on Figure of Purple Kart S2;
			decide on Figure of Purple Kart W2;
		otherwise if the tempInt1 of P >= 1:
			if the travel-direction of P is north, decide on Figure of Purple Kart N1;
			if the travel-direction of P is east, decide on Figure of Purple Kart E1;
			if the travel-direction of P is south, decide on Figure of Purple Kart S1;
			decide on Figure of Purple Kart W1;
		otherwise:
			if the travel-direction of P is north, decide on Figure of Purple Kart N0;
			if the travel-direction of P is east, decide on Figure of Purple Kart E0;
			if the travel-direction of P is south, decide on Figure of Purple Kart S0;
			decide on Figure of Purple Kart W0;
	otherwise if P is rival3 of balloon-kart-predicament: [green]
		if the tempInt1 of P >= 3:
			if the travel-direction of P is north, decide on Figure of Green Kart N3;
			if the travel-direction of P is east, decide on Figure of Green Kart E3;
			if the travel-direction of P is south, decide on Figure of Green Kart S3;
			decide on Figure of Green Kart W3;
		otherwise if the tempInt1 of P >= 2:
			if the travel-direction of P is north, decide on Figure of Green Kart N2;
			if the travel-direction of P is east, decide on Figure of Green Kart E2;
			if the travel-direction of P is south, decide on Figure of Green Kart S2;
			decide on Figure of Green Kart W2;
		otherwise if the tempInt1 of P >= 1:
			if the travel-direction of P is north, decide on Figure of Green Kart N1;
			if the travel-direction of P is east, decide on Figure of Green Kart E1;
			if the travel-direction of P is south, decide on Figure of Green Kart S1;
			decide on Figure of Green Kart W1;
		otherwise:
			if the travel-direction of P is north, decide on Figure of Green Kart N0;
			if the travel-direction of P is east, decide on Figure of Green Kart E0;
			if the travel-direction of P is south, decide on Figure of Green Kart S0;
			decide on Figure of Green Kart W0;
	otherwise: [player - red]
		if the tempInt1 of P >= 3:
			if the travel-direction of P is north, decide on Figure of Red Kart N3;
			if the travel-direction of P is east, decide on Figure of Red Kart E3;
			if the travel-direction of P is south, decide on Figure of Red Kart S3;
			decide on Figure of Red Kart W3;
		otherwise if the tempInt1 of P >= 2:
			if the travel-direction of P is north, decide on Figure of Red Kart N2;
			if the travel-direction of P is east, decide on Figure of Red Kart E2;
			if the travel-direction of P is south, decide on Figure of Red Kart S2;
			decide on Figure of Red Kart W2;
		otherwise if the tempInt1 of P >= 1:
			if the travel-direction of P is north, decide on Figure of Red Kart N1;
			if the travel-direction of P is east, decide on Figure of Red Kart E1;
			if the travel-direction of P is south, decide on Figure of Red Kart S1;
			decide on Figure of Red Kart W1;
		otherwise:
			if the travel-direction of P is north, decide on Figure of Red Kart N0;
			if the travel-direction of P is east, decide on Figure of Red Kart E0;
			if the travel-direction of P is south, decide on Figure of Red Kart S0;
			decide on Figure of Red Kart W0.



free-use-fuckhole-predicament is a predicament. free-use-fuckhole-predicament can be key-trapped.
Definition: free-use-fuckhole-predicament is appropriate:
	if diaper quest is 0 and the player is an october 2023 top donator and the rank of the player > 4, decide yes;
	decide no.
Figure of free use fuckhole predicament is the file "Special/Cutscene/cutscene-predicament-freeuse1.jpg".
Figure of free use fuckhole predicament pulled is the file "Special/Cutscene/cutscene-predicament-freeuse2.jpg".

To execute (FFP - free-use-fuckhole-predicament):
	now the player is in Toilet02;
	now the stance of the player is 1;
	summon wrist collar bar locked;
	now wrist collar bar is predicament-fixed;
	let K be a random off-stage specific-key;
	if K is specific-key:
		now K is covering wrist collar bar;
		now K is in Predicament01;
	say "Suddenly you find yourself fully naked, stuck halfway through hole in a wall in a toilet cubicle! Your arms and neck are locked in a strict metal wrist collar bar, and some sort of string has been tightly tied to your nipples. A television screen has been placed in front of you, and shows a live feed of a butt in a wall, with a sign dangling from the same sort of red string, which says [']FREE USE['] on it.[paragraph break]A robotic voice issues from a speaker in the wall above you.[line break][first custom style]'WELCOME TO THE [']EXTRA CREDIT['] CLASS. [PredicamentRewardExplanation]TO EARN THIS TROPHY, YOU MUST SIMPLY RETURN HOME. BUT IN ORDER TO EARN RELEASE, YOU MUST WAIT UNTIL THE ICE HOLDING YOUR BONDAGE ROPE IN PLACE HAS MELTED. THE WALL HOLDING YOU IS LARGELY SOUNDPROOF, BUT THE TELEVISION SCREEN IN FRONT OF YOU WILL ALLOW YOU TO SEE AND HEAR EVERYTHING HAPPENING TO YOUR REAR END. RAISING YOUR TORSO MAY HELP THE ICE MELT FASTER.[paragraph break]'THE KEY TO YOUR WRIST COLLAR BAR IS IN THE ABANDONED WAREHOUSE TO THE WEST.'[roman type][line break][PredicamentRewardExplanationReaction][roman type][paragraph break]You don't see how raising your torso could possibly do anything to the ice block, but you suppose it's worth experimenting with.";
	now temporaryYesNoBackground is Figure of free use fuckhole predicament;
	compute single choice question "Test pulling your torso up";
	say "Pain shoots through your nipples as they are stretched painfully by the motion. But you now see what is possible with this action - the sign that says [']Free Use['] has been pulled upwards, revealing a second sign that says [']Please! HELP ME MELT THE ICE CUBE!['][roman type][line break]But also, it really fucking hurts.";
	UnflinchingPainUp 4;
	now temporaryYesNoBackground is Figure of free use fuckhole predicament pulled;
	compute single choice question "Lower your torso";
	say "By lowering your body again, you relieve the pressure on your nipples and give your abdominal muscles some rest.";
	now temporaryYesNoBackground is Figure of free use fuckhole predicament;
	let ice-start be a random number between 1100 and 1300;
	let ice-left be ice-start;
	let current-stance be 0; [0 is leaning down, 1 is pulling up]
	let nipple-pain be 5;
	let man-friendliness be 0;
	let man-seen-sign be false;
	let sign-notice-state be 0; [0: might see sign; -1: won't see sign; X: failed to see sign X times]
	let man-helping be false;
	let not-bothering be false;
	let originally-said-no be false;
	let only-just-seen-sign be false;
	let soreness-tick be 0;
	let nipple-tick be 0;
	while ice-left > 0:
		say "The ice looks [if ice-left > ice-start / 2]still rather solid[otherwise if ice-left > ice-start / 3]somewhat melted[otherwise if ice-left > ice-start / 4]partially melted[otherwise]mostly melted[end if].";
		reset multiple choice questions;
		if the fatigue of the player >= the buckle threshold of the player, say "[bold type]Your abs are burning - you are too tired to hold yourself up [if current-stance is 0]right now[otherwise]any more[end if].[roman type][line break]";
		set numerical response 1 to "[if current-stance is 0]Remain[otherwise]Lower yourself back[end if] facedown";
		if the fatigue of the player < the buckle threshold of the player, set numerical response 2 to "[if current-stance is 0]Pull yourself up[otherwise]Keep holding your torso up[end if]";
		compute multiple choice question;
		if player-numerical-response is 1:
			say "You lay [if current-stance is 1]back [end if]down, giving your nipples and abs a rest.";
			now current-stance is 0;
			now temporaryYesNoBackground is Figure of free use fuckhole predicament;
			decrease the fatigue of the player by the buckle threshold of the player / 10;
			if the fatigue of the player < 0, now the fatigue of the player is 0;
		otherwise:
			say "You heave your torso upwards, pulling on the ropes with your nipples.";
			if nipple-tick > a random number between 1 and 3:
				PainUp nipple-pain;
				increase nipple-pain by 1;
				say "Your nipples get more [one of][or]and more [stopping]sore[one of] - [bold type]Every time you allow your nipples to experience pain like this, it will hurt a bit more than the time before.[roman type][line break][or].[stopping]";
				now nipple-tick is 0;
			otherwise:
				increase nipple-tick by 1;
			now current-stance is 1;
			now temporaryYesNoBackground is Figure of free use fuckhole predicament pulled;
			increase the fatigue of the player by 20;
		let M be a random ultimate-lesson-actor in the location of the player;
		if M is a monster:
			let gonna-penetrate be false;
			if M is penetrating a fuckhole:
				compute action 1 of M;
				if M is dying, finally destroy M;
				if M is not in the location of the player, say "You watch [NameDesc of M] zip up [his of M] [manly-penis] and [one of]take [his of M] leave[or]walk away[or]leave[or]exit the cubicle[in random order].";
			otherwise:
				if man-seen-sign is false and man-helping is false and the player is getting lucky:
					say "[BigNameDesc of M] notices the sign just in time! [GotLuckyFlav]";
					now man-seen-sign is true;
					now only-just-seen-sign is true;
				if man-seen-sign is false and man-helping is false:
					if current-stance is 1, say "[BigNameDesc of M] doesn't see the sign in time!";
					if man-friendliness >= a random number between 4 and 5:
						say "[speech style of M]'Something seems off. I'm going to leave [him of the player] alone.'[roman type][line break][BigNameDesc of M] turns around and leaves!";
						finally destroy M;
					otherwise:
						now gonna-penetrate is true;
				otherwise if man-helping is false:
					if man-friendliness is 0:
						now gonna-penetrate is true;
						say "[speech style of M]'Haha, as if I was ever going to help you escape.'[roman type][line break]";
					otherwise:
						say "[BigNameDesc of M] seems to consider [his of M] options.";
						if only-just-seen-sign is false and current-stance is 1, increase man-friendliness by a random number between 0 and 1;
						if a random number between 1 and 4 <= man-friendliness, now man-helping is true;
						otherwise now originally-said-no is true;
						if a random number between 1 and 4 >= man-friendliness, now gonna-penetrate is true;
						if man-helping is true and gonna-penetrate is false:
							say "[speech style of M]'Fine, I'll give this poor [one of][boy of the player][or]soul[cycling] a helping hand.'[roman type][line break]";
						otherwise if man-helping is true:
							say "[speech style of M]'Fine, I'll help you escape, but I'm assuming the [']Free Use['] sign still stands!'[roman type][line break]";
						otherwise if gonna-penetrate is true:
							say "[speech style of M]'Free Use means Free Use. I don't care about helping this slut escape.'[roman type][line break]";
						otherwise:
							say "[speech style of M]'This is all too weird.'[roman type][line break][BigNameDesc of M] turns around and leaves!";
							finally destroy M;
			if gonna-penetrate is true:
				let F be asshole;
				if the player is possessing a vagina and a random number between 0 and 4 <= man-friendliness, now F is vagina;
				say "[BigNameDesc of M] [one of]pulls your [AssDesc] apart[or]grabs your [AssDesc][or]spreads your [AssDesc][or]peels apart your [AssDesc][in random order] and [one of]works [his of M] half-erect [manly-penis] into your [variable F], where it quickly expands to full mast[or]stuffs [his of M] rapidly hardening [manly-penis] into your [if F is asshole]poor defenseless [asshole][otherwise]awaiting [vagina][end if][or]spits on your [variable F] before sliding [his of M] rock hard [manly-penis] inside[or]pushes [his of M] [manly-penis] into the entrance to your [variable F][or]eases [his of M] hot, throbbing [manly-penis] into your [variable F][in random order].";
				now M is penetrating F;
				now the sex-length of M is a random number between 2 and 6;
			if M is in the location of the player:
				if current-stance is 1 and M is penetrating a fuckhole:
					if man-seen-sign is false:
						if sign-notice-state < 0:
							do nothing;
						otherwise if a random number between 1 and 3 > 1:
							if sign-notice-state is 0, say "[BigNameDesc of M] is too busy fucking you, and doesn't notice the new sign!";
							if sign-notice-state is 0 and a random number between 1 and 2 is 1:
								now sign-notice-state is -1;
								say "[variable custom style]It's no good, [he of M][']s not looking up at all - [he of M][']s just staring at my ass![roman type][line break]";
							otherwise:
								increase sign-notice-state by 1;
						otherwise:
							if a random number between 1 and 4 <= man-friendliness, now man-helping is true;
							say "[speech style of M]'[one of]Oh... There's a second sign[or]Huh? Oh, another sign[in random order]! [if man-friendliness is 0]...Why would I give a fuck about helping you get free?'[otherwise if man-friendliness is 1 and man-helping is false]Hmm... Nah, I don't see how I could help with that.'[otherwise if man-helping is false][one of]...I'm sorry, I don't know what I could do to help.'[or]But I don't really have anything that could heat up ice...? Oh well.'[or]Well... I'm sorry, but that would just make my hands all cold. I don't want to do that.'[in random order][otherwise]Well I guess... Fine... But I'm not pulling out.'[end if][roman type][line break]";
							now man-seen-sign is true;
					otherwise if not-bothering is true:
						if the player is getting unlucky:
							say "[speech style of M]'[one of]Hmm, I can see the sign again now, but I'm not convinced your heart's really in it.'[or]Oh there's the sign again. But if [he of the player][']s only holding it up some of the time, is [he of the player] really that fussed whether I help [him of the player] out or not?[in random order][roman type][line break][GotUnluckyFlav]";
						otherwise:
							say "[speech style of M]'Fine, fine, [one of]I'll help[or]I get it[cycling].'[roman type][line break]";
							now not-bothering is false;
					otherwise if originally-said-no is true and man-helping is false and man-friendliness > 0:
						increase man-friendliness by 1;
						if man-friendliness >= a random number between 3 and 5:
							say "[speech style of M]'Ugh, [one of]fine, I guess I could help a little bit[or]I can't look at that sign withing feeling guilty. I'll help you melt your damn ice cube[cycling].'[roman type][line break]";
							now man-helping is true;
				if man-helping is true and not-bothering is false:
					if M is penetrating a fuckhole and current-stance is 0 and the player is getting unlucky:
						say "[speech style of M]'[one of]You can't want to escape that badly if you've put the sign away!'[or]Oh? Just [']Free Use['] again?'[or]Where did that other sign go? Do you want me to stop helping?'[in random order][roman type][line break][BigNameDesc of M] seems to decide against bothering with the ice cube right now. [GotUnluckyFlav]";
						now not-bothering is true;
					otherwise:
						say "[BigNameDesc of M] [one of]places [his of M] hands over the ice cube, helping warm it up[or]rubs the ice cube with [his of M] hands[or]cups the ice cube with [his of M] hands and breathes warm air on it[cycling].";
						decrease ice-left by 50;
						if M is not penetrating a fuckhole:
							if the player is getting lucky:
								say "It looks like [BigNameDesc of M] is going to stick around for a bit longer and continue to help out! [GotLuckyFlav]";
							otherwise:
								say "[BigNameDesc of M] seems satisfied that [he of M][']s helped you enough, and takes [his of M] leave.";
								finally destroy M;
		otherwise:
			if a random number between 1 and 3 is 1:
				let M be a random ultimate-lesson-actor;
				now M is in the location of the player;
				now man-seen-sign is false;
				now man-helping is false;
				now not-bothering is false;
				now originally-said-no is false;
				now only-just-seen-sign is true;
				now sign-notice-state is 0;
				now man-friendliness is a random number between 0 and 4;
				say "Suddenly, [NameDesc of M] appears behind you!";
				let MF be man-friendliness + a random number between 0 and 1;
				if current-stance is 0:
					say "[speech style of M]'[if MF is 0][one of]Oh I am going to ruin you[or]What sort of nasty skank would let people fuck [him of the player] in a toilet[in random order]...'[otherwise if MF is 1][one of]Sweet, free [cunt][or]Free use? Fuck yes[in random order]!'[otherwise if MF is 2][one of]This is going to be fun[or]Holy shit, this is so fucking hot[in random order].'[otherwise if MF is 3][one of]Oh wow, is this real[or]Am I dreaming[in random order]?'[otherwise][one of]I'm not sure I can morally do this without talking to [him of the player] first[or]This is certainly an ethical grey area[in random order]...'[end if][roman type][line break]";
				otherwise:
					now man-seen-sign is true;
					now only-just-seen-sign is false;
					say "[speech style of M]'[if MF is 0]I do not give a fuck about the ice, but I definitely like the idea of free use.'[otherwise if MF is 1][one of]Hmm...'[or]Hmm, I guess I could do both...'[purely at random][otherwise if MF is 2]Hmm, does this mean that [he of the player] really is [']Free Use['] or not?'[otherwise if MF is 3][one of]Hmm[or]Okay, this is weird[purely at random]...'[otherwise]I don't like this at all.'[end if][roman type][line break]";
		decrease ice-left by 20;
		if ice-left <= 0 and there is a monster penetrating a fuckhole, now ice-left is 1;
		if the number of monsters penetrating a fuckhole is 0:
			increase soreness-tick by 1;
			if soreness-tick > a random number between 1 and 3:
				let F be asshole;
				if the player is possessing a vagina and the soreness of vagina > the soreness of asshole, now F is vagina;
				heal F times 1;
				now soreness-tick is 0;
	say "You pull forward, and the rope slips away. You're free! You quickly clamber forwards out of the hole.[line break][variable custom style]That was insane! And now I still need to decide whether to go to the abandoned warehouse to get the key, or just accept that I'm going to be locked in this wrist collar bar for some time...[roman type][line break]";
	if a random number between 1 and 2 is bukkake fetish, now FFP is key-trapped;
	set up 13 bystanders.

Report going when current-predicament is free-use-fuckhole-predicament:
	if free-use-fuckhole-predicament is key-trapped and the player is in Predicament01:
		say "You arrive in the warehouse and find the key! Unfortunately, the key has been placed in its own dastardly device. The key is dangling from a string, inside a perspex box specifically designed to ruin your day - to get the key, you'll need to put your head up inside the box, and pull the key out with your teeth. But when you do, the string connected to the key will pull a latch, and cause the tank above to open, which will cause a gallon of [semen] to spill down onto your face!";

Check taking specific-key when current-predicament is free-use-fuckhole-predicament:
	if free-use-fuckhole-predicament is key-trapped and the player is in Predicament01:
		say "This will cover you in [semen]. Are you sure you want to do that?";
		if the player is not consenting, say "You decide against it." instead.

Report taking specific-key when current-predicament is free-use-fuckhole-predicament:
	if free-use-fuckhole-predicament is key-trapped and the player is in Predicament01:
		say "As you pull the string, the tank opens!";
		UnannouncedSquirt semen on face by 100.


porno-predicament is a team-predicament. porno-predicament has a number called player-points. porno-predicament has a number called rival-points.

Definition: porno-predicament is appropriate:
	if the rank of the player > 2:
		if diaper quest is 0 and the player is a december 2023 top donator, decide yes;
		if diaper quest is 1 and the player is a december 2023 diaper donator, decide yes;
	decide no.

To execute (P - porno-predicament):
	let ST be team-predicament-partner;
	now ST is in Predicament01;
	now the printed name of Predicament01 is "Porn Set";
	let LPVT be a list of texts; [List of content entries for the three porn videos]
	let LPVW be a list of texts; [List of website entries for the three porn videos]
	let LPVS be a list of numbers; [List of severity entries for the three porn videos]
	let LPVP be a list of numbers; [List of popularity entries for the three porn videos]
	let LC be a list of clothing;
	if diaper quest is 0:
		blandify and reveal ornate-dress;
		now ornate-dress is in Predicament01;
		add ornate-dress to LC;
		blandify and reveal bunny-maid-outfit;
		now bunny-maid-outfit is in Predicament01;
		add bunny-maid-outfit to LC;
		blandify and reveal blue-polka-dot briefs;
		now blue-polka-dot briefs is in Predicament01;
		add blue-polka-dot briefs to LC;
		blandify and reveal cock-handmaiden-negligee;
		now cock-handmaiden-negligee is in Predicament01;
		add cock-handmaiden-negligee to LC;
	otherwise:
		now the bladder of the player is bladder-risky-level + 1;
		if diaper messing >= 4, now rectum is 12 - the rectum-incontinence of the player;
		summon baby-medium-diaper uncursed;
		blandify and reveal lollipop-dress;
		now lollipop-dress is in Predicament01;
		add lollipop-dress to LC;
		blandify and reveal supershort cheerleader outfit;
		now supershort cheerleader outfit is in Predicament01;
		add supershort cheerleader outfit to LC;
		blandify and reveal pink-hooded-romper;
		now pink-hooded-romper is in Predicament01;
		add pink-hooded-romper to LC;
	blandify and reveal pet collar;
	now pet collar is in Predicament01;
	add pet collar to LC;
	if diaper quest is 1:
		blandify and reveal slave-dress;
		now slave-dress is in Predicament01;
		add slave-dress to LC;
	now the player is in Predicament01;
	say "You find yourself naked [if diaper quest is 1]except for a [baby-medium-diaper] [end if]in a small room with a bed, a wardrobe and one door. Expensive-looking cameras point at you from almost every direction. One wall is made of glass, and on the other side is [NameDesc of ST], in an identical room. You look at each other, and try to speak, but you can't hear each other - the glass must be soundproof. You both try the doors, but unsurprisingly, they are locked. Soon enough, a robotic voice appears from a speaker.[paragraph break][first custom style]'WELCOME, BOTH, TO THE ['][if diaper quest is 1]DIAPER [end if]PORN CHICKEN['] EXTRA CREDIT CLASS. [PredicamentRewardExplanation]TO EARN THIS TROPHY, YOU MUST SIMPLY RETURN HOME. BUT TO EARN RELEASE FROM THESE ROOMS, YOU WILL FIRST BOTH BE SPENDING SOME TIME EARNING [']PORN POINTS['] BY CHOOSING HOW EXTREME YOUR PORN SHOOT WILL BE. AT THE END OF YOUR THREE PORN VIDEO SEGMENTS, THE STAR WITH THE MOST POINTS WILL BE OFFERED A SHOWER AND A CHANGE OF CLOTHES BEFORE THEY RETURN HOME. THE STAR WITH THE LEAST POINTS WILL BE EJECTED ONTO THE STREETS IMMEDIATELY FOLLOWING THE END OF THEIR SHOOT.[paragraph break]'FURTHERMORE, IF ONE STAR EARNS 5 OR MORE POINTS ABOVE THE OTHER, THAT STAR'S VIDEOS WILL NOT BE PUBLISHED ONLINE. THAT'S RIGHT - IF YOU GO EXTREME ENOUGH, YOU MIGHT BE ABLE TO AVOID PUBLIC EXPOSURE... UNLESS THE OTHER WANNABE PORNSTAR DOES TOO...'[roman type][line break][PredicamentRewardExplanationReaction]";
	say "[paragraph break][first custom style]'WARMUP ROUND: CHOOSE AN OUTFIT FOR YOUR [if diaper quest is 1]DIAPER[otherwise]PORN[end if] VIDEO. PLEASE BE AWARE THIS WILL ALSO BE THE OUTFIT YOU WALK HOME IN.'[roman type][line break]The wardrobes automatically swing open, and you and [student-name of ST] can see that there are various outfits for you to choose from, and each one will earn you a different number of points, from 1 to 5. It's up to you to decide how far you're going to go for points...";
	reset multiple choice questions;
	repeat with C running through LC:
		set next numerical response to "Choose the [MediumDesc of C][if C is pet collar or C is slave-dress] (Warning: this will be locked, and you have no idea how you will able to remove it afterwards)[end if].";
	compute multiple choice question;
	increase player-points of P by player-numerical-response;
	let C be entry player-numerical-response in LC;
	repeat with CC running through LC:
		if CC is not C, only destroy CC;
	summon C uncursed;
	if C is pet collar or C is slave-dress:
		now C is locked;
		if C is slave-dress, now C is wrist-bound-behind;
		now C is predicament-fixed;
	update appearance level;
	say "You blush as you put on [NameDesc of C][if C is pet collar or C is slave-dress], the lock audibly clicking shut as you do[end if]. You've earned [player-numerical-response] [']Porn Point[if player-numerical-response > 1]s[end if]['].";
	let DED be the dedication of ST; [we only roll this once]
	let STD be DED + a random number between -2 and 2;
	if STD < 1, now STD is 1;
	if STD > 5, now STD is 5;
	increase rival-points of P by STD;
	if diaper quest is 0, say "[BigNameDesc of ST] chose to wear [if STD is 1]a sexy cheerleader's uniform[otherwise if STD is 2]a skimpy bikini[otherwise if STD is 3]nothing but a paid of hotpants that says [']WHORE['] on it[otherwise if STD is 4]nothing but a pair of suspenders that says [']PORN STAR['] on them[otherwise]a pair of anklecuffs[end if], earning [STD] Porn Point[if STD > 1]s.";
	otherwise say "[BigNameDesc of ST] chose to wear [if STD is 1]a frilly dress[otherwise if STD is 2]a sexy schoolgirl outfit[otherwise if STD is 3]nothing but a latex diaper cover[otherwise if STD is 4]nothing but a collar that says [']BABY['] on it[otherwise]nothing but a pair of anklecuffs[end if], earning [STD] Porn Point[if STD > 1]s.";
	if diaper quest is 0:
		blandify and reveal flesh-johnson;
		now flesh-johnson is in Predicament01;
		blandify and reveal beige-plug;
		now beige-plug is in Predicament01;
	otherwise:
		blandify and reveal nintendolls-wand;
		now nintendolls-wand is in Predicament01;
	if diaper quest is 0, say "[first custom style]'VIDEO ONE. SOLO PERFORMANCE. EARN UP TO FIVE PORNO POINTS DEPENDING ON LEWDNESS.'[roman type][line break]Two sex toys drop from the ceiling - a [MediumDesc of flesh-johnson] and a [MediumDesc of beige-plug].";
	otherwise say "[first custom style]'VIDEO ONE. PREPARATION PERFORMANCE. EARN UP TO FIVE PORNO POINTS DEPENDING ON ITEMS USED.'[roman type][line break]The nature of exactly what they intend you to do becomes clear when three items drop from the ceiling - a miniature douche bag, for giving yourself a small enema, a [if diaper messing >= 4]laxative[otherwise]diuretic[end if] drink, and a [MediumDesc of nintendolls-wand].";
	reset multiple choice questions;
	set numerical response 0 to "Do nothing.";
	if diaper quest is 0:
		set numerical response 1 to "Do a sexy dance.";
		set numerical response 2 to "Masturbate[if the player is pussy protected] over your clothes[end if].";
		set numerical response 3 to "Use the dildo.";
		set numerical response 4 to "Use the butt plug.";
		set numerical response 5 to "Use both toys at the same time.";
		if a2m fetish >= 1, set next numerical response to "Use both toys, then lick them clean.";
	otherwise:
		set numerical response 1 to "Drink the drink.";
		set numerical response 2 to "Give yourself an enema.";
		set numerical response 3 to "Masturbate with the vibrating wand.";
		set numerical response 4 to "Give yourself an enema and drink the drink.";
		set numerical response 5 to "Give yourself an enema, drink the drink, and then masturbate with the vibrating wand.";
	compute multiple choice question;
	[TODO: perhaps have a second question about dirty talk]
	let X be 0;
	if player-numerical-response > 0, now X is (player-numerical-response + a random number between 0 and 3) / 2;
	if player-numerical-response is 0:
		say "You refuse to entertain this [']game[']. The cameras film you standing there, looking unamused. A small display on one wall shows that your Porn Points have not increased from [player-points of P].";
		add "a high quality video of you standing in a room wearing nothing but a [if diaper quest is 1]diaper and a [end if][MediumDesc of C], silently looking unamused" to LPVT;
		add "has been uploaded to www.sexybitches.xxx" to LPVW;
		if diaper quest is 0, add (the appearance of the player / 2) to LPVS;
		otherwise add (the cringe appearance of the player / 2) to LPVS;
		add 1 to LPVP;
	otherwise if diaper quest is 1:
		if player-numerical-response is 1 or player-numerical-response is 4 or player-numerical-response is 5:
			say "You face the cameras and give them a show of you gulping down the entire drink. [slightHumiliateReflect]";
			if diaper messing >= 4, increase suppository by 3;
			otherwise increase the bladder of the player by 3;
			if player-numerical-response is 1:
				add "a high quality video of you drinking an entire bottle of [if diaper messing >= 4]laxative[otherwise]diuretic[end if] while wearing nothing but a [MediumDesc of baby-medium-diaper] and a [MediumDesc of C]" to LPVT;
				add "has been uploaded to www.diaperbabes.xxx" to LPVW;
				add (the cringe appearance of the player / 2) + 1 to LPVS;
				add 4 to LPVP;
		if player-numerical-response is 2 or player-numerical-response is 4 or player-numerical-response is 5:
			say "You give them a show of you giving yourself a small enema. [moderateHumiliateReflect]";
			AssFill 4 with water;
			if player-numerical-response is 2 or player-numerical-response is 4:
				add "a high quality video of you giving yourself a small enema while wearing nothing but a [MediumDesc of baby-medium-diaper] and a [MediumDesc of C]" to LPVT;
				add "has been uploaded to www.diaperbabes.xxx" to LPVW;
				add (the cringe appearance of the player / 2) + player-numerical-response to LPVS;
				add 4 to LPVP;
		if player-numerical-response is 3 or player-numerical-response is 5:
			say "You give them a good show of masturbating with the wand through your padding. [strongHumiliateReflect]";
			passively stimulate vagina times 2;
			add "a high quality video of you spreading your legs and masturbating with a [ShortDesc of nintendolls-wand] while wearing nothing but a [MediumDesc of baby-medium-diaper] and a [MediumDesc of C]" to LPVT;
			add "has been uploaded to www.dirtybitches.xxx" to LPVW;
			add (the cringe appearance of the player / 2) + player-numerical-response to LPVS;
			add 4 to LPVP;
	otherwise if player-numerical-response is 1:
		say "You do your best to seduce the camera by shaking your [HipDesc] and pushing your [AssDesc] towards the cameras.";
		add "a high quality video of you seductively shaking your hips while wearing nothing but a [MediumDesc of C]" to LPVT;
		add "has been uploaded to www.sexybitches.xxx" to LPVW;
		add (the appearance of the player / 2) + 3 to LPVS;
		add 3 to LPVP;
	otherwise if player-numerical-response is 2:
		say "You face the cameras and spread your legs, and give them a good show of playing with yourself.";
		passively stimulate vagina;
		add "a high quality video of you spreading your legs and masturbating while wearing nothing but a [MediumDesc of C]" to LPVT;
		add "has been uploaded to www.sexybitches.xxx" to LPVW;
		add (the appearance of the player / 2) + 5 to LPVS;
		add 4 to LPVP;
	otherwise if player-numerical-response is 3:
		say "You [if the player is pussy protected]pull your clothes to the side and [end if]push [NameDesc of flesh-johnson] inside of you. You slowly and seductively pump it in and out. ";
		passively stimulate vagina from flesh-johnson;
		passively stimulate vagina from flesh-johnson;
		add "a high quality video of you masturbating with a [MediumDesc of flesh-johnson]" to LPVT;
		add "has been uploaded to www.dirtysluts.com" to LPVW;
		add 10 to LPVS;
		add 5 to LPVP;
	otherwise if player-numerical-response is 4:
		say "You [if the player is ass protected]pull your clothes to the side and [end if]slowly work [NameDesc of beige-plug] inside your [asshole]. ";
		now beige-plug is penetrating asshole;
		ruin asshole;
		say "You work it in and out a few times, making a good seductive show of it for the cameras.";
		ruin asshole;
		add "a high quality video of you anally masturbating with a [MediumDesc of beige-plug] while wearing nothing but a [MediumDesc of C]" to LPVT;
		add "has been uploaded to www.dirtysluts.com" to LPVW;
		add 12 to LPVS;
		add 5 to LPVP;
	otherwise if player-numerical-response is 5 or chosen numerical response matches the text "lick":
		if the player is not possessing a vagina:
			say "First, You push [NameDesc of flesh-johnson] inside of your [asshole], preparing it for the bigger toy that's coming next. ";
			passively stimulate vagina from flesh-johnson;
			passively stimulate vagina from flesh-johnson;
		say "You [if the player is pussy protected]pull your clothes to the side and [end if]slowly work [NameDesc of beige-plug] inside your [asshole]. ";
		now beige-plug is penetrating asshole;
		ruin asshole;
		say "You work it in and out a few times, making a good seductive show of it for the cameras.";
		ruin asshole;
		if the player is possessing a vagina:
			say "Next, You push [NameDesc of flesh-johnson] inside of your [vagina]. You slowly and seductively pump it in and out, stretching both holes at the same time. ";
			passively stimulate vagina from flesh-johnson;
			passively stimulate vagina from flesh-johnson;
		if chosen numerical response matches the text "lick":
			say "Then, you lick both toys clean, while staring directly into the camera.";
			TasteGrossOut 7;
			add "a high quality video of you licking a [MediumDesc of beige-plug] clean after anally masturbating with it" to LPVT;
			add 16 to LPVS;
		otherwise:
			add "a high quality video of you masturbating with a [MediumDesc of beige-plug] AND a [MediumDesc of flesh-johnson]" to LPVT;
			add 13 to LPVS;
		add 5 to LPVP;
		add "has been uploaded to www.dirtysluts.com" to LPVW;
	if player-numerical-response > 0:
		say HumiliateReflect (50 * player-numerical-response);
		if X < 0, now X is 0;
		if X > 5, now X is 5;
		increase the player-points of P by X;
		if X is 0:
			say "However, despite your efforts, the small screen in the corner showing your Porn Points doesn't increase from [player-points of P]![line break][variable custom style]'Are you kidding me?! Not a single measly point?!'[roman type][line break]";
		otherwise:
			say "You see the small screen in the corner that shows your Porn Points increase by [X] to [player-points of P].";
	let STD be DED + a random number between -2 and the current-rank of ST;
	if STD < 0, now STD is 0;
	if STD > 5, now STD is 5;
	increase rival-points of P by STD;
	if diaper quest is 0, say "Meanwhile, [NameDesc of ST] has chosen to [if STD is 0]fold [his of ST] arms and refuse to do anything[otherwise if STD is 1]twerk for the cameras[otherwise if STD is 2]rub [his of ST] clit for the cameras[otherwise if STD is 3]grind on a big black dildo[otherwise if STD is 4]stretch [his of ST] asshole with a big black dildo[otherwise]stretch both [his of ST] holes at the same time with a double-ended dildo[end if], earning [STD] Porn Point[if STD is not 1]s[end if]. [big he of ST] now has [rival-points of P] point[if the rival-points of P is not 1]s[end if].";
	otherwise say "Meanwhile, [NameDesc of ST] has chosen to [if STD is 0]fold [his of ST] arms and refuse to do anything[otherwise if STD is 1]drink [his of ST] drink[otherwise if STD is 2]give [himself of ST] an enema[otherwise if STD is 3]masturbate through [his of ST] diaper[otherwise if STD is 4]drink the drink and give [himself of ST] an enema, but not masturbate[otherwise]drink the drink and give [himself of ST] an enema and masturbate[end if], earning [STD] Porn Point[if STD is not 1]s[end if]. [big he of ST] now has [rival-points of P] point[if the rival-points of P is not 1]s[end if].";
	repeat with STY running through sex toys in Predicament01:
		only destroy STY;
	repeat with STY running through vibe-wands in Predicament01:
		only destroy STY;
	check for arousal change;
	say "[paragraph break]Moments later, the voice returns.[line break][first custom style]'VIDEO TWO: [if diaper quest is 0]BOY-GIRL FOREPLAY[otherwise]PLAYTIME[end if]. EARN UP TO EIGHT PORNO POINTS DEPENDING ON [if diaper quest is 0]EXTREMITY AND LEWDNESS[otherwise]CHOSEN SCENE AND DEDICATION TO THE ROLE[end if]. IF YOU REFUSE TO PICK AN OPTION, THE MOST EXTREME ONE WILL BE CHOSEN FOR YOU.'[roman type][line break]The screen showing your points changes to display a list of options.";
	reset multiple choice questions;
	if diaper quest is 0:
		set numerical response 1 to "MF scene";
		set numerical response 2 to "MMF scene";
		set numerical response 3 to "MF BDSM scene";
		set next numerical response to "MMMMF GANGBANG";
		if interracial fetish >= 1, set next numerical response to "MMMMF INTERRACIAL GANGBANG";
		if watersports fetish >= 1, set next numerical response to "MMMMF GANGBANG WITH WATERSPORTS";
	otherwise:
		set numerical response 1 to "Diapered Girlfriend scene";
		set numerical response 2 to "Dirty Daddy scene";
		set numerical response 3 to "Bullying scene";
	compute multiple choice question;
	let scene-type be player-numerical-response;
	let interracial-scene be false;
	let watersports-scene be false;
	let gangbang-scene be false;
	if scene-type >= 4:
		now gangbang-scene is true;
		if chosen numerical response matches the text "INTERRACIAL", now interracial-scene is true;
		if chosen numerical response matches the text "WATERSPORTS", now watersports-scene is true;
	let M be a random off-stage ultimate-lesson-actor;
	if diaper quest is 0:
		say "As soon as you touch the option, the door at the other end of the room opens, and [if player-numerical-response is 1 or player-numerical-response is 3]a [man of M][otherwise if player-numerical-response is 2]two [men of M][otherwise if interracial fetish is 1 and player-numerical-response is 4]two black [men of M][otherwise]four [men of M][end if] enter the room, closing the door behind them.";
	otherwise:
		if player-numerical-response is 1:
			now M is angelic adult baby slave;
		otherwise if player-numerical-response is 2:
			now the specific-man-title of M is "dominant";
			now the specific-man-image of M is Figure of white experienced patron;
		otherwise:
			now M is bratty adult baby slave;
		say "As soon as you touch the option, the door at the other end of the room opens, and [NameDesc of M] enters the room, closing the door behind [him of M].";
		if player-numerical-response is 1:
			say "[speech style of M]'Hey [boy of the player]friend! I've missed you much!'[roman type][line break][big he of M] chirps, already in character.[line break][speech style of M]'Let's have some fun together...'[roman type][line break]";
		otherwise if player-numerical-response is 2:
			say "[speech style of M]'There's my sweet little kitten!'[roman type][line break][big he of M] coos, already in character.[line break][speech style of M]'Let's have some fun together...'[roman type][line break]";
		otherwise:
			say "[speech style of M]'What are you looking at, twerp?'[roman type][line break][big he of M] snaps at you, already in character.[line break][speech style of M]'Why the fuck are you wearing a diaper too?! Is this some fucked up way of taking the piss out of me?! I'll show you why you shouldn't mess with me!'[roman type][line break]";
	let ML be the location of M;
	if scene-type >= 4, now scene-type is 4;
	let STD be DED + a random number between -2 and the current-rank of ST;
	if STD < 1, now STD is 1;
	if STD > 4, now STD is 4;
	if diaper quest is 0, say "At the same time, [NameDesc of ST] chooses [his of ST] option, and [if STD is 1]one [man of male-m] enters[otherwise][STD] [men of male-m] enter[end if] [his of ST] room on the other side of the soundproofed glass wall.";
	otherwise say "At the same time, [NameDesc of ST] chooses [his of ST] option, and [if STD is 1]a cute diapered chick[otherwise if STD is 2]a [man of male-m] in a suit[otherwise]a mean-looking diapered chick[end if] [his of ST] room on the other side of the soundproofed glass wall.";
	now M is in Predicament01;
	if diaper quest is 0:
		if interracial-scene is true, now the specific-man-title of M is "black";
		otherwise now the specific-man-title of M is "sneering";
	let MMMT be "a [if diaper quest is 1][ShortDesc of M][otherwise if M is presenting as male]male pornstar[otherwise]chick with a dick[end if]";
	if scene-type is 2 or scene-type >= 4:
		let M be a random off-stage ultimate-lesson-actor;
		now M is in Predicament01;
		if interracial-scene is true, now the specific-man-title of M is "dark";
		otherwise now the specific-man-title of M is "leering";
		now MMMT is "two [men of M]";
		if gangbang-scene is true:
			let M be a random off-stage ultimate-lesson-actor;
			now M is in Predicament01;
			if interracial-scene is true, now the specific-man-title of M is "ebony";
			otherwise now the specific-man-title of M is "smirking";
			let M be a random off-stage ultimate-lesson-actor;
			now M is in Predicament01;
			if interracial-scene is true, now the specific-man-title of M is "African";
			otherwise now the specific-man-title of M is "snickering";
			now MMMT is "four [if interracial-scene is true]massive black [end if][men of M]";
	repeat with MX running through monsters in Predicament01:
		if M is ultimate-lesson-actor and diaper quest is 0:
			if interracial-scene is true, now the specific-man-image of MX is Figure of black dickhead patron;
			otherwise now the specific-man-image of MX is Figure of white dickhead patron;
		interest MX;
	reset multiple choice questions;
	set numerical response 0 to "Fight back and try to escape";
	set numerical response 1 to "Make it clear you're not happy about this";
	set numerical response 2 to "Enthusiastically allow them to molest you";
	set numerical response 3 to "Take an active role in the [if diaper quest is 1]roleplay[otherwise]foreplay[end if]";
	set numerical response 4 to "Verbally degrade yourself for the cameras as they molest you";
	set numerical response 5 to "Verbally degrade yourself AND take an active role in the [if diaper quest is 1]roleplay[otherwise]foreplay[end if]";
	compute multiple choice question;
	let MN be the number of ultimate-lesson-actors in the location of the player;
	let player-escaped be false;
	add 10 to LPVP; [video 2]
	add "has been uploaded to www.youpron.com" to LPVW;
	add 15 to LPVP; [video 3]
	add "has been uploaded to www.youpron.com" to LPVW;
	if player-numerical-response is 0:
		if the number of worn locked clothing is 0 and a random number between -30 and 5 > MN:
			now player-escaped is true;
			say "You try to force your way past the [if MN is 1][man of M][otherwise][men of M][end if] and get to the now-unlocked door... And holy shit, you've managed it![line break][speech style of M]'Wait, shit get back here!'[roman type][line break]But it's too late, you are out the door and GONE! Sprinting down an alleyway and then out into public where they dare not follow you. [GotLuckyFlav]";
			now the player is in Predicament02;
			try going east;
		otherwise:
			if pet collar is worn:
				say "You try to force your way past the [if MN is 1][man of M][otherwise][men of M][end if] and get to the now-unlocked door, but suddenly find yourself painfully choked as you are yanked back by your neck, by a hand holding your locked leash.[paragraph break][variable custom style]'You bastard[if MN > 1]s[end if], let me go!'[roman type][line break]You yell, but this is just met with derisive laughter and an even sharper tug, forcing you to your knees.";
			otherwise if diaper quest is 0:
				say "You try to force your way past the [if MN is 1][man of M][otherwise][men of M][end if] and get to the now-unlocked door, but [if MN is 1][he of M] just laughs and tackles you mid-sprint, easily overpowering you and pinning you to the ground[otherwise]they just laugh and grab you mid-sprint, easily lifting you up off the ground between them, leaving your legs flailing pathetically beneath you[end if]. Soon you are furious to find yourself being manhandled and degraded, with spit in your face and hands slapping your ass and face, and your [BreastDesc] and [genitals] being molested as you struggle in vain.[paragraph break][variable custom style]'You bastard[if MN > 1]s[end if], let me go!'[roman type][line break]You yell, but this is just met with derisive laughter and a hand around your throat.";
			otherwise:
				say "You try to force your way past [NameDesc of M] and get to the now-unlocked door, but [he of M] just laughs and tackles you mid-sprint, easily overpowering you and pinning you to the ground. Soon you are furious to find yourself being manhandled and your [BreastDesc] and [genitals] being molested as you struggle in vain.[paragraph break][variable custom style]'You bastard[if MN > 1]s[end if], let me go!'[roman type][line break]You yell, but this is just met with derisive laughter[if M is angelic adult baby slave], as if it's obvious that you're joking, and a [']playful['][otherwise] and a[end if] hand around your throat.";
			PainUp 10;
			say "Over the next couple of minutes, the cameras capture several high-definition angles of you being thrown onto the bed, [if diaper quest is 0]slapped in the face with a [manly-penis], your hair being pulled, your nipples being bitten, and fingers being forced inside your [fuckholes][otherwise]groped, spanked and even bitten[end if] while you writhe and snarl in fury.[paragraph break]Despite the degrading nature of the experience, you actually feel your self-esteem improving, as you are proud of yourself for refusing to play along with this outrageous scenario.";
			dignify 2000;
			add "a high quality video of you being [if diaper quest is 1]dickslapped and [end if]cruelly molested against your will by [MMMT]" to LPVT;
			add 4 to LPVS;
	otherwise if player-numerical-response is 1:
		say "[variable custom style]'You [if MN > 1]bastards [end if] will pay for this!'[roman type][line break]You snarl, as hands begin groping your skin and soon finding your [BreastDesc] and [if diaper quest is 0][fuckholes][otherwise][genitals] through your padding[end if].[paragraph break][BigNameDesc of M] chuckles.[line break][speech style of M]'[if diaper quest is 0]Nope, we're GETTING paid. Unlike you, you pathetic little slut[otherwise if M is angelic adult baby slave]You are so cute when you're playing hard to get[otherwise]Bad baby[end if]. Now get on your knees.'[roman type][line break]When you refuse to comply, you are picked up and thrown onto the bed. Over the next couple of minutes, the cameras capture several high-definition angles of you being [if diaper quest is 0]slapped in the face with a [manly-penis], your hair being pulled, your nipples being bitten, and fingers being forced inside your [fuckholes][otherwise]groped, spanked and even bitten[end if] while you writhe and snarl and pout.";
		add "a high quality video of you being angry at being [if diaper quest is 1]dickslapped and [end if]molested by [MMMT]" to LPVT;
		add 6 to LPVS;
	otherwise if player-numerical-response is 2:
		say "[variable custom style]'Come and get it, [if MN > 1][boy of M]s[otherwise if M is angelic adult baby slave]babe[otherwise if diaper quest is 1]if you dare[otherwise]stud[end if]!'[roman type][line break]You elegantly raise your arms into the air, and allow your [BreastDesc] and [if diaper quest is 0][fuckholes][otherwise][genitals][end if] to be fondled by [if MN > 1]strangers['][otherwise]this stranger's[end if] hands.[paragraph break][BigNameDesc of M] clicks [his of M] tongue and responds in kind.[line break][speech style of M]'This [if diaper quest is 0]is one fine piece of meat[otherwise]seems dry for now... But I wonder for how much longer[end if].'[roman type][line break][big he of M] gives your [if diaper quest is 0][AssDesc][otherwise]padded tushie[end if] a hard slap.[line break]You squeal, but make sure it's a playful squeal rather than an offended one.[line break][variable custom style]'Are you [if diaper quest is 0]ready to see me get fucked up[otherwise]trying to suggest I'm a big pathetic baby[end if]?'[roman type][line break]You ask loudly, while looking straight into the central camera[if the player is modest], and trying to hide how humiliated this is all making you feel[end if].";
		strongHumiliate;
		add "a high quality video of you allowing yourself to be molested and degraded by [MMMT]" to LPVT;
		add 8 to LPVS;
	otherwise:
		if player-numerical-response is 4 or player-numerical-response is 5:
			say "[variable custom style]'[if interracial-scene is true]Hi, I'm [NameBimbo], a dumb little white bitch[otherwise if watersports-scene is true]Hi, I'm [NameBimbo], and I'm a dirty little meat toilet[otherwise if M is bratty adult baby slave]Uh-oh, it looks like I'm going to be made into a little baby bitch[otherwise if M is angelic adult baby slave]Ooh, I've been waiting to do dirty diaper stuff with you all day[otherwise if diaper quest is 1]Ooh, I can't wait to be a good little baby bitch for you, Daddy[otherwise]I'm going to be such a dirty little whore for you[end if]~'[roman type][line break]You coo [if diaper quest is 0]to the cameras [end if]as the [if MN > 1][men of M] surround you[otherwise][man of M] approaches[end if].";
		if player-numerical-response is 4:
			say "You allow the [if MN > 1]strangers['][otherwise]this stranger's[end if] hands to explore your body, and soon have hands and fingers all over your [BreastDesc] and [if diaper quest is 0][fuckholes][otherwise][genitals] through your padding[end if].";
			add "a high quality video of you gleefully degrading yourself and allowing yourself to be molested by [MMMT]" to LPVT;
			add 10 to LPVS;
		otherwise:
			if diaper quest is 0, say "You quickly drop to your knees and take [if MN > 2]a [manly-penis] in each hand. You begin masturbating them both, and alternating sucking on the tip of each of the other two[otherwise if MN > 1]a [manly-penis] in each hand. You begin masturbating them both, and alternating sucking on the tip of each[otherwise][his of M] [manly-penis] in both hands. You guide the tip into your mouth and work the shaft with both hands[end if].";
			otherwise say "You quickly drop to your knees push your diapered butt towards [NameDesc of M], to let [him of M] get a few spanks in before the action gets going properly.";
			add "a high quality video of you gleefully degrading yourself and [if diaper quest is 0]masturbating[otherwise]presenting your diapered butt to get spanked by[end if] [MMMT]" to LPVT;
			add 12 to LPVS;
		if interracial-scene is true, say "[if player-numerical-response is 4]Soon, all four [men of M] have pulled their pants down, and you shudder as you discover[otherwise]It's only at this moment that you realise[end if] just how massive all four of these [manly-penis]s are - they're by far the biggest human penises you've ever seen![line break][variable custom style]Holy shit... Are these even going to fit inside me?![roman type][line break]";
		if player-numerical-response is 4 or player-numerical-response is 5:
			if diaper quest is 0, say "[variable custom style]'[if interracial-scene is true]Err, ah... oh god... I'm about to get fucked up by four giant black cocks[otherwise if watersports-scene is true]Yeah, I'm going to be such a nasty piss slut for you all[otherwise if gangbang-scene is true]A greedy slut like me loves four big cocks at a time, baby[otherwise]Mmm, get out your cock and stroke it while you watch me get treated like I deserve, baby[end if]!'[roman type][line break]";
			otherwise say "[variable custom style]'Uh-oh... I think I might need to go potty...'[roman type][line break]";
		say severeHumiliateReflect;
	check for arousal change;
	if player-escaped is false:
		now the stance of the player is 1;
		let PP be scene-type + player-numerical-response - a random number between 0 and 1;
		if PP < 0, now PP is 0;
		if PP > 8, now PP is 8;
		increase the player-points of P by PP;
		let STD2 be DED + a random number between -2 and the current-rank of ST;
		if STD2 < 0, now STD2 is 0;
		if STD2 > 4, now STD2 is 4;
		increase rival-points of P by STD + STD2;
		say "You glance at the screen in the corner, and see that your points have increased by [PP] to [the player-points of P]. You can't see [NameDesc of ST][']s points from here, but you can see that [he of ST] [if STD2 < 2]is acting very reluctant about what's happening to [him of ST] right now[otherwise if STD2 >= 3]seems fully and enthusiastically engaged in what's happening to [him of ST] right now[otherwise]looks like a rather passive participant in what's happening to [him of ST] right now[end if].";
		let F be asshole;
		let PP be 10;
		if the player is possessing a vagina and scene-type is not 3, now F is vagina;
		say "[paragraph break]Then you hear the robotic voice one more time.[line break][first custom style]'VIDEO THREE: [if diaper quest is 0]BOY-GIRL[otherwise if M is angelic baby slave]DIAPER SEX[otherwise if M is bratty baby slave]DIAPER FACESITTING[otherwise]DIAPER DISCIPLINE[end if] SCENE. EARN UP TO TEN PORNO POINTS DEPENDING ON YOUR OBEDIENCE AND LEWDNESS.'[roman type][line break]And before you know it, [if diaper quest is 0]there's a [manly-penis] lining up with your [variable F][otherwise if M is angelic baby slave][NameDesc of M] is climbing on top of you, and beginning to hump your diaper with [hers of M][otherwise if M is bratty baby slave][NameDesc of M] is climbing on top of you, and preparing to plonk [his of M] diaper on your face[otherwise]there's an arm wrapping around your neck to hold you still, and fingers pressing into your [genitals] through your padding[end if].";
		[Part 1a - Start of Sex]
		if M is angelic baby slave:
			say "[speech style of M]'Let's make each other feel good...'[roman type][line break]";
			reset multiple choice questions;
			set numerical response 0 to "Stay still";
			set numerical response 1 to "Hump your diaper into [hers of M]";
			set numerical response 2 to "Hump your diaper into [hers of M] and kiss [him of M]";
			compute multiple choice question;
			if player-numerical-response is 0:
				say "You refuse to play along. Of course, this doesn't actually stop [him of M] - [he of M] humps [his of M] diaper into your padded [genitals] anyway.";
				decrease PP by 2;
				passively stimulate vagina from M;
			otherwise if player-numerical-response is 1:
				say "You obediently hump your diaper into [hers of M].";
				decrease PP by a random number between 0 and 2;
				passively stimulate vagina from M times 2;
			otherwise:
				say "You passionately hump your diaper into [hers of M].[line break][variable custom style]'[if the player is a nympho]Ooh yes baby, I love the way your padding feels on mine[otherwise if the player is a pervert]Ooh yes baby, that feels good... Kiss me quick[otherwise]Kiss me already[end if]!'[roman type][line break]And then your lips touch, and a moment later, your tongues are even more interlocked than your diapers. [moderateHumiliateReflect]";
				if the player is not a nympho, decrease PP by a random number between 0 and 1;
				passively stimulate vagina from M times 2;
				passively stimulate face from M times 2;
		otherwise if M is bratty baby slave:
			say "[speech style of M]'Give it a kiss. Since you clearly love diapers so much.'[roman type][line break]";
			reset multiple choice questions;
			set numerical response 0 to "Don't kiss [his of M] diaper";
			set numerical response 1 to "Give [his of M] diaper a quick peck";
			set numerical response 2 to "Passionately kiss [his of M] diaper";
			compute multiple choice question;
			if player-numerical-response is 0:
				say "You refuse to play along. Of course, this doesn't actually stop [him of M] dropping [his of M] diaper onto your face anyway.[line break][variable custom style]MMMMPH![roman type][line break]";
				decrease PP by 2;
			otherwise if player-numerical-response is 1:
				say "You obediently raise your head and give [his of M] diaper a delicate peck. It feels weirdly perverse. [moderateHumiliateReflect]";
				decrease PP by a random number between 0 and 2;
				say "Chuckling derisively, [NameDesc of M] chooses this moment to drop down all the way, engulfing your face in [his of M] diaper.";
			otherwise:
				say "[variable custom style]'[if the player is a nympho]Please madam, I know I am much more lowly and inferior than you, but I am enraptured by your beauty and scent... Would you do me the honour of granting me a kiss?'[otherwise if the player is a pervert]Ooh yes cutie, you're looking fine today... Kiss me quick!'[otherwise]Kiss me already, darling!'[end if][roman type][line break]You talk to [his of M] diaper as if it was a person, before starting to passionately snog the crotch of [his of M] diaper.[severeHumiliateReflect]";
				if the player is not a nympho, decrease PP by a random number between 0 and 1;
				say "Chuckling derisively, [NameDesc of M] chooses this moment to drop down all the way, engulfing your face in [his of M] diaper.";
		otherwise if diaper quest is 1:
			say "[speech style of M]'Be a good [boy of the player] and tell Daddy how much you love your diapers.'[roman type][line break][BigNameDesc of M] begins seriously masturbating you through your diaper.";
			passively stimulate vagina from M times 2;
			check for arousal change;
			reset multiple choice questions;
			set numerical response 0 to "Stay silent";
			set numerical response 1 to "'I love my diapers...'";
			set numerical response 2 to "'Ooh Daddy, I love it when you touch me through my Pampies... But there's something missing, don't you agree?'";
			compute multiple choice question;
			if player-numerical-response is 0:
				say "You refuse to play along. Of course, this doesn't actually stop [him of M] - [he of M] rubs your padded [genitals] anyway.";
				passively stimulate vagina from M;
				decrease PP by 2;
			otherwise if player-numerical-response is 1:
				say moderateHumiliateReflect;
				say "[BigNameDesc of M] seems to approve, and rubs even more passionately.";
				decrease PP by a random number between 0 and 2;
				passively stimulate vagina from M times 2;
			otherwise:
				say strongHumiliateReflect;
				say "[BigNameDesc of M] seems delighted by that, and rubs even more passionately.";
				passively stimulate vagina from M times 2;
		otherwise:
			say "[speech style of M]'[if the player is possessing a vagina and scene-type is 3]That's right, no mercy for you today. You're only getting fucked in the ass, slut. Now spread[otherwise]Spread[end if] your legs like a good little whore.'[roman type][line break]";
			reset multiple choice questions;
			set numerical response 0 to "Don't spread your legs";
			set numerical response 1 to "Spread your legs";
			set numerical response 2 to "Spread your legs and beg for it";
			compute multiple choice question;
			if player-numerical-response is 0:
				say "You refuse to play along. Of course, this doesn't actually stop [him of M] - [he of M] spreads your cheeks and shoves [his of M] [manly-penis] in your [variable F] anyway.";
			otherwise if player-numerical-response is 1:
				say "You obediently spread your legs.";
				decrease PP by a random number between 0 and 2;
			otherwise:
				say "You obediently spread your legs.[line break][variable custom style]'[if the player is a nympho]Ooh yes Daddy, fill my greedy, slutty hole with your big juicy meat rod[otherwise if the player is a pervert]Yes, fuck me, big [boy of M][otherwise]Go on, do it already[end if]!'[roman type][line break][moderateHumiliateReflect]";
				if the player is not a nympho, decrease PP by a random number between 0 and 1;
			say "[big his of M] [if interracial-scene is true]giant, oversized [manly-penis] stretches your poor [variable F] to new limits as it forces its way inside[otherwise]sizeable [manly-penis] makes you feel nice and full as it pushes its way deep inside[end if].";
			now M is penetrating F;
			ruin F;
			if scene-type is 3:
				say "[first custom style]'I'm your Master, and you're my little anal slave bitch, got it?'[roman type][line break][BigNameDesc of M] growls into your ear as [he of M] sodomizes you.";
				set numerical response 1 to "'You'll never break me, motherfucker!'";
				set numerical response 2 to "'You're the boss, I get it!'";
				set numerical response 3 to "'You're my Master, and I'm your pathetic little anal s-slave b-bitch!'";
				set numerical response 0 to "Don't respond";
				compute multiple choice question;
				if player-numerical-response is 0:
					decrease PP by 1;
					say "[first custom style]'You clearly need further TRAINING!'[roman type][line break]Seemingly angered by your lack of response, [NameDesc of M] grabs your hair, yanking your head back into a painful position.";
					PainUp 10;
				otherwise if player-numerical-response is 1:
					decrease PP by 1;
					say "[first custom style]'Hahaha, a feisty one, my favourite! Let's see if you still feel the same after I'm done with your ass!'[roman type][line break]Your resistance seems to have spurred [him of M] to be even rougher with your [asshole].";
					ruin asshole;
				otherwise if player-numerical-response is 2:
					decrease PP by a random number between 0 and 1;
					say moderateHumiliateReflect;
					say "[BigNameDesc of M] growls. It seems like [he of M] decides to accept that response, for now.";
				otherwise:
					say severeHumiliateReflect;
					say "[BigNameDesc of M] seems happy with that, and focuses on fucking your [asshole].";
		check for arousal change;
		[Part 1b - Sex with multiple men / diaper urinal]
		if diaper quest is 0:
			repeat with MM running through ultimate-lesson-actors:
				if face is not actually occupied:
					say "[BigNameDesc of MM] [one of]rubs[or]joins in rubbing[stopping] [his of MM] [manly-penis] up against your [LipDesc].";
					reset multiple choice questions;
					set numerical response 0 to "Keep your lips shut";
					set numerical response 1 to "Lick it";
					set numerical response 2 to "Suck it";
					compute multiple choice question;
					if player-numerical-response is 0:
						say "You purse your lips and focus on being fucked.";
						decrease PP by a random number between 0 and 1;
					otherwise if player-numerical-response is 1:
						say "You give it a loving lick. [moderateHumiliateReflect]";
						if a random number between 0 and 1 is 1, decrease PP by a random number between 0 and 1;
					otherwise:
						say "You smile, open your mouth, and accept [his of MM] [manly-penis] inside. You make a happy moaning noise as you begin to suck, all while still being bounced on [NameDesc of M][']s [manly-penis]. [strongHumiliateReflect]";
						now MM is penetrating face;
				otherwise if a random number between 0 and 1 is 1:
					say "[BigNameDesc of MM] pushes [his of MM] [manly-penis] into your hand.";
					reset multiple choice questions;
					set numerical response 0 to "Let go";
					set numerical response 1 to "Let [him of MM] fuck your fist";
					set numerical response 2 to "Jack [him of MM] off";
					compute multiple choice question;
					if player-numerical-response is 0:
						say "You purse your lips and focus on being fucked.";
						decrease PP by 1;
					otherwise if player-numerical-response is 1:
						say "You let [him of MM] pump [his of MM] [manly-penis] using your hand. [slightHumiliateReflect]";
						decrease PP by a random number between 0 and 1;
					otherwise:
						say "You do your best to masturbate [him of MM] while getting fucked. [moderateHumiliateReflect]";
		otherwise if M is ultimate-lesson-actor and diaper swapping >= 2:
			now the bladder of M is 1000;
			say "[BigNameDesc of M] takes out [his of M] [manly-penis] and prepares to urinate inside your diaper.";
			reset multiple choice questions;
			set numerical response 1 to "Completely refuse to help [him of M] degrade you like this.";
			set numerical response 2 to "Pull the waistband of your diaper forward for [NameDesc of M], to make it easier for [him of M] to piss inside it.";
			set numerical response 3 to "Hold [NameDesc of M][']s [manly-penis] for [him of M].";
			set numerical response 4 to "Hold [NameDesc of M][']s [manly-penis] AND pull the waistband of your diaper forward for [him of M].";
			compute multiple choice question;
			if player-numerical-response is 1:
				now diaper-invasion-waistband is false;
				now diaper-invasion-hold is false;
				say DiaperUrinalResistance of M;
				say DiaperUrinalResistanceFlav of M;
				decrease PP by 2;
			otherwise if player-numerical-response is 2:
				now diaper-invasion-waistband is true;
				now diaper-invasion-hold is false;
				say DiaperUrinalWaistbandSubmission of M;
				say DiaperUrinalWaistbandSubmissionFlav of M;
				if grossness addiction of the player < 11, say strongHumiliateReflect;
				decrease PP by 1;
			otherwise if player-numerical-response is 3:
				now diaper-invasion-waistband is false;
				now diaper-invasion-hold is true;
				say DiaperUrinalHoldSubmission of M;
				say DiaperUrinalHoldSubmissionFlav of M;
				if the player is not a nympho, say strongHumiliateReflect;
				SlowSexAddictUp 1;
				decrease PP by 1;
			otherwise:
				now diaper-invasion-waistband is true;
				now diaper-invasion-hold is true;
				say DiaperUrinalFullSubmission of M;
				say DiaperUrinalFullSubmissionFlav of M;
				if grossness addiction of the player < 11 or the player is not a nympho, say severeHumiliateReflect;
				SexAddictUp 1;
			compute diaper urinal peeing of M;
			compute diaper urinal image of M;
		check for arousal change;
		[Part 2 - Escalation]
		if diaper quest is 0:
			if scene-type is 3:
				say "Suddenly, [NameDesc of M] grabs you by the hair and throws you onto the ground. [big his of M] [manly-penis] is ripped from your [asshole] with a sudden POP.";
				ruin asshole;
				say "[big he of M] sits on the side of the bed and looks down at you darkly.";
				say "[speech style of M]'Clean my [if grossness fetish > 0]feet[otherwise]balls[end if], slave.'[roman type][line break]";
				reset multiple choice questions;
				set numerical response 0 to "'Fuck you, clean them yourself.'";
				set numerical response 1 to "Kiss [his of M] [if grossness fetish > 0]feet[otherwise]balls[end if]";
				set numerical response 2 to "Passionately lick and suck [his of M] [if grossness fetish > 0]feet[otherwise]balls[end if] clean";
				compute multiple choice question;
				if player-numerical-response is 0:
					decrease PP by 2;
					say "[BigNameDesc of M] shrugs.[line break][speech style of M]'Fine. It's your asshole's funeral.'[roman type][line break][big he of M] lifts you back onto the bed and shoves [his of M] [manly-penis] back deep down into where the sun doesn't shine.";
					ruin asshole;
				otherwise if player-numerical-response is 1:
					say "You crawl over to [NameDesc of M] and give [his of M] [if grossness fetish > 0]dirty feet[otherwise]wrinkly nutsack[end if] a plastering of polite kisses and even a couple of gentle [if grossness fetish > 0]toe [end if]sucks. [BigNameDesc of M] watches silently and masturbates. [strongHumiliateReflect]";
					decrease PP by a random number between 0 and 1;
				otherwise:
					say "You crawl over to [NameDesc of M] and give [his of M] [if grossness fetish > 0]dirty feet[otherwise]wrinkly nutsack[end if] a wet session of sloppy tongue worship. [BigNameDesc of M] orders you to keep your hands behind your back at at all times, which you obey. [if grossness fetish > 0][big he of M] even raises [his of M] feet into the air to allow you to lick the soles, which you obediently do. [end if][severeHumiliateReflect]";
					if grossness fetish is 1, TasteGrossOut 6;
			otherwise:
				repeat with MM running through ultimate-lesson-actors:
					if MM is penetrating F:
						say "[BigNameDesc of MM] fucks your [variable F] as hard as [he of MM] can!";
						ruin F;
						reset multiple choice questions;
						set numerical response 1 to "'Stop it, you're being too rough!'";
						set numerical response 2 to "'Fuck, yes, fuck!'";
						set numerical response 3 to "'Ooh yes, fuck me harder Daddy!'";
						compute multiple choice question;
						if player-numerical-response is 1:
							decrease PP by 2;
							say "[BigNameDesc of MM] just chuckles.[line break][speech style of MM]'We're just getting started!'[roman type][line break]";
						otherwise if player-numerical-response is 2:
							say slightHumiliateReflect;
							decrease PP by a random number between 0 and 1;
						otherwise:
							say moderateHumiliateReflect;
							say "[BigNameDesc of MM] is spurred on, and tries [his of MM] best to increase the pace even more!";
							ruin F;
					otherwise:
						if MM is M and (F is vagina or a2m fetish > 0): [the first to penetrate]
							say "[BigNameDesc of M] brings [his of M] [manly-penis] round to your face.[line break][speech style of M]'Suck it.'[roman type][paragraph break][variable custom style]That's just been in my [F]...[roman type][line break]";
							reset multiple choice questions;
							set numerical response 1 to "Don't suck it";
							set numerical response 2 to "Suck it";
							compute multiple choice question;
							if player-numerical-response is 1:
								decrease PP by 1;
								say "[BigNameDesc of M] tuts, and settles for slapping you in the face with it.";
							otherwise if player-numerical-response is 2:
								say "You open wide and accept [his of M] [manly-penis], covered in your [if F is asshole]ass[otherwise]pussy[end if] juices, into your mouth.";
								say severeHumiliateReflect;
								if F is asshole, TasteGrossOut 7;
								otherwise TasteGrossOut 3;
						otherwise if a random number between 1 and 2 is 1:
							let PM be a random monster penetrating F;
							say "[BigNameDesc of MM] taps [NameDesc of PM] on the shoulder, and takes [his of MM] place fucking your [variable F]! Your poor hole is now being pumped with renewed vigour.";
							dislodge PM;
							now MM is penetrating F;
							ruin F;
						otherwise if watersports-scene is true and a random number between 1 and 2 is 1:
							say "[BigNameDesc of MM] points [his of MM] [manly-penis] at your face and lets out a stream of [urine].";
							reset multiple choice questions;
							set numerical response 1 to "Keep your mouth closed";
							set numerical response 2 to "Open your mouth but let it run out";
							set numerical response 3 to "Drink it all down";
							compute multiple choice question;
							if player-numerical-response is 1:
								decrease PP by a random number between 0 and 1;
								say "[BigNameDesc of M] chuckles as your face gets completely drenched in [his of M] [urine].";
								compute urine hitting face;
								GrossOut 3;
							otherwise if player-numerical-response is 2:
								if a random number between 0 and 1 is 1, decrease PP by a random number between 0 and 1;
								say "You hold your mouth open and let the [urine] splash against it like a water feature. [strongHumiliateReflect]";
								compute slightly addictive tasting of urine;
							otherwise:
								say "You obediently gulp it all down. [severeHumiliateReflect]";
								DrinkPiss from M;
						otherwise:
							say "[BigNameDesc of MM] [one of]gropes[or]molests[or]fondles[cycling] your [one of][BreastDesc][or][AssDesc][cycling] as [he of MM] masturbates.";
		otherwise:
			say "Suddenly, [NameDesc of M] puts a lot of pressure on your belly, trying to make you soil yourself!";
			check sudden expulsion with reason "The pressure is too much,";
		check for arousal change;
		[Part 3 - Intense]
		if diaper quest is 0:
			if scene-type is 3:
				say "Next, [NameDesc of M] drags you over to one edge of the bed, where you can now see some wristcuffs await you. There's nothing you can do to stop yourself being bound to the bed, facedown.[line break][speech style of M]'I'm going to spank you now. Make sure to count and thank me after each spank.'[roman type][line break]";
				reset multiple choice questions;
				set numerical response 1 to "Refuse";
				set numerical response 2 to "Obey";
				compute multiple choice question;
				if player-numerical-response is 1:
					decrease PP by 2;
					say "[BigNameDesc of M] spanks you, and when [he of M] discovers that you don't intend to respond, [he of M] begins spanking you even harder.[line break][italic type]SMACK SMACK SMACK[roman type][line break]";
					PainUp 25;
					say "[big he of M][']s still going!";
					reset multiple choice questions;
					set numerical response 1 to "Beg for mercy";
					set numerical response 2 to "Stay resolute";
					compute multiple choice question;
					if player-numerical-response is 1:
						say "[variable custom style]'MERCY! MERCY! I'm sorry, I'm sorry!'[paragraph break][speech style of M]'THANK ME FOR PUNISHING YOUR ASS!'[paragraph break][variable custom style]'THANK YOU FOR PUNISHING MY ASS!'[roman type][line break]You squeal, struggling to hold back tears. [strongHumiliateReflect]";
					otherwise:
						say "[italic type]SMACK SMACK SMACK[roman type][line break]";
						PainUp 25;
						BodyRuin 3;
						say "Tears well up in your eyes, and [NameDesc of M] knows that [he of M] has left [his of M] mark. But despite how battered and bruised you are, and how much pain you're in, you still feel proud of yourself for not caving.";
						dignify 3000;
				otherwise:
					say "[italic type]SMACK SMACK SMACK[line break][variable custom style]'One! Thank you! Two! Thank you! Three! Thank you!'[roman type][line break]In the end [he of M] gives you ten hard spanks, leaving your [AssDesc] red and you feeling fully humiliated.";
					PainUp 15;
					say severeHumiliateReflect;
			otherwise:
				if scene-type is 1:
					say "[italic type]PLAP PLAP PLAP[roman type][line break][BigNameDesc of M] keeps fucking your [variable F] with impressive stamina and energy.";
					ruin F times 2;
				otherwise:
					repeat with MM running through ultimate-lesson-actors:
						if MM is not penetrating F:
							if asshole is not actually occupied:
								say "[BigNameDesc of MM] pushes [his of MM] [manly-penis] into your [asshole]! You're getting double-stuffed![line break][variable custom style]Aaaah![roman type][line break]";
								dislodge MM;
								now MM is penetrating asshole;
								ruin asshole;
							otherwise if the player is possessing a vagina and vagina is not actually occupied:
								say "[BigNameDesc of MM] pushes [his of MM] [manly-penis] into your [vagina]! You're getting double-stuffed![line break][variable custom style]Aaaah![roman type][line break]";
								dislodge MM;
								now MM is penetrating vagina;
								ruin vagina;
							otherwise if face is not actually occupied:
								say "[BigNameDesc of MM] pushes [his of MM] [manly-penis] into your gasping mouth[if vagina is actually occupied]! You're getting TP'd[end if]![line break][variable custom style]Aaaah![roman type][line break]";
								dislodge MM;
								now MM is penetrating face;
							otherwise if the largeness of breasts > 3:
								say "[BigNameDesc of MM] decides to fuck your [BreastDesc] as well!";
								dislodge MM;
								now MM is penetrating breasts;
				say "[speech style of M]'Tell [if MN > 1]us[otherwise]me[end if] how much you love it, bitch!'[roman type][line break]";
				reset multiple choice questions;
				set numerical response 1 to "'Fuck you!'";
				set numerical response 2 to "'It feels so good!'";
				set numerical response 3 to "'Fuck fuck fuck I love your thick [manly-penis][if MN > 1]s[end if] so much! Yes yes yes!'";
				set numerical response 4 to "'[if interracial-scene is true]I'M A DIRTY FUCKING WHITE BITCH WHO'S ADDICTED TO YOUR [BlackCock in upper case]! Fuck me up so hard that my stretched-out holes are ruined. Those inferior little white [manly-penis]s will never be able to satisfy me again[otherwise]Oh fuck, I'm such a dirty fucking slut, I can't get enough of your [manly-penis]! Fuck me harder, fuck me up, claim me as your pathetic cock-addicted fuckdoll[end if]!'";
				compute multiple choice question;
				if player-numerical-response is 1:
					decrease PP by 1;
					say "[BigNameDesc of M] just chuckles.[line break][speech style of M]'As you wish.'[roman type][line break]";
				otherwise if player-numerical-response is 2:
					decrease PP by a random number between 0 and 1;
					say slightHumiliateReflect;
				otherwise if player-numerical-response is 3:
					if a random number between 0 and 1 is 1, decrease PP by a random number between 0 and 1;
					say moderateHumiliateReflect;
				otherwise:
					say strongHumiliateReflect;
		otherwise:
			if M is bratty adult baby slave:
				say "[speech style of M]'Say, wouldn't this be more fun if I [if diaper messing >= 7]messed[otherwise]wet[end if] my diaper?'[roman type][line break]";
				reset multiple choice questions;
				set numerical response 1 to "Furiously shake your head no";
				set numerical response 2 to "Mumble uncertainly";
				set numerical response 3 to "Nod in eager agreement";
				compute multiple choice question;
				if player-numerical-response is 1:
					say "[speech style of M]'Too bad!'[roman type][line break]";
					decrease PP by 2;
				otherwise if player-numerical-response is 2:
					say "[speech style of M]'Sorry what's that? I can't hear you! I'm going to have to assume that was a yes.'[roman type][line break][moderateHumiliateReflect]";
					decrease PP by 1;
				otherwise:
					say "[BigNameDesc of M] cackles.[line break][speech style of M]'Holy shit, you're such a gross, nasty bitch.'[roman type][line break][severeHumiliateReflect]";
				if diaper messing >= 7:
					if the player is not enjoying messy facesits:
						let TXT be substituted form of "As you scrunch up with [if the grossness addiction of the player < messyDiaperFacesitGrossnessLevel]horror[otherwise]trepidation[end if],";
						FearUp (messyDiaperFacesitEnjoymentLevel - the grossness addiction of the player) with reason TXT;
					otherwise:
						say "[if the player is a nympho]You[otherwise]Despite your better judgement, you[end if] feel yourself getting turned on.";
					compute MessyDiaperFacesitExpulsion of M;
				otherwise:
					if the player is not tolerating wet facesits:
						let TXT be substituted form of "As you flinch with trepidation,";
						FearUp (wetDiaperFacesitGrossnessLevel - the grossness addiction of the player) with reason TXT;
					compute WetDiaperFacesitExpulsion of M;
			otherwise:
				say "[BigNameDesc of M] does [his of M] best to make you cum!";
				reset multiple choice questions;
				set numerical response 1 to "Do your best to avoid cumming";
				set numerical response 2 to "Let what happens happen";
				compute multiple choice question;
				if player-numerical-response is 1:
					passively stimulate vagina from M;
					decrease PP by 1;
				otherwise:
					stimulate vagina from M;
					if refractoryperiod > 0, say severeHumiliateReflect;
		check for arousal change;
		[Part 4 - Cumshot]
		if diaper quest is 0:
			if a random number between 1 and 2 is bukkake fetish:
				say "Finally finished fucking you, [if MN > 1]the [MN] [men of M][otherwise][NameDesc of M][end if] [if MN > 1]pull out of your various orifices and [otherwise if scene-type is not 3]pulls out and [end if][if MN > 1]gather around[otherwise]goes around to[end if] your face.";
				reset multiple choice questions;
				set numerical response 0 to "Turn away";
				set numerical response 1 to "Hold your face steady";
				set numerical response 2 to "Open your mouth";
				set numerical response 3 to "Open your mouth, loll out your tongue, hold up peace signs, and keep your eyes open";
				compute multiple choice question;
				if player-numerical-response is 0:
					decrease PP by a random number between 1 and 2;
					say "You do your best to turn away and prevent as much [semen] as possible from getting near your eyes, nose or lips. You mostly succeed, but it still gets all in your hair and on your cheeks.";
					AnnouncedSquirt semen on hair by (MN * the girth of M);
				otherwise if player-numerical-response is 1:
					decrease PP by a random number between 0 and 1;
					say "You close your eyes and allow [if MN > 1]the [men of M][otherwise][NameDesc of M][end if] to paint your face with their [semen].";
					AnnouncedSquirt semen on face by (MN * the girth of M);
					say strongHumiliateReflect;
				otherwise if player-numerical-response is 2:
					if a random number between 0 and 1 is 1, decrease PP by a random number between 0 and 1;
					say "You close your eyes, open your mouth, and allow [if MN > 1]the [men of M][otherwise][NameDesc of M][end if] to paint your face with their [semen]. ";
					AnnouncedSquirt semen on face by (MN * the girth of M);
					FaceFill semen by 2;
					say "Not only do you have a face plastered with jizz, but you also have a [MouthfulDesc].";
					say severeHumiliateReflect;
				otherwise:
					say "You perform the perfect duty of the ultimate bukkake queen, allowing yourself to be plastered while striking a degrading pose.";
					FaceFill semen by 2;
					AnnouncedSquirt semen on face by (MN * the girth of M);
					say "As you do your best to keep your eyes open even as ropes of [semen] surge towards your face, you inevitably get some in your eye, which stings painfully. All in a day's work for a dedicated porn star, you suppose.";
					PainUp 10;
					say obsceneHumiliateReflect;
			otherwise:
				repeat with MM running through ultimate-lesson-actors:
					let O be a random orifice penetrated by MM;
					if O is an orifice:
						say "[speech style of MM]'[one of]Take this, you whore[or]Get ready bitch, it's coming[or]Fuck yes, I'm cumming, you slut[or]Take my cum, you nasty skank[in random order]!'[roman type][line break][BigNameDesc of M] ejaculates inside your [variable O]!";
						if O is asshole:
							AssFill (semen load of MM);
						otherwise if O is vagina:
							PussyFill (semen load of MM);
						otherwise:
							FaceFill semen by (semen load of MM);
					otherwise:
						let MMA be a random ultimate-lesson-actor penetrating asshole;
						say "[speech style of MM]'[one of]Fuck, I'm about to cum[or]Let me fill this bitch up[in random order]!'[roman type][line break][BigNameDesc of MM] [if MMA is monster]taps on [NameDesc of MMA][']s shoulder and gets [him of MMA] to pull out, so that [he of MM] can take [his of MM] place. And just in time - because as soon as [he of MM] gets it inside, [he of MM] is filling your [asshole] with [his of MM] [semen]!";
						dislodge MMA;
						now MM is penetrating asshole;
						AssFill (semen load of MM);
		otherwise:
			if M is bratty adult baby slave:
				compute ContinuedDiaperFacesit of M;
				if diaper messing >= 7, cutshow Figure of bratty adult baby slave facesit messy;
				otherwise cutshow Figure of bratty adult baby slave facesit wet;
			otherwise if baby-medium-diaper is clean:
				say "[speech style of M]'I can't believe you're still dry!'[roman type][line break]";
				reset multiple choice questions;
				set numerical response 1 to "Shrug";
				set numerical response 2 to "Purposefully wet yourself";
				if diaper messing >= 4, set numerical response 3 to "Purposefully wet and mess yourself";
				compute multiple choice question;
				if player-numerical-response is 1:
					decrease PP by a random number between 1 and 2;
				otherwise if player-numerical-response is 2:
					say "You release your hold on your bladder, and soil your diaper for the cameras.[line break][speech style of M]'Oopsie, looks like I spoke too soon!'[roman type][line break][BigNameDesc of M] laughs, as [he of M] strokes your warm, swelling padding.";
					AnnouncedExpel urine on baby-medium-diaper by the bladder of the player;
					now the bladder of the player is 0;
					say strongHumiliateReflect;
					if diaper messing >= 4, decrease PP by a random number between 0 and 1;
				otherwise if player-numerical-response is 2:
					say "You release your hold on your bladder and bowels, and mess your diaper for the cameras.[line break][speech style of M]'Oopsie, looks like I spoke too soon!'[roman type][line break][BigNameDesc of M] laughs, as [he of M] strokes your warm, swelling padding.";
					AnnouncedExpel urine on baby-medium-diaper by the bladder of the player;
					now the bladder of the player is 0;
					MessUp baby-medium-diaper by rectum;
					reset rectum;
					say severeHumiliateReflect;
		check for arousal change;
		[Part 5 - Final Humiliation]
		if diaper quest is 0:
			if watersports-scene is true:
				if a2m fetish >= 2:
					let MM be a random monster penetrating asshole;
					if MM is nothing: [just in case something's gone weird]
						now MM is M;
						now MM is penetrating asshole;
					say "[BigNameDesc of MM] positions just the tip of [his of MM] [manly-penis] inside your [asshole], and then a warm, heavy feeling begins to flood inside you.[line break][variable custom style][he of MM][']s pissing in my ass![roman type][line break]Within a few short moments, the pressure has become too much, and you desperately need it to stop, and begin to exit rather than enter you![paragraph break][BigNameDesc of MM] suddenly pulls out, and instantly a rush of [urine] floods out of your [asshole] in a big gush.[line break][variable custom style]'Aaaaaah!'[roman type][paragraph break]What you didn't know, but find out immediately after, is that the group were holding a large wine glass in front of your [asshole] as you expelled your [urine] enema. And now a glass of ass-piss is being brought towards your lips...[line break][speech style of MM]'Here, have a nice refreshing drink, straight from the tap...'[roman type][line break]";
					reset multiple choice questions;
					set numerical response 0 to "Turn away";
					set numerical response 1 to "Sip from the glass and spit it out";
					set numerical response 2 to "Drink one mouthful";
					set numerical response 3 to "Down the whole glass";
					compute multiple choice question;
					if player-numerical-response is 0:
						decrease PP by a random number between 1 and 2;
						say "You clench your mouth shut and turn away, refusing to even smell the foul concoction.[paragraph break][speech style of MM]'Spoilsport!'[roman type][line break]The disappointed [man of MM] takes the glass and pours it over your head in retribution. All you can do is try not to let them see how much this has [if the player is not a nympho]disgusted you and [end if]pissed you off.";
						AnnouncedSquirt urine on hair by 15;
					otherwise if player-numerical-response is 1:
						decrease PP by 1;
						say "You try taking a sip. It tastes just as foul as you expected.";
						TasteGrossOut 10;
						say "You quickly spit it out, [if the grossness addiction of the player >= 17]hoping that anyone who watches the video won't be able to tell that you're a depraved degenerate that actually loves the taste[otherwise]desperately hoping that the taste won't linger on your tongue[end if]. [strongHumiliateReflect]";
						UrinePuddleUp 2;
					otherwise if player-numerical-response is 2:
						if a random number between 0 and 1 is 1, decrease PP by a random number between 0 and 1;
						say "You try sipping a mouthful. It tastes just as foul as you expected. But you still [if the grossness addiction of the player >= 19]happily[otherwise]force yourself to[end if] gulp it down.";
						TasteGrossOut 12;
						StomachUrineUp 4;
						say severeHumiliateReflect;
					otherwise:
						say "You face the cameras, raise the glass as if you're toasting, and then start pouring it down the hatch. The [men of M] all cheer and clap.";
						TasteGrossOut 12;
						StomachUrineUp 12;
						say obsceneHumiliateReflect;
				otherwise:
					say "The four [men of M] gather round your face... And what comes next is truly sordid. Four powerfut, hot streams of [urine] surge towards your face.";
					reset multiple choice questions;
					set numerical response 0 to "Turn away";
					set numerical response 1 to "Hold your face steady";
					set numerical response 2 to "Open your mouth";
					set numerical response 3 to "Open your mouth and drink as much as possible";
					compute multiple choice question;
					if player-numerical-response is 0:
						decrease PP by a random number between 1 and 2;
						say "You do your best to turn away and prevent as much [urine] as possible from getting near your eyes, nose or lips. But it's hopeless - your hair and face and body still get drenched in the stuff.";
						AnnouncedSquirt urine on hair by 50;
					otherwise if player-numerical-response is 1:
						decrease PP by a random number between 0 and 1;
						say "You close your eyes and allow [if MN > 1]the [men of M][otherwise][NameDesc of M][end if] to desecrate your face with their [urine].";
						AnnouncedSquirt urine on face by 50;
						say severeHumiliateReflect;
					otherwise if player-numerical-response is 2:
						if a random number between 0 and 1 is 1, decrease PP by a random number between 0 and 1;
						say "You close your eyes, open your mouth, and allow [if MN > 1]the [men of M][otherwise][NameDesc of M][end if] to use your mouth as a urinal. ";
						AnnouncedSquirt urine on face by 50;
						FaceFill urine by 2;
						say "Not only are you drenched in piss, but you also have a [MouthfulDesc].";
						say obsceneHumiliateReflect;
					otherwise:
						say "You glug and chug mouthful after mouthful of [urine]. But it's coming so thick and fast, that for every mouthful you swallow, several more coat your face and body.";
						AnnouncedSquirt urine on face by 40;
						StomachUrineUp 15;
						say obsceneHumiliateReflect;
						say "By the end of your sordid display, you feel extremely bloated, stomach full up to the brim with these guys['] [urine].";
			otherwise if a2m fetish >= 2 and the semen volume of belly > 0:
				say "[BigNameDesc of M] grabs your hair and guides you to squat over a champagne flute.[line break][speech style of M]'Push that anal creampie out, slut.'[roman type][paragraph break][big he of M] spreads your sphincter open wide, removing any choice you have in the matter - the [semen] in your ass comes oozing back out, collecting in the cup like some sort of sordid cum and ass-juice cocktail. And you know what's coming next. The champagne flute is brought round to your lips...";
				now the semen volume of belly is 0;
				now temporaryYesNoBackground is figure of wench cutscene 9;
				reset multiple choice questions;
				set numerical response 0 to "Turn away";
				set numerical response 1 to "Sip from the glass and spit it out";
				set numerical response 2 to "Drink one mouthful";
				set numerical response 3 to "Down the whole glass";
				compute multiple choice question;
				now temporaryYesNoBackground is figure of small image;
				if player-numerical-response is 0:
					decrease PP by a random number between 1 and 2;
					say "You clench your mouth shut and turn away, refusing to even smell the foul concoction.[paragraph break][speech style of M]'Spoilsport!'[roman type][line break]The disappointed [man of M] takes the glass and pours it over your head in retribution. All you can do is try not to let them see how much this has [if the player is not a nympho]disgusted you and [end if]pissed you off.";
					AnnouncedSquirt semen on hair by 4;
				otherwise if player-numerical-response is 1:
					decrease PP by 1;
					say "You try taking a sip. It tastes just as foul as you expected.";
					TasteGrossOut 8;
					say "You quickly spit it out, [if the grossness addiction of the player >= 15]hoping that anyone who watches the video won't be able to tell that you're a depraved degenerate that actually loves the taste[otherwise]desperately hoping that the taste won't linger on your tongue[end if]. [strongHumiliateReflect]";
					SemenPuddleUp 2;
				otherwise if player-numerical-response is 2:
					if a random number between 0 and 1 is 1, decrease PP by a random number between 0 and 1;
					say "You try sipping a mouthful. It tastes just as foul as you expected. But you still [if the grossness addiction of the player >= 17]happily[otherwise]force yourself to[end if] gulp it down.";
					TasteGrossOut 10;
					StomachSemenUp 2;
					say severeHumiliateReflect;
				otherwise:
					say "You face the cameras, raise the glass as if you're toasting, and then start pouring it down the hatch. The [men of M] all cheer and clap.";
					TasteGrossOut 12;
					StomachSemenUp 4;
					say obsceneHumiliateReflect;
			otherwise if the semen volume of vagina > 0 and a random number between 1 and 2 is 1:
				say "[BigNameDesc of M] grabs your hair and guides you to squat over a champagne flute.[line break][speech style of M]'Push that creampie out, slut.'[roman type][paragraph break][big he of M] spreads your [vagina] open wide, removing any choice you have in the matter - the [semen] inside comes oozing back out, collecting in the cup like some sort of sordid cum and pussy-juice cocktail. And you know what's coming next. The champagne flute is brought round to your lips...";
				now the semen volume of vagina is 0;
				now temporaryYesNoBackground is figure of wench cutscene 9;
				reset multiple choice questions;
				set numerical response 0 to "Turn away";
				set numerical response 1 to "Sip from the glass and spit it out";
				set numerical response 2 to "Drink one mouthful";
				set numerical response 3 to "Down the whole glass";
				compute multiple choice question;
				now temporaryYesNoBackground is figure of small image;
				if player-numerical-response is 0:
					decrease PP by a random number between 1 and 2;
					say "You clench your mouth shut and turn away, refusing to even smell the gross creampie.[paragraph break][speech style of M]'Spoilsport!'[roman type][line break]The disappointed [man of M] takes the glass and pours it over your head in retribution. All you can do is try not to let them see how much this has [if the player is not a nympho]disgusted you and [end if]pissed you off.";
					AnnouncedSquirt semen on hair by 4;
				otherwise if player-numerical-response is 1:
					decrease PP by 1;
					say "You try taking a sip. It tastes just as cringeworthy as you expected.";
					TasteGrossOut 3;
					say "You quickly spit it out, [if the grossness addiction of the player >= 10]hoping that anyone who watches the video won't be able to tell that you're a depraved degenerate that actually loves the taste[otherwise]desperately hoping that the taste won't linger on your tongue[end if]. [moderateHumiliateReflect]";
					SemenPuddleUp 2;
				otherwise if player-numerical-response is 2:
					if a random number between 0 and 1 is 1, decrease PP by a random number between 0 and 1;
					say "You try sipping a mouthful. It tastes just as weird as you expected - a gross mix of [semen] and your own pussy juices. But you still [if the grossness addiction of the player >= 11]happily[otherwise]force yourself to[end if] gulp it down.";
					TasteGrossOut 4;
					StomachSemenUp 2;
					say strongHumiliateReflect;
				otherwise:
					say "You face the cameras, raise the glass as if you're toasting, and then start pouring it down the hatch. The [men of M] all cheer and clap.";
					TasteGrossOut 4;
					StomachSemenUp 4;
					say severeHumiliateReflect;
			otherwise:
				say "[BigNameDesc of M] grabs your hair and pushes your face towards the [ShortPuddleDesc of Predicament01][if the total puddle of Predicament01 is 0], where you can see that a small amount of [semen] has dripped down[end if].[line break][speech style of M]'Clean up your mess, slut.'[roman type][line break]";
				reset multiple choice questions;
				set numerical response 0 to "Refuse";
				set numerical response 1 to "Try to wipe it away with your hand";
				set numerical response 2 to "Lick it up";
				compute multiple choice question;
				if player-numerical-response is 0:
					decrease PP by a random number between 1 and 2;
					say "[variable custom style]'Do it yourself. Fucking assholes.'[roman type][paragraph break][speech style of M]'You're the one with the fucked asshole, haha.'[roman type][line break][BigNameDesc of M] quickly retorts.";
				otherwise if player-numerical-response is 1:
					decrease PP by 1;
					say "You awkwardly wipe the floor with your hand, but everyone knows that isn't what [NameDesc of M] meant. But apparently [NameDesc of M] decides that complaining would just make the video worse, so [he of M] releases [his of M] grip on your hair and pretends to be satisfied.[line break][speech style of M]'That's right, you dirty bitch.'[roman type][line break][slightHumiliateReflect]";
				otherwise:
					decrease PP by 1;
					say "You get your lips down to the floor and lick and suck.[line break][speech style of M]'That's right, you dirty bitch.'[roman type][line break][severeHumiliateReflect]";
					if the total puddle of Predicament01 is 0:
						FaceFill semen by 1;
					otherwise:
						if the semen-puddle of Predicament01 > 0:
							decrease the semen-puddle of Predicament01 by 1;
							FaceFill semen by 1;
						if the semen-puddle of Predicament01 > 0:
							decrease the semen-puddle of Predicament01 by 1;
							FaceFill semen by 1;
						if the urine-puddle of Predicament01 > 0:
							decrease the urine-puddle of Predicament01 by 1;
							FaceFill urine by 1;
						if the urine-puddle of Predicament01 > 0:
							decrease the urine-puddle of Predicament01 by 1;
							FaceFill urine by 1;
		check for arousal change;
		if PP < 0, now PP is 0;
		if PP > 10, now PP is 10;
		increase the player-points of P by PP;
		add PP * 2 to LPVS;
		if PP >= 9:
			add "a high quality porn video of you willfully doing the most disgusting [if diaper quest is 1]diaper sex[otherwise]acts[end if] imaginable with [MMMT]" to LPVT;
		otherwise if PP >= 7:
			add "a high quality porn video of you willfully doing some truly horrendous [if diaper quest is 1]diaper sex[otherwise]sexual acts[end if] with [MMMT]" to LPVT;
		otherwise if PP >= 5:
			add "a high quality porn video of you doing some really naughty [if diaper quest is 1]diaper stuff[otherwise]sexual acts[end if] with [MMMT]" to LPVT;
		otherwise if PP >= 3:
			add "a high quality porn video of you acting a bit reluctant in a [if diaper quest is 1]diaper fetish [end if]scene with [MMMT]" to LPVT;
		otherwise if PP >= 1:
			add "a high quality porn video of you acting very reluctant in a [if diaper quest is 1]diaper fetish [end if]scene with [MMMT]" to LPVT;
		otherwise:
			add "a high quality [if diaper quest is 1]diaper fetish[otherwise]porn[end if] video of you continually refusing to do what [MMMT] tell[if MN is 1]s[end if] you to do" to LPVT;
		let STD3 be DED + a random number between -3 and the current-rank of ST;
		if STD3 < 0, now STD3 is 0;
		if STD3 > 10, now STD3 is 10;
		increase rival-points of P by STD3;
		say "And then just like that, it's all over. The cameras turn off, and [if MN > 1]the [men of M] head[otherwise][NameDesc of M][end if] heads for the door. It's only now that you have finished going through your ordeal that you remember to take a look through the big glass wall at [NameDesc of ST]. [big his of ST] own porn shoot has just ended too, and as [he of ST] lies there on [his of ST] bed looking exhausted, [if diaper quest is 0][semen] leaking out of more than one hole[otherwise]with a bloated, soiled diaper[end if], you see [his of ST] Porn Points have settled on [rival-points of P]. You look at your own, and see that you apparently just earned [PP] more Porn Point[if PP is not 1]s[end if], bringing your own total to [player-points of P].";
		if player-points of P >= rival-points of P:
			if player-points of P is rival-points of P:
				say "[first custom style]'CONGRATULATIONS BOTH OF YOU - YOU TIED, WHICH MEANS YOU BOTH EARN A SHOWER AND A CLEAN SET OF CLOTHES.'[roman type][line break]";
			otherwise:
				say "[first custom style]'CONGRATULATIONS [NameBimbo in upper case] - YOU WON, WHICH MEANS THAT YOU HAVE EARNED A SHOWER AND A CLEAN SET OF CLOTHES.'[roman type][line break]As the robotic voice says this, you see [NameDesc of ST][']s room start to fill with some sort of gas, or perhaps steam. You see [him of ST] immediately panic, and sprint for the door to the outside, with no chance to clean [himself of ST] up first. How cruel![paragraph break]";
			if the player-points of P >= rival-points of P + 5, say "[first custom style]'AS YOU WON BY AT LEAST 5 PORN POINTS, ONLY YOUR OPPONENT'S VIDEOS HAVE BEEN UPLOADED ONLINE. CONGRATULATIONS AGAIN ON AN EXCELLENT PERFORMANCE.'[roman type][line break]";
			otherwise say "[first custom style]'AS YOU FAILED TO WIN BY AT LEAST 5 PORN POINTS, WE ARE CURRENTLY PUBLISHING THE VIDEOS ONLINE ON YOUR BEHALF. WE HOPE YOU ENJOY THE WORLDWIDE EXPOSURE.'[line break][variable custom style]Holy shit... I can't believe it... I'm officially a real life hardcore porn star. Will I ever be able to look my family and friends in the eye again?[roman type][line break]";
			say "A hidden door opens in one wall, revealing a walk-in shower[if C is dirty] and a clean [ShortDesc of C][end if]. You waste no time in cleaning yourself up.";
			repeat with BD running through body parts:
				fully clean BD;
			repeat with BC running through worn clothing:
				fully clean BC;
			if player-points of P is rival-points of P, say "By the time you leave the shower, [student-name of ST] has gone.";
		otherwise:
			say "[first custom style]'COMISERATIONS [NameBimbo in upper case] - YOU LOST, WHICH MEANS THAT YOU MUST IMMEDIATELY LEAVE THE PREMISES. FURTHERMORE, WE ARE CURRENTLY PUBLISHING THE VIDEOS ONLINE ON YOUR BEHALF. WE HOPE YOU ENJOY THE WORLDWIDE EXPOSURE.'[roman type][line break]As the robotic voice says this, you see the room start to fill with steam. You immediately panic, and sprint for the door to the outside, with no chance to clean yourself up first. How cruel!";
			now the player is in Predicament02;
		now the stance of the player is 0;
	now ST is in School02;
	repeat with MM running through ultimate-lesson-actors:
		dislodge MM;
		remove MM from play;
	repeat with MM running through adult baby slaves in Predicament01:
		deinterest M;
		if ML is a room, now M is in ML;
		otherwise remove M from play;
	repeat with PV running from 1 to 3:
		if (player-escaped is false and the player-points of P < rival-points of P + 5) or (player-escaped is true and PV is 1):
			if the number of blank rows in the Table of Published Disgraces > 0:
				choose a blank row in Table of Published Disgraces;
				now the content entry is entry PV in LPVT;
				now the published entry is entry PV in LPVW;
				now the severity entry is entry PV in LPVS;
				now the popularity entry is entry PV in LPVP;
				now the timestamp entry is time-earnings;
				now the lastwitnessed entry is 0;
				now the deletedtime entry is 0;
				now the viewsfuzz entry is a random number between -100 and 100;

Check going south when the player is in Predicament02:
	if current-predicament is porno-predicament, say "The door is locked." instead.

horizontal-pole-predicament is a predicament. The printed name of horizontal-pole-predicament is "magic wand".
Definition: horizontal-pole-predicament is appropriate:
	if the rank of the player < 2, decide no;
	if the player is not possessing a vagina and the player is not possessing a penis, decide no;
	if (diaper quest is 0 and the player is a march 2024 top donator) or (diaper quest is 1 and the player is a march 2024 diaper donator), decide yes;
	decide no.
To decide which number is the stimulation of (T - horizontal-pole-predicament) on (F - a body part):
	decide on 14. [It's fucking strong]
To say FuckerDesc of (P - horizontal-pole-predicament):
	say "the magic wand".
To say BigFuckerDesc of (P - horizontal-pole-predicament):
	say "The magic wand".
To execute (VW - horizontal-pole-predicament):
	now the player is in Predicament01;
	now temporaryYesNoBackground is Figure of horizontal pole predicament;
	now the stance of the player is 1;
	now the arousal of the player is 1000;
	update arousal;
	now refractoryperiod is 0;
	summon ankle-ropes locked;
	summon wrist-waist-ropes locked;
	let SS be 3; [spank strength]
	if diaper quest is 1:
		summon doggy-huge-diaper uncursed;
		now the bladder of the player is bladder-bursting-level;
		if rectum > 1, now rectum is 8;
		increase SS by 3;
	display stuff;
	say "[bold type]Suddenly you can feel that your wrists are tightly bound to the front of your knees with rope, and your ankles bound too! [roman type]Apart from that, you are naked[if diaper quest is 1] except for a [ShortDesc of doggy-huge-diaper][end if]. You are bent over a horizontal metal bar, and to your left behind your butt there are three rotating mechanical spanking machines, and to your right there are four strongly vibrating magic wands, all in a row. Suddenly, a mechanical voice begins to explain your predicament.[line break][first custom style]'WELCOME TO EXTRA CREDIT CLASS. [PredicamentRewardExplanation]TO EARN THIS TROPHY, YOU MUST SIMPLY... RETURN HOME. THERE ARE GREEN BUTTONS AT THE BASE OF THE TWO VERTICAL POLES SUPPORTING THE HORIZONTAL POLE THAT IS KEEPING YOU TRAPPED. SIMPLY PRESS EITHER ONE OF THESE BUTTONS TO RELEASE THE POLE AT BOTH ENDS, AND EARN YOUR FREEDOM.'[PredicamentRewardExplanationReaction][roman type][line break]With your limbs tied as they are, you'll have to inch along the pole to the left or right painfully slowly, and as you do, you will inevitably either get painfully spanked, or ruthlessly vibrated towards orgasm...";
	if diaper quest is 1, say "...And then you realise that you can feel the need to go to the bathroom.[line break][variable custom style]Oh god... Can I really hold it in if I get spanked so hard? And what if those vibrators make me cum?![roman type][line break]";
	let P be 4; [position. 1-3 is spank, 5-8 is vibrator]
	let O be 0; [offers given]
	let OT1 be -1; [location player must go to, to complete offer 1]
	let OT2 be -1; [location player must go to, to complete offer 2]
	let OT3 be -1; [location player must go to, to complete offer 3]
	let F be vagina;
	if the player is not possessing a vagina, now F is penis;
	while P > 0 and P < 9:
		if refractoryperiod > 0, decrease refractoryperiod by 1;
		say "[if P is 4]You are in the centre of the pole. Nothing is currently touching your butt[otherwise if P < 4]A spanking machine is thwacking away at your butt[otherwise]A strong wand vibrator is pressed against your [variable F][end if]. ";
		say "[if P is 1]The left vertical pole is to your left. You could press the green button with your heel[otherwise if P is 2]There is one spanking machine to your left[otherwise if P < 5]There are [P - 1] spanking machines to your left[otherwise if P is 5]The gap is to your left, followed by 3 spanking machines[otherwise if P is 6]There is one vibrating wand to your left, followed by the gap and then 3 spanking machines[otherwise]There are [P - 5] vibrating wands to your left, followed by the gap and then 3 spanking machines[end if]. ";
		say "[if P is 8]The right vertical pole is to your right. You could press the green button with your heel[otherwise if P is 7]There is one vibrating wand to your right[otherwise if P > 3]There are [8 - P] vibrating wands to your right[otherwise if P is 3]The gap is to your right, followed by 4 vibrating wands[otherwise if P is 2]There is one spanking machine to your right, followed by the gap and then 4 vibrating wands[otherwise]There are 2 spanking machines to your right, followed by the gap and then 4 vibrating wands[end if].";
		reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
		set numerical response 1 to "[if P is 1]press the button[otherwise]move left[end if]";
		set numerical response 2 to "stay where you are";
		set numerical response 3 to "[if P is 8]press the button[otherwise]move right[end if]";
		compute multiple choice question;
		if player-numerical-response is 1:
			if P is 1:
				say "You reach around the pole with your heel and jam it into the green button. The vertical poles detach at the bottom, freeing the entire structure! You stagger forward, free from the paddles, and quickly detangle yourself from the heavy metal pole. You're free!";
			otherwise:
				say "You wiggle towards the left as quickly as you can[if P is 4]. Your butt is now right in front of a spanking machine[end if]!";
			decrease P by 1;
		otherwise if player-numerical-response is 2:
			say "You remain still for now.";
			if P is 4:
				cool down 1000;
				if there is a worn perceived messed knickers:
					say "You continue to wallow in your own mess.";
					GrossOut 5;
				otherwise if there is a worn perceived wet diaper and the diaper addiction of the player < 4:
					say "You continue to wallow in your wet diaper.";
					GrossOut 3;
		otherwise:
			if P is 8:
				say "You reach around the pole with your heel and jam it into the green button. The vertical poles detach at the bottom, freeing the entire structure! You stagger forward, free from the vibrating wand, and quickly detangle yourself from the heavy metal pole. You're free!";
			otherwise:
				say "You wiggle towards the right as quickly as you can[if P is 4]. Your [variable F] is now pressed against a strongly whirring vibrating wand[end if]!";
			increase P by 1;
		if P > 4 and P < 9:
			[say "The vibrating wand sends intensely strong vibrations directly into your [variable F]!";]
			stimulate vagina from VW;
		otherwise if P > 0 and P < 4:
			say "The spanking machine smacks you hard several times on the [AssDesc]!";
			compute strength SS spanking;
		check for arousal change;
		if OT1 is P:
			say "[line break][italic type]Dadaaaa![roman type][paragraph break]A fanfare sounds, followed by a kitchen knife being lowered on a rope from way up above. You can't reach it now, but once you're out of here, you can use it to cut your ropes.";
			let K be a random off-stage knife;
			now K is in Predicament01;
			now OT1 is -1;
		if OT2 is P:
			say "[line break][italic type]Dadaaaa![roman type][paragraph break]A fanfare sounds, and another rope lowers your prize: ";
			if diaper quest is 0:
				if the largeness of breasts > 1:
					blandify and reveal red-pasties;
					now red-pasties is in Predicament01;
					say "Some tiny red nipple pasties, and some slutty red briefs.";
				otherwise:
					say "Nothing but some slutty red briefs.";
				blandify and reveal red briefs;
				now red briefs is in Predicament01;
				say "[variable custom style]SERIOUSLY?![roman type][line break]";
			otherwise if diaper messing >= 4:
				say "[line break][italic type]Dadaaaa![roman type][paragraph break]A fanfare sounds, followed by a small pack of wipes being lowered on a rope from way up above.";
				let K be a random off-stage pocketwipes;
				if K is nothing, now K is a random pocketwipes;
				now K is in Predicament01;
			otherwise:
				say "Nothing but some girly pink briefs.";
				blandify and reveal pink-kitty-briefs;
				now pink-kitty-briefs is in Predicament01;
				say "[variable custom style]SERIOUSLY?![roman type][line break]";
			now OT2 is -1;
		if OT3 is P:
			say "[line break][italic type]Dadaaaa![roman type][paragraph break]A fanfare sounds, and another rope lowers your prize: ";
			if diaper quest is 0:
				if the largeness of breasts > 1:
					blandify and reveal black bodice;
					now black bodice is in Predicament01;
					say "A modest black blouse.[line break][variable custom style]But these won't cover up those briefs at all![roman type][line break]";
				otherwise:
					let BP be a random off-stage buttockless pants;
					if BP is nothing, now BP is a random buttockless pants;
					blandify and reveal BP;
					now BP is in Predicament01;
					say "Some [MediumDesc of BP].[line break][variable custom style]Oh come on! Buttockless pants. Really?![roman type][line break]";
			otherwise:
				let BP be a random teddybear playsuit;
				blandify and reveal BP;
				now BP is in Predicament01;
				say "A [MediumDesc of BP].[line break][variable custom style]Oh come on! Really?![roman type][line break]";
			now OT3 is -1;
		if O is 0:
			if (P is 3 and the player is getting lucky) or P is 2:
				increase O by 1;
				say "[line break][italic type]Ding dong![roman type][paragraph break]A chime sounds, followed by the familiar robotic voice.[line break][first custom style]'SPECIAL OFFER! MOVE THREE FEET TO THE RIGHT FROM YOUR CURRENT LOCATION TO EARN A SPECIAL REWARD: ROPE BLADE. YOU WILL BE PROVIDED WITH A BLADE WITH WHICH TO FREE YOURSELF FROM YOUR ROPE BONDAGE AFTER YOU PRESS ONE OF THE GREEN BUTTONS.'[paragraph break][variable custom style]Oh god... I really need that! Otherwise I'll be walking home naked and an inch at a time!!![roman type][line break]";
				now OT1 is P + 3;
			otherwise if (P is 5 and the player is getting lucky) or P is 6:
				increase O by 1;
				say "[line break][italic type]Ding dong![roman type][paragraph break]A chime sounds, followed by the familiar robotic voice.[line break][first custom style]'SPECIAL OFFER! MOVE THREE FEET TO THE LEFT FROM YOUR CURRENT LOCATION TO EARN A SPECIAL REWARD: ROPE BLADE. YOU WILL BE PROVIDED WITH A BLADE WITH WHICH TO FREE YOURSELF FROM YOUR ROPE BONDAGE AFTER YOU PRESS ONE OF THE GREEN BUTTONS.'[paragraph break][variable custom style]Oh god... I really need that! Otherwise I'll be walking home naked and an inch at a time!!![roman type][line break]";
				now OT1 is P - 3;
		otherwise if O is 1:
			if (P is 2 and the player is getting lucky) or (P is 1 and the player is not getting unlucky):
				increase O by 1;
				say "[line break][italic type]Ding dong![roman type][paragraph break]A chime sounds, followed by the familiar robotic voice.[line break][first custom style]'SPECIAL OFFER! MOVE FOUR FEET TO THE RIGHT FROM YOUR CURRENT LOCATION TO EARN A SPECIAL REWARD: [if diaper quest is 1 and diaper messing >= 4]BABY WIPES[otherwise]OUTFIT. YOU WILL BE PROVIDED WITH SOMETHING TO WEAR HOME. IT WILL BE BETTER THAN WALKING HOME NAKED[end if].'[paragraph break][variable custom style]Ugh... They keep tempting me to go back in the other direction...[roman type][line break]";
				now OT2 is P + 4;
			otherwise if (P is 6 and the player is getting lucky) or (P is 7 and the player is not getting unlucky) or P is 8:
				increase O by 1;
				say "[line break][italic type]Ding dong![roman type][paragraph break]A chime sounds, followed by the familiar robotic voice.[line break][first custom style]'SPECIAL OFFER! MOVE FOUR FEET TO THE LEFT FROM YOUR CURRENT LOCATION TO EARN A SPECIAL REWARD: [if diaper quest is 1 and diaper messing >= 4]BABY WIPES[otherwise]OUTFIT. YOU WILL BE PROVIDED WITH SOMETHING TO WEAR HOME. IT WILL BE BETTER THAN WALKING HOME NAKED[end if].'[paragraph break][variable custom style]Ugh... They keep tempting me to go back in the other direction...[roman type][line break]";
				now OT2 is P - 4;
		otherwise if O is 2 and OT2 is -1:
			if P < 4 and the player is getting lucky:
				increase O by 1;
				say "[line break][italic type]Ding dong![roman type][paragraph break]A chime sounds, followed by the familiar robotic voice.[line break][first custom style]'SPECIAL OFFER! EXIT VIA THE RIGHT BUTTON TO EARN A SPECIAL REWARD: IMPROVED OUTFIT. YOU WILL BE PROVIDED WITH IMPROVED MODESTY FOR THE WALK HOME.'[paragraph break][variable custom style]Not again...[roman type][line break]";
				now OT3 is 9;
			otherwise if P > 4 and the player is getting lucky:
				increase O by 1;
				say "[line break][italic type]Ding dong![roman type][paragraph break]A chime sounds, followed by the familiar robotic voice.[line break][first custom style]'SPECIAL OFFER! EXIT VIA THE LEFT BUTTON TO EARN A SPECIAL REWARD: IMPROVED OUTFIT. YOU WILL BE PROVIDED WITH IMPROVED MODESTY FOR THE WALK HOME.'[paragraph break][variable custom style]Not again...[roman type][line break]";
				now OT3 is 0;

Predicament World ends here.
