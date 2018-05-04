RoboChef by Monster begins here.

A robochef is a kind of robot. A robochef is intelligent. A robochef is male. A robochef has a number called patrol. The leftover-type of a robochef is usually 119.

Figure of robochef is the file "NPCs/Hotel/Robot/robochef1.png". The description of robochef is "[RoboChefDesc]". The text-shortcut of robochef is "rc".

There is 1 robochef. Understand "chef", "busy" as robochef.

To say ShortDesc of (M - a robochef):
	say "RoboChef".

To say MediumDesc of (M - a robochef):
	say "busy RoboChef".

To say RoboChefDesc:
	if images visible is 1, display figure of robochef;
	say "A human sized metal robot dressed as a head chef. It looks like a robot out of Futurama, with a fixed metal facial expression and old fashioned joints. Its 'eyes' glow brightly as he glides around silently on his wheels-for-feet. ";
	if diaper quest is 0, say "At its groin, a normal sized rock solid transparent solid penis is filled with [if lactation fetish is 1 and watersports fetish is 1]some horrid grey liquid that looks a lot like it might be a mixture of [semen], [milk] and [urine][otherwise if watersports fetish is 1]some horrid yellowish liquid that looks a lot like it might be a mixture of [urine] and [semen][otherwise if lactation fetish is 1]some horrid white liquid that looks a lot like it might be a mixture of [milk] and [semen][otherwise]thick white [semen][end if].";
	otherwise say line break.

To set up (M - a robochef):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 8;
	now the health of M is the maxhealth of M.

This is the spawn initial robochef rule:
	if the number of alive robochefs is 0:
		let M be a random robochef;
		if debugmode > 0, say "Summoning chef in hotel.";
		summon M in the hotel.
The spawn initial robochef rule is listed in the setting up hotel monsters rules.

To decide which number is the girth of (M - a robochef):
	decide on 4.

Definition: a robochef (called M) is willing to do oral:
	decide no.

Definition: a robochef (called M) is willing to do vaginal:
	decide no.

Definition: a robochef (called M) is willing to do titfucks:
	decide no.

Part 1 - Misc Flavour

To say SummoningFlav of (M - a robochef):
	say "You hear the sound of a robotic voice coming from elsewhere in the hotel. [line break][first custom style]'CULINARY WORK SEQUENCE COMMENCING.'[roman type][line break]".

To say LeftoverDesc (N - 119):
	say "There is a pile of mangled nuts and bolts here that used to be a fully functional robochef.[line break]".

Part 2 - Motion

To compute motion of (M - a robochef):
	if the player is in Hotel19:
		check seeking 1 of M;
	otherwise if a random number from 1 to 2 is 1:
		if patrol of M is 0:
			let D be the the best route from the location of M to Hotel19 through modern rooms;
			if D is nothing:
				now the patrol of M is 1;
			otherwise:
				try M going D;
				if the location of M is Hotel19, now patrol of M is 1;
		otherwise if patrol of M is 1:
			let D be the the best route from the location of M to Hotel18 through modern rooms;
			if D is nothing:
				now the patrol of M is 2;
			otherwise:
				try M going D;
				if the location of M is Hotel18, now patrol of M is 2;
		otherwise if patrol of M is 2:
			let D be the the best route from the location of M to Hotel21 through modern rooms;
			if D is nothing:
				now the patrol of M is 0;
			otherwise:
				try M going D;
				if the location of M is Hotel21, now patrol of M is 0;
		compute motion reactions of M.

Part 3 - Perception

To compute perception of (M - a robochef):
	say "[BigNameDesc of M] notices you!";
	if the number of plentiful accessories retained by M > 0:
		say "Its eyes flash yellow. [line break][first custom style]HELLO, CUSTOMER. YOU STILL HAVE FUNDS REMAINING IN YOUR ACCOUNT.[roman type][line break]";
	otherwise if the class of the player is maid:
		say "It seems to recognise you as a member of staff and leaves you alone.";
		bore M for 450 seconds;
	otherwise if asshole is lewdly exposed:
		say "Its eyes turn red. [line break][first custom style]'[one of]VALID INJECTION ORIFICE FOUND[or]STATUS OF COOK.ASSISTANT: FOUND[or]IDENTIFIED COOKING ASSISTANT[at random]. COMPULSORY SOUP BREWING PROGRAM INITIATED.'[roman type][line break]";
		anger M;
	otherwise if M is in Hotel19:
		say "It seems to be eyeing you closely, but doesn't make an aggressive move.";
		calm M;
	otherwise:
		say "It appears to be completely uninterested in you and continues on its way.";
		bore M.

To compute DQ perception of (M - a robochef):
	say "[BigNameDesc of M] notices you!";
	if the number of worn diapers is 0 and (the player is full or the player is desperate to pee or the water volume of belly > 0):
		say "Its eyes turn red. [line break][first custom style]'IMMINENT TOILET ACCIDENT DETECTED. HYGIENE SAFETY ASSESSMENT: UNACCEPTABLE. TOILET ACCIDENT AVERSION PROGRAM INITIATED.'[roman type][line break]";
		anger M;
	otherwise if the player is hungry:
		say "Its eyes turn red. [line break][first custom style]'HUNGRY [if the class of the player is maid]EMPLOYEE[otherwise]GUEST[end if] DETECTED. COMPULSORY FEEDING PROGRAM INITIATED.'[roman type][line break]";
		anger M;
	otherwise if the class of the player is maid:
		say "It seems to recognise you as a member of staff and leaves you alone.";
		bore M for 450 seconds;
	otherwise if M is in Hotel19:
		say "It seems to be eyeing you closely, but doesn't make an aggressive move.";
		calm M;
	otherwise:
		say "It appears to be completely uninterested in you and continues on its way.";
		bore M.

Definition: a robochef (called M) is concealment immune: [Can the monster ignore salves of concealment, butt slut, etc.]
	decide yes.

Definition: a robochef (called M) is able to remove cursed plugs: [Can the monster remove all butt plugs?]
	decide yes.



Part 4 - Combat

Chapter 1 - Attack

The latex punishment rule of a robochef is usually the no latex punishment rule.

To say PullAttempt of (M - a robochef) at (C - a clothing):
	say "[BigNameDesc of M] pulls at your [printed name of C] with a strong metal hand, trying and rip it off!".
	
To compute (M - a robochef) destroying (C - a clothing):
	say "[BigNameDesc of M] rips it off, destroying it completely!";
	destroy C.

To compute (M - a robochef) ripping (C - a clothing):
	say "[BigNameDesc of M] manages to create a tear in the fabric!  Your [printed name of C] is now permanently ripped.";
	now C is crotch-ripped.

To set up sex length of (M - a robochef) in (F - asshole):
	set up sex length (a random number between 2 and 3) of M in F.

To say AssholePenetrationFlav of (M - a robochef):
	say "[BigNameDesc of M] forces its glass [manly-penis] into your [asshole]!".

To compute anal sex of (M - a robochef):
	say "[BigNameDesc of M] continues to [one of]methodically plow[or]emotionlessly fuck[or]steadily thrust into[in random order] your [asshole]!";
	decrease the sex-length of M by 1;
	ruin asshole.

To decide which number is the condom resistance of (M - a robochef):
	if the number of off-stage bag lunches is 0, decide on 99;
	decide on 0.

To say CondomRejectFlav of (M - a robochef):
	say "[speech style of M]ERROR, BAG LUNCH DOT BATCH IS UNAVAILABLE. GOTO TEN. RESUMING SOUP BREWING PROGRAM.[roman type] Looks like it couldn[']t handle your request...".

To compute unique climax of (M - a robochef) in (F - asshole):
	if M is wrapped:
		compute condom filling of M;
	otherwise:
		say "You can feel the filling of [NameDesc of M]'s [manly-penis] being squirted straight into your belly!";
		AssFill 6 - ((watersports fetish * 2) + (lactation fetish * 2));
		if watersports fetish is 1, AssFill 2 Urine;
		if lactation fetish is 1, AssFill 2 Milk;
		say "[BigNameDesc of M] pulls out. [line break][first custom style]'SOUP INGREDIENT[if lactation fetish + watersports fetish > 0]S[end if] INSERTED. BREWING IN PROGRESS. ENJOY YOUR MEAL.'[roman type][line break]It turns away from you and leaves you alone.";
		say "[variable custom style][one of][if the bimbo of the player < 8]This is hardly what I'd call [']brewing[']![otherwise if the bimbo of the player < 14]It's using my butthole for brewing?![otherwise]I can't wait until it's finished brewing! Yum![end if][or][if the bimbo of the player < 8]How did I let this happen again![otherwise if the bimbo of the player < 14]My belly has gotten a lot of use as a cum-dumpster this game![otherwise]That felt good...[end if][stopping][roman type][line break]";
	FavourUp M;
	bore M.

To compute condom filling of (M - a robochef):
	now M is unwrapped;
	say "You can feel the rubbery coating of [M]'s [manly-penis] stretching as it floods with warm filling, catching briefly on the inside of your hole as the chef slowly removes [his of M] 'genitals' from your ass.[line break][speech style of M]'BAGGED LUNCH COMPLETE. ENJOY YOUR MEAL.'[roman type][line break][BigNameDesc of M] emits a sharp *ding*, and its bulging rubber [manly-penis] detaches from [his of M] body, landing behind you with a pronounced *plop*. It seems to lose interest.";
	ruin asshole;
	let L be a random off-stage bag lunch;
	now L is in the location of the player;

To say CondomAcceptFlav of (M - a robochef):
	say "[line break][first custom style]'PROCESSING REQUEST FOR BAGGED LUNCH....SUCCESSFUL.'[roman type] [BigNameDesc of M]'s glass penis retracts into its body, replacing itself with a black rubber dildo of the same size.".

Chapter 2 - DQ

Definition: a robochef (called M) is willing to donate diapers:
	if the player is full or the player is desperate to pee or the water volume of belly > 0, decide yes;
	decide no.

Definition: a robochef (called M) is willing to forcefeed:
	decide yes.

To decide which number is the forcefeed-length of (M - a robochef):
	decide on a random number between 2 and 4.

To say ForcefeedDeclarationFlav of (M - a robochef):
	say "[speech style of M]'[one of]PLEASE OPEN YOUR NUTRITION CONSUMPTION ORIFICE.'[or]PLEASE REMAIN IN THE NUTRITION RECEPTION POSITION.'[in random order][roman type][line break]".

To say ForcefeedStartFlav of (M - a robochef):
	say "[BigNameDesc of M] wheels around so that [he of M] is standing in front of you, with [his of M] arms holding your shoulders in place. A panel in the front of [NameDesc of M]'s torso opens, revealing rows of open jars of baby food, each with its own spoon on its own mechanical arm. Soon there are a queue of spoons, some with crushed banana, others with mushy peas and carrots, and others with stuff you can't even identify waiting to push their way in. And then the first one does, depositing its load between your lips, followed immediately by another, and another. You are forced to keep swallowing just to keep up with the speed of the spoons. Fortunately, the food doesn't require chewing!".

To compute forcefeed round (N - a number) of (M - a robochef):
	say "[BigNameDesc of M]'s robotic spoons continue to [one of]shovel[or]deposit[or]cram[in random order] baby food into your mouth. You gobble the mouthfuls down as quickly as you can!";
	[if diaper lover >= 3 and a random number between 1 and diaper lover > 1 and (the player is not thirsty or the player is hungry):
		say "baby food into your mouth. You gobble the mouthfuls down as quickly as you can!";]
	StomachFoodUp 2.

To say ForcefeedAftermath of (M - a robochef):
	say "The spoons finally stop returning with more food. The panel in the belly of [NameDesc of M] closes, and [he of M] lets go of your wrists. You are able to crawl away, feeling [if the player is overly full]like your belly is going to burst from overstuffing[otherwise]much more full[end if].".

To say ForcefeedAfterFlav of (M - a robochef):
	say "[speech style of M]'[one of]PLEASE RETURN ONCE [if diaper lover >= 3]YOUR FOOD HAS TAKEN ITS NATURAL COURSE[otherwise]YOU ARE EMPTY AGAIN[end if] FOR A REFILL.'[or]SUBJECT SUFFICIENTLY SATIATED[if diaper lover >= 4]. WARNING: DIAPER RECOMMENDED TO AVOID POTTY FAILURE[end if].'[in random order][roman type][line break].".


Part 5 - Conversation

Section 1 - Greeting

To compute greeting response of (M - a robochef):
	if the class of the player is maid:
		say "[first custom style]'GET BACK TO WORK.'[roman type][line break]";
	otherwise if M is uninterested:
		compute correct perception of M;
	otherwise:
		say "[BigNameDesc of M] ignores you.".

Section 2 - Questioning

To compute answer of (M - a robochef):
	if the class of the player is maid:
		say "[first custom style]'GET BACK TO WORK.'[roman type][line break]";
	otherwise if M is unfriendly:
		say "[first custom style]'PLEASE [if the player is upright]KNEEL[otherwise]WAIT[end if], DINNER MUST FIRST BE PREPARED.'[roman type][line break]";
	otherwise:
		say "[first custom style]'PLEASE ASK THE BUTLER FOR ASSISTANCE, [robogreeting].'[roman type][line break]".

Definition: a robochef (called M) is willing to give snacks:
	decide yes.


Part 6 - Trading

[The player can offer food to the robochef for a chance of upgrading it.]
To compute (M - a robochef) considering (T - a thing):
	say "[speech style of M]'ASSESSING SUITABILITY OF OFFERED INGREDIENT. STAND BY...'[roman type][line break]";
	let A be a random plentiful accessories retained by M;
	if T is chef food:
		say "[speech style of M]'ERROR. FOODSTUFF IS ALREADY FULLY UPGRADED.'[roman type][line break]";
		now M is rejecting T;
	if T is snack and A is accessory and M is not rejecting T:
		say MonsterOfferAcceptFlav of M to T;
		compute M cooking T;
		let D be a random chef food retained by M;
		if D is chef food:
			say "A grate opens up on [NameDesc of M]'s face as it takes the [printed name of T], allowing the chef to consume it whole. You hear a deep rumbling noise as it processes your food, and after a sharp ding, its chest compartment opens up and [NameDesc of M] hands you a fresh [printed name of D].[line break]";[TODO: improve]
			now D is held by the player;
			say "[speech style of M]UPGRADE COMPLETE. PAYMENT HAS BEEN DEDUCTED FROM YOUR ACCOUNT.[roman type][line break]";
			compute resolution of M taking T;
			destroy T;
			now D is not retained by M;
		otherwise:
			say "[speech style of M]ERROR. INSTANCE OF UPGRADED FOODSTUFF ALREADY EXISTS. PLEASE FINISH YOUR FOOD.[roman type][line break]";
			say "Looks like you[']ll need to finish the last thing he gave you before he upgrades your [printed name of T]";
	otherwise if T is snack:
		say "[speech style of M]'ERROR. UNABLE TO DEDUCT THE NECESSARY PAYMENT FROM YOUR ACCOUNT. TRY AGAIN LATER.'[roman type][line break]";
		say "Looks like he's not interested in it right now.";
	otherwise if T is plentiful accessory:
		say "[speech style of M]'PROCESSING DEPOSIT. THANK YOU, CUSTOMER. PAYMENT HAS BEEN ADDED TO YOUR ACCOUNT. PLEASE PROVIDE SUITABLE INGREDIENT FOR COOKING.'[roman type][line break]";
		say "[BigNameDesc of M] takes the [printed name of T].";
		now T is retained by M;
		now T is in Holding Pen;
		compute resolution of M taking T;
	otherwise:
		now M is rejecting T;
		say MonsterOfferRejectFlav of M to T.
		
To compute resolution of (M - a robochef) taking (T - a thing):
	if T is snack:
		let I be a random plentiful accessory retained by M;
		if I is accessory:
			now I is not retained by M;
		bore M;
	otherwise if M is unfriendly:
		calm M;
		if T is plentiful accessory:
			say "[BigNameDesc of M] seems to be waiting for something else.";
		otherwise:
			say "[BigNameDesc of M] seems to lose interest in 'brewing' for now.";
			bore M.
		

To compute (M - a robochef) cooking (I - a fae mushroom):
	let D be a random off-stage stuffed mushroom;
	now the quality of D is a random number between 2 and -2;
	now the fat of D is 2;
	now D is retained by M.

To compute (M - a robochef) cooking (I - a egg):
	let S be 0;
	if I is large egg, now S is 3;
	if I is medium egg, now S is 2;
	if I is small egg, now S is 1;
	if a random number between 1 and 3 is 1:
		let D be a random off-stage cookie;
		now the quality of D is (a random number between S and 0) - 2;
		now the fat of D is S;
		now D is retained by M;
	otherwise:
		let D be a random off-stage stuffed mushroom;
		now the quality of D is (a random number between S and 0) - a random number between 1 and 2;
		now the fat of D is S;
		now D is retained by M.

To say MonsterOfferAcceptFlav of (M - a robochef) to (T - a thing):
	say "[speech style of M]'SUITABILITY RATING: ACCEPTABLE. ADMINISTERING FLAVOUR UPGRADE'[roman type][line break]".

To say MonsterOfferRejectFlav of (M - a robochef) to (T - a thing):
	say "[speech style of M]'SUITABILITY RATING: UNACCEPTABLE.'[roman type][line break]".

To say MonsterOfferRejectFlav of (M - a robochef) to (T - a chef food):
	say "[speech style of M]'ERROR. FOODSTUFF IS ALREADY FULLY UPGRADED.[roman type][line break]".


RoboChef ends here.

