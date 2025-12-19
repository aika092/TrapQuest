Quests by Clothing begins here.

A clothing-quest is a kind of object.

A clothing-quest can be disappearing or persistent. A clothing-quest is usually disappearing. [Disappearing quests offer to let the player have the item instantly vanish when the quest is completed and only ever trigger once. Persistent quests don't offer to have the item vanish, they just uncurse or bless the item. They can be triggered multiple times.]

A clothing-quest has a number called quest-completions. [counts the number of times a quest has been completed.]

A headgear-clothing-quest is a kind of clothing-quest. A headgear-clothing-quest is persistent. [Headgear don't disappear instantly when the class quest is completed.]

To decide what number is the quest-weighting of (Q - a clothing-quest) for (C - a clothing): [How often should this appear as the quest?]
	decide on 0.

To decide what number is the actual-quest-weighting of (Q - a clothing-quest) for (C - a clothing): [Unremovable objects need quests that are persistent so we use this to weight all vanishing quests at 0]
	if C is unremovable and Q is not persistent, decide on 0;
	decide on the quest-weighting of Q for C.

Definition: a clothing-quest is appropriate: decide yes. [Does it make sense for this quest to appear on an item right now?]
Definition: a clothing-quest is school-disabled: decide no. [Is this quest temporarily deactivated when the player is in the school region? (Some quests would be too easy in this region)]

To decide which number is the total-quest-weighting of (C - a clothing): [In order to use the weightings to choose a random quest, we need to know the sum of the weighting of all quests]
	let N be 0;
	repeat with Q running through clothing-quests:
		increase N by the actual-quest-weighting of Q for C;
	decide on N.

To decide which clothing-quest is the random-quest of (C - a clothing): [Choose a quest at random, using their weightings]
	let R be a random number between 1 and the total-quest-weighting of C;
	if debugmode is 2, say "Setting up quest for [C]. Total weighting is [R]. ";
	repeat with Q running through clothing-quests:
		decrease R by the actual-quest-weighting of Q for C;
		if R < 1:
			if debugmode is 2, say "Decided on [Q].";
			decide on Q;
	if debugmode is 2, say "Unable to find a quest.";
	decide on no-clothing-quest. [Shouldn't be necessary]

To decide which number is the total-persistent-quest-weighting of (C - a clothing): [In order to use the weightings to choose a random persistent quest, we need to know the sum of the weighting of all persistent quests]
	let N be 0;
	repeat with Q running through persistent clothing-quests:
		increase N by the actual-quest-weighting of Q for C;
	decide on N.

To decide which clothing-quest is the random-persistent-quest of (C - a clothing): [Choose a persistent quest at random, using their weightings]
	let R be a random number between 1 and the total-persistent-quest-weighting of C;
	if debugmode is 2, say "Setting up quest for [C]. Total weighting is [R]. ";
	repeat with Q running through persistent clothing-quests:
		decrease R by the actual-quest-weighting of Q for C;
		if R < 1:
			if debugmode is 2, say "Decided on [Q].";
			decide on Q;
	if debugmode is 2, say "Unable to find a quest.";
	decide on no-clothing-quest. [Shouldn't be necessary]

To compute quest of (C - a clothing): [Give the item a quest if it is cursed]
	if C is cursed and tutorial is 0, assign quest to C.

To compute persistent quest of (C - a clothing): [Give the item a persistent quest if it is cursed]
	if C is cursed and tutorial is 0, assign persistent quest to C.

To compute summoned quest of (C - a clothing): [sometimes after summoning an item we want to give it a quest and let the player know]
	compute quest of C;
	unless the quest of C is no-clothing-quest, say QuestFlav of C.

To compute summoned persistent quest of (C - a clothing): [sometimes after summoning an item we want to give it a persistent quest and let the player know]
	compute persistent quest of C;
	unless the quest of C is no-clothing-quest, say QuestFlav of C.

To compute new quest of (C - a clothing): [sometimes we want to give the clothing a new quest when it already has one]
	let OQ be the quest of C;
	let N be 200;
	while N > 0 and the quest of C is OQ:
		if OQ is persistent, compute persistent quest of C;
		otherwise compute quest of C;
		decrease N by 1; [failsafe to avoid infinite loop if there's only one acceptable quest]
	if the quest of C is OQ, say "[BigNameDesc of C] refuses to change its quest!";
	otherwise say QuestFlav of C.

To assign quest to (C - a clothing): [this is how we give an item a quest and set up any necessary variables]
	now the quest of C is the random-quest of C;
	if the class of the player is trick-or-treater, now the quest of C is crawling-quest; [only safe quest that can always be completed, no matter region or limitations]
	set up the quest of C.

To assign persistent quest to (C - a clothing): [this is how we give an item a persistent quest and set up any necessary variables]
	now the quest of C is the random-persistent-quest of C;
	if the class of the player is trick-or-treater, now the quest of C is crawling-quest; [only safe quest that can always be completed, no matter region or limitations]
	set up the quest of C.

To set up (Q - a clothing-quest): [by default a quest doesn't need any extra setup. NB anything you put here will trigger each time a new item is assigned this quest, which might include when the player is already halfway through doing this quest for another clothing item.]
	do nothing.

To say QuestFlav of (C - a clothing):
	say QuestFlav of the quest of C.

To say FullQuestFlav of (Q - a clothing-quest):
	unless Q is no-clothing-quest, say "[QuestFlav of Q][if armband is worn and Q is school-disabled][line break][bold type]This quest cannot be completed while you are in the [slut school] region.[line break][roman type][end if]".

To say QuestFlav of (Q - a clothing-quest): [The long description. Must be replaced for each quest.]
	say "This quest is missing its long description.".

Carry out wearing cursed clothing:
	if the noun is not sure and the noun is discovered varied: [We want the quest to be as relevant as possible for right now. So if this is the first time the player is wearing it, let's make sure it's not something stupid that only made sense earlier when the item was found, e.g. virginity]
		compute quest of the noun.

Report examining clothing:
	if the noun is sure and (the noun is cursed or the quest of the noun is persistent) and the quest of the noun is not no-clothing-quest, say FullQuestFlav of (the quest of the noun).

Report wearing clothing:
	if the noun is worn cursed clothing:
		unless the quest of the noun is no-clothing-quest, say QuestFlav of the noun;
		if newbie tips is 1 and the quest of the noun is not no-clothing-quest, say "[one of][newbie style]Newbie tip: Your item has a 'quest' attached to it! This means that if you perform the task outlined above, the curse will disappear and you'll be able to remove the item[if the quest of the noun is disappearing]. In fact, with this particular quest, the item will just disappear entirely. Other less common quests will simply decurse the item and also give you a special (usually slightly bad) effect every time you complete the quest, and it's up to you if it's worth it to keep wearing it[end if].[roman type][line break][or][stopping]".

To say QuestTitle of (C - a clothing):
	unless the quest of C is no-clothing-quest, say QuestTitle of the quest of C.

To say QuestTitle of (Q - a clothing-quest): [The short description. Must be replaced for each quest.]
	say "missing quest title".

To say quest-desc:
	if item described is sure and (item described is cursed or the quest of item described is persistent), say QuestTitle of item described.

[A random quest consequence is chosen and computed when a vanishing quest completes but the player decides to let the clothing stay around]
A questConsequence is a kind of object.
quest-target is an object that varies.

Definition: a questConsequence is eligible: decide no.
To compute consequence of (Q - a questConsequence):
	say "ERROR - no quest functionality coded for [Q].".

questNothingHappens is a questConsequence.
Definition: questNothingHappens is eligible: decide yes.
To compute consequence of (Q - questNothingHappens):
	do nothing.

questWetSelf is a questConsequence.
Definition: questWetSelf is eligible:
	if the player is desperate to pee and bladder-bursting-level >= 0 and wetting-valued <= 0, decide yes;
	decide no.
To compute consequence of (Q - questWetSelf):
	say "You concentrate so hard that you accidentally wet yourself!";
	now delayed urination is 1;
	try urinating.

questTired is a questConsequence.
Definition: questTired is eligible:
	if the player is not tired, decide yes;
	decide no.
To compute consequence of (Q - questTired):
	say "The effort of concentrating so hard on your [ShortDesc of quest-target] has drained a bit of your energy.";
	now the fatigue of the player is the tired threshold of the player + 1.

questHungry is a questConsequence.
Definition: questHungry is eligible:
	if active hunger mechanics is 1 and the stomach-food of the player > 0, decide yes;
	decide no.
To compute consequence of (Q - questHungry):
	say "The effort of concentrating so hard on your [ShortDesc of quest-target] has made you a bit more hungry.";
	decrease the stomach-food of the player by 1;
	if rectum > 0, increase rectum by 1.

questBoobs is a questConsequence.
Definition: questBoobs is eligible:
	if diaper quest is 0 and the player is not top heavy and quest-target is breast covering, decide yes;
	decide no.
To compute consequence of (Q - questBoobs):
	say "The magic fizzles and rebounds onto your chest, which slightly swells!";
	BustUp 1.

questButt is a questConsequence.
Definition: questButt is eligible:
	if diaper quest is 0 and the player is not bottom heavy and quest-target is ass covering, decide yes;
	decide no.
To compute consequence of (Q - questButt):
	say "The magic fizzles and rebounds onto your butt, which slightly swells!";
	HipUp 1.

questMagic is a questConsequence.
Definition: questMagic is eligible:
	if the magic-fatigue of the player < the total magic power of the player, decide yes;
	decide no.
To compute consequence of (Q - questMagic):
	say "You feel the curse drain magic from your veins as it leaves!";
	increase the magic-fatigue of the player by 3.

questIncontinence is a questConsequence.
Definition: questIncontinence is eligible:
	if diaper lover > 0 and the player is at least somewhat continent, decide yes;
	decide no.
To compute consequence of (Q - questIncontinence):
	say "You feel the curse sending tingling sensations to your loins as it leaves!";
	RandomIncontinenceUp 1.

questGape is a questConsequence.
Definition: questGape is eligible:
	if diaper quest is 0 and the player is possessing a vagina and the openness of vagina < 7 and quest-target is pussy covering, decide yes;
	decide no.
To compute consequence of (Q - questGape):
	say "You feel the curse causing your [vagina] to become very loose and wet[if the class of the player is princess and the class of the player is bride], as if in preparation to receive a monster-sized cock[end if]!";
	if the player is possessing a vagina and the openness of vagina < 7, now the openness of vagina is 7.

To compute quest completion of (Q - a clothing-quest) on (C - a clothing):
	say "[bold type]";
	let disappearTime be 0;
	let QC be questNothingHappens;
	if Q is disappearing and C is removable and C is cursed:
		say "You can feel that the magic holding your [ShortDesc of C] together is about to give out.[roman type] Do you want to concentrate really hard to try and get it to stay around? (This may have minor side effects.) ";
		if the player is consenting:
			now quest-target is C;
			now QC is a random eligible questConsequence;
		otherwise:
			now disappearTime is 1;
	if disappearTime is 1:
		say QuestCompleteFlav of Q on C;
		increase the quest-completions of Q by 1;
		only destroy C;
	otherwise:
		say QuestPersistFlav of Q on C;
		compute persistent reward of Q on C;
		increase the quest-completions of Q by 1;
		if C is bland, now C is blessed;
		if C is cursed, silently bless C;
	say "[roman type][line break]";
	compute consequence of QC.

To say QuestProgressFlav of (Q - a clothing-quest) on (C - a clothing):
	if C is cursed, say "You can feel the curse of your [ShortDesc of C] weakening as you fulfil its wishes!".

To say QuestCompleteFlav of (Q - a clothing-quest) on (C - a clothing):
	say "The magic sealing your [MediumDesc of C] is lifted and it rips itself from your [body area of C] before falling to the ground and quickly fading away, leaving nothing behind.".

[This is the bread and butter of resolving a quest. This is the function we call all around the rest of the code when a quest should be considered triggered.]
To progress quest of (Q - a clothing-quest):
	if playerRegion is not school or Q is not school-disabled:
		unless the player is in a predicament room:
			if debugmode > 0, say "Checking for[QuestTitle of Q].";
			repeat with C running through worn clothing:
				if C is diaper-stack:
					repeat with D running through the list of stacked diapers:
						if the quest of D is Q:
							if D is cursed or the quest of D is persistent, compute quest completion of Q on D;
				otherwise if the quest of C is Q:
					if C is cursed or the quest of C is persistent, compute quest completion of Q on C; [disappearing quests only trigger once]
			compute unique quest progress of Q.

To compute unique quest progress of (Q - a clothing-quest):
	do nothing.

[Persistent quests have an added effect each time they are completed]
To say QuestPersistFlav of (Q - a clothing-quest) on (C - a clothing):
	say "[if C is cursed]The magic sealing your [MediumDesc of C] is lifted! It rewards your efforts by[otherwise if C is bland and Q is headgear-clothing-quest]You sense a blessing being laid upon your [MediumDesc of C]! It rewards your continued efforts by[otherwise]Your [MediumDesc of C] rewards your continued efforts by[end if] ".

[By default, persistent quests give slightly bad stuff whenever they complete. This can be changed by creating a more specific function.]
To compute persistent reward of (Q - a clothing-quest) on (C - a clothing):
	if C is pussy covering:
		say "gently vibrating, stimulating your [genitals]!";
		stimulate vagina from C;
	otherwise if C is bottom level lactation cover:
		say "gently vibrating, stimulating your nipples!";
		stimulate breasts from C;
	otherwise:
		say "flooding you with arousal!";
		arouse 2500.

Part - No Quest

[Since every clothing must have a quest, we need a default quest object for when the clothing has no quest.]
no-clothing-quest is a clothing-quest.

A clothing has a clothing-quest called quest. The quest of a clothing is usually no-clothing-quest.

Part - Chest Exposing Quest

chest-exposing-quest is a clothing-quest. chest-exposing-quest has a number called greet-count. chest-exposing-quest has an object called latest-monster.

Definition: chest-exposing-quest is appropriate:
	if diaper quest is 0 and the largeness of breasts >= 2, decide yes;
	decide no.
Definition: chest-exposing-quest is school-disabled: decide yes.

To decide what number is the quest-weighting of (Q - chest-exposing-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if C is usually not-top-displacable breast covering clothing, decide on 0;
	if C is gag, decide on 0;
	if C is temptation, decide on 10;
	decide on 2.

To set up (Q - chest-exposing-quest):
	now the greet-count of Q is 0;
	now the latest-monster of Q is nothing.

To say QuestFlav of (Q - chest-exposing-quest):
	say "You sense that it wants you to [bold type]greet[roman type] friendly humans while your [BreastDesc] are exposed.".

To say QuestTitle of (Q - chest-exposing-quest):
	say " (topless greeting quest)".

To progress quest of (Q - chest-exposing-quest) from (M - a monster):
	unless M is the latest-monster of Q or the player is in a predicament room or playerRegion is school:
		increase the greet-count of Q by 1;
		now the latest-monster of Q is M;
		repeat with C running through worn cursed clothing:
			if the quest of C is Q:
				if the greet-count of Q > 1:
					compute quest completion of Q on C;
				otherwise:
					say QuestProgressFlav of Q on C.

Part - Cum Swallowing Quest

cum-swallowing-quest is a clothing-quest.

Definition: cum-swallowing-quest is appropriate:
	if diaper quest is 0, decide yes;
	decide no.

To decide what number is the quest-weighting of (Q - cum-swallowing-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if C is ballgag, decide on 0;
	if the semen-taste-addiction-influence of C < 0, decide on 0;
	if the semen taste addiction of the player < 3, decide on 0;
	if the oral sex addiction of the player < 2, decide on 0;
	decide on 3.

To say QuestFlav of (Q - cum-swallowing-quest):
	say "You sense that it wants you to swallow cum from a blowjob.".

To say QuestTitle of (Q - cum-swallowing-quest):
	say " (cum swallowing quest)".

Part - Piss Drinking Quest

piss-drinking-quest is a clothing-quest. piss-drinking-quest is persistent.

Definition: piss-drinking-quest is appropriate:
	if watersports fetish is 1, decide yes;
	decide no.

To decide what number is the quest-weighting of (Q - piss-drinking-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if C is transforming-earrings, decide on 999;
	if the urine-taste-addiction-influence of C < 0, decide on 0;
	if the urine taste addiction of the player < 4, decide on 0;
	if C is ballgag, decide on 0;
	decide on 3.

To say QuestFlav of (Q - piss-drinking-quest):
	say "You sense that it wants you to drink some urine.".

To say QuestTitle of (Q - piss-drinking-quest):
	say " (urine drinking quest)".

Part - Orgasm Quest

orgasm-quest is a clothing-quest.

Definition: orgasm-quest is appropriate: decide no. [Only appears from specific events]

To say QuestFlav of (Q - orgasm-quest):
	say "You sense that it wants you to have an orgasm.".

To say QuestTitle of (Q - orgasm-quest):
	say " (orgasm quest)".

Part - Anal Orgasm Quest

anal-orgasm-quest is a clothing-quest.

Definition: anal-orgasm-quest is appropriate:
	if diaper quest is 0, decide yes;
	decide no.

To decide what number is the quest-weighting of (Q - anal-orgasm-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if the anal-sex-addiction-influence of C < 0, decide on 0;
	if C is penetrating asshole, decide on 0;
	if C is ass covering:
		if C is not displacable and C is not crotch-zipped, decide on 0;
	decide on 3.

To say QuestFlav of (Q - anal-orgasm-quest):
	say "You sense that it wants you to have an anal orgasm.".

To say QuestTitle of (Q - anal-orgasm-quest):
	say " (anal orgasm quest)".

To compute unique quest progress of (Q - anal-orgasm-quest):
	if watersports fetish is 0 and WC thigh high boots is worn:
		say "[bold type]Your [ShortDesc of WC thigh high boots] pulse and glow! ";
		if the class of the player is human toilet, increase the powerup of WC thigh high boots by a random number between 10 and 15;
		otherwise increase the powerup of WC thigh high boots by a random number between 7 and 10;
		if the powerup of WC thigh high boots > 15 and WC thigh high boots is stumbling:
			say "You feel the stumbling enchantment being suppressed, and replaced by one that strengthens your kicks! Wow!";
			now WC thigh high boots is kicking;

Part - Anal Virginity Quest

anal-virginity-quest is a clothing-quest.

Definition: anal-virginity-quest is appropriate:
	if diaper quest is 0 and the analvirgin of the player is 1, decide yes;
	decide no.

To decide what number is the quest-weighting of (Q - anal-virginity-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if the anal-sex-addiction-influence of C < 0, decide on 0;
	if C is pussy protection, decide on 20;
	if C is ass covering:
		if C is not displacable and C is not crotch-zipped, decide on 0;
	if C is sissifying, decide on 4;
	decide on 0.

To say QuestFlav of (Q - anal-virginity-quest):
	say "You sense that it wants you to lose your anal virginity.".

To say QuestTitle of (Q - anal-virginity-quest):
	say " (anal sex quest)".

Part - Vaginal Virginity Quest

vaginal-virginity-quest is a clothing-quest.

Definition: vaginal-virginity-quest is appropriate:
	if diaper quest is 0 and the player is possessing a vagina and the vaginalvirgin of the player is 1, decide yes;
	decide no.

To decide what number is the quest-weighting of (Q - vaginal-virginity-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if the vaginal-sex-addiction-influence of C < 0, decide on 0;
	if C is crotch-exposing, decide on 20;
	if C is pussy covering:
		if C is not displacable and C is not crotch-zipped, decide on 0;
	if C is penetrating vagina, decide on 0;
	if C is purity, decide on 10;
	decide on 0.

To say QuestFlav of (Q - vaginal-virginity-quest):
	say "You sense that it wants you to lose your vaginal virginity.".

To say QuestTitle of (Q - vaginal-virginity-quest):
	say " (vaginal sex quest)".

Part - Egg Laying Quest

egg-laying-quest is a clothing-quest.

Definition: egg-laying-quest is appropriate:
	if egg laying fetish is 1, decide yes;
	decide no.

To decide what number is the quest-weighting of (Q - egg-laying-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if C is penetrating asshole, decide on 0;
	if the number of on-stage eggs is 0, decide on 0;
	if C is pussy protection, decide on 13;
	if C is ass covering:
		if C is not displacable and C is not crotch-zipped, decide on 0;
	decide on 3.

To say QuestFlav of (Q - egg-laying-quest):
	say "You sense that it wants you to lay some eggs.".

To say QuestTitle of (Q - egg-laying-quest):
	say " (egg laying quest)".

Part - Interracial Presenting Quest

interracial-sex-quest is a clothing-quest. interracial-sex-quest is persistent.

Definition: interracial-sex-quest is appropriate:
	if interracial fetish is 1, decide yes;
	decide no.

To decide what number is the quest-weighting of (Q - interracial-sex-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if the sex-addiction-influence of C < 0, decide on 0;
	if C is penetrating asshole, decide on 0;
	if C is interracial themed, decide on 20;
	if the bbc addiction of the player < 4, decide on 0;
	if C is ass covering:
		if C is not displacable and C is not crotch-zipped, decide on 0;
	decide on 3.

To say QuestFlav of (Q - interracial-sex-quest):
	say "You sense that it wants you to beg a black man to [if pregnancy fetish is 1]breed[otherwise]fuck[end if] you.".

To say QuestTitle of (Q - interracial-sex-quest):
	say " (interracial sex seeking quest)".

Part - Titfuck Quest

titfuck-quest is a clothing-quest. titfuck-quest has a number called titfuck-count.

Definition: titfuck-quest is appropriate:
	if diaper quest is 0 and the largeness of breasts >= 5, decide yes;
	decide no.

To decide what number is the quest-weighting of (Q - titfuck-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if the titfuck-addiction-influence of C < 0, decide on 0;
	if C is breast covering:
		if C is not fully exposing and C is not optional-top-displacable, decide on 0;
	if C is fully exposing, decide on 20;
	if C is very low cut or lower, decide on 6;
	decide on 3.

To say QuestFlav of (Q - titfuck-quest):
	say "You sense that it wants you to pleasure [manly-penis]s with your breasts.".

To say QuestTitle of (Q - titfuck-quest):
	say " (titfuck quest)".

To set up (Q - titfuck-quest):
	now the titfuck-count of Q is 0.

To progress quest of (Q - titfuck-quest):
	increase the titfuck-count of Q by 1;
	repeat with C running through worn cursed clothing:
		if the quest of C is Q:
			if the titfuck-count of Q > 1:
				compute quest completion of Q on C;
			otherwise:
				say QuestProgressFlav of Q on C.

Part - Creampie Drinking Quest

creampie-drinking-quest is a clothing-quest.

Definition: creampie-drinking-quest is appropriate:
	if a2m fetish >= 2, decide yes;
	decide no.

To decide what number is the quest-weighting of (Q - creampie-drinking-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if the semen-taste-addiction-influence of C < 0, decide on 0;
	if the semen-addiction-influence of C < 0, decide on 0;
	if C is ballgag or C is penetrating asshole or C is crotch covering, decide on 0;
	if the semen taste addiction of the player < 3 or the anal sex addiction of the player < 3, decide on 0;
	decide on 3.

To say QuestFlav of (Q - creampie-drinking-quest):
	say "You sense that it wants you to drink cum that's been inside someone's ass.".

To say QuestTitle of (Q - creampie-drinking-quest):
	say " (creampie drinking quest)".

Part - Condom Drinking Quest

condom-drinking-quest is a clothing-quest. condom-drinking-quest is persistent.

Definition: condom-drinking-quest is appropriate:
	if condom fetish > 0, decide yes;
	decide no.

To decide what number is the quest-weighting of (Q - condom-drinking-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if the semen-taste-addiction-influence of C < 0, decide on 0;
	if C is ballgag, decide on 0;
	decide on 3.

To say QuestFlav of (Q - condom-drinking-quest):
	say "You sense that it wants you to drink (and swallow!) [semen] out of a used condom.".

To say QuestTitle of (Q - condom-drinking-quest):
	say " (condom drinking quest)".

Part - Milk Drinking Quest

milk-drinking-quest is a clothing-quest.

Definition: milk-drinking-quest is appropriate:
	if the milk volume of breasts > 0, decide yes;
	decide no.

To decide what number is the quest-weighting of (Q - milk-drinking-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if the milk-taste-addiction-influence of C < 0, decide on 0;
	if C is ballgag, decide on 0;
	decide on 3.

To say QuestFlav of (Q - milk-drinking-quest):
	say "You sense that it wants you to drink your own breast milk.".

To say QuestTitle of (Q - milk-drinking-quest):
	say " (milk drinking quest)".

Part - Creampie Quest

vaginal-creampie-quest is a clothing-quest. vaginal-creampie-quest has a number called creampie-count.

Definition: vaginal-creampie-quest is appropriate:
	if the player is possessing a vagina and diaper quest is 0 and the vaginalvirgin of the player is 0, decide yes;
	decide no.

To decide what number is the quest-weighting of (Q - vaginal-creampie-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if the semen-addiction-influence of C < 0, decide on 0;
	if C is crotch-exposing, decide on 20;
	if C is penetrating vagina, decide on 0;
	if C is pussy covering:
		if C is not displacable and C is not crotch-zipped, decide on 0;
	if C is pregnancy themed, decide on 14;
	decide on 2.

To say QuestFlav of (Q - vaginal-creampie-quest):
	say "You sense that it wants you to receive [if pregnancy fetish is 1]creampies from people that might get you pregnant[otherwise]vaginal creampies[end if].".

To say QuestTitle of (Q - vaginal-creampie-quest):
	say " (vaginal creampie quest)".

To progress quest of (Q - vaginal-creampie-quest) from (T - a thing):
	if ((pregnancy fetish is 1 and T is father material) or T is live) and the player is not in a predicament room:
		repeat with C running through worn clothing:
			if the quest of C is Q:
				compute quest completion of Q on C.

Part - Anal Creampie Quest

anal-creampie-quest is a clothing-quest. anal-creampie-quest has a number called creampie-count.

Definition: anal-creampie-quest is appropriate:
	if diaper quest is 0 and the analvirgin of the player is 0, decide yes;
	decide no.

To decide what number is the quest-weighting of (Q - anal-creampie-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if the semen-addiction-influence of C < 0, decide on 0;
	if C is crotch-assless, decide on 20;
	if C is penetrating asshole, decide on 0;
	if C is ass covering:
		if C is not displacable and C is not crotch-zipped, decide on 0;
	if C is anal sex themed, decide on 14;
	decide on 1.

To say QuestFlav of (Q - anal-creampie-quest):
	say "You sense that it wants you to receive an anal creampie from a human penis.".

To say QuestTitle of (Q - anal-creampie-quest):
	say " (anal creampie quest)".

To progress quest of (Q - anal-creampie-quest) from (T - a thing):
	if the player is not in a predicament room and T is a human male monster:
		repeat with C running through worn clothing:
			if the quest of C is Q:
				compute quest completion of Q on C.

Part - Candy Eating Quest

candy-eating-quest is a clothing-quest. candy-eating-quest has a number called candy-count.

Definition: candy-eating-quest is appropriate:
	if weight gain fetish > 0 or diaper messing >= 3, decide yes;
	decide no.

To decide what number is the quest-weighting of (Q - candy-eating-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if C is penetrating face, decide on 0;
	if C is baby themed, decide on 6;
	decide on 3.

To say QuestFlav of (Q - candy-eating-quest):
	say "You sense that it wants you to eat lots of candy.".

To say QuestTitle of (Q - candy-eating-quest):
	say " (candy eating quest)".

To set up (Q - candy-eating-quest):
	now the candy-count of Q is 0.

To progress quest of (Q - candy-eating-quest):
	if debugmode > 0, say "Checking for[QuestTitle of Q].";
	progress quest of trick-or-treat-quest;
	increase the candy-count of Q by 1;
	repeat with C running through worn clothing:
		if C is diaper-stack:
			repeat with D running through the list of stacked diapers:
				if D is cursed or the quest of D is persistent:
					if the quest of D is Q:
						if the candy-count of Q > 3:
							compute quest completion of Q on D;
						otherwise:
							say QuestProgressFlav of Q on D;
		otherwise:
			if C is cursed or the quest of C is persistent:
				if the quest of C is Q:
					if the candy-count of Q > 3:
						compute quest completion of Q on C;
					otherwise:
						say QuestProgressFlav of Q on C.

Report TQEating candy:
	progress quest of candy-eating-quest.

Part - Curse Drinking Quest

curse-drinking-quest is a clothing-quest. curse-drinking-quest has a number called drink-count. curse-drinking-quest has a number called latest-drink.

Definition: curse-drinking-quest is appropriate: decide yes.

To decide what number is the quest-weighting of (Q - curse-drinking-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if C is ballgag, decide on 0;
	decide on 1.

To say QuestFlav of (Q - curse-drinking-quest):
	say "You sense that it wants you to drink multiple different cursed drinks.".

To say QuestTitle of (Q - curse-drinking-quest):
	say " (curse drinking quest)".

To set up (Q - curse-drinking-quest):
	now the latest-drink of Q is 0;
	now the drink-count of Q is 0.

To progress quest of (Q - curse-drinking-quest) from (N - a number):
	if N is the latest-drink of Q:
		if debugmode > 0, say "Not checking for[QuestTitle of Q] because the same drink type was already recently consumed.";
	otherwise:
		if debugmode > 0, say "Checking for[QuestTitle of Q].";
		increase the drink-count of Q by 1;
		now the latest-drink of Q is N;
		repeat with C running through worn cursed clothing:
			if C is diaper-stack:
				repeat with D running through the list of stacked diapers:
					if D is cursed or the quest of D is persistent:
						if the quest of D is Q:
							if the drink-count of Q > 1:
								compute quest completion of Q on D;
							otherwise:
								say QuestProgressFlav of Q on D;
			otherwise:
				if C is cursed or the quest of C is persistent:
					if the quest of C is Q:
						if the drink-count of Q > 1:
							compute quest completion of Q on C;
						otherwise:
							say QuestProgressFlav of Q on C.

Part - Condom Creampie Quest

condom-creampie-quest is a clothing-quest.

Definition: condom-creampie-quest is appropriate:
	if there is a held condom-providing thing, decide yes;
	decide no.

To decide what number is the quest-weighting of (Q - condom-creampie-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if C is condom pinnable, decide on 0; [Otherwise the condom could be pinned onto the clothing that is disappearing]
	decide on 4.

To say QuestFlav of (Q - condom-creampie-quest):
	say "You sense that it wants you to have someone cum inside you while wearing a condom.".

To say QuestTitle of (Q - condom-creampie-quest):
	say " (condom creampie quest)".

Part - Kicking Quest

kicking-quest is a clothing-quest. kicking-quest is persistent. kicking-quest has an object called latest-kick.

Definition: kicking-quest is appropriate: decide yes.
Definition: kicking-quest is school-disabled: decide yes.

To decide what number is the quest-weighting of (Q - kicking-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if C is stumbling, decide on 20;
	decide on 0.

To say QuestFlav of (Q - kicking-quest):
	say "You sense that it wants you to kick multiple different enemies.".

To say QuestTitle of (Q - kicking-quest):
	say " (kicking quest)".

To set up (Q - kicking-quest):
	now the latest-kick of Q is nothing.

To progress quest of (Q - kicking-quest) from (M - a monster):
	if M is the latest-kick of Q:
		if debugmode > 0, say "Not checking for[QuestTitle of Q] because kicked the same enemy multiple times in a row.";
	otherwise:
		if debugmode > 0, say "Checking for[QuestTitle of Q].";
		repeat with C running through worn clothing:
			if C is diaper-stack:
				repeat with D running through the list of stacked diapers:
					if D is cursed or the quest of D is persistent:
						if the quest of D is Q:
							if the latest-kick of Q is monster:
								compute quest completion of Q on D;
							otherwise:
								say QuestProgressFlav of Q on D;
			otherwise:
				if C is cursed or the quest of C is persistent:
					if the quest of C is Q:
						if the latest-kick of Q is monster:
							compute quest completion of Q on C;
						otherwise:
							say QuestProgressFlav of Q on C;
		if the latest-kick of Q is monster, now the latest-kick of Q is nothing;
		otherwise now the latest-kick of Q is M.

Report kicking:
	progress quest of kicking-quest from the noun.

To compute persistent reward of (Q - kicking-quest) on (C - a clothing):
	say "filling your mind with perverted thoughts!";
	SexAddictUp 1.

Part - Heel Walking Quest

heel-walking-quest is a clothing-quest. heel-walking-quest is persistent.

To decide what number is the quest-weighting of (Q - heel-walking-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if C is posture training, decide on 50;
	decide on 0.

To say QuestFlav of (Q - heel-walking-quest):
	say "You sense that it wants you to get better at walking in heels.".

To say QuestTitle of (Q - heel-walking-quest):
	say " ([if item described is not heels]heels [end if]walking quest)".

To compute persistent reward of (Q - heel-walking-quest) on (C - a clothing):
	say "increasing the size of your hips!";
	if the thickness of hips < max ass size, HipUp 1.

Part - Careful Peeing Quest

careful-peeing-quest is a clothing-quest. careful-peeing-quest is persistent.

Definition: careful-peeing-quest is appropriate:
	if diaper lover > 0 and the player is not incontinent, decide yes;
	decide no.

To decide what number is the quest-weighting of (Q - careful-peeing-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if C is diaper and toilet allowance is 1, decide on 0; [player can't use toilets while wearing diapers]
	if C is pee covering and C is not displacable and C is not crotch-zipped, decide on 0;
	if C is bed wetting, decide on 20;
	decide on 1.

To say QuestFlav of (Q - careful-peeing-quest):
	say "You sense that it wants you to pee in toilets and bodies of water.".

To say QuestTitle of (Q - careful-peeing-quest):
	say " (careful peeing quest)".

To compute persistent reward of (Q - careful-peeing-quest) on (C - a clothing):
	say "temporarily speeding up the digestion [if diaper messing < 3]of fluids [end if]in your stomach!";
	DigestionTimerUp 600.

Part - Swimming Quest

swimming-quest is a clothing-quest. swimming-quest is persistent.

Definition: swimming-quest is appropriate: decide yes.

To decide what number is the quest-weighting of (Q - swimming-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if C is sheer-when-wet, decide on 8;
	decide on 0.

To say QuestFlav of (Q - swimming-quest):
	say "You sense that it wants you to dive into a body of water to get your clothes all wet and clean.".

To say QuestTitle of (Q - swimming-quest):
	say " (swimming quest)".

To compute persistent reward of (Q - swimming-quest) on (C - a clothing):
	if diaper quest is 0:
		say "[if the raw dexterity of the player < 20]improving your dexterity but also [end if]flooding your head with dreams of getting [if bukkake fetish is 1][semen] all over your body and clothes and getting [end if]creampied!";
		SlowSemenAddictUp 1;
	otherwise:
		say "[if the raw dexterity of the player < 20]improving your dexterity but also [end if]flooding your head with arousal!";
		arouse 3000;
	if the raw dexterity of the player < 20, DexUp 1.

Part - Poking Quest

poking-quest is a clothing-quest.

Definition: poking-quest is appropriate:
	if diaper quest is 0, decide yes;
	decide no.

To decide what number is the quest-weighting of (Q - poking-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	decide on 1.

To say QuestFlav of (Q - poking-quest):
	say "You sense that it wants you to wake up a sleeping enemy by poking them.".

To say QuestTitle of (Q - poking-quest):
	say " (poking quest)".

Part - Crawling Quest

crawling-quest is a clothing-quest.

Definition: crawling-quest is appropriate: decide yes.
Definition: crawling-quest is school-disabled: decide yes.

To decide what number is the quest-weighting of (Q - crawling-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	decide on 1.

To say QuestFlav of (Q - crawling-quest):
	say "You sense that it wants you to crawl around for a while.".

To say QuestTitle of (Q - crawling-quest):
	say " (crawling quest)".

To set up (Q - crawling-quest):
	now the crawl count of the player is 0.

Part - Inking Quest

inking-quest is a clothing-quest. inking-quest is persistent.

Definition: inking-quest is appropriate:
	if the number of worn tattoos > 0 and Hotel16 is discovered, decide yes;
	decide no.

To decide what number is the quest-weighting of (Q - inking-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	decide on 1.

To say QuestFlav of (Q - inking-quest):
	say "You sense that it wants you to get a new tattoo.".

To say QuestTitle of (Q - inking-quest):
	say " (tattoo quest)".

To compute persistent reward of (Q - inking-quest) on (C - a clothing):
	say "flooding your body with healing magic! You feel fully refreshed.";
	BodyHeal 10;
	now the fatigue of the player is 0;
	heal asshole times 10;
	heal vagina times 10.

Part - Lever Quest

lever-quest is a clothing-quest.

Definition: lever-quest is appropriate:
	if there is an alive caged dungeon boss, decide yes;
	decide no.

To decide what number is the quest-weighting of (Q - lever-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	decide on 1.

To say QuestFlav of (Q - lever-quest):
	say "You sense that it wants you to find an important-looking lever and pull it.".

To say QuestTitle of (Q - lever-quest):
	say " (lever quest)".

Part - Upskirt Quest

upskirt-quest is a clothing-quest. upskirt-quest is persistent.

Definition: upskirt-quest is appropriate:
	if there is worn short-or-longer displacable clothing, decide yes;
	decide no.
Definition: upskirt-quest is school-disabled: decide yes.

To decide what number is the quest-weighting of (Q - upskirt-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if C is knickers, decide on 2;
	decide on 0.

To say QuestFlav of (Q - upskirt-quest):
	say "You sense that it wants you to pull up your skirt in front of people (while you have their attention).".

To say QuestTitle of (Q - upskirt-quest):
	say " (upskirt quest)".

To compute persistent reward of (Q - upskirt-quest) on (C - a clothing):
	say "flooding your body with arousal and energy! You feel rather refreshed.";
	arouse 1000;
	BodyHeal 2;
	decrease the fatigue of the player by the fatigue of the player / 2;
	heal asshole times 2;
	heal vagina times 2;
	let S2 be a random off-stage pink scrunchie;
	if there is a worn pink scrunchie and S2 is a thing:
		summon S2 cursed;
		say "[bold type]A second [S2] appears in your hair! [roman type]You now have pigtails.".

Part - Tentacle Quest

tentacle-quest is a clothing-quest. tentacle-quest is persistent.

Definition: tentacle-quest is appropriate:
	if tentacle fetish is 1, decide yes;
	decide no.

To decide what number is the quest-weighting of (Q - tentacle-quest) for (C - a clothing):
	decide on 0. [Only occurs when the code specifies (e.g. when schoolgirl outfit is summoned)]

To say QuestFlav of (Q - tentacle-quest):
	say "You sense that it wants you to get fucked by tentacles.".

To say QuestTitle of (Q - tentacle-quest):
	say " (tentacle quest)".

To compute persistent reward of (Q - tentacle-quest) on (C - a clothing):
	if apple is not carried:
		now apple is carried by the player;
		say "dropping an [apple] into your hand.";
	otherwise:
		say "filling your mind with a reminder to eat your fruit.".

Part - Bursting Quest

bursting-quest is a clothing-quest. bursting-quest is persistent.

Definition: bursting-quest is appropriate:
	if watersports mechanics is 1, decide yes;
	decide no.

To decide what number is the quest-weighting of (Q - bursting-quest) for (C - a clothing):
	if bursting-quest is not appropriate, decide on 0;
	if C is diaper:
		if strongCurses is 1, decide on 2;
		decide on 50; [95% of diapers should spawn with this or similar]
	decide on 1.

To say QuestFlav of (Q - bursting-quest):
	say "You sense that it wants you to [if the player is bladder incontinent]just... wait for it to happen automatically[otherwise]practise self-control by holding onto your pee for a while even after it becomes risky[end if].".

To say QuestTitle of (Q - bursting-quest):
	say " (bladder holding quest)".

To say QuestPersistFlav of (Q - bursting-quest) on (C - a clothing):
	say "[if C is cursed]The magic sealing your [MediumDesc of C] is lifted! It rewards you refusing to pee on purpose[otherwise if C is bland and (delayed urination is 1 or Q is headgear-clothing-quest)]You sense a blessing being laid upon your [MediumDesc of C]! It rewards your continued refusal to pee on purpose[otherwise]Your [MediumDesc of C] rewards your continued bladder holding efforts[end if] by ".

To compute persistent reward of (Q - bursting-quest) on (C - a clothing):
	say "filling your bladder even further!";
	increase the bladder of the player by 1.

Part - Mess Quest

mess-quest is a clothing-quest. mess-quest is persistent.

Definition: mess-quest is appropriate:
	if diaper messing >= 4, decide yes;
	decide no.

To decide what number is the quest-weighting of (Q - mess-quest) for (C - a clothing):
	if mess-quest is not appropriate, decide on 0;
	if C is diaper:
		if strongCurses is 1, decide on 2;
		decide on 50; [95% of diapers should spawn with this or similar]
	if C is knickers, decide on 3;
	decide on 0.

To say QuestFlav of (Q - mess-quest):
	say "You sense that it wants you to mess yourself.".

To say QuestTitle of (Q - mess-quest):
	say " (mess self quest)".

To say QuestPersistFlav of (Q - mess-quest) on (C - a clothing):
	say "[if C is cursed]The magic sealing your [MediumDesc of C] is lifted! It rewards your bowel movement[otherwise if C is bland]You sense a blessing being laid upon your [MediumDesc of C]! It rewards your continued bowel movements[otherwise]Your [MediumDesc of C] rewards your continued bowel movements[end if] by ".

To compute persistent reward of (Q - mess-quest) on (C - a clothing):
	if mess-phase <= 0 or mess-phase >= 100:
		now fullness-time is 0;
		now rectum is 4;
		say "[']refilling your chambers['][if the player is feeling full], making you start to feel the need mess again[end if]!";
	otherwise:
		say "Improving your control over your bowels!";
		RectumIncontinenceDown 1.

Part - Oversatiated Quest

oversatiated-quest is a clothing-quest. oversatiated-quest is persistent.

Definition: oversatiated-quest is appropriate:
	if the stomach of the player >= stomach-max - 1, decide no;
	decide yes.

To decide what number is the quest-weighting of (Q - oversatiated-quest) for (C - a clothing):
	if oversatiated-quest is not appropriate, decide on 0;
	if diaper messing >= 3:
		if C is diaper:
			if strongCurses is 1, decide on 2;
			decide on 100; [95% of diapers should spawn with this or similar]
	decide on 1 + weight gain fetish.

To say QuestFlav of (Q - oversatiated-quest):
	say "You sense that it wants you to consume food and drink until you are oversatiated.".

To say QuestTitle of (Q - oversatiated-quest):
	say " (oversatiated quest)".

To say QuestPersistFlav of (Q - oversatiated-quest) on (C - a clothing):
	say "[if C is cursed]The magic sealing your [MediumDesc of C] is lifted![otherwise if C is bland]You sense a blessing being laid upon your [MediumDesc of C][otherwise]Your [MediumDesc of C] shivers in delight at your continued stomach stuffing[end if]!".

To compute persistent reward of (Q - oversatiated-quest) on (C - a clothing):
	now the quest of C is no-clothing-quest.

An all time based rule (this is the oversatiated quest rule):
	if the player is overly full and the player is not in a predicament room, progress quest of oversatiated-quest.

Part - Show and Tell Quest

show-and-tell-quest is a clothing-quest. show-and-tell-quest is persistent.

Definition: show-and-tell-quest is school-disabled: decide yes.

show-and-tell-quest has an object called latest-exposee.
show-and-tell-quest has a number called expose-count.

To decide what number is the quest-weighting of (Q - show-and-tell-quest) for (C - a clothing):
	decide on 0. [Only occurs when the code specifies (e.g. when a stuffie is summoned)]

To say QuestFlav of (Q - show-and-tell-quest):
	say "You sense that it wants you to have lots of people see you carrying it around.".

To say QuestTitle of (Q - show-and-tell-quest):
	say " (carry around quest)".

To progress quest of (Q - show-and-tell-quest) for (M - a monster):
	if playerRegion is not school or Q is not school-disabled:
		unless the player is in a predicament room:
			if debugmode > 0, say "Checking for[QuestTitle of Q].";
			repeat with C running through worn clothing:
				if C is clothing and the quest of C is Q:
					if M is not latest-exposee of Q:
						now the latest-exposee of Q is M;
						increase the expose-count of Q by 1;
						if the remainder after dividing expose-count of Q by 3 is 0:
							compute quest completion of Q on C;
						otherwise:
							say "[BigNameDesc of C] shudders happily at being seen with you. Keep it up.".

To compute persistent reward of (Q - show-and-tell-quest) on (C - a clothing):
	if C is cursed:
		if the player is a bit horny:
			say "cooling off your arousal.";
			now the arousal of the player is 0;
		otherwise:
			say "filling your mind with pure thoughts.";
			SexAddictDown 1;
	otherwise:
		say "infusing itself with [one of]powerful magic! You feel that something good will happen when you finally decide to stop letting everyone know how pathetic a [if diaper quest is 1]baby[otherwise]whore[end if] you are.[or]even more blessed magic![stopping]".

Carry out taking off clothing:
	if the quest of the noun is show-and-tell-quest and the expose-count of show-and-tell-quest >= 10:
		say "You can feel the blessed magic your [ShortDesc of the noun] had stored within itself shoot straight into your tendons, making you more flexible!";
		DexUp the expose-count of show-and-tell-quest / 7;
		now the expose-count of show-and-tell-quest is 0.

Part - Plug Quest

plug-quest is a clothing-quest. plug-quest has a number called plug-count.

Definition: plug-quest is appropriate:
	if asshole is not actually occupied, decide yes;
	decide no.
Definition: plug-quest is school-disabled: decide yes.

To decide what number is the quest-weighting of (Q - plug-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if Q is ass plugging or Q is crotch covering or Q is sex toy, decide on 0;
	decide on 1.

To say QuestFlav of (Q - plug-quest):
	say "You sense that it wants you to keep a toy in your butt for a while.".

To say QuestTitle of (Q - plug-quest):
	say " (butt plug quest)".

To set up (Q - plug-quest):
	now the plug-count of plug-quest is 0.

A time based rule (this is the plug quest rule):
	let C be a random sex toy penetrating asshole;
	if C is sex toy:
		increase the plug-count of plug-quest by 1;
		if the plug-count of plug-quest > a random number between 25 and 100:
			progress quest of plug-quest;
			now the plug-count of plug-quest is 0;
	otherwise if the plug-count of plug-quest > 0:
		now the plug-count of plug-quest is 0.

Part - Hotel Altar Quest

hotel-altar-quest is a clothing-quest.

Definition: hotel-altar-quest is appropriate:
	if diaper quest is 0 and Hotel35 is placed and the player is the donator, decide yes;
	decide no.

To decide what number is the quest-weighting of (Q - hotel-altar-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	decide on 3.

To say QuestFlav of (Q - hotel-altar-quest):
	say "You sense that it wants you to pray in front of the golden altar in the Hotel.".

To say QuestTitle of (Q - hotel-altar-quest):
	say " (hotel altar quest)".

Part - New Region Quest

new-region-quest is a clothing-quest.

Definition: new-region-quest is appropriate:
	if Mansion01 is not placed or Hotel01 is not placed, decide yes;
	decide no.

To decide what number is the quest-weighting of (Q - new-region-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	decide on 4.

To say QuestFlav of (Q - new-region-quest):
	say "You sense that it wants you to discover a new region of this world.".

To say QuestTitle of (Q - new-region-quest):
	say " (region discovery quest)".

Part - Throne Quest

throne-quest is a clothing-quest.

To decide what number is the quest-weighting of (Q - throne-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if earnings is starting-earnings, decide on 0; [this way the bondage starting option doesn't cause items with a trivial curse]
	if the number of worn headgear is 0, decide on 6;
	decide on 1.

To say QuestFlav of (Q - throne-quest):
	say "You sense that it wants you to sit on a royal throne.".

To say QuestTitle of (Q - throne-quest):
	say " (throne quest)".

To set up (Q - throne-quest):
	now the charge of throne is 0.

Part - Podium Quest

podium-quest is a clothing-quest.

To decide what number is the quest-weighting of (Q - podium-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if piercing-fetish is 1, decide on 6;
	decide on 1.

To say QuestFlav of (Q - podium-quest):
	say "You sense that it wants you to climb up onto a stage.".

To say QuestTitle of (Q - podium-quest):
	say " (stage quest)".

To set up (Q - podium-quest):
	now the charge of podium is 0.

Part - Attack Provocation Quest

attack-quest is a clothing-quest. attack-quest is persistent.

Definition: attack-quest is school-disabled: decide yes.

To decide what number is the quest-weighting of (Q - attack-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if Q is slap ready equippable, decide on 3;
	decide on 1.

To say QuestFlav of (Q - attack-quest):
	say "You sense that it wants you to break your alliance with someone following you around by suddenly attacking them.".

To say QuestTitle of (Q - attack-quest):
	say " (alliance breaking quest)".

To compute persistent reward of (Q - attack-quest) on (C - a clothing):
	say "fully healing your body!";
	BodyHeal 10.

Part - Make Up Quest

make-up-quest is a clothing-quest.

To decide what number is the quest-weighting of (Q - make-up-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	decide on 2.

Definition: make-up-quest is appropriate:
	if the make-up of face < 3 and face is temporarily made up, decide yes;
	decide no.

To say QuestFlav of (Q - make-up-quest):
	say "You sense that it wants you to increase the amount of make up you're wearing.".

To say QuestTitle of (Q - make-up-quest):
	say " (make up quest)".

Part - Bust Up Quest

bust-up-quest is a clothing-quest. bust-up-quest has a number called target-bust.

To set up (Q - bust-up-quest):
	now the target-bust of bust-up-quest is the largeness of breasts + 3;
	if the target-bust of bust-up-quest > 15, now the target-bust of bust-up-quest is 15;
	if the target-bust of bust-up-quest > max breast size, now the target-bust of bust-up-quest is max breast size.

To decide what number is the quest-weighting of (Q - bust-up-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if C is breast covering, decide on 5;
	decide on 1.

Definition: bust-up-quest is appropriate:
	if diaper quest is 0 and the player is not top heavy and the largeness of breasts < 15, decide yes;
	decide no.

To say QuestFlav of (Q - bust-up-quest):
	say "You sense that it wants you to have at least [BraSize the target-bust of Q] cup breasts.".

To say QuestTitle of (Q - bust-up-quest):
	say " (breast expansion quest)".

To progress quest of (Q - bust-up-quest):
	if the largeness of breasts >= the target-bust of Q:
		if debugmode > 0, say "Checking for[QuestTitle of Q].";
		repeat with C running through worn clothing:
			if C is diaper-stack:
				repeat with D running through the list of stacked diapers:
					if D is cursed or the quest of D is persistent:
						if the quest of D is Q, compute quest completion of Q on D;
			otherwise:
				if C is cursed or the quest of C is persistent:
					if the quest of C is Q, compute quest completion of Q on C.

Part - Doom Quest

doom-quest is a clothing-quest. doom-quest is persistent.

To decide what number is the quest-weighting of (Q - doom-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	decide on 1.

Definition: doom-quest is appropriate:
	if doomed > 0 and doomed < 5, decide yes;
	decide no.

To say QuestFlav of (Q - doom-quest):
	say "You sense that it wants you to allow the dark ritual in the mansion to continue.".

To say QuestTitle of (Q - doom-quest):
	say " (dark ritual progress quest)".

To compute persistent reward of (Q - doom-quest) on (C - a clothing):
	say "empowering you with magic!";
	MagicPowerUp 1.

Part - Mouthful Quest

mouthful-quest is a clothing-quest. mouthful-quest is persistent.

Definition: mouthful-quest is school-disabled: decide yes.

To decide what number is the quest-weighting of (Q - mouthful-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	decide on 1.

Definition: mouthful-quest is appropriate:
	if face is actually occupied, decide no;
	if diaper quest is 0 and the semen taste addiction of the player < 20, decide yes;
	decide no.

To say QuestFlav of (Q - mouthful-quest):
	say "You sense that it wants you to hold onto a mouthful of [semen] until you become more accustomed to the taste.".

To say QuestTitle of (Q - mouthful-quest):
	say " (mouthful of cum quest)".

To compute persistent reward of (Q - mouthful-quest) on (C - a clothing):
	say "[if the body soreness of the player > 0 and the raw semen taste addiction of the player < 20]healing some of your wounds and [end if]restoring your energy!";
	if the raw semen taste addiction of the player < 20, BodyHeal 3;
	now the fatigue of the player is 0.

Part - Vaginal Addict Quest

vaginal-addict-quest is a clothing-quest.

To decide what number is the quest-weighting of (Q - vaginal-addict-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	decide on 1.

Definition: vaginal-addict-quest is appropriate:
	if the vaginal sex addiction of the player > 4 and the vaginal sex addiction of the player < 7, decide yes;
	decide no.

To say QuestFlav of (Q - vaginal-addict-quest):
	say "You sense that it wants you to have lots more vaginal sex until you become almost addicted to it.".

To say QuestTitle of (Q - vaginal-addict-quest):
	say " (vaginal sex quest)".

Part - Enemy Orgasm Quest

enemy-orgasm-quest is a clothing-quest. enemy-orgasm-quest is persistent.

Definition: enemy-orgasm-quest is appropriate:
	if diaper quest is 1, decide yes;
	decide no.

To decide what number is the quest-weighting of (Q - enemy-orgasm-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if C is diaper, decide on 5;
	decide on 1.

To say QuestFlav of (Q - enemy-orgasm-quest):
	say "You sense that it wants you to be made to orgasm - specifically NOT by masturbating yourself.".

To say QuestTitle of (Q - enemy-orgasm-quest):
	say " (forced orgasm quest)".

To compute persistent reward of (Q - enemy-orgasm-quest) on (C - a diaper):
	say "Cleaning and drying your [ShortDesc of C]!";
	fully clean C.

Part - Cursed Orgasm Quest

cursed-orgasm-quest is a clothing-quest.

Definition: cursed-orgasm-quest is appropriate: decide no. [only appears in final battle]

To say QuestFlav of (Q - cursed-orgasm-quest):
	say "You sense that it wants you to masturbate yourself with it until you orgasm.".

To say QuestTitle of (Q - cursed-orgasm-quest):
	say " (cursed orgasm quest)".

Part - Desperation Quest

desperation-quest is a clothing-quest.

Definition: desperation-quest is appropriate: decide no. [only appears in halloween mode]

To say QuestFlav of (Q - desperation-quest):
	say "You sense that it wants you to have an empty bladder[if diaper messing >= 3] and bowels[end if].".

To say QuestTitle of (Q - desperation-quest):
	say " (desperate for the potty quest)".

Part - Birth Quest

birth-quest is a clothing-quest.

Definition: birth-quest is appropriate:
	if pregnancy fetish is 1, decide yes;
	decide no.

To decide what number is the quest-weighting of (Q - birth-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if C is crotch-intact and C is not displacable, decide on 0;
	if the player is not possessing a vagina or the vaginalvirgin of the player is 1, decide on 0;
	if the pregnancy of the player is 1, decide on 4;
	decide on 1.

To say QuestFlav of (Q - birth-quest):
	say "You sense that it wants you to give birth.".

To say QuestTitle of (Q - birth-quest):
	say " (birth quest)".

Part - Skill Quest

skill-quest is a clothing-quest.

Definition: skill-quest is appropriate:
	if easy teaching is 0, decide yes;
	decide no.

To decide what number is the quest-weighting of (Q - skill-quest) for (C - a clothing):
	decide on 1.

To say QuestFlav of (Q - skill-quest):
	say "You sense that it wants you to learn a new skill.".

To say QuestTitle of (Q - skill-quest):
	say " (skill learning quest)".





Volume - Quest Wisps

A wisp quest is a kind of thing.

Definition: a wisp quest is appropriate: decide yes.
Definition: a wisp quest is eligible: decide yes.

To trigger (WQ - a wisp quest):
	unless the player is in a predicament room:
		repeat with W running through stalking wisps:
			if the wisp-quest of W is WQ:
				say bold type;
				destroy W;
				say "[roman type][line break]".

gold-candy-wisp-quest is a wisp quest. The printed name of gold-candy-wisp-quest is "find a golden candy".
Definition: gold-candy-wisp-quest is appropriate:
	if there is a carried top tier candy, decide no;
	if Hotel01 is placed and Mansion01 is placed, decide yes;
	decide no.

drink-milk-wisp-quest is a wisp quest. The printed name of drink-milk-wisp-quest is "drink some human breast milk".
Definition: drink-milk-wisp-quest is appropriate:
	if diaper quest is 1 or lactation fetish is 1, decide yes;
	decide no.
Definition: drink-milk-wisp-quest is eligible:
	if the total volume of face > 0, decide no;
	decide yes.

drink-urine-wisp-quest is a wisp quest. The printed name of drink-urine-wisp-quest is "swallow [urine]".
Definition: drink-urine-wisp-quest is appropriate:
	if watersports fetish is 1, decide yes;
	decide no.
Definition: drink-urine-wisp-quest is eligible:
	if the total volume of face > 0, decide no;
	decide yes.

brothel-wisp-quest is a wisp quest. The printed name of brothel-wisp-quest is "work as a [if diaper quest is 1]submissive fetish sex worker[otherwise]prostitute[end if] in the Hotel region".
Definition: brothel-wisp-quest is appropriate:
	if Hotel01 is placed, decide yes;
	decide no.

purchase-wisp-quest is a wisp quest. The printed name of purchase-wisp-quest is "purchase an item from [NameDesc of shopkeeper]".
Definition: purchase-wisp-quest is appropriate:
	if Dungeon41 is guarded, decide yes;
	decide no.

make-up-wisp-quest is a wisp quest. The printed name of make-up-wisp-quest is "paint your face with overdone make up[if diaper quest is 0] like a whore[end if]".
Definition: make-up-wisp-quest is appropriate:
	if the make-up of face < 3, decide yes;
	decide no.

altar-wisp-quest is a wisp quest. The printed name of altar-wisp-quest is "earn some uses of the Woods altar".
Definition: altar-wisp-quest is appropriate:
	if Woods01 is placed and witch is alive, decide yes;
	decide no.
Definition: altar-wisp-quest is eligible:
	if the altar-uses of witch is 0 and witch is not unbitchy and witch is friendly, decide yes;
	decide no.

dominatrix-wisp-quest is a wisp quest. The printed name of dominatrix-wisp-quest is "go see [NameDesc of dominatrix]".
Definition: dominatrix-wisp-quest is appropriate:
	if dominatrix is alive, decide yes;
	decide no.
To compute unique greet effect for (M - dominatrix):
	trigger dominatrix-wisp-quest.
To uniquely destroy (M - dominatrix):
	trigger dominatrix-wisp-quest.

poker-wisp-quest is a wisp quest. The printed name of poker-wisp-quest is "play a game of poker".
Definition: poker-wisp-quest is appropriate:
	if orc is alive, decide yes;
	decide no.

unglue-wisp-quest is a wisp quest. The printed name of unglue-wisp-quest is "escape from your glued clothing".
Definition: unglue-wisp-quest is appropriate:
	if there is worn glued clothing, decide yes;
	decide no.

class-wisp-quest is a wisp quest. The printed name of class-wisp-quest is "complete your class quest".
Definition: class-wisp-quest is appropriate:
	if there is worn cursed headgear, decide yes;
	decide no.

learn-spell-wisp-quest is a wisp quest. The printed name of learn-spell-wisp-quest is "learn a new spell".
Definition: learn-spell-wisp-quest is eligible:
	if there is a castable magic-spell and there is an uncastable fetish appropriate magic-spell, decide yes;
	decide no.

use-urinal-wisp-quest is a wisp quest. The printed name of use-urinal-wisp-quest is "urinate in a urinal".
Definition: use-urinal-wisp-quest is appropriate:
	if diaper lover is 0 and watersports fetish is 1, decide yes;
	decide no.

bowl-wisp-quest is a wisp quest. The printed name of bowl-wisp-quest is "eat food from a bowl".
Definition: bowl-wisp-quest is appropriate:
	if the total volume of face > 0, decide no; [otherwise player can get a quest to hold a mouthful until they eat]
	if Hotel01 is placed or School01 is discovered, decide yes;
	decide no.

banish-wisp-quest is a wisp quest. The printed name of banish-wisp-quest is "choose to banish a defeated enemy".

drink-wisp-quest is a wisp quest. The printed name of drink-wisp-quest is "empty all your drinks".
Definition: drink-wisp-quest is appropriate: decide no.

swim-wisp-quest is a wisp quest. The printed name of swim-wisp-quest is "go for a swim".


A wisp trigger is a kind of thing.

Definition: a wisp trigger is appropriate: decide yes.
Definition: a wisp trigger is eligible: decide yes.

trip-wisp-trigger is a wisp trigger. The printed name of trip-wisp-trigger is "get tripped up in combat".

orgasm-wisp-trigger is a wisp trigger. The printed name of orgasm-wisp-trigger is "have an orgasm".

conception-wisp-trigger is a wisp trigger. The printed name of conception-wisp-trigger is "conceive a child".
Definition: conception-wisp-trigger is appropriate:
	if pregnancy fetish is 0, decide no;
	if the player is not possessing a vagina, decide no;
	decide yes.
Definition: conception-wisp-trigger is eligible:
	if the pregnancy of the player is 0, decide yes;
	decide no.

hunger-wisp-trigger is a wisp trigger. The printed name of hunger-wisp-trigger is "get too hungry".
Definition: hunger-wisp-trigger is eligible:
	if the player is hungry or the player is nearly hungry, decide no;
	decide yes.

pee-wisp-trigger is a wisp trigger. The printed name of pee-wisp-trigger is "use a toilet, or leak through underwear".
Definition: pee-wisp-trigger is eligible:
	if diaper lover is 0, decide no;
	decide yes.

change-wisp-trigger is a wisp trigger. The printed name of change-wisp-trigger is "get your diaper changed".
Definition: change-wisp-trigger is eligible:
	if there is a worn diaper, decide yes;
	decide no.

condom-wisp-trigger is a wisp trigger. The printed name of condom-wisp-trigger is "get a[if total pinned condoms > 0]nother[end if] used condom pinned to your clothing".
Definition: condom-wisp-trigger is appropriate:
	if condom fetish >= 2, decide yes;
	decide no.

drunk-wisp-trigger is a wisp trigger. The printed name of drunk-wisp-trigger is "get rather drunk".
Definition: drunk-wisp-trigger is appropriate:
	if alcohol fetish is 1, decide yes;
	decide no.

spill-wisp-trigger is a wisp trigger. The printed name of spill-wisp-trigger is "spill a drink".

dp-wisp-trigger is a wisp trigger. The printed name of dp-wisp-trigger is "have two holes penetrated or used at the same time".
Definition: dp-wisp-trigger is eligible:
	if diaper quest is 1 or the number of actually occupied orifices > 1, decide no;
	decide yes.

cum-panties-wisp-trigger is a wisp trigger. The printed name of cum-panties-wisp-trigger is "get cum in your undies".
Definition: cum-panties-wisp-trigger is appropriate:
	if diaper quest is 1 and the player is female, decide no;
	decide yes.
Definition: cum-panties-wisp-trigger is eligible:
	let K be a random worn knickers;
	if K is knickers and the semen-soak of K is 0, decide yes;
	decide no.

lose-panties-wisp-trigger is a wisp trigger. The printed name of lose-panties-wisp-trigger is "lose or remove your undies".
Definition: lose-panties-wisp-trigger is appropriate:
	if diaper quest is 1, decide no;
	decide yes.
Definition: lose-panties-wisp-trigger is eligible:
	if there are worn knickers, decide yes;
	decide no.

lose-makeup-wisp-trigger is a wisp trigger. The printed name of lose-makeup-wisp-trigger is "have all your make up fade or wiped away".
Definition: lose-makeup-wisp-trigger is eligible:
	if the make-up of face > 1 and face is temporarily made up, decide yes;
	decide no.

lose-mouthful-wisp-trigger is a wisp trigger. The printed name of lose-mouthful-wisp-trigger is "lose your [MouthfulDesc]".
Definition: lose-mouthful-wisp-trigger is eligible:
	if the total volume of face > 1, decide yes;
	decide no.

hold-breath-wisp-trigger is a wisp trigger. The printed name of hold-breath-wisp-trigger is "hold your breath".
Definition: hold-breath-wisp-trigger is eligible:
	if the player is able to breathe, decide yes;
	decide no.

wet-yourself-wisp-trigger is a wisp trigger. The printed name of wet-yourself-wisp-trigger is "wet yourself (i.e. accidentally release your bladder)".
Definition: wet-yourself-wisp-trigger is appropriate:
	if watersports mechanics is 1, decide yes;
	decide no.


speak-wisp-trigger is a wisp trigger. The printed name of speak-wisp-trigger is "speak".
Definition: speak-wisp-trigger is eligible:
	if the player is able to speak and currently-speaking is false, decide yes;
	decide no.
This is the speak-wisp-trigger inconveniences speech rule:
	repeat with W running through stalking wisps:
		if the wisp-trigger of W is speak-wisp-trigger:
			if autospeech is true, rule fails; [Player will never speak automatically]
			if triggeredspeech is true and automanualspeech is false: [If we didn't check for automanual speech, the consenting check would trigger a focus window refresh which can come with additional speech checks which could cause an infinite loop.]
				now triggeredspeech is false;
				say "Do you really want to speak out loud? If you do, [NameDesc of W] will trigger. ";
				if the player is not bimbo consenting, rule fails.
The speak-wisp-trigger inconveniences speech rule is listed last in the player speech rules.
A speech penalties rule (this is the speech wisp trigger rule):
	trigger speak-wisp-trigger.

To trigger (WT - a wisp trigger):
	unless the player is in a predicament room:
		repeat with W running through stalking wisps:
			if the wisp-trigger of W is WT, compute punishment of W.

An all time based rule (this is the time-based wisp triggers rule):
	unless the player is in a predicament room:
		if the number of worn cursed headgear is 0, trigger class-wisp-quest;
		if the number of worn glued clothing is 0, trigger unglue-wisp-quest;
		if the number of actually occupied orifices > 1, trigger dp-wisp-trigger;
		if the player is hungry, trigger hunger-wisp-trigger;
		let K be a random worn knickers;
		if K is knickers:
			if the known-semen-soak of K > 0, trigger cum-panties-wisp-trigger;
		otherwise:
			trigger lose-panties-wisp-trigger;
		if the number of held non-empty vessels is 0, trigger drink-wisp-quest.

An all later time based rule (this is the later time-based wisp triggers rule):
	unless the player is in a predicament room:
		if the player is not able to breathe, trigger hold-breath-wisp-trigger;
		follow the time-based wisp triggers rule. [gotta check them all again after NPCs have their turns]



A wisp punishment is a kind of thing.

Definition: a wisp punishment is appropriate: decide yes.
Definition: a wisp punishment is eligible: decide yes.

To decide which number is the wisp-colour of (W - an object):
	decide on TQMagenta.

To compute punishment of (W - a wisp punishment):
	say "BUG - This wisp punishment ([W]) has no execution function.".

bimbo-wisp-punishment is a wisp punishment. The printed name of bimbo-wisp-punishment is "become more [if diaper quest is 1]babified[otherwise]sluttified[end if]".
To compute punishment of (W - bimbo-wisp-punishment):
	let C be most-transformable-clothing;
	if C is transformable clothing and a random number between 1 and 5 > 2:
		say "You feel the wisp's curse try to transform your [MediumDesc of C]!";
		potentially transform C;
	otherwise if diaper quest is 0 or the player is totally incontinent:
		say "You feel significantly more deviant.";
		RandomAddictUp 2;
	otherwise:
		RandomIncontinenceUp 2.

A wisp stat punishment is a kind of wisp punishment.
Definition: a wisp stat punishment is appropriate: decide yes.

strength-wisp-punishment is a wisp stat punishment. The printed name of strength-wisp-punishment is "lose some strength".
To decide which number is the wisp-colour of (W - strength-wisp-punishment):
	decide on TQDarkishRed.
Definition: strength-wisp-punishment is appropriate:
	if the raw strength of the player > 1, decide yes;
	decide no.
To compute punishment of (W - strength-wisp-punishment):
	say "You feel your muscles slightly weaken.";
	StrengthDown 1.

dexterity-wisp-punishment is a wisp stat punishment. The printed name of dexterity-wisp-punishment is "lose some dexterity".
To decide which number is the wisp-colour of (W - dexterity-wisp-punishment):
	decide on 255. [blue]
Definition: dexterity-wisp-punishment is appropriate:
	if the raw dexterity of the player > 1, decide yes;
	decide no.
To compute punishment of (W - dexterity-wisp-punishment):
	say "You feel less agile.";
	DexDown 1.

intelligence-wisp-punishment is a wisp stat punishment. The printed name of intelligence-wisp-punishment is "lose some intelligence".
To decide which number is the wisp-colour of (W - intelligence-wisp-punishment):
	decide on TQDarkishGreen.
Definition: intelligence-wisp-punishment is appropriate:
	if the raw intelligence of the player > 1, decide yes;
	decide no.
To compute punishment of (W - intelligence-wisp-punishment):
	say "You feel knowledge slip from your mind.";
	IntDown 1.

QuestRecalling is an action applying to nothing.

total-quests-listed is a number that varies.
The quest listing rules is a rulebook.

Carry out QuestRecalling:
	now total-quests-listed is 0;
	follow the quest listing rules;
	repeat with M running through alive undefeated intelligent monsters:
		if the current-errand of M is not no-errand and the current-errand of M is not rejected-errand:
			say "You were given a quest by [NameDesc of M]: [RequestAssign of M]";
	repeat with E running through event-started academy-events:
		say AcademyEventDesc of E;
	repeat with C running through worn clothing:
		let Q be the quest of C;
		if Q is not no-clothing-quest and (Q is persistent or C is cursed):
			say "You are [if C is equippable]holding[otherwise]wearing[end if] a[if C is bland]n[end if] [if C is cursed]cursed[otherwise if C is blessed]blessed[otherwise]uncursed[end if] [MediumDesc of C]. [QuestFlav of Q]";
			increase total-quests-listed by 1;
	if there is a stalking wisp, say line break;
	repeat with W running through followers:
		if debugmode > 1, say "Colour ID: [backgroundColour of W].";
		if W is stalking:
			increase total-quests-listed by 1;
			say ExamineDesc of W;
	if total-quests-listed is 0, say "You have no active quests.".
Understand "recall quests", "quests", "quest", "curses", "curse quests", "uncurse quests" as QuestRecalling.

This is the predicament quest list rule:
	if the player is in a predicament room:
		say PredicamentDescription of current-predicament;
		increase total-quests-listed by 1.
The predicament quest list rule is listed in the quest listing rules.

This is the mechanic quest list rule:
	if there is a worn steel collar:
		say "You have been asked to collect a magic amulet by a rude mechanic. It should be found alongside a minotaur in the Dungeon region. You need to bring it back to [him of mechanic].";
		increase total-quests-listed by 1.
The mechanic quest list rule is listed in the quest listing rules.

This is the doomed quest list rule:
	if doom counter > 0 and doomed < 5:
		if the doom-warned of witch is 1, say "[bold type]The witch has given you the Doom Quest: You need to find a BELL, a BOOK and a CANDLE and bring them, along with the DOOM NOTES, to the hidden altar in the mansion to stop the evil ritual. [roman type]Banishing cultists from the hidden altar can help slow down the ritual, and you'll need to banish them all before you can complete the seal anyway.";
		otherwise say "[bold type]Something weird and spooky is going on in the Mansion. [roman type]It might be best to consult with a knowledgable witch.";
		increase total-quests-listed by 1.
The doomed quest list rule is listed in the quest listing rules.

This is the gladiator quest list rule:
	if gladiatorcurse >= 0:
		if the number of male gladiators > 2:[the enlightened gladiator and wild gladiator don't count]
			if gladiatorcurse is 1:
				say "The demon lord has put a curse on the gladiators! You can break it by defeating [him of demon lord]!";
				increase total-quests-listed by 1;
			otherwise if gladiatorcurse is 2:
				say "The witch has put a curse on the gladiators! You can break it by defeating [him of witch]!";
				increase total-quests-listed by 1.
The gladiator quest list rule is listed in the quest listing rules.

This is the witch quest list rule:
	if the witch-target of witch is a monster and the witch-target-state of witch > -1 and witch is alive:
		say "A witch has asked you to find and banish [NameDesc of witch-target of witch].";
		increase total-quests-listed by 1.
The witch quest list rule is listed in the quest listing rules.

This is the sex doll quest list rule:
	if the curse-quest of witch > 0 and the curse-quest of witch < 3 and witch is alive:
		if the curse-quest of witch is 1:
			say "The Latex Cure: A witch has asked you to bring [him of witch] a fae mushroom to help cure your latex transformation curse!";
			increase total-quests-listed by 1;
		if the curse-quest of witch is 2:
			say "The Latex Cure: You have given a fae mushroom to the witch, and now [he of witch] wants you to bring [him of witch] a recipe for the latex curse removal. It should be found in a library.";
			increase total-quests-listed by 1.
The sex doll quest list rule is listed in the quest listing rules.

This is the whisper quest list rule:
	let W be whisper-type;
	if W is 1:
		say "The [great ones] command you to present yourself at their altar beyond the mansion.";
		increase total-quests-listed by 1;
	if W is 2:
		say "The [great ones] command you to place a cursed item on their altar beyond the mansion.";
		increase total-quests-listed by 1;
	if W is 3:
		say "The [great ones] command you to consume semen.";
		increase total-quests-listed by 1;
	if W is 4:
		say "The [great ones] command you to fill your ass with semen.";
		increase total-quests-listed by 1.
The whisper quest list rule is listed in the quest listing rules.

This is the princess quest list rule:
	if ex-princess is caged and the question-sequence of ex-princess > 2:
		unless there is a vibe-wand carried by ex-princess:
			say " The princess of Bimbacia has asked you to find [him of ex-princess] a suitable wand. Any wand will work, but the royal sceptre would be best!";
			increase total-quests-listed by 1;
		otherwise:
			say "The princess of Bimbacia has asked you to get a skeleton key from the prison guard in the dungeon.";
			increase total-quests-listed by 1.
The princess quest list rule is listed in the quest listing rules.

This is the mindflayer quest of mind flayer list rule:
	if alreadyspawned of mind flayer is 1 and mind flayer is not permanently banished:
		say "You have been asked to kill a bugged-out monster.";
		increase total-quests-listed by 1.
The mindflayer quest of mind flayer list rule is listed in the quest listing rules.

This is the fucktoy humility quest list rule:
	if the player is an april 2025 top donator and fucktoy-stone is not worn and (fucktoy-stone is challenged or the fucktoy-stone-progress of the player > 0):
		say "The Finest [if fucktoy-stone-progress of the player > 10]Fucktoy: [otherwise]???????: [end if][run paragraph on]";
		if fucktoy-stone is challenged:
			say "You found an snooty [ShortDesc of fucktoy-stone] on a statue in the dungeon. It claimed you're a loser who faints instead of finishing when you get gangbanged, but is that really true? Progress: ([fucktoy-stone-progress of the player]/10)[line break]";
		otherwise:
			if the location of the player is Dungeon10:
				say "Was that ring always there?[line break]";
			if the location of the player is not a labyrinth room:
				say "You feel a mysterious pull towards the Dungeon.";
			otherwise if the location of the player is Dungeon11 or the location of the player is Dungeon12:
				say "You feel a mysterious pull towards the Statue Hall...";
			otherwise:
				say "You feel a mysterious pull towards the Royal Chambers...".
The fucktoy humility quest list rule is listed in the quest listing rules.

This is the bondage humility quest list rule:
	if the player is an april 2025 top donator and bondage-stone is not worn and (bondage-stone is challenged or the bondage-stone-progress of the player > 0):
		say "The [if bondage-stone-progress of the player > 10]Bondage [otherwise]??????? [end if]Master: [run paragraph on]";
		if bondage-stone is challenged:
			say "You found a sad [ShortDesc of bondage-stone] on a statue in the mansion. It claimed it was impossible for you to defeat a fairy while bound at the wrists, or anything for that matter. Is that really true? Progress: ([bondage-stone-progress of the player]/10)[line break]";
		otherwise:
			if the location of the player is Mansion38:
				say "There's something off about that ring...";
			if the location of the player is not a haunted room:
				say "You feel a mysterious pull towards the Mansion...";
			otherwise:
				say "You feel a mysterious pull towards the Statue Room...";
		increase total-quests-listed by 1.
The bondage humility quest list rule is listed in the quest listing rules.

This is the brat humility quest list rule:
	if the player is an april 2025 top donator and brat-stone is not worn and (brat-stone is challenged or the brat-stone-progress of the player > 0):
		say "The Boldest [if brat-stone-progress of the player > 10]Brat: [otherwise]???????: [end if][run paragraph on]";
		if brat-stone is challenged:
			say "You found an annoying [ShortDesc of brat-stone] on a statue in the woods. It claimed it would let you wear it if you repeatedly found [']lazy['] people, made them angry, and led them on chases before letting them see you cum. It didn't seem to think you were bold enough for something like that, especially not repeatedly, but are you? Progress: ([brat-stone-progress of the player]/10)[line break]";
		otherwise:
			if the location of the player is Woods10:
				say "There's something off about that ring...";
			if the location of the player is not a jungle room:
				say "You feel a mysterious pull towards the Woods...";
			otherwise:
				say "You feel a mysterious pull towards the Statue Clearing...";
		increase total-quests-listed by 1.
The brat humility quest list rule is listed in the quest listing rules.

This is the glory humility quest list rule:
	if the player is an april 2025 top donator and glory-stone is not worn and (glory-stone is challenged or the glory-stone-progress of the player > 0):[TODO: donor lock]
		say "The [if glory-stone-progress of the player > 10]Glory [otherwise]????? [end if] Master: [run paragraph on]";
		if glory-stone is challenged:
			say "You found a prideful [ShortDesc of glory-stone] on a statue at the bottom of a lake in the Extra Credit Zone. It wants a master that can defeat the greatest enemies while in the most memorable regalia (or at least in front of a gloryhole), but it claimed a mortal couldn't accomplish something like that. Is that really true? Progress: ([glory-stone-progress of the player]/10)[line break]";
		otherwise:
			if the location of the player is Park11:
				say "There's something off about the water...";
			if the location of the player is a predicament room:
				say "You feel a mysterious pull towards the lake...";
			otherwise:
				say "You feel a mysterious pull towards the Extra Credit Zone...";
		increase total-quests-listed by 1.
The glory humility quest list rule is listed in the quest listing rules.

This is the comeuppance humility quest list rule:
	if the player is an april 2025 top donator and comeuppance-stone is not worn and (comeuppance-stone is challenged or the comeuppance-stone-progress of the player > 0):
		say "The [if comeuppance-stone-progress of the player > 10]Comeuppance [otherwise]??????????? [end if]Connoisseur: [run paragraph on]";
		if comeuppance-stone is challenged:
			say "You found a singing [ShortDesc of comeuppance-stone] on a statue hidden in a hole in the Hotel. It seemed to think you're a delusional bottom who thinks they're a top, and demanded you learn how to climax when your topping attempts inevitably backfire. Is that even worth doing? Progress: ([comeuppance-stone-progress of the player]/10)[line break]";
		otherwise:
			if the location of the player is not a modern room:
				say "You feel a mysterious pull towards the Hotel...";
			otherwise if the location of the player is HoleInWall:
				say "There's something off about that ring...";
			otherwise if the location of the player is the location of hole-in-wall:
				say "There's something off about that hole...";
			otherwise:
				say "You feel a mysterious pull towards the [the location of hole-in-wall]";
		increase total-quests-listed by 1.
The comeuppance humility quest list rule is listed in the quest listing rules.

This is the piercing humility quest list rule:
	if the player is an april 2025 top donator and piercing-stone is not worn and (piercing-stone is challenged or the piercing-stone-progress of the player > 0):[TODO: donor lock]
		say "The [if piercing-stone-progress of the player > 10]Piercing [otherwise]???????? [end if] Master: [run paragraph on]";
		if piercing-stone is challenged:
			say "You found a bossy [ShortDesc of piercing-stone] in the Slut School, and it told you to defeat an npc at the most inconvenient time, like when a guard has his shield up, an aeromancer who has her boobs inflated, or a ghost that's still intangible. The ring seemed to think you weren't capable of following its instructions... is that really true? ([piercing-stone-progress of the player]/10)[line break]";
		otherwise:
			if the location of the player is Park11:
				say "Was that ring always there?[line break]";
			if the location of the player is an academic room:
				say "You feel a mysterious pull towards the Head Office...";
			otherwise:
				say "You feel a mysterious pull towards the Slut School";
		increase total-quests-listed by 1.
The piercing humility quest list rule is listed in the quest listing rules.

A follower is a kind of backdrop. A follower can be stalker or not stalker. A follower is usually not stalker.

Definition: A follower (called F) is stalking rather than nonstalking:
	if F is stalker, decide yes;
	decide no.


To say ExamineDesc of (F - a follower):
	say "A [ShortDesc of F] is following you. [FollowerDesc of F]".

To say ShortDesc of (F - a follower):
	say "follower";

To say FollowerDesc of (F - a follower):
	say "What could it mean?";

To followerset (F - a follower):
	now F is everywhere;
	now F is stalker;
	update backdrop positions;

To say FollowerFade of (F - a follower):
	say "The [ShortDesc of F] [one of]fades from existence[or]fades away[or]slowly disappears[then at random].".

To destroy (F - a follower):
	say FollowerFade of F;
	now F is nowhere;
	now F is not stalker;
	update backdrop positions.


To construct normal buttons for (T - a follower):
	if ButtonTableFull is 0 and T is not camera-drone:
		choose a blank row in the Table of Buttons;
		now the ButtonImage entry is Figure of BlessingIcon;
		now the ButtonCommand entry is "purify [text-shortcut of T]";
		now the ButtonColour entry is lightModeFullGreen;
		if the magic power of the player < the magic-cost of T or the divinationskill of the player is 0, now the ButtonColour entry is lightModeFullRed. [turn red - player doesn't have enough power]

Definition: a follower is immune to change: decide yes.

A wisp is a kind of follower. A wisp has an object called the wisp-trigger. The printed name of a wisp is "[ColourDesc of item described] wisp". Understand "wisp" as wisp.

To say ShortDesc of (F - a wisp):
	say "wisp";

To decide which number is the magic-cost of (T - a wisp):
	decide on 0.

To say ColourDesc of (W - a wisp):
	if the backgroundColour of W is 255:
		say "blue";
	otherwise if the backgroundColour of W is TQDarkishGreen:
		say "green";
	otherwise if the backgroundColour of W is TQDarkishRed:
		say "red";
	otherwise:
		say "pink".

Figure of Wisp is the file "Env/MultiFloor/wisp1.png".
Figure of Nice Wisp is the file "Env/MultiFloor/wisp1.png".
To decide which figure-name is the examine-image of (W - a wisp):
	decide on Figure of Wisp.

To silently set up (W - a wisp):
	if W is evil-wisp, silently set up wisp quest for W;
	if W is nice-wisp, silently set up wisp buff for W;
	silently set up wisp trigger for W;
	silently set up wisp GUI for W.

To silently set up wisp trigger for (W - a wisp):
	let T be a random appropriate eligible wisp trigger;
	silently set up wisp trigger T for W.

To silently set up wisp trigger (T - a wisp trigger) for (W - a wisp):
	now the wisp-trigger of W is T.

To silently set up wisp GUI for (W - a wisp):
	now W is everywhere;
	now W is stalker;
	update backdrop positions;
	update background colour of W.

To set up (W - a wisp):
	silently set up W;
	say AnnounceNewWisp W.

To say AnnounceNewWisp (W - a wisp):
	if W is evil-wisp, say "[bold type]A [ColourDesc of W] curse wisp apears and begins to follow you! [roman type]You can sense that you must [bold type][wisp-quest of W][roman type] before you next [bold type][wisp-trigger of W][roman type], or else you will [bold type][wisp-punishment of W][roman type].";
	otherwise say "[bold type]A [ColourDesc of W] blessing wisp appears and begins to follow you! [roman type]You can sense that until you next [bold type][wisp-trigger of W][roman type], your [bold type][if W is strength-buffing]strength[otherwise if W is dexterity-buffing]dexterity[otherwise]intelligence[end if] is increased![roman type].".

To destroy (W - a wisp):
	say "The [W] [one of]fades from existence[or]fades away[or]slowly disappears[at random].";
	now W is nowhere;
	now W is not stalker;
	update backdrop positions;
	if W is evil-wisp:
		now the wisp-quest of W is nothing;
		now the wisp-punishment of W is nothing;
	otherwise:
		now W is not-buffing;

To deploy a wisp:
	let W be a random nonstalking evil-wisp;
	if W is not a wisp or (there is a nonstalking nice-wisp and the player is getting very lucky), now W is a random nonstalking nice-wisp;
	if W is a wisp:
		set up W.

To notice a wisp:
	let W be a random nonstalking wisp;
	if W is a wisp:
		silently set up W;
		if W is evil-wisp, say "[bold type]You notice that you now have a [ColourDesc of W] curse wisp following you! [roman type]You can sense that you must [bold type][wisp-quest of W][roman type] before you next [bold type][wisp-trigger of W][roman type], or else you will [bold type][wisp-punishment of W][roman type].";
		otherwise say "[bold type]You notice that you now have a [ColourDesc of W] blessing wisp following you! [roman type]You can sense that until you next [bold type][wisp-trigger of W][roman type], your [bold type][if W is strength-buffing]strength[otherwise if W is dexterity-buffing]dexterity[otherwise]intelligence[end if] is increased![roman type].".

[A curse wisp is  type of wisp that will punish you if you complete its "trigger" before completing its "quest". ]
A evil-wisp is a kind of wisp. A wisp has an object called the wisp-quest. A wisp has an object called a wisp-punishment.

evil-wisp-1 is a evil-wisp. Understand "leftmost" as evil-wisp-1. evil-wisp-2 is a evil-wisp. Understand "left" as evil-wisp-2. evil-wisp-3 is a evil-wisp. Understand "rightmost" as evil-wisp-3. evil-wisp-4 is a evil-wisp. Understand "rightmost" as evil-wisp-4.

To say ExamineDesc of (W - an evil-wisp):
	say "A [ColourDesc of W] cursed wisp is following you. You must [wisp-quest of W] before you next [wisp-trigger of W], or else you will [wisp-punishment of W].".

To update background colour of (W - an evil-wisp):
	let WP be the wisp-punishment of W;
	if debugmode > 1, say "WP of [W] is [WP].";
	if WP is a wisp stat punishment, now the backgroundColour of W is the wisp-colour of WP;
	otherwise now the backgroundColour of W is TQMagenta;
	now the text-shortcut of W is the substituted form of "[ColourDesc of W] wisp".

To compute punishment of (W - an evil-wisp):
	say "[bold type][BigNameDesc of W][bold type] shudders as its curse activates! [roman type]";
	compute punishment of the wisp-punishment of W;
	destroy W.

To MagicPurify (W - an evil-wisp):
	compute punishment of W.

To silently set up wisp quest (Q - wisp quest) with (P - wisp punishment) for (W - an evil-wisp):
	now the wisp-quest of W is Q;
	now the wisp-punishment of W is P.

To silently set up wisp quest with (P - wisp punishment) for (W - an evil-wisp):
	let Q be a random appropriate eligible wisp quest;
	silently set up wisp quest Q with P for W.

To silently set up wisp quest (Q - wisp quest) for (W - an evil-wisp):
	let P be bimbo-wisp-punishment;
	if (a random number between 0 and 2) + (a random number between 0 and 2) < game difficulty, now P is a random appropriate wisp punishment;
	silently set up wisp quest Q with P for W.

To silently set up wisp quest for (W - an evil-wisp):
	let Q be a random appropriate eligible wisp quest;
	let P be bimbo-wisp-punishment;
	if (a random number between 0 and 2) + (a random number between 0 and 2) < game difficulty, now P is a random appropriate wisp punishment;
	silently set up wisp quest Q with P for W.

To deploy an evil wisp:
	let W be a random nonstalking evil-wisp;
	if W is a wisp:
		set up W.

[A blessing wisp is a type of wisp that will grant you a stat boost until you complete its "trigger"]
A nice-wisp is a kind of wisp. A nice-wisp can be strength-buffing, dexterity-buffing, intelligence-buffing or not-buffing (this is the wisp-buff property). A nice-wisp is usually not-buffing.

nice-wisp-1 is a nice-wisp. Understand "lower left" as nice-wisp-1. nice-wisp-2 is a nice-wisp. Understand "upper left" as nice-wisp-2. nice-wisp-3 is a nice-wisp. Understand "lower right" as nice-wisp-3. nice-wisp-4 is a nice-wisp. Understand "upper right" as nice-wisp-4.

To decide which figure-name is the examine-image of (W - a nice-wisp):
	decide on Figure of Nice Wisp.

To say ExamineDesc of (W - a nice-wisp):
	say "A fiery [']blessing wisp['] is following you. It is increasing your [if W is strength-buffing]strength[otherwise if W is dexterity-buffing]dexterity[otherwise]intelligence[end if], but only until you next [wisp-trigger of W].".

To silently set up wisp buff for (W - a nice-wisp):
	let R be a random number from 1 to 3;
	if R is 1, now W is strength-buffing;
	if R is 2, now W is dexterity-buffing;
	if R is 3, now W is intelligence-buffing;

To deploy a nice wisp:
	let W be a random nonstalking nice-wisp;
	if W is a wisp:
		set up W.

To compute punishment of (W - a nice-wisp):
	say "[bold type][BigNameDesc of W][bold type] shudders and vanishes, and you lose the [if W is strength-buffing]strength[otherwise if W is dexterity-buffing]dexterity[otherwise]intelligence[end if] buff![roman type][line break]";
	destroy W.

To MagicPurify (W - a nice-wisp):
	destroy W.

[camera-drones are essentially camera traps that follow the player everywhere instead of being limited to a single area. After a snapshot, they will upload for a few turns depending on combat speed, then disappear. They can be stopped from uploading if they are brought under rain/a sprinkler/taken swimming OR if an npc is defeated (with doom active, rain won't work)]
camera-drone is a follower. The printed name of camera-drone is "[if doomed > 0]eye stalker[otherwise]camera drone[end if] ([if the item described is uploading]uploading[otherwise]recording[end if])". camera-drone can be uploading. camera-drone is not uploading. camera-drone has a poster called drone-poster. The drone-poster of camera-drone is blank-poster. camera-drone has a number called upload-progress. The upload-progress of camera-drone is 0. Understand "camera", "drone", "eye", "stalker" as camera-drone. camera-drone has a number called waterlogged. The waterlogged of camera-drone is 0. The text-shortcut of camera-drone is "camera drone".

Figure of Happy Eye Stalk is the file "Env/MultiFloor/eyestalk2.png".
Figure of Eye Stalk is the file "Env/MultiFloor/eyestalk1.png".
Figure of Drone is the file "Env/MultiFloor/drone1.png".
Figure of Happy Drone is the file "Env/MultiFloor/drone2.png".
To decide which figure-name is the examine-image of (W - camera-drone):
	if doomed > 0:
		if W is uploading, decide on Figure of Happy Eye Stalk;
		decide on Figure of Eye Stalk;
	if W is uploading, decide on Figure of Happy Drone;
	decide on Figure of Drone.

To say ShortDesc of (F - camera-drone):
	say "[if doomed > 0]eye stalker[otherwise]camera drone[end if]";

To say FollowerDesc of (F - camera-drone):
	if F is uploading, say "It seems like it's trying to upload the humiliating footage it took of you. [if doomed > 0]There's probably no way to stop it now[otherwise]If only you could [bold type]get it wet[roman type] and cause it to short-circuit[end if]...";
	otherwise say "It seems like it's trying to catch you in a compromising position. Perhaps you can find somewhere to go that it won't follow you...";

To reset (D - camera-drone) with flavour (flav - a truth state):
	if flav is true, say "The [ShortDesc of D] [if doomed <= 0]shoots out several sparks before exploding like a popped balloon, leaving nothing but a cloud of[otherwise]blinks several times before disappearing in a puff of purple[end if] smoke. Looks like you prevented that upload!";
	destroy D;
	now the drone-poster of D is blank-poster;
	now D is not uploading;
	now the upload-progress of D is 0.

To deploy a drone camera:
	let D be camera-drone;
	if doomed > 0, now the text-shortcut of D is "eye stalker";
	unless D is stalking:
		followerset D;
		now D is not uploading;
		now the upload-progress of D is 0;
		now the drone-poster of D is blank-poster;

To complete upload of (D - camera-drone):
	distribute drone-poster of D;
	if the number of blank rows in the Table of Published Disgraces > 0, publish drone-poster of D.

To compute ditching (D - camera-drone):
	say "The [ShortDesc of D] doesn't follow you. [if D is uploading]There's no way you're stopping that upload now...[otherwise]Looks like it won't bother you anymore![end if][line break]";
	if D is uploading, complete upload of D;
	reset D with flavour false.

To say FlashFlav of (M - camera-drone):
	say "[bold type]FLASH![roman type][line break]A bright flash like lightning envelops the room for a brief moment. You had forgotten about that stupid [ShortDesc of M]!";

To compute snapshot of (Y - camera-drone) with (P - a poster):
	unless the drone-poster of Y is blank-poster:
		say "[bold type]FLASH![roman type][line break]A bright flash like lightning envelops the room for a brief moment. The [ShortDesc of Y] then [if doomed < 1]shoots out several sparks[otherwise]blinks several times in rapid succession[end if] before exploding like a popped balloon. Looks like you confused it![line break]";
		reset Y with flavour false;
	otherwise:
		say FlashFlav of Y;
		now Y is uploading;
		develop P;
		now the drone-poster of Y is P.

To compute dunking (D - camera-drone):
	now the waterlogged of D is 3;
	if doomed <= 0:
		if D is not uploading, say "The [ShortDesc of D] emits a small spark as it quickly withdraws its antenna.[one of] Could liquids be bad for it?[or][stopping]";
		otherwise reset D with flavour true;
	otherwise:
		if D is not uploading, say "The liquid wicks off the [ShortDesc of D]'s surface as its pupil dilates[one of]. Could it be stronger underwater?[or].[stopping]";
		otherwise complete upload of D.

An all later time based rule (this is the drone upload rule):
	if camera-drone is stalking:
		let D be camera-drone;
		if the drone-poster of D is not blank-poster:
			increase the upload-progress of D by 1;
			if the waterlogged of D > 0:
				if doomed < 1:
					say "The [ShortDesc of D] shoots out an antenna, only for it to immediately spit out sparks and explode like a popped balloon, leaving nothing but a cloud of smoke. Looks like it couldn't handle getting wet!";
				otherwise:
					say "The [ShortDesc of D] 's dilated pupil freezes in place, glowing bright pink for a second before disappearing in a puff of purple smoke. Looks like it got what it needed...";
					complete upload of D;
				reset D with flavour false;
			otherwise if D is not uploading:
				let P be the drone-poster of D;
				now P is off-stage;
				now D is uploading;
				if doomed < 1, say "The antenna the [ShortDesc of D]'s back begins to blink in rapid succession. You have a feeling that if you don't find a way to overwrite it or disable the drone, that compromising picture it just took is going to get uploaded somewhere!";
				otherwise say "The [ShortDesc of D]'s  pupil begins to move rapidly in all directions. You have a feeling that if you don't find a way to distract it, that compromising picture it just took is going to get uploaded somewhere!";
			otherwise:
				if the upload-progress of D > 7 * combatSpeed:
					if doomed < 1, say "The [ShortDesc of D]'s antenna gives off one final, sustained blink before the entire thing explodes like a popped balloon, leaving behind nothing but a cloud of smoke. Looks like you lost your chance to stop the upload...";
					otherwise say "The [ShortDesc of D]'s pupil freezes in place, glowing bright pink for several seconds before the whole thing disappears in a puff of smoke. Whatever it was up to, looks like you just lost your chance to stop it...";
					complete upload of D;
					reset D with flavour false;
				otherwise if the remainder after dividing the upload-progress of D by (3 * combatSpeed) is 3:
					if doomed <= 0, say "The [ShortDesc of D]'s antenna starts blinking even faster!";
					otherwise say "The [ShortDesc of D]'s pupil bounces around even faster!";
		otherwise if the waterlogged of D > 0:
			decrease the waterlogged of D by 1;
			if the waterlogged of D is 0:
				if doomed < 1, say "The [ShortDesc of D] sticks out its antenna again.";
				otherwise say "The [ShortDesc of D]'s pupil returns to its normal size.";

[A trophy wisp is a kind of follower.]

[
During combat, sometimes portals can shoot attacks at enemies, but depending on the enemy, they can also attack you, which must be dodged.

Portal wisps can also drag you into the portal temporarily and fuck you. (TODO)

Portal wisps can spawn imps/slimeballs (TODO)
]

[A portal is a temporary follower that runs out of life as it does things. Sometimes these things are beneficial, sometimes, they're bad.]
A mini-portal is a kind of follower. A mini-portal has a number called charge. The charge of a mini-portal is usually 0. The printed name of a portal wisp is "[if the item described is infernal-portal]infernal[otherwise]eldritch[end if] seeker portal". Understand "portal", "seeker" as mini-portal.

To say ExamineDesc of (W - a mini-portal):
	say "A [if W is infernal-portal]fiery red[otherwise]pitch black[end if] portal is following you.".

infernal-portal is a mini-portal. The printed name of infernal-portal is "infernal portal". The text-shortcut of infernal-portal is "infernal portal".

eldritch-portal is a mini-portal. The printed name of eldritch-portal is "eldritch portal". The text-shortcut of eldritch-portal is "eldritch portal".

Figure of Infernal Miniportal is the file "Env/MultiFloor/miniportal1.png".
Figure of Eldritch Miniportal is the file "Env/MultiFloor/miniportal2.png".
To decide which figure-name is the examine-image of (W - a mini-portal):
	if W is eldritch-portal, decide on Figure of Eldritch Miniportal;
	decide on Figure of Infernal Miniportal.

To decide which number is the magic-cost of (T - a mini-portal):
	decide on 2.

To deploy hell portal:
	let W be infernal-portal;
	if W is nonstalking:
		followerset W;
		say "You feel a flash of heat as a fist-sized, glowing window to a fiery realm tears itself open above your head.".

To deploy eldritch portal:
	let W be eldritch-portal;
	if W is nonstalking:
		followerset W;
		say "A ripple passes through your surroundings, and you hear a shattering noise as fragments of thin air fall away from a point above your head, revealing a fist-sized window to a pitch-black abyss.".


Carry out purifying mini-portal:
	allocate 2 seconds;
	compute MagicDrain of the noun;
	say "You feel the magical power that has built up in your body flow into the portal, breaking down the forces that hold it inside this plane of existence.";
	destroy the noun.

To ChargeUp (W - a mini-portal) by (N - a number):
	increase the charge of W by N;
	if the charge of W < 0, now the charge of W is 0;
	if the charge of W > 100, now the charge of W is 100.

monster-chase-counter is a number that varies. monster-chase-counter is 0.
An all later time based rule (this is the portal spawn rule):
	let W be a random warp portal in the location of the player;
	unless W is warp portal, now W is a random stalking mini-portal;
	if W is a thing:
		if monster-chase-counter < 30 / combatSpeed:
			increase monster-chase-counter by 1;
		otherwise if playerRegion is not School:
			let M be a random alive nonregional imp;
			if W is mini-portal and W is infernal-portal and M is not a monster, now M is a random off-stage imp;
			unless M is monster:
				let T be a random alive nonregional tentacle monster;
				if 2 + the size-rank of T >= doomed or W is eldritch-portal, now M is T;
			unless M is monster and egg laying fetish is 1, now M is a random alive nonregional facehugger;
			unless M is monster, now M is a random nonregional slimeball;
			if M is monster:
				now M is in the location of the player;
				if the monstersetup of M is 0, set up M;
				if W is warp portal:
					say "A [NameDesc of M] emerges from the giant, swirling portal.";
				otherwise:
					if M is imp, ChargeUp W by 10;
					otherwise ChargeUp W by 30;
					say "A ripple passes through your surroundings, and you look back to see [if the number of stalking mini-portal > 1]one of the portals[otherwise]the portal[end if] dropping to the ground, yawning open as a [NameDesc of M] crawls through.";
				if M is not slimeball and M is not imp, say "[line break][variable custom style][one of]Is that the one from before?![or]Did [he of M] follow me here?![or]I think I recognize [him of M] from before![in random order][roman type][line break][GotUnluckyFlav]";
				now monster-chase-counter is 0;
	repeat with P running through stalking mini-portal:
		if the charge of P > 90 + ((doomed + tough-shit) * 30):
			say "The [P] winks out of existence.";
			now the charge of P is 0;
			destroy P.

Quests ends here.
