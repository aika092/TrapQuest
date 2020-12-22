Dominating Monsters by Monster Framework begins here.

Definition: a monster is permanently banishable:
	if it is intelligent, decide yes;
	decide no. [Can't be summoned again once banished]
To compute banishment of (M - a monster):
	compute unique banishment of M;
	if there are things carried by M:
		say "Your [list of things carried by M] [if the number of things carried by M > 1]are[otherwise]is[end if] also left behind.";
		repeat with K running through things carried by M:
			now K is in the location of the player;
			compute autotaking K;
	if there is a worn notebook, compute studying 1 of M;
	destroy M;
	if M is permanently banishable, now M is permanently banished.
To compute unique banishment of (M - a monster):
	do nothing.
To compute auto banished loot of (M - a monster):
	compute banished loot of M;
	if the loot dropped of M is 0, loot M.
To compute banished loot of (M - a monster):
	repeat with C running through the banishItems of M:
		compute banish drop of C from M.
To compute banish drop of (C - a thing) from (M - a monster):
	if C is off-stage:
		now C is in the location of the player;
		if C is plentiful accessory, compute appraisal of C from M;
		say "[BigNameDesc of M] left [NameDesc of C] behind.";
		increase the loot dropped of M by 1;
		if C is not equippable, compute autotaking C. [equippables would go straight into the hand which could be harsh]

To compute (M - a monster) slinking away:
	say SlinkAwayFlav of M;
	bore M;
	regionally place M.
To say SlinkAwayFlav of (M - a monster):
	say "[BigNameDesc of M] slinks away as soon as [he of M] has the strength.".

Definition: a monster is automatically banishable:
	if it is not intelligent, decide yes;
	decide no. [Will this NPC automatically resolve their disappearance rather than giving the player options on what to do?]
Definition: a monster is auto-banish-loot-dropping:
	if it is not intelligent, decide yes;
	decide no. [Will it automatically drop jewellery when it is banished in this manner?]
To compute automatic banishment of (M - a monster):
	compute unique automatic banishment of M;
	if M is in the location of the player and M is not dying: [This way we can override the rest of this function by destroying the NPC in the 'unique banishment' function.]
		say BanishFleeFlav of M;
		if M is auto-banish-loot-dropping, compute auto banished loot of M;
		compute banishment of M.
To say BanishFleeFlav of (M - a monster):
	say "[BigNameDesc of M] turns tail and flees! You get the feeling you won't be seeing [him of M] again any time soon!".
To compute unique automatic banishment of (M - a monster):
	do nothing.

Definition: a monster is banishable: decide yes. [Can this NPC be banished from the land upon defeat?]
To say BanishDesc of (M - a monster):
	say "Banish [him of M] from the [playerRegion]!".
To compute forced banishment of (M - a monster):
	if M is intelligent and the player is able to speak, say BanishDemandFlav of M;
	say BanishForceFlav of M;
	compute banished loot of M;
	compute banishment of M.
To say BanishDemandFlav of (M - a monster):
	say "[variable custom style]'[if the player is feeling dominant][one of]I will spare you this once. Next time you may not remain in one piece.'[or]Only pain at my hand remains for you here. Begone.'[or]I'd better never see you again. Understand?'[at random][otherwise][one of]Leave now, and never come back.'[or]This will keep happening unless you leave this place.'[or]While I'm here, you should leave this place alone.'[at random][end if][roman type][line break]".
To say BanishForceFlav of (M - a monster):
	let E be a random worn slap ready equippable;
	let T be "the back of your hand";
	if E is a thing, now T is "[NameDesc of E]";
	say "You [if the delicateness of the player < a random number between 8 and 14][one of]smack [NameDesc of M] with [T][or]start to spank [NameDesc of M][or]take aim and try to smack [NameDesc of M] in the crotch[purely at random][one of] until [he of M] is sent running[or] and force [him of M] to flee[or], making [him of M] flee in fear[in random order]![otherwise][one of]puff up your chest to try and look as intimidating as possible[or]squint your eyes, hoping that you don't look too pathetic[or]bare your teeth[then at random]. [BigNameDesc of M] looks like [he of M] got the message - [he of M] [one of]turns and leaves, not stopping to look back[or]quickly takes [his of M] leave[purely at random].[end if]".

Definition: a monster is taxable:
	if it is intelligent, decide yes;
	decide no. [Can this NPC have items demanded of them upon defeat?]
To say TaxDesc of (M - a monster):
	say "Demand an item in return for mercy.".
To compute taxing of (M - a monster):
	FavourDown M;
	compute tax return of M;
	DifficultyUp M by 1;
	compute M slinking away.
To compute tax return of (M - a monster):
	compute default tax return of M.
To compute default tax return of (M - a monster):
	loot M;
	if the loot dropped of M > 0, say TaxReturnDismay of M;
	otherwise say TaxReturnFail of M;
	now the loot dropped of M is 0.
To say TaxReturnDismay of (M - a monster):
	say "[speech style of M]'[one of]Mark my words, I will take this back... and more.'[or]I won't forgive this.'[or]This means war.'[in random order][roman type][line break]".
To say TaxReturnFail of (M - a monster):
	say "[speech style of M]'I've got nothing of any value.'[roman type][line break]".

Definition: a monster is pitiable: decide yes. [Can this NPC be pitied and left to recover?]
To say PityDesc of (M - a monster):
	say "[if M is intelligent]Show mercy and offer a hand of friendship[otherwise]Leave [him of M] alone[end if].".
To compute pitying of (M - a monster):
	say PityOfferFlav of M;
	if M is not uniquely unfriendly:
		calm M;
		FavourUp M;
	if M is intelligent, say PityOfferResponse of M;
	compute M slinking away.

To say PityOfferFlav of (M - a monster):
	if M is intelligent:
		say "You lower a hand to help [NameDesc of M] to [his of M] feet.";
		if the player is able to speak, say "[variable custom style]'[one of]Well fought, but I am the victor.'[or]I trust you will treat me with more respect from now on?'[or]If you promise not to do that again, we can still be friends...'[in random order][roman type][line break]".
To say PityOfferResponse of (M - a monster):
	if M is friendly, say "[speech style of M]'[one of]You've proven your point. Let's not do this again.'[or]Haha, you got me. How humiliating.'[or][if the appearance of the player >= the outrage tolerance of M]Maybe if you stop dressing like a whore[otherwise]Fair is fair[end if].'[in random order][roman type][line break]";
	otherwise say "[speech style of M]'[one of]Fuck you. Next time won't go like this again.'[or]What a waste of your final victory over me.'[or]Listen closely. We are not friends.'[in random order][roman type][line break]".

Definition: a monster is penis-fuckable:
	if it is wenchy, decide yes;
	decide no. [Can this NPC be fucked with a penis when defeated?]
Definition: yourself is penis-fuckable: [Can the player use their penis to dominant-fuck?]
	if diaper quest is 1, decide no;
	if there is a worn condom of kings, decide no;
	if there is a worn chastity bond, decide no;[All chastity items prevent penis access, currently]
	if there is a worn restricting research airhancer, decide no;
	if sexual-penis-length > 0:
		if there is a worn strapon-panties, decide yes;[most strapons ARE undisplacable pussy covering clothing.]
		if there is a undisplacable pussy covering clothing, decide no;
		decide yes;
	decide no.
To say PenisFucker:
	let S be a random worn strapon-panties;
	if S is nothing, now S is penis;
	say ShortDesc of S.
To say PenisFuckDesc of (M - a monster):
	say "Attempt to dominate [him of M] with your [PenisFucker].".

Definition: a monster is vagina-rideable:
	if it is wenchy, decide yes;
	decide no. [Can this NPC have the player use their pussy to dominate them?]
Definition: yourself is vagina-rideable: [Can the player use their pussy to dominate them?]
	if diaper quest is 1, decide no;
	if the player is not possessing a vagina, decide no;
	if there is undisplacable pussy covering clothing, decide no;
	if chastity-belt is worn, decide no;
	if vagina is actually occupied, decide no;
	decide yes.
To say VaginaRideDesc of (M - a monster):
	say "Attempt to dominate [him of M] with your [vagina].".

Definition: a monster is ass-rideable:
	if it is wenchy, decide yes;
	decide no. [Can this NPC have the player use their asshole to dominate them?]
Definition: yourself is ass-rideable: [Can the player use their asshole to dominate them?]
	if diaper quest is 1, decide no;
	if the player is possessing a vagina, decide no;[right now, all the anal domination scenes assume the player definitely doesn't have a vagina, so this needs to be disabled for now]
	if there is a worn undisplacable ass covering clothing, decide no;
	if asshole is actually occupied, decide no;
	decide yes.
To say AssRideDesc of (M - a monster):
	say "Attempt to dominate [him of M] with your [asshole].".

Definition: a monster is piss-fuckable:
	if it is wenchy, decide yes;
	decide no. [Can this NPC be pissed on when defeated?]
Definition: yourself is piss-fuckable: [Can the player currently piss on someone?]
	if watersports fetish is 0, decide no;
	if there is worn undisplacable pee covering clothing, decide no;
	if the player is not bursting, decide no;
	decide yes.
To say PissFuckDesc of (M - a monster):
	say "Attempt to dominate [him of M] by pissing on [him of M].".

Definition: a monster is diaper-rideable:
	if it is wenchy, decide yes;
	decide no. [Can this NPC be diaper-sat on when defeated?]
Definition: yourself is diaper-rideable: [Can the player currently diaper-sit on someone?]
	if the number of worn diapers is 0, decide no;
	if there is a worn messed diaper and diaper lover < 7, decide no;
	decide yes.
To say DiaperRideDesc of (M - a monster):
	say "Attempt to dominate [him of M] by sitting your diaper on [his of M] face.".

Definition: a monster is uniquely-fuckable: decide no. [Can this NPC be dominated in a unique way?]
To say UniqueFuckDesc of (M - a monster): [This should be replaced with a short description of the unique domination action]
	say "Uniquely dominate [him of M].".
To compute unique domination of (M - a monster):
	do nothing.

To say DefeatBrink of (M - a monster):
	say "[BigNameDesc of M] falls in front of you, defeated. What do you want to do to [him of M]?".

To compute defeat of (M - a monster):
	if M is automatically banishable:
		compute automatic banishment of M;
	otherwise if the player is in danger:
		compute M slinking away;
	otherwise:
		let LT be a list of texts;
		let BT be the substituted form of "[BanishDesc of M]";
		let TT be the substituted form of "[TaxDesc of M]";
		let PT be the substituted form of "[PityDesc of M]";
		let PeT be the substituted form of "[PenisFuckDesc of M]";
		let AT be the substituted form of "[AssRideDesc of M]";
		let VT be the substituted form of "[VaginaRideDesc of M]";
		let PiT be the substituted form of "[PissFuckDesc of M]";
		let DT be the substituted form of "[DiaperRideDesc of M]";
		let UT be the substituted form of "[UniqueFuckDesc of M]";
		if the player-class is avatar and M is intelligent and M is not infernal and M is not soul-stolen, add "Steal [his of M] soul" to LT;
		if M is banishable, add BT to LT;
		if M is taxable, add TT to LT;
		if M is pitiable, add PT to LT;
		let vm be a random video-monitor in the location of the player;[too annoying to deal with, so it's not allowed.]
		if the latex-transformation of the player < 6 and (vm is not video-monitor or the video-caller of vm is the throne) and (the player is not feeling submissive or the player is a nympho):
			if M is penis-fuckable and the player is penis-fuckable, add PeT to LT;
			if M is vagina-rideable and the player is vagina-rideable, add VT to LT;
			if M is ass-rideable and the player is ass-rideable, add AT to LT;
			if M is piss-fuckable and the player is piss-fuckable, add PiT to LT;
			if M is diaper-rideable and the player is diaper-rideable, add DT to LT;
			if M is uniquely-fuckable, add UT to LT;
		if the number of entries in LT is 0:
			compute automatic banishment of M;
		otherwise:
			let T be entry 1 in LT;
			if the number of entries in LT is 1 and T is not BT and T is not TT and T is not PT, add PT to LT; [If we're giving the player only one option, to fuck the NPC, there should also be an option to leave it alone...]
			if the number of entries in LT > 1:
				if let it die tattoo is worn and the player is getting unlucky:
					say "You feel your 'let it die' tattoo stiffening your resolve.";
					now T is BT;
				otherwise:
					say DefeatBrink of M;
					reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
					repeat with X running through LT:
						set next numerical response to X;
					compute multiple choice question;
					now T is the printed name of chosen numerical response;
			if T is BT:
				compute forced banishment of M;
				let J be a random worn demon codpiece;
				if the number of entries in LT > 1 and J is clothing and M is wenchy, follow the demon junk punishment rule;
			otherwise if T is TT:
				compute taxing of M;
			otherwise if T is PT:
				compute pitying of M;
			otherwise if T is PeT:
				now player-fucker is penis;
				compute dominating M;
			otherwise if T is VT:
				now player-fucker is vagina;
				compute dominating M;
			otherwise if T is AT:
				now player-fucker is asshole;
				compute dominating M;
			otherwise if T is PiT:
				now player-fucker is belly;
				compute dominating M;
			otherwise if T is DT:
				now player-fucker is thighs;
				compute dominating M;
			otherwise if T is UT:
				now player-fucker is face;
				compute dominating M;
			otherwise if T matches the text "soul":
				compute soulStealing from M;
			otherwise:
				say "BUG: Unable to understand defeat choice.".

To compute soulStealing from (M - a monster):
	increase the total-souls of the player by 1;[Checks how many souls the player has pulled out, total.]
	now M is soul-stolen;
	say "You put one hand on [NameDesc of M]'s chest and another on your own, calling on the power of your master as you force [FuckerDesc of M]'s soul out of [his of M] body!";
	compute M slinking away;
	DifficultyUp M by 1;[Once you take a soul, defeating the monster a second time should be harder.]
	progress quest of soul-harvest-quest.

[!<Player>@<dominatedCount:Integer>*

The number of times the player has had dominant sex.

*@!]
The player has a number called dominated-count. The dominated-count of the player is usually 0.
The player has a number called lick-get.[number of times player got cunnilingus/anilingus]
The player has a number called diaper-get.[number of times player diaper facesat on someone]
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

To DiaperGet:
	increase the diaper-get of the player by 1.

To BlowGet:
	increase the blow-get of the player by 1.

Definition: a body part is available: decide no.

Definition: an orifice (called O) is available:
	if O is actually occupied, decide no;
	decide yes.

Definition: asshole (called F) is available:
	if F is actually occupied, decide no;
	if the player is ass protected, decide no;
	decide yes.

Definition: vagina (called F) is available:
	if F is actually occupied, decide no;
	if the player is pussy protected, decide no;
	decide yes.

Definition: breasts (called B) is available:
	repeat with C running through worn breast covering clothing:
		if C is not fully exposing and C is not optional-top-displacable, decide no;
	decide yes.

[!<DomMonster>+

The health of the monster should be set to above zero so the game doesn't immediately destroy it. The monster should also have their location changed so the player can't just one-hit them after.

@deprecated This function represents the old "fuck" framework, where the player would automatically get the chance to have sex with a defeated female monster when their health reached zero. The fact that it was a guarantee meant that the reward the player got had to be rather small, and a considerable drawback always had to come with it.

+!]
To dom (M - a monster):
	say "[if the player is possessing a penis]You use [NameDesc of M] as your own personal cocksleeve! Then [he of M] runs away, humiliated and angry.[otherwise]You finger-bang [NameDesc of M] into submission. [big he of M] runs away, humiliated and angry.[end if]".

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

The DOMINANT-NONE is always 0.
The DOMINANT-FAILURE is always 1.
The DOMINANT-SHAMEFUL is always 2.
The DOMINANT-NEUTRAL is always 3.
The DOMINANT-DOMINANT is always 4.
The DOMINANT-SUPER is always 5.

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

Player-fucker is a body part that varies.

Dominating is an action applying to one thing.

[!<CheckDominating>+

This functions determines whether we let the player try to dominate a monster, and sets things up for the actual attempt. Players that have a penis and players who are wearing strapons have an option to use those on monsters. Players also have an option to use either their vagina (female players) or their asshole (male players). If the player has no penis or no strapon, then it defaults to one of those two. Once we know what the player will be using to dominate the monster, we perform some more specific checks to make sure that the player is actually able to use that properly. NOTE: if the player has a chastity item on, then they won't be able to use a penis for sex, even if it's not directly attached to their body

@deprecated

+!]
Check dominating:
	now player-fuckchoice is FUCK-NONE;
	now player-fucking is DOMINANT-NONE;
	if the noun is not monster, say "What would be the point of that?" instead;
	let vm be a random video-monitor in the location of the player;[too annoying to deal with, so it's not allowed.]
	if vm is a video-monitor and the video-caller of vm is not the throne, say "You decide against it. You don't want to give your audience the wrong idea." instead;
	if the noun is woman-player and the woman-status of woman-player is 80, compute PlayerWomanStoolFuck instead;
	if the latex-transformation of the player >= 6, say "You wouldn't feel anything from it, so you don't see the point." instead;
	if the player is prone, say "That would be a little hard to do from your knees." instead;
	if the noun is sex-enslaved and the player is the donator, compute enslaved domination of the noun instead;
	say "You would need to defeat [NameDesc of the noun] first." instead;
	unless the noun is interested, say "[BigNameDesc of the noun] isn't looking at you right now. Try getting their attention first." instead;
	now player-fucker is face;[player-fucker is what is used to fuck the monster. Face is merely a default value]
	if the noun is male and player-fucker is not thighs:
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
		if the player is possessing a vagina, suggestFucker vagina for the noun;
		otherwise suggestFucker asshole for the noun;
		[if player-fucker is a fuckhole and S is demon codpiece, say "The [printed name of S] seems to be preventing you from doing that!" instead;]
	if player-fucker is face:
		suggestFucker face for the noun;
	if player-fuckchoice is FUCK-NONE:
		if S is demon codpiece, say CodLoosenFlav of S;
		do nothing instead;
	if player-fucker is penis:[Now that the part we want to use is selected, validate]
		if there is a worn condom of kings, say "You wouldn't feel anything from it, so you don't see the point." instead;
		if S is clothing:[dildo-usage determines whether the player's dick is sticking out of the strapon]
			if there is a worn chastity bond or there is a worn restricting research airhancer:
				say "Your [if there is a worn chastity bond][printed name of a random worn chastity bond] pulses[otherwise][printed name of a random research airhancer] flashes several times[end if], and your [SexDesc of penis] immediately loses all rigidity. Looks like you need to try something else...";
				if S is demon codpiece, say CodLoosenFlav of S instead;
				otherwise do nothing instead;
		otherwise:
			if there is a undisplacable pussy covering clothing, say "You'll have to find a way to remove your [printed name of a random undisplacable pussy covering clothing] first." instead;
			if there is a worn chastity bond, say "You'll have to find a way to get out of your chastity cage first!" instead;
			if there is a worn restricting research airhancer, say "Your [ShortDesc of penis] can't get hard enough to dominate [i]anyone[/i]. You'll need to deactivate your [printed name of a random research airhancer] first." instead;
	otherwise if player-fucker is vagina:
		if there is undisplacable pussy covering clothing, say "You'll have to remove your [printed name of a random undisplacable pussy covering clothing] first." instead;
		if chastity-belt is worn, say "You'll have to find a way to get out of your chastity first!" instead;
		if vagina is actually occupied, say "You need to remove your [printed name of a random thing penetrating vagina] first!" instead;
	otherwise if player-fucker is asshole:
		if there is a worn undisplacable ass covering clothing, say "You'll have to find a way to get your [printed name of a random worn undisplacable ass covering clothing] out of the way first." instead;
		if asshole is actually occupied, say "You need to remove your [printed name of a random thing penetrating asshole] first!" instead;
	if the player is feeling submissive and the player is not a nympho, say "Wouldn't it be easier to ask [him of the noun] to dominate me? It would probably be more fun that way, too!" instead;[players with very high delicateness will be too afraid to dominate unless they have high sex obsession too]
	repeat with M running through monsters in the location of the player:
		if M is not the noun, compute domination interference of (M) for (the noun);
		if player-fucking is DOMINANT-FAILURE, now player-fucking is DOMINANT-NONE instead;
	if player-fucker is penis and S is not clothing and penis is not erect-at-will and penis is not penis-erect:
		say "Your [ShortDesc of penis] remains completely soft, so you can't do anything with it. Maybe you should try again to see if it will wake up?";
		allocate 2 seconds instead.[If you can't get hard, it wastes some time]

To compute domination interference of (M - a monster) for (N - a monster):
	if M is dangerous:
		say "[BigNameDesc of M] gets in your way and prevents you from dominating [NameDesc of the noun]!";
		now player-fucking is DOMINANT-FAILURE.

[To suggestFucker (F - a body part) for (M - a monster):
	if F is a fuckhole:
		if M is male, say "Do you want to try and use your [variable F] to ride [him of M]?";
		otherwise say "Do you want to see if you can make [him of M] eat out your [variable F]?";
	otherwise if F is penis:
		let S be a random worn strapon-panties;
		say "Do you want to try and use your [if S is clothing][S][otherwise][player-penis][end if] to fuck [him of M]?";
	otherwise:
		say "You definitely won't orgasm if you proceed this way. Do you still want to try and dominate [him of M]?".]

To say DomThreshold (R - a number):
	if debuginfo > 0:
		if R is DOMINANT-DOMINANT, say "Auto dominance threshold met.[roman type][line break]";
		if R is DOMINANT-NONE, say "Neither auto threshold met.[roman type][line break]";
		if R is DOMINANT-FAILURE, say "Auto failure threshold met.[roman type][line break]".

Player-fuckchoice is a number that varies.
FUCK-WATERSPORTS is always -3.
FUCK-PENETRATION is always -2.
FUCK-BLOWJOB is always -1.
FUCK-NONE is always 0.
FUCK-FACESIT is always 1.
FUCK-UNIQUE is always 2.
FUCK-RIDE is always 3.

To decide which number is the dominationtype of (M - a monster) using (F - a body part):
	if F is a fuckhole:
		if M is male:
			if there is a held condom-providing thing:
				reset multiple choice questions;
				set next numerical response to "Try riding bareback";
				set next numerical response to "Try riding with a condom";
				say "Do you want to use protection?";
				compute multiple choice question;
				let CNR be the chosen numerical response;
				if the printed name of CNR is "Try riding with a condom":
					say CondomManualFlav of M;
					now M is wrapped;
			decide on FUCK-RIDE;
		otherwise:
			decide on FUCK-FACESIT;
	if F is penis, decide on FUCK-PENETRATION;[default, can also be FUCK-BLOWJOB]
	if F is thighs, decide on FUCK-FACESIT;
	if F is belly, decide on FUCK-WATERSPORTS;
	if F is face, decide on FUCK-UNIQUE.

[!<CarryOutDominating>+

This function handles a player's attempt to dominate a given monster. Dominant sex is controlled by a value called player-fucking. This value manipulates a couple things in the Orgasm extension, but mostly we use it here. if player-fucking is DOMINANT-FAILURE, it means the player failed to dominate the monster. If it's DOMINANT-DOMINANT, if means the player succeeded. If it's DOMINANT-NONE, it means we don't know yet.

We start off with a check to see if the monster in question is over 50% hp or if the player has max delicateness, which is an automatic failure.
IF we can't determine anything with that, we use a special function called DecideWhichNumberIsTheSubmissivenessOfMonster, which outputs either 1 or -1 depending on a couple factors.
Now that we have the result, we diverge.
IF THE PLAYER SUCCEEDED, we output some flavour text describing the monster and the player having sex. In general, if the player uses their penis/strapon for sex, big penis is good, small penis is bad. If the player uses a fuckhole for sex and the monster has a penis, the player will usually ride on top of them and then have some choice at the end of the scene, depending on a couple factors. Otherwise, the player will sit on a monster's face, which probably won't get the player an orgasm, but it has few drawbacks. Once the scene has been displayed, we apply any rewards for dominant sex. These rewards vary depending on the monster and any specific events that may have happened in the scene. Once we're done, we send the monster somewhere else so the player can't immediately attack them again, although this isn't actually a big problem, since they'll instantly be at full health after it's over. It is not necessary to make the monster lose interest after a successful dominance scene, and in the case of male monsters that fuck the player, it can be inadvisable, since it makes it difficult to know whether or not the player used a condom.
IF THE PLAYER FAILED, we output a short piece of flavour where the monster turns the tables. After that, the monster will give the player some sort of unique punishment. In general, these punishments should not be something the player wants to repeat, so the player doesn't use it as an excuse to always weasel out of normal punishments. Note that if the monster has a penis, it's often strictly worse than if the player had just done things the normal way. If the monster is still interested after handling the punishment, it means they ARE going to do things the normal way, so we don't send them anywhere.
AFTER EVERYTHING is said and done, we reset player-fucking to 0.

+!]
To compute dominating (M - a monster):
	now M is interested;
	now player-fuckchoice is the dominationtype of M using player-fucker;
	if player-fucker is penis and demon codpiece is worn, say CodTightenFlav of demon codpiece;
	now player-fucking is DOMINANT-NONE;[we set this to 1 after we're finished determining success]
	let R be (the number of worn dominance clothing * 2) + (the maxhealth of M / 2);
	if the delicateness of the player is 20:
		now player-fucking is DOMINANT-FAILURE;
		if debugmode > 0, say "[input style]Player is too submissive.[line break]";
		say DomThreshold player-fucking;
	otherwise:
		now player-fucking is the submissiveness of M;[submissiveness of M will set player-fucking based on the monster]
	let J be a random worn demon codpiece;
	if player-fucking is not DOMINANT-NONE and player-fucking is not DOMINANT-FAILURE:
		now the refractory-period of M is -4;[Allows us to track whether the monster came during the scene]
		say DominanceSuccess of M;
		compute successful dominance of M;
		if J is clothing and player-fucker is penis:
			say CodLoosenFlav of J;
			follow the demon junk reward rule;
		let H be rugged-headband;
		if the player is the donator, progress quest of domination-quest;
		if the times-dominated of M >= 2 and the player is the donator:
			if H is off-stage and H is actually summonable:
				say "You feel your hair being tousled as a [MediumDesc of H] materialises on your head.";
				summon H cursed with quest;
		unless M is interested:[if a monster is still interested, it means we want them to stay around after they are dominated. ]
			replace M after domination;
		repeat with N running through monsters in the location of the player:
			if N is not M, say DominationReaction of N to M;
	otherwise:[Player failed and is getting punished]
		if J is clothing, say CodLoosenFlav of J;
		unless M is unfriendly, anger M;[this handles edge cases where the player goes for a monster that isn't paying attention to the player.]
		now the stance of the player is 1;[The flavour should usually imply the player is on their knees, but specific monsters can choose to override that with DominanceFailure of M.]
		FatigueUp 50;
		if diaper quest is 0:
			say DominanceFailure of M;
			compute failed dominance punishment of M;
		otherwise:
			say DQDominanceFailure of M;
			compute failed dq dominance punishment of M;
		if M is interested:[If the monster is still interested it usually means they're about to fuck the player]
			if the health of M < 1, now the health of M is 1;
		otherwise:
			say DominanceFailed of M;
			replace M after domination;
		repeat with N running through reactive monsters:
			if N is not M, say DominationFailedReaction of N to M;
		if the player is the donator, progress quest of domination-quest;
	unless M is combative, now the health of M is the maxhealth of M; [They'll always go back to max HP after a fuck]
	now player-fucking is DOMINANT-NONE;
	now player-fuckchoice is FUCK-NONE.

Understand "dominate [something]", "fuck [something]", "dom [something]", "punish [something]", "screw [something]", "bang [something]", "do [something]", "enjoy [something]", "have sex with [something]", "sleep with [something]" as dominating.

To say DominationReaction of (M - a monster) to (N - a monster):
	make M expectant.
To say DominationFailedReaction of (M - a monster) to (N - a monster):
	make M expectant.

[!<DecideWhichNumberIsThePhysicalDominanceRollForMonster>+

By default, puts 1/3 the player's strength against roughly 5/6 the monster's difficulty. If the player's value is higher, they get a 50/50 to win with no further checks. This function should handle any special conditions that a monster has for dominant sex.

@param <Monster>:<M> The monster the player is trying to dominate
@return <Integer> A value of -1 indicates the player can't dominate this monster, a value of 1 indicates that the player succeeds, and a value of 0 indicates that the game isn't sure yet.

+!]
To decide which number is the physical dominance roll for (M - a monster):
	let S be saved-flat-strength / 2;
	if debuginfo > 0, say "[input style]Physical overpower roll eligibility: Player strength rating ([S]) | ([difficulty of M].5) Difficulty level of [ShortDesc of M][line break]";
	if S > difficulty of M:
		if debuginfo > 0, say "PASSED! 50% Chance of automatic success...[roman type][line break]";
		if a random number between 1 and 2 is 1, decide on DOMINANT-DOMINANT;
	if debuginfo > 0, say "Failed.[roman type][line break]";
	decide on DOMINANT-NONE.

[!<DecideWhichNumberIsTheDominanceOfThePlayer>+

This function calculates the "dominance score" of the player, which is derived from the player's sex addiction, delicateness, and orifice openness, in addition to penis size and the enchantment types of any pieces of worn clothing. Male players always have an inherent advantage, so we try to compensate a little bit by taking the average gape of both holes for female players. If the player learns the fuckskill, orifice openness and sex addiction are omitted from the calculation.
Selkie: what would add a lot of value to this comment is some concrete examples of dominance values to use.
MG: generally the purpose of this function is to pit it against monsters, so it's more about whether the player's "score" is higher than whatever value we get from the monster

@return <Integer> The player's dominance score. Low values indicate the player is more submissive, higher values indicate the player is more dominant. The default value for male players is 12. The default value for female players is 8.
+!]
To decide which number is the dominance of the player:
	let BT be (the strength of the player + 5 + (food theme bonus * 5)) * 2; [buckle threshold NOT scaled down by body soreness]
	let D be ((buckle threshold of the player - fatigue of the player) * 10) / BT; [10 if at maximum energy, 0 if at buckle threshold]
	decrease D by the number of worn temptation clothing * 2;
	increase D by the number of worn dominance clothing * 4;
	if player-fucker is penis:
		if sexual-penis-length >= 9, increase D by sexual-penis-length - 8;
		if sexual-penis-length < 3, decrease D by 2;
		if penis is penis-erect:
			if sexual-penis-length > 7, increase D by 1;
			if sexual-penis-length < 5, decrease D by 1; [a smaller erection is actually less intimidating]
	if fuckskill is 0, decrease D by the delicateness of the player / 4;
	increase D by the charisma of the player;
	decide on D.

[!<DecideWhichNumberIsTheSubmissivenessOfMonster>+

Does the monster submit to sex, or do they turn the tables; broken up so it's easier to balance the numbers. 1st check: Checks the physical dominance roll function for M, and if the result is not 0, returns the result 2nd check: Takes a random number between the dominance of a player and 1/2 the player's strength, then compares the result "N" against the difficulty of M - the times-dominated of M, "D". If N is greater than or equal to D, the player wins with no further check. 3rd check: Retry 2nd check. I made a rule during a play-through that I'd accept a failure if I failed again after using undo once, so it felt right to simply include that in the check. 4th check: If M has a maxhealth of 40 or more and their health is 10 or less, retry 2nd check.

@param <Monster>:<M> The monster the player is trying to dominate
@return <Integer> A value of -1 indicates failure. A value of 1 indicates success!

+!]
To decide which number is the submissiveness of (M - a monster):
	let R be the physical dominance roll for M;
	say DomThreshold R;
	unless R is 0, decide on R; [has to be done like this to account for RNG]
	let N be the mental dominance roll for M;
	let D be the submissiveness base of M;
	if debuginfo > 0, say "[input style]Actual dominance check: Player dominance roll ([N]) | ([D].5) [ShortDesc of M] resistance[roman type][line break]";
	if N > D, decide on DOMINANT-DOMINANT;
	decide on DOMINANT-FAILURE.

[!<DecideWhichNumberIsTheSemiDominanceRollForMonster>+

Sometimes player will need to flex their domination muscles after they successfully dominate a monster. This check is meant to standardize those checks.

@param <Monster>:<M> The monster the player is trying to flex on
@return <Integer> A negative value indicates that the player's flexing failed. Any other value means the player succeeded.

+!]
To decide which number is the semi-dominance roll for (M - a monster):
	let D be the dominance of the player;
	let S be the submissiveness base of M * -1;
	if debuginfo > 0, say "[input style]Calculating semi dominance. Value based on player dominance and [ShortDesc of M] submissiveness DC = RNG([D] ~ [S]) [roman type][line break]";
	decide on a random number between D and S.

To decide which number is the mental semi-dominance roll for (M - a monster):
	let I be the intelligence of the player;
	let D be a random number between the dominance of the player and I;
	let S be a random number between (the submissiveness base of M * -1) and (I * -1);
	if debuginfo > 0, say "[input style]Calculating semi dominance(intelligence based). Value based on player dominance and [ShortDesc of M] submissiveness DC = RNG([D] ~ [S]) [roman type][line break]";
	decide on a random number between D and S.

[!<DecideIfMonsterIsDominantSexReady>+

Determines whether or not it is likely that the player would succeed if they tried to dominate this monster.

@param <Monster>:<M> The monster the player could potentially dominate
@return <Boolean> True if the average of the player's strength and dominance is greater than M's submissiveness base

+!]
To decide if (M - a monster) is dominantSexReady:
	unless M is wenchy, decide no;
	let X be ((saved-flat-strength / 2) + the dominance of the player) / 2;[that is to say, the average of strength and dominance]
	if the submissiveness base of M < X, decide yes;
	decide no.

[!<DecideWhichNumberIsMentalDominanceRollForMonster>+

Outputs the strength of the player's current domination attempt for a particular monster

@param <Monster>:<M> The monster the player is trying to dominate
@return <Integer> integer between the player's strength divided by 2 and the player's dominance value

+!]
To decide which number is the mental dominance roll for (M - a monster):
	let D be the dominance of the player;
	let DD be a random number between ((D / 3) * 2) and ((D * 3) / 2);
	if debuginfo > 0, say "[input style]Calculating player's dominance. Raw value based on remaining energy [if fuckskill is 0]and submissiveness [end if]= [D][line break]RNG([D]/2[bracket][D / 2][close bracket] ~ [D]*2[bracket][D * 2][close bracket]) = [DD][roman type][line break]";
	decide on DD.

[!<DecideWhichNumberIsSubmissivenessBaseOfMonster>+

Outputs the "DC" the player's mental dominance roll needs to beat in order to dominate a particular monster.

@param <Monster>:<M> The monster the player is trying to dominate
@return <Integer> integer based on the difficulty of this monster, and the type of dominance the player is going for. A lower number is better for the player.

+!]
To decide which number is the submissiveness base of (M - a monster):
	let D be the difficulty of M;
	increase D by player-fuckchoice * 2;[player-fuckchoice corresponds to the type of sex]
	if M is wrapped, increase D by 2;[making them wear a condom will make domination slightly harder, but they will keep the condom on if you fail]
	decide on D.

[!<SayDominanceSuccessOfMonster>+

This function determines what happens when a monster fails its "submissiveness" check. Usually that means a "short" sex scene. computeSuccessfulDominanceOfMonster is called after this, which handles anything that should happen when the player successfully dominates a monster

@param <Monster>:<M> The monster the player dominated

+!]
To say DominanceSuccess of (M - a monster):
	if player-fuckchoice is FUCK-WATERSPORTS:
		watersports dominate M;
	otherwise if player-fuckchoice is FUCK-PENETRATION:
		penetration dominate M;
	otherwise if player-fuckchoice is FUCK-BLOWJOB:
		blowjob dominate M;
	otherwise if player-fuckchoice is FUCK-FACESIT:
		if player-fucker is thighs, diapersit dominate M;
		otherwise facesit dominate M;
	otherwise if player-fuckchoice is FUCK-RIDE:
		ride dominate M;
	otherwise:
		unique dominate M;
	Bore M.[Ensures that the monster does not remain interested and in the room after domination. If the monster needs to stay around, this function should be replaced]

To say DominationEscapeFlav of (M - a monster):
	say "[line break][BigNameDesc of M] slinks away as soon as [he of M] has the strength.".

[!<ComputeSuccessfulDominanceOfMonster>+

This function handles the virginity check after sex, the incrementing of times dominated, and sets up the replaceAfterDomination function. Before doing anything else, it calls computeDominanceRewardOfMonster for M, where any special rewards or difficulty increases are applied. If the player cannot lose their virginity to M, this function must be overridden. If something else happens instead of the monster being teleported to a random room after sex, this function should be overridden.

@param <Monster>:<M> The monster the player dominated

+!]
To compute successful dominance of (M - a monster):
	compute default successful dominance of M.

To compute default successful dominance of (M - a monster):
	compute unique dominance reward of M;
	if the player is male and player-fucker is penis, check virginity with M;
	say DominationEscapeFlav of M;
	if player-fucking is not DOMINANT-SHAMEFUL:
		DominateUp M;
		DifficultyUp M by 2;
		[say "[line break]You feel [if player-fucking is DOMINANT-NEUTRAL]a bit [end if]more [if the player is gendered male]manly[otherwise]dominant[end if]![line break]";]
	otherwise:
		TimesSubmittedUp M by 1;
		say "[line break]You feel so humiliated...[line break]".

[!<ComputeUniqueDominanceRewardOfMonster>+

This function is called by the ComputeSuccessfulDominanceOfMonster function. Normal rewards are decreases to sex addiction and delicateness.

@param <Monster>:<M> The monster the player dominated

+!]
To compute unique dominance reward of (M - a monster):
	if player-fuckchoice is FUCK-RIDE, compute power bottom reward of M;
	otherwise compute default dominance reward of M.

To compute default dominance reward of (M - a monster):
	if player-fucking >= DOMINANT-DOMINANT:
		DelicateDown 2;
	otherwise if player-fucking is not DOMINANT-SHAMEFUL: [female players don't have penis length to gain, so better delicate decrease]
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
			say "[first custom style]'[one of]Oh we're going to fuck, but you're not going to be doing the fucking.'[or]This time, you're MY fucktoy.'[or]That didn't go the way you'd hoped, now did it?'[at random][roman type]";
	otherwise if the bimbo of the player < 12:
		say "[variable custom style]'[one of]I'm going to be on top this time.'[or]I hope you're not a quick-shot, sweetie.'[or]So, are you excited? You get to be fucktoy now!'[at random][roman type]";
	otherwise:
		say "[second custom style]'[one of]Are you ready, sugar?'[or]So, stud, why don't we get down to business?'[or]Don't worry baby, I'll do everything.'[or]Don't worry about a thing, honey, you're in [NameBimbo][']s hands.'[at random][roman type]".

[!<ComputePowerBottomRewardOfMonster>+

This function should usually be called when the player successfully dominates a male monster, such that it completely replaces the normal unique dominance reward. Usual reward is a substantial delicateness decrease. Since there's a possibility of the
player being inseminated during the sex, the player can choose to apply a condom to their partner before the event. If they do, there's no risk of creampie and the player will always get to cum. Skipping the condom obviously brings a risk of a creampie, so to balance it out, one pinned condom will be removed from their clothing, prioritising torn condoms first, then full ones.

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
	now M is unwrapped.

[!<ReplaceMonsterAfterDomination>+

Puts the monster in a random room so the player can't just try again right after.

@param <Monster>:<M> The monster the player dominated

+!]
To replace (M - a monster) after domination:
	regionally place M;
	bore M.

[Use this for scenes where the player pees on a monster; These scenes should be more dignifying than normal, but not give a chance to orgasm]
To watersports dominate (M - a monster):
	say "You shove [NameDesc of M] to the ground and douse [him of M] with fresh [urine]. [big he of M] is completely humiliated to be treated like a human toilet.";
	now player-fucking is DOMINANT-DOMINANT;
	strongDignify;
	now the bladder of the player is 0;
	SportsGet.

[Use this for oral sex scenes involving the player's penis/strapon.]
To blowjob dominate (M - a monster):
	let C be a random bottom level protection clothing;
	let L be sexual-penis-length;
	say "You force [NameDesc of M] to [his of M] knees, [if C is not strapon-panties and C is clothing]pull out[otherwise]take[end if] your [SexDesc of penis] and facefuck [him of M] until you cum. [big he of M] is [if L > 8]visibly exhausted, having accepted[otherwise if L > 4]visibly angry[otherwise]completely humiliated[end if] that you got the better of [him of M] this time.";
	now player-fucking is DOMINANT-NEUTRAL;[all default scenes should be neutral]
	orgasm;
	moderateDignify;
	BlowGet.

[Use this for scenes that potentially take the player's virginity.]
To penetration dominate (M - a monster):
	let C be a random bottom level protection clothing;
	let L be sexual-penis-length;
	say "You force [NameDesc of M] onto [his of M] hands and knees, [if C is not strapon-panties and C is clothing]pull out[otherwise]take[end if] your [SexDesc of penis], and [if L > 8]destroy[otherwise if L > 4]fuck[otherwise]hump[end if] [his of M] [HoleDesc of M] until you cum. [big he of M] is visibly [if L > 8]exhausted[otherwise if L > 4]annoyed[otherwise]amused[end if] when you return to your feet.";
	now player-fucking is DOMINANT-NEUTRAL;
	orgasm;
	strongDignify;
	if M is presenting as male, AnalGet;
	otherwise FuckGet.

[Use this for penetration scenes that definitely involve a monster's ass. Use penetration dominate if there is only one penetration scene.]
To anal penetration dominate (M - a monster):
	let C be a random bottom level protection clothing;
	let L be sexual-penis-length;
	say "You force [NameDesc of M] onto [his of M] hands and knees, [if C is not strapon-panties and C is clothing]pull out[otherwise]take[end if] your [SexDesc of penis], and [if L > 8]destroy[otherwise if L > 4]fuck[otherwise]hump[end if] [his of M] asshole until you cum. [big he of M] is visibly [if L > 8]exhausted[otherwise if L > 4]annoyed[otherwise]amused[end if] when you return to your feet.";
	now player-fucking is DOMINANT-NEUTRAL;
	strongDignify;
	orgasm;
	AnalGet.

[Use this for penetration scenes that involve a monster's main orifice. Use penetration dominate if there is only one penetration scene.]
To vaginal penetration dominate (M - a monster):
	let C be a random bottom level protection clothing;
	let L be sexual-penis-length;
	say "You force [NameDesc of M] onto [his of M] hands and knees, [if C is not strapon-panties and C is clothing]pull out[otherwise]take[end if] your [SexDesc of penis], and [if L > 8]destroy[otherwise if L > 4]fuck[otherwise]hump[end if] [his of M] pussy until you cum. [big he of M] is [if L > 8]thoroughly satisfied[otherwise if L > 4]visibly satisfied[otherwise]visibly unsatisfied[end if] when you return to your feet.";
	now player-fucking is DOMINANT-NEUTRAL;
	strongDignify;
	orgasm;
	if L > 4, orgasm M;
	FuckGet.

[Use this for scenes involving one of the player's fuckholes and a monster's mouth. It should be rare for the player to orgasm in these scenes.]
To facesit dominate (M - a monster):
	say "You force [NameDesc of M] to [his of M] knees and take a seat on [his of M] face. [big he of M] endures, although [he of M] is clearly annoyed that you got the better of [him of M].";
	now player-fucking is DOMINANT-NEUTRAL;
	moderateDignify;
	LickGet.

[Use this for scenes involving one of the player's fuckholes and a monster's penis. Should generally be riskier than other types of dominant sex.]
To ride dominate (M - a monster):
	let F be player-fucker;
	say "You push [NameDesc of M] down and ride [his of M] [DickDesc of M] until [he of M] fills [if M is wrapped]the condom[otherwise]your [variable F][end if] with [semen]. [big he of M] clearly isn't happy that you got the better of [him of M] this time.";
	now player-fucking is DOMINANT-NEUTRAL;
	slightDignify;
	now M is penetrating F;
	ruin F;[So the player can lose their virginity]
	orgasm;
	orgasm M;
	if F is asshole:
		AnalCount;
		unless M is wrapped, AssFill the semen load of M;[We usually want to avoid pinning condoms to the player during dominant sex.]
	otherwise:
		FuckCount;
		unless M is wrapped, PussyFill the semen load of M;
	now M is not penetrating F.

[Use this for scenes involving the player's asshole and a monster's penis. If there is only one riding scene, use ride dominate.]
To anal ride dominate (M - a monster):
	say "You push [NameDesc of M] down and ride [his of M] [DickDesc of M] until [he of M] fills [if M is wrapped]the condom[otherwise]your [asshole][end if] with [semen]. [big he of M] clearly isn't happy that you got the better of [him of M] this time.";
	now player-fucking is DOMINANT-NEUTRAL;
	slightDignify;
	now M is penetrating asshole;
	ruin asshole;
	orgasm;
	orgasm M;
	AnalCount;
	unless M is wrapped, AssFill the semen load of M;
	now M is not penetrating asshole.

[Use this for scenes involving the player's vagina and a monster's penis. If there is only one riding scene, use ride dominate.]
To vaginal ride dominate (M - a monster):
	say "You push [NameDesc of M] down and ride [his of M] [DickDesc of M] until [he of M] fills [if M is wrapped]the condom[otherwise]your [vagina][end if] with [semen]. [big he of M] clearly isn't happy that you got the better of [him of M] this time.";
	now player-fucking is DOMINANT-NEUTRAL;
	slightDignify;
	now M is penetrating vagina;
	ruin vagina;
	orgasm;
	orgasm M;
	FuckCount;
	unless M is wrapped, PussyFill the semen load of M;
	now M is not penetrating vagina.

[Use this for scenes involving the player's diaper and a monster's mouth.]
To diapersit dominate (M - a monster):
	let D be a random worn diaper;
	let F be vagina;
	now player-fucking is DOMINANT-NEUTRAL;
	if the player is male, now F is penis;
	say "You force [NameDesc of M] to [his of M] knees and take a seat on [his of M] face, pressing your [MediumDesc of D] into [his of M] mouth and nose. [big he of M] struggles in vain to get free!";
	reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
	set numerical response 1 to "hold still and make [him of M] breathe it in";
	set numerical response 2 to "try to use [his of M] face to get off";
	if the player is not incontinent:
		if the latex-transformation of the player <= 4, set numerical response 3 to "try to piss in your diaper while sitting there";
		if diaper messing >= 7 and asshole is not actually occupied, set numerical response 4 to "try to mess your diaper while sitting there";
	compute multiple choice question;
	if player-numerical-response is 2:
		say "You grind your [genitals] against [NameDesc of M][']s face through your [if D is messed]soiled[otherwise if D is wet]wet[otherwise]soft[end if] padding.";
		passively stimulate F from D times 2;
		if F is pushed over the edge:
			increase player-fucking by 1;
			orgasm;
		DiaperAddictUp 1;
	if player-numerical-response is 3:
		let N be the bladder of the player;
		if (a random number between 0 and N) + (the humiliation of the player / 4000) < 7:
			say "You try to go, but you aren't desperate enough, and the humiliation of doing it in front of [NameDesc of M] gets the better of you. You get stage fright, and nothing comes out![line break][variable custom style]I don't know what's more embarrassing, using a diaper in front of [him of M], or [him of M] knowing I was too scared to make myself go...[roman type][line break]";
			decrease player-fucking by 1;
		otherwise if N > 0:
			say "You are able to release a [if N < 4]small amount[otherwise if N < 10]decent amount[otherwise]torrent[end if] of [urine] into the seat of [NameDesc of D], right on top of [NameDesc of M][']s nose and mouth.";
			UrineSoakUp D by N;
			now the bladder of the player is 0;
			increase player-fucking by 1;
			DiaperAddictUp 1;
		otherwise:
			say "Nothing comes out!";
	if player-numerical-response is 4:
		let N be rectum;
		if (a random number between 1 and N) + (the humiliation of the player / 4000) < 10:
			say "You try to push, but you aren't desperate enough, and the humiliation of doing it in front of [NameDesc of M] gets the better of you. You get stage fright, and nothing comes out![line break][variable custom style]I don't know what's more embarrassing, messing my diaper in front of [him of M], or [him of M] knowing I was too scared to make myself go...[roman type][line break]";
			decrease player-fucking by 1;
		otherwise if N > 1:
			say "You are able to release a [if N < 3]small amount[otherwise if N < 6]decent amount[otherwise]huge avalanche[end if] of stinky mess into the seat of [NameDesc of D], right on top of [NameDesc of M][']s nose and mouth.";
			MessUp D by N;
			now rectum is 1;
			now N is the bladder of the player;
			if N > 0:
				say "Messing makes you wet your diaper at the same time.";
				UnannouncedExpel urine on D by N;
				now the bladder of the player is 0;
			increase player-fucking by 1;
			DiaperAddictUp 1;
		otherwise:
			say "Nothing comes out!";
	if D is messed:
		increase player-fucking by 2;
		say DiaperMessDominated of M;
		FavourDown M by 2;
	otherwise if the total-soak of D >= the soak-limit of D / 3:
		increase player-fucking by 1;
		say DiaperSoggyDominated of M;
		FavourDown M;
	otherwise:
		say DiaperDryDominated of M;
	if player-fucking < DOMINANT-SHAMEFUL, now player-fucking is DOMINANT-SHAMEFUL;
	if player-fucking > DOMINANT-SUPER, now player-fucking is DOMINANT-SUPER;
	DiaperGet.

To say DiaperMessDominated of (M - a monster):
	let D be a random worn diaper;
	say "[BigNameDesc of M] whimpers and flails as [he of M] is forced to breathe in the disgusting scent of your soiled [ShortDesc of D].".

To say DiaperSoggyDominated of (M - a monster):
	say "[BigNameDesc of M] continues to weakly struggle as [he of M] is forced to breathe in and out through your soggy padding.".

To say DiaperDryDominated of (M - a monster):
	say "You feel [NameDesc of M][']s heavy breathing going in and out through your padding.".

[Use this for scenes that don't rely on the player's penis or fuckholes. This generally shouldn't show up, since a monster with a unique domination scene will have their own version of this function]
To unique dominate (M - a monster):
	say "You successfully force [NameDesc of M] to [his of M] knees and finger-bang [him of M] into submission! [big he of M] is visibly angry that you managed to get the better of [him of M] this time.";
	slightDignify.

[After the player dominates a monster, they usually have something to say about it! Include this in any xxx dominate functions.]
To say AfterDominationComment (N - a number) of (M - a monster):
	say "[line break][speech style of M]'I'll pay you back for that...'[roman type][line break]".

[!<SayDominanceFailureOfMonster>+

The text in this function should output whenever the player unsuccessfully dominates a monster. We don't want to include it in any of the failed dominance functions because we'd be writing the same thing over and over.

@param <Monster>:<M> The monster the player tried to dominate

+!]
To say DominanceFailure of (M - a monster):
	say "You try to force yourself on [NameDesc of M], but [he of M] turns the tables and forces you to your knees instead!".
To say DQDominanceFailure of (M - a monster):
	say "You try to force yourself on [NameDesc of M], but [he of M] turns the tables and forces you to your knees instead!".

[!<ComputeFailedDominancePunishmentOfMonster>+

The failed dominance punishment should be implemented for any monster that the player can dominate. This punishment should be fairly light, since winning is a requirement for making a domination attempt. If the monster won't be having sex with the player right after, the punishment can be worse and we should make sure the monster loses interest at the end.
+!]
To compute failed dominance punishment of (M - a monster):
	if M is male:
		if debugmode > 0, say "Triggering default male monster punishment.";
		now another-turn-flavour is the substituted form of "[BigFuckerDesc of M] holds you in place.";
		now another-turn is 1;[a male monster will usually just fuck you]
	otherwise:
		if debugmode > 0, say "Triggering default female monster punishment.";
		humiliate 30;
		if the number of worn not sissifying removable clothing > 0 and the player is getting unlucky:
			compute angry punishment of M;
		otherwise:
			say "[BigNameDesc of M] seems to lose interest you and begins walking off.";
			compute sissification;
		Bore M.

To compute failed dq dominance punishment of (M - a monster):
	now M is interested;
	if the player is upright:
		now the stance of the player is 1;
		say "[bold type]You are now on your knees.[roman type][line break]";
	if M is intelligent, say "[speech style of M]'You're going to regret trying that.'[roman type][line break]";

[!<SayDominanceFailedOfMonster>+

The text here should output when M teleports to another room after the player unsuccessfully dominates them.

@param <Monster>:<M> The monster the player tried to dominate

+!]
To say DominanceFailed of (M - a monster):
	say "[line break][BigNameDesc of M] hurries off before you have a chance to stop [him of M].".
To say DQDominanceFailed of (M - a monster):
	say "[line break][BigNameDesc of M] hurries off before you have a chance to stop [him of M].".

[!<ComputeSissification>+

computeSissification is called whenever the monster doesn't have another punishment for the player, or we weren't satisfied with the monster's normal punishment was light, so we want to make it more intense. It can summon sissy items or increase delicateness, but it could always have some other effects added later. The idea here is that failing to dominate a monster too many times will put the player into a downward spiral that they have trouble recovering from, but that can be avoided by playing smart with your odds. Most punishments from this function should be more on the side of harsh, with small upsides here and there.

+!]
To compute sissification:
	let S be a random off-stage sissifying actually summonable fetish appropriate clothing;
	if the player is gendered male and pink sissy bow is off-stage and pink sissy bow is actually summonable:
		say "[bold type]A silky pink bow appears in your hair![line break][variable custom style][if the bimbo of the player < 5]Is this bullshit game trying to tell me I'd make more sense as a girl?[otherwise]I get it... only a girl would have trouble doing something like that...[end if][roman type][line break]";
		summon pink sissy bow cursed;
	otherwise if pink sissy bow is worn and S is clothing:
		say "[bold type]As if reacting to your lack of dominance, you suddenly feel a [ShortDesc of S] [bold type]appear on you![line break][variable custom style][one of]Uh-oh...[or]This is making me feel like a pathetic [sissy]...[or]Even more [sissy] clothing?![stopping][roman type][line break]";
		summon S cursed;
		announce sissification;
	otherwise:
		say "The [if the player is gendered male]emasculating[otherwise]humiliating[end if] memory locks itself into place, [bold type]sure to make you more submissive from now on.[roman type][line break][variable custom style][one of]I should stop pretending to be dominant...[or]It's obvious to everyone how pathetic I am...[or]How can I be dominant when I'm already so pathetic?[stopping][roman type][line break]";
		SilentlyDelicateUp 1.

To compute enslaved domination of (M - a monster):
	if the teaseTimer of M > 0:
		say "You already did that recently. Perhaps give them a bit of a break first.";
	otherwise if the player is not able to use their hands:
		say "You can't use your hands right now so there's not much you can do.";
	otherwise:
		allocate 6 seconds;
		now the teaseTimer of M is 50;
		compute default enslaved domination of M.

To compute default enslaved domination of (M - a monster):
	say EnslavedDominationFlav of M;
	if the raw delicateness of the player > the EnslavedDominationThreshold of M:
		say "You feel vaguely better about yourself, but mostly just a bit ambivalent.";
	otherwise:
		DelicateDown 1.

To say EnslavedDominationFlav of (M - a monster):
	say "You spank [NameDesc of M] on the buttcheeks, [one of]eliciting a pained[or]being rewarded by a cry of pain[or]pleased by [his of M] poorly suppressed gasp of pain[at random] yelp. ".

To decide which number is the EnslavedDominationThreshold of (M - a monster):
	decide on 10.

Dominating Monsters ends here.
