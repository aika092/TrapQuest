Long Waiting by Actions begins here.

LongWaiting is an action applying to nothing.

Check LongWaiting:
	if the player is flying and last-turn-flight is 1:
		skywait instead;
	otherwise if the player is pole stuck and the player is not monster fucked and sex fainting is 1:
		dildowait instead;
	otherwise if the player is in UrinalBlindfolded:
		urinalwait instead;
	otherwise if the player is in HoleInWall:
		holewait instead;
	otherwise if the player is in DiaperPresentBoxBlindfolded:
		try waiting instead;
	otherwise if detention chair is grabbing the player:
		detentionchairwait instead;
	if the player is immobile, say "You're a bit busy to use this verb!" instead;
	if the player is in danger, say "You can't use this verb when there are monsters nearby!" instead;
	if the player is in a predicament room, say "Sorry, you can't use this in the Extra Credit Zone." instead;
	if the player is upright:
		say "Are you aware that you are standing and therefore might gain fatigue over time? ";
		unless the player is consenting, say "You decide against it." instead;

The long wait rules are a rulebook. The long wait rules have default success.

The long wait setup rules are a rulebook.

The long wait report rules are a rulebook. The long wait report rules have default failure. [If for some reason we don't know why the long wait ended, then this allows us to at least say something.]

old-pregnancy is a number that varies.

This is the long wait setup pregnancy rule:
	now old-pregnancy is the pregnancy of the player.
The long wait setup pregnancy rule is listed in the long wait setup rules.

This is the long wait pregnancy rule:
	if old-pregnancy is not the pregnancy of the player:
		if debugmode > 1, say "Stopped for pregnancy.";
		rule fails.
The long wait pregnancy rule is listed in the long wait rules.

This is the long wait report pregnancy rule:
	if old-pregnancy is not the pregnancy of the player, rule succeeds. [If the player just gave birth or become pregnant, it should be pretty clear why the long wait ended.]
The long wait report pregnancy rule is listed in the long wait report rules.

friendlyMonsterWait is initially false.

This is the long wait setup danger rule:
	now the alert of the player is 0.
The long wait setup danger rule is listed in the long wait setup rules.

This is the long wait danger rule:
	if the player is in danger or the alert of the player is 1 or (there is a monster in the location of the player and friendlyMonsterWait is true):
		if debugmode > 1, say "Stopped for danger / alert.";
		rule fails.
The long wait danger rule is listed in the long wait rules.

This is the long wait report danger rule:
	if the player is in danger or the alert of the player is 1 or (there is a monster in the location of the player and friendlyMonsterWait is true):
		[say "[bold type]Waiting ended as an aggressive monster is nearby.[roman type][line break]";]
		rule succeeds.
The long wait report danger rule is listed in the long wait report rules.

This is the long wait school dungeon rule:
	if the player is in School34 and dungeon chains is not worn:
		if debugmode > 1, say "Stopped for school dungeon.";
		rule fails.
The long wait school dungeon rule is listed in the long wait rules.

This is the long wait report school dungeon rule:
	if the player is in School34 and dungeon chains is not worn:
		say "[bold type]Waiting ended as you are no longer bound by chains.[roman type][line break]";
		rule succeeds.
The long wait report school dungeon rule is listed in the long wait report rules.

old-thirst is a number that varies.

This is the long wait setup thirst rule:
	now old-thirst is the thirst of the player.
The long wait setup thirst rule is listed in the long wait setup rules.

This is the long wait thirst rule:
	if the thirst of the player > old-thirst and the player is thirsty:
		if debugmode > 1, say "Stopped for thirst.";
		rule fails;
	if cock pacifier is worn and the thirst of the player < old-thirst:
		if debugmode > 1, say "Stopped for cock pacifier.";
		rule fails.
The long wait thirst rule is listed in the long wait rules.

This is the long wait report thirst rule:
	if (the thirst of the player > old-thirst and the player is thirsty):
		[say "[bold type]Waiting ended as you [if the thirst of the player is 5]are dying to drink[otherwise]have become more thirsty[end if].[roman type][line break]";]
		rule succeeds.
The long wait report thirst rule is listed in the long wait report rules.

long-stance is a number that varies.

This is the long wait setup stance rule:
	now long-stance is the stance of the player.
The long wait setup stance rule is listed in the long wait setup rules.

This is the long wait stance rule:
	if the stance of the player is not long-stance:
		if debugmode > 1, say "Stopped for stance.";
		rule fails.
The long wait stance rule is listed in the long wait rules.

This is the long wait report stance rule:
	if the stance of the player is not long-stance:
		[say "[bold type]Waiting ended as you [if the player is prone]fell to your knees[otherwise]changed stance[end if].";]
		rule succeeds.
The long wait report stance rule is listed in the long wait report rules.

old-bursting is a number that varies.

This is the long wait setup bladder rule:
	if the player is bursting, now old-bursting is 1;
	otherwise now old-bursting is 0.
The long wait setup bladder rule is listed in the long wait setup rules.

This is the long wait bladder rule:
	if the player is not bursting and old-bursting is 1:
		if debugmode > 1, say "Stopped for not bursting.";
		rule fails;
	if the player is bursting and old-bursting is 0:
		if debugmode > 1, say "Stopped for bursting.";
		rule fails.
The long wait bladder rule is listed in the long wait rules.

This is the long wait report bladder rule:
	if (the player is bursting and old-bursting is 0) or (the player is not bursting and old-bursting is 1):
		[say "[bold type]Waiting ended as you have become more desperate to pee.[roman type][line break]";]
		rule succeeds.
The long wait report bladder rule is listed in the long wait report rules.

old-rectum is a number that varies.

This is the long wait setup rectum rule:
	now old-rectum is rectum.
The long wait setup rectum rule is listed in the long wait setup rules.

This is the long wait rectum rule:
	if rectum < old-rectum:
		if debugmode > 1, say "Stopped for rectum.";
		rule fails.
The long wait rectum rule is listed in the long wait rules.

This is the long wait report rectum rule:
	if rectum < old-rectum:
		[say "[bold type]Waiting ended as you have messed yourself.[roman type][line break]";]
		rule succeeds.
The long wait report rectum rule is listed in the long wait report rules.

old-squirtable is a number that varies.

This is the long wait setup belly fill rule:
	now old-squirtable is the total squirtable fill of belly.
The long wait setup belly fill rule is listed in the long wait setup rules.

This is the long wait belly fill rule:
	if old-squirtable is not the total squirtable fill of belly:
		if debugmode > 1, say "Stopped for belly fill.";
		rule fails.
The long wait belly fill rule is listed in the long wait rules.

This is the long wait report belly fill rule:
	if old-squirtable is not the total squirtable fill of belly:
		say "[bold type]Waiting ended as your belly has changed in volume.[roman type][line break]";
		rule succeeds.
The long wait report belly fill rule is listed in the long wait report rules.

old-worn is a number that varies.

This is the long wait setup worn clothes rule:
	now old-worn is the number of worn wearthings.
The long wait setup worn clothes rule is listed in the long wait setup rules.

This is the long wait worn clothes rule:
	if old-worn is not the number of worn wearthings:
		if debugmode > 1, say "Stopped for worn wearthings.";
		rule fails.
The long wait worn clothes rule is listed in the long wait rules.

This is the long wait report worn clothes rule:
	if old-worn is not the number of worn wearthings:
		[say "[bold type]Waiting ended as [if old-worn < the number of worn things]an item of clothing has appeared[otherwise]a worn item has disappeared[end if].[roman type][line break]";]
		rule succeeds.
The long wait report worn clothes rule is listed in the long wait report rules.

This is the long wait fainting rule:
	if delayed fainting is 1:
		if debugmode > 1, say "Stopped for fainting.";
		rule fails.
The long wait fainting rule is listed in the long wait rules.

This is the long wait report fainting rule:
	if delayed fainting is 1:
		rule succeeds. [No need to say anything here.]
The long wait report fainting rule is listed in the long wait report rules.

longWaitTurns is a number that varies.

This is the long wait turns rule:
	if longWaitTurns <= 0, rule fails.
The long wait fainting rule is listed in the long wait rules.

This is the long wait report turns rule:
	if longWaitTurns is 0:
		say "Maximum number of turns reached.";
		rule succeeds.
The long wait report turns rule is listed in the long wait report rules.

Carry out LongWaiting:
	say "Please enter a maximum number of turns to wait: ";
	now stat-to-set is "wait".

This is the longwait setting rule:
	if stat-to-set is "wait":
		let T be a text;
		let T be the player's command;
		let N be the numerical value of T;
		if N > 0:
			now longWaitTurns is N;
		otherwise:
			say "Input not understood.";
			now longWaitTurns is 0;
		now stat-to-set is "";
		change the text of the player's command to "finish setting";
		if longWaitTurns > 0:
			if there is a friendly monster in the location of the player:
				now friendlyMonsterWait is false;
			otherwise:
				say "Stop as soon as a friendly NPC is in your location?";
				if the player is consenting, now friendlyMonsterWait is true;
				otherwise now friendlyMonsterWait is false;
			follow the long wait setup rules;
			while longWaitTurns > 0:
				allocate 6 seconds;
				decrease longWaitTurns by 1;
				check regular humiliating situation;
				compute extra turn;
				follow the long wait rules;
				if the rule failed, now longWaitTurns is -1;
				otherwise say "You continue waiting.";
			follow the long wait report rules.
The longwait setting rule is listed in the statsetting rules.

Understand "long wait", "wait for a while" as LongWaiting.

Long Waiting ends here.
