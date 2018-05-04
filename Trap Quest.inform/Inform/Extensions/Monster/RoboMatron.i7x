RoboMatron by Monster begins here.

robomatron is a robot. robomatron is intelligent.
The description of robomatron is "[RoboMatronDesc]". Understand "matron", "matronbot" as robomatron. The text-shortcut of robomatron is "mtb".

To say ShortDesc of (M - robomatron):
	say "MatronBot".

To say MediumDesc of (M - robomatron):
	say "MatronBot".

To say RoboMatronDesc:
	say "This huge humanoid robot looks very robust and powerful.".

To set up (M - robomatron):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 18;
	now the health of M is the maxhealth of M;
	now M is in Hotel36.

This is the spawn initial robomatron rule:
	if robomatron is off-stage and diaper quest is 1:
		summon robomatron in the hotel.
The spawn initial robomatron rule is listed in the setting up hotel monsters rules.

Part 1 - Perception

To compute perception of (M - robomatron):
	now M is interested;
	now the difficulty of M is 5;
	say "[BigNameDesc of M] notices you!  [speech style of M]'TEST SUBJECT DETECTED. FINAL BOSS ROUTINE ENGAGED. SCANNING STATUS...[line break]";
	let D be a random worn diaper;
	unless D is a worn total protection diaper:
		say "NO [if there is a worn diaper]INTACT [end if]DIAPER DETECTED. INCREASING POWER LEVEL BY 3.";
		DifficultyUp M by 3;
	if diaper lover > 2 and D is not messed diaper:
		say "NO MESSED DIAPER DETECTED. INCREASING POWER LEVEL BY 2.";
		DifficultyUp M by 2;
	unless D is diaper and the total-soak of D  < the soak-limit of D:
		say "NO FULLY USED DIAPER DETECTED. INCREASING POWER LEVEL BY 1.";
		DifficultyUp M by 1;
	if D is diaper and the total-soak of D is 0:
		say "COMPLETELY UNUSED DIAPER DETECTED. INCREASING POWER LEVEL BY 1.";
		DifficultyUp M by 1;
	unless there is a worn pacifier:
		say "NO PACIFIER DETECTED. INCREASING POWER LEVEL BY 2.";
		DifficultyUp M by 2;
	unless the player is incontinent:
		say "POTTY UNTRAINING INCOMPLETE. INCREASING POWER LEVEL BY 2.";
		DifficultyUp M by 2;
	if the cringe appearance of the player < 10:
		say "APPEARANCE INSUFFICIENTLY DEGRADING. INCREASING POWER LEVEL BY 2.";
		DifficultyUp M by 2;
	if the difficulty of M > 5:
		anger M;
		say "PREPARE YOURSELF.'[roman type][line break]";
	otherwise:
		calm M;
		say "SUBJECT'S TRANSFORMATION IS COMPLETE. TERMINATING FINAL BOSS ROUTINE.'[roman type][line break]The robot adopts a passive stance, and seems to be willing to allow you to access the STOP button.".

Part 2 - Motion

To compute motion of (M - robomatron):
	do nothing.

To compute (M - robomatron) seeking (D - a direction):
	do nothing.

To compute fleeing of (M - robomatron):
	do nothing.

Part 3 - Combat

Section 1 - Attack

To compute kneeling reaction of (M - robomatron):
	say "[BigNameDesc of M] stands over you, [his of M] powerful arms folded in front of [him of M]. [line break][speech style of M]'DETERMINING APPROPRIATE PUNISHMENT ROUTINE.'[roman type][line break]";
	humiliate 75.

Definition: robomatron (called M) is willing to spank:
	decide yes.

Definition: robomatron (called M) is willing to spank gently:
	decide no.

To decide which number is the spanking length of (M - robomatron):
	decide on a random number between 3 and 4.

Definition: robomatron (called M) is willing to deliver enemas:
	decide yes.

Definition: robomatron (called M) is eager to enhance the spanking:
	decide yes.

To say SpankingMercyRejectionFlav of (M - robomatron):
	say "[speech style of M]'ERROR: NO MERCIFUL PUNISHMENT ROUTINE IN DATA BANK.'[roman type]  It doesn't look like [NameDesc of M] plans to be nice.".

To say SpankingStartFlav of (M - robomatron):
	say "[BigNameDesc of M] grabs you by the ankles and pulls you into the air, so that you are hanging vertically upside down!  [line break][variable custom style][if the player is able to speak]'Eek! Put me down!!!'[otherwise]What?! No way, I can't get punished like this[one of][or] again[stopping]![end if][roman type][line break]".

To say SpankingDeclarationFlav of (M - robomatron):
	say "[speech style of M]'ULTIMATE SPANKING ROUTINE INITIATED.'[roman type]  ".

To say SpankingFlav of (M - robomatron):
	say "[BigNameDesc of M]'s arm rotates fully at the elbow, delivering [one of]five[or]four[or]six[as decreasingly likely outcomes] powerful blows to your [buttcheeks] with [his of M] hard metal hand. [if there is a worn diaper][DiaperSoftenFlav of M][end if]".

To say SpankingAftermath of (M - robomatron):
	say "[one of]This is the most brutal spanking session you've experienced so far this game[or]Once again you've just experienced a spanking session more brutal than any other in this world[stopping]. [if the delicateness of the player > 8]By the end you have been reduced to a puddle of tears and desperate sobs, begging for mercy and feeling like a little baby[otherwise]You can't stop yourself from crying a bit as the punishment feels never ending, and by the end of the session you really do feel like a little baby[end if].".

To say SpankingAfterFlav of (M - robomatron):
	say "After this [he of M] seems satisfied, lowers you to the floor gently and allows you to crawl away.".

To decide which number is the enema quarts of (M - robomatron):
	decide on 4.

To say EnemaDeclarationFlav of (M - robomatron):
	say "[speech style of M]'ULTIMATE ENEMA ROUTINE INITIATED.'[roman type]  ";

To say EnemaStartFlav of (M - robomatron):
	say "A small tube emerges from [NameDesc of M]'s right palm[one of]. It looks like her whole right arm is also an enema delivery mechanism![or].[stopping]".

To say EnemaFlav of (M - robomatron):
	if the sex-length of M is 4:
		say "[BigNameDesc of M] pushes the tube into your [asshole], and with a quiet whir you hear a mechanism inside [his of M] torso start up. A moment later, warm water is flooding into your rectum.";
	otherwise if the sex-length of M is 3:
		say "[BigNameDesc of M] continues to administer your enema via the nozzle in [his of M] palm. You feel yourself rapidly becoming more full than is comfortable!";
	otherwise if the sex-length of M is 2:
		say "[BigNameDesc of M] shows no signs of pulling [his of M] enema nozzle out of your [asshole] any time soon. Your belly churns and groans as it is filled far past the limits of what it is used to taking. You feel a bit queasy.";
	otherwise:
		say "Your belly keeps on expanding until you feel like you're literally about to burst!  It bulges out from your body, making you look nine months pregnant. [line break][variable custom style]How is this even possible?![roman type][line break]".

To say EnemaAftermath of (M - robomatron):
	say "[BigNameDesc of M] finally pulls [his of M] hand away, freeing your [asshole].".

To say EnemaAfterFlav of (M - robomatron):
	say "[speech style of M]'PUNISHMENT CONCLUDED[unless there is a worn total protection diaper]. TOILET QUEST IS NOW ACTIVE. WARNING: EXPULSION IN THIS ROOM IS FORBIDDEN[end if].'[roman type]  [BigNameDesc of M] now seems to be allowing you to leave.".

To compute enema floor reaction of (M - robomatron):
	humiliate 200;
	if player-squatting is 1, humiliate 500;
	say "[BigNameDesc of M]'s eyes turn red. [line break][speech style of M]BAD GIRL. BAD GIRL.'[if M is grabbing the player]'[otherwise]FORBIDDEN ACTIVITY DETECTED. SELECTING PUNISHMENT ROUTINE.'[end if][roman type][line break]";
	anger M;
	now M is interested.

Section 2 - Damage

To compute damage of (M - robomatron):
	if the health of M > 0:
		if M is unfriendly:
			if the health of M > the maxhealth of M / 2, say "[BigNameDesc of M] doesn't pay any attention to the damage!";
			otherwise say "[one of][BigNameDesc of M]'s movement seems slightly more erratic now, as if her joints have suffered some proper damage.[or][BigNameDesc of M] is forced to slightly recoil![stopping]";
		otherwise:
			anger M;
			now M is interested;
			say "Suddenly, [NameDesc of M]'s eyes turn red, making [him of M] look very angry. [line break][variable custom style]Maybe that wasn't such a good idea...[roman type][line break]";
	otherwise:
		compute death of M.

To compute unique death of (M - robomatron):
	say "[speech style of M]'CRITICAL ERROR...'[roman type][line break][BigNameDesc of M]'s metal arms fall out of their sockets, and the light disappears from [his of M] eyes. A moment later, [his of M] entire body clatters to the ground.".

RoboMatron ends here.

