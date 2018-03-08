Vampiress by Monster begins here.

A vampiress is a kind of monster. There is 1 vampiress. A vampiress is usually intelligent. A vampiress is male. The poison-status of a vampiress is -1.

Definition: a vampiress (called M) is willing to do vaginal:
	decide no.

Definition: a vampiress (called M) is willing to do titfucks:
	decide no.

Definition: a vampiress (called M) is raunchy:
	decide yes.

The printed name of vampiress is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]seductive vampiress[if the sleep of the item described > 0] (fast asleep)[end if][shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The description of vampiress is usually "[VampDesc]". The text-shortcut of vampiress is "va".
Understand "vampire", "seductive", "vamp" as a vampiress.
Figure of Vampiress is the file "NPCs/Mansion/vampiress1.png".

To say VampDesc:
	if images visible is 1, display the figure of vampiress;
	say "A monstrous, seductive looking woman with flowing, golden brown hair and sharp fangs. She's wearing a skirted black and red corset. The look in her eyes suggests that she's outrageously turned on.".

To set up (M - a vampiress):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 9;
	now the health of M is the maxhealth of M;
	now M is in Mansion16.

To decide which number is the girth of (M - a vampiress):
	decide on 4.

Definition: a vampiress (called M) is able to remove cursed plugs:
	decide yes.

Definition: A vampiress (called M) is willing to shag:
	if the boredom of M < 120 and M is released, decide yes;
	decide no.

To decide which number is the semen load of (M - a vampiress):
	decide on 3.

Definition: a vampiress (called M) is human:
	decide yes.

To check chase boredom of (M - a vampiress):
	if M is not in the location of the player and a random number from 1 to (15 + (30 * the number of worn catbells)) is 1 and the number of worn tethering lipstick collars is 0 and the player is not bed-stuck:
		bore M for 0 seconds; [Every turn the monster (after seeking) is not in the location of the player, there's a 1 in 15 chance of them getting bored.]
		compute survival check of M.

Part 1 - Misc Flavour

To say SummoningFlav of (M - a vampiress):
	say "You hear the sound of bats squeaking coming from another part of the mansion.".

To say DiaperReaction of (M - a vampiress):
	if M is unfriendly:
		say "The [M] smirks condescendingly. [line break][speech style of M][one of]'Why don't you just lay down, baby. I'll take that diaper off for you...'[or]'Want something to suck, sweetheart? I think I can help...'[or]You're looking kind of sick baby! Why don't you lie on your tummy and let me stick my thermometer inside of you. Just be warned, it's pretty big.[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Poor baby... Not even potty trained yet.'[or]Well, it's a good thing you're still in diapers, isn't it?'[or]Don't worry. I couldn't care less whether you're potty trained or not.'[at random][roman type][line break]";
	if the humiliation of the player < 15000, say "[variable custom style][if the player is able to speak]'This doesn't usually happen, I swear!'[otherwise]I can't even tell her that this isn't what I usually wear![end if][roman type][line break]";
	otherwise say "You turn bright red.".

Part 2 - Perception

Definition: a vampiress (called M) is objectifying the player:
	if M is not interested:
		now the objectification of M is 0;
		decide no;
	if there is a worn tethering lipstick collar, decide yes;
	if the objectification of M is 1, decide yes;
	if the class of the player is cheerleader, decide no;
	if the bimbo of the player >= 20 or the appearance of the player >= 20 or the appearance of the player > the bimbo tolerance of M:
		now the objectification of M is 1;
		decide yes;
	decide no.

To compute perception of (M - a vampiress):
	now M is interested;
	say "The [M] notices you!";
	if there is a worn tethering lipstick collar:
		say "[speech style of M]It's those sticky fingers of yours that make me so determined to give you a sticky face.[roman type][line break]";
		anger M;
	otherwise if the class of the player is living sex doll:
		say "[speech style of M]'A sex doll... How quaint. You've amused me slightly. Now get out of my sight.'[roman type][line break]";
		distract M;
	otherwise if the class of the player is vampire spawn:
		if the player is craving:
			say "[speech style of M]'Hello there, my youngest child. Don't forget to feast. I wouldn't want you to lose your strength.'[roman type][line break]";
		otherwise if the player is desperately craving:
			say "[speech style of M]'...You look awful. You mustn't let yourself go hungry. I recommend going to find one of those wenches to present your face to. Surely they will feed you.'[roman type][line break]";
		otherwise:
			say "[speech style of M]'Hello there, my youngest child. You don't look hungry yet but, mark my words, you will be. Don't go too long without feasting on some sort of seminal fluid or you'll regret it.'[roman type][line break]";
	otherwise if the class of the player is vixen:
		say "[speech style of M]'[one of]Did you think you could fool me with that disguise, fox girl? Don[']t worry, darling. This time, everything you[']ll be taking from me is free.'[or]There you are, darling. I have something here that you simply must take. I won[']t take no for an answer, darling.'[stopping][roman type]";
		anger M;
	otherwise if the class of the player is faerie:
		say "[speech style of M]'[one of]Here to try and steal my mansion from me? Unfortunately it's mine now, darling.'[or]Oh. There are always more of you. If I impregnate you, will go home?'[or]Begone, I have no interest if you cannot be turned. Don[']t make me get the broom.'[at random][roman type]";
		anger M;
	otherwise if there is a worn messed knickers and M is interested:
		say "[speech style of M]'My, my, my! Aren't you just the world's biggest baby? Why don't you find someone to change that underwear and come back to see me?'[roman type][line break]";
		distract M;
	otherwise:
		say "[speech style of M]'You smell delicious... Get on your knees and let me feed from you, mortal!'[roman type][line break]";
		anger M.

Part 3 - Combat

To say MercyReaction of (M - a vampiress):
	say "[speech style of M]'Your pleas only turn me on more, you pathetic creature! Please, continue singing such sweet melodies so I may find the inspiration to use you harder!'[roman type][line break]She drags her fangs your skin, not hard enough to break the skin but the sensation still stings terribly, causing you to whimper.";
	bodyruin 1.

To compute kneeling reaction of (M - a vampiress):
	say "The [M] approaches you, sticking her sharp talon-like finger nails in your hair and rubbing sensuously.[line break][one of][line break][speech style of M]'I'm hungry and you're clearly defeated. I won't hurt you too badly as long as you stay still. Understand?'[roman type][line break][or]'I'm hungry and you don't want to fuck with me. Don't move a muscle or you'll regret it.'[roman type][or]'You know, I could have overcome your mind any time that I wanted... I just like to see my prey squirm first.'[roman type][at random]";

To say waitingflav of (M - a vampiress):
	if times-fucked of M < 1:
		say "Your eyes glaze over and, no matter what your previous thoughts were, you now desire very strongly to be fucked by the beautiful creature before you. Suddenly, she pulls out a rather large [manly-penis] and seems to contemplate where she wishes to place it as though her decision is a matter of life or death.";
	otherwise if the player is not able to speak and the player is not a pervert:
		say "[one of][line break][variable custom style][muffled sounds][roman type][line break][or]You peer up at the [M] silently. Something in your mind pops and you find your vision turn from derision to lust.[at random]";
	otherwise if the player is not able to speak:
		say "[one of][line break][variable custom style][muffled sounds][roman type][line break][or]You peer up at the [M] silently.[at random]";
	otherwise if the player is not a pervert:
		say "[one of]You glare up at the monster before you, letting your loathing of her be known. However, as moments go by, you find your hatred harder to express as your anger dissipates.[or]You bow your head, defeated. You feel something penetrate your mind and, suddenly, regardless of your previous disposition, you are now eager to see what she has in store for you.[or][line break][first custom style]'You aren't going to drink my blood, are you?'[roman type][line break][or]You avert your eyes, hoping that your blood will stay in your body. Suddenly, you feel a flicker in your brain and you decide that it wouldn't be that bad letting her drain you.[or]You can't help but wonder if the stories are true... If she bites you, will you become a vampire?[in random order]";
	otherwise:
		say "[one of]She's actually pretty hot... This will probably be fun.[or]You wait eagerly in place to see what she has in mind.[or][line break][variable custom style]'I've got something you can suck, if you know what I mean.'[roman type][line break][or][line break][variable custom style]'As long as you don't drink my blood, I'm on board. '[roman type][line break][or]Your blood pumps in your ears as you chitter happily at the thought of being hers forever.[in random order]";

To say SexSubmissionFlav of (M - a vampiress):
	if M is penetrating face:
		if the throatskill of the player is 1 and the oral sex addiction of the player >= 7:
			say "You passionately deepthroat the vampiress, taking her entire length into your throat over and over again with ease.";
		otherwise if the oral sex addiction of the player < 4:
			say "[one of]You slowly move your head back and forth, ashamed of what you've become and yet, for some reason, enjoying this action against your will.[or]You reluctantly suckle the vampiress's pulsating [manly-penis], amazingly finding the experience disturbingly delightful.[or]You bob your head back and forth, trying glare upward defiantly. Somehow, your body translates this into staring up lovingly.[or]You reluctantly but passionately suck the vampiress's [manly-penis], cheeks red with shame.[in random order]";
		otherwise if the oral sex addiction of the player < 7:
			say "[one of]You finger the vampiress's slit as you joyously suckle her [manly-penis].[or]You fellate the vampiress with restrained enthusiasm, getting more into this than you thought possible.[or]You bob your head back and forth, trying to convince yourself you're not enjoying it. Even you can't begin to believe your lies.[or]You slowly and obediently stroke the vampiress's [manly-penis] as you pull back and tease it with your tongue.[or]You move your head back and forth, dragging your tongue along the bottom of her length.[in random order]";
		otherwise:
			say "[one of]You passionately pump the vampiress's [manly-penis] as you bob your head back and forth.[or]You fellate the vampiress with unrestrained enthusiasm.[or]You suck the vampiress's [manly-penis] like the hungry cumslut you are.[or]You aggressively fellate the vampiress, emitting muffled moans of contentment.[or]You gaze up at the vampiress lovingly as you eagerly pleasure her [manly-penis].[or]You enthusiastically pleasure the vampiress with your mouth and tongue.[or]You pucker your lips and finger her [vagina] as you hungrily suckle her [manly-penis].[in random order]";
	otherwise:
		say "[if the bimbo of the player < a random number between 8 and 13][one of]You lie still and accept the invasion.[or]You gleefully submit to being used as a plaything.[or]You don't resist being used... You're not even sure that you remember how to resist.[in random order][otherwise][one of]You purposefully loosen up and accept the vampiress's thrusts to easily slide fully in and out.[or]You push back at the vampiress enthusiastically in the same rhythm that she is fucking you.[in random order][end if]";
		say "[variable custom style][one of][if the relevant sex addiction of M > 12 and the player is able to speak]'Fuck me, mistress!'[otherwise if the relevant sex addiction of M > 12 and the player is able to make sounds][muffled sounds][otherwise]Maybe if I relax, this will hurt less?[end if][or][if the relevant sex addiction of M > 10]This feels too good![otherwise if the relevant sex addiction of M > 5]Why am I letting her do this so willingly? Am I a whore?[otherwise]It hurts so good![end if][or][if the relevant sex addiction of M > 13 and the player is able to speak]'That feels good! Go faster!'[otherwise if the relevant sex addiction of M > 13 and the player is able to make sounds][muffled sounds][otherwise if the relevant sex addiction of M > 8]Maybe I really am a slut?[otherwise]I wanted this to end a moment ago but now I'm not sure.[end if][or][if the player is able to make sounds][muffled sounds][otherwise if the relevant sex addiction of M > 14 and the player is able to speak]'Harder!'[otherwise if the relevant sex addiction of M > 14]I kind of wish she'd go even harder![otherwise if the relevant sex addiction of M > 6] How am I enjoying this so much?[otherwise]Why do I wish that she would never stop fucking me?[end if][purely at random][roman type][line break]".

To say VampResistRefusalFlav:
	say "[if the bimbo of the player > a random number between 8 and 13][one of]You consider resisting, but it's even easier than normal to just give in and let it happen.[or]You tell your body to resist, but it ignores you completely, just like you hoped it would.[or]Your body refuses to resist, but it doesn't bother you as much as it should...[at random][otherwise][one of]You try to resist, but your body ignores you completely. It's like it's not even on your side here![or]You can feel the vampiress[']s influence like a heavy weight on your mind, twisting every rebellious idea into fervent submission.[or]Your body refuses to obey your commands, moving in a way not unlike you'd expect the vampiress to move herself.[or]The vampiress has an ironclad grip on your mind, nullifying every thought of resistance and replacing them with unconditional submission.[or]You try to resist the vampiress, but your body fights you at every turn. She's keeping you from controlling your own actions![or]Instead of fighting the way you tell it to, your body emits a sharp moan instead, as if to tell you to stop resisting and give in.[in random order][end if]";
	if the player is able to speak:
		say "[variable custom style]'[one of][if the bimbo of the player > 11]I'm yours, mistress...'[otherwise]Thank you, mistress...'[end if][or][if the bimbo of the player > 10]I don't deserve your time, mistress.'[otherwise if the bimbo of the player > 5]Thank you for letting me please you, mistress'[otherwise]'Do whatever you want with me, mistress'[end if][or][if the bimbo of the player > 13]I just want to be yours forever!'[otherwise if the bimbo of the player > 7]Please don't stop, mistress!'[otherwise]Oh my god! Yes!'[end if][purely at random][roman type][line break]";
	otherwise:
		say "[variable custom style][muffled sounds][roman type][line break]".

To say OralAddResRefusalFlav of (M - a vampiress):
	say "[one of]You give a half-hearted thought to resisting, but it passes as you absorb yourself in polishing her [manly-penis] like the cumhungry slut you are.[or]You don't really want to resist, and it's like your body knows! You submissively pleasure the vampiress anyway, hoping for a satisfying semen fix.[or][if the player is feeling dominant]It's incredibly degrading, but your body just won't listen when you tell it to resist. Not when there's a [manly-penis] in your mouth just waiting to feed you a helping of delicious [semen].[otherwise]It's like your body won't resist knowing there could be a mouthful of tasty [semen] in this for you.[end if][or][if the sex addiction of the player < 10 and the player is female]You know it's something only a complete harlot would do, but your body is practically acting on its own! You just can't pass up a mouthful of fresh, tasty [semen]![otherwise]You consider resisting as you desperately suckle the vampiress's [manly-penis] for all it's worth. Maybe you[']ll fight back some other time...[end if][in random order]";

To say OralSlutResRefusalFlav of (M - a vampiress):
	say "[one of][if the player is feeling dominant]No matter how much you 'want' to resist, you can't keep yourself from desperately suckling her [manly-penis].[otherwise]Why resist? Sucking [manly-penis]s is FUN, and all resistance is pointless anyway![end if][or][if the semen taste addiction of the player < 10]You hate yourself for it, but no matter how much you know you want to resist, you can't help suckling the vampiress's [manly-penis] for all it's worth.[otherwise]One part of you wants to resist, but it's just so easy to keep polishing the yummy [manly-penis] in your mouth! Oh well![end if][in random order]";

To say ThirstResRefusalFlav of (M - a vampiress):
	say "[one of]You want to resist, you really do, but your body needs water...it's not responding to you at all.[or]You tell yourself to resist, but your body needs something to drink, and it knows where it can find something absolutely delicious.[or]Your body ignores every order to resist, desperately searching for a wet, sloppy answer to its thirst.[at random]";

To say SwallowDemand of (M - a vampiress):
	say "[speech style of M][one of]'You have permission to nourish yourself with my [semen], slave. Do not be ungracious.'[or]'Swallow like a good whore and you'll be making your mistress very happy.'[or]'You should feel lucky that I've decided to share my gift with you.'[or]'This is a gift... Appreciate that.'[or]'I could make you swallow, if I wanted. But you can do that on your own, can[']t you?'[in random order][roman type][line break]".

To say big he of (M - a vampiress):
	say "She".

To say he of (M - a vampiress):
	say "she".

To say him of (M - a vampiress):
	say "her".

To say big his of (M - a vampiress):
	say "Her".

To say his of (M - a vampiress):
	say "her".

To say himself of (M - a vampiress):
	say "herself".
	
Section 1 - Attack

To compute (M - a vampiress) attacking (C - knickers): 
	if C is zippable: 
		say "[UnzipFlav of M at C]";
		now C is crotch-unzipped;
	otherwise:
		say "[PullAttempt of M at C]";
		let R be a random number between the difficulty of M and 6 + a random number between the difficulty of M and 6;
		if debugmode is 1, say "Player [the defence of the player].5 | [R] [M][line break]";
		if R > the defence of the player:
			compute M destroying C;
		otherwise if R > the defence of the player - 2 and C is rippable:
			compute M ripping C;
		otherwise if R > the defence of the player - 4 and C is displacable:
			compute M displacing C;
		otherwise:
			say "[WeakenFlav of M on C]";
			damage C.

This is the vampiress punishes diaper rule:
	let D be a random worn diaper;
	if D is total protection diaper:
		let M be current-monster;
		if D is not messed and the player is able to get horny:
			say "The vampiress, seeing your diapered state, gets an odd look in her eyes before smiling deviously. The pupils of her eyes turn white and, out of nowhere, your [asshole] begins dilating widely, as if something rather large were penetrating you. Overcome by the sensation, you fall down onto your hands and knees, sticking your ass into the air behind you as the phantom lover continues to fuck you wildly.[line break][if the anal sex addiction of the player < 4][line break][variable custom style]'Wait... What are you doing?! How are you doing that?! Please stop!'[roman type][line break]Despite yourself, you moan loudly and bite your lower lip.[otherwise if the anal sex addiction of the player < 7][line break][variable custom style]'Oh my god!'[roman type][line break]Despite your attempts to simply hate this, you quiver in pleasure and grind your ass against a lover that isn't there as your [asshole] continues to be stimulated by this monster's power. [otherwise][line break][variable custom style]'Go harder! Go faster! Whatever you do, please don't ever stop!'[roman type][line break]You pant and moan like a bitch in heat as your [asshole] continues to dilate to various shapes and sizes.[end if][line break]";
			anally orgasm shamefully;
			say "Seeing your climax, the vampiress walks up to you, kneels down and reaches up through the leg holes of your diaper, scooping your cum into her fingers and licking them sensuously.[line break][speech style of M]'Thanks for the treat, baby.'[roman type][line break][if the anal sex addiction of the player < 5]Wait... What the hell was that?![otherwise if the anal sex addiction of the player < 7][line break][variable custom style]'Huh?!'[roman type][line break]She simply laughs at you before ignoring you altogether.[otherwise][line break][variable custom style]'No... Thank you!'[roman type][line break]You're not completely sure what that was but you look forward to the next time you get to do it.[end if]";
			now the stance of the player is 1;
			bore M for 450 seconds;
			rule succeeds.
The diaper punishment rule of a vampiress is usually the vampiress punishes diaper rule.

To say TwosomePrep of (M - a vampiress) in (F - a fuckhole):[in other words, sex.]
	if there is a worn chastity cage:
		say "The [M] smiles, gently pulling your hips up against her body. She [if the times-fucked of M < 1]pulls out a large [manly-penis] from in-between her legs and pushes it between your cheeks[otherwise]places her hard length between your cheeks[end if], gently rubbing your belly as her hand moves to your waist.[line break]";
	otherwise:
		say "The [M] smiles, gently pulling your hips up against her body. She [if the times-fucked of M < 1]pulls out a large [manly-penis] from in-between her legs and pushes it between your cheeks[otherwise]places her hard length between your cheeks[end if], gently [if the player is female]pushing her soft, nimble fingers into your [vagina][otherwise if the size of penis > 4]wrapping her soft, nimble fingers around your [ShortDesc of penis][otherwise]tracing around your [ShortDesc of penis] with her nimble fingertips[end if] as her hand grabs your waist.[line break]".
		[now M is masturbating the player.][TODO]

To say PrepTaunt of (M - a vampiress) in (F - a fuckhole):
	if the times-fucked of M < 1:
		say "[speech style of M]'Yes... To answer the question that is most certainly on your mind, in addition to a [vagina], I have a [manly-penis]. I suppose you are about to become a lot more well acquainted with it, aren't you?'[roman type][line break]";
	otherwise if M is mating:
		say "[speech style of M]'You should appreciate this. Few things are more intimate than the trading of fluids for vampires.'[roman type][line break]";
	otherwise if the class of the player is vampire spawn and the last-interaction of M is 0:
		say "[speech style of M]'Be still. nothing is more intimate than the trading of fluids between vampires.'[roman type][line break]";
	otherwise if the last-interaction of M is 0:
		say "[speech style of M]'[one of]Stop fighting, mortal!'[or]If you don't give in, I might never let you go!'[or]Resistance is futile, [NameBimbo].'[or]Stop trying to be such an insolent little shit!'[in random order][roman type][line break]".

To decide if (M - a vampiress) is willing to creampie (F - asshole):
	if the reaction of the player is 1 and the player is not a butt slut, decide no;
	decide yes.

To compute (M - a vampiress) pulling out of (F - a fuckhole):
	say PullOutFlav of M in F;
	let R be a random number between 0 and 2;
	RandomAddictUp R;
	Intdown 2 - R;
	DifficultyUp M by 2;
	Arouse 2000.

To compute creampie of (M - a vampiress) in (F - asshole):
	let H be a random off-stage vampiric fangs;
	say CreampieFlav of M in F;
	Assfill the semen load of M;
	if H is actually summonable:
		summon H cursed;
		follow the vampire rules.
	
To compute unprotected climax of (M - a vampiress) in (F - a fuckhole):
	if M is willing to creampie F, compute M pulling out of F;
	otherwise compute creampie of M in F;

To compute condom success of (M - a vampiress) in (F - a fuckhole):
	say CondomPieFlav of M in F;
	Arouse 2000;
	let R be a random number between 10 and the difficulty of M;
	if the number of worn ballgags is 0 and R > the semen taste addiction of the player and the player consents:
		say "You obediently open your mouth as [semen] slowly dribbles out of the open end, plopping wetly onto your tongue before slowly rolling down your throat. She grins, lowering it closer and closer to your face as it empties out, shaking it twice before gently laying it to rest on the bridge of your nose.";
		say "[speech style of M]'[if the number of worn vampiric fangs is 0]Good...maybe we should do this without the condom next time?[otherwise]Wear it. Let everyone know of our tryst.[end if]'[roman type][line break]";
		humiliate 200;
		StomachSemenUp the semen load of M;
		compute condom filling of M;
	otherwise:
		say "[speech style of M]'[if the number of worn ballgags > 0]What[']s that dear? You can[']t? Just think what you're missing out on, darling. Think hard...'[otherwise if R > the semen taste addiction of the player]Wait a moment, darling, what am I saying? You are not ready for my seed now, but you WILL be....'[otherwise]Oh my. But aren[']t you hungry?'[end if][roman type] The condom disappears from her hand in a flash of mesmerising purple flames, and you feel a strange tickle in the back of your throat as vivid images of being face-fucked by the vampiress fill your mind. She blows you a kiss, eyes glowing brightly as she straightens up and begins to walk away.";
		SemenTasteAddictUp the semen load of M / 2;
		DifficultyUp M by the semen load of M.

To say CondomPieFlav of (M - a vampiress) in (F - a fuckhole):
	say "The [M] roars with pleasure, tightening her grip as the condom floods with warm [semen], only barely prevented from flowing freely into your used hole. Thereafter, the hand that was previously rubbing your [if player is male]cock[otherwise if player is female][vagina][end if] leaves your genitals, making you acutely aware of how close you are to orgasm as she pulls out and stands back up. [line break][speech style of M]'Was it good for you, honey? What am I saying? Of course it was.'[roman type][line break]She walks around to your face, carefully peeling off the condom and upending it over your face. [if there is a worn tethering lipstick collar][line break][speech style of M]'Drink it all like a good little thief...'[roman type][line break][otherwise][line break][speech style of M]'Drink it all. Feed on me...'[roman type][line break][end if][line break]".

To say CreampieFlav of (M - a vampiress) in (F - a fuckhole):
	say "The [M] roars with pleasure, tightening her grip as warm [semen] begins spurting out into your used hole[if the anal sex addiction of the player > 5], causing you to cry out with ecstasy.[otherwise].[end if] Still, her rapid penetration doesn't cease until her cum has thoroughly coated the inside of your anus.";
	if the player is able to get horny, anally orgasm shamefully;
	say "The hand that was previously rubbing your [if player is male]cock[otherwise if player is female][vagina][end if] leaves your genitals as she lifts it to her lips and licks the cum clean. Thereafter, she pulls out and stands back up, wiping herself off. [line break][speech style of M]'Was it good for you, honey? What am I saying? Of course it was. It was good for me too, you know. [if the number of worn headgear is 0 and newbie tips is 1]By the way, I should tell you that the sperm of a vampire contains our virus and when delivered anally, the virus is transmitted. You'll probably start to notice some changes in yourself. First, the rumour about vampires needing blood isn't entirely accurate. What we really need is human fluid, of any variety. Most vampires see themselves above the degradation of collecting and feasting on cum. But, most vampires are vicious murderers. My point is, you're going to start noticing these cravings. I'd sate those if I were you, as ignoring them will make you weaker. Other than that, once your claws grow in, you'll also be able to drain energy from your enemies, healing yourself and fighting your fatigue. However, you won't be able to turn anyone else. That is a power you do not gain until you are many, many years old. Have fun, my newest fledgling.'[roman type][line break]You check your mouth and, sure enough, fangs have grown where your canine teeth once were.[otherwise if the number of worn headgear is 0]By the way, [one of]if you happen to feel an insatiable craving for human fluids, don't be alarmed. I have made you into my newest fledgling. Go forth, and feast on the essence of the living![or]surely you know how dangerous it is to have unprotected sex with a vampire? Don[']t be a fool and deny your cravings, darling~!'[or]I usually make new thralls by filling their asses with my seed. Did you know that, darling? You certainly do now...'[at random][roman type][line break]You notice a pair of fangs have grown where your canine teeth once were![otherwise]In fact, I might even make you a thrall one day...'[roman type][line break][end if]".
	
To say PullOutFlav of (M - a vampiress) in (F - a fuckhole):
	say "The [M] thrusts faster and faster, flattening herself on top of you as her futa cock slams in and out of your asshole. Her grip tightens, and waves of pleasure begin to roll through your body and...instantly go away. She pulls out. [line break][speech style of M]'Sorry dear. I know you wanted to cum, but your mind is not in the right place. Don[']t worry. You[']ll have another chance later.'[roman type][line break]The [M] makes a small incantation under her breath, and you feel a sensation like a finger nail running up the nape of your neck. Her eyes glow as vivid images of the vampiress fucking you in various positions appear in your mind.".

This is the vampiric cumslut rule:
	If there is a worn vampiric fangs:
		if the raw semen taste addiction of the player < 15:
			now the raw semen taste addiction of the player is 15;
			rule succeeds.
The vampiric cumslut rule is listed first in the vampire rules.
The vampire rules is a rulebook.

To compute (M - a vampiress) entering mouth:
	if face is not occupied:
		now M is penetrating face;
		if the sex-length of M < 3, now the sex-length of M is 3;
		say MouthPenetrationFlav of M;
	otherwise:
		say "The [M] sees that you are already occupied and loses interest.";
		distract M.

To say MouthPenetrationFlav of (M - a vampiress):[TODO: subfunctions]
	if presented-orifice is face:
		say FriendlyMouthPenetrationFlav of M;
	otherwise if there is a worn ringagged clothing:
		say "[one of]The [M] puts [his of M] hand on the back of your head, guiding [his of M] [manly-penis] through your gag and into your mouth.[or]The [M] slides [his of M] [manly-penis] through your gag. With no way of resisting[if the relevant sex addiction of M > 12], and no motivation,[end if] you have to sit there and take it as [he of M] begins to aggressively fuck your face.[or][if the relevant sex addiction of M < 7]The [M] slides [his of M] [manly-penis] through your gag. You emit a muffled grunt of indignation as [he of M] begins to thrust.[otherwise if the relevant sex addiction of M < 10]The [M] slides [his of M] [manly-penis] through your gag. You emit a muffled grunt as [he of M] begins to thrust.[otherwise]Your eyes roll back in your head as the [M] slides [his of M] [manly-penis] through your gag and into your mouth.[end if][or][if the relevant sex addiction of M < 8]Your eyes widen in horror as the [M] slides [his of M] [manly-penis] through your gag and into your mouth.[otherwise if the relevant sex addiction of M < 13]Your eyes widen with excitement as the [M] slides [his of M] [manly-penis] through your gag and into your mouth.[otherwise]The [M] slides [his of M] [manly-penis] through your gag. You emit a muffled sigh of satisfaction as [he of M] begins to thrust.[end if][in random order]";
	otherwise if the latex-transformation of the player > 6:
		say SexDollMouthPenetrationFlav of M;
	otherwise:
		if the oral sex addiction of the player < 3:
			say "[one of]The [M] traces her finger along the side of your chin, lifting her skirt as a strange tingling sensation moves up your neck. Your eyes latch onto the delicious yellow [i]popsicle[/i] she was hiding underneath her dress, and as she forces it between your lips, you can't help but wonder what the big deal is about sucking it. It's not like you hate popsicles, so why not just... suck.... Suuuuck. Suck. Suck. Suck-! You suddenly jerk out of a trance, realizing that 'yummy' thing sliding in and out of your mouth is actually someone's penis![or]The [M] puts one hand on the back of your head, grinning. You open your mouth to insult [him of M], but you suddenly have a much better idea. She'd probably hate it if you sucked her dick. Yeah. Sucked it until she came. Yeah, suck.... You catch yourself too late, struggling furiously as [M]'s [manly-penis] is already sliding in and out of your mouth.[or]The [M] points to your mouth, slowly stroking [his of M] [manly-penis]. You snarl. [line break][first custom style]'Not on your life, bitch. You really think I'd suck your huge, yummy dick? Ok, maybe I fucking will.'[roman type][line break]You grab her shaft and angrily slide it into your mouth, your eyes widening with the realization of what you've just done as she begins to thrust.[at random]";
		otherwise if the oral sex addiction of the player < 7:
			say "[one of]The [M] taps you on the chin as she lifts her skirt, revealing the big, dick-shaped [i]popsicle[/i] she was hiding underneath. A strange tingling sensation moves up your neck as she gently pushes it into your mouth, and you hesitantly begin to slurp. It's really delicious, though it doesn't taste much like a popsicle. But, delicious things should be sucked, so really that shouldn't matter. [line break][speech style of M]Faster, darling.[roman type][line break]Sucking feels so right. So good. So... so... wait. You might be wrong but it seems like you're actually sucking the [M]'s real [manly-penis]![or]The [M] puts one hand on the back of your head. Naturally, you open your mouth and accept her invading shaft. It's what anyone would do in this position. Suck. Suck until she comes. Anyone would do that.[or]The [M] points to your mouth, grinning. You open and loll out your tongue, somehow failing to break eye contact with [him of M], not even once, as [his of M] [manly-penis] slides through your lips.[at random]";
		otherwise:
			say "[one of]The [M] smiles down at you as she lifts her skirt, patting your head as you eagerly accept her [manly-penis] into your mouth. You share sighs of contentment as you begin to suck.[or]The [M] points to your mouth, grinning. You obediently loll out your tongue, gazing at [him of M] reverently as [his of M] [manly-penis] slides through your lips.[or]The [M] places one hand on your shoulder. You greedily lean forward and take [his of M] [manly-penis] into your mouth.[at random]".
	
To say (M - a vampiress) sex reaction:
	if the reaction of the player is 2:
		say "[speech style of M][one of]'As long as you're obedient, I'll do what I can to make sure that you enjoy yourself.'[or]'Don't even bother trying to fight... You won't get anywhere.'[in random order]";
	otherwise:
		say "[variable custom style]";
		if the player is gagged:
			say "[one of][if the relevant sex addiction of M < 8]It's even worse because I can't say no! ...But now that I think about it, why would I want to do that? Wait, what?![otherwise if the relevant sex addiction of M < 12]I can't say no, but [line break][second custom style]why would I want to anyway?[roman type][line break][otherwise]It's so hot when I can't say no![end if][or][if the relevant sex addiction of M < 8]It's even more humiliating because I can't say no... But I guess it doesn't matter.[otherwise if the relevant sex addiction of M < 12]She'd listen to me if I wasn't wearing this gag. Right? Because then, I could [line break][second custom style]beg her to keep going...[roman type][line break][otherwise]I love it when I can't say no![end if][or][if the relevant sex addiction of M < 8]I can't even call for... Wait, what was I thinking?[otherwise if the relevant sex addiction of M < 12]'MMMPH! MMhhmmMMPH!'[otherwise]It's even better because I can't say no![end if][at random]";
		otherwise if the player is male:
			if the relevant sex addiction of M < 8:
				say "[one of]This feels so weird... But at least I'm trying new things, right? [if M is friendly-fucking]You get what you ask for, I guess.[otherwise]Damn that feels good! Wait... Why would I think that?[end if][or]My [player-penis] feels weird.[in random order]";
			otherwise if the relevant sex addiction of M < 12:
				say "[one of]I want her to make me her bitch![or]I'm so hard...[or]Oh! That felt really good![in random order]";
			otherwise:
				say "[one of]She's hitting my g-spot! Teehee![or]'Make me jizz all over the floor!'[or]'Harder! I want to hands-free cum!'[in random order]";
		otherwise if the relevant sex addiction of M < 8:
			say "[one of]'Mmm...'[or][first custom style]'Make me your fucktoy!... Wait, what?!'[or]I didn't want this a moment ago... What changed?[or]She's using me like some sort of cheap floozy!... But I guess that's what I deserve.[or]This feels so wrong! ...And yet, somehow, it feels so right![or]'[if M is friendly-fucking]Use me![otherwise]I'm yours![end if] Make me yours!'[or]Please never let this end...[in random order]";
		otherwise if the relevant sex addiction of M < 12:
			say "[one of]It feels so good...[or]I know I shouldn't be enjoying this... On second thought, this is perfectly natural, right? Sex is supposed to feel good...[or]Why does it have to feel so good?![or]If I have to have sex, it might as well be with someone who does it right... Like my new mistress.[or]I wonder if she'll cum a lot... I hope so.[or]It feels amazing![or]I never realized sex could feel this amazing![or]I'm actually not sure if I want this to end... As a matter of fact, I'm pretty sure that I don't![in random order]";
		otherwise:
			say "[one of]Uh oh, looks like I'm trapped! Teehee![or]I can't get away! Uh ooooh![or]'Oooh!'[or]'Aaah!'[or]'Aah! Aah! Aah!'[or]'I'm having so much fun!'[or]'Oooh Shiiiit!'[or]'Yeah! Fuck me!'[or]'Don't stop! It feels so good!'[or]'Wear me out!'[or]'Fuckme! Fuckme! Fuckme!'[or]I want this to last FOREVER![or]Use me!'[or]'Use me like the dirty slut I am!'[or]'Faster, faster!'[or]'This feels SO right.'[then purely at random]";
	say "[roman type][line break]".

To compute anal sex of (M - a vampiress):
	if the class of the player is living sex doll:
		say "As the [M] continues to use your [asshole] [one of]you feel your rubberised cheeks burn brighter still, and you try to clamp your lips shut on your guttural but squeaky grunts and moans - but all you manage is a subtle flexing of the now round orifice, and the silken rasping of the manly tool through your tightly-gripping rosebud feels [italic type]so[roman type] good that, try as you might, you just keep squealing like a small stuck piglet[or]The [M] continues to use your super loose [asshole]![or]You continue to squeal as the [M] fucks your [asshole]![cycling].";
	otherwise if the reaction of the player is 2:[begging]
		say "[one of][M mercy sex 1][or][M mercy sex 2][or][M mercy sex 3][or][M mercy sex 4][at random]";
	otherwise if the reaction of the player is 1:[submitting]
		say "[one of][M submission sex 1][or][M submission sex 2][or][M submission sex 3][or][M submission sex 4][or][M submission sex 5][at random]";
		ruin asshole;
	otherwise:[resisting]
		say "[one of][M rough sex 1][or][M rough sex 2][or][M rough sex 3][or][M rough sex 4][or][M rough sex 5][at random]";
		ruin asshole;
	decrease the sex-length of M by 1;
	say "[one of][M sex reaction][or][cycling]".

To say (M - a vampiress) submission sex (N - a number):[We care about friendly fucking here but not during rough sex.]
	let O be a random orifice penetrated by M;
	if N is 1:
		say "The [M] pushes you into the floor, tickling your ears with her teeth and [if the player is female]teasing your clit[otherwise if the size of penis > 0]playing with your tip[otherwise]teasing your navel with her fingertips[end if] as [he of M] slams [his of M] [manly-penis] in and out of your [variable O].";
	if N is 2:
		say "[if the relevant sex addiction of M < 6]The [M] fucks your [variable O] with fast, hard thrusts. You close your eyes and tilt your head to the ground, focusing as hard as possible on how [line break][second custom style]Good[roman type][line break]Terrible [line break][second custom style]Good[roman type][line break]Awful[line break][second custom style] GOOD[roman type][line break]it feels.[otherwise if the relevant sex addiction of M < 10]The [M] slams in and out of your [variable O], grunting heavily. Your cheeks burn with shame as you belt out your moans of pleasure.[otherwise]The [M] slams in and out of your [variable O], grunting heavily. You can practically feel her excitement as you croon with pleasure.[end if]";
	if N is 3:
		say "[if the relevant sex addiction of M < 6]The [M] plows [his of M] [manly-penis] in and out of your [variable O]. It's extra humiliating because you can actually feel yourself enjoying it![otherwise if the relevant sex addiction of M < 10]The [M] slams [his of M] [manly-penis] in and out of your [variable O], panting heavily. You tell yourself you're only enjoying it because she's in your head, but [line break][first custom style]both of us know that's not true.[roman type][line break][otherwise]The [M] fucks your [variable O] with fast, hard thrusts. You close your eyes, losing yourself in the pleasure.[end if]";
	if N is 4:
		say "[if the relevant sex addiction of M < 7]A persistent image an [variable O] hangs in your mind, being fiercely pounded in time with the [M]'s strokes. You don't want to admit it. You [i]want[/i] to deny it...but both of you know who that hole belongs to.[otherwise if the humiliation of the player < 15000]A persistent image of your own [variable O] hangs in your mind, forcing you to watch as the [M] gives it the hard fucking [line break][second custom style]it's always deserved.[roman type][line break][otherwise if the relevant sex addiction of M < 10]A persistent image of your own [variable O] hangs in your mind, forcing you to watch as the [M] gives it the hard fucking it deserves. The [line break][second custom style]best[roman type][line break]is that you never imagined it would look so good.[otherwise]A persistent image of your own [variable O] hangs in your mind, allowing you to watch as the [M] gives your [variable O] the hard fucking it deserves.[end if]";
	if N is 5 and there is a worn chastity cage:
		say "You can feel the [M]'s hands on your [genitals] as [he of M] [one of]pounds[or]plows[or]ruts[at random] your [asshole], separated by a layer of metal, but nonetheless *there* all the same. ";
	otherwise if N is 5:
		if the player is male, say "[if the size of penis < 4 and tg fetish >= 1]The [M] ruts you like a [line break][second custom style]QUEEN[roman type][line break]. You can practically feel your manhood slipping away.[otherwise if the size of penis < 4 and the size of penis > 0 and the bimbo of the player < 14]The [M] pounds your [asshole] hard and fast. You can't help feeling a little embarrassed by how [line break][second custom style]cute[roman type][line break]your [ShortDesc of penis] compares to [his of M].[otherwise if the size of penis < 4 and the size of penis > 0]The [M] pounds your [asshole] hard and fast. You feel proud of how [line break][second custom style]cute[roman type][line break]your [ShortDesc of penis] is compared to [his of M].[otherwise if the bimbo of the player < 3]The [M]'s balls repeatedly slap your taint as [his of M] dick pistons in and out of your [asshole], as if to remind you how [line break][second custom style]pointless[roman type][line break]it would be [him of M].[otherwise if the bimbo of the player < 5]Shocks of pleasure ripple through your [manly-penis] as [he of M] pounds your [asshole]. And you thought it was humiliating [i]before[/i]...[otherwise if the bimbo of the player < 7]The [M]'s [manly-penis] relentlessly pounds your sensitive prostate, reminding you how humiliating it is to get fucked by a woman.[otherwise if the bimbo of the player < 9]Shocks of pleasure ripple through your [ShortDesc of penis] as [he of M] pounds your [asshole]. It's difficult to resist when it feels this good.[otherwise if the bimbo of the player < 10]The [M]'s [manly-penis] relentlessly pounds your sensitive prostate, reminding you that you're a [line break][second custom style]yummy[roman type][line break]faggot for enjoying this.[otherwise if the bimbo of the player < 12]As the [M] pistons in and out of your [asshole], [his of M] balls repeatedly slap your taint, as if to remind you how much you [line break][second custom style]obviously[roman type][line break]love getting railed.[otherwise if the bimbo of the player < 14]As the [M] pistons in and out of your [asshole], [his of M] balls repeatedly slap your taint, as if to remind you how much you LOVE getting fucked.[otherwise]Shocks of pleasure ripple through your [ShortDesc of penis] as [he of M] pounds your [asshole]. Phew, [he of M] sure knows how to show a girl a good time![end if]";
		otherwise say "[if the player is horny and the relevant sex addiction of M < 10]The [M] fucks your [variable O] hard and fast, knowing without a shred of doubt how desperately wet you are.[otherwise if the player is horny]The [M] fucks your [asshole] hard and fast. [big he of M] pumps [his of M] fingers in and out of your [vagina], ensuring there's no hiding how wet you really are.[otherwise if the openness of vagina > 3]The [M] plunges [his of M] fingers in and out of your [vagina] as [he of M] pounds your [asshole].[otherwise]The [M] gently pumps [his of M] fingers in and out of your [vagina], skilfully stimulating your most intimate reaches as [he of M] fiercely plows your [asshole].[end if]".

To say (M - a vampiress) mercy sex (N - a number):
	let O be a random orifice penetrated by M;
	if N is 1:
		say "The [M] fucks you as if in slow motion, pounding your [variable O] with slow, powerful strokes.";
	if N is 2:
		say "Everything around you and the [M] seems to slow down a bit, dampening yet intensifying the intensity of [his of M] thrusts.";
	if N is 3:
		say "The [M] slowly plows your [variable O], somehow lowering the intensity without losing any speed or force.";
	if N is 4:
		say "The [M] fucks your [variable O] slowly and methodically, breathing evenly as if trying to maintain focus.".
	
To compute striking attack of (M - a vampiress):
	say "The [M] disappears from your vision and appears behind you a moment later, seductively running her clawed fingers across your skin, causing you to feel fatigued and aroused.[line break][speech style of M]'[one of]Why don't you just give up, darling? You know that you want to...'[or]Why should we fight when we could have so much fun together?'[or]Such meaningless violence... Wouldn't you rather just enjoy yourself?'[or]We both know that you want me... Why should you deny yourself that which you want when it's right in front of you?'[or]You do think I'm sexy, don't you?'[or]What do you really have to lose by giving into your desires?'[in random order][roman type][line break]";
	increase health of M by 2;
	FatigueUp a random number between the difficulty of M and the difficulty of M * 3;
	arouse 750.
		
Section 2 - Damage

To compute damage of (M - a vampiress):
	if the health of M > 0:
		if M is uninterested:
			say "She grins malevolently!  Uh-oh...";
			now M is interested;
			anger M;
			now the sex-length of M is a random number between 2 and 3;
		otherwise:
			if M is friendly:
				say "The vampiress looks surprised, but quickly smirks before leering seductively in your direction!";
				anger M;
				now the sex-length of M is a random number between 2 and 3;
			otherwise:
				say DamageReaction (the health of M) of M;
				if a random number between 1 and 3 is 1, increase the sex-length of M by 1;
	otherwise:
		compute death of M.

To say DamageReaction (N - a number) of (M - a vampiress):
	if N > (the maxhealth of M / 4):
		say "The vampiress roars with shrieking laughter. It looks like the pain is encouraging [him of M]!";
	otherwise:
		say "[one of]The vampiress is no longer laughing, and now has a very serious face.[or]The vampiress teeters from side to side as [he of M] fights to maintain [his of M] balance.[stopping]".

To compute unique death of (M - a vampiress):
	let X be nothing;
	let R be a random number between 1 and 5;
	if R > 3:
		repeat with B running through off-stage cans:
			if the fill-type of B is 1:
				now X is B;
				break;
	otherwise:
		now X is a random off-stage gothic corset;
	if X is gothic corset:
		say "The vampiress's body transforms into a hoard of rats which quickly scurry out of sight. In their wake, you find her [X].";
	otherwise if X is can:
		say "The vampiress's body transforms into a hoard of rats which quickly scurry out of sight. In their wake, you find a [printed name of X]!  I bet that's useful...";
	otherwise:
		say "The vampiress's body transforms into a hoard of rats which quickly scurry out of sight.";
	unless X is nothing:
		now X is in the location of the player;
		compute autotaking X;
	if there is a worn tethering lipstick collar, end tethering;
	while M is nearby:
		now M is in a random placed haunted room;
	DifficultyUp M by 1.

Part 4 - Conversation

To IdentifiablePosterReaction of (M - a vampiress):
	say "The [M] looks at you, smirks, then looks back to the poster. [line break][speech style of M]'... I believe they caught your good side. [if the class of the player is vampire spawn]I wouldn't expect any less from one of my fledglings.'[roman type][line break]";
	say "You turn bright red with shame.";
	humiliate the lewdness of a random poster in the location of the player * 2.
	
To UnidentifiablePosterReaction of (M - a vampiress):
	say "[speech style of M]'Is this what mortals call art nowadays? ...I like it.'[roman type][line break]";
	say "You turn bright red but don't say a word.";
	humiliate the lewdness of a random poster in the location of the player.

Section 1 - Greeting

To compute talk option (N - 1) to (M - a vampiress):
	if times-met is 0, now times-met is 1; [this is a failsafe to make sure the first time greeting never displays twice.]
	let B be a random number from 1 to 4; [variable used so we can refer to bimbo seduce in the next function]
	let seduced be 0;
	if the player is seductive and B is 1 and M is raunchy:
		say "[BimboSeduce of M]";
		now seduced is 1;
		now M is interested; [This is to make sure we pass to the greeting response function]
	otherwise if M is penetrating a fuckhole and M is unfriendly:
		say "[ToDominantGreeting of M]";
	otherwise if M is penetrating a fuckhole:
		say "[ToPartnerGreeting of M]";
	otherwise if there is a monster penetrating a fuckhole:
		if a random monster penetrating a fuckhole is unfriendly, say "[midDominanceGreeting of M]"; [is the player currently being dominated by another monster?]
		otherwise say "[InSexGreeting of M]"; [is the player currently having consensual sex]
	otherwise if the times-fucked of M > the times-dominated of M and M is unfriendly:[Allows times-fucked to increment without causing weird things]
		say "[DominantGreeting of M]";
	otherwise if the times-dominated of M > the times-fucked of M:
		say "[DominantGreeting of M]";
	otherwise if the times-met of M < 2:[by adding the unfriendly check we should go straight here.]
		say "[FirstGreeting of M]";
	otherwise:
		say "[RepeatGreeting of M]";
	if M is interested:
		if seduced is 0:
			compute greeting response of M;[This is something that should be specific to every monster]
		otherwise:
			say "[BimboSeduced of M]";
	otherwise:
		if M is intelligent, now the boredom of M is 0;
		check perception of M.
		
To say FirstResponse of (M - a vampiress):
	say "[speech style of M]'Hello there, doll...'[roman type][line break]";
	now the times-met of M is 2.

To say RepeatResponse of (M - a vampiress):
	say "[speech style of M]'Hello again, [NameBimbo]...'[roman type][line break]".
	
To say UnfriendlyGreeting of (M - a vampiress):
	say "[second custom style][one of]'Be gone, bloodsucker!'[or]'Just leave me alone! I don't want to be your sex slave!'[at random][roman type][line break]";
	
To say UnfriendlyResponse of (M - a vampiress): 
	say "[speech style of M]'[one of]You're getting dull... Just kneel and get it over with.'[or]Just kneel so the fun can begin...'[or]You're really trying my patience...'[or]Don't you long to feel my touch? Then kneel!'[at random][roman type][line break]".

[To say DominantGreeting of (M - a vampiress):]
	
[To say SubmissiveResponse of (M - a vampiress):]

To say SubmissiveGreeting of (M - a vampiress):
	if the player is feeling dominant:
		say "[second custom style]'I won't bow before you again!'[roman type][line break]";
	otherwise:
		say "'[line break][second custom style]Hello mistress... You said you like the struggle of your prey, right?'[roman type][line break]".
	
To say DominantResponse of (M - a vampiress):
	if M is friendly:
		say RepeatResponse of M;
	otherwise:
		say "[speech style of M][one of]'Come back for more? They never can stay away...'[or]'It's nice to see you again... You were quite delicious.'[or]'It's good to see you... I'd love another taste.'[at random][roman type][line break]";

To say ToDominantGreeting of (M - a vampiress):
	say "[first custom style]'Please fuck me harder, mistress! Please never stop!'[roman type][line break]";

To say AsDominantResponse of (M - a vampiress):
	say "[second custom style]'[one of]My, my... Aren't you enthusiastic. What happened to your fight?'[or]Now that's better...'[or]You really are enjoying yourself, aren't you?'[or]Mindless little puppets... It's almost too easy to be fun.'[or]Shush now, slave...'[at random][roman type][line break]".

To say midDominanceGreeting of (M - a vampiress):
	if the relevant sex addiction of M < 10:
		say "[first custom style]'Help me!'[roman type][line break]";
	otherwise:
		say "[first custom style]'Hey! Care to join?'[roman type][line break]".

To say midDominanceResponse of (M - a vampiress):
	say "[speech style of M]'Perhaps another time.'[roman type][line break]".

Section 2 - Questioning

To compute annoyance of (M - a vampiress):
	if M is uninterested:
		say "The vampiress doesn't seem to realize you are talking to her.[line break]";
	otherwise if M is unfriendly:
		say "[speech style of M]'I'll answer any question you like... You just have to submit first.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'At first it was cute but I'm beginning to tire of your curiosity.'[roman type][line break]";

To say WhereAnswer of (M - a vampiress):
	say "[speech style of M]'[one of]We're in a haunted manor... Speaking of hauntings, I'd avoid the ghosts if I were you.'[or]Like I said, we're in a haunted manor. Are you a touch deaf and/or demented?[or]I'm going to go ahead and assume that you're demented... It doesn't mean that I love you any less though.[stopping][roman type][line break]".

To say WhoAnswer of (M - a vampiress):
	say "[speech style of M]'As you might have guessed, I am a vampire, and a very old one at that. Originally, I hail from Rome... You wouldn't believe the things that I've seen. By the way, my name is Aurora... Ironic, isn't it?'[roman type][line break]".
	
To say StoryAnswer of (M - a vampiress):
	say "[speech style of M]'[one of]As I might have told you, I can't remember for sure, I originally came from Rome. When I was turned, Trajan was still emperor... He was a damned fine one too. But, I digress.'[or]In case you wondered, yes, I used to feast on blood. And, for the record, people tasted better before industrialization. In addition to the pure cruelty of sucking people dry, it was all of the processed food that led me to switch from blood to cum... Though, truth be told, cum used to taste better as well. When all else fails, at least there's pineapple.'[or]When I was younger, I served as a vestal virgin... If they could only see me now!'[or]Why am I here? I found out about this little game and decided it might be amusing. I fucked the creator, manipulated them into letting me in and they don't even remember me doing it!'[as decreasingly likely outcomes][roman type][line break]".
	
To say EscapeAnswer of (M - a vampiress):
	say "[speech style of M]'I suppose you can leave this place any time you like. It isn't as though this mansion is that big! Just find the front door and walk out. Now getting back to your home... That's the real question, isn't it?'[roman type][line break]".
	
To say AdviceAnswer of (M - a vampiress):
	say "[speech style of M]'[one of]I'm not the only dead thing here, just to warn you. The ghosts here can be quite annoying.'[or]I'd avoid the cultists if I were you. There's a price to be paid for the things that they engage in... But then again, there's a price for just about everything, isn't there?[or]The owners of this house had an odd sense of humor. You might want to avoid the mirrors, and some of the chests are not quite what they seem.'[at random][roman type][line break]".

Section 3 - Drink Requesting

To compute unfriendly drink of (M - a vampiress):
	if M is unfriendly:
		say "[speech style of M]'Sure... I might have something to put in your mouth. All you have to do is kneel.'[roman type][line break]";
		now the boredom of M is 0;
	otherwise:
		say "[speech style of M]'I'm afraid not.'[roman type][line break]".

To compute friendly drink of (M - a vampiress):
	say "[speech style of M]'I'm afraid you'll have to ask someone else.'[roman type][line break]".

Vampiress ends here.

