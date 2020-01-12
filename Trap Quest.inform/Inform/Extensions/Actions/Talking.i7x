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

autospeech is initially true. [Are we just checking whether the player can automatically speak, in the background?]
automanualspeech is initially false. [Are we checking whether the player can CHOOSE to speak next turn, in the background?]
triggeredspeech is initially false. [Are we checking whether the player might not want to speak, because of potential penalties for doing so?]

Definition: yourself is able to speak:
	follow the player speech rules;
	if the rule failed, decide no;
	decide yes.

Definition: yourself is able to manually speak:
	now autospeech is false;
	follow the player speech rules;
	if the rule failed:
		now autospeech is true;
		decide no;
	now autospeech is true;
	decide yes.

[We need to distinguish between when we're checking if the player can manually speak in the background or not. This is because otherwise when we check if the player triggers speech while there's a warning, we check if the player is consenting. Checking if the player is consenting triggers a display of the focus window, which (assuming there are NPCs present) triggers a check of whether the player is able to manually speak, which causes an infinite loop and stack overflow crash unless we temporarily unflag the triggered speech check here.]
[This one should also be used when the player is FORCED to speak, e.g. with the pullstring collar, since the normal 'able to speak' check will not allow speech when something like the incontinent-when-speaking tattoo is around.]
Definition: yourself is silently able to manually speak:
	now automanualspeech is true;
	if the player is able to manually speak:
		now automanualspeech is false;
		decide yes;
	now automanualspeech is false;
	decide no.

[In this one, during the check we warn the player that they're going to suffer punishment. See the "incontinent-when-speaking tattoo inconveniences speech rule"]
Definition: yourself is able to trigger manual speech:
	now triggeredspeech is true;
	if the player is able to manually speak:
		now triggeredspeech is false;
		decide yes;
	now triggeredspeech is false;
	decide no.

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

To say SleepTalkFail of (M - a monster):
	say "You can't talk to someone who's asleep. Either attack [him of M], poke [him of M] or wait for [him of M] to wake up.".

Talking is an action applying to one thing.

[!<CheckTalking>+

REQUIRES COMMENTING

+!]
Check talking:
	if the noun is the player, say "Talking to oneself is the first sign of madness." instead;
	if the noun is a monster:
		if the player is flying and playerRegion is Woods, say "You are too high up, they can't hear you." instead;
		if the noun is asleep, say SleepTalkFail of the noun instead;
		if the player is not able to speak, say "You are currently not able to speak! You could try [bold type]poking[roman type] [him of the noun] instead?" instead;
	otherwise:
		unless the noun is slimegirl, say "How would you talk to that?" instead.

[!<CarryOutTalking>+

REQUIRES COMMENTING

+!]
Carry out talking:
	say "[one of]NB there are five talking phrases, [bold type]talk to[roman type] (or [bold type]greet[roman type]), [bold type]question[roman type], [bold type]ask (somebody) for a drink[roman type], [bold type]ask (somebody) for food[roman type], [bold type]ask (somebody) to leave[roman type].[or][stopping]";
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
		if the player is flying and playerRegion is Woods, say "You are too high up, [he of the noun] can't hear you." instead;
		if the noun is asleep, say SleepTalkFail of the noun instead;
		if the player is not able to trigger manual speech, try poking the noun instead;
	otherwise:
		unless the noun is slimegirl, say "How would you talk to that?" instead.

[!<CarryOutGreeting>+

REQUIRES COMMENTING

+!]
Carry out greeting:
	allocate 6 seconds;
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
		if the player is flying and playerRegion is Woods, say "You are too high up, [he of the noun] can't hear you." instead;
		if the noun is asleep, say SleepTalkFail of the noun instead;
		if the player is not able to trigger manual speech, say "You are currently not able to speak!" instead;
	otherwise:
		unless the noun is slimegirl, say "How would you talk to that?" instead.

[!<CarryOutQuestioning>+

REQUIRES COMMENTING

+!]
Carry out questioning:
	allocate 6 seconds;
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
		if the player is flying and playerRegion is Woods, say "You are too high up, [he of the noun] can't hear you." instead;
		unless the player is thirsty, say "You aren't thirsty, so don't see the point." instead;
		if the noun is asleep, say SleepTalkFail of the noun instead;
		if the player is not able to trigger manual speech, say "You are currently not able to speak!" instead;
	otherwise:
		unless the noun is slimegirl, say "How would you talk to that?" instead.

[!<CarryOutDrinkRequesting>+

REQUIRES COMMENTING

+!]
Carry out drink requesting:
	allocate 6 seconds;
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
		if the player is flying and playerRegion is Woods, say "You are too high up, [he of the noun] can't hear you." instead;
		unless the player is hungry, say "You aren't hungry, so don't see the point." instead;
		if the noun is asleep, say SleepTalkFail of the noun instead;
		if the player is not able to trigger manual speech, say "You are currently not able to speak!" instead;
	otherwise:
		unless the noun is slimegirl, say "How would you talk to that?" instead.

[!<CarryOutFoodRequesting>+

REQUIRES COMMENTING

+!]
Carry out food requesting:
	allocate 6 seconds;
	now conversation-target is the noun;
	compute talk option 4 to the noun.
Understand "ask [something] for food", "ask [something] for some food", "ask [something] for something to eat" as food requesting.


Dismissal is an action applying to one thing.

Check dismissal:
	if the noun is the player, say "Talking to oneself is the first sign of madness." instead;
	if the noun is a monster:
		if the noun is grabbing the player or the noun is penetrating a body part, try resisting instead;
		if the player is flying and playerRegion is Woods, say "You are too high up, [he of the noun] can't hear you." instead;
		if the noun is asleep, say SleepTalkFail of the noun instead;
	otherwise:
		unless the noun is slimegirl, say "How would you talk to that?" instead.

Carry out dismissal:
	allocate 6 seconds;
	now conversation-target is the noun;
	compute talk option 5 to the noun.
Understand "dismiss [something]", "ask [something] to leave", "say goodbye to [something]" as dismissal.



Talking ends here.

