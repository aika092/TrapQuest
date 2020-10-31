Djinn by Monster begins here.

djinn is a monster. djinn is intelligent. The leftover-type of djinn is 113. djinn has a number called wish history. djinn is airborne. djinn is male.

Definition: djinn is father material: decide yes.

Definition: djinn is dark skinned: decide yes.

Definition: djinn is woods dwelling: decide yes.

Definition: djinn is raunchy: decide yes.

The text-shortcut of djinn is "ndj". Understand "nubian" as djinn.

To say ShortDesc of (M - djinn):
	say "djinn".

To say MediumDesc of (M - djinn):
	say "nubian djinn".

Figure of djinn is the file "NPCs/Forest/Djinn/djinn1.png".
Figure of censored djinn is the file "NPCs/Forest/Djinn/djinn2.png".

To decide which figure-name is the monster-image of (M - djinn):
	[if lady fetish is 1, decide on figure of missing NPC;]
	if diaper quest is 0, decide on figure of djinn;
	otherwise decide on figure of censored djinn.

To decide which figure-name is the vaginal-sex-monster-image of (M - djinn):
	[if lady fetish is 1, decide on figure of missing NPC;]
	decide on figure of djinn cutscene 1.

To decide which number is the default favour of (M - djinn):
	decide on the aggro limit of M + 4. [This puts the djinn 1 favour below the number necessary to be considered your 'buddy'.]

To say MonsterDesc of (M - djinn):
	say "This [if lady fetish is 0]tall, dark-skinned [man of M][otherwise]muscular, dark-skinned [man of M][end if] has no legs but instead a billowing smoky pillar below [his of M] [if diaper quest is 1 or full-lady fetish is 1]waist[otherwise]thick, veiny cock[end if]. [big he of M] has four arms, two of which are kept folded in front of [his of M] chest whilst the other two are used to wildly gesticulate as [he of M] talks. [if full-lady fetish is 1 and diaper quest is 0]A patch of night sky in the shape of a penis hangs from [his of M] waist.[end if]".

To say LongDickDesc of (M - djinn):
	if full-lady fetish is 1:
		say "proud celestial [manly-penis]";
	otherwise if interracial fetish is 1:
		say "black, veiny [manly-penis]";
	otherwise:
		say "thick, veiny [manly-penis]";

To say DickDesc of (M - djinn):
	if full-lady fetish is 1, say "celestial [manly-penis]";
	otherwise say manly-penis.

To set up (M - djinn):
	reset M;
	now the monstersetup of M is 1;
	now the raw difficulty of M is the starting difficulty of M;[9]
	add green-briefs to the tradableItems of M, if absent;
	now the health of M is the maxhealth of M.

To decide which number is the girth of (M - djinn):
	decide on 5.

Definition: djinn is human: decide yes.

Part 1 - Misc Flavour

To say SummoningFlav of (M - djinn):[shouldn't happen]
	if the location of the player is Woods30, say "[one of]The noise inside the statue abruptly stops, and a cloud of smoke forms rapidly in the centre of the clearing, growing darker and darker as a four-armed [man of M] materialises from the waist up. [big he of M] looks at you and narrows [his of M] eyes.[or]You hear a strong rumble, and a thick fog suddenly rolls into the clearing. It seems to grow continually thicker, shifting and twisting as a dark-skinned [man of M] materialises from the waist up. [big he of M] crosses [his of M] arms, looking up at the statue.[line break][speech style of M]'See you at the usual time on Tuesday.'[roman type][line break][as decreasingly likely outcomes]";
	otherwise say "You hear a low toned manly voice echo throughout the woods.[line break][first custom style]'WHO DISTURBS MY SLUMBER?'[roman type][line break]".

To say DiaperReaction of (M - djinn):
	say "[BigNameDesc of M] smirks and looks directly at your dampening crotch.[line break][speech style of M]'You mortals are so pitiful.'[roman type][line break]";
	if the player is modest, say "[one of]You are so ashamed you wish the ground would just open up and swallow you.[or][stopping]You turn bright red and can't bring yourself to look [NameDesc of M] in the eye.".

To compute diaper mess reaction of (M - djinn):
	say "[BigNameDesc of M] frowns.[line break][speech style of M]'[if M is friendly]Fortunately for you, I have no sense of smell in this ascended form. If I did, I would struggle to think of a horrible enough punishment for assailing my nostrils with the scent of your bowels.'[otherwise]Incredible. You are more pathetic than any other mortal I have ever met, in 4000 years of existence. That's quite a remarkable feat.'[end if][roman type][line break]";
	humiliate 400.

To compute (M - a monster) stomping (N - djinn):
	if M is in the location of the player, say "[BigNameDesc of M] kills the [N].";
	destroy N;
	let L be a random off-stage leftover;
	now L is in the location of M;
	now the leftover-type of L is the leftover-type of N.

Part 2 - Perception

To decide which number is the outrage tolerance of (M - a djinn): [What number of outrage they are unimpressed and lose favour.]
	if diaper quest is 1, decide on 6;
	decide on 9.

To compute appearance assessment of (M - djinn):
	let M2 be nothing;
	repeat with N running through combative monsters:
		unless N is M, now M2 is N;
	if M2 is monster or there is a live thing penetrating a body part or the player is immobile:
		say "[big he of M] watches you [if M2 is monster]and the [M2] [end if]momentarily with a look of mild amusement on [his of M] face, before moving on.";
		distract M;
	otherwise if the player is top-wardrobe-malfunctioning:
		if diaper quest is 1, compute dq nip slip reaction of M;
		otherwise compute tq nip slip reaction of M;
	otherwise:
		if the wish history of M >= 3:
			if the appearance of the player <= the outrage tolerance of M:
				say "[speech style of M]'Oh it's you again. [one of]You'll be [please]d to hear that I no longer have to grant you any wishes. [if M is buddy]Since you have shown me respect, I shall not harass you further... for now[otherwise]I'm free to mess with you, though[end if].'[or][if M is buddy]I'm impressed that you don't look even more horrendous by now, considering the dangerous things lurking in this world[otherwise]What should I do to you this time[end if]...'[stopping][roman type][line break]";
				compute djinn messing of M;
			if the appearance of the player > the outrage tolerance of M:
				if diaper quest is 0, say "[speech style of M]'[one of]The fates tempt me! You are looking mighty appealing right now...'[or]Goodness gracious! Now that is quite the sight! Do you know what I usually do with humans I see that look like you?'[in random order][roman type][line break]";
				otherwise say "[speech style of M]'[one of]Wow, now that's probably a bit too far! You should try and make your appearance less obscene before you offend my eyes further...'[or]Goodness gracious! Now that is quite the sight! Do you know what I usually do with humans I see who look like you?'[in random order][roman type][line break]";
				FavourDown M;
			if M is unfriendly:
				if diaper quest is 0, say "You and [NameDesc of M] both glance down and notice that [his of M] [DickDesc of M] is quickly getting larger and harder.[line break][speech style of M]'[one of]You've caused this, so you're going to have to take responsibility for it.'[or]Well, you know what this means...'[stopping][roman type][line break]";
				otherwise say "[BigNameDesc of M] hums to [himself of M] for a few moments as [he of M] considers [his of M] options.[line break][speech style of M]'In fact I'm afraid I'm going to have to help you make your appearance less erotic, the only way I know how...'[roman type][line break]";
			otherwise:
				say "[big he of M] seems content to follow and observe you with mild interest for now.";
		otherwise if the class of the player is priestess or the class of the player is avatar or the class of the player is cultist or the class of the player is worshipper:
			say "[speech style of M]'[one of]I am bound... oh. You already work for someone else. Right, forget I said anything.'[or]We meet again, acolyte.'[at random][roman type][line break]";
		otherwise if the player is able to speak:
			say "[speech style of M]'[one of]I am bound by the law of Djinni to grant you three wishes. You must tell me your first wish now[or]You must tell me your second wish now[or]You must tell me your third and final wish now[stopping].'[roman type][line break]";
			now the alert of the player is 1;
			compute djinn wishing of M;
			if diaper quest is 0, alwayscutshow the figure of djinn for M;
			otherwise alwayscutshow the figure of censored djinn for M;
		otherwise:
			say "[speech style of M]'Hmm, looks like you can't speak at the moment. I'll come back later.'[roman type][line break]";
			bore M.

To compute perception of (M - djinn):
	now M is interested;
	if M is unfriendly:
		say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if][line break][speech style of M]'[one of]Whore, your holes are required.'[or]You look like a [tasty] mortal. Bow before me!'[or]Come here, young one. My shaft isn't going to pleasure itself...'[in random order][roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] looks you up and down[if the player is sluttily dressed].[otherwise]![end if][line break]";
		compute appearance assessment of M.

To compute DQ perception of (M - djinn):
	now M is interested;
	if there is soiled-diaper carried by M:
		say "[speech style of M]'[one of]You there, you disgusting mortal! I'm sure it's you who left this for me to find! How vile[or]Vile mortal, stop leaving your horrendous used garments around for me to find[stopping]!'[roman type][line break]";
		anger M;
	otherwise if M is unfriendly:
		say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if][line break][speech style of M]'[one of]Oh look, a little baby. Does someone need looking after?'[or]Oh it's the little baby again! Back for more?'[or]Come here again, young one.'[stopping][roman type][line break][big he of M] looks aggressive!";
	otherwise:
		say "[BigNameDesc of M] looks you up and down[if the player is sluttily dressed].[otherwise]![end if][line break]";
		compute appearance assessment of M.

To decide which number is the bimbo tolerance of (M - djinn):
	if interracial fetish is 1, decide on 13;
	decide on 16.

Part 3 - Djinn Wishing

To compute djinn wishing of (M - a monster):
	allocate 6 seconds;
	increase the wish history of M by 1;
	reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
	set next numerical response to "wish for strength";
	set next numerical response to "wish for dexterity";
	set next numerical response to "wish for blessings";
	set next numerical response to "wish for sanity";
	set next numerical response to "wish for safety";
	if diaper quest is 0 and the class of the player is adventurer:
		let C be a random worn currently uncovered dress;
		if C is clothing and the outrage of C > 5 and purple rubber bodysuit is fetish appropriate, set next numerical response to "wish for less lewd clothing";
	if M is in the location of the player:
		if diaper quest is 0, set next numerical response to "wish for a suck of [his of M] cock";
		otherwise set next numerical response to "wish for a spanking";
	if diaper lover >= 1, set next numerical response to "wish for a diaper change";
	set next numerical response to "wish for nothing";
	compute multiple choice question;
	let CNR be the chosen numerical response;
	if the printed name of CNR is "wish for strength":
		say "[BigNameDesc of M] unfolds [his of M] folded arms and waves them at your body.[line break][speech style of M]'I shall give you stronger muscles...'[roman type][line break]You feel your muscles grow!";
		StrengthUp 1;
		if interracial fetish is 1 and the raw bbc addiction of the player < 10 and the calculated bbc addiction of the player < 10:
			say "[speech style of M]'...and a stronger love for my kind!'[roman type][line break]";
			BBCAddictUp 1;
		otherwise:
			say "[speech style of M]'...and a stronger craving for my cock!'[roman type][line break]";
			if the player is possessing a vagina, VaginalSexAddictUp 1;
			otherwise AnalSexAddictUp 1;
	otherwise if the printed name of CNR is "wish for dexterity":
		say "[BigNameDesc of M] unfolds [his of M] folded arms and waves them at your body.[line break][speech style of M]'I shall make you faster at running...'[roman type][line break]You feel more agile!";
		DexUp 1;
		say "[speech style of M]'...and also faster at cumming.'[roman type][line break]";
		if there is a worn tattoo and the number of worn asshole-tattoo is 0:
			let T be a random asshole-tattoo;
			summon T;
			say "A [T] is seared into existence around your [asshole]!";
		otherwise if the player is possessing a vagina and normal clit piercing is actually summonable:
			summon normal clit piercing cursed with persistent quest;
			say "A [normal clit piercing] is seared into existence straight through your clitoris!";
		otherwise:
			SexAddictUp 1;
	otherwise if the printed name of CNR is "wish for blessings":
		say "[BigNameDesc of M] unfolds [his of M] folded arms and waves them at your body.";
		let LC be the list of worn blessable clothing;
		repeat with C running through LC:
			say "Your [ShortDesc of C] is surrounded by a blue light!";
			bless C;
			if C is transformable, potentially transform C;
		if the number of entries in LC is 0, say "[speech style of M]'Hmm, looks like you didn't have anything I could actually bless. Not my problem though.'[roman type][line break]";
	otherwise if the printed name of CNR is "wish for sanity":
		say "[line break][speech style of M]'I shall fulfill your wish, but to remove memories like this may take some knowledge with it...'[roman type][line break][BigNameDesc of M] unfolds [his of M] folded arms and waves them at your head. You feel calmed, but also find it slightly more difficult to think.";
		SexAddictDown 1;
		SemenAddictDown 1;
		DelicateDown 1;
		Dignify 1000;
		IntDown 1;
	otherwise if the printed name of CNR is "wish for safety":
		say "[BigNameDesc of M] unfolds [his of M] folded arms and waves them at your body.";
		teleport to Dungeon12;
	otherwise if the printed name of CNR is "wish for less lewd clothing":
		say "[BigNameDesc of M] unfolds [his of M] folded arms and waves them at your body.[line break][speech style of M]'How lewd your appearance becomes will depend on how much care you take.'[roman type][line break]";
		PinkWardrobeUnclash purple rubber bodysuit;
		summon purple rubber bodysuit cursed with quest;
	otherwise if the printed name of CNR is "wish for nothing":
		say "[speech style of M]'Wow, what a way to waste your wish.'[roman type][line break]";
	otherwise if the printed name of CNR matches the text "suck":
		if the player is upright:
			now auto is 1;
			try kneeling;
			now auto is 0;
			say "You open your mouth obediently.";
		now the player-reaction of the player is submitting;
		now presented-orifice is face;
		check consensual submissive sex of M;
	otherwise if the printed name of CNR is "wish for a spanking":
		if the player is upright:
			now auto is 1;
			try kneeling;
			now auto is 0;
			say "You get on your knees obediently, raising your [buttcheeks] into the air.";
		now the player-reaction of the player is submitting;
		anger M;
		compute spanking of M;
	otherwise if the printed name of CNR is "wish for a diaper change":
		if there is a worn diaper or there is a worn messed knickers:
			let D be a random worn knickers;
			say "[BigNameDesc of M] unfolds [his of M] folded arms and waves them at your [printed name of D].";[Maybe have Djinn punish by adding locking plastic panties, with key given to matron?]
			if D is wet or D is messed:
				say "A cloud of baby powder releases from the seams of your [MediumDesc of D]. It feels[if D is perceived messed], and smells,[end if] as if it were brand new!";
				fully clean D;
			otherwise:
				say "[speech style of M]'Hmm, looks like your diaper was already clean. Not my problem though.'[roman type][line break]";
		otherwise:
			say "[BigNameDesc of M] unfolds [his of M] folded arms and waves them at your crotch.[line break][speech style of M]'Wait a minute, you're not even wearing a diaper! Let me fix that.'[roman type][line break]";
			if there are worn knickers:
				let K be a random worn knickers;
				say "You suddenly feel your [ShortDesc of K] vanish with a gust of air around your crotch!";
				destroy K;
			let E be a random eligible diaper;
			say "With a flash of light, you feel a [ShortDesc of E] appear around your crotch, forcing your legs apart!";
			summon E cursed with quest;
	otherwise:
		say "ERROR: unable to properly process that wish. Please report this as a bug!".

To say SpankingDeclarationFlav of (M - djinn):
	say "[speech style of M]'Heh, I had a feeling you would choose wisely. I'm going to enjoy this.'[roman type][line break]".

To say SpankingAfterFlav of (M - djinn):
	say "[BigNameDesc of M] releases you.[line break][speech style of M]'It was a wise decision to not make an enemy of me.'[roman type][line break]";
	now the favour of M is the default favour of M.


Part 4 - Djinn Messing

To compute djinn messing of (M - djinn):
	let R be a random number between 1 and 10;
	let C be most-transformable-uncovered-clothing;
	if R > 1 and C is clothing:
		compute M transforming C;
	otherwise:
		say "[big he of M] points at your legs, and you feel a bit more stiff...";
		DexDown 1.

To compute (M - djinn) transforming (C - a clothing):
	say "[big he of M] points at your [ShortDesc of C], and a bolt of magic lightning erupts from [his of M] finger! Your [ShortDesc of C] starts to shimmer...";
	let enhanced be 0;
	if a random number between 2 and 6 > the raw-magic-modifier of C, now enhanced is 1;
	[Below is a slightly modified version of the "potentially transform (C - a clothing)" code.]
	if C is upgradable:
		let D be the upgrade-target of C;
		transform C;
		if enhanced is 1:
			increase the raw-magic-modifier of D by 1;
			say "It glows blue for a moment, as you feel it infused by powerful magic... it's now a [D]!";
	otherwise:
		compute failed transform of C.

Part 5 - Combat

To compute (M - djinn) protecting against (X - a unicorn):
	compute default protecting of M.

To compute (M - djinn) protecting against (X - a monster):
	if M is mating and the player is not monster stuck:
		dislodge X;[accounts for wrangling]
		let T be a random placed jungle room;
		while T is Dungeon12 or T is the location of the player:
			now T is a random placed jungle room;
		say "[BigNameDesc of M] gets between you and the [X].[line break][speech style of M]As mother of my children, you are above fighting these vermin. You will not sully your hands fighting them under any circumstances.[roman type][line break][big he of M] taps you on the forehead, and the scenery around you shifts as you reappear in the [printed name of T]!";
		teleport to T;
	otherwise:
		compute default protecting of M.

To say SexSubmissionFlav of (M - djinn): [this is customised because I rewrote the scene so the player is floating a couple feet off the ground.]
	if diaper quest is 1:
		say "[one of]Recognising how much more powerful [NameDesc of M] is than you, you decide not to fight back[or]As humiliating as it is to let [him of M] have [his of M] way, it's not like you can do much about it anyway[or]You submit to the superior being[in random order].";
	otherwise if the relevant sex addiction of M < 10:
		say "[one of]Recognising how much more powerful [NameDesc of M] is than you, you decide not to fight back[or]As humiliating as it is to let [him of M] have [his of M] way, it's not like you can do much about it anyway[or]You submit to the superior being plowing away at your [random body part penetrated by M][in random order].";
	otherwise:
		say "[one of]You allow [NameDesc of M] to violate you as much as [he of M] likes. [big he of M]'s in charge![or]You relax and enjoy the feeling of [NameDesc of M][']s [LongDickDesc of M].[at random]".

To say SexResistFlav of (M - djinn):
	say "[one of]You hopelessly flail against [NameDesc of M][']s grip, doing everything you can to resist the invasion.[or]You seem to be being held still by some kind of magical force, leaving you with no real way of resisting, but you still try![or]You flail around and make as much noise as you can, but no matter how much you try, you can't do anything about [NameDesc of M][']s powerful pistoning.[or]You fight against the [if interracial fetish is 1 and M is penetrating a fuckhole]pleasure that [his of M] [LongDickDesc of M] is sending through your sensitive hole[otherwise][M][end if] but it's no use, you can't do anything to stop the action![in random order]".

To say angry punishment insult of (M - djinn):
	if M is not friendly-fucking:
		say "[first custom style]'You dare to disrespect me?! Learn your place, worm.'[roman type][line break]";
	otherwise:
		say "[first custom style]'There's still some stubbornness left in you. I like that. I'll let you off this time.'[roman type][line break]".[He's not raping you, so he doesn't tear your clothes off, but he isn't all that happy either.]

To compute happy oral sex reward of (M - djinn):
	if M is friendly-fucking:
		say "[speech style of M]'It was a wise decision to not make an enemy of me.'[roman type][line break]";
		FavourUp M by 1.

Section 1 - Attack

To compute the flying player taunting of (M - djinn):
	if a random number from 1 to 6 is 1:
		say "[BigNameDesc of M] laughs at you.[line break][speech style of M]'[one of]Your attempt at flight is laughable.'[or]If the [great one] had intended you to fly, he would have given you my power!'[or]How dreadfully pathetic, even for a mortal.'[in random order][roman type][line break][if the humiliation of the player < 17500]You [one of]wince[or]shudder[or]cringe[purely at random] with shame.";
		humiliate 20.

To say LandingTaunt of (M - djinn):
	say "[BigNameDesc of M] [if a random number between 1 and 2 is 1]chuckles[otherwise]laughs mercilessly[end if].";
	humiliate 50.

To decide if (M - djinn) is losing wrapper in (F - asshole):
	if the class of the player is priestess or the class of the player is cultist, decide yes;
	if a random number between 1 and 5 is 1, decide yes;
	decide no.

To compute wrapped climax of (M - djinn) in (F - a fuckhole):
	say CondomStrain of M in F;
	if M is losing wrapper in F, compute condom failure of M in F;
	otherwise compute condom success of M in F.

To say CondomStrain of (M - djinn) in (F - a fuckhole):
	say "[speech style of M]'Yes... yes... [if F is asshole]I can feel it coming[otherwise]Your [cunt] is pleasing to me, mortal[end if]!'[roman type][line break][BigNameDesc of M] bellows as [he of M] ejaculates, filling the condom with wave after wave of fresh [semen]. You can feel it shifting inside of you, almost as if [his of M] little baby-making bastards were struggling to bust out of their flimsy latex prison. It stretches further and further as it struggles to contain the rest of [his of M] cum, rounding out as the commotion inside reaches its peak.[line break]".

To compute condom filling of (M - djinn):
	if water-bomb is off-stage:
		say "After [he of M] rolls it off of [his of M] [LongDickDesc of M] and ties the end, you and [NameDesc of M] both look at the massive cumfilled condom with a sense of awe. [BigNameDesc of M] grins.[line break][speech style of M]'Well I guess that's yours to keep as a trophy!'[roman type][line break][big he of M] delicately hands it to you. Perhaps you could use it as a weapon?";
		now water-bomb is carried by the player;
		now water-bomb is bland;
		now the cum-known of water-bomb is 1;
	otherwise:
		compute default condom filling of M.

To say CondomFailFlav of (M - djinn) in (F - asshole):
	say "It can't handle the strain! You feel it burst open inside of you, and a gush of warmth floods your [asshole], gurgling upwards into your bowls at an incredible pace. It's almost like you can feel [his of M] energetic swimmers moving around in your gut.".

To say CondomPieFlav of (M - djinn) in (F - a fuckhole):
	say "Miraculously, it seems to hold, and [NameDesc of M] laughs as [he of M] pulls out and carefully peels it off.[line break][speech style of M]'I am surprised your mortal condom could hold my seed!'[roman type][line break]".

To say CreampieFlav of (M - djinn) in (F - asshole):
	say "[speech style of M]'Yes... yes... I can feel it coming!'[roman type][line break][BigNameDesc of M] bellows as [he of M] ejaculates deep inside your [asshole]. Your jizz enema gurgles into your bowels at an incredible pace. It's almost like you can feel [his of M] little baby-making bastards swimming around energetically inside your gut.".

To decide if (M - djinn) is losing wrapper in (F - vagina):
	if the class of the player is priestess or the class of the player is cultist, decide yes;
	if a random number between 1 and 3 is 1, decide yes;
	decide no.

To compute post climax effect of (M - djinn) in (F - vagina):
	if M is unwrapped and the player is able to get pregnant:
		say "You immediately feel the [if the bbc addiction of the player > 4]superior virility of [his of M] nubian sperm[otherwise]magical sperm[end if] barrelling down your tubes and straight to your undefended egg[if inhuman pregnancy > 0]s[end if]. A strange tingle shoots through you from deep inside, kind of in your belly, almost, and you feel certain you're now pregnant with [his of M] child[if inhuman pregnancy > 0]ren[end if]![line break]";
		compute sudden pregnancy; [Allows a chance even when sudden pregnancy is disabled]
		if the pregnancy of the player is 0:
			now the pregnancy of the player is 1;
			now the father is M;
			check sudden pregnancy. [Ensures sudden pregnancy rather than normal when the option is enabled]

To say SuddenPregFlav of (M - djinn):
	say "[BigNameDesc of M] places one hand on your belly expectantly. You watch with [horror the semen addiction of the player] as your belly quickly balloons outwards over a couple of seconds until it has reached full-term pregnancy.";
	cutshow figure of djinn cutscene 2 for M;
	say "[speech style of M]'Excellent, [one of]it appears that we are compatible. Don't worry, this is completely normal, this instant gestation period often happens with Djinn. You'll give birth soon enough. Make sure you're here when you do[or]another perfect conception. See you soon[stopping].'[line break][variable custom style][if the semen addiction of the player < 5]Fuck fuck FUCK! [one of]I'm really pregnant with this asshole's magical demon spawn[or]How did I let this happen again[stopping]?![otherwise if the semen addiction of the player < 11]Well at least I won't be pregnant for long, I guess...[otherwise]Ooh, feeling so heavily pregnant feels so right...[end if][roman type][line break]".

To say CondomFailFlav of (M - djinn) in (F - vagina):
	say "It can't handle the strain! You feel it burst open inside you, and a gush of warmth floods your [vagina][if pregnancy fetish is 1] as your womb explodes with sensation, and [his of M] horde of eager swimmers rush straight for your fallopian tubes, filling every crevice and tunnel they can find![line break][otherwise].[line break][speech style of M]'Hahaha! Your mortal condom was no match for my divine sperm!'[roman type][line break][end if]".

To say CreampieFlav of (M - djinn) in (F - vagina):
	say "[speech style of M]'Yes... yes... [if pregnancy fetish is 1 and the pregnancy of the player is 0]take my seed, and carry my spawn, whore[otherwise]your [cunt] is pleasing to me, mortal[end if]!'[roman type][line break][BigNameDesc of M] ejaculates deep inside your [vagina][if pregnancy fetish is 1]. Your womb explodes with sensation, as you feel [his of M] swimmers rush straight for your fallopian tubes, filling every crevice and tunnel they can find[end if]!".

To compute labour to (M - djinn):
	if M is regional and M is alive:
		compute pregnancy clothing displacement;
		say "[PregFlav][if the father is in the location of the player]The [father][otherwise]The [father] appears almost as if on cue! [big he of M][end if] uses [his of M] powers to pull you into the air, and turn you upside down. You begin to feel a bit queasy as [if inhuman pregnancy > 0]one by one, eight small black babies push their way head-first out of your painfully gaping vagina. Each one[otherwise]a little black baby emerges upwards from your painfully gaping vagina, and is[end if] left hovering above your suspended body to take breath and begin to cry.[line break][speech style of M]'There there my little one[if inhuman pregnancy > 0]s[end if]. You're safe now.'[roman type][line break]With a click of [his of M] fingers, [NameDesc of M] sends [his of M] new charge[if inhuman pregnancy > 0]s[end if] up into the sky, presumably to their new home.[line break][speech style of M]'Good job, mortal, I may have to use your womb again in the future to further expand my clan.'[roman type][line break][big he of M] leaves you to recover from your ordeal.";
		if the father is in the location of the player:
			say "For some reason, you are filled with a sense of deep fulfilment. You feel great!";
			StrengthUp 1;
			DexUp 1;
			IntUp 1;
			bore M;
	otherwise if M is alive:
		Delay Labour.

To compute the dildo stuck taunting of (M - djinn):
	compute the default taunting of M.

To say PullAttempt of (M - djinn) at (K - a clothing):
	say "[BigNameDesc of M] uses a mystical force to pull at your [K]!".

To compute (M - djinn) destroying (K - a clothing):
	say "With a flick of two of [NameDesc of M][']s fingers, the [K] comes completely off! It's been entirely destroyed.";
	destroy K.

To compute (M - djinn) displacing (C - a clothing):
	say "With a flick of two fingers, [NameDesc of M] pulls the [if C is hobble-skirted]skirt up, exposing your crotch[otherwise if C is trousers]waistband down to your knees[otherwise]crotch section to one side[end if]!";
	displace C.

To compute (M - djinn) ripping (K - a clothing):
	say "With a flick of two fingers, [NameDesc of M] creates a tear in the fabric!";
	now K is crotch-ripped.

This is the djinn monster convinced rule:
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
			say "[BigNameDesc of current-monster] was about to ignore you, but it seems that your tongue piercing made your request extremely convincing!";
			now the chosen-orifice of current-monster is presented-orifice;
			rule succeeds;
	otherwise if presented-orifice is not nothing:
		say "[PresentRejectionFlav of current-monster]".

To say PresentAcceptanceFlav of (M - djinn):
	say "[BigNameDesc of M] laughs at your request.[line break][speech style of M]'Indeed, an excellent choice.'[roman type][line break]".

To say PresentRejectionFlav of (M - djinn):
	say "[BigNameDesc of M] laughs at your request.[line break][speech style of M]'Why would I care about the feelings of a mere mortal such as yourself?'[roman type][line break]".

Definition: djinn is willing to let go: decide no.

To say PresentFriendlyAcceptanceFlav of (M - djinn):
	say "[speech style of M]'Very well, I shall grant you the honour of worshipping my cock.'[roman type][line break]".

To say FriendlySexReleaseRefusalSpeech of (M - djinn):
	let F be a random body part penetrated by M;
	say "[speech style of M]'[one of]No no no, you don't stop until I say so.'[or]Do you think you are in charge here?!'[or]Why would I care about what you want? Your feelings are insignificant.'[in random order][roman type][line break]".

To say StrikingSuccessFlav of (M - djinn) on (B - a body part):
	say "A miniature lightning bolt strikes you [TargetName of B]. The powerful electric shock sizzles painfully against your skin!".

To compute (S - a spike bra) damaging (M - djinn):
	say "You see [NameDesc of M] flinch back in pain as [his of M] lightning bolt strikes your [printed name of a random spike bra worn by the player]. The attack was somehow reflected!";
	decrease the health of M by 3;

To say StrikingFailureFlav of (M - djinn) on (B - a body part):
	say "[BigNameDesc of M] fires a miniature lightning bolt in your direction, but you are moving too quickly. It misses!".

To say MonsterTripAnnounceFlav of (M - djinn):
	say "[BigNameDesc of M] uses a mystical force to try and pick you up off the ground!".

To say MonsterTrippedFlav of (M - djinn):
	say "You flail wildly as [he of M] succeeds in bringing your feet out from underneath you. You fall to the ground!".

To decide which number is the tripping max of (M - djinn): [Giving the djinn his own tripping max function since he doesn't use hair to trip the player.]
	if attack-type is 0 or attack-type is 1:
		if the trip hazard of the player <= 0, decide on 0;
		otherwise decide on 1; [if the player slapped or stood still they are not off-balance so tripping is always minimum likelihood]
	if the living belt of sturdiness is worn and the living belt of sturdiness is not cursed, decide on 0;
	let D be (the difficulty of M * 2) / 3;
	increase D by the trip hazard of the player;
	if the slipperiness of the location of the player > a random number between 1 and 5, say "The slipperiness of the floor is making it much more difficult to avoid falling!";
	if the player is ankle bound, increase D by 3;
	if attack-type is 2, now D is D / 4;
	if D < 1, decide on 1;
	decide on D.

This is the djinn punishes diaper rule:
	let M be current-monster;
	if the player is diaper focused:
		let D be a random worn diaper;
		let R be a random number between 1 and 4;
		if R > 1 and D is transformable:
			say "[BigNameDesc of M] points at your [ShortDesc of D], and a bolt of magic lightning erupts from [his of M] finger! Your [ShortDesc of D] starts to shimmer...";
			potentially transform D;
			if the transform-attempts of D > 0 and the transform-attempts of D < 4:
				say "[speech style of M]'Hmm, that's weird...'[roman type][line break][big he of M] doesn't seem satisfied.";
			otherwise:
				say "[speech style of M]'[if the transform-attempts of D >= 4]I give up.'[otherwise]Ha ha, that's much better, don't you think?'[roman type][line break]";
				satisfy M;
		otherwise:
			say "[BigNameDesc of M] points at your [ShortDesc of D], and a bolt of magic lightning erupts from [his of M] finger! You watch as a ball of [urine] appears in mid-air in front of you, floating like a bubble, before flattening into a golden stream which flies straight for you! It rushes up through the leg-holes of your [ShortDesc of D] and splatters against you!";
			PissSoak 10 on D;
			say "[speech style of M]'Looks like someone needs a change...'[roman type][line break]";
			satisfy M;
		rule succeeds.
The diaper punishment rule of djinn is usually the djinn punishes diaper rule.

To compute (M - djinn) wishing on (J - an accessory):
	say "You hear a splash from inside the well, and [NameDesc of M] appears in front of you, holding the [noun] in his hand.[line break][speech style of M]'I found your jewellery at the bottom of the well. I am bound by the law of the djinni to offer it to you, but if you accept, I am free to grant you a wish of MY choosing.'[roman type][line break]";
	if the player is bimbo consenting:
		say "[speech style of M]Granted![roman type][line break]";
		let R be a random number between 1 and 3;
		if R is 1 and the number of worn clothing > 0:
			let C be a random worn clothing;
			compute M transforming C;
			now C is temptation;
		otherwise if bukkake fetish is 1:
			say "[BigNameDesc of M] grins as you suddenly drop to your knees and wrap your hands around [his of M] [DickDesc of M]. You feel yourself beaming up at [him of M] as you begin to eagerly pump [his of M] [LongDickDesc of M], [if the player is gagged]emitting an involuntary (albeit muffled) moan[otherwise if the oral sex addiction of the player > 6]mouth lolling open automatically[otherwise]mouth lolling open involuntarily[end if] as long white ropes of [semen] explode from the tip and spray across your face. [BigNameDesc of M] nods as your hands fall from [his of M] softening member, and the [printed name of J] reappears in your hand.";
			try kneeling;
			CumFaceUp the semen load of M;
		otherwise:
			say "[BigNameDesc of M] grins as your hands immediately grasp [his of M] dangling [DickDesc of M] and begin jerking [him of M] off of their own volition. You suddenly find it impossible to look anywhere but directly into [his of M] eyes, [if the player is gagged]emitting an involuntary (albeit muffled) moan[otherwise]mouth opening all on its own to force you to make an incredibly slutty 'fuck-me' face[end if] as your hands eagerly pump [his of M] [LongDickDesc of M]. [big he of M] has a fast orgasm, groaning as you 'obediently' wring out [his of M] load onto the ground underneath you. [BigNameDesc of M] nods as your hands fall from [his of M] softening member, and the [printed name of J] reappears in your hand.";
			try kneeling;
			SemenPuddleUp the semen load of M;
		let P be a random off-stage plentiful accessory;
		now the accessory-colour of P is the accessory-colour of J;
		now P is held by the player;
	otherwise:
		say "[BigNameDesc of M] nods and disappears in a cloud of white smoke.".

Section 2 - Damage

To say CombatProvokedReaction of (M - djinn):
	say "[BigNameDesc of M] bellows with anger.[line break][speech style of M]'You dare challenge me to a duel? Do you not know who I am?!'[roman type][line break]".

To say DamageReactHealthy of (M - djinn):
	say "[BigNameDesc of M] takes the hit without flinching!".

To say DamageReactDamaged of (M - djinn):
	say "[BigNameDesc of M] takes the hit, struggling not to react!".

To say DamageReactTired of (M - djinn):
	say "[BigNameDesc of M] takes the hit, growling!".

To say DamageReactWeak of (M - djinn):
	say "The djinn grunts [he of M] takes the hit, eyeing the area around you.".

[If the player has the magic lamp, the djinn will be sucked toward it. The player can "act quickly" to wring some money out of him, try to dominate him, or just let him go. Or, they can let him get sucked into the lamp.]
Definition: djinn is banishable:
	let L be a random magic lamp;
	if L is held or L is in the location of djinn, decide yes;
	decide no.
Definition: djinn is pitiable:
	let L be a random magic lamp;
	if L is held or L is in the location of djinn, decide yes;
	decide no.
Definition: djinn is wenchy:[saves like 100 lines of code. Not really. (Really though.)]
	let L be a random magic lamp;
	if L is held or L is in the location of djinn:
		if the player is the donator, decide yes;
	decide no.

To say DefeatBrink of (M - djinn):
	let L be a random magic lamp;
	if L is held or L is in the location of M:[should always be true if this function triggers]
		say "[BigNameDesc of M] seems to be weakening rapidly, and [he of M] begins to take flight. [big he of M] shouts at you as [he of M] flees.[line break][speech style of M]'I'll be back, mortal! Hahaha! I'll always be-HUH?!'[roman type][line break]But wait! The [L] stirs, shooting out of your [if there is a worn bag of holding]bag[otherwise]hands[end if] and to the ground. The djinn is no longer soaring into the air, but sinking towards the lamp! You might be able to wring something out of [him of M] now that you've cut off [his of M] escape route!";
	otherwise:[shouldn't appear]
		say "[BigNameDesc of M] seems to be weakening rapidly, and [he of M] begins to take flight. [big he of M] shouts at you as [he of M] flees.[line break][speech style of M]'I'll be back, mortal! Hahaha! I'll always be back!'[roman type][line break]";

To say BanishDesc of (M - djinn):
	say "Let [him of M] get sucked into the lamp.".
To compute forced banishment of (M - djinn):
	let L be a random magic lamp;
	now L is in the location of the player;
	say "[line break][speech style of M]'No! Where did you get that? How did you know that a meagre oil lamp is the only device that can contain me?! AAAH!'[roman type][line break][BigNameDesc of M] screams as [he of M] sinks into the entrance of the lamp, shrinking and shrinking until [he of M] finally disappears.";
	compute banishment of M;
	now the wishes of L is 3;
	force inventory-focus redraw;
	say "You now have a [L]! You pick it back up.";
	compute autotaking L.

To say PityDesc of (M - djinn):
	say "Let [him of M] go free.".
To say PityOfferFlav of (M - djinn):
	say "You put your hand over the open spout of the lamp, stopping [NameDesc of M]'s descent.";
	if the player is able to speak, say "[variable custom style]'[one of]I don't know what just happened, but it looks like I saved you just now. You're thankful, right?'[or]I trust you will treat me with more respect from now on?'[or]If you promise not to do that again, we can still be friends...'[in random order][roman type][line break]".
To say PityOfferResponse of (M - djinn):
	if M is friendly, say "[big he of M] sighs.[speech style of M]'[one of]Fine. We will have a truce for now.'[or]Mercy. From a mortal. How humiliating.'[or]Stupid lamp. I made such an ungodly sound just now...'[in random order][roman type][line break][BigNameDesc of M] flies off with a dejected look on [his of M] face.";
	otherwise say "[big he of M] laughs heartily, shouting as [he of M] soars off into the sky.[speech style of M]'[one of]You wasted your only chance, mortal! I will return!'[or]Ha, mercy from a mortal! Ha! Haha! Bye!'[or]We are not friends mortal. I will return.'[in random order][roman type][line break]".

To say TaxDesc of (M - djinn):
	say "Demand an item in return for mercy.".
To say TaxReturnDismay of (M - djinn):
	let L be a random magic lamp;
	if L is held or L is in the location of M:
		say "You put your hand over the open spout of the lamp, smirking up at [NameDesc of M] as [he of M] once again takes flight.[line break][speech style of M]'[one of]Satisfied with such a trinket...I will be back, mortal. Mark my words!'[or]All for something so trivial...you will see me again, mortal! That is a promise!'[in random order][roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] seems to be weakening rapidly, and [he of M] begins to take flight. [big he of M] shouts at you as [he of M] flees.[speech style of M]'[one of]Congratulations on your victory! But I always come back, mortal! Always!'[or]Enjoy your small victory, mortal. I can never be fully defeated!'[in random order][roman type][line break]".
To say TaxReturnFail of (M - djinn):
	let L be a random magic lamp;
	if L is held or L is in the location of M:
		say "[line break][speech style of M]'I don't have anything! Please! Spare me!'[roman type][line break]You roll your eyes, putting your hand over the open spout of the lamp so [he of M] can once again take flight. You have a feeling you'll be seeing [him of M] again.";
	otherwise:
		say "[BigNameDesc of M] seems to be weakening rapidly, and [he of M] begins to take flight. [big he of M] shouts at you as [he of M] flees.[speech style of M]'[one of]I'll remember this, mortal! And I'll be even stronger next time! Hahaha!'[or]I'll be back, mortal! I can never be fully defeated!'[in random order][roman type][line break]".

[To say PenisFuckDesc of (M - djinn):
	say "Make [him of M] satisfy your [PenisFucker] in exchange for mercy.".

To say VaginaRideDesc of (M - a):
	say "Ride [him of M] with your [vagina] in exchange for freedom.".

To say AssRideDesc of (M - a demoness):
	say "Ride [him of M] with your [asshole] in exchange for freedom.".

To say PissFuckDesc of (M - a demoness):
	say "Give [him of M] a faceful of [urine] in exchange for freedom".]

[To compute automatic banishment of (M - djinn):
	say "[BigNameDesc of M] seems to be weakening rapidly, and [he of M] begins to take flight. [big he of M] shouts at you as [he of M] flees.[line break][speech style of M]'I'll be back, mortal! I can never be fully defeated. And the next time we meet, I'll be even stronger!'[roman type][line break]";
	let L be a random held magic lamp;
	if L is nothing, now L is a random magic lamp in the location of the player;
	if L is magic lamp:
		say "But wait! The [L] stirs, shooting out of your [if there is a worn bag of holding]bag[otherwise]hands[end if] and to the ground. The djinn is no longer soaring into the air, but sinking towards the lamp![line break][speech style of M]'No, what?! Where did you get that? How did you know that a meagre oil lamp is the only device that can contain me?! AAAH!'[roman type][line break][BigNameDesc of M] sinks into the entrance of the lamp, shrinking as [he of M] disappears. ";
		compute banishment of M;
		now the wishes of L is 3;
		force inventory-focus redraw;
		say "You now have a [L]! You pick it back up.";
		compute autotaking L;
	otherwise:
		say "You feel like you haven't seen the last of [him of M].";
		DifficultyUp M by 1;
		now the health of M is the maxhealth of M;
		bore M;
		regionally place M.]

Section 3 - DQ

Definition: djinn is willing to spank gently: decide no.
Definition: djinn is willing to spank: decide yes.
Definition: djinn is willing to punish untidiness: decide yes.

To decide which number is the spanking length of (M - djinn):
	decide on 4.

To decide which number is the spank strength of (M - djinn):
	decide on 5.

To say SpankingStartFlav of (M - djinn):
	say "[BigNameDesc of M] holds you still with some mystical force!".

To say SpankingAfterFlav of (M - djinn):
	say "After this [he of M] seems satisfied and folds both sets of arms while chuckling deeply.";
	calm M. [The djinni was unfriendly during the wished spanking and is now just friendly again.]

Definition: djinn is willing to confiscate: decide yes.

Definition: djinn (called M) is eager to confiscate: [An angry djinn will confiscate even at maximum health]
	if M is able to confiscate, decide yes;
	decide no.

djinn-mess is a diaper punishment. The priority of djinn-mess is 1.

Definition: djinn (called M) is eager to djinn mess:
	decide no.

Definition: djinn-mess (called P) is appropriate:
	if current-monster is djinn, decide yes;
	decide no.

To compute punishment of (P - djinn-mess):
	compute djinn messing of current-monster.

To say honey of (M - djinn):
	say "[child of M]".

Definition: djinn is willing to forcefeed: decide yes.
To compute forcefeed round (N - a number) of (M - a djinn):
	say "[one of]You gasp in surprise as [NameDesc of M][or][BigNameDesc of M][stopping] summons ";
	if diaper messing >= 3 and a random number between 1 and diaper lover > 1 and (the player is not thirsty or the stomach-food of the player < the stomach-liquid of the player):
		say "[one of]a block of chocolate[or]a large cube of watermelon[or]half a banana[or]a slice of pear[or]a digestive biscuit[in random order] out of thin air and makes it fly into your mouth. You are forced to chew and swallow it all down.";
		StomachFoodUp 1;
	otherwise:
		say "a floating, swirling ball of [if breast-milk-this-time is 1]warm breast milk[otherwise][one of]some kind of fruit juice[or]warm black tea[in random order][end if] out of thin air and makes it shoot into your mouth. You are forced to swallow it all down.";
		if breast-milk-this-time is 1, StomachMilkUp 2;
		otherwise StomachUp 2.

To say DQFeedingResistReactionFlav of (M - a djinn):
	say "[speech style of M]'[one of]What, don't like it? Should have wished for mother's teat... I favour nutrition over taste.'[or]If you don't like the flavour now you REALLY won't appreciate what it's going to make you do later!'[or]Oh, I'm paralysed at the thought of you breaking free... of an almighty Djinn. You do have the decision making skills of an infant, don't you?'[then at random][roman type][line break]".

Section 4 - Dominant Sex

To say DominanceFailure of (M - djinn):
	say "You wait until the last moment before closing the lamp, and demand a wish as a reward for saving [him of M]. [big he of M] agrees, cocking [his of M] eyebrow as you consider how to phrase it.";
	if the player is not able to speak:
		say "You try using gestures to indicate what you want, only for [him of M] to solemnly shake [his of M] head.";
		now player-fucker is face;
	otherwise if player-fucker is penis:
		say "[line break][variable custom style]'See this [sexual-player-penis]? I want it in a submissive slut, and they've gotta be my type.'[roman type][line break]";[the djinn becomes the submissive slut]
	otherwise if player-fucker is belly:
		say "[line break][variable custom style]'I want to see what you look like with [urine] on your face.'[roman type][line break]";
	otherwise:
		say "[line break][variable custom style]'I wish for a ride of your [DickDesc of M], no wait, give me THREE wishes.'[roman type][line break]"; [player gets him in bed, but is forced to use wishes to actually make things work. Stuff like "oh he can't get hard", or oh he prematurely ejaculated., etc.]

To decide which number is the mental dominance roll for (M - djinn):
	let S be 1;
	if the player is not able to speak, now S is 0; [You must be able to speak to dominate the djinn]
	if debugmode > 0, say "[input style]Djinn speech check...[if S is 0]AUTOMATIC FAILURE.[otherwise]PASSED.[end if][line break]";
	if S is 0:
		decide on -99;
	let D be the dominance of the player;
	let DD be a random number between (D / 2) and (D * 2);
	if debuginfo > 0, say "[input style]Calculating player's dominance. Raw value based on remaining energy [if fuckskill is 0]and submissiveness [end if]= [D][line break]RNG([D]/2[bracket][D / 2][close bracket] ~ [D]*2[bracket][D * 2][close bracket]) = [DD][roman type][line break]";
	decide on DD.

To compute failed dominance punishment of (M - djinn):
	if player-fucker is face:
		say "[line break][speech style of M]'Alright, mortal, I'm going to level with you. When I grant a wish I'm supposed to twist your words and humiliate you, but how can I do that if you don't give me anything to work with? Let's not waste each other's time, alright?'[roman type][line break][BigNameDesc of M] loses interest.";
		moderateHumiliate;
		calm M;
		Bore M;
	if player-fucker is penis:
		say "[line break][speech style of M]'Hmm... YOUR type... Very well, mortal. Granted!'[roman type][line break][BigNameDesc of M] waves [his of M] hands, and a cloud of smoke envelops you!";
		failed dominance penis punish of M;
		Bore M;
	otherwise if player-fucker is belly:
		say "[line break][speech style of M]'What?! That's disgusting, but I'm bound by the laws of the djinni... Fine, mortal. Granted!'[roman type][line break][BigNameDesc of M] waves [his of M] hands, and a cloud of smoke appears over [his of M] face. Nothing seems to happen.[line break][variable custom style]'Um, what about my wish?'[roman type][line break][line break][speech style of M]'I granted it. Of course, I only showed it for a fraction of a second. Anything more would be too embarrassing.'[roman type][line break][big he of M] seems to lose interest.";
		slightDignify; [he technically did do it!]
		Bore M;
	otherwise:
		say "[line break][speech style of M]'Hmm... and they have to be GIVEN to you, that's exacting... very well, mortal. Granted!'[roman type][line break][BigNameDesc of M] waves [his of M] hands, and a cloud of smoke envelops you! A moment later, you find yourself on your knees in front of [him of M], with [his of M] rock hard [DickDesc of M] inches from your face.[line break][speech style of M]'I don't understand why they had to be FROM me, but I suppose I won't look a gift whore in the mouth.'[roman type][line break]";
		let wishes be 3;
		let R1 be a random number between 1 and 5;
		let R2 be a random number between 1 and 5;
		while R2 is R1:
			now R2 is a random number between 1 and 5;
		let R3 be a random number between 1 and 5;
		while R3 is R1 or R3 is R2:
			now R3 is a random number between 1 and 5;
		let R be 0;
		while wishes > 0:
			if wishes is 3, now R is R1;
			if wishes is 2, now R is R2;
			if wishes is 1, now R is R3;
			if R is 1:
				say "[line break][speech style of M]'I wish you had bigger boobs!'[roman type][line break]Your breasts jiggle as they try to grow!";
				BustUp 1;
			if R is 2:
				say "[line break][speech style of M]'I wish you had a thicker butt!'[roman type][line break]Your asscheeks jiggle as they try to grow!";
				FatAssUp 1;
			if R is 3:
				let C be a random worn tearable clothing;
				say "[line break][speech style of M]'I wish I could see more of you!'[roman type][line break]Your body shimmers as it tries rejecting its clothing!";
				if C is clothing:
					say "Your [printed name of C] disappears and reappears on the ground!";
					now C is in the location of the player;
			if R is 4:
				say "[line break][speech style of M]'I wish you had bigger lips!'[roman type][line break]Your lips tingle as they try to grow!";
				LipsUp 1;
			if R is 5:
				say "[line break][speech style of M]'I wish you were wearing makeup!'[roman type][line break]Glitter gathers around your face!";
				FaceUp 1;
			decrease wishes by 1;
		Bore M.

[The djinn steals your dick and then uses it to fuck you]
To failed dominance penis punish of (M - djinn):
	let S be a random worn dildo-usage strapon-panties;
	let F be asshole;
	if the player is possessing a vagina, now F is vagina;
	if tg fetish is 1 and F is asshole, now F is vagina;
	let O be the size of penis - the openness of F;
	say "A moment later, you find yourself lying in a huge bed with beautiful canopy curtains and decadently soft silk sheets. You sit up, and see that not only are you completely naked in a stranger's bed, [if the player is female]your [printed name of S] has completely disappeared[otherwise if tg fetish is 1]your penis has completely disappeared, leaving a brand new [vagina] in its place[otherwise]your [SexDesc of penis] has completely disappeared, leaving a strange patch of glittering darkness in its place[end if]. Signs of movement in your peripheral vision leave you with no time to feel shocked, and you look over just as a dark-skinned [man of M] with the perfectly sculpted [if M is presenting as male]chest, abs, and jawline of a god[otherwise]breasts, hips and musculature of a goddess[end if] parts the bed curtains. Your breath is temporarily stolen away by [his of M] gorgeous figure, but you're brought back to your senses by a single flaw, right there [if full-lady fetish is 1 or S is worn]hanging from a harness between [his of M] legs[otherwise]between[end if] [his of M] legs.[line break][speech style of M]'A submissive slut, just your type. Now, about the other part of your wish...'[roman type][line break]The [man of M] gives you a bewitching smile, climbing into bed with you and easily shrugging off your resistance as [he of M] [if F is vagina]spreads your legs.[otherwise]flips you over and spreads your asscheeks.[end if]";
	if sexual-penis-length > 8:
		say "[line break][speech style of M]'Hm. It's a little big, but I suppose that's not my problem.'[roman type][line break]The [man of M] muses, climbing into bed with you and easily shrugging off your resistance as [he of M] lines up *your problem* [if F is vagina]between your legs[otherwise]between your cheeks[end if]. Now that you're on the business end, you can't help but appreciate how massive your [SexDesc of penis] looks, and [if O < 0]as it slides into[otherwise if O < 4]as it slowly enters[otherwise if O < 8]as it slowly forces its way into[otherwise]as it slowly forces its way into[end if] your [variable F], you get to appreciate how massive it feels as well. It completely swallows up all the space inside you, and the [man of M] takes care to maximize that feeling, [his of M] beautiful muscles rippling as [he of M] fucks you with slow, deep thrusts. You belt out long, heavy moans, your whole body shivering as your nerve endings struggle to parse the incredibly intense, yet gentle fucking. Shame wells up from your core as you realise how painful this might have been if [italic type]you[roman type] were doing the fucking, and as your back arches and your toes curl, you find yourself thinking you deserve to have a much smaller [sexual-player-penis].";
		if F is vagina, vaginally orgasm shamefully;
		otherwise anally orgasm shamefully;
		say "The [man of M] slams '[his of M]' [sexual-player-penis] home in the exact moment that you cum, emitting a thoroughly perfect groan as [he of M] floods your [variable F] with a huge load. [big he of M] chuckles as [he of M] pulls out, waving [his of M] hands as smoke closes in around you once again.";
	otherwise if sexual-penis-length > 5:
		say "[line break][speech style of M]'The size is good, but nothing feels better than *your own tool*, wouldn't you agree?'[roman type][line break]The [man of M] muses, climbing into bed with you and easily shrugging off your resistance as [he of M] lines up [italic type]your tool[roman type] [if F is vagina]between your legs[otherwise]between your cheeks[end if]. [if O < -3]You find yourself wishing you were a little bigger as you're penetrated[otherwise if O < 0]You can't help but sigh as you're slowly penetrated by[otherwise if O < 3]You can't stifle a sigh as you slowly stretch to accommodate[otherwise]You grit your teeth as you slowly stretch to accommodate[end if] your own [SexDesc of penis], and the flawless [man of M] on top of you slowly begins to thrust. Even if the [sexual-player-penis] doesn't belong to [him of M], [his of M] technique is as perfect as [his of M] body, and every single thrust feels as though it were crafted by heaven. You moan desperately as you try to hold on, hoping against hope that [he of M] won't actually force you to cum from your own [sexual-player-penis], but it's no use. You clench your fists and curl your toes as you go over the edge.";
		if F is vagina, vaginally orgasm shamefully;
		otherwise anally orgasm shamefully;
		say "The [man of M] slams '[his of M]' [sexual-player-penis] home in the exact moment that you cum, emitting a thoroughly perfect groan as [he of M] fills your [variable F] with a big load. [big he of M] chuckles as [he of M] pulls out, waving [his of M] hands as smoke closes in around you once again.";
	otherwise if sexual-penis-length > 3:
		say "[line break][speech style of M]'Hm. It's a bit small, but that isn't an issue for me, is it?'[roman type][line break]The [man of M] muses, climbing into bed with you and easily shrugging off your resistance as [he of M] lines up *your issue* [if F is vagina]between your legs[otherwise]between your cheeks[end if]. [if O < -6]You can't help wishing you were a little bigger as you are penetrated[otherwise if O < -3]You find yourself wishing you were a little bigger as you are penetrated[otherwise if O < 0]You can't help but sigh as you are slowly penetrated by[otherwise]You can't stifle a sigh as you slowly stretch to accommodate[end if] your own [SexDesc of penis], and the flawless [man of M] on top of you slowly begins to thrust. Even if the [sexual-player-penis] doesn't belong to [him of M], [his of M] technique is as perfect as [his of M] body, and every single thrust feels as though it were crafted by heaven. You moan desperately as you try to hold on, hoping against hope that [he of M] won't actually force you to cum from your own [sexual-player-penis], but it's no use. You clench your fists and curl your toes as you go over the edge.";
		if F is vagina, vaginally orgasm shamefully;
		otherwise anally orgasm shamefully;
		say "The [man of M] slams '[his of M]' [sexual-player-penis] home in the exact moment that you cum, emitting a thoroughly perfect groan as [he of M] shoots several spurts of [semen] into your [variable F]. [big he of M] chuckles as [he of M] pulls out, waving [his of M] hands as smoke closes in around you once again.";
	otherwise:
		say "[line break][speech style of M]'I can't remember a time when I've been this excited. Is this how you feel all the time?'[roman type][line break][BigNameDesc of M] emits a shuddering sigh as [he of M] pushes [his of M] [sexual-player-penis] into your [if the player is possessing a vagina or tg fetish is 1][vagina][otherwise][asshole][end if]. Less than a second later, [big he of M] freezes, and you feel a faint surge of warmth inside you.[line break][second custom style]'...'[roman type][line break][speech style of M]'...lets call this a draw.'[roman type][line break]Since it was your [sexual-player-penis], the embarrassment written all over [his of M] face is completely mutual, and you avoid eye contact with each other as the smoke closes in around you once again.";
	if the player is male and tg fetish is 1:[with tg fetish, the punishment is smaller, but has the potential to be bigger]
		if the player is getting unlucky and (tg fetish >= 1 or (the size of penis is min penis size and tg fetish is 1)):
			say "You find yourself back in [the location of the player], but your [player-penis] is still nowhere to be seen! You reach down to feel yourself and discover that the [vagina] you had during your [']wish['] is still there (thankfully with its hymen intact.)";
			say "You gape at the unexpected change, head shaking slowly from side to side in disbelief, trying to process what your eyes are telling you. Your hands start moving towards the place where you [italic type]used to[roman type] have a proud penis, but you falter to a stop, not quite willing to touch those plump-looking lips. [italic type]Virginal[roman type] lips. You swallow in shock."; [###Selkie: I didn't try hard to find the test for your hands bound so you couldn't reach forward]
			SexChange the player;
		otherwise:
			say "You find yourself back in [the location of the player], your [SexDesc of penis] back where it belongs.";
			PenisDown 1;
	otherwise:
		say "You find yourself back in [the location of the player], [semen] leaking out of your [if the player is possessing a vagina][vagina][otherwise][asshole][end if] and your [SexDesc of penis] back where it belongs.";
		now M is penetrating F;
		ruin F;
		now M is not penetrating F;
		if the player is possessing a vagina, PussyFill the semen load of the player;
		otherwise AssFill the semen load of the player;
		if sexual-penis-length > 3:
			if the player is possessing a vagina, FuckCount;
			otherwise AnalCount;
	Bore M.[he already fucked you, so he doesn't do it again]

[The djinn becomes the submissive slut]
To penetration dominate (M - djinn):
	say "You wait until the last moment before closing the lamp, and demand a wish as a reward for saving [him of M]. [big he of M] agrees, cocking [his of M] eyebrow as you consider how to phrase it.[line break][variable custom style]'See this [sexual-player-penis]? I want it in a submissive slut, and they've gotta be my type.'[roman type][line break][line break][speech style of M]'Hmm... YOUR type... Very well, mortal. I will grant your wish!'[roman type][line break][BigNameDesc of M] waves [his of M] hands, and a cloud of smoke envelops you! A moment later, you find yourself standing in front of a huge bed with gorgeous canopy curtains. You push the curtains aside to reveal a naked [man of M] with gorgeous brown skin, impossibly soft lips, and a perfectly shaped ass, [his of M] eyes darting around frantically as if struggling to take in [his of M] surroundings. [big his of M] eyes widen as [he of M] notices you, and an adorable crease forms between [his of M] eyebrows as you climb onto the bed and [if M is presenting as female]spread her legs.[otherwise]flip [him of M] over.[end if]";
	if sexual-penis-length > 8:
		say "[line break][speech style of M]'I-it backfired?! This is bad! This mortal is going to destroy me...'[roman type][line break][BigNameDesc of M] grits [his of M] teeth, [his of M] eyes rolling back in [his of M] head as you slide in your [SexDesc of penis] and begin to fuck [him of M]. [big his of M] [HoleDesc of M] feels just as perfect as it looks, its inner contours seemingly moulded to hug your [SexShaft] in just the right way. Every movement you make feels even better than the last, and no matter how you angle your thrusts, your body doesn't stop begging you to cum right away. [big he of M] isn't much better, [his of M] [if M is presenting as female]back arching and [his of M] chest heaving[otherwise][DickDesc of M] drooling precum[end if] as [he of M] belts out desperate moans. You force yourself to hold on just long enough to push [him of M] to the edge, forcing [him of M] to [if M is presenting as female]douse the sheets with girlcum[otherwise]shoot a squiggly white line across [his of M] belly[end if] before finally losing control and flooding [his of M] [HoleDesc of M] with [semen].";
		orgasm;
		orgasm M;
		strongDignify;
		say AfterDominationComment 0 of M;
	otherwise if sexual-penis-length > 3:
		say "[line break][speech style of M]'It backfired? B-but, how could I be tempted by a mere mortal?!'[roman type][line break][BigNameDesc of M] sighs as you slide in your [SexDesc of penis] and begin to fuck [him of M]. [big his of M] [HoleDesc of M] feels just as perfect as it looks, its inner contours seemingly moulded to hug your [SexShaft] in just the right way. Every movement you make feels even better than the last, and no matter how you angle your thrusts, your body doesn't stop begging you to cum right away. It seems to affect [him of M] a little as well, [his of M] [if M is presenting as female]fingers teasing [his of M] hard nipples[otherwise]hard [DickDesc of M] bobbing[end if] as horny moans bubble out of [his of M] throat. You think you might be able to push [him of M] over the edge if you had just a bit more stamina, but you don't, and after struggling to hold on for a few more seconds, you finally lose control and flood [his of M] [HoleDesc of M] with [semen].";
		orgasm;
		moderateDignify;
		say AfterDominationComment 0 of M;
	otherwise:
		say "[line break][speech style of M]'It backfired... I didn't really want to wear that tiny thing anyway.'[roman type][line break][BigNameDesc of M] doesn't say anything more as you slip your [SexDesc of penis] into [his of M] [HoleDesc of M]. [big his of M] inner passage is just as perfect as [his of M] appearance, flawlessly combining warmth, tightness and just a hint of natural lubrication that seems tailor made for your [SexShaft]. You don't have the stamina to handle such a perfect hole for more than a few seconds, and emit a feminine groan as you lose control and fill [him of M] with your [load].";
		orgasm;
		now player-fucking is DOMINANT-NEUTRAL;
		slightDignify;
		say AfterDominationComment 1 of M;
	if M is presenting as female, FuckGet;
	otherwise AnalGet.

To watersports dominate (M - djinn):
	say "You wait until the last moment before closing the lamp, and demand a wish as a reward for saving [him of M]. [big he of M] agrees, cocking [his of M] eyebrow as you consider how to phrase it.[line break][variable custom style]'I want to see what you look like with urine on your face.'[roman type][line break][line break][speech style of M]'What?! That's disgusting! I refuse to grant such a wish! W-wait, I didn't mean that! I'll grant-'[roman type][line break][BigNameDesc of M] yelps as both of you are enveloped by a cloud of pink smoke. A moment later, you find yourself standing in front of an ordinary looking bathroom stall. You push the door open to reveal a naked [man of M] on [his of M] knees, with a metal ring holding [his of M] mouth open and a porcelain toilet seat around [his of M] neck. You look at the graffiti written above [his of M] head.[line break][italic type]Djinni lawbreaker. Sentence: Urinal for mortals.[roman type][line break]The [man of M], apparently [FuckerDesc of M], looks up at you with a dejected look on [his of M] face. [big he of M]'s so pitiful you almost don't want to piss in [his of M] face. Almost. You walk up to [him of M] [if there is bottom level protection clothing]pulling aside your [printed name of random bottom level protection clothing] as you aim a[otherwise]aiming a[end if] stream of [urine] directly into [his of M] mouth.";
	FavourDown M;
	severeDignify;
	now the bladder of the player is 0;
	SportsGet;
	say AfterDominationComment 2 of M.

To decide which number is the dominationtype of (M - djinn) using (F - a fuckhole):
	decide on FUCK-RIDE.[the djinn can't be made to wear a condom beforehand]

To ride dominate (M - djinn):
	let F be player-fucker;
	say "You wait until the last moment before closing the lamp, and demand a wish as a reward for saving [him of M]. [big he of M] agrees, cocking [his of M] eyebrow as you consider how to phrase it.[line break][variable custom style]'I wish for a ride of your [DickDesc of M], no wait, give me THREE wishes.'[roman type][line break][line break][speech style of M]'Hmm... granted, but you've already used your first wish, and you cannot wish for more wishes.'[roman type][line break][BigNameDesc of M] waves [his of M] hands, and a cloud of smoke envelops you! A moment later, you find yourself in bed with a tall, dark-skinned [man of M] with the perfectly sculpted body of an Olympian [if M is presenting as male]god. [otherwise]goddess. [end if]You throw [him of M] a playful wink as [he of M] pulls you into [his of M] lap, reaching for [his of M] [DickDesc of M]... only to realise you're wearing a straitjacket![line break][variable custom style]'What the hell?! I never wished for this!'[roman type][line break][BigNameDesc of M] blinks.[line break][speech style of M]'Well, if you didn't want it, you should have mentioned it. How was I supposed to know?'[roman type][line break][line break][variable custom style]'UGH, then I wish I was naked.'[line break][line break][speech style of M]'Granted!'[roman type][line break]The straitjacket disappears in a puff of smoke, leaving you completely naked. You glare at [him of M] as you reach for [his of M] cock once again and begin to stroke. A moment passes.[line break][variable custom style]'Will you please get hard already?'[line break][line break][speech style of M]'If that is your wish.'[roman type][line break]Do you want to use your wish? It could save you a lot of trouble...";
	if the player is consenting:
		now player-fucking is DOMINANT-NEUTRAL;
		say "[line break][variable custom style]'I wish your cock was hard.'[line break][line break][speech style of M]'Granted!'[roman type][line break]A puff of smoke later, [his of M] [DickDesc of M] surges to full hardness, twitching gently as you guide it into your needy [variable F]. ";
		now M is penetrating F;
		ruin F;
		say "It definitely stings that you wasted your final wish on something like this, but that feeling slowly ebbs away as you begin to ride [him of M]. However, it seems your wish was a little too effective, and all too soon you feel [his of M] shaft starting to throb. Do you want to stop? You'll also lose your chance to cum.";
		if the player is reverse bimbo consenting:[Yes, stop!]
			say "You climb off [him of M] before [he of M] can finish inside you.";
			slightDignify;
			say AfterDominationComment 3 of M;
		otherwise:[No, keep going!]
			say "You speed up, knowing you've fallen victim to yet another trick as [FuckerDesc of M] grabs your hips. [big he of M] groans as [his of M] [DickDesc of M] explodes, throbbing powerfully as it fills your [variable F] with wave after wave of warmth. [if the semen addiction of the player < 6]The feeling of [his of M] [semen] moving around inside you is more than enough to make you regret your decision, but it's too late to stop now. You force yourself to power through, enduring in silence until you finally go[otherwise if the semen addiction of the player < 14]The feeling of [his of M] [semen] moving around inside you is more arousing than it has any right to be, and you let out a breathless moan as you go[otherwise]The feeling of [his of M] [semen] moving around inside you is just what you need to get there, and you emit a shuddering moan as you go right[end if] over the edge. An intense orgasm washes over your body as you [if the player is possessing a penis]douse the bed with your [load], [otherwise if the player is possessing a vagina]douse the bed with your juices, [otherwise]arch your back, [end if] and [FuckerDesc of M]'s softening [DickDesc of M] slowly slips out of you.";
			orgasm M;
			orgasm;
			moderateDignify;
			if F is asshole, AssFill the semen load of M;
			otherwise PussyFill the semen load of M;
			say AfterDominationComment 4 of M;
	otherwise:
		say "[line break][variable custom style]I'm going to have to try something else...'[roman type][line break]'Something else' turns out to be suckling [his of M] [if full-lady fetish is 1]celestial balls, [otherwise]balls, [end if]which is too degrading to be worth it, even if it's the only thing that works. You do your best to swallow your shame as you climb on top of [him of M] and guide [his of M] [DickDesc of M] into your [variable F]. ";
		now M is penetrating F;
		ruin F;
		say "The humiliation slowly ebbs away as you begin to ride [him of M], finally turning your attention to your own pleasure. However, it seems you went too far in more ways than one, and all too soon your partner's shaft begins to twitch and throb inside you. [big his of M] strong hands are around your waist before you have a chance to consider stopping, and one look at [his of M] face tells you [he of M] won't let you avoid a creampie unless you use up your last wish.";
		let R be the semi-dominance roll for M;
		if R < 0:[You give up]
			if debugmode > 0, say "[bold type]FAILED[roman type][line break]";
			say "[line break][variable custom style]'... You win. I wish you were wearing a condom.'[line break][line break][speech style of M]'Granted!'[roman type][line break]A layer of latex materialises around [his of M] shaft in the nick of time, immediately filling with several bursts of warmth. [if the semen addiction of the player < 6]The feeling of the slimy bulge moving around inside of you is more than enough to make you regret your wish, but it's better than the alternative. You force yourself to speed up, knowing you have to finish before [he of M] starts to go soft. It's tough, but you just barely manage, emitting a frustrated moan as you go[otherwise if the semen addiction of the player < 14]The feeling of that slimy bulge moving around inside of you is more arousing than it has any right to be, and for a moment it makes you regret your wish. You speed up so you can cum before [he of M] starts going soft, moaning breathlessly as you go[otherwise]Knowing you were so close to taking [his of M] load inside of you is too much for you to bear, and you emit a shuddering moan as you go right[end if] over the edge. An intense, but unsatisfying orgasm washes over your body as you [if the player is possessing a penis]douse the bed with your [load], [otherwise if the player is possessing a vagina]douse the bed with your juices, [otherwise]arch your back, [end if] and [FuckerDesc of M]'s [DickDesc of M] slips out of you as you roll off [him of M].";
			moderateHumiliate;
			now player-fucking is DOMINANT-SHAMEFUL;
			stimulate F from M;
			say AfterDominationComment 4 of M;
		otherwise:
			if debugmode > 0, say "[bold type]PASSED[roman type][line break]";
			say "[line break][variable custom style]I don't care if I get creampied! [big he of M] isn't getting [his of M] way![roman type][line break]You look [him of M] in the eye, not even bothering to fight [his of M] grip as you speed up. [BigFuckerDesc of M] answers your look with a mighty groan, [his of M] gorgeous abs clenching as [his of M] [DickDesc of M] explodes, filling your [variable F] with warmth. [if the semen addiction of the player < 6]The feeling of [his of M] [semen] moving around inside you is more than enough to make you have second thoughts about your wish, but you don't stop. A triumphant moan escapes your lips as your[otherwise if the semen addiction of the player < 14]The feeling of [his of M] [semen] moving around inside you is more arousing than it has any right to be, and you let out a breathless moan as your[otherwise]The feeling of [his of M] [semen] moving around inside you is just what you need to get there, and you emit a shuddering moan as your[end if] [if F is asshole and the player is sexed male]prostate tightens up. [otherwise]muscles clamp down around [his of M] shaft. [end if]An intense orgasm crashes over your body as you [if the player is possessing a penis]douse the bed with your [load], [otherwise if the player is possessing a vagina]douse the bed with your juices [otherwise]arch your back, [end if] and falling forward onto your partner's perfect chest as you contemplate the best way to use your wish.";
			orgasm M;
			orgasm;
			strongDignify;
			if F is asshole, AssFill the semen load of M;
			otherwise PussyFill the semen load of M;
			now player-fucking is DOMINANT-DOMINANT;
			say AfterDominationComment 5 of M;
	if F is asshole, AnalCount;
	otherwise FuckCount.

To say AfterDominationComment (N - a number) of (M - djinn):
	if N is 0:
		say "[speech style of M]'*Huff* *Huff*[one of]You were lucky this time, mortal.'[or]This is the last time you will be so lucky, mortal.'[or]You won't be this lucky forever, mortal.'[in random order][roman type][line break][BigNameDesc of M] rolls over, and smoke closes in around you once again. You find yourself back in [the location of the player].";
	otherwise if N is 1:
		say "[speech style of M]'[one of]I went easy on you this time, mortal.'[or]Remember this well, mortal. You were very lucky this time.'[or]You have good luck, mortal. I will take care of that in our next meeting.'[in random order][roman type][line break][BigNameDesc of M] snaps [his of M] fingers, and smoke closes in around you once again. You find yourself back in [the location of the player].";
	otherwise if N is 2:
		say "[BigNameDesc of M] doesn't say anything after you're finished, and simply staring up at you as smoke closes in around you once again, and you find yourself back in [the location of the player].";
		say "[speech style of M]'[one of]And after all that effort to cheat... Ahem, I swear you'll one day regret this!'[or]I can't believe I actually... Ahem, I promise you will regret this.'[or]I was sure I was going to... Ahem, you will one day regret this. I promise you.'[in random order][roman type][line break]";
	otherwise if N is 3:
		say "[speech style of M]'[one of]I cannot fault your choice.'[or]A fair decision, mortal.'[or]I might have done the same.'[in random order][roman type][line break][BigNameDesc of M] nods knowingly, and smoke closes in around you once again. You find yourself back in [the location of the player].";
	otherwise if N is 4:
		say "[speech style of M]'[one of]In the future, you should be satisfied with just one wish.'[or]Next time, settle for one wish.'[or]Stick with one wish next time, mortal.'[in random order][roman type][line break][BigNameDesc of M] snaps [his of M] fingers, and smoke closes in around you once again. You find yourself back in [the location of the player].";
	otherwise:
		let F be player-fucker;
		say "[speech style of M]'Very well mortal, you have earned your wish. However, you should know that in this form, my power is limited.'[roman type][line break]";
		reset multiple choice questions;
		set next numerical response to "wish for calm";
		set next numerical response to "wish for cleanup";
		set next numerical response to "wish for friendship";
		set next numerical response to "wish for tightness";
		if the player is possessing a penis, set next numerical response to "wish for a bigger dick";
		compute multiple choice question;
		let CNR be the chosen numerical response;
		if the printed name of CNR is "wish for relief":
			say "[BigNameDesc of M] nods, waving [his of M] arms at your body! You feel a lot better.";
			now the arousal of the player is 0;
			now the soreness of F is 0;
		otherwise if the printed name of CNR is "wish for cleanup":
			let F be player-fucker;
			say "[BigNameDesc of M] nods, waving [his of M] arms at your body! Your [variable F] feels cleaner!";
			if F is vagina, now the semen volume of F is 0;
			otherwise now the semen volume of belly is 0;
		otherwise if the printed name of CNR is "wish for tightness":
			say "[BigNameDesc of M] nods, waving [his of M] arms at your body! [if the openness of F > 1]Your [variable F] feels tighter.[otherwise]Nothing seems to happen.[end if]";
			if the openness of F > 1, decrease the openness of F by 1;
		otherwise if the printed name of CNR is "wish for a bigger dick":
			say "[BigNameDesc of M] nods, waving [his of M] arms at your body! [if the size of penis < 10]Your [player-penis] grows longer![otherwise]Nothing seems to happen.[end if]";
			PenisUp 1;
		otherwise:
			say "[BigNameDesc of M] rolls [his of M] eyes.";
			if M is unfriendly, calm M;
			otherwise FavourUp M;
		say "Smoke closes in around you once again, and you find yourself back in [the location of the player].".

To say DominationEscapeFlav of (M - djinn):
	say "[BigNameDesc of M] is nowhere to be found.";

Part 6 - Conversation

To say RewardFlav of (M - djinn) for (T - a thing):
	say "[speech style of M]'Behold.'[roman type][line break][BigNameDesc of M] summons a [T] on the ground in front of you.".

To say OfferFriendshipFlav of (M - djinn):
	say "[speech style of M][if M is ally]'It has been surprisingly fun to be a part of your insignificant story[otherwise if M is buddy]'My powers impress you. I can tell[otherwise]'Fear my unlimited cosmic powers[end if].'[roman type][line break]".

Section 1 - Greeting

To say FirstResponse of (M - djinn):
	say "[speech style of M]'Greetings, puny one. I'm impressed by your bravery, daring to approach an impressive entity such as myself.'[roman type][line break]".

To say RepeatResponse of (M - djinn):
	if M is unfriendly:
		say "[speech style of M]'[one of]Hmm, strange decision to show your face here again.'[or]Well if it isn't my favourite morsel... I mean mortal.'[or]Ah, my human plaything. Excellent!'[at random][roman type][line break]";
	otherwise if the player is feeling submissive:
		say "[speech style of M]'[one of]Do I not scare you, little one?'[or]Aren't you afraid of me? I would be.'[or]I see the fear in your eyes.'[or][if the player is prone]Hm. Good manners. Most manners must be taught to kneel before me.'[otherwise]Hm. That look of fear in your eyes. Have you realised the danger in looking me in the eye, mortal?'[end if][at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Do I not scare you, little one?'[or]Aren't you afraid of me? I would be.'[or]You are not afraid of me? Strange.'[at random][roman type][line break]".

To say SubmissiveResponse of (M - djinn):
	say "[speech style of M]'[if M is buddy]You are a unique one, daring to face me again considering our... history.'[otherwise]Why do you not fear me, young one? You are quite the conundrum.'[end if][roman type][line break]".

To say InvitationAccepted of (M - djinn) with (N - a monster):
	say "[speech style of M]'Normally, this would be beneath me, but...'[roman type][line break]".

To say InvitationRejected of (M - djinn) with (N - a monster):
	say "[speech style of M]'Maybe later. I'm not in the mood right now.'[roman type][line break]".

To say AssistanceRejected of (M - djinn) with (N - a monster):
	say "[speech style of M]'Remember, I do not care about you. You are not important to me. Why would I help you?'[roman type][line break]".

To say UnAnnoyedResponse of (M - djinn):
	say "[speech style of M]'[one of]Yes! Now, you understand!'[or]Yes, your mind is in the right place!'[at random][roman type]";

To say MildAnnoyedResponse of (M - djinn):
	say "[speech style of M]'[one of]Do you never stop talking?!'[or]Your job is to serve, not talk.'[at random][roman type]".

To say TauntRejected of (M - djinn):
	say "[speech style of M]'Haha. Very interesting!'[roman type][line break][BigNameDesc of M] seems to be putting even more effort into fighting you.".

To say PleadRejected of (M - djinn):
	say "[speech style of M]'Quiet, [please].'[roman type][line break]".

Section 2 - Questioning

To compute teaching of (M - djinn):
	say "[speech style of M]'There's another entity lurking around here that grants wishes... If you think of me whilst dropping your jewellery into the well, I think she will look upon you fondly.'[roman type][line break]";
	teach wishenhancing.

To say WhereAnswer of (M - djinn):
	say "[speech style of M]'The cosmos.'[roman type][line break]".

To say WhoAnswer of (M - djinn):
	say "[speech style of M]'You haven't heard of me?! I take that as an insult.'[roman type][line break]".

To say StoryAnswer of (M - djinn):
	say "[speech style of M]'Have you seen Aladdin? Something like that, but with way more sex.'[roman type][line break]".

To say EscapeAnswer of (M - djinn):
	say "[speech style of M]'[one of]Why would I tell you that? What's in it for me if you escape? Exactly, nothing.'[or]Naturally I am powerful enough to travel between dimensions as I [please]. Mortal plane? Furthest reaches of the cosmos? All child's play. I guess that wouldn't work for you though.'[or]Perhaps if you [if diaper quest is 0]suck my cock[otherwise]call me Daddy[end if] enough times, I will tell you.'[in random order][roman type][line break]".

To say AdviceAnswer of (M - djinn):
	say "[speech style of M]'[one of]Do something too much and you'll get addicted.'[or]Resting on furniture may heal you, but it also resets your exercise counter.'[in random order][roman type][line break]".

Section 3 - Drink Requesting

To compute friendly drink of (M - djinn):
	say "[speech style of M]'I don't need to drink, I'm not a puny mortal!'[roman type][line break]".

To compute unfriendly drink of (M - djinn):
	say "[speech style of M]'I will decide if and when you are allowed to feed!'[roman type][line break]";
	now M is interested;
	now the boredom of M is 0.

Djinn ends here.
