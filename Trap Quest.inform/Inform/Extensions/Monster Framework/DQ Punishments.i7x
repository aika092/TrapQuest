DQ Punishments by Monster Framework begins here.

This is the choosing a diaper punishment rule:
	if the chosen-diaper-punishment of current-monster is punishment-not-found or the chosen-diaper-punishment of current-monster is not appropriate:
		choose a diaper punishment;
		if the chosen-diaper-punishment of current-monster is punishment-not-found:
			if debugmode > 0, say "No acceptable diaper punishment found.";
	if the chosen-diaper-punishment of current-monster is not punishment-not-found:
		let CDP be the chosen-diaper-punishment of current-monster;
		now the chosen-diaper-punishment of current-monster is punishment-not-found; [we want to reset this before the punishment starts]
		if debugmode > 0, say "Selected [CDP].";
		compute punishment of CDP;
		rule succeeds.
The choosing a diaper punishment rule is listed first in the default diaper quest rules.

A diaper punishment is a kind of object. A diaper punishment has a number called priority.

A monster has a diaper punishment called the chosen-diaper-punishment.

punishment-not-found is a diaper punishment.

To compute punishment of (P - a diaper punishment):
	say "BUG - the diaper punishment '[P]' has no execution function!".

Definition: a diaper punishment is appropriate: decide no.

Definition: a diaper punishment is prioritised:
	if the priority of it is current-priority, decide yes;
	decide no.

To choose a diaper punishment:
	now the chosen-diaper-punishment of current-monster is punishment-not-found;
	now current-priority is 10;
	while the chosen-diaper-punishment of current-monster is punishment-not-found and current-priority >= 0:
		now the chosen-diaper-punishment of current-monster is a random prioritised appropriate diaper punishment;
		unless the chosen-diaper-punishment of current-monster is a diaper punishment, now the chosen-diaper-punishment of current-monster is punishment-not-found;
		decrease current-priority by 1.

To say EnticeFlav of (M - a monster) for (P - a diaper punishment):
	if M is student:
		say "[line break][speech style of M]'[one of]Get on your knees NOW, twerp.'[or]What's the big deal? You must get bullied all the time! Just get on your knees already!'[in random order][roman type][line break]";
	if M is intelligent:
		say "[line break][speech style of M]'[one of]Right, down on your knees so we can have some fun.'[or]I can't wait to do something extra-special with you, as soon as you get on your knees!'[in random order][roman type][line break]";
	otherwise:
		say "[big he of M] adopts an aggressive posture, demanding that you submit immediately.".

To decide which number is the relevant addiction of (P - a diaper punishment):
	decide on 0.

Section 1 Diaper Change

diaper-change is a diaper punishment. The priority of diaper-change is 4.

To say EnticeFlav of (M - a monster) for (P - diaper-change):
	if M is intelligent, say "[line break][speech style of M]'All I want to do is [if there is perceived messed knickers]help you with your stinky situation[otherwise if there is perceived messed knickers]get you into something dry[otherwise]get you into something nice and padded[end if]! [one of]Come on, let me help you out...'[or]Just lie down, and it'll be over in a jiffy!'[or]It won't take a moment, as soon as you're on your knees...'[in random order][roman type][line break]";
	otherwise say "[big he of M] gestures that [he of M] wants to put you in a diaper.".

To decide which number is the relevant addiction of (P - diaper-change):
	decide on the diaper addiction of the player.

Definition: a monster (called M) is eager to change diapers:
	if M is changing the player, decide yes;
	if M is staff member and M is not nurse, decide no;
	if there is a soiled-diaper carried by M or the health of M < the maxhealth of M, decide no;
	if the class of the player is priestess, decide no;
	if there is worn unmessed unremovable knickers, decide no;
	if the player is stacked-but-outerly-dry, decide no;
	if M is aware that the player needs a change, decide yes;
	if M is aware that a diapering is possible, decide yes;
	decide no.

Definition: a clothing (called D) is easy to remove: [can an NPC easily remove this to change your diaper?]
	if D is glued, decide no;
	if D is unremovable and D is not messed knickers, decide no;
	if D is locked and current-monster is not a clothes-destroyer:
		let K be a random unlock-key covering D;
		if K is a thing and K is not held by current-monster and bondage protection is 0, decide no;
		if current-monster is not a generic-unlocker, decide no;
	if the bottom-layer of D > 0:
		repeat with C running through worn clothing:
			if the bottom-layer of D < the bottom-layer of C:
				if D is knickers:
					if D is crotch-pullup and C is not crotch-skirted and C is not easy to remove, decide no;
					if C is crotch-intact and C is not easy to remove, decide no;
	decide yes.

Definition: a monster (called M) is aware that the player needs a change:
	if diaper lover <= 0, decide no;
	repeat with N running through things grabbing the player:
		if N is not M, decide no;
	let D be a random worn knickers;
	if D is knickers:
		if D is diaper and (D is unmessed or diaper messing >= 4): [at diaper messing 3, messed diapers MUST be changed]
			if D is not easy to remove, decide no;
		if the class of the player is priestess and D is not diaper, decide yes;
		if D is diaper-stack and D is not messed, now D is entry (number of entries in the list of stacked diapers) in the list of stacked diapers;
		if D is currently visible or D is messed:
			if the urine-soak of D + the water-soak of D > the soak tolerance of M or D is messed, decide yes;
			if D is crotch-ripped diaper, decide yes;
	decide no.

Definition: a monster (called M) is scene messing triggering: [CURRENTLY UNUSED. instant messes can already occur from diaper checks but maybe we want to have it happen some other ways too]
	if M is not willing to change diapers, decide no;
	if diaper messing < 3 or (diaper messing >= 4 and rectum < 10) or the player is not full, decide no;
	repeat with N running through things grabbing the player:
		if N is not M, decide no;
	let D be a random worn diaper;
	if D is crotch-intact crotch-in-place diaper, decide yes;
	decide no.

To decide which number is the soak tolerance of (M - a monster):
	let D be a random worn knickers;
	if D is diaper-stack, now D is entry (number of entries in the list of stacked diapers) in the list of stacked diapers;
	if D is clothing, decide on 2 * the soak-limit of D / 3;
	decide on 0.

Definition: a monster (called M) is willing to change diapers:
	if M is willing to double diapers and M is eager to double diapers, decide yes; [This means that NPCs such as the demoness who usually don't change diapers, will enter the function to do so if it is known that they'll instead go for the double diaper option.]
	decide no.

Definition: diaper-change is appropriate:
	if current-monster is willing to change diapers and current-monster is eager to change diapers, decide yes;
	decide no.

To compute punishment of (P - diaper-change):
	compute diaper change of current-monster.

diaper-donate is a diaper punishment. The priority of diaper-donate is 4.

To say EnticeFlav of (M - a monster) for (P - diaper-donate):
	if M is intelligent, say "[line break][speech style of M]'All I want to do is [if there is perceived messed knickers]help you with your stinky situation[otherwise if there is perceived messed knickers]get you into something dry[otherwise]get you into something nice and padded[end if]! [one of]Come on, let me help you out...'[or]Just lie down, and it'll be over in a jiffy!'[or]It won't take a moment, as soon as you're on your knees...'[in random order][roman type][line break]";
	otherwise say "[big he of M] gestures that [he of M] wants to put you in a diaper.".

To decide which number is the relevant addiction of (P - diaper-donate):
	decide on the diaper addiction of the player.

Definition: a monster (called M) is eager to donate diapers:
	if M is changing the player, decide yes;
	if M is aware that a diapering is possible, decide yes;
	decide no.

Definition: a monster (called M) is aware that a diapering is possible:
	repeat with N running through monsters grabbing the player:
		if N is not M, decide no;
	if there is a worn diaper and (M is not willing to double diapers or M is not eager to double diapers), decide no;
	decide yes.

Definition: a monster (called M) is eager to double diapers:
	let D be a random worn diaper;
	if D is diaper:
		if M is double-diaper-committed, decide yes;
		if the total-soak of D >= the soak-limit of D, decide yes;
	decide no.

Definition: a monster is willing to double diapers: decide no.

Definition: a monster (called M) is willing to donate diapers:
	if the diaper-duration of M > 0, decide no; [The player had already been told by the NPC to stay in diapers! It's proper punishment time.]
	if M is willing to change diapers, decide yes;
	decide no.

Definition: diaper-donate is appropriate:
	if current-monster is willing to donate diapers and current-monster is eager to donate diapers, decide yes;
	decide no.

To compute punishment of (P - diaper-donate):
	compute diaper change of current-monster.

Section 2 Spanking Session

spanking-session is a diaper punishment. The priority of spanking-session is 2.

To say EnticeFlav of (M - a monster) for (P - spanking-session):
	if M is intelligent, say "[line break][speech style of M]'[one of]Get on your knees right now, and I'll let you off with a quick spanking.'[or]Perhaps you need a good spanking, and then to be sent on your way. What do you think about that?'[in random order][roman type][line break]";
	otherwise say "[big he of M] gestures that [he of M] wants to give you a spanking.".

To decide which number is the relevant addiction of (P - spanking-session):
	decide on the delicateness of the player.

Definition: a monster (called M) is eager to spank:
	if M is spanking the player, decide yes;
	if M is able to carry out a spanking, decide yes;
	decide no.

Definition: a monster (called M) is able to carry out a spanking:
	repeat with N running through monsters grabbing the player:
		if N is not M, decide no;
	decide yes.

Definition: a monster is willing to spank: decide no.

Definition: spanking-session is appropriate:
	if current-monster is willing to spank and current-monster is eager to spank, decide yes;
	decide no.

To compute punishment of (P - spanking-session):
	compute spanking of current-monster.

Section 3 Masturbation Session

masturbation-session is a diaper punishment. The priority of masturbation-session is 3.

To say EnticeFlav of (M - a monster) for (P - masturbation-session):
	if M is intelligent, say "[line break][speech style of M]'[one of]I can see you're all flustered, sweetheart. Why don't you let me make you feel even better?'[or][if there is a worn diaper]What's the big deal? I just want you to get on your knees so I can give you some lovely [']squirties[']...[otherwise]If you get on your knees right now, I'll make you feel really good down there[end if]...'[in random order][roman type][line break]";
	otherwise say "[big he of M] gestures that [he of M] wants to masturbate you.".

To decide which number is the relevant addiction of (P - masturbation-session):
	decide on the sex addiction of the player.

Definition: a monster (called M) is eager to masturbate:
	if M is masturbating the player, decide yes;
	let D be a random worn diaper;
	if D is not diaper, decide no;
	if D is not total protection, decide no;
	if D is messed and M is not willing to masturbate messy players, decide no;
	if M is able to carry out masturbation, decide yes;
	decide no.

Definition: a monster (called M) is able to carry out masturbation:
	repeat with N running through monsters grabbing the player:
		if N is not M, decide no;
	if there is a worn chastity-belt, decide no;
	if there is a worn chastity cage and the player is not possessing a vagina, decide no;
	if (the player is not a bit horny and M is only willing to masturbate horny players) or refractoryperiod > 0, decide no;
	decide yes.

Definition: a monster is willing to masturbate: decide no.

Definition: a monster is only willing to masturbate horny players: decide yes. [If this is changed for an intelligent NPC make sure to change MasturbationDeclarationFlav as well]
Definition: a monster is willing to masturbate messy players: decide yes. [If this is changed for an intelligent NPC make sure to change MasturbationDeclarationFlav as well]

Definition: masturbation-session (called P) is appropriate:
	if current-monster is willing to masturbate and current-monster is eager to masturbate, decide yes;
	decide no.

To compute punishment of (P - masturbation-session):
	compute masturbation of current-monster.

Section 4 Enema

deliver-enema is a diaper punishment. The priority of deliver-enema is 2.

To say EnticeFlav of (M - a monster) for (P - deliver-enema):
	if M is intelligent, say "[line break][speech style of M]'[one of]Tell you what, if you get on your knees now, I'll let you off with a quick simple punishment enema.'[or]I'm thinking maybe I should give you an enema. I wonder, are you the sort of naughty pervert who would enjoy that, hmm?'[in random order][roman type][line break]";
	otherwise say "[big he of M] gestures that [he of M] wants to fill you up with an enema.".

To decide which number is the relevant addiction of (P - deliver-enema):
	decide on the grossness addiction of the player.

Definition: a monster (called M) is eager to deliver enemas:
	if M is enema-filling the player, decide yes;
	if M is able to deliver enemas, decide yes;
	decide no.

Definition: a monster (called M) is able to deliver enemas:
	if enema fetish is 0, decide no;
	repeat with N running through monsters grabbing the player:
		if N is not M, decide no;
	if there is a worn cursed clothing penetrating asshole and M is not able to remove cursed plugs, decide no;
	if the water volume of belly > 0, decide no;
	let D be a random worn knickers;
	if D is knickers:
		if D is messed or D is not easy to remove, decide no;
	decide yes.

Definition: a monster is willing to deliver enemas: decide no.

Definition: deliver-enema (called P) is appropriate:
	if current-monster is willing to deliver enemas and current-monster is eager to deliver enemas, decide yes;
	decide no.

To compute punishment of (P - deliver-enema):
	compute enema of current-monster.

Section 5 Forcefeeding

forcefeed is a diaper punishment. The priority of forcefeed is 2.
pet-forcefeed is a diaper punishment. The priority of pet-forcefeed is 4.
potion-forcefeed is a diaper punishment. The priority of potion-forcefeed is 2.

To say EnticeFlav of (M - a monster) for (P - forcefeed):
	if M is intelligent, say "[line break][speech style of M]'[one of]I just want to sate that rumbling in your tummy, little one! Come on, come sit on [daddytitle of M][']s lap.'[or]If you get on your knees RIGHT NOW, I'll just feed you your din-dins, and not punish you any more, okay?'[in random order][roman type][line break]";
	otherwise say "[big he of M] gestures that [he of M] wants to feed you some food.".

To say EnticeFlav of (M - a monster) for (P - pet-forcefeed):
	if M is intelligent, say "[line break][speech style of M]'It's time for your din-dins, you silly pet!'[roman type][line break]";
	otherwise say "[big he of M] gestures that [he of M] wants to feed you some food.".

To say EnticeFlav of (M - a monster) for (P - potion-forcefeed):
	if M is intelligent, say "[line break][speech style of M]'You've got a funny looking drink there. I wonder what will happen if you drink it...'[roman type][line break]";
	otherwise say "[big he of M] gestures that [he of M] wants to make you drink something.".

To decide which number is the relevant addiction of (P - forcefeed):
	decide on the diaper addiction of the player.
To decide which number is the relevant addiction of (P - pet-forcefeed):
	decide on the diaper addiction of the player.
To decide which number is the relevant addiction of (P - potion-forcefeed):
	decide on the diaper addiction of the player.

Definition: a monster (called M) is eager to forcefeed:
	if M is feeding the player, decide yes;
	if M is able to forcefeed, decide yes;
	decide no.
Definition: a monster (called M) is eager to pet-forcefeed:
	if M is unintelligent, decide no;
	if diaper messing < 3 and the player is not thirsty, decide no;
	if the player is thirsty or the stomach-food of the player <= 1:
		if there is a worn locked gag and M is able to pet-forcefeed, decide yes;
	decide no.
Definition: a monster (called M) is eager to potion-forcefeed:
	if M is unintelligent, decide no;
	if debugmode > 0 and M is willing to potion forcefeed, say "[input-style]Items held by the player that can be forcefed are: [list of carried forcefeedable things][roman type][line break]";
	if there is a carried forcefeedable thing, decide yes;
	decide no.
Definition: a thing (called T) is forcefeedable:
	if T is a cursed sure alchemy product:
		if T is potion or T is elixir or T is tincture, decide yes;
	decide no.
Definition: a bottle (called T) is forcefeedable:
	if T is empty, decide no;
	if T is cursed sure non-empty bottle or the fill-colour of T is creamy or the fill-colour of T is golden or the fill-colour of T is white or the fill-colour of T is murky, decide yes;
	decide no.
Definition: a bag lunch is forcefeedable: decide yes.
Definition: a clothing (called T) is forcefeedable:
	if the used condoms of T > 0, decide yes;
	decide no.


Definition: a monster (called M) is able to forcefeed:
	repeat with N running through monsters grabbing the player:
		if N is not M, decide no;
	if the player is mouthblocked:
		repeat with C running through things penetrating face:
			if C is not clothing, decide no;
			if C is not ringagged:
				if C is locked:
					let K be a random unlock-key covering C;
					if K is a thing and K is not held by current-monster and bondage protection is 0, decide no;
					if current-monster is not a generic-unlocker, decide no;
				if C is cursed and C is not pacifier and M is not able to remove cursed plugs, decide no;
	decide yes.

Definition: a monster (called M) is able to pet-forcefeed:
	repeat with N running through monsters grabbing the player:
		if N is not M, decide no;
	if the player is mouthblocked:
		repeat with C running through things penetrating face:
			if C is not clothing, decide no;
			if C is not tearable, decide no;
	decide yes.


Definition: a monster (called M) is willing to forcefeed:
	if M is male and M is prepared to DQ urinate, decide yes;
	decide no.
Definition: a monster is willing to potion forcefeed: decide no.

Definition: a monster is willing to forcefeed pills: decide no.

Definition: forcefeed (called P) is appropriate:
	if current-monster is willing to forcefeed and current-monster is eager to forcefeed, decide yes;
	decide no.
Definition: pet-forcefeed (called P) is appropriate:
	if current-monster is willing to forcefeed and current-monster is eager to pet-forcefeed, decide yes;
	decide no.
potion-forcefeed-cooldown is a number that varies.
Definition: potion-forcefeed (called P) is appropriate:
	if potion-forcefeed-cooldown <= 0 and current-monster is willing to potion forcefeed and current-monster is eager to potion-forcefeed, decide yes;
	decide no.
An all time based rule (this is the potion forcefeed cooldown rule):
	decrease potion-forcefeed-cooldown by time-seconds.

Definition: a monster (called M) is prepared to DQ urinate:
	if watersports fetish is 1 and M is willing to urinate and the bladder of M >= 600, decide yes;
	decide no.

To compute punishment of (P - forcefeed):
	if current-monster is prepared to DQ urinate, compute current-monster urinating;
	otherwise compute forcefeed of current-monster.
To compute punishment of (P - pet-forcefeed):
	compute forcefeed of current-monster.
To compute punishment of (P - potion-forcefeed):
	compute potion forcefeed of current-monster.

Section 6 Confiscation

confiscate is a diaper punishment. The priority of confiscate is 2.

To say EnticeFlav of (M - a monster) for (P - confiscate):
	if M is intelligent, say "[line break][speech style of M]'Get on your knees right now, and I'll only confiscate one grown-up thing.'[roman type][line break]";
	otherwise say "[big he of M] gestures that [he of M] wants to confiscate one of your items.".

To decide which number is the relevant addiction of (P - confiscate):
	decide on the humiliation of the player / 2000.

Definition: a monster (called M) is eager to confiscate:
	if the health of M >= the maxhealth of M and the diaper-duration of M is 0, decide no; [Most NPCs only confiscate if they've been properly wronged.]
	if M is able to confiscate, decide yes;
	decide no.

Definition: a monster is able to confiscate:
	if there is confiscatable clothing, decide yes;
	decide no.

Definition: a clothing (called C) is confiscatable:
	if C is not worn or C is cursed or C is locked or C is unremovable or C is not stealable or C is not currently visible or (C is not bra and the unworn cringe of C > 0), decide no;
	decide yes.

Definition: a monster is willing to confiscate: decide no.

Definition: confiscate (called P) is appropriate:
	if current-monster is willing to confiscate and current-monster is eager to confiscate, decide yes;
	decide no.

To compute punishment of (P - confiscate):
	compute confiscate of current-monster.

Section 7 Babywear Donation

donate babywear is a diaper punishment. The priority of donate babywear is 2.

To say EnticeFlav of (M - a monster) for (P - donate babywear):
	if M is intelligent, say "[line break][speech style of M]'Get on your knees right now, and I'll just put you in something pretty and then let you go, okay?'[roman type][line break]";
	otherwise say "[big he of M] gestures that [he of M] wants to dress you in something childish.".

To decide which number is the relevant addiction of (P - donate babywear):
	decide on the humiliation of the player / 2000.

Definition: a monster (called M) is eager to donate babywear:
	if the health of M >= the maxhealth of M and the diaper-duration of M is 0, decide no; [Most NPCs only donate babywear if they've been properly wronged.]
	if M is able to donate babywear, decide yes;
	decide no.

Definition: a monster is able to donate babywear:
	if there is babywearable clothing, decide yes;
	decide no.

Definition: a clothing (called C) is babywearable:
	if C is on-stage or C is not babywear, decide no;
	if C is unskirted themed and there is worn skirted clothing, decide no;
	if C is skirted and there is worn unskirted themed clothing, decide no;
	if C is actually summonable, decide yes;
	decide no.

Definition: a monster is willing to donate babywear:
	if it is willing to confiscate, decide yes;
	decide no.

Definition: donate babywear (called P) is appropriate:
	if current-monster is willing to donate babywear and current-monster is eager to donate babywear, decide yes;
	decide no.

To compute punishment of (P - donate babywear):
	compute babywear donation of current-monster.

Section 8 Untidy Punishment Session

untidy-session is a diaper punishment. The priority of untidy-session is 6.

To say EnticeFlav of (M - a monster) for (P - untidy-session):
	if diaper messing >= 7:
		if M is intelligent, say "[line break][speech style of M]'[one of]There's no use, I'm going to make you smell the stench of your own litter, whether you like it or not! Down on your knees, now!'[or]Surrender now, and submit to the stench of your nasty discarded nappies at once!'[in random order][roman type][line break]";
		otherwise say "[big he of M] gestures that [he of M] wants to smush your face into the soiled diaper [he of M] found.";
	otherwise:
		if M is intelligent, say "[line break][speech style of M]'[one of]There's no use, I'm going to make punish you for littering, whether you like it or not! Get on your knees, now!'[or]Surrender now, and submit to the punishment for carelessly discarding your dirty nappies!'[in random order][roman type][line break]";
		otherwise say "[big he of M] gestures that [he of M] wants to hold you responsible for the soiled diaper [he of M] found.".

To decide which number is the relevant addiction of (P - untidy-session):
	if diaper messing >= 7, decide on the grossness addiction of the player - 6; [you have to be really addicted to want this]
	otherwise decide on the bimbo of the player.

Definition: a monster (called M) is eager to punish untidiness:
	if M is able to punish untidiness, decide yes;
	decide no.

Definition: a monster (called M) is able to punish untidiness:
	repeat with N running through monsters grabbing the player:
		if N is not M, decide no;
	if there is a soiled-diaper carried by M, decide yes;
	if there is a dirty diaper carried by M, decide yes;
	decide no.

[When setting this to 'decide yes', make sure that the NPC doesn't have a custom "uniquely unfriendly" function that needs to have related stuff added. And probably make sure that their perception functions have been updated to make it clear why they're unfriendly.]
Definition: a monster is willing to punish untidiness: decide no.

Definition: untidy-session is appropriate:
	if current-monster is willing to punish untidiness and current-monster is eager to punish untidiness, decide yes;
	decide no.

To compute punishment of (P - untidy-session):
	compute untidiness punishment of current-monster.

Section 9 Diaper Urinal

diaper-urinal is a diaper punishment. The priority of diaper-urinal is 3.

To say EnticeFlav of (M - a monster) for (P - diaper-urinal):
	if M is intelligent, say "[line break][speech style of M]'[one of]I'm going to piss in your diaper now. Just get on your knees, and let it happen[or]Oh come on, we both know that deep down, you want me to pee in your diaper. Now get on your knees, and prove it[cycling].'[roman type][line break]";
	otherwise say "[big he of M] gestures that [he of M] wants to urinate in your diaper.".

To decide which number is the relevant addiction of (P - diaper-urinal):
	decide on the grossness addiction of the player.

Definition: a monster (called M) is eager to use a diaper urinal:
	if M is able to use a diaper urinal and (the bladder of M >= 800 or (watersports fetish is 0 and the bladder of M >= 200 and the class of the player is human toilet)), decide yes;
	decide no.

Definition: a clothing (called C) is diaper urinal blocking:
	if C is crotch covering and C is belly covering, decide yes; [something like a onesie where there's no waistband to pull forward]
	decide no.

Definition: a monster (called M) is able to use a diaper urinal:
	if diaper swapping < 2, decide no;
	repeat with N running through monsters grabbing the player:
		if N is changing the player, decide no;
	if there is a worn diaper urinal blocking clothing, decide no;
	if there is a worn unglued unlocked diaper, decide yes;
	decide no.

Definition: a monster is willing to use a diaper urinal: decide no.

Definition: diaper-urinal (called P) is appropriate:
	if current-monster is willing to use a diaper urinal and current-monster is eager to use a diaper urinal, decide yes;
	decide no.

To compute punishment of (P - diaper-urinal):
	compute diaper urinal use of current-monster.

Section 10 Diaper Cumrag

diaper-cumrag is a diaper punishment. The priority of diaper-cumrag is 2.

To say EnticeFlav of (M - a monster) for (P - diaper-cumrag):
	if M is intelligent, say "[line break][speech style of M]'[one of]I'm going to cum in your diaper now. Just get on your knees, and let it happen[or]Oh come on, we both know that deep down, you want me fill your diaper with my cum. Now get on your knees, and prove it[cycling].'[roman type][line break]";
	otherwise say "[big he of M] gestures that [he of M] wants to ejaculate in your diaper.".

To decide which number is the relevant addiction of (P - diaper-cumrag):
	decide on (the grossness addiction of the player + the sex addiction of the player) / 2.

Definition: a monster is eager to use a diaper cumrag:
	if it is able to use a diaper cumrag, decide yes;
	decide no.

Definition: a monster (called M) is able to use a diaper cumrag:
	if diaper cumrag <= 0, decide no;
	repeat with N running through monsters grabbing the player:
		if N is changing the player, decide no;
	if there is a worn diaper urinal blocking clothing, decide no;
	if there is a worn unglued unlocked diaper, decide yes;
	decide no.

Definition: a monster is willing to use a diaper cumrag:
	if it is male and it is willing to use a diaper urinal, decide yes;
	decide no.

Definition: diaper-cumrag (called P) is appropriate:
	if current-monster is willing to use a diaper cumrag and current-monster is eager to use a diaper cumrag, decide yes;
	decide no.

To compute punishment of (P - diaper-cumrag):
	compute diaper cumrag use of current-monster.

Section 11 Diaper Facesit

diaper-facesit is a diaper punishment. The priority of diaper-facesit is 2.

To say EnticeFlav of (M - a monster) for (P - diaper-facesit):
	if M is intelligent, say "[line break][speech style of M]'Why don't you lie down on your back, and let me sit my big padded bum-bum right down on that cute little face of yours...'[roman type][line break]";
	otherwise say "[big he of M] gestures that [he of M] wants to sit on your face and go potty.".

To decide which number is the relevant addiction of (P - diaper-facesit):
	decide on the grossness addiction of the player - 3.

Definition: a monster is eager to diaper facesit:
	if it is able to diaper facesit, decide yes;
	decide no.

Definition: a monster is able to diaper facesit:
	if there is a monster penetrating face, decide no;
	decide yes.

Definition: a monster is willing to diaper facesit: decide no. [Needs to be enabled individually.]

Definition: diaper-facesit (called P) is appropriate:
	if current-monster is willing to diaper facesit and current-monster is eager to diaper facesit, decide yes;
	decide no.

To compute punishment of (P - diaper-facesit):
	compute diaper facesit of current-monster.

Section 12 Tickling Session

tickling-session is a diaper punishment. The priority of tickling-session is 5.

To say EnticeFlav of (M - a monster) for (P - tickling-session):
	if M is intelligent, say "[line break][speech style of M]'[one of]Get on your knees right now, and I'll let you off with some tickle torture.'[or]Get on your knees, baby, it's tickle time!'[in random order][roman type][line break]";
	otherwise say "[big he of M] gestures that [he of M] just wants to tickle you for a bit.".

To decide which number is the relevant addiction of (P - tickling-session):
	decide on the delicateness of the player.

Definition: a monster (called M) is eager to tickle:
	if M is tickling the player, decide yes;
	if M is able to carry out a tickling, decide yes;
	decide no.

Definition: a monster (called M) is able to carry out a tickling:
	repeat with N running through monsters grabbing the player:
		if N is not M, decide no;
	decide yes.

Definition: a monster is willing to tickle:
	if it is human and it is intelligent and it is not male and the player is an april 2025 diaper donator, decide yes;
	decide no.

Definition: tickling-session is appropriate:
	if current-monster is willing to tickle and current-monster is tickle-testing, decide yes;
	decide no.

To compute punishment of (P - tickling-session):
	compute tickling of current-monster.

DQ Punishments ends here.
