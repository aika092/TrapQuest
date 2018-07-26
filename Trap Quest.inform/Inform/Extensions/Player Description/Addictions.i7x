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

[
THE TRINITY OF ADDICTIONS BIBLE:
* Low Sex Obsession & Low Delicateness & Low Orifice Addiction = Player still trying to avoid the sex as much as is reasonably possible
* Low Sex Obsession & Low Delicateness & High Orifice Addiction = https://www.youtube.com/watch?v=yCF90x1oKwQ
* Low Sex Obsession & High Delicateness & Low Orifice Addiction = My body won't enjoy it, but I'll do it if I'm told to...
* Low Sex Obsession & High Delicateness & High Orifice Addiction = "Please fuck my face... Huh? No of course I don't *want* to suck your cock... baka..."
* High Sex Obsession & Low Delicateness & Low Orifice Addiction = Dominatrix who will fight to try and be the one on top!
* High Sex Obsession & Low Delicateness & High Orifice Addiction = "Fine you win... this time.  But next time I'll be on top." (monster initiated sex) OR "Lie down and let me ride your cock you fucking piece of trash" (player initiated sex)
* High Sex Obsession & High Delicateness & Low Orifice Addiction = "Are you going to train my innocent body to become your personal cock-addicted fuckdoll?  Please be gentle with me, Master~"
* High Sex Obsession & High Delicateness & High Orifice Addiction = "Yes, yes, this is more like it, the more the merrier!  If I don't have dicks in two of my holes within the next five seconds I'm gonna be disappointed. Well come on, hurry up!!!" (monster initiated sex) OR "How would you like to feel what it's like to have these huge soft lips wrap around your delicious cock, stud?" (player initiated sex)
]

To decide which body part is most desirable body part:
	let N be 0;
	let A be asshole;
	repeat with B running through body parts:
		if the desire of B > N:
			now A is B;
			now N is the desire of B;
	decide on A.

To decide which number is highest body part sex addiction:
	decide on the desire of most desirable body part.

Definition: yourself is feeling dominant: [Does the player prefer taking a dominant role?]
	if the delicateness of the player < 7, decide yes;
	decide no.

Definition: yourself is feeling submissive: [Does the player prefer taking a submissive role?]
	if the delicateness of the player > (14 - the sex addiction of the player / 4), decide yes;
	decide no.

Definition: yourself is a pervert:  [Does the player enjoy weird kinky stuff?]
	if the sex addiction of the player > 7, decide yes;
	decide no.

Definition: yourself is a nympho:  [Does the player have an extreme obsession for having orgasms?]
	if the sex addiction of the player >= 14, decide yes;
	decide no.

Definition: yourself is a sadist: [Does the player prefer taking a dominant role and is perverted?]
	if the player is feeling dominant and the player is a pervert, decide yes;
	decide no.

Definition: yourself is a masochist: [Does the player prefer taking a submissive role and is perverted?]
	if the player is feeling submissive and the player is a pervert, decide yes;
	decide no.

Definition: a body part is unconditioned rather than conditioned if the desire of it < 6.  [Is body part relatively untouched and not used to this new world?]

Definition: yourself is conditioned rather than unconditioned if there is a conditioned body part. [Is the player's body relatively untouched and not used to this new world?]


[!<TheSexAddictionDescriptionRule>+

We explain how much the player is a pervert and how much they crave sex and orgasms overall.  We take into account delicateness and body part sex addiction where necessary to make sure we don't say anything inaccurate.

+!]
This is the sex addiction description rule:
	if the sex addiction of the player < 4:
		say "You have a relatively [if the player is male]normal[otherwise]low[end if] sex drive for someone of your age. You masturbate [if the player is male]semi-frequently to keep the pipes clean but[otherwise]rather infrequently and always[end if] in the privacy of your own room, and usually to bog-standard vanilla porn. ";
		if the player is feeling dominant:
			if diaper quest is 0, say "You plan to fight anything that would try to have sex with you, and when the only option (except using your safe word) is to get it on, you don't plan to make it easy for your dominator.";
			otherwise say "You plan to fight anything that would try to dominate you, and when the only option (except using your safe word) is to allow it to happen, you don't plan to make it easy for your dominator.";
		otherwise if the player is feeling submissive:
			say "Of course, that won't stop you from obediently submitting to [if diaper quest is 0]sex when it is demanded of you by a superior[otherwise]superiors, whatever they might demand[end if].";
		otherwise:
			say "However you are becoming more and more aware that [if diaper quest is 0]your body[otherwise]submission[end if] is a tool that you can use to pacify aggressive enemies or maybe even convince people to treat you favourably.";
	otherwise if the sex addiction of the player < 7:
		say "You [if submissive sex addict is 0]are starting to [end if]have sex on the brain more than normal, and find yourself getting aroused more easily. ";
		if the player is feeling dominant:
			if diaper quest is 0, say "If you were to choose engage in sex, you'd most certainly want to be on top.";
			otherwise say "If you were to engage in any kind of erotic act, you'd definitely want it to be on your terms, with you in control.";
		otherwise:
			say "You [if submissive sex addict is 0]have begun to [end if]understand the appeal of dominance and submission [if diaper quest is 0]during sex[otherwise]as erotic tools[end if], [if the player is feeling submissive]and you yourself feel much more comfortable taking on the submissive role[otherwise]but to be honest this is hardly the time nor the place to be thinking about such things, if you can help it[end if].";
	otherwise if the sex addiction of the player < 10:
		say "You have a very high sex drive for someone of your age. You are always thinking about something lewd and you get horny frequently and easily. ";
		if the player is feeling dominant:
			say "You love the idea of getting on top of someone and taking control, showing them who's boss in a very erotic manner.";
		otherwise:
			say "You understand that dominance and submission make up a key part of [if diaper quest is 0]sex and other [end if]erotic encounters, [if the player is feeling submissive]and it is very clear to you that your place is always on the bottom[otherwise]and you're still trying to work out whether you are better at being on top or bottom[end if].";
	otherwise if the sex addiction of the player < 13:
		say "You get aroused very easily, and it's sometimes difficult to do the 'right' thing when the 'wrong' thing is more likely to result in an orgasm. ";
		if the player is feeling dominant:
			say "You love the idea of getting on top of someone and taking control, dominating them until they squeal for mercy.";
		otherwise:
			say "You [if the player is not feeling submissive]like to be on top, but will also happily bottom if it's demanded of you[otherwise if highest body part sex addiction < 6 and diaper quest is 0]are eager to have your body trained and reconditioned to love getting used in all the different ways possible[otherwise]aren't even sure that being dominated is the 'wrong' thing any more[end if].";
	otherwise if the sex addiction of the player < 16:
		say "You crave sexual release. As soon as you cum, you start think about how great your next orgasm will be. You can't really think of many situations where you would refuse to let someone play with you. ";
		if the player is feeling dominant:
			say "Of course, you'd fight to be on top if you could.  But getting off is more important than winning.";
		otherwise:
			say "You [if the player is not feeling submissive]like to pretend to fight back but in reality you are happy being on the bottom[otherwise if highest body part sex addiction < 6 and diaper quest is 0]can't wait to have your body used in any way your dominators can think of, regardless of whether you enjoy it or not, until your body is forced to grow to love it[otherwise]are now so naturally submissive that you would be a little horrified if someone was to ask you to dominate them[end if].";
	otherwise:
		say "Your one track mind thinks of little except how you're going to find someone to [if diaper quest is 0]fuck. Even while in the middle of sex you're already trying to work out how to minimise the sad, empty time between one [manly-penis] pulling out and the next one filling you up[otherwise][']play['] with you. Even whilst in the middle of , you're already thinking about how to minimise the sad, empty time between one [']playtime['] and the next[end if]. ";
		if the player is feeling dominant:
			say "You're liable to pounce anyone you see and demand that they [if diaper quest is 0]let you ride their [manly-penis] or tongue[otherwise][']play['] with you[end if].";
		otherwise:
			say "You [if the player is not feeling submissive]like to pretend to fight back but in reality you wouldn't dare to take on the dominant role if you can avoid it[otherwise if highest body part sex addiction < 6 and diaper quest is 0]are well aware that your only purpose in life is to be a living fucktoy for other superior beings, and it doesn't matter at all whether you enjoy it. You'll be forced to get used to it eventually either way[otherwise if diaper quest is 0]are well aware that your only purpose in life is to be a living fucktoy for other superior beings, and you love every minute of it[otherwise]are well aware that your only purpose in life is to be a living playdoll for other people to use for their pleasure, you just hope that you get some orgasms of your own while they're at it[end if]!";
	if debuginfo > 0, say "[input-style](Sex addiction [sex addiction of the player] / 20; Delicateness [delicateness of the player] / 20)[roman type][line break]".
The sex addiction description rule is listed in the addiction listing rules.

[!<TheOralSexAddictionDescriptionRule>+

We explain how much the player likes performing oral sex.

+!]
This is the oral sex addiction description rule:
	if diaper quest is 0, say "[if the player is a pervert and the oral sex addiction of the player <= 3]You gain no personal pleasure from performing oral sex[otherwise if the oral sex addiction of the player <= 1]You hate the idea of having a dick in your mouth[otherwise if the oral sex addiction of the player <= 3]You dislike pleasuring people with your mouth[otherwise if the oral sex addiction of the player <= 5 and the anal sex addiction of the player <= 5]You don't mind giving blowjobs. It's often better than the alternatives[otherwise if the oral sex addiction of the player <= 5]You don't mind giving blowjobs, but you usually find other types of sex more fun[otherwise if the oral sex addiction of the player <= 7]You love giving blowjobs!  The bigger the [manly-penis], the better. You've yet to find a [manly-penis] that you can't fit in your mouth[otherwise if the oral sex addiction of the player <= 9]You take great pleasure in savouring a tasty [manly-penis] or pussy with your mouth. You're the type of girl who eagerly asks permission to suck someone's [manly-penis][otherwise]You have an oral fixation, and you never tire of the feeling of a tasty [manly-penis] on your tongue. Your addiction is so strong that you never completely close your mouth, preferring to instead keep it in a permanent provocative pout - that is, when it's not already wrapped around a nice big shaft[end if].";
	if debuginfo > 0, say "[input-style](Oral sex addiction [oral sex addiction of the player] / 10)[roman type][line break]".
The oral sex addiction description rule is listed in the addiction listing rules.

[!<TheTitfuckAddictionDescriptionRule>+

We explain how much the player likes performing tittyfucks.

+!]
This is the titfuck addiction description rule:
	if the titfuck addiction of the player > 1 and the largeness of breasts >= 5:
		say "[if the titfuck addiction of the player <= 2]You gain no personal pleasure from having a [manly-penis] in between your breasts[otherwise if the titfuck addiction of the player <= 3]You find there is little pleasure for you in relieving [manly-penis]s with your tits[otherwise if the titfuck addiction of the player <= 5 and the anal sex addiction of the player <= 5 and the vaginal sex addiction of the player <= 5]You don't mind giving titjobs. It's often better than the alternatives, and it feels surprisingly pleasant on your skin[otherwise if the titfuck addiction of the player <= 5]You don't mind giving titjobs, but you usually find other types of sex more fun[otherwise if the titfuck addiction of the player <= 7]You love pleasuring men with your boobs!  It just feels so great thanks to your extra-sensitive skin[otherwise if the titfuck addiction of the player <= 9]Having a cock pumping in and out of your cleavage is a great pleasure; your breasts are becoming like another sex organ[otherwise]Whenever your cleavage is empty, your titty flesh aches to feel another phallic object thrusting in and out of its voluptuous fold[end if].";
		if debuginfo > 0, say "[input-style](Titfuck addiction [titfuck addiction of the player] / 10)[roman type][line break]".
The titfuck addiction description rule is listed in the addiction listing rules.

[!<TheVaginalSexAddictionDescriptionRule>+

We explain how much the player likes receiving vaginal sex and the idea of getting pregnant.

+!]
This is the vaginal sex addiction description rule:
	if the player is female and diaper quest is 0:
		say "[if the vaginal sex addiction of the player <= 3 and the virgin of the player is 1 and the anal sex addiction of the player > 5]You've never tried vaginal sex, but why would you?  Your [asshole] makes a perfectly good substitute[otherwise if the vaginal sex addiction of the player <= 3 and the virgin of the player is 1]You've never tried vaginal sex, and you have no particular desire to lose your virginity today[otherwise if the vaginal sex addiction of the player <= 3]Your [vagina] feels completely content being empty and remaining that way[otherwise if the vaginal sex addiction of the player <= 5]You are acutely aware of how good it feels when you have a [manly-penis] in your [vagina][otherwise if the vaginal sex addiction of the player <= 7]Every now and then you feel your [vagina] throb with a deep ache, a desire to be filled by a big [manly-penis][otherwise if the anal sex addiction of the player <= 9]After a while of being empty, your [vagina] begins to feel a deep longing to be filled, stretched and plundered by a big fat [manly-penis][otherwise]As soon as your greedy cunt is empty you begin to crave that feeling of being filled to the brim by [manly-penis], or toys, or anything!  It's like an itch that always needs scratching[end if]. ";
		if debuginfo > 0, say "[input-style](Vaginal sex addiction [vaginal sex addiction of the player] / 10)[roman type][line break]";
		if pregnancy fetish is 1:
			if the pregnancy of the player is 0, say "[if the semen addiction of the player <= 6 and the vaginal sex addiction of the player <= 3]Especially because you have no intention of getting pregnant any time soon![otherwise if the semen addiction of the player <= 5]You are terrified of getting pregnant.[otherwise if the semen addiction of the player <= 9]You would prefer to keep the risk of getting pregnant low, if possible.[otherwise if the semen addiction of the player <= 13]The idea of getting knocked up turns you on.[otherwise if the children of the player is 0]You are desperate to find out what it's like to get pregnant and give birth to a child![otherwise]You long for that feeling of waddling around with a giant pregnant belly and you can't wait to experience the miracle of childbirth again and again![end if]";
			otherwise say "[if the semen addiction of the player <= 5]You feel shame and despair at the fact that you have gotten pregnant.[otherwise if the semen addiction of the player <= 8]You are eager for this shameful and rather inconvenient pregnancy to be over.[otherwise if the semen addiction of the player <= 13]Being pregnant turns you on, and you are quietly fascinated to see how large your belly will grow.[otherwise if the children of the player is 0]You love the feel of being pregnant and are happy for it to last as long as possible, but are also very excited to experience the miracle of childbirth![otherwise if the largeness of belly < 8]You are impatient for your belly to grow even bigger! You long for that feeling of waddling around with a giant pregnant belly so big that you can hardly move, never mind fight.[otherwise]You love love love your giant pregnant belly but you also can't wait to experience the miracle of childbirth again, so that you can go find another stud to knock you up and begin the process again from the start![end if]";
		otherwise:
			say line break.
The vaginal sex addiction description rule is listed in the addiction listing rules.

Definition: yourself is afraid of a creampie:
	if the semen addiction of the player <= 7, decide yes;
	decide no.

Definition: yourself is eager for a creampie:
	if the semen addiction of the player >= 14, decide yes;
	decide no.

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
			say "[if the player is not a pervert]If you had to choose, you'd say your[otherwise]Your[end if] favourite part of sex is the feeling of getting creampied by a fresh hot load.";
		otherwise if the semen addiction of the player < 15:
			if the player is a pervert, say "You [if bukkake fetish is 1]like to wear recent cumblasts on your body as a symbol of pride[otherwise]love the wholesome sense of fulfilment you experience when you feel a man orgasm inside of you[end if].";
			otherwise say "You [if bukkake fetish is 1]can't help but love the feeling of wearing cum on your face and body[otherwise]can't help but love the warm sticky experience when a man orgasms inside of you[end if], even though you know you should find it disgusting.";
		otherwise if the semen addiction of the player < 17:
			if the player is a pervert, say "You are so addicted to getting creampied [if bukkake fetish is 1]and covered in [semen] [end if]that an average human load often isn't enough to satisfy your needs. You find yourself more attracted to giant men[if mythical creature fetish is 1], inhuman monsters[end if] and group sessions.";
			otherwise say "You are so desperate to experience that awesome feeling of getting creampied [if bukkake fetish is 1]and covered in [semen] [end if]that you find yourself willing to offer your body for degrading sex just to experience it, even though the sex itself isn't your thing.";
		otherwise:
			say "You are so addicted to [semen] that you refuse to let it leave your [if the player is male][asshole][otherwise]holes[end if] for as long as you can hold it in[if bukkake fetish is 1]. You don't even consider ever wiping it off your face or body - that would be like throwing hard-earned medals and trophies in the bin[end if].";
		if debuginfo > 0, say "[input-style](Creampie [if bukkake fetish is 1]and bukkake [end if]addiction [semen addiction of the player] / 20)[roman type][line break]".
The semen feel addiction description rule is listed in the addiction listing rules.


[!<TheAnalSexAddictionDescriptionRule>+

We explain how much the player likes receiving anal sex.

+!]
This is the anal sex addiction description rule:
	if diaper quest is 0:
		if the analvirgin of the player is 0, say "[if the anal sex addiction of the player <= 1]Your [asshole] receives no pleasure from anal sex[otherwise if the anal sex addiction of the player <= 3]Your [asshole] has little desire to experience anal sex again[otherwise if the anal sex addiction of the player <= 5]Your [asshole] rather enjoys anal, and you feel little positive twinges of anticipation whenever you think about your past experiences[otherwise if the anal sex addiction of the player <= 7]You periodically feel like your [asshole] is rather empty, and involuntarily clench it around the imaginary [manly-penis] it wishes was there. You have to admit that anal orgasms feel pretty great[otherwise if the anal sex addiction of the player <= 9]Your [asshole] pretty much constantly craves that awesome feeling of being filled and stretched by big [manly-penis]s and you can't help but love the feeling of anal orgasms[otherwise]You body is constantly desperate to have more long fat [manly-penis]s rammed up your [asshole], stretching it to its limits and roughly plowing it until you're squealing with overstimulation. You are completely addicted to the incredible feeling of anal only orgasms[end if].";
		otherwise say "[if the anal sex addiction of the player <= 2]Your [asshole] clenches shut in fear at the thought of having anything inside it[otherwise if the anal sex addiction of the player <= 4]You are curious about the idea of getting fucked in the ass. Just to see how it really feels[otherwise if the anal sex addiction of the player <= 6]Your [asshole] twitches with eager curiosity, encouraging you to find out what proper anal sex is really like[otherwise if the anal sex addiction of the player <= 8]Your [asshole] constantly aches with a deep yearning, desperate to find out what it feels like to have a [manly-penis] inside of it[otherwise]You are completely obsessed with finding someone to take your anal virginity; you have fantasies of it happening with a massive fat monster cock that practically splits you in two[end if].";
		if debuginfo > 0, say "[input-style](Anal sex addiction [anal sex addiction of the player] / 10)[roman type][line break]".
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
			say "You are so addicted to [semen] that you hold it in your mouth and play with it with your tongue for as long as possible before swallowing, to minimize the amount of time that your mouth isn't full of cum!";
		if debuginfo > 0, say "[input-style](Semen taste addiction [semen taste addiction of the player] / 20)[roman type][line break]".
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
			say "You are addicted to [urine]. You love the taste [urine] so much that you are [if the player is a pervert]desperate to find more people to use you as a human urinal. You are [end if]extremely aroused by the mere thought of getting pissed on.";
		if debuginfo > 0, say "[input-style](Urine taste addiction [urine taste addiction of the player] / 20)[roman type][line break]".
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
			say "You are completely addicted to wearing and using [if there is a worn diaper]your diaper[otherwise]diapers[end if], the bigger and puffier the better. The act of soiling one makes you extremely aroused  You feel great comfort and bliss from [CurrentWearingDiaperState] and so you hate not being in one.";
		if debuginfo > 0, say "[input-style](Diaper addiction [diaper addiction of the player] / 20)[roman type][line break]".
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

