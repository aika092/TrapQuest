Quests by Clothing begins here.

A clothing-quest is a kind of object.

A clothing-quest can be disappearing or persistent. A clothing-quest is usually disappearing.

A headgear-clothing-quest is a kind of clothing-quest. A headgear-clothing-quest is persistent.

To decide what number is the quest-weighting of (Q - a clothing-quest) for (C - a clothing): [How often should this appear as the quest?]
	decide on 0.

To decide what number is the actual-quest-weighting of (Q - a clothing-quest) for (C - a clothing):
	if C is unremovable and Q is not persistent, decide on 0; [Unremovable objects need quests that are persistent]
	decide on the quest-weighting of Q for C.

Definition: a clothing-quest is appropriate: decide yes.

To decide which number is the total-quest-weighting of (C - a clothing):
	let N be 0;
	repeat with Q running through clothing-quests:
		increase N by the actual-quest-weighting of Q for C;
	decide on N.

To decide which clothing-quest is the random-quest of (C - a clothing):
	let R be a random number between 1 and the total-quest-weighting of C;
	if debugmode is 2, say "Setting up quest for [C]. Total weighting is [R]. ";
	repeat with Q running through clothing-quests:
		decrease R by the actual-quest-weighting of Q for C;
		if R < 1:
			if debugmode is 2, say "Decided on [Q].";
			decide on Q;
	if debugmode is 2, say "Unable to find a quest.";
	decide on no-clothing-quest. [Shouldn't be necessary]

To compute quest of (C - a clothing):
	if C is cursed and tutorial is 0, assign quest to C.

To compute summoned quest of (C - a clothing): [sometimes after summoning an item we want to give it a quest and let the player know]
	compute quest of C;
	unless the quest of C is no-clothing-quest, say QuestFlav of C.

To compute new quest of (C - a clothing): [sometimes we want to give the clothing a new quest]
	let OQ be the quest of C;
	let N be 200;
	while N > 0 and the quest of C is OQ:
		compute quest of C;
		decrease N by 1;
	if the quest of C is OQ, say "[BigNameDesc of C] refuses to change its quest!";
	otherwise say QuestFlav of C.

To assign quest to (C - a clothing):
	now the quest of C is the random-quest of C;
	set up the quest of C.

To progress quest of (Q - a clothing-quest) for (C - a clothing):
	do nothing.

To set up (Q - a clothing-quest):
	do nothing.

To say QuestFlav of (C - a clothing):
	say QuestFlav of the quest of C.

To say QuestFlav of (Q - a clothing-quest):
	say "".

Carry out wearing cursed clothing:
	if the noun is not sure and the noun is discovered varied: [We want the quest to be as relevant as possible for right now. So if this is the first time the player is wearing it, let's make sure it's not something stupid that only made sense earlier when the item was found, e.g. virginity]
		compute quest of the noun.

Report examining clothing:
	if the noun is sure and (the noun is cursed or the quest of the noun is persistent), say QuestFlav of the noun.

Report wearing clothing:
	if the noun is worn cursed clothing:
		say QuestFlav of the noun;
		if newbie tips is 1 and the quest of the noun is not no-clothing-quest, say "[one of][newbie style]Newbie tip: Your item has a 'quest' attached to it! This means that if you perform the task outlined above, the curse will disappear and you'll be able to remove the item[if the quest of the noun is disappearing]. In fact, with this particular quest, the item will just disappear entirely. Other less common quests will simply decurse the item and also give you a special (usually slightly bad) effect every time you complete the quest, and it's up to you if it's worth it to keep wearing it[end if].[roman type][line break][or][stopping]".

To say QuestTitle of (C - a clothing):
	say QuestTitle of the quest of C.

To say QuestTitle of (Q - a clothing-quest):
	say "".

To say quest-desc:
	if item described is sure and (item described is cursed or the quest of item described is persistent), say QuestTitle of item described.

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
		only destroy C;
	otherwise:
		say QuestPersistFlav of Q on C;
		compute persistent reward of Q on C;
		if C is bland, now C is blessed;
		if C is cursed, silently bless C;
	say "[roman type][line break]";
	compute consequence of QC.

To say QuestProgressFlav of (Q - a clothing-quest) on (C - a clothing):
	if C is cursed, say "You can feel the curse of your [ShortDesc of C] weakening as you fulfil its wishes!".

To say QuestCompleteFlav of (Q - a clothing-quest) on (C - a clothing):
	say "The magic sealing your [MediumDesc of C] is lifted and it rips itself from your [body area of C] before falling to the ground and quickly fading away, leaving nothing behind.".

To progress quest of (Q - a clothing-quest):
	repeat with C running through worn clothing:
		if C is diaper-stack:
			repeat with D running through the list of stacked diapers:
				if D is cursed or the quest of D is persistent:
					if the quest of D is Q, compute quest completion of Q on D;
		otherwise:
			if C is cursed or the quest of C is persistent:
				if the quest of C is Q, compute quest completion of Q on C.

To say QuestPersistFlav of (Q - a clothing-quest) on (C - a clothing):
	say "[if C is cursed]The magic sealing your [MediumDesc of C] is lifted! It rewards your efforts by[otherwise if C is bland and Q is headgear-clothing-quest]You sense a blessing being laid upon your [MediumDesc of C]! It rewards your continued efforts by[otherwise]Your [MediumDesc of C] rewards your continued efforts by[end if] ".

To compute persistent reward of (Q - a clothing-quest) on (C - a clothing):
	if C is pussy covering:
		say "gently vibrating, stimulating your [genitals]!";
		stimulate vagina from C;
	otherwise:
		say "flooding you with arousal!";
		arouse 2500.


Part - No Quest

no-clothing-quest is a clothing-quest.

A clothing has a clothing-quest called quest. The quest of a clothing is usually no-clothing-quest.

Part - Chest Exposing Quest

chest-exposing-quest is a clothing-quest. chest-exposing-quest has a number called greet-count. chest-exposing-quest has an object called latest-monster.

Definition: chest-exposing-quest is appropriate if diaper quest is 0 and the largeness of breasts >= 2.

To decide what number is the quest-weighting of (Q - chest-exposing-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if C is not-top-displacable breast covering clothing, decide on 0;
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
	unless M is the latest-monster of Q:
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

Definition: cum-swallowing-quest is appropriate if diaper quest is 0.

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

Definition: piss-drinking-quest is appropriate if watersports fetish is 1.

To decide what number is the quest-weighting of (Q - piss-drinking-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if the urine-taste-addiction-influence of C < 0, decide on 0;
	if the urine taste addiction of the player < 4, decide on 0;
	if C is ballgag, decide on 0;
	decide on 3.

To say QuestFlav of (Q - piss-drinking-quest):
	say "You sense that it wants you to drink some urine.".

To say QuestTitle of (Q - piss-drinking-quest):
	say " (urine drinking quest)".


Part - Anal Orgasm Quest

anal-orgasm-quest is a clothing-quest.

Definition: anal-orgasm-quest is appropriate if diaper quest is 0.

To decide what number is the quest-weighting of (Q - anal-orgasm-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if the anal-sex-addiction-influence of C < 0, decide on 0;
	if C is penetrating asshole, decide on 0;
	if C is ass covering:
		if C is not displacable and C is not zippable, decide on 0;
	decide on 3.

To say QuestFlav of (Q - anal-orgasm-quest):
	say "You sense that it wants you to have an anal orgasm.".

To say QuestTitle of (Q - anal-orgasm-quest):
	say " (anal orgasm quest)".


Part - Anal Virginity Quest

anal-virginity-quest is a clothing-quest.

Definition: anal-virginity-quest is appropriate if diaper quest is 0 and the analvirgin of the player is 1.

To decide what number is the quest-weighting of (Q - anal-virginity-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if the anal-sex-addiction-influence of C < 0, decide on 0;
	if C is pussy protection, decide on 20;
	if C is ass covering:
		if C is not displacable and C is not zippable, decide on 0;
	if C is sissifying, decide on 4;
	decide on 0.

To say QuestFlav of (Q - anal-virginity-quest):
	say "You sense that it wants you to lose your anal virginity.".

To say QuestTitle of (Q - anal-virginity-quest):
	say " (anal sex quest)".


Part - Vaginal Virginity Quest

vaginal-virginity-quest is a clothing-quest.

Definition: vaginal-virginity-quest is appropriate if diaper quest is 0 and the player is female and the virgin of the player is 1.

To decide what number is the quest-weighting of (Q - vaginal-virginity-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if the vaginal-sex-addiction-influence of C < 0, decide on 0;
	if C is crotch-exposing, decide on 20;
	if C is pussy covering:
		if C is not displacable and C is not zippable, decide on 0;
	if C is penetrating vagina, decide on 0;
	if C is purity, decide on 10;
	decide on 0.

To say QuestFlav of (Q - vaginal-virginity-quest):
	say "You sense that it wants you to lose your vaginal virginity.".

To say QuestTitle of (Q - vaginal-virginity-quest):
	say " (vaginal sex quest)".



Part - Egg Laying Quest

egg-laying-quest is a clothing-quest.

Definition: egg-laying-quest is appropriate if egg laying fetish is 1.

To decide what number is the quest-weighting of (Q - egg-laying-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if C is penetrating asshole, decide on 0;
	if the number of on-stage eggs is 0, decide on 0;
	if C is pussy protection, decide on 13;
	if C is ass covering:
		if C is not displacable and C is not zippable, decide on 0;
	decide on 3.

To say QuestFlav of (Q - egg-laying-quest):
	say "You sense that it wants you to lay some eggs.".

To say QuestTitle of (Q - egg-laying-quest):
	say " (egg laying quest)".



Part - Interracial Presenting Quest

interracial-sex-quest is a clothing-quest.

Definition: interracial-sex-quest is appropriate if interracial fetish is 1.

To decide what number is the quest-weighting of (Q - interracial-sex-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if the sex-addiction-influence of C < 0, decide on 0;
	if C is penetrating asshole, decide on 0;
	if C is interracial themed, decide on 20;
	if C is ass covering:
		if C is not displacable and C is not zippable, decide on 0;
	decide on 3.

To say QuestFlav of (Q - interracial-sex-quest):
	say "You sense that it wants you to beg a black man to [if pregnancy fetish is 1]breed[otherwise]fuck[end if] you.".

To say QuestTitle of (Q - interracial-sex-quest):
	say " (interracial sex seeking quest)".




Part - Titfuck Quest

titfuck-quest is a clothing-quest. titfuck-quest has a number called titfuck-count.

Definition: titfuck-quest is appropriate if diaper quest is 0 and the largeness of breasts >= 5.

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

Definition: creampie-drinking-quest is appropriate if diaper quest is 0.

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



Part - Milk Drinking Quest

milk-drinking-quest is a clothing-quest.

Definition: milk-drinking-quest is appropriate if the milk volume of breasts > 0.

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

Definition: vaginal-creampie-quest is appropriate if the player is female and diaper quest is 0.

To decide what number is the quest-weighting of (Q - vaginal-creampie-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if the semen-addiction-influence of C < 0, decide on 0;
	if C is crotch-exposing, decide on 20;
	if C is penetrating vagina, decide on 0;
	if C is pussy covering:
		if C is not displacable and C is not zippable, decide on 0;
	if C is pregnancy related, decide on 14;
	decide on 2.

To say QuestFlav of (Q - vaginal-creampie-quest):
	say "You sense that it wants you to receive [if pregnancy fetish is 1]creampies from people that might get you pregnant[otherwise]vaginal creampies[end if].".

To say QuestTitle of (Q - vaginal-creampie-quest):
	say " (vaginal creampie quest)".


To progress quest of (Q - vaginal-creampie-quest) from (T - a thing):
	if (pregnancy fetish is 1 and T is father material) or T is live:
		repeat with C running through worn cursed clothing:
			if the quest of C is Q:
				compute quest completion of Q on C.


Part - Candy Eating Quest

candy-eating-quest is a clothing-quest. candy-eating-quest has a number called candy-count.

Definition: candy-eating-quest is appropriate if weight gain fetish > 0 or diaper messing >= 3.

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
	progress quest of trick-or-treat-quest;
	increase the candy-count of Q by 1;
	repeat with C running through worn cursed clothing:
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
	unless N is the latest-drink of Q:
		increase the drink-count of Q by 1;
		now the latest-drink of Q is N;
		repeat with C running through worn cursed clothing:
			if the quest of C is Q:
				if the drink-count of Q > 1:
					compute quest completion of Q on C;
				otherwise:
					say QuestProgressFlav of Q on C.


Part - Condom Creampie Quest

condom-creampie-quest is a clothing-quest.

Definition: condom-creampie-quest is appropriate if there is a held condom-providing thing.

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
	unless M is the latest-kick of Q:
		repeat with C running through worn cursed clothing:
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

Definition: heel-walking-quest is appropriate if diaper quest is 0.

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

Definition: careful-peeing-quest is appropriate if diaper lover > 0 and the player is not incontinent.

To decide what number is the quest-weighting of (Q - careful-peeing-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if C is pee covering and C is not displacable and C is not zippable, decide on 0;
	if C is bed wetting, decide on 20;
	decide on 1.

To say QuestFlav of (Q - careful-peeing-quest):
	say "You sense that it wants you to pee in toilets and bodies of water.".

To say QuestTitle of (Q - careful-peeing-quest):
	say " (careful peeing quest)".

To compute persistent reward of (Q - careful-peeing-quest) on (C - a clothing):
	say "temporarily speeding up the digestion [if diaper messing < 3]of fluids [end if]in your stomach!";
	increase digestion-timer by 60.


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
	say "[if the raw dexterity of the player < 20]improving your dexterity but also [end if]flooding your head with dreams of getting [if bukkake fetish is 1][semen] all over your body and clothes and getting [end if]creampied!";
	if the raw dexterity of the player < 20, DexUp 1;
	SemenAddictUp 1.




Part - Poking Quest

poking-quest is a clothing-quest.

Definition: poking-quest is appropriate if diaper quest is 0.

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

Definition: inking-quest is appropriate if the number of worn tattoos > 0.

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

Definition: lever-quest is appropriate if there is an alive caged dungeon boss.

To decide what number is the quest-weighting of (Q - lever-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	decide on 1.

To say QuestFlav of (Q - lever-quest):
	say "You sense that it wants you to find an important-looking lever and pull it.".

To say QuestTitle of (Q - lever-quest):
	say " (lever quest)".


Part - Upskirt Quest

upskirt-quest is a clothing-quest. upskirt-quest is persistent.

Definition: upskirt-quest is appropriate if there is worn short or longer clothing.

To decide what number is the quest-weighting of (Q - upskirt-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	decide on 1.

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
	heal vagina times 2.


Part - Tentacle Quest

tentacle-quest is a clothing-quest. tentacle-quest is persistent.

Definition: tentacle-quest is appropriate if tentacle fetish is 1.

To decide what number is the quest-weighting of (Q - tentacle-quest) for (C - a clothing):
	decide on 0. [Only occurs when the code specifies (e.g. when schoolgirl outfit is summoned)]

To say QuestFlav of (Q - tentacle-quest):
	say "You sense that it wants you to get fucked by tentacles.".

To say QuestTitle of (Q - tentacle-quest):
	say " (tentacle quest)".

To compute persistent reward of (Q - tentacle-quest) on (C - a clothing):
	let A be a random off-stage apple;
	if A is apple:
		now A is carried by the player;
		say "dropping an [A] into your hand.";
	otherwise:
		say "filling your mind with a reminder to eat your fruit.".


Part - Bursting Quest

bursting-quest is a clothing-quest. bursting-quest is persistent.

Definition: bursting-quest is appropriate if watersports mechanics is 1.

To decide what number is the quest-weighting of (Q - bursting-quest) for (C - a clothing):
	if bursting-quest is not appropriate, decide on 0;
	if C is diaper:
		if strongCurses is 1, decide on 5;
		decide on 50; [90% of diapers should spawn with this]
	decide on 1.

To say QuestFlav of (Q - bursting-quest):
	say "You sense that it wants you to [if the player is incontinent]just... wait for it to happen automatically[otherwise]practice self-control by holding onto your pee for a while even after it becomes risky[end if].".

To say QuestTitle of (Q - bursting-quest):
	say " (bladder holding quest)".

To say QuestPersistFlav of (Q - a bursting-quest) on (C - a clothing):
	say "[if C is cursed]The magic sealing your [MediumDesc of C] is lifted! It rewards you refusing to pee on purpose by[otherwise if C is bland and Q is headgear-clothing-quest]You sense a blessing being laid upon your [MediumDesc of C]! It rewards your continued refusal to pee on purpose by[otherwise]Your [MediumDesc of C] rewards your continued bladder holding efforts by[end if] ".



Part - Next Lesson Quest

next-lesson-quest is a clothing-quest. next-lesson-quest is persistent.

Definition: next-lesson-quest is appropriate: decide yes.

To decide what number is the quest-weighting of (Q - next-lesson-quest) for (C - a clothing):
	decide on 0. [Only occurs when the code specifies (e.g. when schoolgirl outfit is summoned)]

To say QuestFlav of (Q - next-lesson-quest):
	say "You sense that it wants you to attend another lesson at the school.".

To say QuestTitle of (Q - next-lesson-quest):
	say " (school lesson quest)".

To compute persistent reward of (Q - next-lesson-quest) on (C - a clothing):
	let A be a random off-stage apple;
	if A is apple:
		now A is carried by the player;
		say "dropping an [A] into your hand.";
	otherwise:
		say "filling your mind with a reminder to eat your fruit.".



Part - Show and Tell Quest

show-and-tell-quest is a clothing-quest. show-and-tell-quest is persistent.

show-and-tell-quest has an object called latest-exposee.
show-and-tell-quest has a number called expose-count.

To decide what number is the quest-weighting of (Q - show-and-tell-quest) for (C - a clothing):
	decide on 0. [Only occurs when the code specifies (e.g. when a stuffie is summoned)]


To say QuestFlav of (Q - show-and-tell-quest):
	say "You sense that it wants you to have lots of people see you carrying it around.".

To say QuestTitle of (Q - show-and-tell-quest):
	say " (carry around quest)".

To compute persistent reward of (Q - show-and-tell-quest) on (C - a clothing):
	if the player is a bit horny:
		say "cooling off your arousal.";
		now the arousal of the player is 0;
	otherwise:
		say "filling your mind with pure thoughts.";
		SexAddictDown 1.



To progress quest of (Q - show-and-tell-quest) for (M - a monster):
	repeat with C running through worn clothing:
		if C is clothing and the quest of C is Q:
			if M is not latest-exposee of Q:
				now the latest-exposee of Q is M;
				increase the expose-count of Q by 1;
				if the remainder after dividing expose-count of Q by 5 is 0:
					compute quest completion of Q on C;
				otherwise:
					say "[BigNameDesc of C] shudders happily at being seen with you. Keep it up.".

To compute persistent reward of (Q - show-and-tell-quest) on (C - a clothing):
	now the expose-count of Q is 0;
	if C is cursed:
		compute persistent reward of Q on C;
	otherwise:
		say "infusing itself with [one of]powerful magic! You feel that something good will happen when you finally decide to stop letting everyone know how pathetic a [if diaper quest is 1]baby[otherwise]whore[end if] you are.[or]even more blessed magic![stopping]".

Carry out taking off clothing:
	if the quest of the noun is show-and-tell-quest and the expose-count of show-and-tell-quest >= 10:
		say "You can feel the blessed magic your [ShortDesc of the noun] had stored within itself shoot straight into your tendons, making you more flexible!";
		DexUp the expose-count of show-and-tell-quest / 7.


Part - Plug Quest

plug-quest is a clothing-quest. plug-quest has a number called plug-count.

Definition: plug-quest is appropriate if asshole is not actually occupied.

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

A time based rule:
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

Definition: hotel-altar-quest is appropriate if Hotel35 is placed and the player is a august 2019 top donator.

To decide what number is the quest-weighting of (Q - hotel-altar-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	decide on 3.

To say QuestFlav of (Q - hotel-altar-quest):
	say "You sense that it wants you to pray in front of the golden altar in the Hotel.".

To say QuestTitle of (Q - hotel-altar-quest):
	say " (hotel altar quest)".



Part - New Region Quest

new-region-quest is a clothing-quest.

Definition: new-region-quest is appropriate if Mansion01 is not placed or Hotel01 is not placed.

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
	if the number of worn headgear is 0, decide on 6;
	decide on 1.

To say QuestFlav of (Q - throne-quest):
	say "You sense that it wants you to sit on a royal throne.".

To say QuestTitle of (Q - throne-quest):
	say " (throne quest)".

To set up (Q - throne-quest):
	now the charge of throne is 0.



Part - Attack Provocation Quest

attack-quest is a clothing-quest. attack-quest is persistent.

To decide what number is the quest-weighting of (Q - attack-quest) for (C - a clothing):
	if Q is not appropriate, decide on 0;
	if Q is slap ready equippable, decide on 3;
	decide on 1.

To say QuestFlav of (Q - attack-quest):
	say "You sense that it wants you to break your alliance with someone following you around by suddenly attacking them.".

To say QuestTitle of (Q - attack-quest):
	say " (alliance breaking quest)".




Part - Predicament Quest

predicament-quest is a clothing-quest.

To decide what number is the quest-weighting of (Q - predicament-quest) for (C - a clothing):
	decide on 0. [Only occurs when the code specifies (e.g. when you start a predicament)]

To say QuestFlav of (Q - predicament-quest):
	say "You sense that it wants you to reach the end of this predicament scenario.".

To say QuestTitle of (Q - predicament-quest):
	say " (predicament completion quest)".



Quests ends here.
