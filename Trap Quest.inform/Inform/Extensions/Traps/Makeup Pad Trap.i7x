Makeup Pad Trap by Traps begins here.

[!<MakeUpPad>@

REQUIRES COMMENTING

@inherits <Trap>

@!]
A makeup pad is a kind of trap. There are 5 click makeup pads.
To say ExamineDesc of (C - a makeup pad):
	say "A cotton pad on the end of a wooden pole, set up on a catapult style mechanism.".

This is the spawn initial dungeon makeup traps rule:
	repeat with N running from 1 to 2:
		let R be a random click untrapped trappable placed labyrinth room;
		let T be a random off-stage makeup pad;
		unless T is nothing or there is a makeup pad in R, deploy T in R.
The spawn initial dungeon makeup traps rule is listed in the set up dungeon traps rules.

This is the spawn initial woods makeup traps rule:
	repeat with N running from 1 to 2:
		let R be a random click untrapped trappable placed jungle room;
		let T be a random off-stage makeup pad;
		unless T is nothing, deploy T in R.
The spawn initial woods makeup traps rule is listed in the set up woods traps rules.

This is the spawn initial hotel makeup traps rule:
	let R be a random click untrapped trappable placed modern room;
	let T be a random off-stage makeup pad;
	unless T is nothing, deploy T in R.
The spawn initial hotel makeup traps rule is listed in the set up hotel traps rules.

To trigger (Y - a makeup pad):
	now the reset-timer of Y is 250;
	now Y is not untriggered;
	now Y is revealed;
	now Y is expired;
	let X be a random number between 8 and 20;
	if X > the dexterity of the player or the make-up of face is 3:
		if diaper quest is 0:
			say "A large cotton pad swings out and smacks you straight in the face! [if the make-up of face is 0]A fine cloud of dust is created as it instantly applies a layer of makeup.[otherwise if the make-up of face < 3]A fine cloud of dust is created as it instantly applies another layer of makeup to your already slutty appearance.[otherwise]But nothing really seems to have changed...[end if]";
			FaceUp 1;
		otherwise:
			say "A large cotton pad swings out and smacks you straight in the face! [if the make-up of face < 3][one of]You[or]Once again you[stopping] are left with [one of]trashy[or]over-done[or]over-the-top[at random] make up that looks like it was [one of]done by a ten year old playing dressup[or]applied by a child[cycling]![otherwise]But nothing really seems to have changed...[end if]";
			FaceUp 3;
		repeat with M running through reactive monsters:
			say MakeUpTrapReactFlav of M;
	otherwise:
		say "With lightning reflexes, you dodge a large cotton pad that was flying straight for your face! It looks like you avoided a compulsory [if diaper quest is 0]slutty [end if]makeover!".

To say MakeUpTrapReactFlav of (M - a monster):
	say TriggeredTrapReactFlav of M.




A choice trap is a kind of trap. There are 5 click choice traps.
To say ExamineDesc of (C - a choice trap):
	say "A tablet - the screen has now turned off.".

Figure of choice trap is the file "Env/MultiFloor/choicetrap1.png".

This is the spawn initial woods choice traps rule:
	if the player is a december 2022 top donator or (diaper quest is 1 and the player is a december 2022 diaper donator):
		repeat with N running from 1 to 2:
			let R be a random click untrapped trappable placed jungle room;
			let T be a random off-stage choice trap;
			unless T is nothing, deploy T in R.
The spawn initial woods choice traps rule is listed in the set up woods traps rules.

This is the spawn initial hotel choice traps rule:
	if the player is a december 2022 top donator or (diaper quest is 1 and the player is a december 2022 diaper donator):
		repeat with N running from 1 to 2:
			let R be a random click untrapped trappable placed modern room;
			let T be a random off-stage choice trap;
			unless T is nothing, deploy T in R.
The spawn initial hotel choice traps rule is listed in the set up hotel traps rules.


A choice-trap-choice is a kind of object.
Definition: a choice-trap-choice is appropriate: decide yes.
To say ChoiceFlav of (C - a choice-trap-choice):
	say "Oops, this choice doesn't have a description! Please report this bug.".
To trigger (C - a choice-trap-choice):
	do nothing.
To evade trigger (C - a choice-trap-choice):
	do nothing.

inflation-trap-choice is a choice-trap-choice. inflation-trap-choice has an object called the chosen-dress.
To say ChoiceFlav of (C - inflation-trap-choice):
	say "INFLATION".
To trigger (C - inflation-trap-choice):
	if inflation fetish is 1:
		say "You feel your whole body exploding outwards!";
		if the largeness of breasts < max breast size, BustInflate 6;
		AssFill (belly limit - the total fill of belly) air;
		if the total volume of hips < max ass size, AssInflate 4;
	otherwise if diaper quest is 0 and the player is not top heavy and a random number between 1 and 2 is 1:
		if the silicone volume of breasts > 0:
			say "You feel the silicone implants in your chest swell significantly in size, making you look even more fake and plastic!";
			BustImplantsUp 3;
		otherwise:
			say "You feel your breasts begin to significantly swell!";
			BustUp 3;
	otherwise if diaper quest is 0 and the player is not bottom heavy and a random number between 1 and 2 is 1:
		if the silicone volume of hips > 0:
			say "You feel the silicone implants in your [AssDesc] swell significantly in size, making you look even more fake and plastic!";
			AssImplantsUp 2;
		otherwise:
			say "You feel your [AssDesc] begin to significantly swell!";
			AssSwell 2;
	otherwise:
		let L be semen;
		if diaper quest is 1, now L is water;
		if watersports fetish is 1, now L is urine;
		say "You feel your belly being magically filled to the brim with [variable L]!";
		AssFill (belly limit - the total fill of belly) with L;
		FearUp 2 with reason "The shock of suddenly being filled in this way makes you spasm,".

To evade trigger (C - inflation-trap-choice):
	if the player is getting lucky:
		say "The ['][ChoiceFlav of C]['] punishment seems to miss, or fizzle, or something! [GotLuckyFlav]";
	otherwise:
		trigger C.

dress-trap-choice is a choice-trap-choice. dress-trap-choice has an object called the chosen-dress.
Definition: dress-trap-choice is appropriate:
	if diaper quest is 1, now the chosen-dress of dress-trap-choice is a random off-stage baby-dress;
	otherwise now the chosen-dress of dress-trap-choice is a random off-stage fetish dress;
	if the chosen-dress of dress-trap-choice is unclash summonable, decide yes;
	decide no.
To say ChoiceFlav of (C - dress-trap-choice):
	say "FETISH DRESS".
To trigger (C - dress-trap-choice):
	unclash class summon the chosen-dress of dress-trap-choice;
	now the chosen-dress of dress-trap-choice is locked.
To evade trigger (C - dress-trap-choice):
	if the player is getting lucky:
		say "The ['][ChoiceFlav of C]['] punishment seems to miss, or fizzle, or something! [GotLuckyFlav]";
	otherwise:
		trigger C.

slime-trap-choice is a choice-trap-choice.
To say ChoiceFlav of (C - slime-trap-choice):
	say "SLIMED".
To trigger (SC - slime-trap-choice):
	if a random number between 1 and 2 is bukkake fetish:
		say "A hidden compartment inside the container opens, and a rubber dildo starts to blast you with [semen]! There's a crazy amount of the stuff!";
		AnnouncedSquirt semen on face by 20;
	otherwise if diaper quest is 1:
		if face is actually occupied:
			let SB be a random off-stage slimeball;
			if SB is a thing:
				say "A hidden compartment inside the container opens, and a large blob of slime shoots out some sort of tiny cannon, landing right next to where you were a moment ago! And then... It wobbles, and begins to hop! It's alive!";
				set up SB;
				now SB is in the location of the player;
				now SB is stalled;
			otherwise:
				say "The ['][ChoiceFlav of SC]['] punishment seems to miss, or fizzle, or something! [GotLuckyFlav]";
		otherwise:
			say "A hidden compartment inside the container opens, and a large blob of slime shoots out some sort of tiny cannon, hitting you right in the face! ";
			compute slimeball forcefeed;
	otherwise:
		say "A hidden compartment inside the container opens, and a large blob of slime shoots out some sort of tiny cannon, hitting you right in the chest!";
		let C be a random worn breast covering clothing;
		if C is clothing and C is not glued:
			say "You feel it getting under your [ShortDesc of C], where it begins to solidify, gluing it to you!";
			gluify C;
		compute slime expansion.
To evade trigger (C - slime-trap-choice):
	if a random number between 1 and 2 is bukkake fetish:
		say "A hidden compartment inside the container opens, and a rubber dildo starts to shoot out [semen]! There's a crazy amount of the stuff!";
		if the player is getting unlucky:
			say "The blast is so powerful that it still hits you square in the face, even though you pulled back as quickly as you could. [GotUnluckyFlav]";
			AnnouncedSquirt semen on face by 20;
		otherwise if the player is getting lucky:
			say "It all lands on the ground. [GotLuckyFlav]";
			PuddleUp semen by 20;
		otherwise:
			say "Most lands on the ground, but some of the spray gets on your body.";
			PuddleUp semen by 12;
			AnnouncedSquirt semen on hips by 8;
	otherwise:
		if there is a patron in the location of the player:
			say "The device seems to detect that you are now busy with your [']sex work['], and a buzzer sounds, indicating that it has deemed it unsafe to release the slimeball into the [location of the player].";
		otherwise:
			let SB be a random off-stage slimeball;
			if SB is a thing:
				say "A hidden compartment inside the container opens, and a large blob of slime shoots out some sort of tiny cannon, landing right next to where you were a moment ago! And then... It wobbles, and begins to hop! It's alive!";
				set up SB;
				now SB is in the location of the player;
				now SB is stalled;
			otherwise:
				say "The ['][ChoiceFlav of C]['] punishment seems to miss, or fizzle, or something! [GotLuckyFlav]".


hypno-trap-choice is a choice-trap-choice.
To say ChoiceFlav of (C - hypno-trap-choice):
	say "HYPNOSIS".
To trigger (C - hypno-trap-choice):
	let T be a random fetish appropriate hypno trap;
	say "The screen changes, and is suddenly [hypno content of T]. It immediately captivates your attention!";
	say video content of T;
	compute specific hypno effect of T;
	say "The tablet then turns off.".
To evade trigger (C - hypno-trap-choice):
	let T be a random fetish appropriate hypno trap;
	say "The screen changes, and is suddenly [hypno content of T].";
	compute hypno effect of T; [chance of avoiding eye contact]
	say "The tablet then turns off.".

brothel-trap-choice is a choice-trap-choice.
Definition: brothel-trap-choice is appropriate:
	if there is a hotel bed in the location of the player and the number of monsters in the location of the player is 0, decide yes;
	decide no.
To say ChoiceFlav of (C - brothel-trap-choice):
	say "[if diaper quest is 1]FETISH[otherwise]SEX[end if] WORK".
To trigger (C - brothel-trap-choice):
	let F be a random hotel bed in the location of the player;
	say "The tablet shows a new message: [']Sending your photo to three potential suitors, please stay still for the photo...[']";
	compute PatronSpawning of F with 3 men.
To evade trigger (C - brothel-trap-choice):
	if there is a monster in the location of the player:
		say "The tablet shows a new message: [']Danger detected. Customer protection protocol activated. No customers will be released.[']";
	otherwise:
		let F be a random hotel bed in the location of the player;
		say "The tablet shows a new message: [']Unable to take advertisement photo. Only one customer available for Blind Date...[']";
		compute PatronSpawning of F with 1 men.

incontinence-trap-choice is a choice-trap-choice.
Definition: incontinence-trap-choice is appropriate:
	if diaper lover > 0, decide yes;
	decide no.
To say ChoiceFlav of (C - incontinence-trap-choice):
	say "BLADDER MODIFICATION".
To trigger (C - incontinence-trap-choice):
	say "A tiny [needle] shoots out of [if playerRegion is Dungeon]the stone wall[otherwise if playerRegion is Woods]a tree[otherwise]a tiny hole in the wall[end if] and towards your stomach. You can't dodge it in time! It injects you with some kind of... numbing agent?!";
	BladderIncontinenceUp 1.
To evade trigger (C - incontinence-trap-choice):
	let D be a random number between 1 and 30;
	if debuginfo > 0, say "[input-style]Evade needle check: Dexterity ([dexterity of the player]) | ([D].5) Dodge Difficulty[roman type][line break]";
	if the dexterity of the player > D:
		say "A tiny [needle] shoots out of [if playerRegion is Dungeon]the stone wall[otherwise if playerRegion is Woods]a tree[otherwise]a tiny hole in the wall[end if] and towards your stomach. You manage to swivel out of the way just in time![line break][variable custom style]That was close![roman type][line break]";
	otherwise:
		trigger C.

shrink-trap-choice is a choice-trap-choice.
Definition: shrink-trap-choice is appropriate:
	if the size of penis > min penis size, decide yes;
	decide no.
To say ChoiceFlav of (C - shrink-trap-choice):
	say "PENIS SIZE REDUCTION".
To trigger (C - shrink-trap-choice):
	say "Two tiny sharp probes connected to wires shoot out of a hidden compartment in the container, just like a tazer![line break][italic type]BZZZZZT[roman type][line break]Having planted into your mons pubis, the electrified device gives you a little shock!";
	PenisDown 1;
	PainUp 8.
To evade trigger (C - shrink-trap-choice):
	say "Two tiny sharp probes connected to wires shoot out of a hidden compartment in the container, just like a tazer![line break][italic type]BZZZZZT[roman type][line break]Having planted into your size, the electrified device gives you a little shock!";
	PainUp 8;
	say "Well... At least the probes missed your [player-penis]...".

forcefeed-trap-choice is a choice-trap-choice.
Definition: forcefeed-trap-choice is appropriate:
	if (diaper messing >= 3 or weight gain fetish is 1) and the stomach of the player < stomach-max - 2 and face is not actually occupied, decide yes;
	decide no.
To say ChoiceFlav of (C - forcefeed-trap-choice):
	say "FORCED FEEDING".
To trigger (C - forcefeed-trap-choice):
	say "A huge robotic facehugging arm shoots out of the container, and latches onto your face before you can stop it![line break][variable custom style]'MMMMMMPH!'[roman type][line break]You feel some sort of feeding nozzle being forced into your mouth, and then in the next moment, some sort of thick oatmeal-like substance is being pumped into your mouth. Unable to breathe through this thing which has latched onto your face, you have no choice but to gulp down mouthful after heavy mouthful of the bland tasting, fibre-rich food.[paragraph break]";
	while the player is not overly full:
		StomachFoodUp 1;
	say "By the time the device has stopped forcefeeding you oatmeal, and finally releases you, you feel so very uncomfortably full![line break][variable custom style]Ugh... I can barely move...[roman type][line break]".
To evade trigger (C - forcefeed-trap-choice):
	let D be a random number between 1 and 30;
	if debuginfo > 0, say "[input-style]Evade needle check: Dexterity ([dexterity of the player]) | ([D].5) Dodge Difficulty[roman type][line break]";
	if the dexterity of the player > D:
		say "A huge robotic facehugging arm shoots out of the container, heading straight for your face and mouth. You manage to swivel out of the way just in time![line break][variable custom style]Phew. That was too close.[roman type][line break]";
	otherwise:
		trigger C.

diaper-trap-choice is a choice-trap-choice.
Definition: diaper-trap-choice is appropriate:
	if there is a currently uncovered diaper and there is an off-stage DQBulkier plentiful disposable diaper, decide yes;
	decide no.
To say ChoiceFlav of (C - diaper-trap-choice):
	say "[if diaper-stack is worn]EXTRA DIAPER LAYER[otherwise]DOUBLE DIAPER[end if]".
To trigger (C - diaper-trap-choice):
	let D be a random off-stage DQBulkier plentiful disposable diaper;
	blandify and reveal D;
	gluify D;
	say "There is a loud [']TWANG['] as something shoots up from a hidden compartment beneath your feet. A moment later, it's plain to see... You now have a [D] glued on below your [MediumDesc of random worn diaper]!";
	diaperAdd D.
To evade trigger (C - diaper-trap-choice):
	if the player is getting unlucky:
		say "You can't get away in time! [GotUnluckyFlav]";
		trigger C;
	otherwise:
		let D be a random off-stage DQBulkier plentiful disposable diaper;
		blandify and reveal D;
		gluify D;
		now D is in the location of the player;
		say "You watch as, with a loud [']TWANG['], a [D] shoots up towards where you were standing just a split second ago, before landing on the ground with a soft thud.".

facehugger-trap-choice is a choice-trap-choice.
Definition: facehugger-trap-choice is appropriate:
	if egg laying fetish is 1, decide yes;
	decide no.
To say ChoiceFlav of (C - facehugger-trap-choice):
	say "FACEHUGGER".
To trigger (C - facehugger-trap-choice):
	let M be a random off-stage facehugger;
	if M is nothing, now M is a random facehugger;
	summon M in playerRegion;
	if M is nonexistent and M is on-stage, set up M;
	now M is in the location of the player;
	say "A hidden compartment inside the container opens, and a [MediumDesc of M] leaps out!";
	if hugger-gag is off-stage and hugger-gag is actually summonable and the player is getting unlucky:
		say "[BigNameDesc of M] lands directly on your face! You can feel it inserting its ovipositor into your mouth as it settles into place as a sort-of 'gag'. [GotUnluckyFlav]";
		summon hugger-gag;
		gluify hugger-gag;
		destroy M.
To evade trigger (C - facehugger-trap-choice):
	if there is a patron in the location of the player:
		say "The device seems to detect that you are now busy with your [']sex work['], and a buzzer sounds, indicating that it has deemed it unsafe to release the facehugger into the [location of the player].";
	otherwise:
		let M be a random off-stage facehugger;
		if M is nothing, now M is a random facehugger;
		summon M in playerRegion;
		if M is nonexistent and M is on-stage, set up M;
		now M is in the location of the player;
		say "A hidden compartment inside the container opens, and a [MediumDesc of M] leaps out!";
		now M is stalled;
		say "At least, because you backed away, it wasn't able to leap on you just yet.".

teleport-trap-choice is a choice-trap-choice.
To say ChoiceFlav of (C - teleport-trap-choice):
	say "TELEPORTATION".
To trigger (C - teleport-trap-choice):
	if the player is getting unlucky:
		say "A beam of blue light appears around you. You can sense it has a very specific target in mind for you, and it's not going to be a nice place! [GotUnluckyFlav]";
		compute bad teleport;
	otherwise:
		let R be a random placed roomstandard room;
		while R is an academic room or R is a predicament room or R is a painting-room or R is an introductory room:
			now R is a random placed roomstandard room;
		say "A beam of blue light appears around you, teleporting you to who-knows-where!";
		teleport to R.
To evade trigger (C - teleport-trap-choice):
	say "A beam of blue light appears where you were standing a split second ago. It fails to teleport you where it wanted to!";
	if the player is getting unlucky:
		if diaper messing >= 6:
			say "As the portal briefly opens, several soiled diapers spill out into the ground around you! [GotUnluckyFlav][line break][variable custom style]Was... Was it going to teleport me into a diaper pail?!?!?!?![roman type][line break]";
			repeat with N running from 1 to 5:
				let SD be a random off-stage soiled-diaper;
				if SD is soiled-diaper:
					now the diaper-origin of SD is the substituted form of "disposable diaper";
					now SD is in the location of the player;
			if the player is air breathing vulnerable, SmellGrossOut messyDiaperSmellGrossnessLevel;
		otherwise:
			say "As the portal briefly opens, pink smoke from the intended destination leaks into the [location of the player]. Now this room is filled with pink smoke too! [GotUnluckyFlav]";
			now the location of the player is smoky;
			update backdrop positions.

To trigger (Y - a choice trap):
	now the reset-timer of Y is 250;
	now Y is not untriggered;
	now Y is revealed;
	now Y is expired;
	let LC be the list of appropriate choice-trap-choices;
	sort LC in random order;
	say "A tablet inside the container comes to life - since you're right in front of it, you can see that it has two options on it. It seems that it wants you to press one...";
	reset multiple choice questions;
	set numerical response 1 to the substituted form of "[ChoiceFlav of entry 1 in LC]";
	set numerical response 2 to the substituted form of "[ChoiceFlav of entry 2 in LC]";
	set numerical response 0 to the substituted form of "See what happens if you just step away from the tablet as quickly as you can.";
	now temporaryYesNoBackground is figure of choice trap;
	compute multiple choice question;
	now temporaryYesNoBackground is figure of small image;
	if player-numerical-response is 1:
		say "You touch the first option.";
		trigger entry 1 in LC;
	if player-numerical-response is 2:
		say "You touch the second option.";
		trigger entry 2 in LC;
	if player-numerical-response is 0:
		say "You leap away from the tablet... Causing both options to activate!";
		evade trigger entry 1 in LC;
		evade trigger entry 2 in LC.

To say ChoiceTrapReactFlav of (M - a monster):
	say TriggeredTrapReactFlav of M.


Makeup Pad Trap ends here.
