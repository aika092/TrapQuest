Diaper Addiction by Player begins here.

Part 1 - Calculate Diaper Addiction

[!<DecideWhichNumberIsTheDiaperAddictionInfluenceOfWearThing>+

REQUIRES COMMENTING

+!]
To decide which number is the diaper-addiction-influence of (C - a wearthing):
	decide on 0.

[!<DecideWhichNumberIsTheDiaperAddictionInfluenceOfClothing>+

REQUIRES COMMENTING

+!]
To decide which number is the diaper-addiction-influence of (C - a clothing):
	if C is diaper-addiction-influencing:
		let S be 0;
		decrease S by the magic-modifier of C; [Positive magic = subtracted diaper addiction]
		decide on S;
	decide on 0.

[!<DecideWhichNumberIsTheDiaperAddictionOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the diaper addiction of the player: [How much do they enjoy using diapers?]
	let B be the raw diaper addiction of the player;
	repeat with C running through worn wearthings:
		increase B by the diaper-addiction-influence of C;
	if B < 1, decide on 1;
	if B > 20, decide on 20;
	decide on B.

Part 2 - Modify Diaper Addiction

[!<Player>@<rawDiaperAddiction:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called raw diaper addiction. The raw diaper addiction of the player is usually 1. [Min 1 Max 20]

[!<DiaperAddictUpX>+

REQUIRES COMMENTING

+!]
To DiaperAddictUp (X - a number):
	let S be the raw diaper addiction of the player;
	SilentlyDiaperAddictUp X;
	decrease S by the raw diaper addiction of the player;
	if S < 0, say "You feel [if S < -2]much[otherwise if S is -2]significantly[otherwise]a bit[end if] [if the diaper addiction of the player >= 14]more addicted to [one of]wearing[or]using[or]waddling around in[at random] diapers[otherwise if the diaper addiction of the player >= 7]more [one of]happy[or]calm[or]relaxed[at random] about the [one of]idea[or]reality[purely at random] of [one of]using diapers all the time[or]having a weak bladder[or]wearing nappies under your clothes[in random order][otherwise]more tolerant of [one of]being teased about looking like a baby[or]being forced to wear diapers[or]being babied[in random order][end if].".

To SilentlyDiaperAddictUp (X - a number):
	while X > 0 and diaper lover > 0:
		decrease X by 1;
		if the raw diaper addiction of the player < 20:
			increase the raw diaper addiction of the player by 1.

To DiaperAddictDown (X - a number):
	let S be the raw diaper addiction of the player;
	SilentlyDiaperAddictDown X;
	decrease S by the raw diaper addiction of the player;
	if S > 0, say "You feel [if S > 2]much [otherwise if S is 2]significantly [end if][if the diaper addiction of the player >= 14]less addicted to [one of]wearing[or]using[or]waddling around in[at random] diapers[otherwise if the diaper addiction of the player >= 7]less [one of]happy[or]calm[or]relaxed[at random] about the [one of]idea[or]reality[purely at random] of [one of]becoming diaper dependent[or]incontinence[or]wearing nappies under your clothes[in random order][otherwise]less tolerant about [one of]being treated like a baby[or]being forced to wear diapers[in random order][end if].".

To SilentlyDiaperAddictDown (X - a number):
	while X > 0:
		decrease X by 1;
		SilentlyDiaperAddictDown.

To SilentlyDiaperAddictDown:
	if the raw diaper addiction of the player > 1, decrease the raw diaper addiction of the player by 1.

Part - Adult Baby

Definition: yourself is actually an adult baby:
	if there is a worn baby themed headgear, decide yes;
	if the number of worn baby themed wearthing > 3, decide yes;
	decide no.

Definition: yourself is an adult baby: [only computed once each turn]
	if adult-baby-class is 1, decide yes;
	decide no.

adult-baby-class is a number that varies.
adult-baby-dex is a number that varies.
adult-baby-int is a number that varies.
[
An advance counters rule (this is the diapers affect adult babies rule):
	if the player is actually an adult baby:
		if adult-baby-class is 0:
			now adult-baby-class is 1;
			say "[bold type][one of]Now that you are wearing [if the number of worn baby themed wearthing > 2]so many things that only an actual diaper fetishist would ever wear[otherwise]this headwear[end if], anyone that looks at you will believe that you are[or]You realise that you are once again dressed as[stopping] an adult baby.[roman type][line break]";
			if victorian-baby-bonnet is off-stage and victorian-baby-bonnet is actually summonable:
				say "A [ShortDesc of victorian-baby-bonnet] flutters into existence around your head!";
				summon victorian-baby-bonnet cursed;
		let D be a random worn diaper;
		if D is diaper:
			if adult-baby-dex is 0:
				now adult-baby-dex is 1;
				say "[bold type]You feel your [ShortDesc of D] [one of]somehow[or]once again[stopping] rewarding you with improved reflexes![roman type][line break]";
			if D is not dry and adult-baby-int is 0:
				now adult-baby-int is 1;
				say "[bold type]You can feel your mind being forced to focus on the feeling of your warm [if D is messed]squishy and [end if]clammy [ShortDesc of D]. You won't be able to think straight and you'll have weaker attacks until you've gotten a change or this universe stops identifying you as an 'adult baby'.[roman type][line break]";
		if D is dry diaper or D is nothing:
			if adult-baby-int is 1:
				now adult-baby-int is 0;
				say "[bold type]You feel your lost strength and intelligence return to you![roman type][line break]";
		if D is nothing and adult-baby-dex is 1:
			now adult-baby-dex is 0;
			say "[bold type]Now that you're no longer wearing a diaper, you can feel that your reflexes have returned to normal.[roman type][line break]";
	otherwise:
		if adult-baby-class is 1:
			now adult-baby-class is 0;
			say "[bold type]You can feel that the game is no longer identifying you as an adult baby.[roman type][line break]";
		if adult-baby-dex is 1:
			now adult-baby-dex is 0;
			say "[bold type]Now that you're no longer being labelled as an 'adult baby', you can feel that your reflexes have returned to normal.[roman type][line break]";
		if adult-baby-int is 1:
			now adult-baby-int is 0;
			say "[bold type]Now that you're no longer being treated as an 'adult baby', you can feel your lost intelligence and strength returning to you.[roman type][line break]".

		]

Diaper Addiction ends here.
