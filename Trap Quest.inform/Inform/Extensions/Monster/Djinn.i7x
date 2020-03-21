Djinn by Monster begins here.

djinn is a monster. djinn is intelligent. The leftover-type of djinn is 113. djinn has a number called wish history. djinn is airborne. djinn is male.

Definition: djinn is father material: decide yes.

Definition: djinn is dark skinned: decide yes.

[Definition: djinn is woods dwelling: decide yes.] [He shouldn't be able to respawn]

Definition: djinn is raunchy: decide yes.

[Definition: djinn is manly-wenchy: decide yes.]

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

To say MonsterDesc of (M - djinn):
	say "This [if lady fetish is 0]tall, dark-skinned man[otherwise]muscular, dark-skinned woman[end if] has no legs but instead a billowing smoky pillar below [his of M] [if diaper quest is 1 or full-lady fetish is 1]waist[otherwise]thick, veiny cock[end if]. [big he of M] has four arms, two of which are kept folded in front of [his of M] chest whilst the other two are used to wildly gesticulate as [he of M] talks. [if full-lady fetish is 1 and diaper quest is 0]A patch of night sky in the shape of a penis hangs from [his of M] waist.[end if]".

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
	now the difficulty of M is 9;
	now the health of M is the maxhealth of M.

To decide which number is the girth of (M - djinn):
	decide on 5.

This is the spawn initial djinn rule:
	if djinn is off-stage and the wishes of a random magic lamp <= 0:
		summon djinn in the woods.
The spawn initial djinn rule is listed in the setting up woods monsters rules.

Definition: djinn is human: decide yes.



Part 1 - Misc Flavour

To say SummoningFlav of (M - djinn):[shouldn't happen]
	if the location of the player is Woods30, say "[one of]The noise inside the statue abruptly stops, and a cloud of smoke forms rapidly in the centre of the clearing, growing darker and darker as a four-armed [man of M] materialises from the waist up. [big he of M] looks at you and narrows [his of M] eyes.[or]You hear a strong rumble, and a thick fog suddenly rolls into the clearing. It seems to grow continually thicker, shifting and twisting as a dark-skinned [man of M] materialises from the waist up. [big he of M] crosses [his of M] arms, looking up at the statue. [line break][speech style of M]'See you at the usual time on Tuesday.'[roman type][line break][as decreasingly likely outcomes]";
	otherwise say "You hear a low toned manly voice echo throughout the woods. [line break][first custom style]'WHO DISTURBS MY SLUMBER?'[roman type][line break]".

To say DiaperReaction of (M - djinn):
	say "[BigNameDesc of M] smirks and looks directly at your dampening crotch.[line break][speech style of M]'You mortals are so pitiful.'[roman type][line break]";
	if the player is modest, say "[one of]You are so ashamed you wish the ground would just open up and swallow you.[or][stopping]You turn bright red and can't bring yourself to look [NameDesc of M] in the eye.".

To compute diaper mess reaction of (M - djinn):
	say "[BigNameDesc of M] frowns. [line break][speech style of M]'[if M is friendly]Fortunately for you, I have no sense of smell in this ascended form. If I did, I would struggle to think of a horrible enough punishment for assailing my nostrils with the scent of your bowels.'[otherwise]Incredible. You are more pathetic than any other mortal I have ever met, in 4000 years of existence. That's quite a remarkable feat.'[end if][roman type][line break]";
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

To calm (M - djinn):
	if the favour of M <= the aggro limit of M and the wish history of M is 2: [the only way the djinn becomes friendly again is if you sucked his cock]
		now the favour of M is the aggro limit of M + 1.

To compute appearance assessment of (M - djinn):
	let M2 be nothing;
	repeat with N running through dangerous monsters in the location of the player:
		unless N is M, now M2 is N;
	if M2 is monster or there is a live thing penetrating a body part or the player is immobile:
		say "[big he of M] watches you [if M2 is monster]and the [M2] [end if]momentarily with a look of mild amusement on [his of M] face, before moving on.";
		distract M;
	otherwise:
		if the wish history of M is 2:
			if the appearance of the player <= the outrage tolerance of M:
				say "[speech style of M]'Oh it's you again. [one of]You'll be [please]d to hear that I no longer have to grant you any wishes. I'm free to mess with you, though.'[or]What should I do to you this time...'[stopping][roman type][line break]";
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
		otherwise if the class of the player is priestess or the class of the player is succubus or the class of the player is cultist:
			say "[speech style of M]'[one of]I am bound... oh. You already work for someone else. Right, forget I said anything.'[or]We meet again, acolyte. '[at random][roman type][line break]";
		otherwise if the player is able to speak:
			say "[speech style of M]'I am bound by the law of Djinni to grant you one wish, within reason. But if you don't wish for a [if diaper quest is 1]spanking[otherwise]suck of my cock[end if], I'll make your life miserable afterwards.'[roman type][line break]";
			now the alert of the player is 1;
			compute djinn wishing of M;
			if diaper quest is 0, alwayscutshow the figure of djinn for M;
			otherwise alwayscutshow the figure of censored djinn for M;
		otherwise:
			say "[speech style of M]'Hmm, looks like you can't speak at the moment. I'll come back later.'[roman type][line break]";
			bore M.

To compute friendly boredom of (M - djinn):
	increase the friendly boredom of M by 1;
	if the player is not in danger and a random number from 10 to 30 < the friendly boredom of M and the wish history of M > 0, compute default friendly boredom of M.

To compute perception of (M - djinn):
	now M is interested;
	if M is objectifying the player:
		say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if][line break][speech style of M]'[one of]Whore, your holes are required.'[or]You look like a [tasty] mortal. Bow before me!'[or]Come here, young one. My shaft isn't going to pleasure itself...'[in random order][roman type][line break]";
		permanently anger M;
	otherwise if M is unfriendly or the wish history of M is 1:
		say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if][line break][speech style of M]'[one of]You again! Did you think you'd been forgiven? No, you will be my sex pet forever.'[or]Ah, perfect, I was just wondering where you had got to!'[or]You know the drill[if the player is upright]. Get on your knees[end if].'[stopping][roman type][line break][if the player is upright][big he of M] takes an aggressive stance.[end if]";
		permanently anger M;
	otherwise:
		say "[BigNameDesc of M] looks you up and down[if the player is sluttily dressed].[otherwise]![end if][line break]";
		compute appearance assessment of M.

To compute DQ perception of (M - djinn):
	now M is interested;
	if there is soiled-diaper retained by M:
		say "[speech style of M]'[one of]You there, you disgusting mortal! I'm sure it's you who left this for me to find! How vile[or]Vile mortal, stop leaving your horrendous used garments around for me to find[stopping]!'[roman type][line break]";
		anger M;
	otherwise if M is babifying the player:
		say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if][line break][speech style of M]'[one of]Oh look, a little baby. Does someone need looking after?'[or]Oh it's the little baby again! Back for more?'[or]Come here again, young one.'[stopping][roman type][line break][big he of M] looks aggressive!";
		anger M;
	otherwise if M is unfriendly:
		say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if][line break][speech style of M]'[one of]You again! Did you think you'd been forgiven? No, you will suffer my wrath forever.'[or]Ah, perfect, I was just wondering where you had gotten to!'[or]You know the drill[if the player is upright]. Get on your knees[end if].'[stopping][roman type][line break][if the player is upright][big he of M] takes an aggressive stance.[end if]";
	otherwise:
		say "[BigNameDesc of M] looks you up and down[if the player is sluttily dressed].[otherwise]![end if][line break]";
		compute appearance assessment of M.

To decide which number is the bimbo tolerance of (M - djinn):
	if interracial fetish is 1, decide on 13;
	decide on 16.


Part 3 - Djinn Wishing

[The djinn wish rules is a rulebook.

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
	now inventory-busy is 1; [ensures that hyperlinks are enabled]
	say "What do you wish for? You can [wish-type]wish for strength[end-wish-type], [wish-type]wish for wisdom[end-wish-type], [wish-type]wish for blessings[end-wish-type], [wish-type]wish for sanity[end-wish-type], [wish-type]wish for safety[end-wish-type], [if diaper quest is 0 and M is in the location of the player][wish-type]wish for a suck of his cock[end-wish-type], [otherwise if M is in the location of the player][wish-type]wish for a spanking[end-wish-type], [end if][if diaper lover >= 1][wish-type]wish for a diaper change[end-wish-type], [end if]or [wish-type]wish for nothing[end-wish-type] to not wish for anything.";
	now inventory-busy is 0.]

To compute djinn wishing of (M - a monster):
	allocate 6 seconds;
	reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
	set next numerical response to "wish for strength";
	set next numerical response to "wish for wisdom";
	set next numerical response to "wish for blessings";
	set next numerical response to "wish for sanity";
	set next numerical response to "wish for safety";
	if M is in the location of the player:
		if diaper quest is 0, set next numerical response to "wish for a suck of [his of M] cock";
		otherwise set next numerical response to "wish for a spanking";
	if diaper lover >= 1, set next numerical response to "wish for a diaper change";
	set next numerical response to "wish for nothing";
	compute multiple choice question;
	let CNR be the chosen numerical response;
	if the printed name of CNR is "wish for strength":
		say "[DjinnDisappointedBefore of M][BigNameDesc of M] unfolds his folded arms and waves them at your body. You feel your muscles grow!";
		StrengthUp 2;
		compute DjinnDisappointedAfter of M;
	otherwise if the printed name of CNR is "wish for wisdom":
		say "[DjinnDisappointedBefore of M][BigNameDesc of M] unfolds his folded arms and waves them at your body. You feel stimulated!";
		IntUp 2;
		compute DjinnDisappointedAfter of M;
	otherwise if the printed name of CNR is "wish for blessings":
		say "[DjinnDisappointedBefore of M][BigNameDesc of M] unfolds his folded arms and waves them at your body.";
		let N be 3;
		while N > 0:
			let C be a random worn blessable clothing;
			if C is clothing:
				decrease N by 1;
				say "Your [ShortDesc of C] is surrounded by a blue light!";
				bless C;
			otherwise:
				now N is -1;
		if N is -1, say "[speech style of M]'Hmm, looks like you weren't wearing enough to get the full effect from that. Not my problem though.'[roman type][line break]";
		compute DjinnDisappointedAfter of M;
	otherwise if the printed name of CNR is "wish for sanity":
		say "[DjinnDisappointedBefore of M][BigNameDesc of M] unfolds his folded arms and waves them at your head. You feel calmed!";
		SexAddictDown 1;
		SemenAddictDown 1;
		DelicateDown 1;
		Dignify 1000;
		compute DjinnDisappointedAfter of M;
	otherwise if the printed name of CNR is "wish for safety":
		compute DjinnDisappointedAfter of M;
		teleport to Dungeon12;
	otherwise if the printed name of CNR is "wish for nothing":
		if the wishes of a random magic lamp > 0:
			say "[speech style of M]'Wow, what a way to waste your wish.'[roman type][line break]";
		otherwise:
			say "[speech style of M]'Wow, what a way to waste your wish. And now, I'm angry...'[roman type][line break][BigNameDesc of M] takes an aggressive stance!";
			permanently anger M;
			now the wish history of M is 1;
	otherwise if the printed name of CNR matches the text "suck":
		now the wish history of M is 2;
		if the player is upright:
			now auto is 1;
			try kneeling;
			now auto is 0;
			say "You open your mouth obediently.";
		now the player-reaction of the player is submitting;
		now presented-orifice is face;
		check consensual submissive sex of M;
	otherwise if the printed name of CNR is "wish for a spanking":
		now the wish history of M is 2;
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
			say "[DjinnDisappointedBefore of M][BigNameDesc of M] unfolds his folded arms and waves them at your [printed name of D].";[Maybe have Djinn punish by adding locking plastic panties, with key given to matron?]
			if D is wet or D is messed:
				say "A cloud of baby powder releases from the seams of your [MediumDesc of D]. It feels[if D is perceived messed], and smells,[end if] as if it were brand new!";
				clean D;
				WaterEmpty D;
			otherwise:
				say "[speech style of M]'Hmm, looks like your diaper was already clean. Not my problem though.'[roman type][line break]";
		otherwise if the wish history of M is 0:
			say "[DjinnDisappointedBefore of M][BigNameDesc of M] unfolds his folded arms and waves them at your crotch.[line break][speech style of M]'Wait a minute, you're not even wearing a diaper! Let me fix that.'[roman type][line break]";
			if there are worn knickers:
				let K be a random worn knickers;
				say "You suddenly feel your [ShortDesc of K] vanish with a gust of air around your crotch!";
				destroy K;
			let E be a random eligible diaper;
			say "With a flash of light, you feel a [ShortDesc of E] appear around your crotch, forcing your legs apart!";
			summon E cursed with quest;
		compute DjinnDisappointedAfter of M;
	otherwise:
		say "ERROR: unable to properly process that wish. Please report this as a bug!";
		compute DjinnDisappointedAfter of M.


To say SpankingDeclarationFlav of (M - djinn):
	say "[speech style of M]'Heh, I had a feeling you would choose wisely. I'm going to enjoy this.'[roman type] ".


To say DjinnDisappointedBefore of (M - a monster):
	say "The djinn narrows [his of M] eyes.[line break][speech style of M]'Fine, so be it.'[roman type][line break]".

To compute DjinnDisappointedAfter of (M - a monster):
	if M is alive:
		say "The djinn claps [his of M] hands and starts to disappear.[line break][speech style of M]'You should hope that we don't meet again.'[roman type][line break]";
		regionally place M;
		permanently anger M;
		now the wish history of M is 1;
		bore M;
		now the boredom of M is 0; [He'll be interested straight away]
	otherwise:
		let L be a random magic lamp;
		say "The djinn claps [his of M] hands and disappears back into the lamp.";
		if the wishes of L is 1:
			say "Suddenly, the lamp shoots out of your hands and into the sky, lost to the world in an instant!";
			destroy L;
		decrease the wishes of L by 1.

[To compute djinn wishing conclusion:
	allocate 6 seconds;
	cancel djinn wishing.

To cancel djinn wishing:
	change the text of the player's command to "finish setting";
	now wish-to-ask is "".

To compute unique dislodging of (C - djinn):
	cancel djinn wishing.

Definition: djinn (called M) is waiting for a wish:
	if M is interested friendly djinn and M is in the location of the player and the wish history of M is 0, decide yes;
	decide no.

This is the wishing for strength rule:
	if wish-asked is "wish for strength" or wish-asked is "strength":
		if djinn is waiting for a wish or the wishes of a random magic lamp > 0:
			say "[DjinnDisappointedBefore of djinn][BigNameDesc of djinn] unfolds his folded arms and waves them at your body. You feel your muscles grow!";
			StrengthUp 2;
			compute DjinnDisappointedAfter of djinn;
		compute djinn wishing conclusion;
		rule succeeds.
The wishing for strength rule is listed in the djinn wish rules.

This is the wishing for wisdom rule:
	if wish-asked is "wish for wisdom" or wish-asked is "wisdom":
		if djinn is waiting for a wish or the wishes of a random magic lamp > 0:
			say "[DjinnDisappointedBefore of djinn][BigNameDesc of djinn] unfolds his folded arms and waves them at your head. You feel stimulated!";
			IntUp 2;
			compute DjinnDisappointedAfter of djinn;
		compute djinn wishing conclusion;
		rule succeeds.
The wishing for wisdom rule is listed in the djinn wish rules.

This is the wishing for blessings rule:
	if wish-asked is "wish for blessings" or wish-asked is "blessings" or wish-asked is "wish for blessing" or wish-asked is "blessing":
		if djinn is waiting for a wish or the wishes of a random magic lamp > 0:
			say "[DjinnDisappointedBefore of djinn][BigNameDesc of djinn] unfolds his folded arms and waves them at your body.";
			let N be 3;
			while N > 0:
				let C be a random worn blessable clothing;
				if C is clothing:
					decrease N by 1;
					say "Your [ShortDesc of C] is surrounded by a blue light!";
					bless C;
				otherwise:
					now N is -1;
			if N is -1, say "[first custom style]'Hmm, looks like you weren't wearing enough to get the full effect from that. Not my problem though.'[roman type][line break]";
			compute DjinnDisappointedAfter of djinn;
		compute djinn wishing conclusion;
		rule succeeds.
The wishing for blessings rule is listed in the djinn wish rules.

This is the wishing for sanity rule:
	if wish-asked is "wish for sanity" or wish-asked is "sanity":
		if djinn is waiting for a wish or the wishes of a random magic lamp > 0:
			say "[DjinnDisappointedBefore of djinn][BigNameDesc of djinn] unfolds his folded arms and waves them at your head. You feel calmed!";
			SexAddictDown 1;
			SemenAddictDown 1;
			DelicateDown 1;
			Dignify 1000;
			compute DjinnDisappointedAfter of djinn;
		compute djinn wishing conclusion;
		rule succeeds.
The wishing for sanity rule is listed in the djinn wish rules.

This is the wishing for safety rule:
	if wish-asked is "wish for safety" or wish-asked is "safety":
		if djinn is waiting for a wish or the wishes of a random magic lamp > 0:
			compute DjinnDisappointedAfter of djinn;
			teleport to Dungeon12;
		compute djinn wishing conclusion;
		rule succeeds.
The wishing for safety rule is listed in the djinn wish rules.

This is the wishing for nothing rule:
	if wish-asked is "wish for nothing" or wish-asked is "nothing":
		if djinn is waiting for a wish:
			say "[first custom style]'Wow, what a way to waste your wish. And now, I'm angry...'[roman type][line break][BigNameDesc of djinn] takes an aggressive stance!";
			permanently anger djinn;
			now the wish history of djinn is 1;
		otherwise if the wishes of a random magic lamp > 0:
			say "[first custom style]'Wow, what a way to waste your wish.'[roman type][line break]";
		compute djinn wishing conclusion;
		rule succeeds.
The wishing for nothing rule is listed in the djinn wish rules.

This is the wishing for cock rule:
	if diaper quest is 0 and (wish-asked is "wish for suck of his cock" or wish-asked is "wish for a suck of his cock"):
		if djinn is waiting for a wish:
			now the wish history of djinn is 2;
			if the player is upright:
				try kneeling;
				say "You open your mouth obediently.";
			now the player-reaction of the player is submitting;
			now presented-orifice is face;
			check consensual submissive sex of djinn;
		otherwise if the wishes of a random magic lamp > 0:
			say "[first custom style]'I'm not allowed. But hey, what a way to waste your wish.'[roman type][line break]";
		compute djinn wishing conclusion;
		rule succeeds.
The wishing for cock rule is listed in the djinn wish rules.

This is the wishing for spanking rule:
	if diaper quest is 1 and (wish-asked is "wish for spanking" or wish-asked is "wish for a spanking"):
		if djinn is waiting for a wish:
			now the wish history of djinn is 2;
			if the player is upright:
				try kneeling;
				say "You get on your knees obediently, raising your [buttcheeks] into the air.";
			now the player-reaction of the player is submitting;
			anger djinn;
			compute spanking of djinn;
		compute djinn wishing conclusion;
		rule succeeds.
The wishing for spanking rule is listed in the djinn wish rules.

To say SpankingDeclarationFlav of (M - djinn):
	say "[speech style of M]'Heh, I had a feeling you would choose wisely. I'm going to enjoy this.'[roman type] ".

This is the wishing for a change rule:
	if (wish-asked is "wish for a change" or wish-asked is "wish for change" or wish-asked is "a change" or wish-asked is "change" or wish-asked is "wish for a diaper change" or wish-asked is "wish for diaper change" or wish-asked is "diaper change" or wish-asked is "a diaper change") and diaper lover >= 1:
		if djinn is waiting for a wish:
			if the wish history of djinn is 0 and (there is a worn diaper or there is a worn messed knickers):
				let D be a random worn knickers;
				say "[DjinnDisappointedBefore of djinn][BigNameDesc of djinn] unfolds his folded arms and waves them at your [printed name of D].";[Maybe have Djinn punish by adding locking plastic panties, with key given to matron?]
				if D is wet or D is messed:
					say "A cloud of baby powder releases from the seams of your [MediumDesc of D]. It feels[if D is perceived messed], and smells,[end if] as if it were brand new!";
					clean D;
					WaterEmpty D;
				otherwise:
					say "[first custom style]'Hmm, looks like your diaper was already clean. Not my problem though.'[roman type][line break]";
			otherwise if the wish history of djinn is 0:
				say "[DjinnDisappointedBefore of djinn][BigNameDesc of djinn] unfolds his folded arms and waves them at your crotch.[line break][first custom style]'Wait a minute, you're not even wearing a diaper! Let me fix that.'[roman type][line break]";
				if there are worn knickers:
					let K be a random worn knickers;
					say "You suddenly feel your [ShortDesc of K] vanish with a gust of air around your crotch!";
					destroy K;
				let E be a random eligible diaper;
				say "With a flash of light, you feel a [ShortDesc of E] appear around your crotch, forcing your legs apart!";
				summon E cursed with quest;
			compute DjinnDisappointedAfter of djinn;
		compute djinn wishing conclusion;
		rule succeeds.
The wishing for a change rule is listed in the djinn wish rules.

This is the wishing for something rule:
	say "Input not understood. Please wish for something. [wishes of djinn]";
	rule fails.
The wishing for something rule is listed last in the djinn wish rules.
]

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
	say "[big he of M] points at your [ShortDesc of C], and a bolt of magic lightning erupts from his finger! Your [ShortDesc of C] starts to shimmer...";
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
		let T be a random placed jungle room;
		while T is Dungeon12 or T is the location of the player:
			now T is a random placed jungle room;
		say "[BigNameDesc of M] gets between you and the [X]. [line break][speech style of M]As mother of my children, you are above fighting these vermin. You will not sully your hands fighting them under any circumstances.[roman type][line break]He taps you on the forehead, and the scenery around you shifts as you reappear in the [printed name of T]!";
		teleport to T;
	otherwise:
		compute default protecting of M.

To say SexSubmissionFlav of (M - djinn): [this is customized because I rewrote the scene so the player is floating a couple feet off the ground.]
	if diaper quest is 1:
		say "[one of]Recognizing how much more powerful [NameDesc of M] is than you, you decide not to fight back[or]As humiliating as it is to let him have his way, it's not like you can do much about it anyway[or]You submit to the superior being[in random order].";
	otherwise if the relevant sex addiction of M < 10:
		say "[one of]Recognizing how much more powerful [NameDesc of M] is than you, you decide not to fight back[or]As humiliating as it is to let him have his way, it[']s not like you can do much about it anyway[or]You submit to the superior being plowing away at your [random body part penetrated by M][in random order].";
	otherwise:
		say "[one of]You allow [NameDesc of M] to violate you as much as he likes. He's in charge![or]You relax and enjoy the feeling of [NameDesc of M]'s [LongDickDesc of M].[at random]".

To say SexResistFlav of (M - djinn):
	say "[one of]You hopelessly flail against [NameDesc of M]'s grip, doing everything you can to resist the invasion.[or]You seem to be being held still by some kind of magical force, leaving you with no real way of resisting, but you still try![or]You flail around and make as much noise as you can, but no matter how much you try, you can't do anything about [NameDesc of M]'s powerful pistoning.[or]You fight against the [if interracial fetish is 1 and M is penetrating a fuckhole]pleasure that his [LongDickDesc of M] is sending through your sensitive hole[otherwise][M][end if] but it's no use, you can't do anything to stop the action![in random order]".

To say angry punishment insult of (M - djinn):
	if M is not friendly-fucking:
		say "[first custom style]'You dare to disrespect me?! Learn your place, worm.'[roman type][line break]";
	otherwise:
		say "[first custom style]'There's still some stubbornness left in you. I like that. I'll let you off this time.'[roman type][line break]".[He's not raping you, so he doesn't tear your clothes off, but he isn't all that happy either.]

To compute happy reward of (M - djinn):
	if M is friendly-fucking, say "[speech style of M]'It was a wise decision to not make an enemy of me.'[roman type][line break]".

Section 1 - Attack

To compute the flying player taunting of (M - djinn):
	if a random number from 1 to 6 is 1:
		say "[BigNameDesc of M] laughs at you. [line break][speech style of M]'[one of]Your attempt at flight is laughable.'[or]If the [great one] had intended you to fly, he would have given you my power!'[or]How dreadfully pathetic, even for a mortal.'[in random order][roman type][line break][if the humiliation of the player < 17500]You [one of]wince[or]shudder[or]cringe[purely at random] with shame.";
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
	say "[speech style of M]'Yes... yes... [if F is asshole]I can feel it coming!'[otherwise]Your [cunt] is pleasing to me, mortal!'[end if][roman type][line break][BigNameDesc of M] bellows as [he of M] ejaculates, filling the condom with wave after wave of fresh [semen]. You can feel it shifting inside of you, almost as if [his of M] little baby-making bastards were struggling to bust out of their flimsy latex prison. It stretches further and further as it struggles to contain the rest of [his of M] cum, rounding out as the commotion inside reaches its peak.[line break]".

To compute condom filling of (M - djinn):
	if water-bomb is off-stage:
		say "After [he of M] rolls it off of [his of M] [LongDickDesc of M] and ties the end, you and [NameDesc of M] both look at the massive cumfilled condom with a sense of awe. [BigNameDesc of M] grins.[line break][speech style of M]'Well I guess that's yours to keep as a trophy!'[roman type][line break][big he of M] delicately hands it to you. Perhaps you could use it as a weapon?";
		now water-bomb is carried by the player;
		now water-bomb is bland;
		now the cum-known of water-bomb is 1;
	otherwise:
		compute default condom filling of M.

To compute post climax effect of (M - djinn) in (F - asshole):
	if M is interested:
		compute happy reward of M;
		satisfy M.

To say CondomFailFlav of (M - djinn) in (F - asshole):
	say "It can[']t handle the strain! You feel it burst open inside of you, and a gush of warmth floods your [asshole], gurgling upwards into your bowls at an incredible pace. It's almost like you can feel [his of M] energetic swimmers moving around in your gut.".

To say CondomPieFlav of (M - djinn) in (F - a fuckhole):
	say "Miraculously, it seems to hold, and [NameDesc of M] laughs as [he of M] pulls out and carefully peels it off. [line break][speech style of M]'I am surprised your mortal condom could hold my seed!'[roman type][line break]".

To say CreampieFlav of (M - djinn) in (F - asshole):
	say "[speech style of M]'Yes... yes... I can feel it coming!'[roman type] [BigNameDesc of M] bellows as [he of M] ejaculates deep inside your [asshole]. Your jizz enema gurgles into your bowels at an incredible pace. It's almost like you can feel [his of M] little baby-making bastards swimming around energetically inside your gut.".

To decide if (M - djinn) is losing wrapper in (F - vagina):
	if the class of the player is priestess or the class of the player is cultist, decide yes;
	if a random number between 1 and 3 is 1, decide yes;
	decide no.

To compute post climax effect of (M - djinn) in (F - vagina):
	if M is unwrapped and pregnancy fetish is 1 and the pregnancy of the player is 0:
		say "You immediately feel the [if the bbc addiction of the player > 4]superior virility of [his of M] nubian sperm[otherwise]magical sperm[end if] barrelling down your tubes and straight to your undefended egg[if inhuman pregnancy > 0]s[end if]. A strange tingle shoots through you from deep inside, kind of in your belly, almost, and you feel certain you're now pregnant with [his of M] child[if inhuman pregnancy > 0]ren[end if]![line break]";
		compute sudden pregnancy; [Allows a chance even when sudden pregnancy is disabled]
		if the pregnancy of the player is 0:
			now the pregnancy of the player is 1;
			now the father is M;
			check sudden pregnancy; [Ensures sudden pregnancy rather than normal when the option is enabled]
	if M is interested:
		compute happy reward of M;
		satisfy M.

To say SuddenPregFlav of (M - djinn):
	say "[BigNameDesc of M] places one hand on your belly expectantly. You watch with [horror the semen addiction of the player] as your belly quickly balloons outwards over a couple of seconds until it has reached full-term pregnancy.";
	cutshow figure of djinn cutscene 2 for M;
	say "[speech style of M]'Excellent, [one of]it appears that we are compatible. Don't worry, this is completely normal, this instant gestation period often happens with Djinn. You'll give birth soon enough. Make sure you're here when you do[or]another perfect conception. See you soon[stopping].'[line break][variable custom style][if the semen addiction of the player < 5]Fuck fuck FUCK! [one of]I'm really pregnant with this asshole's magical demon spawn[or]How did I let this happen again[stopping]?![otherwise if the semen addiction of the player < 11]Well at least I won't be pregnant for long, I guess...[otherwise]Ooh, feeling so heavily pregnant feels so right...[end if][roman type][line break]".

To say CondomFailFlav of (M - djinn) in (F - vagina):
	say "It can't handle the strain! You feel it burst open inside you, and a gush of warmth floods your [vagina][if pregnancy fetish is 1] as your womb explodes with sensation, and [his of M] horde of eager swimmers rush straight for your fallopian tubes, filling every crevice and tunnel they can find![line break][otherwise]. [line break][speech style of M]'Hahaha! Your mortal condom was no match for my divine sperm!'[roman type][line break][end if]".

To say CreampieFlav of (M - djinn) in (F - vagina):
	say "[speech style of M]'Yes... yes... [if pregnancy fetish is 1 and the pregnancy of the player is 0]take my seed, and carry my spawn, whore[otherwise]your [cunt] is pleasing to me, mortal[end if]!'[roman type][line break][BigNameDesc of M] ejaculates deep inside your [vagina][if pregnancy fetish is 1]. Your womb explodes with sensation, as you feel [his of M] swimmers rush straight for your fallopian tubes, filling every crevice and tunnel they can find[end if]!".


To compute labour to (M - djinn):
	if M is regional and M is alive:
		compute pregnancy clothing displacement;
		say "[PregFlav][if the father is in the location of the player]The [father][otherwise]The [father] appears almost as if on cue! [big he of M][end if] uses [his of M] powers to pull you into the air, and turn you upside down. You begin to feel a bit queasy as [if inhuman pregnancy > 0]one by one, eight small black babies push their way head-first out of your painfully gaping vagina. Each one[otherwise]a little black baby emerges upwards from your painfully gaping vagina, and is[end if] left hovering above your suspended body to take breath and begin to cry. [line break][speech style of M]'There there my little one[if inhuman pregnancy > 0]s[end if]. You're safe now.'[roman type][line break]With a click of [his of M] fingers, [NameDesc of M] sends [his of M] new charge[if inhuman pregnancy > 0]s[end if] up into the sky, presumably to their new home.[line break][speech style of M]'Good job, mortal, I may have to use your womb again in the future to further expand my clan.'[roman type][line break][big he of M] leaves you to recover from your ordeal.";
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
	say "With a flick of two of [NameDesc of M]'s fingers, the [K] comes completely off! It's been entirely destroyed.";
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

This is the djinn friendly convinced rule:
	if presented-orifice is a reasonable target and (the refactory-period of current-monster <= 0 or (presented-orifice is face and the wish history of current-monster is 2)):
		now the chosen-orifice of current-monster is presented-orifice;[This is on top so flavour can refer to chosen orifice.]
		say "[PresentFriendlyAcceptanceFlav of current-monster]";
		rule succeeds;
	otherwise if presented-orifice is not nothing:
		say "[PresentFriendlyRejectionFlav of current-monster]".
The monster friendly convinced rule of djinn is usually the djinn friendly convinced rule.

To say PresentAcceptanceFlav of (M - djinn):
	say "[BigNameDesc of M] laughs at your request. [line break][speech style of M]'Indeed, an excellent choice.'[roman type][line break]".

To say PresentRejectionFlav of (M - djinn):
	say "[BigNameDesc of M] laughs at your request. [line break][speech style of M]'Why would I care about the feelings of a mere mortal such as yourself?'[roman type][line break]".

Definition: djinn is willing to let go: decide no.

To say PresentFriendlyAcceptanceFlav of (M - djinn):
	say "[speech style of M]'[if the wish history of M is 2]You have chosen wisely[otherwise]Very well, I shall grant you the honour of worshipping my cock[end if].'[roman type][line break]".

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

To compute tripping attack of (M - djinn):
	say "[BigNameDesc of M] uses a mystical force to try and pick you up off the ground!";
	let D be the tripping roll of M;
	if D >= the dexterity of the player and M is not-blinded:
		say "[MonsterTrippedFlav of M]";
		try kneeling;
		if the player is prone, check attack of M;
	otherwise:
		say "[MonsterFailedTripFlav of M]";
		if the blind-status of M > 0:
			decrease the blind-status of M by 1;
			if the blind-status of M is 0, say "[BigNameDesc of M] is no longer blind!".

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
				say "[speech style of M]'Hmm, that's weird...'[roman type][line break]He doesn't seem satisfied.";
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

To compute damage of (M - djinn):
	if the health of M > 0:
		if M is uninterested or M is friendly:
			say "[BigNameDesc of M] bellows with anger. [line break][speech style of M]'You dare challenge me to a duel? Do you not know who I am?!'[roman type][line break]";
			anger M;
			now M is interested;
		otherwise:
			anger M;
			now M is interested;
			say DamageReaction (the health of M) of M;
	otherwise:
		if the health of M <= 0 and M is not dying:
			compute death of M.

To say DamageReactHealthy of (M - djinn):
	say "[BigNameDesc of M] takes the hit without flinching!".

To say DamageReactDamaged of (M - djinn):
	say "[BigNameDesc of M] takes the hit, struggling not to react!".

To say DamageReactTired of (M - djinn):
	say "[BigNameDesc of M] takes the hit, growling!".

To say DamageReactWeak of (M - djinn):
	say "The djinn grunts [he of M] takes the hit, eyeing the area around you.".

To compute unique death of (M - djinn):
	say "[BigNameDesc of M] seems to be weakening rapidly, and [he of M] begins to take flight. [big he of M] shouts at you as [he of M] flees. [line break][speech style of M]'I'll be back, mortal! I can never be fully defeated. And the next time we meet, I'll be even stronger!'[roman type][line break]";
	let L be a random held magic lamp;
	if L is nothing, now L is a random magic lamp in the location of the player;
	if L is magic lamp:
		say "But wait! The [L] stirs, shooting out of your [if there is a worn bag of holding]bag[otherwise]hands[end if] and to the ground. The djinn is no longer soaring into the air, but sinking towards the lamp! [line break][speech style of M]'No, what?! Where did you get that? How did you know that a meagre oil lamp is the only device that can contain me?! AAAH!'[roman type][line break][BigNameDesc of M] sinks into the entrance of the lamp, shrinking as [he of M] disappears. ";
		destroy M;
		now the wishes of L is 3;
		force inventory-focus redraw;
		say "You now have a [L]! You pick it back up.";
		compute autotaking L;
	otherwise:
		say "You feel like you haven't seen the last of [him of M].";
		DifficultyUp M by 1;
		now the health of M is the maxhealth of M;
		bore M;
		regionally place M.

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
		if breast-milk-this-time is 1, MilkDrunkUp 1;
		otherwise StomachUp 2.

To say DQFeedingResistReactionFlav of (M - a djinn):
	say "[speech style of M]'[one of]What, don't like it? Should have wished for mother's teat... I favor nutrition over taste.'[or]If you don't like the flavor now you REALLY won't appreciate what it's going to make you do later!'[or]Oh, I'm paralyzed at the thought of you breaking free... of an almighty Djinn. You do have the decision making skills of an infant, don't you?'[then at random][roman type][line break]".

Section 4 - Dominant Sex

To suggestFucker (F - a body part) for (M - djinn):
	if F is penis:
		say "Do you want to see if [he of M]'ll suck your dick? [big he of M] might try to mess with you.";
		if the player is consenting:
			now player-fucker is F;
			now player-fuckchoice is FUCK-BLOWJOB;
	otherwise if F is a fuckhole:
		say "Do you want to try riding [him of M]?";
		if the player is consenting:
			now player-fucker is F;
			now player-fuckchoice is FUCK-RIDE;
	otherwise:
		say "You decide against it.".

To say DominanceIntro of (M - djinn):
	say "You take a confident step forward, grabbing [him of M] by the shoulders. [PowerBottomComment of M] [BigNameDesc of M] unfolds [his of M] folded arms and waves them as the smoke from [his of M] lower body envelops you.[line break][speech style of M]'You will grant ME a wish? Ridiculous.'[roman type][line break]";
	if there is a held condom-providing thing:
		say "Would you like to have [him of M] wear a condom?";
		if the player is consenting:
			say CondomManualFlav of M;
			now M is wrapped.

To say PowerBottomComment of (M - djinn):
	if the player is not able to speak:
		say "You give [NameDesc of M] a smouldering look, hopefully conveying how [if the bimbo of the player < 6]dominant you are even though you're about to sit on [his of M] [DickDesc of M][otherwise if the bimbo of the player < 12]compromising this situation is for [him of M] and [his of M] [DickDesc of M][otherwise]much you want to sit on [his of M] [DickDesc of M][end if].";
	otherwise if the bimbo of the player < 6:
		say "[first custom style]'[one of]Now I'm the one granting wishes.'[or]I can grant wishes too, if you can fucking handle it.'[or]Just this one time, your wish is my command.'[at random][roman type]";
	otherwise if the bimbo of the player < 12:
		say "[variable custom style]'[one of]Don't you have a wish for me?'[or]I can grant wishes too.'[or]Here's your chance to get your wish granted.'[at random][roman type]";
	otherwise:
		say "[second custom style]'[one of]I'll grant ANY wish, baby.'[or]Don't hold back, baby. Wish for ANYTHING.'[or]I can grant wishes too. But I'll do ANYTHING.'[at random][roman type]".

To say DominanceFailure of (M - djinn):
	if player-fucker is penis:
		say "You take a confident step forward, grabbing [him of M] by the shoulders. [line break][variable custom style]'I'm about to make you wish for my cock.'[roman type][line break][BigNameDesc of M] cocks an eyebrow as [he of M] unfolds [his of M] folded arms, waving them as the smoke from [his of M] lower body envelops you. You do your best to overpower [him of M] as the smokescreen closes in around you, ignoring the odd feeling of [if the number of worn clothing > 0]your clothing slowly being removed from your body[otherwise]the smoke rubbing itself up against your nude body[end if]. Unfortunately, its too distracting, and you let go of [him of M] and start trying to bat the smoke away.[line break][speech style of M]'Very well, mortal. I wish for your cock!'[roman type][line break]";
	otherwise:
		say DominanceIntro of M;
		unless M is wrapped:
			say "You hold onto [NameDesc of M] as the smokescreen closes in around you, trying your best not to be intimidated. However, the sensation of [if the number of worn clothing > 0]your clothing slowly being removed from your body[otherwise]the smoke rubbing itself up against your nude body[end if] is too much for your delicate self to handle, and you release [NameDesc of M] and frantically try to bat the smoke away.[line break][speech style of M]'Hmph. Very well, mortal. I wish for a harem!'[roman type]";
		say "After a moment, the smoke clears, and you find yourself in an unfamiliar room...";

To say CondomManualFlav of (M - djinn):
	say "You take out a condom as the smokescreen closes in around you, trying your best not to be intimidated as you feel [if the number of worn clothing > 0]your clothing slowly being removed from your body[otherwise]the smoke rubbing itself up against your nude body[end if]. With only your sense of touch to guide you,[if the bimbo of the player > 10 and face is not actually occupied]clumsily roll the condom down [his of M] length with your mouth[otherwise]clumsily roll the condom down [his of M] length[end if], making sure not to get disoriented as you smooth the rubber over [his of M] tool.".

To compute failed dominance punishment of (M - djinn):
	if player-fucker is penis:
		oral dominate M;
	otherwise:
		bottom dominate M;
	bore M.

[The djinn steals your dick and then uses it to fuck you]
To oral dominate (M - djinn):
	let S be a random worn dildo-usage strapon-panties;
	let F be asshole;
	if the player is possessing a vagina or tg fetish is 1, now F is vagina;
	let O be the size of penis - the openness of F;
	say "The smoke clears, and you find yourself laying in a huge bed with gorgeous canopy curtains and decadently soft silk sheets. You sit up, and [if the number of worn clothing > 0]see that not only are you completely naked,[otherwise]see that[end if] [if the player is female]your [printed name of S] has completely disappeared[otherwise if tg fetish is 1]your penis has completely disappeared, leaving a brand new [vagina] in its place[otherwise]your [SexDesc of penis] has completely disappeared, leaving a strange patch of glittering darkness in its place[end if]. There is no time to feel shocked. As soon as you move, a dark-skinned [man of M] with the perfectly sculpted [if M is presenting as male]chest, abs, and jawline of a god[otherwise]breasts, hips and musculature of a goddess[end if] parts the bedcurtains. Your breath is temporarily stolen away by [his of M] gorgeous figure, but you are brought back to your senses by a single flaw, right there [if full-lady fetish is 1 or S is worn]hanging from a harness between [his of M] legs[otherwise]between[end if] [his of M] legs.[line break][speech style of M]'I wished for your cock, and it seems my wish was granted.'[roman type][line break]The [man of M] muses, climbing into bed with you and easily shrugging off your resistance as [he of M] [if F is vagina]spreads your legs.[otherwise]flips you over and spreads your asscheeks.[end if]";
	if sexual-penis-length > 8:
		say "[line break][speech style of M]'Hm. Its a little big, but I suppose that isn't my problem.'[roman type][line break]The [man of M]'s mirth is clearly evident in [his of M] voice as [he of M] lines [italic type]your[roman type] problem up with your [variable F]. [if O < 0]You can't help but sigh as you are slowly penetrated by[otherwise if O < 4]You can't stifle a sigh as you slowly stretch to accommodate[otherwise if O < 8]You grit your teeth as you slowly stretch to accommodate[otherwise]You grit your teeth as you slowly, painfully stretch to accommodate[end if] your own [SexDesc of penis], and the flawless [man of M] on top of you slowly begins to thrust. Even if the [sexual-player-penis] doesn't belong to [him of M], [his of M] technique is as perfect as [his of M] body, and every single thrust feels as though it were crafted by heaven. You clench your fists and curl your toes as you go straight over the edge.";
		if the player is female, vaginally orgasm shamefully;
		otherwise anally orgasm shamefully;
		say "The [man of M] slams '[his of M]' [sexual-player-penis] home in the exact moment that you cum, emitting a thoroughly perfect groan as [he of M] floods your [variable F] with a huge load. [big he of M] chuckles as [he of M] pulls out, waving [his of M] hands as smoke closes in around you once again.";
	otherwise if sexual-penis-length > 5:
		say "[line break][speech style of M]'The size is good, but nothing feels better than your own tool, wouldn't you agree?'[roman type][line break]The [man of M]'s mirth is clearly evident in [his of M] voice as [he of M] lines [italic type]your[roman type] [SexShaft] up with your [variable F]. [if O < -3]You find yourself wishing you were a little bigger as you are penetrated[otherwise if O < 0]You can't help but sigh as you are slowly penetrated by[otherwise if O < 3]You can't stifle a sigh as you slowly stretch to accommodate[otherwise]You grit your teeth as you slowly stretch to accommodate[end if] your own [SexDesc of penis], and the flawless [man of M] on top of you slowly begins to thrust. Even if the [sexual-player-penis] doesn't belong to [him of M], [his of M] technique is as perfect as [his of M] body, and every single thrust feels as though it were crafted by heaven. You moan desperately as you try to hold on, hoping against hope that [he of M] won't actually force you to cum from your own [sexual-player-penis], but its no use. You clench your fists and curl your toes as you go over the edge.";
		if the player is possessing a vagina, vaginally orgasm shamefully;
		otherwise anally orgasm shamefully;
		say "The [man of M] slams '[his of M]' [sexual-player-penis] home in the exact moment that you cum, emitting a thoroughly perfect groan as [he of M] fills your [variable F] with a big load. [big he of M] chuckles as [he of M] pulls out, waving [his of M] hands as smoke closes in around you once again.";
	otherwise if sexual-penis-length > 3:
		say "[line break][speech style of M]'Hm. It could be bigger, but I suppose this is the best a mortal like you can do.'[roman type][line break]The [man of M]'s mirth is clearly evident in [his of M] voice as [he of M] lines [italic type]your[roman type] [SexShaft] up with your [variable F]. [if O < -6]You can't help wishing you were a little bigger as you are penetrated[otherwise if O < -3]You find yourself wishing you were a little bigger as you are penetrated[otherwise if O < 0]You can't help but sigh as you are slowly penetrated by[otherwise if O < 3]You can't stifle a sigh as you slowly stretch to accommodate[end if] your own [SexDesc of penis], and the flawless [man of M] on top of you slowly begins to thrust. Even if the [sexual-player-penis] doesn't belong to [him of M], [his of M] technique is as perfect as [his of M] body, and every single thrust feels as though it were crafted by heaven. You moan desperately as you try to hold on, hoping against hope that [he of M] won't actually force you to cum from your own [sexual-player-penis], but its no use. You clench your fists and curl your toes as you go over the edge.";
		if the player is possessing a vagina, vaginally orgasm shamefully;
		otherwise anally orgasm shamefully;
		say "The [man of M] slams '[his of M]' [sexual-player-penis] home in the exact moment that you cum, emitting a thoroughly perfect groan as [he of M] shoots several spurts of [semen] into your [variable F]. [big he of M] chuckles as [he of M] pulls out, waving [his of M] hands as smoke closes in around you once again.";
	otherwise:
		say "[line break][speech style of M]'I can't remember a time when I've been this excited. Is this how you feel all the time?'[roman type][line break][BigNameDesc of M] emits a shuddering sigh as [he of M] pushes [his of M] [sexual-player-penis] into your [if the player is possessing a vagina or tg fetish is 1][vagina][otherwise][asshole]. Less than a second later, [big he of M] freezes, and you feel a faint surge of warmth inside you.[line break][second custom style]'...'[roman type][line break][speech style of M]'...lets call this a draw.'[roman type][line break]Since it was your [sexual-player-penis], the embarrassment written all over [his of M] face is completely mutal, and you avoid eye contact with each other as the smoke closes in around once again.";
	if the player is possessing a vagina, PussyFill the semen load of the player;
	otherwise AssFill the semen load of the player;
	say "You find yourself back in [the location of the player], [semen] leaking out of your [if the player is possessing a vagina][vagina][otherwise][asshole][end if] and your [SexDesc of penis] back where it belongs.";
	Bore M.[he already fucked you, so he doesn't do it again]

[#MG: The "keep me warm" task felt redundant when I was writing it, so it was scrapped.]
To bottom dominate (M - djinn):
	let R be a random number between 1 and 3;
	let W be a random wench;
	say "After a moment, the smoke clears, and you find yourself in a well decorated room, standing in a lineup of unfamiliar [if lady fetish is 2]sissies[otherwise]women[end if]. All of you are naked aside from a collar around each of your necks. You follow their gazes to the center of the room, where a dark-skinned [man of M] is resting on an incredibly expensive looking bed. [big his of M] nude body has the perfectly sculpted [if M is presenting as male]chest, abs, and jawline of a god[otherwise]breasts, hips and musculature of a goddess[end if], and your breath is stolen away by the beauty of [his of M] figure. [big his of M] gaze slowly passes over each [sissy-girl] in the room, and your heart skips a beat as [his of M] eyes linger on you.[line break][speech style of M]'Hm...who should join me in my bed tonight...'[roman type][line break]Silence immediately falls over the room, promptly followed by the deafening sound of shrieking.[line break][second custom style]'Please choose me!'[roman type][line break][line break][second custom style]'Choose me, choose ME!'[roman type][line break][line break][second custom style]'I WANT YOU!'[roman type][line break][if the player is ashamed]Your own voice is among them, and you feel[otherwise]Your own voice is not among them, but you still feel[end if] a spark of excitement when [his of M] gorgeous face breaks into a grin.[line break][speech style of M]'You, be my headrest!'[roman type][line break]";
	if R is 1:[You have to stay still and not move, and since everything is happening ontop of you, you get very turned on]
		say "You hesistantly join your [literalMistress of M] on the bed and lie down next to [him of M], wincing as [he of M] climbs ontop of you and lays [his of M] head [if the largeness of breasts > 5]between your[otherwise]against your[end if] [BreastDesc]. [big his of M] weight shifts as [he of M] calls three more girls to [him of M]. The first two wedge their bodies in tightly on either side of [him of M], completely robbing you of your freedom of movement, and the last, luckiest [sissy-girl] takes [his of M] place ontop of your shared [literalMistress of M], compounding the weight ontop of you. Its pretty humiliating to become a literal bottom rung, and the envious looks on the faces of the [sissy-girls] let you know they won't be giving you any sympathy. Ontop of that, the sensation of your [literalMistress of M]'s glorious body in full contact with your own is impossibly stimulating, but with no way of moving your arms, you are forced to simply lie there and endure. This is clearly the worst job of them [if the delicateness of the player < 7]all, and it surprises you how easy it was to immediately obey [him of M].[otherwise if the delicateness of the player < 14]all, but you'd do anything to please your beloved [literalMistress of M].[otherwise]all, but even that is too good for a useless whore like yourself.[end if][line break][speech style of M]'I'm cumming, slave!'[roman type][line break]Your [literalMistress of M] emits a powerful groan, bucking [his of M] hips as [he of M] fills the [sissy-girl] ontop of [him of M] with [semen].[line break]Smoke closes in once again, and you find yourself back in [the location of the player]. [bold type][BigNameDesc of M]'s wish has made you permanently more submissive.[roman type]";
		Arouse 1000;
		moderateHumiliate;
		DelicateUp 2;
	otherwise if R is 2:[You get fucked. You become the target of envy for the other girls, and get a dignity boost. Also you get a creampie.]
		let F be player-fucker;
		let O be the girth of M - the openness of F;
		say "The [sissy-girl] next to you joins [him of M] on the bed, [his of W] cheeks reddening as your [literalMistress of M] lays [his of M] head [if lady fetish is 2]on [his of W] chest.[otherwise]between [his of W] breasts.[end if][line break][speech style of M]'You two, keep me warm!'[roman type]Two more [sissy-girls] leave the lineup and lay down on either side of [him of M], shooting competitive glares at each other as they press their nude bodies up against their [literalMistress of M].[line break][speech style of M]'Hmm, now who will be the queen...'[roman type]You hold your breath as [he of M] slowly sweeps [his of M] gaze over the remaining lineup, before finally pointing directly at you. Self satisfaction wells up inside you as you join the others in your [literalMistress of M]'s bed, knowing every other [sissy-girl] in the room wishes [he of W] was you. You can feel the envious glares of the other [sissy-girls] as you slowly lower yourself onto [his of M] [LongDickDesc of M], [if O > 4]You grit your teeth and ignore the pain as you slowly, slowly force [his of M] [LongDickDesc of M] into[otherwise if O > 2]You emit a low moan as you slowly lower yourself onto [his of M] [LongDickDesc of M],not caring that it's too big for[otherwise if O > 0]You sigh as you lower yourself onto [his of M] [LongDickDesc of M], loving the way it perfectly fills up[otherwise if O > -2]You moan loudly as you lower yourself onto [his of M] [LongDickDesc of M], feeling a sense of satisfaction from how easily it slides into[end if] your [variable F]. Channelling your enthusiasm into effort, you begin to ride [him of M], working hard so [he of M] won't have to lift a finger. [if the delicateness of the player < 7]It surprises you how easy it is to ignore your own pleasure and focus on your [literalMistress of M], and[otherwise if the delicateness of the player < 14]It feels so good to be of use to your [literalMistress of M], and[otherwise]Even a useless whore like you can still please your [literalMistress of M], and[end if] as [his of M] [DickDesc of M] begins to throb you can't help thinking this much better than a chance to cum. [big he of M] emits a powerful groan, [his of M] gorgeous abdominal muscles clenching as [he of M] fills [if M is wrapped]the condom[otherwise]your [variable F][end if] with potent [semen]. [line break]Smoke closes in once again, and you find yourself back in [the location of the player], [if M is wrapped]your [variable F] still tingling from the inside out[otherwise]a fresh creampie leaking out of your [variable F][end if]. [bold type][BigNameDesc of M]'s wish has made you permanently more submissive.[roman type]";
		moderateDignify;
		now M is penetrating F;
		ruin F times 3;
		DelicateUp 2;
		if the player is female, PussyFill the semen load of M;
		otherwise AssFill the semen load of M;
	otherwise:[You get very humiliated since you didn't get to be a part of it at all.]
		say "The [sissy-girl] next to you joins [him of M] on the bed, [his of W] cheeks reddening as your [literalMistress of M] lays [his of M] head [if lady fetish is 2]on [his of W] chest.[otherwise]between [his of W] breasts.[end if][line break][speech style of M]'You two, keep me warm!'[roman type]Two more [sissy-girls] leave the lineup and lay down on either side of [him of M], shooting competive glares at each other as they press their nude bodies up against their [literalMistress of M].[line break][speech style of M]'Hmm, now who will be the queen...'[roman type]You hold your breath as [he of M] slowly sweeps [his of M] gaze over the remaining lineup, before finally pointing to...someone else. Jealousy and humiliation well up inside you as another [sissy-girl] joins [him of M] in [his of M] bed. Smoke closes in around you once again, and you find yourself back in [the location of the player]. [bold type][BigNameDesc of M]'s wish has made you permanently more submissive.[roman type]";
		severeHumiliate;
		DelicateUp 1;
	Bore M.

To say DominanceSuccess of (M - djinn):
	if player-fucker is penis:
		say "You take a confident step forward, grabbing [him of M] by the shoulders. [line break][variable custom style]'I'm about to make you wish for my cock.'[roman type][line break][BigNameDesc of M] cocks an eyebrow as [he of M] unfolds [his of M] folded arms, waving them as the smoke from [his of M] lower body envelops you. You do your best to overpower [him of M] as the smokescreen closes in around you, ignoring the odd feeling of [if the number of worn clothing > 0]your clothing slowly being removed from your body[otherwise]the smoke rubbing itself up against your nude body[end if].[line break][speech style of M]'Very well, mortal. I wish for your cock!'[roman type][line break]";
		weiner dominate M;
	otherwise:
		say DominanceIntro of M;
		now refactoryperiod is 1;[Ensures the player does not orgasm too early during the scene]
		unless M is wrapped:
			say "You hold onto [NameDesc of M] as the smokescreen closes in around you, trying your best not to be intimidated. However, the sensation of [if the number of worn clothing > 0]your clothing slowly being removed from your body[otherwise]the smoke rubbing itself up against your nude body[end if] is too much for your delicate self to handle, and you release [NameDesc of M] and frantically try to bat the smoke away.";
		say "[line break][speech style of M]'Hmph. Very well, mortal. I wish for a slave!'[roman type]";
		female dominate M.

[The djinn steals your penis, but he accidentally gives you an even better one!]
To weiner dominate (M - djinn):
	let S be a random worn dildo-usage strapon-panties;
	say "The smoke clears, and you find yourself [if the number of worn clothing > 0]completely [end if]naked in a huge bed with gorgeous canopy curtains and decadently soft silk sheets. You sit up as a dark-skinned [man of M] with the perfectly sculpted [if M is presenting as male]chest, abs, and jawline of a god[otherwise]breasts, hips and musculature of a goddess[end if] parts the bedcurtains. Your breath is temporarily stolen away by [his of M] gorgeous figure, but you are brought back to your senses by a single, familiar flaw [if full-lady fetish is 1 or S is worn]hanging from a harness between [his of M] legs[otherwise]between[end if] [his of M] legs.[line break][speech style of M]'I wished for your cock, and it seems my wish was granted.'[roman type][line break]The [man of M] muses, smirking as [he of M] climbs into bed and grabs your waist. However, [he of M] freezes when [he of M] looks between [italic type]your[roman type] legs and sees that your [sexual-player-penis] has been replaced by a [LongDickDesc of M], which is [if futanari fetish is 0 and the player is female]sticking out of a sparkling harness[otherwise]fully erect and ready for action[end if]. You take advantage of [his of M] momentary confusion to roll ontop of [him of M] and straddle [his of M] chest.[line break][speech style of M]'N-now I know what you're thinking, but you should really reconsider. D-don't do anything you'll regret!'[roman type][line break]Do you still want to use [him of M] like you planned?";
	if the player is consenting:[yes, use him!]
		say "You pretend to think about it, slowly stroking your borrowed penis as you about how good its going to feel between [his of M] perfect lips. The [man of M] continues looking up at you with a pleading expression on [his of M] face, but the hope in [his of M] eyes is fading by the second. [big he of M] yelps as you slap [him of M] a couple times with your new [DickDesc of M], and [he of M] loudly gulps as you bring the tip to [his of M] lips. A moment passes. [line break][speech style of M]'Please, when you switch organs, there's a feedback, and-'[roman type][line break]You cut [him of M] with a mouthful of [LongDickdesc of M], holding [him of M] by the temples as you begin to fuck [his of M] face with shallow thrusts. [big his of M] mouth produces sensations far beyond mere mortals, and within seconds you find yourself gasping with desperate pleasure. The [man of M] is no different, and [he of M] rolls [his of M] eyes back as [he of M] begins to widly buck [his of M] hips.[line break][variable custom style]'FUUUUCK-'[roman type][line break][line break][speech style of M]' GNNNNNN-!'[roman type][line break]You both cry out simultaneously as explosive waves of pleasure ricochet through your body, your borrowed [DickDesc of M] spasming powerfully as it jizzes straight down the [man of M]'s perfect throat. From the blissful expression on [his of M] face, [big he of M]'s having a similar experience of [his of M] own, and you feel [him of M] swallowing desperately in an attempt to keep up. Finally, you roll off [him of M], leaving a trail of [semen] and spittle across [his of M] cheek.";
		orgasm;
		orgasm M;
		anger M;
		FavourDown M by 2;
		say AfterDominationComment 0 of M;
		BlowGet;
	otherwise:[spare him]
		Calm M;
		say "You release [him of M] and roll off the bed. [big he of M] sighs in relief.";
		FavourUp M by 2;
		say AfterDominationComment 1 of M.

To female dominate (M - djinn):
	let F be player-fucker;
	say "The smoke clears, and you find yourself [if the number of worn clothing > 0]completely [end if]naked in a huge bed with gorgeous canopy curtains and decadently soft silk sheets. You see movement out of the corner of your eye, and your breath is stolen away as a tall, dark-skinned [man of M] parts the bedcurtains. [big he of M] has the perfectly sculpted [if M is presenting as male]chest, abs, and jawline of a god, and[otherwise]breasts, hips and musculature of a goddess, and[end if] and even the sound of [his of M] voice is beautiful in its own way.[line break][speech style of M]'Good morning, slave. I hope you slept well.'[line break][roman type]The word 'slave' jars you back to your senses, and you sit up abruptly as [he of M] climbs into the bed with you.[line break][variable custom style]'Me? A slave? [if the delicateness of the player < 6]Don't think you can handle me just because you're a little hot.'[otherwise if the delicateness of the player < 12]Just for that, I'm NOT making you breakfast in the morning.'[otherwise]Not that I'm opposed to it, but I think I'd remember belonging to a stud like you.'[end if][roman type][line break][speech style of M]'Again you play these games. I thought I had broken you of this, but it seems we have more work to do this night.'[roman type][line break]Your '[literalMistress of M]' shoves you over and immediately straddles your chest. Those gorgeous muscles of [his of M] aren't just for show, and [he of M] easily shrugs off your feeble attempts to struggle.[line break][variable custom style]'[if the delicateness of the player < 6]I told you, I'm not-'[otherwise if the delicateness of the player < 12]Can't we discu-'[otherwise]Ok baby, I'm y-'[end if][roman type][line break]";
	let R be a random number between (the oral sex addiction of the player * 2) and (the intelligence of the player / 2);
	let D be 12;
	if throatskill is 1, now R is 99;
	let A be 0;
	if R > D:[You can handle his facefuck, and take it a step further by giving him a blowjob so good he can't keep his grip. You almost overpower him, but he manages to shove you away and pin you again. ]
		say "[big he of M] isn't interested in what you have to say, and immediately cuts you off by shoving [his of M] [DickDesc of M] in your mouth. You're caught by surprise, [if throatskill is 1]but you still manage to take [his of M] meat all the way down your throat without gagging at all. Thanks to your skill in deepthroating, you are able to easily relax[otherwise]and you gag lewdly as [he of M] forces [his of M] meat all the way down your throat. However, you quickly adapt to the situation and relax [end if] as [he of M] begins to aggressively fuck your face. It seems to affect [him of M] more than it affects you, and after a couple seconds [he of M] stops to catch [his of M] breath. Knowing this is your chance, you immediately pick up where [he of M] left off, moaning hungrily as you begin to suck [his of M] [DickDesc of M]. [big he of M]'s stunned for a moment, but [he of M] recovers just quickly enough to immobilize you before you can turn the tables. You glare up at [him of M] defiantly as [he of M] pulls out.[line break][speech style of M]'Submit, slave. I WILL break you.'[roman type][line break]";
		moderateDignify;
	otherwise:[You can't handle his facefuck, and he keeps it up until you nearly pass out. Thus incapacitated, he moves on to the next step]
		say "[big he of M] isn't interested in what you have to say, and immediately cuts you off by shoving [his of M] [DickDesc of M] in your mouth. You're caught by surprise, and you gag lewdly as [he of M] forces [his of M] meat all the way down your throat. [big he of M] doesn't leave you any time to adapt, [his of M] perfect balls slapping your chin as [he of M] begins to aggressively fuck your face. Even [he of M] doesn't seem to have the stamina to keep going like that for more than a few seconds, but that's more than enough to leave you too disoriented and out of breath to try and turn the tables on [him of M] when [he of M] pulls out.[line break][speech style of M]'Hm, you're close. Looks like I can finish it with this.'[roman type][line break]";
		slightHumiliate;
		now M is penetrating face;
		stimulate face from M;
		FatigueUp 30;
		now A is 1;
	now R is a random number between (the desirability of F) and (the intelligence of the player / 2);
	now D is 4 + the openness of F + the soreness of F + (the arousal of the player / 150);
	if refactoryperiod > 0, now D is 99;
	say "[if A is 1]The [man of M] gently spreads your legs, not bothering to hold you down as [he of M] guides [his of M] spit-lubed shaft into your [variable F]. Knowing you can't let this chance slip away, you quickly gather your thoughts, and as soon as [he of M] begins to thrust... your thoughts[otherwise]The [man of M]'s frustration is visible on [his of M] face as [he of M] forcibly spreads your legs. You don't resist as [he of M] guides [his of M] spit-lubed shaft into your [variable F], gathering your thoughts in anticipation of your next chance to strike, and as soon as [he of M] begins to thrust... your thoughts[end if] are blown right out of your head. ";
	now M is penetrating F;
	Ruin F times 2;
	if R < D:[Your pussy is too good]
		say "[big his of M] every movement seems as if it were crafted by heaven itself, and your body immediately surrenders to the incredible onslaught of pleasure. Your mind is about to follow when [he of M] suddenly eases off and starts thrusting at a much less mindbreaking pace. [line break]'[if the delicateness of the player < 6][first custom style][big he of M] should have finished me off. Now I'm not holding back!'[otherwise if the delicateness of the player < 12][variable custom style]Even if [he of M] holds back, I definitely won't!'[otherwise][second custom style]I can't believe [he of M]'s holding back. I'll definitely punish [him of M] for this!'[end if][roman type][line break]You wrap your legs around the [man of M]'s waist, throwing off [his of M] rhythm and forcing [him of M] to stop thrusting. [big he of M] tries to shake you off and hold you down at the same time, but even [his of M] perfect body has its limits.[line break][speech style of M]'S-submit, slave! I am in charge here!'[roman type][line break]";
		now R is a random number between 5 and (the strength of the player / 2);
		now D is 5 + (the fatigue of the player / 10);[If you got tired from being facefucked, you have less chance of success]
		if R < D:[You get on top]
			say "[big he of M] tries to quickly let go of your wrists and remove your legs, but that's exactly what you were waiting for! You grab [his of M] shoulders and use the leverage to immediately roll ontop of [him of M]! You flash [him of M] a smirk as you grab [his of M] wrists and pin them against the bed. [if M is unwrapped]If you don't want a creampie, this would be the perfect place to stop, but it would also mean you lose your chance to cum. Stop now?[end if]";
			if M is wrapped or the player is reverse bimbo consenting:[continue]
				say "You hold [him of M] down as you begin to aggressively ride [his of M] [DickDesc of M], savouring the feeling of [his of M] cockhead stroking your [if F is asshole]prostate[otherwise]g-spot[end if]. Unfortunately, [he of M] refuses to simply let you enjoy yourself, and [he of M] thrashes fiercely as [he of M] attempts to break your grip. [big he of M]'s still much stronger than a normal man, and your grip steadily begins to weaken.[line break][speech style of M]'I-IT'S OVER, SLAVE! I W-!'[roman type][line break]The [man of M] cuts [himself of M] off with a guttural groan, [his of M] [DickDesc of M] throbbing powerfully as [he of M] wildly bucks [his of M] hips. You answer with a groan of your own, [if the player is female]dousing the bed with femcum[otherwise]jizzing on [his of M] belly[end if] as [he of M] fills [if M is wrapped]the condom[otherwise]your [variable F][end if] with a sticky, white flag of defeat. A deep sense of satisfaction wells up from your core as you climb off the bed.";
				orgasm;
				severeDignify;
				if M is unwrapped:
					if the player is female, PussyFill the semen load of M;
					otherwise AssFill the semen load of M;
				FavourDown M by 1;
				say AfterDominationComment 2 of M;
			otherwise:[stop]
				say "[him of M], leaving [him of M] looking very pissed off.";
				strongDignify;
				FavourDown M by 2;
				say AfterDominationComment 3 of M;
		otherwise:[You can't get ontop]
			say "[big he of M] scowls as [he of M] forces you down flat against the bed, holding you down as [he of M] tries to struggle out of your grip without using [his of M] hands. Unfortunately, you don't have much leverage from your back, and before long, [he of M] manages to weaken your hold and slowly resume thrusting. However, [his of M] confidence is gone (and so is [his of M] stamina), so [he of M] immediately ends things by slamming [his of M] [DickDesc of M] home and [if M is wrapped]filling the condom[otherwise]filling your [variable F][end if] with [his of M] divine [semen]. [big he of M] still seems pretty humiliated when [he of M] pulls out.";
			slightDignify;
			if M is unwrapped:
				if the player is female, PussyFill the semen load of M;
				otherwise AssFill the semen load of M;
			now player-fucking is DOMINANT-NEUTRAL;
			say AfterDominationComment 2 of M;
	otherwise:[His dick is too insane]
		say "[big his of M] every movement seems as if it were crafted by heaven itself, and your body immediately surrenders to the incredible onslaught of pleasure. Your mind isn't far behind, and your last coherent thought is [if the delicateness of the player < 6]how much of a fool you were to ever deny[otherwise if the delicateness of the player < 12]how good it feels to finally accept[otherwise]how great it feels to be owned by[end if] your [literalMistress of M].[line break][speech style of M]'You are finished. Now CUM, SLAVE!'[roman type][line break]";
		if F is vagina, vaginally orgasm shamefully;
		otherwise anally orgasm shamefully;
		if the size of penis > 0:
			say "You emit an uncontrollable moan as [if the size of penis < 4]your [sissy-penis] drools a thin a white streak[otherwise if the size of penis < 8]your [manly-penis] shoots a few white streaks[otherwise]your [manly-penis] shoots several white streaks[end if] across your belly, leaving behind the last of your will to resist. Your [literalMistress of M] is satisfied with that, and takes the time to thoroughly enjoy [himself of M] before finally allowing you to feel the warmth of [his of M] load [if M is wrapped]through the condom[otherwise]being planted deep inside your [asshole][end if]. [big he of M] smirks as [he of M] pulls out.";
			CumBellyUp the size of penis;
		otherwise:
			say "You emit an uncontrollable moan as your climax erases the last of your will to resist. Your [literalMistress of M] is satisfied with that, and takes the time to thoroughly enjoy [himself of M] before finally allowing you to feel the warmth of [his of M] load [if M is wrapped]through the condom[otherwise]being planted deep inside your [variable F][end if]. [big he of M] smirks as [he of M] pulls out.";
		moderateHumiliate;
		if the player is female, PussyFill the semen load of M;
		otherwise AssFill the semen load of M;
		DelicateUp 2;
		now player-fucking is DOMINANT-SHAMEFUL;
		say AfterDominationComment 4 of M.

To say AfterDominationComment (N - a number) of (M - djinn):
	if N is 0:
		say "[speech style of M]' *Huff* *Huff*[one of]That was unwise, mortal.'[or]I won't forgive you, mortal. You will pay.'[or]You are a fool. You won't get away with this, mortal.'[in random order][roman type][line break]";
	otherwise if N is 1:
		say "[speech style of M]'[one of]Even my wishes will sometimes backfire.'[or]I can't expect everything to go my way all the time. Just most of the time.'[or]You are a good sport, mortal.'[in random order][roman type][line break]";
	otherwise if N is 2:
		say "[speech style of M]'[one of]And after all that effort to cheat...Ahem, I swear you won't get away with this, mortal!'[or]I can't believe I actually...Ahem, you will pay for this mortal. I swear.'[or]I was sure that would go...Ahem, you won't walk away from this freely, mortal. You will pay.'[in random order][roman type][line break]";
	otherwise if N is 3:
		say "[speech style of M]'[one of]This isn't over, mortal!'[or]How dare you resist me! You'll pay for this!'[or]I guess I only have myself to blame[in random order][roman type][line break]";
	otherwise if N is 4:
		say "[speech style of M]'[one of]Remember your place, slave.'[or]If you enjoyed that, you should be more obedient in the future.'[or]Never mess with a djinn.'[in random order][roman type][line break]".

To replace (M - djinn) after domination:
	say "smoke closes in around you once again, and you find yourself back in [the location of the player]. [BigNameDesc of M] is nowhere to be found.";
	if debugmode > 0, say "Regionally placing [M].";
	distract M;
	regionally place M.

Part 6 - Conversation

Section 1 - Greeting

To say FirstResponse of (M - djinn):
	say "[speech style of M]'Greetings, puny one. I'm impressed by your bravery, daring to approach an impressive entity such as myself.'[roman type][line break]".

To say RepeatResponse of (M - djinn):
	if M is unfriendly:
		say "[speech style of M]'[one of]Hmm, strange decision to show your face here again.'[or]Well if it isn't my favourite morsel... I mean mortal.'[or]Ah, my human plaything. Excellent!'[at random][roman type][line break]";
	otherwise if the player is feeling submissive:
		say "[speech style of M]'[one of]Do I not scare you, little one?'[or]Aren't you afraid of me? I would be.'[or]I see the fear in your eyes.'[or][if the player is prone]Hm. Good manners. Most manners must be taught to kneel before me.'[otherwise]Hm. That look of fear in your eyes. Have you realized the danger in looking me in the eye, mortal?'[end if][at random][roman type][line break]";
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
	say "[speech style of M]'Quiet, please.'[roman type][line break]".

Section 2 - Questioning

To compute annoyance of (M - djinn):
	if M is unfriendly:
		say "The djinn ignores your question. [line break][speech style of M]'Now is not the time for idle chatter.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Begone, young one. You begin to bore me.'[roman type][line break]";

To compute teaching of (M - djinn):
	say "[speech style of M]'There's another entity lurking around here that grants wishes... If you think of me whilst dropping your jewellery into the well, I think she will look upon you fondly.'[roman type][line break]";
	teach wishenhancing;
	if the questioned of M <= the mild-annoyance threshold of M:
		ModerateConvoFatigue M;
	otherwise:
		HeavyConvoFatigue M.

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

