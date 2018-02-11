Long Waiting by Actions begins here.


[!<longWaiting:Action>*

REQUIRES COMMENTING

*!]
LongWaiting is an action applying to nothing.

[!<CheckLongWaiting>+

REQUIRES COMMENTING

+!]
Check LongWaiting:
	if the player is immobile, say "You're a bit busy to use this verb!" instead;
	if the player is in danger, say "You can't use this verb when there are aggressive monsters nearby!" instead;
	say "Do you want to wait until something interesting happens[if the location of the player is smoky and the player is prone][bold type] (NB the room you are in has pink smoke)[roman type][end if]? [yesnolink] ";
	unless the player consents, say "You decide against it." instead;
	if the player is upright:
		say "Are you aware that you are standing and will therefore gain fatigue over time? [yesnolink]";
		unless the player consents, say "You decide against it." instead.


[!<longWaitRules:Rulebook>*

REQUIRES COMMENTING

*!]
The long wait rules are a rulebook. The long wait rules have default success.

[!<longWaitSetupRules:Rulebook>*

REQUIRES COMMENTING

*!]
The long wait setup rules are a rulebook.

[!<longWaitReportRules:Rulebook>*

REQUIRES COMMENTING

*!]
The long wait report rules are a rulebook. The long wait report rules have default failure. [If for some reason we don't know why the long wait ended, then this allows us to at least say something.]

[!<oldPregnancy:Integer>*

REQUIRES COMMENTING

*!]
old-pregnancy is a number that varies.

[!<TheLongWaitSetupPregnancyRule>+

REQUIRES COMMENTING

+!]
This is the long wait setup pregnancy rule: 
	now old-pregnancy is the pregnancy of the player. 
The long wait setup pregnancy rule is listed in the long wait setup rules.

[!<TheLongWaitPregnancyRule>+

REQUIRES COMMENTING

+!]
This is the long wait pregnancy rule:
	if old-pregnancy is not the pregnancy of the player:
		rule fails.
The long wait pregnancy rule is listed in the long wait rules.

[!<TheLongWaitReportPregnancyRule>+

REQUIRES COMMENTING

+!]
This is the long wait report pregnancy rule:
	if old-pregnancy is not the pregnancy of the player, rule succeeds. [If the player just gave birth or become pregnant, it should be pretty clear why the long wait ended.]
The long wait report pregnancy rule is listed in the long wait report rules.


[!<TheLongWaitDangerRule>+

REQUIRES COMMENTING

+!]
This is the long wait danger rule:
	if the player is in danger or the alert of the player is 1:
		rule fails.
The long wait danger rule is listed in the long wait rules.

[!<TheLongWaitReportDangerRule>+

REQUIRES COMMENTING

+!]
This is the long wait report danger rule:
	if the player is in danger or the alert of the player is 1:
		[say "[bold type]Waiting ended as an aggressive monster is nearby.[roman type][line break]";]
		now the alert of the player is 0;
		rule succeeds.
The long wait report danger rule is listed in the long wait report rules.


[!<TheLongWaitDangerRule>+

REQUIRES COMMENTING

+!]
This is the long wait school dungeon rule:
	if the player is in School34 and dungeon chains is not worn, rule fails.
The long wait school dungeon rule is listed in the long wait rules.

[!<TheLongWaitReportDangerRule>+

REQUIRES COMMENTING

+!]
This is the long wait report school dungeon rule:
	if the player is in School34 and dungeon chains is not worn:
		say "[bold type]Waiting ended you are no longer bound by chains.[roman type][line break]";
		rule succeeds.
The long wait report school dungeon rule is listed in the long wait report rules.

[!<oldThirst:Integer>*

REQUIRES COMMENTING

*!]
old-thirst is a number that varies.

[!<TheLongWaitSetupThirstRule>+

REQUIRES COMMENTING

+!]
This is the long wait setup thirst rule:
	now old-thirst is the thirst of the player.
The long wait setup thirst rule is listed in the long wait setup rules.

[!<TheLongWaitThirstRule>+

REQUIRES COMMENTING

+!]
This is the long wait thirst rule:
	if the thirst of the player > old-thirst and the player is thirsty:
		rule fails;
	if there is a worn cock pacifier and the thirst of the player < old-thirst and watersports fetish is 0:
		rule fails.[With watersports fetish enabled, the cock pacifier can cause an infinite loop.]
The long wait thirst rule is listed in the long wait rules.

[!<TheLongWaitReportThirstRule>+

REQUIRES COMMENTING

+!]
This is the long wait report thirst rule:
	if (the thirst of the player > old-thirst and the player is thirsty):
		[say "[bold type]Waiting ended as you [if the thirst of the player is 5]are dying to drink[otherwise]have become more thirsty[end if].[roman type][line break]";]
		rule succeeds.
The long wait report thirst rule is listed in the long wait report rules.

[!<oldStance:Integer>*

REQUIRES COMMENTING

*!]
long-stance is a number that varies.

[!<TheLongWaitSetupStanceRule>+

REQUIRES COMMENTING

+!]
This is the long wait setup stance rule:
	now long-stance is the stance of the player.
The long wait setup stance rule is listed in the long wait setup rules.

[!<TheLongWaitStanceRule>+

REQUIRES COMMENTING

+!]
This is the long wait stance rule:
	if the stance of the player is not long-stance, rule fails.
The long wait stance rule is listed in the long wait rules.

[!<TheLongWaitReportStanceRule>+

REQUIRES COMMENTING

+!]
This is the long wait report stance rule:
	if the stance of the player is not long-stance:
		[say "[bold type]Waiting ended as you [if the player is prone]fell to your knees[otherwise]changed stance[end if].";]
		rule succeeds.
The long wait report stance rule is listed in the long wait report rules.

[!<oldBursting:Integer>*

REQUIRES COMMENTING

*!]
old-bursting is a number that varies.

[!<TheLongWaitBladderSetupRule>+

REQUIRES COMMENTING

+!]
This is the long wait setup bladder rule: 
	if the player is bursting, now old-bursting is 1;
	otherwise now old-bursting is 0. 
The long wait setup bladder rule is listed in the long wait setup rules.

[!<TheLongWaitBladderRule>+

REQUIRES COMMENTING

+!]
This is the long wait bladder rule:
	if the player is not bursting and old-bursting is 1, rule fails;
	if the player is bursting and old-bursting is 0,	rule fails.
The long wait bladder rule is listed in the long wait rules.

[!<TheLongWaitReportBladderRule>+

REQUIRES COMMENTING

+!]
This is the long wait report bladder rule:
	if (the player is bursting and old-bursting is 0) or (the player is not bursting and old-bursting is 1):
		[say "[bold type]Waiting ended as you have become more desperate to pee.[roman type][line break]";]
		rule succeeds.
The long wait report bladder rule is listed in the long wait report rules.

[!<oldRectum:Integer>*

REQUIRES COMMENTING

*!]
old-rectum is a number that varies.

[!<TheLongWaitSetupRectumRule>+

REQUIRES COMMENTING

+!]
This is the long wait setup rectum rule: 
	now old-rectum is rectum. 
The long wait setup rectum rule is listed in the long wait setup rules.

[!<TheLongWaitRectumRule>+

REQUIRES COMMENTING

+!]
This is the long wait rectum rule:
	if rectum < old-rectum,	rule fails.
The long wait rectum rule is listed in the long wait rules.

[!<TheLongWaitRectumReportRule>+

REQUIRES COMMENTING

+!]
This is the long wait report rectum rule:
	if rectum < old-rectum:
		[say "[bold type]Waiting ended as you have messed yourself.[roman type][line break]";]
		rule succeeds.
The long wait report rectum rule is listed in the long wait report rules.

[!<oldSquirtable:Integer>*

REQUIRES COMMENTING

*!]
old-squirtable is a number that varies.

[!<TheLongWaitSetupBellyFillRule>+

REQUIRES COMMENTING

+!]
This is the long wait setup belly fill rule:
	now old-squirtable is the total squirtable fill of belly.
The long wait setup belly fill rule is listed in the long wait setup rules.

[!<TheLongWaitBellyFillRule>+

REQUIRES COMMENTING

+!]
This is the long wait belly fill rule:
	if old-squirtable is not the total squirtable fill of belly:
		rule fails.
The long wait belly fill rule is listed in the long wait rules.

[!<TheLongWaitReportBellyFillRule>+

REQUIRES COMMENTING

+!]
This is the long wait report belly fill rule:
	if old-squirtable is not the total squirtable fill of belly:
		say "[bold type]Waiting ended as your belly has changed in volume.[roman type][line break]";
		rule succeeds.
The long wait report belly fill rule is listed in the long wait report rules.

[!<oldWorn:Integer>*

REQUIRES COMMENTING

*!]
old-worn is a number that varies.

[!<TheLongWaitSetupWornClothesRule>+

REQUIRES COMMENTING

+!]
This is the long wait setup worn clothes rule:
	now old-worn is the number of worn wearthings.
The long wait setup worn clothes rule is listed in the long wait setup rules.

[!<TheLongWaitWornClothesRule>+

REQUIRES COMMENTING

+!]
This is the long wait worn clothes rule:
	if old-worn is not the number of worn wearthings:
		rule fails.
The long wait worn clothes rule is listed in the long wait rules.

[!<TheLongWaitReportWornClothesRule>+

REQUIRES COMMENTING

+!]
This is the long wait report worn clothes rule:
	if old-worn is not the number of worn wearthings:
		[say "[bold type]Waiting ended as [if old-worn < the number of worn things]an item of clothing has appeared[otherwise]a worn item has disappeared[end if].[roman type][line break]";]
		rule succeeds.
The long wait report worn clothes rule is listed in the long wait report rules.

[!<TheLongWaitFaintingRule>+

REQUIRES COMMENTING

+!]
This is the long wait fainting rule:
	if delayed fainting is 1:
		rule fails.
The long wait fainting rule is listed in the long wait rules.

[!<TheLongWaitReportFaintingRule>+

REQUIRES COMMENTING

+!]
This is the long wait report fainting rule:
	if delayed fainting is 1:
		rule succeeds. [No need to say anything here.]
The long wait report fainting rule is listed in the long wait report rules.

[!<CarryOutLongWaiting>+

REQUIRES COMMENTING

+!]
Carry out LongWaiting:
	follow the long wait setup rules;
	let continue-loop be 1;
	while continue-loop is 1:
		now seconds is 6;
		compute extra turn;
		follow the long wait rules;
		if the rule failed, now continue-loop is 0;
		otherwise say "You continue waiting.";
	follow the long wait report rules;
	unless the rule failed or the rule succeeded, say "Something interesting has happened!".

Understand "long wait", "wait for a while" as LongWaiting.


Long Waiting ends here.

