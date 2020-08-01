Resisting by Actions begins here.

[!<MonsterIsFuckingDaddysHole>+

REQUIRES COMMENTING

+!]
Definition: a monster (called M) is fucking daddy's hole:
	unless daddy's cock only tattoo is worn, decide no;
	unless there is a mating monster, decide no;
	if the player is in DiamondLessonBlindfolded, decide no; [Otherwise the lesson is impossible]
	if M is penetrating asshole and M is not mating, decide yes;
	decide no.

Definition: a monster (called M) is wrong race fucking:
	if M is not penetrating a body part, decide no;
	if the player is in DiamondLessonBlindfolded, decide no; [Otherwise the lesson is impossible]
	if once-you-go-black tattoo is worn and M is human and M is not dark skinned, decide yes;
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
	if the number of live things penetrating a body part + the number of things grabbing the player + the number of things wrangling a body part is 0, say "You are not being held in place, so there is nothing to resist against!" instead;
	let P be fuckhole pain;
	let M be a random monster penetrating an orifice;
	if vampiress is penetrating an orifice, now M is vampiress;[she always gets resisted first, since she has mind control stuff to talk about]
	if there is a fucking daddy's hole monster:
		say "[one of][if the player is able to speak]You find yourself resisting the act. [line break][variable custom style]'That's not your hole!'[roman type][line break][otherwise]You have a deep down, uncontrollable feeling that the person doesn't deserve to enjoy your body.[end if][or][stopping]";
	otherwise if there is a wrong race fucking monster:
		say "[one of][if the player is able to speak]You find yourself resisting the act. [line break][variable custom style]'I only serve black [manly-penis]!'[roman type][line break][otherwise]You have a deep down, uncontrollable feeling that the person doesn't deserve to enjoy your body.[end if][or][stopping]";
	otherwise if the latex-transformation of the player > 2 and there is a live thing penetrating a fuckhole:
		say "Your gaping [if the player is not possessing a vagina][asshole] makes[otherwise]orifices make[end if] it impossible to resist!";
		now forced submit is 1;[This tells the submission function not to display any flavour text.]
		try submitting instead;
	otherwise if the player is subdued:
		say "[ResistSubduedFlav of a random worn subduing clothing] You have no choice but to lie there and accept the invasion.";
		now forced submit is 1;
		try submitting instead;
	otherwise if there is a baby bouncer grabbing the player and the player is upset about sitting in mess:
		say "You can't bring yourself to do that while sitting in your own mess!" instead;
	otherwise if the humiliation of the player >= 40000:
		say "[one of][line break][bold type]As you are a fully broken in sex object, you no longer even consider resisting an option. From now on, this verb will automatically submit instead.[roman type][line break][or][stopping]";
		try submitting instead;
	otherwise if there is a live thing penetrating asshole and gape-gloves is worn and gape-gloves is wrist-bound-behind:
		say "It's hardly a resisting move to literally use your fingers to spread your [asshole] to allow [NameDesc of a random live thing penetrating asshole] inside, is it? You can only present yourself for anal while wearing these gape gloves!";
		now forced submit is 1;
		try submitting instead;
	otherwise if there is a live thing penetrating asshole and a random number between 14 and 19 < the the anal sex addiction of the player * 2:
		say "You love anal sex too much, you can't will yourself to even [i]pretend[/i] to resist right now!";
		now forced submit is 1;
		try submitting instead;
	otherwise if there is a live thing penetrating vagina and a random number between 14 and 19 < the the vaginal sex addiction of the player * 2:
		say "You love sex too much, you can't will yourself to even [i]pretend[/i] to resist right now!";
		now forced submit is 1;
		try submitting instead;
	otherwise if M is monster and (a random number between 10 and 15) + (a random number between 0 and 4) < the delicateness of the player + P:
		if P > 1, say PainResRefusalFlav of M;
		otherwise say DelicateResRefusalFlav of M;
		now forced submit is 1;
		try submitting instead;
	otherwise if there is a live thing penetrating face and diaper quest is 0:
		now M is ex-princess;
		if there is a male monster penetrating face and (a random number between 14 and 19 < the semen taste addiction of the player or the player is desperately craving semen):
			now M is a random monster penetrating face;
			say OralAddResRefusalFlav of M;
			now forced submit is 2;
		otherwise if a random number between 5 and 9 < the oral sex addiction of the player:
			now M is a random live thing penetrating face;
			if M is monster, say OralSlutResRefusalFlav of M;
			now forced submit is 2;
		otherwise if the thirst of the player is 5 or (the thirst of the player is 4 and a random number between 1 and 2 is 2):
			now M is a random live thing penetrating face;
			if M is male monster:
				say ThirstResRefusalFlav of M;
				now forced submit is 1;
		if forced submit > 0:
			if M is ex-princess, say ForcedSubmitFlav;
			try submitting instead;
	otherwise if M is monster and M is vampiress and a random number between 5 and 9 + (the intelligence of the player / 3) <= the bimbo of the player:
		say VampResistRefusalFlav;
		now forced submit is 1;
		try submitting instead;
	otherwise if the player is in DiamondLessonBlindfolded:
		say "This will probably cause you to fail the initiation. Is that what you want? ";
		if the player is not consenting, say "Action cancelled." instead;
	otherwise if the player is friendly fucked and friendly-confirmation is 0:
		say "You will attempt to stop the sex. Is that what you want? ";
		if the player is consenting, now friendly-confirmation is 1;
		otherwise say "Action cancelled." instead.

[!<CarryOutResisting>+

REQUIRES COMMENTING

+!]
Carry out resisting:
	now the player-reaction of the player is resisting;
	allocate 6 seconds.

[!<resistTarget:Object>*

REQUIRES COMMENTING

*!]
resist-target is an object that varies.

[!<ReportResisting>+

At this point, resisting will actually take an effect. Flavour prioritizes anything holding the player down, then anything fucking the player, and finally anything that's holding onto the player. If the player is resisting a monster, then the monster can potentially punish them.

+!]
Report resisting:
	if weight gain fetish is 1 and the player is at least partially living stuck:[resisting is a form of exercise]
		increase the fat-burning of hips by 20;
		compute hip fat burning;
	let M be a random thing grabbing the player;[prioritize anyone holding the player down]
	if M is nothing, now M is a random live thing penetrating a body part;[next, prioritize anyone inside the player]
	if M is nothing, now M is a random thing wrangling a body part;[Lastly, we take a look at any holders on.]
	unless M is nothing:
		if the player is friendly fucked:
			say FriendlySexResistFlav of M;
			if M is monster, compute FriendlySexRelease of M;
		otherwise:
			if M is penetrating a body part or M is grabbing the player:
				say SexResistFlav of M;
				if M is monster, compute sex resist punishment of M;
			otherwise if M is wrangling a body part:
				compute wrangled resisting of M;
			if the delicateness of the player > 10 and M is male intelligent human monster and there is a worn tattoo and daddy's wild child tattoo is not worn and a random number between 1 and 10 is 1:
				summon daddy's wild child tattoo;
				say "[line break][bold type]A new tattoo appears on your arm![roman type][line break]";
				try examining daddy's wild child tattoo.

To compute wrangled resisting of (T - a thing):
	say SexResistFlav of T.

To say SexResistFlav of (T - a thing):
	if diaper quest is 1, say DQResistFlav of T;
	otherwise say "[if T is penetrating a body part][one of]You struggle in vain to free yourself![or]You try to crawl away but are being held in place![or]You resist being used as much as you can![purely at random][otherwise][DefaultResistFlav of T][end if]".

To say DQResistFlav of (T - a thing):
	say "You struggle in vain to free yourself!".

To say DQResistFlav of (M - a monster):
	if M is changing the player:
		say DQChangeResistFlav of M;
		say DQChangeResistReactionFlav of M;
	otherwise if M is spanking the player:
		now spankContinue is the spankExtension of M;
		say DQSpankResistFlav of M;
		if spankContinue is 1, say DQSpankResistExtensionFlav of M;
		otherwise say DQSpankResistReactionFlav of M;
	otherwise if M is enema-filling the player:
		say DQEnemaResistFlav of M;
		say DQEnemaResistReactionFlav of M;
	otherwise if M is masturbating the player:
		say DQMasturbationResistFlav of M;
		say DQMasturbationResistReactionFlav of M;
	otherwise if M is feeding the player:
		say DQFeedingResistFlav of M;
		say DQFeedingResistReactionFlav of M;
	otherwise:
		say DefaultResistFlav of M;
		say DefaultResistReactionFlav of M.

To say DQSpankResistFlav of (M - a monster):
	say "[one of]You wriggle around to make it as difficult as possible for [NameDesc of M] to hit the spots [he of M][']s focusing on[or]You flail your legs and body, trying to throw off [NameDesc of M][']s aim[or]You keep moving to try to reduce the number of spanks that hit the same spot[in random order].";
	if the player is able to speak, say "[variable custom style]'[if the bimbo of the player >= 13][one of]OUCHIES[or]It huuuurts[or]I'm sorry I'm sorry I'm sorry[or]I'm sorry for being a naughty baby, please sto-o-op[or]Waaaaah! Stop it[in random order][otherwise if there are worn perceived messed knickers][one of]No, not on my messy bottom, please stop[or]Please don't, it feels so gross[or]I'm sorry for pooping myself, please stop[or]Please don't hit me there right now[in random order][otherwise][one of]This is not okay[or]Ow ow ow, what the hell[or]Stop hitting me like I'm a baby[or]This is completely inappropriate[or]I'm not your disobedient child[or]This is really uncool[or]Fuck off[or][in random order][end if]!'[roman type][line break]";
	otherwise say "[variable custom style][muffled sounds][roman type][line break]".

To say DQSpankResistReactionFlav of (M - a monster):
	say "". [Can be customised for specific NPCs]

To say DQSpankResistExtensionFlav of (M - a monster):
	if M is intelligent, say "[BigNameDesc of M] snarls.[line break][speech style of M]'[one of]That's it. You've earned three more spanks for that.'[or]Okay, I'm going to just continue until you stop squirming!'[or]All you're doing is making me decide to take longer!'[or]The more you squirm, the longer I'm going to make it take.'[in random order][roman type][line break]". [Can be customised for specific NPCs]

To say DQEnemaResistFlav of (M - a monster):
	say "[if M is penetrating asshole][one of]You try to wrestle free before [NameDesc of M] gets any more inside you but [his of M] grip remains firm[or]You try to pull away from the enema in vain[or]Your belly gurgles as you sway side to side, trying to make it more difficult for [NameDesc of M] to continue filling you up[in random order][otherwise][one of]You try to escape before the enema can begin, but [NameDesc of M][']s grip on you is too strong[or]Realising what's about to happen you pull away with all your strength but it's too little too late[or]You wiggle your butt to try and stop [NameDesc of M] from proceeding but you just can't get away[in random order][end if].";
	if the player is able to speak, say "[variable custom style]'[if the water volume of belly >= 15][one of]Too much! That's too much now[or]I'm so full it hurts, please no more[or]I'm too full, I can't take any more[or]Uuugh, please no more[in random order][otherwise if M is not penetrating asshole][one of]Is this really necessary?[or]Can't we settle this some other way[or]No, I don't need to be cleaned out[or]I don't need help doing something like this[in random order][otherwise if the bimbo of the player >= 13][one of]What are you doing [daddy of M]? It feels weird[or]Please let me push it out now [daddy of M][or]I'm sorry I'll be a good [boy of the player] from now on, please let me go potty now[or]It feels weird [daddy of M][in random order][otherwise][one of]Stop this immediately[or]Leave my bowels alone[or]You are not a medical professional[or]This can't be happening[or]I DON'T NEED THIS! STOP IT AT ONCE[or]Let me go right now, I need to get to the toilet[or]This feels so wrong[or][in random order][end if]!'[roman type][line break]";
	otherwise say "[variable custom style][muffled sounds][roman type][line break]".

To say DQEnemaResistReactionFlav of (M - a monster):
	say "". [Can be customised for specific NPCs]

To say DQChangeResistFlav of (M - a monster):
	if there are worn perceived messed knickers, say "You pull away as best as you can, trying to escape before [NameDesc of M] exposes the mess you've made in your pants.";
	otherwise say "[one of]You wriggle around to make it as difficult as possible for [NameDesc of M] to change you[or]You flail your legs, trying to get [NameDesc of M] away[or]You scrabble at the ground to try and get away before you [if there are worn knickers]lose your [ShortDesc of random worn knickers][otherwise]are diapered[end if] but it's no use[in random order].";
	if the player is able to speak, say "[variable custom style]'[if the diaper addiction of the player >= 12][one of]I don't need a change yet[or]I don't wanna[or]This is boring[or]You're a mean poopyhead[in random order][otherwise if there are worn perceived messed knickers][one of]This isn't what it looks like[or]Please don't reveal my shame[in random order][otherwise if there are worn knickers][one of]This was just a one-off, I don't need diapers[or]Don't you dare expose my... my...[run paragraph on][or]What do you think you're doing?[run paragraph on][or]Please stop, I'm not actually diaper-dependent[in random order][otherwise][one of]Nooo, I don't want to be kept in nappies[or]Let me go, I could do this myself if I wanted[or]I'm not a baby, stop treating me like one[or]This is completely inappropriate[in random order][end if]!'[roman type][line break]";
	otherwise say "[variable custom style][muffled sounds][roman type][line break]".

To say DQChangeResistReactionFlav of (M - a monster):
	say "". [Can be customised for specific NPCs]

To say DQMasturbationResistFlav of (M - a monster):
	say "[one of]You shift your [if there is a worn diaper]padded [end if]loins left to right, trying to get [NameDesc of M] to let go[or]You flail your legs in rebellion[or]You clench your fists and try as hard as possible not to [if the player is horny]cum[otherwise]enjoy it[end if][in random order].";
	if the player is able to speak:
		if the player is a nympho:
			say "[variable custom style]'[if the player is horny][one of]It feels too good, you're gonna make me...[or]EEEE! You're gonna make me go cummies[or]Aaah! Please [daddy of M] am I allowed to make cummies?[or]It's... ugh... it's so good... I can't hold back much longer[in random order][otherwise if the player is diapered][one of]You're gonna have to do better than that to make me cum in my diaper[or]You're making my nappy feel so good[or]I'm not gonna make it easy for you to give me a diapergasm[or]*giggle* Uh-oh, I think I'm in trouble[in random order][otherwise][one of]Nuh-uh, good babies don't go cummies outside of their nappies[or]You're so NAUGHTY[or]Ooh [daddy of M] when you touch me there I feel so weird inside[or]Stop, I've been too naughty to be given squirt squirt time[in random order][end if]!'[roman type][line break]";
		otherwise if the player is a pervert:
			say "[variable custom style]'[if the player is very horny][one of]It feels so fucking good, you're gonna make me...[or]Oh wow, you're gonna make me cum[or]Aaah! Please stop... no wait... please don't stop[or]It's... it's too much... I can't hold back much longer[in random order][otherwise if there are worn wet knickers][one of]I can't believe this is happening through my wet [ShortDesc of a random worn knickers][or]Ahh... it's squelching against me[or]I can't let you make me cum through my soggy undies[or]Come on, at least let me take my underwear off first[in random order][otherwise if the player is diapered][one of]I'm not gonna make it easy for you, you motherfucker[or]Why does it feel so good, even though it's through my padding?[or]I can't believe I'm enjoying this while I'm diapered[or]No please stop... if I get too turned on by this, I'll have to admit I'm turning into a perverted diaper addict[or]No... please stop making me love diapers so much[in random order][otherwise][one of]This is... this isn't how I wanted this to happen[or]I'm... unf... not enjoying this... ooh, don't stop...[or]Let's settle this a different way, before I get too hot and bothered...[or]This is not a normal way for people to punish others[or]Everyone's so obsessed with sex around here. Stop trying to turn me into another drooling nympho[in random order][end if]!'[roman type][line break]";
		otherwise:
			say "[variable custom style]'[if the player is very horny][one of]Oh no, I can feel it, I'm gonna...[run paragraph on][or]Oh no, quick, stop, you're gonna make me cum[or]This is too much... I can't hold it back... please stop before I...[run paragraph on][in random order][otherwise if there are worn wet knickers][one of]Stop being so gross[or]This is disgusting[or]Who would do such a thing through soggy undies[or]It feels all yucky and clammy! Stop it already[or]I don't need you to do that to remind me that it's wet down there, I'm very well aware[or]This is not the sort of way I like to get off[in random order][otherwise if the player is diapered][one of]Stop! I'm not some weird diaper fetishist[or]Stop this at once, this is not the sort of thing to do to someone who's wearing a diaper[or]I can't believe this is happening while I'm diapered[or]Only a pervert could enjoy this while diapered[or]You're not going to make me like this[in random order][otherwise][one of]What the hell[or]Do you really think I'm going to just let you?[run paragraph on][or]Fuck you, I won't let you make me enjoy this[or]This is the last time I'm ever going to let myself get caught like this[in random order][end if]!'[roman type][line break]";
	otherwise:
		say "[variable custom style][muffled sounds][roman type][line break]".

To say DQMasturbationResistReactionFlav of (M - a monster):
	say "". [Can be customised for specific NPCs]

To say DQFeedingResistFlav of (M - a monster):
	say DefaultResistFlav of M.
To say DQFeedingResistReactionFlav of (M - a monster):
	say "". [Can be customised for specific NPCs]

To say DefaultResistFlav of (T - a thing):
	say "You struggle in vain to free yourself!".
To say DefaultResistReactionFlav of (T - a thing):
	say "". [Can be customised for specific NPCs]

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
	say "[one of]You lie there and take it anyway - you're too afraid of what [he of M] might do if you don't play along.[or]You decide you're safer if you just do whatever [he of M] has in mind, no matter how degrading.[or]You[']re too afraid of what could happen if you put up a fight! There[']s no way you're doing anything but taking everything [he of M] wants to give you![or]You wouldn't dare resist now, not when [he of M] has you right where [he of M] wants you! You sit there and take it like the [if the player is gendered male]sissy bitch[otherwise]scaredy-cat[end if] you are![at random]".

[!<SayOralAddResRefusalFlavOfMonster>+

REQUIRES COMMENTING

+!]
To say OralAddResRefusalFlav of (M - a monster):
	say "[one of]You try to resist, but in the end you can't stop yourself from polishing [his of M] [manly-penis] like the cum-hungry slut you are.[or]Your brain wants to resist, but your body doesn't. You submissively pleasure [NameDesc of M], desperate for your next semen fix.[or][if the player is feeling dominant]It's incredibly degrading, but you can't bring yourself to resist. Not when there's a [manly-penis] in your mouth just waiting to feed you a helping of delicious [semen].[otherwise]You can't bring yourself to resist knowing there could be a mouthful of tasty [semen] in this for you.[end if][or][if the player is not a pervert and the player is gendered female]You know it's something only a complete harlot would do, but you just can't pass up a mouthful of tasty [semen].[otherwise if the player is not a pervert]You know it's a little gay, but you just can't pass up a mouthful of tasty [semen].[otherwise]You can't help suckling [NameDesc of M][']s [manly-penis] for all it's worth. You might get to drink [semen] afterwards![end if][in random order]".

[!<SayOralSlutResRefusalFlavOfMonster>+

REQUIRES COMMENTING

+!]
To say OralSlutResRefusalFlav of (M - a monster):
	if M is male, say "[one of][if the oral sex addiction of the player < 6]No matter how hard you try, you can't keep yourself from desperately suckling [his of M] [manly-penis].[otherwise]Why would you do something like that? Sucking [manly-penis]s is FUN![end if][or][if the oral sex addiction of the player < 6]You hate yourself for it, but you can't help suckling [his of M] [manly-penis] for all it's worth.[otherwise]You just can't bring yourself to resist. Not when there's such a big, yummy [manly-penis] in your mouth.[end if][in random order]";
	otherwise say "You just can't bring yourself to resist; you love oral sex so much!".

[!<SayThirstResRefusalFlavOfMonster>+

REQUIRES COMMENTING

+!]
To say ThirstResRefusalFlav of (M - a monster):
	say "[one of]You want to resist, you really do, but you're just so thirsty...[or]You tell yourself to resist, but your body needs something to drink, and it knows where to get it from.[or]You can[']t stop now. Now when you're so close to something that can wet your throat...[or]You can[']t bring yourself to resist [NameDesc of M] knowing that [his of M] balls are so full of something to drink.[or][if the player is feeling dominant]You try to stop, but in the end your[otherwise]Your[end if] thirst wins out and you obediently pleasure [him of M] like the slut you are.[at random]".

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
Definition: a sex resist punishment is appropriate: decide no.

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
slap-punishment is a sex resist punishment. The priority of slap-punishment is 1.

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
	say SexResistSlapFlav of M;
	PainUp 1.

To say SexResistSlapFlav of (M - a monster):
	say "[BigNameDesc of M] [if M is intelligent][one of]cackles[or]laughs deeply[or]chuckles[or]snorts[at random] at your [one of]fruitless display[or]vain efforts[or]pointless attempts[or]futile resistance[at random][otherwise]looks at you blankly[end if] before [if M is male and M is penetrating face]slapping you harshly on the cheek[otherwise if M is male and M is penetrating breasts]painfully slapping your [BreastDesc][otherwise]roughly spanking your [buttcheeks][end if] [one of]to get you to behave[or]in order to keep you under control[or]as punishment[or]to discourage further disobedience[at random].".

[!<angerPunishment:SexResistPunishment>*

REQUIRES COMMENTING

*!]
anger-punishment is a sex resist punishment. The priority of anger-punishment is 1.

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
	if diaper quest is 1 and M is intelligent:
		say DQResistChastise of M;
	otherwise:
		say "[BigNameDesc of M] [one of]snarls[or]growls[or]frowns[or]harrumphs[or]shouts in annoyance[at random]. It looks like all you've managed to do is [one of]anger [him of M] further[or]piss [him of M] off[or]increase [his of M] animosity towards you[at random].";
	FavourDown M.

To say DQResistChastise of (M - a monster):
	if M is masturbating the player:
		say DQResistMasturbationChastise of M;
	otherwise if M is changing the player:
		say DQResistChangeChastise of M;
	otherwise:
		say "[BigNameDesc of M] [one of]laughs[or]growls[or]frowns[or]harrumphs[at random].[line break][speech style of M]'[one of]See now, this is why you need to be treated like a baby.'[or]Such childish behaviour.'[or]Aww, is the little baby having a tantrum?'[or]Good [boy of the player]s don't fight back.'[or]If you don't take this like a grown-up then that just shows that you still don't deserve to be treated as one.'[or]Hold still you little brat!'[or]You're just going to make [daddy of M] more mad!'[or]The more you struggle the longer this will take!'[in random order][roman type][line break]".

To say DQResistMasturbationChastise of (M - a monster):
	say "[BigNameDesc of M] [one of]laughs[or]smirks[or]chuckles[at random].[line break][speech style of M]'[one of]Uh-oh, is my little baby getting a bit flustered down there?'[or]You're getting a bit worked up, aren't you?'[or]Are you trying to tell me you don't like it? I don't believe you!'[or]Your body is telling me the truth of how good this feels!'[or]You should be thanking me!'[or]Haha, stop pretending you don't want more.'[in random order][roman type][line break]".

To say DQResistChangeChastise of (M - a monster):
	say "[BigNameDesc of M] [one of]tuts condescendingly[or]scowls[or]makes a noise like an angry parent[at random].[line break][speech style of M]'[one of]Hey, no messing around now, or I'll be keeping you in diapers for even longer!'[or]This is for your own good, you silly baby!'[or]All you're doing is making me angrier.'[or]You are NOT acting like someone who's ready for big girl panties.'[or]Is this the way that someone who's trying to prove they're big girl should act? I don't think so.'[or]All you're doing is proving that you're just a pathetic child.'[in random order][roman type][line break]".

Resisting ends here.
