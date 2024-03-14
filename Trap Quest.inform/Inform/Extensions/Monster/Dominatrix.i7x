Dominatrix by Monster begins here.

dominatrix is a monster. dominatrix is intelligent. The leftover-type of dominatrix is 125.

[!<Dominatrix>@<disappointment:Integer>*

If above 0, the player came early during the most recent sex session, and the dominatrix is not impressed.

*@!]
dominatrix has a number called disappointment.

[!<Dominatrix>@<strapOnGirth:Integer>*

Determines the thickness of the dominatrix's strapon.

*@!]
dominatrix has a number called strap-on girth. The strap-on girth of dominatrix is 2.

[!<Dominatrix>@<frustration:Integer>*

Indicates how tired the dominatrix is of dealing with the player. Mainly only relevant if she is friendly, and increases whenever the player does something she likes. Decreases when the player makes her wait or when they stop sex early.

*@!]
dominatrix has a number called frustration.

[!<Dominatrix>@<slaveStatus:Integer>*

Determines whether the dominatrix sees you as a slave, an equal, or a "superior." Higher is more of a slave, lower is more of a master.

*@!]
dominatrix has a number called slave-status.

dominatrix can be dominatrix-equipped or not dominatrix-equipped. dominatrix is not dominatrix-equipped.

Understand "strict" as dominatrix. The text-shortcut of dominatrix is "dom".

To say ShortDesc of (M - dominatrix):
	say "[if lady fetish is 2]male [end if]dominatrix".

To say MediumDesc of (M - dominatrix):
	say "[if lady fetish is 2]male[otherwise]strict[end if] dominatrix".

Definition: dominatrix is willing to do oral: decide yes.

Definition: dominatrix is willing to do anal: decide yes.

Definition: dominatrix is a generic-unlocker: decide yes.

Definition: dominatrix is a diaper wetter:
	if diaper quest is 1, decide yes;
	decide no.

Definition: a dominatrix is willing to charm snakes:
	if diaper quest is 0, decide yes;
	if there is a worn chastity bond, decide no;
	decide no.

Definition: dominatrix is hotel dwelling: decide yes.
Definition: dominatrix is closest-toilet-preferring: decide yes.

Figure of Dominatrix Cutscene 1 is the file "NPCs/Hotel/Dominatrix/cutscene-dominatrix-heel1.png".
Figure of Dominatrix Cutscene 2 is the file "NPCs/Hotel/Dominatrix/cutscene-dominatrix-heel2.png".
Figure of Dominatrix Cutscene 3 is the file "NPCs/Hotel/Dominatrix/cutscene-dominatrix-heel3.png".
Figure of Dominatrix Cutscene 6 is the file "NPCs/Hotel/Dominatrix/cutscene-dominatrix-heel4.png".
Figure of Dominatrix Cutscene 7 is the file "NPCs/Hotel/Dominatrix/cutscene-dominatrix-jizz1.png".

To say MonsterDesc of (M - dominatrix):
	if diaper quest is 0:
		let N be the strap-on girth of M;
		say "This brunette [man of M] is standing aggressively and it doesn't look like [he of M] messes around. [big he of M] is wearing thigh-length latex boots, [if N < 4]a black latex jacket, which has been unbuttoned slightly to show a bit of cleavage[otherwise if N < 6]a black latex jacket, which has been unbuttoned to show off a sliver of [his of M] toned chest and stomach[otherwise]a black latex overbust corset[end if], and a [StraponDesc of M] [run paragraph on]";
	otherwise:
		say "This brunette [man of M] is standing aggressively and it doesn't look like [he of M] messes around. Your eyes can't help but look down at the bottom half of [his of M] black spandex outfit, where [he of M] is sporting a huge black diaper with a very unique strap-on at the front: instead of a dong there's a large baby's bottle, tip facing outwards, slowly dripping [milk].";
	if M is dominatrix-equipped:
		if M is wrangling a body part, say "[big he of M] is carrying a large, leather riding crop in one hand and a whip, which is currently wrapped around your [if M is wrangling arms]wrist[otherwise]ankle[end if], in the other.";
		otherwise say "[big he of M] is carrying a large, leather riding crop[if M is carrying whip-of-domination] in one hand and a whip in the other[end if].";
	otherwise:
		say "[big he of M] is carrying a short, leather riding crop.".

To decide which number is the girth of (M - dominatrix):
	if woman-player is in the location of the player and the woman-status of woman-player is 93 and woman-player is awake, decide on 8;
	decide on the strap-on girth of M.[This is strap-on girth.]

To say DickDesc of (M - a dominatrix):
	say "strap-on";

To say LongDickDesc of (M - a dominatrix):
	let N be the strap-on girth of M + 5;
	if the strap-on girth of M >= 6, now N is 12;
	say "[PenisSizeFlav N] strap-on [PenisShaftFlav N]".

To say StrapOnDesc of (M - dominatrix):[###MG: Is 8 inches/10 inches thick really right? Should this be in centimetres instead? Selkie: maybe circumference? Sounds way too thick to be a diameter, yeah! Aika: Selkie is correct, penis girth is usually measured in circumference]
	say "[if the strap-on girth of M < 4]a slightly larger than normal sized red strap-on dildo, about as thick than the average male penis and noticeably longer. You would guess around 8 to 9 inches.[otherwise if the strap-on girth of M < 6]a very large red strap-on dildo, probably 8 inches thick and 10 inches long.[otherwise if mythical creature fetish is 1]the largest strap-on dildo you've ever seen; fashioned in the shape of a horse-cock. It must be 10 to 12 inches thick and about 20 inches long, there's no way the entire length could fit in any living human, and that's assuming such a thick dong could get in at all.[otherwise]the largest strap-on dildo you've ever seen. It must be 10 to 12 inches thick and about 20 inches long, there's no way the entire length could fit in any living human, and that's assuming such a thick dong could get in at all.[end if]".

To say MonsterComment of (M - dominatrix):
	if diaper quest is 1:
		if the player is gendered female and the milk taste addiction of the player < 7 and the player is not a pervert:
			say "[first custom style][one of]Ugh, how perverted. Even the [men of M] have penises around here.[or][big he of M] has the look of someone who is answered to.[in random order]";
		otherwise:
			say "[variable custom style]Why does that strapon look so appetising?";
	otherwise if the strap-on girth of M < 4:
		if lady fetish is 2:
			say "[variable custom style][one of]Why would a guy wear something like that?[or]I guess it's better than a real dick hanging out.[or]I feel safe when I'm near [him of M], but scared at the same time.[in random order]";
		otherwise if the player is gendered female and the bimbo of the player < 7:
			say "[first custom style][one of]Ugh, how perverted. Even the [men of M] have penises around here.[or]I suppose that's one way to keep the men off you. Gross.[or]I have a feeling I don't want to mess with this [man of M].[or][big he of M] seems rather taken with that strap-on of [hers of M]. I doubt [he of M][']ll try to violate me with it unless I've done something to please [him of M].[or][big he of M] has the look of someone who is answered to.[in random order]";
		otherwise if the player is gendered female and the bimbo of the player < 14:
			say "[variable custom style][one of]Why does that strapon look so appetising?[or]Why do I feel like I should do anything [he of M] says?[or]I feel safe when I'm near [him of M], but scared at the same time.[in random order]";
		otherwise if the player is gendered female:
			say "[second custom style][one of]I want to give [his of M] strapon a big sloppy blowjob![or]I'll do anything [he of M] says! I hope [he of M] wants something naughty![or]I can tell [he of M] knows all the best ways of having a good time![in random order]";
		otherwise if the bimbo of the player < 7:
			say "[first custom style][one of]Is that a dildo? Haha, it's pointing the wrong way. Right?[or][big he of M][']s bad news. I'm not sure I want to risk messing with [him of M].[or]Why do I feel like [he of M] expects something from me?[or][if the size of penis < 1]It's not fair [he of M] gets to have a dick that big and I don't even get one![otherwise if the size of penis < 8]That dildo is actually bigger than my dick. Heh...[otherwise]That strapon is actually the size of a real dick... on [him of M] it seems a little bit excessive.[end if][or]That strapon probably isn't for [him of M].[in random order]";
		otherwise if the player is gendered male and the bimbo of the player < 14:
			say "[variable custom style][one of][if the size of penis < 1]Maybe if I get on [his of M] good side I can use [his of M] strapon as a replacement penis.[otherwise if the size of penis < 8]That dildo isn't even that big, but it's still bigger than me. Can I really call myself a man if [he of M] can out-compete me with a hunk of plastic?[otherwise]It takes more than a hunk of plastic to out-compete me! Even if I don't really deserve a penis this big...[end if][or]All I can think about when I look at [him of M] is how much more of a man [he of M] is than me.[or]I really want to know what [his of M] strapon would feel like inside me. It wouldn't be gay, [he of M]'s a [man of M].[in random order]";
		otherwise:
			say "[second custom style][one of]I'll give anyone a blowjob, even a girl![or]I prefer guys, but that strapon looks almost as good as the real thing![or]All [manly-penis]s make me [if the size of penis < 1]horny[otherwise]hard[end if], even fake ones![if the size of penis < 1]Between us, there's only one penis, but [he of M] probably deserves it way more![otherwise if the size of penis < 8]So that's what a real penis looks like. Well, it's plastic, but it's certainly realer than mine. I'm the girl and [he of M][']s the man! Teehee![otherwise]My penis is bigger than [his of M] strapon, but [hers of M] matters more, since it feels better when I cum with my asshole.[end if][in random order]";
	otherwise if the strap-on girth of M < 6:
		if the player is gendered female and the bimbo of the player < 7:
			say "[first custom style][one of]Ugh, is that supposed to be my reward for humiliating myself? Disgusting.[or]I debase myself like that, and [he of M] comes back with a bigger dildo?[or]So this is my punishment. A bigger dildo for [him of M] to violate me with. I'm not sure I like the alternative, but how am I supposed to deal with that thing?[in random order]";
		otherwise if the player is gendered female and the bimbo of the player < 14:
			say "[variable custom style][one of]That must be the new toy [he of M] was talking about. It's so big...[or]I can't believe I let [him of M] violate me. Well, maybe violate isn't the right word. It wasn't awful.[or]I just know [he of M]'s going to try to put that dildo in me too. But, I won't let [him of M].[or][big he of M]'s so domineering. Where does [he of M] get off telling me I can't cum. Not that I want to.[in random order]";
		otherwise if the player is gendered female:
			say "[second custom style][one of]Wow! Look at that cock![or][big his of M] new dildo looks so yummy! If I'm good, maybe I'll get fucked with it![or]Sometimes, I wish guys would grow bigger cocks if you do your best to make them feel good. I guess [literalMistress of M] is better than a guy![or][big his of M] rules about orgasms are so unfair! It feels so good when [literalMistress of M] fucks me, how can I not cum?[in random order]";
		otherwise if the bimbo of the player < 7:
			say "[first custom style][one of]Did [he of M] actually change that dildo as a fucking reward for me? What if word gets around that I let people fuck me?[or]OK, so my choices are, let [him of M] fuck me with that thing, or let a bunch of dudes jizz on my face? Why is this game so gay![or][if the player is not possessing a penis][big he of M] must be rubbing it in that I don't have a dick anymore. This is so uncool...[otherwise if the size of penis < 5]It was bad enough letting [him of M] fuck me with the first dildo. I look like a baby compared to [him of M] now...[otherwise if the size of penis < 9]Wait, what happened to the other dildo? This one is bigger than I am. This is fucking bullshit...[otherwise]OK, so what if [he of M] decides I'm a chick or something. My dick is still massive, and I'll always have that on [him of M]. Next time we meet, things will change, and I'll be the one fucking [him of M].[end if][in random order]";
		otherwise if the bimbo of the player < 14:
			say "[variable custom style][one of]I can't believe I actually let [him of M] fuck me. I'm supposed to be a man, men shouldn't get fucked...[or]I know I don't want [him of M] to fuck me with that again, but, I don't want to punish me either. How did I get into this mess?[or]I'm actually looking forward to letting [him of M] fuck me again. I guess I'm a total [if the player is sexed male]fag[otherwise]slut[end if] now.[or]I'm [his of M] slave now, so I can't exactly say no if [he of M] wants to but that in me, but it's not like I wanted to be [his of M] slave in the first place. I think.[or][if the player is not possessing a penis]I'm stuck with no penis, and [hers of M] is even bigger. If I let people fuck me, and I don't have a penis, how can I call myself a man?[otherwise if the size of penis < 5]The first dildo made me feel inadequate. This is just cruel. It's not my fault if my penis keeps shrinking! Everybody wants to fuck me![otherwise if the size of penis < 9][big his of M] dildo is actually bigger than my penis. I deserve to be smaller, though. After letting [him of M] fuck me, there's no way for me to pretend I make a better man than [he of M] does.[otherwise]My dick is still bigger than [hers of M], but only by a few inches. And if I keep letting [him of M] fuck me, it's only a matter of time until that's not true.[end if][or]I know by now it's not a good idea to play by [his of M] rules, but how am I supposed to hold my orgasm when that thing is going to be ramming [if the player is sexed male]my prostate[otherwise]me[end if]?[in random order]";
		otherwise:
			say "[second custom style][one of]That is going to feel so good inside me! I'm glad one of us knows how to use a dick![or]I love big cocks, even if they're plastic and attached to a [man of M] instead of a sexy man.[or]Before I started this game, I wanted to fuck girls, now I want to give blowjobs and get fucked. With [him of M] around, I can do both! Teehee![or][big literalMistress of M] knows I've been good, so I deserve to get fucked HARD![or][if the size of penis < 1][big literalMistress of M] is my lesbian lover![otherwise if the size of penis < 5]My penis is useless, but [literalMistress of M] has more than enough for the both of us![otherwise if the size of penis < 9][big his of M] dildo is bigger than my penis! Just the way things should be.[otherwise if the player is sexed male][big his of M] strapon is still smaller than my cock. Oh well, that just means I'll cum more when [he of M][']s done pounding my prostate![end if][or]If [literalMistress of M] says not to cum, I shouldn't. But [he of M] must have no idea what it's like to have a big hard cock ram your [if the player is sexed male]prostate[otherwise]hole[end if]![or]If I want a bigger toy to play with, I need to control my orgasms. But since I'm such a dirty slut, it will not be easy![in random order]";
	otherwise:
		if the player is gendered female and the bimbo of the player < 7:
			say "[first custom style][one of]That thing must be a fucking joke. [big he of M] can't honestly expect me to let [him of M] put that in me.[or]Is that a HORSE penis?[or]I know I've been acting like a tart, but [he of M][']s obviously trying to insinuate I'm some sort of animal![or]That evil [man of M]... [he of M] probably plans on putting that monster inside me.[or]So this is how [he of M] rewards [his of M] slaves? I'm not looking forward to dealing with the Nintendolls when I get out...[in random order]";
		otherwise if the player is gendered female and the bimbo of the player < 14:
			say "[variable custom style][one of]That dildo is massive. I guess I should prepare myself.[or]So far I've taken everything else [he of M]'s done to me. I know it's wrong, but I'm looking forward to taking that too.[or]This must have been [his of M] game from the start. [big he of M][']s been training me this whole time, and now I don't think there's any way I can avoid having that monster stuffed inside me. I might as well try to enjoy it.[or]I feel like I owe it to [him of M] to let [him of M] fuck me with that strapon. But... [he of M][']s done nothing but bully and fuck me since we met.[or][first custom style]If [he of M] tells me [he of M] wants to put that thing inside me... I know I'll try to say no, but...[second custom style]submitting just feels too good.[or]I'm addicted to getting fucked by [his of M] huge strapon. This game has changed me into such a pervert...[or][first custom style]I am certain I can't handle a dildo that size. [second custom style]But I'll try anything for my [literalMistress of M].[in random order]";
		otherwise if the bimbo of the player < 7:
			say "[first custom style][one of]I can't exactly let [him of M] offer me up to the patrons, but I don't want that monster anywhere near me.[or]Again?! Why is it bigger again?[or][if lady fetish is 2]H-he[otherwise]S-she[end if] can't honestly expect me to take that thing? I'm a guy, I'm built to fuck things, not the other way around![or]WHAT THE FUCK, THAT'S HUGE![or][if the player is not possessing a penis]The size of that thing is fucking insane. Why don't I get one of those?[otherwise if the size of penis < 5]This sucks. Everybody gets to be bigger than me. I couldn't even top that if I tried...[otherwise if the size of penis < 9]I have a normal dick size, but I'm not even half as big as that thing. Everything in this game is out to make me feel like a chick.[otherwise]My dick is supposed to be huge, but now this shit? Ugh whatever, I might as well take the patron bullshit, I'm not letting this chick fuck me any more.[end if][in random order]";
		otherwise if the bimbo of the player < 14:
			say "[variable custom style][one of]Hopefully that's as big as it gets. It was enough trouble dealing with [his of M] second strapon, I have no idea how I'd deal with a fourth one. It might feel good though...[or]I want to try it. Just to say I tried it, not because I like getting fucked, I just want to say I tried it.[or]When I'm around [him of M], I feel like a possession. It's like [he of M] doesn't even care I'm supposed to be a man.[or][big he of M]'s going to fuck me with that thing, isn't [he of M]?[or][if the player is not possessing a penis][big he of M] does the fucking, I follow all of [him of M] orders, and I don't have a dick. I'm a girl, there's no denying it.[otherwise if the size of penis < 4][big he of M]'s fucked me so many times. And I keep letting it happen. Honestly, where do I get off calling myself a man? It's not like my penis is big enough to please anyone.[otherwise if the size of penis < 9]I'm still average sized, but after letting [him of M] fuck me so many times, I guess it's natural [he of M] would be twice my size...[otherwise]I thought I had a huge dick, but I guess I just didn't know what huge really was. Why don't I feel jealous?[end if][or]My [if the player is sexed male]prostate[otherwise]body[end if] can't survive a beating from that monster. If I get fucked by that thing, I'm going to cum whether I want to or not.[or][first custom style][if the player is possessing a penis]I'm getting hard just looking at that thing[otherwise]I'm getting horny just looking at that thing[end if]. I can't help it, it's just so [second custom style]BIG![or][big he of M][']s trained me into the perfect fuckhole. Why am I proud of that?[or]I hope I get to cum soon...[in random order]";
		otherwise:
			say "[second custom style][one of]I'm looking forward to getting POUNDED by that![or][big literalMistress of M] is going to be so happy. I'm determined to last longer this time![or]I hope [literalMistress of M] feels like fucking me today. I hate boot for dinner...[or]Teehee! It's SO big![or][big literalMistress of M] is going to rut me like an animal!~[or]I think [literalMistress of M] is going to give me permission to cum soon! OOooh I can't wait![or][big literalMistress of M] did such a good job training me, I'm sure I can take [his of M] strapon no problem![or]I love getting pounded by my [literalMistress of M]![or]I hope [literalMistress of M] is rough today...[in random order]";[highest bimbo functions are combined]
	say "[roman type][line break]";

Definition: dominatrix is penis-virginity taking: decide no.
Definition: dominatrix is wenchy: decide yes.

To set up (M - dominatrix):
	reset M;
	now the monstersetup of M is 1;
	now the raw difficulty of M is the starting difficulty of M;
	now the health of M is the maxhealth of M;
	let noLube be true;
	repeat with C running through the tradableItems of M:
		if C is lubricant, now noLube is false;
	if noLube is true:
		let L be a random lubricant;
		add L to the tradableItems of M;
	add restriction-salve to the tradableItems of M, if absent;
	add metal-cage to the tradableItems of M, if absent;
	add focus band to the taxableItems of M, if absent;
	calm M;
	now the boredom of M is 1000.

This is the spawn initial dominatrix rule:
	now dominatrix is in Hotel37;
	now whip-of-domination is in Hotel37.
The spawn initial dominatrix rule is listed in the setting up hotel monsters rules.

Definition: dominatrix is human: decide yes.

Part 1 - Misc Flavour

To say SummoningFlav of (M - dominatrix):
	if M is in the location of the player:
		say "The teleportation pad emits a definitive sounding hum, and light fills the room as an imposing looking woman materialises on top of it. [BigNameDesc of M] hums to [himself of M], adjusting [his of M] [LongDickDesc of M] as [he of M] steps off the pad.";
	otherwise:
		say "You hear the sound of a [man of M] humming gently.".

To say speech style of (M - dominatrix):
	say first custom style.

To say GrabStatus of (M - dominatrix):
	say "has you in bondage".

To say SexResistFlav of (M - dominatrix):
	if diaper quest is 0:
		if M is penetrating face and M is not friendly-fucking:
			say "[if the player is able to speak][line break][variable custom style]'No way!'[roman type][line break][otherwise]You turn your head away in refusal![end if]";
		otherwise if M is penetrating asshole:
			say "[if the anal sex addiction of the player < 3][one of]You fight back against [NameDesc of M], desperate to break out of [his of M] grip.[or]You struggle as much as you can. Orgasming is the last thing on your mind![or]You try to throw [NameDesc of M] off, but [he of M]'s too strong![or]You move away from [NameDesc of M] as [he of M] pushes into you, to try to minimise the impact of [his of M] thrusts.[in random order][otherwise if the anal sex addiction of the player < 5][one of]You fight back against [NameDesc of M], desperate not to let [him of M] win and make you orgasm![or]You move away from [NameDesc of M] as [he of M] pushes into you, to try to minimise the impact of [his of M] thrusts.[or]You grit your teeth together and try to wiggle away.[in random order][otherwise][one of]You playfully wiggle away from [NameDesc of M], making it more difficult for [him of M] to fuck you properly.[or]You hold still, refusing to join in your butt love session properly.[or]You hold still, concentrating on trying not to cum.[in random order][end if]";
		otherwise if M is spanking the player and there is a patron in the location of the player:
			let P be a random patron in the location of the player;
			if bukkake fetish is 1:
				if the player is able to speak, say "[variable custom style]'[if the semen taste addiction of the player > 12 and the semen taste addiction of the player > the semen addiction of the player][one of]Guys you're being mean! At least cum in my mouth so I get to taste it properly...'[or]This is so unfair, at least let me taste it properly!'[or]Stop teasing me with your cum and let me suck your cocks properly!'[in random order][otherwise if the semen addiction of the player > 10][one of]I don't mind you jizzing on my face, but can you get this crazy [man of M] to stop first? Ow ow ow!'[or]If you wanted me to be your bukkake queen you just had to ask... you didn't have to gang up on me while I'm being abused already!'[in random order][otherwise if the bimbo of the player > 9][one of]Ooh, why do there have to be so many of you watching?'[or][big literalMistress of M], you're being mean! Tell them to stop!'[or]Please at least wait until [he of M] stops paddling me! Oof!'[then at random][otherwise if the semen coating of face is 0][one of]Piss off guys, this isn't funny!'[or]You're not seriously going to mess up my face while I'm bound like this, are you?!'[or]Come on, [he of M] was joking, right? Right???'[or]Seriously, I'm not enjoying this! I didn't even get a safe word! You have to believe me!'[or]Don't listen to that [man of M]! [big he of M]'s insane!'[at random][otherwise][one of]Don't you think this has gone far enough already?!'[or]Why would you obey this psycho??'[or]Fucking hell, I'm not your plaything! Stop this now!'[or]Do you really think this is consensual?'[or]Oh my god, how gross!'[or]Yuck yuck yuck! Get away from me!'[or]No more, please!'[at random][end if][roman type][line break]";
				otherwise say "[if the oral sex addiction of the player > 7 and the semen taste addiction of the player > the semen addiction of the player]You look longingly at the [DickDesc of P]s but the pain in your backside keeps bringing you back down to earth, struggling against the stocks.[otherwise if the semen addiction of the player > 13]You look lovingly at the [DickDesc of P]s, excited to get coated in more [semen], but the pain in your backside keeps bringing you back down to earth, struggling against the stocks.[otherwise if the bimbo of the player > 9]You yelp in pain with each swat of the paddle, your intolerance to the pain winning out against your desire to please your [literalMistress of M].[otherwise if the semen coating of face is 0]You stare in fear at the several [DickDesc of P]s pointed directly at your face.[otherwise]You shake your limbs in their bonds, silently shooting daggers at the patrons with your eyes.[end if]";
			otherwise:
				if the player is able to speak, say "[variable custom style]'[if the oral sex addiction of the player > 6]Look, I'd love to suck your [DickDesc of P] but can you get Miss Psycho back there to let me out first??'[otherwise if the oral sex addiction of the player > 3]This is not how I usually give blowjobs! Owww!'[otherwise][one of]Don't listen to [him of M]! I don't want to suck your [DickDesc of P]!'[or]You're kidding, right??'[at random][end if][roman type][line break]";
				otherwise say "[if there is a patron filling face][muffled sounds][otherwise if the oral sex addiction of the player > 6]You look longingly at the [DickDesc of P] but the pain in your backside keeps bringing you back down to Earth, struggling against the stocks.[otherwise if the delicateness of the player > a random number between 8 and 12]You yelp in pain with each swat of the paddle, your intolerance to the pain winning out against your desire to please your Mistress.[otherwise]You shake your limbs in their bonds, silently shooting daggers at the patron with your eyes.[end if]";
		otherwise:
			say "You struggle in vain to free yourself!";
	otherwise if M is feeding the player:
		say "You refuse to suck, [one of]furrowing your brow with indignation[or]looking up at [NameDesc of M] rebelliously[or]pulling your head back as much as you can[or]fighting against [NameDesc of M][']s grip on your head[in random order]. [BigNameDesc of M] squeezes the bottle, ensuring that it still squirts some [milk] into your mouth.";
	otherwise:
		say "You struggle in vain to free yourself!".

To compute kneeling reaction of (M - dominatrix):
	say "[BigNameDesc of M] [one of]raises an eyebrow[or]smiles knowingly[or]grins[at random].[line break][speech style of M]'[one of]If you feel a rush right now, that's your body telling you what your proper place is.'[or]Feeling properly submissive now? Good, I like when my subs know what their role is.'[or]Through playing games? Ready to worship your mistress?'[or]You're adorable when you try to fight me. We both know it's always going to be pointless though.'[or][if diaper quest is 0]I only put this cock of mine in holes that belong to me, slave. So, why[otherwise]Why[end if] don't you show me what belongs to me?'[at random][roman type][line break][if the player is not shameless]You shiver with shame.[end if]";
	strongHumiliate.

To compute delay of (M - dominatrix):
	say "[BigNameDesc of M] impatiently taps [his of M] foot, as if waiting to see what you do next.".

To compute sex resist anger of (M - dominatrix):
	do nothing.

Part 2 - Perception

Definition: dominatrix (called M) is objectifying the player:
	if wrestler-hood is worn, decide yes;
	if the class of the player is cheerleader, decide no;
	if the woman-status of woman-player is 93 and the dominatrix-contraption-scene of woman-player <= 5 and woman-player is in the location of the player, decide no;
	if the slave-status of M < -3, decide no;
	if the times-submitted of M > 3 and the frustration of M < 1, decide yes;
	if the class of the player is royal slave, decide yes;
	if the class of the player is latex fetish model, decide yes;
	if the player is feeling submissive, decide yes;
	if M is in the location of the player:
		if the player is prone or there is a wrestler in the location of M, decide yes;
	decide no.

To compute correct perception of (M - dominatrix):
	if dominatrix-cage is not grabbing the player:
		now the latest-appearance of M is the appearance of the player;
		if diaper quest is 1:
			now the latest-cringe of M is the cringe appearance of the player; [We only want to do that if we're playing DQ otherwise we're wasting CPU cycles]
			compute DQ perception of M;
		otherwise:
			compute perception of M;
		trigger dominatrix-wisp-quest.

To compute perception of (M - dominatrix):
	if the disappointment of M > 1, now the strap-on girth of M is the disappointment of M;
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]";[We shouldn't need a linebreak here because punctuation inside text-based if-clauses cause an automatic line break]
	if wrestler-hood is worn:
		say "[speech style of M]'There you are, [if watersports fetish is 1]Toilet[otherwise]Slave[end if].'[roman type][line break]";
	otherwise if the woman-status of woman-player is 93 and the dominatrix-contraption-scene of woman-player <= 5 and woman-player is in the location of the player:
		say "[BigNameDesc of M] grins.[line break][speech style of M]'Enjoying the show?'[roman type][line break]";
		calm M;
	otherwise if wrestler-jumpsuit is worn and wrestler-hood is off-stage and wrestler-hood is actually summonable:
		say "[speech style of M]'Did you lose your hood, [if watersports fetish is 1]Toilet[otherwise]Slave[end if]? You are supposed to always wear one of these while in my presence.'[roman type][line break][BigNameDesc of M] puts a wrestler hood on you, to match your outfit!";
		summon wrestler-hood cursed with quest;
	otherwise if the current-errand of M is completed and M is not uniquely unfriendly:
		compute errand completion of M;
	otherwise if the class of the player is living sex doll:
		say "It doesn't look like [he of M]'s interested in you.";
		bore M;
	otherwise:
		if there is a worn messed knickers:
			say "[speech style of M]'Yuck. Go find the matron, [he of M] is much more suited to your needs than me.'[roman type][line break]";
			bore M;
			if there is worn perceived unmessed knickers, compute state check of a random worn messed knickers;
		otherwise if whip-of-domination is currently perceivable:
			say "[BigNameDesc of M] looks furious.[line break][speech style of M]'MY WHIP! It was you who stole it?! You will pay dearly for this!'[roman type][line break]";
			anger M;
			FavourDown M by 2;
		otherwise if the favour of M > 17:
			if M is in Hotel37, say "[BigNameDesc of M] smirks.[line break][speech style of M]'Already back for more. That's what I like about you, slut[if the disappointment of M > 1]. You're going to love the new toy I picked out for you.'[otherwise].'[end if][roman type][line break]";
			otherwise say "[BigNameDesc of M] smirks.[line break][speech style of M]'Ah, found you. I'm ready for another session, and I know you are too[if the disappointment of M > 1]. You're going to love the new toy I picked out for you.'[otherwise]. Let's go.'[end if][roman type][line break]";
		otherwise if the class of the player is royal slave:[no need to anger M when the dominatrix is uniquely unfriendly]
			say "[speech style of M]'[if M is unfriendly and M is in Hotel37]Ah, slave, you have returned. Good timing, I am ready to play with you again.'[otherwise if M is unfriendly]Slave, return to my dungeon with me. My needs are more pressing than the Princess's.'[otherwise]You, slave! You're owned by the princess? [big his of M] jurisdiction does not reach into my dungeon. You will be mine tonight.'[end if][roman type][line break]";
		otherwise if the class of the player is latex fetish model:
			say "[speech style of M]'[if M is unfriendly and M is in Hotel37]Ah, slave, you have returned. Good timing, I am ready to play with you again.'[otherwise if M is unfriendly]Slave, return to my dungeon with me. You will be my fucktoy again tonight.'[otherwise]Ooh, a rubber fuckdoll. I've been waiting for a natural sub like you to walk into my dungeon.'[end if][roman type][line break]";
		otherwise if the times-submitted of M > 3 and the frustration of M < 1:
			say "[speech style of M]'[one of]Ah, my favourite customer! I have some good news. Since you've been such a good sub, I've decided to give you my services free of charge. All I want from you is your unconditional submission! [if the player is prone]Don't move.'[otherwise]Get on your knees.'[end if][or]If it isn't my favourite slave. You know the drill by now, don't you, slut.[stopping][roman type][line break]";
		otherwise if M is unfriendly:
			if the times-met of M > 0:
				if M is in Hotel37, say "[BigNameDesc of M] smirks.[line break][speech style of M]'Back for more punishment, are you[if the disappointment of M > 1]. Do you like my new strap-on?'[otherwise].'[end if][roman type][line break]";
				otherwise say "[BigNameDesc of M] smirks.[line break][speech style of M]'Ah, found you. I'm ready for another session, and that means you are too[if the disappointment of M > 1]. Do you like my new strap-on?'[otherwise].'[end if][roman type][line break]";
			otherwise:
				say "[BigNameDesc of M] stares at you with intimidating eyes.[line break][speech style of M]'Yes, you'll do fine. [if the player is upright]Get on your knees[otherwise]I can tell by your crawling that you are a natural submissive[end if].'[roman type][line break]";
		otherwise:
			say "[BigNameDesc of M] glances at you.[line break][speech style of M]'You're not my type. I'm looking for a proper submissive.'[roman type][line break]";
			[if M is not in Hotel37:
				say "[big he of M] seems to immediately lose interest.";
				bore M for 300 seconds;] [removed since she now wanders around a lot more]
		if the disappointment of M > 1, now the disappointment of M is 0.

To compute dq perception of (M - dominatrix):
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]";
	if the woman-status of woman-player is 93 and the dominatrix-contraption-scene of woman-player <= 5 and woman-player is in the location of the player:
		say "[BigNameDesc of M] grins.[line break][speech style of M]'Enjoying the show?'[roman type][line break]";
		calm M;
	otherwise if there is soiled-diaper carried by M or there is a dirty diaper carried by M:
		say "[speech style of M]'[one of]I believe this is yours? Don't try and deny it. It appears I'm going to have to add you to my list of slaves-in-training, since you clearly can't be trusted to wander these halls on your own. For your first lesson, let's show you where we keep the diaper pail[or]Once again I found evidence of your disgusting accidents just lying around the floor of my hotel. I'm never going to let you get away with something like this[stopping]...'[roman type][line break]";
		anger M;
	otherwise if whip-of-domination is currently perceivable:
		say "[BigNameDesc of M] looks furious.[line break][speech style of M]'MY WHIP! It was you who stole it?! You will pay dearly for this!'[roman type][line break]";
		anger M;
		FavourDown M by 2;
	otherwise if M is unfriendly:
		if the times-met of M > 0:
			if M is in Hotel37, say "[BigNameDesc of M] smirks.[line break][speech style of M]'Back for more punishment, are you?'[roman type][line break]";
			otherwise say "[BigNameDesc of M] smirks.[line break][speech style of M]'Ah, found you. I'm ready for another session, and that means you are too.'[roman type][line break]";
		otherwise:
			say "[BigNameDesc of M] stares at you with intimidating eyes.[line break][speech style of M]'Yes, you'll do fine. [if the player is upright]Get on your knees[otherwise]I can tell by your crawling that you are a natural submissive[end if].'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] glances at you.[line break][speech style of M]'You're not my type. I'm looking for a proper submissive.'[roman type][line break]";
		if M is not in Hotel37:
			say "[big he of M] seems to immediately lose interest.";
			bore M for 300 seconds.

To say BecomesBoredFlav of (M - dominatrix):
	if M is uninterested, say "[BigNameDesc of M] seems to lose interest in you for now.".

To say MonsterOfferAcceptFlav of (M - a dominatrix) to (T - a thing):
	if M is unfriendly:
		say "[BigNameDesc of M] nods approvingly.[line break][speech style of M]'This will serve, to earn you brief reprieve before your punishment...'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] smiles politely.[line break][speech style of M]'I gladly accept your tribute.'[roman type][line break]".

Part 3 - Motion

To compute monstermotion of (M - dominatrix):
	if the woman-status of woman-player is 93 and woman-player is in the location of the player and the dominatrix-contraption-scene of woman-player < 6:
		check seeking 1 of M;
	otherwise if the boredom of M <= 0 and M is not acquaintance: [The dominatrix goes looking for the player after a while, if she is nearly unfriendly.]
		compute room leaving of M.

To compute (M - dominatrix) seeking (D - a direction): [The dominatrix only follows the player if unfriendly]
	if M is unfriendly:
		try M going D;
		compute monstermotion reactions of M.

To compute unique periodic effect of (M - dominatrix):
	if M is in Hotel37:
		if diaper quest is 1 and M is friendly:
			repeat with SD running through on-stage soiled-diaper:
				if SD is in a modern room and SD is not carried and SD is not in the location of the player and SD is not nearby:
					now SD is carried by M;
		if M is dominatrix-equipped and (M is not unfriendly or M is uninterested):[after combat is over, she puts the toys away]
			if the player is in Hotel37, say "[BigFuckerDesc of M] [if M is carrying whip-of-domination]returns the whip and the large riding crop[otherwise]returns the large riding crop[end if] to the rack on the wall.";
			now M is not dominatrix-equipped;
			if M is carrying whip-of-domination, now whip-of-domination is in Hotel37.[the whip gets left in the room]

Part 4 - Combat

Section 1 - Attack

The dominatrix priority attack rules is a rulebook.
The priority attack rules of dominatrix is usually the dominatrix priority attack rules.

This is the dominatrix whip acquisition rule:
	let M be current-monster;
	let W be whip-of-domination;
	if M is in Hotel37 and M is not dominatrix-equipped and M is unfriendly and M is interested and M is not penetrating a body part and M is not grabbing the player and M is not wrangling a body part and the player is upright:
		say "[BigFuckerDesc of M] grabs [if W is in Hotel37][his of M] whip and [end if]a bigger riding crop before rounding on you.";
		now M is dominatrix-equipped;
		if W is in Hotel37, now M is carrying W.
The dominatrix whip acquisition rule is listed in the dominatrix priority attack rules.

The monster fucked taunting rule of dominatrix is usually the matron gets bored rule.

The unique punishment rule of dominatrix is usually the dominatrix tops the player rule.

The dominatrix diaper quest rules is a rulebook. The diaper quest rules of dominatrix is the dominatrix diaper quest rules.

This is the dominatrix tops the player rule:
	if whip-of-domination is currently perceivable:
		say "[speech style of dominatrix]'I'll be taking this back!'[roman type][line break][BigNameDesc of dominatrix] reclaims [his of dominatrix] whip from you!";
		now whip-of-domination is in Hotel37;
		rule succeeds;
	otherwise:
		if current-monster is not grabbing the player, now current-monster is doing nothing special;
		follow the dominatrix drags the player rule;
		if the rule succeeded, rule succeeds; [If we dragged the player, then the dominatrix is done for this turn.]
		if current-monster is grabbing the player:
			if current-monster is spanking the player, compute stocks paddling of current-monster;
			otherwise compute whipping of current-monster;
			rule succeeds;
		if the health of current-monster < the maxhealth of current-monster: [If the player fought back, they get torture rather than just sex.]
			compute torturing of current-monster;
			rule succeeds.
The dominatrix tops the player rule is listed last in the dominatrix diaper quest rules.

This is the dominatrix drags the player rule:
	let M be current-monster;
	if M is not in Hotel37 and the player is prone:
		drag to Hotel37 by M;
		rule succeeds.
The dominatrix drags the player rule is listed last in the dominatrix diaper quest rules.

The choosing a diaper punishment rule is listed last in the dominatrix diaper quest rules.

To say DragArrival of (M - dominatrix) to (R - a room):
	say "[speech style of M]'Now kneel silently, eyes cast downward. Like a good slave.'[roman type][line break]".

To compute torturing of (M - dominatrix):
	say "[speech style of M]'[if the health of M < the maxhealth of M]You are going to learn a tough lesson in why you don't fight back against your superiors, whore.'[otherwise]You clearly need some [']education['] so that you can lean how to obey.'[end if][roman type][line break]";
	if a random number between 1 and 3 is 1:
		compute angry punishment of M; [at the time of coding, this leads to being put in the cage if possible.]
	otherwise if a random number between 1 and 2 is 1 or there is a worn messed knickers or there is a demon lord in the location of M:
		compute whipping of M;
	otherwise:
		compute stocks paddling of M.

To TimesSubmittedUp (M - dominatrix):
	increase the times-submitted of M by 1;
	if the number of modesty shutters in the location of the player > 0:
		let B be a random modesty shutter in the location of the player;
		say "[BigNameDesc of M] presses the button on [his of M] remote and the modesty shutter clatters up.";
		destroy B.

This is the dominatrix special spanking rule:
	if current-monster is spanking the player and current-monster is dominatrix and diaper quest is 0:
		compute stocks paddling of current-monster;
		rule succeeds.
The dominatrix special spanking rule is listed first in the default continue sex rules.

To compute stocks paddling of (M - dominatrix):
	if M is grabbing the player:
		if the sex-length of M is 3:
			let X be 1 + (bukkake fetish * 4);
			let P be a random off-stage generic-appropriate patron;
			while X >= 0:
				now P is a random off-stage generic-appropriate patron;
				set up P;
				now P is in the location of the player;
				anger P;
				decrease X by 1;
			say "[if the number of patrons in the location of the player <= 1]A curious passer-by walks into the room, and upon seeing you, grins widely[otherwise if lady fetish is 1]Several women pile into the room! They seem very excited to see you[otherwise]Several men pile into the room! They seem very happy to see you[end if].[line break][speech style of M]'What do we have here then?'[roman type][line break][if bukkake fetish is 1][line break][speech style of M]'It's a show for you lot. Stand around and watch, and feel free to use [his of the player] face as a target board, if you know what I mean.'[roman type][line break]They do indeed seem to know, as they all start slowly stroking their meat while staring at you.[otherwise if face is actually occupied][line break][speech style of M]'I just wanted someone to watch, it's not as humiliating for the little bitch here if I'm the only one that knows. Feel free to wank, but don't touch [him of the player], [he of the player]'s mine.'[roman type][line break]The [man of P] doesn't need telling twice, and already has [his of P] hands wrapped around [his of P] [DickDesc of P]. [big his of P] eyes are locked with yours.[otherwise][line break][speech style of M]'This end is your end, do what you want. I'll handle the other.'[roman type][line break]The [man of P] doesn't need telling twice, and heads straight for you.[end if]";
		if bukkake fetish is 1 and the number of patrons in the location of the player > 0:
			if the sex-length of M > 0:
				if there is a patron in the location of the player and lady fetish is 1:
					say "The [if the number of patrons in the location of the player > 1]women continue[otherwise]final woman continues[end if] to masturbate and watch.";
				otherwise if there is a patron in the location of the player:
					say "The [if the number of patrons in the location of the player > 1]men continue[otherwise]final man continues[end if] to masturbate and watch.";
				repeat with N running through patrons in the location of the player:
					if a random number between 1 and 5 is 1:
						compute dominatrixClimax of N;
			otherwise:[On the final turn, any left will cum.]
				repeat with N running through patrons in the location of the player:
					compute dominatrixClimax of N;
		otherwise if the number of patrons in the location of the player > 0 and the sex-length of M > 0:
			repeat with N running through patrons in the location of the player:
				if N is penetrating face:
					say "[BigNameDesc of N] keeps using your face as a fuckhole!";
				otherwise if face is not actually occupied:
					say "[BigNameDesc of N] holds your nose closed to force you to open your mouth, then immediately pushes [his of N] [DickDesc of N] inside.[line break][variable custom style]Mmmph![roman type][line break]";
					now N is penetrating face;
				otherwise:
					say "[BigNameDesc of N] keeps [his of N] eyes locked with you, stroking [himself of N] steadily.";
		otherwise:
			repeat with N running through patrons in the location of the player:
				if N is penetrating face:
					say DeepthroatCreampie of N;
					StomachSemenUp the semen load of N;
					instantThroat N;
					say "[BigNameDesc of N] pulls out and without even saying a word to you, walks away. You are too busy gasping for breath to be able to say anything to [him of N] before [he of N]'s out of sight.";
					now N is not penetrating face;
					destroy N;
					BlowCount;
				otherwise:
					say "[BigNameDesc of N] climaxes, spilling [his of N] [semen] onto the floor in front of you.[line break][speech style of M]'[one of]If I were you, I'd make [him of the player] clean that up[or]That was really hot, thanks for letting me be a part of it[or]I love this place[or]I'm so glad I got to witness this bitch's punishment[or]I hope you enjoyed the privilege of me jacking off over your punishment, slut[in random order].'[roman type][line break]With that, [he of N] turns around and leaves.";
					SemenPuddleUp the semen load of N;
					destroy N;
		[And now for what the dominatrix does herself...]
		if the sex-length of M > 0:
			let P be a random patron penetrating face;
			say "[one of]Using some kind of spanking paddle outside of your vision, the[or]The[stopping] [M] [one of]strikes[or]slaps[or]spanks[or]paddles[then at random] your ass cheeks hard![line break][variable custom style][if the player is able to speak]'[one of]Owwww!'[or]Aaaaah!'[or]OUUCH!'[at random][otherwise][one of]Fuck![or]Shit![or]'MMMMPH!'[or]'NNNNG!'[at random][end if][roman type][line break][if P is patron][one of]You shriek around [NameDesc of P]'s [DickDesc of P], which just makes you gag even harder.[or][or][or][cycling]";
			severeHumiliate;
		otherwise:
			say "[BigNameDesc of M] stops paddling you and unlocks the stocks, freeing you.[line break][speech style of M]'I hope you've learned your lesson. I don't want to have to do that again.'[roman type][line break]Something tells you [he of M]'s lying. For now, at least, [he of M] seems to have lost interest.";
			bore M;
			TimesSubmittedUp M by 1;
			DelicateUp 1;
		decrease the sex-length of M by 1;
	otherwise:
		say "[BigNameDesc of M] pulls you towards the stocks, and locks you in, on your knees with your head secured pointing at the door. [big he of M] whistles sharply.";
		now M is grabbing the player;
		now the sex-length of M is 4;
		now M is spanking the player.

To compute dominatrixClimax of (N - a patron):
	TimesSubmittedUp N by 1;[now you remember which guy came on your face!]
	say "[BigNameDesc of N] climaxes, and spurts [his of N] load over your face! [big he of N] [one of]chuckles to [himself of N] and then leaves the room.[or]sighs gently and then leaves the room.[or]mutters something rude under [his of N] breath and then sees [himself of N] out.[or]groans loudly as [he of N] paints your forehead white, and then zips up and leaves.[or]growls under [his of N] breath as [he of N] rides [his of N] waves of ecstasy. After [he of N] comes down, [he of N] tucks [himself of N] away and then exits the way [he of N] came.[in random order][line break][variable custom style][if the semen addiction of the player < 6][one of]Eww, gross![or]Yuck yuck yuck![or]Nooooo![or]I can't wipe it off with my hands bound like this...[or]How disgusting![or]Anywhere but my face![in random order][otherwise if the semen addiction of the player < 12][one of]Grr, just you wait![or]My face isn't just somewhere you should dump your [semen]![or]How could you![or]How rude![or][big he of N] treated me as if I was just an object![in random order][otherwise if the player is able to speak][line break][second custom style][one of]'Come back any time, [stud]!'[or]'Thank you sir!'[or]'Thank you for your [semen]!'[or]'Yum! Thank you~'[or]'Your cum tastes great!'[in random order][otherwise][second custom style][one of]I do love cum![or]Yummy![or]I want even more![or]I wish I could thank [him of N] properly.[in random order][end if][roman type][line break]";
	CumFaceUp the semen load of N;
	destroy N.

To compute whipping of (M - dominatrix):
	TimesSubmittedUp M by 1;
	if M is grabbing the player:
		say "[one of]Your punishment becomes clear when you hear a whistling sound quickly followed by an intense, sharp pain on your back. You're being whipped![or]Once again you hear a whistling sound quickly followed by an intense, sharp pain on your back. [big he of M]'s whipping you again![stopping][line break][speech style of M]'[one of]Beg for mercy, slave, and I might just go easy on you.'[or]We're going to be here a while if you don't start apologising soon.'[or]I can be merciful, slave. All you need to do is beg for it.'[at random][roman type][line break]";
		let R be 0;
		if the delicateness of the player > a random number between 12 and 18:
			say "Swallow your pride and beg for mercy?";
			unless the player is consenting, now R is 1;
		if R is 1:
			if the favour of M < 17, FavourUp M;
			now the body soreness of the player is 10;
			say "[BigNameDesc of M] pulls no punches, viciously laying into you with [his of M] whip as tears well up in your eyes and continue well past the point of crying, [if the delicateness of the player > 10]which does not take long[otherwise]which takes an unbearably long time[end if]. After this, [he of M] seems satisfied, and lets you down.[line break][speech style of M]'[if M is objectifying the player]I assume from those tears that you have learned your lesson, slave. Don't bother standing up to me again.'[otherwise]This is what happens to disobedient slaves. Disrespect me like that again and I will cut you loose.'[roman type][line break]";
			PainUp 20;
		otherwise if the reaction of the player is 2 or (the reaction of the player is 1 and a random number between the charisma of the player and 4 > the difficulty of M / 3):
			say "[BigNameDesc of M] whips you only a few times, true to [his of M] word and holding back thanks to your submissive pleading. After this, [he of M] seems satisfied, and lets you down.[line break][speech style of M]'I'm surprised at how quickly you learned your lesson, slave. Disrespect me again and I may not be so gentle.'[roman type][line break]";
			strongHumiliate;
		otherwise:
			say "[BigNameDesc of M] whips you several more times, grinding [his of M] strapon cock between your [AssDesc] as [he of M] brings you to the verge of tears. True to [his of M] word [he of M] seems to be holding back, and after [he of M]'s satisfied [he of M] gently lets you down.[line break][speech style of M]'Learn your lesson, slave, or next time I will not be so gentle.'[roman type][line break]";
			PainUp 10;
		bore M;
		TimesSubmittedUp M by 1;
	otherwise:
		say "[BigNameDesc of M] pulls you towards the X-frame, pulls you to your feet with your back facing [him of M] and locks all four of your limbs in[if the delicateness of the player < 11] before you can put up any resistance[end if]. You can hear [him of M] slowly walk several steps backwards.";
		now the sex-length of M is 4;
		now M is grabbing the player;
		now M is whipping the player.

To say PullAttempt of (M - dominatrix) at (C - a clothing):
	say "[one of]Placing[or]Keeping[stopping] one tall heel on the small of your back, [NameDesc of M] pulls at your [printed name of C] to try and rip it off!".

To say MouthPenetrationFlav of (M - dominatrix):
	now the sex-length of M is 1;
	say "[BigNameDesc of M] walks in front of your face, and presses one of [his of M] latex boots to your face.[line break][speech style of M]'Polish it[one of] with your tongue.'[or].'[stopping][roman type][line break][one of]The shoe doesn't look particularly dirty but it's pretty hard to tell since it's black. In any case you're confident it would taste horrible. (Use [bold type]submit[roman type] to lick the boot, and [bold type]resist[roman type] to refuse.)[line break][or][stopping]";
	if the girth of M < 4:
		cutshow figure of dominatrix cutscene 1 for M;
	otherwise if the girth of M < 6:
		cutshow figure of dominatrix cutscene 2 for M;
	otherwise:
		cutshow figure of dominatrix cutscene 3 for M.

To compute facial sex of (M - dominatrix):
	if M is friendly-fucking:
		say "[one of][BigNameDesc of M] aggressively fucks your throat with [his of M] [LongDickDesc of M].[or][BigNameDesc of M][']s hips slam into your face, [his of M] [LongDickDesc of M] repeatedly striking the back of your throat.[or][BigNameDesc of M] slams [his of M] [LongDickDesc of M] in and out of your mouth, forcing you to make a lewd gagging noise with every thrust.[or][BigNameDesc of M] wears a wide grin, mercilessly ramming [his of M] [LongDickDesc of M] down your throat.[or]You can't help making a lot of noise as [NameDesc of M] slams [his of M] [LongDickDesc of M] into the back of your throat.[in random order]";
		let I be 0;
		decrease I by the strap-on girth of M;
	otherwise:
		if the oral sex addiction of the player > 7, stimulate face from M;
		if the reaction of the player is 0:
			say "[speech style of M]'Insolent worm! I will show you what happens to people who disobey me.'[roman type][line break]";
			now M is not penetrating face;
			compute torturing of M;
		otherwise:
			say "[speech style of M]'Good girl. And now underneath...'[roman type][line break][big he of M] tilts the boot back and pushes the sole towards your tongue.[line break][variable custom style][one of]Gross, that's the bit that's been touching the ground...[or]Eww![stopping][roman type][line break]";
			cutshow figure of dominatrix cutscene 6 for M;
			now the sex-length of M is 1;
	decrease the sex-length of M by 1.

To compute facial climax of (M - dominatrix):
	if M is friendly-fucking and the sex-length of M is 0 and the times-submitted of M > 0:
		compute happy dom reward of M;
		TimesSubmittedUp M by 1;
	otherwise if M is friendly-fucking:
		say "[speech style of M]'OK, that's all the time you get. [if the frustration of M < 2]Feel free to come back next time you have some cash, you're a surprisingly good sub. [end if]You know the way out.'[roman type][line break][BigNameDesc of M] pulls [his of M] [DickDesc of M] out of your mouth and turns [his of M] attention to getting it clean.";
		now the sex-length of M is 0;
		TimesSubmittedUp M by 1;
	otherwise:[times-submitted isn't incremented here yet.]
		if the reaction of the player is 0:
			say "[BigNameDesc of M] slaps you hard on the cheek. You yelp in pain![line break][speech style of M]'Bitch, you need to learn to obey orders. I expect this to go differently next time.'[roman type][line break]";
			PainUp 10;
		otherwise:
			say "[speech style of M]'What a good slave you are! I might have to promote to you head shoe polisher.'[roman type][line break]";
			SexAddictUp 1;
		if the number of modesty shutters in the location of the player > 0:
			let B be a random modesty shutter in the location of the player;
			say "[BigNameDesc of M] presses the button on [his of M] remote and the modesty shutter clatters up.";
			destroy B;
		otherwise:
			say "[BigNameDesc of M] looks away and seems to have lost interest.";
	bore M.

To compute happy reward of (M - dominatrix):
	do nothing. [dominatrix doesn't reward players normally]

To compute happy dom reward of (M - dominatrix):
	FavourUp M by 1;
	increase the slave-status of M by 1;
	if the frustration of M < -1 and the number of cots in the location of the player is 0:
		say "[BigNameDesc of M] tilts your face upward as [he of M] gently removes [his of M] [DickDesc of M].[line break][speech style of M]'As always, you're a good little sub. Tell you what. I'll set up a cot for you right here in my dungeon, and you can use it anytime as long as you're willing to keep reminding your mistress why [he of M] keeps rewarding you.'[roman type][line break][BigNameDesc of M] walks off to one corner of the room and pulls out a tiny bed.";
		now a random cot is in the location of the player;
	otherwise if M is penetrating face:
		let C be a random off-stage candy;
		say "[BigNameDesc of M] tilts your face upward as [he of M] gently pulls [his of M] [DickDesc of M] out of your mouth.[line break][speech style of M]'I have to say, I'm impressed. I might have to make you my slave after a performance like that! As promised, take this, completely free of charge.'[roman type][line break]";
		say "[BigNameDesc of M] hands you a small [C].";
		now C is held by the player;
	otherwise:
		let C be a random off-stage candy;
		say "[speech style of M]'I have to say, you took that fucking like a real champ. I might just have to make you into a slave if you keep that up! Take this, it's free of charge.";
		say "[BigNameDesc of M] hands you a small [C] before losing interest.";
		now C is held by the player;
	decrease the frustration of M by 1.

To say SexSubmissionFlav of (M - dominatrix):
	if M is feeding the player:
		say "You obediently suck on the bottle teat, allowing more [milk] into your mouth. [one of]It feels very lewd[or]You can't help but feel like it's a sex toy squirting liquid into your mouth[or]Kneeling in front of [NameDesc of M] makes this act feel very submissive[or]You cast your eyes downward in shame[in random order].";
	otherwise if M is penetrating face:
		if the sex-length of M > 0:
			say "You [if the grossness addiction of the player < 3]extremely reluctantly[otherwise if the grossness addiction of the player < 6]reluctantly[otherwise if the grossness addiction of the player < 13]timidly[otherwise]enthusiastically[end if] begin licking the toe of [his of M] boot. The disgusting taste of latex instantly hits your mouth[if the grossness addiction of the player >= 13], but you don't care[end if].";
			TasteGrossOut 6;
		otherwise:
			say "It's so gross that you [if the grossness addiction of the player < 6]can barely bring yourself to do it[otherwise if the grossness addiction of the player < 9]are quite hesitant[otherwise if the grossness addiction of the player < 16]are slightly hesitant[otherwise]know it's going to taste awful[end if], but you do it anyway, tonguing the foul tasting part of the shoe where it has been in contact with the ground. The disgusting taste of rubber and grime overpower your taste buds and leave you not wanting to put your tongue back in your mouth.";
			TasteGrossOut 9;
	otherwise:
		say "[one of]You lie still and accept the invasion.[or]You submit to being used as a plaything.[or]You don't resist being used.[purely at random]".

To say FriendlyAssholePenetrationFlav of (M - dominatrix):
	say AssholePenetrationFlav of M.

To set up sex length of (M - dominatrix) in (B - a body part):
	set up sex length (a random number between 3 and 4) of M in B.[remember, this only applies if sex length is 0 or less]

To compute unique penetration effect of (M - dominatrix) in (B - a body part):
	if refractoryperiod >= maxrefractoryperiod and M is not friendly-fucking:
		say "[BigNameDesc of M] tuts and shakes [his of M] head in disapproval.[line break][speech style of M]'Did I say you could cum? I didn't think so. Well, I guess this just shows you aren't ready to be treated any differently.'[roman type][line break]";
		if the player is possessing a penis, cutshow figure of dominatrix cutscene 7 for M;
		now the disappointment of M is 1;
	otherwise:
		now the disappointment of M is 0.

To say PenPrep of (M - dominatrix) in (F - asshole):
	say "[BigNameDesc of M] wraps a hand around [his of M] [LongDickDesc of M] and guides it towards the entrance to your [asshole].[line break][speech style of M]'[one of]You[or]Remember, you[stopping] do not have permission to cum unless I say so.'[if newbie tips is 1][newbie style][line break]Newbie Tip: Choosing 'resist' during sex reduces the chance of orgasm.[end if][roman type][line break]".

To say PenetrationFlav of (M - dominatrix) in (F - asshole):
	say "[big he of M] pushes in with measured strength and your [ShortDesc of asshole] [if the openness of asshole < the strap-on girth of M]is forced apart[otherwise]parts to accept the fake [manly-penis] inside[end if].";

To compute anal sex of (M - dominatrix):
	if woman-player is in the location of the player and the woman-status of woman-player is 93 and woman-player is awake:
		compute contraption sex of M;
	otherwise:
		if the reaction of the player is 0:
			compute sexResist of M in asshole;
		otherwise:
			compute sexSubmit of M in asshole;
			if the reaction of the player is 2, decrease the sex-length of M by 1;
		decrease the sex-length of M by 1;
		if M is not friendly-fucking:
			ruin asshole;
			if refractoryperiod > 0 and the disappointment of M is 0:
				say "[BigNameDesc of M] tuts and shakes [his of M] head in disapproval.[line break][speech style of M]'Did I say you could cum? I didn't think so. Well, I guess this just shows you aren't ready to be treated any differently.'[roman type][line break]";
				now the disappointment of M is 1.


To compute sexResist of (M - dominatrix) in (F - a fuckhole):
	say "You try to get away, but [he of M]'s much too strong for you.[one of]If anything, your struggles have just made the fucking even more brutal on your poor [asshole].[or]Instead, [he of M] seems to be taking the disobedience as motivation to fuck you even harder![or][or][at random]".[Friendly sex dominatrix has either let go or started torturing the player by now.]

To compute sexSubmit of (M - a dominatrix) in (F - a fuckhole):
	if the strap-on girth of M >= 6 and refractoryperiod is 0 and the sex-length of M is 1 and the player is able to get horny and M is not friendly-fucking:
		say "[BigNameDesc of M] starts pumping even faster.[line break][speech style of M]'Cum, slave, cum for me now!'[roman type][line break][if the player is not a pervert]As much as you try to stop yourself, the feeling in your [asshole] is too intense and you can't help but obey [his of M] command![otherwise]You feel the pressure building inside of you and gleefully comply![end if]";
		anally orgasm shamefully;
		heal asshole times 2; [To prevent fainting]
		now the disappointment of M is -1;
		FavourUp M;
	otherwise:
		say "[BigNameDesc of M] continues to powerfully pummel away with [his of M] [LongDickDesc of M]. [one of]You can very clearly feel the realistic contours of [his of M] rubber [manly-penis] as it rubs mercilessly against the sensitive walls of your [asshole].[or][line break][variable custom style]Oof![roman type][line break][or][line break][variable custom style]Aaah![roman type][line break][or][line break][variable custom style]Fucccck![roman type][line break][or]Even though you're the only one whose nether regions are being stimulated, it's clear [he of M]'s deriving a lot of sexual pleasure from the situation.[or][line break][speech style of M]'Good girl!'[roman type][line break][then at random]";
		ruin asshole;
		if M is friendly-fucking and refractoryperiod > 0:
			compute anal climax of M.

To compute MasturbationReaction of (M - dominatrix):
	if M is penetrating asshole and M is not friendly-fucking:
		let W be a random off-stage wrist bond;
		if W is actually summonable:
			say "[line break][speech style of M]'Sorry, did I give you permission to touch yourself?'[roman type][line break][BigNameDesc of M] grabs your wrists and forcibly binds them together with a [printed name of W].";
			now W is wrist-bound-behind;
		otherwise:
			say "[line break][speech style of M]'Sorry, did I give you permission to touch yourself?'[roman type][line break][BigNameDesc of M] grabs your wrist and yanks it away from your crotch.";
			FavourDown M;
		say "[bold type]Your masturbation session has been interrupted![roman type][line break]";
		follow the masturbation ended rule;
	otherwise:
		say "[BigNameDesc of M] chuckles as [he of M] watches you.".

To decide which number is the rounds of sex left of (M - dominatrix):
	if woman-player is in the location of the player and the woman-status of woman-player is 93 and woman-player is awake, decide on 2;
	decide on the sex-length of M. [Default function allows us to rewrite where this isn't true, e.g. witch and demoness]

To compute unique climax of (M - dominatrix) in (F - asshole):
	say "[BigNameDesc of M][if M is not friendly-fucking], satisfied,[end if] slowly removes [his of M] [DickDesc of M] from your [ShortDesc of asshole].";
	if M is friendly-fucking and the sex-length of M < 1 and the times-submitted of M > 0:
		decrease the frustration of M by 2;
		compute happy dom reward of M;
	otherwise if M is friendly-fucking:
		say "[speech style of M]'OK, that's all the time you get. [if the frustration of M < 2]Feel free to come back next time you have some cash, you're a surprisingly good sub. [end if]You know the way out.'[roman type][line break][BigNameDesc of M] loses interest.";
		now the sex-length of M is 0;
	otherwise if M is interested:
		if the disappointment of M is 1:
			say "[speech style of M]'Next time, I expect you to control yourself and only orgasm if instructed.'[roman type][line break]";
			if the bimbo of the player > 7 and the player is possessing a penis:
				if there is a worn chastity bond:
					unless there is worn ass plugging clothing:
						say "[BigNameDesc of M] grabs your caged [sissy-penis] and coos.[line break][speech style of M]'Hmm, you have a lot of audacity disobeying me, [if the player is a sissy]sissy[otherwise]slave[end if]. I guess the cage won't be enough; your slutty hole also needs training!'[roman type][line break]";
						let P be a random off-stage basic plug;
						if P is plug:
							[now the size of P is the openness of asshole + 2;
							if the size of CP> 10, now the size of P is 10;]
							say "[big he of M] holds you firmly[if the player is possessing a scrotum] by the balls[end if] as [he of M] slides the lubed head of a [ShortDesc of P] past your sphincter and into your [asshole].[line break][speech style of M]'There we go, stuffed and locked like a good [if the player is a sissy]sissy[otherwise]slave[end if]!'[roman type][line break]";
							summon P cursed with quest;
							say FullExamineDesc of P;
				otherwise:
					let H be a random off-stage fetish appropriate chastity cage;
					if H is a chastity cage:
						let K be a random off-stage specific-key;
						say "[BigNameDesc of M] grabs your now limp [sissy-penis] and coos.[line break][speech style of M]'I think I know the problem, a lack of discipline. All my disobedient [if the player is a sissy]sissies[otherwise]slaves[end if] are caged.'[roman type][line break][big he of M] holds you [if the player is possessing a scrotum]by the balls [end if]firmly as [he of M] squishes your soft [sissy-penis] into a chastity cage.[roman type][line break]";
						summon H uncursed;
						compute M locking H with K;
						say "[speech style of M]'That's better. No more diddling your [sissy-penis]!'[roman type][line break]";
						say FullExamineDesc of H;
		otherwise if the disappointment of M is -1:
			if focus band is off-stage:
				say "[speech style of M]'You are the perfect fuck toy, you know that? I think you need a reward. Here, take this. It'll help you focus your mind on what's important.'[roman type][line break][BigNameDesc of M] drops a black band on the floor next to you.[line break][speech style of M]'The magic in this focus band will help you resist orgasm for as long as possible, and so you should be able to fuck for longer before fainting.'[roman type][line break]";
				now focus band is in the location of the player;[TODO: poster on the wall in the room advertising the focus band]
			otherwise:
				say "[speech style of M]'Heh, you really are the world's most perfect fuckhole.'[roman type][line break]";
		otherwise:
			say "[speech style of M]'I must say, slave, I'm impressed. You took that fucking like a real champ. As a reward, I'll make sure I have a brand new toy to try out on you next time you see me.'[roman type][line break]";
			now the disappointment of M is the strap-on girth of M + 2;
		bore M;
	if the disappointment of M is not 1, progress quest of dominatrix-quest.

Check going when dominatrix is in the location of the player:
	if the disappointment of dominatrix > 1, now the strap-on girth of dominatrix is the disappointment of dominatrix. [Increase the strapon size if appropriate]

Definition: dominatrix (called M) is willing to let go:
	if the frustration of M >= 3, decide no;
	decide yes.

Definition: dominatrix (called M) is actually interested:[custom bit to allow the player to give jewellery to the dominatrix, but not modify her existing "friendly" functionality.]
	if M is carrying a plentiful accessory and M is interested, decide yes;
	if M is unfriendly, decide yes;
	decide no.

To say MonsterOfferRejectFlav of (M - dominatrix) to (T - a thing):
	if M is not actually interested:
		say "[BigNameDesc of M] doesn't even bother to look at you. [big he of M] must not want it.";
	otherwise:
		say "[BigNameDesc of M] smiles.[line break][speech style of M]'[if convincing power > 0 and M is unfriendly]You're not going to get let off that easy.'[otherwise]Why the hell would I want that?'[end if][roman type][line break]".

To compute (M - dominatrix) considering (T - a plentiful accessory):
	if M is unfriendly:
		say "[BigNameDesc of M] chortles.[line break][speech style of M]'Don't worry about paying me, I'm gonna make you my bitch for free.'[roman type][line break]";
	otherwise if the number of cots in the location of the player > 0:
		say "[BigNameDesc of M] chuckles.[line break][speech style of M]'Don't worry about paying me, all you need to do is exactly as I say. Shouldn't be too hard, you're good at being my bitch.'[roman type][line break]";
	otherwise if (the frustration of M) * 2 > the price of T and the price of T > 3:
		say "[BigNameDesc of M] scoffs.[line break][speech style of M]'[if the frustration of M > 0]If you're planning to waste my time again, you're going to have to pay a lot more than that.'[otherwise]You don't honestly believe that's enough for a session do you?'[end if][roman type][line break]";
		now M is rejecting T;
	otherwise:
		let R be the price of T - ((the frustration of M + 9) / 10);
		if R > 6, now R is 6;
		if R is 1, increase R by 1;
		now the sex-length of M is R;
		say "[BigNameDesc of M] seems to think about it for a moment before snatching the [T] from your hand. ";
		if the times-submitted of M > 0 and the frustration of M <= 0:
			say "[speech style of M]'That gets you [R] rounds, but you know what, you've been a good sub so far, so let's make this a little interesting. If you can handle me for all [R] rounds, I'll give you a little treat.[roman type][line break]";[Blue balls will reset when she finishes sex with you, so she considers you a good sub.]
		otherwise:
			say "[speech style of M]'All right, this will buy you [R] rounds. Anal or Oral only, don't try to talk to me, just get on your knees and show me you're ready.'[roman type][line break]";
		only destroy T.

To distract (M - dominatrix):
	if the sex-length of M < 1 or M is not in the location of the player:
		bore M for 50 seconds;
	otherwise:
		say "[BigNameDesc of M] looks a little annoyed. You should hurry up.";
		increase the frustration of M by 10.[This ensures the player will have enough time to get their 'affairs' in order before the dominatrix loses interest, but also encourages them not to waste her time.]

To compute (M - dominatrix) entering mouth:
	if M is friendly-fucking:
		say "[FriendlyMouthPenetrationFlav of M]";
	otherwise:
		say "[MouthPenetrationFlav of M]";
		now the sex-length of M is 3;
	now M is penetrating face.

[TODO: update for penis-based interaction]
This is the dominatrix friendly convinced rule:
	if debugmode > 0, say "Checking to see if the player is a valid customer...[line break]";
	if presented-orifice is a reasonable target:
		if current-monster is not carrying a plentiful accessory or the sex-length of current-monster < 1:[Has the player paid yet? If they have had a session already, did they pay for that one?]
			say "[speech style of current-monster]'If you want a session, you'll have to pay me first.'[roman type][line break]";
		otherwise:
			now the chosen-orifice of current-monster is presented-orifice;[This is on top so flavour can refer to chosen orifice.]
			say "[PresentFriendlyAcceptanceFlav of current-monster]";
			rule succeeds;
	otherwise if presented-orifice is not nothing:
		say "[PresentFriendlyRejectionFlav of current-monster]".
The monster friendly convinced rule of dominatrix is usually the dominatrix friendly convinced rule.

To say FriendlyMouthPenetrationFlav of (M - dominatrix):
	say "[BigNameDesc of M] places one hand on the top of your head and another on the base of [his of M] plastic cock, forcing you to stay still as [he of M] pushes every inch of [his of M] [LongDickDesc of M] into your mouth. You can't help but make gagging noises as [he of M] begins to aggressively fuck your throat.".['Handling' the dominatrix during oral sex is avoiding your gag reflex.]

To say PresentFriendlyAcceptanceFlav of (M - dominatrix):
	say "[speech style of M]'About time.'[roman type][line break]".

To say PresentFriendlyRejectionFlav of (M - dominatrix):
	if presented-orifice is a potential target:
		say "[speech style of M]'Hmm, I don't know if you really deserve that right now. Ask for something else.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Anal or Oral only.'[roman type][line break]".

To compute FriendlySexRelease of (M - dominatrix):
	if M is not willing to let go:
		say "[speech style of M]'You know what? I'm sick of letting you waste my time.'[roman type][line break][BigNameDesc of M] pulls out, looking very pissed off.";
		now M is not penetrating face;
		now M is not friendly-fucking;
		anger M;
		compute torturing of M;
	otherwise:
		say FriendlySexReleaseFlav of M;
		increase the frustration of M by 10;
		dislodge M.

To say FriendlySexReleaseSpeech of (M - dominatrix):
	say "[speech style of M]Whatever, it's your money you're wasting.'[roman type][line break]".

To say ErectionDemand of (M - dominatrix):
	if M is friendly-fucking or presented-orifice is penis:
		say "[BigNameDesc of M] bends over, [his of M] face coming within a few centimetres of your [player-penis] as [he of M] unzips the top of [his of M] outfit, exposing a bit of [his of M] chest.[line break][speech style of M]'[one of]Get hard, and make it snappy.'[or]Hard. Now. I don't have all day.'[or]Get hard now. Not 'soon.' Now.'[in random order][roman type][line break][big he of M] delivers [his of M] orders without looking at you even once, as if giving them directly to your [player-penis].";
	otherwise:
		say "[BigNameDesc of M] bends over, [his of M] face coming within a few centimetres of your [player-penis] as [he of M] unzips the top of [his of M] outfit, exposing a bit of [his of M] chest.[line break][speech style of M]'[one of]For [his of the player] sake, you better wake up soon.'[or]Hurry up and get hard. Who knows what I'll do to [him of the player] if you don't...'[or]You and I have some business to take care of. [big he of the player]'s going to suffer if you keep me waiting.'[or]I hope you get hard soon. I really don't want to lose my patience and do something [he of the player]'ll regret...'[at random][roman type][line break][big he of M] delivers [his of M] orders without looking at you even once, as if giving them directly to your [player-penis].".

To compute unerect taunting of (M - dominatrix):
	if M is unfriendly:
		say "A couple seconds pass, and after it becomes clear that you aren't going to get erect, [NameDesc of M] lets out an exasperated sigh.[line break][speech style of M]'[one of]I can't take this kind of disrespect lying down, slave.'[or]I can't believe you'd actually be this rude. You need to learn some manners.'[or]Since you clearly don't respect me, I've decided to show you exactly how much *I* respect *you*.'[in random order][roman type][line break]";
		anger M;
		decrease the health of M by 1;
		now another-turn is 1;
	otherwise:
		say "A couple seconds pass, and after it becomes clear that you aren't going to get erect, [NameDesc of M] lets out an exasperated sigh.[line break][speech style of M]'You aren't getting a refund.'[roman type][line break][big he of M] appears to immediately lose interest.";
		FavourDown M by 1;
		Bore M.

To say ErectionPenetrationFlav of (M - dominatrix):
	if penis is not penis-erect:
		say "Being dehumanised like that feels a little unpleasant, but the sensation of [his of M] breath tickling your shaft is more than enough to make up for it. [BigFuckerDesc of M] pulls out a translucent pink cocksleeve as your [ShortDesc of penis] quickly grows rigid under [his of M] stern gaze. [big he of M] finally glances up at you as [he of M] forces the flexible, jelly-like material over your shaft.[line break][speech style of M]'Cum without permission, and *both* of you will be punished.'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] bends over, [his of M] face coming within a few centimetres of your [player-penis] as [he of M] pulls out a translucent pink cocksleeve. [big he of M] glances at you as [he of M] forces the flexible, jelly-like material over your shaft.[line break][speech style of M]'Cum without permission, and *both* of you will be punished.'[roman type][line break]".

To say ErectionUseFlav of (M - dominatrix):
	say "[one of][BigFuckerDesc of M] plays with your [if the player is possessing a scrotum]balls[otherwise]taint[end if] as [he of M] pumps your [player-penis] with the sleeve.[or][BigFuckerDesc of M] squeezes your [player-penis] through the sleeve as [he of M] [if the size of penis < 4]twists it around[otherwise]pumps it over[end if] your shaft.[or]The inner material of the cocksleeve massages your [player-penis] as [FuckerDesc of M] [if the size of penis < 4]twists it around[otherwise]pumps it up and down[end if] your length.[or][BigFuckerDesc of M] maintains a business-like facial expression as [he of M] twists the sleeve around your shaft.[or]The cocksleeve makes faint squelching noises as [FuckerDesc of M] pumps and squeezes it around your [player-penis].[or][BigFuckerDesc of M] glances at you as [he of M] uses the sleeve to slowly pump your [player-penis].[in random order]".

To say ErectionForceFlav of (M - dominatrix):
	say "[one of][BigFuckerDesc of M] holds you down firmly as [he of M] forces the cocksleeve up and down your shaft.[or][BigFuckerDesc of M] holds you down, squeezing your [player-penis] through the sleeve as [he of M] pumps it over your shaft.[or][BigFuckerDesc of M] twists the sleeve as [he of M] forces it forces your [player-penis] in and out of the sleeve, through the sleeve, roughly twisting it around your shaft.[or][BigFuckerDesc of M] doesn't send a single glance your way as [he of M] roughly twists it around your shaft.[or][BigFuckerDesc of M]'s expression doesn't change at all as [he of M] forces your [player-penis] in and out of the sleeve.[or]The cocksleeve makes faint squelching noises as [FuckerDesc of M] forces it up and down your shaft.[in random order]".

To compute erection orgasm of (M - dominatrix):
	if the sex-length of M < 1:[If -1, it triggered during the climax function. In that case, the countdown is already underway.]
		if the reaction of the player is 0, say "[line break][speech style of M]'[if the sex-length of M is -1]7... 6... 5...'[otherwise]10... 9... 8... 7...'[end if][roman type][line break]You don't stop squirming even for a second, [if the delicateness of the player < 6]determined not to cum on anyone else's terms[otherwise if the delicateness of the player < 10]hoping it's enough to stop yourself from cumming on [his of M] terms[otherwise]hoping against hope that your body won't break down and cum on [his of M] terms[end if], but from the way your [player-penis] begins to spasm, you know it's all in vain.[line break][speech style of M]'4... 5... wait, that's not right, is it? Ugh, I better start over. 10... 9...'[roman type][line break][big his of M] holds eye contact with you as [he of M] suddenly speeds up, smirking as your [load] finally [if the size of penis < 4]dribbles out, slowly colouring the lower end of the sleeve[otherwise if the size of penis < 7]spurts out, quickly painting the inside of the sleeve completely[otherwise]your [load] shoots out, the first spurt clearing the inside of the sleeve and landing on [his of M] hand and the rest rapidly colouring the inside of the sleeve[end if] white.";
		otherwise say "[line break][speech style of M]'[if the sex-length of M is -1]7... 6... 5...'[otherwise]10... 9... 8... 7...'[end if][roman type][line break]You buck and wiggle your hips in an attempt to make yourself cum before your time limit is up.[line break][speech style of M]'[if the sex-length of M is -1]4... 3...'[otherwise]6... 5... 4... 3...'[end if][roman type][line break]However, it's only when the countdown is almost over and your [literalMistress of M] has begun to slow down that your [player-penis] finally begins to spasm. You frantically hump the sex toy in [his of M] hand, desperately hoping you aren't too late![line break][speech style of M]'2... 1. Times up, s-'[roman type][line break][BigFuckerDesc of M] pauses as you suddenly throw your head back, moaning triumphantly as [if the size of penis < 4]your [load] finally, finally dribbles out, slowly colouring the lower end of the sleeve[otherwise if the size of penis < 7]your [load] finally spurts out, rapidly colouring the inside of the sleeve[otherwise]your [load] finally shoots out, instantly colouring the inside of the sleeve[end if] white.";
	otherwise:
		say "[BigFuckerDesc of M] frowns as [he of M] notices your impending climax, but doesn't let up, holding eye contact with you as [he of M] relentlessly pumps your spasming shaft. You [if the delicateness of the player < 6]glare right back at [him of M], moaning defiantly[otherwise if the delicateness of the player < 10]do your best to hold back your moans as you glare right back at [him of M][otherwise if the delicateness of the player < 14]you find yourself looking away, too intimidated even to moan[otherwise]immediately look away, knowing you've completely disregarded [his of M] orders[end if] as [if the size of penis < 4]your [load] dribbles out, slowly colouring the lower end of the sleeve[otherwise if the size of penis < 7]your [load] spurts out, quickly colouring the inside of the sleeve completely[otherwise]your [load] shoots out, rapidly colouring the inside of the sleeve[end if] white.";
	now penis is not penis-erect.

To say ErectionLostFlav of (M - dominatrix):
	say "[BigFuckerDesc of M] sighs as [he of M] removes the [semen]-dripping cocksleeve and returns to [his of M] feet.[line break][speech style of M]'I warned you.'[roman type][line break]";
	FavourDown M by 1;
	now the sex-length of M is 0;
	if the health of M is the maxhealth of M, decrease the health of M by 1;
	follow the dominatrix tops the player rule;
	unless the rule succeeded: [may not be valid code. TODO: Rethink if that is the case.]
		say "[BigFuckerDesc of M] flips you over and roughly spanks your [AssDesc] several times before letting you go.";
		PainUp 20.

Definition: dominatrix (called M) is anticipating-climax:
	decide yes.

To say ErectionNearingClimaxFlav of (M - dominatrix):
	if the reaction of the player is 0:
		say "[line break][speech style of M]'[one of]I'm feeling generous right now, slave, so you're getting a treat. For the next 10 seconds, you have permission to cum.'[or]I shouldn't be doing this, since you've been so bad, but I'm generous. You have 10 seconds to cum.'[or]You've been bad, but you held on to the end, just like I told you. I'm giving you 10 seconds if you'd like to cum.'[in random order][roman type][line break]";
	otherwise:
		say "[line break][speech style of M]'[one of]You held on all the way to the end, slave! Now, you have 10 seconds to cum.'[or]You made it, slave! For the next 10 seconds, you can cum all you want!'[or]You held on, so how about a reward? For the next 10 seconds, you have my permission to cum.'[in random order][roman type][line break]".

To say ErectionClimaxFlav of (M - dominatrix):
	let N be the reaction of the player;
	if the disappointment of M > 0, decrease N by 1;
	increase N by the charisma of the player;
	if N < 1, now N is 1;[You have at least some chance to cum]
	if refractoryperiod > 0:[player came at the end of the last turn]
		say "[line break][speech style of M]'[one of]That's a good slave.'[or]I suppose I'll take that as a thank you.'[or]Was it good, slave?'[in random order][roman type][line break][BigFuckerDesc of M] removes the [semen]-dripping cocksleeve from your shaft and returns to [his of M] feet.";
		increase the slave-status of M by 2;
	otherwise:
		say "[line break][speech style of M]'10...9...8...'[roman type][line break][BigFuckerDesc of M] [if the reaction of the player is 0]holds you down, still pumping the sleeve over your shaft despite your struggling.[otherwise if N is 1]may have given you permission, but apparently not [his of M] approval, purposely slowing [his of M] pumping down to a crawl.[otherwise if N is 2]keeps pumping at the exact same pace, neither assisting nor hindering your chances to finish.[otherwise if N is 3]speeds up, but only slightly, leaving just enough room that you still might not be able to finish.[otherwise]is clearly serious about giving you a reward, pumping the sleeve over your shaft twice as fast and hard as before![end if]";
		now the sex-length of M is -1;[so we know where to start the countdown.]
		stimulate penis times N;
		if refractoryperiod > 0:[The player came!]
			say "[line break][speech style of M]'[one of]That's a good slave.'[or]I suppose I'll take that as a thank you.'[or]Was it good, slave?'[in random order][roman type][line break][BigFuckerDesc of M] removes the [semen]-dripping cocksleeve from your shaft and returns to [his of M] feet.";
			increase the slave-status of M by 1;
		otherwise:[The player didn't cum.]
			if the reaction of the player is 0, say "[line break][speech style of M]'7... 6... 5...'[roman type][line break]You don't stop squirming even for a second, [if the delicateness of the player < 6]determined not to cum on anyone else's terms[otherwise if the delicateness of the player < 10]hoping it'll be enough to show [him of M] [he of M] isn't the boss of you[otherwise]hoping this won't be enough to actually make [him of M] angry[end if]. Luckily, your continued struggling gets in [his of M] way, and you feel [him of M] beginning to slow down.[line break][speech style of M]'4... 3... 2... 1. Time's up, slave. I hope you're comfortable with the decision you just made.'[roman type][line break][BigFuckerDesc of M] removes the sleeve from your shaft and returns to [his of M] feet.";
			otherwise say "[line break][speech style of M]'7... 6... 5...'[roman type][line break]You buck and wiggle your hips in an attempt to make yourself cum before your time limit is up.[line break][speech style of M]'4... 3... 2...'[roman type][line break]However, it's only when the countdown is almost over and your [literalMistress of M] has begun to slow down that your [player-penis] finally begins to spasm. You frantically hump the sex toy in [his of M] hand, desperately hoping you aren't too late! Unfortunately, the cocksleeve is removed half a second later.[line break][speech style of M]'1. Time's up, slave. [one of]I guess you really didn't want to cum after all.'[or]Maybe you'll be luckier next time.'[or]Try being a little faster next time, ok?'[in random order][roman type][line break][BigFuckerDesc of M] returns to [his of M] feet.";
			if the reaction of the player is 0:[]
				FavourDown M by 2;
				if the slave-status of M > 0, decrease the slave-status of M by 1;
			Bore M.

Section 2 - Damage

To say CombatProvokedReaction of (M - dominatrix):
	say "[big he of M] shrieks with shock.[line break][speech style of M]'[one of]How dare you!'[or]Do you never learn?!'[cycling][roman type][line break]".

To say DamageReactHealthy of (M - dominatrix):
	say "[one of][speech style of M]'You will not enjoy your punishment, I can guarantee that!'[roman type][line break][or][big he of M] sneers aggressively![stopping]".

To say DamageReactDamaged of (M - dominatrix):
	say "[big he of M] snarls angrily, taking the hit!".

To say DamageReactTired of (M - dominatrix):
	say "[big he of M] growls angrily, wincing from the hit!".

To say DamageReactWeak of (M - dominatrix):
	say "The dominatrix swears as [he of M] struggles to maintain [his of M] balance!".

To compute unique banishment of (M - dominatrix):
	progress quest of dominatrix-quest;
	let X be strapon-dildo;
	if the strap-on girth of M >= 6 and mythical creature fetish is 1 and equine-strapon is off-stage, now X is equine-strapon;
	if X is off-stage clothing:
		now the strap-length of X is the strap-on girth of M + 5;
		if the strap-on girth of M >= 6, now the strap-length of X is 12; [20 inches]
		say "[BigNameDesc of M] unstraps and drops [his of M] [X] to help [himself of M] run faster!";
		now X is in the location of the player;
		compute autotaking X.

To compute loot dropping of (X - focus band) by (M - dominatrix):
	unless M is dying, now the owner of X is M;
	say "[BigNameDesc of M] removes a [printed name of X] from [his of M] arm.[line break][speech style of M]'When I next catch you, there will be no mercy. You will need something like this just to survive.'[roman type][line break]".

To compute damaging attack of (M - dominatrix):
	if M is carrying whip-of-domination and M is not wrangling a body part and a random number between 1 and 2 is 1:
		compute grabbing attack of M;
	otherwise:
		compute striking attack of M.

To say StrikingSuccessFlav of (M - dominatrix) on (B - a body part):
	if M is dominatrix-equipped:[After gaining difficulty, her attacks become more painful]
		say "[BigNameDesc of M] [one of]smacks[or]swats[as decreasingly likely outcomes] you [TargetName of B] with [his of M] riding crop![if M is dominatrix-equipped] It leaves behind a stinging welt, ouch!![end if]";
		if B is exposed, PainUp 10;
	otherwise:
		say "[BigNameDesc of M] [one of]smacks[or]swats[as decreasingly likely outcomes] you [TargetName of B] with [his of M] riding crop!".

To say StrikingFailureFlav of (M - dominatrix) on (B - a body part):
	say "[BigNameDesc of M] tries to [one of]smack[or]swat[as decreasingly likely outcomes] you [TargetName of B] with [his of M] riding crop, but you swiftly dodge the blow.";

To compute grabbing attack of (M - dominatrix):
	let B be the painful-part of M;
	if the accuracy roll of M >= the dexterity of the player:
		say "[BigNameDesc of M] whips you [TargetName of B] with [his of M] whip!";
		compute M striking B;
		compute striking success effect of M on B;
		say "[big he of M] lashes out again right away!";
		if the accuracy roll of M >= the dexterity of the player and attack-type is 1 or attack-type is 3:
			let P be arms;
			unless attack-type is 1, now P is thighs;
			say "The whip curls around your [if P is arms]wrist[otherwise]ankle[end if]!";
			now M is wrangling P;[if you slap or kick her when her whip is equipped, she can grab the relevant body part.]
		otherwise:
			say "Luckily, you manage to avoid the second attack.";
	otherwise:
		say "[BigNameDesc of M] tries to whip you [TargetName of B], but you avoid it!".

To say WrangleResistFailFlav of (T - dominatrix):
	say "You struggle, but [one of]the whip is still holding on tightly![or]you can't escape [FuckerDesc of T]'s skilled grip![or][FuckerDesc of T] is just too strong![in random order]".

Part - DQ

Definition: dominatrix is willing to spank: decide yes.
Definition: dominatrix is willing to spank gently: decide no.
To decide which number is the spank strength of (M - dominatrix): decide on 5.

To say SpankingDeclarationFlav of (M - dominatrix):
	if the total volume of face <= 0, say "[speech style of M]'[one of]Time to test out my newest[or]I never get tired of playing with my[stopping] [']toys[']...'[roman type][line break]". [If the player has a mouthful it's probably because they refused to swallow at the end of forcefeeding.]

To say SpankingStartFlav of (M - dominatrix):
	say "[BigNameDesc of M] pulls you towards the stocks, and locks you in, on your knees with your head secured pointing at the door. [big he of M] takes a large wooden paddle from [his of M] whip rack and brandishes it with one hand.".

To say SpankingFlav of (M - dominatrix):
	say "[BigNameDesc of M] delivers [one of]two[or]three[or]four[as decreasingly likely outcomes] powerful blows to your [buttcheeks] with the paddle.".

To say SpankingAfterFlav of (M - dominatrix):
	say "After this [he of M] seems satisfied, and unlocks the stocks, freeing you.[line break][speech style of M]'Until next time, bitch.'[roman type][line break]".

To say SpankingReactionFlav of (M - dominatrix):
	if a random number between 1 and 3 > 1 and the player is able to speak:
		say "[variable custom style]'[one of]Owww!'[or]Aaah!'[or]AAAH FUCK!'[as decreasingly likely outcomes][roman type][line break]";
	otherwise:
		if the delicateness of the player > 7, say "[second custom style]Ooh, punish me, [daddy of M]...[if the delicateness of the player < 10][line break][first custom style]What the fuck, did I just think that?![end if][roman type][line break]".

Definition: dominatrix is willing to forcefeed: decide yes.

To compute forcefeed round (N - a number) of (M - dominatrix):
	say "[BigNameDesc of M] [one of]holds completely still, enjoying the power dynamic reflected in [his of M] standing position compared to you on your knees in front of [him of M], the bottle teat lodged firmly in your mouth.[or]strengthens [his of M] grip on your head, as if preparing for something.[or]begins to move back and forth slightly, as if it was a normal strap-on. The teat slides out until just the tiniest tip is inside your lips, then all the way in until it's filling your mouth. Then back out, then back in.[or]shakes [his of M] hips back and forth faster and faster, before making a satisfied grunting sound and coming to a halt. [big he of M] lets go of your head and takes a step back.[cycling]";
	FaceFill milk by 1.

To decide which number is the forcefeed-length of (M - dominatrix):
	decide on 4.

To say ForcefeedDeclarationFlav of (M - dominatrix):
	say "[speech style of M]'[one of]Do not swallow[or]Remember, no swallowing[stopping] until I tell you to.'[roman type][line break]".
To say ForcefeedStartFlav of (M - dominatrix):
	say "[BigNameDesc of M] forces the tip of [his of M] milk-bottle-strap-on into your mouth.[line break][speech style of M]'Suck.'[roman type][line break]".
To say ForcefeedAfterFlav of (M - dominatrix):
	say "[speech style of M]'Now be a good [boy of the player] and swallow [daddytitle of M][']s [']load['].'[roman type][line break]";
	suggest swallowing;
	if the total volume of face > 0:
		if the player is getting lucky:
			say "[speech style of M]'Hmm clearly you still have a bit of fight left in you. Amusing. Fine, I'll let it slide this once.'[roman type][line break][GotLuckyFlav]";
		otherwise:
			say "[speech style of M]'Ungrateful [cunt]!'[roman type][line break]";
			compute spanking of M.

Definition: dominatrix is willing to punish untidiness: decide yes.

Part 5 - Dominant Sex

Definition: dominatrix is uniquely-fuckable:
	if diaper quest is 0, decide yes;
	decide no.

To say UniqueFuckDesc of (M - dominatrix):
	say "Use [his of M] strapon against [him of M].".

To decide which number is the dominationtype of (M - dominatrix) using (F - penis):
	reset multiple choice questions;
	set next numerical response to "Go for a blowjob";
	set next numerical response to "Go for penetration";
	set next numerical response to "Settle for whatever";
	say "How do you want to dominate [him of M]?";
	compute multiple choice question;
	let CNR be the chosen numerical response;
	let C be 0;
	if the CNR is "Go for a blowjob", now C is FUCK-BLOWJOB;
	if the CNR is "Go for penetration", now C is FUCK-PENETRATION;
	if the CNR is "Settle for whatever":
		if a random number between 1 and 2 is 1, now C is FUCK-BLOWJOB;
		otherwise now C is FUCK-PENETRATION;
	decide on C.

To watersports dominate (M - dominatrix):
	say "You successfully force [NameDesc of M] to [his of M] knees, holding [him of M] down as you rip off [his of M] strapon, leaving [his of M] crotch bare. [big he of M] [if the slave-status of M > -3]stares at you silently for a moment before cocking an eyebrow and spreading [his of M] legs.[line break][speech style of M]'Alright. Here's your chance.'[otherwise]waits a moment before submissively spreading [his of M] legs.[line break][speech style of M]'Alright.'[end if][roman type][line break]";
	say "You toss [his of M] kinky underwear over your shoulder as you [if the player is possessing a penis]push your [player-penis] ever so slightly into[otherwise][vagina] right up to[end if] [his of M] mouth and release your hold on your bladder. [if the slave-status of M < -3][big his of M] nose crinkles as soon as the taste hits [his of M] tongue, spilling [urine] everywhere as you turn [him of M] into your personal toilet. The thorough degradation seems to take its toll on [him of M], and [he of M] looks up you with a less defiant edge in [his of M] eyes when your done.[otherwise][big his of M] nose crinkles as soon as the taste hits [his of M] tongue, but [he of M] immediately accepts [his of M] place as your personal toilet, gulping audibly as [he of M] swallows your [urine] down to the last drop.[end if]";
	now player-fucking is DOMINANT-DOMINANT;
	SportsGet;
	severeDignify;
	decrease the slave-status of M by 1;
	now the bladder of the player is 0;
	if the times-dominated of M >= 3:
		say AfterDominationComment 1 of M;
	otherwise if the favour of M <= the aggro limit of M:
		say AfterDominationComment 2 of M;
	otherwise:
		say AfterDominationComment 3 of M.

To blowjob dominate (M - dominatrix):
	say "You successfully force [NameDesc of M] to [his of M] knees, holding [him of M] down as you rip off [his of M] strapon, leaving [his of M] crotch bare. [big he of M] [if the slave-status of M > -3]stares at you silently for a moment before cocking an eyebrow and spreading [his of M] legs.[line break][speech style of M]'Alright. Here's your chance.'[otherwise]waits a moment before submissively spreading [his of M] legs.[line break][speech style of M]'Alright.'[end if][roman type][line break]";
	let C be a random worn bottom level protection clothing;
	if sexual-penis-length > 3:
		let L be sexual-penis-length;
		say "You chuckle, tossing [his of M] kinky underwear over your shoulder as you [if C is not strapon-panties and C is clothing]take your [SexDesc of penis] out of your [printed name of random worn bottom level protection clothing]. [otherwise if penis is penis-erect]stroke your [SexDesc of penis]. [otherwise]stroke your [sexual-player-penis] to hardness[end if] A moment passes, and neither of you make a move.[line break][speech style of M]'Ugh. This is exactly why [if the times-submitted of M > 0]I don't service my[otherwise if the times-dominated of M < 3]I only bother wi[otherwise]Could you at least hurr[end if]- ULK!'[roman type][line break]You abruptly shove your [SexDesc of penis] in [his of M] open mouth, grinning down at [him of M] as [his of M] sentence comes out in a much, much sexier tone of voice. [big he of M] looks up at you with a mixture of rage and arousal, gagging loudly as you fuck [his of M] throat.[if the player is able to speak and the times-submitted of M > 1][line break][variable custom style]'Tell me if this tastes any better than your fucking boot, bitch!'[roman type][line break]You hold [him of M] down[otherwise if the player is able to speak][line break][variable custom style]Here's dinner, bitch!'[roman type][line break]You hold [him of M] down[otherwise]You emit a muffled groan as you suddenly jam [him of M] down, holding on[end if] with both hands as you explode, [if L > 7]filling [his of M] belly[otherwise if L > 5]coating the inside of [his of M] throat[otherwise]coating the inside of [his of M] mouth[end if] with fresh, creamy [semen]. Satisfied, you shove [him of M] away and wipe your softening [sexual-player-penis] on [his of M] face. [if the times-dominated of M is 0][big he of M] clearly has very little experience being put in [his of M] proper place, but as [he of M] shivers at your feet, trying to catch [his of M] breath, you know [he of M] won't soon forget how it felt to be treated this way[otherwise if the slave-status of M < -3][big he of M] definitely has a lot more to learn about [his of M] proper place, but as [he of M] rests against the wall with your [load] clinging to [his of M] cheeks, you know [he of M][']ll definitely be taking a lesson from the experience[otherwise][big he of M] doesn't hold onto any pretence of dominance, fingering [himself of M] desperately as [he of M] tries to catch [his of M] breath[end if].";
		strongDignify;
		decrease the slave-status of M by 1;
	otherwise:
		say "You chuckle, tossing [his of M] kinky underwear over your shoulder as you [if C is not strapon-panties and C is clothing]take your [SexDesc of penis] out of your [printed name of random worn bottom level protection clothing]. [otherwise]play with your [SexDesc of penis]. [end if]A moment passes, and neither of you make a move.[line break][speech style of M]'[if the times-dominated of M < 3]Ugh, FINE.'[otherwise]...Right away, master.'[end if][roman type][line break][BigNameDesc of M] wraps two fingers around your base, jerking you off as [he of M] purses [his of M] lips around your tip. The sensation isn't that intense, but your tiny [sexual-player-penis] is really sensitive, so you blow your load in no time flat. [big he of M] wipes [his of M] mouth as [he of M] pulls away.";
		now player-fucking is DOMINANT-NEUTRAL;
		moderateDignify;
		if the slave-status of M < 0, increase the slave-status of M by 1;
	orgasm;
	BlowGet;
	if the slave-status of M < -3:
		say AfterDominationComment 1 of M;
	otherwise if the favour of M <= the aggro limit of M:
		say AfterDominationComment 2 of M;
	otherwise:
		say AfterDominationComment 3 of M.

To penetration dominate (M - dominatrix):
	say "You successfully force [NameDesc of M] to [his of M] knees, holding [him of M] down as you rip off [his of M] strapon, leaving [his of M] crotch bare. [big he of M] [if the slave-status of M > -3]stares at you silently for a moment before cocking an eyebrow and spreading [his of M] legs.[line break][speech style of M]'Alright. Here's your chance.'[otherwise]waits a moment before submissively spreading [his of M] legs.[line break][speech style of M]'Alright.'[end if][roman type][line break]";
	let C be a random worn bottom level protection clothing;
	if sexual-penis-length > 3:[She's tight, and she's excited to be on bottom. His composure crumbles when you begin to thrust]
		let D be the dominance of the player;
		say "You [if D <= 2]give [him of M] your most dominant look, trying your best to appear confident[otherwise]slap [him of M] without missing a beat, laughing imposingly[end if] as you [if C is not strapon-panties and C is clothing]pull out your [SexDesc of penis] and slide it[otherwise if penis is penis-erect]slide your [SexDesc of penis][otherwise]slide your hardening [sexual-player-penis][end if] into [his of M] [HoleDesc of M]. It [if the intelligence of the player > 12]doesn't show on [his of M] face, but [he of M][']s clearly excited to be on the bottom for a change, if [his of M] wetness is any indication [otherwise]isn't easy to tell whether [he of M]'s turned on just by looking at [his of M] face, but [he of M] feels pretty wet. [end if][run paragraph on]";
		if sexual-penis-length > 8:
			say "[big his of M] stern facial expression crumbles the moment you begin to thrust, completely giving way as [he of M] struggles to keep [his of M] moans from making it past [his of M] lips. You use your superior length to grind [his of M] resistance down to nothing, pounding [him of M] deeper and harder until [if the slave-status of M < 0][he of M] finally begins to moan like the slut you know [he of M] is. [otherwise][his of M] raw, quaking moans finally force their way out of [his of M] mouth. [end if][big he of M] clenches around your [SexShaft] as your arousal overflows, and you slam your [sexual-player-penis] home as you unleash your [load] deep inside [his of M] [HoleDesc of M].";
			obsceneDignify;
			decrease the slave-status of M by 2;
			orgasm M;
		otherwise if sexual-penis-length > 6:
			say "[big his of M] stern facial expression cracks a few seconds after you begin to thrust, [his of M] lips twisting as [he of M] struggles to suppress [his of M] moans. You use your length to penetrate rub and grind against [his of M] sensitive inner reaches, teasing [him of M] relentlessly until [if the slave-status of M < 0]you finally force [him of M][otherwise][he of M] has no choice but[end if] to cry out in pleasure. [big he of M] clenches around your [SexShaft] as your arousal overflows, and you slam your [sexual-player-penis] home as you unleash your [load] deep inside [his of M] [HoleDesc of M].";
			strongDignify;
			decrease the slave-status of M by 1;
			orgasm M;
		otherwise:
			say "[big his of M] keeps [his of M] facial expression stern as you begin to move your hips, but [his of M] composure cracks a tiny bit more with every passing second. You penetrate [him of M] fully with every thrust, leaving [him of M] no time to recover as you relentlessly piston away. Unfortunately, you don't have the stamina to break [him of M] down completely, and you blow your [load] without hearing a single one of [his of M] moans.";
			slightDignify;
			now player-fucking is DOMINANT-NEUTRAL;
		orgasm;
		FuckGet;
		FavourUp M by 1;
		if the slave-status of M < -3:
			say AfterDominationComment 1 of M;
		otherwise if the favour of M <= the aggro limit of M:
			say AfterDominationComment 2 of M;
		otherwise:
			say AfterDominationComment 3 of M;
	otherwise:[you fuck him, but you don't get to cum]
		say "You try your best to keep your hand from shaking as you [if C is not strapon-panties and C is clothing]pull out your [SexDesc of penis] and push it[otherwise if penis is penis-erect]push your desperately hard [SexDesc of penis][otherwise]push your rapidly hardening [sexual-player-penis][end if] into [his of M] [HoleDesc of M].[line break][speech style of M]'Ground rules.'[roman type][line break][big his of M] cold voice instantly freezes you in your tracks.[line break][speech style of M]'I have *decided* to let you fuck me, but you may not cum. You know why.'[roman type][line break]You nod sheepishly, taking a moment to compose yourself before slowly beginning to thrust. Your tiny [sexual-player-penis] is incredibly sensitive, so you only get to enjoy your [literalMistress of M][']s warm confines for a couple seconds before pulling out and allowing [him of M] to get up.";
		if the slave-status of M < 1, now the slave-status of M is 1;[resets]
		if the player is possessing a penis, passively stimulate penis;
		if the player is possessing a vagina, passively stimulate vagina;
		now player-fucking is DOMINANT-SHAMEFUL;
		now penis is penis-erect;
		slightHumiliate;
		say AfterDominationComment 4 of M.

To unique dominate (M - dominatrix):
	say "You successfully force [NameDesc of M] to [his of M] knees, holding [him of M] down as you rip off [his of M] strapon, leaving [his of M] crotch bare. [big he of M] [if the slave-status of M > -3]stares at you silently for a moment before cocking an eyebrow and spreading [his of M] legs.[line break][speech style of M]'Alright. Here's your chance.'[otherwise]waits a moment before submissively spreading [his of M] legs.[line break][speech style of M]'Alright.'[end if][roman type][line break]";
	let G be the strap-on girth of M;
	let D be 0;
	if G < 4:[lubricating it]
		say "You grab [his of M] strap-on off the floor, shoving the long red dildo in [his of M] mouth. [big he of M] stares daggers at you as [he of M] quietly slurps the plastic length, half-obediently coating it in spit.";
		increase D by the times-dominated of M * 3;
	otherwise if G < 6:
		say "You chuckle, grabbing [his of M] strap-on off the floor and shoving the huge, flesh-coloured dildo into [his of M] mouth. [big he of M]'s clearly not used to having this much [manly-penis] in [his of M] mouth, and [he of M] struggles not to gag as the tip grazes the back of [his of M] throat. [big he of M] [if the slave-status of M < -3]stares daggers at you[otherwise]doesn't dare look you in the eye[end if] as you slide the dildo out of [his of M] mouth, now thoroughly coated in spit.";
		increase D by the times-dominated of M * 5;
	otherwise:
		say "You can't help but laugh, awkwardly lifting [his of M] heavy strap-on off the floor and cramming it into [his of M] mouth. [if the slave-status of M < -3]It's impossibly big, and [he of M] clearly has no idea how to handle it at all, giving you a look somewhere between anger and remorse as the titanic invader jams [his of M] jaws open as wide as they can go. [big he of M] can't help but gag as every inch that fits is forcibly[otherwise]It's impossibly big, but even with [his of M] jaws pried open as wide as they can go, [he of M] does [his of M] best to obediently slurp on the huge oral invader until every inch that fits is[end if] lubricated with [his of M] spit. You pop the dildo out of [his of M] mouth with a little bit of difficulty.";
		increase D by the times-dominated of M * 7;
	if the player is able to speak:
		if the times-submitted of M > 2, say "[line break][variable custom style]'[one of]Yeah. Everything that goes up my ass goes in your mouth and in YOUR ass too.'[or]Oops, your turn again!'[then at random][roman type][line break]";
		otherwise say "[line break][variable custom style]'[if the player is possessing a penis]Seems like you were wearing this backwards. Don't worry, I'll help!'[otherwise]You were going to try putting this in me, weren't you!'[end if][roman type][line break]";
	otherwise:
		say "You glance down, at [his of M] unprotected [asshole], and shoot [him of M] a look that says 'Yes, that's exactly where it's going.' [run paragraph on]";
	if G < 4:[putting the dildo up the butt]
		say "You don't break eye contact as you slide the dildo into [his of M] [asshole], relishing the feeling of slowly fucking [him of M] with the same toy [if the times-submitted of M > 2][he of M] used on you[otherwise]you *know* [he of M] was planning to use on you[end if]. [big he of M] endures silently, [if the slave-status of M < -3]moaning quietly[otherwise]staring up at you coldly[end if] until you finally lose interest.[line break]";
		increase D by 40;
	otherwise if G < 6:
		say "You look [him of M] in the eye as you push the dildo into [his of M] [asshole] inch-by-inch. [big he of M][']s clearly picked up on the irony of being fucked [if the times-submitted of M > 2]by the same toy [he of M] used on you[otherwise]with the same toy [he of M] was planning to use on you[end if], [if the slave-status of M < -3]profusely apologising between moans[otherwise]moaning with as much dignity as [he of M] can[end if] until you finally lose interest.[line break]";
		increase D by 60;
		FavourUp M;
	otherwise:
		say "You pop the dildo out of[his of M] mouth with a little bit of difficulty, looking [him of M] dead in the eye as you position the tip against [his of M] sphincter and push until the mixture of pressure and spit forces [his of M] [asshole] to stretch enough to finally let it it. Even if [if the times-submitted of M > 2]you hadn't felt it before[otherwise]you hadn't felt its massive weight in your hands[end if], the sheer size of the thing is written all over [his of M] face as you cram inch after inch of black, veiny plastic straight up [his of M] ass. [if the times-submitted of M > 2]You relish [his of M] gasps[otherwise]You feel strangely powerful[end if], forcing [him of M] to take and take and take until [his of M] [asshole] literally can't fit any more. Satisfied, you give [him of M] a gentle pat on the cheek and straighten up.[line break]";
		FavourUp M;
		increase D by 100;
		decrease the slave-status of M by 1;
	decrease the slave-status of M by 1;
	strongDignify;
	if D > 80 and the strap-on girth of M > 3:
		say AfterDominationComment 1 of M;
	otherwise if the favour of M <= the aggro limit of M:
		say AfterDominationComment 2 of M;
	otherwise if D > 60:
		say AfterDominationComment 3 of M;
	otherwise:
		say AfterDominationComment 4 of M.

To say DominanceFailure of (M - dominatrix):
	say "You grab [NameDesc of M] and try to force [him of M] to the ground. [big he of M] doesn't seem to have a problem with it at first, but suddenly you feel [his of M] hands seize your wrists, and in an instant [he of M] turns the tables and slams you to the ground.[line break]".

To compute failed dominance punishment of (M - dominatrix):
	increase the slave-status of M by 1;[she sees you as more of a slave]
	let H be nothing;
	if the player is possessing a penis, now H is a random off-stage fetish appropriate chastity cage;
	if H is nothing, now H is chastity-belt;
	if M is not in Hotel37, now H is nothing;[She can only do this when in her dungeon]
	if (player-fucker is penis or (the player is possessing a vagina and vagina is not actually occupied)) and H is off-stage clothing and the player is getting unlucky:
		let C be a random worn bottom level protection clothing;
		if the size of penis > 3:
			say "[big he of M] [if C is clothing]fishes your [player-penis] out of your [printed name of C], frowning as it rapidly stiffens in [his of M] grip.[otherwise if penis is penis-erect]frowns as [he of M] wraps [his of M] hand around your rock-hard [player-penis].[otherwise]wraps [his of M] hand around your [player-penis], frowning as it rapidly stiffens in [his of M] grip.[end if][line break][speech style of M]'Well, I suppose it wouldn't hurt to remind you of what you'll be missing.'[roman type][line break][BigNameDesc of M] kneels between your legs, slowly stroking your [ShortDesc of penis] as [he of M] removes a small object from a nearby table. [big he of M] holds eye contact with you as [he of M] wraps [his of M] lips around your shaft, [his of M] hand continuing to pump your shaft from the base as [he of M] places the object, a chastity cage, down on your stomach. Your eyes widen as you realise what [he of M] has in store for you, but it's too late. You arch your back and buck your hips, emitting a dejected groan as your [literalMistress of M] forces you to fill [his of M] mouth with your [semen]. [big he of M] pulls off with a smirk, swallowing your [load] as [he of M] applies the cage to your already softening [player-penis].[line break][speech style of M]'There we-*click*-go! You're free to go, slave!'[roman type][line break][GotUnluckyFlav]";
			BlowGet;
		otherwise if the player is possessing a penis:
			say "[big he of M] [if C is clothing]pulls aside your [printed name of C] and begins using [his of M] fingertip to play with your [player-penis][otherwise if penis is penis-erect]teases your rock-hard [player-penis] with [his of M] fingertip[otherwise]teases your [player-penis] with [his of M] fingertip[end if] as [he of M] removes a small object from a nearby table.[line break][speech style of M]'So cute.'[roman type][line break][big he of M] kneels between your legs as places the object, a chastity cage, on your belly. It only takes a moment for [his of M] skilful teasing to bring you to the edge, and you arch your back and emit a shameful moan as you fill [his of M] hand with your [load]. [big he of M] licks your [semen] off [his of M] fingers as [he of M] applies the object, a chastity cage, to your newly softened [sissy-penis], locking it into place with an audible *click*.[line break][speech style of M]'That's better. See you later, slave!'[roman type][line break][GotUnluckyFlav]";
		otherwise:
			say "[big he of M] [if C is clothing]shifts aside your [printed name of C], slipping [his of M] fingers into your [vagina][otherwise]slips [his of M] fingers into your [vagina][end if] as [he of M] removes several curved metal parts from a nearby table.[line break][speech style of M]'You're feeling pent up, aren't you. Let me take care of that.'[roman type][line break][big he of M] kneels down next to you, using [his of M] the tip of [his of M] tongue to tenderly tease your clit as [he of M] assembles the parts around your waist. Your eyes widen as you realise [he of M]'s putting together a chastity cage, but it's too late. You arch your back and buck your hips, as your skilled [literalMistress of M] forces you right over the edge, forcing you to squirt as a powerful orgasm wracks your body. [big he of M] pauses to slurp your juices off [his of M] fingers before screwing the last piece into place.[line break][speech style of M]'Alright, now all I need to do is-*click*-lock it and we're done. You're free to go, slave!'[roman type][line break][GotUnluckyFlav]";
			LickGet;
			orgasm;
		orgasm;
		Calm M;
		summon H locked;
	otherwise if the player is getting lucky:
		compute sissy punishment of M;
		say GotLuckyFlav;
		bore M;
	otherwise:
		say "[line break][speech style of M]'Alright slave, I get it. I'll play with you.'[roman type][line break]";
		unless M is interested, interest M;
		now another-turn-flavour is the substituted form of "[BigFuckerDesc of M] holds you in place.";
		now another-turn is 1.

To say angry punishment insult of (M - dominatrix):
	say "[speech style of M]'It seems to me that you've forgotten who your little hole[if the player is possessing a vagina]s belong[otherwise] belongs[end if] to.'[roman type][line break]".

To say angry punishment accessory confiscation of (M - dominatrix):
	say "[speech style of M]'I will give this back when I think you can remember on your own.'[roman type][line break]".

To say angry punishment clothing confiscation of (M - dominatrix) on (C - a clothing):
	say "[speech style of M]'I will give this back when I think you can remember on your own.'[roman type][line break]".

To say angry punishment clothing destruction of (M - dominatrix) on (C - a clothing):
	say "[speech style of M]'Will you remember now, slave?'[roman type][line break]".

To say AfterDominationComment (N - a number) of (M - dominatrix):
	if N is 1:[she sees herself as your submissive]
		say "[speech style of M]'[one of]I hope you're satisfied...[if the player is gendered male]sir[otherwise]ma'am[end if].'[or]T-thank you for that, [if the player is gendered male]sir[otherwise]ma'am[end if]...'[at random][roman type][line break]";
		Calm M;
	otherwise if N is 2:[she no longer sees you as her submissive]
		say "[speech style of M]'[one of]I admit, you-... you're not... you aren't submissive. Sorry. [if the player is gendered male]Sir[otherwise]Ma'am[end if].[or]I won't try to make you my slave anymore. [if the player is gendered male]S-sir[otherwise]Ma'am[end if].'[at random][roman type][line break]";
	otherwise if N is 3:[she got dominated, but still sees you as her submissive]
		say "[speech style of M]'[one of]This... This, doesn't prove anything, slave! Get out of here!'[or]It won't b-be that easy, slave. You're the only submissive here!'[at random][roman type][line break]";
	otherwise if N is 4:[she isn't impressed]
		say "[speech style of M]'[one of]If you're finished slave, I will retrieve you when it is time for your punishment.'[or]I'll fetch you when it's time for your punishment, slave.'[at random][roman type][line break]";

To compute unique dominance reward of (M - dominatrix):
	do nothing.

To say DominationEscapeFlav of (M - dominatrix):
	say "".

To replace (M - dominatrix) after domination:
	now the health of M is the maxhealth of M;
	if the location of M is Hotel37:
		say "[line break][BigNameDesc of M] pulls out a small remote, pressing a button as a robotic arm shoots out of the floor and drags you out of the room. A metal shutter noisily clatters down behind you.";
		let R be the room east from Hotel37;
		now the player is in R;
	otherwise:
		say "[line break][BigNameDesc of M] crawls off as soon as [he of M] has the strength.";
		now M is in Hotel37;
	now the scared of M is 60 + the difficulty of M * 2.

To compute scared reduction of (M - dominatrix):
	if the scared of M > 0:
		decrease the scared of M by seconds;
		if the scared of M < 0, now the scared of M is 0;
		if the scared of M is 0 and the location of the player is the room east from Hotel37, say "The metal shutter noisily clatters up.".

Part 6 - Conversation

To say IdentifiablePosterReactionFlav of (M - dominatrix):
	say "[BigNameDesc of M] looks at you, blinks, then looks back to the poster. Upon realising that it is you, [he of M] can't help but smile widely.".

To say UnidentifiablePosterReactionFlav of (M - dominatrix) with (P - a poster):
	say "[speech style of M]'Now that's one dirty slut in need of discipline.'[roman type][line break]".

To say RewardFlav of (M - dominatrix) for (T - a thing):
	say "[speech style of M]'Take this[one of], and when you use it, remember our time together[or] to remember me with[stopping].'[roman type][line break][BigNameDesc of M] puts a [T] on the ground in front of you.".

To say OfferFriendshipFlav of (M - dominatrix):
	say "[speech style of M][if M is guardian]'You're my favourite[otherwise if M is ally]'You're one of my favourites, I hope you know that[otherwise if M is buddy]'You're one of the good ones[otherwise if M is acquaintance]'Your tributes are appreciated[otherwise]'It's going to take more than that to properly impress me[end if].'[roman type][line break]".

Section 1 - Greeting

[we don't make greetings to account for a single patron, because the player's mouth will be full. : ^)]

To say FirstResponse of (M - dominatrix):
	say "[speech style of M]'What do you want?'[roman type][line break]".

To say RepeatResponse of (M - dominatrix):
	if M is unfriendly:
		say "[speech style of M]'[one of]When I make somebody my pet, it's final. Sorry.'[or]You're about to piss me off.'[or]Keep running your mouth and I'll give you a reason to keep whining.'[or]I don't really care what you have to say, to be honest. So shut up.'[or]Phhbt. Like anybody cares what you want.'[or]I'm sorry you don't like it, but when I decide you're my slut... you never stop being one.'[or]Stop fighting it. You're my fucktoy and you belong to me. [if the player is not prone]Now, are you going to get on your knees, or am I going to force you[otherwise]Now, are you going to remember that, or do I need to whip it into your back[end if]?'[or]You belong to me. If you don't want to get fucked again, I don't really care.'[or]You're mine. When I start caring what you think, I'll tell you. Until then, shut up.'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]What do you want? Quit bothering me.'[or]What is it you want? A boot in your crotch?'[or]I don't remember starting up a conversation. But I'll remember ending one, so make this fast.'[or]I have things to do. Make this quick.'[or]If there's something you want, say it and stop wasting my time.'[at random][roman type][line break]".

To say PartnerGreeting to (M - dominatrix):
	let F be a random body part penetrated by M;
	if the player is a masochist:
		say FriendlyPartnerGreeting to M;
	otherwise:
		let P be a random patron in the location of the player;
		if P is patron:
			if the player is feeling dominant and the player is not a pervert:
				say "[first custom style]'[one of]Stop that right now! All of you!'[or]All of you better stop...Come on, listen to me!'[or]UGH! Let me go!'[or]Go away, you assholes! T-this isn't funny!'[or]This is so unfair!'[or]S-stop pointing those at me, you jerks!'[at random][roman type][line break]";
			otherwise if the player is not a pervert:
				say "[first custom style]'[one of]I-I'm not interested in this sort of thing! Thh-this is too much!'[or]Call them off! Can't you see they're g-going to-'[or]Please! This is SO degrading!'[or]N-No! You can't let them do this, there are so many!'[or]I'm sorry! I'm sorry, please, th-they're all...'[or]D-don't let them do this to me!'[at random][roman type][line break]";
			otherwise:
				say "[second custom style]'[one of]J-just finish already!'[or]C-come on, you're dragging this out way too much...'[or]Please, just end this! They're all watching!'[at random][roman type][line break]";
		otherwise:
			if the player is feeling dominant and the player is not a pervert:
				say "[first custom style]'[one of]I'm not submissive! Really, I'm not!'[or]This isn't fair! I'm not submissive![or]I'm not a slave! Listen to me!'[or]S-stop fucking me. Stop that right now!'[at random][roman type][line break]";
			otherwise if the player is not a pervert:
				say "[first custom style]'[one of]Wait a minute, I'm not your slave!'[or]You can't just say I'm your slave and be done!'[or]Hey, wait! I'm not a slave, you know!'[or]I'm not a slave, you can't just do whatever you want!'[or]I'm not your slave! You can't just...'[at random][roman type][line break]";
			otherwise:
				say "[second custom style]'[one of]Can't you hurry?'[or]You made your point! Now hurry up!'[or]Come on, why are you taking so long? It's not like you can cum with that thing.'[or]Hurry uuuuup!'[at random][roman type][line break]".

To say FriendlyPartnerGreeting to (M - dominatrix):
	if the player is a pervert:
		let P be a random patron in the location of the player;
		if P is patron:[only happens during non-friendly sex, so we only account for the masochist case]
			say "[second custom style]'[one of]Please punish me!'[or]Jizz on my face! I want all of you to fucking cover me...'[or]Show me my place! I've been a bad girl...'[or]Take me down a peg. I've been so bad...'[or]YES! PUNISH ME!'[at random][roman type][line break]";
		otherwise:
			if the player is feeling submissive:[player is a masochist]
				say "[second custom style]'[one of]Yes! Fuck me, [literalMistress of M]!'[or]Yes, [literalMistress of M]! Harder, Harder![or]Oooh! Fuuuck!'[or]Yes! Use me, [literalMistress of M]!'[or]Use me!'[at random][roman type][line break]";
			otherwise:
				say "[second custom style]'[one of]Am I doing a good job?'[or]I'm being a good slave, aren't I?'[at random][roman type][line break]";
		Arouse 100;
		say EnthusiasmResponse of M;
	otherwise:
		if the player is feeling dominant:
			say "[first custom style]'[one of]This is confidential, right?'[or]You won't tell anyone about this, right?'[or]You'll keep this a secret, right?'[at random][roman type][line break]";
		otherwise:
			say "[variable custom style]'[one of]Just so you know, I don't exactly want to become a slave permanently.'[or]And remember, you can't tell ANYONE about this...'[or]This is just a business transaction! N-nothing more, OK?'[at random][roman type][line break]";

To say MildAnnoyedResponse of (M - dominatrix):
	let P be a random patron in the location of M;
	if P is monster:
		say "[speech style of M]'[one of]Hear that? [if the player is a sissy]This little sissy STILL doesn't know her place[otherwise if the player is presenting as male]Looks like he needs you to show him how real men act[otherwise]She STILL doesn't know her place[end if]. Be messy, [boy of P]s!'[or]Shut up slut, you'll be prettier after they're done anyway.'[or]Maybe next time I ask you to do something, you'll do it, eh?'[or]Well if they can't cum on your face, where are they supposed to cum? On mine? Ahahaha!'[or]Be glad I'm on this side, then, slut.'[or]We all know your trashy ass loves every second of this.'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Shut up. You're annoying me.'[or]Yeah, sure, whatever you said. Now shut up.'[or]Whatever. Be quiet.'[at random][roman type][line break]".

To say UnAnnoyedResponse of (M - dominatrix):
	let P be a random patron in the location of M;
	if P is monster, say "[speech style of M]'[one of]So you wanted this all along, did you? Can't say I'm surprised.'[or]Ha, what a trashy slut. Give [him of the player] what [he of the player] wants, [boy of P]s.[or]You're desperate to show these [men of P] what a naughty minx looks like, eh?[or]There's no punishing sluts like you, is there?[or]Surround you with dongs and suddenly you're willing to follow orders. What a dirty slut.'[or]Just like a slave to get turned on by getting degraded in front of an audience.'[at random][roman type][line break]";
	otherwise say "[speech style of M]'[one of]Sluts say the darndest things.'[or]Ha, licking my boot has given you quite the trashy tongue.'[or]Shut up. I don't care if you like getting fucked or not, because I'm going to do it anyway.'[or]I'm always in the mood to use my favourite fuckhole.'[or]I don't remember telling you it was OK to address me, but I can't resist a slut who knows [his of the player] place.'[at random][roman type][line break]".

[TODO if you annoy the dominatrix too much, she locks you up]

To say AnnoyedResponse of (M - dominatrix):
	say "[speech style of M]'[one of]I'm sorry, did I tell you to speak?'[or]Hmm, did I tell you to speak?[or]Strange. It's like you're trying to talk to me when nobody gave you permission.[or]It sounds like you're talking to me without permission... but you wouldn't do that, knowing what the consequences could be, right?[or]Speaking without being spoken to. You must really want me to teach you a lesson.'[or]Do not speak without being spoken to!'[or]I never said you could talk. So don't.[or]When I'm in charge, you don't speak unless I fucking tell you to.[or]Shut up. I'm in charge, you don't get to talk to me unless I say so.'[at random][roman type][line break]".

To say InvitationAccepted of (M - dominatrix) with (N - a monster):
	say "[speech style of M]'[one of]Of course I will...[or]You never had to ask, pet. I could tell you were a perfect slave just by looking at you.'[or]Of course I will, you greedy little fuckhole...'[or][BigNameDesc of N] isn't enough for you? Don't worry, I'm a professional.'[at random][roman type][line break]";

To say InvitationRejected of (M - dominatrix) with (N - a monster):
	say "[speech style of M]'[one of]You're a greedy little slut aren't you...[or]You're an insatiable little fuckhole, aren't you.'[or]What a greedy little fuckhole...'[or][BigNameDesc of N] isn't enough for you? Really? What a greedy slut.'[at random][roman type][line break][BigNameDesc of M] seems to be thinking it over.";

To say AssistanceRejected of (M - dominatrix) with (N - a monster):
	say "[speech style of M]'[one of]Phhbt, like I'd do that for you.'[or][if the disappointment of M > 0]Find someone else to babysit. I'm not your mom.[otherwise]I'd help you, but I love watching you squirm.[end if]'[or]And miss the chance to watch you squirm? How selfish of you.'[at random][roman type][line break]".

To say AttentionAccepted of (M - dominatrix) with (N - a monster):
	say "[speech style of M]'[one of]Mm, I like what I'm seeing.'[or]You like being degraded, don't you, slut.'[or]Of course I'll watch. This is too hot.'[at random][roman type][line break]".

To say TauntAccepted of (M - dominatrix):
	say "[speech style of M]'I-I'll make you my slave. E-eventually.'[roman type][line break][BigNameDesc of M] blushes and begins to walk away.".

To say TauntRejected of (M - dominatrix):
	say "[speech style of M]'You should be careful what you say to me, slave.'[roman type][line break][BigNameDesc of M] seems even more determined to punish you!".

To say PleadRejected of (M - dominatrix):
	say "[speech style of M]'[one of]I don't want to hear anything from you unless it's an apology.'[or]Just for that, I think I'm going to whip you twice as hard.'[or]You really need to learn when to shut up. Luckily I'm willing to teach you.'[or]So not only are you disobedient, you're stupid too? I'm not letting up until I think you've learned a lesson.'[or]Whine all you want, slut. The more I hear, the longer I whip your tender little ass.'[or]If you're still talking by now, it means this doesn't hurt enough. I can fix that.'[at random][roman type][line break]".

Section 2 - Questioning

To say WhereAnswer of (M - dominatrix):
	if M is unfriendly:
		say "[speech style of M]'You're in my person dungeon, bitch!'[roman type][line break]";
	otherwise:
		say "[speech style of M]'You're in my personal dungeon, and if you know what's good for you, you'll leave before I get pissed off!'[roman type][line break]".

To say WhoAnswer of (M - dominatrix):
	if M is unfriendly:
		say "[speech style of M]'[one of]I'm your new [literalMistress of M], bitch, now shut your fucking mouth.'[or]Pretty simple. I'm your [literalMistress of M], and you're my new bitch.'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'I'm a professional dominatrix. But sometimes when business is slow I get bored, and need to find someone to take out my aggression on!'[roman type][line break]".

To say StoryAnswer of (M - dominatrix):
	say "[speech style of M]'I rent this room to operate my... business out of. It's a lot better than working from my home, because here I have security here, and a constant stream of clients. Hey, why not go find some for me?'[roman type][line break]".

To say EscapeAnswer of (M - dominatrix):
	if M is unfriendly:
		say "[speech style of M]'[one of]You're mine now, you aren't going anywhere, bitch.[or]You don't leave unless I say you do, got it?'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'You can leave via the front entrance of the hotel whenever you want. Just make sure to pay your bill before you leave.'[roman type][line break]".

To say AdviceAnswer of (M - dominatrix):
	if M is unfriendly:
		say "[speech style of M]'[one of]Always do what I tell you.'[or]Never speak unless spoken to.[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'If you drink from a tank and find out that the liquid is cursed, you could drop the vessel you used in front of it to remind yourself for later. Just an idea, take it or leave it.'[roman type][line break]".[figured the butler advice could be a little better, added some more]

To compute teaching of (M - dominatrix):
	say "[speech style of M]'When someone's topping you, it's up to them how hard you get fucked, and for how long. But, if you aren't gagged, it's never a bad idea to admit your own inferiority and plead for mercy. Sometimes it will help, sometimes it won't, but it definitely turns me on when a sub knows their place!'[roman type][line break]";
	teach begging for mercy.

Section 3 - Drink Requesting

To compute unfriendly drink of (M - dominatrix):
	say "[speech style of M]'You'll get no hospitality from me, [bitch]!'[roman type][line break]".

To compute friendly drink of (M - dominatrix):
	say "[speech style of M]'You'll get no hospitality from me.'[roman type][line break]".

Volume - Dominatrix Cage

dominatrix-cage is a thing. dominatrix-cage is not portable. dominatrix-cage is in Hotel37. The printed name of dominatrix-cage is "[TQlink of item described]small cage[TQxlink of item described][verb-desc of item described]". Understand "small", "cage" as dominatrix-cage. The text-shortcut of dominatrix-cage is "smcg".
dominatrix-cage has a number called mess. [flag whether the caged NPC is messy]
dominatrix-cage has a number called cage-time. [how long until release]

To say ExamineDesc of (C - dominatrix-cage):
	say "A small metal cage that could fit a human inside but it would be a very cramped fit.".

Figure of dominatrix cage empty is the file "Env/Hotel/cage1.jpg".

To focus-consider (T - dominatrix-cage):
	unless there is a caged monster in the location of T, appropriate-display the next-examine-image of T for T. [While there's a caged NPC in the area, we don't bother showing the cage itself]

Definition: dominatrix-cage is immune to change: decide yes.

Definition: dominatrix is uniquely distracted:
	let M be a random unleashed wrestler in Hotel37;
	if M is monster:
		if the player is in Hotel37 and dominatrix is in Hotel37 and dominatrix-cage is in Hotel37 and the number of caged monsters in Hotel37 is 0 and dominatrix-cage is not grabbing the player and the player is the donator:
			if M is uninterested or M is friendly:
				say "[speech style of dominatrix]'[WrestlerNickname], I think you've been having too much fun recently. It's time for you to remember your place. Get in.'[line break][speech style of M]'*sniff* Yes [big literalMistress of dominatrix]...'[roman type][line break]";
				compute dominatrix caging of M;
				decide yes;
			otherwise if the player is prone and M is not grabbing the player and M is not penetrating a body part and dominatrix is dangerous:
				say "[speech style of dominatrix]'Okay, I'll deal with you in a moment. But first - [WrestlerNickname], you forget your place. What are you?'[line break][speech style of M]'*sniff* A s-submissive s-slave, [big literalMistress of dominatrix]...'[line break][speech style of dominatrix]'That's right. And where do submissive slaves go when they've been naughty?'[line break][speech style of M]'Aaaah... Oh no... In their cage, [big literalMistress of dominatrix]...'[roman type][line break]";
				compute dominatrix caging of M;
				decide yes;
		otherwise if dominatrix is in Hotel37 and dominatrix is uninterested and dominatrix-cage is in Hotel37 and the number of caged monsters in Hotel37 is 0 and the player is the donator and the player is not in Hotel37:
			compute dominatrix caging of M;
			decide yes;
	decide no.

To compute dominatrix caging of (M - a monster):
	if dominatrix is in the location of the player, say "[BigNameDesc of dominatrix] opens the door of [NameDesc of dominatrix-cage] and forces [NameDesc of M] inside, locking it behind [him of M]![line break][speech style of dominatrix]'That should keep you from getting up to any more mischief for the time being.'[roman type][line break]";
	now the cage-time of dominatrix-cage is 1000;
	now the mess of dominatrix-cage is 0;
	now M is caged.

A time based rule (this is the dominatrix cage timer rule):
	if the cage-time of dominatrix-cage > 0:
		decrease the cage-time of dominatrix-cage by time-seconds;
		if diaper messing > 3 and the cage-time of dominatrix-cage <= 600 and the cage-time of dominatrix-cage + time-seconds > 600:
			let M be a random caged monster in the location of dominatrix-cage;
			if M is monster:
				increase the mess of dominatrix-cage by 1;
				if M is in the location of the player, say "With a loud 'FFFFFBBBBRRRRRRRRRRRRRT', [NameDesc of M] can be heard filling [his of M] padding from inside the cage.[line break][speech style of M]'Oh no... Oops... Eurgh... I couldn't hold it.'[roman type][line break][if the mess of dominatrix-cage is 1]The horrid smell quickly begins to fill the room![end if]";
		if the cage-time of dominatrix-cage is 0, now the cage-time of dominatrix-cage is -1; [see line below]
	otherwise if the cage-time of dominatrix-cage < 0: [this way we can avoid doing the below check every turn]
		let M be a random caged monster in the location of dominatrix-cage;
		if M is monster:
			if dominatrix is off-stage or dominatrix is defeated:
				now M is unleashed;
				if M is woman-player, WomanSluttify;
				if the player is in the location of M, say "[bold type]The cage door lock somehow clicks open of its own accord. [roman type][BigNameDesc of M] is free!";
			otherwise if dominatrix is in the location of M:
				now M is unleashed;
				if M is woman-player, WomanSluttify;
				if the player is in the location of M, say "[BigNameDesc of dominatrix] unlocks the door to the cage.[line break][speech style of dominatrix]'Go on, get out of here, before I change my mind.'[roman type][line break][BigNameDesc of M] is free!";
			if M is not caged:
				if M is in the location of the player, say "[BigNameDesc of M] squeaks in fear and quickly scampers out of the room!";
				if M is woman-player:
					vanish M;
				otherwise:
					if M is regional, regionally place M;
					distract M;
		if dominatrix-cage is grabbing the player:
			now dominatrix-cage is not grabbing the player;
			if dominatrix is off-stage or dominatrix is defeated:
				say "[bold type]The cage door lock somehow clicks open of its own accord. [roman type]You are free!";
			otherwise:
				if dominatrix is not in the location of the player:
					now dominatrix is in the location of the player;
					say "[BigNameDesc of dominatrix] appears from the east!";
				interest dominatrix;
				say "[BigNameDesc of dominatrix] unlocks the door to the cage.[line break][speech style of dominatrix]'Go on, get out of here, before I change my mind.'[roman type][line break]You are free!";
				satisfy dominatrix;

To compute angry punishment of (M - dominatrix):
	if M is in the location of dominatrix-cage and the number of caged monsters in the location is 0 and the favour of M < the aggro limit of M and the player is not immobile:
		say "[speech style of M]'You need a [']Time Out['] to think about what you've done.'[roman type][line break][BigNameDesc of M] opens the door of [NameDesc of dominatrix-cage] and forces you inside, locking it behind you!";
		now dominatrix-cage is grabbing the player;
		now the stance of the player is 1;
		now the cage-time of dominatrix-cage is 200;
	otherwise:
		say angry punishment insult of M;
		if M is not friendly-fucking and (M is not seduced or M is unfriendly):
			compute default angry punishment of M.

To compute the cage stuck taunting of (M - dominatrix):
	say "[BigNameDesc of M] seems to be purposefully ignoring your presence.";
	distract M.

To compute unique teleportation to (R - Hotel37):
	if the number of caged monsters in Hotel37 is 0 and the number of embodied things penetrating a body part is 0 and the number of things grabbing the player is 0:
		now dominatrix-cage is grabbing the player;
		now the cage-time of dominatrix-cage is 200;
		now the stance of the player is 1;
		say "You have appeared inside [NameDesc of dominatrix-cage], and the door is locked! What rotten luck!";
		if dominatrix is alive:
			now dominatrix is in Hotel37;
			say "[BigNameDesc of dominatrix] notices you[if the player is sluttily dressed].[otherwise]![end if] [big he of dominatrix] shrugs.[speech style of dominatrix]'That's something you don't see every day. Well, I guess you just earned yourself some [']Time Out['], didn't you?'[roman type][line break]";
			increase the times-met of dominatrix by 1;
			bore dominatrix.

Dominatrix ends here.
