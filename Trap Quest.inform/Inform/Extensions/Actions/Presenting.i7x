Presenting by Actions begins here.

[!<presentedOrifice:Object>*

REQUIRES COMMENTING

*!]
Presented-orifice is an object that varies.

The can't show what you haven't got rule is not listed in the check showing it to rulebook.
The block showing rule is not listed in the check showing it to rulebook.

[!<CheckShowingSomethingToAMonster>+

REQUIRES COMMENTING

+!]
Check showing something to a monster:
	try direct-presenting the noun to the second noun instead.

[!<presenting:Action>*

REQUIRES COMMENTING

*!]
Presenting is an action applying to one thing.

[!<directPresentingItTo:Action>*

REQUIRES COMMENTING

*!]
Direct-presenting it to is an action applying to two things.

[!<auto:Integer>*

REQUIRES COMMENTING

*!]
auto is a number that varies.

[!<presentingTarget:Object>*

REQUIRES COMMENTING

*!]
presenting-target is an object that varies.

[!<BodyPartIsActuallyPresentable>+

REQUIRES COMMENTING

+!]
Definition: a body part (called B) is actually presentable:
	now presenting-target is B;
	follow the global presentable rules;
	if the rule failed, decide no;
	follow the presentable rules of B;
	if the rule failed, decide no;
	decide yes.

[!<globalPresentableRules:Rulebook>*

REQUIRES COMMENTING

*!]
the global presentable rules is a rulebook.

[!<defaultPresentableRules:Rulebook>*

REQUIRES COMMENTING

*!]
the default presentable rules is a rulebook.

[!<BodyPart>@<presentableRules:Rulebook>*

REQUIRES COMMENTING

*@!]
A body part has a rulebook called presentable rules. The presentable rules of a body part is usually the default presentable rules.

[!<TheUnpresentableBodyPartRule>+

REQUIRES COMMENTING

+!]
This is the unpresentable body part rule:
	if auto is 0, say "You can only present an orifice on your body that can be fucked[if the largeness of breasts >= 5] or your breasts[end if].";
	rule fails.
The unpresentable body part rule is listed in the default presentable rules.

[!<TheLackOfInterestedMonstersRule>+

REQUIRES COMMENTING

+!]
[This is the lack of interested monsters rule:
	if the number of interested monsters in the location of the player + the number of friendly raunchy monsters in the location of the player is 0 and (the number of giant wasps in the location of the player is 0 and the player-class is broodmother):
		if auto is 0:
			if there is an interested monster in the location of the player, say "There's nobody about to fuck you.";
			otherwise say "But there's nobody even looking at you.";
		rule fails.
The lack of interested monsters rule is listed in the global presentable rules.]

[!<ThePlayerCanOnlyPresentWhileKneelingRule>+

REQUIRES COMMENTING

+!]
[This is the player can only present when kneeling rule:
	if the player is upright:
		if auto is 0, say "You need to get on your knees first.";
		rule fails.
The player can only present when kneeling rule is listed in the global presentable rules.]

[!<ThePlayerCannotPresentIfAlreadyStuckRule>+

REQUIRES COMMENTING

+!]
This is the player can't present if already stuck rule:
	if the player is immobile:
		if the number of dangerous monsters in the location of the player is the number of dangerous monsters penetrating a body part:
			if auto is 0, say "It's a bit late for that, don't you think?!";
			rule fails.
The player can't present if already stuck rule is listed in the global presentable rules.

[!<TheInvisibleHolesCannotBeFuckedRule>+

REQUIRES COMMENTING

+!]
This is the invisible holes cannot be fucked rule:
	if presenting-target is fake occupied:
		if auto is 0, say "You can't present something that can't be seen.";
		rule fails.
The invisible holes cannot be fucked rule is listed in the global presentable rules.

This is the gape gloves present rule:
	if gape-gloves is worn and gape-gloves is wrist-bound-behind and presenting-target is not asshole and the player is not able to speak:
		if auto is 0, say "Since your hands are glued to your butthole, there's only one thing that anyone will understand any provocative action you try to make. They'll think you want them to use your [asshole].";
		rule fails.
The gape gloves present rule is listed in the global presentable rules.

[!<CheckPresenting>+

REQUIRES COMMENTING

+!]
Check presenting:
	if the noun is hips, try presenting asshole instead;
	if the noun is not body part:
		if the number of intelligent interested monsters in the location of the player is 1:
			let M be a random intelligent interested monster in the location of the player;
			try offering the noun to M instead;
		otherwise if the number of intelligent interested monsters in the location of the player > 1:
			say "You're going to have to specify an NPC since there's more than one." instead;
		otherwise if there is a monster in the location of the player:
			say "Nobody is paying attention to you." instead;
		say "There's literally nobody here but you." instead;
	if the noun is not body part, say "You can only present an orifice on your body that can be fucked[if the largeness of breasts >= 5] or your breasts[end if]." instead;
	unless the noun is actually presentable, do nothing instead;
	let M be nothing;
	[Highest priority is anything unfriendly that will use that body part]
	if the noun is face:
		now M is a random threatening interested unfriendly willing to do oral monster in the location of the player;
		if M is nothing, now M is a random threatening interested unfriendly willing to urinate monster in the location of the player;
	if the noun is breasts, now M is a random threatening interested unfriendly willing to do titfucks monster in the location of the player;
	if the noun is vagina, now M is a random threatening interested unfriendly willing to do vaginal monster in the location of the player;
	if the noun is asshole, now M is a random threatening interested unfriendly willing to do anal monster in the location of the player;
	[High priority is anything unfriendly, especially if intelligent]
	if M is nothing, now M is a random threatening interested intelligent unfriendly monster in the location of the player;
	if M is nothing, now M is a random threatening interested unfriendly monster in the location of the player;
	[Medium priority is anything that will use that body part]
	if M is nothing:
		if the noun is face:
			now M is a random threatening interested willing to do oral monster in the location of the player;
			if M is nothing, now M is a random threatening interested willing to urinate monster in the location of the player;
		if the noun is breasts, now M is a random threatening interested willing to do titfucks monster in the location of the player;
		if the noun is vagina, now M is a random threatening interested willing to do vaginal monster in the location of the player;
		if the noun is asshole, now M is a random threatening interested willing to do anal monster in the location of the player;
	[Low priority is anything intelligent or raunchy (will bang)]
	if M is nothing, now M is a random threatening interested intelligent monster in the location of the player;
	if M is nothing, now M is a random threatening interested raunchy monster in the location of the player;
	[Lower priority is anything interested at all]
	if M is nothing, now M is a random threatening interested monster in the location of the player;
	[###Now we do that all the friendly ones again but without the interested clause###]
	[Medium priority is anything that will use that body part]
	if M is nothing:
		if the noun is face:
			now M is a random threatening willing to do oral monster in the location of the player;
			if M is nothing, now M is a random threatening willing to urinate monster in the location of the player;
		if the noun is breasts, now M is a random threatening willing to do titfucks monster in the location of the player;
		if the noun is vagina, now M is a random threatening willing to do vaginal monster in the location of the player;
		if the noun is asshole, now M is a random threatening willing to do anal monster in the location of the player;
	[Low priority is anything intelligent or raunchy (will bang)]
	if M is nothing, now M is a random threatening intelligent monster in the location of the player;
	if M is nothing, now M is a random threatening raunchy monster in the location of the player;
	[Lower priority is anything at all]
	if M is nothing, now M is a random monster in the location of the player;
	if M is monster:
		if M is caged, say "[BigNameDesc of M] wouldn't be able to do that from inside the cage!" instead;
		if M is not penetrating a body part, try direct-presenting the noun to M instead;
		otherwise say "But the [ShortDesc of M] is already inside you!" instead;
	say "ERROR: couldn't find a monster to present to." instead. [Should never happen.]

[!<CheckDirectPresentingTo>+

REQUIRES COMMENTING

+!]
Check direct-presenting something to:
	if tutorial is 1, say "You haven't been told to do that! Please follow the tutorial instructions." instead;
	if the noun is hips, try direct-presenting asshole to the second noun instead;
	if the second noun is summoning portal:
		try appeasing the noun with the second noun instead;
	if the noun is not body part:
		if the second noun is monster, try offering the noun to the second noun instead;
		say "You can only present an orifice on your body that can be fucked[if the largeness of breasts >= 5] or your breasts[end if]." instead;
	if the second noun is gloryhole:
		if the noun is face:
			if the player is prone, try entering gloryhole instead;
			say "You would need to be on your knees." instead;
		if the noun is penis or the noun is vagina:
			if the player is prone, try entering gloryhole instead;
			say "You would need to be standing up." instead;
		say "You can only present either your mouth or [genitals] to the hole." instead;
	if the second noun is not monster, say "You're going to present your [noun] to that how exactly?" instead;
	if the second noun is uninterested and (the boredom of the second noun is 0 or the second noun is unfriendly), say "You should probably get [his of the second noun] attention first. Maybe try [bold type]greet[roman type]ing [him of the second noun]." instead; [We are happy for the player to present to uninterested NPCs only if the NPC is friendly and not just about to notice the player]
	unless the noun is actually presentable, do nothing instead;
	if the player is upright and the second noun is unfriendly, say "You should kneel first." instead;

[!<CarryOutDirectPresentingSomethingTo>+

REQUIRES COMMENTING

+!]
Carry out direct-presenting something to:[TODO: make this less humiliating for a princess]
	if the player is upright, try kneeling;
	if the player is prone:
		allocate 4 seconds;
		now the second noun is interested;
		now the boredom of the second noun is 0;
		let Lorder be a list of clothing;
		let displacingFinished be 0;
		if the noun is face:
			let urine-request be 0;
			if watersports fetish is 1 and the second noun is willing to urinate and (the player is thirsty or the urine taste addiction of the player > 6 or the player is disgraced or debugmode > 0):
				say "Would you like to specifically ask [if the player is a pervert]to be pissed on[otherwise]for a golden shower[end if]? ";
				if the player is consenting, now urine-request is 1;
			if urine-request is 1:
				if the player is able to speak and auto is 0 and (the player is not broken or the second noun is friendly):
					if the second noun is a dangerous intelligent monster:
						say UnfriendlyPissRequest of the second noun;
					otherwise if the second noun is friendly intelligent monster:
						say FriendlyPissRequest of the second noun;
				say PissRequestFlav of the second noun;
				if the humiliation of the player < HUMILIATION-MODEST - 3500, say "[one of][first custom style]I can hardly believe what I'm doing! How degrading...[roman type][line break][or][stopping]";
				now presented-orifice is belly;
			otherwise:
				if the player is able to speak and auto is 0 and (the player is not broken or the second noun is friendly):
					if the second noun is a dangerous intelligent monster:
						say UnfriendlyOralRequest of the second noun;
					otherwise if the second noun is friendly intelligent monster:
						say FriendlyOralRequest of the second noun;
				say OralRequestFlav of the second noun;
				if the humiliation of the player < HUMILIATION-MODEST - 3500, say "[one of][first custom style]I can hardly believe what I'm doing! How degrading...[roman type][line break][or][stopping]";
				now presented-orifice is face;
			now the player-reaction of the player is submitting;
			humiliate (SEVERE-HUMILIATION - SLIGHT-HUMILIATION);
		otherwise if the noun is breasts:
			while displacingFinished is 0:
				let C be a random top level titfuck protection clothing;
				if C is clothing:
					if C is not-top-displacable:
						say "You remove your [ShortDesc of C].";
						now C is carried by the player;
					otherwise:
						say "You pull away your [ShortDesc of C].";
						TopDisplace C;
					add C to Lorder;
				otherwise:
					now displacingFinished is 1;
			if the player is not broken or the second noun is friendly:
				if the player is able to speak and auto is 0:
					if the second noun is a dangerous intelligent male monster:
						say UnfriendlyTitfuckRequest of the second noun;
					otherwise if the second noun is friendly intelligent male monster:
						say FriendlyTitfuckRequest of the second noun;
				say TitfuckRequestFlav of the second noun;
				say "[one of][line break][variable custom style]I'm advertising my tits as just another place on my body for men to fuck... [if the humiliation of the player < HUMILIATION-MODEST - 3500][line break][first custom style]How awfully shameful.[end if][roman type][line break][or][stopping]";
				now the player-reaction of the player is submitting;
				now presented-orifice is breasts;
				humiliate (SEVERE-HUMILIATION - SLIGHT-HUMILIATION);
		otherwise if the noun is vagina:
			while displacingFinished is 0:
				let C be a random top level protection clothing;
				if C is clothing:
					if C is zippable:
						say "You remove your [ShortDesc of C].";
						ZipDown C;
					otherwise if C is displacable:
						say "You pull away your [ShortDesc of C].";
						Displace C;
					otherwise:
						say "You remove your [ShortDesc of C].";
						now C is carried by the player;
					add C to Lorder;
				otherwise:
					now displacingFinished is 1;
			if the player is not broken or the second noun is friendly:
				if the player is able to speak and auto is 0:
					if the second noun is a dangerous intelligent monster:
						say UnfriendlyVaginalRequest of the second noun;
					otherwise if the second noun is friendly intelligent monster:
						say FriendlyVaginalRequest of the second noun;
				say VaginalRequestFlav of the second noun;
				if the humiliation of the player < 12500, say "[one of][line break][first custom style]Oh my god, how humiliating is this! What am I becoming...[roman type][line break][or][stopping]";
				now the player-reaction of the player is submitting;
				now presented-orifice is vagina;
				humiliate (SEVERE-HUMILIATION - MODERATE-HUMILIATION);
				if there is a worn tattoo and the player is modest and the vaginal sex addiction of the player < 4 and no-regrets tattoo is off-stage and a random number between 1 and 2 is 1:
					summon no-regrets tattoo;
					say "Your skin stings as a tattoo is suddenly seared into your torso! It says 'No Regrets'.";
		otherwise if the noun is asshole:
			while displacingFinished is 0:
				let C be a random top level ass protection clothing;
				if C is clothing:
					if C is zippable:
						say "You remove your [ShortDesc of C].";
						ZipDown C;
					otherwise if C is displacable:
						say "You pull away your [ShortDesc of C].";
						Displace C;
					otherwise:
						say "You remove your [ShortDesc of C].";
						now C is carried by the player;
					add C to Lorder;
				otherwise:
					now displacingFinished is 1;
			if the player is not broken or the second noun is friendly:
				if the player is able to speak and auto is 0:
					if the second noun is a dangerous intelligent monster:
						say UnfriendlyAnalRequest of the second noun;
					otherwise if the second noun is friendly intelligent monster:
						say FriendlyAnalRequest of the second noun;
				say AnalRequestFlav of the second noun;
				if the humiliation of the player < HUMILIATION-MODEST - 3500, say "[one of][line break][first custom style]Oh my god, how humiliating is this! What am I becoming...[roman type][line break][stopping]";
				now the player-reaction of the player is submitting;
				now presented-orifice is asshole;
				if there is a worn tattoo and player is proud and just the tip tattoo is not worn and just the tip tattoo is drawable and a random number between 1 and 3 is 1 and the second noun is unfriendly:
					summon just the tip tattoo;
					say "Your skin stings as a tattoo is suddenly seared into your butt cheek! It says 'Just the Tip'.";
				unless just the tip tattoo is worn, humiliate (SEVERE-HUMILIATION + MODERATE-HUMILIATION);
		if there is a worn demon codpiece, follow the demon junk punishment rule;
		if the second noun is friendly, check consensual submissive sex of the second noun;
		if the noun is fuckhole and the second noun is dark skinned male monster, progress quest of interracial-sex-quest;
		if the noun is asshole and the second noun is male monster, progress quest of asshole-presenting-quest;
		check immobility;
		if the player is not in danger and the player is not immobile:
			sort Lorder in reverse order;
			repeat with C running through Lorder:
				if C is carried and C is actually summonable:
					say "You put your [ShortDesc of C] back on.";
					summon C;
				if C is worn:
					if C is crotch-unzipped:
						say "You zip up your [ShortDesc of C].";
						ZipUp C;
					if C is crotch-displaced:
						say "You replace your [ShortDesc of C].";
						Replace C;
					if C is top-displaced:
						say "You tug your [ShortDesc of C] back into place.";
						TopReplace C.

Understand "present [something]", "offer [something]", "spread [something]", "suggest [something]", "display [something]", "put penis in [something]", "put cock in [something]", "put dick in [something]", "take penis in [something]", "take cock in [something]", "take dick in [something]" as presenting.

Understand "spread [something] for [something]", "suggest [something] to [something]" as direct-presenting it to.

[!<cockSucking:Action>*

REQUIRES COMMENTING

*!]
Cocksucking is an action applying to one thing.

[!<CheckCockSucking>+

REQUIRES COMMENTING

+!]
Check cocksucking:
	if the noun is monster, try direct-presenting face to the noun instead;
	otherwise try drinking the noun instead.

Understand "suck off [something]", "give [something] blowjob", "give [something] head", "offer [something] tongue", "offer [something] blowjob", "offer tongue to [something]", "offer blowjob to [something]", "offer mouth to [something]", "offer face to [something]", "present tongue to [something]", "present blowjob to [something]", "present mouth to [something]", "present tongue to [something]", "present face to [something]", "suggest tongue to [something]", "suggest blowjob to [something]", "suggest mouth to [something]", "suggest face to [something]", "bj [something]" as cocksucking.

[!<cockSomething:Action>*

Capture other ways the player might try to offer oral sex

*!]
Cocksomething is an action applying to nothing.
Understand "suck penis", "suck cock", "suck dick", "offer tongue", "present tongue", "offer blowjob", "suggest tongue", "suggest blowjob" as cocksomething.

[!<CheckCockSomething>+

Redirect command to the desired action

+!]
Check cocksomething:
	try presenting face instead.

[!<SayOralRequestFlavOfMonster>+

This makes sure there is flavour even if the player can't speak.

+!]
To say OralRequestFlav of (M - a monster):
	if the player is not able to speak or M is unintelligent or the humiliation of the player > HUMILIATION-DISGRACED or the player is feeling submissive, say "You open your mouth wide and stick out your tongue, [if there is a worn tongue piercing]showing off your slutty tongue piercing and [end if]trying to signal that [if the second noun is friendly and the delicateness of the player > 12]you are requesting permission to perform oral sex on [him of the second noun][otherwise if the second noun is a friendly male monster]you want to give [him of second noun] a blowjob[otherwise if the second noun is friendly]you want to pleasure [him of second noun] with your tongue[otherwise if the humiliation of the player < HUMILIATION-BROKEN]you'd rather use your mouth if possible[otherwise]you're ready to have your mouth used[end if].".

[!<SayUnfriendlyOralRequestOfMonster>+

The monster is demanding sex, and the player is suggesting a particular type.

+!]
To say UnfriendlyOralRequest of (M - a monster):
	if M is male:
		if the player is a nympho:
			say "[if the virgin of the player is 1 and the player is female][line break][variable custom style]'Please use my face-hole as your own personal fucksleeve for as long as you want. Just leave my pussy alone so I can keep my purity!'[otherwise if the analvirgin of the player is 1 and the player is male][variable custom style]'So I know you're tempted to be the one to take my anal cherry, but can you really say no to these lips? Come here big [boy of M], let [NameBimbo] show you a good time with [his of the player] tongue...'[otherwise if the player is feeling dominant and M is unintimidating][first custom style]'Come on then, why don't you [one of]fuck my face until I gag on your [manly-penis][or]force your [manly-penis] down my throat[in random order]? Surely you can make me your submissive bitch? Because if you don't, you can bet that I'll pay you back twice as bad later...'[otherwise if the anal sex addiction of the player < 4 and the vaginal sex addiction of the player < 4 and the oral sex addiction of the player < 4][variable custom style]'Please Sir, my whole body still needs to be trained, but I'd prefer if you start with my mouth.'[otherwise if the player is craving semen][line break][second custom style]'Mm, please let me drink your delicious cum, big [boy of M]! I'm totally addicted to [semen]~'[otherwise if the semen addiction of the player > 14 and the semen coating of face + the semen coating of breasts is 0][line break][second custom style]'Mm, please Sir, can you decorate my face and body with some fresh [semen]?'[otherwise if the oral sex addiction of the player < 6][line break][variable custom style]'If you want a suggestion, I think you should punish my slutty mouth with your enormous [manly-penis] until I'm addicted to it...'[otherwise][second custom style]'[one of]Looking for a throat to fuck[or]How would you like a blowjob[or]Care for me to swallow your load[or]Are you going to let me taste your [manly-penis][in random order], [stud]?'[end if][roman type][line break]";
		otherwise:
			say "[if the virgin of the player is 1 and the player is female][variable custom style]'Please don't take my virginity... I can give you a blowjob if you want...'[otherwise if the analvirgin of the player is 1 and the player is male][variable custom style]'Please don't take my anal virginity... I can give you a blowjob if you want...'[otherwise if the player is feeling dominant and M is unintimidating][first custom style]'I've decided your reward is going to be a blowjob. You don't want to make me even more mad by not allowing me this choice.'[otherwise if the anal sex addiction of the player < 4 and the vaginal sex addiction of the player < 4 and the oral sex addiction of the player < 4][first custom style]'Please don't do me down there... I'll pleasure you with my mouth if I must...'[otherwise if the player is craving semen][variable custom style]'Okay come on then, fuck my face already! Don't look at me like that, it's not like I'm addicted to cum or anything...'[otherwise if the semen addiction of the player > 14 and the semen coating of face is 0][variable custom style]'If you're looking for suggestions, maybe we should do oral? That way you can cum all over my face afterwards. Not that I'd enjoy that, or anything...'[otherwise if the oral sex addiction of the player < 6][variable custom style]'No, not down there, [one of]let me suck you off[or]use me up here[in random order] instead!'[otherwise][variable custom style]'Please, let me use my mouth. I've had lots of practice! N-not that I enjoy it, or anything...'[end if][roman type][line break]";
	otherwise if M is raunchy:
		if the player is a nympho:
			say "[if the player is feeling dominant and M is unintimidating][first custom style]'Come on then, why don't you try and dominate my face? And then next time when I'm on top, I'll show you how it's done properly...'[otherwise if the oral sex addiction of the player < 4][variable custom style]'My face needs way more abuse so it can grow to love being used. Maybe you could help train me?'[otherwise if the oral sex addiction of the player < 6][line break][variable custom style]'Okay, you win. Will you let me practice my oral skills on you?'[otherwise][second custom style]'[one of]Hey sugar, I've got a great idea of how to pass the time!'[or]Hey, I know what we should do, it'll be fun!'[or]Want to find out how skilled I am with my tongue?'[in random order][end if][roman type][line break]";
		otherwise:
			say "[if the player is feeling dominant and M is unintimidating][first custom style]'I'll allow you to experience my tongue, then, just this once. And then next time when I'm on top, I'll show you how it's done properly...'[otherwise if the oral sex addiction of the player < 4][first custom style]'I'm not going to enjoy it either way, but I'd rather pleasure you with my mouth, if I have to.'[otherwise if the oral sex addiction of the player < 6][variable custom style]'[one of]Okay, you win. How about I reward you with my mouth?'[or]I think it would be a good idea if I make you happy with my tongue, if you'd like that?'[stopping][otherwise][variable custom style]'[one of]I'm quite good with my mouth, if that's what you'd like.'[or]Please, let me use my mouth. I've had lots of practice! N-not that I enjoy it, or anything...'[in random order][end if][roman type][line break]";
	otherwise:
		say "[variable custom style]'[if the delicateness of the player < 10]If I had to choose, I guess I'd rather you do whatever you're going to do to my upper half.'[otherwise]Please punish my slutty face!'[end if][roman type][line break]".

[!<SayFriendlyOralRequestOfMonster>+

The player initiates oral sex with a friendly NPC.

+!]
To say FriendlyOralRequest of (M - a monster):
	if M is male:
		if the player is a nympho:
			if the player is craving semen:
				say "[second custom style]'[one of]Mm, please let me swallow your cum, big [boy of M]? I'm desperate for a taste...'[or]Hey big [boy of M]. Can you spare a load for me? I really need to wet my throat...'[or]Hey sexy. Why don't you let me have a taste of that creamy stuff you keep in your balls?'[or]Let me have a taste of your cum. I promise I'll work for it, big [boy of M]...'[in random order]";
			otherwise if the oral sex addiction of the player < 4:
				if the player is feeling dominant:
					say "[variable custom style]'[one of]A little birdie told me that once you're used to it, sucking [manly-penis] becomes really fun. You're going to help me find out.'[or]Stand still, I want to play a game. I'm going to put your [manly-penis] in my mouth and tease it until you're completely at my mercy. But don't you care cum without my permission.'[in random order]";
				otherwise:
					say "[variable custom style]'[one of]My innocent mouth is in need of training, Sir. Would you be willing to teach it a thing or two?'[or]I haven't had nearly enough experience giving blowjobs. I need to learn to love it. Think your [manly-penis] is up to the job?'[or]Listen, just because I hate sucking [manly-penis]s doesn't mean I should get a free pass. I need someone to fuck my face and MAKE me like it...'[in random order]";
			otherwise if the oral sex addiction of the player < 7:
				if the player is feeling dominant:
					say "[variable custom style]'[one of]You look like a good choice for my regularly scheduled blowjob practice.'[or]I'm going to suck that juicy [manly-penis] of yours, because I want to. And you'd better be very grateful afterwards.'[in random order]";
				otherwise:
					say "[variable custom style]'[one of]I... I don't usually ask people this, but please can I give you a blowjob? If you don't mind...'[or]Hey, can I give you a blowjob? Normally wouldn't ask this, but hey, you don't have to say yes.'[or]I think it would be a good idea if I sucked your [manly-penis], if that's okay with you?'[or]Do you want me to suck you off? Totally shooting in the dark here, please say no if you're not interested.'[or]Hey, are you interested in a blowjob? I mean, I'm offering, but I'm fine if you're not on board.'[in random order]";
			otherwise:
				say "[variable custom style]'[one of]Looking for a throat to fuck[or]How would you like a sloppy blowjob[or]Care for me to swallow your load[or]Are you going to let me taste your [manly-penis][in random order], [stud]?'";
		otherwise:
			if the oral sex addiction of the player < 4:
				if the player is feeling dominant:
					say "[variable custom style]'[one of]Stand still. I'm going to try sucking your [manly-penis], just to confirm that I hate it as much as I expect.'[or]Let's get this straight. I [if the player is female]normally wouldn't even touch a penis, let alone suck one. Luckily for you, I think I have no choice but to make an exception.'[otherwise]get blowjobs from chicks. I'd really like to get back to that. Just this once, I need you to let me suck you off.'[end if][in random order]";
				otherwise:
					say "[variable custom style]'[one of]I'm NOT going to enjoy it, but please let me [if the player is male]suck you off[otherwise]fellate you[end if].'[or]I'm willing to let you use my mouth, if you want. [if bukkake fetish is 1]But please don't cum on my face.'[otherwise]But I'm not going to pretend I enjoy sucking [manly-penis]. Got it?'[end if][or]Please Mister, I need you to let me... [if the player is male]suck your [manly-penis].[otherwise]fellate you.[end if] It's not about sex, I just need to do it to someone. Might as well be you, I guess.'[in random order]";
			otherwise if the player is craving semen:
				say "[variable custom style]'Would it be okay if I sucked your [manly-penis]? I'm not proud to admit that I'm desperate for a [one of]taste[or]drink[in random order]...'";
			otherwise if the oral sex addiction of the player < 7:
				if the player is feeling dominant:
					say "[variable custom style]'[one of]Stand still. I've got a weird craving for [manly-penis] I need to sate, so I'm going to use your body for my own enjoyment.'[or]It's your lucky day, I'm in the mood to taste some [manly-penis], and you're the closest [if M is human]person[otherwise]thing[end if] with one. And don't you dare insult me by refusing.'[in random order]";
				otherwise:
					say "[variable custom style]'[one of]I... I don't usually ask people this, but please can I give you a blowjob? If you don't mind...'[or]Hey, can I give you a blowjob? Normally I wouldn't ask this, but hey, you don't have to say yes.'[or]I think it would be a good idea if I sucked your [manly-penis], if that's okay with you?'[or]Do you want me to suck you off? Totally shooting in the dark here, please say no if you're not interested.'[or]Hey, are you interested in a blowjob? I mean, I'm offering, but I'm fine if you're not on board.'[in random order]";
			otherwise:
				if the player is feeling dominant:
					say "[variable custom style]'[one of]Oh yes... another delicious [manly-penis] for me to devour. Stay right there [stud-worm of M], and try to last more than a few seconds, if you can...'[or]You, [stud-worm of M]! Present me your [manly-penis] so that I can satisfy my addiction...'[in random order]";
				otherwise:
					say "[variable custom style]'Sir, would you please [one of]fuck my face[or]facefuck me silly[or]choke me with your [manly-penis] until you jizz into my stomach[in random order]? Don't judge me, it's not like [one of]my throat is desperate to be stuffed full of [manly-penis][or]I'm addicted to deepthroating [manly-penis]s[or]I get pleasure from gagging on massive [manly-penis]s[or]I have an oral fixation[in random order] or anything...'";
	otherwise:
		if the player is a nympho:
			if the oral sex addiction of the player < 4:
				if the player is feeling dominant:
					say "[variable custom style]'Hmm, I wonder what the cunt of a [stud-worm of M] like you tastes like. Spread your legs and let me find out.'";
				otherwise:
					say "[variable custom style]'[one of]I need someone to train my innocent little mouth to love the taste of pussy.'[or]I have a confession to make... I hate licking pussy. So I need you to be rough with me until I'm forced to change my mind.'[in random order]";
			otherwise if the oral sex addiction of the player < 7 and the player is not feeling dominant:
				say "[variable custom style]'[one of]I... I don't usually ask people this, but please can I lick you out? If you don't mind...'[or]Would you mind if I tasted your pussy?'[or]Don't you think it'd be really hot if you forced me to tongue-fuck you right about now?'[in random order]";
			otherwise:
				if the player is feeling dominant:
					say "[one of]Hey sugar, I've got a great idea of how to pass the time!'[or]Hey, I know what we should do, it'll be fun!'[in random order]";
				otherwise:
					say "[variable custom style]'[one of]MMmmm, please [stud of M], I'm desperate to taste your pussy and ass...'[or]Please can I have permission to worship your perfect cunt with my tongue, [stud of M]?'[in random order]";
		otherwise:
			if the oral sex addiction of the player < 4:
				if the player is feeling dominant:
					say "[variable custom style]'[one of]Stand still. I'm going to try a quick taste of your cunt, just to confirm that I hate it as much as I expect.'[or]You there, [stud-worm of M]! Bend and spread, it's time for your regularly scheduled cunt inspection.'[in random order]";
				otherwise:
					say "[variable custom style]'[one of]I've decided to perform... *ahem* cunnilingus on you. Don't ask why.'[or]I need to taste your pussy, so I'd appreciate it if you let me.'[or]As long as you're not too rough, I will let you grind on my face, just this once.'[in random order]";
			otherwise if the oral sex addiction of the player < 7:
				if the player is feeling dominant:
					say "[variable custom style]'[one of]I've got a weird craving for girlcum, and I'm going to use your cunt to get it.'[or]I feel like diving my tongue into that juicy pussy of yours. As long as you remember that I'm in charge, got it?'[in random order]";
				otherwise:
					say "[variable custom style]'[one of]I've got a weird request... would you mind if I licked your pussy?'[or]Hey [stud of M], I was hoping you'd let me show you a good time with my mouth?'[or]I think it would be a good idea if I make you happy with my tongue, if you'd like that?'[or]I... I don't usually ask people this, but please can I serve you with my mouth?'[in random order]";
			otherwise:
				if the player is feeling dominant:
					say "[variable custom style]'[one of]Oh yes... another delicious cunt for me to sample. Stay right there [stud-worm of M], and try to last more than a few seconds, if you can...'[or]You, [stud-worm of M]! My tongue is desperate for a taste of your cunt, so you better spread those big juicy pussy lips of yours, pronto.'[in random order]";
				otherwise:
					say "[variable custom style]'Hey let's have some fun. I'm really great at cunnilingus, you know. [one of]I mean, not that I'm a weird rugmuncher[or]I'm not saying I have an oral fixation[in random order] or anything...'";
	say "[roman type][line break]".

[!<SayPissRequestFlavOfMonster>+

This makes sure there is flavour even if the player can't speak.

+!]
To say PissRequestFlav of (M - a monster):
	if the player is not able to speak or M is unintelligent or the humiliation of the player > HUMILIATION-DISGRACED or the player is feeling submissive, say "You open your mouth wide and stick out your tongue, [if there is a worn tongue piercing]showing off your slutty tongue piercing and [end if]trying to signal that [if the second noun is friendly and the delicateness of the player > 12]you are requesting permission to drink [his of the second noun] [urine][otherwise if the second noun is friendly]you want to drink [his of M] [urine][otherwise if the humiliation of the player >= HUMILIATION-BROKEN]you're ready to become [his of M] [one of]human toilet[or]obedient urinal[at random][otherwise if highest body part sex addiction * 2 < the urine taste addiction of the player]you'd rather get pissed on rather than have sex[otherwise]you'd rather drink [his of M] piss right now[end if].".

[!<SayUnfriendlyPissRequestOfMonster>+

The monster is demanding sex, and the player is suggesting a particular type.

+!]
To say UnfriendlyPissRequest of (M - a monster):
	if the player is a nympho:
		say "[if the player is feeling dominant and M is unintimidating][first custom style]'What are you waiting for, [stud-worm of M]? Mark me as your property with your [urine]. But bear in mind that I'll be back, and next time you'll be the one on [his of M] knees...'[otherwise if the urine taste addiction of the player < 7][variable custom style]'I guess if you wanted to be as gross and cruel as possible, you'd piss on my face, wouldn't you?'[otherwise if the urine taste addiction of the player < 12][variable custom style]'Okay, you win. If you really want to mark me as the loser, I suggest you cover me in your hot, steamy [urine]...'[otherwise][second custom style]'[one of]I guess that makes me your personal urinal then, huh?'[or]Uh-oh, why do I get the feeling I'm about to be forced to serve as a human toilet? *giggle*'[or]This pathetic human urinal is ready for [his of the player] piss-bath, [stud of M]!'[in random order][end if][roman type][line break]";
	otherwise:
		say "[if the player is feeling dominant and M is unintimidating][first custom style]'I imagine you plan to degrade me with your [urine]... It would appear that I am powerless to stop you right now, just bear in mind that there will be consequences once I have recovered.'[otherwise if the urine taste addiction of the player < 7][first custom style]'I'll let you piss on me if you must. But I'm not going to pretend to enjoy it.'[otherwise if the urine taste addiction of the player < 12][variable custom style]'Okay, you win. Will you let me go if I drink your [urine]?'[otherwise][variable custom style]'Please, let me drink your [urine]. I'm very good at it by now. N-not that I've been drinking [urine] for so long that I like the taste, or anything...'[end if][roman type][line break]".

[!<SayFriendlyPissRequestOfMonster>+

The player initiates watersports with a friendly NPC.

+!]
To say FriendlyPissRequest of (M - a monster):
	if the player is a nympho:
		if the urine taste addiction of the player < 7:
			if the player is feeling dominant:
				say "[variable custom style]'Hmm, I wonder what the [urine] of a [stud-worm of M] like you tastes like. Come here and let me find out.'";
			otherwise:
				say "[variable custom style]'[one of]I need someone to train my tongue to love the taste of [urine].'[or]I have a confession to make... I hate the taste of [urine]. So I need to keep drinking it until I get used to the taste.'[in random order]";
		otherwise if the urine taste addiction of the player < 13 and the player is not feeling dominant:
			say "[variable custom style]'[one of]I... I don't usually ask people this, but please can I drink your [urine]? If you don't mind...'[or]Would you mind if I tasted your [urine]?'[or]Don't you think it'd be really hot if you forced me to drink your [urine] right about now?'[in random order]";
		otherwise:
			if the player is feeling dominant:
				say "[one of]Hey sugar, I'm thirsty!'[or]Hey, I know how I can get a tasty drink!'[in random order]";
			otherwise:
				say "[variable custom style]'[one of]MMmmm, please [stud of M], I'm desperate to taste your delicious [urine]...'[or]Please would you do me the great honour of pissing on my face, [stud of M]?'[in random order]";
	otherwise:
		if the urine taste addiction of the player < 7:
			if the player is feeling dominant:
				say "[variable custom style]'Stand still. I'm going to try a quick taste of your [urine], just to confirm that I hate it as much as I expect.'";
			otherwise:
				say "[variable custom style]'[one of]I've decided to um... let you pee on me. Please don't ask why...'[or]I need to taste your [urine], so I'd appreciate it if you let me.'[in random order]";
		otherwise if the urine taste addiction of the player < 13:
			if the player is feeling dominant:
				say "[variable custom style]'[one of]I've got a weird craving for [urine], and I'm going to use your [if M is male][manly-penis][otherwise]cunt[end if] to get it.'[or]I feel like finding out what your [urine] tastes like. As long as you remember that I'm in charge, got it?'[in random order]";
			otherwise:
				say "[variable custom style]'[one of]I've got a weird request... would you mind if I tasted your [urine]?'[or]Hey [stud of M], I was hoping you'd let me sample your [urine]?'[in random order]";
		otherwise:
			if the player is feeling dominant:
				say "[variable custom style]'[one of]Oh yes... you look like you've got some delicious [urine] for me to sample. Stay right there [stud-worm of M], and try to make sure it all goes in my mouth.'[or]You, [stud-worm of M]! My tongue is desperate for a taste of your [urine], so you better get over here and serve me a fresh sample, pronto.'[in random order]";
			otherwise:
				say "[variable custom style]'Hey, do you need to pee? I'm really great at drinking it, you know. [one of]I mean, not that I'm a some kind of human toilet[or]But I don't have a [urine] addiction[in random order] or anything...'";
	say "[roman type][line break]".

[!<SayUnfriendlyTitfuckRequestOfMonster>+

The monster is demanding sex, and the player is suggesting a particular type.

+!]
To say UnfriendlyTitfuckRequest of (M - a monster):
	if the player is a nympho:
		say "[if the virgin of the player is 1 and the player is female][variable custom style]'Please use my face-hole as your own personal fucksleeve for as long as you want. Just leave my pussy alone so I can keep my purity!'[otherwise if the analvirgin of the player is 1 and the player is male][variable custom style]'So I know you're tempted to be the one to take my anal cherry, but can you really say no to these lips? Come here big [boy of M], let [NameBimbo] show you a good time with [his of the player] tongue...'[otherwise if the player is feeling dominant and M is unintimidating][variable custom style]'Come on then, why don't you punish these lewd tits of mine? If [one of]you think you've got the balls[or]you think you're up to the challenge[or]you think you can handle them[in random order]...'[otherwise if the titfuck addiction of the player < 3][line break][variable custom style]'[one of]Don't you think it would be really outrageous and perverse if you used my disgusting tits as your own personal masturbatory aid? Maybe if you did it often enough, they'd even grow to enjoy it.'[or]I wonder, if studs like you were to start using my tits for sex, whether I'd learn to be able to cum from it like my lower holes?'[in random order][otherwise if the semen addiction of the player > 14 and the semen coating of breasts is 0][line break][second custom style]'Mm, please Sir, if you use my specially crafted titties as your own personal fuckpillows, then you can decorate them with some fresh [semen] when you're done!'[otherwise if the titfuck addiction of the player < 6][line break][variable custom style]'[one of]How would you like a titwank?'[or]You know, you could choose to fuck my tits if you wanted.'[or]Have you considered using my soft warm tits for your pleasure?'[in random order][otherwise][second custom style]'[one of]Looking for a nice pair of funbags to fuck[or]Are you going to let me feel your warm [manly-penis] between my nice big cans[or]Have you tried fucking this perverted slut's massive fuckpillows yet[in random order], [stud]?'[end if][roman type][line break]";
	otherwise:
		say "[if the virgin of the player is 1 and the player is female][first custom style]'Please don't take my virginity... you can fuck my tits if you want...'[otherwise if the analvirgin of the player is 1 and the player is male][first custom style]'Please don't take my anal virginity! But you can fuck my new funbags if you want...'[otherwise if the player is feeling dominant and M is unintimidating][variable custom style]'If [one of]you think you've got the balls[or]you're brave enough[in random order], you could even try and get a titwank from me. But I warn you, I will get my revenge.'[otherwise if the titfuck addiction of the player < 3][first custom style]'Please don't do me down there... I'll pleasure you with my breasts if I must...'[otherwise if the semen addiction of the player > 14 and the semen coating of breasts is 0][variable custom style]'If you thrust your [manly-penis] inside my cleavage, then you can cum all over me afterwards. Which I, err, definitely don't want you to do...'[otherwise if the titfuck addiction of the player < 6 and the anal sex addiction of the player < 4 and the vaginal sex addiction of the player < 4][variable custom style]'No, not down there, I'd rather you [one of]let me wank you off with my tits[or]use me up here[in random order] instead!'[otherwise][variable custom style]'Please [one of]let[or]allow[or]permit[at random] me to use my [one of]big juicy tits[or]perfect jugs[or]soft breast flesh[at random] to [one of]please you[or]service your [manly-penis][or]serve as my punishment[in random order]. N-not that I get pleasure from it, or anything, [one of]only a weirdo pervert could cum from jacking a guy off with [his of the player] tits[or]I'm not some kind of twisted pervert whose fuckbags have turned into an erogenous zone[cycling]...'[end if][roman type][line break]".

[!<SayFriendlyTitfuckRequestOfMonster>+

The player initiates paizuri with a friendly NPC.

+!]
To say FriendlyTitfuckRequest of (M - a monster):
	if the player is a nympho:
		if the titfuck addiction of the player < 4:
			if the player is feeling dominant:
				say "[variable custom style]'[one of]Let's play a game, [stud-worm of M]. I play with your [manly-penis] with my tits, and you try to hold off cumming for as long as you can manage.'[or]That's a cute [manly-penis] you've got there, [stud-worm of M]. Let's see how long it can survive a session with these melons.'[in random order]";
			otherwise:
				say "[variable custom style]'[one of]Since I have a whore chest, I might as well use it. I'm going to give you a tit fuck, to see if I can grow to like it.'[or]I haven't had any pleasant experiences with titfucks yet, but in theory I should love them. So I'm hoping you can help me out...'[or]I reckon if enough hunky men use my massive funbags for their own pleasure, I'll grow to like it. Want to help with my experiment?'[in random order]";
		otherwise if the titfuck addiction of the player < 7:
			if the player is feeling dominant:
				say "[variable custom style]'[one of]You look like the kind of guy who doesn't even know their way around a pair of tits. Care to try to prove me wrong?'[or]Alright, I'm going to test your [manly-penis][']s endurance with my juicy knockers. I'm betting you won't last ten seconds.'[in random order]";
			otherwise:
				say "[variable custom style]'[one of]Since I have a whore chest, you might as well use it.'[or]Please Mister, would you like to use my fuckbags?'[or]My giant fuckpillows are yours to use as you please, [stud].'[in random order]";
		otherwise:
			say "[variable custom style]'[one of]You're looking at the most fuckable funbags in all the lands. Would you like to give them a spin[or]I can see you eyeing up my fuckbags. Why not quit gawking and take them for a ride[or]How do you fancy experiencing the best titfuck of your life[or]Are you in the mood for getting taken to a world of pleasure in between these big lewd cockpillows[in random order], [stud]?'";
	otherwise:
		if the titfuck addiction of the player < 4:
			if the player is feeling dominant:
				say "[first custom style]'[one of]I'm going to play with your [manly-penis] with my tits now. Don't you dare ask questions.'[or]Maybe it's time to see if a [stud-worm of M] like you can handle the feel of these...'[in random order]";
			otherwise:
				say "[first custom style]'[one of]I'm going to let you fuck my tits now. Just don't ask why.'[or]Listen. I need to give you a boobjob. Ugh, that sounded even grosser coming out.'[or]I'm willing to give you a boobjob. Just don't expect me to like it.'[in random order]";
		otherwise if the titfuck addiction of the player < 7:
			if the player is feeling dominant:
				say "[first custom style]'[one of]You know, we could have some fun with these firm, youthful breasts of mine, but maybe you should convince me that you deserve it.'[or]Stand still right there [stud-worm of M], [if M is sadist]Mistress[otherwise]Mama[end if] is going to have a bit of fun.'[in random order]";
			otherwise:
				say "[variable custom style]'[one of]Put your [manly-penis] here and I'll make you feel good.'[or][if the player is male]Want me to titfuck you? I have these boobs now, so I might as well use them. Think of it as a favour between bros.'[otherwise]Would you like me to use my boobs on your [manly-penis]? That's the arousing way to put it, right?'[end if][or]You know, my breasts are pretty soft. I can let you test them out if you want.'[in random order]";
		otherwise:
			if the player is feeling dominant:
				say "[variable custom style]'[one of]Oh yes... another delicious [manly-penis] for me to feel between my tits. Stay right there [stud-worm of M], and you don't have permission to cum before me...'[or]Hey [stud-worm of M], you've been chosen for a great honour, I'm going to use your [manly-penis] to get my tits off. Now get your [manly-penis] out and don't forget to thank me profusely...'[in random order]";
			otherwise:
				say "[variable custom style]'[one of]Looking for a nice pair of funbags to fuck[or][if bukkake fetish is 1]Want to make a mess on my tits[otherwise]Want your dick to take a nap in my tits[end if][or]How would you like a titwank[or]Are you going to let me feel your warm [manly-penis] between my nice big cans[in random order], [stud]?'";
	say "[roman type][line break]".

[!<SayTitfuckRequestFlavOfMonster>+

This makes sure there is flavour even if the player can't speak.

+!]
To say TitfuckRequestFlav of (M - a monster):
	if the player is not able to speak or M is unintelligent or the humiliation of the player > HUMILIATION-DISGRACED or the player is feeling submissive, say "You thrust your [BreastDesc] out, [if there is a worn nipple piercing]showing off your slutty nipple piercings and [end if]trying to signal that [if the second noun is a friendly monster]you'd really enjoy giving [him of second noun] a titfuck right about now[otherwise if the humiliation of the player < HUMILIATION-BROKEN]you'd rather have your breasts used for sex[otherwise]you're ready to have your breasts used[end if].".

[!<SayUnfriendlyVaginalRequestOfMonster>+

The monster is demanding sex, and the player is suggesting a particular type.

+!]
To say UnfriendlyVaginalRequest of (M - a monster):
	if the virgin of the player is 1 and M is virginity taking:
		say TakeMyVirginity of M;
	otherwise if M is male:
		if the player is a nympho:
			say "[if the player is feeling dominant and M is unintimidating]'[one of]Do you think you're man enough to claim my perfect cunt[or]If you're really not scared of me, you'll try your luck with my perfect pussy[or]My glorious cunt is yours, then, if you dare[in random order]? Or are you going to [one of]chicken out like a little bitch[or]*heh*, pussy out[or]wuss out because you're scared of what I'll do to you later if you try[at random]?'[otherwise if the soreness of asshole > 6 and the soreness of asshole > the soreness of vagina][variable custom style]'Please don't fuck my [asshole], it's too sore, my mind will break! I can serve you with my warm, inviting [vagina] instead!'[otherwise if the vaginal sex addiction of the player < 3][variable custom style]'[one of]Don't you think it's unacceptable that my cunt hasn't learned to crave [manly-penis] yet? I bet you could help fix that.'[or]Are you going to train my innocent little pussy to become addicted to [manly-penis]?'[or]Did you know that my shameful [vagina] has barely been broken in? Don't you think that needs addressing?'[in random order][otherwise if the semen addiction of the player > 14 and the semen volume of vagina is 0][second custom style]'[one of]Please Sir, I need more cum inside me! Maybe this hole is best?'[or]If you promise to creampie me, I'll give you the ride of your life!'[or]Yesss... I need to get that feeling of my [vagina] being filled to the brim with cum again!'[in random order][otherwise if the vaginal sex addiction of the player < 6][second custom style]'[one of]My lewd cunt is slowly becoming addicted to [manly-penis]... a cruel man would make sure that continues...'[or]To the victor, the spoils! *giggle*'[or]Mmm, I reckon you could pretty much claim ownership of me if you did me in here.'[in random order][otherwise][second custom style]'[one of]Oh trust me this is what I wanted all along[or]My [manly-penis]-addicted pussy is yours for the plundering[or]You should definitely try my built-in [manly-penis] polisher[or]How would you like to fuck a [manly-penis] hungry slut like me right in the [vagina][or]This well-behaved cuntwarmer has been keeping [his of the player] cumdumpster nice and wet for you[in random order], [stud]...'[end if]";
		otherwise:
			say "[if the player is feeling dominant and M is unintimidating]'[one of]Go on then, if you think you can handle me[or]If you actually do this, you WILL face my wrath later[or]Don't expect me to take this lying down, I will get my revenge[or]Very well, you have permission to fuck my pussy, this one time. Don't you DARE touch me anywhere else[or]To think that a [worm of M] like you is the one to get this rare privilege[in random order].'[otherwise if the soreness of asshole > 6 and the soreness of asshole > the soreness of vagina][line break][variable custom style]'Please don't fuck my [asshole], it's too sore, [one of]it can't take any more[or]I won't survive[purely at random]! [one of]Do me in the[or]Fuck me in the[or]Use my[cycling] [vagina] instead!'[otherwise if the vaginal sex addiction of the player < 3][variable custom style]'[one of]Go on then, use my [vagina] if you must fuck me!'[or]If you have to fuck me, I'd rather it was in my [vagina]...'[in random order][otherwise if the semen addiction of the player > 14 and the semen volume of vagina is 0][line break][variable custom style]'[one of]Fine, if this has to happen, at least reward me with a fresh juicy creampie?'[or]If you promise to creampie me, I'll let you use me down here.'[in random order][otherwise if the vaginal sex addiction of the player < 6][line break][variable custom style]'[one of]OK fine, let's do it then. The normal way.'[or]I guess we can have sex, just don't make it too weird.'[or]I guess this is what you really want, right? A quickie with your newest victim?'[in random order][otherwise][second custom style]'[one of]Come on then, fuck my [vagina] already[or]I assume you're going to want to try out my slutty [vagina][or]I guess it's not too weird that my [vagina] is begging for it, right? Go for it[or]My well-trained [vagina] is at your service[in random order], [stud]!'[end if]";
	otherwise if M is raunchy:
		if the player is a nympho:
			say "[if the player is feeling dominant and M is unintimidating][first custom style]'Why don't you try and [one of]discipline[or]tame[at random] my [vagina]? Or are you scared of what I might do to you later?'[otherwise if the vaginal sex addiction of the player < 4][first custom style]'My [vagina] needs way more stretching so that it can eventually fit even the biggest of fists. What do you think?'[otherwise if the vaginal sex addiction of the player < 6][line break][variable custom style]'[one of]I'm sure you can come up with lots of inventive ways to punish this slutty [vagina]...'[or]Let my [vagina] take it from here, we'll have a fun time I'm sure!'[in random order][otherwise][second custom style]'[one of]I bet you want me to bend and spread, huh? What are you going to do to this poor nympho's lewd and greedy [vagina]?'[or]Ooh, are you going to torture and tease my disgracefully greedy [vagina]? Be as rough as you want!'[in random order][end if]";
		otherwise:
			say "[if the player is feeling dominant and M is unintimidating][first custom style]'I'll allow you to play with my [vagina], then, just this once. And then next time when I'm on top, I'll show you how it's done properly...'[otherwise if the vaginal sex addiction of the player < 4][first custom style]'[one of]I'm not going to enjoy it either way, but I'd rather do something with my [vagina], if I have to.'[or]Go on then, use my [vagina] if you must!'[in random order][otherwise if the vaginal sex addiction of the player < 6][variable custom style]'Okay, let's do it then. I'm ready for a good shag anyway.'[otherwise][variable custom style]'[one of]Are you going to let my [vagina] have some fun now?'[or]Maybe you should tease my soaking wet [vagina]. N-not that I enjoy it, or anything...'[in random order][end if]";
	otherwise:
		say "[variable custom style]'[if the delicateness of the player < 10]I don't know what you're planning to do to me, but if it's going to be sexual then you might as well do it to my sex.'[otherwise]Please punish my slutty [vagina]!'[end if]";
	say "[roman type][line break]".

[!<SayFriendlyVaginalRequestOfMonster>+

The player initiates vaginal with a friendly NPC.

+!]
To say FriendlyVaginalRequest of (M - a monster):
	if the virgin of the player is 1 and M is virginity taking:
		say "[TakeMyVirginity of M]";
	otherwise if M is male:
		let preg-please be 0;
		let preg-nope be 0;
		if the pregnancy of the player is 0 and pregnancy fetish is 1 and M is father material:
			if the player is afraid of a creampie, now preg-nope is 1;
			if the player is eager for a creampie, now preg-please is 1;
		if the player is a nympho:
			if the vaginal sex addiction of the player < 6:
				if the player is feeling dominant:
					if preg-please is 1, say "[variable custom style]'I hope you're in the mood to be my bull, because I want a baby inside me. And I always get what I want...'";
					otherwise say "[variable custom style]'[one of]You look like you'll make a reasonably obedient sex toy. Come and try and show me why everyone loves vaginal sex so much[or]Come here, [stud-worm of M]. Service my pussy with your [manly-penis], as best as you can[stopping][if preg-nope is 1]. But don't you fucking dare knock me up or I'll KILL you. I don't want to be waddling around with some random [stud-worm of M][']s baby in my belly[end if].'";
				otherwise:
					if preg-please is 1, say "[variable custom style]'[one of]Please Sir, I'm desperate to be knocked up by a hot stud...'[or]If we fucked, there's a good chance I'd get pregnant with your baby. Does that turn you on?'[or]I'm desperate to get knocked up, and I guess there's only one reliable way to do that, isn't there? Care to help me out?'[in random order]";
					otherwise say "[variable custom style]'[one of]My cunt needs training, [stud], and you look like the type of guy who knows just how to do that[or]My pussy hasn't learned to love the D yet. I think it needs punishing[or]I might be a perv but my [vagina] is still really innocent. I'd like you to help change that[in random order][if preg-nope is 1]. But be careful, I don't want to get knocked up and have to carry your baby around this crazy place[otherwise if the player is eager for a creampie]. You should fill it to the brim with your [semen] so that I'm reminded of your [manly-penis] for hours[end if]!'";
			otherwise:
				if the player is feeling dominant:
					say "[variable custom style]'[one of]Stay right there and let me ride your [manly-penis] until I cum all over it, [stud-worm of M][or]I'm to use your [manly-penis] as my own personal fuckstick; my [vagina] is aching for it[stopping][if preg-nope is 1]. But YOU are not allowed to cum, I don't want to get knocked up by some random [stud-worm of M][otherwise if the player is afraid of a creampie]. But YOU are not allowed to cum, I don't want any gross [semen] inside me[otherwise if preg-please is 1]. And make sure you jizz nice and deep inside of me, if your swimmers prove themselves strong enough I'm hoping to get a brand new bun in my oven[otherwise if the player is eager for a creampie]. And make sure you jizz a nice warm thick load inside of me[end if].'";
				otherwise:
					if preg-please is 1, say "[second custom style]'[one of]Please Sir, my greedy cunt is desperate for your [manly-penis]. [or]Mister, my slutty pussy is gagging for a good rough fucking! [or]I can't wait another minute... won't you please fuck me silly? [in random order][if slow pregnancy < 2 and the number of family things > 1]Don't worry, I've had so many [manly-penis]s cum inside me already that I'll have no idea who the daddy is even if I do get pregnant!'[otherwise][one of]You can even cum inside if you want, I love getting knocked up by a hot stud.'[or]Don't worry about protection, I'd love it if you become my new baby daddy!'[in random order][end if]";
					otherwise say "[second custom style]'[one of]My cunt needs drilling, [stud], and you look like the type of guy who knows just how to do that[or]My slutty pussy is desperate for your [manly-penis] [stud]. Please give it to me rough, don't hold back[in random order][if preg-nope is 1]... But maybe you should pull out before you cum, unless you want to become my baby daddy[otherwise if the player is afraid of a creampie]... But please I'd prefer you don't paint my inside with your gross [semen][otherwise if the player is eager for a creampie], and make sure you paint my thirsty insides with your thick, sticky [semen] so that it's leaking down my thighs for hours[end if]!'";
		otherwise:
			if the vaginal sex addiction of the player < 6:
				if the player is feeling dominant:
					if preg-please is 1, say "[first custom style]'Listen up, [stud-worm of M]. I don't want you, but I do want a kid. So you are going to go nice and slow, and then after you've knocked me up we'll never talk or even THINK about this again. Deal?'";
					otherwise say "[first custom style]'[one of]I've been rather unimpressed with my sex experiences so far. I reckon if I'll enjoy it more if I'm on top, and you're going to help[or]Let's play a little game. I'll give you the rare honour of sampling my divine pussy, and if you somehow can make me enjoy it then I won't kill you afterwards[stopping][if preg-nope is 1]. And don't you dare cum inside, because if you get me pregnant I'll make you WISH you were dead[otherwise if the player is afraid of a creampie]. And don't you dare cum inside, because if you make me feel all gross and sticky I'll make you wish you were dead[otherwise if the player is eager for a creampie]. Also make sure you cum inside so that I can walk around feeling nice and full afterwards[end if].'";
				otherwise:
					if preg-please is 1, say "[variable custom style]'Look I'm not some kind of weird nympho, but I can't help but keep thinking that it'd be hot if you wanted to try and impregnate me. Just promise to look after the baby for me when it arrives.'";
					otherwise say "[variable custom style]'[one of]Would you like to try sex? I-I'd be okay with it as long as you didn't go too hard[or]Do you think I'm pretty? We could, you know, do it... if you'd like that[in random order][if preg-nope is 1], and of course you made sure not to cum inside me and get me pregnant[otherwise if the player is afraid of a creampie], and of course you made sure not to cum inside me[otherwise if the player is eager for a creampie], and if you want to, you can even release it deep inside of me[end if].'";
			otherwise:
				if the player is feeling dominant:
					say "[variable custom style]'[one of]Okay let's bang. But I'm in charge, and no WEIRD stuff[or]Ugh, I wish I had better self control, but the truth is my [vagina] is aching to be filled. So I'm going to use you[in random order][if the player is afraid of a creampie]. But you are NOT allowed to cum inside, got it?'[otherwise if preg-please is 1]. And here's hoping that I get pregnant, so you have to look after our love-child, haha.'[otherwise if the player is eager for a creampie]. Just normal sex, with me in charge, and a nice warm creampie at the end.'[end if]";
				otherwise:
					say "[second custom style]'[one of]I wonder if you're thinking about screwing my [vagina][or]You look like you want to bang, [stud][or]It seems like you're rather interested in my [vagina], [stud][or]You seem like you could use a fuck[in random order][if the player is afraid of a creampie]? O-OK, you can get down here and fuck away! But maybe pull out before you cum, okay[otherwise if preg-please is 1]? Okay you can do it, and please make sure to cum nice and deep if you want to make me pregnant, okay[otherwise if the player is eager for a creampie]? That's understandable, I don't mind too much. And if you want to, you can cum nice and deep inside me, okay[end if]?'";
	otherwise:
		if the player is a nympho:
			if the vaginal sex addiction of the player < 4:
				if the player is feeling dominant:
					say "[variable custom style]'Okay then, [stud-worm of M]. I need someone to service and worship my [vagina]. So you'd better get to it.'";
				otherwise:
					say "[variable custom style]'I need someone to train my innocent little pussy to love being played with...'";
			otherwise:
				if the player is feeling dominant:
					say "[one of]Hey sugar, I've got a great idea of how to pass the time!'[or]Hey, I know what we should do, it'll be fun!'[in random order]";
				otherwise:
					say "[variable custom style]'[one of]MMmmm, please [stud of M], I'm desperate for someone to abuse my [vagina]...'[or]Please, treat my disgusting, greedy vagina as cruelly as it deserves!'[in random order]";
		otherwise:
			if the vaginal sex addiction of the player < 4:
				if the player is feeling dominant:
					say "[variable custom style]'You, [stud-worm of M]. Worship my [vagina]. That is an order.'";
				otherwise:
					say "[variable custom style]'I'm interested to see what you can do to my [vagina]. Just this once.'";
			otherwise if the vaginal sex addiction of the player < 7:
				if the player is feeling dominant:
					say "[variable custom style]'I've got a weird throbbing in my clit, and I reckon you're the one I'm going to use to appease it.'";
				otherwise:
					say "[variable custom style]'[one of]I've got a weird throbbing in my [vagina] and I think you're the person who can appease it...'[or]Please would you help me cum? My [vagina] is feeling rather needy...'[or]You know, I have a good idea of how we could pass some time... if you get what I mean?'[or]I'm bored. Wanna bang?'[or]Hey I've got a [vagina] here that I'm not really using. Any idea what I could do with it?'[in random order]";
			otherwise:
				if the player is feeling dominant:
					say "[variable custom style]'Ooh, I know just the role for you. My [vagina] is craving to be worshipped by you, [stud-worm of M].'";
				otherwise:
					say "[variable custom style]'Hey let's have some fun. You can do whatever you want to my [vagina]. I mean, [if M is female]not that I'm a lesbian or anything, but a hand is a hand, right?'[otherwise]I assume that's what you want. Obviously it's not because my [vagina] is crying out to be used or anything weird like that...'[end if]";
	say "[roman type][line break]".

[!<SayVaginalRequestFlavOfMonster>+

This makes sure there is flavour even if the player can't speak.

+!]
To say VaginalRequestFlav of (M - a monster):
	if the player is not able to speak or M is unintelligent or the humiliation of the player > HUMILIATION-DISGRACED or the player is feeling submissive, say "You spread your ass cheeks and pussy lips wide and wiggle your hips, trying to signal that [if the second noun is a friendly male monster]you'd really enjoy getting fucked right now[otherwise if the second noun is friendly]you'd love to have your [vagina] played with right now[otherwise if the humiliation of the player < HUMILIATION-BROKEN and the delicateness of the player < 10]you'd rather get fucked in the [vagina][otherwise]you're ready to have your [vagina] used[end if].".

[!<SayTakeMyVirginityOfMonster>+

Uttered when the player asks to have their vaginal virginity taken

+!]
To say TakeMyVirginity of (M - a monster):
	if M is unfriendly:
		if the anal sex addiction of the player < 3:
			say "[first custom style]'Please, whatever you do, just don't stick it in my butt. I'd even prefer you took my virginity...'";
		otherwise if the vaginal sex addiction of the player < 4:
			say "[variable custom style]'Go ahead, deflower me. It was only a matter of time anyway.'";
		otherwise:
			say "[second custom style]'I've been waiting a long time for the right [if M is human]man[otherwise]monster[end if] who's worthy of this [vagina]... alright, go ahead, take my virginity - break me in!'";
	otherwise:
		if the player is not a pervert:
			say "[first custom style]'If I'm to have my first time be in this game, I want it to at least be on my terms. Please, would you do me the honour?'";
		otherwise if the vaginal sex addiction of the player < 3:
			say "[variable custom style]'I think it's about time I tried 'real' sex, don't you think? How do you fancy being the one to take my V-card?'";
		otherwise:
			say "[second custom style]'Hey handsome, I've been looking for the right fella to take my cherry. And guess what, it's your lucky day!'".

[!<SayUnfriendlyAnalRequestOfMonster>+

The monster is demanding sex, and the player is suggesting a particular type.

+!]
To say UnfriendlyAnalRequest of (M - a monster):
	if M is virginity taking and the virgin of the player is 1 and the player is female:
		say "[variable custom style]'Please don't take my virginity, [if the anal sex addiction of the player < 3]put it in my [asshole] instead if you must!'[otherwise if the player is a nympho]abuse my slutty [asshole] instead!'[otherwise if the openness of asshole < 3]my [asshole] is much tighter anyway!'[otherwise]wouldn't you much rather fuck my [asshole] instead?'[end if]";
	otherwise if M is virginity taking and the analvirgin of the player is 1:
		say TakeMyAnalVirginity of M;
	otherwise if M is male:
		if the player is a nympho:
			if the player is feeling dominant and M is unintimidating, say "[variable custom style]'[one of]Do you think you're big enough to make me squeal if you shove it up my [asshole][or]Have you got the energy left to properly ruin my [asshole][or]I guess you get to fuck my sacred [asshole], then, if you dare[in random order]? Because if you try but [one of]don't make me submit[or]can't make me submit[or]aren't man enough to force me to submit[at random], you can be sure that next time I meet you I'm going to torture you until you plead for forgiveness.'";
			otherwise say "[if the soreness of vagina > 6 and the soreness of vagina > the soreness of asshole][variable custom style]'It would be much too cruel for you to fuck my [vagina] right now, it's too sore, my mind will break! Please let me service your glorious [manly-penis] with my slutty [asshole] instead!'[otherwise if the anal sex addiction of the player < 3][variable custom style]'[one of]Finally, someone bests me. I guess this is the bit where you train my poor innocent [asshole] to learn what it's like to get ruined by a giant [manly-penis], huh?'[or]Uh-oh, I think the big scary [manly-penis] might be about to destroy my sweet, inexperienced [asshole]!'[or]I think it's important that you know, my [asshole] has seen very little action so far. So I still really don't like getting fucked up the [asshole]. Does that give you any evil ideas?'[or]Are you going to pound my weak sensitive [asshole] over and over until I can't walk?'[in random order][otherwise if the semen addiction of the player > 14 and the semen volume of belly is 0][second custom style]'[one of]Please Sir, I need more cum inside me! Maybe this naughty little [asshole] would appeal to your tastes?'[or]If you give me a fat, thick anal creampie, I promise to hold it in for as long as I can!'[or]Here's a fun idea... cream your entire load up my [asshole] and mark my body as yours on the inside!'[in random order][otherwise if the anal sex addiction of the player < 6][second custom style]'[one of]My disgusting [asshole] is slowly growing to enjoy getting crammed full of [manly-penis]... I wonder if you can help make sure it doesn't forget how enjoyable it is?'[or]I guess you want to punish me, hmm? Well, my [asshole] could use a fresh reaming...'[or]My body is yours to use, please make your [manly-penis] feel at home. I'd recommend trying out my [asshole], it's gotten very good reviews from previous visitors.'[or]Open up my ass and mess up the insides!'[in random order][otherwise][second custom style]'[one of]Yes, yes, about time! Quickly, shove your thick [manly-penis] inside my [asshole], I can't wait another moment!'[or]Ooh I like it when you take control, [stud]. I think you deserve to treat yourself to a marathon session in my infamous [asshole]...'[or]Of course, a good little fuckdoll like me will obediently serve you with whichever body part you desire, but I just want to let you know that my [asshole] is particularly adept at serving [manly-penis].'[or]This [manly-penis]-hungry whore will gladly serve you with any and all of [his of the player] holes. In fact she is so disgustingly perverted that she will certainly cum hard if you force your massive [manly-penis] up [his of the player] [asshole]...'[or]Ooh yes, I deserve to be ruined, I've been such a bad [boy of the player]! Look at how much my outrageously lewd [asshole] is begging to be destroyed by Master's glorious shaft!'[in random order][end if]";
		otherwise:
			say "[if the player is feeling dominant and M is unintimidating][first custom style]'You COULD try to ruin my [asshole] with that thick [manly-penis] of yours. [one of]But if you don't make me permanently your bitch[or]But unless you dominate me into full submission[in random order] I will get my revenge and I will end you.'[otherwise if the soreness of vagina > 6 and the soreness of vagina > the soreness of asshole][variable custom style]'Please don't fuck my [vagina], it's too sore, [one of]it can't take any more[or]I won't survive[at random]! [one of]Do me in the[or]Fuck me in the[or]Use my[cycling] [asshole] instead!'[otherwise if the anal sex addiction of the player < 3][variable custom style]'[one of]Go on then, use my [asshole] if you must fuck me!'[or]If you have to punish me, I'd rather you just fucked my [asshole] for a little bit...'[in random order][otherwise if the semen addiction of the player > 14 and the semen volume of belly is 0][variable custom style]'[one of]Fine, if this has to happen, at least reward me with a big warm anal creampie?'[or]If you promise to not pull out until you cum, I'll let you do me up the pooper!'[in random order][otherwise if the anal sex addiction of the player < 6][variable custom style]'[one of]OK fine, I'll let you to do it in the naughty place. Just don't judge me...'[or]I guess we can have anal sex. It's just another type of sex, right?'[or]I guess this is what you really want, right? To fuck me in the [asshole]?'[or]I submit! Do what you want with my little [asshole].'[in random order][otherwise][second custom style]'[one of]Come on then, fuck my [asshole] already[or]I assume you're going to want to try out my infamous [asshole][or]Go on then, make me cum from my [asshole][or]My [asshole] has been waiting for someone like you to come along and dominate me[in random order], [stud]!'[end if]";
	otherwise if M is raunchy:
		if the player is a nympho:
			say "[if the player is feeling dominant and M is unintimidating][first custom style]'I'll allow you to touch my [asshole], but this a one time only thing. Because next time, it's going to be me on top, and your holes at my mercy...'[otherwise if the anal sex addiction of the player < 4][first custom style]'My [asshole] needs way more stretching so that it can eventually fit even the biggest of fists. What do you think?'[otherwise if the anal sex addiction of the player < 6][line break][variable custom style]'[one of]I'm sure you can come up with lots of inventive ways to punish this slutty [asshole]...'[or]Let my [asshole] take it from here, we'll have a fun time I'm sure!'[in random order][otherwise][second custom style]'[one of]I bet you want me to bend and spread, huh? What are you going to do to this nasty pervert's vulnerable and exposed [asshole]?'[or]I bet it's my [asshole] that you want, isn't it? Are we going to have some fun?'[in random order][end if]";
		otherwise:
			say "[if the player is feeling dominant and M is unintimidating][first custom style]'Why don't you try using my [asshole] to dominate me? Or are you scared of how much you'll be squealing when I pay you back twice as cruelly later?'[otherwise if the anal sex addiction of the player < 4][first custom style]'[one of]If you really have to do something lewd, I guess I'd rather you chose my [asshole] right now.'[or]Go on then, punish my [asshole] if you must do something lewd!'[in random order][otherwise if the anal sex addiction of the player < 6][variable custom style]'[one of]Okay, I guess it's only fair that you get to play with my [asshole].'[or]Okay, I guess it's [asshole] punishment time, right?'[in random order][otherwise][variable custom style]'[one of]What's your plan? Are you going to do something lewd to my [asshole][or]Maybe you should punish my poor exposed [asshole][in random order]? N-not that I'd really enjoy that, or anything, like some kind of perverted butt slut...'[end if]";
	otherwise:
		say "[variable custom style]'[if the delicateness of the player < 10]I don't know what you're planning to do to me, but for some reason I'm imagining it's likely to involve my [asshole].'[otherwise]Please punish my slutty [asshole]!'[end if]";
	say "[roman type][line break]".

[!<SayFriendlyAnalRequestOfMonster>+

The player initiates anal with a friendly NPC.

+!]
To say FriendlyAnalRequest of (M - a monster):
	if the analvirgin of the player is 1 and M is virginity taking:
		say "[TakeMyAnalVirginity of M]";
	otherwise if M is male:
		let preg-nope be 0;
		if the player is possessing a vagina and the pregnancy of the player is 0 and pregnancy fetish is 1 and M is father material and the player is afraid of a creampie, now preg-nope is 1;
		if the player is a nympho:
			if the anal sex addiction of the player < 6:
				if the player is feeling dominant:
					if preg-nope is 1, say "[variable custom style]'You look like you'll make a good sex toy. Come and try and show me why everyone loves sex so much. But we'll be doing it up the butt so that I can't get pregnant.'";
					otherwise say "[variable custom style]'You look like you'll make a good sex toy. Come and try and show me why everyone loves anal sex so much[if the player is afraid of a creampie]. But don't you fucking dare cum inside my sacred hole[end if].'";
				otherwise:
					if preg-nope is 1, say "[variable custom style]'[one of]I need someone special to train my body to love sex, but I don't want to get pregnant, so let's use the back door, okay?'[or]I want to serve you, so let's get it on. I don't particularly like anal, but I can't risk getting pregnant right now, so it'll have to do, okay?'[in random order]";
					otherwise say "[variable custom style]'[one of]My my [asshole] still doesn't like [manly-penis], you know. That just doesn't seem right for a megaslut like me to still not enjoy anal[or]My [asshole] hasn't learned to love the D yet[or]I might be a perv but my [asshole] is still really innocent[in random order]. I'd like you to help change that[if the player is eager for a creampie]. You should fill my [asshole] up with your [semen] so that I can carry around a lasting reminder of your training[otherwise if the player is afraid of a creampie]. Just maybe consider pulling out so I don't have to walk around with a belly full of icky cum[end if]!'";
			otherwise:
				if the player is feeling dominant:
					say "[variable custom style]'[one of]Stay right there and let me ride your [manly-penis] with my ass, [stud-worm of M][or]I'm to use your [manly-penis] as my own personal anal pleasure dildo, [stud-worm of M][in random order][if preg-nope is 1]. Because I don't want you to knock me up, so my sacred [vagina] is off-limits[otherwise if the player is afraid of a creampie]. But YOU are not allowed to cum, I don't want any gross [semen] inside me[otherwise if the player is eager for a creampie]. And make sure you jizz a nice warm thick load inside my belly so I can feed it to my next victim, haha[end if].'";
				otherwise:
					say "[second custom style]'[one of]My [asshole] is just desperate to be filled!, Please, stick your fat [manly-penis] inside me now, [stud][or]Please, fuck my ass up! Fuck it so rough that I can't walk right for days[in random order][if the player is eager for a creampie]! And make sure you paint my filthy insides with your thick, sticky [semen] so that it's gurgling around in my belly until I am forced to squirt it out onto my thighs[end if]!'";
		otherwise:
			if the anal sex addiction of the player < 6:
				if the player is feeling dominant:
					say "[first custom style]'[one of]I've been rather unimpressed with my anal experiences so far. I reckon if I'll enjoy it more if I'm on top, and I've decided to use your [manly-penis][or]Get down here, I'm going to sample what it's like to have your [manly-penis] in my [asshole]. It's important for a good dom to know what it feels like when they dish out their punishments, so I'm making no exception for myself[in random order][if the player is afraid of a creampie]. And don't you dare cum while you're there, because if I'm forced to squirt cum from my butt you can bet I'm going to make sure it's on your face[otherwise if the player is eager for a creampie]. And for some reason my belly is craving the feeling of fresh warm [semen] inside it, so make sure you're nice and deep when you cum[end if].'";
				otherwise:
					say "[variable custom style]'[one of]I'd like you to fuck me in the ass. Please don't make me repeat it, you heard me[or]Would you like to try anal? I-I'm getting used to it but could still use much more practice[or]How about this - I let you do me in the butt, and then you owe me one? I just think I could use all the allies I can get around here[in random order][if preg-nope is 1]. And of course if we do it up the butt then I won't get pregnant or anything serious like that[otherwise if the player is afraid of a creampie]. B-but please make sure to pull out before you, you know... I don't want to feel all gross and sticky on the inside[otherwise if the player is eager for a creampie], and if you want to, you can even, you know... let it out up there. I've grown to really like that[end if].'";
			otherwise:
				if the player is feeling dominant:
					say "[variable custom style]'[one of]Okay let's bang. But I'm in charge, and we're doing it Greek style, because I say so[or]Ugh, I wish I had better self control, but the truth is my [asshole] is aching to be filled. So I'm going to use you[in random order][if the player is afraid of a creampie]. But you are NOT allowed to cum inside, got it?'[otherwise if the player is eager for a creampie]. I just feel desperate for a nice hot load shooting up my backdoor, and so you're going to give it to me.'[end if]";
				otherwise:
					if preg-nope is 1, say "[variable custom style]'Listen. I need to have sex, and I really don't want to get pregnant. Use my ass?'";
					otherwise say "[second custom style]'[one of]I wonder if you're daydreaming about plowing my [asshole][or]You look like you want to sodomise someone, [stud][or]It seems like you're rather interested in my [asshole], [stud][or]You seem like you could use a friendly buttfuck[or]Hey, I'm really in the mood for some anal right now, and you look like you could use a fuck? Why don't we solve both our problems[in random order][if the player is afraid of a creampie]? O-OK, you can get down here and thrust away! But maybe please cum outside, okay[otherwise if the player is eager for a creampie]? That's understandable, I don't mind too much. Especially if it includes you giving me a nice warm anal creampie at the end. What do you say[end if]?'";
	otherwise:
		if the player is a nympho:
			if the anal sex addiction of the player < 4:
				if the player is feeling dominant:
					say "[variable custom style]'Okay then, [stud-worm of M]. I need someone to service and worship my [asshole]. So you'd better get to it.'";
				otherwise:
					say "[variable custom style]'I need someone to help recondition my [if the analvirgin of the player is 1]virgin[otherwise]almost virgin[end if] [asshole] to love being played with...'";
			otherwise:
				if the player is feeling dominant:
					say "[one of]Hey sugar, I've got a great idea of how to pass the time!'[or]Hey, I know what we should do, it'll be fun!'[in random order]";
				otherwise:
					say "[variable custom style]'[one of]MMmmm, please [stud of M], I'm desperate for someone to abuse my [asshole]...'[or]Please, treat my disgusting, greedy [asshole] as cruelly as it deserves!'[in random order]";
		otherwise:
			if the anal sex addiction of the player < 4:
				if the player is feeling dominant:
					say "[variable custom style]'You, [stud-worm of M]. Worship my [asshole]. That is an order.'";
				otherwise:
					say "[variable custom style]'What's that Sir? You want to use my [asshole]? O-okay then, if I must...'";
			otherwise if the anal sex addiction of the player < 7:
				if the player is feeling dominant:
					say "[variable custom style]'I've got a weird itch inside my butt, and I know just the thing that can help me scratch it. Come here, [stud-worm of M]...'";
				otherwise:
					say "[variable custom style]'[one of]I've got a weird itch deep inside my [asshole] and I think you're the person who can scratch it... pretty please?'[or]Please would you help me cum? My [asshole] is feeling rather needy...'[or]Hey I've got a [asshole] here that I'm not really using. Any idea what I could do with it?'[or]I'm craving some anal action. You down?'[in random order]";
			otherwise:
				if the player is feeling dominant:
					say "[variable custom style]'My [asshole] is ready to be worshipped and pleasured, [stud-worm of M]. Get to work.'";
				otherwise:
					say "[variable custom style]'Hey let's have some fun. You can do whatever you want to my [asshole]. I mean, [if M is female]not that I'm a lesbian or anything, but a tongue is a tongue, right?'[otherwise]I assume that's what you want. Obviously it's not because my [asshole] is crying out to be used or anything weird like that...'[end if]";
	say "[roman type][line break]".

[!<SayAnalRequestFlav>+

This makes sure there is flavour even if the player can't speak.

+!]
To say AnalRequestFlav of (M - a monster):
	if the player is not able to speak or M is unintelligent or the humiliation of the player > HUMILIATION-DISGRACED or the player is feeling submissive, say "You spread your ass cheeks and [asshole] wide and wiggle your hips, trying to signal that [if the second noun is friendly]you'd really enjoy getting ass-fucked right now[otherwise if the humiliation of the player < HUMILIATION-BROKEN and the anal sex addiction of the player < 4 and the player is male]you're consenting to getting fucked in the [asshole][otherwise if the humiliation of the player < HUMILIATION-BROKEN and the delicateness of the player < 10]you'd rather get fucked in the [asshole][otherwise]you're ready to have your [asshole] used[end if].".

[!<SayTakeMyAnalVirginityOfMonster>+

Uttered when the player asks to have their anal virginity taken

+!]
To say TakeMyAnalVirginity of (M - a monster):
	if M is unfriendly:
		if the player is feeling dominant:
			say "[first custom style]'Hmph, finally somebody has been able to take me down. Take my anal virginity, I deserve a brutal punishment for this failure...'";
		otherwise:
			say "[variable custom style]'Fine, break [if the player is male]me[otherwise]my [asshole][end if] in, [if the player is not a pervert]but be gentle[otherwise if the player is a nympho]and don't hold back - force me to never forget this moment[otherwise]but make sure you do it properly, I want my first anal sex experience to be realistic[end if]!'";
	otherwise:
		if the sex addiction of the player < 6 and the player is male:
			say "[first custom style]'If I'm to have my first time be in this game, I want it to at least be on my terms. Please, would you do me the honour?'";
		otherwise if the sex addiction of the player < 5:
			say "[first custom style]'I want my first experience of anal sex to be a good one. How about it? Do you think you could be gentle enough with me?'";
		otherwise if the sex addiction of the player < 9:
			say "[variable custom style]'I think it's about time I tried anal sex, don't you think? Come on, show me what I've been missing! Just don't be too rough, okay?'";
		otherwise:
			say "[second custom style]'[if the sex addiction of the player < 13]I can't pretend any more... [end if]I'm desperate for someone to take my anal cherry and show me what true submissive bliss is. Are you up for it? [if the sex addiction of the player > 10]Be as rough as you want... I deserve it[otherwise]I just have a feeling you're the right person to be my first[end if].'".

Presenting ends here.
