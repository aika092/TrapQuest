Nurse by Monster begins here.

nurse is a staff member.

nurse is in School11. The printed name of nurse is "[if item described is in the location of the player][TQlink of item described][end if][input-style]nurse[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The description of nurse is "[NurseDesc]". The text-shortcut of nurse is "nrs". nurse has a number called boost-cooldown. nurse has a number called boost-int-drain.

Figure of nurse is the file "NPCs/School/nurse1.png".

To say NurseDesc:
	if images visible is 1, display the figure of nurse;
	say "Even the nurse of this institution is not immune from its theme: her tight green latex dress hugs her slim figure and emphasises the curves of her hips and ass. White rubber gloves, a white rubber nurse headband and a matching rubber nurse apron complete the look, which screams 'fetish'. Her long black hair is divided so two long falls reach down past each of her shoulders. Her face is [if artificial enhancements fetish is 1]also rather 'plastic'[otherwise]heavily made up[end if], with long fake eye lashes, dark eyeliner and eye shadow, drawn-on eyebrows and glossy pink lips. She looks at you with a rather lazy and apathetic expression. You feel like she definitely doesn't see you as an equal.";

To set up (M - nurse):
	reset M;
	now the monstersetup of M is 1;
	now M is in School11;
	now the difficulty of M is the starting difficulty of M;
	now the health of M is the maxhealth of M.

To decide which number is the starting difficulty of (M - nurse):
	decide on 5.

To compute motion of (M - nurse):
	do nothing.

Definition: nurse (called M) is dangerous:
	if M is interested and the sleep of M is 0 and the boredom of M is 0 and the health of M > 0:
		if M is unfriendly and (the scared of M is 0 or M is penetrating a body part or M is grabbing the player), decide yes;
		if the boost-cooldown of M > 0 and the player is not tired and the body soreness of the player is 0 and the noun is south, decide yes;
	decide no.

Definition: nurse (called M) is successfully blocking: [Do they succeed in a roll to stop the player moving]
	if the noun is south and M is in School11, decide yes; [The nurse always blocks the entrance into the med bay if she is 'dangerous' - either you're fighting her or she's not willing to give you another 'boost'.]
	let R be (a random number from 1 to the difficulty of M * 2) + the movement reduction of the player; [When we check the movement reduction of the player for the first time in a round, if it is significant, it outputs text explaining why the player is struggling to move away from the monster.]
	if R > the dexterity of the player, decide yes;
	decide no.

To say MovementBlock of (M - nurse):
	say "The [M] stands into the doorway, completely blocking your path![line break][speech style of M]'No dear, you're not allowed back there unless you need to use the bed.'[roman type][line break]";

To say DamageReactHealthy of (M - nurse):
	say "The [noun] easily takes the hit! [line break][speech style of M]'[one of]Ooh!'[or]Oof!'[at random][roman type][line break]".

To say DamageReactDamaged of (M - nurse):
	say "The [noun] flinches, taking the hit! [line break][speech style of M]'[one of]Ow!'[or]Oof!'[at random][roman type][line break]".

To say DamageReactTired of (M - nurse):
	say "The [noun] takes the hit, staggering! [line break][speech style of M]'[one of]Ouch!'[or]Ow!'[at random][roman type][line break]".

To say DamageReactWeak of (M - nurse):
	say "The [noun] takes the hit, fighting to maintain [his of M] balance! [line break][speech style of M]'[one of]Ooh!'[or]Ouch!'[at random][roman type][line break]".

To say StrikingFlav of (M - a nurse) on (B - a body part):
	say "The [M] grabs you by the wrist and pulls your arm toward her with seemingly impossible strength!".

To say StrikingSuccessFlav of (M - a nurse) on (B - a body part):
	say "[StrikingFlav of M on B]She pricks your biceps with the syringe of pink liquid, which immediately makes you woozy.".

To say StrikingFailureFlav of (M - a nurse) on (B - a body part):
	say "[StrikingFlav of M on B][one of]You manage to escape before she can prick you with the syringe[or]You manage to dodge the syringe[or]You bat away the syringe before she can prick you.[at random]".

To compute (M - nurse) striking (B - a body part):
	FatigueUp a random number between the difficulty of M and the buckle threshold of the player / 6;
	Arouse 30.

To compute damage of (M - a nurse):
	if the health of M > 0:
		if M is uninterested or M is friendly:
			say "She raises an eyebrow and pulls out a syringe full of pink liquid. [line break][speech style of M]'Don[']t fret dear, this will help you calm down some.'[roman type][line break]";
			now M is interested;
			anger M;
		otherwise:
			say DamageReaction (the health of M) of M;
	otherwise:
		if the health of M <= 0:
			compute death of M.

Chapter - Perception

This is the nurse boost cooldown rule:
	if the boost-cooldown of nurse > 0:
		decrease the boost-cooldown of nurse by counters-seconds;
		if the boost-cooldown of nurse <= 0:
			say "You feel your body calm down as the positive [if the boost-int-drain of nurse > 0]and negative [end if]effects of the nurse's [']boost['] come to an end.";
			now the boost-int-drain of nurse is 0;
			if nurse is in the location of the player and nurse is not grabbing the player and nurse is friendly, say "The [nurse] stretches out the wrist of one glove, and lets it snap back into place.[line break][speech style of nurse]'Okay I think that's long enough. If you want another [']boost['], I'm ready to give you one. Just get on the med bay bed.'[roman type][line break]".
The nurse boost cooldown rule is listed in the advance counters rules.

To compute student perception of (M - nurse):
	if M is aware that the player needs a change:
		compute diaper check of M;
	otherwise if the body soreness of the player > 0:
		say "[speech style of M]'Oh no [honey of M], you look [if the body soreness of the player > 8]like you've been through the wars[otherwise if the body soreness of the player > 4]sore all over[otherwise]a little hurt[end if]!  Why don't you come through to the med bay [one of]with me?  I'm sure we can... make you better...'[or]so we can get your body changed back to the way it should be...'[stopping][roman type][line break]";
	otherwise if the player is tired:
		say "[speech style of M]'You look [if the player is not very tired]a little [end if]tired, [honey of M]. Want to come through to the medbay for a quick rest?'[roman type][line break]";
	otherwise if the boost-cooldown of M <= 0:
		say "[speech style of M]'Are you looking for a [']boost['], [honey of M]?  If so, please hop on the table in the med bay and I'll make sure you get what you need.'[roman type][line break]";
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
	say "[speech style of M]'[if the rank of the player is 1]You[']re in the nurse's office sweetie. If you[']re not feeling too well, why not try coming with me to the back?'[otherwise]Mmm, I[']m not sure. Just do your best on your schoolwork and I[']m sure you[']ll be all ranked up in no time!'[end if][roman type][line break]".

To say EscapeAnswer of (M - a nurse):
	say "[speech style of M]'[one of]Mmm, I don[']t know. Maybe you need to increase your rank before you can find out?[or]Mmm, well, I have to stay here to take care of the students, so I don[']t know too much about that.'[or]Sorry honey, but I don[']t know much about that. Maybe when you[']re all done here you should try increasing your rank?'[at random][roman type][line break]".

To say StoryAnswer of (M - a nurse):
	say "[speech style of M]'Mmm, well, I started working here because I love making people feel good. Doesn[']t matter where this place came from as long as I can do that.'[roman type][line break]".

To say AdviceAnswer of (M - a nurse):
	say "[speech style of M]'Remember where this place is so you can come back and let me patch you up when you get hurt, alright honey?'[roman type][line break]".

To compute teaching of (M - a nurse):
	say "[speech style of M]'You feeling alright, honey? All you need to do to learn is go to class!'[roman type][line break]".

Chapter - Motion

[Nurse is never supposed to leave her little area]

To compute (M - nurse) seeking (D - a direction):
	if the player is in School11 or the player is in School12:
		try M going D;
		compute motion reactions of M.

To compute motion of (M - nurse):
	unless M is in School11, compute room leaving of M.

[Nurse always successfully follows the player]
To decide which number is the seek roll of (M - nurse):
	decide on 1. [Needs to be greater than 0 to succeed.]


Chapter - Combat

To say MouthPenetrationFlav of (M - nurse):
	say "The [nurse] lifts up her dress and plonks her bare shaved pussy right down onto your mouth.";
	now the sex-length of M is 1.

To compute facial sex of (M - a nurse):
	decrease the sex-length of M by 1;
	say "The [nurse] grinds her cunt over your nose and mouth, coating them in her juices. [line break][speech style of M]'Ooh yes, this won't take long...'[roman type][line break]";
	if med bay bed is grabbing the player, now another-turn is 1.

To compute default facial climax for (M - nurse):
	TimesFuckedUp M by 1;
	say "The [M] grunts as she shudders, a strong orgasm washing over her. Your mouth and face soon feel even wetter than before as her girlcum joins her other juices on your face. You feel [if the oral sex addiction of the player > 6]even more eager to perform oral sex in the future[otherwise]somewhat more comfortable with the act of performing oral sex[end if].";
	OralSexAddictUp 1;
	say "The [M] takes a few moments to recover and then plucks her pussy from your mouth and nose, allowing you to breathe[if med bay bed is grabbing the player]. She unbuckles the straps holding you down and allows you to leave[end if].";
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

Definition: nurse (called M) is willing to forcefeed pills:
	decide yes.

To say ForcefeedAftermath of (M - nurse):
	calm M;
	say "After it's all gone, [he of M] unbuckles the straps holding you down and allows you to leave.".
	
To say ForcefeedAfterFlav of (M - nurse):
	say "[speech style of M]'There we go, that should give a growing girl like you the nutrients you need. I bet you feel full of energy now, hmm?'[roman type][line break]You have to admit she's right - you do feel fully rested!".

To say ForcefeedPillDeclarationFlav of (M - nurse):
	say "[speech style of M]'[one of]Hmm, and we'd better add this to your prescription!'[or]And now time for your prescription pill!'[stopping][roman type][line break]".

To say DragFlav of (M - nurse) to (R - a room):
	say "The [M] lifts your entire body up with seemingly impossible strength and carries you in a fireman's hold [if the distance of R > 1]all the way [end if]to the [R]!".

To say DiaperChangeStart of (M - nurse):
	unless M is in School12, drag to School12 by M;
	say "[unless med bay bed is grabbing the player]The [M] lowers you onto the [med bay bed]. She pins you down with one strong arm and uses the other to binds your wrists and ankles with the inbuilt straps.[end if]".


Nurse ends here.

