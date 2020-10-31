DQ Punishments by Monster Framework begins here.

This is the choosing a diaper punishment rule:
	choose a diaper punishment;
	if chosen diaper punishment is punishment-not-found:
		if debugmode > 0, say "No acceptable diaper punishment found.";
	otherwise:
		if debugmode > 0, say "Selected [chosen diaper punishment].";
		compute punishment of chosen diaper punishment;
		rule succeeds.
The choosing a diaper punishment rule is listed first in the default diaper quest rules.

A diaper punishment is a kind of object. A diaper punishment has a number called priority.

chosen diaper punishment is a diaper punishment that varies. punishment-not-found is a diaper punishment.

To compute punishment of (P - a diaper punishment):
	say "BUG - the diaper punishment '[P]' has no execution function!".

Definition: a diaper punishment is appropriate: decide no.

Definition: a diaper punishment is prioritised:
	if the priority of it is current-priority, decide yes;
	decide no.

To choose a diaper punishment:
	now chosen diaper punishment is punishment-not-found;
	now current-priority is 6;
	while chosen diaper punishment is punishment-not-found and current-priority >= 0:
		now chosen diaper punishment is a random prioritised appropriate diaper punishment;
		unless chosen diaper punishment is a diaper punishment, now chosen diaper punishment is punishment-not-found;
		decrease current-priority by 1.

Section 1 Diaper Change

diaper-change is a diaper punishment. The priority of diaper-change is 4.

Definition: a monster (called M) is eager to change diapers:
	if M is changing the player, decide yes;
	if there is a soiled-diaper carried by M or the health of M < the maxhealth of M, decide no;
	if the class of the player is priestess, decide no;
	if M is aware that the player needs a change, decide yes;
	if M is aware that a diapering is possible, decide yes;
	decide no.

Definition: a monster (called M) is aware that the player needs a change:
	if diaper lover <= 0, decide no;
	repeat with N running through things grabbing the player:
		if N is not M, decide no;
	let D be a random worn knickers;
	if the class of the player is priestess and D is not diaper, decide yes;
	if D is diaper-stack and D is not messed, now D is entry (number of entries in the list of stacked diapers) in the list of stacked diapers;
	if D is currently visible knickers or D is messed knickers:
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

Definition: a monster (called M) is eager to masturbate:
	if M is masturbating the player, decide yes;
	let D be a random worn diaper;
	if D is not diaper, decide no;
	if D is messed or D is not total protection, decide no;
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

Definition: a monster (called M) is only willing to masturbate horny players: [If this is changed for an intelligent NPC make sure to change MasturbationDeclarationFlav as well]
	decide yes.

Definition: masturbation-session (called P) is appropriate:
	if current-monster is willing to masturbate and current-monster is eager to masturbate, decide yes;
	decide no.

To compute punishment of (P - masturbation-session):
	compute masturbation of current-monster.

Section 4 Enema

deliver-enema is a diaper punishment. The priority of deliver-enema is 2.

Definition: a monster (called M) is eager to deliver enemas:
	if M is enema-filling the player, decide yes;
	if M is able to deliver enemas, decide yes;
	decide no.

Definition: a monster (called M) is able to deliver enemas:
	repeat with N running through monsters grabbing the player:
		if N is not M, decide no;
	if there is a worn cursed clothing penetrating asshole and M is not able to remove cursed plugs, decide no;
	if there is a worn messed knickers, decide no;
	if the water volume of belly > 0, decide no;
	decide yes.

Definition: a monster is willing to deliver enemas: decide no.

Definition: deliver-enema (called P) is appropriate:
	if current-monster is willing to deliver enemas and current-monster is eager to deliver enemas, decide yes;
	decide no.

To compute punishment of (P - deliver-enema):
	compute enema of current-monster.

Section 5 Forcefeeding

forcefeed is a diaper punishment. The priority of forcefeed is 2.

Definition: a monster (called M) is eager to forcefeed:
	if M is feeding the player, decide yes;
	if M is able to forcefeed, decide yes;
	decide no.

Definition: a monster (called M) is able to forcefeed:
	repeat with N running through monsters grabbing the player:
		if N is not M, decide no;
	if there is a worn cursed ballgag and M is not able to remove cursed plugs, decide no;
	decide yes.

Definition: a monster is willing to forcefeed: decide no.

Definition: a monster is willing to forcefeed pills: decide no.

Definition: forcefeed (called P) is appropriate:
	if current-monster is willing to forcefeed and current-monster is eager to forcefeed, decide yes;
	decide no.

To compute punishment of (P - forcefeed):
	if watersports fetish is 1 and current-monster is willing to urinate, compute current-monster urinating;
	otherwise compute forcefeed of current-monster.

Section 6 Confiscation

confiscate is a diaper punishment. The priority of confiscate is 2.

Definition: a monster (called M) is eager to confiscate:
	if the health of M >= the maxhealth of M and the diaper-duration of M is 0, decide no; [Most NPCs only confiscate if they've been properly wronged.]
	if M is able to confiscate, decide yes;
	decide no.

Definition: a monster is able to confiscate:
	if there is confiscatable clothing, decide yes;
	decide no.

Definition: a clothing (called C) is confiscatable:
	if C is not worn or C is cursed or C is locked or C is unremovable or C is not stealable or C is not currently visible or the unworn cringe of C > 0, decide no;
	decide yes.

Definition: a monster is willing to confiscate: decide no.

Definition: confiscate (called P) is appropriate:
	if current-monster is willing to confiscate and current-monster is eager to confiscate, decide yes;
	decide no.

To compute punishment of (P - confiscate):
	compute confiscate of current-monster.

Section 7 Babywear Donation

donate babywear is a diaper punishment. The priority of donate babywear is 2.

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

untidy-session is a diaper punishment. The priority of untidy-session is 5.

Definition: a monster (called M) is eager to punish untidiness:
	if M is able to punish untidiness, decide yes;
	decide no.

Definition: a monster (called M) is able to punish untidiness:
	repeat with N running through monsters grabbing the player:
		if N is not M, decide no;
	if there is a soiled-diaper carried by M, decide yes;
	decide no.

[When setting this to 'decide yes', make sure that the NPC doesn't have a custom "uniquely unfriendly" function that needs to have related stuff added. And probably make sure that their perception functions have been updated to make it clear why they're unfriendly.]
Definition: a monster is willing to punish untidiness: decide no.

Definition: untidy-session is appropriate:
	if current-monster is willing to punish untidiness and current-monster is eager to punish untidiness, decide yes;
	decide no.

To compute punishment of (P - untidy-session):
	compute untidiness punishment of current-monster.

DQ Punishments ends here.
