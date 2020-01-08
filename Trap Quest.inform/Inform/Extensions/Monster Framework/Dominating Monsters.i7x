Dominating Monsters by Monster Framework begins here.

[!<YourselfIsDomLicious>+

Determines whether or not the player can successfully fuck a monster or not.

@deprecated This function determined whether or not the player would actually be presented with the chance to fuck a defeated female npc. Since it's now determined through rng, this function is unneeded.
@return This function returns true if the player is able to fuck the monster. Otherwise, it returns false.

+!]
[Definition: a person is domlicious:
	if there is a cursed ass covering clothing, decide no;
	if there is a cursed pussy covering clothing, decide no;
	if size of penis is 0 and the player is male and asshole is actually occupied, decide no;
	if the player is female and vagina is actually occupied, decide no;
	if the player is feeling submissive, decide no;
	if let it die tattoo is worn and a random number between 1 and 2 is 1, decide no;
	if the latex-transformation of the player >= 6, decide no;
	if there is a dangerous monster in the location of the player, decide no;
	if the size of penis > 0 and penis is not sex available, decide no;
	decide yes.]

[!<Player>@<dominatedCount:Integer>*

The number of times the player has had dominant sex.

*@!]
The player has a number called dominated-count. The dominated-count of the player is usually 0.
The player has a number called lick-get.[number of times player got cunnilingus/analingus]
The player has a number called blow-get.[number of blowjobs from npcs]
The player has a number called anal-get.[number of times player had anal sex]
The player has a number called fuck-get.[number of times player had vaginal sex]
The player has a number called sports-get.[number of times player did watersports stuff]

To FuckGet:
	increase the fuck-get of the player by 1.

To AnalGet:
	increase the anal-get of the player by 1.

To SportsGet:
	increase the sports-get of the player by 1.

To LickGet:
	increase the lick-get of the player by 1.

To BlowGet:
	increase the blow-get of the player by 1.

 [!<BodyPartIsAvailable>+

REQUIRES COMMENTING

+!]
Definition: a body part is available: decide no.

[!<OrificeIsAvailable>+

REQUIRES COMMENTING


+!]
Definition: an orifice (called O) is available:
	if O is actually occupied, decide no;
	decide yes.

[!<AssholeIsAvailable>+

REQUIRES COMMENTING

+!]
Definition: asshole (called F) is available:
	if F is actually occupied, decide no;
	if the player is ass protected, decide no;
	decide yes.

[!<VaginaIsAvailable>+

REQUIRES COMMENTING

+!]
Definition: vagina (called F) is available:
	if F is actually occupied, decide no;
	if the player is pussy protected, decide no;
	decide yes.

[!<BreastsIsAvailable>+

REQUIRES COMMENTING

+!]
Definition: breasts (called B) is available:
	repeat with C running through worn breast covering clothing:
		if C is not fully exposing and C is not optional-top-displacable, decide no;
	decide yes.

[!<DomMonster>+

The health of the monster should be set to above zero so the game doesn't immediately destroy it. The monster should also have their location changed so the player can't just one-hit them after.

@deprecated This function represents the old "fuck" framework, where the player would automatically get the chance to have sex with a defeated female monster when their health reached zero. The fact that it was a guarantee meant that the reward the player got had to be rather small, and a considerable drawback always had to come with it.

+!]
To dom (M - a monster):
	say "[if the size of penis > 0]You use [NameDesc of M] as your own personal cocksleeve! Then [he of M] runs away, humiliated and angry.[otherwise]You finger-bang [NameDesc of M] into submission. [big he of M] runs away, humiliated and angry.[end if]";

[DOMINANT SEX FRAMEWORK]

[!<DominateUpMonster>+

This function increments the times-dominated value for M, then increments dominated-count for the player. This allows the game to keep track of how many times the player has dominated a monster, and how many monsters the player has dominated overall.

@param <Monster>:<M> The monster the player dominated

+!]
To DominateUp (M - a monster):
	increase the times-dominated of M by 1;
	increase the dominated-count of the player by 1;
	increase the sex-count of the player by 1.

[!<playerFucking:Integer>*

Determines whether invocations of the orgasm function output any text.

*!]
Player-fucking is a number that varies.

The DOMINANT-FAILURE is always -1.
The DOMINANT-NONE is always 0.
The DOMINANT-DOMINANT is always 1.
The DOMINANT-SHAMEFUL is always 2.
The DOMINANT-NEUTRAL is always 3.
The DOMINANT-SUPER is always 4.

[!<playerFuckChoice:Integer>*

Determines what type of sex the player is currently attempting to have.
-3 - Watersports
-2 - Sex
-1 - Blowjob
0 - nothing
1 - facesitting
2 - not conventional sex
3 - Cowgirl

*!]
Player-fuckchoice is a number that varies.
FUCK-WATERSPORTS is always -3.
FUCK-PENETRATION is always -2.
FUCK-BLOWJOB is always -1.
FUCK-NONE is always 0.
FUCK-FACESIT is always 1.
FUCK-UNIQUE is always 2.
FUCK-RIDE is always 3.

Player-fucker is a body part that varies.

Dominating is an action applying to one thing.

[!<CheckDominating>+

This functions determines whether we let the player try to dominate a monster, and sets things up for the actual attempt. Players that have a penis and players who are wearing strap-ons have an option to use those on monsters. Players also have an option to use either their vagina (female players) or their asshole (male players). If the player has no penis or no strap-on, then it defaults to one of those two. Once we know what the player will be using to dominate the monster, we perform some more specific checks to make sure that the player is actually able to use that properly. NOTE: if the player has a chastity item on, then they won't be able to use a penis for sex, even if it's not directly attached to their body

+!]
Check dominating:
	now player-fuckchoice is FUCK-NONE;
	now player-fucking is DOMINANT-NONE;
	if the noun is not monster, say "What would be the point of that?" instead;
	if diaper quest is 1, say "I think you're playing the wrong game." instead;
	if the noun is woman-barbara and the woman-status of woman-barbara is 80, compute PlayerBarbaraStoolFuck instead;
	if the noun is not wenchy, say "The [the noun] doesn't look like someone you could successfully dominate." instead;
	if the latex-transformation of the player >= 6, say "You wouldn't feel anything from it, so you don[']t see the point." instead;
	if the player is prone, say "That would be a little hard to do from your knees." instead;
	unless the noun is interested, say "[BigNameDesc of the noun] isn't looking at you right now. Try getting their attention first.";
	now player-fucker is face;[player-fucker is what is used to fuck the monster. Face is merely a default value]
	if the noun is male:
		let C be 5;
		if the player is horny, decrease C by 1;
		if the player is very horny, decrease C by 1;
		if the player is extremely horny, decrease C by 1;
		if the sex addiction of the player < C:
			if debugmode is 0, say "[first custom style][if the player is male]What if [he of the noun] turned it back on me? I'm not that desperate![otherwise]It would be vindicating, but [he of the noun] could turn it back on me. I'm not that desperate.[end if][roman type][line break]" instead;
			otherwise say "if debugmode were disabled, the player would refuse to perform this action.";
	let S be a random worn strapon-panties;
	if S is demon codpiece, say CodTightenFlav of S;
	if sexual-penis-length > 0:
		suggestFucker penis for the noun;
	if player-fucker is face:
		if the player is female, suggestFucker vagina for the noun;
		otherwise suggestFucker asshole for the noun;
		[if player-fucker is a fuckhole and S is demon codpiece, say "The [printed name of S] seems to be preventing you from doing that!" instead;]
	if player-fucker is face:
		suggestFucker face for the noun;
	if player-fuckchoice is FUCK-NONE:
		if S is demon codpiece, say CodLoosenFlav of S;
		do nothing instead;
	if player-fucker is penis:[Now that the part we want to use is selected, validate]
		if there is a worn condom of kings, say "You wouldn't feel anything from it, so you don't see the point." instead;
		if S is clothing:[dildo-usage determines whether the player's dick is sticking out of the strap-on]
			if there is a worn chastity cage or there is a worn restricting research airhancer:
				say "Your [if there is a worn chastity cage][printed name of a random worn chastity cage] pulses[otherwise][printed name of a random research airhancer] flashes several times[end if], and your [SexDesc of penis] immediately loses all rigidity. Looks like you need to try something else...";
				if S is demon codpiece, say CodLoosenFlav of S instead;
				otherwise do nothing instead;
		otherwise:
			if there is a undisplacable pussy covering clothing, say "You'll have to find a way to remove your [printed name of a random undisplacable pussy covering clothing] first." instead;
			if there is a worn chastity cage, say "You'll have to find a way to get out of your chastity cage first!" instead;
			if there is a worn restricting research airhancer, say "Your [ShortDesc of penis] can't get hard enough to dominate [i]anyone[/i]. You'll need to deactivate your [printed name of a random research airhancer] first." instead;
	otherwise if player-fucker is vagina:
		if there is undisplacable pussy covering clothing, say "You'll have to remove your [printed name of a random undisplacable pussy covering clothing] first." instead;
		if there is a worn chastity cage, say "You'll have to find a way to get out of your chastity first!" instead;
		if vagina is actually occupied, say "You need to remove your [printed name of a random thing penetrating vagina] first!" instead;
	otherwise if player-fucker is asshole:
		if there is a worn undisplacable ass covering clothing, say "You[']ll have to find a way to get your [printed name of a random worn undisplacable ass covering clothing] out of the way first." instead;
		if asshole is actually occupied, say "You need to remove your [printed name of a random thing penetrating asshole] first!" instead;
	if the player is feeling submissive and the player is not a nympho, say "Wouldn't it be easier to ask [him of the noun] to fuck me? It would probably be more fun that way, too!" instead;[players with very high delicateness will be too afraid to dominate unless they have high sex obsession too]
	repeat with M running through monsters in the location of the player:
		if M is not the noun, compute domination interference of (M) for (the noun);
		if player-fucking is DOMINANT-FAILURE, now player-fucking is DOMINANT-NONE instead;

To compute domination interference of (M - a monster) for (N - a monster):
	if M is dangerous:
		say "[BigNameDesc of M] gets in your way and prevents you from dominating [NameDesc of the noun]!";
		now player-fucking is DOMINANT-FAILURE.

To suggestFucker (F - a body part) for (M - a monster):
	if F is a fuckhole:
		if M is male, say "Do you want to try and use your [variable F] to ride [him of M]?";
		otherwise say "Do you want to see if you can make [him of M] eat out your [variable F]?";
	otherwise if F is penis:
		let S be a random worn strapon-panties;
		say "Do you want to try and use your [if S is clothing][S][otherwise][player-penis][end if] to fuck [him of M]?";
	otherwise:
		say "You definitely won't orgasm if you proceed this way. Do you still want to try and dominate [him of M]?".


To say DomThreshold (R - a number):
	if R is DOMINANT-DOMINANT, say "Auto dominance threshold met.[line break]";
	if R is DOMINANT-NONE, say "Neither auto threshold met.[line break]";
	if R is DOMINANT-FAILURE, say "Auto failure threshold met.[line break]".

[!<CarryOutDominating>+

This function handles a player's attempt to dominate a given monster. Dominant sex is controlled by a value called player-fucking. This value manipulates a couple things in the Orgasm extension, but mostly we use it here. if player-fucking is DOMINANT-FAILURE, it means the player failed to dominate the monster. If it's DOMINANT-DOMINANT, if means the player succeeded. If it's DOMINANT-NONE, it means we don't know yet.

We start off with a check to see if the monster in question is over 50% hp or if the player has max delicateness, which is an automatic failure.
IF we can't determine anything with that, we use a special function called DecideWhichNumberIsTheSubmissivenessOfMonster, which outputs either 1 or -1 depending on a couple factors.
Now that we have the result, we diverge.
IF THE PLAYER SUCCEEDED, we output some flavour text describing the monster and the player having sex. In general, if the player uses their penis/strap-on for sex, big penis is good, small penis is bad. If the player uses a fuckhole for sex and the monster has a penis, the player will usually ride on top of them and then have some choice at the end of the scene, depending on a couple factors. Otherwise, the player will sit on a monster's face, which probably won't get the player an orgasm, but it has few drawbacks. Once the scene has been displayed, we apply any rewards for dominant sex. These rewards vary depending on the monster and any specific events that may have happened in the scene. Once we're done, we send the monster somewhere else so the player can't immediately attack them again, although this isn't actually a big problem, since they'll instantly be at full health after it's over. It is not necessary to make the monster lose interest after a successful dominance scene, and in the case of male monsters that fuck the player, it can be inadvisable, since it makes it difficult to know whether or not the player used a condom.
IF THE PLAYER FAILED, we output a short piece of flavour where the monster turns the tables. After that, the monster will give the player some sort of unique punishment. In general, these punishments should not be something the player wants to repeat, so the player doesn't use it as an excuse to always weasel out of normal punishments. Note that if the monster has a penis, it's often strictly worse than if the player had just done things the normal way. If the monster is still interested after handling the punishment, it means they ARE going to do things the normal way, so we don't send them anywhere.
AFTER EVERYTHING is said and done, we reset player-fucking to 0.

+!]
Carry out dominating:
	let M be the noun;
	now player-fucking is DOMINANT-NONE;[we set this to 1 after we're finished determining success]
	let R be (the number of worn dominance clothing * 2) + (the maxhealth of M / 2);
	if let it die tattoo is worn, decrease R by 10;
	if the health of M >= R or the delicateness of the player is 20, now player-fucking is DOMINANT-FAILURE;[any more than 50% hp and it's auto loss]
	if debugmode > 0 and player-fucking is DOMINANT-FAILURE:
		if the delicateness of the player is 20, say "[input style]Player is too submissive.[line break]";
		otherwise say "[input style]Target has too much health.[line break]";
	if player-fucking is DOMINANT-NONE, now player-fucking is the submissiveness of M;[submissiveness of M will set player-fucking based on the monster]
	otherwise say DomThreshold player-fucking;
	let J be a random worn demon codpiece;
	if player-fucking > DOMINANT-NONE:[Value of 1 or more? The player is successful!]
		now the refactory-period of M is -4;[Allows us to track whether the monster came during the scene]
		say DominanceSuccess of M;
		compute successful dominance of M;
		if J is clothing and player-fucker is penis:
			say CodLoosenFlav of J;
			follow the demon junk reward rule;
		replace M after domination;
		let H be rugged-headband;
		if player-fucking is DOMINANT-DOMINANT or player-fucking is DOMINANT-SUPER and H is worn and the player is an april 2019 top donator, progress quest of domination-quest;
		if the times-dominated of M >= 2 and the player is the donator:
			if H is actually summonable and rugged-summoned is 0:
				say "You feel your hair being tousled as a [MediumDesc of H] materialises on your head.";
				summon H cursed with quest;
				now rugged-summoned is 1;
		repeat with N running through monsters in the location of the player:
			if N is not M, say DominationReaction of N to M;
	otherwise:[Player failed and is getting punished]
		if J is clothing, say CodLoosenFlav of J;
		unless M is unfriendly, anger M;[this handles edge cases where the player goes for a monster that isn't paying attention to the player.]
		now the stance of the player is 1;[The flavour should usually imply the player is on their knees, but specific monsters can choose to override that with DominanceFailure of M.]
		FatigueUp 50;
		say DominanceFailure of M;
		compute failed dominance punishment of M;
		unless M is interested:[If the monster is still interested it usually means they're about to fuck the player]
			say DominanceFailed of M;
			replace M after domination;
		repeat with N running through monsters in the location of the player:
			if N is not M, say DominationFailedReaction of N to M;
	now player-fucking is DOMINANT-NONE;
	now player-fuckchoice is FUCK-NONE.

Report dominating:
	allocate 6 seconds;

Understand "dominate [something]", "fuck [something]", "dom [something]", "screw [something]", "bang [something]", "do [something]", "enjoy [something]", "have sex with [something]", "sleep with [something]", "top [something] as dominating.

To say DominationReaction of (M - a monster) to (N - a monster):
	if M is interested, make M expectant;

To say DominationFailedReaction of (M - a monster) to (N - a monster):
	if M is interested, make M expectant;

[!<DecideWhichNumberIsTheDominanceOfThePlayer>+

This function calculates the "dominance score" of the player, which is derived from the player's sex addiction, delicateness, and orifice openness, in addition to penis size and the enchantment types of any pieces of worn clothing. Male players always have an inherent advantage, so we try to compensate a little bit by taking the average gape of both holes for female players. If the player learns the fuckskill, orifice openness and sex addiction are omitted from the calculation.
Selkie: what would add a lot of value to this comment is some concrete examples of dominance values to use.
MG: generally the purpose of this function is to pit it against monsters, so it's more about whether the player's "score" is higher than whatever value we get from the monster

@return <Integer> The player's dominance score. Low values indicate the player is more submissive, higher values indicate the player is more dominant. The default value for male players is 12. The default value for female players is 8.
+!]
To decide which number is the dominance of the player:
	let D be 5; [The player is naturally a little dominant]
	decrease D by the delicateness of the player;
	decrease D by the number of worn temptation clothing * 2;
	increase D by the number of worn dominance clothing * 2;
	if player-fucker is penis:
		if sexual-penis-length >= 10, increase D by 2;
		if sexual-penis-length <= 3, decrease D by 2;
	if fuckskill is 0:[note that default openness is 1, so all players can gain something from having the skill.]
		if the player is male, decrease D by the openness of asshole / 2;
		otherwise decrease D by (the openness of vagina + the openness of asshole) / 4;
		decrease D by the sex addiction of the player / 4;
	decide on D.

[!<DecideWhichNumberIsTheSubmissivenessOfMonster>+

Does the monster submit to sex, or do they turn the tables; broken up so it's easier to balance the numbers. 1st check: Checks the physical dominance roll function for M, and if the result is not 0, returns the result 2nd check: Takes a random number between the dominance of a player and 1/2 the player's strength, then compares the result "N" against the difficulty of M - the times-dominated of M, "D". If N is greater than or equal to D, the player wins with no further check. 3rd check: Retry 2nd check. I made a rule during a play-through that I'd accept a failure if I failed again after using undo once, so it felt right to simply include that in the check. 4th check: If M has a maxhealth of 40 or more and their health is 10 or less, retry 2nd check.

@param <Monster>:<M> The monster the player is trying to dominate
@return <Integer> A value of -1 indicates failure. A value of 1 indicates success!

+!]
To decide which number is the submissiveness of (M - a monster):
	let R be the physical dominance roll for M;
	if debugmode > 0, say DomThreshold R;
	unless R is 0, decide on R;[has to be done like this to account for RNG]
	let N be the mental dominance roll for M;
	let D be the submissiveness base of M;
	if debugmode > 0, say "[input style]Player dominance = [N], monster submissiveness = [D]. Check: Is N >= D?[roman type][line break]";
	if N >= D:
		if debugmode > 0, say "[bold type]PASSED![roman type][line break]";
		decide on DOMINANT-DOMINANT;
	if debugmode > 0:
		say "[bold type]Failed.[roman type][line break]";
		say "[input style]Reroll 1. New player dominance = [N], monster submissiveness = [D]. Check: Is N >= D?[roman type][line break]";[I made a rule during a play-through I'd accept the failure if I failed again after an undo, so we might as well incorporate that into the check.]
	now N is the mental dominance roll for M;
	if N >= D:
		if debugmode > 0, say "[bold type]PASSED![roman type][line break]";
		decide on DOMINANT-DOMINANT;
	if the health of M <= 10 and the maxhealth of M >= 40:[this is a high health enemy that takes a lot of effort to get this low, so we re-roll N a second time and try again]
		if debugmode > 0, say "[bold type]Failed.[roman type][line break]";
		now N is the mental dominance roll for M;
		if debugmode > 0, say "[input style]Reroll 2. New player dominance = [N], monster submissiveness = [D]. Check: Is N >= D?[roman type][line break]";
		if N >= D:
			if debugmode > 0, say "[bold type]PASSED![roman type][line break]";
			decide on DOMINANT-DOMINANT;
	if debugmode > 0, say "[bold type]Failed.[roman type][line break]";
	decide on DOMINANT-FAILURE.

[!<DecideIfMonsterIsDominantSexReady>+

Determines whether or not it is likely that the player would succeed if they tried to dominate this monster.

@param <Monster>:<M> The monster the player could potentially dominate
@return <Boolean> True if the average of the player's strength and dominance is greater than M's submissiveness base

+!]
To decide if (M - a monster) is dominantSexReady:
	unless M is wenchy, decide no;
	let X be ((the strength of the player / 2) + the dominance of the player) / 2;[that is to say, the average of strength and dominance]
	if the submissiveness base of M < X, decide yes;
	decide no.

[!<DecideWhichNumberIsMentalDominanceRollForMonster>+

Outputs the strength of the player's current domination attempt for a particular monster

@param <Monster>:<M> The monster the player is trying to dominate
@return <Integer> integer between the player's strength divided by 2 and the player's dominance value

+!]
To decide which number is the mental dominance roll for (M - a monster):
	decide on a random number between (the strength of the player / 2) and the dominance of the player.

[!<DecideWhichNumberIsSubmissivenessBaseOfMonster>+

Outputs the "DC" the player's mental dominance roll needs to beat in order to dominate a particular monster

@param <Monster>:<M> The monster the player is trying to dominate
@return <Integer> integer based on M's health and the number of times the player has successfully dominated it

+!]
To decide which number is the submissiveness base of (M - a monster):
	let D be the health of M;
	decrease D by the times-dominated of M * 2;
	decrease D by player-fuckchoice * 2;[player-fuckchoice corresponds to the type of sex.]
	decide on the health of M - the times-dominated of M.

[!<DecideWhichNumberIsThePhysicalDominanceRollForMonster>+

By default, puts 1/3 the player's strength against roughly 5/6 the monster's difficulty. If the player's value is higher, they get a 50/50 to win with no further checks. This function should handle any special conditions that a monster has for dominant sex.

@param <Monster>:<M> The monster the player is trying to dominate
@return <Integer> A value of -1 indicates the player can't dominate this monster, a value of 1 indicates that the player succeeds, and a value of 0 indicates that the game isn't sure yet.

+!]
To decide which number is the physical dominance roll for (M - a monster):
	let R be the strength of the player / 3 - (the difficulty of M / 2 + the difficulty of M / 3);
	if debugmode > 0, say "[input style]Physical roll to be above 0. Is [R] (physical roll) > 0?[roman type][line break]";
	if R > 0:
		if debugmode > 0, say "[bold type]PASSED![roman type][line break]";
		if a random number between 1 and 2 is 1, decide on DOMINANT-DOMINANT;
	if debugmode > 0, say "[bold type]Failed.[roman type][line break]";
	decide on DOMINANT-NONE.

[!<SayDominanceSuccessOfMonster>+

This function determines what happens when a monster fails its "submissiveness" check. Usually that means a "short" sex scene. computeSuccessfulDominanceOfMonster is called after this, which handles anything that should happen when the player successfully dominates a monster

@param <Monster>:<M> The monster the player dominated

+!]
To say DominanceSuccess of (M - a monster):
	say "You successfully force [NameDesc of M] to [his of M] knees and [if the size of penis > 0]use [him of M] as your own personal cocksleeve! [otherwise]finger-bang [him of M] into submission. [end if][big he of M] is visibly angry that you managed to get the better of [him of M] this time.".

[!<ComputeSuccessfulDominanceOfMonster>+

This function handles the virginity check after sex, the incrementing of times dominated, and sets up the replaceAfterDomination function. Before doing anything else, it calls computeDominanceRewardOfMonster for M, where any special rewards or difficulty increases are applied. If the player cannot lose their virginity to M, this function must be overridden. If something else happens instead of the monster being teleported to a random room after sex, this function should be overridden.

@param <Monster>:<M> The monster the player dominated

+!]
To compute successful dominance of (M - a monster):
	compute unique dominance reward of M;
	if the player is male and player-fucker is penis, check virginity with M;
	if player-fucking is not DOMINANT-SHAMEFUL:
		DominateUp M;
		DifficultyUp M by 2;
		say "[line break][BigNameDesc of M] slinks away as soon as [he of M] has the strength.[line break]You feel [if player-fucking is DOMINANT-NEUTRAL]a bit [end if]more [if the player is male]manly[otherwise]dominant[end if]!";
	otherwise:
		TimesSubmittedUp M by 1;
		say "[line break][BigNameDesc of M] slinks away as soon as [he of M] has the strength.[line break]You feel so humiliated...".

[!<ComputeUniqueDominanceRewardOfMonster>+

This function is called by the ComputeSuccessfulDominanceOfMonster function. Normal rewards are decreases to sex addiction and delicateness.

@param <Monster>:<M> The monster the player dominated

+!]
To compute unique dominance reward of (M - a monster):
	if player-fuckchoice is FUCK-RIDE, compute power bottom reward of M;
	otherwise compute default dominance reward of M;
	DelicateDown 1.

To compute default dominance reward of (M - a monster):
	let S be the raw sex addiction of the player;
	if player-fucking is DOMINANT-DOMINANT or player-fucking is DOMINANT-SUPER, SexAddictDown 2;
	if the player is male:
		PenisUp 1;
	otherwise:[female players don't have penis length to gain, so better delicate decrease]
		DelicateDown 1.

[!<sayPowerBottomCommentOfMonster>+

This function is called when the player is about to "dominantly ride" a male monster. I thought it made sense for it to be reusable, so it's a function.

@param <Monster>:<M> The monster the player is dominating

+!]
To say PowerBottomComment of (M - a monster):
	if the player is not able to speak:
		say "You give [NameDesc of M] a smouldering look, hopefully conveying how [if the bimbo of the player < 6]dominant you are even though you're about to sit on [his of M] [DickDesc of M][otherwise if the bimbo of the player < 12]compromising this situation is for [him of M] and [his of M] [DickDesc of M][otherwise]much you want to sit on [his of M] [DickDesc of M][end if].";
	otherwise if the bimbo of the player < 6:
		if the player is male:
			say "[first custom style]'[one of]I don't care how it looks, I've fucking earned this. Your dick is MINE.'[or][if the size of penis < the girth of M]You think you're so fucking great because you're bigger than me? Better not be a quick-shot.'[otherwise]Good thing I'm so much bigger than you, otherwise I might be worried this would hurt!'[end if][or]Now, *I* get to stick your dick in me.'[at random][roman type]";
		otherwise:
			say "[first custom style]'[one of]Oh we're going to fuck, but you're not going to be doing the fucking.'[or]This time, you're MY fucktoy.'[or]That didn[']t go the way you'd hoped, now did it?'[at random][roman type]";
	otherwise if the bimbo of the player < 12:
		say "[variable custom style]'[one of]I[']m going to be on top this time.'[or]I hope you're not a quick-shot, sweetie.'[or]So, are you excited? You get to be fucktoy now!'[at random][roman type]";
	otherwise:
		say "[second custom style]'[one of]Are you ready, sugar?'[or]So, stud, why don[']t we get down to business?'[or]Don[']t worry baby, I[']ll do everything.'[or]Don[']t worry about a thing, honey, you[']re in [NameBimbo][']s hands.'[at random][roman type]".

[!<ComputePowerBottomRewardOfMonster>+

This function should usually be called when the player successfully dominates a male monster, such that it completely replaces the normal unique dominance reward. Usual reward is a substantial delicateness decrease. Since there's a possibility of the
player being inseminated during the sex, the player can choose to apply a condom to their partner before the event. If they do, there's no risk of creampie and the player will always get to cum. Skipping the condom obviously brings a risk of a creampie, so to balance it out, one pinned condom will be removed from their clothing, prioritizing torn condoms first, then full ones.

@param <Monster>:<M> The monster the player dominated

+!]
To compute power bottom reward of (M - monster):
	unless M is wrapped:
		let condom-removed be 0;
		repeat with C running through worn condom pinned clothing:
			unless condom-removed is 1:
				if the empty condoms of C > 1, decrease the empty condoms of C by 1;
				otherwise decrease the used condoms of C by 1;
				now condom-removed is 1;
		DelicateDown 1;
	otherwise:
		DelicateDown 2;
		now M is unwrapped.

[!<ReplaceMonsterAfterDomination>+

Puts the monster in a random room so the player can't just try again right after.

@param <Monster>:<M> The monster the player dominated

+!]
To replace (M - a monster) after domination:
	if debugmode > 0, say "Regionally placing [M].";
	distract M;
	regionally place M.

[There is a template for dominating monsters, since having the functions broken up is easier than trying to debug a giant unreadable wall of text

Copy Paste.

To watersports dominate (M - a monster):[Boring, needs changing for wenchy monsters]
	say "You fuck [NameDesc of M] and urinate on [him of M].";
	SportsGet.

To oral dominate (M - a monster):[Boring, needs changing for wenchy monsters]
	say "You make [NameDesc of M] give you a blowjob.";
	BlowGet.

To anal dominate (M - a monster):[Boring, needs changing for wenchy monsters]
	say "You fuck [NameDesc of M] in the ass.";
	AnalGet.

To vaginal dominate (M - a monster):[Boring, needs changing for wenchy monsters]
	say "You fuck [NameDesc of M] right in the pussy.";
	FuckGet.

To female dominate (M - a monster):[Boring, needs changing]
	say "You make [NameDesc of M] eat you out";
	LickGet.

To say AfterDominationComment (N - a number) of (M - a monster):
	say "[line break][speech style of M]'I[']ll pay you back for that...'[roman type][line break]".

]

[The monster succeeded the submissiveness check! Easily reusable]
[!<SayDominanceFailureOfMonster>+

The text in this function should output whenever the player unsuccessfully dominates a monster. We don't want to include it in any of the failed dominance functions because we'd be writing the same thing over and over.

@param <Monster>:<M> The monster the player tried to dominate

+!]
To say DominanceFailure of (M - a monster):
	say "You try to force yourself on [NameDesc of M], but [he of M] turns the tables and forces you to your knees instead!";

[Usually when you mess up you'll be punished by having some clothes torn off, but if you're not wearing anything you'll have to deal with a more intense punishment courtesy of Nintendolls]
[!<ComputeFailedDominancePunishmentOfMonster>+

The failed dominance punishment should be implemented for any monster that the player can dominate. By default, the monster will perform their angry punishment, or the monster will leave the player alone and the game will punish them instead (with sissification). Most monsters should follow this general formula. If the monster decides to repay the player with sex, any punishment here should be fairly mild, and the another-turn flag should be set to 1. If the monster won't be having sex with the player right after, the punishment here should be a bit more intense, and we should make sure the monster loses interest at the end.
+!]
To compute failed dominance punishment of (M - a monster):
	if M is male:
		if debugmode > 0, say "Triggering default male monster punishment.";
		now another-turn is 1;[a male monster will just fuck you]
	otherwise:
		if debugmode > 0, say "Triggering default female monster punishment.";
		humiliate 30;
		if the number of worn not sissifying removable clothing > 0:
			compute angry punishment of M;
		otherwise:
			say "[BigNameDesc of M] seems to lose interest you and begins walking off.";
			compute sissification;
		Bore M.

[!<SayDominanceFailedOfMonster>+

The text here should output when M teleports to another room after the player unsuccessfully dominates them.

@param <Monster>:<M> The monster the player tried to dominate

+!]
To say DominanceFailed of (M - a monster):
	say "[line break][BigNameDesc of M] hurries off before you have a chance to stop [him of M].".

[!<ComputeSissification>+

computeSissification is called whenever the monster doesn't have another punishment for the player, or we weren't satisfied with the monster's normal punishment was light, so we want to make it more intense. It can summon sissy items or increase delicateness, but it could always have some other effects added later. The idea here is that failing to dominate a monster too many times will put the player into a downward spiral that they have trouble recovering from, but that can be avoided by playing smart with your odds. Most punishments from this function should be more on the side of harsh, with small upsides here and there.

+!]
To compute sissification:
	let S be a random off-stage sissifying actually summonable fetish appropriate clothing;
	if the player is male and transGender is 0 and pink sissy bow is off-stage and pink sissy bow is actually summonable:
		say "[bold type]A silky pink bow appears in your hair![line break][variable custom style][if the bimbo of the player < 5]Is this bullshit game trying to tell me I'd make more sense as a girl?[otherwise]I get it... only a girl would have trouble doing something like that...[end if][roman type][line break]";
		summon pink sissy bow cursed;
	otherwise if pink sissy bow is worn and S is clothing:
		say "[bold type]As if reacting to your lack of dominance, you suddenly feel a [ShortDesc of S] [bold type]appear on you![line break][variable custom style][one of]Uh-oh...[or]This is making me feel like a pathetic [sissy]...[or]Even more [sissy] clothing?![stopping][roman type][line break]";
		summon S cursed;
		announce sissification;
	otherwise:
		say "The [if the player is male and transGender is 0]emasculating[otherwise]humiliating[end if] memory locks itself into place, [bold type]sure to make you more submissive from now on.[roman type][line break][variable custom style][one of]I should stop pretending to be dominant...[or]It's obvious to everyone how pathetic I am...[or]How can I be dominant when I'm already so pathetic?[stopping][roman type][line break]";
		SilentlyDelicateUp 1.


Dominating Monsters ends here.
