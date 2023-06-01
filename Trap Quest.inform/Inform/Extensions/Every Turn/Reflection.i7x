Reflection by Every Turn begins here.

[!<ComputeHumiliationWithEarningsAndSeconds>+

Compute stuff to do with humiliation and reflection that happens every turn.
We reduce the player's humiliation by the number of seconds, and then we check if it's time to output some more random flavour as the player reflects on their situation.

+!]
An all later time based rule (this is the reflection rule):
	if the number of interested monsters in the location of the player is 0 and the player is not immobile:
		say StatsChangedFlav;
	if the strut of the player is 1 and the player is upright and the player is not immobile and there is a worn heels and the player-class is not succubus:
		humiliate time-seconds;
	otherwise if playerRegion is not school:
		dignify time-seconds.

humiliation-situation-timer is a number that varies.

To check regular humiliating situation:
	increase humiliation-situation-timer by 1;
	if humiliation-situation-timer > 15 and the number of live things penetrating a body part is 0 and the number of live things grabbing the player is 0 and the number of regional dangerous monsters is 0:
		compute regular humiliating situation;
		now humiliation-situation-timer is 0.

To decide which number is humiliating situation frequency:
	decide on 15 * (diaper quest + 1).

Report going:
	check regular humiliating situation.
Report waiting:
	check regular humiliating situation.


[!<HumiliatingSituation>@

An object that contains all the information on a specific type of humiliation situation that the player might want to say something to themselves about.

@inherits <Object>

@!]
A humiliating situation is a kind of object.

[!<HumiliatingSituationIsApplicable>+

Is this humiliating situation currently relevant?

+!]
Definition: a humiliating situation is applicable: decide no.

[!<HumiliatingSituationIsEligible>+

Is this humiliating situation currently valid? For example, shameless and/or nympho players aren't going to find certain things humiliating.

+!]
Definition: a humiliating situation is appropriate:
	if the player is a nympho, decide no;
	decide yes.

[!<ReflectOnObject>+

What do we say when the player reflects on this situation?

+!]
To reflect on (H - an object):
	do nothing.

throne-fucked is a humiliating situation.
Definition: throne-fucked (called A) is applicable:
	if the player is not shameless and the throne is filling asshole, decide yes;
	decide no.
To reflect on (A - throne-fucked):
	say "[first custom style][one of]This is literally the most embarrassing thing that has ever happened to me.[or]This has got to stop! Why did I sit here...[or]Okay this is the LAST time I let this happen...[or]Fuck, my belly is ridiculously huge![stopping][roman type][line break]".

huge-tits is a humiliating situation.
Definition: huge-tits (called A) is applicable:
	if diaper quest is 1, decide no;
	if the player is not disgraced and the largeness of breasts > 5 and the player-class is not succubus:
		decide yes;
	otherwise if the player-class is succubus and the largeness of breasts < 5:
		decide yes;
	otherwise:
		decide no.
To reflect on (A - huge-tits):
	if the largeness of breasts > 5 + (the humiliation of the player / 2000) and the player-class is not succubus:
		say "[if the bimbo of the player < 9]You look down at your [MediumDesc of breasts] and [one of]shudder as you feel your dignity continue to be ripped to shreds[or]whimper with shame[or]shiver with embarrassment[in random order][otherwise]You look down at your [MediumDesc of breasts] and giggle awkwardly [one of]as the reality of your humiliating situation hits you[or]at their crazy size[or]while trying to think about things other than your current embarrassing situation[in random order][end if].";
	otherwise if the player-class is succubus:
		say "Your [if soulstone is worn]soulstone aches[otherwise]horns ache[end if] with embarrassment as you look down at your puny breasts.";
	otherwise:
		say "[if the bimbo of the player < 9]You hold your [MediumDesc of breasts] and [one of]shudder as you wonder how much bigger they are going to grow[or]feel their weight. You are not used to this[or]pray that they don't continue to grow[or]hope desperately that nobody can see you like this[in random order][otherwise]You feel your [MediumDesc of breasts] and giggle awkwardly as you [one of]wonder how much bigger they are going to grow[or]absent-mindedly play with your nipples[or]catch yourself absent-mindedly touching yourself[or]imagine how stupidly big they might end up at this rate[in random order][end if].".

To say FriendReaction of (M - a real-life patron) to (A - huge-tits):[TODO: maybe account for super huge boobs]
	if the class of the player is succubus:
		say GenericSituationReaction of M;
	otherwise if the player is originally male:
		say "Your chest looks really different, but those [BreastDesc] go well with your [AssDesc].[if the player is not possessing a penis] But dude, why does your [one of][']package['][or]groin[or]crotch[in random order] look so flat? [otherwise if size of the penis < 6] And did you make them shrink your dick, too? That's sick! [otherwise if size of the penis > 8] And have you stuffed your crotch, or are you playing this game so you can pretend your dick is bigger? [end if]";
	otherwise:
		say "Your chest looks different, but [if M is nemesis-friend]those [BreastDesc] fit you a lot better than those tiny bee-stings you used to have. [otherwise]those [BreastDesc] might suit you better. [end if]";

huge-hips is a humiliating situation.
Definition: huge-hips (called A) is applicable:
	if diaper quest is 1, decide no;
	if the player is not disgraced and the thickness of hips > 5 and the total volume of hips > 5 and the player-class is not succubus:
		decide yes;
	otherwise if the player-class is succubus and the thickness of hips < 5:
		decide yes;
	otherwise:
		decide no.
To reflect on (A - huge-hips):
	if the thickness of hips > the bimbo of the player + 3 and the total volume of hips > the bimbo of the player + 5 and the player-class is not succubus:
		say "[if the bimbo of the player < 9]You feel your [AssDesc] [one of]wobbling behind you[or]bouncing wildly[in random order] and pray that no[one of] perverted businessmen are[or]body you know is[or]thing is[or]body is[sticky random] watching you play this game.[otherwise]You feel your [AssDesc] [one of]wobbling behind you[or]bouncing wildly[in random order] and realise that people could be watching you...[line break][second custom style]Oh my gawd, maybe they're all wanking over [one of]me[or]my body[or]my ass[in random order] right now?[roman type][line break][end if]";
	otherwise if the player-class is succubus:
		say "Your [if soulstone is worn]soulstone aches[otherwise]horns ache[end if] with embarrassment as you look down at your stick-like body.";
	otherwise if the player is not immobile:
		say "[if the bimbo of the player < 9]You hold your [MediumDesc of hips] to stop them [one of]swaying sexily behind you[or]wobbling[in random order], and pray that no[one of] perverted businessmen are[or]body is[sticky random] watching you play this game.[otherwise]You grab hold of your wobbling [AssDesc] and realise that people could be watching you...[end if]".

huge-belly is a humiliating situation.
Definition: huge-belly (called A) is applicable:
	if the player is modest and the semen addiction of the player < 9 and (the pregnancy of the player > 0 or (the player is not possessing a vagina and pregnancy fetish is 1 and the largeness of belly > 5)), decide yes;
	decide no.
To reflect on (A - huge-belly):
	if the largeness of belly > the bimbo of the player + 4:
		say "[if the player is not possessing a vagina]You look down at your [BellyDesc] and [one of]realise how fucked up your situation really is[or]wonder if this is what it feels like to be pregnant[or]feel a shiver of shame go down your spine[in random order].[otherwise if the largeness of belly > 4]You put a hand on your [BellyDesc].[line break][variable custom style][one of]I can definitely feel kicking.[or]I just can't believe I got myself knocked up so quickly.[or]I don't want to give birth...[in random order][roman type][line break][otherwise]You put a hand on your [BellyDesc].[line break][first custom style][one of]Was that just me or did I just feel kicking??[or]Can I get pregnant in this game??[or]Please don't tell me this means what I think it means...[in random order][roman type][line break][end if]";
	otherwise:
		say "[if the player is not possessing a vagina]You look down at your [BellyDesc] and [one of]realise how ridiculous your situation really is[or]are suddenly very thankful that you can't get pregnant[or]quiver as you think about how large it might be able to grow to in this game[in random order].[otherwise]You put a hand on your [BellyDesc].[line break][first custom style][one of]So this is what it's like to feel pregnant? How humiliating...[or]Please don't grow any more...[or]I mustn't let anything else cum inside me![in random order][roman type][line break][end if]".

To say FriendReaction of (M - a real-life patron) to (A - huge-belly):
	if the pregnancy of the player is 1:
		say "... [one of]you really let some stranger get you pregnant, huh? [or]I don't know a lot about this game, but I'm pretty sure there are condoms. [or]Do you even know who the father is? [in random order]";
	otherwise:
		say GenericSituationReaction of M.

crawling-around is a humiliating situation.
Definition: crawling-around (called A) is applicable:
	if (the player is proud or the class of the player is princess) and the player is prone, decide yes;
	decide no.
To reflect on (A - crawling-around):
	if the class of the player is princess:
		say "[first custom style]Why am I crawling around on my knees like some sort of peasant...[roman type][line break]";
	otherwise if the bimbo of the player < 3 and the player-class is not succubus:
		say "[first custom style]I'm on my knees [one of]crawling through this place[or]crawling around like a [if diaper lover >= 1]kid[otherwise]dog[end if][or]like some kind of [if diaper quest is 1]baby[otherwise]common slut[end if][in random order]. How humiliating is this![roman type][line break]";
	otherwise:
		say "[first custom style]I'm on my knees [one of]crawling through this place[or]crawling around[or]with my butt high in the air[in random order]. How crazy is this![roman type][line break]".

outrageous-heels is a humiliating situation.
Definition: outrageous-heels (called A) is applicable:
	let H be a random worn heels;
	let O be the outrage of H;
	if the player is modest and the player is upright and O is too humiliating and the player-class is not succubus:
		decide yes;
	otherwise if the player-class is succubus and the player is upright and O < 8:
		decide yes;
	otherwise:
		decide no.
To reflect on (A - outrageous-heels):
	if the player-class is not succubus:
		say "You [one of]wobble unsteadily on your[or]can't believe you're strutting around in[or]are constantly aware of the clickety clack sound coming from you strutting around in these[in random order] ridiculous heels. How embarrassing is this!";
	otherwise:
		say "Your [if soulstone is worn]soulstone aches[otherwise]horns ache[end if] with embarrassment at walking around in such short heels!";

outrageous-bra is a humiliating situation.
Definition: outrageous-bra (called A) is applicable:
	let B be a random worn bra;
	let O be the outrage of B;
	if the player is modest and O is too humiliating, decide yes;
	decide no.
To reflect on (A - outrageous-bra):
	say "[first custom style]I can't believe [one of]I'm wearing this[or][if the largeness of breasts > 2]I'm supporting my tits with this[otherwise]I'm pointlessly wearing this[end if][in random order] ridiculous [ShortDesc of random worn bra]![roman type][line break]".

outrageous-knickers is a humiliating situation.
Definition: outrageous-knickers (called A) is applicable:
	let B be a random worn knickers;
	let O be the outrage of B;
	if the player is not disgraced and O is too humiliating, decide yes;
	decide no.
To reflect on (A - outrageous-knickers):
	let K be a random worn knickers;
	if K is plug panties and latex prisoner is 0:
		say "[if the bimbo of the player < 12][first custom style][one of]What the fuck am I thinking, wearing these ridiculous latex plug panties?[or]Why did I choose to wear a pair of invasive fetish panties?[or]I feel so full... I have no idea why I opted to wear these latex plug panties...[in random order][otherwise][second custom style]These panties sure are keeping me full everywhere I go... [one of]how humiliating[or]and it's just turning me on[or]imagine if my friends could see me right now... so embarrassing[in random order]![end if][roman type][line break]";
	otherwise if K is diaper:
		let B be the diaper addiction of the player - the weight of K;
		say "[if B < 3][first custom style]I can't even walk properly... I'm going to die of embarrassment if anyone else sees me waddling around![otherwise if B < 7][first custom style]I can't take this embarrassment... people can see that I'm wearing a diaper![otherwise if B < 11][variable custom style]Imagine if my friends could see me waddling around in a diaper! I'd be so humiliated...[otherwise if B < 15][second custom style]I wonder if I can make waddling look cute?[otherwise][second custom style]I'm wearing a diaper so that everyone can see what a bad girl I've been![end if][roman type][line break]";
	otherwise:
		say "[first custom style]What an embarrassing [if the armour of K > 6]pair of [end if]undies to be wearing! [one of]I would never been seen dead in this back home.[or]I really hope nobody is able to see me like this.[or]I feel like such a slut.[in random order][roman type][line break]".

outrageous-corset is a humiliating situation.
Definition: outrageous-corset (called A) is applicable:
	if diaper quest is 1, decide no;
	let B be a random worn corset;
	let O be the outrage of B;
	if the player is modest and O is too humiliating, decide yes;
	decide no.
To reflect on (A - outrageous-corset):
	say "[if the bimbo of the player < 10][first custom style]This corset [one of]is much too slutty for me to be wearing...[or]makes me look like a complete tart![or]could get me mistaken for a common whore![in random order][otherwise][second custom style]This corset really does make my waist and hips look sexy...[one of] no wonder everything wants to fuck me![or]I guess people can't be blamed if they want to screw me![or][in random order][end if][roman type][line break]".

chubby-slut is a humiliating situation.
Definition: chubby-slut (called A) is applicable:
	if the player is not disgraced and the fat-weight of the player > 8 and weight gain fetish is 1, decide yes;
	decide no.
To reflect on (A - chubby-slut):
	if the fat-weight of the player > 30:
		say "[variable custom style][one of]Oh god, I'm so obese I can hardly move![or]I'm such a waste of space, literally.[or]I'm so disgracefully lazy that my body has ended up like this. Don't look at me![in random order][roman type][line break]";
	otherwise if the fat-weight of the player > 22:
		say "[variable custom style][one of]I'm so fat... I look disgusting![or]I'm so horribly fat! Nobody is going to want to have [if the sex addiction of the player > 5]sex[otherwise]anything to do[end if] with me...[or]If I don't even respect myself enough to keep in shape, then why should other people respect me?[in random order][roman type][line break]";
	otherwise if the fat-weight of the player > 14:
		say "[variable custom style][one of]Uh-oh, I'm really quite a heavy [if the player is gendered female]girl[otherwise]person[end if] now aren't I?[or]Oops, I've really started to let myself go! I should probably be less lazy...[in random order][roman type][line break]";
	otherwise if the fat-weight of the player > 8:
		say "[variable custom style][one of]Oh dear, I'm getting a bit unfit, aren't I?[or]Oh dear, I feel like I'm getting a bit chubby![in random order][roman type][line break]".

To say FriendReaction of (M - a real-life patron) to (A - chubby-slut):
	if the fat-weight of the player > 22:
		say "[one of]You look like a pig. [or]Sorry, but you look awful. Try losing some weight. [or]Do you care about your body at ALL? You're so fat. [in random order]";
	otherwise if the fat-weight of the player > 14:
		say "[one of]You look fat. [or]You've really put on a few pounds... [or]You've really gained weight... [in random order]";
	otherwise if the fat-weight of the player > 8:
		say "... Have you gained weight? ".

crotch-on-show is a humiliating situation.
Definition: crotch-on-show (called A) is applicable:
	if the player is modest and the bimbo of the player < 6 and the player is not crotch covered, decide yes;
	decide no.
To reflect on (A - crotch-on-show):
	say "[first custom style][one of]Oh god, [if the player is naked]I'm[otherwise]I might as well be[end if] completely naked! How humiliating![or]Are they watching me? They must be, and they can see all my bits! How humiliating...[or]I really really need some clothes! This is too embarrassing![in random order][roman type][line break]".

outrageous-dry-diaper is a humiliating situation.
Definition: outrageous-dry-diaper (called A) is applicable:
	if the player is proud and the diaper addiction of the player < 3 and there is a worn clean diaper, decide yes;
	decide no.
To reflect on (A - outrageous-dry-diaper):
	if there is a worn cursed diaper or change-self tattoo is worn, say "[first custom style][one of]I'm in a diaper, and I can't even take it off... I've got to prioritise finding a way to get rid of this curse before... before...[or]A magic curse is making it impossible for me to pull this infernal diaper away from my skin! Even just saying that in my head sounds crazy! This can't really be happening, can it?![or]This is just unacceptable... I've got to find a way to take this diaper off and fast! Not only is it super humiliating but I am not going to be able to hold my bladder for forever...[in random order][roman type][line break]";
	otherwise say "[first custom style][one of]Am I really wearing a diaper? Me, a fully grown [if the player is gendered female]wo[end if]man, wearing an incontinence aid meant for babies?! No, this can't be happening...[or]Are they watching me? Do they know I'm wearing a diaper in their fucked up game? I bet they do, the bastards...[or]If anyone in the real world know what I was wearing over my crotch down here... I think I'd just die of embarrassment.[in random order][roman type][line break]".

outrageous-wet-diaper is a humiliating situation.
Definition: outrageous-wet-diaper (called A) is applicable:
	if the player is modest and the diaper addiction of the player < 5 and there is a worn perceived wet unmessed diaper, decide yes;
	decide no.
To reflect on (A - outrageous-wet-diaper):
	if there is a worn cursed diaper or change-self tattoo is worn, say "[variable custom style][one of]I'm in a wet diaper, and I can't even change myself... I've got to find a way out of this situation before someone gives me a diaper check and finds out...[or]This isn't fair, it's not normal to be stuck in a CURSED diaper!!! How am I supposed to stay dry when even magic is working against me?![or]I've got to find some kind of magical being, or altar, or something... I would worship anyone and anything right now that could get me out of this DISGUSTING SOGGY DIAPER before people get the impression that I can't control my own bladder![in random order][roman type][line break]";
	otherwise say "[variable custom style][one of]I really need to take this gross soggy diaper off before someone gives me a [']check[']...![or]The only worse thing than being caught wearing a diaper would be getting caught wearing a soggy diaper! I need to get this thing off before that happens![or]I can't believe I've allowed this to happen... am I really in a wet nappy right now?! Yes I am, I can feel it... oh it feels so weird and warm and gross. I'm so embarrassed...[in random order][roman type][line break]".

outrageous-messy-undies is a humiliating situation.
Definition: outrageous-messy-undies (called A) is applicable:
	if the player is not shameless and there is a worn perceived messed knickers, decide yes;
	decide no.
To reflect on (A - outrageous-messy-undies):
	if the player is upset about sitting in mess, say "[variable custom style][one of]I need to get out of this nasty messy prison before someone checks me! But how do I do that...?![or]Oh this is so gross, I can smell my own mess! I give up, someone please come and give me a change already...[or]Yuck yuck yuck, I need to get out of my own filth before someone smells me! I just need to find a bath, or shower, or even a pond would do![in random order][roman type][line break]";
	otherwise say "[variable custom style][one of]If someone caught me in this messy situation, my reputation would never recover! I should probably find a way to get clean before that happens.[or]If someone realises I'm messy it'll be so embarrassing... I'd rather just stay messy rather than face the humiliation of getting a change from another person![in random order][roman type][line break]".

glazed-body is a humiliating situation.
Definition: glazed-body (called A) is applicable:
	if the player is not shameless and the number of glazed body parts > 0 and the semen addiction of the player < 4, decide yes;
	decide no.
To reflect on (A - glazed-body):
	let F be a random glazed body part;
	say "[variable custom style][one of]I can't believe I'm walking around with [semen] all over my [if the number of glazed body parts is 1][printed name of F][otherwise]body[end if]! I'm such a disgrace....[or]There's [semen] actually [if the number of glazed body parts is 1]on my [printed name of F][otherwise]all over my body[end if]...This is so disgusting![or]There's no way there's really [semen] all over my [if the number of glazed body parts is 1][printed name of F][otherwise]body[end if]There's no way. There's no fucking way...[in random order][roman type][line break]".

To say FriendReaction of (M - a real-life patron) to (A - glazed-body):
	let F be a random glazed body part;
	say "... [one of]Is that cum on your [printed name of F]? [or]You're seriously walking around with cum on your [printed name of F]? [in random order]".

visible-erection is a humiliating situation.
Definition: visible-erection is applicable:
	if the size of penis > 2 and penis is exposed and penis is penis-erect and the player is modest, decide yes;
	decide no.
To reflect on (A - visible-erection):
	say "[variable custom style][one of]Everyone can see my boner...This is so embarrassing.[or]I can't believe I have a boner. Someone's going to think I'm actually enjoying this...[in random order][roman type][line break]".

To say FriendReaction of (M - a real-life patron) to (A - visible-erection):[BIG TODO]
	say "... [one of]So you ARE enjoying this. [or]Oh, so this IS exciting for you. [in random order]".

bsoundingHS is a humiliating situation.
Definition: bsoundingHS is applicable:
	if the player is not disgraced and there is a worn bsounding clothing, decide yes;
	decide no.
To reflect on (A - bsoundingHS):
	let C be a random worn bsounding clothing;
	say "[first custom style][one of]Who had the bright idea to make clothing that announced every wobble of these damned orbs?![or]I've got to get rid of this [ShortDesc of C]. It's impossible to get any long lasting privacy with these stupid boings and twangs![or]Does this [ShortDesc of C] ever run out of magical energy? These sounds are so humiliating![stopping][roman type][line break]".

low-addiction is a humiliating situation.
Definition: low-addiction is applicable: decide yes.
Definition: low-addiction is appropriate: decide yes.
To reflect on (HS - low-addiction):
	let AL be a list of texts;
	if watersports fetish is 1, add "urine taste addiction" to AL;
	if lactation fetish is 1 or diaper quest is 1, add "milk taste addiction" to AL;
	if diaper quest is 0:
		add {"anal sex addiction", "oral sex addiction", "semen addiction", "semen taste addiction"} to AL;
		if the player is possessing a vagina, add "vaginal sex addiction" to AL;
		if max breast size > 4, add "titfuck addiction" to AL;
		if interracial fetish is 1, add "bbc addiction" to AL;
	if diaper lover > 0, add "diaper addiction" to AL;
	let R be a random number from 1 to the number of entries in AL;
	let A be entry R in AL;
	if A exactly matches the text "semen addiction":
		let SA be the semen addiction of the player - 1;
		let GBP be a random glazed body part;
		if face is glazed, now GBP is face;
		if GBP is a thing: [player distracted by their glazed body part]
			if the player is able to use manual dexterity, say "You [one of][if SA < 6]can't ignore[otherwise if GBP is face]enjoy the feeling of[otherwise if GBP is hair]enjoy the additional weight of[otherwise]shiver with pleasure as you look down at[end if][or][if SA < 6]can't help but[otherwise]excitedly[end if] touch[or][if SA < 6]gingerly prod at[otherwise]use a finger to play with[end if][in random order] ";
			otherwise say "You wish you could touch [if SA < 3]and wipe away [end if] ";
			say "the [if the semen coating of GBP > 6]masses of sticky [semen] coating[otherwise if the semen coating of GBP > 3]huge globs of [semen] stuck to[otherwise][semen] gently trickly down[end if] your [GBP]. ";
		otherwise: [player distracted by sticky feeling inside]
			if the semen volume of vagina > 0 or (the womb volume of vagina > 0 and the pregnancy of the player is 0 and pregnancy fetish is 1), now GBP is vagina;
			if the semen volume of belly > 0, now GBP is asshole;
			if GBP is asshole:
				if the player is able to use their hands, say "You put a hand to your belly, [if the total fluid fill of belly > 20 and the total fluid fill of belly > the semen volume of belly]feeling the [semen] in there sloshing around amongst the other liquid[otherwise if the semen volume of belly > 20]feeling the inhuman amounts of [semen] sloshing around in there[otherwise if the total fluid fill of belly > 10 and the total fluid fill of belly > the semen volume of belly]feelng your innards gurgle under the pressure from the [semen] and other liquid[otherwise if the semen volume of belly > 10]feeling your innards gurgle under the pressure from the large amount of [semen] inside them[otherwise if the total fluid fill of belly > the semen volume of belly]pressing in to see if you can feel the [semen] and enema inside it[otherwise]pressing in to see if you can feel the anal creampie inside it[end if]. ";
				otherwise say "You flex your abdominal muscles, [if the total fluid fill of belly > 20 and the total fluid fill of belly > the semen volume of belly]feeling the [semen] in your belly sloshing around amongst the other liquid[otherwise if the semen volume of belly > 20]feeling the inhuman amounts of [semen] sloshing around in your belly[otherwise if the total fluid fill of belly > 10 and the total fluid fill of belly > the semen volume of belly]feelng your innards gurgle under the pressure from the [semen] and other liquid[otherwise if the semen volume of belly > 10]feeling your innards gurgle under the pressure from the large amount of [semen] inside them[otherwise if the total fluid fill of belly > the semen volume of belly]to see if you can feel the [semen] and enema you're holding deep inside your gut[otherwise]to see if you can feel the anal creampie you're holding inside your gut[end if]. ";
			otherwise if GBP is vagina:
				if the semen volume of vagina > 0:
					say "The warm, sticky [semen] in your [vagina] squelches and gently stimulates you as it oozes towards the exit. ";
				otherwise:
					say "You could swear you can literally feel the [semen] that's made it through your cervix swimming down your fallopian tubes and towards your fetile eggs... ";
			if GBP is a thing:
				let SAN be 0;
				if GBP is asshole:
					now SAN is the semen volume of belly / 2;
				otherwise if GBP is vagina:
					if the semen volume of vagina is 0, now SAN is the womb volume of vagina;
					otherwise now SAN is the semen volume of vagina;
				otherwise:
					now SAN is the semen coating of GBP;
				decrease SA by SAN;
				let ARS be (SA * 500) - 2000; [depending on addiction and semen amount, we can gain or lose arousal]
				if ARS > 3000, now ARS is 3000; [max 3000 arousal gain at 10+ addiction]
				if ARS < 0:
					now ARS is ARS * -1;
					if the semen addiction of the player > 5: [we should explain why the player doesn't like it]
						if SAN > 6:
							say "[line break][variable custom style]That's just much too much for me...[roman type][line break]";
						otherwise:
							say "[line break][variable custom style]There's so much of it...[roman type][line break]";
					say "You wince with [if ARS <= 1000]dismay[otherwise]nausea[end if][run paragraph on]";
					if the arousal of the player > 0 and the player is able to cool down:
						say ", and feel [if ARS > the arousal of the player]completely unaroused[otherwise]less aroused[end if]";
					say ".";
					cool down ARS;
				otherwise if ARS > 0:
					say "[if ARS <= 1000 and SAN > 6]Despite how much there is, you find that it's making you feel... good...[otherwise if ARS <= 1000]Despite yourself, you find that it's making you feel... good...[otherwise if ARS <= 2000]It [one of]actually [or][stopping]feels really, really nice...[otherwise]Fuck, that feels [one of]so good[or]incredible[or]amazing[in random order]![end if]";
					arouse ARS;
				otherwise:
					say line break;
	otherwise if A exactly matches the text "anal sex addiction":
		if asshole is not actually occupied:
			let SA be the anal sex addiction of the player - (the soreness of asshole + 1);
			let ARS be SA * 500; [depending on addiction and soreness, we can gain or lose arousal]
			if ARS > 3000, now ARS is 3000; [max 3000 arousal gain]
			if ARS < 0 and the arousal of the player > 0:
				now ARS is ARS * -1;
				say "The thought of further anal action [if the soreness of asshole > 4]while you are so sore [end if]makes your [asshole] clench";
				if the arousal of the player > 0 and the player is able to cool down:
					say ", and makes you feel [if ARS > the arousal of the player]completely unaroused[otherwise]less aroused[end if]";
				say ".";
				cool down ARS;
			otherwise if ARS > 0:
				say "Your [asshole] [one of]twitches[or]has a little spasm[or]winks of its own accord[in random order], [if ARS <= 1000 and the analvirgin of the player is 1]prompting you to daydream about what [one of]it might be like to lose your anal virginity[or]anal sex would feel like[cycling][otherwise if ARS <= 1000]prompting you to daydream about anal sex[otherwise if ARS <= 2000 and the analvirgin of the player is 1]as if desperate to [one of]lose its virginity[or]learn what it feels like to be filled with [manly-penis][cycling][otherwise if ARS <= 2000]as if eager to experience [one of]more anal sex[or]some more anal action[or]stretching and stimulation once again[in random order][otherwise]desperately begging to be [one of]filled[or]stuffed full of hard [manly-penis][or]pounded and stretched[in random order][end if], turning you on[if the soreness of asshole > 6] even though you're so sore down there already[otherwise if the soreness of asshole > 3] despite your asshole feeling a bit tender right now[end if].";
				arouse ARS;
	otherwise if A exactly matches the text "vaginal sex addiction":
		if vagina is not actually occupied:
			let SA be the vaginal sex addiction of the player - (the soreness of vagina + 1);
			let ARS be SA * 500; [depending on addiction and soreness, we can gain or lose arousal]
			if ARS > 3000, now ARS is 3000; [max 3000 arousal gain]
			if ARS < 0 and the arousal of the player > 0:
				now ARS is ARS * -1;
				say "The thought of further vaginal action [if the soreness of vagina > 4]while you are so sore [end if]makes your [vagina] [one of]clench shut[or]tense up[in random order]";
				if the arousal of the player > 0 and the player is able to cool down:
					say ", and makes you feel [if ARS > the arousal of the player]completely unaroused[otherwise]less aroused[end if]";
				say ".";
				cool down ARS;
			otherwise if ARS > 0:
				say "Your [vagina] [one of]pulses gently[or]relaxes and tightens of its own accord[in random order], [if ARS <= 1000 and the vaginalvirgin of the player is 1]prompting you to daydream about what [one of]it might be like to lose your vaginal virginity[or]vaginal sex would feel like[cycling][otherwise if ARS <= 1000]prompting you to daydream about vaginal sex[otherwise if ARS <= 2000 and the vaginalvirgin of the player is 1]as if desperate to [one of]lose its virginity[or]learn what it feels like to be filled with [manly-penis][cycling][otherwise if ARS <= 2000]as if eager to experience [one of]more vaginal sex[or]some more vaginal action[or]stretching and stimulation once again[in random order][otherwise]desperately begging to be [one of]filled[or]stuffed full of hard [manly-penis][or]pounded and stretched[in random order][end if], turning you on[if the soreness of vagina > 6] even though you're so sore down there already[otherwise if the soreness of vagina > 3] despite your hole feeling a bit tender right now[end if].";
				arouse ARS;
	otherwise if A exactly matches the text "oral sex addiction":
		if face is not actually occupied and the total volume of face is 0:
			let SA be the oral sex addiction of the player - 1;
			let ARS be (SA * 500) - 1000; [depending on addiction, we can gain or lose arousal]
			if ARS > 1500, now ARS is 1500; [max 1500 arousal gain]
			if ARS < 0 and the arousal of the player > 0:
				now ARS is ARS * -1;
				say "The thought of [if the oralvirgin of the player is 1][one of]having to suck a real [manly-penis][or]being on your knees and giving a blowjob[or]tasting a real [manly-penis][cycling][otherwise][one of]how many more [manly-penis]s you might have to suck[or]how unpleasant it is to perform oral sex[or]what it's like to have a real [manly-penis] in your mouth[in random order][end if] [one of]crosses your mind[or]pops into your thoughts[in random order]";
				if the arousal of the player > 0 and the player is able to cool down:
					say ", and makes you feel [if ARS > the arousal of the player]completely unaroused[otherwise]less aroused[end if]";
				say ".";
				cool down ARS;
			otherwise if ARS > 0:
				say "[one of]Your mouth forms an [']O['] shape[or]Your mouth relaxes into a pout[or]You find yourself licking your lips[or]You bite your bottom lip[in random order] [if ARS <= 1000 and the oralvirgin of the player is 1]as you imagine what it must be like to [one of]pleasure a [manly-penis] with your mouth[or]give a [man of male-m] a blowjob[cycling][otherwise if ARS <= 1000]prompting you to daydream about [one of]pleasuring someone with your mouth[or]how fun oral sex can be[or]how nice a [manly-penis] can feel against your lips[in random order][otherwise if the oralvirgin of the player is 1]as you realise you have a [one of]new [or][stopping]burning curiosity to [one of]find out what it's like to suck a [manly-penis][or]learn what it feels like to give a blowjob[cycling][otherwise][one of]as you look forward to giving your next blowjob[or]as you daydream about getting to suck on another [manly-penis][or]as you daydream about your throat getting pounded by a huge [manly-penis][or]as you imagine what your next facefucking will be like[in random order][end if]. [if ARS <= 500]You find that the thought turns you on[otherwise]The thought [one of]arouses you[or]turns you on[in random order][end if].";
				arouse ARS;
	otherwise if A exactly matches the text "titfuck addiction":
		if breasts is not actually occupied:
			let SA be the titfuck addiction of the player - 1;
			let ARS be (SA * 500) - 2000; [depending on addiction, we can gain or lose arousal... although actually there's no losing arousal for thinking about tifuck addiction]
			if ARS > 1500, now ARS is 1500; [max 1500 arousal gain]
			if ARS > 0:
				say "[if ARS <= 1000]The thought of [one of]the feeling of a [man of male-m] thrusting [his of male-m] [manly-penis] in and out of your cleavage[or]someone grabbing your breasts and using them for sex[or]pleasuring a [manly-penis] with your breasts[in random order] [one of]enters your head[or]crosses your thoughts[or]pops into your mind[at random], [one of]turning you on[or]making you flush with arousal[in random order][otherwise][one of]You can't help but think about how delightful getting titfucked is[or]You find yourself thinking forward to the next time you get titfucked[or]You daydream about the next time you get to pump a [manly-penis] in between your breasts[in random order], and [one of]get more and more exicited[or]get all worked up[in random order][end if].";
				arouse ARS;
	otherwise if A exactly matches the text "diaper addiction":
		let D be a random worn diaper;
		if D is diaper: [if diaper addiction is less than 5, the player hates bulk and hates wet. opposite is true if diaper addiction greater than 9.]
			say "You squeeze your legs together, feeling the [if thighs is spread]superthick [otherwise if the DQBulk of D > 4]thick [end if][if D is perceived dry and D is perceived unmessed]dry [end if]padding of your [ShortDesc of D] between your thighs. ";
			compute automatic state check of D;
			let SA be 0;
			let thicknessLove be the diaper addiction of the player - (the DQBulk of D + 6); [if this is a positive number, the player likes diapers this thick]
			if diaper addiction of the player < 5:
				decrease SA by the DQBulk of D;
				if D is perceived wet, decrease SA by 4;
			otherwise if thicknessLove > 0:
				increase SA by the DQBulk of D;
				if D is wet, increase SA by 4;
			let ARS be SA * 500; [depending on addiction, we can gain or lose arousal]
			if ARS > 0:
				if D is perceived dry, say "[if thicknessLove > 5]The fact you're wearing a diaper is arousing and exciting, but you can't help but wish it was a bit bulkier. You can't wait until someone puts you in a big poofy diaper that really makes you waddle[otherwise if thicknessLove > 2]The padding feels nice against your skin, and you can't help but fantasise about how it will feel when you've soaked it with your [urine][otherwise if the DQBulk of D <= 4][one of]You surprise yourself as you realise that squeezing your padding like this is[or]Once again, you find that it's[stopping] turning you on[otherwise if thighs is not spread]You just love how bulky this diaper is! Your arousal spikes as you clench your legs together and imagine how wonderfully squishy it will feel after it's been filled with [urine][otherwise]You shudder with blissful arousal as you feel the absurdly bulky padding preventing your thighs from even getting close to touching each other! You are addicted to wearing stupidly giant diapers like this. You can't wait to fill it with your [urine][end if].";
				otherwise say "[if thicknessLove > 2]The wet padding squelches lewdly against your thighs, causing you to shudder with pleasure[otherwise if the DQBulk of D <= 4][one of]You surprise yourself as you realise that squeezing your wet, squelchy padding like this[or]Once again, you find that the wet squelchy sensation[stopping] is turning you on[otherwise if thighs is not spread]You just love how bulky this diaper is! Your arousal spikes as you clench your legs together and feel all that thick, wet padding squelching against your loins[otherwise]You shudder with blissful arousal as you feel the absurdly bulky, wet and squishy padding preventing your thighs from even getting close to touching each other! You are addicted to soaking stupidly giant diapers like this[end if].";
				arouse ARS;
			otherwise if ARS is 0:
				say "[if thicknessLove < -4]You might enjoy wearing more normal diapers, but this one is just too absurdly bulky, and you just feel awkward and stupid[otherwise]Wearing such a bulky diaper is making you feel a bit self-conscious. Perhaps it's a little fun, but it's mostly just awkward and distracting[end if].";
			otherwise:
				if D is perceived dry, say "[if the DQBulk of D <= 4]How anyone could get sexual thrills from wearing a diaper is beyond you. It does nothing but actively suppress your arousal[otherwise if thighs is not spread]The outrageously bulky nature of this diaper makes it even more upsetting to wear than a normal diaper. Your arousal is significantly reduced[otherwise]You shudder with mild horror as you feel the absurdly bulky padding preventing your thighs from even getting close to touching each other, how humiliating it looks, and how much it's restricting your movement[end if].";
				now ARS is ARS * -1;
				cool down ARS;
		otherwise if diaperOrgasmCount > a random number between 0 and diaperChangeCount:
			say "Your mind wanders back to the memory of the recent time you orgasmed [if the player is possessing a penis]into your[otherwise]while wearing a[end if] diaper. ";
			let SA be the diaper addiction of the player;
			let ARS be (SA * 500) - 3000; [depending on addiction, we can gain or lose arousal]
			if ARS > 3000, now ARS is 3000; [max 3000 arousal gain]
			if ARS > 0:
				say "[if ARS <= 2000]You feel your [player-crotch] twinge with pleasure at the thought[otherwise]The memory brings floods of arousal back with it - you're desperate to experience that unique sensation of cumming while padded again and again[end if].";
				arouse ARS;
			otherwise if ARS < 0:
				say "[if ARS >= -2000]You shiver uncomfortably, wishing you hadn't thought about that again. Your arousal lowers[otherwise]You shudder with disgust, feeling deeply unaroused by the memory[end if][if the player is a pervert]. You love orgasms, but you have no desire to climax while wearing a childish incontinence aid, ever again[end if].";
				now ARS is ARS * -1;
				cool down ARS;
			otherwise:
				say "[one of]You have mixed feelings about the experience[or]You reflect that the memory doesn't disgust you as much as it used to[or]You still feel rather ambivalent about it[stopping].";
		otherwise if diaperChangeCount > 0:
			let M be a random change-intimate monster;
			say "Your mind wanders back to the memory of [NameDesc of M] laying you down on your back and changing your diaper[one of]. It's one of the most submissive and humiliating experiences you've ever had in your life[or][stopping]. ";
			let SA be the diaper addiction of the player / 2;
			increase SA by the delicateness of the player / 2;
			let ARS be (SA * 500) - 3000; [depending on addiction, we can gain or lose arousal]
			if ARS > 3000, now ARS is 3000; [max 3000 arousal gain]
			if ARS > 0:
				say "[if ARS <= 1500]You feel your heart beat faster as you become slightly aroused by the thought that it was unlikely the last time that a near-stranger cares for you in such a degrading and intimate manner[otherwise]The memory brings floods of arousal back with it[one of] - you're undeniably now a submissive diaper fetishist[or][stopping][end if].";
				arouse ARS;
			otherwise if ARS < 0:
				say "[if ARS >= -1500]You wince at the shameful, distressing thought that it might not be the last time that someone does that to you[otherwise]You grimace with disgust, feeling deeply unsettled as you recall how uncomfortable, submissive, and inappropriately intimate that had been. Your arousal plummets[end if].";
				now ARS is ARS * -1;
				cool down ARS;
			otherwise:
				say "[one of]You have mixed feelings about the experience[or]You reflect that the memory doesn't disgust you as much as it used to[or]You still feel rather ambivalent about it[stopping].";
	otherwise if A exactly matches the text "grossness addiction":
		if the player is not grossed out:
			let SA be the grossness addiction of the player - 1;
			let ARS be (SA * 500) - 2000; [depending on addiction, we can gain or lose arousal]
			if ARS > 1500, now ARS is 1500; [max 1500 arousal gain]
			if ARS > 0:
				say "[if ARS <= 1000]The thought of [one of]the feeling of a [man of male-m] thrusting [his of male-m] [manly-penis] in and out of your cleavage[or]someone grabbing your breasts and using them for sex[or]pleasuring a [manly-penis] with your breasts[in random order] [one of]enters your head[or]crosses your thoughts[or]pops into your mind[at random], [one of]turning you on[or]making you flush with arousal[in random order][otherwise][one of]You can't help but think about how delightful getting titfucked is[or]You find yourself thinking forward to the next time you get titfucked[or]You daydream about the next time you get to pump a [manly-penis] in between your breasts[in random order], and [one of]get more and more exicited[or]get all worked up[in random order][end if].";
				arouse ARS;
	otherwise if A exactly matches the text "bbc addiction":
		let SA be the bbc addiction of the player - 1;
		let ARS be (SA * 500) - 3000; [depending on addiction, we can gain or lose arousal]
		if ARS > 1500, now ARS is 1500; [max 1500 arousal gain]
		if ARS < 0 and the arousal of the player > 0:
			now ARS is ARS * -1;
			say "The thought of all the [one of]black[or]dark skinned[purely at random] [one of][men of male-m][or]thugs[or]horny bastards[cycling] in this game and [one of]their dirty hands getting on your body[or]what you'll possibly end up doing with them[or]what they want to do to you[or]the scandal it would be if your family learned that you'd been intimate with them[then at random] [one of]causes you to shudder with disgust[or]makes you cringe[or]makes you shiver with concern[or]makes you feel nervous[then at random]";
			if the arousal of the player > 0 and the player is able to cool down:
				say ", and leaves you feeling [if ARS > the arousal of the player]completely unaroused[otherwise]less aroused[end if]";
			say ".";
			cool down ARS;
		otherwise if ARS > 0:
			say "[one of]You daydream about[or]Your thoughts drift to thoughts of[or]You lick your lips as you think about[in random order] [one of]how sexy black people look[or]the dominant presence a strong, tall black [man of male-m] can have in a room[or]how black [men of male-m] are on average stronger and more muscular than white [men of male-m][or]how black [men of male-m] have such bigger, thicker, juicier [manly-penis]s[or]how you love submitting to black [men of male-m][then at random]. [if ARS <= 1000]It leaves you feeling [one of]excited[or]a bit more aroused[or]a little worked up[in random order][otherwise]It makes you [one of]horny[or]more aroused[or]all worked up[in random order], and [one of]weirdly excited for your next opportunity to see a [BlackCock][or]eager for your next experience with [BlackCock][or]desperate to encounter another [BlackCock][or]craving [BlackCock][or]craving even more [BlackCock][stopping][end if].";
			arouse ARS;
	otherwise:
		repeat with LQ running through liquid-objects:
			let LT be the substituted form of "[LQ]";
			if the first-taste of LQ is not 0 and A matches the text LT: [we have chosen to fantasize about LQ, and the player has tasted it before]
				let PTA be the player taste addiction of LQ;
				say "You [one of]find yourself thinking about[or]find your mind wandering back to[or][if PTA < 13]can't stop yourself from thinking[otherwise]daydream[end if] about[in random order] [one of]the taste of[or]your recent experience tasting[or]the act of drinking[in random order] [variable LQ]. ";
				let ARS be (PTA * 500) - 2000; [depending on addiction, we can gain or lose arousal]
				if ARS > 3000, now ARS is 3000; [max 3000 arousal gain at 10+ addiction]
				if ARS < 0:
					now ARS is ARS * -1;
					say "You shiver with [if ARS <= 1000]distaste[otherwise]disgust[end if][run paragraph on]";
					if the arousal of the player > 0 and the player is able to cool down:
						say ", and feel [if ARS > the arousal of the player]completely unaroused[otherwise]less aroused[end if]";
					say ".";
					cool down ARS;
				otherwise if ARS > 0:
					say "You [if ARS <= 1000]can't help but feel a little turned on at the thought[otherwise if ARS <= 2000][one of]hate to admit it, but[or]have to admit to yourself that[stopping] the idea now turns you on[otherwise]shiver with excitement and arousal[end if].";
					arouse ARS;
				otherwise:
					say line break;



[Take one of the currently valid humiliation reflection flavours and say it. Most of the humiliating situations above won't happen after the player hits nympho levels.]
To compute regular humiliating situation:
	let H be a random applicable humiliating situation;
	reflect on H.

[!<SayStatsChangedFlav>+

Reflection on a (hopefully) recent change in the player's stats.

+!]
To say StatsChangedFlav:
	let N be 1;
	while N > 0: [Just a weird way of allowing us to use the 'break' functionality to make sure we only say one thing.]
		now N is 0;
		if the old strength of the player is 0:
			now the old strength of the player is saved-flat-strength;
		otherwise if the old strength of the player < saved-flat-strength - 2:
			if saved-flat-strength > 24:
				if the bimbo of the player < 9, say "[first custom style][line break]I feel like I could move mountains![roman type][line break]";
				otherwise say "[second custom style][line break]I feel really powerful for such a little [if the class of the player is princess]princess[otherwise]girl[end if]![roman type][line break]";
			otherwise if saved-flat-strength > 19:
				if the bimbo of the player < 7, say "[first custom style][line break]I feel very strong. I'll rip these traps to pieces![roman type][line break]";
				otherwise say "[second custom style][line break]How can such a tiny body feel so strong?[roman type][line break]";
			otherwise if saved-flat-strength > 14:
				if the bimbo of the player < 11, say "[first custom style][line break][if the largeness of breasts < 11]My muscles feel good![otherwise]I'm feeling stronger, which is good because I need the strength to carry around these ridiculous boobs.[end if][roman type][line break]";
				otherwise say "[second custom style][line break]I feel like I can go for hours![roman type][line break]";
			otherwise if saved-flat-strength > 10:
				if the bimbo of the player < 8, say "[first custom style][line break]Hmm, I feel stronger. Come and get me![roman type][line break]";
				otherwise say "[second custom style][line break]I feel stronger. Hopefully now I can escape from the scary traps more easily.[roman type][line break]";
			otherwise if saved-flat-strength > 6:
				if the bimbo of the player < 8, say "[first custom style][line break]I feel a bit less weak now.[roman type][line break]";
				otherwise say "[second custom style][line break]Ooh I feel a bit less weak now.[if the largeness of breasts > 10] I need the strength to hold up my humongous boobs![end if][roman type][line break]";
			otherwise if saved-flat-strength > 1:
				say "[first custom style][line break]I'm still very weak, but I can move a bit now.[roman type][line break]";
			now the old strength of the player is saved-flat-strength;
			break;
		otherwise if the old strength of the player > saved-flat-strength + 2:
			if saved-flat-strength > 20:
				if the bimbo of the player < 9, say "[first custom style][line break]I feel less like a superhero now. It was good while it lasted...[roman type][line break]";
				otherwise say "[second custom style][line break]I don't feel quite as super strong any more. Oh well, little [boy of the player]s aren't supposed to be super strong anyway.[roman type][line break]";
			otherwise if saved-flat-strength > 16:
				if the bimbo of the player < 11, say "[first custom style][line break]I don't feel quite as eager to punch something any more.[roman type][line break]";
				otherwise say "[second custom style][line break]My legs are feeling weaker[if the largeness of breasts > 9], especially under the weight of these tits[end if].[roman type][line break]";
			otherwise if saved-flat-strength > 12:
				if the bimbo of the player < 9, say "[first custom style][line break]I feel weaker, and less confident about being able to break out of traps.[roman type][line break]";
				otherwise say "[second custom style][line break]I'm not feeling as strong... I might not be able to escape from the [if the bimbo of the player < 12]scary [end if]traps![roman type][line break]";
			otherwise if saved-flat-strength > 8:
				if the bimbo of the player < 7, say "[first custom style][line break]My knees are feeling weak.[roman type][line break]";
				otherwise say "[second custom style][line break]My knees are all wobbly![roman type][line break]";
			otherwise if saved-flat-strength > 4:
				if the bimbo of the player < 8, say "[first custom style][line break]My muscles feel very weak now...[roman type][line break]";
				otherwise say "[second custom style][line break]I feel like I can hardly stand![roman type][line break]";
			otherwise:
				say "[second custom style][line break]I feel completely powerless![roman type][line break]";
			now the old strength of the player is saved-flat-strength;
			break;
		if the old dexterity of the player is 0:
			now the old dexterity of the player is saved-flat-dexterity;
		otherwise if the old dexterity of the player < saved-flat-dexterity - 2:
			if saved-flat-dexterity < 7:
				say "[one of][line break][variable custom style][line break]I'm still very stiff, but I can move a bit now.[roman type][line break][or][stopping]";
			otherwise if saved-flat-dexterity < 11:
				if the bimbo of the player < 7, say "[one of][line break][first custom style][line break]I feel a bit less stiff now...[roman type][line break][or][stopping]";
				otherwise say "[one of][line break][second custom style][line break]Ooh I feel a bit less stiff now. I hope my flexibility comes back soon...[roman type][line break][or][stopping]";
			otherwise if saved-flat-dexterity < 15:
				if the bimbo of the player < 7, say "[one of][line break][first custom style][line break]Hmm, I feel more limber! That could be useful.[roman type][line break][or][stopping]";
				otherwise say "[one of][line break][second custom style][line break]I like feeling flexible![roman type][line break][or][stopping]";
			otherwise if saved-flat-dexterity < 19:
				if the bimbo of the player < 7, say "[one of][line break][first custom style][line break]I feel fast![roman type][line break][or][stopping]";
				otherwise say "[one of][line break][second custom style][line break]I can touch my toes without bending my knees![roman type][line break][or][stopping]";
			otherwise if saved-flat-dexterity < 23:
				if the bimbo of the player < 7, say "[one of][line break][first custom style][line break]My hand eye coordination feels better than usual.[roman type][line break][or][stopping]";
				otherwise say "[one of][line break][second custom style][line break]I feel bouncy. I think I can jump higher than before![roman type][line break][or][stopping]";
			otherwise:
				if the bimbo of the player < 11, say "[one of][line break][first custom style][line break]I feel extremely fast![roman type][line break][or][stopping]";
				otherwise say "[one of][line break][second custom style][line break]I'm so flexible I can [if diaper quest is 0]touch my elbows together behind my back! Oops, that just makes me push my chest out even more provocatively[otherwise]do the splits all the way to the ground. I bet being able to get your thighs so far apart is useful when wearing huge nappies all the time[end if]. Teehee![roman type][line break][or][stopping]";
			now the old dexterity of the player is saved-flat-dexterity;
			break;
		otherwise if the old dexterity of the player > saved-flat-dexterity + 2:
			if the player is grossed out:
				say "[line break][variable custom style][line break]It's so gross! I can't move around properly [if the player is upset about sitting in mess]like this[otherwise]with that smell in my nostrils[end if]...![roman type][line break]";
			otherwise if saved-flat-dexterity < 4:
				say "[one of][line break][variable custom style][line break]I feel basically paralysed![roman type][line break][or][stopping]";
			otherwise if saved-flat-dexterity < 8:
				if the bimbo of the player < 8, say "[one of][line break][first custom style][line break]My muscles feel very stiff now...[roman type][line break][or][stopping]";
				otherwise say "[one of][line break][second custom style][line break]I feel like I can hardly move![if the bimbo of the player > 10] Maybe I shouldn't even bother trying to escape...[end if][roman type][line break][or][stopping]";
			otherwise if saved-flat-dexterity < 12:
				if the bimbo of the player < 8, say "[one of][line break][first custom style][line break]I'm starting to feel pretty sluggish.[roman type][line break][or][stopping]";
				otherwise say "[one of][line break][second custom style][line break]I'm feeling pretty stiff, I might not be able to escape from anything![roman type][line break][or][stopping]";
			otherwise if saved-flat-dexterity < 16:
				if the bimbo of the player < 7, say "[one of][line break][first custom style][line break]I feel less fast...[roman type][line break][or][stopping]";
				otherwise say "[one of][line break][second custom style][line break]I'm not feeling as flexible... I might not be able to escape from the [if the bimbo of the player < 9]scary [end if]traps![roman type][line break][or][stopping]";
			otherwise if saved-flat-dexterity < 20:
				if the bimbo of the player < 7, say "[one of][line break][first custom style][line break]My hand eye coordination feels better than usual.[roman type][line break][or][stopping]";
				otherwise say "[one of][line break][second custom style][line break]I don't think I can jump really high any more.[if the largeness of breasts > 13] Oh well, it still makes my boobs bounce around![end if][roman type][line break][or][stopping]";
			otherwise:
				if the bimbo of the player < 12, say "[one of][line break][first custom style][line break]I feel less like a ninja now.[roman type][line break][or][stopping]";
				otherwise say "[one of][line break][second custom style][line break]Aww, I'm not flexible enough to touch my elbows together in front of me any more. Oops, that just makes me push my cleavage together even more provocatively! Teehee![roman type][line break][or][stopping]";
			now the old dexterity of the player is saved-flat-dexterity;
			break;
		if the old intelligence of the player is 0:
			now the old intelligence of the player is saved-flat-intelligence;
		otherwise if saved-flat-intelligence > the old intelligence of the player + 2:
			if saved-flat-intelligence < 6:
				if the bimbo of the player < 12, say "[one of][line break][first custom style][line break]The fog is starting to clear, I think?[roman type][line break][or][stopping]";
				otherwise say "[one of][line break][second custom style][line break]I think I can remember my name... Jessica?[roman type][line break][or][stopping]";
			otherwise if saved-flat-intelligence < 10:
				if the bimbo of the player < 14, say "[one of][line break][first custom style][line break]I can think more clearly now![roman type][line break][or][stopping]";
				otherwise say "[one of][line break][second custom style][line break]I feel smart, like I can spell big words! [if diaper quest is 0]F-E-L-L-A-T-I-O. Fellatio[otherwise]P-A-R-A-P-H-I-L-I-A. Paraphilia[end if]! Yaay![roman type][line break][or][stopping]";
			otherwise if saved-flat-intelligence < 14:
				if the bimbo of the player < 11, say "[one of][line break][first custom style][line break]Incredible, it seems like the mind altering effects of this game can even affect my intelligence? I feel smart.[roman type][line break][or][stopping]";
				otherwise say "[one of][line break][second custom style][line break]Incredible, it seems like the mind altering effects of this game can even affect my intelligence, as well as my desire to [if diaper quest is 0]suck [manly-penis]. I feel like a smart slut[otherwise]get humiliated. I feel like a smart pervert[end if]? That could be okay...[roman type][line break][or][stopping]";
			otherwise if saved-flat-intelligence < 20:
				if the bimbo of the player < 13, say "[one of][line break][first custom style][line break]I can do quadratic equations![roman type][line break][or][stopping]";
				otherwise say "[one of][line break][second custom style][line break]Facts are appearing in my head... did you know the average [if diaper quest is 0]ejaculation has over 180 million sperm? Yummy[otherwise]bladder can easily hold over half a litre of urine? But I bet mine can't[end if]...[roman type][line break][or][stopping]";
			otherwise if saved-flat-intelligence < 25:
				if the bimbo of the player < 13, say "[one of][line break][first custom style][line break]I know pi to ten-thousand places![roman type][line break][or][stopping]";
				otherwise say "[one of][line break][second custom style][line break]I feel like my brain is one half Einstein, one half Barbie![roman type][line break][or][stopping]";
			otherwise:
				if the bimbo of the player < 13, say "[one of][line break][first custom style][line break]Hmm, I think I just solved chess. That was easy.[roman type][line break][or][stopping]";
				otherwise say "[one of][line break][second custom style][line break]Hmm, turns out that P = NP. I can't believe I just did that in my head. Though it'd be more fun if the P stood for [if diaper quest is 0]Penis[otherwise]Padding[end if]![roman type][line break][or][stopping]";
			now the old intelligence of the player is saved-flat-intelligence;
			break;
		otherwise if saved-flat-intelligence < the old intelligence of the player - 2:
			if saved-flat-intelligence < 3:
				if the bimbo of the player < 12, say "[one of][line break][first custom style][line break]Can't... think... straight...[roman type][line break][or][stopping]";
				otherwise say "[one of][line break][second custom style][line break]Keep trying to think about stuff, but, like, I just keep thinking about [if diaper quest is 0][manly-penis]s[otherwise]my no-no[end if]... teehee![roman type][line break][or][stopping]";
			otherwise if saved-flat-intelligence < 6:
				if the bimbo of the player < 6, say "[one of][line break][first custom style][line break]Ugh, I've got a bit of a headache.[roman type][line break][or][stopping]";
				otherwise say "[one of][line break][second custom style][line break]What's Wal-Mart? Do they like make walls there?[roman type][line break][or][stopping]";
			otherwise if saved-flat-intelligence < 10:
				if the bimbo of the player < 7, say "[one of][line break][first custom style][line break]Oh dear, I'm getting distracted more easily...[roman type][line break][or][stopping]";
				otherwise say "[one of][line break][second custom style][line break]What was I thinking about again? [if the largeness of breasts > 6]I keep getting distracted by my tits![end if][roman type][line break][or][stopping]";
			otherwise if saved-flat-intelligence < 15:
				if the bimbo of the player < 10, say "[one of][line break][first custom style][line break]What happened to my new intelligence? It's disappearing again...[roman type][line break][or][stopping]";
				otherwise say "[one of][line break][second custom style][line break][if diaper quest is 1 and the diaper addiction of the player < 10]Getting up to no good[otherwise if diaper messing >= 3 and diaper quest is 1]Pooping my Pampies[otherwise if diaper quest is 1]Wetting my Pampies[otherwise]Sex[end if] is way more fun than sums![roman type][line break][or][stopping]";
			otherwise:
				if the bimbo of the player < 15, say "[one of][line break][first custom style][line break]The urge to do maths in my head is fading...[roman type][line break][or][stopping]";
				otherwise say "[one of][line break][second custom style][line break]Aww, there was some cool fact about [if diaper quest is 0]sex[otherwise]being a baby[end if] I was just thinking about, but now I can't remember it...[roman type][line break][or][stopping]";
			now the old intelligence of the player is saved-flat-intelligence;
			break.

Reflection ends here.
