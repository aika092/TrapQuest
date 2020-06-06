Vampiress by Monster begins here.

vampiress is a monster. vampiress is intelligent. vampiress is male. The poison-status of vampiress is -1. vampiress has a number called hunger-timer.

vampiress has a thing called stake. The stake of vampiress is the throne.

[The vampiress only goes for vaginal sex if she's really hungry]
Definition: vampiress is willing to do vaginal if the hunger-timer of it > 50.

Definition: vampiress is willing to do titfucks: decide no.

Definition: vampiress is raunchy: decide yes.

Definition: vampiress is wenchy: decide yes.

The text-shortcut of vampiress is "va".
Understand "vampire", "seductive", "vamp" as vampiress.
Figure of Vampiress is the file "NPCs/Mansion/vampiress1.png".

Definition: vampiress is presenting as male if lady fetish is 2.

Definition: vampiress is father material: decide no.

To say ShortDesc of (M - vampiress):
	say "[if lady fetish is 2]vampire[otherwise]vampiress[end if]".

To say MediumDesc of (M - vampiress):
	say "[if M is willing to do vaginal]famished[otherwise]seductive[end if] [ShortDesc of M]".

To decide which figure-name is the monster-image of (M - vampiress):
	decide on figure of vampiress.

To say MonsterDesc of (M - vampiress):
	let S be the stake of M;
	if lady fetish is 2, say "A monstrous, seductive looking [man of M] with flowing golden brown hair and sharp fangs. [big he of M]'s wearing a cape and a linen loincloth. [if S is clothing][big he of M] currently has a [MediumDesc of S] in [his of M] ass, which seems to be interfering with [his of M] vampiric powers[otherwise if M is willing to do vaginal][big he of M] looks starved[otherwise]The look in [his of M] eyes suggests that [he of M]'s outrageously turned on[end if].";
	otherwise say "A monstrous, seductive looking [man of M] with flowing, golden brown hair and sharp fangs. [big he of M]'s wearing a skirted black and red corset. [if S is clothing][big he of M] currently has a [MediumDesc of S] in [his of M] ass, which seems to be interfering with [his of M] vampiric powers[otherwise if M is willing to do vaginal][big he of M] looks starved[otherwise]The look in [his of M] eyes suggests that [he of M]'s outrageously turned on[end if].".

To set up (M - vampiress):
	reset M;
	now the monstersetup of M is 1;
	now the raw difficulty of M is 9;
	now the health of M is the maxhealth of M;
	now the stake of M is the throne;
	now M is in Mansion16.

An all time based rule (this is the vampiress hunts untidy players rule):
	if diaper messing >= 6 and vampiress is off-stage:
		if playerRegion is not Mansion:
			repeat with SD running through on-stage soiled-diaper:
				if SD is in the Mansion:
					now SD is retained by vampiress;
					now vampiress is in the location of SD;
					now SD is in Holding Pen;
					set up vampiress.

To decide which number is the girth of (M - vampiress):
	decide on 4.

[The vampiress cannot use a hole that has been specifically blocked]
Definition: a vampiress (called M) is able to remove cursed plugs:
	if the player is diaper focused, decide yes;
	decide no.

Definition: a vampiress (called M) is able to remove plugs:
	if M is able to remove cursed plugs, decide yes;
	decide no.

Definition: vampiress (called M) is willing to shag:
	if the boredom of M < 120 and M is threatening, decide yes;
	decide no.

To decide which number is the base semen load of (M - vampiress):
	decide on 3.

Definition: vampiress is human: decide yes.

To check chase boredom of (M - vampiress):
	if M is not in the location of the player and a random number from 1 to (15 + (30 * the number of worn catbells)) is 1 and the number of worn tethering lipstick collars is 0 and the player is not bed-stuck and gargoyle is not grabbing the player:
		bore M for 0 seconds;
		if M is threatening and M is regional:
			progress quest of nice-quest;
			say "You sense that [NameDesc of M] has lost interest in chasing you.";
		compute survival check of M.

Part 1 - Misc Flavour

To say SummoningFlav of (M - vampiress):
	if M is in the location of the player:
		say "You hear high pitched shrieking as dozens of bats fly in through some narrow, high windows, converging in a twisting mass of flapping wings and black fur. Just as suddenly as they appeared, the bats disperse, leaving a [printed name of M] standing in front of the mummy.";
	otherwise:
		say "You hear the sound of bats squeaking coming from [if playerRegion is mansion]another part of the mansion[otherwise]the mansion in the woods[end if].".

To say DiaperReaction of (M - vampiress):
	if M is unfriendly and diaper quest is 0:
		say "[BigNameDesc of M] smirks condescendingly. [line break][speech style of M][one of]'Why don't you just lay down, baby. I'll take that diaper off for you...'[or]'Want something to suck, sweetheart? I think I can help...'[or]You're looking kind of sick baby! Why don't you lie on your tummy and let me stick my thermometer inside of you. Just be warned, it's pretty big.[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Poor baby... Not even potty trained yet.'[or]Well, it's a good thing you're still in diapers, isn't it?'[or]Don't worry. I couldn't care less whether you're potty trained or not.'[at random][roman type][line break]";
	if the diaper addiction of the player < 10, say "[variable custom style][if the player is able to speak]'This doesn't usually happen, I swear!'[otherwise]I can't even tell [him of M] that this isn't what I usually wear![end if][roman type][line break]";
	otherwise say "You turn bright red.".

To say GroundPeeReaction of (M - vampiress):
	if diaper quest is 1:
		say "[BigNameDesc of M] looks enraged.[line break][speech style of M]'You dare soil MY HOUSE with your FOULNESS?!'[roman type][line break][if M is interested and M is unfriendly]Your fate has just been sealed[otherwise if the player is upright]Get on your knees[otherwise]Stay right where you are[end if], cretin!'[roman type][line break]";
		now M is diaper-committed;
	otherwise:
		say "[BigNameDesc of M] frowns angrily.[line break][speech style of M]'You are an utter disgrace!'[roman type][line break][if M is uninterested]Uh-oh...[end if]";
	anger M;
	now M is interested.

To say ClothesPeeReaction of (M - vampiress):
	say GroundPeeReaction of M.

Part 2 - Perception

To decide which number is the outrage tolerance of (M - vampiress):
	decide on 10.

Definition: vampiress (called M) is objectifying the player:
	if M is willing to do vaginal, decide yes;
	if M is not interested or M is not in the location of the player:
		now the objectification of M is 0;
		decide no;
	if there is a worn tethering lipstick collar, decide yes;
	if the objectification of M is 1, decide yes;
	if the class of the player is cheerleader, decide no;
	let A be the appearance of the player;
	if the bimbo of the player >= 20 or A >= 20 or A > the bimbo tolerance of M:
		now the objectification of M is 1;
		decide yes;
	decide no.

To compute perception of (M - vampiress):
	now M is interested;
	say "[BigNameDesc of M] notices you!";
	if the player is not able to get horny or the player is barbie:[covers living sex doll]
		say "[speech style of M]'You are not even fit for feeding. How amusing. Now get out of my sight.'[roman type][line break]";
		distract M;
		if there is a worn tethering lipstick collar:
			let T be a random lipstick collar;
			say "The chains binding you to the floor, along with the [ShortDesc of T], completely disintegrate, freeing you.";
			now T is not tethering;
			destroy T;[you get a freebie, but only one freebie]
	otherwise if there is a worn tethering lipstick collar:
		say "[speech style of M]It's those sticky fingers of yours that make me so determined to give you a sticky face.[roman type][line break]";
		anger M;
	otherwise if the class of the player is vixen:
		say "[speech style of M]'[one of]Did you think you could fool me with that disguise, fox girl? Don't worry, darling. This time, everything you'll be taking from me is free.'[or]There you are, darling. I have something here that you simply must take. I won't take no for an answer, darling.'[stopping][roman type][line break]";
		anger M;
	otherwise if the class of the player is barbarian:
		say "[speech style of M]'[one of]Oh my, a cave[if the player is presenting as female]woman[otherwise]man[end if]? Hm. No point with the pretext then. Get on your knees.'[or]Oh, a barbarian. How retro. Can you get on your knees for me, darling? Do you know that that means?'[or]So, you're a barbarian? Hm. It feels pointless, but we can avoid being violent, can't we? Get on your knees.'[at random][roman type][line break]";
		anger M;
	otherwise:
		compute appearance assessment of M;
		if M is unfriendly, say "[BigNameDesc of M] licks [his of M] lips.[line break][speech style of M]'I simply must have you, right now!'[roman type][line break]".

[As long as you aren't a vampire spawn, the vampiress always loses some favour when she sees you]
To compute appearance assessment of (M - vampiress):
	if there is a worn messed knickers:
		say "[speech style of M]'My, my, my! Aren't you just the world's biggest baby? Why don't you find someone to change that underwear and come back to see me?'[roman type][line break]";
		distract M;
		if there is worn perceived unmessed knickers, compute state check of a random worn messed knickers;
	otherwise if the class of the player is vampire spawn:
		if M is willing to do vaginal:
			say "[speech style of M]'I have to feed. I HAVE TO FEED![roman type][line break]";
			anger M;
		if the player is craving semen:
			say "[speech style of M]'Hello there, my youngest fledgling. Don't forget to feast. I wouldn't want you to lose your strength.'[roman type][line break]";
		otherwise if the player is desperately craving semen:
			say "[speech style of M]'... You look awful. You mustn't let yourself go hungry. I recommend going to find one of those wenches to present your face to. Surely they will feed you.'[roman type][line break]";
		otherwise:
			say "[speech style of M]'Hello there, my youngest fledgling. You don't look hungry yet but, mark my words, you will be. Don't go too long without feasting on some sort of seminal fluid or you'll regret it.'[roman type][line break]";
	otherwise if M is buddy:
		if the player is live fucked:
			say "[speech style of M]'Mmm, I love the show.'[roman type][line break]";
			FavourDown M by 2;
		otherwise if the number of glazed body parts > 0:
			say "[speech style of M]'Darling, you smell heavenly. Clean yourself soon or I will have no choice but to ravish you.'[roman type][line break]";
			FavourDown M by 3;
			distract M;
		otherwise if the class of the player is faerie:
			say "[speech style of M]'Hello there. How is your fairy dust treating you?'[roman type][line break]";
			FavourDown M by 2;
		otherwise if M is groping:
			FavourDown M by 1;
			compute grope of M;
		otherwise:
			say "[speech style of M]'[one of]Hello. Are you enjoying my mansion? Don't be a stranger, I don't usually bite.'[or]Ah, hello there. I always welcome guests in my mansion. Especially ones that smell so good...'[or]Hello there. [big please] enjoy my mansion. All mortals are welcome.'[at random][roman type][line break]";
			FavourDown M by 1;
	otherwise if M is friendly:
		if the class of the player is faerie:
			say "[speech style of M]'[one of]Unfortunately this mansion is mine, darling. Begone, I will tolerate no more of your kind. Unless you plan to feed me.'[or]Oh. There are always more of you. Begone, or I will feed upon you.'[or]Begone, I have no interest if you cannot be turned. Don[']t make me get the broom.'[at random][roman type]";
			FavourDown M by 2;
		otherwise if the number of glazed body parts > 0:
			if the player is live fucked:
				say "[speech style of M]'Mmm, I love the show, and you smell divine. I think it's time I fed from you.'[roman type][line break]";
				anger M;
			otherwise:
				say "[speech style of M]'Mmm, that smell is... divine. You simply MUST join me for dinner soon.'[roman type][line break]";
				FavourDown M by 3;
		otherwise if the appearance of the player > the outrage tolerance of M:
			FavourDown M by 1;
			if M is friendly:
				if M is groping:
					compute grope of M;
				otherwise:
					say "[speech style of M]'Hello there. You do look like a [tasty] one. I'm hosting dinner soon, if you would like to join me.'[roman type][line break]";
		otherwise:
			say "[speech style of M]'[one of]Welcome to my humble abode. You are free to roam for now, but [please] do not take that which is not yours.'[or]Good afternoon, mortal. If I might ask a personal question, do you have a [manly-penis] or a [pussy]? No, don't tell me, I'm sure I have guessed correctly...'[or]Hello again, friend. I must admit, you are not the most outrageously dressed [whore] I've seen today.'[then at random][roman type][line break]".

To compute DQ perception of (M - vampiress):
	now M is interested;
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]"; [The output for clothing humiliation takes place within the 'sluttily dressed' check.]
	if M is uniquely unfriendly:
		if there is a worn tethering lipstick collar:
			say "[speech style of M]It's those sticky fingers of yours that make me so determined to give you a sticky surprise.[roman type][line break]";
			anger M;
		otherwise:
			say "[speech style of M]'[if the diaper-duration of M > 0]It's time to continue your slave training, little one. I'm not letting you out of diapers yet.'[otherwise if the times-submitted of M > 0][one of]Haha, I knew you'd be back for more. We're going to have fun together, child.'[or]Again? I really left my mark on you, didn't I!'[or]Gosh, no matter how I treat you, you always come back for more. Well then...'[then at random][otherwise]Good timing, I have been waiting a long time to find a new slave!'[end if][roman type][line break]";
	otherwise if (there is a worn diaper or the diaper-duration of M > 0) and the player is immobile:
		say "[big he of M] seems to decide to leave you alone for now.";
		distract M;
	otherwise if there is a worn currently at least partially visible diaper or M is aware that the player needs a change:
		compute diaper check of M;
	otherwise if the diaper-duration of M > 0:
		if there is a worn diaper:
			compute diaper check of M;
		otherwise:
			say "[big he of M] swiftly walks up to you and holds [if diaper messing < 3]a hand to the front[otherwise]hands to the front and back[end if] of your crotch, pushing firmly to get a good feel.[line break][speech style of M]'SLAVE! I specifically remembering to command you to stay in diapers at ALL TIMES! You will regret the day you underestimated my fury!'[roman type][line break]";
			anger M;
			FavourDown M by 4;
	otherwise if M is unfriendly and the diaper-duration-ended of M is 0:
		say "[speech style of M]'[if the diaper-duration of M > 0]It's time to continue your slave training, little one. I'm not letting you out of diapers yet.'[otherwise if the times-submitted of M is 0]You look like you'll make a good slave. Excellent.'[otherwise]You again! [one of]I was half expecting that you wouldn't return.'[or]I'm glad to see that you continue to return to your Mistress.'[at random][end if][roman type][line break]";
	otherwise:
		if the diaper-duration-ended of M is 1:
			calm M;
			FavourUp M by 2;
			say "[BigNameDesc of M] doesn't even look up.[line break][speech style of M]'Yes, yes, I know, I promised that you wouldn't have to remain in diapers if you could prove yourself, and I guess you have done that successfully. Fine, I shall revoke the rule. You may return to adult underwear... if you really want to!'[roman type][line break][big he of M] then begins to assess your current appearance. ";
			now the diaper-duration-ended of M is 0;
		let F be the favour of M;
		compute DQ appearance assessment of M;
		if M is interested: [If [he of M] is interested [he of M] hasn't finished speaking.]
			if M is unfriendly:
				say "I shall dispense an appropriate punishment... right now.'[roman type][line break]";
			otherwise if the favour of M < F:
				say "[one of]It is taking all my self-control to not punish you right here right now.'[or]Leave my sight before I change my mind and punish you right now.'[in random order][roman type][line break]";
			otherwise:[Default catch-all]
				say "[one of]I'll be watching your progress with great interest.'[or]I wonder, will you be the first to actually make it out of this world with their dignity intact?'[in random order][roman type][line break]".

To compute DQ appearance assessment of (M - a vampiress):
	if the saved cringe appearance of the player > the cringe tolerance of M:
		say "[speech style of M]'Dracula's fangs! [if the times-met of M > 1]And to think I expected to finally see someone displaying a sensible amount of [maturity] around here. You look like an overgrown child! [otherwise]Is that really a fully grown human under all that? I cannot tolerate such disrespectful attire in my presence from someone who isn't yet my full-time slave. [end if]";
		FavourDown M by 2;
	otherwise if the saved appearance of the player > the outrage tolerance of M:
		say "[speech style of M]'Sweet Bella! I've never seen such an overly provocative [if the player is gendered male]male[otherwise]female[end if] in my life. You're really asking for it, you know that? ";
		FavourDown M by 2;
	otherwise:
		say "[speech style of M]'Well well, adventurer, [one of]aren't you far from home? [or]I see you're still around, and coping well. [stopping]".

To compute unique periodic effect of (M - vampiress):
	if diaper quest is 0:
		increase the hunger-timer of M by 1;
		if the remainder after dividing the hunger-timer of M by 30 is 0 and M is willing to do vaginal and M is not grabbing the player and M is not penetrating a body part:[she can't disappear if she's in the middle of feeding]
			DifficultyDown M by 1;
			decrease the hunger-timer of M by 30;
			if the raw difficulty of M is 0:
				if M is in the location of the player, say "[BigNameDesc of M] doubles over, groaning as if in agony. [big he of M] gives you a single doleful, famished look as [his of M] body dissolves into a cloud of bats and disperses in every direction. You have a feeling [he of M] won't be back soon.";
				otherwise say "You hear the screeching of fleeing bats coming from another room in the mansion.";
				destroy M.

Part 3 - Combat

To say MercyReaction of (M - vampiress):[possibly change this, doesn't really fit with her personality]
	say "[speech style of M]'Your pleas only turn me on more, you pathetic creature! [big please], continue singing such sweet melodies so I may find the inspiration to use you harder!'[roman type][line break][big he of M] drags [his of M] fangs your skin, not hard enough to break the skin but the sensation still stings terribly, causing you to whimper.";
	bodyruin 1;
	PainUp 1.

To compute kneeling reaction of (M - vampiress):
	say "[BigNameDesc of M] approaches you, sticking [his of M] sharp talon-like finger nails in your hair and rubbing sensuously.[if diaper quest is 0][line break][one of][line break][speech style of M]'I'm hungry and you're clearly defeated. I won't hurt you too badly as long as you stay still. Understand?'[or]'I'm hungry and you don't want to fuck with me. Don't move a muscle or you'll regret it.'[or]'You know, I could have overcome your mind any time that I wanted... I just like to see my prey squirm first.'[in random order][roman type][line break][end if]".

To say waitingflav of (M - vampiress):
	if times-submitted of M < 1:
		say "Your eyes glaze over and, no matter what your previous thoughts were, you now desire very strongly to be fucked by the beautiful creature before you. Suddenly, [he of M] pulls out a [LongDickDesc of M] and seems to contemplate where [he of M] wishes to place it as though [his of M] decision is a matter of life or death.";
	otherwise if the player is not able to speak and the player is not a pervert:
		say "[one of][line break][variable custom style][muffled sounds][roman type][line break][or]You peer up at [NameDesc of M] silently. Something in your mind pops and you find your vision turn from derision to lust.[at random]";
	otherwise if the player is not able to speak:
		say "[one of][line break][variable custom style][muffled sounds][roman type][line break][or]You peer up at [NameDesc of M] silently.[at random]";
	otherwise if the player is not a pervert:
		say "[one of]You glare up at the monster before you, letting your loathing of [his of M] be known. However, as moments go by, you find your hatred harder to express as your anger dissipates.[or]You bow your head, defeated. You feel something penetrate your mind and, suddenly, regardless of your previous disposition, you are now eager to see what [he of M] has in store for you.[or][line break][first custom style]'You aren't going to drink my blood, are you?'[roman type][line break][or]You avert your eyes, hoping that your blood will stay in your body. Suddenly, you feel a flicker in your brain and you decide that it wouldn't be that bad letting [him of M] drain you.[or]You can't help but wonder if the stories are true... If [he of M] bites you, will you become a vampire?[in random order]";
	otherwise:
		say "[one of][big he of M]'s actually pretty hot... This will probably be fun.[or]You wait eagerly in place to see what [he of M] has in mind.[or][line break][variable custom style]'I've got something you can suck, if you know what I mean.'[roman type][line break][or][line break][variable custom style]'As long as you don't drink my blood, I'm on board. '[roman type][line break][or]Your blood pumps in your ears as you chitter happily at the thought of being [hers of M] forever.[in random order]";

To say SexSubmissionFlav of (M - vampiress):
	if diaper quest is 1:
		say "[one of]Recognising how much more powerful [NameDesc of M] is than you, you decide not to fight back[or]As humiliating as it is to let [him of M] have [his of M] way, it's not like you can do much about it anyway[or]You submit to the superior being[in random order].";
	otherwise if M is penetrating face:
		if the throatskill of the player is 1 and the oral sex addiction of the player >= 7:
			say "You passionately deepthroat the vampiress, taking [his of M] entire length into your throat over and over again with ease.";
		otherwise if the oral sex addiction of the player < 4:
			say "[one of]You slowly move your head back and forth, ashamed of what you've become and yet, for some reason, enjoying this action against your will.[or]You reluctantly suckle the vampiress's pulsating [DickDesc of M], finding the experience disturbingly delightful.[or]You bob your head back and forth, trying glare upward defiantly. Somehow, your body translates this into staring up lovingly.[or]You reluctantly but passionately suck the vampiress's [DickDesc of M], cheeks red with shame.[in random order]";
		otherwise if the oral sex addiction of the player < 7:
			say "[one of]You [if futanari fetish is 1 or lady fetish < 2]finger the vampiress's slit[otherwise]fondle the vampire's balls[end if] as you joyously suckle [his of M] [DickDesc of M].[or]You fellate [NameDesc of M] with restrained enthusiasm, getting more into this than you thought possible.[or]You bob your head back and forth, trying to convince yourself you're not enjoying it. Even you can't begin to believe your lies.[or]You slowly and obediently stroke the vampiress's [DickDesc of M] as you pull back and tease it with your tongue.[or]You move your head back and forth, dragging your tongue along the bottom of [his of M] [DickDesc of M].[in random order]";
		otherwise:
			say "[one of]You passionately pump the vampiress's [DickDesc of M] as you bob your head back and forth.[or]You fellate [NameDesc of M] with unrestrained enthusiasm.[or]You suck the vampiress's [DickDesc of M] like the hungry cumslut you are.[or]You aggressively fellate the vampiress, emitting muffled moans of contentment.[or]You gaze up at [NameDesc of M] lovingly as you eagerly pleasure [his of M] [DickDesc of M].[or]You enthusiastically pleasure [NameDesc of M] with your mouth and tongue.[or]You pucker your lips and finger [his of M] [vagina] as you hungrily suckle [his of M] [DickDesc of M].[in random order]";
	otherwise:
		say "[if the bimbo of the player < a random number between 8 and 13][one of]You lie still and accept the invasion.[or]You gleefully submit to being used as a plaything.[or]You don't resist being used... You're not even sure that you remember how to resist.[in random order][otherwise][one of]You purposefully loosen up and accept the vampiress's thrusts to easily slide fully in and out.[or]You push back at [NameDesc of M] enthusiastically in the same rhythm that [he of M] is fucking you.[in random order][end if]";
		say "[variable custom style][one of][if the relevant sex addiction of M > 12 and the player is able to speak]'Fuck me, mistress!'[otherwise if the relevant sex addiction of M > 12 and the player is able to make sounds][muffled sounds][otherwise]Maybe if I relax, this will hurt less?[end if][or][if the relevant sex addiction of M > 10]This feels too good![otherwise if the relevant sex addiction of M > 5]Why am I letting [him of M] do this so willingly? Am I a whore?[otherwise]It hurts so good![end if][or][if the relevant sex addiction of M > 13 and the player is able to speak]'That feels good! Go faster!'[otherwise if the relevant sex addiction of M > 13 and the player is able to make sounds][muffled sounds][otherwise if the relevant sex addiction of M > 8]Maybe I really am a slut?[otherwise]I wanted this to end a moment ago but now I'm not sure.[end if][or][if the player is able to make sounds][muffled sounds][otherwise if the relevant sex addiction of M > 14 and the player is able to speak]'Harder!'[otherwise if the relevant sex addiction of M > 14]I kind of wish [he of M]'d go even harder![otherwise if the relevant sex addiction of M > 6] How am I enjoying this so much?[otherwise]Why do I wish that [he of M] would never stop fucking me?[end if][purely at random][roman type][line break]".

To say VampResistRefusalFlav:
	say "[if the bimbo of the player > a random number between 8 and 13][one of]You consider resisting, but it's even easier than normal to just give in and let it happen.[or]You tell your body to resist, but it ignores you completely, just like you hoped it would.[or]Your body refuses to resist, but it doesn't bother you as much as it should...[at random][otherwise][one of]You try to resist, but your body ignores you completely. It's like it's not even on your side here![or]You can feel the vampiress[']s influence like a heavy weight on your mind, twisting every rebellious idea into fervent submission.[or]Your body refuses to obey your commands, moving in a way not unlike you'd expect [NameDesc of vampiress] to move [himself of vampiress].[or][BigNameDesc of vampiress] has an ironclad grip on your mind, nullifying every thought of resistance and replacing them with unconditional submission.[or]You try to resist the vampiress, but your body fights you at every turn. [big he of vampiress]'s keeping you from controlling your own actions![or]Instead of fighting the way you tell it to, your body emits a sharp moan instead, as if to tell you to stop resisting and give in.[in random order][end if]";
	if the player is able to speak:
		say "[variable custom style]'[one of][if the bimbo of the player > 11]I'm yours, mistress...'[otherwise]Thank you, mistress...'[end if][or][if the bimbo of the player > 10]I don't deserve your time, mistress.'[otherwise if the bimbo of the player > 5]Thank you for letting me please you, mistress'[otherwise]'Do whatever you want with me, mistress'[end if][or][if the bimbo of the player > 13]I just want to be yours forever!'[otherwise if the bimbo of the player > 7]Please don't stop, mistress!'[otherwise]Oh my god! Yes!'[end if][purely at random][roman type][line break]";
	otherwise:
		say "[variable custom style][muffled sounds][roman type][line break]".

To say OralAddResRefusalFlav of (M - vampiress):
	say "[one of]You give a half-hearted thought to resisting, but it passes as you absorb yourself in polishing [his of M] [DickDesc of M] like the cumhungry slut you are.[or]You don't really want to resist, and it's like your body knows! You submissively pleasure [NameDesc of M] anyway, hoping for a satisfying semen fix.[or][if the player is feeling dominant]It's incredibly degrading, but your body just won't listen when you tell it to resist. Not when there's a [DickDesc of M] in your mouth just waiting to feed you a helping of delicious [semen].[otherwise]It's like your body won't resist knowing there could be a mouthful of tasty [semen] in this for you.[end if][or][if the sex addiction of the player < 10 and the player is female]You know it's something only a complete harlot would do, but your body is practically acting on its own! You just can't pass up a mouthful of fresh, tasty [semen]![otherwise]You consider resisting as you desperately suckle the vampiress's [DickDesc of M] for all it's worth. Maybe you[']ll fight back some other time...[end if][in random order]";

To say OralSlutResRefusalFlav of (M - vampiress):
	say "[one of][if the player is feeling dominant]No matter how much you 'want' to resist, you can't keep yourself from desperately suckling [his of M] [DickDesc of M].[otherwise]Why resist? Sucking [DickDesc of M]s is FUN, and all resistance is pointless anyway![end if][or][if the oral sex addiction of the player < 5]You hate yourself for it, but no matter how much you know you want to resist, you can't help suckling the vampiress's [DickDesc of M] for all it's worth.[otherwise]One part of you wants to resist, but it's just so easy to keep polishing the yummy [DickDesc of M] in your mouth! Oh well![end if][in random order]";

To say ThirstResRefusalFlav of (M - vampiress):
	say "[one of]You want to resist, you really do, but your body needs water... it's not responding to you at all.[or]You tell yourself to resist, but your body needs something to drink, and it knows where it can find something absolutely delicious.[or]Your body ignores every order to resist, desperately searching for a wet, sloppy answer to its thirst.[at random]";

To say SwallowDemand of (M - vampiress):
	say "[speech style of M][one of]'You have permission to nourish yourself with my [semen], slave. Do not be ungracious.'[or]'Swallow like a good whore and you'll be making your mistress very happy.'[or]'You should feel lucky that I've decided to share my gift with you.'[or]'This is a gift... Appreciate that.'[or]'I could make you swallow, if I wanted. But you can do that on your own, can[']t you?'[in random order][roman type][line break]".

Section 1 - Attack

To compute (M - vampiress) attacking (C - knickers):
	if C is zippable:
		say "[UnzipFlav of M at C]";
		ZipDown C;
	otherwise:
		say "[PullAttempt of M at C]";
		let R be a random number between the difficulty of M and 6 + a random number between the difficulty of M and 6;
		if debuginfo > 0, say ClothingAttackDebug of M on C with R;
		if R > the defence of the player:
			compute M destroying C;
		otherwise if R > the defence of the player - 2 and C is rippable:
			compute M ripping C;
		otherwise if R > the defence of the player - 4 and C is displacable:
			compute M displacing C;
		otherwise:
			say "[WeakenFlav of M on C]";
			damage C.

To reset vampire hunger:
	now the hunger-timer of vampiress is 0;
	DifficultyUp vampiress by 3.

This is the vampiress punishes diaper rule:
	let D be a random worn diaper;
	if D is total protection diaper:
		let M be current-monster;
		if D is not messed and the player is able to get horny:
			say "The vampiress, seeing your diapered state, gets an odd look in [his of M] eyes before smiling deviously. The pupils of [his of M] eyes turn white and, out of nowhere, your [asshole] begins dilating widely, as if something rather large were penetrating you. Overcome by the sensation, you fall down onto your hands and knees, sticking your ass into the air behind you as the phantom lover continues to fuck you wildly.[line break][if the anal sex addiction of the player < 4][line break][variable custom style]'Wait... What are you doing?! How are you doing that?! Please stop!'[roman type][line break]Despite yourself, you moan loudly and bite your lower lip.[otherwise if the anal sex addiction of the player < 7][line break][variable custom style]'Oh my god!'[roman type][line break]Despite your attempts to simply hate this, you quiver in pleasure and grind your ass against a lover that isn't there as your [asshole] continues to be stimulated by this monster's power. [otherwise][line break][variable custom style]'Go harder! Go faster! Whatever you do, please don't ever stop!'[roman type][line break]You pant and moan like a bitch in heat as your [asshole] continues to dilate to various shapes and sizes.[end if][line break]";
			anally orgasm shamefully;
			say "Seeing your climax, [NameDesc of vampiress] walks up to you, kneels down and reaches up through the leg holes of your diaper, scooping your cum into [his of M] fingers and licking them sensuously.[line break][speech style of M]'Thanks for the treat, baby.'[roman type][line break][if the anal sex addiction of the player < 5]Wait... What the hell was that?![otherwise if the anal sex addiction of the player < 7][line break][variable custom style]'Huh?!'[roman type][line break][big he of M] simply laughs at you before ignoring you altogether.[otherwise][line break][variable custom style]'No... Thank you!'[roman type][line break]You're not completely sure what that was but you look forward to the next time you get to do it.[end if]";
			now the stance of the player is 1;
			bore M for 450 seconds;
			reset vampire hunger;
			rule succeeds.
The diaper punishment rule of vampiress is usually the vampiress punishes diaper rule.

To say LongDickDesc of (M - a vampiress):
	if futanari fetish is 0, say "large, gem-encrusted strap-on";
	otherwise say "large [manly-penis]";

To say DickDesc of (M - a vampiress):
	if futanari fetish is 0, say "strap-on";
	otherwise say "[manly-penis]".

To say TwosomePrep of (M - vampiress) in (F - asshole):
	say "[BigNameDesc of M] [if the times-submitted of M < 1]pulls out a [LongDickDesc of M] from in-between [his of M] legs and pushes it between your cheeks[otherwise]places [his of M] [DickDesc of M] between your cheeks[end if], gently but firmly pulling your hips up against [his of M] body.".

To say TwosomePrep of (M - vampiress) in (F - vagina):
	say "[BigNameDesc of M] [if the times-submitted of M < 1]pulls out a [LongDickDesc of M] from in-between [his of M] legs[otherwise]lets [his of M] [DickDesc of M] tap your thigh[end if] as [he of M] gently but firmly pulls your hips up against [his of M] body.".

To say PrepTaunt of (M - vampiress) in (F - a fuckhole):
	if the times-submitted of M < 1:
		if futanari fetish is 0, say "[speech style of M]'Don't worry darling, it's enchanted to be as flexible as the real thing. It has all sorts of interesting enchantments, actually...'[roman type][line break]";
		otherwise say "[speech style of M]'Yes... To answer the question that is most certainly on your mind, in addition to a vulva, I have a [manly-penis]. I suppose you are about to become a lot more well acquainted with it, aren't you?'[roman type][line break]";
	otherwise if the class of the player is vampire spawn and the last-interaction of M is 0:
		say "[speech style of M]'Be still. Nothing is more intimate than the trading of fluids between vampires.'[roman type][line break]";
	otherwise if the last-interaction of M is 0:
		say "[speech style of M]'[one of]Stop fighting, mortal!'[or]If you don't give in, I might never let you go!'[or]Resistance is futile, [NameBimbo].'[or]Stop trying to be such an insolent little shit!'[in random order][roman type][line break]".

To decide if (M - vampiress) is willing to creampie (F - asshole):
	if M is willing to do vaginal, decide yes;
	if the reaction of the player is not 1, decide no;[she stops for both begging and resisting]
	decide yes.

To compute (M - vampiress) pulling out of (F - a fuckhole):
	passively stimulate F from M;
	say PullOutFlav of M in F;
	let R be a random number between 0 and 2;
	RandomAddictUp R;
	Intdown 2 - R.

To compute post climax effect of (M - a vampiress) in (F - a fuckhole):
	reset vampire hunger.

To compute creampie of (M - vampiress) in (F - asshole):
	say CreampieFlav of M in F;
	compute M finishing in F;
	if vampiric fangs is actually summonable:
		summon vampiric fangs cursed;
		follow the vampire rules;
	if refractoryperiod > 0, DifficultyUp M by 3.

To compute creampie of (M - vampiress) in (F - vagina):
	say CreampieFlav of M in F;
	compute M finishing in F;
	if refractoryperiod > 0, DifficultyUp M by 2.

To compute condom success of (M - vampiress) in (F - a fuckhole):
	say CondomPieFlav of M in F;
	let R be a random number between 10 and the difficulty of M;
	if the number of worn ballgags is 0 and R > the semen taste addiction of the player and the player is bimbo consenting:
		say "You obediently open your mouth as [semen] slowly dribbles out of the open end, plopping wetly onto your tongue before slowly rolling down your throat. [big he of M] grins, lowering it closer and closer to your face as it empties out, shaking it twice before gently laying it to rest on the bridge of your nose.";
		say "[speech style of M]'Wear it. Let everyone know of our tryst.'[roman type][line break]";
		humiliate 200;
		StomachSemenUp the semen load of M;
	otherwise:
		say "[speech style of M]'[if the number of worn ballgags > 0]What's that dear? You can't? Just think what you're missing out on, darling. Think hard...'[otherwise if R > the semen taste addiction of the player]Wait a moment, darling, what am I saying? You are not ready for my seed now, but you WILL be...'[otherwise]Oh my. But aren[']t you hungry?'[end if][roman type] The condom disappears from [his of M] hand in a flash of mesmerising purple flames, and you feel a strange tickle in the back of your throat as vivid images of being face-fucked by [NameDesc of M] fill your mind. [big he of M] blows you a kiss, eyes glowing brightly as [he of M] straightens up and begins to walk away.";
		OralSexAddictUp 1;
	if refractoryperiod > 0, DifficultyUp M by 1.

To say CondomPieFlav of (M - vampiress) in (F - a fuckhole):
	say "[BigNameDesc of M] roars with pleasure, tightening [his of M] grip as the condom floods with warm [semen], only barely prevented from flowing freely into your used hole[if the player is able to get horny]. You feel a strong pressure in the back of your mind, and in your [genitals] as [he of M] places a hand on your temples, and you immediately feel yourself go over the edge.";
	if the player is able to get horny, trigger shameful orgasm of F;
	say "[big he of M] wipes up some of your sexual fluids, sighing in satisfaction as [he of M] licks it off [his of M] fingers.[line break][speech style of M]'You should have some too, darling.'[roman type][line break][big he of M] pulls out and circles around you, carefully peeling off the condom and upending it over your face. [if there is a worn tethering lipstick collar][line break][speech style of M]'Drink it, little thief. Drink it all...[roman type][line break][otherwise][line break][speech style of M]'Drink it all. Feed on me...'[roman type][line break][end if][line break]".

To say CreampieFlav of (M - vampiress) in (F - asshole):
	say "[BigNameDesc of M] roars with pleasure, tightening [his of M] grip as warm [semen] begins spurting out into your used hole[if the anal sex addiction of the player > 5], causing you to cry out with ecstasy.[otherwise].[end if] Still, [his of M] rapid penetration doesn't cease until [his of M] love has thoroughly coated the inside of your anus. You feel a strong pressure in the back of your mind, and in your [genitals] as [he of M] places a hand on your temples, and you immediately feel yourself go over the edge.";
	if the player is able to get horny, anally orgasm shamefully;
	say "[big he of M] releases [his of M] magical grip on your [genitals] as [he of M] [if the player is male]scoops up some of your [semen][otherwise][big he of M] wipes up some of your fluids[end if], sighing in satisfaction as [he of M] licks it off [his of M] fingers.[line break][speech style of M]'Was it good for you, honey? What am I saying? Of course it was. It was good for me too, you know.";
	if the number of worn headgear is 0 and newbie tips is 1:
		if futanari fetish is 0, say "By the way, I should tell you that although that seed was fake, it contained enough of my essence that I was able to turn you. You'll probably start to notice some changes in yourself. First, the rumour about vampires needing blood isn't entirely accurate. What we really need is human fluid, of any variety. Most vampires see themselves above the degradation of collecting and feasting on cum, but all of us have the same cravings. I'd sate those if I were you, as ignoring them will make you weaker. Other than that, once your claws grow in, you'll also be able to drain energy from your enemies, healing yourself and fighting your fatigue. However, you won't be able to turn anyone else. That is a power you do not gain until you are many, many years old. Have fun, my newest fledgling.'[roman type][line break]You check your mouth and, sure enough, fangs have grown where your canine teeth once were.";
		otherwise say "By the way, I should tell you that the sperm of a vampire contains our virus and when delivered anally, the virus is transmitted. You'll probably start to notice some changes in yourself. First, the rumour about vampires needing blood isn't entirely accurate. What we really need is human fluid, of any variety. Most vampires see themselves above the degradation of collecting and feasting on cum. But, most vampires are vicious murderers. My point is, you're going to start noticing these cravings. I'd sate those if I were you, as ignoring them will make you weaker. Other than that, once your claws grow in, you'll also be able to drain energy from your enemies, healing yourself and fighting your fatigue. However, you won't be able to turn anyone else. That is a power you do not gain until you are many, many years old. Have fun, my newest fledgling.'[roman type][line break]You check your mouth and, sure enough, fangs have grown where your canine teeth once were.";
	otherwise if the number of worn headgear is 0:
		if futanari fetish is 0, say "By the way, that seed may have been fake, but it still contained my essence. [one of]So, if you happen to feel an insatiable craving for human fluids, don't be alarmed. I have made you into my newest fledgling. Go forth, and feast on the essence of the living![or]You will be like me soon, darling. Don[']t be a fool and deny your cravings~!'[or]If you were wondering how I make new thralls, maybe you should ruminate on that for a while...'[at random][roman type][line break]You notice a pair of fangs have grown where your canine teeth once were!";
		otherwise say "By the way, [one of]if you happen to feel an insatiable craving for human fluids, don't be alarmed. I have made you into my newest fledgling. Go forth, and feast on the essence of the living![or]surely you know how dangerous it is to have unprotected sex with a vampire? Don[']t be a fool and deny your cravings, darling~!'[or]I usually make new thralls by filling their asses with my seed. Did you know that, darling? You certainly do now...'[at random][roman type][line break]You notice a pair of fangs have grown where your canine teeth once were!";
	otherwise:
		say "In fact, I might even make you a thrall one day...'[roman type][line break]";

To say CreampieFlav of (M - vampiress) in (F - vagina):
	say "[BigNameDesc of M] roars with pleasure, tightening [his of M] grip as warm [semen] begins spurting out into your used hole[if the vaginal sex addiction of the player > 5], causing you to cry out with ecstasy.[otherwise].[end if] Still, [his of M] rapid penetration doesn't cease until [his of M] love has thoroughly coated the inside of your [vagina]. You feel a strong pressure in the back of your mind, and in your [genitals] as [he of M] places a hand on your temples, and you immediately feel yourself go over the edge.";
	if the player is able to get horny, vaginally orgasm shamefully;
	say "[big he of M] wipes up some of your fluids, letting out a sigh of satisfaction as [he of M] licks it off [his of M] fingers.[line break][speech style of M]'Ahhh, I feel much better. I think I'll feed on you again, sometime.'[roman type][line break]".

To say PullOutFlav of (M - vampiress) in (F - a fuckhole):
	if the reaction of the player is 2, say "[BigNameDesc of M] pats you gently as [he of M] pulls out. [line break][speech style of M]'[one of]Next time then, darling.'[or]I hope you'll be ready to go all the way next time, darling.'[or]Let's go all the way next time, dear.'[at random][roman type][line break][BigNameDesc of M] makes a small incantation under [his of M] breath, and you feel a sensation like a finger nail running up the nape of your neck. [big his of M] eyes glow as vivid images of [NameDesc of M] fucking you in various positions appear in your mind.";
	otherwise say "[BigNameDesc of M] thrusts faster and faster, flattening [himself of M] on top of you as [his of M] [LongDickDesc of M] slams in and out of your [variable F]. [big his of M] grip tightens, and waves of pleasure begin to roll through your body and... instantly go away. [big he of M] pulls out. [line break][speech style of M]'Sorry dear. I know you wanted to cum, but your mind is not in the right place. Don[']t worry. We'll both have another chance later.'[roman type][line break][BigNameDesc of M] makes a small incantation under [his of M] breath, and you feel a sensation like a finger nail running up the nape of your neck. [big his of M] eyes glow as vivid images of [NameDesc of M] fucking you in various positions appear in your mind.".

The vampire rules is a rulebook.
This is the vampiric cumslut rule:
	if vampiric fangs is worn:
		if the raw semen taste addiction of the player < 15:
			now the raw semen taste addiction of the player is 15;
			rule succeeds.
The vampiric cumslut rule is listed first in the vampire rules.

To say NormalMouthPenetrationFlav of (M - vampiress):
	if the oral sex addiction of the player < 3:
		say "[one of][BigNameDesc of M] traces [his of M] finger along the side of your chin, lifting [his of M] skirt as a strange tingling sensation moves up your neck. Your eyes latch onto the delicious yellow [italic type]popsicle[roman type] [he of M] was hiding underneath [his of M] dress, and as [he of M] forces it between your lips, you can't help but wonder what the big deal is about sucking it. It's not like you hate popsicles, so why not just... suck... Suuuuck. Suck. Suck. Suck-! You suddenly jerk out of a trance, realising that 'yummy' thing sliding in and out of your mouth is actually [NameDesc of M][']s [DickDesc of M]![or][BigNameDesc of M] puts one hand on the back of your head, grinning. You open your mouth to insult [him of M], but you suddenly have a much better idea. [big he of M]'d probably hate it if you sucked [his of M] dick. Yeah. Sucked it until [he of M] came. Yeah, suck... You catch yourself too late, struggling furiously as [M]'s [DickDesc of M] is already sliding in and out of your mouth.[or][BigNameDesc of M] points to your mouth, slowly stroking [his of M] [DickDesc of M]. You snarl. [line break][first custom style]'Not on your life, bitch. You really think I'd suck your huge, yummy [DickDesc of M]? OK, maybe I fucking will.'[roman type][line break]You grab [his of M] shaft and angrily slide it into your mouth, your eyes widening with the realisation of what you've just done as [he of M] begins to thrust.[at random]";
	otherwise if the oral sex addiction of the player < 7:
		say "[one of][BigNameDesc of M] taps you on the chin as [he of M] lifts [his of M] skirt, revealing the big, dick-shaped [italic type]popsicle[roman type] [he of M] was hiding underneath. A strange tingling sensation moves up your neck as [he of M] gently pushes it into your mouth, and you hesitantly begin to slurp. It's really delicious, though it doesn't taste much like a popsicle. But, delicious things should be sucked, so really that shouldn't matter. [line break][speech style of M]Faster, darling.[roman type][line break]Sucking feels so right. So good. So... so... wait. You might be wrong but it seems like you're actually sucking [NameDesc of M][']s real [DickDesc of M]![or][BigNameDesc of M] puts one hand on the back of your head. Naturally, you open your mouth and accept [his of M] invading [DickDesc of M]. It's what anyone would do in this position. Suck. Suck until [he of M] comes. Anyone would do that.[or][BigNameDesc of M] points to your mouth, grinning. You open and loll out your tongue, somehow failing to break eye contact with [him of M], not even once, as [his of M] [DickDesc of M] slides through your lips.[at random]";
	otherwise:
		say "[one of][BigNameDesc of M] smiles down at you as [he of M] lifts [his of M] skirt, patting your head as you eagerly accept [his of M] [LongDickDesc of M] into your mouth. You share sighs of contentment as you begin to suck.[or][BigNameDesc of M] points to your mouth, grinning. You obediently loll out your tongue, gazing at [him of M] reverently as [his of M] [LongDickDesc of M] slides through your lips.[or][BigNameDesc of M] places one hand on your shoulder. You greedily lean forward and take [his of M] [LongDickDesc of M] into your mouth.[at random]".

[The benefit of her happy reward is that you don't have to have a shameful orgasm]
To compute happy reward of (M - vampiress):
	if the player is able to get horny and the player is not barbie:
		let C be a random chastity cage;
		say "[BigNameDesc of M][if there is a worn chastity cage] reaches between your legs, prying off your [printed name of C] with a heavy crunch. [big he of M][end if] smiles at you as [he of M] [if the size of penis > 4]wraps [his of M] hand around your [ShortDesc of penis] and begins to pump[otherwise if the player is male]gently begins to tease your [ShortDesc of penis][otherwise if vagina is actually occupied]begins to tease your clit[otherwise]slips [his of M] fingers into your [vagina][end if]. You feel a sharp pressure in the back of your mind, and [if the player is female]your lips twist themselves into a big, submissive 'O' as orgasm crashes through your body. [BigNameDesc of M] catches your fluids in [his of M] hand, chuckling softly as licks your juices from [his of M] fingers[otherwise if the bimbo of the player < 6]you grit your teeth as your [player-penis] immediately explodes, coating [his of M] hand in fresh, creamy [semen]. [BigNameDesc of M] chuckles softly as [he of M] licks your load off [his of M] fingers[otherwise]your lips twist themselves into a big, submissive 'O' as your [player-penis] shoots several ropes of fresh, creamy [semen] directly into [his of M] hand. [BigNameDesc of M] chuckles softly as [he of M] licks your load off [his of M] fingers[end if].[line break][speech style of M]'I look forward to feeding from you again.'[roman type][line break]";
		reset vampire hunger;
		if C is clothing, destroy C;
		orgasm quietly;
	otherwise:
		say "[speech style of M]'Good girl.'[roman type][line break]";
	FavourUp M by 3;

To check forgiveness of (M - vampiress):
	if ((a random number between the favour of M and the charisma of the player) > 6 or M is willing to do vaginal) and the player is able to get horny and the player is not barbie:[she is only interested in forgiving you if you can cum for her]
		compute angry forgiveness of M;
	otherwise:
		compute vampiric punishment of M.

To compute angry punishment of (M - vampiress):
	if M is willing to do vaginal, check forgiveness of M;[she's always willing to forgive you if she's hungry]
	otherwise compute vampiric punishment of M.

[This function essentially replaces the "angry punishment" function for the vampiress, which would otherwise loop infinitely]
To compute vampiric punishment of (M - vampiress):
	say "[BigNameDesc of M] places one hand on your temple, eyes glowing as vivid images of [if bukkake fetish is 1]your face getting blasted with [semen][otherwise][manly-penis]s[end if] assault your mind.";
	SemenAddictUp 1.

To compute angry forgiveness of (M - vampiress):
	say "[BigNameDesc of M] chuckles softy, clenching one hand into a fist and holding your head with the other. [if asshole is actually occupied]Even though [he of M] isn't touching it directly, you can feel [his of M] fingers around your anal ring, gently teasing you as a strong pressure builds in your mind[otherwise]Even though [he of M] isn't touching it directly, you still feel [his of M] fingers slip through your anal ring, gently stroking you from the inside as strong pressure builds up in your mind[end if]. [if the bimbo of the player < 6]Your lips twist into a submissive 'O'[otherwise]You grit your teeth[end if] as a wave of pleasure passes through your body, immediately bringing you to the edge.";
	anally orgasm shamefully;
	reset vampire hunger;
	say "[BigNameDesc of M] scoops up some of your fluids and eagerly licks them off [his of M] fingers. [line break][speech style of M]'Alright, that will be all. I'll feed again later.[roman type][line break]";
	FavourUp M by 2.

To say (M - vampiress) sex reaction:
	if the reaction of the player is 2:
		say "[speech style of M][one of]'As long as you're obedient, I'll do what I can to make sure that you enjoy yourself.'[or]'Don't even bother trying to fight... You won't get anywhere.'[in random order]";
	otherwise:
		say "[variable custom style]";
		if the player is gagged:
			say "[one of][if the relevant sex addiction of M < 8]It's even worse because I can't say no! ... But now that I think about it, why would I want to do that? Wait, what?![otherwise if the relevant sex addiction of M < 12]I can't say no, but [line break][second custom style]why would I want to anyway?[roman type][line break][otherwise]It's so hot when I can't say no![end if][or][if the relevant sex addiction of M < 8]It's even more humiliating because I can't say no... But I guess it doesn't matter.[otherwise if the relevant sex addiction of M < 12][big he of M][']d listen to me if I was able to speak. Right? Because then, I could [line break][second custom style]beg [him of M] to keep going...[roman type][line break][otherwise]I love it when I can't say no![end if][or][if the relevant sex addiction of M < 8]I can't even call for... Wait, what was I thinking?[otherwise if the relevant sex addiction of M < 12]'MMMPH! MMhhmmMMPH!'[otherwise]It's even better because I can't say no![end if][at random]";
		otherwise if the player is male:
			if the relevant sex addiction of M < 8:
				say "[one of]This feels so weird... But at least I'm trying new things, right? [if M is friendly-fucking]You get what you ask for, I guess.[otherwise]Damn that feels good! Wait... Why would I think that?[end if][or]My [player-penis] feels weird.[in random order]";
			otherwise if the relevant sex addiction of M < 12:
				say "[one of]I want [him of M] to make me [his of M] bitch![or]I'm so hard...[or]Oh! That felt really good![in random order]";
			otherwise:
				say "[one of][big he of M]'s hitting my g-spot! Teehee![or]'Make me jizz all over the floor!'[or]'Harder! I want to hands-free cum!'[in random order]";
		otherwise if the relevant sex addiction of M < 8:
			say "[one of]'Mmm...'[or][first custom style]'Make me your fucktoy!... Wait, what?!'[or]I didn't want this a moment ago... What changed?[or][big he of M]'s using me like some sort of cheap floozy!... But I guess that's what I deserve.[or]This feels so wrong! ... And yet, somehow, it feels so right![or]'[if M is friendly-fucking]Use me![otherwise]I'm yours![end if] Make me yours!'[or]Please never let this end...[in random order]";
		otherwise if the relevant sex addiction of M < 12:
			say "[one of]It feels so good...[or]I know I shouldn't be enjoying this... On second thought, this is perfectly natural, right? Sex is supposed to feel good...[or]Why does it have to feel so good?![or]If I have to have sex, it might as well be with someone who does it right... Like my new mistress.[or]I wonder if [he of M]'ll cum a lot... I hope so.[or]It feels amazing![or]I never realised sex could feel this amazing![or]I'm actually not sure if I want this to end... As a matter of fact, I'm pretty sure that I don't![in random order]";
		otherwise:
			say "[one of]Uh-oh, looks like I'm trapped! Teehee![or]I can't get away! Uh ooooh![or]'Oooh!'[or]'Aaah!'[or]'Aah! Aah! Aah!'[or]'I'm having so much fun!'[or]'Oooh Shiiiit!'[or]'Yeah! Fuck me!'[or]'Don't stop! It feels so good!'[or]'Wear me out!'[or]'Fuckme! Fuckme! Fuckme!'[or]I want this to last FOREVER![or]Use me!'[or]'Use me like the dirty slut I am!'[or]'Faster, faster!'[or]'This feels SO right.'[then purely at random]";
	say "[roman type][line break]".

To say sexSubmitPushFlav of (M - vampiress) in (O - an orifice):
	say "[if the relevant sex addiction of M < 6][BigNameDesc of M] fucks your [variable O] with fast, hard thrusts. You close your eyes and tilt your head to the ground, focusing as hard as possible on how [line break][second custom style]Good[roman type][line break]Terrible [line break][second custom style]Good[roman type][line break]Awful[line break][second custom style] GOOD[roman type][line break]it feels.[otherwise if the relevant sex addiction of M < 10][BigNameDesc of M] slams in and out of your [variable O], grunting heavily. Your cheeks burn with shame as you belt out your moans of pleasure.[otherwise][BigNameDesc of M] slams in and out of your [variable O], grunting heavily. You can practically feel [his of M] excitement as you croon with pleasure.[end if]".

To say sexSubmitBiteFlav of (M - vampiress) in (O - an orifice):
	say "[BigNameDesc of M] pushes you into the floor, tickling your ears with [his of M] teeth and [if the player is female]teasing your clit[otherwise if the player is possessing a penis]playing with your tip[otherwise]teasing your navel with [his of M] fingertips[end if] as [he of M] slams [his of M] [DickDesc of M] in and out of your [variable O].".

To say sexSubmitSqueezeFlav of (M - vampiress) in (O - an orifice):
	let C be a random worn skirted clothing;
	if C is nothing, let C be a random worn crotch covering clothing;
	say "[BigNameDesc of M] [if C is clothing]pushes [his of M] hand underneath your [printed name of C][otherwise]squeezes your [AssDesc][end if] as [he of M] plows your [variable O], effortlessly finding your body's every sensitivity.".

To say sexSubmitReflectFlav of (M - vampiress) in (O - an orifice):
	say "[if the relevant sex addiction of M < 6][BigNameDesc of M] plows [his of M] [DickDesc of M] in and out of your [variable O]. It's extra humiliating because you can actually feel yourself enjoying it![otherwise if the relevant sex addiction of M < 10][BigNameDesc of M] slams [his of M] [DickDesc of M] in and out of your [variable O], panting heavily. You tell yourself you're only enjoying it because [he of M]'s in your head, but [italic type]both of us know that's not true.[roman type][otherwise][BigNameDesc of M] fucks your [variable O] with fast, hard thrusts. You close your eyes, losing yourself in the pleasure.[end if]".

To say sexSubmitEmbarrassFlav of (M - vampiress) in (O - an orifice):
	say "[if the relevant sex addiction of M < 7]A persistent image of an [variable O] hangs in your mind, being fiercely pounded in time with [NameDesc of M][']s strokes. You don't want to admit it. You [italic type]want[roman type] to deny it... but both of you know who that hole belongs to.[otherwise if the humiliation of the player < 15000]A persistent image of your own [variable O] hangs in your mind, forcing you to watch as [NameDesc of M] gives it the hard fucking [italic type]it's always deserved.[roman type][otherwise if the relevant sex addiction of M < 10]A persistent image of your own [variable O] hangs in your mind, forcing you to watch as [NameDesc of M] gives it the hard fucking it deserves. The [italic type]best[roman type] is that you never imagined it would look so good.[otherwise]A persistent image of your own [variable O] hangs in your mind, allowing you to watch as [NameDesc of M] gives your [variable O] the hard fucking it deserves.[end if]";

To say sexSubmitSplitFlav of (M - vampiress) in (O - an orifice):
	if there is a worn chastity cage:
		say "You can feel [NameDesc of M][']s hands on your [genitals] as [he of M] [one of]pounds[or]plows[or]ruts[at random] your [asshole], separated by a layer of metal, but nonetheless *there* all the same. ";
	otherwise if the player is male:
		say "[if the size of penis < 4 and tg fetish >= 1][BigNameDesc of M] ruts you like a [italic type]QUEEN[roman type]. You can practically feel your [player-penis] slipping away.[otherwise if the size of penis < 4 and the size of penis > 0 and the bimbo of the player < 14][BigNameDesc of M] pounds your [asshole] hard and fast. You can't help feeling a little embarrassed by how [italic type]cute[roman type]your [ShortDesc of penis] compares to [his of M].[otherwise if the size of penis < 4 and the size of penis > 0][BigNameDesc of M] pounds your [asshole] hard and fast. You feel proud of how [italic type]cute[roman type] your [ShortDesc of penis] is compared to [his of M].[otherwise if the bimbo of the player < 3][BigNameDesc of M][']s balls repeatedly slap your taint as [his of M] dick pistons in and out of your [asshole], as if to remind you how [italic type]pointless[roman type] it would be to resist [him of M].[otherwise if the bimbo of the player < 5]Shocks of pleasure ripple through your [manly-penis] as [he of M] pounds your [asshole]. And you thought it was humiliating [italic type]before[roman type]...[otherwise if the bimbo of the player < 7][BigNameDesc of M][']s [DickDesc of M] relentlessly pounds your sensitive prostate, reminding you how humiliating it is to get fucked like a common sex toy.[otherwise if the bimbo of the player < 9]Shocks of pleasure ripple through your [ShortDesc of penis] as [he of M] pounds your [asshole]. It's difficult to resist when it feels this good.[otherwise if the bimbo of the player < 10 and transGender is 0][BigNameDesc of M][']s [DickDesc of M] relentlessly pounds your sensitive prostate, reminding you that you're a [italic type]yummy[roman type] faggot for enjoying this.[otherwise if the bimbo of the player < 12]As [NameDesc of M] pistons in and out of your [asshole], [his of M] balls repeatedly slap your taint, as if to remind you how much you [italic type]obviously[roman type] love getting railed.[otherwise if the bimbo of the player < 14]As [NameDesc of M] pistons in and out of your [asshole], [his of M] balls repeatedly slap your taint, as if to remind you how much you LOVE getting fucked.[otherwise]Shocks of pleasure ripple through your [ShortDesc of penis] as [he of M] pounds your [asshole]. Phew, [he of M] sure knows how to show a girl a good time![end if]";
	otherwise:
		say "[if the player is horny and vagina is actually occupied][BigNameDesc of M] fucks your [variable O] hard and fast, knowing without a shred of doubt how desperately wet you are.[otherwise if the player is horny][BigNameDesc of M] fucks your [variable O] hard and fast. [big he of M] pumps [his of M] fingers in and out of your [vagina], ensuring there's no hiding how wet you really are.[otherwise if vagina is actually occupied][BigNameDesc of M] teases your clit as [he of M] pounds your [variable O].[otherwise][BigNameDesc of M] gently pumps [his of M] fingers in and out of your [vagina], skilfully stimulating your most intimate reaches as [he of M] fiercely plows your [variable O].[end if]".

To say (M - vampiress) mercy sex (N - a number):
	let O be a random orifice penetrated by M;
	if N is 1:
		say "[BigNameDesc of M] fucks you as if in slow motion, pounding your [variable O] with slow, powerful strokes.";
	if N is 2:
		say "Everything around you and [NameDesc of M] seems to slow down a bit, dampening yet intensifying [his of M] thrusts.";
	if N is 3:
		say "[BigNameDesc of M] plows your [variable O] in slow motion, somehow lowering the intensity without losing any speed or force.";
	if N is 4:
		say "[BigNameDesc of M] fucks your [variable O] slowly and methodically, breathing evenly as if trying to maintain focus.".

To compute striking attack of (M - vampiress):
	if the stake of M is clothing:
		say "[BigNameDesc of M] rakes [his of M] clawed fingers across your skin, causing you to feel fatigued.";
	otherwise:
		say "[BigNameDesc of M] disappears from your vision and appears behind you a moment later, seductively running [his of M] clawed fingers across your skin, causing you to feel fatigued and aroused.[line break][speech style of M]'[one of]Why don't you just give up, darling? You know that you want to...'[or]Why should we fight when we could have so much fun together?'[or]Such meaningless violence... Wouldn't you rather just enjoy yourself?'[or]We both know that you want me... Why should you deny yourself that which you want when it's right in front of you?'[or]You do think I'm sexy, don't you?'[or]What do you really have to lose by giving into your desires?'[in random order][roman type][line break]";
		passively stimulate vagina from M;
		increase health of M by 2;
	FatigueUp a random number between the difficulty of M and the difficulty of M * 3.

[The vampiress has to be "invited in"]
To say SelectionFrustrated of (M - vampiress):
	let R be a random number between 1 and 3;
	if R is 3 and M is not willing to do vaginal, now R is 1;
	let P be a random worn insertable thing penetrating asshole;
	if R is 2, now P is a random worn clothing penetrating face;
	if R is 3, now P is a random worn insertable thing penetrating vagina;
	if P is a thing:
		say "[BigNameDesc of M] frowns. [speech style of M]'[if M is willing to do vaginal]EVERYTHING is blocked!? Of all the[otherwise]Everything good is blocked! How the hell am I supposed to[end if]- Ahem. I mean... Darling, would you mind if I removed your [ShortDesc of P]?'[roman type][line break] Give [him of M] permission?";
		if the player is bimbo consenting:
			compute M removing P;
		otherwise:
			say "[BigNameDesc of M] makes a frustrated noise and gives up.";
			FavourDown M by 2;
			bore M;
	otherwise:
		say "[BigNameDesc of M] makes a frustrated noise and gives up.";
		bore M.

To compute SelectionWaiting of (M - a vampiress): [She keeps waiting forever]
	do nothing.

Section 2 - DQ

Definition: vampiress is willing to donate diapers: decide yes.

Definition: vampiress is willing to double diapers: decide yes.

Definition: vampiress is willing to punish untidiness: decide yes.

Definition: vampiress is willing to change diapers: decide yes.

Definition: vampiress (called M) is eager to change diapers:
	if M is changing the player, decide yes;
	if there is worn messed knickers and diaper messing is 3 and diaperSceneHandled is 0, decide yes;
	if the health of M < the maxhealth of M, decide no; [She won't change you if you have fought back]
	if M is aware that the player needs a change, decide yes;
	decide no.

Definition: vampiress (called M) is diaper change complete cummies rewarding:
	if the health of M >= the maxhealth of M, decide yes;
	decide no.

Definition: vampiress is diaper disciplining: decide yes.

To decide which number is the instant mess influence of (M - vampiress):
	decide on 3.

Definition: vampiress is willing to masturbate: decide yes.

Definition: vampiress is willing to confiscate: decide yes.

vampiress-maiden is a diaper punishment. The priority of vampiress-maiden is 5.
Definition: vampiress-maiden is appropriate:
	if current-monster is not vampiress, decide no;
	if there is soiled-diaper retained by current-monster, decide no; [She should punish that instead.]
	if there is worn messed knickers and tough-shit is 0, decide no;
	if the player is incontinent, decide no;
	if there is a regional iron-maiden and (the player is bursting or (the player is feeling full and the player is desperate to pee)), decide yes;
	decide no.

To compute punishment of (P - vampiress-maiden):
	let M be current-monster;
	say "[speech style of M]'[if there is worn messed knickers]You think it's acceptable to be walking around smelling like this? Let me help you get acquainted with just how badly you smell[otherwise]I can sense you need to toilet, little one. So, I have a fun game for you to play... alone[end if].'[roman type][line break]";
	let Y be a random iron-maiden;
	let L be the location of Y;
	unless M is in L, drag to L by M;
	now Y is revealed;
	say "A large metal upright humanoid box rests against one wall. [BigNameDesc of M] drags you up to it, opens the door, and pushes you inside. With a wink and a kiss, [he of M] shuts and locks the door in front of you. You can hear [his of M] footsteps walking away.";
	now Y is not untriggered;
	now Y is expired;
	now iron-maiden-turns is 0;
	say DQIronMaidenFlav;
	now the source-room of Iron Maiden is the location of the player;[In case the player faints]
	now the player is in Iron Maiden;
	refresh the map-window;
	satisfy M.

To say WaddleDiaperCheckFlav of (M - vampiress):
	say "[BigNameDesc of M] stares at your giant waddle diaper.[line break][speech style of M]'[one of]Now THAT is new to me. Fascinating...'[or]I see that you're still in that rather fascinating undergarment. My my my...'[stopping][roman type][line break]".

To say DiaperCheckFlav of (M - vampiress):
	let D be a random worn knickers;
	say "You blink once, and in the time that your eyes are closed [NameDesc of M] has silently crossed the entire length of room, as if [he of M] somehow teleported, and [his of M] eyes are locked with yours. You freeze and scream in shock, and [he of M] takes this opportunity to press [his of M] hands into the front and back of your [MediumDesc of D], and check whether you're dry.".

To say DiaperCheckReactionFlav of (M - vampiress):
	say "[if the diaper addiction of the player < 11]For some reason, even though you want to recoil away from [him of M], your blood pumps in your ears and you find yourself lacking any will to resist at all.[otherwise]The sound of your own heartbeat fills your ears, and almost instinctively you push your hips forward so that [NameDesc of M] can get a good feel.[end if]".

To say DiaperCheckResultsMessedFlav of (M - vampiress):
	say "[speech style of M]'Hmm, why am I not surprised to find that you've gone and pooped yourself. Well, it's good to know that my instincts are still as accurate as ever. This is why we have to keep little stinkers like you in diapers at all times, sweetie.'[roman type][line break]".

To say DiaperCheckResultsWetFlav of (M - vampiress):
	say "[speech style of M]'[one of]Ooh yes, I'm pretty sure I know what I'm feeling down here. The insurmountable evidence that you're yet another silly baby who can't hold in [his of the player] tinkles. Well, I'm glad you came to me first.'[or]Again?! Gosh, you're the most pathetic baby I've ever met.'[stopping][roman type][line break]".

To say DiaperCheckResultsDrynessProvedFlav of (M - vampiress):
	say "[speech style of M]'You baffle me, [NameBimbo]. I will freely admit, I did not expect you to manage to stay dry all this time. I will concede for now that you have more self-control than I gave you credit for, and I officially allow you to return to adult underwear. Now go.'[roman type][line break]".

To say DiaperCheckResultsDryWellDoneFlav of (M - vampiress):
	say "[speech style of M]'Oh I'm surprised, you're actually dry. Still, if you're wearing that, I'm sure there's a reason, hmm? Perhaps you're not going to be dry for much longer...'[roman type][line break][BigNameDesc of M] appears to lick [his of M] lips at the thought.".

To say DiaperChangeRefuseAnger of (M - vampiress):
	say "As [he of M] sees you make a move to resist, [NameDesc of M] yawns.[line break][speech style of M]'Fine, we'll do it the hard way. I'll make this quick.[roman type][line break]".

To say DiaperChangeStart of (M - vampiress):
	say "With a flick of [his of M] wrist, [NameDesc of M] causes you to begin to float in the air! With another small gesture, you're on your back, legs spread wide in front of [him of M], completely unable to move.[line break][speech style of M]'[if there is a worn diaper]Your little mortal bodies are so weak, unable to survive even a few hours like this without getting a rash. Oh well...'[otherwise][one of]I'm going to keep you in diapers for a long, long time, worm.'[or]As you know by now, I like to keep my slaves in diapers. It will help you remember who's in charge and who's just a weak little baby.'[stopping][end if][roman type][line break]".

Definition: vampiress is diaper leaving: decide no.

To say DiaperChangeRemovalFlav of (M - vampiress):
	say "[BigNameDesc of M] uses [his of M] telekinesis to send the [ShortDesc of current-diaper] sailing away into the distance[if current-diaper is messed knickers]. After indulging [himself of M] with a couple of gleeful deep breaths, [NameDesc of M] snaps [his of M] fingers and your entire body becomes as clean and soft as... a baby's bottom[end if].".

To say DiaperChangeFlav of (M - vampiress):
	say "Without even moving a muscle, you watch as [if old-diaper is new-diaper]an identical (but clean) [ShortDesc of new-diaper][otherwise]a [ShortDesc of new-diaper][end if] appears out of thin air and sails onto your bum and then fixes itself in place.".

To say DoubleDiaperFlav of (M - vampiress):
	say DoubleDiaperAnnounceFlav of M;
	say "[BigNameDesc of M] spreads [his of M] arms as [he of M] summons a giant [ShortDesc of new-diaper] from thin air and sends it to strap itself on TOP of your [ShortDesc of old-diaper]!".

To say DoubleDiaperAnnounceFlav of (M - vampiress):
	say "All of a sudden an evil sneer appears on [NameDesc of M][']s face.[line break][speech style of M]'I lied. I'm enjoying your scent so long, I think we should see how long we can make it last...'[roman type][line break]".

To say DoubleDiaperAfterFlav of (M - vampiress):
	say "[speech style of M]'Come back to me after you've started leaking into that one, and if I were you I wouldn't leave it too long!'[roman type][line break]".

To compute diaper change complete cummies reward of (M - vampiress):
	say "[speech style of M]'[one of]And now, for a little incentive to keep you coming back for more...'[or]I imagine this bit is the reason you keep coming back, hmm?'[stopping][roman type][line break][BigNameDesc of M] grips your [genitals] through your soft padding and begins to stimulate you with strong strokes. Your eyes are soon rolling into the back of your head as you [if the sex addiction of the player > 12]sigh in glee and[otherwise]can't help but[end if] explode an orgasm into your new nappy.";
	vaginally orgasm shamefully;
	say "[BigNameDesc of M] says nothing, but licks [his of M] lips with pride.".

To say DiaperChangeComment of (M - vampiress):
	say "[speech style of M]'[if M is diaper disciplining and the diaper-duration of M <= 0]You're my slave now. For my first instruction, I command you to stay in diapers until you can prove to me that you can hold it in and stay dry. And I wholeheartedly expect that to be... NEVER[otherwise]I enjoyed that[end if].'[roman type][line break]".

To say DiaperDonateComment of (M - vampiress):
	say DiaperChangeComment of M.

To say DQChangeResistReactionFlav of (M - vampiress):
	say "[BigNameDesc of M] [one of]grins[or]looks bemused[at random].[line break][speech style of M]'[one of]Oh do go on, it gets my blood going seeing my prey squirm in vain!'[or]Do I need to bite you to keep you still? Please tell me I need to bite you to keep you still!'[or]You know, this is good. I know to keep you in a bouncer for later... when I get hungry!'[then at random][roman type][line break]".

To say MasturbationDeclarationFlav of (M - vampiress):
	say "[speech style of M]'[one of]You should know... I can sense when people are turned on.'[or]It's funny, you often seem to wander into my domain when you're desperately horny...'[stopping][roman type][line break]".

To say MasturbationStartFlav of (M - vampiress):
	say "[BigNameDesc of M] clenches one fist, and even though [he of M]'s not physically touching you, you can feel [his of M] magical grip on your [genitals].".

To say MasturbationFlav of (M - vampiress):
	say "[BigNameDesc of M] [one of]keeps [his of M] eyes locked on yours as [he of M] telekinetically plays with your [genitals][or]stands over you, deftly stroking your [genitals] with [his of M] otherworldly powers[or]grips [his of M] fist even tighter, [if the player is female]which forces two magical fingers inside of you[otherwise]bringing the stimulation to almost unbearable levels[end if][or]brings [his of M] hand to [his of M] mouth and licks [his of M] palm, causing you to feel a magical tongue caressing your [genitals][or]changes from quick pulses to long powerful strokes, forcing an unbidden moan from your lips[in random order].".

To say DQMasturbationResistReactionFlav of (M - vampiress):
	say "[BigNameDesc of M] smiles gently.[line break][speech style of M]'[one of]Mmmm the more you resist, mi amore, the more I persist!'[or]Oh how your diaper sings to me, Mi amore, how you complement it with your moans, you make the perfect duet!'[or]You know we vampires drink many different fluids. Many... different... fluids.'[or]You flinch at my touch turtle dove? Just close your eyes... it'll be over before the echoes of your moans fade from these halls!'[then at random][roman type][line break]".

To say ConfiscationDeclarationFlav of (M - vampiress) on (C - a clothing):
	say "[speech style of M]'[if C is plentiful accessory]Oh, I see that you've brought your new Mistress some jewellery. How very thoughtful of you.'[otherwise if C is equippable]You won't be needing anything to fight back with any more.'[otherwise]This is not part of my slaves['] dress code. It will have to go. NOW.'[end if][roman type][line break]".

To say ConfiscationAfterFlav of (M - vampiress) on (C - a clothing):
	say "[speech style of M]'What you SHOULD be saying is [']Yes Mistress, Thank You Mistress.['] And nothing else.'[roman type][line break]".

To say TriggeredTrapReactFlav of (M - vampiress):
	say "[BigNameDesc of M] [one of]puts a hand to [his of M] mouth[or]titters gently[purely at random].[line break][speech style of M]'[one of]Perhaps I should have warned you about that[or]Sorry, I thought you would have noticed that yourself[at random]...'[roman type][line break]";
	moderateHumiliate;
	FavourDown M with consequences.

To say BouncerBounceTrapReactFlav of (M - vampiress):
	say "[BigNameDesc of M] [one of]claps [his of M] hands as [he of M] watches you bounce[or]squeals with glee[at random].[line break][speech style of M]'[one of]You look so adorable, just like the perfect baby[boy of the player][or]You look like you're having so much fun, darling [boy of the player][at random]!'[roman type][line break]";
	moderateHumiliate;
	FavourDown M with consequences.

To say BecomesAggressive of (M - vampiress):
	say "[big he of M] takes an offensive stance![line break][speech style of M]'[one of]I think you and I need to have some one-on-one time now, don't you?'[or]I'm sorry, but there's no way I can let you go without having some fun first, now that I've seen you like this...'[in random order][roman type][line break]".

Section 3 - Damage

To compute damage reaction of (M - vampiress):
	if M is uninterested:
		say "[big he of M] grins malevolently! Uh-oh...";
		now the sex-length of M is a random number between 2 and 3;
	otherwise:
		if M is friendly:
			say "[BigNameDesc of M] looks surprised, but quickly smirks before leering seductively in your direction!";
			now the sex-length of M is a random number between 2 and 3;
		otherwise:
			say DamageReaction (the health of M) of M;
			if a random number between 1 and 3 is 1, increase the sex-length of M by 1.

To say DamageReactHealthy of (M - vampiress):
	say "[one of][BigNameDesc of M] laughs playfully, ignoring the hit.[or][BigNameDesc of M] continues to shrug off your hits with mirth.[at random]".

To say DamageReactDamaged of (M - vampiress):
	say "[one of][BigNameDesc of M] moans lecherously. It looks like the pain is turning [him of M] on![or][BigNameDesc of M] seems to grow more excited with every hit![stopping]".

To say DamageReactTired of (M - vampiress):
	say "[BigNameDesc of M] pouts as [he of M] takes the hit.".

To say DamageReactWeak of (M - vampiress):
	say "[BigNameDesc of M] winces as [he of M] endures the hit.[one of][line break][speech style of M]'Darling, you're being too rough!'[roman type][line break][or][stopping]".

To say DamageReactSubmissive of (M - vampiress):
	say "[BigNameDesc of M] moans, rubbing [his of M] thighs together as [he of M] endures the hit. [line break][speech style of M]'[one of]Ooh, take me NOW, darling!'[or]I'm ready, darling. Take me! TAKE ME!'[or]Take me now! TAKE ME NOW!'[in random order][roman type][line break]".

To say BanishDemandFlav of (M - vampiress):
	say "[variable custom style]'[if there is worn purity clothing]Begone, evil creature[otherwise]I guess this is my house now[end if]!'[roman type][line break]".

To say BanishForceFlav of (M - vampiress):
	say "You make the sign of a cross. [BanishFleeFlav of M]".

To say BanishFleeFlav of (M - vampiress):
	say "[BigNameDesc of M][']s body transforms into a flock of bats which quickly fly up out of the mansion and into the sky.".

Definition: vampiress is permanently banishable: decide no. [Can be summoned again once banished]

To compute tax return of (M - vampiress):
	let P be a random on-stage closed pedestals;
	if P is a pedestal:
		let T be a random thing in P;
		say "[BigNameDesc of M] clicks [his of M] fingers and you hear the sound of glass grating against stone.";
		if T is a thing:
			say "[speech style of M]'Fine, my [ShortDesc of T] is yours. It is in the [location of P]. You can't miss it. But mark my words, if I catch you in my house again, you WILL become my next meal.'[roman type][line break]";
		otherwise:
			say "[speech style of M]'Weird, I opened a pedestal with nothing in it. Perhaps consider reporting this as a game bug.'[roman type][line break]";
	otherwise:
		compute default tax return of M.

To compute unique banishment of (M - vampiress):
	let X be nothing;
	let R be a random number between 0 and 5;
	if (full-lady fetish is 1 or a random number between 1 and 3 is 3) and gem-strapon is off-stage and the player is the donator:
		now X is gem-strapon;
	otherwise:
		now X is a random off-stage gothic corset;
	if X is gem-strapon:
		say "In their wake, you find a [X].";
	otherwise if X is gothic corset:
		say "In their wake, you find [his of M] [X].";
	unless X is nothing:
		now X is in the location of the player;
		compute autotaking X;
	if there is a worn tethering lipstick collar, end tethering;
	progress quest of ritual-quest.

To compute (M - vampiress) slinking away:
	say "[BigNameDesc of M][']s body transforms into a hoard of rats which quickly scurry out of sight.";
	while M is nearby:
		now M is in a random placed haunted room;
	bore M;
	increase the hunger-timer of M by 50.

To compute unique dislodging of (M - vampiress):
	if there is a worn tethering lipstick collar, end tethering.

Section 4 - Dominant Sex

To decide which number is the dominationtype of (M - vampiress) using (F - penis):
	decide on FUCK-BLOWJOB.

Definition: vampiress (called M) is uniquely-fuckable:
	if the stake of M is a sex toy and M is retaining the stake of M, decide no;
	if the number of held sex toys is 0, decide no;
	decide yes.

To say UniqueFuckDesc of (M - vampiress):
	say "'Pierce' [him of M] with a stake.".

To decide which number is the dominationtype of (M - vampiress) using (F - face):
	repeat with S running through held sex toys:
		say "Use your [MediumDesc of S] as the stake?";
		if the player is consenting:
			now the stake of M is S;
			decide on FUCK-UNIQUE;
	unless the stake of M is a sex toy:
		let T be a random held sex toy;
		now the stake of M is T;
	decide on FUCK-UNIQUE.

To decide which number is the submissiveness base of (M - vampiress):
	let D be the difficulty of M;
	increase D by player-fuckchoice * 2;
	if the stake of M is an insertable thing, decrease D by 2;
	if the stake of M is a wood-dong, decrease D by 2;
	decide on D.

To say DominanceFailure of (M - vampiress):
	if player-fucker is penis:
		say "[BigNameDesc of M] smiles playfully, catching your eye as you try to force [him of M] to [his of M] knees. You get lost in [his of M] gaze, and your head tingles please as you release [him of M].";
	otherwise if player-fucker is face:
		let S be the stake of M;
		say "You try to get behind [NameDesc of M], but [he of M] turns on you with a supernatural quickness, wrenching the [MediumDesc of S] out of your hand as [he of M] roughly grabs you by the chin. Your head tingles as [he of M] forces you to look [him of M] in the eye, and you stop resisting as you lose yourself in [his of M] gaze.";
		now M is retaining S;
		now the stake of M is the throne;
	otherwise:
		say "You grab [NameDesc of M] by the wrists and force [him of M] [if guest bed is in the location of the player or master bed is in the location of the player]onto the bed. [otherwise]to the ground. [end if][big he of M] catches your eye as you [if lady fetish is 2]pull [his of M] loincloth aside[otherwise]lift up [his of M] skirt[end if], and your head begins to tingle as you get lose yourself in [his of M] gaze. [run paragraph on]".

To compute failed dominance punishment of (M - vampiress):
	let V be a random off-stage vampiric fangs;
	let F be player-fucker;
	if F is fuckhole or the player is getting unlucky or M is willing to do vaginal:[if she's starved or you tried to ride her, she skips straight to the sex]
		let R be a random number between 1 and 3;
		say "[BigNameDesc of M] never breaks eye contact as you sit down in [his of M] lap, pulling you into [his of M] embrace as [he of M] guides [his of M] [LongDickDesc of M] into your [variable F].[line break][speech style of M]'Don't worry, darling, just focus on enjoying yourself. I'll handle everything.'[roman type][line break]";
		now M is penetrating F;
		set up sex length of M in F;
		now another-turn-flavour is the substituted form of "[BigFuckerDesc of M] fucks you with gentle thrusts.";
		now another-turn is 1;
	otherwise if V is actually summonable and F is face or the player is getting very unlucky:[if you tried to "stake" her or you're just super unlucky, she punishes you]
		say "[BigNameDesc of M] never breaks eye contact as you lie down next to [him of M], [if face is not actually occupied]kissing you passionately[otherwise]peppering kisses around your mouth[end if] as [he of M] pulls you into [his of M] embrace.[line break][speech style of M]'You've been bad, [NameBimbo]. But if you become my thrall, I won't have to punish you.'[roman type][line break][big he of M] grazes your neck with [his of M] fangs, and you realise [he of M]'s asking for permission to suck your blood.";
		if the player is consenting:[Bloodsucking may squick some people, so the player has to choose it explicitly]
			say "You feel a jolt of pain as [his of M] fangs pierce your neck, but thankfully it's over with quickly. [NameDesc of M] kisses you on the cheek, blood running down [his of M] chin as [he of M] gets to [his of M] feet. [line break][speech style of M]'Consider myself my newest fledgling. As long as you have enough semen in your diet, you should enjoy it immensely. See you later, darling!'[roman type][line break]You check your mouth and, sure enough, fangs have grown where your canine teeth once were.";
			reset vampire hunger;
			summon V cursed;
			follow the vampire rules;
			Calm M;
		otherwise:
			say "Pain pierces through your skull as [NameDesc of M] climbs to [his of M] feet. [line break][speech style of M]'Oh well. I prefer the new way anyway.'[roman type][line break]";
			PainUp 2;
		Bore M;
	otherwise:
		say "[line break][speech style of M]'Better luck next time, darling. I'm rooting for you!'[roman type][line break]";
		compute sissification;
		Bore M.

To unique dominate (M - vampiress):
	let S be the stake of M;
	now M is retaining S;
	say "You get behind [NameDesc of M] before [he of M] realises what's happening and immediately jam the [MediumDesc of S] right up [his of M] ass. [line break][speech style of M]'[one of]My weakness...[or]A s-stake? Oh SHIT![or]H-how did you find out m-my...[at random] A-aah...AAAAAH!'[roman type][line break][BigNameDesc of M] screams with pleasure as [his of M] [LongDickDesc of M] immediately jumps to erection, twitching and spasming as it shoots long ropes of [semen] across the floor.";
	orgasm M;
	FavourDown M by 5;
	now player-fucking is DOMINANT-SUPER.

To blowjob dominate (M - vampiress):[You 'feed' the vampiress]
	let C be a random bottom level protection clothing;
	let R be mental semi-dominance roll for M;
	if the stake of M is wood-dong, now R is 1;
	if sexual-penis-length > 8:
		say "You grab [NameDesc of M] by the wrists and push [him of M] to [his of M] knees. [big he of M] meets your gaze as you [if C is clothing and C is not strapon-panties]pull out your [SexDesc of penis], [otherwise if penis is penis-erect]stroke your [SexDesc of penis], [otherwise]bring your [SexDesc of penis] to hardness, [end if]opening [his of M] mouth so you can slide it right in. You were planning to be rough with [him of M] at first, but you end up letting [him of M] do most of the work instead, staring deeply into [his of M] eyes as [he of M] takes your [SexShaft] down [his of M] throat. [big his of M] eye contact never wavers, and as tiny bursts of pleasure creep up your length, you realise how difficult it is to look away.[if R <= 0]Your head tingles as you suddenly lose control, groaning with pleasure as you fill [his of M] belly with [semen].[otherwise][big he of M]'s clearly a little too eager for a mouthful, so you shove [him of M] away and finish yourself off all over the floor.[end if]";
		BlowGet;
		obsceneDignify;
		if R <= 0:
			reset vampire hunger;
			say AfterDominationComment 1 of M;
		otherwise:
			FavourDown M by 3;
			say AfterDominationComment 0 of M;
		orgasm;
	otherwise if sexual-penis-length > 3:
		say "You grab [NameDesc of M] by the wrists and push [him of M] to [his of M] knees. [big he of M] catches your eye as [he of M] [if C is clothing and C is not strapon-panties]pulls your [sexual-player-penis] out of your [printed name of C] and eagerly wraps [his of M] lips around your shaft. [otherwise if penis is penis-erect]eagerly wraps [his of M] lips around your rock-hard [SexShaft], fondling your balls as [his of M] tongue swirls around your tip. [otherwise]eagerly wraps [his of M] lips around your hardening [SexShaft], fondling your balls as [his of M] tongue swirls around the tip. [end if][big his of M] eye contact never wavers, and as tiny explosions of pleasure pass up and down your length, you realise how difficult it is to look away. [if R <= 0]You lose yourself in [his of M] gaze as you fill [his of M] mouth with [semen], and lost you remain as [he of M] finishes [himself of M] off in [his of M] hands and gets to [his of M] feet. [otherwise]You snap out of it, too horny to wonder what just happened as you fill [his of M] mouth with your [semen].[end if][if R <= 0 and face is not actually occupied][BigNameDesc of M] presents you with [his of M] sticky fingers, and you are immediately overcome with the urge to get them in your mouth, humming in satisfaction as you slurp off every last drop of [his of M] fluids[otherwise if R <= 0 and bukkake fetish is 1]. [BigNameDesc of M] presents you with [his of M] sticky fingers, and you are immediately overcome with the urge to let [him of M] wipe them off on your face[end if].";
		BlowGet;
		if R <= 0:
			if face is not actually occupied:
				if futanari fetish is 1 or lady fetish is 2, StomachSemenUp 1;
				otherwise SemenAddictUp 1;
			otherwise:
				if bukkake fetish is 1 and (futanari fetish is 1 or lady fetish is 2), CumFaceUp 1;
				otherwise SemenAddictUp 1;
			orgasm M;
			now player-fucking is DOMINANT-NEUTRAL;
			slightDignify;
			say AfterDominationComment 2 of M;
		otherwise:
			moderateDignify;
			say AfterDominationComment 1 of M;
		reset vampire hunger;
		orgasm;
	otherwise:
		if R <= 0:
			now player-fucking is DOMINANT-NEUTRAL;
			if futanari fetish is 1 or lady fetish is 2:
				say "You [NameDesc of M] push [him of M] to [his of M] knees, looking down at [him of M] hopefully as [he of M] delicately runs [his of M] fingertip along your [SexDesc of penis]. [big he of M] gazes back up at you, never breaking eye contact as [his of M] tongue flutters against your tiny [SexShaft]. It becomes increasingly hard to look away as your [sexual-player-penis] begins to spasm, and you lose yourself in [his of M] gaze as you cover [his of M] tongue with fresh [semen]. [BigNameDesc of M] swallows your [load] as [he of M] returns to [his of M] feet, and you are suddenly overcome with an urge to get on your knees [if face is not actually occupied]and wrap your lips around [his of M] [LongDickDesc of M]. You're not nearly as good as [he of M] is, but you try your best to please your mistress, and eventually [he of M] rewards you with a big load straight down your throat.[otherwise]wrap your hands around [his of M] [LongDickDesc of M]. You don't really see what's dominant about it, but it's exhilarating to pleasure your mistress, and eventually [he of M] rewards you with a big load all over your face.[end if]";
				BlowGet;
				if face is not actually occupied:
					BlowCount;
					StomachSemenUp the semen load of M;
				otherwise if bukkake fetish is 1:
					CumFaceUp the semen load of M;
				otherwise:
					OralSexAddictUp 1;
			otherwise:
				say "You [NameDesc of M] push [him of M] to [his of M] knees, looking down at [him of M] hopefully as [he of M] delicately runs [his of M] fingertip along your [SexDesc of penis]. [big he of M] gazes back up at you, never breaking eye contact as [his of M] tongue flutters against your tiny [SexShaft]. It becomes increasingly hard to look away as your [sexual-player-penis] begins to spasm and you lose yourself in [his of M] gaze as you cover [his of M] tongue with fresh [semen]. [BigNameDesc of M] swallows your [load] as [he of M] returns to [his of M] feet, and you are suddenly overcome with an urge to get on your knees and bury your face in [his of M] crotch. You're not nearly as good as [he of M] is, but you try your best to please your mistress, and eventually [he of M] rewards you by noisily cumming all over your face.";
				OralSexAddictUp 1;
			say AfterDominationComment 2 of M;
			trivialDignify;
		otherwise:
			say "You [NameDesc of M] push [him of M] to [his of M] knees, looking down at [him of M] hopefully as [he of M] delicately runs [his of M] fingertip along your [SexDesc of penis]. [big he of M] gazes back up at you, never breaking eye contact as [his of M] tongue flutters against your tiny [SexShaft]. It becomes increasingly hard to look away as your [sexual-player-penis] begins to spasm, and sensation explodes down your length as you cover [his of M] tongue with fresh [semen].";
			slightDignify;
			say AfterDominationComment 1 of M;
		orgasm;
		reset vampire hunger.

To say AfterDominationComment (N - a number) of (M - vampiress):
	if N is 0, say "[speech style of M]'[one of]That was a valuable meal you just wasted...'[or]Hey, I was going to eat that!'[or]Ugh, I can't stand mortals who waste food.'[in random order][roman type][line break]";
	if N is 1, say "[speech style of M]'[one of]Delicious. Next time, I'll milk it out myself!'[or]Mmm, I bet it would taste even better if I milked it out!'[or]It's always fun to have it from the tap every once in a while.'[in random order][roman type][line break]";
	if N is 2, say "[speech style of M]'[one of]'Dinner was wonderful, darling[or]So delicious, I couldn't eat another bite[or]I feel full[in random order], but don't worry I'll be back later for more.'[roman type][line break]".

To ride dominate (M - vampiress):
	now refractoryperiod is 1;[prevents player from orgasming too early in the scene]
	let F be player-fucker;
	let C be a random worn chastity cage;
	let G be the openness of F - the girth of M;
	now M is penetrating F;
	say "You grab [NameDesc of M] by the wrists and force [him of M] [if guest bed is in the location of the player or master bed is in the location of the player]onto the bed[otherwise]to the ground[end if]. [big he of M] catches your eye as you [if lady fetish is 2]pull [his of M] loincloth aside[otherwise]lift up [his of M] skirt[end if], and it becomes a little hard to think as your neck begins to tingle. Luckily, the feeling seems to pass. You climb ontop of [him of M], emitting a little hiss of pleasure as you [if G > 2]slide [his of M] shaft into your hungry[otherwise if G > -2]guide [his of M] shaft into your[otherwise]ease [his of M] shaft into your[end if] [variable F].";
	ruin F;
	now refractoryperiod is 0;
	now the refractory-period of M is 0;[so we know who came and who didn't]
	say "[if the soreness of F > 6]Your recent ordeals have left you pretty sensitive, and the sensation of [him of M] entering you very nearly pushes you over the edge. You once again find yourself looking into [NameDesc of M]'s eyes as you struggle to acclimate to [his of M] [LongDickDesc of M], [otherwise]Your enthusiasm takes its toll, and you pause for a second as you struggle to acclimate to [his of M] [LongDickDesc of M]. You once again find yourself looking into [NameDesc of M]'s eyes as you adjust your position, [end if]and you feel [one of]a familiar[or]the familiar[stopping] tingle near the back of your neck.";
	compute ride dominate checkpoint of M;
	let P be the refractory-period of M;
	say "[line break][BigNameDesc of M] smirks, calmly [if M is wrapped and P > 0]adjusting [his of M] condom[otherwise if P > 0]jerking [himself of M] off[otherwise if M is wrapped]peeling off the used condom and replacing it with a new one[otherwise]'maintaining' [his of M] erection[end if] as you struggle to regain your composure. [line break][speech style of M]'I admit what I did was selfish, but you aren't planning to stop are you? You aren't finished dominating me!'[roman type][line break]Now that [he of M]'s proven how easily [he of M] can take over, it might be too risky to continue. Do you want to keep going anyway? ";
	if the player is bimbo consenting:
		say "[BigNameDesc of M] smiles.[line break][speech style of M]'I'm glad, darling. Here, using these might make you feel better.'[roman type][line break][big he of M] gives you an apologetic look as [he of M] pulls out a pair of fuzzy pink handcuffs, and your whole head begins to tingle as [he of M] stares deeply into your eyes. [run paragraph on]";
		let R be mental semi-dominance roll for M;
		if the stake of M is wood-dong, now R is 1;
		if R <= 0:[She convinces you to wear the cuffs yourself.]
			if debugmode > 0, say "[bold type]FAILED[roman type][line break]";
			say "You suddenly realize how much easier it would be for [him of M] to *obey* you if [he of M] could control your movements, and *dominantly* hold out your hands as [he of M] snaps your new restraints into place. [BigNameDesc of M] pulls you into [his of M] arms, *submissively* rolling ontop of you as you *dominantly* spread your legs.[line break][speech style of M]'Are you ready, darling? To dominate me?'[roman type][line break][big he of M] purrs, [his of M] rock hard [DickDesc of M] prodding your [if P > 0 and M is unwrapped]cumdrooling [end if][if F is asshole]sphincter[otherwise]entrance[end if] as you answer with an incredibly dominant moan. You give yourself completely over to your submissive, staring deeply into [his of M] eyes as you get railed up the ass like the dominant little fucktoy you are. Minutes go by without you realizing anything odd is going on, and when you finally come back to your senses, your legs are wrapped around [NameDesc of M]'s waist, remnants of your [if the size of penis > 0]load[otherwise]juices[end if] on your belly and [his of M] [LongDickDesc of M] throbbing powerfully as it pumps [if M is wrapped]a second condom [otherwise]your [variable F][end if] full of [semen].";
			now player-fucking is DOMINANT-SHAMEFUL;
			now the refractory-period of M is 0;
			orgasm;[The player is convinced that this is dominant, so it isn't shameful, but we still don't award any dignity for it]
			if M is unwrapped, compute M finishing in F;
			orgasm M;
			if the player is not barbie, reset vampire hunger;
		otherwise:
			if debugmode > 0, say "[bold type]PASSED[roman type][line break]";
			say "For a moment, you find yourself thinking it would be a good idea to wear the handcuffs yourself, but you get rid of that nonsense with a strong shake of your head. [BigNameDesc of M] looks completely shocked as you snap the cuffs into place around [his of M] wrists, and unsuccessfully tries to struggle as you guide [his of M] [DickDesc of M] back into your [variable F].[line break][speech style of M]'What are you doing? How are you still-! THIS ISN'T FAIR!'[roman type][line break]You stare deeply into *[his of M]* eyes as you begin to ride [him of M], definitely feeling much better now that [his of M] confident smirk has been completely wiped off [his of M] face. You take your time and enjoy yourself, purposely facing away from your partner so [he of M] has no chance of tasting your [semen]. Minutes go by without you really noticing it, and a faint sense of euphoria fills your body as you feel yourself beginning to peak. You cry out in pleasure, your [if the size of penis > 0][player-penis] flinging ropes of [semen] out in front of you[otherwise][vagina] squirting out girlcum[end if] as orgasm crashes over your body.";
			now player-fucking is DOMINANT-DOMINANT;
			orgasm;
			strongDignify;
		if F is asshole, AnalCount;
		otherwise FuckCount;
		compute ride dominate aftermath of M;
	otherwise:[No, don't continue]
		moderateHumiliate;
		compute ride dominate aftermath of M.

To compute ride dominate checkpoint of (M - vampiress):
	let F be player-fucker;
	let U be a random guest bed in the location of the player;
	unless U is furniture, now U is a random master bed in the location of the player;
	let G be the openness of F - the girth of M;
	let R be mental semi-dominance roll for M;
	if the stake of M is wood-dong, now R is 1;
	if R <= 0:[She makes you ride her really hard]
		if debugmode > 0, say "[bold type]FAILED[roman type][line break]";
		now player-fucking is DOMINANT-SHAMEFUL;
		say "You're unable to look away from [him of M] as [he of M] begins to thrust into you, and you find yourself perfectly matching [him of M] in both pace and intensity as you pick up speed. [if G > 2]It's nothing you can't handle, but your body refuses to slow down[otherwise if G > -2]It's a little more than you can handle, but your body refuses to slow down[otherwise]It's far more than you can handle, but your body refuses to slow down[end if], leaving you helpless as the soreness slowly begins to build. [BigNameDesc of M], on the other hand, enjoys [himself of M] thoroughly, [if U is furniture]gripping the sheets[otherwise]digging [his of M] claws into the ground[end if] as you breathlessly bounce on [his of M] [DickDesc of M]. [big he of M] grabs your waist as [his of M] voice grows ragged, and your body once again refuses to listen to your commands as [he of M] begins to fuck you for real. You are unable to resist as [his of M] [DickDesc of M] spasms, [if M is wrapped]filling the condom with several spurts of [semen][otherwise]shooting several spurts of [semen] directly into your [variable F][end if].";
		Ruin F times 3;
		if M is unwrapped, compute M finishing in F;
		orgasm M;
	otherwise:[You ride her carefully]
		if debugmode > 0, say "[bold type]PASSED[roman type][line break]";
		say "The feeling passes as you slowly begin to move your hips, carefully maintaining your pace to keep yourself from getting sore. [if G > 2]It doesn't take long for you to settle into a strong rhythm[otherwise if G > -2]It takes a while, but you eventually settle into a good rhythm[otherwise]It takes a while for you to get used to, but eventually you settle into a nice, steady rhythm[end if] of bouncing on [his of M] [DickDesc of M]. [NameDesc of M] responds appreciatively as you bring up the intensity, tweaking [his of M] nipples and biting [his of M] lip as [he of M] begins to meet you with gentle thrusts. You appreciate it at first, but [he of M] gets carried away, and [he of M] suddenly grabs your waist as [he of M] begins to fuck you for real.";
		now player-fucking is DOMINANT-NEUTRAL;
		Ruin F times 1;
	if refractoryperiod > 0:
		say "[big he of M] catches your [if the size of penis > 0]load in [his of M] hand, winking at you as [he of M] slurps your [semen][otherwise]juices in [his of M] hand, winking at you as [he of M] slurps your femcum[end if] off [his of M] fingers. Only then does [he of M] allow you to get up.";
		reset vampire hunger;
	otherwise:
		say "[big he of M] can't hold onto you for very long, though, and you get up after forcing [him of M] to relax [his of M] grip.";
	if F is asshole, AnalCount;
	otherwise FuckCount.

To compute ride dominate aftermath of (M - vampiress):
	let V be vampiric fangs;
	if player-fucker is asshole and V is actually summonable and the refractory-period of M > 0 and M is unwrapped:
		say "[BigNameDesc of M] sits up.[line break][speech style of M]'That was a wonderful change of pace, darling. You may not have noticed, but when I came inside you, I turned you into my newest fledgling. Don't be surprised if you have insatiable cravings for the essence of the living!'[roman type][line break]You check your mouth and, sure enough, fangs have grown where your canine teeth once were.";
		summon V cursed;
		follow the vampire rules;
	otherwise if player-fucking is DOMINANT-DOMINANT:
		say "[BigNameDesc of M] sits up. [line break][speech style of M]'[one of]But... my meal...'[or]But, I was going to eat that...'[or]But... I was hungry...'[at random][roman type][line break]";
		FavourDown M by 1;
	otherwise if refractoryperiod > 0:
		say "[BigNameDesc of M] sits up.[line break][speech style of M]'That was [if the refractory-period of M > 0]wonderful, darling. I hope it was as good for you as it was for me...'[otherwise]a wonderful change of pace, darling. I'd be glad to switch places with you again for a little while.'[end if][roman type][line break]";
		calm M;
		FavourUp M by 1;
	otherwise if refractory-period of M > 0:
		say "[BigNameDesc of M] rolls over, looking disappointed. [line break][speech style of M]'[one of]Darling, I didn't mean to cum without you...'[or]Are you upset because I came first? I meant to do it together...'[or]I'm sorry, darling. I wanted us to cum together.'[at random][roman type][line break]";
		calm M;
	otherwise:
		say "[BigNameDesc of M] sits up. [line break][speech style of M]'[one of]Darling, I know you're upset, but you didn't even cum...'[or]But, you didn't even cum...'[or]But... didn't you want to cum? Darling...'[at random][roman type][line break]";
		FavourDown M by 1.

To replace (M - vampiress) after domination:
	unless player-fucking is DOMINANT-SUPER:
		if debugmode > 0, say "Regionally placing [M].";
		distract M;
		regionally place M.

To compute successful dominance of (M - vampiress):
	if player-fucking is not DOMINANT-SHAMEFUL:
		compute unique dominance reward of M;
	if player-fucking is DOMINANT-DOMINANT or player-fucking is DOMINANT-SUPER:
		DominateUp M;
		say "[line break][BigNameDesc of M] transforms into a hoard of rats, which quickly scurry out of sight. [line break]You feel more [if the player is male]manly[otherwise]dominant[end if]!";
	otherwise:
		IntDown 1;
		say "[line break][BigNameDesc of M] kisses you on the cheek and confidently walks away.[line break]You look forward to the next time you can please your [if lady fetish is 2]master[otherwise]mistress[end if]...".

Part 4 - Conversation

To IdentifiablePosterReaction of (M - vampiress):
	say "[BigNameDesc of M] looks at you, smirks, then looks back to the poster. [line break][speech style of M]'... I believe they caught your good side. [if the class of the player is vampire spawn]I wouldn't expect any less from one of my fledglings.'[roman type][line break]";
	say "You turn bright red with shame.";
	humiliate the lewdness of a random poster in the location of the player * 2.

To UnidentifiablePosterReaction of (M - vampiress):
	say "[speech style of M]'Is this what mortals call art nowadays? ... I like it.'[roman type][line break]";
	say "You turn bright red but don't say a word.";
	humiliate the lewdness of a random poster in the location of the player.

Section 1 - Greeting

To say FirstGreeting to (M - vampiress):
	say "Your eyes meet with [hers of M], and you get the feeling [he of M] is picking your words out for you.[line break][second custom style]'[one of]Hello, I'm [NameBimbo]. Please be my [literalMistress of M]!'[or]Hello, new [literalMistress of M]! My name is [NameBimbo].'[or]Hello, [literalMistress of M]! My name is [NameBimbo]!'[at random][roman type][line break]";
	say FirstResponse of M.

To say FirstResponse of (M - vampiress):
	say "[speech style of M]'Hello there, doll...'[roman type][line break]";

To say RepeatGreeting to (M - vampiress):
	say "Your eyes meet with [hers of M], and you get the feeling [he of M] is picking your words out for you.[line break][second custom style]'[one of]Hello, [literalMistress of M]! I can't wait for you to fuck me.'[or]Feed from me soon, [literalMistress of M]!'[or]Please use me soon, [literalMistress of M]! I'm delicious!'[at random][roman type][line break]";
	say RepeatResponse of M.

To say RepeatResponse of (M - vampiress):
	say "[speech style of M]'Hello again, [NameBimbo]...'[roman type][line break]".

To say UnfriendlyGreeting to (M - vampiress):
	say "Your eyes meet with [hers of M], and you get the feeling [he of M] is picking your words out for you.[line break][second custom style]'[one of]I can't wait for you to punish me, [literalMistress of M]!'[or]Oooh, I'm being so bad, aren't I, [literalMistress of M]!'[or]Please punish me, [literalMistress of M]!'[or]Ooh, I'm being naughty, aren't I, [literalMistress of M]?'[at random][roman type][line break]";
	say PleadingResponse of M.

To say PleadingResponse of (M - vampiress):
	say "[speech style of M]'[one of]Yes, you're such a bad slave!'[or]Oh yes. You will be punished thoroughly, my darling.'[or]Mmm, you're in SO much trouble!'[or]I have quite the comeuppance in store for you, darling!'[at random][roman type][line break]".

To say SubmissiveResponse of (M - vampiress):
	if M is friendly:
		say RepeatResponse of M;
	otherwise:
		say "[speech style of M][one of]'Come back for more? They never can stay away...'[or]'It's nice to see you again... You were quite delicious.'[or]'It's good to see you... I'd love another taste.'[at random][roman type][line break]";

To say PartnerGreeting to (M - vampiress):
	say FriendlyPartnerGreeting to M.

To say FriendlyPartnerGreeting to (M - vampiress):
	say "You find yourself unable to turn away from [him of M] as [he of M] picks your words out for you.[line break][first custom style]'[one of]Please fuck me harder, [literalMistress of M]![or]Please never stop!'[or]Yes! Fuck me, [literalMistress of M]![or]Use me, [literalMistress of M]!'[at random][roman type][line break]";

To say EnthusiasmResponse of (M - vampiress):
	say "[second custom style]'[one of]My, my... Aren't you enthusiastic. What happened to your fight?'[or]Now that's better...'[or]You really are enjoying yourself, aren't you?'[or]Mindless little puppet... It's almost too easy to be fun.'[or]Shush now, slave...'[at random][roman type][line break]".

To say HelpGreeting to (M - vampiress) with (N - a monster):
	say "Your eyes meet with [hers of M], and you get the feeling [he of M] is picking your words out for you.[line break][second custom style]'[one of]I can serve you too, [literalMistress of M].'[or]My body is open to you as well, [literalMistress of M].'[or]Go ahead, [literalMistress of M]...'[or]Don't worry, I can always handle my [literalMistress of M].'[at random][roman type][line break]";
	say InvitationResponse of M with N.

To say InvitationAccepted of (M - vampiress) with (N - a monster):
	say "[speech style of M]'Mmm, how could I pass that up?'[roman type][line break]".

To say InvitationRejected of (M - vampiress) with (N - a monster):
	say "[speech style of M]'[one of]I'm sorry, darling. I'm tired now. Maybe later.[or]Perhaps another time.'[at random][roman type][line break]".

Section 2 - Questioning

To compute annoyance of (M - vampiress):
	if M is unfriendly:
		say "[speech style of M]'I'll answer any question you like... You just have to submit first.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'At first it was cute but I'm beginning to tire of your curiosity.'[roman type][line break]";

To say WhereAnswer of (M - vampiress):
	say "[speech style of M]'[one of]We're in a haunted manor... Speaking of hauntings, I'd avoid the ghosts if I were you.'[or]Like I said, we're in a haunted manor. Are you a touch deaf and/or demented?[or]I'm going to go ahead and assume that you're demented... It doesn't mean that I love you any less though.[stopping][roman type][line break]".

To say WhoAnswer of (M - vampiress):
	say "[speech style of M]'As you might have guessed, I am a vampire, and a very old one at that. Originally, I hail from Rome... You wouldn't believe the things that I've seen. By the way, my name is Aurora... Ironic, isn't it?'[roman type][line break]".

To say StoryAnswer of (M - vampiress):
	say "[speech style of M]'[one of]As I might have told you, I can't remember for sure, I originally came from Rome. When I was turned, Trajan was still emperor... He was a damned fine one too. But, I digress.'[or]In case you wondered, yes, I used to feast on blood. And, for the record, people tasted better before industrialisation. In addition to the pure cruelty of sucking people dry, it was all of the processed food that led me to switch from blood to cum... Though, truth be told, cum used to taste better as well. When all else fails, at least there's pineapple.'[or]When I was younger, I served as a vestal virgin... If they could only see me now!'[or]Why am I here? I found out about this little game and decided it might be amusing. I fucked the creator, manipulated them into letting me in and they don't even remember me doing it!'[as decreasingly likely outcomes][roman type][line break]".

To say EscapeAnswer of (M - vampiress):
	say "[speech style of M]'I suppose you can leave this place any time you like. Just find the front door and walk out. [if M is annoyed] But, you'll stay a while, won't you? I'd love to have you for dinner...'[otherwise]Now getting back to your home... That's the real question, isn't it?'[end if][roman type][line break]".

To say AdviceAnswer of (M - vampiress):
	say "[speech style of M]'[one of]I'm not the only dead thing here, just to warn you. The ghosts here can be quite annoying.'[or]I'd avoid the cultists if I were you. There's a price to be paid for the things that they engage in... But then again, there's a price for just about everything, isn't there?[or]The owners of this house had an odd sense of humour. You might want to avoid the mirrors, and some of the chests are not quite what they seem.'[at random][roman type][line break]".

To compute teaching of (M - vampiress):
	say "[speech style of M]'It's so annoying when you want to cum, but you can't touch yourself, isn't it? If you angle your hips like this, you won't need to touch your[if the size of penis > 5] yummy [player-penis][otherwise if the player is possessing a penis] adorable little [player-penis][otherwise if the player is possessing a vagina] dainty little honeypot[end if][if the player is barbie]... oh, I guess you don't have genitals anyway.'[otherwise] at all!'[end if][roman type][line break]";
	teach buttskill;
	HeavyConvoFatigue M.

Section 3 - Drink Requesting

To compute unfriendly drink of (M - vampiress):
	if M is unfriendly:
		say "[speech style of M]'Sure... I might have something to put in your mouth. All you have to do is kneel.'[roman type][line break]";
		now the boredom of M is 0;
	otherwise:
		say "[speech style of M]'I'm afraid not.'[roman type][line break]".

To compute friendly drink of (M - vampiress):
	say "[speech style of M]'I'm afraid you'll have to ask someone else.'[roman type][line break]".

Vampiress ends here.
