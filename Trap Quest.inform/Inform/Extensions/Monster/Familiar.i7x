Familiar by Monster begins here.

familiar is a monster. familiar is intelligent. familiar is unconcerned. Understand "succubus" as familiar.
familiar can be waiting-for-defeat.
familiar can be not-searching, bandage-searching, food-searching, drink-searching or lube-searching (this is the familiar-searching property).
familiar has a number called stored-sex-addiction.
familiar has a number called stored-anal-sex-addiction.
familiar has a number called stored-vaginal-sex-addiction.
familiar has a number called stored-oral-sex-addiction.
familiar has a number called stored-titfuck-addiction.
familiar has a number called stored-grossness-addiction.
familiar has a number called stored-semen-addiction.
familiar has a number called stored-semen-taste-addiction.
familiar has a number called stored-urine-taste-addiction.
familiar has a number called stored-milk-taste-addiction.
familiar has a number called stored-bbc-addiction.

familiar has a number called arousal.

familiar has a number called face-semen-volume.
familiar has a number called face-urine-volume.
familiar has a number called face-milk-volume.
To decide which number is the total face volume of (M - familiar):
	decide on the face-semen-volume of M + the face-urine-volume of M + the face-milk-volume of M.
To FaceEmpty (M - familiar):
	now the face-semen-volume of M is 0;
	now the face-urine-volume of M is 0;
	now the face-milk-volume of M is 0.
To say FamiliarMouthfulSwallow:
	if the total face volume of familiar > 0:
		say "[BigNameDesc of familiar] gulps down the mouthful of liquid [he of familiar] was holding.[line break]";
		FaceEmpty familiar.

familiar has a number called vagina-volume.
familiar has a list of monsters called inseminating-list.
familiar has a number called ass-volume.
familiar has a number called preg-progress.
familiar has a number called previous-preg-progress.
To decide which number is the total belly volume of (M - familiar):
	decide on the vagina-volume of M + the ass-volume of M + (5 * the preg-progress of M).
To decide which number is the belly size of (M - familiar):
	decide on the total belly volume of M / 5.


To say speech style of (M - familiar):
	say FamiliarMouthfulSwallow;
	say second custom style.

The text-shortcut of familiar is "succ".
Figure of familiar coy is the file "NPCs/MultiFloor/Succubus/succubus1.jpg".
Figure of familiar boop is the file "NPCs/MultiFloor/Succubus/succubus2.jpg".
Figure of familiar rear is the file "NPCs/MultiFloor/Succubus/succubus3.jpg".
Figure of familiar boob is the file "NPCs/MultiFloor/Succubus/succubus4.jpg".
Figure of familiar present is the file "NPCs/MultiFloor/Succubus/succubus5.jpg".
Figure of familiar belly 1 is the file "NPCs/MultiFloor/Succubus/succubus6.jpg".
Figure of familiar belly 2 is the file "NPCs/MultiFloor/Succubus/succubus7.jpg".
Figure of familiar belly 3 is the file "NPCs/MultiFloor/Succubus/succubus8.jpg".
Figure of familiar belly 4 is the file "NPCs/MultiFloor/Succubus/succubus9.jpg".
Figure of familiar belly 5 is the file "NPCs/MultiFloor/Succubus/succubus10.jpg".
Figure of familiar belly 6 is the file "NPCs/MultiFloor/Succubus/succubus11.jpg".

To decide which figure-name is the monster-image of (M - familiar):
	decide on figure of familiar rear.
To decide which figure-name is the friendly-monster-image of (M - familiar):
	decide on Figure of familiar boob.
To decide which figure-name is the unfriendly-monster-image of (M - familiar):
	decide on Figure of familiar coy.


To decide which figure-name is the examine-image of (M - familiar):
	unless the temporary-image of M is figure of no-image-yet, decide on the temporary-image of M;
	if the belly size of M >= 1:
		if the preg-progress of M >= 5, decide on Figure of familiar belly 6;
		if the preg-progress of M >= 4, decide on Figure of familiar belly 5;
		if the preg-progress of M >= 3, decide on Figure of familiar belly 4;
		if the preg-progress of M >= 2, decide on Figure of familiar belly 3;
		decide on Figure of familiar belly 1;
	if M is defeated:
		let F be the pacified-image of M;
		unless F is figure of Missing NPC, decide on F;
	let F be the sex-profile of M;
	unless F is figure of Missing NPC, decide on F;
	decide on the non-sex-profile of M.

To say ShortDesc of (M - familiar):
	say "familiar".

To say MediumDesc of (M - familiar):
	say "succubus familiar".

To say MonsterDesc of (M - familiar):
	say "This purple, humanoid, horned demon has some killer curves, giving [him of M] the most impossibly impressive hourglass shape. [big he of M] has a slutty, vacant expression, and a demonic tail that eagerly swishes behind [him of M].";
	if debuginfo > 0, say "[input-style]Arousal [arousal of M][roman type][line break]";
	if the total face volume of M > 0, say "[if the total face volume of M > 3][BigNameDesc of M][']s cheeks are bulging, full of some kind of liquid[otherwise]It looks like [he of M] has something in [his of M] mouth[end if].";
	if the vagina-volume of M > 1, say "There is a trickle of [semen] leaking out of [his of M] pussy.";
	if the belly size of M > 0:
		if the preg-progress of M >= 5:
			say "[BigNameDesc of M] has an obscenely huge pregnant belly. [big he of M] must be about to give birth soon.";
		otherwise if the preg-progress of M >= 4:
			say "[BigNameDesc of M] is heavily pregnant. [big he of M] looks close to full term.";
		otherwise if the preg-progress of M >= 3:
			say "[BigNameDesc of M] is heavily pregnant.";
		otherwise if the preg-progress of M >= 2:
			say "[BigNameDesc of M] has lost [his of M] corset and is visibly in the third trimester of a pregnancy.";
		otherwise:
			say "[BigNameDesc of M][']s belly looks extremely full...";

To say MonsterComment of (M - familiar):
	if M is unconcerned, say "[line break][variable custom style]I can sense that [he of M] has some kind of spiritual connection to me, almost like [he of M][']s a part of me. But something tells me that [he of M][']s not just gonna do whatever I say...[roman type][line break]".

Definition: familiar is presenting as male:
	if lady fetish is 2, decide yes;
	decide no.

To set up (M - familiar):
	if the player is a march 2026 top donator:
		now the monstersetup of M is 1;
		now the raw difficulty of M is the raw strength of the player / 2;
		now the health of M is the maxhealth of M;
	otherwise:
		say "ERROR - you do not have the correct alpha tester subscription to get access to this experimental NPC yet. It has been removed from play.";
		remove M from play.

To compute familiar arrival:
	say "[bold type]You feel some of your essence being sucked out of you! [if the player is upright]You are now on your knees.[end if][roman type][line break]You feel less... Everything! Less like a pervert, [if the raw anal sex addiction of the player > 1]less keen on anal sex, [end if][if the player is possessing a vagina and the raw vaginal sex addiction of the player > 1]lower craving for vaginal sex, [otherwise if the raw vaginal sex addiction of the player > 1]lower desire to change sex, [end if][if the raw oral sex addiction of the player > 1]less positive about the idea of sucking dick, [end if][if the raw titfuck addiction of the player > 1]lowered keenness to let [men of male-m] fuck your tits, [end if][if the raw grossness addiction of the player > 1 or the raw semen taste addiction of the player > 1 or the raw urine taste addiction of the player > 1 or the raw milk taste addiction of the player > 1]more disgust for gross smells and tastes, [end if]and [if the flesh volume of breasts >= the real flesh volume of breasts and the thickness of hips >= the real thickness of hips]where it's able to, your body shrinks to become less feminine (your breasts and hips appear to be stuck at their current size, and unable to shrink any further)[run paragraph on][otherwise if the flesh volume of breasts >= the real flesh volume of breasts]where it's able to, your body shrinks to become less feminine (your breasts appear to be stuck at their current size, and unable to shrink any further)[run paragraph on][otherwise if the thickness of hips >= the real thickness of hips]where it's able to, your body shrinks to become less feminine (your hips appear to be stuck at their current thickness, and unable to shrink any further)[run paragraph on][otherwise]your body significantly shrinks to become much less curvy[end if][if the lips of face > 0]. Even your lips have returned to normal[end if]!";
	now the stored-sex-addiction of familiar is the raw sex addiction of the player / 2;
	decrease the raw sex addiction of the player by the raw sex addiction of the player / 2;
	now the stored-anal-sex-addiction of familiar is the raw anal sex addiction of the player / 2;
	decrease the raw anal sex addiction of the player by the raw anal sex addiction of the player / 2;
	now the stored-vaginal-sex-addiction of familiar is the raw vaginal sex addiction of the player / 2;
	decrease the raw vaginal sex addiction of the player by the raw vaginal sex addiction of the player / 2;
	now the stored-oral-sex-addiction of familiar is the raw oral sex addiction of the player / 2;
	decrease the raw oral sex addiction of the player by the raw oral sex addiction of the player / 2;
	now the stored-titfuck-addiction of familiar is the raw titfuck addiction of the player / 2;
	decrease the raw titfuck addiction of the player by the raw titfuck addiction of the player / 2;
	now the stored-grossness-addiction of familiar is the raw grossness addiction of the player / 2;
	decrease the raw grossness addiction of the player by the raw grossness addiction of the player / 2;
	now the stored-semen-addiction of familiar is the raw semen addiction of the player / 2;
	decrease the raw semen addiction of the player by the raw semen addiction of the player / 2;
	now the stored-semen-taste-addiction of familiar is the raw semen taste addiction of the player / 2;
	decrease the raw semen taste addiction of the player by the raw semen taste addiction of the player / 2;
	now the stored-urine-taste-addiction of familiar is the raw urine taste addiction of the player / 2;
	decrease the raw urine taste addiction of the player by the raw urine taste addiction of the player / 2;
	now the stored-milk-taste-addiction of familiar is the raw milk taste addiction of the player / 2;
	decrease the raw milk taste addiction of the player by the raw milk taste addiction of the player / 2;
	now the stored-bbc-addiction of familiar is the raw bbc addiction of the player / 2;
	decrease the raw bbc addiction of the player by the raw bbc addiction of the player / 2;
	if debuginfo > 0:
		say "[input-style]Total summary of changes:[line break]Sex addiction -[the stored-sex-addiction of familiar][line break]Anal sex addiction -[the stored-anal-sex-addiction of familiar][line break]Vaginal sex addiction -[the stored-vaginal-sex-addiction of familiar][line break]Oral sex addiction -[the stored-oral-sex-addiction of familiar][line break]Titfuck addiction -[the stored-titfuck-addiction of familiar][line break][if grossness fetish > 0]Grossness addiction -[the stored-grossness-addiction of familiar][line break][end if][if interracial fetish is 1]Big Black Cock addiction -[the stored-bbc-addiction of familiar][end if][line break]Creampie [if bukkake fetish is 1]& bukkake [end if]addiction -[the stored-semen-addiction of familiar][line break]Semen taste addiction -[the stored-semen-taste-addiction of familiar][line break][if watersports fetish is 1]Urine taste addiction -[the stored-urine-taste-addiction of familiar][line break][end if][if lactation fetish is 1]Breast milk taste addiction -[the stored-milk-taste-addiction of familiar][line break][end if]Breast flesh units -[the flesh volume of breasts - the real flesh volume of breasts][line break]Hip thickness units -[the thickness of hips - the real thickness of hips][line break][if weight gain fetish is 1]Ass fat -[the flesh volume of hips][line break][end if][roman type]";
	now the flesh volume of breasts is the real flesh volume of breasts;
	now the thickness of hips is the real thickness of hips;
	if weight gain fetish is 1, now the flesh volume of hips is 0;
	otherwise now the flesh volume of hips is the thickness of hips;
	set up familiar;
	now familiar is in the location of the player;
	now the times-met of familiar is 1;
	interest familiar;
	say "Suddenly, [NameDesc of familiar] is in front of you - a stunning beautiful purple-skinned demon with impossibly feminine curves.[line break][speech style of familiar]'Oh hey, boss! Thank you for making me out of all of your best bits! I promise to be the bestest bimbo familiar ever!'[roman type][line break][first custom style]Bimbo familiar?! Oh boy. But I'm way less slutty now - creating this thing has just reversed a whole load of both mental and physical changes! That's got to be a good thing... Right?![roman type][paragraph break]";
	say "As if to answer your question, [NameDesc of familiar] pounces on you, knocking you onto your back and straddling your hips.[line break][speech style of familiar]'We're going to have so much fun together! Boop.'[roman type][line break]As [he of familiar] says [']boop['], [he of familiar] touches your nose with a finger. Your face immediately shifts - your lips swell out a bit[if the lips of face > 0] once again[end if], and your tongue quivers with anticipation as an image flashes in your mind of you with a big fat juicy cock in your mouth.[line break][speech style of familiar]'Huh! That felt weird! But you look a bit sexier now. Want me to do it again?'[roman type][line break]";
	now the lips of face is 1;
	cutshow Figure of familiar boop for familiar;
	if the player is able to speak, say "[first custom style]Oh my gosh, whenever [he of familiar] touches me, I get a bit sluttier![roman type][line break]You immediately understand.[line break][first custom style]'[if legacy content is 1]N-no! Cut it out[otherwise]Err... Maybe more later[end if]!'[roman type][line break]";
	say "You quickly roll away from your familiar's contagious touch.[line break][speech style of familiar]'Fine, message received! I'll leave you alone... For now~'[roman type][line break]You sigh in relief.[line break][speech style of familiar]'Now, are there any cute guys around here for me to fuck?'[paragraph break][first custom style]Oh boy... I get the sense that the reversal of my body and brain was the [']reward['], and having this familiar around is actually going to be the true [']cost[']...[roman type][line break]";
	if autostand is 1 and the player is upright, now delayed stand is 1; [We've made the player kneel, and now if autostand is 1 we flag up that the player should try to stand after the next turn.]
	now the stance of the player is 1; [do this last because we want the check above to only occur if the player was standing beforehand]

Definition: familiar is human: decide yes.

Definition: familiar is able to remove cursed plugs: decide yes.

Definition: familiar is butt slut immune: decide yes.

Definition: familiar is uniquely unfriendly:
	[if it is unleashed, decide yes;] [provoked]
	decide no.

To decide which number is the bimbo tolerance of (M - familiar):
	decide on 100. [If we don't make this prohibitively high, there can be some weird difficult-to-debug outcomes surrounding the overriding of uniquely unfriendly above, where the NPC is objectifying but friendly, and somehow attacking while friendly.]
To decide which number is the bab tolerance of (M - familiar):
	decide on 100.

To decide which number is the aggro limit of (M - familiar): [The number at which they turn unfriendly]
	decide on -999999.

Part 1 - Perception

To decide which number is the bimbo tolerance of (M - familiar):
	decide on 20.

To decide which number is the bab tolerance of (M - familiar):
	decide on 20.

To compute perception of (M - familiar):
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]"; [The output for clothing humiliation takes place within the 'sluttily dressed' check.]
	if M is unfriendly:
		say "[speech style of M]'COME, LET US REJOIN AS ONE!'[roman type][line break][big he of M] adopts a combat stance and prepares to pounce.";
	otherwise if the preg-progress of M > 0:
		say "[speech style of M]'[one of]This isn't quite what I signed up for, you know...'[or]Hey...'[or]Ugh, so heavy...'[or]Hi again...'[cycling][roman type][line break]";
	otherwise if the total face volume of M > 0:
		let LQ be semen;
		if the face-urine-volume of M > 0:
			if the face-semen-volume of M > 0 or the face-milk-volume of M > 0:
				now LQ is murkwater;
			otherwise:
				now LQ is urine;
		otherwise if the face-milk-volume of M > 0:
			if the face-semen-volume of M > 0:
				now LQ is murkwater;
			otherwise:
				now LQ is milk;
		if a random number between 1 and 2 is bukkake fetish:
			say "Suddenly, the liquid held in [his of M] bulging cheeks sprays out through [his of M] lips, right at you!";
			UnannouncedSquirt LQ on face by the total face volume of M;
			say "[speech style of M]'[one of]Oops, sorry, forgot I had a mouthful for a minute, hehe~'[or]Whoops! I just wanted to say, hi!'[or]Eep! Sorry again~'[stopping][roman type][line break]";
		otherwise if face is not actually occupied:
			say "[big he of M] approaches you for a kiss![line break][variable custom style]I can tell [his of M] mouth is full of something...[roman type][line break]Do you let [him of M] kiss you?";
			if the player is bimbo consenting:
				say "You pout your [LipDesc] and let [his of M] soft purple pillows connect with your own. Within moments you are engaged in a messy, sloppy make-out session!";
				GrossOut 3;
				if the arousal of M > a random number between 10 and 60:
					say "[big he of M] moans happily, and immediately begins shovelling the contents of [his of M] mouth into yours! ";
					let LQN be the total face volume of M;
					if LQN > 4, now LQN is 4;
					say "A [if LQN > 3]huge[otherwise if LQN is 3]large[otherwise if LQN is 1]decent[otherwise]small[end if] quantity of [variable LQ] is shovelled into your mouth by [his of M] tongue.[line break][variable custom style]'Mmmmnnnnnh!'[roman type][line break]";
					FaceFill LQ by LQN;
					FaceEmpty familiar;
					say "[speech style of M]'[one of]Ahh, much better, I can talk now. Hey there, boss!'[in random order][roman type][line break]";
					suggest swallowing with LQ consequences;
					if the player is able to speak and the relevant taste addiction of LQ < 10, say "[variable custom style]'[one of]Ugh I can't believe you made me do that[or]Not this again[stopping], you stupid slutty succubus!'[roman type][line break][BigNameDesc of M] just giggles affectionately in response.";
			otherwise:
				say "[big he of M] makes a disappointed sound, and then opens [his of M] mouth wide to proudly show you the contents inside. It's full of [variable LQ]![line break][second custom style]'Aaaaah~'[roman type][line break]";
				let LQT be the substituted form of "[LQ]";
				compute addiction reflection on LQT with 0 flavour;
				if LQ is semen or LQ is murkwater, SlowSemenTasteAddictUp 1;
				if LQ is urine, SlowUrineTasteAddictUp 1;
				if LQ is milk, SlowMilkTasteAddictUp 1;
	otherwise:
		say "[speech style of M]'[one of]Hey there boss~'[or]How's it going, boss?'[or]There you are, boss!'[at random][roman type][line break]";
		if a random number between 2 and 10 <= the ass-volume of M:
			decrease the ass-volume of M by 2;
			if a random number between 1 and 2 <= egg laying fetish:
				say "[speech style of M]'Woah... [one of]It's coming out[or]Here comes another one[stopping]...'[roman type][line break][BigNameDesc of M] squats and winces as a egg emerges from [his of M] butthole!";
				let E be a random off-stage medium egg;
				if a random number between 1 and 2 is 1, now E is a random off-stage small egg;
				if the player is getting very unlucky:
					now E is a random off-stage large egg;
					let EO be a random number between 1 and 5;
					if EO <= 3 and bowsette is off-stage and bowsette is not permanently banished:
						now the egg-origin of E is bowsette;
					otherwise if EO <= 4:
						now the egg-origin of E is hugger-gag;
					otherwise:
						now the egg-origin of E is nothing;
				otherwise if E is egg:
					now the hatching of E is a random number between 0 and 2 + tough-shit;
					let EO be a random number between 1 and 4;
					if EO is 1, now the egg-origin of E is hugger-gag;
					if EO is 2, now the egg-origin of E is the throne;
					if EO is 3:
						if mythical creatures fetish is 1, now the egg-origin of E is a random giant wasp;
						otherwise now the egg-origin of E is carrot daggers;
					if EO is 4:
						now the egg-origin of E is nothing;
					now E is not shuddering;
					now E is not laid;
			otherwise:
				say "[BigNameDesc of M] winces as a spurt of [semen] noisily spurts out of [his of M] butthole!";
				if the player is prone and bukkake fetish is 1 and the player is getting unlucky:
					say "It lands right on your face! [GotUnluckyFlav]";
					AnnouncedSquirt semen on face by 2;
					GrossOut 6;
				otherwise:
					SemenPuddleUp 1;
		otherwise if the player is prone:
			compute familiar boop check of M;

To compute familiar boop check of (M - familiar):
	if the raw oral sex addiction of the player < 10 and a random number between 1 and 3 is 1:
		say "[speech style of M]'Boop~'[roman type][line break][BigNameDesc of M] playfully prods your nose!";
		if the lips of face < max lip size and the player is getting unlucky:
			say "Your lips swell in size! [GotUnluckyFlav]";
			LipsUp 1;
		OralSexAddictUp 1;
	otherwise if the raw anal sex addiction of the player < 10 and a random number between 1 and 2 is 1:
		say "[speech style of M]'Nice butt~'[roman type][line break][BigNameDesc of M] playfully spanks your butt!";
		if player is not bottom heavy:
			say "Your ass cheeks [if weight gain fetish is 0]and hips [end if]swell in size! [GotUnluckyFlav]";
			AssSwell 1;
		AnalSexAddictUp 1;

To compute guaranteed boop of (M - familiar):
	say "[speech style of M]'Boop~'[roman type][line break][BigNameDesc of M] playfully prods your nose!";
	if the lips of face < max lip size:
		say "Your lips swell in size! [GotUnluckyFlav]";
		LipsUp 1;
	OralSexAddictUp 1.

To compute friendly boredom of (M - familiar):
	increase the friendly boredom of M by 1;
	if a random number from 5 to 25 < the friendly boredom of M and the player is not in danger, compute default friendly boredom of M.

Part 2 - Misc Flavour

To say IdentifiablePosterReactionFlav of (M - familiar):
	say "[BigNameDesc of M] looks at the poster and then at you, with a gleeful expression on [his of M] face.[line break][speech style of M]'How delightful! I'm so proud of you!'[roman type][line break]".

To say UnidentifiablePosterReactionFlav of (M - familiar) with (P - a poster):
	say "[BigNameDesc of M] looks at the banner with a happy expression on [his of M] face. [big he of M] doesn't seem to realise it is you.[line break][speech style of M]'This slut has the right idea!'[roman type][line break]".

To compute diaper mess reaction of (M - familiar):
	if M is unconcerned, say "[BigNameDesc of M] looks at you with a caring smile.".

To compute MasturbationReaction of (M - familiar):
	if M is unconcerned, say "[BigNameDesc of M] watches at you with a gleeful smile.".

Part 3 - Combat

To compute interaction of (M - familiar):
	if the player is in danger:
		compute protection of M;
	otherwise if M is unconcerned:
		if the current-errand of M is completed, compute errand completion of M.

To compute (M - familiar) protecting against (X - a monster):
	if the player is prone:
		if M is waiting-for-defeat:
			now M is not waiting-for-defeat;
			say "[speech style of M]'Ooh, goodie!'[roman type][line break][BigNameDesc of M] licks the tips of [his of M] fingers on [his of M] right hand, and moves them to [his of M] crotch.";
		otherwise:
			say "[BigNameDesc of M] [one of]masturbates[or]jills [himself of M][or]fingers [himself of M][at random] while watching [one of]you[or]the show[cycling].";
	otherwise:
		say "[one of][or][BigNameDesc of M] [one of]frowns[or]puts an airheaded finger to [his of M] lips[in random order] as [he of M] watches you fight.[line break][speech style of M]'[one of]Wouldn't it be easier to just do what [he of X] wants?'[or]I don't understand why you're bothering to fight back.'[or]Just let [him of X] [if X is male]put [his of X] [manly-penis] inside you[otherwise]play with you[end if] already!'[then at random][roman type][line break][or][or][cycling]";
		now M is waiting-for-defeat;

To compute failed damage of (M - familiar):
	say "[speech style of M]'Ow! Okay okay, I get it, I'll leave you alone!'[roman type][line break][if M is interested][BigNameDesc of M] turns to leave you alone.[end if]";
	bore M;
	compute mandatory room leaving of M.

To decide which number is the damage modifier of (M - familiar):
	decide on (attack-damage * -1).

To compute (M - a monster) stomping (N - familiar): [TODO: Different interaction with Xavier]
	if N is in the location of the player:
		say "[BigNameDesc of N] looks up at [NameDesc of M] with eyes full of lust.[line break][speech style of N]'Ooh, yes please Daddy!'[roman type][line break]Almost before you can react, [NameDesc of N] and [NameDesc of M] are joined at the hips, and [NameDesc of N] is bouncing with glee on [NameDesc of M][']s oversized fuckstick. Moments later, [NameDesc of N] is getting inflated like a balloon by an inhuman amount of [semen] being delivered directly into [his of N][']s inhuman innards. Waddling like a drunkard, the dazed [NameDesc of N] massages [his of N] bloated belly and begins to stumble from the room.[line break][speech style of N]'That was fun! Let's do it again soon~'[roman type][line break]";
		bore N;
		compute mandatory room leaving of N;
		regionally place N;
		now N is moved.

Part 4 - Mischief

To compute unique final action of (F - familiar):
	if the preg-progress of F is 0, compute mischief of F;
	compute preg progress of F.

To compute mischief of (F - familiar):
	increase the arousal of F by 1;
	let X be a random toilet desiring threatening awake noncombative monster in the location of F;
	let L be a random milking bench lever in the location of F;
	if L is a thing and L is not lever-pulled and player-currently-resting is 1 and F is in the location of the player:
		compute L pull of F;
	otherwise if L is a thing and L is lever-pulled and player-currently-resting is 1 and milking is 0 and there is worn actually nipple covering clothing:
		compute L pull of F;
	otherwise if X is a monster and X is not a diaper wetter:
		if F is in the location of the player, say "[BigNameDesc of F] sniffs at [NameDesc of X][']s crotch.[line break][speech style of F]'You need to pee, don't you [if X is presenting as female]Miss[otherwise]Mister[end if]? Well, your urinal is here!'[roman type][line break][big he of F] gets on [his of F] knees and points at [his of F] mouth.[speech style of F]'Aaaah~'[roman type][line break]";
		compute FamiliarPissDrink of X;
	otherwise if the arousal of F >= 50:
		let M be a random human male threatening awake noncombative monster in the location of F;
		if M is a monster:
			if F is in the location of the player, say "[BigNameDesc of F] leaps at [NameDesc of M][']s crotch.[line break][speech style of F]'I'm sorry, I just really need some cum! I can't wait any longer!'[roman type][line break]";
			compute FamiliarFuck of M;
	otherwise if the remainder after dividing the arousal of F by 10 is 0:
		let M be a random human male threatening awake noncombative monster in the location of F;
		if M is a monster:
			if F is in the location of the player, say "[BigNameDesc of F] begins flirting with [NameDesc of M].[line break][speech style of F]'Hehe, [one of]wanna fuck[or]watcha got down there, big [boy of M][at random]?'[roman type][line break]";
			if the refractory-period of M <= 0:
				compute FamiliarFuck of M;
			otherwise:
				if F is in the location of the player, say "[BigNameDesc of M] does [his of M] best to ignore [him of F], but you can see [him of M] getting [one of]hot under the collar[or]aroused[or]turned on[at random].";
				decrease the refractory-period of M by 50;
	otherwise if F is not not-searching:
		if F is bandage-searching and a random number between 1 and 50 is 1:
			let B be a random off-stage bandage;
			if B is a thing:
				now B is carried by F;
				now F is not-searching;
		otherwise if F is food-searching and a random number between 1 and 250 is 1:
			let B be a random off-stage snack;
			if B is nothing or the player is getting lucky:
				now B is a random off-stage chef food;
				if B is a thing, now the quality of B is 1;
			if B is a thing:
				now B is carried by F;
				now F is not-searching;
		otherwise if F is drink-searching and a random number between 1 and 70 is 1:
			let B be a random off-stage can;
			if B is a thing:
				now B is carried by F;
				now F is not-searching;
		otherwise if F is lube-searching and a random number between 1 and 70 is 1:
			let B be a random off-stage lubricant;
			if B is a thing:
				now B is carried by F;
				now F is not-searching.

To compute preg progress of (F - familiar):
	if pregnancy fetish is 1 and slow pregnancy < 3:
		if the vagina-volume of F is 0 and the preg-progress of F is 0, truncate the inseminating-list of familiar to 0 entries;
		if the preg-progress of F is 0:
			if the vagina-volume of F >= 5 and the number of entries in the inseminating-list of familiar > 0:
				now the vagina-volume of F is 1;
				now the preg-progress of F is 1;
				sort the inseminating-list of familiar in random order;
				truncate the inseminating-list of familiar to 1 entries;
				if F is in the location of the player, say "You see [NameDesc of F] nervously rubbing [his of F] distended belly...";
		otherwise if the preg-progress of F is 1:
			if F is interested and F is in the location of the player:
				say "[BigNameDesc of F] suddenly yelps.[line break][speech style of F]'Um... Err... I think I just felt a kick. [one of]Does that mean what I think it means?'[or]Not again...'[stopping][roman type][line break]As you watch, [NameDesc of F][']s black latex corset vanishes... And a spiked silver piercing appears on [his of F] right nipple. [big his of F] choker transforms into a thick collar with a metal cowbell dangling from it. And in front of both of your eyes, [his of F] belly begins to swell and grow even more. [big he of F] is definitely pregnant. [big he of F] looks at you with worried eyes.[line break][speech style of F]'[one of]This wasn't in the familiar training brochure[or]Oh god, here we go again[stopping]...'[roman type][line break]";
				compute addiction reflection on "pregnancy" with 0 flavour;
				now the preg-progress of F is 2;
				now the previous-preg-progress of F is 2;
				cutshow Figure of familiar belly 2 for F;
		otherwise:
			if F is in the location of the player or F is interested:
				if the previous-preg-progress of F < the preg-progress of F:
					now the previous-preg-progress of F is the preg-progress of F;
				otherwise if a random number between 5 and 100 <= the preg-progress of F:
					let M be entry 1 in the inseminating-list of F;
					compute familiar birth of M;
					truncate the inseminating-list of F to 0 entries;
					now the vagina-volume of F is 0;
					now the arousal of F is 0;
			otherwise:
				if the previous-preg-progress of F is the preg-progress of F, increase the preg-progress of F by 1;

To compute familiar birth of (M - a monster):
	let F be familiar;
	say "[speech style of F]'[one of]Ah! Ah! Fuck! I think I'm going into labour!'[or]Oh fuck, here we go...'[or]Oh god, here it comes!'[cycling][roman type][line break][BigNameDesc of F] collapses to the ground and spreads [his of F] legs wide as a baby [ShortDesc of M] begins to emerge from [his of F] sacred hole.[line break][speech style of F]'Fuck fuck FUCK!'[roman type][line break]The labour is fast but painful.";
	compute addiction reflection on "pregnancy" with 0 flavour;

To compute FamiliarFuck of (M - a monster):
	let F be familiar;
	let AV be a random number between 1 and 2;
	if AV is 1: [anal]
		if F is in the location of the player, say FamiliarAnalFuckFlav of M;
		increase the ass-volume of F by the semen load of M;
	otherwise: [vaginal]
		if F is in the location of the player, say FamiliarVaginalFuckFlav of M;
		increase the vagina-volume of F by the semen load of M;
		if pregnancy fetish is 1 and the preg-progress of F is 0 and M is father material:
			if slow pregnancy > 2:
				truncate the inseminating-list of F to 0 entries;
				add the noun to the inseminating-list of F;
				now the preg-progress of F is 6;
				say "All of a sudden, [NameDesc of F][']s belly explodes out to a huge, full-term-pregnant size![line break][speech style of F][']Oof! Oh my god! I'm pregnant[one of]?![or] again![stopping]";
				compute addiction reflection on "pregnancy" with 0 flavour;
			otherwise:
				add M to the inseminating-list of F, if absent;
	compute refractoryReset of M;
	now the arousal of F is 0.

To say FamiliarAnalFuckFlav of (M - a monster):
	say "[BigNameDesc of M] eagerly exposes [his of M] rock hard [manly-penis]! [BigNameDesc of familiar] eases [NameDesc of M][']s [manly-penis] into [his of familiar] asshole, and squeeks happily as [he of familiar] is rogered from behind until [NameDesc of M] cums!";
	say "[variable custom style]Fuck...[roman type][line break]You can't help but get turned on by the erotic display.";
	arouse 3000.

To say FamiliarVaginalFuckFlav of (M - a monster):
	say "[BigNameDesc of M] eagerly exposes [his of M] rock hard [manly-penis]! [BigNameDesc of familiar] hops on top of [NameDesc of M][']s [manly-penis] and enthusiastically rides [him of M] with [his of familiar] pussy until [NameDesc of M] cums!";
	say "[variable custom style]Fuck...[roman type][line break]You can't help but get turned on by the erotic display.";
	arouse 3000.

To compute FamiliarSuck of (M - a monster):
	let F be familiar;
	if F is in the location of the player, say FamiliarSuckFlav of M;
	increase the face-semen-volume of F by the semen load of M;
	compute refractoryReset of M;
	now the arousal of F is 0.

To say FamiliarSuckFlav of (M - a monster):
	say "[speech style of M]'H-Hey!'[roman type][line break][BigNameDesc of M] yelps in surprise as [NameDesc of familiar][']s lips are suddenly locked around the head of [his of M] [LongDickDesc of M], both hands on the shaft, pumping and sucking it for all [he of familiar][']s worth![paragraph break]But the surprise and panic quickly turns into melting pleasure as [NameDesc of familiar] quickly works [his of familiar] magic.[line break][speech style of M]'Oh, fuck, yes... Okay... Oooh... Woah!'[roman type][line break]In what feels like mere seconds, [NameDesc of M] is being brought to the edge.[line break][speech style of M]'Fuck fuck fuck!'[roman type][line break][BigNameDesc of familiar] moans with pleasure and gratitude as [he of familiar] feels [NameDesc of M] explode in [his of familiar] mouth.";
	say "You can't help but get turned on by the erotic display.";
	arouse 3000.

To compute FamiliarPissDrink of (M - a monster):
	let F be familiar;
	if F is in the location of the player, say FamiliarPissDrinkFlav of M;
	increase the face-urine-volume of F by 5;
	now the bladder of M is 0.

To say FamiliarPissDrinkFlav of (M - a monster):
	if M is intelligent, say "[speech style of M]'[one of]Oh, good[or]Perfect[or]What good timing[at random].'[roman type][line break][BigNameDesc of M] aims [his of M] [if M is male][LongDickDesc of M][otherwise]crotch[end if] at the willing, waiting living urinal, and lets loose [his of M] bladder. ";
	otherwise say "[BigNameDesc of M] seems to consent, and happily starts peeing into [NameDesc of familiar][']s mouth. ";
	say "[BigNameDesc of familiar] happily gargles and gulps away, as the hot golden jet keeps spraying and filling [his of familiar] mouth over and over. Finally, the stream dies away, and [NameDesc of familiar] is left with a final mouth of liquid, which [he of familiar] decides to hold onto, cheeks bulging, rather than spit it out or swallow it.[line break][second custom style]'MMMMM!'[roman type][line break][big he of familiar] makes a happy satisfied cooing sound through [his of familiar] mouthful.";

To check familiar trip: [The player has just tripped, and the familiar is in the location of the player]
	if (the pregnancy of the player is 0 and the preg-progress of familiar >= 5) or the player is getting unlucky:
		let F be familiar;
		if the pregnancy of the player is 0 and the preg-progress of F >= 5:
			say "[bold type]As you trip, you stumble face-first into [NameDesc of F][bold type][']s pregnant belly! [roman type]But instead of it being very firm and taut, it just softens your fall like a pillow, before disappearing entirely.[paragraph break][speech style of F]'[one of]Huh?!'[roman type][line break][BigNameDesc of F] yelps in confusion, before looking at you with a shocked expression.[line break][speech style of F]'Uh-oh[or]Uh-oh, not again[stopping]. Sorry, boss...'[roman type][paragraph break]You look down to discover what [he of F] is talking about - your own belly is now much in the state that [hers of F] was a few moments ago - huge, round, heavy, and full term pregnant.";
			compute familiar pregnancy swap;
			say "[variable custom style][one of][if the player is able to speak]'What have you done?!'[line break][speech style of F]'What?! All I did was stand here! You're the one that fell into me!'[otherwise]Oh my god... No way... This can't be happening![end if][or][if the player is able to speak]'Again?!'[otherwise]Not again![end if][stopping][roman type][line break]";
		otherwise:
			let R be a random number between 1 and 4;
			if R < 3:
				say "[bold type]As you trip, you stumble face-first into [NameDesc of F][bold type][']s huge pillowy tits! [roman type][line break]Your [BreastDesc] tingle.";
				if R is 1, TitfuckAddictUp 1;
				otherwise BustUp 1;
			otherwise:
				say "[bold type]As you trip, you stumble face-first into [NameDesc of F][bold type][']s huge plump buttocks! [roman type][line break]Your [AssDesc] tingle.";
				if R is 3, AnalSexAddictUp 1;
				otherwise AssSwell 1;
			say GotUnluckyFlav;
			say "[speech style of F]'[one of]Geez boss, I didn't know you felt that way about me[or]That felt funny[cycling], hehe!'[roman type][line break]";

To compute familiar pregnancy swap:
	now the pregnancy of the player is 1;
	now the womb volume of vagina is 30;
	now the father is entry 1 in the inseminating-list of familiar;
	now the preg-progress of familiar is 0;
	truncate the inseminating-list of familiar to 0 entries;
	if the vagina-volume of familiar >= 5, now the vagina-volume of familiar is 4;
	check for extreme pregnancies;
	if the womb volume of vagina is 31:
		now the womb volume of vagina is 50;
		cutshow figure of giant pregnancy for belly.

To compute (L - a milking bench lever) pull of (M - familiar):
	if M is in the location of the player:
		if player-currently-resting is 1:
			say "[BigNameDesc of M] observes you on the milking bench.";
			if milking is 1 or the number of worn actually nipple covering clothing is 0:
				say "[speech style of M]'You're doing it wrong, boss, that's gonna make your tits smaller, not bigger! Don't worry, I can help you out~'[roman type][line break][big he of M] pulls the lever on the wall, switching it to the green plus sign!";
			otherwise:
				say "[speech style of M]'Why isn't this thing pumping you up like it's supposed to? Oh, I see. One sec, I'll help you out~'[roman type][line break][if L is not lever-pulled][big he of M] pulls the lever on the wall, switching it to the green plus sign![end if]";
				let N be max-top-layer;
				while N > 0: [start with top layered clothing and work downwards]
					let B be nothing;
					repeat with C running through worn top layer clothing:
						if the top-layer of C is N, now B is C;
					if B is actually nipple covering clothing:
						if B is top-displacable:
							now B is top-displaced;
							say "[BigNameDesc of M] displaces your [printed name of B]!";
						otherwise if B is actually strippable:
							now B is in the location of the player;
							say "[BigNameDesc of M] removes your [printed name of B]!";
						otherwise if B is tearable:
							say "[BigNameDesc of M] slips [his of M] forked tail through the seam of your [printed name of B], and destroys it!";
							destroy B;
						otherwise:
							now N is 0;
					decrease N by 1;
			let C be a random worn actually nipple covering clothing;
			if milking is 0 and C is clothing:
				say "[BigNameDesc of M] frowns with disappointment at being unable to remove your [ShortDesc of C].[line break][speech style of M]'I guess it just won't work this time.'[roman type][line break]";
			otherwise:
				say "[speech style of M]'You can thank me later.'[roman type][line break]";
				satisfy M;
				compute mandatory room leaving of M;
				cutshow examine-image of M;
				cutshow figure of milking bench cutscene 6 for L;
		otherwise:
			if M is in the location of the player, say "[BigNameDesc of M] eyes up the lever on the wall.[line break][speech style of M]'Someone left this in the wrong position again.'[roman type][line break][big he of M] steps over to the lever, and pushes it up so that it is pointing to the green plus sign.";
	now L is lever-pulled.



Part 5 - Conversation

Section 1 - Greeting

To consider (T - talk-greet) for (M - familiar):
	now the printed name of T is the substituted form of "[FirstGreeting to M]";
	set next numerical response to the substituted form of "[printed name of T]".

To say FirstGreeting to (M - familiar):
	say "'[one of]So, you're my... Familiar...'[or]Hi.'[stopping]".

To compute basic greeting to (M - familiar):
	if M is interested:
		say "[speech style of M]'[one of]Yep! [or][stopping]Hi boss~'[roman type][line break]";
	otherwise:
		now the boredom of M is 0;
		check guaranteed perception of M.

Section 2 - Questioning

To say WhereAnswer of (M - familiar):
	say "[speech style of M]'Why are you asking me, boss? You're the one that brought ME here...'[roman type][line break]".

To say WhoAnswer of (M - familiar):
	say "[speech style of M]'I'm you! Or, well, the cool, sexy part of you that got taken out and turned into me!'[roman type][line break]".

To say StoryAnswer of (M - familiar):
	say "[speech style of M]'Um, well, once upon a time, I was in this hotel, and I prayed at this golden altar, and then I was suddenly separate from the boring part of me, and I was just the cool, exciting fun version of me!'[roman type][line break]".

Definition: familiar is escape-question-appropriate: decide no.

To say AdviceAnswer of (M - familiar):
	say "[speech style of M]'Stay loose and let it happen!'[roman type][line break]".

To compute teaching of (M - familiar):
	if M is unconcerned:
		say "[line break][speech style of M]'Let me show you how to move good with big ol['] tiddies!'[roman type][line break]";
		teach titshow;
	otherwise:
		say "[line break][speech style of M]'I'm not your friend right now.'[roman type][line break]".

Section 3 - Errands

[The higher this is, the less likely a monster is to give you a freebie]
To decide which number is the freebie-reluctance of (M - familiar):
	if the favour of M < 1, decide on 99;
	decide on a random number between -10 and 10.

To say RequestAcceptanceForFree of (M - familiar):
	say "[speech style of M]'Sure thing, boss!'[roman type][line break]".

To say RequestAcceptanceForFreeFlav of (M - familiar):
	compute guaranteed boop of M.

To execute (T - search-request) for (M - familiar):
	reset multiple choice questions;
	set numerical response 1 to "search for a bandage";
	set numerical response 2 to "search for food";
	set numerical response 3 to "search for a drink";
	set numerical response 4 to "search for lube";
	set numerical response 0 to "cancel";
	compute multiple choice question;
	if player-numerical-response > 0:
		allocate 4 seconds;
		say "[variable custom style]'I need you to [chosen numerical response] for me.'[line break][speech style of M]'Okay, [if the preg-progress of M > 0]but it might have to wait until after this [one of]baby comes out[or]pregnancy takes its course[or]belly goes back to normal[cycling]...'[otherwise][one of]on it, boss[or]Roger that[or]I'll do my best[in random order].'[end if][roman type][line break]";
		if player-numerical-response is 1, now M is bandage-searching;
		if player-numerical-response is 2, now M is food-searching;
		if player-numerical-response is 3, now M is drink-searching;
		if player-numerical-response is 4, now M is lube-searching.



Familiar ends here.
