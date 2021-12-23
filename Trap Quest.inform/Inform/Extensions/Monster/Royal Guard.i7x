Royal Guard by Monster begins here.

A royal guard is a kind of monster. A royal guard is usually intelligent. A royal guard is male. A royal guard has a number called patrol. The leftover-type of a royal guard is usually 101. A royal guard has a number called shieldblock. A royal guard can be shieldblocked or not shieldblocked. A royal guard is usually not shieldblocked.

Definition: a royal guard is willing to urinate: decide yes.
Definition: a royal guard is father material: decide yes.
Definition: a royal guard is raunchy: decide yes.

Figure of Royal Guard is the file "NPCs/Dungeon/Guard/royalguard1.png".
Figure of Female Royal Guard is the file "NPCs/Dungeon/Guard/royalguard2.png".
Figure of Prison Guard 1 is the file "NPCs/Dungeon/Guard/prisonguard1.jpg".
Figure of Prison Guard 2 is the file "NPCs/Dungeon/Guard/prisonguard2.jpg".

Figure of Guard Interact 1 is the file "NPCs/Dungeon/Guard/cutscene-guard-interact1.png".
Figure of Guard Interact 2 is the file "NPCs/Dungeon/Guard/cutscene-guard-interact2.png".
Figure of Guard Interact 3 is the file "NPCs/Dungeon/Guard/cutscene-guard-interact3.png".
Figure of Guard Interact 4 is the file "NPCs/Dungeon/Guard/cutscene-guard-interact4.png".
Figure of Guard Interact 5 is the file "NPCs/Dungeon/Guard/cutscene-guard-interact5.png".

Figure of Guard Cutscene 1 is the file "NPCs/Dungeon/Guard/cutscene-guard-skill1.png".

To decide which figure-name is the monster-image of (M - a royal guard):
	if lady fetish is 1, decide on figure of female royal guard;
	if M is prison guard:
		if M is interested, decide on figure of prison guard 2;
		decide on figure of prison guard 1;
	decide on figure of royal guard.

To decide which figure-name is the vaginal-sex-monster-image of (M - a royal guard):
	let N be a random monster penetrating asshole;
	if N is not monster:
		if the latex-transformation of the player > 6:
			decide on figure of latex curse 5;
		otherwise if M is not mating:
			decide on figure of guard cutscene 2;
	decide on figure of missing NPC.

To decide which figure-name is the anal-sex-monster-image of (M - a royal guard):
	let N be a random monster penetrating vagina;
	if N is not monster:
		if the latex-transformation of the player > 6:
			decide on figure of latex curse 4;
		otherwise if M is not mating:
			decide on figure of guard cutscene 2;
	decide on figure of Missing NPC.

To decide which figure-name is the oral-sex-monster-image of (M - a royal guard):
	decide on figure of guard cutscene 7.

Definition: a royal guard is dungeon dwelling: decide yes.

To say ShortDesc of (M - a royal guard):
	say "royal guard".

gallant royal guard is a royal guard. The text-shortcut of gallant royal guard is "grg".
To say MediumDesc of (M - gallant royal guard):
	say "gallant royal guard".

valiant royal guard is a royal guard. The text-shortcut of valiant royal guard is "vrg".
To say MediumDesc of (M - valiant royal guard):
	say "valiant royal guard".

noble royal guard is a royal guard. The text-shortcut of noble royal guard is "nrg".
To say MediumDesc of (M - noble royal guard):
	say "noble royal guard".

virtuous royal guard is a royal guard. The text-shortcut of virtuous royal guard is "vgu".
To say MediumDesc of (M - virtuous royal guard):
	say "virtuous royal guard".

solemn royal guard is a royal guard. The text-shortcut of solemn royal guard is "srg".
To say MediumDesc of (M - solemn royal guard):
	say "solemn royal guard".

prison guard is a royal guard. The text-shortcut of prison guard is "prg". prison guard has a number called sentence.
Definition: prison guard is willing to have time out: decide no.
To say MediumDesc of (M - prison guard):
	say "prison guard".

To say MonsterDesc of (M - a royal guard):
	if M is diaper-enslaved:
		say "[BigNameDesc of M][']s royal armour has been transformed into a dark blue guard-themed baby cosplay onesie, complete with a giant safety pin on the front and an inflatable floppy sword. [if lady fetish is 1]A cute blue ribbon adorns [his of M] now pigtailed hair[otherwise if TG fetish > 0][BigNameDesc of M] has been transformed into a woman, complete with a cute blue ribbon that now adorns [his of M] now pigtailed hair[otherwise][big his of M] hair has been put into pigtails with a blue ribbon, making [him of M] look like a cute little [sissy] girl[end if]. A thick bulge below the waist makes it clear that [he of M] has been clothed in a big thick nappy.";
	otherwise if M is fucked-silly:
		say "[BigNameDesc of M]'s armour has been torn to shreds, and [his of M] ridiculously distended belly is completely filled with [MediumDesc of minotaur] [semen].";
	[otherwise if lady fetish is 0:
		say "A calm, dignified, but obviously powerful [man of M], with hints of a [one of]rugged[or]chiselled[or]stony[at random] musculature visible within [his of M] thick robes, which bear a royal crest. [one of][big he of M] has a square, masculine jaw, which is darkened by an impressive five o'clock shadow.[or][big he of M] looks as though [he of M] could grow a full beard in the space of a day, [his of M] square, masculine jaw darkened by an impressive five o'clock shadow.[or][big he of M] has a square, masculine jaw, completely clean shaven, but textured due to many years of diligent shaving.[or]A thin strip of [GuardHair of M] hair runs the length of [his of M] square jaw, which is otherwise completely clean-shaven.[or][big his of M] square, manly jaw is mostly clean shaven, except for a well maintained patch of [GuardHair of M] hair that forms moustache-goatee combo.[in random order] [big his of M] shield, which bears a royal crest, [if the difficulty of M < 10]is too small to cover much of [his of M] body.[otherwise if M is prison guard]has tiny symbols covering its small surface, probably increasing [his of M] defences against magic.[otherwise]is large enough to cover most of [his of M] upper body.[end if]";]
	otherwise:
		say "A calm and dignified [man of M] with a long, black hood covering most of [his of M] face. [big he of M] is wearing armour, but it seems to be specialised for ease of removal, as well showcasing [if M is presenting as male]the rugged musculature of [his of M][otherwise][his of M] visibly muscular[end if] torso.";
	if M is not diaper-enslaved and M is not fucked-silly:[The guard can hold up his shield, making himself immune to slapping/punching. However, his shield can't take infinite attacks.]
		let D be the difficulty of M - the starting difficulty of M;
		unless M is prison guard, say "[big his of M] shield, which bears a royal crest, [if D < 1]is clearly too flimsy to be of any use.[otherwise if D < 2]is clearly reinforced, although it looks too small to cover up much of [his of M] body.[otherwise]is well reinforced, and looks large enough to cover most of [his of M] upper body.[end if]";[no blocking -> Single hit block(Doesn't include magic) -> Long term blocking(Doesn't include magic)]
		otherwise say "[big his of M] shield is large enough to cover [his of M] upper body, and has tiny symbols covering its surface, probably increasing [his of M] resistance to magic.";[Long term blocking(Includes magic)]
	if M is prison guard and skeleton key is off-stage, say "A single key on a small string dangles from [his of M] belt.".

To say MonsterComment of (M - a royal guard):
	if diaper quest is 0:
		if lady fetish is 0 or lady fetish is 2, say "[variable custom style][one of][if the player is gendered male and the bimbo of the player < 5]Man, that dude looks so chill! I'd totally have a beer with [him of M].[otherwise if the bimbo of the player < 5]Hmm, I have a good feeling about this guy. [big he of M]'ll probably leave me alone if I don't provoke [him of M].[otherwise if the bimbo of the player < 8]This [man of M] looks tough, but [he of M] doesn't look like [he of M]'s carrying a weapon.[otherwise if the bimbo of the player < 12 and the player is possessing a penis and the size of penis < 6][big his of M] [manly-penis] is probably bigger than mine.[otherwise if the bimbo of the player < 12]I have to admit, I'm a little curious how [he of M] looks when he's not wearing that armour[otherwise if the bimbo of the player < 15][big he of M] looks like [he of M] has a nice big [manly-penis].[otherwise]Mmmm, I wonder what [his of M] [manly-penis] look like. I hope it's big.[end if][or][if the bimbo of the player < 5]For a [man of M], [he of M] actually seems pretty laid back. If I leave [him of M] alone [he of M] should leave me alone.[otherwise if the bimbo of the player < 7 and the class of the player is not princess][big he of M]'s been looking at me weird. Maybe I should start avoiding [him of M]?[otherwise if the bimbo of the player < 8][big he of M] isn't carrying a weapon but [he of M] still looks pretty tough.[otherwise if the bimbo of the player < 10][big he of M]'s got a pretty nice bulge near [his of M] crotch. Not that I care.[otherwise if the bimbo of the player < 12]I know it would be slutty, but if [he of M] tries to cop a feel I might let [him of M].[otherwise if the bimbo of the player < 15]I'd suck [his of M] [manly-penis], but only if [he of M] asked me to. I really hope [he of M] asks me to.[otherwise]Maybe if I get naked he'll get naked with me?[end if][stopping][roman type][line break]";
		otherwise say "[variable custom style][one of][if the player is gendered male and the bimbo of the player < 5][big he of M] looks so uptight. Heh, I can fix that[otherwise if the bimbo of the player < 5]Hmm, I have a good feeling about this chick. Maybe I can get some action if we get to know each other better.[otherwise if the bimbo of the player < 8]This chick looks tough, but [he of M] doesn't look like [he of M]'s carrying a weapon, so I can probably take [him of M]. I think.[otherwise if the bimbo of the player < 12][big he of M]'ll make sure to keep me in check.[otherwise if the bimbo of the player < 15][big he of M] looks like [he of M] has a nice big [DickDesc of M].[otherwise]Mmmm, I hope [he of M] has a big [DickDesc of M].[end if][or][if the bimbo of the player < 5][big he of M] seems rather strait-laced. We should get along well.[otherwise if the bimbo of the player < 7 and the class of the player is not princess][big he of M]'s been looking at me weird. Maybe I should start avoiding [him of M]?[otherwise if the bimbo of the player < 8][big he of M] isn't carrying a weapon but [he of M] still looks pretty tough.[otherwise if the bimbo of the player < 10][big he of M]'s got a pretty nice bulge near [his of M] crotch. Not that I care.[otherwise if the bimbo of the player < 12]I know it would be slutty, but if [he of M] tries to cop a feel I might let [him of M].[otherwise if the bimbo of the player < 15]I'd suck [his of M] [DickDesc of M], but only if [he of M] asked me to. I really hope [he of M] asks me to.[otherwise]Maybe if I get naked [his of M] instincts will just take over.[end if][stopping][roman type][line break]".

To say GuardHair of (M - a royal guard):
	say "[if M is gallant royal guard]dark red[otherwise if M is valiant royal guard]dirty blond[otherwise if M is noble royal guard]brown[otherwise if M is prison guard]grey[otherwise]black[end if]";

To set up (M - a royal guard):
	reset M;
	now the monstersetup of M is 1;
	if M is prison guard:
		add skeleton key to the taxableItems of M, if absent;
		add skeleton key to the tradableItems of M, if absent;
	otherwise:
		add royal sigil to the taxableItems of M, if absent;
		repeat with B running through off-stage cans:
			if the fill-type of B is 2:
				add B to the tradableItems of M, if absent;
				break;
	now the raw difficulty of M is the starting difficulty of M;
	now the health of M is the maxhealth of M;
	if M is prison guard, now the sentence of M is a random number between 3 and 4.

Definition: a royal guard is wenchy: decide yes.

This is the spawn initial royal guard rule:
	if debugmode > 1, say "Now summoning guard.";
	if the number of alive royal guards is 0:
		let M be a random royal guard;
		summon M in the dungeon;
	otherwise if the number of alive royal guards < 2 and diaper quest is 1:
		let M be a random off-stage royal guard;
		summon M in the dungeon.
The spawn initial royal guard rule is listed in the setting up dungeon monsters rules.

To decide which number is the girth of (M - a royal guard):
	decide on 4.

Definition: A royal guard (called M) is willing to shag:
	if M is awake and the scared of M is 0 and the boredom of M < 120 and M is threatening, decide yes;
	decide no.

To decide which number is the base semen load of (M - a royal guard):
	decide on 3.

Definition: a royal guard is human: decide yes.

To say LeftoverDesc (N - 101):
	say "[if diaper quest is 1]A babified royal guard is sitting on the ground here, with a full nappy and a giant rattle. [big he of a random royal guard] seems completely unaware of anything other than [his of a random royal guard] own shame.[otherwise]The dead crumpled corpse of a royal guard is on the ground here[end if].[line break]";

Part 1 - Misc Flavour

To say SummoningFlav of (M - a royal guard):
	say "[if M is in the location of the player]A space opens up in the centre of the circle, and a strong, muscular hand pushes its way through.[line break][speech style of M]'Back, demon! My princess needs me!'[roman type][line break]A [printed name of M] climbs free of the portal, boots clanking soundly as [he of M] finds [his of M] feet. The strange energy dissipates as the portal closes behind [him of M][otherwise]You hear the sound of clanking metal boots coming from another part of the dungeon[end if].".

To say PregGrowth of (M - a royal guard):
	say "[NameDesc of M][']s [child]".

To compute labour to (M - a royal guard):
	if M is regional and M is alive:
		compute pregnancy clothing displacement;
		say "[PregFlav][if the father is in the location of the player]The [father][otherwise]The [father] appears almost as if on cue! [big he of M][end if] kneels down on one knee and delivers the human baby. [big he of M] takes it into [his of M] arms and begins to cradle it.[line break][first custom style]'A baby boy! [if the father is mating]A wonderful addition to our family.[otherwise]My first child. I will remember this moment for ever. From now on, I will always endeavour to protect you from others. We are married through this child, and no other [man of M] should be allowed to use your sacred womb but I.'[roman type][line break]Without giving you a chance to react, never mind reply, [he of M] leaves you to recover from your ordeal.";
		if the father is in the location of the player:
			say "For some reason, you are filled with a sense of deep fulfilment. You feel great!";
			StrengthUp 1;
			DexUp 1;
			IntUp 1;
	otherwise if M is alive:
		Delay Labour.

To say ClothesPeeReaction of (M - a royal guard):
	now M is interested;
	if diaper quest is 1:
		if M is friendly:
			say "[BigNameDesc of M] frowns.[line break][speech style of M]'What are you doing?! It looks to me like you need diapers, little girl. I am very unimpressed.'[roman type][line break]";
			FavourDown M by 2;
			if M is unfriendly:
				say "[speech style of M]'Yes in fact, I think you need training. [if the player is upright]Get on your knees[otherwise]Stay right where you are[end if], baby!'[roman type][line break]";
				now M is diaper-committed;
		otherwise:
			say "[BigNameDesc of M] frowns angrily.[line break][speech style of M]'This is why you need to be in diapers!'[roman type][line break][if M is uninterested]Uh-oh...[end if]";
	otherwise:
		if M is friendly:
			say "[BigNameDesc of M] frowns.[line break][speech style of M]'What are you doing?! Is that any way to keep polite company?!'[roman type][line break]";
			FavourDown M by 2;
			if M is unfriendly, say "[speech style of M]'I'm going to make you pay for your disgusting behaviour. [if the player is upright]Get on your knees[otherwise]Stay right where you are[end if], [if diaper lover > 0]baby[otherwise]you pervert[end if]!'[roman type][line break]";
		otherwise:
			say "[BigNameDesc of M] frowns angrily.[line break][speech style of M]'You are an utter disgrace!'[roman type][line break][if M is uninterested]Uh-oh...[end if]".

To say GroundPeeReaction of (M - a royal guard):
	say "[ClothesPeeReaction of M]".

To say DiaperReaction of (M - a royal guard):
	if there is a currently visible diaper or the player is shameless:
		if M is unfriendly:
			say "[BigNameDesc of M] laughs deeply.[line break][speech style of M]'How pathetic.'[roman type][line break]";
		otherwise if the class of the player is princess:
			say "[BigNameDesc of M] goes red and fakes a cough, trying to pretend that [he of M] didn't [if the player is not shameless]see[otherwise]hear[end if].";
		otherwise:
			say "[speech style of M]'Yuck.'[roman type][line break][BigNameDesc of M] looks genuinely disgusted.[line break][speech style of M]'Are you truly unable to go to the toilet like an adult? I'm not sure I've ever seen anything quite so disgraceful[if the favour of M < the bimbo of the player + 3]. Maybe I have made a mistake - it does not appear that you deserve to be treated with respect[end if].'[roman type][line break]";
			FavourDown M by 1 with consequences;
		if the player is modest, say "[one of]You are so ashamed you wish the ground would just open up and swallow you. [or][stopping]You turn bright red and refuse to look at [NameDesc of M] in the eye.";
		otherwise say "You turn bright red.";
	otherwise:
		say "It seems that [NameDesc of M] [one of]is not aware of what you've just done[or]has not detected what's happening in your diaper[or]is completely oblivious[in random order].[one of][line break][variable custom style]I've played games where I've had to be stealthy in front of guards before, but not like this![roman type][line break][or][stopping]".

To compute (M - a monster) stomping (N - a royal guard):[generic M here, but shouldn't matter.]
	if diaper quest is 1:
		if N is in the location of the player, say "[BigNameDesc of M] jumps on [NameDesc of N], completely covering [his of N] body with its own. [BigNameDesc of N] screams, and then... cries? [BigNameDesc of M] stands back up to full height, revealing a wailing diapered [man of M] underneath, with a full diaper and a rattle instead of a sword.";
		otherwise say "You hear a royal guard cry out in terror from [if N is nearby]nearby![otherwise]somewhere in the dungeon![end if]";
		now N is diaper-enslaved;
		if TG fetish > 0, now N is female;
	otherwise:
		if N is in the location of the player, say "[BigNameDesc of M] ruthlessly tears off [NameDesc of N]'s armour and pins [him of N] to the ground. [big he of N] cries out in pain as [NameDesc of M] rams [his of M] [LongDickDesc of M] into [his of N] [HoleDesc of N] and begins thrusting furiously. [BigNameDesc of N]'s eyes roll back in [his of N] head as [NameDesc of M] ejaculates, [his of N] belly expanding rapidly as [NameDesc of M] fills [him of N] with [semen]. Satisfied, [NameDesc of M] tosses [NameDesc of N] to the ground, where [he of N] faints.";
		otherwise say "You hear a royal guard cry out in pain from [if N is nearby]nearby![otherwise]somewhere in the dungeon![end if]";
		now N is fucked-silly;
		now the sleep of N is 600.

To say MonsterOfferAcceptFlav of (M - a royal guard) to (T - a thing):
	if M is unfriendly:
		say "[BigNameDesc of M] smiles.[line break][speech style of M]'[if the bartering value of T for M + the favour of M > the aggro limit of M]Wow! Consider your fine paid. Maybe I shall reconsider my opinion of you. [otherwise]This will serve as a temporary down payment, but I will expect further recompense the next time I see you. [end if]Now leave my sight before I change my mind.'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] seems very touched.[line break][speech style of M]'I was not expecting a gift! How very decent of you.'[roman type][line break]".

To compute sudden objectification of (M - a royal guard):
	say "Something seems to change in the way [NameDesc of M] is looking at you.[line break][speech style of M]'[if M is penetrating a body part]Yes, that's right, I'm the boss, and you're my little [whore]...'[otherwise if the player is monster fucked]I can't turn a blind eye any more! Just this once, I will join in...'[otherwise]Your appearance is now thoroughly unacceptable. I must deliver an appropriate punishment.'[end if][roman type][line break]".

To say SpankingDeclarationFlav of (M - a royal guard):
	say "[speech style of M]'[if the health of M is the maxhealth of M and the number of interested unfriendly adult baby slaves in the location of the player is 0]I think it's time for a maintenance spanking.'[otherwise][one of]I'm going to spank you so hard that you can't sleep on your back for days.'[or]You deserve the biggest spanking of your lifetime!'[or]Let me show you how we punish disobedient cretins in this land!'[in random order][end if][roman type] ".

To compute MasturbationReaction of (M - a royal guard):
	if M is awake:
		if M is penetrating a body part or (M is unfriendly and M is interested):
			if M is friendly-fucking:
				say "[BigNameDesc of M] grins, and starts thrusting even faster.";
			otherwise:
				say "[BigNameDesc of M] [if M is penetrating a fuckhole]spanks[otherwise]slaps[end if] you angrily.[line break][speech style of M]'Did I give you permission to do that? This is supposed to be a punishment!'[roman type][line break]";
				PainUp 1;
				say "[bold type]Your masturbation session has been interrupted![roman type][line break]";
				follow the masturbation ended rule;
		otherwise:
			if the class of the player is princess:
				say "[BigNameDesc of M] looks away politely and begins to wander off.";
			otherwise:
				say "[BigNameDesc of M] frowns.[line break][speech style of M]'[if M is acquaintance]Ahem! I am supposed to arrest people who do such vile things in these walls. I will not forget this breach of my trust[otherwise]Disgusting! I should arrest you on the spot[end if].'[roman type][line break][big he of M] turns to leave.";
				FavourDown M by 2;
			bore M.

To say CurtseyReactionFlav of (M - a royal guard):
	if there are worn currently visible knickers:
		say "[BigNameDesc of M] averts [his of M] eyes.[line break][speech style of M]'[big please] conceal your undergarments!'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] frowns but doesn't say anything.".

Definition: a royal guard (called M) is distracted:
	if the refractory-period of M < 0 and the class of the player is not princess and M is reactive:
		let N be a random undefeated awake explorer in the location of M;
		if N is nothing, let N be a random undefeated awake wench in the location of M;
		if N is nothing, let N be a random messy adult baby slave in the location of M;
		if N is nothing and diaper quest is 0, let N be a random awake gladiator in the location of M;
		if N is wench and (N is uninterested or N is friendly):
			if N is QoS wench:
				say "[BigNameDesc of M][']s eyes are drawn [if M is interested]away from you [end if]to [NameDesc of N]. [big he of M] moves to grab [him of N], but [NameDesc of N] makes a disgusted sound and side-steps [NameDesc of M][']s reaching hand. As [he of N] does, [he of N] flicks [NameDesc of M] in the groin.[line break][speech style of M]'Fuck off pin-dick, I have no interest in your gross little worm!'[roman type][line break].";
				say PrematureEjaculationFlav of M;
				say PrematureEjaculationReactionFlav of M;
				orgasm bore M;
				say "Visibly embarrassed by [his of M] sexual inadequacy, [NameDesc of M] begins to slink away.";
				compute mandatory room leaving of M;
			otherwise:
				say "[BigNameDesc of M][']s eyes are drawn [if M is interested]away from you [end if]to [NameDesc of N]. [big he of M] grabs [him of N] by the hair and pushes [him of N] onto [his of N] knees.[line break][speech style of M]'[one of]Back for more punishment, I see[or]If you still haven't left these halls, you must really want this[or]I do not approve of your appearance, wench[in random order].'[roman type][line break]Freeing [his of M] [LongDickDesc of M], [NameDesc of M] forces it into [NameDesc of N][']s [if N is penetrating face]mouth[otherwise][one of]mouth[or][HoleDesc of N][or]asshole[purely at random][end if] before [he of N] can even begin to protest. Several awkward moan-filled seconds later, [NameDesc of N] is discarded onto the stone floor, panting, with a fresh load of [semen] oozing out of [his of N] abused orifice.";
				if a2m fetish > 1, now the creampieTimer of N is the semen load of M * 100;
				now the refractory-period of M is the refractory-time of M;
				satisfy M;
				DifficultyUp M by 1;
				compute mandatory room leaving of M;
				if N is interested:
					say "[BigNameDesc of N] begins to ease [himself of N] back to [his of N] feet.[line break][speech style of N]'[one of]I'm sorry you had to see that[or]I'm beginning to lose track of how many times that's happened[or]At least [he of M] didn't take too long[or]Another day, another dicking. I guess it truly never ends down here[in random order].'[roman type][line break]";
				otherwise if the boredom of N <= 0:
					compute mandatory room leaving of N;
					decide yes;
		if N is adult baby slave and (N is defeated or N is uninterested or N is friendly):
			say "[BigNameDesc of M][']s eyes are drawn [if M is interested]away from you [end if]to [NameDesc of N]. [big he of M] grabs [him of N] by the arm.[line break][speech style of M]'Good goddess! You need a change.'[line break][speech style of N]'Nu-uh, I don't need a change, I'm totally fine as I- HEY!'[roman type][line break]Forcing [NameDesc of N] onto [his of N] back, [NameDesc of M] sets about untaping [NameDesc of N][']s diaper, wiping [him of N] down, and changing [him of N] out of [his of N] messy nappy, despite [his of N] protests.";
			now the messTimer of N is a random number between -25 and 25;
			let SD be a random off-stage soiled-diaper;
			if SD is soiled-diaper and diaper messing >= 6:
				now SD is in the location of the player;
				now the diaper-origin of SD is the substituted form of "[MediumDesc of N][']s diaper";
				say "[BigNameDesc of M] drops the [SD] onto the ground, and then speaks to both of you.[line break][speech style of M]'One of you get rid of this for me. I don't care who.'[roman type][line break]";
			otherwise:
				say "[speech style of M]'All done, little Miss Fusspot.'[line break][speech style of N]'Meanie!'[roman type][line break]";
			satisfy M;
			DifficultyUp M by 1;
			compute mandatory room leaving of M;
			if SD is soiled-diaper:
				say "[BigNameDesc of N] begins to ease [himself of N] back to [his of N] feet. [big he of N] looks at [NameDesc of SD] and wrinkles [his of N] nose.[line break][speech style of N]'I'll leave you to get rid of that. Don't worry, I'll make sure to tell anyone that I see that it was yours!'[roman type][line break][big he of N] pulls one of [his of N] eyes wide open with [his of N] fingers and sticks [his of N] tongue out at you as [he of N] leaves.";
				bore N;
				compute mandatory room leaving of N;
			otherwise if N is interested:
				say "[BigNameDesc of N] begins to ease [himself of N] back to [his of N] feet.[line break][speech style of N]'That guy's such a jerk.'[roman type][line break]";
			otherwise if the boredom of N <= 0:
				compute mandatory room leaving of N;
			decide yes;
		otherwise if N is explorer:
			let D be the best route from the location of N to Stairwell01 through labyrinth rooms;
			say "[BigNameDesc of M][']s eyes are drawn [if M is interested]away from you [end if]to [NameDesc of N]. [big he of M] points at [him of M] with an accusatory finger.[line break][speech style of M]'You! The last time we met, didn't I banish you from this place? And yet you dare to remain here, making a mockery of the law and the Crown! Get on your knees, you are under arrest.'[roman type][line break][BigNameDesc of N] hesitates - it looks like [he of N] isn't too keen on fighting, but also doesn't really want to submit to the [MediumDesc of M] right in front of you. In the end, [he of N] sighs and relents, dropping to [his of N] knees and putting [his of N] hands behind [his of N] back.[line break][speech style of N]'I surrender.'[roman type][line break]";
			if diaper quest is 0:
				say "Freeing [his of M] [LongDickDesc of M], [NameDesc of M] holds it in front of [NameDesc of N][']s face.[line break][speech style of M]'Serve your sentence well, and I shall allow you to leave with your clothing. But if I do not believe you have exhibited sufficient submission, you will be entering the woods naked.'[roman type][paragraph break][BigNameDesc of N] turns red in the face, but nods and accepts the [man of M][']s [LongDickDesc of M] into [his of N] mouth. [big he of N] works hard, managing to get the thick rod deeper and deeper down the back of [his of N] throat with each bob of [his of N] head. Soon, [he of N] is lost in [his of N] work, making lewd gagging sounds around the meatstick in [his of N] throat, without any regard for your presence. You watch with [horror the sex addiction of the player] as [NameDesc of M] stands completely still and allows [NameDesc of N] to do all the work of burying the entire thing down [his of N] gullet. And then, [NameDesc of N] tries to pull back to catch a breath, but the sadistic [ShortDesc of M] uses [his of M] hands to prevent [him of N] from getting away, holding [him of N] there, making [NameDesc of N] gag in panic as [he of N] begins scrabbling with [his of N] hands on [NameDesc of M][']s loins, trying to find a way to take [his of N] next breath. [BigNameDesc of M] pays [him of N] no mind as [he of M] grunts and groans and sighs with pleasure as [he of M] empties [his of M] [if M is a balls-haver]balls[otherwise]load[end if] down the poor adventurer's throat.[paragraph break]When [NameDesc of M] pulls away, [NameDesc of N][']s hands quickly hit the ground, supporting the rest of [his of N] body weight as [he of N] gasps for air, coughing up little globs of [semen] and spit as [he of N] does. ";
				if watersports fetish is 1:
					say "[BigNameDesc of M] takes this moment to release a blast of strong-smelling [urine] into [NameDesc of N][']s hair, soaking [his of N] hair, face, body and clothes with the hot golden liquid. By the time [he of M] has finished, [NameDesc of N] is a soaking wet, smelly mess. [big he of M] then shakes [his of M] member dry over [his of N] still-lowered head. ";
				say "[BigNameDesc of M] stretches [his of M] spine.[line break][speech style of M]'Let this be a lesson to BOTH of you, of why you should not make a mockery of the law.'[roman type][line break][big he of M] shoots you a measured glance, before returning to the poor exhausted [man of N] on [his of N] knees in front of [him of M].[line break][speech style of M]'Now, let me be completely clear. If I ever see you in these halls again, I will keep you in that cell for so long that by the time you're released, you won't be able to remember what it's like to taste anything other than cum[if watersports fetish is 1] and piss[end if].'[roman type][line break][BigNameDesc of N] can't bring [himself of N] to say anything. [big he of N] just nods and begins slowly crawling towards the [if D is direction][D][otherwise]exit[end if].";
			otherwise:
				say "[BigNameDesc of M] points to [his of N] white panties.[line break][speech style of M]'First we shall strip you of your pride. Remove your undergarments.'[roman type][line break][BigNameDesc of N] scowls, and looks between you and [NameDesc of M] a few times before growling with frustration and complying, awkwardly pulling [his of M] underwear off, exposing [his of N] shaved genitals. [BigNameDesc of M] holds out an expectant hand, and [NameDesc of N] is forced to submissively hand over [his of N] only pair of panties. [BigNameDesc of M] bunches them up and pockets them.[line break][speech style of M]'Now then. You have a choice. You can either go outside wearing no underwear at all, or you can wear these.'[roman type][line break][BigNameDesc of M] produces a small pair of purple pull-ups, with a floral pattern. [BigNameDesc of N] can't help but complain.[line break][speech style of N]'Oh come on, seriously?!'[roman type][line break][BigNameDesc of M] ignores [him of N], and just waits for [him of N] to make [his of N] inevitable choice.[line break][speech style of N]'FINE. But I'm going to surprise you all by ROCKING in them. By the time I'm done, they'll be the latest stylish fashion trend.'[roman type][line break][BigNameDesc of N] rudely snatches the pull-up diaper out of [NameDesc of M][']s hand and pulls it up [his of N] legs. [BigNameDesc of M] just smiles.[line break][speech style of M]'Perhaps elsewhere you may manage to do that. But down here, diapered citizens are treated as a lower class. They are frequently checked, changed, and most importantly, trained. As long as you continue to flout my order and remain down here, you will now find that the members of this community will continuously make sure you are kept full of breast milk and baby food, and given good hard maintenance spankings to encourage discipline. It's not only the law, but the culture.'[roman type][line break][BigNameDesc of N][']s frown grows more and more frustrated as [NameDesc of M] speaks.[line break][speech style of N]'F-fuck this! The lower difficulty level doesn't make up for how creepy you all are down here. I'm out. Wish me luck upstairs.'[roman type][line break][big he of N] huffs and strides away towards the [if D is direction][D][otherwise]exit[end if].";
			now the refractory-period of M is the refractory-time of M;
			satisfy M;
			DifficultyUp M by 1;
			compute banishment of N;
			decide yes;
		otherwise if N is gladiator and (N is uninterested or N is friendly):
			compute M npcBattling N;
	decide no.

[The guard will sometimes challenge gladiators. If they're fucked silly, he wins automatically and gains a difficulty point, otherwise it's a 50/50]
To compute (M - a royal guard) npcBattling (N - a gladiator):
	let U be 0;
	if N is undefeated:
		say "[BigNameDesc of M][']s eyes are drawn [if M is interested]away from you [end if]to [NameDesc of N].[line break][speech style of M]'[one of]I do not approve of your appearance, wench. Get on your knees, or I will be forced to make you[or]You there, wench. Such a lascivious display is against the law. Get on your knees and receive your punishment[or]You cannot walk these halls with such an appearance, wench. Get on your knees. Now[in random order].'[roman type][line break][big he of M] narrows [his of M] eyes at [FuckerDesc of N], who slowly turns to look at [him of M].[line break][speech style of N]'Ha. [one of]A true woman kneels for no one.'[or]Me? Kneel to you? A real woman does not kneel.'[or]I will never kneel to any man, especially not you.'[in random order][roman type][line break]";
		if a random number between 1 and 2 is 1:[guard loses]
			say "[BigFuckerDesc of M] grabs [FuckerDesc of N] by the wrist and [if N is swordless]tries to wrench the sword out of [his of N] hand[otherwise]tries to smack [him of N][end if], but [FuckerDesc of N] reacts quickly and strikes [him of M] in the chest.[line break][speech style of M]'[one of]Oof-!'[or]Unh-!'[in random order][roman type][line break][FuckerDesc of M] immediately releases [him of N] and runs off before [FuckerDesc of N] can retaliate!";
			now the refractory-period of M is 50;[so he doesn't try again immediately]
			bore M;
			compute mandatory room leaving of M;
		otherwise:[guard wins]
			say "[BigFuckerDesc of M] grabs [FuckerDesc of N] by the wrist and [if N is swordless]wrenches the sword out of [his of N] hand[otherwise]smacks [him of N] across the face[end if]. [FuckerDesc of N] tries to push [him of M] away, but that just gives [him of M] the opportunity to grab [FuckerDesc of N]'s other arm and snap a pair of metal handcuffs around [his of N] wrists. [big he of N] still tries to resist after that, but bound[if N is swordless] and without [his of N] weapon[end if], [he of N]'s no match for [FuckerDesc of M], and [he of N] is soon forced to [his of N] hands and knees.";
			now U is 1;
	otherwise:
		now U is 1;
		say "[BigNameDesc of M][']s eyes are drawn [if M is interested]away from you [end if]to [NameDesc of N].[line break][speech style of M]'[one of]I do not approve of your appearance, wench. Get on your knees, or I will be forced to make you[or]You there, wench. Such a lascivious display is against the law. Get on your knees and receive your punishment[or]You cannot walk these halls with such an appearance, wench. Get on your knees. Now[in random order].'[roman type][line break][big he of M] immediately grabs [FuckerDesc of N]'s arms and snaps a pair of metal handcuffs around [his of N] wrists. [FuckerDesc of N] seems like [he of N]'s about to resist, but apparently thinks better of it and drops to [his of N] knees.";
	if U is 1:
		if lady fetish is 2:
			say "[line break][speech style of N]'It is your victory. My body is yours to do with as you see fit.'[roman type][line break]No sooner has [FuckerDesc of N] said those words has [FuckerDesc of M] pulled out [his of M] [DickDesc of M] and pushed it into [his of N] mouth. Meaning every bit of [his of N] declaration, [FuckerDesc of N] immediately begins to bob [his of N] head up and down, even gagging [himself of N] a little as [he of N] struggles to deepthroat [FuckerDesc of M]'s shaft. A few seconds later, [FuckerDesc of M] emits a roaring groan and [if bukkake fetish is 1]blows [his of M] load all over [FuckerDesc of N]'s face[otherwise]blows [his of M] load in [FuckerDesc of N]'s mouth[end if].";
		otherwise:
			say "[line break][speech style of N]'It is your victory. My body is yours to do with as you see fit.'[roman type][line break]No sooner has [FuckerDesc of N] said those words has [FuckerDesc of M] pulled out [his of M] [DickDesc of M] and forced it up between [his of N] breasts. Apparently, being bound is no excuse, and [FuckerDesc of N] immediately gets to work, using [his of N] upper arms to pump [his of N] tits around [FuckerDesc of M]'s shaft. It only takes a few seconds for [him of M] to emit a roaring groan and blow [his of M] load [if bukkake fetish is 1]all over [FuckerDesc of N]'s face[otherwise]into [FuckerDesc of N]'s mouth[end if].";
		if N is interested:
			say "[BigFuckerDesc of N] [if N is swordless]snaps[otherwise]uses [his of N] sword to snap[end if] open [his of N] cuffs before returning to [his of N] feet.[line break][speech style of N]'[one of]Did you see my technique? No [man of M] can stand up to a true woman's skill.'[or]I hope you were watching. A true woman must know sexual and martial techniques!'[or]I hope you didn't waste this opportunity to see a true woman's techniques!'[in random order][roman type][line break]";
		now the refractory-period of M is the refractory-time of M;
		satisfy M;
		DifficultyUp M by 1;
		unless N is interested:
			compute mandatory room leaving of N.

Part 2 - Perception

To decide which number is the bab tolerance of (M - a royal guard):
	if the class of the player is princess, decide on 13;
	decide on 9.

To decide which number is the cringe tolerance of (M - a royal guard):
	if the class of the player is princess, decide on 20;
	decide on 5.

To decide which number is the outrage tolerance of (M - a royal guard):
	if the class of the player is princess, decide on 20;
	decide on 6.

Definition: a royal guard (called M) is normally guardian:
	if the favour of M > the aggro limit of M + 10, decide yes;
	if the class of the player is princess, decide yes;
	decide no.

To say DisapprovalFlav of (M - a royal guard):
	say "[BigNameDesc of M] [one of]coughs awkwardly[or]subtly adjusts [his of M] crotch[or]struggles to hide [his of M] erection[or]blushes a deep shade of red[or]covers [his of M] eyes with [his of M] arm[in random order].".

To say CringeDisapprovalFlav of (M - a royal guard):
	say "[speech style of M]'[one of]It's the law down here that people must be treated as the age that they appear...'[or]Such a childish appearance is against the law...'[in random order][roman type][line break][BigNameDesc of M] frowns with frustration.";

To say BecomesAggressive of (M - a royal guard):
	say "[speech style of M]'[one of]That's just too far! You are under arrest.'[or]This is too unacceptable. You leave me no choice but to arrest you.'[in random order][roman type][line break][big he of M] takes an offensive stance!".

To compute appearance assessment of (M - a royal guard):
	if there is a worn currently visible messed knickers:
		if the player is diaper focused:
			say "[speech style of M]'Oh my goodness, you really are a baby aren't you?! I guess you really do need help looking after...'[roman type][line break]";
		otherwise:
			say "[speech style of M]'Good lord... what the hell happened inside your undergarments?! I'm sorry [if the class of the player is princess and M is friendly]princess, but that is too much for me to handle. You need a chambermaid, not a bodyguard!'[otherwise]but on second thoughts, I'm not coming near you.'[end if][roman type][line break]";
			FavourDown M by 4;
			distract M;
			if there is worn perceived unmessed knickers, compute state check of a random worn messed knickers;
	otherwise if the class of the player is princess:
		say "[one of][big he of M] smiles politely.[or][big he of M] bows gracefully.[or][line break][speech style of M]'Your Highness!'[roman type][line break][at random]";
	otherwise if the player is live fucked or (the semen coating of breasts > 2 and the player is nipples exposed) or the semen coating of face > 0:
		FavourDown M by 2;
		if M is friendly, distract M;
		if M is acquaintance, say "[speech style of M]'Erm, I'll come back later[if the player is not live fucked], when you've had a chance to clean up[end if].'[roman type][line break]";
		otherwise say "[speech style of M]'I am completely disgusted by your appearance[if the player is not live fucked]. Clean yourself up[end if]!'[roman type][line break]";
	otherwise if the appearance of the player > the outrage tolerance of M:
		FavourDown M by 2;
		if M is buddy:
			if the size of penis > 3 and the player is presenting as male and the player is not crotch covered:
				say "[speech style of M]'[one of]Good sir, may I ask that in the future, you kindly put that away. I, *ahem-* I do not want to have to arrest you. [or]Fine sir, I am an officer of the law. In the future [please] put that away. [or]Well met! Erm, in the future would you [please] cover that up, I am after all an officer of the law. [in random order]";
			otherwise if the player is exposed:
				say "[speech style of M]'[one of]Fair maiden, well met! However in the future [please] cover yourself up when presenting yourself to a steward of the law. [or]It is good to see you! However [please] consider that it is very foolish to provoke a steward of the law with your appearance. [or]By the gods, young miss! I was not mentally prepared to see your intimate parts whilst on patrol. It would be prudent to avoid this happening again, forcing me to consider arresting you. [in random order]";
			otherwise:
				say "[speech style of M]'[one of]It is good to see you, but [please] for the love of all things proper, present yourself more appropriately. I am bound by the law punish and arrest temptresses. [or]Well met! But I must say I disapprove of your appearance, and would strongly recommend remedying this before next we meet. [or]It is nice to see you, but... Ahem, I can't look the other way for you. [big please] find a way to make yourself more presentable before next we meet. [in random order]";
		otherwise:
			if M is friendly and the class of the player is not princess and the class of the player is not royal slave and M is groping:
				compute grope of M;
			otherwise if the size of penis > 3 and the player is presenting as male and the player is not crotch covered:
				say "[speech style of M]'[one of]Young man, in the future [please] put that away. I do not want to have to arrest you. [or]Young man, I am an officer of the law. In the future, put that away. [or]Cover that up, I am an officer of the law! [in random order]";
			otherwise if the player is exposed and the player is presenting as male and the player is gendered male:
				say "[speech style of M]'[one of]Young lady- oh, uh... [big please] try to cover yourself up before a steward of the law! [or]Young... man, you must learn to cover yourself up when presenting yourself to an officer of the law. [or]Cover yourself up, the next time we meet, I am not afraid to arrest you. [in random order]";
			otherwise if the player is exposed:
				say "[speech style of M]'[one of]Young lady, in the future [please] cover yourself up when presenting yourself to a steward of the law! [or]Young lady, it is very foolish to provoke a steward of the law. [big please] remember to cover yourself up! [or]Temptress! Cover yourself by the next time we meet. I am a steward of the law! [in random order]";
			otherwise:
				say "[speech style of M]'[one of]You there, you look like a common harlot! You are lucky I am not arresting you on the spot.'[or]Wench! I am a steward of the crown, it is improper for you to present yourself in front of me in such attire.'[in random order]";
	otherwise if the player is top-wardrobe-malfunctioning:
		compute tq nip slip reaction of M;
	otherwise:
		say "[speech style of M]'Greetings, traveller. I hope your visit to these regions has been engaging? ";
		if there is a worn currently at least partially visible diaper, say "[if M is unfriendly and a random worn diaper is currently visible]Ugh, are you aware that your childish undergarments are showing?! What a disgrace. [otherwise if M is unfriendly]I can see the shape of your undergarments through your clothing, you know. [otherwise]Err, interesting undergarment choice. Do you have some kind of condition? [end if]".

To decide which number is the asshole grope preference of (M - a royal guard):
	decide on -100.
To decide which number is the vagina grope preference of (M - a royal guard):
	decide on -100.
To decide which number is the penis grope preference of (M - a royal guard):
	decide on -100.
To decide which number is the belly grope preference of (M - a royal guard):
	decide on -100.
To decide which number is the face grope preference of (M - a royal guard):
	decide on -100.

To compute breasts grope of (M - a royal guard):
	say "[BigNameDesc of M] roughly grabs your [ShortDesc of breasts] with one hand!".
To say BreastsGropeFlav of (M - a royal guard):
	say "[speech style of M]'[if breasts is lewdly exposed]Cover yourself up if you don't want [men of M] to treat you like a [whore].'[otherwise if breasts is at least partially lewdly exposed]If you don't cover these up properly, you'll find that the [men of M] in these parts will treat you with even less respect than me...'[otherwise]Is this really how you want to be treated? Because if you dress like that, [men of M] around here will do this and worse, and eventually I will be forced to arrest you.'[end if][roman type][line break]".

To compute thighs grope of (M - a royal guard):
	let C be a random worn crotch-in-place leg covering clothing;
	let S be a random worn skirted crotch-in-place clothing;
	say "[BigNameDesc of M] [if S is clothing and S is not C]moves a hand up under your [ShortDesc of S] and [end if][one of]strokes[or]rubs[in random order] your thigh[if C is clothing] through your [ShortDesc of C][end if]!".
To say ThighsGropeFlav of (M - a royal guard):
	say "[speech style of M]'[one of]Is this what you want, [boy of the player]? Because this is the sort of attention you will receive from the residents of these parts if you walk around dressed like a [whore]. Consider this a warning, I do not want to have to arrest you for public indecency.'[or]You are tempting a [man of M] the crown, wench. I can only be pushed so far before I will be forced to take these criminal matters into my own hands...'[in random order][roman type][line break]".

To compute ass grope of (M - a royal guard):
	let C be the concealer of hips;
	if C is nothing, now C is the at least partial concealer of hips;
	let S be a random worn skirted crotch-in-place clothing;
	if C is rigid clothing or a random number between 1 and 3 is 1, say "[BigNameDesc of M] [one of]smacks[or]swats[in random order] you hard on your [AssDesc][if C is clothing] through your [ShortDesc of C][end if]!";
	otherwise say "[BigNameDesc of M] [one of]deftly[or]quickly[in random order] [if S is clothing and S is not C][one of]snakes[or]shoots[or]sneaks[in random order] a hand up under your [ShortDesc of S] and [end if][one of]gropes[or]grabs[or]grips[or]squeezes[in random order] your [AssDesc][if C is clothing] through your [ShortDesc of C][end if]!".
To say AssGropeFlav of (M - a royal guard):
	say "[speech style of M]'[one of]You should be appreciative that this is all I have done to you, considering the appalling state of your appearance. Fix yourself up before I am forced to arrest you properly...'[or]You see, if you wander around my jurisdiction dressed like a [whore], I will be forced to treat you like one. It is the law. Consider this a very small sample of what I am capable of.'[in random order][roman type][line break]".

To say NipSlipSeenFlav of (M - a royal guard):
	say "[speech style of M]'[if the class of the player is princess]Ma'am, I believe you have had, ahem, a wardrobe malfunction[otherwise]Wench, your clothes are not even on properly. You are a disgrace[end if].'[roman type][line break]".

To compute perception of (M - a royal guard):
	now M is interested;
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]"; [The output for clothing humiliation takes place within the 'sluttily dressed' check.]
	let PSRB be a random carried probably-serve-ready bottle;
	if tutorial is 1:
		say TutorialGreet of M;
	otherwise if the number of combative royal guards > 1 or (M is friendly and there is a combative royal guard):
		say "[speech style of M]'A criminal?! Allow me to assist in [his of the player] arrest!'[roman type][line break]";
		anger M;
	otherwise if PSRB is bottle and the waitress-boredom of M <= 0 and the waitress bartering value of PSRB for M > 0 and M is not uniquely unfriendly:
		say "[if the outrage tolerance of M <= the saved appearance of the player][big he of M] frowns at your appearance but doesn't act aggressively. [end if][big he of M] seems to be eyeing your [PSRB].";
		calm M;
	otherwise if the class of the player is priestess and M is in Dungeon28 and M is not uniquely unfriendly:
		say "[if the outrage tolerance of M <= the saved appearance of the player][big he of M] frowns at your appearance but doesn't act aggressively. [end if][big he of M] seems to be expecting something from you.";
		calm M;
	otherwise if M is prison guard and there is worn locked clothing and M is not uniquely unfriendly:
		if debugmode > 0, say "List of items the jailor cares about: [list of worn locked clothing].";
		compute jailor perception of M;
	otherwise if the class of the player is living sex doll:
		say "[speech style of M]'A sex doll! Just what I need to satisfy my urges. Come here!'[roman type][line break]";
		anger M;
		now the sex-length of the M is a random number between 4 and 5;
	otherwise if the player-class is succubus:
		say "[speech style of M]'A demon! Get thee behind me, minion of Xavier!'[roman type][line break]";
		anger M;
		now the sex-length of M is a random number between 2 and 3;
	otherwise if M is mating and M is not uniquely unfriendly:
		say "[speech style of M]'My beautiful bride! Well met!'[if the player is flying][line break]'But what are you doing up there?!'[end if][roman type][line break]";
		calm M;
	otherwise if there is held stolen clothing and shopkeeper is unfriendly:
		say "[speech style of M]'Halt, in the name of the law!'[roman type][line break]";
		anger M;
		now the sex-length of M is a random number between 2 and 3;
	otherwise if there is an in use prison guard's bed and M is friendly:
		say "[speech style of M][if the class of the player is not princess]'Harlot! That is not your bed. What do you think you are doing?!'[roman type][line break][big he of M] looks very angry.[otherwise]'Princess. You have no business being in my bed if I am not in it.'[roman type][line break][big he of M] grins. Uh-oh.[end if]";
		anger M;
		SilentlyDifficultyUp M by 3;
		now the sex-length of the M is a random number between 3 and 4;
	otherwise if the class of the player is royal slave or the class of the player is bunny: [not his to use!]
		say "[big he of M] smiles politely.";
		calm M;
	otherwise if M is unfriendly:
		if there is soiled-diaper carried by M:
			say "[speech style of M]'[one of]You there! Is it you who's been littering these halls with your filth[or]You! You do know that I am still finding your disgusting diapers around these halls[stopping]?'[roman type][line break]";
		otherwise if the class of the player is princess:
			say "[speech style of M]'[if the times-submitted of M is 0][one of]Princess, I cannot contain myself any longer! It is time you made good on your flirtatious acts!'[or]My princess, I cannot avert my eyes from thine flirtatious acts any longer, my self control fails me! Lord, forgive me for the grave sin I am about to commit!'[at random][otherwise]Come here again, you slut of a princess! I think I shall enjoy another session with you.'[end if][roman type][line break]";
		otherwise:
			say "[speech style of M]'[if the times-submitted of M is 0][one of]You again! I am forced to punish you, for repeated offences of indecency! Either pay me the fine, or get on your knees at once!'[or]Harlot, you will submit to me now or I will be forced to place you under arrest. Get on your knees, or pay the fine.'[or]Stop! You've violated the law. Pay the court a fine or serve your sentence! Your body is now forfeit.'[then at random][otherwise]You again! [one of]Kneel before me, whore!'[or]I shall punish you for trespassing here. Turn away and bend over at once.'[at random][end if][roman type][line break]";
		now the sex-length of M is a random number between 2 and 3;
		anger M;
	otherwise:
		let F be the favour of M;
		compute appearance assessment of M;
		if M is interested: [If he is interested he hasn't finished speaking.]
			if M is unfriendly:
				say "[speech style of M]In fact, I must demand you pay a fine, or face immediate persecution...'[roman type][line break]A bead of sweat forms on [his of M] brow as you notice a bulge slowly forming at [his of M] crotch.";
			otherwise if the class of the player is princess:
				say "[speech style of M]'[one of]It is my honour to serve you.'[or]Allow me to guard you to the death.'[or]My liege.'[in random order][roman type][line break]";
			otherwise if the favour of M < F and M is not buddy:
				say "[speech style of M][one of]Seriously, some people...'[or]Unbelievable.'[or]Ridiculous...'[in random order][roman type][line break]";
			otherwise: [Default catch-all]
				say "[speech style of M][one of]Anyway, [if the class of the player is princess]allow me to guard you with my life!'[otherwise]if you see the Princess during your travels, tell [him of ex-princess] [he of ex-princess] is dearly missed.'[end if][or]Anyway, I would advise against trying to steal anything from this place, many containers are even booby trapped.'[or]Anyway, it is always nice to see a fresh face in this lonely place, so stay for as long as you feel comfortable.'[or]Anyway, [if there is an alive dungeon boss][please] ignore the giant caged monster you may come across, I promise [he of a random alive dungeon boss] is completely safe.'[otherwise]if you happen to see an, erm, 10 foot tall monster loose around the place, I would advise running away...'[end if][in random order][roman type][line break]";
	if the player is flying and M is unfriendly and M is interested:
		say "[speech style of M]'I shall wait until you have landed from your undignified and clearly failed attempt at flight.'[roman type][line break]";
	if lady fetish is 0, display interaction of M.

To display interaction of (M - a royal guard):
	if M is ally:
		alwayscutshow figure of guard interact 2 for M;
	otherwise if M is buddy:
		alwayscutshow figure of guard interact 1 for M;
	otherwise if M is acquaintance:
		alwayscutshow figure of guard interact 3 for M;
	otherwise if M is friendly or diaper quest is 1:
		alwayscutshow figure of guard interact 4 for M;
	otherwise:
		alwayscutshow figure of guard interact 5 for M.

To display interaction of (M - prison guard):
	do nothing.

To compute jailor perception of (M - a royal guard):
	let unlockable-clothing be nothing;
	if bondage protection > 0:
		now unlockable-clothing is silver-tiara; [with any points in bondage protection, the prison guard can unlock all items]
	otherwise:
		repeat with C running through worn locked clothing:
			let K be a random unlock-key covering the noun;
			if K is nothing or K is held by M:
				now unlockable-clothing is C;
	if unlockable-clothing is nothing:
		say "[speech style of M]'Your locked clothing... It would appear that I don't have authority to remove those locks. Run along now, and continue serving your sentence. Perhaps if you please them enough, whoever locked you up will see it in their heart to eventually release you...'[roman type][line break]";
	otherwise if the sentence of M > 0:
		say "[speech style of M]'Your sentence is not yet over, [boy of the player][if the sentence of M <= 1]. But you should look for me again very soon[otherwise if the sentence of M <= 2]. But you should find me again soon[end if].'[roman type][line break]";
		if M is unfriendly, say "[BigNameDesc of M] strokes [his of M] chin.[line break][speech style of M]'And in the meantime, I think you need further [']discipline[']...'[roman type][line break]";
	otherwise:
		say "[first custom style]'I guess it is time you were released.'[roman type][line break]";
		compute bondage releasing of M;
		say "[big he of M] turns away to leave you alone.";
		distract M.

To compute DQ appearance assessment of (M - a royal guard):
	if there is a worn currently visible messed knickers:
		say "[speech style of M]'Good lord... is that smell coming from your undergarments?! I'm sorry [if the class of the player is princess and M is friendly]princess, but that is above my pay grade. You need a chambermaid, not a bodyguard!'[otherwise if M is friendly]but on second thoughts, I'm not coming near you - that's above my pay grade.'[otherwise]to see that I was correct - you are nothing but a disgusting little baby.'[end if][roman type][line break][big he of M] turns to leave you alone.";
		FavourDown M by 4;
		distract M;
		if there is worn perceived unmessed knickers, compute state check of a random worn messed knickers;
	otherwise if the class of the player is princess:
		say "[one of][big he of M] smiles politely.[or][big he of M] bows gracefully.[or][line break][speech style of M]'Your Highness!'[roman type][line break][at random]";
	otherwise if the saved cringe appearance of the player > the cringe tolerance of M:
		if M is buddy, say "[speech style of M]'Erm, I'm sure I've just caught you at a bad moment, but you really should find more dignified clothing that reflects your [maturity] if you wish for us to remain amicable. ";
		otherwise say "[speech style of M]'[if the times-changed of M is 0]You don't look like a grown adventurer to me. Go away and find some more appropriate attire before I am forced to treat you as though you have the [maturity] that you outwardly represent! [otherwise]You still look like a little girl. I suggest finding something more appropriate, and urgently. [end if]";
		FavourDown M by 2;
	otherwise if the saved appearance of the player > the outrage tolerance of M:
		if M is buddy, say "[speech style of M]'I understand that you're trying to look like an adult, but your appearance is a disgrace. [big please] try and find something more sensible to wear before we meet again. ";
		otherwise say "[speech style of M]'I am rather disgusted by your appearance. You look like a common whore. Find something more dignified to wear before crossing paths with me again, or I will be forced to treat you with the lack of respect that you deserve. ";
		FavourDown M by 2;
	otherwise if the player is top-wardrobe-malfunctioning:
		compute dq nip slip reaction of M;
	otherwise:
		say "[speech style of M]'Greetings, traveller. I hope your visit to these regions has been engaging? ".

To compute DQ perception of (M - a royal guard):
	now M is interested;
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]"; [The output for clothing humiliation takes place within the 'sluttily dressed' check.]
	if tutorial is 1:
		say "[TutorialGreet of M]";
	otherwise if M is prison guard and there is worn locked clothing:
		compute jailor perception of M;
	otherwise if there is held stolen clothing and shopkeeper is unfriendly:
		say "[speech style of M]'Halt, in the name of the law!'[roman type][line break]";
		anger M;
	otherwise if M is uniquely unfriendly:
		if there is soiled-diaper carried by M:
			say "[speech style of M]'[one of]You there! Is it you who's been littering these halls with your filth[or]You, child! You do know that I am still finding your disgusting diapers around these halls[stopping]?'[roman type][line break]";
		otherwise if the class of the player is princess:
			say "[speech style of M]'[if the times-submitted of M is 0][one of]Princess, I am sorry but you have become unfit to rule our kingdom! I am forced to declare martial law. [big please] do not resist, I must now assist in the completion of your reconditioning...'[or]Princess, I have been informed that martial law is now in effect, and I must assist in your reconditioning. [big please] do not resist.'[stopping][otherwise]Come here again, Little Princess! It's time for [one of]a[or]another[stopping] [']conditioning session['].'[end if][roman type][line break]";
		otherwise:
			say "[speech style of M]'[if the diaper-duration of M > 0]It's time to continue your baby training, little one. I'm not letting you out of diapers yet.'[otherwise if the times-submitted of M is 0][one of]You! I am forced to punish you for your inappropriate appearance! Either pay me the fine, or get on your knees at once!'[or]Little girl, you will submit to me now or I will be forced to place you under arrest. Get on your knees, or pay the fine.'[or]Stop! You've violated the law. Pay the court a fine or serve your sentence! Your bodily functions are now forfeit.'[then at random][otherwise]You again! [one of]Kneel before me, child!'[or]I shall punish you for your pathetic state. Get on your knees at once.'[at random][end if][roman type][line break]";
	otherwise if (there is a worn diaper or the diaper-duration of M > 0) and the player is immobile:
		say "[big he of M] seems to decide to leave you alone for now.";
		distract M;
	otherwise if there is a worn currently at least partially visible diaper or M is aware that the player needs a change:
		compute diaper check of M;
	otherwise if the diaper-duration of M > 0:
		if there is a worn diaper:
			compute diaper check of M;
		otherwise:
			say "[big he of M] swiftly walks up to you and holds [if diaper messing < 3]a hand to the front[otherwise]hands to the front and back[end if] of your crotch, pushing firmly to get a good feel.[line break][speech style of M]'YOU! Did I tell you your punishment sentence was over? You must be punished harshly for not wearing a diaper as instructed!'[roman type][line break]";
			FavourDown M by 4;
			anger M;
	otherwise if there is an in use prison guard's bed and M is friendly:
		say "[speech style of M][if the class of the player is not princess]'You! That is not your bed. What do you think you are doing?! [otherwise]'Princess. [end if]You have no business being in my bed, unless you are under my care...'[roman type][line break][big he of M] frowns, and takes on an aggressive, dominant stance. Uh-oh.";
		anger M;
	otherwise if M is unfriendly and the diaper-duration-ended of M is 0:
		if the class of the player is princess:
			say "[speech style of M]'[if the times-submitted of M is 0][one of]Princess, I am sorry but you have become unfit to rule our kingdom! I am forced to declare martial law. [big please] do not resist, I must now assist in the completion of your reconditioning...'[or]Princess, I have been informed that martial law is now in effect, and I must assist in your reconditioning. [big please] do not resist.'[stopping][otherwise]Come here again, Little Princess! It's time for [one of]a[or]another[stopping] [']conditioning session['].'[end if][roman type][line break]";
		otherwise:
			say "[speech style of M]'[if the diaper-duration of M > 0]It's time to continue your baby training, little one. I'm not letting you out of diapers yet.'[otherwise if the times-submitted of M is 0][one of]You! I am forced to punish you, for crimes of disgusting indecency! Either pay me the fine, or get on your knees at once!'[or]Little girl, you will submit to me now or I will be forced to place you under arrest. Get on your knees, or pay the fine.'[or]Stop! You've violated the law. Pay the court a fine or serve your sentence! Your bodily functions are now forfeit.'[then at random][otherwise]You again! [one of]Kneel before me, child!'[or]I shall punish you for your pathetic state. Get on your knees at once.'[at random][end if][roman type][line break]";
	otherwise:
		if the diaper-duration-ended of M is 1:
			calm M;
			FavourUp M by 2;
			say "[BigNameDesc of M] begins speaking before even looking at you properly.[line break][speech style of M]'Firstly, I have decided that your diaper punishment is at an end... for now. This is your chance to prove to me that you can dress yourself like an adult.'[roman type][line break][big he of M] then begins to assess your current appearance. ";
			now the diaper-duration-ended of M is 0;
		let F be the favour of M;
		compute DQ appearance assessment of M;
		if M is interested: [If [he of M] is interested [he of M] hasn't finished speaking.]
			if M is unfriendly:
				say "[speech style of M]In fact, I must demand you pay a fine, or face immediate persecution[one of]. And you will find that our method of punishment in this region tends to fit the crime.'[or]...'[stopping][roman type][line break]A bead of sweat forms on [his of M] brow as you notice [his of M] hand resting calming on the hilt of [his of M] sword.";
			otherwise if the class of the player is princess:
				say "It looks like [he of M] plans to follow you around for a while.";
			otherwise if the favour of M < F and M is not buddy:
				say "[speech style of M][one of]Seriously, some people...'[or]Unbelievable.'[or]Ridiculous...'[in random order][roman type][line break]";
			otherwise: [Default catch-all]
				say "[speech style of M][one of]Anyway, if you see the Princess during your travels, tell [him of ex-princess] [he of ex-princess] is dearly missed.'[or]Anyway, I would advise against trying to steal anything from this place, many containers are even booby trapped.'[or]Anyway, it is always nice to see a fresh face in this lonely place, so stay for as long as you feel comfortable.'[in random order][roman type][line break]";
	if lady fetish is 0 and M is interested, display interaction of M.

Part 3 - Motion

To compute monstermotion of (M - a royal guard):
	if there is held stolen clothing and shopkeeper is unfriendly:
		check seeking 1 of M;
	otherwise if the class of the player is priestess and the player is in the location of dungeon altar and the refractory-period of M <= 0:
		check seeking 1 of M;
	otherwise if a random number from 1 to 2 is 1 or M is in the location of the player:
		if patrol of M is 0:
			let D be the the best route from the location of M to Dungeon03 through labyrinth rooms;
			if D is nothing:
				now the patrol of M is 1;
			otherwise if D is not the travel-opposite of the player or the room D from (the location of M) is not (the location of the player):
				blockable move M to D;
				if the location of M is Dungeon03, now patrol of M is 1;
		otherwise if patrol of M is 1:
			let D be the the best route from the location of M to Dungeon06 through labyrinth rooms;
			if D is nothing:
				now the patrol of M is 2;
			otherwise if D is not the travel-opposite of the player or the room D from (the location of M) is not (the location of the player):
				blockable move M to D;
				if the location of M is Dungeon06, now patrol of M is 2;
		otherwise if patrol of M is 2:
			let D be the the best route from the location of M to Dungeon22 through labyrinth rooms;
			if D is nothing:
				now the patrol of M is 3;
			otherwise if D is not the travel-opposite of the player or the room D from (the location of M) is not (the location of the player):
				blockable move M to D;
				if the location of M is Dungeon22, now patrol of M is 3;
		otherwise if patrol of M is 3:
			let D be the the best route from the location of M to Dungeon23 through labyrinth rooms;
			if D is nothing:
				now the patrol of M is 4;
			otherwise if D is not the travel-opposite of the player or the room D from (the location of M) is not (the location of the player):
				blockable move M to D;
				if the location of M is Dungeon23, now patrol of M is 4;
		otherwise if patrol of M is 4:
			let D be the the best route from the location of M to Dungeon24 through labyrinth rooms;
			if D is nothing:
				now the patrol of M is 5;
			otherwise if D is not the travel-opposite of the player or the room D from (the location of M) is not (the location of the player):
				blockable move M to D;
				if the location of M is Dungeon24, now patrol of M is 5;
		otherwise if patrol of M is 5:
			let D be the the best route from the location of M to Dungeon25 through labyrinth rooms;
			if D is nothing:
				now the patrol of M is 6;
			otherwise if D is not the travel-opposite of the player or the room D from (the location of M) is not (the location of the player):
				blockable move M to D;
				if the location of M is Dungeon25, now patrol of M is 6;
		otherwise if patrol of M is 6:
			let D be the the best route from the location of M to Dungeon28 through labyrinth rooms;
			if D is nothing:
				now the patrol of M is 7;
			otherwise if D is not the travel-opposite of the player or the room D from (the location of M) is not (the location of the player):
				blockable move M to D;
				if the location of M is Dungeon28, now patrol of M is 7;
		otherwise:
			let D be the the best route from the location of M to Dungeon10 through labyrinth rooms;
			if D is nothing:
				now the patrol of M is 0;
			otherwise if D is not the travel-opposite of the player or the room D from (the location of M) is not (the location of the player):
				blockable move M to D;
				if the location of M is Dungeon10, now patrol of M is 0;
		compute monstermotion reactions of M.

To compute unique periodic effect of (M - a royal guard):
	if diaper quest is 0 and M is undefeated and M is awake and M is not seduced and M is not penetrating a body part and M is not combative:
		if the refractory-period of M < a random number between -200 and -120: [is he horny?]
			if M is in the location of the player:
				say "You see [NameDesc of M] pull out [his of M] [DickDesc of M] and masturbate until [he of M] blows [his of M] load on the ground. [if (the class of the player is princess or M is mating) and M is friendly][big he of M] seems really embarrassed that you're watching[otherwise][big he of M] clearly has no respect for you at all[end if]...";
			SemenPuddleUp 1 in (the location of M);
			now the refractory-period of M is -4.[He'll only be completely satisfied by sex]

Part 4 - Protection

To compute (M - a royal guard) protecting against (X - a monster):
	if M is mating or (the class of the player is princess and X is not royal guard):
		if the player is monster stuck:
			say "[speech style of M]'[if M is mating]I have failed you my love, I am so sorry!'[otherwise]I have failed you princess, I am so sorry!'[end if][roman type][line break][BigNameDesc of M] flees the scene!";
			now the scared of M is 50;
		otherwise:
			let A be 2;
			if the blue-balls of M < 0, decrease A by the blue-balls of M; [he's fighting harder because he isn't holding back a desire to fuck you, basically]
			compute X receiving A damage from M;
	otherwise if the player is monster stuck:
		let Mbuddy be 0;
		if M is buddy, now Mbuddy is 1; [check causes line break]
		say "[speech style of M]'[if Mbuddy is 1]I'll, err, see you later.'[otherwise]Typical.'[end if][roman type][line break][BigNameDesc of M] turns [his of M] back on you.";
		distract M;
	otherwise if X is royal guard:
		if the class of the player is princess:
			if M is buddy:
				say "[speech style of M]'Fool! Your judgement is clouded by lust!'[roman type][line break][BigNameDesc of M] punches [NameDesc of X]!";[it's pretty much assumed that if you're attacking the other guy and you've had friendly sex with [him of M] a bunch, you attacked him]
				compute X receiving 2 damage from M;
			otherwise:
				say "[speech style of M]'Oh [he of the player]'s *that* kind of [if the class of the player is princess]princess[otherwise if diaper quest is 1][boy of the player][otherwise][man of the player][end if], is [he of the player]?'[roman type][line break][BigNameDesc of M] looks at you with an evil grin.";
				anger M;
		otherwise:
			say "[speech style of M]'Well well well, what do we have here?'[roman type][line break][BigNameDesc of M] looks at you with an evil grin.";
			anger M;
	otherwise if M is guardian or (M is ally and the difficulty of X < the difficulty of M):
		let A be 2;
		say "[speech style of M]'[one of]Allow me to fight with you[or]Hah[stopping]!'[roman type][line break]";
		if the blue-balls of M < 0, decrease A by the blue-balls of M;[he's fighting harder because he isn't holding back a desire to fuck you, basically]
		compute X receiving A damage from M;
	otherwise if X is wench:
		say "[BigNameDesc of M] is watching you closely.";
	otherwise:
		say "You see [NameDesc of M] slowly walk away, as if pretending not to see what is happening.";
		distract M.

To say AllyDamageFlav of (M - a royal guard) on (X - a monster):
	say "[speech style of M]'[if M is mating]Get your hands off my wife!'[otherwise]Do not harm the princess!'[end if][roman type][line break][BigNameDesc of M] punches [NameDesc of X]!".

Part 1 - Combat

To compute kneeling reaction of (M - a royal guard):
	say "[one of][BigNameDesc of M] grins, pulling [his of M] flaccid [DickDesc of M] out of [his of M] pants. Locking you in a steady gaze, [he of M] slowly moves closer, [his of M] exposed member bouncing [if the bimbo of the player < 4]threateningly[otherwise if the bimbo of the player < 8]ominously[otherwise if the bimbo of the player < 12]happily[otherwise if the bimbo of the player < 16]excitedly[otherwise]enticingly[end if] as it grows to a full, throbbing erection. You stare at it [if the bimbo of the player < 4]fearfully[otherwise if the bimbo of the player < 7]uneasily[otherwise if the bimbo of the player < 10]nervously[otherwise if the bimbo of the player < 13]anxiously[otherwise if the bimbo of the player < 16]hungrily[otherwise]eagerly[end if], looking up at the guard when [he of M] comes to a stop about a foot away.[or][BigNameDesc of M] grins, pulling [his of M] half-hardened [DickDesc of M] out of [his of M] pants. [big he of M] moves calmly moves forward, stroking himself to a full, throbbing erection. [big he of M] stops a foot or so away, crossing [his of M] arms and looking at you expectantly.[or][if the bimbo of the player < 4]You grimace and close your eyes as the guard lowers [his of M] hands to [his of M] crotch. You open one just a crack at the rustling of some fabric, just in time for the guard's [DickDesc of M] to fall free, mere inches from your face.[otherwise if the bimbo of the player < 7]You stare at the obvious tent in [NameDesc of M][']s pants, knowing that a massive, throbbing erection waits behind the thin veil of fabric. After a moment of silence, the guard scoffs and pulls it free.[otherwise if the bimbo of the player < 10]You see the guard remove [his of M] penis from its prison and fight back an urge to reach up with your hands and pull it free. You stare at [him of M] with a weird mixture of deep embarrassment and hot excitement as [he of M] leers down at you whilst [his of M] [DickDesc of M] throbs mere inches from your face.[otherwise if the bimbo of the player < 13]You can't bring yourself to tear your eyes away as the guard lowers [his of M] hands to [his of M] crotch, and pulls [his of M] rock hard, throbbing penis free. Before you can stop yourself, you reach your hand up to touch it.[otherwise if the bimbo of the player < 16][BigNameDesc of M] grins as [he of M] lowers [his of M] hands to [his of M] crotch and pulls [his of M] rock hard [DickDesc of M] free. You lick your lips and eagerly rub at your genitals.[otherwise]You reach up with your hands, placing your hands on either side of the obvious tent in [his of M] pants, pulling the fabric to reveal the beast within. You wrap a hand around the base, stroking it slowly and looking up at the guard, smiling.[end if][in random order]";
	strongHumiliate.

To compute DQ delay of (M - a royal guard):
	say "[one of][BigNameDesc of M] smiles and looks at you silently. Looks like [he of M][']s waiting for you to make the first move.[or][BigNameDesc of M][']s free hand hovers over your bottom, as if to let you know that [he of M] could jump on you at any time. [big he of M][']s merely waiting for you to make the first move.[or][BigNameDesc of M] watches you, poised to stop you if you try to run away, but still waiting to see what you do next.[or]You realise [NameDesc of M] is waiting to see what you do next.[in random order][line break]".

To compute delay of (M - a royal guard):
	say "[one of]A bead of precum rolls down the side of [NameDesc of M][']s gently twitching shaft. Looks like [he of M][']s waiting for you to make the first move.[or][BigNameDesc of M][']s free hand hovers over your head, as if to let you know that [he of M] could jump on you at any time. [big he of M][']s merely waiting for you to make the first move.[or][BigNameDesc of M] watches you, poised to stop you if you try to run away, but still waiting to see what you do next.[or]You realise [NameDesc of M] is waiting to see what you do next.[in random order][line break][one of][line break][speech style of M]'Because you have been obedient, I have decided to allow you to choose how you will be punished.'[roman type][line break][or][line break][speech style of M]'Your obedience is commendable. Present yourself.'[roman type][line break][or][line break][speech style of M]'Because I am an honourable [man of M], I allow you to choose how you will be punished.'[roman type][line break][or][line break][speech style of M]'Because I am honourable, I allow you to make known your preferences.'[roman type][line break][in random order]".

To say waitingflav of (M - a royal guard):
	if the player is not able to speak:
		say "[if the player is able to make sounds][line break][variable custom style][muffled sounds][roman type][line break][otherwise]You look up at [NameDesc of M] silently.[end if]";
	otherwise if the player is not a pervert:
		say "[one of]You stare up at the guard, stunned.[or]You shake your head in disbelief of the situation you've gotten yourself into.[or]You turn away. [if the player is able to speak][line break][first custom style]'Hmmph.'[roman type][line break][end if][or][if the player is able to speak][line break][first custom style]'Whatever you're thinking of doing to me, please don't.'[roman type][line break][otherwise]You look away, knowing full well you have no chance of escape.[end if][or][line break][first custom style][if the player is gendered male and the player is able to speak]'Dude, I'm not gay.'[otherwise if the player is able to speak]'I am NOT going to touch your penis.'[otherwise]This can't be happening![end if][roman type][line break][or][line break][first custom style][if the player is gendered male and the player is able to speak]'I'm not going to touch another dude's junk, that's gross.'[otherwise if the player is able to speak]Do you think I'm some sort of bimbo? I'm not going to pleasure you.'[otherwise]I'm not going to be a part of this![end if][roman type][line break][or][line break][first custom style][if the player is gendered male and the player is able to speak]'Dude, I'm not touching your [DickDesc of M], that's gay.'[otherwise if the player is able to speak]'I'd never have sex with a misogynist like you!'[otherwise]Is [he of M] about to do what I think [he of M] is?![end if][roman type][line break][or][line break][first custom style][if the player is able to speak]'I'm sorry, all right? Please let me go, just this once.'[otherwise]There must be something I can do that will make [him of M] let me go?![end if][roman type][line break][in random order]";
	otherwise if the player is not a nympho:
		say "[one of][if the player is able to speak][line break][first custom style]'It's just sex. Don't get too into it.'[roman type][line break][otherwise]You bite your lip, embarrassed by your own excitement.[end if][or]You wait obediently, convincing yourself it's because the guard is intimidating, and not because you know it's not your place to choose.[or]Honestly, it's kind of invigorating to leave it up to [him of M]. [if the player is able to speak][line break][first custom style]'I don't care what you do, just don't make a mess.'[roman type][line break][end if][or][if the player is gendered male]You try to stifle some decidedly 'gay' thoughts.[otherwise if the player is possessing a vagina]You focus on keeping your hands away from your [vagina].[otherwise]You try to focus on not becoming aroused.[end if][or][line break][second custom style][if the player is possessing a penis and the player is able to speak]'Does my [player-penis] bother you?'[otherwise]Am I a slut for letting [him of M] do what [he of M] wants?[end if][roman type][line break][or][if the player is gendered male or the player is not able to speak]You try to think of anything but how much you want to touch the guard's [DickDesc of M].[otherwise][line break][variable custom style]'You'll be gentle, right?'[end if][roman type][line break][in random order]";
	otherwise:
		say "[one of][if the player is not able to speak]You feel thoroughly ready to get fucked any way the guard pleases.[otherwise][line break][second custom style]'Put it anywhere, sexy.'[roman type][line break][end if][or][line break][second custom style][if the player is able to speak]'We're both horny, so do whatever.'[otherwise if the size of penis > 3]If I let [him of M] choose, maybe [he of M]'ll give me a reach around![otherwise]I'm a woman, so my opinion doesn't matter, hee hee![end if][roman type][line break][or][if the player is able to speak][line break][second custom style]'Don't be afraid to be rough, stud. I like it that way!'[otherwise if the player is not possessing a vagina][second custom style]Hee hee, looks like I'm about to get knighted![otherwise]You jill yourself vigorously, eager to be used like the slutty tart you are.[end if][roman type][line break][or][line break][second custom style][if the player is able to speak]'I don't know what I want, teehee!'[otherwise if the player is not possessing a vagina]I'm the submissive [sissy slut], so I should wait to find out what [he of M] wants most.[otherwise]I really feel like getting fucked in my pussy, but [he of M]'s the [man of M] so [he of M] should choose.[end if][roman type][line break][or][line break][second custom style][if the player is able to speak]'I'm always up for a good fuck, doesn't matter why type it is!'[otherwise]You know full well it's not your place to choose.[end if][roman type][line break][in random order]".

To say SexSubmissionFlav of (M - a royal guard):
	if M is penetrating face:
		if the throatskill of the player is 1 and the oral sex addiction of the player >= 7:
			say "You aggressively fellate the guard, taking [his of M] entire length into your throat over and over again with ease.";
		otherwise if the oral sex addiction of the player < 4:
			say "[one of]You slowly move your head back and forth, ashamed of what you've become[or]You reluctantly suckle the guard's throbbing fuckstick[or]You bob your head back and forth, [if the delicateness of the player < 8]glaring up at [him of M] defiantly[otherwise if the delicateness of the player < 13]staring up at [him of M] dejectedly[otherwise]avoiding [his of M] gaze out of fear[end if][or]You reluctantly fellate the guard, cheeks red with shame[or]You decide it's not worth resisting and reluctantly fellate [his of M] [DickDesc of M][in random order].";
		otherwise if the oral sex addiction of the player < 7:
			say "[one of]You [if M is a balls-haver]cup [FuckerDesc of M]'s balls[otherwise]stroke [FuckerDesc of M] from the base[end if] as you obediently suckle [his of M] [DickDesc of M].[or]You fellate the guard with restrained enthusiasm.[or]You bob your head back and forth, trying to convince yourself you're not enjoying it.[or]You slowly and obediently stroke the guard's [DickDesc of M] as you pull back and tease it with your tongue.[or]You move your head back and forth, dragging your tongue along the bottom of [his of M] length.[in random order]";
		otherwise:
			say "[one of]You eagerly pump the guard's [DickDesc of M] as you bob your head back and forth.[or]You fellate the guard with unrestrained enthusiasm.[or]You suck the guard's [DickDesc of M] like the hungry cumslut you are.[or]You aggressively fellate the guard, emitting muffled moans of contentment.[or]You gaze up at the guard as you eagerly pleasure [his of M] [DickDesc of M].[or]You enthusiastically pleasure the guard with your mouth and tongue.[or]You pucker your lips and [if M is a balls-haver]cup [FuckerDesc of M]'s balls[otherwise]stroke [FuckerDesc of M] from the base[end if] as you hungrily suckle [his of M] [DickDesc of M].[in random order]";
	otherwise if M is penetrating a fuckhole:
		say "[if the relevant sex addiction of M < a random number between 4 and 7][one of]You lie still and accept the invasion.[or]You submit to being used as a plaything.[or]You don't resist being used.[in random order][otherwise][one of]You purposefully loosen up and accept the guard's thrusts to easily slide fully in and out.[or]You push back at the guard enthusiastically in the same rhythm that [he of M] is fucking you.[in random order][end if]";
		say "[variable custom style][one of][if the relevant sex addiction of M > 12 and the player is able to speak]'Fuck me, stud!'[otherwise if the relevant sex addiction of M > 12 and the player is able to make sounds][muffled sounds][otherwise if the vaginalvirgin of the player is 1 and the player is possessing a vagina]At least I still have my virginity.[otherwise]Maybe if I relax, this will hurt less?[end if][or][if the relevant sex addiction of M > 10]This feels too good![otherwise if the relevant sex addiction of M > 5]Why am I letting [him of M] do this? Am I a whore?[otherwise]It still hurts![end if][or][if the relevant sex addiction of M > 13 and the player is able to speak]'That feels good! Go faster!'[otherwise if the relevant sex addiction of M > 13 and the player is able to make sounds][muffled sounds][otherwise if the relevant sex addiction of M > 8]Maybe I really am a slut?[otherwise]Let this be over quickly...[end if][or][if the player is able to make sounds][muffled sounds][otherwise if the relevant sex addiction of M > 14 and the player is able to speak]'Harder!'[otherwise if the relevant sex addiction of M > 14]I kind of wish [he of M]'d go even harder![otherwise if M is not penetrating vagina and the player is possessing a vagina]At least [he of M]'s not using my [vagina]...[otherwise if the relevant sex addiction of M > 6]Am I actually enjoying this?[otherwise]Oh just please finish fast! My [vagina] can't take much more.[end if][purely at random][roman type][line break]".

To say SexResistFlav of (M - a royal guard):
	if M is penetrating a fuckhole:
		say "[if the relevant sex addiction of M < a random number between 8 and 13][one of]You struggle against [his of M] strong grip, but remain in place.[or]You attempt to crawl away, but [his of M] grip is just too strong![or]You squirm, attempting to loosen [his of M] grip, but with no success.[or]You try to kick back at [him of M] with your legs, only managing to get your foot caught in [his of M] cloak.[in random order][otherwise][one of]You resist, but your heart isn't really in it.[or]You kick back at [him of M] but it's more playful than violent.[in random order][end if]";
	otherwise if M is penetrating a body part:
		say "[one of]You struggle against [his of M] strong grip, but [his of M] [DickDesc of M] remains where it is.[or]You attempt to jerk away, but [his of M] grip is just too strong![or]You try to [if there is worn wrist-bound-behind clothing]pull[otherwise]push [FuckerDesc of M][end if] away, but [his of M] hold on your head is too strong.[or]You [if there is worn wrist-bound-behind]squirm[otherwise]beat on [FuckerDesc of M]'s thighs[end if] in a futile attempt to break [his of M] grip.[in random order]";
	otherwise:
		say DefaultResistFlav of M;
	if the player is able to speak:
		say "[variable custom style]'[one of][if the relevant sex addiction of M > 13]Work for it, stud!'[otherwise if the class of the player is princess]Aren't you supposed to protect me?!'[otherwise]Hey! Somebody help me!'[end if][or][if the bimbo of the player > 10]You're so strong!'[otherwise if the bimbo of the player > 5]Let go of me!'[otherwise]Stop it, you brute!'[end if][or][if the delicateness of the player > 13]This is fun!'[otherwise if the delicateness of the player > 7]You're being too rough!'[otherwise]What the fuck, dude?!'[end if][purely at random][roman type][line break]";
	otherwise if the player is able to make sounds:
		say "[variable custom style][muffled sounds][roman type][line break]".

Chapter 1 - Attack

[This code happens regardless of whether the player is around, BEFORE other actions]
To compute unique early action of (M - a royal guard):
	if M is shieldblocked:[This only manages the shieldblock variable, it doesn't actually raise or lower his shield.]
		if the shieldblock of M > 0 and M is unfriendly and M is interested and the player is upright:
			if M is in the location of the player, say "[BigNameDesc of M] keeps [his of M] shield raised defensively.";
			decrease the shieldblock of M by 1;
		otherwise:[if he's friendly, not interested, or too tired to hold up the shield, he lowers it]
			if the shieldblock of M > 0, now the shieldblock of M is 0;
			decrease the shieldblock of M by 5;
	otherwise if the shieldblock of M < 0:
		increase the shieldblock of M by 1.

The guard priority attack rules is a rulebook. The priority attack rules of a royal guard is the guard priority attack rules.

[This code happens only if the player is in the room.]
This is the guard raises shield rule:
	let M be current-monster;
	if the player is upright:
		if M is unfriendly and M is interested:
			let D be the difficulty of M - the starting difficulty of M;
			if M is not shieldblocked and the shieldblock of M >= 0 and (M is prison guard or D >= 1) and (the health of M < the maxhealth of M / 2) and a random number between 1 and 5 is 1:
				say "[bold type][BigNameDesc of M][bold type] raises [his of M] shield, protecting [his of M] upper body.[roman type]";
				if M is prison guard or D >= 2, now the shieldblock of M is 6;
				otherwise now the shieldblock of M is 2;
				now M is shieldblocked;
				rule succeeds;[Raising or lowering his shield is his action for the turn.]
	if M is shieldblocked and the shieldblock of M < 0:
		if M is in the location of the player, say "[BigNameDesc of M] lowers [his of M] shield.";
		now M is not shieldblocked;
		rule succeeds.
The guard raises shield rule is listed last in the guard priority attack rules.

To compute failed damage of (M - a royal guard):
	if M is shieldblocked:
		say "[BigNameDesc of M] grunts as [he of M] takes the blow with [his of M] shield.";
		decrease the shieldblock of M by 2;[Attacking the shield causes it to be lowered twice as fast.]

To get orgasm image of (M - a royal guard) in (F - a fuckhole):
	if lady fetish is 0, cutshow figure of guard cutscene 3 for M.

To compute the flying player taunting of (M - a royal guard):
	if a random number from 1 to 6 is 1:
		say "[BigNameDesc of M] taunts you.[line break][speech style of M]'[if the class of the player is princess][one of]My Princess, what happened to your sense of dignity?![or]You shame our kingdom with your acts, my Princess. I shall feel no regret for what I have in mind for you when you descend.[or]No true royalty would allow such a humiliating scenario to befall themselves.[or]Our Princess is naught but a dumb cow in need of breeding. Oh how I have dreamed for such an opportunity![or]Princess! Come down from there so that I can use you to deposit my seed. It would seem to be all you are good for now.[or]Are you really even the Princess? Or are you just a dumb obese whore in royal dress?[in random order]'[otherwise][one of]You wenches are so foolish, getting yourselves into such humiliating situations![or]You look like a life sized balloon![or]How do you expect anyone to respect you, never mind a noble such as myself?[or]Dumb fat girls deserve nothing less than a good ruining! I shall wait for you to descend.[or]Come down, little piggy, let me play with you.[or]Fat useless females like you are my favourite kind to use to relieve myself.[in random order]'[end if][roman type][line break][if the humiliation of the player < 17500]You [one of]wince[or]shudder[or]cringe[purely at random] with shame.";
		humiliate 20.

To say LandingTaunt of (M - a royal guard):
	if M is royal guard, say "[BigNameDesc of M] smirks.[line break][speech style of M]'[one of]Haha, at last!'[or]I've never seen such a ridiculous sight in my life.'[in random order][roman type][line break]";
	humiliate 50.

To say SwallowDemand of (M - a royal guard):
	if M is not unfriendly:
		if the class of the player is princess, say "[BigNameDesc of M] gives you a hopeful look. [big he of M] probably wants you to swallow...";
		otherwise say "[speech style of M]'[one of]Swallow it, wench.'[or]Swallow it, whore. Every drop.'[or]Swallow it all, wench. I do not want to ask again.'[or]I order you to swallow it.'[in random order][roman type][line break]";
	otherwise:
		if the class of the player is princess, say "[speech style of M]'[one of]Swallow it, you whore of a princess.'[or]A gift from your loyal servant, princess. I order you to swallow it.'[or]You disgust me, princess. Swallow my seed, or I will be forced to punish you further.'[or]I have shown you the mercy that is required of your station. Swallow, and I won't stop.'[or]Swallow it, princess. You no longer make the rules here.'[in random order][roman type][line break]";
		otherwise say "[speech style of M]'[one of]I have prepared a gift for you, wench. Do not waste a drop.'[or]Swallow like a good whore and this will be the end of your punishment.'[or]You disgust me, whore. Swallow my seed, or I will be forced to administer further punishment.'[or]I have decided that you will carry the evidence of your punishment in your belly.'[or]Know that I have been merciful with you. Swallow, and I won't stop.'[or]My mercy is at a premium, wench. Swallow if you know what's good for you.'[or]Swallow like the filthy whore you are, or face the consequences.'[or]Swallow. It is not a request.'[in random order][roman type][line break]".

To get oral creampie image for (M - a royal guard):
	cutshow figure of guard cutscene 4 for M.

To satisfy (M - a royal guard) for (N - a number) seconds:
	reset submissive wenches;
	if M is interested:
		bore M for N seconds;
		FavourUp M;
		if M is in the location of the player and M is awake:
			say SatisfiedFlav of M;
			progress quest of nice-quest;
	otherwise:
		bore M for N seconds. [We still want to dislodge etc. even if they weren't interested for some reason.]

To get creampie image of (M - a royal guard) in (F - a fuckhole):
	if the reaction of the player is 0 or lady fetish is 1, cutshow figure of guard cutscene 5 for M;
	otherwise cutshow figure of guard cutscene 6 for M;

To compute post climax effect of (M - a royal guard) in (F - a fuckhole):
	compute M sleeping 200 after sex;
	FavourUp M;
	reset submissive wenches.

To decide if (M - a royal guard) is willing to creampie (F - a fuckhole):
	if tutorial is 1, decide yes;
	if class of the player is princess:
		if the reaction of the player is 2 or M is not bride-consort, decide no;
	if the reaction of the player is 2, decide no;
	if F is vagina and the player is a pussy slut, decide yes;
	if F is asshole and the player is a butt slut, decide yes;
	if the favour of M >= 20 - the saved appearance of the player, decide yes;[He thinks of you as a whore, but he'd rather not drop one in your pussy. Expect a creampie if you're really attractive]
	decide no.

To say MessyPullOutFlav of (M - a royal guard) in (F - a fuckhole):
	say "[one of][BigNameDesc of M] roars with pleasure, barely pulling out as [he of M] explodes, blasting your crotch with thick, creamy [semen].[or][BigNameDesc of M] grunts, [DickDesc of M] throbbing powerfully as [he of M] pulls out and douses your crotch with fresh, warm [semen].[at random] [if the semen addiction of the player < 7]You breathe a small sigh of relief as [he of M] slumps over, asleep.[otherwise if the semen addiction of the player < 12]You blink a couple times, glancing over your shoulder as [he of M] slumps over, asleep.[otherwise]You grumble in disappointment as [he of M] slumps over and falls asleep.[end if]".

To say PullOutFlav of (M - a royal guard) in (F - a fuckhole):
	say "[one of][BigNameDesc of M] roars with pleasure, barely pulling out as [he of M] explodes, spraying [semen] all over the ground.[or][BigNameDesc of M] grunts, [DickDesc of M] throbbing powerfully as [he of M] pulls out and douses the ground with fresh, warm [semen].[at random] [if the semen addiction of the player < 7]You breathe a small sigh of relief as [he of M] slumps over, asleep.[otherwise if the semen addiction of the player < 12]You blink a couple times, glancing over your shoulder as [he of M] slumps over, asleep.[otherwise]You grumble in disappointment as [he of M] slumps over and falls asleep.[end if]".

To decide which number is the condom resistance of (M - a royal guard):
	if M is mating, decide on 6;[You're married, of course he's going in raw!]
	if the class of the player is cheerleader, decide on -2;
	let R be 0;
	repeat with W running through wenches in the location of M:
		if the guard-obedience of W > 0, increase R by 2;
	decide on R.

To say CondomRejectFlav of (M - a royal guard):
	let R be 0;
	repeat with W running through wenches in the location of the player:
		if the guard-obedience of W is 1 and R is 0:
			say "The [W] rips the condom out of your hand and tears it in half! [BigNameDesc of M] grins[if M is seduced].[otherwise]. Looks like [he of M][']s going in bare...[end if]";
			now R is 1;
	if R is 0, say "[BigNameDesc of M] [one of]scoffs[or]frowns[or]rolls [his of M] eyes[at random], and ignores your suggestion[if M is seduced].[otherwise]. Looks like [he of M][']s going in bare...[end if]".

To say CondomPieFlav of (M - a royal guard) in (F - a fuckhole):
	say "[BigNameDesc of M] grunts and tightens [his of M] grip, causing you to [if the semen addiction of the player < 5]whimper uncomfortably[otherwise if the semen addiction of the player < 11]gasp quietly[otherwise]coo happily[end if] as [he of M] fills [one of]the condom's reservoir tip[or]the end of the condom[or]the condom[in random order] with wave after wave of [semen]. You feel a pocket of [one of]warm liquid[or]warmth[in random order] slip out of you as [he of M] pulls out and immediately falls asleep.".

To decide if (M - a royal guard) is losing wrapper in (F - a fuckhole):
	if the player is getting unlucky, decide yes;
	decide no.

To compute condom failure of (M - a royal guard) in (F - a fuckhole):
	get condom failure image of M in F;
	say CondomFailFlav of M in F;
	say GotUnluckyFlav;
	now M is unwrapped;
	if F is asshole, AssFill 1;
	otherwise PussyFill 1;
	say CreampieReactionFlav to M in F.

To say CondomFailFlav of (M - a royal guard) in (F - a fuckhole):
	say "[BigNameDesc of M] grunts and tightens [his of M] grip, causing you to [if the semen addiction of the player < 4]whimper uncomfortably[otherwise if the semen addiction of the player < 11]gasp quietly[otherwise]coo happily[end if] as [he of M] fills the condom's reservoir tip with wave after wave of [semen]. The pocket of warm liquid shifts inside you as [he of M] begins to pull out, and you realise the condom is starting to come off.[line break][variable custom style]'[one of]Wait, wait-!'[or]Hey, the condom-!'[or]Wait, the condom is-!'[in random order][roman type][line break][big he of M] doesn't respond, and you feel a faint trickle of wetness spreading out inside your [variable F] as [he of M] slumps over and passes out. You look down to see the condom hanging half-on, half-off [his of M] softening [DickDesc of M].";

To say CreampieFlav of (M - a royal guard) in (F - a fuckhole):
	if tutorial is 1:
		say "[BigNameDesc of M] roars with pleasure, tightening [his of M] grip as warm [semen] begins flowing inside of you. [big he of M] continues fucking you until [his of M] [if M is a balls-haver]balls have[otherwise]load has[end if] been thoroughly and completely emptied into your [variable F]. You feel [his of M] hands leave your hips as [he of M] pulls out and sighs contently.";
	otherwise:
		say "[one of][BigNameDesc of M] roars with pleasure, tightening [his of M] grip as warm [semen] begins flowing inside of you. [big he of M] continues fucking you until [his of M] [if M is a balls-haver]balls have[otherwise]load has[end if] been thoroughly and completely emptied into your [variable F]. You feel [his of M] hands leave your hips as [he of M] pulls out and falls over, asleep.[or][BigNameDesc of M] grunts, [his of M] [DickDesc of M] throbbing as [he of M] unloads [if M is a balls-haver][his of M] balls [end if]into your [variable F]. [big he of M] sighs in satisfaction, roughly shoving you off [his of M] [DickDesc of M] before slumping over, asleep.[or][if the semen addiction of the player < 7][BigNameDesc of M] tightens [his of M] grip and begins grunting in pleasure. You shudder and look over your shoulder as [semen] flows into your [variable F]. [big he of M] releases your hips, allowing you to crawl away in shame as [he of M] slumps over, asleep.[otherwise if the semen addiction of the player < 15][BigNameDesc of M] tightens [his of M] grip and begins grunting in pleasure. You gasp and look over your shoulder as [semen] flows into your [variable F]. [big he of M] releases your hips, thrusting a few more times before pulling out and falling asleep.[otherwise][BigNameDesc of M] tightens [his of M] grip and begins grunting in pleasure. You look over your shoulder and grin as [semen] flows into your [variable F]. [big he of M] releases your hips, allowing you to milk [his of M] [DickDesc of M] down to the last drop before pulling out and falling asleep.[end if][or][if the semen addiction of the player < 7][BigNameDesc of M] grunts and tightens [his of M] grip. You whimper as [his of M] [DickDesc of M] pumps wave after wave of [semen] directly into your [variable F]. [big his of M] hands leave your hips as [he of M] pulls out and immediately falls asleep.[otherwise if the semen addiction of the player < 11][BigNameDesc of M] grunts and tightens [his of M] grip. You sigh quietly as [his of M] [DickDesc of M] pumps wave after wave of [semen] directly into your [variable F]. [big his of M] hands leave your hips as [he of M] pulls out and immediately falls asleep.[otherwise][BigNameDesc of M] grunts and tightens [his of M] grip. You coo happily as [his of M] [DickDesc of M] pumps wave after wave of [semen] directly into your [variable F]. [big his of M] hands leave your hips as [he of M] pulls out and immediately falls asleep.[end if][at random]".

The latex punishment rule of a royal guard is usually the no latex punishment rule.

To compute the dildo stuck taunting of (M - a royal guard):
	now the chosen-orifice of M is nothing;
	if doll-stuck-num > 0:[The guard can hardly run in orbit and fuck you while you're turning on the dildo]
		say "The expression of the [printed name of M] as [he of M] watches you turning, [i]shafted,[/i] makes you burn in humiliation. You see [him of M] notice your reaction, and smirk, openly.[line break]";
	otherwise if the player is not monster fucked and the player is possessing a vagina:
		let F be a random fuckhole;
		repeat with D running through dildo traps penetrating a fuckhole:
			now F is a random fuckhole penetrated by D;
			now chosen-orifice of M is asshole;
			if F is asshole, now chosen-orifice of M is vagina;
		if the chosen-orifice of M is asshole and the player is not ass protected:
			say "Taking advantage of your humiliating situation, [NameDesc of M][one of] whips out [his of M] [DickDesc of M] and [or], [stopping]pulling apart your ass cheeks, forces [his of M] [DickDesc of M] into your [asshole]! [big he of M] grabs your hips tightly to hold you still as [he of M] fucks you. You're being double penetrated!";
			now M is penetrating asshole;
			ruin asshole;
		otherwise if the chosen-orifice of M is vagina and the player is not pussy protected:
			say "Taking advantage of your humiliating situation, [NameDesc of M][one of] whips out [his of M] [DickDesc of M], and [or], [stopping]holding your legs apart, sticks [his of M] [DickDesc of M] in your [vagina]! [big his of M] [DickDesc of M] slides right in! [big he of M] grabs your thighs tightly to hold you still as [he of M] fucks you. You're being double penetrated!";
			now M is penetrating vagina;
			ruin vagina;
		otherwise:
			say "Taking advantage of your humiliating situation, [NameDesc of M] bounces you up and down on the dildo pole, laughing at your wails of protest[one of], intent on properly ruining your [variable F][or][stopping]!";
			ruin F;
			if a random number between 1 and 2 is 1, satisfy M;
	if the chosen-orifice of M is not a fuckhole:
		say "[BigNameDesc of M] watches you with some amusement.".

The royal guard unique punishment rules is a rulebook. The unique punishment rule of a royal guard is usually the royal guard unique punishment rules.

To compute (M - a royal guard) punishing a criminal:
	let A be a random off-stage pair of anklecuffs;
	let H be a random off-stage pair of handcuffs;
	if A is actually summonable and a random number between 1 and 2 is 1:
		say "The guard pulls out a pair of ankle cuffs, and binds your ankles together![line break][bold type]You are now ankle bound.[roman type][line break]";
		summon A locked;
	otherwise if H is actually summonable:
		say "The guard pulls out a pair of handcuffs and binds your wrists together![line break][bold type]Your wrists are now bound behind you.[roman type][line break]";
		summon H locked;
		now H is wrist-bound-behind;
	otherwise if A is actually summonable:
		say "The guard pulls out a pair of ankle cuffs, binding your ankles together![line break][bold type]You are now ankle bound.[roman type][line break]";
		summon A locked;
	otherwise:
		say "The guard looks at the shopkeeper.[line break]".

This is the royal guard punishing a criminal rule:
	let M be current-monster;
	let S be shopkeeper;
	if there is stolen clothing and S is unfriendly and milking is 0 and S is in the location of M:
		say "[speech style of M]'We need to teach you that crime doesn't pay.'[roman type][line break]";
		compute M punishing a criminal;
		say "[speech style of M]'Do what you want with [him of the player].'[roman type][line break]";
		if S is not interested, check guaranteed perception of S;
		repeat with R running through royal guards in the location of M:
			satisfy R;
		rule succeeds.
The royal guard punishing a criminal rule is listed first in the royal guard unique punishment rules.

This is the royal guard arresting a criminal rule:
	let M be current-monster;
	if shopkeeper is unfriendly and milking is 0 and shopkeeper is alive and shopkeeper is not in the location of the player:
		unless there is a monster penetrating a body part:[if there's a monster fucking you, he waits for his chance to put you under arrest]
			drag to Dungeon41 by M;
		rule succeeds.
The royal guard arresting a criminal rule is listed last in the royal guard unique punishment rules.

[TODO: any submissive wenches get dragged along with you.]
This is the royal guard incarcerating a criminal rule:
	let M be current-monster;
	if the number of barriers in the location of the player is 0 and Dungeon03 is placed:
		if M is prison guard and the class of the player is not princess: [the prison guard always takes you to the cell]
			if milking is 0 and the player is not at least partially monster stuck and the location of the player is not Dungeon41:[if you're busy, he'll wait.]
				if the location of the player is not Dungeon03:
					drag to Dungeon03 by M;
					if (tentacle fetish is 0 or inhuman pregnancy < 2) and gymnast-explorer is summon-available and gymnast-explorer is off-stage:
						set up gymnast-explorer;
						now gymnast-explorer is in Dungeon03;
						now the sleep of gymnast-explorer is 250;
						say "There is a [man of gymnast-explorer] sleeping on the ground here. [UniqueMonsterDesc of gymnast-explorer]It's unclear if [he of gymnast-explorer] was being kept prisoner here or if [he of gymnast-explorer] just chose a rather controversial place to take a nap.";
						focus-consider gymnast-explorer;
				repeat with G running through alive royal guards:
					unless G is M or the boredom of G >= 300 or G is defeated or G is asleep:
						now G is in Dungeon03;
						now G is interested;
						anger G;
						make G expectant;
				let N be the number of royal guards in Dungeon03;
				if N < the number of monsters in Dungeon03:
					repeat with X running through monsters in Dungeon03:
						unless X is royal guard:
							if the sleep of X > 0:
								say "[BigNameDesc of X] is rudely kicked awake!";
								now the sleep of X is 0;
					say "[speech style of M]'Civilians disperse. From here on out, this criminal is in the hands of the law.'[roman type][line break][BigNameDesc of M] keeps you firmly pinned to the ground as [if N > 2]the other guards herd the 'civilians' [otherwise if N > 1][his of M] partner herds the 'civilians'[otherwise][he of M] shoos the 'civilians'[end if] out of the room.[line break][speech style of M]'Your crime spree ends here, villain. You have been sentenced to [if diaper quest is 1]forced babification[otherwise]ten minutes of community service[end if].'[roman type][line break][BigNameDesc of M] [if N is 1]throws you into the cell, following you in and locking the door behind [him of M][otherwise if N > 2]drags you into the cell as the rest of the guards follow you in and lock the door behind them[otherwise]the other guard follows you in and locks the door behind [him of M][end if].";
					repeat with X running through monsters in the location of the player:
						unless X is royal guard, compute mandatory room leaving of X;
				otherwise:
					say "[speech style of M]'Your crime spree ends here, villain. You have been sentenced to [if diaper quest is 1]forced babification[otherwise]ten minutes of community service[end if].'[roman type][line break][BigNameDesc of M] [if N is 1]throws you into the cell, following you in and locking the door behind [him of M][otherwise if N > 2]drags you into the cell as the rest of the guards follow you in and lock the door behind them[otherwise]the other guard follows you in and locks the door behind [him of M][end if].";
				anger M; [just to make sure nothing weird is going on]
				now prison-bars is in the location of the player;
			rule succeeds.
The royal guard incarcerating a criminal rule is listed last in the royal guard unique punishment rules.

This is the prison guard getting past chastity rule:
	if current-monster is prison guard:
		if Chastity-Belt is currently uncovered and Chastity-Belt is locked:
			say "[speech style of current-monster]'This can't stop me.'[roman type][line break][BigNameDesc of current-monster] pulls out a special key, and with a sly grin, unlocks your chastity belt, and removes it![if the vaginalvirgin of the player is 1][line break][variable custom style]Wait WHAT?! [big he of current-monster] had the key to my belt?! But that means... there's nothing stopping [him of current-monster] from...[roman type][line break]";
			now current-monster is carrying Chastity-Belt;
			now Chastity-Belt is temporarily-removed;
			now the chosen-orifice of current-monster is vagina;
			rule succeeds.
The prison guard getting past chastity rule is listed last in the royal guard unique punishment rules.

To say DragFlav of (M - a royal guard) to (R - a room):
	say "[BigNameDesc of M] drags you [if the distance of R > 1]all the way [end if]to the [R]![one of][line break][speech style of M]'You are under arrest! Do not struggle.'[roman type][line break][or][stopping]".

To say BreastsPenetrationFlav of (M - a royal guard):
	say "[BigNameDesc of M] takes [his of M] [DickDesc of M] and moves it towards your chest. You watch in silence as he pushes forward, using the tight gap in between your boobs as a makeshift fuckhole. [if the titfuck addiction of the player < 5]You hold your body still and try to ignore the brutish grunts as [he of M] begins to thrust in and out of your [BreastDesc][otherwise]You instinctively bring your hands to your [BreastDesc], and begin to massage [his of M] [DickDesc of M] by moving them up and down with your hands as fast and powerfully as you can[end if].".

To compute cleavage climax of (M - a royal guard):
	TimesSubmittedUp M by 1;
	if M is unfriendly or (M is not prison guard and the class of the player is not princess):
		say "[BigNameDesc of M] [if M is wrapped]rips the condom off of [his of M] [manly-penis] as [he of M] [end if]climaxes, spraying [his of M] [semen] all over your tits.";
		AnnouncedSquirt semen on breasts by the semen load of M;
		say "[speech style of M]'Ahem! Yes, that was quite satisfactory. Run along now, [if the class of the player is royal slave]slave[otherwise if the class of the player is princess]my highness[otherwise]peasant[end if].'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] [if M is wrapped]rips the condom off of [his of M] [manly-penis] and [end if]groans with pleasure as [he of M] reaches an explosive climax, spraying thick white [semen] all over your tits.";
	BreastsSensitivityUp 1;
	orgasm satisfy M.

To compute happy reward of (M - a royal guard):
	if M is friendly-fucking:
		if the class of the player is princess, FavourUp M by 1; [If you keep your guards satisfied, they won't decide to take matters into their own hands.]
		if M is prison guard and M is buddy and ((there is worn locked clothing and M is awake) or skeleton key is off-stage):
			if M is asleep:
				now skeleton key is in the location of the player;
				say "As [NameDesc of M] rolls over in [his of M] sleep, a [skeleton key] falls out of [his of M] pocket onto the ground.";
				compute autotaking skeleton key;
			otherwise:
				let L be a random worn locked clothing;
				if L is clothing:
					say "[speech style of M]'I guess I probably won't get in too much trouble for letting you out a little early...'[roman type][line break][big he of M] takes [his of M] key and unlocks your [ShortDesc of L] for you.[speech style of M]'Just don't tell anyone I did that.'[roman type][line break]";
					now L is unlocked;
				otherwise:
					say "[speech style of M]'I guess you can have this, as long as nobody finds out.'[roman type][line break]";
					now skeleton key is in the location of the player;
					say "[big he of M] subtly drops a [skeleton key] on the ground.";
					compute autotaking skeleton key;
				check black lace transformation;
		otherwise if M is penetrating breasts:
			say "[big he of M] pulls out a handkerchief as [his of M] cock softens, [his of M] breathing still heavy as [he of M] wipes the creamy remnants of [his of M] load from your cleavage.[line break][speech style of M]'[if the class of the player is princess]It was an honour to be your consort, my liege. I will serve you any time[otherwise]I appreciate your service. Now go in peace[end if].'[roman type][line break]";
			now the semen coating of breasts is 0;
		otherwise if M is penetrating face:
			say "[speech style of M][if the class of the player is princess]'Thank you, your highness. I will fight for you to the very end!'[otherwise]'As expected, the [whore] makes a good cocksucker.'[end if][roman type][line break]";
			if the class of the player is princess, now the blue-balls of M is -1. [negative score here means he will fight harder for you. even against other guards.]

To say TwosomePrep of (M - a royal guard) in (F - asshole):
	if the latex-transformation of the player > 6:
		say "[BigNameDesc of M] folds you over at the waist, your rubbery body finding it extremely easy to remain in what would usually be an awkward position. Your arms hang limp in front of you.";
	otherwise if M is mating:
		say "[BigNameDesc of M] smiles, gently pulling your hips up against [his of M] body. [big he of M] placing [his of M] hard length between your cheeks, gently rubbing your belly as [his of M] hand moves to your waist.[line break][speech style of M][one of]'Be still, my wife. It is time for you to perform your marital duties.'[or]'[big please] be still, my wife, I do not want to hurt you.'[or]'Be still, I do not want to see you hurt.'[in random order][roman type][line break]";
	otherwise if the class of the player is princess:
		say "[BigNameDesc of M] shoves you face down and pulls your hips up against [his of M] body. [big he of M] pauses to gently rub your back as [he of M] uses one hand to push apart your [AssDesc].";
		if the last-interaction of M is 0, say "[speech style of M]'[one of]Be still, my lady. I don't want to hurt you any more than I need to.'[or]I apologise my princess, but this is for your own good.'[or]I admit that I have been looking forward to this moment.'[in random order][roman type][line break]";
	otherwise if the class of the player is royal slave:
		say "[BigNameDesc of M] roughly shoves you face down and pulls your hips up against [his of M] body. [one of][big he of M] chuckles to [himself of M] as [he of M] uses one hand to spread your cheeks[or][big he of M] rests [his of M] length between your cheeks as [he of M] grabs hold of your waist.[at random]";
		if the last-interaction of M is 0, say "[speech style of M]'[one of]Be still, wench. It is your duty to serve me.'[or]You are lucky I am so merciful, slave.'[or]Prepare to be shamed, slave.'[in random order][roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] shoves you face down and pulls your hips up against [his of M] body. [big he of M] smacks your [AssDesc] with one hand, placing [his of M] length between your cheeks as [he of M] grabs hold of your waist.";
		if the last-interaction of M is 0, say "[speech style of M]'[one of]I know your name, and I am not afraid to hurt you.'[or]Stay where you are, or I might have to hurt you.'[or]Do not try to escape, [NameBimbo].'[or]I punish you in the princess's name!'[in random order][roman type][line break]".

To say VaginalVirginityTaunt of (M - a royal guard):
	if the class of the player is princess:
		say "[line break][speech style of M]'[one of]I am honoured, princess.'[or]Princess, I-... I'm honoured.'[or]Princess, I will never forget this privilege.'[at random][roman type][line break]";
		FavourUp M.

To get vaginal penetration image for (M - a royal guard):
	let N be a random monster penetrating asshole;
	if N is not monster:
		if the latex-transformation of the player > 6:
			cutshow figure of latex curse 5 for M;
		otherwise if M is not mating:
			cutshow figure of guard cutscene 2 for M.

To say TwosomePrep of (M - a royal guard) in (F - vagina):
	if the latex-transformation of the player > 6:
		say "[BigNameDesc of M] lays you down on your back, your rubbery body practically weightless in his hands as he pulls your [vagina] towards his [DickDesc of M] by your shapely hips.";
	otherwise if M is mating:
		say "[BigNameDesc of M] smiles, gently pushing you face down onto the floor and pulling your hips up against [his of M] body. [big he of M] rubs your belly with one hand, placing [his of M] hard length between your cheeks.[line break][speech style of M][one of]'Be still, my wife. It is time for you to perform your marital duties.'[or]'[big please] be still, my wife, it is time for us to make another child.'[in random order][roman type][line break]";
	otherwise if the class of the player is princess:
		say "[BigNameDesc of M] laughs as [he of M] pulls your hips into [his of M] lap, being careful not to hurt you. You can feel the base of [his of M] hard shaft between your pussy lips, throbbing gently as [he of M] massages your [MediumDesc of hips] with one hand.";
	otherwise if the class of the player is royal slave:
		say "[BigNameDesc of M] laughs, roughly shoving you to the ground and dragging your hips into [his of M] lap. The shape of [his of M] hardness is clear and apparent against your [vagina], throbbing excitedly as [he of M] swats your [AssDesc] with one hand.";
	otherwise:
		say "[BigNameDesc of M] laughs, shoving you to the ground and pulling your hips into [his of M] lap. You can feel the shape of [his of M] [DickDesc of M] against your [vagina] as [he of M] squeezes your [AssDesc] with one hand.".

To say ThreesomePrep of (M - a royal guard) with (N - a royal guard) in (F - vagina):[Does this monster have something unique for double penetration, or do N and M interact in a special way? override this function]
	say "[if there is a monster penetrating face]The [N] links [his of M] arms around your waist, pulling you off the floor. [big he of M] continues thrusting as [NameDesc of M] kneels down in front of you, brandishing a stiff, hard [DickDesc of M].[otherwise]The [N] links [his of M] arms around your waist, pulling you over onto [his of M] stomach. [big his of M] hands migrate to your [BreastDesc] as [NameDesc of M] climbs on top of you, [his of M] [DickDesc of M] poised to enter your unguarded hole.[end if]".

[TODO: guard foursome, possibly]

To compute angry punishment of (M - a royal guard):[Royal guards will always punish you if you struggle, unless you're a princess.]
	if the class of the player is not princess:
		say angry punishment insult of M;
		if M is not friendly-fucking and (M is not seduced or M is unfriendly):
			if bondage protection < 2 and bondage-corset is off-stage and bondage-corset is actually summonable:
				summon bondage-corset uncursed;
				say "[BigNameDesc of M] makes you wear a [bondage-corset]!";
				let K be a random off-stage specific-key;
				compute M locking bondage-corset with K;
			otherwise:
				compute default angry punishment of M.

To say angry punishment insult of (M - a royal guard):
	say "[speech style of M][one of]'How dare you! This will not go unpunished!'[or]'Ungrateful wench! You will learn to value my mercy!'[or]'You ungrateful slut!'[or]'Do not believe for a moment that this will go unpunished!'[or]'Shameful whore! You will learn to respect my mercy!'[or]'Disrespectful harlot!'[in random order][roman type][line break]".

To say angry punishment accessory confiscation of (M - a royal guard):
	say "[speech style of M]'I am confiscating this, and you shall not be seeing it again. I will go spend it on a good girl who can actually follow orders.'[roman type][line break]".

To say angry punishment clothing destruction of (M - a royal guard) on (C - a clothing):
	say "[speech style of M]'[if C is actually breast covering and the largeness of breasts > 3]You don't deserve to have your slutty tits covered by this.'[otherwise if C is ass covering]Display your [fuckholes] to everyone, like the true whore you are.'[otherwise if the number of worn nudism-disabling clothing > 1]Disgraceful wenches don't deserve clothes! There, now you are one step closer to being buck naked, as you should be.'[otherwise]Disgraceful wenches don't deserve clothes!'[end if][roman type][line break]".

To say (M - a royal guard) sex reaction:
	let F be a random fuckhole penetrated by M;
	if the reaction of the player is 2:
		say "[speech style of M][one of]'As long as you are obedient, you have nothing to fear from me.'[or]'Do not be afraid. As long as you remain obedient, I will be gentle.'[or]'Do not worry. As long as you are obedient I will be gentle.'[or]'Fear not! Be obedient and you are safe.'[or]'There is nothing to fear. Unless you decide not to follow my orders.'[in random order]";
	otherwise:
		say "[variable custom style]";
		if the player is not able to speak:
			say "[one of][if the relevant sex addiction of M < 8]It's even worse because I can't say no![otherwise if the relevant sex addiction of M < 12]I can't say no, but do I want to?[otherwise]It's so hot when I can't say no![end if][or][if the relevant sex addiction of M < 8]It's even more humiliating because I can't say no.[otherwise if the relevant sex addiction of M < 12][big he of M]'d listen to me if I was able to speak. Right?[otherwise]I love it when I can't say no![end if][or][if the relevant sex addiction of M < 8]I can't even call for help...[otherwise if the relevant sex addiction of M < 12]'MMMPH! MMhhmmMMPH!'[otherwise]It's even better because I can't say no![end if][at random]";
		otherwise if the openness of F < the girth of M - (a random number between 1 and 3):
			say "[one of][if the relevant sex addiction of M < 8]'You're too big!'[otherwise if the relevant sex addiction of M < 12][big he of M]'s so big![otherwise]'Hee hee! You're SO big!'[end if][or][if the relevant sex addiction of M < 8]Why does [he of M] have to be so big?[otherwise if the relevant sex addiction of M < 12]'It's too big, I can't handle it.'[otherwise]Mmm! Loosen me up, stud![end if][or][if the relevant sex addiction of M < 8]Why couldn't [he of M] be smaller?[otherwise if the relevant sex addiction of M < 12]I can feel myself getting stretched.[otherwise]'Yeah! TEAR ME UP!'[end if][at random]";
		otherwise if the player is gendered male:
			if the relevant sex addiction of M < 8:
				say "[one of]This feels so weird![or]'I'm not a chick! You don't have to be so rough!'[or][big he of M]'s treating me like a chick! [if M is friendly-fucking]I guess I was asking for it...[otherwise]What the fuck![end if][or]My [player-penis] feels weird.[in random order]";
			otherwise if the relevant sex addiction of M < 12:
				say "[one of]Is there a difference between me and a woman at this point?[or][if size of penis is less than 3]How can I feel so hard when it's so small?[otherwise]I'm so hard...[end if][or]'Oh! That felt good!'[or][if size of penis is less than 3]I'm so hard... but at least I'm so small, probably no one could even tell![otherwise]Why am I hard at a time like this?[end if][in random order]";
			otherwise:
				say "[one of][big he of M]'s hitting my G-spot! Teehee![or]'Make me jizz all over the floor!'[or]'Harder! I want to hands-free cum!'[in random order]";
		otherwise if the relevant sex addiction of M < 8:
			say "[one of]'Ow ow ow!'[or]'Shit!'[or][first custom style]'Slow down! I'm not just your fucktoy!'[or]It's like [he of M] doesn't care what I think at all![or][big he of M]'s using me like some sort of cheap floozy![or]This is insane![or]This feels so wrong![or]'[if M is friendly-fucking]Be gentle![otherwise]Stop this![end if] I'm not just a hole!'[or]Please let this be over soon...[in random order]";
		otherwise if the relevant sex addiction of the player < 12:
			say "[one of]It feels good. That's not my fault.[or]I know I shouldn't be enjoying this, but...[or]Why does it have to feel so good?[or]If I have to have sex, it might as well be with someone who does it right.[or]I wonder if [he of M]'ll cum a lot.[or]It actually feels kind of good.[or]I never realised sex could feel this good![or]I'm actually not sure if I want this to end.[in random order]";
		otherwise:
			say "[one of]Uh-oh, looks like I'm trapped! Teehee![or]I can't get away! Uh-ooooh![or]'Oooh!'[or]'Aaah!'[or]'Aah! Aah! Aah!'[or]'I'm having so much fun!'[or]'Oooh shiiiit!'[or]'Yeah! Fuck me!'[or]'Don't stop! It feels so good!'[or]'Wear me out, stud!'[or]'Fuckme! Fuckme! Fuckme!'[or]I want this to last FOREVER![or]Use me, stud!'[or]'Use me like the dirty slut I am!'[or]'Faster, stud, faster!'[or]'This feels SO right.'[then purely at random]";
	say "[roman type][line break]".

Chapter 2 - DQ

The royal guard diaper quest rules is a rulebook. [The diaper quest rules of a royal guard is usually the royal guard diaper quest rules.]

Definition: a royal guard is willing to donate diapers: decide yes.

Definition: a royal guard is willing to double diapers: decide yes.
Definition: a royal guard is double diaper locking: decide yes.

Definition: a royal guard is willing to change diapers: decide yes.

Definition: a royal guard (called M) is eager to change diapers:
	if M is changing the player, decide yes;
	if there is worn messed knickers and diaper messing is 3 and diaperSceneHandled is 0, decide yes;
	if the health of M < the maxhealth of M, decide no; [He won't change you if you have fought back]
	if M is aware that the player needs a change, decide yes;
	decide no.

Definition: a royal guard is diaper disciplining: decide yes.

Definition: a royal guard is willing to spank: decide yes.

Definition: a royal guard is willing to masturbate: decide yes.

Definition: a royal guard is willing to deliver enemas: decide yes.

Definition: a royal guard is willing to forcefeed: decide yes.

Definition: a royal guard is willing to forcefeed pills: decide yes.

Definition: a royal guard is willing to confiscate: decide yes.

Definition: a royal guard is willing to punish untidiness: decide yes.

Definition: a royal guard is eager to donate babywear:
	if there is a worn diaper and purple-baby-reins is off-stage and purple-baby-reins is actually summonable, decide yes;
	decide no.

To compute babywear donation of (M - a royal guard):
	say "[speech style of M]'This will keep you under control until your sentence is over.'[roman type][line break]";
	say "[BigNameDesc of M] straps a [MediumDesc of purple-baby-reins] over your body and diaper!";
	summon purple-baby-reins locked;
	say FullExamineDesc of purple-baby-reins;
	say BabywearDonationReaction of M on purple-baby-reins;
	say "[speech style of M]'Be a well-behaved convict for us, and we'll let you out soon enough.'[roman type][line break]";
	satisfy M.

guard-spanking-session is a diaper punishment. The priority of guard-spanking-session is 5.

Definition: guard-spanking-session (called P) is appropriate:
	if current-monster is royal guard and current-monster is willing to spank and current-monster is eager to spank:
		repeat with M running through adult baby slaves in the location of the player:
			if the guard-obedience of M is 1, decide yes;
	decide no.

To compute punishment of (P - guard-spanking-session):
	compute spanking of current-monster.

guard-incarceration is a diaper punishment. The priority of guard-incarceration is 5.

Definition: guard-incarceration (called P) is appropriate:
	if current-monster is royal guard and the number of barriers in the location of the player is 0 and Dungeon03 is placed and (current-monster is prison guard or (shopkeeper is off-stage and shopkeeper is unfriendly)), decide yes;
	decide no.

To compute punishment of (P - guard-incarceration):
	follow the royal guard incarcerating a criminal rule.

To say DiaperChangeStart of (M - a royal guard):
	say "[BigNameDesc of M] rolls you onto your back and pins you down with one strong arm.[line break][speech style of M]'[if there is a worn diaper]Okay, let's get you out of this thing...'[otherwise][one of]This is the law of the land. Once it has been decided that you are unable to act like an adult, you are to be kept in diapers until such a time as I deem it appropriate to return you to adult status.'[or]Your name is still on the Young Offenders List, girl. You will be kept in nappies until that changes.'[stopping][end if][roman type][line break]".

To say DQChangeResistReactionFlav of (M - a royal guard):
	say "[BigNameDesc of M] growls at your attempts to resist [him of M].[line break][speech style of M]'[one of]Leave it to someone as childish as you to be so ungrateful as to throw a tantrum while being cleaned.'[or]At this point I'm changing you for the benefit of my [men of a random patron], you have proven that you belong in sagging linens.'[or][if there is a worn messed knickers]Is this your grand plan? Don't worry, I have enough baby wipes to subdue the mess you're making[otherwise]Hah, your resistance would be comedic if you weren't making such a mess, now hold still[end if]!'[in random order][roman type][line break]".

To say DQSpankResistReactionFlav of (M - a royal guard):
	say "[BigNameDesc of M] growls at your attempts to resist [him of M].[line break][speech style of M]'[one of]Knock it off baby, tantrums are NOT part of your training.'[or]It's clear tuckering you out for nap time will be an unending chore for me.'[or][if the player is diapered]Maybe a thicker diaper will make you more lethargic for punishments like this.'[otherwise]Did I say to fight me?'[end if][or]You're only proving why you need a hard spanking, you child!'[in random order][roman type][line break]".

To say SpankingAfterFlav of (M - a royal guard):
	say "[BigNameDesc of M][']s expression becomes more neutral.[line break][speech style of M]'That will do for now. I hope [if the health of M < the maxhealth of M]you've learned your lesson about fighting back[otherwise]you understand why I had to do that. You need reminding who's in charge[end if].'[roman type][line break]";
	reset submissive wenches.

To say DQMasturbationResistReactionFlav of (M - a royal guard):
	say "[BigNameDesc of M] cackles.[line break][speech style of M]'[one of]Shall I layer more diapers to keep you from struggling? I can and will pleasure you through pillows['] worth if it will keep you still!'[or]I try to give you a discharge and this is the thanks I get? It's ungrateful fussing like this that makes my resolve to train you harder!'[or]Hold still knave, I am NOT done with you!'[or]Heh, still some fight in you? Why do you think we're here young [man of the player]?'[in random order][roman type][line break]".

This is the guard punishes diaper rule:
	let D be a random worn diaper;
	if D is total protection:
		let M be current-monster;
		let A be a random off-stage pair of anklecuffs;
		let H be a random off-stage pair of handcuffs;
		if D is messed:
			compute diaper change of M;
		otherwise if A is actually summonable and D is not messed:
			say "The guard [if diaper quest is 0]notices you wearing a diaper, and clearly decides [he of M]'d rather not rip such a humiliating item of clothing off you. [big he of M] decides instead[otherwise]decides[end if] to 'improve' your situation by pulling out a pair of ankle cuffs, and binding your ankles together![line break][bold type]You are now ankle bound.[roman type][line break]";
			summon A locked;
		otherwise if H is actually summonable and a random number between 1 and 9 > 7 and D is not messed:
			say "The guard [if diaper quest is 0]notices your situation with your diaper, and decides to not alter that predicament. [big he of M] decides instead[otherwise]decides[end if] to add to your humiliating situation by pulling out a pair of handcuffs, and binding your wrists together![line break][bold type]You are now wrist bound.[roman type][line break]";
			summon H locked;
			now H is wrist-bound-in-front;
		otherwise if the player is able to pee and the player is not bursting and face is not actually occupied:
			follow the guard forcefeeds the player rule;
		otherwise if the player is diaper focused:
			compute spanking of M;
		otherwise:
			say "The guard, who sees the diaper, appears to consider your predicament with your diaper[if there is worn ankle bond or there is worn wrist bond] and bondage[end if]. [big he of M] looks you in the eyes and shakes [his of M] head, before chuckling to [himself of M] taking pity on your helplessness.";
		if M is doing nothing special, satisfy M for 450 seconds;
		rule succeeds.
The diaper punishment rule of a royal guard is usually the guard punishes diaper rule.
The guard punishes diaper rule is listed last in the royal guard diaper quest rules.

This is the guard forcefeeds the player rule:
	if the player is able to pee and the player is not bursting and face is not actually occupied:
		let M be current-monster;
		say "The guard[if diaper quest is 0], seeing your situation with your diaper and bondage, [otherwise if the number of worn diapers is 0][one of] frowns.[line break][speech style of M]'Immature fusspots like you should stay in diapers. You don't agree? Let's see about that...'[roman type][line break][or], seemingly still unimpressed to see that you seem to think you don't need diapers, appears to have an evil thought... Uh-oh! [stopping][end if][big he of M] walks round to your front and by massaging your throat, force feeds you a drink from [his of M] water pouch until you physically can't swallow any more.[line break][speech style of M]'Uh-oh, looks like someone is going to have an accident [if there is a worn total protection diaper]in their diaper soon!'[otherwise]soon, are you sure you can make it to the toilet in time?'[end if][roman type][line break][big he of M] walks away laughing mercilessly.";
		if the stomach-liquid of the player < 11, increase the stomach-water of the player by 11 - the stomach-liquid of the player;
		increase the delayed bladder of the player by 4;
		bore M;
		FavourUp M;
		rule succeeds.
[The guard forcefeeds the player rule is listed last in the royal guard diaper quest rules.]

To say DQFeedingResistReactionFlav of (M - a royal guard):
	say "[speech style of M]'[one of]Tch, this the thanks I get for feeding you?'[or]Keep still knave, the only thing you're succeeding in doing is making QUITE the mess!'[or]I have no intent of letting you go until you feel the burning humiliation of a burping!'[in random order]".

To say honey of (M - a royal guard):
	say "[child of M]".

To say DiaperCheckResultsDryForNowFlav of (M - a royal guard):
	say "[speech style of M]'Oh, not wet at all! [one of]Aha, was diapering you a mistake? Or is the real mistake still swirling in your [if diaper messing < 3]bladder[otherwise]stomach[end if]? We shall see[or]Was this a fluke, I wonder? You haven't completely proven yourself to me yet[or]Did someone just change you? I can't believe you've managed to stay dry[in random order].'[roman type][line break]".

To say ForcefeedAftermath of (M - a royal guard):
	say "After you're finished, [he of M] bends you forward and pats you on the back until you involuntarily let out a loud burp. [BigNameDesc of M] releases you.".

To say ForcefeedAfterFlav of (M - a royal guard):
	say "[speech style of M]'There we go. Good [boy of the player].'[roman type][line break]".

Chapter 3 - Damage

Definition: a royal guard (called M) is damageable:
	if M is shieldblocked:
		if attack-type is 1, decide no; [The guard's shield protects him from slap attacks, but not knees or kicks]
		if attack-type > 3 and M is prison guard, decide no; [The prison guard is also protected from bombs and zapping]
	decide yes.

To compute (M - a royal guard) receiving (N - a number) damage from (X - a monster):
	say AllyDamageFlav of X on M;
	if M is shieldblocked:
		say "[BigNameDesc of M] blocks the attack!";
	otherwise:
		decrease the health of M by N;
	if N > 0, now the wrangle-bonus of M is 0.

To compute damage reaction of (M - a royal guard):
	if M is awake:
		if M is uninterested:
			say "[big he of M] growls angrily![line break][speech style of M]'What horrible manners! Let me teach you some.'[roman type][line break]";
			now the sex-length of M is a random number between 2 and 3;
		otherwise if M is friendly:
			say "The guard looks surprised, but lowers [his of M] gaze and takes an offensive stance!";
			now the sex-length of M is a random number between 2 and 3;
		otherwise:
			say DamageReaction (the health of M) of M;
			if a random number between 1 and 3 is 1, increase the sex-length of M by 1;
	otherwise:
		now the sleep of M is 0;
		now the sex-length of M is a random number between 4 and 5;
		say "[big he of M] wakes up, and angrily looks around for the cause of this rude awakening! ".

To say CombatProvokedReaction of (M - a royal guard):
	if the sleep of M > 0:
		say "[big he of M] wakes up, and angrily looks around for the cause of this rude awakening!";
	otherwise:
		if M is uninterested, say "[big he of M] growls angrily![line break][speech style of M]'What horrible manners! Let me teach you some.'[roman type][line break]";
		otherwise say "The guard looks surprised, but lowers [his of M] gaze and takes an offensive stance!";

To say DamageReactHealthy of (M - a royal guard):
	say "[BigNameDesc of M] [one of]laughs condescendingly[or]continues to shrug off your hits with mirth[at random].".

To say DamageReactDamaged of (M - a royal guard):
	say "[BigNameDesc of M][']s [one of]laughter turns menacing! It looks like the pain is encouraging [him of M][or]smile seems to grow wider with every hit[stopping]!".

To say DamageReactTired of (M - a royal guard):
	say "[one of][BigNameDesc of M] is no longer laughing, and now has a very serious face[or][BigNameDesc of M] humourlessly endures the hit[stopping].".

To say DamageReactWeak of (M - a royal guard):
	say "[BigNameDesc of M] grunts as [he of M] fights to maintain [his of M] balance.".

To say DamageReactSubmissive of (M - a royal guard):
	say "[BigNameDesc of M] grunts as [he of M] fights to keep [his of M] balance, staring at your crotch with a crest-fallen look in [his of M] eyes.".[He was so sure he was going to get to punish you. :(]

To compute tax return of (M - a royal guard):
	if M is prison guard and skeleton key is not held:
		now skeleton key is in the location of the player;
		compute loot dropping of skeleton key by M;
		increase the loot dropped of M by 1;
		compute autotaking skeleton key;
		say TaxReturnDismay of M;
	otherwise:
		compute default tax return of M;
	if the class of the player is princess:
		calm M;
		FavourUp M.

To compute loot dropping of (X - a thing) by (M - a royal guard):
	say "[BigNameDesc of M] reaches for [his of M] [ShortDesc of X] and detaches it from [his of M] clothes.".

To say TaxReturnDismay of (M - a royal guard):
	say "[speech style of M]'[if the class of the player is princess][big please] accept this gift as a token of apology for my... transgressions, Princess.'[otherwise]To think that you would make a mockery of the Princess's law. This shall not be forgotten.'[end if][roman type][line break]".

To say PityOfferResponse of (M - a royal guard):
	if M is friendly, say "[speech style of M]'[if the class of the player is princess]I humbly apologise, my Princess. I'm not sure what came over me[otherwise]Hmph. I guess your sentence could be deferred, this one time[end if]...'[roman type][line break]";
	otherwise say "[speech style of M]'[if the class of the player is princess]I humbly apologise, my Princess. It was an honest mistake; you see I mistook you for a whore. Perhaps if you were to reconsider your attire, I might not make the same mistake again[otherwise]Don't think this is the end. Whores like you will be arrested on sight[end if].'[roman type][line break]".

To say BanishDemandFlav of (M - a royal guard):
	say "[variable custom style]'[if the class of the player is princess]Sir Knight, you are dismissed from your service, stripped of your titles and land, and henceforth exiled from my kingdom.'[otherwise if the player is feeling dominant]I'm the law now, bitch. And don't think I won't hesitate to put you in chains if you don't get out of my dungeon before I count to ten.'[otherwise]Please leave this dungeon before you make things even worse.'[end if][roman type][line break]".

To say BanishForceFlav of (M - a royal guard):
	say "You point towards [if Stairwell01 is discovered]the stairs[otherwise]the door[end if]. [BigNameDesc of M] looks appalled, but obeys, shuffling [his of M] feet as [he of M] leaves.[line break][speech style of M]'I am so sorry, my Princess, I have failed you and disgraced myself...'[roman type][line break]".

Definition: prison guard is permanently banishable: decide no. [This guard just keeps coming back, baby]

Part 4 - Conversation

To IdentifiablePosterReaction of (M - a royal guard):
	say "[BigNameDesc of M] looks at you, blinks, then looks back to the poster.[line break][speech style of M]'This is YOU in this image?! [if the class of the player is princess]My princess[otherwise]Good heavens[end if], [one of]you are a disgrace to this nation[or]you must atone for your antisocial behaviour[at random].'[roman type][line break]";
	say "You turn bright red with shame.";
	if M is friendly or M is uninterested:
		say "[speech style of M]'I shall administer your punishment.'[roman type][line break][BigNameDesc of M] takes an aggressive stance.";
		anger M;
		now M is interested;
		now the boredom of M is 0;
	humiliate the lewdness of a random poster in the location of the player * 2.

To UnidentifiablePosterReaction of (M - a royal guard) with (P - a poster):
	say "[speech style of M]'Hmph. How lewd.'[roman type][line break]";
	say "You turn bright red but don't say a word.";
	humiliate the lewdness of a random poster in the location of the player.

To compute FriendlySexRelease of (M - a royal guard):
	if M is willing to let go:
		say FriendlySexReleaseFlav of M;
		if the class of the player is not princess, increase the blue-balls of M by 10;
		dislodge M;
	otherwise:
		say FriendlySexReleaseRefusalFlav of M.

To say PresentFriendlyAcceptanceFlav of (M - a royal guard):
	say "[speech style of M]'[if the class of the player is princess]My liege, I would be honoured! [one of]I have dreamt about such an occurrence for years...'[or]I will handle you with care.'[stopping][otherwise][one of]Very well, I shall entertain your request. But don't expect me to treat a desperate whore like you with any respect.'[or]Is there no whore that can pretend to be civilised? I suppose I have no choice but to prevent you from taking matters into your own hands.'[stopping][end if][roman type][line break]".

To say PresentFriendlyRejectionFlav of (M - a royal guard):
	say "[speech style of M]'[if the class of the player is princess][big please] princess, allow me to first recover from my previous... [']service['].'[otherwise if presented-orifice is a potential target]Not interested.'[otherwise]I use sex as a punishment, not a reward, for whores like you. Move along.'[end if][roman type][line break]".

Definition: a royal guard (called M) is willing to let go:
	if the blue-balls of M >= the blue-balls-limit of M or the class of the player is royal slave or the player is not able to speak, decide no;
	if the bimbo of the player >= 6 and the class of the player is princess, decide no;
	decide yes.

To say FriendlySexReleaseRefusalSpeech of (M - a royal guard):
	if the class of the player is royal slave:
		say "[speech style of M]'[one of]I am not finished with you yet!'[or]You will know when I am finished, slave!'[or]It is your duty to serve me, whore!'[at random][roman type][line break]";
	otherwise if the class of the player is princess and the sex-length of M < 1:
		let F be a random body part penetrated by M;
		say "[speech style of M]'[one of]Princess, I can't hold back!'[or]Princess-!'[or]Princess, I'm-'[as decreasingly likely outcomes][roman type][line break]";
		if F is breasts, compute cleavage climax of M;
		if F is face, compute facial climax of M;
		if F is asshole, compute anal climax of M;
		if F is vagina, compute vaginal climax of M;
	otherwise if the player is not able to speak:
		say "[speech style of M]'[one of]Quiet down! I'm enjoying this![or]Stop squirming [if the class of the player is princess]princess[otherwise if the size of penis > 3]boy[otherwise]miss[end if], you will hurt yourself.'[or]I couldn't understand that, but we can talk about it when I am finished.'[at random][roman type][line break]";
	otherwise if the class of the player is princess:
		let B be a random off-stage small ballgag;
		if B is nothing, now B is a random off-stage large ballgag;
		if B is ballgag, summon B locked;
		say "[speech style of M]'[one of]My apologies, princess, but I have been waiting too long for this moment.'[or]I can't hold back now that I've had a taste of your body, my princess.'[or]Today, princess, you work for me.'[or]My apologies, princess, but I have watched you flaunt your whorish body for long enough.'[at random][roman type][line break]";
		if B is ballgag, say "[BigNameDesc of M] fishes out a ballgag and fastens it to your mouth[if the relevant sex addiction of M < 8], silencing your indignant protests[end if]. ";
		say "It doesn't seem like [he of M] intends to follow your orders anymore...";
		anger M;
		now M is not friendly-fucking;
	otherwise:
		say "[speech style of M]'[one of]This time, you finish what you started, whore!'[or]This time, we continue to the end, whore.'[or]Not this time, whore.'[at random][roman type][line break]".

To say FriendlySexReleaseFlav of (M - a royal guard):
	let F be a random body part penetrated by M;
	if the bimbo of the player < 6 and the class of the player is princess:
		say "[speech style of M]'[one of]Of course, milady.'[or]Ah, at once my liege.'[or]Mm. As you wish, princess.'[or]My apologies if I was rough, princess.'[at random][roman type][line break][BigNameDesc of M] gently removes [his of M] [DickDesc of M] from your [F].";
		[The M does not consider himself getting blue balls from this]
	otherwise:
		say "[speech style of M]'[one of]Very well, but know this. I will not be tantalised again.'[or]I will let you go this time. Do not tantalise me again in the future.[or]Fine. Do not tantalise me again, wench.'[at random][roman type][line break][BigNameDesc of M] removes [his of M] [DickDesc of M] from your [F].".

To say RewardFlav of (M - a royal guard) for (T - a thing):
	say "[speech style of M]'[if the class of the player is princess]A gift for my liege[otherwise][one of]Royal guards are not allowed to give out gifts, but... [or][stopping]Whoops, I dropped this! Clumsy me[end if].'[roman type][line break][BigNameDesc of M] puts a [T] on the ground in front of you, and winks.".

To say OfferFriendshipFlav of (M - a royal guard):
	say "[speech style of M][if the class of the player is princess]'My loyalty to you is unwavering, your Majesty[otherwise if M is guardian]'If I see you in peril within these halls, you can count on my sword to support you[otherwise if M is ally]'You are truly an upstanding citizen[otherwise if M is buddy]'You are welcome down here any time, traveller[otherwise if M is acquaintance]'It is wise to treat the enforcers of the law with generosity and respect[otherwise if M is friendly]'Now, I trust you won't get up to any mischief until our next encounter? I would hate to have to arrest you, but the law is the law[otherwise]'I wish I could ignore the law, but criminals must still serve their sentences regardless of my feelings towards them[end if].'[roman type][line break]".

To compute offer reward of (M - prison guard) for (T - a thing):
	if there is worn locked clothing:
		decrease the sentence of M by the bartering value of T for M;
		if the sentence of M > 0:
			say "[speech style of M]'I'll reduce your sentence a bit, but you've still got [if the sentence of M > 6]a long while[otherwise if the sentence of M > 2]a while[otherwise]a short while[end if] to go before I let you out entirely.'[roman type][line break]";
		otherwise:
			say "[speech style of M]Hmm, I guess you can be let out on parole, for now. I want to see best behaviour from you, from now on.'[roman type][line break]";
			compute bondage releasing of M;
	otherwise:
		compute standard offer reward of M for T.

To decide which number is the bartering value of (T - digestive biscuit) for (M - prison guard):
	if the times-met of ex-princess > 0, decide on 10;
	decide on 0.

To say MonsterOfferAcceptFlav of (M - prison guard) for (T - digestive biscuit):
	say "[speech style of M]'How did you know? These are my favourite! I wish I could give you something in return[if skeleton key is off-stage]. Hmm...'[otherwise].'[end if][roman type][line break]".

To compute offer reward of (M - prison guard) for (T - digestive biscuit):
	if skeleton key is off-stage, compute M rewarding skeleton key;
	FavourUp M by 2.

To compute bondage releasing of (M - a royal guard):
	say "Do you allow [NameDesc of M] to unlock your bondage?";
	if the player is consenting:
		repeat with B running through worn locked clothing:
			say "[BigNameDesc of M] uses [his of M] key to unlock your [printed name of B]!";
			now B is unlocked;
		now the sentence of M is 10;
	otherwise:
		say "[speech style of M]'You wish to continue repenting for now? How noble! Come see me when you desire release.'[roman type][line break]".

Section 1 - Greeting

To say FirstResponse of (M - a royal guard):
	if there is held stolen clothing and shopkeeper is unfriendly:
		say RepeatResponse of M;
	otherwise if M is unfriendly:
		if the class of the player is princess:
			say "[speech style of M]'[one of]Princess, I have spent long enough waiting for your return. I demand payment!'[or]Forgive me for succumbing to my urges, princess, but I have been waiting a long time for your return!'[or]Times have changed, princess. It is time you repaid me for all my years of service!'[at random][roman type][line break]";
		otherwise if the class of the player is royal slave:
			say "[speech style of M]'[one of]How dare you address me, worthless whore!'[or]You dare address me?'[at random][roman type][line break]";
		otherwise:
			say "[speech style of M]'[one of]I order you to submit to me!'[or]Silence, whore!'[or]I claim your body in the name of the crown!'[at random][roman type][line break]";
	otherwise if the class of the player is princess:
		say "[speech style of M]'[one of]It is a pleasure to once again have you walk these halls, my liege.'[or]It is an honour to once again share these halls with you, my princess.'[at random][roman type][line break]";
	otherwise if the class of the player is royal slave:
		say "[speech style of M]'[one of]Greetings, slave.'[or]Ah, a new slave. Welcome to the dungeon.'[or]Welcome, slave. I trust you can find your way to your quarters by yourself?'[at random][roman type][line break]";
	otherwise if the saved appearance of the player < 5:
		say "[speech style of M]'[one of]Allow me to personally welcome you to the halls of Bimbacia.'[or]I am at your service.'[or]Welcome to Bimbacia. Mind yourself.'[or]Greetings, noble [if the player is gendered female and the bimbo of the player > 7]maiden[otherwise]adventurer[end if].'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'Hmph.'[roman type][line break]".

To say RepeatResponse of (M - a royal guard):
	if there is held stolen clothing and shopkeeper is unfriendly:
		say "[speech style of M]'[one of]How dare you address me, criminal scum!'[or][if the bimbo of the player < 11]Silence, criminal scum!'[otherwise]Silence, thieving whore!'[end if][or]I do not associate with thieves!'[at random][roman type][line break]";
		unless M is unfriendly, anger M;
	otherwise if M is unfriendly:
		if the class of the player is princess:
			say "[speech style of M]'[one of]Forgive me, but I cannot control my urges any longer!'[or]Any princess knows that [his of the player] true duty is to [his of the player] kingdom.' [if the player is upright]Kneel!'[otherwise]Stay where you are!'[end if][at random][roman type][line break]";
		otherwise if the class of the player is royal slave:
			say "[speech style of M]'[one of]How dare you address me, worthless whore!'[or]You dare address me?'[at random][roman type][line break]";
		otherwise:
			say "[speech style of M]'[one of]I order you to submit to me!'[or]Silence, whore!'[or]I claim your body in the name of the crown!'[at random][roman type][line break]";
	otherwise if the class of the player is princess:
		if the semen coating of face > 0:
			say "[speech style of M]'Your lack of cleanliness is unbefitting a princess. Clean yourself and then we can speak.'[roman type][line break]";
		otherwise if the player is exposed:
			say "[speech style of M]Your nethers are yours and yours alone to see, princess. [big please] cover yourself so that we may speak.'[roman type][line break]";
		otherwise:
			say "[speech style of M]'[one of]As always, the pleasure is mine.'[or]I am at your service, my liege.'[or]It is a pleasure to serve your crown, princess.'[at random][roman type][line break]";
	otherwise if the semen coating of face + the semen coating of breasts > 0:
		say "[BigNameDesc of M] doesn't even turn to look at you.[line break][speech style of M]'It is proper to clean yourself before engaging in conversation!'[roman type][line break]";
	otherwise if the player is exposed:
		say "[BigNameDesc of M] doesn't even turn to look at you.[line break][speech style of M]'If you are too lazy to cover yourself before engaging in conversation, you are undeserving of my time!'[roman type][line break]";
	otherwise if the class of the player is royal slave:
		say "[speech style of M]'[one of]Greetings, slave. I trust that you are staying out of trouble.'[or]Ah, slave. Keep yourself out of trouble. Your body belongs to the crown, and I will not see it marred by carelessness.'[or]Slave.'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Greetings, noble [if the player is gendered female and the bimbo of the player > 7]maiden[otherwise]adventurer[end if].'[or]Good morning.'[or]Good evening.'[or]Good afternoon.'[as decreasingly likely outcomes][roman type][line break]".

[Responding when the player comments about submissive sex]
To say SubmissiveResponse of (M - a royal guard):
	if M is mating:
		say "[speech style of M]'[one of]Hello. You are as beautiful as ever.'[or]Greetings, noble wife.'[or]Ah, [NameBimbo], my esteemed wife.'[or]Ah, [NameBimbo]. [if the pregnancy of the player is 1]How is the baby?'[otherwise]Are you ready to have another child?'[end if][at random][roman type][line break]";
	otherwise if M is unfriendly:
		if the class of the player is princess:
			say "[speech style of M]'[one of]Your wait is over, princess. All you have to do is get on your knees.'[or]Worry not! No [man of M] could resist a slut of a princess like you!'[or]Ha, it looks like you have embraced your duty, princess!'[at random][roman type][line break]";
		otherwise:
			say "[speech style of M]'[one of]Appalling. I will enjoy using you.[or]I'm glad you've finally realised your place.[or]Like a true whore you accept your place.[or]That's a good whore. Now, it is time you sated my urges.[at random] [run paragraph on]";
			if the player is upright, say "[one of]Kneel before me!'[or]Kneel!'[or]I am ordering you to kneel!'[or]My order is to kneel!'[at random][roman type][line break]";
			otherwise say "[one of]Offer yourself to me!'[or]Submit!'[or]I order you to submit!'[or]Submit to me!'[at random][roman type][line break]";
	otherwise:
		if the class of the player is princess:
			say "[speech style of M]'[one of]It was an honour to serve you, my liege.'[or][big please] do not hesitate to call on me again, your highness.'[or]I am forever at your service, your majesty.'[at random][roman type][line break]";
		otherwise if the class of the player is royal slave:
			say "[speech style of M]'[one of]It seems that you are finally realising your place.'[or]Ha. Do not worry, slave. I plan on using you again soon.'[or]I am glad to see you dedicate yourself so fully to the crown.'[at random][roman type][line break]";
		otherwise:
			say "[speech style of M]'[one of]Your enthusiasm is most appalling. You shame the kingdom of Bimbacia.'[or]My goal was not to entertain you, whore. How infuriating...'[or]How frustrating. I was trying to punish you, not amuse you.'[at random]".

To say UnAnnoyedResponse of (M - a royal guard):
	if the class of the player is princess:
		say "[speech style of M]'Princess-!'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Ha, disgusting!'[roman type][line break]".

To say MildAnnoyedResponse of (M - a royal guard):
	if the class of the player is princess:
		say "[speech style of M]'[one of]You are in no position to give orders, princess.'[or]I will not obey the orders of a princess unwilling to serve [his of the player] people!'[or]A princess must serve [his of the player] people. You already know that I am not afraid to force you.'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]I will use your body whether you like it or not!'[or]Your body is mine to use as I see fit!'[or]Perhaps next time you will think before you provoke me!'[at random][roman type][line break]".

To say AnnoyedResponse of (M - a royal guard):
	say "[speech style of M]'[one of]Silence, now!'[or]Be SILENT!'[or]Be quiet, wench!'[at random][roman type][line break]".

To say TauntAccepted of (M - a royal guard):
	if the class of the player is princess:
		say "[speech style of M]'[one of]O-oh, right now? W-what a shame, I have so much guarding to do!'[or]R-right now? but I-I'm so busy, your majesty.'[or]Erm, your highness, I-I have a lot of guarding to do, unfortunately. I'll be going now.'[at random][roman type][line break][BigNameDesc of M] begins to sidle away.";
	otherwise:
		say "[speech style of M]'H-how uncouth! I refuse to listen to another word of this![roman type][line break][BigNameDesc of M] begins to sidle away.".

To say TauntRejected of (M - a royal guard):
	if the class of the player is princess:
		say "[speech style of M]'[one of]I don't think so princess. It's time you saw to MY needs.'[or]Why don't we get on our knees together, princess.'[or]I apologise, your highness, but I cannot let you have your way. I must handle this properly.'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]I will not endure this no longer, whelp!'[or]You will pay for your levity, wench!'[or]I have endured long enough, wench. You are mine!'[at random][roman type][line break]";
		unless M is unfriendly, anger M.

To compute taunt rejection effect of (M - a royal guard):
	unless M is unfriendly, anger M;
	if the health of M < the maxhealth of M - 10, increase the health of M by 10.

To say AttentionResponse of (M - a royal guard):
	if M is unfriendly and the class of the player is princess and the relevant sex addiction of M >= 12:
		say "[speech style of M]'[one of]Who am I to refuse a princess?[or]How can I refuse a princess?[at random]'[roman type][line break]";
	otherwise if M is unfriendly and the relevant sex addiction of M >= 12:
		say "[speech style of M]'[one of]Ha. Your enthusiasm is almost appalling. I will enjoy using you.'[or]I'm glad you've finally realised your place.'[or]Like a true whore you accept your place.'[at random][roman type][line break]";
	otherwise if M is unfriendly:
		say "[speech style of M]'[one of]If it's help you want, I know just what to do.'[or]I'm going to help. Oh yes indeed.'[at random][roman type][line break]";
	otherwise if the class of the player is princess:
		say "[speech style of M]'[one of]Worry not princess, I will go find help.'[or]I shall find help, princess!'[at random][roman type][line break][big he of M]'s totally ditching you...";
	otherwise:
		say "[speech style of M]'[one of]It is not my job to solve a peasant's squabbles.'[or]I serve the princess, not you.'[at random][roman type][line break]".

To say NonPartnerResponse of (M - a royal guard) with (N - a monster):
	if M is unfriendly, say "[speech style of M]'[one of]That's enough, whore.'[or]Silence, whore.'[or]Enough babbling, whore.'[at random][roman type][line break]";
	otherwise say "[speech style of M]'[one of]I will now shame the crown by watching you any longer.'[at random][roman type][line break]";

To say PartnerResponse of (M - a royal guard):
	if the relevant sex addiction of M < 8:
		say "[speech style of M]'[one of]Quiet, whore.'[or]Silence, whore.'[or]Take your punishment with dignity, slut.'[at random][roman type][line break]";
	otherwise if the relevant sex addiction of M < 12:
		say "[speech style of M]'[one of]This will end when I say it ends, and not a moment sooner.'[or]I will finish when I am ready to be finished.'[or]Silence! You will know when I am finished.'[at random][line break]";
	otherwise:
		say FriendlyPartnerResponse of M.

To say FriendlyPartnerResponse of (M - a royal guard):
	say "[BigNameDesc of M] laughs at your enthusiasm, and seems to fuck you with redoubled effort.";
	if a random number between 1 and 2 is 1, increase the sex-length of M by 1.

To say NonFluffResponse of (M - a royal guard) with (N - a monster):[he clears the area]
	let X be the number of monsters in the location of the player - 1;[the one is the guard himself]
	let Y be the number of monsters penetrating a body part;
	if Y - X > 0:
		say "[speech style of M]'[one of]Disperse!'[or]Clear the area!'[in random order][roman type][line break][BigFuckerDesc of M] shoos away everyone [if Y - X > 1]who isn't fucking you[otherwise]but [FuckerDesc of N][end if]... and also leaves [himself of M].";
	otherwise:
		say "[speech style of M]'Of course. I will tell the other guards to be wary of this [man of N]!'[roman type][line break][BigFuckerDesc of M] immediately turns to leave. At least they support you...";
		slightDignify;
		Bore M;
		now the scared of M is 15.

Section 2 - Questioning

To compute teaching of (M - a royal guard):
	say "[speech style of M]'If you ever do get assaulted, never underestimate the power of admitting your assailant's superiority and pleading for mercy. You never know, it might just soften their heart.'[roman type][line break]";
	if lady fetish is 0, cutshow figure of guard cutscene 1 for M;
	teach begging for mercy.

To say WhereAnswer of (M - a royal guard):
	say "[speech style of M]'The dungeons of Bimbacia! [if the class of the player is princess]But surely you know this?'[otherwise]Welcome!'[end if][roman type][line break]";

To say WhoAnswer of (M - a royal guard):
	say "[speech style of M]'Sir [if M is valiant royal guard]Sterling[otherwise if M is noble royal guard]Gregory[otherwise if M is solemn royal guard]Clover[otherwise if M is virtuous royal guard]Stark[otherwise]Charming[end if] of the royal guard, [if the class of the player is princess]at your service, princess!'[otherwise]sworn to protect the princess!'[end if][roman type][line break]";

To say StoryAnswer of (M - a royal guard):
	say "[speech style of M]'My story is unimportant. What truly matters is the story of our princess, who created this dungeon and the traps contained within. [big he of ex-princess] summoned every inhabitant [himself of ex-princess], and left many moons ago to venture into the world above. [if the class of the player is princess]But what am I saying, you know this, and you have returned, at last! Thank the stars!'[otherwise]We loyally await [his of ex-princess] return, however long that may be.'[end if][roman type][line break]";

To say EscapeAnswer of (M - a royal guard):
	say "[speech style of M]'[if the class of the player is princess]You wish to leave again so soon? We haven't even celebrated your return! Well whilst you still stand, I shall defend you to the end if your monsters here should attempt to harm you.'[otherwise]There is a staircase upwards. But the monsters up there are much more dangerous.'[end if][roman type][line break]".

[added new advice more tailored to the princess, removed tiara advice since it's not actually beneficial to the player. Should still be in the existing code, though.]
To say AdviceAnswer of (M - a royal guard):
	if the class of the player is princess or M is mating:
		say "[speech style of M]'[one of]While I am sworn to protect you, this dungeon could fall into disarray if I were to leave. Your protection is your responsibility as soon as you reach the top of the stairs.'[or]As long as I am here, you can rely on my protection. However, if you venture to the outside world, you will have to protect yourself with your own two hands.'[or]If you have come to rely on the protection of others to stay safe, then be weary venturing to the world above. I cannot explore with you.'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]A blessed vessel doubles the benefits of any good drink inside. I would advise obtaining one as quickly as you can.'[or]Do not underestimate the gladiator just because [he of a random gladiator]'s naked. I have made that mistake more than once.'[or]I do not have advice, but rather, something to think about. If you are powerful unarmed, imagine what you could do with a real weapon?'[or]If you have trouble winning fights unarmed, try finding a weapon.'[at random][roman type][line break]".

Section 3 - Drink Requesting

To compute friendly drink of (M - a royal guard):
	say "[speech style of M]'Here, drink from my water pouch. It's not particularly [tasty] but it will keep you hydrated.'[roman type][line break]";
	if hypno-trigger-tasty is 0:[if the hypno trigger is enabled then we want them to drop and present instead.]
		say "You do so and feel completely refreshed!";
		StomachUp 2.

To compute unfriendly drink of (M - a royal guard):
	if M is penetrating a body part:
		say "[speech style of M]'I would, but you see, I'm a bit too busy filling your other end!'[roman type][line break]";
	otherwise:
		say "[if the thirst of the player is 5 and the player is upright]You are so thirsty that you drop to your knees and beg[otherwise if the thirst of the player is 5]You are so thirsty that you beg [him of M] find any way to quench your thirst[otherwise if the player is upright]You drop to your knees and beg[end if]. ";
		now the stance of the player is 1;
		now M is interested;
		compute M entering mouth;
		humiliate 225;
	say line break.

Section 4 - Food Requesting

Definition: a royal guard is willing to give snacks: decide yes.

To say FriendlyFoodAgreeFlav of (M - a royal guard):
	say "[speech style of M]'[if the class of the player is princess]Of course, Princess.'[otherwise]I don't like to encourage begging, but I hate to see people starving. You can have this.'[end if][roman type][line break]".

To say FriendlyFoodEmptyFlav of (M - a royal guard):
	say "[speech style of M]'[if the class of the player is princess]I'm sorry Princess, I have nothing left.'[otherwise]I do not have anything for you.'[end if][roman type][line break]".

To say UnfriendlyFoodRefuseFlav of (M - a royal guard):
	say "[speech style of M]'An enemy of the state gets no free food from us!'[roman type][line break]".

Section 5 - Dismissal

To say DismissalResponseRoyal of (M - a royal guard):
	if M is interested, say "[BigNameDesc of M] sighs with hesitation.[line break][speech style of M]'I'm sorry Princess, but [if diaper quest is 0][one of]I am sworn to defend you[or]I must ensure that you do not come to any harm[or]I can't risk anything happening to you again[in random order].'[roman type][line break][otherwise if there is a currently at least partially visible diaper]I must remain at your side in case you have an accident.'[roman type][line break][big he of M] pats the front of your diaper to emphasise [his of M] point.[otherwise]there are certain duties that I must perform if you prove incapable of looking after yourself.'[roman type][line break][end if]";
	otherwise say "[speech style of M]'[one of]Yes ma'am[or]My liege[or]Ma'am[then at random].'[roman type][line break]".

To say DismissalResponseVixen of (M - a royal guard):
	say "[speech style of M]'[if M is interested]That is none of my concern[otherwise]What?! Stay here, I shall investigate[end if].'[roman type][line break]".

To say DismissalResponseToilet of (M - a royal guard):
	if diaper quest is 0, say "[speech style of M]'[if M is interested]I do not arrive and leave at your pleasure, wench, just because you desire to use the facilities. I will depart when it suits me. Which will now likely be FURTHER in the future than it was originally going to have been.'[otherwise]Hmph. Disgusting. I bid you adieu.'[end if][roman type][line break]";
	otherwise say "[speech style of M]'[if the diaper-duration of M > 0]Do you think I've forgotten that you are in the middle of serving your diaper sentence?! You will serve your full time before I let you use anything except that padding between your legs.'[otherwise if M is not interested]Hmph! I will pretend you asked more politely and respectfully, this time.'[otherwise if the player is feeling submissive]Hmm, I don't think you've earned the right to do that unsupervised yet. But I approve of your respectful tone.'[otherwise]No, no, I should think not. I challenge you to prove to me that you can control yourself for at least a few more minutes.'[end if][roman type][line break]".

To say DismissalResponseBursting of (M - a royal guard):
	if diaper messing >= 3 and (the player is feeling full or the total squirtable fill of belly > 0):
		say "[speech style of M]'[if M is interested]If you really do degrade yourself like that, I will be bound by law to administer the appropriate punishment.'[otherwise]I am going to pretend I didn't hear that. Next time, [please] give me less of the graphic details.'[end if][roman type][line break]";
	otherwise if the player is bursting:
		if the diaper addiction of the player > 14, say "[speech style of M]'[if M is interested and there is a worn diaper]Oh? You wish to disgrace yourself in front of me, and prove to me how much you're dependent on diapers? Go ahead, but expect me to act accordingly if you do.'[otherwise if M is interested]I will be witness to your sin if I must. But after the crime, I will make sure that you are put back in diapers where you belong.'[otherwise]Fine. I assume you're going to go use the proper toilet though, right?'[end if][roman type][line break]";
		otherwise say "[speech style of M]'[if diaper quest is 1 and M is interested and there is a worn diaper]Young [man of the player], the law states that you must hold it in until we part ways or you will be kept in your diapers for a LONG time.[otherwise if diaper quest is 1 and M is interested]Young [man of the player], the law states that you must hold it in until we part ways or face the full brunt of the law.[otherwise if M is interested]There will be no privacy. Part of my job is to identify deviants who enjoy performing perverse acts in front of others.'[otherwise if there is a worn diaper]Hmm, well as you are already wearing the appropriate incontinence aid, I shall allow you some peace and quiet.'[otherwise]Fine. You know where the proper facilities are, I presume?'[end if][roman type][line break]";
	otherwise:
		if the player is a nympho, say "[speech style of M]'[if M is interested and there is a worn diaper]I will if I must. Part of my role is ensuring that nasty babies get a change after debasing themselves.'[otherwise if M is interested]I will witness it if I must. After all, I must ensure that the punishment fits the crime.'[otherwise]No thank you. Not today.'[end if][roman type][line break]";
		otherwise say "[speech style of M]'[if M is interested and diaper lover > 0]If you do, I will be forced to judge you harshly.'[otherwise if M is interested]If you expel the contents of your belly in front of me, there will be consequences, young [man of the player].'[otherwise]I will pretend I didn't hear that. See you later.'[end if][roman type][line break]".

To say DismissalResponseStalker of (M - a royal guard):
	say DismissalResponseDefault of M.

To say DismissalResponseDefault of (M - a royal guard):
	say "[speech style of M]'Wench! [one of]I will dismiss you, not the other way round[or]I am the law here, and I will decide when we part[in random order][if M is not interested]. However, I do grow tired of your presence. Begone[end if].'[roman type][line break]".

Chapter 4 - Dominant Sex

To compute domination interference of (M - a royal guard) for (N - a monster):
	if the class of the player is not princess:
		if M is unfriendly and the times-dominated of M is 0 or N is royal guard:
			say "[BigNameDesc of M] gets between you and [NameDesc of N]![line break][speech style of M]'You forget yourself, wench!'[roman type][line break]Looks like you'll have to deal with [him of M] first!";
			now player-fucking is DOMINANT-FAILURE;
			anger M;
		otherwise:
			say "[BigNameDesc of M] clears [his of M] throat and turns to leave.";
			Bore M;
			now the scared of M is 30;
	otherwise if M is interested:
		say "[BigNameDesc of M] turns to [NameDesc of N].[line break][speech style of M]'[one of]You there, the princess has need of your services.'[or]You have been drafted. Make certain the princess is satisfied.'[or]It's time you served the crown properly!'[in random order][roman type][line break]".

To say DominanceFailure of (M - a royal guard):
	say "You try to force [NameDesc of M] the ground, but your apparent difficulty overpowering [him of M] makes it perfectly clear who will be dominating who. A moment or two later, and you find yourself kneeling at [his of M] feet.".

To compute failed dominance punishment of (M - a royal guard):
	if the class of the player is princess:[just normal sex]
		if asshole is undefended:
			say "[speech style of M]'My liege...I had no idea you felt this strongly. Say the word, and I will do my utmost to satisfy you.'[roman type][line break]Ask [him of M] to fuck you?";
			if the player is bimbo consenting:
				say "[speech style of M]'At once, princess.'[roman type][line break]";
				Calm M;
				say FriendlyAssholePenetrationFlav of M;
				now M is penetrating asshole;
				set up sex length of M in asshole;
				now another-turn-flavour is the substituted form of "[BigFuckerDesc of M] fucks you with gentle thrusts.";
				now another-turn is 1;
			otherwise:
				say "[speech style of M]'Oh...Ahem, as you wish, princess.'[roman type][line break]";
				FavourDown M by 1;
				increase the blue-balls of M by 1;
				Bore M;
		otherwise:
			say "[speech style of M]'I am flattered that you would hold such lust for me, princess. I will not hold this against you.'[roman type][line break][BigNameDesc of M] smiles as [he of M] gently pats your head.";
			Satisfy M;
			increase the blue-balls of M by 1;
	otherwise:
		say "[speech style of M]'You need to be shown your place, wench.'[roman type][line break]";
		now another-turn-flavour is the substituted form of "[BigFuckerDesc of M] holds you in place.";
		now another-turn is 1.

To say HoleDesc of (M - a royal guard):
	if lady fetish is 1, say "pussy";
	otherwise say "asshole".

To penetration dominate (M - a royal guard):
	if the size of penis > 8:
		say "You force [NameDesc of M] to [his of M] hands and knees, using [his of M] cloak to tie [his of M] wrists together behind [his of M] back. [big he of M] looks over [his of M] shoulder, eyes widening as you line up your [SexDesc of penis] with [his of M] [HoleDesc of M].[line break][speech style of M]'[if the class of the player is princess][one of]P-PRINCESS!?!'[or]M-MY LIEGE?!?'[or]Y-YOUR LORDSHIP!?!'[at random][otherwise][one of]Uh, I-I am a [man of M] of the law. This is-!'[or]T-this is highly uncouth-!'[or]P-propriety dictates that-![at random][end if][roman type][line break] You don't wait for [him of M] to finish, slamming it in and immediately beginning to thrust. [big he of M]'s [one of]clearly a virgin, so you take it as slow as you can, making sure [he of M] has time to fully acclimate to the new sensation[or][if lady fetish is 1]already soaking wet, so you don't need to take much time[otherwise]still holding the last load you put inside of [him of M], which lubricates [him of M] enough that you don't need to take much time[end if][stopping] before you start fucking [him of M] for real. You take your sweet time showing [him of M] what [his of M] place is, [if lady fetish is 1]fondling [his of M] breasts as you slowly pump away. It's not long before you feel [him of M] clench up around you, shuddering as feminine fluids dribble down the side of [his of M] leg[otherwise]teasing [his of M] [DickDesc of M] as you pound away. It's not long before you can feel [his of M] prostate tightening up, [his of M] [DickDesc of M] throbbing as it spits several spurts of [semen] onto the ground[end if]. Satisfied, you work yourself to an orgasm of your own, roaring with pleasure as you flood [his of M] [HoleDesc of M] with your load.";
		if lady fetish is 1, FuckGet;
		otherwise AnalGet;
		severeDignify;
		orgasm;
		orgasm M;
		say AfterDominationComment 4 of M;
	otherwise if the size of penis > 3:
		say "You force [NameDesc of M] to [his of M] hands and knees, using [his of M] cloak to tie [his of M] wrists together behind [his of M] back. [big he of M] looks over [his of M] shoulder, eyes widening as you line up your [SexDesc of penis] with [his of M] [HoleDesc of M].[line break][speech style of M]'[if the class of the player is princess][one of]P-PRINCESS!?!'[or]M-MY LIEGE?!?'[or]Y-YOUR LORDSHIP!?!'[at random][otherwise][one of]Uh, I-I am a [man of M] of the law. This is-!'[or]T-this is highly uncouth-!'[or]P-propriety dictates that-![at random][end if][roman type][line break] You don't wait for [him of M] to finish, slamming it in and immediately beginning to thrust. [big he of M]'s [one of]clearly a virgin, so you take it as slow as you can, making sure [he of M] has time to fully acclimate to the new sensation[or][if lady fetish is 1]already soaking wet, so you don't need to take much time[otherwise]still holding the last load you put inside of [him of M], which lubricates [him of M] enough that you don't need to take much time[end if][stopping] before you start fucking [him of M] for real. You enjoy yourself, but you don't drag things out either, slamming your [sexual-player-penis] home and groaning as you fill [his of M] [HoleDesc of M] with your load.";
		if lady fetish is 1, FuckGet;
		otherwise AnalGet;
		strongDignify;
		orgasm;
		say AfterDominationComment 4 of M;
	otherwise:
		say "You force [NameDesc of M] to [his of M] hands and knees, using [his of M] cloak to tie [his of M] wrists together behind [his of M] back. [big he of M] looks over [his of M] shoulder, raising [his of M] eyebrows as you line up your [SexDesc of penis] with [his of M] [HoleDesc of M].[line break][speech style of M]'[if the class of the player is princess][one of]Princess[or]My liege[or]Your lordship[at random]... I understand. I will clean up my act at once.'[otherwise]Hmmph. So I see. Very well. I will leave you be.'[end if][roman type][line break] You're a little embarrassed that [he of M] misconstrued your intention to actually fuck [him of M], but you decide to roll with it and get to your feet with your head held high.";
		moderateDignify;
		now player-fuckchoice is FUCK-NONE;
		now player-fucking is DOMINANT-NEUTRAL;
		calm M;
		if the blue-balls of M > 0, now the blue-balls of M is 0;
		say AfterDominationComment 5 of M.

To ride dominate (M - a royal guard):
	say "You force [NameDesc of M] to [his of M] knees, [if player-fucker is asshole]shaking your [AssDesc] in [his of M] face[otherwise]giving [his of M] face a good slap[end if] as you straddle [his of M] crotch. [PowerBottomComment of M][line break][speech style of M][if the class of the player is princess]'Y-your highness...'[otherwise if the class of the player is royal slave]'Unhand me at once, wench! Respect the sanctity of the law!'[otherwise]'Such sluttery is against the law!'[end if][roman type][line break]";
	now refractoryperiod is 1;[Ensures the player does not orgasm too early during the scene]
	if player-fucker is asshole and the player is not possessing a vagina, anal ride dominate M;
	otherwise vaginal ride dominate M.

To vaginal ride dominate (M - a royal guard):[with times-submitted we'll assume the sex you had was the "punishment" kind]
	let O be the openness of vagina;
	let G be the girth of M;
	now M is penetrating vagina;
	if O < G - 1:
		say "You hold [his of M] [DickDesc of M] firmly, grunting quietly under your breath as you gingerly guide the first inch into your [vagina]. ";
		Ruin vagina times 2;
		say "[if the times-submitted of M > 0]It's huge, but you already knew that. [big he of M] made sure you'd remember the last time [he of M] fucked you. The look in [his of M] eyes tells you [he of M] remembers it just as clearly as you do, just as it says how much [he of M] hopes [he of M] hasn't already lost [his of M] chance to cum[otherwise if the times-dominated of M > 0]It's still very huge, but it doesn't matter that you have to take it slow at first. Now that [he of M]'s turned on, both of you know the only way [he of M] gets to cum is if you [italic type]let[roman type] [him of M][otherwise]It's huge. [big he of M]'s barely even in you, and already you know it's way too much. You have an impulse to immediately climb off and be on your way, but the look of desperate anticipation in [his of M] eye stops you. [big he of M] hasn't moved since you put your hand on [his of M] [DickDesc of M], and [his of M] gaze has never once left your crotch. [big his of M] eyes dart up once, for a moment, and you feel a rush as you realise it's entirely up to you whether or not [he of M] gets to cum[end if]. Your lips break into a small smirk, letting a sigh of satisfaction pass through your gritted teeth as you sink even further down [his of M] length. Although the pain of being so overly stretched never fully goes away, the more of [him of M] you take, the better it feels. You pace yourself, but still find yourself moving just a bit faster than you can handle, and feeling [him of M] plunge far deeper than you meant to. [BigNameDesc of M] [if the times-dominated of M < 3]is clearly not used to[otherwise]clearly can't handle[end if] being ridden like a dildo, so it's not long before [his of M] breathing grows ragged, [his of M] [DickDesc of M] throbbing ominously as its master bucks and shivers beneath you.";
	otherwise if O < G + 2:
		say "You hold [his of M] [DickDesc of M] steady, sighing with pleasure as you guide the first few inches into your [vagina]. ";
		Ruin vagina;
		say "[if the times-submitted of M > 0]It's just as big as you remember it, but as much as you're about to enjoy yourself, nothing could make you forget how much [he of M] needs to be taken down a peg[otherwise if the times-dominated of M > 0]It's deliciously big, but as much as you're about to enjoy yourself, you don't forget how important it is to remind [him of M] of [his of M] status as your own personal fucktoy[otherwise]It's nice and big, which makes the little rush of power from being on top all the more satisfying[end if].[line break][variable custom style]'[if the class of the player is princess]Subject.'[otherwise]Sorry, I wasn't listening. Do you still want me to stop?'[end if][roman type][line break]You chuckle, holding eye contact with [him of M] as you sink another few inches down [his of M] length. [big he of M] turns tomato red, [his of M] cock stiffening noticeably as [he of M] stares back at you in silence. You place a hand on [his of M] chest, feeling [his of M] heart pumping excitedly as you sway your hips, taunting [him of M] with the prospect of penetrating you even deeper as the smirk grows ever wider on your face. [big his of M] heart jumps when you start to pull off, and [he of M] quickly shakes [his of M] head as shame cracks like an egg over [his of M] cheeks. You would have preferred if [he of M] said it out loud, but [his of M] [DickDesc of M] is just too perfect for you to wait any longer, and you immediately begin to move your hips. [big his of M] shaft twitches and throbs as you fuck yourself without a hint of restraint, meeting every buck and twist of [his of M] hips with a sharp downward motion of your own, driving [him of M] in as hard and deep as possible. [big he of M]'s [if the times-dominated of M < 3]totally unprepared[otherwise]not even close to being able to handle[end if] the sudden increase in stimulation, and a powerful groan rumbles from [his of M] throat as he nears the edge.";
	otherwise:
		say "You hold [his of M] [DickDesc of M] loosely, emitting an 'Oooh' as you slide it fully into your [vagina]. ";
		gape vagina times 1;
		say "[if the times-submitted of M > 0]It doesn't feel quite as big as it did when [he of M] had the control, but this time, it's up to you whether or not [he of M] gets to cum[otherwise if the times-dominated of M > 0]It feels smaller than you remember, but knowing this isn't [his of M] first time under you makes you certain you'll find a way for it to satisfy you[otherwise]It's not quite as big as you're accustomed to, but it's enough to satisfy you, which is lucky for [him of M][end if].[line break][variable custom style]'[if the class of the player is princess]Shall I stop, subject?'[roman type][line break]You say suddenly,[otherwise]Sorry, I wasn't listening. Do you still want me to stop?'[roman type][line break]You chuckle[end if], leaning back so [he of M] has an uninterrupted view of the point where your nether lips meet the base of [his of M] shaft. [big his of M] [DickDesc of M] noticeably stiffens, and [he of M] stares silently for a few moments before your words actually reach [him of M], and a deep blush spreads over [his of M] face as [he of M] quickly shakes [his of M] head. You couldn't be happier to immediately drop all restraint, grabbing [his of M] shoulders as you wildly bounce on [his of M] [DickDesc of M]. [big he of M] tries to hide it, but [he of M][if the times-dominated of M >= 3]'s already demonstrated to you time and again how much [he of M] loves being treated like your own personal fucktoy[otherwise]'s clearly more than a little turned on by being treated like a human fucktoy[end if], and you make sure [he of M] knows it. You hold eye contact as your [AssDesc] slaps against [his of M] [if M is a balls-haver]balls[otherwise]thighs[end if], meeting every buck and twist of [his of M] hips with a sharp movement of your own, driving [him of M] in as hard and deep as possible. [big he of M] can't handle it for very long, and you feel [his of M] [DickDesc of M] begin to twitch and throb ominously as [he of M] nears the edge.";
	now refractoryperiod is 0;
	if M is wrapped:
		say "[if the soreness of vagina > 3]Luckily for [him of M], your recent ordeals have left you so close to the edge that the right gust of wind might be enough to make you cum[otherwise if the player is horny]Luckily for [him of M], you're way too turned on to stop before you can cum[otherwise]Since [he of M]'s wearing a condom, you don't see the harm in letting [him of M] cum[end if], and you ride [him of M] even harder as the latex reservoir fills with warmth. The combination of power, control, and the knowledge that it's all completely risk free sends you into a frenzy, and you feel a[one of][or] familiar[stopping] wave of pleasure crashing through your body. [big his of M] condom continues to fill with [semen] as you [if the openness of vagina < 6]dribble girlcum down your thigh[otherwise]squirt out girlcum[end if] reminding you just how real the [DickDesc of M] inside you actually is as you ride out the rest of your orgasm. [BigNameDesc of M] pants quietly as you slowly climb off and climb to your feet.";
		moderateDignify;
		orgasm;
		orgasm M;
		say AfterDominationComment 1 of M;
	otherwise:
		let R be the semi-dominance roll for M;
		if R > 0:
			if debugmode > 0, say "[bold type]PASSED[roman type][line break]";
			say "[line break]Do you want to keep going and let [him of M] creampie you?";
			if the player is bimbo consenting:
				say "Luckily for [him of M], you[if the player is a nympho]'re way too turned on to stop now[otherwise] decide to be merciful[end if], and ride [him of M] with just enough extra enthusiasm to bring yourself to the edge just as
				[one of][he of M] floods your [vagina] with hot [semen][or][he of M] pumps you full of thick, warm [semen][or][he of M] fills you with every last drop of [his of M] [semen][or]your [vagina] fills with [his of M] hot [semen][at random]. You emit a shrieking moan as waves of pleasure crash through your body, and you feel yourself clamping down around [him of M] [if the openness of vagina < 6]as girlcum dribbles down your thigh[otherwise]as you squirt everywhere[end if]. [BigNameDesc of M] doesn't move as you ride out your orgasm, trying as hard as [he of M] can to hide [his of M] panting as you slowly climb off and get to your feet.";
				orgasm;
				PussyFill the semen load of M;
				orgasm M;
				say AfterDominationComment 1 of M;
				strongDignify;
			otherwise:
				say "It's not [his of M] lucky day. You stop abruptly and pull [him of M] out, relishing [his of M] look of frustration as you return to your feet.";
				say AfterDominationComment 2 of M;
				passively stimulate vagina;
				increase the blue-balls of M by 20;
				severeDignify;[it's very dignifying to control his orgasm]
		otherwise:[accidental creampie]
			if debugmode > 0, say "[bold type]FAILED[roman type][line break]";
			say "[if the soreness of vagina > 5]Your recent ordeals have left you so close to the edge that the thought of stopping doesn't cross your mind until it's too late[otherwise]After putting [him of M] through so much, you immediately abandon any thought of stopping[end if], and you cum as [one of][he of M] floods your [vagina] with hot [semen][or][he of M] pumps you full of thick, warm [semen][or][he of M] fills you with every last drop of [his of M] [semen][or]your [vagina] fills with [his of M] hot [semen][at random]. You emit a shrieking moan as waves of pleasure crash through your body, and you feel yourself clamping down around [him of M] [if the openness of vagina < 6]as girlcum dribbles down your thigh[otherwise]as you squirt everywhere[end if]. [BigNameDesc of M] doesn't move as you ride out your orgasm, trying to pant unobtrusively as you slowly climb off and get to your feet.";
			moderateDignify;
			orgasm;
			PussyFill the semen load of M;
			orgasm M;
			say AfterDominationComment 1 of M;
	if the refractory-period of M > 0 and the class of the player is Princess, FavourUp M by 1;
	FuckCount;
	now M is not penetrating vagina.

[Tweaked for the case where the player is barbie (no penis, just doll-like mound, pre-sexchange)]
To say AnalTaunt (M - a royal guard):
	if the player is not able to speak:
		say "You take in the deep crimson of arousal on [his of M] face, [if there is a worn chastity cage]your tiny cage bobbing slightly[otherwise if the size of penis > 4]your rock hard [ShortDesc of penis] gently tapping [his of M] belly[otherwise if the player is possessing a penis]your rock hard [ShortDesc of penis] bobbing gently[otherwise if the player is barbie]and feel a burn of abject humiliation as you see [him of M] smirk at your smooth Barbie-doll like mound[otherwise]swivelling your hips[end if] as you begin to[run paragraph on]";
	otherwise if the class of the player is princess:
		say "[line break][if the bimbo of the player < 6][line break][first custom style]'So, do you let every [']princess['] treat you like this?'[otherwise if the bimbo of the player < 12][line break][variable custom style]'So what does it feel like to fuck your princess in the ass?'[otherwise][line break][second custom style]'Does it feel good being inside a princess, baby?'[end if][roman type][line break]You take in the deep crimson of arousal on [his of M] face, [if there is a worn chastity cage]your tiny cage bobbing slightly[otherwise if the size of penis > 4]your rock hard [ShortDesc of penis] gently tapping [his of M] belly[otherwise if the player is possessing a penis]your rock hard [ShortDesc of penis] bobbing gently[otherwise]swivelling your hips[end if] as you begin to[run paragraph on]";
	otherwise:
		say "[line break][if the bimbo of the player < 6][line break][first custom style]'How does it feel to have a dirty [']harlot['] treat you like this?'[otherwise if the bimbo of the player < 12][line break][variable custom style]'Do you like my ass? Wait, sorry. Do you like this [']dirty harlot's' ass?'[otherwise][line break][second custom style]'Does this dirty harlot feel good, baby?'[end if][roman type][line break]You smirk down at [him of M], taking in the deep crimson of arousal and anger on [his of M] face, [if there is a worn chastity cage]your tiny cage bobbing slightly[otherwise if the size of penis > 4]your rock hard [ShortDesc of penis] gently tapping [his of M] belly[otherwise if the player is possessing a penis]your rock hard [ShortDesc of penis] bobbing gently[otherwise]swivelling your hips[end if] as you begin to[run paragraph on]".

[male player rides the guard.]
To anal ride dominate (M - a royal guard):
	let C be the number of worn chastity cages;
	let A be a random worn gag;
	let O be the openness of asshole;
	let G be the girth of M;
	now M is penetrating asshole;
	if O < G - 1:
		say "You grip the base of [his of M] shaft firmly, [if there is a worn gag]grunting through your [ShortDesc of A][otherwise]gritting your teeth[end if] as you slowly push [his of M] [DickDesc of M] through your delicate sphincter. ";
		Ruin asshole times 2;
		say "[big he of M]'s [if the times-submitted of M > 0]as big as ever, and every tiny movement of [his of M] hips causes a sharp twinge of pain, but there's no way you're letting that get in the way of your revenge[otherwise if the times-dominated of M > 0]still as big as it was the first time, but as familiar as the pain is, you know the feeling of being someone else's fucktoy is even more familiar to [him of M][otherwise]big. Much bigger than you expected, with every tiny movement of [his of M] hips causing a sharp twinge of pain, but it's nothing compared to the feeling of getting fucked AND putting this hunky dumbass in [his of M] place at the same time[end if]! [AnalTaunt M] work [his of M] [DickDesc of M] in and out of your [asshole]. Even when you go slowly, [he of M]'s just so big that it's always just a bit more intense than you can handle, and a feeling of soreness piles up as your hole is slowly and surely stretched. [BigNameDesc of M] [if the times-dominated of M < 3]is clearly not used to[otherwise]clearly can't handle[end if] being ridden like a dildo, so it's not long before [his of M] breathing grows ragged, [his of M] [DickDesc of M] throbbing ominously as its master bucks and shivers underneath you.";
	otherwise if O < G + 2:
		say "You grip the base of [his of M] shaft firmly, [if there is a worn gag]grunting through your [ShortDesc of A][otherwise]hissing through gritted teeth[end if] as your sphincter slowly parts for [his of M] invading [DickDesc of M]. ";
		Ruin asshole times 1;
		say "It's [if the times-submitted of M > 0]just as big as it was last time [he of M] put it inside you, but it's much less intimidating when you're the one with the reins[otherwise if the times-dominated of M > 0]as huge as you remember it, which just makes you feel better about reusing [him of M] as your fucktoy[otherwise]so big. [big he of M] fills you thoroughly that it's impossible not to notice the even the tiniest movements of [his of M] hips, which makes it even better that you're going to be in control of the pace[end if]! [AnalTaunt M] work [his of M] [DickDesc of M] in and out of your [asshole]. As much as you want to relish the feeling of being in control and getting fucked at the same time, it's hard not to go fast. [big he of M] couldn't be a more perfect fit, and [if M is wrapped]even with the condom on,[otherwise]and[end if] the feeling of those fucking [i]inches[/i]sliding through your hole, constantly pressing on your prostate like a button that never quite goes down, is slowly driving you insane. Whatever restraint you were trying to hold onto quickly evaporates, and you moan uncontrollably as you rhythmically jam [his of M] [DickDesc of M] into your [second custom style][sissy] spot[roman type]. [run paragraph on]";
	otherwise:
		say "You grip the base of [his of M] shaft firmly, emitting a [if A is clothing]muffled[otherwise]long, spiteful[end if] moan as every inch of [his of M] [DickDesc of M] slides into your [asshole]. ";
		gape asshole times 1;
		say "[if the times-submitted of M > 0]It feels good to have it inside you again, but unfortunately for [him of M], this time you're going to be the one calling the shots[otherwise if the times-dominated of M > 0]It feels good to have it inside you again, and even to let [him of M] know you still see [him of M] as nothing more than your own personal fucktoy[otherwise if O < G + 3]It's more than big enough to satisfy you, and even if it wasn't, your position of power gives you enough of a rush to make up for it[otherwise]It's not as big as you're accustomed to, but even if it was, the rush you get from your position of power is enough to satisfy you all on its own[end if]! [AnalTaunt M] work your hips up and down. It feels so good to let go, so good to let your [AssDesc] clap [his of M] [if M is a balls-haver]balls[otherwise]thighs[end if], and [italic type]so fucking good[roman type] to let your hands rove [his of M] big, sexy arms and sculpted, muscular chest. Sticky precum collects in a pool on [his of M] belly as you jack-hammer yourself on [his of M] [DickDesc of M], making sure every downward motion drives it hard into your [sissy] cum-button [if the times-dominated of M < 3][BigNameDesc of M] can't handle this level of stimulation for long, and [his of M] breathing grows ragged as you get closer and closer to the edge, [his of M] [DickDesc of M] throbbing ominously as its master bucks and shivers below you[otherwise][BigNameDesc of M][']s body seems to respond to being ridden so enthusiastically, and you feel [him of M] buck and shift, [his of M] [DickDesc of M] throbbing ominously as you inch closer and closer to the edge[end if].";
	now refractoryperiod is 0;
	if M is wrapped:
		say "[if the soreness of asshole > 3]The condom dampens it a bit, but your recent ordeals have left you so sensitive that the overall stimulation is enough to send [one of]a rush of[or]that familiar rush of[stopping] pleasure through your prostate, and your muscles rapidly tense and relax[otherwise]The condom dampens it a bit, but overall, the sudden increase in stimulation is more than you can handle, and you immediately feel [one of]a rush of[or]that familiar rush of[stopping] pleasure through your prostate, your internal muscles rapidly tensing and relaxing[end if] as the latex reservoir fills with [semen]. [if C > 0]Your cage bounces as your load dribbles out into a puddle on [his of M] belly[otherwise if the size of penis < 3]Your [ShortDesc of penis] jiggles pitifully, dribbling a tiny load onto [his of M] belly[otherwise if the size of penis < 5] Your [ShortDesc of penis] bobs excitedly, spitting its load in a short line on [his of M] belly[otherwise if the size of penis < 8]Your [ShortDesc of penis] throbs as it shoots its [load] in a rough line across [his of M] belly[otherwise]Your [ShortDesc of penis] tenses, shooting several long ropes across [his of M] belly and chest[end if], a testament to the shameful nature of your orgasm as much as it is proof that you managed to be dominant while having it. You blow a short sigh of relief[if A is clothing] through your nose[end if], sharing eye contact with [him of M] as you return to your feet";
		slightDignify;
		orgasm;
		orgasm M;
		say AfterDominationComment 1 of M;
	otherwise:
		let R be the semi-dominance roll for M;
		if R >= 0:
			if debugmode > 0, say "[bold type]PASSED[roman type][line break]";
			say "[line break]Do you want to keep going and let [him of M] creampie you?";
			if the player is bimbo consenting:
				say "You decide it's worth being inseminated if you get to cum, riding [him of M] just hard enough to get [one of]a rush of[or]that familiar rush of[stopping] pleasure through your prostate, your internal muscles rapidly tensing and relaxing as [one of][he of M] floods your [asshole] with hot [semen][or][he of M] pumps you full of thick, warm [semen][or][he of M] fills you with every last drop of [his of M] [semen][or]your [asshole] fills with [his of M] hot [semen][at random]. [if C > 0]Your cage bounces as your load dribbles out into a puddle on [his of M] belly[otherwise if the size of penis < 3]Your [ShortDesc of penis] jiggles pitifully, dribbling a tiny load onto [his of M] belly[otherwise if the size of penis < 5] Your [ShortDesc of penis] bobs excitedly, spitting its load in a short line on [his of M] belly[otherwise if the size of penis < 8]Your [ShortDesc of penis] throbs as it shoots its [load] in a rough line across [his of M] belly[otherwise]Your [ShortDesc of penis] tenses, shooting several long ropes across [his of M] belly and chest[end if]";
				slightDignify;
				orgasm;
				Assfill the semen load of M;
				orgasm M;
				say "You blow a short sigh of relief[if A is clothing] through your nose[end if], sharing eye contact with [him of M] as you return to your feet.";
				say AfterDominationComment 1 of M;
			otherwise:
				say "You decide you want to avoid ruining your victory by being inseminated, and force yourself to stop moving and pull off. [BigNameDesc of M] fumes as you return to your feet, [his of M] [DickDesc of M] throbbing in desperate disappointment. You can feel your own unspent anticipation thrumming like heat under your skin.";
				strongDignify;
				passively stimulate asshole;
				increase the blue-balls of M by 20;
				say AfterDominationComment 2 of M;
		otherwise:
			if debugmode > 0, say "[bold type]FAILED[roman type][line break]";
			say "[if the soreness of asshole > 5]Your recent ordeals have left you so sensitive that the increase in stimulation immediately sends you over the edge,[otherwise]After putting [him of M] through so much, you immediately abandon any thought of stopping[end if] and you immediately feel [one of]a rush of[or]that familiar rush of[stopping] pleasure through your prostate, your internal muscles rapidly tensing and relaxing as [one of][he of M] floods your [asshole] with hot [semen][or][he of M] pumps you full of thick, warm [semen][or][he of M] fills you with every last drop of [his of M] [semen][or]your [asshole] fills with [his of M] hot [semen][at random]. [if C > 0]Your cage bounces as your load dribbles out into a puddle on [his of M] belly[otherwise if the size of penis < 3]Your [ShortDesc of penis] jiggles pitifully, dribbling a tiny load onto [his of M] belly[otherwise if the size of penis < 5] Your [ShortDesc of penis] bobs excitedly, spitting its load in a short line on [his of M] belly[otherwise if the size of penis < 8]Your [ShortDesc of penis] throbs as it shoots its [load] in a rough line across [his of M] belly[otherwise]Your [ShortDesc of penis] tenses, shooting several long ropes across [his of M] belly and chest[end if], a testament to the shameful nature of your orgasm as much as it is proof that you managed to be dominant while having it. You blow a short sigh of relief[if A is clothing] through your nose[end if], sharing eye contact with [him of M] as you return to your feet.";
			now player-fucking is DOMINANT-NEUTRAL;
			slightDignify;
			orgasm;
			Assfill the semen load of M;
			orgasm M;
			say AfterDominationComment 1 of M;
		now M is not penetrating asshole;
	if the refractory-period of M > 0 and the class of the player is Princess, FavourUp M by 1;
	AnalCount.

To say AfterDominationComment (N - a number) of (M - a royal guard):
	if the class of the player is princess:
		say "[speech style of M]'Thank you for your mercy, my liege. I will prove myself a worthy vassal in the future.'[roman type][line break]";
	otherwise if N is 5:
		say "[speech style of M]'I expect you to clean up your act as well.'[roman type][line break]";
	otherwise if N is 4:
		say "[speech style of M]'Thank you for your mercy...'[roman type][line break]";
	otherwise if N is 2:
		say "[speech style of M]'You will pay dearly for this, cur. I will not abide being used and left to dry.'[roman type][line break]";
	otherwise if N is 3:
		say "[speech style of M]'Fine, you have made your point, wench. I will teach you something of my own soon enough. Thoroughly.'[roman type][line break]";
	otherwise:[N is 1]
		say "[speech style of M]'You... huff... huff... have won nothing, wench. A th-thorough lesson awaits you in the future.'[roman type][line break]".

Royal Guard ends here.
