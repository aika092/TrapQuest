Cowbell by Accessories begins here.

cowbell is a neckwear. cowbell is unique. cowbell can be clanking.

Understand "bell" as cowbell.

The printed name of cowbell is "[clothing-title-before]cowbell[clothing-title-after]". The text-shortcut of cowbell is "cob".

To decide which number is the initial outrage of (C - cowbell):
	decide on 6.
To decide which number is the stealth-influence of (C - cowbell):
	decide on -12.

To set up influence of (C - cowbell):
	set up taste-based influence of C.

Figure of cowbell is the file "Items/Accessories/Neck/cowbell1.png".

To decide which figure-name is clothing-image of (C - cowbell):
	decide on figure of cowbell.

To say ClothingDesc of (C - cowbell):
	say "This large metal bell is connected to a white collar by a pink ribbon. When worn, this bell makes lots of noise and makes it much easier for monsters to notice you and find you. You realise that [bold type]walking and resisting[roman type] will probably create a lot of noise whereas [bold type]crawling and submitting[roman type] will make it much more likely that you can avoid the bell ringing.".
To say ShortDesc of (C - cowbell):
	say "cowbell".

Definition: a cowbell is cow themed: decide yes.
Definition: a cowbell is white themed: decide yes.
Definition: a cowbell is brown themed: decide yes.
Definition: a cowbell is bell themed: decide yes.

To compute clank:
	if cowbell is worn:
		say "[one of][or]Your [cowbell] clanks loudly.[or]You are unable to prevent your [cowbell] from making a huge racket![or][bold type]The loud clanking of your [ShortDesc of cowbell] is likely to attract others to your location![roman type][line break][or]You softly curse at the noise your cowbell is making.[or]You wish you could stop your cowbell's ringing.[as decreasingly likely outcomes]";
		now cowbell is clanking.

cowbelled is a humiliating situation.
Definition: cowbelled (called A) is applicable:
	if the player is not disgraced and cowbell is clanking, decide yes;
	decide no.
To reflect on (A - cowbelled):
	say "[first custom style][one of]I can't believe I have a bell around my neck like an actual cow, heralding my arrival and guiding people to my location...[or]I've got to get rid of this bell, it's making it impossible to get around places without everyone following me![or]My cowbell is still clanking away... how embarrassing![stopping][roman type][line break]".

Carry out going when cowbell is worn:
	if the player is upright or a random number between 1 and 5 is 1, compute clank.

Report resisting when cowbell is worn:
	compute clank.

Report submitting when cowbell is worn:
	if a random number between 1 and 3 is 1, compute clank.

Report begging when cowbell is worn:
	if a random number between 1 and 3 is 1, compute clank.

Report jumping when cowbell is worn:
	compute clank.

An all later time based rule (this is the cowbell stops clanking rule):
	now cowbell is not clanking.

Cowbell ends here.
