Supporter Framework by Monster Framework begins here.

Part - Fixed Definitions

A supporter is a kind of monster. A supporter is usually intelligent. Understand "player" as a supporter. The text-shortcut of a supporter is usually "sptr".

A supporter has an indexed text called supporter-name. Understand the supporter-name property as describing a supporter.

A supporter can be strapped. [Are they a lady wearing a strap-on?]

Definition: a supporter is raunchy: decide yes.

Definition: a supporter is willing to do vaginal: decide yes.

Definition: a supporter is willing to do anal: decide yes.

Definition: a supporter is willing to do oral: decide yes.

Definition: a supporter is willing to urinate: decide yes.

Definition: a supporter is human: decide yes.

To say ShortDesc of (M - a supporter):
	say "[supporter-name of M]".
To say MediumDesc of (M - a supporter):
	say "Player [ShortDesc of M]".

To say NameDesc of (M - a supporter):
	say "[input-style][FuckerDesc of M][roman type]".
To say BigNameDesc of (M - a supporter):
	say NameDesc of M.
To say FuckerDesc of (M - a supporter):
	say "[supporter-name of M]".
To say BigFuckerDesc of (M - a supporter):
	say "[supporter-name of M]".

Definition: a supporter is not-the-same if the leftover-type of it is not previous supporter ID.

Definition: a supporter is fetish appropriate: decide yes.

supporter-summoned is a number that varies.

This is the spawn initial dungeon supporter rule:
	if supportersEnabled is 1 and supporter-summoned is 0 and a random number between 1 and 3 is 1: [Because there's a 1 in 3 chance of it appearing in the dungeon, woods or hotel respectively]
		let M be a random not-the-same fetish appropriate supporter;
		if debugmode > 1, say "Now summoning [NameDesc of M].";
		summon M in the dungeon;
		record supporter ID as the leftover-type of M;
		now supporter-summoned is 1.
The spawn initial dungeon supporter rule is listed in the setting up dungeon monsters rules.

This is the spawn initial woods supporter rule:
	if supportersEnabled is 1 and supporter-summoned is 0 and a random number between 1 and 2 is 1: [Because there's now a 1 in 2 chance of it appearing in the woods or hotel respectively]
		let M be a random not-the-same fetish appropriate supporter;
		if debugmode > 1, say "Now summoning [NameDesc of M].";
		summon M in the woods;
		record supporter ID as the leftover-type of M;
		now supporter-summoned is 1.
The spawn initial woods supporter rule is listed in the setting up woods monsters rules.

This is the spawn initial hotel supporter rule:
	if supportersEnabled is 1 and supporter-summoned is 0: [If it didn't appear in the dungeon or woods then it will definitely appear in the hotel]
		let M be a random not-the-same fetish appropriate supporter;
		if debugmode > 1, say "Now summoning [NameDesc of M].";
		summon M in the hotel;
		record supporter ID as the leftover-type of M;
		now supporter-summoned is 1.
The spawn initial hotel supporter rule is listed in the setting up hotel monsters rules.

To say FavourDesc of (M - a supporter):
	let O be a random body part penetrated by M;
	if O is body part:
		say "You have a very intimate relationship with [NameDesc of M]. [big he of M][']s fucking your [variable O]!";
	otherwise if M is unfriendly:
		say "You have a bad relationship with [NameDesc of M]. It seems like [he of M] wants to fight. [if M is interested][big he of M] is looking right at you![otherwise][big he of M] doesn't seem interested in you right now.[end if]";
	if M is acquaintance:
		say "You have a neutral relationship with [NameDesc of M]; [he of M] is unlikely to help you out too much but also isn't acting aggressive.";
	otherwise if M is annoyed:
		say "You do not have a very good relationship with [NameDesc of M]; in fact [he of M] is probably considering turning you into [his of M] next sexual conquest.".

To decide which number is the default favour of (M - a supporter):
	decide on 15.

To say waitingflav of (M - a supporter):
	if the player is not able to speak:
		say "[if the player is able to make sounds][line break][variable custom style][muffled sounds][roman type][line break][otherwise]You look up at [NameDesc of M] silently.[end if]";
	otherwise if the player is not a pervert:
		say "[one of]You stare up at [NameDesc of M], unable to believe what [he of M] is about to do to you.[or]You laugh nervously.[line break][variable custom style]'You're too strong for me! No hard feelings, right? I'll see you around some other time?'[roman type][line break][or]You look up nervously.[line break][variable custom style]'There must be something I can say that will get you to let me go?!'[roman type][line break][in random order]";
	otherwise if the player is not a nympho:
		say "[one of]You look [NameDesc of M] straight in the eyes.[line break][variable custom style]'So, what are you going to do to me?'[roman type][line break][or]You eye the ground nervously.[line break][variable custom style]'I guess this is the bit where I get fucked, huh?'[roman type][line break][or]You laugh awkwardly.[line break][variable custom style]'I guess I'm yours to use, then...'[roman type][line break][in random order]";
	otherwise:
		say "[one of]You look [NameDesc of M] straight in the eyes and grin.[line break][variable custom style]'What are you waiting for? Fuck my brains out!'[roman type][line break][or]You wiggle your butt provocatively.[line break][variable custom style]'It's up to you baby, how do you want me?'[roman type][line break][or]You bow your head submissively.[line break][variable custom style]'On behalf of Nintendolls, I invite you to use and enjoy my fuckdoll body in any way you please.'[roman type][line break][in random order]".

To say PregGrowth of (M - a supporter):
	say "[NameDesc of M][']s [child]".

To say SummoningFlav of (M - a supporter): [In case I end up allowing them to spawn]
	say "You hear a sound like a Sci-fi teleporter from somewhere nearby! Has someone new entered the game?".

To say LongDickDesc of (M - a supporter):
	let G be the girth of M;
	if G <= 7:
		say "[if futanari fetish is 0][G + 3] inch[otherwise][PenisFlavour G + 3][end if]";
	otherwise if G is 8:
		say "14 inch impaler";
	otherwise if G is 9:
		say "16 inch destroyer";
	otherwise:
		say "20 inch [if mythical creature fetish is 1]horsecock[otherwise]behemoth[end if]";
	if futanari fetish is 0, say " strapon dildo".

Definition: A supporter (called M) is willing to shag:
	if M is awake and the scared of M is 0 and the boredom of M < 120, decide yes;
	decide no.

To decide which number is the bartering value of (T - a thing) for (M - a supporter):
	decide on 0.

To decide which number is the bartering value of (T - a unicorn-horn) for (M - a supporter):
	decide on 0.

To decide which number is the bartering value of (T - a christmas gift) for (M - a supporter):
	decide on 0.

To FavourUp (M - a supporter):
	do nothing.

To compute perception of (M - a supporter):
	now M is interested;
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]"; [The output for clothing humiliation takes place within the 'sluttily dressed' check.]
	if M is unfriendly:
		say AlreadyUnfriendlyPerception of M;
	otherwise if the class of the player is living sex doll:
		if M is strapped:
			say "[big he of M] doesn't seem interested in you.";
			bore M;
		otherwise:
			say SexDollPerception of M;
			anger M;
	otherwise:
		compute appearance assessment of M.

To compute appearance assessment of (M - a supporter):
	if the appearance of the player > the outrage tolerance of M:
		FavourDown M by 2;
		if M is unfriendly:
			say "[UnfriendlySluttyPerception of M][big he of M] takes an aggressive pose.";
		otherwise if M is a groper and M is groping:
			compute grope of M;
		otherwise:
			say FriendlySluttyPerception of M;
	otherwise if the player is top-wardrobe-malfunctioning:
		compute default nip slip reaction of M;
	otherwise:
		say BoringPerception of M;
	if M is friendly:
		say "[BigNameDesc of M] promptly loses interest in you.";
		bore M for 150 seconds.

To compute damage reaction of (M - a supporter):
	if the sleep of M is 0:
		if M is uninterested:
			say MindingOwnBusinessCombatFlav of M;
		otherwise:
			say DamageReaction (the health of M) of M;
	otherwise:
		now the sleep of M is 0;
		say RudeAwakeningFlav of M.

Definition: a supporter is automatically banishable: decide yes. [Will this NPC automatically resolve their disappearance rather than giving the player options on what to do?]
Definition: a supporter is auto-banish-loot-dropping: decide yes. [Will it automatically drop jewellery when it is banished in this manner?]

To IdentifiablePosterReaction of (M - a supporter):
	say IdentifiablePosterReactionFlav of M;
	say "You turn bright red with shame.";
	FavourDown M;
	if M is unfriendly:
		say BecomesAggressive of M;
		now M is interested;
		now the boredom of M is 0;
	humiliate the lewdness of a random poster in the location of the player * 2.

To UnidentifiablePosterReaction of (M - a supporter):
	say UnidentifiablePosterReactionFlav of M;
	say "You turn bright red but don't say a word.";
	humiliate the lewdness of a random poster in the location of the player.

Definition: a supporter is eager to get angry: decide no.

To say SuddenTransformTrapReactFlav of (M - a supporter):
	say "[BigNameDesc of M] smiles widely.[line break][speech style of M]'Ooh, you look much more [beautiful] now!'[roman type][line break]".

[Oral]

To say MouthPenetrationFlav of (M - a supporter):
	if M is male or M is strapped: [Actual penis]
		say DefaultMouthPenetrationFlav of M;
	otherwise:
		say CommencingFacesitFlav of M.

To compute facial sex of (M - a supporter):
	if M is male: [Actual penis]
		compute default facial sex of M;
	otherwise if M is strapped: [Strapon]
		compute strapon facial sex of M;
	otherwise: [Facesitting]
		compute facesit sex of M.

To compute strapon facial sex of (M - a supporter):
	if the oral sex addiction of the player > 6, passively stimulate face from M;
	if the reaction of the player is 0:
		say StraponOralResisting of M;
		say StraponOralResistingResponse of M;
	otherwise:
		say StraponOralSubmissionResponse of M;
	decrease the sex-length of M by 1.

To say StraponOralResisting of (M - a supporter):
	say "[one of]You try as hard as you can to pull away, but [his of M] grip is simply too strong![or]You pull up, but [he of M] makes sure to shove you right back down![or]You grunt and try to pull away, but [he of M] simply holds you in place.[or]You try to pull [his of M] hands away, but [he of M][']s much too strong for you.[or][if the relevant sex addiction of M < 6]You stay completely still, blatantly refusing to do anything at all to the dildo.[otherwise if the relevant sex addiction of M < 14]You stay completely still, knowing that if you willingly suck on the dildo you might like it and not stop.[otherwise]You playfully pull away, forcing [NameDesc of M] to push your head up and down [himself of M].[end if][in random order]".

To compute facial climax of (M - a supporter):
	if M is male: [Actual penis]
		compute default facial climax for M;
	otherwise if M is strapped: [Strapon]
		compute facial strapon climax of M;
	otherwise: [Facesitting]
		compute facesit climax of M.

To compute facial strapon climax of (M - a supporter):
	say FacialStraponClimaxFlav of M;
	say "[big he of M] pulls out, satisfied, and loses interest.";
	TimesSubmittedUp M by 1;
	orgasm bore M.

To compute unique facesit climax effect of (M - a supporter):
	say "[BigNameDesc of M] gets off of your face and lies down on the ground, where [he of M] promptly falls asleep.";
	compute M sleeping 200 after sex;
	orgasm bore M.

This is the supporter facesitting prevents breathing rule:
	repeat with M running through female supporters penetrating face:
		unless M is strapped, decide yes;
	decide no.
The supporter facesitting prevents breathing rule is listed in the breathing blocking rules.

[Vaginal and Anal]

To say VaginaPenetrationFlav of (M - a supporter):
	if M is male or M is strapped: [Cock or Strapon]
		say PenPrep of M in vagina;
		say PenetrationFlav of M in vagina;
	otherwise: [Supporter's choice]
		say VaginaSpecialPenetrationFlav of M.

To say AssholePenetrationFlav of (M - a supporter):
	if M is male or M is strapped: [Cock or Strapon]
		say PenPrep of M in asshole;
		say PenetrationFlav of M in asshole;
	otherwise: [Supporter's choice]
		say AssholeSpecialPenetrationFlav of M.

To compute vaginal sex of (M - a supporter):
	if M is male: [Actual penis]
		compute default vaginal sex of M;
	otherwise if M is strapped: [Strapon]
		compute strapon sex of M in vagina;
	otherwise: [Supporter's choice]
		compute supporter sex of M in vagina.

To compute anal sex of (M - a supporter):
	if M is male: [Actual penis]
		compute default anal sex of M;
	otherwise if M is strapped: [Strapon]
		compute strapon sex of M in asshole;
	otherwise: [Supporter's choice]
		compute supporter sex of M in asshole.

To compute (M - a supporter) sexRuin in (F - a fuckhole):
	if the class of the player is living sex doll:
		do nothing;
	otherwise if M is unintelligent or the reaction of the player < 2:
		ruin F; [The RuinRoll function handles the chance of avoiding soreness for submitting]
	otherwise:
		if a random number between 1 and the charisma of the player is 1, ruin F.

To compute strapon sex of (M - a supporter) in (F - a fuckhole):
	if the reaction of the player is 2:[begging]
		compute sexBegging of M in F;
	otherwise if the reaction of the player is 1:[submitting]
		compute sexSubmit of M in F;
	otherwise:[resisting]
		compute sexResist of M in F;
	[compute M sexRuin in F;]
	decrease the sex-length of M by 1.

To say sexSubmitNearingClimax of (M - a supporter) in (F - a fuckhole):
	if M is male:
		say "[one of][BigNameDesc of M] grabs your hips with both hands as [he of M] speeds up.[or][BigNameDesc of M] spanks your [AssDesc] as [he of M] speeds up.[or][BigNameDesc of M] seems to speeding up![at random]";
	otherwise:
		say M submission sex (a random number between 1 and 7).

To say sexRoughNearingClimax of (M - a supporter) in (F - a fuckhole):
	if M is male:
		say sexSubmitNearingClimax of M in F;
	otherwise:
		say M rough sex (a random number between 1 and 6).

To compute supporter sex of (M - a supporter) in (F - a fuckhole):
	if the reaction of the player > 0:[submitting]
		say SexSubmitFlav of M in F;
	otherwise:[resisting]
		say SexResistFlav of M in F;
	compute M sexRuin in F;
	decrease the sex-length of M by 1.

To compute unique climax of (M - a supporter) in (F - a fuckhole):
	if M is male: [Actual penis]
		if M is wrapped, compute wrapped climax of M in F;
		otherwise compute unprotected climax of M in F;
	otherwise if M is strapped: [Strapon]
		compute strapon climax of M in F;
	otherwise: [Supporter's choice]
		compute supporter climax of M in F.

To compute strapon climax of (M - a supporter) in (F - a fuckhole):
	say StraponClimaxFlav of M in F;
	ruin F. [Most fucking doesn't ruin on the final round because there's a cumshot instead, but this doesn't have anything else happen so it should.]

To compute supporter climax of (M - a supporter) in (F - a fuckhole):
	say ClimaxFlav of M in F.

Part - Customisable Stuff

Section - Mandatory Changes

[These should always be clarified when a new supporter NPC is designed]

A supporter is usually male. The leftover-type of a supporter is usually 201.

To say LeftoverDesc (N - 201):
	say "The bloated, cumfilled and unconscious body of another player is on the ground here.[line break]".

The supporter-name of a supporter is usually "NAME MISSING".

To say MonsterDesc of (M - a supporter):
	say "This player's NPC is missing its description!".

[Are they dark skinned?]

Section - Incremental Changes

[Each month the supporter can improve something from here]

Definition: a supporter is father material: decide no. [Can be changed to yes]

To set up (M - a supporter):
	reset M;
	now the monstersetup of M is 1;
	now the raw difficulty of M is 4; [combat skill can be increased]
	now the health of M is the maxhealth of M.

To decide which number is the girth of (M - a supporter):
	if M is female and M is not strapped, decide on 0;
	decide on 2.

To set up sex length of (M - a supporter) in (B - face):
	set up sex length 2 of M in B.

To set up sex length of (M - a supporter) in (B - breasts):
	set up sex length 2 of M in B.

To set up sex length of (M - a supporter) in (B - a body part):
	set up sex length 2 of M in B.

To decide which number is the outrage tolerance of (M - a supporter):
	decide on 10.

Definition: a supporter is a groper: decide yes.

To compute post climax effect of (M - a supporter) in (F - a fuckhole):
	if M is male:
		compute M sleeping 200 after sex;
		bore M;
	otherwise:
		satisfy M.

The blind-status of a supporter is usually 0. [Can be changed to -1 to make them immune]

[###SUPPORTERS WITH A PENIS ONLY###]

To decide which number is the condom resistance of (M - a supporter):
	if the class of the player is cheerleader, decide on -2;
	decide on 0.

Section - Optional Changes

[This stuff the supporter can customise if they wish.]

To say DisapprovalFlav of (M - a supporter): [This is when the player is in some way looking suddenly more lewd in front of the NPC, maybe because they pulled out their tits, or maybe because a trap pulled up their skirt, or jizzed on them, or similar.]
	say "[BigNameDesc of M] [one of]blows a wolf-whistle in your direction.[or]grabs [his of M] crotch as [he of M] sees you.[or]licks [his of M] lips lecherously.[or]looks you in the eyes and sticks [his of M] tongue between two fingers, licking wildly, which makes a very crude gesture.[in random order]".

To say CurtseyReactionFlav of (M - a supporter):
	let K be a random worn currently visible knickers;
	unless K is nothing:
		say "[BigNameDesc of M] cackles.[line break][speech style of M]'I can see your [ShortDesc of K]!'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] smirks.[line break][speech style of M]'Now there's a slut who knows how to behave properly.'[roman type][line break]".

To say BecomesAggressive of (M - a supporter):
	say "[speech style of M]'[one of]I think it's about time we fucked, isn't it.'[or]That's it, I've had enough of just watching. It's time for me to get my nut.'[in random order][roman type][line break][big he of M] takes an offensive stance!".

To say AlreadyUnfriendlyPerception of (M - a supporter): [The NPC has just spotted the player, and has already decided they're best used as a cumdump]
	say "[speech style of M]'[one of]Swiggity swooty, I'm comin['] for that booty!'[or]You've got a date with my [if M is male]dick[otherwise]delicate parts[end if], sunshine!'[or]I'm glad to see you're still around, friend! Because I'm still in the mood for you-know-what!'[or]We must stop meeting like this! People will talk! Especially because I'm going to fuck you now.'[in random order][roman type][line break]".

To say FriendlySluttyPerception of (M - a supporter): [The NPC has just spotted the player while the player looks slutty, but hasn't witnessed enough to decide to fuck them.]
	say "[speech style of M]'[one of]Hey chica, looking good! Keep it up and I might even decide to fuck you.'[or]You know if you're trying to scream 'fuck me' with that appearance, you're doing a good job.'[or]Wow, there are some real sluts down here! I'll probably come back for you later.'[in random order][roman type][line break]".

To say UnfriendlySluttyPerception of (M - a supporter): [The NPC has just spotted the player while the player looks slutty, but hasn't had much of a chance to start disapproving of them yet.]
	say "[speech style of M]'[one of]Okay that's it, you clearly need a good hard seeing to. Let's do this.'[or]I think it's time for me to join in with your [']training['].'[or]Well geez, when you look like that, how can I say no?'[in random order][roman type][line break]".

To say BoringPerception of (M - a supporter): [The NPC has spotted the player who doesn't look slutty enough to decrease their friendliness]
	say "[speech style of M]'[one of]Another player, huh? Stay out of my way, I'm just here to fuck sluts[or]You again. Sorry, you're still not slutty enough for me to be bothered to try and fuck you[stopping].'[roman type][line break]".

To say IdentifiablePosterReactionFlav of (M - a supporter):
	say "[BigNameDesc of M] stares at the poster with [his of M] mouth open wide.[line break][speech style of M]'You really let them photograph you as you did that?! You're way more of a slut than I ever dreamed.'[roman type][line break]".

To say UnidentifiablePosterReactionFlav of (M - a supporter):
	say "[speech style of M]'Jeepers creepers! Wow, if I got a few minutes alone with that broad, I'd bury my [if M is male]meat[otherwise]fist[end if] so deep in that ass she wouldn't be able to walk for days!'[roman type][line break]".

To say PresentFriendlyAcceptanceFlav of (M - a supporter): [This is when the player offers a body part up to them and the NPC is still friendly, and accepts]
	say "[speech style of M]'Sure, why not? There's nobody hotter around right now so I'll give you a run-over.'[roman type][line break]".

To say PresentFriendlyRejectionFlav of (M - a supporter): [This is when the player offers a body part up to them and the NPC is still friendly, and refuses because a) they orgasmed recently or b) Can't fuck that particular body part]
	say "[speech style of M]'[if presented-orifice is a potential target]Geez, give me some time to recover before asking that!'[otherwise]Not interested.'[end if][roman type][line break]".

To say FriendlySexReleaseRefusalSpeech of (M - a supporter): [The player has changed their mind and wants to end the friendly sex early. The NPC has decided to dominate the player and not let go so easily.]
	if the player is not able to speak, say "[speech style of M]'[one of]Quiet down! I'm enjoying this![or]Stop squirming, you will hurt yourself.'[or]I couldn't understand that, but we can talk about it when I am finished.'[in random order][roman type][line break]";
	otherwise say "[speech style of M]'[one of]Fat chance! I'm not someone you can just tease like that and get away with it.'[or]You're joking right? I'm not stopping now!'[at random][roman type][line break]".

To compute kneeling reaction of (M - a supporter): [The player has got on their knees voluntarily while the NPC is aggressive.]
	say "[BigNameDesc of M] grins.[line break][speech style of M]'[one of]Good slut.'[or]What a good girl.'[or]What a good little fucktoy.'[in random order][roman type][line break]";
	humiliate 75.

To say SubmissionFlav of (M - a supporter): [The player has done something submissive like remove an item of clothing while the NPC is aggressive.]
	say "[BigNameDesc of M] touches [himself of M] as [he of M] watches.[line break][speech style of M]'That's it, keep going.'[roman type][line break]".

To compute delay of (M - a supporter): [NPCs, when they're confident that the player can't escape, will sometimes get the player a chance to request a certain type of sex.]
	say "[BigNameDesc of M] folds [his of M] arms.[line break][speech style of M]'So, what do you think I should do to you?'[roman type][line break]".

To say PresentAcceptanceFlav of (M - a supporter): [Your (aggressive) NPC has decided to do what the player suggested.]
	say "[BigNameDesc of M] grins.[line break][speech style of M]'An excellent suggestion!'[roman type][line break]".

To say PresentRejectionFlav of (M - a supporter): [Your (aggressive) NPC has decided to ignore the player's suggestion. NB that they may independently make the decision to do that thing anyway themselves, so it would be inaccurate to say that your NPC 'decides against doing that' or something.]
	say "[BigNameDesc of M] seems deep in thought.[line break][speech style of M]'Your opinion doesn't matter. The real question is, what do *I* want to do?'[roman type][line break]".

To compute the busy waiting of (M - a supporter): [The NPC isn't able to do their thing right now because the player is busy with something boring, like resting in a hammock.]
	if a random number between 1 and 6 is 1, say "[BigNameDesc of M] continues to wait.".

To compute the default taunting of (M - a supporter): [The NPC isn't able to do their thing right now because the player is busy with a trap or another NPC, but they expect the player will be free soon.]
	say "[BigNameDesc of M] watches, making no attempt to hide [his of M] glee.".

To say SelectionFrustrated of (M - a supporter): [The NPC has got tired of waiting!]
	say "[BigNameDesc of M] seems to look very frustrated, and then gives up.";
	bore M.

To compute the dildo stuck taunting of (M - a supporter):
	if a random number between 1 and 3 is 1, say "[BigNameDesc of M] puts [his of M] hand to [his of M] chin as if admiring an art exhibit.[line break][speech style of M]'[one of]Hmm, yes, you're clearly going to do REALLY well in this game. Haha[or]Have you considered NOT getting caught by traps? Someone might be led to think that you're enjoying this[or]Perhaps you should leave the adventuring to the people with brains[or]I can't believe you got caught by such a basic trap[in random order]!'[roman type][line break]".

To say angry punishment insult of (M - a supporter): [The NPC is angry because the player wronged them (e.g. didn't swallow). They will now get their revenge, probably by stealing an item of clothing / jewellery.]
	say "[speech style of M]'Oh my god, you're not even good at being a slut! I can't let you get away with that.'[roman type][line break]".

To say MonsterTripAnnounceFlav of (M - a supporter):
	say "[BigNameDesc of M] tries to trip you up!".

To say MonsterFailedTripFlav of (M - a supporter):
	say "You manage to keep your balance.".

To say StrikingSuccessFlav of (M - a supporter) on (B - a body part): [TargetName of B outputs something beginning with "on the", e.g. "on the ass"]
	say "[BigNameDesc of M] smacks you [TargetName of B]! Ouch!!".

To say StrikingFailureFlav of (M - a supporter) on (B - a body part): [TargetName of B outputs something beginning with "on the", e.g. "on the ass"]
	say "[BigNameDesc of M] tries to smack you [TargetName of B] but you manage to swiftly dodge the blow!".

To say MindingOwnBusinessCombatFlav of (M - a supporter): [Your NPC was minding their own business and not even looking at the player when they attacked]
	say "[big he of M] looks at you blankly with shock.[line break][speech style of M]'Wait what? You think you can take me?! Prepare yourself, [bitch]!'[roman type][line break]".

To say RudeAwakeningFlav of (M - a supporter): [Your NPC was sleeping when the player attacked]
	say "[big he of M] wakes up, and angrily looks around for the cause of this rude awakening! ".

To say DamageReactHealthy of (M - a supporter):
	say "[BigNameDesc of M] [one of]laughs condescendingly[or]smirks at you mockingly[at random].".

To say DamageReactDamaged of (M - a supporter):
	say "[BigNameDesc of M] [one of]shrugs off the hit[or]takes the blow without staggering[at random].".

To say DamageReactTired of (M - a supporter):
	say "[BigNameDesc of M] [one of]growls in anger[or]snarls with frustration[at random].".

To say DamageReactWeak of (M - a supporter):
	say "[BigNameDesc of M] [one of]is struggling for breath[or]puts [his of M] hand on [his of M] belly as if [he of M] has a stitch[at random].".

To say DamageReactSubmissive of (M - a supporter): [Hinting that the player might be able to turn the tables and fuck your NPC]
	say "[BigNameDesc of M] [one of]whimpers with pain[or]looks at you meekly as [he of M] catches [his of M] breath[at random].".

To say MovementBlock of (M - a supporter):
	say "[BigNameDesc of M] manages to get in front of you and block your path, slowing down your movement!".

To say StandingBlock of (M - a supporter):
	say "[BigNameDesc of M] grabs onto your [ShortDesc of hair] and stops you from standing up!".

To say BanishFleeFlav of (M - a supporter):
	say "[speech style of M]'You motherfucker, do you know how much it cost me to get to be here?!'[roman type][line break]Those are [NameDesc of M][']s final words before [he of M] drops to the ground, dead. After a couple of seconds, [his of M] body disappears like something out of TRON.".

To say SexResistSlapFlav of (M - a supporter):
	say "[BigNameDesc of M] [one of]cackles[or]laughs deeply[or]chuckles[or]snorts[at random] at your [one of]fruitless display[or]vain efforts[or]pointless attempts[or]futile resistance[at random] before [if M is male and M is penetrating face]slapping you harshly on the cheek[otherwise if M is male and M is penetrating breasts]painfully slapping your [BreastDesc][otherwise]roughly spanking your [buttcheeks][end if] [one of]to get you to behave[or]in order to keep you under control[or]as punishment[or]to discourage further disobedience[at random].".

To say speech style of (M - a supporter): [This is the default rule for whether their speech is in pink or dark red text but it can be changed so that for example a rather effeminate man has pink text]
	if M is presenting as female, say second custom style;
	otherwise say first custom style.

To compute (M - a monster) stomping (N - a supporter): [For when the minotaur, xavier etc. encounters our NPC]
	if N is in the location of the player, say "[BigNameDesc of M] picks [NameDesc of N] off of the ground with two mighty hands and before you can say [']I'm not sure that's going to fit['] [he of M] has impaled [NameDesc of N] on [his of M] giant [DickDesc of M]. [BigNameDesc of N] shrieks in surprise and pain but there's absolutely nothing either of you can do before [NameDesc of M] is already climaxing, pumping gallons of [semen] into [NameDesc of N][']s rapidly swelling belly. As [NameDesc of N] inevitably passes out from the experience, [NameDesc of M] peels [NameDesc of N][']s body off of [his of M] [LongDickDesc of M] like a used condom and discards it on the ground, before turning to you, with a still-burning sexual hunger in [his of M] eyes.";
	otherwise say "You hear the sort of shriek you'd hear from a [man of N] if [he of N] was suddenly impaled on a giant [ShortDesc of M] penis, coming from [if N is nearby]nearby![otherwise]somewhere in the region![end if]";
	destroy N;
	let L be a random off-stage leftover;
	now L is in the location of M;
	now the leftover-type of L is the leftover-type of N.

To say MonsterOfferRejectFlav of (M - a supporter) to (T - a thing):
	say "[BigNameDesc of M] refuses.[line break][speech style of M]'I don't do trades.'[roman type][line break]".

To compute sudden objectification of (M - a supporter): [The player's appearance just jumped to completely unacceptable standards right in front of your NPC, and your NPC has noticed, and now wants to bang.]
	say "Something seems to change in the way [NameDesc of M] is looking at you. [line break][speech style of M]'[if M is penetrating a body part]Yes, that's right, I'm the boss, and you're my little [whore]...'[otherwise if the player is monster fucked]That does look like a lot of fun! Maybe it's time I joined in...'[otherwise]You know what? I think you've swirled far enough down the drain of slutdom that it's finally worth giving you a once-over.'[end if][roman type][line break]".

To compute MasturbationReaction of (M - a supporter):
	if M is awake:
		if M is penetrating a body part:
			if M is friendly-fucking:
				say "[BigNameDesc of M] grins, and starts thrusting even faster.";
			otherwise:
				say "[BigNameDesc of M] [if M is penetrating a fuckhole]spanks[otherwise]slaps[end if] you angrily. [line break][first custom style]'Did I give you permission to do that? This is supposed to be a punishment!'[roman type][line break]";
				PainUp 1;
				say "[bold type]Your masturbation session has been interrupted![roman type][line break]";
				follow the masturbation ended rule;
		otherwise:
			say "[BigNameDesc of M] stares, wide-eyed.[line break][speech style of M]'[if M is friendly]Wow, I guess that means you want to fuck, huh?'[otherwise]Haha, I didn't know you wanted me that much!'[end if][roman type][line break][big he of M] flexes [his of M] neck muscles in anticipation.";
			now M is interested;
			anger M.

To say EnemaFloorReactionFlav of (M - a supporter): [When the player squirts an anal creampie / enema onto the ground in front of the NPC]
	say "[BigNameDesc of M] [if M is interested]looks disgusted[otherwise]turns to look at you with an expression of disgust[end if].[line break][speech style of M]'Why would you do that in front of me?! You trashy skank!'[roman type][line break][if the humiliation of the player < HUMILIATION-DISGRACED + 1000][one of]You turn a bright shade of red[or]You blush brightly with shame[or]You shiver with self-consciousness[or]You turn red-faced with shame[in random order].[end if]".

To say EnemaReactionFlav of (M - a supporter) into (C - a clothing): [When the player squirts an anal creampie / enema into worn clothing in front of the NPC]
	say "[BigNameDesc of M] [if M is interested]looks disgusted[otherwise]turns to look at you with an expression of disgust[end if].[line break][speech style of M]'Into your own briefs?! Have you absolutely no shame or class?!'[roman type][line break][if the humiliation of the player < HUMILIATION-DISGRACED + 1000][one of]You turn a bright shade of red[or]You blush brightly with shame[or]You shiver with self-consciousness[or]You turn red-faced with shame[in random order].[end if]".

[###SUPPORTERS WITH A PENIS ONLY###]

To say SexDollPerception of (M - a supporter): [The NPC has just spotted the player, and the player is currently a sex doll. The NPC is going to turn immediately unfriendly and demand sex.]
	say "[speech style of M]'[one of]Oh look, a sex doll. I guess I'm supposed to fuck it!'[or]Oh, there's that sex doll I ordered! I wondered where you had gotten to.'[or]You look a lot more fuckable than the other sex dolls I've seen around here. Let's do it.'[in random order][roman type][line break]".

[Oral]

To say SwallowDemand of (M - a supporter):
	say "[speech style of M][one of]'If you don't swallow, it'll piss me off.'[or]'Swallow it all, slut!'[in random order][roman type][line break]".

[Titfucks]

To say BreastsPenetrationFlav of (M - a supporter):
	say "[BigNameDesc of M] takes [his of M] [DickDesc of M] and moves it towards your chest. You watch in silence as [he of M] pushes forward, using the tight gap in between your boobs as a makeshift fuckhole. [if the titfuck addiction of the player < 5]You hold your body still and try to ignore the brutish grunts as [he of M] begins to thrust in and out of your [BreastDesc][otherwise]You instinctively bring your hands to your [BreastDesc], and begin to massage [his of M] [DickDesc of M] by moving them up and down with your hands as fast and powerfully as you can[end if].".

To say CleavageClimaxFlav of (M - a supporter):
	say "[BigNameDesc of M] moans lewdly as [he of M] ejaculates, covering your [ShortDesc of breasts] in [his of M] [semen]!".

[Vaginal & Anal]

To say CondomAcceptFlav of (M - a supporter):
	if the condom resistance of M > 0, say "[BigNameDesc of M] frowns, but then takes the condom and sheathes [his of M] [manly-penis].";
	otherwise say "[BigNameDesc of M] [one of]smiles[or]grins wordlessly[or]smirks[at random] and takes a condom. Discarding the wrapper, [he of M] rolls it down the length of [his of M] [manly-penis]. You stare, [one of][if the semen taste addiction of the player > 13]hypnotised, eagerly licking your lips[otherwise if the semen taste addiction of the player > 6]hypnotised, unconsciously licking your lips[otherwise]disgustedly curling your upper lip[end if][or]unable to [if the player is a pervert and the player is not a nympho]bring yourself to [end if]look away[or]your mouth opening unconsciously[or][if the player is not a pervert]without a shred of enthusiasm[otherwise]with envy[end if], as the rubber makes intimate contact with every inch of the massive tool[or]as the gleaming latex makes every bump and vein glisten [if the player is not a pervert]unappealingly[otherwise]temptingly[end if][at random].".

To say CondomRejectFlav of (M - a supporter): ['mating' is a flag that indicated that the NPC has already had a baby with the player.]
	say "[BigNameDesc of M] strokes [his of M] chin.[line break][speech style of M]'[if M is mating]How are we going to keep making babies if I wear this?'[otherwise]I guess there is a risk, but it feels so much better without!'[end if][roman type][line break]Looks like [he of M][']s going in bare...".

To say CondomPieFlav of (M - a supporter) in (F - a fuckhole):
	say "[BigNameDesc of M] ejaculates [his of M] entire load into the condom! You can feel the tip bulging and ballooning inside of you. ".

To say CondomPinFlav of (M - a supporter) on (C - a clothing):
	say "Before you can stop [him of M], [NameDesc of M] presses the [one of]newly created and now used [or]strongly-smelling [or]wobbling, semen-swollen [or][or][cycling]condom to your [C]. After giving you a final mischievous grin, [he of M] yawns, lies back, and falls asleep.".

To say CreampieFlav of (M - a supporter) in (F - a fuckhole):
	say "[BigNameDesc of M] moans with pleasure as [he of M] ejaculates [his of M] [if the girth of M < 5]smallish [otherwise if the girth of M > 8]gargantuan [otherwise if the girth of M > 6]huge [end if]load into your [variable F]! [big he of M] grips your hips tightly as [he of M] keeps his [DickDesc of M] firmly lodged as deep as it can go inside you and you can feel it constantly twitching as [he of M] cums. Having thoroughly drained [his of M] balls inside of you, [his of M] [DickDesc of M] pops out as [he of M] lies backwards and quickly falls into a well-earned sleep.".

[###SUPPORTERS WITH A STRAPON ONLY###]

[Oral]

To say StraponOralResistingResponse of (M - a supporter): [The player is refusing to play ball and suck obediently on the dildo. How does the NPC act?]
	say "[one of]Your resistance just seems to make [NameDesc of M] more excited! [big he of M] fucks your mouth harder and faster.[or][BigNameDesc of M] maintains a firm grip on the back of your head, determined to get as much of the dildo in your mouth as [he of M] can.[or][BigNameDesc of M] continues thrusting with no acknowledgement of your protests.[or][BigNameDesc of M] continues thrusting despite your protests![in random order]".

To say StraponOralSubmissionResponse of (M - a supporter): [The player is sucking obediently on the dildo. What does that look like?]
	say "[one of][BigNameDesc of M] thrusts at a good pace, holding on as if to make sure you won't stop.[or][BigNameDesc of M] holds you with an almost uncomfortably tight grip, guiding your movement.[or][BigNameDesc of M] holds the dildo still and lets you do all the work, making it that much more humiliating.[in random order]".

To say FacialStraponClimaxFlav of (M - a supporter): [The final round of strapon facefucking]
	say "[BigNameDesc of M] picks up the speed and power, trying to get [his of M] strapon all the way down your throat.".

[Vaginal & Anal]

To say StraponClimaxFlav of (M - a supporter) in (F - a fuckhole):
	say "[BigNameDesc of M] moves [his of M] hips as hard as [he of M] can, burying [his of M] [DickDesc of M] as deep as it will go into your [variable F] and giving you five extremely rough thrusts to finish [his of M] session, before quickly pulling all the way out with a loud 'POP'.[line break][speech style of M]'Yeah slut, I hope you liked that!'[roman type][line break]".

[###SUPPORTERS WITHOUT A PENIS OR STRAPON ONLY###]

[Oral]

To say FacesitResisting of (M - a monster):[The player is refusing to perform for your NPC.]
	say "[one of]You try as hard as you can to pull away, but [his of M] thighs are firmly gripping your head![or]You try to pull up, but [he of M] is much too heavy for your neck muscles to do anything![or]You flail with your legs but it doesn't make any difference![in random order]".

To say CommencingFacesitFlav of (M - a monster): [The NPC sits on the player's face.]
	say "[BigNameDesc of M] flips you onto your back and before you know it, your head is between [his of M] thighs and [his of M] bare-naked crotch is being lowered right onto your face! It seems like [he of M] has no intention of letting you go before you make [him of M] cum.".

To say FacesitResistingResponse of (M - a monster): [The player is refusing to play ball and perform cunnilingus / anilingus. How does the NPC act?]
	say "[one of][BigNameDesc of M] shows no sign of getting bored, and just gently rocks back and forth on your face.[or][BigNameDesc of M] squeezes tight on your head with [his of M] thighs, as if giving a polite warning that [he of M] has complete power over you in this position.[or][BigNameDesc of M] displays a great amount of patience and just remains sitting there, [his of M] crotch remaining right on top of your mouth.[or][BigNameDesc of M] slowly grinds away on your face.[in random order]".

To say FacesitSubmissionResponse of (M - a monster): [Normal facesitting oral sex. Explain what's happening!]
	say "[one of][BigNameDesc of M] stays still and lets you tongue [his of M] folds. You can hear [him of M] sighing gently with pleasure.[or][BigNameDesc of M] shifts forward ever so slightly, guiding your mouth to [his of M] asshole, which you begin to tongue obediently.[or][BigNameDesc of M] leans forward so that your tongue has better access to [his of M] clit. As you let your tongue run across it, you hear [him of M] cooing softly.[or][BigNameDesc of M] grinds in perfect rhythm with the back and forth movements of your tongue. [big he of M] squeals in joy at the sensation.[in random order]".

To say NearingClimaxFacesit of (M - a monster): [Next turn your NPC is going to cum! Give a hint to the player by changing up the flavour. Also this allows the climax to make more sense (rather than her sitting still and the player refusing to tongue, and then suddenly there's an orgasm!)]
	say "[one of][BigNameDesc of M] grunts as [he of M] begins to grind your face with passion![or][BigNameDesc of M] leans back so [he of M] can play with [his of M] clit, and begins to rub [his of M] pussy and asshole all over your face with vigour![in random order]".

To say FacesitClimaxFlav of (M - a monster):
	say "[BigNameDesc of M] begins to grind with increasing speed and desperation until with an almost mindless groan [he of M] orgasms, soaking your face with [if the oral sex addiction of the player < 4]gross and sticky [otherwise if the oral sex addiction of the player > 6]delicious [end if]girlcum.[line break][speech style of M]'Yes, yes, oh fuck yes this is what I needed! Your face makes a damn good sex toy.'[roman type][line break]".

[Vaginal & Anal]

To say VaginaSpecialPenetrationFlav of (M - a supporter): [This can be whatever you want as long as the purpose is masturbating the vagina and it's not thick enough for us to need to handle calculations about soreness and stretching. So it could be a vibrating wand, or your NPC's tongue, etc. Just make sure that the flavour in the following turns matches]
	say "[one of][BigNameDesc of M] strokes your clit as [he of M] pushes two fingers into your [vagina].[or][BigNameDesc of M] traces your outer labia with a finger before slowly pushing two inside.[at random]".

To say AssholeSpecialPenetrationFlav of (M - a supporter): [This can be whatever you want as long as the purpose is masturbating the asshole and it's not thick enough for us to need to handle calculations about soreness and stretching. So it could be a vibrating anal probe, or your NPC's tongue, etc. Just make sure that the flavour in the following turns matches]
	say "[one of][BigNameDesc of M] looks directly into your eyes as [he of M] pushes two fingers into your [asshole].[or][BigNameDesc of M] rubs gently on your anal sphincter with two fingertips before slowly pushing them inside.[at random]".

To say SexSubmitFlav of (M - a supporter) in (F - a fuckhole): [The player has submitted to your acts. How does that make your NPC act?]
	say "[one of][BigNameDesc of M] continues to thrum away with two fingers deep inside your [variable F], while you lie there and take it.[or][BigNameDesc of M] pushes a third and then a fourth finger inside your [variable F]! [big he of M] lets you feel that girth for a bit before pulling all the fingers out, kissing the entrance to your hole, and then returning with the two original fingers from before.[or][BigNameDesc of M] bends [his of M] fingers while they're inside of you, to put pressure on your [if the player is sexed male]prostate[otherwise]G-spot[end if]![or][BigNameDesc of M] switches from an in-out motion to a fast up-down option, stretching and closing the entrance to your [variable F] rapidly. You can't believe how good it feels![in random order]".

To say SexResistFlav of (M - a supporter) in (F - a fuckhole): [The player is resisting against your acts. How does that make your NPC act?]
	say "[one of][BigNameDesc of M] holds you still with [his of M] other arm as [he of M] continues to thrum away with two fingers deep inside your [variable F].[or][BigNameDesc of M] pushes a third and then a fourth finger inside your [variable F], as if to warn you against struggling! [big he of M] waits until you have stopped moving before pulling the two new intruders back out.[line break][speech style of M]'That's what I thought.'[roman type][line break][or][BigNameDesc of M] bends [his of M] fingers into a hook inside of you! The intense feelings make you rethink your rebellion.[or][BigNameDesc of M] increases the speed and pressure of [his of M] fingers, perhaps in response to your attempted resistance![in random order]".

To say ClimaxFlav of (M - a supporter) in (F - a fuckhole):
	say "[BigNameDesc of M] pulls [his of M] fingers out of your [variable F] with a lewd 'squelch'.[line break][speech style of M]'That was fun! But next time I think I might sit on your face instead and get MY nut.'[roman type][line break]".

[###INFLATION STUFF###]

To compute the flying player taunting of (M - a supporter):
	if a random number from 1 to 6 is 1:
		say "[BigNameDesc of M] grins.[line break][speech style of M]'[one of]Haha, what a loser! How did you manage to get stuck up there?'[or]Gosh, you sure are brave, I sure wouldn't be caught dead stuck on the ceiling like an oversized balloon!'[or]Get down here already you dumb bimbo! Are you really stuck?! Haha!'[in random order][roman type][line break][if the humiliation of the player < 17500]You [one of]wince[or]shudder[or]cringe[purely at random] with shame.";
		humiliate 20.

To say LandingTaunt of (M - a supporter):
	say "[BigNameDesc of M] smirks.[line break][speech style of M]'[one of]Like a lead balloon[or]Oof, that looked like it hurt[in random order]!'[roman type][line break]";
	humiliate 50.

[###PREGNANCY STUFF###]

To compute labour to (M - a supporter): [This can't happen until father material is switched to yes]
	if M is regional and M is alive:
		compute pregnancy clothing displacement;
		say "[PregFlav][if the father is in the location of the player][BigNameDesc of M][otherwise][BigNameDesc of M] appears almost as if on cue! [big he of M][end if] kneels down on one knee and delivers the human baby. [big he of M] takes it into [his of M] arms and begins to cradle it. [line break][speech style of M]'A baby [one of]boy[or]girl[purely at random]! [if the father is mating]Another healthy member of our family, and hopefully not the last.[otherwise]Is it really true? I'm a parent in this universe now? This is the greatest moment of my life! Let's have another one soon[end if].'[roman type][line break]Without giving you a chance to react, never mind reply, [he of M] leaves you to recover from your ordeal.";
		if the father is in the location of the player:
			say "For some reason, you are filled with a sense of deep fulfilment. You feel great!";
			StrengthUp 1;
			DexUp 1;
			IntUp 1;
	otherwise if M is alive:
		Delay Labour.

[###WATERSPORTS STUFF###]

To say ClothesPeeReaction of (M - a supporter):
	if M is friendly:
		say "[BigNameDesc of M] looks shocked.[line break][speech style of M]'So you're into watersports, huh?! I'll have to remember that.'[roman type][line break]";
		FavourDown M by 2;
		if M is unfriendly, say "[big he of M] thinks for a moment before taking an aggressive stance.[line break][speech style of M]'I guess you doing that in front of me means that you're up for anything, right? In that case, let's do it!'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] laughs.[line break][speech style of M]'[if M is interested]You are an utter disgrace!'[otherwise]Is that your way of getting my attention? Well it worked!'[end if][roman type][line break][if M is uninterested]Uh-oh...[end if]";
		now M is interested.

To say GroundPeeReaction of (M - a supporter):
	say "[ClothesPeeReaction of M]".

To say UrinationFlav of (M - a supporter):
	say "[BigNameDesc of M] points [his of M] genitals towards your face. A golden stream of [urine] shoots out, headed straight for you!".

To say PissDrinkThreat of (M - a supporter):
	say "[speech style of M]'[one of]You'd better drink this like a good toilet, or you won't like what comes next.'[or]You'd better make sure every last drop goes down your throat, [bitch].'[in random order][roman type][line break]".

[###DIAPER STUFF###]

To say DiaperReaction of (M - a supporter):
	if there is a currently visible diaper or the player is shameless or M is concealment immune:
		if M is unfriendly:
			say "A mocking grin appears on [NameDesc of M][']s face.[line break][speech style of M]'[if M is interested]Is that how I make you feel[otherwise]Haha, all I have to do is be in the same room as you and you wet yourself in fear[end if]?'[roman type][line break]";
		otherwise:
			say "[speech style of M]'Wow, just like a big baby.'[roman type][line break][BigNameDesc of M] can't suppress [his of M] smile.";
			FavourDown M;
			say "[speech style of M]'[if M is unfriendly]That's it, I've made up my mind. I'm going to make you my little baby bitch[otherwise]One of these days I'm going to decide to take you into my own [']care['], if you're not careful[end if].'[roman type][line break]";
			if M is unfriendly, now M is interested;
		if the player is modest, say "[one of]You are so ashamed you wish the ground would just open up and swallow you. [or][stopping]You turn bright red and refuse to look at [NameDesc of M] in the eye.";
		otherwise say "You turn bright red.";
	otherwise:
		say "It seems that [NameDesc of M] is unaware of what you've just done.".

To say RockingReactionSpeech of (M - a supporter): [When your NPC sees them rocking on the rocking horse trap in the woods]
	say "[one of][line break][speech style of M]'Hahahahaha! If you could only see this from my perspective! You look SO pathetic right now!'[roman type][line break][or][stopping]".

Supporter Framework ends here.
