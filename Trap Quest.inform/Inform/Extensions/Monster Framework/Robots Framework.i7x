Robots Framework by Monster Framework begins here.

A robot is a kind of monster. A robot is usually neuter. Understand "robo", "robot" as robot. The text-shortcut of robot is "ro". The poison-status of a robot is -1.

To say waitingflav of (M - a robot):
	do nothing.

Definition: A robot (called M) is hotel dwelling:
	decide yes.

To compute (S - a spike bra) damaging (M - a robot):
	say "The [M] completely ignores the spikes on your [printed name of S]!  It must be immune.".
	
To compute (S - a striped top) damaging (M - a robot):
	say "The [M] completely ignores the spikes on your [printed name of S]!  It must be immune.".

To compute kneeling reaction of (M - a robot):
	say "The [M] watches you, with its fixed emotionless expression and red eyes.[if the bimbo of the player < 12]You shudder with shame.[end if]";	
	humiliate 75.

To compute lead holding of (M - a robot):
	do nothing.

Definition: a robot (called M) is virginity taking:
	decide no.

To IdentifiablePosterReaction of (M - a robot):
	say "The [M] looks at the banner, and then at you. [line break][first custom style]'SLUT IDENTIFIED. MOCKING ROUTINE INITIATED. HA HA HA.'[roman type][line break]";
	say "You turn bright red with shame.";
	humiliate the lewdness of a random poster in the location of the player * 2.

To UnidentifiablePosterReaction of (M - a robot):
	say "The [M] looks at the banner. [line break][first custom style]'SLUT UNIDENTIFIABLE. UNFORTUNATE, SINCE SHE IS CLEARLY IN NEED OF FURTHER PUBLIC SHAMING.'[roman type][line break]";
	say "You turn slightly red but don't say a word.";
	humiliate the lewdness of a random poster in the location of the player / 2.

To compute BabyChairReaction of (M - a robot):
	say "The [M] looks at you. [line break][speech style of M]'[one of]GOOD BABY. PLEASE CONTINUE TO EXHIBIT OPTIMAL BEHAVIOUR.'[or]YOUR ACHIEVEMENTS HAVE BEEN RECOGNISED AND RECORDED. CONGRATULATIONS.'[or]YOU ARE AN EXEMPLARY MODEL FOR ALL OUR OTHER BABIES. I WILL SPREAD THE NEWS OF YOUR DEEDS.'[in random order][roman type][line break]";
	Humiliate 50.

This is the robot politely lets you finish rule:
	compute the default taunting of current-monster;
	rule succeeds.
The monster fucked taunting rule of a robot is usually the robot politely lets you finish rule.

To compute the flying player taunting of (M - a robot):
	do nothing.

To say LandingTaunt of (M - a robot):
	say "The [M] watches you land without any emotion or expression.".

To compute the default taunting of (M - a robot):
	say "[one of]The [M] watches you without any emotion or expression.[or][or][cycling]".

To say ToiletPeeDeclaration of (M - a robot):
	say "[if the humiliation of the player < 22500]You squirm uncomfortably, hoping that the [M] isn't intelligent enough to understand what it is watching you do.[otherwise]You casually wonder if the [M] understands what it is witnessing you do.[end if]".

To say GroundPeeReaction of (M - a robot):
	say "[speech style of M]'LEAKAGE DETECTED. SUBJECT APPEARS TO BE [if diaper lover > 0]UNABLE TO CONTROL BASIC BODILY FUNCTIONS[otherwise][one of]PUBLIC DISGRACE[or]DANGEROUSLY PERVERSE[or]IN NEED OF RECONDITIONING[in random order][end if].'[roman type][line break]";
	anger M.

To say ToiletPeeReaction of (M - a robot):
	say "[speech style of M]'[one of]THANK YOU FOR USING THE PROPER TOILET FACILITIES[or]WE APPRECIATE YOU NOT MAKING A MESS ON THE FLOOR[cycling].'[roman type][line break]".

To say ClothesPeeReaction of (M - a robot):
	say GroundPeeReaction of M.

To say DiaperReaction of (M - a robot):
	say "The [M]'s blank metal expression does not change, so it's hard to gauge whether it saw or understood what you just did in front of it.".

To compute (M - a monster) stomping (N - a robot):
	if M is in the location of the player, say "[M] growls at the [N], which the [N] seems to interpret as a command, and it scurries away quickly.";
	regionally place N;
	bore N.

Definition: a robot (called M) is buddy:
	decide no.
	
Definition: a robot (called M) is ally:
	decide no.

Definition: a robot (called M) is guardian:
	decide no.

To compute sudden objectification of (M - a robot):
	say "The [M]'s eyes turn red. [line break][speech style of M]'APPEARANCE THRESHOLD REACHED. LOADING OBJECTIFICATION PROTOCOL...'[roman type][line break]".

To compute sudden babification of (M - a robot):
	say "The [M]'s eyes turn red. [line break][speech style of M]'APPEARANCE THRESHOLD REACHED. LOADING BABY SLAVE TRAINING PROTOCOL...'[roman type][line break]".
 
To decide which number is the bimbo tolerance of (M - a robot):
	decide on 14.

To compute MasturbationReaction of (M - a robot):
	say "The [M] pays absolutely no attention to you.".

To compute diaper mess reaction of (M - a robot):
	if diaper quest is 1:
		say "The [M] looks at you with rapidly flashing colours in its 'eyes', and begins speaking in a garbled voice. [line break][speech style of M]'ERROR: LOGIC MALFUNCTION. RESIDENT IDENTIFIED AS: [']ADULT[']. RESIDENT PERFORMING ACTION: [']DEFECATING IN DIAPER[']. CLASSIFICATION OF ACTION: [']DEFECATING IN DIAPER[']: EXCLUSIVE TO THOSE IDENTIFIED AS [']BABY[']. ONLY POSSIBLE ERROR: [']PHOTORECEPTOR MALFUNCTION[']. PERFORMING DIAGNOSTIC. NO [']PHOTORECEPTOR MALFUNCTION['] DETECTED. MANUAL DIAGNOSTIC OR RESIDENT RECLASSIFICATION NEEDED.'[roman type][line break]";
		anger M;
	otherwise:
		say "The [M] looks at you with its unchanging expression. [line break][speech style of M]'MESSING DETECTED. [if M is unfriendly and M is interested]CHECKING IF PUNISHMENT ROUTINE CAN CONTINUE. PLEASE WAIT...[otherwise]PLEASE PROCEED TO NEAREST LAUNDRY ROOM IMMEDIATELY[end if].'[roman type][line break]";
	humiliate 200.

To compute (M - a robot) protecting against (X - a monster):
	say "[one of]The [M] watches, seemingly not caring about your situation.[or][or][or][cycling]". 

To say MonsterOfferRejectFlav of (M - a robot) to (T - a thing):
	say "The [M] completely ignores the [T].".

To say MonsterOfferAcceptFlav of (M - a robot) to (T - a thing):
	if M is unfriendly:
		say "[speech style of M]'ITEM VALUE ANALYSIS COMPLETE. BRIBE ACCEPTED.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'THANK YOU FOR THE GENEROUS TIP. PLEASE ENJOY YOUR STAY.'[roman type][line break]".

To say OfferThanksFlav of (M - a robot) for (T - a thing):
	say "[speech style of M]'ALLEGIANCE STATUS: [if the favour of M > the bimbo of the player + 6]MAXIMUM[otherwise if the favour of M > the bimbo of the player + 3]AMICABLE[otherwise]ACQUAINTANCE[end if].'[roman type][line break]".

To say FriendlyFoodRefuseFlav of (M - a robot):
	say "[speech style of M]'ERROR: EXISTING FOOD DETECTED.'[roman type][line break]".

To say FriendlyFoodAgreeFlav of (M - a robot):
	say "[speech style of M]'REQUEST UNDERSTOOD. DEPLOYING EMERGENCY MEAL.'[roman type]".

To say FriendlyFoodApologiseFlav of (M - a robot):
	say "[FriendlyFoodEmptyFlav of M]".

To say FriendlyFoodEmptyFlav of (M - a robot):
	say "[speech style of M]'REQUEST UNDERSTOOD. ERROR: NO FOOD FOUND.'[roman type][line break]".

To say UnfriendlyFoodRefuseFlav of (M - a robot):
	say "[speech style of M]'REQUEST UNDERSTOOD. ERROR: CURRENTLY PERFORMING PUNISHMENT ROUTINE.'[roman type][line break]".

To say UnfriendlyFoodLewdFlav of (M - a robot):
	say "[UnfriendlyFoodRefuseFlav of M]".

To say EnemaPlugDeclarationFlav of (M - a robot):
	say "[speech style of M]'DING DING DING!  BONUS PUNISHMENT FOUND ACTIVATED.'[roman type][line break]".

To say EnemaPlugAfterFlav of (M - a robot):
	say "[speech style of M]'BONUS ROUTINE SUCCESSFUL. VOLUNTARY ENEMA EXPULSION NO LONGER POSSIBLE. INVOLUNTARY POTTY EPISODE INEVITABLE.'[roman type][line break]".

To say EnemaFloorReactionFlav of (M - a robot):
	say "The [M] stares at you. [line break][speech style of M]'ANAL EXPULSION DETECTED. [one of]SUBJECT SHOULD BE EXTREMELY ASHAMED[or]HUMILIATION AUDIO TRACK LOADED. HA HA HA[or]SAVING RECORDING TO CLOUD... SAVING... SAVING... UPLOAD COMPLETE: PUBLICATION TO INTERNET SUCCESSFUL. ENJOY YOUR HUMILIATION[in random order][if M is unfriendly and diaper quest is 1]. ADDITIONAL PUNISHMENT ROUTINE LOADING[end if].'[roman type][line break][if the humiliation of the player < 25000][one of]You turn a bright shade of red[or]You blush brightly with shame[or]You shiver with self-consciousness[or]You turn red-faced with shame[in random order].[end if]".

To say SubmissionFlav of (M - a robot):
	say "The [M] stares at you silently before moving closer. ".
	
Part - DQ

To say DiaperChangeStart of (M - a robot):
	say "The [M] holds you still in mid-air with one strong arm.".

To say DiaperSpace of (M - a robot):
	say "its chest compartment".

To say DiaperDonateComment of (M - a robot):
	say "[speech style of M]'DIAPER TRAINING ROUTINE INITIATED. SUBJECT MUST WEAR DIAPERS UNTIL TRAINING ROUTINE ENDS OR FACE CONSEQUENCES.'[roman type][line break]".

Part - Conversation
	
To compute talk option (N - 2) to (M - a robot):
	say "[variable custom style]'Can you help me out?'[roman type][line break]";
	compute answer of M.


Section 1 Damage

To compute damage of (M - a robot):
	if the health of M > 0:
		if M is uninterested or M is friendly:
			say "Its eyes turn red!  Uh-oh...";
			now M is interested;
			now M is released;
			anger M;
			if M is robobellboy, now the target-room of M is nearest patron;
		otherwise:
			say DamageReaction (the health of M) of M;
	otherwise:
		compute death of M.

To say DamageReaction (N - a number) of (M - a robot):
	if N > (the maxhealth of M / 4) * 3:
		if the health of M > the maxhealth of M / 2, say "[big he of M] seems completely oblivious to any damage!";
	otherwise if N > (the maxhealth of M / 4) * 2:
		say "[big he of M] is starting to make creaking sounds as you hit [him of M]!";
	otherwise if N > (the maxhealth of M / 4):
		say "Sparks fly out of [him of M] as you hit [him of M]!";
	otherwise:
		say "The [M]'s metal chassis warps as [he of M] takes the hit.".

To compute unique death of (M - a robot):
	say "The [M] falls apart and clatters to the ground.";
	let D be a random off-stage mechanical joint;
	if D is mechanical joint:
		now D is in the location of the player;
		say "You manage to salvage a working [D].";
		compute autotaking D;
	let L be a random off-stage leftover;
	now the leftover-type of L is the leftover-type of M;[robots leave a corpse behind that the mechanic can fix.]
	now L is in the location of the player;
	destroy M.
	
To finally destroy (M - a robot):
	uniquely destroy M;
	now the times-met of M is 0;
	[now the blue-balls of M is 0;]
	now the times-fucked of M is 0;
	now the times-dominated of M is 0;
	now the sex-length of M is 0;
	now the collar-pulled of M is 0;
	remove M from play;
	reset M.


Robots Framework ends here.

