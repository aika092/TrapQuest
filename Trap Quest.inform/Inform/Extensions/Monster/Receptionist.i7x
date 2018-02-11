Receptionist by Monster begins here.

receptionist is a staff member. receptionist is captive.

receptionist is in School01. The printed name of receptionist is "[if item described is in the location of the player][TQlink of item described][end if][input-style]receptionist[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The description of receptionist is "[ReceptionistDesc]". The text-shortcut of receptionist is "rcp".

Figure of receptionist is the file "receptionist1.png".

To say ReceptionistDesc:
	if images visible is 1, display the figure of receptionist;
	say "This woman looks like she's in her mid-thirties, but her complexion and physique are completely perfect in every way. A made up face and long blonde hair sit on top of a Barbie-doll body with an impossibly small waist, covered by a tight-fitting short pink dress that manages to ooze sex appeal and still look at least slightly professional.";
	say "[if the bimbo of the player <= 10 and the player is female][line break][first custom style]That's not fair, we can't all be born with perfect genes like that...[otherwise if the bimbo of the player <= 7]Oh, mama!  What a fox![otherwise if the bimbo of the player <= 12][line break][variable custom style][one of]She looks so good in that dress.[or]What an amazing look![purely at random][otherwise][line break][second custom style][one of]Wow, she's probably like, the perfect shape for a bimbo![or]Oh, how I wish I looked like that![or]Maybe I can look like that one day, too![at random][end if][roman type][line break]".

To set up (M - receptionist):
	reset M;
	now the monstersetup of M is 1;
	now M is in School01;
	now the difficulty of M is the starting difficulty of M;
	now the health of M is the maxhealth of M.

To decide which number is the starting difficulty of (M - receptionist):
	decide on 5.

To say ArmbandCalming of (M - receptionist):
	say "[if M is unfriendly]The [M] calms down, and [his of M] sweet smile returns. [speech style of M]'That's better[otherwise][speech style of M]'There's a good kid[end if]. ";
	if the armband-print of armband is "new recruit", say "Now you need to go see the headmistress for initiation. Her door is the last one on the left, you can't miss it. ";
	say "Now trot along!'[roman type][line break]".

To compute motion of (M - receptionist):
	do nothing.

Definition: receptionist (called M) is dangerous:
	if M is interested and M is unfriendly and the sleep of M is 0 and the boredom of M is 0 and the health of M > 0:
		if the scared of M is 0 or M is penetrating a body part:
			decide yes;
	decide no.

To say rank-colour of (M - a receptionist):
	say "sapphire".


Part - Perception

To compute perception of (M - receptionist):
	now M is interested;
	calm M;
	say "The [M] notices you[if the player is sluttily dressed].[otherwise]![end if]";
	if the times-met of M is 0:
		say "[line break][speech style of M]'Well hello there, you're a new face!  Welcome to [slut school]!  Did your [if diaper quest is 1]Daddy[otherwise]boyfriend[end if] send you along?  Excellent, I'll get you enrolled right away. You start at rank 1 but I'm sure a person like you will be climbing the ranks in no time!'[roman type][line break]She hands you a neon reflective pink armband and gestures for you to strap it on.";
		now armband is carried by the player;
		now the armband-print of armband is "new recruit";
		try examining the armband;
		say "Do you wear the armband?";
		if the player consents:
			try wearing armband;
		otherwise:
			say "The receptionist looks disappointed.[line break][speech style of M]'It was not a request. Put it on right now or I'll make you!'[roman type][line break]She looks ready to fight.";
			anger M;
	otherwise if armband is worn:
		say "[line break][speech style of M]'Hello again [armband-title of armband] and welcome back!'[roman type][line break]";
	otherwise:
		say "[line break][speech style of M]'Hey, I recognise you!  Where is your armband?!'[roman type][line break]She takes an aggressive stance.";
		anger M.


Part - Combat

[To compute unique death of (M - receptionist):
	say "The [M] drops to the ground, dead. After a couple of seconds, [his of M] body disappears[if armband is off-stage], leaving behind an [printed name of armband][end if].";
	if armband is off-stage, now armband is in the location of the player.] [Aika: The armband is not supposed to be available to hostile PCs]

Definition: receptionist (called M) is successfully blocking: [Do they succeed in a roll to stop the player moving]
	if the noun is north, decide yes; [The receptionist always blocks the entrance into the school without an armband unless you kill her]
	let R be (a random number from 1 to the difficulty of M * 2) + the movement reduction of the player; [When we check the movement reduction of the player for the first time in a round, if it is significant, it outputs text explaining why the player is struggling to move away from the monster.]
	if R > the dexterity of the player, decide yes;
	decide no.

To say MovementBlock of (M - receptionist):
	say "The [M] moves into the doorway, completely blocking your path![line break][speech style of M]'No [honey of M], you're not allowed into the school [if armband is worn]with that attitude[otherwise]without an armband[end if][if the class of the player is princess]. Don't expect to get special treatment just because you're a princess[otherwise if the class of the player is maid]. I do not care what mess you're trying to clean up[otherwise if the class of the player is schoolgirl]. If you got away with this sort of thing at your old school, you're in for a rude awakening here[otherwise if the class of the player is cheerleader]. Don't worry, I'm sure someone like you can catch up in no time[otherwise if the class of the player is hooker in training]. I already know you're eager to learn, but that doesn't mean you don't have to follow the same rules as everyone else[end if].'[roman type][line break]";

receptionist-armband is a diaper punishment. The priority of receptionist-armband is 5.

Definition: receptionist-armband (called P) is appropriate:
	if current-monster is not receptionist, decide no;
	decide yes.

To compute punishment of (P - receptionist-armband):
	compute receptionist forcing armband.

The receptionist unique punishment rules is a rulebook. The unique punishment rule of a receptionist is usually the receptionist unique punishment rules.

[The staff detention rule is listed first in the receptionist unique punishment rules.]

To say GenericDetention of (M - a  receptionist):
	say "The [M] looks disappointed. [line break][speech style of M]'[one of]I[']m sorry if you don[']t like me very much[or]I[']d rather we got along[or]I[']m sorry you feel that way[at random], but you just earned yourself a detention for that, young miss. Come with me.'[roman type][line break]";

This is the receptionist forces armband rule:
	unless armband is worn:
		compute current-monster forcing armband;
		rule succeeds.
The receptionist forces armband rule is listed first in the receptionist unique punishment rules.

To compute (M - receptionist) forcing armband:
	say "The [M] twists your left arm so it's held painfully behind your back. [unless armband is in the location of the player or armband is held]She presses some kind of cold metal device against your biceps and a beeping sound occurs. A few moments later a nearby printer has somehow... 'printed' your pink armband!  Or at least an identical one. [end if]She reaches for the armband and then places it on your right hand, pulling your arm tighter until you are forced to comply.";
	now armband is carried by the player;
	try wearing armband.



Receptionist ends here.

