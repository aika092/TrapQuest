Talking by Actions begins here.


[!<playerSpeechRules:Rulebook>*

REQUIRES COMMENTING

*!]
The player speech rules is a rulebook.

[!<TheThingsInMouthPreventSpeechRule>+

REQUIRES COMMENTING

+!]
This is the things in mouth prevent speech rule:
	unless there is a worn pacifier: [you can speak past a paci]
		if there is a thing penetrating face or the player is gagged, rule fails.
The things in mouth prevent speech rule is listed in the player speech rules.

[!<APersonIsAbleToSpeak>+

REQUIRES COMMENTING

+!]
Definition: a person is able to speak:
	follow the player speech rules;
	if the rule failed, decide no;
	decide yes.

[!<playerVoiceRules:Rulebook>*

REQUIRES COMMENTING

*!]
The player voice rules is a rulebook.

[!<APersonIsAbleToMakeSounds>+

REQUIRES COMMENTING

+!]
Definition: a person is able to make sounds:
	follow the player voice rules;
	if the rule failed, decide no;
	decide yes.


[!<ExecuteQuestion>+

REQUIRES COMMENTING

+!]
To Execute Question:
	now current prompt is ">";
	now punctuation removal is true;
	ask a closed question, in text mode.

[!<ExecuteTalkQuestion>+

REQUIRES COMMENTING

+!]		
To Execute Talk Question:
	now the current question is "What would you like to say?  You can [bold type]greet[roman type] them, ask them a [bold type]question[roman type], [if the thirst of the player > 2]ask them for a [bold type]drink[roman type], [end if]or [bold type]cancel[roman type].";
	execute question.

[!<TheTalkChoiceRule>+

REQUIRES COMMENTING

+!]
A text question rule (this is the talk choice rule):
	let M be conversation-target;
	if the current answer is "greet" or the current answer is "Greet":
		compute talk option 1 to M;
	otherwise if the current answer is "question" or the current answer is "Question":
		compute talk option 2 to M;
	otherwise if the current answer is "drink" or the current answer is "Drink" and the thirst of the player > 2:
		compute talk option 3 to M;
	otherwise if the current answer is "food" or the current answer is "Food" and the thirst of the player > 2:
		compute talk option 4 to M;
	otherwise if the current answer is "cancel" or the current answer is "Cancel":
		say "[if the flat intelligence of the player < 6 and the bimbo of the player > 10][line break][second custom style]'Gawsh, I was totally gonna say something, but I, like, totally got distracted!'[roman type][line break][otherwise]Cancelled.[end if]";
	otherwise:
		say "That is not a valid option.";
		retry;
	exit.
	
To say SleepTalkFail of (M - a monster):
	say "You can't talk to someone who's asleep. Either attack [him of M], poke [him of M] or wait for [him of M] to wake up.".

Talking is an action applying to one thing.

[!<CheckTalking>+

REQUIRES COMMENTING

+!]
Check talking:
	if the noun is the player, say "Talking to oneself is the first sign of madness." instead;
	if the noun is a monster:
		if the player is flying and the player is in the Woods, say "You are too high up, they can't hear you." instead;
		if the sleep of the noun > 0, say SleepTalkFail of the noun instead;
		[if the noun is not intelligent, say "It doesn't look like it can speak. You could try [bold type]poking[roman type] [him of the noun] instead?" instead;]
		if the player is not able to speak, say "You are currently not able to speak!  You could try [bold type]poking[roman type] [him of the noun] instead?" instead;
	otherwise:
		unless the noun is slimegirl, say "How would you talk to that?" instead.

[!<CarryOutTalking>+

REQUIRES COMMENTING

+!]
Carry out talking:
	say "[one of]NB there are three talking phrases, [bold type]talk to[roman type] (or [bold type]greet[roman type]), [bold type]question[roman type] or [bold type]ask (somebody) for a drink[roman type].[or][stopping]";
	try greeting the noun.
Understand "talk [something]", "talk to [something]", "talk with [something]", "speak [something]", "speak to [something]", "speak with [something]", "chat [something]", "chat to [something]", "chat with [something]" as talking.

conversation-target is a person that varies. 

Greeting is an action applying to one thing.

[!<CheckGreeting>+

REQUIRES COMMENTING

+!]
Check greeting:
	if the noun is the player, say "Talking to oneself is the first sign of madness." instead;
	if the noun is a monster:
		if the player is flying and the player is in the Woods, say "You are too high up, [he of the noun] can't hear you." instead;
		if the sleep of the noun > 0, say SleepTalkFail of the noun instead;
		if the player is not able to speak, try poking the noun instead;
	otherwise:
		unless the noun is slimegirl, say "How would you talk to that?" instead.

[!<CarryOutGreeting>+

REQUIRES COMMENTING

+!]
Carry out greeting:
	now seconds is 6;
	now conversation-target is the noun;
	if the latex-transformation of the player > 6:
		say "The only sound you manage to make is a plaintive moaning noise that ends up sounding like an open invitation for sex.";
		if the noun is monster, compute correct perception of the noun;
	otherwise:
		compute talk option 1 to the noun.
Understand "greet [something]", "gr [something]" as greeting.
	
Questioning is an action applying to one thing.

[!<CheckQuestioning>+

REQUIRES COMMENTING

+!]
Check questioning:
	if the noun is the player, say "Talking to oneself is the first sign of madness." instead;
	if the noun is a monster:
		if the player is flying and the player is in the Woods, say "You are too high up, [he of the noun] can't hear you." instead;
		if the sleep of the noun > 0, say SleepTalkFail of the noun instead;
		if the player is not able to speak, say "You are currently not able to speak!" instead;
	otherwise:
		unless the noun is slimegirl, say "How would you talk to that?" instead.

[!<CarryOutQuestioning>+

REQUIRES COMMENTING

+!]
Carry out questioning:
	now seconds is 6;
	now conversation-target is the noun;
	compute talk option 2 to the noun.
Understand "question [something]", "ask [something]", "qu [something]" as questioning.

Drink Requesting is an action applying to one thing.

[!<CheckDrinkRequesting>+

REQUIRES COMMENTING

+!]
Check drink requesting:
	if the noun is the player, say "Talking to oneself is the first sign of madness." instead;
	if the noun is a monster:
		if the player is flying and the player is in the Woods, say "You are too high up, [he of the noun] can't hear you." instead;
		unless the player is thirsty, say "You aren't thirsty, so don't see the point." instead;
		if the sleep of the noun > 0, say SleepTalkFail of the noun instead;
		if the player is not able to speak, say "You are currently not able to speak!" instead;
	otherwise:
		unless the noun is slimegirl, say "How would you talk to that?" instead.

[!<CarryOutDrinkRequesting>+

REQUIRES COMMENTING

+!]
Carry out drink requesting:
	now seconds is 6;
	now conversation-target is the noun;
	compute talk option 3 to the noun.
Understand "ask [something] for drink", "ask [something] for dr", "ask [something] for a drink", "ask [something] for something to drink" as drink requesting.

Food Requesting is an action applying to one thing.

[!<CheckFoodRequesting>+

REQUIRES COMMENTING

+!]
Check food requesting:
	if the noun is the player, say "Talking to oneself is the first sign of madness." instead;
	if the noun is a monster:
		if the player is flying and the player is in the Woods, say "You are too high up, [he of the noun] can't hear you." instead;
		unless the player is hungry, say "You aren't hungry, so don't see the point." instead;
		if the sleep of the noun > 0, say SleepTalkFail of the noun instead;
		if the player is not able to speak, say "You are currently not able to speak!" instead;
	otherwise:
		unless the noun is slimegirl, say "How would you talk to that?" instead.

[!<CarryOutFoodRequesting>+

REQUIRES COMMENTING

+!]
Carry out food requesting:
	now seconds is 6;
	now conversation-target is the noun;
	compute talk option 4 to the noun.
Understand "ask [something] for food", "ask [something] for some food", "ask [something] for something to eat" as food requesting.



Talking ends here.

