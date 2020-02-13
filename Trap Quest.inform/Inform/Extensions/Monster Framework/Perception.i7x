Perception by Monster Framework begins here.

Part 1 - Perception

A monster has a number called favour. The favour of a monster is usually 15. [The favour of an NPC determines when it turns unfriendly.]
A monster has a number called latest-appearance. [The last time the NPC saw the player, what did they look like? We only update this when the player looked worse than before, or the NPC gets bored then rediscovers the player. So flashing an NPC 5 times in quick succession is not any worse than flashing them once.]
A monster has a number called latest-cringe. [The last time the NPC saw the player, how childish did they look?]

perceiving is a number that varies. [We want to suppress some text while we are in the middle of perception.]

To FavourReset (M - a monster):
	now the favour of M is the default favour of M.

To decide which number is the default favour of (M - a monster):
	decide on 15.


Chapter 1 - Check Perception

hypno-curtsey-trigger is a number that varies.
whore-exposing-quest is a headgear-clothing-quest.

To decide which number is the stealth of the player:
	let P be 2 + (the number of worn kimono * 2);
	if the player is prone, increase P by 2;
	decide on P.

To check perception of (M - a monster):
	if M is aware:
		if M is defeated:
			compute defeated perception of M;
		otherwise if M is interested:
			if M is uniquely unfriendly and M is normally annoyed, resolve sudden appearance change of M;
		otherwise:
			now M is interested;
			now the last-tripped of M is 0;
			now the last-interaction of M is 0;
			if M is the father:
				calm M;
				say "[BigNameDesc of M] notices you![line break][big he of M] seems to be waiting for something...";[Waiting for you to give birth to their baby]
			otherwise if the scared of M > 0 and M is scarable:
				compute scared perception of M;
			otherwise if (the class of the player is vixen or the blind-status of M > 0 or (M is woman-barbara and the woman-status of woman-barbara is 80)) and the player is not in a bossed room and a random number between 1 and the stealth of the player > 1:
				say PerceptionFail of M;
				if the blind-status of M > 0, decrease the blind-status of M by 1;
				distract M;
			otherwise:
				compute correct perception of M;
				progress quest of whore-exposing-quest for M;
				if M is intelligent:
					progress quest of show-and-tell-quest for M;
					if topless temporary fetish > 0 and breasts is lewdly exposed:
						decrease topless temporary fetish by 1;
						if topless temporary fetish is 0, say "[bold type]Your brain finally seems satisfied that you've exposed your breasts to enough people. You will no longer lose intelligence from concealing your nipples.[roman type][line break]";
						otherwise say "You [one of]can tell that you have made progress towards removing the curse that makes you desparate to keep your breasts exposed[or]have made more progress towards removing your topless fetish curse[cycling].";
				if the times-met of M < 0, now the times-met of M is 0;
				increase the times-met of M by 1;
				if M is friendly human monster and breasts is exposed:
					progress quest of chest-exposing-quest from M;
				if M is unfriendly:
					now the previous-babification of M is 1;
					now the previous-objectification of M is 1;
				otherwise:
					now the previous-babification of M is the babification of M;
					now the previous-objectification of M is the objectification of M;
				if M is interested:
					now the greet-window of M is 3;
					if newbie tips is 1 and tutorial is 0:
						if M is friendly, say "[one of][newbie style]Newbie tip: You have been noticed by an NPC! Looks like this one is friendly, which means you could try using 'greet' and 'question' verbs to find out more from them. If thirsty, you could even 'ask [ShortDesc of M] for drink'.[roman type][line break][or][stopping]";
						otherwise say "[one of][newbie style]Newbie tip: You have been noticed by an NPC! Looks like this one is unfriendly, which usually always means [he of M] wants to [if diaper quest is 1]babify[otherwise]fuck[end if] you, or at the very least make your life more miserable in some way. You can either fight back with 'slap', 'knee' or 'kick' (you'll need to be standing), or you can run away! If your delicateness is high enough, there's also a third option, just get on your knees and let it happen... Anyway, if you want to fight back, experiment with the different attacks. At the start of the game, kicking is usually the worst option as you risk falling over and do less damage.[roman type][line break][or][stopping]";
					reset orifice selection of M; [Otherwise they would be biased towards doing the same thing again, which is lame.]
					if hypno-curtsey-trigger > 0 and the player is upright and M is intelligent friendly monster and the player is not wrist bound and the player is able to use manual dexterity and there is a worn knee-length or longer crotch-in-place clothing:
						let R be a random number between 1 and hypno-curtsey-trigger;
						let HR be 2 + the square root of (the humiliation of the player / 2000);
						if debuginfo > 0, say "[input-style]Curtsey resistance check: Built-up resistance roll (d[hypno-curtsey-trigger]) = [R] | ([HR].5) Humiliation rating[roman type][line break]";
						if R <= HR:
							increase hypno-curtsey-trigger by 1;
							let C be a random worn knee-length or longer crotch-in-place clothing;
							say "[bold type]You instinctively grab the sides of your [ShortDesc of C] and begin to curtsey.[roman type][line break]";
							now auto is 1;
							try displacing C;
							now auto is 0;
							if C is crotch-displaced, compute curtsey reaction of M;
						otherwise:
							say "You manage to resist the urge to curtsey!";
				now the latest-appearance of M is the appearance of the player;
				if diaper quest is 1, now the latest-cringe of M is the cringe appearance of the player.

To compute defeated perception of (M - a monster):
	do nothing.

To compute correct perception of (M - a monster):
	now the latest-appearance of M is the appearance of the player;
	if diaper quest is 1:
		now the latest-cringe of M is the cringe appearance of the player; [We only want to do that if we're playing DQ otherwise we're wasting CPU cycles]
		compute DQ perception of M;
	otherwise:
		compute perception of M.

To compute perception of (M - a monster):
	do nothing.

To say PerceptionFail of (M - a monster):
	say "[BigNameDesc of M] fails to notice you.".

To reset orifice selection of (M - a monster):
	now the chosen-orifice of M is nothing;
	now the selection-frustration of M is 0.

To compute DQ perception of (M - a monster):
	compute perception of M.

To resolve sudden appearance change of (M - a monster):
	if the babification of M is 1 and the previous-babification of M is 0:
		compute sudden babification of M; [The NPC is now unfriendly, because the player's appearance has changed. We need to make this obvious to the player by making them say something.]
		now the previous-babification of M is 1;
	otherwise if the objectification of M is 1 and the previous-objectification of M is 0:
		compute sudden objectification of M; [The NPC is now unfriendly, because the player's appearance has changed. We need to make this obvious to the player by making them say something.]
		now the previous-objectification of M is 1.

To compute curtsey reaction of (M - a monster):
	if diaper quest is 1 and there is a worn currently visible diaper:
		if diaper quest is 1, now the babification of M is 1;
		otherwise now the objectification of M is 1;
	otherwise:
		FavourDown M by 2;
	if M is uniquely unfriendly and M is normally annoyed:
		resolve sudden appearance change of M;
	otherwise if M is friendly and M is groping:
		compute grope of M;
	otherwise:
		say CurtseyReactionFlav of M;
		if M is unfriendly, say BecomesAggressive of M;
	if M is unfriendly, now M is interested.

To say CurtseyReactionFlav of (M - a monster):
	if there are worn currently visible knickers:
		say "[BigNameDesc of M] rolls [his of M] eyes.[line break][speech style of M]'Erm, I can see your underwear.'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] seems completely unaffected[one of] by your sudden display of submissive humility[or][or][cycling].".

To compute scared perception of (M - a monster):
	say "[if the class of the player is cheerleader][BigNameDesc of M] notices you and awkwardly starts to move in the other direction.[otherwise if the blue-balls of M > 0 and M is demoness][BigNameDesc of M] scoffs and starts to move in the other direction.[otherwise][BigNameDesc of M] notices you immediately and starts to run away![end if]".

Chapter 2 - Aggro Framework

Definition: a monster (called M) is aware: [Can it notice the player on its own?]
	if M is asleep or the boredom of M > 0, decide no;
	if the player is too high to see, decide no;
	if M is in the location of the player, decide yes;
	if M is nearby and magnetism-elixir-timer > 0, decide yes;
	decide no.

Definition: a person is reactive if it is in the location of the player. [Can it react to things it sees the player do?]
Definition: yourself is reactive: decide no.
Definition: a monster is reactive if it is awake and it is intelligent and it is undefeated and it is in the location of the player. [Can it react to things it sees the player do?]


To decide which number is the aggro limit of (M - a monster): [The number at which they turn unfriendly]
	decide on 10.

To DifficultyUp (M - a monster) by (X - a number):
	while X > 0:
		increase the difficulty of M by 1;
		decrease X by 1.
	[if debugmode > 0, say "Now the difficulty of [M] is [the difficulty of M]".]

[This is coded as a loop, MG explained, in case something happens when a monster passes a certain threshold of difficulty(and only when passing that threshold of difficulty)]
[Aika: That's not true, currently this loop is pointless. There's no way the code can detect when a threshold is reached. It does however mean that it follows the same structure as other similar functions and could be quickly modified in the future to allow for such triggers.]
To DifficultyDown (M - a monster) by (X - a number):
	while X > 0:
		decrease the difficulty of M by 1;
		decrease X by 1.

[
Aggro Ratings:
BELOW AGGRO LIMIT: Unfriendly
AGGRO LIMIT: Annoyed
AGGRO LIMIT + 2: Acquaintance
AGGRO LIMIT + 4: Buddy
AGGRO LIMIT + 7: Ally
AGGRO LIMIT + 10: Guardian
]

Definition: a monster is unfriendly rather than friendly:
	if it is not pacified and (it is not normally annoyed or it is uniquely unfriendly), decide yes; ["annoyed" is the final level of relationship before unfriendly]
	decide no.

[Selkie: it might be easier to remember, if this was termed temporarily unfriendly?]
Definition: a monster (called M) is uniquely unfriendly: [We can use this to easily specify when a monster is pissed off regardless of usual stats.]
	if M is friendly-fucking, decide no;
	if M is default uniquely unfriendly, decide yes;
	decide no.

Definition: a monster (called M) is default uniquely unfriendly:
	if M is objectifying the player, decide yes;
	if M is babifying the player, decide yes;
	if there is a soiled-diaper retained by M, decide yes;
	decide no.

A monster has a number called objectification. [If an NPC is objectifying the player, and that's the only reason they're unfriendly, we want to make this unfriendliness stick for the duration of their interaction. Otherwise, the NPC could start to have sex with the player but then the player's make up fades causing the NPC to suddenly become friendly mid-fuck.]
A monster has a number called previous-objectification. [Similarly, if the NPC is friendly and the player suddenly looks more slutty, we don't want the NPC to become unfriendly without saying something. Tracking whether the NPC was objectifying last turn will help us know when we need to make the NPC say something as they switch to hostile.]

A monster has a number called babification. [Diaper quest version of objectification.]
A monster has a number called previous-babification.

To compute sudden objectification of (M - a monster):
	if M is intelligent:
		if M is raunchy, say "Something seems to change in the way [NameDesc of M] is looking at you. [line break][speech style of M]'[if M is penetrating a body part]Yeah [slut], take it!'[otherwise if the player is monster fucked]You're going to just do that without asking me to join in?!'[otherwise]We should fuck.'[end if][roman type][line break]";
		otherwise say "Something seems to change in the way [NameDesc of M] is looking at you. [line break][speech style of M]'Hmm, I've changed my mind...'[roman type][line break]";
	otherwise:
		say "[one of][BigNameDesc of M] suddenly turns hostile[or]Something changes in the way [NameDesc of M] is looking at you, and you get the feeling [he of M]'s become hostile[at random]!".

Definition: a monster (called M) is objectifying the player:
	if diaper quest is 1, decide no;
	if M is not interested or M is not in the location of the player:
		now the objectification of M is 0;
		decide no;
	if the objectification of M is 1, decide yes;
	if the class of the player is cheerleader, decide no;
	if the saved appearance of the player >= the bimbo tolerance of M:
		now the objectification of M is 1;
		decide yes;
	decide no.

[!<DecideWhichNumberIsTheBimboToleranceOfMonster>+

Determines the number of outrage at which a monster will immediately become unfriendly. Sluttiness focused

@param <Monster>:<M> The monster noticing the player
@return <Integer> integer indicating the appearance level the monster is willing to tolerate

+!]
To decide which number is the bimbo tolerance of (M - a monster):
	if M is wenchy and M is female and there is a worn demon codpiece, decide on 1;
	decide on 18.

[!<DecideWhichNumberIsTheOutrageToleranceOfMonster>+

Determines the number of outrage at which a monster will be unimpressed and start to lose favour. Set to 20 by default so that it isn't used. Sluttiness focused.

@param <Monster>:<M> The monster noticing the player
@return <Integer> integer indicating the appearance level when the monster will start to become unfriendly

+!]
To decide which number is the outrage tolerance of (M - a monster):
	decide on 20.


To compute sudden babification of (M - a monster):
	if M is intelligent:
		say "Something seems to change in the way [NameDesc of M] is looking at you. [line break][speech style of M]'Aww, you really do look just like a little baby now... I think it's time for me to treat you like one, don't you?'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] suddenly turns hostile!".

Definition: a monster (called M) is babifying the player:
	if diaper quest is 0, decide no;
	if M is not interested or M is not in the location of the player:
		now the babification of M is 0;
		decide no;
	if the babification of M is 1, decide yes;
	if the saved cringe appearance of the player >= the bab tolerance of M:
		now the babification of M is 1;
		decide yes;
	decide no.

[!<DecideWhichNumberIsTheBimboToleranceOfMonster>+

Determines the number of cringe at which a monster will immediately become unfriendly. Diaper Quest only

@param <Monster>:<M> The monster noticing the player
@return <Integer> integer indicating the appearance level the monster is willing to tolerate

+!]
To decide which number is the bab tolerance of (M - a monster):
	decide on 16.

[!<DecideWhichNumberIsTheCringeToleranceOfMonster>+

Determines the number of cringe at which a monster will be unimpressed and start to lose favour. Set to 20 by default so that it isn't used. Diaper Quest only.

@param <Monster>:<M> The monster noticing the player
@return <Integer> integer indicating the appearance level when the monster will start to become unfriendly

+!]
To decide which number is the cringe tolerance of (M - a monster):
	decide on 20.

To say BecomesAggressive of (M - a monster):
	say "[big he of M] takes an offensive stance![if M is intelligent][line break][speech style of M]'[one of]There's only one thing for it.'[or]There's only one thing to do, then...'[or]Okay then, let's do this.'[or]You do realise what I'm going to do now, right?'[in random order][roman type][line break][end if]".

[!<MonsterIsOutrageDisapproving>+

Determines whether a monster currently disapproves of the player's appearance. Sluttiness focused.

@param <Monster>:<M> The monster noticing the player
@return <Boolean> True if the monster disapproves

+!]
Definition: a monster (called M) is outrage disapproving:
	if the outrage tolerance of M < 20: [for efficiency we'll make this check first]
		let A be the appearance of the player;
		let L be the latest-appearance of M;
		now the latest-appearance of M is A;
		if A > L and A > the outrage tolerance of M and M is not friendly-fucking:
			if debuginfo > 1, say "[input-style][MediumDesc of M] disapproves of player's slutty appearance! (Current appearance: [A]. Most recent appearance witnessed by [ShortDesc of M]: [L]. Threshold for [ShortDesc of M] disapproving of appearance: [outrage tolerance of M].)[roman type][line break]";
			decide yes;
	decide no.

[!<MonsterIsCringeDisapproving>+

Determines whether a monster currently disapproves of the player's appearance. Diaper Quest only.

@param <Monster>:<M> The monster noticing the player
@return <Boolean> True if the monster disapproves

+!]
Definition: a monster (called M) is cringe disapproving:
	if diaper quest is 1 and the cringe tolerance of M < 20:
		let C be the cringe appearance of the player;
		let L be the latest-cringe of M;
		now the latest-cringe of M is C;
		if C > L and C > the cringe tolerance of M:
			if debuginfo > 1, say "[input-style][MediumDesc of M] disapproves of player's immature appearance! (Current bab appearance: [C]. Most recent bab appearance witnessed by [ShortDesc of M]: [L]. Threshold for [ShortDesc of M] disapproving of bab appearance: [cringe tolerance of M].)[roman type][line break]";
			decide yes;
	decide no.

[!<CheckDisapprovalOfMonster>+

Checks to see if a monster is currently disapproving of the player's appearance.

@param <Monster>:<M> The monster noticing the player

+!]
To check disapproval of (M - a monster):
	if the last-interaction of M is 0:
		if M is interested:
			if M is cringe disapproving:
				compute cringe disapproval of M;
			otherwise if M is outrage disapproving:
				compute disapproval of M;
		otherwise:
			check perception of M.[The monster is given an extra chance to assess the player's appearance.]

[!<ComputeDisapprovalOfMonster>+

Handles a monster's reaction when they are disapproving of the player's appearance. Mainly for sluttiness.

@param <Monster>:<M> The monster noticing the player

+!]
To compute disapproval of (M - a monster):
	say DisapprovalFlav of M;
	FavourDown M;
	if M is unfriendly and M is interested:
		say BecomesAggressive of M.

[!<ComputeCringeDisapprovalOfMonster>+

Handles a monster's reaction when they are disapproving of the player's appearance. Diaper Quest only.

@param <Monster>:<M> The monster noticing the player

+!]
To compute cringe disapproval of (M - a monster):
	say CringeDisapprovalFlav of M;
	FavourDown M;
	if M is unfriendly and M is interested:
		say BecomesAggressive of M.

[!<SayDisapprovalFlavOfMonster>+

Outputs some flavour describing a monster reacting negatively to the player's appearance. Mainly for sluttiness

@param <Monster>:<M> The monster noticing the player

+!]
To say DisapprovalFlav of (M - a monster):
	if M is intelligent, say "[BigNameDesc of M] [one of]narrows [his of M] eyes[or]widens [his of M] eyes[or]purses [his of M] lips[or]tuts[in random order].[line break][speech style of M]'[one of]I see, that's how it is.'[or]Wow.'[or]You really are something else...'[or]You're really begging for it, aren't you?'[or]I can't believe what I'm seeing!'[or]Gosh!'[in random order][roman type][line break]";
	otherwise say "[BigNameDesc of M] seems to react badly to your new appearance! ".

[!<SayCringeDisapprovalFlavOfMonster>+

Outputs some flavour describing a monster reacting negatively to the player's appearance. Diaper Quest only.

@param <Monster>:<M> The monster noticing the player

+!]
To say CringeDisapprovalFlav of (M - a monster):
	if M is intelligent, say "[BigNameDesc of M] [one of]coughs[or]purses [his of M] lips[or]tuts[or]smirks[or]smiles[in random order].[line break][speech style of M]'[one of]Do you realise how childish you look right now?'[or]You're looking more and more like a baby, you know.'[or]An adult wouldn't let me catch [him of the player] looking like that...'[or]You're really begging to be treated like a child, aren't you?'[or]I can't believe how immature you look right now!'[or]You aren't exactly a beacon of [maturity] right now, you know.'[or]That is NOT how you go about getting me to respect your [maturity].'[or]You're discarding all semblance of [maturity] then, are you?'[in random order][roman type][line break]";
	otherwise say "[BigNameDesc of M] seems to react badly to your new appearance! ".


Section - Aggro Stages

Definition: a monster (called M) is normally annoyed:
	if the favour of M > the aggro limit of M, decide yes;
	decide no.

Definition: a monster (called M) is annoyed:
	if M is unfriendly, decide no;
	if M is normally annoyed, decide yes;
	decide no.

Definition: a monster (called M) is normally acquaintance:
	if the favour of M > the aggro limit of M + 2, decide yes;
	decide no.

Definition: a monster (called M) is acquaintance:
	if M is unfriendly, decide no;
	if M is normally acquaintance, decide yes;
	decide no.

Definition: a monster (called M) is normally buddy:
	if the favour of M > the aggro limit of M + 4, decide yes;
	decide no.

Definition: a monster (called M) is buddy:
	if M is unfriendly, decide no;
	if M is normally buddy, decide yes;
	decide no.

Definition: a monster (called M) is normally ally:
	if the favour of M > the aggro limit of M + 7, decide yes;
	decide no.

Definition: a monster (called M) is ally:
	if M is unfriendly, decide no;
	if M is normally ally, decide yes;
	decide no.

Definition: a monster (called M) is normally guardian:
	if the favour of M > the aggro limit of M + 10, decide yes;
	decide no.

Definition: a monster (called M) is guardian:
	if M is unfriendly, decide no;
	if M is normally guardian, decide yes;
	decide no.

To compute appearance assessment of (M - a monster):
	say "[big he of M] ";
	if M is intelligent, say "looks you up and down.";
	otherwise say "pauses, taking notice of you.".


Chapter 3 - Modifying Aggro

To anger (M - a monster): [This should bring the monster just into unfriendly territory.]
	if the diaper-duration of M > 0, now the diaper-duration of M is the diaper punishment length of M;
	if the favour of M > the aggro limit of M:
		now the favour of M is the aggro limit of M.

To calm (M - a monster): [This should bring the monster just into friendly territory.]
	if the favour of M <= the aggro limit of M:
		now the favour of M is the aggro limit of M + 1.

To permanently anger (M - a monster): [This should bring the monster far far into unfriendly territory.]
	now the favour of M is -100.

To FavourUp (M - a monster):
	FavourUp M by 1.

To FavourDown (M - a monster):
	FavourDown M by 1.

To FavourDown (M - a monster) with consequences:
	FavourDown M by 1 with consequences.

To FavourUp (M - a monster) by (N - a number):
	if the class of the player is cheerleader, increase N by 1;
	if N > 0, increase the favour of M by N.

To FavourDown (M - a monster) by (N - a number) with consequences:
	let P be 0;
	if M is unfriendly, now P is 1;
	decrease the favour of M by N;
	if P is 0 and M is unfriendly: [monster was friendly but now is unfriendly]
		now M is interested;
		say BecomesAggressive of M.

To FavourDown (M - a monster) by (N - a number):
	if the class of the player is cheerleader and a random number between 1 and 2 is 1, decrease N by 1;
	if N > 0, decrease the favour of M by N.


Part 2 - Reflection

[!<shockedMonsters:Integer>*

REQUIRES COMMENTING

*!]
shocked-monsters is a number that varies. [The number of monsters that have noticed the player right now, if the player is humiliated]

[!<arousedMonsters:Integer>*

REQUIRES COMMENTING

*!]
aroused-monsters is a number that varies. [The number of monsters that have noticed the player right now, if the player is aroused]

[!<NumberIsTooHumiliating>+

REQUIRES COMMENTING

+!]
Definition: a number (called N) is too humiliating:
	if N * 2000 > the humiliation of the player + 6000, decide yes;
	decide no.

[!<PersonIsOutraged>+

Is the player wearing something too embarrassing for their tolerance level?

+!]
Definition: a person is outraged:
	if calculated-appearance-outrage-level is too humiliating, decide yes;
	decide no.

[!<PersonIsNearlyOutraged>+

Is the player wearing something almost too embarrassing for their tolerance level? (This will arouse exhibitionist players)

+!]
Definition: a person is nearly outraged:
	if the humiliation of the player < 20000, decide no;
	if calculated-appearance-outrage-level + 5 is too humiliating, decide yes;
	decide no.

To say mortifiedOutfit:
	say ", which makes you very self-conscious about your [MediumDesc of appearance-outrage-target], and [one of]sends shivers of mortifying humiliation down your spine[or]feel even more nervous about who might be watching you in this awkward situation[or]feel so uneasy that blood rushes to your head[if the player is upright] and you almost lose your balance[otherwise] and you shudder uncontrollably[end if][or]consumes you with an overwhelming sense of shame[or]find yourself in disbelief that you've allowed yourself to be demeaned like this[or]for a moment feel so bashful and vulnerable that you lose your composure[or]for a moment feel so incredibly shy that you almost want to just hide in a dark corner until the time runs out[or]causes you to cringe with humiliation[in random order]";
	humiliate 10 * calculated-appearance-outrage-level.


[!<PersonIsSluttilyDressed>+

We use this at the appropriate point during a 'say' command during the perception computation of an intelligent monster to trigger the humiliation and the extra text

+!]
Definition: a person is sluttily dressed:
	increase shocked-monsters by 1;
	if shocked-monsters > 1:
		say " at the same time, [one of]worsening the situation[or]making the humiliation even worse[or]making you feel even more self-conscious[or]turning you an even brighter shade of red[purely at random]";
		humiliate (10 * calculated-appearance-outrage-level) / shocked-monsters; [Each extra monster adds less than the one before]
		decide yes;
	otherwise if 17 is too humiliating and the player is outraged: [We consider the player no longer embarrassed about appearance after outrage 16]
		if calculated-appearance-outrage-level - 4 is too humiliating:
			say "[one of][mortifiedOutfit][or] and [if appearance-outrage-target is asshole]catches a glimpse of[otherwise if appearance-outrage-target is body part]can see[otherwise]can easily see[end if] your [MediumDesc of appearance-outrage-target], making you [blush 10 * calculated-appearance-outrage-level][purely at random]";
		otherwise:
			say ", which [one of]makes you feel a little uneasy [if appearance-outrage-target is worn clothing and appearance-outrage-target is not equippable]in[otherwise]with[end if] your [MediumDesc of appearance-outrage-target][or]causes you to wince with shyness[or]makes your cheeks flush[or]makes you blush shyly[or]makes you [if appearance-outrage-target is headgear]think about the impression your [ShortDesc of appearance-outrage-target] must be giving[otherwise]look down towards your [ShortDesc of appearance-outrage-target] bashfully[end if][in random order]";
			humiliate 10 * calculated-appearance-outrage-level;
		decide yes;
	decrease shocked-monsters by 1; [if we're deciding no, then we remove the shocked monster count]
	increase aroused-monsters by 1;
	if aroused-monsters > 1:
		say " at the same time, [one of]making you even more aroused[or]turning you on even more[or]turning you an even brighter shade of red[at random]";
		arouse 100;
		decide yes;
	otherwise if the player is nearly outraged: [The player no longer feels embarrassed about clothing, only aroused at being seen! But if their clothing is too boring, they won't even be aroused.]
		say ", and you find yourself feeling [one of]thrillingly nervous[or]getting a little [if the player is a bit horny]more [end if]turned on[or]blushing with shyness and pride[or]shivering with nervous excitement[at random] because [he of current-monster] can see your [if the number of worn rings > 1 and outrage-target is ring][number of worn rings] rings[otherwise][MediumDesc of appearance-outrage-target][end if]";
		arouse 25 * calculated-appearance-outrage-level;
		decide yes;
	decrease aroused-monsters by 1;
	decide no.




Perception ends here.

