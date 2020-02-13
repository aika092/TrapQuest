Dominatrix by Monster begins here.

dominatrix is a monster. dominatrix is intelligent. The difficulty of dominatrix is 9. The leftover-type of dominatrix is 125.

dominatrix has a number called orgasm watch. dominatrix has a number called disappointment. dominatrix has a number called strap-on girth. The strap-on girth of dominatrix is 2. dominatrix has a number called frustration.

Understand "strict" as dominatrix. The text-shortcut of dominatrix is "dom".

To say ShortDesc of (M - dominatrix):
	say "[if lady fetish is 2]male [end if]dominatrix".

To say MediumDesc of (M - dominatrix):
	say "[if lady fetish is 2]male[otherwise]strict[end if] dominatrix".

Definition: dominatrix is willing to do oral: decide yes.

Definition: dominatrix is willing to do anal: decide yes.

Definition: dominatrix (called M) is hotel dwelling:
	if diaper quest is 1, decide no;
	decide yes.

Figure of dominatrix 1 is the file "NPCs/Hotel/Dominatrix/dominatrix1.png".
Figure of dominatrix 2 is the file "NPCs/Hotel/Dominatrix/dominatrix2.png".
Figure of dominatrix 3 is the file "NPCs/Hotel/Dominatrix/dominatrix3.png".

Figure of Dominatrix Cutscene 1 is the file "Special/Cutscene/cutscene-dominatrix-heel1.png".
Figure of Dominatrix Cutscene 2 is the file "Special/Cutscene/cutscene-dominatrix-heel2.png".
Figure of Dominatrix Cutscene 3 is the file "Special/Cutscene/cutscene-dominatrix-heel3.png".
Figure of Dominatrix Cutscene 4 is the file "Special/Cutscene/cutscene-dominatrix-peg1.png".
Figure of Dominatrix Cutscene 5 is the file "Special/Cutscene/cutscene-dominatrix-peg2.png".
Figure of Dominatrix Cutscene 6 is the file "Special/Cutscene/cutscene-dominatrix-heel4.png".
Figure of Dominatrix Cutscene 7 is the file "Special/Cutscene/cutscene-dominatrix-jizz1.png".

To decide which figure-name is the monster-image of (M - dominatrix):
	if the girth of M < 4:
		decide on figure of dominatrix 1;
	otherwise if the girth of M < 6:
		decide on figure of dominatrix 2;
	otherwise:
		decide on figure of dominatrix 3.

To decide which figure-name is the anal-sex-monster-image of (M - dominatrix):
	if the player is male:
		if the reaction of the player is 0, decide on figure of dominatrix cutscene 5;
		otherwise decide on figure of dominatrix cutscene 4;
	decide on figure of Missing NPC.

To say MonsterDesc of (M - dominatrix):
	if lady fetish is 2:
		say "This brunette [man of M] is standing aggressively and it doesn't look like [he of M] messes around. Your eyes can't help but look down past [his of M] black latex outfit to [his of M] crotch, where [he of M] is sporting [StraponDesc of M].[line break]";
	otherwise:
		say "This brunette [man of M] is standing aggressively and it doesn't look like [he of M] messes around. Your eyes can't help but look down past [his of M] black latex outfit to [his of M] crotch, where [he of M] is sporting [StrapOnDesc of M].[line break]".

To decide which number is the girth of (M - dominatrix):
	if woman-barbara is in the location of the player and the woman-status of woman-barbara is 93 and woman-barbara is awake, decide on 8;
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
	if the strap-on girth of M < 4:
		if lady fetish is 2:
			say "[variable custom style][one of]Why would a guy wear something like that?[or]I guess it's better than a real dick hanging out.[or]I feel safe when I[']m near [him of M], but scared at the same time.[in random order]";
		otherwise if the player is female and the bimbo of the player < 7:
			say "[first custom style][one of]Ugh, how perverted. Even the [men of M] have penises around here.[or]I suppose that[']s one way to keep the men off you. Gross.[or]I have a feeling I don[']t want to mess with this [man of M].[or][big he of M] seems rather taken with that strap-on of [hers of M]. I doubt [he of M][']ll try to violate me with it unless I[']ve done something to please [him of M].[or][big he of M] has the look of someone who is answered to.[in random order]";
		otherwise if the player is female and the bimbo of the player < 14:
			say "[variable custom style][one of]Why does that strapon look so appetizing?[or]Why do I feel like I should do anything [he of M] says?[or]I feel safe when I[']m near [him of M], but scared at the same time.[in random order]";
		otherwise if the player is female:
			say "[second custom style][one of]I want to give [his of M] strapon a big sloppy blowjob![or]I[']ll do anything [he of M] says! I hope [he of M] wants something naughty![or]I can tell [he of M] knows all the best ways of having a good time![in random order]";
		otherwise if the bimbo of the player < 7:
			say "[first custom style][one of]Is that a dildo? Haha, it's pointing the wrong way. Right?[or][big he of M][']s bad news. I[']m not sure I want to risk messing with [him of M].[or]Why do I feel like [he of M] expects something from me?[or][if the size of penis < 1]It's not fair [he of M] gets to have a dick that big and I don[']t even get one![otherwise if the size of penis < 8]That dildo is actually bigger than my dick. Heh...[otherwise]That strapon is actually the size of a real dick... on [him of M] it seems a little bit excessive.[end if][or]That strapon probably isn[']t for [him of M].[in random order]";
		otherwise if the player is male and the bimbo of the player < 14:
			say "[variable custom style][one of][if the size of penis < 1]Maybe if I get on [his of M] good side I can use [his of M] strapon as a replacement penis.[otherwise if the size of penis < 8]That dildo isn't even that big, but it's still bigger than me. Can I really call myself a man if [he of M] can out-compete me with a hunk of plastic?[otherwise]It takes more than a hunk of plastic to out-compete me! Even if I don[']t really deserve a penis this big...[end if][or]All I can think about when I look at [him of M] is how much more of a man [he of M] is than me.[or]I really want to know what [his of M] strapon would feel like inside me. It wouldn[']t be gay, [he of M]'s a [man of M].[in random order]";
		otherwise:
			say "[second custom style][one of]I[']ll give anyone a blowjob, even a girl![or]I prefer guys, but that strapon looks almost as good as the real thing![or]All [manly-penis]s make [if the size of penis < 1]horny[otherwise]hard[end if], even fake ones![if the size of penis < 1]Between us, there[']s only one penis, but [he of M] probably deserves it way more![otherwise if the size of penis < 8]So that[']s what a real penis looks like. Well, it's plastic, but it's certainly realer than mine. I[']m the girl and [he of M][']s the man! Tee hee![otherwise]My penis is bigger than [his of M] strapon, but [hers of M] matters more, since it feels better when I cum with my asshole.[end if][in random order]";
	otherwise if the strap-on girth of M < 6:
		if the player is female and the bimbo of the player < 7:
			say "[first custom style][one of]Ugh, is that supposed to be my reward for humiliating myself? Disgusting.[or]I debase myself like that, and [he of M] comes back with a bigger dildo?[or]So this is my punishment. A bigger dildo for [him of M] to violate me with. I'm not sure I like the alternative, but how am I supposed to deal with that thing?[in random order]";
		otherwise if the player is female and the bimbo of the player < 14:
			say "[variable custom style][one of]That must be the new toy [he of M] was talking about. It's so big...[or]I can't believe I let [him of M] violate me. Well, maybe violate isn't the right word. It wasn't awful.[or]I just know [he of M]'s going to try to put that dildo in me too. But, I won't let [him of M].[or][big he of M]'s so domineering. Where does [he of M] get off telling me I can't cum. Not that I want to.[in random order]";
		otherwise if the player is female:
			say "[second custom style][one of]Wow! Look at that cock![or][big his of M] new dildo looks so yummy! If I'm good, maybe I'll get fucked with it![or]Sometimes, I wish guys would grow bigger cocks if you do your best to make them feel good. I guess Mistress is better than a guy![or][big his of M] rules about orgasms are so unfair! It feels so good when Mistress fucks me, how can I not cum?[in random order]";
		otherwise if the bimbo of the player < 7:
			say "[first custom style][one of]Did [he of M] actually change that dildo as a fucking reward for me? What if word gets around that I let people fuck me?[or]Ok, so my choices are, let [him of M] fuck me with that thing, or let a bunch of dudes jizz on my face? Why is this game so gay![or][if the size of penis < 1][big he of M] must be rubbing it in that I don't have a dick anymore. This is so uncool...[otherwise if the size of penis < 5]It was bad enough letting [him of M] fuck me with the first dildo. I look like a baby compared to [him of M] now...[otherwise if the size of penis < 9]Wait, what happened to the other dildo? This one is bigger than I am. This is fucking bullshit...[otherwise]Ok, so what if [he of M] decides I'm a chick or something. My dick is still massive, and I'll always have that on [him of M]. Next time we meet, things will change, and I'll be the one fucking [him of M].[end if][in random order]";
		otherwise if the bimbo of the player < 14:
			say "[variable custom style][one of]I can't believe I actually let [him of M] fuck me. I'm supposed to be a man, men shouldn't get fucked...[or]I know I don't want [him of M] to fuck me with that again, but, I don't want to punish me either. How did I get into this mess?[or]I'm actually looking forward to letting [him of M] fuck me again. I guess I'm a total [if transGender is 0]fag[otherwise]slut[end if] now.[or]I'm [his of M] slave now, so I can't exactly say no if [he of M] wants to but that in me, but it's not like I wanted to be [his of M] slave in the first place. I think.[or][if the size of penis < 1]I'm stuck with no penis, and [his of M] is even bigger. If I let people fuck me, and I don't have a penis, how can I call myself a man?[otherwise if the size of penis < 5]The first dildo made me feel inadequate. This is just cruel. It's not my fault if my penis keeps shrinking! Everybody wants to fuck me![otherwise if the size of penis < 9][big his of M] dildo is actually bigger than my penis. I deserve to be smaller, though. After letting [him of M] fuck me, there's no way for me to pretend I make a better man than [he of M] does.[otherwise]My dick is still bigger than [hers of M], but only by a few inches. And if I keep letting [him of M] fuck me, it's only a matter of time until that's not true.[end if][or]I know by now it's not a good idea to play by [his of M] rules, but how am I supposed to hold my orgasm when that thing is going to be ramming my prostate?[in random order]";
		otherwise:
			say "[second custom style][one of]That is going to feel so good inside me! I'm glad one of us knows how to use a dick![or]I love big cocks, even if they're plastic and attached to a woman instead of a sexy man.[or]Before I started this game, I wanted to fuck girls, now I want to give blowjobs and get fucked. With [him of M] around, I can do both! Tee hee![or]Mistress knows I've been good, so I deserve to get fucked HARD![or][if the size of penis < 1]Mistress is my lesbian lover![otherwise if the size of penis < 5]My penis is useless, but Mistress has more than enough for the both of us![otherwise if the size of penis < 9][big his of M] dildo is bigger than my penis! Just the way things should be.[otherwise][big his of M] strapon is still smaller than my cock. Oh well, that just means I'll cum more when [he of M][']s done pounding my prostate![end if][or]If Mistress says not to cum, I shouldn't. But [he of M] must have no idea what it's like to have a big hard cock ram your prostate![or]If I want a bigger toy to play with, I need to control my orgasms. But since I'm such a dirty slut, it will not be easy![in random order]";
	otherwise:
		if the player is female and the bimbo of the player < 7:
			say "[first custom style][one of]That thing must be a fucking joke. [big he of M] can't honestly expect me to let [him of M] put that in me.[or]Is that a HORSE penis?[or]I know I've been acting like a tart, but [he of M][']s obviously trying to insinuate I'm some sort of animal![or]That evil woman... [he of M] probably plans on putting that monster inside me.[or]So this is how [he of M] rewards [him of M] slaves? I'm not looking forward to dealing with the nintendolls when I get out...[in random order]";
		otherwise if the player is female and the bimbo of the player < 14:
			say "[variable custom style][one of]That dildo is massive. I guess I should prepare myself.[or]So far I've taken everything else [he of M]'s done to me. I know it's wrong, but I'm looking forward to taking that too.[or]This must have been [his of M] game from the start. [big he of M][']s been training me this whole time, and now I don't think there's any way I can avoid having that monster stuffed inside me. I might as well try to enjoy it.[or]I feel like I owe it to [him of M] to let [him of M] fuck me with that strapon. But... [he of M][']s done nothing but bully and fuck me since we met.[or][first custom style]If [he of M] tells me [he of M] wants to put that thing inside me... I know I'll try to say no, but...[second custom style]submitting just feels too good.[or]I'm addicted to getting fucked by [his of M] huge strapon. This game has changed me into such a pervert...[or][first custom style]I am certain I can't handle a dildo that size. [second custom style]But I'll try anything for my Mistress.[in random order]";
		otherwise if the bimbo of the player < 7:
			say "[first custom style][one of]I can't exactly let [him of M] offer me up to the patrons, but I don't want that monster anywhere near me.[or]Again?! Why is it bigger again?[or][if lady fetish is 2]H-he[otherwise]S-she[end if] can't honestly expect me to take that thing? I'm a guy, I'm built to fuck things, not the other way around![or]WHAT THE FUCK, THAT'S HUGE![or][if the size of penis < 1]The size of that thing is fucking insane. Why don't I get one of those?[otherwise if the size of penis < 5]This sucks. Everybody gets to be bigger than me. I couldn't even top that if I tried...[otherwise if the size of penis < 9]I have a normal dick size, but I'm not even half as big as that thing. Everything in this game is out to make me feel like a chick.[otherwise]My dick is supposed to be huge, but now this shit? Ugh whatever, I might as well take the patron bullshit, I'm not letting this chick fuck me any more.[end if][in random order]";
		otherwise if the bimbo of the player < 14:
			say "[variable custom style][one of]Hopefully that's as big as it gets. It was enough trouble dealing with [his of M] second strapon, I have no idea how I'd deal with a fourth one. It might feel good though...[or]I want to try it. Just to say I tried it, not because I like getting fucked, I just want to say I tried it.[or]When I'm around [him of M], I feel like a possession. It's like [he of M] doesn't even care I'm supposed to be a man.[or][big he of M]'s going to fuck me with that thing, isn't [he of M].[or][if the size of penis < 1][big he of M] does the fucking, I follow all of [him of M] orders, and I don't have a dick. I'm a girl, there's no denying it.[otherwise if the size of penis < 4][big he of M]'s fucked me so many times. And I keep letting it happen. Honestly, where do I get off calling myself a man? It's not like my penis is big enough to please anyone.[otherwise if the size of penis < 9]I'm still average sized, but after letting [him of M] fuck me so many times, I guess it's natural [he of M] would be twice my size...[otherwise]I thought I had a huge dick, but I guess I just didn't know what huge really was. Why don't I feel jealous?[end if][or]My prostate can't survive a beating from that monster. If I get fucked by that thing, I'm going to cum whether I want to or not.[or][first custom style][if the size of penis > 1]I'm getting hard just looking at that thing[otherwise]I'm getting horny just looking at that thing[end if]. I can't help it, it's just so [second custom style]BIG![or][big he of M][']s trained me into the perfect fuckhole. Why am I proud of that?[or]I hope I get to cum soon...[in random order]";
		otherwise:
			say "[second custom style][one of]I'm looking forward to getting POUNDED by that![or]Mistress is going to be so happy. I'm determined to last longer this time![or]I hope Mistress feels like fucking me today. I hate boot for dinner...[or]Tee hee! It's SO big![or]Mistress is going to rut me like an animal!~[or]I think Mistress is going to give me permission to cum soon! OOooh I can't wait![or]Mistress did such a good job training me, I'm sure I can take [his of M] strapon no problem![or]I love getting pounded by my Mistress![or]I hope Mistress is rough today...[in random order]";[highest bimbo functions are combined]
	say "[roman type][line break]";

Definition: dominatrix is able to remove cursed plugs: decide yes.

Definition: dominatrix is wenchy: decide yes.

To set up (M - dominatrix):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 11;
	now the health of M is the maxhealth of M;
	calm M.

This is the spawn initial dominatrix rule:
	if diaper quest is 0:
		if debugmode > 0, say "Summoning dominatrix in hotel.";
		now dominatrix is in Hotel37.
The spawn initial dominatrix rule is listed in the setting up hotel monsters rules.

Definition: dominatrix is human: decide yes.

Part 1 - Misc Flavour

To say SummoningFlav of (M - dominatrix):
	if M is in the location of the player:
		say "The teleportation pad emits a definitive sounding hum, and light fills the room as an imposing looking woman materializes on top of it. [BigNameDesc of M] hums to [himself of M] adjusting [his of M] [LongDickDesc of M] as [he of M] steps off the pad.";
	otherwise:
		say "You hear the sound of a [man of M] humming gently.".

To say speech style of (M - dominatrix):
	say first custom style.

To say GrabStatus of (M - dominatrix):
	say "has you in bondage".

To say SexResistFlav of (M - dominatrix):
	if M is penetrating face and M is not friendly-fucking:
		say "[if the player is able to speak][line break][variable custom style]'No way!'[roman type][line break][otherwise]You turn your head away in refusal![end if]";
	otherwise if M is penetrating asshole:
		say "[if the anal sex addiction of the player < 3][one of]You fight back against [NameDesc of M], desperate to break out of [his of M] grip.[or]You struggle as much as you can. Orgasming is the last thing on your mind![or]You try to throw [NameDesc of M] off, but [he of M]'s too strong![or]You move away from [NameDesc of M] as [he of M] pushes into you, to try to minimise the impact of [his of M] thrusts.[in random order][otherwise if the anal sex addiction of the player < 5][one of]You fight back against [NameDesc of M], desperate not to let [him of M] win and make you orgasm![or]You move away from [NameDesc of M] as [he of M] pushes into you, to try to minimise the impact of [his of M] thrusts.[or]You grit your teeth together and try to wiggle away.[in random order][otherwise][one of]You playfully wiggle away from [NameDesc of M], making it more difficult for [him of M] to fuck you properly.[or]You hold still, refusing to join in your butt love session properly.[or]You hold still, concentrating on trying not to cum.[in random order][end if]";
	otherwise if M is spanking the player and there is a patron in the location of the player:
		let P be a random patron in the location of the player;
		if bukkake fetish is 1:
			if the player is able to speak, say "[variable custom style]'[if the semen taste addiction of the player > 12 and the semen taste addiction of the player > the semen addiction of the player][one of]Guys you're being mean! At least cum in my mouth so I get to taste it properly...'[or]This is so unfair, at least let me taste it properly!'[or]Stop teasing me with your cum and let me suck your cocks properly!'[in random order][otherwise if the semen addiction of the player > 10][one of]I don't mind you jizzing on my face, but can you get this crazy woman to stop first? Ow ow ow!'[or]If you wanted me to be your bukkake queen you just had to ask... you didn't have to gang up on me while I'm being abused already!'[in random order][otherwise if the bimbo of the player > 9][one of]Ooh, why do there have to be so many of you watching?'[or]Mistress, you're being mean! Tell them to stop!'[or]Please at least wait until [he of M] stops paddling me! Oof!'[then at random][otherwise if the semen coating of face is 0][one of]Piss off guys, this isn't funny!'[or]You're not seriously going to mess up my face while I'm bound like this, are you?!'[or]Come on, [he of M] was joking, right? Right???'[or]Seriously, I'm not enjoying this! I didn't even get a safe word! You have to believe me!'[or]Don't listen to that woman! [big he of M]'s insane!'[at random][otherwise][one of]Don't you think this has gone far enough already?!'[or]Why would you obey this psycho??'[or]Fucking hell, I'm not your plaything! Stop this now!'[or]Do you really think this is consensual?'[or]Oh my god, how gross!'[or]Yuck yuck yuck! Get away from me!'[or]No more, please!'[at random][end if][roman type][line break]";
			otherwise say "[if the oral sex addiction of the player > 7 and the semen taste addiction of the player > the semen addiction of the player]You look longingly at the [DickDesc of P]s but the pain in your backside keeps bringing you back down to earth, struggling against the stocks.[otherwise if the semen addiction of the player > 13]You look lovingly at the [DickDesc of P]s, excited to get coated in more [semen], but the pain in your backside keeps bringing you back down to earth, struggling against the stocks.[otherwise if the bimbo of the player > 9]You yelp in pain with each swat of the paddle, your intolerance to the pain winning out against your desire to please your Mistress.[otherwise if the semen coating of face is 0]You stare in fear at the several [DickDesc of P]s pointed directly at your face.[otherwise]You shake your limbs in their bonds, silently shooting daggers at the patrons with your eyes.[end if]";
		otherwise:
			if the player is able to speak, say "[variable custom style]'[if the oral sex addiction of the player > 6]Look, I'd love to suck your [DickDesc of P] but can you get Miss Psycho back there to let me out first??'[otherwise if the oral sex addiction of the player > 3]This is not how I usually give blowjobs! Owww!'[otherwise][one of]Don't listen to [him of M]! I don't want to suck your [DickDesc of P]!'[or]You're kidding, right??'[at random][end if][roman type][line break]";
			otherwise say "[if there is a patron filling face][muffled sounds][otherwise if the oral sex addiction of the player > 6]You look longingly at the [DickDesc of P] but the pain in your backside keeps bringing you back down to earth, struggling against the stocks.[otherwise if the delicateness of the player > a random number between 8 and 12]You yelp in pain with each swat of the paddle, your intolerance to the pain winning out against your desire to please your Mistress.[otherwise]You shake your limbs in their bonds, silently shooting daggers at the patron with your eyes.[end if]";
	otherwise:
		say "You struggle in vain to free yourself!".

To compute kneeling reaction of (M - dominatrix):
	say "[BigNameDesc of M] [one of]raises an eyebrow[or]smiles knowingly[or]grins[at random]. [line break][speech style of M]'[one of]If you feel a rush right now, that's your body telling you what your proper place is.'[or]Feeling properly submissive now? Good, I like when my subs know what their role is.'[or]Through playing games? Ready to worship your mistress?'[or]You're adorable when you try to fight me. We both know it's always going to be pointless though.'[or]I only put this cock of mine in holes that belong to me, slave. So, why don't you show me what belongs to me?'[at random][roman type][line break]";
	say "[if the humiliation of the player < 30000]You shiver with shame.[end if]";
	humiliate 75.

To compute delay of (M - dominatrix):
	say "[BigNameDesc of M] impatiently taps [his of M] foot, as if waiting to see what you do next.".

To compute sex resist anger of (M - dominatrix):
	do nothing.

Part 2 - Perception

Definition: dominatrix (called M) is objectifying the player:
	if the class of the player is cheerleader, decide no;
	if the woman-status of woman-barbara is 93 and the anal-contraption-scene of woman-barbara <= 5 and woman-barbara is in the location of the player, decide no;
	if the favour of M > 17, decide yes;[18+ she considers you fully trained]
	if the times-submitted of M > 3 and the frustration of M < 1, decide yes;
	if (the bimbo of the player >= 20 or the appearance of the player >= 20), decide yes;
	if the appearance of the player > the bimbo tolerance of M, decide yes;
	if the class of the player is royal slave, decide yes;
	if the class of the player is latex fetish model, decide yes;
	if the sex addiction of the player >= 12, decide yes;
	if the bimbo of the player >= the favour of M, decide yes;
	if the delicateness of the player >= 10, decide yes;
	if there is a wrestler in the location of M, decide yes;
	decide no.

To compute perception of (M - dominatrix):
	now M is interested;
	if the disappointment of M > 1, now the strap-on girth of M is the disappointment of M;
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]";[We shouldn't need a linebreak here because punctuation inside text-based if-clauses cause an automatic line break]
	if the woman-status of woman-barbara is 93 and the anal-contraption-scene of woman-barbara <= 5 and woman-barbara is in the location of the player:
		say "[BigNameDesc of M] grins.[line break][speech style of M]'Enjoying the show?'[roman type][line break]";
		calm M;
	otherwise if the class of the player is living sex doll:
		say "It doesn't look like [he of M]'s interested in you.";
		bore M for 500 seconds;
	otherwise:
		if there is a worn messed knickers:
			say "[speech style of M]'Yuck. Go find the matron, [he of M] is much more suited to your needs than me.'[roman type][line break]";
			bore M;
			if there is worn perceived unmessed knickers, compute state check of a random worn messed knickers;
		otherwise if the favour of M > 17:
			if M is in Hotel22, say "[BigNameDesc of M] smirks.[line break][speech style of M]'Already back for more. That's what I like about you, slut[if the disappointment of M > 1]. You're going to love the new toy I picked out for you.'[otherwise].'[end if][roman type][line break]";
			otherwise say "[BigNameDesc of M] smirks.[line break][speech style of M]'Ah, found you. I'm ready for another session, and I know you are too[if the disappointment of M > 1]. You're going to love the new toy I picked out for you.'[otherwise]. Let's go.'[end if][roman type][line break]";
		otherwise if the class of the player is royal slave:[no need to anger M when the dominatrix is uniquely unfriendly]
			say "[speech style of M]'[if M is unfriendly and M is in Dungeon22]Ah, slave, you have returned. Good timing, I am ready to play with you again.'[otherwise if M is unfriendly]Slave, return to my dungeon with me. My needs are more pressing than the Princess's.'[otherwise]You, slave! You're owned by the princess? [big his of M] jurisdiction does not reach into my dungeon. You will be mine tonight.'[end if][roman type][line break]";
		otherwise if the class of the player is the latex fetish model:
			say "[speech style of M]'[if M is unfriendly and M is in Dungeon22]Ah, slave, you have returned. Good timing, I am ready to play with you again.'[otherwise if M is unfriendly]Slave, return to my dungeon with me. You will be my fucktoy again tonight.'[otherwise]Ooh, a rubber fuckdoll. I've been waiting for a natural sub like you to walk into my dungeon.'[end if][roman type][line break]";
		otherwise if the times-submitted of M > 3 and the frustration of M < 1:
			say "[speech style of M]'[one of]Ah, my favourite customer! I have some good news. Since you've been such a good sub, I've decided to give you my services free of charge. All I want from you is your unconditional submission! [if the player is prone]Don't move.'[otherwise]Get on your knees.'[end if][or]If it isn't my favourite slave. You know the drill by now, don't you, slut.[stopping][roman type][line break]";
		otherwise if M is unfriendly and the times-met of M > 0:
			if M is in Hotel22, say "[BigNameDesc of M] smirks.[line break][speech style of M]'Back for more punishment, are you[if the disappointment of M > 1]. Do you like my new strap-on?'[otherwise].'[end if][roman type][line break]";
			otherwise say "[BigNameDesc of M] smirks.[line break][speech style of M]'Ah, found you. I'm ready for another session, and that means you are too[if the disappointment of M > 1]. Do you like my new strap-on?'[otherwise].'[end if][roman type][line break]";
		otherwise if M is unfriendly:
			anger M;
			say "[BigNameDesc of M] stares at you with intimidating eyes.[line break][speech style of M]'Yes, you'll do fine. [if the player is upright]Get on your knees[otherwise]I can tell by your crawling that you are a natural submissive[end if].'[roman type][line break]";
		otherwise:
			say "[BigNameDesc of M] glances at you.[line break][speech style of M]'You're not my type. I'm looking for a proper submissive.'[roman type][line break][big he of M] seems to immediately lose interest.";
		if the disappointment of M > 1, now the disappointment of M is 0.

To say BecomesBoredFlav of (M - dominatrix):
	if M is uninterested:
		say "[BigNameDesc of M] seems to lose interest in you for now.".

Part 3 - Motion

To compute monstermotion of (M - dominatrix):
	if the woman-status of woman-barbara is 93 and woman-barbara is in the location of the player and the anal-contraption-scene of woman-barbara < 6:
		check seeking 1 of M;
	otherwise if M is unfriendly and the boredom of M <= 0: [The dominatrix goes looking for the player after a while, if she is unfriendly.]
		now neighbour finder is the location of M;
		let A be a random N-viable direction;
		let P be the room A from the location of M;
		if A is a random N-viable direction and P is unbossed and the number of barriers in P is 0 and the number of barriers in the location of M is 0:
			try M going A;
		otherwise if A is a random N-viable direction and P is unbossed and the number of barriers in P is 0 and the number of barriers in the location of M is 0:
			try M going A;
	[otherwise if M is not in Hotel37 and M is not in the location of the player:
		now M is in Hotel37.]

To compute (M - dominatrix) seeking (D - a direction): [The dominatrix only follows the player if unfriendly]
	if M is unfriendly, try M going D.

Part 4 - Combat

Section 1 - Attack

The monster fucked taunting rule of dominatrix is usually the matron gets bored rule.

The unique punishment rule of dominatrix is usually the dominatrix tops the player rule.

This is the dominatrix tops the player rule:
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

This is the dominatrix drags the player rule:
	let M be current-monster;
	if M is not in Hotel37 and the player is prone:
		drag to Hotel37 by M;
		rule succeeds.

To say DragArrival of (M - dominatrix) to (R - a room):
	say "[speech style of M]'Now kneel silently, eyes cast downward. Like a good slave.'[roman type][line break]".

To compute torturing of (M - dominatrix):
	say "[speech style of M]'[if the health of M < the maxhealth of M]You are going to learn a tough lesson in why you don't fight back against your superiors, whore.'[otherwise]You clearly need some [']education['] so that you can lean how to obey.'[end if][roman type][line break]";
	if a random number between 1 and 2 is 1 or there is a worn messed knickers or there is a demon lord in the location of M, compute whipping of M;
	otherwise compute stocks paddling of M.

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
			let P be a random off-stage patron;
			while X >= 0:
				now P is a random off-stage patron;
				now P is in the location of the player;
				set up P;
				anger P;
				bore P;
				decrease X by 1;
			say "[if the number of patrons in the location of the player <= 1]A curious passer-by walks into the room, and upon seeing you, grins widely[otherwise if lady fetish is 1]Several women pile into the room! They seem very excited to see you[otherwise]Several men pile into the room! They seem very happy to see you[end if].[line break][speech style of M]'What do we have here then?'[roman type][line break][if bukkake fetish is 1][line break][speech style of M]'It's a show for you lot. Stand around and watch, and feel free to use her face as a target board, if you know what I mean.'[roman type][line break]They do indeed seem to know, as they all start slowly stroking their meat while staring at you.[otherwise if face is actually occupied][line break][speech style of M]'I just wanted someone to watch, it's not as humiliating for the little bitch here if I'm the only one that knows. Feel free to wank, but don't touch her, [he of M]'s mine.'[roman type][line break]The [man of P] doesn't need telling twice, and already has [his of P] hands wrapped around [his of P] [DickDesc of P]. [big his of P] eyes are locked with yours.[otherwise][line break][speech style of M]'This end is your end, do what you want. I'll handle the other.'[roman type][line break]The [man of P] doesn't need telling twice, and heads straight for you.[end if]";
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
					say "[BigNameDesc of N] pulls out and without even saying a word to you, walks away. You are too busy gasping for breath to be able to say anything to [him of N] before [he of N]'s out of sight.";
					now N is not penetrating face;
					destroy N;
					BlowCount;
				otherwise:
					say "[BigNameDesc of N] climaxes, spilling [his of N] [semen] onto the floor in front of you.[line break][speech style of M]'[one of]If I were you, I'd make her clean that up[or]That was really hot, thanks for letting me be a part of it[or]I love this place[or]I'm so glad I got to witness this bitch's punishment[or]I hope you enjoyed the privilege of me jacking off over your punishment, slut[in random order].'[roman type][line break]With that, [he of N] turns around and leaves.";
					SemenPuddleUp the semen load of N;
					destroy N;
		[And now for what the dominatrix does herself...]
		if the sex-length of M > 0:
			let P be a random patron penetrating face;
			say "[one of]Using some kind of spanking paddle outside of your vision, the[or]The[stopping] [M] [one of]strikes[or]slaps[or]spanks[or]paddles[then at random] your ass cheeks hard! [line break][variable custom style][if the player is able to speak]'[one of]Owwww!'[or]Aaaaah!'[or]OUUCH!'[at random][otherwise][one of]Fuck![or]Shit![or]'MMMMPH!'[or]'NNNNG!'[at random][end if][roman type][line break][if P is patron][one of]You shriek around [NameDesc of P]'s [DickDesc of P], which just makes you gag even harder.[or][or][or][cycling]";
			Humiliate 150;
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
	say "[BigNameDesc of N] climaxes, and spurts [his of N] load over your face! [big he of N] [one of]chuckles to himself and then leaves the room.[or]sighs gently and then leaves the room.[or]mutters something rude under [his of N] breath and then sees himself out.[or]groans loudly as [he of N] paints your forehead white, and then zips up and leaves.[or]growls under [his of N] breath as [he of N] rides [his of N] waves of ecstasy. After [he of N] comes down, [he of N] tucks himself away and then exits the way [he of N] came.[in random order][line break][variable custom style][if the semen addiction of the player < 6][one of]Eww, gross![or]Yuck yuck yuck![or]Nooooo![or]I can't wipe it off with my hands bound like this...[or]How disgusting![or]Anywhere but my face![in random order][otherwise if the semen addiction of the player < 12][one of]Grr, just you wait![or]My face isn't just somewhere you should dump your [semen]![or]How could you![or]How rude![or][big he of N] treated me as if I was just an object![in random order][otherwise if the player is able to speak][line break][second custom style][one of]'Come back any time, [stud]!'[or]'Thank you sir!'[or]'Thank you for your [semen]!'[or]'Yum! Thank you~'[or]'Your cum tastes great!'[in random order][otherwise][second custom style][one of]I do love cum![or]Yummy![or]I want even more![or]I wish I could thank him properly.[in random order][end if][roman type][line break]";
	CumFaceUp the semen load of N;
	destroy N.

To compute whipping of (M - dominatrix):
	TimesSubmittedUp M by 1;
	if M is grabbing the player:
		say "[one of]Your punishment becomes clear when you hear a whistling sound quickly followed by an intense, sharp pain on your back. You're being whipped![or]Once again you hear a whistling sound quickly followed by an intense, sharp pain on your back. [big he of M]'s whipping you again![stopping][line break][speech style of M]'[one of]Beg for mercy, slave, and I might just go easy on you.'[or]We're going to be here a while if you don't start apologizing soon.'[or]I can be merciful, slave. All you need to do is beg for it.'[at random][roman type][line break]";
		let R be 0;
		if the delicateness of the player > a random number between 12 and 18:
			say "Swallow your pride and beg for mercy?";
			unless the player is consenting, now R is 1;
		if R is 1:
			if the favour of M < 17, FavourUp M;
			now the body soreness of the player is 10;
			say "[BigNameDesc of M] pulls no punches, viciously laying into you with [his of M] whip as tears well up in your eyes and continue well past the point of crying, [if the delicateness of the player > 10]which does not take long[otherwise]which takes an unbearably long time[end if]. After this, [he of M] seems satisfied, and lets you down. [line break][speech style of M]'[if M is objectifying the player]I assume from those tears that you have learned your lesson, slave. Don't bother standing up to me again.'[otherwise]This is what happens to disobedient slaves. Disrespect me like that again and I will cut you loose.'[roman type][line break]";
			PainUp 2;
		otherwise if the reaction of the player is 2 or (the reaction of the player is 1 and a random number between the charisma of the player and 4 > the difficulty of M / 3):
			say "[BigNameDesc of M] whips you only a few times, true to [his of M] word and holding back thanks to your submissive pleading. After this, [he of M] seems satisfied, and lets you down. [line break][speech style of M]'I'm surprised at how quickly you learned your lesson, slave. Disrespect me again and I may not be so gentle.'[roman type][line break]";
			humiliate 100;
		otherwise:
			say "[BigNameDesc of M] whips you several more times, grinding [his of M] strapon cock between your [AssDesc] as [he of M] brings you to the verge of tears. True to [his of M] word [he of M] seems to be holding back, and after [he of M]'s satisfied [he of M] gently lets you down.[line break][speech style of M]'Learn your lesson, slave, or next time I will not be so gentle.'[roman type][line break]";
			PainUp 1;
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
	say "[BigNameDesc of M] walks in front of your face, and presses one of [his of M] latex boots to your face. [line break][speech style of M]'Polish it[one of] with your tongue.'[or].'[stopping][roman type][line break][one of]The shoe doesn't look particularly dirty but it's pretty hard to tell since it's black. In any case you're confident it would taste horrible. (Use [bold type]submit[roman type] to lick the boot, and [bold type]resist[roman type] to refuse.)[line break][or][stopping]";
	if the girth of M < 4:
		cutshow figure of dominatrix cutscene 1 for M;
	otherwise if the girth of M < 6:
		cutshow figure of dominatrix cutscene 2 for M;
	otherwise:
		cutshow figure of dominatrix cutscene 3 for M.


To compute facial sex of (M - dominatrix):
	if M is friendly-fucking:
		say "[one of][BigNameDesc of M] aggressively fucks your throat with [his of M] [LongDickDesc of M].[or][BigNameDesc of M]'s hips slam into your face, [his of M] [LongDickDesc of M] repeatedly striking the back of your throat.[or][BigNameDesc of M] slams [his of M] [LongDickDesc of M] in and out of your mouth, forcing you to make a lewd gagging noise with every thrust.[or][BigNameDesc of M] wears a wide grin, mercilessly ramming [his of M] [LongDickDesc of M] down your throat.[or]You can't help making a lot of noise as [NameDesc of M] slams [his of M] [LongDickDesc of M] into the back of your throat.[in random order]";
		let I be 0;
		decrease I by the strap-on girth of M;
		let G be a random number between the intelligence of the player and I;
		unless the player is gag-prone, increase G by 2;[By default, 10 to 0]
		if G < 2 and the player is not a deepthroater:
			PukeUp;
			compute facial climax of M;[If you puke, she ends the sex early and you get no potential reward for being a good sub.]
	otherwise:
		if the oral sex addiction of the player > 7, stimulate face from M;
		if the reaction of the player is 0:
			say "[speech style of M]'Insolent worm! I will show you what happens to people who disobey me.'[roman type][line break]";
			now M is not penetrating face;
			compute torturing of M;
		otherwise:
			say "[speech style of M]'Good girl. And now underneath...'[roman type][line break][big he of M] tilts the boot back and pushes the sole towards your tongue. [line break][variable custom style][one of]Gross, that's the bit that's been touching the ground...[or]Eww, not again![stopping][roman type][line break]";
			cutshow figure of dominatrix cutscene 6 for M;
			now the sex-length of M is 1;
	decrease the sex-length of M by 1.

To compute facial climax of (M - dominatrix):
	if M is friendly-fucking and the sex-length of M is 0 and the times-submitted of M > 0:
		compute happy reward of M;
		TimesSubmittedUp M by 1;
	otherwise if M is friendly-fucking:
		say "[speech style of M]'Ok, that's all the time you get. [if the frustration of M < 2]Feel free to come back next time you have some cash, you're a surprisingly good sub. [end if]You know the way out.'[roman type][line break][BigNameDesc of M] pulls [his of M] [DickDesc of M] out of your mouth and turns [his of M] attention to getting it clean.";
		now the sex-length of M is 0;
		TimesSubmittedUp M by 1;
	otherwise:[times-submitted isn't incremented here yet.]
		if the reaction of the player is 0:
			say "[BigNameDesc of M] slaps you hard on the cheek. You yelp in pain![line break][speech style of M]'Bitch, you need to learn to obey orders. I expect this to go differently next time.'[roman type][line break]";
			PainUp 1;
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
	FavourUp M by 1;
	if the frustration of M < -1 and the number of cots in the location of the player is 0:
		say "[BigNameDesc of M] tilts your face upward as [he of M] gently removes [his of M] [DickDesc of M]. [line break][speech style of M]'As always, you're a good little sub. Tell you what. I'll set up a cot for you right here in my dungeon, and you can use it anytime as long as you're willing to keep reminding your mistress why [he of M] keeps rewarding you.'[roman type] [BigNameDesc of M] walks off to one corner of the room and pulls out a tiny bed.";
		now a random cot is in the location of the player;
	otherwise if M is penetrating face:
		let C be a random off-stage candy;
		say "[BigNameDesc of M] tilts your face upward as [he of M] gently pulls [his of M] [DickDesc of M] out of your mouth. [line break][speech style of M]'I have to say, I'm impressed. I might have to make you my slave after a performance like that! As promised, take this, completely free of charge.'[roman type][line break]";
		say "[BigNameDesc of M] hands you a small [C].";
		now C is held by the player;
	otherwise:
		let C be a random off-stage candy;
		say "[speech style of M]'I have to say, you took that fucking like a real champ. I might just have to make you into a slave if you keep that up! Take this, it's free of charge.";
		say "[BigNameDesc of M] hands you a small [C] before losing interest.";
		now C is held by the player;
	decrease the frustration of M by 1.

To say SexSubmissionFlav of (M - dominatrix):
	if M is penetrating face:
		if the sex-length of M > 0, say "You [if the delicateness of the player < 5]extremely reluctantly[otherwise if the delicateness of the player < 10]reluctantly[otherwise if the delicateness of the player < 14]timidly[otherwise]enthusiastically[end if] begin licking the toe of [his of M] boot. The disgusting taste of latex instantly hits your mouth[if the delicateness of the player >= 14], but you don't care[end if].";
		otherwise say "It's so gross that you [if the delicateness of the player < 10]can barely bring yourself to do it[otherwise if the delicateness of the player < 14]are quite hesitant[otherwise]are slightly hesitant[end if], but you do it anyway, tonguing the foul tasting part of the shoe where it has been in contact with the ground. The disgusting taste of rubber and grime overpower your taste buds and leave you not wanting to put your tongue back in your mouth.";
	otherwise:
		say "[one of]You lie still and accept the invasion.[or]You submit to being used as a plaything.[or]You don't resist being used.[purely at random]".

To say FriendlyAssholePenetrationFlav of (M - dominatrix):
	say AssholePenetrationFlav of M.

To set up sex length of (M - dominatrix) in (B - a body part):
	set up sex length (a random number between 3 and 4) of M in B.[remember, this only applies if sex length is 0 or less]

To compute unique penetration effect of (M - dominatrix) in (B - a body part):
	if refactoryperiod is 3 and M is not friendly-fucking:
		say "[BigNameDesc of M] tuts and shakes [his of M] head in disapproval.[line break][speech style of M]'Did I say you could cum? I didn't think so. Well, I guess this just shows you aren't ready to be treated any differently.'[roman type][line break]";
		if the size of penis > 0, cutshow figure of dominatrix cutscene 7 for M;
		now the disappointment of M is 1;
	otherwise:
		now the disappointment of M is 0.

To say PenPrep of (M - dominatrix) in (F - asshole):
	say "[BigNameDesc of M] wraps a hand around [his of M] [LongDickDesc of M] and guides it towards the entrance to your [asshole]. [line break][speech style of M]'[one of]You[or]Remember, you[stopping] do not have permission to cum unless I say so.'[if newbie tips is 1][newbie style][line break]Newbie Tip: Choosing 'resist' during sex reduces the chance of orgasm.[end if][roman type][line break]".

To say PenetrationFlav of (M - dominatrix) in (F - asshole):
	say "[big he of M] pushes in with measured strength and your [ShortDesc of asshole] [if the openness of asshole < the strap-on girth of M]is forced apart[otherwise]parts to accept the fake [manly-penis] inside[end if].";

To compute anal sex of (M - dominatrix):
	if woman-barbara is in the location of the player and the woman-status of woman-barbara is 93 and woman-barbara is awake:
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
			if refactoryperiod > 0 and the disappointment of M is 0:
				say "[BigNameDesc of M] tuts and shakes [his of M] head in disapproval. [line break][speech style of M]'Did I say you could cum? I didn't think so. Well, I guess this just shows you aren't ready to be treated any differently.'[roman type][line break]";
				now the disappointment of M is 1.

To compute sexResist of (M - dominatrix) in (F - a fuckhole):
	say "You try to get away, but [he of M]'s much too strong for you.[one of]If anything, your struggles have just made the fucking even more brutal on your poor [asshole].[or]Instead, [he of M] seems to be taking the disobedience as motivation to fuck you even harder![or][or][at random]".[Friendly sex dominatrix has either let go or started torturing the player by now.]

To compute sexSubmit of (M - a dominatrix) in (F - a fuckhole):
	if the strap-on girth of M >= 6 and refactoryperiod is 0 and the sex-length of M is 1 and the player is able to get horny and M is not friendly-fucking:
		say "[BigNameDesc of M] starts pumping even faster. [line break][speech style of M]'Cum, slave, cum for me now!'[roman type][line break][if the player is not a pervert]As much as you try to stop yourself, the feeling in your [asshole] is too intense and you can't help but obey [his of M] command![otherwise]You feel the pressure building inside of you and gleefully comply![end if]";
		anally orgasm shamefully;
		heal asshole times 2; [To prevent fainting]
		now the disappointment of M is -1;
		FavourUp M;
	otherwise:
		say "[BigNameDesc of M] continues to powerfully pummel away with [his of M] [LongDickDesc of M]. [one of]You can very clearly feel the realistic contours of [his of M] rubber [manly-penis] as it rubs mercilessly against the sensitive walls of your [asshole].[or][line break][variable custom style]Oof![roman type][line break][or][line break][variable custom style]Aaah![roman type][line break][or][line break][variable custom style]Fucccck![roman type][line break][or]Even though you're the only one whose nether regions are being stimulated, it's clear [he of M]'s deriving a lot of sexual pleasure from the situation.[or][line break][speech style of M]'Good girl!'[roman type][line break][then at random]";
		ruin asshole;
		if M is friendly-fucking and refactoryperiod > 0:
			compute anal climax of M.

To compute MasturbationReaction of (M - dominatrix):
	if M is penetrating asshole and M is not friendly-fucking:
		let W be a random off-stage wrist bond;
		if W is actually summonable:
			say "[line break][speech style of M]'Sorry, did I give you permission to touch yourself?'[roman type][BigNameDesc of M] grabs your wrists and forcibly binds them together with a [printed name of W].";
			now W is wrist-bound-behind;
		otherwise:
			say "[line break][speech style of M]'Sorry, did I give you permission to touch yourself?'[roman type] [BigNameDesc of M] grabs your wrist and yanks it away from your crotch.";
			FavourDown M;
		now wanking is 0;
	otherwise:
		say "[BigNameDesc of M] chuckles as [he of M] watches you.".

To decide which number is the rounds of sex left of (M - dominatrix):
	if woman-barbara is in the location of the player and the woman-status of woman-barbara is 93 and woman-barbara is awake, decide on 2;
	decide on the sex-length of M. [Default function allows us to rewrite where this isn't true, e.g. witch and demoness]

To compute unique climax of (M - dominatrix) in (F - asshole):
	say "[BigNameDesc of M][if M is not friendly-fucking], satisfied,[end if] slowly removes [his of M] [DickDesc of M] from your [ShortDesc of asshole].";
	if M is friendly-fucking and the sex-length of M < 1 and the times-submitted of M > 0:
		decrease the frustration of M by 2;
		compute happy reward of M;
	otherwise if M is friendly-fucking:
		say "[speech style of M]'Ok, that's all the time you get. [if the frustration of M < 2]Feel free to come back next time you have some cash, you're a surprisingly good sub. [end if]You know the way out.'[roman type][line break][BigNameDesc of M] loses interest.";
		now the sex-length of M is 0;
	otherwise if M is interested:
		if the disappointment of M is 1:
			say "[speech style of M]'Next time, I expect you to control yourself and only orgasm if instructed.'[roman type][line break]";
		otherwise if the disappointment of M is -1:
			if a random focus band is off-stage:
				say "[speech style of M]'You are the perfect fuck toy, you know that? I think you need a reward. Here, take this. It'll help you focus your mind on what's important.'[roman type][line break][BigNameDesc of M] drops a black band on the floor next to you. [line break][speech style of M]'The magic in this focus band will help you resist orgasm for as long as possible, and so you should be able to fuck for longer before fainting.'[roman type][line break]";
				now a random off-stage focus band is in the location of the player;[TODO: poster on the wall in the room advertising the focus band]
			otherwise:
				say "[speech style of M]'Heh, you really are the world's most perfect fuckhole.'[roman type][line break]";
		otherwise:
			say "[speech style of M]'I must say, slave, I'm impressed. You took that fucking like a real champ. As a reward, I'll make sure I have a brand new toy to try out on you next time you see me.'[roman type][line break]";
			now the disappointment of M is the strap-on girth of M + 2;
		bore M.

Check going when dominatrix is in the location of the player:
	if the disappointment of dominatrix > 1, now the strap-on girth of dominatrix is the disappointment of dominatrix. [Increase the strapon size if appropriate]

Definition: dominatrix (called M) is willing to let go:
	if the frustration of M >= 3, decide no;
	decide yes.


Definition: dominatrix (called M) is actually interested:[custom bit to allow the player to give jewellery to the dominatrix, but not modify her existing "friendly" functionality.]
	if M is retaining a plentiful accessory and M is interested, decide yes;
	if M is unfriendly, decide yes;
	decide no.

To say MonsterOfferRejectFlav of (M - dominatrix) to (T - a thing):
	if M is not actually interested:
		say "[BigNameDesc of M] doesn't even bother to look at you. [big he of M] must not want it.";
	otherwise:
		say "[BigNameDesc of M] smiles. [line break][speech style of M]'[if convincing power > 0 and M is unfriendly]You're not going to get let off that easy.'[otherwise]Why the hell would I want that?'[end if][roman type][line break]".

To compute (M - dominatrix) considering (T - a plentiful accessory):
	if M is unfriendly:
		say "[BigNameDesc of M] chortles. [line break][speech style of M]'Don't worry about paying me, I'm gonna make you my bitch for free.'[roman type][line break]";
	otherwise if the number of cots in the location of the player > 0:
		say "[BigNameDesc of M] chuckles. [line break][speech style of M]'Don't worry about paying me, all you need to do is exactly as I say. Shouldn't be too hard, you're good at being my bitch.'[roman type][line break]";
	otherwise if (the frustration of M) * 2 > the price of T and the price of T > 3:
		say "[BigNameDesc of M] scoffs. [line break][speech style of M]'[if the frustration of M > 0]If you're planning to waste my time again, you're going to have to pay a lot more than that.'[otherwise]You don't honestly believe that's enough for a session do you?'[end if][roman type][line break]";
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
			say "[speech style of M]'Alright, this will buy you [R] rounds. Anal or Oral only, don't try to talk to me, just get on your knees and show me you're ready.'[roman type][line break]";
		now T is in Holding Pen;
		now M is retaining T;

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

This is the dominatrix friendly convinced rule:
	if debugmode > 0, say "Checking to see if the player is a valid customer...[line break]";
	if presented-orifice is a reasonable target:
		if current-monster is not retaining a plentiful accessory or the sex-length of current-monster < 1[ or the number of cots in the location of the player is 0]:[Has the player paid yet? If they have had a session already, did they pay for that one?]
			say "[PresentFriendlyRejectionFlav of current-monster]";
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
	if presented-orifice is a potential target or the sex-length of M < 1:
		say "[speech style of M]'If you want a session, you'll have to pay me first.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Anal or Oral only.'[roman type][line break]".

To compute FriendlySexRelease of (M - dominatrix):
	if M is not willing to let go:
		say "[speech style of M]'You know what? I'm sick of letting you waste my time.'[roman type] [BigNameDesc of M] pulls out, looking very pissed off.";
		now M is not penetrating face;
		now M is not friendly-fucking;
		anger M;
		compute torturing of M;
	otherwise:
		say FriendlySexReleaseFlav of M;
		increase the frustration of M by 10;
		dislodge M.

To say FriendlySexReleaseSpeech of (M - dominatrix):
	say "[speech style of M]Whatever, it's your money you're wasting.'[roman type] ".


Section 2 - Damage

To compute damage of (M - dominatrix):
	if the health of M > 0:
		if M is uninterested:
			say "[big he of M] shrieks with shock. [line break][speech style of M]'[one of]How dare you!'[or]Do you never learn?!'[cycling][roman type][line break]";
			now M is interested;
			anger M;
		otherwise:
			if M is friendly:
				say "[big he of M] shrieks with shock. [line break][speech style of M]'[one of]How dare you!'[or]Do you never learn?!'[cycling][roman type][line break]";
				anger M;
			otherwise:
				say DamageReaction (the health of M) of M;
	otherwise:
		compute death of M.

To say DamageReactHealthy of (M - dominatrix):
	say "[one of][speech style of M]'You will not enjoy your punishment, I can guarantee that!'[roman type][line break][or][big he of M] sneers aggressively![stopping]".

To say DamageReactDamaged of (M - dominatrix):
	say "[big he of M] snarls angrily, taking the hit!".

To say DamageReactTired of (M - dominatrix):
	say "[big he of M] growls angrily, wincing from the hit!".

To say DamageReactWeak of (M - dominatrix):
	say "The dominatrix swears as [he of M] struggles to maintain [his of M] balance!".

To compute unique death of (M - dominatrix):
	say "The [noun] screams as [he of M] falls to the floor. ";
	let B be a random off-stage focus band;
	let X be a random off-stage strapon-dildo;
	if the strap-on girth of M >= 6 and mythical creature fetish is 1, now X is a random off-stage equine-strapon;
	if B is a thing:
		now B is in the location of the player;
		say "[big his of M] body disappears, leaving behind a [printed name of B][if X is clothing] and the strap-on [he of M] was wearing[end if].";
		compute autotaking B;
	otherwise:
		say "[big his of M] body disappears[if X is clothing], leaving behind the strap-on [he of M] was wearing[end if].";
	if X is clothing:
		now the strap-length of X is the strap-on girth of M + 5;
		if the strap-on girth of M >= 6, now the strap-length of X is 12;[20 inches]
		now X is in the location of the player;
		compute autotaking X.

To say StrikingSuccessFlav of (M - dominatrix) on (B - a body part):
	say "[BigNameDesc of M] [one of]smacks[or]swats[as decreasingly likely outcomes] you [TargetName of B] with a riding crop! Ouch!!".

Part 5 - Dominant Sex

To suggestFucker (F - a body part) for (M - dominatrix):
	if F is penis:
		if watersports fetish is 1 and the player is desperate to pee:
			say "Do you want to [he of M]'ll let you piss on [his of M] face? It might be really difficult...";
			if the player is consenting:
				now player-fucker is F;
				now player-fuckchoice is FUCK-WATERSPORTS;
		if player-fucker is face:
			say "Do you want to see if you can make [him of M] suck your [SexDesc of penis]?";
			if the player is consenting:
				now player-fucker is F;
				now player-fuckchoice is FUCK-BLOWJOB;
		if player-fucker is face:
			if the size of penis >= 4:
				say "Do you want to try to fuck [him of M] instead? It could be riskier...";
				if the player is consenting:
					now player-fucker is F;
					now player-fuckchoice is FUCK-PENETRATION;
			otherwise:
				say "Your [SexDesc of penis] isn't big enough to fuck [his of M] properly...";
	otherwise if F is face:
		say "Do you want to see how [he of M] reacts to having [his of M] strapon used on [him of M]?";
		if the player is consenting:
			now player-fucker is F;
			now player-fuckchoice is FUCK-UNIQUE;
		otherwise:
			say "You decide against it.".

To say DominanceSuccess of (M - dominatrix):
	say "You successfully force [NameDesc of M] to [his of M] knees, holding [him of M] down as you rip off [his of M] strapon, leaving [his of M] crotch bare. [big he of M] [if the times-dominated of M < 3]stares at you silently for a moment before cocking an eyebrow and spreading [his of M] legs. [line break][speech style of M]'Alright. Here's your chance.'[otherwise]looks away from you, waiting a moment before submissively spreading [his of M] legs. [line break][speech style of M]'I'm ready.'[end if][roman type][line break]";
	if player-fucker is penis:
		if player-fuckchoice is not FUCK-PENETRATION:
			oral dominate M;
		otherwise:
			vaginal dominate M;
	otherwise:
		anal dominate M.

To oral dominate (M - dominatrix):
	let L be sexual-penis-length;
	if L >= 4:
		say "You chuckle, tossing [his of M] kinky underwear over your shoulder as you stroke your [sexual-player-penis] to hardness. A moment passes, and neither of you make a move. [line break][speech style of M]'Ugh. This is exactly why [if the times-submitted of M > 0]I don't service my[otherwise if the times-dominated of M < 3]I only bother wi[otherwise]Could you at least hurr[end if]- ULK!'[roman type][line break]You abruptly shove your [SexDesc of penis] in [his of M] open mouth, grinning down at [him of M] as [his of M] sentence comes out in a much, much sexier tone of voice. [big he of M] looks up at you with a mixture of rage and arousal, gagging loudly as you fuck [his of M] throat.[if the player is able to speak and the times-submitted of M > 1][line break][variable custom style]'Tell me if this tastes any better than your fucking boot, bitch!'[roman type][line break]You hold [him of M] down[otherwise if the player is able to speak][line break][variable custom style]Here's dinner, bitch!'[roman type][line break]You hold [him of M] down[otherwise]You emit a muffled groan as you suddenly jam [him of M] down, holding on[end if] with both hands as you explode, [if L > 7]filling [his of M] belly[otherwise if L > 5]coating the inside of [his of M] throat[otherwise]coating the inside of [his of M] mouth[end if] with fresh, creamy [semen].";
		if bukkake fetish is 1 and player-fuckchoice is not FUCK-WATERSPORTS:
			say "Satisfied, you shove [him of M] away and wipe your softening [sexual-player-penis] on [his of M] face. [if the times-dominated of M is 0][big he of M] clearly has very little experience being put in [his of M] proper place, but as [he of M] shivers at your feet, trying to catch [his of M] breath, you know [he of M] won't soon forget how it felt to be treated this way[otherwise if the times-dominated of M < 3][big he of M] definitely has a lot more to learn about [his of M] proper place, but as [he of M] rests against the wall with your [load] clinging to [his of M] cheeks, you know [he of M][']ll definitely be taking a lesson from the experience[otherwise][big he of M] doesn't hold onto any pretence of dominance, fingering [himself of M] desperately as [he of M] tries to catch [his of M] breath[end if].";
	otherwise:
		say "You chuckle, tossing [his of M] kinky underwear over your shoulder as you tease your [sexual-player-penis] to hardness. A moment passes, and neither of you make a move. [line break][speech style of M]'[if the times-dominated of M < 3]Ugh, FINE, just let me do it.'[otherwise]...I understand.'[end if][roman type][line break][BigNameDesc of M] wraps two fingers around the base, jerking you off as [he of M] purses [his of M] lips around your tip. The look on [his of M] face tells you to finish quickly if you know what's good for you, [if player-fuckchoice is FUCK-WATERSPORTS]so even though you haven't finished, you decide to skip straight to the end and start pissing directly into [his of M] mouth[otherwise]so although the sensation isn't that intense, you still find yourself groaning uncontrollably as you shoot your load into [his of M] mouth[end if]. [big he of M] immediately jerks away, glaring up at you indignantly as [he of M] wipes [his of M] mouth.";
		now player-fucking is DOMINANT-NEUTRAL;
	if player-fuckchoice is FUCK-WATERSPORTS:
		strongDignify;
		now the bladder of the player is 0;
		SportsGet;
	otherwise:
		moderateDignify;
		orgasm;
		BlowGet;
	if the times-dominated of M >= 3:
		say AfterDominationComment 1 of M;
	otherwise if the favour of M <= the aggro limit of M:
		say AfterDominationComment 2 of M;
	otherwise:
		say AfterDominationComment 3 of M.

To vaginal dominate (M - dominatrix):
	let D be the dominance of the player;
	say "You slap [him of M] [if D <= 2]as hard as you can, glaring back at [him of M][otherwise]without missing a beat, laughing imposingly[end if] as you slide your [SexDesc of penis] into [his of M] [HoleDesc of M]. [big he of M]'s tight, [if the intelligence of the player > 12]and although [he of M] does [his of M] best not to let it show on [his of M] face, [his of M] wetness tells you everything you'd want to know about how turned on [he of M] is to be on the bottom for a change. [big his of M] facade immediately deteriorates[otherwise if the intelligence of the player > 7]and although it doesn't show in [his of M] face, [his of M] wetness gives you a good impression of how excited [he of M] is to be on the bottom for a change. [big his of M] composure crumbles[otherwise]but the stern expression on [his of M] face makes it a little tough to know whether or not you're actually doing a good job of dominating [him of M] or not. [big his of M] true feelings only come through[end if] as you begin to thrust, [his of M] steady glare and haughty snarl breaking within moments as [he of M] struggles not to let [his of M] moans make it through [his of M] lips. You're not about to let [his of M] save face, pounding harder and harder and HARDER, [if the times-dominated of M >= 3]until [he of M] finally begins to moan just like the slut you know [he of M] is.[otherwise]until [his of M] raw quaking moans finally force their way out of [his of M] mouth.[end if] You feel [him of M] clenching around your [SexShaft] as your arousal overflows, and you slam your [sexual-player-penis] home as you unleash a [load] deep inside [his of M] [HoleDesc of M].";
	FuckGet;
	obsceneDignify;
	if D > 2, FavourUp M;
	if the times-dominated of M >= 3:
		orgasm M;
		say AfterDominationComment 1 of M;
	otherwise if the favour of M <= the aggro limit of M:
		say AfterDominationComment 2 of M;
	otherwise:
		say AfterDominationComment 3 of M;
	orgasm.

To anal dominate (M - dominatrix):
	let G be the strap-on girth of M;
	let D be 0;
	if G < 4:[lubricating it]
		say "You grab [his of M] strap-on off the floor, shoving the long red dildo in [his of M] mouth. [big he of M] stares daggers at you as [he of M] quietly slurps the plastic length, half-obediently coating it in [his of M] spit.";
		increase D by the times-dominated of M * 3;
	otherwise if G < 6:
		say "You chuckle, grabbing [his of M] strap-on off the floor and shoving the huge, flesh-coloured dildo into [his of M] mouth. [if the times-dominated of M < 3][big he of M]'s clearly never had this much [manly-penis] in [his of M] mouth before, real or not[otherwise][big he of M]'s clearly not used to having this much [manly-penis] in [his of M] mouth at all[end if], although [he of M] does [his of M] best to stare daggers at you anyway. [big he of M] struggles not to gag as the tip grazes the back of [his of M] throat, but remains still in your grip as [he of M] coats the plastic length in [his of M] spit.";
		increase D by the times-dominated of M * 5;
	otherwise:
		say "You can't help but laugh, awkwardly lifting [his of M] heavy strap-on off the floor and cramming it into [his of M] mouth. [if the times-dominated of M < 3]It's impossibly big, and [he of M] clearly has no idea how to handle it at all, giving you a look somewhere between anger and remorse as the titanic invader jams [his of M] jaws open as wide as they can go. [big he of M] can't help but gag as every inch that fits is forcibly lubricated with [his of M] spit[otherwise]It's impossibly big, but even with [his of M] jaws pried open as wide as they can go, [he of M] does [his of M] best to obediently slurp on the huge oral invader until every inch that fits is lubed in [his of M] spit [end if].";
		increase D by the times-dominated of M * 7;
	if the player is able to speak:
		if the times-submitted of M > 2, say "[line break][variable custom style]'[one of]Yeah. Everything that goes up my ass goes in your mouth and in YOUR ass too.'[or]Oops, your turn again!'[at random][roman type][line break]";
		otherwise say "[line break][variable custom style]'[if the player is male]Seems like you were wearing this backwards. Don't worry, I'll help!'[otherwise]You were going to try putting this in me, weren't you!'[end if][roman type][line break]";
	otherwise:
		say "You glance down, at [his of M] unprotected [asshole], and shoot [him of M] a look that says 'Yes, that's exactly where it's going.' [run paragraph on]";
	if G < 4:[putting the dildo up the butt]
		say "You pull the dildo out of [his of M] mouth and slide it into [his of M] [asshole], relishing the feeling of slowly fucking [his of M] [if the times-submitted of M > 2]with the same toy [he of M] used on you[otherwise]with the same toy you *know* [he of M] was planning to use on you[end if]. [big he of M] endures silently, staring up at you coldly until you begin to lose interest.[line break]";
		increase D by 40;
	otherwise if G < 6:
		say "You slide the dildo out of [his of M] mouth, looking [him of M] in the eye as you push it inch-by-inch into [his of M] [asshole]. [big he of M][']s clearly picked up on the irony of being fucked [if the times-submitted of M > 2]by the same toy [he of M] used on you[otherwise]with the same toy [he of M] was planning to use on you[end if], [if the times-dominated of M >= 3]moaning with as much dignity as [he of M] can[otherwise]enduring as silently as [he of M] can[end if] until you start to lose interest.[line break]";
		increase D by 60;
		FavourUp M;
	otherwise:
		say "You pop the dildo out of[his of M] mouth with a little bit of difficulty, looking [him of M] dead in the eye as you position the tip against [his of M] sphincter and push until the mixture of pressure and spit forces [his of M] [asshole] to stretch enough to finally let it it. Even if [if the times-submitted of M > 2]you hadn't felt it before[otherwise]you hadn't felt its massive weight in your hands[end if], the sheer size of the thing is written all over [his of M] face as you cram inch after inch of black, veiny plastic straight up [his of M] ass. [if the times-submitted of M > 2]You relish [his of M] gasps[otherwise]You feel strangely powerful[end if], forcing [him of M] to take and take and take until [his of M] [asshole] literally can't fit any more. Satisfied, you give [him of M] a gentle pat on the cheek and straighten up.[line break]";
		FavourUp M;
		increase D by 100;
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
	say "[speech style of M]'Done already? How disappointing, I thought you were planning to teach me about your role in our relationship.'[roman type][line break]";
	if the size of penis > 0 and the size of penis < 4 and the times-submitted of M > a random number between 3 and 4:[She has a sweet spot for you so she strokes your ego!][TODO: player can choose to 'look pathetic']
		if asshole is actually occupied:
			let J be a random off-stage plentiful accessory;
			now J is ruby;
			say "[big he of M] raises [his of M] hand as if to strike you, but something seems to change slightly in [his of M] expression as [his of M] eyes pass over your crotch. [line break][speech style of M]'... I already know what would happen if you ever tried using your GIANT [manly-penis] on my [pussy], and there's no way I'm going to let you turn ME into your on-demand fuckhole. Nooo-siree!'[roman type][line break][BigNameDesc of M] makes a fearful face, holding you down as [he of M] quickly slips a plastic cage over your [ShortDesc of penis]. [line break][speech style of M]I don't know if my mind could handle cumming hard from your BIG juicy [manly-penis], and thanks to this cage, I won't have to find out. Can you believe how lucky I am?'[roman type][line break][if the intelligence of the player > 15][big he of M][']s obviously exaggerating a little bit, but more you think about it, the less you can deny how lucky [he of M] was to have a cage on hand. [big he of M] got off pretty easy! You feel a swell of confidence![otherwise if the intelligence of the player > 7]You know there's something a little off about all this, but you're just so happy to know your [ShortDesc of penis] is actually huge after all that it just completely slips your mind. You feel a swell of confidence![otherwise]It sucks to be all caged up, but it's for [his of M] own protection! A dominant, hung guy like you can turn girls like [him of M] into total sluts if [he of M] isn't careful. Knowing [he of M] has to go to such great lengths to protect [himself of M] fills you with a swell of confidence![end if] [big he of M] hands you a [printed name of J] after [he of M] finishes locking the cage in place.";
			now J is held by the player;
			Dignify 330 - the intelligence of the player * 10;
			let C be a random off-stage chastity cage;
			Summon C cursed;
		otherwise:
			let P be a random off-stage sex toy;
			say "[big he of M] raises [his of M] hand as if to strike you, but something seems to change slightly in [his of M] expression as [his of M] eyes pass over your crotch. [line break][speech style of M]'... I already know what would happen if I let you try that MONSTER cock on my [pussy]![roman type][line break][BigNameDesc of M] makes a fearful face, keeping as far a distance from you as possible as [he of M] [if P is dong]slides[otherwise]pushes[end if] a [printed name of P] into your [asshole]. [line break][speech style of M]'[big please] be satisfied with this gift from my collection. I know it's not much, really, but right now it's the only thing I have to make sure you don't try to MINDBREAK me with your GIANT dick!'[roman type][line break][if the intelligence of the player > 15][big he of M][']s obviously exaggerating a little bit, but the more you think about it, the less you can deny how dominant you feel getting a reward simply for trying to have sex with [him of M]! You feel a swell of confidence![otherwise if the intelligence of the player > 7]You know there's something a little off about all this, but you're just so happy to know your [ShortDesc of penis] is actually huge after all that it completely slips your mind. You feel a swell of confidence![otherwise]You feel a swell of confidence! Not only is your penis HUGE, [he of M][']s giving you something for free! WOW![end if] You give [him of M] your best dominant smirk and stand tall.";
			if the size of P > the openness of asshole, now the size of P is the openness of asshole;
			Summon P;
			Dignify 155 - the intelligence of the player * 5;
		FavourDown M;
		Bore M;
		DifficultyUp M by 1;
	otherwise if the player is female and the player is horny and the times-submitted of M > a random number between 3 and 4:[Wow, so merciful!]
		if asshole is actually occupied and the number of worn crotch covering clothing is 0:
			let V be a random off-stage vibrator;
			let C be a random chastity cage;
			if C is held by the player, now C is a random off-stage g-string;
			let W be a random off-stage wrist bond;
			say "[big he of M] raises [his of M] hand as if to strike you, but something seems to change slightly in [his of M] expression as [his of M] eyes pass over your crotch. [line break][speech style of M]'... This is about how often you get to cum, isn't it? I promise you will get to orgasm eventually, but unfortunately you still to have to earn it.'[roman type][line break][BigNameDesc of M] pulls out a [printed name of V], switching it on as [he of M] slides it into your [HoleDesc of M]. You immediately begin to feel the 'heat,' squirming with pleasure as [if C is chastity cage][he of M] places a [printed name of C] over your crotch[otherwise][he of M] pulls a [printed name of C] up your legs[end if]. [if W is clothing and the number of worn wrist bonds is 0]And as if that weren't enough, [he of M] pulls out a [printed name of W] and binds your wrists together behind your back. [line break][speech style of M]'Perhaps you'll have learned your lesson by the next time you cum.'[roman type][line break]";
			if the number of worn wrist bonds is 0:
				summon W locked;
				now W is wrist-bound-behind;
			summon V vaginally;
			summon C locked;
		otherwise:
			let P be a random off-stage sex toy;
			say "[big his of M] eyes pass over your crotch for a second time, and after a brief pause [his of M] expression softens. [line break][speech style of M]'... This is about how often you get to cum, isn't it? Looks like I'll have to show you there are worse ways of being pent up.[roman type][line break][BigNameDesc of M] pulls out a giant syringe, totally filled with [semen]. You immediately understand [his of M] intentions, but have no way of stopping [him of M] as [he of M] slides it into your asshole and pushes in the plunger, emptying its contents into your unprotected hole. And as if that weren't enough, [he of M] pulls out a [printed name of P] and pushes it into your now thoroughly creampied hole. [line break][speech style of M]Perhaps you'll have learned your lesson by the time this comes out.[roman type][line break]";
			AssFill 5;
			if the size of P > the openness of asshole, now the size of P is the openness of asshole;
			Summon P;
		FavourDown M;
		Bore M;
		DifficultyUp M by 1;
	otherwise:
		compute sissy punishment of M;
		unless M is interested, now M is interested;
		now another-turn-flavour is the substituted form of "[BigFuckerDesc of M] holds you in place.";
		now another-turn is 1.

To say angry punishment insult of (M - dominatrix):
	say "[first custom style]'Maybe it's because you remembered who your hole[if the player is female]s belong[otherwise] belongs[end if] to?'[roman type][line break]".

To say angry punishment accessory confiscation of (M - dominatrix):
	say "[first custom style]'I will give this back when I think you can remember on your own.'[roman type][line break]".

To say angry punishment clothing destruction of (M - dominatrix) on (C - a clothing):
	say "[first custom style]'[if C is ass covering]Will you remember now, slave?'[otherwise]Or maybe it's because you remembered you don't deserve clothes?'[end if][roman type][line break]".

To say AfterDominationComment (N - a number) of (M - dominatrix):
	if N is 1, say "[first custom style]'[one of]I hope you are sa-... s-satisfied, [if the player is male]sir[otherwise]ma'am[end if].'[or]T-thank you for that, [if the player is male]sir[otherwise]ma'am[end if]...'[at random][roman type][line break]";
	if N is 2, say "[first custom style]'[one of]I admit, you-... you're not... you aren't submissive. Sorry. [if the player is male]Sir[otherwise]Ma'am[end if].[or]I won't try to make you my slave anymore. [if the player is male]S-sir[otherwise]Ma'am[end if].'[at random][roman type][line break]";
	if N is 3, say "[first custom style]'[one of]This... This, doesn't prove anything, slave! Get out of here!'[or]It won't b-be that easy, slave. You're the only submissive here!'[at random][roman type][line break]";
	if N is 4, say "[first custom style]'[one of]If you're finished slave, I will retrieve you when it is time for your punishment.'[or]Cute. I'll fetch you when it's time for your punishment, slave.'[at random][roman type][line break]";

To compute successful dominance of (M - dominatrix):
	if the player is male and player-fucker is penis, check virginity with M;
	if player-fucking is not DOMINANT-SHAMEFUL:
		DominateUp M;
		DifficultyUp M by 2;
		say "[line break]You feel more [if the player is male]manly[otherwise]dominant[end if]!";
	otherwise:
		TimesSubmittedUp M by 1;
		say "[line break]You feel so humiliated...".

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

To IdentifiablePosterReaction of (M - dominatrix):
	say "[BigNameDesc of M] looks at you, blinks, then looks back to the poster. Upon realising that it is you, [he of M] can't help but smile widely.";
	say "You turn bright red with shame.";
	humiliate the lewdness of a random poster in the location of the player * 2.

To UnidentifiablePosterReaction of (M - dominatrix):
	say "[speech style of M]'Now that's is one dirty slut in need of discipline.'[roman type][line break]";
	say "You turn slightly red but don't say a word.";
	humiliate the lewdness of a random poster in the location of the player / 2.

Section 1 - Greeting

[we don't make greetings to account for a single patron, because the player's mouth will be full. : ^)]

To say FirstResponse of (M - dominatrix):
	say "[speech style of M]'What do you want?'[roman type][line break]".

To say RepeatResponse of (M - dominatrix):
	if M is unfriendly:
		say "[speech style of M]'[one of]When I make somebody my pet, it's final. Sorry.'[or]You're about to piss me off.'[or]Keep running your mouth and I'll give you a reason to keep whining.'[or]I don't really care what you have to say, to be honest. So shut up.'[or]Phhbt. Like anybody cares what you want.'[or]I'm sorry you don't like it, but when I decide you're my slut... you never stop being one.'[or]Stop fighting it. You're my fucktoy and you belong to me. [if player is not prone]Now, are you going to get on your knees, or am I going to force you[otherwise]Now, are you going to remember that, or do I need to whip it into your back[end if]?'[or]You belong to me. If you don't want to get fucked again, I don't really care.'[or]You're mine. When I start caring what you think, I'll tell you. Until then, shut up.'[at random][roman type][line break]";
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
				say "[first custom style]'[one of]Wait a minute, I'm not your slave!'[or]You can't just say I'm your slave and be done!'[or]Hey, wait! I'm not a slave, you know!'[or]I'm not a slave, you can't just do whatever you want!'[or]I'm not your slave! You can't just...'[at random][roman type][line break]";;
			otherwise:
				say "[second custom style]'[one of]Can't you hurry?'[or]You made your point! Now hurry up!'[or]Come on, why are you taking so long? It's not like you can cum with that thing.'[or]Hurry uuuuup!'[at random][roman type][line break]";
		say NonEnthusiasmResponse of M.

To say FriendlyPartnerGreeting to (M - dominatrix):
	if the player is a pervert:
		let P be a random patron in the location of the player;
		if P is patron:[only happens during nonfriendly sex, so we only account for the masochist case]
			say "[second custom style]'[one of]Please punish me!'[or]Jizz on my face! I want all of you to fucking cover me...'[or]Show me my place! I've been a bad girl...'[or]Take me down a peg. I've been so bad...'[or]YES! PUNISH ME!'[at random][roman type][line break]";
		otherwise:
			if the player is feeling submissive:[player is a masochist]
				say "[second custom style]'[one of]Yes! Fuck me, [master of M]!'[or]Yes, [master of M]! Harder, Harder![or]Oooh! Fuuuck!'[or]Yes! Use me, [master of M]!'[or]Use me!'[at random][roman type][line break]";
			otherwise:
				say "[second custom style]'[one of]Am I doing a good job?'[or]I'm being a good slave, aren't I?'[at random][roman type]";
		Arouse 100;
		say EnthusiasmResponse of M;
	otherwise:
		if the player is feeling dominant:
			say "[first custom style]'[one of]This is confidential, right?'[or]You won't tell anyone about this, right?'[or]You'll keep this a secret, right?'[at random][roman type]";
		otherwise:
			say "[variable custom style]'[one of]Just so you know, I don't exactly want to become a slave permanently.'[or]And remember, you can't tell ANYONE about this...'[or]This is just a business transaction! N-nothing more, ok?'[at random][roman type]";
		say NonEnthusiasmResponse of M.

To say MildAnnoyedResponse of (M - dominatrix):
	let P be a random patron in the location of M;
	if P is monster:
		say "[speech style of M]'[one of]Hear that? [if the player is a sissy]This little sissy STILL doesn't know her place[otherwise if the player is presenting as male]Looks like he needs you to show him how real men act[otherwise]She STILL doesn't know her place[end if]. Be messy, boys!'[or]Shut up slut, you'll be prettier after they're done anyway.'[or]Maybe next time I ask you to do something, you'll do it, eh?'[or]Well if they can't cum on your face, where are they supposed to cum? On mine? Ahahaha!'[or]Be glad I'm on this side, then, slut.'[or]We all know your trashy ass loves every second of this.'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Shut up. You're annoying me.'[or]Yeah, sure, whatever you said. Now shut up.'[or]Whatever. Be quiet.'[at random][roman type][line break]".

To say UnAnnoyedResponse of (M - dominatrix):
	let P be a random patron in the location of M;
	if P is monster, say "[speech style of M]'[one of]So you wanted this all along, did you? Can't say I'm surprised.'[or]Ha, what a trashy slut. Give her what she wants, boys.[or]You're desperate to show these men what a naughty minx looks like, eh?[or]There's no punishing sluts like you, is there?[or]Surround you with dongs and suddenly you're willing to follow orders. What a dirty slut.'[or]Just like a slave to get turned on by getting degraded in front of an audience.'[at random][roman type][line break]";
	otherwise say "[speech style of M]'[one of]Sluts say the darndest things.'[or]Ha, licking my boot has given you quite the trashy tongue.'[or]Shut up. I don't care if you like getting fucked or not, because I'm going to do it anyway.'[or]I'm always in the mood to use my favourite fuckhole.'[or]I don't remember telling you it was ok to address me, but I can't resist a slut who knows her place.'[at random][roman type][line break]".

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

To compute answer of (M - dominatrix) to (Q - a number):
	if M is not actually interested:
		say UnGreeted of M;
	otherwise:
		compute raw answer of M to Q;
	if the questioned of M <= the mild-annoyance threshold of M:
		HeavyConvoFatigue M;
	otherwise:
		SlightConvoFatigue M;
		if the questioned of M > the mild-annoyance threshold of M:
			say AnnoyedWarn of M;

To say WhereAnswer of (M - dominatrix):
	if M is unfriendly:
		say "[speech style of M]'You're in my person dungeon, bitch!'[roman type]";
	otherwise:
		say "[speech style of M]'You're in my personal dungeon, and if you know what's good for you, you'll leave before I get pissed off!'[roman type][line break]".

To say WhoAnswer of (M - dominatrix):
	if M is unfriendly:
		say "[speech style of M]'[one of]I'm your new mistress, bitch, now shut your fucking mouth.'[or]Pretty simple. I'm your Mistress, and you're my new bitch.'[at random][roman type][line break]";
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

To say UnGreeted of (M - dominatrix):
	say "[speech style of M]'Stop wasting my time, [please].'[roman type][line break]".

[I think it makes sense to have her be a little more standoffish than everyone else.]
To compute annoyance of (M - dominatrix):
	if M is actually interested:
		say "[speech style of M]'Stop wasting my time, [please].'[roman type][line break]";
	otherwise if M is unfriendly:
		say "[speech style of M]'Silence, slave. Submit to me!'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] ignores your question.";

To compute teaching of (M - dominatrix):
	say "[speech style of M]'When someone's topping you, it's up to them how hard you get fucked, and for how long. But, if you aren't gagged, it's never a bad idea to admit your own inferiority and plead for mercy. Sometimes it will help, sometimes it won't, but it definitely turns me on when a sub knows their place!'[roman type][line break]";
	teach begging for mercy;
	HeavyConvoFatigue M.


Section 3 - Drink Requesting

To compute talk option (N - 3) to (M - dominatrix):
	let B be a random number from 1 to 4;
	if B is 1 and the player is seductive and M is raunchy:
		now M is interested;
		say "[BimboSeduce of M]";
		say "[BimboSeduced of M]";
	otherwise:
		say "[DrinkRequest of M]";
		if M is unintelligent:
			say "It doesn't look like [NameDesc of M] speaks English.";
		otherwise if M is not actually interested:
			say "[BigNameDesc of M] doesn't seem to realise you're talking to [him of M].";
		otherwise if M is friendly:
			compute friendly drink of M;
		otherwise if M is unfriendly:
			compute unfriendly drink of M.

To compute unfriendly drink of (M - dominatrix):
	if M is uninterested:
		say "[speech style of M]'You'll get no hospitality from me, [bitch]!'[roman type][line break]";
		now the boredom of M is 0;
	otherwise:
		say "[speech style of M]'You'll get no hospitality from me, [bitch]!'[roman type][line break]".

To compute friendly drink of (M - dominatrix):
	say "[speech style of M]'You'll get no hospitality from me.'[roman type][line break]".


Dominatrix ends here.

