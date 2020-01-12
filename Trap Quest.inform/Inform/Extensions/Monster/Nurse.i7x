Nurse by Monster begins here.

nurse is a staff member.

nurse is in School11. The text-shortcut of nurse is "nrs". nurse has a number called boost-cooldown. nurse has a number called wont-change. nurse has a number called boost-int-drain. nurse has a number called breast-enhancement.

Figure of nurse is the file "NPCs/School/nurse1.png".
Figure of enslaved diapered nurse is the file "NPCs/School/nurse3.png".

To decide which figure-name is the monster-image of (M - nurse):
	decide on figure of nurse.

To decide which figure-name is the pacified-image of (M - nurse):
	if M is sex-enslaved, decide on figure of enslaved nurse;
	if M is diaper-enslaved, decide on figure of enslaved diapered nurse;
	decide on figure of Missing NPC.

To say ShortDesc of (M - nurse):
	say "nurse".

To say MediumDesc of (M - nurse):
	say "nurse".

To say MonsterDesc of (M - nurse):
	if M is sex-enslaved:
		say "The nurse has lost the bottom half of [his of M] purple dress. What material is left is bunched up at [his of M] waist, exposing the magical purple thigh strap which keeps [his of M] legs snapped tightly together, and prevents [him of M] from being able to walk around. A magic purple vibrator is embedded in [his of M] butthole, visibly and audibly buzzing away inside [his of M] ass, never tiring, never ceasing. [big his of M] [if bukkake fetish is 1]cum covered [end if]facial expression reveals [his of M] mental state - vacant, orgasm-addled, but happy. [big he of M] waddles around on [his of M] knees, gleefully licking up a bit of cum [he of M]'s found stuck to [his of M] glove.";
	otherwise if M is diaper-enslaved:
		say "The fingers of the nurse's gloves have been removed, turning them into long latex fingerless mittens. Her mouth is kept full by a large purple pacifier gag. Her skirt has been shortened, so it fully exposes her new thick pale purple diaper. [if diaper quest is 1]A loud buzzing is emanating from the inside of her diaper, and you think you can see a stream of lady-drool trickling down one of her legs, which might explain why her face is constantly red and sweating.[otherwise]Every few seconds, she winces and you hear a nasty squelch-fart sound come from her rear end. Her diaper is beginning to leak now, as you watch a steady sticky stream of [semen] trickle down her right leg. It would appear that she's been cursed to have her anal cavity constantly slowly filled with [semen]...[end if]";
	otherwise:
		say "Even the nurse of this institution is not immune from its theme: [his of M] tight purple latex dress hugs [his of M] slim figure and emphasises the curves of [his of M] [if lady fetish is 2]ass[otherwise]tits and ass[end if]. White rubber gloves, a white rubber nurse headband and a matching rubber nurse apron complete the look, which screams 'fetish'. [big his of M] long black hair rests alluringly on [his of M] shoulders. Black lipstick and a naughty grin gives [him of M] a slight air of... evil. You feel like [he of M] definitely doesn't see you as an equal.";

Definition: nurse is willing to do oral: decide yes.

To regionally place (M - nurse):
	now M is in School11.

To set up (M - nurse):
	reset M;
	now the monstersetup of M is 1;
	now M is in School11;
	now the difficulty of M is the starting difficulty of M;
	now the health of M is the maxhealth of M.

To decide which number is the starting difficulty of (M - nurse):
	decide on 5.

Definition: nurse (called M) is dangerous:
	if M is interested and M is awake and the boredom of M is 0 and the health of M > 0:
		if M is unfriendly and (the scared of M is 0 or M is penetrating a body part or M is grabbing the player), decide yes;
		if the boost-cooldown of M > 0 and the player is not tired and the body soreness of the player is 0 and the noun is south, decide yes;
	decide no.

Definition: nurse is dismissable: decide no.

To compute friendly boredom of (M - nurse):
	if the player is not in the location of M and the player is not in School11 and the player is not in School12, now M is uninterested.

To bore (M - nurse) for (N - a number) seconds:
	dislodge M;
	compute common boredom of M for N seconds;
	if armband is worn:
		calm M; [The nurse never gets distracted from her job, instead she just turns friendly after dealing with you]
	otherwise:
		now M is uninterested;
		now the boredom of M is N.

Definition: nurse (called M) is successfully blocking: [Do they succeed in a roll to stop the player moving]
	if the noun is south and M is in School11, decide yes; [The nurse always blocks the entrance into the med bay if she is 'dangerous' - either you're fighting her or she's not willing to give you another 'boost'.]
	let R be (a random number from 1 to the difficulty of M * 2) + the movement reduction of the player; [When we check the movement reduction of the player for the first time in a round, if it is significant, it outputs text explaining why the player is struggling to move away from the monster.]
	if debuginfo > 0, say "[input-style][ShortDesc of M][']s movement block check: player movement penalty ([movement reduction of the player]) + block skill d[difficulty of M * 2] ([R - the movement reduction of the player]) = [R] | ([the dexterity of the player].5) dexterity[roman type][line break]";
	if R > the dexterity of the player, decide yes;
	decide no.

To say MovementBlock of (M - nurse):
	say "[BigNameDesc of M] stands into the doorway, completely blocking your path![line break][speech style of M]'No dear, you're not allowed back there unless you need to use the bed.'[roman type][line break]";

To say DamageReactHealthy of (M - nurse):
	say "[BigNameDesc of M] easily takes the hit! [line break][speech style of M]'[one of]Ooh!'[or]Oof!'[at random][roman type][line break]".

To say DamageReactDamaged of (M - nurse):
	say "[BigNameDesc of M] flinches, taking the hit! [line break][speech style of M]'[one of]Ow!'[or]Oof!'[at random][roman type][line break]".

To say DamageReactTired of (M - nurse):
	say "[BigNameDesc of M] takes the hit, staggering! [line break][speech style of M]'[one of]Ouch!'[or]Ow!'[at random][roman type][line break]".

To say DamageReactWeak of (M - nurse):
	say "[BigNameDesc of M] takes the hit, fighting to maintain [his of M] balance! [line break][speech style of M]'[one of]Ooh!'[or]Ouch!'[at random][roman type][line break]".

To say StrikingFlav of (M - a nurse) on (B - a body part):
	say "[BigNameDesc of M] grabs you by the wrist and pulls your arm toward her with seemingly impossible strength!".

To say StrikingSuccessFlav of (M - a nurse) on (B - a body part):
	say "[StrikingFlav of M on B]She pricks your biceps with the syringe of pink liquid, which immediately makes you woozy.".

To say StrikingFailureFlav of (M - a nurse) on (B - a body part):
	say "[StrikingFlav of M on B][one of]You manage to escape before she can prick you with the syringe[or]You manage to dodge the syringe[or]You bat away the syringe before she can prick you[in random order].".

To compute (M - nurse) striking (B - a body part):
	FatigueUp a random number between the difficulty of M and the buckle threshold of the player / 6;
	passively stimulate arms from M.

To compute damage of (M - nurse):
	if the health of M > 0:
		if M is uninterested or M is friendly:
			say "She raises an eyebrow and pulls out a syringe full of pink liquid. [line break][speech style of M]'Don't fret dear, this will help you calm down some.'[roman type][line break]";
			now M is interested;
			anger M;
		otherwise:
			say DamageReaction (the health of M) of M;
	otherwise:
		if the health of M <= 0:
			compute death of M.

To compute teaching of (M - nurse):
	say "[speech style of M]'My skills are a bit more... [']hands-on['] than just transferring knowledge.'[roman type][line break]".

Chapter - Perception

This is the nurse boost cooldown rule:
	if the boost-cooldown of nurse > 0:
		decrease the boost-cooldown of nurse by counters-seconds;
		if the boost-cooldown of nurse <= 0:
			say "You feel your body calm down as the positive [if the boost-int-drain of nurse > 0]and negative [end if]effects of the nurse's [']boost['] come to an end.";
			now the boost-int-drain of nurse is 0;
			if nurse is in the location of the player and nurse is not grabbing the player and nurse is friendly, say "The [nurse] stretches out the wrist of one glove, and lets it snap back into place.[line break][speech style of nurse]'Okay I think that's long enough. If you want another [']boost['], I'm ready to give you one. Just get on the med bay bed.'[roman type][line break]".
The nurse boost cooldown rule is listed in the advance counters rules.

Definition: nurse (called M) is aware that the player needs a change:
	if diaper lover <= 0, decide no;
	if the wont-change of M > 0, decide no;
	repeat with N running through things grabbing the player:
		if N is not M, decide no;
	let D be a random worn knickers;
	if D is currently visible knickers or D is messed knickers:
		if the urine-soak of D + the water-soak of D > the soak tolerance of M or D is messed, decide yes;
 		if D is crotch-ripped diaper, decide yes;
 	decide no.

To compute student perception of (M - nurse):
	if M is aware that the player needs a change:
		compute diaper check of M;
	otherwise if the breast-enhancement of M is 1:
		say "[speech style of M]'Ah yes, I've been expecting you, [NameBimbo]. You're here for your breast enhancement, right? If so, [please] hop on the table in the med bay and I'll make sure you get what you need.'[roman type][line break]";
	otherwise if the body soreness of the player > 0:
		say "[speech style of M]'Oh no [honey of M], you look [if the body soreness of the player > 8]like you've been through the wars[otherwise if the body soreness of the player > 4]sore all over[otherwise]a little hurt[end if]! Why don't you come through to the med bay [one of]with me? I'm sure we can... make you better...'[or]so we can get your body changed back to the way it should be...'[stopping][roman type][line break]";
	otherwise if the player is tired:
		say "[speech style of M]'You look [if the player is not very tired]a little [end if]tired, [honey of M]. Want to come through to the medbay for a quick rest?'[roman type][line break]";
	otherwise if the boost-cooldown of M <= 0:
		say "[speech style of M]'Are you looking for a [']boost['], [honey of M]? If so, [please] hop on the table in the med bay and I'll make sure you get what you need.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Sorry [honey of M], but if I give you a [']boost['] too often then there'll be none left for anyone else. You'll have to come back [if the boost-cooldown of M < 50]soon[otherwise]later[end if].'[roman type][line break]".

To say FirstResponse of (M - a nurse):
	say "[speech style of M]'[one of]Hello there. Have we met before, sweetie?'[or]Hey there sweetie. Are you a new student?'[or]Hello. You must be a new student.'[at random][roman type][line break]".

To say RepeatResponse of (M - a nurse):
	let E be the extra lives of the player;
	say "[speech style of M]'Good [if E is 1]morning[otherwise if E is 2]evening[otherwise if E is 3]afternoon[end if]. [if the player is tired or the body soreness of the player > 0]I[']ll have you feeling better in no time, don[']t you worry[otherwise]I hope you[']re feeling alright, sweetie[end if].'[roman type][line break]".

To say WhoQuestion of (M - a nurse):
	say "[variable custom style]'Who are you?'[roman type][line break]".

To say WhoAnswer of (M - a nurse):
	say "[speech style of M]'I'm the nurse! Glad to make your acquaintance, dear.'[roman type][line break]".

To say WhereAnswer of (M - a nurse):
	say "[speech style of M]'[if the rank of the player <= 1]You're in the nurse's office sweetie. If you're not feeling too well, why not try coming with me to the back?'[otherwise]Mmm, I'm not sure. Just do your best on your school-work and I'm sure you'll be all ranked up in no time!'[end if][roman type][line break]".

To say EscapeAnswer of (M - a nurse):
	say "[speech style of M]'[one of]Mmm, I don't know. Maybe you need to increase your rank before you can find out?[or]Mmm, well, I have to stay here to take care of the students, so I don't know too much about that.'[or]Sorry honey, but I don't know much about that. Maybe when you're all done here you should try increasing your rank?'[at random][roman type][line break]".

To say StoryAnswer of (M - a nurse):
	say "[speech style of M]'Mmm, well, I started working here because I love making people feel good. Doesn't matter where this place came from as long as I can do that.'[roman type][line break]".

To say AdviceAnswer of (M - a nurse):
	say "[speech style of M]'Remember where this place is so you can come back and let me patch you up when you get hurt, alright honey?'[roman type][line break]".

To compute teaching of (M - a nurse):
	say "[speech style of M]'You feeling alright, honey? All you need to do to learn is go to class!'[roman type][line break]".

Chapter - Motion

[Nurse is never supposed to leave her little area]

To compute (M - nurse) seeking (D - a direction):
	if the player is in School11 or the player is in School12 or M is unfriendly:
		try M going D;
		compute monstermotion reactions of M.

To compute monstermotion of (M - nurse):
	unless M is in School11, compute room leaving of M.

[Nurse always successfully follows the player]
To decide which number is the seek roll of (M - nurse):
	decide on 1. [Needs to be greater than 0 to succeed.]


Chapter - Combat

To say FriendlyMouthPenetrationFlav of (M - nurse):
	say MouthPenetrationFlav of M.

To say MouthPenetrationFlav of (M - nurse):
	say "[NameDesc of M] lifts up [his of M] dress[if lady fetish is 2], allowing you to glimpse a mint-green chastity cage for an instant before [he of M] turns around and plops right down on your face[otherwise] and plonks her bare shaved [HoleDesc of M] right down onto your mouth[end if].";
	now the sex-length of M is 1.

To compute facial sex of (M - a nurse):
	decrease the sex-length of M by 1;
	if lady fetish is 2, say "[BigNameDesc of M] holds your head in place, panting as [he of M] grinds his ass against you. [line break][speech style of M]'Ooh yes, this won't take long...'[roman type][line break]";
	otherwise say "[BigNameDesc of M] grinds her cunt over your nose and mouth, coating them in her juices. [line break][speech style of M]'Ooh yes, this won't take long...'[roman type][line break]";
	if med bay bed is grabbing the player:
		if another-turn-flavour is "", now another-turn-flavour is "You're still strapped to the chair and [FuckerDesc of nurse] is still sitting on your face.";
		now another-turn is 1.

To compute facial climax of (M - nurse):
	TimesSubmittedUp M by 1;
	LickCount;
	if lady fetish is 2, say "[BigNameDesc of M] grunts and shudders, a strong orgasm washing over him. Several droplets of clear precum hit your face as [his of M] [sissy-penis] desperately strains against its cage. You feel [if the oral sex addiction of the player > 6]even more eager to perform oral sex in the future[otherwise]somewhat more comfortable with the act of performing oral sex[end if].";
	otherwise say "[BigNameDesc of M] grunts as she shudders, a strong orgasm washing over her. Your mouth and face soon feel even wetter than before as her girlcum joins her other juices on your face. You feel [if the oral sex addiction of the player > 6]even more eager to perform oral sex in the future[otherwise]somewhat more comfortable with the act of performing oral sex[end if].";
	OralSexAddictUp 1;
	say "[BigNameDesc of M] takes a few moments to recover and then plucks her [HoleDesc of M] from your mouth and nose, allowing you to breathe[if med bay bed is grabbing the player]. She unbuckles the straps holding you down and allows you to leave[end if].";
	dislodge med bay bed;
	satisfy M;
	calm M;
	now M is interested;
	now the boredom of M is 0; [because otherwise she stops following us and we can enter the med bay bed without her]
	now the health of M is the maxhealth of M.

Chapter - DQ

To say ForcefeedDeclarationFlav of (M - nurse):
	say "".

To say ForcefeedStartFlav of (M - nurse):
	say "".

Definition: nurse is willing to forcefeed pills: decide yes.

To say ForcefeedAftermath of (M - nurse):
	calm M;
	say "After it's all gone, [he of M] unbuckles the straps holding you down and allows you to leave.".

To say ForcefeedAfterFlav of (M - nurse):
	say "[speech style of M]'There we go, that should give a growing girl like you the nutrients you need. I bet you feel full of energy now, hmm?'[roman type][line break]You have to admit [he of M]'s right - you do feel fully rested!".

To say ForcefeedPillDeclarationFlav of (M - nurse):
	say "[speech style of M]'[one of]Hmm, and we'd better add this to your prescription!'[or]And now time for your prescription pill!'[stopping][roman type][line break]".

To say DragFlav of (M - nurse) to (R - a room):
	say "[BigNameDesc of M] lifts your entire body up with seemingly impossible strength and carries you in a fireman's hold [if the distance of R > 1]all the way [end if]to the [R]!".

To say DiaperChangeStart of (M - nurse):
	unless M is in School12, drag to School12 by M;
	say "[unless med bay bed is grabbing the player][BigNameDesc of M] lowers you onto the [med bay bed]. [big he of M] pins you down with one strong arm and uses the other to binds your wrists and ankles with the inbuilt straps.[end if]".


Nurse ends here.

