Patron by Monster begins here.

A patron is a kind of monster. A patron is usually intelligent. A patron is male. A patron can be pissed off. A patron is usually not pissed off. The difficulty of a patron is usually 3. A patron has an object called wanking-target.

Definition: a patron (called M) is dark skinned:
	decide yes.

Definition: a patron (called M) is raunchy:
	decide yes.

The printed name of patron is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]patron[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The description of patron is usually "[PatronDesc]".
Figure of white inexperienced patron is the file "patron1.png".
Figure of black inexperienced patron is the file "patron2.png".
Figure of white experienced patron is the file "patron3.png".
Figure of black experienced patron is the file "patron4.png".
Figure of white gross patron is the file "patron5.png".
Figure of black gross patron is the file "patron6.png".
Figure of white dickhead patron is the file "patron7.png".
Figure of black dickhead patron is the file "patron8.png".

An inexperienced patron is a kind of patron.
An eager patron is a kind of inexperienced patron. There is 1 eager patron. An impatient patron is a kind of inexperienced patron. There is 1 impatient patron.
The printed name of eager patron is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]eager patron[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of eager patron is "epa".
The printed name of impatient patron is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]impatient patron[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of impatient patron is "ipa".

An experienced patron is a kind of patron.
A well dressed patron is a kind of experienced patron. There is 1 well dressed patron. A suited patron is a kind of experienced patron. There is 1 suited patron.
The printed name of well dressed patron is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]well dressed patron[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of well dressed patron is "wdp".
The printed name of suited patron is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]suited patron[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of suited patron is "spa".

A gross patron is a kind of patron.
A chubby patron is a kind of gross patron. There is 1 chubby patron. A hairy patron is a kind of gross patron. There is 1 hairy patron.
The printed name of chubby patron is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]chubby patron[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of chubby patron is "cpa".
The printed name of hairy patron is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]hairy patron[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of hairy patron is "hpa".
To decide which number is the girth of (M - a gross patron):
	decide on 2.

A dickhead patron is a kind of patron.
A menacing patron is a kind of dickhead patron. There is 1 menacing patron. A sneering patron is a kind of dickhead patron. There is 1 sneering patron.
The printed name of menacing patron is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]menacing patron[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of menacing patron is "mpa".
The printed name of sneering patron is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]sneering patron[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of sneering patron is "snp".
To decide which number is the girth of (M - a dickhead patron):
	decide on 4.

To say PatronDesc:
	if images visible is 1:
		if item described is inexperienced patron:
			if item described is eager patron or interracial fetish is 1, display figure of black inexperienced patron;
			otherwise display figure of white inexperienced patron;
		otherwise if item described is experienced patron:
			if item described is well dressed patron or interracial fetish is 1, display figure of black experienced patron;
			otherwise display figure of white experienced patron;
		otherwise if item described is gross patron:
			if item described is hairy patron or interracial fetish is 1, display figure of black gross patron;
			otherwise display figure of white gross patron;
		otherwise if item described is dickhead patron:
			if item described is menacing patron or interracial fetish is 1, display figure of black dickhead patron;
			otherwise display figure of white dickhead patron;
	if diaper quest is 0, say "A man, naked from the waist down, who is [if the girth of item described < 3]less than [otherwise if the girth of item described > 3]more than [end if]averagely endowed for an adult male. He is clearly expecting some paid company tonight. ";
	if item described is inexperienced patron, say "This particular guy looks like he's in his early twenties, and is very over-eager.[line break][if item described is penetrating a body part and the sex addiction of the player < 7][line break][first custom style]Well I hope that means he'll cum quickly...[otherwise if item described is penetrating a body part][line break][variable custom style]He's clearly nowhere near as experienced as me![otherwise][variable custom style]Maybe he's a virgin?[end if][roman type][line break]";
	if item described is gross patron, say "This particular man is quite overweight, his hairy belly hangs out from his shirt and his gross [if item described is hairy patron]hairy[otherwise]flabby[end if] chest is fully visible.[line break][if item described is penetrating a body part and the sex addiction of the player < 7][line break][first custom style]Oh my god, he's so gross![otherwise if the sex addiction of the player < 7][line break][variable custom style]I do NOT want to go anywhere near his dick![otherwise if the humiliation of the player < 27500][variable custom style]He's pretty gross.[otherwise][variable custom style]He's disgusting, I'm disgusting. We make a perfect match.[end if][roman type][line break]";
	if item described is experienced patron:
		if diaper quest is 1, say "This man is wearing a smart suit and has quite a serious mature face. [if the sex addiction of the player < 7][line break][first custom style][one of]He isn't thinking that this is going to get sexual, is he?[or]Not again![stopping][otherwise if the sex addiction of the player > 13][line break][second custom style][one of]I hope he gives obedient babies their cummies![or]Yay, Daddy's home![stopping][otherwise][line break][variable custom style]Something tells me he's going to be in charge...[end if][roman type][line break]";
		otherwise say "This particular man is wearing a smart suit and he doesn't stare at you like you might expect, seeming only mildly interested. You guess that he's been with a lot of whores in his time, and just wants a body to use to get his rocks off.[line break][if the sex addiction of the player < 7][line break][first custom style]Trust me, I'm not interested in you either, buddy.[otherwise if the humiliation of the player > 27500][line break][variable custom style]Well he's right, I'm just an object to be used.[otherwise if the bimbo of the player > 10][line break][second custom style]He certainly knows how to frustrate an attention whore like me![otherwise][variable custom style]The least he could do is at least appreciate my beauty![end if][roman type][line break]";
	if item described is dickhead patron, say "This particular man stares at you with narrow eyes. It looks like he's both aroused and disgusted by you.[line break][if the sex addiction of the player < 7][line break][first custom style]I'm just disgusted.[otherwise if the humiliation of the player > 30500][line break][variable custom style]I'm disgusted by me too.[otherwise if the sex addiction of the player > 12][line break][second custom style]I'm just aroused![otherwise][variable custom style]The feeling is mutual![end if][roman type][line break]".

To set up (M - a patron):
	reset M;
	now the monstersetup of M is 1;
	now M is not pissed off; [In case the patron was angry during his last session with the player. He's calmed down since then.]
	now the difficulty of M is 3;
	now the health of M is the maxhealth of M;
	now the wanking-target of M is nothing.

To decide which number is the girth of (M - a patron):
	decide on 3.

To decide which number is the semen load of (M - a patron):
	decide on 2.

To say PregFlav of (M - a patron):
	say "[speech style of M]'Oh my god, I can't believe it, I'm a daddy!'[roman type][line break]".

To say PregFlav of (M - an inexperienced patron):
	say "[speech style of M]'Oh my god, it's a baby [one of]girl[or]boy[purely at random]!  You were my first, and now you've given birth to my first kid... I'll never forget you.'[roman type][line break]".

To say PregFlav of (M - an experienced patron):
	say "[speech style of M]'Ugh, not again, I can't believe I got another hooker pregnant. You don't look like you're really ready to raise a child, so I'll take responsibility. Don't bother coming to look for us, we don't need you in our lives.'[roman type][line break]".

To say PregFlav of (M - a gross patron):
	say "[speech style of M]'Yikes, I didn't really plan for this to happen. I guess I should wear a rubber in the future. I guess I'll take her home, then. If you want to join us after you've finished working here, we'll be waiting. Come to daddy now, little one.'[roman type][line break]".

To say PregFlav of (M - a dickhead patron):
	say "[speech style of M]'Fucking hell, when I said I was going to get you pregnant I didn't think it would actually happen. I guess that makes this pretty ironic, huh?  Oh, don't look at me like that, you weren't on protection either. FINE, I'll take responsibility for it. Fucking useless bitch.'[roman type][line break]".

To say PregGrowth of (M - a patron):
	say "[one of]a hotel brothel[or]the[stopping] patron's [child]".

To compute labour to (M - a patron):
	let C be the children of the player;
	if the player is in the hotel:
		compute pregnancy clothing displacement;
		say "[PregFlav]A human head pushes its way out of your cunt, agonisingly slowly and painfully. Finally the head has passed through, and after a final push at the shoulders, the birthing is complete. You pick your child up off the floor and start to cradle it in your arms. The [father] appears almost as if on cue!  [PregFlav of the father]Severing the umbilical cord, he pulls the baby from your hands, wraps it in a soft blanket and then carries it away. [line break][variable custom style][if the bimbo of the player < 8]That is definitely for the best.[otherwise if the bimbo of the player < 14]I guess I don't really have anywhere to raises a baby in here, anyway.[otherwise]Oh good, that means I can busy myself with finding a new man to breed me again![end if][roman type][line break]";
	otherwise:
		Delay Labour;
	if C > the children of the player: [If labour is delayed, the real value is reduced by one, so we just check to see if the values are different and fix it if they are.]
		increase C by 1;
		now the children of the player is C;
	otherwise: [If labour wasn't delayed, C is unchanged, so the birth was successful.]
		compute fatherhood to M.

To compute fatherhood to (M - a patron):
	now the father is not interested;
	now the father is not penetrating asshole;
	now the father is not penetrating vagina;
	now the father is not grabbing the player.

Definition: a patron (called M) is human:
	decide yes.

To check motion of (P - a patron):
	if the number of monsters in the location of the player is the number of patrons in the location of the player:[should fix bugs with the dominatrix and the wrestler]
		if P is penetrating a body part:
			dislodge P;
		compute motion of P;
		now P is moved;
	otherwise:
		do nothing.

Part 1 - Misc Flavour

To compute diaper mess reaction of (M - a patron):
	if diaper quest is 1:
		say "The [M] [one of]visibly recoils[or]cries out with shock[or]steps back in horror[or]yells with surprise[in random order]. [if there is a barrier in the location of the player][line break][speech style of M]'[one of]Yuck!  You're even more gross than I expected from a baby slave. Do you have no shame?!'[or]What the hell?  This wasn't supposed to happen. Can you really not control yourself?!'[in random order][roman type][line break][end if][line break]";
	otherwise:
		say "The [M] [one of]visibly recoils[or]cries out with shock[or]steps back in horror[or]yells with surprise[in random order]. [if there is a barrier in the location of the player][line break][speech style of M]'[one of]Woah, this is not what I wanted!!!  Too far!'[or]What the hell?  This isn't what I'm paying for!  Oh god, that smell!'[or]What the fuck are you doing?! Yuck, stop!!!'[or]Is this some kind of prank?  That stinks!'[or]Nope, sorry, way too far for me. I'm out.'[or]Nope, nope nope nope. This is not my scene. No thank you!'[in random order][roman type][line break][end if][line break]";
		say "The [M] [if M is penetrating an orifice]pulls out and [end if]leaves in a hurry.";
		destroy M;
	humiliate 400.

To compute (M - a demon lord) stomping (N - a patron):
	if M is in the location of the player, say "[M] roars at the [N].[line break][speech style of M]'GET OUT OF MY WAY[one of], MORTAL[or][stopping]!'[roman type][line break]The [N] doesn't need telling twice - [he of N] runs out the room as fast as [his of N] legs can carry [him of N]!";
	otherwise say "You hear a man's terrified whimper and fast running footsteps from somewhere else in the hotel.";
	destroy N.


Part 2 - Perception

Definition: a patron (called M) is uniquely unfriendly:
	unless M is the father, decide yes;
	decide no.

To check perception of (M - a patron):
	if M is uninterested and M is aware and there is a HotelBedPatrons in the location of M:
		now M is interested;
		now the last-tripped of M is 0;
		now the last-interaction of M is 0;
		if M is the father:
			calm M;
			say "The [M] notices you![line break]The [M] seems to be waiting for something..."; [Waiting for you to give birth to their baby]
		otherwise if the scared of M > 0:
			say "The [M] notices you immediately and starts to run away!";
		otherwise:
			compute correct perception of M;
		if M is interested:
			increase the times-met of M by 1. [For patrons, we don't reset their chosen orifice to nothing.]

To compute the orifice choosing of (M - a patron):
	if debugmode is 1, say "The list of actual target body parts are: [list of actual target body parts].";
	if the chosen-orifice of current-monster is nothing or the chosen-orifice of current-monster is not an actual target, now the chosen-orifice of current-monster is a random actual target body part.

To compute perception of (M - a patron):
	now M is interested;
	anger M;
	now the sex-length of M is a random number between 4 and 5;
	now the last-interaction of M is 1; [The patron is expectant, which allows WaitingFlav flavour to trigger.]
	now the chosen-orifice of M is nothing;
	now the chosen-orifice of M is a random actual target body part;
	if M is inexperienced patron, decrease the sex-length of M by 2;
	say "The [M] notices you[if the player is sluttily dressed].[otherwise]![end if]"; [The output for clothing humiliation takes place within the 'sluttily dressed' check.]
	if the class of the player is living sex doll:
		say "[speech style of M]'A sex doll!  Just what I need to satisfy my urges. Come here!'[roman type][line break]";
	otherwise if M is mating:
		say "[speech style of M]'Hey I know you, you're the whore I creampied earlier. I hope you didn't get knocked up, did you?[if the player is flying][line break]And what are you doing up there?!'[otherwise]'[end if][roman type][line break]";
	if the chosen-orifice of M is nothing:
		say "[speech style of M]'Hmm, looks like you're a little tied up right now. [if the number of patrons in the location of the player > 1]We'll[otherwise]I'll[end if] come back later.'[roman type][line break]The [if the number of patrons in the location of the player > 1]guys all leave the way they[otherwise]patron leaves the way he[end if] came.";
		repeat with N running through patrons in the location of the player:
			destroy N;
	otherwise if the number of patrons in the location of the player > 1:
		say "[speech style of M]'[one of]Me first!'[or]We're going to RUIN you!'[or]How many can you take at a time?'[or]I bet you have gangbangs all the time, don't you?'[or]This slut looks like she can handle us just fine.'[or]You're getting paid well, so you better make us all cum.'[or]I'm not getting sloppy seconds.'[or][if the number of patrons in the location of the player is 2]Ever been double penetrated, slut?'[otherwise]Ever been made [']airtight['] before, slut?'[end if][or][if the number of patrons in the location of the player is 2]This is the best birthday present ever, bro!'[otherwise]This is the best stag night ever.'[end if][or]I've been saving my cum up for weeks for this party.'[or]This is going to be a lot of fun.'[or]You're going to look like a bukkake porn star by the time we're done!'[or]Last one to cum loses the bet!'[or]I wonder if she'll faint before we're satisfied?'[in random order][roman type][line break]";
		now the chosen-orifice of M is nothing; [We will allow the patrons to choose depending on what's available at the time]
	otherwise if M is inexperienced patron:
		say "[speech style of M]'[if the chosen-orifice of M is a fuckhole]Get on your knees [slut], I wanna fuck!'[otherwise]Get over here and suck my [manly-penis], [slut]!'[end if][roman type][line break]";
	otherwise if M is gross patron:
		say "[speech style of M]'[if the chosen-orifice of M is asshole]How much does anal cost?'[otherwise if the chosen-orifice of M is vagina]How much do you charge for bareback sex?'[otherwise]How much for a blowjob?'[end if][roman type][line break]";
	otherwise if M is experienced patron:
		say "[speech style of M]'[if the chosen-orifice of M is asshole]You're going to let me fuck your asshole today.'[otherwise if the chosen-orifice of M is vagina]Turn around and show me your cunt.'[otherwise]Open, and suck it.'[end if][roman type][line break]";
	otherwise:
		say "[speech style of M]'[if the chosen-orifice of M is asshole]How many men have already creamed up your asshole today, cunt?  Well, I'm next.'[otherwise if the chosen-orifice of M is vagina and pregnancy fetish + the pregnancy of the player is 1]I think I'm going to try and get you pregnant today.'[otherwise if the chosen-orifice of M is vagina]You're not going to be able to walk properly after I'm done with your cunt.'[otherwise]You're going to drink my cum, and you're going to thank me for it afterwards.'[end if][roman type][line break]".

To say CondomRejectFlav of (M - a dickhead patron):
	say "[if chosen-orifice of M is vagina and pregnancy fetish + the pregnancy of the player is 1][line break][speech style of M]'Didn[']t you hear me? I[']m gonna get you pregnant.'[roman type][line break]Looks like there[']s no way out of a creampie...[otherwise][line break][speech style of M]'No thanks.'[roman type][line break]Looks like [he of M]'s going in bare...".

To compute DQ perception of (M - a patron):
	now M is interested;
	anger M;
	say "The [M] notices you. ";
	if there are worn messed knickers:
		say "[speech style of M]'Oh gosh, that smell!  Err, I'll come back later.'[roman type][line break]The [M] leaves the way he came.";
		destroy M;
	otherwise:
		say "[speech style of M]'[one of]I assume that this is the right room, and you are the adult baby slave for hire, yes?  Good.'[or]Daddy's home, honey!  Are you ready to play?'[stopping][roman type][line break]".


Part 3 - Motion

[When the player leaves the room, the patrons disappear.]

To compute motion of (M - a patron):
	if M is not in the location of the player, destroy M.

To compute (M - a patron) seeking (D - a direction):
	if M is not in the location of the player, destroy M.

Part 4 - Combat

To compute (M - a patron) protecting against (X - a monster):
	do nothing.

To decide which number is the condom resistance of (M - a dickhead patron):
	decide on 1.

To compute kneeling reaction of (M - a patron):
	if the number of patrons in the location of the player is 1, say "The [M] grins. [line break][speech style of M]'[one of]That's more like it.'[or]That's what I thought.'[or]Now you're going to get it.'[or]Time to get what I came here for.'[or]Where you belong.'[in random order][roman type][line break]";
	humiliate 75.

To compute delay of (M - a patron):
	compute attack of M. [Patrons do not wait.]

To say waitingflav of (M - a patron):
	if the player is not able to speak:
		say "[one of][line break][variable custom style][muffled sounds][roman type][line break][or]You look up at the [if the number of patrons in the location of the player is 1][M][otherwise]men[end if] silently.[at random]";
	otherwise if diaper quest is 1:
		if the diaper addiction of the player < 7:
			say "[one of]You stare up at the [M], still in shock[or]You sigh, having lost any real hope of negotiation being successful[stopping]. [if the player is able to speak][line break][variable custom style]'[one of]I'm sorry, WHAT?  What is this place??  Do you think I'm some kind of diaper fetishist?'[or]There's been some kind of mistake, I'm not the baby you're looking for!'[or]Look, can't we talk about this first?  There must be another way...'[stopping][roman type][line break]Unsurprisingly, he completely ignores you.[end if]";
		otherwise if the diaper addiction of the player < 12:
			say "You [one of]cough nervously[or]squirm uncomfortably[or]shuffle awkwardly[in random order]. [line break][variable custom style][if the player is able to speak]'[one of]Please be gentle, okay?'[or]You're not going to be mean to me, are you?'[or]If I play along, do you promise to be kind?'[or]Alright, if you're paying, let's do this.'[in random order][otherwise][gag sounds][end if][roman type][line break].";
		otherwise:
			say "You [one of]mewl playfully[or]grin gleefully[or]bounce up and down on the bed[or]squeal with delight[in random order]. [line break][variable custom style][if the player is able to speak]'[one of]Ooh yay, this should be fun!'[or]'Ooh yay, are we gonna play a fun game?'[or]I'm your little baby, do what you want with me!  Tee-hee!'[in random order][otherwise][gag sounds][end if][roman type][line break]";
	otherwise if the number of patrons in the location of the player is 1:
		if the sex addiction of the player < 7:
			say "[one of]You stare up at the [M], still in shock. [or]You sigh, having lost any real hope of negotiation being successful. [stopping][line break][variable custom style]'[one of]I'm sorry, WHAT?  What is this place??  Do you think I'm some kind of prostitute?'[or]There's been some kind of mistake, I'm not the whore you're looking for!'[or]Look, can't we talk about this first?  There must be another way...'[stopping][roman type][line break]Unsurprisingly, he completely ignores you.";
		otherwise if the sex addiction of the player < 12:
			if M is dickhead patron:
				say "[one of]You glare at the rude man. [or]You harrumph loudly. [at random][line break][variable custom style]'[one of]Look here, bozo. You fuck me, you pay me. No funny business, okay?'[or]Hey, treat me nicely, please?  I'm just trying to make an honest living here.'[or]Fuck you, jackass. I'll [if the chosen-orifice of M is face]suck you off[otherwise]fuck you[end if], but only because it's literally my job.'[in random order][roman type][line break]";
			otherwise if M is gross patron:
				say "[one of]You hesitantly reply. [or]You look at the barrier, and then back at the man. [at random][line break][variable custom style]'[one of]I guess I'll do it for one ring.'[or]I guess I should just be glad that you'll pay me at all...'[or]I guess I'll let you decide how much it's worth. Just please don't hurt me?'[in random order][roman type][line break]";
			otherwise:
				say "[one of]You stare up at the [M] nervously. [or]You look at the barrier, and then back at the man. [at random][line break][variable custom style]'[one of]You're going to be gentle with me, right?'[or]You're going to pay me after, right?'[or]But I don't have any condoms... Okay, just this once.'[in random order][roman type][line break]";
		otherwise:
			if M is dickhead patron:
				say "[one of]You mewl playfully. [or]You stick your tongue out playfully. [at random][line break][second custom style]'[one of]Whatever you say goes, Mister!'[or]Hey, I'm just a cheap whore. You get to treat me however you like, Mister!'[or]Ooh yes sir, I am good at following orders, sir. [if the chosen-orifice of M is face]Pleease can I have permission to suck on your tasty fuckstick and swallow your yummy [semen]?'[otherwise]Please use me like your own personal fucksleeve for as long as you like~'[end if][in random order][roman type][line break]";
			otherwise if M is inexperienced patron:
				say "[one of]You smile gently. [or]You giggle playfully. [at random][line break][second custom style]'[one of]Slow down kiddo, we've got all the time in the world. There's no rush, you can use me as you want.'[or]Whatever you say, kiddo. But take your time!  You've got all the time you want until you cum.'[in random order][roman type][line break]";
			otherwise if M is gross patron:
				say "[one of]You smile gently. [or]You giggle playfully. [at random][line break][second custom style]'[one of]If I didn't need the money, I'd be doing this for free.'[or]I don't like to think of it as payment, so much as a tip for a job well done.'[in random order][roman type][line break]";
			otherwise:
				say "[one of]You stare up at the [M] with a warm inviting smile. [or][if the chosen-orifice of M is face]You obediently get onto your knees and drool at the sight of his [manly-penis][otherwise]You obediently turn around and push your [HipDesc] into the air[end if]. [at random][line break][variable custom style]'[one of]Your wish is my command, honey.'[or]Honey, I was born to serve handsome [manly-penis]s like yours.'[or]I love a man that knows what he wants.'[in random order][roman type][line break]";
	otherwise if the sex addiction of the player < 6 + the number of patrons in the location of the player: [Multiple patrons!]
		say "[one of]You stare up at the men, in shock that there's [if the number of patrons in the location of the player is 2]more than one[otherwise]so many[end if]. [or]You yelp in fright, not expecting to have to service [if the number of patrons in the location of the player is 2]two at a time[otherwise]quite so many men at once[end if]. [stopping][line break][variable custom style]'[one of]Look, there's been a mistake, I've never serviced more than one patron at a time before...'[or]Oh come on, this is just too much for one person to handle, surely?!'[or]This cannot be happening...'[stopping][roman type][line break]Unsurprisingly, they completely ignore you.";
	otherwise if the sex addiction of the player < 14:
		say "[one of]You stare up at the men nervously. [or]You are paralysed by a mixture of excitement and hesitation. [at random][line break][variable custom style]'[one of]Hey, how do you guys feel about agreeing on a safe word?  No?  Oh well, it was worth a try...'[or]You're each going to pay me, right?  I'm not doing extra for free.'[or]I don't usually take this many customers at once you know. But just this once, I'll let it slide, as long as you're careful with me.'[line break]As if I really had a choice...[in random order][roman type][line break]";
	otherwise:
		say "[one of]You stare up at the men and beckon them invitingly with your finger. [or]You obediently turn around and push your [HipDesc] into the air, spanking it once for good measure. [at random][line break][variable custom style]'[one of]All aboard, gentlemen. Dinner is served.'[or]If I can [if the body soreness of the player < 8]walk[otherwise]even move[end if] by the time you're [if the number of patrons in the location of the player > 2]all[otherwise]both[end if]done, I'm going to be unimpressed.'[or]Yes, yes, this is more like it!  If I don't have [manly-penis]s in [if the player is male]both my holes[otherwise if the number of patrons in the location of the player is 2]two of my holes[otherwise]all my holes[end if] within the next five seconds I'm gonna be disappointed. Well come on, hurry up!!!'[in random order][roman type][line break]".

To say SexSubmissionFlav of (M - a patron):
	if diaper quest is 1:
		say "You [one of]lay still[or]don't resist[or]keep your legs spread[or]smile shyly[in random order] and [one of]let the patron get [his of M] money's worth[or]allow [him of M] to continue[or]allowing [him of M] to use you as a rag doll for [him of M] to enact [his of M] fantasies[in random order].";
	otherwise if the number of patrons penetrating a body part is 1:
		if M is penetrating face:
			say "[if the oral sex addiction of the player < 3][one of]You keep your body as still as you can, and reluctantly hold your mouth open. The [M] thrusts in and out at a slow but steady pace.[or]You take absolutely no pleasure in holding your mouth open and allowing the [M] to continue to use it as a masturbatory aid.[or]You remain silent and try to think about other things as the [M] continues to fuck your open mouth.[or]You try not to gag as the tip of the [M]'s [manly-penis] keeps prodding your tonsils.[or]You hesitantly allow your tongue to gently touch the underside of the [M]'s [manly-penis] as he slides in and out of your mouth.[in random order][otherwise if the oral sex addiction of the player < 7][one of]You whimper gently around the [M]'s [manly-penis] as he fucks your face.[or]You skilfully caress the [M]'s [manly-penis] with your tongue, telling yourself that it's to make sure this is over as quickly as possible.[or]You massage the head of the [M]'s [manly-penis] with your lips whilst milking his shaft with your hands. You know you're giving into what the game wants, but also at least this way it won't take too long for him to climax.[or]You take the [M] as deep into your mouth as you can manage without gagging. You watch him shiver with glee.[or]You form a perfect O with your lips around the [M]'s shaft and hold still in order to allow him to fuck your face steadily.[in random order][otherwise][one of]You move your head back and forth as fast as you can go, whilst massaging the [M]'s balls with your hand, trying to coax him to orgasm as powerfully as possible.[or]You guide the [M]'s hands to the back of your head, and encourage him to push your head back and forth as roughly as you can master. You love being treated this way![or]You hum gently around the [M]'s [manly-penis], trying to please him as much as possible.[or]You gobble down the [M]'s [manly-penis], as far down your throat as you can manage. You giggle happily around his member as you watch him shudder with pleasure.[or]You find yourself grinding your crotch against the bed in an attempt to stimulate yourself as you messily massage the [M]'s [manly-penis] with your tongue.[or]You maintain constant eye contact with the [M] as you pull his [manly-penis] out of your mouth for a moment, and stroke it passionately whilst forcing his entire scrotum into your mouth. You hum happily as you massage his balls with your tongue.[in random order][end if]";
		otherwise if M is penetrating a fuckhole:
			let F be a random fuckhole penetrated by M;
			say "[if the relevant sex addiction of M < 7][one of]You don't want to get any more sore than you already are, so you hold still and try and take it like a champ.[or]You don't want to anger the [M], so you just stay completely still and try to relax and let it happen.[or]You cry internally but remain silent and still, trying not to let the [M] see your pain.[or]You try not to make a sound as the [M] thrusts in and out of your poor [variable F].[or]You grip the bed-sheets as tightly as you can and grit your teeth, as you try to endure the fucking without crying.[in random order][otherwise if the relevant sex addiction of M < 14][one of]You relax your [variable F], convincing yourself that this is fine, because it's just a game.[or]You slightly hesitantly push back against the [M], trying to keep him happy.[or]You push your face into the pillow and groan gently. You know you're giving into what the game wants, but also at least this way it won't take too long for him to climax.[or]You find yourself quietly moaning with each thrust of the [M]'s [manly-penis] into your [variable F].[or]You allow the [M] to guide your hips with his hands, and soon you have fallen into a steady rhythm.[in random order][otherwise][one of]You sigh loudly and push back at the [M], encouraging him to keep going.[or]You guide the [M]'s hands to your [ShortDesc of hair], and encourage him to roughly hold your head up like this. You love being treated this way![or]You moan lewdly as the [M]'s [manly-penis] continues to roughly plunder your [variable F].[or]You hold yourself still and try to unclench your opening as much as possible, to make sure the [M] can get balls deep inside.[or]You find yourself gyrating your hips sluttily in an attempt to please the [M] even further as he plows his [manly-penis] in and out of your [variable F].[or]You pull forward until just the tiniest bit of the tip of the [M]'s [manly-penis] is still inside your [variable F], then suddenly throw your hips backwards so that the entire length of the [M]'s [manly-penis] brutally rushes inside. From the sound that the [M] makes in reaction, you guess that he almost came instantly from the sensation. You smirk inwardly.[in random order][end if]";
	otherwise if the number of patrons penetrating a body part is 2:
		if there is a patron penetrating vagina and there is a patron penetrating asshole:
			say "[if the relevant sex addiction of M < 7][one of]You find yourself stunned into submission as the [M] and his friend use both your [vagina] and [asshole] at the same time.[or]You don't dare more an inch as the intense feelings of being powerfully plowed in both the [vagina] and [asshole] at the same time threaten to overwhelm you.[or]You overcome your temptation to lash out against the [M] and his friend, and instead hold perfectly still and pray that your double penetration session will be over soon.[or]Your mind reels as you try to deal with the intensity of having both your lower orifices fucked at the same time. As one pushes in the other pulls out, giving you absolutely no time to mentally steel yourself for the next thrusts.[or]Your legs twitch uncontrollably as you try to hold your hips as still as possible in order to not get seriously injured from this brutal double penetration.[in random order][otherwise if the relevant sex addiction of M < 14][one of]Partially terrified of getting hurt and partially from pleasure, you find yourself not resisting the [M] and his friend as they make good use of both of your fuckholes, with no evident concern for your feelings.[or]You slightly hesitantly push back against the [M] and his friend, trying to keep them happy.[or]You push your face into the pillow and groan loudly. You know you're giving into what the game wants, but also at least this way it won't take too long for them to climax.[or]You find yourself lewdly yelping with each thrust of the [M] and his friend's [manly-penis]s into your [vagina] and [asshole].[or]You allow the [M] and his friend to guide your hips with their hands, and soon you have fallen into a steady rhythm.[in random order][otherwise][one of]You mewl lewdly and push back against the [M] and his friend, encouraging them to keep going.[or]You squeal submissively as you are overpowered and doubly bred by the two strong men. You love being treated this way![or]You moan lewdly as the [M] and his friend's [manly-penis]s continue to roughly plunder your fuckholes.[or]You let out a guttural moan of pure bliss as the [M] and his friend suddenly change their rhythm, pushing both of their [manly-penis]s into you as deep as they can go at the same time. You feel impossibly full, and you love it.[or]You find yourself vocally encouraging the patrons as they destroy your holes and frazzle your brain with their brutal fucking.[or]You skilfully move your ass up and down in rhythm with the men, to assist their alternative fucking. One [manly-penis] smoothly slides into your [vagina] as the other slides out of your [asshole], and then vice versa. You shiver with pleasure.[in random order][end if]";
		otherwise if there is a patron penetrating a fuckhole and there is a patron penetrating face:
			let F be a random fuckhole penetrated by a patron;
			say "[if the relevant sex addiction of M < 7][one of]You hold onto the man's thighs in front of you to try and steady yourself as he spit-roasts you with his friend.[or]You try as best as you can to just relax and let it be over soon. You frown in disgust as the [M] high fives his friend over your back.[or]You try to grunt in frustration at the [manly-penis] firmly lodged in your [variable F] but it ends up sounding like a sexual moan around the [manly-penis] in your mouth.[or]You whimper and hold still, trying to decide which is worse, the feeling of the [manly-penis] in your [variable F] or the taste of the [manly-penis] in your mouth.[or]You reluctantly allow yourself to fall into the rhythm of the two men fucking you from either end.[in random order][otherwise if the relevant sex addiction of M < 14][one of]Partially terrified of getting hurt and partially from pleasure, you find yourself not resisting the [M] and his friend as they make good use of your mouth and [variable F], with no evident concern for your feelings.[or]You slightly hesitantly push back against the [M] and his friend, trying to keep them happy.[or]You grip the bed-sheets tightly and groan loudly around the [manly-penis] in your mouth. You know you're giving into what the game wants, but also at least this way it won't take too long for them to climax.[or]You find yourself lewdly yelping with each thrust of the [manly-penis] in your [variable F], which seems to be stimulating the [manly-penis] in your mouth even more, as you watch the patron shiver with glee.[or]You allow the [M] and his friend to guide your hips and shoulders with their hands, and soon you have fallen into a steady rhythm.[in random order][otherwise][one of]You mewl lewdly around the [manly-penis] in your mouth and push back against the [manly-penis] in your [variable F], encouraging them to keep going.[or]You make sure to gag loudly as your face is pushed even deeper onto the man's [manly-penis] so that the [M] and his friend know just how thoroughly they are overpowering and dominating you. You love being treated this way![or]You caress the balls of the man in front of you lovingly with your hands, whilst pushing back against the [manly-penis] in your [variable F] with glee.[or]You let out a guttural moan of pure bliss as the [M] and his friend suddenly change their rhythm, pushing both of their [manly-penis]s into you as deep as they can go at the same time. You feel completely impaled between the two gents, and you love it.[or]Your eyes roll into the back of your head as you lose yourself in the pleasure of being sandwiched between two delicious [manly-penis]s.[or]If you weren't so busy on giving the man in front of you the blowjob of his life, you would be grinning from ear to ear in bliss thanks to the powerful, steady fucking of the man behind you.[in random order][end if]";
		otherwise:
			say "You don't resist as the patrons use your body as a fucktoy."; [should never happen]
	otherwise:
		if there is a patron penetrating vagina and there is a patron penetrating asshole and there is a patron penetrating face:
			say "[if the relevant sex addiction of M < 7][one of]You hold onto the man's thighs in front of you to try and steady yourself to avoid gagging as his two friends thrust energetically into you from behind.[or]You frown in disgust as the [M] high fives his two friends as they use you.[or]You try to grunt in frustration at the [manly-penis]s firmly lodged in your [vagina] and [asshole] but it ends up sounding like a sexual moan around the [manly-penis] in your mouth.[or]You whimper and hold still, trying to decide which is worse, the feeling of the [manly-penis] in your [vagina], the stretching of the [manly-penis] in your [asshole] or the taste of the [manly-penis] in your mouth.[or]You try and allow yourself to fall into a rhythm with the three men fucking your holes, but it is really difficult because they are all thrusting at different speeds.[in random order][otherwise if the relevant sex addiction of M < 14][one of]Partially terrified of getting hurt and partially from pleasure, you find yourself not resisting the [M] and his two friends as they make good use of your mouth, [vagina] and [asshole], with no evident concern for your feelings.[or]You are completely overwhelmed by the feeling of being made airtight. You grip the bed-sheets tightly and groan loudly around the [manly-penis] in your mouth. You know you're giving into what the game wants, but also at least this way it won't take too long for them to climax.[or]You find yourself lewdly yelping with each thrust of the [manly-penis] in your [asshole], which seems to be stimulating the [manly-penis] in your mouth even more, as you watch the patron shiver with glee. The patron in your [vagina] doubles his efforts in an attempt to get noticed.[or]You shudder and make an incomprehensible sound as all three [manly-penis]s are pushed as deep as they can go at the same time.[in random order][otherwise][one of]You mewl lewdly around the [manly-penis] in your mouth and push back against the [manly-penis]s in your [vagina] and [asshole], encouraging them to keep going.[or]You make sure to gag loudly as your face is pushed even deeper onto the man's [manly-penis] so that the [M] and his friends know just how thoroughly they are overpowering and dominating you.[or]You giggle around the cock in your throat as all three [manly-penis]s are pushed as deep as they can go at the same time, and are then used to lift you off the bed, with no hands.[or]You pull apart your asscheeks to help the two patrons in your [vagina] and [asshole] get as deep as they can, whilst at the same time bobbing your head back and forth and making lewd gagging noises like a porn star.[or]You lose yourself in the pleasure of being sandwiched between three delicious [manly-penis]s.[or]If you weren't so busy on giving the man in front of you the blowjob of his life, you would be grinning from ear to ear in bliss thanks to the powerful, steady fucking of the men behind you.[in random order][end if]";
		otherwise if there is a patron penetrating vagina and there is a patron penetrating asshole:
			say "You don't resist as the patrons use your [asshole], [vagina] and other body parts for their amusement."; [should never happen]
		otherwise:
			say "You don't resist as the patrons use your body as a fucktoy.". [should never happen]

To say SexResistFlav of (M - a patron):
	if diaper quest is 1:
		say "You [one of]struggle[or]squirm[or]wriggle[in random order] against [his of M] [one of]grasp[or]hold[in random order]!";
	otherwise if the number of patrons penetrating a body part is 1:
		if M is penetrating face:
			say "[if the relevant sex addiction of M < 6][one of]You pull your head back, trying to get the [M]'s [manly-penis] out of your mouth. But because he has a tight grip on your wrists, you can't get the full length out![or]You try and pull away as the [M] fucks your face fast, but it just encourages him to thrust even harder![or]You try as hard as you can to get the disgusting [manly-penis] out of your mouth, but you can't break The [M]'s grip on your head![or]You fruitlessly shake your head and can't help but gag as the tip of the [M]'s [manly-penis] keeps prodding your tonsils.[or]You try and keep your tongue at the base of your mouth so that you don't have to taste the nasty [manly-penis] filling your mouth.[in random order][otherwise if the relevant sex addiction of M < 13][one of]You try to pull away, even though you know the [M] has much too strong a grip on your head.[or]You gag loudly as you try to fight against the [manly-penis] in your mouth in vain.[or]You push against the [M]'s thighs, trying to get him to slow down.[or]You make offended whines as the [M] slams in and out of your mouth, trying to convince both him and yourself that you aren't an enthusiastic cocksucker.[in random order][otherwise][one of]You playfully push against the [M]'s thighs, pretending that you're struggling to cope with his girth, to make him feel good.[or]You pretend to try and fight back, just in case anyone running the game is watching.[or]You playfully slap the [M]'s butt cheek, as if telling him off for being so rough.[or]You make a show of whimpering and gagging around his [manly-penis], putting your hands on the [M]'s stomach and pretending that you can't take any more[or]You playfully graze the [M]'s [manly-penis] with your teeth, warning him that he shouldn't be too rough.[or]You give the [M] a middle finger and a wink as he fucks your face.[in random order][end if]";
		otherwise if M is penetrating a fuckhole:
			let F be a random fuckhole penetrated by M;
			say "[if the relevant sex addiction of M < 7][one of]You desperately do everything you can to get the [manly-penis] out of your [variable F], but the [M] holds you in place.[or]You don't care if the [M] gets angry, you refuse to let him cum in your [variable F] without putting up a fight![or]You cry out loud in pain and anger, and try to somehow shake the [M] out of your [variable F]. But your attempts are so fruitless he doesn't even realise you're resisting![or]You claw at the bed-sheets, trying to get some grip to pull yourself away from the [M], but you can't get enough traction.[or]You try and kick the [M] away, but he catches your foot and forces it back down onto the bed.[in random order][otherwise if the relevant sex addiction of M < 14][one of]You fight against the [M], trying to ignore the feeling of his throbbing [manly-penis] thrusting in and out of your [variable F].[or]You try and wriggle your way out of the [M]'s grip, but it's difficult when your [variable F] is full of his [manly-penis]![or]You clamp your mouth shut, refusing to let the [M] hear you moan in pleasure.[or]You growl at the [M]. [line break][variable custom style]Oooh!  I am not enjoying this. I am not enjoying this. I am not enjoying this.[roman type][line break][or]You do everything you can to remove the [manly-penis] lodged up your [variable F], but its owner continues to be very insistent that it says firmly inside.[in random order][otherwise][one of]You mewl lewdly and pull away from the [M], provoking him into pushing all the way back in with a single powerful thrust.[or]You yelp in pain, pretending to the [M] that you're not enjoying the feeling of his [manly-penis] destroying your [variable F].[or]You bend your neck to turn and face the [M], and give him a wink as you playfully kick him in the thigh with one leg.[or]You push your shoulders up so that they are above your [HipDesc], giving the [M] a much more difficult angle to thrust at. You grin inwardly as he grabs your head and forces it back down onto the bed.[or]You shake your head wildly, pulling against the [M]'s grip on your hair. As he pulls your hair back tight in response, you find yourself tingling with pleasure as well as pain.[or]You pull forward until just the tiniest bit of the tip of the [M]'s [manly-penis] is still inside your [variable F], then stop. He moves a step forward and the entire length his [manly-penis] brutally back rushes inside your [variable F]. You can't help but shudder in pleasure.[in random order][end if]";
	otherwise if the number of patrons penetrating a body part is 2:
		if there is a patron penetrating vagina and there is a patron penetrating asshole:
			say "[if the relevant sex addiction of M < 7][one of]You thrash around as much as you can, but you can't stop the [M] and his friend using both your [vagina] and [asshole] at the same time.[or]You fight against the intense feelings of being powerfully plowed in both the [vagina] and [asshole] at the same time, refusing to lay still.[or]You lash out against the [M] and his friend with your arms and legs, but they hold you in place strongly and continue to pump away at your two fuckholes.[or]You gnash your teeth and growl at the [M] and his friend but that is all you can manage given your situation. As one pushes in the other pulls out, giving you absolutely no time to mentally steel yourself for the next thrusts.[or]You push against the [M]'s face with your hands, desperately trying to escape this brutal double penetration.[in random order][otherwise if the relevant sex addiction of M < 14][one of]You whimper and timidly try to push the [M] and his friend away as they make good use of both of your fuckholes, with no evident concern for your feelings.[or]You refuse to push back against the [M] and his friend, unconcerned with keeping them happy.[or]The [M] tries to push your face into the pillow but you wrestle against his hold on your neck, as fiercely as you can considering his friend has a firm grip on your wrists.[or]You screech angrily with each thrust of the [M] and his friend's [manly-penis]s into your [vagina] and [asshole].[or]You erratically throw your body weight around, trying to prevent them from falling into a steady rhythm.[in random order][otherwise][one of]You shake your body, irritating the patrons trying to use your holes, and earn yourself a stern slap on the cheek. You can't help but grin wildly.[or]You play fight back as you are overpowered and doubly bred by the two strong men. You love being treated this way![or]You scratch and growl playfully as the [M] and his friend's [manly-penis]s continue to roughly plunder your fuckholes.[or]You yawn, pretending that you are bored, to try and wind the men up. You are then forced to let out a guttural moan of pure bliss as the [M] and his friend suddenly change their rhythm, pushing both of their [manly-penis]s into you as deep as they can go at the same time. You feel impossibly full, and you love it.[or]You move your hips around, trying to interrupt their rhythm and piss them off. The [M] holds you down harder and spits on your face. This just makes you even more turned on.[in random order][end if]";
		otherwise if there is a patron penetrating a fuckhole and there is a patron penetrating face:
			say "You wriggle and squirm, fighting back against the two patrons as they spit roast your body with their [manly-penis]s."; [TODO]
		otherwise:
			say "You fruitlessly flail around as the patrons use your body as a fucktoy.";
	otherwise:
		if there is a patron penetrating vagina and there is a patron penetrating asshole and there is a patron penetrating face:
			say "You fight back against the patrons as they group around your body, using all three of your holes."; [TODO]
		otherwise if there is a patron penetrating vagina and there is a patron penetrating asshole:
			say "You desperately try to wriggle away as the patrons use your [asshole], [vagina] and other body parts for their amusement.";
		otherwise:
			say "You try to escape as the patrons use your body as a fucktoy.".

To compute payment of (M - a patron):
	if M is pissed off:
		say "[speech style of M]'[one of]I'm not paying you after that.'[or]If you want to get paid, you'll behave yourself next time.'[or]I'm not going to pay you. In fact I might complain.'[or]I'll be back, and next time be obedient and you'll actually earn a payment.'[in random order][roman type][line break]";
		decrease the employee-record of senior robobellboy by 1;[Until you start a training regimen, you can only earn strikes]
	otherwise:
		if the number of worn free ride tattoos is 0 or a random number between 1 and 2 is 1:
			loot M;
			say "The [M] [one of]drops[or]tosses[or]places[purely at random] a[if dropped-item is emerald]n[end if] [dropped-item] [one of]at your feet[or]on the ground in front of you[or]onto the bed[purely at random].";
		say "[speech style of M]'[if M is inexperienced patron][one of]Thanks for the great time!'[or]That was fun, I'll be back again!'[or]You blew my mind, babe.'[or]That was definitely worth the money.'[or]I think that's the hardest I've ever orgasmed, thank you so much.'[or]Here's your payment, as promised!'[in random order][otherwise if M is gross patron][one of]Thanks.'[or]That was good.'[or]Expensive, but worth it.'[or]I'll be back again.'[in random order][otherwise if M is experienced patron][one of]Until next time.'[or]Your performance was acceptable.'[or]You earned it.'[or]Buy yourself something nice.'[in random order][otherwise][one of]Keep the change, you filthy animal.'[or]To be honest I'm impressed that you've survived.'[or]You don't even deserve this much.'[or]Until next time, whore.'[or]Try harder next time.'[in random order][end if][roman type][line break]";
		let C be a random worn clothing;
		if diaper quest is 0 and (there is a worn pussy deluxe tattoo or (C is clothing and M is not dickhead patron)):
			repeat with N running from 1 to 10: [We give the RNG several chances to not look at something boring like a ring.]
				if the initial outrage of C <= 3, now C is a random worn clothing;
			if there is a worn pussy deluxe tattoo, now C is a random worn pussy deluxe tattoo;
			let O be the initial outrage of C;
			if C is tattoo, now O is the outrage of C; [initial outrage would be 0]
			if O > a random number between 8 and 16 or the class of the player is trained hooker:
				loot M;
				say "The [M] pauses, and then [one of]drops[or]tosses[or]places[purely at random] a[if dropped-item is emerald]n[end if] [dropped-item] next to it.";
				say "[speech style of M]'[if there is a worn pussy deluxe tattoo and the number of worn tattoos is 1]Your [one of]cunt[or]pussy[or]vag[as decreasingly likely outcomes] tattoo is[otherwise if there is a worn pussy deluxe tattoo]Your tattoos are[otherwise]That [C][line break][speech style of M] you're [one of]wearing[or]sporting[or]showing yourself off in[as decreasingly likely outcomes] is[end if]  pretty [if the initial outrage of C > a random number between 13 and 16]fucking outrageous[otherwise]damn sexy[end if], [one of]so here's something extra as a tip[or]you deserve extra[or]I think you've earned this much[or]you deserve a reward[or]here's something towards your next sexy purchase[or]and I'm feeling generous[at random].'[roman type][line break]";
			if the class of the player is hotel employment, increase the employee-record of senior robobellboy by 1;
	say "The [M] leaves the way he came.";
	destroy M.

Section 1 - Attack

To say LandingTaunt of (M - a patron):
	say "The [M] smirks. [line break][speech style of M]'[one of]Haha, at last![or]I've never seen such a ridiculous sight in my life.[in random order]'[roman type][line break]";
	humiliate 50.

Definition: a body part (called B) is available for rubbing:
	repeat with M running through alive patrons:
		if M is penetrating B or the wanking-target of M is B, decide no;
		if B is vagina and the player is male, decide no;
		if B is penis and the player is female, decide no;
	decide yes.

To compute SelectionWaiting of (M - a patron):
	if the wanking-target of M is nothing:
		now the wanking-target of M is a random available for rubbing body part;
		say "The [M] walks up to you and begins [if M is inexperienced patron]furiously[otherwise]slowly[end if] [if the bimbo of the player < 8]masturbating[otherwise]wanking[end if]. He pushes his [manly-penis] up against your [wanking version of the wanking-target of M], [if the wanking-target of M is arms or the wanking-target of M is belly]forcing you to grip it and begin to stroke his length[otherwise]wiping his pre-cum on your skin and making sure you can feel his every motion[end if].";
	otherwise if the sex-length of M > 0:
		if the wanking-target of M is arms or the wanking-target of M is belly, say "You continue to [if the sex addiction of the player < 7 or the reaction of the player is 0]reluctantly [end if][one of]stroke[or]pump[or]wank[or]jerk off[at random] the [M]'s [manly-penis] with your [wanking version of the wanking-target of M].";
		otherwise say "The [M] continues to [if the bimbo of the player < 8]masturbate[otherwise]get himself off[end if], rubbing the head of his [manly-penis] up against your [wanking version of the wanking-target of M].";
		decrease the sex-length of M by a random number between 0 and 1;
	otherwise:
		say "Suddenly you hear the [M] groaning as he explodes [if the wanking-target of M is arms or the wanking-target of M is belly]inside your[otherwise]onto your[end if] [wanking version of the wanking-target of M]. ";
		if bukkake fetish is 1:
			if the wanking-target of M is face or the wanking-target of M is hair:
				say "Your face is splattered with [if the semen coating of face > 6]even more [otherwise if the semen coating of face > 0]more [end if][semen].";
				CumFaceUp the semen load of M;
			otherwise if the wanking-target of M is breasts:
				say "Your tits are splattered with [if the semen coating of breasts > 6]even more [otherwise if the semen coating of breasts > 0]more [end if][semen].";
				CumTitsUp the semen load of M;
			otherwise if the wanking-target of M is asshole or the wanking-target of M is vagina or the wanking-target of M is penis:
				say "The [semen] lands on your ass and dribbles down onto your thighs.";
				CumThighsUp the semen load of M;
			otherwise:
				say "The [semen] splatters off your skin, giving you a fine coating on your [wanking version of the wanking-target of M] but mostly landing on the floor.";
				SemenPuddleUp the semen load of M;
		say "[if the semen addiction of the player < 6][line break][variable custom style][one of]Yuck![or]Gross![purely at random][otherwise if the semen addiction of the player < 10][variable custom style]Eww![otherwise][line break][second custom style]Ooh, it's so warm![end if][roman type][line break]";
		let R be a random number between 1 and the number of patrons penetrating a body part;
		say "[speech style of M]'I can't believe I came without getting to actually fuck you[if R is 0]. Why didn't you stop me?![otherwise].[end if]'[roman type][line break]";
		if R is 0, now M is pissed off; [This will never happen if the reason the player couldn't accommodate the patron was because there were other patrons using the player]
		compute payment of M.

To say wanking version of (B - a body part):
	if B is breasts:
		say "[BreastDesc]";
	otherwise if B is face:
		say "cheeks";
	otherwise if B is hair:
		say "forehead";
	otherwise if B is arms:
		say "left hand";
	otherwise if B is belly:
		say "right hand";
	otherwise if B is thighs:
		say "left foot";
	otherwise if B is asshole:
		say "left buttcheek";
	otherwise if B is vagina or B is penis:
		say "right buttcheek";
	otherwise if B is hips:
		say "right foot";

To compute facial dodging of (M - a patron):
	if the number of patrons penetrating a body part is 1:
		say FacialBrokenFree of M;
		if a random number between the semen addiction of the player * -1 and the dexterity of the player > the difficulty of M - 2:[facials are harder to dodge the more you like the feeling of semen]
			compute successful facial dodging of M;
		otherwise:
			compute failed facial dodging of M;
	otherwise:
		say "Due to the other patron[if the number of patrons penetrating a body part > 2]s[end if] using your body, you are completely unable to do anything to stop the [M] as he pulls out and points his [manly-penis] at your [ShortDesc of face].";
		say UnavoidableFacial of M;
		CumFaceUp the semen load of M.

To compute facial climax of (M - a patron):
	compute default facial climax for M;
	let T be a random mouth-tally tattoo;
	if T is worn:
		say "Taking out his permanent marker, the [M] [if M is pissed off]growls while adding[otherwise]adds[end if] another strike to the tally on your cheek.";
		increase the tallies of T by 1;
	otherwise if there is a worn[ ink-me] tattoo:
		say "Taking out a permanent marker, the [M] [if M is pissed off]growls while drawing[otherwise]draws[end if] a permanent tally on your cheek.";
		summon T;
	compute payment of M.

To say SwallowDemand of (M - a patron):
	say "[speech style of M][one of]'You better swallow that, or I'm not paying.'[or]'Swallow like a good whore now.'[or]'Drink it down, [slut].'[or]'I expect you to swallow that, obviously.'[or]'Yeah, bitch, drink it up like a good girl now.'[in random order][roman type][line break]".

To compute angry punishment of (M - a patron):
	now M is pissed off.

To compute facial sex of (M - a patron):
	if the oral sex addiction of the player > 6, arouse 200;
	if the sex-length of M is 1:
		say NearingClimaxOral of M;
		decrease the sex-length of M by 1;
	otherwise:
		if the reaction of the player is 0:
			if the number of patrons penetrating a body part is 1, say OralResisting of M;
			say OralResistingResponse of M;
			if a random number between 1 and 2 is 1 or the lips of face > 2, decrease the sex-length of M by 1;
		otherwise:
			say OralSubmissionResponse of M;
			decrease the sex-length of M by 1.

To compute anal sex of (M - a patron):
	if the reaction of the player is 2 and M is not dickhead patron and M is not pissed off:
		say "[one of][M mercy sex 1][or][M mercy sex 2][or][M mercy sex 3][or][M mercy sex 4][or][M mercy sex 5][or][M mercy sex 6][or][M mercy sex 7][at random]";
		if a random number between 1 and 3 > 1, ruin asshole;
	otherwise if the reaction of the player > 0:
		say "[one of][M submission sex 1][or][M submission sex 2][or][M submission sex 3][or][M submission sex 4][or][M submission sex 5][or][M submission sex 6][or][M submission sex 7][at random]";
		ruin asshole;
	otherwise:
		say "[one of][M rough sex 1][or][M rough sex 2][or][M rough sex 3][or][M rough sex 4][or][M rough sex 5][or][M rough sex 6][at random]";
		ruin asshole;
	decrease the sex-length of M by 1;
	say "[one of][M sex reaction][or][cycling]".

To compute vaginal sex of (M - a patron):
	if the reaction of the player is 2:
		say "[one of][M mercy sex 1][or][M mercy sex 2][or][M mercy sex 3][or][M mercy sex 4][or][M mercy sex 5][or][M mercy sex 6][or][M mercy sex 7][at random]";
	otherwise if the reaction of the player is 1:
		say "[one of][M submission sex 1][or][M submission sex 2][or][M submission sex 3][or][M submission sex 4][or][M submission sex 5][or][M submission sex 6][at random]";
		ruin vagina;
	otherwise:
		say "[one of][M rough sex 1][or][M rough sex 2][or][M rough sex 3][or][M rough sex 4][or][M rough sex 5][at random]";
		ruin vagina;
	decrease the sex-length of M by 1;
	say "[one of][M sex reaction][or][cycling]".

To compute post climax effect of (M - a patron) in (F - vagina):
	let T be a random vagina-tally tattoo;
	if T is worn:
		say "Taking out his permanent marker, the [M] adds another strike to the tally at your crotch.";
		increase the tallies of T by 1;
	otherwise if there is a worn[ ink-me] tattoo:
		say "Taking out a permanent marker, the [M] draws a permanent tally next to your [vagina].";
		summon T;
	compute payment of M.

To compute post climax effect of (M - a patron) in (F - asshole):
	let T be a random asshole-tally tattoo;
	if T is worn:
		say "Taking out his permanent marker, the [M] adds another strike to the tally next to your [asshole].";
		increase the tallies of T by 1;
	otherwise if there is a worn[ ink-me] tattoo:
		say "Taking out a permanent marker, the [M] draws a permanent tally next to your [asshole].";
		summon T;
	compute payment of M.

To say CondomPieFlav of (M - a patron) in (F - a fuckhole):
	say "[one of]The [M] growls, tightening [his of M] grip as the condom fills with warmth. He continues fucking you, making sure that [his of M] balls have been well and truly emptied of every last drop of [semen]. Finally, you feel [his of M] hands leave your hips and he pulls out.[or]The [M] grunts, his [manly-penis] throbbing as he unloads [his of M] balls into [his of M] condom. He sighs in satisfaction, roughly shoving you off his [manly-penis].[or][if the semen addiction of the player < 7]The [M] tightens his grip and begins grunting in pleasure. You shudder and look over your shoulder as you feel a flash of warmth near his tip, spreading quickly into the rest of the condom as he releases your hips and pulls out.[otherwise if the semen addiction of the player < 11]The [M] tightens his grip and begins grunting in pleasure. You gasp and look over your shoulder as you feel a flash of warmth near his tip, spreading quickly into the rest of the condom as his thrusting comes to a close. His hands reluctantly leave your hips as he pulls out.[otherwise]The [M] tightens his grip and begins grunting in pleasure. You look over your shoulder and grin as you feel a surge of warmth near his tip, spreading quickly into the rest of the condom as you milk his [manly-penis] down to the last drop. His hands reluctantly leave your hips as he pulls out.[end if][or]The [M] grunts and tightens his grip. You [if the semen addiction of the player < 8]whimper[otherwise if the semen addiction of the player < 13]sigh quietly[otherwise]coo[end if] as the condom fills with his [semen], thin enough that you can still feel it flowing slowly inside it as he pulls out.[at random]".

To say CreampieFlav of (M - a patron) in (F - a fuckhole):
	say "[one of]The [M] growls, tightening his grip as warm [semen] begins flowing inside of you. He continues fucking you until his balls have been thoroughly and completely emptied into your [variable F]. You feel his hands leave your hips as he pulls out.[or]The [M] grunts, his [manly-penis] throbbing as he unloads his balls into your [variable F]. He sighs in satisfaction, roughly shoving you off his [manly-penis].[or][if the semen addiction of the player < 7]The [M] tightens his grip and begins grunting in pleasure. You shudder and look over your shoulder as [semen] flows into your [variable F]. He releases your hips, finished with you.[otherwise if the semen addiction of the player < 11]The [M] tightens his grip and begins grunting in pleasure. You gasp and look over your shoulder as [semen] flows into your [variable F]. He releases your hips, thrusting a few more times before pulling out.[otherwise]The [M] tightens his grip and begins grunting in pleasure. You look over your shoulder and grin as [semen] flows into your [variable F]. He releases your hips, allowing you to milk his [manly-penis] down to the last drop before pulling out.[end if][or][if the semen addiction of the player < 8]The [M] grunts and tightens his grip. You whimper as his [manly-penis] pumps two waves of [semen] directly into your [variable F]. His hands leave your hips as he pulls out.[otherwise if the semen addiction of the player < 13]The [M] grunts and tightens his grip. You sigh quietly as his [manly-penis] pumps two waves of [semen] directly into your [variable F]. His hands leave your hips as he pulls out.[otherwise]The [M] grunts and tightens his grip. You coo happily as his [manly-penis] pumps two waves of [semen] directly into your [variable F]. His hands leave your hips as he pulls out.[end if][at random]".

The latex punishment rule of a patron is usually the no latex punishment rule.

To compute cleavage climax of (M - a patron):
	TitfuckAddictUp 1;
	TimesFuckedUp M by 1;
	if M is male:
		say "[CleavageClimaxFlav of M]";
		CumTitsUp the semen load of M;
	compute payment of M.

To say TitfuckForceFlav of (M - a patron):
	let C be a random worn top level covering nipple covering clothing;
	say "[speech style of M]'[one of]Come on now, don't fight back, this was your idea!'[or]Calm down honey, I'm not going to hurt you.'[or]Come on, stay still... you're not making this easy!'[or]Come on, help me out here, use your hands to squeeze them together!'[or]This is going to take forever if you don't help me finish!'[or]I'm not paying you if your don't make me cum, you know!'[or]I don't know why you're being so reluctant, after you literally just asked me to fuck your tits.'[in random order][roman type][line break]";
	say "[one of]The [if C is clothing][printed name of C]keeps your [ShortDesc of breasts] pushed together around the [M]'s[otherwise][M] keeps your [ShortDesc of breasts] pushed together around his[end if] [manly-penis] as he thrusts between them.[or]The [M] seems a bit frustrated as he continues to powerfully thrust between your [ShortDesc of breasts]![or]Your [ShortDesc of breasts] jiggle[if the largeness of breasts > 10] obscenely[end if] as the [M] continues thrusting between them![or]The [M] grunts with annoyance as [he of M] roughly thrusts between your breasts.[or]The [M] holds you by the wrists, keeping your [ShortDesc of breasts] wrapped around [his of M] [manly-penis] as [he of M] thrusts between them.[in random order]".

To say TitfuckReceiveFlav of (M - a patron):
	say "[one of]The [M] continues to enthusiastically thrust in between your [ShortDesc of breasts]![or]You [if the titfuck addiction of the player < 4]hesitantly[otherwise]eagerly[end if] continue pumping his [manly-penis] with your [ShortDesc of breasts].[or]You continue to massage his [manly-penis] with your [ShortDesc of breasts].[or]You stare at [his of M] [manly-penis] [if the titfuck addiction of the player < 5]with undisguised disgust[otherwise if the titfuck addiction of the player < 10]with what you decide is curiosity[otherwise]with barely contained hunger[end if] as it thrusts between your [ShortDesc of breasts].[or]The [M]'s [manly-penis] gently bumps your chin as he enthusiastically thrusts it between your [ShortDesc of breasts].[or]You [if the titfuck addiction of the player < 5]dejectedly[otherwise]happily[end if] massage the [if the bimbo of the player < 7][line break][first custom style]gross[roman type][line break][otherwise]firm, hard[end if] penis between your [if the largeness of breasts > 10]wobbling[otherwise]jiggling[end if] breasts.[in random order]";
	say "[speech style of M]'[one of]Unf, yes, keep it up!'[or]Oh yes, hold them just like that!'[or]Keep going!  Squeeze them even tighter!'[or]Fuck yes, this feels amazing!'[or]Girl, your tits are INCREDIBLE!'[or]Haha, yes, now I understand why you have these [if the largeness of breasts > 14]stupidly [end if][if the largeness of breasts > 8]massive[otherwise]big[end if] fuckpillows!'[or]Oh man, I'm going to shoot the biggest load all over these funbags!'[in random order][roman type][line break]".

To say BreastsPenetrationFlav of (M - a dickhead patron):
	say "The [M] slaps your breasts a few times with [his of M] [manly-penis] a few times before [unless there is a monster penetrating a body part]flipping you onto your back, straddling your belly and slamming his [manly-penis] up through your cleavage!  [line break][speech style of M]'Fine then, let's do this. Get to work, whore.'[roman type][line break]".

To say BreastsPenetrationFlav of (M - an experienced patron):
	say "The [M] forces you to kneel on the bed and holds you still there with [his of M] two strong hands. He carefully takes aim with his [manly-penis] and then thrusts it up between your [ShortDesc of breasts]. [line break][speech style of M]'Don't make me do all the work now, or this will take a long time.'[roman type][line break]".

To say BreastsPenetrationFlav of (M - an inexperienced patron):
	say "The [M]'s [manly-penis] throbs with anticipation!  He leaps onto the bed and delicately places his [manly-penis] in between your [ShortDesc of breasts]. [line break][speech style of M]'[one of]So, what now?  I thrust while you squeeze them around my shaft?'[or]I'll just copy what they do in porn, and I'm sure it'll feel great, right?'[stopping][roman type][line break]".

To say BreastsPenetrationFlav of (M - a gross patron):
	say "As you lie on the bed [if the titfuck addiction of the player < 4]nervously[otherwise if the titfuck addiction of the player < 7]obediently[otherwise]impatiently[end if] and watch as the [M] stands over your chest and then gets on his hands and knees. In this position his [manly-penis] slides right in between your [ShortDesc of breasts] but also his fat belly [if the largeness of breasts > 15]hovers inches from[otherwise]is pressed right against[end if] your face!  [line break][variable custom style]Gross[if the humiliation of the player > 35000]!  But I deserve it.[otherwise]![end if][roman type][line break][line break][speech style of M]'[one of]So, what now?  I thrust while you squeeze them around my shaft?'[or]I'll just copy what they do in porn, and I'm sure it'll feel great, right?'[stopping][roman type][line break]".

To say AssholePenetrationFlav of (M - a patron):
	let N be a random monster penetrating vagina;
	if N is a monster:
		if N is patron, say "The [N] grabs your arm, flipping you over so you're face to face. He grabs your waist, pulling you over onto his stomach as the [M] pulls apart your asscheeks. You can feel the tip of the new [manly-penis] poised to enter your unguarded hole.";
		otherwise say "The [M] flips you onto your side, so you're facing the [N]. The [N] continues to fuck your [vagina] [if there is a monster penetrating face]and the [random monster penetrating face] continues to fuck your mouth [end if]as the newcomer spreads apart your asscheeks, positioning his [manly-penis] at your unguarded hole.";
	otherwise:
		say "The [M] smiles, [unless there is a monster penetrating face]shoving you face down onto the bed and [end if]pulling your hips up against his body. ";
		say "He squeezes your ass with one hand, placing his length between your cheeks.";
		say "[speech style of M]'[if M is inexperienced patron][one of]I can't believe I'm really going to get to fuck your butthole!'[or]My [manly-penis]'s about to go in, I hope you're ready!'[or]I've always wanted to try it Greek style!'[in random order][otherwise if M is gross patron and the number of lubricants covering asshole is 0]Brace yourself, I'm going in dry.'[otherwise if M is gross patron]I'm glad you have used some lube, because I forgot to bring any.'[otherwise if M is experienced patron][one of]I'm going to assume this isn't your first rodeo.'[or]The quality of whores in this establishment is declining. Let me teach you how to take a [manly-penis] up here properly.'[or]Come on, open wide, do I look like I have all day?'[in random order][otherwise][one of]I hope this hurts. It's supposed to.'[or]If this hurts going in, that's because I want it to.'[or]If you want to stop early, just remember, I don't give a shit what you want.'[in random order][end if][roman type][line break]";
	if the openness of asshole < the girth of M:
		say "Pulling your asscheeks apart, he pushes forward. You arch your back, groaning in pain as he forces open your sphincter. [if the anal sex addiction of the player < 7]You don't dare to look at him, staring straight downwards as he forcefully slides his throbbing [manly-penis] into your [asshole]. He pushes in painfully slowly, each inch hurting worse than the last until his [manly-penis] is fully embedded within you.[otherwise]You uncontrollably moan in a mixture of pain and pleasure as your [asshole] slowly parts to receive his hard length. You push back, silently begging him to finish entering you, staring straight downwards as he forcefully slides his throbbing [manly-penis] into your [asshole]. He ignores you and pushes in painfully slowly, each inch hurting even more than the last until his [manly-penis] is fully embedded within you. He places his hands on your hips, holding you tightly in preparation for a brutal, rough fucking.[end if]";
	otherwise if the openness of asshole < the girth of M + 2:
		say "Pulling your asscheeks apart, he pushes forward. You arch your back, groaning as the tip of his [manly-penis] forces your sphincter a little bit more open. [if the anal sex addiction of the player < 6]You don't dare to look at him, staring straight downwards as he forcefully slides his throbbing [manly-penis] into your [asshole]. He pushes in as slowly as he can, each inch making you feel even more open than the last until his [manly-penis] is fully embedded within you.[otherwise]You uncontrollably moan in pleasure as your [asshole] slowly receives his hard length. You hold perfectly still, enjoying the intense feeling, staring straight downwards as he forcefully slides his throbbing [manly-penis] into your [asshole]. You let out a girly gasp when his [manly-penis] bottoms out inside of you. He places his hands on your hips, holding you tightly in preparation for a nice, rough fucking.[end if]";
	otherwise:
		say "Pulling your asscheeks apart, he pushes forward. He slides in easily thanks to the looseness of your [asshole]. [if the anal sex addiction of the player < 5]You look back, horrified that he penetrated you so quickly and easily. He grins at you, placing his hands on your hips to hold you in place.[otherwise]You moan in pleasure as he pushes inside, pushing back against him to make sure he bottoms out in under a second.[end if]".

To say VaginaPenetrationFlav of (M - a patron):
	let N be a random monster penetrating asshole;
	if N is a monster:
		if N is patron, say "[if there is a monster penetrating face]The [N] links his arms around your waist, pulling you off the floor. He continues thrusting as the [M] kneels down in front of you, brandishing a stiff, hard [manly-penis].[otherwise]The [N] links his arms around your waist, pulling you over onto his stomach. His hands migrate to your [BreastDesc] as the [M] climbs on top of you, his [manly-penis] poised to enter your unguarded hole.[end if]";
		otherwise say "The [N] flips you onto your side, so you're facing the [M]. The [N] continues to fuck your [asshole] as the newcomer spreads apart your asscheeks, positioning his [manly-penis] at your unguarded hole.";
	otherwise:
		say "The [M] smiles, [unless there is a monster penetrating face]shoving you face down onto the bed and [end if]pulling your hips up against his body. ";
		say "You can feel the shape of his [manly-penis] against your [vagina] as he squeezes your [HipDesc] with one hand.";
		say "[speech style of M]'[if M is inexperienced patron][one of]You are on birth control, right?'[or]I can't wait any longer!  I'm going to go in now.'[or]This is so much cooler than porn!'[in random order][otherwise if M is gross patron and pregnancy fetish is 0]Are you looking forward to feeling me cum inside your sacred spot?'[otherwise if M is gross patron and the pregnancy of the player is 0]The risk of getting you pregnant just makes this even hotter.'[otherwise if M is gross patron]There's nothing hotter than fucking a pregnant chick where the baby's going to be coming out soon.'[otherwise if M is experienced patron][one of]I'm going in bareback but don't worry, I'm clean.'[or]You're not the prettiest whore I've ever seen, but you'll do for tonight.'[or]Are you just going to lie there like a dumb bitch or are you going to actually service me properly?'[in random order][otherwise][one of]Don't you dare orgasm before I do.'[or]If you faint before I'm finished, I won't be impressed.'[or]If you want to have any chance of getting paid, you'll take it quietly until I'm done.'[in random order][end if][roman type][line break]";
	if the virgin of the player is 1:
		say VirginityTaken of M;
	otherwise if the openness of vagina < the girth of M:
		say "Pulling your asscheeks apart, he pushes forward. ";
		if the vaginal sex addiction of the player < 3:
			say "You tremble with humiliation as you feel yourself stretching to accept his [manly-penis]. [if M is dickhead patron]The worst part is that he doesn't hide the fact that your pain is why it feels so good for him, groaning[otherwise]He groans[end if] in pleasure as he sinks inch after inch of his throbbing [manly-penis] into your defenceless hole. He places his hands on your hips as he bottoms out.";
		otherwise if the vaginal sex addiction of the player < 6:
			say "You tremble with reluctant excitement as you feel yourself stretching to accept his [manly-penis]. [if M is experienced patron]He grunts quietly to himself[otherwise]He makes it quite clear that he's enjoying himself, hissing and groaning in pleasure[end if] as inch after inch of throbbing [manly-penis] sinks into your stiff hole. He places his hands on your hips as he bottoms out.";
		otherwise:
			say "His other hand is used to hold the base of his shaft as you guide it into your [vagina]. You shiver with excitement as you feel yourself stretching to accept his [manly-penis]. [if M is experienced patron]You find yourself[otherwise]His every hiss and groan of pleasure just makes you feel more proud,[end if] grinning from ear to ear as inch after inch of his throbbing member sinks into your waiting hole. He places his hands on your hips as he bottoms out.";
	otherwise if the openness of vagina < the girth of M + 2:
		say "[if the vaginal sex addiction of the player < 4]You stifle a moan of pleasure as the [M]'s [manly-penis] slides into your defenceless hole. He places his hands on your hips, driving inch after awful inch of his [manly-penis] through your labia lips. His grip tightens as he bottoms out, assuring you that he won't let you get away, no matter how much you try.[otherwise if the vaginal sex addiction of the player < 7]You moan in pleasure, fighting the urge to push back against him as the [M]'s [manly-penis] slides into your waiting hole. He places his hands on your hips, driving inch after throbbing inch of his big [manly-penis] through your labia lips. His grip tightens as he bottoms out, assuring you that you're in for a good, rough fuck.[otherwise]You moan as loudly as you can, pushing back against him as the [M]'s perfectly sized [manly-penis] sinks into your waiting hole. He places his hands on your hips, driving inch after wonderful inch of his [manly-penis] through your labia lips. His grip tightens as he bottoms out, reassuring you that you're in for the good, rough fuck you so desperately want.[end if]";
	otherwise:
		say "[if the vaginal sex addiction of the player < 4]You let out a completely involuntary moan as the [M] slides in like a knife through butter, grunting as he bottoms out. He grins as you look over your shoulder, [one of]horrified[or]mortified[purely at random] at the sound that just came out of your mouth. Strong hands grab your hips tightly, removing all hope of escape.[otherwise if the vaginal sex addiction of the player < 7]You let out a somewhat involuntary moan of pleasure as the [M] slides in like a knife through butter, grunting as he bottoms out. He grins as you look over your shoulder, embarrassed at how good that felt, but still hungry for more. Strong hands grab your hips tightly, assuring you that your hunger will be sated.[otherwise]His other hand is used to hold the base of his shaft as you guide it into your [vagina]. You shamelessly moan in pleasure as the [M] slides in like a knife through butter, grunting as he bottoms out. He grins as you look over your shoulder, licking your lips in hopes that he'll give you the roughest fucking he can. Strong hands grab your hips tightly, assuring you that you'll get the sex you so desperately, desperately need.[end if]".

To compute (M - a patron) entering mouth:
	if face is not occupied:
		now M is penetrating face;
		now the sex-length of M is a random number between 3 and 4;
		say MouthPenetrationFlav of M.

To say (M - a patron) sex reaction:
	let F be a random fuckhole penetrated by M;
	if the reaction of the player is 2:
		say "[speech style of M][if M is inexperienced patron][one of]'I guess I don't know my own strength, heh...'[or][or]'Ok, jeez, I get it.'[or][or][cycling][otherwise if M is gross patron][one of]'Are you trying to say you're not enjoying this?'[or][stopping][otherwise if M is experienced patron][one of]'That's pretty unprofessional of you.'[or][cycling][otherwise][one of]'Haha!  Your suffering is music to my ears.'[or]'I will do nothing of the sort.'[or]'It's funny that you think I care.'[or]'I'm the customer here, I'll do what I want.'[in random order][end if]";
	otherwise:
		say "[variable custom style]";
		if the player is gagged:
			say "[one of][if the relevant sex addiction of M < 8]It's even worse because I can't say no![otherwise if the relevant sex addiction of M < 12]I can't say no, but do I want to?[otherwise]It's so hot when I can't say no![end if][or][if the relevant sex addiction of M < 8]It's even more humiliating because I can't say no.[otherwise if the relevant sex addiction of M < 12]He'd listen to me if I wasn't wearing this gag. Right?[otherwise]I love it when I can't say no![end if][or][if the relevant sex addiction of M < 8]I can't even call for help...[otherwise if the relevant sex addiction of M < 12]'MMMPH! MMhhmmMMPH!'[otherwise]It's even better because I can't say no![end if][at random]";
		otherwise if the openness of F < the girth of M - (a random number between 1 and 3):
			say "[one of][if the relevant sex addiction of M < 8]'You're too big!'[otherwise if the relevant sex addiction of M < 12]He's so big![otherwise]'Hee hee! You're SO big!'[end if][or][if the relevant sex addiction of M < 8]Why does he have to be so big?[otherwise if the relevant sex addiction of M < 12]'It[']s too big, I can't handle it.'[otherwise]Mmm! Loosen me up, stud![end if][or][if the relevant sex addiction of M < 8]Why couldn't he be smaller?[otherwise if the relevant sex addiction of M < 12]I can feel myself getting stretched.[otherwise]'Yeah! TEAR ME UP!'[end if][at random]";
		otherwise if the player is male:
			if the relevant sex addiction of M < 8:
				say "[one of]This feels so weird![or]'I'm not a chick!'[or]He's treating me like a chick! What the fuck![or]My [player-penis] feels weird.[in random order]";
			otherwise if the relevant sex addiction of M < 12:
				say "[one of]Is there a difference between me and a woman at this point?[or][if size of penis is less than 3]How can I feel so hard when it's so small?[otherwise]I'm so hard...[end if][or]'Oh! That felt good!'[or][if size of penis is less than 3]I'm so hard... but at least I'm so small, probably no one could even tell![otherwise]Why am I hard at a time like this?[end if][in random order]";
			otherwise:
				say "[one of]He's hitting my g-spot! Teehee![or]'Make me jizz all over the floor!'[or]'Harder! I want to hands-free cum!'[in random order]";
		otherwise if the relevant sex addiction of M < 8:
			say "[one of]'Ow ow ow!'[or]'Shit!'[or]'Slow down! I'm not just your fucktoy!'[or]It's like he doesn't care what I think at all![or]He's using me like some sort of cheap whore![or]This is insane![or]This feels so wrong![or]'Stop this! I'm not just a hole!'[or]Please let this be over soon...[in random order]";
		otherwise if the relevant sex addiction of M < 12:
			say "[one of]It feels good. That's not my fault.[or]I know I shouldn't be enjoying this, but...[or]Why does it have to feel so good?[or]If I have to have sex, it might as well be with someone who does it right.[or]I wonder if he'll cum a lot.[or]It actually feels kind of good.[or]I never realized sex could feel this good![or]I'm actually not sure if I want this to end.[in random order]";
		otherwise:
			say "[one of]Uh oh, looks like I'm trapped! Teehee![or]I can't get away! Uh ooooh![or]'Oooh!'[or]'Aaah!'[or]'Aah! Aah! Aah!'[or]'I'm having so much fun!'[or]'Oooh Shiiiit!'[or]'Yeah! Fuck me!'[or]'Don't stop! It feels so good!'[or]'Wear me out, stud!'[or]'Fuckme! Fuckme! Fuckme!'[or]I want this to last FOREVER![or]Use me, stud!'[or]'Use me like the dirty slut I am!'[or]'Faster, stud, faster!'[or]'This feels SO right.'[then purely at random]";
	say "[roman type][line break]".

Section 2 - DQ

 Definition: a patron (called M) is willing to spank:
	decide yes.

Definition: a patron (called M) is willing to spank gently:
	if M is pissed off, decide no;
	decide yes.

Definition: a patron (called M) is willing to masturbate:
	if the health of M is the maxhealth of M and M is not pissed off and a random number between 0 and 10000 < the arousal of the player, decide yes;
	decide no.

To say MasturbationDeclarationFlav of (M - a patron):
	say "[speech style of M]'[one of]Oh, good, I see you're diapered like a baby should be. I guess you deserve a little reward[or]Lie down baby, Daddy is going to make you feel good today[stopping]...'[roman type]  ".

To say MasturbationStartFlav of (M - a patron):
	say "The [M] leads you to lie on the bed on your back, with your head comfortably on the pillow. He places one hand lovingly on your [if the largeness of breasts > 2][BreastDesc][otherwise]tummy[end if] and [his of M] other hand over [if there is a worn diaper]the crotch of your diaper[otherwise if the player is female]your [vagina][otherwise]your [ShortDesc of penis][end if]!".
	
To say DiaperMasturbationFlav of (M - a patron):
	let D be a random worn diaper;
	say "The [M] [one of]pushes his fist into the front of your [D], letting you feel the bumps of his knuckles through the padding[or]swirls two fingers around the the front of your [D], as if it was a vagina[or]lightly spanks your [genitals] through the padding of your [D][or]rubs his entire hand in circles over the front of your [D][at random]. [if the player is able to get horny][one of]It feels amazing[or]You can feel yourself getting more and more aroused[or]You shiver with shameful pleasure[in random order].".

To say MasturbationAfterFlav of (M - a patron):
	say "The [M] seems [if refactoryperiod > 0]satisfied[otherwise]to grow tired[end if] and pulls away. [if refactoryperiod <= 0][line break][speech style of M]'[one of]Haha, okay, that's enough fun for now.'[or]That's enough for now I think. And no touching yourself while I'm gone either!  Be a good baby for Daddy.'[or]This is taking too long. Don't touch yourself until I return, then maybe next time I'll have more luck.'[in random order][roman type][line break][end if]";
	compute payment of M.

To say SpankingStartFlav of (M - a patron):
	say "The [M] pushes your face down into the mattress, leaving your butt high in the air.".
	
To say SpankingDeclarationFlav of (M - a patron):
	say "[speech style of M]'[one of][if M is pissed off]Well well well, it looks like the tables have turned. Do you have any regrets?'[otherwise]I trust you've been trained in how to properly receive a spanking.'[end if][or]Oh yes, you know what time it is!'[cycling][roman type]  ".

To say SpankingMercyRejectionFlav of (M - a patron):
	say "[speech style of M]'[if M is pissed off]There's no chance of that, you little brat!'[otherwise]No no baby, I'm determined to get my money's worth today. You'll take what you're given.'[end if][roman type]  The [M] has an evil smile on his face.".

To say SoftSpankingFlav of (M - a patron):
	say "The [M]'s resolve weakens, and then he delivers just a few weak blows to your [buttcheeks] with [his of M] hand. [if there is a worn diaper]Your [random worn diaper] softens the blows even further, so that they just feel like gentle pats. [end if][line break][speech style of M]'Well I guess I'll let you off this time, but that was really boring.'[roman type][line break]The [M] lets you go.";
	now M is pissed off;
	compute payment of M.

To say SpankingFlav of (M - a patron):
	say "The [M] [one of]clearly knows what he's doing, and [or][stopping]delivers [one of]four[or]three[or]five[as decreasingly likely outcomes] well-targeted open-palmed slaps to your [buttcheeks]. [if there is a worn diaper][DiaperSoftenFlav of M][end if]".

To say DiaperSoftenFlav of (M - a patron):
	say "[one of]Your [random worn diaper] softens the blows but [his of M] cold clinical technique is too good to prevent you from still feeling pain!  [or][DiaperSoftenShortFlav of M][stopping]".

To say SpankingAfterFlav of (M - a patron):
	say "After this [he of M] seems satisfied, and begins to rub your sore [if asshole is lewdly exposed][buttcheeks][otherwise if there is a worn diaper]bottom through your padding[otherwise]bottom[end if] lovingly and speaks in a soothing voice. [line break][speech style of M]'[if M is pissed off]That's what you get for being disobedient, little baby. Maybe next time you'll listen to Daddy's instructions and obey them properly?'[otherwise][one of]It's okay, Daddy's here, Daddy loves you[or]There there. Daddy only spanks you because he loves you and wants you to be the perfect baby[or]Wasn't that fun, baby?  Daddy had fun[or]Aww, does your bum-bum hurt, little Princess?  It's supposed to[in random order].'[end if][roman type][line break]After your heart rate starts to calm down, he gets up. ";
	compute payment of M.


Section 3 - Damage

To compute damage of (M - a patron):
	now M is pissed off;
	if the health of M > 0:
		say DamageReaction (the health of M) of M;
	otherwise:
		compute death of M.

To say DamageReaction (N - a number) of (M - a patron):
	say "[speech style of M]'Ouch!  [one of]You're going to regret that.'[or]If this is meant to be play fighting, you're being too rough.'[or]Stop that right now!'[or]You're really asking for it, aren't you?!'[or]You are SO not getting paid now.'[or]Is this how you treat all your clients?!'[or]I will be complaining to the management!'[or]You can't be expecting to get any payment after this.'[in random order][roman type][line break]".

To compute death of (M - a patron): [Overrides main death function]
	say "The [M] turns tail and quickly runs out of the room the way he came!";
	loot M;
	say "The [M] drops a[if dropped-item is emerald]n[end if] [dropped-item][one of] and in his haste to leave he doesn't stop to pick it back up[or][stopping].";
	if a random number between 1 and the difficulty of M < 3:
		repeat with N running through patrons:
			DifficultyUp N by 1; [They slowly get more difficult if you keep beating them]
	destroy M.

dropped-item is a thing that varies.

To loot (M - a patron):
	let A be a random off-stage basic loot accessory;
	now A is sapphire;
	if M is experienced patron:
		now A is emerald;
		if a random number between 1 and 3 is 1, now A is pink diamond;
	set shortcut of A;
	now A is in the location of the player;
	now dropped-item is A.

Part 5 - Conversation

To compute greeting response of (M - a patron):
	say "[speech style of M]'[if there is a HotelBedPatrons in the location of M]Less talking, more sex.'[otherwise]Shut up.'[end if][roman type][line break]";
	unless there is a HotelBedPatrons in the location of M, bore M.

To compute answer of (M - a patron) to (Q - a number):
	say "[speech style of M]'[if there is a HotelBedPatrons in the location of M]Less talking, more sex.'[otherwise]Shut up.'[end if][roman type][line break]";
	unless there is a HotelBedPatrons in the location of M, bore M.

To compute unfriendly drink of (M - a patron):
	say "[speech style of M]'[if there is a HotelBedPatrons in the location of M]Less talking, more sex.'[otherwise]Shut up.'[end if][roman type][line break]";
	unless there is a HotelBedPatrons in the location of M, bore M.

Part 6 - Trading

To decide which number is the bartering value of (T - a thing) for (M - a patron):
	decide on 0.

To say MonsterOfferRejectFlav of (M - a patron) to (T - a thing):
	say "[speech style of M]'Why the fuck would I want that?'[roman type][line break]".

To say MonsterOfferRejectFlav of (M - a patron) to (T - a plentiful accessory):
	say "[speech style of M]'I think you're confused. I'm the one who pays you.'[roman type][line break]".
	
To say MonsterOfferRejectFlav of (M - a patron) to (T - a condom of kings):
	say "[speech style of M]'[one of]Sorry babe, but I don[']t actually fit in condoms.'[or]No way, I like to fuck bareback!'[at random][roman type][line break]".


Patron ends here.

