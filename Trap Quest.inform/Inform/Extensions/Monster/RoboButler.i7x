RoboButler by Monster begins here.

[An unconcerned robobutler has been tipped recently. An unleashed robobutler is annoyed at the lack of a tip recently.]

A robobutler is a kind of robot. Understand "butler" as robobutler. A robobutler is usually intelligent. The leftover-type of a robobutler is usually 118. A robobutler has a number called planned-punishment.

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
	say "A tall, spindly robot with old fashioned joints and a fixed expression etched into [his of M] polished metal face. [big he of M] is wearing a finely tailored suit, complete with a bow-tie and a pair of white gloves. One of [his of M] arms is permanently welded to [his of M] chest, holding a strange, duster-like apparatus, giving [him of M] the look of a posh butler. [big his of M] [']eyes['] glow brightly as [he of M] glides around silently on [his of M] wheeled feet.".

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
	say first custom style.

Part 1 - Misc Flavour

To say SummoningFlav of (M - a robobutler):
	if M is in the location of the player:
		say "The teleporter emits a definitive sounding hum, and light fills the room as a tall, spindly robot materialises on the pad.[line break][first custom style]'CAN I HELP YOU SIR?'[roman type][line break]";
	otherwise:
		say "You hear the sound of a robotic voice coming from elsewhere in the hotel.[line break][first custom style]'CAN I HELP YOU SIR?'[roman type][line break]".

To say LeftoverDesc (N - 118):
	say "There is a pile of mangled nuts and bolts here that used to be a fully functional robobutler.[line break]".

Part 2 - Perception

To compute perception of (M - a robobutler):
	say "[BigNameDesc of M] notices you!";
	FavourDown M;
	if the class of the player is maid:
		say "[big he of M] seems to recognise you as a member of staff and leaves you alone.";
		calm M;
	otherwise if dominatrix-cage is grabbing the player or M is friendly:
		if alcohol fetish is 1 and (alcohol > 0 or hungover > 0 or there is worn party themed wearthing):
			serve alcohol from M;
		otherwise if a random number between 0 and watersports fetish is 1:
			serve urine from M;
		otherwise:
			say "[big he of M] glides towards you, bowing deeply as [he of M] addresses you in a monotone.[line break][speech style of M]'GREETINGS. I AM [if M is polite robobutler]SERVICE UNIT 1.57[otherwise]ASSISTOTRON 38[end if]. ARE YOU ENJOYING YOUR HOTEL STAY?'[roman type][line break][if M is buddy][line break][otherwise]One of [his of M] 'hands' is politely placed upturned towards you, as if [he of M] is subtly asking for a tip.[end if]";
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
		say "[big his of M] eyes turn red and [he of M] spins towards you.[line break][first custom style]'EMPTY STOMACH DETECTED. COMPULSORY FEEDING PROGRAM INITIATED.'[roman type][line break]";
		anger M;
		now the planned-punishment of M is 1;
	otherwise:
		say "[big he of M] glides towards you, bowing deeply as [he of M] addresses you in a monotone.[line break][first custom style]'IT IS CUSTOMARY TO TIP THE SERVICE STAFF, MA[']AM.'[roman type][line break]One of [his of M] 'hands' is unsubtly placed upturned towards you.";
		now the planned-punishment of M is 0;
		calm M.

To serve alcohol from (M - a robobutler):
	now autodrink is 1;
	if the player is able to drink:
		say "[big his of M] eyes turn yellow as [he of M] looks at you.[line break][first custom style]'PARTYGOER DETECTED. [caps please] HAVE ANOTHER DRINK.'[roman type][line break][BigNameDesc of M] produces a shot glass and pours a shot of [one of]gin[or]vodka[or]white rum[or]Sambuca[purely at random] from a bottle. [big he of M] doesn't seem like [he of M]'s looking for 'no' as an answer. Do you drink the shot? ";
		if the player is bimbo consenting:
			StomachUp 1;
			say "You [unless the player is feeling dominant]obediently [end if]down the fiery liquid in one, feeling the effects almost instantly. ";
			satisfy M;
			increase alcohol level;
		otherwise:
			say "[big his of M] eyes flash red for a brief moment.[line break][first custom style]'PARTYPOOPER DETECTED. SUBJECT MAY NEED MORE [']HANDS-ON['] ASSISTANCE IN THE FUTURE.'[roman type][line break][big he of M] turns to leave you alone, for now.";
			FavourDown M;
			bore M;
	otherwise:
		say "[big his of M] eyes turn yellow as [he of M] looks at you.[line break][first custom style]'PARTYGOER DETECTED. I HOPE YOU ARE ENJOYING THE PARTY.'[roman type][line break]";
		calm M.

To serve urine from (M - a robobutler):
	now autodrink is 1;
	if the player is able to drink:
		say "[big his of M] eyes turn yellow as [he of M] looks at you.[line break][first custom style]'GREETINGS VISITOR. [caps please] HAVE ANOTHER SPECIAL DRINK.'[roman type][line break][BigNameDesc of M] produces a shot glass of [urine]. [big he of M] doesn't seem like [he of M]'s looking for 'no' as an answer. Do you drink the shot? ";
		if the player is bimbo consenting:
			StomachUp 1;
			say "You [unless the player is feeling dominant]obediently [end if]down the shot of [urine] in one, [if the urine taste addiction of the player < 8]trying to avoid the taste.[line break][variable custom style]Yuck, yuck, yuck![roman type][line break][otherwise if the urine taste addiction of the player < 13]wincing a little at the bitter taste.[otherwise]enjoying the special taste.[end if]";
			StomachUrineUp 1;
			satisfy M;
		otherwise:
			say "[big his of M] eyes flash red for a brief moment.[line break][first custom style]'RELUCTANCE DETECTED. SUBJECT MAY NEED MORE [']HANDS-ON['] ASSISTANCE IN THE FUTURE.'[roman type][line break][big he of M] turns to leave you alone, for now.";
			FavourDown M;
			bore M;
	otherwise:
		say "[big his of M] eyes turn yellow as [he of M] looks at you.[line break][first custom style]'GREETINGS VISITOR.'[roman type][line break]";
		calm M.

Report going in the presence of a robobutler:
	repeat with M running through unconcerned robobutlers in the location of the player:
		if the boredom of M <= 0, now M is unleashed. [TODO fix the edge case where the player walks up the stairs and immediately meets an angry robobutler]

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
		if B is exposed, PainUp 1;
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
		say "[BigNameDesc of M] pulls out a [printed name of W] and locks them onto your wrists.[line break][speech style of M]CRIME JUSTICE COMPLETE.[roman type][line break]";
		summon W locked;
	otherwise if A is actually summonable:
		say "[BigNameDesc of M] pulls out a [printed name of A] and locks them onto your ankles.[line break][speech style of M]CRIME TERMINATED.[roman type][line break]";
		summon A locked;
	otherwise if B is actually summonable:
		say "[BigNameDesc of M] pulls out a [printed name of B] and forces it into your mouth.[line break][speech style of M]TRIAL COMPLETE.[roman type][line break]";
		summon B locked;
	otherwise:
		repeat with C running through worn bondage:
			if C is unlocked, now C is locked;
			increase the sentence of prison guard by 1;
		say "[BigNameDesc of M][']s eyes flash blue and red for a moment.[line break][speech style of M]TRIAL COMPLETE.[roman type][line break]".

The unique punishment rule of a robobutler is usually the robobutler punishment rule.
This is the robobutler punishment rule:
	let M be current-monster;
	if the planned-punishment of M is 5:
		let N be a random alive mechanic;
		if N is nothing, now N is a random alive demon lord;
		if N is monster:
			unless the player is in the location of N:
				drag to the location of N by M;
			satisfy M for 500 seconds;
			if N is mechanic, say "[speech style of M]'Looks like there's a lesson in order, then.'[roman type][line break]";
			otherwise say "[speech style of M]'I WILL REFORM YOU ON MY COCK!'[roman type]";
			anger N;
			now N is interested;
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
			now P is cursed;
			if O is vagina:
				summon P vaginally;
			otherwise:
				summon P;
			compute summoned quest of P;
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
	if the currentSlide of security screens > 0 and a random number between 1 and 5 > 2, compute forced screen viewing of M;
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
	say "[speech style of M]'VIEWING SESSION ENGAGED. [caps please] ENJOY YOURSELF.'[roman type][line break][BigNameDesc of M] slowly but forcefully holds your head back and makes you look at the security screens.".

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

[To compute basic greeting to (M - a robobutler):
	if M is interested:
		say VanityGreeting to M;
	otherwise:
		if the times-met of M < 2, say FirstGreeting to M;
		otherwise say RepeatGreeting to M;
		unless the class of the player is maid:
			now the boredom of M is 0;
			compute correct perception of M.]

To say FirstResponse of (M - a robobutler):
	if the class of the player is maid:
		say "[first custom style]'GREETINGS, COLLEAGUE. GET BACK TO WORK.'[roman type][line break]";
	otherwise:
		say "[first custom style]'GREETINGS [robogreeting].'[roman type][line break]";

To say RepeatResponse of (M - a robobutler):
	if the class of the player is maid:
		say "[first custom style]'GET BACK TO WORK.'[roman type][line break]";
	otherwise if M is unconcerned:
		say "[first custom style]'GREETINGS [robogreeting].'[roman type][line break]";
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
			say "[first custom style]'STOMACH FILLING IN PROGRESS.'[roman type][line break]";
		otherwise:
			say "[first custom style]'I HELP WELL-TIPPING CUSTOMERS, [robogreeting].'[roman type][line break]";
	otherwise if C is clothing:
		say "[BigNameDesc of M] points at your [printed name of C].[line break][first custom style]'THIS ITEM IS [if C is cursed]CURSED[otherwise if C is blessed]BLESSED[otherwise]UNCURSED[end if].'[roman type][line break]";
		now C is sure;
		FavourDown M by 2;
		if M is not buddy:
			say "[BigNameDesc of M] turns around, facing away. One of [his of M] 'hands' is politely placed upturned towards you, as if [he of M] is subtly asking for a tip.";
	otherwise:
		say "[first custom style]'NOT CURRENTLY, [robogreeting]. APOLOGIES.'[roman type][line break]".

Section 3 - Drink Requesting

To compute unfriendly drink of (M - a robot):
	say "[first custom style]'NO.'[roman type][line break]".

To compute friendly drink of (M - a robot):
	if the class of the player is maid:
		say "[first custom style]'GET BACK TO WORK.'[roman type][line break]";
	otherwise:
		say "[first custom style]'DRINKS ARE AVAILABLE FROM THE MINIBAR, [robogreeting].'[roman type][line break]".

RoboButler ends here.
