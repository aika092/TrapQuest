Addictions by Player Description begins here.


[!<addictionListingRules:Rulebook>*

REQUIRES COMMENTING

*!]
The addiction listing rules is a rulebook.

[!<addictionListing:Action>*

REQUIRES COMMENTING

*!]
Addiction Listing is an action applying to nothing.

[!<CarryOutAddictionListing>+

Triggers the addiction listing rulebook which goes through all the rules below, explaining to the player their various likes and dislikes.

+!]
Carry out Addiction Listing:
	follow the addiction listing rules.
Understand "addictions", "likes", "preferences", "tastes", "desires" as addiction listing.

[!<TheSexAddictionDescriptionRule>+

We explain how much the player likes being in a submissive role during sex, and how much they crave sex and orgasms overall.

+!]
This is the sex addiction description rule:
	if diaper quest is 0, say "[if the sex addiction of the player < 4]You are very vanilla; you don't enjoy being on top or bottom during sex - it should be a loving mating ritual between equals[otherwise if the sex addiction of the player < 7 and the delicateness of the player > 6]You are reluctant to engage in sex - you don't have the alpha mentality to be a Dom and you don't enjoy being a sub[otherwise if the sex addiction of the player < 7]You are definitely not the type of person that likes being the submissive one during sex. If it happens, it's almost certainly against your will[otherwise if the sex addiction of the player < 10 and the delicateness of the player > 6]You tolerate being submissive during sex, and are beginning to realise why some people think it's so fun. You're still more than happy to be on top, too, but you're not very good at it[otherwise if the sex addiction of the player < 10]You love kinky sex but you would still much prefer to be dishing out the punishment rather than receiving it, if you got to choose. Which you usually don't[otherwise if the sex addiction of the player < 13]You are accepting of your natural position as a submissive in all sexual encounters. You get aroused easily at the thought, and it's sometimes difficult to do the 'right' thing when the 'wrong' thing is more likely to result in an orgasm[otherwise if the sex addiction of the player < 16]You crave sex. As soon as you cum, you start think about how great your next orgasm will be. The word 'consent' means less and less to you, as you can't really think of many situations where you would refuse to let someone fuck you[otherwise]Your one track mind thinks of little except how you're going to find someone to fuck you. Even whilst getting fucked, you're already trying to work out how to minimise the sad, empty time between one [manly-penis] pulling out and the next one filling you up. You are well aware that your only purpose in life is to be a living fucktoy for other superior beings, and you love every minute of it[end if].";
	otherwise say "[if the sex addiction of the player < 4]You are very vanilla; you don't think fetishes are healthy and you certainly wouldn't say you have any yourself[otherwise if the sex addiction of the player < 7 and the delicateness of the player > 6]You are reluctant to seek out orgasms, and definitely wouldn't want to be seen dead masturbating whilst in this game[otherwise if the sex addiction of the player < 7]You dislike kink shaming - whatever floats someone's boat shouldn't be anyone else's business, and you hope that other people wouldn't judge you in the same manner[otherwise if the sex addiction of the player < 10 and the delicateness of the player > 6]You tolerate other people helping you orgasm, and are beginning to realise why some people think it's so fun. You're still more than happy to be dominant, but you're not very good at it[otherwise if the sex addiction of the player < 10]You love kinky stuff but you would still much prefer to be dishing out the [']punishment['] rather than receiving it, if you got to choose. Which you usually don't[otherwise if the sex addiction of the player < 13]You are accepting of your natural position as a submissive in all sexual encounters. You get aroused easily at the thought, and it's sometimes difficult to do the 'right' thing when the 'wrong' thing is more likely to result in an orgasm[otherwise if the sex addiction of the player < 16]You crave orgasms. As soon as you cum, you start think about how great your next orgasm will be. The word 'consent' means less and less to you, as you can't really think of many situations where you would refuse to let someone play with you[otherwise]Your one track mind thinks of little except how you're going to find someone to help you cum. Even whilst getting pleasured, you're already trying to work out how to minimise the sad, empty time between orgasm and the next. You wouldn't even consider pleasuring yourself like an adult - you always wait for someone else to decide to give you your [']cummies['][end if].".
The sex addiction description rule is listed in the addiction listing rules.

[!<TheOralSexAddictionDescriptionRule>+

We explain how much the player likes performing oral sex.

+!]
This is the oral sex addiction description rule:
	if diaper quest is 0, say "[if the oral sex addiction of the player <= 1]You hate the idea of having a dick in your mouth[otherwise if the oral sex addiction of the player <= 3]You dislike pleasuring people with your mouth[otherwise if the oral sex addiction of the player <= 5 and the anal sex addiction of the player <= 5]You don't mind giving blowjobs. It's often better than the alternatives[otherwise if the oral sex addiction of the player <= 5]You don't mind giving blowjobs, but you usually find other types of sex more fun[otherwise if the oral sex addiction of the player <= 7]You love giving blowjobs!  The bigger the [manly-penis], the better. You've yet to find a [manly-penis] that you can't fit in your mouth[otherwise if the oral sex addiction of the player <= 9]You take great pleasure in savouring a tasty [manly-penis] or pussy with your mouth. You're the type of girl who eagerly asks permission to suck someone's [manly-penis][otherwise]You have an oral fixation, and you never tire of the feeling of a tasty [manly-penis] on your tongue. Your addiction is so strong that you never completely close your mouth, preferring to instead keep it in a permanent provocative pout - that is, when it's not already wrapped around a nice big shaft[end if].".
The oral sex addiction description rule is listed in the addiction listing rules.

[!<TheTitfuckAddictionDescriptionRule>+

We explain how much the player likes performing tittyfucks.

+!]
This is the titfuck addiction description rule:
	if the titfuck addiction of the player > 1 and the largeness of breasts >= 5, say "[if the titfuck addiction of the player <= 2]You hate the idea of having a dick in between your breasts[otherwise if the titfuck addiction of the player <= 3]You dislike pleasuring people with your tits[otherwise if the titfuck addiction of the player <= 5 and the anal sex addiction of the player <= 5]You don't mind giving titjobs. It's often better than the alternatives[otherwise if the titfuck addiction of the player <= 5]You don't mind giving titjobs, but you usually find other types of sex more fun[otherwise if the titfuck addiction of the player <= 7]You love pleasuring men with your boobs!  It just feels so great thanks to your extra-sensitive skin[otherwise if the titfuck addiction of the player <= 9]Having a cock pumping in and out of your cleavage is a great pleasure; your breasts are becoming like another sex organ[otherwise]Whenever your cleavage is empty, your titty flesh aches to feel another phallic object thrusting in and out of its voluptuous fold[end if].".
The titfuck addiction description rule is listed in the addiction listing rules.

[!<TheVaginalSexAddictionDescriptionRule>+

We explain how much the player likes receiving vaginal sex and the idea of getting pregnant.

+!]
This is the vaginal sex addiction description rule:
	if the player is female and diaper quest is 0:
		say "[if the vaginal sex addiction of the player <= 3 and the virgin of the player is 1 and the anal sex addiction of the player > 5]You've never tried vaginal sex, but why would you?  Your [asshole] makes a perfectly good substitute[otherwise if the vaginal sex addiction of the player <= 3 and the virgin of the player is 1]You've never tried vaginal sex, and you have no particular desire to lose your virginity today[otherwise if the vaginal sex addiction of the player <= 2]You've now tried vaginal intercourse at least once but have no intention of experiencing it again while in this game[otherwise if the vaginal sex addiction of the player <= 3]You tolerate vaginal intercourse. It's fine, but it's not something you're planning on actively seeking out right now[otherwise if the vaginal sex addiction of the player <= 5]You enjoy vaginal sex as much as your average woman[otherwise if the vaginal sex addiction of the player <= 7]You really enjoy getting fucked in the [vagina]. Every now and then you feel it throb with a little ache of desire[otherwise if the anal sex addiction of the player <= 9]You enjoy and seek out opportunities to get fucked in your [vagina], and after a while of being empty you begin to feel a deep longing to be filled down there once again[otherwise]You love stuffing big [manly-penis]s in your babymaker, and as soon as your greedy cunt is empty you begin to crave that feeling of being filled to the brim by [manly-penis], or toys, or anything!  It's like an itch that always needs scratching[end if]. ";
		if pregnancy fetish is 1 and the pregnancy of the player is 0, say "[if the vaginal sex addiction of the player <= 3]Especially because you have no intention of getting pregnant any time soon![otherwise if the vaginal sex addiction of the player <= 6]You would prefer to minimise the risk of getting pregnant.[otherwise if the vaginal sex addiction of the player <= 8]The idea of getting knocked up turns you on.[otherwise if the children of the player is 0]You are desperate to find out what it's like to get pregnant and give birth to a child![otherwise]You long for that feeling of waddling around with a giant pregnant belly and you can't wait to experience the miracle of childbirth again and again![end if]";
		otherwise say line break.
The vaginal sex addiction description rule is listed in the addiction listing rules.

[!<TheSemenFeelAddictionDescriptionRule>+

We explain how much the player likes being creampied and covered in semen.

+!]
This is the semen feel addiction description rule:
	if diaper quest is 0:
		if the semen addiction of the player < 3:
			say "You can't think of anything much worse right now than having to deal with [semen] being ejaculated on you or inside you, or even near you!";
		otherwise if the semen addiction of the player < 6:
			say "You are disgusted by the feel of [semen], and by the way it looks.";
		otherwise if the semen addiction of the player < 9:
			say "You are slowly getting used to the texture and smell of [semen].";
		otherwise if the semen addiction of the player < 11:
			say "You are beginning to quite like the feel of [semen][if bukkake fetish is 1] on your skin[end if].";	
		otherwise if the semen addiction of the player < 13:
			say "Your favourite part of sex is the feeling of getting creampied by a fresh hot load.";
		otherwise if the semen addiction of the player < 15:
			say "You [if bukkake fetish is 1]like to wear recent cumblasts on your body as a symbol of pride[otherwise]love the wholesome sense of fulfilment you experience when you feel a man orgasm inside of you[end if].";
		otherwise if the semen addiction of the player < 17:
			say "You are so addicted to getting creampied [if bukkake fetish is 1]and covered in [semen] [end if]that an average human load often isn't enough to satisfy your needs. You find yourself more attracted to giant men[if mythical creature fetish is 1], inhuman monsters[end if] and group sessions.";
		otherwise:
			say "You are so addicted to [semen] that you refuse to let it leave your [if the player is male][asshole][otherwise]holes[end if] for as long as you can hold it in[if bukkake fetish is 1]. You don't even consider ever wiping it off your face or body - that would be like throwing hard-earned medals and trophies in the bin[end if].".
The semen feel addiction description rule is listed in the addiction listing rules.


[!<TheAnalSexAddictionDescriptionRule>+

We explain how much the player likes receiving anal sex.

+!]
This is the anal sex addiction description rule:
	if diaper quest is 0:
		if the analvirgin of the player is 0, say "[if the anal sex addiction of the player <= 1]You absolutely hate receiving anal sex[otherwise if the anal sex addiction of the player <= 3]You dislike receiving anal sex[otherwise if the anal sex addiction of the player <= 5]You tolerate getting fucked up the arse[otherwise if the anal sex addiction of the player <= 7]You enjoy getting fucked up your bumhole[otherwise if the anal sex addiction of the player <= 9]You enjoy and seek out opportunities to get fucked in your [asshole][otherwise]You are completely addicted to getting fat cocks rammed up your [asshole]. You can't think of any better way to achieve orgasm[end if].";
		otherwise say "[if the anal sex addiction of the player <= 1]You absolutely hate the idea of having anything in your butt[otherwise if the anal sex addiction of the player <= 3]You are not a fan of the idea of having anything in your butt[otherwise if the anal sex addiction of the player <= 5]You are curious about the idea of getting fucked in the ass[otherwise if the anal sex addiction of the player <= 7]You are eager to try getting fucked up your bumhole[otherwise if the anal sex addiction of the player <= 9]You are desperate to try proper anal sex and seek out opportunities to get fucked in your [asshole][otherwise]You are completely obsessed with finding someone to take your anal virginity; you have fantasies of it happening with a massive fat monster cock that practically splits you in two[end if].".
The anal sex addiction description rule is listed in the addiction listing rules.

[!<TheSemenTasteAddictionDescriptionRule>+

We explain how much the player likes tasting and drinking semen.

+!]
This is the semen taste addiction description rule:
	if the latex-transformation of the player <= 4 and diaper quest is 0 and the semen taste addiction of the player > 1:
		if the semen taste addiction of the player < 3:
			say "You don't want [semen] anywhere near your mouth, never mind inside it.";
		otherwise if the semen taste addiction of the player < 6:
			say "You are disgusted by the taste of [semen].";
		otherwise if the semen taste addiction of the player < 9:
			say "You are slowly getting used to the taste of [semen].";
		otherwise if the semen taste addiction of the player < 11:
			say "You actually quite like the taste of [semen].";	
		otherwise if the semen taste addiction of the player < 13:
			say "You frequently lick your lips in case you can find and taste a bit more [semen].";
		otherwise if the semen taste addiction of the player < 15:
			say "You would happily admit that [semen] is probably [if the semen taste addiction of the player > the urine taste addiction of the player]your favourite drink[otherwise]one of your favourite drinks[end if].";
		otherwise if the semen taste addiction of the player < 17:
			say "You are desperate to find ways to get to taste and swallow more [semen].";
		otherwise:
			say "You are so addicted to [semen] that you hold it in your mouth and play with it with your tongue for as long as possible before swallowing, to minimize the amount of time that your mouth isn't full of cum!".
The semen taste addiction description rule is listed in the addiction listing rules.

[!<TheUrineTasteAddictionDescriptionRule>+

We explain how much the player likes tasting and drinking urine.

+!]
This is the urine taste addiction description rule:
	if the latex-transformation of the player <= 4 and the urine taste addiction of the player > 1:
		if the urine taste addiction of the player < 3:
			say "You absolutely hate being forced to drink [urine], as any sane person would.";
		otherwise if the urine taste addiction of the player < 6:
			say "You are disgusted by the taste of [urine].";
		otherwise if the urine taste addiction of the player < 9:
			say "You are slowly getting used to the taste of [urine].";
		otherwise if the urine taste addiction of the player < 11:
			say "You actually quite like the taste of [urine].";	
		otherwise if the urine taste addiction of the player < 13:
			say "You enjoy the experience of people pissing in your mouth.";
		otherwise if the urine taste addiction of the player < 15:
			say "You would happily admit that [urine] is probably [if the urine taste addiction of the player > the semen taste addiction of the player]your favourite drink[otherwise]one of your favourite drinks[end if].";
		otherwise if the urine taste addiction of the player < 17:
			say "You get aroused when people use you as a human urinal, and savour the taste of [urine] as if it was a delicacy.";
		otherwise:
			say "You are addicted to [urine]. You love the taste [urine] so much that you are desperate to find more people to use you as a human urinal. You are extremely aroused by the mere thought of getting pissed on.".
The urine taste addiction description rule is listed in the addiction listing rules.

[!<TheCurrentWearingDiaperState>+

Used in the below function, so that the flavour makes more sense depending on whether the player is wearing a diaper or not.

+!]
To say CurrentWearingDiaperState:
	say "[if there is a worn diaper and the player is incontinent][one of]needing diapers[or]being diaper dependent[or]being fully dependent on diapers[purely at random][otherwise if there is a worn cursed diaper][one of]being stuck in a diaper[or]being diaper bound[or]wearing a cursed diaper[or]wearing a diaper you can't even take off[purely at random][otherwise][one of]being diapered[or]wearing a diaper[or]wearing diapers[purely at random][end if]".

[!<TheDiaperAddictionDescriptionRule>+

We explain how much the player likes wearing, using and orgasming in diapers.

+!]
This is the diaper addiction description rule:
	if the diaper addiction of the player > 1 or there is a worn diaper:
		if the diaper addiction of the player < 3:
			say "You absolutely hate [CurrentWearingDiaperState].";
		otherwise if the diaper addiction of the player < 6:
			say "You dislike [CurrentWearingDiaperState].";
		otherwise if the diaper addiction of the player < 9:
			say "You gain no sexual pleasure from [CurrentWearingDiaperState] but you are [if there is a worn diaper]getting used to it[otherwise]open to the idea[end if].";
		otherwise if the diaper addiction of the player < 11:
			say "There's something weirdly [one of]comforting[or]enjoyable[stopping] about [CurrentWearingDiaperState].";	
		otherwise if the diaper addiction of the player < 13:
			say "You actively enjoy wearing and using [if there is a worn diaper]your diaper[otherwise]diapers[end if].";
		otherwise if the diaper addiction of the player < 15:
			say "You get aroused by wearing and using [if there is a worn diaper]your diaper[otherwise]diapers[end if].";
		otherwise if the diaper addiction of the player < 17:
			say "You get extremely turned on by wearing and using [if there is a worn diaper]your diaper[otherwise]diapers[end if]. It's one of your favourite things to do, and you start to crave it if you haven't done it in a while. Wearing normal underwear feels wrong and uncomfortable.";
		otherwise:
			say "You are completely addicted to wearing and using [if there is a worn diaper]your diaper[otherwise]diapers[end if], the bigger and puffier the better. The act of soiling one makes you extremely aroused  You feel great comfort and bliss from [CurrentWearingDiaperState] and so you hate not being in one.".
The diaper addiction description rule is listed in the addiction listing rules.


[!<TheShortSkirtAddictionDescriptionRule>+

If the player has a short skirt addiction, we'll explain it to them here.

+!]
This is the short skirt addiction description rule:
	if short skirts permanent fetish is 2:
		say "Your addiction to extreme short skirts makes you feel uncomfortable in anything but the tiniest dresses and skirts, and has given you a complete aversion to wearing trousers.";
	otherwise if short skirts permanent fetish is 1:
		say "Your body loves wearing short skirts so much that you feel uncomfortable wearing long ones. It also feels wrong to wear trousers.".
The short skirt addiction description rule is listed in the addiction listing rules.


[!<TheToplessExposureAddictionDescriptionRule>+

If the player has a topless exposure addiction, we'll explain it to them here.

+!]
This is the topless exposure addiction description rule:
	if topless-fetish is 1, say "You feel extremely uncomfortable whenever your nipples aren't on display, since it's very important that people objectify you whenever they see you.".
The topless exposure addiction description rule is listed in the addiction listing rules.

[!<TheBottomlessExposureAddictionDescriptionRule>+

If the player has a bottomless exposure addiction, we'll explain it to them here.

+!]
This is the bottomless exposure addiction description rule:
	if no-panties-fetish is 1, say "You feel extremely uncomfortable wearing [if the diaper addiction of the player > 15]big girl panties, since you miss the comfort and security of diapers whenever you do[otherwise if diaper quest is 1]big girl panties, since deep down you know you don't deserve them[otherwise]panties, as you have an extremely powerful fetish for going commando[end if].".
The bottomless exposure addiction description rule is listed in the addiction listing rules.




Addictions ends here.

