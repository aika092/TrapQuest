Wench by Monster begins here.

A wench is a kind of monster. A wench is usually intelligent. A wench has a number called suffocation. The wench has a number called guard-obedience. The leftover-type of a wench is usually 102.

Definition: a wench (called M) is willing to do oral:
	decide yes.

Definition: a wench (called M) is raunchy:
	decide yes.

Definition: a wench (called M) is wenchy:
	decide yes.

Definition: A wench (called M) is dungeon dwelling:
	if diaper quest is 1, decide no;
	decide yes.

The description of wench is usually "[WenchDesc]". 
Understand "slave","girl" as a wench. 

A panicked wench is a kind of wench. There is 1 panicked wench. The text-shortcut of panicked wench is "pwe".
The printed name of panicked wench is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]panicked wench[if the sleep of the item described > 0] (fast asleep)[end if][shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".
A creampied wench is a kind of wench. There is 1 creampied wench. The text-shortcut of creampied wench is "cwe".
The printed name of creampied wench is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]creampied wench[if the sleep of the item described > 0] (fast asleep)[end if][shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".
A lost wench is a kind of wench. There is 1 lost wench. The text-shortcut of lost wench is "lwe".
The printed name of lost wench is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]lost wench[if the sleep of the item described > 0] (fast asleep)[end if][shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".
A kidnapped wench is a kind of wench. There is 1 kidnapped wench. The text-shortcut of kidnapped wench is "kwe".
The printed name of kidnapped wench is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]kidnapped wench[if the sleep of the item described > 0] (fast asleep)[end if][shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".

A horny-wench is a kind of wench.

A desperate wench is a kind of horny-wench. There is 1 desperate wench. The text-shortcut of desperate wench is "dwe".
The printed name of desperate wench is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]desperate wench[if the sleep of the item described > 0] (fast asleep)[end if][shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".
A frantic wench is a kind of horny-wench. There is 1 frantic wench. The text-shortcut of frantic wench is "fwe".
The printed name of frantic wench is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]frantic wench[if the sleep of the item described > 0] (fast asleep)[end if][shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".

To say WenchDesc:
	let M be the item described;
	if images visible is 1:
		if M is horny-wench:
			display the Figure of wench4;
		otherwise:
			if the variety of item described is 1, display the Figure of wench1;
			if the variety of item described is 2, display the Figure of wench2;
			if the variety of item described is 3, display the Figure of wench3;
	if M is horny-wench:
		if bukkake fetish is 1:
			say "This woman has a glazed look in her eye, and from her voluptuous, jizz-coated figure, she[']s definitely the type of woman you[']d expect to see down here. She is wearing a black blouse , which is completely unbuttoned and soaked with the same pearly white stuff running out of both her holes. Her hands are constantly buried in her crotch, vigorously working her [semen]-loaded pussy as she wanders around with a bow-legged stride";[not sure desperate wenches can steal, so left panty bits out]
		otherwise:
			say "This woman has a glazed look in her eye, a voluptuous figure, and both hands buried in her crotch. She is wearing a black blouse, which is completely soaked and appears to have been rather forcefully unbuttoned. Her [HairColour of M] hair is plastered around her face,  and thick, pearly [semen] is visibly leaking from both of her holes.";
	otherwise if the variety of the item described is 1:
		if bukkake fetish is 1:
			say "This woman is completely naked and plastered with [semen]. If the purple bruises on her wrists and ankles are any indication, she's probably spent most of her time here cooped up in chains. Her skin is [one of]pale[or]a pale brown[sticky random], and her [HairColour of M] hair is unkempt and messy. She wears a look on her face that says 'Please be gentle!', and the [semen] freely dribbling out of both her holes and [if the number of knickers retained by the item described > 0]soaking through her stolen [printed name of a random knickers retained by the item described][otherwise]down her legs[end if] gives a pretty good idea what she has to do when she makes that request. A small tattoo across the small of her back reads 'PROPERTY'.";
		otherwise:
			let K be a random knickers retained by the item described;
			say "This woman is [if K is clothing]almost [end if]completely naked, and if the purple bruises on her wrists and ankles are any indication, she's probably spent most of her time here cooped up in chains. She has [one of]pale[or]a pale brown[sticky random] skin, [HairColour of M] hair and a look on her face somewhere between excitement and total exhaustion. [if the number of knickers retained by the item described > 0]There is a small tattoo across the small of her back, which is partially obscured by the [printed name of a random knickers retained by the item described] she 'received' from you[otherwise]A small tattoo across the small of her back reads 'PROPERTY', and [semen] is dribbling freely out of both of her holes[end if].";
	otherwise if the variety of item described is 2:
		if bukkake fetish is 1:
			say "This woman is plastered with cum from head to toe and [if the number of knickers retained by the item described > 0]wearing a pair of stolen [printed name of a random knickers retained by the item described] and a pink blouse, both of which are as soaked as she is[otherwise]completely naked except for a pink blouse, which is just as soaked as she is[end if]. Her lips are caked with a mixture of smudged [one of]gold[or]red[or]pink[or]purple[sticky random] lipstick and [semen], and her eyes are framed by runny, streaked eye shadow. She has [one of]pale brown[or]pale white[sticky random] skin, a [HairColour of M] ponytail, and a look of genuine defeat and exhaustion on her face.";
		otherwise:
			say "This woman is wearing [if the number of knickers retained by the item described > 0]a pair of [printed name of a random knickers retained by the item described] and [end if]a pink blouse, which is totally soaked through. Her eyes are framed by runny, streaked eye shadow, and her [one of]gold[or]red[or]pink[or]purple[sticky random] lipstick is unevenly smudged around the corners of her mouth. She has [one of]pale brown[or]pale white[sticky random] skin, a [HairColour of M] ponytail, and a look of genuine defeat and exhaustion on her face.";
	otherwise:
		if bukkake fetish is 1:
			say "This woman is wearing a black blouse, which looks like it was pulled open rather roughly to expose her breasts. She is [if the number of knickers retained by the item described > 0]also wearing a pair of [printed name of a random knickers retained by the item described], which are messy with the pearly white ejaculate covering her from head to toe.[otherwise]otherwise completely naked, leaving you sure that there isn't an inch of her body that isn't plastered with pearly white ejaculate.[end if] In fact, if there's a clean part of her body, it's her face, which is caked with heavy makeup that's been smudged in only a few places. Her hair has been drawn back into a [HairColour of M] ponytail, and the look on her face is somewhere between arousal and total exhaustion.";
		otherwise:
			say "This woman is wearing a black blouse, which looks like it was pulled open rather roughly to expose her breasts. She is [if the number of knickers retained by the item described > 0]also wearing a pair of [printed name of a random knickers retained by the item described], pulled aside[otherwise]otherwise completely naked,[end if] with [semen] dribbling freely from her exposed [vagina] and [asshole]. Her hair has been drawn back into a [HairColour of M] ponytail, and the look on her heavily decorated face is somewhere between arousal and total exhaustion.";
	say " [line break][variable custom style][if the bimbo of the player < 5 and the player is male][one of]Man, I'd fuck the shit out of that chick! Looks like somebody already beat me to it though...[or]She's hot, but I don't like sloppy seconds.[stopping][otherwise if the bimbo of the player < 5][one of]Oh god, what happened to this woman? Is that going to happen to me?[or]So that's how women are treated here. Disgusting.[stopping][otherwise if the bimbo of the player < 8][one of]She looks kind of weak. I'd probably win any fight with her.[or]I don't think it would be hard to beat her in a fight.[in random order][otherwise if the bimbo of the player < 11][one of]Thinking of what must have happened to her so far is exciting! I should probably stop...[or]Am I going to end up like that? Doesn't seem that bad, really.[or]She looks like she could really use some clothes.[in random order][otherwise if pregnancy fetish is 1]Hee hee, I bet she'll get pregnant from having all that cum in her pussy.[otherwise if the bimbo of the player < 14][one of]She looks like she's had a lot of fun here.[or]She looks like she knows how to party![in random order][otherwise][one of]Maybe she's another player. If I help her get out, maybe she'll fuck me as a reward![or]She looks like she knows how to PARTY![stopping][end if][roman type][line break]".

To say HairColour of (M - a wench):[rather than use a variable, we can just use a sticky random.]
	if the variety of M is 1:
		say "long [one of]brown[or]blonde[or]black[sticky random]";
	otherwise:
		say "[one of]mousy brown[or]messy blonde[or]frizzy black[sticky random]";

To say HairColour of (M - a frantic wench):
	say "short [one of]brown[or]blonde[or]black[sticky random]";

[To say WenchClothes:
	let flav-said be 0;
	if the variety of the item described is 1, say "nothing";
	if the variety of the item described is 2, say "a pink blouse that is completely soaked in [semen]";
	if the variety of the item described > 2, say "a black blouse that is completely soaked in [semen]";
	repeat with K running through knickers retained by the item described:
		say " [if the variety of the item described is 1 and flav-said is 0]but[otherwise]and[end if] the [printed name of K] that she took from you";
		now flav-said is 1.]

To set up (M - a wench):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 4;
	now the health of M is the maxhealth of M;
	now the variety of M is a random number between 1 and 3.

To set up (M - a horny-wench):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 5;
	now the health of M is the maxhealth of M;
	now the variety of M is 5.


This is the spawn initial wench rule:
	if debugmode > 1, say "Now summoning wench.";
	if the number of alive wenches is 0 and diaper quest is 0:
		let M be a random wench;
		summon M in the dungeon.
The spawn initial wench rule is listed in the setting up dungeon monsters rules.

Definition: a wench (called M) is human:
	decide yes.

To say LeftoverDesc (N - 102):
	say "An unconscious wench on the ground has a [if pregnancy fetish is 1]pregnant looking[otherwise]fully stretched[end if] belly and [semen] slowly flowing out of her asshole.[line break]";

Part 1 - Misc Flavour

To say SummoningFlav of (M - a wench):
	if M is in the location of the player:[TODO: diaper quest]
		say "A space opens up in the centre of the circle, and a single hand forces its way through! You watch as a naked woman claws her way out of the grasp of whatever is on the other side of the portal [if M is horny-wench]moaning uncontrollably[otherwise][one of]whimpering[or]shivering[or]holding back a moan[at random][end if] as she rips [one of]a tentacle out of her pussy[or]a muscular arm away from her crotch[at random] and staggers to her feet. The dark energy dissipates as the portal closes up.";
	otherwise:
		if M is horny-wench, say "You hear the sound of involuntary moaning coming from another part of the dungeon.";
		otherwise say "You hear the sound of [one of]whimpering[or]squelching and quiet sobbing[or]wet footsteps[purely at random] coming from another part of the dungeon.".	

To say PresentFriendlyAcceptanceFlav of (M - a wench):
	say "[speech style of M]'[one of]I'm not going to refuse a request like that... thank you so much!'[or]Wow, you really are a cum addict aren't you?  Well, I'm not going to stop you!'[stopping][roman type][line break]".

To say DiaperReaction of (M - a wench):
	if M is unfriendly:
		say "The [M] giggles manically. [line break][speech style of M]'[if M is penetrating a body part]Seriously?!  How entirely absolutely pathetic.'[otherwise if the player is upright]Are you sure a disgusting baby like you can beat me?'[otherwise]Oh this is unreal!  Did you just do what I think you did?!'[end if][roman type][line break]";
	otherwise:
		bore M;
		say "[speech style of M]'Eew, gross!'[roman type]  The [M] does not look impressed. [line break][speech style of M]'[if M is interested]I'm sorry but you're on your own.'[otherwise if the number of interested friendly monsters is 0]No wonder nobody likes you.'[otherwise]Can't you find somewhere private to be a disgusting baby?'[end if][roman type][line break]";
		FavourDown M by 1;
	if the humiliation of the player < 15000, say "[variable custom style][if the player is able to speak]'This doesn't usually happen, I swear!'[otherwise]I can't even tell her that this isn't what I usually wear![end if][roman type][line break]";
	otherwise say "You turn bright red.".

To compute (M - a monster) stomping (N - a wench):
	if M is in the location of the player:
		say "With lightning speed the [M] grabs the [N] and starts fucking her ass furiously. She screams in both pleasure and terror and he starts coming inside her within seconds. Her belly expands in front of her as he fills her up. After she is full, he tosses her to the ground, where she promptly faints.";
		if image cutscenes is 1 and mythical creature fetish is 1, display figure of minotaur cutscene 1;
	otherwise:
		say "You hear a girl shout out in a mixture of ecstasy and terror from [if N is nearby]nearby![otherwise]somewhere in the dungeon![end if]";
	destroy N;
	let L be a random off-stage leftover;
	now L is in the location of M;
	now the leftover-type of L is the leftover-type of N.

Part 2 - Perception

To decide which number is the bimbo tolerance of (M - a wench):
	if there is a worn demon codpiece, decide on 1;
	decide on 12.

To compute appearance assessment of (M - a wench):
	if there is a worn currently visible messed knickers:
		say "[speech style of M]'Eww, gross!!!  Get away from me, poopy butt!'[roman type]  The [M] quickly moves away from you.";
		FavourDown M by 2;
		distract M;
	otherwise if M is unfriendly:
		say "[speech style of M]'[one of]I think it's time to remind you that you're my bitch.'[or]You again!  You want some more, huh?'[in random order][roman type][line break]";
	otherwise if M is buddy:
		say "[speech style of M]'[one of]Hey again. Let's stick together.'[or]Oh hey!  I'm glad to see you're still around.'[in random order][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Who... who are you?  You're friendly, right?  Please don't say you're going to try and fuck me too?'[or]Hi there... *whimper*'[stopping][roman type][line break]".

To compute perception of (M - a wench):
	now M is interested;
	say "The [M] notices you[if the player is sluttily dressed][one of] even though she is in no better state herself[or][or][or][or][cycling][end if].";
	if the latex-transformation of the player > 6: [TODO maybe variety 4 wenches can have sex with male doll?]
		say "She seems a [if M is horny-wench]bit aroused but[otherwise]little creeped out by your appearance and[end if] leaves you alone.";
		bore M;
	otherwise if M is horny-wench:
		if the size of penis > 7 and the number of worn chastity cages is 0:
			say "She seems to be about to demand something of you, but then sees your [ShortDesc of penis] and decides it's probably best to leave you alone.";
			bore M;
		otherwise:
			let R be a random number from -10 to the semen taste addiction of the player;
			say "[speech style of M]'I can't take it any more... please there's so much cum and I'm so horny... I need you to lick it out of me...'[roman type][line break][if R > 9][one of]The sight and smell of all the [semen] entices you for a moment, and in a lapse of judgement you drop to your knees.[or]The familiar sight and smell of the [semen] makes you instinctively drop to your knees.[stopping][otherwise]Uh-oh, it looks like she means to force you![end if]";
			now M is interested;
			anger M;
			now the sex-length of M is 2;
			if R > 9:
				try kneeling;
	otherwise if M is objectifying the player:
		if the player is flying:
			say "[speech style of M]'What are you doing up there, you crazy bitch?!'[roman type][line break]";
		otherwise:
			if the previous-objectification of M is 0, say "Something seems to change in the way the [M] is looking at you. [line break][speech style of M]'We should fuck.'[roman type][line break]";
			otherwise say "[speech style of M]'You look like a slut who enjoys it rough. Let's see if I'm right!'[roman type][line break]";
		now M is interested;
		anger M;
		now the sex-length of M is 2;
	otherwise if the variety of M < 4 and there are held desirable knickers and the number of knickers retained by M is 0:
		let K be a random held desirable knickers;
		if M is buddy:
			say "[speech style of M]'I'm very jealous of your [ShortDesc of K][line break][speech style of M]. [if M is ally]Where did you get it?'[otherwise]You should hide that when I'm around otherwise I might just have to fight you for it!  Ha ha...'[end if][roman type][line break]";
			FavourDown M;
		otherwise if the size of penis > 7 and the number of worn chastity cages is 0:
			say "She seems to take an aggressive stance when she notices your [printed name of K], but then sees the huge bulge in the front and decides to leave you alone.";
			bore M;
		otherwise:
			now M is interested;
			anger M;
			now the sex-length of M is 2;
			say "[speech style of M]'... that [ShortDesc of K][line break][speech style of M]... where did you get it?  Give it to me!'[roman type][line break]";
	otherwise:
		compute appearance assessment of M;
	if image cutscenes is 1, display interaction of M.

To display interaction of (M - a wench):
	if M is horny-wench:
		display figure of wench interact 3;
	otherwise if M is buddy:
		display figure of wench interact 1;
	otherwise if M is acquaintance:
		display figure of wench interact 2;
	otherwise if M is friendly :
		display figure of wench interact 4;
	otherwise:
		display figure of wench interact 5.


Part 3 - Protection

To compute (M - a wench) protecting against (X - a monster):
	if X is male or the player is monster stuck:
		say "[speech style of M]'Eek!'[roman type][line break]The [M] turns tail and runs for safety, abandoning you.";
		now the scared of M is 30;
		compute motion of M;
	otherwise if M is guardian or (M is ally and the difficulty of X <= the difficulty of M):
		compute X receiving 1 damage from M;
	otherwise:
		say "[speech style of M]'Can[']t we all just get along?'[roman type][line break]The [M] clearly doesn't want to get involved.";
		distract M.

To say AllyDamageFlav of (M - a wench) on (X - a monster):
	say "[speech style of M]'Take this[one of], meanie[or][stopping]!'[roman type][line break]The [M] weakly slaps the [X]!".

Part 4 - Combat

To say MercyReaction of (M - a wench):
	say "Your attempts to beg are muffled by the [M]'s ass and pussy in your face!".

Report dropping clothing in the presence of a wench:
	let M be a random wench in the location of the player;
	if the variety of M < 4 and the noun is desirable and the number of knickers retained by M is 0:
		compute M WenchReceiving the noun.

To compute (M - a wench) WenchReceiving (K - a knickers):
	say "The [M] takes the [printed name of K] and [if M is unfriendly]seems happy[otherwise]hugs you warmly[end if].";
	now M is interested;
	calm M;
	FavourUp M by 4;
	now M is retaining K;
	now K is in Holding Pen.
		


Section 1 - Attack

To compute kneeling reaction of (M - a wench):
	if the guard-obedience of M is 0:
		say "[one of]The [M] walks over to you, momentarily stopping the flow of cum out of her pussy by cupping a hand to her entrance.[or]The [M] gently fingers herself as she strides over to you, grinning as [semen] slowly leaks through her fingers.[or]A grin spreads across the [M]'s plastered face as she cups her hand to her [vagina], stopping the flow of [semen] down her legs.[or]The [M] grins, pointing at the thick glob of [semen] rolling down her leg, and then at you.[or]The [M] looms over you, her cum dripping pussy level with your head. She leers down at you, grinning.[in random order]";
		if there are desirable knickers and the variety of M < 4:
			say "[speech style of M]'Drop your panties on the ground or I'll rip them off you, bitch. Unless you'd rather [bold type]offer[line break][speech style of M] me your tongue.'[roman type][line break]";
		otherwise:
			if M is horny-wench:
				say "[speech style of M][one of]Finally, a bigger slut than me...[or]Yes! Yes! I'm so horny![or]Fuck! Fuck yes, stay down there![or]Don't get up, I really need your mouth. I need it so fucking bad...[or]You're going to help me? Thanks so much...[at random][roman type]";
			otherwise:
				say "[speech style of M]'[if the class of the player is maid][one of]Hey maid, I'm dirty, come clean me up.'[or]Open your mouth baby, I need help cleaning up.'[in random order][otherwise if the player is male and there is a worn chastity cage][one of]You're not going to fuck anybody when you're locked up like that. Now open up.'[or]Oooh, is poor widdle baby locked up in a cage? Don't worry, I've got milk for you right here.'[or]Hmm, I bet you'd like to fuck this pussy. Too bad you're all caged up! Now open wide.'[in random order][otherwise if the size of penis > 0 and the size of penis <= 3][one of]Hey baby dick, how'd you like to eat my pussy? That's probably the only action you'll ever get from a woman.'[or]With a [player-penis] that tiny, I bet you can't even cum. Luckily, you can still help ME cum if you lend me your mouth for a minute.'[or]Wow, what a tiny [player-penis]! You'll never satisfy anyone with that! I really hope your tongue isn't that small.'[or]If you open your mouth, I'll give you a taste of a real man's cum.'[in random order][otherwise if the size of penis > 5][one of]Wow, a [player-penis] that big and you're still on your knees? I'm going to enjoy having you eat my pussy.'[or]I bet you thought you were going to fuck me. Wrong! Now open up, bitch.'[in random order][otherwise][one of]Open wide, bitch.'[or]Open up, bitch.'[or]You thirsty, bitch?'[or]I hope you're thirsty.'[or]I hope you're good at eating pussy.'[in random order][end if][roman type][line break]";
		humiliate 75.

To say waitingflav of (M - a wench):
	if there are worn desirable knickers and M is not horny-wench:
		say "[if the bimbo of the player < 6]There's no way you're going to give her an easy time taking your last line of defence. If she wants your underwear she is going to have to pull it off you herself.[otherwise if the bimbo of the player < 12]You refuse to move. If she wants your underwear, she can rip it off you herself and live with the guilt.[otherwise]You have grown quite attached to your clothing and don't want to give it away voluntarily. You lie there and wait for her to pull it off you herself.[end if]";
	otherwise if the player is not able to speak:
		say "[if the player is able to make sounds][line break][variable custom style][muffled sounds][roman type][line break][otherwise]You look up at the [M] silently.[end if]";
	otherwise if the semen taste addiction of the player < 8:
		say "[one of]You stare up at the wench, stunned.[or]You shake your head in disbelief of the situation you've gotten yourself into.[or]You turn away. [line break][first custom style]'Hmmph.'[roman type][line break][or][line break][first custom style]'Whatever you're thinking of doing to me, please don't.'[roman type][line break][or]You look away, knowing full well you have no chance of escape.[or][line break][first custom style]'Fuck off, I'm not doing it.'[roman type][line break][or]You find yourself paralysed with dread, staring at the disgusting [semen] dripping from the [M]'s holes.[in random order]";
	otherwise if the semen taste addiction of the player < 11:
		say "[one of]You are surprised with how calm you feel about the idea of swallowing the [semen] dripping out of the [M]'s holes.[or]You wait obediently, convincing yourself it's because you have no other choice, and not because you are starting to enjoy the taste of [semen].[or][line break][variable custom style]'I don't care if I have to eat you out, but please don't stay so long that you make me faint.'[roman type][line break][or][line break][variable custom style]'Okay I'll lick it out of you but only because you're forcing me. I'm not a [semen] craving addict like you.'[roman type][line break][or][if the sex addiction of the player < 11]You try not to think about[otherwise]You find yourself thinking about[end if] all the [manly-penis]s that must have been the source of that much [semen].[or][if the sex addiction of the player < 8]Internally you feel disgusted by the idea of her sitting on your face, but[otherwise]You[end if] find yourself licking your lips in anticipation.[in random order]";
	otherwise:
		say "[one of][if the sex addiction of the player < 7]You are stunned with indecision - you don't want to have to lick her out but you do love the idea of getting to swallow some more [semen].[otherwise]You stared at her [semen] dripping filled orifices and lick your lips greedily. It's like Christmas come early![end if][or]You stare at the [M]'s [semen] coated pussy lips and thighs, and find yourself licking your lips in anticipation. [line break][second custom style]'It's a tough job, but somebody's got to do it.'[roman type][line break][or][line break][second custom style]'I do love [semen]...'[roman type][line break][or][line break][second custom style]If she thinks I'm not going to enjoy swallowing that [semen], she's sorely mistaken![roman type][line break][or][line break][second custom style]'I'm always up for getting another taste of a stranger's [semen]!'[roman type][line break][in random order]".

To compute flying player taunting of (M - a wench):
	if a random number from 1 to 6 is 1:
		say "The [M] jeers at you. [line break][speech style of M]'[one of]Look at this [if weight gain fetish is 1]fat [end if]bitch stuck on the ceiling!  Haha![or]When you get down I'll show you who's boss![or]I can't believe you're still up there![or]I hope you're as disgusted with yourself as I am with you. You can't even move![or]What kind of dumb bitch gets herself stuck on the ceiling?[or]You look absolutely disgraceful, you know that, right?[or][if weight gain fetish is 1]Fatty[otherwise]Someone[end if][']s going to get a pounding when she gets back down here![in random order]'[roman type][line break][if the humiliation of the player < 17500]You [one of]wince[or]shudder[or]cringe[purely at random] with shame.";
		humiliate 20.

To say LandingTaunt of (M - a wench):
	say "The [M] giggles. [line break][speech style of M]'That's it, come here fatty...'[roman type][line break]";
	humiliate 50.

The wench priority attack rules is a rulebook. The priority attack rules of a wench is usually the wench priority attack rules.

This is the wench obeys guard rule:
	if there is an awake royal guard in the location of the player and the health of current-monster < the maxhealth of current-monster and the class of the player is not the princess:
		if the guard-obedience of current-monster is 1:
			if the number of royal guards penetrating a body part is 0:
				say "[one of]The [current-monster] continues to lie face down on the ground with her hands behind her head.[or][or][cycling]";
			otherwise:
				let M be a random royal guard penetrating a body part;
				if a random number between 1 and 3 > 1:
					say "The [current-monster] [one of]submissively[or]diligently[or]quietly[or]obediently[or]greedily[at random] [if M is penetrating breasts or a random number between 1 and 2 is 1]tongues the [M]'s asshole[otherwise][one of]licks[or]sucks on[as decreasingly likely outcomes] the [M]'s [one of]balls[or]testicles[or]scrotum[as decreasingly likely outcomes][end if].";
					if the sex-length of M > 1, decrease the sex-length of M by 1;
				otherwise if M is penetrating face:
					say "[one of]The [current-monster] kneels next to you, holding her mouth open, allowing the [M] to fuck your mouth and hers alternately[or][line break][speech style of M]'You!  Fuck my cock with her mouth.'[roman type][line break]The [current-monster] obeys, holding your head and forcing it back and forth like a living onahole.[line break][if M is able to make sounds][line break][variable custom style][muffled sounds][roman type][line break][end if]You choke and splutter[at random].";
				otherwise if a random number from 1 to 2 is 1 and M is penetrating a fuckhole:
					if a random number between 1 and 2 is 1:
						say "The [current-monster] kneels over you, holding her ass cheeks open, allowing the [M] to fuck your [variable random fuckhole penetrated by M] and hers alternately. While there, she purposefully allows [semen] to drip from her mouth onto your forehead.";
						if image cutscenes is 1, display figure of wench cutscene 6;
					otherwise:
						say "[speech style of M]'You!  Ride her face.'[roman type]  The [current-monster] obeys, getting on her knees facing away from you and pushing her ass into your face.";
					if bukkake fetish is 1, CumFaceUp 2;
				otherwise:
					say "[one of]The [current-monster] kisses the [M] passionately, slapping your [BreastDesc] roughly as she does for good measure, purposefully hurting you.[or][line break][speech style of M]'You!  Slap her while I fuck her. HARD.'[roman type][line break]The [current-monster] looks at you and hesitates for only a brief moment, before bringing her hand powerfully across your cheek. It stings painfully![in random order]";
					DelicateUp 1;
		otherwise:
			say "The [random royal guard in the location of the player] yells angrily. [line break][first custom style]'NO CAT-FIGHTING!  [one of]GET ON THE GROUND NOW, WENCHES[or]Assume the position, and I will administer your punishment[or]DOWN ON THE GROUND, [if the number of wenches in the location of the player > 1]ALL[otherwise]BOTH[end if] OF YOU[in random order]!'[roman type][line break]";
			repeat with M running through royal guards in the location of the player:
				anger M;
				now M is interested;
				now the boredom of M is 0;
			repeat with M running through awake wenches in the location of the player:
				anger M;
				now M is interested;
				now the boredom of M is 0;
				now the guard-obedience of M is 1;
				say "The [M] [one of]obediently[or]instantly[or]silently[or]immediately[in random order] drops to the ground, and lying face down, assumes [one of]a submissive position with her hands behind her head, like a prisoner[or]the position[stopping].";
		rule succeeds;
	otherwise if the guard-obedience of current-monster is 1:
		now the guard-obedience of current-monster is 0.
The wench obeys guard rule is listed in the wench priority attack rules.

To reset submissive wenches:
	repeat with N running through awake wenches in the location of the player:
		if the number of royal guards penetrating a body part is 0 and the guard-obedience of N is 1:
			if the health of N >= the maxhealth of N, calm N;
			say "[if N is unfriendly][line break][speech style of N]'[one of]You got lucky this time, [bitch][or]I'll get you next time, [bitch][or]I'll be back for you later[in random order].'[roman type][line break][end if]The [N] starts to crawl away.";
			bore N;
			now the guard-obedience of N is 0;
	repeat with N running through awake adult baby slaves in the location of the player:
		if the number of spanking the player royal guards is 0 and the guard-obedience of N is 1:
			if the health of N >= the maxhealth of N, calm N;
			say "[if N is unfriendly][line break][speech style of N]'[one of]You got lucky this time, [bitch][or]I'll [']play['] with you next time we meet, [bitch][or]We'll finish this later[in random order].'[roman type][line break][end if]The [N] starts to crawl away.";
			bore N;
			now the guard-obedience of N is 0;
	

To compute facial sex of (M - a wench):
	if the oral sex addiction of the player > 6, arouse 200;
	increase the suffocation of M by 3;
	if the body soreness of the player + the suffocation of M >= 17:
		say "The [M] continues to torture you with her crotch. You really need to breathe soon!  You are so exhausted there is nothing you can do, you struggle weakly but her ass cheeks and [vagina] are completely preventing you from breathing. You pass out.";
		now delayed fainting is 1;
		now the fainting reason of the player is 9;
	otherwise:
		if bukkake fetish is 1:
			say "[one of]A large glob of [semen] leaks out of her ass and onto your face.[or]Warm [semen] seeps out of her asshole and onto your face.[or]Thick [semen] slowly trickles out of her asshole, rolling down the side of your nose and over your cheeks.[or]A fat wad of [semen] leaks out of her butt and plops wetly onto your face.[or][semen] oozes out of her gaping butthole, pooling on your face.[or]Thick [semen] dribbles out of her butt, rolling down your cheeks.[in random order][if the semen addiction of the player < 7][line break][first custom style]How disgusting![roman type][line break][end if][line break]";
			CumFaceUp 1;
		if the reaction of the player > 0:
			say "[one of]You lick the wench's cunt with your tongue, swallowing the [semen] as it slowly flows into your mouth.[or]You dig your tongue into the wench's pussy, which immediately rewards you with a thick glob of salty [semen].[or]You tease the wench's clit with your tongue. Warm [semen] slowly dribbles out of her cunt and into your open mouth.[or]You spear your tongue into the wench's gaping honey pot, allowing the [semen] within to slowly roll into your mouth.[or]You obediently open your mouth, allowing the [semen] slowly oozing out of her pussy to slide down your throat.[or][if the semen taste addiction of the player < 8]You reluctantly stroke the wench's folds with your tongue, swallowing obediently as [semen] dribbles into your mouth.[otherwise if the sex addiction of the player < 10]You somewhat reluctantly stroke the wench's folds with your tongue, swallowing obediently as [semen] dribbles into your mouth.[otherwise]You eagerly stroke the wench's folds with your tongue, swallowing obediently as [semen] dribbles into your mouth.[end if][or][if the semen taste addiction of the player < 8]You leaf through her folds with your tongue, trying to clean it out while tasting as little [semen] as possible. There's still quite a lot.[otherwise if the semen addiction of the player < 12]You obediently scour her pussy with your tongue, hesitating only for a moment before swallowing the [semen] that trickles out.[otherwise]You kiss and lick every inch of her pussy, eagerly lapping up and swallowing any [semen] that trickles out.[end if][in random order]";
			StomachSemenUp 1;
			decrease the sex-length of M by 1;
			if image cutscenes is 1 and the sex-length of M is 0, display figure of wench cutscene 5;
		otherwise:
			say "[one of]You refuse to let her use you as her own personal cleaning service. [or]You keep your mouth shut, valuing your dignity over your ability to breathe. [or]You spitefully purse your lips, wanting to make sure she gets a little out of it as possible. [or]You keep your mouth shut. At least if you pass out, you'll still have some dignity. [in random order]The [M] keeps grinding on your face anyway!";
			if a random number between 1 and 3 > 1, decrease the sex-length of M by 1;
		if there is a worn messed knickers:
			say "The [M] [one of]tentatively feels the warmth of[or]gently puts pressure against[stopping] your messy diaper with her hands. [line break][speech style of M]'[one of]Oh my god, how disgusting!  This must be weird for you as well, right?  Because it's fucking weird for me.'[or][DiaperHumiliation of M][stopping][roman type][line break]";
		otherwise if there is a worn diaper:
			say "The [M] lovingly rubs your diaper[one of] from her advantageous position[or][stopping]. [line break][speech style of M]'[one of]What's this?  Why are you wearing a nappy, honey?  Are you having potty problems?'[or][DiaperHumiliation of M][stopping][roman type][line break]";
			humiliate 200;
			arouse 300;
		say "[if the body soreness of the player + the suffocation of M < 8]You are still holding your breath.[otherwise if the suffocation of M < 12]You are running out of breath![otherwise]You still can't breathe. You're going to faint any second now![end if]".

To say DiaperHumiliation of (M - a wench):
	let D be a random worn diaper;
	if D is messed, say "[one of]Come on you messy baby, eat up!'[or]What does is feel like to be sitting in your own filth?'[or]After we're done, you should probably find someone to change you, before you get a rash.'[or]You know, I thought I was quite pathetic until I saw you wallowing in your own messy diaper.'[or]At least I can control my own body and avoid messing myself!'[or]I wonder why you decided to poop your pants rather than using the toilet like a grown up?'[or]Are you some kind of sick perv who ENJOYS going number two in their diaper?'[in random order]";
	otherwise say "[one of]Don't worry, I used to be a nanny, you know. I'll make sure you get all the din-dins you can swallow!'[or]You must be pretty fucking shameless to be waddling around the place in this padded monstrosity, eh?'[or]And to think that I thought that I was the biggest disgrace down here!  At least I can control my own bladder!'[or]Tell me, what's more humiliating, having everyone see you in this [if the urine-soak of D > 0]soggy [end if]nappy, or having a slut like me dump all the cum from her insides [if the reaction of the player is 0]onto your face[otherwise]into your stomach[end if]?[or]Don't worry, baby, Mommy's here for you, and she loves you[if the reaction of the player > 0]. Keep licking Mommy's butthole now, that's a good baby[end if].'[or][if there is a pacifier retained by M]I'll make sure to put your suck suck back in your mouth[otherwise]I'll make sure to find you a nice girly pacifier to suck on[end if] after I'm done, okay hun?'[or]I'm glad I'm not the one who's stuck in Pampers for the rest of my life.'[or]Aww, look at you squirm down there!  You're just the most perfect [if the player is male]Prissy [end if]Pampered Pottypants Princess a Mommy could ask for, aren't you?'[in random order]".
		
To compute facial climax of (M - a wench):
	if the reaction of the player > 0, humiliate 200;
	TimesFuckedUp M by 1;
	now M is not filling face;
	SemenTasteAddictUp 1;
	say "You hear a sigh and then a moan and then a screaming orgasm come from the [M]. Her own sex juices flood [if the reaction of the player > 0]into your mouth[otherwise]onto your face[end if].[if the semen taste addiction of the player > 12][line break][second custom style]Mmm, tasty!  [roman type][line break][end if]She continues screaming in pleasure for a few seconds, then you feel her hold on your body weaken, and she rolls off your body, passed out from the pleasure.";
	if image cutscenes is 1, display figure of wench cutscene 1;
	decrease the blue-balls of M by 1;
	now the sleep of M is 400;
	FavourUp M;
	if newbie tips is 1, say sleeping tip;
	bore M.

This is the wench facesitting prevents breathing rule:
	if there is a wench penetrating face, decide yes;
	decide no.
The wench facesitting prevents breathing rule is listed in the breathing blocking rules.

The wench priority attack rules is a rulebook. The priority attack rules of a wench is usually the wench priority attack rules.
This is the wench steals clothing rule:
	let M be current-monster;
	if there is a desirable knickers and M is not horny-wench and the number of clothing retained by M is 0 and the player is prone:
		ClothingSteal M;
		rule succeeds.
The wench steals clothing rule is listed in the wench priority attack rules.

To compute the default taunting of (M - a wench):
	say "[one of]The [M] watches with a mixture of incredulity and fear.[or][or][cycling]";

To compute the dildo stuck taunting of (M - a wench):
	compute the default taunting of M.

This is the wench monster fucked taunting rule:
	let P be a random wench filling face;
	let M be current-monster;
	if P is wench:
		if there are desirable knickers and M is not horny-wench:
			ClothingSteal M;
		otherwise:
			say "The [M] laughs at your situation with the other wench.[line break]'You enjoying that down there, bitch?'[line break]The girl walks over to your bottom half and [if the size of penis > 0]starts expertly jacking you off. [otherwise if the player is male]starts licking your nipples and stroking your inner thighs. [otherwise]starts expertly fingering your pussy. [end if]The added arousal is making you need to breathe even more desperately!  You can't hold back, and you have a strong orgasm and black out.";
			now delayed fainting is 1;
			now the fainting reason of the player is 9;
			rule succeeds;
	otherwise if M is not horny-wench:
		let P be a random monster penetrating a body part;
		say "The [M], seeing the [P], squeals and starts running away.";
		calm M;
		distract M;
		now the scared of M is 60;
		rule succeeds.
The monster fucked taunting rule of a wench is usually the wench monster fucked taunting rule.

This is the wench monster convinced rule:
	let M be current-monster;
	if presented-orifice is face:
		say "[if M is not horny-wench]The [M] sees your request and grins. [line break][speech style of M]'Haha, okay, you asked for it, here I come!'[otherwise]The [M] sees your request and smiles. [line break][speech style of M]'I knew you would see things my way!'[end if][roman type][line break]";
		now the chosen-orifice of current-monster is face;
		rule succeeds;
	otherwise if presented-orifice is not nothing:
		say "[if M is not horny-wench]The [M] sees your request and shakes her head. [line break][speech style of M]'If I'm going to fuck you, I'll be using your mouth!'[otherwise]The [M] sees your request and frowns. [line break][speech style of M]'Did you not hear what I said?  I need you to lick me out!'[end if][roman type][line break]".
The monster convinced rule of a wench is usually the wench monster convinced rule.

To compute (M - a wench) entering mouth:
	if milking is 1:
		do nothing;
	otherwise:
		if the player is clit stuck:
			say "The [M] yanks on your clit lead and forces you to roll over onto your back!";
		otherwise:
			say "The [M] tries to roll you over onto your back!";
		let R be a random number between the difficulty of M * 3 and 27;
		let B be the weight of the player + (the strength of the player / 3);
		if presented-orifice is face or the player is subdued or M is friendly-fucking, now B is 0; [If the player consents, she flips you automatically]
		if debugmode is 1, say "Player [B * 1].5 | [R] Girl[line break]";
		if R > B:
			now the suffocation of M is 0; [This is what we use to track how many turns the wench has been forcing the player to hold their breath.]
			if presented-orifice is face or M is friendly-fucking, say "You let her, and she immediately sits on your face. ";
			otherwise say "She succeeds, and immediately sits on your face. ";
			if image cutscenes is 1, display figure of wench cutscene 2;
			say MouthPenetrationFlav of M;
			if bukkake fetish is 1:
				say "A large glob of [semen] leaks out of her ass and onto your face.[if the semen addiction of the player < 7][line break][first custom style]How disgusting![roman type][line break][end if][line break]";
				CumFaceUp 1;
			say "[one of]Her hold on your neck and head is too strong, you'll have to choose between either [bold type]resist[roman type]ing and risk it taking longer until you can breathe or [bold type]submit[roman type]ing by licking her out, swallowing the [semen] dripping from her pussy and hoping she [if the sex addiction of the player < 3]finishes[otherwise if the sex addiction of the player < 7]climaxes[otherwise]cums over your face[end if] quickly[or]Once again, you won't be able to breathe until she's finished with you[stopping]!";
			now M is filling face;
		otherwise:
			say "She doesn't manage it this time.";
			if B > 22:
				say "She gives up, [if the the weight of the player >= the strength of the player / 3]your body is too heavy[otherwise]you are too strong[end if] for her to push over. She leaves you lying on the ground[if the body soreness of the player > 6] panting heavily,[end if] and loses interest.";
				bore M for 600 seconds.

To say MouthPenetrationFlav of (M - a wench):
	if M is horny-wench or M is friendly-fucking:
		say "She buries your nose into her cum-dripping asshole and covers your mouth with her cum-filled [vagina]. You can't breathe![line break][line break][line break][speech style of M]'[one of]Please lick it all out of me!'[or]I really need to feel your tongue...'[or]Don't worry, it tastes really good!'[purely at random][roman type][line break]";
	otherwise:
		say "She buries your nose into her cum-dripping asshole and covers your mouth with her cum-filled [vagina]. You can't breathe![line break][line break][line break][speech style of M]'[one of]Drink bitch, drink!'[or]Eat my pussy bitch!'[or]How do you like the taste of my pussy, bitch?'[or]Lick my pussy clean you fucking whore!'[purely at random][roman type][line break]";

To say StrikingFlav of (M - a wench) on (B - a body part):
	say "The [M] slaps you [TargetName of B]![if M is not horny-wench]  [line break][speech style of M]'[one of]Bitch[or]Slut[or]Whore[or]Fucker[or]Fuck you[in random order]!!'[roman type][line break][end if]".

To say StrikingSuccessFlav of (M - a wench) on (B - a body part):
	say "[StrikingFlav of M on B]";
	say "Ouch!  That one hurt.".

To say StrikingFailureFlav of (M - a wench) on (B - a body part):
	say "[StrikingFlav of M on B]";
	say "That slap wasn't too bad.".

To compute (S - a spike bra) damaging (M - a wench):
	say "The [M] has visibly hurt herself by slapping the spikes of your [printed name of S]!";
	decrease the health of M by 4.

To (M - a wench) steals (K - a knickers):
	if K is worn:
		say "[PullAttempt of M at K]";
		let R be a random number between the difficulty of M and 6 + a random number between the difficulty of M and 6;
		if debugmode is 1, say "Player [the defence of the player].5 | [R] [M][line break]";
		if R > the defence of the player:
			if image cutscenes is 1, display figure of wench cutscene 3;
			say "She pulls them off and flees, [one of]happily[or]lewdly[or]pervertedly[or]blissfully[or]wildly[at random] [one of] sniffing[or]smelling[or]tasting[or]licking[at random] the crotch!";
			now K is in holding pen;
			now M is retaining K;
			distract M;
			calm M;
			now the scared of M is 75;
		otherwise:
			say "[WeakenFlav of M on K]";
			damage K;
	otherwise:
		say "She pulls the [printed name of K] from your hands, and runs off with them!";
		now K is in holding pen;
		now M is retaining K;
		distract M;
		calm M;
		now the scared of M is 75.
		
To ClothingSteal (M - a wench):	
	let K be a random desirable knickers;
	let N be a random number between 3 and 5;
	M steals K;
	CumSoak N on K.

Section 2 - Damage	

To compute damage of (M - a wench):
	if the health of M > 0:
		if the sleep of M is 0:
			if M is uninterested:
				say "The girl looks shocked. [line break][speech style of M]'[one of]Fucking bitch!  Come on then![or]What the fuck is your problem?  You're going down!'[or]Oh you are going to wish you never messed with me!'[at random][roman type][line break]";
				now M is interested;
				anger M;
				now the sex-length of M is 2;	
			otherwise:
				say DamageReaction (the health of M) of M;
				if a random number between 1 and 3 is 1, increase the sex-length of M by 1;
		otherwise:
			decrease the sleep of M by 300;
			if the health of M < the maxhealth of M / 2, now the sleep of M is 0;
			if the sleep of M < 0, now the sleep of M is 0;
			if the sleep of M is 0:
				say "She wakes up, looking very pissed off indeed!  Uh-oh..";
				now the sex-length of M is a random number between 3 and 4;
				now M is interested;
				anger M;
			otherwise:
				say "She is still unconscious.";
	otherwise:
		compute death of M.

To say DamageReaction (N - a number) of (M - a wench):
	if N > (the maxhealth of M / 4) * 3:
		say "She looks [one of][or]even [stopping]more pissed off than she did already!";
	otherwise if N > (the maxhealth of M / 4) * 2:
		say "She grunts in pain!";
	otherwise if N > (the maxhealth of M / 4):
		say "She staggers, squeaking in pain!";
	otherwise:
		say "She screams in pain, [if the size of penis > 3]covering her crotch as she fights to maintain her balance[otherwise]staring apprehensively at your crotch as she fights to maintain her balance[end if]!".

To compute unique death of (M - a wench):
	now the sleep of M is 0;
	if the health of M <= 0:
		let O be nothing;
		if the variety of M is 2 and M is not horny-wench, now O is a random off-stage unique pink bodice;
		otherwise now O is a random off-stage unique black bodice;
		if O is bodice and the variety of M > 1 or M is horny-wench:
			now O is in the location of the player;						
			if M is horny-wench:
				if bukkake fetish is 1, now the semen-soak of O is 10;
				now the water-soak of O is 10;
			otherwise:
				let N be a random number between 6 and 9;
				if bukkake fetish is 1, now the semen-soak of O is N;
				now the water-soak of O is N;
			say "She [if the sleep of M is 0]drops to the ground, dead[otherwise]stops breathing[end if]. Her body disappears, leaving the [O] she was wearing.";
			compute autotaking O;
		otherwise:
			say "She [if the sleep of M is 0]drops to the ground, dead[otherwise]stops breathing[end if]. Her body disappears.";
			loot M.

Section 3 - Dominant Sex

To say DominanceFailure of (M - a wench):
	say "You grab the [M] and try to force her to the ground. She doesn't seem to resist much at first, but a glance at your [genitals] seems to cause a shift in her expression, and with a sudden burst of energy she slips your grip and sends you toppling to the ground.".

To compute failed dominance punishment of (M - a wench):
	if the player is female or the appearance of the player >= 8 and M is not objectifying the player:
		say "[speech style of M]'Now what, you fucking bitch...'[roman type][line break]The [M] looks like she[']s about to do something to you, but seems to catch herself and releases you with a sigh.";
		if the number of worn not sissifying removable clothing > 0:
			compute angry punishment of M;
			Calm M;
		otherwise:
			say "[speech style of M]Ugh. Just stay away from me or I[']m going to make you fucking regret it.[roman type] The wench kicks you hard in the ribs and leaves you alone.";
			DelicateUp 1;
			FavourDown M by 3;
			Bore M;
	otherwise if the player is female or the number of things penetrating asshole > 0:
		say "[speech style of M]'[one of]Wait your turn you fucking greedy bitch!'[or]I need this more than you do, you fucking bitch.'[or]I don[']t care how fucking horny you are, bitch! It was my idea first!'[at random][roman type][line break]";
	otherwise:
		if the size of penis > 3:
			say "[speech style of M]'What[']s the matter? Aren[']t you supposed to be fucking me right about now?'[roman type] She laughs derisively, shoving her middle and index fingers into your [asshole] and slapping your [AssDesc] as she begins to stroke your prostate from the inside. You sit there, frozen [if the humiliation of the player < 10000]in abject humiliation[otherwise]with pleasure[end if] as she teases your [ShortDesc of penis] with the very tips of her fingers, [if the player is a bit horny]ensuring it stays achingly hard as[otherwise]ensuring it gets nice and hard and stays that way as[end if] she violates your [if the openness of asshole > 5]loose[otherwise]tight[end if] hole. She[']s perfectly positioned to hold you down without putting a lot of effort in, but you just [if the sex addiction of the player < 8]can't focus enough to challenge her even though you [italic type]know[roman type] how much you want to.[otherwise if the sex addiction of the player < 12]can't bring yourself to challenge her, even though you know you [italic type]want[roman type] to.[otherwise]can't bring yourself to stop her when it feel so good![end if] You have no choice but to lie underneath her, writhing with pleasure and humiliation as the slow stroking slowly builds you to orgasm. [line break][speech style of M]'Ooh, you must really like having your asshole played with, faggot, I can already feel your prostate tightening up![roman type] The [M] coos, abruptly yanking her finger out of your butt and removing her thumb before you can cum. You groan [if the delicateness of the player < 7]furiously[otherwise]helplessly[end if] as she stands up.";
		otherwise if the size of penis > 0:
			say "[speech style of M]'Did you actually think you could fuck me with that shrimp dick? Now I HAVE to fucking mess with you.'[roman type] She shoves her middle finger into your [asshole], smirking scornfully as she begins to stroke your prostate from the inside. You can[']t stifle your moans, frozen [if the humiliation of the player < 10000]in abject humiliation[otherwise]with pleasure[end if] as she rubs your poor, neglected [ShortDesc of penis] with the tip of her thumb, as if stimulating a clitoris. She doesn[']t put a lot of effort into holding you down, but you just [if the sex addiction of the player < 8]can't focus enough to stop her even though you [italic type]know[roman type] how much you want to.[otherwise if the sex addiction of the player < 12]can't bring yourself to stop her, even though you know you [italic type]want[roman type] to.[otherwise]can't bring yourself to stop her when it feel so good![end if] [line break][speech style of M]'Ooh, you must really love having your clit played with, faggot, I can already feel your prostate tightening up![roman type] The [M] coos, abruptly yanking her finger out of your butt and removing her thumb before you can cum. You groan [if the delicateness of the player < 7]furiously[otherwise]helplessly[end if] as she stands up.";
		compute sissification;
		arouse 3000;
		Bore M.

To say angry punishment insult of (M - a wench):
	say "[speech style of M]'I can actually see myself trying something like this on you, so...'[roman type][line break]";

To say angry punishment clothing destruction of (M - a wench) on (C - a clothing):
	say "[speech style of M]'Let's see how YOU like walking around with your [if C is nipple covering and the largeness of breasts > 3]tits out!'[otherwise if C is ass covering][fuckholes] on display!'[otherwise]body on display!'[end if][roman type][line break]".

To say angry punishment accessory confiscation of (M - a wench):
	say "[speech style of M]'I'll just even it out by keeping this!'[roman type][line break]".

To say DominanceSuccess of (M - a wench):[TODO: eventual penetration]
	if the size of penis > 8:
		if player is a bit horny:
			say "The [M] takes one look at your rock hard [ShortDesc of penis] and tries to scramble away, but you grab her by the hair and force her down onto her knees. [line break][first custom style]'Where you goin['] bitch? I thought you liked drinking cum.'[roman type][line break]She [if M is horny-wench]shakes her head, but immediately forms an O-shape with her lips, drooling a bit as her tongue lolls out over her lower lip[otherwise]shakes her head vigorously, but after a moment she slowly opens her mouth anyway[end if]. You revel in the sound of her gagging as you shove it in, brutally fucking her face until she begins to do it all by herself. She skilfully strokes the underside of your shaft with her tongue, further streaking her makeup with fresh tears as repeatedly impales her face on your rock hard junk.";
			Dignify 20;[Extra dignity when you save up]
		otherwise:
			say "You force the [M] to her knees. She [if the times-dominated of M > 0]lazily opens her mouth, staring at your [manly-penis] and fondling her breasts as she robotically licks her lips. Her expression slowly changes to one of fear[otherwise]tentatively opens her mouth and begins to fondle her breasts, eyeing your [manly-penis] as if it were rare breed of venomous snake. Her expression grows even more uncertain[end if] as your [ShortDesc of penis] reaches its full size, and she backs away a bit as your erection nears her lips. She's silent for a moment, [if M is horny-wench]before grabbing it with both hands and eagerly guides[otherwise]then slowly reaches out with one hand, guiding[end if] your [manly-penis] into her mouth. You feel her tongue move skilfully over the underside of your shaft, gently lubricating it as it reaches down her throat. She does such it with such precision and control that you can't bear the thought of interrupting, [run paragraph on]";
		if the player is desperate to pee and watersports fetish is 1:
			say " so you go for the next best thing and immediately start peeing straight down her throat! Her eyes widen at first, but after a moment she just accepts it, staring up at you submissively as you empty every last drop of your hot [urine] into her belly. You shove her off and quickly nut all over her face when you're finished.";
			now the bladder of the player is 0;
			Dignify 65;
		otherwise:
			say " [if the oral sex addiction of the player > 3 and the throatskill of the player is 0]in fact, you're actually a little jealous of her technique[otherwise if the oral sex addiction of the player > 3]in fact, you can't help feeling she might actually be even better than you are[otherwise]but you're still getting the feeling that she isn't really making use of her full potential[end if]. You make sure she has to put her skills to good use, forcing her to keep at least 7 inches in her mouth at all times, and holding her wrists above her head so she can't cheat by using her hands. [if M is horny-wench]She has a lot of trouble focusing on the exercise[otherwise]It's clear she's no master at doing things without the training wheels on[end if], but by the time your load spurts down her throat, she's learned a whole lot about how to properly [one of]service[or]gag on[or]please[at random] your [ShortDesc of penis]. You shove her off without waiting for her to finish, allowing the rest of your [semen] to splatter liberally across her face and breasts.";
			Dignify 50;
		orgasm;
		say "[AfterDominationComment 5 of M]";
	otherwise if the size of penis > 6 and the player is a bit horny:
		say "You force the [M] to her knees, brandishing your fully erect [ShortDesc of penis]. [line break][variable custom style]'[if the player is desperate to pee and watersports fetish is 1]So, want something to drink, bitch[otherwise]So, I heard you like drinking cum, bitch[end if]?'[roman type][line break][if the times-dominated of M > 0 or M is horny-wench]She nods quickly[otherwise]She gulps, avoiding eye contact as she answers with a slow nod[end if], gripping the base of your shaft with one hand and lightly stroking it as she drags her tongue up your length. You didn[']t really come here for foreplay though, and just as you're ready to 'nudge' her into beginning the main event, her lips wrap themselves around the end of your [manly-penis] and immediately glide down your spit-coated shaft. She furrows her eyebrows as your tip brushes the back of her throat, bracing her hands on your thighs as she forces herself down even further.";
		if the player is desperate to pee and watersports fetish is 1:
			say "You decide its the perfect time to give her a drink, and hold her down as you begin pissing straight down her throat. She splutters a bit, but otherwise seems to accept it, staring up at you submissively until your bladder has been completely and thoroughly emptied into her belly, and you allow her to pull up.";
			now the bladder of the player is 0;
			Dignify 40;
		otherwise:
			say "Pleasure exploding up your shaft as tiny movements of [his of M] tongue push you to the brink of orgasm in no-time-flat. You barely manage to grunt before you go over the edge, involuntarily bucking your hips as you unload straight down her throat. [if the throatskill of the player is 1]She's clearly had a lot more practice than you have, because s[otherwise]S[end if]he's able to hold the position for the full duration of your orgasm, allowing your softening [manly-penis] to slip out of her mouth on its own.";
			orgasm;
			Dignify 30;
		say "[AfterDominationComment 1 of M]";
	otherwise if the size of penis > 3:
		say "You force the [M] to her knees. [if the player is a bit horny]She seems to accept her role pretty quickly, gripping the base with one hand as she wraps her lips around your cockhead[otherwise]She stares at your hardening [ShortDesc of penis] for a moment before slowly nodding, gripping the base with one hand as she wraps her lips around your cockhead.";
		if the player is desperate to pee and watersports fetish is 1:
			say "You decide not to waste anymore time, forcing her to look you in the eye as you release your hold on your bladder straight down her throat. Her eyes widen, but she's [if the times-dominated of M is 0]surprisingly [end if]quick to accept it, swallowing obediently without so much as a peep of protest. You sigh contentedly as she pulls up.";
			now the bladder of the player is 0;
			Dignify 20;
		otherwise:
			say "Her tongue massages the underside of your [manly-penis], dexterously playing across each your sensitive spots one by one, building up a powerful orgasm brick by brick as she applies gentle suction with her lips. [if the oral sex addiction of the player > 3 and the throatskill of the player is 0]You can't believe how quickly she takes you to the edge, groaning with a mix of awe, pleasure, shivering with anticipation[otherwise if the oral sex addiction of the player > 3]You can barely wrap your head around how quickly she takes you to the edge, shivering with a mixture of anticipation and jealousy[otherwise]You can't believe how quickly she takes you the edge, groaning with pleasure[end if] as she slowly pulls off, and finishes you off with two rapid pumps. [if bukkake fetish is 1]Your [semen] splatters liberally over her already plastered face, most falling in her mouth or dripping off her chin onto her chest.[otherwise]She catches every last drop of your [semen], holding it briefly in her mouth before swallowing it all in one gulp.[end if]";
			orgasm;
			Dignify 10;
		say "[AfterDominationComment 1 of M]";
	otherwise if the size of penis > 0:
		say "[if the player is a bit horny]You force the [M] to her knees, pushing your fully erect [ShortDesc of penis] into her face.[otherwise]You force the [M] to her knees, stroking your [ShortDesc of penis] to a full, unimpressive erection.[end if]";
		if the player is desperate to pee and watersports fetish is 1:
			say "[speech style of M]'Pfft, you don't honestly expect to dominate me with a shrimp dick like that, right?'[roman type] She laughs derisively and begins to stand up, but you grab her by the hair and yank hard to get her back on her knees. You decide to punish her by releasing your hold on your bladder, grinning down at her as golden [urine] sprays all over her face and breasts.";
			now the bladder of the player is 0;
			say "[AfterDominationComment 3 of M]";
			Dignify 15;
		otherwise:
			say "[speech style of M]Wow, now I feel even worse...just do it on my chest alright?[roman type] She pushes her breasts together, looking up at you with a deadpan expression as you eagerly pump your with your fingers [if the player is a bit horny]desperately hard [end if][ShortDesc of penis]. You wish she were more enthusiastic, but it just feels so good, and your time in this game has left you a lot more sensitive than you were before. It only takes a few short moments for you to emit a feminine grunt and spurt your [load] all over her chest.";
			say "[AfterDominationComment 2 of M]";
			orgasm;
			Dignify 5;
	otherwise:
		oral dominate M.

To oral dominate (M - a wench):[TODO: update]
	Dignify 20;
	if the player is male:
		say "You force the [M] onto her back, sitting on her face. [if the bimbo of the player < 12][line break][first custom style]'[one of]No offence meant[or]Nothing personal[at random], I promise.'  [otherwise][line break][second custom style]'Let's see how you like it!'  [end if][roman type][line break]Pulling your asscheeks apart, you position your [asshole] over her mouth, scooting back slightly to cut off airflow to her nose. She whines petulantly, trying to squirm away, failing because she is weak from the preceding fight. Reluctantly, she opens her mouth and begins to massage your sphincter with her tongue. ";
		if the semen volume of belly > 0:
			say "You sigh in pleasure, the sensations causing your anal muscles to loosen and push [semen] out onto her face. The wench immediately starts enjoying herself a lot more, grabbing your thighs and beginning to eagerly thrust her tongue in and out of your [asshole]. It's fun having someone clean out your [asshole] when everyone else here seems bent on violating it, but eventually you grow bored and get up.";
			decrease the semen volume of belly by a random number between 1 and the semen volume of belly;
			say "[AfterDominationComment 0 of M]";
		otherwise:
			say "You take the opportunity to play with her breasts, pinching and rubbing her [one of]pink[or]brown[stopping] nipples until they are tight and red. However, it doesn't really feel all that great for you, so you eventually grow bored and climb to your feet.";
			say "[AfterDominationComment 1 of M]";
	otherwise:
		if the player is desperate to pee and watersports fetish is 1:
			say "You force the [M] to her knees, pulling apart your pussy lips as you release your hold on your bladder. She closes her eyes and angles her face toward your [vagina] as best she can. You sigh as your [urine] streams onto her face and breasts.";
			now the bladder of the player is 0;
			say "[AfterDominationComment 4 of M]";
		otherwise:
			say "You force the [M] onto her back, sitting on her face. [if the bimbo of the player < 12][line break][first custom style]'[one of]No offence meant[or]Nothing personal[at random], I promise.'  [otherwise][line break][second custom style]'Let's see how you like it!'  [end if][roman type][line break]";
			if the semen volume of vagina > 0 and the pregnancy of the player is 0:
				say "Pulling your asscheeks apart, you position your dripping wet folds over her mouth and your [asshole] over her nose, cutting off her airflow. She squirms petulantly, weakly clawing at your thighs to try and make you get up, but fails because she is weakened from the preceding fight. Reluctantly, she opens her mouth and pushes her tongue into your [vagina]. You sigh in pleasure, massaging your breasts as the sensations cause your vaginal muscles to loosen and allow [semen] to dribble out onto her face. The wench grabs your thighs, suddenly a lot more eager to fuck you with her tongue. You reach back to rub her gash, which she was probably planning to have you clean out yourself. You're sure you'd be able to orgasm if the wench continued on like this, but the slipperiness of the [semen] drooling out of your pussy makes you a lot less sensitive. So, you eventually grow bored and stand up.";
				now the semen volume of vagina is 0;
			otherwise if the player is a bit horny:
				say "Pulling your asscheeks apart, you position your dripping wet folds over her mouth and your [asshole] over her nose, cutting off her airflow. She squirms petulantly, weakly clawing at your thighs to try and make you get up, but fails because she is weakened from the preceding fight. Reluctantly, she opens her mouth and pushes her tongue into your [vagina]. You massage your [BreastDesc], cooing happily as the pleasure builds. She doesn't forget to work your clitoris, stroking it faster and faster as your voice rises. You tighten your thighs, groaning with pleasure as your arousal subsides and an orgasm wracks your body.[line break]Having thoroughly soaked the wench with your girlcum, you stand up.";
				orgasm;
			otherwise:
				say "Pulling your asscheeks apart, you position your [vagina] over her mouth and your [asshole] over her nose, cutting off her airflow. She squirms petulantly, weakly clawing at your thighs to try and make you get up, but fails because she is weakened from the preceding fight. Reluctantly, she opens her mouth and pushes her tongue into your folds. You take the opportunity to play with her breasts, pinching and rubbing her [one of]pink[or]brown[stopping] nipples until they are tight and red. She doesn't forget about your clit, gently pushing it back and forth in hopes of making you orgasm. It feels good, but eventually you grow bored and climb to your feet.";
			say "[AfterDominationComment 1 of M]".

To compute unique dominance reward of (M - a wench):
	let R be a random number between 1 and 0;
	if the player is male:
		DelicateDown 1;
		SexAddictDown R;
	otherwise:
		SexAddictDown R;
	if the times-dominated of M > 0:
		let T be a random demongirl tattoo;
		if there is a worn tattoo and T is not worn:
			summon T;
			say "A drawing of a demon girl appears on your left arm!  You feel more dominant.";
	now player-fucking is 0.

To say AfterDominationComment (N - a number) of (M - a wench):
	if N is 0, say "[speech style of M]'[one of]You can dominate me any time, baby.'[or]Hey, maybe you can be on top again next time.'[or]I'm glad I let you dominate me, that was fun!'[in random order][roman type][line break]";
	if N is 1, say "[speech style of M]'[one of]I'll be on top next time.'[or]It's going to be me on top next time.'[or]It's going to be MY genitals in YOUR face next time.'[in random order][roman type][line break]";
	if N is 2, say "[speech style of M]'[one of]You better hope that shrimpy thing is bigger next time you see me.'[or]I hope you remember how that felt, because I'm going to fucking punish you next time, baby dick.'[or]Don't think this is ever going to happen again. Not when you have a tiny baby dick like that.'[in random order][roman type][line break]";
	if N is 3, say "[speech style of M]'[one of]Ooh, you-! I'll fucking get you for that!'[or]Don't think I won't make you pay for that, baby dick.'[or]You're going to pay for that next time, baby dick.'[in random order][roman type][line break]";
	if N is 4, say "[speech style of M]'[one of]I'll get you for that, fucker!'[or]You won't get away with that, fucker!'[or]I'll make you pay for that, fucker.'[in random order][roman type][line break]";
	if N is 5, say "[speech style of M]'[one of]Asshole...'[or]Will you leave me alone now? I don[']t like doing this you know.'[or]Don[']t think you[']re gonna get away with this forever, asshole.'[in random order][roman type][line break]";

Section 4 - Friendly Sex

To say PresentFriendlyAcceptanceFlav of (M - a wench):
	say "[speech style of M]'[one of]Wow, you[']d do that?'[or]Oh yeah! Help a girl out!'[or]Finally, nobody else ever wants to help!'[or]Now that you[']ve asked, I feel bad about getting cum on your face, but since you made an offer...'[at random][roman type][line break]".

To say PresentFriendlyRejectionFlav of (M - a wench):
	if presented-orifice is a potential target:
		say "[speech style of M]'Not right now, I don[']t feel like it.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Sorry, I don[']t really swing that way.'[roman type][line break]";

To compute (M - a wench) considering (T - a vessel):
	if M is unfriendly:
		say "[speech style of M]'Why save it for later when I can feed you right now?'[roman type] The [M] ignores the [T]!";
	if the blue-balls of M > 0 and T is open topped:
		say "[speech style of M]'[one of]With what?  Cum? I don[']t know why you can[']t just lick me out like before, but I guess if you need a fix it's better than sucking dick for it.'[or]Sure, I[']m just glad to have it out of me.'[stopping][roman type]";
		say MonsterTakeFlav of M to T;
		now the doses of T is 2;
		now the fill-colour of T is creamy;
	otherwise:
		say "The [M] shakes her head no. [line break][speech style of M]'What would I even fill it up with?'[roman type]".
		
To decide which number is the blue-balls-limit of (M - a horny-wench):
	decide on -4.
To decide which number is the blue-balls-limit of (M - a wench):
	decide on -2.

To say FriendlySexReleaseSpeech of (M - a wench):
	say "[speech style of M]'Oh. I guess I'd get tired of it after a while too.'[roman type][line break]";
	FavourDown M by the sex desire of M.

To say FriendlySexReleaseFlav of (M - a wench):
	if M is intelligent, say FriendlySexReleaseSpeech of M;
	say "The [M] stands up.".

To say MonsterTakeFlav of (M - a wench) to (T - a vessel):
	say "The [M] takes the [T] from you [if the doses of T > 0], dumping it out before she[otherwise]and[end if] turns away, quietly moaning to herself for a moment or so before handing returning the [T], full of creamy [semen].".

To say OfferFlav of (T - a vessel):
	if the player is able to speak:
		if the second noun is wench and the noun is open topped:
			say "[variable custom style]Hey, could you fill this for me?[roman type][line break]";
		otherwise:
			say "[variable custom style]'[if the second noun is unfriendly]Please, take this instead!'[otherwise]Would you be interested in this?'[end if][roman type][line break]";
	otherwise if the player is able to make sounds:
		say "[variable custom style][muffled sounds][roman type][line break]";
	otherwise:
		say "You hold the item up to the [second noun].";

Part 2 - Conversation

Section 1 - Greeting

[This wench uses the normal greeting functions, although the player should not be able to speak if the wench is on top of them]

[how many times has the wench taken a seat on your face? I think it's safe to have really forward greetings in here because aggressive monsters tend to stay aggressive. FYI there's obviously more that could be put here, but I decided to leave it in favour of getting this out quickly.]
To say SubmissiveGreeting of (M - a wench):
	if the semen taste addiction of the player < 6:
		if the player is female:
			say "[variable custom style]'[one of]You got fucking cum in my mouth!'[or]You got cum in my fucking mouth, you bitch!'[or]Why did you put all that disgusting slime in my mouth?'[at random][roman type][line break]";
		otherwise:
			say "[variable custom style]'[one of]You're fucking gross, bitch! You got jizz in my fucking mouth!'[or]You got cum in my mouth, bitch!'[or]Gross bitches like you are exactly why I never eat pussy.'[at random][roman type][line break]";
	otherwise if the semen taste addiction of the player < 13:
		say "[variable custom style]'[one of]Hey. Are you going to make me clean you out again?'[or]I guess it wasn't that bad eating you out...'[or]I get it if you're feeling a little gummed up, but do you have to use me every time?'[at random][roman type][line break]";
	otherwise:
		say "[second custom style]'[one of]Hey sexy, want me to lick up more of that cum?'[or]Hey girl, still feeling dirty, because I'm feeling hungry.'[or]Feeling a little full, baby? I can help.'[or]Let me lick that yummy [semen] out of your pussy!'[at random][roman type][line break]".

To say FirstResponse of (M - a wench):
	if the strength of the player > 7:
		say "[speech style of M]'[one of]I hope you don't mind me staying close. I'm scared.'[or]Do you mind if I stay close? I'm scared.'[or]I used to be an adventurer like you, but then I took a cumshot to the ass.'[as decreasingly likely outcomes][roman type][line break]";
	otherwise if the size of penis <= 3 and the player is male and penis is exposed:	
		say "[speech style of M]'[one of]Let's stick together. If your dick is that tiny you probably can't defend yourself on your own.'[or]Wow, your dick is really tiny. Do you want me to protect you or something?'[or]Stick with me. You obviously can[']t protect yourself if you have a shrimpy thing like that.'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]I hope you don't mind if we stick together. I'm scared.'[or]It's scary in here. Let's stick together.'[at random][roman type][line break]".

To say RepeatResponse of (M - a wench):
	if the size of penis <= 3 and the player is male and penis is exposed:
		say "[speech style of M]'[one of]Hey, it's baby dick!'[or]So, has your dick always been that small?'[or]How are you holding up, baby dick? Do you need me to protect you?'[or]Oh my god, I just can't get over how tiny your cock is.'[at random][roman type][line break]";
	if there is knickers retained by M:
		say "[speech style of M]'[one of]Thanks for the panties!'[or]Thanks for letting me have your panties!'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]I hope you don't mind me staying close. I'm scared.'[or]Do you mind if I stay close? I'm scared.'[or]I used to be an adventurer like you, but then I took a cumshot to the ass.'[as decreasingly likely outcomes][roman type][line break]".

To say UnfriendlyResponse of (M - a wench):
	if the size of penis <= 3 and the player is male and penis is exposed:
		say "[speech style of M]'[one of]Shut up. It's not like I'd ever fuck you anyway.'[or]Shut up, baby dick, I'm horny.'[or]I'm looking forward to shutting you up, baby dick.'[at random][roman type][line break]";
	otherwise if the size of penis > 7 and penis is lewdly exposed and M is unfriendly:
		say "[speech style of M]'[one of]You're crazy if you think I'll let you put that thing in me!'[or]You've got another thing coming if you think you can put that in me.'[or]Fuck off, asshole!'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]God, do you ever fucking shut up?'[or]Shut up.'[or]Do you ever stop running your mouth?'[or][if the bimbo of the player < 8]Shut up you fucking prude!'[otherwise if the bimbo of the player < 14]Shut up you fucking skank!'[otherwise]Shut up you fucking slut!'[end if][at random][roman type][line break]".

To say SubmissiveResponse of (M - a wench):
	if the size of penis <= 3 and the player is male and penis is lewdly exposed and the sex addiction of the player < 7:
		say "[speech style of M]'[one of]Just try to fuck me, shrimp dick. I fucking dare you.'[or]So you're going to fuck me? Really. With a tiny cock like that?'[or]Go ahead and try to fuck me, faggot. I wouldn't even feel it.'[at random][roman type][line break]";
	otherwise if the player is male and M is unfriendly and the sex addiction of the player < 7:
		say "[UnfriendlyResponse of M]";
	otherwise if the player is female and the sex addiction of the player < 14:
		say "[speech style of M]'[one of]Go fuck yourself, bitch!'[or]You know how to make it up to me, bitch.'[or]If you're really sorry, you'll get on your fucking knees.'[at random][roman type][line break]";
	otherwise if player is upright:
		say "[speech style of M]'[one of]Get on your fucking knees then, bitch.'[or]Get on your knees then, skank.'[or]Get on the ground then, skank.'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Glad you see things my way.'[or]Wow, you really are a slut.'[or]Don't worry, bitch, I'll fucking feed you.'[at random][roman type][line break]".

To say DominantResponse of (M - a wench):
	if the semen taste addiction of the player < 6:
		say "[speech style of M]'[one of]You're welcome.'[or]Oh, so you're still hungry then?'[or]So you want more then?'[or]That probably means you want more, doesn't it.'[at random][roman type][line break]";
		if M is friendly, say "[speech style of M]'Haha, just kidding.'[roman type][line break]";
	otherwise if the times-fucked of M > 1:
		say "[speech style of M]'[one of]Hey there. I thought of a new nickname for you. Cunt Wipe. How does that sound?'[or]Oh, look, it's my favourite cunt wipe!'[or][if M is friendly]Hey, it's my favourite cunt wipe!'[otherwise]Look who it is! I just got fucked so I really need a cleaning.'[end if][then at random][roman type][line break]";
	otherwise if bukkake fetish is 1 and the semen coating of face < 1 and M is unfriendly:
		say "[speech style of M]'[one of]Wasn't there cum on your face last time I saw you. Oh well, I can replace it.'[or]Hey, what happened to all that cum on your face? Eh, whatever. I'm replacing it anyway.'[or]Wow, your face is completely clean! I bet you fucking ate it, didn't you.'[at random][roman type][line break]";
	otherwise:
		say "[SubmissiveResponse of M]".

To say midDominanceResponse of (M - a wench):
	if M is friendly or the bimbo of the player < 10:
		say "[speech style of M]'[one of]No way! I'm getting out of here!'[or]Fuck that! I don't want them turning on me!'[or]Do I look like I can help?'[at random][roman type][line break]";
	otherwise if the size of penis > 8 and M is friendly:
		say "[speech style of M]'[one of]Serves you right!'[or]Donkey dick and you're still getting fucked. Haha wow.'[at random][roman type][line break]";
	otherwise:
		let N be a random monster penetrating a body part;
		say "[speech style of M]'[one of]This is getting me all hot and bothered. Don't get up.'[or]Don't worry, I'll have a turn when [if N is male]he's[otherwise if N is female]she's[otherwise]it's[end if] done.'[or]It's actually sort of hot when someone else gets fucked. Stay down there until [if N is male]he's[otherwise if N is female]she's[otherwise]it's[end if] finished.'[at random][roman type][line break]".

Section 2 - Questioning

To compute annoyance of (M - a wench):
	if M is uninterested:
		say "The wench doesn't seem to realize you are talking to her.[line break]";
	otherwise if M is unfriendly:
		say "The wench ignores your question. [line break][speech style of M]'Shut up and help me out!'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Can we stop with the idle chatter and concentrate on finding a way out of this hell-hole?'[roman type][line break]";

To compute teaching of (M - a wench):
	say "[speech style of M]'Want me to show you how to properly deepthroat a cock?  Not only will it help you when getting face-fucked but sometimes you could do it of your own accord if you'd rather not get fucked properly!'[roman type][line break]";
	if image cutscenes is 1, display figure of wench cutscene 4;
	teach deepthroating;
	if the questioned of M <= 290:
		increase the questioned of M by 100;
	otherwise:
		increase the questioned of M by 50.

To say WhereAnswer of (M - a wench):
	say "[speech style of M]'Some weird dungeon filled with traps and monsters!  Everything seems built to fuck you or turn you into a slut.'[roman type][line break]".

To say WhoAnswer of (M - a wench):
	say "[speech style of M]'My name's [if M is panicked wench]Lucy[otherwise if M is creampied wench]Amy[otherwise if M is lost wench]Katie[otherwise if M is kidnapped wench]Stephanie[otherwise]Mary[end if], pleased to meet you, I guess.'[roman type][line break]".
		
To say StoryAnswer of (M - a wench):
	say "[speech style of M]'I [if M is panicked wench]invested all of my savings into cryptocurrency. It went badly[otherwise if M is creampied wench]am actually one of the game's developers. For some reason I thought it would be a clever idea to make a bet that I could win the game really easily with my intricate knowledge of the game's mechanics[otherwise if M is kidnapped wench]went into massive debt after getting drawn in by one of those Multi-Level-Marketing schemes[otherwise]bit off more than I could chew in a game of poker[end if]. Now I'm here.'[roman type][line break]".

To say EscapeAnswer of (M - a wench):
	say "[speech style of M]'[if M is panicked wench]No fucking idea...'[otherwise if M is creampied wench]You keep going up. But going on ahead before you're ready can be a very bad idea. I prefer to play it safe... however I must admit it hasn't been going too well for me so far.'[otherwise if M is kidnapped wench]Do you think I'd still be here if I knew?'[otherwise]I don't know at all. I tried to ask a guard but he wouldn't talk to me.'[end if][roman type][line break]".

To say AdviceAnswer of (M - a wench):
	say "[speech style of M]'[one of]If a monster is going to beat you up, and you know it, why not just kneel and accept the punishment?  Sure it'll be humiliating and stuff but you'll otherwise be fine and able to continue. Especially if you haven't found anywhere good to rest...'[or]Sometimes it's better to run away than to let a monster fuck you. You'll probably get tired sooner, but if you just let them do it whenever,  another monster might find you and want to join in.'[or]I think traps reset, and trapped containers close themselves when the traps reset. Try to remember where you found traps before!'[or]Don't let the guard's attitude fool you, he isn't a pushover.'[or][if inflation fetish is 1]That cosplay chick is a fucking bitch, but she's no gladiator. Take that skank down a fucking peg.'[otherwise]You and I aren't the only people trapped in here. Don't be fooled, though. Some actually feel right at home.'[end if][or]You know those sex dolls? Don't stab them. Trust me.'[at random][roman type][line break]".

Section 3 - Drink Requesting

To compute friendly drink of (M - a wench):
	say "[speech style of M]'I'm sorry, I don't have any water on me... I've been surviving on a strict diet of semen!'[roman type][line break]".

To compute unfriendly drink of (M - a wench):
	say "[speech style of M]'Oh I'll give you a drink all right!'[roman type][line break]";
	now M is interested;
	now the boredom of M is 0.

To compute desperate drinking to (M - a wench):
	say "[if M is uninterested]You spot a [M]!  [otherwise]You look at the [M] hungrily. [end if]Your thirst combined with your new found love of the taste of [semen] means you can't help but go up to the girl, get on your knees and start licking at her crotch. You are rewarded by her sighs of pleasure, and a flood of girlcum and [semen]!  You gulp it down greedily.";
	StomachSemenUp a random number between 1 and 2;
	now the boredom of M is 400;
	now the stance of the player is 1;
	now seconds is 6;
	humiliate 250.


Part 5 - Trading

To decide which number is the bartering value of (T - a desirable knickers) for (M - a wench):
	if M is horny-wench, decide on 0;
	decide on 4.


Wench ends here.

