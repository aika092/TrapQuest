Adult Baby Slave by Monster begins here.

An adult baby slave is a kind of monster. an adult baby slave is intelligent. an adult baby slave has a number called ToMatron. The favour of adult baby slave is usually 10. An adult baby slave has a number called guard-obedience. The leftover-type of an adult baby slave is usually 123.

An adult baby slave has a number called peeTimer. An adult baby slave has a number called messTimer.

Definition: an adult baby slave is willing to do oral: decide yes.

Definition: an adult baby slave is raunchy: decide yes.
Definition: an adult baby slave is willing to do anilingus: decide no. [TODO: create an anilingus variation where it's diaper worship]

Definition: an adult baby slave is a diaper wetter: decide yes.

Figure of angelic adult baby slave is the file "NPCs/MultiFloor/BabySlave/abs1.jpg".
Figure of angelic adult baby slave facesit messy is the file "NPCs/MultiFloor/BabySlave/abs1-cutscene1a.jpg".
Figure of bratty adult baby slave is the file "NPCs/MultiFloor/BabySlave/abs2.jpg".
[Figure of bratty adult baby slave facesit clean is the file "NPCs/MultiFloor/BabySlave/abs2-cutscene1a.jpg".]
Figure of bratty adult baby slave facesit wet is the file "NPCs/MultiFloor/BabySlave/abs2-cutscene1b.jpg".
Figure of bratty adult baby slave facesit messy is the file "NPCs/MultiFloor/BabySlave/abs2-cutscene1c.jpg".

To decide which figure-name is the monster-image of (M - angelic adult baby slave):
	if M is penetrating face:
		if M is messy, decide on Figure of angelic adult baby slave facesit messy;
	decide on Figure of angelic adult baby slave.

To decide which figure-name is the monster-image of (M - bratty adult baby slave):
	if M is penetrating face:
		if M is messy, decide on Figure of bratty adult baby slave facesit messy;
		decide on Figure of bratty adult baby slave facesit wet;
	decide on the figure of bratty adult baby slave.

To say ShortDesc of (M - an adult baby slave):
	say "adult baby".

angelic adult baby slave is an adult baby slave. Understand "angel" as angelic adult baby slave. The text-shortcut of angelic adult baby slave is "abs".
To say MediumDesc of (M - angelic adult baby slave):
	say "angelic adult baby".

Definition: angelic adult baby slave is dungeon dwelling:
	if diaper lover is 1, decide yes;
	decide no.

bratty adult baby slave is an adult baby slave. Understand "brat" as bratty adult baby slave. The text-shortcut of bratty adult baby slave is "bbs".
To say MediumDesc of (M - bratty adult baby slave):
	say "bratty adult baby".

Definition: bratty adult baby slave is hotel dwelling:
	if diaper lover is 1, decide yes;
	decide no.

To say MonsterDesc of (M - angelic adult baby slave):
	say "This [man of M] adorns a thick, adult diaper with a nuclear symbol on the front and back, and cute pink top with a cat skull on the front, simultaneously cute and quirky. [big his of M] brown hair with teal highlights has two cute bunches towards the back. Other than a diaper, the two big tell-tale signs of this [man of M][']s preferred lifestyle are the pacifier-shaped earrings and the black neckerchief that has the word 'BABY' on it. You notice that [he of M] has a pack of bubblegum strapped to one thigh. [big his of M] expression is playful but part of you can't help but fear that a tantrum is only one wrong move and a moment away.";

To say MonsterDesc of (M - bratty adult baby slave):
	say "This [man of M] adorns a thick, cloth diaper bulging through a pair of pink shorts. On [his of M] upper half. [he of M] is wearing a black hoody and red back-pack. On [his of M] bottom half, [he of M][']s gone for fishnet stockings and chunky pink boots with white laces. [big he of M] wears a look that tells you that the slightest provocation could easily set [him of M] off, triggering what could be the biggest tantrum of all time.".

To say MonsterComment of (M - an adult baby slave):
	say "[variable custom style][if the bimbo of the player < 5 and the player is gendered male][big he of M]'d be really hot if [he of M] wasn't dressed like a baby... [otherwise if the bimbo of the player > 12][line break][second custom style][big he of M]'s so cute! I wish I was that cute! [end if][if the diaper addiction of the player < 3]I wonder what it would take to get [him of M] to take [his of M] diaper off.[otherwise if the diaper addiction of the player > 14]I want to feel [his of M] diaper on my face.[otherwise if the diaper addiction of the player > 10]I bet we could have tons of fun playing together.[otherwise if the diaper addiction of the player > 6]I wonder if [he of M] wants to play.[otherwise]Diapers are so gross.[end if][roman type][line break]".

To set up (M - an adult baby slave):
	reset M;
	now the monstersetup of M is 1;
	if M is angelic adult baby slave:
		add bubblegum to the taxableItems of M;
		add bubblegum to the tradableItems of M;
	now the raw difficulty of M is the starting difficulty of M;
	now the health of M is the maxhealth of M.

Definition: an adult baby slave is human: decide yes.

To decide which number is adultBabyMessTimer:
	decide on 235.

Definition: an adult baby slave is messy:
	if it is diaper-enslaved and the refractory-period of it <= (the messRefractoryLimit of it) and diaper messing >= 6 and playerRegion is not school:
		decide yes;
	otherwise if it is caged and it is in the location of dominatrix-cage and the mess of dominatrix-cage > 0:
		decide yes;
	otherwise if it is undefeated and diaper messing >= 6 and the messTimer of it >= adultBabyMessTimer:
		decide yes;
	decide no.

To diaper change (M - an adult baby slave):
	now the messTimer of M is 0;
	if M is diaper-enslaved, now the refractory-period of M is a random number between (the messRefractoryLimit of M + 300) and 300.

To decide which number is the messRefractoryLimit of (M - an adult baby slave):
	if M is undefeated, decide on 99999; [otherwise we get SuddenMessFlav triggering every turn... this shouldn't be necessary now that we've added the 'diaper-enslaved' check to the 'just messing' definition]
	decide on -800.

To compute unique periodic effect of (M - an adult baby slave):
	if the class of the player is maid, increase the bladder of M by 4; [pees twice as much as an ordinary human]
	if diaper messing >= 6:
		increase the messTimer of M by 1;
		if the messTimer of M is adultBabyMessTimer and M is in the location of the player:
			say "All of a sudden, [NameDesc of M] [if M is awake]scrunches [his of M] eyes shut, grunts, and fills [his of M] diaper with a heap of stinking shit.[line break][speech style of M]'That was a big one. I feel so much better now...'[roman type][line break][big he of M] coos, not at all ashamed about what just happened[otherwise]erupts with a loud trumpeting sound as [he of M] unloads a huge heap of stinking mush into [his of M] diaper. [big he of M] sighs pleasantly, and gently curls up into a ball, apparently still sound asleep and blissfully unaware of what [he of M] just did[end if].";
			if the bladder of M >= 100, compute diaper wetting of M.


To compute diaper wetting of (M - an adult baby slave): [This MUST cause bladder to empty or NPCs might get stuck]
	if M is in the location of the player and M is not penetrating face:
		if M is asleep, say "As you watch [NameDesc of M], [his of M] completely full diaper begins to leak, [urine] spilling out of the legholes and down to the floor. [big he of M] doesn't even stir from [his of M] slumber.";
		otherwise say "[BigNameDesc of M] makes eye contact with you as a hissing sound emanates from [his of M] diaper. [big his of M] padding is so completely saturated that [his of M] [urine] just flows out of the legholes and down [his of M] legs. [big he of M] giggles cheekily.";
	UrinePuddleUp the bladder of M / 100 in (the location of M);
	now the bladder of M is 0.


Part 1 - Misc Flavour

To say BecomesAggressive of (M - an adult baby slave):
	say "[big he of M] takes an offensive stance![line break][speech style of M]'I'm gonna show you how much [one of]better[or]fun[cycling] it is to be an adult baby like me!'[roman type][line break]".

To say SummoningFlav of (M - an adult baby slave):
	say "You hear childish giggling coming from another part of the [if playerRegion is Dungeon]dungeon[otherwise]hotel[end if].".

To say ToiletReactionFlav of (M - an adult baby slave):
	say "[BigNameDesc of M] wrinkles [his of M] nose.[line break][speech style of M]'Only boring people use toilets. You should use diapers, like me.'[roman type][line break]";
	FavourDown M with consequences.

To say DiaperReaction of (M - an adult baby slave):
	if there is a currently visible diaper or the player is shameless:
		if M is unfriendly:
			say "[BigNameDesc of M] slaps your diapered ass as you wet yourself.[line break][speech style of M]'[if M is penetrating a body part][one of]Once I'm done playing with you, you should probably go to a Daddy or Mommy for a change unless you like sitting in your wet diapers. I do.'[or]Having you pee your diaper while I sit on your face is really turning me on... You don't have to do anything else, do you?'[or]You peeing your diaper while I sit on your face with mine is making me pretty horny.'[at random][otherwise if the player is upright]You really should have let me know if we were gonna take a pee break.'[otherwise]It's nice to see that I'm in good company, piddle-pants.'[end if][roman type][line break]";
		otherwise:
			say "[BigNameDesc of M] smiles gently and pats your back.[line break][speech style of M]'[one of]Don't feel bad about wetting your diaper. It means that you're more like me.'[or]Doesn't it feel really good to flood your diaper? I love the warm, wet squish!'[or]If we go ask [daddytitle of matron], maybe [he of matron][']ll change us into each others['] diapers... Would you want to wear my wet diaper?'[at random][roman type][line break]";
		if the player is modest, say "[variable custom style][if the player is able to speak]'Wait! I swear I don't normally do that!'[otherwise]I can't even try to explain myself...[end if][roman type][line break]";
		otherwise say "You feel your cheeks flush as you avert your eyes from [his of M] gaze.";
	otherwise:
		say "It seems that [NameDesc of M] is unaware of what you've just done.".

To compute diaper mess reaction of (M - an adult baby slave):
	if M is unfriendly:
		if M is bratty adult baby slave, say "[BigNameDesc of M] slaps your diapered ass as you mess yourself, spreading your mess around while it's still coming out of you.[line break][speech style of M]'[if M is penetrating a body part][one of]You made all that fuss and you still went in your pants? Guess you're just drooling and babbling away, from being like the other babies around here. You were all just talk!'[or]Watching you make such a big, mushy mess in your Huggies is making me really horny!'[or]Ohhh, I know you could only feel it, but watching your dignity drain out of you to swell your diaper was just a sight! You know what I'm going to do now right? It's OK, you'll learn to love it!'[roman type][line break]As the musk of soiled diaper furrows into your nostrils, the slave's unnecessarily evil giggle fills the room, [his of M] victory punctuated by [his of M] childish bouncing and mocking tune, the song of your helpless subservience to [his of M] infantile wants![line break][speech style of M]'Just let it happen cutie, your smelly load tells me how badly you want this!'[roman type][line break]You panic as the reality of the situation sets in. Your body grows heavy as you struggle desperately for just one gasp of fresh air as the adult baby's filthy diaper takes dominion of your senses.[at random][otherwise if the player is upright]Awww, you know how long it's been since I had a 69 diaper soiling? You say you're a big girl but you're a selfish one!'[otherwise]How does it feel being dominated by a dirty diaper slave, are you embarrassed?'[end if][roman type][line break]";
		otherwise say "[BigNameDesc of M] slaps your diapered ass as you mess yourself, spreading your mess around while it's still coming out of you.[line break][speech style of M]'[if M is penetrating a body part][one of]Once I'm done playing with you, you should probably go to [daddytitle of matron] for a change unless you like sitting in your dirty diapers... I do, but [daddytitle of matron] says that only the biggest babies like playing in their own messes...'[or]Watching you make such a big, mushy mess in your Huggies is making me really horny!'[or]That's not fair! If you told me you had to mess, we could have gone at the same time! Still... Is it weird that I think your dirty diaper smells really good?'[roman type][line break]The adult baby slave shoves [his of M] face in your messy diaper, adopting a 69 position.[line break][speech style of M]'But better late than never, right?'[roman type][line break]You panic at [his of M] insinuation as [he of M] fills [his of M] diaper with a load of warm mush on your face, causing you to gag at the scent of [his of M] mess as [he of M] continues to nuzzle and caress your own.[at random][otherwise if the player is upright]Hey! You should have told me you needed to mess yourself! I might have let you sit on my face...'[otherwise]'How does it feel knowing that you're as big a baby as I am?[end if][roman type][line break]";
	otherwise:
		if M is bratty adult baby slave, say "[BigNameDesc of M] smiles gently and pats your back.[line break][speech style of M]'[one of]Ewww, did you just soil your diaper? I thought you were a big girl! Maybe if you beg I'll change you... in exchange for some playtime!'[or]How did you manage to stinky your diaper before me? I'd be back in big girl panties WAY before you... if I wanted them anyway!'[or][NameBimbo] made a stiiinky~! [NameBimbo] made a stiiinky~! Wait until I tell mama what you did!'[or]Ohhhh, so THAT's what it means to be a big girl, you make even bigger dirty diapers!'[or]sniff sniff PU! I think I found the dirty diaper culprit!'[at random][roman type][line break]";
		otherwise say "[BigNameDesc of M] smiles gently and pats your back.[line break][speech style of M]'[one of]Don't feel too bad about messing your diaper. You might just be a big baby but at least we can be big babies together!'[or]Doesn't it feel really good to fill your diaper with hot mush? I love feeling the warm, squishy feeling spread around my diaper...'[or]If we go ask [daddytitle of matron], maybe [he of matron][']ll change us into each others['] diapers... Would you want to wear my messy diaper?'[at random][roman type][line break]";
	if voluntarySquatting is 1, obsceneHumiliate;
	otherwise severeHumiliate;
	if the player is modest, say "[variable custom style][if the player is able to speak]'Wait! This isn't normal for me! I'm not a baby!'[otherwise]I'm stuck in a loaded diaper and I can't even try to explain myself... What could I even say?[end if][roman type][line break]";
	otherwise say "You blush fiercely and avert your eyes, hearing [him of M] giggle as you do so.".

To compute MasturbationReaction of (M - an adult baby slave):
	say "[BigNameDesc of M] watches you with a naughty expression.";
	if M is friendly or M is uninterested:
		say "[speech style of M]'If you were in the mood to play, why didn't you say so?'[roman type][line break]It seems like [he of M] took your self-pleasure as an invitation, whether you intended it to be or not.";
		anger M;
		interest M;
		now the sex-length of M is 3.

To compute BabyChairReaction of (M - an adult baby slave):
	say "[BigNameDesc of M] looks at you and giggles.[line break][speech style of M]'[one of]Someone's trying way too hard to become teacher's pet!'[or]You want praise just for sitting on a chair? You're even more attention seeking than me!'[or]Did you sit on the babytalk seat? You big fat idiot!'[at random][roman type][line break]";
	moderateHumiliate.

To say MonsterOfferRejectFlav of (M - an adult baby slave) to (T - a diaper):
	say "[speech style of M]'I'm still happy with the one I've got, thanks!'[roman type][line break]".

To compute (M - a monster) stomping (N - an adult baby slave):
	if M is in the location of the player, say "The [N] screams as [he of N] sees [NameDesc of M]. [BigNameDesc of M] picks up the [N] with two hands and hugs [him of N] tight. [big he of M] is so big that [he of N] disappears behind [his of M] arms! As soon as [he of N] is out of sight, you hear [him of N] begin to scream. Moments later [NameDesc of M] lets [him of N] go, revealing that [he of N] is now... exactly the same? [BigNameDesc of N]'s screams have turned to giggles.[line break][second custom style]'That was fun! Again, again!'[roman type][line break][BigNameDesc of M] seems confused, and bonks [him of N] on the head with one carefully measured blow. [BigNameDesc of N] sighs softly and wets [himself of N] as [he of N] is knocked out.";
	now the sleep of N is 300.

To say LeftoverDesc (N - 123):
	say "An unconscious adult baby is lying here, with a very full diaper and a smile on [his of a random adult baby slave] face.".

To say DiaperCheckResultsDryForNowFlav of (M - an adult baby slave):
	say "[speech style of M]'[one of]Baby Waby foo foo, diapered up so thick! Dry and clean, so it seems, it has to be a trick!'[or]Haha, good joke, you must have literally just got a change, huh? There's no way you're tricking me, I know a pottypants when I see one!'[or]Why is this dry, [sissy slut]? Why would you waste a perfectly good diaper by not using it, huh?'[in random order][roman type][line break]".

To say DiaperCheckResultsDrynessProvedFlav of (M - an adult baby slave):
	say "[speech style of M]'[one of]Hmph fine, I guess you really don't need diapers after all. It's your own loss really, but I don't mind if you want to take it off now.'[or]I guess diapers really aren't for you. That's sad, but I guess it's only fair that I allow you to wear big [boy of the player] panties again... if that's what you really want.'[in random order][roman type][line break]".

To say DiaperCheckResultsDryWellDoneFlav of (M - an adult baby slave):
	say "[speech style of M]'[one of]Oh how boring, you haven't used it at all! Come on, surely you've got something in there that you can let out? For me?'[or]This can't be right, you feel completely dry! Are you sure you need diapers?'[or]Boo! You know the whole point of diapers it to make them nice and big and [if diaper messing >= 3]smelly[otherwise]soggy[end if], right?'[in random order][roman type][line break]".

To say DiaperCheckResultsMostlyDryFlav of (M - an adult baby slave):
	say "[speech style of M]'[one of]Uh-ohs, what is this? Tinkle spots are here! Just let it go, don't slow the flow, you don't have to fear!'[or]Aww, is this all you could do for me? Are you sure you don't have some more tinkles in there to really get this padding nice and soggy?'[or]Ooh, you've wet yourself a bit! I'm kinda disappointed it's not really full yet though. Come on, I know you've got more in there!'[in random order][roman type][line break]".

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
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]";
	if the current-errand of M is completed and M is not uniquely unfriendly:
		compute errand completion of M;
	otherwise if the class of the player is living sex doll:
		say "It doesn't look like [he of M]'s interested in you.";
		bore M;
	otherwise if M is bratty adult baby slave and the times-met of M is 0:
		say "[speech style of M]'Hey! I wanna play! Get down on your hands and knees and play with me!'[roman type][line break]It doesn't seem like [he of M]'s willing to take no for an answer.";
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
			say "[big he of M] swiftly walks up to you and holds [if diaper messing < 3]a hand to the front[otherwise]hands to the front and back[end if] of your crotch, pushing firmly to get a good feel.[line break][speech style of M]'Oi! I didn't give you one my favourite diapers just for you to take it off and waste it! You're in big trouble now, [bitch]!'[roman type][line break]";
			FavourDown M by 4;
			anger M;
	otherwise if M is unfriendly:
		say "[big he of M] eyes you mischievously and, compelled by some dark, childish impulse, [he of M] seems ready to pounce at you in a moments notice.";
		now the sex-length of M is 3;
	otherwise if M is top-wardrobe-malfunctioning:
		compute dq nip slip reaction of M;
	otherwise if the player is an adult baby:
		say "[speech style of M]'Oh my god! You're just too cute! [daddytitle of matron] has to see you later!'[one of][line break][variable custom style][daddytitle of matron]?[or][stopping][roman type][line break]";
		FavourUp M by 3;
	otherwise if there is a currently visible waddle diaper:
		say "[big he of M] looks you up and down and smiles.[line break][speech style of M]'Wow! I'm so jealous of your waddle diaper! I should ask [daddytitle of matron] to put me in one!'[roman type][line break]";
		FavourUp M by 2;
	otherwise if there is a currently visible cat themed diaper:
		say "[big he of M] looks you up and down and smiles.[line break][speech style of M]'Your kitty diaper is adorable! I wish mine was so pretty!'[roman type][line break]";
		FavourUp M by 1;
	otherwise if there is a currently visible diaper:
		say "[big he of M] looks you up and down and smiles.[line break][speech style of M]'Hey! Cute diaper!'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Hi!'[roman type][line break]".

To say DQNipSlipSeenFlav of (M - an adult baby slave):
	say "[speech style of M]'Nip-slip alert! Hmm, was that on purpose? Are you trying to turn me on? We can play, if you like...'[roman type][line break]".

To say BecomesBoredFlav of (M - an adult baby slave):
	say "[speech style of M]'I'm gonna go play somewhere else, [']kay? Bye!'[roman type][line break]Without another word, [NameDesc of M] gets down on [his of M] hands and knees and goes to crawl away.".

Part 3 - Protection

To compute (M - an adult baby slave) protecting against (X - a monster):
	if X is adult baby slave:
		say "[speech style of M]'Don't hurt my friend!'[roman type][line break][BigNameDesc of M] yells out at your attacker.";
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
		say "[speech style of M]'That's naughty! If you can't control your pee, you obviously need diapers! Let's see what [daddytitle of matron] has to say about this!'[roman type][line break]";
		interest M;
		now current-monster is M;
		now the ToMatron of M is 1;
		if the stance of the player is 0 and the ToMatron of M is 1:
			anger M;
		if the stance of the player is 1 and the ToMatron of M is 1:
			follow the adult baby slave shows you to mommy rule.

To say GroundPeeReaction of (M - an angelic adult baby slave):
	say "[speech style of M]'That's naughty! If you can't control your pee, you obviously need diapers!'[roman type][line break][big he of M] adopts an aggressive stance.";
	interest M;
	anger M.

To say ClothesPeeReaction of (M - an adult baby slave):
	say GroundPeeReaction of M.

This is the adult baby slave obeys guard rule:
	if there is an awake royal guard in the location of the player and the health of current-monster < the maxhealth of current-monster and the class of the player is not the princess:
		if the guard-obedience of current-monster is 1:
			if the number of spanking the player royal guards is 0:
				say "[one of][BigNameDesc of current-monster] continues to lie face down on the ground with [his of current-monster] hands behind [his of current-monster] head.[or][or][cycling]";
			otherwise:
				let M be a random spanking the player royal guard;
				if a random number between 1 and 3 is 1:
					say "[BigNameDesc of current-monster] [one of]submissively[or]diligently[or]quietly[or]obediently[at random] nuzzles [his of current-monster] cheek against [NameDesc of M][']s shoulder.";
				otherwise if face is not actually occupied and a random number between 1 and 3 is 1:
					say "[BigNameDesc of current-monster] kneels in front of you and plants an apologetic kiss [if the delicateness of the player < 7]on your cheek[otherwise]on your lips[end if]. You [if the delicateness of the player < 9]frown with humiliation[otherwise if the delicateness of the player < 13]blush, turning a pale shade of pink, your brain struggling to compute the combination of the pain in your [buttcheeks] and the loving tenderness of [NameDesc of current-monster] at the same time[otherwise]find yourself returning the kiss, turning pink with shy embarrassment as you do[end if].";
					moderateHumiliate;
				otherwise:
					say "[one of][BigNameDesc of M] barks an order.[line break][speech style of M]'You! Spank [him of the player] at the same time as me.'[roman type][line break][BigNameDesc of current-monster] looks at you and hesitates for only a brief moment, before bringing [his of current-monster] hand powerfully across your [buttcheeks]. It stings painfully![or][BigNameDesc of current-monster] giggles, slapping your [buttcheeks] roughly as [he of current-monster] does, purposefully hurting you.[or][BigNameDesc of current-monster] laughs with glee.[line break][speech style of current-monster]'Yes, yes! [big he of current-monster] started it! Spank [him of the player] harder!'[line break][speech style of M]'Silence!'[roman type][line break][BigNameDesc of M] sounds angry at [him of current-monster], but does as [he of current-monster] says, dealing even more brutal slap to your [buttcheeks].[then at random]";
					PainUp 10;
		otherwise:
			say "The [random royal guard in the location of the player] yells angrily.[line break][first custom style]'NO CAT-FIGHTING! [one of]GET ON THE GROUND NOW, BABIES[or]Assume the position, and I will administer your punishment[or]DOWN ON THE GROUND, [if the number of adult baby slaves in the location of the player > 1]ALL[otherwise]BOTH[end if] OF YOU[in random order]!'[roman type][line break]";
			repeat with M running through royal guards in the location of the player:
				anger M;
				interest M;
			repeat with M running through awake adult baby slaves in the location of the player:
				anger M;
				interest M;
				now the guard-obedience of M is 1;
				say "[BigNameDesc of M] [one of]obediently[or]instantly[or]silently[or]immediately[in random order] drops to the ground, and lying face down, assumes [one of]a submissive position with [his of M] hands behind [his of M] head, like a prisoner[or]the position[stopping].";
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
			say "[one of][line break][second custom style]'We're gonna go see [daddytitle of N]!'[roman type][line break][or][stopping]";
			drag to the target-room of M by M;
		if N is in the location of M:
			if the times-met of N < 1, say "[second custom style]'[NameBimbo], meet [daddytitle of N]! [big he of N]'s the best.'[line break]";
			otherwise say "[second custom style]'[daddytitle of N]! [NameBimbo] had an accident so [he of the player] needs diapers! That's the rule, right?!'[line break]";
			if the player is able to speak, say "[variable custom style]'[if the bimbo of the player < 8]Let me go!'[otherwise]Umm...'[end if]";
			say "[roman type][line break]";
			say "[BigNameDesc of M] dumps you in front of the [N] in this room, and then promptly skips away, humming to [himself of M] merrily, seemingly happy with [himself of M] for [his of M] 'good deed'.";
			now N is diaper-committed;
			now the ToMatron of M is -1;
			if N is friendly or N is uninterested, check perception of N;
			bore M;
			compute monstermotion of M;
		otherwise:
			say "[second custom style]'Oh, [he of N]'s not here. That's weird. Oh well, I guess we can wait for [him of N] here. I've got an idea of something we can do to pass the time...'[roman type][line break]";
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
	say "[BigNameDesc of M] walks over to you, rubbing the front of [his of M] diaper and staring down luridly into your eyes. [big he of M] stops rubbing long enough to push [his of M] diaper closer to your face, forcing you to inhale the sweet scent of baby powder.";
	if the ToMatron of M < 1 and diaper quest is 0, say "[one of][line break][speech style of M]'Looking forward to having my diaper on your face little [brother of the player]?'[roman type][line break][or]'Just the thought of your nose in my diaper makes me super wet... and not with pee. Not yet anyway.'[roman type][or]'I kinda have to use my diaper... I hope you don't mind if I do it on your face.'[roman type][or]'Would you forgive me if I wet my diaper on your face?... Might you even like it a little?'[roman type][or][if diaper messing >= 4]'Would you hate me forever if I messed my diaper on your face, because I really want to! Maybe you'll even like it.'[end if][line break][in random order]";
	strongHumiliate.

To say waitingflav of (M - an adult baby slave):
	if the player is not able to speak:
		say "[one of][line break][variable custom style][muffled sounds][roman type][line break][or]You look up at [NameDesc of M] silently.[at random]";
	otherwise if the diaper addiction of the player < 10:
		say "[one of]You find yourself in a state of disbelief at the realisation that your face is about to become the seat of some overgrown baby.[or]Your eyes glaze over as your brain can't comprehend the surreal situation you've found yourself in.[or][line break][first custom style]'You can't be serious...'[roman type][line break][or]You avert your eyes, praying to a god that you may or not believe in that [his of M] diaper remains clean.[or][line break][first custom style]'You can't do this to me!'[roman type][line break][or]You find yourself paralysed with disgust at the notion of [him of M] potentially using [his of M] diaper on your face.[in random order]";
	otherwise if the diaper addiction of the player < 14:
		say "[one of]While you wouldn't normally choose to have a diaper on your face, having this cutie's [vagina] so close to your mouth sounds pretty hot, even if there will be a couple of inches of padding between it and you.[or]You wait obediently, a large part of you actually looking forward to the humiliation at hand.[or][line break][variable custom style]'You can sit on my face, but please don't stay so long that you make me faint.'[roman type][line break][or][line break][variable custom style]'Just try not to use your diaper if you can help it.'[roman type][line break][or]Your heart starts racing as the thought of being so thoroughly dominated as to have this pampered little [boy of M] sit [his of M] diaper on your face.[in random order]";
	otherwise:
		say "[one of]You find yourself getting aroused purely form the idea of feeling [his of M] diaper on your face.[or]You wait obediently, more than happy to feel the rustle of [his of M] nappy against your face.[or][line break][variable custom style]'You can put that nappy on my face any time honey, but please don't stay so long that you make me faint.'[roman type][line break][or][line break][variable custom style]'Are you planning to use that whilst you're on top of me? That could be hot.'[roman type][line break][or]You can't wait to have that unique nappy smell filling your nostrils.[in random order]".

[A breathing blocking decision rule (this is the consider breathing through ABS padding rule):
	let M be a random adult baby slave penetrating face;
	if M is monster:
		say "Your nose and mouth is engulfed in [NameDesc of M][']s padding. ";
		now breathing-this-turn is false.]

A breathing consequences rule (this is the consequences for breathing through ABS padding rule):
	let M be a random adult baby slave penetrating face;
	if M is monster:
		say "You are forced to smell the pungent aroma of [NameDesc of M][']s soiled diaper.";
		let G be wetDiaperFacesitGrossnessLevel;
		if M is messy, now G is messyDiaperFacesitGrossnessLevel;
		SlowGrossOut G.

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
			set up sex length of M in face;
			if presented-orifice is face or M is friendly-fucking, say "You lay still, letting [him of M] plop [his of M] padded behind on your face. ";
			otherwise say MouthPenetrationFlav of M;
			compute diaper sit of M;
		otherwise:
			say "Though [he of M] continues [his of M] tickle-torture, you manage to keep [his of M] diaper away from your face. [big he of M] huffs and pouts at your resilience.";
			if B >= the difficulty of M * 2:
				say "[big he of M] gives up, ceasing [his of M] tickling and sits on the ground to pout. You are too resilient for [him of M] to tickle into utter submission. [big he of M] leaves you lying on the ground[if the body soreness of the player > 6] panting heavily,[end if] and loses interest.";
				bore M for 600 seconds.

To say MouthPenetrationFlav of (M - an adult baby slave):
	say "[BigNameDesc of M] rolls you onto your back[if M is bratty adult baby slave], pulls down [his of M] shorts,[end if] and sits on your face, burying it in layers of padding and plastic, adjusting [himself of M] to get comfortable on top of you, crinkling all the while. You can't breathe![line break][speech style of M]'[if diaper messing >= 6 and M is not messy][one of]Just to warn you, I need to poop. So I wouldn't take too long to make me cum down there if I were you...'[or]By the way, if you don't play ball, I might just mess myself while sitting on your face.'[in random order][otherwise][one of]You ready?'[or]This is gonna be fun!'[or]Your face feels pretty good against my diaper...'[in random order][end if][roman type][line break]".

To compute diaper sit of (M - a monster):
	say "You won't be able to breathe except through [his of M] padding until [he of M][']s finished with you! (You might want to consider using [bold type]['][link]hold breath[end link]['][roman type])";
	if sex-length of M < 3, now sex-length of M is 2;
	now M is filling face.

To compute facial sex of (M - an adult baby slave):
	if the reaction of the player > 0, severeHumiliate;
	TimesSubmittedUp M by 1;
	if the diaper addiction of the player >= 10:
		let N be the diaper addiction of the player / 5;
		passively stimulate face from M times N;
	if the reaction of the player > 0:
		say "[one of]You nuzzle the adult baby's diaper, doing your best to stimulate [him of M] through [his of M] padding and are rewarded with several moans and a speedier grind.[or]You press your nose deeply into [his of M] padding and rub where you imagine [his of M] engorged clit must be. The ecstatic response you receive would suggest that your guess was spot on.[or]As you do your best to speed along this process, several squirts of urine spray into [his of M] diaper, vibrating against your face and filling your nostrils with the scent of pee.[or]You try to focus on the sweet scent of the baby powder wafting into your nose as you do your best to rub your face against the adult baby's diaper in such a way to make [him of M] cum.[or]You deliver a series of quick kisses to [his of M] diapered groin, causing the [boy of M] above you to pant heavily.[in random order] [moderateHumiliateReflect]";
		decrease the sex-length of M by 1;
		SlowSexAddictUp 1;
	otherwise:
		say "[one of]You refuse to sit still as you are degraded like this! You struggle, failing to push [him of M] off you as [he of M] bounces [his of M] padded behind on your face. [or]You continue trying to fight [him of M], failing miserably to do any damage as [he of M] continues to grind [his of M] diapered bottom against you. [or]The only stimulation [he of M]'s going to get from you is pushing and muffled yelling! [or]You simply won't give in! At least if you pass out, you'll be able to look at yourself in the mirror. [in random order]";
		if diaper messing >= 7 and M is not messy and the player is getting unlucky:
			now the messTimer of M is adultBabyMessTimer;
			say "[line break][one of][speech style of M]'I did warn you what I'd do if you didn't help me cum...'[roman type][line break][BigNameDesc of M] stays true to [his of M] threat - [he of M] clenches [his of M] fists and purposefully unloads a large load of poop into [his of M] diaper, right on top of your face. You can literally feel it through the plastic as it exits [him of M], the gross mushy stuff oozing against your face through the plastic as it spreads throughout [his of M] padding.[or]You zone out and try to think about anything except the feeling of [NameDesc of M][']s genitals through [his of M] diaper, but you quickly come back to reality as you hear [him of M] grunt and feel a load of smelly mush push [his of M] diaper outward against your face. You gag and struggle as the garment continues to fill but ultimately find yourself unable to gain the leverage to overcome [him of M]. You simply accept your fate as [he of M] giggles between moans, humping your face with [his of M] dirty diaper[if the player is not tolerating messy facesits]. Perhaps you should have heeded [his of M] warning after all[end if].[in random order]";
			if the player is air breathing vulnerable, SmellGrossOut messyDiaperFacesitGrossnessLevel;
			DelicateUp 1;
		otherwise:
			if a random number between 1 and 3 > 1:
				say "[BigNameDesc of M] keeps grinding [his of M] diaper on your face anyway!";
				decrease the sex-length of M by 1;
			otherwise:
				say "[BigNameDesc of M] holds still, smothering you with [his of M] diaper.[line break][speech style of M]'[one of]You okay down there?'[or]Come on, don't be a dumb-dumb!'[or]Hellooooo?'[or]Come on, help me cum already!'[in random order][roman type][line break]";
	if there is a worn diaper:
		if there is a worn perceived messed diaper:
			say "[BigNameDesc of M] [one of]thoroughly rubs and mashes[or]lovingly massages[stopping] your messy diaper with [his of M] hands.[line break][speech style of M]'[one of]Do you like wearing messy diapers too? I thought I was alone in that!'[or]Don't you love the way they squish when they're dirty?'[or]Is it weird that I like the scent of your messy nappy?'[or]Got any more in your bowels? I think it'd be pretty hot if we messed our diapers at the same time, especially while I sit on your face.'[stopping][roman type][line break]";
		otherwise:
			say "[BigNameDesc of M] lovingly rubs your diaper[one of] from [his of M] advantageous position[or][stopping].[line break][speech style of M]'[one of]I love how nice the outside of a nappy feels against my skin... What do you think?'[or]Do you think you could use your nappy for me? Pretty [please] with sugar on top?'[or]You know, it would make me really happy if you used your diaper for me...'[or]You know, I might cum faster if you use your diaper... That would be a pretty big turn-on.'[or]If you get stuck here forever and ever, I'll let you be my little [brother of the player].'[stopping][roman type][line break]";
		stimulate vagina from M.

To compute facial climax of (M - an adult baby slave):
	if the reaction of the player > 0, severeHumiliate;
	TimesSubmittedUp M by 1;
	now M is not filling face;
	say "A screaming orgasm overcomes [NameDesc of M]. You feel [his of M] cum squirt into [his of M] diaper, followed by a [if diaper messing >= 7]loud squelching sound as [he of M] empties [his of M] bladder and bowels against your face. The scent is overwhelming and you can literally feel the warm mush against your face[otherwise]long hissing sound as [he of M] empties [his of M] bladder against your face. The scent of pee is overwhelming[end if]. Once [he of M]'s done, a yawn leaves [his of M] lips and [he of M] rolls over, sticking [his of M] thumb into [his of M] mouth and closing [his of M] eyes.[line break][speech style of M]'Ni-ni...'[roman type][line break]";
	compute M sleeping 400 after sex;
	if newbie tips is 1, say sleeping tip;
	FavourUp M;
	orgasm bore M.

To compute (M - an adult baby slave) entering anally:
	if diaper messing >= 4:
		compute suppository of M;
	otherwise:
		say "[BigNameDesc of M] looked like [he of M] was about to do something, but then [he of M] stopped because [he of M] realised that you haven't enabled the right fetish. This shouldn't have happened, please report the bug!";
		bore M.

This is the adult baby slave monster convinced rule:
	let M be current-monster;
	if presented-orifice is face:
		say "[BigNameDesc of M] sees your request and smiles brightly.[line break][speech style of M]'Yay! I would've used your face either way but it makes me really happy that you want to too!'[roman type][line break]";
		now the chosen-orifice of current-monster is face;
		rule succeeds;
	if presented-orifice is asshole and diaper messing >= 3 and rectum > 0 and (the number of worn knickers is 0 or diaper messing >= 5):
		say "[BigNameDesc of M] sees your request and grins.[line break][speech style of M]'Mmm, Okay... I think I have something in mind.'[roman type][line break]";
		now the chosen-orifice of current-monster is asshole;
		rule succeeds;
	otherwise if presented-orifice is not nothing:
		say "[BigNameDesc of M] sees your request and shakes [his of M] head.[line break][speech style of M]'Mmmm... Nuh uh!'[roman type][line break]".
The monster convinced rule of an adult baby slave is usually the adult baby slave monster convinced rule.

To say PresentFriendlyAcceptanceFlav of (M - an adult baby slave):
	if presented-orifice is face:
		say "[speech style of M][one of]'That sounds like lot'sa fun!'[or]'Yay! I get to play with my best friend!'[or]'Like a play-date? Sounds fun!'[or]'Yeah! ...I might have to use my diaper though.'[at random][roman type][line break]";
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
	say "Ouch[one of]! [big he of M] hits pretty hard for such a baby[or][or][or][or][or][or][or][cycling]!".

To say StrikingFailureFlav of (M - an adult baby slave) on (B - a body part):
	say "[StrikingFlav of M on B]";
	say "That slap wasn't too bad[one of] - but that's what you'd expect from a [man of M] in Pampers[or][or][or][or][or][or][cycling].".

To compute (S - a spike bra) damaging (M - an adult baby slave):
	say "[BigNameDesc of M] has visibly hurt [himself of M] by slapping the spikes of your [printed name of S]!";
	decrease the health of M by 4.

Section 2 - DQ

Definition: an adult baby slave is willing to donate diapers:
	if a random number between 1 and 3 > 1, decide no;
	decide yes.

Definition: an adult baby slave is diaper disciplining: decide yes.

Definition: an adult baby slave is willing to deliver enemas: decide yes.

[Currently the enema flavour won't happen as it's overridden by the suppository code.]

To say EnemaDeclarationFlav of (M - an adult baby slave):
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

To say DQMasturbationResistReactionFlav of (M - an adult baby slave):
	say "[BigNameDesc of M] giggles.[line break][speech style of M]'[one of]Hehe, you're like the BEST horsey ride ever, giddy up diaper butt!'[or]Does that mean I'm doing it right? Ohh I'll rub HARDER then!'[or]You're gonna make a creamie, you're gunna make a creaamie!'[or]Ya know silly, if you keep rocking like that... I'm gonna go potty!'[or]Hehehe, I can barely feel you! You're bad at this game!'[in random order][roman type][line break]".

Definition: an adult baby slave (called M) is eager to deliver enemas:
	if diaper messing < 4, decide no;
	if M is able to deliver enemas, decide yes;
	decide no.

To compute enema of (M - an adult baby slave):
	compute suppository of M.

To say DiaperChangeStart of (M - an adult baby slave):
	say "[speech style of M]'[if there is a worn diaper]Don't you know it's bad for your health to spend too long in a used diaper?'[otherwise]I think it's quite important that you wear a diaper.'[end if][roman type][line break][BigNameDesc of M] pushes you onto your back, and pulls your legs up into the air in a classic diaper changing position.".

To say DiaperChangeComment of (M - an adult baby slave):
	say "[speech style of M]'Doesn't that feel soooo comfy?'[roman type][line break]".

To say MercyReaction of (M - an adult baby slave):
	say "Your attempts to beg are muffled by the adult baby's diaper on your face!".

The adult baby slave continue sex rules is a rulebook. The continue sex rules of an adult baby slave is usually the adult baby slave continue sex rules.

This is the adult baby slave extra continue sex check rule:
	follow the check normal continue sex stuff rule;
	if the rule succeeded, rule succeeds;
	if current-monster is penetrating face:
		compute punishment of ab-diaper-facesit;
		rule succeeds.
The adult baby slave extra continue sex check rule is listed in the adult baby slave continue sex rules.

ab-diaper-facesit is a diaper punishment. The priority of ab-diaper-facesit is 2.
Definition: ab-diaper-facesit is appropriate:
	if current-monster is not adult baby slave and (current-monster is not ex-princess or ex-princess is not unleashed), decide no;
	if current-monster is penetrating face, decide yes;
	if the player is immobile, decide no;
	decide yes.

To say EnticeFlav of (M - a monster) for (P - ab-diaper-facesit):
	if M is intelligent, say "[line break][speech style of M]'[one of]You WANT me to sit this diaper on your face, don't try to deny it! Just get on your back and let it happen...'[or]Why fight me when you can just get on the ground and let me sit on your face?'[in random order][roman type][line break]";
	otherwise say "[big he of M] gestures that [he of M] wants to sit on your face.".

To decide which number is the relevant addiction of (P - ab-diaper-facesit):
	if current-monster is messy, decide on the grossness addiction of the player - 6;
	decide on the grossness addiction of the player.

To compute punishment of (P - ab-diaper-facesit):
	let M be current-monster;
	if M is penetrating face:
		if the rounds of sex left of M <= 0:
			compute facial climax of M;
			orgasm M;
		otherwise:
			compute facial sex of M;
	otherwise:
		say MouthPenetrationFlav of M;
		compute diaper sit of M.

adult-baby-matron-drag is a diaper punishment. The priority of adult-baby-matron-drag is 5.

To say EnticeFlav of (M - a monster) for (P - adult-baby-matron-drag):
	say "[line break][speech style of M]'We don't have to fight! Just get on your knees, and let me take you to [daddy of matron]!'[roman type][line break]".

To decide which number is the relevant addiction of (P - adult-baby-matron-drag):
	decide on the bimbo of the player.


Definition: adult-baby-matron-drag is appropriate:
	if current-monster is not adult baby slave, decide no;
	if current-monster is eager to feed to master, decide yes;
	decide no.

To compute punishment of (P - adult-baby-matron-drag):
	follow the adult baby slave shows you to mommy rule.




adult-baby-diaper-swap is a diaper punishment. The priority of adult-baby-diaper-swap is 4.

To say EnticeFlav of (M - a monster) for (P - adult-baby-diaper-swap):
	say "[line break][speech style of M]'Ooh, don't you want to know what it feels like to wear this big full diaper? It's soooo warm and squishy...'[roman type][line break]".

To decide which number is the relevant addiction of (P - adult-baby-diaper-swap):
	decide on the grossness addiction of the player.

Definition: adult-baby-diaper-swap is appropriate:
	if diaper swapping < 3, decide no;
	if current-monster is not adult baby slave, decide no;
	if current-monster is messy:
		let D be a random worn diaper;
		if D is diaper:
			if D is diaper-stack, decide no;
			repeat with N running through things grabbing the player:
				if N is not current-monster, decide no;
			if D is unmessed and D is easy to remove, decide yes;
	decide no.

To compute punishment of (P - adult-baby-diaper-swap):
	now current-diaper is nothing;
	now new-diaper is a random off-stage huge diaper;
	if new-diaper is nothing, now new-diaper is a random off-stage large diaper;
	if new-diaper is nothing, now new-diaper is a random eligible diaper;
	if new-diaper is nothing, now new-diaper is a random unworn disposable diaper; [failsafe]
	let M be current-monster;
	now M is grabbing the player;
	while M is grabbing the player:
		now current-diaper is a random top level protection clothing; [Top level takes priority]
		if current-diaper is nothing, now current-diaper is a random worn crotch covering clothing;
		if current-diaper is worn no protection overdress, now current-diaper is nothing; [These are allowed to stay around!]
		if (current-diaper is nothing or current-diaper is chastity bond) and there are worn knickers, now current-diaper is a random worn knickers; [All knickers MUST be removed]
		if (current-diaper is nothing or current-diaper is chastity bond) and there is a worn tail plug, now current-diaper is a random worn tail plug;
		if current-diaper is unremovable clothing:
			say "[speech style of M]'I can't remove that [ShortDesc of current-diaper]. Damn, I guess I'll have to leave you like this, for now.'[roman type][line break]";
			dislodge M;
		otherwise if current-diaper is clothing and current-diaper is not chastity bond:
			now old-diaper is current-diaper;
			if current-diaper is crotch-zipped clothing and current-diaper is not knickers and (there is a worn crotch-tie-up knickers or the number of worn knickers is 0):
				say UnzipFlav of M at current-diaper;
				ZipDown current-diaper;
			otherwise if current-diaper is displacable and current-diaper is not knickers and current-diaper is not glued:
				compute M displacing current-diaper;
			otherwise if current-diaper is locked:
				compute M unlocking current-diaper;
			otherwise if current-diaper is not diaper:
				say DiaperChangeRemovalFlav of M;
				now M is carrying current-diaper;
				dislodge current-diaper;
				now current-diaper is temporarily-removed; [NPC will try to put this back on afterwards]
			otherwise:
				say "[BigNameDesc of M] removes your [ShortDesc of current-diaper], and [his of M] own [new-diaper]. [big he of M] sets about [if current-diaper is disposable diaper]taping[otherwise]pulling[end if] [NameDesc of current-diaper] up onto [his of M] body, and then focuses on you, forcing [his of M] full, messy [ShortDesc of new-diaper] onto your own crotch. The thoroughly-soaked padding, not only saturated by [NameDesc of M][']s [urine] but also full to the brim with [his of M] foul mess, is pressed against your skin, where it oozes and squelches against it.";
				now M is wearing current-diaper;
				summon new-diaper uncursed;
				MessUp new-diaper by 20;
				UrineSoakUp new-diaper by the soak-limit of new-diaper;
				GrossOut 12;
				dislodge M;
				say "[speech style of M]'There we go, that's much better. Enjoy~'[roman type][line break][BigNameDesc of M] sings happily, as [he of M] rubs the front of both of your diapers.";
		otherwise:
			say "[speech style of M]'Huh? Where did your diaper go?! Damn, I guess I'll have to leave you like this, for now.'[roman type][line break]";
			dislodge M;
	trigger change-wisp-trigger;
	repeat with C running through temporarily-removed diaper covers carried by M: [diaper covers need to go on first]
		if C is actually summonable:
			say "[BigNameDesc of M] replaces your [C].";
			now C is worn by the player;
	repeat with C running through temporarily-removed clothing carried by M:
		if C is actually summonable:
			say "[BigNameDesc of M] replaces your [C].";
			now C is worn by the player;
	repeat with C running through worn crotch-displaced clothing:
		compute M replacing C;
	validate layers; [just in case anything fucky happened with clothing layers]
	satisfy M;
	let vm be a random video-monitor in the location of the player;
	if vm is video-monitor and the video-caller of vm is not the throne and vm is not recording-disgrace:
		now vm is recording-disgrace; [since diaper event is over now, we need to set up the recorded event right away.]
		let T be the substituted form of "having your diaper changed into the [MediumDesc of M][']s already messy one."; [note that the video-event always needs to be a present participle]
		now the video-event of vm is T;
	increase the times-changed of M by 1;
	if diaper quest is 1, progress quest of naughty-quest.



Definition: an adult baby slave (called M) is eager to feed to master:
	let N be a random alive matron;
	unless playerRegion is Hotel and N is monster and the ToMatron of M >= 0, decide no;
	if the ToMatron of M is 1 or the times-met of N < 1, decide yes;
	decide no.

To say SuppositoryDeclarationFlav of (M - an adult baby slave):
	say "[if presented-orifice is asshole or M is friendly-fucking]You stick your ass out in the direction of [NameDesc of M], waiting to see[otherwise][BigNameDesc of M] has a very evil look in [his of M] eyes, and you are concerned about[end if] what [he of M] has in mind. ".

To say SuppositoryFlav of (M - an adult baby slave):
	say "[BigNameDesc of M] sticks [his of M] finger inside of your rectum, though it doesn't seem to be alone! Once the finger is all the way up there [he of M] twists it around several times before pulling it back out, causing you to gasp[if the sex addiction of the player <= 7] with shock[end if][if the sex addiction of the player >= 5], and moan with arousal[end if].[line break][speech style of M]'I thought you could use a messy diaper, so I just gave you a suppository. These things are pretty fast acting, so it shouldn't be long now...'[roman type][line break]".

To say SuppositoryAftermath of (M - an adult baby slave):
	if there is a worn diaper or there is a diaper carried by M: [If there's a retained diaper, she's about to replace it.]
		say "[big he of M] wasn't kidding! You double over in agony as the first cramp overcomes you.";
	otherwise:
		compute diaper change of M;
	if the anal sex addiction of the player > 6, arouse 100.

To say SuppositoryAfterFlav of (M - an adult baby slave):
	say "[speech style of M]'You'll thank me later, I promise!'[roman type][line break]".

Section 3 - Damage

To compute damage reaction of (M - an adult baby slave):
	if M is awake:
		if M is uninterested or M is friendly:
			say "The [boy of M] looks shocked.[line break][speech style of M]'[one of]Hey! I'll tell [daddytitle of matron] on you![or]Stop! That hurts!'[or]I'm gonna make you pay for this!'[at random][roman type][line break]";
			now the sex-length of M is 3;
		otherwise:
			say DamageReaction (the health of M) of M;
			if a random number between 1 and 3 is 1, increase the sex-length of M by 1;
	otherwise:
		decrease the sleep of M by 300;
		if the health of M < the maxhealth of M / 2, now the sleep of M is 0;
		if the sleep of M < 0, now the sleep of M is 0;
		if the sleep of M is 0:
			say "[big he of M] wakes up, yelping and rubbing [his of M] eyes groggily before registering that you hit [him of M], leaping at you with rage once [he of M] makes the connection between you and [his of M] new pain.";
			now the sex-length of M is a random number between 3 and 4;
			interest M;
			anger M;
		otherwise:
			say "[big he of M][']s still sleeping like a baby.".

To say DamageReactHealthy of (M - an adult baby slave):
	say "[big he of M] blows a raspberry in the air at you... What a brat!".

To say DamageReactDamaged of (M - an adult baby slave):
	say "[big he of M] looks like [he of M][']s contemplating biting you.".

To say DamageReactTired of (M - an adult baby slave):
	say "[big he of M] looks like [he of M] wants to cry but [he of M][']s holding it together surprisingly well for [his of M] maturity level.".

To say DamageReactWeak of (M - an adult baby slave):
	say "[big he of M] looks like [he of M][']s ready to burst into tears!".

To say BanishFleeFlav of (M - an adult baby slave):
	say "[BigNameDesc of M] cries as [he of M] flees, tripping and falling to the floor more than once on the way out.".

To compute unique banishment of (M - an adult baby slave):
	add M to new-acolytes.

To compute tax return of (M - an adult baby slave):
	if M is choice-taxable:
		compute choice tax return of M;
	otherwise:
		let D be a random off-stage eligible diaper;
		if D is a thing and the number of in-play identified confidence diapers is 0:
			say "[speech style of M]'Okay... You can have my most favourite diaper.'[roman type][line break][BigNameDesc of M] drops a clean diaper in front of you.";
			blandify and reveal D;
			now D is blessed;
			now the raw-magic-modifier of D is 0;
			now D is confidence;
			now D is in the location of the player;
			compute autotaking D;
			say "[speech style of M]'Meanie.'[roman type][line break]";
		otherwise:
			compute default tax return of M.

Part 4 - Conversation

To say IdentifiablePosterReactionFlav of (M - an adult baby slave):
	say "[BigNameDesc of M] looks at you, blinks, then looks back to the poster. Upon realising that the person in the poster is you, [he of M] starts smiles seductively in your direction.[line break][speech style of M]'You know, you look pretty cute up there.'[roman type][line break]".

To say UnidentifiablePosterReactionFlav of (M - an adult baby slave) with (P - a poster):
	say "[speech style of M]'Whoever that is, [he of P] seems pretty cute. I'd love to shove [his of P] face into my diaper.'[roman type][line break]".

To say RewardFlav of (M - an adult baby slave) for (T - a thing):
	say "[speech style of M]'Do you want this? I found it.'[roman type][line break][BigNameDesc of M] pulls a [T] out of [his of M] diaper and drops it on the ground in front of you.".

To say OfferFriendshipFlav of (M - an adult baby slave):
	say "[speech style of M][if M is guardian]'Do you wanna go fight tha bad guys together[otherwise if M is ally]'Do you wanna adventure together for a while[otherwise if M is buddy]'Are we best friends now[otherwise if M is acquaintance]'Are we becoming friends[otherwise]'Maybe you're not as much of a doo-doo-head as I thought[end if]?'[roman type][line break]".

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
	if the class of the player is princess and M is bride-consort:
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
		say "[variable custom style]'Mmm... Mm-hmm!'[roman type][line break]";
	say "[speech style of M]'[one of]Your face feels amazing against my diaper!'[or]I think I'm gonna pee!'[or]How does my diaper taste?'[or]You're making an awful lot of noise down there, baby.'[or]It feels really good when you muffle against my diaper!'[at random][roman type][line break]".

To say InvitationResponse of (M - an adult baby slave) with (N - a monster):
	FavourDown M;
	FavourDown N;
	say InvitationRejected of M with N.

To say InvitationAccepted of (M - an adult baby slave) with (N - a monster):
	say "[speech style of M]'Oh I'll help you all right.'[roman type][line break]".

To say InvitationRejected of (M - an adult baby slave) with (N - a monster):
	say "[speech style of M]'You seem busy. We'll play later.'[roman type][line break]".

To say AssistanceResponse of (M - an adult baby slave) with (N - a monster):
	say InvitationResponse of M with N.

Section 2 - Questioning

To say WhereAnswer of (M - an adult baby slave):
	if M is in the hotel, say "[speech style of M]'[one of]We're in a hotel with a bunch of big toys that feed you or change you... And, of course, [daddytitle of matron]'s here.'[or]I already told you! We're in a hotel. It's like a vacation!'[or]I said I already told you 'bout where we are!'[stopping][roman type][line break]";
	otherwise say "[speech style of M]'[one of]We're in a big world full of Mommies and Daddies that want to keep us in diapers. It's the best!'[or]I already told you! We're in a magical diaper world. It's like the best place ever!'[or]I said I already told you 'bout where we are!'[stopping][roman type][line break]".

To say WhoAnswer of (M - an adult baby slave):
	if M is in the hotel, say "[speech style of M]'I'm one of [daddytitle of matron]'s slaves. It's actually pretty fun! You should be one'a [his of matron] slaves too!'[roman type][line break]";
	otherwise say "[speech style of M]'I'm your new best friend!'[roman type][line break]".

To say StoryAnswer of (M - an adult baby slave):
	say "[speech style of M]'[one of]Well, I used to be a big [boy of M]. Then, I tried out some video game where I met [daddytitle of matron] and [he of matron] taught me that I was never really a big [boy of M] all along.'[or]For a while, I really thought I was a grown-up. [daddytitle of matron] showed me that wasn't true.'[or]Let's see... I played a video game, I met [daddytitle of matron] and then I became [his of matron] baby and I've never been happier!'[or]Hm... I think I used to work on making some sorta game... I forgotted about that. Oh well!'[as decreasingly likely outcomes][roman type][line break]".

To say EscapeAnswer of (M - an adult baby slave):
	if M is in the hotel, say "[speech style of M]'You can leave the hotel any time you'd like from the front entrance but why would you want to when [daddytitle of matron] and me are here? Plus there are all of the big toys!'[roman type][line break]";
	otherwise say "[speech style of M]'You can leave the dungeon any time you'd like by going up the stairs. And you should, because upstairs you can meet [daddytitle of matron]!'[roman type][line break]".

To say AdviceAnswer of (M - an adult baby slave):
	if M is in the hotel, say "[speech style of M]'[one of]The toys here can be pretty helpful but they don't listen too good when you tell them no. As long as your tummy is full and you're dressed, they'll usually leave you alone though.'[or]Hm... [daddytitle of matron] says you'll forget how to take your diaper off if you leave it on for too long. That happened to me. But, [daddytitle of matron]'ll always change you if you need it!'[at random][roman type][line break]";
	otherwise say "[speech style of M]'[one of]If you want to make sure that the people here take good care of you, dress like a baby or like a slut. If you wear normal grown up clothes, they'll leave you alone, which is boring.'[or]Crawling around is a good way to make sure that you can't fight back when a Mommy or Daddy comes to punish you. But the sad thing is that being on your knees means most traps won't be able to affect you, which is always disappointing...'[at random][roman type][line break]".

To compute teaching of (M - an adult baby slave):
	say "[speech style of M]'If someone is mean to you, try crying and asking them not to hurt you really nicely. People will leave you alone most of the time.'[roman type][line break]";
	teach begging for mercy.

Section 3 - Drink Requesting

To compute unfriendly drink of (M - an adult baby slave):
	if M is unfriendly:
		say "[speech style of M]'Drink my pee diaper, dumbie!'[roman type][line break]";
		now the boredom of M is 0;
	otherwise:
		say "[speech style of M]'Go ask [if M is in the hotel][daddytitle of matron][otherwise]a mommy or daddy[end if].'[roman type][line break]".

To compute friendly drink of (M - an adult baby slave):
	compute unfriendly drink of M.

Adult Baby Slave ends here.
