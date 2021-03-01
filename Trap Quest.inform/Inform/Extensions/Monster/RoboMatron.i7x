RoboMatron by Monster begins here.

robomatron is a robot. robomatron is intelligent. Understand "matron", "matronbot" as robomatron. The text-shortcut of robomatron is "mtb".

Definition: a robomatron is hotel dwelling: decide no. [Stops it spawning via spawning trap]

To say ShortDesc of (M - robomatron):
	say "MatronBot".

To say MediumDesc of (M - robomatron):
	say "MatronBot".

To say MonsterDesc of (M - robomatron):
	say "This huge humanoid robot looks like it's come straight out of a comic book. Eight arms, each wielding some kind of baby related item at the end, are backed up by two further flying hands, carrying further implements with which to advance your babification. There's no mistake about it - this is some kind of Final Boss.".

Figure of robomatron is the file "NPCs/Bosses/matronbot1.png".

To decide which figure-name is the monster-image of (M - robomatron):
	decide on figure of robomatron.

To set up (M - robomatron):
	reset M;
	now the monstersetup of M is 1;
	now the raw difficulty of M is the starting difficulty of M;
	now the health of M is the maxhealth of M;
	now M is in Hotel36.

To decide which number is the starting difficulty of (M - robomatron):
	decide on 18.

This is the spawn initial robomatron rule:
	if robomatron is off-stage and diaper quest is 1:
		summon robomatron in the hotel.
The spawn initial robomatron rule is listed in the setting up hotel monsters rules.

Definition: robomatron is too intimidating: decide no. [Player should never surrender to final boss]

To compute friendly boredom of (M - robomatron):
	if M is not in the location of the player:
		now M is uninterested;
		now the boredom of M is 0.

Part 1 - Perception

To compute perception of (M - robomatron):
	now the raw difficulty of M is 5;
	say "[BigNameDesc of M] notices you![line break][speech style of M]'TEST SUBJECT DETECTED. FINAL BOSS ROUTINE ENGAGED. SCANNING STATUS...[line break]";
	if the wealth of the player < 20:
		say "INSUFFICIENT FUNDS DETECTED. PUSHING BUTTON AND ENDING THE SIMULATION WILL RESULT IN 12 MONTHS OF SERVITUDE TO NINTENDOLLS. TERMINATING FINAL BOSS ROUTINE. THE CHOICE IS YOURS.'[roman type][line break]The robot adopts a passive stance, and seems to be willing to allow you to access the STOP button.";
		calm M;
	otherwise:
		let D be a random worn diaper;
		unless D is a total protection diaper:
			say "NO [if D is diaper]INTACT [end if]DIAPER DETECTED. INCREASING POWER LEVEL BY 3.";
			SilentlyDifficultyUp M by 3;
		if diaper messing >= 4 and D is not messed diaper:
			say "NO MESSED DIAPER DETECTED. INCREASING POWER LEVEL BY 1.";
			SilentlyDifficultyUp M by 1;
		if D is unsoiled diaper:
			say "COMPLETELY UNUSED DIAPER DETECTED. INCREASING POWER LEVEL BY 1.";
			SilentlyDifficultyUp M by 1;
		if the incontinence of the player < the max-incontinence of the player:
			say "POTTY UNTRAINING INCOMPLETE. INCREASING POWER LEVEL BY 2.";
			SilentlyDifficultyUp M by 2;
		if the cringe appearance of the player < 14:
			say "APPEARANCE INSUFFICIENTLY DEGRADING. INCREASING POWER LEVEL BY 2.";
			SilentlyDifficultyUp M by 2;
		if the player is male and TG fetish > 0:
			say "SEX CHANGE INCOMPLETE. INCREASING POWER LEVEL BY 2.";
			SilentlyDifficultyUp M by 2;
		if the difficulty of M > 5:
			unless there is a worn pacifier:
				say "NO PACIFIER DETECTED. INCREASING POWER LEVEL BY 1.";
				SilentlyDifficultyUp M by 1;
			anger M;
			say "PREPARE YOURSELF.'[roman type][line break]";
		otherwise:
			calm M;
			say "SUBJECT'S TRANSFORMATION IS COMPLETE. TERMINATING FINAL BOSS ROUTINE.'[roman type][line break]The robot adopts a passive stance, and seems to be willing to allow you to access the STOP button.";
	now the health of M is the maxhealth of M.

Part 2 - Motion

To compute monstermotion of (M - robomatron):
	do nothing.

To compute (M - robomatron) seeking (D - a direction):
	do nothing.

Definition: robomatron is scarable: decide no.

Part 3 - Combat

Section 1 - Attack

To compute kneeling reaction of (M - robomatron):
	say "[BigNameDesc of M] stands over you, [his of M] powerful arms folded in front of [him of M].[line break][speech style of M]'DETERMINING APPROPRIATE PUNISHMENT ROUTINE.'[roman type][line break][if the player is not shameless]You cast your eyes down with shame.[end if]";
	moderateHumiliate.

Definition: robomatron is willing to spank: decide yes.

Definition: robomatron is willing to spank gently: decide no.

To decide which number is the spanking length of (M - robomatron):
	decide on a random number between 3 and 4.

Definition: robomatron is willing to deliver enemas: decide yes.

Definition: robomatron is eager to enhance the spanking: decide yes.

To say SpankingMercyRejectionFlav of (M - robomatron):
	say "[speech style of M]'ERROR: NO MERCIFUL PUNISHMENT ROUTINE IN DATA BANK.'[roman type] It doesn't look like [NameDesc of M] plans to be nice.".

To say SpankingStartFlav of (M - robomatron):
	say "[BigNameDesc of M] grabs you by the ankles and pulls you into the air, so that you are hanging vertically upside down![line break][variable custom style][if the player is able to speak]'Eek! Put me down!!!'[otherwise]What?! No way, I can't get punished like this[one of][or] again[stopping]![end if][roman type][line break]".

To say SpankingDeclarationFlav of (M - robomatron):
	say "[speech style of M]'ULTIMATE SPANKING ROUTINE INITIATED.'[roman type][line break]".

To say SpankingFlav of (M - robomatron):
	say "[BigNameDesc of M][']s arm rotates fully at the elbow, delivering [one of]five[or]four[or]six[as decreasingly likely outcomes] powerful blows to your [buttcheeks] with [his of M] hard metal hand. [if there is a worn diaper][DiaperSoftenFlav of M][end if]".

To say SpankingAftermath of (M - robomatron):
	say "[one of]This is the most brutal spanking session you've experienced so far this game[or]Once again you've just experienced a spanking session more brutal than any other in this world[stopping]. [if the delicateness of the player > 8]By the end you have been reduced to a puddle of tears and desperate sobs, begging for mercy and feeling like a little baby[otherwise]You can't stop yourself from crying a bit as the punishment feels never ending, and by the end of the session you really do feel like a little baby[end if].".

To say SpankingAfterFlav of (M - robomatron):
	say "After this [he of M] seems satisfied, lowers you to the floor gently and allows you to crawl away.".

To decide which number is the enema quarts of (M - robomatron):
	decide on 4.

To say EnemaDeclarationFlav of (M - robomatron):
	say "[speech style of M]'ULTIMATE ENEMA ROUTINE INITIATED.'[roman type] ";

To say EnemaStartFlav of (M - robomatron):
	say "A small tube emerges from [NameDesc of M][']s right palm[one of]. It looks like [his of M] whole right arm is also an enema delivery mechanism![or].[stopping]".

To say EnemaFlav of (M - robomatron):
	if the sex-length of M is 4:
		say "[BigNameDesc of M] pushes the tube into your [asshole], and with a quiet whirr you hear a mechanism inside [his of M] torso start up. A moment later, warm water is flooding into your rectum.";
	otherwise if the sex-length of M is 3:
		say "[BigNameDesc of M] continues to administer your enema via the nozzle in [his of M] palm. You feel yourself rapidly becoming more full than is comfortable!";
	otherwise if the sex-length of M is 2:
		say "[BigNameDesc of M] shows no signs of pulling [his of M] enema nozzle out of your [asshole] any time soon. Your belly churns and groans as it is filled far past the limits of what it is used to taking. You feel a bit queasy.";
	otherwise:
		say "Your belly keeps on expanding until you feel like you're literally about to burst! It bulges out from your body, making you look nine months pregnant.[line break][variable custom style]How is this even possible?![roman type][line break]".

To say EnemaAftermath of (M - robomatron):
	say "[BigNameDesc of M] finally pulls [his of M] hand away, freeing your [asshole].".

To say EnemaAfterFlav of (M - robomatron):
	say "[speech style of M]'PUNISHMENT CONCLUDED[unless there is a worn total protection diaper]. TOILET QUEST IS NOW ACTIVE. WARNING: EXPULSION IN THIS ROOM IS FORBIDDEN[end if].'[roman type] [BigNameDesc of M] now seems to be allowing you to leave.".

To compute enema floor reaction of (M - robomatron):
	humiliate 200;
	if voluntarySquatting is 1, humiliate 500;
	say "[BigNameDesc of M][']s eyes turn red.[line break][speech style of M]BAD [caps boy of the player]. BAD [caps boy of the player].'[if M is grabbing the player]'[otherwise]FORBIDDEN ACTIVITY DETECTED. SELECTING PUNISHMENT ROUTINE.'[end if][roman type][line break]";
	anger M;
	now M is interested.

Section 2 - Damage

To compute damage reaction of (M - robomatron):
	if M is unfriendly:
		if the health of M > the maxhealth of M / 2, say "[BigNameDesc of M] doesn't pay any attention to the damage!";
		otherwise say "[one of][BigNameDesc of M][']s movement seems slightly more erratic now, as if [his of M] joints have suffered some proper damage.[or][BigNameDesc of M] is forced to slightly recoil![stopping]";
	otherwise:
		check guaranteed perception of M.

Definition: robomatron is automatically banishable: decide yes. [Will this NPC automatically resolve their disappearance rather than giving the player options on what to do?]

To compute automatic banishment of (M - robomatron):
	compute banishment of M.

To compute banishment of (M - robomatron):
	say "[speech style of M]'CRITICAL ERROR...'[roman type][line break][BigNameDesc of M][']s eyes lose their colour, and [he of M] seems to... shut down?";
	now the health of M is 1;
	calm M.

RoboMatron ends here.
