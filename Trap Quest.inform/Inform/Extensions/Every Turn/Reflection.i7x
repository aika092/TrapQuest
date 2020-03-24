Reflection by Every Turn begins here.

[!<ComputeHumiliationWithEarningsAndSeconds>+

Compute stuff to do with humiliation and reflection that happens every turn.
We reduce the player's humiliation by the number of seconds, and then we check if it's time to output some more random flavour as the player reflects on their situation.

+!]
A later time based rule (this is the reflection rule):
	let N be 239; [The number of seconds between each reflection]
	if the remainder after dividing time-earnings by N < time-seconds and the player is not a nympho:
		say HumiliationFlav;
	otherwise if the number of interested monsters in the location of the player is 0 and the player is not immobile:
		say StatsChangedFlav;
	if the strut of the player is 1 and the player is upright and the player is not immobile and there is a worn heels and the player-class is not succubus, humiliate time-seconds;
	otherwise dignify time-seconds.

[!<HumiliatingSituation>@

An object that contains all the information on a specific type of humiliation situation that the player might want to say something to themselves about.

@inherits <Object>

@!]
A humiliating situation is a kind of object.

[!<HumiliatingSituationIsApplicable>+

Is this humiliation situation currently valid to show to the player?

+!]
Definition: a humiliating situation is applicable: decide no.

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
	say "[first custom style][one of]This is literally the most embarrassing thing that has ever happened to me.[or]This has got to stop! Why did I sit here...[or]Okay, this is the LAST time I let this happen...[or]Fuck, my belly is ridiculously huge![stopping][roman type][line break]".

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
		say "A mocking voice echoes within you, saying you should be ashamed of your puny breasts.";
	otherwise:
		say "[if the bimbo of the player < 9]You hold your [MediumDesc of breasts] and [one of]shudder as you wonder how much bigger they are going to grow[or]feel their weight. You are not used to this[or]pray that they don't continue to grow[or]hope desperately that nobody can see you like this[in random order][otherwise]You feel your [MediumDesc of breasts] and giggle awkwardly as you [one of]wonder how much bigger they are going to grow[or]absent-mindedly play with your nipples[or]catch yourself absent-mindedly touching yourself[or]imagine how stupidly big they might end up at this rate[in random order][end if].".

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
		say "A mocking voice echoes within you, saying you should be ashamed of your stick of a body.";
	otherwise if the player is not immobile:
		say "[if the bimbo of the player < 9]You hold your [MediumDesc of hips] to stop them [one of]swaying sexily behind you[or]wobbling[in random order], and pray that no[one of] perverted businessmen are[or]body is[sticky random] watching you play this game.[otherwise]You grab hold of your wobbling [AssDesc] and realise that people could be watching you...[end if]".

huge-belly is a humiliating situation.
Definition: huge-belly (called A) is applicable:
	if the player is modest and the semen addiction of the player < 9 and (the pregnancy of the player > 0 or (the player is male and pregnancy fetish is 1 and the largeness of belly > 5)), decide yes;
	decide no.
To reflect on (A - huge-belly):
	if the largeness of belly > the bimbo of the player + 4:
		say "[if the player is male]You look down at your [BellyDesc] and [one of]realise how fucked up your situation really is[or]wonder if this is what it feels like to be pregnant[or]feel a shiver of shame go down your spine[in random order].[otherwise if the largeness of belly > 4]You put a hand on your [BellyDesc].[line break][variable custom style][one of]I can definitely feel kicking.[or]I just can't believe I got myself knocked up so quickly.[or]I don't want to give birth...[in random order][otherwise]You put a hand on your [BellyDesc].[line break][first custom style][one of]Was that just me or did I just feel kicking??[or]Can I get pregnant in this game??[or]Please don't tell me this means what I think it means...[in random order][roman type][line break][end if]";
	otherwise:
		say "[if the player is male]You look down at your [BellyDesc] and [one of]realise how ridiculous your situation really is[or]are suddenly very thankful that you can't get pregnant[or]quiver as you think about how large it might be able to grow to in this game[in random order].[otherwise]You put a hand on your [BellyDesc].[line break][first custom style][one of]So this is what it's like to feel pregnant? How humiliating...[or]Please don't grow any more...[or]I mustn't let anything else cum inside me![in random order][roman type][line break][end if]".

crawling-around is a humiliating situation.
Definition: crawling-around (called A) is applicable:
	if (the player is proud or the player-class is succubus or the class of the player is princess) and the player is prone, decide yes;
	decide no.
To reflect on (A - crawling-around):
	if the class of the player is princess:
		say "[first custom style]Why am I crawling around on my knees like some sort of peasant...[roman type][line break]";
	otherwise if the bimbo of the player < 3 and the player-class is not succubus:
		say "[first custom style]I'm on my knees [one of]crawling through this place[or]crawling around like a [if diaper lover >= 1]kid[otherwise]dog[end if][or]like some kind of [if diaper quest is 1]baby[otherwise]common slut[end if][in random order]. How humiliating is this![roman type][line break]";
	otherwise if the player-class is succubus:
		say "A mocking voice in your head chides you for crawling like a pathetic mortal.";
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
		say "A voice inside you quietly tells you how demeaning it is that you aren[']t wearing proper heels!".

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
		say "[variable custom style][one of]I'm so fat... I look disgusting![or]I'm so horribly fat! Nobody is going to want to have sex with me...[or]If I don't even respect myself enough to keep in shape, then why should other people respect me?[in random order][roman type][line break]";
	otherwise if the fat-weight of the player > 14:
		say "[variable custom style][one of]Uh-oh, I'm really quite a heavy [if the player is female]girl[otherwise]person[end if] now aren't I?[or]Oops, I've really started to let myself go! I should probably be less lazy...[in random order][roman type][line break]";
	otherwise if the fat-weight of the player > 8:
		say "[variable custom style][one of]Oh dear, I'm getting a bit unfit, aren't I?[or]Oh dear, I feel like I'm getting a bit chubby![in random order][roman type][line break]".

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
	otherwise say "[first custom style][one of]Am I really wearing a diaper? Me, a fully grown [if the player is female]wo[end if]man, wearing an incontinence aid meant for babies?! No, this can't be happening...[or]Are they watching me? Do they know I'm wearing a diaper in their fucked up game? I bet they do, the bastards...[or]If anyone in the real world know what I was wearing over my crotch down here... I think I'd just die of embarrassment.[in random order][roman type][line break]".

outrageous-wet-diaper is a humiliating situation.
Definition: outrageous-wet-diaper (called A) is applicable:
	if the player is modest and the diaper addiction of the player < 8 and there is a worn perceived wet unmessed diaper, decide yes;
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

[!<SayHumiliationFlav>+

Take one of the currently valid humiliation reflection flavours and say it. Won't happen after the player hits nympho levels.

+!]
To say HumiliationFlav:
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
				otherwise say "[one of][line break][second custom style][line break]I'm so flexible I can [if diaper quest is 0]touch my elbows together behind my back! Oops, that just makes me push my chest out even more provocatively[otherwise]do the splits all the way to the ground. I bet being able to get your thighs so far apart is useful when wearing huge nappies all the time[end if]. Tee-hee![roman type][line break][or][stopping]";
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
				otherwise say "[one of][line break][second custom style][line break]Aww, I'm not flexible enough to touch my elbows together in front of me any more. Oops, that just makes me push my cleavage together even more provocatively! Tee-hee![roman type][line break][or][stopping]";
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
				otherwise say "[one of][line break][second custom style][line break]Keep trying to think about stuff, but, like, I just keep thinking about [if diaper quest is 0][manly-penis]s[otherwise]my no-no[end if]... tee-hee![roman type][line break][or][stopping]";
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
