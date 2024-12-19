RoboButler by Monster begins here.

[An unconcerned robobutler has been tipped recently. An unleashed robobutler is annoyed at the lack of a tip recently.]

A robobutler is a kind of robot. A robobutler is female. Understand "butler" as robobutler. A robobutler is usually intelligent. The leftover-type of a robobutler is usually 118. A robobutler has a number called planned-punishment.

Figure of robobutler is the file "NPCs/Hotel/Robot/robobutler1.png".

polite robobutler is a robobutler. The text-shortcut of polite robobutler is "prb".
unemotional robobutler is a robobutler. The text-shortcut of unemotional robobutler is "urb".

To say ShortDesc of (M - a robobutler):
	say "RoboButler".
To say MediumDesc of (M - polite robobutler):
	say "polite RoboButler".
To say MediumDesc of (M - unemotional robobutler):
	say "unemotional RoboButler".

To decide which figure-name is the monster-image of (M - a robobutler):
	decide on figure of robobutler.

To say MonsterDesc of (M - a robobutler):
	say "A tall, humanoid robot with state-of-the-art joints and a fixed pouting big-lipped expression moulded into [his of M] polished metal face. [big his of M] has an exaggerated female shape, with a jutting rigid metal chest, and giant leg plates that resemble impossibly wide hips. Each of [his of M] two strong-looking robotic hands is holding a shot glass full of liquid - one is golden, one is creamy. [big his of M] [']eyes['] glow brightly as [he of M] ambles around quietly on [his of M] sturdy metal feet.".

To set up (M - a robobutler):
	reset M;
	now the monstersetup of M is 1;
	add mechanical joint to the banishItems of M, if absent;
	now the raw difficulty of M is the starting difficulty of M;
	now the target-room of M is Hotel18;
	now the health of M is the maxhealth of M;
	now M is unconcerned.

To decide which number is the starting difficulty of (M - robobutler):
	decide on 7.

To say speech style of (M - a robobutler):
	say second custom style.

Part 1 - Misc Flavour

To say SummoningFlav of (M - a robobutler):
	if M is in the location of the player:
		say "The teleporter emits a definitive sounding hum, and light fills the room as a tall, womanly robot materialises on the pad.[line break][speech style of M]'CAN I HELP YOU SIR?'[roman type][line break]";
	otherwise:
		say "You hear the sound of a robotic voice coming from elsewhere in the hotel.[line break][speech style of M]'CAN I HELP YOU SIR?'[roman type][line break]".

To say LeftoverDesc (N - 118):
	say "There is a pile of mangled nuts and bolts here that used to be a fully functional robobutler.[line break]".

Part 2 - Perception

To compute perception of (M - a robobutler):
	say "[BigNameDesc of M] notices you!";
	FavourDown M;
	if there is soiled-diaper carried by M or there is a dirty diaper carried by M:
		say "[speech style of M]'DIRTY DIAPER LITTERING CULPRIT FOUND. PLEASE ADOPT THE DIRTY DIAPER LITTERING PUNISHMENT SUBMISSION POSITION.'[roman type][line break]";
		anger M;
	otherwise if the current-errand of M is completed and M is not uniquely unfriendly:
		compute errand completion of M;
	otherwise if the class of the player is maid:
		say "[big he of M] seems to recognise you as a member of staff and leaves you alone.";
		calm M;
	otherwise if dominatrix-cage is grabbing the player or M is friendly:
		if alcohol fetish is 1 and (alcohol > 0 or hungover > 0 or there is worn party themed wearthing):
			serve alcohol from M;
		otherwise if a random number between 0 and watersports fetish is 1:
			serve urine from M;
		otherwise if a random number between 0 and 1 is 1:
			serve goop from M;
		otherwise:
			say "[big he of M] glides towards you, bowing deeply as [he of M] addresses you in a monotone.[line break][speech style of M]'GREETINGS. I AM [if M is polite robobutler]SERVICE UNIT 1.57[otherwise]ASSISTOTRON 38[end if]. ARE YOU ENJOYING YOUR HOTEL STAY?'[roman type][line break]";
	otherwise if (vagina is exposed and the semen volume of vagina > 0 and the number of things penetrating vagina is 0) or (asshole is exposed and belly liquid types > 0 and the number of things penetrating asshole is 0) :
		say "[big his of M] eyes turn red and [he of M] spins towards you.[line break][speech style of M]'LEAKAGE DETECTED. EMERGENCY PLUGGING PROGRAM ENGAGED.'[roman type][line break]";
		now the planned-punishment of M is 3;
		anger M;
	otherwise if there is a worn catsuits or the class of the player is vixen:
		say "[big his of M] eyes turn red and [he of M] spins toward you[if there is a worn catsuit], focusing in on your catsuit[end if].[line break][speech style of M]'BURGLAR DETECTED! CRIMINAL APPREHENSION PROGRAM INITIATED!'[roman type][line break]";
		now the planned-punishment of M is 4;
		anger M;
	otherwise if the lips of face * 5 <= the bimbo of the player and artificial enhancements fetish is 1 and the lips of face < 3:[this in particular is artificial enhancements only]
		say "[big his of M] eyes turn red and [he of M] spins towards you.[line break][speech style of M]'COLLAGEN DEFICIENCY DETECTED. TISSUE STIMULATION PROGRAM INITIATED.'[roman type][line break]";
		anger M;
		now the planned-punishment of M is 2;
	otherwise if the player is hungry and the player is able to eat:
		say "[big his of M] eyes turn red and [he of M] spins towards you.[line break][speech style of M]'EMPTY STOMACH DETECTED. COMPULSORY FEEDING PROGRAM INITIATED.'[roman type][line break]";
		anger M;
		now the planned-punishment of M is 1;
	otherwise if there is a nonstalking wisp:
		say "[big his of M] eyes turn purple and [he of M] spins towards you.[line break][speech style of M]'LOW TIPPING CUSTOMER DETECTED. DID YOU KNOW YOU CAN EARN VALUABLES BY SERVING OTHER GUESTS? PLEASE REFRAIN FROM SPEAKING UNTIL YOU HAVE COMPLETED YOUR NEW QUEST OBJECTIVE.'[roman type][line break]";
		let W be a random nonstalking wisp;
		silently set up W;
		now the wisp-quest of W is brothel-wisp-quest;
		now the wisp-trigger of W is speak-wisp-trigger;
		now the wisp-punishment of W is bimbo-wisp-punishment;
		if (a random number between 0 and 1) + (a random number between 0 and 1) < game difficulty, now the wisp-punishment of W is a random appropriate wisp punishment;
		update background colour of W;
		say "[bold type]A [ColourDesc of W] curse wisp appears, and begins hovering behind you! [roman type]You can sense that you must [bold type][wisp-quest of W][roman type] before you next [bold type][wisp-trigger of W][roman type], or else you will [bold type][wisp-punishment of W][roman type].";
		bore M;
	otherwise:
		say "[big he of M] glides towards you, bowing deeply as [he of M] addresses you in a monotone.[line break][speech style of M]'IT IS CUSTOMARY TO TIP THE SERVICE STAFF, MA[']AM.'[roman type][line break]";
		now the planned-punishment of M is 0;
		calm M.

To serve alcohol from (M - a robobutler):
	now autodrink is 1;
	if the player is able to drink:
		say "[big his of M] eyes turn yellow as [he of M] looks at you.[line break][speech style of M]'PARTYGOER DETECTED. [caps please] HAVE ANOTHER DRINK.'[roman type][line break][BigNameDesc of M] produces a shot glass and pours a shot of [one of]gin[or]vodka[or]white rum[or]Sambuca[purely at random] from a bottle. [big he of M] doesn't seem like [he of M]'s looking for 'no' as an answer. Do you drink the shot? ";
		if the player is bimbo consenting:
			StomachUp 1;
			say "You [unless the player is feeling dominant]obediently [end if]down the fiery liquid in one, feeling the effects almost instantly. ";
			satisfy M;
			increase alcohol level;
		otherwise if the player is getting unlucky:
			say "[big his of M] eyes turn red.[line break][speech style of M]'PARTYPOOPER DETECTED. SELECTING PUNISHMENT ROUTINE...'[roman type][line break]Uh-oh, it looks like you've angered [him of M]! [GotUnluckyFlav]";
			anger M;
			now the planned-punishment of M is 6;
		otherwise:
			say "[big his of M] eyes flash red for a brief moment.[line break][speech style of M]'PARTYPOOPER DETECTED. SUBJECT MAY NEED MORE [']HANDS-ON['] ASSISTANCE IN THE FUTURE.'[roman type][line break][big he of M] turns to leave you alone, for now.";
			FavourDown M;
			bore M;
	otherwise:
		say "[big his of M] eyes turn yellow as [he of M] looks at you.[line break][speech style of M]'PARTYGOER DETECTED. I HOPE YOU ARE ENJOYING THE PARTY.'[roman type][line break]";
		calm M.

To serve urine from (M - a robobutler):
	now autodrink is 1;
	if the player is able to drink:
		say "[big his of M] eyes turn yellow as [he of M] looks at you.[line break][speech style of M]'GREETINGS VISITOR. [caps please] HAVE ANOTHER SPECIAL DRINK.'[roman type][line break][BigNameDesc of M] produces a shot glass of [urine]. [big he of M] doesn't seem like [he of M]'s looking for 'no' as an answer.[line break][variable custom style]Can [he of M] tell that I'm thirsty?![roman type][line break]Do you drink the shot? ";
		if the player is bimbo consenting:
			StomachUp 1;
			say "You [unless the player is feeling dominant]obediently [end if]down the shot of [urine] in one, [if the urine taste addiction of the player < 8]trying to avoid the taste.[line break][variable custom style]Yuck, yuck, yuck![roman type][line break][otherwise if the urine taste addiction of the player < 13]wincing a little at the bitter taste.[otherwise]enjoying the special taste.[end if]";
			StomachUrineUp 1;
			satisfy M;
		otherwise if the player is thirsty:
			say "[big his of M] eyes turn red.[line break][speech style of M]'UNSAFE LEVELS OF DEHYDRATION DETECTED. SUBJECT MUST BE TAUGHT THE CONSEQUENCES OF FAILING TO DRINK SUFFICIENT FLUIDS. SELECTING PUNISHMENT ROUTINE...'[roman type][line break]Uh-oh, it looks like you've angered [him of M]!";
			anger M;
			now the planned-punishment of M is 6;
		otherwise:
			say "[big his of M] eyes flash red for a brief moment.[line break][speech style of M]'RELUCTANCE DETECTED. SUBJECT MAY NEED MORE [']HANDS-ON['] ASSISTANCE IN THE FUTURE.'[roman type][line break][big he of M] turns to leave you alone, for now.";
			FavourDown M;
			bore M;
	otherwise:
		say "[big his of M] eyes turn yellow as [he of M] looks at you.[line break][speech style of M]'GREETINGS VISITOR.'[roman type][line break]";
		calm M.

To serve goop from (M - a robobutler):
	now autodrink is 1;
	if the player is able to drink:
		say "[big his of M] eyes turn yellow as [he of M] looks at you.[line break][speech style of M]'[caps please] ACCEPT THIS FREE DRINK ON BEHALF OF THE MANAGEMENT.'[roman type][line break][BigNameDesc of M] produces a shot glass filled with a thick pink liquid. It's almost certainly not going to be something that *helps* you retain your dignity and sanity, not in this world. But [he of M] doesn't seem like [he of M]'s looking for 'no' as an answer. Do you drink the shot? ";
		if the player is bimbo consenting:
			StomachUp 1;
			say "You [unless the player is feeling dominant]obediently [end if]swallow down the pink goop, feeling the effects almost instantly. ";
			satisfy M;
			if diaper lover > 0 and the player is at least somewhat continent, RandomIncontinenceUp 1;
			otherwise SexAddictUp 1;
		otherwise if the player is getting unlucky:
			say "[big his of M] eyes turn red.[line break][speech style of M]'TROUBLESOME GUEST DETECTED. SELECTING PUNISHMENT ROUTINE...'[roman type][line break]Uh-oh, it looks like you've angered [him of M]! [GotUnluckyFlav]";
			anger M;
			now the planned-punishment of M is 6;
		otherwise:
			say "[big his of M] eyes flash red for a brief moment.[line break][speech style of M]'CUSTOMER ID HAS BEEN ADDED TO THE LIST OF POTENTIALLY TROUBLESOME GUESTS.'[roman type][line break][big he of M] turns to leave you alone, for now.";
			FavourDown M;
			bore M.

Report going in the presence of a robobutler:
	repeat with M running through unconcerned robobutlers in the location of the player:
		if the boredom of M <= 0, now M is unleashed. [TODO fix the edge case where the player walks up the stairs and immediately meets an angry robobutler]

To compute unique boredom of (M - a robobutler):
	now the planned-punishment of M is 0.

Part 3 - Combat

Section 1 - Attack

To compute damaging attack of (M - a robobutler):
	if the difficulty of M > the starting difficulty of M and a random number between 1 and 3 is 1:
		compute stunning attack of M;
	otherwise:
		compute striking attack of M.

To compute stunning attack of (M - a robobutler):
	say "A slot opens up on [NameDesc of M]'s chest, firing out a fluid-filled dart! [run paragraph on]";
	let B be the painful-part of M;
	if the accuracy roll of M >= the dexterity of the player:
		say "The dart hits you [if B is face]in the cheek[otherwise]in the [printed name of B][end if]! [run paragraph on]";
		if the difficulty of M > the starting difficulty of M + 1 and a random number between 1 and 3 is 1:
			say "You feel your dexterity being drained as the poison spreads through your veins!";
			increase fudge-poison-timer by 20 + (3 * (the difficulty of M - the starting difficulty of M));
		otherwise:
			say "You feel your fatigue rapidly building up as the poison spreads through your veins!";
			FatigueUp 20;
		BodyRuin 1;
		if B is exposed, PainUp 10;
	otherwise:
		say "You get out of the way before the dart hits you, and it shatters harmlessly against a wall.".

Definition: a robobutler is willing to forcefeed: decide yes.

To compute forcefeed of (M - a robobutler):
	if the player is immobile:
		say "[one of][BigNameDesc of M] waits beside you patiently.[or][cycling]";
	otherwise:
		if the player is not in the target-room of M:
			drag to the target-room of M by M;
		otherwise:
			say "[speech style of M]'DINNER IS SERVED. [caps please] HELP YOURSELF.'[roman type][line break][BigNameDesc of M] slowly but forcefully pushes your head towards the bowls. Unable to fight back, you sigh and submit to [his of M] demands.";
		try BowlFeeding feeding bowls;
		satisfy M for 500 seconds.

To compute (M - a robobutler) cuffing:
	let W be a random off-stage pair of wristcuffs;
	let A be a random off-stage pair of anklecuffs;
	let B be a random off-stage fetish appropriate gag;
	if W is actually summonable:
		say "[BigNameDesc of M] pulls out a [printed name of W] and locks them onto your wrists.";
		summon W locked;
	otherwise if A is actually summonable:
		say "[BigNameDesc of M] pulls out a [printed name of A] and locks them onto your ankles.";
		summon A locked;
	otherwise if B is actually summonable:
		say "[BigNameDesc of M] pulls out a [printed name of B] and forces it into your mouth.";
		summon B locked;
	repeat with C running through worn bondage:
		let K be a random off-stage specific-key;
		if K is a thing:
			compute M locking C with K;
			if the sentence of prison guard < 2, now the sentence of prison guard is 2.

The unique punishment rule of a robobutler is usually the robobutler punishment rule.
This is the robobutler punishment rule:
	let M be current-monster;
	if the planned-punishment of M is 6 and lip gag is actually summonable:
		say "[speech style of M]'SUBJECT NEEDS SUPPORT KEEPING DRINKING ORIFICE ACCESSIBLE.'[roman type][line break][BigNameDesc of M] produces a ring gag shaped like a pair of lips, and pulls it around your mouth!";
		summon lip gag locked;
		let K be a random off-stage specific-key;
		if K is a thing, compute M locking lip gag with K;
	otherwise if the planned-punishment of M is 5:
		let N be a random alive mechanic;
		if N is nothing, now N is a random alive demon lord;
		if N is monster:
			unless the player is in the location of N:
				drag to the location of N by M;
			satisfy M for 500 seconds;
			if N is mechanic, say "[speech style of M]'Looks like there's a lesson in order, then.'[roman type][line break]";
			otherwise say "[speech style of M]'I WILL REFORM YOU ON MY COCK!'[roman type][line break]";
			anger N;
			interest N;
		otherwise:
			compute M cuffing;
		rule succeeds;
	otherwise if the planned-punishment of M is 4:
		let N be a random alive mechanic;
		if N is nothing, now N is a random alive demon lord;
		if N is monster, compute M cuffing;
		otherwise compute angry punishment of M;
		now the planned-punishment of M is 5;
		rule succeeds;
	otherwise if the planned-punishment of M is 3:
		let O be asshole;
		if vagina is exposed and the semen volume of vagina > 0 and the number of things penetrating vagina is 0, now O is vagina;
		let P be a random off-stage basic plug;
		repeat with PL running through off-stage basic plugs:
			if the size of PL >= the insertableGirthAcceptance of O - 1 and the size of PL <= the insertableGirthAcceptance of O + 2:
				now P is PL;
				break;
		if P is plug:
			say "[speech style of M]'CORRECTING ANOMALOUS DISCHARGE.'[roman type][line break][BigNameDesc of M] pulls out a [printed name of P], and pushes it into your [variable O]!";
			if O is vagina, summon P cursed vaginally with quest;
			otherwise summon P cursed with quest;
			satisfy M for 500 seconds;
			rule succeeds;
		otherwise:
			say "[speech style of M]'STORAGE UNIT IS EMPTY OF PLUGS. WE APOLOGISE FOR THE INCONVENIENCE. SEARCHING FOR ALTERNATIVE INTERACTION...'[roman type][line break]";
	otherwise if the planned-punishment of M is 2:
		say "[speech style of M]'ADMINISTERING COLLAGEN SERUM.'[roman type][line break][BigNameDesc of M] uses a small needle to inject something into your lips. Your eyes go wide as they swell up like inflatable pillows.";
		LipsUp 1;
		satisfy M for 500 seconds;
		rule succeeds;[He doesn't drag you if he increases the size of your lips.]
	if presented-orifice is not nothing, say "[speech style of M]'REQUEST NOT UNDERSTOOD. IGNORING.'[roman type][line break]";
	if the currentSlide of security interface > 0 and a random number between 1 and 5 > 2, compute forced screen viewing of M;
	if M is interested, compute forcefeed of M;
	rule succeeds.

To compute forced screen viewing of (M - a robobutler):
	drag to Hotel30 by M;
	satisfy M.

butler-screen is a kind of diaper punishment. The priority of butler-screen is 2.

Definition: butler-screen (called P) is appropriate:
	if current-monster is not robobutler or the number of filled rows in the Table of Published Disgraces is 0, decide no;
	decide yes.

To say DragFlav of (M - a robobutler) to (R - a room):
	say "[BigNameDesc of M] drags you [if the distance of R > 1]all the way [end if]to the [R]!".

To say DragArrival of (M - a robobutler) to (R - Hotel18):
	if the planned-punishment of M is not 5, say "[speech style of M]'DINNER IS SERVED. [caps please] HELP YOURSELF.'[roman type][line break][BigNameDesc of M] slowly but forcefully pushes your head towards the bowls. Unable to fight back, you sigh and submit to [his of M] demands.";
	otherwise say DragArrival of M to Stairwell01.

To say DragArrival of (M - a robobutler) to (R - Hotel30):
	say "[speech style of M]'VIEWING SESSION ENGAGED. [caps please] ENJOY YOURSELF.'[roman type][line break][BigNameDesc of M] slowly but forcefully holds your head back and makes you look at the security interface.".

To say DragArrival of (M - a robobutler) to (R - a room):
	if the planned-punishment of M is 5:
		say "[speech style of M]CRIMINAL DELIVERY PROGRAM COMPLETE. [caps please] WAIT PATIENTLY DURING REFORM PROCESS![roman type][line break]";
	otherwise:
		say "[speech style of M]'ASSISTED MOVEMENT PROGRAM COMPLETE.'[roman type][line break]";

To say StrikingFlav of (M - a robot) on (B - a body part):
	say "[BigNameDesc of M] attempts to strike you [TargetName of B] with a powerful metal fist! ".

To say StrikingSuccessFlav of (M - a robot) on (B - a body part):
	say "[StrikingFlav of M on B][one of]That's going to leave a bruise[or]It's a direct hit[or]It leaves a sore red mark where it hit[at random]!".

To say StrikingFailureFlav of (M - a robot) on (B - a body part):
	say "[StrikingFlav of M on B][one of]You manage to dodge the blow enough that it doesn't hurt.[or]By swiftly blocking the hit, you manage to avoid getting hurt.[or]You manage to step backwards and dodge it.[at random]".

Part 4 - Conversation

Section 1 - Greeting

To say FirstResponse of (M - a robobutler):
	if the class of the player is maid:
		say "[speech style of M]'GREETINGS, COLLEAGUE. GET BACK TO WORK.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'GREETINGS [robogreeting].'[roman type][line break]";

To say RepeatResponse of (M - a robobutler):
	if the class of the player is maid:
		say "[speech style of M]'GET BACK TO WORK.'[roman type][line break]";
	otherwise if M is unconcerned:
		say "[speech style of M]'GREETINGS [robogreeting].'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] ignores you.";

To say robogreeting:
	say "[if the class of the player is maid]SERVANT[otherwise if the player is gendered female or the bimbo of the player > 9]MISS[otherwise]SIR[end if]".

Section 2 - Questioning

To compute answer of (M - a robobutler):
	let C be a random held unsure clothing;
	if the class of the player is maid:
		say "[speech style of M]'GET BACK TO WORK.'[roman type][line break]";
	otherwise if M is not buddy:
		if M is unfriendly and M is interested:
			say "[speech style of M]'STOMACH FILLING IN PROGRESS.'[roman type][line break]";
		otherwise:
			say "[speech style of M]'I HELP WELL-TIPPING CUSTOMERS, [robogreeting].'[roman type][line break]";
	otherwise if C is clothing:
		say "[BigNameDesc of M] points at your [printed name of C].[line break][speech style of M]'THIS ITEM IS [if C is cursed]CURSED[otherwise if C is blessed]BLESSED[otherwise]UNCURSED[end if].'[roman type][line break]";
		now C is sure;
		FavourDown M by 2;
		if M is not buddy:
			say "[BigNameDesc of M] turns around, facing away. One of [his of M] 'hands' is politely placed upturned towards you, as if [he of M] is subtly asking for a tip.";
	otherwise:
		say "[speech style of M]'NOT CURRENTLY, [robogreeting]. APOLOGIES.'[roman type][line break]".

Section 3 - Drink Requesting

To compute unfriendly drink of (M - a robot):
	say "[speech style of M]'NO.'[roman type][line break]".

To compute friendly drink of (M - a robot):
	if the class of the player is maid:
		say "[speech style of M]'GET BACK TO WORK.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'DRINKS ARE AVAILABLE FROM THE MINIBAR, [robogreeting].'[roman type][line break]".

RoboButler ends here.
