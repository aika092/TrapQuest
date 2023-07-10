Diaper Framework by Knickers begins here.

diaper is a kind of knickers. a diaper is usually manly. a knickers has a number called mess. a knickers has a number called foreign-mess. The text-shortcut of diaper is "dp".

To decide which number is the soak-limit of (C - a diaper):
	decide on the default-soak-limit of C.
To decide which number is the default-soak-limit of (C - a diaper):
	decide on (the DQBulk of C + 2) * 4.
Definition: a diaper is external fluid immune: decide yes.
To decide which number is the initial armour of (C - a diaper):
	decide on the soak-limit of C / 3.
To decide which number is the crotch-tightness of (C - a diaper):
	decide on 0.

The printed name of a diaper is "[clothing-title-before][selfexamineuniquetitle of item described][clothing-title-after]".

A diaper has a number called perceived-urine-soak. A diaper has a number called perceived-milk-soak. A diaper has a number called perceived-water-soak. A diaper has a number called perceived-semen-soak. A diaper has a number called perceived-mess.

To uniquely destroy (C - a diaper):
	now the perceived-mess of C is 0;
	now the perceived-urine-soak of C is 0;
	now the perceived-water-soak of C is 0;
	now the perceived-semen-soak of C is 0;
	now the perceived-milk-soak of C is 0.

To decide which number is the known-urine-soak of (C - a clothing):
	decide on the urine-soak of C.
To decide which number is the known-milk-soak of (C - a clothing):
	decide on the milk-soak of C.
To decide which number is the known-semen-soak of (C - a clothing):
	decide on the semen-soak of C.
To decide which number is the known-water-soak of (C - a clothing):
	decide on the water-soak of C.
To decide which number is the known-mess of (C - a knickers):
	decide on the mess of C.

To decide which number is the known-urine-soak of (C - a diaper):
	decide on the perceived-urine-soak of C.
To decide which number is the known-milk-soak of (C - a diaper):
	decide on the perceived-milk-soak of C.
To decide which number is the known-semen-soak of (C - a diaper):
	decide on the perceived-semen-soak of C.
To decide which number is the known-water-soak of (C - a diaper):
	decide on the perceived-water-soak of C.
To decide which number is the known-mess of (C - a diaper):
	decide on the perceived-mess of C.

Report examining worn diaper when seconds is 0 and the player is not diaper aware:
	compute state check of the noun.

To process state perception of (C - a diaper):
	if diaper-stack is worn:
		process state perception of diaper-stack;
	otherwise:
		now the perceived-urine-soak of C is the urine-soak of C;
		now the perceived-milk-soak of C is the milk-soak of C;
		now the perceived-water-soak of C is the water-soak of C;
		now the perceived-semen-soak of C is the semen-soak of C;
		if the perceived-mess of C is not the mess of C:
			now the perceived-mess of C is the mess of C;
			if the perceived-mess of C > 0, progress quest of mess-quest.

To process state perception of (D - diaper-stack):
	repeat with C running through the list of stacked diapers:
		now the perceived-urine-soak of C is the urine-soak of C;
		now the perceived-milk-soak of C is the milk-soak of C;
		now the perceived-water-soak of C is the water-soak of C;
		now the perceived-semen-soak of C is the semen-soak of C;
		if the perceived-mess of C is not the mess of C:
			now the perceived-mess of C is the mess of C;
			if the perceived-mess of C > 0, progress quest of mess-quest;
	update diaper stack.

To compute state check of (C - a clothing):
	if the player is not diaper aware, compute awakened state check of C.

To compute awakened state check of (C - a clothing): [If the player goes DOWN from full incontinence, they become diaper aware and we need to call this.]
	if C is diaper:
		say "[bold type]For the first time in a while you actually check the state of your [ShortDesc of C][roman type]. ";
		if C is messed and C is perceived unmessed:
			say "Oh gosh! It turns out you've [if the known-total-soak of C < the total-soak of C]wet and [end if]messed yourself without even realising it!";
		otherwise if the known-total-soak of C < the total-soak of C:
			say "Oh my, it turns out you've wet your diaper [if the known-urine-soak of C > 0]even more [end if]without even realising it!";
		otherwise:
			if the known-total-soak of C > 0, say "It's just as wet as it was last time you checked[if the known-total-soak of C >= the soak-limit of C]. That is to say, it's still completely saturated[end if].";
			otherwise say "It's still completely dry. For now.";
		process state perception of C.

To compute automatic state check of (C - a clothing):
	if C is diaper and the player is not diaper aware:
		if C is messed and C is perceived unmessed:
			say "[bold type]At this moment you realise that you've [if the known-total-soak of C < the total-soak of C]wet and [end if]messed yourself without even realising it![roman type][line break]";
		otherwise if the known-total-soak of C < the total-soak of C:
			say "[bold type]Looking down, you discover you've wet your diaper [if the known-urine-soak of C > 0]even more [end if]without even realising it![roman type][line break]";
		process state perception of C.

To compute combat diaper squish:
	let D be a random messed diaper;
	if D is diaper:
		say "As you thrust your leg, your butt squelches against the mush in your [ShortDesc of D].";
		SlowGrossOut 7;
		compute automatic state check of D;

To decide which number is the known-total-soak of (D - a clothing):
	decide on the total-soak of D.

To decide which number is the known-total-soak of (D - a diaper):
	decide on the perceived-urine-soak of D + the perceived-milk-soak of D + the perceived-water-soak of D + the perceived-semen-soak of D.

Definition: a clothing (called D) is dry rather than wet:
	if the total-soak of D <= 0, decide yes;
	decide no.

Definition: a clothing (called D) is perceived dry rather than perceived wet:
	if D is dry, decide yes;
	decide no.

Definition: a diaper (called D) is perceived dry rather than perceived wet:
	if the known-total-soak of D > 0, decide no;
	decide yes.

Definition: a clothing is unmessed rather than messed: decide yes.

Definition: a knickers is unmessed rather than messed:
	if the mess of it <= 0, decide yes;
	decide no.

Definition: diaper-stack is unmessed rather than messed:
	repeat with D running through the list of stacked diapers:
		if D is messed, decide no;
	decide yes.

Definition: a knickers (called D) is perceived unmessed rather than perceived messed:
	if D is unmessed, decide yes;
	decide no.

Definition: a diaper (called D) is perceived unmessed rather than perceived messed:
	if the perceived-mess of D > 0, decide no;
	decide yes.

Definition: diaper-stack is perceived unmessed rather than perceived messed:
	repeat with D running through the list of stacked diapers:
		if D is perceived messed, decide no;
	decide yes.

Definition: a knickers (called D) is unsoiled rather than soiled:
	if D is clean, decide yes;
	decide no.

Definition: a knickers (called D) is perceived unsoiled rather than perceived soiled:
	if D is unsoiled, decide yes;
	decide no.

Definition: a diaper (called D) is perceived unsoiled rather than perceived soiled:
	if the known-total-soak of D - the perceived-water-soak of D > 0, decide no;
	if D is perceived messed, decide no;
	decide yes.

Check going down when the player is in Woods16 and there is a worn messed knickers and diaper quest is 0:
	say "[variable custom style]I'm not going into some small closed space while wearing this smelly thing![roman type][line break]" instead.

Definition: a clothing is soilable: decide no.

Definition: a diaper is soilable: decide yes.

Definition: a training pants (called D) is soilable:
	if diaper messing < 5 or D is not total protection, decide no;
	decide yes.
Definition: a panties (called D) is soilable:
	if diaper messing < 5 or D is not total protection, decide no;
	decide yes.
Definition: a briefs (called D) is soilable:
	if diaper messing < 5 or D is not total protection, decide no;
	decide yes.
Definition: a hotpants (called D) is soilable:
	if diaper messing < 5 or D is not total protection, decide no;
	decide yes.
Definition: a microshorts (called D) is soilable:
	if diaper messing < 5 or D is not total protection, decide no;
	decide yes.
Definition: a cutoffs (called D) is soilable:
	if diaper messing < 5 or D is not total protection, decide no;
	decide yes.
Definition: a bikini bottoms (called D) is soilable:
	if diaper messing < 5 or D is not total protection, decide no;
	decide yes.
Definition: a pink bikini bottoms is soilable: decide no.
Definition: a crotchless bikini bottoms is soilable: decide no.

To clean (C - a knickers):
	now the urine-soak of C is 0;
	now the milk-soak of C is 0;
	now the semen-soak of C is 0;
	now the foreign-mess of C is 0;
	MessSet C to 0;
	if C is diaper:
		now the perceived-urine-soak of C is 0;
		now the perceived-milk-soak of C is 0;
		now the perceived-semen-soak of C is 0;
	if C is listed in the list of stacked diapers, update diaper stack;
	if C is worn, update appearance level.

To set up influence of (C - a diaper):
	now C is delicateness-influencing.

To compute drying of (C - a diaper):
	do nothing.

disposable diaper is a kind of diaper.
Definition: a disposable diaper is crotch-pullup: decide no.
pullup diaper is a kind of diaper.

To compute SelfExamineDesc of (K - a diaper):
	say "A large puffy adult diaper completely covers your [ShortDesc of hips]. ".

To say selfexamineuniquetitle of (K - a diaper):
	say "diaper".

To say ExamineDesc of (C - a diaper):
	say ClothingDesc of C;
	say diaper-saturation-desc of C;
	if C is crotch-unzipped:
		say "The crotch is currently unzipped.";
	otherwise if C is no protection:
		say "A large tear at the crotch means that your orifices are left unguarded, and urinating will inevitably still cause you to make a mess.".

To decide which number is the original price of (C - a diaper):
	decide on 1.

To decide which number is the heaviness of (D - a diaper):
	decide on the weight of D + 1.

To decide which number is the initial outrage of (C - a diaper):
	if diaper quest is 1, decide on 0;
	decide on the initial cringe of C.

To decide which number is the initial cringe of (C - a diaper):
	let O be 3 + the DQBulk of C;
	increase O by the unique outrage of C;
	decide on O.

To decide which number is the unique outrage of (C - a diaper):
	decide on 0.

To decide which number is the fluid cringe of (C - a diaper):
	if C is wet:
		if C is worn:
			if C is not currently at least partially visible, decide on 0;
			let LP be the at least partial concealer of C;
			if LP is not arms and LP is not butt-windowed clothing and C is not currently visible, decide on 0; [In general, diapers don't reveal their wet status when partially concealed, but arms and butt-windowed clothing are the exceptions]
		if the total-soak of C >= the soak-limit of C, decide on 8;
		decide on 5;
	decide on 0.

Definition: a diaper is fluid immune: decide no.

Definition: a diaper is too boring: decide no.

To say ShortDesc of (D - a diaper):
	say selfexamineuniquetitle of D.

a diaper has a number called curse-charge.

To compute periodic effect of (D - a diaper):
	compute unique periodic effect of D;
	if D is no protection and D is not crotch-unzipped and (D is cursed or D is blessed):
		if the number of embodied things penetrating a fuckhole is 0 and the bladder of the player > 4 and the player is not in danger and (the soak-limit of D / 2 > the total-soak of D):
			say "[bold type]You feel your [D] somehow repair itself! The rip at the crotch disappears, leaving it looking brand new[if the urine-soak of D > 0] (apart from the [urine])[end if].[roman type][line break]";
			repair D;
	increase the curse-charge of D by 1;
	if the curse-charge of D > 35:
		now the curse-charge of D is 0;
		let S be ((the soak-limit of D * 4) / 5) - the total-soak of D; [Is the diaper over 80% full]
		if S <= 0 and D is not cursed and a random number between 1 and 70 is 1:
			say "[bold type]You feel the waistband and leg holes of your [ShortDesc of D] tighten significantly. It looks like you can't take it off any more![line break][variable custom style]I'm being punished for not changing it, aren't I?[roman type][line break]";
			curse D;
	if xavier-diaper-link > 0 and D is total protection:
		increase xavier-diaper-link by 1;
		if xavier-diaper-link is 57 or xavier-diaper-link is 113:
			say "All of a sudden you get a wet feeling from your [genitals]... but it's not you. The Demon Queen must be urinating [one of][or]once [stopping]again! In any case it feels, sounds, and appears as if you are wetting yourself. ";
			AnnouncedExpel urine on D by 12;
			say "[PeeReaction 2]";
			if diaper messing < 3, now xavier-diaper-link is 1;
		if xavier-diaper-link >= 163 and asshole is not actually occupied:
			now xavier-diaper-link is 1;
			say "All of a sudden you feel your butthole open wide to start letting out a massive ooze of poop... but it's not you. The Demon Queen must be messing herself [one of][or]once [stopping]again! In any case it feels, sounds, and appears as if it's you, which is all that really matters. ";
			now rectum is 35;
			compute inhuman partial messing;
	if (doomed >= 5 or D is demon-diaper) and altar-diaper-link > 0 and D is total protection:
		increase altar-diaper-link by 1;
		if ((D is demon-diaper and altar-diaper-link >= 73) or altar-diaper-link >= 147) and (diaper messing < 3 or asshole is not actually occupied):
			now altar-diaper-link is 1;
			say "You hear a rumbling, like thunder in the distance, but much closer by. [one of]It takes you a few moments to[or]This time you quickly[stopping] realise that it's coming from your own belly! Your belly begins to expand as you feel some pressure building inside. It grows and grows and grows, until you look 9 months pregnant, and then continues to grow even further, ballooning to an impossibly unrealistic size, as if you were a cartoon person who'd just swallowed a wrecking ball whole. The rumbling grows worse. And then as soon as it stops growing, the pressure immediately becomes impossible to hold. ";
			if diaper messing >= 3:
				say "All of a sudden you feel your butthole open wider than should be physically possible to become a human sewage pipe, and begin spewing out what feels like a metric tonne of sludge every second. ";
				now rectum is 50;
				compute inhuman partial messing;
			otherwise:
				say "";
				now the bladder of the player is 70;
				now delayed urination is 2;
				try urinating.

To compute unique periodic effect of (D - a diaper):
	do nothing.

Definition: a diaper is basic loot: decide no. [a diaper never spawns from selecting a random basic loot knickers. #MG Seems redundant with the default]

Definition: a diaper is fetish appropriate:
	if diaper lover >= 1, decide yes;
	decide no.

To decide which number is the weight of (D - a knickers):
	let X be (the DQBulk of D + 3) / 3;
	if diaper lover > 0:
		if D is diaper:
			increase X by (the total-soak of D + 9) / 10;
		otherwise:
			increase X by (the total-soak of D + 5) / 6;
		increase X by (the mess of D + 7) / 8;
		decrease X by the magic-modifier of D;
		[let DC be a random worn diaper cover;
		if D is worn and DC is diaper cover and DC is not waddle-walking, now X is X / 2;] [diaper covers used to be good]
	if X > 0, decide on X / 2;
	decide on 0.

[How much does it make the player waddle?]
To decide which number is the waddle-weight of (D - a knickers):
	let X be (the DQBulk of D + 2) / 3;
	if D is diaper:
		increase X by the total-soak of D / 8;
		increase X by the mess of D / 5;
	otherwise:
		increase X by the mess of D / 2;
	decide on X.

Definition: a diaper (called D) is eligible: [This allows us to pull diapers that have been left around the game universe and re-use them]
	if D is store, decide no;
	if D is not plentiful, decide no;
	if D is off-stage, decide yes;
	if there is off-stage plentiful unowned diaper, decide no; [There are some off-stage so we want one of them, not this one]
	if D is in holding pen, decide no;
	if D is held, decide no;
	if D is in the location of the player, decide no;
	if D is in pink wardrobe, decide no;
	repeat with C running through containers in the location of the player:
		if D is in C, decide no; [This is here to stop us spawning a diaper in a container then immediately moving it back to standard item pen]
	decide yes.

To restock (C - a diaper):
	let B be a random eligible diaper;
	if B is diaper:
		repeat with L running through Standard Item Pen:
			if L is diaper, remove L from Standard Item Pen;
		add B to Standard Item Pen.

This is the setup starting diapers rule:
	if diaper lover >= 1 and diaper quest is 0:
		let C be a random diaper;
		restock C.
The setup starting diapers rule is listed in the setup starting items rules.

To say diaper-saturation-desc of (C - a diaper):
	let D be the soak-limit of C;
	if C is perceived messed, say "You have filled the diaper [if the mess of C > 10]to the brim with[otherwise if the mess of C > 5]with a large amount of[otherwise]with a relatively small amount of[end if] your stinky mess.";
	say "[if the known-total-soak of C >= D]It has absorbed as much [soak-types of C] as it can possibly hold, and is puffed out to its largest possible size. [otherwise if the known-total-soak of C >= D / 4]It has absorbed a huge amount of [soak-types of C], and as such has expanded quite a bit. [otherwise if the known-total-soak of C >= D / 6]It has absorbed a decent amount of [soak-types of C]. [otherwise if the known-total-soak of C >= D / 10]It has absorbed a smallish amount of [soak-types of C]. [otherwise if the known-total-soak of C > 0]It has absorbed a small amount of [soak-types of C].[otherwise]It is completely unsoiled. [end if]";
	if C is worn, say "[if the weight of C is 0]It doesn't weigh you down at all.[otherwise if the weight of C is 1]It is weighing you down a tiny amount.[otherwise if the weight of C is 2]It is weighing you down a noticeable amount.[otherwise if the weight of C is 3]It is quite heavy now and the bloated nature is forcing you to walk with a waddle.[otherwise if the weight of C is 4]It is very noticeably weighing you down and making it impossible to walk without a waddle.[otherwise if the weight of C is 5]It is adding significant amounts to your body weight and is forcing your legs apart into an exaggerated waddle.[otherwise if the weight of C is 6]It is extremely heavy and has expanded to a comical size. Your thighs are forced wide apart and you can't bend your knees at all when you walk.[otherwise]It is so heavy from all the [soak-types of C] it is holding that it feels like it is made of lead. The puffy padding has expanded so far in every direction that you can no longer see your feet. You can feel that the bottom of the diaper goes down past your knees. Your thighs and legs are forced so far apart that you can only move by waddling along with the tiniest of steps. You would probably be better off crawling.".

Report wearing diaper:
	if the urine-soak of the noun > 0:
		say "The cold wet squelch as you put the [noun] on makes you [if the diaper addiction of the player < 10]shudder involuntarily. How gross[otherwise if the diaper addiction of the player < 14]squirm uncomfortably. It's cold and clammy[otherwise]shiver with arousal[end if].";
		if the diaper addiction of the player >= 14, stimulate vagina from the noun;
		DiaperAddictUp 1;
	if diaper messing is 3 and the player is feeling full:
		say "Almost as if a switch is flicked inside your stomach, you suddenly feel the [if rectum > 6]desperate [end if]need to go number two.[one of][line break][variable custom style]It's like I only can feel the need to go whilst wearing a diaper?! This game is [if the bimbo of the player < 10]fucked up[otherwise]weird[end if]![roman type][line break][or][stopping]";

Check taking a messed knickers:
	say "[variable custom style]There's no way I'm touching that.[roman type][line break]" instead.

Check wearing a messed knickers:
	say "[variable custom style]There's no way I'm touching that.[roman type][line break]" instead.

Check taking off a worn messed knickers:
	if the noun is perceived unmessed, compute state check of the noun;
	say "[variable custom style]There's no way I'm touching that until I've found [if the bimbo of the player < 13]a way to change and clean myself[otherwise]someone to change me[end if].[roman type][line break]" instead.

Definition: a knickers is removable:
	if it is messed, decide no;
	if tubesuit is worn, decide no;
	decide yes.

To say MonsterOfferRejectFlav of (M - an intelligent monster) to (T - a diaper):
	say "[speech style of M]'Do I look like I have problems controlling my bladder?!'[roman type][line break]".

Definition: a diaper is transformation-theme-blockable: decide no.
Definition: a diaper is disintegration-protected: decide yes.

To decide which object is the unique-upgrade-target of (C - a diaper):
	decide on nothing.

Definition: a diaper (called C) is more-padded: [Before calling this definition, you must set theme-share-target to the other item]
	if the soak-limit of C >= the soak-limit of theme-share-target, decide yes;
	decide no.

To decide which object is the potential-upgrade-target of (C - a diaper):
	[Instead of themes and outrage, diapers care about padding and outrage.]
	now theme-share-target is C;
	let Z be nothing;
	let L1 be the list of fetish appropriate more-padded more-outrageous eligible diapers; [Find all items that could be reasonable transformation targets.]
	add a random waddle diaper to L1;
	if the number of entries in L1 > 0:
		sort L1 in random order;
		let O be 100;
		let P be 100;
		repeat with D running through L1: [Find the least outrageous, least extra padding of the eligible transformation items. Hopefully makes them go in a nice sequence.]
			let IO be the initial outrage of D;
			if IO <= O and the soak-limit of D <= P:
				now Z is D;
				now O is IO;
				now P is the soak-limit of D;
	decide on Z.

Check taking off worn diaper:
	if there is a worn I love my wet nappies T-shirt and the urine-soak of the noun is not 0 and the total-soak of the noun < (the soak-limit of the noun / 2) and the noun is total protection, say "Your [printed name of random worn I love my wet nappies T-shirt] is somehow magically preventing you from removing the [noun]!" instead.

Part - Diaper Functions

To MessUp (K - a knickers) by (N - a number):
	increase the mess of K by N;
	if K is diaper, now the perceived-mess of K is the mess of K.

To StealthMessUp (K - a knickers) by (N - a number):
	increase the mess of K by N;
	if K is diaper and the player is rectum diaper aware, now the perceived-mess of K is the mess of K.

To MessDown (K - a knickers) by (N - a number):
	decrease the mess of K by N;
	if the mess of K < 0:
		now the mess of K is 0;
		now the foreign-mess of K is 0;
	if K is diaper, now the perceived-mess of K is the mess of K.

To MessSet (K - a knickers) to (N - a number):
	now the mess of K is N;
	if K is diaper:
		if N is 0, now the foreign-mess of K is 0;
		now the perceived-mess of K is the mess of K.

Part - Stack of Diapers

diaper-stack is a diaper. diaper-stack is unique. The text-shortcut of diaper-stack is "dstk". Understand "diaper", "double", "triple", "quadruple" as diaper-stack.
The printed name of diaper-stack is usually "[clothing-title-before][selfexamineuniquetitle of item described][clothing-title-after]".

diaper-stack has a number called raw-soak-limit.
To decide which number is the default-soak-limit of (C - diaper-stack):
	decide on the raw-soak-limit of C.

The list of stacked diapers is a list of clothing that varies.

Definition: diaper-stack is transformation-protected: decide yes.
Definition: yourself is stacked-but-outerly-dry:
	if diaper-stack is worn:
		let E be the number of entries in the list of stacked diapers;
		let D be entry E in the list of stacked diapers;
		if D is dry and D is unmessed, decide yes;
	decide no.

To diaperStackStart with (C - a clothing):
	if diaper-stack is worn:
		say "BUG - attempted to start a diaper stack when there was one already!";
	otherwise:
		let K be a random worn knickers;
		if K is knickers:
			now diaper-stack is worn by the player;
			now the bottom-layer of diaper-stack is the bottom-layer of K;
			now K is in Holding Pen;
			now the list of stacked diapers is { };
			add K to the list of stacked diapers;
			diaperAdd C;
		otherwise:
			say "BUG - attempted to start a diaper stack with [C] but there was none already worn!";

Definition: a knickers is DQBulkier rather than DQLessBulky:
	if the DQBulk of it >= the DQBulk of the player, decide yes;
	decide no.

Check wearing diaper when there is a worn diaper:
	if the noun is worn, say "You're already wearing that!" instead;
	if the noun is not held:
		try taking the noun;
		if the noun is held:
			compute extra turn;
			if the player is in danger, say "[bold type]You are in danger, so you stop.[roman type][line break]" instead;
	if the noun is not sure or the noun is not identified, say "You're already wearing a diaper, and you feel like it's only safe to layer up with fully identified diapers." instead;
	if the noun is not DQBulkier, say "That's not large enough to fit over the top of your [random worn diaper]." instead;
	now wearing-target is the noun;
	follow the global wearability rules;
	if the rule failed, do nothing instead;
	repeat with C running through worn crotch-in-place crotch covering skirts:
		if autowear is false, say "You need to [if C is crotch-zipped]unzip[otherwise]pull up[end if] your [printed name of C] to get this on successfully!" instead;
	repeat with C running through worn crotch-pullup clothing:
		unless C is diaper or (C is no protection and wearing-target is not crotch-pullup): [You could put on a disposable diaper through a ripped dress]
			if autowear is false, say "You need to [if C is displacable and wearing-target is not crotch-pullup]displace[otherwise]remove[end if] your [printed name of C] to get this on successfully!" instead;
	allocate 4 seconds;
	say "You wear the [ShortDesc of the noun] on top of the [ShortDesc of a random worn diaper].";
	diaperAdd the noun instead;
	do nothing instead.

To diaperAdd (C - a clothing):
	if C is not listed in the list of stacked diapers:
		now C is identified;
		now C is sure;
		if diaper-stack is not worn:
			diaperStackStart with C;
		otherwise:
			let E be the number of entries in the list of stacked diapers;
			repeat with N running from 1 to E: [If it's a smaller diaper, slot it in the correct place in the list]
				unless C is listed in the list of stacked diapers:
					let D be entry N in the list of stacked diapers;
					if the DQBulk of C < the DQBulk of D, add C at entry N in the list of stacked diapers;
			unless C is listed in the list of stacked diapers, add C to the list of stacked diapers; [slot it in place at the bottom if it hasn't been slotted higher up (i.e. it at least ties for thickest diaper)]
			[If the outermost diaper is locked, transfer this data to the diaper stack object before the outermost diaper's status gets overridden]
			update diaper stack lock status;
			now C is in Holding Pen;
			if debugmode > 1, say "[input-style]During diaperAdd: Glue level of [C] is [glue timer of C].[roman type][line break]";
			update diaper stack;
	otherwise:
		say "BUG - attempted to add [C] to the diaper stack when it was already there. Please report to Aika, preferably with a save file!".

To decide which object is diaperStackOuter:
	if diaper-stack is worn, decide on entry (the number of entries in the list of stacked diapers) in the list of stacked diapers;
	decide on nothing.

To diaperRemove (C - a clothing):
	let N be the number of entries in the list of stacked diapers;
	if C is entry N in the list of stacked diapers:
		repeat with K running through specific-keys covering diaper-stack:
			now K is covering C;
			now K is not covering diaper-stack;
	if N <= 1:
		say "BUG - trying to remove a diaper from a stack of [N].";
	otherwise if C is not listed in the list of stacked diapers:
		say "BUG - attempted to remove [C] from the diaper stack when it wasn't there. Please report to Aika, preferably with a save file!";
	otherwise if N is 2:
		remove C from the list of stacked diapers;
		diaperUnstack;
	otherwise:
		remove C from the list of stacked diapers;
		update diaper stack lock status;
		update diaper stack.

To diaperUnstack:
	if the number of entries in the list of stacked diapers is 1:
		let C be entry 1 of the list of stacked diapers;
		now C is worn by the player;
		now the bottom-layer of C is the bottom-layer of diaper-stack;
		now diaper-stack is in Holding Pen;
		now the list of stacked diapers is { };
	otherwise:
		say "BUG - trying to turn a list of [number of entries in the list of stacked diapers] diapers into a single diaper.".

Check taking off diaper-stack: [Got to take them off one at a time, so we only care about the outside one.]
	let N be the number of entries in the list of stacked diapers;
	let C be entry N in the list of stacked diapers;
	now C is worn by the player;
	now diaper-stack is in Holding Pen;
	now the bottom-layer of C is the bottom-layer of diaper-stack;
	try taking off C;
	now diaper-stack is worn by the player;
	if C is worn: [Couldn't be removed!]
		now C is in Holding Pen;
	otherwise: [It was successfully removed.]
		diaperRemove C;
	do nothing instead.

To late uniquely destroy (C - diaper-stack):
	repeat with D running through the list of stacked diapers:
		remove D from play;
		uniquely destroy D;
		set up D;
	truncate the list of stacked diapers to 0 entries;
	now the perceived-mess of C is 0;
	now the perceived-urine-soak of C is 0;
	now the perceived-water-soak of C is 0;
	now the perceived-semen-soak of C is 0;
	now the perceived-milk-soak of C is 0.

Definition: diaper-stack is crotch-pullup:
	repeat with D running through the list of stacked diapers:
		if D is crotch-pullup, decide yes;
	decide no.

To compute SelfExamineDesc of (K - diaper-stack):
	say "You are currently wearing ";
	let N be the number of entries in the list of stacked diapers;
	let X be N;
	while X > 0:
		let D be entry X in the list of stacked diapers;
		say "the [ShortDesc of D][if X is 2] and[otherwise if X is not 1],[end if] ";
		decrease X by 1;
	say "on top of each other over your [ShortDesc of hips]. ".

To say selfexamineuniquetitle of (K - diaper-stack):
	let N be the number of entries in the list of stacked diapers;
	say "[if N is 2]double diaper[otherwise if N is 3]triple diaper[otherwise if N is 4]quadruple diaper[otherwise if N is 5]quintuple diaper[otherwise][N] diapers[end if]".

To say ExamineDesc of (C - diaper-stack):
	let N be the number of entries in the list of stacked diapers;
	let X be N;
	while X > 0:
		let D be entry X in the list of stacked diapers;
		say "[if N is X]You[otherwise]Underneath this you[end if] are wearing the [MediumDesc of D][if D is cursed] (cursed)[end if][displacement-desc of D]. [diaper-saturation-desc of D]";
		if D is crotch-unzipped:
			say "The crotch is currently unzipped.";
		otherwise if D is no protection:
			say "it has a large tear at the crotch.";
		decrease X by 1.

To say ImageDesc of (D - diaper-stack):
	if images visible is 1:
		repeat with C running through the list of stacked diapers:
			appropriate-display examine-image of C for C.

To decide which figure-name is the clothing-image of (D - diaper-stack):
	let N be the number of entries in the list of stacked diapers;
	decide on the clothing-image of entry N in the list of stacked diapers.

To compute unique periodic effect of (D - diaper-stack):
	repeat with C running through the list of stacked diapers:
		compute unique periodic effect of C.

To decide which number is the initial outrage of (C - diaper-stack):
	if diaper quest is 1, decide on 0;
	decide on the initial cringe of C.

To decide which number is the initial cringe of (C - diaper-stack):
	let O be 0;
	repeat with D running through the list of stacked diapers:
		let I be the initial cringe of D;
		if I > O, now O is I;
	decide on O + the number of entries in the list of stacked diapers.

To decide which object is the concealer of (K - diaper-stack): [Nothing can completely conceal a double diaper]
	decide on nothing.

To SemenSoakUp (C - diaper-stack) by (N - a number):
	now previous-clothing-glazed is -1; [force appearance reassessment]
	SemenSoakUp entry 1 of the list of stacked diapers by N.
To UrineSoakUp (C - diaper-stack) by (N - a number):
	now previous-clothing-glazed is -1; [force appearance reassessment]
	UrineSoakUp entry 1 of the list of stacked diapers by N.
To MilkSoakUp (C - diaper-stack) by (N - a number):
	now previous-clothing-glazed is -1; [force appearance reassessment]
	MilkSoakUp entry 1 of the list of stacked diapers by N.
To WaterSoakUp (C - diaper-stack) by (N - a number):
	now previous-clothing-glazed is -1; [force appearance reassessment]
	WaterSoakUp entry 1 of the list of stacked diapers by N.

To LiquidSoak (L - semen) On (C - diaper-stack):
	SemenSoakUp entry 1 of the list of stacked diapers by 1.
To LiquidSoak (L - urine) On (C - diaper-stack):
	UrineSoakUp entry 1 of the list of stacked diapers by 1.
To LiquidSoak (L - milk) On (C - diaper-stack):
	MilkSoakUp entry 1 of the list of stacked diapers by 1.
To LiquidSoak (L - water) On (C - diaper-stack):
	WaterSoakUp entry 1 of the list of stacked diapers by 1.

To UniqueSquirt (L - a liquid-object) On (C - diaper-stack) by (N - a number):
	if inside-out is true, UniqueSquirt L on entry 1 of the list of stacked diapers by N;
	otherwise UniqueSquirt L on entry (number of entries in the list of stacked diapers) of the list of stacked diapers by N;

To MessUp (K - diaper-stack) by (N - a number):
	increase the mess of entry 1 of the list of stacked diapers by N;
	now the perceived-mess of entry 1 of the list of stacked diapers is the mess of entry 1 of the list of stacked diapers;
	increase the mess of K by N;
	now the perceived-mess of K is N.

To StealthMessUp (K - diaper-stack) by (N - a number):
	increase the mess of entry 1 of the list of stacked diapers by N;
	if the player is rectum diaper aware, now the perceived-mess of entry 1 of the list of stacked diapers is the mess of entry 1 of the list of stacked diapers;
	increase the mess of K by N;
	if the player is rectum diaper aware, now the perceived-mess of K is N.

To MessDown (K - diaper-stack) by (N - a number):
	let D be entry 1 of the list of stacked diapers;
	decrease the mess of D by N;
	if the mess of D < 0:
		now the mess of D is 0;
		now the foreign-mess of D is 0;
	now the perceived-mess of D is the mess of D;
	decrease the mess of K by N;
	if the mess of K < 0:
		now the mess of K is 0;
		now the foreign-mess of K is 0;
	now the perceived-mess of K is the mess of K.

To MessSet (K - diaper-stack) to (N - a number):
	if N > 0:
		now the mess of entry 1 of the list of stacked diapers is N;
		now the perceived-mess of entry 1 of the list of stacked diapers is the mess of entry 1 of the list of stacked diapers;
	otherwise:
		repeat with C running through the list of stacked diapers:
			now the mess of C is 0;
			now the perceived-mess of C is 0;
			now the foreign-mess of C is 0;
		now the foreign-mess of K is 0;
	now the mess of K is N;
	now the perceived-mess of K is the mess of K.

To clean (C - diaper-stack):
	repeat with D running through the list of stacked diapers:
		clean D;
	update diaper stack;
	if C is worn, update appearance level.

To WaterEmpty (C - diaper-stack):
	repeat with D running through the list of stacked diapers:
		WaterEmpty D;
	update diaper stack;
	if C is worn, update appearance level.

To Drench (C - diaper-stack):
	repeat with D running through the list of stacked diapers:
		Drench D;
	if tough-shit is 0 and C is glued:
		decrease the glue timer of C by 50;
		if the glue timer of C > 0:
			if C is held, say "The glue on [NameDesc of C] is rapidly weakening!";
		otherwise:
			now the glue timer of C is 0;
			if C is held, say "The glue on [NameDesc of C] has completely degraded[if C is worn]. It's no longer stuck to you![otherwise].[end if]";
	update diaper stack;
	if C is worn:
		force immediate clothing-focus redraw;
		update appearance level.

[Take the lock status of the outside diaper and apply it to the diaper-stack object]
To update diaper stack lock status:
	let OutsideDiaper be entry (the number of entries in the list of stacked diapers) in the list of stacked diapers;
	if OutsideDiaper is locked:
		now diaper-stack is locked;
		repeat with K running through specific-keys covering OutsideDiaper:
			now K is not covering OutsideDiaper;
			now K is covering diaper-stack;
	otherwise:
		now diaper-stack is unlocked;

To update diaper stack:
	if diaper-stack is worn:
		[before we inherit from the outside diaper, we need to force it to take on the lock status of the diaper-stack object, since if something has been locked or unlocked by a game effect, it will be the diaper-stack object]
		let N be the number of entries in the list of stacked diapers;
		if diaper-stack is locked:
			now entry N in the list of stacked diapers is locked;
			repeat with K running through specific-keys covering diaper-stack:
				now K is covering entry N in the list of stacked diapers;
		otherwise:
			now entry N in the list of stacked diapers is unlocked;
		if debugmode > 1, say "[input-style]Before diaper stack update: Glue level of diaper stack is [glue timer of diaper-stack].[roman type][line break]";
		[same with stuck]
		if diaper-stack is stuck, now entry N in the list of stacked diapers is stuck;
		otherwise now entry N in the list of stacked diapers is not stuck;
		compute diaper-stack inheriting from entry N in the list of stacked diapers;
		[if diaper-stack object is locked, let's make sure specific-keys are pointing to the diaper-stack object and not the outer diaper that's being held off-stage]
		if diaper-stack is locked:
			repeat with K running through specific-keys covering entry N in the list of stacked diapers:
				now K is not covering entry N in the list of stacked diapers;
				now K is covering diaper-stack;
		if debugmode > 1, say "[input-style]After diaper stack update: Glue level of diaper stack is [glue timer of diaper-stack].[roman type][line break]";
		now the mess of diaper-stack is 0;
		now the foreign-mess of diaper-stack is 0;
		now the perceived-mess of diaper-stack is 0;
		now the raw-soak-limit of diaper-stack is 0;
		now the urine-soak of diaper-stack is 0;
		now the perceived-urine-soak of diaper-stack is 0;
		now the milk-soak of diaper-stack is 0;
		now the perceived-milk-soak of diaper-stack is 0;
		now the semen-soak of diaper-stack is 0;
		now the perceived-semen-soak of diaper-stack is 0;
		now the water-soak of diaper-stack is 0;
		now the perceived-water-soak of diaper-stack is 0;
		repeat with C running through the list of stacked diapers:
			[stats the diaper stack takes from all diapers go here]
			increase the mess of diaper-stack by the mess of C;
			increase the perceived-mess of diaper-stack by the perceived-mess of C;
			increase the urine-soak of diaper-stack by the urine-soak of C;
			increase the perceived-urine-soak of diaper-stack by the perceived-urine-soak of C;
			increase the milk-soak of diaper-stack by the milk-soak of C;
			increase the perceived-milk-soak of diaper-stack by the perceived-milk-soak of C;
			increase the semen-soak of diaper-stack by the semen-soak of C;
			increase the perceived-semen-soak of diaper-stack by the perceived-semen-soak of C;
			increase the water-soak of diaper-stack by the water-soak of C;
			increase the perceived-water-soak of diaper-stack by the perceived-water-soak of C;
			increase the raw-soak-limit of diaper-stack by the soak-limit of C;
		[stats the diaper stack takes from the outside diaper which aren't already in transformation inheritance go here]
		let D be entry N in the list of stacked diapers;
		now the armour of diaper-stack is the armour of D;
		if D is knickers, now the DQFigure of diaper-stack is the DQFigure of D;
	otherwise if diaper-stack is in-play and the player is not in a predicament room:
		repeat with D running through the list of stacked diapers:
			now D is in the location of diaper-stack;
		now diaper-stack is in Holding Pen;
		now the list of stacked diapers is { }.

To assign quest to (C - diaper-stack):
	now the quest of C is the random-quest of C;
	let N be the number of entries in the list of stacked diapers;
	now the quest of (entry N in the list of stacked diapers) is the quest of C;
	set up the quest of C.

An all later time based rule (this is the maintain diaper stack rule):
	update diaper stack.

Check wearing store diaper:
	if diaper-stack is worn, say "You can't do that without the shopkeeper having ample time to stop you." instead.

A DQClothing is a kind of object. NoDQImage is a DQClothing. A knickers has a DQClothing called the DQFigure.
DQCloth is a DQClothing. DQGiant is a DQClothing. DQHuge is a DQClothing. DQLarge is a DQClothing. DQMedium is a DQClothing. DQMoosive is a DQClothing. DQSmall is a DQClothing. DQVelcro is a DQClothing. DQBunny is a DQClothing. DQWaddle is a DQClothing. DQWhitePants is a DQClothing. DQBlackPants is a DQClothing. DQPinkPants is a DQClothing.  DQBluePants is a DQClothing. DQPullups is a DQClothing. DQTrainingPants is a DQClothing. DQRubber is a DQClothing.

The DQFigure of a knickers is usually DQBlackPants.
The DQFigure of diaper is usually DQMedium.

To decide which number is the DQBulk of (D - a knickers):
	decide on the DQBulk of the DQFigure of D.

To decide which number is the DQBulk of (Y - yourself):
	if diaper-stack is worn:
		let E be the number of entries in the list of stacked diapers;
		decide on the DQBulk of entry E in the list of stacked diapers;
	if there is worn knickers, decide on the DQBulk of a random worn knickers;
	decide on 0.

To decide which number is the DQBulk of (D - a DQClothing):
	decide on 0.
To decide which number is the DQBulk of (D - DQSmall):
	decide on 1.
To decide which number is the DQBulk of (D - DQMedium):
	decide on 2.
To decide which number is the DQBulk of (D - DQCloth):
	decide on 3.
To decide which number is the DQBulk of (D - DQBunny):
	decide on 4.
To decide which number is the DQBulk of (D - DQLarge):
	decide on 4.
To decide which number is the DQBulk of (D - DQVelcro):
	decide on 5.
To decide which number is the DQBulk of (D - DQHuge):
	decide on 6. [Jammy usually refers to this as "diap5"]
[Thigh spreading is below this line]
To decide which number is the DQBulk of (D - DQMoosive):
	decide on 7. [Jammy refers to this as "diap6"]
To decide which number is the DQBulk of (D - DQGiant):
	decide on 8. [Jammy refers to this as "diap8"]
[Might add slightly smaller waddle diaper later at 9]
To decide which number is the DQBulk of (D - DQWaddle):
	decide on 10. [Jammy refers to this as "diap9"]


Diaper Framework ends here.
