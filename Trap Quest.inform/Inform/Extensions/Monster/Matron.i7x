Matron by Monster begins here.

A matron is a kind of monster. A matron is usually intelligent. The difficulty of a matron is usually 9. There is 1 matron. The leftover-type of a matron is usually 116. A matron can be motherly or unmotherly. [The times-changed of a matron is usually 0. A matron has a number called potty-training. The potty-training of a matron is usually 0. A matron has a number called potty-training-asked. The potty-training-asked of a Matron is usually 0.][For planned future content]

Definition: A matron (called M) is hotel dwelling:
	if diaper lover <= 0, decide no;
	decide yes.

The printed name of a matron is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]strict matron[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". Understand "strict" as a matron. The description of a matron is usually "[MatronDesc]". The text-shortcut of matron is "mat".

Figure of matron is the file "matron1.png".

To say MatronDesc:
	if images visible is 1, display the figure of matron;
	say "Standing proudly in her pink latex dress the matron of the Adult Nursery is casting a vigilant eye across the room. She has the look of a determined mother that will do anything to attend to those under her special care. Her aura of dominance is only slightly muted by the sluttiness of her dress.";
	if diaper quest is 0, say "[variable custom style][if the diaper addiction of the player < 6 and the player is male]What a MILF! This must be the woman in charge of the princess. [otherwise if the diaper addiction of the player > 14][line break][second custom style]*Giggle* [one of]Maybe she can be my mommy[or]It's my mommy[stopping]! [end if][if the delicateness of the player < 7]If I can play it cool, maybe she'll be nice to me.[otherwise if the delicateness of the player < 12]I wonder what sorts of games she'd play with someone that's not her baby?[otherwise if the delicateness of the player < 16]I bet she could take real good care of me.[otherwise]I hope she can be my mommy and show me how to be a slut like her.[end if][roman type][line break]".
	
Definition: A matron (called M) is able to remove cursed plugs:
	decide yes.

To set up (M - a matron):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 10;
	now the health of M is the maxhealth of M;
	now M is unmotherly; [At the start she doesn't consider you her charge.]
	calm M.

This is the spawn initial matron rule:
	if diaper lover >= 1:
		if debugmode > 0, say "Summoning matron in hotel.";
		let M be a random matron;
		now M is in Hotel22.
The spawn initial matron rule is listed in the setting up hotel monsters rules.

Definition: a matron (called M) is human:
	decide yes.

Part 1 - Misc Flavour

To say SummoningFlav of (M - a matron):
	say "You hear the sound of a female humming gently.".

To say speech style of (M - a matron):
	say first custom style.

To say GrabStatus of (M - a matron):
	say "[if M is feeding the player]has you in a high chair[otherwise if M is changing the player]has you on a giant changing table[otherwise if M is spanking the player]has you over her shoulder[otherwise]is restraining you[end if]".

To say GroundPeeReaction of (M - a matron):
	if M is friendly or M is uninterested:
		say "[speech style of M]'Now that just won't do!  You're wetting [if the location of M is Hotel22]my nursery's[otherwise]the[end if] floor, you disgusting [if M is female]girl[otherwise]sissy[end if]!  You've lost your adult underwear privileges, child - I'm going to put you in diapers and if I have anything to say about it, you'll be wearing them until the day you die!'[roman type][line break]";
		anger M;
		now M is interested;
		now the variety of M is 99.

To say ClothesPeeReaction of (M - a matron):
	if M is friendly or M is uninterested:
		say "[speech style of M]'Now that just won't do, how disgusting!  You've lost your adult underwear privileges, child - I'm going to put you in diapers and if I have anything to say about it, you'll be wearing them until the day you die!'[roman type][line break]";
		anger M;
		now M is interested;
		now the variety of M is 99.

To compute MasturbationReaction of (M - a matron):
	if M is in Hotel22 and (M is friendly or M is uninterested):
		say "The [M] watches you with a bemused expression.";
		if there is a worn total protection diaper:
			say "[speech style of M]'[one of]Wow, you really are enjoying your nappies aren't you?  Well don't let me stop you!'[or]Do you realise how much of a pathetic baby you look like right now?  There's no way anyone in the world could treat you like a grown up again after this!'[or]What a good [if the player is male]sissy baby[otherwise]girl[end if]!'[stopping][roman type][line break][if the humiliation of the player < 40000]You turn [one of]bright[or]an even brighter shade of[stopping] red.[end if]";
			humiliate 50;
			now the boredom of M is 50; [This stops an unfriendly matron suddenly running out of boredom and interrupting the player to perform some maintenance feeding]
		otherwise:
			say "[speech style of M]'No no no!  This is a nursery, young [if the player is male]sissies[otherwise]girls[end if] like you do NOT get to have cummies like grown ups!  I can't believe you would be so naughty!  If you have to rub yourself, you'll do it through a diaper like a real adult baby.'[roman type][line break]";
			FavourDown M by 5;
			anger M;
			now M is interested;
			now the boredom of M is 0;
			if the player is prone:
				say "Grabbing your hands away from you, she picks you up and plops you down on the giant changing table. She smoothly and efficiently binds your wrists and ankles tightly with the inbuilt straps.";
				now M is grabbing the player;
				now M is changing the player;
			otherwise:
				now the variety of M is 99.

To say waitingflav of (M - a matron):
	say "[DQWaitingFlav of M]".

To say LeftoverDesc (N - 116):
	say "An unconscious [random matron] on the ground here has a bulging belly and still has [semen] slowly flowing out of her [vagina].[line break]".

To say DiaperDonateComment of (M - a matron):
	say "[speech style of M]'Now remember, be a good baby and stay in diapers for Nana.'[roman type][line break]".

Part 2 - Perception

To compute sudden objectification of (M - a matron):
	say "The [M] puts a hand over her mouth in shock. [line break][speech style of M]'Oh dear darling, this just won't do. You clearly need someone to take care of you...'[roman type][line break]".

To compute perception of (M - a matron):
 	now M is interested;
 	say "The [M] notices you[if the player is sluttily dressed].[otherwise]![end if]";
 	if the class of the player is living sex doll:
 		say "It doesn't look like she's interested in you.";
 		bore M for 500 seconds;
	otherwise if M is unfriendly:
		say "[one of]She seems compelled by her maternal instincts to care for her newest charge[or]She smiles warmly[if the delicateness of the player < 15], but with a small hint of malice[end if][stopping]. [line break][speech style of M]'Hi, you naughty baby! You look like you need nanny's help.'[roman type][line break][if the diaper addiction of the player < 8]There's worry in your eyes as she approaches. She won't accept that you're really an adult and can care for your own self. [otherwise if the diaper addiction of the player > 15]You giggle and react with a whimsical [line break][second custom style]'Ack!'[roman type][line break]as you ready to play with your Nanny. [end if][if the delicateness of the player < 7]You hope you have the strength to fight her off. [otherwise if the delicateness of the player < 12]Your mind begins to wander thinking of what sort of humiliation she'll put you through, now.[otherwise if the delicateness of the player < 16]You yearn for her care.[otherwise]You ache to fall to your knees and let her do whatever she wants with your body.[end if]";
		compute diaper check of M;
	otherwise if there is a worn diaper or the player is incontinent or M is aware that the player needs a change:
		say "[speech style of M]'[if the times-met of M < 1]Hey there you cute little thing.'[otherwise][one of]Oh it's my favourite big baby!'[or]Hi little baby potty pants!'[or]Don't you cry little one, Nanny is here to take care of you!'[in random order][end if][roman type][line break]";
		compute diaper check of M;
	otherwise if M is motherly:
		say "[speech style of M]'Bad [if the player is a sissy]sissy[otherwise if the class of the player is maid]maid[otherwise if the class of the player is princess]princess[otherwise if the size of penis < 3]girl[otherwise]baby[end if]!  What did I say about not letting me find you without a nice snug nappy?!  You're in big trouble!  [if the player is upright]Get on your knees, now!'[otherwise]Hold still, now...'[end if][roman type][line break]";
		now the variety of M is 99;
		anger M;
	otherwise if there is an interested unfriendly wrestler in the location of M:
		say "[speech style of M]'Ooh, this one is really cute isn't [unless the player is male and the bimbo of the player < 7]s[end if]he!  I know exactly what to do with you, darling. From now on you should call me [']Mommy['], okay sweetie pie[if M is not eager to change diapers]?  Now let's get you into something more appropriate...'[otherwise]?'[end if][roman type][line break]";
		now the variety of M is 99;
	otherwise if the class of the player is schoolgirl and there is no worn diaper:
		say "[speech style of M]'Oh my, you look so adorable in that uniform. But there[']s something we need to take care of before you can go off to school, now isn[']t there! Don[']t fight me sweety, I need to make sure you don[']t have any accidents in class.'[roman type][line break]";
		now the variety of M is 99;
	otherwise if diaper focus is 1 or the variety of M is 99:
		say "[speech style of M]'Ooh, you're new!  And not diapered... Well we can fix that right away!  [if the player is upright]Get on your knees, little one!'[otherwise]Stay right there...'[end if][roman type][line break]";
		now the variety of M is 99;
 	otherwise:
		say "[speech style of M]'[one of]Oh aren't you a pretty one!  Well I'm afraid I'm only here to help babies who can't handle grown up things like toilets on their own. But if you ever do find yourself needing a diaper change, you know where to find me!'[or]Oh, it's you again!  Still feeling grown up enough to use the potty like a big girl?  Good for you!  Run along then, cutie!'[stopping][roman type][line break]".

To say DiaperReaction of (M - a matron):
	say "The [M]'s eyes perk up!";
	now M is interested;
	compute diaper check of M.

To compute diaper mess reaction of (M - a matron):
	humiliate 400;
	if player-squatting is 1, humiliate 500;
	if M is interested:
		if M is doing nothing special:
			compute diaper check of M;
		otherwise:
			say "The [M] looks at you with [one of]a smug expression[or]a judging expression[or]a caring expression[in random order]. [line break][speech style of M]'[one of][if player-squatting is 1]Pooping yourself on purpose in front of me?  You really are a naughty little baby aren't you?'[otherwise]Having problems controlling your poopies, little baby?  Aww, how adorable!'[end if][or]Uh-oh. Did you mean to do that, little one?'[or]Ooh how wonderful, your potty untraining seems to be going smoothly!'[or]What a good little baby you are, making a big mess in front of your Nanny!'[in random order][roman type][line break]";
	otherwise:
		say "The [M]'s eyes suddenly perk up!";
		now M is interested;
		now the health of M is the maxhealth of M; [otherwise she won't diaper check you]
		compute diaper check of M.

To say BecomesBoredFlav of (M - a matron):
	say "The [M] seems to lose interest in you for now.".

Definition: a matron (called M) is uniquely unfriendly:
	if the variety of M is 99, decide yes;
	decide no.

To compute diaper check of (M - a matron):
	if there is a worn waddle diaper:
		say "[speech style of M]'You look so cute in your waddle diapee!'[roman type][line break]";
	otherwise if there is a worn diaper:
		let D be a random worn diaper;
		say "[one of]She swiftly walks up to you and holds [if diaper lover < 3]a hand to the front[otherwise]hands to the front and back[end if] of your [D], pushing firmly to get a good feel. [or]With concern in her eyes she swiftly walks up to you. She takes [if diaper lover < 3]a well manicured hand and presses it against the front[otherwise]her well manicured hands and presses them into the front and back[end if] of your [D]. She pushes it firmly to get a good feel of how [if diaper lover < 3]wet[otherwise]used[end if] your diaper is. [in random order][one of][if the diaper addiction of the player < 11]You lightly recoil against her touch, embarrassed that the [M] is giving you a diaper check.[otherwise if the diaper addiction of the player > 13]Almost instinctively you push your hips forward so that the [M] can get a good feel.[end if][or][if the delicateness of the player < 7]You feel shame at her touching you in this intimate manner.[otherwise if the delicateness of the player < 12]You hope that what she has planned for you is beneficial to your survival of this cruel game.[otherwise if the delicateness of the player < 16]You want her to press more firmly, yielding to her lovingly maternal decisions.[otherwise if the diaper addiction of the player > 6]You want to press your hips more into her touch, you crave her touch against your diapered crotch.[otherwise]You have no intention of resisting, since she is clearly in charge.[end if][purely at random]";
		if D is total protection and D is not messed and rectum > 1 and rectum + incontinence > a random number between 3 and 6:
			say "Her hands against your padded butt make you feel so much more relaxed. You sigh with pleasure and you can feel your sphincter dilating slightly. The [M] begins to speak. [line break][speech style of M]'[if the urine-soak of D > the soak-limit of D / 9]Oopsie, It seems like my little baby has had a big accident!  Thank goodness your cute little bottom was diapered. [otherwise]Hmm, it looks like you don't need a change yet... [end if]Wait, what's this?!'[roman type][line break]As soon as the [M] stops speaking you can feel what she has detected - you've lost control of your bowels and have started to mess yourself!";
			now diaper-scene-unhandled is 1;
			compute messing;
		otherwise if the urine-soak of D + the water-soak of D > the soak-limit of D / 9 or D is messed:
			say "[speech style of M]'Oopsie, It seems like my little baby has [if D is messed][one of]messed their nappy[or]filled their nappy again[stopping][otherwise]had a big accident[end if]!  [if D is messed]You definitely need a change now though, you stinky minx[otherwise]Thank goodness your cute little bottom was diapered[end if]. I'm so proud of you for coming [if times-met of M > 0]back [end if]to me [one of]for a diaper change[or]again[stopping]!'[roman type] [one of][if the player is upset about mess]You are relieved that you're going to be rescued from your gross situation.[otherwise if the diaper addiction of the player < 11]You feel a small amount of embarrassment at having to be changed by this slutty MILF.[otherwise if the diaper addiction of the player > 15 and the player is able to speak][line break][second custom style]'*giggle* I love the squishy sound your hand makes against my diaper!'[roman type][line break][end if][or][if the humiliation of the player < 10000]You fret about what she'll think when she sees your [player-crotch].[otherwise if the diaper addiction of the player > 6]You figure that a diaper change will be good for you, at least.[otherwise if the anal sex addiction of the player < 9] You're eager to have your [player-crotch] exposed to the [M] when she removes your diaper.[otherwise]You get a little excited hoping that she'll play with your [asshole] while she changes your diaper.[end if][in random order]";
			now the variety of M is 99;
 		otherwise if D is not total protection:
 			say "[speech style of M]'Oh my, this diaper is ripped!  That's no good, you're going to need a new one straight away!'[roman type][line break]";
			now the variety of M is 99;
		otherwise:
			if the urine-soak of D + the water-soak of D > 0, say "[speech style of M]'[one of]Ooh, you've used your nappy a little, like a good girl! But it's fine, you don't need a change yet.'[or]Oh, you're just a little wet. [if M is unfriendly]You don't need a change yet, so what else can we do?'[otherwise]Run along and have fun, now!'[end if][or]Awww, sweetie you went potty in your pants. Such a good baby!'[in random order][roman type][line break]";
			otherwise say "[speech style of M]'Hmm, seems like you've managed to stay dry for now. Well done my little darling!'[roman type][line break]";
			FavourUp M by 1;
			if M is unfriendly:
				say "The [M] considers her options, her jutting breasts inches away from your face. Her [if lactation fetish is 1]full, engorged [end if]nipples [if the oral sex addiction of the player > 7]protruding from her shiny latex dress causes your mind to think of the feeling of your tongue running along a sweet delicious cock. [otherwise]protrude from her shiny latex dress. [end if][line break][speech style of M]'Hmm, you don't need a change yet, but I think a naughty minx like you needs [if diaper quest is 0]feeding again, to make sure you're getting your nutrients[otherwise]some sort of discipline to keep you in line[end if]. [if the player is upright]Get on your knees, baby!'[otherwise]Come here...'[end if][roman type][line break]";
				if diaper quest is 0, say "[variable custom style][one of][if the diaper addiction of the player < 6]Oh my god! This woman is trying to force me to use my diaper![otherwise][line break][second custom style]*Giggle* If she feeds me I'll get to use my diaper! Yay![end if][or][if the humiliation of the player < 25000]I can't let her do this to me! I can feed myself.[otherwise if the semen taste addiction of the player > 15]I hope she feeds me with a delicious cream pie from her pussy.[otherwise if the delicateness of the player > 10]At least if she feeds me I won't be hungry. [otherwise if the sex addiction of the player < 10 and the player is male]Maybe she'll have me eat some food off her hot body. [otherwise if lactation fetish is 1 and the milk taste addiction of the player > 6]I hope she feeds me by letting me suckle her giant breasts.[otherwise]I'm letting her treat me like a baby, how deliciously degrading![end if][in random order][roman type][line break]";
	otherwise if M is unfriendly or M is motherly:
 		say "[speech style of M]'[one of]Didn't I tell you it's important for you to stay in diapers?  [if the player is prone]Stay on your knees[otherwise]Get on your knees[end if] and I'll fix that for you...'[or]How many times am I going to catch you out of nappies?  You're getting put in my naughty book for sure this time.'[or]Come on you naughty girl!  Time for your diaper.'[stopping][roman type][line break]";
 		now the variety of M is 99;
 		FavourDown M by 4;
	otherwise if the player is incontinent:
		say "[speech style of M]'Oh dear, are you wetting yourself lots without wearing a diaper?  That's no good!  Here, let me help you out...'[roman type][line break]";
		now the variety of M is 99;
	otherwise if M is objectifying the player:
		say "[speech style of M]'[one of]Hmm, you are pretty far gone, aren't you darling?  I think you need a bit of caring for, don't you hun?  [if the player is prone]Stay on your knees[otherwise]Get on your knees[end if] and I'll show you how I can help you.'[or]You definitely need my help again, don't you darling?'[stopping][roman type][line break]";
		now the variety of M is 99;
	if continued urination is 1 and the player is upright:
		say "[if the humiliation of the player < 18000]The sheer humiliation of the situation[otherwise if the delicateness of the player < 10]Something about the way she is gripping your private parts[otherwise]Something deep inside of you feels comforted and[end if] makes your knees buckle. You fall to the ground in front of the [M].";
		try kneeling.

Part 3 - Motion

To compute motion of (M - a matron):
	if M is unfriendly and the boredom of M <= 0: [The matron goes looking for the player after a while, if she is unfriendly.]
		now neighbour finder is the location of M;
		let A be a random N-viable direction;
		let P be the room A from the location of M;
		if A is a random N-viable direction and P is not Dungeon12:
			try M going A;
			compute motion reactions of M;
		otherwise if A is a random N-viable direction and P is not Dungeon12:
			try M going A;
			compute motion reactions of M;
	otherwise if M is not in Hotel22 and M is not in the location of the player:
		now M is in Hotel22.

To compute (M - a matron) seeking (D - a direction): [The matron only follows the player if unfriendly]
	if M is unfriendly, try M going D;
	compute motion reactions of M.

Part 4 - Combat

The matron priority attack rules is a rulebook.

Definition: a matron (called M) is willing to change diapers:
	decide yes.

 Definition: a matron (called M) is willing to spank:
	decide yes.

Definition: a matron (called M) is willing to masturbate:
	decide yes.

Definition: a matron (called M) is willing to deliver enemas:
	decide yes.

Definition: a matron (called M) is willing to forcefeed:
	decide yes.

This is the matron waits for players to finish peeing rule:
	if continued urination is 1, rule succeeds.
The matron waits for players to finish peeing rule is listed in the matron priority attack rules.
	
The priority attack rules of a matron is usually the matron priority attack rules.

The monster fucked taunting rule of a matron is usually the matron gets bored rule.
This is the matron gets bored rule:
	say "[speech style of current-monster]'I can see you're busy. I'll come back soon!'[roman type][line break]";
	bore current-monster for 30 seconds;
	rule succeeds.

The unique punishment rule of a matron is usually the matron acts like a nanny rule.

This is the matron acts like a nanny rule:
	if current-monster is not grabbing the player, now current-monster is doing nothing special;
	follow the matron nanny rules;
	rule succeeds.

The matron nanny rules is a rulebook.

This is the matron drags the player rule:
	let M be current-monster;
	if M is not in Hotel22 and the player is prone:
		drag to Hotel22 by M;
		rule succeeds.	
The matron drags the player rule is listed first in the matron nanny rules.

To say DragArrival of (M - a matron) to (R - Hotel22):
	if M is normally acquaintance, say "[speech style of M]'[one of]Here we go into the nursery, back where you belong. And don't you dare try to run off again!'[or]You're not big enough to run off on your own, baby. Let's stay in the nursery.'[cycling][roman type][line break]";
	otherwise say "[one of][or][or][line break][speech style of M]'[if there is a worn diaper]I should put you in a double diaper, that would keep you out of trouble.'[otherwise]You deserve a royal spanking, young miss!'[end if][roman type][line break][or][line break][speech style of M]'Crawl faster!'[roman type][line break][in random order]".

Definition: a matron (called M) is eager to change diapers:
	if M is feeding the player or M is spanking the player, decide no;
	if M is changing the player, decide yes;
	if the variety of M is 99, decide yes; [variety 99 means the matron has decided the player needs a diaper right now.]
	if the health of M < the maxhealth of M, decide no;
	if there is a worn diaper:
 		let D be a random worn diaper;
		if the urine-soak of D + the water-soak of D > the soak-limit of D / 9 or D is messed, decide yes;
 		if D is not total protection, decide yes;
	otherwise if M is motherly:
		decide yes;
 	decide no.
 
This is the matron changes a diaper rule:
	let M be current-monster;
	if M is eager to change diapers:
		now M is motherly; [The matron will never let you out of diapers again!]
		if there is a worn waddle diaper:
			say "[speech style of M]'[one of]Oh wow, it looks like this special diaper can clean itself!  How impressive. [or]Oh, I see you're still wearing you super special waddle diaper!  [stopping]I guess you don't need changing after all.'[roman type][line break]";
			bore M for 450 seconds;
			FavourUp M;
			TimesFuckedUp M by 1;
			rule succeeds;
		otherwise:
			compute diaper change of M;
			rule succeeds.
The matron changes a diaper rule is listed last in the matron nanny rules.

Definition: a matron (called M) is diaper change chastity cummies rewarding:
	if M is diaper change cummies rewarding and the number of things penetrating asshole is 0, decide yes;
	decide no.

To compute diaper change chastity cummies reward of (M - a matron):
	if the player is male, say "[speech style of M]'[one of]Oh you poor thing, are you struggling to get your cummies while locked into that thing?  Don't worry dear, I'll help you have your squirt squirt like a good sissy girl.'[or]Time for your girly squirt squirt, for being such a good sissy!'[stopping][roman type]  The [M] sticks [if the openness of asshole < 4]her index finger[otherwise if the openness of asshole < 9]two fingers[otherwise]four fingers[end if] into your [ShortDesc of asshole] and carefully fingers you, deliberately putting pressure on your prostate. ";
	otherwise say "[speech style of M]'[one of]I be you're being starved of your cummies locked away behind that thing, aren't you?  Well don't worry, I know just the trick, there's another hole we can use...'[or]Time for your anal squirt squirt, for being such a good baby!'[stopping][roman type]  The [M] sticks [if the openness of asshole < 4]her index finger[otherwise if the openness of asshole < 9]two fingers[otherwise]four fingers[end if] into your [ShortDesc of asshole] and carefully fingers you, deliberately putting pressure on your G-spot. ";
	say "Her professional skill is evident, as you very quickly feel a certain warmth rising...";
	now M is penetrating asshole;
	anally orgasm shamefully;
	diaperaddictup 1;
	say "The [M] pulls out slowly and gently. [line break][speech style of M]'If you keep being a good locked up [if the player is male]sissy[otherwise]baby[end if] for Nanny, you'll get more where that came from.'[roman type][line break]";
	now M is not penetrating asshole;
	FavourDown M by 2.

To say DiaperPowderFlav of (M - a matron):
	say "The [M] pulls out a bottle of baby power and squeezes it liberally over your crotch area, completely coating it and forming a huge white cloud of powder. ".

To say DiaperChangeFlav of (M - a matron):
	say "From [DiaperSpace of M] [he of M] produces [if current-diaper is new-diaper]an identical (but clean) [new-diaper][otherwise]a [new-diaper][end if], which [he of M] swiftly puts underneath your bum and then fixes in place. [if current-diaper is diaper]She chucks the old one into the diaper pail and you hear a little 'whoosh' as it is whisked away by some hidden mechanism. [end if][line break][speech style of M]'There, now isn't that much better?'  Off you trot now[one of]. But you'd better make sure that I never see you without a nappy on - you're my baby now, and you'll be kept in diapies for as long as I'm around![or]![stopping][roman type][line break]She releases you from the bondage and carries you back down onto the ground.".

To say DiaperSpace of (M - a matron):
	say "underneath the table".

To say DiaperChangeStart of (M - a matron):
	say "The [M], with seemingly little physical exertion, picks you up and plops you down on the giant changing table. She smoothly and efficiently binds your wrists and ankles tightly with the inbuilt straps.".

To compute unique diaper change effect of (M - a matron):
	[increase the times-changed of M by 1;
		if the times-changed of M > 2 and (M is guardian or M is ally) and the player is incontinent and the potty-training of M is 0:
			if the potty-training-asked of M is 0:
				say "[speech style of M]'You've been such a good little [if the player is female]baby girl[otherwise]sissy baby[end if] for me, how would you like to try being potty trained?' [roman type][yesnolink]";
				if the player consents and the diaper addiction of the player < 17:
					say "[speech style of M]'Wonderful!'[roman type][line break]The matron pulls out a potty training chart, writing '[if the player is male]Sissy[end if] Princess Pottypants ([NameBimbo])' in the name section before pinning it to the wall. [line break][speech style of M]'You know, you're the only pathetic diaper [if diaper lover >= 3]messing [otherwise]wetting [end if][if the player is male]sissy [otherwise]girl [end if]who has been good enough to earn this!'[roman type] She adds with a smile, before pulling out a giant, pink, plastic training potty, placing it below the chart.[line break][speech style of M]'Now, here are the rules. If you manage to use the potty 5 times in a row without having any accidents, you'll earn your way to training pants. If you manage to use the potty 10 times in a row without accidents after earning training pants, you'll get to wear big girl panties! However, if you have 10 accidents in a row after earning training pants, or 20 total, you'll be demoted back to diapers. Similarly, if you have 5 accidents in a row after earning big girl panties, or 10 total, you'll be demoted back to training pants. [if diaper lover >= 3]Messy accidents count as 2 for demotions. [end if]Good luck baby!'[roman type][line break]";
					now the potty-training of M is 1;
					now the potty-training-asked of M is 1;
				otherwise if the player consents:
					say "Even though your brain says yes, your diaper loving heart screams 'NO'! You instinctively yell [line break][second custom style]'No potty no potty!'[roman type][line break]over and over, jumping up and down, just like a child throwing a tantrum. The matron smiles, patting your fresh diaper. [line break][speech style of M]'Don't worry, don't worry, I understand baby. You can wet [if diaper lover >= 3]and mess [end if]your diapers as much as you like.[roman type][line break]"; [Maybe have a diapered sex scene with matron here?]
					now the potty-training-asked of M is 1;
				otherwise:
					say "[speech style of M]'Really? Well that's okay, if you want to keep wetting [if diaper lover >= 3]and messing [end if]your diapers, I'll always be here to change them for you.'[roman type][line break]";
					now the potty-training-asked of M is 1;
				otherwise if the potty-training-asked of M is 1:
					say "[speech style of M]'My offer to start potty training you still stands, baby.'[roman type][yesnolink]";
					if the player consents and the diaper addiction of the player < 17:
						say "[speech style of M]'Wonderful!'[roman type][line break]The matron pulls out a potty training chart, writing '[if the player is male]Sissy[end if] Princess Pottypants ([NameBimbo])' in the name section before pinning it to the wall. [line break][speech style of M]'You know, you're the only pathetic diaper [if diaper lover >= 3]messing [otherwise]wetting [end if][if the player is male]sissy [otherwise]girl [end if]who has been good enough to earn this!'[roman type] She adds with a smile, before pulling out a giant, pink, plastic training potty, placing it below the chart.[line break][speech style of M]'Now, here are the rules. If you manage to use the potty 5 times in a row without having any accidents, you'll earn your way to training pants. If you manage to use the potty 10 times in a row without accidents after earning training pants, you'll get to wear big girl panties! However, if you have 10 accidents in a row after earning training pants, or 20 total, you'll be demoted back to diapers. Similarly, if you have 5 accidents in a row after earning big girl panties, or 10 total, you'll be demoted back to training pants. [if diaper lover >= 3]Messy accidents count as 2 for demotions. [end if]Good luck baby!'[roman type][line break]";
						now the potty-training of M is 1;
						now the potty-training-asked of M is 1;
					otherwise if the player consents:
						say "Even though your brain says yes, your diaper loving heart screams 'NO'! You instinctively yell [line break][second custom style]'No potty no potty!'[roman type][line break]over and over, jumping up and down, just like a child throwing a tantrum. The matron smiles, patting your fresh diaper. [line break][speech style of M]'Don't worry, don't worry, I understand baby. You can wet [if diaper lover >= 3]and mess [end if]your diapers as much as you like.[roman type][line break]"; [Maybe have a diapered sex scene with matron here?]
						now the potty-training-asked of M is 1;
					otherwise:
						say "[speech style of M]'Really? Well that's okay, if you want to keep wetting [if diaper lover >= 3]and messing [end if]your diapers, I'll always be here to change them for you.'[roman type][line break]";
						now the potty-training-asked of M is 1;]
	[say "[speech style of M]I have changed you [times-changed of M] times[roman type][line break]";][For testing purposes]
	now the variety of M is 0.

This is the matron confiscates grown up items rule:
	let M be current-monster;
	if the class of the player is adult baby:
		let N be the number of held vessels;
		decrease N by the number of held baby's bottles;
		if N > 0 and a random number between 1 and 4 is 1:
			while N > 0:
				let V be a random held vessel;
				while V is baby's bottle:
					now V is a random held vessel;
				say "The [M] takes away your [V]!";
				decrease N by 1;
				now V is in Holding Pen;
				now V is retained by M;
				FavourDown M by 1;
			if the the number of held baby's bottles is 0:
				let B be a random baby's bottle;
				now B is held by the player;
				now B is bland;
				now the fill-colour of B is white;
				now the doses of B is the max-doses of B;
				say "She forces a baby's bottle full of milk into your hand!  ";
			say "[speech style of M]'Babies only need their bottles, I don't want to see you using these big girl cups any more, okay sweetie?'[roman type][line break]";
			rule succeeds;
		if there is a worn necklace and a random number between 1 and 10 is 1 and the favour of M < 13:
			let C be a random worn necklace;
			say "The [M] notices your [C]!  [line break][speech style of M]'Where did you get this, baby?!  This is my jewellery!  Bad [if the player is male]sissy[otherwise]girl[end if], this isn't yours to play with!  It's precious and delicate. I'll be taking it back now.'[roman type][line break]She pulls it off from your neck!";
			now C is in Holding Pen;
			now C is retained by M;
			say "[variable custom style][if the player is able to speak]'Sorry I didn't know it was yours!  You have to believe me!'[otherwise]How was I to know it was hers?!  I can't even explain the mix-up...[end if][roman type][line break]";
			FavourDown M by 1;
			rule succeeds;
	otherwise if there is no worn headgear and M is unfriendly:
		let H be a random off-stage baby bonnet;
		if H is actually summonable:
			summon H cursed;
			say "The [M] strokes your [ShortHairDesc]. [line break][speech style of M]'I've decided to make you my personal baby!  We're going to have such fun together!'[roman type][line break]She puts a [H] on your head!  [if the diaper addiction of the player < 10][line break][variable custom style]Do I not get a say in this?[otherwise if the diaper addiction of the player < 15][variable custom style]Well this might take some getting used to![otherwise]Yay!  I want to stay with Nanny forever![end if][roman type][line break]".
		
The matron confiscates grown up items rule is listed last in the matron nanny rules.

This is the matron feeds the player rule:
	if there is a worn diaper and (face is not actually occupied or there is a worn ballgag):
		compute forcefeed of current-monster;
		rule succeeds.
The matron feeds the player rule is listed last in the matron nanny rules.

To say ForcefeedDeclarationFlav of (M - a matron):
	say "[if the health of M < the maxhealth of M][line break][speech style of M]'Let me show you what happens to naughty babies who fight back!'[roman type][line break]".

To say ForcefeedStartFlav of (M - a matron):
	say "The [M], with seemingly little physical exertion, picks you up and plops you down on the giant high chair. She pulls the tray into place in front of you and locks it shut, preventing you from escaping. [if the number of worn bibs is 0]She gets a large pink bib with an image of a cartoon animal on it, and fastens it around your neck. [end if][line break][speech style of M]'Time for your dindins!'[roman type][line break]".

To decide which number is the forcefeed-length of (M - a matron):
	decide on 4.

To compute forcefeed round (N - 4) of (M - a matron):
	say "The [M] holds your nose closed to force you to open your mouth, and shoves in a heaped spoonful of mushy peas. [line break][speech style of M]'These will help you grow big and healthy.'[roman type][line break]You are forced to swallow just to keep breathing, and before you can protest she has a second, and then a third, and then a fourth spoonful ready to force in. The outside of your lips are covered in green thanks to her rather indiscriminate aim.[line break][variable custom style]'*Splutter* [if the bimbo of the player < 12]I am not a baby[otherwise]Waaaaah, I can feed myself[end if]!'[roman type][line break]";
	StomachFoodUp 1.

To compute forcefeed round (N - 3) of (M - a matron):
	say "Ignoring your protests, the [M] starts smushing a soft, warm banana into your mouth, again covering your face just as much as feeding you.[line break][variable custom style]'*Omnom*[roman type] [if the oral sex addiction of the player > 7]Your need for a cock in your mouth causes you to tongue the banana as it slides down your throat. [otherwise if diaper quest is 0]The phallic object hurriedly moves down your throat in large chunks. [otherwise]You are forced to chew it rapidly to avoid having to swallow it whole! [end if][line break][variable custom style]'[if the diaper addiction of the player < 8]Get off me you crazy woman!'[otherwise]I don't need to eat anything!'[end if][roman type][line break]";
	StomachFoodUp 1.

To compute forcefeed round (N - 2) of (M - a matron):
	say "Without even responding, the [M] has moved onto another bowl, this one full of oatmeal! [line break][speech style of M]'Here comes the airplane!'[roman type][line break]You [line break][variable custom style]'MMPH'[roman type][line break]in protest but it's too late, there's already a full spoon in your mouth!  She doesn't relent until half the bowl is in your stomach, and the other half is down your bib.";
	StomachFoodUp 1.

To compute forcefeed round (N - 1) of (M - a matron):
	say "[speech style of M]'Come on you messy baby, time for your sippy cup.'[roman type]  Before you can react, a toddler's drinking cup is shoved into your mouth, and you are sipping down a mystery liquid that tastes a lot like fruit juice, but a bit more sour. [if incontinence < 5]Your stomach feels a little off...[otherwise if the diaper addiction of the player > 12]For a moment you almost forget you're not just a big baby.[otherwise]You feel the liquid enter your belly, and your bladder relax.[end if][line break]";
	let B be a random off-stage bib;
	if B is bib and the class of the player is adult baby:
		summon B cursed;
		say "[speech style of M]'Ooh, that bib just looks so perfect on you, I think I'll have to let you keep it!'[roman type]  The [M] leaves the bib on. [if the strength-influence of B > 0]You can feel it making you a bit stronger!  [end if]";
	otherwise if the number of worn bibs is 0:
		say "The [M] removes your bib, and then wipes away the mess around your mouth with it.";
	StomachUp 2;
	increase incontinence by 1;
	if rectum is 0 and diaper lover > 2, now rectum is 1; [The matron has started an unmentionable process]

To say ForcefeedAftermath of (M - a matron):
	say "She lets you down from your chair, done with you. For now.".

To say ForcefeedAfterFlav of (M - a matron):
	say "".

To say SpankingStartFlav of (M - a matron):
	say "The [M], with seemingly little physical exertion, picks you up and throws you over her shoulder, holding you in a fireman's grip. [line break][speech style of M]'I'm going to give you [if the sex-length of M > 2]a spanking you'll never forget, you demon child!'[otherwise][one of]a[or]another[stopping] quick maintenance spanking so that you remember who's in charge here.'[end if][roman type][line break]".

To say SpankingFlav of (M - a matron):
	say "The [M]'s outstretched hand comes down [one of]hard and fast[or]hard like a sledgehammer[or]as fast as a whip[at random] onto your [ShortDesc of hips]!".

To say SpankingDeclarationFlav of (M - a matron):
	say "The [M], with seemingly little physical exertion, picks you up and throws you over her shoulder, holding you in a fireman's grip. [line break][speech style of M]'I'm going to give you [if the sex-length of M > 2]a spanking you'll never forget, you demon child!'[otherwise][one of]a[or]another[stopping] quick maintenance spanking so that you remember who's in charge here.'[end if][roman type][line break]".

To say SpankingCommentFlav of (M - a matron):
	say "[first custom style]'[one of]Take this!'[or]You should be thanking me for this lesson!'[or]Don't whinge, you deserve this.'[or]Stop wriggling!'[or]Stay still!'[or]It's okay if you cry, you are only little after all.'[or]I'm not going to stop until your cute bottom is nice and red all over.'[or]You really are a brat, you know that?'[at random][roman type][line break]".

To say SpankingAfterFlav of (M - a matron):
	say "The [M] puts you back down on the ground. [line break][speech style of M]'Now run along little one, but be on your best behaviour, understand?'[roman type][line break]The [M] visibly loses interest in you.".

Check going when there is a matron in the location of the player:
	let M be a random matron in the location of the player;
	if M is interested and M is friendly:
		deinterest M. [This way the matron should always be ready to check your diaper.]

Section 1 - Damage

To compute damage of (M - a matron):
	if the health of M > 0:
		if M is uninterested:
			say "She shrieks with shock. [line break][speech style of M]'[one of]How dare you!'[or]Do you never learn?!'[cycling][roman type][line break]";
			now M is interested;
			anger M;
		otherwise:
			if M is friendly:
				say "She shrieks with shock. [line break][speech style of M]'[one of]How dare you!'[or]Do you never learn?!'[cycling][roman type][line break]";
				anger M;
			otherwise:
				say DamageReaction (the health of M) of M;
	otherwise:
		compute death of M.

To say DamageReaction (N - a number) of (M - a matron):
	if N > (the maxhealth of M / 4) * 3:
		say "[one of]'[line break][speech style of M]You definitely deserve a punishment, you naughty harlot, you... Grr!'[roman type][line break][or]She sneers aggressively![stopping]";
	otherwise if N > (the maxhealth of M / 4) * 2:
		say "She snarls angrily, taking the hit!";
	otherwise if N > (the maxhealth of M / 4):
		say "She seems to get angrier with every hit!";
	otherwise:
		say "She keeps her eyes trained on you, never wavering as she fights to maintain her balance.".

To compute unique death of (M - a matron):
	say "The [noun] screams as she falls to the floor. ";
	let B be a random off-stage baby's bottle;
	if B is a thing:
		now B is blessed;
		now B is in the location of the player;
		say "Her body disappears, leaving behind a [printed name of B].";
		compute autotaking B;
	otherwise:
		say "Her body disappears.".

Chapter 2 Conversation

To compute talk option (N - 1) to (M - a matron):
	if times-met is 0, now times-met is 1; [this is a failsafe to make sure the first time greeting never displays twice.]
	let B be a random number from 1 to 4; [variable used so we can refer to bimbo seduce in the next function]
	let seduced be 0;
	if the player is seductive and B is 1 and M is raunchy:
		say "[BimboSeduce of M]";
		now seduced is 1;
		now M is interested; [This is to make sure we pass to the greeting response function]
	otherwise if M is penetrating a fuckhole and M is unfriendly:[Is this monster in the process of dominating the player?]
		say "[ToDominantGreeting of M]";
	otherwise if M is penetrating a fuckhole:
		say "[ToPartnerGreeting of M]";
	otherwise if there is a monster penetrating a fuckhole:
		if a random monster penetrating a fuckhole is unfriendly, say "[midDominanceGreeting of M]"; [is the player currently being dominated by another monster?]
		otherwise say "[InSexGreeting of M]"; [is the player currently having consensual sex]
	otherwise if the times-fucked of M > the times-dominated of M:
		if the sex addiction of the player > 9:
			say "[MatronGreeting]"; [Since the player doesn't actually get fucked by the matron, I figure they shouldn't ask for sex. I grouped it with the "DominantResponse" function.]
		otherwise:
			say "[SubmissiveGreeting of M]";
	otherwise if the times-dominated of M > the times-fucked of M:
		say "[DominantGreeting of M]";
	otherwise if the times-met of M < 2:[This should display the first time the player greets a monster.] 
		say "[FirstGreeting of M]"; [Note that the player has already "met" most monsters at least once if the monster is interested.]
	otherwise:
		say "[RepeatGreeting of M]";[This is the default greeting for most monsters]
	if M is interested:
		if seduced is 0:
			compute greeting response of M;[This is something that should be specific to every monster]
		otherwise:
			say "[BimboSeduced of M]";
	otherwise:
		if M is intelligent, now the boredom of M is 0;
		check perception of M.

To IdentifiablePosterReaction of (M - a matron):
	say "The [M] looks at you, blinks, then looks back to the poster. Upon realising that it is you, she starts laughing uncontrollably.";
	say "You turn bright red with shame.";
	humiliate the lewdness of a random poster in the location of the player * 2.

To UnidentifiablePosterReaction of (M - a matron):
	say "[speech style of M]'Now that's is one naughty minx in need of discipline.'[roman type][line break]";
	say "You turn slightly red but don't say a word.";
	humiliate the lewdness of a random poster in the location of the player / 2.

Section 1 Greeting

[Lots written by MG]

To say FirstResponse of (M - a matron):
	say "[speech style of M]'Hey there, cutie.'[roman type][line break]".

To say RepeatResponse of (M - a matron):
	say "[speech style of M]'[one of]Hi again, sweetie.[or]Hello again, cutie pie.'[or]If it isn[']t my favourite little girl! Hi!'[at random][roman type][line break]".
	
To say UnfriendlyResponse of (M - a matron):
	say "[speech style of M]'[one of]Little girls shouldn[']t talk to grown ups without permission!.[or]Aa-aa-aah~! Good little girls speak only when spoken to.[or]Hush. I[']ll tell you when it's all right to talk.[or]Hush now, I wouldn[']t want you to embarrass yourself trying to say some big word!'[or]It's bad manners to speak out of turn, honey.'[or]Where on earth are your manners? Good little girls don[']t speak to grown-ups without permission!'[at random][roman type][line break]".

To say MatronGreeting:
	if the intelligence of the player < 6:
		say "[second custom style]'[one of]Nanna!'[or]Nanny!'[or]Nanna! Nanna!'[or]Nan-nan!'[at random][roman type][line break]"; [not sure a line break is necessary here, since iirc there's a full indent in the text between greeting and responding anyway]
	otherwise:
		say "[second custom style]'[one of]Nanna. Are there any men around here? I[']m so hungry.'[or]Nanna! [if the player is horny]I'm soooo horny. Set me up on a play-date or something.[otherwise]Are you taking care of any cute guys? I[']d love a play-date.[end if]'[or]Hey Nanna. You look SO good! I want to be hot like you when I grow up!'[at random][roman type][line break]". [The player is more like an "adult baby" here.]

To say DominantResponse of (M - a matron):
	if the sex addiction of the player < 10:
		say "[speech style of M]'[one of]Don[']t you dare speak to me that way!'[or]Don[']t speak to me in that tone of voice!'[or]Grown ups know best, sweetie.'[or]You[']re lucky. I usually clean potty mouths with a bar of soap.'[or]Don[']t be a potty mouth, sweetie.'[or]Hmmph. That kind of language is exactly why I don[']t like letting you leave the nursery.'[or]It sounds like you need a spanking.'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Hey there snookums. Are you hungry?'[or]Hi there! You sound hungry!'[or]Hi there cutie patootie!'[at random][roman type][line break]".

To say ToDominantGreeting of (M - a matron):
	if the bimbo of the player < 8:
		say "[first custom style]'[one of]Release me! This is degrading![or]I[']m not a child! Stop treating me like this![or]Let me go! This is so embarrassing![or]Who do you think you are? I[']m an adult![at random][roman type][line break]";
	otherwise:
		say "[first custom style]'[one of]Yummy![or]Yum![or]I love you Nanna![at random][roman type][line break]".

To say AsDominantResponse of (M - a matron):
	say "[speech style of M]'Little girls shouldn't talk to grown ups without permission.'[roman type][line break]".

To say midDominanceResponse of (M - a matron):
	let N be a random monster penetrating a body part;
	if the relevant sex addiction of M  > 12:
		say "[speech style of M]'[one of]What [if N is robobutler]the butler does to you is his[otherwise if N is neuter]this cute little thing does to you is its[otherwise if N is male]this man does to you is his[otherwise]this woman does to you is her[end if] business. I better not catch you trying to weasel out of a punishment again.'[or]You like getting punished, don[']t you. Such a naughty girl...'[or]Enjoying your punishment? That[']s very naughty...'[or]Don[']t say those naughty things to me! That's probably the reason [if N is robobutler]the butler[otherwise if N is neuter]this thing[otherwise if N is male]this man[otherwise]this woman[end if] is punishing you in the first place!'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of][if N is robobutler]The butler[otherwise if N is neuter]This thing[otherwise if N is male]This man[otherwise]This woman[end if] would not be punishing you without a good reason. This is what happens when you misbehave.'[or]It's time to be a little independent, sweetie. Take your punishment like a good little girl.'[or]You are obviously being punished for something. I know it's hard, honey, but I[']m afraid you are responsible for your own actions.'[or]It's time you learned responsibility. Be a good girl and accept your punishment.'[or]I[']m not going to take your punishment for you, honey!'[at random][roman type][line break]".

Section 2 Questioning

To say WhereAnswer of (M - a matron):
	say "[speech style of M]'[one of]You[']re in the nursery of this hotel, made especially for big babies who can[']t be trusted to look after themselves!'[or]Don[']t you remember, honey? We[']re in the nursery, it's where I take care of big babies.[or]Sweetie, I know you[']re curious, but I already answered that question for you twice.[stopping][roman type][line break]".
	
To say WhoAnswer of (M - a matron):
	say "[speech style of M]'I'm a professional nanny dom, who's very experienced in taking care of any big babies who need my help!'[roman type][line break]".
	
To say StoryAnswer of (M - a matron):
	say "[speech style of M]'[one of]When I heard they were building this fetish hotel, I just had to get involved!  I was the one who convinced them to set up this room to take care of all the adult babies we would inevitably get coming through here.'[or]I[']m the head manager of the Nintendolls R&D team. After spending a lot of time in this game, some of the researchers end up in a state where they can[']t take care of themselves at all! I[']m not sure what they would do if I weren[']t here to change their diapers...'[or]I told my son he couldn't play naughty games at home until he moved out of the house, so when I saw this game on his desk, I couldn't believe my eyes! I was so mad that I decided to play through the game and beat it before he got the chance. It's so much fun I just decided not to leave![or]My daughter told me she was moving out, so I convinced her to play this game with me as a going away present. Now I[']m changing her diapers again. We[']re closer than ever!'[as decreasingly likely outcomes][line break]".
	
To say EscapeAnswer of (M - a matron):
	say "[speech style of M]'You can leave via the front entrance of the hotel whenever you want. Just make sure to pay your bill before you leave.'[roman type][line break]".
	
To say AdviceAnswer of (M - a matron):
	say "[speech style of M]'[one of]That butler is here to serve you, but he can be a little forceful. If you don[']t think you can handle him, make sure your tummy stays full!'[or]If you[']re wearing a diaper, be careful about leaving it on when it gets dirty, sweetie. Take too long and you might forget how you got it on in the first place! I'm always happy to help if that happens, but in case you can[']t find me, you can only remove it with magic.'[at random][roman type][line break]".[figured the butler advice could be a little better, added some more]

[I think it makes sense to have her be a little more standoffish than everyone else.]
To compute annoyance of (M - a matron):
	if M is uninterested:
		say "The [M] ignores your question.";
	otherwise if M is unfriendly:
		say "[speech style of M]'Quiet now, darling!  I'm trying to take care of you here.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'I don't have time to just sit around all day answering your questions. Run along now!'[roman type][line break]".

To compute teaching of (M - a matron):
	say "[speech style of M]'If you ever do get assaulted, never underestimate the power of admitting you're just a widdle baby and pleading for mercy. You never know, it might just soften their heart.'[roman type][line break]";
	teach begging for mercy;
	increase the questioned of M by 100. [She gains the same amount of "annoyance" regardless of whether or not she's annoyed already]


Section 3 Drink Requesting

To compute unfriendly drink of (M - a matron):
	if M is unfriendly:
		say "[speech style of M]'You can have a drink from your sippy cup if and when I decide you deserve it.'[roman type][line break]";
		now the boredom of M is 0;
	otherwise:
		say "[speech style of M]'Not now, darling.'[roman type][line break]".

To compute friendly drink of (M - a matron):
	say "[speech style of M]'Sorry, I only have a special sippy cup designed for big babies. You'll have to find someone else to help you.'[roman type][line break]".

Section 4 Food Requesting

To compute friendly food of (M - a matron):
	compute unfriendly food of M.

To compute unfriendly food of (M - a matron):
	if the player is immobile:
		say "[speech style of M]'Ask me when you're not busy!'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Of course, honey!  Take a seat...'[roman type][line break]";
		now the stance of the player is 1;
		compute forcefeed of M.



Matron ends here.

