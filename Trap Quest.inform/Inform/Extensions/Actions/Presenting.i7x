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
This is the lack of interested monsters rule:
	if the number of intelligent interested monsters in the location of the player is 0 and (the number of giant wasps in the location of the player is 0 and the player-class is broodmother):
		if auto is 0:
			if there is an interested monster in the location of the player, say "There's nobody about to fuck you.";
			otherwise say "But there's nobody even looking at you.";
		rule fails.
The lack of interested monsters rule is listed in the global presentable rules.

[!<ThePlayerCanOnlyPresentWhileKneelingRule>+

REQUIRES COMMENTING

+!]
This is the player can only present when kneeling rule:
	if the player is upright:
		if auto is 0, say "You need to get on your knees first.";
		rule fails.
The player can only present when kneeling rule is listed in the global presentable rules.

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
		if auto is 0, say "You can't present something that can[']t be seen.";
		rule fails.
The invisible holes cannot be fucked rule is listed in the global presentable rules.

[!<CheckPresenting>+

REQUIRES COMMENTING

+!]
Check presenting:
	if the noun is not body part:
		if the number of interested monsters in the location of the player is 1:
			let M be a random interested monster in the location of the player;
			try offering the noun to M instead;
		otherwise if the number of intelligent monsters in the location of the player > 1:
			say "You're going to have to specify a monster since there's more than one." instead;
		otherwise if there is a monster in the location of the player:
			say "Nobody is paying attention to you." instead;
	if the noun is hips, try presenting asshole instead;
	if the noun is breasts and the largeness of breasts < 5, say "Your breasts aren't large enough to give a reasonable titfuck." instead;
	if the noun is not body part, say "You can only present an orifice on your body that can be fucked[if the largeness of breasts >= 5] or your breasts[end if]." instead;
	unless the noun is actually presentable, do nothing instead;
	repeat with M running through monsters in the location of the player:[attempted fix to strange bug occurring with the vampiress.]
 		if M is not penetrating a body part, try direct-presenting the noun to M instead;
		otherwise say "But the [M] is already inside you!" instead;
	say "ERROR: couldn't find a monster to present to." instead. [Should never happen.]

[!<CheckDirectPresentingTo>+

REQUIRES COMMENTING

+!]
Check direct-presenting something to:
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
	if the second noun is uninterested, say "You should probably get [his of the second noun] attention first. Maybe try [bold type]greet[roman type]ing [him of the second noun]." instead;
	if the noun is hips, try direct-presenting asshole to the second noun instead;
	if the noun is breasts and the largeness of breasts < 5, say "Your breasts aren't large enough to give a reasonable titfuck." instead;
	unless the noun is actually presentable, do nothing instead.

[!<CarryOutDirectPresentingSomethingTo>+

REQUIRES COMMENTING

+!]
Carry out direct-presenting something to:[TODO: make this less humiliating for a princess]
	if suggestion-type is 5:
		now suggestion-tracking is 1;
	if the noun is face:
		if the player is able to speak and auto is 0:
			if the second noun is a dangerous intelligent monster:
				say UnfriendlyOralRequest of the second noun;
			otherwise if the second noun is friendly intelligent monster:
				say FriendlyOralRequest of the second noun;
		say OralRequestFlav of the second noun;
		if the humiliation of the player < HUMILIATION-MODEST - 3500, say "[one of][line break][first custom style]I can hardly believe what I'm doing!  How degrading...[roman type][line break][or][stopping]";
		now the the player-reaction of the player is submitting;
		now presented-orifice is face;
		humiliate (SEVERE-HUMILIATION - SLIGHT-HUMILIATION);
	otherwise if the noun is breasts:
		if the player is able to speak and auto is 0:
			if the second noun is a dangerous intelligent male monster:
				say UnfriendlyTitfuckRequest of the second noun;
			otherwise if the second noun is friendly intelligent male monster:
				say FriendlyTitfuckRequest of the second noun;
		say TitfuckRequestFlav of the second noun;
		say "[one of][line break][variable custom style]I'm advertising my tits as just another place on my body for men to fuck... [if the humiliation of the player < HUMILIATION-MODEST - 3500][line break][first custom style]How awfully shameful.[end if][roman type][line break][or][stopping]";
		now the the player-reaction of the player is submitting;
		now presented-orifice is breasts;
		humiliate (SEVERE-HUMILIATION - SLIGHT-HUMILIATION);
	otherwise if the noun is vagina:
		if the player is able to speak and auto is 0:
			if the second noun is a dangerous intelligent monster:
				say UnfriendlyVaginalRequest of the second noun;
			otherwise if the second noun is friendly intelligent monster:
				say FriendlyVaginalRequest of the second noun;
		say VaginalRequestFlav of the second noun;
		if the humiliation of the player < 12500, say "[one of][line break][first custom style]Oh my god, how humiliating is this!  What am I becoming...[roman type][line break][or][stopping]";
		now the the player-reaction of the player is submitting;
		now presented-orifice is vagina;
		humiliate (SEVERE-HUMILIATION - MODERATE-HUMILIATION);
		let T be a random no-regrets tattoo;
		if there is a worn tattoo and the humiliation of the player < HUMILIATION-DISGRACED + 1000 and the sex addiction of the player < 11 and T is not worn:
			summon T;
			say "Your skin stings as a tattoo is suddenly seared into your torso!  It says 'No Regrets'.";
	otherwise if the noun is asshole:
		if the player is able to speak and auto is 0:
			if the second noun is a dangerous intelligent monster:
				say UnfriendlyAnalRequest of the second noun;
			otherwise if the second noun is friendly intelligent monster:
				say FriendlyAnalRequest of the second noun;
		say AnalRequestFlav of the second noun;
		if the humiliation of the player < HUMILIATION-MODEST  - 3500, say "[one of][line break][first custom style]Oh my god, how humiliating is this!  What am I becoming...[roman type][line break][stopping]";
		now the the player-reaction of the player is submitting;
		now presented-orifice is asshole;
		let T be a random just the tip tattoo;
		if there is a worn tattoo and the humiliation of the player < HUMILIATION-MODEST - 1000 and T is not worn and the second noun is unfriendly:
			summon T;
			say "Your skin stings as a tattoo is suddenly seared into your butt cheek!  It says 'Just the Tip'.";
		unless there is a worn just the tip tattoo, humiliate (SEVERE-HUMILIATION + MODERATE-HUMILIATION);
	if there is a worn demon codpiece and the player is a may 2017 top donator, follow the demon junk punishment rule;
	if the second noun is friendly, check consensual submissive sex of the second noun;
	now seconds is 4.

Understand "present [something]", "offer [something]", "spread [something]", "suggest [something]", "display [something]", "put penis in [something]", "put cock in [something]", "put dick in [something]", "take penis in [something]", "take cock in [something]", "take dick in [something]" as presenting.

Understand "present [something] to [something]", "offer [something] to [something]", "spread [something] for [something]", "suggest [something] to [something]", "display [something] to [something]" as direct-presenting it to.

[!<DecideWhichNumberIsTheBreastsConvincedOfMonster>+

REQUIRES COMMENTING

+!]
To decide which number is the breasts-convinced of (M - a monster):
	if a random number between 1 and the difficulty of M <= the largeness of breasts:
		say "The [M] seems convinced by the idea, and [one of]impatiently[or]enthusiastically[or]gleefully[or]hastily[purely at random] puts his [manly-penis] inside your cleavage.";
		decide on 1;
	say "It doesn't look like the [M] was convinced by your display.";
	decide on 0;

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

Understand "suck off [something]", "give [something] blowjob", "give [something] head", "offer [something] tongue", "offer [something] blowjob", "offer tongue to [something]", "offer blowjob to [something]", "offer mouth to [something]", "offer face to [something]",   "present tongue to [something]", "present blowjob to [something]", "present mouth to [something]", "present tongue to [something]", "present face to [something]", "suggest tongue to [something]", "suggest blowjob to [something]", "suggest mouth to [something]",  "suggest face to [something]", "bj [something]" as cocksucking.

[!<cockSomething:Action>*

REQUIRES COMMENTING

*!]
Cocksomething is an action applying to nothing.
Understand "suck penis",  "suck cock", "suck dick", "offer tongue", "present tongue", "offer blowjob", "suggest tongue", "suggest blowjob" as cocksomething.

[!<CheckCockSomething>+

REQUIRES COMMENTING

+!]
Check cocksomething:
	try presenting face instead.

[!<SayUnfriendlyOralRequestOfMonster>+

REQUIRES COMMENTING

+!]
To say UnfriendlyOralRequest of (M - a monster):
	if M is male, say "[if the virgin of the player is 1 and the player is female][line break][first custom style]'Please don't take my virginity... I can give you a blowjob if you want...'[otherwise if the analvirgin of the player is 1 and the player is male][first custom style]'Please don't take my anal virginity... I can give you a blowjob if you want...'[otherwise if the anal sex addiction of the player < 4 and the vaginal sex addiction of the player < 4][first custom style]'Please don't do me down there... I'll pleasure you with my mouth if I must...'[otherwise if the semen taste addiction of the player > 13][line break][second custom style]'Mm, please let me taste your cum, big boy!'[otherwise if the sex addiction of the player < 8][line break][variable custom style]'No, not down there, [one of]let me suck you off[or]use me up here[in random order] instead!'[otherwise][variable custom style]'[one of]Looking for a throat to fuck[or]How would you like a blowjob[or]Care for me to swallow your load[or]Are you going to let me taste your [manly-penis][in random order], [one of]big boy[or]handsome[or]stud[purely at random]?'[end if][roman type][line break]";
	otherwise say "[if the oral sex addiction of the player < 4][line break][first custom style]'I'm not going to enjoy it either way, but I'd rather pleasure you with my mouth, if I have to.'[otherwise if the sex addiction of the player < 12][line break][variable custom style]'[one of]Okay, you win. How about I reward you with my mouth?'[or]I think it would be a good idea if I make you happy with my tongue, if you'd like that?'[stopping][otherwise][variable custom style]'[one of]Hey sugar, I've got a great idea of how to pass the time!'[or]Hey, I know what we should do, it'll be fun!'[or]Want to find out how skilled I am with my tongue?'[in random order][end if][roman type][line break]".

[!<SayFriendlyOralRequestOfMonster>+

REQUIRES COMMENTING

+!]
To say FriendlyOralRequest of (M - a monster):
	if M is male:
		if the oral sex addiction of the player < 4:
			say "[first custom style]'[one of]I[']m NOT going to enjoy it, but I need you to let me [if the player is male]suck you off.[otherwise]fellate you.[end if]'[or]I[']m willing to let you use my mouth, if you want. [if bukkake fetish is 1]But don[']t you dare cum on my face.'[otherwise]But I[']m not going to pretend I enjoy sucking dick. Got it?'[end if][or]Let's get this straight. I [if the player is female]normally wouldn[']t even touch a penis, let alone suck one. Lucky you, I think I have no choice but to make an exception.'[otherwise]get blowjobs from chicks. I[']d really like to get back to that. Just this once, I need you to let me suck you off.'[end if][or]I need you to let me...[if the player is male]suck your dick.[otherwise]fellate you.[end if] It[']s not about sex, I just need to do it to someone. Might as well be you, I guess.'[at random]";
		otherwise if the player is craving:
			say "[second custom style]'[one of]Mm, please let me swallow your cum, big boy?  I'm desperate for a taste...'[or]Hey big boy. Can you spare a load for me? I really need to wet my throat...'[or]Hey sexy. Why don[']t you let me have a taste of that creamy stuff you keep in your balls?'[or]Let me have a taste of your cum. I promise I[']ll work for it, big boy...'[at random]";
		otherwise if the oral sex addiction of the player < 7:
			say "[variable custom style]'[one of]I... I don't usually ask people this, but please can I give you a blowjob?  If you don't mind...'[or]Hey, can I give you a blowjob? Normally wouldn[']t ask this, but hey, you don[']t have to say yes.'[or]I think it would be a good idea if I sucked your [manly-penis], if that's okay with you?'[or]Do you want me to suck you off? Totally shooting in the dark here, please say no if you[']re not interested.'[or]Hey, are you interested in a blowjob? I mean, I[']m offering, but I[']m fine if you[']re not on board.'[at random]";
		otherwise:
			say "[variable custom style]'[one of]Looking for a throat to fuck[or]How would you like a sloppy blowjob[or]Care for me to swallow your load[or]Are you going to let me taste your [manly-penis][in random order], [one of]big boy[or]handsome[or]stud[purely at random]?'";
		say "[roman type][line break]";
	otherwise:
		say "[if the oral sex addiction of the player < 4][line break][first custom style]'I'm not going to enjoy it, but I need you to let me pleasure you with my mouth, okay?'[otherwise if the sex addiction of the player < 10][line break][variable custom style]'[one of]I... I don't usually ask people this, but please can I serve you with my mouth?'[or]I think it would be a good idea if I make you happy with my tongue, if you'd like that?'[stopping][otherwise][variable custom style]'[one of]Hey sugar, I've got a great idea of how to pass the time!'[or]Hey, I know what we should do, it'll be fun!'[or]Want to find out how skilled I am with my tongue?'[in random order][end if][roman type][line break]".

[!<SayOralRequestFlavOfMonster>+

REQUIRES COMMENTING

+!]
To say OralRequestFlav of (M - a monster):
	if the player is not able to speak or M is not intelligent or the humiliation of the player > HUMILIATION-MODEST - 1000 or the sex addiction of the player > 9, say "You open your mouth wide and stick out your tongue, [if there is a worn tongue piercing]showing off your slutty tongue piercing and [end if]trying to signal that [if the second noun is friendly and the sex addiction of the player < 4]you a requesting permission to perform oral sex on [him of the second noun][otherwise if the second noun is a friendly male monster]you'd really enjoy giving [him of second noun] a blowjob right about now[otherwise if the second noun is friendly]you'd love to pleasure [him of second noun] with your tongue[otherwise if the humiliation of the player < HUMILIATION-BROKEN]you'd rather use your mouth if possible[otherwise]you're ready to have your mouth used[end if].".

[!<SayUnfriendlyTitfuckRequestOfMonster>+

REQUIRES COMMENTING

+!]
To say UnfriendlyTitfuckRequest of (M - a monster):
	say "[if the virgin of the player is 1 and the player is female][line break][first custom style]'Please don't take my virginity... you can fuck my tits if you want...'[otherwise if the titfuck addiction of the player < 3][first custom style]'Please don't do me down there... I'll pleasure you with my breasts if I must...'[otherwise if the titfuck addiction of the player < 6 and the anal sex addiction of the player < 4 and the vaginal sex addiction of the player < 4][line break][variable custom style]'No, not down there, [one of]let me wank you off with my tits[or]use me up here[in random order] instead!'[otherwise][variable custom style]'[one of]Looking for a nice pair of funbags to fuck[or]How would you like a titwank[or]Are you going to let me feel your warm [manly-penis] between my nice big cans[in random order], [one of]big boy[or]handsome[or]stud[purely at random]?'[end if][roman type][line break]".

[!<SayFriendlyTitfuckRequestOfMonster>+

REQUIRES COMMENTING

+!]
To say FriendlyTitfuckRequest of (M - a monster):
	if the titfuck addiction of the player < 3:
		say "[first custom style]'[one of]I[']m going to let you fuck my tits now. Just don[']t ask why.'[or]Listen. I need to give you a boobjob. Ugh, that sounded even grosser coming out.'[or]I[']m willing to give you a boobjob. Just don[']t expect me to like it.'[or]Since I have a whore chest, I might as well use it. I[']m going to give you a tit fuck, but don[']t you dare tell anyone.'[at random]";
	otherwise if the titfuck addiction of the player < 7:
		say "[variable custom style]'[one of]Put your [manly-penis] here and I'll make you feel good.'[or][if the player is male]Want me to titfuck you? I have these boobs now, so I might as well use them. Think of it as a favour between bros.'[otherwise]Would you like me to use my boobs on your [manly-penis]? That[']s the arousing way to put it, right?'[end if][or]You know, my breasts are pretty soft. I can let you test them out if you want.'[at random]";
	otherwise:
		say "[variable custom style]'[one of]Looking for a nice pair of funbags to fuck[or][if bukkake fetish is 1]Want to make a mess on my tits[otherwise]Want your dick to take a nap in my tits[end if][or]How would you like a titwank[or]Are you going to let me feel your warm [manly-penis] between my nice big cans[in random order], [one of]big boy[or]handsome[or]stud[purely at random]?'";
	say "[roman type][line break]".

[!<SayTitfuckRequestFlavOfMonster>+

REQUIRES COMMENTING

+!]
To say TitfuckRequestFlav of (M - a monster):
	if the player is not able to speak or M is not intelligent or (the humiliation of the player > HUMILIATION-MODEST - 1000) or the sex addiction of the player > 9, say "You thrust your [BreastDesc] out, [if there is a worn nipple piercing]showing off your slutty nipple piercings and [end if]trying to signal that [if the second noun is a friendly monster]you'd really enjoy giving [him of second noun] a titfuck right about now[otherwise if the humiliation of the player < HUMILIATION-BROKEN]you'd rather have your breasts used for sex[otherwise]you're ready to have your breasts used[end if].".

[!<SayUnfriendlyVaginalRequestOfMonster>+

REQUIRES COMMENTING

+!]
To say UnfriendlyVaginalRequest of (M - a monster):
	if M is male, say "[if the virgin of the player is 1 and M is virginity taking][TakeMyVirginity of M][otherwise if the soreness of asshole > 6 and the soreness of asshole > the soreness of vagina][line break][variable custom style]'Please don't fuck my [asshole], it's too sore, [one of]it can't take any more[or]I won't survive[or]my mind will break[purely at random]!  [one of]Do me in the[or]Fuck me in the[or]Use my[cycling] [vagina] instead!'[otherwise if the player is very horny][line break][second custom style]'[one of]Mm, please make me cum, I need it badly[or]Please fuck my [vagina], I'm desperate for another orgasm[in random order]!'[otherwise if the vaginal sex addiction of the player < 4][variable custom style]'[one of]Go on then, use my [vagina] if you must fuck me!'[or]If you have to fuck me, I'd rather it was in my [vagina]...'[in random order][otherwise][variable custom style]'[one of]Looking for a [vagina] to fuck[or]How would you like to fuck a [manly-penis] hungry slut like me right in the [vagina][or]Let my [vagina] take it from here, we'll have a fun time I'm sure[or]Are you going to let my [vagina] have some fun now[in random order], [one of]sexy[or]handsome[purely at random]?'[end if][roman type][line break]";
	otherwise say "[if the virgin of the player is 1 and M is virginity taking][TakeMyVirginity of M][otherwise if the soreness of asshole > 6 and the soreness of asshole > the soreness of vagina][line break][variable custom style]'Please don't touch my [asshole], it's too sore, [one of]it can't take any more[or]I won't survive[or]my mind will break[purely at random]!  [one of]Do me in the[or]Fuck me in the[or]Use my[cycling] [vagina] instead!'[otherwise if the player is very horny][line break][second custom style]'[one of]Mm, please make me cum, I need it badly[or]Please fuck my [vagina], I'm desperate for another orgasm[in random order]!'[otherwise if the vaginal sex addiction of the player < 4][variable custom style]'[one of]Go on then, use my [vagina] if you must fuck me!'[or]If you have to fuck me, I'd rather it was in my [vagina]...'[in random order][otherwise][variable custom style]'[one of]Looking for a [vagina] to fuck[or]How would you like to fuck a [manly-penis] hungry slut like me right in the [vagina][or]Let my [vagina] take it from here, we'll have a fun time I'm sure[or]Are you going to let my [vagina] have some fun now[in random order], [one of]sexy[or]honey[purely at random]?'[end if][roman type][line break]".

[!<SayFriendlyVaginalRequestOfMonster>+

REQUIRES COMMENTING

+!]
To say FriendlyVaginalRequest of (M - a monster):
	if the virgin of the player is 1 and M is virginity taking:
		say "[TakeMyVirginity of M]";
	otherwise if the player is very horny:
		say "[variable custom style]'[one of]I[']m horny, let[']s fuck[or]Fuck my [vagina]! I need to cum so bad[or]Please put your dick in my [vagina], I'm so horny[or]I[']m so horny, I need a dick in me[or]Please fuck my [vagina], I'm desperate for another orgasm[in random order]!'";
	otherwise if the vaginal sex addiction of the player < 4:
		say "[first custom style]'[one of]I need you to have sex with me. Don't ask why.'[or]I want you to have sex with me. This isn[']t about pleasure, I just need you to fuck me.'[or]How do I say this...Are you willing to have sex with me? Did that sound too gross?[or]'This is really embarrassing, but I want you to have sex with me, if that's okay with you.[in random order]";
	otherwise if the vaginal sex addiction of the player < 7:
		say "[variable custom style]'[one of]You know, I have a good idea of how we could pass some time... if you get what I mean?'[or]I'm bored. Wanna bang?[or]Hey I[']ve got a [vagina] here that I[']m not really using. Any idea what I could do with it?[or]You seem like you could use a fuck? I[']m game.'[or]'[in random order]";
	otherwise:
		say "[second custom style]'[one of]Looking for a [vagina] to fuck[or]How would you like to fuck a [manly-penis] hungry slut like me right in the [vagina][or]Wanna see how deep my [vagina] goes[or]Do you think you[']ve got what it takes to tame my cunt[in random order], [one of]sexy[or]honey[purely at random]?'";
	say "[roman type][line break]".

[!<SayVaginalRequestFlavOfMonster>+

REQUIRES COMMENTING

+!]
To say VaginalRequestFlav of (M - a monster):
	if the player is not able to speak or M is not intelligent or the humiliation of the player > HUMILIATION-MODEST - 1000 or the sex addiction of the player > 9, say "You spread your ass cheeks and pussy lips wide and wiggle your hips, trying to signal that [if the second noun is a friendly male monster]you'd really enjoy getting fucked right now[otherwise if the second noun is friendly]you'd love to have your [vagina] played with right now[otherwise if the humiliation of the player < HUMILIATION-BROKEN and the sex addiction of the player < 11]you'd rather get fucked in the [vagina] than your [asshole][otherwise]you're ready to have your [vagina] used[end if].".

[!<SayUnfriendlyAnalRequestOfMonster>+

REQUIRES COMMENTING

+!]
To say UnfriendlyAnalRequest of (M - a monster):
	say "[if the virgin of the player is 1 and the player is female and M is virginity taking][line break][variable custom style]'Please don't take my virginity, [one of]use my [asshole] instead[or]put it in my [asshole] instead if you must[or]my [asshole] is much tighter anyway[or]wouldn't you much rather fuck my [asshole] instead?[in random order]!'[otherwise if the analvirgin of the player is 1 and M is virginity taking][TakeMyAnalVirginity of M][otherwise if the soreness of vagina > 7 and the soreness of vagina > the soreness of asshole][variable custom style]'Please don't use my [vagina], it's too sore, [one of]it can't take any more[or]I won't survive[or]my mind will break[purely at random]!  [one of]Do me in the[or]Fuck me in the[or]Use my[cycling] [asshole] instead!'[otherwise if the player is very horny][line break][second custom style]'[one of]Mm, please make me cum, I need it badly[or]Please fuck my [asshole], I'm desperate for another anal orgasm[in random order]!'[otherwise if the anal sex addiction of the player < 4][variable custom style]'[one of]Go on then, use my [asshole] if you must fuck me![or]I submit!  Do what you want with my little [asshole][in random order]!'[otherwise][variable custom style]'[one of]Looking for a [asshole] to fuck[or]How would you like to fuck a cock hungry slut like me right in the [asshole][or]I bet it's my [asshole] that you want, isn't it[or]Are you going to let my [asshole] have some fun now[in random order], [one of]sexy[or]honey[purely at random]?'[end if][roman type][line break]".

[!<SayFriendlyAnalRequestOfMonster>+

REQUIRES COMMENTING

+!]
To say FriendlyAnalRequest of (M - a monster):
	if the analvirgin of the player is 1 and M is virginity taking:
		say "[TakeMyAnalVirginity of M]";
	otherwise if the player is very horny:
		say "[second custom style]'[one of]Mm, please make me cum, I need it badly[or]Please fuck my [asshole], I'm desperate for another anal orgasm[or]Please, my butthole needs to cum[or]Can you fuck my ass? Please, I[']m so horny[or][if the bimbo of the player > 13]Ooh, please pound my horny ass[otherwise]Please fuck my ass, I need to cum so bad[end if][in random order]!'";
	otherwise if the anal sex addiction of the player < 4:
		say "[variable custom style]'[one of]I'd like you to fuck me in the ass. Please don't make me repeat it, you heard me.'[or]Look, I really need to get fucked, and [if the player is female]I[']m not about about to give up my [vagina]. So...[otherwise]I don[']t exactly have anywhere else for it, so[end if] please fuck my ass.'[or][if the player is female and pregnancy fetish is 1 and M is male]Listen. I need to have sex, and I really don[']t want to get pregnant. Use my ass?'[otherwise if the player is female]I need you to have anal sex with me. I won[']t pretend I[']m enjoying it either, I just need us to have sex.'[otherwise]Listen. I need to have sex with someone. It[']s not because I[']m gay or anything, I just need us to have sex, alright?'[end if][or]I'm willing to let you assfuck me, if that's the kind of thing you'd be into.'[or]If you[']re in the mood for anal, I[']m offering, I guess...'[purely at random]";
	otherwise if the anal sex addiction of the player < 7:
		say "[variable custom style]'[one of]I'm craving some anal action. You down?'[or]Do you like anal sex?'[or]I could really go for a good assfuck right now. How about you?'[or]hey, are you in the mood for some anal? I know I am.'[or][if the player is male and M is male]Want to fuck me? My prostate really needs some attention right now, if you know what I mean.'[otherwise]Want to fuck me? My ass is available if you[']re interested.'[end if][or]Hey, I[']m really in the mood for some anal right now, and you look like you could use a fuck? Why don[']t we solve both our problems?'[purely at random]";
	otherwise:
		say "[variable custom style]'[one of]Looking for a [asshole] to fuck[or]How would you like to fuck a cock hungry slut like me right in the [asshole][or]Hmm, my [asshole] is feeling a bit empty and lonely. Care to help me out[or]Would you like to invite my [asshole] on a date[in random order], [one of]sexy[or]honey[purely at random]?'[roman type][line break]".

[!<SayAnalRequestFlav>+

REQUIRES COMMENTING

+!]
To say AnalRequestFlav of (M - a monster):
	if the player is not able to speak or M is not intelligent or the humiliation of the player > HUMILIATION-MODEST - 1000 or the sex addiction of the player > 9, say "You spread your ass cheeks and [asshole] wide and wiggle your hips, trying to signal that [if the second noun is friendly]you'd really enjoy getting ass-fucked right now[otherwise if the humiliation of the player < HUMILIATION-BROKEN and the sex addiction of the player < 11 and the player is male]you're consenting to getting fucked in the [asshole][otherwise if the humiliation of the player < HUMILIATION-BROKEN and the anal sex addiction of the player > the vaginal sex addiction of the player]you'd rather get fucked in the [asshole] than your [vagina][otherwise]you're ready to have your [asshole] used[end if].".

[!<SayTakeMyVirginityOfMonster>+

REQUIRES COMMENTING

+!]
To say TakeMyVirginity of (M - a monster):
	if M is unfriendly:
		if the sex addiction of the player < 6:
			say "[first custom style]'Please, whatever you do, just don't stick it in my butt. I'd even prefer you took my virginity...'";
		otherwise if the sex addiction of the player < 11:
			say "[variable custom style]'Go ahead, deflower me. It was only a matter of time anyway.'";
		otherwise:
			say "[second custom style]'I've been waiting a long time for the right [if M is human]man[otherwise]monster[end if] who's worthy of this [vagina]... alright, go ahead, take my virginity - break me in!'";
	otherwise:
		if the sex addiction of the player < 5:
			say "[first custom style]'If I'm to have my first time be in this game, I want it to at least be consensual. Please, would you do me the honour?'";
		otherwise if the sex addiction of the player < 8:
			say "[variable custom style]'I think it's about time I tried [']real['] sex, don't you think?  How do you fancy being the one to take my V-card?'";
		otherwise:
			say "[second custom style]'Hey handsome, I've been looking for the right fella to take my cherry. And guess what, it's your lucky day!'".

[!<SayTakeMyAnalVirginityOfMonster>+

REQUIRES COMMENTING

+!]
To say TakeMyAnalVirginity of (M - a monster):
	if M is unfriendly:
		if the sex addiction of the player < 11:
			say "[variable custom style]'Fine, break [if the player is male]me[otherwise]my [asshole][end if] in, but [if the sex addiction of the player < 7]be gentle[otherwise]make it quick[end if]!'";
		otherwise:
			say "[second custom style]'Finally somebody has been able to take me down. I'm no match for you!  Take my anal virginity, I deserve a brutal punishment...'";
	otherwise:
		if the sex addiction of the player < 6 and the player is male:
			say "[first custom style]'If I'm to have my first time be in this game, I want it to at least be consensual. Please, would you do me the honour?'";
		otherwise if the sex addiction of the player < 5:
			say "[first custom style]'I want my first experience of anal sex to be a good one. How about it?  Do you think you could be gentle enough with me?'";
		otherwise if the sex addiction of the player < 9:
			say "[variable custom style]'I think it's about time I tried anal sex, don't you think?  Come on, show me what I've been missing!  Just don't be too rough, okay?'";
		otherwise:
			say "[second custom style]'[if the sex addiction of the player < 13]I can't pretend any more... [end if]I'm desperate for someone to take my anal cherry and show me what true submissive bliss is. Are you up for it?  [if the sex addiction of the player > 10]Be as rough as you want... I deserve it[otherwise]I just have a feeling you're the right person to be my first[end if].'".


Presenting ends here.

