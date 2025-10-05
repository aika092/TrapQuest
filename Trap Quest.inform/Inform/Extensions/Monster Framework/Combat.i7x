Combat by Monster Framework begins here.

current-monster is a monster that varies.

To check attack of (M - a monster):
	check default attack of M.

To check default attack of (M - a monster):
	if M is threatening or M is penetrating a body part or M is grabbing the player:
		now the alert of the player is 1;
		if M is delayed:
			compute correct delay of M;
		otherwise if the paralyse-status of M > 0:
			now the last-interaction of M is 1;
			compute paralysis of M;
		otherwise:
			compute attack of M.

To compute correct delay of (M - a monster): [Default behaviour of delayed monster]
	if diaper quest is 1, compute DQ delay of M;
	otherwise:
		if M is male and M is intelligent and the number of interested friendly monsters in the location of M > 0, compute group delay of M;
		otherwise compute delay of M.

To compute DQ delay of (M - a monster):
	say "[BigNameDesc of M] doesn't do anything, as if waiting to see what you do next.".

[Friendly monsters can get roped into whatever "M" is about to do to you.]
To compute group delay of (M - a monster):
	let C be 0;
	repeat with N running through interested friendly willing to fluff monsters in the location of M:
		if a random number between 1 and 2 is 1:
			compute bystanderDelay from M to N;
			increase C by 1;
	if C is 0:
		compute delay of M.

To compute bystanderDelay from (M - a monster) to (N - a monster):
	say "[line break][speech style of M]'You, [ShortDesc of N]! [one of]Don't act like you aren't involved.[or]Don't think I can't see you![or]Don't pretend this doesn't involve you![or]You're [his of the player] friend, aren't you?[in random order] Get on your knees!'[roman type][line break][speech style of N]'[one of]This is all YOUR fault!'[or]Just my luck...'[or]But I'm not the one who-... UGH!'[in random order][roman type][line break][BigNameDesc of N] [one of]stares daggers[or]glares[or]snarls[or]scowls[in random order] at you as [FuckerDesc of M] forces [him of N] to kneel down next to you.";
	FavourDown N by 2;
	now N is submission-assisting.

To compute delay of (M - a monster):
	say "[BigNameDesc of M] doesn't do anything, as if waiting to see what you do next.".

To compute paralysis of (M - a monster):
	say "[BigNameDesc of M] [if the paralyse-status of M > 0]doesn't seem able to move[otherwise]can move again[end if]!";

To compute attack of (M - a monster):
	now current-monster is M;
	if the poison-status of M > 0 and health of M > 1:
		let N be the maxhealth of M / 10;
		if N < 1, now N is 1;
		decrease health of M by N;
		if health of M < 1, now health of M is 1;
	follow the monster attack rules.

The monster attack rules is a rulebook.
[In each rule in this rulebook, we write 'if the rule succeeded, rule succeeds.' In this way rule succeeds is used for finishing up completely. Rule fails is used for exiting a rulebook and moving to the next rulebook in the sex rules. Obviously if a rulebook ends with neither, then we also continue as if we had encountered a rule fails.]

To MonsterStomp (M - a monster):
	let stomped be 0;
	repeat with N running through undefeated awake monsters in the location of M:
		if stomped is 0 and N is not penetrating a body part and N is not grabbing the player and N is not M:
			compute M stomping N;
			now stomped is 1.

[To compute (M - a monster) stomping (N - a monster): Consider this a template!
	say "[BigNameDesc of M] kills the [N]!";
	destroy N;
	let L be a random off-stage leftover;
	now L is in the location of M;
	now the leftover-type of L is the leftover-type of N.]

To compute (M - a monster) stomping (N - a monster):[We keep this completely generic to avoid potential conflicts with the specific instances of each monster.]
	if N is female and N is not neuter:
		if M is in the location of the player, say "[BigNameDesc of M] grabs [NameDesc of N] and pulls [him of N] towards [him of M]. Remaining fully standing, [he of M] lowers [him of N] onto [his of M] giant erect [DickDesc of M] and starts fucking [his of N] [HoleDesc of N] furiously. [big he of N] screams in both pleasure and terror as [his of M] member almost splits [him of N] in two, and very soon [he of M] is coming inside [him of N]. [big his of N] belly visibly bulges before pints of [semen] begin to explode from around the sides of [his of M] [DickDesc of M]. After [he of M] has finished, [his of M] tail lets go of [his of N] waist and [he of N] falls to the ground, where [he of N] promptly faints.";
		otherwise say "You hear a [man of N] shout out in a mixture of ecstasy and terror from [if N is nearby]nearby[otherwise]somewhere in the [playerRegion][end if]!";
		destroy N;
		let L be a random off-stage leftover;
		now L is in the location of M;
		now the leftover-type of L is the leftover-type of N;
	otherwise:
		say "[BigNameDesc of M] is glitching, it doesn't know how to deal with the [N]. Report this bug please!";[This will not happen with default game but with added monsters it allows the ability for them to be dungeon dwelling and have a scene where the minotaur kills them.]

Chapter 1 Continue and Finish Sex

This is the continue sex rule:
	follow the continue sex rules of current-monster;
	if the rule succeeded:
		let vm be a random video-monitor in the location of the player;
		if vm is video-monitor and the video-caller of vm is not the throne:
			if vm is not recording-disgrace: [if you willingly have sex, your friend disapproves.]
				now vm is recording-disgrace;
			if domino-mask is worn and current-monster is human intelligent monster and the video-event of vm is not "doing nothing special": [next turn, superheroes get unmasked and huge humiliation hit]
				say "[BigNameDesc of current-monster] reaches up to your [domino-mask] and rips it from your body, exposing your real identity to the camera![line break][variable custom style]Nooooo![roman type][line break][obsceneHumiliateReflect]";
				destroy domino-mask;
				let P be the video-caller of vm;
				if P is real-life patron:
					say NewAppearanceReaction of P;
					now P is friend-shocked;
		rule succeeds.
The continue sex rule is listed last in the monster attack rules. [Listed 1st]

This is the check normal continue sex stuff rule: [If we want to add extra stuff onto the list of things we check for continue sex for an NPC, we can call this at some point too to make sure we check the default stuff as well. Check out 'The adult baby slave continue sex rules' for a practical example.]
	follow the default continue sex rules;
	if the rule succeeded, rule succeeds.

This is the default check for spanking rule:
	if current-monster is spanking the player:
		compute spanking of current-monster;
		rule succeeds.
The default check for spanking rule is listed last in the default continue sex rules.

This is the default check for tickling rule:
	if current-monster is tickling the player:
		compute spanking of current-monster;
		rule succeeds.
The default check for tickling rule is listed last in the default continue sex rules.

This is the default check for changing rule:
	if current-monster is changing the player:
		compute diaper change of current-monster;
		rule succeeds.
The default check for changing rule is listed last in the default continue sex rules.

This is the default check for masturbating rule:
	if current-monster is masturbating the player:
		compute masturbation of current-monster;
		rule succeeds.
The default check for masturbating rule is listed last in the default continue sex rules.

This is the default check for enema rule:
	if current-monster is enema-filling the player:
		compute enema of current-monster;
		rule succeeds.
The default check for enema rule is listed last in the default continue sex rules.

This is the default check for diaper facesit rule:
	if current-monster is diaper-facesitting the player:
		compute diaper facesit of current-monster;
		rule succeeds.
The default check for diaper facesit rule is listed last in the default continue sex rules.

This is the default check for feeding rule:
	if current-monster is feeding the player:
		compute forcefeed of current-monster;
		rule succeeds.
The default check for feeding rule is listed last in the default continue sex rules.

This is the default check for sex rule:
	unless current-monster is penetrating a body part and diaper quest is 0, rule fails.
The default check for sex rule is listed last in the default continue sex rules.

This is the default finish sex rule:
	if the rounds of sex left of current-monster <= 0:
		follow the end-of-sex-rules of current-monster;
		rule succeeds.
The default finish sex rule is listed last in the default continue sex rules.

[The following rules should be considered BLAND EXAMPLES and if they are called during runtime that is bad because they are boring. Replace either the compute clauses, or the entire end of sex rulebook for any monster you create.]

This is the reset chosen orifice rule:
	now the chosen-orifice of current-monster is nothing.
The reset chosen orifice rule is listed first in the default end-of-sex rules.

[!<OrgasmMonster>+

This function runs any code that needs to be executed whenever the player finishes having sex with a monster. If the player can have sex without triggering the default finish sex rule for a given monster, this function needs to be called manually.

@param <Monster>:<M> The monster the player just had sex with

+!]
To orgasm (M - a monster):
	if M is penetrating face and M is male, progress quest of naughty-quest;
	if M is dark skinned:
		if M is penetrating a fuckhole:
			if there is a worn dark magician girl dress, MagicPowerRefresh the girth of M;
			BBCAddictUp 1;
		if royal sceptre is worn:
			if royal sceptre is not blacked:
				say "Your [royal sceptre] transforms ";
				now royal sceptre is blacked;
				say "into a [royal sceptre]![line break][ClothingDesc of royal sceptre]";
			if tiara-of-spades is worn:
				say "[BigNameDesc of royal sceptre] is filled with renewed magical power!";
				if the charge of royal sceptre < 30, now the charge of royal sceptre is 30;
	if ritual-beads is worn or runic headband is worn:
		if runic headband is purity or M is penetrating vagina, compute priestessBlessing of M;
	if the class of the player is worshipper and M is infernal, compute demonBoon of M;
	if the class of the player is succubus, FavourUp M by 1;
	if ghost-strapon is worn, compute ghostGrowth of M;
	if M is male and watersports fetish is 0 and M is penetrating a fuckhole, progress quest of human-toilet-quest;
	if M is male and M is human and M is penetrating breasts and cock-handmaiden-negligee is worn and piercing-fetish is 1 and the number of worn nipple piercing is 0:
		say "Your [cock-handmaiden-negligee] suddenly vanishes!";
		destroy cock-handmaiden-negligee;
		say "It is replaced by a pair of dick nipple piercings!";
		summon dick-nipple-piercings cursed with quest;
	if M is male and M is human and M is penetrating a fuckhole and handmaiden-headdress is worn:
		transform handmaiden-headdress into handmaiden-circlet;
		compute class outfit of handmaiden-circlet;
		if purple-handmaiden-gloves is worn, transform purple-handmaiden-gloves into pink-handmaiden-gloves;
		if heart-handmaiden-negligee is worn:
			transform heart-handmaiden-negligee into cock-handmaiden-negligee;
			compute class set up of cock-handmaiden-negligee;
	otherwise if M is seduced:
		progress quest of seduction-climax-quest;
	if M is male and M is intelligent and M is in the location of the player and M is not dying, compute betrothal of M;
	if M is royal guard and the class of the player is princess:
		increase the duties-performed of royal-quest by 1; [making guards cum completes the quest twice as fast]
		progress quest of royal-quest;
	compute refractoryReset of M;
	if M is infernal, progress quest of demon-slut-quest;
	let vm be a random video-monitor in the location of the player;
	if vm is video-monitor and the video-caller of vm is not the throne and vm is not recording-disgrace:
		now vm is recording-disgrace;[since sex is probably over by now, we need to set up the recorded event right away.]
		let T be the substituted form of "making [NameDesc of M] cum";
		now the video-event of vm is T;[note that the video-event always needs to be a present participle]
	if notebook is worn or (the class of the player is schoolgirl and notebook is in the location of the player), compute studying 0 of M; [magical schoolgirls can have the notebook temporarily disarmed by tentacle monsters. the intention is that they should still get to study it]
	let G be a random fuckhole-mode glue penetrating face;
	if G is glue:
		say "[BigNameDesc of M][']s acts seem to have slightly weakened the glue's hold on you!";
		decrease the stickiness of the player by 1;
		if the stickiness of the player <= 0, compute raw glue escaping a random glue in the location of the player with 0;
	if there is a summoning portal in the location of the player:
		let S be a random summoning portal in the location of the player;
		unless S is tentacle-breeder:
			say "You feel a tingle near the back of your neck as [NameDesc of S][']s pressure intensifies.";
			ChargeDown S by 60.

To compute refractoryReset of (M - a monster):
	if the blue-balls of M > 0, now the blue-balls of M is 0;
	if M is intelligent:
		now the refractory-period of M is the refractory-time of M;
		if there is a worn bouquet and the charge of floral bouquet > 2, increase the refractory-period of M by (the refractory-time of M + 4);
		if book of anal is worn and book of anal is enhancing and M is penetrating asshole:
			FavourUp M;
			increase the refractory-period of M by the intelligence of the player.

To compute demonBoon of (M - a monster):
	if M is imp:[We don't want to mess with the difficulty of imps]
		say "You feel a surge of unholy energy!";
	otherwise:
		say "You feel a surge in [NameDesc of M]'s unholy aura!";
		SilentlyDifficultyUp M by 1;
		FavourUp M by 1;
	RitualUp 2.

To compute priestessBlessing of (M - a monster):
	if the class of the player is priestess:
		if M is infernal:[if M is a demon]
			say "Your stomach flips over and a voice appears in your head: [line break][second custom style]'You have shamed yourself laying with [him of M], Sister! Do not insult your goddess!'[roman type][line break]";
			increase the charge of the dungeon altar by 30;
		otherwise:
			if ritual-beads is worn:
				say "You can feel a surge in your holy aura, and a voice appears in your head: [line break][second custom style]'[if the vaginalvirgin of the player is 1 and the player is possessing a vagina]Noble[otherwise]Dutiful[end if] Sister, your sacred rite [if the notches of ritual-beads < 6]has only just begun! Remember, [otherwise if the notches of ritual-beads < 10]is nearly complete! Remember, [otherwise]is complete, but [end if]there is always more work to be done!'[roman type][line break]";
				heal asshole times (the soreness of asshole / 5);
			otherwise:
				say "You can feel a surge in your holy aura and a voice appears in your head: '[if the vaginalvirgin of the player is 1 and the player is possessing a vagina]Noble[otherwise]Dutiful[end if] Sister, there is still more work to be done!'";
			decrease the charge of the dungeon altar by 150;
			if M is penetrating vagina and runic headband is not purity, heal vagina times (the soreness of vagina / 5);
	if M is infernal, RitualUp 2;[demons are bad for altar charge, but good for rituals]
	otherwise RitualUp 1.

To RitualUp (X - a number):
	let R be ritual-beads;
	if R is worn:
		if the notches of R < 10:
			if the notches of R <= the notch-taken of R:
				say "Blue light condenses around the end of [NameDesc of R], as another [PlugSize size of R] bead appears next to the hoop.";
				increase the notches of R by 1;
				force immediate clothing-focus redraw; [This forces the clothing window to redraw]
				update appearance level;
			otherwise:
				say "[BigNameDesc of R] shifts slightly inside of you, but doesn't seem to get any longer. Maybe because it's not properly inside you?";
		otherwise:
			say "[BigNameDesc of R] shifts slightly inside of you, but doesn't seem to get any longer. Maybe it's at maximum capacity?".

To compute ghostGrowth of (M - a monster):
	let G be ghost-strapon;
	if the strap-length of G < 11:
		increase the strap-length of G by 1;
		say "Your [ShortDesc of G] seems to grow stronger[if the strap-length of G > the size of penis], and a shiver moves up your spine as it grows into a [PenisFlavour of G][end if].".

To say sleeping tip:
	if tutorial is 0, say "[one of][newbie style]Newbie tip: The enemy has fallen asleep! However in this game you can't just kill sleeping enemies, you have to attack them like normal. Usually, this results in them waking back up again, so you'll still have a fight on your hands![roman type][line break][or][stopping]".

To compute replacement of (T - a thing) in (O - an orifice):
	unless O is actually occupied or current-monster is unintelligent:
		say "[BigNameDesc of current-monster] pushes the [T] back into place in your [variable O].";
		now T is worn by the player;
		now T is penetrating O;
		now T is not temporarily-removed;
		if O is fuckhole, ruin O;
		if T is pacifier and O is face and the stolen-intelligence of T > 0:
			increase the raw intelligence of the player by the stolen-intelligence of T;
			now the stolen-intelligence of T is 0;
			say "[bold type]As [NameDesc of T][bold type] is pushed back in your mouth, you feel it return your stolen intelligence![roman type][line break]";
		if T is temporarily-unlocked:
			let K be a random off-stage specific-key;
			if K is nothing or current-monster is unintelligent or there is a specific-key covering T:
				say "[if current-monster is intelligent][BigNameDesc of current-monster] locks [NameDesc of T].[otherwise]With a click, it would appear that [NameDesc of T] is suddenly locked again![end if]";
				now T is locked;
				now T is not temporarily-unlocked;
			otherwise:
				compute current-monster locking T with K.

[!<DominateUpMonster>+

With this function, current-monster moves a given piece of clothing back into place

@param <Clothing>:<D> The clothing to be replaced

+!]
To compute replacement of (D - a clothing):
	if current-monster is intelligent:
		if D is worn:
			unless there is a worn tail plug:
				if D is crotch-displaced:
					say "[BigNameDesc of current-monster] puts your [ShortDesc of D] back in place before letting you go.";
					replace D;
				if D is crotch-unzipped:
					say "[BigNameDesc of current-monster] zips your [ShortDesc of D] back up before letting you go.";
					ZipUp D;
		otherwise if D is actually summonable:
			say "[BigNameDesc of current-monster] puts you back into your [ShortDesc of D] before letting you go.";
			only summon D;
			if D is ass plugging or (D is vagina plugging and the player is not possessing a vagina), now D is penetrating asshole;
			if D is vagina plugging and the player is possessing a vagina, now D is penetrating vagina;
			if D is ballgag, now D is penetrating face; [a ballgag is any gag that occupies the player's face. I.e. most gags]
		otherwise:
			say "[BigNameDesc of current-monster], unable to replace your [D], just drops it onto the ground.";
			now D is not temporarily-removed;
			now D is not temporarily-unlocked;
			now D is in the location of the player;
	if D is worn and D is temporarily-unlocked:
		let K be a random off-stage specific-key;
		if K is nothing or there is a specific-key covering D:
			say "With a click, [if current-monster is intelligent][NameDesc of current-monster] locks [NameDesc of D][otherwise]the lock on [NameDesc of D] has somehow relocked itself[end if]!";
			now D is locked;
			now D is not temporarily-unlocked;
		otherwise:
			compute current-monster locking D with K.

This is the default facial climax rule:
	if current-monster is penetrating face:
		if current-monster is not-getting-licked, compute facial climax of current-monster;
		otherwise compute licking completion of current-monster;
	if current-monster is awake and the rounds of sex left of current-monster is 0, replace any gags.
The default facial climax rule is listed in the default end-of-sex rules.

To replace any gags:
	repeat with G running through gags carried by current-monster:
		compute replacement of G in face.

To TimesSubmittedUp (M - a monster) by (N - a number):
	DirectTimesSubmittedUp M by N.

To DirectTimesSubmittedUp (M - a monster) by (N - a number):
	repeat with X running from 1 to N:
		TimesSubmittedUp M.

To TimesSubmittedUp (M - a monster):
	increase the times-submitted of M by 1;
	increase the submission-count of the player by 1;
	increase the sex-count of the player by 1;
	if vampiress is chain-tethering, end tethering.

To compute licking completion of (M - a monster):
	compute default licking completion for M;
	SlowGrossnessAddictUp 1.

To compute default licking completion for (M - a monster):
	TimesSubmittedUp M by 1;
	LickCount;
	compute lick end of M;
	compute post climax effect of M in thighs;
	if the rounds of sex left of M <= 0:[if rounds of sex left > 0, it means the monster wants an extra round]
		if M is interested, satisfy M;[dislodges him automatically]
		otherwise dislodge M.



[!<ComputeFacialClimaxOfMonster>+

This function handles the oral "climax" of a monster. By default, this can end in one of four ways. First, a resisting player can escape at the last second, avoiding semen on their face or in their mouth, which should trigger the angry punishment function for this monster. Second, the monster can ejaculate on the player's face. Third, the monster can ejaculate in the player's mouth, prompting them to swallow. If they don't, we should call the angry punishment function. Fourth, the monster can deepthroat the player so they swallow automatically

@param <Monster>:<M> The monster the player just had oral relations with

+!]
To compute facial climax of (M - a monster):
	compute default facial climax for M;
	SlowOralSexAddictUp 1.

To compute default facial climax for (M - a monster):
	TimesSubmittedUp M by 1;
	BlowCount;
	if M is male:[should always be true, but better safe than sorry]
		let subs be 0;
		repeat with N running through submission-assisting monsters in the location of the player:
			increase subs by 1;
		if M is wrapped:
			compute wrapped climax of M in face;
		otherwise if M is friendly-fucking and M is willing to tongue creampie and a random number between 1 and the favour of M > 3: [friendly NPCs will usually cum on the player's tongue]
			compute merciful oral creampie of M;
		otherwise if bukkake fetish is 1 and M is willing to bukkake:[cumshot outside]
			if subs > 0:
				compute assisted facial of M with subs;
			otherwise if the reaction of the player is 0:[Player rolls to see if they avoid a facial]
				compute facial dodging of M;
			otherwise: [the player submitted]
				compute facial accepting of M;
		otherwise:[Internal cumshot]
			if subs > 0:
				compute assisted oral creampie of M with subs;
			otherwise if player-gagging is true:
				compute deepthroat creampie of M;
			otherwise if the reaction of the player is 0:
				compute oral creampie of M;
			otherwise if M is willing to tongue creampie:
				compute merciful oral creampie of M;
			otherwise:[submitted, deepthroat]
				compute deepthroat creampie of M;
		compute post climax effect of M in face;
	if the rounds of sex left of M <= 0:[if rounds of sex left > 0, it means the monster wants an extra round]
		if M is interested, orgasm satisfy M;[dislodges him automatically]
		otherwise orgasm dislodge M.

Definition: a monster is willing to tongue creampie:
	if the favour of it > a random number between 0 and (the aggro limit of it + 5), decide yes; [Cums on the player's tongue instead of down their throat]
	decide no.

To compute assisted facial of (M - a monster) with (subs - a number):
	if the reaction of the player is 0:
		compute assisted facial dodging of M with subs;
	otherwise:
		compute assisted facial accepting of M with subs.

To compute assisted oral creampie of (M - a monster) with (subs - a number):
	if player-gagging is true or the number of unfriendly submission-assisting monsters in the location of the player > 0:
		compute assisted deepthroat creampie of M with subs;
	otherwise if the reaction of the player is 0:
		compute assisted nonmerciful oral creampie of M with subs;
	otherwise if M is willing to tongue creampie:
		compute assisted merciful oral creampie of M with subs;
	otherwise:
		compute assisted deepthroat creampie of M with subs.

[!<ComputeClimaxOfMonsterInFuckhole>+

This function handles the climax of a monster (M) in a given fuckhole (F). First we call TimesSubmittedUp for M, then we look at the "unique climax" for M in F, which may be replaced with special functionality depending on the monster. The post climax effect handles anything that should happen after the climax has happened, specific to that monster. Lastly, we dislodge the monster after making sure that the monster actually needs to be dislodged(some monsters might want to go for another round after they climax, and other monsters may have their own rules for making the monster pull out.) Satisfy M makes the monster forgive the player and calls the "dislodge M" function by default.

@param <Monster>:<M> The monster having the climax
@param <Fuckhole>:<F> The fuckhole the monster is having the climax in

+!]
To compute climax of (M - a monster) in (F - a fuckhole):
	TimesSubmittedUp M by 1;
	if F is asshole, AnalCount;
	otherwise FuckCount;
	compute unique climax of M in F;
	compute post climax effect of M in F;
	compute post climax behaviour of M in F.

To compute post climax behaviour of (M - a monster) in (F - a fuckhole):
	if the rounds of sex left of M <= 0:
		if M is normally annoyed:
			if F is vagina, compute happy vaginal sex reward of M;
			otherwise compute happy anal sex reward of M;
			if M is interested, orgasm satisfy M;
			otherwise orgasm dislodge M;
		otherwise:
			orgasm dislodge M;
			if M is interested:
				if M is awake and M is in the location of the player and the times-warned of M >= 3:
					compute post sex punishment of M;
					bore M;
				otherwise:
					satisfy M;



[!<ComputePostClimaxEffectOfMonsterInBodypart>+

Handles anything that needs to happen after a monster "M" climaxes in a bodypart "F". This function is meant to help specific monsters control what happens after a climax, anything that affects all or most monsters needs to be part of one of the respective wrapper functions like compute climax of M in F. No functionality in this function by default

@param <Monster>:<M> The monster that had the climax
@param <Bodypart>:<F> The bodypart the monster had the climax with

+!]
To compute post climax effect of (M - a monster) in (F - a body part):
	if F is asshole, check post climax anal urination of M.

To check post climax anal urination of (M - a monster):
	if the player is an april 2025 top donator and watersports fetish is 1 and grossness fetish > 0 and M is willing to urinate and the bladder of M >= 600 and M is not wrapped, compute anal urination of M.

To compute anal urination of (M - a monster):
	if M is intelligent, say AnalUrinationAnnounceFlav of M;
	say "[BigNameDesc of M] sighs with [one of]happiness[or]satisfaction[or]contentment[in random order]... And you feel warmth along with a buiding pressure inside your rectum![line break][variable custom style][one of]Wait... Is [he of M]... PISSING INSIDE OF ME?!?!?!?![or][one of]Oh my god[or]Fuck[purely at random], my [one of]butthole[or]belly[in random order] is being [one of]turned into[or]used as[purely at random] a urinal again[stopping][roman type][line break]";
	Assfill (the bladder of M / 75) with urine;
	now the bladder of M is 0;
	GrossOut 4 with reason "The sensation of being used as an anal urinal makes you shudder," and sensation "feeling".

To say AnalUrinationAnnounceFlav of (M - a monster):
	say "[speech style of M]'[one of]Hold on a sec, I've got something else for you[or]Hold still now, my little cum toilet[or]I think you've got room in there for something more[in random order]...'[roman type][line break]".

This is the default anal climax rule:
	if current-monster is penetrating asshole:
		compute anal climax of current-monster;
		if current-monster is awake and the rounds of sex left of current-monster is 0:
			replace any buttplugs;
			replace any chastity;
			replace any diapers;
			replace any clothes.
The default anal climax rule is listed in the default end-of-sex rules.

To replace any buttplugs:
	repeat with G running through temporarily-removed sex toys carried by current-monster:
		compute replacement of G in asshole.

To replace any chastity:
	repeat with C running through temporarily-removed chastity bond carried by current-monster:
		compute replacement of C.

To replace any diapers:
	repeat with D running through temporarily-removed diapers carried by current-monster:
		compute replacement of D.

To replace any clothes:
	unless the woman-status of woman-player is 96 and woman-player is in the location of the player: [patron orgy scene]
		repeat with C running through worn diaper covers:
			compute replacement of C; [this only does something if it's displaced or unzipped]
		repeat with C running through temporarily-removed diaper covers carried by current-monster:
			compute replacement of C;
		repeat with C running through worn clothing:
			compute replacement of C; [this only does something if it's displaced or unzipped]
		repeat with C running through temporarily-removed clothing carried by current-monster:
			compute replacement of C.

To compute anal climax of (M - a monster):
	compute climax of M in asshole.

This is the default vaginal climax rule:
	if current-monster is penetrating vagina:
		compute vaginal climax of current-monster;
		if current-monster is awake and the rounds of sex left of current-monster is 0:
			replace any cuntplugs;
			replace any chastity;
			replace any diapers;
			replace any clothes.
The default vaginal climax rule is listed in the default end-of-sex rules.

To replace any cuntplugs:
	repeat with G running through temporarily-removed sex toys carried by current-monster:
		if the player is possessing a vagina, compute replacement of G in vagina;
		otherwise compute replacement of G in asshole.

To compute vaginal climax of (M - a monster):
	compute climax of M in vagina.

This is the default cleavage climax rule:
	if current-monster is penetrating breasts:
		compute cleavage climax of current-monster;
		progress quest of titfuck-quest.
The default cleavage climax rule is listed in the default end-of-sex rules.

To compute cleavage climax of (M - a monster):
	TimesSubmittedUp M by 1;
	if M is male:
		say CleavageClimaxFlav of M;
		get cleavage climax image of M;
		AnnouncedSquirt semen on breasts by the semen load of M;
	compute post climax effect of M in breasts;
	if M is normally annoyed:
		compute happy titfuck reward of M;
		if M is interested, orgasm satisfy M;
		otherwise orgasm dislodge M;
	otherwise:
		orgasm dislodge M;
		if M is interested:
			if M is awake and M is in the location of the player and the times-warned of M >= 3:
				compute post sex punishment of M;
				bore M;
			otherwise if M is interested:
				satisfy M.


To compute post climax effect of (M - a monster) in (B - breasts):
	BreastsSensitivityUp 1.

To get cleavage climax image of (M - a monster):
	do nothing.

This is the default erection climax rule:
	if current-monster is penetrating penis:
		compute erection climax of current-monster.
The default erection climax rule is listed in the default end-of-sex rules.

[This is M's orgasm, not necessarily the player's]
To compute erection climax of (M - a monster):
	TimesSubmittedUp M by 1;
	say ErectionClimaxFlav of M;
	compute post climax effect of M in penis;
	if the rounds of sex left of M <= 0:
		if M is interested, orgasm satisfy M;
		otherwise orgasm dislodge M.

[Similarly, these are BLAND EXAMPLES of what progress sex might look like for your monster.]

This is the default progress sex rule:
	follow the progress sex rules of current-monster;
	rule succeeds.
The default progress sex rule is listed last in the default continue sex rules.

To decide which number is the rounds of sex left of (M - a monster):
	decide on the sex-length of M. [Default function allows us to rewrite where this isn't true, e.g. witch and demoness]

This is the default facial sex rule:
	if current-monster is penetrating face:
		if current-monster is not-getting-licked, compute facial sex of current-monster;
		otherwise compute licking sex of current-monster.
The default facial sex rule is listed in the default progress sex rules.

To compute facial sex of (M - a monster):
	compute default facial sex of M.

Definition: a monster (called M) is anticipating-climax:
	let R be a random number between 1 and 7;
	if the reaction of the player is 0, increase R by 2;
	let Ig be the intelligence of the player;
	if debugmode > 0, say "[input style]Near climax check: Player will notice climax if I > R. I = [Ig], R = [R].[roman type][line break]";
	if Ig > R, decide yes;
	decide no.

To compute default facial sex of (M - a monster):
	if the oral sex addiction of the player > 6, passively stimulate face from M;
	if the sex-length of M is 1 and M is anticipating-climax:
		say NearingClimaxOral of M;
		decrease the sex-length of M by 1;
	otherwise:
		if the reaction of the player is 0:
			if the throating of M is 0 and M is male and M is not patron, now the throating of M is 1; [patrons handled separately]
			say OralResisting of M;
			say OralResistingResponse of M;
			[if a random number between 1 and 2 is 1, decrease the sex-length of M by 1;] [now there's a risk of puking, I don't feel the need to increase the average duration]
			decrease the sex-length of M by 1;
		otherwise:
			say OralSubmissionResponse of M;[The idea here is that the player and "M" are working together, so we don't unnecessarily restrict ourselves with two flavour functions]
			decrease the sex-length of M by 1;
	compute slow grossness of M.

To compute licking sex of (M - a monster):
	if M is getting-asslicked, compute default anilingus sex of M;
	otherwise compute default licking sex of M.

To compute default anilingus sex of (M - a monster):
	decrease the sex-length of M by 1;
	if the sex-length of M is 0 and M is anticipating-climax:
		say NearingClimaxAnilingus of M;
		GrossOut 1;
	otherwise if the reaction of the player is 0:
		say AnilingusResisting of M;
		say AnilingusResistingResponse of M;
		GrossOut 4;
		FavourDown M with consequences;
	otherwise:
		say AnilingusSubmissionResponse of M;[The idea here is that the player and "M" are working together, so we don't unnecessarily restrict ourselves with two flavour functions]
		TasteGrossOut 7.

To compute default licking sex of (M - a monster):
	decrease the sex-length of M by 1;
	if the sex-length of M is 0 and M is anticipating-climax:
		say NearingClimaxLicking of M;
		GrossOut 1;
	otherwise if the reaction of the player is 0:
		say LickResisting of M;
		say LickResistingResponse of M;
		GrossOut 1;
		FavourDown M with consequences;
	otherwise:
		say LickSubmissionResponse of M;[The idea here is that the player and "M" are working together, so we don't unnecessarily restrict ourselves with two flavour functions]
		TasteGrossOut 4.

This is the default anal sex rule:
	if current-monster is penetrating asshole, compute anal sex of current-monster.
The default anal sex rule is listed in the default progress sex rules.

To compute anal sex of (M - a monster):
	compute default anal sex of M.

To compute default anal sex of (M - a monster):
	if the class of the player is living sex doll:
		compute sexSexDoll of M in asshole;
	otherwise if M is unintelligent:
		compute sexDumb of M in asshole;
	otherwise if the reaction of the player is 2:[begging]
		compute sexBegging of M in asshole;
	otherwise if the reaction of the player is 1:[submitting]
		compute sexSubmit of M in asshole;
	otherwise:[resisting]
		compute sexResist of M in asshole;
	decrease the sex-length of M by 1;
	say "[one of][M sex reaction][or][cycling]";
	compute slow grossness of M.

This is the default vaginal sex rule:
	if current-monster is penetrating vagina, compute vaginal sex of current-monster.
The default vaginal sex rule is listed in the default progress sex rules.

To compute vaginal sex of (M - a monster):
	compute default vaginal sex of M.

To compute default vaginal sex of (M - a monster):
	if the class of the player is living sex doll:
		compute sexSexDoll of M in vagina;
	otherwise if M is unintelligent:
		compute sexDumb of M in vagina;
	otherwise if the reaction of the player is 2:
		compute sexBegging of M in vagina;
	otherwise if the reaction of the player is 1:
		compute sexSubmit of M in vagina;
	otherwise:
		compute sexResist of M in vagina;
	decrease the sex-length of M by 1;
	say "[one of][M sex reaction][or][cycling]";
	compute slow grossness of M.

This is the default titfuck rule:
	if current-monster is penetrating breasts, compute titfuck of current-monster.
The default titfuck rule is listed in the default progress sex rules.

To compute titfuck of (M - a monster):
	[strongHumiliate;]
	if the sex-length of M is 1 and M is anticipating-climax:
		say TitfuckNearingClimaxFlav of M;
		decrease the sex-length of M by 1;
	otherwise if the reaction of the player is 0:
		if M is male and M is intelligent:
			say TitfuckResistFlav of M;
		say TitfuckForceFlav of M;
		if a random number between 1 and 2 is 1, decrease the sex-length of M by 1;
	otherwise:
		say TitfuckReceiveFlav of M;
		decrease the sex-length of M by 1;
	stimulate breasts;
	compute slow grossness of M.

This is the default erection sex rule:
	if current-monster is penetrating penis, compute erection sex of current-monster.
The default erection sex rule is listed in the default progress sex rules.

To compute erection sex of (M - a monster):
	if penis is not penis-erect:[which implies that the player came]
		say ErectionLostFlav of M;
	otherwise if the sex-length of M is 1 and M is anticipating-climax:
		say ErectionNearingClimaxFlav of M;
	otherwise if the reaction of the player is 0:
		say ErectionForceFlav of M;
	otherwise:
		say ErectionUseFlav of M;
	if M is not penetrating penis:
		compute post climax effect of M in penis;
	otherwise:
		decrease the sex-length of M by 1;
		stimulate penis from M;[special flavour for orgasms will trigger after normal flavour is shown.]
		say "[one of][M sex reaction][or][cycling]";
	compute slow grossness of M.

To compute post climax effect of (M - a monster) in (B - penis):[Note that this is not necessarily a "climax", just the end of the sex]
	FuckGet.

To compute virginity loss with (M - a monster) on (B - penis):
	if M is penis-virginity taking:
		check realtime virginity with M.

Chapter 2 Priority Attack

[If the monster has any unique actions that it would sometimes rather do than follow normal attack logic, those go here. These should generally not involve the player, so an example would be the giant wasp fertilising an egg]

This is the priority attack rule:
	follow the priority attack rules of current-monster;
	if the rule succeeded, rule succeeds.
The priority attack rule is listed last in the monster attack rules. [Listed 2nd]

Chapter 3 Taunting

[In this section, monsters tend to taunt the player or wait silently because the player is either immune to combat (e.g. resting in hammock) or the player is stuck in some other way (e.g. flying or stuck on a dildo). It should be very rare that a monster does anything else, but there are exceptions; for example the royal guard can DP a female player on a dildo pole and a demoness can curse a player's heels.]

This is the taunting rule:
	follow the taunting rules of current-monster;
	if the rule succeeded, rule succeeds.
The taunting rule is listed last in the monster attack rules. [Listed 3rd]

This is the flying player taunting rule:
	if the player is flying:
		compute the flying player taunting of current-monster;
		rule succeeds.
The flying player taunting rule is listed last in the default taunting rules.

To compute the flying player taunting of (M - a monster):
	if a random number between 1 and 6 is 1, say "[BigNameDesc of M] continues to wait for you to land.". [This should preferably be replaced for all monsters.]

This is the monster fucked player taunting rule:
	if there is a matron grabbing the player and current-monster is not matron: [TODO make a 'player is engaged' rulebook]
		compute the busy waiting of current-monster;
		rule succeeds;
	otherwise if the player is monster fucked or wanking > 0 and the player is prone: [NPCs watch the player wank if they would watch the player having sex.]
		follow the monster fucked taunting rule of current-monster;
		if the rule succeeded, rule succeeds;
	otherwise if wanking > 0: [Nearly all NPCs watch the player wank if standing.]
		compute the default taunting of current-monster;
		rule succeeds.
The monster fucked player taunting rule is listed last in the default taunting rules.

This is the default monster fucked taunting rule:
	do nothing. [This should preferably be replaced for all monsters that don't just blindly join in with sex. If the rule doesn't succeed, then that means that the monster will keep trying other things. So this monsters that do not wish to progress until the player is completely free should have "rule succeeds" here. Remember you can also use this function to have the monster interact with the player while they are fucked, e.g. to urinate on them.]

This is the dildo stuck player taunting rule:
	if the player is dildo stuck:
		compute the dildo stuck taunting of current-monster;
		rule succeeds.
The dildo stuck player taunting rule is listed last in the default taunting rules.

To compute the dildo stuck taunting of (M - a monster):
	if a random number between 1 and 6 is 1, say "[BigNameDesc of M] continues to wait for you to get off the dildo.". [This should preferably be replaced for all monsters. Remember you can also use this function to have the monster interact with the player while they are stuck on the dildo.]

This is the cage stuck player taunting rule:
	if dominatrix-cage is grabbing the player:
		compute the cage stuck taunting of current-monster;
		rule succeeds.
The cage stuck player taunting rule is listed last in the default taunting rules.

To compute the cage stuck taunting of (M - a monster): [This should preferably be replaced for all monsters. Remember you can also use this function to have the monster interact with the player while they are stuck on the cage.]
	if M is intelligent, say "[BigNameDesc of M] smirks at you, waves, then turns to leave you alone.";
	satisfy M.

Definition: a monster (called M) is willing to cage trap stuck punish:
	if diaper quest is 0 and there is an actual target body part, decide yes;
	if diaper quest is 1 and M is willing to forcefeed and face is not occupied, decide yes;
	decide no.

This is the cage trap stuck player taunting rule:
	if there is a triggered cage trap in the location of the player:
		if (the number of worn stuck clothing + the number of stuck body parts is 0) or current-monster is not willing to cage trap stuck punish: [if nothing is stuck, the player is too deep inside the cage to be punished. but if something is stuck, that means that the player's head is poking out of the cage.]
			compute the cage trap stuck taunting of current-monster;
			rule succeeds;
		otherwise if diaper quest is 1: [for TQ we just continue resolving punishment normally - the `reasonable target` definition makes sure to only allow face and breasts to be selected]
			compute the dq cage trap stuck punishment of current-monster;
			rule succeeds.
The cage trap stuck player taunting rule is listed last in the default taunting rules.

To compute the cage trap stuck taunting of (M - a monster):
	compute the busy waiting of M.

To compute the dq cage trap stuck punishment of (M - a monster):
	compute forcefeed of M.

This is the trap stuck player taunting rule:
	if the player is trap stuck:
		unless current-monster is patron and there is a fuckhole-mode glue penetrating face:
			compute the default taunting of current-monster;
			rule succeeds.
The trap stuck player taunting rule is listed last in the default taunting rules.

To compute the default taunting of (M - a monster):
	unless stripper cage is grabbing the player, say "[BigNameDesc of M] watches [if M is intelligent]with a facial expression of a mixture of incredulity and entertainment[otherwise]silently[end if].".

This is the busy waiting rule:
	if busy is 1:
		compute the busy waiting of current-monster;
		rule succeeds.
The busy waiting rule is listed last in the default taunting rules.

To compute the busy waiting of (M - a monster):
	if a random number between 1 and 6 is 1, say "[BigNameDesc of M] continues to wait.". [This should preferably be replaced for all monsters.]

Chapter 4 Punishment

The monster punishment rules is a rulebook.

This is the monster punishment rule:
	if the player is prone:
		[#LXorDD. Normally a 1 in 10 chance that even a dick detacher will try to detach rather than do their usual punishment. But if provoked beforehand, it can be as high as a 12 in 20 chance (60%).]
		if current-monster is a-dick-detacher and tough-shit is 1 and (detach-likelihood + a random number between 1 and 20) > 18:
			now detach-likelihood is 0;
			let method be 0;
			if penis-is-detachable by current-monster using 2:
				now method is 2;
			otherwise if penis-is-detachable by current-monster using 3:
				now method is 3;
			otherwise if penis-is-detachable by current-monster using 1:
				now method is 1;
			if method > 0:
				say "[BigNameDesc of current-monster] doesn't move. You've just started wondering if [he of current-monster] is about to show mercy, ";
				compute detach-players-dick by current-monster using method;
				rule succeeds;
		follow the monster punishment rules;
		if the rule succeeded, rule succeeds.
The monster punishment rule is listed last in the monster attack rules. [Listed 4th]

This is the monster latex punishment rule:
	follow the latex punishment rule of current-monster;
	if the rule succeeded, rule succeeds.
The monster latex punishment rule is listed last in the monster punishment rules.

This is the no latex punishment rule:
	do nothing.

This is the default latex punishment rule:
	if the latex-transformation of the player > 5:
		if current-monster is an intelligent human monster and the player is not top heavy:
			say LatexPunishmentFlav of current-monster;
			BustInflate 2;
		otherwise if current-monster is an aeromancer: [#LXorDD]
			let T be desired science tier of current-monster;
			if T > 2:
				say DefaultSpecialScienceFlavour;
				compute aeromancer science tier T of current-monster;
			otherwise:
				compute SelectionFrustrated of current-monster;
		otherwise:
			compute SelectionFrustrated of current-monster;
		bore current-monster for 600 seconds;
		rule succeeds.

To say DefaultSpecialScienceFlavour:
	say "[speech style of current-monster]'[one of]Ooh, a subject for my exp-AIR-iments!'[or]You look ready for another blast.'[or]Don't look worried, I'm sure you'll breeze through this procedure.'[or]Ah, back to provide more FAN service, I see?'[or]Here we AIR again!'[or]Oh look, my favourite volunt-AIR!'[stopping][roman type][line break]".

To say LatexPunishmentFlav of (M - a monster):
	say "[BigNameDesc of M] brings one of your nipples to [his of M] mouth, and blows powerfully for a few seconds. Your rubber tits inflate [one of]in front of your eyes[or]even larger[stopping]!".

This is the monster pulls collar rule:
	if pullstring collar is worn:
		follow the pullstring rule of current-monster;
		if the rule succeeded, rule succeeds.
The monster pulls collar rule is listed last in the monster punishment rules.

This is the default pullstring rule:
	if current-monster is intelligent and the collar-pulled of current-monster is 0:
		say "[BigNameDesc of current-monster] notices your [ShortDesc of pullstring collar]! After a brief moment of consideration, [he of current-monster] takes hold of the string and pulls it!";
		now monster-puller is current-monster;
		now auto is 1;
		try pulling pullstring collar;
		now auto is 0;
		now monster-puller is the player;
		if the bimbo of the player < 13, say "[variable custom style]'Uh-oh...'[roman type][line break]";
		now the collar-pulled of current-monster is 1;
		rule succeeds.

This is the monster plays diaper quest rule:
	if diaper quest is 1:
		increase the times-submitted of current-monster by 1; [In DQ, we use this to count the number of times the NPC has treated the player like a baby.]
		follow the diaper quest rules of current-monster;
		rule succeeds.
The monster plays diaper quest rule is listed last in the monster punishment rules.

This is the monster punishes diaper rule:
	if there is a worn diaper:
		follow the diaper punishment rule of current-monster;
		if the rule succeeded, rule succeeds.
The monster punishes diaper rule is listed last in the monster punishment rules.

This is the default diaper punishment rule:
	do nothing. [If the monster does something specific to players wearing diapers, consider replacing this rule with a rule that succeeds.]

This is the stolen item recovery rule:
	follow the stolen item recovery rule of current-monster;
	if the rule succeeded, rule succeeds.
The stolen item recovery rule is listed last in the monster punishment rules.

This is the default stolen item recovery rule:
	repeat with C running through held things:
		if the owner of C is current-monster and (C is not worn or C is actually strippable):
			if C is currently perceivable:
				compute current-monster reclaiming C;
				rule succeeds;
			otherwise if current-monster is intelligent and C is currently-in-bag and (current-monster is shopkeeper or the player is not getting lucky):
				let BH be a random worn bag of holding;
				say "[BigNameDesc of current-monster] spots [NameDesc of C] at the top of your [NameDesc of BH][if current-monster is shopkeeper].[otherwise]![end if]";
				FavourDown current-monster;
				compute current-monster reclaiming C;
				rule succeeds.

To compute (M - a monster) reclaiming (C - a thing):
	say ReclaimDeclaractionFlav of M for C;
	say ReclaimFlav of M for C;
	compute final resolution of M taking C.

To say ReclaimDeclaractionFlav of (M - a monster) for (C - a thing):
	if M is intelligent, say "[speech style of M]'[one of]I'll be taking this back.'[or]Give it back, thief!'[or]I'm going to make you regret taking this.'[or]Did you really thing you'd get away with stealing this from me?'[in random order][roman type][line break]".
To say ReclaimFlav of (M - a monster) for (C - a thing):
	say "[BigNameDesc of M] [if C is worn][one of]pulls[or]yanks[or]wriggles[at random] [NameDesc of C] off of you[otherwise]takes [NameDesc of C] back[one of] into [his of M] possession[or] from you[or][stopping][end if].".

This is the early bondage punishment rule:
	if current-monster is a bondage applier:
		now early-bondage-check is true;
		compute bondage application check of current-monster;
		now early-bondage-check is false;
		if bondage-successfully-applied is true, rule succeeds.
The early bondage punishment rule is listed last in the monster punishment rules.

This is the potion forcefeed punishment rule:
	if potion-forcefeed is appropriate:
		compute potion forcefeed of current-monster;
		rule succeeds.
The potion forcefeed punishment rule is listed last in the monster punishment rules.

This is the unique punishment rule:
	follow the unique punishment rule of current-monster;
	if the rule succeeded, rule succeeds.
The unique punishment rule is listed last in the monster punishment rules.

This is the default unique punishment rule:
	do nothing. [If the monster does something really cool (i.e. not sex) (e.g. the gladiator), replace this with a rule that succeeds. This could even be a rule that follows a whole new rulebook.]

This is the sex attempt rule:
	follow the sex attempt rules;
	rule succeeds. [If we do something here, we always end for the turn]
The sex attempt rule is listed last in the monster punishment rules.

The sex attempt rules is a rulebook.

Section 1 Orifice Selection

This is the selecting an orifice rule:
	follow the selecting an orifice rules;
	if the rule failed:
		compute SelectionFailure of current-monster;
		rule succeeds. [If we couldn't choose an orifice, the monster usually gives up for this turn and loses interest.]
The selecting an orifice rule is listed last in the sex attempt rules.

The selecting an orifice rules is a rulebook.

This is the bride consort waits for his wedding night rule:
	if current-monster is bride-consort and the consummation of betrothal-quest is false:
		if playerRegion is hotel and the ceremony of betrothal-quest is true:
			if the player is possessing a vagina and vagina is not actually occupied and the number of pussy covering actually unavoidable clothing is 0:
				if the player is not in Hotel06, drag to Hotel06 by current-monster;
				compute wedding night;
			otherwise if the player is not possessing a vagina and (asshole is not actually occupied or demon tail plug is worn) and the number of ass covering actually unavoidable clothing is 0:
				if the player is not in Hotel06, drag to Hotel06 by current-monster;
				compute wedding night;
		otherwise:
			if current-monster is friendly-fucking, say "[speech style of current-monster]'No, on second thoughts, I can't do this. It's not right. We should wait until after the ceremony!'[roman type][line break]";
			otherwise compute angry punishment of current-monster;
			satisfy current-monster;
		rule succeeds.
The bride consort waits for his wedding night rule is listed first in the selecting an orifice rules.

This is the monster convinced by player rule:
	follow the monster convinced rule of current-monster;
	if the rule succeeded, rule succeeds.
The monster convinced by player rule is listed last in the selecting an orifice rules.

Definition: a body part is a potential target: decide no.

Definition: face is a potential target:
	if current-monster is willing to do oral, decide yes;
	decide no.

Definition: thighs is a potential target: [Thighs is used to target for making the player lick something.]
	if grossness fetish > 0 and current-monster is willing to do licking, decide yes;
	decide no.

Definition: vagina is a potential target:
	if current-monster is willing to do vaginal and the player is possessing a vagina, decide yes;
	decide no.

Definition: asshole is a potential target:
	if current-monster is willing to do anal, decide yes;
	decide no.

Definition: belly is a potential target: [Belly is used to target for urination.]
	if current-monster is willing to urinate and watersports fetish is 1 and the latex-transformation of the player <= 4, decide yes;
	decide no.

Definition: breasts (called B) is a potential target:
	if B is breasts and current-monster is willing to do titfucks and (presented-orifice is breasts or the largeness of breasts > 6), decide yes;
	decide no.

Definition: penis (called B) is a potential target:
	if B is penis and the player is possessing a penis and current-monster is willing to charm snakes, decide yes;
	decide no.

Definition: an object is an actual target: decide no.

[REASONABLE TARGET means that the orifice can be accessed by the NPC, even after taking into account things already inside the orifice, e.g. plugs]
Definition: a body part (called B) is a reasonable target:
	[If you want the monster to ignore buttslut and/or be able to take out plugs, you'll need to define the correct functions for your monster.]
	if B is not a potential target, decide no; [First we check, is it a potential target? (see above)]
	if debugmode > 1, say "[ShortDesc of B] is a potential target...[line break]";
	if B is belly: [Instead it's about bladder fill.]
		if the bladder of current-monster >= 600, decide yes;
		decide no;
	if there is a triggered cage trap in the location of the player:
		unless (B is face or B is breasts or B is belly) and the number of worn stuck clothing + the number of stuck body parts is 0, decide no; [when trapped by a cage trap, the only parts accessible are your face and breasts, and that's only when you are stuck halfway out]
	if B is fuckhole:
		let C be a random worn top level ass protection clothing;
		if B is vagina, let C be a random worn top level protection clothing;
		if C is clothing and C is not rippable and C is not displacable and C is untearable and (C is not crotch-zipped or current-monster is not intelligent) and C is not vaginal seal and C is not chastity bond:
			if debugmode > 1, say "[C] cannot be removed!";
			decide no;
	otherwise if B is breasts:
		let C be a random worn top level titfuck protection clothing;
		if C is clothing and C is actually not-top-displacable and C is untearable:
			if debugmode > 1, say "[C] cannot be removed!";
			decide no;
	otherwise if B is face or B is thighs:
		let C be a random worn clothing penetrating face;
		if C is clothing and C is untearable:
			if debugmode > 1, say "[C] cannot be removed!";
			decide no;
	if B is occupied and B is not usable without penetration: [If it's usable without penetration e.g. the mannequin applying makeup, then we will always decide yes even if the player is gagged!]
		if B is fake occupied and current-monster is not concealment immune, decide no; [The NPC has been tricked by magic, it cannot perceive this orifice!]
		if B is actually occupied:
			repeat with T running through things penetrating B:
				if T is insertable or T is ballgag:
					if (T is cursed or T is locked) and current-monster is not able to remove cursed plugs, decide no; [There's a cursed thing in the way, so only NPCs that can remove cursed plugs can access this orifice.]
					if current-monster is not able to remove plugs, decide no; [There's a thing in the way, so only NPCs that can remove plugs can access this orifice.]
				otherwise: [e.g. a monster / trap is penetrating]
					decide no;
			[So, if it's insertable and the monster can remove it, we will probably end up deciding yes!]
	if B is not a fuckhole and facial-room-machine is grabbing the player, decide no;
	decide yes.

[ACTUAL TARGET means that the orifice can be accessed by the NPC, even after taking into account magical distractions, e.g. butt slut]
Definition: a body part (called B) is an actual target:
	if B is not a reasonable target, decide no; [First we check, is it a reasonable target? (see above)]
	if debugmode > 1, say "[ShortDesc of B] is a reasonable target...";
	if current-monster is butt slut immune, decide yes; [The NPC is not tricked by basic concealment magic!!]
	if debugmode > 1, say "The desirability of B is [the desirability of B][line break]";
	if the desirability of B <= 0, decide no;
	if debugmode > 1, say "[ShortDesc of B] is an actual target...";
	decide yes.

Definition: belly (called B) is an actual target: [We can always piss on a face unless it's being fucked.]
	if the blue-balls of current-monster > a random number between 0 and 9, decide no; [This NPC wants to orgasm!]
	if current-monster is wrapped, decide no; [can't piss through a condom!]
	if B is a reasonable target and the number of monsters filling face is 0, decide yes;
	[if debugmode > 0, say "[ShortDesc of B] is not an actual target...[line break]";]
	decide no.

Definition: a body part is usable without penetration: decide no. [If a monster can use the body part without penetration e.g. a mannequin applying makeup or a dominatrix spanking, then add a rule for the body part and then write "if current-monster is X, decide yes"]

Definition: a monster is concealment immune: decide no. [Can the monster ignore salves of concealment, butt slut, etc.]

Definition: a monster (called M) is butt slut immune: [Can the monster ignore the divine powers that force them to ignore vaginas?]
	if M is concealment immune, decide yes; [If they're immune to it all, they're immune to butt slut!]
	decide no.

Definition: a monster is able to remove cursed plugs: [Can the monster remove all plugs & gags?]
	if the player is diaper focused or the player is a blowjob slut, decide yes;
	decide no.

Definition: a monster (called M) is able to remove plugs: [Can the monster remove uncursed plugs?]
	if M is able to remove cursed plugs, decide yes; [In this way we don't need to redefine this if we've defined them as able to remove cursed plugs]
	if M is intelligent, decide yes;
	decide no.

This is the default monster convinced rule:
	if presented-orifice is a reasonable target:
		let C be the charisma of the player;
		if current-monster is seduction-refused, increase C by the virility of current-monster - the sex-length of current-monster; [The player tried to make our monster happy by reducing their sex length. Let's see how well that worked]
		if the number of worn cursed concealment salve is 0 and a random number between -1 and the charisma of the player >= 0:
			now the chosen-orifice of current-monster is presented-orifice;[This is on top so flavour can refer to chosen orifice.]
			say PresentAcceptanceFlav of current-monster;
			rule succeeds;
		otherwise if (presented-orifice is face or presented-orifice is belly) and current-monster is intelligent and there is a worn tongue piercing:
			say "[BigNameDesc of current-monster] was about to ignore you, but it seems that your tongue piercing made your request extremely convincing!";
			now the chosen-orifice of current-monster is presented-orifice;
			rule succeeds;
		otherwise:
			say PresentRejectionFlav of current-monster;
			now current-monster is not-getting-licked;
	otherwise if presented-orifice is not nothing:
		say PresentRejectionFlav of current-monster;
		now current-monster is not-getting-licked.

To say PresentAcceptanceFlav of (M - a monster):
	say "[BigNameDesc of M] seems convinced by your request!".

To say PresentRejectionFlav of (M - a monster):
	say "[BigNameDesc of M] seems to ignore your request.".

This is the monster choosing an orifice rule:
	if debugmode > 0, say "Valid body parts are: [list of actual target body parts][if presented-orifice is not nothing], but the [ShortDesc of current-monster] will avoid [presented-orifice] if possible[end if].";
	compute the orifice choosing of current-monster;
	if the chosen-orifice of current-monster is a body part, rule succeeds;
	otherwise rule fails.
The monster choosing an orifice rule is listed last in the selecting an orifice rules.

To compute the orifice choosing of (M - a monster):
	if the chosen-orifice of M is presented-orifice, now the chosen-orifice of M is nothing; [the NPC should try to reconsider if they're about to go for the body part the player presented which they've decided to reject]
	if the chosen-orifice of M is nothing or the chosen-orifice of M is not an actual target:
		if debugmode > 0, say "Rerolling sex selection.";
		choose a sex method;
		now the chosen-orifice of M is targeted-body-part.

To compute SelectionFailure of (M - a monster):
	if the number of live things penetrating a body part + the number of things grabbing the player is 0, compute SelectionFrustrated of M;
	otherwise compute SelectionWaiting of M.

[If you want monsters to wait around forever for their turn, then they should have their own one of these with no random chance.]
To compute SelectionWaiting of (M - a monster):
	if the selection-frustration of M > a random number between 4 and 10, compute SelectionFrustrated of M;
	otherwise increase the selection-frustration of M by 1. [The monster waits its turn.]

To say SelectionFrustrated of (M - a monster):
	say "[BigNameDesc of M] seems to look very frustrated, and then gives up.".

To compute SelectionFrustrated of (M - a monster):
	say SelectionFrustrated of M;
	bore M.

To compute chastity frustration of (M - a monster):
	if M is intelligent:
		now the chosen-orifice of current-monster is nothing;
		compute the orifice choosing of M;
		if the chosen-orifice of M is penis or the chosen-orifice of M is vagina:
			compute SelectionFrustrated of M;
		otherwise:
			say "[speech style of M]'Oh, you're [if vaginal seal is worn]very well protected down there[otherwise]stuck in chastity[end if]. Well in that case...'[roman type][line break]";
	otherwise:
		compute SelectionFrustrated of M.

This is the selection frustrated rule:
	if the player is at least partially immobile, compute SelectionWaiting of current-monster;
	otherwise compute SelectionFrustrated of current-monster;
	rule fails.
The selection frustrated rule is listed last in the default diaper quest rules.

To compute enticing of (M - a monster):
	let CM be current-monster;
	now current-monster is M;
	if diaper quest is 1:
		if the chosen-diaper-punishment of M is punishment-not-found or the chosen-diaper-punishment of M is dq-student-flee, choose a diaper punishment;
		if the chosen-diaper-punishment of M is punishment-not-found:
			if debugmode > 0, say "Tried to entice but no acceptable diaper punishment found.";
		otherwise if the chosen-diaper-punishment of M is dq-student-flee:
			if debugmode > 0, say "Tried to entice but student just wants to flee.";
		otherwise:
			if debugmode > 0, say "Tried to entice and successfully selected something.";
			say EnticeFlav of M for the chosen-diaper-punishment of M;
			let S be the relevant addiction of the chosen-diaper-punishment of M;
			if S > 5: [at 5 or less addiction, this can't happen]
				check enticing of M for yourself with temptation level S;
				if the player is prone, compute punishment of the chosen-diaper-punishment of M;
	otherwise:
		unless M is patron and the chosen-orifice of M is an actual target body part, compute the orifice choosing of M; [hotel patrons have usually already chosen what type of sex they intend to perform]
		let B be the chosen-orifice of M;
		if B is an actual target body part:
			say EnticeFlav of M with B;
			let S be the relevant sex addiction of B;
			if B is thighs:
				now S is the grossness addiction of the player;
			otherwise if B is belly:
				now S is the urine taste addiction of the player;
			otherwise:
				if watersports fetish is 0 and the class of the player is human toilet, increase S by 10;
			if interracial fetish is 1 and M is human:
				if M is dark skinned:
					if B is orifice, increase S by the bbc addiction of the player - 2;
					otherwise increase S by the bbc addiction of the player - 5;
				otherwise:
					decrease S by the bbc addiction of the player - 1;
			if S > 5: [at 5 or less addiction, this can't happen]
				if the enticement-strength of M with S <= 14:
					if B is thighs or B is face or B is belly:
						say "Your [one of]tongue tingles[or]throat spasms[cycling] with temptation, ";
					otherwise:
						say "Your [variable B] [one of]tingles[or]spasms[or]quivers[or]shivers[in random order] with [one of]temptation[or]desire[purely at random], ";
					say "[one of]you can feel your pupils dilating[or]and your heart beats faster at the thought[or]blood rushes to [if B is vagina or B is penis]it[otherwise]your [one of]loins[or]crotch[cycling][end if][in random order].";
					arouse S * 100;
					check for arousal change;
				check enticing of M for B with temptation level S;
				if the player is prone:
					follow the insertion rules of M;
					if watersports fetish is 0 and B is a fuckhole and wc hood is off-stage and wc hood is actually summonable:
						say "All of a sudden, your head is encased in a white latex hood! You can now sense that you have gained [']meat toilet['] class![line break][variable custom style][one of]Oh COME ON! In what universe is that a real class?![or]Uh-oh, I became a meat toilet again...[stopping][roman type][line break]";
						summon wc hood cursed;
	now current-monster is CM.

To decide which number is the enticement-strength of (M - a monster) with (S - a number):
	let A be the arousal of the player / 500;
	let G be the grossness of M - the grossness addiction of the player;
	let N be A + S;
	if G > 0, decrease N by G;
	if the class of the player is chosen one:
		increase N by 10;
		if N < 15, now N is 15;
	if debuginfo > 0, say "[input-style]Enticement stats: Arousal value ([A]) + Addiction level ([S])[if G > 0] - Grossness level ([G])[end if] = Enticement level [N][roman type][line break]";
	decide on N.

To check enticing of (M - a monster) for (B - a thing) with temptation level (S - a number):
	if the class of the player is chosen one:
		let H be a random worn headgear;
		say "[bold type][BigNameDesc of H] [bold type]pulses gently on your forehead.[roman type][line break]";
	let N be the enticement-strength of M with S;
	if N > 14, say EnticedFlav of M for B with enticement level N; [This way, there's some flavour if we got close but not quite close enough for the first level of enticement]
	if the player is upright:
		if N > 28 or the player is extremely horny:
			if debuginfo > 0, say "[input-style]Above 28 = maximum enticement level![roman type][line break]";
			if S > 7, say "The combination of your arousal and [if diaper quest is 1]predilections[otherwise]addiction[end if] makes it impossible for you to resist!";
			otherwise say "Your extreme arousal makes it impossible for you to resist!";
			say "[variable custom style][one of]I'm supposed to be fighting... But my body is acting of its own accord... I can't stop myself[or]I need it so badly[stopping]![roman type][line break]";
			now auto is 1;
			try kneeling;
			now auto is 0;
		otherwise if N > 22:
			if debuginfo > 0, say "[input-style]Above 22 = enticement level 3[roman type][line break]";
			say "[if the player is a bit horny]The combination of your arousal and[otherwise]Your[end if] [if diaper quest is 1]predilections[otherwise]addiction[end if] makes it extremely difficult for you to resist! The damage of your attacks against [NameDesc of M] will be seriously reduced.[paragraph break]Get on your knees and consent to what [he of M][']s asking for?[roman type][line break]";
			increase the temporary-damage-reduction of M by 3;
			if the player is consenting:
				say "[variable custom style][one of][big he of M] is so convincing[or]I want it! I need it[cycling]![roman type][line break]";
				now auto is 1;
				try kneeling;
				now auto is 0;
		otherwise if N > 18:
			if debuginfo > 0, say "[input-style]Above 18 = enticement level 2[roman type][line break]";
			say "[if the player is a bit horny]The combination of your arousal and[otherwise]Your[end if] attitude towards such acts makes it very difficult for you to resist! The damage of your attacks against [NameDesc of M] will be significantly reduced.[paragraph break]Get on your knees and consent to what [he of M][']s asking for?[roman type][line break]";
			increase the temporary-damage-reduction of M by 2;
			if the player is consenting:
				say "[variable custom style][one of]Just this once[or]I'm not going to make a habit of this, but it makes sense this time[cycling]...[roman type][line break]";
				now auto is 1;
				try kneeling;
				now auto is 0;
		otherwise if N > 14:
			if debuginfo > 0, say "[input-style]Above 14 = enticement level 1[roman type][line break]";
			say "[if the player is a bit horny]The combination of your arousal and[otherwise]Your[end if] attitude towards such acts makes it very difficult for you to resist! The damage of your attacks against [NameDesc of M] will be slightly reduced.[paragraph break]Get on your knees and consent to what [he of M][']s asking for?[roman type][line break]";
			increase the temporary-damage-reduction of M by 1;
			if the player is consenting:
				say "[variable custom style][one of]This is a tactical decision, nothing more[or]I'm not going to make a habit of this, but it makes sense this time[stopping]...[roman type][line break]";
				now auto is 1;
				try kneeling;
				now auto is 0;
		otherwise:
			if debuginfo > 0, say "[input-style]Below 15 = enticement level 0[roman type][line break]".


To say EnticeFlav of (M - a monster) with (B - face):
	if M is male:
		say "[BigNameDesc of M] brandishes [his of M] [LongDickDesc of M]. ";
		if M is intelligent, say "[line break][speech style of M]'[one of]Come on, you know you want to suck it.'[or]Just imagine how good this tastes...'[or]Are you sure you wouldn't rather just get on your knees and get facefucked already?'[in random order][roman type][line break]";
		otherwise say "[big he of M] gestures it towards your face.";
	otherwise:
		say "[BigNameDesc of M] twirls and shows you [his of M] rear end. ";
		if M is intelligent, say "[line break][speech style of M]'[one of]Come on, you know you want your face in here.'[or]I bet you can't wait for me to sit on your face...'[or]My pussy and your face are late for their date!'[or]Your face is late for its date with my pussy!'[in random order][roman type][line break]";
		otherwise say "[big he of M] gestures it towards your face.".

To say EnticeFlav of (M - a monster) with (B - breasts):
	if M is male:
		say "[BigNameDesc of M] brandishes [his of M] [LongDickDesc of M]. ";
		if M is intelligent, say "[line break][speech style of M]'[one of]Come on, you know you want to titfuck me.'[or]I bet this would feel really good in between your tits...'[or]Have you ever given a titfuck to a [manly-penis] like this before?'[in random order][roman type][line break]";
		otherwise say "[big he of M] gestures it towards your [BreastDesc].";
	otherwise:
		say "[big he of M] gestures towards your [BreastDesc].".

To say EnticeFlav of (M - a monster) with (B - belly):
	if M is male, say "[BigNameDesc of M] brandishes [his of M] [LongDickDesc of M]. ";
	otherwise say "[BigNameDesc of M] spreads [his of M] pussy lips. ";
	if M is intelligent, say "[line break][speech style of M]'[one of]Do you really want to fight me? Or do you just want to be a good little urinal?'[or]Do you want to drink some piss?'[or]Give up now, get on your knees, and drink my piss like a good little urinal.'[or]Kneel for my piss, my thirsty little urinal!'[in random order][roman type][line break]";
	otherwise say "It seems clear that [he of M] wants to piss on you.".

To say EnticeFlav of (M - a monster) with (B - thighs):
	if M is eager to do anilingus, say "[BigNameDesc of M] turns around and exposes [his of M] asshole. ";
	otherwise say "[BigNameDesc of M] points one of [his of M] feet towards you. ";
	if M is intelligent, say "[line break][speech style of M]'[one of]I'm going to make you lick this clean.'[or]The taste of my [if M is eager to do anilingus]asshole[otherwise]foot[end if] is going to be on your tongue for hours.'[or]Surrender, slut, and [if M is eager to do anilingus]bury your tongue in my ass[otherwise]kiss my feet[end if] to beg for mercy.'[in random order][roman type][line break]";
	otherwise say "It seems clear that [he of M] wants you to lick it.".

To say EnticeFlav of (M - a monster) with (F - a fuckhole):
	if M is male, say "[BigNameDesc of M] brandishes [his of M] [LongDickDesc of M]. ";
	if M is intelligent:
		let T be "[one of]asshole[or]butthole[or]backdoor[as decreasingly likely outcomes]";
		if F is vagina, now T is "[one of][pussy][or][cunt][or]slit[as decreasingly likely outcomes]";
		say "[line break][speech style of M]'[one of]Just think how good you'll feel if you let me inside your [T]...'[or]Get on your knees, and let me ruin your [T] already...'[or]Calm yourself, sweetheart. All I want to do is fuck your [T].'[or]When I get you on your knees, this is going inside your [T]...'[or]Surrender now, and perhaps I'll be merciful on your [T].'[or]I'm going to make your [T] feel so good...'[in random order][roman type][line break]";
	otherwise:
		say "It seems clear that [he of M] wants to fuck your [variable F].".

To say EnticeFlav of (M - a monster) with (B - a body part):
	if M is male, say "[BigNameDesc of M] brandishes [his of M] [LongDickDesc of M]. ";
	otherwise say "[BigNameDesc of M] spreads [his of M] pussy lips. ";
	say "It seems clear that [he of M] has plans for your [B].".

To say EnticedFlav of (M - a monster) for (B - a thing) with enticement level (N - a number):
	say "".

To say EnticedFlav of (M - a monster) for (B - breasts) with enticement level (N - a number):
	if N > 28:
		say "You feel your [BreastDesc] pulsing with urgent need, almost pulling you towards [NameDesc of M] with a mind of their own!";
	otherwise if N > 22:
		say "You feel your [BreastDesc] light up with aches of desire, as your mind races with excited thoughts of what [NameDesc of M] might do to them.";
	otherwise if N > 18:
		say "You feel your [BreastDesc] tingle with longing, as invasive thoughts of how good it would feel to just let [NameDesc of M] [if M is male]fuck[otherwise]do what [he of M] wants with[end if] them cloud your mind.";
	otherwise if N > 14:
		say "A not-so-small corner of your mind agrees with [NameDesc of M]... Why not just submit to [him of M] and enjoy the feeling of [him of M] [if M is male]fucking[otherwise]using[end if] your breasts?";
	otherwise:
		say "Your [BreastDesc] tingle, clearly not compeletely opposed to just doing exactly that.".

To say EnticedFlav of (M - a monster) for (B - thighs) with enticement level (N - a number):
	if M is eager to do anilingus:
		if N > 28:
			say "You feel your tongue exit your mouth without you making a conscious decision to have it do so, and start pulling itself towards [NameDesc of M][']s disgusting unwashed asshole. It desperately pleads with the rest of your body to follow suit...";
		otherwise if N > 22:
			say "You can't bring yourself to look away from [NameDesc of M][']s puckered brown star. You feel your tongue aching with a desperate desire to dive deep inside that disgusting hole...";
		otherwise if N > 18:
			say "As you stare at [NameDesc of M][']s tight little sphincter, your mouth begins to salivate with a weird, twisted sexual hunger.";
		otherwise:
			say "You find yourself rubbing your tongue against the inside of your front teeth, trying to imagine what [NameDesc of M][']s gross puckered asshole tastes like.";
		say "[variable custom style][one of]What the fuck is wrong with me?![or]It's going to taste so bad... But... Still...[stopping][roman type][line break]";

To say EnticedFlav of (M - a monster) for (B - belly) with enticement level (N - a number):
	if M is male:
		if N > 28:
			say "Your mouth obediently opens wide without a second thought, as a large part of your body and soul clearly feels that things would be a lot simpler and happier if you just obediently accepted your place as a human urinal.";
		otherwise if N > 22:
			say "Your heartbeat quickens, and you suddenly feel a desperate craving to drink this [man of M][']s delicious [urine]!";
		otherwise if N > 18:
			say "Your mouth salivates as you look at [NameDesc of M][']s [LongDickDesc of M], and you can't help but lick your lips with anticipation. What would be so bad about just indulging in a drink of [his of M] [urine] like [he of M] wants?";
		otherwise if N > 14:
			say "You bite your bottom lip as your tongue yearns for a sample of the taste of [his of M] [urine].";
		otherwise:
			say "[second custom style]It would be simpler and less stressful to just drink [his of M] [urine] rather than fight [him of M]... And probably more fun, too.[paragraph break][variable custom style]...Did I really just think that?![roman type][line break]".

To say EnticedFlav of (M - a monster) for (B - face) with enticement level (N - a number):
	if M is male:
		if N > 28:
			say "Your mouth obediently opens wide without a second thought, and you feel your legs begin to wobble as your mind starts to shut down and your body urges you to swallow that delicious shaft as soon as humanly possible!";
		otherwise if N > 22:
			say "Your heartbeat quickens, and you stare at [NameDesc of M][']s majestic [LongDickDesc of M] as if hypnotised. You feel your tongue throbbing with a desperate need to taste it.";
		otherwise if N > 18:
			say "Your mouth salivates as you look at [NameDesc of M][']s [LongDickDesc of M], and you can't help but lick your lips with anticipation. What would be so bad about just sucking [his of M] [manly-penis] like [he of M] wants?";
		otherwise if N > 14:
			say "Seeing [NameDesc of M][']s [LongDickDesc of M] out and swinging like that is more than just distracting... It's downright *enticing*. It probably tastes really good.";
		otherwise:
			say "A small part of your brain agrees that [his of M] proposition does indeed sound pretty appealing...".

To say EnticedFlav of (M - a monster) for (F - a fuckhole) with enticement level (N - a number):
	if M is male:
		if N > 28:
			say "Your [variable F] burns with a desperate need to be filled by [NameDesc of M][']s glorious [LongDickDesc of M] right fucking now!!! You feel your legs shaking... Willing you to stop, drop, turn, spread and present.";
		otherwise if N > 22:
			say "Your hands shoot down to your [variable F] and clench it tightly, trying to suppress the aching desire and the sudden physical pulsing with need that [NameDesc of M] has elicited from it.";
		otherwise if N > 18:
			say "In response, your [variable F] tingles with anticipatory delight, and your legs feel a little wobbly, like they'd prefer you to just drop to your knees and give [NameDesc of M] what [he of M][']s asking for.";
		otherwise if N > 14:
			say "You shudder with arousal, and your [variable F] twitches, apparently rather keen to submit to [NameDesc of M][']s wishes.";
		otherwise:
			say "You clench your thighs together, trying to suppress the ripples of desire that just flowed through your [variable F].";
			say "[variable custom style]That [if M is presenting as female]bitch[otherwise]bastard[end if]! I can't believe my body is reacting to [if M is intelligent][his of M] words[otherwise][him of M][end if] like this![roman type][line break]".


Section 2 Clothing Removal and Insertion

This is the monster insertion rule:
	follow the insertion rules of current-monster. [We don't need "rule succeeds" here because the rule that called the sex attempt rules doesn't check.]
The monster insertion rule is listed last in the sex attempt rules.

To say ClothingAttackDebug of (M - a monster) on (C - a clothing) with (R - a number):
	say "[input-style][ShortDesc of M] Clothing Destruction Check: burn ability ([if the difficulty of M < 6]2d[7 - the difficulty of M]+[(the difficulty of M - 1) * 2][otherwise if the difficulty of M > 6]2d[the difficulty of M - 5]+10[otherwise]6 + 6[end if]) = [R] | [the defence of the player].5 underwear defence[roman type][line break]".

To compute (M - a monster) attacking (C - a clothing): [This should change for any special flavour or varied mechanics on how the clothing is removed.]
	if C is crotch-zipped and M is intelligent:
		say UnzipFlav of M at C;
		ZipDown C;
	otherwise if C is locked and M is not a clothes-destroyer:
		compute M unlocking C;
		now C is temporarily-unlocked;
	otherwise:
		say PullAttempt of M at C;
		let R be (a random number between the difficulty of M and 6) + (a random number between the difficulty of M and 6);
		if debuginfo > 0, say ClothingAttackDebug of M on C with R;
		if the chosen-orifice of M is breasts and C is actually top-displacable:
			compute M topdisplacing C;
		otherwise if the chosen-orifice of M is not breasts and R > the defence of C - 3 and C is displacable and a random number between -1 and unlucky <= 0: [NPCs rarely displace clothing when unlucky is enabled]
			compute M displacing C;
		otherwise if R > the defence of C - 2 and C is rippable and a random number between -2 and unlucky <= 0: [NPCs less commonly rip clothing when unlucky is enabled]
			compute M ripping C;
		otherwise if M is intelligent and C is tearable and R > the defence of C + 2:
			compute M removing C;
		otherwise if R > the defence of C and (C is tearable or the damage of C >= 5):
			compute M destroying C;
		otherwise:
			say WeakenFlav of M on C;
			damage C.

To compute (M - a monster) pulling off (C - a clothing): [For when it's unacceptable to leave the item partially worn]
	if C is locked and M is not a clothes-destroyer:
		compute M unlocking C;
		now C is temporarily-unlocked;
	otherwise:
		say PullAttempt of M at C;
		let R be (a random number between the difficulty of M and 6) + (a random number between the difficulty of M and 6);
		if debuginfo > 0, say ClothingAttackDebug of M on C with R;
		if M is intelligent and C is tearable and R > the defence of C + 2:
			compute M removing C;
		otherwise if R > the defence of C and (C is tearable or the damage of C >= 5):
			compute M destroying C;
		otherwise:
			say WeakenFlav of M on C;
			damage C.

To compute (M - a monster) attacking (C - a diaper):
	say PullAttempt of M at C;
	if C is crotch-zipped and M is intelligent:
		say UnzipFlav of M at C;
		ZipDown C;
	otherwise if C is locked and M is not a clothes-destroyer:
		compute M unlocking C;
		now C is temporarily-unlocked;
	otherwise if C is tearable and C is actually strippable:
		say "[BigNameDesc of M] effortlessly pulls off your [ShortDesc of C]!";
		if M is intelligent:
			now M is carrying C;
			now C is temporarily-removed;
		otherwise:
			now C is in the location of the player;
		dislodge C;
	otherwise if C is rippable:
		compute M ripping C;
	otherwise:
		compute M destroying C.

To compute (M - a monster) removing (C - a thing): [This is used for removing insertables]
	if M is intelligent:
		say "[BigNameDesc of M] [if C is locked]unlocks, and then [end if][if C is penetrating an orifice]effortlessly pulls out[otherwise][one of]removes[or]relieves you of[or]confiscates[then at random][end if] your [ShortDesc of C].";
		if C is clothing: [stuff like squirt dildo isn't clothing]
			now C is temporarily-removed;
			now M is carrying C;
		otherwise:
			now C is in the location of the player;
	otherwise:
		say "[BigNameDesc of M] [if C is locked]unlocks, and then [end if][if C is penetrating an orifice]effortlessly pulls out[otherwise]removes[end if] your [ShortDesc of C] and discards it onto the floor.";
		now C is in the location of the player;
	if C is cursed pacifier and the raw intelligence of the player > 1:
		let I be the raw intelligence of the player / 2;
		increase the stolen-intelligence of C by I;
		say "[bold type]You feel [NameDesc of C] [bold type]steal [if I < 3]some[otherwise]a huge amount[end if] of your intelligence as you remove it! [roman type]It's probably trying to ensure that it gets replaced after this is over...";
		decrease the raw intelligence of the player by I;
	dislodge C.

To compute (M - a monster) removing (C - a chastity bond):
	if M is intelligent:
		say "[BigNameDesc of M] [if C is locked]unlocks your [ShortDesc of C] and pulls it off.[otherwise]pulls off your [ShortDesc of C].[end if]";
		now M is carrying C;
		now C is temporarily-removed;
	otherwise:
		say "[BigNameDesc of M] tears open your [ShortDesc of C]!";
		destroy C.

To compute (M - a monster) removing (C - vaginal seal):
	if M is intelligent:
		say "[BigNameDesc of M] touches your [ShortDesc of C].[line break][speech style of M]'Oh no, a magic seal! I see your goddess[']s magic is protecting your womb from being defiled. I guess I can't fuck you here after all...'[roman type][line break][big he of M] smirks.[line break][speech style of M]'Just kidding. There's no way a basic runic seal like this can stop me.'[roman type][line break]You hear a sound like glass breaking as [NameDesc of M] defeats [NameDesc of C][']s magic, and destroys the seal! You gasp with [horror the vaginal sex addiction of the player * 2] at your [vagina] suddenly becoming vulnerable to being defiled!";
		destroy C;
	otherwise:
		say "[BigNameDesc of M] tears off your [ShortDesc of C]!";
		destroy C.

To say UnzipFlav of (M - a monster) at (C - a clothing):
	say "[BigNameDesc of M] pulls down the zipper on your [ShortDesc of C][if the number of ass covering clothing is 1], exposing your [fuckholes][end if]!".

To say PullAttempt of (M - a monster) at (C - a clothing):
	say "[BigNameDesc of M] pulls at your [ShortDesc of C]!".

To compute (M - a monster) destroying (C - a clothing):
	say "[BigNameDesc of M] rips it off, destroying it completely!";
	destroy C.

To compute (M - a monster) ripping (C - a clothing):
	say "[BigNameDesc of M] manages to create a tear in the fabric! Your [ShortDesc of C] is now permanently ripped.";
	now C is crotch-ripped.

To compute (M - a monster) displacing (C - a clothing):
	say "[BigNameDesc of M] [DisplacesFlav of C].";
	displace C.

To say DisplacesFlav of (C - a clothing):
	say "pulls the [if C is hobble-skirted]skirt of your [ShortDesc of C] up, exposing your crotch[otherwise if C is trousers]waistband of your [ShortDesc of C] down to your knees[otherwise]crotch section of your [ShortDesc of C] to one side[end if]".

To compute (M - a monster) unlocking (C - a clothing):
	let K be a random unlock-key covering C;
	if K is a thing and K is held by M:
		say "[BigNameDesc of M] [KeyUnlocksFlav of C]";
	otherwise if M is a generic-unlocker:
		say "[BigNameDesc of M] [SkeletonKeyUnlocksFlav of C]";
	otherwise:
		say "[BigNameDesc of M] [MagicUnlocksFlav of C]";
	unlock C.

To say KeyUnlocksFlav of (C - a clothing):
	say "produces the key for your [ShortDesc of C], puts it into the lock, and twists. [BigNameDesc of C] is now unlocked!".

To say SkeletonKeyUnlocksFlav of (C - a clothing):
	say "produces a key, inserts it into the lock of your [ShortDesc of C], and twists. It works! [BigNameDesc of C] is now unlocked!".

To say MagicUnlocksFlav of (C - a clothing):
	say "touches the lock on your [ShortDesc of C], and to your surprise, it suddenly clicks open! Was that luck, or magic, or what?! In any case, [NameDesc of C] is now unlocked!".

To compute (M - a monster) replacing (C - a clothing):
	say "[BigNameDesc of M] pulls the [if C is hobble-skirted]skirt of your [ShortDesc of C] back down[otherwise if C is trousers]waistband of your [ShortDesc of C] back up to its proper place[otherwise]crotch section of your [ShortDesc of C] back in place[end if].";
	replace C.

To compute (M - a monster) topdisplacing (C - a clothing):
	say "[BigNameDesc of M] [TopDisplacesFlav of C].";
	topdisplace C.

To say TopDisplacesFlav of (C - a clothing):
	say "pulls your [ShortDesc of C] away".

To say WeakenFlav of (M - a monster) on (C - a clothing):
	say "[if C is destructible]The [clothing-material of C][otherwise]Its grip on your body[end if] is weakening.".

[!<SetUpSexLengthOfMonsterInBodypart>+

Sets the sex-length property of a monster "M" based on a body part "B".
sex-length is the duration of sexual acts with the monster, not the length of their dick (assuming they even have one).

@param <Monster>:<M> The monster that is planning to fuck the player
@param <BodyPart>:<B> The bodypart "M" is planning to fuck
+!]
To set up sex length of (M - a monster) in (B - a body part):
	set up sex length (virility of M) of M in B.

To decide which number is the virility of (M - a monster):
	if M is male:
		if interracial fetish is 1:
			if M is dark skinned, decide on (a random number between 3 and 5) + the trophy-mode of bbc-trophy;
			otherwise decide on (a random number between 3 and 4) - the trophy-mode of bbc-trophy;
	decide on a random number between 3 and 6.

Definition: a monster is prematurable:
	if it is male and it is human and it is intelligent, decide yes;
	decide no.

This is the whiteboy premature orgasm insertion rule:
	if current-monster is pale skinned and current-monster is prematurable and (the trophy-mode of bbc-trophy is 1 or the player is queen of spades):
		let QS be the number of worn interracial themed currently visible wearthings + the trophy-mode of bbc-trophy;
		let QST be QS * (the trophy-mode of bbc-trophy + 1);
		let DR be a random number between 1 and the difficulty of current-monster;
		if debuginfo > 0, say "[input-style]Premature ejaculation avoidance check: [MediumDesc of current-monster] difficulty roll d[difficulty of current-monster] ([DR]) | ([QST].5) number of worn interracial items[if the trophy-mode of bbc-trophy is 1] (doubled from [QS] by BBC trophy effect)[end if][if the difficulty of current-monster is DR] - AUTOMATIC SUCCESS: highest possible roll[end if][roman type][line break]";
		if DR < the difficulty of current-monster and DR <= QST:
			say PrematureEjaculationFlav of current-monster;
			if current-monster is not wrapped, SemenPuddleUp (the semen load of current-monster) in (the location of current-monster);
			say PrematureEjaculationReactionFlav of current-monster;
			if current-monster is patron:
				say "[speech style of current-monster]'I can't believe I still have to pay for this.'[roman type][line break]";
				compute payment of current-monster;
			otherwise:
				orgasm bore current-monster;
				say "Visibly embarrassed, [NameDesc of current-monster] begins to slink away[if current-monster is wrapped], the cum-filled condom still wrapped around [his of current-monster] [sissy-penis][end if].";
			rule succeeds.
The whiteboy premature orgasm insertion rule is listed first in the default monster insertion rules.

To say PrematureEjaculationFlav of (M - a monster):
	say "[BigNameDesc of M] [one of]moves [his of M] [manly-penis] into position[or]strokes [his of M] shaft a couple of times to prepare [himself of M][or]takes [his of M] [manly-penis] in one hand, preparing [himself of M][in random order]. Then, suddenly, [he of M] is ejaculating! [big his of M] [load of M] [if M is wrapped]dribbles into the condom[otherwise]drips to the ground[end if].".
To say PrematureEjaculationReactionFlav of (M - a monster):
	say "[speech style of M]'[one of]Wha? This never usually happens, I swear!'[or]Did I just... No way...'[or]I... Uh... You should consider this a warning.'[or]I... err... I've decided to be merciful to you this time and let you go.'[in random order][roman type][line break]".

[!<ComputeUniquePenetrationEffectOfMonsterInBodypart>+

Defines a unique effect for a monster "M" penetrating the player in bodypart "B". Note that this function is by default called BEFORE M is penetrating B.

@param <Monster>:<M> The monster that is penetrating the player
@param <BodyPart>:<B> The bodypart "M" is penetrating
+!]
To compute unique penetration effect of (M - a monster) in (B - a body part):
	do nothing.

[!<SetUpSexLengthNumberOfMonsterInBodypart>+

Sets the sex-length property of a monster to a given property as long as it is 0 or less. Optionally modified based on the body part the monster is about to have sex with

@param <Integer>:<N> The number to which sex-length will be set
@param <Monster>:<M> The monster that is planning to fuck the player
@param <BodyPart>:<B> The bodypart "M" is planning to fuck
+!]
To set up sex length (N - a number) of (M - a monster) in (B - a body part):[ONLY assigns N to the sex length field if it is 0. If a monster potentially has a special sex length, this function does not do anything. Use "now sex length is X" instead]
	if the sex-length of M <= 0, now the sex-length of M is N.

This is the monster asshole insertion rule:
	if the chosen-orifice of current-monster is asshole, follow the monster asshole insertion rules.
The monster asshole insertion rule is listed in the default monster insertion rules.

The monster asshole insertion rules is a rulebook.

This is the monster attacking ass covering clothing rule:
	let C be a random worn top level ass protection clothing;
	if C is clothing:
		compute current-monster attacking C;
		rule succeeds.
The monster attacking ass covering clothing rule is listed last in the monster asshole insertion rules.

This is the monster removing butt plug rule:
	let C be a random worn insertable tearable thing penetrating asshole;
	if C is a thing:
		compute current-monster removing C;
		rule succeeds.
The monster removing butt plug rule is listed last in the monster asshole insertion rules.

This is the monster penetrating asshole rule:
	if (current-monster is male or current-monster is tentacle monster) and (there is a held condom-providing thing or current-monster is condom prepared), compute condom request choice of current-monster;
	compute current-monster entering anally;
	rule succeeds.
The monster penetrating asshole rule is listed last in the monster asshole insertion rules.

To get anal penetration image for (M - a monster):
	do nothing.

To compute (M - a monster) entering anally:
	compute M entering asshole;
	compute grossness of M.

To compute (M - a monster) entering (F - a fuckhole):
	if F is not actually occupied:
		set up sex length of M in F;
		say "[BigNameDesc of M] forces [himself of M] into your [variable F]";
		now M is penetrating F;
		compute unique penetration effect of M in F;
		ruin F;
	otherwise:
		say "[BigNameDesc of M] sees that you are already occupied and loses interest.";
		Bore M.

To compute (M - a monster) entering (F - asshole):
	if F is not actually occupied:
		set up sex length of M in F;
		if (M is friendly-fucking or presented-orifice is F) and M is intelligent, say FriendlyAssholePenetrationFlav of M;[You can't really have "friendly" sex with unintelligent monsters anyway]
		otherwise say AssholePenetrationFlav of M;[If you just want to change the text, replace the Flav function. Otherwise replace the entire compute function.]
		now M is penetrating F;
		compute unique penetration effect of M in F;
		ruin F;
		get anal penetration image for M;
		say GangAnnounce;
	otherwise:
		say "[BigNameDesc of M] sees that you are already occupied and loses interest.";
		distract M.

This is the monster vagina insertion rule:
	if the chosen-orifice of current-monster is vagina, follow the monster vagina insertion rules.
The monster vagina insertion rule is listed in the default monster insertion rules.

The monster vagina insertion rules is a rulebook.

This is the monster unlocks annoying cages rule:
	let C be a random worn chastity bond;
	if vaginal seal is worn, now C is vaginal seal;
	if C is top level protection clothing:
		if diaper quest is 1:
			compute current-monster removing C;
		otherwise if (C is cursed or C is glued or C is vaginal seal) and current-monster is not able to remove cursed plugs:
			compute chastity frustration of current-monster;
		otherwise if C is locked:
			let K be a random specific-key covering C;
			if (K is a thing and current-monster is carrying K) or (K is a thing and K is off-stage) or (current-monster is generic-unlocker and bondage protection > 0):
				say "[BigNameDesc of current-monster] takes out [his of current-monster] key and unlocks your [ShortDesc of C].";
				compute current-monster removing C;
			otherwise:
				compute chastity frustration of current-monster;
		otherwise:
			compute current-monster removing C;
		rule succeeds.
The monster unlocks annoying cages rule is listed last in the monster vagina insertion rules.

This is the monster attacking pussy covering clothing rule:
	let C be a random worn top level protection clothing;
	if C is clothing:
		compute current-monster attacking C;
		rule succeeds.
The monster attacking pussy covering clothing rule is listed last in the monster vagina insertion rules.

This is the monster removing cunt plug rule:
	let C be a random worn insertable tearable thing penetrating vagina;
	if C is a thing:
		compute current-monster removing C;
		rule succeeds.
The monster removing cunt plug rule is listed last in the monster vagina insertion rules.

This is the monster penetrating vagina rule:
	if (current-monster is male or current-monster is tentacle monster) and (there is a held condom-providing thing or current-monster is condom prepared), compute condom request choice of current-monster;
	compute current-monster entering vaginally;
	rule succeeds.
The monster penetrating vagina rule is listed last in the monster vagina insertion rules.

To get vaginal penetration image for (M - a monster):
	do nothing.

To compute (M - a monster) entering vaginally:
	compute M entering vagina;
	compute grossness of M.

To compute (M - a monster) entering (F - vagina):
	if F is not actually occupied:
		set up sex length of M in vagina;
		if (M is friendly-fucking or presented-orifice is vagina) and M is intelligent, say FriendlyVaginaPenetrationFlav of M;
		otherwise say VaginaPenetrationFlav of M; [If you just want to change the text, replace the Flav function. Otherwise replace the entire compute function.]
		now M is penetrating vagina;
		compute unique penetration effect of M in vagina;
		ruin vagina;
		get vaginal penetration image for M;
		say GangAnnounce;
	otherwise:
		say "[BigNameDesc of M] sees that you are already occupied and loses interest.";
		distract M.

This is the monster mouth insertion rule:
	if the chosen-orifice of current-monster is face, follow the monster mouth insertion rules.
The monster mouth insertion rule is listed in the default monster insertion rules.

The monster mouth insertion rules is a rulebook.

This is the monster removing gag rule:
	let C be a random worn tearable clothing penetrating face;
	if C is a thing:
 		if C is locked:
			compute current-monster unlocking C;
			now C is temporarily-unlocked;
		compute current-monster removing C;
		rule succeeds;
	if current-monster is clothes-destroyer:
		let C be a random worn destructible clothing penetrating face;
		if C is a thing, compute current-monster destroying C;
		rule succeeds.
The monster removing gag rule is listed last in the monster mouth insertion rules.

This is the monster penetrating mouth rule:
	if (current-monster is male or current-monster is tentacle monster) and (there is a held condom-providing thing or current-monster is condom prepared), compute condom request choice of current-monster;
	compute current-monster entering mouth;
	compute grossness of current-monster;
	rule succeeds.
The monster penetrating mouth rule is listed last in the monster mouth insertion rules.

To get facial penetration image for (M - a monster):
	do nothing.

To compute (M - a monster) entering mouth:
	compute M default entering mouth.

To compute (M - a monster) default entering mouth:
	if face is not occupied: [The whole 'face is not occupied' stuff is so that we can try and call this from other areas of the code.]
		set up sex length of M in face;
		if M is friendly-fucking, say FriendlyMouthPenetrationFlav of M;
		otherwise say MouthPenetrationFlav of M; [If you just want to change the text, replace the Flav function. Otherwise replace the entire compute function.]
		now M is penetrating face;
		compute unique penetration effect of M in face;
		get facial penetration image for M;
		say GangAnnounce;
	otherwise:
		say "[BigNameDesc of M] sees that you are already occupied and loses interest.";
		distract M.

This is the monster licking insertion rule:
	if the chosen-orifice of current-monster is thighs, follow the monster licking insertion rules.
The monster licking insertion rule is listed in the default monster insertion rules.

The monster licking insertion rules is a rulebook.

The monster removing gag rule is listed last in the monster licking insertion rules.

This is the monster initiating lick rule:
	compute current-monster initiating licking;
	rule succeeds.
The monster initiating lick rule is listed last in the monster licking insertion rules.

To get licking initiation image for (M - a monster):
	do nothing.

To compute (M - a monster) initiating licking:
	compute M default initiating licking.

To compute (M - a monster) default initiating licking:
	if face is not occupied: [The whole 'face is not occupied' stuff is so that we can try and call this from other areas of the code.]
		set up sex length of M in face;
		[We can only force non-anilingus if the npc isn't explicitly about to be eaten out or not allowed to do things besides anilingus]
		if M is getting-asslicked or M is certain to do anilingus or (M is not getting-licked and M is eager to do anilingus):
			now M is getting-asslicked;
			if M is friendly-fucking, say FriendlyAnilingusInitiationFlav of M;
			otherwise say AnilingusInitiationFlav of M; [If you just want to change the text, replace the Flav function. Otherwise replace the entire compute function.]
			TasteGrossOut 7;
		otherwise:
			now M is getting-licked;
			if M is friendly-fucking, say FriendlyLickInitiationFlav of M;
			otherwise say LickInitiationFlav of M; [If you just want to change the text, replace the Flav function. Otherwise replace the entire compute function.]
			TasteGrossOut 4;
		now M is penetrating face;
		compute unique penetration effect of M in thighs;
		get licking initiation image for M;
	otherwise:
		say "[BigNameDesc of M] sees that you are already occupied and loses interest.";
		distract M.

This is the monster breasts insertion rule:
	if the chosen-orifice of current-monster is breasts:
		let C be a random top level titfuck protection clothing;
		if C is clothing:
			compute current-monster attacking C;
			rule succeeds;
		compute current-monster entering breasts;
		if presented-orifice is not breasts, progress quest of titfuck-desirability-quest.
The monster breasts insertion rule is listed in the default monster insertion rules.

To get breasts penetration image for (M - a monster):
	do nothing.

To compute (M - a monster) entering breasts:
	set up sex length of M in breasts;
	if M is friendly-fucking, say FriendlyBreastsPenetrationFlav of M;
	otherwise say BreastsPenetrationFlav of M; [If you just want to change the text, replace the Flav function. Otherwise replace the entire compute function.]
	now M is penetrating breasts;
	compute unique penetration effect of M in breasts;
	get breasts penetration image for M;
	compute grossness of M.

To say BreastsPenetrationFlav of (M - a monster):
	say "[BigNameDesc of M] forces [his of M] [manly-penis] in between your [ShortDesc of breasts]!". [This needs changing for every monster! It's boring and might not even be accurate if the monster isn't male.]

This is the monster penis insertion rule:
	if the chosen-orifice of current-monster is penis, follow the monster penis insertion rules.
The monster penis insertion rule is listed in the default monster insertion rules.

The monster penis insertion rules is a rulebook.

The monster attacking pussy covering clothing rule is listed last in the monster penis insertion rules.
The monster unlocks annoying cages rule is listed last in the monster penis insertion rules.

This is the monster penetrating penis rule:
	compute current-monster demanding erection;
	rule succeeds.
The monster penetrating penis rule is listed last in the monster penis insertion rules.

To get penis penetration image for (M - a monster):
	do nothing.

To compute (M - a monster) demanding erection:
	if penis is not penis-erect, say ErectionDemand of M;
	if penis is erect-on-request or penis is penis-erect:
		compute M mounting erection;
		if penis is not penis-erect, now penis is penis-erect;
	otherwise:
		compute unerect taunting of M.

To compute (M - a monster) mounting erection:
	if penis is not actually occupied:
		set up sex length of M in penis;
		if (M is friendly-fucking or presented-orifice is penis) and M is intelligent, say FriendlyErectionPenetrationFlav of M;
		otherwise say ErectionPenetrationFlav of M;
		now M is penetrating penis;
		compute virginity loss with M on penis;
		compute unique penetration effect of M in penis;
		get penis penetration image for M;
		say GangAnnounce;
	otherwise:
		say "[BigNameDesc of M] sees that you are already occupied and loses interest.";
		distract M.

This is the monster begin urination rule:
	if the chosen-orifice of current-monster is belly, follow the monster begin urination rules.
The monster begin urination rule is listed in the default monster insertion rules.

The monster begin urination rules is a rulebook.

This is the monster removing gag for urination rule:
	let C be a random worn clothing penetrating face;
	if C is cursed clothing or C is locked clothing:
		if current-monster is able to remove cursed plugs:
			compute current-monster removing C;
			rule succeeds;
	otherwise if C is clothing:
		compute current-monster removing C;
		rule succeeds.
The monster removing gag for urination rule is listed last in the monster begin urination rules.

This is the monster urinating rule:
	compute current-monster urinating;
	rule succeeds.
The monster urinating rule is listed last in the monster begin urination rules.

To compute (M - a monster) urinating:
	say UrinationFlav of M; [If you just want to change the text, replace the Flav function. Otherwise replace the entire compute function.]
	FacePiss from M;
	now the chosen-orifice of M is nothing;
	satisfy M.

To say UrinationFlav of (M - a monster):
	if diaper quest is 1, say ForcefeedPissDeclarationFlav of M;
	if M is male:
		if M is intelligent:
			say "[one of][BigNameDesc of M] laughs, taking a handful of your [ShortDesc of hair] and yanking your head back. A golden stream of [urine] shoots out of [his of M] [manly-penis], headed straight for your face![or][BigNameDesc of M] laughs, tilting your chin up and wrapping a hand around the base of [his of M] shaft. A golden stream of [urine] shoots out of [his of M] [manly-penis], headed straight for your face![in random order][if the humiliation of the player < 17500 and the urine taste addiction of the player is 1][line break][first custom style]What the actual fuck.[roman type][line break][end if]";
		otherwise:
			say "[BigNameDesc of M] points [his of M] [manly-penis] towards your face. A golden stream of [urine] shoots out, headed straight for you!";
	otherwise:
		if M is intelligent:
			say "[one of][BigNameDesc of M] smiles, taking a handful of your [ShortDesc of hair] and yanking your head back. Pulling apart [his of M] pussy lips, [he of M] allows a golden stream of [urine] to start to squirt straight at your face![or][BigNameDesc of M] laughs, tilting your chin up and wrapping a hand around the base of [his of M] shaft. A golden stream of [urine] shoots out of [his of M] pussy, headed straight for your face![in random order][if the humiliation of the player < 17500 and the urine taste addiction of the player is 1][line break][first custom style]What the actual fuck.[roman type][line break][end if]";
		otherwise:
			say "[BigNameDesc of M] points [his of M] genitals towards your face. A golden stream of [urine] shoots out, headed straight for you!".

Chapter 6 Damaging and Tripping

This is the monster attack rule:
	if the player is upright:
		follow the attack rules of current-monster.
		[if the rule succeeded, rule succeeds.] [By commenting this out, this means that the monster gets to go straight to punishment if the player drops.]
The monster attack rule is listed last in the monster attack rules. [Listed 5th]

[
Tripping rolls:
In general, when checking if a monster trips the player, do this:
Say that the monster is trying to trip the player
Set the monster's tripping roll as a value, we'll use T here
*If the monster is a DECENT TRIPPER, use if the tripping roll of M >= the dexterity of the player to confirm successful trip*
*Otherwise use if the tripping roll of M > the dexterity of the player*
**Further modifications can obviously be made with + and - flat numbers**
**Be aware that text lines can come out here about how the slipperiness of the room is making it hard to stay on your feet**
If successful, say that the trip was successful and try kneeling.
Otherwise say that it was unsuccessful.
]
[The trip roll is usually (difficulty / 2) to difficulty. The number it's rolling against is dex]
To decide which number is the tripping roll of (M - a monster):
	let T be the tripping max of M;
	let D be the dexterity of the player;
	if debuginfo > 1, say "[input-style]Tripping Max of [ShortDesc of M] is [T].[roman type][line break]";
	if T <= 0: [In some cases the player can never fall over, e.g. living belt of sturdiness, or they slapped]
		decide on 0;
	otherwise if T < D: [We want to make sure there is always a slight chance of the trip being successful on super fast players]
		if debuginfo > 1, say "[input-style]This is lower than dex ([D]), so tripping has minimum likelihood of [if the remainder after dividing D by 2 is 1]1 in [(D + 1) / 2][otherwise]2 in [D + 1][end if] (d[D + 1]).[roman type][line break]";
		now T is a random number between 1 and (D + 1);
	otherwise if (T / 2) > D + 3: [We want to make sure there is always a chance of the trip failing against super slow players]
		if debuginfo > 1, say "[input-style]This is really high, so tripping is capped at maximum likelihood of [T - D] in [T + 3 - D]; RNG([T]~[D - 3]).[roman type][line break]";
		now T is a random number between T and D - 3; [trip will fail if the RNG hits D - 1 or lower]
	otherwise: [This is the normal calculation]
		if debuginfo > 1, say "[input-style]This is a reasonable number, so tripping has normal roll of RNG([T / 2]~[T]).[roman type][line break]";
		now T is a random number between T and (T / 2);
	if debuginfo > 0, say "[input-style][ShortDesc of M] tripping attack: tripping roll ([T]) | ([dexterity of the player - 1].5) dexterity[roman type][line break]";
	decide on T.

To decide which number is the tripping max of (M - a monster):
	if attack-type is 0 or attack-type is 1:
		if the trip hazard of the player <= 0, decide on 0;
		otherwise decide on 1; [if the player slapped or stood still they are not off-balance so tripping is always minimum likelihood]
	if the living belt of sturdiness is worn and the living belt of sturdiness is not cursed, decide on 0;
	let D be the difficulty of M;
	increase D by the trip hazard of the player * 2;
	if the slipperiness of the location of the player > 0, say "The slipperiness of the floor is making it much more difficult to avoid falling!";
	if attack-type is 3, now D is D * 2;
	if D < 1, decide on 1;
	decide on D.

[!<ToDecideWhichNumberIsTheAccuracyRollOfMonster>

Determines the accuracy of a monster's action, usually a damaging attack

@param <Monster>:<M> The monster making the accuracy roll
@return <Number> The accuracy roll. Higher means more accuracy, lower means less accuracy.

+!]
To decide which number is the accuracy roll of (M - a monster):
	let D be the difficulty of M + (a random number between 1 and 6) + (a random number between 1 and 6);
	if D >= the difficulty of M + 6, now D is 9999; [This check means that the right hand side of the normal distribution roll always is a successful hit. i.e. 50% of the time, the monster will hit automatically]
	if the blind-status of M > 0, now D is (the difficulty of M + (a random number between 0 and 6) + (a random number between 0 and 6)) / 2; [If the monster is blinded then we ignore the 50% minimum hit chance and also nerf accuracy massively]
	if a random number between 1 and combatSpeed > 1, now D is 0;
	if debuginfo > 0, say "[input-style][ShortDesc of M] attack dodge check: Player [dexterity of the player] | [D].5 [ShortDesc of M][if D is 0] (random automiss - slower combat rules)[end if][roman type][line break]";
	decide on D.

[!<ToDecideWhichNumberIsTheStrengthRollOfMonster>

Determines the strength of a monster for an action.

@param <Monster>:<M> The monster making the strength roll
@return <Number> The strength roll. The higher the number, the better the strength. The lower the number, the worse the strength

+!]
To decide which number is the strength roll of (M - a monster):
	let D be the difficulty of M + (a random number between 1 and 6) + (a random number between 1 and 6);
	[let S be the strength of the player + the weight of the player;
	if debugmode is 1, say "Player [S] | [D].5 [ShortDesc of M][line break]";]
	decide on D.

To decide which number is the intelligence roll of (M - a monster):
	let D be the difficulty of M + (a random number between 1 and 6) + (a random number between 1 and 6);
	[let S be the intelligence of the player;
	if debugmode is 1, say "Player [S] | [D].5 [ShortDesc of M][line break]";]
	decide on D.

A monster has a number called wrangle-bonus. [the number of times it has been slapped in a row]

Definition: a monster is a wrangler: [Can it react to slap attacks with a wrangle?]
	if it is intelligent and it is human, decide yes;
	decide no.

To compute wrangle reaction of (M - a monster):
	if M is a wrangler and M is not trip-warned and M is not wrangling a body part:
		if the wrangle-bonus of M > 0 or tough-shit is 1:
			WrangleUp M;
			let D be the dexterity of the player;
			let MD be a random number between 1 and the difficulty of M;
			let MDW be MD + the wrangle-bonus of M;
			if debuginfo > 0, say "[input-style]Wrangle avoidance check: Player dexterity ([D]) | ([MDW].5) = ([MD]) d[D] [ShortDesc of M] dexterity roll + ([wrangle-bonus of M]) bonus from player slapping multiple times in a row[roman type][line break]";
			if MDW >= D:
				now M is wrangling arms;
				say ArmWrangleSuccess of M;
				now the wrangle-bonus of M is 10 - the square root of (a random number between 1 and 80); [turns until release]
			otherwise:
				say ArmWrangleFailure of M;
		otherwise:
			WrangleUp M. [No chance of grabbing on the first slap]

To WrangleUp (M - a monster):
	increase the wrangle-bonus of M by 4 - combatSpeed.

To say ArmWrangleSuccess of (M - a monster):
	say "[bold type][BigNameDesc of M][bold type] manages to grab your wrist![roman type] You won't be able to use hand-based attacks until you break free[one of]. [bold type]You might break free automatically after a few turns[roman type] or you can spend your turns trying to break free yourself by using [bold type][TQlink]resist[TQdlink][roman type][or][stopping].".

To say ArmWrangleFailure of (M - a monster):
	say "[if the wrangle-bonus of M > 9][BigNameDesc of M] tries [his of M] best to catch your wrist, but misses![otherwise if the wrangle-bonus of M > 5][BigNameDesc of M] is paying close attention to the movement of your arm.[otherwise if the wrangle-bonus of M > 1][one of][BigNameDesc of M] glances at your arm[or][BigNameDesc of M][']s eyes flick between your face and your wrist[cycling].[end if]".

A monster has a number called last-tripped.

Definition: a monster is a tripper:
	if it is intelligent, decide yes;
	decide no.

[!<ToSayTripChanceFlavOfMonster>

Displays a hint that tells the player how likely a monster is to try to trip them rather than attack them.

@param <Monster>:<M> The monster that may trip the player

+!]
To say TripChanceFlav of (M - a monster):
	if the trip frequency of M > 2:
		say "[bold type][BigNameDesc of M] [bold type][one of]glances at your [feet][or]seems to be almost purposefully not looking at your [feet][or]eyes your knees[in random order]. There's a chance [he of M] is planning to trip you up next.[roman type][line break]";
	otherwise:
		say "[bold type][BigNameDesc of M] [bold type][one of]is blatantly staring at your [feet][or]looks down at your [feet][or][if M is human]bends [his of M] knees[otherwise]aims for your knees[end if][in random order]! [big he of M] is clearly considering trying to trip you next.[roman type][line break]";
	if newbie tips is 1 and tutorial is 0, say "[one of][newbie style]There is a CHANCE that the [ShortDesc of M] will attempt to trip you next turn. If [he of M] succeeds, [he of M] will be able to immediately transition into [his of M] punishment routine. This would be a good turn to choose a slap attack. Kicking is the least safe option.[roman type][line break][or][stopping]";
	now M is trip-warned.

This is the choice of attack rule:
	compute attack choice of current-monster.
The choice of attack rule is listed last in the default monster attack rules.

To decide which number is the trip threshold of (M - a monster):
	decide on 4. [The higher this is, the less often they consider tripping next turn]
To decide which number is the raw trip frequency of (M - a monster):
	decide on 4 * combatSpeed. [The higher this is, the less often they actually choose to trip after considering it]
To decide which number is the trip frequency of (M - a monster):
	let TC be the raw trip frequency of M;
	if TC > 2 and the trophy-mode of trip-trophy is 1 and there is worn heels, now TC is (TC + 1) / 2;
	decide on TC.

To decide which number is the entice rarity of (M - a monster):
	decide on the raw entice rarity of M.
To decide which number is the raw entice rarity of (M - a monster):
	decide on 3 * combatSpeed. [The higher this is, the less often they do their entice move]
Definition: a monster (called M) is ready to entice:
	if the player is prone, decide no;
	if M is enticed, decide no;
	if M is uniquely ready to entice, decide yes;
	decide no.
Definition: a monster (called M) is uniquely ready to entice:
	if diaper quest is 1:
		if M is intelligent:
			let CM be current-monster;
			now current-monster is M;
			choose a diaper punishment;
			if the chosen-diaper-punishment of current-monster is not punishment-not-found and the chosen-diaper-punishment of current-monster is not dq-student-flee:
				now current-monster is CM;
				decide yes;
			otherwise:
				now current-monster is CM;
				decide no;
	otherwise:
		if M is male and M is raunchy and M is intelligent and there is an actual target body part, decide yes;
	decide no.

[!<ToComputeAttackChoiceOfMonster>

Determines whether a monster will try to trip or attack the player this turn, or potentially do something else. Also, this function helps resolve the blindness status effect

@param <Monster>:<M> The monster making the action

+!]
To compute attack choice of (M - a monster):
	let TC be the trip frequency of M;
	if M is a tripper and the last-tripped of M >= the trip threshold of M:
		now the last-tripped of M is 0;
		if tutorial is 1 or (the wrangle-bonus of M < 3 and a random number between 1 and TC is 1), now TC is 0;
	let entice-threshold be 1;
	if the class of the player is chosen one, now entice-threshold is 2; [enticing is twice as likely]
	if M is ready to entice and a random number between 1 and the raw entice rarity of M <= entice-threshold:
		now M is enticed;
		compute enticing of M;
	otherwise if TC <= 0:
		compute tripping attack of M;
	otherwise:
		compute damaging attack of M;
		if M is a tripper and the player is upright and the wrangle-bonus of M < 2:
			if tutorial is 1, increase the last-tripped of M by (the trip threshold of M - 1); [so he trips every third attack]
			otherwise increase the last-tripped of M by a random number between 1 and the trip threshold of M;
			let R be a random number between -3 and the intelligence of the player;
			if debuginfo > 1, say "[input-style]Tripping warning check: Intellgience roll RNG(-3~[the intelligence of the player]) = [if the last-tripped of M < the trip threshold of M or R < 0]???[otherwise][R][end if] | (0.5) difficulty[roman type][line break]";
			if R > 0 and the last-tripped of M >= the trip threshold of M, say TripChanceFlav of M.

[!<ToComputeTrippingAttackOfMonster>

Handles a monster attempting to make the player trip.

@param <Monster>:<M> The monster trying to trip the player

+!]
To compute tripping attack of (M - a monster):
	say MonsterTripAnnounceFlav of M;
	let D be the tripping roll of M;
	if (D >= the dexterity of the player and the blind-status of M is not 1) or tutorial is 1:
		say MonsterTrippedFlav of M;
		try kneeling;
		if the player is prone and tutorial is 0:
			trigger trip-wisp-trigger;
			check attack of M;
	otherwise:
		say MonsterFailedTripFlav of M.

[!<ToSayMonsterTripAnnounceFlavOfMonster>

Describes a monster attempting to trip the player

@param <Monster>:<M> The monster trying to trip the player

+!]
To say MonsterTripAnnounceFlav of (M - a monster):
	say "[BigNameDesc of M] tries to trip you up!".

[!<ToSayMonsterTrippedFlavOfMonster>

Describes the player being tripped by a monster

@param <Monster>:<M> The monster tripping the player

+!]
To say MonsterTrippedFlav of (M - a monster):
	say "You flail wildly [if the player is ankle bound]but you can't move your legs far enough apart to maintain your balance. You[otherwise]and[end if] fall to the ground!".

[!<ToSayMonsterFailedTripFlavOfMonster>

Describes the player resisting a monster's attempt to make them trip

@param <Monster>:<M> The monster trying to trip the player

+!]
To say MonsterFailedTripFlav of (M - a monster):
	say "You manage to keep your balance.".

[!<ToComputeDamagingAttackOfMonster>

Handles damaging attacks (i.e. default actions) from a monster.

@param <Monster>:<M> The monster attacking the player

+!]
To compute damaging attack of (M - a monster):
	compute striking attack of M.

[!<DecideWhichBodyPartIsThePainfulPartOfPortal>

Chooses which part of the body this monster will attack. Certain body parts can't be targeted by default.

@param <Monster>:<M> The monster attacking the body part
@return <BodyPart> The body part to be attacked

+!]
To decide which body part is the painful-part of (M - a monster):
	let LB be {face, breasts, belly, hips, thighs, arms};
	let N be a random number between 1 and the number of entries in LB;
	decide on entry N in LB.

[!<ToComputeStrikingAttackOfMonster>

Handles the default damaging attack for a given monster. Randomly selects a body part as a target, then pits a randomly generated accuracy value against the player's dexterity.

@param <Monster>:<M> The monster attacking the player

+!]
To compute striking attack of (M - a monster):
	let B be the painful-part of M;
	if the accuracy roll of M >= the dexterity of the player:
		say StrikingSuccessFlav of M on B;
		compute M striking B;
		compute striking success effect of M on B;
	otherwise:
		say StrikingFailureFlav of M on B.

[!<ToComputeStrikingSuccessEffectOfMonsterOnBodyPart>

Handles any code to be run every time a monster successfully attacks a particular body part

@param <Monster>:<M> The monster attacking the player
@param <BodyPart>:<B> The body part that was attacked

+!]
To compute striking success effect of (M - a monster) on (B - a body part):
	do nothing.

[!<ToSayStrikingSuccessFlavOfMonsterOnBodyPart>

Describes a monster attacking a body part, but failing to do damage, or failing to do full damage

@param <Monster>:<M> The monster attacking the player
@param <BodyPart>:<B> The body part being attacked

+!]
To say StrikingSuccessFlav of (M - a monster) on (B - a body part):
	say "[BigNameDesc of M] smacks you [TargetName of B]! Ouch!!".

[!<ToSayStrikingFailureFlavOfMonsterOnBodyPart>

Describes a monster attacking a body part, but failing to do damage, or failing to do full damage

@param <Monster>:<M> The monster attacking the player
@param <BodyPart>:<B> The body part being attacked

+!]
To say StrikingFailureFlav of (M - a monster) on (B - a body part):
	say "[BigNameDesc of M] tries to smack you [TargetName of B] but you manage to swiftly dodge the blow!".

[!<ToSayTargetNameOfBodyPart>

Describes a particular body part in the context of it being a target for attacks

@param <BodyPart>:<B> The body part being attacked

+!]
To say TargetName of (B - a body part):
	if B is face:
		say "in the face";
	otherwise if B is hips:
		say "on the ass";
	otherwise:
		say "on the [printed name of B]".

[!<ToComputeMonsterHurtingBodyPart>

Handles a monster damaging a particular body part. Handles actual application of damage, as well as any effects that need to be handled the same way regardless of attack type

@param <Monster>:<M> The monster attacking the player
@param <BodyPart>:<B> The body part being attacked

+!]
To compute (M - a monster) hurting (B - a body part):
	BodyRuin 1.

To compute (M - a monster) hurting (B - breasts):
	BodyRuin 2.

To compute (M - a monster) hurting (B - face):
	BodyRuin 2.

[!<ToComputeMonsterStrikingBodyPart>

Handles a monster hitting a particular body part. Meant to be overridden with unique functionality. Generally should leave actual damage to the ComputeMonsterHurtingBodyPart function

@param <Monster>:<M> The monster attacking the player
@param <BodyPart>:<B> The body part being attacked

+!]
To compute (M - a monster) striking (B - a body part):
	compute M hurting B.

To compute (M - a monster) striking (B - breasts):
	let P be a random worn breast covering clothing;
	if P is clothing, compute P protecting B from M;
	otherwise compute M hurting B;
	let S be a random worn spikey breast covering clothing;
	if S is clothing:
		compute S damaging M.

To compute (M - a monster) striking (B - hips):
	let O be the body soreness of the player;
	let S be a random worn skirted clothing;
	let C be a random worn crotch covering clothing;[crotch covering, not crotch protecting.]
	if S is clothing:
		compute S protecting B from M;
	if C is clothing and O is not the body soreness of the player:
		compute C protecting B from M;
	otherwise:
		compute M hurting B.

To compute (M - a monster) striking (B - arms):
	let P be a random worn arm covering clothing;
	if P is clothing, compute P protecting B from M;
	otherwise compute M hurting B;

To compute (M - a monster) striking (B - thighs):
	let P be a random worn leg covering clothing;
	if armadillo heels is worn, now P is armadillo heels;
	if P is clothing, compute P protecting B from M;
	otherwise compute M hurting B.

To compute (M - a monster) striking (B - face):
	compute M hurting B;
	let T be "The impact on your cheek disturbs the liquid inside your mouth, and";
	check accidental spitting with reason T;
	if wasp-antennae is worn and total-wasps > 50:
		say "Your antennae are clipped by the blow, which causes you even more pain!";
		BodyRuin 1.

To compute (M - a monster) striking (B - belly):
	let P be a random worn belly covering clothing;
	if P is clothing:
		compute P protecting B from M;
	otherwise:
		compute M hurting B;
		let T be "The hit puts pressure on your belly, and";
		check sudden squirt with reason T.

[!<ToComputeClothingProtectingBodyPartFromMonster>

Determines how effective a piece of clothing is at protecting a particular body part from damage, depending on the monster causing the damage.

@param <Clothing>:<P> The clothing potentially protecting the body part
@param <Bodypart>:<B> The body part being attacked
@param <Monster>:<M> The monster attacking the body part

+!]
To compute (P - a clothing) protecting (B - a body part) from (M - a monster):[default]
	if P is sacred dress and the pregnancy of the player is 2:
		say "[BigNameDesc of P] protects you from being properly injured by the attack!";
	otherwise if P is protection and a random number between the magic-modifier of P and 8 > 4:
		say "[BigNameDesc of P] protects you from being properly injured by the attack!";
	otherwise if (B is breasts or B is hips or B is thighs) and P is possession:
		if M is ghost and a random number between the magic-modifier of P and 8 < 4:[for ghosts, the possession enchantment is a negative]
			compute M hurting B;
			say "[BigNameDesc of P] constricts in response to [NameDesc of M]'s attack, intensifying the pain!";
			PainUp 10;
		otherwise if a random number between the magic-modifier of P and 10 > 6:[not as good as protection]
			say "[BigNameDesc of P] causes the attack to phase through you completely!";
		otherwise:
			compute M hurting B;
	otherwise:
		compute M hurting B.

To compute (P - santa corset) protecting (B - breasts) from (M - a monster):
	if a random number between 2 and 22 > the largeness of breasts, say "The brunt of the blow is absorbed by [NameDesc of P]!";
	otherwise BodyRuin 2.

To compute (P - a chainmail top) protecting (B - breasts) from (M - a monster):
	say "[BigNameDesc of P] blocks the brunt of the force!";

To compute (P - a striped top) protecting (B - breasts) from (M - a monster):
	if total-wasps > 50, say "The blow deflects off the shiny black carapace covering your breasts!";
	otherwise compute M hurting B.

To compute (P - a chainmail skirt) protecting (B - hips) from (M - a monster):[I.E. all of it.]
	say "[BigNameDesc of P] blocks the brunt of the force!".

To compute (P - a black-and-yellow striped stockings) protecting (B - thighs) from (M - a monster):
	if total-wasps > 50, say "The blow deflects off the shiny black carapace covering your legs!";
	otherwise compute M hurting B.

To compute (P - a clothing) protecting (B - belly) from (M - a monster):
	if P is protection and a random number between the magic-modifier of P and 8 > 4:
		say "[BigNameDesc of P] protects you from being properly injured by the attack!";
	otherwise if P is possession and M is ghost and a random number between the magic-modifier of P and 8 < 4:
		compute M hurting B;
		say "[BigNameDesc of P] constricts in response to [NameDesc of M]'s attack, intensifying the pain!";
		PainUp 10;
	otherwise if P is possession and M is not ghost and a random number between the magic-modifier of P and 10 > 6:
		say "[BigNameDesc of P] causes the attack to phase through you completely!";
	otherwise:
		compute M hurting B;
		if the player is able to eventually expel and a random number between -4 and the total squirtable fill of belly > 0 and the latex-transformation of the player < 5 and currently-squirting is 0:
			say "The hit puts pressure on the contents of your belly, and causes you to momentarily lose control of your sphincter!";
			let C be a random glued sex toy penetrating asshole;
			if C is a thing, compute enema vs glue pressure of C;
			if the player is able to expel, AssSquirt.

[!<ToComputeClothingDamagingMonster>

Handles a monster being damaged after attacking a body part that is covered by a potentially damaging clothing

@param <Clothing>:<P> The clothing potentially damaging the monster
@param <Monster>:<M> The monster being damaged

+!]
To compute (S - a clothing) damaging (M - a monster):
	if S is spikey:
		say "[BigNameDesc of M], hitting your [printed name of S], [if M is male and M is intelligent and M is not futanari-slutty-sister]cries out in pain as the spikes cut into his hand[otherwise]recoils in pain from the spikes[end if]!";
		if S is a striped top and the poison-status of M is 0:
			say "After striking you, [NameDesc of M] takes on an unhealthy shade of green!";
			now the poison-status of M is 3;
	otherwise:
		say "Somehow, [NameDesc of M] hurts [himself of M] as [he of M] attacks!";
	decrease the health of M by 4.

[!<ToSayMonsterAttackError>

Displays an error message when a monster can't attack for some reason.

+!]
To say MonsterAttackError:
	say "[one of][bold type]ERROR - this monster doesn't know how to attack. Some stupid slut forgot to code this right! Oh dear. I guess it just stands there and does nothing.[roman type][line break][or][stopping]".

[!<ToComputeMonsterReceivingNumberDamageFromMonster>

Handles a monster being damaged by another monster.

@param <Monster>:<M> The monster being damaged
@param <Number>:<N> The amount of damage
@param <Monster>:<X> The monster doing the damage

+!]
To compute (M - a monster) receiving (N - a number) damage from (X - a monster):
	if debugmode > 1, say "computing [MediumDesc of M] receiving [N] damage from [MediumDesc of X].";
	say AllyDamageFlav of X on M;
	decrease the health of M by N;
	if N > 0, now the wrangle-bonus of M is 0.

[!<ToSayAllyDamageFlavOfMonsterOnMonster>

Displays some text describing a monster being attacked by another monster

@param <Monster>:<X> The monster doing the damage
@param <Monster>:<M> The monster being damaged

+!]
To say AllyDamageFlav of (X - a monster) on (M - a monster):
	say "[BigNameDesc of X] strikes [NameDesc of M]!".

Combat ends here.
