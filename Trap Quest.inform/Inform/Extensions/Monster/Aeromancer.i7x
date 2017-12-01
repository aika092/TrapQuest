Aeromancer by Monster begins here.

An aeromancer is a kind of monster.  An aeromancer is usually intelligent.  An aeromancer is usually woods dwelling.  An aeromancer is usually dungeon dwelling.  An aeromancer is usually willing to do anal.  An aeromancer is usually willing to do vaginal. The leftover-type of an aeromancer is usually 113.  An aeromancer has a number called science requests.  An aeromancer has a number called science history. An aeromancer is usually wenchy.

A smirking aeromancer is a kind of aeromancer.  There is 1 smirking aeromancer.  The printed name of smirking aeromancer is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]smirking [if item described is ballooned]massive-breasted [end if]aeromancer[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".  The text-shortcut of smirking aeromancer is "sae".
A grinning aeromancer is a kind of aeromancer.  There is 1 grinning aeromancer.  The printed name of grinning aeromancer is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]grinning [if item described is ballooned]massive-breasted [end if]aeromancer[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".  The text-shortcut of grinning aeromancer is "gae".
A chuckling aeromancer is a kind of aeromancer.  There is 1 chuckling aeromancer.  The printed name of chuckling aeromancer is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]chuckling [if item described is ballooned]massive-breasted [end if]aeromancer[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".  The text-shortcut of chuckling aeromancer is "cae".

The printed name of aeromancer is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style][if item described is ballooned]massive-breasted [end if]aeromancer[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".  The description of aeromancer is usually "[AeromancerDesc]".   Understand "massive", "massive-breasted" as aeromancer when the item described is ballooned.

Figure of aeromancer 1 is the file "aeromancer1.png". Figure of aeromancer 2 is the file "aeromancer2.png". Figure of aeromancer 3 is the file "aeromancer3.png". 

To say AeromancerDesc:
	if images visible is 1:
		if item described is ballooned:
			display the figure of aeromancer 3;
		otherwise if the previously-ballooned of item described > 0 or item described is confident aeromancer:
			display the figure of aeromancer 2;
		otherwise:
			display the figure of aeromancer 1;
	say "[if the item described is confident aeromancer or the previously-ballooned of item described > 0]The aeromancer is dressed in a blue sorceress['] outfit, which is open at the front to expose her breasts. You can see  a solid gold wand resting in her hand, glowing faintly as her clothes subtly flow with the direction of the wind. She seems very confident and focused on her goals, whatever they are.[otherwise]The aeromancer is dressed in a sexy but not slutty sorceress['] outfit, complete with what looks like a solid gold wand.  She seems very upbeat and focused on her goals, whatever they are.[end if]";
	if item described is ballooned:
		say "Right now she has inhumanly huge air-inflated breasts and is hovering a foot above the ground.  [variable custom style]Something tells me she's a bit more powerful while she's got those boobs...[roman type][line break]";
	otherwise:
		say "[if the bimbo of the player <= 7 and the player is female][first custom style][one of]She's not that out of the ordinary, I suppose.[or]Where did she get all those clothes?[purely at random][otherwise if the bimbo of the player <= 7][one of]Is that real gold?![or]She probably looks better naked.[at random][otherwise if the bimbo of the player <= 12][variable custom style][one of]That's a cute skirt. I guess.[or]That wand is kind of boner-like. Now that I think about it.[purely at random][otherwise][second custom style][one of]Who needs magic when you can suck dick![or]She's wearing way too much clothing. Everybody knows sluts look better nude![purely at random][end if][roman type][line break]".
	
To set up (M - an aeromancer):
	reset M;
	now the monstersetup of M is 1;
	if inflation fetish is 1:
		now the difficulty of M is 6;
		if M is in the Woods, DifficultyUp M by 2;
		now the health of M is the maxhealth of M;
	otherwise:
		remove M from play;

Definition: An aeromancer (called M) is first level:
	if inflation fetish is 0, decide no;
	decide yes.

Definition: An aeromancer (called M) is second level:
	if inflation fetish is 0, decide no;
	if M is confident aeromancer, decide yes;
	decide no.

To decide which number is the girth of (M - a aeromancer):
	decide on 6.

This is the spawn initial dungeon aeromancer rule:
	if debugmode > 1, say "Now summoning aeromancer.";
	if the number of alive aeromancers in the dungeon is 0 and inflation fetish is 1:
		let M be a random off-stage dungeon dwelling aeromancer;
		summon M in the dungeon.
The spawn initial dungeon aeromancer rule is listed in the setting up dungeon monsters rules.

Definition: an aeromancer (called M) is human:
	decide yes.

To say LeftoverDesc (N - 113):
	say "An unconscious aeromancer on the ground has a [if pregnancy fetish is 1]pregnant looking[otherwise]fully stretched[end if] belly and [semen] slowly flowing out of her asshole.[line break]";

Part 1 - Misc Flavour

To say SummoningFlav of (M - an aeromancer):
	if M is in the dungeon:
		say "[if M is in the location of the player]A space opens up in the centre of the circle, and a surprisingly clothed woman flies through riding on a gust of wind. [speech style of M]Looks like I gust about escaped![roman type] She chuckles at her own terrible pun as the portal closes behind her.[otherwise]You hear a woman chuckling at her own terrible puns.[end if]";
	otherwise:
		say "[if M is in the location of the player]The wind kicks up suddenly, howling fiercely as a surprisingly clothed woman flies through the stone opening between the statue's legs. [speech style of M]'With the right wind in my sails, there[']s nothing I can[']t blow!'[roman type] She lands on her feet, chuckling at her own terrible pun.[otherwise]You hear a woman chuckling at her own terrible puns.[end if]".

To say DiaperReaction of (M - a aeromancer):
	say "The [M] smirks and looks directly at your dampening crotch.  [speech style of M]'[one of][if the class of the player is princess]Princess[otherwise]Pathetic[end if] Pottypants Prefers Peers['] Perception of her Pitiful Panty Peeing.  Haha, I'm a poet and I don't even know it!  Seriously though, you're a disgrace.'[or]Do you get off on me watching you wet yourself, or something?  Gross.'[stopping][roman type][line break]";
	if the humiliation of the player < 15000, say "[one of]You are so ashamed you wish the ground would just open up and swallow you.  [or][stopping]You turn bright red and refuse to look at the [M] in the eye.".

To compute diaper mess reaction of (M - an aeromancer):
	say "The [M] recoils with shock.  [speech style of M]'Are you shitting me?!  Pun not intended!!!  [if M is uninterested]I'm getting out of here.'[otherwise]I'm not going anywhere near that.'[end if][roman type][line break]";
	humiliate 400;
	if M is uninterested:
		bore M;
		while M is in the location of the player:
			compute room leaving of M.

To compute (M - a monster) stomping (N - an aeromancer):
	if M is in the location of the player, say "With lightning speed the [M] grabs the [N] and starts fucking her ass furiously.  She screams in both pleasure and terror and he starts coming inside her within seconds.  Her belly expands in front of her as he fills her up.  After she is full, he tosses her to the ground, where she promptly faints.";
	otherwise say "You hear a girl shout out in a mixture of ecstasy and terror from [if N is nearby]nearby![otherwise]somewhere in the dungeon![end if]";
	destroy N;
	let L be a random off-stage leftover;
	now L is in the location of M;
	now the leftover-type of L is the leftover-type of N.

Part 2 - Perception

To compute appearance assessment of (M - an aeromancer):
	if the player is exposed and the class of the player is not faerie:
		FavourDown M by 2;
		if M is unfriendly:
			say "[speech style of M]'[one of]Aww yeah, combat time!   ..You do realise you look pretty slutty right now, right?'[or]My motto is: ['][if vagina is lewdly exposed]cunt[otherwise if penis is lewdly exposed and penis is tiny]sissy clitty[otherwise if asshole is lewdly exposed]butthole[otherwise if penis is lewdly exposed]willy[otherwise]nipples[end if] on display, it must be okay![']'[or]Ooh, a new subject for my experiments!'[or]You look like you could use some uplifting!'[or]Ooh, yay, I found one!  Let's do this!'[or]Hey there!  Would you rather fight or just let me fuck you?'[then at random][roman type][line break][one of]Uh-oh, she seems unfriendly...[or][stopping]";
			anger M;
			if image cutscenes is 1, display figure of aeromancer interact 10;
		otherwise:
			say "[speech style of M]'[one of]You do realise you look pretty slutty right now, right?  [or]My motto is: ['][if vagina is lewdly exposed]cunt[otherwise if penis is lewdly exposed and penis is tiny]sissy clitty[otherwise if asshole is lewdly exposed]butthole[otherwise if penis is lewdly exposed]willy[otherwise]nipples[end if] on display, it must be okay![']  [then at random]So if you don't want me to fuck you senseless, I'd suggest putting some proper clothes on[if M is not acquaintance] before the next time we meet[end if].'[roman type][line break]She turns away, clearly not currently interested in talking to you.";
			distract M;
			if image cutscenes is 1, display figure of aeromancer interact 11;
	otherwise if the player is in danger or there is a live thing penetrating a body part:
		say "[speech style of M]'Haha, sure looks like you're having fun!'[roman type][line break]";
	otherwise:
		FavourDown M by the science requests of M;
		if M is unfriendly:
			say "[speech style of M]'Okay, I'm officially fed up of asking.  Get on your knees and participate in my experiments before I MAKE you.'[roman type][line break]";
			now the science requests of M is 0;
			if image cutscenes is 1, display figure of aeromancer interact 5;
		otherwise:
			if the class of the player is faerie:
				say "[speech style of M]'[if the science requests of M > 0]You know, my experiments are really fun! I know you[']d love helping if you gave me a chance. Help out before I decide to show you what you[']ve been missing?'[otherwise if the science history of M > 0]Ah, just the fairy I wanted to see! Help me with another experiment!'[otherwise]Hey, want to try out something fun? That's what you fairies are into, right?'[end if][roman type] [yesnolink]";
			otherwise:
				say "[speech style of M]'[if the science requests of M > 0]You know, you should really consider my request.  Before I decide my experiments are a little less... optional.  Come on, surely you'll let me try a new spell out on you?'[otherwise if the science history of M > 0]Hey, fancy helping me out with some more science?'[otherwise]Hey, would you like to help me out with an experiment?'[end if][roman type] [yesnolink]";
			if image cutscenes is 1:
				if the science requests of M is 0:
					display figure of aeromancer interact 6;
				otherwise if the science requests of M is 1:
					display figure of aeromancer interact 7;
				otherwise:
					display figure of aeromancer interact 8;
			increase the science requests of M by 1;
			if the player consents:
				now the science requests of M is 0;
				FavourUp M;
				compute aeromancer science of M;
			otherwise:
				if the class of the player is faerie:
					say "[speech style of M]'[one of]Looks like I need to uplift your expectations!'[or]It[']s about time I aired some grievances!'[or]You won[']t stay this air free for long!'[at random]";
					anger M;
				otherwise:
					say "[speech style of M]'[one of]Fine, have it your way...'[or]Stupid airheads...'[at random][roman type][line break]";
				if image cutscenes is 1, display figure of aeromancer interact 9.

To compute perception of (M - an aeromancer):
	now M is interested;
	if the class of the player is living sex doll:
		say "The [M] notices you[if the player is sluttily dressed].[otherwise]![end if][line break][speech style of M]'Hey there little inflatable sex doll, do you need a top-up?'[roman type][line break]";
		anger M;
		if image cutscenes is 1, display figure of aeromancer interact 14;
	otherwise if M is objectifying the player:
		say "The [M] notices you[if the player is sluttily dressed].[otherwise]![end if][line break][speech style of M]'[one of]Ooh, I can tell that you just can't wait to be played with!'[or]Wow, now that's a [tasty] slut!  Come here pretty girl, let me play with you!'[or]Ooh, yay, I've finally found the perfect subject for my experiments!'[in random order][roman type][line break]";
		anger M;
		if image cutscenes is 1, display figure of aeromancer interact 10;
	otherwise if M is unfriendly:
		say "The [M] notices you[if the player is sluttily dressed].[otherwise]![end if][line break][speech style of M]'[one of]Hi again!  Guess what time I've just decided it is?'[or]Ah, perfect, I was just wondering where my favourite test subject had got to!'[or]Sweet, there you are.  I thought I'd scared you off!'[in random order][roman type][line break][if the player is upright]She takes an aggressive stance.[end if]";
		if image cutscenes is 1, display figure of aeromancer interact 12;
	otherwise if the player is in danger or there is a live thing penetrating a body part:
		say "The [M] notices you[if the player is sluttily dressed]! [otherwise]. [end if][speech style of M]'Fascinating! I'll be back!'[roman type]  [Big he of M] turns to leave you alone."; [###Selkie: The surprise (!) seems more appropriate for the slutty-dressed branch, I think. So I swapped them.]
		distract M;
		if image cutscenes is 1, display figure of aeromancer interact 13;
	otherwise:
		say "The [M] looks you up and down[if the player is sluttily dressed].[otherwise]![end if][line break]";
		compute appearance assessment of M;
	if image cutscenes is 1 and M is interested and M is friendly, display interaction of M.

To display interaction of (M - an aeromancer):
	unless the science requests of M is 0: [we don't want to give an image here if we just did science]
		if M is ally:
			display figure of aeromancer interact 1;
		otherwise if M is buddy:
			display figure of aeromancer interact 2;
		otherwise if M is acquaintance:
			display figure of aeromancer interact 3;
		otherwise:
			display figure of aeromancer interact 4.
					

Part 3 - Aeromancer Science

To compute aeromancer science of (M - an aeromancer):
	increase the science history of M by 1;
	let N be the science history of M;
	if N > 5, now N is 5;
	let R be a random number between 0 and N;
	say "[speech style of M]'[one of]Sweet!  Let's do this.'  [or]Okay, cool!  Here we go...'  [or]Nice!  Right, stay still...'  [at random][roman type]Pointing her wand towards you, the [M] concentrates.  ";
	if R is 0:
		say "You feel your whole body exploding outwards!";
		if the largeness of breasts < max breast size, BustInflate 12;
		AssFill (belly limit - the total fill of belly) air;
		if the total volume of hips < max ass size, AssInflate 7;
		if image cutscenes is 1:
			if the player is flying, display figure of aeromancer cutscene 2;
			otherwise display figure of aeromancer cutscene 3;
	otherwise if R is 1:
		if the raw strength of the player < 20:
			say "You feel your muscles inflate!  The bizarre sensation leaves you feeling stronger but also [if the player is a bit horny]even hotter on the inside[otherwise]you feel like you're getting hotter inside[end if].";
			StrengthUp 1;
		otherwise:
			say "Nothing physical changes, but you feel a weird, strong heat growing at your crotch!";
		arouse 3000;
	otherwise if R is 2:
		let K be a random off-stage pump plug panties;
		let C be a random worn knickers;
		if K is actually summonable:
			summon K cursed;
			say "A [K] materialises on and inside of you!  [variable custom style][if the openness of asshole < 3]Ouch![otherwise if the openness of asshole < 6 or the anal sex addiction of the player < 4]Eek![otherwise]Ooh![end if][roman type][line break]";
		otherwise if the bladder of the player > 0:
			say "Air fills your bladder, putting immense pressure on it!  You can't help but start to wet yourself.";
			now delayed urination is 1;
			try urinating;
		otherwise if C is clothing:
			say "Your [C] is suddenly hit by a beam of light from her wand!";
			potentially transform C;
		otherwise:
			say "Air suddenly forces its way inside your [asshole], stretching your sphincter as it makes its way in!";
			gape asshole times 1;
			AssFill 5 air;
	otherwise if R is 3:
		say "Air whips around you, hitting you from all sides with stinging strikes!";
		DelicateUp 1;
		if unlucky is 1:
			repeat with C running through worn cotton clothing:
				say "Your [C] is ripped apart!";
				destroy C;
	otherwise: [Selkie: it'd be sweet if she could add a step or two to a latex-doll transformation that was underway]
		say "A beam flies straight from her wand to your face!";
		if a random number between 1 and 3 > 1 and the raw largeness of hair < max hair length:
			say "Your hair grows!";
			HairUp 1;
		if a random number between 1 and 3 > 1 and the make-up of face < 3:
			say "Your make up gets thicker!";
			FaceUp 1;
		if a random number between 1 and 4 > 1:
			say "You feel smarter!";
			IntUp 1;
		if a random number between 1 and 3 > 1 and the lips of face < 2 + artificial enhancements fetish:
			say "Your lips get plumper!";
			LipsUp 1;
		say "Your head feels a bit more giddy!";
		OralSexAddictUp 1;
		SexAddictUp 1;
	say "[speech style of M]'[one of]Whew, that was awesome!'[or]Thanks for your help.'[or]Interesting...'[or]Well that was unexpected...'[or]Curiouser and curiouser.'[in random order][roman type]  The [M] writes a scribble in her pocket book and then closes it.".
	
	

Part 4 - Combat

Definition: a aeromancer (called M) is actually interested:
	unless M is unfriendly, decide no.[The aeromancer is interested for the purposes of accepting a presentation, but not for anything else.]

To say SexSubmissionFlav of (M - a aeromancer): [this is customized because I rewrote the scene so the player is floating a couple feet off the ground.]
	let F be a random fuckhole penetrated by M;
	if the delicateness of the player < 13:
		say "[one of]Recognizing how much it will hurt if you fall, you do your best not to resist and hope the [M] will get bored soon.[or]As humiliating as it is to let her have her way, it[']s not like you can do much about it anyway.[or]You try your best not to break the [M]'s concentration. [if the openness of F < 6]It hurts, but it would hurt more if she dropped you.[otherwise]It would hurt if she dropped you.[end if][or]You submit to being used as a plaything.[at random]";
	otherwise:
		say "[one of]You allow the [M] to violate you as much as she likes. She's in charge![or]You laugh heartily at the [M]'s wordplay, hoping she[']ll reward you after.[at random]".

To say SexResistFlav of (M - a aeromancer):
	say "[one of]You hopelessly flail from your position in mid-air, doing everything you can to resist the invasion.[or]Since you're trapped several feet off the ground, you have no real way of resisting, but you still try![or]Your hands pass right through when you try to yank a tentacle out of you, but thanks to your struggling, you feel some very tangible pain![or]You flail around and make as much noise as you can, but no matter how much you try, you can't break the [M]'s concentration[unless M is confident aeromancer] for very long[end if].[or]You frantically try to claw your way to the aeromancer and hopefully get the wand out of her hand, [if the M is confident aeromancer]but she effortlessly holds you at bay[otherwise]but she always manages to keep you just out of reach[end if].[at random]".

Section 0 - Ballooning

[Aeromancers power up and then get higher strength for a while]

An aeromancer has a number called balloon.
An aeromancer has a number called previously-ballooned.
An aeromancer can be wand-empowered. An aeromancer is usually not wand-empowered.

Definition: an aeromancer (called M) is ballooned:
	if M is in the woods:
		if the difficulty of M > 8, decide yes;
	otherwise if the difficulty of M > 6:
		decide yes;
	decide no.

To compute unique early action of (M - an aeromancer):
	compute ballooning of M.

To compute ballooning of (M - an aeromancer):
	if M is ballooned:
		if M is not wand-empowered, decrease the balloon of M by 1;
		if the balloon of M is 1:
			if M is in the location of the player, say "The [M]'s breasts deflate and she returns to the ground.";
			if M is in the Woods, DifficultyDown M by 6;
			otherwise DifficultyDown M by 4;
			now M is flightless;
	otherwise:
		if M is in the location of the player and M is dangerous:
			increase the balloon of M by 1;
			if the balloon of M > a random number between 3 and 8:
				say "[speech style of M]'[one of]I've been waiting for an excuse to use this...'  [or]Ultimate Airbag Transformation - Engage!'  [stopping][roman type]The [M] pushes her wand between her breasts and massages it like a [manly-penis].  You watch [if the bimbo of the player < 6]in horror [end if]as her breasts balloon, quadrupling in size[if M is not confident aeromancer], bursting through her tight top and destroying it permanently[end if]!  They begin to lift her off of the ground until she is hovering gracefully a foot in the air.  [if M is wand-empowered]She's definitely going to be a lot more powerful now.[otherwise]You feel she's probably a lot more powerful until she lands.[end if]";
				now M is airborne;
				if M is in the Woods, DifficultyUp M by 6;
				otherwise DifficultyUp M by 4;
				increase the previously-ballooned of M by 1;
				if image cutscenes is 1, display figure of aeromancer cutscene 1.
	

Section 1 - Attack

To compute the flying player taunting of (M - an aeromancer):[TODO: angry aeromancers actually mess with you.]
	if a random number from 1 to 6 is 1:
		say "The [M] laughs at you.  [speech style of M]'[one of]Enjoying your flight? Hahahaha![or]Is it a bird?  Is it a plane?  No, it's a dumb fat whore![or]I should attach a string to your toe and pull you around like a kite![or]You must be ballooning with humiliation!  Get it? Haha.[or]Don't let all that air get to your head!  Get it?  Because you're air-headed![or]Hey now, it looks like you've blown things way out of proportion!  Bwahaha.[in random order]'[roman type][line break][if the humiliation of the player < 17500]You [one of]wince[or]shudder[or]cringe[purely at random] with shame.";
		humiliate 20.

The latex punishment rule of an aeromancer is usually the no latex punishment rule.

To say LandingTaunt of (M - an aeromancer):
	say "The [M] [if a random number between 1 and 2 is 1]giggles[otherwise]laughs mercilessly[end if].";
	humiliate 50.

To compute fuckhole sex of (M - an aeromancer): [separated these out so it's less confusing to do if statements]
	let F be a random fuckhole penetrated by M;
	if M is confident aeromancer:[The woods aeromancer is a great deal more powerful than the dungeon aeromancer, so not only is she strong enough to violate you with a giant air penis instead of several smaller tentacles, she's also skilled enough that she can do more things with it.]
		if the sex-length of M is 3:
			say "The [M] jeers at you as the magical sex organ fucks you.";
		otherwise:
			say "[one of]The [M] badgers you with taunts as the magical sex organ continues to hammer away.[or]The magic [manly-penis] continues to fuck you. Somehow, the [M] still has enough concentration left over to keep jeering at you.[or]Powerful gusts of wind smack your [BreastDesc] and pull your hair as the magical sex organ hammers away.[or]The magical [manly-penis] continues to drill your [if the soreness of F > 5]tender[end if][F], seemingly emboldened by the [M]'s grating wordplay.[at random]";
	otherwise:
		if the sex-length of M is 3: [The dungeon aeromancer is weaker than the woods aeromancer, so there are signs that she's having trouble coordinating with her tentacles and thinking of puns at the same time.]
			say "The [M] jeers at you as the magical sex organs fuck you.";
		otherwise:
			say "[one of]The [M]'s magic sex organs continue to fuck you.[or]The [M] struggles to come up with more puns as the magic tentacles piston away.[or]The [M] continues to violate you with her magical sex organs.[or]The invisible tentacles continue pistoning away in between her awful puns.[or]The magical tentacles fuck you extra hard when the [M] is having extra trouble coming up with a pun. They might be a relief if they weren[']t so terrible.[at random]";
	say "[speech style of M]'[one of]I think your [if F is asshole]ass[otherwise]cunt[end if] needs some airing out!'[or]After this ravaging, I think you'll be SOREing!  Haha, get it?'[or]Aww, I'm sorry to burst your bubble, but I think I might have punctured your body!  Don't worry, I'll be sure to fill you back up!'[or]I hope you don't feel under pressure to perform!'[or]It may be painful now, but if you get any wounds, you can always HELIUM.'[or]It looks like you[']re really full of hot air!'[or]It's a bird! It's a plane! It's a dick in your [if F is asshole]ass[otherwise]cunt[end if]! Hahaha!'[or]The amount of time you spend getting fucked[if the player is not female] in the ass[end if] must be pretty *high up*![or]I[']d love to talk about a vortex, but sluts like you only care about more sex![in random order][roman type][line break][if the sex-length of M is 3 and the reaction of the player is 0]Despite her awful puns, you still feel humiliated, and you are continuously getting more sore.[line break][end if]"; [There will be puns.]
	if M is penetrating asshole, AssRuin 1;
	otherwise PussyRuin 1;
	decrease the sex-length of M by 1.


To compute anal sex of (M - an aeromancer):
	compute fuckhole sex of M.

To compute vaginal sex of (M - an aeromancer):
	compute fuckhole sex of M.

To compute anal climax of (M - an aeromancer):
	bore M;
	FavourUp M;
	TimesFuckedUp M by 1;
	let N be a random number between 7 and 11;
	say "You feel the tentacles throb in unison, groaning involuntarily as they take turns filling up your belly with gush after gush of compressed air. The [M] screams with delight at your rapidly burgeoning belly, sloppily dropping you on your back before walking over to inspect her handiwork.";
	AssFill N air;
	if N < 6:
		say "She gleefully scribbles something in a small notebook and turns away. Looks like she's finished.";
	otherwise:
		say "She writes something in a small notebook and turns away. Looks like she's finished.".

To compute vaginal climax of (M - an aeromancer):
	bore M;
	FavourUp M;
	TimesFuckedUp M by 1;
	let N be a random number between 3 and 6;
	say "The [M] screams with delight as her magical tentacles climax, taking turns flooding your [vagina] with warm, glittery [semen].  She releases her hold on your body as the gooey fluid soaks into your skin, causing a strange tingling feeling to travel up your torso and into your chest. You watch with [if the bimbo of the player < 7]horror[otherwise if the bimbo of the player < 11]confusion[otherwise]awe[end if] as your boobs balloon in front of you!";
	BustInflate N;
	if image cutscenes is 1, display figure of aeromancer cutscene 5;
	say "The [M] rather sloppily drops you on the ground, [if N > 5]gleefully [end if]writing something in her notebook before losing interest.".

This is the aeromancer tries to curse the player rule:
	if there is a sex doll penetrating a body part and the latex-transformation of the player is 0 and inflation fetish is 1:
		say "The [current-monster] sees what the doll is doing to you and chuckles sadistically.  [speech style of current-monster]'[one of]I've been waiting to try this spell out...'[or]Ooh, another slut I can help make their hobby into a full time occupation.  Lucky you!'[stopping][roman type][line break]You feel her magic flow from her to the doll, and then from the doll to you.  [one of]You feel different, but you can't put your finger on why.  Maybe you feel a tiny bit.. numb?[or]Once again you've been inflicted with the latex doll transformation curse![stopping]";
		now the latex-transformation of the player is 1;
		bore current-monster for 800 seconds;
		now the variety of current-monster is 2;
		rule succeeds;
	otherwise:
		compute the default taunting of current-monster;
		rule succeeds.
The monster fucked taunting rule of an aeromancer is usually the aeromancer tries to curse the player rule.

To compute the dildo stuck taunting of (M - an aeromancer):
	compute the default taunting of M.
	
To compute the default taunting of (M - an aeromancer):
	if the variety of M is 1:
		now the variety of M is a random number between 2 and 4;
		if inflation fetish is 0, now the variety of M is 2;
		if the variety of M is 2:
			say "The [M] points at your [BreastDesc] in a fit of giggles.  [speech style of M]'[one of]It's all in the air as to whether this will help you or not!'[or]It won't be plain sailing, but I think you'll end up over the moon thanks to these enhancements!'[in random order][roman type][line break]You feel them inflating rapidly.";
			if inflation fetish is 1, BustInflate 6;
			otherwise BustUp a random number between 1 and 2;
		otherwise if the variety of M is 3:
			say "The [M] points at your [BellyDesc] whilst uncontrollably chuckling.  [speech style of M]'[one of]Improving people's bellies like this gives me such a lift!  Although I'm afraid you might find it a bit of a drag...'[or]Don't worry baby, I'm sure your fashion style will take off soon.'[or]You're going on the only flight where excess baggage is not only allowed, but encouraged!'[in random order][roman type][line break]You feel it inflating rapidly.";
			AssFill 8 Air;
		otherwise:
			say "The [M] points at your [ShortDesc of hips] whilst uncontrollably chuckling.  [speech style of M]'[one of]Improving people's bodies like this gives me such a lift!  Although I'm afraid you might find it a bit of a drag...'[or]Don't worry baby, I'm sure your fashion style will take off soon.'[or]You're going on the only flight where excess baggage is not only allowed, but encouraged!'[in random order][roman type][line break]You feel it inflating rapidly.";
			AssInflate 5;
	otherwise if the variety of M is 2:
		say "The [M] is still making your [BreastDesc] inflate!";
		if inflation fetish is 1, BustInflate 3;
		otherwise BustUp a random number between 1 and 2;
	otherwise if the variety of M is 3:
		say "The [M] is still making your [BellyDesc] inflate!";
		AssFill 3 Air;
	otherwise if the variety of M is 4:
		say "The [M] is still making your [ShortDesc of hips] inflate!";
		AssInflate 3.

This is the aeromancer settles for hip inflation rule:
	let M be current-monster;
	now the variety of M is 1; [Just in case]
	if asshole is occupied and (the player is male or vagina is occupied):
		say "The [M] seems to settle for inflating your body.  She points at your [ShortDesc of hips] whilst uncontrollably chuckling.  [speech style of M]'[one of]Improving people's bodies like this gives me such a lift!  Although I'm afraid you might find it a bit of a drag...'[or]Don't worry baby, I'm sure your fashion style will take off soon.'[or]You're going on the only flight where excess baggage is not only allowed, but encouraged!'[in random order][roman type][line break]You feel it inflating rapidly.";
		AssInflate 4;
		satisfy M;
		rule succeeds.
The unique punishment rule of an aeromancer is usually the aeromancer settles for hip inflation rule.

To compute (M - an aeromancer) attacking (C - a diaper):
	if asshole is actually occupied or C is messed:
		say "The [M] senses your situation with your [if C is messed]messed[otherwise]already occupied [asshole] and[end if] diaper and decides against penetrating you.  Instead she simply summons more air directly inside your belly!";
		AssFill 5 Air;
		say "The [M] seems satisfied and leaves you alone.";
		distract M;
	otherwise:
		say "The [M] stretches out her arms and hands towards you.  You feel invisible tentacles made of compressed air shoot up your [asshole] with incredible speed.  Somehow the magic sex organs are simply phasing through your [printed name of C][if asshole is actually occupied] and the [printed name of random thing filling asshole][end if]!";
		now M is penetrating asshole;
		now the sex-length of M is 3;
		AssRuin 1.

To say PullAttempt of (M - an aeromancer) at (K - a clothing):
	say "".

To compute (M - an aeromancer) destroying (K - a clothing):
	say "With a flick of two of the [M]'s fingers, sharp air slashes into your [printed name of K], severely damaging it.";
	say "Your [K] have been completely destroyed!";
	destroy K.

To compute (M - an aeromancer) displacing (C - a clothing):
	say "Using her magic manipulation of air, the [M] pulls the [if C is skirted]skirt up, exposing your crotch[otherwise if C is trousers]waistband down to your knees[otherwise]crotch section to one side[end if]!";
	displace C.

To compute (M - an aeromancer) ripping (K - a clothing):
	say "Using her magic manipulation of air, the [M] pulls at both sides of the crotch of your [printed name of K], trying to create a tear in the fabric!  It rips easily!";
	now K is crotch-ripped.

To say WeakenFlav of (M - an aeromancer) on (K - a clothing):
	say "With a flick of two of the [M]'s fingers, sharp air slashes into your [printed name of K], severely damaging it.".

This is the aeromancer monster convinced rule:
	if the latex-transformation of the player > 3:
		now the chosen-orifice of current-monster is asshole;
		say "[speech style of current-monster]'Time to give you a top-up!'[roman type][line break]";
		rule succeeds;
	if presented-orifice is a potential target:
		if a random number between 0 and the intelligence of the player > 1:
			say "[PresentAcceptanceFlav of current-monster]";
			now the chosen-orifice of current-monster is presented-orifice;
			rule succeeds;
		if presented-orifice is face and current-monster is intelligent and there is a worn tongue piercing:
			say "The [current-monster] was about to ignore you, but it seems that your tongue piercing made your request extremely convincing!";
			now the chosen-orifice of current-monster is presented-orifice;
			rule succeeds;
	otherwise if presented-orifice is not nothing:
		say "[PresentRejectionFlav of current-monster]".

To say PresentAcceptanceFlav of (M - an aeromancer):
	say "The [M] laughs at your request.  [speech style of M]'Fine by me.  Let's do this!'[roman type][line break]".

To say PresentRejectionFlav of (M - an aeromancer):
	say "The [M] laughs at your request.  [speech style of M]'Haha, no, that's not going to happen!'[roman type][line break]".

To compute (M - an aeromancer) entering a fuckhole:[this was originally one big block but I separated it because I had to nest [if][end if] statements, and I wasn't sure that would work.]
	now the sex-length of M is 3;
	if the player is monster stuck:
		say "The [M] stretches out her arms and hands towards you, giggling uncontrollably as her wand begins to glow. The air around you compresses itself into shimmering tentacles, which immediately shoot [if M is anal]up your [asshole][otherwise]into your [vagina][end if]. Wind lashes at your skin and clothes as her invisible tentacles begin to ruthlessly fuck you.";
	otherwise:
		say "The [M] stretches out her arms and hands towards you. You yelp as you are suddenly forced several feet off the ground by a powerful gust of wind.  Cackling with glee, the aeromancer uses her mastery of air to buffet you from one end of the [if M is in the Woods]clearing[otherwise]room[end if] to the other, eventually leaving you suspended in the center, at just above waist height. She takes a couple steps forward, barely containing her mirth as you [if the relevant sex addiction of M < 7]desperately try and fail to get purchase on the ground below[otherwise]look up at her in wide-eyed anticipation[end if].";
		say "[speech style of M]'[one of]So, now that you've had some HANG time, I think you're ready for some WANG time!'[or]Uh oh, looks like a pretty strong breeze coming in from the south!'[or]Round and round [if the player is female]she goes, how she got that slutty[otherwise if the player is a sissy]she goes! How she became such a sissy[otherwise]he goes! How hard a fucking can he take[end if], nobody knows!'[or]The wind told me to tell you something! You[']re a slut! Hahahaha!'[in random order][roman type]";
		say "The aeromancer raises her wand, which glows brightly as it compresses the air around you into shimmering tentacles, which immediately shoot [if M is anal]up your [asshole][otherwise]into your [vagina][end if]. Wind lashes at your skin and clothes as her invisible tentacles begin to ruthlessly fuck you.";
	if image cutscenes is 1, display figure of aeromancer cutscene 4.

To compute (M - an aeromancer) entering asshole:
	[if M is friendly-fucking:
		say "[FriendlyAssholePenetrationFlav of M]";
	otherwise:
		]compute M entering a fuckhole;
	now M is penetrating asshole;
	AssRuin 1.

To compute (M - an aeromancer) entering vagina:
	[if M is friendly-fucking:
		say "[FriendlyVaginaPenetrationFlav of M]";
	otherwise:
		]compute M entering a fuckhole;
	now M is penetrating vagina;
	PussyRuin 1.

Definition: an aeromancer (called M) is willing to let go:
	decide no.

To say PresentFriendlyAcceptanceFlav of (M - an aeromancer):
	say "[speech style of M]'Finally! A willing test subject!'[roman type][line break]".

To say FriendlySexReleaseRefusalSpeech of (M - an aeromancer):
	let F be a random fuckhole penetrated by M;
	say "[speech style of M]'[one of]There[']s no release form on this baby!'[or]Sorry, can't hear you over the sound of me fucking your [F]!'[or]We can[']t stop, I need to find a way to combat slut-borne horniness!'[or]I[']d say fuck you, but looks like I[']m doing that already! Hahahaha!'[or]If you[']re telling me to stop, you must be full of hot air. And if you[']re not, you[']re about to be!'[in random order][roman type][line break]".

To say StrikingSuccessFlav of (M - an aeromancer) on (B - a body part):
	say "An invisible whip made of air whacks you [TargetName of B]!  Ouch!!".

To compute (S - a spike bra) damaging (M - an aeromancer):
	say "You see the [M] flinch back in pain as her air whip strikes your [printed name of a random spike bra worn by the player].  The attack was somehow reflected!";
	decrease the health of M by 3;

To say StrikingFailureFlav of (M - an aeromancer) on (B - a body part):
	say "The [M] tries to whip you with an invisible strand of air, but by listening to the sound you manage to jump to one side and dodge the strike!".

To compute tripping attack of (M - an aeromancer):
	say "A strong gust of wind flies past your [feet], threatening to trip you up and throw you to the ground!";
	let D be the tripping roll of M;
	if debugmode is 1, say "Player [dexterity of the player] | [D].5 Aeromancer[line break]";
	if D >= the dexterity of the player and M is not-blinded:
		say "[MonsterTrippedFlav of M]";
		try kneeling;
		if the player is prone, check attack of M;
	otherwise:
		say "[MonsterFailedTripFlav of M]";
		if M is blinded and a random number between 1 and 2 is 1:
			say "The [M] is no longer blind!";
			now M is not-blinded.

To say MonsterTrippedFlav of (M - an aeromancer):
	say "You flail wildly [if the player is ankle bound]but you can't move your legs far enough apart to maintain your balance.  You[otherwise]and[end if] fall to the ground!".

To decide which number is the tripping max of (M - an aeromancer): [Giving the aeromancer her own tripping max function since she doesn't use hair to trip the player.]
	if attack-type is 0 or attack-type is 1:
		if the trip hazard of the player <= 0, decide on 0;
		otherwise decide on 1; [if the player slapped or stood still they are not off-balance so tripping is always minimum likelihood]
	if the living belt of sturdiness is worn and the living belt of sturdiness is not cursed, decide on 0;
	let D be the difficulty of M;
	decrease D by the weight of the player;
	increase D by the trip hazard of the player;
	if the slipperiness of the location of the player > a random number between 1 and 5, say "The slipperiness of the floor is making it much more difficult to avoid falling!";
	if the player is ankle bound, increase D by 3;
	if attack-type is 2, now D is D / 4;
	if D < 1, decide on 1;
	decide on D.

To compute SelectionFailure of (M - an aeromancer):
	say "The [M] finds herself unable to use you how it planned, and seems to settle for casting a simple spell.  ";
	now the variety of M is 1;
	compute the default taunting of M;
	bore M.

Section 2 - Damage			

To compute damage of (M - an aeromancer):
	if the health of M > 0:
		if M is uninterested or M is friendly:
			say "The [noun] notices you and takes an aggressive stance![if M is friendly][line break][speech style of M]'Fuck you, bitch, I was going to leave you alone!  Maybe you are looking for a fuck after all.'[roman type][line break][end if]";
			anger M;
			now M is interested;
		otherwise:
			anger M;
			now M is interested;
			say DamageReaction (the health of M) of M;
	otherwise:
		if the health of M <= 0 and M is not dying: [If she is dying that means she was dominated and had her wand stolen]
			compute death of M.

To say DamageReaction (N - a number) of (M - an aeromancer):
	if N > (the maxhealth of M / 4) * 3:
		say "The [noun] takes the hit, giggling!";
	otherwise if N > (the maxhealth of M / 4) * 2:
		say "The [noun] takes the hit, wincing!";
	otherwise if N > (the maxhealth of M / 4):
		say "The [noun] take the hit, yelping!";
	otherwise:
		say "The [noun] takes the hit, [if M is confident aeromancer]angrily fighting to[otherwise]tears streaming down her face she fights to[end if] maintain her balance!";

To compute unique death of (M - an aeromancer):
	let P be a random off-stage golden phallus;
	let B be a random off-stage plentiful bracelet;
	if a random number between 1 and 2 is 1 and P is golden phallus:
		say "The [noun] drops the ground, dead.  She disappears, leaving behind her golden wand.  Most of the wand slowly fades away, leaving only the tip, which you can't help but notice [if the bimbo of the player < 8]is shaped like a [printed name of P][otherwise]would make a perfectly usable dildo[end if].";
		now P is in the location of the player;
		compute autotaking P;
	otherwise if B is bracelet:
		now B is solid gold;
		set shortcut of B;
		say "The [noun] drops the ground, dead.  She disappears, leaving behind her golden wand.  Most of the wand slowly fades away, leaving only the tip, which curls up on itself into a vague doughnut shape before settling into the form of a [printed name of B].";
		now B is in the location of the player;
		compute autotaking P;
	otherwise:
		say "The [noun] drops the ground, dead.  After a couple of seconds, her body disappears.".

Part 5 - Dominant Sex

To decide which number is the physical dominance roll for (M - an aeromancer):
	let R be the intelligence of the player - the difficulty of M;
	if debugmode > 0, say "Wand check = [R].[line break]";
	if R < 0 and the intelligence of the player < 15, decide on -1;[You can only have sex with the aeromancer if her wand is willing to accept you.]
	if debugmode > 0, say "Aeromancer chastity check...[line break]";
	if there is a worn research airhancer, decide on -1;
	decide on 0.

To say DominanceSuccess of (M - an aeromancer):
	if the size of penis <= 0 or the player is female:
		say "You force the [M] onto her back, greedily yanking the wand out of her hands. It seems to react to your touch, crackling with energy as the aeromancer's clothes transform into a set of solid gold chains. You grin. [variable custom style]'How about a taste of your own medicine?'[roman type] She frantically shakes her head, but since you don't care about her opinion anyway, you immediately jam the fat end of the wand up her ass. You fuck her mercilessly, revelling in her groan of discomfort as air rushes inside of her, visibly distending her belly. She glares at you as you withdraw your new prize.[AfterDominationComment 5 of M]";
	otherwise if a random number between 1 and 3 is 1 or the player is desperate to pee and watersports fetish is 1:
		if the player is desperate to pee and watersports fetish is 1:[Watersports]
			watersports dominate M;
			say "[AfterDominationComment 3 of M]";
		otherwise:[Oral]
			oral dominate M;
			if the size of penis >= 4, say "[AfterDominationComment 5 of M]";
			otherwise say "[AfterDominationComment 4 of M]"; [Tiny penises = no wand for you!]
	otherwise if a random number between 1 and 2 is 1:[Anal]
		anal dominate M;
	otherwise:[Vaginal]
		vaginal dominate M.
		
To watersports dominate (M - an aeromancer):
	if the size of penis >= 9:
		say "You force the [M] to her knees, wresting the wand out of her hands. It seems to react to your touch, crackling with energy as a ring of solid gold forces her mouth wide open. You grin. [first custom style]'If you can deepthroat, I'll give it back.'[roman type] She trembles with fear at the sheer size of your [ShortDesc of penis], but after a moment she bows her head and slowly unzips her jacket to reveal a pair of pert C cup breasts. Not concerned with receiving a more formal invitation, you grab her by the hair and jam her face-first onto your [player-penis]. Tears well up in her eyes as your tip brushes the back of her throat, not even halfway there. You shake her back and forth like a rag doll, revelling in the sound of her gagging. Eventually you grow bored and shove her off your [manly-penis]. She gasps for air, eyes glued to the wand you still have clutched in your hand. [first custom style]'You couldn't do it. Too bad.'[roman type] you chuckle, releasing your hold on your bladder and directing a golden stream of [urine] into her face.";
		Dignify 60;[very empowering.]
	otherwise if the size of penis >= 7:
		say "You force the [M] to her knees, wresting the wand out of her hands. It seems to react to your touch, crackling with energy as a ring of solid gold forces her mouth wide open. You grin. [first custom style]'If you can deepthroat, I'll give it back.'[roman type] She slowly nods and unzips her jacket to reveal a pair of pert C cup breasts. Leaning forward, she takes your [ShortDesc of penis] into her mouth, stalling out about halfway. The generous person you are, you decide to help. You take a handful of her hair and roughly slam her down, revelling in her lewd gagging noises as she repeatedly tries and fails to take it all. Eventually you pull her off and piss all over her face.";
		Dignify 35;
	otherwise if the size of penis >= 4:
		say "You force the [M] to her knees, wresting the wand out of her hands. It seems to react to your touch, crackling with energy as a ring of solid gold forces her mouth wide open. You grin. [first custom style]'If you can deepthroat, I'll give it back.'[roman type] She slowly nods and unzips her jacket to reveal a pair of pert C cup breasts. Leaning forward, she takes your [ShortDesc of penis] into her mouth, stalling out about three quarters of the way. The generous person you are, you decide to help. You take a handful of her hair and roughly slam her down, revelling in the lewd gagging noise she makes as her lips very nearly reach your balls. But that's not enough. You hold her down and immediately begin pissing straight down her throat. Tears well up in her eyes as she swallows it, clearly very disgusted.";
		Dignify 30;
	otherwise:
		say "You force the [M] to her knees, wresting the wand out of her hands. It seems to react to your touch, crackling with energy as her clothes disappear completely, leaving her naked. [speech style of M]'Wait! That's mine!'[roman type] She grabs for it, but you hold it just out of reach. [variable custom style]'If you want it back you're going to have to blow me away.'[roman type] She takes one look at your [ShortDesc of penis] and begins giggling uncontrollably. Infuriated, you smack her in the face and grab her by the hair so she can't move as you shower her with hot [urine]. She takes it silently, yanking the wand out of your hand as soon as your guard is down!";
		Dignify 20;
	now the bladder of the player is 0.

To oral dominate (M - an aeromancer):
	if the size of penis >= 9:
		say "You force the [M] to her knees, wresting the wand out of her hands. It seems to react to your touch, crackling with energy as her clothes disappear completely, leaving her naked. [speech style of M]'Wait! That's mine!'[roman type] she grabs for it, but you hold it just out of reach. [first custom style]'If you want it back you're going to have to blow me away.'[roman type] You put extra emphasis on the word blow. After an extended stare at your [ShortDesc of penis], she nods and unzips her jacket to reveal a pair of pert C cup breasts. You don't need any more motivation than that to grab her by the hair and jam her face first onto your [player-penis]. She gags, clawing at your hands as you brutally fuck her face. It doesn't take long at all for you to reach orgasm, grunting primally as your [load] shoots straight down her throat. You chuck her to the side when you're finished. Looks like you just earned yourself a wand!";
		Dignify 20;
	otherwise if the size of penis >= 7:
		say "You force the [M] to her knees, wresting the wand out of her hands. It seems to react to your touch, crackling with energy as her clothes disappear completely, leaving her naked. [speech style of M]'Wait! That's mine!'[roman type] she grabs for it, but you hold it just out of reach. [first custom style]'If you want it back you're going to have to blow me away.'[roman type] You put extra emphasis on the word blow and brandish your [ShortDesc of penis]. She nods, unzipping her jacket to reveal a pair of pert C cup breasts. You rest your hand on her head as she leans forward and begins to suck. Surprisingly, she's really good at it, and quickly brings you to the edge of orgasm using only her mouth. She tries to pull up at the last moment, but you catch her and hold her down as your [load] rushes down her throat.";
		Dignify 10;
	otherwise if the size of penis >= 4:
		say "You force the [M] to her knees, wresting the wand out of her hands. It seems to react to your touch, crackling with energy as her clothes disappear completely, leaving her naked. [speech style of M]'Wait! That's mine!'[roman type] she grabs for it, but you hold it just out of reach. [first custom style]'If you want it back you're going to have to blow me away.'[roman type] You put extra emphasis on the word blow. She nods, unzipping her jacket to reveal a pair of pert C cup breasts. You rest your hand on her head as she leans forward and begins to suck. Surprisingly, she's really good at it, and quickly brings you to the edge of orgasm using only her mouth. She pulls up at the last moment, pumping your [ShortDesc of penis] until it paints her face with its [load].";
		Dignify 5;
	otherwise:
		say "You force the [M] to her knees, wresting the wand out of her hands. It seems to react to your touch, crackling with energy as her clothes disappear completely, leaving her naked. [speech style of M]'Wait! That's mine!'[roman type] she grabs for it, but you hold it just out of reach. [first custom style]'If you want it back you're going to have to blow me away.'[roman type] You put extra emphasis on the word blow and brandish your [ShortDesc of penis]. She takes one look at it and begins to giggle. [speech style of M]'Ok, sure.'[roman type] You puff out your chest in satisfaction at having dominated her, not noticing until too late as the aeromancer takes in an enormous gulp of air and releases a focused blast of wind at your crotch. A feminine moan escapes your lips as you instantly ejaculate, your [load] of [semen] splattering across your belly and thighs. You stand there dumbfounded as she yanks the wand from your hands.";
		CumThighsUp 1;
		CumBellyUp 1;
	orgasm.

To vaginal dominate (M - an aeromancer):[TODO: Consolidate]
	if the size of penis >= 9:
		say "You force the [M] onto her back, knocking the wand out of her hand. It seems to react to your touch, crackling with energy as solid gold chains appear all over the aeromancer's body and bind her up like a thanksgiving turkey. You smile from ear to ear, smacking your [ShortDesc of penis] into your hand like a fleshy nightstick. [speech style of M]'What are you going to do with me?'[roman type] You offer a silent answer, lining up your [player-penis] with her slit.  [speech style of M]'W-wait a second! I can't take a [manly-penis] that big!'[roman type] she says it quickly, but it's too late. You slam yourself forward, revelling in her scream of pain as your [manly-penis] sinks into her incredibly tight pussy. She treats you to a sweet song of shrieking protests as you fuck her, eventually succumbing to the sensation as she creams all over your [player-penis]. You laugh menacingly and slow down slightly. [first custom style]'Where are your manners, bitch. You're not supposed to cum before I do.'[roman type] She opens her mouth to answer, but you smack her in the face. It's punishment time baby! You give her the most brutal fucking you can muster, holding back your orgasm until you know she's nearing the edge, and slam your [manly-penis] in as far as it will go. She squirms as you unload into her pussy, her shrieks tinged with desperate pleasure. You don't stop until you literally can't fit any more of your cum inside her, pulling out and painting her naked stomach with a [load]. She trembles from head to toe, gulping in air as the chains, and her remaining clothes, disappear.[AfterDominationComment 8 of M]";
		Dignify 70;[vaginal sex is the rarest, so it has the best 'loot']
	otherwise if the size of penis >= 7:
		say "You force the [M] onto her back, knocking the wand out of her hand. It seems to react to your touch, crackling with energy as solid gold chains appear all over the aeromancer's body, binding her up like a thanksgiving turkey. You smile from ear to ear, smacking your [ShortDesc of penis] into your hand like a frozen sausage. [speech style of M]'What are you going to do with me?'[roman type] You offer a silent answer, lining up your [player-penis] with her slit. [speech style of M]'Please, use my ass instead!'[roman type] she says quickly, but it's too late. You slam yourself forward, revelling in her yelp of pain as your [manly-penis] sinks into her tight pussy. That, combined with the sweet song of her whimpering protests, brings you to the edge in a short time. You grab her hips, sinking yourself deeper and deeper until your balls slap the nape of her ass. She shudders as you cum, her eyes wide and her teeth clenched while you shoot rope after rope of nice hot [semen] straight into her defenceless honeypot. You pull out and wipe your [player-penis] on her inner thigh when you're done. The chains, and her remaining clothes, disappear.[AfterDominationComment 5 of M]";
		Dignify 45;
	otherwise if the size of penis >= 4:
		say "You force the [M] onto her back, knocking the wand out of her hand. It seems to react to your touch, crackling with energy as solid gold chains appear all over the aeromancer's body and bind her up like a thanksgiving turkey. You smile from ear to ear, smacking your [ShortDesc of penis] into your hand like a fleshy carrot. [speech style of M]'What are you going to do with me?'[roman type] You offer a silent answer, lining up your [player-penis] with her slit. [speech style of M]'Please, use my ass instead!'[roman type] she says quickly, but it's too late. You slam yourself forward, revelling in her look of horror as your [manly-penis] sinks into her tight pussy. She whimpers through the rough fuck, completely powerless to stop you as you jack-hammer yourself to a gut clenching orgasm. You howl in pleasure as you unload, burying yourself to the hilt so every drop of your [load] ends up in her pussy. She shudders as you pull out and wipe your [player-penis] on the side of her leg. The chains, and her remaining clothes, disappear.[AfterDominationComment 5 of M]";
		Dignify 25;
	otherwise:
		say "You force the [M] onto her back, knocking the wand out of her hand. It seems to react to your touch, crackling with energy as solid gold chains appear all over the aeromancer's body and bind her up like a thanksgiving turkey. You smile from ear to ear, smacking your [ShortDesc of penis] into your hand like a fleshy tube of lipstick. [speech style of M]'What do you think you're going to do with me?'[roman type] she asks, a noticeable hint of mirth in her voice. You offer a silent answer, lining up your [player-penis] with her slit. [speech style of M]'O-oh. W-well, uh. I um, feel really bad for you, so you can fuck my pussy if you want. Just don't cum inside.'[roman type] You decide that's pretty fair, emitting a feminine grunt as you push forward, allowing your [sissy-penis] to slightly part her folds. She sighs and moans here and there, just tight enough to feel you, but in the same way that she would probably feel a finger or the end of a sharpie. It's much more intense for you, though, and before long you pull out and spray her bare stomach and breasts with your [load]. She sits up when the chains disappear, yanking the wand from your hand.[AfterDominationComment 7 of M]"; [MG notes: "If you look at her dominance reward functions you'll notice that you simply don't receive a wand at certain penis sizes."]
		Dignify 5;
	orgasm.

To anal dominate (M - an aeromancer):
	if the size of penis >= 9:
		say "You force the [M] onto her back, ripping off her panties to reveal her pussy. She begins to raise her wand, but you immediately yank it out of her hands. It seems to react to your touch, crackling with energy as her clothes disappear completely, leaving her naked. Her eyes widen at your sheer size. [speech style of M]'W-wait! I can't take a [manly-penis] that big in my pussy. Please use my ass instead.'[roman type] What a baby. You flip her over onto her stomach, spitting on your [ShortDesc of penis] before roughly slamming it into her ass. She arches her back and moans in pleasure as you begin to thrust. It doesn't take too long for you to come, groaning primally as you fire off your [load] deep inside her belly. You pull out when you're done and make sure to paint her honey pot with a few short ropes, as if to let her know you might not spare her next time.[AfterDominationComment 5 of M]";
		Dignify 15;
	otherwise if the size of penis >= 7:
		say "You force the [M] onto her back, pulling up her skirt and ripping off her panties. She begins to raise her wand, but you immediately yank it out of her hands. It seems to react to your touch, crackling with energy as her clothes disappear completely, leaving her naked. Her eyes widen as you line up your [ShortDesc of penis] with her pussy. [speech style of M]'W-wait! Don't you want to fuck my ass instead?'[roman type] She rolls over onto her hands and knees, reaching back and pointing your [manly-penis] at her asshole. It's not convincing, but you're in a merciful mood, so you grab her by the hips and groan as you slide your [manly-penis] into her asshole. She does all the work, panting with mixed arousal and exertion as she slowly brings you to orgasm. It doesn't take long, but she's covered in a fine sheen of sweat by the time you finally do fire off your [load] into her ass. You make sure to wipe off the leftovers very close to her pussy when you pull out.[AfterDominationComment 5 of M]";
		Dignify 7;
	otherwise if the size of penis >= 4:
		say "You force the [M] onto her back, pulling up her skirt and ripping off her panties. She begins to raise her wand, but you immediately yank it out of her hands. It seems to react to your touch, crackling with energy as her clothes disappear completely, leaving her naked. Her eyes widen as you line up your [ShortDesc of penis] with her pussy. [speech style of M]'W-wait! Don't you want to fuck my ass instead?'[roman type] She rolls over onto her hands and knees, reaching back and pointing your [manly-penis] at her asshole. It's not convincing, but you're in a merciful mood, so you grab her by the hips and groan as you slide your [manly-penis] into her asshole. She does all the work, panting from exertion as she slowly brings you to orgasm. You tighten your grip and slam yourself home as you fire off your [load] deep inside her ass. She looks over her shoulder.[AfterDominationComment 5 of M]";
		Dignify 5;
	otherwise:
		say "You force the [M] onto her back, pulling up her skirt and ripping off her panties. She begins to raise her wand, but you immediately yank it out of her hands. It seems to react to your touch, crackling with energy as her clothes disappear completely, leaving her naked. She puts her hand on your shoulder as you line up your [ShortDesc of penis] with her pussy. [speech style of M]'Um, I know you're trying to dominate me and all, but I'm not going to feel anything from a [player-penis] that tiny.'[roman type] You tremble with humiliation, knowing she's probably right. [speech style of M]'I won't let you put it in my pussy, but I feel bad for you, so you can use my ass.'[roman type] She lays down on her stomach, pulling apart her asscheeks as you push your [sissy-penis] into her asshole. You lay back and let her do all the work, moaning in pleasure as she brings you to orgasm in a very short time. She gently takes the wand from you when you're done, your [load] clinging to the backs of her thighs.[AfterDominationComment 7 of M]";[no dignity bonus]
	orgasm.

To say AfterDominationComment (N - a number) of (M - an aeromancer):
	say "[speech style of M]";
	if N is 1:
		say "'[one of]Y-you... You'll regret that!'[or]Aah...Aaah. You won't get away with that.'[in random order]";
		compute AfterDominationResult 2 of M;
	if N is 2:
		say "'[one of]Hmm. I guess I have some practising to do.'[or]That didn't go as planned.'[or]I promise I won't let you win next time!'[in random order]";
		compute AfterDominationResult 1 of M;
	if N is 3:
		say "'[one of]YUCK! I'll get you back for that you know.'[or]GROSS! I'll get you back for that.'[in random order]";
		compute AfterDominationResult 2 of M;
	if N is 4:
		say "'[one of]I'm going to have LOTS of fun experimenting on you later.'[or]Watch out. Now you've really put some wind in my sails...'[or]The experiments I have planned for you later are going to blow you away.'[in random order]";
		compute AfterDominationResult 1 of M;
	if N is 5:
		say "'[one of]When I get my wand back, you'd better watch out.'[or]When I get my wand back, watch out.'[or]Don't think you'll get away with this, I'll get my wand back.'[in random order]";
		compute AfterDominationResult 3 of M;
	if N is 6:
		say "'[one of]That was fun. It's going to be even more fun next time we meet.'[or]That was a blast. Let's switch places next time we meet.'[in random order]";
		compute AfterDominationResult 1 of M;
	if N is 7:
		say "'[one of]You won't be that lucky next time.'[or]You were really lucky to beat me. It's going to be different next time.'[in random order]";
		compute AfterDominationResult 2 of M;
	if N is 8:
		say "'[one of]I w-won't mess with you until I get my wand back.'[or]I-I'll leave you alone until I get my wand back.'[in random order]";
		compute AfterDominationResult 3 of M.

To compute AfterDominationResult (N - a number) of (M - an aeromancer):
	say "[roman type][line break]";
	if N is 1:
		say "The [M] disappears into thin air!";
	if N is 2:
		say "A gust of wind picks up the [M] and whisks her away!";
	if N is 3:
		say "The [M] crawls away as soon as she has the strength. You've got a feeling you won't be seeing her again.";
		destroy M;
	otherwise:
		replace M after domination;
	if N > 1, say "You feel more [if the player is male]manly[otherwise]dominant[end if]!".

To say DominanceFailed of (M - an aeromancer):
	say "[line break]A gust of wind picks up the [M] and carries her away, leaving you to stew in your own embarrassment as your chains dissolve into thin air.".

To compute successful dominance of (M - a aeromancer):
	compute unique dominance reward of M;
	if the player is male, check virginity;
	if the size of penis > 3 and the size of penis > 0:
		now a random magic wand is held by the player;
		DifficultyUp M by 4;
	increase the times-dominated of M by 1;
	DifficultyUp M by 2.

To say DominanceFailure of (M - an aeromancer):
	say "You shove the [M] to the ground and wrench the wand from her hand. It heats up in your gasp, emitting blue sparks as golden chains explode from the tip, twisting rapidly in the air before coiling tightly around your body. The [M] smirks as the wand floats back to her, forcing you to your knees with [if M is confident aeromancer]a tiny flick[otherwise]an exaggerated flourish[end if] of her wrist.".

To compute failed dominance punishment of (M - an aeromancer):
	if the size of penis is 0:
		repeat with C running through worn total protection clothing:
			say "The [M] tears through your [printed name of C] with a strong gust of wind![line break]";
		bore M;
		if there is a worn insertable thing penetrating asshole:
			let P be a random insertable thing penetrating asshole;
			say "[speech style of M]What I have planned for you is pretty corked up![roman type] The [M] taps your [printed name of P] with her wand, [if P is expansion]causing your belly to suddenly expand with what feels like a lot of air[otherwise]causing your plug to suddenly expand, shunting a lot of air into your belly[end if].";
			if P is expansion:
				AssFill 5 Air;
			otherwise:
				SizeUp P by 1;
				AssFill 1 Air;
				now P is expansion;
		otherwise:
			say "[speech style of M]This next experiment is really going to [if belly liquid types > 0]suck[otherwise]blow[end if]![roman type] The [M] presses the tip of her wand to your belly button, laughing uncontrollably as your belly expands audibly with a rush of air.[if belly liquid types > 0] You hear a gurgle as the liquid contents of your belly are shunted out the other end![end if]";
			SemenPuddleUp the semen volume of belly;
			now the semen volume of belly is 0;
			MilkPuddleUp the milk volume of belly;
			now the milk volume of belly is 0;
			UrinePuddleUp the urine volume of belly;
			now the urine volume of belly is 0;
			AssFill 10 Air;
	otherwise if the size of penis < 3 or a random number between 1 and 7 < the science history of M:
		humiliate 50;
		compute tornado experiment of M;
	otherwise:
		let T be a random off-stage research airhancer;
		if T is actually summonable:
			say "[speech style of M]'I think you[']ll find my methods to be airtight!'[roman type][line break]The [M] touches her wand to your [ShortDesc of penis], chanting under her breath as air swirls around your length. You watch as a semi-transparent sheet of compressed air layers itself over your shaft, causing your [if the player is a bit horny]erection[otherwise]half-erection[end if] to slowly go away as a golden bracelet materializes around your wrist.[line break][speech style of M]I call this my research airhancer. Get it? AIR-hancer?[roman type] She pauses to laugh uncontrollably. [speech style of M]So, this thing monitors the air pressure in your belly, and you're ready for a touch-up, it should keep your dick from getting hard. No more sex for you unless you're a good little test subject and help out with my experiments! I'm pretty sure I'm the only one who can take it off, but hey, I guess you can't blow it until you try! Hahaha!'[roman type]";
			summon T;
			calm M;
		otherwise:
			say "[speech style of M]'This experiment-... You won't believe-... Ugh. You threw off my train of thought. I'll be back.'[roman type] The [M] turns and begins to leave, but it looks like the game isn't done with you yet!";
			compute sissification;
			DifficultyUp M by 1;
			if the size of penis > 0:
				PenisDown 1;
				say "Your penis shrinks into a [ShortDesc of penis]!";
		bore M.

To compute tornado experiment of (M - an aeromancer):
	say "[speech style of M]I[']m sorry about this experiment. It really blows loads![roman type][line break] A tiny tornado flows out of the tip of her wand, grabbing your [ShortDesc of penis] and locking it in a prison of powerful suction. [run paragraph on]";
	if the size of penis >= 9 or the health of M < 3:
		say "It feels incredible for a moment, but the cone dissipates after only a couple seconds. [speech style of M]'Wow, looks like I[']m gonna have to turn up the juice!'[roman type] The [M] furrows her brow as she raises her wand again, chanting under her breath as a second wind tunnel twice as large as the original slowly flows from the tip of her wand, sucking in air from all around you as it assaults your penis with a rapidly intensifying vortex of pressure. The aeromancer struggles to maintain the spell, clothes ruffling in the wind and eventually tearing off as the suction builds and builds, torturing you with an ever mounting onslaught of pleasure.";
		if the science history of M > 4 or M is confident aeromancer :[worse punishment from the skilled aeromancer]
			say "[line break]You suddenly lose control, groaning as your [ShortDesc of penis] explodes into the cone, which sends your [semen] flying across the room in every direction. The [M] stands up slowly[if bukkake fetish is 1], thoroughly coated in your load[otherwise], [one of]obviously surprised at[or]pleased with[stopping] her own strength[end if].";
			SemenPuddleUp the size of penis;
			if bukkake fetish is 1:
				CumFaceUp 1;
				CumTitsUp 1;
				CumThighsUp 1;
				CumBellyUp 1;
			Satisfy M;
		otherwise:
			say "[line break][speech style of M]Oh Shi-![roman type] The [M] suddenly loses control, screaming as she is pulled face first into the vortex and directly onto your rock hard cock. She gags lewdly as your [ShortDesc of penis] slams into the back of her throat, which is that last little push that finally sends you over the edge. You groan as your cock unloads into her mouth, filling her belly with wave after wave of your [semen]. She collapses in front of you, [if bukkake fetish is 1]lines of white rolling down her chin[otherwise]shivering[end if] as she clutches her heavily distended belly.";
			Bore M;
		orgasm;
	otherwise:
		say "It feels incredible! The aeromancer makes sure not to let you enjoy it though, deviously manipulating the width of the tunnel according to the intensity of your moans. [if the size of penis >= 7]She holds your dick hostage for what feels like an eternity, cruelly releasing you from the spell just before you're able to cum[otherwise]She holds your dick hostage for what feels like an eternity, cruelly releasing you from her spell just after you go over the edge, ensuring that your orgasm is as short and unsatisfying as possible[end if]. You can't help your [if the delicateness of the player < 7]infuriated[otherwise]pleading[end if] stare as she slowly climbs to her feet.";
		if the size of penis < 7:
			orgasm;
		Arouse 3000;
		satisfy M;
	increase the science history of M by 1.

Part 6 - Conversation

Section 1 - Greeting

To say FirstResponse of (M - an aeromancer):
	say "[speech style of M]'Well hello there.  You look quite... unique.'[roman type][line break]";
	if image cutscenes is 1, display figure of aeromancer interact 15.

To say RepeatResponse of (M - an aeromancer):
	say "[speech style of M]'[if M is buddy][one of]Oh it's you again.  Sup.'[or]Hey. Got any good puns to do with air?'[or]Good to see you again.'[at random][otherwise][one of]Oh it's you.  I thought I smelled something funny.'[or]Oh it's only you.'[or]We just keep bumping into each other, don't we.  You're not stalking me, are you?'[at random][roman type][line break]";
	if image cutscenes is 1, display figure of aeromancer interact 16.

To say UnfriendlyResponse of (M - an aeromancer):
	say "[speech style of M]'[if the class of the player is faerie][one of]Hmm, most fairies are obsessed with getting pregnant, but it seems like all you care about is sex!'[or]I knew you[']d love my experiments, lucky for you I'm close to a blow through! Hahaha!'[then at random][otherwise][one of]Hmm, strange decision to show your face here again.'[or]Ready for some more science?'[or]Hahaha...your eagerness to be a test subject pleases me greatly!'[at random][end if][roman type][line break]";
	if image cutscenes is 1, display figure of aeromancer interact 2.

To say DominantResponse of (M - an aeromancer):
	if the class of the player is faerie:
		say "[speech style of M]'[one of]I know what you[']re going to say, but I[']m too busy for you to be messing with me right now. Trust me, it's more fun when I do it to you.'[or]No time for your fairy mischief or whatever, I[']m busy!'[at random][roman type][line break]";
	otherwise if the class of the player is vixen:
		say "[speech style of M]'[one of]Wow, you again? I thought you[']d be wearing a disguise after I embarrassed you like that. You must be really confident.'[or]Wow, it's you! Sorry, but have you ever thought about how awful you are at running away?'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[if M is buddy]Hey there.  I'm glad we can still be friends after what I did to you earlier.'[otherwise]Why are you talking to me?  Shouldn't you be angry at me or something?'[end if][roman type][line break]";
	if image cutscenes is 1, display figure of aeromancer interact 2.

To say midDominanceResponse of (M - an aeromancer):
	say "[speech style of M]'[if the class of the player is faerie]You're talking to me? Just like a fairy to be carefree in a situation like this...'[otherwise]Why are you talking to me?  Seems to me like you have bigger fish to fry right now...'[end if][roman type][line break]";
	if image cutscenes is 1, display figure of aeromancer interact 2.

To say asDominantResponse of (M - an aeromancer):
	say "[speech style of M]'[one of]Quit interrupting me, I[']m trying to come up with another pun![or]Shut up, I'm trying to come up with another pun.'[or]Ugh, you just ruined a really good pun!'[or]Stop interrupting, I need to come up with another pun.'[at random][roman type][line break]";
	if image cutscenes is 1, display figure of aeromancer interact 17.

To say SubmissiveResponse of (M - an aeromancer):
	if there is a held magic wand:
		say "[speech style of M]'Give me back my stuff, you jerk!'[roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Stop blowing out your mouth when I should be blowing up your ass!'[or]If you[']re going to hiss at me, I want to hear it from your other end!'[at random][roman type][line break]";
	if image cutscenes is 1, display figure of aeromancer interact 9.

Section 2 - Questioning

To compute annoyance of (M - an aeromancer):
	if M is uninterested:
		say "The aeromancer doesn't seem to realize you are talking to her.[line break]";
	otherwise if M is unfriendly:
		say "The aeromancer ignores your question.  [speech style of M]'Too much talking, not enough science.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Okay that's enough questions now.  I'm a busy woman, you know.'[roman type][line break]";
	if image cutscenes is 1, display figure of aeromancer interact 17.

To compute teaching of (M - an aeromancer):
	say "[speech style of M]'Are you a fan of alchemy?  If I tell you a secret you have to promise not to tell anyone...'[roman type][line break]";
	if image cutscenes is 1, display figure of aeromancer interact 17;
	teach fastcrafting;
	if the questioned of M <= 290:
		increase the questioned of M by 100;
	otherwise:
		increase the questioned of M by 50.

To say WhereAnswer of (M - an aeromancer):
	say "[speech style of M]'[if the class of the player is faerie]You wouldn[']t remember the answer if I told you.'[otherwise]I believe we are currently in dimension C-137.'[end if][roman type][line break]";
	if image cutscenes is 1, display figure of aeromancer interact 18.

To say WhoAnswer of (M - an aeromancer):
	say "[speech style of M]'I'm nobody of importance.  Just a humble travelling scientist.'[roman type][line break]";
	if image cutscenes is 1, display figure of aeromancer interact 6.
		
To say StoryAnswer of (M - an aeromancer):
	say "[speech style of M]'That's too long a tale to explain right now.  Maybe one day it'll get made into a TV series though.'[roman type][line break]";
	if image cutscenes is 1, display figure of aeromancer interact 18.

To say EscapeAnswer of (M - an aeromancer):
	say "[speech style of M]'I think you have to defeat some kind of [']final boss['], whatever that means.'[roman type][line break]";
	if image cutscenes is 1, display figure of aeromancer interact 5.

To say AdviceAnswer of (M - an aeromancer):
	say "[speech style of M]'[one of]If there's a room you might need to spend a lot of time on your knees, for example a room with furniture, maybe it would make sense to not risk opening the container in that room, in case it's trapped and releases pink smoke everywhere.'[or]Pretty much every living thing in this world seems to like being given shiny jewellery.  Even the mindless ones like the sex dolls.'[or]I hear there's a machine somewhere that can give you magic tattoos.  I've heard that putting a recipe in the hole can even get you a tattoo that makes you smarter!'[in random order][roman type][line break]";
	if image cutscenes is 1, display figure of aeromancer interact 16.

Section 3 - Drink Requesting

To compute friendly drink of (M - an aeromancer):
	say "[speech style of M]'I'm sorry, I've got nothing!'[roman type][line break]";
	if image cutscenes is 1, display figure of aeromancer interact 4.

To compute unfriendly drink of (M - an aeromancer):
	say "[speech style of M]'Shut up, I'm trying to think of another pun!'[roman type][line break]";
	if image cutscenes is 1, display figure of aeromancer interact 17;
	now M is interested;
	now the boredom of M is 0.

Part 7 - Variants

Section 1 - Confident Aeromancer

A confident aeromancer is a kind of aeromancer.  There is 1 confident aeromancer.  The printed name of confident aeromancer is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]confident aeromancer[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".  The text-shortcut of confident aeromancer is "mae". A confident aeromancer is not dungeon dwelling.

This is the spawn initial woods aeromancer rule:
	if the number of alive aeromancers in the woods is 0 and inflation fetish is 1:
		let M be a random off-stage confident aeromancer;
		summon M in the woods.
The spawn initial woods aeromancer rule is listed in the setting up woods monsters rules.

To compute appearance assessment of (M - a confident aeromancer):
	FavourDown M by the science requests of M * 2;
	let A be the air volume of belly + the air volume of breasts + the air volume of belly;
	if A >= 15:
		say "[speech style of M]'[one of]WOW, what wind elemental fucked YOUR brains out? I probably shouldn[']t bother asking, since you[']re obviously a slut for getting blown up like a balloon, but how would you like to help me with an experiment?'[or]You look kind of bloated. Did you wake up on the wrong side of a djinn[']s cloud buster? Hahaha! Help me out with an experiment....if you want. *snrt*'[or]Hey, you probably get this a lot, but you look JUST like this balloon I fucked in college. Hahaha! Want to help me out with an experiment?'[at random][roman type][line break]";
	otherwise if the class of the player is schoolgirl:
		say "[speech style of M]'[one of]So, freshman. Want to help out with one of my experiments, or am I going to have to fog you.'[or]Hey, you like tentacles right? Ok, so I have this experiment I want to try out, but if you say no, I'm going to use my magic to make you my bitch. Win win for both of us, right?'[or]You obviously have no magical talent, so you'd really have no chance of taking me on in a fight. So, agree to help me out with an experiment, or I'm going to use my magic to torture you until I get bored! Sound good?'[at random][roman type][line break]";
	otherwise if the player is exposed:
		say "[speech style of M]'[one of]Wow, a wench outside the dungeon! You don't see that every day! [or]My motto is: ['][if vagina is lewdly exposed]cunt[otherwise if penis is lewdly exposed and penis is tiny]sissy clitty[otherwise if asshole is lewdly exposed]butthole[otherwise if penis is lewdly exposed]willy[otherwise]nipples[end if] on display, fucked by guards all day![']  [then at random]FYI I'm pretty powerful, so I'm going to experiment on you either way, but I'll go easier on you if you accept willingly. Sound good?[roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Hey, I've been looking for a new research subject, sooo...you're hired![or]I can tell by your heavy breathing, you[']re perfect for this next experiment![or]Hey if it isn't my favourite research subject![stopping] I'm pretty strong, so you don't have much of a choice, but I'll go easier on you if you cooperate. Sound good?[roman type][line break]";
	if M is interested:
		if the player consents:
			FavourUp M;
			compute aeromancer science of M;
			now the science requests of M is 0;
		otherwise if A < 15 or the science requests of M > 2:
			say "[speech style of M]'[one of]Ok! Hope this doesn[']t blow up in your face!'[or]An airhead like you should really go back to the dungeon, but since you're here...'[or]Open air isn't good for stupid people. Trust me, inside air will work way better on you.'[at random][roman type][line break]";
			now the science requests of M is 0;
		otherwise:
			say "[speech style of M]'[one of]Oh. That's pretty cheeky of you, considering I've been so friendly. You probably don't get how powerful I am, but I'll really blow up if you breeze me like this again.'[or]Hahaha! That's SO funny. It's like your head is full of hot air, you fucking bitch! HAHAHA! Don't refuse me again.'[or]WOW, do you have any idea how powerful I am? I can do anything I want! Nobody fucking says no to me. Don't this I'll let a mistake like this slide again...'[at random][roman type][line break]";
			increase the science requests of M by 1;
			Bore M.

To compute aeromancer science of (M - a confident aeromancer):
	increase the science history of M by 1;
	let N be the science history of M;
	if N > 5, now N is 5;
	let R be a random number between 0 and N;[TODO: summons wasp]
	say "[speech style of M]'[one of]Smart! Ok, let's see...'  [or]Nice!  Here we go...'  [or]Right, stay still...'  [at random][roman type]Pointing her wand towards you, the [M] concentrates.  ";
	if R is 0:
		say "You feel your whole body exploding outwards!";
		if the largeness of breasts < max breast size, BustInflate 12;
		AssFill (belly limit - the total fill of belly) air;
		if the total volume of hips < max ass size, AssInflate 7;
	otherwise if R is 1:
		if the raw strength of the player < 10:
			say "You feel your muscles inflate!  The bizarre sensation leaves you feeling stronger but also [if the player is a bit horny]even hotter on the inside[otherwise]you feel like you're getting hotter inside[end if].";
			StrengthUp 1;
		otherwise:
			say "Nothing physical changes, but you feel a weird, strong heat growing at your crotch!";
		arouse 3000;
	otherwise if R is 2:
		let K be a random off-stage pump plug panties;
		let C be a random worn knickers;
		if K is actually summonable:
			summon K cursed;
			say "A [K] materialises on and inside of you!  [variable custom style][if the openness of asshole < 3]Ouch![otherwise if the openness of asshole < 6 or the anal sex addiction of the player < 4]Eek![otherwise]Ooh![end if][roman type][line break]";
		otherwise if the bladder of the player > 0:
			say "Air fills your bladder, putting immense pressure on it!  You can't help but start to wet yourself.";
			now delayed urination is 1;
			try urinating;
		otherwise if C is clothing:
			say "Your [C] is suddenly hit by a beam of light from her wand!";
			potentially transform C;
		otherwise:
			say "Air suddenly forces its way inside your [asshole], stretching your sphincter as it makes its way in!";
			gape asshole times 1;
			AssFill 5 air;
	otherwise if R is 3:
		say "Tentacles of air spill from the tip and begin to whip around you, hitting you from all sides with stinging strikes!";
		DelicateUp 1;
		if unlucky is 1:
			let N be the number of worn clothing;
			repeat with C running through worn currently uncovered tearable clothing:
				say "A tentacle disappears into your [printed name of C], which explodes into a cloud of shredded [the clothing-material of C] confetti!";
				destroy C;
			if the number of worn clothing is N, DelicateUp 1;
	otherwise: [Selkie: it'd be sweet if she could add a step or two to a latex-doll transformation that was underway]
		say "A beam flies straight from her wand to your face!";
		if a random number between 1 and 3 > 1 and (the raw largeness of hair + 1) < max hair length:
			say "Your hair grows and rapidly shifts in color!";
			HairUp 2;
		if a random number between 1 and 3 > 1 and the make-up of face < 3:
			say "Your make up gets thicker!";
			FaceUp 1;
		if a random number between 1 and 4 > 1:
			say "You feel smarter!";
			IntUp 2;
		if a random number between 1 and 3 > 1 and the lips of face < 2 + artificial enhancements fetish:
			say "Your lips get plumper!";
			LipsUp 1;
		say "Your head feels a bit more giddy!";
		OralSexAddictUp 1;
		SexAddictUp 1;
	say "[speech style of M]'[one of]Whew, that was awesome!'[or]Thanks for your help.'[or]Interesting...'[or]Well that was unexpected...'[or]Curiouser and curiouser.'[in random order][roman type]  The [M] [one of]jots a short note[or]smirks at you and writes just a word or two[or]makes a quick note[or]writes a scribble[at random] in her pocket book and then closes it.".

To compute anal climax of (M - a confident aeromancer):
	bore M;
	FavourUp M;
	TimesFuckedUp M by 1;
	let N be a random number between 7 and 11;
	say "The [M] fucks you harder and harder, wild gusts of wind screaming through the trees as her magical phallus pulses with its climax. You groan involuntarily as your belly fills up with torrent after torrent of compressed air, each one leaving a wider smirk on the aeromancer's face.";
	AssFill N air;
	say "The [M] releases her hold on you rather abruptly, chuckling as you smack the ground. She loses interest.";

To compute vaginal climax of (M - a confident aeromancer):
	bore M;
	FavourUp M;
	TimesFuckedUp M by 1;
	let N be a random number between 3 and 6;
	say "The [M] fucks you harder and harder, screaming with delight as her magical phallus floods your [vagina] with warm, glittery [semen]. She releases her hold on your body as the gooey fluid soaks into your skin, causing a strange tingling feeling to travel up your torso and into your chest. You watch with [if the bimbo of the player < 7]horror[otherwise if the bimbo of the player < 11]confusion[otherwise]awe[end if] as your breasts suddenly balloon with air!";
	BustInflate N;
	say "The [M] drops you on your back, taking a brief moment to smirk at her handiwork before losing interest.";

To compute (M - a confident aeromancer) entering a fuckhole:
	now the sex-length of M is 3;
	if the player is monster stuck:
		say "The [M] stretches out her arms and hands towards you, smirking as her wand immediately begins to glow. The air around you compresses itself into a massive, disembodied [manly-penis], only visible from the sheer speed at which it shoots [if M is anal]up your [asshole][otherwise]into your [vagina][end if]. Shrieking gusts of wind lash at your skin and clothes as the magical sex organ begins to ruthlessly fuck you.";
	otherwise:
		say "The [M] stretches out her arms and hands towards you. You yelp as you are suddenly forced several feet off the ground by a powerful gust of wind.  Cackling with glee, the aeromancer uses her mastery of air to buffet you from one end of the [if M is in the Woods]clearing[otherwise]room[end if] to the other, eventually leaving you suspended in the center, at just above waist height. She takes a couple of steps forward, barely containing her mirth as you [if the relevant sex addiction of M < 7]desperately try but fail to get purchase on the ground below[otherwise]look up at her in wide-eyed anticipation[end if].";
		say "[speech style of M]'[one of]So, now that you've had some HANG time, I think you're ready for some WANG time!'[or]Uh oh, looks like a pretty strong breeze coming in from the south!'[or]Round and round [if the player is female]she goes, how she got that slutty[otherwise if the player is a sissy]she goes! How she became such a sissy[otherwise]he goes! How hard a fucking can he take[end if], nobody knows!'[or]The wind told me to tell you something! You[']re a slut! Hahahaha!'[in random order][roman type]";
		say "The aeromancer raises her wand, which glows brightly as the air around you compresses itself into a massive, disembodied [manly-penis], only visible from the sheer speed at which it shoots [if M is anal]up your [asshole][otherwise]into your [vagina][end if]. Shrieking gusts of wind lash at your skin and clothes as the magical sex organ begins to ruthlessly fuck you.".


Aeromancer ends here.
