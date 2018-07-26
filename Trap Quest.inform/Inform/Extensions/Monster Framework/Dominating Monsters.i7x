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
	if there is a worn let it die tattoo and a random number between 1 and 2 is 1, decide no;
	if the latex-transformation of the player >= 6, decide no;
	if there is a dangerous monster in the location of the player, decide no;
	if the size of penis > 0 and penis is not sex available, decide no;
	decide yes.]

[!<Player>@<dominatedCount:Integer>*

The number of times the player has had dominant sex.

*@!]
The player has a number called dominated-count. The dominated-count of the player is usually 0.

 [!<BodyPartIsAvailable>+

REQUIRES COMMENTING

+!]
Definition: a body part (called B) is available:
	decide no.

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
	say "[if the size of penis > 0]You use [NameDesc of M] as your own personal cocksleeve!  Then [he of M] runs away, upset and angry.[otherwise]You finger-bang [NameDesc of M] into submission. [big he of M] runs away, upset and angry.[end if]";

[DOMINANT SEX FRAMEWORK]

[!<DominateUpMonster>+

This function increments the times-dominated value for M, then increments dominated-count for the player. This allows the game to keep track of how many times the player has dominated a monster, and how many monsters the player has dominated overall.

@param <Monster>:<M> The monster the player dominated

+!]
To DominateUp (M - a monster):
	increase the times-dominated of M by 1;
	increase the dominated-count of the player by 1.

[!<playerFucking:Integer>*

Determines whether invocations of the orgasm function output any text.

*!]
Player-fucking is a number that varies.	

Dominating is an action applying to one thing.

[!<CheckDominating>+

REQUIRES COMMENTING

+!]
Check dominating:
	if the noun is not monster, say "What would be the point of that?" instead;
	if diaper quest is 1, say "I think you're playing the wrong game." instead;
	if the noun is not wenchy, say "The [the noun] doesn't look like someone you could successfully dominate." instead;
	if the noun is manly-wenchy:
		let C be 5;
		if the player is horny, decrease C by 1;
		if the player is very horny, decrease C by 1;
		if the player is extremely horny, decrease C by 1;
		if the sex addiction of the player < C:
			if debugmode is 0, say "[first custom style][if the player is male]What if [he of the noun] was into it? Also, wouldn't that be pretty gay?[otherwise]It would be vindicating, but I won't risk having [him of the noun] turning the tables on me.[end if][roman type][line break]" instead;
			otherwise say "if debugmode were disabled, the player would refuse to perform this action.";
	if the latex-transformation of the player >= 6, say "You wouldn't feel anything from it, so you don[']t see the point." instead;
	let D be asshole;[what are you going to use to fuck the monster]
	if the player is female, now D is vagina;
	if the player is male:
		now D is penis;
		if the player is barbie or the noun is manly-wenchy, now D is asshole;
	if D is penis:
		if there is a worn undisplacable potentially penis covering clothing, say "You'll have to find a way to remove your [printed name of a random worn undisplacable potentially penis covering clothing] first." instead;
		if there is a worn chastity cage, say "You'll have to find a way to get out of your chastity first!" instead;[your chastity?]
		if there is a worn condom of kings or there is a worn restricting research airhancer, say "You wouldn't feel anything from it, so you don't see the point." instead;
	otherwise if D is vagina:
		if there is undisplacable pussy covering clothing, say "You'll have to remove your [printed name of a random undisplacable pussy covering clothing] first." instead;
		if there is a worn chastity cage, say "You'll have to find a way to get out of your chastity first!" instead;
		if vagina is actually occupied, say "You need to remove your [printed name of a random worn clothing penetrating vagina] first!" instead;	
	otherwise:
		if there is a worn undisplacable ass covering clothing, say "You[']ll have to find a way to get your [printed name of a random worn undisplacable ass covering clothing] out of the way first." instead;
		if asshole is actually occupied, say "You need to remove your [printed name of a random worn clothing penetrating asshole] first!" instead;	
	if the player is feeling submissive and the player is not a nympho, say "Wouldn't it be easier to ask [him of the noun] to fuck me? It would probably be more fun that way, too!" instead;[players with very high delicateness will be too afraid to dominate unless they have high sex obsession too]
	if the number of dangerous monsters in the location of the player > 1, say "You're outnumbered right now. You should try to find some place more secluded before trying something so bold." instead;
	if the player is prone, say "That would be a little hard to do from your knees." instead;
	unless the noun is interested:
		say "The [noun] isn't even paying attention to you right now. Are you sure you want to start a fight?";
		unless the player consents, do nothing instead.

To say DomThreshold (R - a number):
	if R is 1, say "Auto dominance threshold met.[line break]";
	if R is 0, say "Neither auto threshold met.[line break]";
	if R is -1, say "Auto failure threshold met.[line break]".

[!<CarryOutDominating>+

REQUIRES COMMENTING

+!]
Carry out dominating:
	let M be the noun;
	now player-fucking is 0;[we set this to 1 after we're finished determining success]
	if the health of M >= (the number of worn let it die tattoos  * -10) + (the number of worn dominance clothing * 2) + (the maxhealth of M / 2) or the delicateness of the player is 20, now player-fucking is -1;[anymore than 50% hp and it's auto loss]
	if player-fucking is 0, now player-fucking is the submissiveness of M;[submissiveness of M will set player-fucking based on the monster]
	otherwise say DomThreshold player-fucking;
	if player-fucking is 1:[Value of 1? The player is successful!]
		say DominanceSuccess of M;
		compute successful dominance of M;
		let J be a random worn demon codpiece;
		if J is clothing, follow the demon junk reward rule;
		replace M after domination;
	otherwise:[Value of 2? Player failed and is getting punished]
		now M is interested;
		unless M is unfriendly, anger M;[this handles edge cases where the player goes for a monster that isn't paying attention to the player.]
		now the stance of the player is 1;[The flavour should usually imply the player is on their knees, but specific functions can override that with DominanceFailure of M.]
		FatigueUp 50;
		now player-fucking is 1;
		say DominanceFailure of M;
		compute failed dominance punishment of M;
		unless M is interested:[If the monster is still interested it usually means they're about to fuck the player]
			say DominanceFailed of M;
			replace M after domination;
	now player-fucking is 0.

Report dominating:
	now seconds is 6;

Understand "dominate [something]", "fuck [something]", "dom [something]", "screw [something]", "bang [something]", "do [something]", "enjoy [something]", "have sex with [something]", "sleep with [something]" as dominating.

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
	unless there is a worn chastity cage, increase D by the size of penis;[really only counts for "manly-wenchy" situations]
	if the player is female and tg fetish is 0, increase D by 3;
	if fuckskill is 0:[note that default openness is 1, so all players can gain something from having the skill.]
		if the player is male, decrease D by the openness of asshole / 2;
		otherwise decrease D by (the openness of vagina + the openness of asshole) / 4;
		decrease D by the sex addiction of the player / 4;
	decide on D.

[!<DecideWhichNumberIsTheSubmissivenessOfMonster>+

Does the monster submit to sex, or do they turn the tables; broken up so it's easier to balance the numbers. 
1st check: Checks the physical dominance roll function for M, and if the result is not 0, returns the result
2nd check: Takes a random number between the dominance of a player and 1/2 the player's strength, then compares the result "N" against the difficulty of M - the times-dominated of M, "D". If N is greater than or equal to D, the player wins with no further check.
3rd check: Retry 2nd check. I made a rule during a play-through that I'd accept a failure if I failed again after using undo once, so it felt right to simply include that in the check.
4th check: If M has a maxhealth of 40 or more and their health is 10 or less, retry 2nd check.

@param <Monster>:<M> The monster the player is trying to dominate
@return <Integer> A value of -1 indicates failure. A value of 1 indicates success!

+!]
To decide which number is the submissiveness of (M - a monster):
	let R be the physical dominance roll for M;
	if debugmode > 0, say DomThreshold R;
	unless R is 0, decide on R;[has to be done like this to account for RNG]
	let N be the mental dominance roll for M;
	let D be the submissiveness base of M;
	if debugmode > 0, say "Player dominance = [N], monster submissiveness = [D].[line break]";
	if N >= D, decide on 1;
	if debugmode > 0, say "Reroll 1. New player dominance = [N], monster submissiveness = [D].[line break]";[I made a rule during a play-through I'd accept the failure if I failed again after an undo, so we might as well incorporate that into the check.]
	now N is the mental dominance roll for M;
	if N >= D, decide on 1;
	if the health of M <= 10 and the maxhealth of M >= 40:[this is a high health enemy that takes a lot of effort to get this low, so we re-roll N a third time and try again]
		now N is the mental dominance roll for M;
		if debugmode > 0, say "Reroll 2. New player dominance = [N], monster submissiveness = [D].[line break]";
		if N >= D, decide on 1;
	decide on -1.

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
	decide on a random number between (the strength of the player / 2) and the dominance of the player.[The minimum value here is always 3 assuming no negative modifiers on dominance.]
[Selkie: Then why is there a test for the dominance of the player <= -1, elsewhere?
MG: That's in the demon codpiece description. Its meant to be a hint that submissive monsters are aggressive to players who wear the codpiece. Dominance is all about context. Note the fact that M is a parameter for this function]

[!<DecideWhichNumberIsSubmissivenessBaseOfMonster>+

Outputs the "DC" the player's mental dominance roll needs to beat in order to dominate a particular monster

@param <Monster>:<M> The monster the player is trying to dominate
@return <Integer> integer based on M's health and the number of times the player has successfully dominated it

+!]
To decide which number is the submissiveness base of (M - a monster):
	decide on the health of M - the times-dominated of M.

[!<DecideWhichNumberIsThePhysicalDominanceRollForMonster>+

By default, puts 1/3 the player's strength against roughly 5/6 the monster's difficulty. If the player's value is higher, they get a 50/50 to win with no further checks. This function should handle any special conditions that a monster has for dominant sex.

@param <Monster>:<M> The monster the player is trying to dominate
@return <Integer> A value of -1 indicates the player can't dominate this monster, a value of 1 indicates that the player succeeds, and a value of 0 indicates that the game isn't sure yet.

+!]
To decide which number is the physical dominance roll for (M - a monster):
	let R be the strength of the player / 3 - (the difficulty of M / 2 + the difficulty of M / 3);
	if debugmode > 0, say "Physical check is [R].[line break]";[KEEP IN MIND: a calculation like 35 / 6 in inform will give a different result to (7/2) + (7/3)][###Selkie: From http://inform7.com/learn/documents/January2007Document.txt: "NI has basically no concept of operator precedence: neither, we feel, does English, which relies on the intonation with which a human reader speaks "let x be equal to y plus z times w" in order to communicate whether the addition happens before or after the multiplication. Clearly equations along the lines speculated about above would require a precise and traditional operator precedence. But we believe it would be inconsistent to apply such a thing to natural language forms. Instead, we do support the use of brackets to clarify such calculations"]
	if R > 0:
		if a random number between 1 and 2 is 1, decide on 1;
	decide on 0.

[!<SayDominanceSuccessOfMonster>+

This function determines what happens when a monster fails its "submissiveness" check. Usually that means a "short" sex scene. computeSuccessfulDominanceOfMonster is called after this, which handles anything that should happen when the player successfully dominates a monster

@param <Monster>:<M> The monster the player dominated

+!]
To say DominanceSuccess of (M - a monster):
	say "You successfully force [NameDesc of M] to [his of M] knees and [if the size of penis > 0]use [him of M] as your own personal cocksleeve!  [otherwise]finger-bang [him of M] into submission. [end if][big he of M] is visibly angry that you managed to get the better of [him of M] this time.".

[!<ComputeSuccessfulDominanceOfMonster>+

This function handles the virginity check after sex, the incrementing of times dominated, and sets up the replaceAfterDomination function. Before doing anything else, it calls computeDominanceRewardOfMonster for M, where any special rewards or difficulty increases are applied. If the player cannot lose their virginity to M, this function must be overridden. If something else happens instead of the monster being teleported to a random room after sex, this function should be overridden.

@param <Monster>:<M> The monster the player dominated

+!]
To compute successful dominance of (M - a monster):
	compute unique dominance reward of M;
	if the player is male, check virginity;
	DominateUp M;
	DifficultyUp M by 2;
	say "[line break][BigNameDesc of M] slinks away as soon as [he of M] has the strength.[line break]You feel more [if the player is male]manly[otherwise]dominant[end if]!".

[!<ComputeUniqueDominanceRewardOfMonster>+

This function is called by the ComputeSuccessfulDominanceOfMonster function. Normal rewards are decreases to sex addiction and delicateness.

@param <Monster>:<M> The monster the player dominated

+!]
To compute unique dominance reward of (M - a monster):
	let R be a random number between 1 and 2;
	if the player is male:[male players must reduce addiction to 0 before penis increases]
		let S be the sex addiction of the player;
		SexAddictDown R;
		if S is the sex addiction of the player, PenisUp 1;
	otherwise:[female players don't have penis length to gain, so better delicate decrease]
		let S be the sex addiction of the player;
		SexAddictDown R;
		if S is the sex addiction of the player or R is 1, DelicateDown R;
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
			say "[first custom style]'[one of]I don't care, I've fucking earned this. Your dick is MINE.'[or][if the size of penis < the girth of M]You think you're so fucking great because you're bigger than me? Better know how to fucking use it.'[otherwise]Good thing I'm so much bigger than you, otherwise I might be worried this would hurt!'[end if][or]Now, *I* get to stick your dick in me.'[at random][roman type]";
		otherwise:
			say "[first custom style]'[one of]Oh we're going to fuck, but you're not going to be doing the fucking.'[or]This time, you're MY fucktoy.'[or]That didn[']t go the way you'd hoped, now did it?'[at random][roman type]";
	otherwise if the bimbo of the player < 12:
		say "[variable custom style]'[one of]I[']m going to be on top this time.'[or]I hope you're not a quick-shot, sweetie.'[or]So, are you excited? You get to be fucktoy now!'[at random][roman type]";
	otherwise:
		say "[second custom style]'[one of]Are you ready, sugar?'[or]So, stud, why don[']t we get down to business?'[or]Don[']t worry baby, I[']ll do everything.'[or]Don[']t worry about a thing, honey, you[']re in [NameBimbo][']s hands.'[at random][roman type]";

[!<ComputePowerBottomRewardOfMonster>+

This function should usually be called when the player successfully dominates a male monster, such that it completely replaces the normal unique dominance reward. Usual reward is a substantial delicateness decrease. Since there's a possibility of the 
player being inseminated during the sex, the player can choose to apply a condom to their partner before the event. If they do, there's no risk of creampie and the player will always get to cum. Skipping the condom obviously brings a risk of a creampie, so to balance it out, one pinned condom will be removed from their clothing, prioritizing torn condoms first, then full ones.

@param <Monster>:<M> The monster the player dominated

+!]
To compute power bottom reward of (M - monster):
	let R be a random number between 2 and 3;
	unless M is wrapped:
		let condom-removed be 0;
		repeat with C running through worn condom pinned clothing:
			unless condom-removed is 1:
				if the empty condoms of C > 1, decrease the empty condoms of C by 1;
				otherwise decrease the used condoms of C by 1;
				now condom-removed is 1;
	DelicateDown R;
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

To oral dominate (M - a monster):[Boring, needs changing for wenchy monsters]
	say "You make [NameDesc of M] to give you a blowjob.";

To anal dominate (M - a monster):[Boring, needs changing for wenchy monsters]
	say "You fuck [NameDesc of M] in the ass.";

To vaginal dominate (M - a monster):[Boring, needs changing for wenchy monsters]
	say "You fuck [NameDesc of M] right in the pussy.";

To female dominate (M - a monster):[Boring, needs changing]
	say "You make [NameDesc of M] eat you out";

To say AfterDominationComment (N - a number) of (M - a monster):
	say "I'll pay you back for that...".

]

[The monster succeeded the submissiveness check! Easily reusable]
[!<SayDominanceFailureOfMonster>+

The text in this function should output whenever the player unsuccessfully dominates a monster. We don't want to include it in any of the failed dominance functions because we'd be writing the same thing over and over.

@param <Monster>:<M> The monster the player tried to dominate

+!]
To say DominanceFailure of (M - a monster):
	say "You try to force yourself on [NameDesc of M], but [he of M] turns the tables and forces you to your knees instead!";

[Usually when you mess up you'll be punished by having some clothes torn off, but if you're not wearing anything you'll have to deal with a more intense punishment courtesy of nintendolls]
[!<ComputeFailedDominancePunishmentOfMonster>+

The failed dominance punishment should be implemented for any monster that the player can dominate. By default, the monster will perform their angry punishment, or the monster will leave the player alone and the game will punish them instead(with sissification). Most monsters should follow this general formula. If the monster decides to repay the player with sex, any punishment here should be fairly mild, and the another-turn flag should be set to 1. If the monster won't be having sex with the player right after, the punishment here should be a bit more intense, and we should make sure the monster loses interest at the end.
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
	let H be a random pink sissy bow;
	if the player is male and H is actually summonable:
		say "[bold type]A silky pink bow appears in your hair!  [line break][variable custom style][if the bimbo of the player < 5]Is this bullshit game trying to tell me I'd make more sense as a girl?[otherwise]I get it...only a girl would have trouble doing something like that...[end if][roman type][line break]";
		summon H cursed;
	otherwise if H is worn and the number of off-stage sissifying fetish appropriate actually summonable clothing > 0:[idk what's causing the run-time error here]
		let S be a random off-stage sissifying actually summonable fetish appropriate clothing;
		say "[bold type]As if reacting to your lack of dominance, you suddenly feel a [printed name of S] [bold type]appear on you!  [line break][variable custom style][one of]Uh-oh...[or]This is making me feel like a pathetic sissy...[or]Even more sissy clothing?![stopping][roman type][line break]";
		summon S cursed;
		announce sissification;
	otherwise:
		say "The [if the player is male]emasculating[otherwise]humiliating[end if] memory locks itself into place, [bold type]sure to make you more submissive from now on.[roman type][line break][variable custom style][one of]I should stop pretending to be dominant...[or]It's obvious to everyone how pathetic I am...[or]How can I be dominant when I'm already so pathetic?[stopping][roman type][line break]";
		DelicateUp 1.



Dominating Monsters ends here.

