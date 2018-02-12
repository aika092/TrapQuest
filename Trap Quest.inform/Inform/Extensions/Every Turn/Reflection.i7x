Reflection by Every Turn begins here.


[!<ComputeHumiliationWithEarningsAndSeconds>+

REQUIRES COMMENTING

+!]
A later time based rule (this is the reflection rule):
	dignify time-seconds;
	if the remainder after dividing time-earnings by 182 < time-seconds:
		if a random number from 1 to 2 is 1:
			say "[HumiliationFlav]";
		otherwise:
			say StatsChangedFlav;
	if the strut of the player is 1 and the player is upright and the player is not immobile and there is a worn heels and the player-class is not succubus, humiliate time-seconds.

[!<humiliationCount:Integer>*

REQUIRES COMMENTING

*!]
humiliation-count is a number that varies. humiliation-count is 0.

[!<HumiliatingSituation>@

REQUIRES COMMENTING

@inherits <Object>

@!]
A humiliating situation is a kind of object.

[!<HumiliatingSituationIsApplicable>+

REQUIRES COMMENTING

+!]
Definition: a humiliating situation (called H) is applicable:
	decide no.

[!<ReflectOnObject>+

REQUIRES COMMENTING

+!]
To reflect on (H - an object):
	do nothing.

[!<throneFucked:HumiliatingSituation>*

REQUIRES COMMENTING

*!]
throne-fucked is a humiliating situation.

[!<ThroneFuckedIsApplicable>+

REQUIRES COMMENTING

+!]
Definition: throne-fucked (called A) is applicable:
	if the humiliation of the player < 30000 and the bimbo of the player < 13 and the throne is filling asshole, decide yes;
	decide no.

[!<ReflectOnThroneFucked>+

REQUIRES COMMENTING

+!]
To reflect on (A - throne-fucked):
	say "[first custom style][one of]This is literally the most embarrassing thing that has ever happened to me.[or]This has got to stop!  Why did I sit here...[or]Okay this is the LAST time I let this happen...[or]Fuck, my belly is ridiculously huge![stopping]".

[!<hugeTits:HumiliatingSituation>*

REQUIRES COMMENTING

*!]
huge-tits is a humiliating situation.

[!<HugeTitsIsApplicable>+

REQUIRES COMMENTING

+!]
Definition: huge-tits (called A) is applicable:
	if diaper quest is 1, decide no;
	if the humiliation of the player < 20000 and the largeness of breasts > 5 and the player-class is not succubus: 
		decide yes;
	otherwise if the player-class is succubus and the largeness of breasts < 5: 
		decide yes;
	otherwise:
		decide no.

[!<ReflectOnHugeTits>+

REQUIRES COMMENTING

+!]
To reflect on (A - huge-tits):
	if the largeness of breasts > the bimbo of the player + 4 and the player-class is not succubus:
		say "[if the bimbo of the player < 9]You look down at your [BreastDesc] and [one of]shudder as you feel your dignity continue to be ripped to shreds[or]whimper with shame[or]shiver with embarrassment[at random][otherwise]You look down at your [BreastDesc] and giggle awkwardly [one of]as the reality of your humiliating situation hits you[or]at their crazy size[or]while trying to think about things other than your current embarrassing situation[at random][end if].";
	otherwise if the player-class is succubus:
		say "A mocking voice echoes within you, saying you should be ashamed of your puny breasts.";
	otherwise:
		say "[if the bimbo of the player < 9]You hold your [BreastDesc] and [one of]shudder as you wonder how much bigger they are going to grow[or]feel their weight. You are not used to this[or]pray that they don't continue to grow[or]hope desperately that nobody can see you like this[at random][otherwise]You feel your [BreastDesc] and giggle awkwardly as you [one of]wonder how much bigger they are going to grow[or]absent-mindedly play with your nipples[or]catch yourself absent-mindedly touching yourself[or]imagine how stupidly big they might end up at this rate[at random][end if].".

[!<hugeHips:HumiliatingSituation>*

REQUIRES COMMENTING

*!]
huge-hips is a humiliating situation.

[!<HugeHipsIsApplicable>+

REQUIRES COMMENTING

+!]
Definition: huge-hips (called A) is applicable:
	if diaper quest is 1, decide no;
	if the humiliation of the player < 20000 and the thickness of hips > 5 and the player-class is not succubus:
		decide yes;
	otherwise if the player-class is succubus and the thickness of hips < 5:
		decide yes;
	otherwise:
		decide no.

[!<ReflectOnHugeHips>+

REQUIRES COMMENTING

+!]
To reflect on (A - huge-hips):
	if the thickness of hips > the bimbo of the player + 5 and the player-class is not succubus:
		say "[if the bimbo of the player < 9]You feel your [ShortDesc of hips] [one of]wobbling behind you[or]bouncing wildly[at random] and pray that no[one of] perverted businessmen are[or]body you know is[or]thing is[or]body is[sticky random] watching you play this game.[otherwise]You feel your [ShortDesc of hips] [one of]wobbling behind you[or]bouncing wildly[at random] and realise that people could be watching you...[line break][second custom style]Oh my gawd, maybe they're all wanking over [one of]me[or]my body[or]my ass[at random] right now?[end if]";
	otherwise if the player-class is succubus:
		say "A mocking voice echoes within you, saying you should be ashamed of your stick of a body.";
	otherwise if the player is not immobile:
		say "[if the bimbo of the player < 9]You hold your [ShortDesc of hips] to stop them [one of]swaying sexily behind you[or]wobbling[at random], and pray that no[one of] perverted businessmen are[or]body is[sticky random] watching you play this game.[otherwise]You grab hold of your wobbling [HipDesc] and realise that people could be watching you...[end if]".

[!<hugeBelly:HumiliatingSituation>*

REQUIRES COMMENTING

*!]
huge-belly is a humiliating situation.

[!<HugeBellyIsApplicable>+

REQUIRES COMMENTING

+!]
Definition: huge-belly (called A) is applicable:
	if the humiliation of the player < 20000 and the largeness of belly > 5 and (the pregnancy of the player > 0 or (the player is male and pregnancy fetish is 1)), decide yes;
	decide no.

[!<ReflectOnHugeBelly>+

REQUIRES COMMENTING

+!]
To reflect on (A - huge-belly):
	if the largeness of belly * 2 > the bimbo of the player + 4:
		say "[if the player is male]You look down at your [BellyDesc] and [one of]realise how fucked up your situation really is[or]wonder if this is what it feels like to be pregnant[or]feel a shiver of shame go down your spine[at random].[otherwise if the largeness of belly > 4]You put a hand on your [BellyDesc].[line break][variable custom style][one of]I can definitely feel kicking.[or]I just can't believe I got myself knocked up so quickly.[or]I don't want to give birth...[at random][otherwise]You put a hand on your [BellyDesc].[line break][first custom style][one of]Was that just me or did I just feel kicking??[or]Can I get pregnant in this game??[or]Please don't tell me this means what I think it means...[at random][end if]";
	otherwise:
		say "[if the player is male]You look down at your [BellyDesc] and [one of]realise how ridiculous your situation really is[or]are suddenly very thankful that you can't get pregnant[or]quiver as you think about how large it might be able to grow to in this game..[at random].[otherwise]You put a hand on your [BellyDesc].[line break][first custom style][one of]So this is what it's like to feel pregnant?  How humiliating...[or]Please don't grow any more...[or]I mustn't let anything else cum inside me![at random][end if]".

[!<crawlingAround:HumiliatingSituation>*

REQUIRES COMMENTING

*!]
crawling-around is a humiliating situation.

[!<CrawlingAroundIsAppropriate>+

REQUIRES COMMENTING

+!]
Definition: crawling-around (called A) is applicable:
	if (the humiliation of the player < 10000 or the player-class is succubus or the class of the player is princess) and the player is prone, decide yes;
	decide no.

[!<ReflectOnCrawlingAround>+

REQUIRES COMMENTING

+!]
To reflect on (A - crawling-around):
	if the class of the player is princess:
		say "[first custom style]Why am I crawling around on my knees like some sort of peasant...[roman type]";
	otherwise if the bimbo of the player < 3 and the player-class is not succubus:
		say "[first custom style]I'm on my knees [one of]crawling through this place[or]crawling around like a [if diaper lover >= 1]kid[otherwise]dog[end if][or]like some kind of [if diaper quest is 1]baby[otherwise]common slut[end if][at random]. How humiliating is this!";
	otherwise if the player-class is succubus:
		say "A mocking voice in your head chides you for crawling like a pathetic mortal.";
	otherwise:
		say "[first custom style]I'm on my knees [one of]crawling through this place[or]crawling around[or]with my butt high in the air[at random]. How crazy is this!".

[!<outrageousHeels:HumiliatingSituation>*

REQUIRES COMMENTING

*!]
outrageous-heels is a humiliating situation.

[!<OutrageousHeelsIsApplicable>+

REQUIRES COMMENTING

+!]
Definition: outrageous-heels (called A) is applicable:
	let H be a random worn heels;
	let O be the outrage of H;
	if the humiliation of the player < 15000 and the bimbo of the player < 12 and the player is upright and O is too humiliating and the player-class is not succubus:
		decide yes;
	otherwise if the player-class is succubus and the player is upright and O < 8:
		decide yes;
	otherwise:
		decide no.

[!<ReflectOnOutrageousHeels>+

REQUIRES COMMENTING

+!]
To reflect on (A - outrageous-heels):
	if the player-class is not succubus:
		say "You [one of]wobble unsteadily on your[or]can't believe you're strutting around in[or]are constantly aware of the clickety clack sound coming from you strutting around in these[at random] ridiculous heels. How embarrassing is this!";
	otherwise:
		say "A voice inside you quietly tells you how demeaning it is that you aren[']t wearing proper heels!".

[!<outrageousBra:HumiliatingSituation>*

REQUIRES COMMENTING

*!]
outrageous-bra is a humiliating situation.

[!<OutrageousBraIsApplicable>+

REQUIRES COMMENTING

+!]
Definition: outrageous-bra (called A) is applicable:
	let B be a random worn bra;
	let O be the outrage of B;
	if the humiliation of the player < 15000 and the bimbo of the player < 13 and O is too humiliating, decide yes;
	decide no.

[!<ReflectOnOutrageousBra>+

REQUIRES COMMENTING

+!]
To reflect on (A - outrageous-bra):
	say "[first custom style]I can't believe [one of]I'm wearing this[or][if the largeness of breasts > 2]I'm supporting my tits with this[otherwise]I'm pointlessly wearing this[end if][at random] ridiculous [random worn bra][first custom style]!".

[!<outrageousKnickers:HumiliatingSituation>*

REQUIRES COMMENTING

*!]
outrageous-knickers is a humiliating situation.

[!<OutrageousKnickersIsApplicable>+

REQUIRES COMMENTING

+!]
Definition: outrageous-knickers (called A) is applicable:
	let B be a random worn knickers;
	let O be the outrage of B;
	if the humiliation of the player < 18000 and the bimbo of the player < 13 and O is too humiliating, decide yes;
	decide no.

[!<ReflectOnOutrageousKnickers>+

REQUIRES COMMENTING

+!]
To reflect on (A - outrageous-knickers):
	let K be a random worn knickers;
	if K is plug panties and latex prisoner is 0:
		say "[if the bimbo of the player < 12][first custom style][one of]What the fuck am I thinking, wearing these ridiculous latex plug panties?[or]Why did I choose to wear a pair of invasive fetish panties?[or]I feel so full... I have no idea why I opted to wear these latex plug panties...[at random][otherwise][second custom style]These panties sure are keeping me full everywhere I go... [one of]how humiliating[or]and it's just turning me on[or]imagine if my friends could see me right now... so embarrassing[at random]![end if]";
	otherwise if K is diaper:
		let B be the diaper addiction of the player - the weight of K;
		say "[if B < 3][first custom style]I can't even walk properly... I'm going to die of embarrassment if anyone else sees me waddling around![otherwise if B < 7][first custom style]I can't take this embarrassment.. people can see that I'm wearing a diaper![otherwise if B < 11][variable custom style]Imagine if my friends could see me waddling around in a diaper!  I'd be so humiliated...[otherwise if B < 15][second custom style]I wonder if I can make waddling look cute?[otherwise][second custom style]I'm wearing a diaper so that everyone can see what a bad girl I've been![end if]";
	otherwise:
		say "[first custom style]What an embarrassing [if the armour of K > 6]pair of [end if]undies to be wearing![one of][or]  I would never been seen dead in this back home.[or]  I really hope nobody is able to see me like this.[or]  I feel like such a slut.[at random]".

[!<outrageousCorset:HumiliatingSituation>*

REQUIRES COMMENTING

*!]
outrageous-corset is a humiliating situation.

[!<OutrageousCorsetIsApplicable>+

REQUIRES COMMENTING

+!]
Definition: outrageous-corset (called A) is applicable:
	if diaper quest is 1, decide no;
	let B be a random worn corset;
	let O be the outrage of B;
	if the humiliation of the player < 15000 and the bimbo of the player < 13 and O is too humiliating, decide yes;
	decide no.

[!<ReflectOnOutrageousCorset>+

REQUIRES COMMENTING

+!]
To reflect on (A - outrageous-corset):
	say "[if the bimbo of the player < 10][first custom style]This corset [one of]is much too slutty for me to be wearing...[or]makes me look like a complete tart![or]could get me mistaken for a common whore![at random][otherwise][second custom style]This corset really does make my waist and hips look sexy...[one of] no wonder everything wants to fuck me![or]  I guess people can't be blamed if they want to screw me![or][at random][end if]".

[!<outrageousCatsuit:HumiliatingSituation>*

REQUIRES COMMENTING

*!]
outrageous-catsuit is a humiliating situation.

[!<OutrageousCatsuitIsApplicable>+

REQUIRES COMMENTING

+!]
Definition: outrageous-catsuit (called A) is applicable:
	let B be a random worn catsuit;
	let O be the outrage of B;
	if B is crotch covering or B is not fully exposing, decide no; [e.g. pink catsuit]
	if the humiliation of the player < 20000 and the bimbo of the player < 15 and O is too humiliating, decide yes;
	decide no.

[!<ReflectOnOutrageousCatsuit>+

REQUIRES COMMENTING

+!]
To reflect on (A - outrageous-catsuit):
	if the bimbo of the player < 9 and vagina is lewdly exposed:
		say "[first custom style][one of]If anyone I know ever sees photos of me in this catsuit, [if the player is female]with my tits and [vagina] on full display, [end if]I will be so mortified that I will just curl up into a ball and die.[or]Everyone can see my genitals... this catsuit is just so pointless![stopping]";
	otherwise if the dexterity of the player > 6 and the bimbo of the player > 7:
		say "[second custom style][one of]I know this catsuit is completely outrageous, but I do somehow feel more flexible![or]This naughty catsuit just makes me feel so limber![stopping]";
	otherwise:
		say "[variable custom style][one of]This catsuit has holes specifically for my chest and [genitals]. This must be the sluttiest item of clothing ever made.[or]I need to get this catsuit off as soon as possible, before someone else sees me![stopping]".

[!<outrageousFetishDress:HumiliatingSituation>*

REQUIRES COMMENTING

*!]
outrageous-fetish-dress is a humiliating situation.

[!<OutrageousFetishDressIsApplicable>+

REQUIRES COMMENTING

+!]
Definition: outrageous-fetish-dress (called A) is applicable:
	let B be a random worn fetish dress;
	let O be the outrage of B;
	if the humiliation of the player < 20000 and the bimbo of the player < 15 and O is too humiliating, decide yes;
	decide no.

[!<ReflectOnOutrageousFetishDress>+

REQUIRES COMMENTING

+!]
To reflect on (A - outrageous-fetish-dress):
	let O be a random worn fetish dress;
	if O is superheroine fetish dress:
		say "[first custom style][one of][if the largeness of breasts > 2]This latex dress shows WAY too much cleavage. I'm not a slut![otherwise]I don't know what's more embarrassing, the fact that this dress has such a slutty neckline or how ridiculous it looks with my flat chest.[end if][or]Whatever benefits this latex dress is giving me are not worth looking so trashy![stopping]";
	otherwise if O is translucent fetish dress:
		say "[first custom style][one of][if the size of penis > 3 and the number of worn chastity cages is 0 and 0 is the number of worn knickers]Okay this is too much, my dick is literally showing underneath this ridiculously high latex dress..[otherwise]This latex dress is just too much. Everyone can catch glimpses of my crotch whenever I move my legs![end if][or]Whatever benefits this latex dress is giving me are not worth looking so trashy![stopping]";
	otherwise if O is pink fetish dress:
		say "[first custom style][one of]This latex dress is just too much. Everyone can catch glimpses of my crotch whenever I move my legs![or]Whatever benefits this latex dress is giving me are not worth looking so trashy![stopping]";
	otherwise if O is low cut fetish dress:
		say "[first custom style][one of][if the largeness of breasts > 7]This latex dress shows WAY too much cleavage. Everything that looks at me is going to want to fuck![otherwise if the largeness of breasts > 2]I don't know what's more embarrassing, the fact that this dress has such an unacceptably slutty neckline or how ridiculous it looks with my small boobs.[otherwise]I don't know what's more embarrassing, the fact that this dress has such an unacceptably slutty neckline or how ridiculous it looks with my flat chest.[end if][or]Whatever benefits this latex dress is giving me are not worth looking so trashy![stopping]";
	otherwise if O is windowed fetish dress:
		say "[first custom style][one of]What is the point in even wearing this latex dress?! Everyone can still see my private parts through this slutty material, and it's probably even more provocative than wearing nothing at all.[or]Whatever benefits this latex dress is giving me are not worth looking so trashy![stopping]";
	otherwise if O is black fetish hobble dress:
		say "[first custom style][one of]Why would anyone wear a dress like this?  I can't even walk properly.[or]Whatever benefits this latex dress is giving me are not worth looking so trashy![stopping]".

[!<outrageousEveningDress:HumiliatingSituation>*

REQUIRES COMMENTING

*!]
outrageous-evening-dress is a humiliating situation.

[!<OutrageousEveningDressIsApplicable>+

REQUIRES COMMENTING

+!]
Definition: outrageous-evening-dress (called A) is applicable:
	let B be a random worn evening dress;
	let O be the outrage of B;
	if the humiliation of the player < 20000 and the bimbo of the player < 15 and O is too humiliating, decide yes;
	decide no.

[!<ReflectOnOutrageousEveningDress>+

REQUIRES COMMENTING

+!]
To reflect on (A - outrageous-evening-dress):
	say "[variable custom style]Oh god, I can barely [if the player is upright]walk[otherwise]crawl[end if] in this tight dress. And it doesn't even provide me with much modesty!".

[!<outrageousNightie:HumiliatingSituation>*

REQUIRES COMMENTING

*!]
outrageous-nightie is a humiliating situation.

[!<OutrageousNightieIsApplicable>+

REQUIRES COMMENTING

+!]
Definition: outrageous-nightie (called A) is applicable:
	let B be a random worn nightie;
	let O be the outrage of B;
	if the humiliation of the player < 20000 and the bimbo of the player < 15 and O is too humiliating, decide yes;
	decide no.

[!<ReflectOnOutrageousNightie>+

REQUIRES COMMENTING

+!]
To reflect on (A - outrageous-nightie):
	say "[variable custom style]Wearing this slutty nightie is just completely unacceptable!".

[!<outrageousTubeTop:HumiliatingSituation>*

REQUIRES COMMENTING

*!]
outrageous-tubetop is a humiliating situation.

[!<OutrageousTubeTopIsApplicable>+

REQUIRES COMMENTING

+!]
Definition: outrageous-tubetop (called A) is applicable:
	let B be a random worn tube top;
	let O be the outrage of B;
	if the humiliation of the player < 20000 and the bimbo of the player < 15 and O is too humiliating, decide yes;
	decide no.

[!<ReflectOnOutrageousTubeTop>+

REQUIRES COMMENTING

+!]
To reflect on (A - outrageous-tubetop):
	say "[variable custom style]I wouldn't be seen dead in this tube top back home..".

[!<outrageousMilkingHarness:HumiliatingSituation>*

REQUIRES COMMENTING

*!]
outrageous-milking-harness is a humiliating situation.

[!<OutrageousMilkingHarnessIsApplicable>+

REQUIRES COMMENTING

+!]
Definition: outrageous-milking-harness (called A) is applicable:
	let B be a random worn milking harness;
	let O be the outrage of B;
	if the humiliation of the player < 20000 and the bimbo of the player < 15 and O is too humiliating, decide yes;
	decide no.

[!<ReflectOnOutrageousMilkingHarness>+

REQUIRES COMMENTING

+!]
To reflect on (A - outrageous-milking-harness):
	say "[variable custom style]I can't believe what this crazy harness is doing to me... and even worse, everyone can see exactly what's happening!".

[!<outrageousGangBangShirt:HumiliatingSituation>*

REQUIRES COMMENTING

*!]
outrageous-gang-bang-shirt is a humiliating situation.

[!<OutrageousGangBangShirtIsApplicable>+

REQUIRES COMMENTING

+!]
Definition: outrageous-gang-bang-shirt (called A) is applicable:
	let B be a random worn gang bang girl T-shirt;
	let O be the outrage of B;
	if the humiliation of the player < 20000 and the bimbo of the player < 15 and O is too humiliating, decide yes;
	decide no.

[!<ReflectOnOutrageousGangBangShirt>+

REQUIRES COMMENTING

+!]
To reflect on (A - outrageous-gang-bang-shirt):
	say "[variable custom style]I really shouldn't be wearing this T-shirt... if I get forced into some kind of gang bang situation right now, I don't think my mind would survive... never mind my [asshole]!".

[!<outrageousChastity:HumiliatingSituation>*

REQUIRES COMMENTING

*!]
outrageous-chastity is a humiliating situation.

[!<OutrageousChastityIsApplicable>+

REQUIRES COMMENTING

+!]
Definition: outrageous-chastity (called A) is applicable:
	if the humiliation of the player < 25000 and the bimbo of the player < 12 and there is a worn chastity cage and diaper quest is 0, decide yes;
	decide no.

[!<ReflectOnOutrageousChastity>+

REQUIRES COMMENTING

+!]
To reflect on (A - outrageous-chastity):
	if the player is male, say "[variable custom style][if the player is horny]I need to cum so badly, but this chastity cage won't let me... I just feel so helpless![otherwise if the analvirgin of the player is 1]But if this chastity cage is stopping me from having sex with my penis, how is this game going to be about sex?[otherwise if the soreness of asshole < 8]This chastity cage!  They've locked away the only manly part of me left.[otherwise]Get this stupid chastity cage off me!  My poor [asshole] can't take much more of this...[end if]";
	otherwise say "[variable custom style][if the player is horny]I need to cum so badly, but this chastity cage won't let me... I just feel so helpless![otherwise if the virgin of the player is 1]I guess this chastity belt is preserving my virginity, but getting fucked in the [asshole] isn't preserving my dignity...[otherwise if pregnancy fetish is 1 and the pregnancy of the player is 0]Well I guess having to wear a chastity belt is one way to make sure I don't get pregnant, but it does mean that my [asshole] is the only thing left for monsters and traps...[otherwise if the pregnancy of the player > 0]What the fuck is the point of wearing this chastity belt when I'm already pregnant?![otherwise if the soreness of asshole < 8]I'm not even a virgin, but I'm stuck in this stupid chastity belt!  Everything in the game will just want to fuck my [asshole] now...[otherwise]Get this stupid chastity cage off me!  My poor [asshole] can't take much more of this...[end if]".

[!<outrageousGag:HumiliatingSituation>*

REQUIRES COMMENTING

*!]
outrageous-gag is a humiliating situation.

[!<OutrageousGagIsApplicable>+

REQUIRES COMMENTING

+!]
Definition: outrageous-gag (called A) is applicable:
	if the humiliation of the player < 25000 and the bimbo of the player < 14 and there is a worn ballgag, decide yes;
	decide no.

[!<ReflectOnOutrageousGag>+

REQUIRES COMMENTING

+!]
To reflect on (A - outrageous-gag):
	let G be a random worn ballgag;
	if G is small ballgag, say "[variable custom style]I can't even talk with this ballgag in my mouth, and it's making me drool everywhere. Yuck!";
	if G is large ballgag or G is huge ballgag, say "[variable custom style][if the intelligence of the player < 9]Ow ow ow, this ballgag is making my jaw ache!  Get it off![otherwise]I can't even talk with this ballgag in my mouth, and it's making me drool everywhere. Yuck![end if]";
	if G is cock pacifier, say "[variable custom style][if the semen taste addiction of the player > 11]I guess it's pretty embarrassing to have this fake [manly-penis] in my mouth, but at least it keeps me hydrated!  Yum![otherwise]This [manly-penis] pacifier is so humiliating. Not only can everyone see that I've got a pacifier in my mouth, but while it's in my mouth I'm basically permanently sucking [manly-penis]![end if]".

[!<chubbySlut:HumiliatingSituation>*

REQUIRES COMMENTING

*!]
chubby-slut is a humiliating situation.

[!<ChubbySlutIsApplicable>+

REQUIRES COMMENTING

+!]
Definition: chubby-slut (called A) is applicable:
	if the humiliation of the player < 25000 and the fat-weight of the player > 8 and weight gain fetish is 1, decide yes;
	decide no.

[!<ReflectOnChubbySlut>+

REQUIRES COMMENTING

+!]
To reflect on (A - chubby-slut):
	if the fat-weight of the player > 30:
		say "[variable custom style][one of]Oh god, I'm so obese I can hardly move![or]I'm such a waste of space, literally.[or]I'm so disgracefully lazy that my body has ended up like this. Don't look at me![in random order]";
	otherwise if the fat-weight of the player > 22:
		say "[variable custom style][one of]I'm so fat... I look disgusting![or]I'm so horribly fat!  Nobody is going to want to have sex with me...[or]If I don't even respect myself enough to keep in shape, then why should other people respect me?[in random order]";
	otherwise if the fat-weight of the player > 14:
		say "[variable custom style][one of]Uh-oh, I'm really quite a heavy [if the player is female]girl[otherwise]person[end if] now aren't I?[or]Oops, I've really started to let myself go!  I should probably be less lazy...[in random order]";
	otherwise if the fat-weight of the player > 8:
		say "[variable custom style][one of]Oh dear, I'm getting a bit unfit, aren't I?[or]Oh dear, I feel like I'm getting a bit chubby![in random order]".

[!<crotchOnShow:HumiliatingSituation>*

REQUIRES COMMENTING

*!]
crotch-on-show is a humiliating situation.

[!<CrotchOnShowIsApplicable>+

REQUIRES COMMENTING

+!]
Definition: crotch-on-show (called A) is applicable:
	if the humiliation of the player < 8000 and the bimbo of the player < 6 and the player is not crotch covered, decide yes;
	decide no.

[!<ReflectOnCrotchOnShow>+

REQUIRES COMMENTING

+!]
To reflect on (A - crotch-on-show):
	say "[first custom style][one of]Oh god, [if the number of worn clothing is 0]I'm[otherwise]I might as well be[end if] completely naked!  How humiliating![or]Are they watching me?  They must be, and they can see all my bits!  How humiliating...[or]I really really need some clothes!  This is too embarrassing![at random]".



[!<SayHumiliationFlav>+

REQUIRES COMMENTING

+!]
To say HumiliationFlav:
	let H be a random applicable humiliating situation;
	reflect on H;
	say "[roman type][line break]".

[!<SayStatsChangedFlav>+

REQUIRES COMMENTING

+!]
To say StatsChangedFlav:
	let N be 0;
	while N < 12:
		now N is a random number between 1 and 50;
		if N is 1:
			if the old strength of the player is 0:
				now the old strength of the player is the flat strength of the player;
			otherwise if the old strength of the player < the flat strength of the player - 2:
				if the flat strength of the player > 24:
					if the bimbo of the player < 9, say "[first custom style][line break]I feel like I could move mountains![roman type][line break]";
					otherwise say "[second custom style][line break]I feel really powerful for such a little [if the class of the player is princess]princess[otherwise]girl[end if]![roman type][line break]";
				otherwise if the flat strength of the player > 19:
					if the bimbo of the player < 7, say "[first custom style][line break]I feel very strong. I'll rip these traps to pieces![roman type][line break]";
					otherwise say "[second custom style][line break]How can such a tiny body feel so strong?[roman type][line break]";
				otherwise if the flat strength of the player > 14:
					if the bimbo of the player < 11, say "[first custom style][line break][if the largeness of breasts < 11]My muscles feel good![otherwise]I'm feeling stronger, which is good because I need the strength to carry around these ridiculous boobs.[end if][roman type][line break]";
					otherwise say "[second custom style][line break]I feel like I can go for hours![roman type][line break]";
				otherwise if the flat strength of the player > 10:
					if the bimbo of the player < 8, say "[first custom style][line break]Hmm, I feel stronger. Come and get me![roman type][line break]";
					otherwise say "[second custom style][line break]I feel stronger. Hopefully now I can escape from the scary traps more easily.[roman type][line break]";
				otherwise if the flat strength of the player > 6:
					if the bimbo of the player < 8, say "[first custom style][line break]I feel a bit less weak now.[roman type][line break]";
					otherwise say "[second custom style][line break]Ooh I feel a bit less weak now.[if the largeness of breasts > 10]  I need the strength to hold up my humongous boobs![end if][roman type][line break]";
				otherwise if the flat strength of the player > 1:
					say "[first custom style][line break]I'm still very weak, but I can move a bit now.[roman type][line break]";
				now the old strength of the player is the flat strength of the player;
				break;
			otherwise if the old strength of the player > the flat strength of the player + 2:
				if the flat strength of the player > 20:
					if the bimbo of the player < 9, say "[first custom style][line break]I feel less like a superhero now. It was good while it lasted...[roman type][line break]";
					otherwise say "[second custom style][line break]I don't feel quite as super strong any more. Oh well, little girls aren't supposed to be super strong anyway.[roman type][line break]";
				otherwise if the flat strength of the player > 16:
					if the bimbo of the player < 11, say "[first custom style][line break]I don't feel quite as eager to punch something any more.[roman type][line break]";
					otherwise say "[second custom style][line break]My legs are feeling weaker[if the largeness of breasts > 9], especially under the weight of these tits[end if].[roman type][line break]";
				otherwise if the flat strength of the player > 12:
					if the bimbo of the player < 9, say "[first custom style][line break]I feel weaker, and less confident about being able to break out of traps.[roman type][line break]";
					otherwise say "[second custom style][line break]I'm not feeling as strong... I might not be able to escape from the [if the bimbo of the player < 12]scary [end if]traps![roman type][line break]";
				otherwise if the flat strength of the player > 8:
					if the bimbo of the player < 7, say "[first custom style][line break]My knees are feeling weak.[roman type][line break]";
					otherwise say "[second custom style][line break]My knees are all wobbly![roman type][line break]";
				otherwise if the flat strength of the player > 4:
					if the bimbo of the player < 8, say "[first custom style][line break]My muscles feel very weak now...[roman type][line break]";
					otherwise say "[second custom style][line break]I feel like I can hardly stand![roman type][line break]";
				otherwise:
					say "[second custom style][line break]I feel completely powerless![roman type][line break]";
				now the old strength of the player is the flat strength of the player;
				break;
		if N is 2:
			if the old dexterity of the player is 0:
				now the old dexterity of the player is the flat dexterity of the player;
			otherwise if the old dexterity of the player < the flat dexterity of the player - 2:
				if the flat dexterity of the player < 7:
					say "[one of][line break][variable custom style][line break]I'm still very stiff, but I can move a bit now.[roman type][line break][or][stopping]";
				otherwise if the flat dexterity of the player < 11:
					if the bimbo of the player < 7, say "[one of][line break][first custom style][line break]I feel a bit less stiff now...[roman type][line break][or][stopping]";
					otherwise say "[one of][line break][second custom style][line break]Ooh I feel a bit less stiff now. I hope my flexibility comes back soon...[roman type][line break][or][stopping]";
				otherwise if the flat dexterity of the player < 15:
					if the bimbo of the player < 7, say "[one of][line break][first custom style][line break]Hmm, I feel more limber!  That could be useful.[roman type][line break][or][stopping]";
					otherwise say "[one of][line break][second custom style][line break]I like feeling flexible![roman type][line break][or][stopping]";
				otherwise if the flat dexterity of the player < 19:
					if the bimbo of the player < 7, say "[one of][line break][first custom style][line break]I feel fast![roman type][line break][or][stopping]";
					otherwise say "[one of][line break][second custom style][line break]I can touch my toes without bending my knees![roman type][line break][or][stopping]";
				otherwise if the flat dexterity of the player < 23:
					if the bimbo of the player < 7, say "[one of][line break][first custom style][line break]My hand eye coordination feels better than usual.[roman type][line break][or][stopping]";
					otherwise say "[one of][line break][second custom style][line break]I feel bouncy. I think I can jump higher than before![roman type][line break][or][stopping]";
				otherwise:
					if the bimbo of the player < 11, say "[one of][line break][first custom style][line break]I feel extremely fast![roman type][line break][or][stopping]";
					otherwise say "[one of][line break][second custom style][line break]I'm so flexible I can touch my elbows together behind my back!  Oops, that just makes me push my chest out even more provocatively!  Tee hee![roman type][line break][or][stopping]";
				now the old dexterity of the player is the flat dexterity of the player;
				break;
			otherwise if the old dexterity of the player > the flat dexterity of the player + 2:
				if the flat dexterity of the player < 4:
					say "[one of][line break][variable custom style][line break]I feel basically paralysed![roman type][line break][or][stopping]";
				otherwise if the flat dexterity of the player < 8:
					if the bimbo of the player < 8, say "[one of][line break][first custom style][line break]My muscles feel very stiff now...[roman type][line break][or][stopping]";
					otherwise say "[one of][line break][second custom style][line break]I feel like I can hardly move![if the bimbo of the player > 10]  Maybe I shouldn't even bother trying to escape...[end if][roman type][line break][or][stopping]";
				otherwise if the flat dexterity of the player < 12:
					if the bimbo of the player < 8, say "[one of][line break][first custom style][line break]I'm starting to feel pretty sluggish.[roman type][line break][or][stopping]";
					otherwise say "[one of][line break][second custom style][line break]I'm feeling pretty stiff, I might not be able to escape from anything![roman type][line break][or][stopping]";
				otherwise if the flat dexterity of the player < 16:
					if the bimbo of the player < 7, say "[one of][line break][first custom style][line break]I feel less fast...[roman type][line break][or][stopping]";
					otherwise say "[one of][line break][second custom style][line break]I'm not feeling as flexible... I might not be able to escape from the [if the bimbo of the player < 9]scary [end if]traps![roman type][line break][or][stopping]";
				otherwise if the flat dexterity of the player < 20:
					if the bimbo of the player < 7, say "[one of][line break][first custom style][line break]My hand eye coordination feels better than usual.[roman type][line break][or][stopping]";
					otherwise say "[one of][line break][second custom style][line break]I don't think I can jump really high any more.[if the largeness of breasts > 13]  Oh well, it still makes my boobs bounce around![end if][roman type][line break][or][stopping]";
				otherwise:
					if the bimbo of the player < 12, say "[one of][line break][first custom style][line break]I feel less like a ninja now.[roman type][line break][or][stopping]";
					otherwise say "[one of][line break][second custom style][line break]Aww, I'm not flexible enough to touch my elbows together in front of me any more. Oops, that just makes me push my cleavage together even more provocatively!  Tee hee![roman type][line break][or][stopping]";
				now the old dexterity of the player is the flat dexterity of the player;
				break;
		if N is 3:
			if the old intelligence of the player is 0:
				now the old intelligence of the player is the flat intelligence of the player;
			otherwise if the flat intelligence of the player < the old intelligence of the player - 2:
				if the flat intelligence of the player < 6:
					if the bimbo of the player < 12, say "[one of][line break][first custom style][line break]The fog is starting to clear, I think?[roman type][line break][or][stopping]";
					otherwise say "[one of][line break][second custom style][line break]I think I can remember my name... Jessica?[roman type][line break][or][stopping]";
				otherwise if the flat intelligence of the player < 10:
					if the bimbo of the player < 14, say "[one of][line break][first custom style][line break]I can think more clearly now![roman type][line break][or][stopping]";
					otherwise say "[one of][line break][second custom style][line break]I feel smart, like I can spell big words!  F-E-L-L-A-T-I-O. Fellatio!  Yaay![roman type][line break][or][stopping]";
				otherwise if the flat intelligence of the player < 14:
					if the bimbo of the player < 11, say "[one of][line break][first custom style][line break]Incredible, it seems like the mind altering effects of this game can even affect my intelligence?  I feel smart.[roman type][line break][or][stopping]";
					otherwise say "[one of][line break][second custom style][line break]Incredible, it seems like the mind altering effects of this game can even affect my intelligence, as well as my desire to suck [manly-penis]. I feel like a smart slut?  That could be okay...[roman type][line break][or][stopping]";
				otherwise if the flat intelligence of the player < 20:
					if the bimbo of the player < 13, say "[one of][line break][first custom style][line break]I can do quadratic equations![roman type][line break][or][stopping]";
					otherwise say "[one of][line break][second custom style][line break]Facts are appearing in my head... did you know the average ejaculation has over 180 million sperm?  Yummy...[roman type][line break][or][stopping]";
				otherwise if the flat intelligence of the player < 25:
					if the bimbo of the player < 13, say "[one of][line break][first custom style][line break]I know pi to ten-thousand places![roman type][line break][or][stopping]";
					otherwise say "[one of][line break][second custom style][line break]I feel like my brain is one half Einstein, one half Barbie![roman type][line break][or][stopping]";
				otherwise:
					if the bimbo of the player < 13, say "[one of][line break][first custom style][line break]Hmm, I think I just solved chess. That was easy.[roman type][line break][or][stopping]";
					otherwise say "[one of][line break][second custom style][line break]Hmm, turns out that P = NP. I can't believe I just did that in my head. Though it'd be more fun if the P stood for Penis!  . [roman type][line break][or][stopping]";
				now the old intelligence of the player is the flat intelligence of the player;
				break;
			otherwise if the flat intelligence of the player > the old intelligence of the player + 2:
				if the flat intelligence of the player < 3:
					if the bimbo of the player < 9, say "[one of][line break][first custom style][line break]Can't... think... straight...[roman type][line break][or][stopping]";
					otherwise say "[one of][line break][second custom style][line break]Keep trying to think about stuff, but, like, I just keep thinking about [manly-penis]s.. tee-hee![roman type][line break][or][stopping]";
				otherwise if the flat intelligence of the player < 6:
					if the bimbo of the player < 6, say "[one of][line break][first custom style][line break]Ugh, I've got a bit of a headache.[roman type][line break][or][stopping]";
					otherwise say "[one of][line break][second custom style][line break]What's Wal-Mart? Do they like make walls there?[roman type][line break][or][stopping]";
				otherwise if the flat intelligence of the player < 10:
					if the bimbo of the player < 7, say "[one of][line break][first custom style][line break]Oh dear, I'm getting distracted more easily...[roman type][line break][or][stopping]";
					otherwise say "[one of][line break][second custom style][line break]What was I thinking about again?  [if the largeness of breasts > 3]I keep getting distracted by my tits![end if][roman type][line break][or][stopping]";
				otherwise if the flat intelligence of the player < 15:
					if the bimbo of the player < 10, say "[one of][line break][first custom style][line break]What happened to my new intelligence?  It's disappearing again...[roman type][line break][or][stopping]";
					otherwise say "[one of][line break][second custom style][line break]Sex is way more fun than sums![roman type][line break][or][stopping]";
				otherwise:
					if the bimbo of the player < 15, say "[one of][line break][first custom style][line break]The urge to do maths in my head is fading...[roman type][line break][or][stopping]";
					otherwise say "[one of][line break][second custom style][line break]Aww, there was some cool fact about sex I was just thinking about, but now I can't remember it...[roman type][line break][or][stopping]";
				now the old intelligence of the player is the flat intelligence of the player;
				break.


Reflection ends here.

