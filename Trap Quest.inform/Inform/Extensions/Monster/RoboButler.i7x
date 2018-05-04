RoboButler by Monster begins here.

[A captive robobutler has been tipped recently. A released robobutler is annoyed at the lack of a tip recently.]

A robobutler is a kind of robot. Understand "butler" as robobutler. A robobutler is usually intelligent. The leftover-type of a robobutler is usually 118. A robobutler has a number called planned-punishment.

Figure of robobutler is the file "NPCs/Hotel/Robot/robobutler1.png". The description of robobutler is usually "[RoboButlerDesc]".

polite robobutler is a robobutler. The text-shortcut of polite robobutler is "prb".
unemotional robobutler is a robobutler. The text-shortcut of unemotional robobutler is "urb".

To say ShortDesc of (M - a robobutler):
	say "RoboButler".
To say MediumDesc of (M - polite robobutler):
	say "polite RoboButler".
To say MediumDesc of (M - unemotional robobutler):
	say "unemotional RoboButler".

To say RoboButlerDesc:
	if images visible is 1, display figure of robobutler;
	say "A tall, spindly robot with old fashioned joints and a fixed facial expression etched into [his of the item described] polished metal face. [if the item described is robomaid][big he of the item described] is wearing a frilly black dress, complete with a white apron and a matching headpiece. The plunging neckline that shows off [his of the item described] suggestively welded chest, and one of [his of the item described] arms has a permanent bend in it, giving [him of the item described] the look of a dainty French maid[otherwise][big he of the item described] is wearing a finely tailored suit, complete with a bow-tie and a pair of white gloves. One of [his of the item described] arms is permanently welded to [his of the item described] chest, holding a strange, duster-like apparatus, giving [him of the item described] the look of a posh butler[end if]. [big his of the item described] [']eyes['] glow brightly as [he of the item described] glides around silently on [his of the item described] wheeled feet.".

To set up (M - a robobutler):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 7;
	now the target-room of M is Hotel18;
	now the health of M is the maxhealth of M;
	now M is captive.

This is the spawn initial robobutler rule:
	if the number of alive robobutlers is 0:
		let M be a random robobutler;
		while M is robomaid and (the player is not the donator or diaper quest is 1):
			now M is a random robobutler;
		if debugmode > 0, say "Summoning butler in hotel.";
		summon M in the hotel.
The spawn initial robobutler rule is listed in the setting up hotel monsters rules.

To say speech style of (M - a robobutler):
	if M is robomaid, say second custom style;
	otherwise say first custom style.

Part 1 - Misc Flavour

To say SummoningFlav of (M - a robobutler):
	say "You hear the sound of a robotic voice coming from elsewhere in the hotel. [line break][first custom style]'CAN I HELP YOU SIR?'[roman type][line break]".

To say LeftoverDesc (N - 118):
	say "There is a pile of mangled nuts and bolts here that used to be a fully functional robobutler.[line break]".

Part 2 - Perception

To compute perception of (M - a robobutler):
 	say "[BigNameDesc of M] notices you!";
	FavourDown M;
 	if the class of the player is maid:
 		say "It seems to recognise you as a member of staff and leaves you alone.";
		calm M;
	otherwise if M is friendly:
		say "It glides towards you, bowing deeply as it addresses you in a monotone. [line break][speech style of M]'GREETINGS. I AM [if M is polite robobutler]SERVICE UNIT 1.57[otherwise]ASSISTOTRON 38[end if]. ARE YOU ENJOYING YOUR HOTEL STAY?'[roman type][line break][if M is buddy][line break][otherwise]One of its 'hands' is politely placed upturned towards you, as if it is subtly asking for a tip.[end if]";
	otherwise if (vagina is exposed and the semen volume of vagina > 0 and the number of things penetrating vagina is 0) or (asshole is exposed and belly liquid types > 0 and the number of things penetrating asshole is 0) :
		say "Its eyes turn red and it spins towards you. [line break][speech style of M]'LEAKAGE DETECTED. EMERGENCY PLUGGING PROGRAM ENGAGED.'[roman type][line break]";
		now the planned-punishment of M is 3;
		anger M;
	otherwise if the number of worn catsuits > 0 or the class of the player is vixen:
		say "Its eyes turn red and it spins toward you. [line break][speech style of M]'BURGLAR DETECTED! CRIMINAL APPREHENSION PROGRAM INITIATED!'[roman type][line break]";
		now the planned-punishment of M is 4;
		anger M;
	otherwise if the lips of face * 5 <= the bimbo of the player and artificial enhancements fetish is 1 and the lips of face < 3:[this in particular is artificial enhancements only]
 		say "Its eyes turn red and it spins towards you. [line break][speech style of M]'COLLAGEN DEFICIENCY DETECTED. TISSUE STIMULATION PROGRAM INITIATED.'[roman type][line break]";
 		anger M;
 		now the planned-punishment of M is 2;
	otherwise if the player is hungry and the player is able to eat:
 		say "Its eyes turn red and it spins towards you. [line break][first custom style]'EMPTY STOMACH DETECTED. COMPULSORY FEEDING PROGRAM INITIATED.'[roman type][line break]";
 		anger M;
 		now the planned-punishment of M is 1;
 	otherwise:
		say "It glides towards you, bowing deeply as it addresses you in a monotone. [line break][first custom style]'IT IS CUSTOMARY TO TIP THE SERVICE STAFF, MA[']AM.'[roman type][line break]One of its 'hands' is unsubtly placed upturned towards you.";
		now the planned-punishment of M is 0;
		calm M.

Report going in the presence of a robobutler:
	repeat with M running through captive robobutlers in the location of the player:
		if the boredom of M <= 0, now M is released. [TODO fix the edge case where the player walks up the stairs and immediately meets an angry robobutler]

Part 3 - Combat

Section 1 - Attack

Definition: a robobutler (called M) is willing to forcefeed:
	decide yes.

To compute forcefeed of (M - a robobutler):
	if the player is immobile:
		say "[one of][BigNameDesc of M] waits beside you patiently.[or][cycling]";		
	otherwise:
		if the player is not in the target-room of M:
			drag to the target-room of M by M;
		otherwise:
			say "[speech style of M]'DINNER IS SERVED. PLEASE HELP YOURSELF.'[roman type]  [BigNameDesc of M] slowly but forcefully pushes your head towards the bowls. Unable to fight back, you sigh and submit to [his of M] demands.";
		try BowlFeeding a random feeding bowls;
		satisfy M for 500 seconds.

To compute (M - a robobutler) cuffing:
	let W be a random off-stage pair of wristcuffs;
	let A be a random off-stage pair of anklecuffs;
	let B be a random off-stage fetish appropriate gag;
	if W is actually summonable:
		say "[BigNameDesc of M] pulls out a [printed name of W] and locks them onto your wrists. [line break][speech style of M]CRIME SPREE COMPLETE.[roman type][line break]";
		summon W locked;
	otherwise if A is actually summonable:
		say "[BigNameDesc of M] pulls out a [printed name of A] and locks them onto your ankles. [line break][speech style of M]CRIME TERMINATED.[roman type][line break]";
		summon A locked;
	otherwise if B is actually summonable:
		say "[BigNameDesc of M] pulls out a [printed name of B] and forces it into your mouth. [line break][speech style of M]TRIAL COMPLETE.[roman type][line break]";
		summon B locked;
	otherwise:
		repeat with C running through worn bondage:
			if C is unlocked, now C is locked;
			increase the sentence of prison guard by 1;
		say "[BigNameDesc of M]'s eyes flash blue and red for a moment. [line break][speech style of M]TRIAL COMPLETE.[roman type][line break]".

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
			if N is mechanic:
				say "[speech style of M]'Looks like there's a lesson in order, then.'[roman type][line break]";
			otherwise:
				say "[speech style of M]'I WILL REFORM YOU ON MY COCK!'[roman type]";
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
		let P be a random off-stage plug;
		now the size of P is a random number between the openness of O and the openness of O - 2;
		if the size of P is 0, now the size of P is 1;
		say "[speech style of M]'CORRECTING ANOMALOUS DISCHARGE.'[roman type] [BigNameDesc of M] pulls out a [printed name of P], and pushes it into your [variable O]!";
		now P is cursed;
		if O is vagina:
			summon P vaginally;
		otherwise:
			summon P;
		satisfy M for 500 seconds;
		rule succeeds;
	otherwise if the planned-punishment of M is 2:
		say "[speech style of M]'ADMINISTERING COLLAGEN SERUM.'[roman type] [BigNameDesc of M] uses a small needle to inject something into your lips. Your eyes go wide as they swell up like inflatable pillows.";
		LipsUp 1;
		satisfy M for 500 seconds;
		rule succeeds;[He doesn't drag you if he increases the size of your lips.]
	if presented-orifice is not nothing, say "[speech style of M]'REQUEST NOT UNDERSTOOD. IGNORING.'[roman type][line break]";
	if M is interested, compute forcefeed of M;
	rule succeeds.

To say DragFlav of (M - a robobutler) to (R - a room):
	say "[BigNameDesc of M] drags you [if the distance of R > 1]all the way [end if]to the [R]!".
	
To say DragArrival of (M - a robomaid) to (R - Hotel20):
	say "[speech style of M]'LAUNDRY PROTOCOL INITIATED. PLEASE REMAIN SEATED.'[roman type][line break]";

To say DragArrival of (M - a robobutler) to (R - Hotel18):
	if the planned-punishment of M is not 5, say "[speech style of M]'DINNER IS SERVED. PLEASE HELP YOURSELF.'[roman type][line break][BigNameDesc of M] slowly but forcefully pushes your head towards the bowls. Unable to fight back, you sigh and submit to [his of M] demands.";
	otherwise say DragArrival of M to Stairwell01.

To say DragArrival of (M - a robobutler) to (R - a room):
	if the planned-punishment of M is 5:
		say "[speech style of M]CRIMINAL DELIVERY PROGRAM COMPLETE. PLEASE WAIT PATIENTLY DURING REFORM PROCESS![roman type][line break]";
	otherwise:
		say "[speech style of M]'ASSISTED MOVEMENT PROGRAM COMPLETE.'[roman type][line break]";

To say StrikingFlav of (M - a robot) on (B - a body part):
	say "[BigNameDesc of M] attempts to strike you [TargetName of B] with a powerful metal fist!  ".

To say StrikingSuccessFlav of (M - a robot) on (B - a body part):
	say "[StrikingFlav of M on B][one of]That's going to leave a bruise[or]It's a direct hit[or]It leaves a sore red mark where it hit[at random]!".

To say StrikingFailureFlav of (M - a robot) on (B - a body part):
	say "[StrikingFlav of M on B][one of]You manage to dodge the blow enough that it doesn't hurt.[or]By swiftly blocking the hit, you manage to avoid getting hurt.[or]You manage to step backwards and dodge it.[at random]".



Part 4 - Conversation

Section 1 - Greeting

To compute greeting response of (M - a robobutler):
	if the class of the player is maid:
		say "[first custom style]'GET BACK TO WORK.'[roman type][line break]";
	otherwise if M is uninterested:
		compute correct perception of M;
	otherwise if M is captive:
		say "[first custom style]'GREETINGS [robogreeting].'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] ignores you.";
	unless the class of the player is maid, now M is interested.

To say robogreeting:
	say "[if the class of the player is maid]SERVANT[otherwise if the player is female or the bimbo of the player > 9]MISS[otherwise]SIR[end if]".

Section 2 - Questioning

To compute answer of (M - a robobutler):
	let C be a random held unsure clothing;
	if the class of the player is maid:
		say "[speech style of M]'[if M is robomaid]EMPLOYEE BANTER. HA HA.[otherwise]GET BACK TO WORK.[end if]'[roman type][line break]";
	otherwise if M is not buddy:
		compute annoyance of M;
	otherwise if C is clothing:
		say "[BigNameDesc of M] points at your [printed name of C]. [line break][first custom style]'THIS ITEM IS [if C is cursed]CURSED[otherwise if C is blessed]BLESSED[otherwise]UNCURSED[end if].'[roman type][line break]";
		now C is sure;
		FavourDown M by 2;
		if M is not buddy:
			say "[BigNameDesc of M] turns around, facing away. One of its 'hands' is politely placed upturned towards you, as if it is subtly asking for a tip.";
	otherwise:
		say "[first custom style]'NOT CURRENTLY, [robogreeting]. APOLOGIES.'[roman type][line break]".

To compute annoyance of (M - a robobutler):
	if M is unfriendly and M is interested:
		say "[first custom style]'STOMACH FILLING IN PROGRESS.'[roman type][line break]";
	otherwise:
		say "[first custom style]'I HELP WELL-TIPPING CUSTOMERS, [robogreeting].'[roman type][line break]".

Section 3 - Drink Requesting

To compute unfriendly drink of (M - a robot):
	say "[first custom style]'NO.'[roman type][line break]".

To compute friendly drink of (M - a robot):
	if the class of the player is maid:
		say "[first custom style]'GET BACK TO WORK.'[roman type][line break]";
	otherwise:
		say "[first custom style]'DRINKS ARE AVAILABLE FROM THE MINIBAR, [robogreeting].'[roman type][line break]".

Part 5 - Variants

Section 1 - RoboMaid
 
A robomaid is a kind of robobutler. Understand "maid" as robomaid. The description of robobutler is usually "[RoboMaidDesc]".

dainty robomaid is a robomaid. The text-shortcut of robomaid is "drm".
milkmaid is a robomaid. The text-shortcut of milkmaid is "cmm". Understand "mal", "malfunc", "malfunctioning", "milk", "malfunction" as milkmaid.

To say ShortDesc of (M - a robomaid):
	say "RoboMaid".
To say ShortDesc of (M - a milkmaid):
	say "milkmaid".

To say MediumDesc of (M - a dainty robomaid):
	say "dainty RoboMaid".

To say RoboMaidDesc:
	if images visible is 1, display figure of robobutler;
	say "A tall, spindly robot with old fashioned joints and a fixed facial expression etched into [his of the item described] polished metal face. [big he of the item described] is wearing a frilly black dress, complete with a white apron and a matching headpiece. [if the item described is dainty robomaid]The plunging neckline that shows off [his of the item described] suggestively welded chest, and one of [his of the item described] arms has a permanent bend in it, giving [him of the item described] the look of a dainty French maid[otherwise if trap fetish is 0]The plunging neckline shows off [his of the item described] ridiculous chest, and [he of the item described] has a rather conspicuous tent near the crotch. One of [his of the item described] arms is holding a plate of white bottles, giving [him of the item described] the look of a hard working French maid[otherwise]The plunging neckline shows off [his of the item described] ridiculous chest, which was apparently custom welded to have a matching pair of 'nipples' tent the flimsy fabric. One of [his of the item described] arms is holding a plate of white bottles, giving [him of the item described] the look of a hard working French maid[end if]. [His of the item described] [']eyes['] glow brightly as [he of the item described] glides around silently on [his of the item described] wheeled feet.".

To compute perception of (M - a robomaid):
 	say "[BigNameDesc of M] notices you!";
	FavourDown M;
 	if the class of the player is maid:
 		say "It seems to recognise you as a member of staff and leaves you alone.";
		calm M;
	otherwise if M is friendly:
		say "It glides towards you, bowing deeply as it addresses you in a monotone. [line break][speech style of M]'GREETINGS. I AM DO-THE-DISHES-UNIT 4.2.1. ARE YOU ENJOYING YOUR HOTEL STAY?'[roman type][line break]One of its 'hands' is politely placed upturned towards you, as if it is subtly asking for a tip.";
	otherwise if the number of worn dirty clothing > 0:
		say "Its eyes turn red and it spins towards you. [line break][speech style of M]'CLEANLINESS VIOLATION DETECTED. EMERGENCY LAUNDERING PROGRAM INITIATED.'[roman type][line break]";
		anger M;
	otherwise if the number of worn clothing is 0:
		say "Its eyes turn red and it spins towards you. [line break][speech style of M]'DECENCY VIOLATION DETECTED. CLOTHING ASSISTANCE PROGRAM INITIATED.'[roman type][line break]";
		anger M;
 	otherwise:
		say "It glides towards you, bowing deeply as it addresses you in a monotone. [line break][first custom style]'IT IS CUSTOMARY TO TIP THE SERVICE STAFF, MA[']AM.'[roman type][line break]One of its 'hands' is unsubtly placed upturned towards you.";
		calm M.

To compute perception of (M - milkmaid):
	if the class of the player is maid:
		if breasts is lewdly exposed:
			say "It glides towards you, addressing you in a monotone. [line break][speech style of M]HEY GIRLFRIEND. YOU HAVE SOMETHING ON YOUR CHEST. TITS. TEE HEE. TEE HEE.[roman type][line break]It seems to abruptly lose interest.";
			calm M;
		otherwise if the largeness of breasts < 2:[exposed but not lewdly exposed? You must have small breasts!]
			say "Its eyes turn red and it spins toward you. [line break][speech style of M][if lactation fetish is 1]UNDERDEVELOPED MAMMARY CENTRE DETECTED. STIMULATION PROGRAM INITIATED[otherwise]UNDERDEVELOPED CHESTS REFLECT BADLY ON MANAGEMENT. STIMULATION PROGRAM INITIATED[end if].'[roman type][line break]";
			anger M;
		otherwise:
			say "Its eyes turn red and it spins toward you. [line break][speech style of M]UNAUTHORIZED MAMMARY CONCEALMENT DETECTED. LIBERATION PROGRAM INITIATED.[roman type][line break]";
			anger M;
	otherwise if M is friendly:
		say "It glides towards you, bowing deeply as it addresses you in a monotone. [line break][speech style of M]'GREETINGS. I AM TITTYTRON 609. ARE YOU ENJOYING YOUR HOTEL STAY?'[roman type][line break]One of its 'hands' is politely placed upturned towards you, as if it is subtly asking for a tip.";
	otherwise:
		if the stomach of the player <= 4 and the player is able to eat:
			say "Its eyes turn red and it spins towards you. [line break][first custom style]'EMPTY STOMACH DETECTED. COMPULSORY FEEDING PROGRAM INITIATED.'[roman type][line break]";
			anger M;
		otherwise:
			say "It glides toward you, pushing out its chest as it addresses you in a monotone. [line break][first custom style]'FLIRTATION PROGRAM INITIATED....[one of]YOU ARE SEXY.[or]OBSERVE MY TITS, HOT STUFF.[or]I LIKE BIG DICKS.[at random] PLEASE TIP ME.[roman type][line break]One of its 'hands' is unsubtly placed upturned towards you.";
			calm M;
	
The unique punishment rule of a robomaid is the robomaid punishment rule.
This is the robomaid punishment rule:
	if presented-orifice is not nothing, say "[speech style of current-monster]'REQUEST NOT UNDERSTOOD. IGNORING.'[roman type][line break]";
	if the player is immobile:
		say "[one of][BigNameDesc of current-monster] waits beside you patiently.[or][cycling]";
	otherwise if current-monster is milkmaid:
		if the class of the player is maid:
			let C be a random worn top-placed breast covering clothing;
			if C is clothing:
				if C is not-top-displacable:
					say "[BigNameDesc of current-monster] tears off your [printed name of C], exposing your [ShortDesc of breasts]!";
					destroy C;
				otherwise:
					say "[BigNameDesc of current-monster] yanks open your [printed name of C], exposing your [ShortDesc of breasts]!";
					now C is top-displaced;
				rule succeeds;
			otherwise if the largeness of breasts < 2:
				say "[BigNameDesc of current-monster] splashes your chest with a vial of pink liquid, which causes your [ShortDesc of breasts] to suddenly grow!";
				BustUp a random number between 2 and 3;
				bore current-monster for 500 seconds;
				rule succeeds;
		let R be a random number between 1 and 2;
		if face is actually occupied:
			let G be a random clothing penetrating face;
			say "[speech style of current-monster]ORAL OBSTRUCTION DETECTED.[roman type][line break][BigNameDesc of current-monster] tears out your [printed name of G].";
			destroy G;
			rule succeeds;
		otherwise if R is 1 or the class of the player is maid:
			if trap fetish is 0:
				say "[speech style of current-monster]'OOH. OOOH. I NEED YOU. TO SUCK. ME.[roman type] [BigNameDesc of current-monster]'s dress shifts, and a metallic tentacle slithers out from underneath, dripping pointing at you menacingly as it dribbles [semen] along the floor. It curls around your neck and effortlessly forces its way into your mouth. You have no choice but to swallow as it pumps refrigerated [semen] into your mouth, trailing a line of the stuff down your chin when she finally withdraws and begins to wander off.";
				now current-monster is penetrating face;
				StomachSemenUp 3;
				now current-monster is not penetrating face;
				bore current-monster for 500 seconds;
				rule succeeds;
			otherwise:
				say "[BigNameDesc of current-monster] removes a bottle from her tray and forces it in into your hands.";
				let C be a random off-stage can;
				now the fill-colour of C is creamy;
				now the max-doses of C is 2;
				now the doses of C is 2;
				now C is held by the player;
				now the text-shortcut of C is "cmc";
		otherwise:
			if lactation fetish is 1:
				say "[BigNameDesc of current-monster] hugs you to her chest, forcing a rubber teat into your mouth! [line break][speech style of current-monster]'DRINK UP. HONEYBUNCH.'[roman type] Suction kicks in, and you have no choice but to swallow several gulps of ice cold milk before she releases you and begins to wander off.";
				bore current-monster for 500 seconds;
				increase the fat-burning of the player by 250;
				StomachUp 3;
				MilkTasteAddictUp 1;
				rule succeeds;
			otherwise:
				say "[BigNameDesc of current-monster] removes a bottle from her tray and forces it in into your hands.";
				let C be a random off-stage can;
				now the fill-colour of C is white;
				now the max-doses of C is 2;
				now the doses of C is 2;
				now C is held by the player;
				now the text-shortcut of C is "whc";
		if the player is not in the target-room of current-monster:
			drag to the target-room of current-monster by current-monster;
		otherwise:
			say "[speech style of current-monster]'THE FIRST COURSE IS SERVED. ENJOY.'[roman type]  [BigNameDesc of current-monster] slowly but forcefully pushes your head towards the bowls. Unable to fight back, you sigh and submit to [his of current-monster] demands.";
		try BowlFeeding a random feeding bowls;
		let M be a random robochef;
		anger M;
		now M is interested;
		satisfy current-monster for 500 seconds;	
		rule succeeds;
	otherwise if the number of worn dirty clothing > 0:[The maid drags you to the laundry room.]
		unless the player is in Hotel20:
			drag to Hotel20 by current-monster;
		bore current-monster for 500 seconds;
		compute LaundryRobots;
		rule succeeds;
	otherwise if the number of worn clothing is 0 and there is a alive robobellboy:[the maid drags you to the nearest robobellboy for clothing.]
		let N be a random robobellboy in the location of the player;
		unless N is monster:
			now N is a random robobellboy;
			drag to the location of N by current-monster;
		if N is dangerous:
			say "[speech style of current-monster]'PLEASE WAIT PATIENTLY FOR FURTHER SERVICE.'[roman type]";
		otherwise:
			say "[speech style of current-monster]'ATTENTION. DECENCY ASSISTANCE REQUIRED.'[roman type] [BigNameDesc of current-monster]'s eyes blink purple several times, and the [N] suddenly wheels around. Uh-oh.";
			anger N;
		bore current-monster for 500 seconds;
		rule succeeds;
	otherwise:
		if the player is not in the target-room of current-monster, drag to the target-room of current-monster by current-monster;
		otherwise say "[speech style of current-monster]'THE FIRST COURSE IS SERVED. ENJOY.'[roman type]  [BigNameDesc of current-monster] slowly but forcefully pushes your head towards the bowls. Unable to fight back, you sigh and submit to [his of current-monster] demands.";
		try BowlFeeding a random feeding bowls;
		let M be a random robochef;
		anger M;
		now M is interested;
		satisfy current-monster for 500 seconds;	
		rule succeeds.


RoboButler ends here.

