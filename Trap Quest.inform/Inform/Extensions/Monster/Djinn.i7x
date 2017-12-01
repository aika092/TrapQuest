Djinn by Monster begins here.

A djinn is a kind of monster.  A djinn is usually intelligent.  A djinn is usually male.  A djinn is usually dark skinned.  A djinn is usually raunchy.  A djinn is usually father material.  A djinn is usually woods dwelling.  A djinn is usually willing to do anal.  A djinn is usually willing to do vaginal.  A djinn is usually willing to do oral.  A djinn is usually willing to do titfucks. [The leftover-type of a djinn is usually 113.]  A djinn has a number called wish history.  A djinn is usually airborne.  The description of a djinn is usually "[DjinnDesc]".

A nubian djinn is a kind of djinn.  There is 1 nubian djinn.  The printed name of nubian djinn is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]nubian djinn[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".  The text-shortcut of nubian djinn is "ndj".

Figure of djinn is the file "djinn1.png".
Figure of censored djinn is the file "djinn2.png".

To say DjinnDesc:
	if images visible is 1:
		if diaper quest is 0, display the figure of djinn;
		otherwise display the figure of censored djinn;
	say "This tall dark-skinned man has no legs but instead a billowing smoky pillar below his [if diaper quest is 1]waist[otherwise]thick, veiny cock[end if].  He has four arms, two of which are kept folded in front of his chest whilst the other two are used to wildly gesticulate as he talks.".
	
To set up (M - a djinn):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 9;
	now the health of M is the maxhealth of M.

To decide which number is the girth of (M - a djinn):
	decide on 5.

This is the spawn initial woods djinn rule:
	if the number of alive djinn in the woods is 0:
		let M be a random off-stage djinn;
		summon M in the woods.
The spawn initial woods djinn rule is listed in the setting up woods monsters rules.

Definition: a djinn (called M) is human:
	decide yes.


Part 1 - Misc Flavour

To say SummoningFlav of (M - a djinn):
	if the location of the player is Woods30, say "[one of]The noise inside the statue abruptly stops, and a cloud of smoke forms rapidly in the center of the clearing, growing darker and darker as a four-armed man materializes from the waist up. He looks at you and narrows his eyes.[or]You hear a strong rumble, and a thick fog suddenly rolls into the clearing. It seems to grow continually thicker, shifting and twisting as a dark-skinned man materializes from the waist up. He crosses his arms, looking up at the statue. [speech style of M]'See you at the usual time on Tuesday.'[roman type][as decreasingly likely outcomes]";
	otherwise say "You hear a low toned manly voice echo throughout the woods.  [first custom style]'WHO DISTURBS MY SLUMBER?'[roman type][line break]".

To say DiaperReaction of (M - a djinn):
	say "The [M] smirks and looks directly at your dampening crotch.  [speech style of M]'You mortals are so pitiful.'[roman type][line break]";
	if the humiliation of the player < 15000, say "[one of]You are so ashamed you wish the ground would just open up and swallow you.  [or][stopping]You turn bright red and can't bring yourself to look the [M] in the eye.".

To compute diaper mess reaction of (M - a djinn):
	say "The [M] frowns.  [speech style of M]'[if M is friendly]Fortunately for you, I have no sense of smell in this ascended form.  If I did, I would struggle to think of a horrible enough punishment for assailing my nostrils with the scent of your bowels.'[otherwise]Incredible.  You are more pathetic than any other mortal I have ever met, in 4000 years of existence.  That's quite a remarkable feat.'[end if][roman type][line break]";
	humiliate 400.

To compute (M - a monster) stomping (N - a djinn):
	if M is in the location of the player, say "The [M] kills the [N].";
	destroy N;
	let L be a random off-stage leftover;
	now L is in the location of M;
	now the leftover-type of L is the leftover-type of N.

Part 2 - Perception


To calm (M - a djinn):
	if the favour of M <= the aggro limit of M and the wish history of M is 2: [the only way the djinn becomes friendly again is if you sucked his cock]
		now the favour of M is the aggro limit of M + 1.

To compute appearance assessment of (M - a djinn):
	let M2 be nothing;
	repeat with N running through dangerous monsters in the location of the player:
		unless N is M, now M2 is N;
	if M2 is monster or there is a live thing penetrating a body part or the player is immobile:
		say "He watches you [if M2 is monster]and the [M2] [end if]momentarily with a look of mild amusement on his face, before moving on.";
		distract M;
	otherwise:
		if the wish history of M is 2:
			say "[speech style of M]'Oh it's you again.  [one of]You'll be pleased to hear that I no longer have to grant you any wishes.  I'm free to mess with you, though.'[or]What should I do to you this time...'[stopping][roman type][line break]";
			compute djinn messing of M;
		otherwise if the class of the player is priestess or the class of the player is succubus or the class of the player is cultist:
			say "[speech style of M]'[one of]I am bound...oh. You already work for someone else. Right, forget I said anything.'[or]We meet again, acolyte. '[at random][roman type][line break]";
		otherwise if the player is able to speak:
			say "[speech style of M]'I am bound by the law of Djinni to grant you one wish, within reason.  But if you don't wish for a [if diaper quest is 1]spanking[otherwise]suck of my cock[end if], I'll make your life miserable afterwards.'[roman type][line break]";
			now the alert of the player is 1;
			compute djinn wishing of M;
		otherwise:
			say "[speech style of M]'Hmm, looks like you can't speak at the moment.  I'll come back later.'[roman type][line break]";
			bore M.

To compute friendly boredom of (M - a djinn):
	increase the friendly boredom of M by 1;
	if the player is not in danger and a random number from 10 to 30 < the friendly boredom of M and the wish history of M > 0:
		distract M;
		if M is in the location of the player, say "[BecomesBoredFlav of M]".

To compute perception of (M - a djinn):
	now M is interested;
	if M is objectifying the player:
		say "The [M] notices you[if the player is sluttily dressed].[otherwise]![end if][line break][speech style of M]'[one of]Whore, your holes are required.'[or]You look like a [tasty] mortal.  Bow before me!'[or]Come here, young one.  This shaft isn't going to pleasure itself...'[in random order][roman type][line break]";
		permanently anger M;
	otherwise if M is unfriendly or the wish history of M is 1:
		say "The [M] notices you[if the player is sluttily dressed].[otherwise]![end if][line break][speech style of M]'[one of]You again!  Did you think you'd been forgiven?  No, you will be my sex pet forever.'[or]Ah, perfect, I was just wondering where you had got to!'[or]You know the drill[if the player is upright].  Get on your knees[end if].'[stopping][roman type][line break][if the player is upright]He takes an aggressive stance.[end if]";
		permanently anger M;
	otherwise:
		say "The [M] looks you up and down[if the player is sluttily dressed].[otherwise]![end if][line break]";
		compute appearance assessment of M.

To compute DQ perception of (M - a djinn):
	now M is interested;
	if M is babifying the player:
		say "The [M] notices you[if the player is sluttily dressed].[otherwise]![end if][line break][speech style of M]'[one of]Oh look, a little baby.  Does someone need looking after?'[or]Oh it's the little baby again!  Back for more?'[or]Come here again, young one.'[stopping][roman type]  He looks aggressive!";
		anger M;
	otherwise if M is unfriendly:
		say "The [M] notices you[if the player is sluttily dressed].[otherwise]![end if][line break][speech style of M]'[one of]You again!  Did you think you'd been forgiven?  No, you will suffer my wrath forever.'[or]Ah, perfect, I was just wondering where you had gotten to!'[or]You know the drill[if the player is upright].  Get on your knees[end if].'[stopping][roman type][line break][if the player is upright]He takes an aggressive stance.[end if]";
	otherwise:
		say "The [M] looks you up and down[if the player is sluttily dressed].[otherwise]![end if][line break]";
		compute appearance assessment of M.

To decide which number is the bimbo tolerance of (M - a djinn):
	if interracial fetish is 1, decide on 11;
	decide on 14.


Part 3 - Djinn Wishing

The djinn wish rules is a rulebook.

wish-to-ask is a text that varies.
wish-asked is an indexed text that varies.
After reading a command:
	if wish-to-ask is not "":
		now wish-asked is the player's command;
		follow the djinn wish rules;
		if wish-to-ask is not "", reject the player's command.

To say wish-type:
	if inline hyperlinks >= 2, say "[link]";
	otherwise say "[bold type]".

To say end-wish-type:
	if inline hyperlinks >= 2, say "[end link]";
	otherwise say "[roman type]".

To compute djinn wishing of (M - a monster):
	now wish-to-ask is "wish";
	say "[wishes of M]".

To say wishes of (M - a monster):
	say "What do you wish for?  You can [wish-type]wish for strength[end-wish-type], [wish-type]wish for wisdom[end-wish-type], [wish-type]wish for blessings[end-wish-type], [wish-type]wish for sanity[end-wish-type], [wish-type]wish for safety[end-wish-type], [if diaper quest is 0 and M is in the location of the player][wish-type]wish for a suck of his cock[end-wish-type], [otherwise if M is in the location of the player][wish-type]wish for a spanking[end-wish-type], [end if][if diaper lover >= 1][wish-type]wish for a diaper change[end-wish-type], [end if]or [wish-type]wish for nothing[end-wish-type] to not wish for anything.".

To say DjinnDisappointedBefore:
	say "The djinn narrows his eyes.  [first custom style]'Fine, so be it.'[roman type][line break]".

To compute DjinnDisappointedAfter of (M - a monster):
	if M is alive:
		say "The djinn claps his hands and starts to disappear.  [first custom style]'You should hope that we don't meet again.'[roman type][line break]";
		regionally place M;
		permanently anger M;
		now the wish history of M is 1;
		bore M;
	otherwise:
		let L be a random magic lamp;
		say "The djinn claps his hands and disappears back into the lamp.";
		if the wishes of L is 1:
			say "Suddenly, the lamp shoots out of your hands and into the sky, lost to the world in an instant!";
			destroy L;
		decrease the wishes of L by 1.

To compute djinn wishing conclusion:
	now seconds is 6;
	change the text of the player's command to "finish setting";
	now wish-to-ask is "".

This is the wishing for strength rule:
	if wish-asked is "wish for strength" or wish-asked is "strength":
		let M be a random djinn;
		if (M is interested friendly djinn and M is in the location of the player and the wish history of M is 0) or the wishes of a random magic lamp > 0:
			say "[DjinnDisappointedBefore]The [M] unfolds his folded arms and waves them at your body.  You feel your muscles grow!";
			StrengthUp 2;
			compute DjinnDisappointedAfter of M;
		compute djinn wishing conclusion;
		rule succeeds.
The wishing for strength rule is listed in the djinn wish rules.

This is the wishing for wisdom rule:
	if wish-asked is "wish for wisdom" or wish-asked is "wisdom":
		let M be a random djinn;
		if (M is interested friendly djinn and M is in the location of the player and the wish history of M is 0) or the wishes of a random magic lamp > 0:
			say "[DjinnDisappointedBefore]The [M] unfolds his folded arms and waves them at your head.  You feel stimulated!";
			IntUp 2;
			compute DjinnDisappointedAfter of M;
		compute djinn wishing conclusion;
		rule succeeds.
The wishing for wisdom rule is listed in the djinn wish rules.

This is the wishing for blessings rule:
	if wish-asked is "wish for blessings" or wish-asked is "blessings" or wish-asked is "wish for blessing" or wish-asked is "blessing":
		let M be a random djinn;
		if (M is interested friendly djinn and M is in the location of the player and the wish history of M is 0) or the wishes of a random magic lamp > 0:
			say "[DjinnDisappointedBefore]The [M] unfolds his folded arms and waves them at your body.";
			let N be 3;
			while N > 0:
				let C be a random worn blessable clothing;
				if C is clothing:
					decrease N by 1;
					say "Your [C] is surrounded by a blue light!";
					bless C;
				otherwise:
					now N is -1;
			if N is -1, say "[first custom style]'Hmm, looks like you weren't wearing enough to get the full effect from that.  Not my problem though.'[roman type][line break]";
			compute DjinnDisappointedAfter of M;
		compute djinn wishing conclusion;
		rule succeeds.
The wishing for blessings rule is listed in the djinn wish rules.

This is the wishing for sanity rule:
	if wish-asked is "wish for sanity" or wish-asked is "sanity":
		let M be a random djinn;
		if (M is interested friendly djinn and M is in the location of the player and the wish history of M is 0) or the wishes of a random magic lamp > 0:
			say "[DjinnDisappointedBefore]The [M] unfolds his folded arms and waves them at your head.  You feel calmed!";
			SexAddictDown 1;
			SemenAddictDown 1;
			DelicateDown 1;
			Dignify 1000;
			compute DjinnDisappointedAfter of M;
		compute djinn wishing conclusion;
		rule succeeds.
The wishing for sanity rule is listed in the djinn wish rules.

This is the wishing for safety rule:
	if wish-asked is "wish for safety" or wish-asked is "safety":
		let M be a random djinn;
		if (M is interested friendly djinn and M is in the location of the player and the wish history of M is 0) or the wishes of a random magic lamp > 0:
			compute DjinnDisappointedAfter of M;
			teleport to Dungeon12;
		compute djinn wishing conclusion;
		rule succeeds.
The wishing for safety rule is listed in the djinn wish rules.

This is the wishing for nothing rule:
	if wish-asked is "wish for nothing" or wish-asked is "nothing":
		let M be a random djinn;
		if M is interested friendly djinn and M is in the location of the player and the wish history of M is 0:
			say "[first custom style]'Wow, what a way to waste your wish.  And now, I'm angry...'[roman type][line break]The [M] takes an aggressive stance!";
			permanently anger M;
			now the wish history of M is 1;
		otherwise if the wishes of a random magic lamp > 0:
			say "[first custom style]'Wow, what a way to waste your wish.'[roman type][line break]";
		compute djinn wishing conclusion;
		rule succeeds.
The wishing for nothing rule is listed in the djinn wish rules.

This is the wishing for cock rule:
	if diaper quest is 0 and (wish-asked is "wish for suck of his cock" or wish-asked is "wish for a suck of his cock"):
		let M be a random djinn;
		if M is interested friendly djinn and M is in the location of the player and the wish history of M is 0:
			now the wish history of M is 2;
			if the player is upright:
				try kneeling;
				say "You open your mouth obediently.";
			now the the player-reaction of the player is submitting;
			now presented-orifice is face;
			check consensual submissive sex of M;
		otherwise if the wishes of a random magic lamp > 0:
			say "[first custom style]'I'm not allowed.  But hey, what a way to waste your wish.'[roman type][line break]";
		compute djinn wishing conclusion;
		rule succeeds.
The wishing for cock rule is listed in the djinn wish rules.

This is the wishing for spanking rule:
	if diaper quest is 1 and (wish-asked is "wish for spanking" or wish-asked is "wish for a spanking"):
		let M be a random interested friendly djinn in the location of the player;
		if M is monster:
			now the wish history of M is 2;
			if the player is upright:
				try kneeling;
				say "You get on your knees obediently, raising your [buttcheeks] into the air.";
			now the the player-reaction of the player is submitting;
			anger M;
			compute spanking of M;
		compute djinn wishing conclusion;
		rule succeeds.
The wishing for spanking rule is listed in the djinn wish rules.

To say SpankingDeclarationFlav of (M - a djinn):
	say "[speech style of M]'Heh, I had a feeling you would choose wisely.  I'm going to enjoy this.'[roman type]  ".

This is the wishing for a change rule:
	if (wish-asked is "wish for a change" or wish-asked is "wish for change" or wish-asked is "a change" or wish-asked is "change" or wish-asked is "wish for a diaper change" or wish-asked is "wish for diaper change" or wish-asked is "diaper change" or wish-asked is "a diaper change") and diaper lover >= 1:
		repeat with M running through interested friendly djinn in the location of the player:
			if the wish history of M is 0 and (there is a worn diaper or there is a worn messed knickers):
				let D be a random worn knickers;
				say "[DjinnDisappointedBefore]The [M] unfolds his folded arms and waves them at your [printed name of D].";[Maybe have Djinn punish by adding locking plastic panties, with key given to matron?]
				if total-soak of D > 0 or the mess of D > 0:
					say "A cloud of baby powder releases from the seams of your [printed name of D]. It feels[if the mess of D > 0], and smells,[end if] as if it were brand new!";
					now the urine-soak of D is 0;
					now the milk-soak of D is 0;
					now the semen-soak of D is 0;
					now the water-soak of D is 0;
					now the mess of D is 0;
				otherwise:
					say "[first custom style]'Hmm, looks like your diaper was already clean.  Not my problem though.'[roman type][line break]";
			otherwise if the wish history of M is 0:
				say "[DjinnDisappointedBefore]The [M] unfolds his folded arms and waves them at your crotch.[line break][first custom style]'Wait a minute, you're not even wearing a diaper! Let me fix that.'[roman type][line break]";
				if there are worn knickers:
					let K be a random worn knickers;
					say "You suddenly feel your [printed name of K] vanish with a gust of air around your crotch!";
					destroy K;
				let E be a random eligible diaper;
				summon E cursed;
				say "With a flash of light, you feel a [printed name of E] appear around your crotch, forcing your legs apart!";
			compute DjinnDisappointedAfter of M;
		compute djinn wishing conclusion;
		rule succeeds.
The wishing for a change rule is listed in the djinn wish rules.
	
This is the wishing for something rule:
	say "Input not understood.  Please wish for something.  [wishes of a random djinn]";
	rule fails.
The wishing for something rule is listed last in the djinn wish rules.
	

Part 4 - Djinn Messing

To compute djinn messing of (M - a djinn):
	let R be a random number between 1 and 10;
	let C be a random worn transformable clothing;
	if R > 1 and C is clothing:
		compute M transforming C;
	otherwise:
		say "He points at your legs, and you feel a bit more stiff...";
		DexDown 1;
	say "He seems satisfied with that and calms down, seemingly content to follow and observe you with mild interest for now.";
	calm M.

To compute (M - a djinn) transforming (C - a clothing):
	say "He points at your [C], and a bolt of magic lightning erupts from his finger!  Your [C] starts to shimmer...";
	let enhanced be 0;
	if the player is a may 2017 top donator and a random number between 2 and 6 > the raw-magic-modifier of C, now enhanced is 1;
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

To compute (M - a djinn) protecting against (X - a monster): [Default protection if not defined for the monster]
	if M is mating and the player is not monster stuck:
		let T be a random placed jungle room;
		while T is Dungeon12 or T is the location of the player:
			now T is a random placed jungle room;
		say "The [M] gets between you and the [X]. [speech style of M]As mother of my children, you are above fighting these vermin. You will not sully your hands fighting them under any circumstances.[roman type] He taps you on the forehead, and the scenery around you shifts as you reappear in the [printed name of T]!";
		teleport to T;
	otherwise:
		say "[one of]The [M] watches, seemingly unconcerned by your situation.[or][or]The [M] nods with interest, as if rating your performance.[or][or]Your actions appear to interest the [M], who purses [his of M] lips as if unsure if your heart is really in this.[or][or]The [M] seems mildly surprised by your actions, but shrugs, not wishing to judge you.[or][or]The [M] shakes [his of M] head, as if surprised by your behaviour.[or][or]The [M] looks away, as if embarrassed by your choice of actions.[cycling]".

To say SexSubmissionFlav of (M - a djinn): [this is customized because I rewrote the scene so the player is floating a couple feet off the ground.]
	if diaper quest is 1:
		say "[one of]Recognizing how much more powerful the [M] is than you, you decide not to fight back[or]As humiliating as it is to let him have his way, it's not like you can do much about it anyway[or]You submit to the superior being[in random order].";
	otherwise if the relevant sex addiction of M < 10:
		say "[one of]Recognizing how much more powerful the [M] is than you, you decide not to fight back[or]As humiliating as it is to let him have his way, it[']s not like you can do much about it anyway[or]You submit to the superior being plowing away at your [random body part penetrated by M][in random order].";
	otherwise:
		say "[one of]You allow the [M] to violate you as much as he likes. He's in charge![or]You relax and enjoy the feeling of the [M]'s rock hard [if interracial fetish is 1]giant black [end if][manly-penis].[at random]".

To say SexResistFlav of (M - a djinn):
	say "[one of]You hopelessly flail against the [M]'s grip, doing everything you can to resist the invasion.[or]You seem to be being held still by some kind of magical force, leaving you with no real way of resisting, but you still try![or]You flail around and make as much noise as you can, but no matter how much you try, you can't do anything about the [M]'s powerful pistoning.[or]You fight against the [if interracial fetish is 1 and M is penetrating a fuckhole]pleasure that his big black [manly-penis] is sending through your sensitive hole[otherwise][M][end if] but it's no use, you can't do anything to stop the action![in random order]".

To say angry punishment insult of (M - a djinn):
	if M is not friendly-fucking:
		say "[first custom style]'You dare to disrespect me?!  Learn your place, worm.'[roman type][line break]";
	otherwise:
		say "[first custom style]'There's still some stubbornness left in you.  I like that.  I'll let you off this time.'[roman type][line break]".[He's not raping you, so he doesn't tear your clothes off, but he isn't all that happy either.]

To compute happy reward of (M - a djinn):[reward for giving a pleasant blowjob]
	if M is friendly-fucking, say "[speech style of M]'It was a wise decision to not make an enemy of me.'[roman type][line break]".[reward only possible if it's friendly sex, also there's no reward for now.]

Section 1 - Attack

To compute the flying player taunting of (M - a djinn):
	if a random number from 1 to 6 is 1:
		say "The [M] laughs at you.  [speech style of M]'[one of]Your attempt at flight is laughable.'[or]If the [great one] had intended you to fly, he would have given you my power!'[or]How dreadfully pathetic, even for a mortal.'[in random order][roman type][line break][if the humiliation of the player < 17500]You [one of]wince[or]shudder[or]cringe[purely at random] with shame.";
		humiliate 20.

To say LandingTaunt of (M - a djinn):
	say "The [M] [if a random number between 1 and 2 is 1]chuckles[otherwise]laughs mercilessly[end if].";
	humiliate 50.

To compute anal climax of (M - a djinn):
	TimesFuckedUp M by 1;
	if M is wrapped:
		say CondomPieFlav of M;
		if a random number between 1 and 5 is 1:
			say "It can't handle the strain! You feel it burst open inside of you, and a gush of warmth floods your [asshole], gurgling upwards into your bowls at an incredible pace. It's almost like you can feel his energetic swimmers moving around in your gut.";
			now M is unwrapped;
		otherwise:
			say "Miraculously, it seems to hold, and the [M] laughs as he pulls out and carefully peels it off. [speech style of M]'I am surprised your mortal condom could hold my seed!'[roman type][line break]";
	otherwise:
		say CreamPieFlav of M;
	AssFill the semen load of M;
	if M is interested:
		compute happy reward of M;
		satisfy M;
	now M is not penetrating asshole.

To say CreampieFlav of (M - a djinn):
	if M is penetrating vagina:
		say "[speech style of M]'Yes...  yes... [if pregnancy fetish is 1 and the pregnancy of the player is 0]take my seed, and carry my spawn, whore[otherwise]your cunt is pleasing to me, mortal[end if]!'[roman type] The [M] ejaculates deep inside your [vagina][if pregnancy fetish is 1].  Your womb explodes with sensation, as you feel his swimmers rush straight for your fallopian tubes, filling every crevice and tunnel they can find[end if]!";
	otherwise:
		say "[speech style of M]'Yes...  yes... I can feel it coming!'[roman type] The [M] bellows as he ejaculates deep inside your [asshole].  Your jizz enema gurgles into your bowels at an incredible pace.  It's almost like you can feel his little baby-making bastards swimming around energetically inside your gut.".

To say CondomPieFlav of (M - a djinn):
	if M is penetrating vagina:
		say "[speech style of M]'Yes... yes.. your cunt is pleasing to me, mortal!'[roman type] The [M] ejaculates, filling the condom with warm [semen]. You can feel it shifting inside of you, his powerful swimmers fighting aggressively against their tough latex prison. It stretches further and further to contain the rest of his cum, and the struggle inside becomes all the more pronounced.";
	otherwise:
		say "[speech style of M]'Yes...  yes... I can feel it coming!'[roman type] The [M] bellows as he ejaculates, filling the condom with wave after wave of fresh [semen]. You can feel it shifting inside of you, almost as if his little baby-making bastards were struggling to bust out of their flimsy latex prison. It stretches further and further as it struggles to contain the rest of his cum, rounding out as the commotion inside reaches its peak.";
	say "[line break]";

To compute vaginal climax of (M - a djinn):
	TimesFuckedUp M by 1;
	if M is unwrapped:
		say CreampieFlav of M;
	otherwise:
		say CondomPieFlav of M;
		if a random number between 1 and 3 is 1:
			say "It can't handle the strain! You feel it burst open inside you, and a gush of warmth floods your [vagina][if pregnancy fetish is 1] as your womb explodes with sensation, and his horde of eager swimmers rush straight for your fallopian tubes, filling every crevice and tunnel they can find![line break][otherwise]. [speech style of M]Hahaha! Your mortal condom was no match for my divine sperm![roman type][line break][end if]";
			now M is unwrapped;
		otherwise:
			say "Miraculously, it seems to hold, and the [M] laughs as he pulls out and carefully peels it off. [speech style of M]I am surprised your mortal condom could hold my seed![roman type][line break]";
	WombFill the semen load of M;
	if M is unwrapped and pregnancy fetish is 1 and the pregnancy of the player is 0:
		say "You immediately feel the [if the player is queen of spades]superior virility of his nubian sperm[otherwise]magical sperm[end if] barrelling down your tubes and straight to your undefended egg[if inhuman pregnancy > 0]s[end if].  A strange tingle shoots through you from deep inside, kind of in your belly, almost, and you feel certain you're now pregnant with his child[if inhuman pregnancy > 0]ren[end if]![line break]";
		now the pregnancy of the player is 1;
		now the father is M;
	if M is interested:
		compute happy reward of M;
		satisfy M;
	now M is not penetrating vagina.

To compute labour to (M - a djinn):
	if M is regional and M is alive:
		compute pregnancy clothing displacement;
		say "[PregFlav][if the father is in the location of the player]The [father][otherwise]The [father] appears almost as if on cue!  He[end if] uses his powers to pull you into the air, and turn you upside down.  You begin to feel a bit queasy as [if inhuman pregnancy > 0]one by one, eight small black babies push their way head-first out of your painfully gaping vagina. Each one[otherwise]a little black baby emerges upwards from your painfully gaping vagina, and is[end if] left hovering above your suspended body to take breath and begin to cry.  [first custom style]'There there my little one[if inhuman pregnancy > 0]s[end if].  You're safe now.'[roman type][line break]With a click of his fingers, the [M] sends his new charge[if inhuman pregnancy > 0]s[end if] up into the sky, presumably to their new home.  [first custom style]'Good job, mortal, I may have to use your womb again in the future to further expand my clan.'[roman type][line break]  He leaves you to recover from your ordeal.";
		if the father is in the location of the player:
			say "For some reason, you are filled with a sense of deep fulfilment.  You feel great!";
			StrengthUp 1;
			DexUp 1;
			IntUp 1;
			bore M;
	otherwise if M is alive:
		Delay Labour.

To compute the dildo stuck taunting of (M - a djinn):
	compute the default taunting of M.

To say PullAttempt of (M - a djinn) at (K - a clothing):
	say "The [M] uses a mystical force to pull at your [K]!".

To compute (M - a djinn) destroying (K - a clothing):
	say "With a flick of two of the [M]'s fingers, the [K] comes completely off!  It's been entirely destroyed.";
	destroy K.

To compute (M - a djinn) displacing (C - a clothing):
	say "With a flick of two fingers, the [M] pulls the [if C is hobble-skirted]skirt up, exposing your crotch[otherwise if C is trousers]waistband down to your knees[otherwise]crotch section to one side[end if]!";
	displace C.

To compute (M - a djinn) ripping (K - a clothing):
	say "With a flick of two fingers, the [M] creates a tear in the fabric!";
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
			say "The [current-monster] was about to ignore you, but it seems that your tongue piercing made your request extremely convincing!";
			now the chosen-orifice of current-monster is presented-orifice;
			rule succeeds;
	otherwise if presented-orifice is not nothing:
		say "[PresentRejectionFlav of current-monster]".

This is the djinn friendly convinced rule:
	if presented-orifice is a reasonable target and (the refactory-period of current-monster <= 0 or (presented-orifice is face and the wish history of current-monster is 2)):
		now the chosen-orifice of current-monster is presented-orifice;[This is on top so flavor can refer to chosen orifice.]
		say "[PresentFriendlyAcceptanceFlav of current-monster]";
		rule succeeds;
	otherwise if presented-orifice is not nothing:
		say "[PresentFriendlyRejectionFlav of current-monster]".
The monster friendly convinced rule of a djinn is usually the djinn friendly convinced rule.

To say PresentAcceptanceFlav of (M - a djinn):
	say "The [M] laughs at your request.  [speech style of M]'Indeed, an excellent choice.'[roman type][line break]".

To say PresentRejectionFlav of (M - a djinn):
	say "The [M] laughs at your request.  [speech style of M]'Why would I care about the feelings of a mere mortal such as yourself?'[roman type][line break]".

Definition: a djinn (called M) is willing to let go:
	decide no.

To say PresentFriendlyAcceptanceFlav of (M - a djinn):
	say "[speech style of M]'[if the wish history of M is 2]You have chosen wisely[otherwise]Very well, I shall grant you the honour of worshipping my cock[end if].'[roman type][line break]".

To say FriendlySexReleaseRefusalSpeech of (M - a djinn):
	let F be a random body part penetrated by M;
	say "[speech style of M]'[one of]No no no, you don't stop until I say so.'[or]Do you think you are in charge here?!'[or]Why would I care about what you want?  Your feelings are insignificant.'[in random order][roman type][line break]".

To say StrikingSuccessFlav of (M - a djinn) on (B - a body part):
	say "A miniature lightning bolt strikes your [TargetName of B].  The powerful electric shock sizzles painfully against your skin!".

To compute (S - a spike bra) damaging (M - a djinn):
	say "You see the [M] flinch back in pain as his lightning bolt strikes your [printed name of a random spike bra worn by the player].  The attack was somehow reflected!";
	decrease the health of M by 3;

To say StrikingFailureFlav of (M - a djinn) on (B - a body part):
	say "The [M] fires a miniature lightning bolt in your direction, but you are moving too quickly.  It misses!".

To compute tripping attack of (M - a djinn):
	say "The [M] uses a mystical force to try and pick you up off the ground!";
	let D be the tripping roll of M;
	if debugmode is 1, say "Player [dexterity of the player] | [D].5 djinn[line break]";
	if D >= the dexterity of the player and M is not-blinded:
		say "[MonsterTrippedFlav of M]";
		try kneeling;
		if the player is prone, check attack of M;
	otherwise:
		say "[MonsterFailedTripFlav of M]";
		if M is blinded and a random number between 1 and 2 is 1:
			say "The [M] is no longer blind!";
			now M is not-blinded.

To say MonsterTrippedFlav of (M - a djinn):
	say "You flail wildly as he succeeds in bringing your feet out from underneath you.  You fall to the ground!".

To decide which number is the tripping max of (M - a djinn): [Giving the djinn his own tripping max function since he doesn't use hair to trip the player.]
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
			say "The [M] points at your [D], and a bolt of magic lightning erupts from his finger!  Your [D] starts to shimmer...";
			potentially transform D;
			if the transform-attempts of D > 0 and the transform-attempts of D < 4:
				say "[speech style of M]'Hmm, that's weird...'[roman type][line break]  He doesn't seem satisfied.";
			otherwise:
				say "[speech style of M]'[if the transform-attempts of D >= 4]I give up.'[otherwise]Ha ha, that's much better, don't you think?'[roman type][line break]";
				satisfy M;
		otherwise:
			say "The [M] points at your [D], and a bolt of magic lightning erupts from his finger!  You watch as a ball of [urine] appears in mid-air in front of you, floating like a bubble, before flattening into a golden stream which flies straight for you!  It rushes up through the leg-holes of your [D] and splatters against you!";
			PissSoak 10 on D;
			say "[speech style of M]'Looks like someone needs a change...'[roman type][line break]";
			satisfy M;
		rule succeeds.
The diaper punishment rule of a djinn is usually the djinn punishes diaper rule.

To compute (M - a djinn) wishing on (J - an accessory):
	say "You hear a splash from inside the well, and the [M] appears in front of you, holding the [noun] in his hand. [speech style of M]'I found your jewellery at the bottom of the well. I am bound by the law of the djinni to offer it to you, but if you accept, I am free to grant you a wish of my choosing.'[roman type][line break]";
	if the player consents:
		say "[speech style of M]Granted![roman type][line break]";
		let R be a random number between 1 and 3;
		if R is 1 and the number of worn clothing > 0:
			let C be a random worn clothing;
			compute M transforming C;
			now C is temptation;
		otherwise if bukkake fetish is 1:
			say "The [M] grins as you suddenly drop to your knees and wrap your hands around his [if interracial fetish is 1 and the bimbo of the player > 12]superior [end if][manly-penis]. You feel yourself beaming up at him as your hands eagerly pump his [if interracial fetish is 1]proud[otherwise]hard, throbbing[end if] shaft, [if there is a worn ballgag]emitting an involuntary (albeit muffled) moan[otherwise if the semen taste addiction of the player > 10]mouth lolling open automatically[otherwise]mouth lolling open involuntarily[end if] as long white ropes of [semen] explode from the tip and spray across your face. The [M] nods as your hands fall from his softening member, and the [printed name of J] reappears in your hand.";
			try kneeling;
			CumFaceUp the semen load of M;
		otherwise:
			say "The [M] grins as your hands suddenly grasp his dangling [manly-penis] and begin jerking him off of their own volition. You suddenly find it impossible to look anywhere but directly into his eyes, [if there is a worn ballgag]emitting an involuntary (albeit muffled) moan[otherwise]mouth opening all on its own to force you to make an incredibly slutty 'fuck-me' face[end if] as your hands eagerly pump his [if interracial fetish is 1]proud black[otherwise]rock hard[end if] [manly-penis]. He has a fast orgasm, groaning as you 'obediently' wring out his load onto the ground underneath you. The [M] nods as your hands fall from his softening member, and the [printed name of J] reappears in your hand.";
			try kneeling;
			SemenPuddleUp the semen load of M;
		let P be a random off-stage plentiful accessory;
		now the accessory-colour of P is the accessory-colour of J;
		now P is held by the player;
	otherwise:
		say "The [M] nods and disappears in a cloud of white smoke.".
	

Section 2 - Damage			

To compute damage of (M - a djinn):
	if the health of M > 0:
		if M is uninterested or M is friendly:
			say "The [M] bellows with anger.  [speech style of M]'You dare challenge me to a duel?  Do you not know who I am?!'[roman type][line break]";
			anger M;
			now M is interested;
		otherwise:
			anger M;
			now M is interested;
			say DamageReaction (the health of M) of M;
	otherwise:
		if the health of M <= 0 and M is not dying:
			compute death of M.

To say DamageReaction (N - a number) of (M - a djinn):
	if N > (the maxhealth of M / 4) * 3:
		say "The [M] takes the hit without flinching!";
	otherwise if N > (the maxhealth of M / 4) * 2:
		say "The [M] takes the hit, struggling not to react!";
	otherwise if N > (the maxhealth of M / 4):
		say "The [M] takes the hit, growling!";
	otherwise:
		say "The djinn grunts [he of M] takes the hit, eyeing the area around you.".

To compute unique death of (M - a djinn): [TODO: If holding an oil lamp, player can defeat djinni permanently.]
	say "The [M] seems to be weakening rapidly, and he begins to take flight.  He shouts at you as he flees.  [speech style of M]'I'll be back, mortal!  I can never be fully defeated.  And the next time we meet, I'll be even stronger!'[roman type][line break]";
	let L be a random held magic lamp;
	if L is nothing, now L is a random magic lamp in the location of the player;
	if L is magic lamp:
		say "But wait!  The [L] stirs, shooting out of your [if there is a worn bag of holding]bag[otherwise]hands[end if] and to the ground.  The djinn is no longer soaring into the air, but sinking towards the lamp!  [speech style of M]'No, what?!  Where did you get that?  How did you know that a meagre oil lamp is the only device that can contain me?! AAAH!'[roman type][line break]The [M] sinks into the entrance of the lamp, shrinking as he disappears.  ";
		destroy M;
		now the wishes of L is 3;
		say "You now have a [L]!  You pick it back up.";
		compute autotaking L;
	otherwise:
		say "You feel like you haven't seen the last of him.";
		DifficultyUp M by 1;
		now the health of M is the maxhealth of M;
		bore M;
		regionally place M.

Section 3 - DQ

Definition: a djinn (called M) is willing to spank gently:
	decide no.

To decide which number is the spanking length of (M - a djinn):
	decide on 4.

To decide which number is the spank strength of (M - a djinn):
	decide on 5.

To say SpankingStartFlav of (M - a djinn):
	say "The [M] holds you still with some mystical force!".

To say SpankingAfterFlav of (M - a djinn):
	say "After this [he of M] seems satisfied and folds both sets of arms while chuckling deeply.";
	calm M. [The djinni was unfriendly during the wished spanking and is now just friendly again.]

Definition: a djinn (called M) is willing to confiscate:
	decide yes.

Definition: a djinn (called M) is eager to confiscate: [An angry djinn will confiscate even at maximum health]
	if M is able to confiscate, decide yes;
 	decide no.
 
djinn-mess is a diaper punishment.  The priority of djinn-mess is 1.

Definition: a djinn (called M) is eager to djinn mess:
 	decide no.

Definition: djinn-mess (called P) is appropriate:
	if current-monster is djinn, decide yes;
	decide no.

To compute punishment of (P - djinn-mess):
	compute djinn messing of current-monster.

To say honey of (M - a djinn):
	say "[child of M]".

Part 6 - Conversation

Section 1 - Greeting

To say FirstResponse of (M - a djinn):
	say "[speech style of M]'Greetings, puny one.  I'm impressed by your bravery, daring to approach an impressive entity such as myself.'[roman type][line break]".

To say RepeatResponse of (M - a djinn):
	say "[speech style of M]'[one of]Do I not scare you, little one?'[or]Aren't you afraid of me? I would be.'[or]I see the fear in your eyes.'[or]That's right, mortal, tremble before me.'[or]On your knees is the correct stance when you see me, mortal.'[at random][roman type][line break]".
	
To say UnfriendlyResponse of (M - a djinn):
	say "[speech style of M]'[one of]Hmm, strange decision to show your face here again.'[or]Well if it isn't my favourite morsel... I mean mortal.'[or]Ah, my human plaything. Excellent!'[at random][roman type][line break]".

To say DominantResponse of (M - a djinn):
	say "[speech style of M]'[if M is buddy]You are a unique one, daring to face me again considering our... history.'[otherwise]Why do you not fear me, young one?  You are quite the conundrum.'[end if][roman type][line break]".

To say midDominanceResponse of (M - a djinn):
	say "[speech style of M]'Remember, I do not care about you.  You are not important to me.  Why would I help you?'[roman type][line break]".

To say AsDominantResponse of (M - a djinn):
	say "[speech style of M]'[one of]Do you never stop talking?!'[or]Your job is to serve, not talk.'[at random][roman type]".

Section 2 - Questioning

To compute annoyance of (M - a djinn):
	if M is uninterested:
		say "The djinn doesn't seem to realize you are talking to him.[line break]";
	otherwise if M is unfriendly:
		say "The djinn ignores your question.  [speech style of M]'Now is not the time for idle chatter.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Begone, young one.  You begin to bore me.'[roman type][line break]";

To compute teaching of (M - a djinn):
	say "[speech style of M]'There's another entity lurking around here that grants wishes...  If you think of me whilst dropping your jewellery into the well, I think she will look upon you fondly.'[roman type][line break]";
	teach wishenhancing;
	if the questioned of M <= 290:
		increase the questioned of M by 100;
	otherwise:
		increase the questioned of M by 50.

To say WhereAnswer of (M - a djinn):
	say "[speech style of M]'The cosmos.'[roman type][line break]".

To say WhoAnswer of (M - a djinn):
	say "[speech style of M]'You haven't heard of me?!  I take that as an insult.'[roman type][line break]".
		
To say StoryAnswer of (M - a djinn):
	say "[speech style of M]'Have you seen Aladdin?  Something like that, but with way more sex.'[roman type][line break]".

To say EscapeAnswer of (M - a djinn):
	say "[speech style of M]'[one of]Why would I tell you that?  What's in it for me if you escape?  Exactly, nothing.'[or]Naturally I am powerful enough to travel between dimensions as I please. Mortal plane? Furthest reaches of the cosmos? All child's play. I guess that wouldn't work for you though.'[or]Perhaps if you suck my cock enough times, I will tell you.'[in random order][roman type][line break]".

To say AdviceAnswer of (M - a djinn):
	say "[speech style of M]'[one of]Do something too much and you'll get addicted.'[or]Resting on furniture may heal you, but it also resets your exercise counter.'[in random order][roman type][line break]".

Section 3 - Drink Requesting

To compute friendly drink of (M - a djinn):
	say "[speech style of M]'I don't need to drink, I'm not a puny mortal!'[roman type][line break]".

To compute unfriendly drink of (M - a djinn):
	say "[speech style of M]'I will decide if and when you are allowed to feed!'[roman type][line break]";
	now M is interested;
	now the boredom of M is 0.



Djinn ends here.
