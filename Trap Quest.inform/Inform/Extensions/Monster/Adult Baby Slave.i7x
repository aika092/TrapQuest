Adult Baby Slave by Monster begins here.

An adult baby slave is a kind of monster. an adult baby slave is usually intelligent. An adult baby slave has a number called suffocation. an adult baby slave has a number called ToMatron. The favour of adult baby slave is usually 10. An adult baby slave has a number called guard-obedience. The leftover-type of an adult baby slave is usually 123.

Definition: an adult baby slave is willing to do oral: decide yes.

Definition: an adult baby slave is raunchy: decide yes.

Figure of AABS is the file "NPCs/MultiFloor/BabySlave/AABS.png". Figure of BABS is the file "NPCs/MultiFloor/BabySlave/BABS.png".

To decide which figure-name is the monster-image of (M - angelic adult baby slave):
	decide on the Figure of AABS.

To decide which figure-name is the monster-image of (M - bratty adult baby slave):
	decide on the figure of BABS.

To say ShortDesc of (M - an adult baby slave):
	say "adult baby slave".

angelic adult baby slave is an adult baby slave. Understand "angel" as angelic adult baby slave. The text-shortcut of angelic adult baby slave is "abs".
To say MediumDesc of (M - angelic adult baby slave):
	say "angelic adult baby slave".

Definition: An angelic adult baby slave is dungeon dwelling: decide yes.

Definition: An angelic adult baby slave (called M) is first level:
	if diaper lover is 0, decide no;
	decide yes.

bratty adult baby slave is an adult baby slave. Understand "brat" as bratty adult baby slave. The text-shortcut of bratty adult baby slave is "bbs".
To say MediumDesc of (M - bratty adult baby slave):
	say "bratty adult baby slave".

Definition: An bratty adult baby slave is hotel dwelling: decide yes.

Definition: A bratty adult baby slave (called M) is third level:
	if diaper lover is 0, decide no;
	decide yes.

To say MonsterDesc of (M - an adult baby slave):
	if M is angelic adult baby slave:
		say "This woman adorns a thick, sagging adult diaper and white and pink baseball tee with a cartoon monkey on the front. Her light brown hair hangs tied in pigtails with purple ribbons. Her expression is playful but part of you can[']t help but fear that a tantrum is only one wrong move and a moment away.";
	otherwise if M is bratty adult baby slave:
		say "This woman adorns a thick, cloth diaper encased within a pair of babyish plastic panties and a short, ruffled dress emblazoned with images of a cartoon cat. She wears a look that tells you that the slightest provocation could easily set her off, triggering what could be the biggest tantrum of all time.".


To say MonsterComment of (M - an adult baby slave):
	say "[variable custom style][if the bimbo of the player < 5 and the player is male]She'd be really hot if she wasn't dressed like a baby... [otherwise if the bimbo of the player > 12][line break][second custom style]She's so cute! I wish I was that cute! [end if][if the diaper addiction of the player < 3]I wonder what it would take to get her to take her diaper off.[otherwise if the diaper addiction of the player > 14]I want to feel her diaper on my face.[otherwise if the diaper addiction of the player > 10]I bet we could have tons of fun playing together.[otherwise if the diaper addiction of the player > 6]I wonder if she wants to play.[otherwise]Diapers are so gross.[end if][roman type][line break]".

To set up (M - an adult baby slave):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 5;
	now the health of M is the maxhealth of M.

This is the spawn initial dungeon adult baby slave rule:
	if angelic adult baby slave is not in the dungeon and diaper lover >= 1:
		if debugmode > 0, say "Summoning adult baby slave in dungeon.";
		summon angelic adult baby slave in the hotel.
The spawn initial dungeon adult baby slave rule is listed in the setting up dungeon monsters rules.

This is the spawn initial hotel adult baby slave rule:
	if bratty adult baby slave is not in the hotel and diaper lover >= 1:
		if debugmode > 0, say "Summoning adult baby slave in hotel.";
		summon bratty adult baby slave in the hotel.
The spawn initial hotel adult baby slave rule is listed in the setting up hotel monsters rules.

Definition: an adult baby slave is human: decide yes.

An adult baby slave has a number called peeTimer.

To compute unique periodic effect of (M - an adult baby slave):
	if the class of the player is maid or a random number between 1 and 5 > 3, increase the peeTimer of M by 1;
	if a random number between 30 and 100 <= the peeTimer of M:
		if M is in the location of the player and M is not penetrating face:
			if M is asleep, say "As you watch [NameDesc of M], [his of M] completely full diaper begins to leak, [urine] spilling out of the legholes and down to the floor. [big he of M] doesn't even stir from [his of M] slumber.";
			otherwise say "[BigNameDesc of M] makes eye contact with you as a hissing sound emanates from [his of M] diaper. [big his of M] padding is so completely saturated that [his of M] [urine] just flows out of the legholes and down [his of M] legs. [big he of M] giggles cheekily.";
		UrinePuddleUp the peeTimer of M / 10 in (the location of M);
		now the peeTimer of M is 0.

Part 1 - Misc Flavour

To say SummoningFlav of (M - an adult baby slave):
	say "You hear childish giggling coming from another part of the [if playerRegion is Dungeon]dungeon[otherwise]hotel[end if].".

To say DiaperReaction of (M - an adult baby slave):
	if there is a currently visible diaper or the player is shameless:
		if M is unfriendly:
			say "[BigNameDesc of M] slaps your diapered ass as you wet yourself.[line break][speech style of M]'[if M is penetrating a body part][one of]Once I'm done playing with you, you should probably go to a Daddy or Mommy for a change unless you like sitting in your wet diapers. I do.'[or]Having you pee your diaper while I sit on your face is really turning me on... You don't have to do anything else, do you?'[or]You peeing your diaper while I sit on your face with mine is making me pretty horny.'[at random][otherwise if the player is upright]You really should have let me know if we were gonna take a pee break.'[otherwise]It's nice to see that I'm in good company, piddle-pants.'[end if][roman type][line break]";
		otherwise:
			say "[BigNameDesc of M] smiles gently and pats your back.[line break][speech style of M]'[one of]Don[']t feel bad about wetting your diaper. It means that you're more like me.'[or]Doesn't it feel really good to flood your diaper? I love the warm, wet squish!'[or]If we go ask mommy, maybe she'll change us into each others diapers... Would you want to wear my wet diaper?'[at random][roman type][line break]";
		if the player is modest, say "[variable custom style][if the player is able to speak]'Wait! I swear I don[']t normally do that!'[otherwise]I can[']t even try to explain myself...[end if][roman type][line break]";
		otherwise say "You feel your cheeks flush as you avert your eyes from her gaze.";
	otherwise:
		say "It seems that [NameDesc of M] is unaware of what you've just done.".

To compute diaper mess reaction of (M - an adult baby slave):
	if M is unfriendly:
		if M is bratty adult baby slave, say "[BigNameDesc of M] slaps your diapered ass as you mess yourself, spreading your mess around while it's still coming out of you.[line break][speech style of M]'[if M is penetrating a body part][one of]You made all that fuss and you still went in your pants? Guess you're just drooling and babbling away, from being like the other babies around here. You were all just talk!'[or]Watching you make such a big, mushy mess in your huggies is making me really horny!'[or]Ohhh, I know you could only feel it, but watching your dignity drain out of you to swell your diaper was just a sight! You know what I'm going to do now right? It's ok, you'll learn to love it!'[roman type][line break]As the musk of soiled diaper furrows into your nostrils, the slave's unnecessarily evil giggle fills the room, her victory punctuated by her childish bouncing and mocking tune, the song of your helpless subservience to her infantile wants![line break][speech style of M]'Just let it happen cutie, your smelly load tells me how badly you want this!'[roman type][line break]You panic as the reality of the situation sets in. Your body grows heavy as you struggle desperately for just one gasp of fresh air as the adult baby's filthy diaper takes dominion of your senses.[at random][otherwise if the player is upright]Awww, you know how long it's been since I had a 69 diaper soiling? You say you're a big girl but you're a selfish one!'[otherwise]How does it feel being dominated by a dirty diaper slave, are you embarrassed?'[end if][roman type][line break]";
		otherwise say "[BigNameDesc of M] slaps your diapered ass as you mess yourself, spreading your mess around while it's still coming out of you.[line break][speech style of M]'[if M is penetrating a body part][one of]Once I'm done playing with you, you should probably go to mommy for a change unless you like sitting in your dirty diapers... I do but mommy says that only the biggest babies like playing in their own messes...'[or]Watching you make such a big, mushy mess in your huggies is making me really horny!'[or]That's not fair! If you told me you had to mess, we could have gone at the same time! Still... Is it weird that I think your dirty diaper smells really good?'[roman type][line break]The adult baby slave shoves her face in your messy diaper, adopting a 69 position.[line break][speech style of M]'But better late than never, right?'[roman type][line break]You panic at her insinuation as she fills her diaper with a load of warm mush on your face, causing you to gag at the scent of her mess as she continues to nuzzle and caress your own.[at random][otherwise if the player is upright]Hey! You should have told me you needed to mess yourself! I might have let you sit on my face...'[otherwise]'How does it feel knowing that you're as big a baby as I am?[end if][roman type][line break]";
		humiliate 400;
	otherwise: [###Selkie: “Kimberly”, not [PlayerName]?]
		if M is bratty adult baby slave, say "[BigNameDesc of M] smiles gently and pats your back. [line break][speech style of M]'[one of]Ewww, did you just soil your diaper? I thought you were a big girl! Maybe if you beg I'll change you... in exchange for some playtime!'[or]How did you manage to stinky your diaper before me? I'd be back in big girl panties WAY before you... if I wanted them anyway!'[or]Kimberly made a stiiinky~! Kimberly made a stiiinky~! Wait until I tell mama what you did!'[or]Ohhhh, so THAT's what it means to be a big girl, you make even bigger dirty diapers!'[or]sniff sniff PU! I think I found the dirty diaper culprit!'[at random][roman type][line break]";
		otherwise say "[BigNameDesc of M] smiles gently and pats your back. [line break][speech style of M]'[one of]Don[']t feel too bad about messing your diaper. You might just be a big baby but at least we can be big babies together!'[or]Doesn't it feel really good to fill your diaper with hot mush? I love feeling the warm, squishy feeling spread around my diaper...'[or]If we go ask mommy, maybe she'll change us into each others diapers... Would you want to wear my messy diaper?'[at random][roman type][line break]";
		humiliate 400;
	if the humiliation of the player < 15000, say "[variable custom style][if the player is able to speak]'Wait! This isn't normal for me! I'm not a baby!'[otherwise]I'm stuck in a loaded diaper and I can't even try to explain myself... What could I even say?[end if][roman type][line break]";
	otherwise say "You blush fiercely and avert your eyes, hearing her giggle as you do so.".

To compute MasturbationReaction of (M - an adult baby slave):
	say "[BigNameDesc of M] watches you with a naughty expression.";
	if M is friendly or M is uninterested:
		say "[speech style of M]'If you were in the mood to play, why didn't you say so?'[roman type][line break]It seems like she took your self-pleasure as an invitation, whether you intended it to be or not.";
		anger M;
		now M is interested;
		now the sex-length of M is 3.

To compute BabyChairReaction of (M - an adult baby slave):
	say "[BigNameDesc of M] looks at you and giggles. [line break][speech style of M]'[one of]Someone's trying way too hard to become teacher's pet!'[or]You want praise just for sitting on a chair? You're even more attention seeking than me!'[or]Did you sit on the babytalk seat? You big fat idiot!'[at random][roman type][line break]";
	Humiliate 50.

To say MonsterOfferRejectFlav of (M - an adult baby slave) to (T - a diaper):
	say "[speech style of M]'I'm still happy with the one I've got, thanks!'[roman type][line break]".

To compute (M - a monster) stomping (N - an adult baby slave):
	if M is in the location of the player, say "The [N] screams as she sees [NameDesc of M]. [BigNameDesc of M] picks up the [N] with two hands and hugs her tight. [He of M] is so big that she disappears behind his arms! As soon as she is out of sight, you hear her begin to scream. Moments later [NameDesc of M] lets her go, revealing that she is now... exactly the same? [BigNameDesc of N]'s screams have turned to giggles. [line break][second custom style]'That was fun! Again, again!'[roman type][line break][BigNameDesc of M] seems confused, and bonks [him of N] on the head with one carefully measured blow. [BigNameDesc of N] sighs softly and wets herself as she is knocked out.";
	now the sleep of N is 300.

To say LeftoverDesc (N - 123):
	say "An unconscious adult baby is lying here, with a very full diaper and a smile on her face.".

To say DiaperCheckResultsDryForNowFlav of (M - an adult baby slave):
	say "[speech style of M]'[one of]Baby Waby foo foo, diapered up so thick! Dry and clean, so it seems, it has to be a trick!'[or]Haha, good joke, you must have literally just got a change, huh? There's no way you're tricking me, I know a pottypants when I see one!'[or]Why is this dry, sissy? Why would you waste a perfectly good diaper by not using it, huh?'[in random order][roman type][line break]".

To say DiaperCheckResultsDrynessProvedFlav of (M - an adult baby slave):
	say "[speech style of M]'[one of]Hmph fine, I guess you really don't need diapers after all. It's your own loss really, but I don't mind if you want to take it off now.'[or]I guess diapers really aren't for you. That's sad, but I guess it's only fair that I allow you to wear big girl panties again... if that's what you really want.'[in random order][roman type][line break]".

To say DiaperCheckResultsDryWellDoneFlav of (M - an adult baby slave):
	say "[speech style of M]'[one of]Oh how boring, you haven't used it at all! Come on, surely you've got something in there that you can let out? For me?'[or]This can't be right, you feel completely dry! Are you sure you need diapers?'[or]Boo! You know the whole point of diapers it to make them nice and big and [if diaper messing >= 3]smelly[otherwise]soggy[end if], right?'[in random order][roman type][line break]".

To say DiaperCheckResultsMostlyDryFlav of (M - an adult baby slave):
	say "[speech style of M]'[one of]Uh ohs, what is this? Tinkle spots are here! Just let it go, don't slow the flow, you don't have to fear!'[or]Aww, is this all you could do for me? Are you sure you don't have some more tinkles in there to really get this padding nice and soggy?'[or]Ooh, you've wet yourself a bit! I'm kinda disappointed it's not really full yet though. Come on, I know you've got more in there!'[in random order][roman type][line break]".

To say DiaperCheckResultsWetFlav of (M - an adult baby slave):
	let D be a random worn knickers;
	say "[speech style of M]'[one of]Wetsy Betsy is what you are, an accident is yours! Complete the scene, and what I mean, is crawling on all fours[or]Aww good little girl [NameBimbo] wetting your [if D is diaper]diapee for me[otherwise]panties[end if], proving to the world that you need to be padded[or]Aww yeah this feels great, so nice and warm. I almost can't resist rubbing my face in it[in random order]! [one of]I guess you need a change now[or]I suppose I should change you now[in random order], huh?'[roman type][line break]".

To say NastyTrapReactFlav of (M - an adult baby slave):
	say "[BigNameDesc of M] giggles.[line break][speech style of M]'[one of]Gross[or]Eww![in random order]!'[roman type][line break]".
To say LewdTrapReactFlav of (M - an adult baby slave):
	say "[BigNameDesc of M] [one of]smiles and drools[or]drools and looks light-headed[at random].[line break][speech style of M]'[one of]Being a [if diaper quest is 1 or the player is diaper focused]big baby[otherwise]slut[end if] is fun, isn't it[or]You're just a big perv, aren't you[or]Oh, do you enjoy being naughty[in random order]?'[roman type][line break]";
	moderateHumiliate;
	FavourDown M with consequences.

Part 2 - Perception

To compute perception of (M - an adult baby slave):
	now M is interested;
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]";
	if the class of the player is living sex doll:
		say "It doesn't look like she's interested in you.";
		bore M for 500 seconds;
	otherwise if M is bratty adult baby slave and the times-met of M is 0:
		say "[speech style of M]'Hey! I wanna play! Get down on your hands and knees and play with me!'[roman type][line break]It doesn't seem like she's willing to take no for an answer.";
		now M is interested;
		anger M;
		now the sex-length of M is 3;
	otherwise if M is angelic adult baby slave and (there is a worn diaper or the diaper-duration of M > 0) and the player is immobile:
		say "[big he of M] seems to decide to leave you alone for now.";
		distract M;
	otherwise if M is angelic adult baby slave and (there is a worn currently at least partially visible diaper or M is aware that the player needs a change):
		compute diaper check of M;
	otherwise if the diaper-duration of M > 0:
		if there is a worn diaper:
			compute diaper check of M;
		otherwise:
			say "[speech style of M]'Oi! I didn't give you one my favourite diapers just for you to take it off and waste it! You're in big trouble now, [bitch]!'[roman type][line break]";
			FavourDown M by 4;
			anger M;
	otherwise if M is unfriendly:
		say "She eyes you mischievously and, compelled by some dark, childish impulse, she seems ready to pounce at you in a moments notice.";
		now the sex-length of M is 3;
	otherwise if the player is an adult baby and M is friendly:
		say "[speech style of M]'Oh my god! You're just too cute! Mommy has to see you later!'[roman type][line break]Mommy?";
		FavourUp M by 3;
	otherwise if there is a worn waddle diaper and M is friendly:
		say "She looks you up and down and smiles.[line break][speech style of M]'Wow! I'm so jealous of your waddle diaper! I should ask mommy to put me in one!'[roman type][line break]";
		FavourUp M by 2;
	otherwise if there is a worn rocking horse diaper and M is friendly:
		say "She looks you up and down and smiles.[line break][speech style of M]'Hi! Your horsie diaper is adorable!'[roman type][line break]";
		FavourUp M by 1;
	otherwise if there is a worn kitty cat diaper and M is friendly:
		say "She looks you up and down and smiles.[line break][speech style of M]'Your kitty diaper is adorable! I wish mine was so pretty!'[roman type][line break]";
		FavourUp M by 1;
	otherwise if there is a worn sissy-diaper and M is friendly:
		say "She looks you up and down and smiles.[line break][speech style of M]'Your sissy diaper is adorable! I love sissies!'[roman type][line break]";
		FavourUp M by 1;
	otherwise if there is a worn baby pattern diaper and M is friendly:
		say "She looks you up and down and smiles.[line break][speech style of M]'Your baby diaper is adorable! It makes you look just like a real baby!'[roman type][line break]";
		FavourUp M by 1;
	otherwise if there is a worn diaper and M is friendly:
		say "She looks you up and down and smiles.[line break][speech style of M]'Hey! Cute diaper!'[roman type][line break]";
	otherwise if M is friendly:
		say "[speech style of M]'Hi!'[roman type][line break]";
	otherwise:
		say "[speech style of M]'I have an idea of what we could do together. [if the player is upright]PLAY FIGHT[otherwise]Say right there[end if]!'[roman type][line break]".

To say BecomesBoredFlav of (M - an adult baby slave):
	say "[speech style of M]'I'm gonna go play somewhere else, [']kay? Bye!'[roman type][line break]Without another word, [NameDesc of M] gets down on her hands and knees and goes to crawl away.".

Part 3 - Protection

To compute (M - an adult baby slave) protecting against (X - a monster):
	if X is adult baby slave:
		say "[speech style of M]'Don[']t hurt my friend!'[roman type][line break][BigNameDesc of M] yells out at your attacker.";
		distract M;
	otherwise:
		say "[speech style of M]'Sorry...'[roman type][line break][BigNameDesc of M] quickly crawls away, abandoning you.";
		now the scared of M is 30;
		compute monstermotion of M.

Part 4 - Combat

The monster fucked taunting rule of an adult baby slave is usually the adult baby slave gets bored rule.
This is the adult baby slave gets bored rule:
	say "Seeing you in a compromised position, the adult baby slave simply shrugs.";
	bore current-monster for 30 seconds;
	rule succeeds.

To say GroundPeeReaction of (M - a bratty adult baby slave):
	if M is friendly or M is uninterested:
		say "[speech style of M]'That's naughty! If you can[']t control your pee, you obviously need diapers! Let's see what mommy has to say about this!'[roman type][line break]";
		now M is interested;
		now current-monster is M;
		now the ToMatron of M is 1;
		if the stance of the player is 0 and the ToMatron of M is 1:
			anger M;
		if the stance of the player is 1 and the ToMatron of M is 1:
			follow the adult baby slave shows you to mommy rule.

To say GroundPeeReaction of (M - an angelic adult baby slave):
	say "[speech style of M]'That's naughty! If you can[']t control your pee, you obviously need diapers!'[roman type][line break]She adopts an aggressive stance.";
	now M is interested;
	anger M.

To say ClothesPeeReaction of (M - an adult baby slave):
	say GroundPeeReaction of M.

This is the adult baby slave obeys guard rule:
	if there is an awake royal guard in the location of the player and the health of current-monster < the maxhealth of current-monster and the class of the player is not the princess:
		if the guard-obedience of current-monster is 1:
			if the number of spanking the player royal guards is 0:
				say "[one of][BigNameDesc of current-monster] continues to lie face down on the ground with her hands behind her head.[or][or][cycling]";
			otherwise:
				let M be a random spanking the player royal guard;
				if a random number between 1 and 3 is 1:
					say "[BigNameDesc of current-monster] [one of]submissively[or]diligently[or]quietly[or]obediently[at random] nuzzles [his of current-monster] cheek against [NameDesc of M]'s shoulder.";
				otherwise if face is not actually occupied and a random number between 1 and 3 is 1:
					say "[BigNameDesc of current-monster] kneels in front of you and plants an apologetic kiss [if the delicateness of the player < 7]on your cheek[otherwise]on your lips[end if]. You [if the delicateness of the player < 9]frown with humiliation[otherwise if the delicateness of the player < 13]blush, turning a pale shade of pink, your brain struggling to compute the combination of the pain in your [buttcheeks] and the loving tenderness of [NameDesc of current-monster] at the same time[otherwise]find yourself returning the kiss, turning pink with shy embarrassment as you do[end if].";
					humiliate 50;
				otherwise:
					say "[one of][BigNameDesc of M] barks an order. [line break][speech style of M]'You! Spank her at the same time as me.'[roman type][line break][BigNameDesc of current-monster] looks at you and hesitates for only a brief moment, before bringing [his of current-monster] hand powerfully across your [buttcheeks]. It stings painfully![or][BigNameDesc of current-monster] giggles, slapping your [buttcheeks] roughly as [he of current-monster] does, purposefully hurting you.[or][BigNameDesc of current-monster] laughs with glee. [line break][speech style of current-monster]'Yes, yes! She started it! Spank her harder!'[line break][speech style of M]'Silence!'[roman type][line break][BigNameDesc of M] sounds angry at [him of current-monster], but does as [he of current-monster] says, dealing even more brutal slap to your [buttcheeks].[then at random]";
					PainUp 1;
		otherwise:
			say "The [random royal guard in the location of the player] yells angrily. [line break][first custom style]'NO CAT-FIGHTING! [one of]GET ON THE GROUND NOW, BABIES[or]Assume the position, and I will administer your punishment[or]DOWN ON THE GROUND, [if the number of adult baby slaves in the location of the player > 1]ALL[otherwise]BOTH[end if] OF YOU[in random order]!'[roman type][line break]";
			repeat with M running through royal guards in the location of the player:
				anger M;
				now M is interested;
				now the boredom of M is 0;
			repeat with M running through awake adult baby slaves in the location of the player:
				anger M;
				now M is interested;
				now the boredom of M is 0;
				now the guard-obedience of M is 1;
				say "[BigNameDesc of M] [one of]obediently[or]instantly[or]silently[or]immediately[in random order] drops to the ground, and lying face down, assumes [one of]a submissive position with her hands behind her head, like a prisoner[or]the position[stopping].";
		rule succeeds;
	otherwise if the guard-obedience of current-monster is 1:
		now the guard-obedience of current-monster is 0.
The adult baby slave obeys guard rule is listed first in the adult baby slave priority attack rules.

This is the adult baby slave shows you to mommy rule:
	let M be current-monster;
	if M is eager to feed to master:
		let N be a random alive matron;
		now the target-room of M is Hotel22;
		anger M;
		if the player is not in the target-room of M:
			say "[one of][line break][second custom style]'We're gonna go see mommy!'[roman type][line break][or][stopping]";
			drag to the target-room of M by M;
		if N is in the location of M:
			if the times-met of N < 1, say "[second custom style]'[NameBimbo], meet Mommy! She's the best.'[line break]";
			otherwise say "[second custom style]'Mommy! [NameBimbo] had an accident so [if player is male]he[end if][if player is female]she[end if] needs diapers! That's the rule, right?!'[line break]";
			if the player is able to speak, say "[variable custom style]'[if the bimbo of the player < 8]Let me go!'[otherwise]Umm...'[end if]";
			say "[roman type][line break]";
			say "[BigNameDesc of M] dumps you in front of the [N] in this room, and then promptly skips away, humming to herself merrily, seemingly happy with herself for her 'good deed'.";
			now N is diaper-committed;
			now the ToMatron of M is -1;
			if N is friendly or N is uninterested, check perception of N;
			bore M;
			compute monstermotion of M;
		otherwise:
			say "[second custom style]'Oh, she's not here. That's weird. Oh well, I guess we can wait for her here. I've got an idea of something we can do to pass the time...'[roman type][line break]";
			now the ToMatron of M is -1;
		rule succeeds.
The adult baby slave shows you to mommy rule is listed in the adult baby slave unique punish rules.

The adult baby slave unique punish rules is a rulebook.
This is the adult baby slave unique punishment rule:
	follow the adult baby slave unique punish rules;
	if the rule succeeded, rule succeeds.
The unique punishment rule of an adult baby slave is usually the adult baby slave unique punishment rule.

Section 1 - Attack

The adult baby slave priority attack rules is a rulebook. The priority attack rules of an adult baby slave is usually the adult baby slave priority attack rules.

To compute kneeling reaction of (M - an adult baby slave):
	say "[BigNameDesc of M] walks over to you, rubbing the front of her diaper and staring down luridly into your eyes. She stops rubbing long enough to push her diaper closer to your face, forcing you to inhale the sweet scent of baby powder.";
	if the ToMatron of M < 1 and diaper quest is 0, say "[one of][line break][speech style of M]'Looking forward to having my diaper on your face little [if player is male]brother[else if player is female]sister[end if]?'[roman type][line break][or]'Just the thought of your nose in my diaper makes me super wet... and not with pee. Not yet anyway.'[roman type][or]'I kinda have to use my diaper... I hope you don't mind if I do it on your face.'[roman type][or]'Would you forgive me if I wet my diaper on your face?... Might you even like it a little?'[roman type][or][if diaper messing >= 4]'Would you hate me forever if I messed my diaper on your face, because I really want to! Maybe you'll even like it.'[end if][line break][in random order]";

To say waitingflav of (M - an adult baby slave):
	if the player is not able to speak:
		say "[one of][line break][variable custom style][muffled sounds][roman type][line break][or]You look up at [NameDesc of M] silently.[at random]";
	otherwise if the diaper addiction of the player < 10:
		say "[one of]You find yourself in a state of disbelief at the realisation that your face is about to become the seat of some overgrown baby.[or]Your eyes glaze over as your brain can't comprehend the surreal situation you've found yourself in.[or][line break][first custom style]'You can't be serious...'[roman type][line break][or]You avert your eyes, praying to a god that you may or not believe in that her diaper remains clean.[or][line break][first custom style]'You can't do this to me!'[roman type][line break][or]You find yourself paralysed with disgust at the notion of her potentially using her diaper on your face.[in random order]";
	otherwise if the diaper addiction of the player < 14:
		say "[one of]While you wouldn't normally choose to have a diaper on your face, having this cutie's [vagina] so close to your mouth sounds pretty hot, even if there will be a couple of inches of padding between it and you.[or]You wait obediently, a large part of you actually looking forward to the humiliation at hand.[or][line break][variable custom style]'You can sit on my face, but please don't stay so long that you make me faint.'[roman type][line break][or][line break][variable custom style]'Just try not to use your diaper if you can help it. '[roman type][line break][or]Your heart starts racing as the thought of being so thoroughly dominated as to have this pampered little girl sit her diaper on your face.[in random order]";
	otherwise:
		say "[one of]You find yourself getting aroused purely form the idea of feeling her diaper on your face.[or]You wait obediently, more than happy to feel the rustle of her nappy against your face.[or][line break][variable custom style]'You can put that nappy on my face any time honey, but please don't stay so long that you make me faint.'[roman type][line break][or][line break][variable custom style]'Are you planning to use that whilst you're on top of me? That could be hot.'[roman type][line break][or]You can't wait to have that unique nappy smell filling your nostrils.[in random order]".


This is the adult baby slave facesitting prevents breathing rule:
	if there is an adult baby slave penetrating face, decide yes;
	decide no.
The adult baby slave facesitting prevents breathing rule is listed in the breathing blocking rules.

To compute (M - an adult baby slave) entering mouth:
	if milking is 1:
		do nothing;
	otherwise:
		if the player is clit stuck:
			say "[BigNameDesc of M] yanks on your clit lead and forces you to roll over onto your back!";
		if M is friendly-fucking or presented-orifice is face:
			say "You ready yourself for the coming experience.";
		otherwise:
			say "[BigNameDesc of M] [one of]begins[or]is[stopping] trying to tickle you into submission, causing you to laugh hysterically!";
		let R be a random number between the difficulty of M * 3 and 27;
		let B be the weight of the player + (the strength of the player / 3);
		if presented-orifice is face or the player is subdued or M is friendly-fucking, now B is 0; [If the player is consenting, she flips you automatically]
		if debuginfo > 0, say "[input-style]Adult baby slave flip check: [if presented-orifice is face]player presented mouth = automatic success[otherwise if the player is subdued]player subdued by held clothing = automatic success[otherwise if M is friendly-fucking]player initiated sex = automatic success[otherwise]flip skill ([difficulty of M * 3]) ==> RNG([difficulty of M * 3]~27) = [R] | [B * 1].5 = ([weight of the player].5) weight + ([strength of the player / 3]) strength[end if][roman type][line break]";
		if R > B:
			now the suffocation of M is 0; [This is what we use to track how many turns the adult baby slave has been forcing the player to hold their breath.]
			if presented-orifice is face or M is friendly-fucking, say "You lay still, letting her plop her padded behind on your face. ";
			otherwise say "the adult baby's tickling is too much for you to handle, leaving you thoroughly exhausted. she sits on your face, burying it in layers of padding and plastic, adjusting herself to get comfortable on top of you, crinkling all the while. You can't breathe![line break][speech style of M]'[one of]You ready?'[or]This is gonna be fun!'[or]Your face feels pretty good against my diaper...'[or]Sorry in advance if I use my diaper on your face.'[or]Just so you know, if I use my diaper on your face, it might not be an accident...'[at random][roman type][line break]";
			compute diaper sit of M;
		otherwise:
			say "Though she continues her tickle-torture, you manage to keep her diaper away from your face. She huffs and pouts at your resilience.";
			if B >= the difficulty of M * 2:
				say "She gives up, ceasing her tickling and sits on the ground to pout. you are too resilient for her to tickle into utter submission. She leaves you lying on the ground[if the body soreness of the player > 6] panting heavily,[end if] and loses interest.";
				bore M for 600 seconds.

To compute diaper sit of (M - an adult baby slave):
	say "[one of]No matter how hard you struggle, you can't get away! You'll have to choose between either [bold type]resist[roman type]ing and risk it taking longer until you can breathe or [bold type]submit[roman type]ing by trying to make her cum through her diaper, hoping she does before she uses it for anything else[or]Once again, you won't be able to breathe until she's finished with you[stopping]!";
	if sex-length of M < 3, now sex-length of M is 2;
	now M is filling face.

To compute facial sex of (M - an adult baby slave):
	if the reaction of the player > 0, humiliate 200;
	TimesSubmittedUp M by 1;
	if the diaper addiction of the player > 11, arouse 200;
	if the diaper addiction of the player > 14, arouse 150;
	if the diaper addiction of the player > 17, arouse 150;
	increase the suffocation of M by 2;
	if the body soreness of the player + the suffocation of M >= 17:
		say "[BigNameDesc of M] continues to grind against your face you with her diapered crotch. [one of]You really need to breathe soon! You are so exhausted there is nothing you can do, you struggle weakly but the plastic coat of her padding is completely preventing you from breathing. [or][stopping]";
		if diaper quest is 1 or sex fainting is 0:
			say "Your lungs burn as your lack of oxygen [one of]becomes painful[or]continues to hurt you[stopping].";
			PainUp 1;
		otherwise:
			say "You notice her empty her bladder into your diaper right before your vision fades to black.";
			now delayed fainting is 1;
			now the fainting reason of the player is 22;
	if the reaction of the player > 0:
		say "[one of]You nuzzle the adult baby's diaper, doing your best to stimulate her through her padding and are rewarded with several moans and a speedier grind.[or]You press your nose deeply into her padding and rub where you imagine her engorged clit must be. The ecstatic response you receive would suggest that your guess was spot on.[or]As you do your best to speed along this process, several squirts of urine spray into her diaper, vibrating against your face and filling your nostrils with the scent of pee.[or]You try to focus on the sweet scent of the baby powder wafting into your nose as you do your best to rub your face against the adult baby's diaper in such a way to make her cum.[or]You deliver a series of quick kisses to her diapered groin, causing the girl above you to pant heavily.[or][if diaper messing >= 7]As you rub your face into her diaper, she releases a smelly bout of flatulence which enters your nose and causes you to momentarily struggle, seeming only to turn her on more. You'd better hurry up or that might not be the end of it![end if][or][if diaper messing >= 7]As you become lost in the girl's cute squeals of pleasure as you passionately kiss her genitals through her diaper, you quickly come back to reality as you hear her grunt and feel a load of smelly mush push her diaper outward against your face. You gag and struggle as the garment continues to fill but ultimately find yourself unable to gain the leverage to overcome her. You simply accept your fate and continue your work as she giggles between moans, humping your face with her dirty diaper.[end if][in random order]";
		decrease the sex-length of M by 1;
		if a random number between 1 and 3 > 1, DiaperAddictUp 1;
	if the reaction of the player is 0:
		say "[one of]You refuse to sit still as you are degraded like this! You struggle, failing to push her off you as she bounces her padded behind on your face. [or]You continue trying to fight her, failing miserably to do any damage as she continues to grind her diapered bottom against you. [or]The only stimulation she's going to get from you is pushing and muffled yelling! [or]You simply won't give in! At least if you pass out, you'll be able to look at yourself in the mirror. [in random order][BigNameDesc of M] keeps grinding her diaper on your face anyway!";
		if a random number between 1 and 3 > 1, decrease the sex-length of M by 1;
	if there is a worn diaper:
		if there is a worn perceived messed diaper:
			say "[BigNameDesc of M] [one of]thoroughly rubs and mashes[or]lovingly massages[stopping] your messy diaper with her hands. [line break][speech style of M]'[one of]Do you like wearing messy diapers too? I thought I was alone in that!'[or]Don't you love the way they squish when they're dirty?'[or]Is it weird that I like the scent of your messy nappy?'[or]Got any more in your bowels? I think it'd be pretty hot if we messed our diapers at the same time, especially while I sit on your face.'[stopping][roman type][line break]";
			humiliate 300;
			arouse 300;
			DiaperAddictUp 1;
		otherwise:
			say "[BigNameDesc of M] lovingly rubs your diaper[one of] from her advantageous position[or][stopping]. [line break][speech style of M]'[one of]I love how nice the outside of a nappy feels against my skin... What do you think?'[or]Do you think you could use your nappy for me? Pretty [please] with sugar on top?'[or]You know, it would make me really happy if you used your diaper for me...'[or]You know, I might cum faster if you use your diaper... That would be a pretty big turn-on.'[or]If you get stuck here forever and ever, I'll let you be my little [if player is male]brother[end if][if player is female]sister[end if].'[stopping][roman type][line break]";
			humiliate 200;
			arouse 400;
			if a random number between 1 and 3 is 1, DiaperAddictUp 1;
	say "[if the body soreness of the player + the suffocation of M < 8]You are still holding your breath.[otherwise if the suffocation of M < 12]You are running out of breath![otherwise if diaper quest is 1 or sex fainting is 0]You still can't breathe, and you are now pretty much out of oxygen completely![otherwise]You still can't breathe. You're going to faint any second now![end if]".

To compute facial climax of (M - an adult baby slave):
	if the reaction of the player > 0, humiliate 200;
	TimesSubmittedUp M by 1;
	now M is not filling face;
	say "A screaming orgasm overcomes [NameDesc of M]. You feel her cum squirt into her diaper, followed by a [if diaper messing >= 7]loud squelching sound as she empties her bladder and bowels against your face. The scent is overwhelming and you can literally feel the warm mush against your face[otherwise]long hissing sound as she empties her bladder against your face. The scent of pee is overwhelming[end if]. Once she's done, a yawn leaves her lips and she rolls over, sticking her thumb into her mouth and closing her eyes.[line break][speech style of M]'Ni-ni...'[roman type][line break]";
	unless M is unfriendly, increase the blue-balls of M by 1;
	now the sleep of M is 400;
	if newbie tips is 1, say sleeping tip;
	FavourUp M;
	bore M.

To compute (M - an adult baby slave) entering anally:
	if diaper messing >= 4:
		compute suppository of M;
	otherwise:
		say "[BigNameDesc of M] looked like she was about to do something, but then she stopped because she realised that you haven't enabled the right fetish. This shouldn't have happened, please report the bug!";
		bore M.

This is the adult baby slave monster convinced rule:
	let M be current-monster;
	if presented-orifice is face:
		say "[BigNameDesc of M] sees your request and smiles brightly. [line break][speech style of M]'Yay! I would've used your face either way but it makes me really happy that you want to too!'[roman type][line break]";
		now the chosen-orifice of current-monster is face;
		rule succeeds;
	if presented-orifice is asshole and diaper messing >= 3 and rectum > 0 and (the number of worn knickers is 0 or diaper messing >= 5):
		say "[BigNameDesc of M] sees your request and grins. [line break][speech style of M]'Mmm, Okay... I think I have something in mind.'[roman type][line break]";
		now the chosen-orifice of current-monster is asshole;
		rule succeeds;
	otherwise if presented-orifice is not nothing:
		say "[BigNameDesc of M] sees your request and shakes her head. [line break][speech style of M]'Mmmm... Nuh uh!'[roman type][line break]".
The monster convinced rule of an adult baby slave is usually the adult baby slave monster convinced rule.

To say PresentFriendlyAcceptanceFlav of (M - an adult baby slave):
	if presented-orifice is face:
		say "[speech style of M][one of]'That sounds like lot'sa fun!'[or]'Yay! I get to play with my best friend!'[or]'Like a play-date? Sounds fun!'[or]'Yeah! ... I might have to use my diaper though.'[at random][roman type][line break]";
	if presented-orifice is asshole and diaper messing >= 4:
		say "[speech style of M]'Having trouble? I think I might have something to help.'[roman type][line break]";

To say PresentFriendlyRejectionFlav of (M - an adult baby slave):
	say "[speech style of M]'[if presented-orifice is a potential target]Mmm... Maybe later.'[otherwise]Nuh uh...'[end if][roman type][line break]".

To compute the orifice choosing of (M - an adult baby slave):
	if asshole is an actual target and diaper messing >= 4 and the number of worn knickers is 0 and a random number between 1 and 4 > 1:
		now the chosen-orifice of M is asshole;
	otherwise if face is an actual target:
		now the chosen-orifice of M is face;
	otherwise:
		now the chosen-orifice of M is nothing.

To say StrikingFlav of (M - an adult baby slave) on (B - a body part):
	say "[BigNameDesc of M] slaps you [TargetName of B]![line break][speech style of M]'[one of]Just lie down, meanie!'[or]Stop being such a stupidhead!'[or]You're such a dumbie!'[or]Stop!'[in random order][roman type][line break]".

To say StrikingSuccessFlav of (M - an adult baby slave) on (B - a body part):
	say "[StrikingFlav of M on B]";
	say "Ouch[one of]! She hits pretty hard for such a baby[or][or][or][or][or][or][or][cycling]!".

To say StrikingFailureFlav of (M - an adult baby slave) on (B - a body part):
	say "[StrikingFlav of M on B]";
	say "That slap wasn't too bad[one of] - but that's what you'd expect from a woman in Pampers[or][or][or][or][or][or][cycling].".

To compute (S - a spike bra) damaging (M - an adult baby slave):
	say "[BigNameDesc of M] has visibly hurt herself by slapping the spikes of your [printed name of S]!";
	decrease the health of M by 4.

Section 2 - DQ

Definition: an adult baby slave (called M) is willing to donate diapers:
	if a random number between 1 and 3 > 1, decide no;
	decide yes.

Definition: an adult baby slave is diaper disciplining: decide yes.

Definition: an adult baby slave is willing to deliver enemas: decide yes.

[Currently the enema flavour won't happen as it's overridden by the suppository code.]

To say EnemaDeclarationFlav of (M - a adult baby slave):
	if M is intelligent, say "[speech style of M]'Guess what I found lying around? I think we can have some fun with these...' [roman type]".

To decide which number is the enema quarts of (M - an adult baby slave):
	decide on 2.

To say EnemaStartFlav of (M - an adult baby slave):
	say "[BigNameDesc of M] pulls [sex-length of M] full enema syringes [EnemaSpace of M], with an almost insane look of glee on [his of M] face.".

To say EnemaAfterFlav of (M - an adult baby slave):
	if M is intelligent, say "[speech style of M]'Feeling uncomfortable? Maybe next time you'll play nice.'[roman type][line break]".

Definition: an adult baby slave is willing to masturbate: decide yes.

To say MasturbationDeclarationFlav of (M - an adult baby slave):
	if there is a worn diaper, say "[speech style of M]'[one of]Let's feel really good together!'[or]I know something that you'll definitely find fun...'[at random][roman type][line break]".

To say MasturbationStartFlav of (M - an adult baby slave):
	say "[BigNameDesc of M] flips you onto your back and sits on your tummy.".

To say MasturbationAfterFlav of (M - an adult baby slave):
	say "After this [he of M] seems satisfied, and stands up.[line break][if the player is a bit horny][MasturbationTeaseFlav of M][end if]".

To say MasturbationAfterFlav of (M - an adult baby slave):
	say "After this [he of M] seems satisfied, and stands up.[if the player is a bit horny][MasturbationTeaseFlav of M][end if]".

To say DQMasturbationResistReactionFlav of (M - an adult baby slave):
	say "[BigNameDesc of M] giggles.[line break][speech style of M]'[one of]Hehe, you're like the BEST horsey ride ever, giddy up diaper butt!'[or]Does that mean I'm doing it right? Ohh I'll rub HARDER then!'[or]Your gonna make a creamie, your gunna make a creaamie!'[or]Ya know silly, if you keep rocking like that... I'm gonna go potty!'[or]Hehehe, I can barely feel you! You're bad at this game!'[in random order][roman type][line break]".

Definition: an adult baby slave (called M) is eager to deliver enemas:
	if diaper messing < 4, decide no;
	if M is able to deliver enemas, decide yes;
 	decide no.

 To compute enema of (M - an adult baby slave):
	compute suppository of M.

To say DiaperChangeStart of (M - an adult baby slave):
	say "[speech style of M]'[if there is a worn diaper]Don't you know it's bad for your health to spend too long in a used diaper?'[otherwise]I think it's quite important that you wear a diaper.'[end if][roman type][line break][BigNameDesc of M] pushes you onto your back, and pulls your legs up into the air in a classic diaper changing position.".

To say DiaperChangeComment of (M - a adult baby slave):
	say "[speech style of M]'Doesn't that feel soooo comfy?'[roman type][line break]".

To say MercyReaction of (M - an adult baby slave):
	say "Your attempts to beg are muffled by the adult baby's diaper on your face!".

The adult baby slave continue sex rules is a rulebook. The continue sex rules of an adult baby slave is usually the adult baby slave continue sex rules.

This is the adult baby slave extra continue sex check rule:
	follow the check normal continue sex stuff rule;
	if the rule succeeded, rule succeeds;
	if current-monster is penetrating face:
		compute punishment of adult-baby-facesit;
		rule succeeds.
The adult baby slave extra continue sex check rule is listed in the adult baby slave continue sex rules.



adult-baby-facesit is a diaper punishment. The priority of adult-baby-facesit is 2.
Definition: an adult-baby-facesit (called P) is appropriate:
	if current-monster is not adult baby slave, decide no;
	if current-monster is penetrating face, decide yes;
	if the player is immobile, decide no;
	decide yes.

To compute punishment of (P - adult-baby-facesit):
	let M be current-monster;
	if M is penetrating face:
		if the rounds of sex left of M <= 0:
			compute facial climax of M;
			orgasm M;
		otherwise:
			compute facial sex of M;
	otherwise:
		say "[BigNameDesc of M] rolls you onto your back and sits on your face, burying it in layers of padding and plastic, adjusting herself to get comfortable on top of you, crinkling all the while. You can't breathe![line break][speech style of M]'[one of]You ready?'[or]This is gonna be fun!'[or]Your face feels pretty good against my diaper...'[or]Sorry in advance if I use my diaper on your face.'[or]Just so you know, if I use my diaper on your face, it might not be an accident...'[at random][roman type][line break]";
		compute diaper sit of M.

adult-baby-matron-drag is a diaper punishment. The priority of adult-baby-matron-drag is 5.
Definition: an adult-baby-matron-drag (called P) is appropriate:
	if current-monster is not adult baby slave, decide no;
	if current-monster is eager to feed to master, decide yes;
	decide no.

To compute punishment of (P - adult-baby-matron-drag):
	follow the adult baby slave shows you to mommy rule.

Definition: an adult baby slave (called M) is eager to feed to master:
	let N be a random alive matron;
	unless playerRegion is Hotel and N is monster and the ToMatron of M >= 0, decide no;
	if the ToMatron of M is 1 or the times-met of N < 1, decide yes;
	decide no.



To compute punishment of (P - adult-baby-matron-drag):
	 follow the adult baby slave shows you to mommy rule.

To say SuppositoryDeclarationFlav of (M - an adult baby slave):
	say "[if presented-orifice is asshole or M is friendly-fucking]You stick your ass out in the direction of [NameDesc of M], waiting to see[otherwise][BigNameDesc of M] has a very evil look in her eyes, and you are concerned about[end if] what she has in mind. ".

To say SuppositoryFlav of (M - an adult baby slave):
	say "[BigNameDesc of M] sticks her finger inside of your rectum, though it doesn't seem to be alone! Once the finger is all the way up there she twists it around several times before pulling it back out, causing you to gasp[if the sex addiction of the player <= 7] with shock[end if][if the sex addiction of the player >= 5], and moan with arousal[end if].[line break][speech style of M]'I thought you could use a messy diaper, so I just gave you a suppository. These things are pretty fast acting, so it shouldn't be long now...'[roman type][line break]".

To say SuppositoryAftermath of (M - an adult baby slave):
	if there is a worn diaper or there is a diaper retained by M: [If there's a retained diaper, she's about to replace it.]
		say "She wasn't kidding! You double over in agony as the first cramp overcomes you.";
	otherwise:
		compute diaper change of M;
	if the anal sex addiction of the player > 6, arouse 100.

To say SuppositoryAfterFlav of (M - an adult baby slave):
	say "[speech style of M]'You'll thank me later, I promise!'[roman type][line break]".

Section 3 - Damage

To compute damage of (M - an adult baby slave):
	if the health of M > 0:
		if M is awake:
			if M is uninterested:
				say "The girl looks shocked. [line break][speech style of M]'[one of]Hey! I'll tell mommy on you![or]Stop! That hurts!'[or]I'm gonna make you pay for this!'[at random][roman type][line break]";
				now M is interested;
				anger M;
				now the sex-length of M is 3;
			otherwise:
				say DamageReaction (the health of M) of M;
				if a random number between 1 and 3 is 1, increase the sex-length of M by 1;
		otherwise:
			decrease the sleep of M by 300;
			if the health of M < the maxhealth of M / 2, now the sleep of M is 0;
			if the sleep of M < 0, now the sleep of M is 0;
			if the sleep of M is 0:
				say "She wakes up, yelping and rubbing her eyes groggily before registering that you hit her, leaping at you with rage once she makes the connection between you and her new pain.";
				now the sex-length of M is a random number between 3 and 4;
				now M is interested;
				anger M;
			otherwise:
				say "She's still sleeping like a baby.";
	otherwise:
		compute death of M.

To say DamageReactHealthy of (M - an adult baby slave):
	say "[big he of M] blows a raspberry in the air at you... What a brat!".

To say DamageReactDamaged of (M - an adult baby slave):
	say "[big he of M] looks like [he of M]'s contemplating biting you.".

To say DamageReactTired of (M - an adult baby slave):
	say "[big he of M] looks like [he of M] wants to cry but [he of M]'s holding it together surprisingly well for [his of M] maturity level.".

To say DamageReactWeak of (M - an adult baby slave):
	say "She looks like she's ready to burst into tears!".

To compute unique death of (M - an adult baby slave):
	say "[BigNameDesc of M] cries as [he of M] falls to the floor and vanishes. ";
	let D be a random off-stage eligible diaper;
	if D is a thing:
		now D is blessed;
		now the raw-magic-modifier of D is 0;
		now D is confidence;
		now D is sure;
		now D is identified;
		now D is in the location of the player;
		say "[his of M] body disappears, leaving behind a [printed name of D].";
		compute autotaking D;
	otherwise if D is not a thing:
		say "[his of M] body disappears.".

Part 4 - Conversation

To IdentifiablePosterReaction of (M - an adult baby slave):
	say "[BigNameDesc of M] looks at you, blinks, then looks back to the poster. Upon realising that the person in the poster is you, [he of M] starts smiles seductively in your direction.[line break][speech style of M]'You know, you look pretty cute up there.'[roman type][line break]";
	say "You turn bright red with shame.";
	humiliate the lewdness of a random poster in the location of the player * 2.

To UnidentifiablePosterReaction of (M - an adult baby slave):
	say "[speech style of M]'Whoever that is, they seem pretty cute. I'd love to shove their face into my diaper.'[roman type][line break]";
	say "You turn slightly red but don't say a word.";
	humiliate the lewdness of a random poster in the location of the player / 2.

Section 1 - Greeting

To say FirstResponse of (M - an adult baby slave):
	say "[speech style of M]'Hi! Wanna be friends?'[roman type][line break]".

To say RepeatResponse of (M - an adult baby slave):
	say "[speech style of M]'Hi, [NameBimbo]!'[roman type][line break]".

To say UnfriendlyGreeting of (M - an adult baby slave):
	say "[second custom style][one of]'There's no way I'm going to lose to some un-potty-trained brat, so give it up!'[or]'I'd rather not hit a baby so please just stop!'[at random][roman type][line break]";

To say UnfriendlyResponse of (M - an adult baby slave):
	say "[speech style of M]'[one of]No talk! Just play!'[or]Just get down on your hands and knees so we can play!'[or]You're being annoying!'[or]Shut up and play with me!'[at random][roman type][line break]".

To say SubmissiveGreeting of (M - an adult baby slave):
	if the class of the player is princess and M is princess-consort:
		say "You compulsively straighten your back as your words come out in a measured tone.[line break][first custom style]'[one of][big royal-subject of M]. Our previous tryst was most satisfying, I will admit.'[or][big royal-subject of M]. I cannot help but congratulate you on your unique skill.'[or]Greetings, [royal-subject of M]. I may require your services again at a later date.'[at random][roman type][line break]";
		trivialDignify;
	otherwise:
		say "[line break][second custom style]'Hey... Wanna sit your cute, diapered ass on my face again?'[roman type][line break]".

To say SubmissiveResponse of (M - an adult baby slave):
	if M is friendly:
		say RepeatResponse of M;
	otherwise:
		say "[speech style of M][one of]'Hi! Wanna [']nother taste of my diaper?'[or]'You made me feel really, really good last time we played... Let's play again...'[or]'Yay! Another play-date!'[at random][roman type][line break]";

To say PartnerGreeting to (M - an adult baby slave):
	if the bimbo of the player < 8:
		say "[variable custom style]'Mmf!'[roman type][line break]";
	otherwise:
		say "[variable custom style]'Mmm... Mm-Hmm!'[roman type][line break]";
	say "[speech style of M]'[one of]Your face feels amazing against my diaper!'[or]I think I'm gonna pee!'[or]How does my diaper taste?'[or]You're making an awful lot of noise down there, baby.'[or]It feels really good when you muffle against my diaper!'[at random][roman type][line break]".	

To say InvitationResponse of (M - an adult baby slave) with (N - a monster):
	FavourDown M;
	FavourDown N;
	say InvitationRejected of M with N.

To say InvitationAccepted of (M - an adult baby slave) with (N - a monster):
	say "[speech style of M]'Oh I[']ll help you all right.'[roman type][line break]".

To say InvitationRejected of (M - an adult baby slave) with (N - a monster):
	say "[speech style of M]'You seem busy. We'll play later.'[roman type][line break]".

To say AssistanceResponse of (M - an adult baby slave) with (N - a monster):
	say InvitationResponse of M with N.

Section 2 - Questioning

To compute annoyance of (M - an adult baby slave):
	if M is uninterested:
		say "The adult baby slave doesn't seem to realize you are talking to her.[line break]";
	otherwise if M is unfriendly:
		say "The adult baby slave ignores your question. [line break][speech style of M]'No!'[roman type][line break]";
	otherwise:
		say "[speech style of M]'You're getting kind of boring... Could you stop?'[roman type][line break]";

To say WhereAnswer of (M - an adult baby slave):
	if M is in the hotel, say "[speech style of M]'[one of]We're in a hotel with a bunch of big toys that feed you or change you... And, of course, mommy's here.'[or]I already told you! We're in a hotel. It's like a vacation!'[or]I said I already told you 'bout where we are!'[stopping][roman type][line break]";
	otherwise say "[speech style of M]'[one of]We're in a big world full of Mommies and Daddies that want to keep us in diapers. It's the best!'[or]I already told you! We're in a magical diaper world. It's like the best place ever!'[or]I said I already told you 'bout where we are!'[stopping][roman type][line break]".

To say WhoAnswer of (M - an adult baby slave):
	if M is in the hotel, say "[speech style of M]'I'm one of mommy's slaves. It's actually pretty fun! You should be one'a her slaves too!'[roman type][line break]";
	otherwise say "[speech style of M]'I'm your new best friend!'[roman type][line break]".

To say StoryAnswer of (M - an adult baby slave):
	say "[speech style of M]'[one of]Well, I used to be a big girl. Then, I tried out some video game where I met mommy and she taught me that I was never really a big girl all along.'[or]For a while, I really thought I was a grown-up. Mommy showed me that wasn't true.'[or]Let's see... I played a video game, I met mommy and then I became her baby and I've never been happier!'[or]Hm... I think I used to work on making some sorta game... I forgotted about that. Oh well!'[as decreasingly likely outcomes][roman type][line break]".

To say EscapeAnswer of (M - an adult baby slave):
	if M is in the hotel, say "[speech style of M]'You can leave the hotel any time you'd like from the front entrance but why would you want to when mommy and me are here? Plus there are all of the big toys!'[roman type][line break]";
	otherwise say "[speech style of M]'You can leave the dungeon any time you'd like by going up the stairs. And you should, because upstairs you can meet mommy!'[roman type][line break]".

To say AdviceAnswer of (M - an adult baby slave):
	if M is in the hotel, say "[speech style of M]'[one of]The toys here can be pretty helpful but they don't listen too good when you tell them no. As long as your tummy is full and you're dressed, they'll usually leave you alone though.'[or]Hm... Mommy says you'll forget how to take your diaper off if you leave it on for too long. That happened to me. But, mommy'll always change you if you need it!'[at random][roman type][line break]";
	otherwise say "[speech style of M]'[one of]If you want to make sure that the people here take good care of you, dress like a baby or like a slut. If you wear normal grown up clothes, they'll leave you alone, which is boring.'[or]Crawling around is a good way to make sure that you can't fight back when a Mommy or Daddy comes to punish you. But the sad thing is that being on your knees means most traps won't be able to affect you, which is always disappointing...'[at random][roman type][line break]".

To compute teaching of (M - an adult baby slave):
	say "[speech style of M]'If someone is mean to you, try crying and asking them not to hurt you really nicely. People will leave you alone most of the time.'[roman type][line break]";
	teach begging for mercy;
	HeavyConvoFatigue M.

Section 3 - Drink Requesting

To compute unfriendly drink of (M - an adult baby slave):
	if M is unfriendly:
		say "[speech style of M]'Drink my pee diaper, dumbie!'[roman type][line break]";
		now the boredom of M is 0;
	otherwise:
		say "[speech style of M]'Go ask [if M is in the hotel]mommy[otherwise]a mommy or daddy[end if].'[roman type][line break]".

To compute friendly drink of (M - an adult baby slave):
	compute unfriendly drink of M.


Adult Baby Slave ends here.

