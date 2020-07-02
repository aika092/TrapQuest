Talking by Actions begins here.

[!<YourselfIsSeductive>+

Are you at risk of saying something lewd instead of what you intended?

+!]
Definition: yourself is seductive:
	if diaper quest is 1 and there is a worn baby pacifier, decide yes;
	if the class of the player is cheerleader, decide yes;
	if there is worn temptation clothing, decide yes;
	if spank my kitty tattoo is currently visible, decide yes;
	decide no.

The player speech rules is a rulebook.

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

The player voice rules is a rulebook.

Definition: a person is able to make sounds:
	follow the player voice rules;
	if the rule failed, decide no;
	decide yes.

To say SleepTalkFail of (M - a monster):
	say "You can't talk to someone who's asleep. Either attack [him of M], poke [him of M] or wait for [him of M] to wake up.".

Talking is an action applying to one thing.

Check talking:
	if the noun is the player, say "Talking to oneself is the first sign of madness." instead;
	if the player is in a predicament room, say "You should [if the noun is ultimate-lesson-actor]knock on the wall first.[otherwise]focus on the task at hand![end if]" instead;
	if the noun is a monster:
		if the player is flying and playerRegion is Woods, say "You are too high up, they can't hear you." instead;
		if the noun is asleep, say SleepTalkFail of the noun instead;
	otherwise:
		unless the noun is slimegirl, say "How would you talk to that?" instead.

Carry out talking a monster:
	compute multiple choice conversation of the noun.

Understand "talk [something]", "talk to [something]", "talk with [something]", "speak [something]", "speak to [something]", "speak with [something]", "chat [something]", "chat to [something]", "chat with [something]" as talking.


Talking ends here.
