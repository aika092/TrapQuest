Resisting by Actions begins here.

[!<MonsterIsFuckingDaddysHole>+

REQUIRES COMMENTING

+!]
Definition: a monster (called M) is fucking daddy's hole:
	unless there is a worn daddy's cock only tattoo, decide no;
	unless there is a mating monster, decide no;
	if M is penetrating asshole and M is not mating, decide yes;
	decide no.

[!<SayMaintainYourDignity>+

REQUIRES COMMENTING

+!]
To say maintain your dignity:
	say "[one of]maintain[or]retain[as decreasingly likely outcomes] [if the humiliation of the player < 17500]your[otherwise if the humiliation of the player < 30000]some[otherwise]whatever is left of your[end if] [one of]dignity[or]pride[or]self-esteem[as decreasingly likely outcomes]";

[!<friendlyConfirmation:Integer>*

REQUIRES COMMENTING

*!]
friendly-confirmation is a number that varies.

[!<DecideWhichNumberIsFuckholePain>+

REQUIRES COMMENTING

+!]
To decide which number is fuckhole pain:
	let P be 0;
	if there is a live thing penetrating asshole:
		if the soreness of asshole > a random number between 1 and 10, increase P by 1;
		if the soreness of asshole > a random number between 1 and 10, increase P by 1;
	if there is a live thing penetrating asshole:
		if the soreness of vagina > a random number between 1 and 10, increase P by 1;
		if the soreness of vagina > a random number between 1 and 10, increase P by 1;
	decide on P.

[!<SayResistSubduedFlavOfClothing>+

REQUIRES COMMENTING

+!]
To say ResistSubduedFlav of (C - a clothing):
	say "You don't dare resist whilst your [ShortDesc of C] is in the hands of a malicious enemy!".

[!<forcedSubmit:Integer>*

REQUIRES COMMENTING

*!]
forced submit is a number that varies. forced submit is usually 0.

[!<resisting:Action>*

REQUIRES COMMENTING

*!]
Resisting is an action applying to nothing.

[!<CheckResisting>+

REQUIRES COMMENTING

+!]
Check resisting:
	now forced submit is 0;
	if the number of live things penetrating a body part is 0 and the number of things grabbing the player is 0, say "You are not being fucked, so there is nothing to resist!" instead;
	let P be fuckhole pain;
	let M be a random monster penetrating an orifice;
	if there is a vampiress penetrating an orifice, now M is a random vampiress;
	if there is a fucking daddy's hole monster:
		say "[one of][if the player is able to speak]You find yourself resisting the assault.  [variable custom style]'That's not your hole!'[roman type][line break][otherwise]You have a deep down, uncontrollable feeling that the person doesn't deserve to touch you there.[end if][or][stopping]";
	otherwise if the latex-transformation of the player > 2 and there is a live thing penetrating a fuckhole:
		say "Your gaping [if the player is male][asshole] makes[otherwise]orifices make[end if] it impossible to resist!";
		now forced submit is 1;
		try submitting instead;
	otherwise if the player is subdued:
		say "[ResistSubduedFlav of a random worn subduing clothing] You have no choice but to lie there and accept the invasion.";
		now forced submit is 1;
		try submitting instead;
	otherwise if the humiliation of the player >= 40000:
		say "[one of][bold type]As you are a fully broken in sex object, you no longer even consider resisting an option.  From now on, this verb will automatically submit instead.[roman type][line break][or][stopping]";
		try submitting instead;
	otherwise if there is a live thing penetrating asshole and a random number between 14 and 19 < the the anal sex addiction of the player:
		say "You love anal sex too much, you can't will yourself to even [i]pretend[/i] to resist right now!";
		now forced submit is 1;
		try submitting instead;
	otherwise if there is a live thing penetrating vagina and a random number between 14 and 19 < the the vaginal sex addiction of the player:
		say "You love sex too much, you can't will yourself to even [i]pretend[/i] to resist right now!";
		now forced submit is 1;
		try submitting instead;
	otherwise if there is a live thing penetrating an orifice and a random number between 10 and 15 + a random number between 0 and 4 < the delicateness of the player + P:
		if P > 1, say PainResRefusalFlav of M;
		otherwise say DelicateResRefusalFlav of M;
		now forced submit is 1;
		try submitting instead;
	otherwise if there is a live thing penetrating face:
		if a random number between 14 and 19 < the semen taste addiction of the player or the player is desperately craving:
			if M is monster, say OralAddResRefusalFlav of M;
			now forced submit is 1;
		otherwise if a random number between 5 and 9 < the oral sex addiction of the player:
			if M is monster, say OralSlutResRefusalFlav of M;
		otherwise if the thirst of the player is 5 or (the thirst of the player is 4 and a random number between 1 and 2 is 2):
			if M is monster and M is male, say ThirstResRefusalFlav of M;
			now forced submit is 1;
		if forced submit is 1:
			unless M is monster, say ForcedSubmitFlav;
			try submitting instead;
	otherwise if M is monster and M is vampiress and a random number between 5 and 9 + (the intelligence of the player / 3) <= the bimbo of the player:
		say VampResistRefusalFlav;
		now forced submit is 1;
		try submitting instead;
	otherwise if the player is friendly fucked and friendly-confirmation is 0:
		say "You will attempt to stop the sex.  Is that what you want? [yesnolink] ";
		if the player consents, now friendly-confirmation is 1;
		otherwise say "Action cancelled." instead.

[!<CarryOutResisting>+

REQUIRES COMMENTING

+!]
Carry out resisting:
	now the player-reaction of the player is resisting;
	now seconds is 6.

[!<resistTarget:Object>*

REQUIRES COMMENTING

*!]
resist-target is an object that varies.

[!<ReportResisting>+

REQUIRES COMMENTING

+!]
Report resisting:
	if there is a live thing penetrating a fuckhole and weight gain fetish is 1:
		increase the fat-burning of hips by 20;
		compute hip fat burning;
	let M be a random thing grabbing the player;
	if M is nothing, now M is a random live thing penetrating a body part;
	unless M is nothing:
		if the player is friendly fucked:
			say FriendlySexResistFlav of M;
			if M is monster, compute FriendlySexRelease of M;
		otherwise:
			say SexResistFlav of M;
			if M is monster, compute sex resist punishment of M;
			if the sex addiction of the player > 8 and M is male intelligent monster:
				let T be a random daddy's wild child tattoo;
				if there is a worn tattoo and T is not worn:
					summon T; [###Selkie: this seems a bit abrupt and understated. Wouldn't it be good to say something like 'The [M] looks at you with a cruel gleam|glint|look in his eye, and his lips curl.  '{one of}So, you think you're too dignified for fucking?|I think a slut like you needs to learn her place|Oh, you still think you can resist? Let's permanently mark you to make you think twice, in future.|...{at random}'[line break]He snaps his fingers and you feel a burning on your skin. ']
					say "[bold type]A new tattoo appears on your arm![roman type][line break]";
					try examining T.

[!<SaySexResistFlavOfThing>+

REQUIRES COMMENTING

+!]
To say SexResistFlav of (T - a thing):
	if T is penetrating a body part, say "[one of]You struggle in vain to free yourself![or]You try to crawl away but are being held in place![or]You resist being used as much as you can![purely at random]";
	otherwise say "You struggle in vain to free yourself!".

[!<ComputeSexResistPunishmentOfMonster>+

REQUIRES COMMENTING

+!]
To compute sex resist punishment of (M - a monster):
	now resist-target is M;
	choose a sex resist punishment.

Understand "resist", "fight back", "escape", "run", "fight", "nono", "noway", "nn" as resisting.





[!<SayForcedSubmitFlav>+

REQUIRES COMMENTING

+!]
To say ForcedSubmitFlav:
	say "You can't bring yourself to resist!".

[!<SayPainResRefusalFlavOfMonster>+

REQUIRES COMMENTING

+!]
To say PainResRefusalFlav of (M - a monster):
	say "[one of]It hurts too much! You know resisting will only make it worse, so you focus on making it hurt as little as possible![or]You can[']t endure any more pain! There[']s no way you[']re going to make it worse by resisting![or]Resisting will only make it hurt more! You can[']t bring yourself to do anything but sit there and take it![at random]".

[!<SayDelicateResRefusalFlavOfMonster>+

REQUIRES COMMENTING

+!]
To say DelicateResRefusalFlav of (M - a monster):
	say "[one of]You lie there and take it anyway--you're too afraid of what [he of M] might do if you don't play along.[or]You decide you're safer if you just do whatever [he of M] has in mind, no matter how degrading.[or]You[']re too afraid of what could happen if you put up a fight! There[']s no way you're doing anything but taking everything [he of M] wants to give you![or]You wouldn't dare resist now, not when [he of M] has you right where [he of M] wants you! You're sit there and take it like the [if the player is male][second custom style]sissy bitch[roman type][otherwise]scaredy-cat[end if] you are![at random]".

[!<SayOralAddResRefusalFlavOfMonster>+

REQUIRES COMMENTING

+!]
To say OralAddResRefusalFlav of (M - a monster):
	say "[one of]You try to resist, but in the end you can't stop yourself from polishing [his of M] [manly-penis] like the cum-hungry slut you are.[or]Your brain wants to resist, but your body doesn't. You submissively pleasure the [M], desperate for your next semen fix.[or][if the sex addiction of the player < 10]It's incredibly degrading, but you can't bring yourself to resist. Not when there's a [manly-penis] in your mouth just waiting to feed you a helping of delicious [semen].[otherwise]You can't bring yourself to resist knowing there could be a mouthful of tasty [semen] in this for you.[end if][or][if the sex addiction of the player < 10 and the player is female]You know it's something only a complete harlot would do, but you just can't pass up a mouthful of tasty [semen].[otherwise if the sex addiction of the player < 7]You know it's a little gay, but you just can't pass up a mouthful of tasty [semen].[otherwise]You can't help suckling the [M]'s [manly-penis] for all it's worth. You might get to drink [semen] afterwards![end if][in random order]".

[!<SayOralSlutResRefusalFlavOfMonster>+

REQUIRES COMMENTING

+!]
To say OralSlutResRefusalFlav of (M - a monster):
	say "[one of][if the sex addiction of the player < 10]No matter how hard you try, you can't keep yourself from desperately suckling his [manly-penis].[otherwise]Why would you do something like that? Sucking [manly-penis]s is FUN![end if][or][if the semen addiction of the player < 13]You hate yourself for it, but you can't help suckling the guard's [manly-penis] for all it's worth.[otherwise]You just can't bring yourself to resist. Not when there's a big [second custom style]yummy[roman type] [manly-penis] in your mouth.[semen].[end if][in random order]".

[!<SayThirstResRefusalFlavOfMonster>+

REQUIRES COMMENTING

+!]
To say ThirstResRefusalFlav of (M - a monster):
	say "[one of]You want to resist, you really do, but you're just so thirsty...[or]You tell yourself to resist, but your body needs something to drink, and it knows where to get it from.[or]You can[']t stop now. Now when you're so close to something that can wet your throat...[or]You can[']t bring yourself to resist the [M] knowing that [his of M] balls are so full of something to drink.[or][if the sex addiction of the player < 9]You try to stop, but in the end your[otherwise]Your[end if] thirst wins out and you obediently pleasure [him of M] like the slut you are.[at random]".

Part - Resist Punishments

[!<SexResistPunishment>@

REQUIRES COMMENTING

@inherits <Object>

@!]
A sex resist punishment is a kind of object.

[!<SexResistPunishment>@<priority:Integer>*

REQUIRES COMMENTING

*@!]
A sex resist punishment has a number called priority.

[!<currentPriority>*

REQUIRES COMMENTING

*!]
current-priority is a number that varies.

[!<chosenSexResistPunishment:SexResistPunishment>*

REQUIRES COMMENTING

*!]
chosen sex resist punishment is a sex resist punishment that varies.

[!<resistPunishmentNotFound:SexResistPunishment>*

REQUIRES COMMENTING

*!]
resist-punishment-not-found is a sex resist punishment.

[!<ComputePunishmentOfSexResistPunishment>+

REQUIRES COMMENTING

+!]
To compute punishment of (P - a sex resist punishment):
	say "BUG - the sex resist punishment '[P]' has no execution function!".

[!<SexResistPunishmentIsAppropriate>+

REQUIRES COMMENTING

+!]
Definition: a sex resist punishment (called P) is appropriate:
	decide no.

[!<SexResistPunishmentIsPrioritised>+

REQUIRES COMMENTING

+!]
Definition: a sex resist punishment (called P) is prioritised:
	if the priority of P is current-priority, decide yes;
	decide no.

[!<ChooseASexResistPunishment>+

REQUIRES COMMENTING

+!]
To choose a sex resist punishment:
	now chosen sex resist punishment is resist-punishment-not-found;
	now current-priority is 3;
	while chosen sex resist punishment is resist-punishment-not-found and current-priority >= 0:
		now chosen sex resist punishment is a random prioritised appropriate sex resist punishment;
		unless chosen sex resist punishment is a sex resist punishment, now chosen sex resist punishment is resist-punishment-not-found;
		decrease current-priority by 1;
	unless chosen sex resist punishment is resist-punishment-not-found, compute punishment of chosen sex resist punishment.

[!<slapPunishment:SexResistPunishment>*

REQUIRES COMMENTING

*!]
slap-punishment is a sex resist punishment.  The priority of slap-punishment is 1.

[!<MonsterIseagerToSlap>+

REQUIRES COMMENTING

+!]
Definition: a monster (called M) is eager to slap:
	if M is intelligent and a random number between 1 and 5 is 1, decide yes;
 	decide no.

[!<SlapPunishmentIsAppropriate>+

REQUIRES COMMENTING

+!]
Definition: slap-punishment (called P) is appropriate:
	if resist-target is spanking the player, decide no;
	if resist-target is eager to slap, decide yes;
	decide no.

[!<ComputePunishmentOfSlapPunishment>+

REQUIRES COMMENTING

+!]
To compute punishment of (P - slap-punishment):
	compute sex resist slap of resist-target.

[!<SexResistSlapOfMonster>+

REQUIRES COMMENTING

+!]
To compute sex resist slap of (M - a monster):
	say "The [M] [if M is intelligent][one of]cackles[or]laughs deeply[or]chuckles[or]snorts[at random] at your [one of]fruitless display[or]vain efforts[or]pointless attempts[or]futile resistance[at random][otherwise]looks at you blankly[end if] before [if M is male and M is penetrating face]slapping you harshly on the cheek[otherwise if M is male and M is penetrating breasts]painfully slapping your [BreastDesc][otherwise]roughly spanking your [buttcheeks][end if] [one of]to get you to behave[or]in order to keep you under control[or]as punishment[or]to discourage further disobedience[at random].";
	DelicateUp 1.

[!<angerPunishment:SexResistPunishment>*

REQUIRES COMMENTING

*!]
anger-punishment is a sex resist punishment.  The priority of anger-punishment is 1.

[!<MonsterIsEagerToGetAngry>+

REQUIRES COMMENTING

+!]
Definition: a monster (called M) is eager to get angry:
	if M is intelligent and a random number between 1 and 3 is 1, decide yes;
 	decide no.

[!<AngerPunishmentIsAppropriate>+

REQUIRES COMMENTING

+!]
Definition: anger-punishment (called P) is appropriate:
	if resist-target is eager to get angry, decide yes;
	decide no.

[!<ComputePunishmentOfAngerPunishment>+

REQUIRES COMMENTING

+!]
To compute punishment of (P - anger-punishment):
	compute sex resist anger of resist-target.

[!<ComputeSexResistAngerOfMonster>+

REQUIRES COMMENTING

+!]
To compute sex resist anger of (M - a monster):
	say "The [M] [one of]snarls[or]growls[or]frowns[or]harrumphs[or]shouts in annoyance[at random].  It looks like all you've managed to do is [one of]anger [him of M] further[or]piss [him of M] off[or]increase [his of M] animosity towards you[at random].";
	FavourDown M.



Resisting ends here.
