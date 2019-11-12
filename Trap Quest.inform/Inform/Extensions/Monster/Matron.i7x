Matron by Monster begins here.

matron is a monster. matron is intelligent. The difficulty of matron is 9. The leftover-type of matron is 116. matron can be motherly or unmotherly. matron has a number called feedingtone.

Definition: matron is hotel dwelling if diaper lover > 0.

Understand "strict" as matron. The text-shortcut of matron is "mat".

Figure of matron is the file "NPCs/Hotel/matron1.png".

To decide which figure-name is the monster-image of (M - matron):
	decide on figure of matron.

To say ShortDesc of (M - a matron):
	say "matron".

To say MediumDesc of (M - a matron):
	say "strict matron".

To say MonsterDesc of (M - a matron):
	say "Standing proudly in [his of M] pink latex dress the matron of the Adult Nursery is casting a vigilant eye across the room. [big he of M] has the look of a determined mother that will do anything to attend to those under [his of M] special care. [big his of M] aura of dominance is only slightly muted by the sluttiness of [his of M] dress."

To say MonsterComment of (M - a matron):
	if diaper quest is 0 and lady fetish < 2, say "[variable custom style][if the diaper addiction of the player < 6 and the player is male]What a MILF! This must be the woman in charge of the princess. [otherwise if the diaper addiction of the player > 14][line break][second custom style]*Giggle* [one of]Maybe she can be my mommy[or]It's my mommy[stopping]! [end if][if the delicateness of the player < 7]If I can play it cool, maybe she'll be nice to me.[otherwise if the delicateness of the player < 12]I wonder what sorts of games she'd play with someone that's not her baby?[otherwise if the delicateness of the player < 16]I bet she could take real good care of me.[otherwise]I hope she can be my mommy and show me how to be a slut like her.[end if][roman type][line break]".

Definition: matron is able to remove cursed plugs: decide yes.

To set up (M - matron):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 10;
	now the health of M is the maxhealth of M;
	now M is unmotherly; [At the start she doesn't consider you her charge.]
	calm M.

This is the spawn initial matron rule:
	if diaper lover >= 1:
		if debugmode > 0, say "Summoning matron in hotel.";
		now matron is in Hotel22.
The spawn initial matron rule is listed in the setting up hotel monsters rules.

Definition: matron is human: decide yes.

Part 1 - Misc Flavour

To say SummoningFlav of (M - matron):
	say "You hear the sound of a female humming gently.".

To say speech style of (M - matron):
	say first custom style.

To say GrabStatus of (M - matron):
	say "[if M is feeding the player]has you in a high chair[otherwise if M is changing the player]has you on a giant changing table[otherwise if M is spanking the player]has you over [his of M] shoulder[otherwise]is restraining you[end if]".

To say GroundPeeReaction of (M - matron):
	if M is friendly or M is uninterested:
		say "[speech style of M]'Now that just won't do! You're wetting [if the location of M is Hotel22]my nursery's[otherwise]the[end if] floor, you disgusting [if M is presenting as female]girl[otherwise]sissy[end if]! You've lost your adult underwear privileges, child - I'm going to put you in diapers and if I have anything to say about it, you'll be wearing them until the day you die!'[roman type][line break]";
		anger M;
		now M is interested;
		now M is diaper-committed.

To say ClothesPeeReaction of (M - matron):
	if M is friendly or M is uninterested:
		say "[speech style of M]'Now that just won't do, how disgusting! You've lost your adult underwear privileges, child - I'm going to put you in diapers and if I have anything to say about it, you'll be wearing them until the day you die!'[roman type][line break]";
		anger M;
		now M is interested;
		now M is diaper-committed.

To compute MasturbationReaction of (M - matron):
	if M is in Hotel22 and (M is friendly or M is uninterested):
		say "[BigNameDesc of M] watches you with a bemused expression.";
		if there is a worn total protection diaper:
			say "[speech style of M]'[one of]Wow, you really are enjoying your nappies aren't you? Well don't let me stop you!'[or]Do you realise how much of a pathetic baby you look like right now? There's no way anyone in the world could treat you like a grown up again after this!'[or]What a good [if the player is presenting as male]sissy baby[otherwise]girl[end if]!'[stopping][roman type][line break][if the humiliation of the player < 40000]You turn [one of]bright[or]an even brighter shade of[stopping] red.[end if]";
			humiliate 50;
			now the boredom of M is 50; [This stops an unfriendly matron suddenly running out of boredom and interrupting the player to perform some maintenance feeding]
		otherwise:
			say "[speech style of M]'No no no! This is a nursery, young [if the player is male]sissies[otherwise]girls[end if] like you do NOT get to have cummies like grown ups! I can't believe you would be so naughty! If you have to rub yourself, you'll do it through a diaper like a real adult baby.'[roman type][line break]";
			FavourDown M by 5;
			anger M;
			now M is interested;
			now the boredom of M is 0;
			if the player is prone:
				say "Grabbing your hands away from you, [he of M] picks you up and plops you down on the giant changing table. [big he of M] smoothly and efficiently binds your wrists and ankles tightly with the inbuilt straps.";
				now M is grabbing the player;
				now M is changing the player;
			otherwise:
				now M is diaper-committed.

To say waitingflav of (M - matron):
	say "[DQWaitingFlav of M]".

To say LeftoverDesc (N - 116):
	let M be matron;
	say "An unconscious [input-style][ShortDesc of M][roman type] on the ground here has a bulging belly and still has [semen] slowly flowing out of [his of M] [HoleDesc of M].[line break]".

To say DiaperDonateComment of (M - matron):
	say "[speech style of M]'Now remember, be a good baby and stay in diapers for Nana.'[roman type][line break]".

Part 2 - Perception

To compute sudden objectification of (M - matron):
	say "[BigNameDesc of M] puts a hand over [his of M] mouth in shock.[line break][speech style of M]'Oh dear darling, this just won't do. You clearly need someone to take care of you...'[roman type][line break]".

To compute perception of (M - matron):
 	now M is interested;
 	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]";
 	if the class of the player is living sex doll:
 		say "It doesn't look like [he of M]'s interested in you.";
 		bore M for 500 seconds;
	otherwise if M is unfriendly:
		say "[one of][big he of M] seems compelled by [his of M] maternal instincts to care for [his of M] newest charge[or][big he of M] smiles warmly[if the delicateness of the player < 15], but with a small hint of malice[end if][stopping]. [line break][speech style of M]'Hi, you naughty baby! You look like you need nanny's help.'[roman type][line break][if the diaper addiction of the player < 8]There's worry in your eyes as [he of M] approaches. [big he of M] won't accept that you're really an adult and can care for your own self. [otherwise if the diaper addiction of the player > 15]You giggle and react with a whimsical [line break][second custom style]'Ack!'[roman type][line break]as you ready to play with your Nanny. [end if][if the delicateness of the player < 7]You hope you have the strength to fight [him of M] off. [otherwise if the delicateness of the player < 12]Your mind begins to wander thinking of what sort of humiliation [he of M]'ll put you through, now.[otherwise if the delicateness of the player < 16]You yearn for [his of M] care.[otherwise]You ache to fall to your knees and let [him of M] do whatever [he of M] wants with your body.[end if]";
		compute diaper check of M;
	otherwise if there is a worn diaper or the player is incontinent or M is aware that the player needs a change:
		say "[speech style of M]'[if the times-met of M < 1]Hey there you cute little thing.'[otherwise][one of]Oh it's my favourite big baby!'[or]Hi little baby potty pants!'[or]Don't you cry little one, Nanny is here to take care of you!'[in random order][end if][roman type][line break]";
		compute diaper check of M;
	otherwise if M is motherly:
		say "[speech style of M]'Bad [if the player is a sissy]sissy[otherwise if the class of the player is maid]maid[otherwise if the class of the player is princess]princess[otherwise if the size of penis < 3]girl[otherwise]baby[end if]! What did I say about not letting me find you without a nice snug nappy?! You're in big trouble! [if the player is upright]Get on your knees, now!'[otherwise]Hold still, now...'[end if][roman type][line break]";
		now M is diaper-committed;
		anger M;
	otherwise if there is an interested unfriendly wrestler in the location of M:
		say "[speech style of M]'Ooh, this one is really cute isn't [unless the player is male and the bimbo of the player < 7]s[end if]he! I know exactly what to do with you, darling. From now on you should call me [']Mommy['], okay sweetie pie[if M is not eager to change diapers]? Now let's get you into something more appropriate...'[otherwise]?'[end if][roman type][line break]";
		now M is diaper-committed;
	otherwise if the class of the player is schoolgirl and there is no worn diaper:
		say "[speech style of M]'Oh my, you look so adorable in that uniform. But there[']s something we need to take care of before you can go off to school, now isn[']t there! Don[']t fight me sweetie, I need to make sure you don[']t have any accidents in class.'[roman type][line break]";
		now M is diaper-committed;
	otherwise if diaper focus is 1 or M is diaper-committed:
		say "[speech style of M]'Ooh, you're new! And not diapered... Well we can fix that right away! [if the player is upright]Get on your knees, little one!'[otherwise]Stay right there...'[end if][roman type][line break]";
		now M is diaper-committed;
 	otherwise:
		say "[speech style of M]'[one of]Oh aren't you a pretty one! Well I'm afraid I'm only here to help babies who can't handle grown up things like toilets on their own. But if you ever do find yourself needing a diaper change, you know where to find me!'[or]Oh, it's you again! Still feeling grown up enough to use the potty like a big girl? Good for you! Run along then, cutie!'[stopping][roman type][line break]".

To say DiaperReaction of (M - matron):
	say "[BigNameDesc of M]'s eyes perk up!";
	now M is interested;
	compute diaper check of M.

To compute diaper mess reaction of (M - matron):
	humiliate 400;
	if voluntarySquatting is 1, humiliate 500;
	if M is interested:
		if M is doing nothing special:
			compute diaper check of M;
		otherwise:
			say "[BigNameDesc of M] looks at you with [one of]a smug expression[or]a judging expression[or]a caring expression[in random order]. [line break][speech style of M]'[one of][if voluntarySquatting is 1]Pooping yourself on purpose in front of me? You really are a naughty little baby aren't you?'[otherwise]Having problems controlling your poopies, little baby? Aww, how adorable!'[end if][or]Uh-oh. Did you mean to do that, little one?'[or]Ooh how wonderful, your potty untraining seems to be going smoothly!'[or]What a good little baby you are, making a big mess in front of your Nanny!'[in random order][roman type][line break]";
	otherwise:
		say "[BigNameDesc of M]'s eyes suddenly perk up!";
		now M is interested;
		now the health of M is the maxhealth of M; [otherwise she won't diaper check you]
		compute diaper check of M.

To say BecomesBoredFlav of (M - matron):
	say "[BigNameDesc of M] seems to lose interest in you for now.".

Definition: matron (called M) is uniquely unfriendly:
	if M is diaper-committed, decide yes;
	decide no.

To compute diaper check of (M - matron):
	if there is a worn waddle diaper:
		say "[speech style of M]'You look so cute in your waddle diapee!'[roman type][line break]";
	otherwise if there is a worn diaper:
		let D be a random worn diaper;
		say "[one of][big he of M] swiftly walks up to you and holds [if diaper messing < 3]a hand to the front[otherwise]hands to the front and back[end if] of your [D], pushing firmly to get a good feel. [or]With concern in [his of M] eyes [he of M] swiftly walks up to you. [big he of M] takes [if diaper messing < 3]a well manicured hand and presses it against the front[otherwise]her well manicured hands and presses them into the front and back[end if] of your [D]. [big he of M] pushes it firmly to get a good feel of how [if diaper messing < 3]wet[otherwise]used[end if] your diaper is. [in random order][one of][if the diaper addiction of the player < 11]You lightly recoil against [his of M] touch, embarrassed that [NameDesc of M] is giving you a diaper check.[otherwise if the diaper addiction of the player > 13]Almost instinctively you push your hips forward so that [NameDesc of M] can get a good feel.[end if][or][if the delicateness of the player < 7]You feel shame at [him of M] touching you in this intimate manner.[otherwise if the delicateness of the player < 12]You hope that what [he of M] has planned for you is beneficial to your survival of this cruel game.[otherwise if the delicateness of the player < 16]You want [him of M] to press more firmly, yielding to [his of M] lovingly maternal decisions.[otherwise if the diaper addiction of the player > 6]You want to press your hips more into [his of M] touch, you crave [his of M] touch against your diapered crotch.[otherwise]You have no intention of resisting, since [he of M] is clearly in charge.[end if][purely at random]";
		if D is total protection and asshole is not actually occupied and D is not messed and rectum > 1 and rectum + suppository + the incontinence of the player > a random number between 3 and 6:
			say "[big his of M] hands against your padded butt make you feel so much more relaxed. You sigh with pleasure and you can feel your sphincter dilating slightly. [BigNameDesc of M] begins to speak. [line break][speech style of M]'[if the urine-soak of D > the soak-limit of D / 9]Oopsie, It seems like my little baby has had a big accident! Thank goodness your cute little bottom was diapered. [otherwise]Hmm, it looks like you don't need a change yet... [end if]Wait, what's this?!'[roman type][line break]As soon as [NameDesc of M] stops speaking you can feel what [he of M] has detected - you've lost control of your bowels and have started to mess yourself!";
			compute messing;
		otherwise if the urine-soak of D + the water-soak of D > the soak-limit of D / 9 or D is messed:
			say "[speech style of M]'Oopsie, It seems like my little baby has [if D is messed][one of]messed their nappy[or]filled their nappy again[stopping][otherwise]had a big accident[end if]! [if D is messed]You definitely need a change now though, you stinky minx[otherwise]Thank goodness your cute little bottom was diapered[end if]. I'm so proud of you for coming [if times-met of M > 0]back [end if]to me [one of]for a diaper change[or]again[stopping]!'[roman type] [one of][if the player is upset about sitting in mess]You are relieved that you're going to be rescued from your gross situation.[otherwise if the diaper addiction of the player < 11]You feel a small amount of embarrassment at having to be changed by this slutty MILF.[otherwise if the diaper addiction of the player > 15 and the player is able to speak][line break][second custom style]'*giggle* I love the squishy sound your hand makes against my diaper!'[roman type][line break][end if][or][if the humiliation of the player < 10000]You fret about what [he of M]'ll think when [he of M] sees your [player-crotch].[otherwise if the diaper addiction of the player > 6]You figure that a diaper change will be good for you, at least.[otherwise if the anal sex addiction of the player < 9] You're eager to have your [player-crotch] exposed to [NameDesc of M] when [he of M] removes your diaper.[otherwise]You get a little excited hoping that [he of M]'ll play with your [asshole] while [he of M] changes your diaper.[end if][in random order]";
			now M is diaper-committed;
			if D is perceived unsoiled, compute state check of D;
 		otherwise if D is not total protection:
 			say "[speech style of M]'Oh my, this diaper is ripped! That's no good, you're going to need a new one straight away!'[roman type][line break]";
			now M is diaper-committed;
		otherwise:
			if the urine-soak of D + the water-soak of D > 0, say "[speech style of M]'[one of]Ooh, you've used your nappy a little, like a good girl! But it's fine, you don't need a change yet.'[or]Oh, you're just a little wet. [if M is unfriendly]You don't need a change yet, so what else can we do?'[otherwise]Run along and have fun, now!'[end if][or]Awww, sweetie you went potty in your pants. Such a good baby!'[in random order][roman type][line break]";
			otherwise say "[speech style of M]'Hmm, seems like you've managed to stay dry for now. Well done my little darling!'[roman type][line break]";
			FavourUp M by 1;
			if M is unfriendly:
				say "[BigNameDesc of M] considers [his of M] options, [his of M] jutting [ChestDesc of M] inches away from your face. [big his of M] [if lactation fetish is 1]full, engorged [end if]nipples [if the oral sex addiction of the player > 7]protruding from [his of M] shiny latex dress causes your mind to think of the feeling of your tongue running along a sweet delicious cock. [otherwise]protrude from [his of M] shiny latex dress. [end if][line break][speech style of M]'Hmm, you don't need a change yet, but I think a naughty minx like you needs [if diaper quest is 0]feeding again, to make sure you're getting your nutrients[otherwise]some sort of discipline to keep you in line[end if]. [if the player is upright]Get on your knees, baby!'[otherwise]Come here...'[end if][roman type][line break]";
				if diaper quest is 0, say "[variable custom style][one of][if the diaper addiction of the player < 6]Oh my god! This [man of M] is trying to force me to use my diaper![otherwise][line break][second custom style]*Giggle* If [he of M] feeds me I'll get to use my diaper! Yay![end if][or][if the humiliation of the player < 25000]I can't let [him of M] do this to me! I can feed myself.[otherwise if the semen taste addiction of the player > 15]I hope [he of M] feeds me with a delicious cream pie from [his of M] [HoleDesc of M].[otherwise if the delicateness of the player > 10]At least if [he of M] feeds me I won't be hungry. [otherwise if the sex addiction of the player < 4 and the player is male]Maybe [he of M]'ll have me eat some food off [his of M] hot body. [otherwise if lactation fetish is 1 and the milk taste addiction of the player > 6]I hope [he of M] feeds me by letting me suckle [his of M] nipples.[otherwise if the sex addiction of the player < 11]This is just outrageous, I'm being treated like some kind of powerless baby![otherwise]I'm letting [him of M] treat me like a baby, how deliciously degrading![end if][in random order][roman type][line break]";
	otherwise if M is unfriendly or M is motherly:
 		say "[speech style of M]'[one of][if M is motherly]Didn't I tell you it's important for you to stay in diapers? [otherwise]It's important for babies like you to stay in diapers. [end if][if the player is prone]Stay on your knees[otherwise]Get on your knees[end if] and I'll fix that for you...'[or]How many times am I going to catch you out of nappies? You're getting put in my naughty book for sure this time.'[or]Come on you naughty girl! Time for your diaper.'[stopping][roman type][line break]";
 		now M is diaper-committed;
 		FavourDown M by 4;
	otherwise if the player is incontinent:
		say "[speech style of M]'Oh dear, are you wetting yourself lots without wearing a diaper? That's no good! Here, let me help you out...'[roman type][line break]";
		now M is diaper-committed;
	otherwise if M is objectifying the player:
		say "[speech style of M]'[one of]Hmm, you are pretty far gone, aren't you darling? I think you need a bit of caring for, don't you hun? [if the player is prone]Stay on your knees[otherwise]Get on your knees[end if] and I'll show you how I can help you.'[or]You definitely need my help again, don't you darling?'[stopping][roman type][line break]";
		now M is diaper-committed;
	if continued urination is 1 and the player is upright:
		say "[if the humiliation of the player < 18000]The sheer humiliation of the situation[otherwise if the delicateness of the player < 10]Something about the way [he of M] is gripping your private parts[otherwise]Something deep inside of you feels comforted and[end if] makes your knees buckle. You fall to the ground in front of [NameDesc of M].";
		try kneeling.

Part 3 - Motion

To compute monstermotion of (M - matron):
	if M is unfriendly and the boredom of M <= 0: [The matron goes looking for the player after a while, if she is unfriendly.]
		now neighbour finder is the location of M;
		let A be a random N-viable direction;
		let P be the room A from the location of M;
		if A is a random N-viable direction and P is not Dungeon12:
			try M going A;
			compute monstermotion reactions of M;
		otherwise if A is a random N-viable direction and P is not Dungeon12:
			try M going A;
			compute monstermotion reactions of M;
	otherwise if M is not in Hotel22 and M is not in the location of the player:
		now M is in Hotel22.

To compute (M - matron) seeking (D - a direction): [The matron only follows the player if unfriendly]
	if M is unfriendly, try M going D;
	compute monstermotion reactions of M.

Part 4 - Combat

The matron priority attack rules is a rulebook.

Definition: matron is willing to change diapers: decide yes.
Definition: matron is willing to donate diapers if it is not motherly. [If the player should have been in diapers already, they get a proper punishment.]

Definition: matron is willing to spank: decide yes.

Definition: matron is willing to masturbate: decide yes.

Definition: matron is willing to deliver enemas: decide yes.

Definition: matron is willing to forcefeed: decide yes.

Definition: matron is willing to confiscate: decide yes.
Definition: matron is able to confiscate: decide yes.


This is the matron waits for players to finish peeing rule:
	if continued urination is 1, rule succeeds.
The matron waits for players to finish peeing rule is listed in the matron priority attack rules.

The priority attack rules of matron is usually the matron priority attack rules.

The monster fucked taunting rule of matron is usually the matron gets bored rule.
This is the matron gets bored rule:
	say "[speech style of current-monster]'I can see you're busy. I'll come back soon!'[roman type][line break]";
	distract current-monster;
	rule succeeds.

The unique punishment rule of matron is usually the matron acts like a nanny rule.

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

To say DragArrival of (M - matron) to (R - Hotel22):
	if M is normally acquaintance, say "[speech style of M]'[one of]Here we go into the nursery, back where you belong. And don't you dare try to run off again!'[or]You're not big enough to run off on your own, baby. Let's stay in the nursery.'[cycling][roman type][line break]";
	otherwise say "[one of][or][or][line break][speech style of M]'[if there is a worn diaper]I should put you in a double diaper, that would keep you out of trouble.'[otherwise]You deserve a royal spanking, young miss!'[end if][roman type][line break][or][line break][speech style of M]'Crawl faster!'[roman type][line break][in random order]".

Definition: matron (called M) is eager to change diapers:
	if M is feeding the player or M is spanking the player, decide no;
	if M is changing the player, decide yes;
	if M is diaper-committed, decide yes; [this means the matron has decided the player needs a diaper right now.]
	if there is worn messed knickers and diaper messing is 3 and diaperSceneHandled is 0, decide yes;
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
			say "[speech style of M]'[one of]Oh wow, it looks like this special diaper can clean itself! How impressive. [or]Oh, I see you're still wearing you super special waddle diaper! [stopping]I guess you don't need changing after all.'[roman type][line break]";
			bore M for 450 seconds;
			FavourUp M;
			TimesSubmittedUp M by 1;
			rule succeeds;
		otherwise:
			compute diaper change of M;
			rule succeeds.
The matron changes a diaper rule is listed last in the matron nanny rules.

Definition: matron (called M) is diaper change chastity cummies rewarding:
	if M is diaper change cummies rewarding and the number of things penetrating asshole is 0, decide yes;
	decide no.

To compute diaper change chastity cummies reward of (M - matron):
	if the player is presenting as male, say "[speech style of M]'[one of]Oh you poor thing, are you struggling to get your cummies while locked into that thing? Don't worry dear, I'll help you have your squirt squirt like a good sissy girl.'[or]Time for your girly squirt squirt, for being such a good sissy!'[stopping][roman type] [BigNameDesc of M] sticks [if the openness of asshole < 4]her index finger[otherwise if the openness of asshole < 9]two fingers[otherwise]four fingers[end if] into your [ShortDesc of asshole] and carefully fingers you, deliberately putting pressure on your prostate. ";
	otherwise say "[speech style of M]'[one of]I be you're being starved of your cummies locked away behind that thing, aren't you? Well don't worry, I know just the trick, there's another hole we can use...'[or]Time for your anal squirt squirt, for being such a good baby!'[stopping][roman type] [BigNameDesc of M] sticks [if the openness of asshole < 4]her index finger[otherwise if the openness of asshole < 9]two fingers[otherwise]four fingers[end if] into your [ShortDesc of asshole] and carefully fingers you, deliberately putting pressure on your G-spot. ";
	say "[big his of M] professional skill is evident, as you very quickly feel a certain warmth rising...";
	now M is penetrating asshole;
	anally orgasm shamefully;
	diaperaddictup 1;
	say "[BigNameDesc of M] pulls out slowly and gently. [line break][speech style of M]'If you keep being a good locked up [if the player is presenting as male]sissy[otherwise]baby[end if] for Nanny, you'll get more where that came from.'[roman type][line break]";
	now M is not penetrating asshole;
	FavourDown M by 2.

To say DiaperPowderFlav of (M - matron):
	say "[BigNameDesc of M] pulls out a bottle of baby power and squeezes it liberally over your crotch area, completely coating it and forming a huge white cloud of powder. ".

To say DiaperChangeFlav of (M - matron):
	say "From [DiaperSpace of M] [he of M] produces [if current-diaper is new-diaper]an identical (but clean) [new-diaper][otherwise]a [new-diaper][end if], which [he of M] slides underneath your bum[one of] and then fixes in place[or], folds it over and tapes it up[at random]. [if current-diaper is diaper][big he of M] chucks the old one into the diaper pail and you hear a little 'whoosh' as it is whisked away by some hidden mechanism.[end if][line break][speech style of M]'There now, [one of]isn't that much better? [or]You DO belong in them, oh yesh we do, oh yesh we do! [in random order]Off you trot now[one of]. But you'd better make sure that I never see you without a nappy on - you're my baby now, and you'll be kept in diapies for as long as I'm around!'[or]!'[stopping][roman type][line break][big he of M] releases you from the bondage and carries you back down onto the ground.".

To say DiaperSpace of (M - matron):
	say "underneath the table".

To say DiaperChangeStart of (M - matron):
	let D be a random worn messed diaper;
	say "[BigNameDesc of M], with seemingly little physical exertion, picks you up and plops you down on the giant changing table. [big he of M] smoothly and efficiently binds your wrists and ankles tightly with the inbuilt straps[if D is diaper]. [big he of M] runs [his of M] hand along [NameDesc of D] and clicks [his of M] tongue.[line break][speech style of M]'Uh oh, we really had to go didn't we? Stinky little baby waby yesh we are!'[line break][roman type][otherwise].[end if]".

To say DiaperDropFlav of (M - matron):
	say "[big he of M] leaves the used diaper on the ground next to you.[line break][speech style of M]'Here you go, you can keep this as a lovely souvenir if you like!'[roman type][line break]";

To say DQChangeResistReactionFlav of (M - matron):
	say "[BigNameDesc of M] tuts.[line break][speech style of M]'[one of]You can kick and fuss if you must but it won't do you a bit of good. You are getting a diaper change, like it or not!'[or]Now young [if the player is presenting as female]lady[otherwise]man[end if] I don't take kindly to little ones who throw fits! Hold still for mommy or I'll make you wish I stopped at one diaper!'[or]OH, we've got some energy now do we? Well I can correct that AFTER, okay sweetie?'[in random order][roman type][line break]".


To compute unique diaper change effect of (M - matron):
	[increase the times-changed of M by 1;
		if the times-changed of M > 2 and (M is guardian or M is ally) and the player is incontinent and the potty-training of M is 0:
			if the potty-training-asked of M is 0:
				say "[speech style of M]'You've been such a good little [if the player is presenting as female]baby girl[otherwise]sissy baby[end if] for me, how would you like to try being potty trained?' [roman type]";
				if the player is consenting and the diaper addiction of the player < 17:
					say "[speech style of M]'Wonderful!'[roman type][line break]The matron pulls out a potty training chart, writing '[if the player is presenting as male]Sissy[end if] Princess Pottypants ([NameBimbo])' in the name section before pinning it to the wall. [line break][speech style of M]'You know, you're the only pathetic diaper [if diaper messing >= 3]messing [otherwise]wetting [end if][if the player is presenting as male]sissy [otherwise]girl [end if]who has been good enough to earn this!'[roman type] [big he of M] adds with a smile, before pulling out a giant, pink, plastic training potty, placing it below the chart.[line break][speech style of M]'Now, here are the rules. If you manage to use the potty 5 times in a row without having any accidents, you'll earn your way to training pants. If you manage to use the potty 10 times in a row without accidents after earning training pants, you'll get to wear big girl panties! However, if you have 10 accidents in a row after earning training pants, or 20 total, you'll be demoted back to diapers. Similarly, if you have 5 accidents in a row after earning big girl panties, or 10 total, you'll be demoted back to training pants. [if diaper messing >= 3]Messy accidents count as 2 for demotions. [end if]Good luck baby!'[roman type][line break]";
					now the potty-training of M is 1;
					now the potty-training-asked of M is 1;
				otherwise if the player is consenting:
					say "Even though your brain says yes, your diaper loving heart screams 'NO'! You instinctively yell [line break][second custom style]'No potty no potty!'[roman type][line break]over and over, jumping up and down, just like a child throwing a tantrum. The matron smiles, patting your fresh diaper. [line break][speech style of M]'Don't worry, don't worry, I understand baby. You can wet [if diaper messing >= 3]and mess [end if]your diapers as much as you like.[roman type][line break]";
					now the potty-training-asked of M is 1;
				otherwise:
					say "[speech style of M]'Really? Well that's okay, if you want to keep wetting [if diaper messing >= 3]and messing [end if]your diapers, I'll always be here to change them for you.'[roman type][line break]";
					now the potty-training-asked of M is 1;
				otherwise if the potty-training-asked of M is 1:
					say "[speech style of M]'My offer to start potty training you still stands, baby.'[roman type][line break]Do you accept [his of M] offer? ";
					if the player is bimbo consenting:
						if the diaper addiction of the player < 17:
							say "[speech style of M]'Wonderful!'[roman type][line break]The matron pulls out a potty training chart, writing '[if the player is presenting as male]Sissy[end if] Princess Pottypants ([NameBimbo])' in the name section before pinning it to the wall. [line break][speech style of M]'You know, you're the only pathetic diaper [if diaper messing >= 3]messing [otherwise]wetting [end if][if the player is presenting as male]sissy [otherwise]girl [end if]who has been good enough to earn this!'[roman type] [big he of M] adds with a smile, before pulling out a giant, pink, plastic training potty, placing it below the chart.[line break][speech style of M]'Now, here are the rules. If you manage to use the potty 5 times in a row without having any accidents, you'll earn your way to training pants. If you manage to use the potty 10 times in a row without accidents after earning training pants, you'll get to wear big girl panties! However, if you have 10 accidents in a row after earning training pants, or 20 total, you'll be demoted back to diapers. Similarly, if you have 5 accidents in a row after earning big girl panties, or 10 total, you'll be demoted back to training pants. [if diaper messing >= 3]Messy accidents count as 2 for demotions. [end if]Good luck baby!'[roman type][line break]";
							now the potty-training of M is 1;
							now the potty-training-asked of M is 1;
						otherwise:
							say "Even though your brain says yes, your diaper loving heart screams 'NO'! You instinctively yell [line break][second custom style]'No potty no potty!'[roman type][line break]over and over, jumping up and down, just like a child throwing a tantrum. The matron smiles, patting your fresh diaper. [line break][speech style of M]'Don't worry, don't worry, I understand baby. You can wet [if diaper messing >= 3]and mess [end if]your diapers as much as you like.[roman type][line break]";
							now the potty-training-asked of M is 1;
					otherwise:
						say "[speech style of M]'Really? Well that's okay, if you want to keep wetting [if diaper messing >= 3]and messing [end if]your diapers, I'll always be here to change them for you.'[roman type][line break]";
						now the potty-training-asked of M is 1;]
	[say "[speech style of M]I have changed you [times-changed of M] times[roman type][line break]";][For testing purposes]
	now M is not diaper-committed.

This is the matron confiscates grown up items rule:
	compute confiscate of current-monster;
	rule succeeds.

The matron confiscates grown up items rule is listed last in the matron nanny rules.

To compute confiscate of (M - matron):
	let H be a random off-stage victorian-baby-bonnet;
	let N be the number of held vessels;
	if baby's bottle is held, decrease N by 1;
	let C be a random worn necklace;
	if M is motherly and N > 0 and a random number between 1 and 4 is 1:
		while N > 0:
			let V be a random held vessel;
			while V is baby's bottle:
				now V is a random held vessel;
			say "[BigNameDesc of M] takes away your [ShortDesc of V]!";
			decrease N by 1;
			now V is in Holding Pen;
			now V is retained by M;
			FavourDown M;
		if baby's bottle is not held:
			now baby's bottle is held by the player;
			now baby's bottle is bland;
			now the fill-colour of baby's bottle is white;
			DoseFill baby's bottle;
			say "[big he of M] forces a baby's bottle full of milk into your hand! ";
		say "[speech style of M]'Babies only need their bottles, I don't want to see you using these big girl cups any more, okay sweetie?'[roman type][line break]";
		satisfy M;
	otherwise if M is motherly and C is necklace and a random number between 1 and 3 is 1 and the favour of M < 13:
		say "[BigNameDesc of M] notices your [ShortDesc of C]![line break][speech style of M]'Where did you get this, baby?! This is my jewellery! Bad [if the player is presenting as male]sissy[otherwise]girl[end if], this isn't yours to play with! It's precious and delicate. I'll be taking it back now.'[roman type][line break][big he of M] pulls it off from your neck!";
		now C is in Holding Pen;
		now C is retained by M;
		say "[variable custom style][if the player is able to speak]'Sorry I didn't know it was yours! You have to believe me!'[otherwise]How was I to know it was [hers of M]?! I can't even explain the mix-up...[end if][roman type][line break]";
		FavourDown M;
		satisfy M;
	otherwise if H is actually summonable:
		summon H cursed;
		say "[BigNameDesc of M] strokes your [ShortHairDesc]. [line break][speech style of M]'I've decided to make you my personal baby! We're going to have such fun together!'[roman type][line break][big he of M] puts a [H] on your head! [if the diaper addiction of the player < 10][line break][variable custom style]Do I not get a say in this?[otherwise if the diaper addiction of the player < 15][variable custom style]Well this might take some getting used to![otherwise]Yay! I want to stay with Nanny forever![end if][roman type][line break]";
		satisfy M;
	otherwise:
		compute enema of M.


This is the matron feeds the player rule:
	[if there is a worn diaper and (face is not actually occupied or the player is gagged):]
	now the feedingtone of current-monster is 0; [just in case]
	compute forcefeed of current-monster;
	now the feedingtone of current-monster is 0; [just in case]
	rule succeeds.
The matron feeds the player rule is listed last in the matron nanny rules.


To say ForcefeedDeclarationFlav of (M - matron):
	if the feedingtone of M is 2: [If this is a friendly requested feeding]
		say "[speech style of M]'Is baby ready for [his of the player] dindins? '[roman type][line break]";
	otherwise if the feedingtone of M is 1: [If this is an unfriendly requested feeding]
		say "[speech style of M]'Of course, honey! I have just the thing for naughty little minxes like you...'[roman type][line break]";
	otherwise if the feedingtone of M is 3: [if this is an unfriendly requested drink]
		say "Is my naughty baby thirsty? I have a sippy cup with your name on it...";
	otherwise if the health of M < the maxhealth of M: [is there a way to have this happen ONLY if the feeding is a direct result of combat?]
		say "[line break][speech style of M]'Let me show you what happens to naughty babies who fight back!'[roman type][line break]";
	otherwise: [if this is a forced feeding]
		say "[line break][speech style of M]'I think it's a certain naughty baby's dinner time...'[roman type][line break]".

To say ForcefeedStartFlav of (M - matron):
	say "[BigNameDesc of M], with seemingly little physical exertion, picks you up and plops you down on the giant high chair. [big he of M] pulls the tray into place in front of you and locks it shut, preventing you from escaping. [if the number of worn bibs is 0][big he of M] gets a large pink bib with an image of a cartoon animal on it, and fastens it around your neck. [end if][line break][speech style of M]'Time for your dindins!'[roman type][line break]".

To decide which number is the forcefeed-length of (M - matron):
	decide on 4.

To compute forcefeed round (N - 4) of (M - matron):
	say "[BigNameDesc of M] holds your nose closed to force you to open your mouth, and shoves in a heaped spoonful of mushy peas. [line break][speech style of M]'These will help you grow big and healthy.'[roman type][line break]You are forced to swallow just to keep breathing, and before you can protest [he of M] has a second, and then a third, and then a fourth spoonful ready to force in. The outside of your lips are covered in green thanks to [his of M] rather indiscriminate aim.[line break][variable custom style]'*Splutter* [if the bimbo of the player < 12]I am not a baby[otherwise]Waaaaah, I can feed myself[end if]!'[roman type][line break]";
	StomachFoodUp 1.

To compute forcefeed round (N - 3) of (M - matron):
	say "Ignoring your protests, [NameDesc of M] starts smushing a soft, warm banana into your mouth, again covering your face just as much as feeding you.[line break][variable custom style]'*Omnom*[roman type] [if the oral sex addiction of the player > 7]Your need for a cock in your mouth causes you to tongue the banana as it slides down your throat. [otherwise if diaper quest is 0]The phallic object hurriedly moves down your throat in large chunks. [otherwise]You are forced to chew it rapidly to avoid having to swallow it whole! [end if][line break][variable custom style]'[if the diaper addiction of the player < 8]Get off me you crazy [man of M]!'[otherwise]I don't need to eat anything!'[end if][roman type][line break]";
	StomachFoodUp 1.

To compute forcefeed round (N - 2) of (M - matron):
	say "Without even responding, [NameDesc of M] has moved onto another bowl, this one full of oatmeal! [line break][speech style of M]'Here comes the airplane!'[roman type][line break]You [line break][variable custom style]'MMPH'[roman type][line break]in protest but it's too late, there's already a full spoon in your mouth! [big he of M] doesn't relent until half the bowl is in your stomach, and the other half is down your bib.";
	StomachFoodUp 1.

To compute forcefeed round (N - 1) of (M - matron):
	say "[speech style of M]'Come on you messy baby, time for your sippy cup.'[roman type] Before you can react, a toddler's drinking cup is shoved into your mouth, and you are sipping down a mystery liquid that tastes a lot like fruit juice, but a bit more sour. [if incontinence < 5]Your stomach feels a little off...[otherwise if the diaper addiction of the player > 12]For a moment you almost forget you're not just a big baby.[otherwise]You feel the liquid enter your belly, and your bladder relax.[end if][line break]";
	let B be a random off-stage bib;
	if B is bib and the player is an adult baby:
		summon B cursed;
		say "[speech style of M]'Ooh, that bib just looks so perfect on you, I think I'll have to let you keep it!'[roman type][line break][BigNameDesc of M] leaves the bib on. [if the strength-influence of B > 0]You can feel it making you a bit stronger! [end if]";
		compute summoned quest of B;
	otherwise if the number of worn bibs is 0:
		say "[BigNameDesc of M] removes your bib, and then wipes away the mess around your mouth with it.";
	StomachUp 2;
	increase incontinence by 1;
	if rectum is 0 and diaper lover > 2, now rectum is 1; [The matron has started an unmentionable process]

To say ForcefeedAftermath of (M - matron):
	say "[big he of M] lets you down from your chair, done with you. For now.".

To say ForcefeedAfterFlav of (M - matron):
	say "".

To say SpankingStartFlav of (M - matron):
	say "[BigNameDesc of M][one of] pinches at your earlobe, needing little effort to coax you towards a waiting rocking chair. Sitting firmly [himself of M] before pulling you off your balance and across [his of M] lap[or], with seemingly little physical exertion, picks you up and throws you over [his of M] shoulder, holding you in a fireman's grip[cycling].[line break][speech style of M]'I'm going to give you [if the sex-length of M > 2]a spanking you'll never forget, you demon child!'[otherwise][one of]a[or]another[stopping] quick maintenance spanking so that you remember who's in charge here.'[end if][roman type][line break]".

To say SpankingFlav of (M - matron):
	say "[if there is worn knickers][BigNameDesc of M]'s outstretched hand comes down [one of]hard and fast[or]hard like a sledgehammer[or]as fast as a whip[at random] onto your [AssDesc][otherwise]With little time between actions the Matron sends an open palm to your rear end[one of], spanking in a constant motion over one cheek and then onto the other[or]. Your cries of anguish only serves as instentive to prolong the spanking even further[at random][end if]!".

To say SpankingDeclarationFlav of (M - matron):
	say "[BigNameDesc of M], with seemingly little physical exertion, picks you up and throws you over [his of M] shoulder, holding you in a fireman's grip. [line break][speech style of M]'I'm going to give you [if the sex-length of M > 2]a spanking you'll never forget, you demon child!'[otherwise][one of]a[or]another[stopping] quick maintenance spanking so that you remember who's in charge here.'[end if][roman type][line break]".

To say SpankingCommentFlav of (M - matron):
	say "[first custom style]'[one of]Take this!'[or]You should be thanking me for this lesson!'[or]Don't whinge, you deserve this.'[or]It's okay if you cry, you are only little after all.'[or]I'm not going to stop until your cute bottom is nice and red all over.'[or]You really are a brat, you know that?'[at random][roman type][line break]".

To say SpankingAfterFlav of (M - matron):
	say "[BigNameDesc of M] puts you back down on the ground. [line break][speech style of M]'Now run along little one, but be on your best behaviour, understand?'[roman type][line break][BigNameDesc of M] visibly loses interest in you.".

To say DQSpankResistReactionFlav of (M - matron):
	say "[BigNameDesc of M] tuts.[line break][speech style of M]'[one of]Oh? We have a diaper butt who thinks it's playtime?'[or]Clearly we'll need corner time after this. I've never seen a baby who can fuss after so few bottom whaps!'[or]I think someone needs another nappy wappy if we can't hold still!'[or]Poor thing, so distraught from having your diapey pulled off!'[in random order][roman type][line break]".

To compute (M - a matron) spank displacing (C - knickers):
	say "[big he of M] takes deliberate slowness to inch your [ShortDesc of C] off your waist until it's bunched up around your ankles, the slow pacing of it designed to make you reflect on your imminent punishment.";
	displace C.



To say DQMasturbationResistReactionFlav of (M - matron):
	say "[BigNameDesc of M] sighs.[line break][speech style of M]'[one of]Oh yes I know it's ticklish honey, but just let it happen, I'll let you nurse afterwards!'[or]I'm doing this for your own good. Do you WANT the others to [']play['] with you instead? I'm starting to think you do!'[or]Sweetuns you're on a changing table already. Are you that ashamed to cream? Do diaper changes embarrass you still? Well, you do get them more than others...'[or]Poor thing, so distraught from having your diapey pulled off!'[in random order][roman type][line break]".

To say MasturbationStartFlav of (M - matron):
	say "[BigNameDesc of M] tsks as [he of M] hoists you up by your armpits.[line break][speech style of M]'Coming to mommy with such lust in your eyes, I can't have you playing with the others like this!'[roman type][line break]Before asking for your input, [he of M] whisks you off to the changing table and lays you back on it. After bounding your wrists and ankles with tight pink fur covered cuffs, [he of M] begins to shuffle through an unfamiliar cabinet opposite the table.[line break][speech style of M]'We'll get you nice and tuckered out sweetie, don't you worry!'[roman type][line break][big he of M] purrs before producing a large vibrating wand, one even bigger than ones you are familiar with.[line break][speech style of M]'Just know there's no shame in making creamy accidents, my changing table is no stranger to all matter of wetness.'[roman type][line break]Before you can utter a syllable[if the player is not feeling submissive] of defiance[end if], the wand presses into the thick folds of your diaper and sends a sharp shock of pleasure that echoes throughout your [genitals] and them your body! Loud hums deafen your squeals as the wand travels all sections of your diaper region... from your [genitals] all the way to your [asshole]!".



Check going when matron is in the location of the player:
	if matron is interested and matron is friendly:
		deinterest matron. [This way the matron should always be ready to check your diaper.]

Section 1 - Damage

To compute damage of (M - matron):
	if the health of M > 0:
		if M is uninterested:
			say "[big he of M] shrieks with shock. [line break][speech style of M]'[one of]How dare you!'[or]Do you never learn?!'[cycling][roman type][line break]";
			now M is interested;
			anger M;
		otherwise:
			if M is friendly:
				say "[big he of M] shrieks with shock. [line break][speech style of M]'[one of]How dare you!'[or]Do you never learn?!'[cycling][roman type][line break]";
				anger M;
			otherwise:
				say DamageReaction (the health of M) of M;
	otherwise:
		compute death of M.

To say DamageReactHealthy of (M - matron):
	say "[one of]'[line break][speech style of M]You definitely deserve a punishment, you naughty harlot, you... Grr!'[roman type][line break][or][big he of M] sneers aggressively![stopping]".

To say DamageReactDamaged of (M - matron):
	say "[big he of M] snarls angrily, taking the hit!".

To say DamageReactTired of (M - matron):
	say "[big he of M] seems to get angrier with every hit!".

To say DamageReactWeak of (M - matron):
	say "[big he of M] keeps [his of M] eyes trained on you, never wavering as [he of M] fights to maintain [his of M] balance.".

To compute unique death of (M - matron):
	say "The [noun] screams as [he of M] falls to the floor. ";
	let B be a random off-stage baby's bottle;
	if B is a thing:
		now B is blessed;
		now B is in the location of the player;
		say "[big his of M] body disappears, leaving behind a [printed name of B].";
		compute autotaking B;
	otherwise:
		say "[big his of M] body disappears.".

Chapter 2 Conversation

To IdentifiablePosterReaction of (M - matron):
	say "[BigNameDesc of M] looks at you, blinks, then looks back to the poster. Upon realising that it is you, [he of M] starts laughing uncontrollably.";
	say "You turn bright red with shame.";
	humiliate the lewdness of a random poster in the location of the player * 2.

To UnidentifiablePosterReaction of (M - matron):
	say "[speech style of M]'Now that's is one naughty minx in need of discipline.'[roman type][line break]";
	say "You turn slightly red but don't say a word.";
	humiliate the lewdness of a random poster in the location of the player / 2.

Section 1 Greeting

[Lots written by MG]

To say FirstResponse of (M - matron):
	say "[speech style of M]'Hey there, cutie.'[roman type][line break]".

To say RepeatResponse of (M - matron):
	say "[speech style of M]'[one of]Hi again, sweetie.[or]Hello again, cutie pie.'[or]If it isn[']t my favourite little girl! Hi!'[at random][roman type][line break]".

To say PleadRejected of (M - matron):
	say "[speech style of M]'[one of]Little girls shouldn[']t talk to grown ups without permission!.[or]Aa-aa-aah~! Good little girls speak only when spoken to.[or]Hush. I[']ll tell you when it's all right to talk.[or]Hush now, I wouldn[']t want you to embarrass yourself trying to say some big word!'[or]It's bad manners to speak out of turn, honey.'[or]Where on earth are your manners? Good little girls don[']t speak to grown-ups without permission!'[at random][roman type][line break]".

To say royal-subject of (M - matron):
	say "caretaker".

To say big royal-subject of (M - matron):
	say "Caretaker".

To say RepeatGreeting to (M - matron):
	if the class of the player is princess:
		say "You compulsively straighten your back as your words come out in a measured tone.[line break][first custom style]'[one of]Hello, [royal-subject of M].'[or]Good morning, [royal-subject of M].'[at random][roman type][line break]";
		slightDignify;
	otherwise if the player is feeling submissive and the times-submitted of M > 0:
		if the intelligence of the player < 6:
			say "[second custom style]'[one of]Nanna!'[or]Nanny!'[or]Nanna! Nanna!'[or]Nan-nan!'[at random][roman type][line break]";
		otherwise:[The player is more like an "adult baby" here.]
			say "[second custom style]'[one of]Nanna. Are there any men around here? I[']m so hungry.'[or]Nanna! [if the player is horny]I'm soooo horny. Set me up on a play-date or something.[otherwise]Are you taking care of any cute guys? I[']d love a play-date.[end if]'[or]Hey Nanna. You look SO good! I want to be hot like you when I grow up!'[at random][roman type][line break]";
	otherwise:
		say DefaultGreeting to M;
	say RepeatResponse of M.

To say TauntRejected of (M - matron):
	say "[speech style of M]'[one of]Don[']t you dare speak to me that way!'[or]Don[']t speak to me in that tone of voice!'[or]Grown ups know best, sweetie.'[or]You[']re lucky. I usually clean potty mouths with a bar of soap.'[or]Don[']t be a potty mouth, sweetie.'[or]Hmmph. I do not like that language, young lady.'[or]It sounds like you need a spanking.'[at random][roman type][line break][BigNameDesc of M] looks even more determined to subdue you.";

To say FriendlyPartnerGreeting to (M - matron):
	if the player is a pervert:
		let F be a random fuckhole penetrated by M;
		if the player is feeling submissive:[player is a masochist]
			say "[second custom style]'[one of]Hee hee!'[or]This is fun!'[at random][roman type][line break]";
		otherwise:
			say "[second custom style]'[one of]I'm being good, aren't I?'[or]Am I a good girl?'[at random][roman type]";
		say EnthusiasmResponse of M;
	otherwise:
		if the player is feeling dominant:
			if the player is male, say "[first custom style]'Don[']t tell anybody about this!'[roman type]";
			otherwise say "[first custom style]'Just so you know, this is a one time thing.'[roman type]";
		otherwise:
			say "[variable custom style]'[one of]This is just a one-time thing... unless I get really hungry, or something.'[or]And remember, you can't tell ANYONE about this...'[at random][roman type]";
		say NonEnthusiasmResponse of M.

To say SubmissiveResponse of (M - matron):
	say "[speech style of M]'[one of]Hey there snookums. Are you hungry?'[or]Hi there! You sound hungry!'[or]Hi there cutie patootie!'[at random][roman type][line break]".

To say UnAnnoyedResponse of (M - matron):
	say "[speech style of M]'You're being so good!'[roman type]";

To say MildAnnoyedResponse of (M - matron):
	say "[speech style of M]'[one of]That's enough, snookums!'[or]Ok, that's enough now!'[at random][roman type][line break]".

To say AnnoyedResponse of (M - matron):
	say "[speech style of M]'[one of]That's ENOUGH!'[or]I'm warning you, I am running out of patience!'[at random][roman type][line break]".

To say InvitationRejected of (M - matron) with (N - a monster):
	say "[speech style of M]'[one of]What [if N is robobutler]the butler does to you is his[otherwise if N is neuter]this cute little thing does to you is its[otherwise if N is male]this man does to you is his[otherwise]this woman does to you is [him of M][end if] business. I better not catch you trying to weasel out of a punishment again.'[or]You like getting punished, don[']t you. Such a naughty girl...'[or]Enjoying your punishment? That[']s very naughty...'[or]Don[']t say those naughty things to me! That's probably the reason [if N is robobutler]the butler[otherwise if N is neuter]this thing[otherwise if N is male]this man[otherwise]this woman[end if] is punishing you in the first place!'[at random][roman type][line break]".

To say AssistanceRejected of (M - matron) with (N - a monster):
	say "[speech style of M]'[one of][if N is robobutler]The butler[otherwise if N is neuter]This thing[otherwise if N is male]This man[otherwise]This woman[end if] would not be punishing you without a good reason. This is what happens when you misbehave.'[or]It's time to be a little independent, sweetie. Take your punishment like a good little girl.'[or]You are obviously being punished for something. I know it's hard, honey, but I[']m afraid you are responsible for your own actions.'[or]It's time you learned responsibility. Be a good girl and accept your punishment.'[or]I[']m not going to take your punishment for you, honey!'[at random][roman type][line break]".

Section 2 Questioning

To say WhereAnswer of (M - matron):
	say "[speech style of M]'[one of]You[']re in the nursery of this hotel, made especially for big babies who can[']t be trusted to look after themselves!'[or]Don[']t you remember, honey? We[']re in the nursery, it's where I take care of big babies.[or]Sweetie, I know you[']re curious, but I already answered that question for you twice.[stopping][roman type][line break]".

To say WhoAnswer of (M - matron):
	say "[speech style of M]'I'm a professional nanny dom, who's very experienced in taking care of any big babies who need my help!'[roman type][line break]".

To say StoryAnswer of (M - matron):
	say "[speech style of M]'[one of]When I heard they were building this fetish hotel, I just had to get involved! I was the one who convinced them to set up this room to take care of all the adult babies we would inevitably get coming through here.'[or]I[']m the head manager of the Nintendolls R&D team. After spending a lot of time in this game, some of the researchers end up in a state where they can[']t take care of themselves at all! I[']m not sure what they would do if I weren[']t here to change their diapers...'[or]I told my son he couldn't play naughty games at home until he moved out of the house, so when I saw this game on his desk, I couldn't believe my eyes! I was so mad that I decided to play through the game and beat it before he got the chance. It's so much fun I just decided not to leave![or]My daughter told me [he of M] was moving out, so I convinced her to play this game with me as a going away present. Now I[']m changing her diapers again. We[']re closer than ever!'[as decreasingly likely outcomes][line break]".

To say EscapeAnswer of (M - matron):
	say "[speech style of M]'You can leave via the front entrance of the hotel whenever you want. Just make sure to pay your bill before you leave.'[roman type][line break]".

To say AdviceAnswer of (M - matron):
	say "[speech style of M]'[one of]That butler is here to serve you, but he can be a little forceful. If you don[']t think you can handle him, make sure your tummy stays full!'[or]If you[']re wearing a diaper, be careful about leaving it on when it gets dirty, sweetie. Take too long and you might forget how you got it on in the first place! I'm always happy to help if that happens, but in case you can[']t find me, you can only remove it with magic.'[at random][roman type][line break]".[figured the butler advice could be a little better, added some more]

To say UnGreeted of (M - a monster):
	say "[BigNameDesc of M] ignores your question.".

[I think it makes sense to have [his of M] be a little more standoffish than everyone else.]
To compute annoyance of (M - matron):
	if M is uninterested:
		say "[BigNameDesc of M] ignores your question.";
	otherwise if M is unfriendly:
		say "[speech style of M]'Quiet now, darling! I'm trying to take care of you here.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'I don't have time to just sit around all day answering your questions. Run along now!'[roman type][line break]".

To compute teaching of (M - matron):
	say "[speech style of M]'If you ever do get assaulted, never underestimate the power of admitting you're just a widdle baby and pleading for mercy. You never know, it might just soften their heart.'[roman type][line break]";
	teach begging for mercy;
	increase the questioned of M by 100. [She gains the same amount of "annoyance" regardless of whether or not she's annoyed already]


Section 3 Drink Requesting

To say DrinkRequest of (M - matron):
	say variable custom style;
	if the delicateness of the player < 3 or (the cringe appearance of the player < 8 and M is not motherly):
		say "Please, do you have anything I could drink?'";
	otherwise if the delicateness of the player < 6:
		say "Excuse me, I am really thirsty, do you have anything I could drink?'";
	otherwise if the delicateness of the player < 9:
		say "Please, do you have anything I could drink from?'";
	otherwise if the delicateness of the player < 12:
		say "I'd do anything for something to drink.'";
	otherwise if the delicateness of the player < 15:
		say "I just really need something to wet my throat...'";
	otherwise:
		say "I just need something to suck on... I'll swallow anything you give me...'"; [modify to be unique variants]
	say "[roman type][line break]".

To compute unfriendly drink of (M - matron):
	if the player is immobile:
		say "[speech style of M]'Ask me when you're not busy!'[roman type][line break]";
	otherwise:
		now the stance of the player is 1;
		now the feedingtone of M is 3;
		compute forcefeed of M;
		now the feedingtone of M is 0.
	[if M is unfriendly: [isn't this redundant? Should unfriendly drink just be the unfriendly feeding, or just a worse drink?]
		say "[speech style of M]'You can have a drink from your sippy cup if and when I decide you deserve it.'[roman type][line break]";
		now the boredom of M is 0;
	otherwise:
		say "[speech style of M]'Not now, darling.'[roman type][line break]".]

To compute friendly drink of (M - matron):
	if the cringe appearance of the player < 8 and M is not motherly: [motherly should be replaced by diaper-disciplining if that is what will be used for matron]
		say "[speech style of M]'Sorry, I only have a special sippy cup designed for big babies. You'll have to find someone else to help you.'[roman type][line break]";
	otherwise: [Should these scenes use forcefeed or have their own dialogue?]
		say "[speech style of M]'Aww, is Mommy's little [if the size of penis > 4]boy[otherwise]girl[end if] thirsty? Let me get you your sippy cup...'[roman type][line break][BigNameDesc of M] grabs a pink toddler sippy cup and hands it to you.";
		if the delicateness of the player < 7 and the thirst of the player < 4:
			say "However, you are not nearly thirsty enough to drink out of something like this. Instead, you throw the cup on the ground, where it tumbles harmlessly.";
			say "[speech style of M]'What do you think you're doing?! Naughty babies like you need to be punished...'[roman type][line break][BigNameDesc of M] becomes angry!";
			FavourDown M by 5;
			now M is diaper-committed;
			anger M;
		otherwise:
			if the delicateness of the player < 10:
				say "As difficult as it is for you to accept it, it's better than nothing. You tentatively start sipping from the cup.";
			otherwise if the delicateness of the player < 14:
				say "You nervously take the cup and start drinking from it.";
			otherwise:
				say "You eagerly accept the cup from your Mommy, and start gulping from the plastic lid. You are so eager to drink it that the milk begins to stream out of your mouth!";
			say "The cup held a sweet, warm, milk. You finish the cup and give it back to [NameDesc of M], and are left with a strange aftertaste...";
			StomachUp 2;
			increase the bladder of the player by 1.


Section 4 Food Requesting

To say FoodRequest of (M - matron):
	say "[variable custom style]";
	if the delicateness of the player < 3 or (the cringe appearance of the player < 8 and M is not motherly):
		say "'Please, do you have anything I could eat?'";
	otherwise if the delicateness of the player < 6:
		say "'Excuse me, I am really hungry, do you have anything I could eat?'";
	otherwise if the delicateness of the player < 9:
		say "'Please, do you have anything I could eat from?'";
	otherwise if the delicateness of the player < 12:
		say "'I'd do anything for something to eat.'";
	otherwise if the delicateness of the player < 15:
		say "'I just really need something to fill my stomach...'";
	otherwise:
		say "'I just need something to put in my mouth... I'll swallow anything you give me...'"; [modify to be unique variants]
	say "[roman type][line break]".


To compute friendly food of (M - matron):
	if the player is immobile:
		say "[speech style of M]'Ask me when you're not busy!'[roman type][line break]";
	otherwise if the cringe appearance of the player < 8 and M is not motherly: [motherly should be replaced by diaper-disciplining if that is what will be used for matron]
		say "[speech style of M]'Sorry sweetie, I only have food for big babies that need to be fed in a high chairs! Someone else around here probably has some age appropriate food for you.'[roman type][line break]";
	otherwise:
		now the stance of the player is 1;
		now the feedingtone of M is 2;
		compute forcefeed of M;
		now the feedingtone of M is 0.

To compute unfriendly food of (M - matron):
	if the player is immobile:
		say "[speech style of M]'Ask me when you're not busy!'[roman type][line break]";
	otherwise:
		now the stance of the player is 1;
		now the feedingtone of M is 1;
		compute forcefeed of M;
		now the feedingtone of M is 0.


Matron ends here.

