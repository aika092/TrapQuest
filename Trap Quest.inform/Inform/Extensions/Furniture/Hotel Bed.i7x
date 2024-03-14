Hotel Bed by Furniture begins here.

hotel bed is a kind of furniture. The printed name of hotel bed is usually "[if item described is soggy]soggy [end if]hotel bed". The printed name of hotel bed is "[TQlink of item described]hotel bed[TQxlink of item described][shortcut-desc][verb-desc of item described]". A hotel bed can be unencountered or encountered. A hotel bed is usually unencountered. A hotel bed is not permanent fixture. A hotel bed can be soggy. Understand "soggy" as hotel bed when the item described is soggy. Understand "hotel", "bed" as hotel bed. The text-shortcut of hotel bed is "hb".

To decide which figure-name is the examine-image of (C - a hotel bed):
	decide on figure of hotel bed.

To say ExamineDesc of (C - a hotel bed):
	say "A standard small hotel bed.".

Figure of hotel bed is the file "Env/Hotel/hotelbed1.jpg".

To destroy (F - a hotel bed):
	remove F from play;
	now F is unencountered.

To compute furniture resting on (F - a hotel bed):
	if there is a barrier in the location of F or there is a monster in the location of F or timeBombTime > 0 or (latestCombatFocus is not patron and latestCombatFocus is not pimp): [testing how reasonable it is for there to be so many normal beds]
		compute normal rest of F;
	otherwise:
		if the player is upright, try kneeling;
		allocate 6 seconds;
		compute PatronSpawning of F;
		now F is encountered.

To say RestingDesc of (F - a hotel bed):
	say "You [one of]get into the bed and [or]continue to [stopping]relax on the comfortable mattress.".

HotelBedBoring is a kind of hotel bed. There are 2 HotelBedBoring.

HotelBedCreamy is a kind of hotel bed. There are 2 HotelBedCreamy. The printed name of HotelBedCreamy is "[TQlink of item described][if item described is unencountered]hotel bed[otherwise if diaper quest is 1]constricting hotel bed[otherwise][semen] soaked hotel bed[end if][TQxlink of item described][shortcut-desc][verb-desc of item described]".
To say RestingDesc of (F - HotelBedCreamy):
	say "You [one of]get into the bed and [or]continue to [stopping]relax on the comfortable mattress.[if diaper quest is 0][one of]You are so comfortable that you appreciate the warm, moist feeling within the bed without really thinking too hard about it.[or][stopping][end if]".
To compute rest ending of (F - HotelBedCreamy):
	if diaper quest is 1:
		say "Just as you are about to climb out of the bed, you feel the duvet covers clamp down around you as if they were alive! They constrict around you, forcefully putting pressure on your [if diaper messing >= 3]belly and [end if]bladder!";
		let R be a random number between 4 and the bladder of the player;
		if the player is full and there is worn total protection soilable clothing and asshole is not actually occupied and rectum > 1:
			compute messing;
		otherwise if R > 6 - the bladder-incontinence of the player and the bladder of the player > 4:
			now delayed urination is 1;
			now player-currently-resting is 1;
			try urinating;
			now player-currently-resting is 0;
		otherwise:
			say "[if the player is bursting]You manage to hold onto your pee[otherwise]Luckily, it seems like you are too empty to be forced into wetting the bed[end if]. ";
		say "Eventually, the magic bedding seems to tire itself out, and releases its hold on you. You are able to leave the bed.";
	otherwise if bukkake fetish is 1:
		say "[if F is unencountered]It is only as you start to get up you realise that underneath the covers, the entire bed is soaked in [semen]! [otherwise]Once again the [semen] from the thoroughly soaked bed has gotten all over you. [end if]Your body [if the number of worn fluid vulnerable clothing > 0]and clothes are[otherwise]is[end if] covered in a layer of [semen].";
		say "[if the semen addiction of the player < 6][line break][first custom style]Ewww! How fucking gross. I need to clean up now![otherwise if the semen addiction of the player < 10][line break][variable custom style]I feel all slippery and weird![otherwise if the semen addiction of the player < 15][variable custom style]Ooh, it's all so sticky and thick! I wonder whose it is...[otherwise if the semen taste addiction of the player < the semen addiction of the player][line break][second custom style]Oh yay, stranger's cum all over me, I couldn't have wished for a better treat![otherwise][second custom style]Oh yay, stranger's cum all over me, I couldn't have wished for a better treat! I can't wait to taste it.[end if][roman type][line break]";
		UnannouncedSquirt semen on thighs by 5;
		repeat with C running through worn able to take more liquid clothing:
			if the coverer of C is nothing:
				let SM be the soak-limit of C - the total-soak of C;
				if SM > 10, now SM is 10;
				CumSoak SM on C;
		let SM be the largeness of hair - (the semen coating of hair + the urine coating of hair + the water-drench of hair);
		if SM > 5, now SM is 5;
		if SM > 0, AnnouncedSquirt semen on hair by SM;
		cutshow Figure of hotel bed cutscene 1 for F;
	otherwise:
		say "[if F is unencountered]It is only as you start to get up, you wrinkle your nose at a weird smell. Suddenly you realise that underneath the covers, the entire bed was recently soaked in [semen]! The [otherwise]Once again the [end if]strong fumes of the rapidly drying moist baby butter assaults your senses and makes you feel funny.";
		SlowSemenAddictUp 1.

HotelBedCollar is a kind of hotel bed. There are 2 HotelBedCollar.

To compute rest ending of (F - HotelBedCollar):
	if pullstring collar is off-stage and pullstring collar is actually summonable:
		say "[bold type]You squawk in surprise as a tight collar appears around your neck![roman type] Feeling around you can find absolutely no latch or way to remove it, but at the back there is a ripcord you can pull. Do you dare pull it, or do you leave it alone?!";
		summon pullstring collar.

HotelBedPatrons is a kind of hotel bed. There are 2 HotelBedPatrons. 1 HotelBedPatrons is in Hotel39. [The printed name of HotelBedPatrons is "[TQlink of item described][if item described is unencountered]hotel bed[otherwise if diaper quest is 1]professional baby slave hotel bed[otherwise]brothel hotel bed[end if][TQxlink of item described][shortcut-desc][verb-desc of item described]".]

patronbed uses is a number that varies.

To compute PatronSpawning of (F - a hotel bed):
	compute PatronSpawning of F with 0 men. [random number of men]

To compute PatronSpawning of (F - a hotel bed) with (MN - a number) men:
	increase patronbed uses by 1;
	let R be 1;
	if diaper quest is 1:
		let M be a random off-stage generic-appropriate pimp-appropriate patron;
		set up M;
		now M is in the location of the player;
	otherwise:
		if MN > 0:
			now R is MN;
			if R > 8, now R is 8;
		otherwise: [chosen randomly]
			let H be patronbed uses;
			if H > 8, now H is 8;
			now R is a random number between 1 and H;
			if R > 6, now R is 6;
		repeat with N running from 1 to R:
			let M be a random off-stage generic-appropriate pimp-appropriate patron;
			if M is a monster:
				set up M;
				now M is in the location of the player;
		now R is the number of patrons in the location of the player;
		if R > 3, say "[first custom style]'Hey everyone, get in here!'[roman type][line break]";
	let M be a random patron in the location of the player;
	say "[one of]A[or]Once again the[stopping] hidden door opens from the opposite wall, and you [one of]are shocked as you watch[or]watch[stopping] ";
	if R is 1:
		say "a [if M is gross patron]short, tubby[otherwise if M is inexperienced patron]young, excited[otherwise if M is experienced patron]rich looking, older[otherwise]middle aged[end if] man walk through into the room.";
	otherwise:
		say "[R] men walk through into the room.";
	now neighbour finder is the location of the player;
	say "[one of]At the same time, [if the number of N-viable directions is 1]a solid metal shutter slams across the doorway of the room. It has[otherwise]solid metal shutters slam across the doorways of the room. They each have[end if] 'MODESTY BARRIER' printed on in big letters, and means that you can't escape.[or]Once again the [if the number of N-viable directions is 1]'Modesty Barrier' comes[otherwise]'Modesty Barriers' come[end if] down, preventing your escape.[stopping]";
	if R > 2, say "[if the player is a nympho][second custom style]Ooh yay! The more the merrier![otherwise if the sex addiction of the player < 4 + (R * 2)][variable custom style]Oh crap, that's way too many...[otherwise][variable custom style]I hope I can please them all...[end if][roman type][line break]";
	now a random modesty shutter is in the location of the player;
	if R > 1 and the class of the player is not living sex doll, compute internet assessment of M. [This only happens once per group so it needs to happen here for groups.]

Hotel Bed ends here.
